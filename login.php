<?php
if(!isset($main_page))
  exit();

if(isset($_POST['login'], $_POST['password']))
{
  $login = explode('@', $_POST['login']);
  $select_user = mysql_query("SELECT id, login FROM linuxoids WHERE (`email` = '" . mysql_real_escape_string($_POST['login']) . "' OR `login` = '" . mysql_real_escape_string($login[0]) . "') AND `password` = '" . mysql_real_escape_string($_POST['password']) . "'");
  if($user = mysql_fetch_assoc($select_user))
  {
    $_SESSION['logined'] = true;
    $_SESSION['id'] = $user['id'];
    $_SESSION['login'] = $user['login'];
    header('location:?');
  } else
    $content .= 'аутентификация не пройдена';
} else
  $content .= template('templates/login.tpl', array());
?>
