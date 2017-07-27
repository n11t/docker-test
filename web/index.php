<?php
require_once __DIR__ . '/../vendor/autoload.php';

use N11t\DockerTest\Application;
use Silex\Provider\DoctrineServiceProvider;

$app = new Application();

$app->register(new DoctrineServiceProvider(), [
	'db.options' => [
		'driver' => 'pdo_mysql',
		'host' => 'db',
		'port' => 3306,
		'dbname' => 'dev',
		'user' => 'dev',
		'password' => 'dev',
		'charset' => 'utf8',
	]
]);

$app->get('/', function() {
	return 'Hallo Welt';
});

$app->get('/blog', function() use ($app) {
	$posts = $app['db']->fetchAll('SELECT * FROM posts');

	$htmlArray = [];
	$htmlTemplate = "<h1>%s</h1><p>%s</p>";
	foreach ($posts as $post) {
		$htmlArray[] = sprintf($htmlTemplate, $post['title'], $post['body']);
	}

	return implode('<hr/>', $htmlArray);
});

$app->run();
