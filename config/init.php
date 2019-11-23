<?php 

// Config file
require_once 'config.php';

// Autoload
function __autoload($class_name) {
	require_once 'lib/'.$class_name.'.php';
}