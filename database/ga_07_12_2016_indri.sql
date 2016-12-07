-- phpMyAdmin SQL Dump
-- version 4.1.6
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 07, 2016 at 03:30 PM
-- Server version: 5.6.16
-- PHP Version: 5.5.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ga`
--

-- --------------------------------------------------------

--
-- Table structure for table `aplikasi`
--

CREATE TABLE IF NOT EXISTS `aplikasi` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `category` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `picture` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `platform` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=6 ;

--
-- Dumping data for table `aplikasi`
--

INSERT INTO `aplikasi` (`id`, `created_at`, `updated_at`, `name`, `user`, `category`, `picture`, `platform`, `token`, `status`) VALUES
(1, '2016-11-22 17:00:00', '2016-11-22 20:31:52', 'Makan Bareng Dua', 'drikdoank@gmail.com', 'Life style', '', 'Mobile Apps', '', 0),
(2, '2016-11-22 17:00:00', '2016-11-22 17:00:00', 'Ngaji', 'Indriyani.cs49@gmail.com', 'Book', '""', 'Web  Apps', '', 0),
(3, '2016-11-22 17:00:00', '2016-11-22 17:00:00', 'Pingpong', 'drikdoank@gmail.com', 'Games', '""', 'Mobile Apps', '', 1),
(4, '2016-11-22 17:00:00', '2016-11-23 02:32:58', 'Karoke', 'drikdoank@gmail.com', 'Music', '""', 'Mobile Apps', '', 1),
(5, '2016-11-22 20:41:25', '2016-11-22 20:41:25', 'Dorong Kereta', 'drikdoank@gmail.com', 'Games', 'bunga.jpg', 'Mobile Apps', '', 1);

-- --------------------------------------------------------

--
-- Stand-in structure for view `count_connectedby_day`
--
CREATE TABLE IF NOT EXISTS `count_connectedby_day` (
`day` date
,`wifi_count` bigint(21)
,`cellular_count` bigint(21)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `count_connectedby_day_user`
--
CREATE TABLE IF NOT EXISTS `count_connectedby_day_user` (
`user` varchar(100)
,`day` date
,`wifi_count` bigint(21)
,`cellular_count` bigint(21)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `count_connectedby_month`
--
CREATE TABLE IF NOT EXISTS `count_connectedby_month` (
`month` int(2)
,`wifi_count` bigint(21)
,`cellular_count` bigint(21)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `count_connectedby_month_user`
--
CREATE TABLE IF NOT EXISTS `count_connectedby_month_user` (
`user` varchar(100)
,`month` int(2)
,`wifi_count` bigint(21)
,`cellular_count` bigint(21)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `count_connectedby_year`
--
CREATE TABLE IF NOT EXISTS `count_connectedby_year` (
`year` int(4)
,`wifi_count` bigint(21)
,`cellular_count` bigint(21)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `count_connectedby_year_user`
--
CREATE TABLE IF NOT EXISTS `count_connectedby_year_user` (
`user` varchar(100)
,`year` int(4)
,`wifi_count` bigint(21)
,`cellular_count` bigint(21)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `count_dashboard`
--
CREATE TABLE IF NOT EXISTS `count_dashboard` (
`count_activity` bigint(21)
,`count_click` bigint(21)
,`count_view` bigint(21)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `count_dashboard_user`
--
CREATE TABLE IF NOT EXISTS `count_dashboard_user` (
`user` varchar(100)
,`count_activity` bigint(21)
,`count_click` bigint(21)
,`count_view` bigint(21)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `count_install`
--
CREATE TABLE IF NOT EXISTS `count_install` (
`total_install` bigint(21)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `map_country`
--
CREATE TABLE IF NOT EXISTS `map_country` (
`user` varchar(100)
,`year` int(4)
,`country` varchar(150)
,`count_country` bigint(21)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `map_country_admin`
--
CREATE TABLE IF NOT EXISTS `map_country_admin` (
`year` int(4)
,`country` varchar(150)
,`count_country` bigint(21)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `map_region`
--
CREATE TABLE IF NOT EXISTS `map_region` (
`user` varchar(100)
,`year` int(4)
,`regional` varchar(200)
,`count_region` bigint(21)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `map_region_admin`
--
CREATE TABLE IF NOT EXISTS `map_region_admin` (
`year` int(4)
,`regional` varchar(200)
,`count_region` bigint(21)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `map_state`
--
CREATE TABLE IF NOT EXISTS `map_state` (
`user` varchar(100)
,`year` int(4)
,`regional` varchar(200)
,`count_state` bigint(21)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `map_state_admin`
--
CREATE TABLE IF NOT EXISTS `map_state_admin` (
`year` int(4)
,`regional` varchar(200)
,`count_state` bigint(21)
);
-- --------------------------------------------------------

--
-- Table structure for table `master_data`
--

CREATE TABLE IF NOT EXISTS `master_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `imei` varchar(250) NOT NULL,
  `ip` varchar(200) NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL,
  `click` varchar(200) NOT NULL,
  `view` varchar(200) NOT NULL,
  `type_device` varchar(200) NOT NULL,
  `language` varchar(150) NOT NULL,
  `state` varchar(200) NOT NULL,
  `regional` varchar(200) NOT NULL,
  `loc` varchar(200) NOT NULL,
  `user` varchar(100) NOT NULL,
  `connected_by` varchar(128) NOT NULL,
  `id_aplikasi` int(10) NOT NULL,
  `operator` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `master_data`
--

INSERT INTO `master_data` (`id`, `imei`, `ip`, `created_at`, `updated_at`, `click`, `view`, `type_device`, `language`, `state`, `regional`, `loc`, `user`, `connected_by`, `id_aplikasi`, `operator`) VALUES
(1, '2132411232123213', '103.10.105.60', '2016-09-01', '2016-09-26', 'login', 'welcome', 'samsung', 'ID', 'Jawa Barat', 'Bogor', '-6.5944,106.7892', 'drikdoank@gmail.com', 'wifi', 3, 'Telkomsel'),
(2, '2314321325132', '103.10.105.60', '2016-09-02', '2016-09-26', 'save', 'registration', 'samsung', 'ID', 'Sumatera Barat', 'Medan', '-6.5944,106.7892', 'indriyani.cs49@gmail.com', 'wifi', 2, 'Telkomsel'),
(3, '2132411232123211', '103.10.105.60', '2016-09-03', '2016-09-26', 'login', 'welcome', 'samsung', 'ID', 'Jawa Barat', 'Bogor', '-6.5944,106.7892', 'drikdoank@gmail.com', 'wifi', 1, 'Telkomsel'),
(4, '2314321325132', '103.10.105.60', '2016-09-05', '2016-09-26', 'save', 'registration', 'samsung', 'ID', 'Kalimantan Barat', 'Balikpapan', '-6.5944,106.7892', 'indriyani.cs49@gmail.com', 'wifi', 2, 'Telkomsel'),
(5, '2314321325133', '103.10.105.60', '2016-09-01', '2016-09-26', 'close', 'registration', 'apple', 'ID', 'Sumatera Barat', 'Medan', '-6.5944,106.7892', 'drikdoank@gmail.com', 'wifi', 1, 'Telkomsel'),
(6, '2314321325134', '103.10.105.60', '2016-09-01', '2016-09-26', 'delete', 'shopping', 'apple', 'ID', 'Sumatera Barat', 'Medan', '-6.5944,106.7892', 'drikdoank@gmail.com', 'cellular', 3, 'Telkomsel'),
(7, '2314321325135', '103.10.105.60', '2016-09-02', '2016-09-27', 'login', 'welcome', 'apple', 'ID', 'Sumatera Barat', 'Medan', '-6.5944,106.7892', 'drikdoank@gmail.com', 'cellular', 1, 'Telkomsel'),
(8, '2314321325136', '103.10.105.60', '2016-09-03', '2016-09-26', 'save', 'shopping', 'apple', 'ID', 'Sumatera Utara', 'Padang', '-6.5944,106.7892', 'indriyani.cs49@gmail.com', 'cellular', 2, 'Telkomsel'),
(9, '4356243624354236', '103.10.105.60', '2016-09-04', '2016-09-27', 'save', 'order', 'apple', 'ID', 'Jawa Barat', 'Bogor', '-6.5944,106.7892', 'drikdoank@gmail.com', 'cellular', 1, 'Telkomsel'),
(10, '123232323', '103.10.105.60', '2016-11-22', '2016-11-22', 'save', 'registration', 'samsung', 'ID', 'Jawa Barat', 'Bogor', '-6.5944,106.7892', 'drikdoank@gmail.com', 'wifi', 4, 'Telkomsel'),
(11, '123232323', '103.10.105.60', '2016-11-22', '2016-11-22', 'save', 'registration', 'samsung', 'ID', 'Jawa Barat', 'Bogor', '-6.5944,106.7892', 'indriyani.cs49@gmail.com', 'cellular', 2, 'Telkomsel'),
(12, '1232323111', '103.10.105.60', '2016-11-22', '2016-11-22', 'save', 'registration', 'samsung', 'ID', 'Jawa Barat', 'Bogor', '-6.5944,106.7892', 'drikdoank@gmail.com', 'cellular', 1, 'Telkomsel'),
(13, '1232323111', '103.10.105.60', '2016-11-22', '2016-11-22', 'save', 'registration', 'samsung', 'ID', 'Jawa Barat', 'Bogor', '-6.5944,106.7892', 'drikdoank@gmail.com', 'cellular', 4, 'Telkomsel'),
(14, '1232323111', '103.10.105.60', '2016-11-22', '2016-11-22', 'save', 'registration', 'samsung', 'ID', 'Jawa barat', 'Bogor', '-6.5944,106.7892', 'indriyani.cs49@gmail.com', 'cellular', 2, 'Telkomsel'),
(15, '1232323111', '118.136.157.189', '2016-11-25', '2016-11-25', 'save', 'registration', 'samsung', 'ID', 'Jakarta Raya', 'Jakarta', '-6.1744,106.8294', 'drikdoank@gmail.com', '', 1, 'Telkomsel'),
(16, '1232323111', '118.136.157.189', '2016-11-25', '2016-11-25', 'save', 'registration', 'samsung', 'ID', 'Jakarta Raya', 'Jakarta', '-6.1744,106.8294', 'drikdoank@gmail.com', '', 1, 'Telkomsel');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2016_09_12_150440_create_blogs_table', 1);

-- --------------------------------------------------------

--
-- Stand-in structure for view `operator_per_day`
--
CREATE TABLE IF NOT EXISTS `operator_per_day` (
`day` date
,`telkomsel_count` bigint(21)
,`indosat_count` bigint(21)
,`xl_count` bigint(21)
,`smartfren_count` bigint(21)
,`other_count` bigint(21)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `operator_per_day_user`
--
CREATE TABLE IF NOT EXISTS `operator_per_day_user` (
`user` varchar(100)
,`day` date
,`telkomsel_count` bigint(21)
,`indosat_count` bigint(21)
,`xl_count` bigint(21)
,`smartfren_count` bigint(21)
,`other_count` bigint(21)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `operator_per_month`
--
CREATE TABLE IF NOT EXISTS `operator_per_month` (
`month` int(2)
,`telkomsel_count` bigint(21)
,`indosat_count` bigint(21)
,`xl_count` bigint(21)
,`smartfren_count` bigint(21)
,`other_count` bigint(21)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `operator_per_month_user`
--
CREATE TABLE IF NOT EXISTS `operator_per_month_user` (
`user` varchar(100)
,`month` int(2)
,`telkomsel_count` bigint(21)
,`indosat_count` bigint(21)
,`xl_count` bigint(21)
,`smartfren_count` bigint(21)
,`other_count` bigint(21)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `operator_per_year`
--
CREATE TABLE IF NOT EXISTS `operator_per_year` (
`year` int(4)
,`telkomsel_count` bigint(21)
,`indosat_count` bigint(21)
,`xl_count` bigint(21)
,`smartfren_count` bigint(21)
,`other_count` bigint(21)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `operator_per_year_user`
--
CREATE TABLE IF NOT EXISTS `operator_per_year_user` (
`user` varchar(100)
,`year` int(4)
,`telkomsel_count` bigint(21)
,`indosat_count` bigint(21)
,`xl_count` bigint(21)
,`smartfren_count` bigint(21)
,`other_count` bigint(21)
);
-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  KEY `password_resets_email_index` (`email`),
  KEY `password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('drikdoank@gmail.com', 'baa009fa74cc74fb9614e3f4f47c4a000f617c0633fea531f2ce23ac6da972fb', '2016-11-25 09:05:07');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `role` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `role`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Hendrik', 'drikdoank@gmail.com', 'admin', '$2y$10$rFCavDebMnD4B3CAvG0ptuuj6PaBLUGjVoMXfBk3bj3W8RAHvVkZG', 'CyHDr3IGTeFBSuCcVhJXDGFgklQrH8Zh6NRSNMXV7GtqGOpvoVfYHlJC9b0S', '2016-09-17 03:02:01', '2016-11-27 04:40:41'),
(2, 'Indriyani', 'indri@gmail.com', 'partner', '$2y$10$avEe2V5oowSLzBkazFliXOud3urBM9ItlugDteFdXLKKQVTFHqQJK', NULL, '2016-09-23 23:37:50', '2016-09-23 23:37:50'),
(3, 'Hendra', 'hendrik@gmail.com', 'partner', '$2y$10$efMzwzQ5IZytSOjJROPFROL.QCWVOcOC3axhEW7oaMiojK6rBzCw2', 'I0IdI1Z05VTSkaC88UIU9inheOBfoCBMSPVSD6s0hN5OnJBlJ4QCfz1Ovixy', '2016-09-26 18:41:32', '2016-09-26 18:41:38'),
(4, 'Budi', 'budi@gmail.com', 'partner', '$2y$10$vHMGDG.id0.dl0etknvCC.xwmwDfRc3K51N2MklH5VITH8Y3eUsnW', 'WGSPz4juSA36OYLskpHDBpzpXN0OPOks5XZs8pQzhxOabF6GJ6ATvDfosolh', '2016-09-26 18:42:01', '2016-09-26 18:42:04'),
(5, 'Anis', 'anis@gmail.com', 'partner', '$2y$10$Vx7.Ba16euhEsXShotUEeOwFOdtjsz22V0/QgkHSLNFG8ZFP89.c6', NULL, '2017-09-26 18:42:47', '2016-09-26 18:42:47'),
(6, 'Indriyani', 'indriyani.cs49@gmail.com', 'partner', '$2y$10$Z/CL3nOYV5Q.FM0fSHFRtuqEcE/IDzH9eb7ItbSx9/9.tmzY8cJuS', 'YYqJKdg1ua6bQMFrtSp1o3jxEJft2DSafJVLzLdTz7xpA79LwoQdRKyfAnB3', '2016-10-02 07:14:30', '2016-12-07 07:09:48');

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_activity_by_type_device_per_day`
--
CREATE TABLE IF NOT EXISTS `view_activity_by_type_device_per_day` (
`day` date
,`samsung_count` bigint(21)
,`apple_count` bigint(21)
,`other_count` bigint(21)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `view_activity_by_type_device_per_day_user`
--
CREATE TABLE IF NOT EXISTS `view_activity_by_type_device_per_day_user` (
`user` varchar(100)
,`day` date
,`samsung_count` bigint(21)
,`apple_count` bigint(21)
,`other_count` bigint(21)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `view_activity_by_type_device_per_month`
--
CREATE TABLE IF NOT EXISTS `view_activity_by_type_device_per_month` (
`month` int(2)
,`samsung_count` bigint(21)
,`apple_count` bigint(21)
,`other_count` bigint(21)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `view_activity_by_type_device_per_month_user`
--
CREATE TABLE IF NOT EXISTS `view_activity_by_type_device_per_month_user` (
`user` varchar(100)
,`month` int(2)
,`samsung_count` bigint(21)
,`apple_count` bigint(21)
,`other_count` bigint(21)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `view_activity_by_type_device_per_year`
--
CREATE TABLE IF NOT EXISTS `view_activity_by_type_device_per_year` (
`year` int(4)
,`samsung_count` bigint(21)
,`apple_count` bigint(21)
,`other_count` bigint(21)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `view_activity_by_type_device_per_year_user`
--
CREATE TABLE IF NOT EXISTS `view_activity_by_type_device_per_year_user` (
`user` varchar(100)
,`year` int(4)
,`samsung_count` bigint(21)
,`apple_count` bigint(21)
,`other_count` bigint(21)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `view_by_click_per_day`
--
CREATE TABLE IF NOT EXISTS `view_by_click_per_day` (
`day` date
,`login_count` bigint(21)
,`save_count` bigint(21)
,`close_count` bigint(21)
,`delete_count` bigint(21)
,`other_count` bigint(21)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `view_by_click_per_day_user`
--
CREATE TABLE IF NOT EXISTS `view_by_click_per_day_user` (
`user` varchar(100)
,`day` date
,`login_count` bigint(21)
,`save_count` bigint(21)
,`close_count` bigint(21)
,`delete_count` bigint(21)
,`other_count` bigint(21)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `view_by_click_per_month`
--
CREATE TABLE IF NOT EXISTS `view_by_click_per_month` (
`month` int(2)
,`login_count` bigint(21)
,`save_count` bigint(21)
,`close_count` bigint(21)
,`delete_count` bigint(21)
,`other_count` bigint(21)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `view_by_click_per_month_user`
--
CREATE TABLE IF NOT EXISTS `view_by_click_per_month_user` (
`user` varchar(100)
,`month` int(2)
,`login_count` bigint(21)
,`save_count` bigint(21)
,`close_count` bigint(21)
,`delete_count` bigint(21)
,`other_count` bigint(21)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `view_by_click_per_year`
--
CREATE TABLE IF NOT EXISTS `view_by_click_per_year` (
`year` int(4)
,`login_count` bigint(21)
,`save_count` bigint(21)
,`close_count` bigint(21)
,`delete_count` bigint(21)
,`other_count` bigint(21)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `view_by_click_per_year_user`
--
CREATE TABLE IF NOT EXISTS `view_by_click_per_year_user` (
`user` varchar(100)
,`year` int(4)
,`login_count` bigint(21)
,`save_count` bigint(21)
,`close_count` bigint(21)
,`delete_count` bigint(21)
,`other_count` bigint(21)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `view_by_view_page_perday`
--
CREATE TABLE IF NOT EXISTS `view_by_view_page_perday` (
`day` date
,`welcome_count` bigint(21)
,`registration_count` bigint(21)
,`shopping_count` bigint(21)
,`order_count` bigint(21)
,`other_count` bigint(21)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `view_by_view_page_perday_user`
--
CREATE TABLE IF NOT EXISTS `view_by_view_page_perday_user` (
`user` varchar(100)
,`day` date
,`welcome_count` bigint(21)
,`registration_count` bigint(21)
,`shopping_count` bigint(21)
,`order_count` bigint(21)
,`other_count` bigint(21)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `view_by_view_page_permonth`
--
CREATE TABLE IF NOT EXISTS `view_by_view_page_permonth` (
`month` int(2)
,`welcome_count` bigint(21)
,`registration_count` bigint(21)
,`shopping_count` bigint(21)
,`order_count` bigint(21)
,`other_count` bigint(21)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `view_by_view_page_permonth_user`
--
CREATE TABLE IF NOT EXISTS `view_by_view_page_permonth_user` (
`user` varchar(100)
,`month` int(2)
,`welcome_count` bigint(21)
,`registration_count` bigint(21)
,`shopping_count` bigint(21)
,`order_count` bigint(21)
,`other_count` bigint(21)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `view_by_view_page_peryear`
--
CREATE TABLE IF NOT EXISTS `view_by_view_page_peryear` (
`year` int(4)
,`welcome_count` bigint(21)
,`registration_count` bigint(21)
,`shopping_count` bigint(21)
,`order_count` bigint(21)
,`other_count` bigint(21)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `view_by_view_page_peryear_user`
--
CREATE TABLE IF NOT EXISTS `view_by_view_page_peryear_user` (
`user` varchar(100)
,`year` int(4)
,`welcome_count` bigint(21)
,`registration_count` bigint(21)
,`shopping_count` bigint(21)
,`order_count` bigint(21)
,`other_count` bigint(21)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `view_install_month_admin`
--
CREATE TABLE IF NOT EXISTS `view_install_month_admin` (
`month` int(2)
,`count_install` bigint(21)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `view_install_per_day`
--
CREATE TABLE IF NOT EXISTS `view_install_per_day` (
`user` varchar(100)
,`day` date
,`count_install` bigint(21)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `view_install_per_day_admin`
--
CREATE TABLE IF NOT EXISTS `view_install_per_day_admin` (
`day` date
,`count_install` bigint(21)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `view_install_per_month`
--
CREATE TABLE IF NOT EXISTS `view_install_per_month` (
`user` varchar(100)
,`month` int(2)
,`count_install` bigint(21)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `view_install_per_year`
--
CREATE TABLE IF NOT EXISTS `view_install_per_year` (
`user` varchar(100)
,`year` int(4)
,`count_install` bigint(21)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `view_install_year_admin`
--
CREATE TABLE IF NOT EXISTS `view_install_year_admin` (
`year` int(4)
,`count_install` bigint(21)
);
-- --------------------------------------------------------

--
-- Structure for view `count_connectedby_day`
--
DROP TABLE IF EXISTS `count_connectedby_day`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `count_connectedby_day` AS select `master_data`.`created_at` AS `day`,count((case when (`master_data`.`connected_by` = 'wifi') then 1 end)) AS `wifi_count`,count((case when (`master_data`.`connected_by` = 'cellular') then 1 end)) AS `cellular_count` from `master_data` group by `master_data`.`created_at`;

-- --------------------------------------------------------

--
-- Structure for view `count_connectedby_day_user`
--
DROP TABLE IF EXISTS `count_connectedby_day_user`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `count_connectedby_day_user` AS select `master_data`.`user` AS `user`,`master_data`.`created_at` AS `day`,count((case when (`master_data`.`connected_by` = 'wifi') then 1 end)) AS `wifi_count`,count((case when (`master_data`.`connected_by` = 'cellular') then 1 end)) AS `cellular_count` from `master_data` group by `master_data`.`created_at`,`master_data`.`user`;

-- --------------------------------------------------------

--
-- Structure for view `count_connectedby_month`
--
DROP TABLE IF EXISTS `count_connectedby_month`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `count_connectedby_month` AS select month(`master_data`.`created_at`) AS `month`,count((case when (`master_data`.`connected_by` = 'wifi') then 1 end)) AS `wifi_count`,count((case when (`master_data`.`connected_by` = 'cellular') then 1 end)) AS `cellular_count` from `master_data` group by month(`master_data`.`created_at`);

-- --------------------------------------------------------

--
-- Structure for view `count_connectedby_month_user`
--
DROP TABLE IF EXISTS `count_connectedby_month_user`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `count_connectedby_month_user` AS select `master_data`.`user` AS `user`,month(`master_data`.`created_at`) AS `month`,count((case when (`master_data`.`connected_by` = 'wifi') then 1 end)) AS `wifi_count`,count((case when (`master_data`.`connected_by` = 'cellular') then 1 end)) AS `cellular_count` from `master_data` group by month(`master_data`.`created_at`),`master_data`.`user`;

-- --------------------------------------------------------

--
-- Structure for view `count_connectedby_year`
--
DROP TABLE IF EXISTS `count_connectedby_year`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `count_connectedby_year` AS select year(`master_data`.`created_at`) AS `year`,count((case when (`master_data`.`connected_by` = 'wifi') then 1 end)) AS `wifi_count`,count((case when (`master_data`.`connected_by` = 'cellular') then 1 end)) AS `cellular_count` from `master_data` group by year(`master_data`.`created_at`);

-- --------------------------------------------------------

--
-- Structure for view `count_connectedby_year_user`
--
DROP TABLE IF EXISTS `count_connectedby_year_user`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `count_connectedby_year_user` AS select `master_data`.`user` AS `user`,year(`master_data`.`created_at`) AS `year`,count((case when (`master_data`.`connected_by` = 'wifi') then 1 end)) AS `wifi_count`,count((case when (`master_data`.`connected_by` = 'cellular') then 1 end)) AS `cellular_count` from `master_data` group by year(`master_data`.`created_at`),`master_data`.`user`;

-- --------------------------------------------------------

--
-- Structure for view `count_dashboard`
--
DROP TABLE IF EXISTS `count_dashboard`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `count_dashboard` AS select count(distinct `master_data`.`id`) AS `count_activity`,count(distinct `master_data`.`id`) AS `count_click`,count(distinct `master_data`.`id`) AS `count_view` from `master_data`;

-- --------------------------------------------------------

--
-- Structure for view `count_dashboard_user`
--
DROP TABLE IF EXISTS `count_dashboard_user`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `count_dashboard_user` AS select `master_data`.`user` AS `user`,count(distinct `master_data`.`id`) AS `count_activity`,count(distinct `master_data`.`id`) AS `count_click`,count(distinct `master_data`.`id`) AS `count_view` from `master_data` group by `master_data`.`user`;

-- --------------------------------------------------------

--
-- Structure for view `count_install`
--
DROP TABLE IF EXISTS `count_install`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `count_install` AS select count(`users`.`id`) AS `total_install` from `users`;

-- --------------------------------------------------------

--
-- Structure for view `map_country`
--
DROP TABLE IF EXISTS `map_country`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `map_country` AS select `master_data`.`user` AS `user`,year(`master_data`.`created_at`) AS `year`,`master_data`.`language` AS `country`,count(`master_data`.`language`) AS `count_country` from `master_data` group by `master_data`.`language`,`master_data`.`user`;

-- --------------------------------------------------------

--
-- Structure for view `map_country_admin`
--
DROP TABLE IF EXISTS `map_country_admin`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `map_country_admin` AS select year(`master_data`.`created_at`) AS `year`,`master_data`.`language` AS `country`,count(`master_data`.`language`) AS `count_country` from `master_data` group by `master_data`.`language`;

-- --------------------------------------------------------

--
-- Structure for view `map_region`
--
DROP TABLE IF EXISTS `map_region`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `map_region` AS select `master_data`.`user` AS `user`,year(`master_data`.`created_at`) AS `year`,`master_data`.`regional` AS `regional`,count(`master_data`.`regional`) AS `count_region` from `master_data` group by `master_data`.`regional`,`master_data`.`user`;

-- --------------------------------------------------------

--
-- Structure for view `map_region_admin`
--
DROP TABLE IF EXISTS `map_region_admin`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `map_region_admin` AS select year(`master_data`.`created_at`) AS `year`,`master_data`.`regional` AS `regional`,count(`master_data`.`regional`) AS `count_region` from `master_data` group by `master_data`.`regional`;

-- --------------------------------------------------------

--
-- Structure for view `map_state`
--
DROP TABLE IF EXISTS `map_state`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `map_state` AS select `master_data`.`user` AS `user`,year(`master_data`.`created_at`) AS `year`,`master_data`.`state` AS `regional`,count(`master_data`.`state`) AS `count_state` from `master_data` group by `master_data`.`state`,`master_data`.`user`;

-- --------------------------------------------------------

--
-- Structure for view `map_state_admin`
--
DROP TABLE IF EXISTS `map_state_admin`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `map_state_admin` AS select year(`master_data`.`created_at`) AS `year`,`master_data`.`state` AS `regional`,count(`master_data`.`state`) AS `count_state` from `master_data` group by `master_data`.`state`;

-- --------------------------------------------------------

--
-- Structure for view `operator_per_day`
--
DROP TABLE IF EXISTS `operator_per_day`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `operator_per_day` AS select `master_data`.`created_at` AS `day`,count((case when (`master_data`.`operator` = 'Telkomsel') then 1 end)) AS `telkomsel_count`,count((case when (`master_data`.`operator` = 'Indosat') then 1 end)) AS `indosat_count`,count((case when (`master_data`.`operator` = 'XL') then 1 end)) AS `xl_count`,count((case when (`master_data`.`operator` = 'Smartfren') then 1 end)) AS `smartfren_count`,count((case when ((`master_data`.`operator` <> 'Telkomsel') and (`master_data`.`operator` <> 'Indosat') and (`master_data`.`operator` <> 'XL') and (`master_data`.`operator` <> 'Smartfren')) then 1 end)) AS `other_count` from `master_data` group by `master_data`.`created_at`;

-- --------------------------------------------------------

--
-- Structure for view `operator_per_day_user`
--
DROP TABLE IF EXISTS `operator_per_day_user`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `operator_per_day_user` AS select `master_data`.`user` AS `user`,`master_data`.`created_at` AS `day`,count((case when (`master_data`.`operator` = 'Telkomsel') then 1 end)) AS `telkomsel_count`,count((case when (`master_data`.`operator` = 'Indosat') then 1 end)) AS `indosat_count`,count((case when (`master_data`.`operator` = 'XL') then 1 end)) AS `xl_count`,count((case when (`master_data`.`operator` = 'Smartfren') then 1 end)) AS `smartfren_count`,count((case when ((`master_data`.`operator` <> 'Telkomsel') and (`master_data`.`operator` <> 'Indosat') and (`master_data`.`operator` <> 'XL') and (`master_data`.`operator` <> 'Smartfren')) then 1 end)) AS `other_count` from `master_data` group by `master_data`.`created_at`,`master_data`.`user`;

-- --------------------------------------------------------

--
-- Structure for view `operator_per_month`
--
DROP TABLE IF EXISTS `operator_per_month`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `operator_per_month` AS select month(`master_data`.`created_at`) AS `month`,count((case when (`master_data`.`operator` = 'Telkomsel') then 1 end)) AS `telkomsel_count`,count((case when (`master_data`.`operator` = 'Indosat') then 1 end)) AS `indosat_count`,count((case when (`master_data`.`operator` = 'XL') then 1 end)) AS `xl_count`,count((case when (`master_data`.`operator` = 'Smartfren') then 1 end)) AS `smartfren_count`,count((case when ((`master_data`.`operator` <> 'Telkomsel') and (`master_data`.`operator` <> 'Indosat') and (`master_data`.`operator` <> 'XL') and (`master_data`.`operator` <> 'Smartfren')) then 1 end)) AS `other_count` from `master_data` group by month(`master_data`.`created_at`);

-- --------------------------------------------------------

--
-- Structure for view `operator_per_month_user`
--
DROP TABLE IF EXISTS `operator_per_month_user`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `operator_per_month_user` AS select `master_data`.`user` AS `user`,month(`master_data`.`created_at`) AS `month`,count((case when (`master_data`.`operator` = 'Telkomsel') then 1 end)) AS `telkomsel_count`,count((case when (`master_data`.`operator` = 'Indosat') then 1 end)) AS `indosat_count`,count((case when (`master_data`.`operator` = 'XL') then 1 end)) AS `xl_count`,count((case when (`master_data`.`operator` = 'Smartfren') then 1 end)) AS `smartfren_count`,count((case when ((`master_data`.`operator` <> 'Telkomsel') and (`master_data`.`operator` <> 'Indosat') and (`master_data`.`operator` <> 'XL') and (`master_data`.`operator` <> 'Smartfren')) then 1 end)) AS `other_count` from `master_data` group by month(`master_data`.`created_at`),`master_data`.`user`;

-- --------------------------------------------------------

--
-- Structure for view `operator_per_year`
--
DROP TABLE IF EXISTS `operator_per_year`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `operator_per_year` AS select year(`master_data`.`created_at`) AS `year`,count((case when (`master_data`.`operator` = 'Telkomsel') then 1 end)) AS `telkomsel_count`,count((case when (`master_data`.`operator` = 'Indosat') then 1 end)) AS `indosat_count`,count((case when (`master_data`.`operator` = 'XL') then 1 end)) AS `xl_count`,count((case when (`master_data`.`operator` = 'Smartfren') then 1 end)) AS `smartfren_count`,count((case when ((`master_data`.`operator` <> 'Telkomsel') and (`master_data`.`operator` <> 'Indosat') and (`master_data`.`operator` <> 'XL') and (`master_data`.`operator` <> 'Smartfren')) then 1 end)) AS `other_count` from `master_data` group by year(`master_data`.`created_at`);

-- --------------------------------------------------------

--
-- Structure for view `operator_per_year_user`
--
DROP TABLE IF EXISTS `operator_per_year_user`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `operator_per_year_user` AS select `master_data`.`user` AS `user`,year(`master_data`.`created_at`) AS `year`,count((case when (`master_data`.`operator` = 'Telkomsel') then 1 end)) AS `telkomsel_count`,count((case when (`master_data`.`operator` = 'Indosat') then 1 end)) AS `indosat_count`,count((case when (`master_data`.`operator` = 'XL') then 1 end)) AS `xl_count`,count((case when (`master_data`.`operator` = 'Smartfren') then 1 end)) AS `smartfren_count`,count((case when ((`master_data`.`operator` <> 'Telkomsel') and (`master_data`.`operator` <> 'Indosat') and (`master_data`.`operator` <> 'XL') and (`master_data`.`operator` <> 'Smartfren')) then 1 end)) AS `other_count` from `master_data` group by year(`master_data`.`created_at`),`master_data`.`user`;

-- --------------------------------------------------------

--
-- Structure for view `view_activity_by_type_device_per_day`
--
DROP TABLE IF EXISTS `view_activity_by_type_device_per_day`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_activity_by_type_device_per_day` AS select `master_data`.`created_at` AS `day`,count((case when (`master_data`.`type_device` = 'samsung') then 1 end)) AS `samsung_count`,count((case when (`master_data`.`type_device` = 'apple') then 1 end)) AS `apple_count`,count((case when ((`master_data`.`type_device` <> 'apple') and (`master_data`.`type_device` <> 'samsung')) then 1 end)) AS `other_count` from `master_data` group by `master_data`.`created_at`;

-- --------------------------------------------------------

--
-- Structure for view `view_activity_by_type_device_per_day_user`
--
DROP TABLE IF EXISTS `view_activity_by_type_device_per_day_user`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_activity_by_type_device_per_day_user` AS select `master_data`.`user` AS `user`,`master_data`.`created_at` AS `day`,count((case when (`master_data`.`type_device` = 'samsung') then 1 end)) AS `samsung_count`,count((case when (`master_data`.`type_device` = 'apple') then 1 end)) AS `apple_count`,count((case when ((`master_data`.`type_device` <> 'apple') and (`master_data`.`type_device` <> 'samsung')) then 1 end)) AS `other_count` from `master_data` group by `master_data`.`created_at`,`master_data`.`user`;

-- --------------------------------------------------------

--
-- Structure for view `view_activity_by_type_device_per_month`
--
DROP TABLE IF EXISTS `view_activity_by_type_device_per_month`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_activity_by_type_device_per_month` AS select month(`master_data`.`created_at`) AS `month`,count((case when (`master_data`.`type_device` = 'samsung') then 1 end)) AS `samsung_count`,count((case when (`master_data`.`type_device` = 'apple') then 1 end)) AS `apple_count`,count((case when ((`master_data`.`type_device` <> 'apple') and (`master_data`.`type_device` <> 'samsung')) then 1 end)) AS `other_count` from `master_data` group by month(`master_data`.`created_at`);

-- --------------------------------------------------------

--
-- Structure for view `view_activity_by_type_device_per_month_user`
--
DROP TABLE IF EXISTS `view_activity_by_type_device_per_month_user`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_activity_by_type_device_per_month_user` AS select `master_data`.`user` AS `user`,month(`master_data`.`created_at`) AS `month`,count((case when (`master_data`.`type_device` = 'samsung') then 1 end)) AS `samsung_count`,count((case when (`master_data`.`type_device` = 'apple') then 1 end)) AS `apple_count`,count((case when ((`master_data`.`type_device` <> 'apple') and (`master_data`.`type_device` <> 'samsung')) then 1 end)) AS `other_count` from `master_data` group by month(`master_data`.`created_at`),`master_data`.`user`;

-- --------------------------------------------------------

--
-- Structure for view `view_activity_by_type_device_per_year`
--
DROP TABLE IF EXISTS `view_activity_by_type_device_per_year`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_activity_by_type_device_per_year` AS select year(`master_data`.`created_at`) AS `year`,count((case when (`master_data`.`type_device` = 'samsung') then 1 end)) AS `samsung_count`,count((case when (`master_data`.`type_device` = 'apple') then 1 end)) AS `apple_count`,count((case when ((`master_data`.`type_device` <> 'apple') and (`master_data`.`type_device` <> 'samsung')) then 1 end)) AS `other_count` from `master_data` group by year(`master_data`.`created_at`);

-- --------------------------------------------------------

--
-- Structure for view `view_activity_by_type_device_per_year_user`
--
DROP TABLE IF EXISTS `view_activity_by_type_device_per_year_user`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_activity_by_type_device_per_year_user` AS select `master_data`.`user` AS `user`,year(`master_data`.`created_at`) AS `year`,count((case when (`master_data`.`type_device` = 'samsung') then 1 end)) AS `samsung_count`,count((case when (`master_data`.`type_device` = 'apple') then 1 end)) AS `apple_count`,count((case when ((`master_data`.`type_device` <> 'apple') and (`master_data`.`type_device` <> 'samsung')) then 1 end)) AS `other_count` from `master_data` group by year(`master_data`.`created_at`),`master_data`.`user`;

-- --------------------------------------------------------

--
-- Structure for view `view_by_click_per_day`
--
DROP TABLE IF EXISTS `view_by_click_per_day`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_by_click_per_day` AS select `master_data`.`created_at` AS `day`,count((case when (`master_data`.`click` = 'login') then 1 end)) AS `login_count`,count((case when (`master_data`.`click` = 'save') then 1 end)) AS `save_count`,count((case when (`master_data`.`click` = 'close') then 1 end)) AS `close_count`,count((case when (`master_data`.`click` = 'delete') then 1 end)) AS `delete_count`,count((case when ((`master_data`.`click` <> 'login') and (`master_data`.`click` <> 'save') and (`master_data`.`click` <> 'close') and (`master_data`.`click` <> 'delete')) then 1 end)) AS `other_count` from `master_data` group by `master_data`.`created_at`;

-- --------------------------------------------------------

--
-- Structure for view `view_by_click_per_day_user`
--
DROP TABLE IF EXISTS `view_by_click_per_day_user`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_by_click_per_day_user` AS select `master_data`.`user` AS `user`,`master_data`.`created_at` AS `day`,count((case when (`master_data`.`click` = 'login') then 1 end)) AS `login_count`,count((case when (`master_data`.`click` = 'save') then 1 end)) AS `save_count`,count((case when (`master_data`.`click` = 'close') then 1 end)) AS `close_count`,count((case when (`master_data`.`click` = 'delete') then 1 end)) AS `delete_count`,count((case when ((`master_data`.`click` <> 'login') and (`master_data`.`click` <> 'save') and (`master_data`.`click` <> 'close') and (`master_data`.`click` <> 'delete')) then 1 end)) AS `other_count` from `master_data` group by `master_data`.`created_at`,`master_data`.`user`;

-- --------------------------------------------------------

--
-- Structure for view `view_by_click_per_month`
--
DROP TABLE IF EXISTS `view_by_click_per_month`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_by_click_per_month` AS select month(`master_data`.`created_at`) AS `month`,count((case when (`master_data`.`click` = 'login') then 1 end)) AS `login_count`,count((case when (`master_data`.`click` = 'save') then 1 end)) AS `save_count`,count((case when (`master_data`.`click` = 'close') then 1 end)) AS `close_count`,count((case when (`master_data`.`click` = 'delete') then 1 end)) AS `delete_count`,count((case when ((`master_data`.`click` <> 'login') and (`master_data`.`click` <> 'save') and (`master_data`.`click` <> 'close') and (`master_data`.`click` <> 'delete')) then 1 end)) AS `other_count` from `master_data` group by month(`master_data`.`created_at`);

-- --------------------------------------------------------

--
-- Structure for view `view_by_click_per_month_user`
--
DROP TABLE IF EXISTS `view_by_click_per_month_user`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_by_click_per_month_user` AS select `master_data`.`user` AS `user`,month(`master_data`.`created_at`) AS `month`,count((case when (`master_data`.`click` = 'login') then 1 end)) AS `login_count`,count((case when (`master_data`.`click` = 'save') then 1 end)) AS `save_count`,count((case when (`master_data`.`click` = 'close') then 1 end)) AS `close_count`,count((case when (`master_data`.`click` = 'delete') then 1 end)) AS `delete_count`,count((case when ((`master_data`.`click` <> 'login') and (`master_data`.`click` <> 'save') and (`master_data`.`click` <> 'close') and (`master_data`.`click` <> 'delete')) then 1 end)) AS `other_count` from `master_data` group by month(`master_data`.`created_at`),`master_data`.`user`;

-- --------------------------------------------------------

--
-- Structure for view `view_by_click_per_year`
--
DROP TABLE IF EXISTS `view_by_click_per_year`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_by_click_per_year` AS select year(`master_data`.`created_at`) AS `year`,count((case when (`master_data`.`click` = 'login') then 1 end)) AS `login_count`,count((case when (`master_data`.`click` = 'save') then 1 end)) AS `save_count`,count((case when (`master_data`.`click` = 'close') then 1 end)) AS `close_count`,count((case when (`master_data`.`click` = 'delete') then 1 end)) AS `delete_count`,count((case when ((`master_data`.`click` <> 'login') and (`master_data`.`click` <> 'save') and (`master_data`.`click` <> 'close') and (`master_data`.`click` <> 'delete')) then 1 end)) AS `other_count` from `master_data` group by year(`master_data`.`created_at`);

-- --------------------------------------------------------

--
-- Structure for view `view_by_click_per_year_user`
--
DROP TABLE IF EXISTS `view_by_click_per_year_user`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_by_click_per_year_user` AS select `master_data`.`user` AS `user`,year(`master_data`.`created_at`) AS `year`,count((case when (`master_data`.`click` = 'login') then 1 end)) AS `login_count`,count((case when (`master_data`.`click` = 'save') then 1 end)) AS `save_count`,count((case when (`master_data`.`click` = 'close') then 1 end)) AS `close_count`,count((case when (`master_data`.`click` = 'delete') then 1 end)) AS `delete_count`,count((case when ((`master_data`.`click` <> 'login') and (`master_data`.`click` <> 'save') and (`master_data`.`click` <> 'close') and (`master_data`.`click` <> 'delete')) then 1 end)) AS `other_count` from `master_data` group by year(`master_data`.`created_at`),`master_data`.`user`;

-- --------------------------------------------------------

--
-- Structure for view `view_by_view_page_perday`
--
DROP TABLE IF EXISTS `view_by_view_page_perday`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_by_view_page_perday` AS select `master_data`.`created_at` AS `day`,count((case when (`master_data`.`view` = 'welcome') then 1 end)) AS `welcome_count`,count((case when (`master_data`.`view` = 'registration') then 1 end)) AS `registration_count`,count((case when (`master_data`.`view` = 'shopping') then 1 end)) AS `shopping_count`,count((case when (`master_data`.`view` = 'order') then 1 end)) AS `order_count`,count((case when ((`master_data`.`view` <> 'welcome') and (`master_data`.`view` <> 'registration') and (`master_data`.`view` <> 'shopping') and (`master_data`.`view` <> 'order')) then 1 end)) AS `other_count` from `master_data` group by `master_data`.`created_at`;

-- --------------------------------------------------------

--
-- Structure for view `view_by_view_page_perday_user`
--
DROP TABLE IF EXISTS `view_by_view_page_perday_user`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_by_view_page_perday_user` AS select `master_data`.`user` AS `user`,`master_data`.`created_at` AS `day`,count((case when (`master_data`.`view` = 'welcome') then 1 end)) AS `welcome_count`,count((case when (`master_data`.`view` = 'registration') then 1 end)) AS `registration_count`,count((case when (`master_data`.`view` = 'shopping') then 1 end)) AS `shopping_count`,count((case when (`master_data`.`view` = 'order') then 1 end)) AS `order_count`,count((case when ((`master_data`.`view` <> 'welcome') and (`master_data`.`view` <> 'registration') and (`master_data`.`view` <> 'shopping') and (`master_data`.`view` <> 'order')) then 1 end)) AS `other_count` from `master_data` group by `master_data`.`created_at`,`master_data`.`user`;

-- --------------------------------------------------------

--
-- Structure for view `view_by_view_page_permonth`
--
DROP TABLE IF EXISTS `view_by_view_page_permonth`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_by_view_page_permonth` AS select month(`master_data`.`created_at`) AS `month`,count((case when (`master_data`.`view` = 'welcome') then 1 end)) AS `welcome_count`,count((case when (`master_data`.`view` = 'registration') then 1 end)) AS `registration_count`,count((case when (`master_data`.`view` = 'shopping') then 1 end)) AS `shopping_count`,count((case when (`master_data`.`view` = 'order') then 1 end)) AS `order_count`,count((case when ((`master_data`.`view` <> 'welcome') and (`master_data`.`view` <> 'registration') and (`master_data`.`view` <> 'shopping') and (`master_data`.`view` <> 'order')) then 1 end)) AS `other_count` from `master_data` group by month(`master_data`.`created_at`);

-- --------------------------------------------------------

--
-- Structure for view `view_by_view_page_permonth_user`
--
DROP TABLE IF EXISTS `view_by_view_page_permonth_user`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_by_view_page_permonth_user` AS select `master_data`.`user` AS `user`,month(`master_data`.`created_at`) AS `month`,count((case when (`master_data`.`view` = 'welcome') then 1 end)) AS `welcome_count`,count((case when (`master_data`.`view` = 'registration') then 1 end)) AS `registration_count`,count((case when (`master_data`.`view` = 'shopping') then 1 end)) AS `shopping_count`,count((case when (`master_data`.`view` = 'order') then 1 end)) AS `order_count`,count((case when ((`master_data`.`view` <> 'welcome') and (`master_data`.`view` <> 'registration') and (`master_data`.`view` <> 'shopping') and (`master_data`.`view` <> 'order')) then 1 end)) AS `other_count` from `master_data` group by month(`master_data`.`created_at`),`master_data`.`user`;

-- --------------------------------------------------------

--
-- Structure for view `view_by_view_page_peryear`
--
DROP TABLE IF EXISTS `view_by_view_page_peryear`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_by_view_page_peryear` AS select year(`master_data`.`created_at`) AS `year`,count((case when (`master_data`.`view` = 'welcome') then 1 end)) AS `welcome_count`,count((case when (`master_data`.`view` = 'registration') then 1 end)) AS `registration_count`,count((case when (`master_data`.`view` = 'shopping') then 1 end)) AS `shopping_count`,count((case when (`master_data`.`view` = 'order') then 1 end)) AS `order_count`,count((case when ((`master_data`.`view` <> 'welcome') and (`master_data`.`view` <> 'registration') and (`master_data`.`view` <> 'shopping') and (`master_data`.`view` <> 'order')) then 1 end)) AS `other_count` from `master_data` group by year(`master_data`.`created_at`);

-- --------------------------------------------------------

--
-- Structure for view `view_by_view_page_peryear_user`
--
DROP TABLE IF EXISTS `view_by_view_page_peryear_user`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_by_view_page_peryear_user` AS select `master_data`.`user` AS `user`,year(`master_data`.`created_at`) AS `year`,count((case when (`master_data`.`view` = 'welcome') then 1 end)) AS `welcome_count`,count((case when (`master_data`.`view` = 'registration') then 1 end)) AS `registration_count`,count((case when (`master_data`.`view` = 'shopping') then 1 end)) AS `shopping_count`,count((case when (`master_data`.`view` = 'order') then 1 end)) AS `order_count`,count((case when ((`master_data`.`view` <> 'welcome') and (`master_data`.`view` <> 'registration') and (`master_data`.`view` <> 'shopping') and (`master_data`.`view` <> 'order')) then 1 end)) AS `other_count` from `master_data` group by year(`master_data`.`created_at`),`master_data`.`user`;

-- --------------------------------------------------------

--
-- Structure for view `view_install_month_admin`
--
DROP TABLE IF EXISTS `view_install_month_admin`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_install_month_admin` AS select month(`aplikasi`.`created_at`) AS `month`,count('created_at') AS `count_install` from `aplikasi` group by month(`aplikasi`.`created_at`);

-- --------------------------------------------------------

--
-- Structure for view `view_install_per_day`
--
DROP TABLE IF EXISTS `view_install_per_day`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_install_per_day` AS select `aplikasi`.`user` AS `user`,cast(`aplikasi`.`created_at` as date) AS `day`,count('created_at') AS `count_install` from `aplikasi` group by cast(`aplikasi`.`created_at` as date),`aplikasi`.`user`;

-- --------------------------------------------------------

--
-- Structure for view `view_install_per_day_admin`
--
DROP TABLE IF EXISTS `view_install_per_day_admin`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_install_per_day_admin` AS select cast(`aplikasi`.`created_at` as date) AS `day`,count('created_at') AS `count_install` from `aplikasi` group by cast(`aplikasi`.`created_at` as date);

-- --------------------------------------------------------

--
-- Structure for view `view_install_per_month`
--
DROP TABLE IF EXISTS `view_install_per_month`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_install_per_month` AS select `aplikasi`.`user` AS `user`,month(`aplikasi`.`created_at`) AS `month`,count('created_at') AS `count_install` from `aplikasi` group by month(`aplikasi`.`created_at`),`aplikasi`.`user`;

-- --------------------------------------------------------

--
-- Structure for view `view_install_per_year`
--
DROP TABLE IF EXISTS `view_install_per_year`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_install_per_year` AS select `aplikasi`.`user` AS `user`,year(`aplikasi`.`created_at`) AS `year`,count('created_at') AS `count_install` from `aplikasi` group by year(`aplikasi`.`created_at`),`aplikasi`.`user`;

-- --------------------------------------------------------

--
-- Structure for view `view_install_year_admin`
--
DROP TABLE IF EXISTS `view_install_year_admin`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_install_year_admin` AS select year(`aplikasi`.`created_at`) AS `year`,count('created_at') AS `count_install` from `aplikasi` group by year(`aplikasi`.`created_at`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
