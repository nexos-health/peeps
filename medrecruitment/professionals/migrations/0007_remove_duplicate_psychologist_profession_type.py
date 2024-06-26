# Generated by Django 3.0.6 on 2020-05-19 09:25

from django.db import migrations, models
import csv
import os
import re

PSYCHOLOGISTS = "Psychologists"
PSYCHOLOGIST = "Psychologist"


def forwards(apps, schema_editor):
    pass
    # ProfessionType = apps.get_model('professionals', 'ProfessionType')
    # Profession = apps.get_model('professionals', 'Profession')
    #
    # singular_profession_type = ProfessionType.objects.get(name=PSYCHOLOGIST)
    # plural_profession_type = ProfessionType.objects.get(name=PSYCHOLOGISTS)
    #
    # professions_with_plural = Profession.objects.filter(profession_type=plural_profession_type.id)
    #
    # for profession in professions_with_plural:
    #     profession.profession_type = singular_profession_type
    #     profession.save()


def backwards(apps, schema_editor):
    pass


class Migration(migrations.Migration):

    dependencies = [
        ('professionals', '0006_import_clinical_psychologists_database'),
    ]

    operations = [
        migrations.RunPython(forwards, backwards)
    ]
