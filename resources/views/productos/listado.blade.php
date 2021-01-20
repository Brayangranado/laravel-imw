@extends('layouts.app')

@section('content')
    <table class="table table-bordered">
        <tr><th>Código</th><th>Producto</th><th>Precio Unidad</th></tr>
        @foreach($productos as $p)
            <tr><td>{{$p->id}}</td><td>{{$p->producto}}</td><td>{{$p->precio_unidad}}</td></tr>
        @endforeach
    </table>
    {!! $productos->links() !!}

@endsection