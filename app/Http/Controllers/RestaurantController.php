<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Reviews;
use App\Models\Restaurant;
use App\Models\RestaurantCategory;

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
			"reviews"
		));
	}
}

