from django.db import models

# Create your models here.


class Location(models.Model):
    country = models.CharField(max_length=20)
    state = models.CharField(max_length=20)
    postcode = models.IntegerField()
    city = models.CharField(max_length=20)
    street_name = models.CharField(max_length=30)
    street_number = models.CharField(max_length=10)


class Role(models.Model):
    description = models.TextField()
    guaranteed_annual_salary = models.IntegerField()
    guaranteed_hourly_rate = models.DecimalField('Guaranteed Hourly Rate', max_digits=6,
                                                 decimal_places=2)
    guaranteed_percentage = models.DecimalField('Guaranteed Percentage', max_digits=6,
                                                decimal_places=2)
    start_date = models.DateField()
    end_date = models.DateField()


class Organisation(models.Model):
    SMALL_SIZE = '0-5'
    MED_SIZE = '5-20'
    LARGE_SIZE = '20-50'
    VERY_LARGE_SIZE = '50+'

    ORGANISATION_SIZE_CHOICES = ((role, role)
                                 for role in [SMALL_SIZE, MED_SIZE, LARGE_SIZE, VERY_LARGE_SIZE])

    description = models.TextField()
    name = models.CharField(max_length=100)
    size = models.CharField(max_length=10, choices=ORGANISATION_SIZE_CHOICES)
    headquarters = models.ForeignKey(Location, on_delete=models.DO_NOTHING)
    # TODO: owners
    image = models.ImageField()
    email = models.EmailField()
    website = models.URLField()


class Clinic(models.Model):
    SMALL_SIZE = '0-5'
    MED_SIZE = '5-20'
    LARGE_SIZE = '20-50'
    VERY_LARGE_SIZE = '50+'

    CLINIC_SIZE_CHOICES = ((role, role)
                           for role in [SMALL_SIZE, MED_SIZE, LARGE_SIZE, VERY_LARGE_SIZE])

    description = models.TextField()
    name = models.CharField(max_length=100)
    location = models.ForeignKey(Location, on_delete=models.DO_NOTHING)
    size = models.CharField(max_length=10, choices=CLINIC_SIZE_CHOICES)
    organisation = models.ForeignKey(Organisation, on_delete=models.DO_NOTHING)
    # TODO: owners
    available_positions = models.ForeignKey(Role, on_delete=models.CASCADE)
    image = models.ImageField()
    email = models.EmailField()
    website = models.URLField()
