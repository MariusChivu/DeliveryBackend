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
		$categories = RestaurantCategory::where("rest_id", $id)
		->orderBy("id")
		->get();
		$categories = json_decode($categories);
		
		$category = [];
		foreach($categories as $item) {
			array_push($category, [$item->id, $item->name]);
		}
		return $category;
	}

	static function getCategoryProduct($id, $restId)
	{
		$categories = RestaurantProduct::where("cat_id", $id)
		->where("rest_id", $restId)
		->get();
		$categories = json_decode($categories);

		return $categories;
	}
}
