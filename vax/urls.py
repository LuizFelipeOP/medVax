from django.urls import path
from .views import VaxListView, VaxDetailView, VaxCreateView, VaxUpdateView, VaxDeleteView
from . import views 

urlpatterns = [
    path('vax/<int:pk>/', VaxDetailView.as_view(), name='vax-detail'),
    path('vax/new/', VaxCreateView.as_view(), name='vax-create'),
    path('vax/<int:pk>/update/', VaxUpdateView.as_view(), name='vax-update'),
    path('vax/<int:pk>/delete/', VaxDeleteView.as_view(), name='vax-delete'),
]
