from rest_framework import generics 
from .models import Torneo, Equipo
from .serializers import TorneoSerializer, EquipoSerializer


class EquipoListCreateAPIView(generics.ListCreateAPIView):
    queryset = Equipo.objects.all()
    serializer_class = EquipoSerializer


class TorneoListCreateAPIView(generics.ListCreateAPIView):
    queryset = Torneo.objects.all()
    serializer_class = TorneoSerializer