from django.db import models
from django.utils import timezone
from django.contrib.auth.models import User
from vax.models import Vax
from storage.models import Storage


from django.urls import reverse


class Card(models.Model):
    usuario =  models.ForeignKey(User, related_name='usuario', on_delete=models.DO_NOTHING)
    lote = models.ForeignKey(Storage, on_delete=models.DO_NOTHING)
    vacina = models.ForeignKey(Vax, on_delete=models.DO_NOTHING)
    date_posted = models.DateTimeField(default=timezone.now)
    author = models.ForeignKey(User, on_delete=models.CASCADE)

    # def __str__(self):
    #     return 'Lote: {}'.format(self.lote)

    def get_absolute_url(self):
        return reverse('card-detail', kwargs={'pk': self.pk})
    
    # def default_user():
    #     return Policy.objects.get(name='admin').pk

