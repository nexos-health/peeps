# Generated by Django 3.0.6 on 2020-05-20 11:03

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('professionals', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='ProfessionType',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=100)),
                ('description', models.TextField(blank=True, null=True)),
            ],
        ),
        migrations.RemoveField(
            model_name='role',
            name='work_type',
        ),
        migrations.AddField(
            model_name='professional',
            name='healthlink_address',
            field=models.CharField(blank=True, max_length=100, null=True),
        ),
        migrations.AlterField(
            model_name='professional',
            name='description',
            field=models.TextField(blank=True, null=True),
        ),
        migrations.AlterField(
            model_name='professional',
            name='title',
            field=models.CharField(blank=True, default='', max_length=20, null=True),
        ),
        migrations.AlterField(
            model_name='role',
            name='description',
            field=models.TextField(blank=True, null=True),
        ),
        migrations.AlterField(
            model_name='role',
            name='start_date',
            field=models.DateField(blank=True, null=True),
        ),
        migrations.CreateModel(
            name='Profession',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('description', models.TextField(blank=True, null=True)),
                ('active', models.BooleanField()),
                ('profession_type', models.ForeignKey(on_delete=django.db.models.deletion.DO_NOTHING, to='professionals.ProfessionType')),
                ('professional', models.ForeignKey(on_delete=django.db.models.deletion.DO_NOTHING, to='professionals.Professional')),
            ],
        ),
    ]