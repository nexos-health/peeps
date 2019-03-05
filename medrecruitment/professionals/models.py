from django.db import models

# Create your models here.


class Profession(models.Model):
    """
    Types of professions, e.g. General Practitioner, Nurse, etc.
    """
    name = models.CharField(max_length=255, unique=True)
    description = models.TextField()

    def __str__(self):
        return self.name


class Professional(models.Model):
    """
    Base model for medical professionals
    """
    NOT_INTERESTED = "NOT INTERESTED"
    LOOKING = "LOOKING"
    OPEN_TO_OFFERS = "OPEN TO OFFERS"

    SITUATION_CHOICES = ((situation, situation)
                         for situation in [NOT_INTERESTED, LOOKING, OPEN_TO_OFFERS])
    title = models.CharField(max_length=20, default="")
    name = models.CharField(max_length=100, default="")
    description = models.CharField(max_length=1000)
    profession = models.ForeignKey(Profession, on_delete=models.DO_NOTHING)
    current_organisation = models.ForeignKey('clinics.Organisation', on_delete=models.DO_NOTHING)
    current_clinic = models.ForeignKey('clinics.Clinic', on_delete=models.DO_NOTHING,
                                       related_name='employees')
    starred_clinic = models.ForeignKey('clinics.Clinic', on_delete=models.DO_NOTHING,
                                       related_name="professional_starred")
    current_location = models.ForeignKey('clinics.Location', on_delete=models.DO_NOTHING)
    previous_roles = models.ForeignKey('clinics.Role', on_delete=models.CASCADE)
