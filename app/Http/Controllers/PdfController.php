<?php

namespace App\Http\Controllers;

use Barryvdh\DomPDF\Facade\PDF;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;


class PdfController extends Controller
{
    //
    public function pdefview(Request $request)
    {


        $data = [
            'title' => 'Welcome to Aadrika Sam',
            'date' => date('m/d/Y'),
            'name' => $request->name,
            'phone' => $request->phone,
        
        ];

        $pdf = PDF::loadView('abc', ($data));
        // return $pdf->download('itsolutionstuff.pdf');

        $filename = time() . '.' . 'pdf';
        $file = $pdf->download($filename . '.' . 'pdf');
        $pdf = Storage::put('public' . '/' . $filename, $file);
        $url = asset("/storage/$filename");
        return response()->json(["status" => true, "data" => $url]);
    }






    // //saving the data
    // public function store(Request $request)
    // {
    //     $device = new PdfData;
    //     $device->name = $request->name;
    //     $device->phone = $request->phone;

    //     $device->save();
    //     return response($device);
    //     // return redirect('/pdfgenerate')->with('success', 'Your PDF Data is successfully saved');
    // }
}
