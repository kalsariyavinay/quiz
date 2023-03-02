<?php


use App\Http\Controllers\HomeController;
use App\Http\Controllers\AskController;
use App\Http\Controllers\LogoutController;
use App\Http\Controllers\TestController;
use App\Http\Controllers\Admin\DashboardController;
use App\Http\Controllers\Admin\PermissionController;
use App\Http\Controllers\Admin\RoleController;
use App\Http\Controllers\Admin\UserController;
use App\Http\Controllers\Admin\CategoryController;
use App\Http\Controllers\Admin\QuestionController;
use App\Http\Controllers\Admin\OptionController;
use App\Http\Controllers\Admin\ResultController;
use Illuminate\Support\Facades\App;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Route;
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
  return redirect()->route('client.test');
});

Route::group(['middleware' => 'auth'], function() {
   
  Route::get('Test',[TestController::class, 'index'])->name('client.test');
  Route::post('Test',[TestController::class, 'store'])->name('client.test.store');
  Route::get('results/{result_id}',[\App\Http\Controllers\ResultController::class, 'show'])->name('client.results.show');
  Route::resource('ask', AskController::class);

  
  Route::group(['middleware' => 'isAdmin','prefix' => 'admin', 'as' => 'admin.'], function() {
    Route::get('dashboard', [DashboardController::class, 'index'])->name('dashboard.index');
    Route::resource('permissions', PermissionController::class);
    Route::delete('permissions_mass_destroy', [PermissionController::class, 'massDestroy'])->name('permissions.mass_destroy');
    Route::resource('roles', RoleController::class);
    Route::delete('roles_mass_destroy', [RoleController::class, 'massDestroy'])->name('roles.mass_destroy');
    Route::resource('users', UserController::class);
    Route::delete('users_mass_destroy', [UserController::class, 'massDestroy'])->name('users.mass_destroy');

    // categories
    Route::resource('categories', CategoryController::class);
    Route::delete('categories_mass_destroy', [CategoryController::class, 'massDestroy'])->name('categories.mass_destroy');

    // questions
    Route::resource('questions', QuestionController::class);
    Route::delete('questions_mass_destroy', [QuestionController::class, 'massDestroy'])->name('questions.mass_destroy');

    // options
    Route::resource('options', OptionController::class);
    Route::delete('options_mass_destroy', [OptionController::class, 'massDestroy'])->name('options.mass_destroy');

    // results
    Route::resource('results', ResultController::class);
    Route::delete('results_mass_destroy', [ResultController::class, 'massDestroy'])->name('results.mass_destroy');

  
  });

});

Auth::routes();

Route::group(['middleware' => ['auth']], function() {

    Route::get('/logout',[LogoutController::class,'perform'])->name('logout.perform');
    
 });

Route::get('/', [HomeController::class, 'index'])->name('home');
Route::get('ask', [HomeController::class, 'ask'])->name('ask');

//admin routes section

Route::get('/admin/login', [HomeController::class, 'adminlogin'])->name('adminlogin');
Route::post('admin/adminloginpost',[HomeController::class,'adminloginpost'])->name('adminLoginPost');
Route::group(['prefix' =>'admin','middleware' => ['admin']], function(){
  Route::get('/',[HomeController::class,'dashboard'])->name('dashboard');


});

// user routrs section
Route::post('user/adminloginpost',[HomeController::class,'userloginpost'])->name('userLoginPost');
