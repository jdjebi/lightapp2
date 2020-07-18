<?php

namespace App\Http\Controllers\LightApp\Batiment;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Resac\Auth2;


class CuisineController extends Controller
{
  function index(){

    $user = Auth2::user();

    $title2 = "Cuisine";

    return view('lightapp.batiment.restaurant.cuisine',[
      'title2' => $title2,
      'user' => $user,
    ]);
  }
}
