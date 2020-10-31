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
from professionals.utils import get_professionals, format_professional_groups, \
    get_professionals_from_professions
from users.models import User, UserNotesProfessional

db = MONGO_CLIENT['professionalsdb']

# Create your views here.


class ProfessionalViewSet(viewsets.ModelViewSet):
    queryset = Professional.objects.all()
    serializer_class = ProfessionalSerializer
    authentication_classes = (BasicAuthentication,)

    @action(detail=False, methods=["GET"])
    def list_professionals(self, request, *args, **kwargs):
        user_key = request.query_params.get("user_key")
        profession_types = request.query_params.get("professionTypes")
        profession_type_uids = profession_types.split(",") if profession_types else []

        # professionals = list(Professional.objects.filter(
        #     profession__profession_type__uid__in=profession_type_uids
        # ))
        notes = UserNotesProfessional.objects.filter(user__user_key=user_key)
        professions = list(Profession.objects.filter(profession_type__uid__in=profession_type_uids))
        professionals_dict = get_professionals_from_professions(professions, notes)

        return Response(data=professionals_dict)

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

    @action(detail=False, methods=["GET"])
    def get_favourites(self, request, *args, **kwargs):
        user_key = request.query_params.get("user_key")
        groups = ProfessionalGroup.objects.filter(user__user_key=user_key, name="Favourites")
        groups_dict = format_professional_groups(groups)

        return Response(data=groups_dict)

    @action(detail=False, methods=["PUT"])
    def edit_group(self, request, *args, **kwargs):
        user_key = request.data.get("user_key")
        group_name = request.data.get("name")
        group_description = request.data.get("description")
        group_uid = request.data.get("group")

        try:
            group = ProfessionalGroup.objects.get(
                uid=group_uid,
                user__user_key=user_key
            )

            if group_name and group.name != group_name:
                group.name = group_name
            if group_description and group.description != group_description:
                group.description = group_description

            group.save()
        except ProfessionalGroup.DoesNotExist:
            return Response(f"Group with user_key: {user_key}, group_uid:{group_uid} was not found.", status=404)
        except Exception as ex:
            return Response(f"{ex}"), 500
        else:
            group_dict = {
                "uid": group.uid,
                "name": group.name,
                "description": group.description
            }
            return Response(data=group_dict, status=200)

    @action(detail=False, methods=["POST"])
    def add_professionals(self, request, *args, **kwargs):
        user_key = request.data.get("user_key")
        professional_uids = request.data.get("professionals")
        group_uid = request.data.get("group")

        try:
            group = ProfessionalGroup.objects.get(
                uid=group_uid,
                user__user_key=user_key
            )

            professionals = Professional.objects.filter(
                uid__in=professional_uids
            )

            group_mappings = [
                ProfessionalGroupMapping(
                    professional=professional,
                    group=group
                )
                for professional in professionals
            ]

            ProfessionalGroupMapping.objects.bulk_create(group_mappings)
            group_dict = format_professional_groups([group])
        except ProfessionalGroup.DoesNotExist:
            return Response(f"Group with user_key: {user_key}, group_uid:{group_uid} was not found.", status=400)
        except Professional.DoesNotExist:
            return Response(f"Professional with professional_uids: {professional_uids} were not found.", status=400)
        except Exception as ex:
            return Response(f"{ex}"), 500
        else:
            return Response(data=group_dict, status=201)

    @action(detail=False, methods=["DELETE"])
    def remove_professionals(self, request, *args, **kwargs):
        user_key = request.data.get("user_key")
        professional_uids = request.data.get("professionals")
        group_uid = request.data.get("group")

        try:
            group = ProfessionalGroup.objects.get(
                uid=group_uid,
                user__user_key=user_key
            )

            ProfessionalGroupMapping.objects.filter(
                professional__uid__in=professional_uids,
                group=group
            ).delete()

            group_dict = format_professional_groups([group])
        except ProfessionalGroup.DoesNotExist:
            return Response(
                f"Group with user_key: {user_key}, group_uid:{group_uid} was not found.", status=400
            )
        except Professional.DoesNotExist:
            return Response(
                f"Professionals with professional_uids: {professional_uids} were not found.", status=400
            )
        except Exception as ex:
            return Response(f"{ex}"), 500
        else:
            return Response(data=group_dict, status=200)



