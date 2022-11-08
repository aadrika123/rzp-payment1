-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.7.33 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             11.2.0.6213
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for laravel
CREATE DATABASE IF NOT EXISTS `laravel` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `laravel`;

-- Dumping structure for table laravel.card_details
CREATE TABLE IF NOT EXISTS `card_details` (
  `cid` int(255) NOT NULL AUTO_INCREMENT,
  `id` mediumtext COLLATE utf8mb4_unicode_ci,
  `entity` mediumtext COLLATE utf8mb4_unicode_ci,
  `name` mediumtext COLLATE utf8mb4_unicode_ci,
  `last4` mediumtext COLLATE utf8mb4_unicode_ci,
  `network` mediumtext COLLATE utf8mb4_unicode_ci,
  `type` mediumtext COLLATE utf8mb4_unicode_ci,
  `issuer` mediumtext COLLATE utf8mb4_unicode_ci,
  `international` mediumtext COLLATE utf8mb4_unicode_ci,
  `emi` mediumtext COLLATE utf8mb4_unicode_ci,
  `sub_type` mediumtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravel.card_details: ~76 rows (approximately)
/*!40000 ALTER TABLE `card_details` DISABLE KEYS */;
INSERT INTO `card_details` (`cid`, `id`, `entity`, `name`, `last4`, `network`, `type`, `issuer`, `international`, `emi`, `sub_type`, `created_at`, `updated_at`) VALUES
	(1, '1111', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-10-28 13:45:59', '2022-10-28 13:45:59'),
	(2, 'card_DESp9fNnu0RoNcukk', 'card', 'Gaurav Kumar', '1111', 'Visa', 'debit', NULL, '0', '0', 'business', '2022-10-28 14:00:58', '2022-10-28 14:00:58'),
	(3, 'fd', 'card', 'adsad', '1111', 'Visa', 'debit', NULL, '0', '0', 'business', '2022-10-28 14:01:37', '2022-10-28 14:01:37'),
	(4, 'card_KYo1LxBfDSaZyc', 'card', NULL, '1111', 'Visa', 'debit', NULL, '0', '0', 'consumer', '2022-10-28 14:02:00', '2022-10-28 14:02:00'),
	(5, 'df', 'card', 'sdsafs', '1111', 'Visa', 'debit', NULL, '0', '0', 'business', '2022-10-29 07:47:56', '2022-10-29 07:47:56'),
	(6, 'fdgb', 'card', 'Gauravsfsafc Kumar', '1111', 'Visa', 'debit', NULL, '0', '0', 'business', '2022-10-29 07:47:58', '2022-10-29 07:47:58'),
	(7, 'bdf', 'card', 'cccc', '1111', 'Visa', 'debit', NULL, '0', '0', 'business', '2022-10-29 07:47:59', '2022-10-29 07:47:59'),
	(8, 'card_DESp9fNnu0RoNc', 'card', 'Gaurav Kumar', '1111', 'Visa', 'debit', NULL, '0', '0', 'business', '2022-10-29 07:48:10', '2022-10-29 07:48:10'),
	(9, 'card_DESp9fNnu0RoNc', 'card', 'Gaurav Kumar', '1111', 'Visa', 'debit', NULL, '0', '0', 'business', '2022-10-29 09:21:00', '2022-10-29 09:21:00'),
	(10, 'card_DESp9fNnu0RoNc', 'card', 'Gaurav Kumar', '1111', 'Visa', 'debit', NULL, '0', '0', 'business', '2022-10-29 09:21:33', '2022-10-29 09:21:33'),
	(11, 'card_DESp9fNnu0RoNc', 'card', 'Gaurav Kumar', '1111', 'Visa', 'debit', NULL, '0', '0', 'business', '2022-10-29 09:23:03', '2022-10-29 09:23:03'),
	(12, 'card_DESp9fNnu0RoNc', 'card', 'Gaurav Kumar', '1111', 'Visa', 'debit', NULL, '0', '0', 'business', '2022-10-29 09:23:25', '2022-10-29 09:23:25'),
	(13, 'card_DESp9fNnu0RoNc', 'card', 'Gaurav Kumar', '1111', 'Visa', 'debit', NULL, '0', '0', 'business', '2022-10-29 09:23:44', '2022-10-29 09:23:44'),
	(14, 'card_DESp9fNnu0RoNc', 'card', 'Gaurav Kumar', '1111', 'Visa', 'debit', NULL, '0', '0', 'business', '2022-10-29 09:24:04', '2022-10-29 09:24:04'),
	(15, 'card_DESp9fNnu0RoNc', 'card', 'Gaurav Kumar', '1111', 'Visa', 'debit', NULL, '0', '0', 'business', '2022-10-29 09:24:40', '2022-10-29 09:24:40'),
	(16, 'card_DESp9fNnu0RoNc', 'card', 'Gaurav Kumar', '1111', 'Visa', 'debit', NULL, '0', '0', 'business', '2022-10-29 09:25:55', '2022-10-29 09:25:55'),
	(17, 'card_DESp9fNnu0RoNc', 'card', 'Gaurav Kumar', '1111', 'Visa', 'debit', NULL, '0', '0', 'business', '2022-10-29 09:26:33', '2022-10-29 09:26:33'),
	(18, 'card_DESp9fNnu0RoNc', 'card', 'Gaurav Kumar', '1111', 'Visa', 'debit', NULL, '0', '0', 'business', '2022-10-29 11:41:09', '2022-10-29 11:41:09'),
	(19, 'card_DESp9fNnu0RoNc', 'card', 'Gaurav Kumar', '1111', 'Visa', 'debit', NULL, '0', '0', 'business', '2022-10-29 11:43:20', '2022-10-29 11:43:20'),
	(20, 'card_DESp9fNnu0RoNc', 'card', 'Gaurav Kumar', '1111', 'Visa', 'debit', NULL, '0', '0', 'business', '2022-10-29 11:45:23', '2022-10-29 11:45:23'),
	(21, 'card_DESp9fNnu0RoNc', 'card', 'Gaurav Kumar', '1111', 'Visa', 'debit', NULL, '0', '0', 'business', '2022-10-29 11:46:59', '2022-10-29 11:46:59'),
	(22, 'card_DESp9fNnu0RoNc', 'card', 'Gaurav Kumar', '1111', 'Visa', 'debit', NULL, '0', '0', 'business', '2022-10-29 11:55:05', '2022-10-29 11:55:05'),
	(23, 'card_DESp9fNnu0RoNc', 'card', 'Gaurav Kumar', '1111', 'Visa', 'debit', NULL, '0', '0', 'business', '2022-10-29 11:55:16', '2022-10-29 11:55:16'),
	(24, 'card_DESp9fNnu0RoNc', 'card', 'Gaurav Kumar', '1111', 'Visa', 'debit', NULL, '0', '0', 'business', '2022-10-29 11:57:56', '2022-10-29 11:57:56'),
	(25, 'card_DESp9fNnu0RoNc', 'card', 'Gaurav Kumar', '1111', 'Visa', 'debit', NULL, '0', '0', 'business', '2022-10-29 11:58:59', '2022-10-29 11:58:59'),
	(26, 'card_DESp9fNnu0RoNc', 'card', 'Gaurav Kumar', '1111', 'Visa', 'debit', NULL, '0', '0', 'business', '2022-10-29 11:59:26', '2022-10-29 11:59:26'),
	(27, 'card_DESp9fNnu0RoNc', 'card', 'Gaurav Kumar', '1111', 'Visa', 'debit', NULL, '0', '0', 'business', '2022-10-29 12:00:02', '2022-10-29 12:00:02'),
	(28, 'card_DESp9fNnu0RoNc', 'card', 'Gaurav Kumar', '1111', 'Visa', 'debit', NULL, '0', '0', 'business', '2022-10-29 12:00:59', '2022-10-29 12:00:59'),
	(29, 'card_DESp9fNnu0RoNc', 'card', 'Gaurav Kumar', '1111', 'Visa', 'debit', NULL, '0', '0', 'business', '2022-10-29 12:02:59', '2022-10-29 12:02:59'),
	(30, 'card_DESp9fNnu0RoNc', 'card', 'Gaurav Kumar', '1111', 'Visa', 'debit', NULL, '0', '0', 'business', '2022-10-29 12:06:39', '2022-10-29 12:06:39'),
	(31, 'card_DESp9fNnu0RoNc', 'card', 'Gaurav Kumar', '1111', 'Visa', 'debit', NULL, '0', '0', 'business', '2022-10-29 12:07:00', '2022-10-29 12:07:00'),
	(32, 'card_DESp9fNnu0RoNc', 'card', 'Gaurav Kumar', '1111', 'Visa', 'debit', NULL, '0', '0', 'business', '2022-10-29 12:07:14', '2022-10-29 12:07:14'),
	(33, 'card_DESp9fNnu0RoNc', 'card', 'Gaurav Kumar', '1111', 'Visa', 'debit', NULL, '0', '0', 'business', '2022-10-29 12:08:01', '2022-10-29 12:08:01'),
	(34, 'card_DESp9fNnu0RoNc', 'card', 'Gaurav Kumar', '1111', 'Visa', 'debit', NULL, '0', '0', 'business', '2022-10-29 12:08:37', '2022-10-29 12:08:37'),
	(35, 'card_DESp9fNnu0RoNc', 'card', 'Gaurav Kumar', '1111', 'Visa', 'debit', NULL, '0', '0', 'business', '2022-10-29 12:13:14', '2022-10-29 12:13:14'),
	(36, 'card_DESp9fNnu0RoNc', 'card', 'Gaurav Kumar', '1111', 'Visa', 'debit', NULL, '0', '0', 'business', '2022-10-29 12:15:00', '2022-10-29 12:15:00'),
	(37, 'card_DESp9fNnu0RoNc', 'card', 'Gaurav Kumar', '1111', 'Visa', 'debit', NULL, '0', '0', 'business', '2022-10-29 12:15:45', '2022-10-29 12:15:45'),
	(38, 'card_DESp9fNnu0RoNc', 'card', 'Gaurav Kumar', '1111', 'Visa', 'debit', NULL, '0', '0', 'business', '2022-10-29 12:15:53', '2022-10-29 12:15:53'),
	(39, 'card_DESp9fNnu0RoNc', 'card', 'Gaurav Kumar', '1111', 'Visa', 'debit', NULL, '0', '0', 'business', '2022-10-29 12:19:08', '2022-10-29 12:19:08'),
	(40, 'card_DESp9fNnu0RoNc', 'card', 'Gaurav Kumar', '1111', 'Visa', 'debit', NULL, '0', '0', 'business', '2022-10-29 12:19:31', '2022-10-29 12:19:31'),
	(41, 'card_DESp9fNnu0RoNc', 'card', 'Gaurav Kumar', '1111', 'Visa', 'debit', NULL, '0', '0', 'business', '2022-10-29 12:19:46', '2022-10-29 12:19:46'),
	(42, 'card_DESp9fNnu0RoNc', 'card', 'Gaurav Kumar', '1111', 'Visa', 'debit', NULL, '0', '0', 'business', '2022-10-29 12:20:11', '2022-10-29 12:20:11'),
	(43, 'card_DESp9fNnu0RoNc', 'card', 'Gaurav Kumar', '1111', 'Visa', 'debit', NULL, '0', '0', 'business', '2022-10-29 12:20:39', '2022-10-29 12:20:39'),
	(44, 'card_DESp9fNnu0RoNc', 'card', 'Gaurav Kumar', '1111', 'Visa', 'debit', NULL, '0', '0', 'business', '2022-10-29 12:21:19', '2022-10-29 12:21:19'),
	(45, 'card_DESp9fNnu0RoNc', 'card', 'Gaurav Kumar', '1111', 'Visa', 'debit', NULL, '0', '0', 'business', '2022-10-29 12:22:18', '2022-10-29 12:22:18'),
	(46, 'card_DESp9fNnu0RoNc', 'card', 'Gaurav Kumar', '1111', 'Visa', 'debit', NULL, '0', '0', 'business', '2022-10-29 12:24:56', '2022-10-29 12:24:56'),
	(47, 'card_DESp9fNnu0RoNc', 'card', 'Gaurav Kumar', '1111', 'Visa', 'debit', NULL, '0', '0', 'business', '2022-10-29 12:27:53', '2022-10-29 12:27:53'),
	(48, 'card_DESp9fNnu0RoNc', 'card', 'Gaurav Kumar', '1111', 'Visa', 'debit', NULL, '0', '0', 'business', '2022-10-29 12:28:22', '2022-10-29 12:28:22'),
	(49, 'card_DESp9fNnu0RoNc', 'card', 'Gaurav Kumar', '1111', 'Visa', 'debit', NULL, '0', '0', 'business', '2022-10-29 12:28:49', '2022-10-29 12:28:49'),
	(50, 'card_DESp9fNnu0RoNc', 'card', 'Gaurav Kumar', '1111', 'Visa', 'debit', NULL, '0', '0', 'business', '2022-10-29 12:29:11', '2022-10-29 12:29:11'),
	(51, 'card_DESp9fNnu0RoNc', 'card', 'Gaurav Kumar', '1111', 'Visa', 'debit', NULL, '0', '0', 'business', '2022-10-29 12:29:45', '2022-10-29 12:29:45'),
	(52, 'card_DESp9fNnu0RoNc', 'card', 'Gaurav Kumar', '1111', 'Visa', 'debit', NULL, '0', '0', 'business', '2022-10-29 12:30:24', '2022-10-29 12:30:24'),
	(53, 'card_DESp9fNnu0RoNc', 'card', 'Gaurav Kumar', '1111', 'Visa', 'debit', NULL, '0', '0', 'business', '2022-10-29 12:31:21', '2022-10-29 12:31:21'),
	(54, 'card_DESp9fNnu0RoNc', 'card', 'Gaurav Kumar', '1111', 'Visa', 'debit', NULL, '0', '0', 'business', '2022-10-29 12:31:32', '2022-10-29 12:31:32'),
	(55, 'card_DESp9fNnu0RoNc', 'card', 'Gaurav Kumar', '1111', 'Visa', 'debit', NULL, '0', '0', 'business', '2022-10-29 12:32:44', '2022-10-29 12:32:44'),
	(56, 'card_DESp9fNnu0RoNc', 'card', 'Gaurav Kumar', '1111', 'Visa', 'debit', NULL, '0', '0', 'business', '2022-10-29 12:35:43', '2022-10-29 12:35:43'),
	(57, 'card_DESp9fNnu0RoNc', 'card', 'Gaurav Kumar', '1111', 'Visa', 'debit', NULL, '0', '0', 'business', '2022-10-29 12:36:37', '2022-10-29 12:36:37'),
	(58, 'card_DESp9fNnu0RoNc', 'card', 'Gaurav Kumar', '1111', 'Visa', 'debit', NULL, '0', '0', 'business', '2022-10-29 12:37:22', '2022-10-29 12:37:22'),
	(59, 'card_DESp9fNnu0RoNc', 'card', 'Gaurav Kumar', '1111', 'Visa', 'debit', NULL, '0', '0', 'business', '2022-10-29 12:38:16', '2022-10-29 12:38:16'),
	(60, 'card_DESp9fNnu0RoNc', 'card', 'Gaurav Kumar', '1111', 'Visa', 'debit', NULL, '0', '0', 'business', '2022-10-29 12:38:25', '2022-10-29 12:38:25'),
	(61, 'card_DESp9fNnu0RoNc', 'card', 'Gaurav Kumar', '1111', 'Visa', 'debit', NULL, '0', '0', 'business', '2022-10-29 12:43:13', '2022-10-29 12:43:13'),
	(62, 'card_DESp9fNnu0RoNc', 'card', 'Gaurav Kumar', '1111', 'Visa', 'debit', NULL, '0', '0', 'business', '2022-10-29 12:43:44', '2022-10-29 12:43:44'),
	(63, 'card_DESp9fNnu0RoNc', 'card', 'Gaurav Kumar', '1111', 'Visa', 'debit', NULL, '0', '0', 'business', '2022-10-29 12:44:15', '2022-10-29 12:44:15'),
	(64, 'card_DESp9fNnu0RoNc', 'card', 'Gaurav Kumar', '1111', 'Visa', 'debit', NULL, '0', '0', 'business', '2022-10-29 12:45:44', '2022-10-29 12:45:44'),
	(65, 'card_DESp9fNnu0RoNc', 'card', 'Gaurav Kumar', '1111', 'Visa', 'debit', NULL, '0', '0', 'business', '2022-10-29 12:46:01', '2022-10-29 12:46:01'),
	(66, 'card_DESp9fNnu0RoNc', 'card', 'Gaurav Kumar', '1111', 'Visa', 'debit', NULL, '0', '0', 'business', '2022-10-29 12:46:14', '2022-10-29 12:46:14'),
	(67, 'card_DESp9fNnu0RoNc', 'card', 'Gaurav Kumar', '1111', 'Visa', 'debit', NULL, '0', '0', 'business', '2022-10-29 12:46:21', '2022-10-29 12:46:21'),
	(68, 'card_DESp9fNnu0RoNc', 'card', 'Gaurav Kumar', '1111', 'Visa', 'debit', NULL, '0', '0', 'business', '2022-10-29 12:47:22', '2022-10-29 12:47:22'),
	(69, 'card_DESp9fNnu0RoNc', 'card', 'Gaurav Kumar', '1111', 'Visa', 'debit', NULL, '0', '0', 'business', '2022-10-29 12:47:39', '2022-10-29 12:47:39'),
	(70, 'card_DESp9fNnu0RoNc', 'card', 'Gaurav Kumar', '1111', 'Visa', 'debit', NULL, '0', '0', 'business', '2022-10-29 12:47:52', '2022-10-29 12:47:52'),
	(71, 'card_DESp9fNnu0RoNc', 'card', 'Gaurav Kumar', '1111', 'Visa', 'debit', NULL, '0', '0', 'business', '2022-10-29 12:48:47', '2022-10-29 12:48:47'),
	(72, 'card_DESp9fNnu0RoNc', 'card', 'Gaurav Kumar', '1111', 'Visa', 'debit', NULL, '0', '0', 'business', '2022-10-29 12:49:35', '2022-10-29 12:49:35'),
	(73, 'card_DESp9fNnu0RoNc', 'card', 'Gaurav Kumar', '1111', 'Visa', 'debit', NULL, '0', '0', 'business', '2022-10-29 12:53:58', '2022-10-29 12:53:58'),
	(74, 'card_DESp9fNnu0RoNc', 'card', 'Gaurav Kumar', '1111', 'Visa', 'debit', NULL, '0', '0', 'business', '2022-10-29 13:45:07', '2022-10-29 13:45:07'),
	(75, 'card_DESp9fNnu0RoNc', 'card', 'Gaurav Kumar', '1111', 'Visa', 'debit', NULL, '0', '0', 'business', '2022-10-29 13:46:59', '2022-10-29 13:46:59'),
	(76, 'card_DESp9fNnu0RoNc', 'card', 'Gaurav Kumar', '1111', 'Visa', 'debit', NULL, '0', '0', 'business', '2022-10-29 13:47:08', '2022-10-29 13:47:08'),
	(77, 'card_DESp9fNnu0RoNc', 'card', 'Gaurav Kumar', '1111', 'Visa', 'debit', NULL, '0', '0', 'business', '2022-10-29 13:47:53', '2022-10-29 13:47:53'),
	(78, 'card_DESp9fNnu0RoNc', 'card', 'Gaurav Kumar', '1111', 'Visa', 'debit', NULL, '0', '0', 'business', '2022-10-29 13:48:37', '2022-10-29 13:48:37'),
	(79, 'card_DESp9fNnu0RoNc', 'card', 'Gaurav Kumar', '1111', 'Visa', 'debit', NULL, '0', '0', 'business', '2022-10-29 13:49:11', '2022-10-29 13:49:11'),
	(80, 'card_DESp9fNnu0RoNc', 'card', 'Gaurav Kumar', '1111', 'Visa', 'debit', NULL, '0', '0', 'business', '2022-10-29 13:49:20', '2022-10-29 13:49:20'),
	(81, 'card_DESp9fNnu0RoNc', 'card', 'Gaurav Kumar', '1111', 'Visa', 'debit', NULL, '0', '0', 'business', '2022-10-29 13:49:29', '2022-10-29 13:49:29'),
	(82, 'card_DESp9fNnu0RoNc', 'card', 'Gaurav Kumar', '1111', 'Visa', 'debit', NULL, '0', '0', 'business', '2022-10-29 13:50:11', '2022-10-29 13:50:11'),
	(83, 'card_DESp9fNnu0RoNc', 'card', 'Gaurav Kumar', '1111', 'Visa', 'debit', NULL, '0', '0', 'business', '2022-10-29 13:50:26', '2022-10-29 13:50:26'),
	(84, 'card_DESp9fNnu0RoNc', 'card', 'Gaurav Kumar', '1111', 'Visa', 'debit', NULL, '0', '0', 'business', '2022-11-04 05:44:04', '2022-11-04 05:44:04'),
	(85, 'card_DESp9fNnu0RoNc', 'card', 'Gaurav Kumar', '1111', 'Visa', 'debit', NULL, '0', '0', 'business', '2022-11-04 05:48:55', '2022-11-04 05:48:55'),
	(86, 'card_DESp9fNnu0RoNc', 'card', 'Gaurav Kumar', '1111', 'Visa', 'debit', NULL, '0', '0', 'business', '2022-11-04 05:49:35', '2022-11-04 05:49:35'),
	(87, 'card_DESp9fNnu0RoNc', 'card', 'Gaurav Kumar', '1111', 'Visa', 'debit', NULL, '0', '0', 'business', '2022-11-04 05:50:06', '2022-11-04 05:50:06'),
	(88, 'card_DESp9fNnu0RoNc', 'card', 'Gaurav Kumar', '1111', 'Visa', 'debit', NULL, '0', '0', 'business', '2022-11-04 05:51:09', '2022-11-04 05:51:09'),
	(89, 'card_DESp9fNnu0RoNc', 'card', 'Gaurav Kumar', '1111', 'Visa', 'debit', NULL, '0', '0', 'business', '2022-11-04 05:52:40', '2022-11-04 05:52:40'),
	(90, 'card_DESp9fNnu0RoNc', 'card', 'Gaurav Kumar', '1111', 'Visa', 'debit', NULL, '0', '0', 'business', '2022-11-04 05:52:55', '2022-11-04 05:52:55'),
	(91, 'card_DESp9fNnu0RoNc', 'card', 'Gaurav Kumar', '1111', 'Visa', 'debit', NULL, '0', '0', 'business', '2022-11-04 05:55:23', '2022-11-04 05:55:23'),
	(92, 'card_DESp9fNnu0RoNc', 'card', 'Gaurav Kumar', '1111', 'Visa', 'debit', NULL, '0', '0', 'business', '2022-11-04 05:57:38', '2022-11-04 05:57:38'),
	(93, 'card_DESp9fNnu0RoNc', 'card', 'Gaurav Kumar', '1111', 'Visa', 'debit', NULL, '0', '0', 'business', '2022-11-05 05:53:44', '2022-11-05 05:53:44'),
	(94, 'card_DESp9fNnu0RoNc', 'card', 'Gaurav Kumar', '1111', 'Visa', 'debit', NULL, '0', '0', 'business', '2022-11-05 05:57:39', '2022-11-05 05:57:39'),
	(95, 'card_DESp9fNnu0RoNc', 'card', 'Gaurav Kumar', '1111', 'Visa', 'debit', NULL, '0', '0', 'business', '2022-11-05 05:57:58', '2022-11-05 05:57:58');
/*!40000 ALTER TABLE `card_details` ENABLE KEYS */;

-- Dumping structure for table laravel.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravel.failed_jobs: ~0 rows (approximately)
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;

-- Dumping structure for table laravel.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravel.migrations: ~10 rows (approximately)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1),
	(3, '2019_08_19_000000_create_failed_jobs_table', 1),
	(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
	(5, '2022_10_25_225912_create_payment_requests_table', 2),
	(6, '2022_10_26_193933_create_payment_successes_table', 3),
	(7, '2022_10_26_225643_create_payment_rejects_table', 4),
	(8, '2022_10_27_180442_create_webhook_payments_table', 5),
	(9, '2022_10_27_223957_create_webhook_payment_data_table', 6),
	(10, '2022_10_28_005300_create_card_details_table', 7),
	(11, '2022_11_04_130602_create_tests_table', 8);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Dumping structure for table laravel.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravel.password_resets: ~0 rows (approximately)
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Dumping structure for table laravel.payment_rejects
CREATE TABLE IF NOT EXISTS `payment_rejects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `razerpay_order_id` mediumtext,
  `razerpay_payment_id` mediumtext,
  `razerpay_signature` mediumtext,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table laravel.payment_rejects: ~0 rows (approximately)
/*!40000 ALTER TABLE `payment_rejects` DISABLE KEYS */;
INSERT INTO `payment_rejects` (`id`, `razerpay_order_id`, `razerpay_payment_id`, `razerpay_signature`, `created_at`, `updated_at`) VALUES
	(1, 'fbfgbvs21333', 'uhfsdh1232', 'fuefjff', '2022-10-27 12:02:29', '2022-10-27 12:02:29');
/*!40000 ALTER TABLE `payment_rejects` ENABLE KEYS */;

-- Dumping structure for table laravel.payment_requests
CREATE TABLE IF NOT EXISTS `payment_requests` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `apppartment_id` int(11) DEFAULT NULL,
  `consumer_id` int(11) DEFAULT NULL,
  `razorpay_order_id` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` int(11) DEFAULT NULL,
  `currency` mediumtext COLLATE utf8mb4_unicode_ci,
  `payment_status` int(11) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravel.payment_requests: ~53 rows (approximately)
/*!40000 ALTER TABLE `payment_requests` DISABLE KEYS */;
INSERT INTO `payment_requests` (`id`, `apppartment_id`, `consumer_id`, `razorpay_order_id`, `amount`, `currency`, `payment_status`, `created_at`, `updated_at`) VALUES
	(1, 12, 44, '', NULL, NULL, 0, '2022-10-26 13:39:02', '2022-10-26 13:39:02'),
	(2, 12, 44, '', NULL, NULL, 0, '2022-10-26 13:41:26', '2022-10-26 13:41:26'),
	(3, 12, 44, '', 1543, NULL, 0, '2022-10-26 13:41:36', '2022-10-26 13:41:36'),
	(4, 12, 44, '', 1543, 'INR', 0, '2022-10-26 13:42:24', '2022-10-26 13:42:24'),
	(5, 12, NULL, '', 1543, 'INR', 0, '2022-10-26 13:42:36', '2022-10-26 13:42:36'),
	(6, 12, NULL, 'order_KYILEFJKZ4SuDn', 1543, 'INR', 0, '2022-10-27 07:02:33', '2022-10-27 07:02:33'),
	(7, 12, NULL, 'order_KYIMKfuvmVYniF', 1543, 'INR', 0, '2022-10-27 07:03:35', '2022-10-27 07:03:35'),
	(8, 12, NULL, 'order_KYIPD4UVbd5xwE', 1543, 'INR', 0, '2022-10-27 07:06:19', '2022-10-27 07:06:19'),
	(9, 12, NULL, 'order_KYIPwGgio3wtNP', 1543, 'INR', 0, '2022-10-27 07:07:00', '2022-10-27 07:07:00'),
	(10, NULL, NULL, 'order_KYIQBUpCV3UbL9', 299, 'INR', 0, '2022-10-27 07:07:14', '2022-10-27 07:07:14'),
	(11, NULL, NULL, 'order_KYIQOPDc3SnZPN', 299, 'INR', 0, '2022-10-27 07:07:26', '2022-10-27 07:07:26'),
	(12, NULL, NULL, 'order_KYIqLkgWP5nDrp', 299, 'INR', 0, '2022-10-27 07:32:01', '2022-10-27 07:32:01'),
	(13, NULL, NULL, 'order_KYIzLvw5wll15n', 299, 'INR', 0, '2022-10-27 07:40:32', '2022-10-27 07:40:32'),
	(14, NULL, NULL, 'order_KYJ2H0SijLDkB4', 299, 'INR', 0, '2022-10-27 07:43:18', '2022-10-27 07:43:18'),
	(15, 12, NULL, 'order_KYMNDqQPYS0xk0', 1543, 'INR', 0, '2022-10-27 10:59:13', '2022-10-27 10:59:13'),
	(16, NULL, NULL, 'order_KYMNmfFD8rka40', 299, 'INR', 0, '2022-10-27 10:59:44', '2022-10-27 10:59:44'),
	(17, 12, NULL, 'order_KYMTUOZSV42yPr', 1543, 'INR', 0, '2022-10-27 11:05:08', '2022-10-27 11:05:08'),
	(18, 12, NULL, 'order_KYMboGcyfWKmlJ', 1543, 'INR', 0, '2022-10-27 11:13:01', '2022-10-27 11:13:01'),
	(19, NULL, NULL, 'order_KYNH1KGJBSba5x', 299, 'INR', 0, '2022-10-27 11:52:02', '2022-10-27 11:52:02'),
	(20, NULL, NULL, 'order_KYNJWWZpF1qKa1', 299, 'INR', 0, '2022-10-27 11:54:24', '2022-10-27 11:54:24'),
	(21, NULL, NULL, 'order_KYOX2TNY9Pi8Z0', 299, 'INR', 0, '2022-10-27 13:05:53', '2022-10-27 13:05:53'),
	(22, NULL, NULL, 'order_KYOc3gUZtYPkbF', 299, 'INR', 0, '2022-10-27 13:10:38', '2022-10-27 13:10:38'),
	(23, NULL, NULL, 'order_KYOkQlroAcpdz6', 299, 'INR', 0, '2022-10-27 13:18:34', '2022-10-27 13:18:34'),
	(24, NULL, NULL, 'order_KYOmajZ9wO29wc', 299, 'INR', 0, '2022-10-27 13:20:37', '2022-10-27 13:20:37'),
	(25, NULL, NULL, 'order_KYPFydVkCkxspo', 299, 'INR', 0, '2022-10-27 13:48:26', '2022-10-27 13:48:26'),
	(26, NULL, NULL, 'order_KYgAy0Owj9T1wI', 299, 'INR', 0, '2022-10-28 06:21:28', '2022-10-28 06:21:28'),
	(27, NULL, NULL, 'order_KYgEll7aR1LJ9n', 299, 'INR', 0, '2022-10-28 06:25:04', '2022-10-28 06:25:04'),
	(28, NULL, NULL, 'order_KYgaluQ6eXEUva', 299, 'INR', 0, '2022-10-28 06:45:54', '2022-10-28 06:45:54'),
	(29, 12, NULL, 'order_KYgreLYi9jXLHv', 1543, 'INR', 0, '2022-10-28 07:01:53', '2022-10-28 07:01:53'),
	(30, 12, NULL, 'order_KYgvXrMjcZQ4w5', 1543, 'INR', 0, '2022-10-28 07:05:34', '2022-10-28 07:05:34'),
	(31, NULL, NULL, 'order_KYgvl0n3iGWYiL', 299, 'INR', 0, '2022-10-28 07:05:46', '2022-10-28 07:05:46'),
	(32, NULL, NULL, 'order_KYh0UpNBCABv3t', 299, 'INR', 0, '2022-10-28 07:10:15', '2022-10-28 07:10:15'),
	(33, NULL, NULL, 'order_KYho9l6IEQdKF3', 299, 'INR', 0, '2022-10-28 07:57:16', '2022-10-28 07:57:16'),
	(34, NULL, NULL, 'order_KYhp3SVX3itr50', 299, 'INR', 0, '2022-10-28 07:58:07', '2022-10-28 07:58:07'),
	(35, NULL, NULL, 'order_KYibipF1PKpK1U', 299, 'INR', 0, '2022-10-28 08:44:12', '2022-10-28 08:44:12'),
	(36, NULL, NULL, 'order_KYmDyCGTP03cAe', 299, 'INR', 0, '2022-10-28 12:16:28', '2022-10-28 12:16:28'),
	(37, NULL, NULL, 'order_KYmGAFL9OorEVm', 299, 'INR', 0, '2022-10-28 12:18:33', '2022-10-28 12:18:33'),
	(38, NULL, NULL, 'order_KYmIRfopu6r6XK', 299, 'INR', 0, '2022-10-28 12:20:43', '2022-10-28 12:20:43'),
	(39, NULL, NULL, 'order_KYmJroHesAGb3q', 299, 'INR', 0, '2022-10-28 12:22:03', '2022-10-28 12:22:03'),
	(40, NULL, NULL, 'order_KYmN26WBAqaeEM', 299, 'INR', 0, '2022-10-28 12:25:03', '2022-10-28 12:25:03'),
	(41, NULL, NULL, 'order_KYmOjicXSYKGI4', 299, 'INR', 0, '2022-10-28 12:26:40', '2022-10-28 12:26:40'),
	(42, NULL, NULL, 'order_KYmQReQxOoEQ0b', 299, 'INR', 0, '2022-10-28 12:28:17', '2022-10-28 12:28:17'),
	(43, NULL, NULL, 'order_KYmSdbjY1L0UqY', 299, 'INR', 0, '2022-10-28 12:30:22', '2022-10-28 12:30:22'),
	(44, NULL, NULL, 'order_KYmThzrTEqDvhX', 299, 'INR', 0, '2022-10-28 12:31:22', '2022-10-28 12:31:22'),
	(45, NULL, NULL, 'order_KYmXRbF5QH0uW6', 299, 'INR', 0, '2022-10-28 12:34:55', '2022-10-28 12:34:55'),
	(46, NULL, NULL, 'order_KYmZdstPCdehdg', 299, 'INR', 0, '2022-10-28 12:37:00', '2022-10-28 12:37:00'),
	(47, NULL, NULL, 'order_KYmaOeIMZBUczK', 299, 'INR', 0, '2022-10-28 12:37:42', '2022-10-28 12:37:42'),
	(48, NULL, NULL, 'order_KYmcIppii0TU5E', 299, 'INR', 0, '2022-10-28 12:39:31', '2022-10-28 12:39:31'),
	(49, NULL, NULL, 'order_KYmdXIZjjHSYcK', 299, 'INR', 0, '2022-10-28 12:40:41', '2022-10-28 12:40:41'),
	(50, NULL, NULL, 'order_KYmfUy5szutBMH', 299, 'INR', 0, '2022-10-28 12:42:32', '2022-10-28 12:42:32'),
	(51, NULL, NULL, 'order_KYmiYJrA2XeXQ2', 299, 'INR', 0, '2022-10-28 12:45:26', '2022-10-28 12:45:26'),
	(52, NULL, NULL, 'order_KYmkJpjFVabRHY', 299, 'INR', 0, '2022-10-28 12:47:06', '2022-10-28 12:47:06'),
	(53, NULL, NULL, 'order_KYmpAicpdC55Oi', 11, 'INR', 0, '2022-10-28 12:51:42', '2022-10-28 12:51:42'),
	(54, NULL, NULL, 'order_KYmqvfrPxqEfLR', 11, 'INR', 0, '2022-10-28 12:53:21', '2022-10-28 12:53:21'),
	(55, NULL, NULL, 'order_KYniSl04yGM4rL', 801, 'INR', 0, '2022-10-28 13:44:02', '2022-10-28 13:44:02'),
	(56, NULL, NULL, 'order_KYo0ErpFTKs5wu', 801, 'INR', 0, '2022-10-28 14:00:52', '2022-10-28 14:00:52'),
	(57, NULL, NULL, 'order_KZ7sEduKoxwJll', 587, 'INR', 0, '2022-10-29 09:27:10', '2022-10-29 09:27:10'),
	(58, NULL, NULL, 'order_KZ8XobZj6oWUXQ', 96, 'INR', 0, '2022-10-29 10:06:31', '2022-10-29 10:06:31'),
	(59, NULL, NULL, 'order_KZ8ZHrjXySX709', 101, 'INR', 0, '2022-10-29 10:07:55', '2022-10-29 10:07:55'),
	(60, NULL, NULL, 'order_KZ9a9VLJ7lnq3m', 205, 'INR', 0, '2022-10-29 11:07:26', '2022-10-29 11:07:26'),
	(61, NULL, NULL, 'order_KZ9bmZlmPcQ4xb', 205, 'INR', 0, '2022-10-29 11:08:58', '2022-10-29 11:08:58'),
	(62, NULL, NULL, 'order_KZ9dj59uU0QLT7', 205, 'INR', 0, '2022-10-29 11:10:49', '2022-10-29 11:10:49'),
	(63, NULL, NULL, 'order_KZ9hRlwqwfkCD6', 305, 'INR', 0, '2022-10-29 11:14:20', '2022-10-29 11:14:20');
/*!40000 ALTER TABLE `payment_requests` ENABLE KEYS */;

-- Dumping structure for table laravel.payment_successes
CREATE TABLE IF NOT EXISTS `payment_successes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `razerpay_order_id` mediumtext COLLATE utf8mb4_unicode_ci,
  `razerpay_payment_id` mediumtext COLLATE utf8mb4_unicode_ci,
  `razerpay_signature` mediumtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravel.payment_successes: ~8 rows (approximately)
/*!40000 ALTER TABLE `payment_successes` DISABLE KEYS */;
INSERT INTO `payment_successes` (`id`, `razerpay_order_id`, `razerpay_payment_id`, `razerpay_signature`, `created_at`, `updated_at`) VALUES
	(1, NULL, NULL, NULL, '2022-10-27 08:58:39', '2022-10-27 08:58:39'),
	(2, NULL, NULL, NULL, '2022-10-27 08:59:57', '2022-10-27 08:59:57'),
	(3, NULL, NULL, NULL, '2022-10-27 11:00:35', '2022-10-27 11:00:35'),
	(4, NULL, NULL, NULL, '2022-10-27 11:00:53', '2022-10-27 11:00:53'),
	(5, NULL, NULL, NULL, '2022-10-27 11:00:54', '2022-10-27 11:00:54'),
	(6, NULL, NULL, NULL, '2022-10-27 11:00:55', '2022-10-27 11:00:55'),
	(7, NULL, NULL, NULL, '2022-10-27 11:00:57', '2022-10-27 11:00:57'),
	(8, NULL, NULL, NULL, '2022-10-27 11:00:59', '2022-10-27 11:00:59'),
	(9, 'order_KYMNmfFD8rka40', 'pay_KYMNwVaYAeJMPf', 'f484eb7b1be49c90d566644cfd491cc9bfeee336a351efb668ad092abc3851a1', '2022-10-27 11:02:53', '2022-10-27 11:02:53'),
	(10, 'order_KYMNmfFD8rka40', 'pay_KYMNwVaYAeJMPf', 'f484eb7b1be49c90d566644cfd491cc9bfeee336a351efb668ad092abc3851a1', '2022-10-27 11:13:30', '2022-10-27 11:13:30');
/*!40000 ALTER TABLE `payment_successes` ENABLE KEYS */;

-- Dumping structure for table laravel.personal_access_tokens
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravel.personal_access_tokens: ~0 rows (approximately)
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;

-- Dumping structure for table laravel.tests
CREATE TABLE IF NOT EXISTS `tests` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8mb4_unicode_ci,
  `email` mediumtext COLLATE utf8mb4_unicode_ci,
  `phone` int(11) DEFAULT NULL,
  `add` mediumtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravel.tests: ~2 rows (approximately)
/*!40000 ALTER TABLE `tests` DISABLE KEYS */;
INSERT INTO `tests` (`id`, `name`, `email`, `phone`, `add`, `created_at`, `updated_at`) VALUES
	(1, 'sasm', 'fsfgdg', 423455, 'fdgfdgvvg', NULL, NULL),
	(2, 'dsghd', 'brgbrgbr', 231243525, 'rnh dh', NULL, NULL),
	(3, '4wb4ysv', 'bvrvg', 123545656, 'gfbftgbrz', NULL, NULL);
/*!40000 ALTER TABLE `tests` ENABLE KEYS */;

-- Dumping structure for table laravel.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravel.users: ~0 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

-- Dumping structure for table laravel.webhook_payment_data
CREATE TABLE IF NOT EXISTS `webhook_payment_data` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `entity` mediumtext COLLATE utf8mb4_unicode_ci,
  `account_id` mediumtext COLLATE utf8mb4_unicode_ci,
  `event` mediumtext COLLATE utf8mb4_unicode_ci,
  `contains` mediumtext COLLATE utf8mb4_unicode_ci,
  `payment_id` mediumtext COLLATE utf8mb4_unicode_ci,
  `payment_entity` mediumtext COLLATE utf8mb4_unicode_ci,
  `payment_amount` int(11) DEFAULT NULL,
  `payment_currency` mediumtext COLLATE utf8mb4_unicode_ci,
  `payment_status` mediumtext COLLATE utf8mb4_unicode_ci,
  `payment_order_id` mediumtext COLLATE utf8mb4_unicode_ci,
  `payment_invoice_id` mediumtext COLLATE utf8mb4_unicode_ci,
  `payment_international` mediumtext COLLATE utf8mb4_unicode_ci,
  `payment_method` mediumtext COLLATE utf8mb4_unicode_ci,
  `payment_amount_refunded` int(11) DEFAULT NULL,
  `payment_refund_status` mediumtext COLLATE utf8mb4_unicode_ci,
  `payment_captured` mediumtext COLLATE utf8mb4_unicode_ci,
  `payment_description` longtext COLLATE utf8mb4_unicode_ci,
  `payment_card_id` mediumtext COLLATE utf8mb4_unicode_ci,
  `card_detail_id` mediumtext COLLATE utf8mb4_unicode_ci,
  `payment_bank` mediumtext COLLATE utf8mb4_unicode_ci,
  `payment_wallet` mediumtext COLLATE utf8mb4_unicode_ci,
  `payment_vpa` mediumtext COLLATE utf8mb4_unicode_ci,
  `payment_email` mediumtext COLLATE utf8mb4_unicode_ci,
  `payment_contact` longtext COLLATE utf8mb4_unicode_ci,
  `payment_notes` mediumtext COLLATE utf8mb4_unicode_ci,
  `payment_fee` mediumtext COLLATE utf8mb4_unicode_ci,
  `payment_tax` mediumtext COLLATE utf8mb4_unicode_ci,
  `payment_error_code` mediumtext COLLATE utf8mb4_unicode_ci,
  `payment_error_description` mediumtext COLLATE utf8mb4_unicode_ci,
  `payment_error_source` mediumtext COLLATE utf8mb4_unicode_ci,
  `payment_error_step` mediumtext COLLATE utf8mb4_unicode_ci,
  `payment_error_reason` mediumtext COLLATE utf8mb4_unicode_ci,
  `payment_acquirer_data_type` mediumtext COLLATE utf8mb4_unicode_ci,
  `payment_acquirer_data_value` mediumtext COLLATE utf8mb4_unicode_ci,
  `payment_created_at` mediumtext COLLATE utf8mb4_unicode_ci,
  `webhook_created_at` mediumtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=145 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravel.webhook_payment_data: ~94 rows (approximately)
/*!40000 ALTER TABLE `webhook_payment_data` DISABLE KEYS */;
INSERT INTO `webhook_payment_data` (`id`, `entity`, `account_id`, `event`, `contains`, `payment_id`, `payment_entity`, `payment_amount`, `payment_currency`, `payment_status`, `payment_order_id`, `payment_invoice_id`, `payment_international`, `payment_method`, `payment_amount_refunded`, `payment_refund_status`, `payment_captured`, `payment_description`, `payment_card_id`, `card_detail_id`, `payment_bank`, `payment_wallet`, `payment_vpa`, `payment_email`, `payment_contact`, `payment_notes`, `payment_fee`, `payment_tax`, `payment_error_code`, `payment_error_description`, `payment_error_source`, `payment_error_step`, `payment_error_reason`, `payment_acquirer_data_type`, `payment_acquirer_data_value`, `payment_created_at`, `webhook_created_at`, `created_at`, `updated_at`) VALUES
	(39, 'event', 'acc_DJjlteFMvxWB5t', 'payment.authorized', '["payment"]', 'pay_KYmg4YkCywZlyI', 'payment', 29930, 'INR', 'authorized', 'order_KYmfUy5szutBMH', NULL, '0', 'netbanking', 0, NULL, '0', 'Testing with SAM and WEbhook', NULL, NULL, 'KKBK', NULL, NULL, 'sam@testmail.com', '+919785458000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'bank_transaction_id', '8281595', '1666871122', '1666871137', '2022-10-28 12:51:10', '2022-10-28 12:51:10'),
	(40, 'event', 'acc_DJjlteFMvxWB5t', 'payment.authorized', '["payment"]', 'pay_KYmpGFpH2ZjwAq', 'payment', 1130, 'INR', 'authorized', 'order_KYmpAicpdC55Oi', NULL, '0', 'netbanking', 0, NULL, '0', 'Testing with SAM and WEbhook', NULL, NULL, 'HDFC', NULL, NULL, 'sam@testmail.com', '+919785458000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'bank_transaction_id', '1814836', '1666871644', '1666871646', '2022-10-28 12:51:50', '2022-10-28 12:51:50'),
	(41, 'event', 'acc_DJjlteFMvxWB5t', 'payment.authorized', '["payment"]', 'pay_KYmsO1soxmo1Vl', 'payment', 1130, 'INR', 'authorized', 'order_KYmqvfrPxqEfLR', NULL, '0', 'card', 0, NULL, '0', 'Testing with SAM and WEbhook', 'card_KYmsO9dLH61q2O', NULL, NULL, NULL, NULL, 'sam@testmail.com', '+919785458000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'auth_code', '648901', '1666871822', '1666871840', '2022-10-28 12:55:04', '2022-10-28 12:55:04'),
	(42, 'event', 'acc_DJjlteFMvxWB5t', 'payment.authorized', '["payment"]', 'pay_KYmg4YkCywZlyI', 'payment', 29930, 'INR', 'authorized', 'order_KYmfUy5szutBMH', NULL, '0', 'netbanking', 0, NULL, '0', 'Testing with SAM and WEbhook', NULL, NULL, 'KKBK', NULL, NULL, 'sam@testmail.com', '+919785458000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'bank_transaction_id', '8281595', '1666871122', '1666871137', '2022-10-28 13:37:51', '2022-10-28 13:37:51'),
	(43, 'event', 'acc_DJjlteFMvxWB5t', 'payment.authorized', '["payment"]', 'pay_KYmg4YkCywZlyI', 'payment', 29930, 'INR', 'authorized', 'order_KYmfUy5szutBMH', NULL, '0', 'netbanking', 0, NULL, '0', 'Testing with SAM and WEbhook', NULL, NULL, 'KKBK', NULL, NULL, 'sam@testmail.com', '+919785458000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'bank_transaction_id', '8281595', '1666871122', '1666871137', '2022-10-28 13:51:13', '2022-10-28 13:51:13'),
	(44, 'event', 'acc_BFQ7uQEaa7j2z7', 'payment.captured', '["payment"]', 'pay_DESp9bgForNoUd', 'payment', 100, 'INR', 'captured', 'order_DESoU0U4ikYA19', NULL, '0', 'card', 0, NULL, '1', NULL, 'card_DESp9fNnu0Roc', NULL, NULL, NULL, NULL, 'gaurav.kumar@example.com', '+919876543210', NULL, '2', '0', NULL, NULL, NULL, NULL, NULL, 'auth_code', '828553', '1567674797', '1567674804', '2022-10-28 14:00:58', '2022-10-28 14:00:58'),
	(45, 'event', 'acc_BFQ7uQEaa7j2z7', 'payment.captured', '["payment"]', 'pay_DESp9bgForNoUd', 'payment', 100, 'INR', 'captured', 'order_DESoU0U4ikYA19', NULL, '0', 'card', 0, NULL, '1', NULL, 'card_DESp9fNnNc', NULL, NULL, NULL, NULL, 'gaurav.kumar@example.com', '+919876543210', NULL, '2', '0', NULL, NULL, NULL, NULL, NULL, 'auth_code', '828553', '1567674797', '1567674804', '2022-10-28 14:01:37', '2022-10-28 14:01:37'),
	(46, 'event', 'acc_DJjlteFMvxWB5t', 'payment.authorized', '["payment"]', 'pay_KYo1LsZjSggIwJ', 'payment', 80100, 'INR', 'authorized', 'order_KYo0ErpFTKs5wu', NULL, '0', 'card', 0, NULL, '0', 'Testing with SAM and WEbhook', 'card_KYo1LxBfDSaZyc', NULL, NULL, NULL, NULL, 'sam@testmail.com', '+919785458000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'auth_code', '986820', '1666875853', '1666875856', '2022-10-28 14:02:00', '2022-10-28 14:02:00'),
	(47, 'event', 'acc_BFQ7uQEaa7j2z7', 'payment.captured', '["payment"]', 'pay_DESp9bgForNoUd', 'payment', 100, 'INR', 'captured', 'order_DESoU0U4ikYA19', NULL, '0', 'card', 0, NULL, '1', NULL, 'ghj', NULL, NULL, NULL, NULL, 'gaurav.kumar@example.com', '+919876543210', NULL, '2', '0', NULL, NULL, NULL, NULL, NULL, 'auth_code', '828553', '1567674797', '1567674804', '2022-10-29 07:47:56', '2022-10-29 07:47:56'),
	(48, 'event', 'acc_BFQ7uQEaa7j2z7', 'payment.captured', '["payment"]', 'pay_DESp9bgForNoUd', 'payment', 100, 'INR', 'captured', 'order_DESoU0U4ikYA19', NULL, '0', 'card', 0, NULL, '1', NULL, 'hgj', NULL, NULL, NULL, NULL, 'gaurav.kumar@example.com', '+919876543210', NULL, '2', '0', NULL, NULL, NULL, NULL, NULL, 'auth_code', '828553', '1567674797', '1567674804', '2022-10-29 07:47:58', '2022-10-29 07:47:58'),
	(49, 'event', 'acc_BFQ7uQEaa7j2z7', 'payment.captured', '["payment"]', 'pay_DESp9bgForNoUd', 'payment', 100, 'INR', 'captured', 'order_DESoU0U4ikYA19', NULL, '0', 'card', 0, NULL, '1', NULL, 'rjj', NULL, NULL, NULL, NULL, 'gaurav.kumar@example.com', '+919876543210', NULL, '2', '0', NULL, NULL, NULL, NULL, NULL, 'auth_code', '828553', '1567674797', '1567674804', '2022-10-29 07:47:59', '2022-10-29 07:47:59'),
	(50, 'event', 'acc_BFQ7uQEaa7j2z7', 'payment.captured', '["payment"]', 'pay_DESp9bgForNoUd', 'payment', 100, 'INR', 'captured', 'order_DESoU0U4ikYA19', NULL, '0', 'card', 0, NULL, '1', NULL, 'card_DESp9fNnu0RoNc', NULL, NULL, NULL, NULL, 'gaurav.kumar@example.com', '+919876543210', NULL, '2', '0', NULL, NULL, NULL, NULL, NULL, 'auth_code', '828553', '1567674797', '1567674804', '2022-10-29 07:48:10', '2022-10-29 07:48:10'),
	(51, 'event', 'acc_BFQ7uQEaa7j2z7', 'payment.captured', '["payment"]', 'pay_DESp9bgForNoUd', 'payment', 100, 'INR', 'captured', 'order_DESoU0U4ikYA19', NULL, '0', 'card', 0, NULL, '1', NULL, 'card_DESp9fNnu0RoNc', NULL, NULL, NULL, NULL, 'gaurav.kumar@example.com', '+919876543210', NULL, '2', '0', NULL, NULL, NULL, NULL, NULL, 'auth_code', '828553', '1567674797', '1567674804', '2022-10-29 09:21:00', '2022-10-29 09:21:00'),
	(52, 'event', 'acc_BFQ7uQEaa7j2z7', 'payment.captured', '["payment"]', 'pay_DESp9bgForNoUd', 'payment', 100, 'INR', 'captured', 'order_DESoU0U4ikYA19', NULL, '0', 'card', 0, NULL, '1', NULL, 'card_DESp9fNnu0RoNc', NULL, NULL, NULL, NULL, 'gaurav.kumar@example.com', '+919876543210', NULL, '2', '0', NULL, NULL, NULL, NULL, NULL, 'auth_code', '828553', '1567674797', '1567674804', '2022-10-29 09:21:33', '2022-10-29 09:21:33'),
	(53, 'event', 'acc_BFQ7uQEaa7j2z7', 'payment.captured', '["payment"]', 'pay_DESp9bgForNoUd', 'payment', 100, 'INR', 'captured', 'order_DESoU0U4ikYA19', NULL, '0', 'card', 0, NULL, '1', NULL, 'card_DESp9fNnu0RoNc', NULL, NULL, NULL, NULL, 'gaurav.kumar@example.com', '+919876543210', NULL, '2', '0', NULL, NULL, NULL, NULL, NULL, 'auth_code', '828553', '1567674797', '1567674804', '2022-10-29 09:23:03', '2022-10-29 09:23:03'),
	(54, 'event', 'acc_BFQ7uQEaa7j2z7', 'payment.captured', '["payment"]', 'pay_DESp9bgForNoUd', 'payment', 100, 'INR', 'captured', 'order_DESoU0U4ikYA19', NULL, '0', 'card', 0, NULL, '1', NULL, 'card_DESp9fNnu0RoNc', NULL, NULL, NULL, NULL, 'gaurav.kumar@example.com', '+919876543210', NULL, '2', '0', NULL, NULL, NULL, NULL, NULL, 'auth_code', '828553', '1567674797', '1567674804', '2022-10-29 09:23:25', '2022-10-29 09:23:25'),
	(55, 'event', 'acc_BFQ7uQEaa7j2z7', 'payment.captured', '["payment"]', 'pay_DESp9bgForNoUd', 'payment', 100, 'INR', 'captured', 'order_DESoU0U4ikYA19', NULL, '0', 'card', 0, NULL, '1', NULL, 'card_DESp9fNnu0RoNc', NULL, NULL, NULL, NULL, 'gaurav.kumar@example.com', '+919876543210', NULL, '2', '0', NULL, NULL, NULL, NULL, NULL, 'auth_code', '828553', '1567674797', '1567674804', '2022-10-29 09:23:44', '2022-10-29 09:23:44'),
	(56, 'event', 'acc_BFQ7uQEaa7j2z7', 'payment.captured', '["payment"]', 'pay_DESp9bgForNoUd', 'payment', 100, 'INR', 'captured', 'order_DESoU0U4ikYA19', NULL, '0', 'card', 0, NULL, '1', NULL, 'card_DESp9fNnu0RoNc', NULL, NULL, NULL, NULL, 'gaurav.kumar@example.com', '+919876543210', NULL, '2', '0', NULL, NULL, NULL, NULL, NULL, 'auth_code', '828553', '1567674797', '1567674804', '2022-10-29 09:24:04', '2022-10-29 09:24:04'),
	(57, 'event', 'acc_BFQ7uQEaa7j2z7', 'payment.captured', '["payment"]', 'pay_DESp9bgForNoUd', 'payment', 100, 'INR', 'captured', 'order_DESoU0U4ikYA19', NULL, '0', 'card', 0, NULL, '1', NULL, 'card_DESp9fNnu0RoNc', NULL, NULL, NULL, NULL, 'gaurav.kumar@example.com', '+919876543210', NULL, '2', '0', NULL, NULL, NULL, NULL, NULL, 'auth_code', '828553', '1567674797', '1567674804', '2022-10-29 09:24:40', '2022-10-29 09:24:40'),
	(58, 'event', 'acc_BFQ7uQEaa7j2z7', 'payment.captured', '["payment"]', 'pay_DESp9bgForNoUd', 'payment', 100, 'INR', 'captured', 'order_DESoU0U4ikYA19', NULL, '0', 'card', 0, NULL, '1', NULL, 'card_DESp9fNnu0RoNc', NULL, NULL, NULL, NULL, 'gaurav.kumar@example.com', '+919876543210', NULL, '2', '0', NULL, NULL, NULL, NULL, NULL, 'auth_code', '828553', '1567674797', '1567674804', '2022-10-29 09:25:55', '2022-10-29 09:25:55'),
	(59, 'event', 'acc_BFQ7uQEaa7j2z7', 'payment.captured', '["payment"]', 'pay_DESp9bgForNoUd', 'payment', 100, 'INR', 'captured', 'order_DESoU0U4ikYA19', NULL, '0', 'card', 0, NULL, '1', NULL, 'card_DESp9fNnu0RoNc', NULL, NULL, NULL, NULL, 'gaurav.kumar@example.com', '+919876543210', NULL, '2', '0', NULL, NULL, NULL, NULL, NULL, 'auth_code', '828553', '1567674797', '1567674804', '2022-10-29 09:26:33', '2022-10-29 09:26:33'),
	(60, 'event', 'acc_DJjlteFMvxWB5t', 'payment.authorized', '["payment"]', 'pay_KZ7sNUfOSR7fRi', 'payment', 58700, 'INR', 'authorized', 'order_KZ7sEduKoxwJll', NULL, '0', 'netbanking', 0, NULL, '0', 'Testing with SAM and WEbhook', NULL, NULL, 'HDFC', NULL, NULL, 'sam@testmail.com', '+919785458000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'bank_transaction_id', '7204811', '1666945774', '1666945777', '2022-10-29 09:27:21', '2022-10-29 09:27:21'),
	(61, 'event', 'acc_DJjlteFMvxWB5t', 'payment.authorized', '["payment"]', 'pay_KZ8Y075ABQmmUv', 'payment', 9600, 'INR', 'authorized', 'order_KZ8XobZj6oWUXQ', NULL, '0', 'netbanking', 0, NULL, '0', 'Testing with SAM and WEbhook', NULL, NULL, 'HDFC', NULL, NULL, 'sam@testmail.com', '+919785458000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'bank_transaction_id', '8306232', '1666948139', '1666948143', '2022-10-29 10:06:47', '2022-10-29 10:06:47'),
	(62, 'event', 'acc_DJjlteFMvxWB5t', 'payment.authorized', '["payment"]', 'pay_KZ8ZPmrzrrugj0', 'payment', 10100, 'INR', 'authorized', 'order_KZ8ZHrjXySX709', NULL, '0', 'netbanking', 0, NULL, '0', 'Testing with SAM and WEbhook', NULL, NULL, 'KKBK', NULL, NULL, 'sam@testmail.com', '+919785458000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'bank_transaction_id', '1732834', '1666948219', '1666948222', '2022-10-29 10:08:06', '2022-10-29 10:08:06'),
	(63, 'event', 'acc_DJjlteFMvxWB5t', 'payment.authorized', '["payment"]', 'pay_KZ9aJrzNoH2RC7', 'payment', 20500, 'INR', 'authorized', 'order_KZ9a9VLJ7lnq3m', NULL, '0', 'netbanking', 0, NULL, '0', 'Testing with SAM and WEbhook', NULL, NULL, 'YESB', NULL, NULL, 'sam@testmail.com', '+919785458000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'bank_transaction_id', '8310703', '1666951792', '1666951795', '2022-10-29 11:07:39', '2022-10-29 11:07:39'),
	(64, 'event', 'acc_DJjlteFMvxWB5t', 'payment.authorized', '["payment"]', 'pay_KZ9btMfyS2teW4', 'payment', 20500, 'INR', 'authorized', 'order_KZ9bmZlmPcQ4xb', NULL, '0', 'netbanking', 0, NULL, '0', 'Testing with SAM and WEbhook', NULL, NULL, 'KKBK', NULL, NULL, 'sam@testmail.com', '+919785458000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'bank_transaction_id', '5402376', '1666951881', '1666951888', '2022-10-29 11:09:12', '2022-10-29 11:09:12'),
	(65, 'event', 'acc_DJjlteFMvxWB5t', 'payment.authorized', '["payment"]', 'pay_KZ9dsbcLufSgjR', 'payment', 20500, 'INR', 'authorized', 'order_KZ9dj59uU0QLT7', NULL, '0', 'netbanking', 0, NULL, '0', 'Testing with SAM and WEbhook', NULL, NULL, 'KKBK', NULL, NULL, 'sam@testmail.com', '+919785458000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'bank_transaction_id', '4429046', '1666951994', '1666951999', '2022-10-29 11:11:03', '2022-10-29 11:11:03'),
	(66, 'event', 'acc_DJjlteFMvxWB5t', 'payment.authorized', '["payment"]', 'pay_KZ9haMgvC6jTIb', 'payment', 30500, 'INR', 'authorized', 'order_KZ9hRlwqwfkCD6', NULL, '0', 'upi', 0, NULL, '0', 'Testing with SAM and WEbhook', NULL, NULL, NULL, NULL, 'success@razorpay', 'sam@testmail.com', '+919785458000', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'rrn', '846270692815', '1666952205', '1666952205', '2022-10-29 11:14:29', '2022-10-29 11:14:29'),
	(67, 'event', 'acc_BFQ7uQEaa7j2z7', 'payment.captured', '["payment"]', 'pay_DESp9bgForNoUd', 'payment', 100, 'INR', 'captured', 'order_DESoU0U4ikYA19', NULL, '0', 'card', 0, NULL, '1', NULL, 'card_DESp9fNnu0RoNc', NULL, NULL, NULL, NULL, 'gaurav.kumar@example.com', '+917319867430', NULL, '2', '0', NULL, NULL, NULL, NULL, NULL, 'auth_code', '828553', '1567674797', '1567674804', '2022-10-29 11:41:09', '2022-10-29 11:41:09'),
	(68, 'event', 'acc_BFQ7uQEaa7j2z7', 'payment.captured', '["payment"]', 'pay_DESp9bgForNoUd', 'payment', 100, 'INR', 'captured', 'order_DESoU0U4ikYA19', NULL, '0', 'card', 0, NULL, '1', NULL, 'card_DESp9fNnu0RoNc', NULL, NULL, NULL, NULL, 'gaurav.kumar@example.com', '+917319867430', NULL, '2', '0', NULL, NULL, NULL, NULL, NULL, 'auth_code', '828553', '1567674797', '1567674804', '2022-10-29 11:43:20', '2022-10-29 11:43:20'),
	(69, 'event', 'acc_BFQ7uQEaa7j2z7', 'payment.captured', '["payment"]', 'pay_DESp9bgForNoUd', 'payment', 100, 'INR', 'captured', 'order_DESoU0U4ikYA19', NULL, '0', 'card', 0, NULL, '1', NULL, 'card_DESp9fNnu0RoNc', NULL, NULL, NULL, NULL, 'gaurav.kumar@example.com', '+917319867430', NULL, '2', '0', NULL, NULL, NULL, NULL, NULL, 'auth_code', '828553', '1567674797', '1567674804', '2022-10-29 11:45:23', '2022-10-29 11:45:23'),
	(70, 'event', 'acc_BFQ7uQEaa7j2z7', 'payment.captured', '["payment"]', 'pay_DESp9bgForNoUd', 'payment', 100, 'INR', 'captured', 'order_DESoU0U4ikYA19', NULL, '0', 'card', 0, NULL, '1', NULL, 'card_DESp9fNnu0RoNc', NULL, NULL, NULL, NULL, 'gaurav.kumar@example.com', '+917319867430', NULL, '2', '0', NULL, NULL, NULL, NULL, NULL, 'auth_code', '828553', '1567674797', '1567674804', '2022-10-29 11:46:59', '2022-10-29 11:46:59'),
	(71, 'event', 'acc_BFQ7uQEaa7j2z7', 'payment.captured', '["payment"]', 'pay_DESp9bgForNoUd', 'payment', 100, 'INR', 'captured', 'order_DESoU0U4ikYA19', NULL, '0', 'card', 0, NULL, '1', NULL, 'card_DESp9fNnu0RoNc', NULL, NULL, NULL, NULL, 'gaurav.kumar@example.com', '+917319867430', NULL, '2', '0', NULL, NULL, NULL, NULL, NULL, 'auth_code', '828553', '1567674797', '1567674804', '2022-10-29 11:55:05', '2022-10-29 11:55:05'),
	(72, 'event', 'acc_BFQ7uQEaa7j2z7', 'payment.captured', '["payment"]', 'pay_DESp9bgForNoUd', 'payment', 100, 'INR', 'captured', 'order_DESoU0U4ikYA19', NULL, '0', 'card', 0, NULL, '1', NULL, 'card_DESp9fNnu0RoNc', NULL, NULL, NULL, NULL, 'gaurav.kumar@example.com', '+917319867430', NULL, '2', '0', NULL, NULL, NULL, NULL, NULL, 'auth_code', '828553', '1567674797', '1567674804', '2022-10-29 11:55:16', '2022-10-29 11:55:16'),
	(73, 'event', 'acc_BFQ7uQEaa7j2z7', 'payment.captured', '["payment"]', 'pay_DESp9bgForNoUd', 'payment', 100, 'INR', 'captured', 'order_DESoU0U4ikYA19', NULL, '0', 'card', 0, NULL, '1', NULL, 'card_DESp9fNnu0RoNc', NULL, NULL, NULL, NULL, 'gaurav.kumar@example.com', '+917319867430', NULL, '2', '0', NULL, NULL, NULL, NULL, NULL, 'auth_code', '828553', '1567674797', '1567674804', '2022-10-29 11:57:57', '2022-10-29 11:57:57'),
	(74, 'event', 'acc_BFQ7uQEaa7j2z7', 'payment.captured', '["payment"]', 'pay_DESp9bgForNoUd', 'payment', 100, 'INR', 'captured', 'order_DESoU0U4ikYA19', NULL, '0', 'card', 0, NULL, '1', NULL, 'card_DESp9fNnu0RoNc', NULL, NULL, NULL, NULL, 'gaurav.kumar@example.com', '+917319867430', NULL, '2', '0', NULL, NULL, NULL, NULL, NULL, 'auth_code', '828553', '1567674797', '1567674804', '2022-10-29 11:58:59', '2022-10-29 11:58:59'),
	(75, 'event', 'acc_BFQ7uQEaa7j2z7', 'payment.captured', '["payment"]', 'pay_DESp9bgForNoUd', 'payment', 100, 'INR', 'captured', 'order_DESoU0U4ikYA19', NULL, '0', 'card', 0, NULL, '1', NULL, 'card_DESp9fNnu0RoNc', NULL, NULL, NULL, NULL, 'gaurav.kumar@example.com', '+917319867430', NULL, '2', '0', NULL, NULL, NULL, NULL, NULL, 'auth_code', '828553', '1567674797', '1567674804', '2022-10-29 11:59:26', '2022-10-29 11:59:26'),
	(76, 'event', 'acc_BFQ7uQEaa7j2z7', 'payment.captured', '["payment"]', 'pay_DESp9bgForNoUd', 'payment', 100, 'INR', 'captured', 'order_DESoU0U4ikYA19', NULL, '0', 'card', 0, NULL, '1', NULL, 'card_DESp9fNnu0RoNc', NULL, NULL, NULL, NULL, 'gaurav.kumar@example.com', '+917319867430', NULL, '2', '0', NULL, NULL, NULL, NULL, NULL, 'auth_code', '828553', '1567674797', '1567674804', '2022-10-29 12:00:02', '2022-10-29 12:00:02'),
	(77, 'event', 'acc_BFQ7uQEaa7j2z7', 'payment.captured', '["payment"]', 'pay_DESp9bgForNoUd', 'payment', 100, 'INR', 'captured', 'order_DESoU0U4ikYA19', NULL, '0', 'card', 0, NULL, '1', NULL, 'card_DESp9fNnu0RoNc', NULL, NULL, NULL, NULL, 'gaurav.kumar@example.com', '+917319867430', NULL, '2', '0', NULL, NULL, NULL, NULL, NULL, 'auth_code', '828553', '1567674797', '1567674804', '2022-10-29 12:00:59', '2022-10-29 12:00:59'),
	(78, 'event', 'acc_BFQ7uQEaa7j2z7', 'payment.captured', '["payment"]', 'pay_DESp9bgForNoUd', 'payment', 100, 'INR', 'captured', 'order_DESoU0U4ikYA19', NULL, '0', 'card', 0, NULL, '1', NULL, 'card_DESp9fNnu0RoNc', NULL, NULL, NULL, NULL, 'gaurav.kumar@example.com', '+918797770238', NULL, '2', '0', NULL, NULL, NULL, NULL, NULL, 'auth_code', '828553', '1567674797', '1567674804', '2022-10-29 12:02:59', '2022-10-29 12:02:59'),
	(79, 'event', 'acc_BFQ7uQEaa7j2z7', 'payment.captured', '["payment"]', 'pay_DESp9bgForNoUd', 'payment', 100, 'INR', 'captured', 'order_DESoU0U4ikYA19', NULL, '0', 'card', 0, NULL, '1', NULL, 'card_DESp9fNnu0RoNc', NULL, NULL, NULL, NULL, 'gaurav.kumar@example.com', '+918797770238', NULL, '2', '0', NULL, NULL, NULL, NULL, NULL, 'auth_code', '828553', '1567674797', '1567674804', '2022-10-29 12:06:40', '2022-10-29 12:06:40'),
	(80, 'event', 'acc_BFQ7uQEaa7j2z7', 'payment.captured', '["payment"]', 'pay_DESp9bgForNoUd', 'payment', 100, 'INR', 'captured', 'order_DESoU0U4ikYA19', NULL, '0', 'card', 0, NULL, '1', NULL, 'card_DESp9fNnu0RoNc', NULL, NULL, NULL, NULL, 'gaurav.kumar@example.com', '+918797770238', NULL, '2', '0', NULL, NULL, NULL, NULL, NULL, 'auth_code', '828553', '1567674797', '1567674804', '2022-10-29 12:07:00', '2022-10-29 12:07:00'),
	(81, 'event', 'acc_BFQ7uQEaa7j2z7', 'payment.captured', '["payment"]', 'pay_DESp9bgForNoUd', 'payment', 100, 'INR', 'captured', 'order_DESoU0U4ikYA19', NULL, '0', 'card', 0, NULL, '1', NULL, 'card_DESp9fNnu0RoNc', NULL, NULL, NULL, NULL, 'gaurav.kumar@example.com', '+918797770238', NULL, '2', '0', NULL, NULL, NULL, NULL, NULL, 'auth_code', '828553', '1567674797', '1567674804', '2022-10-29 12:07:14', '2022-10-29 12:07:14'),
	(82, 'event', 'acc_BFQ7uQEaa7j2z7', 'payment.captured', '["payment"]', 'pay_DESp9bgForNoUd', 'payment', 100, 'INR', 'captured', 'order_DESoU0U4ikYA19', NULL, '0', 'card', 0, NULL, '1', NULL, 'card_DESp9fNnu0RoNc', NULL, NULL, NULL, NULL, 'gaurav.kumar@example.com', '+918797770238', NULL, '2', '0', NULL, NULL, NULL, NULL, NULL, 'auth_code', '828553', '1567674797', '1567674804', '2022-10-29 12:08:01', '2022-10-29 12:08:01'),
	(83, 'event', 'acc_BFQ7uQEaa7j2z7', 'payment.captured', '["payment"]', 'pay_DESp9bgForNoUd', 'payment', 100, 'INR', 'captured', 'order_DESoU0U4ikYA19', NULL, '0', 'card', 0, NULL, '1', NULL, 'card_DESp9fNnu0RoNc', NULL, NULL, NULL, NULL, 'gaurav.kumar@example.com', '+918797770238', NULL, '2', '0', NULL, NULL, NULL, NULL, NULL, 'auth_code', '828553', '1567674797', '1567674804', '2022-10-29 12:08:38', '2022-10-29 12:08:38'),
	(84, 'event', 'acc_BFQ7uQEaa7j2z7', 'payment.captured', '["payment"]', 'pay_DESp9bgForNoUd', 'payment', 100, 'INR', 'captured', 'order_DESoU0U4ikYA19', NULL, '0', 'card', 0, NULL, '1', NULL, 'card_DESp9fNnu0RoNc', NULL, NULL, NULL, NULL, 'gaurav.kumar@example.com', '+918797770238', NULL, '2', '0', NULL, NULL, NULL, NULL, NULL, 'auth_code', '828553', '1567674797', '1567674804', '2022-10-29 12:13:14', '2022-10-29 12:13:14'),
	(85, 'event', 'acc_BFQ7uQEaa7j2z7', 'payment.captured', '["payment"]', 'pay_DESp9bgForNoUd', 'payment', 100, 'INR', 'captured', 'order_DESoU0U4ikYA19', NULL, '0', 'card', 0, NULL, '1', NULL, 'card_DESp9fNnu0RoNc', NULL, NULL, NULL, NULL, 'gaurav.kumar@example.com', '+918797770238', NULL, '2', '0', NULL, NULL, NULL, NULL, NULL, 'auth_code', '828553', '1567674797', '1567674804', '2022-10-29 12:15:00', '2022-10-29 12:15:00'),
	(86, 'event', 'acc_BFQ7uQEaa7j2z7', 'payment.captured', '["payment"]', 'pay_DESp9bgForNoUd', 'payment', 100, 'INR', 'captured', 'order_DESoU0U4ikYA19', NULL, '0', 'card', 0, NULL, '1', NULL, 'card_DESp9fNnu0RoNc', NULL, NULL, NULL, NULL, 'gaurav.kumar@example.com', '+918797770238', NULL, '2', '0', NULL, NULL, NULL, NULL, NULL, 'auth_code', '828553', '1567674797', '1567674804', '2022-10-29 12:15:45', '2022-10-29 12:15:45'),
	(87, 'event', 'acc_BFQ7uQEaa7j2z7', 'payment.captured', '["payment"]', 'pay_DESp9bgForNoUd', 'payment', 100, 'INR', 'captured', 'order_DESoU0U4ikYA19', NULL, '0', 'card', 0, NULL, '1', NULL, 'card_DESp9fNnu0RoNc', NULL, NULL, NULL, NULL, 'gaurav.kumar@example.com', '+918797770238', NULL, '2', '0', NULL, NULL, NULL, NULL, NULL, 'auth_code', '828553', '1567674797', '1567674804', '2022-10-29 12:15:53', '2022-10-29 12:15:53'),
	(88, 'event', 'acc_BFQ7uQEaa7j2z7', 'payment.captured', '["payment"]', 'pay_DESp9bgForNoUd', 'payment', 100, 'INR', 'captured', 'order_DESoU0U4ikYA19', NULL, '0', 'card', 0, NULL, '1', NULL, 'card_DESp9fNnu0RoNc', NULL, NULL, NULL, NULL, 'gaurav.kumar@example.com', '+918797770238', NULL, '2', '0', NULL, NULL, NULL, NULL, NULL, 'auth_code', '828553', '1567674797', '1567674804', '2022-10-29 12:19:08', '2022-10-29 12:19:08'),
	(89, 'event', 'acc_BFQ7uQEaa7j2z7', 'payment.captured', '["payment"]', 'pay_DESp9bgForNoUd', 'payment', 100, 'INR', 'captured', 'order_DESoU0U4ikYA19', NULL, '0', 'card', 0, NULL, '1', NULL, 'card_DESp9fNnu0RoNc', NULL, NULL, NULL, NULL, 'gaurav.kumar@example.com', '+918797770238', NULL, '2', '0', NULL, NULL, NULL, NULL, NULL, 'auth_code', '828553', '1567674797', '1567674804', '2022-10-29 12:19:31', '2022-10-29 12:19:31'),
	(90, 'event', 'acc_BFQ7uQEaa7j2z7', 'payment.captured', '["payment"]', 'pay_DESp9bgForNoUd', 'payment', 100, 'INR', 'captured', 'order_DESoU0U4ikYA19', NULL, '0', 'card', 0, NULL, '1', NULL, 'card_DESp9fNnu0RoNc', NULL, NULL, NULL, NULL, 'gaurav.kumar@example.com', '+918797770238', NULL, '2', '0', NULL, NULL, NULL, NULL, NULL, 'auth_code', '828553', '1567674797', '1567674804', '2022-10-29 12:19:46', '2022-10-29 12:19:46'),
	(91, 'event', 'acc_BFQ7uQEaa7j2z7', 'payment.captured', '["payment"]', 'pay_DESp9bgForNoUd', 'payment', 100, 'INR', 'captured', 'order_DESoU0U4ikYA19', NULL, '0', 'card', 0, NULL, '1', NULL, 'card_DESp9fNnu0RoNc', NULL, NULL, NULL, NULL, 'gaurav.kumar@example.com', '+918797770238', NULL, '2', '0', NULL, NULL, NULL, NULL, NULL, 'auth_code', '828553', '1567674797', '1567674804', '2022-10-29 12:20:11', '2022-10-29 12:20:11'),
	(92, 'event', 'acc_BFQ7uQEaa7j2z7', 'payment.captured', '["payment"]', 'pay_DESp9bgForNoUd', 'payment', 100, 'INR', 'captured', 'order_DESoU0U4ikYA19', NULL, '0', 'card', 0, NULL, '1', NULL, 'card_DESp9fNnu0RoNc', NULL, NULL, NULL, NULL, 'gaurav.kumar@example.com', '+917319867430', NULL, '2', '0', NULL, NULL, NULL, NULL, NULL, 'auth_code', '828553', '1567674797', '1567674804', '2022-10-29 12:20:39', '2022-10-29 12:20:39'),
	(93, 'event', 'acc_BFQ7uQEaa7j2z7', 'payment.captured', '["payment"]', 'pay_DESp9bgForNoUd', 'payment', 100, 'INR', 'captured', 'order_DESoU0U4ikYA19', NULL, '0', 'card', 0, NULL, '1', NULL, 'card_DESp9fNnu0RoNc', NULL, NULL, NULL, NULL, 'gaurav.kumar@example.com', '+917319867430', NULL, '2', '0', NULL, NULL, NULL, NULL, NULL, 'auth_code', '828553', '1567674797', '1567674804', '2022-10-29 12:21:19', '2022-10-29 12:21:19'),
	(94, 'event', 'acc_BFQ7uQEaa7j2z7', 'payment.captured', '["payment"]', 'pay_DESp9bgForNoUd', 'payment', 100, 'INR', 'captured', 'order_DESoU0U4ikYA19', NULL, '0', 'card', 0, NULL, '1', NULL, 'card_DESp9fNnu0RoNc', NULL, NULL, NULL, NULL, 'gaurav.kumar@example.com', '+917319867430', NULL, '2', '0', NULL, NULL, NULL, NULL, NULL, 'auth_code', '828553', '1567674797', '1567674804', '2022-10-29 12:22:18', '2022-10-29 12:22:18'),
	(95, 'event', 'acc_BFQ7uQEaa7j2z7', 'payment.captured', '["payment"]', 'pay_DESp9bgForNoUd', 'payment', 100, 'INR', 'captured', 'order_DESoU0U4ikYA19', NULL, '0', 'card', 0, NULL, '1', NULL, 'card_DESp9fNnu0RoNc', NULL, NULL, NULL, NULL, 'gaurav.kumar@example.com', '+917319867430', NULL, '2', '0', NULL, NULL, NULL, NULL, NULL, 'auth_code', '828553', '1567674797', '1567674804', '2022-10-29 12:24:56', '2022-10-29 12:24:56'),
	(96, 'event', 'acc_BFQ7uQEaa7j2z7', 'payment.captured', '["payment"]', 'pay_DESp9bgForNoUd', 'payment', 100, 'INR', 'captured', 'order_DESoU0U4ikYA19', NULL, '0', 'card', 0, NULL, '1', NULL, 'card_DESp9fNnu0RoNc', NULL, NULL, NULL, NULL, 'gaurav.kumar@example.com', '+917319867430', NULL, '2', '0', NULL, NULL, NULL, NULL, NULL, 'auth_code', '828553', '1567674797', '1567674804', '2022-10-29 12:27:53', '2022-10-29 12:27:53'),
	(97, 'event', 'acc_BFQ7uQEaa7j2z7', 'payment.captured', '["payment"]', 'pay_DESp9bgForNoUd', 'payment', 100, 'INR', 'captured', 'order_DESoU0U4ikYA19', NULL, '0', 'card', 0, NULL, '1', NULL, 'card_DESp9fNnu0RoNc', NULL, NULL, NULL, NULL, 'gaurav.kumar@example.com', '+917319867430', NULL, '2', '0', NULL, NULL, NULL, NULL, NULL, 'auth_code', '828553', '1567674797', '1567674804', '2022-10-29 12:28:22', '2022-10-29 12:28:22'),
	(98, 'event', 'acc_BFQ7uQEaa7j2z7', 'payment.captured', '["payment"]', 'pay_DESp9bgForNoUd', 'payment', 100, 'INR', 'captured', 'order_DESoU0U4ikYA19', NULL, '0', 'card', 0, NULL, '1', NULL, 'card_DESp9fNnu0RoNc', NULL, NULL, NULL, NULL, 'gaurav.kumar@example.com', '+917319867430', NULL, '2', '0', NULL, NULL, NULL, NULL, NULL, 'auth_code', '828553', '1567674797', '1567674804', '2022-10-29 12:28:49', '2022-10-29 12:28:49'),
	(99, 'event', 'acc_BFQ7uQEaa7j2z7', 'payment.captured', '["payment"]', 'pay_DESp9bgForNoUd', 'payment', 100, 'INR', 'captured', 'order_DESoU0U4ikYA19', NULL, '0', 'card', 0, NULL, '1', NULL, 'card_DESp9fNnu0RoNc', NULL, NULL, NULL, NULL, 'gaurav.kumar@example.com', '+917319867430', NULL, '2', '0', NULL, NULL, NULL, NULL, NULL, 'auth_code', '828553', '1567674797', '1567674804', '2022-10-29 12:29:11', '2022-10-29 12:29:11'),
	(100, 'event', 'acc_BFQ7uQEaa7j2z7', 'payment.captured', '["payment"]', 'pay_DESp9bgForNoUd', 'payment', 100, 'INR', 'captured', 'order_DESoU0U4ikYA19', NULL, '0', 'card', 0, NULL, '1', NULL, 'card_DESp9fNnu0RoNc', NULL, NULL, NULL, NULL, 'gaurav.kumar@example.com', '+917319867430', NULL, '2', '0', NULL, NULL, NULL, NULL, NULL, 'auth_code', '828553', '1567674797', '1567674804', '2022-10-29 12:29:45', '2022-10-29 12:29:45'),
	(101, 'event', 'acc_BFQ7uQEaa7j2z7', 'payment.captured', '["payment"]', 'pay_DESp9bgForNoUd', 'payment', 100, 'INR', 'captured', 'order_DESoU0U4ikYA19', NULL, '0', 'card', 0, NULL, '1', NULL, 'card_DESp9fNnu0RoNc', NULL, NULL, NULL, NULL, 'gaurav.kumar@example.com', '+917319867430', NULL, '2', '0', NULL, NULL, NULL, NULL, NULL, 'auth_code', '828553', '1567674797', '1567674804', '2022-10-29 12:30:24', '2022-10-29 12:30:24'),
	(102, 'event', 'acc_BFQ7uQEaa7j2z7', 'payment.captured', '["payment"]', 'pay_DESp9bgForNoUd', 'payment', 100, 'INR', 'captured', 'order_DESoU0U4ikYA19', NULL, '0', 'card', 0, NULL, '1', NULL, 'card_DESp9fNnu0RoNc', NULL, NULL, NULL, NULL, 'gaurav.kumar@example.com', '+917319867430', NULL, '2', '0', NULL, NULL, NULL, NULL, NULL, 'auth_code', '828553', '1567674797', '1567674804', '2022-10-29 12:31:21', '2022-10-29 12:31:21'),
	(103, 'event', 'acc_BFQ7uQEaa7j2z7', 'payment.captured', '["payment"]', 'pay_DESp9bgForNoUd', 'payment', 100, 'INR', 'captured', 'order_DESoU0U4ikYA19', NULL, '0', 'card', 0, NULL, '1', NULL, 'card_DESp9fNnu0RoNc', NULL, NULL, NULL, NULL, 'gaurav.kumar@example.com', '+917319867430', NULL, '2', '0', NULL, NULL, NULL, NULL, NULL, 'auth_code', '828553', '1567674797', '1567674804', '2022-10-29 12:31:32', '2022-10-29 12:31:32'),
	(104, 'event', 'acc_BFQ7uQEaa7j2z7', 'payment.captured', '["payment"]', 'pay_DESp9bgForNoUd', 'payment', 100, 'INR', 'captured', 'order_DESoU0U4ikYA19', NULL, '0', 'card', 0, NULL, '1', NULL, 'card_DESp9fNnu0RoNc', NULL, NULL, NULL, NULL, 'gaurav.kumar@example.com', '+917319867430', NULL, '2', '0', NULL, NULL, NULL, NULL, NULL, 'auth_code', '828553', '1567674797', '1567674804', '2022-10-29 12:32:44', '2022-10-29 12:32:44'),
	(105, 'event', 'acc_BFQ7uQEaa7j2z7', 'payment.captured', '["payment"]', 'pay_DESp9bgForNoUd', 'payment', 100, 'INR', 'captured', 'order_DESoU0U4ikYA19', NULL, '0', 'card', 0, NULL, '1', NULL, 'card_DESp9fNnu0RoNc', NULL, NULL, NULL, NULL, 'gaurav.kumar@example.com', '+917319867430', NULL, '2', '0', NULL, NULL, NULL, NULL, NULL, 'auth_code', '828553', '1567674797', '1567674804', '2022-10-29 12:35:43', '2022-10-29 12:35:43'),
	(106, 'event', 'acc_BFQ7uQEaa7j2z7', 'payment.captured', '["payment"]', 'pay_DESp9bgForNoUd', 'payment', 100, 'INR', 'captured', 'order_DESoU0U4ikYA19', NULL, '0', 'card', 0, NULL, '1', NULL, 'card_DESp9fNnu0RoNc', NULL, NULL, NULL, NULL, 'gaurav.kumar@example.com', '+917319867430', NULL, '2', '0', NULL, NULL, NULL, NULL, NULL, 'auth_code', '828553', '1567674797', '1567674804', '2022-10-29 12:36:37', '2022-10-29 12:36:37'),
	(107, 'event', 'acc_BFQ7uQEaa7j2z7', 'payment.captured', '["payment"]', 'pay_DESp9bgForNoUd', 'payment', 100, 'INR', 'captured', 'order_DESoU0U4ikYA19', NULL, '0', 'card', 0, NULL, '1', NULL, 'card_DESp9fNnu0RoNc', NULL, NULL, NULL, NULL, 'gaurav.kumar@example.com', '+917319867430', NULL, '2', '0', NULL, NULL, NULL, NULL, NULL, 'auth_code', '828553', '1567674797', '1567674804', '2022-10-29 12:37:22', '2022-10-29 12:37:22'),
	(108, 'event', 'acc_BFQ7uQEaa7j2z7', 'payment.captured', '["payment"]', 'pay_DESp9bgForNoUd', 'payment', 100, 'INR', 'captured', 'order_DESoU0U4ikYA19', NULL, '0', 'card', 0, NULL, '1', NULL, 'card_DESp9fNnu0RoNc', NULL, NULL, NULL, NULL, 'gaurav.kumar@example.com', '+917319867430', NULL, '2', '0', NULL, NULL, NULL, NULL, NULL, 'auth_code', '828553', '1567674797', '1567674804', '2022-10-29 12:38:16', '2022-10-29 12:38:16'),
	(109, 'event', 'acc_BFQ7uQEaa7j2z7', 'payment.captured', '["payment"]', 'pay_DESp9bgForNoUd', 'payment', 100, 'INR', 'captured', 'order_DESoU0U4ikYA19', NULL, '0', 'card', 0, NULL, '1', NULL, 'card_DESp9fNnu0RoNc', NULL, NULL, NULL, NULL, 'gaurav.kumar@example.com', '+917319867430', NULL, '2', '0', NULL, NULL, NULL, NULL, NULL, 'auth_code', '828553', '1567674797', '1567674804', '2022-10-29 12:38:25', '2022-10-29 12:38:25'),
	(110, 'event', 'acc_BFQ7uQEaa7j2z7', 'payment.captured', '["payment"]', 'pay_DESp9bgForNoUd', 'payment', 100, 'INR', 'captured', 'order_DESoU0U4ikYA19', NULL, '0', 'card', 0, NULL, '1', NULL, 'card_DESp9fNnu0RoNc', NULL, NULL, NULL, NULL, 'gaurav.kumar@example.com', '+917319867430', NULL, '2', '0', NULL, NULL, NULL, NULL, NULL, 'auth_code', '828553', '1567674797', '1567674804', '2022-10-29 12:43:13', '2022-10-29 12:43:13'),
	(111, 'event', 'acc_BFQ7uQEaa7j2z7', 'payment.captured', '["payment"]', 'pay_DESp9bgForNoUd', 'payment', 100, 'INR', 'captured', 'order_DESoU0U4ikYA19', NULL, '0', 'card', 0, NULL, '1', NULL, 'card_DESp9fNnu0RoNc', NULL, NULL, NULL, NULL, 'gaurav.kumar@example.com', '+917319867430', NULL, '2', '0', NULL, NULL, NULL, NULL, NULL, 'auth_code', '828553', '1567674797', '1567674804', '2022-10-29 12:43:44', '2022-10-29 12:43:44'),
	(112, 'event', 'acc_BFQ7uQEaa7j2z7', 'payment.captured', '["payment"]', 'pay_DESp9bgForNoUd', 'payment', 100, 'INR', 'captured', 'order_DESoU0U4ikYA19', NULL, '0', 'card', 0, NULL, '1', NULL, 'card_DESp9fNnu0RoNc', NULL, NULL, NULL, NULL, 'gaurav.kumar@example.com', '+917319867430', NULL, '2', '0', NULL, NULL, NULL, NULL, NULL, 'auth_code', '828553', '1567674797', '1567674804', '2022-10-29 12:44:15', '2022-10-29 12:44:15'),
	(113, 'event', 'acc_BFQ7uQEaa7j2z7', 'payment.captured', '["payment"]', 'pay_DESp9bgForNoUd', 'payment', 100, 'INR', 'captured', 'order_DESoU0U4ikYA19', NULL, '0', 'card', 0, NULL, '1', NULL, 'card_DESp9fNnu0RoNc', NULL, NULL, NULL, NULL, 'gaurav.kumar@example.com', '+917319867430', NULL, '2', '0', NULL, NULL, NULL, NULL, NULL, 'auth_code', '828553', '1567674797', '1567674804', '2022-10-29 12:45:44', '2022-10-29 12:45:44'),
	(114, 'event', 'acc_BFQ7uQEaa7j2z7', 'payment.captured', '["payment"]', 'pay_DESp9bgForNoUd', 'payment', 100, 'INR', 'captured', 'order_DESoU0U4ikYA19', NULL, '0', 'card', 0, NULL, '1', NULL, 'card_DESp9fNnu0RoNc', NULL, NULL, NULL, NULL, 'gaurav.kumar@example.com', '+917319867430', NULL, '2', '0', NULL, NULL, NULL, NULL, NULL, 'auth_code', '828553', '1567674797', '1567674804', '2022-10-29 12:46:01', '2022-10-29 12:46:01'),
	(115, 'event', 'acc_BFQ7uQEaa7j2z7', 'payment.captured', '["payment"]', 'pay_DESp9bgForNoUd', 'payment', 100, 'INR', 'captured', 'order_DESoU0U4ikYA19', NULL, '0', 'card', 0, NULL, '1', NULL, 'card_DESp9fNnu0RoNc', NULL, NULL, NULL, NULL, 'gaurav.kumar@example.com', '+917319867430', NULL, '2', '0', NULL, NULL, NULL, NULL, NULL, 'auth_code', '828553', '1567674797', '1567674804', '2022-10-29 12:46:14', '2022-10-29 12:46:14'),
	(116, 'event', 'acc_BFQ7uQEaa7j2z7', 'payment.captured', '["payment"]', 'pay_DESp9bgForNoUd', 'payment', 100, 'INR', 'captured', 'order_DESoU0U4ikYA19', NULL, '0', 'card', 0, NULL, '1', NULL, 'card_DESp9fNnu0RoNc', NULL, NULL, NULL, NULL, 'gaurav.kumar@example.com', '+917319867430', NULL, '2', '0', NULL, NULL, NULL, NULL, NULL, 'auth_code', '828553', '1567674797', '1567674804', '2022-10-29 12:46:21', '2022-10-29 12:46:21'),
	(117, 'event', 'acc_BFQ7uQEaa7j2z7', 'payment.captured', '["payment"]', 'pay_DESp9bgForNoUd', 'payment', 100, 'INR', 'captured', 'order_DESoU0U4ikYA19', NULL, '0', 'card', 0, NULL, '1', NULL, 'card_DESp9fNnu0RoNc', NULL, NULL, NULL, NULL, 'gaurav.kumar@example.com', '+917319867430', NULL, '2', '0', NULL, NULL, NULL, NULL, NULL, 'auth_code', '828553', '1567674797', '1567674804', '2022-10-29 12:47:22', '2022-10-29 12:47:22'),
	(118, 'event', 'acc_BFQ7uQEaa7j2z7', 'payment.captured', '["payment"]', 'pay_DESp9bgForNoUd', 'payment', 100, 'INR', 'captured', 'order_DESoU0U4ikYA19', NULL, '0', 'card', 0, NULL, '1', NULL, 'card_DESp9fNnu0RoNc', NULL, NULL, NULL, NULL, 'gaurav.kumar@example.com', '+917319867430', NULL, '2', '0', NULL, NULL, NULL, NULL, NULL, 'auth_code', '828553', '1567674797', '1567674804', '2022-10-29 12:47:39', '2022-10-29 12:47:39'),
	(119, 'event', 'acc_BFQ7uQEaa7j2z7', 'payment.captured', '["payment"]', 'pay_DESp9bgForNoUd', 'payment', 100, 'INR', 'captured', 'order_DESoU0U4ikYA19', NULL, '0', 'card', 0, NULL, '1', NULL, 'card_DESp9fNnu0RoNc', NULL, NULL, NULL, NULL, 'gaurav.kumar@example.com', '+917319867430', NULL, '2', '0', NULL, NULL, NULL, NULL, NULL, 'auth_code', '828553', '1567674797', '1567674804', '2022-10-29 12:47:52', '2022-10-29 12:47:52'),
	(120, 'event', 'acc_BFQ7uQEaa7j2z7', 'payment.captured', '["payment"]', 'pay_DESp9bgForNoUd', 'payment', 100, 'INR', 'captured', 'order_DESoU0U4ikYA19', NULL, '0', 'card', 0, NULL, '1', NULL, 'card_DESp9fNnu0RoNc', NULL, NULL, NULL, NULL, 'gaurav.kumar@example.com', '+917319867430', NULL, '2', '0', NULL, NULL, NULL, NULL, NULL, 'auth_code', '828553', '1567674797', '1567674804', '2022-10-29 12:48:47', '2022-10-29 12:48:47'),
	(121, 'event', 'acc_BFQ7uQEaa7j2z7', 'payment.captured', '["payment"]', 'pay_DESp9bgForNoUd', 'payment', 100, 'INR', 'captured', 'order_DESoU0U4ikYA19', NULL, '0', 'card', 0, NULL, '1', NULL, 'card_DESp9fNnu0RoNc', NULL, NULL, NULL, NULL, 'gaurav.kumar@example.com', '+917319867430', NULL, '2', '0', NULL, NULL, NULL, NULL, NULL, 'auth_code', '828553', '1567674797', '1567674804', '2022-10-29 12:49:35', '2022-10-29 12:49:35'),
	(122, 'event', 'acc_BFQ7uQEaa7j2z7', 'payment.captured', '["payment"]', 'pay_DESp9bgForNoUd', 'payment', 100, 'INR', 'captured', 'order_DESoU0U4ikYA19', NULL, '0', 'card', 0, NULL, '1', NULL, 'card_DESp9fNnu0RoNc', NULL, NULL, NULL, NULL, 'gaurav.kumar@example.com', '+917319867430', NULL, '2', '0', NULL, NULL, NULL, NULL, NULL, 'auth_code', '828553', '1567674797', '1567674804', '2022-10-29 12:53:58', '2022-10-29 12:53:58'),
	(123, 'event', 'acc_BFQ7uQEaa7j2z7', 'payment.captured', '["payment"]', 'pay_DESp9bgForNoUd', 'payment', 100, 'INR', 'captured', 'order_DESoU0U4ikYA19', NULL, '0', 'card', 0, NULL, '1', NULL, 'card_DESp9fNnu0RoNc', NULL, NULL, NULL, NULL, 'gaurav.kumar@example.com', '+917319867430', NULL, '2', '0', NULL, NULL, NULL, NULL, NULL, 'auth_code', '828553', '1567674797', '1567674804', '2022-10-29 13:45:07', '2022-10-29 13:45:07'),
	(124, 'event', 'acc_BFQ7uQEaa7j2z7', 'payment.captured', '["payment"]', 'pay_DESp9bgForNoUd', 'payment', 100, 'INR', 'captured', 'order_DESoU0U4ikYA19', NULL, '0', 'card', 0, NULL, '1', NULL, 'card_DESp9fNnu0RoNc', NULL, NULL, NULL, NULL, 'gaurav.kumar@example.com', '+917319867430', NULL, '2', '0', NULL, NULL, NULL, NULL, NULL, 'auth_code', '828553', '1567674797', '1567674804', '2022-10-29 13:46:59', '2022-10-29 13:46:59'),
	(125, 'event', 'acc_BFQ7uQEaa7j2z7', 'payment.captured', '["payment"]', 'pay_DESp9bgForNoUd', 'payment', 100, 'INR', 'captured', 'order_DESoU0U4ikYA19', NULL, '0', 'card', 0, NULL, '1', NULL, 'card_DESp9fNnu0RoNc', NULL, NULL, NULL, NULL, 'gaurav.kumar@example.com', '+917319867430', NULL, '2', '0', NULL, NULL, NULL, NULL, NULL, 'auth_code', '828553', '1567674797', '1567674804', '2022-10-29 13:47:08', '2022-10-29 13:47:08'),
	(126, 'event', 'acc_BFQ7uQEaa7j2z7', 'payment.captured', '["payment"]', 'pay_DESp9bgForNoUd', 'payment', 100, 'INR', 'captured', 'order_DESoU0U4ikYA19', NULL, '0', 'card', 0, NULL, '1', NULL, 'card_DESp9fNnu0RoNc', NULL, NULL, NULL, NULL, 'gaurav.kumar@example.com', '+917319867430', NULL, '2', '0', NULL, NULL, NULL, NULL, NULL, 'auth_code', '828553', '1567674797', '1567674804', '2022-10-29 13:47:53', '2022-10-29 13:47:53'),
	(127, 'event', 'acc_BFQ7uQEaa7j2z7', 'payment.captured', '["payment"]', 'pay_DESp9bgForNoUd', 'payment', 100, 'INR', 'captured', 'order_DESoU0U4ikYA19', NULL, '0', 'card', 0, NULL, '1', NULL, 'card_DESp9fNnu0RoNc', NULL, NULL, NULL, NULL, 'gaurav.kumar@example.com', '+917319867430', NULL, '2', '0', NULL, NULL, NULL, NULL, NULL, 'auth_code', '828553', '1567674797', '1567674804', '2022-10-29 13:48:37', '2022-10-29 13:48:37'),
	(128, 'event', 'acc_BFQ7uQEaa7j2z7', 'payment.captured', '["payment"]', 'pay_DESp9bgForNoUd', 'payment', 100, 'INR', 'captured', 'order_DESoU0U4ikYA19', NULL, '0', 'card', 0, NULL, '1', NULL, 'card_DESp9fNnu0RoNc', NULL, NULL, NULL, NULL, 'gaurav.kumar@example.com', '+917319867430', NULL, '2', '0', NULL, NULL, NULL, NULL, NULL, 'auth_code', '828553', '1567674797', '1567674804', '2022-10-29 13:49:11', '2022-10-29 13:49:11'),
	(129, 'event', 'acc_BFQ7uQEaa7j2z7', 'payment.captured', '["payment"]', 'pay_DESp9bgForNoUd', 'payment', 100, 'INR', 'captured', 'order_DESoU0U4ikYA19', NULL, '0', 'card', 0, NULL, '1', NULL, 'card_DESp9fNnu0RoNc', NULL, NULL, NULL, NULL, 'gaurav.kumar@example.com', '+917319867430', NULL, '2', '0', NULL, NULL, NULL, NULL, NULL, 'auth_code', '828553', '1567674797', '1567674804', '2022-10-29 13:49:20', '2022-10-29 13:49:20'),
	(130, 'event', 'acc_BFQ7uQEaa7j2z7', 'payment.captured', '["payment"]', 'pay_DESp9bgForNoUd', 'payment', 100, 'INR', 'captured', 'order_DESoU0U4ikYA19', NULL, '0', 'card', 0, NULL, '1', NULL, 'card_DESp9fNnu0RoNc', NULL, NULL, NULL, NULL, 'gaurav.kumar@example.com', '+917319867430', NULL, '2', '0', NULL, NULL, NULL, NULL, NULL, 'auth_code', '828553', '1567674797', '1567674804', '2022-10-29 13:49:29', '2022-10-29 13:49:29'),
	(131, 'event', 'acc_BFQ7uQEaa7j2z7', 'payment.captured', '["payment"]', 'pay_DESp9bgForNoUd', 'payment', 100, 'INR', 'captured', 'order_DESoU0U4ikYA19', NULL, '0', 'card', 0, NULL, '1', NULL, 'card_DESp9fNnu0RoNc', NULL, NULL, NULL, NULL, 'gaurav.kumar@example.com', '+917319867430', NULL, '2', '0', NULL, NULL, NULL, NULL, NULL, 'auth_code', '828553', '1567674797', '1567674804', '2022-10-29 13:50:11', '2022-10-29 13:50:11'),
	(132, 'event', 'acc_BFQ7uQEaa7j2z7', 'payment.captured', '["payment"]', 'pay_DESp9bgForNoUd', 'payment', 100, 'INR', 'captured', 'order_DESoU0U4ikYA19', NULL, '0', 'card', 0, NULL, '1', NULL, 'card_DESp9fNnu0RoNc', NULL, NULL, NULL, NULL, 'gaurav.kumar@example.com', '+917319867430', NULL, '2', '0', NULL, NULL, NULL, NULL, NULL, 'auth_code', '828553', '1567674797', '1567674804', '2022-10-29 13:50:26', '2022-10-29 13:50:26'),
	(133, 'event', 'acc_BFQ7uQEaa7j2z7', 'payment.captured', '["payment"]', 'pay_DESp9bgForNoUd', 'payment', 100, 'INR', 'captured', 'order_DESoU0U4ikYA19', NULL, '0', 'card', 0, NULL, '1', NULL, 'card_DESp9fNnu0RoNc', NULL, NULL, NULL, NULL, 'gaurav.kumar@example.com', '+917319867430', NULL, '2', '0', NULL, NULL, NULL, NULL, NULL, 'auth_code', '828553', '1567674797', '1567674804', '2022-11-04 05:44:04', '2022-11-04 05:44:04'),
	(134, 'event', 'acc_BFQ7uQEaa7j2z7', 'payment.captured', '["payment"]', 'pay_DESp9bgForNoUd', 'payment', 100, 'INR', 'captured', 'order_DESoU0U4ikYA19', NULL, '0', 'card', 0, NULL, '1', NULL, 'card_DESp9fNnu0RoNc', NULL, NULL, NULL, NULL, 'deepakkeshri@example.com', '+916203981301', NULL, '2', '0', NULL, NULL, NULL, NULL, NULL, 'auth_code', '828553', '1567674797', '1567674804', '2022-11-04 05:48:55', '2022-11-04 05:48:55'),
	(135, 'event', 'acc_BFQ7uQEaa7j2z7', 'payment.captured', '["payment"]', 'pay_DESp9bgForNoUd', 'payment', 100, 'INR', 'captured', 'order_DESoU0U4ikYA19', NULL, '0', 'card', 0, NULL, '1', NULL, 'card_DESp9fNnu0RoNc', NULL, NULL, NULL, NULL, 'gaurav.kumar@example.com', '+917319867430', NULL, '2', '0', NULL, NULL, NULL, NULL, NULL, 'auth_code', '828553', '1567674797', '1567674804', '2022-11-04 05:49:35', '2022-11-04 05:49:35'),
	(136, 'event', 'acc_BFQ7uQEaa7j2z7', 'payment.captured', '["payment"]', 'pay_DESp9bgForNoUd', 'payment', 100, 'INR', 'captured', 'order_DESoU0U4ikYA19', NULL, '0', 'card', 0, NULL, '1', NULL, 'card_DESp9fNnu0RoNc', NULL, NULL, NULL, NULL, 'gaurav.kumar@example.com', '+916203981301', NULL, '2', '0', NULL, NULL, NULL, NULL, NULL, 'auth_code', '828553', '1567674797', '1567674804', '2022-11-04 05:50:06', '2022-11-04 05:50:06'),
	(137, 'event', 'acc_BFQ7uQEaa7j2z7', 'payment.captured', '["payment"]', 'pay_DESp9bgForroUd', 'payment', 100, 'INR', 'captured', 'order_DESoU0U4ikYA19', NULL, '0', 'card', 0, NULL, '1', NULL, 'card_DESp9fNnu0RoNc', NULL, NULL, NULL, NULL, 'gaurav.kumar@example.com', '+916203981301', NULL, '2', '0', NULL, NULL, NULL, NULL, NULL, 'auth_code', '828553', '1567674797', '1567674804', '2022-11-04 05:51:09', '2022-11-04 05:51:09'),
	(138, 'event', 'acc_BFQ7uQEaa7j2z7', 'payment.captured', '["payment"]', 'pay_DESp9bgForroUd', 'payment', 100, 'INR', 'captured', 'order_DESoU0U4ikYA19', NULL, '0', 'card', 0, NULL, '1', NULL, 'card_DESp9fNnu0RoNc', NULL, NULL, NULL, NULL, 'gaurav.kumar@example.com', '+916203981301', NULL, '2', '0', NULL, NULL, NULL, NULL, NULL, 'auth_code', '828553', '1567674797', '1567674804', '2022-11-04 05:52:40', '2022-11-04 05:52:40'),
	(139, 'event', 'acc_BFQ7uQEaa7j2z7', 'payment.captured', '["payment"]', 'pay_DESp9bgForroUd', 'payment', 100, 'INR', 'captured', 'order_DESoU0U4ikYA19', NULL, '0', 'card', 0, NULL, '1', NULL, 'card_DESp9fNnu0RoNc', NULL, NULL, NULL, NULL, 'gaurav.kumar@example.com', '+916203981301', NULL, '2', '0', NULL, NULL, NULL, NULL, NULL, 'auth_code', '828553', '1567674797', '1567674804', '2022-11-04 05:52:55', '2022-11-04 05:52:55'),
	(140, 'event', 'acc_BFQ7uQEaa7j2z7', 'payment.captured', '["payment"]', 'pay_DESp9bgForroUd', 'payment', 100, 'INR', 'captured', 'order_DESoU0U4ikYA19', NULL, '0', 'card', 0, NULL, '1', NULL, 'card_DESp9fNnu0RoNc', NULL, NULL, NULL, NULL, 'gaurav.kumar@example.com', '+916203981301', NULL, '2', '0', NULL, NULL, NULL, NULL, NULL, 'auth_code', '828553', '1567674797', '1567674804', '2022-11-04 05:55:23', '2022-11-04 05:55:23'),
	(141, 'event', 'acc_BFQ7uQEaa7j2z7', 'payment.captured', '["payment"]', 'pay_DESp9bgForroUd', 'payment', 100, 'INR', 'captured', 'order_DESoU0U4ikYA19', NULL, '0', 'card', 0, NULL, '1', NULL, 'card_DESp9fNnu0RoNc', NULL, NULL, NULL, NULL, 'gaurav.kumar@example.com', '+916203981301', NULL, '2', '0', NULL, NULL, NULL, NULL, NULL, 'auth_code', '828553', '1567674797', '1567674804', '2022-11-04 05:57:39', '2022-11-04 05:57:39'),
	(142, 'event', 'acc_BFQ7uQEaa7j2z7', 'payment.captured', '["payment"]', 'pay_DESp9bgForroUd', 'payment', 100, 'INR', 'captured', 'order_DESoU0U4ikYA19', NULL, '0', 'card', 0, NULL, '1', NULL, 'card_DESp9fNnu0RoNc', NULL, NULL, NULL, NULL, 'deepak@example.com', '+916203981301', NULL, '2', '0', NULL, NULL, NULL, NULL, NULL, 'auth_code', '828553', '1567674797', '1567674804', '2022-11-05 05:53:44', '2022-11-05 05:53:44'),
	(143, 'event', 'acc_BFQ7uQEaa7j2z7', 'payment.captured', '["payment"]', 'pay_DESp9bgForroUd', 'payment', 100, 'INR', 'captured', 'order_DESoU0U4ikYA19', NULL, '0', 'card', 0, NULL, '1', NULL, 'card_DESp9fNnu0RoNc', NULL, NULL, NULL, NULL, 'deepak@example.com', '+916203981301', NULL, '2', '0', NULL, NULL, NULL, NULL, NULL, 'auth_code', '828553', '1567674797', '1567674804', '2022-11-05 05:57:39', '2022-11-05 05:57:39'),
	(144, 'event', 'acc_BFQ7uQEaa7j2z7', 'payment.captured', '["payment"]', 'pay_DESp9bgForroUd', 'payment', 100, 'INR', 'captured', 'order_DESoU0U4ikYA19', NULL, '0', 'card', 0, NULL, '1', NULL, 'card_DESp9fNnu0RoNc', NULL, NULL, NULL, NULL, 'deepak@example.com', '+917319867430', NULL, '2', '0', NULL, NULL, NULL, NULL, NULL, 'auth_code', '828553', '1567674797', '1567674804', '2022-11-05 05:57:58', '2022-11-05 05:57:58');
/*!40000 ALTER TABLE `webhook_payment_data` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
