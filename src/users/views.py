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
        professional_uid = body.get("professional")
        user_key = body.get("user_key")
        new_notes = body.get("notes")
        if new_notes is None:
            return Response({
                "created": None,
                "professionalUid": None,
                "notes": None
            })

        if user_key and professional_uid:
            user = User.objects.get(user_key=user_key)
            professional = Professional.objects.get(uid=professional_uid)
            obj, created = UserNotesProfessional.objects.update_or_create(
                user=user,
                professional=professional,
                defaults={"notes": new_notes}
            )

            notes = obj.notes
        else:
            created = False
            notes = None
            professional_uid = None

        return Response({
            "created": created,
            "professionalUid": professional_uid,
            "notes": notes
        })

    @action(detail=False, methods=["GET"])
    def users_notes(self, request, *args, **kwargs):
        body = request.body
        user_key = body.get("user_key")

        notes_objs = UserNotesProfessional.objects.filter(user__key=user_key)
        professionals_uids = {professional.uid for professional in notes_objs}
        professionals = Professional.objects.filter(uid__in=professionals_uids)

        return Response(data={
            "professionals": professionals
        })

