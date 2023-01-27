from django import forms
from .models import Annonce,Message
from datetime import datetime

class AjouterAnnonce(forms.ModelForm):
    class Meta:
        model=Annonce
        fields=['titre','category','themeAnnonce','modalite','description','tarif','adressAnnonce','wilayaAnnonce', 'communeAnnonce','photoAnnonce','nomAnnonceur','prenomAnnonceur','adressAnnonceur','emailAnnonceur','telAnnonceur']
    
    
class EnvoyerMessage(forms.ModelForm):
    class Meta:
        model=Message
        fields=['message']
        
        
        