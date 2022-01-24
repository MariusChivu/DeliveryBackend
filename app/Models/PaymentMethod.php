<?php

namespace App\Models;

use App\Http\Controllers\UserController;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class PaymentMethod extends Model
{
    use HasFactory;

	/**
	 * Get user payment method
	 */
	static function getPaymentMethod($id)
	{
		$method = self::where("user_id", $id)
		->get();

		return $method;
	}

	/**
	 * Add new card
	 */
	static function storeNewCard($data)
	{
		$store = self::insert([
			'user_id' => $data['user_id'],
			'method' => $data['method'],
			'card_number' => $data['card_number'],
			'exp_month' => $data['exp_month'],
			'exp_year' => $data['exp_year'],
		]);

		return $store;
	}

	/**
	 * Delete card
	 */
	static function deleteCard($id)
	{
		$delete = self::where("id", $id)
		->delete();

		return $delete;
	}

	/**
	 * Get card details
	 */
	static function getCardDetails($id)
	{
		$details = self::where("id", $id)
		->where("user_id", UserController::userId())
		->get();
		$details = json_decode($details)[0];

		return $details;
	}

	/**
	 * Update card details
	 */
	static function updateCardDetails($data)
	{
		$update = self::where("id", $data['id'])
		->where("user_id", UserController::userId())
		->update([
			"exp_month" => $data["exp_month"],
			"exp_year" => $data["exp_year"],
		]);

		return $update;
	}
}
