# Generated by Django 4.1.4 on 2022-12-31 18:57

import datetime
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('annonces', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='annonce',
            name='datepub',
            field=models.DateTimeField(default=datetime.datetime(2022, 12, 31, 19, 57, 39, 957252)),
        ),
        migrations.AlterField(
            model_name='deposer',
            name='datepub',
            field=models.DateTimeField(default=datetime.datetime(2022, 12, 31, 19, 57, 39, 957252)),
        ),
    ]