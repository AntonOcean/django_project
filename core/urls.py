from django.urls import path

from core import views

urlpatterns = [
    path('time_load/', views.slow_handler, name='time_load'),
    path('cpu_load/', views.cpu_handler, name='cpu_load'),
    path('', views.ping_handler, name='ping'),
]
