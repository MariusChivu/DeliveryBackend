<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class RestaurantController extends Controller
{
    //
	public function index($name, $city, $id)
	{
	//	dd($name."-".$city."-".$id);
		$array = [$name, $city, $id];
		return view("pages.restaurant", compact("array"));

	}

}

