<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\RestaurantProduct;

class RestaurantCategory extends Model
{
    use HasFactory;
	
	/**
	 * create restaurant menu category
	 */
	static function createCategoryMenu($id)
	{
		$categories = self::where("rest_id", $id)
		->orderBy("id")
		->get();
		$categories = json_decode($categories);
		
		$category = [];
		foreach($categories as $item) {
			array_push($category, [$item->id, $item->name]);
		}
		return $category;
	}

	/**
	 * Get restaurant product by category
	 */
	static function getCategoryProduct($id, $restId)
	{
		$categories = RestaurantProduct::where("cat_id", $id)
		->where("rest_id", $restId)
		->get();
		$categories = json_decode($categories);

		return $categories;
	}

	/**
	 * Get popular product
	 */
	static function getPopularProduct($restId)
	{
		$popularProduct = CartItems::selectPopularProducts($restId);

		foreach($popularProduct as $item) {
			$info = RestaurantProduct::getProductInfo($item["id_prod"]);
			$item["rest_id"] = $info->rest_id;
			$item["cat_id"] = 0;
			$item["name"] = $info->name;
			$item["text"] = $info->text;
			$item["price"] = $info->price;
			$item["img"] = $info->img;
		}

		return $popularProduct;
	}

	/**
	 * Count restaurant category
	 */
	static function countCategory($rest_id)
	{
		$count = self::where("rest_id", $rest_id)
		->count();

		return $count;
	}

	/**
	 * Get category name
	 */
	static function getCategoryName($id)
	{
		$name = self::select("name")
		->where("id", $id)
		->first()->name;
		
		return $name;
	}

	/**
	 * Restaurant Category list for owner
	 */
	static function getCategoryListRestaurant($id)
	{
		$list = self::where("rest_id", $id)
		->get();
		
		return $list;
	}

	/**
	 * Add new category
	 */
	static function addCategory($data)
	{
		$insert = self::insert([
			"rest_id" => $data["rest_id"],
			"name" => $data["name"],
		]);

		return $insert;
	}

	/**
	 * Delete category
	 */
	static function deleteRestaurantCategory($id)
	{
		$delete = self::where("id", $id)
		->delete();

		return $delete;
	}

	/**
	 * Update category
	 */
	static function updateRestaurantCategory($data)
	{
		$update = self::where("id", $data['id'])
		->where("rest_id", $data['rest_id'])
		->update([
			"name" => $data["name"],
		]);

		return $update;
	}
}