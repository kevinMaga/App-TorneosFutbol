from django.urls import path
from .views import TorneoListCreateAPIView, EquipoListCreateAPIView, JugadorListCreateAPIView

urlpatterns = [
    path('torneos/', TorneoListCreateAPIView.as_view(), name='torneos'),
    path('equipos/', EquipoListCreateAPIView.as_view(), name='equipos'),
    path('jugadores/', JugadorListCreateAPIView .as_view(), name='jugadores'),
]
