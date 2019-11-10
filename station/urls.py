from django.urls import path
from .views import StationListView, StationDetailView, StationCreateView, StationUpdateView, StationDeleteView
from . import views 

urlpatterns = [
    path('station/<int:pk>/', StationDetailView.as_view(), name='station-detail'),
    path('station/new/', StationCreateView.as_view(), name='station-create'),
    path('station/<int:pk>/update/', StationUpdateView.as_view(), name='station-update'),
    path('station/<int:pk>/delete/', StationDeleteView.as_view(), name='station-delete'),
]
