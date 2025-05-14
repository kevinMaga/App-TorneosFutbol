from django.db import models

class Torneo(models.Model):
    nombre = models.CharField(max_length=100)
    fecha_inicio = models.DateField()
    fecha_fin = models.DateField()
    ciudad = models.CharField(max_length=100)
    direccion = models.TextField()
    lugar = models.CharField(max_length=100)
    ubicacion = models.TextField()
    es_multiple = models.BooleanField()
    creado_en = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return self.nombre
    
class Equipo(models.Model):
    nombre_club = models.CharField(max_length=100)
    imagen_club = models.TextField(null=True, blank=True)
    correo_electronico = models.EmailField()
    slogan = models.CharField(max_length=150, null=True, blank=True)
    nombre_presidente = models.CharField(max_length=100)
    direccion = models.TextField()
    ubicacion = models.TextField()
    telefono = models.CharField(max_length=20)
    creado_en = models.DateTimeField(auto_now_add=True)
    
    class Meta:
        db_table = 'equipos'  # <-- Esto conecta con tu tabla real de PostgreSQL

    def __str__(self):
        return self.nombre_club