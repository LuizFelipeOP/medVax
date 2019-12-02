from django.shortcuts import render
from django.contrib.auth.mixins import LoginRequiredMixin, UserPassesTestMixin
from django.views.generic import ListView, DetailView, CreateView, UpdateView, DeleteView
from .models import Vax

def show(request):
    content = {
        'vaxes': Vax.objects.all() #pega os dados inseridos no banco
    }
    return render(request, 'vax/show.html', content)

class VaxListView(ListView):
    model = Vax
    template_name = 'vax/home.html'  # <app>/<model>_<viewtype>.html 
    context_object_name = 'vaxes'
    ordering = ['nome']

class VaxDetailView(DetailView):
    model = Vax

class VaxCreateView(LoginRequiredMixin, CreateView):
    model = Vax
    fields = ['nome', 'descricao','dose','temperature','milimeter']

    def form_valid(self, form):
        form.instance.author = self.request.user
        return super().form_valid(form)

class VaxUpdateView(LoginRequiredMixin, UserPassesTestMixin, UpdateView):
    model = Vax
    fields = ['nome', 'descricao','dose','temperature','milimeter']

    def form_valid(self, form):
        form.instance.author = self.request.user
        return super().form_valid(form)

    def test_func(self):
        vax = self.get_object()
        if self.request.user == vax.author:
            return True
        return False


class VaxDeleteView(LoginRequiredMixin, UserPassesTestMixin, DeleteView):
    model = Vax
    success_url = '/'
    
    def test_func(self):
        vax = self.get_object()
        if self.request.user == vax.author:
            return True
        return False



