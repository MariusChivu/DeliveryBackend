<?php

namespace App\Models;

use App\Http\Controllers\UserController;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Http\Request;

class Reviews extends Model
{
    use HasFactory;

	
	/**
	 * Stars average
	 */
	static function avgStars($rest_id)
	{
		$stars = self::where("rest_id", $rest_id)
		->avg('star');
		$stars = round($stars, 1);
		
		return $stars;
	}

	/**
	 * Get restaurante Reviews
	 */
	static function getReviews($rest_id)
	{
		$reviews = self::where("rest_id", $rest_id)
		->get();

		return $reviews;
	}

	/**
	 * Add new review
	 */
	static function addReview(Request $request)
	{
		if(isset($_POST['addReview'])) {
			$name = User::getUserInfo(UserController::userId())->name;
			$add = self::insert([
				"rest_id" => $request->rest_id,
				"star" => $request->star,
				"name" => $name,
				"text" => $request->text,
			]);
			
			if($add) {
				return "review_add_success";
			} else {
				return "review_add_error";
			}
		}
	}
}

