# app/models.py

from django.db import models

class Produto(models.Model):
    nome = models.CharField(max_length=200)
    tipo = models.CharField(max_length=200)
    codigo = models.CharField(max_length=200)

class Cliente(models.Model):
    nome = models.CharField(max_length=200)
    email = models.EmailField()
    telefone = models.CharField(max_length=200)

