"""
Serializers for the Professional models
"""
from rest_framework import serializers

from medrecruitment.professionals.models import Profession, Professional


class ProfessionSerializer(serializers.ModelSerializer):
    """
    Serializer for Profession
    """
    class Meta(object):
        """ Class config """
        model = Profession
        fields = ('name', 'description')


class ProfessionalSerializer(serializers.ModelSerializer):
    """
    Serializer for Profession
    """
    class Meta(object):
        """ Class config """
        model = Professional
        fields = ('title', 'name', 'description')
