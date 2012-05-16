<?php
if(!isset($main_page))
  exit();

$content = file_get_contents('templates/participate.tpl');
$links = file_get_contents('templates/participate_links.tpl');

?>