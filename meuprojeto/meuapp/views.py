# Produto
from django.shortcuts import render, redirect
from .models import Produto, Cliente
from .forms import ProdutoForm, ClienteForm
from django.contrib.auth.decorators import login_required
from django.shortcuts import render

@login_required
def create_update_produto(request, id=0):
    if request.method == "GET":
        if id == 0:
            form = ProdutoForm()
        else:
            produto = Produto.objects.get(pk=id)
            form = ProdutoForm(instance=produto)
        return render(request, 'meuapp/produto_form.html', {'form': form})
    else:
        if id == 0:
            form = ProdutoForm(request.POST)
        else:
            produto = Produto.objects.get(pk=id)
            form = ProdutoForm(request.POST,instance= produto)
        if form.is_valid():
            form.save()
        return redirect('/meuapp/produto/list')
    
@login_required
def delete_produto(request, id):
    produto = Produto.objects.get(pk=id)
    produto.delete()
    return redirect('/meuapp/produto/list')


@login_required
def produto_list(request):
    search_query = request.GET.get('search', '')
    if search_query:
        produtos = Produto.objects.filter(nome__icontains=search_query)
    else:
        produtos = Produto.objects.all()
    return render(request, "meuapp/produto_list.html", {'produtos': produtos})


# Dashboard
@login_required
def dashboard(request):
    return render(request, 'meuapp/dashboard.html')


# Cliente
@login_required
def create_update_cliente(request, id=0):
    if request.method == "GET":
        if id == 0:
            form = ClienteForm()
        else:
            cliente = Cliente.objects.get(pk=id)
            form = ClienteForm(instance=cliente)
        return render(request, 'meuapp/cliente_form.html', {'form': form})
    else:
        if id == 0:
            form = ClienteForm(request.POST)
        else:
            cliente = Cliente.objects.get(pk=id)
            form = ClienteForm(request.POST, instance=cliente)
        if form.is_valid():
            form.save()
        return redirect('/meuapp/cliente/list')

@login_required
def cliente_list(request):
    context = {'cliente_list': Cliente.objects.all()}
    return render(request, 'meuapp/cliente_list.html', context)

@login_required
def delete_cliente(request, id):
    cliente = Cliente.objects.get(pk=id)
    cliente.delete()
    return redirect('/meuapp/cliente/list')


