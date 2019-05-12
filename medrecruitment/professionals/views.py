from django.shortcuts import render
from django.core.cache import cache

from rest_framework.generics import GenericAPIView
from rest_framework import viewsets
from rest_framework.authentication import BasicAuthentication
from rest_framework.decorators import list_route
from rest_framework.response import Response

from professionals.models import (Profession, Professional)
from professionals.serializers import ProfessionSerializer, ProfessionalSerializer

from medrecruitment.config.settings import MONGO_CLIENT

db = MONGO_CLIENT['professionalsdb']

# Create your views here.


class ProfessionViewSet(viewsets.ModelViewSet):
    queryset = Profession.objects.all()
    serializer_class = ProfessionSerializer
    authentication_classes = (BasicAuthentication,)


class ProfessionalViewSet(viewsets.ModelViewSet):
    queryset = Professional.objects.all()
    serializer_class = ProfessionalSerializer
    authentication_classes = (BasicAuthentication,)

    @list_route(methods=["GET"])
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

    @list_route(methods=["GET"])
    def redis_string_get_all(self, request, *args, **kwargs):
        cache_key = "professional.*"
        professional_cache = {
            "professional_cache": {
                "key": cache_key,
                "value": cache.get(cache_key),
            }
        }
        return Response(professional_cache)

    @list_route(methods=["POST"])
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

    @list_route(methods=["GET"])
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


    @list_route(methods=["POST"])
    def mongo_create(self, request, *args, **kwargs):
        deployment_uid = kwargs.get("deployment_uid")
        return Response({"Hello": "This is the response, {}".format(deployment_uid)})

