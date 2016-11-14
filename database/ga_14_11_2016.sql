-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 14, 2016 at 07:16 AM
-- Server version: 5.6.20
-- PHP Version: 5.5.15

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
-- Table structure for table `blogs`
--

CREATE TABLE IF NOT EXISTS `blogs` (
`id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `connectedby`
--

CREATE TABLE IF NOT EXISTS `connectedby` (
  `id` int(11) NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL,
  `connected_by` varchar(128) NOT NULL,
  `latitude` double NOT NULL,
  `longitude` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `connectedby`
--

INSERT INTO `connectedby` (`id`, `created_at`, `updated_at`, `connected_by`, `latitude`, `longitude`) VALUES
(1, '2016-11-01', '2016-11-02', 'wifi', -6.58527, 106.79768),
(2, '2016-11-03', '2016-11-04', 'cellular', -6.59606, 106.79276),
(3, '2016-11-01', '2016-11-03', 'wifi', -6.60852, 106.81034);

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
-- Stand-in structure for view `count_connectedby_month`
--
CREATE TABLE IF NOT EXISTS `count_connectedby_month` (
`month` int(2)
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
-- Stand-in structure for view `count_dashboard`
--
CREATE TABLE IF NOT EXISTS `count_dashboard` (
`count_activity` bigint(21)
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
-- Stand-in structure for view `map_region`
--
CREATE TABLE IF NOT EXISTS `map_region` (
`regional` varchar(200)
,`count_region` bigint(21)
);
-- --------------------------------------------------------

--
-- Table structure for table `master_data`
--

CREATE TABLE IF NOT EXISTS `master_data` (
`id` int(11) NOT NULL,
  `imei` varchar(250) NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL,
  `click` varchar(200) NOT NULL,
  `view` varchar(200) NOT NULL,
  `type_device` varchar(200) NOT NULL,
  `language` varchar(150) NOT NULL,
  `state` varchar(200) NOT NULL,
  `regional` varchar(200) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `master_data`
--

INSERT INTO `master_data` (`id`, `imei`, `created_at`, `updated_at`, `click`, `view`, `type_device`, `language`, `state`, `regional`) VALUES
(1, '2132411232123213', '2016-09-01', '2016-09-26', 'login', 'welcome', 'samsung', 'Indonesia', 'West Java', 'Bogor'),
(2, '2314321325132', '2016-09-02', '2016-09-26', 'save', 'registration', 'samsung', 'Indonesia', 'West Sumatera', 'Meda'),
(3, '2132411232123211', '2016-09-03', '2016-09-26', 'login', 'welcome', 'samsung', 'Indonesia', 'West Java', 'Bogor'),
(4, '2314321325132', '2016-09-05', '2016-09-26', 'save', 'registration', 'samsung', 'Indonesia', 'West Kalimantan', 'Balikpapan'),
(5, '2314321325133', '2016-09-01', '2016-09-26', 'close', 'registration', 'apple', 'Indonesia', 'West Sumatera', 'Medan'),
(6, '2314321325134', '2016-09-01', '2016-09-26', 'delete', 'shopping', 'apple', 'Indonesia', 'West Sumatera', 'Medan'),
(7, '2314321325135', '2016-09-02', '2016-09-27', 'login', 'welcome', 'apple', 'Indonesia', 'West Sumatera', 'Medan'),
(8, '2314321325136', '2016-09-03', '2016-09-26', 'save', 'shopping', 'apple', 'Indonesia', 'North Sumatera', 'Padang'),
(9, '4356243624354236', '2016-09-04', '2016-09-27', 'save', 'order', 'apple', 'Indoensia', 'West Java', 'Bogor');

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
-- Table structure for table `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Hendrik', 'drikdoank@gmail.com', '$2y$10$rFCavDebMnD4B3CAvG0ptuuj6PaBLUGjVoMXfBk3bj3W8RAHvVkZG', 'C789XRF533V85YJH5POi1vLDOitokuL369sDmwIpX2tTBpg4sQScAxe2ywB5', '2016-09-17 03:02:01', '2016-09-26 20:47:06'),
(2, 'Indriyani', 'indri@gmail.com', '$2y$10$avEe2V5oowSLzBkazFliXOud3urBM9ItlugDteFdXLKKQVTFHqQJK', NULL, '2016-09-23 23:37:50', '2016-09-23 23:37:50'),
(3, 'Hendra', 'hendrik@gmail.com', '$2y$10$efMzwzQ5IZytSOjJROPFROL.QCWVOcOC3axhEW7oaMiojK6rBzCw2', 'I0IdI1Z05VTSkaC88UIU9inheOBfoCBMSPVSD6s0hN5OnJBlJ4QCfz1Ovixy', '2016-09-26 18:41:32', '2016-09-26 18:41:38'),
(4, 'Budi', 'budi@gmail.com', '$2y$10$vHMGDG.id0.dl0etknvCC.xwmwDfRc3K51N2MklH5VITH8Y3eUsnW', 'WGSPz4juSA36OYLskpHDBpzpXN0OPOks5XZs8pQzhxOabF6GJ6ATvDfosolh', '2016-09-26 18:42:01', '2016-09-26 18:42:04'),
(5, 'Anis', 'anis@gmail.com', '$2y$10$Vx7.Ba16euhEsXShotUEeOwFOdtjsz22V0/QgkHSLNFG8ZFP89.c6', NULL, '2017-09-26 18:42:47', '2016-09-26 18:42:47'),
(6, 'Indriyani', 'indriyani.cs49@gmail.com', '$2y$10$Z/CL3nOYV5Q.FM0fSHFRtuqEcE/IDzH9eb7ItbSx9/9.tmzY8cJuS', 'lyX4hwiG4MifB2uc1FsR4jaZsLw8SQ2FgniLtixtkbykXQn7ahk0mS6WxyWw', '2016-10-02 07:14:30', '2016-10-06 00:27:16');

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
-- Stand-in structure for view `view_install_per_day`
--
CREATE TABLE IF NOT EXISTS `view_install_per_day` (
`day` date
,`count_install` bigint(21)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `view_install_per_month`
--
CREATE TABLE IF NOT EXISTS `view_install_per_month` (
`month` int(2)
,`count_install` bigint(21)
);
-- --------------------------------------------------------

--
-- Stand-in structure for view `view_install_per_year`
--
CREATE TABLE IF NOT EXISTS `view_install_per_year` (
`year` int(4)
,`count_install` bigint(21)
);
-- --------------------------------------------------------

--
-- Structure for view `count_connectedby_day`
--
DROP TABLE IF EXISTS `count_connectedby_day`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `count_connectedby_day` AS select `connectedby`.`created_at` AS `day`,count((case when (`connectedby`.`connected_by` = 'wifi') then 1 end)) AS `wifi_count`,count((case when (`connectedby`.`connected_by` = 'cellular') then 1 end)) AS `cellular_count` from `connectedby` group by `connectedby`.`created_at`;

-- --------------------------------------------------------

--
-- Structure for view `count_connectedby_month`
--
DROP TABLE IF EXISTS `count_connectedby_month`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `count_connectedby_month` AS select month(`connectedby`.`created_at`) AS `month`,count((case when (`connectedby`.`connected_by` = 'wifi') then 1 end)) AS `wifi_count`,count((case when (`connectedby`.`connected_by` = 'cellular') then 1 end)) AS `cellular_count` from `connectedby` group by month(`connectedby`.`created_at`);

-- --------------------------------------------------------

--
-- Structure for view `count_connectedby_year`
--
DROP TABLE IF EXISTS `count_connectedby_year`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `count_connectedby_year` AS select year(`connectedby`.`created_at`) AS `year`,count((case when (`connectedby`.`connected_by` = 'wifi') then 1 end)) AS `wifi_count`,count((case when (`connectedby`.`connected_by` = 'cellular') then 1 end)) AS `cellular_count` from `connectedby` group by year(`connectedby`.`created_at`);

-- --------------------------------------------------------

--
-- Structure for view `count_dashboard`
--
DROP TABLE IF EXISTS `count_dashboard`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `count_dashboard` AS select count(distinct `master_data`.`id`) AS `count_activity`,count(distinct `master_data`.`click`) AS `count_click`,count(distinct `master_data`.`view`) AS `count_view` from `master_data`;

-- --------------------------------------------------------

--
-- Structure for view `count_install`
--
DROP TABLE IF EXISTS `count_install`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `count_install` AS select count(`users`.`id`) AS `total_install` from `users`;

-- --------------------------------------------------------

--
-- Structure for view `map_region`
--
DROP TABLE IF EXISTS `map_region`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `map_region` AS select `master_data`.`regional` AS `regional`,count(`master_data`.`regional`) AS `count_region` from `master_data` group by `master_data`.`regional`;

-- --------------------------------------------------------

--
-- Structure for view `view_activity_by_type_device_per_day`
--
DROP TABLE IF EXISTS `view_activity_by_type_device_per_day`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_activity_by_type_device_per_day` AS select `master_data`.`created_at` AS `day`,count((case when (`master_data`.`type_device` = 'samsung') then 1 end)) AS `samsung_count`,count((case when (`master_data`.`type_device` = 'apple') then 1 end)) AS `apple_count`,count((case when ((`master_data`.`type_device` <> 'apple') and (`master_data`.`type_device` <> 'samsung')) then 1 end)) AS `other_count` from `master_data` group by `master_data`.`created_at`;

-- --------------------------------------------------------

--
-- Structure for view `view_activity_by_type_device_per_month`
--
DROP TABLE IF EXISTS `view_activity_by_type_device_per_month`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_activity_by_type_device_per_month` AS select month(`master_data`.`created_at`) AS `month`,count((case when (`master_data`.`type_device` = 'samsung') then 1 end)) AS `samsung_count`,count((case when (`master_data`.`type_device` = 'apple') then 1 end)) AS `apple_count`,count((case when ((`master_data`.`type_device` <> 'apple') and (`master_data`.`type_device` <> 'samsung')) then 1 end)) AS `other_count` from `master_data` group by month(`master_data`.`created_at`);

-- --------------------------------------------------------

--
-- Structure for view `view_activity_by_type_device_per_year`
--
DROP TABLE IF EXISTS `view_activity_by_type_device_per_year`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_activity_by_type_device_per_year` AS select year(`master_data`.`created_at`) AS `year`,count((case when (`master_data`.`type_device` = 'samsung') then 1 end)) AS `samsung_count`,count((case when (`master_data`.`type_device` = 'apple') then 1 end)) AS `apple_count`,count((case when ((`master_data`.`type_device` <> 'apple') and (`master_data`.`type_device` <> 'samsung')) then 1 end)) AS `other_count` from `master_data` group by year(`master_data`.`created_at`);

-- --------------------------------------------------------

--
-- Structure for view `view_by_click_per_day`
--
DROP TABLE IF EXISTS `view_by_click_per_day`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_by_click_per_day` AS select `master_data`.`created_at` AS `day`,count((case when (`master_data`.`click` = 'login') then 1 end)) AS `login_count`,count((case when (`master_data`.`click` = 'save') then 1 end)) AS `save_count`,count((case when (`master_data`.`click` = 'close') then 1 end)) AS `close_count`,count((case when (`master_data`.`click` = 'delete') then 1 end)) AS `delete_count`,count((case when ((`master_data`.`click` <> 'login') and (`master_data`.`click` <> 'save') and (`master_data`.`click` <> 'close') and (`master_data`.`click` <> 'delete')) then 1 end)) AS `other_count` from `master_data` group by `master_data`.`created_at`;

-- --------------------------------------------------------

--
-- Structure for view `view_by_click_per_month`
--
DROP TABLE IF EXISTS `view_by_click_per_month`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_by_click_per_month` AS select month(`master_data`.`created_at`) AS `month`,count((case when (`master_data`.`click` = 'login') then 1 end)) AS `login_count`,count((case when (`master_data`.`click` = 'save') then 1 end)) AS `save_count`,count((case when (`master_data`.`click` = 'close') then 1 end)) AS `close_count`,count((case when (`master_data`.`click` = 'delete') then 1 end)) AS `delete_count`,count((case when ((`master_data`.`click` <> 'login') and (`master_data`.`click` <> 'save') and (`master_data`.`click` <> 'close') and (`master_data`.`click` <> 'delete')) then 1 end)) AS `other_count` from `master_data` group by month(`master_data`.`created_at`);

-- --------------------------------------------------------

--
-- Structure for view `view_by_click_per_year`
--
DROP TABLE IF EXISTS `view_by_click_per_year`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_by_click_per_year` AS select year(`master_data`.`created_at`) AS `year`,count((case when (`master_data`.`click` = 'login') then 1 end)) AS `login_count`,count((case when (`master_data`.`click` = 'save') then 1 end)) AS `save_count`,count((case when (`master_data`.`click` = 'close') then 1 end)) AS `close_count`,count((case when (`master_data`.`click` = 'delete') then 1 end)) AS `delete_count`,count((case when ((`master_data`.`click` <> 'login') and (`master_data`.`click` <> 'save') and (`master_data`.`click` <> 'close') and (`master_data`.`click` <> 'delete')) then 1 end)) AS `other_count` from `master_data` group by year(`master_data`.`created_at`);

-- --------------------------------------------------------

--
-- Structure for view `view_by_view_page_perday`
--
DROP TABLE IF EXISTS `view_by_view_page_perday`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_by_view_page_perday` AS select `master_data`.`created_at` AS `day`,count((case when (`master_data`.`view` = 'welcome') then 1 end)) AS `welcome_count`,count((case when (`master_data`.`view` = 'registration') then 1 end)) AS `registration_count`,count((case when (`master_data`.`view` = 'shopping') then 1 end)) AS `shopping_count`,count((case when (`master_data`.`view` = 'order') then 1 end)) AS `order_count`,count((case when ((`master_data`.`view` <> 'welcome') and (`master_data`.`view` <> 'registration') and (`master_data`.`view` <> 'shopping') and (`master_data`.`view` <> 'order')) then 1 end)) AS `other_count` from `master_data` group by `master_data`.`created_at`;

-- --------------------------------------------------------

--
-- Structure for view `view_by_view_page_permonth`
--
DROP TABLE IF EXISTS `view_by_view_page_permonth`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_by_view_page_permonth` AS select month(`master_data`.`created_at`) AS `month`,count((case when (`master_data`.`view` = 'welcome') then 1 end)) AS `welcome_count`,count((case when (`master_data`.`view` = 'registration') then 1 end)) AS `registration_count`,count((case when (`master_data`.`view` = 'shopping') then 1 end)) AS `shopping_count`,count((case when (`master_data`.`view` = 'order') then 1 end)) AS `order_count`,count((case when ((`master_data`.`view` <> 'welcome') and (`master_data`.`view` <> 'registration') and (`master_data`.`view` <> 'shopping') and (`master_data`.`view` <> 'order')) then 1 end)) AS `other_count` from `master_data` group by month(`master_data`.`created_at`);

-- --------------------------------------------------------

--
-- Structure for view `view_by_view_page_peryear`
--
DROP TABLE IF EXISTS `view_by_view_page_peryear`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_by_view_page_peryear` AS select year(`master_data`.`created_at`) AS `year`,count((case when (`master_data`.`view` = 'welcome') then 1 end)) AS `welcome_count`,count((case when (`master_data`.`view` = 'registration') then 1 end)) AS `registration_count`,count((case when (`master_data`.`view` = 'shopping') then 1 end)) AS `shopping_count`,count((case when (`master_data`.`view` = 'order') then 1 end)) AS `order_count`,count((case when ((`master_data`.`view` <> 'welcome') and (`master_data`.`view` <> 'registration') and (`master_data`.`view` <> 'shopping') and (`master_data`.`view` <> 'order')) then 1 end)) AS `other_count` from `master_data` group by year(`master_data`.`created_at`);

-- --------------------------------------------------------

--
-- Structure for view `view_install_per_day`
--
DROP TABLE IF EXISTS `view_install_per_day`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_install_per_day` AS select cast(`users`.`created_at` as date) AS `day`,count('created_at') AS `count_install` from `users` group by cast(`users`.`created_at` as date);

-- --------------------------------------------------------

--
-- Structure for view `view_install_per_month`
--
DROP TABLE IF EXISTS `view_install_per_month`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_install_per_month` AS select month(`users`.`created_at`) AS `month`,count('created_at') AS `count_install` from `users` group by month(`users`.`created_at`);

-- --------------------------------------------------------

--
-- Structure for view `view_install_per_year`
--
DROP TABLE IF EXISTS `view_install_per_year`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_install_per_year` AS select year(`users`.`created_at`) AS `year`,count('created_at') AS `count_install` from `users` group by year(`users`.`created_at`);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `connectedby`
--
ALTER TABLE `connectedby`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_data`
--
ALTER TABLE `master_data`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
 ADD KEY `password_resets_email_index` (`email`), ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `master_data`
--
ALTER TABLE `master_data`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
