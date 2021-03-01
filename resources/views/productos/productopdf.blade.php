@extends("layouts.app")

@section("content")
    <table class="table table-bordered table-striped">
    <thead>
        <tr>
            <th>@lang('textos.codigo')</th>
            <th>@lang('textos.producto')</th>
            <th>@lang('textos.precio unidad')</th>
            <th>@lang('textos.unidades')</th>
        </tr>
    </thead>
        @foreach($productos as $p)
        <tr>
            <td>{{$p->id}}</td>
            <td>{{$p->producto}}</td>
            <td>{{$p->precio_unidad}}</td>
            <td>{{$p->unidades_existencia}}</td>
        </tr>
        @endforeach
</table>
@endsection