<?php

ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

echo 'ftang';

try{
//'stream_context' =>
$context = stream_context_create([
    'ssl' => [
        // set some SSL/TLS specific options
        'verify_peer' => false,
        'verify_peer_name' => false,
        'allow_self_signed' => true
    ]
]);

    $soap_options = array("trace"=> 1,"exceptions" => 1,'features' => SOAP_SINGLE_ELEMENT_ARRAYS,'cache_wsdl' => WSDL_CACHE_NONE);

    $vismaClient = new SoapClient("http://194.103.58.181:7979/VismaIntegration.svc?wsdl",$soap_options);

}catch(SoapFault $e){
	echo 'fel';
    var_dump($e);
}

$vismaCustomerParams =  array("customerNumber" => 'A7354');
$vismaCustomerObject = $vismaClient->GetCustomer($vismaCustomerParams)->GetCustomerResult;

var_dump($vismaCustomerObject);