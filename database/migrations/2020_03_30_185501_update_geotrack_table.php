<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class UpdateGeotrackTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::dropIfExists('geotrack');
        
        Schema::create('geotrack', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('addr', 40);
            $table->string('continent', 30)->nullable();
            $table->string('country', 40)->nullable();
            $table->string('org', 50)->nullable();
            $table->string('isp', 50)->nullable();
            $table->string('lang', 40)->nullable();
            $table->string('currency', 30)->nullable();
            $table->string('timezone', 50)->nullable();
            $table->integer('last_login');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        //
    }
}
