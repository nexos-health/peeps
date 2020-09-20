# Generated by Django 3.0.6 on 2020-07-04 11:26

from django.db import migrations, models
from utils.general import create_uid


def create_notes_professional_uid(apps, schema_editor):
    UserNotesProfessional = apps.get_model("users", "UserNotesProfessional")
    for notes in UserNotesProfessional.objects.all():
        notes.uid = create_uid()
        notes.save()


def create_notes_clinic_uid(apps, schema_editor):
    UserNotesClinic = apps.get_model("users", "UserNotesClinic")
    for notes in UserNotesClinic.objects.all():
        notes.uid = create_uid()
        notes.save()


class Migration(migrations.Migration):

    dependencies = [
        ('users', '0010_auto_20200704_1110'),
    ]

    operations = [
        migrations.AddField(
            model_name='usernotesclinic',
            name='uid',
            field=models.CharField(max_length=32, null=True, blank=True),
        ),
        migrations.AddField(
            model_name='usernotesprofessional',
            name='uid',
            field=models.CharField(max_length=32, null=True, blank=True),
        ),

        migrations.RunPython(create_notes_clinic_uid),
        migrations.RunPython(create_notes_professional_uid),

        migrations.AlterField(
            model_name='usernotesclinic',
            name='uid',
            field=models.CharField(max_length=32, unique=True, default=create_uid, editable=False),
        ),
        migrations.AlterField(
            model_name='usernotesprofessional',
            name='uid',
            field=models.CharField(max_length=32, unique=True, default=create_uid, editable=False),
        ),

    ]
