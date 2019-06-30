from django.db import models


class Area(models.Model):
    postcode = models.IntegerField(blank=True, null=True)
    country = models.CharField(max_length=20, default="Australia")
    state = models.CharField(max_length=20)
    city = models.CharField(max_length=20)

    def __str__(self):
        return f"{self.city}, {self.state}, {self.country}"


class Professional(models.Model):
    import logging; import os;
    logging.info(".env path: %s", os.path.join(
        os.path.dirname(os.path.abspath(__file__)), os.pardir, ".env"
    ))
    """
    Base model for medical professionals
    """
    NOT_INTERESTED = "NOT INTERESTED"
    LOOKING = "LOOKING"
    OPEN_TO_OFFERS = "OPEN TO OFFERS"

    SITUATION_CHOICES = ((situation, situation)
                         for situation in [NOT_INTERESTED, LOOKING, OPEN_TO_OFFERS])
    title = models.CharField(max_length=20, default="")
    description = models.CharField(max_length=1000)
    first_name = models.CharField(max_length=100, default="")
    last_name = models.CharField(max_length=100, default="")
    starred_clinic = models.ManyToManyField('clinics.Clinic', blank=True)
    image = models.ImageField(null=True)
    last_login = models.DateTimeField(null=True)

    def __str__(self):
        return f"{self.title} {self.first_name} {self.last_name}"


class Rate(models.Model):
    AUD = "AUD"
    CURRENCY_CHOICES = ((currency, currency) for currency in [AUD])

    hourly_pay_max = models.IntegerField(null=True)
    hourly_pay_min = models.IntegerField(null=True)
    annual_pay_max = models.IntegerField(null=True)
    annual_pay_min = models.IntegerField(null=True)
    currency = models.CharField(max_length=5, choices=CURRENCY_CHOICES)


class Role(models.Model):
    GP = "General Practitioner"
    NURSE = "Nurse"

    ROLE_CHOICES = ((role, role) for role in [GP, NURSE])

    description = models.TextField()
    professional = models.ForeignKey(Professional, on_delete=models.DO_NOTHING)
    clinic = models.ForeignKey('clinics.Clinic', on_delete=models.DO_NOTHING)
    rate = models.ForeignKey(Rate, models.DO_NOTHING)
    work_type = models.CharField(max_length=20, choices=ROLE_CHOICES)
    start_date = models.DateField()
    end_date = models.DateField(blank=True, null=True)

    def __str__(self):
        return self.description
