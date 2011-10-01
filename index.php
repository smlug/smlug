<?php
include('config.php');
include('functions.php');

//Подключение к базе данных
@mysql_connect($mysql['server'], $mysql['user'], $mysql['password'])
or
  die('Ошибка подключения к серверу баз данных!');

@mysql_select_db($mysql['database'])
or
  die('Ошибка при выборе базы данных!');

//Переменная, отвечающая за основной контент
$content = '';

//Выбор страницы
if(isset($_GET['page']) && $_GET['page'] == 'registration')
  include('registration.php');
else if(isset($_GET['page']) && $_GET['page'] == 'linuxoids')
  include('linuxoids.php');
else if (isset($_GET['page']) && $_GET['page'] == 'blog')
  include('blog.php');
else
  $content = file_get_contents('templates/main.tpl');

//Подстановка всех данных в шаблон схемы
echo template('templates/scheme.tpl', array(
  'TITLE' => 'Смоленская группа пользователей Linux',
  'TOP' => '',
  'CONTENT' => $content,
  'BLOCK' => file_get_contents('templates/navigation.tpl'),
  'BOTTOM' => 'SmLUG 2011'
));
?>
