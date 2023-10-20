-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 20, 2023 at 12:09 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `s4b_productos`
--
CREATE DATABASE IF NOT EXISTS `s4b_productos` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `s4b_productos`;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_10_19_052110_create_productos_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
CREATE TABLE `productos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `sku` varchar(255) NOT NULL,
  `precio` double(8,2) UNSIGNED NOT NULL,
  `cantidad` int(10) UNSIGNED NOT NULL,
  `imagen` varchar(255) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `productos`
--

INSERT INTO `productos` (`id`, `nombre`, `descripcion`, `sku`, `precio`, `cantidad`, `imagen`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'cumque', 'Enim corrupti sint vel quis sint id.', 'pro-692que', 233.07, 519, 'https://via.placeholder.com/640x480.png/00cc33?text=products+culpa', '2023-10-20 04:25:24', '2023-10-20 03:01:11', '2023-10-20 04:25:24'),
(2, 'maxime', 'Dolorem sint aliquam eius inventore ut officia.', 'pro-565ime', 32.88, 656, 'https://via.placeholder.com/640x480.png/00cc00?text=products+rerum', '2023-10-20 10:55:14', '2023-10-20 03:01:11', '2023-10-20 10:55:14'),
(3, 'aperiam', 'Exercitationem rerum voluptas et quo totam nulla qui.', 'pro-800iam', 114.38, 42, 'https://via.placeholder.com/640x480.png/00ff11?text=products+et', '2023-10-20 11:59:15', '2023-10-20 03:01:11', '2023-10-20 11:59:15'),
(4, 'roea', 'Autem fuga dolor enim corporis.', 'pro-39que', 519.13, 13, 'https://via.placeholder.com/640x480.png/547060?text=products+roea', NULL, '2023-10-20 03:01:11', '2023-10-20 14:47:17'),
(5, 'neque', 'Earum id nam ut debitis minus.', 'pro-358que', 261.88, 572, 'https://via.placeholder.com/640x480.png/006644?text=products+aperiam', NULL, '2023-10-20 03:01:11', '2023-10-20 03:01:11'),
(6, 'aut', 'Praesentium autem assumenda dolore maiores.', 'pro-724aut', 631.58, 140, 'https://via.placeholder.com/640x480.png/0077cc?text=products+et', NULL, '2023-10-20 03:01:11', '2023-10-20 03:01:11'),
(7, 'amet', 'Dolore sunt non in quia.', 'pro-33met', 221.08, 51, 'https://via.placeholder.com/640x480.png/0088aa?text=products+id', NULL, '2023-10-20 03:01:11', '2023-10-20 03:01:11'),
(8, 'dolor', 'Debitis cumque blanditiis non praesentium quis quae neque.', 'pro-822lor', 234.90, 536, 'https://via.placeholder.com/640x480.png/00aa66?text=products+sequi', NULL, '2023-10-20 03:01:11', '2023-10-20 03:01:11'),
(9, 'inventore', 'Asperiores qui possimus voluptatem quas qui tenetur.', 'pro-95ore', 325.40, 760, 'https://via.placeholder.com/640x480.png/006633?text=products+omnis', NULL, '2023-10-20 03:01:11', '2023-10-20 03:01:11'),
(10, 'soluta', 'Assumenda voluptas id enim magnam ut neque possimus.', 'pro-997uta', 744.01, 147, 'https://via.placeholder.com/640x480.png/00bb44?text=products+veritatis', NULL, '2023-10-20 03:01:11', '2023-10-20 03:01:11'),
(11, 'libero', 'Et odit laboriosam qui culpa laborum.', 'pro-586ero', 94.49, 298, 'https://via.placeholder.com/640x480.png/00ffbb?text=products+rerum', NULL, '2023-10-20 03:01:11', '2023-10-20 03:01:11'),
(12, 'eius', 'Doloribus corrupti est blanditiis repudiandae deleniti.', 'pro-658ius', 133.41, 485, 'https://via.placeholder.com/640x480.png/007700?text=products+et', NULL, '2023-10-20 03:01:11', '2023-10-20 03:01:11'),
(13, 'vero', 'Autem ipsa facere id laboriosam.', 'pro-235ero', 485.47, 311, 'https://via.placeholder.com/640x480.png/00ee22?text=products+quia', NULL, '2023-10-20 03:01:11', '2023-10-20 03:01:11'),
(14, 'nihil', 'Sed illo ut eaque assumenda.', 'pro-929hil', 750.03, 859, 'https://via.placeholder.com/640x480.png/006699?text=products+commodi', NULL, '2023-10-20 03:01:11', '2023-10-20 03:01:11'),
(15, 'deserunt', 'Quo voluptatem incidunt et vel.', 'pro-167unt', 885.61, 600, 'https://via.placeholder.com/640x480.png/00aacc?text=products+labore', NULL, '2023-10-20 03:01:11', '2023-10-20 03:01:11'),
(16, 'organic', 'sgfdgfdg gfd gsf gdsf gdsf gdfs gds', 'pro-483nic', 23.00, 12, 'https://via.placeholder.com/640x480.png/006666?text=products+organic', NULL, '2023-10-20 13:58:34', '2023-10-20 13:58:34');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `productos`
--
ALTER TABLE `productos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
