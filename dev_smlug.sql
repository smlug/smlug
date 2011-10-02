-- phpMyAdmin SQL Dump
-- version 3.3.7
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Окт 02 2011 г., 17:18
-- Версия сервера: 5.1.41
-- Версия PHP: 5.3.2-1ubuntu4.9

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


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
  `name` varchar(100) DEFAULT NULL,
  `body` varchar(10000) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Дамп данных таблицы `blog`
--

INSERT INTO `blog` (`id`, `author`, `name`, `body`, `date`) VALUES
(3, 1, 'bvz', 'sbsb', '2011-09-30 23:36:58'),
(4, 1, 'Ð²Ð¿Ñ‚Ð²Ð¿Ñ‚', 'Ð²Ñ‹Ñ‚Ñ‹Ð²Ð¿Ñ‹Ð²Ð¿ÑŒ', '2011-09-30 23:37:17');

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
(1, '2010-10-17 16:56:03', 'RuXeeZ', '123456', 'zoron, yap', 'Илья', 'Юрьевич', 'Павленков', 'yapavlenkov@yandex.ru', 595778, 'RuXeeZ', 'zruxeez@jabber.ru', '', 2147483647, '', '', 1, 0, '192.168.0.1'),
(2, '2010-10-17 16:55:00', 'zUser', '123456', 'zoron, yap', 'Илья', 'Юрьевич', 'Павленков', 'yapavlenkov@yandex.ru', 595778, 'RuXeeZ', 'zruxeez@jabber.ru', '', 2147483647, '', '', 1, 2, '192.168.0.1');

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

--
-- Дамп данных таблицы `litre`
--


-- --------------------------------------------------------

--
-- Структура таблицы `news`
--

CREATE TABLE IF NOT EXISTS `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

--
-- Дамп данных таблицы `news`
--


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
(1, '2010-10-17 16:10:30', 1, '1текст сообщенияяяяяяяяя текст текст текст текст текст', 0, 1, '0000-00-00 00:00:00', '192.168.0.2'),
(2, '2010-10-17 16:55:31', 2, '2textтекст второго сообщения', 0, 1, '0000-00-00 00:00:00', '192.168.0.2'),
(3, '2010-10-17 16:10:30', 1, '3текст второго сообщенияумцмцки', 0, 2, '0000-00-00 00:00:00', '192.168.0.2'),
(4, '2010-10-17 16:10:30', 1, 'main post of 3th theme', 0, 3, '0000-00-00 00:00:00', '192.168.0.2'),
(5, '2010-10-17 16:10:30', 1, 'first massage of 3th theme', 0, 3, '0000-00-00 00:00:00', '192.168.0.2'),
(6, '2010-10-17 16:10:30', 1, 'second massage of 3th theme', 0, 3, '0000-00-00 00:00:00', '192.168.0.2');

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

--
-- Дамп данных таблицы `stats`
--


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
(1, '2010-10-16 18:01:12', '11Первая темааа'),
(2, '2010-10-16 18:01:34', '22222втораяяяя тема'),
(3, '2010-10-16 19:26:55', '3th theme');
