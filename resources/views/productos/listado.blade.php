@extends('layouts.app')

@section('content')
    <table id="tabla" class="table table-bordered">
        <thead><tr><th>Código</th><th>Producto</th><th>Precio Unidad</th><th>Unidades</th></tr></thead>
        <tbody>
            @foreach($productos as $p)
                <tr><td>{{$p->id}}</td><td>{{$p->producto}}</td><td>{{$p->precio_unidad}}</td><td>{{$p->unidades_existencia}}</td></tr>
            @endforeach
        </tbody>
    </table>


    <script>
        $(document).ready(function() {
            $('#tabla').DataTable();
        } );
    </script>
@endsection