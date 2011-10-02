<?php

$posts = '';
$numbers = '';

if(isset($_GET['add'], $_POST['post_name'], $_POST['post_body'])) {
  if(mysql_query("INSERT INTO blog(`author`, `name`, `body`) VALUES('1', '" . htmlspecialchars($_POST['post_name']) . "', '" . htmlspecialchars($_POST['post_body']) . "')"))
    $content .= 'Запись успешно добавлена';
  else
    $content .= 'Возникла ошибка, запись не добавлена';
}
else if(isset($_GET['add']))
  $content .= file_get_contents('templates/post_add.tpl');
else {
  //Получаем список линуксоидов и заносим в массив
  $linuxoids_query = mysql_query("SELECT id, login FROM linuxoids");
  while($linuxoids_array[] = mysql_fetch_assoc($linuxoids_query));

  //Получаем список публикаций и заносим в массив
  $blog_query = mysql_query('SELECT * FROM blog');
  while($posts_array[] = mysql_fetch_assoc($blog_query));

  //Вывод публикаций
  for($i = count($posts_array) - 2; $i >= 0; $i--) {
    //Узнаём имя автора по его идентификатору
    for($j = 0; $j < count($linuxoids_array); $j++)
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

  //Постраничная навигация

  if(empty($_GET['number']))
    $_GET['number'] = 1;

  $previous = $_GET['number'] - 1;
  $next = $_GET['number'] + 1;

  //Стрелка "назад"
  if($_GET['number'] > 1)
    $numbers .= '<a href = "?page=blog&number=' . $previous . '">↑</a> ';
  else
    $numbers .= '↑ ';

  //Вывод номеров страниц
  for($i = 1; $i <= $pages = ceil(count($posts_array) / $setting['posts_on_page']); $i++)
  {
    if($i == $_GET['number'])
      $numbers .= $i . ' ';
    else
      $numbers .= '<a href = "?page=blog&number=' . $i . '">' . $i . '</a> ';
  }

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
