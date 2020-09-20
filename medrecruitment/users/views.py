from django.shortcuts import render
from django.core.cache import cache

from rest_framework.generics import GenericAPIView
from rest_framework import viewsets
from rest_framework.authentication import BasicAuthentication
from rest_framework.decorators import action
from rest_framework.response import Response

from clinics.models import Clinic, Location
from professionals.models import (Professional, Profession, Role, ProfessionType)
from users.serializers import UserSerializer
from users.models import UserNotesProfessional, User


# Create your views here.


class UserViewSet(viewsets.ModelViewSet):
    queryset = Professional.objects.all()
    serializer_class = UserSerializer
    authentication_classes = (BasicAuthentication,)

    @action(detail=False, methods=["POST"])
    def create_note(self, request, *args, **kwargs):
        body = request.data
        professional_uid = body.get("professionalUid")
        user_uid = body.get("userUid")
        new_notes = body.get("notes")

        if user_uid and professional_uid:
            user = User.objects.get(id=user_uid)
            professional = Professional.objects.get(id=professional_uid)
            obj, created = UserNotesProfessional.objects.update_or_create(
                user=user,
                professional=professional,
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
    def users_notes(self, request, *args, **kwargs):
        params = request.query_params
        user_uid = params.get("uid")

        notes_objs = UserNotesProfessional.objects.filter(user=user_uid)
        professionals_uids = {professional.uid for professional in notes_objs}
        professionals = Professional.objects.filter(uid__in=professionals_uids)

        return Response(data={
            "professionals": professionals
        })

