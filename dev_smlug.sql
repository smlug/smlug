-- Adminer 3.4.0 MySQL dump

SET NAMES utf8;
SET foreign_key_checks = 0;
SET time_zone = 'SYSTEM';
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

DROP TABLE IF EXISTS `autentification`;
CREATE TABLE `autentification` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `ip` varchar(15) DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `count` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `blog`;
CREATE TABLE `blog` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `author` smallint(5) unsigned DEFAULT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `body` varchar(10000) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `blog` (`id`, `author`, `name`, `body`, `date`) VALUES
(77,	1,	'трололо',	'троль получил в ебло',	'1341664313'),
(78,	1,	'&lt;font color=&quot;red&quot;&gt;Тема&lt;/font&gt;',	'ргпмеапае шнпни&lt;h1&gt;tcrfyvguhbj&lt;/h1&gt;',	'1341664504'),
(79,	1,	'ebetb',	'tnrnrn',	'1341690988'),
(80,	5,	'3rg3r',	'rbe3trbtr',	'1341691300'),
(81,	0,	'berbjere bentbejtnbtj',	'ejvbne3nvlke nrtbl netjnbljetn nbjbkhbkhbhbvjvbjhgejvbne3nvlke nrtbl netjnbljetn nbjbkhbkhbhbvjvbjhgejvbne3nvlke nrtbl netjnbljetn nbjbkhbkhbhbvjvbjhgejvbne3nvlke nrtbl netjnbljetn nbjbkhbkhbhbvjvbjhgejvbne3nvlke nrtbl netjnbljetn nbjbkhbkhbhbvjvbjhgejvbne3nvlke nrtbl netjnbljetn nbjbkhbkhbhbvjvbjhgejvbne3nvlke nrtbl netjnbljetn nbjbkhbkhbhbvjvbjhgejvbne3nvlke nrtbl netjnbljetn nbjbkhbkhbhbvjvbjhgejvbne3nvlke nrtbl netjnbljetn nbjbkhbkhbhbvjvbjhgejvbne3nvlke nrtbl netjnbljetn nbjbkhbkhbhbvjvbjhgejvbne3nvlke nrtbl netjnbljetn nbjbkhbkhbhbvjvbjhgejvbne3nvlke nrtbl netjnbljetn nbjbkhbkhbhbvjvbjhgejvbne3nvlebebetbetetrtrke nrtbl netjnbljetn nbjbkhbkhbhbvjvbjhgejvbne3nvlke nrtbl netjnbljetn nbjbkhbkhbhbvjvbjhgejvbne3nvlke nrtbl netjnbljetn nbjbkhbkhbhbvjvbjhgejvbne3nvlke nrtbl netjnbljetn nbjbkhbkhbhbvjvbjhgejvbne3nvlke nrtbl netjnbljetn nbjbkhbkhbhbvjvbjhgejvbne3nvlke nrtbl netjnbljetn nbjbkhbkhbhbvjvbjhgejvbne3nvlke nrtbl netjnbljetn nbjbkhbkhbhbvjvbjhgejvbne3nvlke nrtbl netjnbljetn nbjbkhbkhbhbvjvbjhgejvbne3nvlke nrtbl netjnbljetn nbjbkhbkhbhbvjvbjhgejvbne3nvlke nrtbl netjnbljetn nbjbkhbkhbhbvjvbjhgejvbne3nvlke nrtbl netjnbljetn nbjbkhbkhbhbvjvbjhgejvbne3nvlke nrtbl netjnbljetn nbjbkhbkhbhbvjvbjhgejvbne3nvlke nrtbl netjnbljetn nbjbkhbkhbhbvjvbjhg',	'1341691355'),
(82,	0,	'berbjere bentbejtnbtj',	'ejvbne3nvlke nrtbl netjnbljetn nbjbkhbkhbhbvjvbjhgejvbne3nvlke nrtbl netjnbljetn nbjbkhbkhbhbvjvbjhgejvbne3nvlke nrtbl netjnbljetn nbjbkhbkhbhbvjvbjhgejvbne3nvlke nrtbl netjnbljetn nbjbkhbkhbhbvjvbjhgejvbne3nvlke nrtbl netjnbljetn nbjbkhbkhbhbvjvbjhgejvbne3nvlke nrtbl netjnbljetn nbjbkhbkhbhbvjvbjhgejvbne3nvlke nrtbl netjnbljetn nbjbkhbkhbhbvjvbjhgejvbne3nvlke nrtbl netjnbljetn nbjbkhbkhbhbvjvbjhgejvbne3nvlke nrtbl netjnbljetn nbjbkhbkhbhbvjvbjhgejvbne3nvlke nrtbl netjnbljetn nbjbkhbkhbhbvjvbjhgejvbne3nvlke nrtbl netjnbljetn nbjbkhbkhbhbvjvbjhgejvbne3nvlke nrtbl netjnbljetn nbjbkhbkhbhbvjvbjhgejvbne3nvlebebetbetetrtrke nrtbl netjnbljetn nbjbkhbkhbhbvjvbjhgejvbne3nvlke nrtbl netjnbljetn nbjbkhbkhbhbvjvbjhgejvbne3nvlke nrtbl netjnbljetn nbjbkhbkhbhbvjvbjhgejvbne3nvlke nrtbl netjnbljetn nbjbkhbkhbhbvjvbjhgejvbne3nvlke nrtbl netjnbljetn nbjbkhbkhbhbvjvbjhgejvbne3nvlke nrtbl netjnbljetn nbjbkhbkhbhbvjvbjhgejvbne3nvlke nrtbl netjnbljetn nbjbkhbkhbhbvjvbjhgejvbne3nvlke nrtbl netjnbljetn nbjbkhbkhbhbvjvbjhgejvbne3nvlke nrtbl netjnbljetn nbjbkhbkhbhbvjvbjhgejvbne3nvlke nrtbl netjnbljetn nbjbkhbkhbhbvjvbjhgejvbne3nvlke nrtbl netjnbljetn nbjbkhbkhbhbvjvbjhgejvbne3nvlke nrtbl netjnbljetn nbjbkhbkhbhbvjvbjhgejvbne3nvlke nrtbl netjnbljetn nbjbkhbkhbhbvjvbjhg',	'1341691616'),
(83,	13,	'j3vbn jtenbjenjbkne tjnbjkn',	'jebnketnkj etkjbnjket kjbjjebnketnkj etkjbnjket kjbjjebnketnkj etkjbnjket kjbjjebnketnkj etkjbnjket kjbjjebnketnkj etkjbnjket kjbjjebnketnkj etkjbnjket kjbjjebnketnkj etkjbnjket kjbjjebnketnkj etkjbnjket kjbjjebnketnkj etkjbnjket kjbjjebnketnkj etkjbnjket kjbj',	'1341692097'),
(84,	7,	'ebetbet teb',	'etbetbnten',	'1341692207'),
(85,	14,	'wrbwrbwrb wrbrwb',	'ebetbetbnteW EGFBE',	'1341696085');

DROP TABLE IF EXISTS `linuxoids`;
CREATE TABLE `linuxoids` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `login` varchar(30) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `linuxoids` (`id`, `login`, `email`, `password`) VALUES
(1,	NULL,	'11',	'22'),
(2,	NULL,	'febgeb',	'3b3'),
(3,	'dvwr',	'dvwr@rvbr.rr',	'vebtb'),
(4,	'dvwr',	'dvwr@rvbr.rr',	'vebtb'),
(5,	'1',	'1',	'1'),
(6,	'dd',	'dd@k.kk',	'111'),
(7,	'c',	'c@c',	'123'),
(8,	'c',	'c@c',	'123'),
(9,	'c',	'c@c',	'123'),
(10,	'c',	'c@c',	'123'),
(11,	'c',	'c@c',	'123'),
(12,	'c',	'c@c',	'123'),
(13,	'c',	'c@c',	'123'),
(14,	'dunya',	'dunya@kuhnya.ru',	'123456'),
(15,	'trololo',	'trololo@fff.com',	'123'),
(16,	'email',	'email',	'123456'),
(17,	'email',	'email',	'123456'),
(18,	'email',	'email',	'123456'),
(19,	'sdd',	'sdd@f.f',	'1');

-- 2012-07-14 17:51:43
