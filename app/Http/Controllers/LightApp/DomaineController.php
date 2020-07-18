<?php

namespace App\Http\Controllers\LightApp;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\LightApp\Domaine;
use Resac\Auth2;

class DomaineController extends Controller
{
  public function index(Request $request){

    $user = Auth2::user();

    $title2 = "Tableau de board";

    return view('lightapp.domaine.dashboard',[
      'title2' => $title2,
      'user' => $user,
    ]);

  }
}
