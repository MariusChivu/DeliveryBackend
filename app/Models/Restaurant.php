<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use App\Models\Reviews;

class Restaurant extends Model
{
    use HasFactory;

	/**
	 * Get Restaurant List by City
	 */
	static function restaurantList($name)
	{
		$restLists = self::_getRestaurantList($name);	
		$restaurant = [];
		foreach($restLists as $rest) {
			$rests = json_decode(self::where("id", $rest["rest_id"])->get(), true);
			$star = Reviews::avgStars($rests[0]['id']);
			$rests[0]['star'] = $star;
			$restaurant["".$star."-".$rests[0]['name']] = $rests;
		}
		krsort($restaurant);
		
		return($restaurant);
	}

	/**
	 * Get nearby Restaurant List
	 */
	static function nearbyRestaurantList($id)
	{
		$rest = self::where("id", $id)
		->get();

		return $rest;
	}

	/**
	 * get restaurant id
	 */
	static function getId($name)
	{
		$id = self::where("name", $name)->get();
		$id = json_decode($id);
		$id = $id[0]->id;

		return $id;
	}

	/**
	 * Get restaurant images folder
	 */
	static function getRestImg($name)
	{
		$img = self::where("name", $name)->get();
		$img = json_decode($img);
		$img = $img[0]->img;

		return $img;
		
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

	/**
	 * Get popular Restaurant List
	 */
	static function popularRestaurantList()
	{
		$restLists = self::take(13)
		->get();
		$restaurant = [];
		foreach($restLists as $rest) {
			$star = Reviews::avgStars($rest['id']);
			$rests[0]['star'] = $star;
			
			$restaurant["".$star."-".$rest['name']] = [$star, $rest["name"]];
			
		}
		krsort($restaurant);
		
		return($restaurant);
	}
}
