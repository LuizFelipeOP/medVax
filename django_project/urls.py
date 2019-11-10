"""django_project URL Configuration

The `urlpatterns` list routes URLs to views. For more information please see:
    https://docs.djangoproject.com/en/2.2/topics/http/urls/
Examples:
Function views
    1. Add an import:  from my_app import views
    2. Add a URL to urlpatterns:  path('', views.home, name='home')
Class-based views
    1. Add an import:  from other_app.views import Home
    2. Add a URL to urlpatterns:  path('', Home.as_view(), name='home')
Including another URLconf
    1. Import the include() function: from django.urls import include, path
    2. Add a URL to urlpatterns:  path('blog/', include('blog.urls'))
"""
from django.contrib import admin
from django.contrib.auth import views as auth_views
from django.urls import path, include
from django.conf import settings
from django.conf.urls.static import static
from users import views as user_views
from vax.views import VaxListView, VaxDetailView, VaxCreateView, VaxUpdateView, VaxDeleteView
from station.views import StationListView, StationDetailView, StationCreateView, StationUpdateView, StationDeleteView
from storage.views import StorageListView, StorageDetailView, StorageCreateView, StorageUpdateView, StorageDeleteView
from card.views import CardListView, CardDetailView, CardCreateView, CardUpdateView, CardDeleteView, search, show, graph, graphSearch


urlpatterns = [
    path('admin/', admin.site.urls),
    path('register/', user_views.register, name='register'),
    path('profile/', user_views.profile, name='profile'),
    path('login/', auth_views.LoginView.as_view(template_name='users/login.html'), name='login'),
    path('logout/', auth_views.LogoutView.as_view(template_name='users/logout.html'), name='logout'),
    path('', include('blog.urls')),


    path('vax/', VaxListView.as_view(), name='vax-list'),
    path('vax/<int:pk>/', VaxDetailView.as_view(), name='vax-detail'),
    path('vax/new/', VaxCreateView.as_view(), name='vax-create'),
    path('vax/<int:pk>/update/', VaxUpdateView.as_view(), name='vax-update'),
    path('vax/<int:pk>/delete/', VaxDeleteView.as_view(), name='vax-delete'),

    path('station/', StationListView.as_view(), name='station-list'),
    path('station/<int:pk>/', StationDetailView.as_view(), name='station-detail'),
    path('station/new/', StationCreateView.as_view(), name='station-create'),
    path('station/<int:pk>/update/', StationUpdateView.as_view(), name='station-update'),
    path('station/<int:pk>/delete/', StationDeleteView.as_view(), name='station-delete'),

    path('storage/', StorageListView.as_view(), name='storage-list'),
    path('storage/<int:pk>/', StorageDetailView.as_view(), name='storage-detail'),
    path('storage/new/', StorageCreateView.as_view(), name='storage-create'),
    path('storage/<int:pk>/update/', StorageUpdateView.as_view(), name='storage-update'),
    path('storage/<int:pk>/delete/', StorageDeleteView.as_view(), name='storage-delete'),

    path('card/', show, name='card-list'),
    path('card/<int:pk>/', CardDetailView.as_view(), name='card-detail'),
    path('card/new/', CardCreateView.as_view(), name='card-create'),
    path('card/<int:pk>/update/', CardUpdateView.as_view(), name='card-update'),
    path('card/<int:pk>/delete/', CardDeleteView.as_view(), name='card-delete'),
    path('card/search/', search, name='card-search'),
    path('card/graph_search/', graphSearch, name='card-graph-search'),
    path('card/graph/', graph, name='card-graph'),
]

if settings.DEBUG:
    urlpatterns  += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
