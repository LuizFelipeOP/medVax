from django.shortcuts import render
from django.http import JsonResponse
from django.core.exceptions import ObjectDoesNotExist
from django.core.exceptions import MultipleObjectsReturned
from django.contrib.auth.mixins import LoginRequiredMixin, UserPassesTestMixin
from django.views.generic import ListView, DetailView, CreateView, UpdateView, DeleteView, FormView
from .models import Card
from .models import Storage
from .models import Vax

from django.db.models import Q
from django.http import HttpResponse 
from .forms import ProfileSearchForm
from django.contrib.auth.models import User
from users.models import Profile
from django.contrib.admin.views.decorators import staff_member_required
from dateutil.relativedelta import relativedelta
import datetime


def show(request):
    results = Card.objects.filter(Q(usuario_id=request.user.id))
    
    contrapolioArray = []
    tripliceArray = []
    sarampoArray = []
    BCGArray = []
    duplaArray = []
    outrasArray = []

    for res in results:
        switcher={
                'Contra-pólio':'Sunday',
                1:'Monday',
                2:'Tuesday',
                3:'Wednesday',
                4:'Thursday',
                5:'Friday',
                6:'Saturday'
             }
        if(str(res.vacina) == "Contra-pólio"):
            contrapolioArray.append(res)
        elif(str(res.vacina) == "Triplice"):
            tripliceArray.append(res)
        elif(str(res.vacina) == "Sarampo"):
            sarampoArray.append(res)
        elif(str(res.vacina) == "BCG"):
            BCGArray.append(res)
        elif(str(res.vacina) == "Dupla"):
            duplaArray.append(res)
        else:
            outrasArray.append(res)

    content = {
        'cards': results,
        'contraPolio': contrapolioArray, 
        'triplice': tripliceArray,
        'sarampo': sarampoArray,
        'BCG': BCGArray,
        'dupla': duplaArray,
        'outras': outrasArray
    }
    return render(request, 'card/home.html',  {
                                                'contraPolio': contrapolioArray, 
                                                'triplice': tripliceArray,
                                                'sarampo': sarampoArray,
                                                'BCG': BCGArray,
                                                'dupla': duplaArray,
                                                'outras': outrasArray
                                              })
 


@staff_member_required
def search(request):
    global results
    #     # '49861694838'

    cpfQuery = request.GET.get('cpf')
    cnsQuery = request.GET.get('cns')
    vacinaQuery = request.GET.get('vacina')

    
    if(cpfQuery):
        content = sentDataView(cpfQuery,vacinaQuery, request)
        return render(request, 'card/card_search.html', content)

    if(cnsQuery):
        content = sentDataView(cnsQuery,vacinaQuery, request)
        return render(request, 'card/card_search.html', content)
    else:
        return render(request, 'card/card_search.html')


def sentDataView(dataQuery,vacinaQuery, request):
    if(len(dataQuery) == 11):
        results = Profile.objects.filter(Q(cpf__icontains=dataQuery)).values('user_id')
    if(len(dataQuery) > 11):
        results = Profile.objects.filter(Q(cns__icontains=dataQuery)).values('user_id')

    vaxResult = Vax.objects.filter(Q(nome=vacinaQuery)).values('id')

    if(results and vaxResult):
        usuario = User.objects.get(id__icontains=results)
        vax_id = Vax.objects.get(id__icontains=vaxResult)
        lotes = Storage.objects.all()
        content = {
            'items': results,
            'vax': vax_id.id,
            'usuario': usuario.username,
            'lotes': lotes
        }
        return content
    else:
        content = {
            'error': 'Usuario não encontrado'
        }
        return  content

@staff_member_required
def graphSearch(request):
    global results

    vacinaGQuery = request.GET.get('nome')
    anoGQuery = request.GET.get('ano')
    if(anoGQuery and vacinaGQuery):
        if(int(anoGQuery) < 1900 or int(anoGQuery) > datetime.datetime.now().year):
            content = {
                    'error': 'Ano invalido'
                }
            return render(request, 'card/card_graph_search.html', content)

        vaxResult = Vax.objects.filter(Q(nome=vacinaGQuery)).values('id')
        if(not vaxResult):
            content = {
                    'error': 'Vacina não encontrada'
                }
            return render(request, 'card/card_graph_search.html', content)
        else:
            vax_id = Vax.objects.get(id__icontains=vaxResult)
            content = {
                'items': anoGQuery,
                'vax': vax_id.id
            }
            return render(request, 'card/card_graph_search.html', content)

    return render(request, 'card/card_graph_search.html')


@staff_member_required
def graph(request):
    global values

    vaxQuery = request.GET.get('queryResult')
    yearsList = []
    yearsListDone = []
    
    vaxQuery = vaxQuery.split('-')

    if(vaxQuery):
        values = Card.objects.filter(vacina_id=vaxQuery[1])


        for value in values:
            
            if(value.date_posted.year == int(vaxQuery[0])):
                usuario = Profile.objects.get(user_id=value.usuario_id)
                # print(type(value.date_posted))
                # print(type(usuario.data_nascimento))
                newDate =  relativedelta(value.date_posted.date(), usuario.data_nascimento).years 
                yearsList.append(newDate)

        yearsListDone = yearsCountChart(yearsList)
        print(yearsListDone)
        content = {
            'items': yearsListDone
        }
        return render(request, 'card/card_graph.html', content)


def yearsCountChart(yearsArray):
    yearArrayChart = []
    perido0_9   = 0
    perido10_19 = 0
    perido20_39 = 0
    perido40_49 = 0
    perido50_59 = 0
    perido60_64 = 0
    perido65_69 = 0
    perido70_74 = 0
    perido75_79 = 0
    perido80    = 0

    for year in yearsArray:
        
        if(year >= 0 and year <= 9):
            perido0_9 = perido0_9 + 1
        if(year >= 10 and year <= 19):
            perido10_19 = perido10_19 + 1
        if(year >= 20 and year <= 39):
            perido20_39 = perido20_39 + 1
        if(year >= 40 and year <= 49):
            perido40_49 = perido40_49 + 1
        if(year >= 50 and year <= 59):
            perido50_59 = perido50_59 + 1
        if(year >= 60 and year <= 64):
            perido60_64 = perido60_64 + 1
        if(year >= 65 and year <= 69):
            perido65_69 = perido65_69 + 1
        if(year >= 70 and year <= 74):
            perido70_74 = perido70_74 + 1
        if(year >= 65 and year <= 69):
            perido75_79 = perido75_79 + 1
        if(year >= 80):
            perido80 = perido80 + 1
        
   
    yearArrayChart.append(perido0_9)
    yearArrayChart.append(perido10_19)
    yearArrayChart.append(perido20_39)
    yearArrayChart.append(perido40_49)
    yearArrayChart.append(perido50_59)
    yearArrayChart.append(perido60_64)
    yearArrayChart.append(perido65_69)
    yearArrayChart.append(perido70_74)
    yearArrayChart.append(perido75_79)
    yearArrayChart.append(perido80)

    return yearArrayChart



class CardListView(ListView):
    model = Card
    template_name = 'card/home.html'  # <app>/<model>_<viewtype>.html 
    context_object_name = 'cards'
    ordering = ['pk']

class CardDetailView(DetailView):
    model = Card
   
class CardCreateView(LoginRequiredMixin, CreateView):
    model = Card
    fields = ['usuario','lote', 'vacina']
    vax = ['pk']


    def format_form(self, form):
        vacinaQuery = request.POST.get('vacina')
        print(vacinaQuery)

    def form_valid(self, form):
        form.instance.author = self.request.user
        valuesGet = self.request.GET.get('q').split('-')
        qtd_lote = Storage.objects.get(id__icontains=valuesGet[2])
        qtd_lote.quantidade = qtd_lote.quantidade - 1
        qtd_lote.save()
        return super().form_valid(form)
        


class CardUpdateView(LoginRequiredMixin, UserPassesTestMixin, UpdateView):
    model = Card
    fields = ['usuario','lote', 'vacina']


    def form_valid(self, form):
        form.instance.author = self.request.user
        return super().form_valid(form)
        
    def test_func(self):
        card = self.get_object()
        if self.request.user == card.author:
            return True
        return False


class CardDeleteView(LoginRequiredMixin, UserPassesTestMixin, DeleteView):
    model = Card
    success_url = '/'
    
    def test_func(self):
        card = self.get_object()
        if self.request.user == card.author:
            return True
        return False



