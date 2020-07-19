<?php

use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Auth;
use Illuminate\Http\Request;

use Illuminate\Support\Facades\Hash;
use App\Models\SearchUserIndex;
use Resac\Auth2;



Route::middleware("guest")->group(function(){

  Route::get('/',function(Request $request){
    return redirect()->route('guest-login');
  });

  Route::get('/connexion',function(Request $request){

    $title2 = "Connexion";
    $redirect_url = $request->has('redirect') ? $request->redirect : "";
    $default_redirect_url = route('lightapp.hub');


    return view('lightapp.index',[
      "redirect_url" => $redirect_url,
      "title2" => $title2,
      "default_redirect_url" => $default_redirect_url,

    ]);

  })->name('login');

  Route::get('/batiment',function(){

    return view('lightapp.batiment');

  });


  Route::get('/v2','IndexController@index2')->name('home');

  # Route::get('/connexion','AuthController@login')->name('login');

  Route::match(['get', 'post'],'/inscription','AuthController@register')->name('register');

  Route::namespace("Resac\Auth")->group(function () {
    Route::get('reinitialiser/mot-de-passe','ForgotPasswordController')->name('app.reset.email');
    Route::post('reinitialiser/mot-de-passe','ValidatePasswordRequest');

    Route::get('password/reset/{token}','ResetPasswordController@get')->name('password.reset');
    Route::post('password/reset','ResetPasswordController@post')->name('app.reinit.password');
  });

});


/* Application */

Route::middleware("auth")->group(function(){
  Route::get('/','LightApp\HubController@index')->name('lightapp.hub');
  Route::get('/app','LightApp\DomaineController@index')->name('lightapp.domaine');
  Route::get('/batiments','LightApp\Batiment\BatimentController')->name('lightapp.batiment');
  Route::get('/batiments/restaurant','LightApp\Batiment\CuisineController@index')->name('lightapp.batiment.cuisine');
  Route::get('/batiments/DP','LightApp\Batiment\DpController@index')->name('lightapp.batiment.dp');
  Route::get('/gestion/appareils','LightApp\Gestion\GestionController@index')->name('lightapp.gestion');
});

Route::get('user/deconnexion','AuthController@logout')->name('logout');



Route::prefix('api')->group(function () {
    Route::name('api.')->group(function () {

      Route::namespace('LightApp\Api')->group(function () {

          Route::post('domaine/create','DomaineApiController@create')->name('domaine.create');

      });

      Route::get('get/v1/users','AdminController@api_get_user_list')->name('api_get_user_list');

      Route::post('admin/login','AdminController@api_login')->name('admin_api_login');

    });
});

Route::get('tests/lumiere1',function(Request $request){

  return view('lightapp.tests.light1');

})->name('tests.light1');
