"""
Serializers for the Professional models
"""
from rest_framework import serializers

from users.models import User, UserNotesProfessional


class UserSerializer(serializers.ModelSerializer):
    """
    Serializer for a User
    """
    class Meta(object):
        """ Class config """
        model = User
        fields = ("user_key", "email", "auth_id")


class UserNotesProfessionalSerializer(serializers.ModelSerializer):
    """
    Serializer for a User
    """
    user_key = serializers.CharField(source="user.user_key")
    professional_uid = serializers.CharField(source="professional.uid")

    class Meta(object):
        """ Class config """
        model = UserNotesProfessional
        fields = ("user_key", "notes", "professional_uid")
