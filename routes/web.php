<?php

use App\Http\Controllers\CityController;
use App\Http\Controllers\RestaurantController;
use App\Http\Controllers\NearbyRestaurantsController;
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

// Route::get('/', function () {
//     return view('welcome');
// });

//Route::get("/cityList", [CityController::class, "index"]);

//Route::get('cityList', 'CityController@index');
Route::get('/contact', function () {
    return view('pages.contact');
});

Route::get("/", [CityController::class,'index']);
Route::resource("city", CityController::class);
Route::get("near/{sort}", [NearbyRestaurantsController::class, "index"]);
Route::get("restaurant/{name}/{city}/{id}", [RestaurantController::class, "index"]);

