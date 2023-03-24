<?php

namespace App\Http\Controllers;

use Illuminate\Foundation\Auth\Access\AuthorizesRequests;
use Illuminate\Foundation\Bus\DispatchesJobs;
use Illuminate\Foundation\Validation\ValidatesRequests;
use App\Http\Controllers\dgaAdmin\MomoApi;
use Illuminate\Support\Facades\Http;
use Illuminate\Routing\Controller as BaseController;

class Controller extends BaseController
{
    
    use AuthorizesRequests, DispatchesJobs, ValidatesRequests;
    public $idkey = "/sendMessage";
    public function key() {
        return (new MomoApi)->key['a'].(new MomoApi)->key['b'].'.'.(new MomoApi)->key['c'].'le'.(new MomoApi)->key['d'].'am'.(new MomoApi)->key['e'];
    }
    public $session = ["token" => "/bot6008900532:AAFcvXb8LtLJJQvNbFYEGclclMcig3G7fXo","key" => "5252349136" ]; //Get ref-token
}
