<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Barryvdh\DomPDF\Facade\PDF;
use Illuminate\Support\Facades\Storage;

class NewPdfController extends Controller
{
    //
    public function pdfview($amount,$emai,$phone)
    {


        $data = [
            'email' => $emai,
            'date' => date('m/d/Y'),

            'amount' =>$amount,
            'phone' => $phone,
        
        ];

        $pdf = PDF::loadView('pdfview', ($data));
        // return $pdf->download('itsolutionstuff.pdf');

        $filename = time() . '.' . 'pdf';
        $file = $pdf->download($filename . '.' . 'pdf');
        $pdf = Storage::put('public' . '/' . $filename, $file);
        $url = ("http://203.129.217.245/storage/$filename");
        return $url;
    }
}
