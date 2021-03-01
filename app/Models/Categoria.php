<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Categoria extends Model
{
    use HasFactory;
    
    protected $guarded=[];
    protected $table='categorias';
    protected $hidden = ['created_at','updated_at'];
    public $timestamps=false;
    
    public function proveedor()
    {
        return $this->hasMany(Proveedor::class);
    }
}
