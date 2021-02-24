<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ProductosController;
use App\Http\Controllers\ClientesController;
use App\Http\Controllers\ProveedoresController;
use App\Http\Controllers\PDFController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');

Route::resource('Cliente', ClientesController::class);
Route::resource('Producto', ProductosController::class);
Route::resource('Proveedor', ProveedoresController::class);

Route::get('generate-pdf', [PDFController::class, 'generatePDF']);

Route::get("/idioma/{pais?}",function ($pais="es"){
    Session::put('locale', $pais);
    return redirect()->back();
});
