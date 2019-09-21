-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Sep 21, 2019 at 08:37 PM
-- Server version: 5.7.23
-- PHP Version: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `oauth_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `oauth2_clients`
--

DROP TABLE IF EXISTS `oauth2_clients`;
CREATE TABLE IF NOT EXISTS `oauth2_clients` (
  `id` varchar(255) NOT NULL,
  `secret` varchar(255) NOT NULL,
  `domain` varchar(255) NOT NULL,
  `data` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `oauth2_clients`
--

INSERT INTO `oauth2_clients` (`id`, `secret`, `domain`, `data`) VALUES
('0000', 'test', 'http://localhost', '{\"ID\":\"0000\",\"Secret\":\"test\",\"Domain\":\"http://localhost\",\"UserID\":\"0000\"}'),
('id 2019-09-22 03:09:13.3876696 +0700 +07 m=+0.005000301', 'secret 2019-09-22 03:09:13.3876696 +0700 +07 m=+0.005000301', 'domain http://localhost', '{\"ID\":\"id 2019-09-22 03:09:13.3876696 +0700 +07 m=+0.005000301\",\"Secret\":\"secret 2019-09-22 03:09:13.3876696 +0700 +07 m=+0.005000301\",\"Domain\":\"domain http://localhost\",\"UserID\":\"user id 2019-09-22 03:09:13.3876696 +0700 +07 m=+0.005000301\"}'),
('id 0000', 'secret 0000', 'domain http://localhost', '{\"ID\":\"id 0000\",\"Secret\":\"secret 0000\",\"Domain\":\"domain http://localhost\",\"UserID\":\"user id 2019-09-22 03:10:43.5018239 +0700 +07 m=+0.014000801\"}');

-- --------------------------------------------------------

--
-- Table structure for table `oauth2_tokens`
--

DROP TABLE IF EXISTS `oauth2_tokens`;
CREATE TABLE IF NOT EXISTS `oauth2_tokens` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) DEFAULT NULL,
  `access` varchar(255) NOT NULL,
  `refresh` varchar(255) NOT NULL,
  `data` text NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `expired_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `access_k` (`access`),
  KEY `refresh_k` (`refresh`),
  KEY `expired_at_k` (`expired_at`),
  KEY `code_k` (`code`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `oauth2_tokens`
--

INSERT INTO `oauth2_tokens` (`id`, `code`, `access`, `refresh`, `data`, `created_at`, `expired_at`) VALUES
(1, '', 'LLC8D_41OQEIDCT29MM0VG', '', '{\"ClientID\":\"000000\",\"UserID\":\"\",\"RedirectURI\":\"\",\"Scope\":\"read\",\"Code\":\"\",\"CodeCreateAt\":\"0001-01-01T00:00:00Z\",\"CodeExpiresIn\":0,\"Access\":\"LLC8D_41OQEIDCT29MM0VG\",\"AccessCreateAt\":\"2019-09-22T02:41:44.4773573+07:00\",\"AccessExpiresIn\":7200000000000,\"Refresh\":\"\",\"RefreshCreateAt\":\"0001-01-01T00:00:00Z\",\"RefreshExpiresIn\":0}', '2019-09-21 12:41:44', '2019-09-21 14:41:44'),
(2, '', 'HRFA521QOACEKIPFDEIFTW', '', '{\"ClientID\":\"000000\",\"UserID\":\"\",\"RedirectURI\":\"\",\"Scope\":\"read\",\"Code\":\"\",\"CodeCreateAt\":\"0001-01-01T00:00:00Z\",\"CodeExpiresIn\":0,\"Access\":\"HRFA521QOACEKIPFDEIFTW\",\"AccessCreateAt\":\"2019-09-22T02:42:23.6275966+07:00\",\"AccessExpiresIn\":7200000000000,\"Refresh\":\"\",\"RefreshCreateAt\":\"0001-01-01T00:00:00Z\",\"RefreshExpiresIn\":0}', '2019-09-21 12:42:24', '2019-09-21 14:42:24'),
(3, '', 'WUDF0WTHPNI-XJEPUQ6Z9W', 'PZWUMVCJXSEYWOCW_DZOSA', '{\"ClientID\":\"000000\",\"UserID\":\"test\",\"RedirectURI\":\"\",\"Scope\":\"\",\"Code\":\"\",\"CodeCreateAt\":\"0001-01-01T00:00:00Z\",\"CodeExpiresIn\":0,\"Access\":\"WUDF0WTHPNI-XJEPUQ6Z9W\",\"AccessCreateAt\":\"2019-09-22T02:45:10.8341603+07:00\",\"AccessExpiresIn\":7200000000000,\"Refresh\":\"PZWUMVCJXSEYWOCW_DZOSA\",\"RefreshCreateAt\":\"2019-09-22T02:45:10.8341603+07:00\",\"RefreshExpiresIn\":604800000000000}', '2019-09-21 12:45:11', '2019-09-28 12:45:11'),
(4, '', 'NDDKN8GQNJI8N1HNJAFBSA', '', '{\"ClientID\":\"000000\",\"UserID\":\"\",\"RedirectURI\":\"\",\"Scope\":\"read\",\"Code\":\"\",\"CodeCreateAt\":\"0001-01-01T00:00:00Z\",\"CodeExpiresIn\":0,\"Access\":\"NDDKN8GQNJI8N1HNJAFBSA\",\"AccessCreateAt\":\"2019-09-22T02:56:15.6071831+07:00\",\"AccessExpiresIn\":7200000000000,\"Refresh\":\"\",\"RefreshCreateAt\":\"0001-01-01T00:00:00Z\",\"RefreshExpiresIn\":0}', '2019-09-21 12:56:16', '2019-09-21 14:56:16'),
(5, '', 'NMWBBYNFO9UPOC5NR3IM-Q', 'QYMYT5GQUQE9BRAEC0UYJA', '{\"ClientID\":\"0000\",\"UserID\":\"test\",\"RedirectURI\":\"\",\"Scope\":\"\",\"Code\":\"\",\"CodeCreateAt\":\"0001-01-01T00:00:00Z\",\"CodeExpiresIn\":0,\"Access\":\"NMWBBYNFO9UPOC5NR3IM-Q\",\"AccessCreateAt\":\"2019-09-22T03:25:17.0117858+07:00\",\"AccessExpiresIn\":7200000000000,\"Refresh\":\"QYMYT5GQUQE9BRAEC0UYJA\",\"RefreshCreateAt\":\"2019-09-22T03:25:17.0117858+07:00\",\"RefreshExpiresIn\":604800000000000}', '2019-09-21 13:25:17', '2019-09-28 13:25:17'),
(6, '', 'PXKE14KCMTM9XTDZDDX06Q', 'B0I-SRILWR6VOSW98SVQOW', '{\"ClientID\":\"0000\",\"UserID\":\"test\",\"RedirectURI\":\"\",\"Scope\":\"\",\"Code\":\"\",\"CodeCreateAt\":\"0001-01-01T00:00:00Z\",\"CodeExpiresIn\":0,\"Access\":\"PXKE14KCMTM9XTDZDDX06Q\",\"AccessCreateAt\":\"2019-09-22T03:26:09.7228007+07:00\",\"AccessExpiresIn\":7200000000000,\"Refresh\":\"B0I-SRILWR6VOSW98SVQOW\",\"RefreshCreateAt\":\"2019-09-22T03:26:09.7228007+07:00\",\"RefreshExpiresIn\":604800000000000}', '2019-09-21 13:26:10', '2019-09-28 13:26:10');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
