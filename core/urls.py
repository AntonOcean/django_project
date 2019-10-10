from django.urls import path

from core import views

urlpatterns = [
    path('', views.slow_handler, name='main'),
]
