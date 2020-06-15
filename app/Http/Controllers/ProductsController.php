<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Validator;
use App\Libraries\ThumbGen;
use Illuminate\Support\Facades\File;

//Controller for managing products from Admin panel
class ProductsController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }   

    public function listMango() {
    	$mangoes = \App\Mango::all();
    	
    	return view('admin.products.list', [
    		'title' => 'All mangoes',
    		'data' => $mangoes,
            'type' => 'mango'
    	]);
    }

	public function listRice() {
    	$rice = \App\Rice::all();
    	
    	return view('admin.products.list', [
    		'title' => 'All rice',
    		'data' => $rice,
            'type' => 'rice'
    	]);
    }

    public function listOther() {
        $products = \App\otherProduct::all();
        
        return view('admin.products.list', [
            'title' => 'All Products',
            'data' => $products,
            'type' => 'other'
        ]);
    }

    //delete any product from DB
    public function delete(Request $request) {
        if ($request->type == 'mango')
            $product = \App\Mango::find($request->id);
        else if ($request->type == 'rice')
            $product = \App\Rice::find($request->id);
        else if ($request->type == 'other')
            $product = \App\otherProduct::find($request->id);
        else            
            return response()->json([
                'error' => 'Unknown type'
            ]);

        //deleting image from server
        $image_path = public_path() ."/uploads/". $product->image;

        if (File::exists($image_path))
            File::delete($image_path);

        //deleting thumbnail from server
        $thumb_path = public_path() ."/uploads/thumbs/". $product->image;

        if (File::exists($thumb_path))
            File::delete($thumb_path);

        $product->delete();

        return response()->json([
            'id' => $request->id,
            'message' => 'Successfully deleted'
        ]);
    }

    public function showAddMango() {
        return view('admin.products.addMango', [ 'title' => 'Add New Mango']);
    }

    public function addMango(Request $request) {
        $request->validate([
            'image' => 'required|image|mimes:png,jpg,jpeg,gif|max:3072',
            'name' => 'required|max:30|string',
            'description' => 'max:255'
        ]);

        //processing image file
        $image = $request->file('image');
        $newName = time() . "." . $image->getClientOriginalExtension(); //generate new name for image
        $image->move(public_path('uploads'), $newName); //saving image in server
        ThumbGen::create_cropped_thumbnail(public_path("/uploads/".$newName)."", 360, 300, public_path("/uploads/thumbs"));

        \App\Mango::create([
            'name' => $request->name,
            'price' => $request->price,
            'image' => $newName,
            'user_id' => $request->user_id,
            'in_stock' => $request->has('available'),
            'min_order' => $request->min_order,
            'description' => $request->description,
            'origin' => $request->origin,
            'color' => $request->color,
            'avg_weight' => $request->avg_weight,
            'cultivation_type' => $request->cultivation_type,
            'variety' => $request->variety,
            'grade' => $request->grade,
            'size' => $request->size,
            'style' => $request->style,
            'type' => $request->type,
            'ripening' => $request->ripening
        ]);

        return back();
    }

    public function editMango(Request $request, $id) {
        $request->validate([
            'image' => 'image|mimes:png,jpg,jpeg,gif|max:3072',
            'name' => 'required|max:30|string'
        ]);

        $newName = \App\Mango::select('image')->where('id',$id)->first()->image;

        if ($request->has('image')) {
            //deletion of previous image
            $image_path = public_path() ."/uploads/". $newName;

            if (File::exists($image_path))
                File::delete($image_path);

            $thumb_path = public_path() ."/uploads/thumbs/". $newName;

            if (File::exists($thumb_path))
                File::delete($thumb_path);
            //deletion ends

            $image = $request->file('image');
            $newName = time() . "." . $image->getClientOriginalExtension(); //generate new name for image
            $image->move(public_path('uploads'), $newName); //saving image in server
            //creating thumbnail
            ThumbGen::create_cropped_thumbnail(public_path("/uploads/".$newName)."", 360, 300, public_path("/uploads/thumbs"));
        }

        \App\Mango::where('id',$id)->update([
            'name' => $request->name,
            'price' => $request->price,
            'image' => $newName,
            'user_id' => $request->user_id,
            'in_stock' => $request->has('available'),
            'min_order' => $request->min_order,
            'description' => $request->description,
            'origin' => $request->origin,
            'color' => $request->color,
            'avg_weight' => $request->avg_weight,
            'cultivation_type' => $request->cultivation_type,
            'variety' => $request->variety,
            'grade' => $request->grade,
            'size' => $request->size,
            'style' => $request->style,
            'type' => $request->type,
            'ripening' => $request->ripening
        ]);

        return back();
    }

    public function showAddRice() {
        return view('admin.products.addRice', [ 'title' => 'Add New Rice']);
    }

    public function addRice(Request $request) {
        $request->validate([
            'image' => 'required|image|mimes:png,jpg,jpeg,gif|max:3072',
            'name' => 'required|max:30|string',
            'description' => 'max:255'
        ]);

        $image = $request->file('image');
        $newName = time() . "." . $image->getClientOriginalExtension(); //generate new name for image
        $image->move(public_path('uploads'), $newName); //saving image in server
        ThumbGen::create_cropped_thumbnail(public_path("/uploads/".$newName)."", 360, 300, public_path("/uploads/thumbs"));

        \App\Rice::create([
            'name' => $request->name,
            'price' => $request->price,
            'image' => $newName,
            'user_id' => $request->user_id,
            'in_stock' => $request->has('available'),
            'min_order' => $request->min_order,
            'description' => $request->description
        ]);

        return back(302, ['success' => true]); //sending success message to redirect
    }

    public function editRice(Request $request, $id) {
        $request->validate([
            'image' => 'image|mimes:png,jpg,jpeg,gif|max:3072',
            'name' => 'required|max:30|string'
        ]);

        $newName = \App\Rice::select('image')->where('id',$id)->first()->image;

        if ($request->has('image')) {
            //deletion of previous image
            $image_path = public_path() ."/uploads/". $newName;

            if (File::exists($image_path))
                File::delete($image_path);

            $thumb_path = public_path() ."/uploads/thumbs/". $newName;

            if (File::exists($thumb_path))
                File::delete($thumb_path);
            //deletion ends

            $image = $request->file('image');
            $newName = time() . "." . $image->getClientOriginalExtension();
            $image->move(public_path('uploads'), $newName); //saving image in server
            //creating thumbnail
            ThumbGen::create_cropped_thumbnail(public_path("/uploads/".$newName)."", 360, 300, public_path("/uploads/thumbs"));
        }

        \App\Rice::where('id',$id)->update([
            'name' => $request->name,
            'price' => $request->price,
            'image' => $newName,
            'user_id' => $request->user_id,
            'in_stock' => $request->has('available'),
            'min_order' => $request->min_order,
            'description' => $request->description
        ]);

        return back();
    }

    public function showAddOther() {
        return view('admin.products.addOther', [ 'title' => 'Add New Product' ]);
    }

    public function addOther(Request $request) {
        $request->validate([
            'image' => 'required|image|mimes:png,jpg,jpeg,gif|max:3072',
            'name' => 'required|max:30|string'
        ]);

        $image = $request->file('image');
        $newName = time() . "." . $image->getClientOriginalExtension(); //generate new name for image
        $image->move(public_path('uploads'), $newName); //saving image in server
        //creating thumbnail
        ThumbGen::create_cropped_thumbnail(public_path("/uploads/".$newName)."", 360, 300, public_path("/uploads/thumbs"));

        //making unique viewid, trimming whitespace and making lower case character
        $viewid = strtolower(str_replace(' ', '', $request->name));

        \App\otherProduct::create([
            'name' => $request->name,
            'condition' => $request->condition,
            'price' => $request->price,
            'user_id' => $request->user_id,
            'image' => $newName,
            'in_stock' => $request->has('available'),
            'view_id' => $viewid,
            'min_order' => $request->min_order,
            'description' => $request->description
        ]);

        return back(); //sending success message to redirect
    }

    public function editOther(Request $request, $id) {
        $request->validate([
            'image' => 'image|mimes:png,jpg,jpeg,gif|max:3072',
            'name' => 'required|max:30|string'
        ]);

        $newName = \App\otherProduct::select('image')->where('id',$id)->first()->image;
        
        if ($request->has('image')) {
            //deletion of previous image
            $image_path = public_path() ."/uploads/". $newName;

            if (File::exists($image_path))
                File::delete($image_path);

            $thumb_path = public_path() ."/uploads/thumbs/". $newName;

            if (File::exists($thumb_path))
                File::delete($thumb_path);
            //deletion ends

            $image = $request->file('image');
            $newName = time() . "." . $image->getClientOriginalExtension();
            $image->move(public_path('uploads'), $newName); //saving image in server
            //creating thumbnail
            ThumbGen::create_cropped_thumbnail(public_path("/uploads/".$newName)."", 360, 300, public_path("/uploads/thumbs"));

        }

        //making unique viewid, trimming whitespace and making lower case character
        $viewid = strtolower(str_replace(' ', '', $request->name));

        \App\otherProduct::where('id',$id)->update([
            'name' => $request->name,
            'condition' => $request->condition,
            'price' => $request->price,
            'user_id' => $request->user_id,
            'image' => $newName,
            'in_stock' => $request->has('available'),
            'view_id' => $viewid,
            'min_order' => $request->min_order,
            'description' => $request->description            
        ]);

        return back();
    }


    public function showEditMango($id) {
        $product = \App\Mango::find($id);

        if ($product) {
            return view('admin.products.editMango', [
                'title' => 'Edit '.$product->name,
                'data' => $product
            ]);
        } else
            abort(404);
        
    }

    public function showEditRice($id) {
        $product = \App\Rice::find($id);

        if($product) {
            return view('admin.products.editRice', [
                'title' => 'Edit '.$product->name,
                'data' => $product
            ]);
        } else
            abort(404);
    }

    public function showEditOther($id) {
        $product = \App\otherProduct::find($id);

        if($product) {
            return view('admin.products.editOther', [
                'title' => 'Edit Product',
                'data' => $product,
            ]);
        } else
            abort(404);
    }
}
