<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\Reviews;

class Restaurant extends Model
{
    use HasFactory;

	static function restaurantList($name, $sort)
	{
		$restLists = Restaurant::_getRestaurantList($name);	
		$restaurant = [];
		foreach($restLists as $rest) {
			$rests = json_decode(Restaurant::where("id", $rest["id"])->get(), true);
			$star = Reviews::avgStars($rests[0]['id']);
			$rests[0]['star'] = $star;
			
			$restaurant["".$star."-".$rests[0]['name']] = $rests;
			
		}
		krsort($restaurant);
		
		return($restaurant);
	}

	/**
	 * get restaurant id
	 */
	private function getId($name)
	{
		$id = Restaurant::where("name", $name)->get();
		$id = json_decode($id);
		$id = $id[0]->id;

		return $id;
	}

	/**
	 * 
	 */
	static function getRestImg($name)
	{
		$img = Restaurant::where("name", $name)->get();
		$img = json_decode($img);
		$img = $img[0]->img;

		return $img;
		
	}
	
	/**
	 * create restaurant page
	 */
	public function createPage($name, $city, $id)
	{
		$id = $this->getId($name);
	}

	/**
	 * get restaurant list
	 */
	private function _getRestaurantList($name)
	{
		$id = CityList::getCityId($name);
		$rest_id = RestaurantCity::where("city_id", $id)->get();
				
		return $rest_id;
	}

	private function _sortRestaurantList($list, $sort)
	{
		switch($sort) {
			case "star":
				break;
		}
	}
}
