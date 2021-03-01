<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Empleado;
use App;
use Session;

class EmpleadosController extends Controller
{
    public function __construct(){
        $this->middleware('auth');
    }

    public function index(){

        $empleados=Empleado::all();

        return view("empleados.index",compact("empleados"));
    }
}
