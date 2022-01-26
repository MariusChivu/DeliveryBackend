<?php

namespace App\Http\Controllers;

use App\Models\CartDetails;
use App\Models\CityList;
use App\Models\Restaurant;
use App\Models\RestaurantCategory;
use App\Models\RestaurantCity;
use App\Models\RestaurantProduct;
use App\Models\User;
use Illuminate\Http\Request;

class OwnerController extends Controller
{
	/**
	 * Generate owner page
	 */
	static function panel()
	{
		$restaurants = Restaurant::getOwnerRestaurant(UserController::userId());

		foreach($restaurants as $item) {
			$item["img"] = Restaurant::getRestImg($item["name"]);
			$item["nr_rest"] = RestaurantCity::locationNumber($item["id"]);
			$item["city_rest"] = RestaurantCity::locationCity($item["id"]);
			$item["nr_product"] = RestaurantProduct::countProduct($item["id"]);
			$item["nr_orders"] = CartDetails::countOrders($item["name"]);
			$item["nr_category"] = RestaurantCategory::countCategory($item["id"]);
		
			foreach(RestaurantCity::locationCity($item["id"]) as $list) {
				$item["city"] .= $list["name"].", ";
			}
		}

		$cityList = CityList::getCityList();

		return view("owner.panel", compact([
			"restaurants",
			"cityList",
		]));
	}

	/**
	 * Check if is restaurant owner
	 */
	static function isOwner()
	{
		if(UserController::isLogin() == true) {
			$owner = User::getUserInfo(UserController::userId())->type;

			if($owner == "owner") {
				return true;
			} else {
				return false;
			}
		} else {
			return false;
		}
	}

	/**
	 * Edit restaurant details
	 */
	static function edit($id)
	{
		$restaurant = Restaurant::getRestaurantInfo($id);

		return view("owner.edit", compact([
			"restaurant",
		]));
	}

	/**
	 * Restaurant products & category page
	 */
	static function products($id)
	{
		$category = RestaurantCategory::getCategoryListRestaurant($id);
		$product = RestaurantProduct::getProductListRestaurant($id);
		$rest_id = $id;

		return view("owner.products", compact([
			"category",
			"product",
			"rest_id",
		]));
	}
}
