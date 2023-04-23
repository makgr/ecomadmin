<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Admin\VisitorController;
use App\Http\Controllers\Admin\ContactController;
use App\Http\Controllers\Admin\SiteInfoController;
use App\Http\Controllers\Admin\CategoryController;
use App\Http\Controllers\Admin\ProductListController;
use App\Http\Controllers\Admin\SliderController;
use App\Http\Controllers\Admin\ProductDetailsController;
use App\Http\Controllers\Admin\NotificationController;
use App\Http\Controllers\User\AuthController;
use App\Http\Controllers\User\ForgetController;
use App\Http\Controllers\User\ResetController;


// Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
//     return $request->user();
// });



//user login

// Login Routes 
Route::post('/login', [AuthController::class, 'Login']);

// Register Routes 
Route::post('/register', [AuthController::class, 'Register']);
// Forget Password Routes 
Route::post('/forgetpassword', [ForgetController::class, 'ForgetPassword']);
// Reset Password Routes 
Route::post('/resetpassword', [ResetController::class, 'ResetPassword']);


//Get Visitor 
Route::get('/insertVisitor', [VisitorController::class, 'GetVisitorDetails']);
//contact
Route::post('/postcontact', [ContactController::class, 'PostContactDetails']);
//Site Info
Route::get('/allsiteinfo', [SiteInfoController::class, 'AllSiteinfo']);
// All Category
Route::get('/allcategory', [CategoryController::class, 'AllCategory']);
//Productlist
Route::get('/productlistbyremark/{remark}', [ProductListController::class, 'ProductListByRemark']);
Route::get('/productlistbycategory/{category}', [ProductListController::class, 'ProductListByCategory']);
Route::get('/productlistbysubcategory/{category}/{subcategory}', [ProductListController::class, 'ProductListBySubCategory']);
//Slider
Route::get('/allslider', [SliderController::class, 'AllSlider']);
//Product Details
Route::get('/productdetails/{id}', [ProductDetailsController::class, 'ProductDetails']);
// Notification
Route::get('/notification', [NotificationController::class, 'NotificationHistory']);
//Search
Route::get('/search/{key}', [ProductListController::class, 'ProductBySearch']);
