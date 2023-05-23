from django.urls import path
from . import views

app_name = 'meuapp'

urlpatterns = [
    path('produto/', views.produto_list, name='produto_list'),
    path('produto/create/', views.produto_create, name='produto_create'),
    path('produto/update/<int:id>/', views.produto_update, name='produto_update'),
    path('produto/delete/<int:id>/', views.produto_delete, name='produto_delete'),
]

