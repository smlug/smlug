CREATE TABLE blog (`id` smallint unsigned auto_increment primary key, `author` smallint unsigned, `name` varchar(100), `body` varchar(10000), `date` timestamp default current_timestamp);
