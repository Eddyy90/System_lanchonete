from django.urls import path
from . import views

urlpatterns = [
    path('', views.main, name='main'),
    path('menu/', views.menu, name='menu'),
    path('bebidas/', views.menu_bebidas, name='menu_bebidas'),
]
