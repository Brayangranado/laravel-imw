<link href="https://unpkg.com/tailwindcss@^2/dist/tailwind.min.css" rel="stylesheet">
@extends("layouts.app")
@php
    App::setLocale(Session::get('locale'));
@endphp
@section('content')
    <div class="bg-green-100 p-4 border-2 border-red-500 rounded-3xl">
        <form action="{{url('/Cliente')}}{{isset($Cliente)?"/".$Cliente->id:''}}" method="post">
            <div class="form-group">
                <label for="codigo">Código</label>
                <input type="text" class="form-control" id="codigo" name="codigo"
                    value="{{ isset($Cliente)? $Cliente->codigo: old("codigo") }}">

                </div>
            <div class="form-group">
                <label for="exampleInputPassword1">Empresa</label>
                <input type="text" class="form-control" id="empresa" name="empresa"
                value="{{ isset($Cliente)? $Cliente->empresa: old("empresa") }}">
            </div>
            <div class="form-group">
                <label for="exampleInputPassword1">@lang('textos.contacto')</label>
                <input type="text" class="form-control" id="contacto" name="contacto"
                value="{{ isset($Cliente)? $Cliente->contacto: old("contacto") }}">
            </div>
            <div class="form-group">
                <label for="exampleInputPassword1">@lang('textos.direccion')</label>
                <input type="text" class="form-control" id="direccion" name="direccion"
                value="{{ isset($Cliente)? $Cliente->direccion: old("direccion") }}">
            </div>
            <button type="submit" class="btn btn-primary">{{ isset($Cliente)?"Actualizar":"Guardar"}}</button>
            <a href="{{url('/Cliente')}}" class="btn btn-primary">Volver</a>
            @csrf
            @if (isset($Cliente))
                @method("put")
            @endif

        </form>
    </div>
@endsection
