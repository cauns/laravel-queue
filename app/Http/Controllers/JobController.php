<?php

namespace App\Http\Controllers;

use App\Jobs\SendWelcomeEmail;

class JobController extends Controller
{
    public function processQueue()
    {
        $emailJob = new SendWelcomeEmail();
        dispatch($emailJob);
    }
}
