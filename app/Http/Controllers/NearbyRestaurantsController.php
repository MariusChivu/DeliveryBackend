<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Controllers\DistanceController;
use App\Models\CityList;
use App\Models\RestaurantCity;
use App\Models\Restaurant;
use App\Models\Reviews;

class NearbyRestaurantsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index($sort)
    {
        $rests = RestaurantCity::getRestaurantListNearby();
		$restaurant = [];

		if($sort == "distance") {
			$sort_name = "distanță";
		} else {
			$sort_name = "rating";
		}
		
		for ($i=0; $i < sizeOf($rests); $i++)
		{
			$rest = array(Restaurant::nearbyRestaurantList($rests[$i]->rest_id));
			$star = Reviews::avgStars($rest[0][0]["id"]);
			$coords = $rests[$i]->coords;
			$distance = DistanceController::calculateDistance($coords);
			$distance_name = DistanceController::calculateDistanceName($distance);
			$city = CityList::getCityName($rests[$i]->city_id);
			
			if($sort == "distance") {
				$array_name = $distance + $i;
			} else {
				$array_name = "$star ".$rest[0][0]["name"];
			}
			
			if($distance <= 5000999999999) {
				$restaurant[$array_name] = [
					"distance" => $distance,
					"distance_name" => $distance_name,
					"id" => $rest[0][0]["id"],
					"name" => $rest[0][0]["name"],
					"img" => $rest[0][0]["img"],
					"city" => $city,
					"star" => $star,
					"star_no0" => (int) $star,
					"star_no1" =>  abs(((int) $star - $star) * 10),
				];
			}
		}

		if($sort == "distance") {
			ksort($restaurant);
		} else {
			krsort($restaurant);
		}
		
	//	dd($restaurant);

		return view("pages.near",
		compact(
			"restaurant",
			"sort_name",
		));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
		//
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
