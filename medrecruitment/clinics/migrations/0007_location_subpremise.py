# Generated by Django 3.0.6 on 2020-05-24 06:27

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('clinics', '0006_auto_20200524_0338'),
    ]

    operations = [
        migrations.AddField(
            model_name='location',
            name='subpremise',
            field=models.CharField(blank=True, max_length=30, null=True),
        ),
    ]