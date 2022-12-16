<?php

namespace App\Http\Controllers;

use Anand\LaravelPaytmWallet\Facades\PaytmWallet;
use Exception;
use Illuminate\Support\Facades\Validator;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Config;
use Illuminate\Support\Facades\Storage;
use Paytm\JsCheckout\Facades\Paytm;
use paytm\checksum\PaytmChecksumLibrary;
use paytm\paytmchecksum\PaytmChecksum;
use PhpParser\Node\Stmt\Switch_;
use Razorpay\Api\Collection;
use stdClass;
use Svg\Tag\Rect;

class PaytmController extends Controller
{

    /**
     * |---------------------- Generate the transaction No for the transaction -----------------------|
     * | @param request
     * | @var generatedOrderID
     * | @var amount
     * | @var callbackUrl 
       | ($callBackUrl) : use the actual site info when the project is launched / work properly
     * | @var paytmParams
     * | @var generateSignature
     * | @var url <---------- (Caution)
     * | @var getcURLResponse
     * | @var result
     * | 
     */
    function getTransactionToken(Request $request)
    {
        $generatedOrderID = "ORDER_" . $this->randomStrings(5) . $this->randomStrings(5);
        $amount = $request->amount;
        $callbackUrl = url('api/paytm-payment');
        // $callbackUrl = $this->getSiteURL() . 'callback.php';

        $paytmParams["body"] = array(
            "requestType"     => "Payment",
            "mid"             => Config::get('services.paytm-wallet.merchant_id'),
            "websiteName"     => Config::get('services.paytm-wallet.merchant_website'),
            "orderId"         => $generatedOrderID,
            "callbackUrl"     => $callbackUrl,
            "txnAmount"       => array(
                "value" => $amount,
                "currency" => "INR",
            ),
            "userInfo"        => array(
                "custId" => "CUST_" . time(),
            ),
        );

        $generateSignature = PaytmChecksum::generateSignature(json_encode($paytmParams['body'], JSON_UNESCAPED_SLASHES),  Config::get('services.paytm-wallet.merchant_key'));

        $paytmParams["head"] = array(
            "signature"    => $generateSignature
        );


        $url = "https://securegw-stage.paytm.in" . "/theia/api/v1/initiateTransaction?mid=" . Config::get('services.paytm-wallet.merchant_id') . "&orderId=" . $generatedOrderID;

        $getcURLResponse = $this->getcURLRequest($url, $paytmParams);

        if (!empty($getcURLResponse['body']['resultInfo']['resultStatus']) && $getcURLResponse['body']['resultInfo']['resultStatus'] == 'S') {
            $result = array('success' => true, 'orderId' => $generatedOrderID, 'txnToken' => $getcURLResponse['body']['txnToken'], 'amount' => $amount, 'message' => $getcURLResponse['body']['resultInfo']['resultMsg']);
        } else {
            $result = array('success' => false, 'orderId' => $generatedOrderID, 'txnToken' => '', 'amount' => $amount, 'message' => $getcURLResponse['body']['resultInfo']['resultMsg']);
        }
        return $result;
    }


    /**
     * |---------------------------- only for the Qr code transaction -----------------------------------------|
     * | @param request
     * | @var generatedOrderID
     * | @var generatedPosId
     * | @var paytmParams
       | Call back URl (CAUTION): coded by brut force be caution. 
     * | @return response
     */
    public function onlyQrCodeTransaction(Request $request)
    {
        try {
            $generatedOrderID = "ORDER_" . $this->randomStrings(5) . $this->randomStrings(5);
            $generatedPosId = "POS_" . $this->randomStrings(3) . $this->randomStrings(7);

            $paytmParams = array();

            $paytmParams["body"] = array(
                "mid"           => Config::get('services.paytm-wallet.merchant_id'),
                "orderId"       => $generatedOrderID,
                "amount"        => $request->amount,
                "businessType"  => "UPI_QR_CODE",
                "posId"         => $generatedPosId,
            );

            $checksum = PaytmChecksum::generateSignature(json_encode($paytmParams["body"], JSON_UNESCAPED_SLASHES), Config::get('services.paytm-wallet.merchant_key'));

            $paytmParams["head"] = array(
                "clientId"          => 'C11',
                "version"           => 'v1',
                "signature"         => $checksum,
            );

            $post_data = json_encode($paytmParams, JSON_UNESCAPED_SLASHES);

            # for the time of development
            $url = "https://securegw-stage.paytm.in/paymentservices/qr/create";

            $ch = curl_init($url);
            curl_setopt($ch, CURLOPT_POST, 1);
            curl_setopt($ch, CURLOPT_POSTFIELDS, $post_data);
            curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
            curl_setopt($ch, CURLOPT_HTTPHEADER, array("Content-Type: application/json"));
            $response = curl_exec($ch);

            //  $this->savePaytmRequests($paytmParams, $response);
            //    $details=json_decode(json_encode($response), true);
            //    $details["response"] = $paytmParams["body"];
            return response()->json(["response" => $paytmParams["body"], "data" => json_decode($response)]);
        } catch (Exception $error) {
            return response()->json(["message" => $error->getMessage()]);
        }
    }



    /**
     * |------------------------------ generate a Curl API function -------------------------------------------|
     * | @param url
     * | @param postData 
     * | @param headers 
     */
    function getcURLRequest($url, $postData = array(), $headers = array("Content-Type: application/json"))
    {
        $post_data_string = json_encode($postData, JSON_UNESCAPED_SLASHES);

        $ch = curl_init($url);
        curl_setopt($ch, CURLOPT_POST, 1);
        curl_setopt($ch, CURLOPT_POSTFIELDS, $post_data_string);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        curl_setopt($ch, CURLOPT_HTTPHEADER, array("Content-Type: application/json"));
        $response = curl_exec($ch);
        return json_decode($response, true);
    }


    /**
     * |------------------------------------ get the actual site details for the call back url -----------------------|
     * | @var actual_link
     * | @return actual_link
       | (CAUTION) : use only when the project/program is ready.
     */
    function getSiteURL()
    {
        $actualLink = (isset($_SERVER['HTTPS']) && $_SERVER['HTTPS'] === 'on' ? "https" : "http") . "://" . $_SERVER['HTTP_HOST'] . $_SERVER['REQUEST_URI'];
        return str_replace('config.php', '', $actualLink);
    }



    /**
     * |------------------------------ call Back Operaton -------------------------------------------------|
     * | @param request
     */
    public function status(Request $request)
    {
        try {
            $data = collect($request);
            Storage::disk('public')->put("ALL_METHOD" . $this->randomStrings(5) . '.json', json_encode($data));

            $transaction = PaytmWallet::with('receive');
            $order_id = $transaction->getOrderId();
            $transactionId = $transaction->getTransactionId();

            $response = $transaction->response();

            switch ($transaction) {
                case ($transaction->isSuccessful()):
                    return response()->json(["message" => $response, "data" => $transaction]);
                    break;
                case ($transaction->isFailed()):
                    return response()->json(["message" => $response, "data" => ""]);
                    break;
                case ($transaction->isPending()):
                    return response()->json(["message" => $response, "data" => ""]);
                    break;
                default:
                    return response()->json(["message" => "Operation is Hampered!"]);
                    break;
            }
        } catch (Exception $error) {
            return response()->json(["message" => "error!", "data" => $error->getMessage()]);
        }
    }


    /**
     * |-------------------------------------- function for the transaction status ----------------------------------|
     * | @param request
     * | @var paytmParams
       | Check the environment "https://securegw-stage.paytm.in"
     * | @var checkSum
     */
    function transactionStatus($request)
    {
        $paytmParams = array();
        $paytmParams["body"] = array(
            "mid" => Config::get('services.paytm-wallet.merchant_id'),
            "orderId" => $request,
        );
        $checkSum = PaytmChecksum::generateSignature(json_encode($paytmParams["body"], JSON_UNESCAPED_SLASHES), Config::get('services.paytm-wallet.merchant_key'));

        $paytmParams["head"] = array(
            "signature"    => $checkSum
        );

        $post_data = json_encode($paytmParams, JSON_UNESCAPED_SLASHES);

        $url = "https://securegw-stage.paytm.in" . "/v3/order/status";

        $getcURLResponse = $this->getcURLRequest($url, $paytmParams);
        return response()->json(["data" => $getcURLResponse]);
    }



    /**
     * |----------------------------------- function for the PayTm Webhook ----------------------------------|
     * | @param request
       | Use the verification of the webhook.
     */
    public function PayTmWebhook(Request $request)
    {
        try {
            $orderId = $request->ORDERID;
            // $webhookPaytmData = collect($request);
            // Storage::disk('public')->put("PAYTM_WH_" . $this->randomStrings(5) . '.json', json_encode($webhookPaytmData));
            // return response()->json(["message" => "Webhook Data Acquire!"]);
          return  $verificationDetails = $this->verification($request);

            if ($verificationDetails == true)
                $collectTransactionStats = $this->transactionStatus($orderId);
            collect($collectTransactionStats)->map(function ($value, $key) use ($request) {
            });
        } catch (Exception $error) {
            return response()->json(["data" => $error->getMessage(), "lineNo" => $error->getLine()]);
        }
    }


    /**
     * |------------------------------------- function for the generation of random numbers -----------------------|
     * | @param length_of_string
     */
    function randomStrings($length)
    {
        $str_result = '0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz';

        return substr(
            str_shuffle($str_result),
            0,
            $length
        );
    }


    /**
     * |------------------- Verification of the Webhook data (Paytm) ------------------------------------------|
     * | @param request
     */
    public function verification($request)
    {
        try{
           $posID = $request->POS_ID;
           $orderId = $request->ORDERID;
           $status = $request->STATUS;
           $amount =$request->TXNAMOUNT;

            // $databaseData = PaymentGatewayPaytmRequest::where('pos_id',$posID)
            // ->where('order_id',$orderId)
            // ->where('amount',$amount)
            // ->get();

        //    if($databaseData)
        //    {
                
        //    }
        //    return $request;
        }
        catch(Exception $error)
        {
            return response()->json([false]);
        }
    }





















    /**
     * |
       |------------ function for the demo of the tree Structure ------------------|
     * |
     */
    // public function generate()
    // {
    //     // $data = array(
    //     //     array('id' => 1, 'parent_id' => null, 'name' => 'lorem ipsum'),
    //     //     array('id' => 2, 'parent_id' => 1, 'name' => 'lorem ipsum1'),
    //     //     array('id' => 3, 'parent_id' => 1, 'name' => 'lorem ipsum2'),
    //     //     array('id' => 4, 'parent_id' => 2, 'name' => 'lorem ipsum3'),
    //     //     array('id' => 5, 'parent_id' => 3, 'name' => 'lorem ipsum4'),
    //     //     array('id' => 6, 'parent_id' => 5, 'name' => 'lorem ipsum5'),
    //     // );

    //     // $itemsByReference = array();

    //     // foreach ($data as $key => &$item) {
    //     //     $itemsByReference[$item['id']] = &$item;
    //     //     $itemsByReference[$item['id']]['children'] = array();

    //     // }

    //     // // Set items as children of the relevant parent item.

    //     // foreach ($data as $key => &$item)
    //     //     if ($item['id'] == isset($itemsByReference[$item['parent_id']]))
    //     //         $itemsByReference[$item['parent_id']]['children'][] = &$item;

    //     //     // Remove items that were added to parents elsewhere:
    //     //     foreach($data as $key => &$item) {
    //     //        if($item['parent_id'] && isset($itemsByReference[$item['parent_id']]))
    //     //           unset($data[$key]);
    //     //     }
    //     //    return  $data;
    // }

    // dummy function
    // public function statuuus(Request $req)
    // {
    //     return ("this");
    //     $transaction = PaytmWallet::with('receive');

    //     $response = $transaction->response();
    //     return response()->json(["data" => collect($response)]);
    //     $order_id = $transaction->getOrderId(); // return a order id

    //     // return collect($transaction);
    //     return $transaction->getTransactionId(); // return a transaction id
    //     // update the db data as per result from api call
    //     if ($transaction->isSuccessful()) {
    //         return redirect(route('initiate.payment'))->with('message', "Your payment is successfull.");
    //     } else if ($transaction->isFailed()) {
    //         return redirect(route('initiate.payment'))->with('message', "Your payment is failed.");
    //     } else if ($transaction->isOpen()) {
    //         return redirect(route('initiate.payment'))->with('message', "Your payment is processing.");
    //     }
    //     $transaction->getResponseMessage(); //Get Response Message If Available
    // }
}
