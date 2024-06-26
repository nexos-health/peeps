# Generated by Django 3.0.6 on 2020-05-20 10:02

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Clinic',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('description', models.TextField()),
                ('name', models.CharField(max_length=100)),
                ('size', models.CharField(choices=[('0-5', '0-5'), ('5-20', '5-20'), ('20-50', '20-50'), ('50-200', '50-200'), ('200+', '200+')], max_length=10)),
                ('image', models.ImageField(blank=True, null=True, upload_to='')),
                ('email', models.EmailField(max_length=254)),
                ('website', models.URLField(null=True)),
                ('fax', models.CharField(blank=True, max_length=30, null=True)),
                ('phone', models.CharField(blank=True, max_length=30, null=True)),
                ('last_login', models.DateTimeField(null=True)),
            ],
        ),
        migrations.CreateModel(
            name='ClinicFlaggedClinic',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('notes', models.TextField()),
            ],
        ),
        migrations.CreateModel(
            name='Location',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('country', models.CharField(max_length=20)),
                ('state', models.CharField(max_length=20)),
                ('postcode', models.CharField(max_length=10)),
                ('suburb', models.CharField(max_length=20)),
                ('street_name', models.CharField(max_length=100)),
                ('street_number', models.CharField(max_length=10)),
            ],
        ),
        migrations.CreateModel(
            name='Organisation',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('description', models.TextField()),
                ('name', models.CharField(max_length=100)),
                ('size', models.CharField(choices=[('0-5', '0-5'), ('5-20', '5-20'), ('20-50', '20-50'), ('50-200', '50-200'), ('200+', '200+')], max_length=10)),
                ('image', models.ImageField(blank=True, null=True, upload_to='')),
                ('email', models.EmailField(max_length=254)),
                ('website', models.URLField()),
                ('headquarters', models.ForeignKey(on_delete=django.db.models.deletion.DO_NOTHING, to='clinics.Location')),
            ],
        ),
        migrations.CreateModel(
            name='ClinicFlaggedProfessional',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('notes', models.TextField()),
                ('clinic', models.ForeignKey(on_delete=django.db.models.deletion.DO_NOTHING, to='clinics.Clinic')),
            ],
        ),
    ]
