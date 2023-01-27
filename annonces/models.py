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
        ('es',(
        ('math','math'),
        ('physique','physique'),
        )
        ),
        ('en',(
        ('math','math'),
        ('physique','physique'),
        )
        ),
    ]
    z=[
        ('es',(
        ('bejaia','bejaia'),
        ('alger','alger'),
        )
        ),
    ]
    t=[
        ('es',(
        ('lkseur','lkseur'),
        ('amizour','amizour'),
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
    

    
