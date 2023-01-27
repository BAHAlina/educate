from django.db import models
from datetime import datetime
from project.settings import AUTH_USER_MODEL

class Annonce(models.Model):
    x=[
        ('primaire', 'primaire'),
        ('college' , 'college'),
        ('lycee', 'lycee'),
    ]
    y=[
        ('math','math'),
        ('physique','physique'),
        ('science','science'),
        ('arabe','arabe'),
        ('francais','francais'),
        ('anglais','anglais')

    ]
    z=[
        ('1-Adrar','1-Adrar'),
        ('2-Chelf','2-Chlef'),
        ('3-Laghouat', '3-Laghouat'),
        ('4-Oum El Bouaghi', '4-Oum El Bouaghi'),
        ('5-Batna', '5-Batna'),
        ('6-Béjaïa', '6-Béjaïa'),
        ('7-Biskra', '7-Biskra'),
        ('8-Béchar', '8-Béchar'),
        ('9-Blida', '9-Blida'),
        ('10-Bouira', '10-Bouira'),
        ('11-Tamanrasset', '11-Tamanrasset'),
        ('12-Tébessa', '12-Tébessa'),
        ('13-Tlemcen', '13-Tlemcen'),
        ('14-Tiaret', '14-Tiaret'),
        ('15-Tizi Ouzou', '15-Tizi Ouzou'),
        ('16-Alger', '16-Alger'),
        ('17-Djelfa', '17-Djelfa'),
        ('18-Jijel', '18-Jijel'),
        ('19-Sétif', '19-Sétif'),
        ('20-Saïda', '20-Saïda'),
        ('21-Skikda', '21-Skikda'),
        ('22-Sidi Bel Abbès', '22-Sidi Bel Abbès'),
        ('23-Annaba', '23-Annaba'),
        ('24-Guelma', '24-Guelma'),
        ('25-Constantine', '25-Constantine'),
        ('26-Médéa', '26-Médéa'),
        ('27-Mostaganem', '27-Mostaganem'),
        ('28-M''Sila', '28-M''Sila'),
        ('29-Mascara', '29-Mascara'),
        ('30-Ouargla', '30-Ouargla'),
        ('31-Oran', '31-Oran'),
        ('32-El Bayadh', '32-El Bayadh'),
        ('33-Illizi', '33-Illizi'),
        ('34-Bordj Bou Arreridj', '34-Bordj Bou Arreridj'),
        ('35-Boumerdès', '35-Boumerdès'),
        ('36-El Tarf', '36-El Tarf'),
        ('37-Tindouf', '37-Tindouf'),
        ('38-Tissemsilt', '38-Tissemsilt'),
        ('39-El Oued', '39-El Oued'),
        ('40-Khenchela', '40-Khenchela'),
        ('41-Souk Ahras', '41-Souk Ahras'),
        ('42-Tipaza', '42-Tipaza'),
        ('43-Mila', '43-Mila'),
        ('44-Aïn Defla', '44-Aïn Defla'),
        ('45-Naâma', '45-Naâma'),
        ('46-Aïn Témouchent', '46-Aïn Témouchent'),
        ('47-Ghardaïa', '47-Ghardaïa'),
        ('48-Relizane', '48-Relizane'),
    ]
    t=[
        ('1-Adrar',(
        ('01001-Adrar','01001-Adrar'),
        ('01002-Tamest','01002-Tamest'),
        ('01003-Charouine','01003-Charouine'),
        ('01004-Reggane','01004-Reggane'),
        ('01005-Inozghmir','01005-Inozghmir'),
        ('01006-Tit','01006-Tit'),
        ('01007-Ksar Kaddour','01007-Ksar Kaddour'),
        ('01008-Tsabit','01008-Tsabit'),
        ('01009-Timimoun','01009-Timimoun'),
        ('01010-Ouled Said','01010-Ouled Said'),
        ('01011-Zaouiet','01011-Zaouiet'),
        ('01012-Aoulef','01012-Aoulef'),
        ('01013-Timokten','01013-Timokten'),
        ('01014-Tamentit','01014-Tamentit'),
        ('01015-Fenoughil','01015-Fenoughil'),
        ('01016-Tinerkouk','01016-Tinerkouk'),
        ('01017-Deldoul','01017-Deldoul'),
        ('01018-Sali','01018-Sali'),
        ('01019-Akabli','01019-Akabli'),
        ('01020-Metarfa','01020-Metarfa'),
        ('01021-O Ahmed Timmi','01021-O Ahmed Timmi'),
        ('01022-Bouda','01022-Bouda'),
        ('01023-Aougrout','01023-Aougrout'),
        ('01024-Talmine','01024-Talmine'),
        ('01025-B Badji Mokhtar','01025-B Badji Mokhtar'),
        ('01026-Sbaa','01026-Sbaa'),
        ('01027-Ouled Aissa','01027-Ouled Aissa'),
        ('01028-Timiaouine','01028-Timiaouine'),
        )
        ),
        
        ('2-Chelf',(
        ('"02001-Chelf','"02001-Chelf'),
        ('02002-Tenes','02002-Tenes'),
        ('02003-Benairia','02003-Benairia'),
        ('02004-El Karimia','02004-El Karimia'),
        ('02005-Tadjna','02005-Tadjna'),
        ('02006-Taougrite','02006-Taougrite'),
        ('02007-Beni Haoua','02007-Beni Haoua'),
        ('02008-Sobha','02008-Sobha'),
        ('02009-Harchoun','02009-Harchoun'),
        ('02010-Ouled Fares','02010-Ouled Fares'),
        ('02011-Sidi Akacha','02011-Sidi Akacha'),
        ('02012-Boukadir','02012-Boukadir'),
        ('02013-Sidi Rached','02013-Sidi Rached'),
        ('02014-Talassa','02014-Talassa'),
        ('02015-Herenfa','02015-Herenfa'),
        ('02016-Ouled Goussine','02016-Ouled Goussine'),
        ('02017-Dahra','02017-Dahra'),
        ('02018-Ouled Abbes','02018-Ouled Abbes'),
        ('02019-Sendjas','02019-Sendjas'),
        ('02020-Zeboudja','02020-Zeboudja'),
        ('02021-Ouled Sly','02021-Ouled Sly'),
        ('02022-Abou El Hassen','02022-Abou El Hassen'),
        ('02023-El Marsa','02023-El Marsa'),
        ('02024-Chettia','02024-Chettia'),
        ('02025-Sidi Abderrahmane','02025-Sidi Abderrahmane'),
        ('02026-Moussadek','02026-Moussadek'),
        ('02027-El Hadjadj','02027-El Hadjadj'),
        ('02028-Labiod Medjadja','02028-Labiod Medjadja'),
        ('02029-Oued Fodda','02029-Oued Fodda'),
        ('02030-Ouled Ben Abdelkader','02030-Ouled Ben Abdelkader'),
        ('02031-Bouzghaia','02031-Bouzghaia'),
        ('02033-Oum Drou','02033-Oum Drou'),
        ('02034-Breira','02034-Breira'),
        ('02035-Ben Boutaleb','02035-Ben Boutaleb'),
        )
        ),
    ]
    titre = models.CharField(max_length=50, unique=True, null=True)
    category = models.CharField(max_length=50, choices=x)
    slug =models.SlugField(max_length=128, null=True)
    themeAnnonce = models.CharField(max_length=50, choices=y, null=True)
    modalite = models.CharField(max_length=10, choices=[('online' , 'online') , ('offline' , 'offline')], null=True)
    description = models.TextField(null=True)
    tarif = models.CharField(max_length=10, null=True)
    adressAnnonce = models.CharField(max_length=100, null=True)
    wilayaAnnonce = models.CharField(max_length=50, choices=z, null=True)
    communeAnnonce = models.CharField(max_length=50, choices=t, null=True)
    datepub = models.DateTimeField(default=datetime.now(), blank=True, null=True)
    photoAnnonce = models.ImageField(upload_to='photos/', blank=True)  
    nomAnnonceur = models.CharField(max_length=50, null=True)
    prenomAnnonceur = models.CharField(max_length=50, null=True)
    adressAnnonceur = models.CharField(max_length=100, null=True)
    emailAnnonceur = models.CharField(max_length=50, null=True)
    telAnnonceur = models.CharField(max_length=10, null=True)
    user = models.ForeignKey(AUTH_USER_MODEL, on_delete=models.CASCADE, null=True)
    
    def __str__(self):
        return self.titre
    
    
class Annonce2(models.Model):
    user = models.ForeignKey(AUTH_USER_MODEL, on_delete=models.CASCADE)
    annonce=models.ForeignKey(Annonce, on_delete=models.CASCADE)
    def __str__(self):
        return f"{self.annonce.titre}"
    
class Favori(models.Model):
    user = models.OneToOneField(AUTH_USER_MODEL, on_delete=models.CASCADE)
    annonces = models.ManyToManyField(Annonce2)
    def __str__(self):
        return self.user.username
    

    
       
class Message(models.Model):
    message = models.TextField(max_length=10, null=True)
    sender =models.ForeignKey(AUTH_USER_MODEL, on_delete=models.CASCADE, null=True, related_name="sender")
    recever =models.ForeignKey(AUTH_USER_MODEL, on_delete=models.CASCADE, null=True)
    

    
