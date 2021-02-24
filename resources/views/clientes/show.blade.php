@extends("layouts.app")

@section("content")
    <h1>Cรณdigo: {{$cliente->codigo}}</h1>
    <h1>Contacto: {{$cliente->contacto}}</h1>
    <h1>Direcciรณn: {{$cliente->direccion}}</h1>
    <h1>Empresa: {{$cliente->empresa}}</h1>

    <a href="{{url('/Cliente')}}" class="btn btn-primary">@lang("textos.listado")</a>

@endsection