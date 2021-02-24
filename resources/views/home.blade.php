@extends('layouts.app') @section('content')
<link
    rel="stylesheet"
    href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"
/>
<div class="container">
    <style>
        html,
        body {
            height: 100%;
        }

        body {
            background: #112 url(//images.weserv.nl/?url=i.imgur.com/6QJjYMe.jpg) center no-repeat;
            background-size: cover;
            margin: 0;
        }

        .card {
            background-color: transparent;
        }

        .social {
            /*las imágenes usadas tienen width de 48px*/
            width: 60px;
            position: fixed;
            top: 50px;
            right: 0;
        }

        /* Extra centrado vertical*/

        .social {
            /*border:1px solid #000;*/
            top: 50%;
            height: 50px;
            /*para poner height 192 deberíamos haber indicado en el reset de estilos font-size:0;*/
            margin-top: -100px;
        }

        .fa {
            padding: 20px;
            font-size: 30px;
            width: 60px;
            text-align: center;
            text-decoration: none;
            background: transparent;
        }

        /* Add a hover effect if you want */
        .fa:hover {
            opacity: 0.7;
        }

        /* Set a specific color for each brand */

        /* Facebook */
        .fa-facebook {
            background: #3b5998;
            color: white;
        }

        /* Twitter */
        .fa-twitter {
            background: #55acee;
            color: white;
        }

        .fa-youtube {
            background: #bb0000;
            color: white;
            text-align: center;
        }

        .fa-instagram {
            background: #125688;
            color: white;
        }
    </style>
    <div class="social">
        <a href="https://www.facebook.com/" target="_blank" class="fa fa-facebook"></a>
        <a href="https://twitter.com/" target="_blank" class="fa fa-twitter"></a>
        <a href="https://www.youtube.com/" target="_blank" class="fa fa-youtube"></a>
        <a href="https://www.instagram.com/" target="_blank" class="fa fa-instagram"></a>
    </div>
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <nav>
                    <a href="{{url('/Cliente')}}" class="btn btn-primary">@lang("textos.cliente")</a>
                    <a href="{{url('/Producto')}}" class="btn btn-primary">@lang("textos.producto")</a>
                    <a href="{{url('/Proveedor')}}" class="btn btn-primary">@lang("proveedor")</a>
                </nav>

                <div class="card-body">
                    @if (session('status'))
                    <div class="alert alert-success" role="alert">
                        {{ session('status') }}
                    </div>
                    @endif {{ __('You are logged in!') }}
                </div>
            </div>
        </div>
    </div>
</div>
@endsection