<?php

namespace App\Http\Controllers\LightApp\Batiment;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Resac\Auth2;

class BatimentController extends Controller
{
    function __invoke(){

      $user = Auth2::user();

      $title2 = "Batiment";

      return view('lightapp.batiment.batiment',[
        'title2' => $title2,
        'user' => $user,
      ]);
    }
}
