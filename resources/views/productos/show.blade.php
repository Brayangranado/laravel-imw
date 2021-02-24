@extends("layouts.app")

@section("content")
    <h1>Codigo: {{$producto->id}}</h1>
    <h1>Producto: {{$producto->producto}}</h1>
    <h1>Precio Unidad: {{$producto->precio_unidad}}</h1>
    <h1>Unidades: {{$producto->unidades_existencia}}</h1>

    <a href="{{url('/listado')}}" class="btn btn-primary">@lang("textos.listado")</a>

@endsection