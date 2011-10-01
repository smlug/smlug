<?php
/*
* DortonScript
* GNU General Public License v2: http://www.gnu.org/licenses/gpl-2.0.html
*/

function template($adr, $array)
{
  $templateFile = file_get_contents($adr);

  foreach($array as $tag => $value)
    $templateFile = str_replace('{' . $tag . '}', $value, $templateFile);

  return $templateFile;
}

function wordWrapIgnoreHtml($string, $lenght = 5, $divider = '<br />')
{
  $html = false;
  $line = false;
  $result = false;
  $backUp = 0;
  $amp = 0;

  for($i = 0; $i < strlen($string); $i++)
  {
    $char = $string[$i];

    if( ($backUp && strlen($line) + $backUp >= $lenght) || strlen($line) >= $lenght)
    {
      $result .= $line . $divider;
      $line = false;
      $backUp = false;
    }

    if(!$amp && $char == '&')
    {
      if($line)
      {
        $result .= $line;
        $backUp += strlen($line);
        $line = false;
      }

      $result .= $char;
      ++$amp;
    }

    else if($amp && $char == ';')
    {
        $result .= $char;
        ++$backUp;
        $amp = 0;
    }

    else if($amp)
    {
      $result .= $char;
      ++$amp;

      if($char === ' ' || $char == "\t" || $char == "\n" || $amp > 8)
      {
        $backUp += $amp;
        $amp = 0;
      }
    }

    else if($char == '<')
    {
      $html = true;

      if($line)
      {
        $backUp += strlen($line);
        $result .= $line;
        $line = false;
      }

      $result .= $char;
    }

    else if($char == '>')
    {
      $html = false;
      $result .= $char;
    }

    else if($html)
      $result .= $char;

    //Закомментировать блок для жосткой обрезки
    else if($char == ' ' || $char == "\t" || $char == "\n")
    {
      $result .= $line . $char;
      $line = false;
    }

    else
      $line .= $char;
  }

  if($result == false)
    $result = $line;

  $result .= $line;

  return $result;
}

function urlOnHtml($string)
{
  $bank = false;
  $possibility = false;
  $www = 0;

  for($i = 0; $i < strlen($string); $i++)
  {
    $char = $string[$i];

    if($char == 'w')
    {
      ++$www;/////////////
    }
    else if($char == 'h' || $char == 'f' || $char == 'w')
    {
      if($char == 'w')
        ++$www;

      $possibility .= $char;
    }
    else if($possibility && $char == 't')
    {
      $a1 = true;
      $possibility .= $char;
    }
    else if($possibility && isset($a1) && $char == 'p')
    {
      $a2 = true;
      $possibility .= $char;
    }
    else if($possibility && isset($a2) && $char == 's')
      $possibility .= $char;
    else if($possibility && isset($a2) && $char == ':')
    {
      $a3 = true;
      $possibility .= $char;
    }
    else if($possibility && isset($a3) && $char == '/')
    {
      $a4 = true;
      $possibility .= $char;
    }
    else if($possibility && isset($a1, $a2, $a3, $a4) && $char === ' ' || $char == "\t" || $char == "\n")
    {
      $bank .= '<a href = "' . $possibility . '" target="_blank">' . $possibility . '</a>' . $char;
      $possibility = false;
      $a1 = null;
      $a2 = null;
      $a3 = null;
      $a4 = null;
    }
    else if($possibility && isset($a1, $a2, $a3, $a4))
      $possibility .= $char;
    else
    {
      if($possibility)
      {
        $bank .= $possibility;
        $possibility = false;
      }

      $bank .= $char;
    }
  }

  return $bank;
}
?>
