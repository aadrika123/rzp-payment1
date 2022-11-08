<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('payment_successes', function (Blueprint $table) {
            $table->id();
            $table->mediumText('razerpay_order_id')->nullable();
            $table->mediumText('razerpay_payment_id')->nullable();
            $table->mediumText('razerpay_signature')->nullable();
            // $table->integer('payment_id')->nullable();
            // $table->integer('amount')->nullable();
            // $table->integer('currency')->nullable();
            // $table->mediumText('entity')->nullable();
            // $table->mediumText('method')->nullable();
            // $table->integer('payment_status')->nullable()->default(0);  
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
        Schema::dropIfExists('payment_successes');
    }
};
