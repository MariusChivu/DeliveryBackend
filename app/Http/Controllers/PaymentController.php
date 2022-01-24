<?php

namespace App\Http\Controllers;

use App\Models\PaymentMethod;
use Illuminate\Http\Request;

class PaymentController extends Controller
{
    /**
	 * Add new payment card
	 */
	static function addCard(Request $request)
	{
		if(isset($_POST["addCard"])) {
			$data = [
				"user_id" => UserController::userId(),
				"method" => "card",
				"card_number" => $request->card_number,
				"exp_month" => $request->exp_month,
				"exp_year" => $request->exp_year,
			];

			$addCard = PaymentMethod::storeNewCard($data);
			return "add_card_success";
		}
	}

	/**
	 * Delete card
	 */
	static function deleteCard(Request $request)
	{
		if(isset($_POST['deleteCard'])) {
			$deleteCard = PaymentMethod::deleteCard($request->id);

			return "delete_card_success";
		}
	}

	/**
	 * Update card page
	 */
	static function updatePaymentPage($id)
	{
		$details = PaymentMethod::getCardDetails($id);

		$update = "asdas";
		return view("user.update", compact([
			"update",
			"details",
		]));
	}

	/**
	 * Update card
	 */
	static function updateCard(Request $request)
	{
		if(isset($_POST['updateCard'])) {
			$data = [
				"id" => $request->id,
				"exp_month" => $request->exp_month,
				"exp_year" => $request->exp_year,
			];

			$update = PaymentMethod::updateCardDetails($data);

			if($update) {
				return "update_card_success";
			} else {
				return "update_card_error";
			}
		}
	}
}
