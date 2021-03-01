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
<a id="listado" href='{{url("/Producto/create")}}' class="btn btn-primary">@lang('textos.añadir empleado')</a>
<table class="table table-bordered table-striped">
    <thead>
        <tr>
            <th>@lang('textos.codigo')</th>
            <th>@lang('textos.nombre')</th>
            <th>@lang('textos.apellidos')</th>
            <th>@lang('textos.fecha nacimiento')</th>
            <th>@lang('textos.fecha contratacion')</th>
            <th></th>
        </tr>
    </thead>
    
    <tbody>
        @foreach($empleados as $e)
        <tr>
            <td>{{$e->id}}</td>
            <td>{{$e->nombre}}</td>
            <td>{{$e->apellidos}}</td>
            <td>{{$e->fecha_nacimiento}}</td>
            <td>{{$e->fecha_contratacion}}</td>
            <td>
                <a href="{{url('/Empleado')}}/{{$e->id}}/edit"
                    ><i style="color: green; font-size: 20px;" class="fas fa-edit fa-large"></i
                ></a>
            </td>
        </tr>
        @endforeach
    </tbody>
</table>

@endsection