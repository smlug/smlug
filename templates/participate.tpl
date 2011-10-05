<p>
Следуя принципам Open Source, наш сайт имеет открытый исходный код, и любой желающий может участвовать в его разработке и улучшении. Так как для организации совместной разрабтки мы используем git с открытым репозиторием <a href='https://github.com/smlug/smlug'>git@github.com:smlug/smlug.git</a>, то для этого достаточно:
</p>

<ul>
<li>иметь профиль на github.com</li>
<li>уметь работать с git</li>
<li>можно ещё уметь кодить на php, js и знать html, css</li>
</ul>



<h3>dev.smlug.ru</h3>

<p>
Сайт <a href='http://dev.smlug.ru'>dev.smlug.ru</a> независим от "стабильного" smlug.ru и отражает текущее состояние репозитория git@github.com:smlug/smlug.git, с которым непосредсвенно работают разработчики. 
</p>

<p>
Таким образом, любые изменения сначала происходят на dev.smlug.ru, а уже после тестирования попадают на smlug.ru.
</p>



<span id='steps'><h3>Раз, два, три, четыре, пять...</h5></span>

<p>
Для внесения изменений достаточно получить копию дерева smlug.ru и затем, пользуясь командами git и интерфейсом github.com, создать запрос на внесения изменений в основное дерево &mdash; так называемый Pull Request:
</p>

<ol>

<li>
<span class='stepname'>Создаём профиль github.com</span> <br/>

Зайдите на сайт <a href='https://github.com'>https://github.com</a> и перейдите по ссылкам Pricing and Signup &rarr; Free for open source &rarr; Create a free account и т.д.
</li>

<li> 
<span class='stepname'>Делаем личный <a href='http://ru.wikipedia.org/wiki/%D0%A4%D0%BE%D1%80%D0%BA'>форк</a> репозитория smlug.ru</span>
<ul>
<li>Отыщите репозиторий smlug.ru
<br/>
<img class='stepscreen' src='images/findrep.jpg' alg='Поиск репозитория smlug'></img>
<li>Форкайте по <a href='http://help.github.com/fork-a-repo'>инструкции</a>.
<br/>
<img class='stepscreen' src='images/forkrep.jpg' alg='Форканье репозитория smlug'></img>
<br/>
</ul>

Если вам нужна база данных, то пока мы предоставляем sql-дамб под именем dev_smlug.sql.
</li>
<li> 
<span class='stepname'>Кодим-кодим-кодим!</span>
<br/>
Реализуйте свои гениальные идеи в своей локальной копии дерева.
</li>
<li> 
<span class='stepname'>Коммитим изменения!</span> <br/>
Теперь отправляйте изменения в свой форк репозитория командами <span class='cmd'>git commit</span> и <span class='cmd'>git push</span> и создавайте Pull Request <a href='http://help.github.com/send-pull-requests'>вот так</a>
</li> 
</ol> 
 
<p>
О вашем Pull Request'е будут уведомлены все заинтересованные люди и вскоре он будет рассмотрен. Активные разработкичи так же могут получить право коммитить в основной репозиторий без подтверждений, что несколько облегчает процесс, но повышает ответственность.
</p>

<p>
При внесения значительных изменений рекомендуем организовать у себя локальный Web-сервер и тестировать код на нём.
</p>