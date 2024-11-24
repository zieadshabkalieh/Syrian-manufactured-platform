-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 04, 2024 at 05:14 PM
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
-- Database: `manufacturing_platform`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'yaman', NULL, NULL, NULL),
(2, 'قمصان', NULL, NULL, NULL),
(3, 'ملابس', NULL, NULL, NULL),
(4, 'assd', NULL, NULL, NULL),
(5, 'الإلكترونيات', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `importers`
--

CREATE TABLE `importers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `location` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `importers`
--

INSERT INTO `importers` (`id`, `user_id`, `deleted_at`, `created_at`, `updated_at`, `location`) VALUES
(1, 1, NULL, '2024-09-01 21:00:00', NULL, 'حلب');

-- --------------------------------------------------------

--
-- Table structure for table `manufacturers`
--

CREATE TABLE `manufacturers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `location` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `manufacturers`
--

INSERT INTO `manufacturers` (`id`, `user_id`, `company_name`, `description`, `location`, `image`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'yaman', 'استمتعوا بتجربة سفر خاصة في الدرجة الأولى. اخفضوا الإنارة خلف الأبواب المغلقة لأجنحتكم الخاصة، وانغمسوا في ما يحلو لكم من الترفيه والوجبات المعدة بشكل خاص.', 'حلب', 'assets/img/1725229789.jpeg', NULL, '2024-08-31 21:00:00', '2024-08-31 21:00:00'),
(2, 2, 'dsada', 'احصلوا على تقارير الأحوال الجوية والأخبار والرياضة وبيانات الرحلة الأخرى من شاشتكم. ويمكنكم الاستماع إلى الموسيقى أو الراديو أو الملفات الصوتية بدون انقطاع أثناء قيامكم بالاستكشاف.', 'حلب', 'assets/img/1725230382.png', NULL, '2024-08-31 21:00:00', '2024-08-31 21:00:00'),
(3, 1, 'dasasd', 'احصلوا على تقارير الأحوال الجوية والأخبار والرياضة وبيانات الرحلة الأخرى من شاشتكم. ويمكنكم الاستماع إلى الموسيقى أو الراديو أو الملفات الصوتية بدون انقطاع أثناء قيامكم بالاستكشاف.', 'حلب', 'assets/img/1725230668.png', NULL, '2024-08-31 21:00:00', NULL);

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
(1, '2024_08_14_235609_create_users_table', 1),
(3, '2024_08_18_203432_create__categories_table', 3),
(6, '2024_08_19_112053_create_promotions_table', 6),
(7, '2024_08_19_112546_create_promotions_table', 7),
(19, '2024_08_20_233621_create_products_table', 9),
(23, '2024_08_18_204309_create_news_table', 10),
(25, '2024_08_21_001508_create_products_table', 10),
(34, '2024_08_19_114026_create_offers_table', 11),
(59, '2024_08_17_181842_create_users_table', 12),
(60, '2024_08_18_203931_create_categories_table', 12),
(61, '2024_08_21_001854_create_importers_table', 12),
(62, '2024_08_21_003757_create_manufacturers_table', 12),
(63, '2024_08_21_004222_create_products_table', 12),
(64, '2024_08_25_111237_create_orders_table', 12),
(65, '2024_08_25_150653_create_news_table', 12),
(66, '2024_08_25_180630_create_order_details_table', 12),
(67, '2024_08_31_182311_create_offers_table', 12),
(68, '2024_09_02_192528_create_reviews_table', 13);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `offers`
--

CREATE TABLE `offers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `discount_percentage` double(8,2) NOT NULL,
  `discount_amount` decimal(8,2) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `status` varchar(255) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `offers`
--

INSERT INTO `offers` (`id`, `product_id`, `discount_percentage`, `discount_amount`, `start_date`, `end_date`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 2, 0.50, 15000.00, '2024-09-03', '2024-09-04', ' عرض خاض', NULL, '2024-08-31 21:00:00', NULL),
(2, 1, 0.50, 1000.00, '2024-09-04', '2024-09-07', ' عرض خاض', NULL, '2024-09-02 21:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `total_amount` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `total_amount`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 330000, 'غير مدفوع', NULL, '2024-09-01 21:00:00', NULL),
(2, 1, 30000, 'غير مدفوع', NULL, '2024-09-01 21:00:00', NULL),
(3, 3, 75000, 'غير مدفوع', NULL, '2024-09-03 21:00:00', NULL),
(4, 3, 3000, 'غير مدفوع', NULL, '2024-09-03 21:00:00', NULL),
(5, 3, 3000, 'غير مدفوع', NULL, '2024-09-03 21:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `quantity`, `price`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 22, 330000, NULL, '2024-09-01 21:00:00', NULL),
(2, 2, 2, 2, 30000, NULL, '2024-09-01 21:00:00', NULL),
(3, 3, 2, 4, 60000, NULL, '2024-09-03 21:00:00', NULL),
(4, 3, 2, 1, 15000, NULL, '2024-09-03 21:00:00', NULL),
(5, 4, 1, 3, 3000, NULL, '2024-09-03 21:00:00', NULL),
(6, 5, 1, 1, 1000, NULL, '2024-09-03 21:00:00', NULL),
(7, 5, 1, 2, 2000, NULL, '2024-09-03 21:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Manufacturer_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `discount_status` varchar(255) NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `Manufacturer_id`, `name`, `description`, `price`, `image_url`, `discount_status`, `category_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'ASAN', 'تي شيرت قطن عالي الجودة مصمم ليوفر الراحة والأناقة في آن واحد. يأتي بتصميم عصري يناسب جميع الأذواق، ويتميز بقصة مريحة تسمح بحرية الحركة. يمكن ارتداؤه في الأوقات اليومية أو في المناسبات غير الرسمية.', 1000, 'assets/img/1725231944.png', ' يوجد خصم', 1, NULL, '2024-08-31 21:00:00', NULL),
(2, 1, 'yaman', 'adsadas', 15000, 'assets/img/1725232052.jpeg', ' يوجد خصم', 2, NULL, '2024-08-31 21:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `Evaluation` int(11) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `product_id`, `user_id`, `Evaluation`, `comment`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 2, 3, 2, 'لا يستحق الشراء، جودة ضعيفة', NULL, '2024-09-03 21:00:00', '2024-09-04 07:09:41'),
(2, 2, 3, 3, 'منتج رائع جداً، أنصح به!', NULL, '2024-09-03 21:00:00', '2024-09-04 07:13:13'),
(3, 2, 3, 2, 'منتج رائع جداً، أنصح به!', NULL, '2024-09-03 21:00:00', NULL),
(4, 2, 3, 5, 'منتج رائع جداً، أنصح به!', NULL, '2024-09-03 21:00:00', NULL),
(5, 2, 3, 4, 'منتج رائع جداً، أنصح به!', NULL, '2024-09-03 21:00:00', NULL),
(6, 1, 3, 3, 'yazan@gmail.com', NULL, '2024-09-03 21:00:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `role`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'yaman', 'yamankerdia@gmail.com', '$2y$10$YXOEFMU8gR3Jk5r5N1RpR.86k34u7kP9AVxIBDNRR4wWrCE0h5wMm', 'manufacturer', NULL, NULL, NULL),
(2, 'assd', 'Ghada@gmail.com', '$2y$10$Uey0Q0Km4c6RWkOfucyltOg4/Epv96u3C9MRZGlyRBCEOJEzsmbhm', 'manufacturer', NULL, NULL, NULL),
(3, 'ASAN', 'yazan@gmail.com', '$2y$10$nilKvk8VZWx4okgpuKw2quFT2E6qbLUHjPfgQICZWMLVakp235wiq', 'user', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `importers`
--
ALTER TABLE `importers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `importers_user_id_foreign` (`user_id`);

--
-- Indexes for table `manufacturers`
--
ALTER TABLE `manufacturers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `manufacturers_user_id_foreign` (`user_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offers`
--
ALTER TABLE `offers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `offers_product_id_foreign` (`product_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_details_order_id_foreign` (`order_id`),
  ADD KEY `order_details_product_id_foreign` (`product_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_manufacturer_id_foreign` (`Manufacturer_id`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_product_id_foreign` (`product_id`),
  ADD KEY `reviews_user_id_foreign` (`user_id`);

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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `importers`
--
ALTER TABLE `importers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `manufacturers`
--
ALTER TABLE `manufacturers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `offers`
--
ALTER TABLE `offers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `importers`
--
ALTER TABLE `importers`
  ADD CONSTRAINT `importers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `manufacturers`
--
ALTER TABLE `manufacturers`
  ADD CONSTRAINT `manufacturers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `offers`
--
ALTER TABLE `offers`
  ADD CONSTRAINT `offers_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_details_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_manufacturer_id_foreign` FOREIGN KEY (`Manufacturer_id`) REFERENCES `manufacturers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
