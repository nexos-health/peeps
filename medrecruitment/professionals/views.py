from django.shortcuts import render

from rest_framework.generics import GenericAPIView
from rest_framework import viewsets
from rest_framework.authentication import BasicAuthentication

from medrecruitment.professionals.models import (Profession, Professional)
from medrecruitment.professionals.serializers import ProfessionSerializer, ProfessionalSerializer


# Create your views here.

class ProfessionViewSet(viewsets.ModelViewSet):
    queryset = Profession.objects.all()
    serializer_class = ProfessionSerializer
    authentication_classes = BasicAuthentication


class ProfessionalViewSet(viewsets.ModelViewSet):
    queryset = Professional.objects.all()
    serializer_class = ProfessionalSerializer
    authentication_classes = BasicAuthentication
p