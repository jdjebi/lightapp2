<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateAppareils extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('appareil', function (Blueprint $table) {
            $table->id();
            $table->string('nom',255);
            $table->boolean('etat')->default(true);
            $table->timestamps();
            $table->string('val_c',255);
            $table->text('qrcode',255);
            $table->dateTime('date_installation', 0);
            $table->integer('problemes');
            $table->string('icone',255);
            $table->integer('frequence_de_suivie');
            $table->integer('dernier_suivie')->default(0);
            $table->boolean('control')->default(false);
            $table->foreignId('batiment_id');
            $table->foreignId('salle_id');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('appareil');
    }
}
