"""
Serializers for the Professional models
"""
from rest_framework import serializers

from professionals.models import Profession, Professional


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
    Serializer for Professional
    """
    class Meta(object):
        """ Class config """
        model = Professional
        fields = ('title', 'first_name', 'last_name', 'description')
