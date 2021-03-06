<?php

namespace App\Http\Controllers;
use App\Http\Controllers\CityController;
use App\Http\Controllers\UserController;
use App\Http\Controllers\CartController;
use App\Models\Restaurant;
use App\Models\Link;
use App\Models\Reviews;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Support\Facades\Session;

class IndexController extends Controller
{
	/**
	 * show content on home page
	 */
    public function index()
	{
		$citys = CityController::showCityList();
		$popularRestaurant = Restaurant::popularRestaurantList();
		$download = Link::getDownload();
		$restaurantCart = Session::get("restaurantCart");

		return view("pages.main", 
		compact(
			"citys",
			"popularRestaurant",
			"download",
			"restaurantCart",
		));
	}

	/**
	 * get $_POST
	 */
	public function store(Request $request)
	{
		$msg = UserController::login($request);
		$msg .= UserController::register($request);
		$msg .= UserController::updateInfo($request);

		$msg .= CartController::addItem($request);
		$msg .= CartController::deleteCartItem($request);
		$msg .= CartController::resetCart();
		$msg .= CartController::storeCart();

		$msg .= PaymentController::addCard($request);
		$msg .= PaymentController::deleteCard($request);
		$msg .= PaymentController::updateCard($request);

		$msg .= Reviews::addReview($request);

		$msg .= RestaurantController::addRestaurant($request);
		$msg .= RestaurantController::updateRestaurant($request);

		$msg .= RestaurantController::addCategory($request);
		$msg .= RestaurantController::deleteCategory($request);
		$msg .= RestaurantController::updateCategory($request);
		
		$msg .= RestaurantController::addProduct($request);
		$msg .= RestaurantController::deleteProduct($request);
		$msg .= RestaurantController::updateProduct($request);
		
		return Redirect::back()->withErrors(['msg' => $msg]);
	}
}
