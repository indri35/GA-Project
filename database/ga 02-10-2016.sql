-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 02, 2016 at 03:46 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ga`
--

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `master_data`
--

CREATE TABLE `master_data` (
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `master_data`
--

INSERT INTO `master_data` (`id`, `imei`, `created_at`, `updated_at`, `click`, `view`, `type_device`, `language`, `state`, `regional`) VALUES
(1, '2132411232123213', '2016-09-01', '2016-09-26', 'login', 'welcome', 'samsung', 'Indonesia', 'West Java', 'Bogor'),
(2, '2314321325132', '2016-09-02', '2016-09-26', 'save', 'registration', 'samsung', 'Indonesia', 'West Sumatera', 'Meda'),
(3, '2132411232123211', '2016-09-03', '2016-09-26', 'login', 'welcome', 'samsung', 'Indonesia', 'West Java', 'Bogor'),
(4, '2314321325132', '2016-09-05', '2016-09-26', 'save', 'registration', 'samsung', 'Indonesia', 'West Kalimantan', 'Balikpapan'),
(5, '2314321325133', '2016-09-01', '2016-09-26', 'close', 'registration', 'apple', 'Indonesia', 'West Sumatera', 'Medan'),
(6, '2314321325134', '2016-09-01', '2016-09-26', 'delete', 'shooping', 'apple', 'Indonesia', 'West Sumatera', 'Meda'),
(7, '2314321325135', '2016-09-02', '2016-09-27', 'login', 'welcome', 'apple', 'Indonesia', 'West Sumatera', 'Meda'),
(8, '2314321325136', '2016-09-03', '2016-09-26', 'save', 'shooping', 'apple', 'Indonesia', 'North Sumatera', 'Padang'),
(9, '4356243624354236', '2016-09-04', '2016-09-27', 'save', 'order', 'apple', 'Indoensia', 'West Java', 'Bogor');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
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

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Hendrik', 'drikdoank@gmail.com', '$2y$10$rFCavDebMnD4B3CAvG0ptuuj6PaBLUGjVoMXfBk3bj3W8RAHvVkZG', 'C789XRF533V85YJH5POi1vLDOitokuL369sDmwIpX2tTBpg4sQScAxe2ywB5', '2016-09-17 03:02:01', '2016-09-26 20:47:06'),
(2, 'Indri', 'indri@gmail.com', '$2y$10$avEe2V5oowSLzBkazFliXOud3urBM9ItlugDteFdXLKKQVTFHqQJK', NULL, '2016-09-23 23:37:50', '2016-09-23 23:37:50'),
(3, 'Hendra', 'hendrik@gmail.com', '$2y$10$efMzwzQ5IZytSOjJROPFROL.QCWVOcOC3axhEW7oaMiojK6rBzCw2', 'I0IdI1Z05VTSkaC88UIU9inheOBfoCBMSPVSD6s0hN5OnJBlJ4QCfz1Ovixy', '2016-09-26 18:41:32', '2016-09-26 18:41:38'),
(4, 'Budi', 'budi@gmail.com', '$2y$10$vHMGDG.id0.dl0etknvCC.xwmwDfRc3K51N2MklH5VITH8Y3eUsnW', 'WGSPz4juSA36OYLskpHDBpzpXN0OPOks5XZs8pQzhxOabF6GJ6ATvDfosolh', '2016-09-26 18:42:01', '2016-09-26 18:42:04'),
(5, 'Anis', 'anis@gmail.com', '$2y$10$Vx7.Ba16euhEsXShotUEeOwFOdtjsz22V0/QgkHSLNFG8ZFP89.c6', NULL, '2016-09-26 18:42:47', '2016-09-26 18:42:47');

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_activity_by_type_device_per_day`
--
CREATE TABLE `view_activity_by_type_device_per_day` (
`activity_day` int(2)
,`type_device` varchar(200)
,`count_activity` bigint(21)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_activity_by_type_device_per_month`
--
CREATE TABLE `view_activity_by_type_device_per_month` (
`activity_month` int(2)
,`type_device` varchar(200)
,`count_activity` bigint(21)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_activity_by_type_device_per_year`
--
CREATE TABLE `view_activity_by_type_device_per_year` (
`activity_year` int(4)
,`type_device` varchar(200)
,`count_activity` bigint(21)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_by_click_per_day`
--
CREATE TABLE `view_by_click_per_day` (
`click_day` int(2)
,`click` varchar(200)
,`count_click` bigint(21)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_by_click_per_month`
--
CREATE TABLE `view_by_click_per_month` (
`click_month` int(2)
,`click` varchar(200)
,`count_click` bigint(21)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_by_click_per_year`
--
CREATE TABLE `view_by_click_per_year` (
`click_year` int(4)
,`click` varchar(200)
,`count_click` bigint(21)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_by_view_page_perday`
--
CREATE TABLE `view_by_view_page_perday` (
`view_day` int(2)
,`view` varchar(200)
,`count_view` bigint(21)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_by_view_page_permonth`
--
CREATE TABLE `view_by_view_page_permonth` (
`view_month` int(2)
,`view` varchar(200)
,`count_view` bigint(21)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_by_view_page_peryear`
--
CREATE TABLE `view_by_view_page_peryear` (
`view_year` int(4)
,`view` varchar(200)
,`count_view` bigint(21)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_user_count`
--
CREATE TABLE `view_user_count` (
`install_day` date
,`count_install` bigint(21)
);

-- --------------------------------------------------------

--
-- Structure for view `view_activity_by_type_device_per_day`
--
DROP TABLE IF EXISTS `view_activity_by_type_device_per_day`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_activity_by_type_device_per_day`  AS  select dayofmonth(`master_data`.`created_at`) AS `activity_day`,`master_data`.`type_device` AS `type_device`,count('created_at') AS `count_activity` from `master_data` group by `master_data`.`type_device`,dayofmonth(`master_data`.`created_at`) order by dayofmonth(`master_data`.`created_at`) ;

-- --------------------------------------------------------

--
-- Structure for view `view_activity_by_type_device_per_month`
--
DROP TABLE IF EXISTS `view_activity_by_type_device_per_month`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_activity_by_type_device_per_month`  AS  select month(`master_data`.`created_at`) AS `activity_month`,`master_data`.`type_device` AS `type_device`,count('created_at') AS `count_activity` from `master_data` group by `master_data`.`type_device`,extract(month from `master_data`.`created_at`) order by month(`master_data`.`created_at`) ;

-- --------------------------------------------------------

--
-- Structure for view `view_activity_by_type_device_per_year`
--
DROP TABLE IF EXISTS `view_activity_by_type_device_per_year`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_activity_by_type_device_per_year`  AS  select year(`master_data`.`created_at`) AS `activity_year`,`master_data`.`type_device` AS `type_device`,count('created_at') AS `count_activity` from `master_data` group by `master_data`.`type_device`,year(`master_data`.`created_at`) order by year(`master_data`.`created_at`) ;

-- --------------------------------------------------------

--
-- Structure for view `view_by_click_per_day`
--
DROP TABLE IF EXISTS `view_by_click_per_day`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_by_click_per_day`  AS  select dayofmonth(`master_data`.`created_at`) AS `click_day`,`master_data`.`click` AS `click`,count('created_at') AS `count_click` from `master_data` group by `master_data`.`click`,dayofmonth(`master_data`.`created_at`) order by dayofmonth(`master_data`.`created_at`) ;

-- --------------------------------------------------------

--
-- Structure for view `view_by_click_per_month`
--
DROP TABLE IF EXISTS `view_by_click_per_month`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_by_click_per_month`  AS  select month(`master_data`.`created_at`) AS `click_month`,`master_data`.`click` AS `click`,count('created_at') AS `count_click` from `master_data` group by `master_data`.`click`,month(`master_data`.`created_at`) order by month(`master_data`.`created_at`) ;

-- --------------------------------------------------------

--
-- Structure for view `view_by_click_per_year`
--
DROP TABLE IF EXISTS `view_by_click_per_year`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_by_click_per_year`  AS  select year(`master_data`.`created_at`) AS `click_year`,`master_data`.`click` AS `click`,count('created_at') AS `count_click` from `master_data` group by `master_data`.`click`,year(`master_data`.`created_at`) order by year(`master_data`.`created_at`) ;

-- --------------------------------------------------------

--
-- Structure for view `view_by_view_page_perday`
--
DROP TABLE IF EXISTS `view_by_view_page_perday`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_by_view_page_perday`  AS  select dayofmonth(`master_data`.`created_at`) AS `view_day`,`master_data`.`view` AS `view`,count('created_at') AS `count_view` from `master_data` group by `master_data`.`view`,dayofmonth(`master_data`.`created_at`) order by dayofmonth(`master_data`.`created_at`) ;

-- --------------------------------------------------------

--
-- Structure for view `view_by_view_page_permonth`
--
DROP TABLE IF EXISTS `view_by_view_page_permonth`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_by_view_page_permonth`  AS  select month(`master_data`.`created_at`) AS `view_month`,`master_data`.`view` AS `view`,count('created_at') AS `count_view` from `master_data` group by `master_data`.`view`,month(`master_data`.`created_at`) order by month(`master_data`.`created_at`) ;

-- --------------------------------------------------------

--
-- Structure for view `view_by_view_page_peryear`
--
DROP TABLE IF EXISTS `view_by_view_page_peryear`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_by_view_page_peryear`  AS  select year(`master_data`.`created_at`) AS `view_year`,`master_data`.`view` AS `view`,count('created_at') AS `count_view` from `master_data` group by `master_data`.`view`,year(`master_data`.`created_at`) order by year(`master_data`.`created_at`) ;

-- --------------------------------------------------------

--
-- Structure for view `view_user_count`
--
DROP TABLE IF EXISTS `view_user_count`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_user_count`  AS  select cast(`users`.`created_at` as date) AS `install_day`,count('created_at') AS `count_install` from `users` group by cast(`users`.`created_at` as date) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
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
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `master_data`
--
ALTER TABLE `master_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
