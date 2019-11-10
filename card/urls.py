from django.urls import path
from .views import CardListView, CardDetailView, CardCreateView, CardUpdateView, CardDeleteView, CardSearchUser
from . import views 

urlpatterns = [
    path('card/<int:pk>/', CardDetailView.as_view(), name='card-detail'),
    path('card/new/', CardCreateView.as_view(), name='card-create'),
    path('card/<int:pk>/update/', CardUpdateView.as_view(), name='card-update'),
    path('card/<int:pk>/delete/', CardDeleteView.as_view(), name='card-delete'),
    path('card/search', CardSearchUser.as_view(), name='card-search'),
]
