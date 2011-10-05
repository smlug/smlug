<!DOCTYPE html>
<html>
  <head>
    <meta charset = "utf-8">
    <link rel = "stylesheet" type = "text/css" href = "templates/style.css" />
    <title>{TITLE}</title>
  </head>
  <body>
    <table class = "main_table" align = "center" border = "0">
    <tr>
      <td class = "top_of_main_table" colspan = "2" valign = "top">
        <header class = "nav_bar">
          Можно <a href = "?page=login">зайти</a>&nbsp;или, например, <a href = "?page=registration">добавиться</a><br />
          <a href = "?"><font class = "smlug_en_link">SmLUG</font></a><font class = "smlug_ru"> ака СмГПЛ</font>
        </header>
      </td>
    </tr>
    <tr>
      <td valign = "top" style="height:100%">
        <article>{CONTENT}</article>
      </td>
      <td class = "block" valign = "top">
        <aside>{BLOCK}</aside>
        <aside class = "links">{LINKS}</aside>
      </td>
    </tr>
    <tr>
      <td class = "bottom_of_main_table" colspan = "2" valign = "top" align = "right">
        <footer><hr color = "#bcc8c7" size = "1"><br />© 2011 Смоленская группировка пользователей Linux</footer>
      </td>
    </tr>
  </table>
  </body>
</html>
