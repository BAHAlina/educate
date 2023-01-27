from django.shortcuts import render , HttpResponse , get_object_or_404, redirect
from .forms import AjouterAnnonce,EnvoyerMessage
from .models import Annonce,Favori,Annonce2,Message
from django.urls import reverse

# Create your views here.

def annonceadd(request):
    if request.method == 'POST':
        titre = request.POST.get('titre')
        category = request.POST.get('category')
        slug = request.POST.get('titre')
        modalite = request.POST.get('modalite')
        description = request.POST.get('description')
        tarif = request.POST.get('tarif')
        adressAnnonce = request.POST.get('adressAnnonce')
        photoAnnonce = request.POST.get('photoAnnonce')
        themeAnnonce = request.POST.get('themeAnnonce')
        wilayaAnnonce = request.POST.get('wilayaAnnonce')
        communeAnnonce = request.POST.get('communeAnnonce')
        nomAnnonceur = request.POST.get('nomAnnonceur')
        prenomAnnonceur = request.POST.get('prenomAnnonceur')
        adressAnnonceur = request.POST.get('adressAnnonceur')
        emailAnnonceur =request.POST.get('emailAnnonceur')
        telAnnonceur = request.POST.get('telAnnonceur')
        user = request.user
        data=Annonce(titre= titre,category=category, modalite=modalite, description=description, tarif=tarif, adressAnnonce=adressAnnonce, photoAnnonce=photoAnnonce, themeAnnonce=themeAnnonce,wilayaAnnonce=wilayaAnnonce,communeAnnonce=communeAnnonce,nomAnnonceur=nomAnnonceur,prenomAnnonceur=prenomAnnonceur,adressAnnonceur=adressAnnonce,emailAnnonceur=emailAnnonceur,telAnnonceur=telAnnonceur, slug=slug, user=user)
        data.save()
    return render(request, 'annonces/annonce.html', {'an':AjouterAnnonce})
    
def annonceshow(request):
    ann = Annonce.objects.all()
    if request.method == "GET":
        des = request.GET.get('rechercher')
        theme = request.GET.get('themeAnnonce')
        wilaya= request.GET.get('wilayaAnnonce')
        commune= request.GET.get('communeAnnonce')
        date1=request.GET.get('date1')
        date2=request.GET.get('date2')
        if des is not None:
            ann = Annonce.objects.filter(description__contains = des).order_by('-datepub') |  Annonce.objects.filter(titre__contains = des).order_by('-datepub')
            if theme != "none":
                ann=ann.filter(themeAnnonce=theme)
            else:
                if wilaya != "none":
                    ann=ann.filter(wilayaAnnonce=wilaya)
                else:
                    if commune != "none":
                        ann=ann.filter(communeAnnonce=commune)
                    else:
                        if date2 != "2023-01-01" :
                            ann=ann.filter(datepub__range=[date1,date2])
                                              
    return render(request, 'annonces/annonceshow.html',{'annoncer': ann})

def annonceshowdeposer(request):
    user=request.user
    annn = Annonce.objects.filter(user=user)
    return render(request, 'annonces/dejadeposer.html',{'annoncet': annn})

def envoyermessage(request, slug):
    annonce = get_object_or_404(Annonce, slug=slug)
    if request.method == "POST":
        message = request.POST.get('message')
        recever=annonce.user
        sender=request.user
        Message(message=message, recever=recever, sender=sender).save()
    return render(request, 'annonces/sendmessage.html', {'em':EnvoyerMessage} )
        
def voir_messages(request):
    user=request.user
    msgs = Message.objects.filter(recever=user)
    return render(request, 'annonces/voirmessages.html', {"msgs": msgs})   

def voir_messages_envoye(request):
    user=request.user
    msg = Message.objects.filter(sender=user)
    return render(request, 'annonces/voirmessageenvoye.html', {"msg": msg})   



    

def show_details(request, slug):
    annonce = get_object_or_404(Annonce, slug=slug)
    return render(request, 'annonces/detailsannonce.html', {'annonce':annonce})

def add_favouri(request, slug):
    user = request.user
    annonce = get_object_or_404(Annonce, slug=slug)
    favori, _ = Favori.objects.get_or_create(user=user)
    annnonce2, created = Annonce2.objects.get_or_create(user=user,annonce=annonce)
    
    if created:
        favori.annonces.add(annnonce2)
        favori.save()
    return redirect(reverse("details", kwargs={"slug": slug}))

def voir_favori(request):
    favori = get_object_or_404(Favori, user=request.user)
    return render(request, 'annonces/favoris.html', {"annonces": favori.annonces.all()})

def supprimer_favori(request):
    if favori := request.user.favori:
        favori.annonces.all().delete()
        favori.delete()
    return redirect("annonceshow")


