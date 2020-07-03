from django.shortcuts import render
from django.core.cache import cache

from rest_framework.generics import GenericAPIView
from rest_framework import viewsets
from rest_framework.authentication import BasicAuthentication
from rest_framework.decorators import action
from rest_framework.response import Response

from clinics.models import Clinic, Location
from professionals.models import (Professional, Profession, Role, ProfessionType, ProfessionalGroup,
                                  ProfessionalGroupMapping)
from professionals.serializers import ProfessionalSerializer

from config.settings import MONGO_CLIENT
from professionals.utils import get_professionals

db = MONGO_CLIENT['professionalsdb']

# Create your views here.


class ProfessionalViewSet(viewsets.ModelViewSet):
    queryset = Professional.objects.all()
    serializer_class = ProfessionalSerializer
    authentication_classes = (BasicAuthentication,)

    @action(detail=False, methods=["GET"])
    def list_professionals(self, request, *args, **kwargs):
        profession_types = request.query_params.get("professionTypes")
        profession_type_ids = profession_types.split(",") if profession_types else []

        professionals = list(Professional.objects.filter(
            profession__profession_type__in=profession_type_ids
        ))
        professionals_dict = get_professionals(professionals)

        professionals_list = [
            {**{"id": professional_id}, **info}
            for professional_id, info in professionals_dict.items()
        ]

        return Response(data=professionals_list)

    @action(detail=False, methods=["GET"])
    def list_profession_types(self, request, *args, **kwargs):
        profession_types = ProfessionType.objects.all().order_by("name")

        profession_types_dict = [
            {
                "name": profession_type.name,
                "id": profession_type.id
            }
            for profession_type in profession_types
        ]

        return Response(data=profession_types_dict)

    @action(detail=False, methods=["GET"])
    def redis_string_get(self, request, *args, **kwargs):
        professional_id = request.query_params.get('id')
        cache_key = "professional.{}".format(professional_id)
        professional_cache = {
            "professional_cache": {
                "key": cache_key,
                "value": cache.get(cache_key),
                "ttl": cache.ttl(cache_key),
            }
        }
        return Response(professional_cache)

    @action(detail=False, methods=["GET"])
    def redis_string_get_all(self, request, *args, **kwargs):
        cache_key = "professional.*"
        professional_cache = {
            "professional_cache": {
                "key": cache_key,
                "value": cache.get(cache_key),
            }
        }
        return Response(professional_cache)

    @action(detail=False, methods=["POST"])
    def redis_string_create(self, request, *args, **kwargs):
        professional_id = request.query_params.get('id')
        message = request.query_params.get("message_to_cache")
        cache_key = "professional.{}".format(professional_id)
        try:
            cache.set(cache_key, message, timeout=50000)
            professional_cache = {
                "data": {"professional_cache_key": cache_key},
                "status": "SUCCESS"
            }
        except Exception as ex:
            Response({"status": "ERROR", "message": ex}), 500
        else:
            return Response(professional_cache)

    @action(detail=False, methods=["GET"])
    def mongo_all(self, request, *args, **kwargs):
        id = request.query_params.get('id')
        document = {
            "author": "Elliott",
            "title": "How to learn MongoDB",
            "published_by": "llamadumpproductions",
            "genre": ["Horror", "Adventure", "Databases"],
            "tags": ["Textbook", "Fun Times"]
        }
        return Response({"Hello": "This is the response, {}".format(deployment_uid)})

    @action(detail=False, methods=["POST"])
    def mongo_create(self, request, *args, **kwargs):
        deployment_uid = kwargs.get("deployment_uid")
        return Response({"Hello": "This is the response, {}".format(deployment_uid)})


class ProfessionalGroupsViewSet(viewsets.ModelViewSet):
    queryset = ProfessionalGroup.objects.all()
    serializer_class = ProfessionalSerializer
    authentication_classes = (BasicAuthentication,)

    # @action(detail=False, methods=["GET"])
    def list(self, request, *args, **kwargs):
        user_key = request.query_params.get("user_key")

        groups = ProfessionalGroup.objects.filter(
            user__user_key=user_key
        )

        groups_dict = {
            group.id: {
                "name": group.name,
                "displayName": group.display_name,
                "description": group.description,
                "professionalsIds": []
            } for group in groups
        }

        professional_group_mappings = ProfessionalGroupMapping.objects.filter(
            group__in=groups_dict.keys()
        )

        professional_ids = set()
        for mapping in professional_group_mappings:
            groups_dict[mapping.group_id]["professionalsIds"].append(mapping.professional_id)
            professional_ids.add(mapping.professional_id)

        professionals = list(Professional.objects.filter(
            id__in=professional_ids
        ))

        professionals_dict = get_professionals(professionals)

        for group_id, group in groups_dict.items():
            group_professionals_ids = group["professionalsIds"]
            groups_dict[group_id]["professionals"] = [
                {**{"id": professional_id}, **info}
                for professional_id, info in professionals_dict.items()
                if professional_id in group_professionals_ids
            ]

        return Response(data=groups_dict)
