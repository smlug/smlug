<?php
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
    $content .= template('templates/post_preview.tpl', array(
      'NAME' => '<a href = "">' . $posts_array[$i]['name'] . '</a>',
      'AUTHOR' => '<font size = "4px">↑</font> ' . $author,
      'BODY' => $posts_array[$i]['body'],
      'DATE' => $posts_array[$i]['date'],
      'NUMBER_OF_COMMENTS' => '5'
    ));
  }
}
?>
