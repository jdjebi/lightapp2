<?php

namespace App\Http\Controllers\LightApp\Batiment;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Resac\Auth2;

class BatimentDController extends Controller
{
    function  index(){
    $user = Auth2::user();

      $title2 = "Batiment D";

      return view('lightapp.batiment.bati_d.bat_d',[
        'title2' => $title2,
        'user' => $user,
      ]);
  	}  
}
