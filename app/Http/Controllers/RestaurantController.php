<?php

namespace App\Http\Controllers;

use App\Models\CityList;
use Illuminate\Http\Request;
use App\Models\Reviews;
use App\Models\Restaurant;
use App\Models\RestaurantCategory;
use App\Models\RestaurantCity;

class RestaurantController extends Controller
{
    //
	public function index($name, $city, $id)
	{
		$imgFolder = Restaurant::getRestImg($name);
		$stars = Reviews::avgStars($id);
		$array = [$imgFolder, $name, $city, $stars];
		$categoryMenu = RestaurantCategory::createCategoryMenu($id);
		$categoryProduct = [];
		$reviews = Reviews::getReviews($id);

		$cityId = CityList::getCityId($city);
		$coords = RestaurantCity::getRestaurantCoords($id, $cityId);

		for ($i=0; $i < sizeOf($categoryMenu); $i++) { 
			array_push($categoryProduct, RestaurantCategory::getCategoryProduct($categoryMenu[$i][0], $id));
		}
	//dd($categoryMenu[0][0]);
		return view("pages.restaurant", 
		compact(
			"array", 
			"categoryMenu", 
			"categoryProduct", 
			"imgFolder", 
			"reviews",
			"coords",
		));
	}
}

