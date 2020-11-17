from django.db import models
from tinymce.models import HTMLField

from utils.general import create_user_id, create_uid

# Create your models here.


class User(models.Model):
    """
    User of the platform
    """
    user_key = models.CharField(
        max_length=8, unique=True, default=create_user_id, editable=False
    )
    auth_id = models.CharField(max_length=100, unique=True)
    email = models.EmailField(unique=True, null=True)
    professional = models.OneToOneField("professionals.Professional", on_delete=models.DO_NOTHING, null=True, blank=True)

    def __str__(self):
        return f"{self.user_key}"


class UserNotesProfessional(models.Model):
    """
    Notes that a user has made on a particular professional
    """
    uid = models.CharField(max_length=32, unique=True, default=create_uid, editable=False)
    user = models.ForeignKey(User, on_delete=models.DO_NOTHING)
    professional = models.ForeignKey("professionals.Professional", on_delete=models.DO_NOTHING)
    notes = models.TextField()

    def __str__(self):
        return f"{self.user}'s notes on {self.professional}"


class UserNotesClinic(models.Model):
    """
    Notes that a user has made on a particular clinic
    """
    uid = models.CharField(max_length=32, unique=True, default=create_uid, editable=False)
    user = models.ForeignKey(User, on_delete=models.DO_NOTHING)
    clinic = models.ForeignKey('clinics.Clinic', on_delete=models.DO_NOTHING)
    notes = models.TextField()

    def __str__(self):
        return f"{self.user}'s notes on {self.clinic}"

