@extends('layouts.app')

<style>
      body {
  background: url(https://raw.githubusercontent.com/ManzDev/cursos-assets/gh-pages/html5/488fd18.jpg);
    }
    #enlace {
        color: red;
    }
    
    table {
        background-color: silver;
    }
    
    #listado {
        margin-top: 20px;
        margin: 10px;
    }

    .borrar:hover {
        cursor: pointer;
    }
</style>
@php App::setLocale(Session::get('locale')); @endphp @section('content')
<a id="listado" href='{{url("/home")}}' class="btn btn-primary">@lang('textos.home')</a>
<a id="listado" href='{{url("/Producto/create")}}' class="btn btn-primary">@lang('textos.añadir categoria')</a>
<table class="table table-bordered table-striped">
    <thead>
        <tr>
            <th>@lang('textos.codigo')</th>
            <th>@lang('textos.categoria')</th>
            <th>@lang('textos.descripcion')</th>
            <th></th>
        </tr>
    </thead>
        @foreach($categorias as $c)
        <tr>
            <td>{{$c->id}}</td>
            <td>{{$c->categoria}}</td>
            <td>{{$c->descripcion}}</td>
            <td>
                <a href="{{url('/Categoria')}}/{{$c->id}}/edit"
                    ><i style="color: green; font-size: 20px;" class="fas fa-edit fa-large"></i
                ></a>
            </td>
        </tr>
        @endforeach
</table>

@endsection