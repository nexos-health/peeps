from django.db import models
from medrecruitment.utils.general import create_uuid

# Create your models here.


class User(models.Model):
    """
    User of the platform
    """
    auth_id = models.CharField(max_length=100, unique=True)
    professional = models.OneToOneField("professionals.Professional", on_delete=models.DO_NOTHING, null=True, blank=True)


class UserNotesProfessional(models.Model):
    """
    Notes that a user has made on a particular professional
    """
    user = models.ForeignKey(User, on_delete=models.DO_NOTHING)
    professional = models.ForeignKey("professionals.Professional", on_delete=models.DO_NOTHING)
    notes = models.TextField()

    def __str__(self):
        return f"{self.user}'s notes on {self.professional}"


class UserNotesClinic(models.Model):
    """
    Notes that a user has made on a particular clinic
    """
    user = models.ForeignKey(User, on_delete=models.DO_NOTHING)
    clinic = models.ForeignKey('clinics.Clinic', on_delete=models.DO_NOTHING)
    notes = models.TextField()

    def __str__(self):
        return f"{self.user}'s notes on {self.clinic}"
