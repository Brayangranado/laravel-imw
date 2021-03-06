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
<a id="listado" href='{{url("/Proveedor/create")}}' class="btn btn-primary">@lang('textos.añadir proveedor')</a>
<table id="table_id" class="table table-bordered table-striped">
    <thead>
        <tr>
            <th>@lang('textos.empresa')</th>
            <th>@lang('textos.contacto')</th>
            <th>@lang('textos.cargo contacto')</th>
            <th>@lang('textos.n_productos')</th>
            <th></th>
        </tr>
    </thead>
    
    <tbody>
        @foreach($proveedores as $p)
        <tr>
            <td><button type="button" class="btn btn-secondary"><a id='enlace' href='{{url("/Proveedor")}}/{{$p->id}}'>{{$p->empresa}}</a></button></td>
            <td>{{$p->contacto}}</td>
            <td>{{$p->cargo_contacto}}</td>
            <td>{{$p->productos_count}}</td>
            <td>
                <a href="{{url('/Producto')}}/{{$p->id}}/edit"
                    ><i style="color: green; font-size: 20px;" class="fas fa-edit fa-large"></i
                ></a>
            </td>
        </tr>
        @endforeach
    </tbody>
</table>

<script>
$(document).ready( function () {
    $('table_id').DataTable();
} );
</script>

@endsection