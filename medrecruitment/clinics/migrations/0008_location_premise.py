# Generated by Django 3.0.6 on 2020-05-24 07:55

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('clinics', '0007_location_subpremise'),
    ]

    operations = [
        migrations.AddField(
            model_name='location',
            name='premise',
            field=models.CharField(blank=True, max_length=100, null=True),
        ),
    ]
