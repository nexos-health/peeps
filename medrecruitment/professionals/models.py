from django.db import models

# Create your models here.


class Area(models.Model):
    postcode = models.IntegerField(blank=True, null=True)
    country = models.CharField(max_length=20, default="Australia")
    state = models.CharField(max_length=20)
    city = models.CharField(max_length=20)

    def __str__(self):
        return f"{self.city}, {self.state}, {self.country}"


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
    first_name = models.CharField(max_length=100, default="")
    last_name = models.CharField(max_length=100, default="")
    description = models.CharField(max_length=1000)
    profession = models.ForeignKey(Profession, on_delete=models.DO_NOTHING)
    current_organisation = models.ForeignKey('clinics.Organisation', on_delete=models.DO_NOTHING,
                                             blank=True, null=True)
    current_clinic = models.ForeignKey('clinics.Clinic', on_delete=models.DO_NOTHING,
                                       related_name='employees', blank=True, null=True)
    starred_clinic = models.ManyToManyField('clinics.Clinic', related_name="professional_starred",
                                            blank=True)
    current_location = models.ForeignKey(Area, on_delete=models.DO_NOTHING)
    previous_roles = models.ForeignKey('clinics.Role', on_delete=models.CASCADE, blank=True,
                                       null=True)

    def __str__(self):
        return f"{self.title} {self.first_name} {self.last_name}"
