from django.db import models


class Location(models.Model):
    country = models.CharField(max_length=20)
    state = models.CharField(max_length=20)
    postcode = models.CharField(max_length=10)
    suburb = models.CharField(max_length=20)
    street_name = models.CharField(max_length=100)
    street_number = models.CharField(max_length=30)

    def __str__(self):
        return f"{self.street_number} {self.street_name} {self.suburb}, {self.state}, {self.country}"


class Organisation(models.Model):
    VERY_SMALL_SIZE = '0-5'
    SMALL_SIZE = '5-20'
    MED_SIZE = '20-50'
    LARGE_SIZE = '50-200'
    VERY_LARGE_SIZE = '200+'

    ORGANISATION_SIZE_CHOICES = ((size, size)
                                 for size in [VERY_SMALL_SIZE, SMALL_SIZE, MED_SIZE, LARGE_SIZE,
                                              VERY_LARGE_SIZE])

    description = models.TextField()
    name = models.CharField(max_length=100)
    size = models.CharField(max_length=10, choices=ORGANISATION_SIZE_CHOICES)
    headquarters = models.ForeignKey(Location, on_delete=models.DO_NOTHING)
    # TODO: owners
    image = models.ImageField(blank=True, null=True)
    email = models.EmailField()
    website = models.URLField()

    def __str__(self):
        return self.name


class Clinic(models.Model):
    VERY_SMALL_SIZE = '0-5'
    SMALL_SIZE = '5-20'
    MED_SIZE = '20-50'
    LARGE_SIZE = '50-200'
    VERY_LARGE_SIZE = '200+'

    CLINIC_SIZE_CHOICES = ((size, size)
                           for size in [VERY_SMALL_SIZE, SMALL_SIZE, MED_SIZE, LARGE_SIZE,
                                        VERY_LARGE_SIZE])

    description = models.TextField(blank=True, null=True)
    name = models.CharField(max_length=100)
    location = models.ForeignKey(Location, on_delete=models.DO_NOTHING)
    size = models.CharField(max_length=10, choices=CLINIC_SIZE_CHOICES, blank=True, null=True)
    organisation = models.ForeignKey(Organisation, on_delete=models.DO_NOTHING, blank=True, null=True)
    # TODO: owners
    image = models.ImageField(blank=True, null=True)
    email = models.EmailField(blank=True, null=True)
    website = models.URLField(blank=True, null=True)
    fax = models.CharField(max_length=30, null=True, blank=True)
    phone = models.CharField(max_length=30, null=True, blank=True)
    last_login = models.DateTimeField(blank=True, null=True)

    def __str__(self):
        return self.name


class ClinicFlaggedClinic(models.Model):
    """
    Clinic that another clinic has made notes on
    """
    clinic = models.ForeignKey(Clinic, on_delete=models.DO_NOTHING, related_name='%(class)s_clinic')
    clinic_noted = models.ForeignKey(Clinic, on_delete=models.DO_NOTHING, related_name=f'%(class)s_clinic_noted')
    notes = models.TextField()

    def __str__(self):
        return f"{self.clinic}'s comments on {self.clinic_noted}"


class ClinicFlaggedProfessional(models.Model):
    """
    Professional that a Clinic has made notes on
    """
    clinic = models.ForeignKey(Clinic, on_delete=models.DO_NOTHING)
    professional = models.ForeignKey("professionals.Professional", on_delete=models.DO_NOTHING)
    notes = models.TextField()

    def __str__(self):
        return f"{self.clinic}'s comments on {self.professional}"
