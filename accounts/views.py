from django.shortcuts import render,redirect
from django.contrib.auth import get_user_model,login,logout,authenticate
from django.contrib.auth.decorators import login_required
from django.contrib.auth import authenticate, login as dj_login


User = get_user_model()
def signup(request):
    if request.method == "POST":
        username = request.POST.get("username")
        password = request.POST.get("password")
        user = User.objects.create_user(username=username,password=password)
        dj_login(request, user, backend='django.contrib.auth.backends.ModelBackend')
        return redirect("annonceshow")
    return render(request, 'accounts/signup.html')

def login_user(request):
    if request.method == "POST":
        username = request.POST.get("username")
        password = request.POST.get("password")
        user = authenticate(username=username,password=password)
        if user:
            dj_login(request, user)
            return redirect("annonceshow")
    return render(request, 'accounts/login.html')


def login(request):
    return render(request, 'accounts/login.html')
@login_required
def home(request):
    return redirect("annonceshow")


def logout_user(request):
    logout(request)
    return redirect("login")



