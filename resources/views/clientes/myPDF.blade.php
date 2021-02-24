@extends("layouts.app")

@section("content")
    <h1>Codigo: {{$cliente->codigo}}</h1>
    <h1>Contacto: {{$cliente->contacto}}</h1>
    <h1>Direcciรณn: {{$cliente->direccion}}</h1>
    <h1>Empresa: {{$cliente->empresa}}</h1>
@endsection