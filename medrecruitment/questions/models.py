from django.db import models
from django.core.validators import MaxValueValidator, MinValueValidator


# Create your models here.


class Questionnaire(models.Model):
    description = models.TextField()


class Question(models.Model):
    name = models.TextField()
    questionnaire = models.ManyToManyField(Questionnaire, blank=True)
    clinic_question = models.TextField()
    professional_question = models.TextField()


class Choice(models.Model):
    display_name = models.CharField(max_length=50)
    internal_id = models.CharField(max_length=50)
    weight = models.IntegerField(default=1, validators=[
        MinValueValidator(0), MaxValueValidator(100)
    ])


class Position(models.Model):
    description = models.TextField()


class ProfessionalAnswer(models.Model):
    question = models.ForeignKey(Question, on_delete=models.DO_NOTHING)
    professional = models.ForeignKey('professionals.Professional', on_delete=models.DO_NOTHING)
    choice = models.ForeignKey(Choice, on_delete=models.DO_NOTHING)


class ClinicAnswer(models.Model):
    question = models.ForeignKey(Question, on_delete=models.DO_NOTHING)
    clinic = models.ForeignKey('clinics.Clinic', on_delete=models.DO_NOTHING)
    choice = models.ForeignKey(Choice, on_delete=models.DO_NOTHING)
    position = models.ForeignKey(Position, on_delete=models.DO_NOTHING)

