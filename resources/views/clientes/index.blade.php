@extends("layouts.app")

@section("content")
    <table class="table table-bordered table-striped">
        <tr><th>Código</th><th>Empresa</th><th>Contacto</th><th>Dirección</th></tr>
        @foreach($clientes as $c)
            <tr><td>{{$c->codigo}}</td><td>{{$c->empresa}}</td><td>{{$c->contacto}}</td><td>{{$c->direccion}}</td></tr>
        @endforeach
    </table>

@endsection