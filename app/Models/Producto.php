<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Producto extends Model
{
    use HasFactory;
    
    protected $guarded=[];
    public $timestamps=false;
    
    public function proveedores()
    {
        return $this->hasMany(Proveedor::class);
    }
    
    public function categorias()
    {
        return $this->hasMany(Categoria::class);
    }

}
