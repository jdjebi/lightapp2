<?php

namespace App\Models\LightApp;

use Illuminate\Database\Eloquent\Model;

class Appareil extends Model
{
    protected $table = "Appareil";

    public function conso_total(){
    	return $this->conso * $this->quantite;
    }

    public function conso_data(){
    	return "[". $this->conso_set ."]";
    }



}
