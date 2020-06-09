-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 05, 2020 at 08:28 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.3.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce-lara`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupon` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blog` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `other` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `report` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `return` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `setting` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stock` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` int(15) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `phone`, `email`, `email_verified_at`, `password`, `remember_token`, `category`, `coupon`, `product`, `blog`, `order`, `other`, `report`, `role`, `return`, `contact`, `comment`, `setting`, `stock`, `type`, `created_at`, `updated_at`) VALUES
(3, 'Admin', '123456789', 'admin@gmail.com', NULL, '$2y$10$rGym8UJIz6E551AZ0ntKK.FAfiaGJxy0kyuD58MR5IarCrMk4IEUy', NULL, '', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', 1, NULL, '2020-05-09 13:49:24'),
(4, 'Gulam', '12345789', 'gulam@gmail.com', NULL, '$2a$05$fturfinBv02YCwBrIPYS2Otms9nAIqUoyK5iA/kb.N5Y7RNLrA/EW', NULL, '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-05-02 18:16:58', NULL),
(6, 'khan1', '12345789', 'a12@gmail.com', NULL, '$2y$10$X4OHUvA/PLP8doTmrAhy..jYqWpZH67ACB7RXpamR3tFu.tp9i8ay', NULL, NULL, '1', NULL, NULL, '1', '1', '1', NULL, '1', '1', NULL, NULL, '1', 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `brand_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brand_logo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `brand_name`, `brand_logo`, `created_at`, `updated_at`) VALUES
(7, 'Sony', 'public/media/brand/120520_01_17_05.png', NULL, NULL),
(8, 'Rado', 'public/media/brand/120520_01_33_05.png', NULL, NULL),
(9, 'Lenovo', 'public/media/brand/120520_01_45_05.png', NULL, NULL),
(10, 'Assus', 'public/media/brand/120520_01_01_06.png', NULL, NULL),
(11, 'Adidas', 'public/media/brand/120520_01_14_06.png', NULL, NULL),
(12, 'Nike', 'public/media/brand/120520_01_37_06.png', NULL, NULL),
(13, 'Levis', 'public/media/brand/120520_01_49_06.png', NULL, NULL),
(14, 'Dell', 'public/media/brand/120520_01_01_07.png', NULL, NULL),
(15, 'Gucci', 'public/media/brand/120520_01_19_07.png', NULL, NULL),
(16, 'Cannon', 'public/media/brand/120520_01_41_07.png', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category_name`, `created_at`, `updated_at`) VALUES
(8, 'Mens Fashion', '2020-05-11 19:28:42', '2020-05-11 19:28:42'),
(9, 'Womens Fashion', '2020-05-11 19:28:52', '2020-05-11 19:28:52'),
(10, 'Childs', '2020-05-11 19:29:00', '2020-05-11 19:29:00'),
(11, 'Watch', '2020-05-11 19:29:07', '2020-05-11 19:29:07'),
(12, 'Furniture', '2020-05-11 19:29:20', '2020-05-11 19:29:20'),
(13, 'Electronics', '2020-05-11 19:29:26', '2020-05-11 19:29:26'),
(14, 'Health', '2020-05-11 19:29:36', '2020-05-11 19:29:36'),
(15, 'Beauty', '2020-05-11 19:29:43', '2020-05-11 19:29:43'),
(16, 'Sports & Outdoor', '2020-05-11 19:29:54', '2020-05-11 19:29:54'),
(17, 'Home & Living', '2020-05-11 19:30:04', '2020-05-11 19:30:04');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `phone`, `email`, `message`, `created_at`, `updated_at`) VALUES
(1, 'Gulam mohammad', '07703978839', 'gulammlkpg35@gmail.com', 'hello how are you', NULL, NULL),
(2, 'gulam', '232q3q4', 'a@gmail.com', 'dsfzdfzdgdf', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `coupon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `coupon`, `discount`, `created_at`, `updated_at`) VALUES
(2, 'test', '5', NULL, NULL),
(3, 'test2', '20', NULL, NULL),
(4, 'UDEMY', '25', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_10_05_052517_create_admins_table', 1),
(5, '2020_05_09_192947_create_categories_table', 2),
(6, '2020_05_09_193146_create_subcategories_table', 2),
(7, '2020_05_09_193236_create_brands_table', 2),
(8, '2020_05_10_161602_create_coupons_table', 3),
(9, '2020_05_10_173101_create_newslaters_table', 4),
(10, '2020_05_10_190108_create_products_table', 5),
(11, '2020_05_11_193700_create_post_category_table', 6),
(12, '2020_05_11_193747_create_posts_table', 6),
(13, '2020_05_13_031417_create_wishlists_table', 7),
(14, '2020_05_16_003748_create_settings_table', 8),
(15, '2016_06_01_000001_create_oauth_auth_codes_table', 9),
(16, '2016_06_01_000002_create_oauth_access_tokens_table', 9),
(17, '2016_06_01_000003_create_oauth_refresh_tokens_table', 9),
(18, '2016_06_01_000004_create_oauth_clients_table', 9),
(19, '2016_06_01_000005_create_oauth_personal_access_clients_table', 9),
(20, '2020_05_17_202323_create_orders_table', 10),
(21, '2020_05_17_202400_create_orders_details_table', 10),
(22, '2020_05_17_202430_create_shipping_table', 10),
(23, '2020_05_19_095515_create_seo_table', 11),
(24, '2020_05_21_112220_create_sitesetting_table', 12),
(25, '2020_05_21_112931_create_sitesetting_table', 13),
(26, '2020_06_01_051528_create_contact_table', 14);

-- --------------------------------------------------------

--
-- Table structure for table `newslaters`
--

CREATE TABLE `newslaters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `newslaters`
--

INSERT INTO `newslaters` (`id`, `email`, `created_at`, `updated_at`) VALUES
(1, 'gulam@gmail.com', '2020-05-10 18:43:12', NULL),
(2, 'gulammlkpg35@gmail.com', '2020-05-10 18:44:13', NULL),
(3, 'admin@gmail.com', '2020-05-10 18:44:22', NULL),
(5, 'amin@gmail.com', '2020-05-12 00:54:11', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'KAOdtYv9PxQPTGYYz8qgGZr2KJWVNw58GLewxofs', 'http://localhost', 1, 0, 0, '2020-05-16 14:25:35', '2020-05-16 14:25:35'),
(2, NULL, 'Laravel Password Grant Client', '23CHwpvhnVC5nTjrF06ip17EeWuvFFCQuTmtusPc', 'http://localhost', 0, 1, 0, '2020-05-16 14:25:35', '2020-05-16 14:25:35');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2020-05-16 14:25:35', '2020-05-16 14:25:35');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_type` varchar(155) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paying_amount` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blnc_transection` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stripe_order_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtotal` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vat` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `month` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `year` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_code` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `return_order` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `payment_type`, `payment_id`, `paying_amount`, `blnc_transection`, `stripe_order_id`, `subtotal`, `shipping`, `vat`, `total`, `status`, `month`, `date`, `year`, `status_code`, `return_order`, `created_at`, `updated_at`) VALUES
(12345, '8', 'stripe', 'Reconnecting to Wi-Fi', '500', NULL, NULL, '500', '50', '20', '570', '3', 'may', '5/18/2020', '2020', '12345', '2', '2020-05-18 03:40:09', NULL),
(12347, '8', 'oncash', NULL, NULL, NULL, NULL, '100.00', '10', '5', '115', '0', 'June', '01-06-20', '2020', '127921', '0', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders_details`
--

CREATE TABLE `orders_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `singleprice` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `totalprice` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders_details`
--

INSERT INTO `orders_details` (`id`, `order_id`, `product_id`, `product_name`, `color`, `size`, `quantity`, `singleprice`, `totalprice`, `created_at`, `updated_at`) VALUES
(12345, 12345, '12345', 'Phone', 'Red', 'L', '2', NULL, NULL, '2020-05-18 03:51:58', NULL),
(12347, 12347, '17', 'room1', 'red', 'L', '1', '100', '100', NULL, NULL);

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
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `post_title_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title_in` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details_en` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `details_in` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `post_title_en`, `post_title_in`, `post_image`, `details_en`, `details_in`, `created_at`, `updated_at`) VALUES
(1, 1, 'SPI Guide 11 for Ethical Affiliate Marketing\r\n', 'नैतिक संबद्ध विपणन के लिए SPI गाइड111', 'public/media/post/1666443706954589.jpg', '<p> \r\n             Here\'s an affiliate marketing secret: if you can become the connector between the audience you\'re building and the products and services they need to succeed, you can supplement your income, and potentially even make a full-time income from your recommendations. You just need to ask yourself, “How can I be serving my audience?”</p><p>thissi iis&nbsp;</p><p>\r\n             </p>', '<div class=\"tw-ta-container hide-focus-ring tw-lfl\" id=\"tw-target-text-container\" tabindex=\"0\" style=\"overflow: hidden; position: relative; outline: 0px; color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 0px; background-color: rgb(248, 249, 250);\"><pre class=\"tw-data-text tw-text-large tw-ta\" data-placeholder=\"Translation\" id=\"tw-target-text\" dir=\"ltr\" style=\"unicode-bidi: isolate; font-size: 24px; line-height: 32px; background-color: transparent; border: none; padding: 2px 0.14em 2px 0px; position: relative; margin-top: -2px; margin-bottom: -2px; resize: none; font-family: inherit; overflow: hidden; width: 277px; white-space: pre-wrap; overflow-wrap: break-word;\"><span lang=\"hi\">यहां एक संबद्ध विपणन रहस्य है: यदि आप अपने द्वारा बनाए जा रहे श्रोताओं और उत्पादों और सेवाओं के बीच संबंधक 11111बन सकते हैं, तो आपको अपनी आय का पूरक होना चाहिए, और संभवतः आपकी सिफारिशों से पूर्णकालिक आय भी हो सकती है। आपको बस अपने आप से पूछने की ज़रूरत है, \"मैं अपने दर्शकों की सेवा कैसे कर सकता हूं?\"</span></pre><div><span lang=\"hi\"><br></span></div></div><div class=\"tw-ta-container hide-focus-ring tw-nfl\" id=\"tw-target-rmn-container\" style=\"overflow: hidden; position: relative; outline: 0px; color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 0px; background-color: rgb(248, 249, 250);\"></div>', NULL, NULL),
(3, 4, 'Miss the time today 111\r\n', 'आज का समय बहुत याद आता है', 'public/media/post/1666442050584677.jpg', '<div>Today is very reminiscent of the time I was let go from my architecture job in 2008, during the recession. And although that was a hard time in my life, looking back, it was a huge blessing in disguise. It was only after considering it an opportunity, rather than a drawback, that things finally started to happen. It was the inspiration and help from others that I truly have to thank for how I ended up better on the other side of it.</div><div><br></div>', '<div><br></div><div><span style=\"color: rgb(34, 34, 34); font-family: arial, sans-serif; font-size: 24px; white-space: pre-wrap; background-color: rgb(248, 249, 250);\">यह क्या संभव बनाता है? ” यही वह प्रश्न है जो मैं एसपीआई मीडिया टीम, अपने छात्रों और किसी भी व्यक्ति को पेश कर रहा हूं, जो मुझे आता है, जो इन समय के दौरान थोड़ा चिंतित हो सकता है।\r\n\r\nआज उस समय की बहुत याद आती है जब मुझे मंदी के दौरान 2008 में अपनी वास्तुकला की नौकरी से जाने दिया गया था। और हालाँकि यह मेरे जीवन का एक कठिन समय था, लेकिन पीछे मुड़कर देखें, तो यह एक बहुत बड़ा आशीर्वाद था। यह केवल एक अवसर पर विचार करने के बाद था, एक कमी के बजाय, कि आखिरकार चीजें होने लगीं। यह दूसरों की प्रेरणा और मदद थी कि मुझे वास्तव में इस बात के लिए धन्यवाद देना है कि मैं इसके दूसरी तरफ कैसे बेहतर हुआ।\r\n\r\nमैं इन संसाधनों की उम्मीद कर रहा हूं, और इस वेबसाइट और ब्रांड पर आपके पास जो कुछ भी हमारे पास उपलब्ध है, वह आपकी मदद करेगा। हम यहां आपके लिए हैं।</span><br></div>', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `post_category`
--

CREATE TABLE `post_category` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name_en` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_name_in` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_category`
--

INSERT INTO `post_category` (`id`, `category_name_en`, `category_name_in`, `created_at`, `updated_at`) VALUES
(1, 'service  service', 'सेवा satkar', NULL, NULL),
(4, 'education', 'शिक्षा', NULL, NULL),
(5, 'partition', 'विभाजन', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_id` int(11) DEFAULT NULL,
  `brand_id` int(11) DEFAULT NULL,
  `product_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_quantity` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_color` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_size` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `selling_price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount_price` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `video_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `main_slider` int(11) DEFAULT NULL,
  `hot_deal` int(11) DEFAULT NULL,
  `best_rated` int(11) DEFAULT NULL,
  `mid_slider` int(11) DEFAULT NULL,
  `hot_new` int(11) DEFAULT NULL,
  `buyone_getone` int(30) DEFAULT NULL,
  `trend` int(11) DEFAULT NULL,
  `image_one` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_two` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_three` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `subcategory_id`, `brand_id`, `product_name`, `product_code`, `product_quantity`, `product_details`, `product_color`, `product_size`, `selling_price`, `discount_price`, `video_link`, `main_slider`, `hot_deal`, `best_rated`, `mid_slider`, `hot_new`, `buyone_getone`, `trend`, `image_one`, `image_two`, `image_three`, `status`, `created_at`, `updated_at`) VALUES
(4, 8, 5, 13, 'test1', '111', '10', '<div class=\"mod\" data-md=\"61\" lang=\"en-IN\" style=\"clear: none; padding-left: 16px; padding-right: 16px; color: rgb(34, 34, 34); font-family: arial, sans-serif;\"><div aria-level=\"3\" class=\"LGOjhe\" role=\"heading\" data-attrid=\"wa:/description\" data-hveid=\"CA8QAw\" style=\"overflow: hidden; padding-bottom: 20px;\"><span class=\"ILfuVd\" style=\"font-size: 16px; line-height: 1.375;\"><span class=\"e24Kjd\" style=\"padding: 0px 8px 0px 0px;\">A&nbsp;<b>product description</b>&nbsp;is the marketing copy that explains what a&nbsp;<b>product</b>&nbsp;is and why it\'s worth purchasing. The purpose of a&nbsp;<b>product description</b>&nbsp;is to supply customers with important information about the features and benefits of the&nbsp;<b>product</b>&nbsp;so they\'re compelled&nbsp;</span></span></div></div><div class=\"g\" style=\"line-height: 1.2; width: 600px; font-family: arial, sans-serif; margin: 0px; clear: both; padding-bottom: 16px; padding-left: 16px; padding-right: 16px; color: rgb(34, 34, 34);\"><div class=\"rc\" data-hveid=\"CA8QBQ\" data-ved=\"2ahUKEwjRsuyJkq3pAhWGcn0KHTd5AkgQFSgCMAd6BAgPEAU\" style=\"position: relative; clear: both; padding-bottom: 0px;\"></div></div>', 'blue,oink', 'L,M,X', '599', '20', 'https://www.youtube.com/watch?v=6Fm82lvAEGU', 1, 1, 1, 1, 1, NULL, 1, 'public/media/product/1666445152108685.png', 'public/media/product/1666445152336297.png', 'public/media/product/1666445152523857.png', 1, NULL, NULL),
(5, 8, 6, 12, 'test2', '112', '12', '<div class=\"mod\" data-md=\"61\" lang=\"en-IN\" style=\"clear: none; padding-left: 16px; padding-right: 16px; color: rgb(34, 34, 34); font-family: arial, sans-serif;\"><div aria-level=\"3\" class=\"LGOjhe\" role=\"heading\" data-attrid=\"wa:/description\" data-hveid=\"CA8QAw\" style=\"overflow: hidden; padding-bottom: 20px;\"><span class=\"ILfuVd\" style=\"font-size: 16px; line-height: 1.375;\"><span class=\"e24Kjd\" style=\"padding: 0px 8px 0px 0px;\">A&nbsp;<b>product description</b>&nbsp;is the marketing copy that explains what a&nbsp;<b>product</b>&nbsp;is and why it\'s worth purchasing. The purpose of a&nbsp;<b>product description</b>&nbsp;is to supply customers with important information about the features and benefits of the&nbsp;<b>product</b>&nbsp;so they\'re compelled to buy.</span></span></div></div><div class=\"g\" style=\"line-height: 1.2; width: 600px; font-family: arial, sans-serif; margin: 0px; clear: both; padding-bottom: 16px; padding-left: 16px; padding-right: 16px; color: rgb(34, 34, 34);\"><div class=\"rc\" data-hveid=\"CA8QBQ\" data-ved=\"2ahUKEwjRsuyJkq3pAhWGcn0KHTd5AkgQFSgCMAd6BAgPEAU\" style=\"position: relative; clear: both; padding-bottom: 0px;\"></div></div>', 'PINK,RED,BLACK', 'L,M,EX,ML', '200', '10', 'https://www.youtube.com/watch?v=6Fm82lvAEGU', 1, 1, 1, 1, 1, NULL, 1, 'public/media/product/1666445260925201.png', 'public/media/product/1666445261147327.png', 'public/media/product/1666445261364519.png', 1, NULL, NULL),
(6, 8, 8, 15, 'TEST3', '113', '13', '<div class=\"mod\" data-md=\"61\" lang=\"en-IN\" style=\"clear: none; padding-left: 16px; padding-right: 16px; color: rgb(34, 34, 34); font-family: arial, sans-serif;\"><div aria-level=\"3\" class=\"LGOjhe\" role=\"heading\" data-attrid=\"wa:/description\" data-hveid=\"CA8QAw\" style=\"overflow: hidden; padding-bottom: 20px;\"><span class=\"ILfuVd\" style=\"font-size: 16px; line-height: 1.375;\"><span class=\"e24Kjd\" style=\"padding: 0px 8px 0px 0px;\">A&nbsp;<b>product description</b>&nbsp;is the marketing copy that explains what a&nbsp;<b>product</b>&nbsp;is and why it\'s worth purchasing. The purpose of a&nbsp;<b>product description</b>&nbsp;is to supply customers with important information about the features and benefits of the&nbsp;<b>product</b>&nbsp;so they\'re compelled to buy</span></span></div></div><div class=\"g\" style=\"line-height: 1.2; width: 600px; font-family: arial, sans-serif; margin: 0px; clear: both; padding-bottom: 16px; padding-left: 16px; padding-right: 16px; color: rgb(34, 34, 34);\"><div class=\"rc\" data-hveid=\"CA8QBQ\" data-ved=\"2ahUKEwjRsuyJkq3pAhWGcn0KHTd5AkgQFSgCMAd6BAgPEAU\" style=\"position: relative; clear: both; padding-bottom: 0px;\"></div></div>', 'PINK,GREEN,YELLOQ', 'L,M,ML,SM', '150', NULL, 'https://www.youtube.com/watch?v=6Fm82lvAEGU', 1, 1, 1, 1, 1, NULL, 1, 'public/media/product/1666445388730388.jpeg', 'public/media/product/1666445389087601.jpeg', 'public/media/product/1666445389430071.jpeg', 1, NULL, NULL),
(7, 9, 8, 12, 'TEST4', '114', '14', '<div class=\"mod\" data-md=\"61\" lang=\"en-IN\" style=\"clear: none; padding-left: 16px; padding-right: 16px; color: rgb(34, 34, 34); font-family: arial, sans-serif;\"><div aria-level=\"3\" class=\"LGOjhe\" role=\"heading\" data-attrid=\"wa:/description\" data-hveid=\"CA8QAw\" style=\"overflow: hidden; padding-bottom: 20px;\"><span class=\"ILfuVd\" style=\"font-size: 16px; line-height: 1.375;\"><span class=\"e24Kjd\" style=\"padding: 0px 8px 0px 0px;\">A&nbsp;<b>product description</b>&nbsp;is the marketing copy that explains what a&nbsp;<b>product</b>&nbsp;is and why it\'s worth purchasing. The purpose of a&nbsp;<b>product description</b>&nbsp;is to supply customers with important information about the features and benefits of the&nbsp;<b>product</b>&nbsp;so they\'re compelled to buy.</span></span></div></div><div class=\"g\" style=\"line-height: 1.2; width: 600px; font-family: arial, sans-serif; margin: 0px; clear: both; padding-bottom: 16px; padding-left: 16px; padding-right: 16px; color: rgb(34, 34, 34);\"><div class=\"rc\" data-hveid=\"CA8QBQ\" data-ved=\"2ahUKEwjRsuyJkq3pAhWGcn0KHTd5AkgQFSgCMAd6BAgPEAU\" style=\"position: relative; clear: both; padding-bottom: 0px;\"></div></div>', 'PINK,WHITE,GREEN', 'L,M,EX,SM', '500', '20', 'https://www.youtube.com/watch?v=6Fm82lvAEGU', 1, 1, 1, 1, 1, NULL, 1, 'public/media/product/1666445493372237.jpeg', 'public/media/product/1666445493675517.jpeg', 'public/media/product/1666445493957853.jpeg', 1, NULL, NULL),
(8, 11, 11, 10, 'TEST5', '115', '15', '<div class=\"mod\" data-md=\"61\" lang=\"en-IN\" style=\"clear: none; padding-left: 16px; padding-right: 16px; color: rgb(34, 34, 34); font-family: arial, sans-serif;\"><div aria-level=\"3\" class=\"LGOjhe\" role=\"heading\" data-attrid=\"wa:/description\" data-hveid=\"CA8QAw\" style=\"overflow: hidden; padding-bottom: 20px;\"><span class=\"ILfuVd\" style=\"font-size: 16px; line-height: 1.375;\"><span class=\"e24Kjd\" style=\"padding: 0px 8px 0px 0px;\">A&nbsp;<b>product description</b>&nbsp;is the marketing copy that explains what a&nbsp;<b>product</b>&nbsp;is and why it\'s worth purchasing. The purpose of a&nbsp;<b>product description</b>&nbsp;is to supply customers with important information about the features and benefits of the&nbsp;<b>product</b>&nbsp;so they\'re compelled to buy.</span></span></div></div><div class=\"g\" style=\"line-height: 1.2; width: 600px; font-family: arial, sans-serif; margin: 0px; clear: both; padding-bottom: 16px; padding-left: 16px; padding-right: 16px; color: rgb(34, 34, 34);\"><div class=\"rc\" data-hveid=\"CA8QBQ\" data-ved=\"2ahUKEwjRsuyJkq3pAhWGcn0KHTd5AkgQFSgCMAd6BAgPEAU\" style=\"position: relative; clear: both; padding-bottom: 0px;\"></div></div>', 'PINK,BLACK', 'M,S,SM', '400', '300', 'https://www.youtube.com/watch?v=6Fm82lvAEGU', 1, 1, 1, 1, 1, NULL, 1, 'public/media/product/1666445581272531.jpeg', 'public/media/product/1666445581599753.jpeg', 'public/media/product/1666445581932090.jpeg', 1, NULL, NULL),
(9, 17, 19, 12, 'test8', '118', '45', '<div><br></div><div>for checking git repository: git status</div><div>For Initializing : git init</div><div>Add file on Repository: git add (file name) or git add.[(.dot)for all file)]</div><div>For comment On Repository :git commit -m \"message\" (It gives one unique Id)</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; git log =&gt;(gives unique id of 15+1 digit )</div><div><span style=\"white-space:pre\">							</span>:git log --oneline(give only 7 digit of unique Id)</div><div><span style=\"white-space:pre\">							</span>:git log&nbsp; --oneline -3 (Gives only 3 commit)</div>', 'red,pink', 'L,M,EX,SM', '250', '200', 'https://www.google.com/search?q=product+description&rlz=1C1CHBD_enIN842IN842&oq=product+&aqs=chrome.0.69i59j69i57j69i60l3j69i65.3672j0j7&sourceid=chrome&ie=UTF-8', 1, 1, 1, 1, 1, NULL, 1, 'public/media/product/1666516720352435.jpeg', 'public/media/product/1666516721926826.jpeg', 'public/media/product/1666516722175887.jpeg', 1, NULL, NULL),
(10, 17, 19, 11, 'TEST9', '119', '23', '<div><br></div><div>for checking git repository: git status</div><div>For Initializing : git init</div><div>Add file on Repository: git add (file name) or git add.[(.dot)for all file)]</div><div>For comment On Repository :git commit -m \"message\" (It gives one unique Id)</div><div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; git log =&gt;(gives unique id of 15+1 digit )</div><div><span style=\"white-space:pre\">							</span>:git log --oneline(give only 7 digit of unique Id)</div><div><span style=\"white-space:pre\">							</span>:git log&nbsp; --oneline -3 (Gives only 3 commit)</div>', 'RED,PINK,YELLO', 'M,L,N', '1000', '200', 'https://www.google.com/search?q=product+description&rlz=1C1CHBD_enIN842IN842&oq=product+&aqs=chrome.0.69i59j69i57j69i60l3j69i65.3672j0j7&sourceid=chrome&ie=UTF-8', 1, 1, 1, 1, 1, NULL, NULL, 'public/media/product/1666516814511209.jpeg', 'public/media/product/1666516814866404.jpg', 'public/media/product/1666516815137334.jpg', 1, NULL, NULL),
(11, 11, 15, 8, 'TEST10', '11', '11', 'ddsfs<h1 class=\"title\" style=\"box-sizing: border-box; -webkit-font-smoothing: antialiased; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 15px 30px 0px; font-family: TundraWeb, serif; font-size: 36px; line-height: 36px; color: rgb(40, 40, 40); width: 660px; letter-spacing: -0.5px; background-color: rgb(245, 245, 245); outline: 0px !important;\">Coronavirus lockdown | Narendra Modi announces ₹20-lakh-crore economic stimulus package</h1>d', 'red', 'L,M', '500', '450', NULL, 1, 1, 1, 1, 1, 1, 1, 'public/media/product/130520_02_53_54png', 'public/media/product/1666542099716237.jpeg', 'public/media/product/1666542100133490.jpeg', 1, NULL, NULL),
(12, 8, 5, 12, 'Sleeveless t shirt style', '201', '23', '<span style=\"color: rgb(76, 75, 88); font-family: &quot;Gotham Narrow A&quot;, &quot;Gotham Narrow B&quot;, Helvetica, Arial, sans-serif; font-size: 20px;\">A&nbsp;</span><span style=\"line-height: inherit; color: rgb(76, 75, 88); font-family: &quot;Gotham Narrow A&quot;, &quot;Gotham Narrow B&quot;, Helvetica, Arial, sans-serif; font-size: 20px;\">product description</span><span style=\"color: rgb(76, 75, 88); font-family: &quot;Gotham Narrow A&quot;, &quot;Gotham Narrow B&quot;, Helvetica, Arial, sans-serif; font-size: 20px;\">&nbsp;is the marketing copy used to describe a product’s&nbsp;</span><span style=\"line-height: inherit; color: rgb(76, 75, 88); font-family: &quot;Gotham Narrow A&quot;, &quot;Gotham Narrow B&quot;, Helvetica, Arial, sans-serif; font-size: 20px;\">value proposition</span><span style=\"color: rgb(76, 75, 88); font-family: &quot;Gotham Narrow A&quot;, &quot;Gotham Narrow B&quot;, Helvetica, Arial, sans-serif; font-size: 20px;\">&nbsp;to potential customers. A&nbsp;</span><span style=\"line-height: inherit; color: rgb(76, 75, 88); font-family: &quot;Gotham Narrow A&quot;, &quot;Gotham Narrow B&quot;, Helvetica, Arial, sans-serif; font-size: 20px;\">compelling product description</span><span style=\"color: rgb(76, 75, 88); font-family: &quot;Gotham Narrow A&quot;, &quot;Gotham Narrow B&quot;, Helvetica, Arial, sans-serif; font-size: 20px;\">&nbsp;provides customers with details around features, problems it solves and other benefits to help generate a sale.</span>', 'Red', 'L,M,X', '250', '200', NULL, 1, 1, 1, 1, 1, NULL, 1, 'public/media/product/1666604045645388.png', 'public/media/product/1666604047366977.png', 'public/media/product/1666604047645457.png', 1, NULL, NULL),
(13, 8, 5, 11, 'The Henley - Y neck style.', '202', '25', '<span style=\"color: rgb(76, 75, 88); font-family: &quot;Gotham Narrow A&quot;, &quot;Gotham Narrow B&quot;, Helvetica, Arial, sans-serif; font-size: 20px;\">A&nbsp;</span><span style=\"line-height: inherit; color: rgb(76, 75, 88); font-family: &quot;Gotham Narrow A&quot;, &quot;Gotham Narrow B&quot;, Helvetica, Arial, sans-serif; font-size: 20px;\">product description</span><span style=\"color: rgb(76, 75, 88); font-family: &quot;Gotham Narrow A&quot;, &quot;Gotham Narrow B&quot;, Helvetica, Arial, sans-serif; font-size: 20px;\">&nbsp;is the marketing copy used to describe a product’s&nbsp;</span><span style=\"line-height: inherit; color: rgb(76, 75, 88); font-family: &quot;Gotham Narrow A&quot;, &quot;Gotham Narrow B&quot;, Helvetica, Arial, sans-serif; font-size: 20px;\">value proposition</span><span style=\"color: rgb(76, 75, 88); font-family: &quot;Gotham Narrow A&quot;, &quot;Gotham Narrow B&quot;, Helvetica, Arial, sans-serif; font-size: 20px;\">&nbsp;to potential customers. A&nbsp;</span><span style=\"line-height: inherit; color: rgb(76, 75, 88); font-family: &quot;Gotham Narrow A&quot;, &quot;Gotham Narrow B&quot;, Helvetica, Arial, sans-serif; font-size: 20px;\">compelling product description</span><span style=\"color: rgb(76, 75, 88); font-family: &quot;Gotham Narrow A&quot;, &quot;Gotham Narrow B&quot;, Helvetica, Arial, sans-serif; font-size: 20px;\">&nbsp;provides customers with details around features, problems it solves and other benefits to help generate a sale.</span>', 'RED,GREEN', 'L,M,N', '120', '100', NULL, 1, 1, 1, 1, 1, 1, 1, 'public/media/product/1666604123766733.png', 'public/media/product/1666604123985382.png', 'public/media/product/1666604124210224.png', 1, NULL, NULL),
(14, 8, 6, 9, 'Polo t shirt collar styles', '203', '14', '<span style=\"color: rgb(76, 75, 88); font-family: &quot;Gotham Narrow A&quot;, &quot;Gotham Narrow B&quot;, Helvetica, Arial, sans-serif; font-size: 20px;\">A&nbsp;</span><span style=\"line-height: inherit; color: rgb(76, 75, 88); font-family: &quot;Gotham Narrow A&quot;, &quot;Gotham Narrow B&quot;, Helvetica, Arial, sans-serif; font-size: 20px;\">product description</span><span style=\"color: rgb(76, 75, 88); font-family: &quot;Gotham Narrow A&quot;, &quot;Gotham Narrow B&quot;, Helvetica, Arial, sans-serif; font-size: 20px;\">&nbsp;is the marketing copy used to describe a product’s&nbsp;</span><span style=\"line-height: inherit; color: rgb(76, 75, 88); font-family: &quot;Gotham Narrow A&quot;, &quot;Gotham Narrow B&quot;, Helvetica, Arial, sans-serif; font-size: 20px;\">value proposition</span><span style=\"color: rgb(76, 75, 88); font-family: &quot;Gotham Narrow A&quot;, &quot;Gotham Narrow B&quot;, Helvetica, Arial, sans-serif; font-size: 20px;\">&nbsp;to potential customers. A&nbsp;</span><span style=\"line-height: inherit; color: rgb(76, 75, 88); font-family: &quot;Gotham Narrow A&quot;, &quot;Gotham Narrow B&quot;, Helvetica, Arial, sans-serif; font-size: 20px;\">compelling product description</span><span style=\"color: rgb(76, 75, 88); font-family: &quot;Gotham Narrow A&quot;, &quot;Gotham Narrow B&quot;, Helvetica, Arial, sans-serif; font-size: 20px;\">&nbsp;provides customers with details around features, problems it solves and other benefits to help generate a sale.</span>', 'RED,PINK,YELLOW', 'L,M,SM,EX', '70', '50', NULL, 1, 1, 1, 1, 1, 1, 1, 'public/media/product/1666604204310691.png', 'public/media/product/1666604204554771.png', 'public/media/product/1666604204869468.png', 1, NULL, NULL),
(15, 8, 7, 9, 'The Scoop Neck style', '204', '45', '<span style=\"color: rgb(76, 75, 88); font-family: &quot;Gotham Narrow A&quot;, &quot;Gotham Narrow B&quot;, Helvetica, Arial, sans-serif; font-size: 20px;\">A&nbsp;</span><span style=\"line-height: inherit; color: rgb(76, 75, 88); font-family: &quot;Gotham Narrow A&quot;, &quot;Gotham Narrow B&quot;, Helvetica, Arial, sans-serif; font-size: 20px;\">product description</span><span style=\"color: rgb(76, 75, 88); font-family: &quot;Gotham Narrow A&quot;, &quot;Gotham Narrow B&quot;, Helvetica, Arial, sans-serif; font-size: 20px;\">&nbsp;is the marketing copy used to describe a product’s&nbsp;</span><span style=\"line-height: inherit; color: rgb(76, 75, 88); font-family: &quot;Gotham Narrow A&quot;, &quot;Gotham Narrow B&quot;, Helvetica, Arial, sans-serif; font-size: 20px;\">value proposition</span><span style=\"color: rgb(76, 75, 88); font-family: &quot;Gotham Narrow A&quot;, &quot;Gotham Narrow B&quot;, Helvetica, Arial, sans-serif; font-size: 20px;\">&nbsp;to potential customers. A&nbsp;</span><span style=\"line-height: inherit; color: rgb(76, 75, 88); font-family: &quot;Gotham Narrow A&quot;, &quot;Gotham Narrow B&quot;, Helvetica, Arial, sans-serif; font-size: 20px;\">compelling product description</span><span style=\"color: rgb(76, 75, 88); font-family: &quot;Gotham Narrow A&quot;, &quot;Gotham Narrow B&quot;, Helvetica, Arial, sans-serif; font-size: 20px;\">&nbsp;provides customers with details around features, problems it solves and other benefits to help generate a sale.</span>', 'white,black', 'L,M,N', '100', NULL, NULL, 1, 1, 1, 1, 1, 1, 1, 'public/media/product/1666604285079281.png', 'public/media/product/1666604285358272.png', 'public/media/product/1666604285608139.png', 1, NULL, NULL),
(16, 8, 6, 15, 'Raglan sleeve types', '207', '78', '<span style=\"color: rgb(76, 75, 88); font-family: &quot;Gotham Narrow A&quot;, &quot;Gotham Narrow B&quot;, Helvetica, Arial, sans-serif; font-size: 20px;\">A&nbsp;</span><span style=\"line-height: inherit; color: rgb(76, 75, 88); font-family: &quot;Gotham Narrow A&quot;, &quot;Gotham Narrow B&quot;, Helvetica, Arial, sans-serif; font-size: 20px;\">product description</span><span style=\"color: rgb(76, 75, 88); font-family: &quot;Gotham Narrow A&quot;, &quot;Gotham Narrow B&quot;, Helvetica, Arial, sans-serif; font-size: 20px;\">&nbsp;is the marketing copy used to describe a product’s&nbsp;</span><span style=\"line-height: inherit; color: rgb(76, 75, 88); font-family: &quot;Gotham Narrow A&quot;, &quot;Gotham Narrow B&quot;, Helvetica, Arial, sans-serif; font-size: 20px;\">value proposition</span><span style=\"color: rgb(76, 75, 88); font-family: &quot;Gotham Narrow A&quot;, &quot;Gotham Narrow B&quot;, Helvetica, Arial, sans-serif; font-size: 20px;\">&nbsp;to potential customers. A&nbsp;</span><span style=\"line-height: inherit; color: rgb(76, 75, 88); font-family: &quot;Gotham Narrow A&quot;, &quot;Gotham Narrow B&quot;, Helvetica, Arial, sans-serif; font-size: 20px;\">compelling product description</span><span style=\"color: rgb(76, 75, 88); font-family: &quot;Gotham Narrow A&quot;, &quot;Gotham Narrow B&quot;, Helvetica, Arial, sans-serif; font-size: 20px;\">&nbsp;provides customers with details around features, problems it solves and other benefits to help generate a sale.</span>', 'white', 'L,M,X', '200', '100', NULL, 1, 1, 1, 1, 1, 1, 1, 'public/media/product/1666604382896089.png', 'public/media/product/1666604383288961.png', 'public/media/product/1666604383542953.jpg', 1, NULL, NULL),
(17, 17, 18, 16, 'room1', '78', '14', '<div tabindex=\"0\" class=\"slideshow-desktop-dek\" style=\"box-sizing: border-box; font-family: Charter, Georgia, Times, serif; font-size: 19px; line-height: 1.6; overflow: auto; max-height: 80%; margin: 1.25rem 0px; padding: 0px 1.875rem; outline: 0px;\"><p style=\"box-sizing: border-box; outline: 0px;\">We\'re willing to bet you spend the most time in your bedroom out of any other space in your home. However, it can be hard to decorate a&nbsp;<a href=\"https://www.goodhousekeeping.com/home/decorating-ideas/g1727/bedroom-makeover-ideas/\" target=\"_blank\" data-vars-ga-outbound-link=\"https://www.goodhousekeeping.com/home/decorating-ideas/g1727/bedroom-makeover-ideas/\" style=\"box-sizing: border-box; background-image: linear-gradient(rgb(249, 228, 226) 0px, rgb(249, 228, 226) 100%); background-position: 0px 100%; background-size: 0px 0px; background-repeat: repeat-x; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(0, 0, 0); border-bottom: 0.0625rem solid rgb(210, 68, 50); padding-top: 0.05rem; padding-bottom: 0.05rem; transition: background 0.4s ease-in-out 0s, color 0.4s ease-in-out 0s; outline: 0px;\">master bedroom</a>&nbsp;that hits every note — a calm,&nbsp;<a href=\"https://www.goodhousekeeping.com/health/wellness/a26324844/sleep-better-clean-room/\" target=\"_blank\" data-vars-ga-outbound-link=\"https://www.goodhousekeeping.com/health/wellness/a26324844/sleep-better-clean-room/\" style=\"box-sizing: border-box; background-image: linear-gradient(rgb(249, 228, 226) 0px, rgb(249, 228, 226) 100%); background-position: 0px 100%; background-size: 0px 0px; background-repeat: repeat-x; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(0, 0, 0); border-bottom: 0.0625rem solid rgb(210, 68, 50); padding-top: 0.05rem; padding-bottom: 0.05rem; transition: background 0.4s ease-in-out 0s, color 0.4s ease-in-out 0s; outline: 0px;\">organized</a>&nbsp;retreat that&nbsp;<a href=\"https://www.goodhousekeeping.com/health/wellness/a19876/sleep-better/\" target=\"_blank\" data-vars-ga-outbound-link=\"https://www.goodhousekeeping.com/health/wellness/a19876/sleep-better/\" style=\"box-sizing: border-box; background-image: linear-gradient(rgb(249, 228, 226) 0px, rgb(249, 228, 226) 100%); background-position: 0px 100%; background-size: 0px 0px; background-repeat: repeat-x; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(0, 0, 0); border-bottom: 0.0625rem solid rgb(210, 68, 50); padding-top: 0.05rem; padding-bottom: 0.05rem; transition: background 0.4s ease-in-out 0s, color 0.4s ease-in-out 0s; outline: 0px;\">helps you sleep</a>&nbsp;without sacrificing your personal style and aesthetic. Follow these simple tips to nail a master bedroom makeover without spending a ton of time or money.</p></div><button type=\"button\" class=\"slide-button slide-button-view-gallery slide-button-toggle-lede\" style=\"box-sizing: border-box; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; margin-top: 0.125rem; -webkit-appearance: none; cursor: pointer; transition: background-color 0.3s ease-in-out 0s; border-width: 0px; border-style: initial; border-color: initial; display: block; top: 179.391px; padding: 1.25rem 7.5rem 1.25rem 1.875rem; background-color: rgba(210, 68, 50, 0.8); letter-spacing: 0.05rem; text-align: left; outline: 0px; position: absolute; transform: none; height: 5.3125rem; right: 0px;\"></button>', 'red', 'L,M,N', '120', '100', NULL, 1, 1, 1, 1, 1, 1, 1, 'public/media/product/1666606424617244.jpg', 'public/media/product/1666606424783566.jpg', 'public/media/product/1666606424936499.jpg', 1, NULL, NULL),
(18, 17, 18, 16, 'room2', '1147', '23', '<div tabindex=\"0\" class=\"slideshow-desktop-dek\" style=\"box-sizing: border-box; font-family: Charter, Georgia, Times, serif; font-size: 19px; line-height: 1.6; overflow: auto; max-height: 80%; margin: 1.25rem 0px; padding: 0px 1.875rem; outline: 0px;\"><p style=\"box-sizing: border-box; outline: 0px;\">We\'re willing to bet you spend the most time in your bedroom out of any other space in your home. However, it can be hard to decorate a&nbsp;<a href=\"https://www.goodhousekeeping.com/home/decorating-ideas/g1727/bedroom-makeover-ideas/\" target=\"_blank\" data-vars-ga-outbound-link=\"https://www.goodhousekeeping.com/home/decorating-ideas/g1727/bedroom-makeover-ideas/\" style=\"box-sizing: border-box; background-image: linear-gradient(rgb(249, 228, 226) 0px, rgb(249, 228, 226) 100%); background-position: 0px 100%; background-size: 0px 0px; background-repeat: repeat-x; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(0, 0, 0); border-bottom: 0.0625rem solid rgb(210, 68, 50); padding-top: 0.05rem; padding-bottom: 0.05rem; transition: background 0.4s ease-in-out 0s, color 0.4s ease-in-out 0s; outline: 0px;\">master bedroom</a>&nbsp;that hits every note — a calm,&nbsp;<a href=\"https://www.goodhousekeeping.com/health/wellness/a26324844/sleep-better-clean-room/\" target=\"_blank\" data-vars-ga-outbound-link=\"https://www.goodhousekeeping.com/health/wellness/a26324844/sleep-better-clean-room/\" style=\"box-sizing: border-box; background-image: linear-gradient(rgb(249, 228, 226) 0px, rgb(249, 228, 226) 100%); background-position: 0px 100%; background-size: 0px 0px; background-repeat: repeat-x; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(0, 0, 0); border-bottom: 0.0625rem solid rgb(210, 68, 50); padding-top: 0.05rem; padding-bottom: 0.05rem; transition: background 0.4s ease-in-out 0s, color 0.4s ease-in-out 0s; outline: 0px;\">organized</a>&nbsp;retreat that&nbsp;<a href=\"https://www.goodhousekeeping.com/health/wellness/a19876/sleep-better/\" target=\"_blank\" data-vars-ga-outbound-link=\"https://www.goodhousekeeping.com/health/wellness/a19876/sleep-better/\" style=\"box-sizing: border-box; background-image: linear-gradient(rgb(249, 228, 226) 0px, rgb(249, 228, 226) 100%); background-position: 0px 100%; background-size: 0px 0px; background-repeat: repeat-x; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(0, 0, 0); border-bottom: 0.0625rem solid rgb(210, 68, 50); padding-top: 0.05rem; padding-bottom: 0.05rem; transition: background 0.4s ease-in-out 0s, color 0.4s ease-in-out 0s; outline: 0px;\">helps you sleep</a>&nbsp;without sacrificing your personal style and aesthetic. Follow these simple tips to nail a master bedroom makeover without spending a ton of time or money.</p></div><button type=\"button\" class=\"slide-button slide-button-view-gallery slide-button-toggle-lede\" style=\"box-sizing: border-box; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; margin-top: 0.125rem; -webkit-appearance: none; cursor: pointer; transition: background-color 0.3s ease-in-out 0s; border-width: 0px; border-style: initial; border-color: initial; display: block; top: 179.391px; padding: 1.25rem 7.5rem 1.25rem 1.875rem; background-color: rgba(210, 68, 50, 0.8); letter-spacing: 0.05rem; text-align: left; outline: 0px; position: absolute; transform: none; height: 5.3125rem; right: 0px;\"></button>', 'pink', 'L,M', '300', '250', NULL, 1, 1, 1, 1, 1, 1, 1, 'public/media/product/1666606492033675.jpg', 'public/media/product/1666606492152592.jpg', 'public/media/product/1666606492239855.jpg', 1, NULL, NULL),
(20, 17, 18, 16, 'room deco', '11', '45', '<div tabindex=\"0\" class=\"slideshow-desktop-dek\" style=\"box-sizing: border-box; font-family: Charter, Georgia, Times, serif; font-size: 19px; line-height: 1.6; overflow: auto; max-height: 80%; margin: 1.25rem 0px; padding: 0px 1.875rem; outline: 0px;\"><p style=\"box-sizing: border-box; outline: 0px;\">We\'re willing to bet you spend the most time in your bedroom out of any other space in your home. However, it can be hard to decorate a&nbsp;<a href=\"https://www.goodhousekeeping.com/home/decorating-ideas/g1727/bedroom-makeover-ideas/\" target=\"_blank\" data-vars-ga-outbound-link=\"https://www.goodhousekeeping.com/home/decorating-ideas/g1727/bedroom-makeover-ideas/\" style=\"box-sizing: border-box; background-image: linear-gradient(rgb(249, 228, 226) 0px, rgb(249, 228, 226) 100%); background-position: 0px 100%; background-size: 0px 0px; background-repeat: repeat-x; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(0, 0, 0); border-bottom: 0.0625rem solid rgb(210, 68, 50); padding-top: 0.05rem; padding-bottom: 0.05rem; transition: background 0.4s ease-in-out 0s, color 0.4s ease-in-out 0s; outline: 0px;\">master bedroom</a>&nbsp;that hits every note — a calm,&nbsp;<a href=\"https://www.goodhousekeeping.com/health/wellness/a26324844/sleep-better-clean-room/\" target=\"_blank\" data-vars-ga-outbound-link=\"https://www.goodhousekeeping.com/health/wellness/a26324844/sleep-better-clean-room/\" style=\"box-sizing: border-box; background-image: linear-gradient(rgb(249, 228, 226) 0px, rgb(249, 228, 226) 100%); background-position: 0px 100%; background-size: 0px 0px; background-repeat: repeat-x; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(0, 0, 0); border-bottom: 0.0625rem solid rgb(210, 68, 50); padding-top: 0.05rem; padding-bottom: 0.05rem; transition: background 0.4s ease-in-out 0s, color 0.4s ease-in-out 0s; outline: 0px;\">organized</a>&nbsp;retreat that&nbsp;<a href=\"https://www.goodhousekeeping.com/health/wellness/a19876/sleep-better/\" target=\"_blank\" data-vars-ga-outbound-link=\"https://www.goodhousekeeping.com/health/wellness/a19876/sleep-better/\" style=\"box-sizing: border-box; background-image: linear-gradient(rgb(249, 228, 226) 0px, rgb(249, 228, 226) 100%); background-position: 0px 100%; background-size: 0px 0px; background-repeat: repeat-x; background-attachment: initial; background-origin: initial; background-clip: initial; color: rgb(0, 0, 0); border-bottom: 0.0625rem solid rgb(210, 68, 50); padding-top: 0.05rem; padding-bottom: 0.05rem; transition: background 0.4s ease-in-out 0s, color 0.4s ease-in-out 0s; outline: 0px;\">helps you sleep</a>&nbsp;without sacrificing your personal style and aesthetic. Follow these simple tips to nail a master bedroom makeover without spending a ton of time or money.</p></div><button type=\"button\" class=\"slide-button slide-button-view-gallery slide-button-toggle-lede\" style=\"box-sizing: border-box; font-style: inherit; font-variant: inherit; font-weight: inherit; font-stretch: inherit; margin-top: 0.125rem; -webkit-appearance: none; cursor: pointer; transition: background-color 0.3s ease-in-out 0s; border-width: 0px; border-style: initial; border-color: initial; display: block; top: 179.391px; padding: 1.25rem 7.5rem 1.25rem 1.875rem; background-color: rgba(210, 68, 50, 0.8); letter-spacing: 0.05rem; text-align: left; outline: 0px; position: absolute; transform: none; height: 5.3125rem; right: 0px;\"></button>', 'white', 'L,M', '700', '500', NULL, 1, 1, 1, 1, 1, 1, 1, 'public/media/product/1666606700871833.jpg', 'public/media/product/1666606700981163.jpg', 'public/media/product/1666606701079136.jpg', 1, NULL, NULL),
(12345, 6, 3, 6, 'new Update', '789', '110', '<font color=\"#0e8ce4\" face=\"Rubik, sans-serif\"><span style=\"-webkit-font-smoothing: antialiased; text-shadow: rgba(0, 0, 0, 0.01) 0px 0px 1px; background-color: rgb(255, 255, 255); font-size: 12px; transition-duration: 200ms;\">Computers &amp; Laptop</span></font>', 'Gree,gro', 'X,M,N', '5000', '20', 'https://www.youtube.com/watch?v=cQl-IbAd8P8', 1, 1, 1, 1, 1, NULL, 1, 'public/media/product/110520_19_04_27jpg', 'public/media/product/110520_19_52_29jpg', 'public/media/product/1666340789942194.jpg', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `seo`
--

CREATE TABLE `seo` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `meta_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_author` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_tag` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_analytics` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bing_analytics` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `seo`
--

INSERT INTO `seo` (`id`, `meta_title`, `meta_author`, `meta_tag`, `meta_description`, `google_analytics`, `bing_analytics`, `created_at`, `updated_at`) VALUES
(1, 'Title', 'This Title', 'tag', 'this is good for Description', 'analytic', 'bang', '2020-05-19 09:57:26', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vat` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_charge` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shopname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adderss` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `vat`, `shipping_charge`, `shopname`, `email`, `phone`, `adderss`, `logo`, `created_at`, `updated_at`) VALUES
(1, '5', '10', 'gulam', 'gulammlkpg35@gmail.com', '1234578', 'Ghaziabad', NULL, '2020-05-16 00:40:56', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `shipping`
--

CREATE TABLE `shipping` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ship_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ship_phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ship_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ship_address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ship_city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shipping`
--

INSERT INTO `shipping` (`id`, `order_id`, `ship_name`, `ship_phone`, `ship_email`, `ship_address`, `ship_city`, `created_at`, `updated_at`) VALUES
(1, '12345', 'Gulam', '78945123', 'gulam@gmail.com', 'village mahli', 'Utraula', '2020-05-18 03:48:34', NULL),
(2, '12347', 'Gulam mohammad', '07703978839', 'gulammlkpg35@gmail.com', 'VILLAGE MAHLI  MLANGA DEEH POST PEHAR UTRAULA BALRAMPUR', 'BALRAMPUR', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sitesetting`
--

CREATE TABLE `sitesetting` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `phone_one` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_two` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `youtube` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sitesetting`
--

INSERT INTO `sitesetting` (`id`, `phone_one`, `phone_two`, `email`, `company_name`, `company_address`, `facebook`, `youtube`, `google`, `instagram`, `twitter`, `created_at`, `updated_at`) VALUES
(1, '0770397883911', '72890017', 'gulammlkpg35@gmail.com', 'gulam', '1qweee', 'facebook', 'youtube', NULL, 'instagramm', 'twitter', '2020-05-30 15:00:48', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` int(11) NOT NULL,
  `subcategory_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`id`, `category_id`, `subcategory_name`, `created_at`, `updated_at`) VALUES
(2, 2, 'shoot', NULL, NULL),
(3, 6, 'oven', NULL, NULL),
(4, 2, 'test', NULL, NULL),
(5, 8, 'Gents Tshirt', NULL, NULL),
(6, 8, 'Gents Shirt', NULL, NULL),
(7, 8, 'Gents Pant', NULL, NULL),
(8, 9, 'Womens Tshirt', NULL, NULL),
(9, 8, 'Womens Shirt', NULL, NULL),
(10, 8, 'Womens Pant', NULL, NULL),
(11, 10, 'Child Dress & Footware', NULL, NULL),
(12, 8, 'Child Body Care', NULL, NULL),
(13, 8, 'Child Diaper', NULL, NULL),
(14, 11, 'Gents Watch', NULL, NULL),
(15, 11, 'Womans Watch', NULL, NULL),
(16, 11, 'Kids Watch', NULL, NULL),
(17, 17, 'Appliances', NULL, NULL),
(18, 17, 'Room Decoration', NULL, NULL),
(19, 17, 'Light and Lamp', NULL, NULL),
(20, 17, 'Security', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider_id` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `phone`, `email`, `avatar`, `provider`, `provider_id`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Ariyan', NULL, 'ariyan@gmail.com', NULL, NULL, NULL, NULL, '$2y$12$dMY5vrhg4kz.iP5sr.pH3uV.VlPhgEP30QR1PHY8s0F8vMXGyOvwq', NULL, '2019-10-04 23:27:57', '2019-10-04 23:27:57'),
(2, 'udemy', NULL, 'udemy@gmail.com', NULL, NULL, NULL, NULL, '$2y$12$dMY5vrhg4kz.iP5sr.pH3uV.VlPhgEP30QR1PHY8s0F8vMXGyOvwq', NULL, '2019-10-05 04:47:42', '2019-10-05 04:47:42'),
(3, 'Admin', NULL, 'gulammlkpg35@gmail.com', NULL, NULL, NULL, NULL, '$2y$10$Qr9mGghLOMoLzks9V2GBf.XEasGeFPgDdiACKlBtYCebeumMSpZvG', NULL, '2020-05-08 16:00:00', '2020-05-08 16:00:00'),
(5, 'jack', NULL, 'jack@gmail.com', NULL, NULL, NULL, NULL, '$2y$10$URYoF.ZNw9GoQWbm7rh9TeJcx1rnxPrLjVQlu2.a9WSFtxwfCcIeq', NULL, '2020-05-12 18:56:53', '2020-05-12 18:56:53'),
(6, 'aa', '12345345', 'a1@gmail.com', NULL, NULL, NULL, NULL, '$2y$10$wXX8xFGpjXx0Xi5wE.TdLOhhU0vwyuE6ObjuYzkn0PJUo6yoq2P0C', NULL, '2020-05-12 19:07:26', '2020-05-12 19:07:26'),
(7, 'User', '12345789', 'user@gmail.com', NULL, NULL, NULL, '2020-05-12 19:12:06', '$2y$10$DDWFZ5dnmnwNKiumnp9m9.XfyUAKsjjSh9S7vPewcFPOacjDZt4Ee', NULL, '2020-05-12 19:11:12', '2020-05-12 19:12:06'),
(8, 'GULAM', '7894512', 'h1@gmail.com', NULL, NULL, NULL, NULL, '$2y$10$k8nfmHCESijEB8bRurf0nOQv4V2ds1S9f7otM7EKxQkLmEtYkdcDu', NULL, '2020-05-12 19:26:10', '2020-05-12 19:57:43');

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `user_id`, `product_id`, `created_at`, `updated_at`) VALUES
(4, 8, 11, NULL, NULL),
(5, 8, 7, NULL, NULL),
(6, 8, 9, NULL, NULL),
(7, 8, 20, NULL, NULL),
(8, 8, 16, NULL, NULL),
(9, 8, 18, NULL, NULL),
(10, 8, 17, NULL, NULL),
(11, 8, 13, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newslaters`
--
ALTER TABLE `newslaters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders_details`
--
ALTER TABLE `orders_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_category`
--
ALTER TABLE `post_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seo`
--
ALTER TABLE `seo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shipping`
--
ALTER TABLE `shipping`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sitesetting`
--
ALTER TABLE `sitesetting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `newslaters`
--
ALTER TABLE `newslaters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12348;

--
-- AUTO_INCREMENT for table `orders_details`
--
ALTER TABLE `orders_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12348;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `post_category`
--
ALTER TABLE `post_category`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12347;

--
-- AUTO_INCREMENT for table `seo`
--
ALTER TABLE `seo`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shipping`
--
ALTER TABLE `shipping`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sitesetting`
--
ALTER TABLE `sitesetting`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `subcategories`
--
ALTER TABLE `subcategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
