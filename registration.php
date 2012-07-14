<?php
if(!isset($main_page))
  exit();

if(isset($_POST['email'], $_POST['password'], $_POST['captcha']) && $_POST['captcha'] == $_SESSION['captcha'])
{	
  $login = explode('@', $_POST['email']);
  $user_added = mysql_query("INSERT INTO linuxoids(`login`, `email`, `password`) VALUES('" . htmlspecialchars(mysql_real_escape_string($login[0])) . "', '" . htmlspecialchars(mysql_real_escape_string($_POST['email'])) . "', '" . mysql_real_escape_string($_POST['password']) . "')");
  if($user_added)
  {
    $count_of_users = mysql_fetch_assoc(mysql_query("SELECT `id` FROM linuxoids ORDER BY `id` DESC"));
    $_SESSION['logined'] = true;
    $_SESSION['id'] = $count_of_users['id'];
    $_SESSION['login'] = $login[0];
    $content .= 'теперь ты один из нас';
  }
  else
    $content .= 'что-то не так, ошибка инсерта';
} else
  $content .= template('templates/registration.tpl', array());
?>
