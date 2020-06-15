<?php

use Illuminate\Support\Facades\Schema;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

class CreateMangosTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('mangos', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('name',30);
            $table->text('description')->nullable();
            $table->string('origin',40)->nullable();
            $table->string('color',25)->nullable();
            $table->integer('avg_weight')->nullable();
            $table->decimal('priority',1,0);
            $table->string('cultivation_type',30)->nullable();
            $table->string('variety',30)->nullable();
            $table->string('grade',15)->nullable();
            $table->string('size',25)->nullable();
            $table->string('style',25)->nullable();
            $table->string('type',30)->nullable();
            $table->string('min_order',40)->nullable();
            $table->string('ripening',50)->nullable();
            $table->double('price',6,2)->nullable();
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
        Schema::dropIfExists('mangos');
    }
}
