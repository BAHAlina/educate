# Generated by Django 4.1.4 on 2023-01-27 18:44

import datetime
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('annonces', '0016_alter_annonce_datepub'),
    ]

    operations = [
        migrations.AlterField(
            model_name='annonce',
            name='datepub',
            field=models.DateTimeField(blank=True, default=datetime.datetime(2023, 1, 27, 19, 44, 52, 85082), null=True),
        ),
    ]