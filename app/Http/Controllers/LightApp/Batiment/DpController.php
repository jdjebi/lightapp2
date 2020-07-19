<?php

namespace App\Http\Controllers\LightApp\Batiment;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Resac\Auth2;

class DpController extends Controller
{
    function  index(){
    $user = Auth2::user();

      $title2 = "DP";

      return view('lightapp.batiment.dp',[
        'title2' => $title2,
        'user' => $user,
      ]);
  	}  	
}
