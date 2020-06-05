<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Session;
use Stripe;
class TestStripePaymentController extends Controller
{
    /**
     * success response method.
     *
     * @return \Illuminate\Http\Response
     */
    public function stripe()
    {
        return view('testStripe');
    }
  
    /**
     * success response method.
     *
     * @return \Illuminate\Http\Response
     */
    public function stripePost(Request $request)
    {
        Stripe\Stripe::setApiKey(env('STRIPE_SECRET'));
         $customer = \Stripe\Customer::create([
				  'name' => 'Jenny Rosen',
				  'address' => [
				    'line1' => '510 Townsend St',
				    'postal_code' => '98140',
				    'city' => 'San Francisco',
				    'state' => 'CA',
				    'country' => 'US',
				  ],
]);
        Stripe\Charge::create ([
            "amount" => 100 * 100,
            "currency" => "usd",
            "source" => $request->stripeToken,
            "description" => "Test payment from itsolutionstuff" 
        ]);
			  $payment_intent = \Stripe\PaymentIntent::create([
			  'amount' => 1099,
			  'currency' => 'usd',
			  'description' => 'Software development services',
			]);
			        Session::flash('success', 'Payment successful!');
          
        return back();
    }
}
