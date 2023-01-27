# Generated by Django 4.1.4 on 2023-01-27 17:09

import datetime
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('annonces', '0012_alter_annonce_datepub'),
    ]

    operations = [
        migrations.AlterField(
            model_name='annonce',
            name='communeAnnonce',
            field=models.CharField(choices=[('Adrar', (('lkseur', 'lkseur'), ('amizour', 'amizour')))], max_length=50, null=True),
        ),
        migrations.AlterField(
            model_name='annonce',
            name='datepub',
            field=models.DateTimeField(blank=True, default=datetime.datetime(2023, 1, 27, 18, 9, 14, 592371), null=True),
        ),
        migrations.AlterField(
            model_name='annonce',
            name='themeAnnonce',
            field=models.CharField(choices=[('math', 'math'), ('physique', 'physique'), ('science', 'science'), ('arabe', 'arabe'), ('francais', 'francais'), ('anglais', 'anglais')], max_length=50, null=True),
        ),
        migrations.AlterField(
            model_name='annonce',
            name='wilayaAnnonce',
            field=models.CharField(choices=[('1-Adrar', '1-Adrar'), ('2-Chelf', '2-Chlef'), ('3-Laghouat', '3-Laghouat'), ('4-Oum El Bouaghi', '4-Oum El Bouaghi'), ('5-Batna', '5-Batna'), ('6-Béjaïa', '6-Béjaïa'), ('7-Biskra', '7-Biskra'), ('8-Béchar', '8-Béchar'), ('9-Blida', '9-Blida'), ('10-Bouira', '10-Bouira'), ('11-Tamanrasset', '11-Tamanrasset'), ('12-Tébessa', '12-Tébessa'), ('13-Tlemcen', '13-Tlemcen'), ('14-Tiaret', '14-Tiaret'), ('15-Tizi Ouzou', '15-Tizi Ouzou'), ('16-Alger', '16-Alger'), ('17-Djelfa', '17-Djelfa'), ('18-Jijel', '18-Jijel'), ('19-Sétif', '19-Sétif'), ('20-Saïda', '20-Saïda'), ('21-Skikda', '21-Skikda'), ('22-Sidi Bel Abbès', '22-Sidi Bel Abbès'), ('23-Annaba', '23-Annaba'), ('24-Guelma', '24-Guelma'), ('25-Constantine', '25-Constantine'), ('26-Médéa', '26-Médéa'), ('27-Mostaganem', '27-Mostaganem'), ('28-MSila', '28-MSila'), ('29-Mascara', '29-Mascara'), ('30-Ouargla', '30-Ouargla'), ('31-Oran', '31-Oran'), ('32-El Bayadh', '32-El Bayadh'), ('33-Illizi', '33-Illizi'), ('34-Bordj Bou Arreridj', '34-Bordj Bou Arreridj'), ('35-Boumerdès', '35-Boumerdès'), ('36-El Tarf', '36-El Tarf'), ('37-Tindouf', '37-Tindouf'), ('38-Tissemsilt', '38-Tissemsilt'), ('39-El Oued', '39-El Oued'), ('40-Khenchela', '40-Khenchela'), ('41-Souk Ahras', '41-Souk Ahras'), ('42-Tipaza', '42-Tipaza'), ('43-Mila', '43-Mila'), ('44-Aïn Defla', '44-Aïn Defla'), ('45-Naâma', '45-Naâma'), ('46-Aïn Témouchent', '46-Aïn Témouchent'), ('47-Ghardaïa', '47-Ghardaïa'), ('48-Relizane', '48-Relizane')], max_length=50, null=True),
        ),
    ]