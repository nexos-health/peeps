# Generated by Django 3.0.6 on 2020-05-19 09:25

from django.db import migrations, models
import django.db.models.deletion
import csv
import os
import re

ADDRESS_REGEX = r"(Shop |Level |Lot |Ground Floor |Floor |Grd Floor |Suite )?([0-9]+( / | - |/ |- |-|/|)?[0-9]*)([a-z]?) (.*)([0-9]+.*)?"
SUBURB_POSTCODE_REGEX = r"(.*), (.*), (7[0-9]{3})"


def forwards(apps, schema_editor):
    pass
    # path = "/Users/elliottlovell/Downloads"  # Set path of new directory here
    # os.chdir(path)  # changes the directory
    # Clinic = apps.get_model('clinics', 'Clinic')
    # Location = apps.get_model('clinics', 'Location')
    #
    # name_set = set()
    # with open('clinic_database.csv') as csvfile:
    #     reader = csv.DictReader(csvfile)
    #     for row in reader:
    #         name = row["Organisation"]
    #         fax = row["Fax"]
    #         phone = row["Phone"]
    #         street_address = row["Address"]
    #         postcode = row["Postcode"]
    #         suburb = row["Suburb"]
    #         if not (postcode and suburb):
    #             address_regex_matches = re.match(SUBURB_POSTCODE_REGEX, street_address)
    #             groups = address_regex_matches.groups()
    #             postcode = groups[2]
    #             suburb = groups[1]
    #             street_address = groups[0]
    #
    #         address_regex_matches = re.match(ADDRESS_REGEX, street_address)
    #         if not address_regex_matches:
    #             street_start = ""
    #             street_name = street_address
    #         else:
    #             groups = address_regex_matches.groups()
    #             street_prefix = groups[0] if groups[0] else ""
    #             street_separator = groups[2] if groups[2] else ""
    #             street_letter = groups[3] if groups[3] else ""
    #             street_number = groups[1]
    #             if street_separator:
    #                 street_number = street_number.replace(" ", "").replace("-", "/")
    #             street_start = street_prefix + street_number + street_letter
    #             street_name = groups[4]
    #
    #         if name in name_set:
    #             continue
    #         else:
    #             name_set.add(name)
    #
    #         location, _ = Location.objects.get_or_create(
    #             country="Australia",
    #             state="TAS",
    #             postcode=postcode,
    #             suburb=suburb,
    #             street_name=street_name,
    #             street_number=street_start
    #         )
    #         clinic, _ = Clinic.objects.get_or_create(name=name, location=location, fax=fax, phone=phone)


def backwards(apps, schema_editor):
    pass


class Migration(migrations.Migration):

    dependencies = [
        ('clinics', '0004_auto_20200520_1305'),
    ]

    operations = [
        migrations.RunPython(forwards, backwards)
    ]
