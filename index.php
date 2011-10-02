<?php
include('config.php');
include('functions.php');

//Подключение к базе данных
@mysql_connect($mysql['server'], $mysql['user'], $mysql['password'])
or
  die('Error connecting to database!');

@mysql_select_db($mysql['database'])
or
  die('Error database selection!');

//Переменная, отвечающая за основной контент
$content = '';

//Выбор страницы
if(isset($_GET['page']))
  switch($_GET['page']) {
    case 'registration':
      include('registration.php');
      break;
    case 'linuxoids':
      include('linuxoids.php');
      break;
    case 'blog':
      include('blog.php');
      break;
  }
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
