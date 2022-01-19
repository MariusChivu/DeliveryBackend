<?php

namespace App\Http\Controllers;
use App\Http\Controllers\CityController;
use App\Http\Controllers\UserController;
use App\Models\Restaurant;
use App\Models\Link;
use Illuminate\Support\Facades\Session;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Redirect;

class IndexController extends Controller
{
    public function index()
	{
		$citys = CityController::showCityList();
		$popularRestaurant = Restaurant::popularRestaurantList();
		$download = Link::getDownload();
	

		return view("pages.main", 
		compact(
			"citys",
			"popularRestaurant",
			"download",
		));
	}

	public function store(Request $request)
	{
		$msg = UserController::login($request);
		$msg = UserController::register($request);
		return Redirect::back()->withErrors(['msg' => $msg]);
	}
}
