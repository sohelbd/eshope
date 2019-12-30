-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 18, 2019 at 10:46 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `elaravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_09_20_161743_create_tbl_admin_table', 1),
(2, '2019_09_26_052301_create_tbl_category_table', 2),
(3, '2019_10_13_044927_create_manufacture_table', 3),
(4, '2019_10_13_050343_create_manufacture_table', 4),
(5, '2019_10_13_172226_creats_tbl_products_table', 5),
(6, '2019_10_21_174329_create_tbl_slider_table', 6),
(7, '2019_11_13_164227_create_tbl_customer_table', 7),
(8, '2019_11_13_164916_create_tbl_customer_table', 8),
(9, '2019_11_14_050618_create_tbl_shipping_table', 9),
(10, '2019_11_18_052735_create_tbl_payment_table', 10),
(11, '2019_11_18_053052_create_tbl_order_table', 10),
(12, '2019_11_18_053212_create_tbl_order_details_table', 10);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `admin_id` bigint(20) UNSIGNED NOT NULL,
  `admin_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`admin_id`, `admin_email`, `admin_password`, `admin_name`, `admin_phone`, `created_at`, `updated_at`) VALUES
(2, 'sohel@gmail.com', '12345', 'sohel', '01722606674', NULL, NULL),
(3, 'ss@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', 'Sohel Rana', '65467575', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `publication_status` int(2) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`category_id`, `category_name`, `category_description`, `publication_status`, `created_at`, `updated_at`) VALUES
(14, 'Man', 'this is man', 1, NULL, NULL),
(15, 'Woman', 'this is woman', 1, NULL, NULL),
(16, 'Child', 'this is child', 1, NULL, NULL),
(17, 'Furniture', 'this is furniture', 1, NULL, NULL),
(18, 'Sports', 'this is sports', 1, NULL, NULL),
(19, 'Laptop', 'this is laptop', 1, NULL, NULL),
(20, 'Mobile', 'this is mobile', 1, NULL, NULL),
(21, 'Electronic', 'this is electronic', 1, NULL, NULL),
(22, 'Others', 'others', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `customer_id` int(10) UNSIGNED NOT NULL,
  `customer_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_customer`
--

INSERT INTO `tbl_customer` (`customer_id`, `customer_name`, `customer_email`, `password`, `customer_mobile`, `created_at`, `updated_at`) VALUES
(1, 'sohel rana', 'sas@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '01722606674', NULL, NULL),
(2, 'sohel rana', 'sas@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '01722606674', NULL, NULL),
(3, 'sohel khan', 'ssa@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '01722606673', NULL, NULL),
(4, 'sohel rana', 'sffs@gmail.com', '202cb962ac59075b964b07152d234b70', '01722606444', NULL, NULL),
(5, 'sohel rana', 'swws@gmail.com', '202cb962ac59075b964b07152d234b70', '01722606633', NULL, NULL),
(6, 'sohel rana', 'ssa@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '01722606674', NULL, NULL),
(7, 'sohel rana', 'sohelbd@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '01722606674', NULL, NULL),
(8, 'sss', 'sss@gmail.com', '12345', '31352', NULL, NULL),
(9, 'sohel rana', 'mhh@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '01722606674', NULL, NULL),
(10, 'sohel rana', 'bb@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '7777', NULL, NULL),
(11, 'sohel rana', 'meeh@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '5645', NULL, NULL),
(12, 'sohel rana', 'meeh@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '5645', NULL, NULL),
(13, 'sohel rana', 'sohelbdi@gmail.com', '25d55ad283aa400af464c76d713c07ad', '99', NULL, NULL),
(14, 'sohel rana', 'sohelbddd@gmail.com', '310dcbbf4cce62f762a2aaa148d556bd', '22', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_manufacture`
--

CREATE TABLE `tbl_manufacture` (
  `manufacture_id` int(10) UNSIGNED NOT NULL,
  `manufacture_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `manufacture_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `publication_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_manufacture`
--

INSERT INTO `tbl_manufacture` (`manufacture_id`, `manufacture_name`, `manufacture_description`, `publication_status`, `created_at`, `updated_at`) VALUES
(1, 'Samsung', 'this is Samsung brand', 1, NULL, NULL),
(2, 'Zara', 'Zara Brand all', 1, NULL, NULL),
(3, 'Otobi', 'Otobi Furniture', 1, NULL, NULL),
(4, 'Apple', 'Apple Brand', 1, NULL, NULL),
(6, 'Chillor rose', 'Chillor rose brand', 1, NULL, NULL),
(7, 'Easy', 'Easy brand', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `order_id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(11) NOT NULL,
  `shipping_id` int(11) NOT NULL,
  `payment_id` int(11) NOT NULL,
  `order_total` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`order_id`, `customer_id`, `shipping_id`, `payment_id`, `order_total`, `order_status`, `created_at`, `updated_at`) VALUES
(1, 3, 11, 8, '7,438.20', 'pending', '2019-11-18 07:55:47', NULL),
(2, 3, 11, 9, '7,438.20', 'pending', '2019-11-18 07:57:27', NULL),
(3, 3, 11, 10, '7,438.20', 'pending', '2019-11-18 07:58:05', NULL),
(4, 3, 11, 11, '7,438.20', 'pending', '2019-11-18 08:00:55', NULL),
(5, 3, 11, 12, '7,438.20', 'pending', '2019-11-18 08:01:15', NULL),
(6, 3, 12, 13, '5,578.65', 'pending', '2019-11-18 08:04:58', NULL),
(7, 3, 12, 14, '5,578.65', 'pending', '2019-11-18 08:06:00', NULL),
(8, 3, 11, 15, '7,438.20', 'pending', '2019-11-18 09:09:35', NULL),
(9, 3, 11, 16, '7,438.20', 'pending', '2019-11-18 09:11:16', NULL),
(10, 3, 11, 17, '7,438.20', 'pending', '2019-11-18 09:11:20', NULL),
(11, 3, 13, 18, '7,438.20', 'pending', '2019-11-18 10:10:44', NULL),
(12, 3, 14, 19, '7,438.20', 'pending', '2019-11-18 10:15:41', NULL),
(13, 3, 16, 20, '75,359.55', 'pending', '2019-11-18 10:20:21', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order_details`
--

CREATE TABLE `tbl_order_details` (
  `order_details_id` int(10) UNSIGNED NOT NULL,
  `order_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_sale_quantity` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_order_details`
--

INSERT INTO `tbl_order_details` (`order_details_id`, `order_id`, `product_id`, `product_name`, `product_price`, `product_sale_quantity`, `created_at`, `updated_at`) VALUES
(1, '7', '2', 'Salwar Kameez', '1771', '3', NULL, NULL),
(2, '8', '2', 'Salwar Kameez', '1771', '4', NULL, NULL),
(3, '9', '2', 'Salwar Kameez', '1771', '4', NULL, NULL),
(4, '10', '2', 'Salwar Kameez', '1771', '4', NULL, NULL),
(5, '11', '2', 'Salwar Kameez', '1771', '4', NULL, NULL),
(6, '12', '2', 'Salwar Kameez', '1771', '4', NULL, NULL),
(7, '13', '2', 'Salwar Kameez', '1771', '1', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_payment`
--

CREATE TABLE `tbl_payment` (
  `payment_id` int(10) UNSIGNED NOT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_payment`
--

INSERT INTO `tbl_payment` (`payment_id`, `payment_method`, `payment_status`, `created_at`, `updated_at`) VALUES
(1, 'bkash', 'pending', '2019-11-18 07:22:36', NULL),
(2, 'bkash', 'pending', '2019-11-18 07:23:29', NULL),
(3, 'handcash', 'pending', '2019-11-18 07:23:40', NULL),
(4, 'handcash', 'pending', '2019-11-18 07:27:25', NULL),
(5, 'handcash', 'pending', '2019-11-18 07:27:36', NULL),
(6, 'handcash', 'pending', '2019-11-18 07:27:36', NULL),
(7, 'handcash', 'pending', '2019-11-18 07:32:52', NULL),
(8, 'handcash', 'pending', '2019-11-18 07:55:46', NULL),
(9, 'handcash', 'pending', '2019-11-18 07:57:27', NULL),
(10, 'handcash', 'pending', '2019-11-18 07:58:05', NULL),
(11, 'bkash', 'pending', '2019-11-18 08:00:55', NULL),
(12, 'handcash', 'pending', '2019-11-18 08:01:15', NULL),
(13, 'handcash', 'pending', '2019-11-18 08:04:58', NULL),
(14, 'handcash', 'pending', '2019-11-18 08:05:59', NULL),
(15, 'handcash', 'pending', '2019-11-18 09:09:35', NULL),
(16, 'rocket', 'pending', '2019-11-18 09:11:16', NULL),
(17, 'bkash', 'pending', '2019-11-18 09:11:20', NULL),
(18, 'handcash', 'pending', '2019-11-18 10:10:44', NULL),
(19, 'handcash', 'pending', '2019-11-18 10:15:41', NULL),
(20, 'handcash', 'pending', '2019-11-18 10:20:20', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_products`
--

CREATE TABLE `tbl_products` (
  `product_id` int(10) UNSIGNED NOT NULL,
  `product_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `manufacture_id` int(11) NOT NULL,
  `product_short_description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_long_description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_price` double(8,2) NOT NULL,
  `product_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_size` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `publication_status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_products`
--

INSERT INTO `tbl_products` (`product_id`, `product_name`, `category_id`, `manufacture_id`, `product_short_description`, `product_long_description`, `product_price`, `product_image`, `product_size`, `product_color`, `publication_status`, `created_at`, `updated_at`) VALUES
(2, 'Salwar Kameez', 15, 2, ' Georgette Salwar Kameez for Women', '<span style=\"font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 12px; background-color: rgb(255, 255, 255);\">Shalwar Kameez, also spelled salwar kameez or shalwar qameez, is a traditional outfit originating in the subcontinent. It is a generic term used to describe different styles of dress. The shalwar kameez can be worn by women. The shalwar and the kameez are two garments which are combined to form the shalwar kameez.</span>', 1771.00, 'image/glTodHs1PugJ476SY1Nd.jpg', 'long', 'blue', 1, NULL, NULL),
(3, 'Bisque Georgette', 15, 2, 'Factory Wholesale Warm&Soft Flannel Cheap Clothes\r\n', '<span style=\"font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\">This product comes with very Stylish design which provides a attractive look in it. The material used in it will meet your expectation and need also. Now with a new look it is even better than before and its quality will definitely meet your requirement. So take this to fulfill your purpose and enjoy the feel of good quality product.</span>', 1588.00, 'image/FKuXe6xq4DYwF5SrPNZO.jpeg', 'long', 'green', 1, NULL, NULL),
(4, 'ladies denim jeans', 15, 2, 'Factory Wholesale Warm&Soft Flannel ', '<ul style=\"margin: 0px; padding: 0px; list-style: none; font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 12px; background-color: rgb(255, 255, 255);\"><li data-spm-anchor-id=\"a2a0e.pdp.product_detail.i0.79447bbcJaLB35\" style=\"margin: 0px; padding: 0px;\">Fabrics : Denim Jeans</li><li style=\"margin: 0px; padding: 0px;\">Style : Slim Fitting</li><li style=\"margin: 0px; padding: 0px;\">Waist: 26,28,30,32,34</li><li style=\"margin: 0px; padding: 0px;\">Quality : Export</li><li style=\"margin: 0px; padding: 0px;\">Made in : Bangladesh</li><li style=\"margin: 0px; padding: 0px;\">Photo Color : Color of the products may slightly vary due to photography and lighting sources or your monitor setting/ PC resolution.</li></ul>', 500.00, 'image/1rlSbaV1UxW8B6oEObEn.jpg', 'M', 'blue', 1, NULL, NULL),
(6, 'Cotton Night dress', 14, 7, 'Factory Wholesale Warm&Soft Flannel Cheap Clothess', '<span style=\"font-family: Roboto, -apple-system, BlinkMacSystemFont, &quot;Helvetica Neue&quot;, Helvetica, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\">We provides you with all the high quality products with good value. specializing in Women Pajama Set，Mens Pajama Set，Nightdress and other stylish Sleepwear.</span>', 1048.00, 'image/nfjPwVBomS5doVRQT2Ak.jpg', 'M', 'white', 1, NULL, NULL),
(7, 'Jeans pant', 14, 7, 'Fashionable Jeans pant for Man', '<h2 class=\"pdp-mod-section-title \" data-spm-anchor-id=\"a2a0e.pdp.product_detail.i1.5221799fYsEvyB\" style=\"margin: 0px; padding: 0px; font-weight: 500; font-family: Roboto-Medium; font-size: 16px; line-height: 19px; color: rgb(33, 33, 33); overflow: hidden; text-overflow: ellipsis; white-space: nowrap; background-color: rgb(255, 255, 255);\">Specifications of Fashionable Jeans pant for Man</h2>', 999.00, 'image/StGDyXP20BqMEyygqJGQ.jpg', 'M', 'Navy Blue', 1, NULL, NULL),
(9, 'iphone 11', 20, 4, 'Apple iPhone 10', '<h2 style=\"padding: 0px; margin: 0px 0px 0.5em; list-style: none; border: 0px; outline: none; box-sizing: border-box; line-height: 1.3; font-size: 27px; font-family: Poppins; color: rgb(44, 47, 52); background-color: rgb(255, 255, 255);\">Apple iPhone 10 Pro Max Full Specifications</h2><div><br></div>', 70000.00, 'image/vcuvbS6WcFcx8jp28Y5q.jpg', '6\' inc', 'blue', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shipping`
--

CREATE TABLE `tbl_shipping` (
  `id` int(10) UNSIGNED NOT NULL,
  `shipping_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_mobile_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_shipping`
--

INSERT INTO `tbl_shipping` (`id`, `shipping_email`, `shipping_first_name`, `shipping_last_name`, `shipping_address`, `shipping_mobile_number`, `shipping_city`, `created_at`, `updated_at`) VALUES
(1, 'ss@gmail.com', 'sohel', 'rana', 'mirpur', '01722606674', 'Dhaka', NULL, NULL),
(2, 'ss@gmail.com', 'asa', 'dad', 'sadAS', '01722606674', 'Dhaka', NULL, NULL),
(3, 'ss@gmail.com', 'asa', 'dad', 'sadAS', '01722606674', 'Dhaka', NULL, NULL),
(4, 'ss@gmail.com', 'asa', 'dad', 'sadAS', '01722606674', 'll', NULL, NULL),
(5, 'ss@gmail.com', 'we', 'we', 'daf', '017226066743', 'fff', NULL, NULL),
(6, 'ss@gmail.com', 'wdqw', 'qwd', 'sdasdq', 'wqw', 'wde', NULL, NULL),
(7, 'ss@gmail.com', 'sfSF', 'DF', 'fgdfag', 'ZXcF', 'gsdfg', NULL, NULL),
(8, 'ss@gmail.com', 'asa', 'DF', 'sdasdq', '017226066743', 'Dhaka', NULL, NULL),
(9, 'ss@gmail.com', 'lkn', 'fg', 'g', 'g', 'gg', NULL, NULL),
(10, 'ss@gmail.com', 'sfSF', 'dad', 'fgdfag', 'g', 'gsdfg', NULL, NULL),
(11, 'ss@gmail.com', 'wdqw', 'fg', 'daf', '017226066743', 'wde', NULL, NULL),
(12, 'ss@gmail.com', 'fasd', 'adsf', 'dasg', 'asg', 'ag', NULL, NULL),
(13, 'ss', 'wdqw', 'vv', 'yr', 'v', 'w', NULL, NULL),
(14, 'ss@gmail.com', 'asa', 'dad', 'sadAS', '01722606674', 'fff', NULL, NULL),
(15, 'ss@gmail.com', 'lkn', 'qwd', 'mirpur', '01722606674', 'Dhaka', NULL, NULL),
(16, 'ss@gmail.com', 'asa', 'dad', 'sadAS', '01722606674', 'wde', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_slider`
--

CREATE TABLE `tbl_slider` (
  `slider_id` int(10) UNSIGNED NOT NULL,
  `slider_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `publication_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tbl_slider`
--

INSERT INTO `tbl_slider` (`slider_id`, `slider_image`, `publication_status`, `created_at`, `updated_at`) VALUES
(3, 'slider/hTmV6aGv9DFaw9s109tn.jpg', '1', NULL, NULL),
(4, 'slider/x6pTM4mDByhJT4QPXqSQ.jpg', '1', NULL, NULL),
(5, 'slider/E1ExwISWsCdwDx0WSnnM.jpg', '1', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `tbl_manufacture`
--
ALTER TABLE `tbl_manufacture`
  ADD PRIMARY KEY (`manufacture_id`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `tbl_order_details`
--
ALTER TABLE `tbl_order_details`
  ADD PRIMARY KEY (`order_details_id`);

--
-- Indexes for table `tbl_payment`
--
ALTER TABLE `tbl_payment`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `tbl_products`
--
ALTER TABLE `tbl_products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `tbl_shipping`
--
ALTER TABLE `tbl_shipping`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  ADD PRIMARY KEY (`slider_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `admin_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `category_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `customer_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbl_manufacture`
--
ALTER TABLE `tbl_manufacture`
  MODIFY `manufacture_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `order_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbl_order_details`
--
ALTER TABLE `tbl_order_details`
  MODIFY `order_details_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_payment`
--
ALTER TABLE `tbl_payment`
  MODIFY `payment_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tbl_products`
--
ALTER TABLE `tbl_products`
  MODIFY `product_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_shipping`
--
ALTER TABLE `tbl_shipping`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  MODIFY `slider_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
