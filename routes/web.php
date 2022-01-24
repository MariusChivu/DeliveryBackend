<?php

use App\Http\Controllers\CityController;
use App\Http\Controllers\RestaurantController;
use App\Http\Controllers\NearbyRestaurantsController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\IndexController;
use App\Http\Controllers\PaymentController;
use Illuminate\Support\Facades\Route;
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::resource("/", IndexController::class);
Route::get('contact', function () {
    return view('pages.contact');
});
Route::resource("city", CityController::class);
Route::get("near/{sort}", [NearbyRestaurantsController::class, "index"]);
Route::get("restaurant/{name}/{city}/{id}", [RestaurantController::class, "index"]);

Route::get("logout", [UserController::class, "logout"]);
Route::get("user", function () {
    return view('user.panel');
});
Route::get("user/info", [UserController::class, "userPanelInfo"]);
Route::get("user/orders", [UserController::class, "userOrders"]);
Route::get("user/orders/items/{id}", [UserController::class, "userOrderItems"]);
Route::get("user/payment", [UserController::class, "paymentMethodsPage"]);
Route::get("user/payment/update/{id}", [PaymentController::class, "updatePaymentPage"]);

