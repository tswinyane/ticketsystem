-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 31, 2017 at 10:06 PM
-- Server version: 5.7.19-0ubuntu0.16.04.1
-- PHP Version: 7.0.23-1+ubuntu16.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ticketsystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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
('2017_10_25_083305_create_tickets_table', 1),
('2017_10_25_142142_create_comments_table', 2),
('2017_10_31_154219_create_tickets_table', 3),
('2017_10_31_154823_create_tickets_table', 4),
('2017_10_31_172049_create_tickets_table', 5),
('2017_10_31_172807_create_tickets_table', 6),
('2017_10_31_173010_create_tickets_table', 7);

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
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `id` int(10) UNSIGNED NOT NULL,
  `uname` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `category` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tickets`
--

INSERT INTO `tickets` (`id`, `uname`, `email`, `title`, `category`, `content`, `slug`, `status`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Alfred Mahlangu', 'tswinyane@gmail.com', 'Ticket 1', 'Sales', 'This is my first log ticket.', '59f8b37c8b65b', 0, 0, '2017-10-31 15:31:40', '2017-10-31 16:10:58'),
(2, 'Ticket 2', 'alfredm@africanlii.org', 'Ticket 2', 'IT', 'Telephone are not working at the moment', '59f8b5f3011c2', 1, 0, '2017-10-31 15:42:11', '2017-10-31 15:42:11'),
(3, 'Bruce Mahlangu', 'tswinyane01@gmail.com', 'Ticket 3', 'IT', 'I would like to get the accounts reports of month June', '59f8b63d2ad9c', 0, 0, '2017-10-31 15:43:25', '2017-10-31 16:11:28'),
(4, 'Alfred Mahlangu', 'alfredm@africanlii.org', 'This is my first ticket', 'Sales', 'Need to see logs for June sales', '59f8be2306caf', 1, 0, '2017-10-31 16:17:07', '2017-10-31 16:17:07'),
(5, 'Alfred Mahlangu', 'alfredm@africanlii.org', 'This is my first ticket', 'Sales', 'Need to see logs for June sales', '59f8becfbb050', 1, 0, '2017-10-31 16:19:59', '2017-10-31 16:19:59'),
(6, 'Alfred Mahlangu', 'alfredm@africanlii.org', 'This is my first ticket', 'Sales', 'Need to see logs for June sales', '59f8bedfc0a9e', 1, 0, '2017-10-31 16:20:15', '2017-10-31 16:20:15'),
(7, 'Alfred Mahlangu', 'alfredm@africanlii.org', 'This is my first ticket', 'Sales', 'Need to see logs for June sales', '59f8bef5ecec8', 1, 0, '2017-10-31 16:20:37', '2017-10-31 16:20:37'),
(8, 'Alfred Mahlangu', 'alfredm@africanlii.org', 'This is my first ticket', 'Sales', 'Need to see logs for June sales', '59f8bf109d37d', 1, 0, '2017-10-31 16:21:04', '2017-10-31 16:21:04'),
(9, 'Alfred Mahlangu', 'alfredm@africanlii.org', 'This is my first ticket', 'Sales', 'Need to see logs for June sales', '59f8bf4f2199c', 1, 0, '2017-10-31 16:22:07', '2017-10-31 16:22:07'),
(10, 'Alfred Mahlangu', 'alfredm@africanlii.org', 'This is my first ticket', 'Sales', 'Need to see logs for June sales', '59f8bf7755208', 1, 0, '2017-10-31 16:22:47', '2017-10-31 16:22:47'),
(11, 'Alfred Mahlangu', 'alfredm@africanlii.org', 'This is my first ticket', 'Sales', 'Need to see logs for June sales', '59f8bfece044d', 1, 0, '2017-10-31 16:24:44', '2017-10-31 16:24:44'),
(12, 'Alfred Mahlangu', 'alfredm@africanlii.org', 'This is my first ticket', 'Sales', 'Need to see logs for June sales', '59f8c00b34194', 1, 0, '2017-10-31 16:25:15', '2017-10-31 16:25:15'),
(13, 'Alfred Mahlangu', 'alfredm@africanlii.org', 'This is my first ticket', 'Sales', 'Need to see logs for June sales', '59f8c02fccca9', 1, 0, '2017-10-31 16:25:51', '2017-10-31 16:25:51'),
(14, 'Alfred Mahlangu', 'alfredm@africanlii.org', 'This is my first ticket', 'Sales', 'Need to see logs for June sales', '59f8c069c429f', 1, 0, '2017-10-31 16:26:49', '2017-10-31 16:26:49'),
(15, 'Alfred Mahlangu', 'alfredm@africanlii.org', 'This is my first ticket', 'Sales', 'Need to see logs for June sales', '59f8c0ac295d5', 1, 0, '2017-10-31 16:27:56', '2017-10-31 16:27:56'),
(16, 'Alfred Mahlangu', 'alfredm@africanlii.org', 'This is my first ticket', 'Sales', 'Need to see logs for June sales', '59f8c0bf2304a', 1, 0, '2017-10-31 16:28:15', '2017-10-31 16:28:15'),
(17, 'Alfred Mahlangu', 'alfredm@africanlii.org', 'This is my first ticket', 'Sales', 'Need to see logs for June sales', '59f8c0e107bde', 1, 0, '2017-10-31 16:28:49', '2017-10-31 16:28:49'),
(18, 'Alfred Mahlangu', 'alfredm@africanlii.org', 'This is my first ticket', 'Sales', 'Need to see logs for June sales', '59f8c1004328b', 1, 0, '2017-10-31 16:29:20', '2017-10-31 16:29:20'),
(19, 'Alfred Mahlangu', 'alfredm@africanlii.org', 'This is my first ticket', 'Sales', 'Need to see logs for June sales', '59f8c111397f0', 1, 0, '2017-10-31 16:29:37', '2017-10-31 16:29:37'),
(20, 'Alfred Mahlangu', 'alfredm@africanlii.org', 'This is my first ticket', 'Sales', 'Need to see logs for June sales', '59f8c12f63722', 1, 0, '2017-10-31 16:30:07', '2017-10-31 16:30:07'),
(21, 'Alfred Mahlangu', 'alfredm@africanlii.org', 'This is my first ticket', 'Sales', 'Need to see logs for June sales', '59f8c19562bb2', 1, 0, '2017-10-31 16:31:49', '2017-10-31 16:31:49'),
(22, 'Alfred Mahlangu', 'alfredm@africanlii.org', 'This is my first ticket', 'Sales', 'Need to see logs for June sales', '59f8c1aa64c2a', 1, 0, '2017-10-31 16:32:10', '2017-10-31 16:32:10'),
(23, 'Alfred Mahlangu', 'alfredm@africanlii.org', 'This is my first ticket', 'Sales', 'Need to see logs for June sales', '59f8c1dd9f64d', 1, 0, '2017-10-31 16:33:01', '2017-10-31 16:33:01'),
(24, 'Alfred Mahlangu', 'alfredm@africanlii.org', 'This is my first ticket', 'Sales', 'Need to see logs for June sales', '59f8c45c74c79', 1, 0, '2017-10-31 16:43:40', '2017-10-31 16:43:40'),
(25, 'Alfred Mahlangu', 'alfredm@africanlii.org', 'This is my first ticket', 'Sales', 'Need to see logs for June sales', '59f8c51ad5971', 1, 0, '2017-10-31 16:46:50', '2017-10-31 16:46:50'),
(26, 'Alfred Mahlangu', 'alfredm@africanlii.org', 'This is my first ticket', 'Sales', 'Need to see logs for June sales', '59f8c52740036', 1, 0, '2017-10-31 16:47:03', '2017-10-31 16:47:03'),
(27, 'Alfred Mahlangu', 'alfredm@africanlii.org', 'This is my first ticket', 'Sales', 'Need to see logs for June sales', '59f8c600f17d7', 1, 0, '2017-10-31 16:50:40', '2017-10-31 16:50:40'),
(28, 'Alfred Mahlangu', 'alfredm@africanlii.org', 'This is my first ticket', 'Sales', 'Need to see logs for June sales', '59f8c6833a150', 1, 0, '2017-10-31 16:52:51', '2017-10-31 16:52:51'),
(29, 'Alfred', 'alfredm@africanlii.org', 'Ticket 3', 'Sales', 'Testing loggin', '59f8c6b442e73', 1, 0, '2017-10-31 16:53:40', '2017-10-31 16:53:40'),
(30, 'Bruce Mahlangu', 'tswinyane@gmail.com', 'Ticket no 10', 'IT', 'Sales reports for the previous year', '59f8cc1440301', 1, 0, '2017-10-31 17:16:36', '2017-10-31 17:16:36'),
(31, 'Bruce Mahlangu', 'tswinyane@gmail.com', 'Ticket no 10', 'IT', 'Sales reports for the previous year', '59f8cca69bb20', 1, 0, '2017-10-31 17:19:02', '2017-10-31 17:19:02'),
(32, 'Test', 'tswinyane@gmail.com', 'Tets 1', 'Sales', 'dsdssdfdfdfd', '59f8ccf0aae2f', 1, 0, '2017-10-31 17:20:16', '2017-10-31 17:20:16'),
(33, 'Alfred Tswinyane', 'tswinyane@gmail.com', 'Ticket 12', 'Sales', 'Let me view the reports for June', '59f8cd73e4010', 1, 0, '2017-10-31 17:22:27', '2017-10-31 17:22:27'),
(34, 'Alfred Tswinyane', 'tswinyane@gmail.com', 'Ticket 12', 'Sales', 'Let me view the reports for June', '59f8cd9da062f', 1, 0, '2017-10-31 17:23:09', '2017-10-31 17:23:09');

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
(2, 'alfred ', 'tswinyane@gmail.com', '$2y$10$hteI0NhkcGvb.4R3IBUxNOFBlnZywZ8gwVcT7Ysf5UqeQH5oygHsS', 'yQ66TepGnJvXBmiVp95AB6YMToyY4PdoQk2zQfO6BTModrkwDbZm5jhEO4aF', '2017-10-31 12:52:36', '2017-10-31 17:25:26');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
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
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
