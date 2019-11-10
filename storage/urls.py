from django.urls import path
from .views import StorageListView, StorageDetailView, StorageCreateView, StorageUpdateView, StorageDeleteView
from . import views 

urlpatterns = [
    path('storage/<int:pk>/', StorageDetailView.as_view(), name='storage-detail'),
    path('storage/new/', StorageCreateView.as_view(), name='storage-create'),
    path('storage/<int:pk>/update/', StorageUpdateView.as_view(), name='storage-update'),
    path('storage/<int:pk>/delete/', StorageDeleteView.as_view(), name='storage-delete'),
]
