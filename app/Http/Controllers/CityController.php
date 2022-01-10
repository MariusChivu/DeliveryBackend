<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\CityList;
use App\Models\RestaurantCity;
use App\Models\Restaurant;

class CityController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
		$city = CityList::get();
		$city = json_decode($city);
		return view("pages.main", compact("city"));
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($name)
    {
		$restLists = $this->restaurantList($name);
		
		$restaurant = [];
		foreach($restLists as $rest) {
			$rests = json_decode(Restaurant::where("id", $rest["id"])->get(), true);
			array_push($restaurant, $rests);
		//	var_dump($restaurant);
		}

		return view("pages.city", compact("restaurant", "name"));
	}

	/**
	 * 
	 */
	public function restaurantList($name)
	{

		
        $id = CityList::where("name", $name)->get();
		$id = json_decode($id);
		$id = $id[0]->id;
		$rest_id = RestaurantCity::where("city_id", $id)->get();
				
		return $rest_id;
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
