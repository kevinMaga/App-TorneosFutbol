from django.urls import path
from .views import TorneoListCreateAPIView, EquipoListCreateAPIView

urlpatterns = [
    path('torneos/', TorneoListCreateAPIView.as_view(), name='torneos'),
    path('equipos/', EquipoListCreateAPIView.as_view(), name='equipos'),
]
