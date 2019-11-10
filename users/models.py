from django.db import models
from django.contrib.auth.models import User
from django.utils import timezone
from .models import User as UserModel

# from PIL import Image

class Profile(models.Model):
    user = models.OneToOneField(User, on_delete=models.CASCADE)
    cpf = models.CharField(max_length=11, unique=True, blank=True)
    nome_mae = models.CharField(max_length=60, blank=True)
    nome_pai = models.CharField(max_length=60, blank=True)
    cns = models.CharField(max_length=15, unique=True, blank=True, )
    data_nascimento  = models.DateTimeField(default=timezone.now)
    # image = models.ImageField(default='default.jpg', upload_to='profile_pics')

    def __str__(self):
        return f'{self.user.username} Profile'

    def save(self, *args, **kwargs): 
        super().save()
    
        # img = Image.open(self.image.path)
        
        # if img.height > 300 or img.width > 300:
        #     output_size = (300, 300)
        #     img.thumbnail(output_size)
        #     img.save(self.image.path)
    def get_queryset(self):
        users = UserModel.objects.all()