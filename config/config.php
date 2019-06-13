<?php
$install_url = isset($_SERVER['HTTPS']) && strtolower($_SERVER['HTTPS']) == 'on' ? 'https' : 'http';
$install_url .= '://'. $_SERVER['HTTP_HOST'];
$install_url .= str_replace(basename($_SERVER['SCRIPT_NAME']), '', $_SERVER['SCRIPT_NAME']);
return $install_url;

?>