<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateRicesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('rices', function (Blueprint $table) {
            $table->increments('id');
            $table->string('name',30);
            $table->text('description')->nullable();
            $table->double('price',6,2)->nullable();
            $table->boolean('in_stock');
            $table->string('min_order',40)->nullable();
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
        Schema::dropIfExists('rices');
    }
}
