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
        Schema::create('orders', function (Blueprint $table) {
            $table->id();
            $table->foreignId('user_id')->nullable();
            $table->string('f_name')->nullable();
            $table->string('l_name')->nullable();
            $table->string('company_name')->nullable();
            $table->string('city')->nullable();
            $table->string('address')->nullable();
            $table->string('street')->nullable();
            $table->string('town')->nullable();
            $table->string('country')->nullable();
            $table->string('code')->nullable();
            $table->string('post_code')->nullable();
            $table->string('phone')->nullable();
            $table->string('email');
            $table->string('status', 15)->default('Pending');
            $table->string('note', 1000)->nullable();
            $table->double('total_price', 8,2)->nullable();
            $table->double('applied_coupon', 8,2)->nullable()->default(0);
            $table->boolean('agree')->nullable()->comment('0=not agreed, 1=agreed')->default(0);
            $table->integer('payment_method')->nullable()->comment('1=stripe, 2=paypal, 3=payoneer');
            $table->softDeletes();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('orders');
    }
};
