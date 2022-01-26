<?php

namespace App\Http\Controllers;

use App\Models\CityList;
use Illuminate\Http\Request;
use App\Models\Reviews;
use App\Models\Restaurant;
use App\Models\RestaurantCategory;
use App\Models\RestaurantCity;
use App\Models\RestaurantProduct;

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

	/**
	 * Add new restaurant
	 */
	static function addRestaurant(Request $request)
	{
		if(isset($_POST['addRestaurant'])) {
			$request->validate([
				'icon' => 'required|image|mimes:jpg',
				'banner' => 'required|image|mimes:jpg',
			]);

			$folder = rand(0,9999999).md5(date('Y-m-d h:m:s'));  
			
			$request->icon->move(public_path("img/restaurante/$folder"),"icon.jpg");
			$request->banner->move(public_path("img/restaurante/$folder"), 'banner.jpg');

			$owner_id = UserController::userId();

			$data_rest = [
				"owner_id" => $owner_id,
				"name" => $request->name,
				"img" => $folder,
			];

			$restaurant = Restaurant::newRestaurant($data_rest);

			$data_city = [
				"id" => $folder,
				"city_id" => $request->city,
				"coords" => $request->coords,
			];
			
			$city = RestaurantCity::newRestaurantCity($data_city);

			if($restaurant == true && $city == true) {
				return "restaurant_add_success";
			} else {
				return "restaurant_add_error";
			}
		}
	}

	/**
	 * Update restaurant info
	 */
	static function updateRestaurant(Request $request)
	{
		$folder = $request->img;
		if(isset($_POST['updateRestaurant'])) {
			if($request->icon != null) {
				$validateIcon = $request->validate([
					'icon' => 'image|mimes:jpg',
				]);
				$request->icon->move(public_path("img/restaurante/$folder"),"icon.jpg");
			}
			if($request->banner != null) {
				$validateBanner = $request->validate([
					'banner' => 'image|mimes:jpg',
				]);
				$request->banner->move(public_path("img/restaurante/$folder"), 'banner.jpg');
			}

			$data = [
				"id" => $request->id,
				"name" => $request->name,
			];

			$update = Restaurant::updateRestaurantInfo($data);

			if($update) {
				return "update_restaurant_success";
			} else {
				return "update_restaurant_error";
			}
		}
	}

	/**
	 * Add new product category
	 */
	static function addCategory(Request $request)
	{
		if(isset($_POST['addCategory'])) {
			$data = [
				"rest_id" => $request->rest_id,
				"name" => $request->name,
			];
			$insert = RestaurantCategory::addCategory($data);

			if($insert) {
				return "category_add_success";
			} else {
				return "category_add_error";
			}
		}

	}

	/**
	 *Delete product category
	 */
	static function deleteCategory(Request $request)
	{
		if(isset($_POST['deleteCategory'])) {
			$insert = RestaurantCategory::deleteRestaurantCategory($request->id);

			if($insert) {
				return "category_delete_success";
			} else {
				return "category_delete_error";
			}
		}

	}

	/**
	 *Update product category
	 */
	static function updateCategory(Request $request)
	{
		if(isset($_POST['updateCategory'])) {
			$data = [
				"id" => $request->id,
				"rest_id" => $request->rest_id,
				"name" => $request->name,
			];

			$update = RestaurantCategory::updateRestaurantCategory($data);

			if($update) {
				return "category_update_success";
			} else {
				return "category_update_error";
			}
		}

	}

	/**
	 * Add new product
	 */
	static function addProduct(Request $request)
	{
		if(isset($_POST['addProduct'])) {

			$validateIcon = $request->validate([
				'img' => 'image|mimes:webp',
			]);

			$folder = Restaurant::getRestImgId($request->rest_id);
			$imgName =  rand(0,9999999).md5(date('Y-m-d h:m:s'));
			$request->img->move(public_path("img/restaurante/$folder"), $imgName.".webp");

			$data = [
				"rest_id" => $request->rest_id,
				"cat_id" => $request->cat_id,
				"name" => $request->name,
				"price" => $request->price,
				"text" => $request->text,
				"img" => $imgName,
			];
			$insert = RestaurantProduct::addProduct($data);

			if($insert) {
				return "product_add_success";
			} else {
				return "product_add_error";
			}
		}

	}

	/**
	 *Delete product
	 */
	static function deleteProduct(Request $request)
	{
		if(isset($_POST['deleteProduct'])) {
			$insert = RestaurantProduct::deleteRestaurantProduct($request->id);

			if($insert) {
				return "product_delete_success";
			} else {
				return "product_delete_error";
			}
		}

	}

	/**
	 *Update product
	 */
	static function updateProduct(Request $request)
	{
		if(isset($_POST['updateProduct'])) {

			$data = [
				"id" => $request->id,
				"cat_id" => $request->cat_id,
				"name" => $request->name,
				"price" => $request->price,
				"text" => $request->text,
				"img" => "",
			];

			if($request->img != null) {
				$validateIcon = $request->validate([
					'icon' => 'image|mimes:webp',
				]);
				$folder = Restaurant::getRestImgId($request->rest_id);
				$imgName =  rand(0,9999999).md5(date('Y-m-d h:m:s'));
				$request->img->move(public_path("img/restaurante/$folder"), $imgName.".webp");
				$data['img'] = $imgName;
			}

			$update = RestaurantProduct::updateRestaurantProduct($data);

			if($update) {
				return "product_update_success";
			} else {
				return "product_update_error";
			}
		}

	}
}