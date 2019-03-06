from django.db import models

# Create your models here.


class Location(models.Model):
    country = models.CharField(max_length=20)
    state = models.CharField(max_length=20)
    postcode = models.IntegerField()
    city = models.CharField(max_length=20)
    street_name = models.CharField(max_length=30)
    street_number = models.CharField(max_length=10)

    def __str__(self):
        return f"{self.street_number} {self.street_name} {self.city}, {self.state}, {self.country}"


class Role(models.Model):
    description = models.TextField()
    guaranteed_annual_salary = models.IntegerField(blank=True, null=True)
    guaranteed_hourly_rate = models.DecimalField('Guaranteed Hourly Rate', max_digits=6,
                                                 decimal_places=2, blank=True, null=True)
    guaranteed_percentage = models.DecimalField('Guaranteed Percentage', max_digits=6,
                                                decimal_places=2, blank=True, null=True)
    start_date = models.DateField()
    end_date = models.DateField(blank=True, null=True)

    def __str__(self):
        return self.description


class Organisation(models.Model):
    VERY_SMALL_SIZE = '0-5'
    SMALL_SIZE = '5-20'
    MED_SIZE = '20-50'
    LARGE_SIZE = '50-200'
    VERY_LARGE_SIZE = '200+'

    ORGANISATION_SIZE_CHOICES = ((role, role)
                                 for role in [VERY_SMALL_SIZE, SMALL_SIZE, MED_SIZE, LARGE_SIZE,
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

    CLINIC_SIZE_CHOICES = ((role, role)
                           for role in [VERY_SMALL_SIZE, SMALL_SIZE, MED_SIZE, LARGE_SIZE,
                                        VERY_LARGE_SIZE])

    description = models.TextField()
    name = models.CharField(max_length=100)
    location = models.ForeignKey(Location, on_delete=models.DO_NOTHING)
    size = models.CharField(max_length=10, choices=CLINIC_SIZE_CHOICES)
    organisation = models.ForeignKey(Organisation, on_delete=models.DO_NOTHING)
    # TODO: owners
    available_positions = models.ForeignKey(Role, on_delete=models.CASCADE, blank=True, null=True)
    image = models.ImageField(blank=True, null=True)
    email = models.EmailField()
    website = models.URLField()

    def __str__(self):
        return self.name
