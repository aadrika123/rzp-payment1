<?php

namespace App\Http\Controllers;

use App\Models\CardDetail;
use App\Models\PaymentReject;
use App\Models\PaymentRequests;
use App\Models\PaymentSuccess;
// use App\Models\WebhookPayment;
use App\Models\WebhookPaymentData;
use Exception;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Razorpay\Api\Api;
use Razorpay\Api\Test\RazorpayTest;
use Illuminate\Support\Str;
use Razorpay\Api\Errors\SignatureVerificationError;
use Illuminate\Support\Facades\Storage;
use App\Http\Controllers\NewPdfController;
use Illuminate\Support\Facades\Http;
use Illuminate\Support\Facades\Validator;

class RazorpayPaymentController extends Controller
{

    private $razorpayId = "rzp_test_3MPOKRI8WOd54p";
    private $razorpayKey = "k23OSfMevkBszuPY5ZtZwutU";
    private $razerWebhookSecret = "something";

    //payment gebnerating order id
    public function store(Request $request)
    {
        #code....
        $validated = Validator::make(
            $request->all(),
            [
                'amount' => 'required|max:200',
            ]
        );
        if ($validated->fails()) {
            return response()->json([
                'status' => false,
                'message' => 'validation error',
                'errors' => $validated->errors()
            ], 401);
        }

        DB::beginTransaction();
        try {
            $reciptId = Str::random(10);
            $api = new Api($this->razorpayId, $this->razorpayKey);

            $order = $api->order->create(array(
                'receipt' => $reciptId,
                'amount' => $request->all()['amount'] * 100,
                'currency' => 'INR',
            ));
            $data = [
                'orderId' => $order['id'],
                'amount' => $request->all()['amount'],
                'currency' => 'INR',

            ];
            #   (condition applied)
            // $existence = DB::table('payment_requests');
            // if(PaymentRequests::where('apppartment_id', $request->apppartmentId)->exists() || PaymentRequests::where('consumer_id',$request->consumerId)->exists())

            //storing the detail in the database
            $tran = new PaymentRequests();
            $tran->apppartment_id = $request->apppartmentId;
            $tran->consumer_id = $request->consumerId;
            $tran->razorpay_order_id = $data['orderId'];
            $tran->amount = $request->amount;
            $tran->currency = 'INR';
            $tran->save();

            DB::commit();

            return response()->json([
                "status" => true, "message" => "Order Id Generated",
                "data" => $data
            ]);
        } catch (Exception $error) {
            return response()->json([$error]);
        }
    }

    //verification of the signature
    function verify(Request $request, $attributes)
    {
        // validation 
        $validated = Validator::make(
            $request->all(),
            [
                'razorpay_order_id' => 'required',
                'razorpay_payment_id' => 'required',
                'razorpay_signature' => 'required'
            ]
        );
        if ($validated->fails()) {
            return response()->json([
                'status' => false,
                'message' => 'validation error',
                'errors' => $validated->errors()
            ], 401);
        }

        // operation
        $success = false;
        $error = "Payment Failed!";
        // verify the existence of the razerpay Id
        if (!empty($request->razorpayPaymentId)) {
            $api = new Api($this->razorpayId, $this->razorpayKey);
            try {
                $attributes = [
                    'razorpay_order_id' => $request->razorpayOrderId,
                    'razorpay_payment_id' => $request->razorpayPaymentId,
                    'razorpay_signature' => $request->razorpaySignature
                ];
                $api->utility->verifyPaymentSignature($attributes);
                $success = true;
            } catch (SignatureVerificationError $e) {
                $success = false;
                $error = 'Razorpay Error : ' . $e->getMessage();
            }
        }
        // validation complete and the storing of data
        if ($success === true) {
            // Update database with success data
            try {

                $data = new PaymentSuccess();
                $data->razerpay_order_id = $request->razorpayOrderId;
                $data->razerpay_payment_id = $request->razorpayPaymentId;
                $data->razerpay_signature = $request->razorpaySignature;
                $data->save();
                // Redirect to success page
                return response()->json(["message" => "Payment Success!"]);
            } catch (Exception $e) {
                return response($e);
            }
        }
        // Update database with error data
        $data = new PaymentReject();
        $data->razerpay_order_id = $request->razorpayOrderId;
        $data->razerpay_payment_id = $request->razorpayPaymentId;
        $data->razerpay_signature = $request->razorpaySignature;
        $data->save();
        return response()->json([$error]);
    }

    // the integration of the webhook
    public function webhook(Request $request)
    {
        $success = false;
        #   verification of the webhook
        // try {
        //     $api = new Api($this->razorpayId, $this->razorpayKey);
        //     $webhookBody = $request->all()['data'];
        //     // $data = array_merge($request->all(), ['index' => 'value']);
        //     $webhookSignature = $request->webhookSignature;
        //     $webhookSecret = $this->razerWebhookSecret;
        //     $api->utility->verifyWebhookSignature($webhookBody, $webhookSignature, $webhookSecret);
        //     $success = true;
        // }
        // #   error 
        // catch (SignatureVerificationError $e) {
        //     $success = false;
        //     $error = 'Razorpay Error : ' . $e->getMessage();
        //     return response()->json([$error]);
        // }

        #   Data from webhook to json file 
        $dataOfRequest = $request->all();
        $accountId = $request->payload['payment']['entity']['id'];
        Storage::disk('public')->put($accountId . '.json', json_encode($dataOfRequest));

        #   data to be saved in card detail table
        $aCard = $request->payload['payment']['entity']['card_id'];
        if (!is_null($aCard)) {

            $card = new CardDetail();
            $card->id = $request->payload['payment']['entity']['card']['id'];
            $card->entity = $request->payload['payment']['entity']['card']['entity'];
            $card->name = $request->payload['payment']['entity']['card']['name'];
            $card->last4 = $request->payload['payment']['entity']['card']['last4'];
            $card->network = $request->payload['payment']['entity']['card']['network'];
            $card->type = $request->payload['payment']['entity']['card']['type'];
            $card->issuer = $request->payload['payment']['entity']['card']['issuer'];
            $card->international = $request->payload['payment']['entity']['card']['international'];
            $card->emi = $request->payload['payment']['entity']['card']['emi'];
            $card->sub_type = $request->payload['payment']['entity']['card']['sub_type'];
            $card->save();
        }

        # data storing in the database
        $something = json_encode($request->contains);
        # data of notes through request
        $notes = json_encode($request->payload['payment']['entity']['notes']);
        # data of the key of the aquired data 
        $arrayInAquirer = $dataOfRequest['payload']['payment']['entity']['acquirer_data'];
        $firstKey = array_key_first($arrayInAquirer);

        # data to be stored in the database       
        $data = new WebhookPaymentData();
        $data->entity                       = $request->entity;
        $data->account_id                   = $request->account_id;
        $data->event                        = $request->event;
        $data->contains                     = $something; //<---------- this
        $data->payment_id                   = $request->payload['payment']['entity']['id'];
        $data->payment_entity               = $request->payload['payment']['entity']['entity'];
        $data->payment_amount               = $request->payload['payment']['entity']['amount'];
        $data->payment_currency             = $request->payload['payment']['entity']['currency'];
        $data->payment_status               = $request->payload['payment']['entity']['status'];
        $data->payment_order_id             = $request->payload['payment']['entity']['order_id'];
        $data->payment_invoice_id           = $request->payload['payment']['entity']['invoice_id'];
        $data->payment_international        = $request->payload['payment']['entity']['international'];
        $data->payment_method               = $request->payload['payment']['entity']['method'];
        $data->payment_amount_refunded      = $request->payload['payment']['entity']['amount_refunded'];
        $data->payment_refund_status        = $request->payload['payment']['entity']['refund_status'];
        $data->payment_captured             = $request->payload['payment']['entity']['captured'];
        $data->payment_description          = $request->payload['payment']['entity']['description'];
        $data->payment_card_id              = $request->payload['payment']['entity']['card_id'];
        $data->payment_bank                 = $request->payload['payment']['entity']['bank'];
        $data->payment_wallet               = $request->payload['payment']['entity']['wallet'];
        $data->payment_vpa                  = $request->payload['payment']['entity']['vpa'];
        $data->payment_email                = $request->payload['payment']['entity']['email'];
        $data->payment_contact              = $request->payload['payment']['entity']['contact'];
        $data->payment_notes                = $request->$notes;  //<-----here
        $data->payment_fee                  = $request->payload['payment']['entity']['fee'];
        $data->payment_tax                  = $request->payload['payment']['entity']['tax'];
        $data->payment_error_code           = $request->payload['payment']['entity']['error_code'];
        $data->payment_error_description    = $request->payload['payment']['entity']['error_description'];
        $data->payment_error_source         = $request->payload['payment']['entity']['error_source'];
        $data->payment_error_step           = $request->payload['payment']['entity']['error_step'];
        $data->payment_error_reason         = $request->payload['payment']['entity']['error_reason'];
        $data->payment_acquirer_data_type   = $firstKey;    //<------------here
        $data->payment_acquirer_data_value  = $request->payload['payment']['entity']['acquirer_data'][$firstKey];
        $data->payment_created_at           = $request->payload['payment']['entity']['created_at'];
        $data->webhook_created_at          = $request->created_at;

        $save = $data->save();
        if ($save) {
            #   object calling 
            $obj = new NewPdfController();
            $amount = $request->payload['payment']['entity']['amount'];
            $emai = $request->payload['payment']['entity']['email'];
            $phone = $request->payload['payment']['entity']['contact'];
            $url = $obj->pdfview($amount, $emai, $phone);
            //  $url =stripcslashes($url);              //<-------------------------- here

            # calling an api for the message in watsapp
            $token = Http::withHeaders([

                "Authorization" => "Bearer EAAIZBvM1yOr0BAJdUaSCxm3msSpOIeJaTHYEcIX541VTataq81i3Ja9TwZBGgZCfkyZA6RsO3O0Aoz5yZBEUxdFfDgI93xZAZAkZCYGoLjUzLvdvTRc2xyLtnBzszbTdK9e6XZCMpGiR2y3ZBYjNq3BFVCSflozWaAJfHYPAHnozUEDYJTr2MhQmjvZCU3jQ6ZBX9Lpw69M1ZCH5oHOeRfINr08Xm3uTw9bL4QngZD",
                "contentType" => "application/json"

            ])->post('https://graph.facebook.com/v15.0/103215889230412/messages', [
                "messaging_product" => "whatsapp",
                "recipient_type" => "individual",
                "to" => $phone, //<--------------------- here
                "type" => "template",
                "template" => [
                    "name" => "file_test",
                    "language" => [
                        "code" => "en_US"
                    ],
                    "components" => [
                        [
                            "type" => "header",
                            "parameters" => [
                                [
                                    "type" => "document",
                                    "document" => [
                                        "link" => $url, //<--------------------- here
                                        "filename" => "Payment Receipt.pdf"
                                    ]
                                ]
                            ]
                        ],
                    ]
                ]
            ]);

            if ($token) {   // <------------------- may use catch
                return response()->json(["message" => "message send!", "data" => $token]);
            }
            return response()->json(["message errer !"]);
        }
        return response()->json(["data saving error !"]);
    }

    // show the payment data through database
    public function response()
    {
        $dataOfPaymentExceptCard =  DB::table('webhook_payment_data')
            ->select(array(
                'event',
                'payment_amount',
                'payment_status',
                'payment_order_id',
                'payment_contact',
                'payment_method',
                'payment_email'
            ))->get();

        return response()->json(["status"=>true,"message"=>"Data of all the payment","data" => $dataOfPaymentExceptCard]);
    }
}
