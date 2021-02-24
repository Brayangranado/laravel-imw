<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Proveedor;
use App;
use Session;

class ProveedoresController extends Controller
{
    public function __construct(){
        $this->middleware('auth');
    }

    public function index(){

        $proveedores=Proveedor::all();

        return view("proveedores.index",compact("proveedores"));
    }
}
