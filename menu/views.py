from django.shortcuts import render
from .models import MenuItem, MenuBebidas

def menu(request):
    items = MenuItem.objects.all()
    return render(request, 'menu.html', {'items': items})

def main(request):
	return render(request, 'main.html')

def menu_bebidas(request):
    bebidas = MenuBebidas.objects.all()
    return render(request, 'bebidas.html', {'bebidas': bebidas})