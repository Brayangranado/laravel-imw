<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Producto;
use App;
use Session;

class ProductosController extends Controller
{

    public function __construct(){
        $this->middleware('auth');
    }

    public function index(){

        $productos=Producto::all();

        return view("productos.index",compact("productos"));
    }

     public function create()
    {
         return view("productos.create");
    }
    
    public function store(Request $request)
    {
        $validated = $request->validate([
            'id' => 'required|max:4',
            'producto' => 'required',
            'precio_unidad' => 'required|min: 5|max:50',
            'unidades_existencia' => 'required',
        ]);
        
        Producto::create($request->all());

        return redirect()->route('Producto.index')->with('mensaje',__('textos.added_producto'));;
    }
    
    public function show($id)
    {
        $producto=Producto::find($id);
        
        return view("productos.show",compact("producto"));
        
    }
    
    public function edit(Producto $Producto)
    {
        return view("productos.create",compact("Producto"));
    }
    
    public function update(Request $request, $id)
    {
        
    Producto::find($id)->update($request->all());
    return redirect()->route('Producto.index')->with('mensaje',__('textos.updated_producto'));;

    }
    
    public function destroy($id)
    {
      
      Producto::find($id)->delete();
      return redirect()->route('Producto.index')->with('mensaje',__('textos.deleted_producto'));;
    }
    
}
