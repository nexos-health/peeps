# Generated by Django 3.0.6 on 2020-06-14 05:03

from django.db import migrations, models
import utils.general


class Migration(migrations.Migration):

    dependencies = [
        ('users', '0002_user_email'),
    ]

    operations = [
        migrations.AddField(
            model_name='user',
            name='uid',
            field=models.CharField(default=utils.general.create_uid, editable=False, max_length=32, unique=True, verbose_name='UID'),
        ),
    ]
