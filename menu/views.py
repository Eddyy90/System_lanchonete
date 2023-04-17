from django.shortcuts import render
from .models import MenuItem

def menu(request):
    items = MenuItem.objects.all()
    return render(request, 'menu.html', {'items': items})

def main(request):
	return render(request, 'main.html')
