<?php

namespace App\Http\Controllers;

use App\Customer;
use Carbon\Carbon;
use Illuminate\Http\Request;

class CustomerController extends Controller
{
    public function home(){
    	$data = Customer::latest()->paginate(5);
    	return view("customer.home", compact("data"));
    }

    public function add(Request $get){
    	
    	$insert = Customer::insert([
    		"name" => $get->name,
    		"phone" => $get->phone,
    		"email" => $get->email,
    		"district" => $get->district,
    		"created_at" => Carbon::now()
    	]);

    	if($insert){
    		return response()->json("success");
    	}else{
    		return response()->json("error");
    	}
    }

    public function getdata(){
    	$data = Customer::latest()->paginate(5);
    	$sl = 1;
    	return view("customer.response", compact("data", "sl"));
    }

    public function viewdata(Request $get){
    	$id = $get->id;
    	$customer = Customer::find($id);
    	return $customer;
    }

    public function deletedata(Request $get){
    	$id = $get->id;
    	$delete = Customer::where("id", $id)->delete();
    	if($delete){
    		return response()->json("success");
    	}else{
    		return response()->json("error");
    	}
    }

    public function editurl(Request $get){
    	$id = $get->id;
    	$data = Customer::find($id);
    	return $data;
    }


    public function update(Request $get){
    	$update = Customer::where("id", $get->id)->update([
    		"name"  => $get->name,
    		"phone" => $get->phone,
    		"email" => $get->email,
    		"district" => $get->district,
    		"updated_at" => Carbon::now()
    	]);
    	if($update){
    		return response()->json("success");
    	}else{
    		return response()->json("error");
    	}
    }

    public function getpagination(){
    	$data = Customer::latest()->paginate(5);
    	$sl = 1;
    	return view("customer.paginate", compact("data", "sl"));
    }
}
