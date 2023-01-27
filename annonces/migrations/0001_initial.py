# Generated by Django 4.1.4 on 2022-12-31 18:56

import datetime
from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
    ]

    operations = [
        migrations.CreateModel(
            name='Annonce',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('titre', models.CharField(max_length=50, null=True, unique=True)),
                ('category', models.CharField(choices=[('primaire', 'primaire'), ('college', 'college'), ('lycee', 'lycee')], max_length=50)),
                ('slug', models.SlugField(max_length=128, null=True)),
                ('themeAnnonce', models.CharField(choices=[('es', (('math', 'math'), ('physique', 'physique'))), ('en', (('math', 'math'), ('physique', 'physique')))], max_length=50, null=True)),
                ('modalite', models.CharField(choices=[('online', 'online'), ('offline', 'offline')], max_length=10, null=True)),
                ('description', models.TextField(null=True)),
                ('tarif', models.CharField(max_length=10, null=True)),
                ('adressAnnonce', models.CharField(max_length=100, null=True)),
                ('wilayaAnnonce', models.CharField(choices=[('es', (('bejaia', 'bejaia'), ('alger', 'alger')))], max_length=50, null=True)),
                ('communeAnnonce', models.CharField(choices=[('es', (('lkseur', 'lkseur'), ('amizour', 'amizour')))], max_length=50, null=True)),
                ('datepub', models.DateTimeField(default=datetime.datetime(2022, 12, 31, 19, 56, 55, 408541))),
                ('photoAnnonce', models.ImageField(blank=True, upload_to='photos/%y/%m/%d')),
                ('nomAnnonceur', models.CharField(max_length=50, null=True)),
                ('prenomAnnonceur', models.CharField(max_length=50, null=True)),
                ('adressAnnonceur', models.CharField(max_length=100, null=True)),
                ('emailAnnonceur', models.CharField(max_length=50, null=True)),
                ('telAnnonceur', models.CharField(max_length=10, null=True)),
            ],
        ),
        migrations.CreateModel(
            name='Annonce2',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('annonce', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='annonces.annonce')),
                ('user', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL)),
            ],
        ),
        migrations.CreateModel(
            name='Message',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('message', models.TextField(max_length=10, null=True)),
                ('recever', models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL)),
                ('sender', models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, related_name='sender', to=settings.AUTH_USER_MODEL)),
            ],
        ),
        migrations.CreateModel(
            name='Favori',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('annonces', models.ManyToManyField(to='annonces.annonce2')),
                ('user', models.OneToOneField(on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL)),
            ],
        ),
        migrations.CreateModel(
            name='Deposer',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('titre', models.CharField(max_length=50, null=True, unique=True)),
                ('category', models.CharField(max_length=50)),
                ('slug', models.SlugField(max_length=128, null=True)),
                ('themeAnnonce', models.CharField(max_length=50, null=True)),
                ('modalite', models.CharField(max_length=10)),
                ('description', models.TextField(null=True)),
                ('tarif', models.CharField(max_length=10, null=True)),
                ('adressAnnonce', models.CharField(max_length=100, null=True)),
                ('wilayaAnnonce', models.CharField(max_length=50, null=True)),
                ('communeAnnonce', models.CharField(max_length=50, null=True)),
                ('datepub', models.DateTimeField(default=datetime.datetime(2022, 12, 31, 19, 56, 55, 408541))),
                ('photoAnnonce', models.ImageField(blank=True, upload_to='photos2/%y/%m/%d')),
                ('nomAnnonceur', models.CharField(max_length=50, null=True)),
                ('prenomAnnonceur', models.CharField(max_length=50, null=True)),
                ('adressAnnonceur', models.CharField(max_length=100, null=True)),
                ('emailAnnonceur', models.CharField(max_length=50, null=True)),
                ('telAnnonceur', models.CharField(max_length=10, null=True)),
                ('user', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL)),
            ],
        ),
    ]