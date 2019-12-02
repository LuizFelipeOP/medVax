from django.db import models
from django.utils import timezone
from django.contrib.auth.models import User
from django.urls import reverse


class Vax(models.Model):
    nome = models.CharField(max_length=100)
    descricao = models.TextField()
    dose = models.IntegerField()
    temperature = models.FloatField()
    milimeter = models.FloatField()
    author = models.ForeignKey(User, on_delete=models.CASCADE)

    def __str__(self):
        return self.nome

    def get_absolute_url(self):
        return reverse('vax-detail', kwargs={'pk': self.pk})