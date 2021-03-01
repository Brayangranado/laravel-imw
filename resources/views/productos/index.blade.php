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
<a id="listado" href='{{url("/Producto/create")}}' class="btn btn-primary">@lang('textos.añadir producto')</a>
<table class="table table-bordered table-striped">
    <thead>
        <tr>
            <th>@lang('textos.codigo')</th>
            <th>@lang('textos.producto')</th>
            <th>@lang('textos.precio unidad')</th>
            <th>@lang('textos.unidades')</th>
            <th></th>
            <th></th>
            <th></th>
            <th></th>
        </tr>
    </thead>
        @foreach($productos as $p)
        <tr>
            <td>{{$p->id}}</td>
            <td><button type="button" class="btn btn-secondary"><a id='enlace' href='{{url("/Producto")}}/{{$p->id}}'>{{$p->producto}}</a></button></td>
            <td>{{$p->precio_unidad}}</td>
            <td>{{$p->unidades_existencia}}</td>
            
            <td align="center">
                <a href="{{url('/Producto')}}/{{$p->id}}/edit"
                    ><i style="color: green; text-align: center; font-size: 20px;" class="fas fa-plus"></i></a>
            </td>
            <td align="center">
                <a href="{{url('/Producto')}}/{{$p->id}}/edit"
                    ><i style="color: red; content-align: center; font-size: 20px;" class="fas fa-minus"></i></a>
            </td>
            <td align="center">
                <a href="{{url('/Producto')}}/{{$p->id}}/edit"
                    ><i style="color: red; font-size: 20px;" class="fas fa-trash"></i></a>
            </td>
            <td align="center">
                <a href="{{ URL::to('/descargarpdf') }}" style="text-align: right;"><i style="color: green; font-size: 25px;" class="fas fa-file-pdf"></i></a>
            </td>
            
        </tr>
        @endforeach
</table>

@endsection