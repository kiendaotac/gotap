<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;

class AccountCreateAccountTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('accounts', function (Blueprint $table) {
            $table->id();
            $table->string('fullname', 255)->nullable();
            $table->string('username', 255)->unique()->nullable();
            $table->string('description', 255)->nullable();
            $table->string('avatar', 255)->default('avatars/default-avatar.png')->nullable();
            $table->string('address', 255)->nullable();
            $table->string('uuid', 50)->unique();
            $table->string('code', 10)->nullable();
            $table->integer('view')->default(0)->nullable();
            $table->integer('tap')->default(0)->nullable();
            $table->integer('click')->default(0)->nullable();
            $table->foreignId('member_id')->nullable()->constrained('members');
            $table->string('status', 60)->default('pending');
            $table->timestamps();
        });
        Schema::create('social_items', function (Blueprint $table){
           $table->id();
           $table->string('name');
           $table->string('description')->nullable();
           $table->string('social_value')->nullable();
            $table->string('social_app')->nullable();
           $table->integer('order')->default(0)->nullable();
           $table->foreignId('account_id')->constrained('accounts');
           $table->foreignId('social_id')->constrained('socials');
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
        Schema::dropIfExists('social_items');
        Schema::dropIfExists('accounts');
    }
}
