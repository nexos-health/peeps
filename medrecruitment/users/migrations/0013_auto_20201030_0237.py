# Generated by Django 3.0.6 on 2020-10-30 02:37

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('users', '0012_auto_20201029_0417'),
    ]

    operations = [
        migrations.AlterField(
            model_name='usernotesclinic',
            name='notes',
            field=models.TextField(),
        ),
        migrations.AlterField(
            model_name='usernotesprofessional',
            name='notes',
            field=models.TextField(),
        ),
    ]
