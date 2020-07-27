from django.db import IntegrityError
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
from professionals.serializers import ProfessionalSerializer, ProfessionalGroupSerializer

from config.settings import MONGO_CLIENT
from professionals.utils import get_professionals, format_professional_groups
from users.models import User

db = MONGO_CLIENT['professionalsdb']

# Create your views here.


class ProfessionalViewSet(viewsets.ModelViewSet):
    queryset = Professional.objects.all()
    serializer_class = ProfessionalSerializer
    authentication_classes = (BasicAuthentication,)

    @action(detail=False, methods=["GET"])
    def list_professionals(self, request, *args, **kwargs):
        profession_types = request.query_params.get("professionTypes")
        profession_type_uids = profession_types.split(",") if profession_types else []

        professionals = list(Professional.objects.filter(
            profession__profession_type__uid__in=profession_type_uids
        ))
        professionals_dict = get_professionals(professionals)

        professionals_list = [
            {**{"uid": professional_uid}, **info}
            for professional_uid, info in professionals_dict.items()
        ]

        return Response(data=professionals_list)

    @action(detail=False, methods=["GET"])
    def list_profession_types(self, request, *args, **kwargs):
        profession_types = ProfessionType.objects.all().order_by("name")

        profession_types_dict = [
            {
                "name": profession_type.name,
                "uid": profession_type.uid
            }
            for profession_type in profession_types
        ]

        return Response(data=profession_types_dict)

    @action(detail=False, methods=["GET"])
    def redis_string_get(self, request, *args, **kwargs):
        professional_uid = request.query_params.get('uid')
        cache_key = "professional.{}".format(professional_uid)
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
        professional_uid = request.query_params.get('id')
        message = request.query_params.get("message_to_cache")
        cache_key = "professional.{}".format(professional_uid)
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
        id = request.query_params.get('uid')
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
    serializer_class = ProfessionalGroupSerializer
    authentication_classes = (BasicAuthentication,)

    def create(self, request, *args, **kwargs):
        user_key = request.data.get("user_key")
        name = request.data.get("name")
        description = request.data.get("description")

        try:
            user = User.objects.get(user_key=user_key)
            ProfessionalGroup.objects.create(
                name=name,
                description=description,
                user=user
            )
        except IntegrityError:
            return Response(f"There is already a group with the name: {name}", status=409)
        except Exception as ex:
            return Response(f"Uncaught Error: {ex}", 500)

        groups = ProfessionalGroup.objects.filter(user=user)

        groups_dict = format_professional_groups(groups)
        return Response(data=groups_dict, status=201)

    def list(self, request, *args, **kwargs):
        user_key = request.query_params.get("user_key")
        groups = ProfessionalGroup.objects.filter(user__user_key=user_key)
        groups_dict = format_professional_groups(groups)

        return Response(data=groups_dict)

    @action(detail=False, methods=["POST"])
    def add_professional(self, request, *args, **kwargs):
        user_key = request.data.get("user_key")
        professional_uid = request.data.get("professional_uid")
        group_uid = request.data.get("group_uid")

        try:
            group = ProfessionalGroup.objects.get(
                uid=group_uid,
                user__user_key=user_key
            )

            professional = Professional.objects.get(
                uid=professional_uid
            )

            ProfessionalGroupMapping.objects.get_or_create(
                professional=professional,
                group=group
            )

        except ProfessionalGroup.DoesNotExist:
            return Response(f"Group with user_key: {user_key}, group_uid:{group_uid} was not found.", status=404)
        except Professional.DoesNotExist:
            return Response(f"Professional with professional_uid: {professional_uid} was not found.", status=404)
        except Exception as ex:
            return Response(f"{ex}")
        else:
            return Response(data={"message": "CREATED"}, status=201)

    @action(detail=False, methods=["DELETE"])
    def remove_professional(self, request, *args, **kwargs):
        user_key = request.data.get("user_key")
        professional_uid = request.data.get("professional_uid")
        group_uid = request.data.get("group_uid")

        try:
            group = ProfessionalGroup.objects.get(
                uid=group_uid,
                user__user_key=user_key
            )

            professional = Professional.objects.get(
                uid=professional_uid
            )

            mapping = ProfessionalGroupMapping.objects.get(
                professional=professional,
                group=group
            )

            mapping.delete()

        except ProfessionalGroup.DoesNotExist:
            return Response(
                f"Group with user_key: {user_key}, group_uid:{group_uid} was not found.", status=404
            )
        except Professional.DoesNotExist:
            return Response(
                f"Professional with professional_uid: {professional_uid} was not found.", status=404
            )
        except Exception as ex:
            return Response(f"{ex}")
        else:
            return Response(data={"message": "DELETED"}, status=200)



