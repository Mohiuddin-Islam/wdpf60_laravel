-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3310
-- Generation Time: Dec 08, 2024 at 07:57 AM
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
-- Database: `shopping_cart`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `author` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `price` decimal(6,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `name`, `author`, `image`, `price`, `created_at`, `updated_at`) VALUES
(1, 'Laravel', 'John Walke', 'https://picsum.photos/id/1/200/300', 700.00, NULL, NULL),
(2, 'Android smartphone with a 6.5', 'Android smartphone with a 6.5-inch display, octa-core processor, 4GB of RAM, 64GB storage (expandable), a triple rear camera setup (13MP main, 2MP depth, 2MP macro), an approximate 8MP front camera.', 'https://picsum.photos/200/300?grayscale', 698.88, NULL, NULL),
(3, 'Digital Camera EOS', 'Canon cameras come in various models with diverse features, but generally, they offer high-quality imaging, a range of resolutions, interchangeable lenses, advanced autofocus systems.', 'https://picsum.photos/200/300/?blur', 983.00, NULL, NULL),
(4, 'LOIS CARON Watch', 'The Lois Caron watch typically features a stainless steel case, quartz movement, analog display, synthetic leather or metal strap, and water resistance at varying depths.', 'https://picsum.photos/200/300?grayscale', 675.00, NULL, NULL),
(5, 'Elegante unisex adult square', 'Sunglasses come in a wide variety of styles, but they generally feature UV-protective lenses housed in plastic or metal frames.', 'https://picsum.photos/200/300?grayscale', 159.99, NULL, NULL),
(6, 'Large Capacity Folding Bag', 'A typical travel bag is designed with durable materials, multiple compartments, sturdy handles, and often includes wheels for easy maneuverability.', 'https://picsum.photos/200/300.jpg', 68.00, NULL, NULL),
(7, 'Lenovo Smartchoice Ideapad 3', 'Lenovo laptops typically offer various configurations with features such as Intel or AMD processors.', 'https://picsum.photos/id/1/200/300', 129.99, NULL, NULL);

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_12_04_041155_create_books_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_number` varchar(191) NOT NULL,
  `total_amount` double(8,2) NOT NULL,
  `payment_method` enum('cod','stripe') NOT NULL DEFAULT 'cod',
  `payment_status` enum('paid','unpaid') NOT NULL DEFAULT 'unpaid',
  `status` enum('pending','process','delivered','cancel') NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `order_number`, `total_amount`, `payment_method`, `payment_status`, `status`, `created_at`, `updated_at`) VALUES
(1, '1733547900', 2382.00, 'stripe', 'unpaid', 'pending', NULL, NULL),
(2, '1733550636', 2382.00, 'stripe', 'unpaid', 'pending', NULL, NULL),
(3, '1733550651', 2382.00, 'stripe', 'unpaid', 'pending', NULL, NULL),
(4, '1733550708', 2382.00, 'stripe', 'unpaid', 'pending', NULL, NULL),
(5, '1733551015', 2382.00, 'stripe', 'unpaid', 'pending', NULL, NULL),
(6, '1733551218', 3031.00, 'stripe', 'unpaid', 'pending', NULL, NULL),
(7, '1733551341', 3031.00, 'stripe', 'unpaid', 'pending', NULL, NULL),
(8, '1733551504', 2166.00, 'stripe', 'unpaid', 'pending', NULL, NULL),
(9, '1733639112', 3058.00, 'stripe', 'unpaid', 'pending', NULL, NULL),
(10, '1733639292', 2382.00, 'stripe', 'unpaid', 'pending', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_number` varchar(191) NOT NULL,
  `book_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_number`, `book_id`, `quantity`, `price`, `created_at`, `updated_at`) VALUES
(1, '1733551015', 1, 1, 700.00, NULL, NULL),
(2, '1733551015', 3, 1, 983.00, NULL, NULL),
(3, '1733551015', 2, 1, 698.88, NULL, NULL),
(4, '1733551218', 3, 2, 983.00, NULL, NULL),
(5, '1733551218', 4, 1, 675.00, NULL, NULL),
(6, '1733551218', 7, 3, 129.99, NULL, NULL),
(7, '1733551341', 3, 2, 983.00, NULL, NULL),
(8, '1733551341', 4, 1, 675.00, NULL, NULL),
(9, '1733551341', 7, 3, 129.99, NULL, NULL),
(10, '1733551504', 1, 1, 700.00, NULL, NULL),
(11, '1733551504', 2, 2, 698.88, NULL, NULL),
(12, '1733551504', 6, 1, 68.00, NULL, NULL),
(13, '1733639112', 1, 2, 700.00, NULL, NULL),
(14, '1733639112', 3, 1, 983.00, NULL, NULL),
(15, '1733639112', 4, 1, 675.00, NULL, NULL),
(16, '1733639292', 1, 1, 700.00, NULL, NULL),
(17, '1733639292', 3, 1, 983.00, NULL, NULL),
(18, '1733639292', 2, 1, 698.88, NULL, NULL);

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
-- Table structure for table `users`
--

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
-- Indexes for table `books`
--
ALTER TABLE `books`
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
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `order_number` (`order_number`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

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
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
