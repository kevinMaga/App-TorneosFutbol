from rest_framework import generics 
from .models import Torneo, Equipo, Jugador
from .serializers import TorneoSerializer, EquipoSerializer, JugadorSerializer


class EquipoListCreateAPIView(generics.ListCreateAPIView):
    queryset = Equipo.objects.all()
    serializer_class = EquipoSerializer


class TorneoListCreateAPIView(generics.ListCreateAPIView):
    queryset = Torneo.objects.all()
    serializer_class = TorneoSerializer

class JugadorListCreateAPIView(generics.ListCreateAPIView):
    queryset = Jugador.objects.all()
    serializer_class = JugadorSerializer