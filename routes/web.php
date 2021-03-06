<?php

//  social controller 
Route::get('/auth/redirect/{provider}', 'SocialController@redirect');
Route::get('/callback/{provider}', 'SocialController@callback');

Route::get('/', function () {return view('pages.index');});
//auth & user
Auth::routes(['verify' => true]);
Route::get('/home', 'HomeController@index')->name('home');
Route::get('/password-change', 'HomeController@changePassword')->name('password.change');
Route::post('/password-update', 'HomeController@updatePassword')->name('password.update');
Route::get('/user/logout', 'HomeController@Logout')->name('user.logout');

//admin=======
Route::get('admin/home', 'AdminController@index');
Route::get('admin', 'Admin\LoginController@showLoginForm')->name('admin.login');
Route::post('admin', 'Admin\LoginController@login');
        // Password Reset Routes...
Route::get('admin/password/reset', 'Admin\ForgotPasswordController@showLinkRequestForm')->name('admin.password.request');
Route::post('admin-password/email', 'Admin\ForgotPasswordController@sendResetLinkEmail')->name('admin.password.email');
Route::get('admin/reset/password/{token}', 'Admin\ResetPasswordController@showResetForm')->name('admin.password.reset');
Route::post('admin/update/reset', 'Admin\ResetPasswordController@reset')->name('admin.reset.update');
Route::get('/admin/Change/Password','AdminController@ChangePassword')->name('admin.password.change');
Route::post('/admin/password/update','AdminController@Update_pass')->name('admin.password.update'); 
Route::get('admin/logout', 'AdminController@logout')->name('admin.logout');


 /*<=========Admin section ============>*/

 Route::get('admin/categories','Admin\Category\CategoryController@category')->name('categories');

 Route::post('admin/store/category','Admin\Category\CategoryController@storecategory')->name('store.category');
 
 Route::get('/delete/category/{id}','Admin\Category\CategoryController@Deletecategory');
 Route::get('/edit/category/{id}','Admin\Category\CategoryController@Editcategory');

Route::post('update/category/{id}','Admin\Category\CategoryController@Updatecategory');

/*<=========Admin section  End ============>*/

/*<============= Admin brands===================>*/

 Route::get('admin/brands','Admin\Category\BrandController@brand')->name('brands');
 Route::post('admin/store/brand','Admin\Category\BrandController@storebrand')->name('store.brand');

	Route::get('/delete/brand/{id}','Admin\Category\BrandController@Deletebrand');
	Route::get('edit/brand/{id}','Admin\Category\BrandController@Editbrand');

	Route::post('update/brand/{id}','Admin\Category\BrandController@Updatebrand');
        /*<============ Brand Route End===============>*/
       
	/*<============= Sub category =====  ==============>*/

 Route::get('admin/sub/category','Admin\Category\SubCategoryController@subcategories')->name('sub.categories');

 Route::post('admin/store/subcat','Admin\Category\SubCategoryController@storesubcat')->name('store.subcategory');

	Route::get('delete/subcategory/{id}','Admin\Category\SubCategoryController@Deletesubcat');
 

	Route::get('edit/subcategory/{id}','Admin\Category\SubCategoryController@Editsubcat');

	Route::post(' update/subcategory/{id}','Admin\Category\SubCategoryController@Updatesubcat');
  /*<===========================Sub category End=======>*/


  /*<=============Coupon Route =================>*/
Route::get('admin/sub/coupon', 'Admin\Category\CouponController@Coupon')->name('admin.coupon');
 Route::post('admin/store/coupon','Admin\Category\CouponController@storecoupon')->name('store.coupon');
	Route::get('delete/coupon/{id}','Admin\Category\CouponController@Deletecoupon');
	Route::get('edit/coupon/{id}','Admin\Category\CouponController@Editcoupon');
	Route::post('update/coupon/{id}','Admin\Category\CouponController@Updatecoupon');

  Route::get('admin/newslater', 'Admin\Category\CouponController@Newslater')->name('admin.newslater');
Route::get('delete/sub/{id}', 'Admin\Category\CouponController@Deletesub');
/*<=============Coupon Route End  =================>*/

/**<==============Admin Product Route================> */
 Route::get('admin/product/all','Admin\ProductController@index')
           ->name('all.product');
 Route::get('admin/product/add','Admin\ProductController@create')
           ->name('add.product');

Route::post('admin/store/product', 'Admin\ProductController@store')
           ->name('store.product');

Route::get('inactive/product/{id}','Admin\ProductController@inactive');
Route::get('active/product/{id}','Admin\ProductController@active');
Route::get('delete/product/{id}', 'Admin\ProductController@DeleteProduct');

Route::get('view/product/{id}', 'Admin\ProductController@ViewProduct');
Route::get('edit/product/{id}', 'Admin\ProductController@EditProduct');

Route::post('update/product/withoutphoto/{id}', 'Admin\ProductController@UpdateProductWithoutPhoto');


Route::post('update/product/photo/{id}', 'Admin\ProductController@UpdateProductWithPhoto');

/**<==============Admin Product Route End================> */

/**<==============Admin Blog Route ================> */
Route::get('blog/category/list/', 'Admin\PostController@BlogCatList')
              ->name('add.blog.categoryList');

 Route::post('admin/store/blog','Admin\PostController@BlogCategory')
             ->name('store.blog.category');

Route::get('delete/blogcat/{id}', 'Admin\PostController@DeletePostCat');

Route::get('edit/blogcat/{id}', 'Admin\PostController@EditPostCat');

Route::post('update/blog/category/{id}', 'Admin\PostController@UpdateBlogCategory');

Route::get('admin/add/post', 'Admin\PostController@Create')
                ->name('add.blogpost');

Route::get('admin/all/post', 'Admin\PostController@index')
                 ->name('all.blogpost');
Route::post('admin/store/post', 'Admin\PostController@store')
                 ->name('store.post');
Route::get('delete/post/{id}', 'Admin\PostController@DeletePost');

Route::get('edit/post/{id}', 'Admin\PostController@EditPost');
Route::post('update/post/{id}', 'Admin\PostController@updatePost');




/**<==============Admin Blog Route End================> */


 // For Show Sub category with ajax
Route::get('get/subcategory/{category_id}','Admin\ProductController@GetSubcat');




/**<==============Fronted All Route================> */
//
Route::post('store/newslater', 'FrontController@storeNewslater')->name('store.newslater');

// Add wishList 
Route::get('add/wishlist/{id}', 'WishlistController@addWishList');

// Add to Cart Route 
Route::get('add/to/cart/{id}', 'CartController@AddCart');

Route::get('check', 'CartController@check');

/// products details 
Route::get('product/details/{id}/{product_name}','ProductController@ProductView');
Route::post('cart/product/add/{id}','ProductController@AddCart');
Route::get('product/cart', 'CartController@ShowCart')->name('show.cart');

Route::get('remove/cart/{rowId}', 'CartController@removeCart');
Route::post('update/cart/item/', 'CartController@UpdateCart')
                                    ->name('update.cartitem');
Route::get('/cart/product/view/{id}', 'CartController@ViewProduct');

Route::post('insert/into/cart/', 'CartController@InsertCart')
                                  ->name('insert.into.cart');

Route::get('user/checkout/', 'CartController@CheckOut')
                                  ->name('user.checkout');
Route::get('user/wishlist/', 'CartController@Wishlist')
                                  ->name('user.wishlist');
Route::post('user/apply/coupon', 'CartController@Coupon')
                                  ->name('apply.coupon');
Route::get('user/coupon/remove', 'CartController@RemoveCoupon')
                                  ->name('coupon.remove');
 //// Blog Post route                                  
Route::get('blog/post/', 'blogController@blog')
                                  ->name('blog.post');


Route::get('language/english/', 'blogController@English')
                                  ->name('language.English');
 Route::get('language/hindi/', 'blogController@Hindi')
                                  ->name('language.Hindi');
 Route::get('blog/single/{id}', 'blogController@blogSingle');
                                  
// Pyment Step 
Route::get('payment/page', 'CartController@PaymentPage')
                             ->name('payment.step');
Route::post('user/payment/process/', 'PaymentController@Payment')
                              ->name('payment.process');
Route::post('user/stripe/charge/', 'PaymentController@StripeCharge')
                                ->name('stripe.charge');
 Route::post('user/oncash/charge/', 'PaymentController@OnCash')
                                     ->name('oncash.charge');


      // Product details Page 
Route::get('products/{id}', 'ProductController@ProductsView'); 
Route::get('allcategory/{id}', 'ProductController@categoryView'); 

// Admin Order Route 

Route::get('admin/pending/order', 'Admin\OrderController@Neworder')
                              ->name('admin.neworder'); 
Route::get('admin/view/order/{id}', 'Admin\OrderController@Vieworder');
        
Route::get('admin/payment/accept/{id}', 
				'Admin\OrderController@PaymentAccect');

Route::get('admin/payment/cancel/{id}',
				'Admin\OrderController@PaymentCancel');
  				

Route::get('admin/accept/payment/',
'Admin\OrderController@acceptPayment')->name('admin.accept.payment');
Route::get('admin/cancel/payment/',
'Admin\OrderController@CancelOrder')->name('admin.cancel.payment');

Route::get('admin/process/payment/',
'Admin\OrderController@procespayment')->name('admin.process.payment');


Route::get('admin/success/payment/',
'Admin\OrderController@succespayment')->name('admin.success.payment');

Route::get('admin/delevery/process/{id}', '
Admin\OrderController@DeleveryProcess');

Route::get('admin/delevery/done/{id}', 'Admin\OrderController@DeleveryDone');

/// SEO Setting Route
Route::get('admin/seo', 'Admin\OrderController@seo')
                                 ->name('admin.seo');
Route::post('admin/seo/update', 'Admin\OrderController@UpdateSeo')
                                   ->name('update.seo');
   // order trackin route                                
Route::post('order/trackin/', 'FrontController@OrderTracking')
                                   ->name('order.tracking');


// order Report Route 
Route::get('admin/today/order', 'Admin\ReportController@Todayorder')
                                   ->name('today.order');                               
Route::get('admin/today/delivery', 
'Admin\ReportController@Todaydelivery')->name('today.delivery');
Route::get('admin/this/month',
'Admin\ReportController@ThisMonth')->name('this.month');    

Route::get('admin/search/',
'Admin\ReportController@search')->name('search.report');    

Route::post('admin/search/by/year',
'Admin\ReportController@searchByYear')->name('search.by.year');  

Route::post('admin/search/by/month',
'Admin\ReportController@searchByMonth')->name('search.by.month'); 

Route::post('admin/search/by/date',
'Admin\ReportController@searchByDate')->name('search.by.date');
// Admin Role Route
Route::get('admin/all/user',
'Admin\UserRoleController@UserRole')->name('admin.all.user');

Route::get('admin/create/admin',
'Admin\UserRoleController@UserCreate')->name('create.admin');

Route::post('admin/store/admin',
'Admin\UserRoleController@storeUser')->name('store.admin');

Route::get('delete/admin/{id}', 'Admin\UserRoleController@UserDelete');

Route::get('edit/admin/{id}', 'Admin\UserRoleController@UserEdit');

Route::post('admin/update/admin',
'Admin\UserRoleController@UserUpdate')->name('update.admin');
//// Admin site Setting route
//

Route::get('admin/site/setting',
'Admin\SettingController@siteSetting')->name('admin.site.setting');

Route::post('admin/sitesetting','Admin\SettingController@UpdateSiteSetting')
    ->name('update.sitesetting');


// Return order Route 
Route::get('success/list','PaymentController@successList')
                           ->name('success.orderList');
Route::get('request/return/{id}','PaymentController@requestReturn');

Route::get('admin/return/request/','Admin\ReturnController@returnRequest')->name('admin.return.request');
Route::get('admin/approve/return/{id}','Admin\ReturnController@returnApprove');

Route::get('admin/all/return/','Admin\ReturnController@allReturn')->name('admin.all.return');

// admin order stock 

Route::get('admin/product/stock',
'Admin\UserRoleController@productStock')->name('admin.product.stock');

/// contact page Route 
Route::get('contact/page','ContactController@contact')
                            ->name('contact.page');
Route::post('contact/form','ContactController@ContactForm')
                            ->name('contcat.form');
Route::get('admin/contact/message','ContactController@AllContactMessage')->name('contact.message');

/// Seach Route 
Route::post('product/search','CartController@productSearch')
                            ->name('product.search');