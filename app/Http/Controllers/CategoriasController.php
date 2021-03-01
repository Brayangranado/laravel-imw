<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Categoria;
use App;
use Session;

class CategoriasController extends Controller
{
    public function __construct(){
        $this->middleware('auth');
    }

    public function index(){

        $categorias=Categoria::all();

        return view("categorias.index",compact("categorias"));
    }
}
