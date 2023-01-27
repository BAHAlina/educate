from django.urls import path,include
from . import views
from django.contrib.auth import views as auth_views

urlpatterns = [
    path('signup/', views.signup, name='signup'),
    path('', views.login_user, name='login'),
    path('logout/', views.logout_user, name='logout'),
    path('social-auth/', include('social_django.urls', namespace='social')),
]


