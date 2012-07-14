<?php
if(!isset($main_page))
  exit();

$user = mysql_fetch_assoc(mysql_query("SELECT * FROM linuxoids WHERE `id` = " . htmlspecialchars(mysql_real_escape_string($_GET['id']))));
$content .= template('templates/profile.tpl', array('LOGIN' => $user['login'],
                                                     'EMAIL' => $user['email']));
?>
