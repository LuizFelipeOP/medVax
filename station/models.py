from django.db import models
from django.utils import timezone
from django.contrib.auth.models import User
from django.urls import reverse


class Station(models.Model):
    nome = models.CharField(max_length=100)
    descricao = models.TextField()
    author = models.ForeignKey(User, on_delete=models.CASCADE)

    def __str__(self):
        return self.name

    def get_absolute_url(self):
        return reverse('station-detail', kwargs={'pk': self.pk})