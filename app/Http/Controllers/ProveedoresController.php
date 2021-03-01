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

        $proveedores=Proveedor::withCount(['productos'])->paginate(15);
         
        return view("proveedores.index",compact("proveedores"));
    }
}
