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
        Schema::create('webhook_payment_data', function (Blueprint $table) {
            $table->id();
            $table->mediumText('entity')->nullable();    
           $table->mediumText('account_id')->nullable(); 
           $table->mediumText('event')->nullable(); 
           $table->mediumText('contains')->nullable(); 
           $table->mediumText('payment_id')->nullable(); 
           $table->mediumText('payment_entity')->nullable(); 
           $table->integer('payment_amount')->nullable(); 
           $table->mediumText('payment_currency')->nullable(); 
           $table->mediumText('payment_status')->nullable(); 
           $table->mediumText('payment_order_id')->nullable(); 
           $table->mediumText('payment_invoice_id')->nullable(); 
           $table->mediumText('payment_international')->nullable(); 
           $table->mediumText('payment_method')->nullable(); 
           $table->integer('payment_amount_refunded')->nullable(); 
           $table->mediumText('payment_refund_status')->nullable(); 
           $table->mediumText('payment_captured')->nullable(); 
           $table->mediumText('payment_description')->nullable(); 
           $table->mediumText('payment_card_id')->nullable(); 
           $table->mediumText('payment_bank')->nullable(); 
           $table->mediumText('payment_wallet')->nullable(); 
           $table->mediumText('payment_vpa')->nullable(); 
           $table->mediumText('payment_email')->nullable(); 
           $table->integer('payment_contact')->nullable(); 
           $table->mediumText('payment_notes')->nullable(); //<----------array
           $table->mediumText('payment_fee')->nullable(); 
           $table->mediumText('payment_tax')->nullable(); 
           $table->mediumText('payment_error_code')->nullable(); 
           $table->mediumText('payment_error_description')->nullable(); 
           $table->mediumText('payment_error_source')->nullable(); 
           $table->mediumText('payment_error_step')->nullable(); 
           $table->mediumText('payment_error_reason')->nullable(); 
           $table->mediumText('payment_acquirer_data_type')->nullable(); 
           $table->mediumText('payment_acquirer_data_value')->nullable();
           $table->mediumText('payment_created_at')->nullable(); 
           $table->mediumText('webhook_created_at')->nullable(); 
            
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
        Schema::dropIfExists('webhook_payment_data');
    }
};
