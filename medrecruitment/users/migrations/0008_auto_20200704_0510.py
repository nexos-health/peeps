# Generated by Django 3.0.6 on 2020-07-04 05:10

from django.db import migrations, models
import uuid


def create_notes_professional_uuid(apps, schema_editor):
    UserNotesProfessional = apps.get_model("users", "UserNotesProfessional")
    for notes in UserNotesProfessional.objects.all():
        notes.uid = uuid.uuid4().replace("-", "")
        notes.save()


def create_notes_clinic_uuid(apps, schema_editor):
    UserNotesClinic = apps.get_model("users", "UserNotesClinic")
    for notes in UserNotesClinic.objects.all():
        notes.uid = uuid.uuid4().replace("-", "")
        notes.save()


class Migration(migrations.Migration):

    dependencies = [
        ('users', '0007_auto_20200703_0528'),
    ]

    operations = [
        migrations.AddField(
            model_name='usernotesclinic',
            name='uid',
            field=models.UUIDField(null=True, blank=True),
        ),
        migrations.AddField(
            model_name='usernotesprofessional',
            name='uid',
            field=models.UUIDField(null=True, blank=True),
        ),

        migrations.RunPython(create_notes_clinic_uuid),
        migrations.RunPython(create_notes_professional_uuid),

        migrations.AlterField(
            model_name='usernotesclinic',
            name='uid',
            field=models.UUIDField(db_index=True, editable=False, unique=True),
        ),
        migrations.AlterField(
            model_name='usernotesprofessional',
            name='uid',
            field=models.UUIDField(db_index=True, editable=False, unique=True),
        ),

    ]
