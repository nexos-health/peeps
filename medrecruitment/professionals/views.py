from django.shortcuts import render
from django.core.cache import cache

from rest_framework.generics import GenericAPIView
from rest_framework import viewsets
from rest_framework.authentication import BasicAuthentication
from rest_framework.decorators import action
from rest_framework.response import Response

from clinics.models import Clinic, Location
from professionals.models import (Professional, ProfessionalFlaggedProfessional, Profession, Role,
                                  ProfessionType)
from professionals.serializers import ProfessionalSerializer

from config.settings import MONGO_CLIENT

db = MONGO_CLIENT['professionalsdb']

# Create your views here.


class ProfessionalViewSet(viewsets.ModelViewSet):
    queryset = Professional.objects.all()
    serializer_class = ProfessionalSerializer
    authentication_classes = (BasicAuthentication,)

    @action(detail=False, methods=["POST"])
    def create_note(self, request, *args, **kwargs):
        body = request.data
        professional_id = body.get("id")
        noted_professional_id = body.get("noted_id")
        new_notes = body.get("notes")

        if professional_id and noted_professional_id:
            professional = Professional.objects.get(id=professional_id)
            noted_professional = Professional.objects.get(id=noted_professional_id)
            obj, created = ProfessionalFlaggedProfessional.objects.update_or_create(
                professional=professional,
                professional_noted=noted_professional,
                defaults={"notes": new_notes}
            )
            notes = obj.notes
        else:
            created = False
            notes = None

        return Response({
            "created": created,
            "notes": notes
        })

    @action(detail=False, methods=["GET"])
    def professionals_noted(self, request, *args, **kwargs):
        params = request.query_params
        professional_id = params.get("id")

        professionals_objs = ProfessionalFlaggedProfessional.objects.filter(professional=professional_id)
        professionals_ids = {professional.id for professional in professionals_objs}
        professionals = Professional.objects.filter(id__in=professionals_ids)

        return Response(data={
            "professionals": professionals
        })

    @action(detail=False, methods=["GET"])
    def list_professionals(self, request, *args, **kwargs):
        profession_types = request.query_params.get("professionTypes")
        profession_type_ids = profession_types.split(",") if profession_types else []

        professionals = list(Professional.objects.filter(
            profession__profession_type__in=profession_type_ids
        ))
        professionals_dict = {
            professional.id: {
                "firstName": professional.first_name,
                "lastName": professional.last_name,
                "description": professional.description,
                "fees": professional.fees,
                "waitTimes": professional.wait_times,
                "bulkBilling": professional.bulk_billing,
                "clinics": []
            } for professional in professionals
        }
        roles = list(Role.objects.filter(professional__in=professionals))
        clinic_professional_mapping = {
            (role.professional_id, role.clinic_id)
            for role in roles
        }
        clinics = list(Clinic.objects.filter(role__professional_id__in=professionals_dict.keys())
                       .select_related("location"))
        clinics_dict = {
            clinic.id: {
                "clinicName": clinic.name,
                "phone": clinic.phone,
                "fax": clinic.fax,
                "country": clinic.location.country,
                "state": clinic.location.state,
                "postcode": clinic.location.postcode,
                "suburb": clinic.location.suburb,
                "streetName": clinic.location.street_name,
                "streetNumber": clinic.location.street_number,
                "latitude": clinic.location.latitude,
                "longitude": clinic.location.longitude,
            } for clinic in clinics
        }

        for tuple_map in clinic_professional_mapping:
            professionals_dict[tuple_map[0]]["clinics"] += [clinics_dict[tuple_map[1]]]

        professionals_list = [
            {**info, **{"id": professional_id}}
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

