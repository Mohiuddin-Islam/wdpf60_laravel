-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 15, 2024 at 04:24 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `realrentcar`
--

-- --------------------------------------------------------

--
-- Table structure for table `cars`
--

CREATE TABLE `cars` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `brand` varchar(255) NOT NULL,
  `model` varchar(255) NOT NULL,
  `engine` varchar(255) NOT NULL,
  `price_per_day` decimal(8,2) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `quantity` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'available',
  `reduce` int(11) NOT NULL,
  `stars` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cars`
--

INSERT INTO `cars` (`id`, `brand`, `model`, `engine`, `price_per_day`, `image`, `quantity`, `status`, `reduce`, `stars`, `created_at`, `updated_at`) VALUES
(4, 'Toyota', 'Camry', '2.5L', 5000.00, '/images/cars/Toyota_Camry.jpg', '1', 'Available', 30, 5, NULL, '2024-11-15 08:51:10'),
(5, 'Honda', 'Civic', '1.8L', 4500.00, '/images/cars/Honda_Civic.jpg', '1', 'Reserved', 10, 5, NULL, '2024-11-13 12:48:19'),
(6, 'Ford', 'Mustang', '5.0L V8', 7000.00, '/images/cars/Ford_Mustang.jpg', '1', 'Available', 0, 5, NULL, NULL),
(7, 'BMW', 'X5', '3.0L', 7500.00, '/images/cars/BMW_X5.jpg', '1', 'Reserved', 20, 5, NULL, '2024-11-14 08:16:10'),
(8, 'Mercedes-Benz', 'E-Class', '2.0L', 6500.00, '/images/cars/Mercedes-Benz_E-Class.jpg', '1', 'Reserved', 10, 5, NULL, '2024-11-14 06:36:30'),
(9, 'Chevrolet', 'Malibu', '1.5L', 5500.00, '/images/cars/Chevrolet_Malibu.jpg', '1', 'Available', 50, 5, NULL, NULL),
(10, 'Audi', 'A4', '2.0L', 5500.00, '/images/cars/Audi_A4.jpg', '1', 'Reserved', 40, 5, NULL, '2024-11-14 06:26:57'),
(11, 'Nissan', 'Altima', '2.5L', 4500.00, '/images/cars/Nissan_Altima.jpg', '1', 'Available', 60, 5, NULL, NULL),
(12, 'Hyundai', 'Sonata', '2.5L', 6500.00, '/images/cars/Hyundai_Sonata.jpg', '1', 'Available', 30, 5, NULL, NULL),
(13, 'Kia', 'Optima', '2.0L', 4500.00, '/images/cars/Kia_Optima.jpg', '1', 'Available', 20, 5, NULL, NULL),
(14, 'Volkswagen', 'Golf', '1.4L', 6500.00, '/images/cars/Volkswagen_Golf.jpg', '1', 'Available', 40, 5, NULL, NULL),
(15, 'Subaru', 'Impreza', '2.0L', 3500.00, '/images/cars/Subaru_Impreza.jpg', '1', 'Available', 20, 5, NULL, NULL),
(16, 'Ford', 'Focus', '1.6L', 4500.00, '/images/cars/Ford_Focus.jpg', '1', 'Available', 30, 5, NULL, NULL),
(17, 'Tesla', 'Model 3', 'Electric', 7500.00, '/images/cars/Tesla_Model_3.jpg', '1', 'Available', 20, 5, NULL, NULL),
(18, 'Chevrolet', 'Camaro', '6.2L V8', 5000.00, '/images/cars/Chevrolet_Camaro.jpg', '1', 'Available', 20, 5, NULL, NULL),
(19, 'Jaguar', ' F-Type', '3.0L V6', 2500.00, '/images/cars/Jaguar_F-Type.jpg', '1', 'Available', 35, 5, NULL, NULL),
(20, 'Lexus', 'RX 350', '3.5L V6', 6000.00, '/images/cars/Lexus_RX_350.jpg', '1', 'Available', 40, 5, NULL, NULL),
(21, 'Volvo', 'XC60', '2.0L', 7000.00, '/images/cars/Volvo_XC60.jpg', '1', 'Available', 20, 5, NULL, NULL),
(22, 'Porsche', '911 Carrera', '3.0L Flat-6', 5000.00, '/images/cars/Porsche_911_Carrera.jpg', '1', 'Available', 40, 5, NULL, NULL),
(23, 'Mitsubishi', 'Outlander', '2.4L', 6500.00, '/images/cars/Mitsubishi_Outlander.jpg', '1', 'Available', 30, 5, NULL, NULL),
(24, 'Land Rover', 'Range Rover Sport', '3.0L V6', 3500.00, '/images/cars/Land_Rover_Range_Rover_Sport.jpg', '1', 'Available', 20, 5, NULL, NULL),
(25, 'GMC', 'Sierra_1500', '5.3L V8', 4500.00, '/images/cars/GMC_Sierra_1500.jpg', '1', 'Available', 35, 4, NULL, NULL),
(26, 'Fiat', '500', '1.4L', 4000.00, '/images/cars/Fiat_500.jpg', '1', 'Available', 40, 5, NULL, NULL),
(27, 'Mini', 'Cooper', '1.5L', 5500.00, '/images/cars/Mini_Cooper.jpg', '1', 'Available', 30, 5, NULL, NULL),
(28, 'Audi', 'Q5', '2.0L', 8000.00, '/images/cars/Audi_Q5.jpg', '1', 'Available', 40, 5, NULL, NULL),
(34, 'Tata', 'SUV', '1800hz', 5000.00, '/images/cars/Tata-SUV-1800hz-JlkZsv158I.jpg', '10', 'available', 30, 4, '2024-11-13 12:39:55', '2024-11-13 12:39:55');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

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
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2023_06_07_123713_create_cars_table', 1),
(7, '2023_06_07_123802_create_reservations_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reservations`
--

CREATE TABLE `reservations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `car_id` bigint(20) UNSIGNED NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `days` int(11) NOT NULL,
  `price_per_day` decimal(10,2) NOT NULL,
  `total_price` decimal(8,2) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'active',
  `payment_method` varchar(255) NOT NULL,
  `payment_status` varchar(255) NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reservations`
--

INSERT INTO `reservations` (`id`, `user_id`, `car_id`, `start_date`, `end_date`, `days`, `price_per_day`, `total_price`, `status`, `payment_method`, `payment_status`, `created_at`, `updated_at`) VALUES
(3, 1, 5, '2024-11-15', '2024-11-17', 2, 4500.00, 9000.00, 'Active', 'At store', 'Paid', '2024-11-13 12:48:19', '2024-11-13 12:49:47'),
(4, 1, 4, '2024-11-15', '2024-11-18', 3, 5000.00, 15000.00, 'Canceled', 'At store', 'Canceled', '2024-11-13 13:56:27', '2024-11-15 08:51:16'),
(5, 6, 10, '2024-11-15', '2024-11-17', 2, 5500.00, 11000.00, 'Pending', 'At store', 'Pending', '2024-11-14 06:26:57', '2024-11-14 06:26:57'),
(6, 7, 8, '2024-11-20', '2024-11-22', 2, 6500.00, 13000.00, 'Active', 'At store', 'Paid', '2024-11-14 06:36:30', '2024-11-14 06:38:18'),
(7, 6, 7, '2024-11-18', '2024-11-20', 2, 7500.00, 15000.00, 'Active', 'At store', 'Paid', '2024-11-14 08:16:10', '2024-11-14 08:17:45');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL DEFAULT 'client',
  `avatar` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Mohiuddin', 'admin@gmail.com', NULL, '$2y$10$NYF0fJagiOHjcVpafS1mbeFxvPU5qykOsJXM78cwnr4Sh0UGQuyUe', 'client', '/images/avatars/Mohiuddin-3I8nbQBrjg.png', NULL, '2024-11-13 08:47:34', '2024-11-13 08:47:34'),
(2, 'Test Admin', 'test_admin@email.com', NULL, '$2y$10$31rHBar5zvajJN1b4XJpJek3NN852t3dml46meyjR4jbKE40OTMR.', 'admin', '/images/avatars/avatar_2.jpg', NULL, '2024-11-13 11:50:02', '2024-11-13 11:50:02'),
(3, 'Test User', 'test_user@email.com', NULL, '$2y$10$wO0ElcClvFf6hv2m2JVbLOFKdERHSHl2uXsCV/Pm05nNPzshwNZI.', 'client', '/images/avatars/avatar_6.jpg', NULL, '2024-11-13 11:50:02', '2024-11-13 11:50:02'),
(5, 'Mohiuddin', 'mohiuddincr7@gmail.com', NULL, '$2y$10$6YqyDe.yP281EHl0pwjVi.vEqHWlVNnm25jVdiFk7VK.B8lgW7De6', 'admin', '/images/avatars/Mohiuddin-A7wiE5au76.png', NULL, '2024-11-13 14:01:20', '2024-11-13 14:01:23'),
(6, 'Abdullah', 'asm@gmail.com', NULL, '$2y$10$2k1Qad/.O5jShZLv9.Xhuufus/7TEdyyQjIZkxZH/Z1kZSSuwIMCa', 'client', '/images/avatars/avatar_4.jpg', NULL, '2024-11-14 06:26:20', '2024-11-14 06:26:20'),
(7, 'Rakib', 'rakib@gmail.com', NULL, '$2y$10$E4Me7XVCvq7KX20QqqPkmeTsx5uBLIHHC3qI/UOwdRxa7BiU4n.Eq', 'client', '/images/avatars/Rakib-g6g225tcm3.jpg', NULL, '2024-11-14 06:34:33', '2024-11-14 06:34:34');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `reservations`
--
ALTER TABLE `reservations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reservations_user_id_foreign` (`user_id`),
  ADD KEY `reservations_car_id_foreign` (`car_id`);

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
-- AUTO_INCREMENT for table `cars`
--
ALTER TABLE `cars`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reservations`
--
ALTER TABLE `reservations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `reservations`
--
ALTER TABLE `reservations`
  ADD CONSTRAINT `reservations_car_id_foreign` FOREIGN KEY (`car_id`) REFERENCES `cars` (`id`),
  ADD CONSTRAINT `reservations_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
