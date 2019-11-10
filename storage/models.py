from django.db import models
from django.utils import timezone
from django.contrib.auth.models import User
from vax.models import Vax

from django.urls import reverse


class Storage(models.Model):
    escolha_ativo = (('A', 'Ativo'), ('I', 'Inativo'))

    lote = models.CharField(max_length=30)
    vax = models.ForeignKey(Vax, on_delete=models.DO_NOTHING)
    quantidade = models.IntegerField()
    descricao = models.TextField()
    date_posted = models.DateTimeField(default=timezone.now)
    author = models.ForeignKey(User, on_delete=models.CASCADE)
    ativo = models.CharField(max_length=1, choices=escolha_ativo)



    def __str__(self):
        return self.lote

    def get_absolute_url(self):
        return reverse('storage-detail', kwargs={'pk': self.pk})
    
    # def default_user():
    #     return Policy.objects.get(name='admin').pk

