<?php

namespace N11t\DockerTest;

use Silex\Application as SilexApplication;

class Application extends SilexApplication
{

    public function __construct()
    {
        parent::__construct();
        $this['debug'] = true;
    }
}
