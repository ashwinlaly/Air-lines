-- Adminer 4.7.0 MySQL dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `password` varchar(30) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `booking`;
CREATE TABLE `booking` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `booking_id` int(10) NOT NULL,
  `from` varchar(30) NOT NULL,
  `to` varchar(30) NOT NULL,
  `plane` varchar(30) NOT NULL,
  `date` datetime NOT NULL,
  `price` int(10) NOT NULL,
  `payment_type` varchar(30) NOT NULL,
  `booking_type` int(2) NOT NULL DEFAULT '1',
  `total_price` int(10) NOT NULL,
  `status` int(2) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `modified_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `mobile` varchar(30) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `users` (`id`, `name`, `email`, `password`, `mobile`, `status`, `created_at`, `modified_at`) VALUES
(4,	'ashwin',	'ashwin',	'ashwin',	'ashwin',	1,	'2019-07-13 15:25:21',	'2019-07-13 15:25:21'),
(5,	'ashwinsas',	'ashwin@gmail.com',	'password',	'239872348',	1,	'2019-07-13 15:27:02',	'2019-07-13 15:27:02');

-- 2019-07-14 02:04:27