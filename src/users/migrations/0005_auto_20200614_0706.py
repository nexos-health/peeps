# Generated by Django 3.0.6 on 2020-06-14 07:06

from django.db import migrations, models
import utils.general


class Migration(migrations.Migration):

    dependencies = [
        ('users', '0004_auto_20200614_0706'),
    ]

    operations = [
        migrations.AlterField(
            model_name='user',
            name='user_id',
            field=models.CharField(default=utils.general.create_user_id, editable=False, max_length=8, null=True, unique=True),
        ),
    ]
