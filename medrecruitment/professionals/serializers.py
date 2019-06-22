"""
Serializers for the Professional models
"""
from rest_framework import serializers

from professionals.models import Professional


class ProfessionalSerializer(serializers.ModelSerializer):
    """
    Serializer for Professional
    """
    class Meta(object):
        """ Class config """
        model = Professional
        fields = ('title', 'first_name', 'last_name', 'description')
