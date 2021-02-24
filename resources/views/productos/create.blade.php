<link href="https://unpkg.com/tailwindcss@^2/dist/tailwind.min.css" rel="stylesheet">
@extends("layouts.app")
@php
    App::setLocale(Session::get('locale'));
@endphp
@section('content')
    <div class="bg-green-100 p-4 border-2 border-red-500 rounded-3xl">
        <form action="{{url('/Producto')}}{{isset($Producto)?"/".$Producto->id:''}}" method="post">
            <div class="form-group">
                <label for="codigo">@lang("textos.codigo")</label>
                <input type="text" class="form-control" id="id" name="id"
                    value="{{ isset($Producto)? $Producto->id: old("id") }}">

                </div>
            <div class="form-group">
                <label for="exampleInputPassword1">@lang("textos.producto")</label>
                <input type="text" class="form-control" id="producto" name="producto"
                value="{{ isset($Producto)? $Producto->producto: old("producto") }}">
            </div>
            <div class="form-group">
                <label for="exampleInputPassword1">@lang("textos.precio unidad")</label>
                <input type="text" class="form-control" id="precio_unidad" name="precio_unidad"
                value="{{ isset($Producto)? $Producto->precio_unidad: old("precio_unidad") }}">
            </div>
            <div class="form-group">
                <label for="exampleInputPassword1">@lang("textos.unidades")</label>
                <input type="text" class="form-control" id="unidades_existencia" name="unidades_existencia"
                value="{{ isset($Producto)? $Producto->unidades_existencia: old("unidades_existencia") }}">
            </div>
            <button type="submit" class="btn btn-primary">{{ isset($Producto)?"Actualizar":"Guardar"}}</button>
            <a href="{{url('/Producto')}}" class="btn btn-primary">Volver</a>
            @csrf
            @if (isset($Producto))
                @method("put")
            @endif

        </form>
    </div>
@endsection
