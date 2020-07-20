-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 20, 2020 at 04:34 PM
-- Server version: 5.7.24
-- PHP Version: 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lightapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_menu`
--

CREATE TABLE `admin_menu` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '0',
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permission` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_menu`
--

INSERT INTO `admin_menu` (`id`, `parent_id`, `order`, `title`, `icon`, `uri`, `permission`, `created_at`, `updated_at`) VALUES
(1, 0, 1, 'Dashboard', 'fa-bar-chart', '/', NULL, NULL, NULL),
(2, 0, 2, 'Admin', 'fa-tasks', '', NULL, NULL, NULL),
(3, 2, 3, 'Users', 'fa-users', 'auth/users', NULL, NULL, NULL),
(4, 2, 4, 'Roles', 'fa-user', 'auth/roles', NULL, NULL, NULL),
(5, 2, 5, 'Permission', 'fa-ban', 'auth/permissions', NULL, NULL, NULL),
(6, 2, 6, 'Menu', 'fa-bars', 'auth/menu', NULL, NULL, NULL),
(7, 2, 7, 'Operation log', 'fa-history', 'auth/logs', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_operation_log`
--

CREATE TABLE `admin_operation_log` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_operation_log`
--

INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-07-19 00:41:53', '2020-07-19 00:41:53'),
(2, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-07-19 00:41:57', '2020-07-19 00:41:57'),
(3, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-19 00:42:18', '2020-07-19 00:42:18'),
(4, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-07-19 00:42:19', '2020-07-19 00:42:19'),
(5, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-07-19 00:42:20', '2020-07-19 00:42:20'),
(6, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-07-19 00:42:20', '2020-07-19 00:42:20'),
(7, 1, 'admin/auth/users/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-19 00:42:32', '2020-07-19 00:42:32'),
(8, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-07-19 00:42:32', '2020-07-19 00:42:32'),
(9, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-07-19 00:42:33', '2020-07-19 00:42:33'),
(10, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-19 00:42:37', '2020-07-19 00:42:37'),
(11, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-07-19 00:42:37', '2020-07-19 00:42:37'),
(12, 1, 'admin/auth/users/create', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-19 00:42:39', '2020-07-19 00:42:39'),
(13, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-07-19 00:42:40', '2020-07-19 00:42:40'),
(14, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-07-19 00:42:41', '2020-07-19 00:42:41'),
(15, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-19 00:42:47', '2020-07-19 00:42:47'),
(16, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-07-19 00:42:47', '2020-07-19 00:42:47'),
(17, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-07-19 00:42:47', '2020-07-19 00:42:47'),
(18, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-19 00:42:50', '2020-07-19 00:42:50'),
(19, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-07-19 00:42:50', '2020-07-19 00:42:50'),
(20, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-07-19 00:42:51', '2020-07-19 00:42:51'),
(21, 1, 'admin', 'GET', '127.0.0.1', '{\"_pjax\":\"#pjax-container\"}', '2020-07-19 00:42:52', '2020-07-19 00:42:52'),
(22, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-07-19 00:42:52', '2020-07-19 00:42:52'),
(23, 1, 'admin', 'GET', '127.0.0.1', '[]', '2020-07-19 00:42:53', '2020-07-19 00:42:53');

-- --------------------------------------------------------

--
-- Table structure for table `admin_permissions`
--

CREATE TABLE `admin_permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `http_path` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_permissions`
--

INSERT INTO `admin_permissions` (`id`, `name`, `slug`, `http_method`, `http_path`, `created_at`, `updated_at`) VALUES
(1, 'All permission', '*', '', '*', NULL, NULL),
(2, 'Dashboard', 'dashboard', 'GET', '/', NULL, NULL),
(3, 'Login', 'auth.login', '', '/auth/login\r\n/auth/logout', NULL, NULL),
(4, 'User setting', 'auth.setting', 'GET,PUT', '/auth/setting', NULL, NULL),
(5, 'Auth management', 'auth.management', '', '/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_roles`
--

CREATE TABLE `admin_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_roles`
--

INSERT INTO `admin_roles` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'administrator', '2020-07-19 00:41:16', '2020-07-19 00:41:16');

-- --------------------------------------------------------

--
-- Table structure for table `admin_role_menu`
--

CREATE TABLE `admin_role_menu` (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_role_menu`
--

INSERT INTO `admin_role_menu` (`role_id`, `menu_id`, `created_at`, `updated_at`) VALUES
(1, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_role_permissions`
--

CREATE TABLE `admin_role_permissions` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_role_permissions`
--

INSERT INTO `admin_role_permissions` (`role_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_role_users`
--

CREATE TABLE `admin_role_users` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_role_users`
--

INSERT INTO `admin_role_users` (`role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `username`, `password`, `name`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', '$2y$10$7qKB58xVwekswsTyDZcZBeDFUAPaGc6zTbCBBV4klcUvbMAVyRr.a', 'Administrator', NULL, 'UdjE0W0aQ59yphxmPh8OH7pAxwACCcRX53mBWYMr4Yy7e5Nq7jdlzcQ5bfCR', '2020-07-19 00:41:16', '2020-07-19 00:41:16');

-- --------------------------------------------------------

--
-- Table structure for table `admin_user_permissions`
--

CREATE TABLE `admin_user_permissions` (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `appareil`
--

CREATE TABLE `appareil` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `etat` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `val_c` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qrcode` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_installation` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `problemes` int(11) NOT NULL DEFAULT '0',
  `icone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `frequence_de_suivie` int(11) NOT NULL DEFAULT '0',
  `dernier_suivie` int(11) NOT NULL DEFAULT '0',
  `control` tinyint(1) NOT NULL DEFAULT '0',
  `batiment_id` bigint(20) UNSIGNED NOT NULL,
  `salle_id` bigint(20) UNSIGNED NOT NULL,
  `conso` int(255) NOT NULL,
  `conso_set` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `unite` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'kW',
  `quantite` int(11) NOT NULL DEFAULT '1',
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'device'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `appareil`
--

INSERT INTO `appareil` (`id`, `nom`, `etat`, `created_at`, `updated_at`, `val_c`, `qrcode`, `date_installation`, `problemes`, `icone`, `frequence_de_suivie`, `dernier_suivie`, `control`, `batiment_id`, `salle_id`, `conso`, `conso_set`, `unite`, `quantite`, `type`) VALUES
(1, 'Réfrigérateur', 1, NULL, NULL, '-5', 'device-1', '2020-07-20 09:07:06', 0, 'asset/imgs/app/frigo.svg', 0, 0, 0, 2, 1, 350, '340,345,300', 'kW', 1, 'device'),
(2, 'Gazinière', 1, NULL, NULL, '10', 'device-2', '2020-07-20 09:10:55', 0, 'asset/imgs/app/gaz.svg', 0, 0, 0, 2, 1, 0, '', '', 1, 'device'),
(3, 'Détecteur d\'incendie', 1, NULL, NULL, '30', 'device-3', '2020-07-20 09:15:01', 0, 'asset/imgs/app/smoke2.svg', 0, 0, 1, 2, 1, 0, '', 'kW', 1, 'sensor'),
(10, 'Ordinateur de Bureau', 1, NULL, NULL, '', 'device-5', '2020-07-20 09:25:04', 0, 'asset/imgs/app/computer.svg', 0, 0, 0, 1, 0, 200, '200,180,185', 'kW', 1, 'device'),
(11, 'Neon de couloir', 1, NULL, NULL, '50', 'device-7', '2020-07-20 09:28:46', 0, 'asset/imgs/app/eco-light.svg', 0, 0, 1, 1, 0, 190, '100,120,89', 'kW', 1, 'device'),
(12, 'Détecteur de présence', 1, NULL, NULL, '30', 'device-8', '2020-07-20 09:30:32', 0, 'asset/imgs/app/sensor_presence.svg', 0, 0, 1, 1, 0, 0, '', 'kW', 1, 'sensor'),
(13, 'Robinet Salle d\'eau', 1, NULL, NULL, '', 'device-45', '2020-07-20 09:35:21', 0, 'asset/imgs/app/sink.svg', 0, 0, 0, 3, 4, 0, '', 'm3/s', 1, 'no-device'),
(14, 'Urinoire Salle d\'eau', 1, NULL, NULL, '', 'device-9', '2020-07-20 09:38:59', 0, 'asset/imgs/app/urinal.svg', 0, 0, 0, 3, 4, 0, '', 'm3/s', 1, 'no-device'),
(15, 'Projecteur SRIT2A', 1, NULL, NULL, '', 'device-99', '2020-07-20 09:43:30', 0, 'asset/imgs/app/air-conditioner.svg', 0, 0, 1, 3, 3, 110, '110,108,109', 'W', 1, 'device'),
(16, 'Climatiseur SRIT2A\r\n', 1, NULL, NULL, '24', 'device-21', '2020-07-20 09:45:35', 0, 'asset/imgs/app/projector.svg', 0, 0, 1, 3, 3, 1, '', 'kW', 1, 'device'),
(17, 'Neon SRIT2A', 1, NULL, NULL, '50', 'device-55', '2020-07-20 09:48:39', 0, 'asset/imgs/app/eco-light.svg', 0, 0, 1, 3, 3, 190, '180,185, 189', 'W', 2, 'device');

-- --------------------------------------------------------

--
-- Table structure for table `batiment`
--

CREATE TABLE `batiment` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `batiment`
--

INSERT INTO `batiment` (`id`, `nom`, `code`) VALUES
(1, 'Direction Pédagogique', 'DP'),
(2, 'Restaurant', 'resto'),
(3, 'Batiment D', 'batd');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(2, '2020_05_11_213840_create_search_user_model', 1),
(3, '2020_05_07_163008_new_features', 2),
(5, '2020_05_23_110908_add_remember_token_users_table', 3),
(6, '2014_10_12_100000_create_password_resets_table', 4),
(7, '2020_06_02_165454_add_user_account_version', 5),
(8, '2014_10_12_000000_create_users_table', 6),
(9, '2019_08_19_000000_create_failed_jobs_table', 6),
(10, '2020_06_22_161023_create_batiment', 6),
(11, '2020_06_23_051511_create_domaine', 7),
(12, '2016_01_04_173148_create_admin_tables', 8),
(13, '2020_07_20_081149_create_salle', 9),
(14, '2020_07_20_071930_create_appareils', 10),
(15, '2020_07_20_082431_delete_tables', 11),
(16, '2020_07_20_082639_delete_tables2', 12),
(17, '2020_07_20_083302_update_batiment', 13),
(18, '2020_07_20_095710_add_signalement', 14);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('jeanmarcdjebi@gmail.com', '$2y$10$E9q7hBq85rxI9w9UmcImC.NNC8WflY.g9TfhDnk.p5qIxzgDnPHzK', '2020-06-11 14:26:28');

-- --------------------------------------------------------

--
-- Table structure for table `salle`
--

CREATE TABLE `salle` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batiment_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `salle`
--

INSERT INTO `salle` (`id`, `nom`, `code`, `batiment_id`, `created_at`, `updated_at`) VALUES
(1, 'cuisine', 'cuisine', 2, NULL, NULL),
(2, 'Bureau', 'bureau', 1, NULL, NULL),
(3, 'Salle de classe', 'SRIT2A', 3, NULL, NULL),
(4, 'Salle d\'eau', 'salle_eau', 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `searchuserindex`
--

CREATE TABLE `searchuserindex` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `users_id` bigint(20) UNSIGNED NOT NULL,
  `keywords` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `searchuserindex`
--

INSERT INTO `searchuserindex` (`id`, `users_id`, `keywords`, `created_at`, `updated_at`) VALUES
(1, 1, 'Dje Bi;Jean-Marc 2;Dje Bi Jean-Marc 2;Jean-Marc 2 Dje Bi', '2020-06-04 23:26:35', '2020-06-04 23:26:35'),
(2, 12, 'Dje Bi;Jean-Marc;Dje Bi Jean-Marc;Jean-Marc Dje Bi', '2020-06-04 23:26:35', '2020-06-05 00:04:21'),
(3, 13, 'Badra;Ali;Badra Ali;Ali Badra', '2020-06-04 23:26:35', '2020-06-04 23:26:35'),
(4, 356, '5e7df68d8e85c;5e7df68d8e85e;5e7df68d8e85c 5e7df68d8e85e;5e7df68d8e85e 5e7df68d8e85c', '2020-06-04 23:26:35', '2020-06-04 23:26:35'),
(5, 357, '5e7df68d8e993;5e7df68d8e999;5e7df68d8e993 5e7df68d8e999;5e7df68d8e999 5e7df68d8e993', '2020-06-04 23:26:35', '2020-06-04 23:26:35'),
(6, 358, '5e7df68d8eab7;5e7df68d8eab9;5e7df68d8eab7 5e7df68d8eab9;5e7df68d8eab9 5e7df68d8eab7', '2020-06-04 23:26:35', '2020-06-04 23:26:35'),
(7, 359, '5e7df68d8ebd8;5e7df68d8ebda;5e7df68d8ebd8 5e7df68d8ebda;5e7df68d8ebda 5e7df68d8ebd8', '2020-06-04 23:26:35', '2020-06-04 23:26:35'),
(8, 363, '5e7df68d8efa4;5e7df68d8efa6;5e7df68d8efa4 5e7df68d8efa6;5e7df68d8efa6 5e7df68d8efa4', '2020-06-04 23:26:35', '2020-06-04 23:26:35'),
(9, 364, '5e7df68d8f096;5e7df68d8f097;5e7df68d8f096 5e7df68d8f097;5e7df68d8f097 5e7df68d8f096', '2020-06-04 23:26:35', '2020-06-04 23:26:35'),
(10, 365, '5e7df68d8f17f;5e7df68d8f180;5e7df68d8f17f 5e7df68d8f180;5e7df68d8f180 5e7df68d8f17f', '2020-06-04 23:26:35', '2020-06-04 23:26:35'),
(11, 419, 'Stéphano;Olivier;Stéphano Olivier;Olivier Stéphano', '2020-06-04 23:26:35', '2020-06-04 23:26:35'),
(12, 427, 'Goli;Bob;Goli Bob;Bob Goli', '2020-06-04 23:26:35', '2020-06-04 23:26:35'),
(13, 428, 'Kouassi;Paul;Kouassi Paul;Paul Kouassi', '2020-06-04 23:26:35', '2020-06-04 23:26:35'),
(14, 429, 'Diarra;Ami;Diarra Ami;Ami Diarra', '2020-06-04 23:26:35', '2020-06-04 23:26:35'),
(15, 430, 'Doumbia;Al;Doumbia Al;Al Doumbia', '2020-06-04 23:26:35', '2020-06-04 23:26:35'),
(16, 431, 'Bamba;Djiakité;Bamba Djiakité;Djiakité Bamba', '2020-06-04 23:26:35', '2020-06-04 23:26:35'),
(17, 432, 'Bi Dje;Paul Djordan;Bi Dje Paul Djordan;Paul Djordan Bi Dje', '2020-06-04 23:26:35', '2020-06-04 23:26:35'),
(18, 433, 'Kouassi;Doudou bi Junior;Kouassi Doudou bi Junior;Doudou bi Junior Kouassi', '2020-06-04 23:26:35', '2020-06-04 23:26:35'),
(19, 434, 'Stéphano;Bob;Stéphano Bob;Bob Stéphano', '2020-06-04 23:26:35', '2020-06-04 23:26:35'),
(20, 435, 'Stéphano;Ckeick;Stéphano Ckeick;Ckeick Stéphano', '2020-06-04 23:26:35', '2020-06-04 23:26:35'),
(21, 436, 'test;test;test test;test test', '2020-06-04 23:26:35', '2020-06-04 23:26:35'),
(22, 441, 'test;test;test test;test test', '2020-06-04 23:31:45', '2020-06-04 23:31:45'),
(23, 442, 'test;test;test test;test test', '2020-06-04 23:31:46', '2020-06-04 23:31:46'),
(24, 443, 'testSrHa;testmB6Q;testSrHa testmB6Q;testmB6Q testSrHa', '2020-06-04 23:32:45', '2020-06-04 23:32:45'),
(25, 444, 'testgcbf;testBr02;testgcbf testBr02;testBr02 testgcbf', '2020-06-04 23:32:46', '2020-06-04 23:32:46'),
(26, 447, 'testWV9l;testv3mY;testWV9l testv3mY;testv3mY testWV9l', '2020-06-04 23:36:08', '2020-06-04 23:36:08'),
(27, 448, 'testgIAX;testUXfU;testgIAX testUXfU;testUXfU testgIAX', '2020-06-04 23:36:09', '2020-06-04 23:36:09'),
(28, 449, 'Stéphano;Jean-Marc;Stéphano Jean-Marc;Jean-Marc Stéphano', '2020-06-04 23:39:08', '2020-06-04 23:39:08');

-- --------------------------------------------------------

--
-- Table structure for table `signalement`
--

CREATE TABLE `signalement` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sujet` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `appareil_id` bigint(20) UNSIGNED NOT NULL,
  `statut` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `nom` varchar(255) DEFAULT NULL,
  `prenom` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `pays` varchar(255) DEFAULT NULL,
  `numero` varchar(20) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `active` tinyint(1) DEFAULT '0',
  `date_inscription` datetime DEFAULT CURRENT_TIMESTAMP,
  `ville` varchar(100) DEFAULT NULL,
  `commune` varchar(100) DEFAULT NULL,
  `promo1` varchar(20) DEFAULT NULL,
  `promo2` varchar(20) DEFAULT NULL,
  `emploi` varchar(255) DEFAULT NULL,
  `universite` varchar(255) DEFAULT NULL,
  `is_staff` int(11) NOT NULL DEFAULT '0',
  `staff_role` varchar(20) DEFAULT 'member',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `version` int(10) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `nom`, `prenom`, `email`, `pays`, `numero`, `password`, `active`, `date_inscription`, `ville`, `commune`, `promo1`, `promo2`, `emploi`, `universite`, `is_staff`, `staff_role`, `remember_token`, `created_at`, `updated_at`, `version`) VALUES
(1, NULL, 'Dje Bi', 'Jean-Marc 2', 'jeanmarcdjebi.2@gmail.com', NULL, NULL, '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 0, '2020-05-26 10:54:16', NULL, NULL, NULL, NULL, NULL, NULL, 0, 'member', NULL, NULL, NULL, 1),
(12, NULL, 'Dje Bi', 'Jean-Marc', 'jeanmarcdjebi@gmail.com', 'CI', '+255 47 37 28 00', '$2y$10$9f8NjXy87dfCsJpQOX/EkOak4VxjDjaqH7JQl1Wv62DACEya8oR7G', 0, '2020-03-22 12:01:12', 'Abidjan', 'Commerce', '2000', '2003', 'Développeur à Oschool', 'ESATIC', 1, 'admin', 'spXxb4XYESb0617tSBIGmROmNvOJUsOrM9vCUPxaVzRuKWHewsI7luc5wQFe', NULL, '2020-06-04 00:18:07', 2),
(13, NULL, 'Badra', 'Ali', 'ali.badra@gmail.com', 'SA', '', '$2y$10$vbT7TwyRut1wBIB11PD8gOaeflSa05lT/WbOG.PzYM9MhgzccYkAS', 0, '2020-03-22 12:32:10', 'Abidjan', 'AngrÃ©', '2016', '2018', NULL, NULL, 0, 'member', NULL, NULL, '2020-06-04 00:32:09', 2),
(356, NULL, '5e7df68d8e85c', '5e7df68d8e85e', '5e7df68d8e85f@youco.com', NULL, NULL, '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 0, '2020-03-27 12:50:21', NULL, NULL, NULL, NULL, NULL, NULL, 1, 'admin', NULL, NULL, NULL, 1),
(357, NULL, '5e7df68d8e993', '5e7df68d8e999', '5e7df68d8e99a@youco.com', NULL, NULL, '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 0, '2020-03-27 12:50:21', NULL, NULL, NULL, NULL, NULL, NULL, 0, 'member', NULL, NULL, NULL, 1),
(358, NULL, '5e7df68d8eab7', '5e7df68d8eab9', '5e7df68d8eaba@youco.com', NULL, NULL, '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 0, '2020-03-27 12:50:21', NULL, NULL, NULL, NULL, NULL, NULL, 0, 'member', NULL, NULL, NULL, 1),
(359, NULL, '5e7df68d8ebd8', '5e7df68d8ebda', '5e7df68d8ebdb@youco.com', NULL, NULL, '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 0, '2020-03-27 12:50:21', NULL, NULL, NULL, NULL, NULL, NULL, 0, 'member', NULL, NULL, NULL, 1),
(363, NULL, '5e7df68d8efa4', '5e7df68d8efa6', '5e7df68d8efa7@youco.com', NULL, NULL, '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 0, '2020-03-27 12:50:21', NULL, NULL, NULL, NULL, NULL, NULL, 0, 'member', NULL, NULL, NULL, 1),
(364, NULL, '5e7df68d8f096', '5e7df68d8f097', '5e7df68d8f098@youco.com', NULL, NULL, '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 0, '2020-03-27 12:50:21', NULL, NULL, NULL, NULL, NULL, NULL, 0, 'member', NULL, NULL, NULL, 1),
(365, NULL, '5e7df68d8f17f', '5e7df68d8f180', '5e7df68d8f181@youco.com', NULL, NULL, '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 0, '2020-03-27 12:50:21', NULL, NULL, NULL, NULL, NULL, NULL, 0, 'member', NULL, NULL, NULL, 1),
(419, NULL, 'Stéphano', 'Olivier', 'stephi@gmail.com', NULL, NULL, '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 0, '2020-04-08 10:27:31', NULL, NULL, NULL, NULL, NULL, NULL, 0, 'member', NULL, NULL, NULL, 1),
(427, NULL, 'Goli', 'Bob', 'tidev91@gmail.com', 'CI', '', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 0, '2020-04-15 19:19:21', 'Abidjan', 'Angré', '2000', '2003', NULL, NULL, 0, 'member', NULL, NULL, NULL, 1),
(428, NULL, 'Kouassi', 'Paul', 'kouassi@gmail.com', 'CI', '', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 0, '2020-04-20 04:26:03', 'Bouaké', 'Commerce', '2000', '2003', 'Commercial', 'INPHB', 0, 'member', NULL, NULL, NULL, 1),
(429, NULL, 'Diarra', 'Ami', 'ami.78@gmail.com', '', '+255 47 37 28 21', '356a192b7913b04c54574d18c28d46e6395428ab', 0, '2020-04-22 03:57:51', '', '', '', '', '', '', 0, 'member', NULL, NULL, NULL, 1),
(430, NULL, 'Doumbia', 'Al', 'doum.bia@gmail.com', NULL, NULL, '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 0, '2020-04-23 13:46:36', NULL, NULL, NULL, NULL, NULL, NULL, 0, 'member', NULL, NULL, NULL, 1),
(431, NULL, 'Bamba', 'Djiakité', 'dji.tk@gmail.com', NULL, NULL, '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 0, '2020-04-23 13:47:09', NULL, NULL, NULL, NULL, NULL, NULL, 0, 'member', NULL, NULL, NULL, 1),
(432, NULL, 'Bi Dje', 'Paul Djordan', 'paul.djordan@gmail.com', NULL, NULL, '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 0, '2020-04-23 13:48:41', NULL, NULL, NULL, NULL, NULL, NULL, 0, 'member', NULL, NULL, NULL, 1),
(433, NULL, 'Kouassi', 'Doudou bi Junior', 'doudou@gmail.com', NULL, NULL, '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 0, '2020-04-23 13:49:27', NULL, NULL, NULL, NULL, NULL, NULL, 0, 'member', NULL, NULL, NULL, 1),
(434, NULL, 'Stéphano', 'Bob', 'arcdjebi@gmail.com', NULL, NULL, '$2y$10$Hpi50ToNTFHRv7WMcvcSJ./B2PKxtwdEydOrjy.0eN5p6zWx.j01m', 0, '2020-06-04 01:16:39', NULL, NULL, NULL, NULL, NULL, NULL, 0, 'member', NULL, NULL, NULL, 1),
(435, NULL, 'Stéphano', 'Ckeick', 'superbadra@gmail.com', NULL, NULL, '$2y$10$ogq6gCC2H3YYmPlssKcAeOUz4BkB2uJ9nCm34MYjtQUJro.NwUWFi', 0, '2020-06-04 01:18:42', NULL, NULL, NULL, NULL, NULL, NULL, 0, 'member', NULL, NULL, NULL, 2),
(436, NULL, 'test', 'test', 'testfAxR@gmail.com', NULL, NULL, '$2y$10$rIzZRtY0glQ.Itj27D5wouZXSPgaYu/ePd2bvBixn6bJG4/7EiaZO', 0, '2020-06-04 23:23:50', NULL, NULL, NULL, NULL, NULL, NULL, 0, 'member', NULL, '2020-06-04 23:23:49', '2020-06-04 23:23:49', 2),
(437, NULL, 'test', 'test', 'test4xQX@gmail.com', NULL, NULL, '$2y$10$hQB.bVtRJ23zViIGwLNdUuO5cGlHlqNDi.qKip2XErBJly5QNoVdi', 0, '2020-06-04 23:26:58', NULL, NULL, NULL, NULL, NULL, NULL, 0, 'member', NULL, '2020-06-04 23:26:58', '2020-06-04 23:26:58', 2),
(438, NULL, 'test', 'test', 'testJljX@gmail.com', NULL, NULL, '$2y$10$nCO1rTkRAgnL4kDNMhvjjuSTZ9AdkT4CXRU8zY549RZmE/0i417l.', 0, '2020-06-04 23:26:59', NULL, NULL, NULL, NULL, NULL, NULL, 0, 'member', NULL, '2020-06-04 23:26:59', '2020-06-04 23:26:59', 2),
(439, NULL, 'test', 'test', 'test1hQb@gmail.com', NULL, NULL, '$2y$10$l7JzInfOwKGfKjbCirAsReaIahZUeUWe1jOYSePONxs7hAII/GBJK', 0, '2020-06-04 23:29:28', NULL, NULL, NULL, NULL, NULL, NULL, 0, 'member', NULL, '2020-06-04 23:29:28', '2020-06-04 23:29:28', 2),
(440, NULL, 'test', 'test', 'testEa8f@gmail.com', NULL, NULL, '$2y$10$qEvOp/IPGC462kozGwHgZ.ZQXbHr4ULR4fWTUqIOKQ2LXsZdMGscu', 0, '2020-06-04 23:29:28', NULL, NULL, NULL, NULL, NULL, NULL, 0, 'member', NULL, '2020-06-04 23:29:28', '2020-06-04 23:29:28', 2),
(441, NULL, 'test', 'test', 'test7BdQ@gmail.com', NULL, NULL, '$2y$10$6jIy5OKLduONTBJwdp0y8ugMSmeS.2YcCBNIzKNsyHiXH7fWJlcaC', 0, '2020-06-04 23:31:45', NULL, NULL, NULL, NULL, NULL, NULL, 0, 'member', NULL, '2020-06-04 23:31:45', '2020-06-04 23:31:45', 2),
(442, NULL, 'test', 'test', 'test8DyY@gmail.com', NULL, NULL, '$2y$10$sveabkfyuR7befKvU2aJP.Cd9q67HYLAU8.v8Rx0z08Hi0q3W6ejO', 0, '2020-06-04 23:31:46', NULL, NULL, NULL, NULL, NULL, NULL, 0, 'member', NULL, '2020-06-04 23:31:46', '2020-06-04 23:31:46', 2),
(443, NULL, 'testSrHa', 'testmB6Q', 'testl3lX@gmail.com', NULL, NULL, '$2y$10$3VvjtPakh0gMpNZIf2GhmuG5HYDNC7pteY88R3OmVwVsmlYsY1ZjS', 0, '2020-06-04 23:32:45', NULL, NULL, NULL, NULL, NULL, NULL, 0, 'member', NULL, '2020-06-04 23:32:45', '2020-06-04 23:32:45', 2),
(444, NULL, 'testgcbf', 'testBr02', 'testJlQb@gmail.com', NULL, NULL, '$2y$10$Z85qEb/B.ITGKCKu6HGF3uCh02N.T7xMVq5Vo3MitMW9Mtt9vHhvC', 0, '2020-06-04 23:32:46', NULL, NULL, NULL, NULL, NULL, NULL, 0, 'member', NULL, '2020-06-04 23:32:46', '2020-06-04 23:32:46', 2),
(445, NULL, 'testIbxw', 'testjaVH', 'testyfLJ@gmail.com', NULL, NULL, '$2y$10$PE92ESJ4I3m2okTmoPrIX..MzI9gOZoLTHAp5pEfcw7IHxZHZlt4G', 0, '2020-06-04 23:35:44', NULL, NULL, NULL, NULL, NULL, NULL, 0, 'member', NULL, '2020-06-04 23:35:44', '2020-06-04 23:35:44', 2),
(446, NULL, 'testG77k', 'testGw0I', 'testBC3h@gmail.com', NULL, NULL, '$2y$10$1rwXrYVOGMpv2Jk08MYOnu.2VcsxiVolsp0m3W.A.1wa.W1.gpBCi', 0, '2020-06-04 23:35:52', NULL, NULL, NULL, NULL, NULL, NULL, 0, 'member', NULL, '2020-06-04 23:35:52', '2020-06-04 23:35:52', 2),
(447, NULL, 'testWV9l', 'testv3mY', 'test9JTI@gmail.com', NULL, NULL, '$2y$10$1ZZ/0rYJMRGYgqnjbJRi2ubFE/bBniwbRVNLyTLCTU4xC8/CLjSQG', 0, '2020-06-04 23:36:08', NULL, NULL, NULL, NULL, NULL, NULL, 0, 'member', NULL, '2020-06-04 23:36:08', '2020-06-04 23:36:08', 2),
(448, NULL, 'testgIAX', 'testUXfU', 'testoLdM@gmail.com', NULL, NULL, '$2y$10$DxTRP8o849oHnvghMpzSguhYSxBw9WP2S2lsdaRf6ZQ3rwb.a9Yqa', 0, '2020-06-04 23:36:09', NULL, NULL, NULL, NULL, NULL, NULL, 0, 'member', NULL, '2020-06-04 23:36:09', '2020-06-04 23:36:09', 2),
(449, NULL, 'Stéphano', 'Jean-Marc', 'jeanmarcdjebi3123@gmail.com', NULL, NULL, '$2y$10$1GsZZ/01xXim5PJRsbdOl.ReWd7WJfk0oRUKs9r8s0BHYRtPyxUne', 0, '2020-06-04 23:39:08', NULL, NULL, NULL, NULL, NULL, NULL, 0, 'member', NULL, '2020-06-04 23:39:08', '2020-06-04 23:39:08', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_menu`
--
ALTER TABLE `admin_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_operation_log`
--
ALTER TABLE `admin_operation_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_operation_log_user_id_index` (`user_id`);

--
-- Indexes for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_permissions_name_unique` (`name`),
  ADD UNIQUE KEY `admin_permissions_slug_unique` (`slug`);

--
-- Indexes for table `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_roles_name_unique` (`name`),
  ADD UNIQUE KEY `admin_roles_slug_unique` (`slug`);

--
-- Indexes for table `admin_role_menu`
--
ALTER TABLE `admin_role_menu`
  ADD KEY `admin_role_menu_role_id_menu_id_index` (`role_id`,`menu_id`);

--
-- Indexes for table `admin_role_permissions`
--
ALTER TABLE `admin_role_permissions`
  ADD KEY `admin_role_permissions_role_id_permission_id_index` (`role_id`,`permission_id`);

--
-- Indexes for table `admin_role_users`
--
ALTER TABLE `admin_role_users`
  ADD KEY `admin_role_users_role_id_user_id_index` (`role_id`,`user_id`);

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admin_users_username_unique` (`username`);

--
-- Indexes for table `admin_user_permissions`
--
ALTER TABLE `admin_user_permissions`
  ADD KEY `admin_user_permissions_user_id_permission_id_index` (`user_id`,`permission_id`);

--
-- Indexes for table `appareil`
--
ALTER TABLE `appareil`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `batiment`
--
ALTER TABLE `batiment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `salle`
--
ALTER TABLE `salle`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `searchuserindex`
--
ALTER TABLE `searchuserindex`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_searchuserindex_users` (`users_id`);

--
-- Indexes for table `signalement`
--
ALTER TABLE `signalement`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_menu`
--
ALTER TABLE `admin_menu`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `admin_operation_log`
--
ALTER TABLE `admin_operation_log`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `admin_roles`
--
ALTER TABLE `admin_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `appareil`
--
ALTER TABLE `appareil`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `batiment`
--
ALTER TABLE `batiment`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `salle`
--
ALTER TABLE `salle`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `searchuserindex`
--
ALTER TABLE `searchuserindex`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `signalement`
--
ALTER TABLE `signalement`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=450;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `searchuserindex`
--
ALTER TABLE `searchuserindex`
  ADD CONSTRAINT `FK_searchuserindex_users` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
