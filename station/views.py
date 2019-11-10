from django.shortcuts import render
from django.contrib.auth.mixins import LoginRequiredMixin, UserPassesTestMixin
from django.views.generic import ListView, DetailView, CreateView, UpdateView, DeleteView
from .models import Station

def show(request):
    content = {
        'stations': Station.objects.all() #pega os dados inseridos no banco
    }
    return render(request, 'station/show.html', content)

class StationListView(ListView):
    model = Station
    template_name = 'station/home.html'  # <app>/<model>_<viewtype>.html 
    context_object_name = 'stations'
    ordering = ['nome']

class StationDetailView(DetailView):
    model = Station

class StationCreateView(LoginRequiredMixin, CreateView):
    model = Station
    fields = ['nome', 'descricao']

    def form_valid(self, form):
        form.instance.author = self.request.user
        return super().form_valid(form)

class StationUpdateView(LoginRequiredMixin, UserPassesTestMixin, UpdateView):
    model = Station
    fields = ['nome', 'descricao']

    def form_valid(self, form):
        form.instance.author = self.request.user
        return super().form_valid(form)

    def test_func(self):
        stations = self.get_object()
        if self.request.user == stations.author:
            return True
        return False


class StationDeleteView(LoginRequiredMixin, UserPassesTestMixin, DeleteView):
    model = Station
    success_url = '/'
    
    def test_func(self):
        stations = self.get_object()
        if self.request.user == stations.author:
            return True
        return False



