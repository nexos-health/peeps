# Generated by Django 3.0.6 on 2020-07-03 05:28

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('users', '0006_auto_20200614_0709'),
    ]

    operations = [
        migrations.RenameField(
            model_name='user',
            old_name='user_id',
            new_name='user_key',
        ),
    ]