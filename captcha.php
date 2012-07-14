<?php
session_start();

$im = imageCreateTrueColor(125, 40);

// Генерация и установка цвета фона
$x_fill = mt_rand(0, 255);
$y_fill = mt_rand(0, 255);
$z_fill = mt_rand(0, 255);
$fill_color = imageColorAllocate($im, $x_fill, $y_fill, $z_fill);
imageFill($im, 0, 0, $fill_color);

// Генерация и установка цвета символов
if($x_text = $x_fill - 120 < 0)
  $x_text = mt_rand(200, 255) - $x_text;
if($y_text = $y_fill - 120 < 0)
  $y_text = mt_rand(200, 255) - $y_text;
if($z_text = $z_fill - 120 < 0)
  $z_text = mt_rand(200, 255) - $z_text;
$symbol1_color = imageColorAllocate($im, $x_text - mt_rand(-30, 30), $y_text - mt_rand(-30, 30), $z_text - mt_rand(-30, 30));
$symbol2_color = imageColorAllocate($im, $x_text - mt_rand(-30, 30), $y_text - mt_rand(-30, 30), $z_text - mt_rand(-30, 30));
$symbol3_color = imageColorAllocate($im, $x_text - mt_rand(-30, 30), $y_text - mt_rand(-30, 30), $z_text - mt_rand(-30, 30));

// Генерация и установка символов
putenv('GDFONTPATH=.');
imageTTFText($im, 25, mt_rand(-30, 30), mt_rand(15, 35), mt_rand(25, 35), $symbol1_color, 'Ubuntu-L.ttf', $symbol1 = mt_rand(0, 9));
imageTTFText($im, 25, mt_rand(-30, 30), mt_rand(45, 75), mt_rand(25, 35), $symbol2_color, 'Ubuntu-L.ttf', $symbol2 = mt_rand(0, 9));
imageTTFText($im, 25, mt_rand(-30, 30), mt_rand(85, 110), mt_rand(25, 35), $symbol3_color, 'Ubuntu-L.ttf', $symbol3 = mt_rand(0, 9));

$_SESSION['captcha'] = $symbol1 . $symbol2 . $symbol3;

// Вывод изображения
header('Content-type: image/png');
imagePNG($im);
?>