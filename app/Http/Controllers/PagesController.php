<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class PagesController extends Controller
{
	//router for home page
    function home() {
        trackIP();

        $data = getConfig('data.json');
        return view('home', ['title' => 'Home', 'data' => $data]);
    }

    //router for contact page
    function contact() {
        trackIP();

    	return view('contact', ['title' => 'Contact Us']);
    }

    //router for payment page
    function payment()
    {
        trackIP();

    	return view('payment', ['title' => 'Payment']);
    }

    //router for shipping page
    function shipping() {
    	return view('shipping', ['title' => 'Shipping']);
    }

    //Router for showing otherproduct for specific viewId
    function product($name) {
        trackIP();
        $data = \App\otherProduct::where('view_id', $name)->first();

        if ($data)
            return view('products/product', ['data' => $data, 'title' => $data->name]);
        else
            abort(404); //product not found with viewId
    }

    function mango() {
        trackIP();
        $data = \App\Mango::all();

        return view('products/mango', [ 'data' => $data, 'title' => 'Mango']);
    }

    //Router for viewing single mango
    function mangoView($id) {
        $data = \App\Mango::find($id);

        if ($data)
            return view('products/mangoView', [ 'data' => $data, 'title' => $data->name]);
        else
            abort(404);
    }

    function rice() {
        trackIP();
        $data = \App\Rice::inRandomOrder()->get();

        return view('/products/rice', [ 'data' => $data, 'title' => 'Rice']);
    }

    //receives customer's message and processes it
    function getFeedback(Request $request) {
        trackIP();
        $request->validate([
            'name' => 'required|string|max:30',
            'email' => 'required|email'
        ]);

        $data = \App\Feedback::create([
            'name' => $request->name,
            'email' => $request->email,
            'message' => $request->message
        ]);

        return response()->json([
            'message' => "Message sent sucessfully",
            'token' => 'fdbk#'.$data->id
        ]);
    }
}
