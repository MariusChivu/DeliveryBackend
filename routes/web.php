<?php

use App\Http\Controllers\CityController;
use App\Http\Controllers\RestaurantController;
use App\Http\Controllers\NearbyRestaurantsController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\IndexController;
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
Route::get('/contact', function () {
    return view('pages.contact');
});
Route::resource("city", CityController::class);
Route::get("near/{sort}", [NearbyRestaurantsController::class, "index"]);
Route::get("logout", [UserController::class, "logout"]);
Route::get("restaurant/{name}/{city}/{id}", [RestaurantController::class, "index"]);

