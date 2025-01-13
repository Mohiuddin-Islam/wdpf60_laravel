<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('students', function (Blueprint $table) {
            $table->id();
            $table->string('name');  //Text
            $table->date('dob');    //Date
            $table->string('address');  //textarea
            $table->enum('gender',['male','female']);  //Radio
            $table->string('district');   //Dropdown
            $table->string('languages'); //Checkbox
            $table->string('photo');  //File
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('students');
    }
};
