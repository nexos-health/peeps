from django.db import models


class Location(models.Model):
    country = models.CharField(max_length=20)
    state = models.CharField(max_length=20)
    postcode = models.CharField(max_length=10)
    city = models.CharField(max_length=20)
    street_name = models.CharField(max_length=30)
    street_number = models.CharField(max_length=10)

    def __str__(self):
        return f"{self.street_number} {self.street_name} {self.city}, {self.state}, {self.country}"


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

    description = models.TextField()
    name = models.CharField(max_length=100)
    location = models.ForeignKey(Location, on_delete=models.DO_NOTHING)
    starred_professional = models.ManyToManyField('professionals.Professional', blank=True)
    size = models.CharField(max_length=10, choices=CLINIC_SIZE_CHOICES)
    organisation = models.ForeignKey(Organisation, on_delete=models.DO_NOTHING)
    # TODO: owners
    image = models.ImageField(blank=True, null=True)
    email = models.EmailField()
    website = models.URLField(null=True)
    last_login = models.DateTimeField(null=True)

    def __str__(self):
        return self.name
