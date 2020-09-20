"""
Serializers for the Professional models
"""
from rest_framework import serializers

from professionals.models import Professional, ProfessionalGroup
from users.serializers import UserSerializer


class ProfessionalSerializer(serializers.ModelSerializer):
    """
    Serializer for Professional
    """
    class Meta(object):
        """ Class config """
        model = Professional
        fields = ("title", "first_name", "last_name", "description")


class ProfessionalGroupSerializer(serializers.ModelSerializer):
    """
    Serializer for Professional
    """
    user_key = serializers.CharField(source="user.user_key")

    class Meta(object):
        """ Class config """
        model = ProfessionalGroup
        fields = ("name", "description", "user_key")

    def to_representation(self, data):
        res = super(ProfessionalGroupSerializer, self).to_representation(data)
        return {res['uid']: res}
