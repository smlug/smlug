<!DOCTYPE html>
<html>
  <head>
    <meta charset = "utf-8">
    <link rel = "stylesheet" type = "text/css" href = "templates/style.css" />
    <title>{TITLE}</title>
  </head>
  <body>
    <table id = "main_table" align = "center" border = "0">
    <tr>
      <td id = "top" colspan = "2" valign = "top">
        <header id = "nav_bar">
          Можно <a href = "?page=login" id = "nav_link">зайти</a>&nbsp;или, например, <a href = "?page=registration" id = "nav_link">добавиться</a><br />
          <a href = "?"><font id = "smlug">SmLUG</font></a><font id = "smlug_ru"> ака СмГПЛ</font>
        </header>
      </td>
    </tr>
    <tr>
      <td id = "content" valign = "top" style="height:100%">
        <article>{CONTENT}</article>
      </td>
      <td id = "block" valign = "top">
        <aside>{BLOCK}</aside>
        <aside class='links'>{LINKS}</aside>
      </td>
    </tr>
    <tr>
      <td id = "bottom" colspan = "2" valign = "top" align = "right">
        <footer><hr color = "#bcc8c7" size = "1"><br />© 2011 Смоленская группировка пользователей Linux</footer>
      </td>
    </tr>
  </table>
  </body>
</html>
