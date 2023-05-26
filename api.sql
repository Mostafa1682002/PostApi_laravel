-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 27, 2023 at 01:07 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `api`
--

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
(6, '2014_10_12_000000_create_users_table', 1),
(7, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(10, '2023_05_20_171022_create_posts_table', 1);

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
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `body`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Ali', 'SCSK:K;\';\'', '2023-05-25 21:00:00', '2023-05-25 21:00:00', NULL),
(2, 'Post 2', 'Vfffififif', '2023-05-25 21:00:00', '2023-05-25 21:00:00', NULL),
(3, 'Post 1', '13131', '2023-05-25 21:00:00', '2023-05-25 21:00:00', NULL),
(4, 'Prof. Dillon Hammes', 'Miss', '2023-05-25 21:00:00', '2023-05-25 21:00:00', NULL),
(5, 'Dr. Triston Krajcik DDS', 'Dr.', '2023-05-25 21:00:00', '2023-05-25 21:00:00', NULL),
(6, 'Sadye Green', 'Miss', '2023-05-25 21:00:00', '2023-05-25 21:00:00', NULL),
(7, 'Howard Pfeffer', 'Prof.', '2023-05-25 21:00:00', '2023-05-25 21:00:00', NULL),
(8, 'Miss Elinore Gerhold II', 'Dr.', '2023-05-25 21:00:00', '2023-05-25 21:00:00', NULL),
(9, 'Dr. Cory Heathcote', 'Mr.', '2023-05-25 21:00:00', '2023-05-25 21:00:00', NULL),
(10, 'Arvilla Donnelly', 'Mr.', '2023-05-25 21:00:00', '2023-05-25 21:00:00', NULL),
(11, 'Carolanne Langworth', 'Dr.', '2023-05-25 21:00:00', '2023-05-25 21:00:00', NULL),
(12, 'Prof. Tate Dooley', 'Mrs.', '2023-05-25 21:00:00', '2023-05-25 21:00:00', NULL),
(13, 'Prof. Jo Becker', 'Prof.', '2023-05-25 21:00:00', '2023-05-25 21:00:00', NULL),
(14, 'Jessika Heidenreich', 'Labore Eius Est Rerum Laudantium Corrupti Excepturi Excepturi. Ex Corporis Nobis Ut Sit Minus Totam. Ut Perspiciatis Assumenda Aut Quasi. Consequatur Sint Vitae Qui Quis Ab Nisi.', '2023-05-25 21:00:00', '2023-05-25 21:00:00', NULL),
(15, 'Ines Heaney IV', 'Perspiciatis Suscipit Dolores Nemo Corporis. Vero Magni Sed Vero Cumque Aliquid Magnam Laudantium. Fugiat Quia Voluptatem Rerum Quidem Aut.', '2023-05-25 21:00:00', '2023-05-25 21:00:00', NULL),
(16, 'Dr. Mireille Kilback V', 'Tempora Vel Sint Culpa Sint Deserunt Consequatur. Molestias Ullam Omnis Non Laboriosam. Dignissimos Id Provident Officiis Quibusdam Occaecati Qui. Ducimus Facere Voluptates Adipisci Vero.', '2023-05-25 21:00:00', '2023-05-25 21:00:00', NULL),
(17, 'Colten Bernhard', 'Quisquam Provident Itaque Amet Omnis Voluptas Ipsum. Voluptates Quis Dolor Ea Voluptatem Veniam Quae. Numquam Voluptatum Perspiciatis Voluptates Commodi. Ea Ea Quaerat Possimus Rerum Dolor Et Saepe.', '2023-05-25 21:00:00', '2023-05-25 21:00:00', NULL),
(18, 'Dr. Concepcion Hahn PhD', 'Doloribus Eum Fuga Rerum Aliquid Modi Enim. Esse Nesciunt Quibusdam Quidem Dolores Minus Et. Hic Sunt Autem Nemo Voluptatem Aut Nihil Nisi. Eum Possimus Necessitatibus Amet Laboriosam.', '2023-05-25 21:00:00', '2023-05-25 21:00:00', NULL),
(19, 'Tremaine Cronin Jr.', 'Neque Sapiente Quas Ad Est Deserunt Et Delectus. Vero Qui Blanditiis Iusto Aperiam At Qui Sit. Ratione Illum Velit Molestiae Modi Sed Deserunt Qui. Accusantium Tempore Eligendi Et.', '2023-05-25 21:00:00', '2023-05-25 21:00:00', NULL),
(20, 'Pansy Green III', 'Rem Eligendi Amet Quos Nihil Voluptas Cumque. Ipsa Quo Ut Molestiae Magnam. Qui Tempora Hic Id Animi. Dolor Odit Illum Repudiandae Harum Dolores. Itaque Nihil Cumque Ea Quas.', '2023-05-25 21:00:00', '2023-05-25 21:00:00', NULL),
(21, 'Dr. Odessa Marvin IV', 'Iusto Laborum Velit Est Autem Rem. Qui Quo Facere Fuga Et Enim. Quae Soluta Est Quae Dolorum. Maiores Nobis Ex Dignissimos Odit.', '2023-05-25 21:00:00', '2023-05-25 21:00:00', NULL),
(22, 'Miss Alysa West', 'Impedit Ut Et Perspiciatis Unde. Fuga Quis Consequatur Deserunt Et Non Consectetur. Non Omnis Quidem Sed. Sint Consectetur Illum Consequuntur Aut Id Rerum.', '2023-05-25 21:00:00', '2023-05-25 21:00:00', NULL),
(23, 'Shannon Rolfson', 'Omnis Sunt Facere Distinctio Hic. Sed Explicabo Et Incidunt Incidunt Expedita. Velit Perferendis Quaerat Velit Quia Sed Laboriosam Cumque.', '2023-05-25 21:00:00', '2023-05-25 21:00:00', NULL);

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
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'test3', 'test3@gmail.com', NULL, '$2y$10$XRbewBVsxV3qKe0GkDTBZOxV.hoj.ZLkXridxMwWcZrfnBpPvDcY.', NULL, '2023-05-26 18:50:53', '2023-05-26 18:50:53');

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
-- Indexes for table `posts`
--
ALTER TABLE `posts`
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
