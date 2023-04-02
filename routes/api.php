<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Admin\VisitorController;
use App\Http\Controllers\Admin\ContactController;
use App\Http\Controllers\Admin\SiteInfoController;
use App\Http\Controllers\Admin\CategoryController;


// Route::middleware('auth:sanctum')->get('/user', function (Request $request) {
//     return $request->user();
// });

//Get Visitor 
Route::get('/insertVisitor', [VisitorController::class, 'GetVisitorDetails']);
//contact
Route::post('/postcontact', [ContactController::class, 'PostContactDetails']);
//Site Info
Route::get('/allsiteinfo', [SiteInfoController::class, 'AllSiteinfo']);
// All Category
Route::get('/allcategory', [CategoryController::class, 'AllCategory']);
