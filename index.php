<?php
session_start();
include('config.php');
include('functions.php');

/* Подключение к базе данных */

@mysql_connect($cfg['db_server'], $cfg['db_user'], $cfg['db_password'])
or
  die('Error occured during connecting to database!');

@mysql_select_db($cfg['db_name'])
or
  die('Error occured during database selection!');

mysql_query("SET CHARACTER SET utf8");
mysql_query("SET NAMES utf8");

if(isset($_GET['exit']))
{
  $_SESSION['logined'] = false;
  session_destroy();
}

//Для дальнейшей проверки авторизации одной переменной
if(!isset($_SESSION['logined']))
  $_SESSION['logined'] = false;

//Переменная, отвечающая за основной контент
$content = '';
//Блок ссылок
$links = '';

$main_page = '';
//Выбор страницы
if(isset($_GET['page']))
  switch($_GET['page']) {
    case 'blog':
      include('blog.php');
      break;  
    case 'participate':
      include('participate.php');
      break;
    case 'linuxoids':
      include('linuxoids.php');
      break;
    case 'profile':
      include('profile.php');
      break;
    case 'login':
      include('login.php');
      break;
    case 'registration':
      include('registration.php');
      break;
  }
else
  $content = file_get_contents('templates/main.tpl');

if(isset($_SESSION['logined']) && $_SESSION['logined'])
  $nav_bar = 'Ты можешь <a href = "?exit">изыйти</a>, уважаемый <a href = "?page=profile&id=' . $_SESSION['id'] . '">' . $_SESSION['login'] . '</a><br /><a href = "?"><font class = "smlug_en_link">SmLUG</font></a><font class = "smlug_ru"> ака СмГПL</font>';
else
  $nav_bar = 'Можно <a href = "?page=login">зайти</a>&nbsp;или, например, <a href = "?page=registration">добавиться</a><br /><a href = "?"><font class = "smlug_en_link">SmLUG</font></a><font class = "smlug_ru"> ака СмГПL</font>';

//Подстановка всех данных в шаблон схемы
echo template('templates/scheme.tpl', array(
  'TITLE' => 'Смоленская группа пользователей Linux',
  'NAV_BAR' => $nav_bar,
  'TOP' => '',
  'CONTENT' => $content,
  'BLOCK' => file_get_contents('templates/navigation.tpl'),
  'LINKS' => $links,
  'BOTTOM' => 'SmLUG 2011'
));
?>
