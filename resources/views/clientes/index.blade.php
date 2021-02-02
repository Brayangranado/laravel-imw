@extends("layouts.app")

<style>
    #listado {
        margin: 10px;
    }

    .borrar:hover {
        cursor: pointer;
    }

</style>


@section("content")
    <a id="listado" href='{{url("/Cliente/create")}}' class="btn btn-primary">Añadir cliente</a>
    <table class="table table-bordered table-striped">
        <tr><th>Código</th><th>Empresa</th><th>Contacto</th><th>Dirección</th><th>Nº Pedidos</th><th></th></tr>
        @foreach($clientes as $c)
            <tr><td>{{$c->codigo}}</td>
                <td><a href='{{url("/Cliente")}}/{{$c->id}}'>{{$c->empresa}}</a></td>
                <td>{{$c->contacto}}</td><td>{{$c->direccion}}</td>
                <td>{{$c->pedidos_count}}</td>
                <td>
                    <form action="/Cliente/{{$c->id}}" method="POST">
                        <i  style = "color:red; font-size: 20px;" class="fas fa-trash fa-large borrar"></i>
                        <input type='hidden' name='_method' value="DELETE">
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
