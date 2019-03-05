# Generated by Django 2.1.4 on 2018-12-16 01:47

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        ('clinics', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='Profession',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('description', models.TextField()),
                ('name', models.CharField(choices=[('general_practitioner', 'general_practitioner'), ('nurse', 'nurse')], max_length=30)),
            ],
        ),
        migrations.CreateModel(
            name='Professional',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('description', models.CharField(max_length=1000)),
                ('current_clinic', models.ForeignKey(on_delete=django.db.models.deletion.DO_NOTHING, related_name='employees', to='clinics.Clinic')),
                ('current_location', models.ForeignKey(on_delete=django.db.models.deletion.DO_NOTHING, to='clinics.Location')),
                ('current_organisation', models.ForeignKey(on_delete=django.db.models.deletion.DO_NOTHING, to='clinics.Organisation')),
                ('previous_roles', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='clinics.Role')),
                ('profession', models.ForeignKey(on_delete=django.db.models.deletion.DO_NOTHING, to='professionals.Profession')),
                ('starred_clinic', models.ForeignKey(on_delete=django.db.models.deletion.DO_NOTHING, related_name='professional_starred', to='clinics.Clinic')),
            ],
        ),
    ]