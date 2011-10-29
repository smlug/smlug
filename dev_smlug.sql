-- phpMyAdmin SQL Dump
-- version 3.4.6
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Окт 29 2011 г., 15:54
-- Версия сервера: 5.1.58
-- Версия PHP: 5.3.6-13ubuntu3.2

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `dev_smlug`
--

-- --------------------------------------------------------

--
-- Структура таблицы `blog`
--

CREATE TABLE IF NOT EXISTS `blog` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `author` smallint(5) unsigned DEFAULT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `body` varchar(10000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=77 ;

--
-- Дамп данных таблицы `blog`
--

INSERT INTO `blog` (`id`, `author`, `name`, `body`, `date`) VALUES
(65, 1, '1111', 'vwrbvwrкцики', '0000-00-00'),
(67, 1, 'vel kmnklkmLvn jnbetlk/ bet;.юджьбм кжыдьдлтот', 'vel kmnklkmLvn jnbetlk/ bet;.юджьбм кжыдьдлтотvel kmnklkmLvn jnbetlk/ bet;.юджьбм кжыдьдлтотvel kmnklkmLvn jnbetlk/ bet;.юджьбм кжыдьдлтотvel kmnklkmLvn jnbetlk/ bet;.юджьбм кжыдьдлтотvel kmnklkmLvn jnbetlk/ bet;.юджьбм кжыдьдлтотvel kmnklkmLvn jnbetlk/ bet;.юджьбм кжыдьдлтот', '0000-00-00'),
(74, 1, 'ebk ethhИюлм ктю иууотиоуит много букав', 'ebk ethhИюлм ктю иууотиоуит много букавebk ethhИюлм ктю иууотиоуит много букавebk ethhИюлм ктю иууотиоуит много букавebk ethhИюлм ктю иууотиоуит много букавebk ethhИюлм ктю иууотиоуит много букавebk ethhИюлм ктю иууотиоуит много букавebk ethhИюлм ктю иууотиоуит много букавebk ethhИюлм ктю иууотиоуит много букавebk ethhИюлм ктю иууотиоуит много букавebk ethhИюлм ктю иууотиоуит много букавebk ethhИюлм ктю иууотиоуит много букавebk ethhИюлм ктю иууотиоуит много букавebk ethhИюлм ктю иууотиоуит много букавebk ethhИюлм ктю иууотиоуит много букавebk ethhИюлм ктю иууотиоуит много букавebk ethhИюлм ктю иууотиоуит много букавebk ethhИюлм ктю иууотиоуит много букав итуеи руе иуе\r\nуи е\r\nу те уригеуриошуитери уерои урebk ethhИюлм ктю иууотиоуит много букавebk ethhИюлм ктю иууотиоуит много букавebk ethhИюлм ктю иууотиоуит много букавebk ethhИюлм ктю иууотиоуит много букавebk ethhИюлм ктю иууотиоуит много букавebk ethhИюлм ктю иууотиоуит много букавebk ethhИюлм ктю иууотиоуит много букавebk ethhИюлм ктю иууотиоуит много букавebk ethhИюлм ктю иууотиоуит много букавebk ethhИюлм ктю иууотиоуит много букавebk ethhИюлм ктю иууотиоуит много букавebk ethhИюлм ктю иууотиоуит много букавкет нтнт', '1319888846'),
(72, 1, 'nsn', 'rnmsm', '0000-00-00'),
(73, 1, 'vrebeb', 'bebetb', '1319888269'),
(75, 1, ' м луцкид ишр мшиукпушг рушпу4шду оужшу4ру4 рш3эз жi ea e/ghe/i hege/j/;&quot;:F? L/k H/ heioie4u hu', ' м луцкид ишр мшиукпушг рушпу4шду оужшу4ру4 рш3эз жi ea e/ghe/i hege/j/;&quot;:F? L/k H/ heioie4u huihГп укшфг гушпуг пушиуншр м луцкид ишр мшиукпушг рушпу4шду оужшу4ру4 рш3эз жi ea e/ghe/i hege/j/;&quot;:F? L/k H/ heioie4u huihГп укшфг гушпуг пушиуншр м луцкид ишр мшиукпушг рушпу4шду оужшу4ру4 рш3эз жi ea e/ghe/i hege/j/;&quot;:F? L/k H/ heioie4u huihГп укшфг гушпуг пушиуншр м луцкид ишр мшиукпушг рушпу4шду оужшу4ру4 рш3эз жi ea e/ghe/i hege/j/;&quot;:F? L/k H/ heioie4u huihГп укшфг гушпуг пушиуншр м луцкид ишр мшиукпушг рушпу4шду оужшу4ру4 рш3эз жi ea e/ghe/i hege/j/;&quot;:F? L/k H/ heioie4u huihГп укшфг гушпуг пушиуншр м луцкид ишр мшиукпушг рушпу4шду оужшу4ру4 рш3эз жi ea e/ghe/i hege/j/;&quot;:F? L/k H/ heioie4u huihГп укшфг гушпуг пушиуншр м луцкид ишр мшиукпушг рушпу4шду оужшу4ру4 рш3эз жi ea e/ghe/i hege/j/;&quot;:F? L/k H/ heioie4u huihГп укшфг гушпуг пушиуншр м луцкид ишр мшиукпушг рушпу4шду оужшу4ру4 рш3эз жi ea e/ghe/i hege/j/;&quot;:F? L/k H/ heioie4u huihГп укшфг гушпуг пушиуншр м луцкид ишр мшиукпушг рушпу4шду оужшу4ру4 рш3эз жi ea e/ghe/i hege/j/;&quot;:F? L/k H/ heioie4u huihГп укшфг гушпуг пушиуншр м луцкид ишр мшиукпушг рушпу4шду оужшу4ру4 рш3эз жi ea e/ghe/i hege/j/;&quot;:F? L/k H/ heioie4u huihГп укшфг гушпуг пушиуншр м луцкид ишр мшиукпушг рушпу4шду оужшу4ру4 рш3эз жi ea e/ghe/i hege/j/;&quot;:F? L/k H/ heioie4u huihГп укшфг гушпуг пушиуншр м луцкид ишр мшиукпушг рушпу4шду оужшу4ру4 рш3эз жi ea e/ghe/i hege/j/;&quot;:F? L/k H/ heioie4u huihГп укшфг гушпуг пушиуншр м луцкид ишр мшиукпушг рушпу4шду оужшу4ру4 рш3эз жi ea e/ghe/i hege/j/;&quot;:F? L/k H/ heioie4u huihГп укшфг гушпуг пушиуншр', '1319888870'),
(76, 1, 'Linux. Материал из Википедии — свободной энциклопедии', 'Linux (произносится «ли́нукс», другие названия см. ниже) — общее название Unix-подобных операционных систем на основе одноимённого ядра, библиотек и системных программ, разработанных в рамках проекта GNU, а также другого программного обеспечения.\r\nLinux работает на множестве архитектур процессора, таких как Intel x86, x86-64, PowerPC, ARM, Alpha AXP, Sun SPARC, Motorola 68000, Hitachi SuperH, IBM S/390, MIPS, HP PA-RISC, AXIS CRIS, Renesas M32R, Atmel AVR32, Renesas H8/300, NEC V850, Tensilica Xtensa и многих других.\r\nВ отличие от большинства других операционных систем, Linux не имеет единой «официальной» комплектации. Вместо этого Linux поставляется в большом количестве так называемых дистрибутивов, в которых ядро Linux соединяется с утилитами GNU и другими прикладными программами (например, X.org), делающими её полноценной многофункциональной операционной средой.\r\nНаиболее известными дистрибутивами Linux являются: Arch Linux, CentOS, Debian, Fedora, Gentoo, Mandriva, Mint, openSUSE, Red Hat, Slackware, Ubuntu.\r\nРоссийские дистрибутивы — ALT Linux, ASPLinux, Calculate Linux, НауЛинукс, AgiliaLinux (ранее MOPSLinux), Runtu, и Linux XP.\r\nhttp://ru.wikipedia.org/wiki/%D0%9B%D0%B8%D0%BD%D1%83%D0%BA%D1%81', '1319888990');

-- --------------------------------------------------------

--
-- Структура таблицы `linuxoids`
--

CREATE TABLE IF NOT EXISTS `linuxoids` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reg_dt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `login` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `pass` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `aka` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fname` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `mname` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `lname` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `icq` int(9) NOT NULL,
  `skype` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `jabber` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `homepage` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `phone` int(11) NOT NULL,
  `distr` text COLLATE utf8_unicode_ci NOT NULL,
  `comment` text COLLATE utf8_unicode_ci NOT NULL,
  `activated` tinyint(4) NOT NULL,
  `type` tinyint(4) NOT NULL,
  `ip` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- Дамп данных таблицы `linuxoids`
--

INSERT INTO `linuxoids` (`id`, `reg_dt`, `login`, `pass`, `aka`, `fname`, `mname`, `lname`, `email`, `icq`, `skype`, `jabber`, `homepage`, `phone`, `distr`, `comment`, `activated`, `type`, `ip`) VALUES
(1, '2010-10-17 12:56:03', 'RuXeeZ', '123456', 'zoron, yap', 'Илья', 'Юрьевич', 'Павленков', 'yapavlenkov@yandex.ru', 595778, 'RuXeeZ', 'zruxeez@jabber.ru', '', 2147483647, '', '', 1, 0, '192.168.0.1'),
(2, '2010-10-17 12:55:00', 'zUser', '123456', 'zoron, yap', 'Илья', 'Юрьевич', 'Павленков', 'yapavlenkov@yandex.ru', 595778, 'RuXeeZ', 'zruxeez@jabber.ru', '', 2147483647, '', '', 1, 2, '192.168.0.1');

-- --------------------------------------------------------

--
-- Структура таблицы `litre`
--

CREATE TABLE IF NOT EXISTS `litre` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `autors` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `desc` text COLLATE utf8_unicode_ci NOT NULL,
  `isbn` int(13) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `news`
--

CREATE TABLE IF NOT EXISTS `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `author` int(11) NOT NULL,
  `text` text COLLATE utf8_unicode_ci NOT NULL,
  `type` tinyint(4) NOT NULL,
  `bucket` int(11) NOT NULL,
  `editdt` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ip` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Дамп данных таблицы `posts`
--

INSERT INTO `posts` (`id`, `dt`, `author`, `text`, `type`, `bucket`, `editdt`, `ip`) VALUES
(1, '2010-10-17 12:10:30', 1, '1текст сообщенияяяяяяяяя текст текст текст текст текст', 0, 1, '0000-00-00 00:00:00', '192.168.0.2'),
(2, '2010-10-17 12:55:31', 2, '2textтекст второго сообщения', 0, 1, '0000-00-00 00:00:00', '192.168.0.2'),
(3, '2010-10-17 12:10:30', 1, '3текст второго сообщенияумцмцки', 0, 2, '0000-00-00 00:00:00', '192.168.0.2'),
(4, '2010-10-17 12:10:30', 1, 'main post of 3th theme', 0, 3, '0000-00-00 00:00:00', '192.168.0.2'),
(5, '2010-10-17 12:10:30', 1, 'first massage of 3th theme', 0, 3, '0000-00-00 00:00:00', '192.168.0.2'),
(6, '2010-10-17 12:10:30', 1, 'second massage of 3th theme', 0, 3, '0000-00-00 00:00:00', '192.168.0.2');

-- --------------------------------------------------------

--
-- Структура таблицы `stats`
--

CREATE TABLE IF NOT EXISTS `stats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `ip` char(15) COLLATE utf8_unicode_ci NOT NULL,
  `os` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `themes`
--

CREATE TABLE IF NOT EXISTS `themes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Дамп данных таблицы `themes`
--

INSERT INTO `themes` (`id`, `dt`, `name`) VALUES
(1, '2010-10-16 14:01:12', '11Первая темааа'),
(2, '2010-10-16 14:01:34', '22222втораяяяя тема'),
(3, '2010-10-16 15:26:55', '3th theme');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
