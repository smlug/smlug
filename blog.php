<?php
if(!isset($main_page))
  exit();

//Добавление поста
if($_SESSION['logined'] && isset($_GET['add'], $_POST['post_name'], $_POST['post_body']) && !is_array($_POST['post_name']) && !is_array($_POST['post_body'])) {
  if(mysql_query("INSERT INTO blog(`author`, `name`, `body`, `date`) VALUES('" . $_SESSION['id'] . "', '" . htmlspecialchars(mysql_real_escape_string($_POST['post_name'])) . "', '" . htmlspecialchars(mysql_real_escape_string($_POST['post_body'])) . "', " . time() . ")"))
    $content .= 'Запись успешно добавлена';
  else
    $content .= 'Возникла ошибка, запись не добавлена';
}
//Ввод для добавления поста
else if($_SESSION['logined'] && isset($_GET['add']))
  $content .= file_get_contents('templates/post_add.tpl');
else if(isset($_GET['post']) && is_numeric($_GET['post'])) {
  $post = mysql_query("SELECT * FROM blog WHERE id = " . $_GET['post']);
  $post_array[] = mysql_fetch_assoc($post);

  //Узнаём автора
  $author = mysql_fetch_assoc(mysql_query("SELECT login FROM linuxoids WHERE id = " . $post_array[0]['author']));

  @$content .= template('templates/post_preview.tpl', array(
    'NAME' => '<a href = "?page=blog">блог</a>&nbsp;→&nbsp;' . $post_array[0]['name'],
    'AUTHOR_ID' => $post_array[0]['author'],
    'AUTHOR_LOGIN' => $author['login'],
    'BODY' => $post_array[0]['body'],
    'DATE' => date('d.m.Y', $post_array[0]['date']),
    'NUMBER_OF_COMMENTS' => '5'
  ));
}
//Основной вывод блога
else {
  //Подсчитываем кол-во постов и страниц
  $count_of_posts = mysql_fetch_assoc(mysql_query("SELECT COUNT(*) FROM blog"));
  $pages = ceil($count_of_posts['COUNT(*)'] / $cfg['posts_on_page']);

  //Если в запросе не указан номер страницы...
  if(empty($_GET['number']) || $_GET['number'] > $pages)
    $_GET['number'] = 1;

  //Вывод постов
  $posts = '';
  $begin = $_GET['number'] * $cfg['posts_on_page'] - $cfg['posts_on_page'];
  $blog_query = mysql_query("SELECT * FROM blog ORDER BY id DESC LIMIT $begin, {$cfg['posts_on_page']}") or die(mysql_error());
  while($get_post = mysql_fetch_assoc($blog_query)) {
    //Узнаём автора
    $author = mysql_fetch_assoc(mysql_query("SELECT login FROM linuxoids WHERE id = " . $get_post['author']));

    //Сокращение поста для превью
    if(strlen($get_post['body']) > $cfg['characters_in_preview'])
      $body = substr($get_post['body'], 0, $cfg['characters_in_preview']) . '&nbsp;<a href = "?page=blog&post=' . $get_post['id'] . '">......</a>';
    else
      $body = $get_post['body'];

    //Выводим публикацию блога
    @$posts .= template('templates/post_preview.tpl', array(
      'NAME' => '<a href = "?page=blog&post=' . $get_post['id'] . '">' . $get_post['name'] . '</a>',
      'AUTHOR_ID' => $get_post['author'],
      'AUTHOR_LOGIN' => $author['login'],
      'BODY' => $body,
      'DATE' => date('d.m.Y, H:i', $get_post['date']),
      'NUMBER_OF_COMMENTS' => '5'
    ));
  }

  /* Постраничная навигация */

  $numbers = '';
  $previous = $_GET['number'] - 1;
  $next = $_GET['number'] + 1;

  //Стрелка "назад"
  if($_GET['number'] > 1)
    $numbers .= '<a href = "?page=blog&number=' . $previous . '">↑</a> ';
  else
    $numbers .= '↑ ';

  //Вывод номеров страниц
  for($i = 1; $i <= $pages; $i++)
    if($i == $_GET['number'])
      $numbers .= $i . ' ';
    else
      $numbers .= '<a href = "?page=blog&number=' . $i . '">' . $i . '</a> ';

  //Стрелка "вперёд"
  if($_GET['number'] < $pages)
    $numbers .= '<a href = "?page=blog&number=' . $next . '">↓</a> ';
  else
    $numbers .= '↓ ';

  $content .= template('templates/blog.tpl', array(
    'POSTS' => $posts,
    'NUMBERS' => $numbers
  ));
}
?>
