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
        Schema::create('payment_requests', function (Blueprint $table) {
            $table->id();

            $table->integer('apppartment_id')->nullable();
            $table->integer('consumer_id')->nullable();
            $table->integer('order_id')->nullable();
            // $table->integer('payment_id')->nullable();
            $table->integer('amount')->nullable();
            $table->integer('currency')->nullable();
            // $table->mediumText('entity')->nullable();
            // $table->mediumText('method')->nullable();
            $table->integer('payment_status')->nullable()->default(0);   

            $table->timestamps();
            # major changes
            
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('payment_requests');
    }
};
