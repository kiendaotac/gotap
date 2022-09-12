<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class GenerateqrcodeCreateGenerateqrcodeTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('generateqrcodes', function (Blueprint $table) {
            $table->id();
            $table->string('name', 255);
            $table->unsignedInteger('qty')->default(1);
            $table->text('link')->nullable()->default(null);
            $table->string('status', 60)->default('published');
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
        Schema::dropIfExists('generateqrcodes');
    }
}
