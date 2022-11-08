<?php

use App\Http\Controllers\PdfController;
use App\Http\Controllers\RazorpayPaymentController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
/*
|--------------------------------------------------------------------------
| API Routes
|--------------------------------------------------------------------------
|
| Here is where you can register API routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| is assigned the "api" middleware group. Enjoy building your API!
|
*/

Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
    return $request->user();
});
  
// Route::get('razorpay-payment', [RazorpayPaymentController::class, 'index']);
Route::post('razorpay-payment', [RazorpayPaymentController::class, 'store']);//->name('razorpay.payment.store');
Route::post('razorpay-payment-verification', [RazorpayPaymentController::class, 'verify']);
Route::post('/webhook', [RazorpayPaymentController::class, 'webhook']);
Route::post('/pdfview', [PdfController::class, 'pdefview']);
Route::get('view-razorpay-payment-data',[RazorpayPaymentController::class,'response']);