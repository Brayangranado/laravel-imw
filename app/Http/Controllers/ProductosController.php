<?php

namespace App\Http\Controllers;
use App\Models\Producto;
use Illuminate\Http\Request;

class ProductosController extends Controller
{

    public function __construct(){
        $this->middleware('auth');
    }


    public function listado(){

        $productos=Producto::all();

        return view("productos.listado",compact("productos"));
    }
}
