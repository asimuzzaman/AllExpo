<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateOtherProductsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('other_products', function (Blueprint $table) {
            $table->increments('id');
            $table->string('name',30);
            $table->string('origin',40)->nullable();
            $table->string('viewId',20);
            $table->string('condition',30);
            $table->double('price',6,2)->nullable();
            $table->string('image',70)->nullable();
            $table->text('description')->nullable();
            $table->boolean('in_stock');
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
        Schema::dropIfExists('other_products');
    }
}
