"""
Serializers for the Professional models
"""
from rest_framework import serializers

from users.models import User


class UserSerializer(serializers.ModelSerializer):
    """
    Serializer for a User
    """
    class Meta(object):
        """ Class config """
        model = User
        fields = ("user_key", "email", "auth_id")
