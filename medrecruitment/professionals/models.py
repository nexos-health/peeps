from django.db import models


class Area(models.Model):
    postcode = models.IntegerField(blank=True, null=True)
    country = models.CharField(max_length=20, default="Australia")
    state = models.CharField(max_length=20)
    city = models.CharField(max_length=20)

    def __str__(self):
        return f"{self.city}, {self.state}, {self.country}"


class Professional(models.Model):
    """
    Base model for medical professionals
    """
    NOT_INTERESTED = "NOT INTERESTED"
    LOOKING = "LOOKING"
    OPEN_TO_OFFERS = "OPEN TO OFFERS"

    EMPLOYMENT_STATUS = (
        (status, status)
        for status in [NOT_INTERESTED, LOOKING, OPEN_TO_OFFERS]
    )
    title = models.CharField(max_length=20, default="", null=True, blank=True)
    first_name = models.CharField(max_length=100, default="")
    last_name = models.CharField(max_length=100, default="")
    description = models.TextField(null=True, blank=True)
    fees = models.TextField(blank=True, null=True)
    wait_times = models.TextField(blank=True, null=True)
    bulk_billing = models.TextField(blank=True, null=True)
    image = models.ImageField(null=True, blank=True)
    last_login = models.DateTimeField(null=True, blank=True)

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
    description = models.TextField(blank=True, null=True)
    professional = models.ForeignKey(Professional, on_delete=models.DO_NOTHING)
    clinic = models.ForeignKey('clinics.Clinic', on_delete=models.DO_NOTHING)
    healthlink_address = models.CharField(max_length=100, null=True, blank=True)
    rate = models.ForeignKey(Rate, models.DO_NOTHING, blank=True, null=True)
    start_date = models.DateField(blank=True, null=True)
    end_date = models.DateField(blank=True, null=True)

    def __str__(self):
        return f"{self.professional} at {self.clinic}"


class ProfessionType(models.Model):

    name = models.CharField(max_length=100)
    description = models.TextField(blank=True, null=True)

    def __str__(self):
        return self.name


class Profession(models.Model):
    description = models.TextField(blank=True, null=True)
    active = models.BooleanField()
    professional = models.ForeignKey(Professional, models.DO_NOTHING)
    profession_type = models.ForeignKey(ProfessionType, models.DO_NOTHING)

    def __str__(self):
        return f"{self.professional}'s notes on {self.profession_type}"


class ProfessionalGroup(models.Model):
    name = models.CharField(max_length=100)
    display_name = models.CharField(max_length=100)
    description = models.TextField(blank=True, null=True)
    user = models.ForeignKey("users.User", models.DO_NOTHING)

    class Meta:
        unique_together = (('user', 'name'),)

    def __str__(self):
        return f"{self.display_name} - {self.user}"


class ProfessionalGroupMapping(models.Model):
    group = models.ForeignKey(ProfessionalGroup, models.DO_NOTHING)
    professional = models.ForeignKey(Professional, models.DO_NOTHING)

    class Meta:
        unique_together = (('professional', 'group'),)

    def __str__(self):
        return f"{self.group} - {self.professional}"

