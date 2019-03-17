# Generated by Django 2.1.7 on 2019-03-17 08:37

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('professionals', '0007_auto_20190306_1012'),
    ]

    operations = [
        migrations.AlterField(
            model_name='professional',
            name='starred_clinic',
            field=models.ManyToManyField(blank=True, related_name='professional_starred', to='clinics.Clinic'),
        ),
    ]
