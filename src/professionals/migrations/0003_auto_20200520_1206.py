# Generated by Django 3.0.6 on 2020-05-20 12:06

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('professionals', '0002_auto_20200520_1103'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='professional',
            name='healthlink_address',
        ),
        migrations.AddField(
            model_name='professional',
            name='bulk_billing',
            field=models.BooleanField(blank=True, null=True),
        ),
        migrations.AddField(
            model_name='professional',
            name='fees',
            field=models.TextField(blank=True, null=True),
        ),
        migrations.AddField(
            model_name='professional',
            name='wait_times',
            field=models.TextField(blank=True, null=True),
        ),
        migrations.AddField(
            model_name='role',
            name='healthlink_address',
            field=models.CharField(blank=True, max_length=100, null=True),
        ),
        migrations.AlterField(
            model_name='role',
            name='rate',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.DO_NOTHING, to='professionals.Rate'),
        ),
    ]
