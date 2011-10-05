<?php
include('config.php');
include('functions.php');

/* Подключение к базе данных */

@mysql_connect($cfg['db_server'], $cfg['db_user'], $cfg['db_password'])
or
  die('Error occured during connecting to database!');

@mysql_select_db($cfg['db_name'])
or
  die('Error occured during database selection!');

//Переменная, отвечающая за основной контент
$content = '';
//Блок ссылок
$links = '';

//Выбор страницы
if(isset($_GET['page']))
  switch($_GET['page']) {
    //Pages are sorted alphabetically
    case 'blog':
      include('blog.php');
      break;  
    case 'participate':
      include('participate.php');
      break;
    case 'linuxoids':
      include('linuxoids.php');
      break;
    case 'registration':
      include('registration.php');
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
  'LINKS' => $links,
  'BOTTOM' => 'SmLUG 2011'
));
?>
