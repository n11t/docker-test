<?php
require_once __DIR__ . '/../vendor/autoload.php';

$app = new N11t\Application();

$app->get('/', function() {
	return 'Hallo Welt';
});

$app->run();
