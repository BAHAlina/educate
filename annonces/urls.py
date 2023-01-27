from django.urls import path
from . import views

urlpatterns = [
    path('', views.annonceshow, name='annonceshow'),
    path('ajouterannonce', views.annonceadd, name='annonce'),
    path('annonceshow/details/<str:slug>/', views.show_details, name='details'),
    path('annonceshow/details/<str:slug>/envoyermessage/', views.envoyermessage, name='envoyermessage'),
    path('annonceshow/details/<str:slug>/ajouterfavoris', views.add_favouri, name='ajouterfavori'),
    path('favoris/', views.voir_favori, name='favoris'),
    path('messagesrecu/', views.voir_messages, name='messages'),
    path('messagesenvoye/', views.voir_messages_envoye, name='messagesenvoye'),
    path('favoris/supprimer', views.supprimer_favori, name='supprimerfavoris'),
    path('dejadeposer', views.annonceshowdeposer, name='dejadeposer'),
]
