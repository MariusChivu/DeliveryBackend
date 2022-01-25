<?php

namespace App\Http\Controllers;

use App\Models\CityList;
use Illuminate\Http\Request;
use App\Models\Reviews;
use App\Models\Restaurant;
use App\Models\RestaurantCategory;
use App\Models\RestaurantCity;
use App\Models\CartItems;
use App\Models\User;

class RestaurantController extends Controller
{
	/**
	 * Create Restaurant page
	 */
	public function index($name, $city, $id)
	{
		$imgFolder = Restaurant::getRestImg($name);
		$stars = Reviews::avgStars($id);
		$array = [$imgFolder, $name, $city, $stars, $id];
		$categoryMenu = RestaurantCategory::createCategoryMenu($id);
		$categoryProduct = [];
		$reviews = Reviews::getReviews($id);

		$cityId = CityList::getCityId($city);
		$coords = RestaurantCity::getRestaurantCoords($id, $cityId);

		for ($i=0; $i < sizeOf($categoryMenu); $i++) { 
			array_push($categoryProduct, RestaurantCategory::getCategoryProduct($categoryMenu[$i][0], $id));
		}

		$cartBtn = 0;
		if(isset($_COOKIE["position"])) {
			$cartBtn = 1;
		}

		$login = false;
		if(UserController::isLogin()) {
			$login = true;
		}

		$popularProduct = RestaurantCategory::getPopularProduct($id);

		return view("pages.restaurant", 
		compact(
			"array", 
			"categoryMenu", 
			"categoryProduct", 
			"imgFolder", 
			"reviews",
			"coords",
			"cartBtn",
			"popularProduct",
			"login",
		));
	}
}

