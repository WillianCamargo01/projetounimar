# meuapp/urls.py

from django.urls import path
from . import views
from django.contrib.auth.views import LogoutView

urlpatterns = [
    # Produtos
    path('produto/', views.create_update_produto, name='create_update_produto'),
    path('produto/<int:id>/', views.create_update_produto, name='update_produto'),
    path('produto/delete/<int:id>/', views.delete_produto, name='delete_produto'),
    path('produto/list/', views.produto_list, name='produto_list'),
    
    # Dashboard
    path('dashboard/', views.dashboard, name='dashboard'),
    path('logout/', LogoutView.as_view(next_page='login'), name='logout'),
    
    # Clientes
    path('cliente/', views.create_update_cliente, name='create_update_cliente'),
    path('cliente/<int:id>/', views.create_update_cliente, name='create_update_cliente'),
    path('cliente/delete/<int:id>/', views.delete_cliente, name='delete_cliente'),
    path('cliente/list/', views.cliente_list, name='cliente_list'),
]
