@extends("layouts.app")

@section("content")
    <h1>Código: {{$cliente->codigo}}</h1>
    <h1>Contacto: {{$cliente->contacto}}</h1>
    <h1>Dirección: {{$cliente->direccion}}</h1>
    <h1>Empresa: {{$cliente->empresa}}</h1>

    <a href="{{url('/Cliente')}}" class="btn btn-primary">Listado</a>

@endsection