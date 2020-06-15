<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Libraries\GeoTracker;

class AdminController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    function index()
    {
        //subtract 1 month from timestrap
        $monthly = \App\GeoTrack::where('last_login', '>', strtotime("-1 Month",time()))->count();
        //subtract 1 day from timestamp
        $daily = \App\GeoTrack::where('last_login', '>', strtotime("-1 Day",time()))->count();
        $always = \App\GeoTrack::count();

        //continent wise visitor calculation
        $asia = \App\GeoTrack::where('continent','LIKE','%AS%')->count();
        $visitor = collect(['asia' => $asia]);
        $visitor->put('europe', \App\GeoTrack::where('continent','LIKE','%EU%')->count());
        $visitor->put('north', \App\GeoTrack::where('continent','LIKE','%NA%')->count());
        $visitor->put('south', \App\GeoTrack::where('continent','LIKE','%SA%')->count());
        $visitor->put('australia', \App\GeoTrack::where('continent','LIKE','%AU%')->count());
        $visitor->put('africa', \App\GeoTrack::where('continent','LIKE','%AF%')->count());

        //message counter
        $numOfMessage = \App\Feedback::where('is_solved',false)->count();

        return view('admin.index', [
            'title' => 'Adimn - Dashboard',
            'monthly' => $monthly,
            'daily' => $daily,
            'always' => $always,
            'visitor' => $visitor,
            'numOfMessage' => $numOfMessage
        ]);
    }

    //list all site visitors
    function listVisitors() {
        $data = \App\GeoTrack::orderBy('last_login', 'DESC')->get();

        return view('admin.visitors', [
            'title' => 'Visitors',
            'data' => $data
        ]);
    }

    //delete or update visitor data in database
    function modifyVisitors(Request $request) {
        if ($request->task == 'delete') {
            \App\GeoTrack::truncate(); //deleting all data

            return response()->json(['message'=>'deleted']);
        } else { //populating DB with IP Geo data
            $tracker = new GeoTracker("a2ad29a97ca149bbbadbc2c3ed786248"); //API key of IPGeolocation.io
            $tracker->populate();

            return response()->json(['message'=>'updated']);
        }
    }

    //list all messages from customer
    function messages() {
        $data = \App\Feedback::orderBy('created_at', 'DESC')->get();

        return view('admin.messages', [
            'title' => 'All Messages',
            'data' => $data
        ]);
    }

    //toggle solved status or delete specific message in DB
    function modifyMessages(Request $request) {
        $message = \App\Feedback::find($request->id);

        if($request->work == 'remove') {
            $message->delete();
            return response()->json(['info' => "Deleted"]);
        } else if($request->work == 'toggle') {
            $message = $message->toggleSolved(); //custom function in Feedback model
            $message->save();

            return response()->json(['info' => "Toggled"]);
        }
    }

    //configuration page viewer
    function showSettings() {
        $data = getConfig('data.json');
        return view('admin.settings', ['title'=>'Settings','data'=>$data]);
    }

    //configuration page editor
    function editSettings(Request $request) {
        $data['home_banner_1'] = $request->home_banner_1;
        $data['home_banner_2'] = $request->home_banner_2;
        $data['upcoming_product'] = $request->upcoming_product;
        $data['support_email'] = $request->support_email;
        $data['admin_login_image'] = $request->admin_login_image;

        setConfig('data.json',$data);
        return back();
    }
}
