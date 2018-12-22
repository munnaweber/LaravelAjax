-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 22, 2018 at 08:11 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tut`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `district` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `name`, `phone`, `email`, `district`, `created_at`, `updated_at`) VALUES
(1, 'Munna Ahmed', '01580267728', 'munnaweber@gmail.com', 'Dhaka', '2018-12-22 11:19:57', NULL),
(2, 'Munna Ahmed', '01580267728', 'munnaweber@gmail.com', 'Dhaka', '2018-12-22 11:20:02', NULL),
(3, 'Tarikul Islam', '123456789', 'tarikul@gmail.com', 'Dhaka', '2018-12-22 11:22:25', NULL),
(4, 'Md Anwar', '01644390810', 'munnaweber@gmail.com', 'Sunamgonj', '2018-12-22 11:32:52', NULL),
(5, 'Saidul Islam Uzzal', '01580267728', 'munnaweber@gmail.com', 'Dhaka', '2018-12-22 11:33:24', NULL),
(6, 'Saidul Islam Uzzal', '01580267728', 'munnaweber@gmail.com', 'Dhaka', '2018-12-22 11:33:29', NULL),
(7, 'Riser Club', '1644390810', 'riserclub.net@gmail.com', 'Dhaka', '2018-12-22 11:41:25', NULL),
(8, 'Sajib Talukdar', '1580267728', 'munnaweber@gmail.com', 'Rangpur', '2018-12-22 11:42:19', '2018-12-22 12:39:18'),
(9, 'Ahmed', '1580267728', 'munnaweber@gmail.com', 'Dhaka', '2018-12-22 11:42:40', '2018-12-22 12:38:31'),
(10, 'Munna', '1580267728', 'munnaweber@gmail.com', 'Dhaka', '2018-12-22 11:43:06', '2018-12-22 12:37:17'),
(22, 'Adele Muller', '1-757-589-8897 x723', 'vella18@example.com', 'Mayerbury', '2018-12-22 12:47:38', '2018-12-22 12:47:38'),
(23, 'Ephraim Durgan', '413-373-0238 x4055', 'hazle.mohr@example.org', 'North Yasmin', '2018-12-22 12:47:38', '2018-12-22 12:47:38'),
(24, 'Eunice Fritsch', '1-560-307-3123 x62988', 'catherine81@example.net', 'Port Fredyburgh', '2018-12-22 12:47:38', '2018-12-22 12:47:38'),
(25, 'Arjun Smith', '912.949.5426', 'monserrat44@example.com', 'East Omer', '2018-12-22 12:47:38', '2018-12-22 12:47:39'),
(26, 'Prof. Earnest Upton Sr.', '1-982-642-1582', 'zkris@example.com', 'South Kailynton', '2018-12-22 12:47:38', '2018-12-22 12:47:39'),
(27, 'Anya Stiedemann', '260.546.5216 x6761', 'fconsidine@example.org', 'Schinnerport', '2018-12-22 12:47:38', '2018-12-22 12:47:39'),
(28, 'Trey Wolf', '1-961-284-1240', 'angie.johns@example.org', 'Port Lukastown', '2018-12-22 12:47:38', '2018-12-22 12:47:39'),
(29, 'Dr. Meagan Oberbrunner', '(485) 298-7868', 'goyette.yoshiko@example.com', 'Lorenzachester', '2018-12-22 12:47:38', '2018-12-22 12:47:39'),
(30, 'Kayley Gleichner DVM', '+1.398.561.9930', 'margie29@example.com', 'Marjoryhaven', '2018-12-22 12:47:38', '2018-12-22 12:47:39'),
(31, 'Liam Marvin', '589.616.0313 x4965', 'yasmine57@example.org', 'New Elinorebury', '2018-12-22 12:47:38', '2018-12-22 12:47:39'),
(32, 'Donato Bode', '795-750-8161', 'naomi.greenholt@example.com', 'Kiehnbury', '2018-12-22 12:47:38', '2018-12-22 12:47:39'),
(33, 'Jewel Mante', '1-954-210-8716', 'hillard.gutmann@example.org', 'Lake Javier', '2018-12-22 12:47:38', '2018-12-22 12:47:39'),
(34, 'Dr. Keanu Bahringer', '1-394-942-6806', 'bailey.rhoda@example.net', 'West Jaedenfort', '2018-12-22 12:47:38', '2018-12-22 12:47:39'),
(35, 'Mr. Theodore Murphy IV', '+1 (850) 890-6632', 'manuela11@example.org', 'Deshaunview', '2018-12-22 12:47:38', '2018-12-22 12:47:39'),
(36, 'Lane Roob', '870-400-9413', 'laurianne.jast@example.net', 'Columbusport', '2018-12-22 12:47:38', '2018-12-22 12:47:39'),
(37, 'Samir Abshire', '+1.361.370.3486', 'moore.shanna@example.net', 'South Una', '2018-12-22 12:47:38', '2018-12-22 12:47:39'),
(38, 'Wava Dach', '643-669-5816 x4631', 'orin.tremblay@example.org', 'North Sadyemouth', '2018-12-22 12:47:38', '2018-12-22 12:47:39'),
(39, 'Grace Stark', '+1-392-331-9387', 'arch34@example.com', 'Smithmouth', '2018-12-22 12:47:38', '2018-12-22 12:47:39'),
(40, 'Ms. Victoria Schuppe', '1-909-529-6098 x22329', 'damon61@example.com', 'East Enos', '2018-12-22 12:47:38', '2018-12-22 12:47:39'),
(41, 'Shirley Conroy', '396.336.3652 x551', 'probel@example.net', 'North Estellaberg', '2018-12-22 12:47:38', '2018-12-22 12:47:39'),
(42, 'Adolfo Casper', '361.831.3036', 'albert.rogahn@example.com', 'Port Caroline', '2018-12-22 12:47:38', '2018-12-22 12:47:39'),
(43, 'Paula Jacobson', '(745) 888-2463 x5218', 'beer.torrance@example.net', 'West Letitiamouth', '2018-12-22 12:47:38', '2018-12-22 12:47:39'),
(44, 'Lawson Mitchell', '+19293494368', 'johnson.pierce@example.org', 'Altenwerthchester', '2018-12-22 12:47:38', '2018-12-22 12:47:39'),
(45, 'Evert Hayes', '1-915-292-5848', 'kuhlman.andre@example.net', 'O\'Connermouth', '2018-12-22 12:47:38', '2018-12-22 12:47:39'),
(46, 'Loy Orn', '(504) 839-8661 x361', 'blick.cheyenne@example.org', 'Cullentown', '2018-12-22 12:47:38', '2018-12-22 12:47:39'),
(47, 'Mrs. Carissa Ward s', '302.799.3973 x214', 'jasen65@example.net', 'West Camrenbury', '2018-12-22 12:47:38', '2018-12-22 13:04:14'),
(48, 'Ms. Jazmin Beier DDS', '+1-520-859-0544', 'holly44@example.net', 'Herminaton', '2018-12-22 12:47:38', '2018-12-22 12:47:39'),
(49, 'Georgette Zemlak', '+1-885-504-9782', 'zbaumbach@example.net', 'Dachton', '2018-12-22 12:47:38', '2018-12-22 12:47:39'),
(50, 'Kristian Gutmann', '617.318.6056 x575', 'schneider.ada@example.com', 'Ziemestad', '2018-12-22 12:47:38', '2018-12-22 12:47:39'),
(51, 'Anjali Macejkovic', '+1-540-709-3777', 'gregoria.dietrich@example.com', 'Adamsmouth', '2018-12-22 12:47:38', '2018-12-22 12:47:39'),
(52, 'Adam Gutmann', '+1 (932) 344-6129', 'lsteuber@example.com', 'Schneidermouth', '2018-12-22 12:47:38', '2018-12-22 12:47:39'),
(53, 'Mr. Morton Mohr', '(409) 508-1666 x3983', 'guido49@example.net', 'Lavinashire', '2018-12-22 12:47:38', '2018-12-22 12:47:39'),
(54, 'Donna Gorczany', '992.260.1160 x294', 'dlesch@example.net', 'Jarenfort', '2018-12-22 12:47:38', '2018-12-22 12:47:39'),
(55, 'Jaleel O\'Connell', '(571) 683-8447', 'jackie57@example.com', 'Bernhardberg', '2018-12-22 12:47:38', '2018-12-22 12:47:39'),
(56, 'Dr. Cydney Abernathy II', '(526) 652-3216 x34612', 'abigail.will@example.net', 'DuBuqueview', '2018-12-22 12:47:38', '2018-12-22 12:47:39'),
(57, 'Osvaldo Kirlin MD', '695.231.5944', 'whowe@example.net', 'Camillamouth', '2018-12-22 12:47:38', '2018-12-22 13:09:34'),
(58, 'Ms. Katarina Mueller', '691.501.0689', 'corwin.casimer@example.net', 'Liamfort', '2018-12-22 12:47:38', '2018-12-22 12:47:40'),
(59, 'Madisen Muller', '+1 (876) 681-2254', 'mitchell.efren@example.com', 'Tillmanside', '2018-12-22 12:47:38', '2018-12-22 12:47:40'),
(60, 'Mikel Boehm', '(302) 844-2813 x900', 'predovic.coby@example.com', 'Schultzmouth', '2018-12-22 12:47:38', '2018-12-22 12:47:40'),
(61, 'Constance Stokes', '(823) 484-7918 x10720', 'goodwin.heber@example.com', 'South Retta', '2018-12-22 12:47:38', '2018-12-22 12:47:40'),
(62, 'Jimmie Howe', '559-686-9627', 'doyle.shaina@example.org', 'South Tarynfort', '2018-12-22 12:47:38', '2018-12-22 12:47:40'),
(63, 'Marjolaine McGlynn', '+1-409-923-6023', 'rbrown@example.com', 'Julienmouth', '2018-12-22 12:47:38', '2018-12-22 12:47:40'),
(64, 'Elian Becker', '569.802.0005 x589', 'octavia61@example.net', 'East Trey', '2018-12-22 12:47:38', '2018-12-22 12:47:40'),
(65, 'Nettie Ferry', '(267) 889-5912 x5655', 'martina.jakubowski@example.org', 'Port Magnolia', '2018-12-22 12:47:38', '2018-12-22 12:47:40'),
(66, 'Jazlyn Cummings sss', '+13879948421', 'hickle.boyd@example.com', 'Mullerburgh', '2018-12-22 12:47:38', '2018-12-22 12:48:58'),
(67, 'Fausto Mills', '675-458-5331', 'retha.gutkowski@example.org', 'West Metaburgh', '2018-12-22 12:47:38', '2018-12-22 12:47:40'),
(68, 'Mr. Wilhelm Metz I', '(719) 814-8344', 'schaefer.dawson@example.org', 'West Eveberg', '2018-12-22 12:47:38', '2018-12-22 12:47:40'),
(69, 'Alivia Blick', '(340) 636-2706 x8803', 'keeling.lester@example.net', 'Schmidtburgh', '2018-12-22 12:47:38', '2018-12-22 12:47:40'),
(70, 'Prof. Adell Breitenberg IV', '646-730-2258', 'kieran18@example.net', 'Lake Antoniettaside', '2018-12-22 12:47:38', '2018-12-22 12:47:40');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_12_22_164429_create_customers_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
