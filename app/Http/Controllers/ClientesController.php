<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Cliente;

class ClientesController extends Controller
{

    public function __construct(){

    }
    
    
    
    public function index()
    {
        $clientes=Cliente::all();

        return view("clientes.index",compact("clientes"));
    }

    public function create()
    {
         return view("clientes.create");
    }

    public function store(Request $request)
    {
        $validated = $request->validate([
            'codigo' => 'required|max:4',
            'empresa' => 'required',
            'contacto' => 'required|min: 5|max:50',
            'direccion' => 'required',
        ]);


        Cliente::create($request->all());

        return redirect()->route("Cliente.index");
    }


    public function show($id)
    {
        echo "mostrar cliente";
    }


    public function edit($id)
    {
        echo "Formulario para editar";
    }

    public function update(Request $request, $id)
    {
        echo "guardar lo editado";
    }


    public function destroy($id)
    {
          //Cliente::find($id)->delete();
          echo "borrar";
    }
}
