<?php
$posts = '';
$numbers = '';

if(isset($_GET['add'], $_POST['post_name'], $_POST['post_body']) && !is_array($_POST['post_name']) && !is_array($_POST['post_body']))
  if(mysql_query("INSERT INTO blog(`author`, `name`, `body`) VALUES('1', '" . mysql_real_escape_string($_POST['post_name']) . "', '" . mysql_real_escape_string($_POST['post_body']) . "')"))
    $content .= 'Запись успешно добавлена';
  else
    $content .= 'Возникла ошибка, запись не добавлена';
else if(isset($_GET['add']))
  $content .= file_get_contents('templates/post_add.tpl');
else {
  //Получаем список линуксоидов и заносим в массив
  $linuxoids_array = array();
  $linuxoids_query = mysql_query("SELECT id, login FROM linuxoids");
  while($linuxoids_array[] = mysql_fetch_assoc($linuxoids_query));

  //Получаем список публикаций и заносим в массив
  $posts_array = array();
  $blog_query = mysql_query('SELECT * FROM blog');
  while($posts_array[] = mysql_fetch_assoc($blog_query));
  $posts_array_count = count($posts_array);

  $pages = ceil((count($posts_array) - 1) / $cfg['posts_on_page']);
  if(empty($_GET['number']) || $_GET['number'] > $pages)
    $_GET['number'] = 1;

  //Вывод публикаций блога
  for($i = $posts_array_count - 2 - ($_GET['number'] * $cfg['posts_on_page'] - $cfg['posts_on_page']), $older_post_on_page = $posts_array_count - 2 - ($_GET['number'] * $cfg['posts_on_page']); $i >= 0 && $i > $older_post_on_page; $i--) {
    //Узнаём имя автора по его идентификатору
    for($j = 0, $linuxoids_array_count = count($linuxoids_array); $j < $linuxoids_array_count; $j++)
      if($linuxoids_array[$j]['id'] == $posts_array[$i]['author'])
        $author = $linuxoids_array[$j]['login'];

    //Выводим публикацию блога
    $posts .= template('templates/post_preview.tpl', array(
      'NAME' => '<a href = "">' . $posts_array[$i]['name'] . '</a>',
      'AUTHOR' => '<font size = "4px">↑</font> ' . $author,
      'BODY' => $posts_array[$i]['body'],
      'DATE' => $posts_array[$i]['date'],
      'NUMBER_OF_COMMENTS' => '5'
    ));
  }

  /* Постраничная навигация */

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
