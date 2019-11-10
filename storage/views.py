from django.shortcuts import render
from django.contrib.auth.mixins import LoginRequiredMixin, UserPassesTestMixin
from django.views.generic import ListView, DetailView, CreateView, UpdateView, DeleteView
from .models import Storage
from .models import Vax
from django.contrib.admin.views.decorators import staff_member_required

def show(request):
    content = {
        'storages': Storage.objects.all() #pega os dados inseridos no banco
    }
    return render(request, 'storage/show.html', content)

class StorageListView(ListView):
    model = Storage
    template_name = 'storage/home.html'  # <app>/<model>_<viewtype>.html 
    context_object_name = 'storages'
    ordering = ['lote']

class StorageDetailView(DetailView):
    model = Storage
    vax = ['Vax.pk', 'Vax.nome']


class StorageCreateView(LoginRequiredMixin, CreateView):
    model = Storage
    fields = ['lote', 'vax','quantidade','descricao', 'ativo']
    vax = ['Vax.pk', 'Vax.nome']

    def form_valid(self, form):
        form.instance.author = self.request.user
        return super().form_valid(form)

class StorageUpdateView(LoginRequiredMixin, UserPassesTestMixin, UpdateView):
    model = Storage
    fields = ['lote', 'vax','quantidade','descricao', 'ativo']
    vax = ['Vax.pk', 'Vax.nome']

    def form_valid(self, form):
        form.instance.author = self.request.user
        return super().form_valid(form)

    def test_func(self):
        storage = self.get_object()
        if self.request.user == storage.author:
            return True
        return False


class StorageDeleteView(LoginRequiredMixin, UserPassesTestMixin, DeleteView):
    model = Storage
    success_url = '/'
    
    def test_func(self):
        storage = self.get_object()
        if self.request.user == storage.author:
            return True
        return False



