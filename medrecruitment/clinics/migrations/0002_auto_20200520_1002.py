# Generated by Django 3.0.6 on 2020-05-20 10:02

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        ('professionals', '0001_initial'),
        ('clinics', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='clinicflaggedprofessional',
            name='professional',
            field=models.ForeignKey(on_delete=django.db.models.deletion.DO_NOTHING, to='professionals.Professional'),
        ),
        migrations.AddField(
            model_name='clinicflaggedclinic',
            name='clinic',
            field=models.ForeignKey(on_delete=django.db.models.deletion.DO_NOTHING, related_name='clinicflaggedclinic_clinic', to='clinics.Clinic'),
        ),
        migrations.AddField(
            model_name='clinicflaggedclinic',
            name='clinic_noted',
            field=models.ForeignKey(on_delete=django.db.models.deletion.DO_NOTHING, related_name='clinicflaggedclinic_clinic_noted', to='clinics.Clinic'),
        ),
        migrations.AddField(
            model_name='clinic',
            name='location',
            field=models.ForeignKey(on_delete=django.db.models.deletion.DO_NOTHING, to='clinics.Location'),
        ),
        migrations.AddField(
            model_name='clinic',
            name='organisation',
            field=models.ForeignKey(null=True, on_delete=django.db.models.deletion.DO_NOTHING, to='clinics.Organisation'),
        ),
    ]
