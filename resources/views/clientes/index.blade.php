@extends("layouts.app")

<style>
    #listado {
        margin: 10px;
    }

    .borrar:hover {
        cursor: pointer;
    }

</style>
@php
    App::setLocale(Session::get('locale'));
@endphp

@section("content")
    <a id="listado" href='{{url("/Cliente/create")}}' class="btn btn-primary">@lang('textos.add_cliente')</a>
    <table class="table table-bordered table-striped">
        <tr><th>@lang("textos.codigo")</th><th>@lang("textos.empresa")</th><th>@lang("textos.contacto")</th><th>@lang("textos.direccion")</th><th>Nº Pedidos</th><th></th><th></th></tr>
        @foreach($clientes as $c)
            <tr><td>{{$c->codigo}}</td>
                <td><a href='{{url("/Cliente")}}/{{$c->id}}'>{{$c->empresa}}</a></td>
                <td>{{$c->contacto}}</td><td>{{$c->direccion}}</td>
                <td>{{$c->pedidos_count}}</td>
                <td><a href="{{url('/Cliente')}}/{{$c->id}}/edit"><i  style = "color:green; font-size: 20px;" class="fas fa-edit  fa-large "></i></a></td>
                <td>
                    <form action="/Cliente/{{$c->id}}" method="POST">
                        <i  style = "color:red; font-size: 20px;" class="fas fa-trash borrar"></i>
                        @method("delete")
                        @csrf
                    </form>
                    </td>
            </tr>
        @endforeach
    </table>
    {{ $clientes->links() }}


<script>
    $(document).ready(function(){
        $(".borrar").click(function(){
            $(this).closest("form").submit();
        })
    });
</script>



@endsection
