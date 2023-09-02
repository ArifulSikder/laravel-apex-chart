-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 02, 2023 at 06:59 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chart`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_09_02_061058_create_orders_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `f_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `l_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `street` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `town` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Pending',
  `note` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_price` double(8,2) DEFAULT NULL,
  `applied_coupon` double(8,2) DEFAULT '0.00',
  `agree` tinyint(1) DEFAULT '0' COMMENT '0=not agreed, 1=agreed',
  `payment_method` int DEFAULT NULL COMMENT '1=stripe, 2=paypal, 3=payoneer',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `f_name`, `l_name`, `company_name`, `city`, `address`, `street`, `town`, `country`, `code`, `post_code`, `phone`, `email`, `status`, `note`, `total_price`, `applied_coupon`, `agree`, `payment_method`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, NULL, 'P2w3yIZgcw', 'sIaBrYjeVF', 'AaAcbQYg90', NULL, 'Gquttr3VbX', 'AUG61H8Sas', 'etisD4Vgwu', 'WZCAqBZ0pw', 'rT', '1', '3', 'o0lkzmOWEc@gmail.com', 'Pending', 'Cey18eAA6o', 222.00, 0.00, 1, 1, NULL, '2023-02-10 21:29:00', '2023-09-02 00:29:47'),
(2, NULL, 'A39m67uWoT', 'KiLyqx7inr', 'XfwROVS8Ll', NULL, '6DoacHyfDK', 'W8DLjKJQvt', 'JLwR2qHo2w', 'K91jARQDIa', 'PD', '2', '9', 'd3kYMpnvMD@gmail.com', 'Pending', 'ZaENNbKJS7', 222.00, 0.00, 1, 1, NULL, '2023-02-14 18:37:50', '2023-09-02 00:29:47'),
(3, NULL, 'AttuBk73sh', 'TH0NtJ7leA', 'kcsE8PG04S', NULL, 'aj8TClXBRG', 'Dz0RDnho2V', 'LVP678GZks', '5eAY7rExkJ', '13', '4', '10', 'ObASzwSCjU@gmail.com', 'Pending', '1euGQZAFSH', 222.00, 0.00, 1, 1, NULL, '2023-01-01 09:48:20', '2023-09-02 00:29:47'),
(4, NULL, 'JOJ4fTBtqC', 'BSz4mmuQfO', 'JeUSmpV0sz', NULL, 'qMIDK1ADql', '86h1OAgxSd', 'tnWmbKVfP1', 'q56ckjfJxL', '5N', '4', '3', 'QsIk9REGRa@gmail.com', 'Pending', '3jzxVyLUul', 222.00, 0.00, 1, 1, NULL, '2023-06-04 22:06:36', '2023-09-02 00:29:47'),
(5, NULL, '1P1f6wH51I', 'xotOQFwfJH', 'RypEs1ItLV', NULL, 'hmT9aLcFhp', 'LV3a7HoKxc', 'HOdNwmQVsj', '4Wz4EI6Nr3', '8b', '2', '1', 'arcvIdV4Og@gmail.com', 'Pending', 'tWgt24DHKa', 222.00, 0.00, 1, 1, NULL, '2023-11-04 05:26:53', '2023-09-02 00:29:47'),
(6, NULL, 'YM0YCIjJCx', 'agzolMntrv', 'skkisWkOF0', NULL, 'pPX5wkB3ot', 'YGMpEJBZmH', 'ViuLfI4DRd', 'mJ6AyVLLlR', 'Hx', '2', '2', 'IVwhnDubCQ@gmail.com', 'Pending', 'dbsy5CgaSa', 222.00, 0.00, 1, 1, NULL, '2023-03-23 19:15:22', '2023-09-02 00:29:47'),
(7, NULL, 'rg8Snf8PjZ', 'ReoQL9QZaP', 'iiwzzeRBH0', NULL, '80w1bichWS', 'BTUSVV1tLa', 'cfIOHCZQmI', '6NKnstJKgc', 'T6', '1', '4', 'P7vwYw4WG8@gmail.com', 'Pending', 'A6aClXFmeu', 222.00, 0.00, 1, 1, NULL, '2023-10-01 12:04:04', '2023-09-02 00:29:47'),
(8, NULL, 'e0j36kOy5z', 'K7wFKckWCw', 'zW27loPVp8', NULL, 'NzbJFhIMZ3', 'scYkAhFMhi', 'Xdsq7ZVSR9', '2qKqvQMszF', 'TD', '4', '3', 'PxcxhCcpoq@gmail.com', 'Pending', '09lxdsCBJe', 222.00, 0.00, 1, 1, NULL, '2023-06-30 17:34:40', '2023-09-02 00:29:47'),
(9, NULL, 'JuMndwwuXz', 'tvdYxJyTCy', 'piqxH5f0mz', NULL, 'VZcgvkh7vm', 'w8wGBG1PNk', '1CZbDiIf1o', 'g6ceMqYwUR', 'Oc', '2', '8', 'ki6XaiQekr@gmail.com', 'Pending', 'NLYnErFBHW', 222.00, 0.00, 1, 1, NULL, '2023-11-21 22:56:07', '2023-09-02 00:29:47'),
(10, NULL, 'PWO8ZieAW5', 'l3JOLIt2Gd', '7GzD3AHdWE', NULL, 'feOWnSZX9X', 'PJttqtwrfH', '8pIEesQ7dy', '04goC8qsGV', 'CF', '4', '5', 'ugF640NwHs@gmail.com', 'Pending', 'GpMtadZxF4', 222.00, 0.00, 1, 1, NULL, '2023-06-01 04:22:50', '2023-09-02 00:29:47'),
(11, NULL, 'qcCMG68caN', 'mZFjI4egxX', '9xbDZs3Q6K', NULL, 'qEv0hTDepi', 'Hvae0MzeVa', 't86uvL6ROa', 'nLmkIhW4iX', 'Tb', '2', '1', 'UuagvR2UtV@gmail.com', 'Pending', 'nUo9MY4DV0', 222.00, 0.00, 1, 1, NULL, '2023-05-01 08:45:49', '2023-09-02 00:36:19'),
(12, NULL, '647n3ni20p', 'fLbn04ixJw', 'h5f2sv3u1Y', NULL, 'bNgPVtgn6T', 'CmP5PEgSRr', 'A0OyNC75eU', 'Btle18FoyS', 'l1', '3', '5', 'gjy8kjCpkG@gmail.com', 'Pending', 'A4NiB0tWRU', 222.00, 0.00, 1, 1, NULL, '2023-10-07 22:48:13', '2023-09-02 00:36:19'),
(13, NULL, 'hFEXbImcb0', 'KUPPtNvUGq', 'gIfBwFKrS0', NULL, 'HNuUTjjESK', 'SqUE0ojIbW', 'o7P6N8PNMj', 'zhZdrQ1JAQ', 'w9', '4', '4', 'U9R60xPxpM@gmail.com', 'Pending', 'I3fXbcbRXS', 222.00, 0.00, 1, 1, NULL, '2023-03-06 12:15:50', '2023-09-02 00:36:19'),
(14, NULL, 'pqfKfCAqLK', 'EDnZmsBm8o', 'INFAyv3rjC', NULL, 'L3KZkuYNrR', 'VpyqQ2RNYO', 'ACUIBFzfvt', 'k8WB80a0eD', 'KZ', '4', '5', 'A1nmQSQVXE@gmail.com', 'Pending', 'dCQIwDt40n', 222.00, 0.00, 1, 1, NULL, '2023-03-28 10:31:11', '2023-09-02 00:36:19'),
(15, NULL, 'HBUe18RxpQ', 'iIpwi7vsBs', 'tce1HjJtfb', NULL, 'VgUD7iA6LM', 'myhliJC3qq', 'uLfzci2ZUx', 'phtixG8Y0C', 'ol', '1', '5', 'wxGSkE5ejx@gmail.com', 'Pending', 'z9aTdJba2v', 222.00, 0.00, 1, 1, NULL, '2023-03-02 16:45:58', '2023-09-02 00:36:19'),
(16, NULL, 'vuX0qltQUD', 'nL9yAOX9fV', 'Ms8hTGSK2t', NULL, 'rjYaoSyFFd', 'Vlkjij37Ki', '25Okkc6HK7', 'sTQspMZiiU', 'sZ', '3', '2', 'MO3lTw77og@gmail.com', 'Pending', 'CIqb8Evris', 222.00, 0.00, 1, 1, NULL, '2023-11-29 13:49:27', '2023-09-02 00:36:19'),
(17, NULL, 'oEFSSLZpq7', 'RcoQvMEJFs', 'Yzbcuwetvb', NULL, '37VUyBly1a', '553BJzh2LG', 'er8weF1eQz', '7shuE0hA0C', 'WZ', '2', '6', 'a6LVmmvg3l@gmail.com', 'Pending', 'qin9LEEwoC', 222.00, 0.00, 1, 1, NULL, '2023-01-25 03:37:26', '2023-09-02 00:36:19'),
(18, NULL, 'EhEZjsQlYi', '6T5Sza0eDi', 'sTZGS3aZAw', NULL, 'CMAMG70p2E', 'dSS5RDxoNG', '3FM5zsOo3Y', 'eyejZsMxRr', 'Zl', '3', '9', '7a5MephSeZ@gmail.com', 'Pending', 'GT6kHw9f0N', 222.00, 0.00, 1, 1, NULL, '2023-02-04 02:29:42', '2023-09-02 00:36:19'),
(19, NULL, 'pGRHCwqFuv', 'eJmgTKmpCp', 'JwHVjdy5f2', NULL, 'L4ccFhFVy9', 'WNMVUGyDSd', 'Mh12fWnv6g', 'KdaJKq19ac', '5D', '1', '6', 'DeNFVtInPB@gmail.com', 'Pending', 'qqGkTMgLxn', 222.00, 0.00, 1, 1, NULL, '2023-07-30 11:09:30', '2023-09-02 00:36:19'),
(20, NULL, 'SlP0RG0MAp', 'EYOkbtBsnQ', 'P8kE7O4mSq', NULL, 'SHHlNVO9yh', 'sKs6mXXZww', 'iJUhFyJgIG', 'mpWPWqZMfb', 'gB', '1', '9', 'bIK9qRMcrA@gmail.com', 'Pending', 'NKsFOXWSg3', 222.00, 0.00, 1, 1, NULL, '2023-06-08 05:25:18', '2023-09-02 00:36:19'),
(21, NULL, 'C7FS1viXMv', 'CCeIlXsiAt', 'BkxYzNbQ5a', NULL, 'ukfbeqByTD', '5AvxHz8pQd', 'm6FMQ8zwFq', 'hGD18rZ8fN', 'Ka', '3', '9', 'uVI3dn51Cf@gmail.com', 'Pending', 'aiyuVbSyql', 222.00, 0.00, 1, 1, NULL, '2023-08-12 20:17:35', '2023-09-02 00:36:21'),
(22, NULL, 'phXoN8n2Bt', 'h6diOakEtG', 'g0ZvZJcsS3', NULL, 'PX46ZY43hR', 'co7Gbqwtdr', 'G1yFvIroiP', 'Yqp0wkoJQ6', 'rX', '4', '2', 'tzl3owQhsu@gmail.com', 'Pending', 'nmABGepe4j', 222.00, 0.00, 1, 1, NULL, '2023-04-17 19:59:52', '2023-09-02 00:36:21'),
(23, NULL, '4p4AFgeWRA', 'CWGOyMtevR', 'LWCbqXKE86', NULL, 'lXp9GFmB5K', 'yERzABANj8', 'zUX6v0oDLK', 'VgXXm7OT6Z', 'xu', '1', '7', 'PdT0on4edQ@gmail.com', 'Pending', 'I5xRmey8MD', 222.00, 0.00, 1, 1, NULL, '2023-10-13 17:26:22', '2023-09-02 00:36:21'),
(24, NULL, 'WP3msUAA1X', 'lRosRb8t0T', 'RRhfzIdvYj', NULL, 'sesVY1ynZb', 'ApChC6pN4h', 'DOz4tNnLoy', 'WlTBqYNloR', 'xJ', '2', '3', 'xIVbKLJQj9@gmail.com', 'Pending', '4rsX2U6xfP', 222.00, 0.00, 1, 1, NULL, '2023-05-14 23:33:02', '2023-09-02 00:36:21'),
(25, NULL, '7hNDU0K2n5', '57XwTTDtLW', '18GChiWrd4', NULL, 'iozPw7BrWg', '6Z2Pi4EV0j', 'AlP0S5wq4o', 'gKvIAbiRiv', 'rY', '4', '10', 'qenL1zTjGD@gmail.com', 'Pending', 'bg4dLV1qT0', 222.00, 0.00, 1, 1, NULL, '2023-03-23 01:12:14', '2023-09-02 00:36:21'),
(26, NULL, 'IatqjilRMB', 'mlo9ppp823', 'atsQc0I9NB', NULL, 'uC5LPAeulX', 'K9b5FSEvGw', 'edOcu2N2oO', 'q2LwnQLr0X', 'g5', '4', '10', '5PzQq0U3aL@gmail.com', 'Pending', 'lEk05osV2u', 222.00, 0.00, 1, 1, NULL, '2023-11-11 01:10:01', '2023-09-02 00:36:21'),
(27, NULL, 'Z06uDPYbM0', 'evxTq4Uohq', 'rVpPQo6PIu', NULL, '84yEVZxi5W', 'ySVabS45Kf', 'gxKH4WbBuk', 'u7IfukKgor', 'b3', '1', '9', 'CfBFFPvRtU@gmail.com', 'Pending', 'sndfYox5Uc', 222.00, 0.00, 1, 1, NULL, '2023-07-31 13:22:29', '2023-09-02 00:36:21'),
(28, NULL, 'Ctx8vQNvH7', 'YATwYuiWUH', '7DyaB9KZiG', NULL, 'RRvYRcYMkY', 'denprap4I7', '0iT4ySUcKl', '4h2qRxEw4w', 'TF', '4', '4', 'axIIclU6zq@gmail.com', 'Pending', 'BibS9R1fJX', 222.00, 0.00, 1, 1, NULL, '2023-06-01 05:24:04', '2023-09-02 00:36:21'),
(29, NULL, 'rI6ntvML8u', 'U4cHbxcZEm', 'Or8wdzjl8e', NULL, 'PXQ1zrn1hw', 'uTN5ZTJBGJ', 'VqRawgxclr', 'ecbrhF5Dz8', 'TW', '4', '6', 'VPiF9nXmQa@gmail.com', 'Pending', 'FdvwKsVXNk', 222.00, 0.00, 1, 1, NULL, '2023-01-26 01:39:37', '2023-09-02 00:36:21'),
(30, NULL, 'aM86jhWSYx', 'BJiONs1C2k', 'yagxDjIRvu', NULL, 'vOLdfZDES3', 'jhWIg0vaAQ', '8x1CvS5EHM', 'XsrcIYW0Jo', 'No', '1', '8', '6fQD5P4ZnZ@gmail.com', 'Pending', '83TcCw496C', 222.00, 0.00, 1, 1, NULL, '2023-11-10 08:29:41', '2023-09-02 00:36:21'),
(31, NULL, 'TnVgBAkVTw', 'uPTPUjUrAn', 'lyPooMJmIh', NULL, 'X3WzoS15D1', '6sMycnqcC3', 'YiJ9Sjk6eT', 'T8xu7h3QtR', 'ix', '3', '10', 'Kt66B1zf8j@gmail.com', 'Pending', '4mwRlnbf5U', 222.00, 0.00, 1, 1, NULL, '2023-11-04 22:19:21', '2023-09-02 00:36:21'),
(32, NULL, 'Q9wpv0B8s8', '1UzUmYkJna', 'Mr41hWvklO', NULL, 'py7VGrH1Qs', 'WKs4pfAKam', 'wFQYXetttv', 'jfWojIyv8R', 'wi', '1', '7', 'sFEHN4gyZ5@gmail.com', 'Pending', 'fHu1bDv5ow', 222.00, 0.00, 1, 1, NULL, '2023-05-29 09:55:32', '2023-09-02 00:36:21'),
(33, NULL, 'eWo7Z3oFJD', '4NdnJbuUkL', '7oUAFY4OMu', NULL, 'sWfjin0bt2', 'qWZyq2ZhDL', 'q9aNa0Akzn', 'DIGkHg7psj', 'rc', '1', '3', 'YY6dgBvsmo@gmail.com', 'Pending', '2QAxRhCPli', 222.00, 0.00, 1, 1, NULL, '2023-03-22 03:43:24', '2023-09-02 00:36:21'),
(34, NULL, 'LrSzKKiKR0', 'IN9pfKsQ1X', 'aFWxckvrHG', NULL, '2DtTBoB7TS', 'Jr1NaJW4Uu', 'TgVBJty0wb', 'pJKU4NLDK1', 'ar', '2', '8', '1tu3lsgH6R@gmail.com', 'Pending', '3SxuWzbB3t', 222.00, 0.00, 1, 1, NULL, '2023-08-24 14:24:57', '2023-09-02 00:36:21'),
(35, NULL, '6ZfuoyjHid', '9p0DcKB0vA', 'Qjn7AFsZex', NULL, 'FbUkOdAYVy', 'FQGIxw3ZNq', 'Raln3f3py5', 'WfnUjxnPtY', 'sf', '3', '7', 'YiLrh4LBmM@gmail.com', 'Pending', 'mtiBPdWlKQ', 222.00, 0.00, 1, 1, NULL, '2023-02-24 02:44:14', '2023-09-02 00:36:21'),
(36, NULL, 'ZvKGNsgn1z', 'z4ydVsUsUt', 'kSPrVBQiIr', NULL, 'hsL3o2jqRa', 'skMl027OPE', 'um1PtEJN2I', 'bvOL7CcVvK', '1b', '2', '9', 'GCZtoNO6Mq@gmail.com', 'Pending', 'dtHWiOi5zA', 222.00, 0.00, 1, 1, NULL, '2023-03-24 03:56:35', '2023-09-02 00:36:21'),
(37, NULL, 'z2mKtuD4ay', 'sYjvGaDuqC', 'Gm5OlHUgE4', NULL, 'JzTi4aKc4W', 'H49Lybymnu', 'sVP1nqEuli', 'ujKBMkmiJD', 'Zq', '3', '9', '0BgJUHVGXC@gmail.com', 'Pending', '3i5MN83ntQ', 222.00, 0.00, 1, 1, NULL, '2023-03-24 18:41:17', '2023-09-02 00:36:21'),
(38, NULL, '5qyaA8EmU6', 'T69IcvPOGs', 'tTXzMndTG4', NULL, '4U7WUsKyIA', 'oN0QmfhpmP', 'RKkuTYjOHT', 'lY1I0f4zUT', '1Z', '2', '5', 'arbfvDwqdY@gmail.com', 'Pending', 'apnWEApAQ3', 222.00, 0.00, 1, 1, NULL, '2023-10-14 09:16:43', '2023-09-02 00:36:21'),
(39, NULL, '6ny9gXTp09', '3Q0bRBVP0u', 'TkWZWFYDA3', NULL, 'UFOBlLWluk', 'ezxtleyOOw', 'w7P8gdAsa0', '0VtTGrDZaD', 'co', '4', '1', '5m0tBxh9NA@gmail.com', 'Pending', '4FrhUjAABa', 222.00, 0.00, 1, 1, NULL, '2023-06-14 19:09:03', '2023-09-02 00:36:21'),
(40, NULL, 'Dj9tlO2Dbs', 'stwa38G24s', 'vBH0U8SPLP', NULL, 'JN0vlGeBsA', '0iCXLxNvhU', 'mqqOZr6S5u', 'UgH12wMQ6U', 'p7', '1', '2', 'HzJw0LKQ4h@gmail.com', 'Pending', 'P7khb5b5d1', 222.00, 0.00, 1, 1, NULL, '2023-01-21 01:50:19', '2023-09-02 00:36:21'),
(41, NULL, 'pyx6CRnqSO', 'z7sL8DL9Ic', 'uGR2x2rMS7', NULL, 'p7FC2nWlXB', 'u47BfQRMMA', 'AWGqVnTQC2', 'ssqe8fAjSh', 'yD', '3', '2', 's3DF1ryJZ7@gmail.com', 'Pending', 'hwlCg7tASd', 222.00, 0.00, 1, 1, NULL, '2023-05-10 16:08:37', '2023-09-02 00:36:22'),
(42, NULL, 'KzJEApuzmO', 'lIWjfReVsU', 'bnAoNbIvYT', NULL, 'iunKGPb73b', 'x25fOFyCsu', 'qvXDl8ATEd', 'DhtK7pXafZ', '12', '3', '5', 's8Onpb4aHQ@gmail.com', 'Pending', '6gNd7gPL3z', 222.00, 0.00, 1, 1, NULL, '2023-12-17 06:47:05', '2023-09-02 00:36:22'),
(43, NULL, 'nFvCZgSV11', 'yQhHCOs3I0', 'HC067tXGsh', NULL, 'XbZNpSsNEl', 'FYiCepKtZu', 'RrGSUReWV5', '4dbzBTss0B', 'XJ', '2', '10', 'C8EqVas01U@gmail.com', 'Pending', 'FYRnYGSMri', 222.00, 0.00, 1, 1, NULL, '2023-01-02 17:54:55', '2023-09-02 00:36:22'),
(44, NULL, 'xMcRoIkklA', '9b6rMzv1nf', 'VYGYFooyfH', NULL, 'rhm1ELDHae', 'dF71PMJLu1', 'xu14PihMM1', 'CsNvs1vapE', 'HB', '4', '10', '2Aav0c0kzX@gmail.com', 'Pending', 'uUWj39GDDs', 222.00, 0.00, 1, 1, NULL, '2023-04-24 22:09:15', '2023-09-02 00:36:22'),
(45, NULL, 'mjN44n47RB', 'MhBhcCxzJS', 'cW1P3rc3Py', NULL, 'yySdkJeIHr', 'vWxvxvEzus', 'JJ4e3VMiLt', '6X48gUqHwg', '6U', '4', '4', 'qii2nkfcWf@gmail.com', 'Pending', 'ae70mu8G8V', 222.00, 0.00, 1, 1, NULL, '2023-01-31 07:07:32', '2023-09-02 00:36:22'),
(46, NULL, 'R0iwXPIRTB', 'vV2MlSRVO6', 'teXRPa2bRB', NULL, 'X58kivDng0', 'DoMfJClTiW', 'axQZpUnohS', 'ZG3MjPIXe4', 'sW', '1', '10', 'cCG9am8VeF@gmail.com', 'Pending', 'eFTBAJJi88', 222.00, 0.00, 1, 1, NULL, '2023-09-20 20:21:15', '2023-09-02 00:36:22'),
(47, NULL, 'M2ZamDsUz7', 'cdzpPdj8tx', 'Wi0MaVgwW0', NULL, 'zEPTqo7gF5', 'jADxKCqSdu', 'fAF3sfNs2U', 'fDANtUCMX7', 'S7', '1', '2', 'fFa5yc3qH6@gmail.com', 'Pending', 'CiZuPJ71KZ', 222.00, 0.00, 1, 1, NULL, '2023-03-10 01:39:30', '2023-09-02 00:36:22'),
(48, NULL, 'L36oTrXf7q', 'AqGWvcG3kS', '3mmXsd9Qz8', NULL, 'XgiXUN53cx', 'fIjvnjy3TV', '4h56yEY09R', 'tdB0tOYx7T', 'd2', '4', '2', 'gTd4JdNS24@gmail.com', 'Pending', 'NBTdwP6q9Q', 222.00, 0.00, 1, 1, NULL, '2023-01-10 14:53:47', '2023-09-02 00:36:22'),
(49, NULL, '5axknzYDtR', 'HTm6LMgVGU', 'qXNOtlSqzT', NULL, 'zrDeE1Nq6E', 'zVuQa2LVNW', 'KD9tR6qkhL', 'GsnqePMzlh', 'vv', '1', '3', 'a8dipKmVMj@gmail.com', 'Pending', 'AqgPwUrMQ0', 222.00, 0.00, 1, 1, NULL, '2023-06-06 15:47:36', '2023-09-02 00:36:22'),
(50, NULL, 'ZMuD1WhXof', 'jLF5dquEiF', '99mLt5cZf9', NULL, 'W3vNg8Cz5d', 'rXZNLlFDXp', '1rr1vRVXrM', 'TLpOCEgQlm', 'vx', '2', '9', 'bOxEnUYSel@gmail.com', 'Pending', 'IDKdN4qTNz', 222.00, 0.00, 1, 1, NULL, '2023-11-22 21:09:02', '2023-09-02 00:36:22'),
(51, NULL, 'oxgahQZgKe', 'NG32fMwZ7w', 'k42S3n5kmR', NULL, '8C4sqMV6xE', 'D9O6EVVGkl', 'O9PeG4TAcQ', 'QS7231UEHF', '8o', '1', '5', 'QWUCMGgyXF@gmail.com', 'Pending', 'CUuP05XDth', 222.00, 0.00, 1, 1, NULL, '2023-03-24 18:48:11', '2023-09-02 00:36:31'),
(52, NULL, 'm7IYb9BHDd', '1RmmwEBdHA', 'Xv8s7QZOlG', NULL, '0cHFXGTpQL', 'tQFbYbxElI', 'cRfOlATuT1', 'gyyVlIALJ0', 'wA', '2', '7', 'sxSziPjxUf@gmail.com', 'Pending', 'iussEvmB4c', 222.00, 0.00, 1, 1, NULL, '2023-04-07 03:38:22', '2023-09-02 00:36:31'),
(53, NULL, 'IWR5UjRBsc', 'Z71XXDnET1', 'ZilhLe4eqV', NULL, 'LYQP80WRc4', 'dNRbDV4QaX', 'fw3vkPKbF5', 'Y0WgexdFBI', 'PJ', '1', '7', '1muYu0WqzY@gmail.com', 'Pending', 'MnV7VsXNap', 222.00, 0.00, 1, 1, NULL, '2023-06-24 17:00:19', '2023-09-02 00:36:31'),
(54, NULL, 'mUA3TfnGC8', '9c3xcP6txl', '3899YtukEE', NULL, 'hpk3K9clm6', 'hQtqeFMPKv', 'ze3U8ENhIa', 'iu1pQ5XDTS', 'nQ', '4', '3', 'oAShHXIoE5@gmail.com', 'Pending', 'J25LJCEPqH', 222.00, 0.00, 1, 1, NULL, '2023-06-01 08:51:21', '2023-09-02 00:36:31'),
(55, NULL, '8PebOn47xU', 'yp7TYbalF2', '8l488EvkU9', NULL, 'KPZmR8Lcnv', 'MyA65Nlj4Y', '9CCLuCcTs7', 'TQBWVjnnPY', 'GK', '4', '5', 'a1cXFE3n7c@gmail.com', 'Pending', 'qCERxpQr39', 222.00, 0.00, 1, 1, NULL, '2023-10-03 02:41:34', '2023-09-02 00:36:31'),
(56, NULL, 'FzXlbfDV8M', 'zRJP6tzr7s', 'CPNJ4uhjwB', NULL, 'FIyRDditMo', 'UmJMq9DbWK', '1mDINRqJuT', 'FOh6MvYdkR', 'R4', '3', '6', '5k33PMixCi@gmail.com', 'Pending', 'NsdUWgE3RU', 222.00, 0.00, 1, 1, NULL, '2023-08-21 22:04:32', '2023-09-02 00:36:31'),
(57, NULL, 'nPwgVOVzo9', 'FqDsGHAuKU', 'BNJCv4vG65', NULL, '7YlGXNKCkw', 'wA44RgNQFL', '2mWQIVuqVG', 's9bpQ1TLut', 'Rk', '1', '6', 'KvpzirmJD2@gmail.com', 'Pending', '9k5hOGqtsA', 222.00, 0.00, 1, 1, NULL, '2023-05-30 10:48:36', '2023-09-02 00:36:31'),
(58, NULL, 'ijuSSSzJE4', 'EVjnt3Sktz', '1IfZqlxbfD', NULL, 'ZduIH35XuW', 'xbzILSpZ9a', 'O5sYmMhsO2', 'vN7J4ngxnT', 'Tu', '4', '1', 'UuQnXCMcJn@gmail.com', 'Pending', 'i44IDKIB8O', 222.00, 0.00, 1, 1, NULL, '2023-09-28 02:43:55', '2023-09-02 00:36:31'),
(59, NULL, 'MLqnKFYoo7', 'DWbjl9JlZb', 'lhbjdPdxI6', NULL, 'ogffljWugi', 'By01SEAAqm', 'EZAGC9oQX1', 'ybLcJI7VIk', 'BW', '3', '8', 'AL9MunHYCO@gmail.com', 'Pending', 'aHVbzOPY1F', 222.00, 0.00, 1, 1, NULL, '2023-12-07 07:24:14', '2023-09-02 00:36:31'),
(60, NULL, 'g54MxH84ij', '26KiyRcRIX', 'M0wwPYVbaQ', NULL, '5hVTNbvhMU', 'XzeYZPqRVd', 's0d4TXWv5Y', 'pK7cWfTaUq', 'ZF', '3', '8', 'ahUipasFVv@gmail.com', 'Pending', 'CqvmqJVbRf', 222.00, 0.00, 1, 1, NULL, '2023-08-05 15:14:07', '2023-09-02 00:36:31'),
(61, NULL, 'M1W19q0XTo', 'xCUamtYt0i', 'jhiTrA8Nek', NULL, '421tQ8wQ5P', 'VdY9Wh2tEi', '5H307rBvzC', '1Cogs3XLyz', 'zJ', '3', '8', 'Ykw2mTE9uT@gmail.com', 'Pending', 'oZHHJFKNL7', 222.00, 0.00, 1, 1, NULL, '2023-12-16 18:19:45', '2023-09-02 00:36:31'),
(62, NULL, 'rsHzlRbeuv', '9ZlHV6yDtd', '2nVmadMKbs', NULL, 'GUzrlktKAk', 'gzqNSmWVHq', 'soNWlp1LE5', 'qqKX2iFl7p', 'H3', '4', '1', 'VbPYrrEUBb@gmail.com', 'Pending', 'ikSZCEvoSd', 222.00, 0.00, 1, 1, NULL, '2023-01-26 12:08:37', '2023-09-02 00:36:31'),
(63, NULL, 'd4hakf6Zag', 'YdMZGk6Hbj', 'Kn2Eo4kwMN', NULL, '8qU2hJBUxi', 'IOHbRHAtVM', 'PvoAS3Idnc', 'rqnuKhyXMz', 'I7', '2', '5', 'B2m6kA9EYf@gmail.com', 'Pending', 'cRLaim93Gs', 222.00, 0.00, 1, 1, NULL, '2023-12-23 05:09:41', '2023-09-02 00:36:31'),
(64, NULL, 'KmJV6opyEl', 'bFxonjpSyW', 'Vr2ZhZaVa5', NULL, 'Jymo8LvD9y', 'MNoObym4St', 'dilO2BLVsh', 'Z4pZuSebf4', 'bV', '2', '6', 'VGeq2sr5fM@gmail.com', 'Pending', '4xrmkRBsY7', 222.00, 0.00, 1, 1, NULL, '2023-07-25 22:15:36', '2023-09-02 00:36:31'),
(65, NULL, 'Ty5xKcMWm5', 'dzOJLer0Xu', 'qt4nqcSWyl', NULL, 'OK0aZcfBJD', '1629ZgFksQ', '43yCnsXzUH', 'S1alMgVlxs', 'IQ', '4', '3', '1vbHv98ABy@gmail.com', 'Pending', 'jL39RFpXx7', 222.00, 0.00, 1, 1, NULL, '2023-11-16 17:39:30', '2023-09-02 00:36:31'),
(66, NULL, '0EvhmY5c28', 'yI1pfUX5TN', 'wLCvsFeqkm', NULL, '2pv0bXKoj2', 'QxmHYBofne', 'j6zLGvvJVG', 'uHRqmJZHLv', '8p', '1', '5', 'gn1Fs26Orl@gmail.com', 'Pending', 'c1tHGYM4sH', 222.00, 0.00, 1, 1, NULL, '2023-01-15 01:56:37', '2023-09-02 00:36:31'),
(67, NULL, 'gM5NdovKQL', 'zcojhemGZN', 'KAKajPn01i', NULL, 'BNihKzFK24', 'nLkj9suYtR', 'awxwWXF0z7', 'CR4RFwYkpF', '81', '3', '3', 'NNoIyoqWjT@gmail.com', 'Pending', '8XoQ8QF3eC', 222.00, 0.00, 1, 1, NULL, '2023-05-03 16:37:10', '2023-09-02 00:36:31'),
(68, NULL, 'kFdXdSnPTe', 'Dc2ml1eZvy', '2pHoCleMSo', NULL, 'p8cqJkGruO', 'f3TeVJMwCU', '53a15MIDoX', '1oTc19ryvc', 'rI', '4', '8', '5owWTelyfT@gmail.com', 'Pending', 'eYHKqKUxcT', 222.00, 0.00, 1, 1, NULL, '2023-08-11 22:58:31', '2023-09-02 00:36:31'),
(69, NULL, 'XFhAUK5XP6', 'V7hQOveZEC', 'mRe7jwRFYt', NULL, 'RWXuD0S2Eb', 'h2ybT186Lm', 'd9fAFJrWtz', 'bDlGh9btd3', 'O6', '4', '2', '5uNsTv2pXN@gmail.com', 'Pending', 'hjXq0Izqjo', 222.00, 0.00, 1, 1, NULL, '2023-07-02 14:08:12', '2023-09-02 00:36:31'),
(70, NULL, 'JdwX2QqWU4', 'Se82XLu8ZQ', 'N4VJzmrLRU', NULL, '52CIYz3Rpp', 'cryxjcKoKt', 'P3UF5znVCt', 'dU4Ing8BY5', 'o3', '3', '6', 'MrTJ2G7CdC@gmail.com', 'Pending', 'uIFUbuKtrI', 222.00, 0.00, 1, 1, NULL, '2023-04-28 08:12:08', '2023-09-02 00:36:31'),
(71, NULL, 'nLNmJyZOb9', '0BBt6o0fAb', '5osgVnbnz1', NULL, 'qCDRi9cdfZ', 'vjT4HbTuVP', 'ImftdkwW56', 'RpX42EY3vw', 'tC', '2', '9', '2bMv4008MQ@gmail.com', 'Pending', 'BOWwuoepkU', 222.00, 0.00, 1, 1, NULL, '2023-01-24 15:52:32', '2023-09-02 00:36:31'),
(72, NULL, 'xNMQXooX2K', 'yhSLTWXs15', 'nbn8xDHtWv', NULL, 'saHpXXaO0t', 'XDAA7zT3be', 'rGE9L6lf8c', 'OV9yQVVCie', 'qR', '2', '3', '80YSz34ty1@gmail.com', 'Pending', 'Gd8QhEHpYA', 222.00, 0.00, 1, 1, NULL, '2023-10-14 08:03:14', '2023-09-02 00:36:31'),
(73, NULL, 'LCO5M6f3qK', 'uWJ09KcsRz', 'tquTSd6dti', NULL, 'iis60maQJt', 'CqyW4FjinM', 'cuGUmADBcj', 'wLDJ95z1NW', 'fr', '3', '2', 'RwLKlsBFlu@gmail.com', 'Pending', 'oQHtZN68LD', 222.00, 0.00, 1, 1, NULL, '2023-06-29 02:13:33', '2023-09-02 00:36:31'),
(74, NULL, 'mFurx9zpnm', 'qlHVEEpGe0', 'qLiGcXSQao', NULL, 'Em8VOoYDkM', 'JgXiJAbvun', 'c299klZOjF', '3VPLZbmp3X', 'in', '1', '5', 'NIByd7eSKB@gmail.com', 'Pending', 'QRRtNVYoCx', 222.00, 0.00, 1, 1, NULL, '2023-08-17 09:59:57', '2023-09-02 00:36:31'),
(75, NULL, 'VuDEYG3lgG', 'Xbwvy1PLtE', 'vqXaY6C6tr', NULL, 'xEy5uw9Sgm', 'OWGlTiZiHp', 'uxvwvAd2vh', 'AJv5WITO1F', 'dy', '1', '10', 'K8D4aikVDm@gmail.com', 'Pending', 'vZZdzO3r3t', 222.00, 0.00, 1, 1, NULL, '2023-12-15 05:07:47', '2023-09-02 00:36:31'),
(76, NULL, '1gIhs40JFn', 'iyKYxSJDH4', 'fWYbS1FlFq', NULL, 'wA19kkn8dd', 'TpTQgLUYp7', 'LaZxv5k0uc', 'Yz6Zm0G5pr', 'g5', '2', '10', 'UDhqf3hH4P@gmail.com', 'Pending', 'HjI7LFHFYc', 222.00, 0.00, 1, 1, NULL, '2023-04-13 00:36:20', '2023-09-02 00:36:31'),
(77, NULL, 'I5fWSVQDvn', 'zph0PjYxNV', 'T6yFyBljfp', NULL, 'iCMSNVnw4d', 'S4gtOXS7tQ', 'SZIOmlY8Cf', '1QXTmV6FPi', 'r0', '1', '4', 'E1PnQcA5WC@gmail.com', 'Pending', 'BztymBzeuD', 222.00, 0.00, 1, 1, NULL, '2023-12-15 09:11:06', '2023-09-02 00:36:31'),
(78, NULL, 'WD4KVELBPm', 'Z2wnbQGyvb', 'X3U22Sc1hs', NULL, 't6rvGZRCxA', '1RFAGo9gtY', 'iYaySkUvPH', 'dDYjO4SCsE', '8X', '3', '3', '1PfofKe5rF@gmail.com', 'Pending', 'xfOKFUZ1en', 222.00, 0.00, 1, 1, NULL, '2023-10-09 23:54:34', '2023-09-02 00:36:31'),
(79, NULL, 'zebPv1f2c2', 'Hhc0gvkhQJ', 'WQRc4ciHXV', NULL, 'vSEMUQBcIu', 'if4GiXUhGC', '1sgaN9Qybo', '4PkPa6zAjT', 'wB', '3', '7', 'DUpPHbURKl@gmail.com', 'Pending', 'gGv0BD1wng', 222.00, 0.00, 1, 1, NULL, '2023-11-24 03:56:42', '2023-09-02 00:36:31'),
(80, NULL, 'bOU9FfO5al', 'GdX7pmeys5', 'L84cjh1GTC', NULL, 'Z2RV2jxHB5', 'D8wS6xAXB8', 'aLSbjufgUL', 'w46JDXyLFb', 'rB', '2', '8', '9sm11PZvTw@gmail.com', 'Pending', '0uprdu5DJj', 222.00, 0.00, 1, 1, NULL, '2023-05-22 23:29:28', '2023-09-02 00:36:31'),
(81, NULL, 'O7YMzB1lQu', 'C8xAv8HQwC', 'wpUzvaCAqp', NULL, 'jc1rMZvk3T', 'ygdNIetDaO', 'NMw3xnoshO', 'buLpijzs7K', 'd3', '4', '4', 'kY4l9LVzOJ@gmail.com', 'Pending', 'CWcujaS8bo', 222.00, 0.00, 1, 1, NULL, '2023-09-28 18:14:18', '2023-09-02 00:36:31'),
(82, NULL, 'OvxAhtrSvz', 'VBu8ayT555', 'LpcHpUQmgK', NULL, 'f2U4jcxzsk', 'DX1TxyXDaQ', 'lIR2WRKa48', '7BtxUzRSCE', 'w0', '3', '3', 'MwEt8cWZuA@gmail.com', 'Pending', 'n9MWXiyeAb', 222.00, 0.00, 1, 1, NULL, '2023-01-29 01:48:24', '2023-09-02 00:36:31'),
(83, NULL, 'CU3XlbZTA1', '9sl35uYZXu', 'h8czPaqAFf', NULL, 'UrmoGzrTXa', 'z8iQRFlaYW', 'pFxZ3cjG8J', 'tiQzOiyF8H', 'e8', '3', '6', 'a1pye4pIfO@gmail.com', 'Pending', 'M7li5o6Fkj', 222.00, 0.00, 1, 1, NULL, '2023-11-19 17:03:43', '2023-09-02 00:36:31'),
(84, NULL, 'll89ly87u9', 'agfV6ue9iz', 'DxXkxi1VJj', NULL, 'GEZV1XiP2m', 'q5qKxfQ6GM', 'PdCkJF9FPd', 'WzWHlupGT0', '8h', '1', '3', 'DNstn7kryF@gmail.com', 'Pending', 't0CCSp9Ev5', 222.00, 0.00, 1, 1, NULL, '2023-02-24 16:28:52', '2023-09-02 00:36:31'),
(85, NULL, 'vKAovvAirn', 'ZucwSaVLLo', 'kFAZ7eBpxz', NULL, 'm91pHKUooo', '01qQkFLSdT', 'Jpui8uXozG', '3xit9SN9hY', 'LC', '4', '5', 'zXeJwSuX5J@gmail.com', 'Pending', 'H3UjL7jpja', 222.00, 0.00, 1, 1, NULL, '2023-06-05 03:16:44', '2023-09-02 00:36:31'),
(86, NULL, 'm3Jb0pW0oX', 'IwVcMPAAFC', 'iquEbBK4C4', NULL, 'ZbtLzUj3kb', 'wVYLNajP5N', 'WtZskRxDkI', 'vqB1u3nbbt', 'AN', '4', '8', 'CCVmynmYcS@gmail.com', 'Pending', 'TjMjXl8Xv0', 222.00, 0.00, 1, 1, NULL, '2023-03-14 04:12:34', '2023-09-02 00:36:31'),
(87, NULL, 'SAt5hngDiE', 'Xk9pb8k5C2', 'mUDhABEX5S', NULL, 'B4pizViild', 'HFDfoaXFqN', 'jwvbYRhcnq', 'uGyeRvhDQk', 'hz', '4', '1', 'n24WA0oH4j@gmail.com', 'Pending', 'JSb9VgMY5E', 222.00, 0.00, 1, 1, NULL, '2023-03-02 10:44:47', '2023-09-02 00:36:31'),
(88, NULL, 'LqMIvVCvqj', 'xz9aAq2rvm', 'F1ypPNgJwy', NULL, 'eG1j4aw6HJ', 'zaWyysr5sW', 'vGue00kiHV', 'kYwi0FKzEa', 'CJ', '3', '3', '5eKZDdTcKa@gmail.com', 'Pending', 'Gu4ZdufbeR', 222.00, 0.00, 1, 1, NULL, '2023-05-09 20:36:04', '2023-09-02 00:36:31'),
(89, NULL, 'uIN1fksTM6', '1IamvUU6KB', 'cSLVmv0T5x', NULL, 'tK0hqejhfP', 'P1ZjkhF4wu', 's6BvLNpePC', 'GNkntfM7Ce', 'zJ', '2', '5', 'm8q26kqZoL@gmail.com', 'Pending', 'D1LcthUlln', 222.00, 0.00, 1, 1, NULL, '2023-03-07 03:38:43', '2023-09-02 00:36:31'),
(90, NULL, 'Rp9RL8E4Vd', 'Pd8NktJgiz', 'muYBoLT8dJ', NULL, '56oe6Vqjfp', 'qlYcRsCEL6', 'KneKK8Wwya', '1nJPfdUSYf', 'iC', '3', '7', 'E0LxVbuXK1@gmail.com', 'Pending', 'OfkmfwfRFq', 222.00, 0.00, 1, 1, NULL, '2023-05-09 05:00:13', '2023-09-02 00:36:31'),
(91, NULL, 'Laz7Xo9hbg', 'jmtJH4T06o', 'jn2NhKYtuh', NULL, 'FZjlEb9rl1', 'czxT4zrGl5', '5AuGyfxUyv', 'h9ClwpmuiF', 'K0', '2', '1', 'K9s1pe21JK@gmail.com', 'Pending', 'gIf688LfH3', 222.00, 0.00, 1, 1, NULL, '2023-05-08 14:56:51', '2023-09-02 00:36:31'),
(92, NULL, 'fpeLi3lxzn', 'VdUqmu8hFq', 'IQ6gGYtq1I', NULL, 'af0KSfkNOy', 'MZAVR0a88y', 'juVhNsfN20', '8ExHAaLgqe', 'Rh', '4', '5', 'Opw05wVrdW@gmail.com', 'Pending', 'rSeqYKopcW', 222.00, 0.00, 1, 1, NULL, '2023-03-08 11:46:01', '2023-09-02 00:36:31'),
(93, NULL, 'Ppr3M5tHd3', 'v4FPianecx', 'IV5rs6cr6r', NULL, 'yu60SmwEHR', 'hLBBXhISMe', 'np0OdiahpK', 'vmAZM35KPG', '1t', '1', '9', 'Kjn2njcBvf@gmail.com', 'Pending', 'ziYKfaFGGE', 222.00, 0.00, 1, 1, NULL, '2023-09-13 20:35:05', '2023-09-02 00:36:31'),
(94, NULL, 'FjtfoTFvlx', 'Zy3432J0D6', 'ExpbCnNo7F', NULL, 'oH8n75RSa6', 'upJohi7WU7', 'hV7XabvNWh', 'kpjXVo06Gj', '77', '4', '7', '0bwbg61dTE@gmail.com', 'Pending', 'KWjFpRqz9S', 222.00, 0.00, 1, 1, NULL, '2023-06-27 04:29:17', '2023-09-02 00:36:31'),
(95, NULL, 'NgwXVklZLO', 'yM60i67B8p', 'WnHxLc0X3h', NULL, 'krqJleyOur', 'slrDBMPF0b', 'BDYYJ6MDi2', 'OtjkO2vGaL', '3I', '2', '10', '6SR2wFZ6a9@gmail.com', 'Pending', 'NRQuWIssod', 222.00, 0.00, 1, 1, NULL, '2023-03-09 23:20:42', '2023-09-02 00:36:31'),
(96, NULL, 'XFZS8UGrUZ', 'HSC9aIKA0j', 'LHkHYZOts0', NULL, 'xE2hqEhuMH', 'Fw8xZAmNtF', 'v2IwaYHAXq', 'VQTmzL4sIq', 'GN', '1', '9', 'KJ9hiJyePY@gmail.com', 'Pending', 'Lyowe431DA', 222.00, 0.00, 1, 1, NULL, '2023-03-04 23:57:31', '2023-09-02 00:36:31'),
(97, NULL, 'g2H5WKHVpl', 'UqSNUDtchO', 'roGwBa6DAh', NULL, '3vtQKEx7JP', 'ZuGeR8xu9Z', 'qfJlYKW5fv', 'sySyfjH98R', 'HP', '4', '3', 'OVgeoF6PkC@gmail.com', 'Pending', 'mXcnORVMY4', 222.00, 0.00, 1, 1, NULL, '2023-06-15 23:37:57', '2023-09-02 00:36:31'),
(98, NULL, 'PKej0Eu05m', 'VL15t6cn2i', 'OTDAGswCM9', NULL, 'PRqtuEnBbb', 'EBB5GwnbLI', 'QWxVXLdEAS', '2vXh8G2gUs', 'g9', '3', '6', 'yhoYPnsZAJ@gmail.com', 'Pending', 'behYcJp51n', 222.00, 0.00, 1, 1, NULL, '2023-10-15 12:09:35', '2023-09-02 00:36:31'),
(99, NULL, 'wIssg8r0AW', 'nwBbTclj5O', 'DrjaMjAeLZ', NULL, 'Fp4trRYRNN', 'pQ0C5XH8dQ', 'fPGbVhC0uQ', 'G0KhVblTWB', 'SR', '4', '2', 'Mg3OWpm7Ny@gmail.com', 'Pending', '9KFlTn2QTL', 222.00, 0.00, 1, 1, NULL, '2023-12-16 08:33:38', '2023-09-02 00:36:31'),
(100, NULL, 'Dx5gnYyliY', '3IRyyu0Vli', 'Tns1Ib1tYW', NULL, 'I9f280moQ8', 'vokF1lXIDQ', 'Lnnb1wkseF', '4zvaiOfJGA', 'qS', '4', '10', 'eCeFDSmXTB@gmail.com', 'Pending', 'WZYi6boy4h', 222.00, 0.00, 1, 1, NULL, '2023-12-30 01:22:04', '2023-09-02 00:36:31'),
(101, NULL, '5d4VsjGwVk', '0oD30UgVoN', 'bXgzzT51mB', NULL, '1c58oQ6Ny7', 'CIOhYYwEpL', 'dsAJszbIw4', 'vU49tX8rK3', 'bM', '2', '2', 'Lkgqb0Y03E@gmail.com', 'Pending', '3LFQcRnUNv', 222.00, 0.00, 1, 1, NULL, '2023-02-06 21:39:39', '2023-09-02 00:36:31'),
(102, NULL, 'g51nat5N8h', 'aQQbPKySr6', 'lrR75gVFm6', NULL, 'QSHdMaFLpm', 'ncc2AvE4lh', 'Jjo7ieMwYp', 'nlVEkTVpYy', 'Mr', '1', '1', 'c1yAfHb5ct@gmail.com', 'Pending', 'EHzJWivJvG', 222.00, 0.00, 1, 1, NULL, '2023-03-15 00:32:10', '2023-09-02 00:36:31'),
(103, NULL, 'H6Nc8qe4Xd', 'iCFQCVyn6k', 'bqxczcST0y', NULL, 'd8aN0g8toz', '9jHvvUjV4V', 'EmTtpzFvpC', 'lfvZGhWuh5', 'Vj', '4', '8', 'rOTDTnRwPd@gmail.com', 'Pending', '6WqiHaPsgK', 222.00, 0.00, 1, 1, NULL, '2023-07-02 22:42:49', '2023-09-02 00:36:31'),
(104, NULL, 'E7XI0Hmqmt', '29kbzk9rFN', 'MG4RzzIS0f', NULL, 'MVJXi2pSSx', '9A4uJ1hk3m', 'kLukBHxqcn', '5y8UF6OLAx', 'KR', '2', '6', 'wNvKuG7q87@gmail.com', 'Pending', '7sn7OU6GPB', 222.00, 0.00, 1, 1, NULL, '2023-02-06 12:16:51', '2023-09-02 00:36:31'),
(105, NULL, 'XK6436TEzZ', 'QqRHpNMecc', 'zbn4XWhVNd', NULL, 'tFZZB4kYJ3', 'IBxomgCcRn', 'me43OT8pBB', 'ktmt1woMip', 'un', '3', '1', 'J3W7ZUtlFg@gmail.com', 'Pending', '1964RW3LiT', 222.00, 0.00, 1, 1, NULL, '2023-11-19 22:53:15', '2023-09-02 00:36:31'),
(106, NULL, 'brvxl4JC3y', 'tZny9tqf2m', 'lEmMf9jZiu', NULL, '9iRWU6X8O7', 'KJppM8d93j', 'tbP6d8Qlr9', 'fchKrjeDCK', '5U', '2', '8', '3oMyI6iRZg@gmail.com', 'Pending', 'rE3iaiF2s1', 222.00, 0.00, 1, 1, NULL, '2023-04-03 23:29:27', '2023-09-02 00:36:31'),
(107, NULL, 'D4R0KFuogr', 'lD4De2lJlF', 'ZyBf2QsmK9', NULL, 'jkJfBDlxW6', 'kkmXZE2vcM', 'SJS4bY4OVA', 'pk7rflWNtM', 'nX', '3', '8', 'FP1C2wEUyy@gmail.com', 'Pending', 'nG2ek6lc0S', 222.00, 0.00, 1, 1, NULL, '2023-08-13 18:25:35', '2023-09-02 00:36:31'),
(108, NULL, 'dWEzM6Rkr1', 'loXvfUEm2P', 'uHQrxvnENC', NULL, 'tgRQvpJAJW', 'jL9lGeylzv', '0WP8a5daGz', 'BjdqTBPoGM', 'Ji', '3', '1', 'fsRkOYOsuL@gmail.com', 'Pending', 'jIkKEr0IG4', 222.00, 0.00, 1, 1, NULL, '2023-03-19 20:26:19', '2023-09-02 00:36:31'),
(109, NULL, 'ONXm4QHFU7', 'sbXcWOURKt', '49SxQ1BImD', NULL, '1fbKyfR6HR', 'Ox6ks0HaEj', 'b8gw80Xr8E', 'kKzGfbDV61', 'LS', '1', '9', 'xfIPLE530d@gmail.com', 'Pending', 'MQt7RFmaVR', 222.00, 0.00, 1, 1, NULL, '2023-12-13 10:42:52', '2023-09-02 00:36:31'),
(110, NULL, 'd4XRaNVTyf', 'XmbaMXBjPO', 'fnPaDZTMPe', NULL, '5YQJ4B7XLg', '16AOQdHgQY', 'HfTyUqqDSb', 'VS85RZnxt9', 'vG', '1', '1', 'cmJjivNILA@gmail.com', 'Pending', 'PKkRDsUY68', 222.00, 0.00, 1, 1, NULL, '2023-06-30 22:45:20', '2023-09-02 00:36:31'),
(111, NULL, '17intIPrhq', 'Sz4hci8kYf', 'uPRLyuyhN0', NULL, 'bdx0d2QMvk', 'kcTzQrRfPL', 'hvV4i8FYZI', 'WgVoaGlQWT', 'wH', '2', '8', 'PjAkEL879J@gmail.com', 'Pending', 'QxwT5fzj7D', 222.00, 0.00, 1, 1, NULL, '2023-10-26 10:25:03', '2023-09-02 00:36:31'),
(112, NULL, 'WzrL5z8nVy', 'Wu3KxlgSzR', 'L03LBd11r7', NULL, 'zySiZd3HtQ', 'ptJcr2j5Ch', 'g9lz2r2kip', 'NE0PVSBFVZ', 'pV', '1', '9', '1vRUey60ip@gmail.com', 'Pending', 'S4Ag2AIs9t', 222.00, 0.00, 1, 1, NULL, '2023-10-08 20:59:29', '2023-09-02 00:36:31'),
(113, NULL, '2VXc2UDbX1', 'cSs48xaSTB', 'BJQdyUkAy2', NULL, 'kCnGur4AJO', 'nuVkVyvWR1', 'ejKDl4MgHz', 'h52QIsC5jg', 'vx', '4', '5', 's73jMnwqL4@gmail.com', 'Pending', '0xsYv20u9W', 222.00, 0.00, 1, 1, NULL, '2023-10-13 06:17:01', '2023-09-02 00:36:31'),
(114, NULL, 'iuzeOn8KhD', 'XzMuEBOd3w', 'wITrCWbdG7', NULL, 'o9BeO5cyin', '9iPlaTcTp4', 'ev9mhCjWpC', 'yGdyviVI2E', 'wj', '1', '8', 'cRw9dq7Wq1@gmail.com', 'Pending', '2qZbktsAyQ', 222.00, 0.00, 1, 1, NULL, '2023-01-23 04:34:26', '2023-09-02 00:36:31'),
(115, NULL, '6DC4fhfw47', 'p8iSdH7005', '5EFcIU3H4b', NULL, 'HSXyaLq6Gb', 'kwENpovL9T', '67sgo3Q7pH', 'lZqXrinlNm', 'XW', '3', '2', 'hMPOqn5A0y@gmail.com', 'Pending', 'tV5WLshtPU', 222.00, 0.00, 1, 1, NULL, '2023-07-29 04:42:15', '2023-09-02 00:36:31'),
(116, NULL, 'rYtfyr2hlD', 'KiJd5VzOfw', 'ZJV3uuSfqD', NULL, 'Mnip6FjQxr', 'uZ3YG75dqG', 'xODeyEUWGU', 'cuB9RSizZQ', 'y4', '4', '2', 'WZz736uYSA@gmail.com', 'Pending', 'ZoAIFm5WU7', 222.00, 0.00, 1, 1, NULL, '2023-10-17 10:24:08', '2023-09-02 00:36:31'),
(117, NULL, 'acYPtDHlH1', 'y5hM5WuwP7', 'oCLWisH1Gd', NULL, 'GLit6wYb5C', 'bePYTmVyZJ', 'o6iW27ECjL', '5Vx8Ig5qqk', 'f4', '3', '8', '2YSckmc7RM@gmail.com', 'Pending', 'qYIcYaxBej', 222.00, 0.00, 1, 1, NULL, '2023-02-13 01:24:06', '2023-09-02 00:36:31'),
(118, NULL, 'w6lL247rdi', '2eZDBGnNdM', 'OzFuZvxkbJ', NULL, 'RIyh1dUyyr', 'fDBJNIx1Fq', 'uN8hp9oW9Z', 'tEWdgeBjOz', '5G', '2', '4', 'nGjmYQvd4o@gmail.com', 'Pending', 'IXTbnk6MbZ', 222.00, 0.00, 1, 1, NULL, '2023-12-28 19:50:52', '2023-09-02 00:36:31'),
(119, NULL, 'vn4dPNV3Pg', 'n2rIHpRWDZ', 'SK4S4ggEjl', NULL, 'zezxErCWO5', 'GbB45I0reS', 'i4Uy6HHidS', 'vF1ltvFpzY', 'Np', '3', '4', 'YJ10q1TFxy@gmail.com', 'Pending', 'oHp3rHUImb', 222.00, 0.00, 1, 1, NULL, '2023-04-24 00:16:22', '2023-09-02 00:36:31'),
(120, NULL, 'LdfzVye2Fj', 'LopTeQoImJ', 'FxJQHH6nmg', NULL, 'QETPrcKvsK', '0qjkhw6Kqf', 'hn65NRCVOq', 'gwvovO3hFt', 'xU', '4', '9', 'ZOEdCg6em7@gmail.com', 'Pending', '5PNqCwwqB7', 222.00, 0.00, 1, 1, NULL, '2023-05-17 23:35:46', '2023-09-02 00:36:31'),
(121, NULL, 'rEDDiUunk1', 'NegMhUZV8t', 'bq2OGu3IUW', NULL, 'ySSXYmmbmd', '2hNl9IUJbd', 'gWEN8CTdlf', 'SYSvZZNvuV', 'uO', '3', '8', 'w7GuxNEkKr@gmail.com', 'Pending', 'VBoBEbmAS4', 222.00, 0.00, 1, 1, NULL, '2023-02-06 07:03:05', '2023-09-02 00:36:31'),
(122, NULL, 'jLagIii15n', 'E7k1ksLKIx', 'CqlIgzm4DN', NULL, 'J3UbCYDJiF', 'lTwtAHhQvy', '2nBJQvFlIQ', 'pmGyIo60zb', 'OX', '2', '8', 'WCA1cfNHCO@gmail.com', 'Pending', 'Wjs7p9b26t', 222.00, 0.00, 1, 1, NULL, '2023-05-12 09:22:05', '2023-09-02 00:36:31'),
(123, NULL, 'YpCxbnVtdD', '6chSAiYlpQ', 'eBGttIBXon', NULL, '3vJ1GPH7o1', 'tAcBVq7zMa', 'WiAclkBBNW', 'LvBtEOyFae', 'fN', '3', '2', '16IRwpmHnf@gmail.com', 'Pending', 'LLpIBWyIAZ', 222.00, 0.00, 1, 1, NULL, '2023-06-28 04:55:11', '2023-09-02 00:36:31'),
(124, NULL, 'HCZwgZ6xn5', 'oEXwOQvGZQ', 'o2A9SY1WPP', NULL, 'N6yFxIdnog', 'u4w8OHiGMp', '0NuLc1umDz', 'NCClKkb8WT', '06', '1', '1', 'q3rDqW1Sy9@gmail.com', 'Pending', 'YhRAnKRg8F', 222.00, 0.00, 1, 1, NULL, '2023-03-04 08:45:48', '2023-09-02 00:36:31'),
(125, NULL, '0ZOSSz8Kqi', 'uUhjFwd8gO', 'PoAWJ3SCCf', NULL, 'QJCRoEuR8N', 'ZpmLjkvX6Q', 'yHPZWd0sKT', '0gkSnCfL2P', 'Km', '2', '2', 'WaErRylsSe@gmail.com', 'Pending', 'CpcPNxettN', 222.00, 0.00, 1, 1, NULL, '2023-10-05 21:09:02', '2023-09-02 00:36:31'),
(126, NULL, 'NDUBnqX8AR', '2jvLXZhoQS', 'AZ6HAdnOtL', NULL, 'vUC7t8TEOO', 'IEZCCPnNxE', 'LStcE724r0', 'HBUMNsOFVI', 'na', '1', '10', 'uhaZjPQl7b@gmail.com', 'Pending', 'hUSZPKZEZq', 222.00, 0.00, 1, 1, NULL, '2023-01-11 17:16:14', '2023-09-02 00:36:31'),
(127, NULL, '5TJbMIGUij', '4qnwJOJiVR', 'ID1lwC3bCj', NULL, 'PEtzooNbnm', 'I92ayNUmPm', 'EQfxK1jUEQ', 'rIxqN0jXqu', 'jm', '2', '6', 'BsnuZtuVl4@gmail.com', 'Pending', 'DOPqD0j2HV', 222.00, 0.00, 1, 1, NULL, '2023-03-09 21:13:22', '2023-09-02 00:36:31'),
(128, NULL, 'wppuqW7wR9', 'PKGtBgPP40', '0IZfXxIPgc', NULL, 'thfVgFf6AC', '8L6FAv9oap', 'jrdwmo2Mll', 'TrDOVHCCl8', 'UM', '3', '9', 'mLhSyseTrh@gmail.com', 'Pending', '6hseJlirlu', 222.00, 0.00, 1, 1, NULL, '2023-04-19 19:40:14', '2023-09-02 00:36:31'),
(129, NULL, '2dw0WRmqZi', '2XdEbW9uge', 'L5cxgCg99L', NULL, 'HbUEiJNR6d', 'GOqJUk6PoJ', 'A50YbJo3oK', 'RbE3scRG0n', 'NX', '3', '5', 'RxPiKf7ZzF@gmail.com', 'Pending', 'zDzPTemm3S', 222.00, 0.00, 1, 1, NULL, '2023-09-09 22:39:48', '2023-09-02 00:36:31'),
(130, NULL, 'tbkGAZxxiW', 'QJypNZ62IC', 'NIJxxPDXjs', NULL, '0sBDlxsEGz', 'z5dSeERMfC', 'DAUI720yXy', '4YxYSfjX70', 'Dt', '4', '4', 'CrHnRwxXF2@gmail.com', 'Pending', 'T8kF1NlH0r', 222.00, 0.00, 1, 1, NULL, '2023-03-14 22:29:27', '2023-09-02 00:36:31'),
(131, NULL, 'LXM4fcWYrn', 'A9q7eencGu', '7bU7Re8MWP', NULL, 'SZvRb3weW6', 'J9IfHLPaa1', 'U0KRqlMXPt', '0OdgkDZnrZ', 'tk', '4', '4', 'CGjvhXlpL0@gmail.com', 'Pending', 'OuwqshxgPL', 222.00, 0.00, 1, 1, NULL, '2023-12-18 14:54:21', '2023-09-02 00:36:31'),
(132, NULL, 'O8xeNxH5Xw', 'CJ6P19bPn8', 'zOlwL5LbAT', NULL, 'ulyxN9oX1t', '5spOhSnjHJ', 'hb1kqTJCp3', 'B9Nj31Mxlv', 'Ky', '2', '1', 'UhHMG12jEN@gmail.com', 'Pending', '1JbakCTgfD', 222.00, 0.00, 1, 1, NULL, '2023-09-21 17:05:37', '2023-09-02 00:36:31'),
(133, NULL, 'Y6oSzhpsTm', 'swN5wbBnB7', 'V6395KwHyQ', NULL, 'E8Z1I2nckQ', 'XZA6XT8MrL', 'RkrsKEgXe7', 'QXQiwhMltV', 'LZ', '4', '2', 'OtBW34s1Ha@gmail.com', 'Pending', 'OS8Pz9QqLg', 222.00, 0.00, 1, 1, NULL, '2023-01-07 03:45:03', '2023-09-02 00:36:31'),
(134, NULL, 'yiNegk0Jvt', 'RDXNlOHyNG', 'rKLgBsMqdq', NULL, 'pyRJcJeGsf', 'cKpBg93vVl', '4tI6bruyK2', 'nE1ujD3Qa7', 'pe', '1', '8', '6iParAZqC4@gmail.com', 'Pending', 'RYq1aveT9L', 222.00, 0.00, 1, 1, NULL, '2023-04-14 06:51:22', '2023-09-02 00:36:31'),
(135, NULL, 'CPgnFVfvkt', 'GuzdG3NYl3', 'G9MGltVVh0', NULL, 'er6td0etGt', 'rvzBA9fcmK', '7NnL4GtLvO', 'NfCGltBoxS', 'S1', '3', '5', 'gxgzZAtBoA@gmail.com', 'Pending', 'gN0qlVrSrT', 222.00, 0.00, 1, 1, NULL, '2023-01-12 01:57:21', '2023-09-02 00:36:31'),
(136, NULL, '96z6ESeADe', 'UQEcEWr9nc', 'dgqmiiWGXs', NULL, 'PhbdoDe0fm', 'k7Od9N7i7u', 'wkmW1I4nth', 'X6FSK1SGjP', 'YN', '4', '1', 'zIWgw596a3@gmail.com', 'Pending', 'JEBvDtPapj', 222.00, 0.00, 1, 1, NULL, '2023-11-17 04:41:58', '2023-09-02 00:36:31'),
(137, NULL, 'ZT9NiKRNjD', 'jotioeRqD2', '3Payrr0iCp', NULL, 'lYJTrpKNlq', 'ZdhxKaByO9', '35MzLb9kQg', 'mNT3QLbp0w', '0l', '4', '2', 'YfZJqJu43C@gmail.com', 'Pending', 'B2X6n3NaDB', 222.00, 0.00, 1, 1, NULL, '2023-04-14 12:08:24', '2023-09-02 00:36:31'),
(138, NULL, '1ulrHyuqsa', '66xB1wC4Qo', '44urMq210W', NULL, 'c4pmr0Lxid', '05vAS00pyB', 'DbpEkByJhN', 'TpMO5mCF6V', 'ZW', '1', '3', 'YMmSn9slM3@gmail.com', 'Pending', 'HRP4RrjWXM', 222.00, 0.00, 1, 1, NULL, '2023-05-01 22:34:39', '2023-09-02 00:36:31'),
(139, NULL, 'n1mS5yAHOn', 'HxXBb7AKqu', 'HPdqcWcRDy', NULL, 'zvgQ4sifno', 'pdoYS00LI3', 'RsnAsd8Q9H', 'ha3SJ2nULX', '5z', '2', '6', 'eGrWazJxxE@gmail.com', 'Pending', 'yQ3BrLaKW1', 222.00, 0.00, 1, 1, NULL, '2023-05-24 10:52:37', '2023-09-02 00:36:31'),
(140, NULL, 'l5K2Fxxbc5', 'F0qFDGtU7L', 'lmN4M7HtzA', NULL, 'Bq3y8OJwLl', 'flpqmJKeFM', 'jxzoIQoTiJ', 'F6E8Wp6BMl', 'DE', '4', '1', 'l8DaWDpV6m@gmail.com', 'Pending', '55FQ4cPxaX', 222.00, 0.00, 1, 1, NULL, '2023-02-13 23:27:59', '2023-09-02 00:36:31'),
(141, NULL, 'AmM9JnEb80', '3DVyBcvwWI', 'D308wnZmgC', NULL, 'VN3OyClovu', 'S8Akx1Bdnf', 'jo30hvXboC', '6qOC7OG9ho', 'y7', '3', '5', 'mGMHH2ravB@gmail.com', 'Pending', 'yuf2DsDhlD', 222.00, 0.00, 1, 1, NULL, '2023-04-02 17:26:11', '2023-09-02 00:36:31'),
(142, NULL, 'GLAk4Yt6pm', 'VTRHMujKEH', 'JN7AqaOJVX', NULL, 'c6qtU0ij4s', 'OA59J6BQfj', 'bpKrf4qgdA', 'C3kexKFTdr', 'gv', '4', '6', '8j4dcbgvGU@gmail.com', 'Pending', '8z8knmTCsP', 222.00, 0.00, 1, 1, NULL, '2023-10-24 22:42:44', '2023-09-02 00:36:31'),
(143, NULL, 'PogMdBYj17', 'qvXlbvUicN', 'Nady88mPVV', NULL, 'AxCMPIra3r', 'ag9yTLcNBS', 'EgbqGMjb5m', 'wWJrY97XSk', '2a', '1', '3', '1gAozuLG2f@gmail.com', 'Pending', 'uE42BncQZW', 222.00, 0.00, 1, 1, NULL, '2023-09-12 23:42:31', '2023-09-02 00:36:31'),
(144, NULL, 'ip1sGGeu7a', 'JgfEaQVEIx', '5lokgwlH5y', NULL, 'dOSwAgZQht', 'l6TZLVXYr7', '4xkMpwFUul', 'YaOUHUSlAd', 'Ui', '1', '7', '87p1gdX9mi@gmail.com', 'Pending', 'WV0DHq7PwW', 222.00, 0.00, 1, 1, NULL, '2023-01-16 03:08:16', '2023-09-02 00:36:31'),
(145, NULL, 'VNFCY6aHc1', 'Edc2JGBnDX', 'guoticHRtq', NULL, 'OgYppIBNH9', 'z0itaB1TFt', 'J5IIIkFL4o', 'njIruG32T3', 'pp', '4', '4', 'OJ48KYeext@gmail.com', 'Pending', 'q5fTdOaOwe', 222.00, 0.00, 1, 1, NULL, '2023-02-28 09:22:53', '2023-09-02 00:36:31'),
(146, NULL, 'tUT31rzOqk', 'JiguPh0lro', 'aK1ws0yC4z', NULL, 'uy4M2usujR', 'hVgG09X969', 'YUeyF7MpyJ', 'YNA0P9h8RZ', 'Hl', '2', '6', '7ioYHk4ppJ@gmail.com', 'Pending', 'WzmSXN0vQn', 222.00, 0.00, 1, 1, NULL, '2023-12-25 13:16:58', '2023-09-02 00:36:31'),
(147, NULL, '8H9feDvRpr', 'LZgjt88ABf', 'YDowOecTxI', NULL, 'GnNgkJIgeQ', 'IdHXFmsvAw', 'ovN3UkFjUf', 'f9zUrz3Qy5', 'VT', '4', '8', 'O3bNn0Rb3x@gmail.com', 'Pending', 'zAOos6VQGc', 222.00, 0.00, 1, 1, NULL, '2023-12-28 19:42:39', '2023-09-02 00:36:31'),
(148, NULL, '1NUkPtWgPH', 'vY1tHaHunP', 'TITrvV8l6e', NULL, 'gzxOOaSfTQ', 'fMCELwAFOT', '4jmh7iaikM', 'ovhdlRvz5S', '4z', '3', '8', 'N6439JQfui@gmail.com', 'Pending', 'dpbfhhZbcX', 222.00, 0.00, 1, 1, NULL, '2023-10-03 16:57:02', '2023-09-02 00:36:31'),
(149, NULL, 'c8uG1MIXcs', 'clnVuxJ34d', '88XuxNm7L3', NULL, 'cPzLtNDEuq', 'QGJv8Zq3Ow', 'CxJ0WUaBax', '0BrsDSnwLs', 'yL', '1', '10', '0Lye69wNqM@gmail.com', 'Pending', '4AAj6zEZQU', 222.00, 0.00, 1, 1, NULL, '2023-08-11 10:29:46', '2023-09-02 00:36:31'),
(150, NULL, 'giy0C7fWsS', 'uUjDskwlFb', 'PuV5gqbWAw', NULL, 'dgvRdWdFaP', 'vDU95RdCBp', 'Y6jTgk0lEe', 'rIbircVCkI', '3u', '3', '4', 'K0FiFOMjMJ@gmail.com', 'Pending', 'G2wWlqub1w', 222.00, 0.00, 1, 1, NULL, '2023-10-05 18:21:16', '2023-09-02 00:36:31'),
(151, NULL, '5U3NIZNQiS', 'Dy58ZmtfJO', 'yiZtRuXnGv', NULL, 'LTpbd52URk', 'aIJjAXaSNm', 'L3vgFHRt36', 'gKUHWzGFDV', 'ok', '1', '8', 'pCiAFaYPCM@gmail.com', 'Pending', 'MlJg5x9RZe', 222.00, 0.00, 1, 1, NULL, '2022-06-17 10:28:16', '2023-09-02 00:48:05'),
(152, NULL, 'w6clPEfRul', '1qtQVj6f9p', 'HAv2CzZYeW', NULL, 'hu7vLkVsve', 'Zp4dRtz9Yy', 't16xSt2q57', 'XWY8pLyDBT', 'qD', '2', '8', '7Wlh0InCE9@gmail.com', 'Pending', 'gauS6muvwU', 222.00, 0.00, 1, 1, NULL, '2022-12-29 23:53:43', '2023-09-02 00:48:05'),
(153, NULL, 'W7KsK5ajRW', 'TYZESgEEfH', '01XGtltXCS', NULL, '3IceMmwEqo', '31zIErfcn9', 'D6l14HNw2F', 'RPYBnanUJy', 'TO', '2', '7', 'bIj5oJjj5W@gmail.com', 'Pending', '3Ul84hGGNI', 222.00, 0.00, 1, 1, NULL, '2022-11-25 05:28:51', '2023-09-02 00:48:05'),
(154, NULL, 'P3VzOqVwO2', 'JTeMKpc2b7', 'eyyfB1M6YU', NULL, 'tphgzVqslT', 'Vu2PM18pWD', 'k4DzsMdpmO', 'J9udJf0sN2', 'aV', '3', '10', '0qnnyLBwCe@gmail.com', 'Pending', 'aT0zIAIpV5', 222.00, 0.00, 1, 1, NULL, '2022-10-31 19:45:10', '2023-09-02 00:48:05'),
(155, NULL, '7dc876mbYA', 'XlRN7D1MGq', 'PjBPqgnTlx', NULL, 'W2B3Km5tKy', 'mtfnXSDLrk', 'HVCcz45G3v', 'Iwe4W6whAt', '1g', '3', '8', 'HbbXE2tK1u@gmail.com', 'Pending', '2dn0FBcbxf', 222.00, 0.00, 1, 1, NULL, '2022-09-19 11:26:16', '2023-09-02 00:48:05'),
(156, NULL, 'ELIxNJXJRd', 'uUgtVOEbzc', 'mSVYzGb3Et', NULL, 'P3sUFpAysQ', '1lOIOo0AA0', 'FAljolv6XG', 'B0nDq5418p', '2k', '1', '5', 'T1JToJi8sC@gmail.com', 'Pending', '3oq2QlsJxO', 222.00, 0.00, 1, 1, NULL, '2022-11-16 18:40:20', '2023-09-02 00:48:05'),
(157, NULL, 'dLcD6FNttF', 'ttnvordvNZ', 'K3v7DfY09X', NULL, 'I4D4sel00V', 's2zRvuovZ3', 'eUfW79A8oV', 'jJanfgk7if', 'lu', '1', '2', 'WxLds0iGpj@gmail.com', 'Pending', 'rCyH2CIUyK', 222.00, 0.00, 1, 1, NULL, '2022-02-01 16:35:01', '2023-09-02 00:48:05'),
(158, NULL, '6rK2oQMQEo', 'wX0PmICTrn', 'J34m1cTq4Q', NULL, '0flO4j6Bq4', 'Znux7PEjxS', 'xX9qd1TbvH', 'Va2t8ooVt4', 'Ix', '1', '2', '4azWESQlS8@gmail.com', 'Pending', 'UlFGpXabYJ', 222.00, 0.00, 1, 1, NULL, '2022-08-30 01:15:06', '2023-09-02 00:48:05'),
(159, NULL, 'QKfnMjAfIo', '6S6ADOAIUq', 'xzAuGCKZIx', NULL, '0ix2Iqhkfw', '2ADJecPKuD', 'QuahGRjcWk', 'kAjycoBbIu', 'u9', '3', '4', 'vhuV8sheXg@gmail.com', 'Pending', 'BYQOmDauml', 222.00, 0.00, 1, 1, NULL, '2022-08-19 08:47:28', '2023-09-02 00:48:05'),
(160, NULL, 'S24Ey19Kag', 'LOqyMtT4cg', '6DcgqsoqMQ', NULL, '32eqGIeQBz', 'iXCBUaviSh', 'FsoQRZBd1u', 'wNkV72XZpU', 'Ky', '4', '5', 'vrz9EVfjAI@gmail.com', 'Pending', '29E9CWLft2', 222.00, 0.00, 1, 1, NULL, '2022-03-24 17:44:43', '2023-09-02 00:48:05'),
(161, NULL, '0Iimhf4C8t', 'RUf7a6Tw4A', 'FIQ7CVfAmH', NULL, 'M4yOTUrsIH', 'VLcNeUXpSf', 'aO1TeQ2uCa', 'NiYf79v2qH', 'fd', '4', '4', 'rv4oWR5Y07@gmail.com', 'Pending', 'en9bqdB1Tz', 222.00, 0.00, 1, 1, NULL, '2022-11-22 19:52:04', '2023-09-02 00:48:05'),
(162, NULL, 'FR1ubf5Ks2', 'g6YDpNcfIt', 'yNoePq9W9h', NULL, '6p2qnUE0Bn', 'uIDdjt0Y0O', 'Lz5n6CgaJi', 'bBQDXHpWMv', 'KW', '1', '3', 'uLUDbJ3bZJ@gmail.com', 'Pending', 'Idk3y52VWR', 222.00, 0.00, 1, 1, NULL, '2022-08-10 16:10:13', '2023-09-02 00:48:05'),
(163, NULL, 'LecPsMuUSR', 'nvTuw25iNc', 'dLU3FRqm59', NULL, 'uSA9k1Nyy9', '5ZNPOSZhgy', '3Wrv4LeG08', 'E6ZesUz2C4', '4c', '4', '9', 'Js3J1OjHWR@gmail.com', 'Pending', 'RrmuBePjOr', 222.00, 0.00, 1, 1, NULL, '2022-12-29 14:18:25', '2023-09-02 00:48:05'),
(164, NULL, 'yaJT8ZcOYi', '4njZvcPVOw', 'f5TbOSk75A', NULL, 'SZUvH2qRMU', 'GEE8Z04W28', 'Q6JRQWyfyv', 'JFDvFcdNff', 'BO', '2', '1', 'ZHcCpzHH7o@gmail.com', 'Pending', 'sshf3lWgEY', 222.00, 0.00, 1, 1, NULL, '2022-06-24 09:53:37', '2023-09-02 00:48:05'),
(165, NULL, 'BJhSosB7vv', '2hBI7VAgQY', 'LGag1jiMGe', NULL, 'kdMSFgx9JB', 'SGLdzSozZD', 'yt8TgpWMFl', 'OEOaxSEJYw', 'jh', '3', '2', 'nLEtS69aFn@gmail.com', 'Pending', 'fxGhM4odG9', 222.00, 0.00, 1, 1, NULL, '2022-04-29 15:36:23', '2023-09-02 00:48:05'),
(166, NULL, 'jEVIcil5B8', '7AAaZkRFsv', 'ZaOdvkcqNz', NULL, 'mfTao3knYz', 'ldjgsb3s6L', 'fWDiKwvABQ', 'HJ5tJLWaBI', 'MM', '4', '5', 'aoESC41mDe@gmail.com', 'Pending', 'gKWGANSaRo', 222.00, 0.00, 1, 1, NULL, '2022-09-28 02:02:11', '2023-09-02 00:48:05'),
(167, NULL, 'sFOBfl9Fjk', 'DnAzJ6ZjXw', 'WA0tmUPIbR', NULL, '4M41PzkdMT', 'Kgepmo0GWD', 'gNA7QJbxrp', 'KNN5AmRhCa', 'wF', '1', '7', 'sEgPZMbAPP@gmail.com', 'Pending', '8kBxnYb2Vk', 222.00, 0.00, 1, 1, NULL, '2022-10-01 08:06:14', '2023-09-02 00:48:05'),
(168, NULL, 'Cl0jIR0Fp7', 'SJvqPF6wvQ', 'WZA43verQc', NULL, 'I1DlBkjY94', 'I19o2Ef8Mw', 'ITCadISYLN', 'kYDXgLMGNe', 'Y2', '2', '1', 'LvU9UrKuI1@gmail.com', 'Pending', 'Y4Xf8vUzoY', 222.00, 0.00, 1, 1, NULL, '2022-04-01 23:29:47', '2023-09-02 00:48:05'),
(169, NULL, 'AA2eSuuY3J', '43qvnooC81', 'ooRwq5FHne', NULL, 'hWl6t5t83v', '3wLqAA4siP', 'NxX9WzdAkc', 'i4WDn2ARE9', 'As', '1', '9', 'CvRtGGuY3O@gmail.com', 'Pending', 'DS4kOrBxEs', 222.00, 0.00, 1, 1, NULL, '2022-09-12 07:33:34', '2023-09-02 00:48:05'),
(170, NULL, 'HOIq2t8W1a', '4c5UaqVzjM', 'OFN21jr480', NULL, 'h7rw6qyq5n', 'n3SZpvvS0n', 'kwxLuPj7Wh', 'Xb1oDhwJcZ', 'ce', '4', '2', 'AAT3hJd0kz@gmail.com', 'Pending', 'eo2mUKG1Q6', 222.00, 0.00, 1, 1, NULL, '2022-06-21 18:45:01', '2023-09-02 00:48:05'),
(171, NULL, '4u1EH2dIHa', 'n7oeBYhxq6', 'YcNhoHE8MS', NULL, 'xUTntqeF9M', 'ZvyPAX5Utq', '8nDcrQaQEj', 'SbT6NVjr4i', 'Ts', '1', '2', 'x75kmCjIHd@gmail.com', 'Pending', 'YY6Y66IV4w', 222.00, 0.00, 1, 1, NULL, '2022-04-07 10:48:57', '2023-09-02 00:48:05'),
(172, NULL, 'jwAuB2Clmr', 'blEULys8SA', 'kFDCmjA2mH', NULL, 'E247Osp5gc', 'fS9ocK3eLt', 'mHSsqDWzMn', 'VCv7QKV6cd', 'TC', '1', '6', 'rMP63q0KCE@gmail.com', 'Pending', 'e4A9O4EMXu', 222.00, 0.00, 1, 1, NULL, '2022-09-18 17:20:13', '2023-09-02 00:48:05'),
(173, NULL, 'wdPfwFMwrO', 'DGiHPjlDHK', 'BptCII3KSK', NULL, 'pAK4w9sPTj', 'kKujuhUTWX', 'Yvg5nXGkTV', 'HsoR3MzBTg', 'tW', '4', '6', 'CXpnBMqOMq@gmail.com', 'Pending', 'MjCcDT4YYi', 222.00, 0.00, 1, 1, NULL, '2022-03-15 07:12:26', '2023-09-02 00:48:05'),
(174, NULL, 'ZrM4MuZgvp', '4fps0jaSLI', '1DmLuazEF4', NULL, 'wJvh3ZVr5U', 'lWcqtZX2eQ', 'E1BN9C75sK', 'KxMV7ctJFw', 'Fw', '3', '3', 'RN0YzGcNti@gmail.com', 'Pending', 'mi8PgNcPpO', 222.00, 0.00, 1, 1, NULL, '2022-11-28 15:45:39', '2023-09-02 00:48:05'),
(175, NULL, '3JJmidEIVV', 'ERwwQTLpUg', 'j0MEt1rh3h', NULL, '8sl6vEOGoS', 'ohRCbXtQPE', '9r6ebdJ2zG', 'tgltCLhnZP', 'ri', '1', '5', 'sfXgbTW7Cn@gmail.com', 'Pending', 'fQTmKQqla2', 222.00, 0.00, 1, 1, NULL, '2022-11-16 08:35:08', '2023-09-02 00:48:05'),
(176, NULL, '1CdhpzOos0', 'S65S6Wr7NM', 'zz6lz9aRFo', NULL, 'vZwh0b0AXG', '4PJ8Hw4KoM', 'PwMvxoNiBg', 'wHVluO7b6X', 'zr', '1', '9', 'MoevkBhckf@gmail.com', 'Pending', 'vmDcidmIxp', 222.00, 0.00, 1, 1, NULL, '2022-11-17 07:00:24', '2023-09-02 00:48:05'),
(177, NULL, 'XrGENeoHxf', 'GiZv9oXDw7', 'HmeoRddCZq', NULL, '08ZwJzGHss', 'SA6Hradj4L', 'OrDuIOueMc', 'LZlgyHAMrS', 'Ss', '3', '7', 'TLVcHcbino@gmail.com', 'Pending', 'DIVn6OU5Dn', 222.00, 0.00, 1, 1, NULL, '2022-01-23 21:48:39', '2023-09-02 00:48:05'),
(178, NULL, 'PmCbgl2vex', 'bczF1EBLoZ', 'lughIHC1Fr', NULL, 'Yy4IscEljT', 'ZzD9TVh0lt', 'AoVNN6gWrU', 'lS2GHVBHfI', 'rL', '2', '9', 'sFtJiAE2Rv@gmail.com', 'Pending', 'cUlwNFaSfG', 222.00, 0.00, 1, 1, NULL, '2022-08-14 02:13:13', '2023-09-02 00:48:05'),
(179, NULL, 'swW7AMTdGL', 'LEAy5tScfy', 'ygVVKR8T1J', NULL, 'J2kwiAp80I', '612edwP9ra', 'Prwchj6Qz2', '0i6AKGvfxS', 'J0', '2', '4', 'GtIwxvZcHw@gmail.com', 'Pending', 'EDc7oRHcGT', 222.00, 0.00, 1, 1, NULL, '2022-12-09 14:29:33', '2023-09-02 00:48:05'),
(180, NULL, 'QRwkk9qtXK', 'UkOZuNUa8g', 'ueKvlgYt5C', NULL, '0ZeWFZfnkd', 'ircEzK7ybJ', 'CTusjSxyqg', 'x36FZoeV9X', 'SG', '4', '6', '3ZV7u3ttnO@gmail.com', 'Pending', 'Iltt4bQZ56', 222.00, 0.00, 1, 1, NULL, '2022-10-15 21:15:18', '2023-09-02 00:48:05'),
(181, NULL, 'Kaaxmtj02X', 'U8H4DTpwXs', 'qrssFqaI6I', NULL, '4G80kzrUEi', 'SA1eQ4G8Gt', 'YbeEBSX6s4', '8xfGnyGqX8', 'p6', '4', '5', 'NdrJOuZTjj@gmail.com', 'Pending', 'Zjq3DcpSDg', 222.00, 0.00, 1, 1, NULL, '2022-01-05 11:17:15', '2023-09-02 00:48:05'),
(182, NULL, 'Hr47ehKGMn', 'MsJYwgtFUf', 'c5rcP7e3a2', NULL, '207TZwCfzb', 'I7HGkrdhiU', 'Nh3DkYoONf', '3UtRHRXB2b', '97', '2', '9', 'olJJag0FKc@gmail.com', 'Pending', 'xOyRAozYH7', 222.00, 0.00, 1, 1, NULL, '2022-01-24 04:29:59', '2023-09-02 00:48:05'),
(183, NULL, 'Y8t300D4XB', '94LAEy1Xct', '76oXCzt1Oc', NULL, 'jovFTTxNBl', 'vCrSGtIwie', 'uedrJ4bJt5', 'OAsA0cQzNj', '7N', '3', '9', 'cV34TGxp5v@gmail.com', 'Pending', 'gQBD5yWrq0', 222.00, 0.00, 1, 1, NULL, '2022-12-24 03:48:51', '2023-09-02 00:48:05'),
(184, NULL, 'RbSZNCIsAQ', 'nCfW89T8Xv', 'BIfE7IOwg6', NULL, 'hiPHNW59IV', 'PxUkcFEJrH', 'W4f0ZYyohl', 'oDXrOtWvuh', 'Xv', '4', '4', 'EbaezZZ7Os@gmail.com', 'Pending', 'ja3Gd5ksn3', 222.00, 0.00, 1, 1, NULL, '2022-01-30 10:09:34', '2023-09-02 00:48:05'),
(185, NULL, 'qIeJKi8MWe', 'BnGkOhRfM7', 'wmxeRvCwHU', NULL, 'BQbYZdQSAj', 'q0AIqM0oXn', 'eDT3LCfXt4', 'Nkj48u4rka', 'Nm', '4', '4', 'acQJbWA9ep@gmail.com', 'Pending', 'MDB0LTuIuL', 222.00, 0.00, 1, 1, NULL, '2022-12-27 15:36:57', '2023-09-02 00:48:05'),
(186, NULL, 'iKKHqc87BO', 'mvPAqlOZez', 'hIjEibrVAI', NULL, 'S5BTQbi7nJ', '3SYw0FeNBf', 'it8DYNP3Ve', 'RVWiRCu9Bl', 'dG', '3', '5', 'j1thmTDUEU@gmail.com', 'Pending', 'JaJpNUdIVl', 222.00, 0.00, 1, 1, NULL, '2022-07-05 21:16:34', '2023-09-02 00:48:05'),
(187, NULL, 'jFjvEGZGo8', 'LLctMsUsaE', 'vlfuWnBiXr', NULL, 'OwpoNGnW9y', 'takUtR25Pd', 'CLAiea2pFB', 'PBerg2ePB3', 'E7', '4', '1', 'DQrN7oGMeG@gmail.com', 'Pending', '0CvBfdXNtl', 222.00, 0.00, 1, 1, NULL, '2022-05-14 05:21:53', '2023-09-02 00:48:05'),
(188, NULL, '85aSUqsMBf', 'n8ZfWW95J7', 'pUbr4ZJo5V', NULL, 'G0HCzvnBEv', 'bBHjJddPlb', 'Fm4gZ55L4c', 'KeDxrDb2XT', 'sh', '2', '3', 'dqKwt6wk1a@gmail.com', 'Pending', 'GiE9zttqiw', 222.00, 0.00, 1, 1, NULL, '2022-08-10 09:28:13', '2023-09-02 00:48:05'),
(189, NULL, '8sP800L0fq', 'skCIkolkBA', 'juSplPNiAd', NULL, 'HgVReGqlwR', 'JhuiZvFN3j', 'pWFTPK7QH8', 'aL9U3ee0Sk', 'be', '2', '4', '489r9Pz3nd@gmail.com', 'Pending', 'ZYFTNTN1np', 222.00, 0.00, 1, 1, NULL, '2022-09-07 14:13:11', '2023-09-02 00:48:05'),
(190, NULL, 'TSY75jmmdx', '4QxtFhGbBP', '0KXYJSf5QA', NULL, 'c74crJDRsl', '7RpoQWYjis', 'FSXqeMc6d2', 'sMq5Z12nRO', 'jf', '3', '2', 'PaxQge4qir@gmail.com', 'Pending', 'KcCC5gft6y', 222.00, 0.00, 1, 1, NULL, '2022-01-07 20:18:29', '2023-09-02 00:48:05'),
(191, NULL, 'CK54oyMy7X', '1D7MmpO8zI', '0fVMnvHTVT', NULL, '3URri7CA1f', '3JicoZSm1V', 'okJwccSI1b', 'hQ0Tvgz1w0', 'bd', '3', '1', 'w6PWy4QBJr@gmail.com', 'Pending', 'xnmEntDb3N', 222.00, 0.00, 1, 1, NULL, '2022-03-16 20:45:05', '2023-09-02 00:48:05'),
(192, NULL, 'KMd0gUNK65', 'u7ngmoEuTl', 'jeviETePjC', NULL, 'esD705dcPb', 'UrFHp1XdfN', 'N1kgoNHATZ', '68oW5sWVJu', 'ra', '1', '4', 'Uj2WpjxZf9@gmail.com', 'Pending', 'kswBmwpIw7', 222.00, 0.00, 1, 1, NULL, '2022-06-20 06:25:16', '2023-09-02 00:48:05'),
(193, NULL, 'P73duGm4Ee', '5VxjiZJOhE', '75DzeiOvGO', NULL, 'fIDvTAinv2', 'HBI2e0W5aZ', 'x9Bg42bBUG', 'Ub2KzOtX4D', 'rX', '2', '1', 'DLB4n59Vr2@gmail.com', 'Pending', '4GI6QlLbeF', 222.00, 0.00, 1, 1, NULL, '2021-12-31 23:53:13', '2023-09-02 00:48:05'),
(194, NULL, 'FhoPTI54Bx', 'LNkHYACPMb', '7kvN9WX98E', NULL, 'TxWbpkTfuI', 'uv1gUl92L6', 'ojhlfPwp79', 'dOfZ0SLGHE', 'Rp', '4', '3', 'eF9MMT3DAR@gmail.com', 'Pending', '9zXuAh5WLN', 222.00, 0.00, 1, 1, NULL, '2022-07-01 10:19:57', '2023-09-02 00:48:05'),
(195, NULL, 'mgC9tSXepP', 'b1w8Nz48MW', 'bngtCUV8zZ', NULL, 'lE6343eYt2', 'wUdYsLvtJi', 's2XnzYmzZ6', 'nBGCrjrD2Q', 'Vx', '4', '9', '7AAwgM130Z@gmail.com', 'Pending', 'kzmgA21nP4', 222.00, 0.00, 1, 1, NULL, '2022-10-26 06:50:59', '2023-09-02 00:48:05'),
(196, NULL, 'jAGPCHXWxr', 'xGX1BzEmGQ', 'ctSVGETmHm', NULL, 'X0OEmRn1AC', 'mPC9YeVKxZ', 'kJkpp0atcc', 'qew94YojDS', 'X5', '3', '3', 'trYRrYxLaj@gmail.com', 'Pending', 'wyEV36pQhD', 222.00, 0.00, 1, 1, NULL, '2022-03-17 16:20:06', '2023-09-02 00:48:05'),
(197, NULL, 'EJI13XB634', 's5SmWJuRiW', 'VU0LMLIXoR', NULL, 'ngDBjSrz8X', 'hfQjLdC3Zq', '4R7ces4a4B', '4bJTZ8qVbi', 's3', '1', '6', '0HUq4NtaC6@gmail.com', 'Pending', '0rTcndkMSM', 222.00, 0.00, 1, 1, NULL, '2022-09-23 12:56:24', '2023-09-02 00:48:05');
INSERT INTO `orders` (`id`, `user_id`, `f_name`, `l_name`, `company_name`, `city`, `address`, `street`, `town`, `country`, `code`, `post_code`, `phone`, `email`, `status`, `note`, `total_price`, `applied_coupon`, `agree`, `payment_method`, `deleted_at`, `created_at`, `updated_at`) VALUES
(198, NULL, 'kMEj61txSo', 'IsG4pWLLcq', 'nFIyey2kXk', NULL, 'EtnYnzVaha', 'zX3oTQJMC0', 'bKm2R7vZhI', 'fdQ17RcaY5', '7b', '1', '8', 'm5cHCxVrKl@gmail.com', 'Pending', 'qavOs9Eqmu', 222.00, 0.00, 1, 1, NULL, '2022-10-07 21:03:37', '2023-09-02 00:48:05'),
(199, NULL, 'zb2WhYQnOS', 'VHA8SpTpCA', 'xpZa8VhInL', NULL, 'kxtfu64hqT', 'K06XXzgAq6', 'LsNPu6OLp5', 'XPQwXTe0rT', '3P', '4', '1', 'w0FSPZVZZn@gmail.com', 'Pending', '4bi6cOxq8w', 222.00, 0.00, 1, 1, NULL, '2022-09-05 10:40:38', '2023-09-02 00:48:05'),
(200, NULL, 'OwZL6AuBS0', 'KqD8YZ6cqr', 'lhwcTVq4Vz', NULL, 'QsnVMDHAGh', 'PbWmLFwE28', 'zN1fahRkxu', 'ipX3qSXrZy', 'cF', '2', '7', 'viAgNDTGNv@gmail.com', 'Pending', 'hIpTf0pnhk', 222.00, 0.00, 1, 1, NULL, '2022-02-14 11:19:57', '2023-09-02 00:48:05'),
(201, NULL, '0wxfvlY0Pd', '5h6K6duq5v', '27p62XYloB', NULL, 'cqsbJ1wYyC', 'i0B4Zzro6R', 'j4XcK4R4un', 'O4zCzu0ALL', '6Y', '4', '3', '4LIuVciXZY@gmail.com', 'Pending', 'sJ7RiyCFOC', 222.00, 0.00, 1, 1, NULL, '2022-07-08 04:37:10', '2023-09-02 00:48:05'),
(202, NULL, 'SgDs1TwQtv', 'MgJFLaTWvK', 'ow6HJjydGn', NULL, '8cbLjqcYw9', '6BNPh3Rspz', 'IqSO7Ld5fm', 'KcqRRfQ68f', 'V9', '4', '2', 'B80FuvlUFX@gmail.com', 'Pending', 'zJHxT6eiEV', 222.00, 0.00, 1, 1, NULL, '2022-05-05 22:13:11', '2023-09-02 00:48:05'),
(203, NULL, 'dQYnW9FVdS', 'NnP5Fh62Lv', 'rGTvmSdTar', NULL, 'OzBTc1qCsV', 'HrWzd4g77j', 'KwkQdd82K9', 'mWatYPzPlA', 'Wa', '3', '8', 'yLiPoZPIue@gmail.com', 'Pending', '0DK4kbzPqS', 222.00, 0.00, 1, 1, NULL, '2022-03-03 23:27:09', '2023-09-02 00:48:05'),
(204, NULL, 'K3GDqCAYyX', 'TdfnDKFDbV', 'Ijd93WBHEj', NULL, 'UXKOl3vnd7', 'QTAFaAUnLl', '5SRyS0INtA', 'qFyDiwARSb', 'id', '2', '4', '58PoDvqPkH@gmail.com', 'Pending', 'wei2ccFkoI', 222.00, 0.00, 1, 1, NULL, '2022-05-23 08:02:16', '2023-09-02 00:48:05'),
(205, NULL, 'RNVnu2dYZJ', '9sZD4dDypg', 'Vro3I6hFb4', NULL, '9GeNIAh6lX', '1NifMeYxvu', 'mRGyzb1txu', 'lcFISuG8CZ', 'tG', '4', '6', 'W9q5f4IC8O@gmail.com', 'Pending', 'ayxiERqgnZ', 222.00, 0.00, 1, 1, NULL, '2022-03-06 23:20:50', '2023-09-02 00:48:05'),
(206, NULL, 'EVu0339e7C', '0IbcJAmWL0', 'dZEBifCbZU', NULL, 'ycQV6dRhVY', 'dP7BjNHiIt', 'hffKxwzLis', 'bnCod4bMlr', 'Z5', '1', '9', 't57EY4SBdd@gmail.com', 'Pending', '3G94Iae3NV', 222.00, 0.00, 1, 1, NULL, '2022-10-04 08:04:12', '2023-09-02 00:48:05'),
(207, NULL, 'Ci7FADGUxR', 'KJzQ3LVifn', 'hKF0pGBIwv', NULL, 'VUzXDT6pr9', 'L4ReuWnYdC', 'OwD6XgVPAO', 'vHVeIFAonu', 'Yp', '3', '7', 'YM5wGrTezp@gmail.com', 'Pending', 'D44Xswu0QK', 222.00, 0.00, 1, 1, NULL, '2022-03-24 04:46:27', '2023-09-02 00:48:05'),
(208, NULL, 'vzKtIQCSol', 'JuGKNckayD', '3tCp59B1XL', NULL, 'eOu5To76x6', 'aTrpZkAKUb', '8geS79VOuH', 'Fexx9yimFO', 'JC', '3', '3', 'agxKZfBER8@gmail.com', 'Pending', 'hEOxk8jI6y', 222.00, 0.00, 1, 1, NULL, '2022-03-07 04:51:22', '2023-09-02 00:48:05'),
(209, NULL, 'vEX8sOcjuN', 'RcSM2y7e6g', 'qRBZeLihfj', NULL, 'pTgsofwdt4', 'cWRn8prz3K', 'e65zzcYnCg', '5gk7jeyVrb', '67', '3', '10', '9hZZUQfd2E@gmail.com', 'Pending', '80Svi6blTH', 222.00, 0.00, 1, 1, NULL, '2022-04-12 08:59:33', '2023-09-02 00:48:05'),
(210, NULL, '3CRs1HlHFi', 'XNqUYHGqTS', 'FewNUJWRFL', NULL, 'sU14F9NyTX', '0iCbJOarGu', 'rFsqvZXuPk', 'mfBkM88T1W', 'jV', '4', '5', 'RSkx7Y1me4@gmail.com', 'Pending', 'emFs9yvzcj', 222.00, 0.00, 1, 1, NULL, '2022-11-28 10:53:29', '2023-09-02 00:48:05'),
(211, NULL, 'yXwVDOR7Hi', 'pgCDRWXqx5', 'mGNWzmcGrl', NULL, 'p697IyeQ2a', '4IGOjJWtfQ', 'jb1pVda5Ji', '4AJteh8nOp', 'SX', '4', '9', 'YZzkBORgI1@gmail.com', 'Pending', 'C4hwRjWeHk', 222.00, 0.00, 1, 1, NULL, '2022-07-14 11:27:19', '2023-09-02 00:48:05'),
(212, NULL, 'JmsDcKOTPB', 'QKV9Shm4gd', 'uJO1K0LRLw', NULL, 'HVVuCVKZxg', 'ZWOWA6RMfQ', 'WaNgflSe90', 'XynSs6r2xp', '5Z', '3', '3', 'Wp2Tit9Nh3@gmail.com', 'Pending', 'Mhj9KXFOZy', 222.00, 0.00, 1, 1, NULL, '2022-05-04 03:56:58', '2023-09-02 00:48:05'),
(213, NULL, '1jDg3yzvRe', 'pG91pw01dS', 'gVDdPFc4Ma', NULL, 'L0cuoGUi8o', 'EwB0P6Nj4p', 'caIXktPziP', 'Wk15GNm6PW', 'Uw', '1', '4', 'IL2ISe86N9@gmail.com', 'Pending', 'PF7IOUVRgp', 222.00, 0.00, 1, 1, NULL, '2022-11-19 12:35:56', '2023-09-02 00:48:05'),
(214, NULL, 'wVbhYxLM3H', 'np29ZhP8vQ', 'P7GI9339g1', NULL, 'bU3OlaqOvm', '3Q6xUxuM71', '2cEm7UeO1c', 'nL2mjRJxv4', '34', '1', '6', 'mpAR3sfEww@gmail.com', 'Pending', 'Moa6je7zcJ', 222.00, 0.00, 1, 1, NULL, '2022-02-17 18:40:11', '2023-09-02 00:48:05'),
(215, NULL, '5uC238ybYP', 'MH8g4ZOdd4', 'jjvCLS5MUR', NULL, 'c0Uj3CVbHp', 'bKhm7SH28v', 'nmURLXFpI5', 'Aqrv2RoA6U', 'pG', '4', '8', 'NZbESqPYbU@gmail.com', 'Pending', 'lAjirMrTNb', 222.00, 0.00, 1, 1, NULL, '2022-07-07 01:56:53', '2023-09-02 00:48:05'),
(216, NULL, 'TNpVK6AVTi', 'NnqagWcaEX', 'JQ7hPUaT21', NULL, 'H1Suu0SbPr', 'F9Y19GcAo7', 'BKNBlVSqN4', 'oZGIRNQDPF', 'hS', '3', '9', '9I5WR6KRD6@gmail.com', 'Pending', 'kRfhBNcgln', 222.00, 0.00, 1, 1, NULL, '2022-12-23 16:12:54', '2023-09-02 00:48:05'),
(217, NULL, '3pjIkNVUsO', 'na0ur0cVWT', 'p9OA1aOhpp', NULL, 'Onm7OaZXY2', 'qllbzjvR18', 'dJm5Vp0zqM', '7Fa0BPo2uD', 'ko', '2', '4', 'IOepDfpP8l@gmail.com', 'Pending', 'ZLjjXJb0ij', 222.00, 0.00, 1, 1, NULL, '2022-12-06 16:58:01', '2023-09-02 00:48:05'),
(218, NULL, 'HRkGdAwtlm', '8xQg2i0Gcc', '2qEENCdb6z', NULL, 'S2F8uqtgLL', 's2yz7mB0F1', 'ReK5228YSK', 'Tihjz9NFGi', 'WV', '1', '10', 'BT6onzivHE@gmail.com', 'Pending', 'QCFo5niUdy', 222.00, 0.00, 1, 1, NULL, '2022-02-13 11:03:20', '2023-09-02 00:48:05'),
(219, NULL, 'CluxxxlP9j', 'bxIFGBqF07', 'VDloIw1RTB', NULL, 'xpNDnb5Zgc', 'rBWoSw2Hht', 'rBCoqrc9ob', 'jNtYNnVGhL', 'Ej', '4', '7', 'B4SsPU7GMT@gmail.com', 'Pending', 'Plr0HvT1g3', 222.00, 0.00, 1, 1, NULL, '2022-04-01 02:50:13', '2023-09-02 00:48:05'),
(220, NULL, 'MUyLG4bBmg', 'E14ng6HNyn', 'NYBSjxmlEc', NULL, 'ISb3kaluQm', 'Rg8aagNkwI', 'LE1GjVu26J', 'wYeVUV0bzL', '5a', '1', '1', 'aRkUSUzJLA@gmail.com', 'Pending', 'pLLiUwRZBb', 222.00, 0.00, 1, 1, NULL, '2022-12-11 12:47:04', '2023-09-02 00:48:05'),
(221, NULL, 'mKyRAwzENs', 'QW2J4jSjOX', 'E0Zcqlt7Rp', NULL, 'baSVkdNk7Q', 'mQX83MGAwy', 'RcHB2jIMNi', 'TS1jOP5cjQ', 'PU', '1', '2', 'xzc5MOpm2s@gmail.com', 'Pending', 'sWvOf73wJu', 222.00, 0.00, 1, 1, NULL, '2022-01-12 16:24:02', '2023-09-02 00:48:05'),
(222, NULL, 'WHw1cjhh5U', 'w9gBA79X12', 'LtFJ94SF1U', NULL, 'DEkcNltAPr', '5NE7pbFI5p', 'pgyxPCFeFw', '2YY2d5KOGN', 'fU', '3', '10', 'NJp6Kz7Dtj@gmail.com', 'Pending', 'ZQZ5PjoPV5', 222.00, 0.00, 1, 1, NULL, '2022-08-01 09:46:29', '2023-09-02 00:48:05'),
(223, NULL, 'JgxrtJ4XyD', 'LlUhLMxkjW', 'Bwg8wFhhmj', NULL, 'POKr65lFcZ', '4ipqLPGImo', '1XcDXyuSQU', '20oNzxRMDb', 'wm', '3', '9', 'LfvdzsWcLW@gmail.com', 'Pending', 'Ns7xrl0lJM', 222.00, 0.00, 1, 1, NULL, '2022-03-24 21:54:45', '2023-09-02 00:48:05'),
(224, NULL, 'ujX5NO9gQu', 'xHtdOVsb3d', '0sK7SC0zRO', NULL, 'Vr1q45UDcI', '39eW71t3pT', 'tEsaj2cHKa', '6Bmuxt3n3O', 'GX', '3', '8', 'Og2QfnMfUk@gmail.com', 'Pending', '8icgPBE7iI', 222.00, 0.00, 1, 1, NULL, '2022-01-31 00:54:38', '2023-09-02 00:48:05'),
(225, NULL, 'gAQVtGSBMx', 'T183bBAp7V', 'EloNq2C0K1', NULL, 'GuSU94CpBD', 'gOqaFQnOpP', 'IZQt35mMHH', 'kua7stlAWM', 't6', '3', '3', 'eRwwIbtfLk@gmail.com', 'Pending', 'NoXN04DQL6', 222.00, 0.00, 1, 1, NULL, '2022-08-30 03:08:23', '2023-09-02 00:48:05'),
(226, NULL, 'oWVc2Nkshk', 'vf72pPHN9t', 'USEXv4PGVO', NULL, 'eMvF7cD9bO', 'ukIauHzUOv', 'dMmMcEqFYP', 'tAmeUD6c7D', 'qU', '1', '1', 'tRocK7960L@gmail.com', 'Pending', '22menSytyN', 222.00, 0.00, 1, 1, NULL, '2022-11-06 12:18:45', '2023-09-02 00:48:05'),
(227, NULL, 'QbgownAEFx', 'g30QCm3ZKy', 'bAKZFoV7dw', NULL, 'iZYddFR5Jz', 'gAW6CCo9LJ', 'dHocsbcuHt', 'qfFI6SQ90E', 'au', '2', '1', 'K7MxhgOFQv@gmail.com', 'Pending', '82KoVPgtB8', 222.00, 0.00, 1, 1, NULL, '2022-06-22 20:19:21', '2023-09-02 00:48:05'),
(228, NULL, '2rXX0TE2Gm', 'VjEgJvFdP5', 'GPCbbZSUOX', NULL, 'jZZbVRw6CN', 'JzdqXKPceg', 's5i1VV0AMQ', 'Q5DaGxEnpz', 'mp', '3', '10', 'hAlRsqaHO6@gmail.com', 'Pending', 'fJEX0lR3P8', 222.00, 0.00, 1, 1, NULL, '2022-01-16 19:11:41', '2023-09-02 00:48:05'),
(229, NULL, 'KmY3P2SObP', 'V3YcdC9bjn', 'mtYqd9E81d', NULL, 'z1wyt0hOGZ', 'NHAchWFRDp', 'nXQLbHeArt', 'IhPq1Yz8Pw', 'wf', '1', '9', 'O4jM9IInFT@gmail.com', 'Pending', 'vdoaLX1OH4', 222.00, 0.00, 1, 1, NULL, '2022-06-09 16:38:03', '2023-09-02 00:48:05'),
(230, NULL, 'Q185gTzWa2', 'dy1YrknITV', 'jiz7AA4aEr', NULL, '13gPmvEdMF', 'bCvBYy9Tzq', 'gcZmZVKIx1', '0XBfweLML0', 'Rp', '2', '9', 'g2CRhepYmf@gmail.com', 'Pending', 'PFagc5X0Qp', 222.00, 0.00, 1, 1, NULL, '2022-01-17 15:35:08', '2023-09-02 00:48:05'),
(231, NULL, 'DyiYWx5PJF', 'GuAZlJ6ZWI', 'puKXhf6ZXK', NULL, 'dAjd3amKcx', 'NPx022J6R5', 'uDwjnPMy1H', 'YHqjycy8hk', 'cu', '2', '4', 'zCYDUSB4CB@gmail.com', 'Pending', '64HhyWCfAL', 222.00, 0.00, 1, 1, NULL, '2022-04-06 19:09:05', '2023-09-02 00:48:05'),
(232, NULL, 'DsEQbKyYAR', '6egVF4N3Pp', 'SeroobmrXM', NULL, 'R66aBwkQZX', 'f3jHkDevkW', 'XL4zeCjjnG', 'usqEdIQ9SJ', 'az', '2', '2', 'WYuCYYTAOK@gmail.com', 'Pending', 'XTTC5ZsLzq', 222.00, 0.00, 1, 1, NULL, '2022-05-16 08:32:19', '2023-09-02 00:48:05'),
(233, NULL, 'sFLWvxry7U', 'KwNDrDSajG', 'nkXn3t3YwZ', NULL, 'xzYVxE7Nmt', 'kyla6fqIID', 'wrcSX3zShg', 'L5kPjcL1pq', 'oJ', '3', '3', '4Ec4h9vaPU@gmail.com', 'Pending', 'dlAXJWbrlo', 222.00, 0.00, 1, 1, NULL, '2022-07-21 22:01:26', '2023-09-02 00:48:05'),
(234, NULL, 'Y0k4wllUXM', 'XTX2HJ54zY', 'MtBxYSb6RO', NULL, 'sW9dpsb7qx', 'lY5dFtRKzN', 'V2SPEwnZeI', 'BSFSpxMwPn', 'vV', '4', '4', 'bP6hMmMyW9@gmail.com', 'Pending', 'FDtdeJfuzq', 222.00, 0.00, 1, 1, NULL, '2022-02-15 22:37:18', '2023-09-02 00:48:05'),
(235, NULL, 'JsW4QFFDMW', 'M8QYwhhbut', 'Ge382TatoM', NULL, 'tbuEINmvYe', '0tsopMNIs2', 'YWliJGtA0y', 'Vy1uxAWRgs', 'A4', '1', '6', 'veYfeUI8g7@gmail.com', 'Pending', 'bHtLkQwHZL', 222.00, 0.00, 1, 1, NULL, '2022-08-11 22:51:32', '2023-09-02 00:48:05'),
(236, NULL, '7JOutfYZoB', 'xG3D3DU6mm', 'qTG17AD3Sq', NULL, 'x8xPvwQVJ7', 'KabzaIRNEo', '9XxNurns3Z', 'YkolXnVasq', 'Pv', '2', '1', '7j1sC7xDsG@gmail.com', 'Pending', 'bw1HvsarT2', 222.00, 0.00, 1, 1, NULL, '2022-07-10 20:57:42', '2023-09-02 00:48:05'),
(237, NULL, 'm23R9fPQxF', '00366G80nm', 'uuwQS045zy', NULL, '8PZk0bjOXW', 'jLndkW9r5r', 'KwQ7MqF9am', 'CIpD5QE0n6', 'v1', '2', '1', 'BilXcBbpqH@gmail.com', 'Pending', 'JHSLSwFbP2', 222.00, 0.00, 1, 1, NULL, '2022-07-01 09:09:14', '2023-09-02 00:48:05'),
(238, NULL, 'BkAKwFGRkM', '3l1slgzf3G', 'WPtifPIQnm', NULL, 'Xa9aw4KnrS', 'fCCOfPDfs8', '6lRbrSBafM', 'aAX86FGNmk', '7r', '4', '1', 'OWORPglFMd@gmail.com', 'Pending', 'SD5p82IbWK', 222.00, 0.00, 1, 1, NULL, '2022-06-26 04:16:02', '2023-09-02 00:48:05'),
(239, NULL, 'zv9Mns5a81', 'D5KgJvhDAF', 'Cga6DP4mZn', NULL, 'uZfBU6ar1P', 'GyaeYiF0g5', '6UP8jQwgXB', 'KGqY9OFNcc', 'iX', '4', '7', '8O9Ol0YczX@gmail.com', 'Pending', 'RiRBBfc4D5', 222.00, 0.00, 1, 1, NULL, '2022-12-17 00:52:55', '2023-09-02 00:48:05'),
(240, NULL, 'cKSr0hgkjv', 'CD8av4sYll', 'b96s7qFhxE', NULL, 'JtPOfpZk3S', 'wwiyU5OfEj', 'VoY4tpSdc6', '1pdfjsactn', 'QO', '1', '5', '3ok1EN8yQZ@gmail.com', 'Pending', 'qLdFpaGdeY', 222.00, 0.00, 1, 1, NULL, '2022-03-16 23:58:39', '2023-09-02 00:48:05'),
(241, NULL, 'qfxgDT43p7', 'cNmUCzOCjt', '3mtf2177dQ', NULL, 'LXnuVGGvTJ', 'CuU6LHSOm5', 'M31RB4Mlko', 'Py0GThsNkJ', '4w', '2', '4', 'ZV97nV80wl@gmail.com', 'Pending', 'ucCAl7F3wB', 222.00, 0.00, 1, 1, NULL, '2022-07-16 11:45:42', '2023-09-02 00:48:05'),
(242, NULL, 'mx6Q6Y92kR', 'qiivUTAKOd', 'rAaQSYN1vB', NULL, 'w3TqHbgWxI', 'jmry3b5uAM', 'SWzq6vxJaS', '5ldA7R4g4w', 'Hb', '1', '1', 'zl2pNcw9Az@gmail.com', 'Pending', 'aUqf1AeLsy', 222.00, 0.00, 1, 1, NULL, '2022-07-24 10:11:47', '2023-09-02 00:48:05'),
(243, NULL, 'POApt9f5gw', 'SFtQPb5X4W', 'nOJzj0T6Ey', NULL, 'uiNPEOOw1g', 'fMgSSvuwyi', '8zswjrXMIa', 'K1lMdQFo19', '5C', '1', '4', 'BZBeIpQLE1@gmail.com', 'Pending', 'skXnJk2Xxx', 222.00, 0.00, 1, 1, NULL, '2022-07-30 17:39:46', '2023-09-02 00:48:05'),
(244, NULL, 'O23ZEnNetf', 'M6UxmevjoU', 'PjeNNnkgJn', NULL, '8QkDlP0a6l', 'sXuNMuCr2q', 'ihMrt7zxyy', 'yXIgybGCu7', 'xS', '2', '2', 'e1f5VKbGaK@gmail.com', 'Pending', 'HGyW56dxKJ', 222.00, 0.00, 1, 1, NULL, '2022-07-04 21:50:30', '2023-09-02 00:48:05'),
(245, NULL, '2z55qqpAqq', 'yUdQRLNER4', 'cZpINmHBYT', NULL, 'CF8vRqhUji', 'qykJgfFnIQ', 'N8kyKhywR7', 'khCicDRSxZ', 'cG', '3', '10', 'oNwuI3H2WE@gmail.com', 'Pending', 'a83HlStZC8', 222.00, 0.00, 1, 1, NULL, '2022-02-16 20:18:17', '2023-09-02 00:48:05'),
(246, NULL, 'APFyCnMSkM', 'FSo8VB5BcU', 'MxVIeUDDd3', NULL, 'q6ljXpc0uX', 'wLtbgn3WJA', 'TQGsTzHOsY', 'FIe01dOgmB', 'SR', '2', '4', 'jB08fKDyrN@gmail.com', 'Pending', 'afUzs8shA8', 222.00, 0.00, 1, 1, NULL, '2022-08-11 15:13:43', '2023-09-02 00:48:05'),
(247, NULL, 'F3Y9ugBNhi', 'h9QMxJSvZU', 'ZNY6UiLYJ1', NULL, 'ugW2xaBYgR', 'pXpOLLKCnf', 'VOc58r2enn', 'krDUn9SKba', 'DO', '2', '4', 'Yvg7GIZrID@gmail.com', 'Pending', 'fO3sUyc5Hf', 222.00, 0.00, 1, 1, NULL, '2022-12-08 08:53:37', '2023-09-02 00:48:05'),
(248, NULL, 'lyJ4sZNOiv', '4WXuvGMhbl', '2ptN0jwi4n', NULL, 'HVqch3Rjdv', 'npgllzHGEe', 'AFcXaX5R30', '6cDd0cpKye', 'vB', '2', '2', 'e9CxE1Hs1Y@gmail.com', 'Pending', 'e28r8zQc03', 222.00, 0.00, 1, 1, NULL, '2022-05-21 02:15:59', '2023-09-02 00:48:05'),
(249, NULL, 'ddS2eD79rp', 'DajA2rAalK', 'cEYt1WKksa', NULL, 'zTmtQefIxh', 'ldYDg57FO7', 'OR0jLdjNAY', 'tL9vxlqSCi', 'tu', '4', '5', 'Y5qa15a2BC@gmail.com', 'Pending', 'RubyaIsasA', 222.00, 0.00, 1, 1, NULL, '2022-01-27 05:45:10', '2023-09-02 00:48:05'),
(250, NULL, 'QNhmj3618U', '7anPdrcqiZ', 'arxwaN2jBg', NULL, 'ilVtl6M7OO', 'bLr09qLYn0', 'O1DTQXXVA5', 'IHeNH9g7zb', 'wF', '1', '2', 'vbSR3owGUU@gmail.com', 'Pending', 'elOixFkXY3', 222.00, 0.00, 1, 1, NULL, '2022-09-22 10:33:40', '2023-09-02 00:48:05');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
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
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
-- Indexes for table `orders`
--
ALTER TABLE `orders`
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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=251;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
