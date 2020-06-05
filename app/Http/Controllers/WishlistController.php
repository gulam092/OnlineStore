<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use DB;
class WishlistController extends Controller
{
   public function addWishList($id)
   {
   	   $userid = Auth::id();
       $check = DB::table('wishlists')->where('user_id',$userid)
                 ->where('product_id',$id)->first();
     $data = array(
    		'user_id' => $userid,
    		'product_id' => $id,
		  );


     if (Auth::Check()) {
        if ($check) {
        	return \Response::json(['error' => 'Product Already Has on your wishlist']);
        	/*$notification=array(
            			'messege'=>'Product Already Has on your wishlist',
            			'alert-type'=>'error'
             			);*/
           			//return Redirect()->back()->with($notification); 
        	}else{
              DB::table('wishlists')->insert($data);
                return \Response::json(['success' => 'Product Added on wishlist']);
              	/*	$notification=array(
            			'messege'=>'Product Added on wishlist',
            			'alert-type'=>'success'
             		);
             		 return Redirect()->back()->with($notification); */
        	}	
     

     }else{
     	 return \Response::json(['error' => 'At first loing your account']); 
     	    /*$notification=array(
            'messege'=>'Login Your  Account First',
            'alert-type'=>'warning'
             			);*/
           //return Redirect()->back()->with($notification); 
     }
   }
}
