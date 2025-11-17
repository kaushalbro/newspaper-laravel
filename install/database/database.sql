-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 25, 2024 at 12:55 PM
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
-- Database: `newspaper`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `name` varchar(191) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(100) DEFAULT NULL,
  `role_id` int(11) NOT NULL DEFAULT 1,
  `photo` varchar(191) DEFAULT NULL,
  `password` varchar(191) NOT NULL,
  `token` varchar(191) DEFAULT NULL,
  `verify` tinyint(4) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `remember_token` varchar(191) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `phone`, `role_id`, `photo`, `password`, `token`, `verify`, `status`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', '01724935886', 1, '1673760795n9.jpg', '$2y$12$seZkxzNoF8pPzZ5TAel1MOdqlWxRoPSyB.2CthLfTXtSxXbuX5kiu', NULL, 1, 1, '63ENkEoiWkfvSNUWEDb1WIoZnpnYmLaMh6mqO735MS43Xd2P7Fxaas75K49O', '2023-01-16 08:48:27', '2023-01-14 23:33:15'),
(2, 'moderator', 'moderator@gmail.com', '1234567890', 2, '1580115253david-beckham-3.jpg', '$2y$12$/tvkCErypLPRh4HKL.2u1eoRJlWWOy7xuuRqpbu9qTdRnd3S8.7Au', NULL, 1, 1, NULL, '2020-10-12 04:47:09', '2020-03-03 10:31:26'),
(3, 'author', 'author@gmail.com', '1234567890', 3, '1580115341David_Beckham_Big_Fits_GQME.jpg', '$2y$10$K2o7/kxA0pyqWG9BiiHsrePUtd96YwOlpJYnH7BRg4wevW4D9/CBy', NULL, 1, 1, NULL, '2021-05-23 05:18:41', '2021-05-22 23:18:41');

-- --------------------------------------------------------

--
-- Table structure for table `admin_languages`
--

CREATE TABLE `admin_languages` (
  `id` int(11) NOT NULL,
  `is_default` tinyint(4) NOT NULL DEFAULT 0,
  `language` varchar(100) NOT NULL,
  `file` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `rtl` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin_languages`
--

INSERT INTO `admin_languages` (`id`, `is_default`, `language`, `file`, `name`, `rtl`) VALUES
(1, 1, 'English', '1605077901sgDxsDx1.json', '1605077901sgDxsDx1', 0),
(4, 0, 'France', '1716627332iwCGwpGF.json', '1716627332iwCGwpGF', 1);

-- --------------------------------------------------------

--
-- Table structure for table `advertisements`
--

CREATE TABLE `advertisements` (
  `id` int(11) NOT NULL,
  `add_placement` varchar(191) DEFAULT NULL,
  `banner_type` varchar(191) DEFAULT NULL,
  `addSize` enum('size_728','size_468','size_234') DEFAULT NULL,
  `photo` varchar(191) DEFAULT NULL,
  `banner_code` text DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `advertisements`
--

INSERT INTO `advertisements` (`id`, `add_placement`, `banner_type`, `addSize`, `photo`, `banner_code`, `link`, `status`) VALUES
(2, 'header', 'image', 'size_728', '1578221214banner.jpg', NULL, 'https://www.google.com/', 1),
(3, 'index_bottom', 'image', 'size_728', '1578285200banner-keren-jasa-desain-banner-desain-banner-izante-720-x-90-011.jpg', NULL, NULL, 1),
(4, 'index_bottom', 'image', 'size_728', '1578285234720x90-Banner-esvs.png', NULL, NULL, 1),
(5, 'index_bottom', 'image', 'size_728', '1578285328ads.jpg', NULL, NULL, 1),
(6, 'index_bottom', 'image', 'size_728', '1578285365IHC  Banner 720x90-01.jpg', NULL, NULL, 1),
(7, 'index_bottom', 'image', 'size_728', '1578287798767f.jpg', NULL, NULL, 1),
(8, 'index_bottom', 'image', 'size_728', '1578287819imag.jpg', NULL, NULL, 1),
(9, 'index_bottom', 'image', 'size_728', '1578287858ECCO+Shoes+Banner+Ad+720+x+90.jpg', NULL, NULL, 1),
(10, 'sidebar_bottom', 'image', 'size_468', '1578288636add.jpg', NULL, 'https://www.google.com/', 1),
(11, 'sponsor', 'image', 'size_468', '1578288672add.jpg', NULL, 'https://www.google.com/', 1),
(12, 'sponsor', 'image', 'size_468', '1578288686add.jpg', NULL, NULL, 1),
(14, 'header', 'image', 'size_728', '1602407218download.png', NULL, 'https://www.google.com/', 1),
(15, 'header', 'code', 'size_728', NULL, '<img src=\'data:image/gif;base64,R0lGODlhAQABAAAAACH5BAEKAAEALAAAAAABAAEAAAICTAEAOw==\r\n\' data-src=\"https://varient.codingest.com/assets/blocks/bn3.jpg\" alt=\"varient\" class=\"lazyload\">', NULL, 1),
(16, 'header', 'image', 'size_728', '1602996193images.jpg', NULL, 'https://www.google.com/', 1),
(17, 'header', 'image', 'size_728', '1604993202download.png', NULL, 'https://www.google.com/', 1),
(18, 'header', 'image', 'size_728', '1604993226example-1.png', NULL, 'https://www.google.com/', 1),
(19, 'header', 'image', 'size_728', '1604993311example-1.png', NULL, 'https://www.google.com/', 1),
(20, 'header', 'image', 'size_728', '1604993320images (1).jpg', NULL, 'https://www.google.com/', 1),
(21, 'header', 'image', 'size_728', '1604993326download.jpg', NULL, 'https://www.google.com/', 1),
(22, 'header', 'image', 'size_728', '1604993332images.jpg', NULL, 'https://www.google.com/', 1);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(191) DEFAULT NULL,
  `slug` varchar(100) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `color` varchar(20) DEFAULT NULL,
  `category_order` int(11) DEFAULT NULL,
  `show_at_homepage` tinyint(4) DEFAULT 1,
  `show_on_menu` tinyint(4) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `language_id`, `title`, `slug`, `parent_id`, `color`, `category_order`, `show_at_homepage`, `show_on_menu`) VALUES
(1, 1, 'Home', 'home', NULL, '#55efc4', 0, 0, 1),
(2, 1, 'About', 'about', NULL, '#81ecec', 5, 1, 1),
(3, 1, 'Lifestyle', 'lifestyle', NULL, '#74b9ff', 1, 1, 1),
(4, 1, 'Business', 'business', NULL, '#a29bfe', 2, 1, 1),
(5, 1, 'Sports', 'sports', NULL, '#ff7675', 4, 1, 1),
(6, 1, 'Entertainment', 'entertainment', NULL, '#e17055', 3, 1, 1),
(7, 1, 'Tech', 'tech', NULL, '#f8c291', 7, 1, 1),
(8, 1, 'Pages', 'pages', NULL, '#b8e994', 6, 1, 1),
(10, 1, 'Team', 'team', 8, NULL, NULL, 1, 1),
(11, 1, 'Pricing', 'pricing', 8, NULL, NULL, 1, 1),
(12, 1, 'Faq', 'faq', 8, NULL, NULL, 1, 1),
(15, 2, 'হোম', 'হোম', NULL, '#ff7675', 0, 0, 1),
(16, 2, 'আন্তর্জাতিক', 'আন্তর্জাতিক', NULL, '#1abc9c', 2, 1, 1),
(17, 2, 'রাজনীতি', 'রাজনীতি', NULL, '#b8e994', 1, 1, 1),
(18, 2, 'ব্যবসায়-বাণিজ্য', 'ব্যবসায়-বাণিজ্য', NULL, '#00b894', 3, 1, 1),
(19, 2, 'খেলা-ধুলা', 'খেলা-ধুলা', NULL, '#82589f', 5, 1, 1),
(20, 2, 'বিনোদন', 'বিনোদন', NULL, '#6c5ce7', 6, 1, 1),
(21, 2, 'বিজ্ঞান ও প্রযুক্তি', 'বিজ্ঞান ও প্রযুক্তি', NULL, '#b2bec3', 7, 1, 1),
(22, 2, 'অন্যান্য', 'অন্যান্য', NULL, '#a29bfe', 10, 1, 0),
(23, 2, 'টিম', 'টিম', 22, NULL, NULL, 1, 1),
(24, 2, 'ফ্যাশন', 'ফ্যাশন', NULL, '#ff6b81', 8, 1, 1),
(25, 2, 'ভ্রমণ', 'ভ্রমণ', NULL, '#546de5', 52, 1, 1),
(26, 1, 'Rss News', 'rss-news', NULL, '#e17055', 0, 1, 1),
(27, 2, 'আর এস এস নিউজ', 'আর-এস-এস-নিউজ', NULL, '#b2bec3', 4, 1, 1),
(28, 2, 'ক্রিকেট', 'ক্রিকেট', 19, NULL, NULL, 1, 1),
(29, 2, 'ফুটবল', 'ফুটবল', 19, NULL, NULL, 1, 1),
(30, 1, 'Cricket', 'Cricket', 5, NULL, NULL, 1, 1),
(31, 1, 'Football', 'footbal', 5, NULL, NULL, 1, 1),
(32, 2, 'আমেরিকা', 'আমেরিকা', 16, NULL, NULL, 1, 1),
(33, 2, 'অস্ট্রেলিয়া', 'অস্ট্রেলিয়া', 16, NULL, NULL, 1, 1),
(34, 2, 'বলিউড', 'বলিউড', 20, NULL, NULL, 1, 1),
(35, 2, 'হলিউড', 'হলিউড', 20, NULL, NULL, 1, 1),
(36, 2, 'গ্যাজেটস', 'গ্যাজেটস', 21, NULL, NULL, 1, 1),
(37, 2, 'বিজ্ঞান', 'বিজ্ঞান', 21, NULL, NULL, 1, 1),
(41, 2, 'টলিউড', 'টলিউড', 20, NULL, NULL, 0, 1),
(44, 2, 'কুইজ', 'কুইজ', NULL, '#c3a217', 9, 1, 1),
(48, 1, 'Global Business', 'Global-Business', 4, NULL, NULL, 1, 1),
(49, 1, 'Banking', 'Banking', 4, NULL, NULL, 1, 1),
(50, 1, 'Spotlight', 'Spotlight', 3, NULL, NULL, 1, 1),
(51, 1, 'Recipe', 'Recipe', 3, NULL, NULL, 1, 1),
(53, 1, 'test category', 'test category', NULL, '#ec2020', 53, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `follows`
--

CREATE TABLE `follows` (
  `id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `follower_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `follows`
--

INSERT INTO `follows` (`id`, `admin_id`, `follower_id`) VALUES
(3, 1, 6),
(4, 1, 3),
(5, 1, 7),
(6, 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `fonts`
--

CREATE TABLE `fonts` (
  `id` int(11) NOT NULL,
  `is_default` tinyint(4) NOT NULL DEFAULT 0,
  `font_family` varchar(50) DEFAULT NULL,
  `font_value` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `fonts`
--

INSERT INTO `fonts` (`id`, `is_default`, `font_family`, `font_value`) VALUES
(1, 0, 'Roboto', 'Roboto'),
(2, 0, 'Spartan', 'Spartan'),
(3, 0, 'Oxanium', 'Oxanium'),
(4, 1, 'Open Sans', 'Open Sans'),
(5, 0, 'Caladea', 'Caladea'),
(6, 0, 'Montserrat', 'Montserrat'),
(7, 0, 'Trade Winds', 'Trade+Winds'),
(8, 0, 'New Rocker', 'New+Rocker'),
(9, 0, 'Lacquer', 'Lacquer');

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `photo` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `post_id`, `photo`) VALUES
(29, 42, '1578127586joya-ahasan.jpg'),
(30, 42, '1578127586377761_179-600x337.jpg'),
(31, 42, '1578127586164059_Ahsan.jpg'),
(32, 247, '159126244714975762_1631317480501741_490245374_o.jpg'),
(33, 247, '159126244768626497_1696426900506281_7944048120013258752_o.jpg'),
(34, 247, '159126244883207239_2618960801709102_3429411530498637824_n.jpg'),
(35, 247, '159126244888246844_207613606980431_991879025783734272_n.jpg'),
(36, 248, '1591263106xD7rRfOg.jpg'),
(37, 248, '1591263107Pqybxa0L.jpg'),
(38, 248, '1591263108pb1FIKE4.jpg'),
(39, 257, '1601193880buNh5FeW.jpg'),
(40, 257, '1601193880GDqPk0Co.jpg'),
(41, 257, '1601193880IjFHKWnU.jpg'),
(42, 258, '1601274606IKnUQS6o.jpg'),
(43, 258, '1601274606wTQVEs52.jpg'),
(44, 258, '1601274606zobUab6V.jpg'),
(45, 259, '1601275946ICxmn6FP.jpg'),
(46, 259, '16012759465XHrbwZR.jpg'),
(47, 259, '1601275946Gs7EiiRB.jpg'),
(48, 259, '1601282031Dhaka_14th_March_(32624769393).jpg'),
(52, 259, '1601285567places-to-eat-in-noida-live-more-zone-dbs.jpg'),
(53, 322, '1601958165yPpKZyjX.jpg'),
(56, 322, '1601958928manny-moreno-x95vQCFQUmk-unsplash.jpg'),
(57, 323, '1601959076xHBuJhmT.jpg'),
(58, 323, '16019590770urHl8SW.jpg'),
(60, 344, '1602305612izPBavCh.jpg'),
(61, 344, '160230561424fin7m7.jpg'),
(62, 344, '16023056153efGRGOE.jpg'),
(63, 344, '1602305653photo-1601412349797-2383bac9c6f7.jpg'),
(64, 448, '16321275278RSlN2uf.jpg'),
(65, 448, '1632127527muzMcUv5.jpg'),
(66, 449, '16321291250qCe6j7q.jpg'),
(67, 449, '1632129125jpYDSxxQ.jpg'),
(68, 450, '1632129576hbNVXQz0.jpg'),
(69, 450, '1632129576SmXbSo05.jpg'),
(70, 451, '1632129774ROOGNghp.jpg'),
(71, 451, '1632129774Uf097JRD.jpg'),
(72, 452, '1632130219JkIoaGFO.jpg'),
(73, 452, '16321302194yryw6nT.jpg'),
(74, 452, '1632130219jVn7edgC.jpg'),
(75, 453, '1632130386eP3lW0JM.jpg'),
(76, 453, '1632130386KVVVlShf.jpg'),
(77, 453, '1632130386lcukXYuc.jpg'),
(78, 454, '1632130538sffuJ7RW.jpg'),
(79, 454, '1632130539oaElQDQZ.jpg'),
(80, 454, '1632130539IIGaaNTc.jpg'),
(81, 455, '1632194110EjGyneIC.jpg'),
(82, 455, '1632194110NKYaDOl2.jpg'),
(83, 456, '1673771766WDqr4kwL.jpg'),
(84, 459, '1673777833KGavI4hy.jpg'),
(85, 463, '1673846141ezSJV4ix.jpg'),
(86, 463, '1673846141Cs2hPcVL.jpg'),
(88, 463, '1673846918user-4.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `generalsettings`
--

CREATE TABLE `generalsettings` (
  `id` int(11) NOT NULL,
  `logo` varchar(100) NOT NULL,
  `footer_logo` varchar(100) NOT NULL,
  `favicon` varchar(191) DEFAULT NULL,
  `loader` varchar(100) DEFAULT NULL,
  `is_loader` tinyint(4) NOT NULL DEFAULT 0,
  `admin_loader` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `theme_color` varchar(100) DEFAULT NULL,
  `footer_color` varchar(100) DEFAULT NULL,
  `tawk_to` varchar(100) DEFAULT NULL,
  `is_talkto` tinyint(4) NOT NULL DEFAULT 0,
  `disqus` varchar(100) DEFAULT NULL,
  `is_capcha` tinyint(4) NOT NULL DEFAULT 0,
  `is_disqus` tinyint(4) NOT NULL DEFAULT 0,
  `copyright_text` text DEFAULT NULL,
  `copyright_color` varchar(100) DEFAULT NULL,
  `footer_text` text DEFAULT NULL,
  `tags` text DEFAULT NULL,
  `error_photo` varchar(100) DEFAULT NULL,
  `error_title` varchar(191) DEFAULT NULL,
  `error_text` text DEFAULT NULL,
  `driver` varchar(100) DEFAULT NULL,
  `smtp_host` varchar(100) DEFAULT NULL,
  `smtp_port` varchar(100) DEFAULT NULL,
  `email_encryption` varchar(100) DEFAULT NULL,
  `smtp_user` varchar(100) DEFAULT NULL,
  `smtp_pass` varchar(100) DEFAULT NULL,
  `from_email` varchar(100) DEFAULT NULL,
  `from_name` varchar(100) DEFAULT NULL,
  `time_zone` varchar(100) DEFAULT NULL,
  `is_smtp` tinyint(4) NOT NULL DEFAULT 0,
  `is_verification_email` tinyint(4) NOT NULL DEFAULT 0,
  `version` varchar(255) DEFAULT NULL,
  `captcha_site_key` varchar(255) DEFAULT NULL,
  `captcha_secret_key` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `generalsettings`
--

INSERT INTO `generalsettings` (`id`, `logo`, `footer_logo`, `favicon`, `loader`, `is_loader`, `admin_loader`, `title`, `theme_color`, `footer_color`, `tawk_to`, `is_talkto`, `disqus`, `is_capcha`, `is_disqus`, `copyright_text`, `copyright_color`, `footer_text`, `tags`, `error_photo`, `error_title`, `error_text`, `driver`, `smtp_host`, `smtp_port`, `email_encryption`, `smtp_user`, `smtp_pass`, `from_email`, `from_name`, `time_zone`, `is_smtp`, `is_verification_email`, `version`, `captcha_site_key`, `captcha_secret_key`) VALUES
(1, '1673753628163478746416347874591611123189logo2.png', '16737536321634787490163478746416347874591611123189logo2.png', '1579416557favicon.png', '1579417347loader.gif', 0, '1603002831loader.gif', 'NewsPaper', '#ff0000', '#196cad', '5e37fe76298c395d1ce5e8b1', 1, 'newspaper-7', 1, 1, 'Copyright © 2019. All Rights Reserved By GeniusOcean.com', '#000000', '<font size=\"3\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmid tempor incididunt ut labore et dolore magna aliqua.</font>', 'sports, national, worlds, usa, popular, politics, election, science, bollywood, hollywood, barcalona, justin, brazil, australia, cricket, football, google, facebook, linkedin, bangladesh', '1579421576banner_error_404.jpg', 'fgf', 'fgh', 'smtp', 'smtp.mailtrap.io', '587', 'tls', 'df3da325f3ec48', '8e18def867639a', 'geniustest@gmail.com', 'GeniusTest', 'Asia/Dhaka', 1, 1, '2.2', 'fsasdf', 'fsdgdfgd');

-- --------------------------------------------------------

--
-- Table structure for table `image_albums`
--

CREATE TABLE `image_albums` (
  `id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `photo` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `album_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `image_albums`
--

INSERT INTO `image_albums` (`id`, `language_id`, `photo`, `album_name`) VALUES
(1, 2, '158209645198b1a8329744e9bc64e5533c8673dc24-5e48e1fcbdf1a.jpg', 'জীবনধারা'),
(3, 2, '16029958291601354834charlie-chaplin-kimdir.jpg', 'শিল্প ও সংস্কৃতি');

-- --------------------------------------------------------

--
-- Table structure for table `image_categories`
--

CREATE TABLE `image_categories` (
  `id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `image_album_id` int(11) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `image_categories`
--

INSERT INTO `image_categories` (`id`, `language_id`, `image_album_id`, `name`) VALUES
(1, 2, 1, 'ফ্যাশন'),
(3, 2, 1, 'বাইরে কার্যক্রম'),
(4, 2, 3, 'জানুয়ারী'),
(5, 2, 3, 'ফেব্রুয়ারি'),
(6, 2, 3, 'মার্চ');

-- --------------------------------------------------------

--
-- Table structure for table `image_galleries`
--

CREATE TABLE `image_galleries` (
  `id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `image_album_id` int(11) NOT NULL,
  `image_category_id` int(11) NOT NULL,
  `gallery` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `image_galleries`
--

INSERT INTO `image_galleries` (`id`, `language_id`, `image_album_id`, `image_category_id`, `gallery`) VALUES
(1, 2, 1, 1, '16026705424.jpg'),
(2, 2, 1, 1, '1602670428k.jpeg'),
(3, 2, 1, 1, '1602670419b.jpeg'),
(4, 2, 1, 3, '1602670382p.jpeg'),
(5, 2, 3, 4, '158209611798b1a8329744e9bc64e5533c8673dc24-5e48e1fcbdf1a.jpg'),
(6, 2, 3, 4, '158209611754ca53afe29290859362fa3afc883d9b-5e4cb769d3da6.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` int(11) NOT NULL,
  `is_default` tinyint(4) NOT NULL DEFAULT 0,
  `language` varchar(20) DEFAULT NULL,
  `file` varchar(100) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `rtl` varchar(100) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `is_default`, `language`, `file`, `name`, `rtl`, `status`) VALUES
(1, 1, 'English', '1716627345FuDfkSeJ.json', '1716627345FuDfkSeJ', '0', 0),
(2, 0, 'বাংলা', '1603003521iQyvW0Lo.json', '1603003521iQyvW0Lo', '0', 0);

-- --------------------------------------------------------

--
-- Table structure for table `logos`
--

CREATE TABLE `logos` (
  `id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `header_logo` varchar(255) DEFAULT NULL,
  `footer_logo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `logos`
--

INSERT INTO `logos` (`id`, `language_id`, `header_logo`, `footer_logo`) VALUES
(1, 2, '1673753662163478749016347874591611123189logo2.png', '16737536621634787505163478746416347874591611123189logo2.png'),
(3, 1, '167375364316347874591611123189logo2.png', '1673753643163478746416347874591611123189logo2.png');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `slug` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `description` text CHARACTER SET utf32 COLLATE utf32_general_ci DEFAULT NULL,
  `placement` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `wbsite_right_column` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `language_id`, `title`, `slug`, `description`, `placement`, `status`, `wbsite_right_column`) VALUES
(3, 2, 'Terms & Conditions', 'Terms-&-Conditions', '<p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; overflow-wrap: break-word; color: rgb(34, 34, 34); font-family: Verdana, Helvetica, sans-serif; font-size: 15px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi scelerisque, nibh et venenatis pulvinar, est orci euismod diam, et varius tortor sem nec diam. Praesent id sollicitudin urna. Suspendisse potenti. Aliquam ut blandit diam. Duis et accumsan massa. Integer volutpat arcu in arcu scelerisque tristique. Suspendisse sem mauris, iaculis sed urna eget, feugiat bibendum dolor. Donec feugiat ac magna eget tempus. Nulla vel consectetur tortor. Proin tincidunt massa mauris, vel eleifend urna feugiat quis.</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; overflow-wrap: break-word; color: rgb(34, 34, 34); font-family: Verdana, Helvetica, sans-serif; font-size: 15px;\">Aliquam non laoreet felis. Aliquam erat volutpat. Maecenas posuere magna nibh, sed varius leo luctus quis. Nullam iaculis posuere commodo. Morbi hendrerit malesuada nisi, quis mollis sem fermentum a. Proin ornare quam ac ante dignissim, id pulvinar risus egestas. Vivamus at efficitur diam, quis tincidunt libero.</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; overflow-wrap: break-word; color: rgb(34, 34, 34); font-family: Verdana, Helvetica, sans-serif; font-size: 15px;\">Aliquam non nulla est. Maecenas lacinia ante tellus, et pharetra tellus imperdiet id. Nullam in nibh lectus. Aenean eu auctor risus. Etiam mattis ultrices lacus suscipit finibus. Nulla non vehicula metus. Etiam ut mattis leo. Quisque hendrerit hendrerit arcu, vitae blandit sapien posuere quis. Curabitur laoreet ligula neque, vel interdum metus consectetur sed.</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; overflow-wrap: break-word; color: rgb(34, 34, 34); font-family: Verdana, Helvetica, sans-serif; font-size: 15px;\">Vestibulum mollis sodales placerat. Aenean aliquet dui risus, et aliquet turpis ultricies vitae. Curabitur mollis nulla dolor, sit amet pretium elit rutrum vel. Aenean ut orci turpis. Phasellus gravida, justo eget dictum consectetur, leo diam interdum ante, non ultricies lorem metus vitae tortor. Nullam sed lacus ut tellus dignissim pulvinar ut gravida dolor. Nam finibus nec nisl non viverra.</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; overflow-wrap: break-word; color: rgb(34, 34, 34); font-family: Verdana, Helvetica, sans-serif; font-size: 15px;\">Integer iaculis, dolor ac iaculis elementum, tellus erat luctus lacus, ac tincidunt leo nunc in velit. Donec maximus leo id mauris suscipit, eu pretium nulla fermentum. Nullam ante metus, condimentum quis dictum vel, tincidunt at erat. Aliquam interdum ultricies eros, sed tempus felis venenatis non. Duis lobortis diam quis lorem pellentesque, non mollis nunc tristique. Praesent id commodo ligula. Sed ac tincidunt sapien.</p>', 'footer', 1, 1),
(5, 2, 'Privacy', 'Privacy', '<p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; font-size: 15px; color: rgb(41, 41, 58); font-family: Verdana, Helvetica, sans-serif; overflow-wrap: break-word;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi scelerisque, nibh et venenatis pulvinar, est orci euismod diam, et varius tortor sem nec diam. Praesent id sollicitudin urna. Suspendisse potenti. Aliquam ut blandit diam. Duis et accumsan massa. Integer volutpat arcu in arcu scelerisque tristique. Suspendisse sem mauris, iaculis sed urna eget, feugiat bibendum dolor. Donec feugiat ac magna eget tempus. Nulla vel consectetur tortor. Proin tincidunt massa mauris, vel eleifend urna feugiat quis.</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; font-size: 15px; color: rgb(41, 41, 58); font-family: Verdana, Helvetica, sans-serif; overflow-wrap: break-word;\">Aliquam non laoreet felis. Aliquam erat volutpat. Maecenas posuere magna nibh, sed varius leo luctus quis. Nullam iaculis posuere commodo. Morbi hendrerit malesuada nisi, quis mollis sem fermentum a. Proin ornare quam ac ante dignissim, id pulvinar risus egestas. Vivamus at efficitur diam, quis tincidunt libero.</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; font-size: 15px; color: rgb(41, 41, 58); font-family: Verdana, Helvetica, sans-serif; overflow-wrap: break-word;\">Aliquam non nulla est. Maecenas lacinia ante tellus, et pharetra tellus imperdiet id. Nullam in nibh lectus. Aenean eu auctor risus. Etiam mattis ultrices lacus suscipit finibus. Nulla non vehicula metus. Etiam ut mattis leo. Quisque hendrerit hendrerit arcu, vitae blandit sapien posuere quis. Curabitur laoreet ligula neque, vel interdum metus consectetur sed.</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; font-size: 15px; color: rgb(41, 41, 58); font-family: Verdana, Helvetica, sans-serif; overflow-wrap: break-word;\">Vestibulum mollis sodales placerat. Aenean aliquet dui risus, et aliquet turpis ultricies vitae. Curabitur mollis nulla dolor, sit amet pretium elit rutrum vel. Aenean ut orci turpis. Phasellus gravida, justo eget dictum consectetur, leo diam interdum ante, non ultricies lorem metus vitae tortor. Nullam sed lacus ut tellus dignissim pulvinar ut gravida dolor. Nam finibus nec nisl non viverra.</p><p style=\"margin-right: 0px; margin-bottom: 10px; margin-left: 0px; font-size: 15px; color: rgb(41, 41, 58); font-family: Verdana, Helvetica, sans-serif; overflow-wrap: break-word;\">Integer iaculis, dolor ac iaculis elementum, tellus erat luctus lacus, ac tincidunt leo nunc in velit. Donec maximus leo id mauris suscipit, eu pretium nulla fermentum. Nullam ante metus, condimentum quis dictum vel, tincidunt at erat. Aliquam interdum ultricies eros, sed tempus felis venenatis non. Duis lobortis diam quis lorem pellentesque, non mollis nunc tristique. Praesent id commodo ligula. Sed ac tincidunt sapien.</p>', 'footer', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `personality_answers`
--

CREATE TABLE `personality_answers` (
  `id` int(11) NOT NULL,
  `personality_question_id` int(11) NOT NULL,
  `answer_title` varchar(255) DEFAULT NULL,
  `answer_photo` varchar(255) DEFAULT NULL,
  `answer_option` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `personality_answers`
--

INSERT INTO `personality_answers` (`id`, `personality_question_id`, `answer_title`, `answer_photo`, `answer_option`) VALUES
(182, 85, 'q', NULL, '2'),
(183, 85, 'w', NULL, '1'),
(184, 86, 'x', NULL, '1'),
(185, 86, 'y', NULL, '1'),
(186, 87, 't', '1603774746BPKxGttS.jpg', '2'),
(187, 87, 'y', '1603774746Cl3lZ8bE.jpg', '1'),
(188, 88, 'gfhf', '1673856936IrRAMUYT.jpg', '1'),
(189, 88, 'gfhf', '1673856936M4cBZtfC.jpg', '1');

-- --------------------------------------------------------

--
-- Table structure for table `personality_questions`
--

CREATE TABLE `personality_questions` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `question_title` varchar(255) DEFAULT NULL,
  `question_photo` varchar(255) DEFAULT NULL,
  `question_description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `personality_questions`
--

INSERT INTO `personality_questions` (`id`, `post_id`, `question_title`, `question_photo`, `question_description`) VALUES
(85, 394, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit', NULL, '<br>'),
(86, 394, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit', '1603774746lPXWJVsE.jpg', '<br>'),
(87, 394, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit', NULL, '<br>'),
(88, 468, 'fghgfh', NULL, 'fghgf');

-- --------------------------------------------------------

--
-- Table structure for table `personality_results`
--

CREATE TABLE `personality_results` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `result_title` varchar(255) DEFAULT NULL,
  `result_photo` varchar(255) DEFAULT NULL,
  `result_description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `personality_results`
--

INSERT INTO `personality_results` (`id`, `post_id`, `result_title`, `result_photo`, `result_description`) VALUES
(74, 394, 'You are human', '1603774742dd2EHhbi.jpg', '<br>'),
(75, 394, 'You are confident', '1603774743g19zv8FE.jpg', '<br>'),
(76, 468, 'ghgfhf', NULL, 'fghgfh');

-- --------------------------------------------------------

--
-- Table structure for table `poll_answers`
--

CREATE TABLE `poll_answers` (
  `id` int(11) NOT NULL,
  `poll_question_id` int(11) NOT NULL,
  `poll_option` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `poll_answers`
--

INSERT INTO `poll_answers` (`id`, `poll_question_id`, `poll_option`) VALUES
(25, 8, 'Ocean'),
(31, 10, 'হ্যাঁ'),
(32, 10, 'না'),
(33, 10, 'মন্তব্য নেই'),
(34, 11, 'হ্যাঁ'),
(35, 11, 'না'),
(36, 11, 'মন্তব্য নেই'),
(40, 8, 'sky'),
(41, 8, 'sun'),
(68, 15, 'Yes'),
(69, 15, 'No'),
(70, 15, 'No Comment'),
(84, 19, 'Car'),
(85, 19, 'House'),
(86, 19, 'Plane');

-- --------------------------------------------------------

--
-- Table structure for table `poll_questions`
--

CREATE TABLE `poll_questions` (
  `id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `question` varchar(191) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `end_date` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `poll_questions`
--

INSERT INTO `poll_questions` (`id`, `language_id`, `question`, `status`, `end_date`, `created_at`, `updated_at`) VALUES
(8, 2, 'Do You Love to See?', 1, '2024-11-23 04:19:58', '2020-05-09 04:20:10', '2020-06-03 02:54:03'),
(10, 2, 'বাস-ট্রাক থেকে চাঁদা নেওয়া পুলিশ সদস্যদের বিরুদ্ধে ব্যবস্থা নেওয়া হবে বলে মনে করেন কি?', 1, '2020-05-31 05:02:01', '2020-05-09 05:02:08', '2020-05-09 05:02:08'),
(11, 2, 'আসন্ন ঈদে মহাসড়ক বা রেলপথের পাশে পশুর হাট করা যাবে না—স্বরাষ্ট্রমন্ত্রীর এ নির্দেশনায় কাজ হবে বলে মনে করেন কি?', 1, '2020-05-31 05:36:51', '2020-05-09 05:36:59', '2020-05-09 05:36:59'),
(15, 2, 'Do you belive u can do this?', 1, '2020-10-24 10:11:22', '2020-10-04 10:11:28', '2020-10-04 10:11:28'),
(19, 1, 'What do you want?', 1, '2020-11-07 06:46:14', '2020-11-06 00:47:09', '2020-11-06 00:47:09');

-- --------------------------------------------------------

--
-- Table structure for table `poll_results`
--

CREATE TABLE `poll_results` (
  `id` int(11) NOT NULL,
  `poll_question_id` int(11) NOT NULL,
  `poll_answer_id` int(11) NOT NULL,
  `ip_address` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `poll_results`
--

INSERT INTO `poll_results` (`id`, `poll_question_id`, `poll_answer_id`, `ip_address`) VALUES
(18, 10, 32, '::1'),
(19, 11, 35, '::1'),
(20, 8, 25, '::1'),
(21, 14, 62, '::1'),
(22, 15, 68, '::1'),
(23, 19, 84, '103.127.4.242'),
(24, 19, 85, '::1');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `language_id` int(11) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `slug` varchar(100) DEFAULT NULL,
  `post_type` varchar(100) DEFAULT NULL,
  `meta_tag` text DEFAULT NULL,
  `show_right_column` tinyint(4) NOT NULL DEFAULT 0,
  `is_feature` tinyint(4) NOT NULL DEFAULT 0,
  `is_slider` tinyint(4) NOT NULL DEFAULT 0,
  `slider_left` tinyint(4) NOT NULL DEFAULT 0,
  `slider_right` tinyint(4) NOT NULL DEFAULT 0,
  `is_trending` tinyint(4) NOT NULL DEFAULT 0,
  `is_videoGallery` tinyint(1) DEFAULT 0,
  `tags` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `image_big` varchar(191) DEFAULT NULL,
  `rss_image` varchar(191) DEFAULT NULL,
  `image_small` varchar(191) DEFAULT NULL,
  `video` varchar(255) DEFAULT NULL,
  `embed_video` text DEFAULT NULL,
  `audio` varchar(255) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `subcategories_id` int(11) DEFAULT NULL,
  `schedule_post` tinyint(4) NOT NULL DEFAULT 0,
  `schedule_post_date` timestamp NULL DEFAULT NULL,
  `is_pending` tinyint(4) NOT NULL DEFAULT 0,
  `admin_id` int(11) NOT NULL DEFAULT 0,
  `user_id` int(11) DEFAULT 0,
  `status` enum('true','false','draft') DEFAULT 'false',
  `is_draft` tinyint(4) NOT NULL DEFAULT 0,
  `rss_link` varchar(191) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `language_id`, `title`, `slug`, `post_type`, `meta_tag`, `show_right_column`, `is_feature`, `is_slider`, `slider_left`, `slider_right`, `is_trending`, `is_videoGallery`, `tags`, `description`, `image_big`, `rss_image`, `image_small`, `video`, `embed_video`, `audio`, `category_id`, `subcategories_id`, `schedule_post`, `schedule_post_date`, `is_pending`, `admin_id`, `user_id`, `status`, `is_draft`, `rss_link`, `created_at`, `updated_at`) VALUES
(46, 2, 'বাংলাদেশের ভিডিও ভারতের দাবি করে বিপাকে ইমরান খান', 'বাংলাদেশের-ভিডিও-ভারতের-দাবি-করে-বিপাকে-ইমরান-খান', 'article', 'বাংলাদেশের ভিডিও ভারতের দাবি করে বিপাকে ইমরান খান', 1, 0, 1, 0, 0, 1, 0, 'বাংলাদেশের ভিডিও ভারতের দাবি করে বিপাকে ইমরান খান', '<p style=\"margin-right: 0px; margin-bottom: var(--space2); margin-left: 0px; padding: 0px; font-family: Shurjo, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Oxygen, Ubuntu, Cantarell, &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, sans-serif; line-height: 1.67; white-space: break-spaces; color: rgb(18, 18, 18);\"><font size=\"3\">করোনাভাইরাসের কারণে এবারের উচ্চমাধ্যমিক (এইচএসসি) বা সমমানের পরীক্ষা হবে না, সেই ঘোষণা আজ বুধবার জানিয়ে দিয়েছেন শিক্ষামন্ত্রী। তবে পরীক্ষার্থীর ফলাফল কী হবে সেটি ঠিক হবে তার জেএসসি ও এসএসসি এবং সমমানের পরীক্ষার ফলের ভিত্তিতে।  আগামী ডিসেম্বর এই মূল্যায়নের কাজটি করা হবে। আর এ পরীক্ষায় পাস করানো হবে সকল শিক্ষার্থীকেই।</font></p><p style=\"margin-right: 0px; margin-bottom: var(--space2); margin-left: 0px; padding: 0px; font-family: Shurjo, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Oxygen, Ubuntu, Cantarell, &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, sans-serif; line-height: 1.67; white-space: break-spaces; color: rgb(18, 18, 18);\"><font size=\"3\">প্রথম আলোকে ঢাকা মাধ্যমিক ও উচ্চ মাধ্যমিক শিক্ষা বোর্ডে &nbsp;চেয়ারম্যান মু. জিয়াউল হক বলেন, ‘অবশ্যই সবাই পাস করবে। তবে ফলটা কী হবে সেটা নির্ভর করছে তার জেএসসি ও এসএসসির পরীক্ষার ফলাফলের ওপর।</font></p>', '1578221942f8daffa91ff34cdb66f6fc9ef50809b8-59f963d716138.jpg', NULL, NULL, NULL, NULL, NULL, 15, NULL, 0, NULL, 0, 1, NULL, 'true', 0, NULL, '2023-01-15 09:01:21', '2023-01-15 03:01:21'),
(47, 2, '১ হাজার কোটি ডলার সম্পদ হারিয়েও শীর্ষ ধনী বেজোস', '১-হাজার-কোটি-ডলার-সম্পদ-হারিয়েও-শীর্ষ-ধনী-বেজোস', 'article', '১ হাজার কোটি ডলার সম্পদ হারিয়েও শীর্ষ ধনী বেজোস', 1, 0, 0, 0, 1, 1, 0, '১ হাজার কোটি ডলার সম্পদ হারিয়েও শীর্ষ ধনী বেজোস', '<span style=\"color: rgb(0, 0, 0); font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; font-size: 18px; background-color: rgb(255, 255, 255);\">ব্লুমবার্গ মিলিয়নিয়ার ইনডেক্সে ২০১৯ সালের ৩১ ডিসেম্বর তিনি বিশ্বের শীর্ষ ধনী ছিলেন। সেদিন তাঁর সম্পদ ছিল ১১ হাজার ৫০০ কোটি ডলার। যদিও নিকটতম প্রতিদ্বন্দ্বী তাঁর চেয়ে খুব বেশি পেছনে নেই। মাইক্রোসফটের সহপ্রতিষ্ঠাতা বিল গেটস ১১ হাজার ৩০০ কোটি ডলারের সম্পদ নিয়ে দ্বিতীয় স্থানে আছেন।</span><br>', '157812876684862862c8c3ac0c13c3cd84dc8f4cf3-5c2717e57d6e3.jpg', NULL, NULL, NULL, NULL, NULL, 18, NULL, 0, NULL, 0, 1, NULL, 'true', 0, NULL, '2023-01-15 09:01:21', '2023-01-15 03:01:21'),
(48, 2, 'বিমানের কাছে নতুন ২ ড্যাশ উড়োজাহাজ বিক্রির আগ্রহ কানাডার', 'বিমানের-কাছে-নতুন-২-ড্যাশ-উড়োজাহাজ-বিক্রির-আগ্রহ-কানাডার', 'article', 'বিমানের কাছে নতুন ২ ড্যাশ উড়োজাহাজ বিক্রির আগ্রহ কানাডার', 1, 0, 0, 0, 0, 0, 0, 'বিমানের কাছে নতুন ২ ড্যাশ উড়োজাহাজ বিক্রির আগ্রহ কানাডার', '<p style=\"outline: 0px; padding: 0px; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; color: rgb(0, 0, 0); font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif;\"><span style=\"background-color: rgb(255, 255, 255);\">কানাডার কাছ থেকে কেনা নতুন তিনটি ড্যাশ-৮ কিউ-৪০০ মডেলের উড়োজাহাজ চলতি বছরের মে-জুনে বিমানবহরে যোগ হবে। তবে বিমানের কাছে একই মডেলের আরও নতুন দুটি উড়োজাহাজ বিক্রির প্রস্তাব দিয়েছে নির্মাতা প্রতিষ্ঠান কানাডিয়ান কমার্শিয়াল করপোরেশন।</span></p><p style=\"outline: 0px; padding: 0px; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; color: rgb(0, 0, 0); font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif;\"><span style=\"background-color: rgb(255, 255, 255);\">আজ বৃহস্পতিবার সচিবালয়ে বাংলাদেশে কানাডার হাইকমিশনার বেনইত প্রিফনটেইনের নেতৃত্বে একটি প্রতিনিধিদল বেসামরিক বিমান পরিবহন ও পর্যটন প্রতিমন্ত্রী মাহবুব আলীর সঙ্গে বৈঠকে এ প্রস্তাব দেয়। বৈঠকে বেসামরিক বিমান পরিবহন ও পর্যটন মন্ত্রণালয়ের সিনিয়র সচিব মো. মহিবুল হক, কানাডার উড়োজাহাজ নির্মাণকারী সরকারি প্রতিষ্ঠান কানাডিয়ান কমার্শিয়াল করপোরেশনের এশিয়া অঞ্চলের পরিচালক ইভোনি চিন ও ঢাকায় কানাডিয়ান হাইকমিশনের ট্রেড কমিশনার মোহাম্মদ কামাল উদ্দিন উপস্থিত ছিলেন।</span></p>', '15781288675e8ade064e23d9c1d844f32bbcfc23f2-5e0dd638d91b8.jpg', NULL, NULL, NULL, NULL, NULL, 18, NULL, 0, NULL, 0, 1, NULL, 'true', 0, NULL, '2023-01-15 09:01:21', '2023-01-15 03:01:21'),
(49, 2, 'সোলাইমানি হত্যার ঘটনায় তেলের বাজার টালমাটাল হওয়ার আশঙ্কা', 'সোলাইমানি-হত্যার-ঘটনায়-তেলের-বাজার-টালমাটাল-হওয়ার-আশঙ্কা', 'article', 'সোলাইমানি-হত্যার-ঘটনায়-তেলের-বাজার-টালমাটাল-হওয়ার-আশঙ্কা,ইরাক', 1, 0, 0, 0, 1, 0, 0, 'সোলাইমানি-হত্যার-ঘটনায়-তেলের-বাজার-টালমাটাল-হওয়ার-আশঙ্কা, ইরাক', '<span style=\"color: rgb(18, 18, 18); font-family: Shurjo, -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Oxygen, Ubuntu, Cantarell, &quot;Open Sans&quot;, &quot;Helvetica Neue&quot;, sans-serif; font-size: 18px; white-space: break-spaces;\">জানুয়ারিতে শিক্ষাবর্ষ শুরু, শেষ হয় ডিসেম্বরে। দেশের সব শিক্ষাপ্রতিষ্ঠানের চলমান ছুটি ৩১ অক্টোবর পর্যন্ত বাড়ানো হয়েছে, ফলে শিক্ষাবর্ষের আর বাকি মাত্র দুই মাস। শেষ দুই মাসে শ্রেণিকক্ষে লেখাপড়া সাধারণত হয় না, থাকে পরীক্ষার প্রস্তুতি, পরীক্ষা গ্রহণ ও ফল প্রকাশের ব্যস্ততা।</span><br>', '1578208597e6b88afeec97b755b4104fce73ea4efb-5e115efb89467.jpg', NULL, NULL, NULL, NULL, NULL, 18, NULL, 0, NULL, 0, 1, NULL, 'true', 0, NULL, '2023-01-15 09:01:21', '2023-01-15 03:01:21'),
(51, 2, 'নাটকীয় এক ডার্বিতে পয়েন্ট হারাল বার্সেলোনা', 'নাটকীয়-এক-ডার্বিতে-পয়েন্ট-হারাল-বার্সেলোনা', 'article', 'নাটকীয় এক ডার্বিতে পয়েন্ট হারাল বার্সেলোনা,', 1, 0, 0, 0, 0, 1, 0, 'নাটকীয় এক ডার্বিতে পয়েন্ট হারাল বার্সেলোনা,sports', '<span style=\"color: rgb(0, 0, 0); font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; font-size: 18px; background-color: rgb(255, 255, 255);\">এস্পানিওলের সঙ্গে ২-২ গোলে ডার্বি ড্র করেছে বার্সেলোনা। বার্সেলোনার হয়ে দুটি গোলের একটি করেন সুয়ারেজ। অন্যটি আসে ভিদালের কাছ থেকে। এস্পানিওলের হয়ে প্রথম গোলটি করেন লোপেজ। ৮৮ মিনিটে দ্বিতীয় গোলটি করেন বদলি খেলোয়াড় উ লেই।&nbsp;</span><br>', '15782088866674c6febf38b8dc544cc10bff59ea22-5e110dfcce762.jpg', NULL, NULL, NULL, NULL, NULL, 19, NULL, 0, NULL, 0, 1, NULL, 'true', 0, NULL, '2023-01-15 09:01:21', '2023-01-15 03:01:21'),
(52, 2, 'চার দিনের টেস্টকে কোহলির ‘না’', 'চার-দিনের-টেস্টকে-কোহলির-‘না’', 'article', 'চার দিনের টেস্টকে কোহলির ‘না’,', 1, 0, 0, 1, 0, 0, 0, 'চার দিনের টেস্টকে কোহলির ‘না’,sports', '<span style=\"color: rgb(0, 0, 0); font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; font-size: 18px; background-color: rgb(255, 255, 255);\">প্রস্তাবটা এখনো বাস্তবায়ন হয়নি। প্রস্তাবটা হচ্ছে, ২০২৩ থেকে ২০৩১ সাল পর্যন্ত আইসিসির ভবিষ্যৎ সফর পরিকল্পনায় (এফটিপি) পাঁচ দিনের পরিবর্তে চার দিনের টেস্টের কথা ভাবছে আইসিসি। বিশ্ব ক্রিকেটের নিয়ন্ত্রক সংস্থার এই ভাবনার ভীষণ নেতিবাচক প্রতিক্রিয়া হচ্ছে বিশ্ব ক্রিকেটে। এবার চার দিনের টেস্টের বিপক্ষে মুখ খুললেন বিরাট কোহলিও। টেস্টের দিনের সংখ্যা কমিয়ে আনার বিপক্ষে শক্ত অবস্থান জানিয়ে দিলেন ভারতীয় অধিনায়ক।</span><br>', '15782089817e61bfa4e26dc0c3bf2817034654f3ac-5e10acb11d79d.jpg', NULL, NULL, NULL, NULL, NULL, 19, NULL, 0, NULL, 0, 1, NULL, 'true', 0, NULL, '2023-01-15 09:01:21', '2023-01-15 03:01:21'),
(76, 2, 'ghj', 'ghj', 'article', NULL, 0, 0, 0, 0, 0, 0, 0, NULL, 'j', '1580202366800x600._DAVID_BECKHAM__5.jpg', NULL, NULL, NULL, NULL, NULL, 15, NULL, 1, '2020-01-28 10:00:01', 0, 2, NULL, 'true', 0, NULL, '2023-01-15 09:01:21', '2023-01-15 03:01:21'),
(94, 2, 'JetBlue founder launches \'world\'s nicest airline\'', 'JetBlue-founder-launches-\'world\'s-nicest-airline\'', 'rss', NULL, 0, 0, 0, 0, 0, 0, 0, NULL, 'Twenty years after launching JetBlue from an office building in Queens, New York, its founder has filed plans to launch a new airline with flights starting by year\'s end.<img src=\"http://feeds.feedburner.com/~r/rss/edition_travel/~4/QvchJE7Ulms\" height=\"1\" width=\"1\" alt=\"\">\n', NULL, 'https://cdn.cnn.com/cnnnext/dam/assets/200207093546-01-breeze-airways-jetblue-super-169.jpg', NULL, NULL, NULL, NULL, 27, NULL, 0, NULL, 0, 1, NULL, 'true', 0, 'http://rss.cnn.com/~r/rss/edition_travel/~3/QvchJE7Ulms/index.html', '2023-01-15 09:01:21', '2023-01-15 03:01:21'),
(95, 2, 'Delta reunited this little girl with her doll after her mom\'s plea on social media', 'Delta-reunited-this-little-girl-with-her-doll-after-her-mom\'s-plea-on-social-media', 'rss', NULL, 0, 0, 0, 1, 0, 0, 0, NULL, 'When Arielle Britton\'s daughter lost her doll during a trip from Connecticut to Florida, she posted on social media. She never expected this response.<img src=\"http://feeds.feedburner.com/~r/rss/edition_travel/~4/OgZZq15t_rU\" height=\"1\" width=\"1\" alt=\"\">\n', NULL, 'https://cdn.cnn.com/cnnnext/dam/assets/200209131837-01-delta-reunites-toddler-lost-daddy-doll-super-169.jpg', NULL, NULL, NULL, NULL, 27, NULL, 0, NULL, 0, 1, NULL, 'true', 0, 'http://rss.cnn.com/~r/rss/edition_travel/~3/OgZZq15t_rU/index.html', '2023-01-15 09:01:21', '2023-01-15 03:01:21'),
(96, 2, 'New York City fashion show walks the walk at JFK', 'New-York-City-fashion-show-walks-the-walk-at-JFK', 'rss', NULL, 0, 0, 0, 0, 0, 0, 0, NULL, 'New York City is no stranger to head turning, over-the-top fashion — but its biannual Fashion Week brings boldness in spades.<img src=\"http://feeds.feedburner.com/~r/rss/edition_travel/~4/BbTtqh0U7nA\" height=\"1\" width=\"1\" alt=\"\">\n', NULL, 'https://cdn.cnn.com/cnnnext/dam/assets/200203133010-04-jfk-catwalk-photos-super-169.jpg', NULL, NULL, NULL, NULL, 27, NULL, 0, NULL, 0, 1, NULL, 'true', 0, 'http://rss.cnn.com/~r/rss/edition_travel/~3/BbTtqh0U7nA/index.html', '2023-01-15 09:01:21', '2023-01-15 03:01:21'),
(99, 2, 'uio', 'uio', 'audio', NULL, 0, 0, 0, 0, 0, 0, 0, 'dfg', 'gh', '1581329380jonathan-zerger-KW426lBOXHs-unsplash.jpg', NULL, NULL, NULL, NULL, '1581329380Kid_Laugh-Mike_Koenig-1673908713.mp3', 20, NULL, 1, '2020-02-13 10:09:36', 0, 1, NULL, 'true', 0, NULL, '2023-01-15 09:01:21', '2023-01-15 03:01:21'),
(102, 2, 'আকবরই বিশ্বকাপের সেরা দলের অধিনায়ক', 'আকবরই-বিশ্বকাপের-সেরা-দলের-অধিনায়ক', 'article', 'আকবরই বিশ্বকাপের সেরা দলের অধিনায়ক,sports', 0, 0, 0, 0, 0, 0, 0, 'আকবরই বিশ্বকাপের সেরা দলের অধিনায়ক, sports', '<p style=\"color: rgb(0, 0, 0); outline: 0px; padding: 0px; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif;\"><span style=\"background-color: rgb(255, 255, 255);\">ভারতকে ৩ উইকেটে হারানোর মধ্য দিয়ে অনূর্ধ্ব-১৯ বিশ্বকাপের শেষ টেনেছে বাংলাদেশ। যুব বিশ্বকাপে বাংলাদেশের প্রথম শিরোপা জয়কেই এ টুর্নামেন্টের সেরা পরিণতি বলে মানছেন প্রায় সবাই। সে ক্ষেত্রে টুর্নামেন্টসেরা দলের অধিনায়ক হিসেবে আকবর আলীর নির্বাচিত হওয়াটাও সঠিক সিদ্ধান্ত। আজ বিশ্বকাপের সেরা একাদশ ঘোষণা করেছে আইসিসি। সে দলে আকবর ছাড়াও নাম এসেছে মাহমুদুল হাসান ও শাহাদাত হোসেনের।</span></p><p style=\"color: rgb(0, 0, 0); outline: 0px; padding: 0px; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif;\"><span style=\"background-color: rgb(255, 255, 255);\">তিন সপ্তাহ ধরে চলা এই ক্রিকেট উন্মাদনায় অনেক রান উৎসব হয়েছে। পেসারদের আগ্রাসনের দেখা মিলেছে। স্পিনারদের ঘূর্ণিবাঁকে বিভ্রান্ত হতে দেখা গেছে অনেক ব্যাটসম্যানকে। তাঁদের মধ্য থেকে সেরা একাদশ বের করা বেশ কঠিন। সে কাজটাই করেছেন আইসিসির বেছে নেওয়া পাঁচ বিশ্লেষক। ধারাভাষ্যে থাকা ইয়ান বিশপ, রোহান গাভাস্কার ও নাটালি জারমানোসের সঙ্গে ক্রিকইনফোর শ্রেষ্ঠ শাহ ও আইসিসির ম্যারি গডবিয়ারকে দেওয়া হয়েছিল এ কঠিন দায়িত্ব।<br style=\"outline: 0px; padding: 0px; margin: 0px;\"><br style=\"outline: 0px; padding: 0px; margin: 0px;\">আইসিসির বিশ্বকাপের সেরা একাদশে বাংলাদেশ ছাড়া ফাইনালিস্ট ভারতেরও তিন খেলোয়াড় জায়গা পেয়েছেন। কোয়ার্টার ফাইনালে ছিটকে পড়লেও আফগানিস্তানের দুজন সুযোগ পেয়েছেন একাদশে। ওয়েস্ট ইন্ডিজেরও দুজন আছেন এ দলে। আর প্লেট ফাইনাল খেলা শ্রীলঙ্কা দল থেকে সুযোগ পেয়েছেন একজন। এ দলে দ্বাদশ খেলোয়াড় হিসেবে আছেন কানাডার আকিল কুমার।</span></p>', '1581401985f7b0275acc1bf048799cee885827056a-5e418fdb12384.jpg', NULL, NULL, NULL, NULL, NULL, 19, 28, 0, NULL, 0, 1, NULL, 'true', 0, NULL, '2023-01-15 09:01:21', '2023-01-15 03:01:21'),
(103, 2, 'সুয়ারেজের বদলি সুয়ারেজ?', 'সুয়ারেজের-বদলি-সুয়ারেজ?', 'article', 'সুয়ারেজের বদলি সুয়ারেজ?,sports', 0, 0, 0, 0, 0, 0, 0, 'সুয়ারেজের বদলি সুয়ারেজ?, sports', '<p style=\"color: rgb(0, 0, 0); outline: 0px; padding: 0px; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif;\"><span style=\"background-color: rgb(255, 255, 255);\">হাঁটুর চোটে পড়ে বাকি মৌসুমের জন্য মাঠের বাইরে চলে গিয়েছেন উরুগুয়ের স্ট্রাইকার লুইস সুয়ারেজ। বার্সার আক্রমণভাগের ভার এখন সামলাতে হয় মূলত লিওনেল মেসি আর আঁতোয়ান গ্রিজমানকে। কিন্তু এভাবে আর কত দিন? এ কারণে নতুন স্ট্রাইকার আনার জন্য গত এক মাস অনেক চেষ্টা চালিয়ে গেছে বার্সেলোনা, লাভ হয়নি। সুয়ারেজের বদলি হিসেবে এবার আক্ষরিক অর্থেই আরেকজন সুয়ারেজকে পছন্দ হয়েছে স্প্যানিশ চ্যাম্পিয়নদের। তিনি রিয়াল জারাগোজার কলম্বিয়ান স্ট্রাইকার লুইস সুয়ারেজ।</span></p><p style=\"color: rgb(0, 0, 0); outline: 0px; padding: 0px; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif;\"><span style=\"background-color: rgb(255, 255, 255);\">মূলত ইংলিশ ক্লাব ওয়াটফোর্ডের এই স্ট্রাইকার এই মৌসুমে ধারে খেলতে এসেছেন স্পেনের দ্বিতীয় বিভাগের ক্লাব জারাগোজায়। কিংবদন্তি জাপানি মিডফিল্ডার শিনজি কাগাওয়াকে পেয়েছেন সতীর্থ হিসেবে। এসেই বাজিমাত করে দিয়েছেন। লিগে এই পর্যন্ত ২৫ ম্যাচ খেলে গোল করেছেন ১৪টি। সুয়ারেজের এই দুরন্ত ফর্মই নজর কেড়েছে বার্সেলোনার। সুয়ারেজের কারণেই পয়েন্ট তালিকার তৃতীয় স্থানে আছে জারাগোজা, শীর্ষে থাকা কাদিজের পয়েন্ট তাদের চেয়ে ছয় বেশি। কলম্বিয়ার এই স্ট্রাইকার এমন ফর্মে থাকলে জারাগোজার প্রথম বিভাগে উন্নয়ন কেউ আটকাতে পারবে না।</span></p><p style=\"color: rgb(0, 0, 0); outline: 0px; padding: 0px; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif;\"><span style=\"background-color: rgb(255, 255, 255);\">স্পেনের ক্রীড়াবিষয়ক সাংবাদিক সান্তি ওভালে এল লারগুয়েরো নামের একটা রেডিও অনুষ্ঠানে দাবি করেছেন এটা। এর মধ্যেই সুয়ারেজের ব্যাপারে খোঁজখবর নিয়েছে বার্সেলোনা। তবে সুয়ারেজের মূল মালিক জারাগোজা নয়, ওয়াটফোর্ড। এ কারণে দলবদলের প্রক্রিয়াটা একটু জটিল হতে পারে।</span></p><p style=\"color: rgb(0, 0, 0); outline: 0px; padding: 0px; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif;\"><span style=\"background-color: rgb(255, 255, 255);\">শুধু সুয়ারেজই নয়, চোটের কারণে মাঠের বাইরে আছেন আক্রমণভাগের আরেক খেলোয়াড় ফরাসি উইঙ্গার উসমান দেম্বেলে। এ ছাড়াও এই জানুয়ারিতে কার্লেস আলেনিয়া, কার্লেস পেরেজ, জ্যাঁ ক্লাইর তোদিবোর মতো একাধিক খেলোয়াড় বার্সা ছাড়লেও তাদের পরিবর্তে কাউকে আনেনি কাতালান ক্লাবটি। এর মধ্যেই বারবার চোটের ছোবলে দিশেহারা বার্সা বিশেষ প্রক্রিয়ায় দলে নতুন খেলোয়াড় নিবন্ধন করার কথা ভাবছে। কোনো ক্লাবে যদি চোটসমস্যা বেশি থাকে, মাঠে নামানোর মতো পর্যাপ্ত খেলোয়াড় না থাকে, তবে স্প্যানিশ ফুটবল ফেডারেশনের মেডিক্যাল কমিটির অনুমতি সাপেক্ষে জরুরি ভিত্তিতে খেলোয়াড় নিবন্ধন করতে পারে তারা। বার্সা এই সুবিধাটা নেওয়ার কথা ভাবছে। সে ক্ষেত্রে একজন স্ট্রাইকারকে দলে আনবে তারা।</span></p><p style=\"color: rgb(0, 0, 0); outline: 0px; padding: 0px; margin-right: 0px; margin-left: 0px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif;\"><span style=\"background-color: rgb(255, 255, 255);\">গত এক মাসে আক্রমণভাগের যেসব খেলোয়াড়কে দলে আনার চেষ্টা চালিয়েছে বার্সেলোনা, তাঁরা হলেন পিয়েরে-এমেরিক অবামেয়াং (আর্সেনাল), রিচার্লিসন (এভারটন), দুসান তাদিচ (আয়াক্স), সেড্রিক বাকাম্বু (বেইজিং গুয়ান), লুকাস পেরেজ (দেপোর্তিভো আলাভেস), রদ্রিগো মোরেনো (ভ্যালেন্সিয়া), টিমো ভেরনার (আর বি লাইপজিগ),চিমি আভিলা (ওসাসুনা), লুইস সুয়ারেজ (রিয়াল জারাগোজা), ফ্রান্সিসকো ত্রিনকাও (ব্রাগা), লোরেন মোরোন (রিয়াল বেতিস), উইলিয়ান হোসে (রিয়াল সোসিয়েদাদ), ক্রিস্তফ পিওন্তেক (এসি মিলান/হার্থা বার্লিন), জেরার্ড মোরেনো (ভিয়ারিয়াল)। এক ত্রিনকাও ছাড়া কাউকেই দলে আনতে পারেনি তারা। সে ত্রিনকাও-ও আসবেন ছয় মাস পর, এখন নয়।</span></p>', '15814023674aa33acd6f1f0fea88f85e681877fa0d-5e40f14ff1914.jpg', NULL, NULL, NULL, NULL, NULL, 19, 29, 0, NULL, 0, 1, NULL, 'true', 0, NULL, '2023-01-15 09:01:21', '2023-01-15 03:01:21'),
(104, 2, 'Thought you couldn\'t legally tour Cuba as an American? You can, and I did', 'Thought-you-couldn\'t-legally-tour-Cuba-as-an-American?-You-can,-and-I-did', 'rss', NULL, 0, 0, 0, 0, 0, 0, 0, NULL, 'Despite recent restrictions imposed by the US government, Americans can travel to Cuba if their trips falls into one of 12 categories, including \"Support for the Cuban People.\"<img src=\"http://feeds.feedburner.com/~r/rss/edition_travel/~4/FSreRo_Hm9k\" height=\"1\" width=\"1\" alt=\"\">\n', NULL, 'https://cdn.cnn.com/cnnnext/dam/assets/200110162402-05-cuba-person-to-person-trip-super-169.jpg', NULL, NULL, NULL, NULL, 27, NULL, 0, NULL, 0, 1, NULL, 'true', 0, 'http://rss.cnn.com/~r/rss/edition_travel/~3/FSreRo_Hm9k/index.html', '2023-01-15 09:01:21', '2023-01-15 03:01:21'),
(105, 2, 'British Airways smashes record for quickest subsonic flight from New York to London', 'British-Airways-smashes-record-for-quickest-subsonic-flight-from-New-York-to-London', 'rss', NULL, 0, 0, 0, 0, 0, 0, 0, NULL, 'A British Airways (BA) flight has broken the record for the fastest-ever subsonic flight between New York and London, reaching a top speed of more than 800mph (1,287km/h).<img src=\"http://feeds.feedburner.com/~r/rss/edition_travel/~4/JCtCz3Gv_ac\" height=\"1\" width=\"1\" alt=\"\">\n', NULL, 'https://cdn.cnn.com/cnnnext/dam/assets/200209085226-01-british-airways-747-file-super-169.jpg', NULL, NULL, NULL, NULL, 27, NULL, 0, NULL, 0, 1, NULL, 'true', 0, 'http://rss.cnn.com/~r/rss/edition_travel/~3/JCtCz3Gv_ac/index.html', '2023-01-15 09:01:21', '2023-01-15 03:01:21'),
(106, 2, 'There\'s a golf tournament taking place on a frozen lake in Minnesota', 'There\'s-a-golf-tournament-taking-place-on-a-frozen-lake-in-Minnesota', 'rss', NULL, 0, 0, 0, 0, 0, 0, 0, NULL, 'For over 40 years, Minnesotans in the tiny town of Clinton have teed off for a charity golf tournament on ice.<img src=\"http://feeds.feedburner.com/~r/rss/edition_travel/~4/oiRaRYJqheE\" height=\"1\" width=\"1\" alt=\"\">\n', NULL, 'https://cdn.cnn.com/cnnnext/dam/assets/200210102007-01-arctic-open-golf-minnesota-super-169.jpg', NULL, NULL, NULL, NULL, 27, NULL, 0, NULL, 0, 1, NULL, 'true', 0, 'http://rss.cnn.com/~r/rss/edition_travel/~3/oiRaRYJqheE/index.html', '2023-01-15 09:01:21', '2023-01-15 03:01:21'),
(107, 1, 'England recall Keaton Jennings and Ben Foakes for Sri Lanka tour', 'England-recall-Keaton-Jennings-and-Ben-Foakes-for-Sri-Lanka-tour', 'article', 'England recall Keaton Jennings and Ben Foakes for Sri Lanka tour', 0, 1, 0, 0, 0, 0, 0, 'sports', '<p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1.5rem; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; font-family: ReithSans, Arial, Helvetica, freesans, sans-serif; font-size: 16px; vertical-align: baseline; outline-style: none; color: rgb(37, 37, 37);\"><span style=\"background-color: rgb(255, 255, 255);\">Neither has played for England in a Test since the tour of the West Indies at the start of 2019.</span></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1.5rem; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; font-family: ReithSans, Arial, Helvetica, freesans, sans-serif; font-size: 16px; vertical-align: baseline; outline-style: none; color: rgb(37, 37, 37);\"><span style=\"background-color: rgb(255, 255, 255);\">James Anderson, England\'s leading Test wicket-taker, is omitted as he recovers from a cracked rib suffered in the 3-1 series win in South Africa.</span></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1.5rem; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; font-family: ReithSans, Arial, Helvetica, freesans, sans-serif; font-size: 16px; vertical-align: baseline; outline-style: none; color: rgb(37, 37, 37);\"><span style=\"background-color: rgb(255, 255, 255);\">Batsman Jonny Bairstow and all-rounder Moeen Ali will also miss the two-Test series, which starts on 19 March.</span></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1.5rem; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; font-family: ReithSans, Arial, Helvetica, freesans, sans-serif; font-size: 16px; vertical-align: baseline; outline-style: none; color: rgb(37, 37, 37);\"><span style=\"background-color: rgb(255, 255, 255);\">Jofra Archer had already been ruled out because of a low-grade stress fracture in his right elbow, but fellow fast bowler Mark Wood will make the trip.</span></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1.5rem; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; font-family: ReithSans, Arial, Helvetica, freesans, sans-serif; font-size: 16px; vertical-align: baseline; outline-style: none; color: rgb(37, 37, 37);\"><span style=\"background-color: rgb(255, 255, 255);\">Left-arm spinner Jack Leach came back to England from the tour of South Africa in January because of illness but returns to the squad of 16 players.</span></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1.5rem; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; font-family: ReithSans, Arial, Helvetica, freesans, sans-serif; font-size: 16px; vertical-align: baseline; outline-style: none; color: rgb(37, 37, 37);\"><span style=\"background-color: rgb(255, 255, 255);\">\"The South Africa tour marked the emergence of a very exciting group of young players, creating a nice balance with an experienced core of senior players,\" said national selector Ed Smith.</span></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1.5rem; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; font-family: ReithSans, Arial, Helvetica, freesans, sans-serif; font-size: 16px; vertical-align: baseline; outline-style: none; color: rgb(37, 37, 37);\"><span style=\"background-color: rgb(255, 255, 255);\">\"That squad is mostly retained, with some tweaks relevant to injury, rest and the challenges of playing in subcontinent conditions.</span></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1.5rem; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; font-family: ReithSans, Arial, Helvetica, freesans, sans-serif; font-size: 16px; vertical-align: baseline; outline-style: none; color: rgb(37, 37, 37);\"><span style=\"background-color: rgb(255, 255, 255);\">\"Jonny Bairstow has been in England squads across the three formats without a significant break. This two-Test tour presents a good opportunity for Jonny to be rested.</span></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1.5rem; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; font-family: ReithSans, Arial, Helvetica, freesans, sans-serif; font-size: 16px; vertical-align: baseline; outline-style: none; color: rgb(37, 37, 37);\"><span style=\"background-color: rgb(255, 255, 255);\">\"Moeen Ali is still unavailable for Test selection. The selectors are in consistent dialogue with Moeen and he remains a valued player in England cricket.\"</span></p>', '1581486449_110849334_foakes_jennings_getty.jpg', NULL, NULL, NULL, NULL, NULL, 5, 30, 0, NULL, 0, 1, NULL, 'true', 0, NULL, '2023-01-15 09:01:21', '2023-01-15 03:01:21'),
(108, 1, 'Scottish Cup: Holders Celtic away to St Johnstone in last eight', 'Scottish-Cup:-Holders-Celtic-away-to-St-Johnstone-in-last-eight', 'article', 'Scottish Cup: Holders Celtic away to St Johnstone in last eight', 0, 0, 0, 0, 0, 1, 0, 'football, sports', '<p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1.5rem; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; font-family: ReithSans, Arial, Helvetica, freesans, sans-serif; font-size: 16px; vertical-align: baseline; outline-style: none; color: rgb(37, 37, 37);\"><span style=\"background-color: rgb(255, 255, 255);\">Hearts - last year\'s runners-up - host Rangers at Tynecastle, where they beat Steven Gerrard\'s men 2-1 last month.</span></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1.5rem; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; font-family: ReithSans, Arial, Helvetica, freesans, sans-serif; font-size: 16px; vertical-align: baseline; outline-style: none; color: rgb(37, 37, 37);\"><span style=\"background-color: rgb(255, 255, 255);\">Hibernian will welcome Inverness Caledonian Thistle - the only lower-league side left in the competition.</span></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1.5rem; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; font-family: ReithSans, Arial, Helvetica, freesans, sans-serif; font-size: 16px; vertical-align: baseline; outline-style: none; color: rgb(37, 37, 37);\"><span style=\"background-color: rgb(255, 255, 255);\">The winner of the St Mirren v Motherwell replay will be at home to either Aberdeen or Kilmarnock.</span></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1.5rem; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; font-family: ReithSans, Arial, Helvetica, freesans, sans-serif; font-size: 16px; vertical-align: baseline; outline-style: none; color: rgb(37, 37, 37);\"><span style=\"background-color: rgb(255, 255, 255);\">The ties will be played on the weekend of 29 February/1 March.</span></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1.5rem; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; font-family: ReithSans, Arial, Helvetica, freesans, sans-serif; font-size: 16px; vertical-align: baseline; outline-style: none; color: rgb(37, 37, 37);\"><span style=\"background-color: rgb(255, 255, 255);\">St Johnstone against Celtic is set to be on the Sunday, with Neil Lennon\'s side in Europa League action on the Thursday of the preceding week.</span></p><p style=\"box-sizing: inherit; margin-right: 0px; margin-bottom: 1.5rem; margin-left: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; line-height: inherit; font-family: ReithSans, Arial, Helvetica, freesans, sans-serif; font-size: 16px; vertical-align: baseline; outline-style: none; color: rgb(37, 37, 37);\"><span style=\"background-color: rgb(255, 255, 255);\">The sides met at the last-16 stage last term, with the eventual winners triumphing 5-0 at Celtic Park.</span></p>', '1581486638_110830312_18380701.jpg', NULL, NULL, NULL, NULL, NULL, 5, 31, 0, NULL, 0, 1, NULL, 'true', 0, NULL, '2023-01-15 09:01:21', '2023-01-15 03:01:21'),
(109, 1, 'Oscars 2020: Number of TV viewers falls to all-time low', 'Oscars-2020:-Number-of-TV-viewers-falls-to-all-time-low', 'article', 'Oscars 2020: Number of TV viewers falls to all-time low', 0, 1, 0, 1, 1, 1, 0, 'entertaiment', 'undefined', '1581486994_110833088_parasiteget_cut.jpg', NULL, NULL, NULL, NULL, NULL, 6, NULL, 0, NULL, 0, 1, NULL, 'true', 0, NULL, '2023-01-15 09:01:21', '2023-01-15 03:01:21'),
(110, 1, 'Phoenix: \'I\'ve been hard to work with\'', 'Phoenix:-\'I\'ve-been-hard-to-work-with\'', 'article', 'Phoenix: \'I\'ve been hard to work with\'', 0, 1, 0, 1, 1, 1, 0, NULL, '<p data-reactid=\".7xoxqwm40e.3.0.0.1.0.$lx-commentary.$lx-commentary.2.0.1.1:$post-5e40eeb7dca6c8066956d264.0.3.0.0:$post_1\" style=\"margin-right: 0px; margin-bottom: 16px; margin-left: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Arial, freesans, sans-serif; font-size: 16px;\">Joker star Joaquin Phoenix used his best actor acceptance speech to cast light on what he described as humanity\'s plundering of the natural world for resources.</p><p data-reactid=\".7xoxqwm40e.3.0.0.1.0.$lx-commentary.$lx-commentary.2.0.1.1:$post-5e40eeb7dca6c8066956d264.0.3.0.0:$post_2\" style=\"margin-right: 0px; margin-bottom: 16px; margin-left: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Arial, freesans, sans-serif; font-size: 16px;\">He also touched upon his own behaviour - admitting that while he had been \"hard to work with\" in the past he was grateful for being given a second chance.</p><blockquote class=\"lx-stream-post-quote lx-stream-post-quote--default gs-u-mb-alt gs-u-mr-alt+ gs-u-ml-alt+ gs-u-mr-alt++@m gs-u-ml-alt++@m\" data-reactid=\".7xoxqwm40e.3.0.0.1.0.$lx-commentary.$lx-commentary.2.0.1.1:$post-5e40eeb7dca6c8066956d264.0.3.0.0:$post_3\" style=\"padding: 0px; position: relative; color: rgb(64, 64, 64); font-family: Helvetica, Arial, freesans, sans-serif; margin-right: 48px !important; margin-bottom: 12px !important; margin-left: 48px !important;\"><div data-reactid=\".7xoxqwm40e.3.0.0.1.0.$lx-commentary.$lx-commentary.2.0.1.1:$post-5e40eeb7dca6c8066956d264.0.3.0.0:$post_3.0\"><div class=\"lx-stream-post-quote__body gs-u-mb qa-blockquote\" aria-hidden=\"true\" data-reactid=\".7xoxqwm40e.3.0.0.1.0.$lx-commentary.$lx-commentary.2.0.1.1:$post-5e40eeb7dca6c8066956d264.0.3.0.0:$post_3.0.1\" style=\"font-family: Georgia, Times, &quot;Times New Roman&quot;, serif; font-style: italic; color: rgb(30, 30, 30); margin-bottom: 8px !important;\"><p data-reactid=\".7xoxqwm40e.3.0.0.1.0.$lx-commentary.$lx-commentary.2.0.1.1:$post-5e40eeb7dca6c8066956d264.0.3.0.0:$post_3.0.1.0\" style=\"margin-right: 0px; margin-left: 0px; padding: 0px;\"><span style=\"background-color: rgb(255, 255, 255);\">I’ve been selfish, I’ve been cruel at times, hard to work with, and I’m grateful that so many of you in this room have given me a second chance.</span></p></div></div><footer class=\"lx-stream-post-quote__cite gel-brevier gel-brevier-bold\" aria-hidden=\"true\" data-reactid=\".7xoxqwm40e.3.0.0.1.0.$lx-commentary.$lx-commentary.2.0.1.1:$post-5e40eeb7dca6c8066956d264.0.3.0.0:$post_3.1\" style=\"font-size: 0.8125rem; line-height: 1rem; font-weight: 700;\"><cite class=\"lx-stream-post-quote__cite-name qa-blockquote-source\" data-reactid=\".7xoxqwm40e.3.0.0.1.0.$lx-commentary.$lx-commentary.2.0.1.1:$post-5e40eeb7dca6c8066956d264.0.3.0.0:$post_3.1.0\" style=\"font-style: normal; background-color: rgb(255, 255, 255);\">Joaquin Phoenix</cite><span class=\"lx-stream-post-quote__cite-profession qa-blockquote-source-profession\" data-reactid=\".7xoxqwm40e.3.0.0.1.0.$lx-commentary.$lx-commentary.2.0.1.1:$post-5e40eeb7dca6c8066956d264.0.3.0.0:$post_3.1.1\" style=\"display: block; color: rgb(50, 50, 50);\"><span style=\"background-color: rgb(255, 255, 255);\">Best Actor for The Joker</span></span></footer><div class=\"gs-u-mr lx-stream-post-quote__icon lx-stream-post-quote__icon--quote gel-icon gel-icon-quote\" data-reactid=\".7xoxqwm40e.3.0.0.1.0.$lx-commentary.$lx-commentary.2.0.1.1:$post-5e40eeb7dca6c8066956d264.0.3.0.0:$post_3.2\" style=\"position: absolute; top: 2px; right: 488px; width: 20px; height: 20px; color: rgb(30, 30, 30); margin-right: 8px !important;\"><svg width=\"32\" height=\"32\" viewBox=\"0 0 32 32\" data-reactid=\".7xoxqwm40e.3.0.0.1.0.$lx-commentary.$lx-commentary.2.0.1.1:$post-5e40eeb7dca6c8066956d264.0.3.0.0:$post_3.2.0\"><span style=\"background-color: rgb(255, 255, 255);\"><path d=\"M0 17v15h15V17H7c.2-5.9 2.4-8.8 8-9.9V0C6.7 1.2.2 8.3 0 17zM32 7.1V0c-8.3 1.2-14.8 8.3-15 17v15h15V17h-8c.2-5.9 2.4-8.8 8-9.9z\" data-reactid=\".7xoxqwm40e.3.0.0.1.0.$lx-commentary.$lx-commentary.2.0.1.1:$post-5e40eeb7dca6c8066956d264.0.3.0.0:$post_3.2.0.0\"></path></span></svg></div></blockquote><p data-reactid=\".7xoxqwm40e.3.0.0.1.0.$lx-commentary.$lx-commentary.2.0.1.1:$post-5e40eeb7dca6c8066956d264.0.3.0.0:$post_4\" style=\"margin-right: 0px; margin-bottom: 16px; margin-left: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Arial, freesans, sans-serif; font-size: 16px;\"><span style=\"background-color: rgb(255, 255, 255);\">\"I think that’s when we’re at our best, when we support each other, not when we cancel each other out for past mistakes,\" he added.</span></p><p data-reactid=\".7xoxqwm40e.3.0.0.1.0.$lx-commentary.$lx-commentary.2.0.1.1:$post-5e40eeb7dca6c8066956d264.0.3.0.0:$post_5\" style=\"margin-right: 0px; margin-bottom: 16px; margin-left: 0px; padding: 0px; color: rgb(64, 64, 64); font-family: Helvetica, Arial, freesans, sans-serif; font-size: 16px;\"><span style=\"background-color: rgb(255, 255, 255);\">\"But when we help each other to grow, when we educate each other, when we guide each other toward redemption. That is the best of humanity.\"</span></p>', '1581487254ad6aedfb-bea0-4f7b-ac37-0989673462b3.jpg', NULL, NULL, NULL, NULL, NULL, 6, NULL, 0, NULL, 0, 1, NULL, 'true', 0, NULL, '2023-01-15 09:01:21', '2023-01-15 03:01:21'),
(111, 1, 'Brexit: Border delays \'could cause fresh food problems\'', 'Brexit:-Border-delays-\'could-cause-fresh-food-problems\'', 'article', 'Brexit: Border delays \'could cause fresh food problems\'', 0, 0, 0, 0, 1, 0, 0, 'business', '<p style=\"border: 0px; color: rgb(64, 64, 64); font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-family: Helmet, Freesans, Helvetica, Arial, sans-serif; font-size: 1rem; line-height: 1.375; margin-top: 23px; margin-right: 0px; margin-left: 0px; padding: 0px; vertical-align: baseline;\"><span style=\"background-color: rgb(255, 255, 255);\">Shoppers will notice the supply issues next January unless there is a \"massive upgrade\" in border facilities, the British Retail Consortium said.</span></p><p style=\"border: 0px; color: rgb(64, 64, 64); font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-family: Helmet, Freesans, Helvetica, Arial, sans-serif; font-size: 1rem; line-height: 1.375; margin-top: 18px; margin-right: 0px; margin-left: 0px; padding: 0px; vertical-align: baseline;\"><span style=\"background-color: rgb(255, 255, 255);\">The warning came after cabinet minister Michael Gove said that border checks are \"inevitable\" after the Brexit transition period ends on 31 December.</span></p><p style=\"border: 0px; color: rgb(64, 64, 64); font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-family: Helmet, Freesans, Helvetica, Arial, sans-serif; font-size: 1rem; line-height: 1.375; margin-top: 18px; margin-right: 0px; margin-left: 0px; padding: 0px; vertical-align: baseline;\"><span style=\"background-color: rgb(255, 255, 255);\">Officials said firms have enough time to prepare for the changes.</span></p><h2 class=\"story-body__crosshead\" style=\"border: 0px; color: rgb(30, 30, 30); font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-family: Helmet, Freesans, Helvetica, Arial, sans-serif; font-size: 1.5rem; font-weight: inherit; line-height: 1.16667; margin: 32px 0px 0px; padding: 0px; vertical-align: baseline;\"><span style=\"background-color: rgb(255, 255, 255);\">Food availability</span></h2><p style=\"border: 0px; color: rgb(64, 64, 64); font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-family: Helmet, Freesans, Helvetica, Arial, sans-serif; font-size: 1rem; line-height: 1.375; margin-top: 18px; margin-right: 0px; margin-left: 0px; padding: 0px; vertical-align: baseline;\"><span style=\"background-color: rgb(255, 255, 255);\">Border checks could quickly cause hold-ups at Channel ports of thousands of trucks, including those carrying fresh food, the BRC said.</span></p><p style=\"border: 0px; color: rgb(64, 64, 64); font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-family: Helmet, Freesans, Helvetica, Arial, sans-serif; font-size: 1rem; line-height: 1.375; margin-top: 18px; margin-right: 0px; margin-left: 0px; padding: 0px; vertical-align: baseline;\"><span style=\"background-color: rgb(255, 255, 255);\">The government will have to \"move fast\" to put in place the necessary border infrastructure and staff to cope with those checks by the end of the year, it said.</span></p><p style=\"border: 0px; color: rgb(64, 64, 64); font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-family: Helmet, Freesans, Helvetica, Arial, sans-serif; font-size: 1rem; line-height: 1.375; margin-top: 18px; margin-right: 0px; margin-left: 0px; padding: 0px; vertical-align: baseline;\"><span style=\"background-color: rgb(255, 255, 255);\">If it doesn\'t, \"consumers in the UK will see significant disruption, particularly in the availability of fresh fruit and vegetables\" the BRC\'s director of food and sustainability Andrew Opie warned.</span></p><p style=\"border: 0px; color: rgb(64, 64, 64); font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-family: Helmet, Freesans, Helvetica, Arial, sans-serif; font-size: 1rem; line-height: 1.375; margin-top: 18px; margin-right: 0px; margin-left: 0px; padding: 0px; vertical-align: baseline;\"><span style=\"background-color: rgb(255, 255, 255);\">\"If you think this is going to hit us in January, that\'s our peak import season for things like fresh fruit and vegetables. Customers are really going to see the problems on supermarket shelves unless we get that infrastructure,\" he said.</span></p><p style=\"border: 0px; color: rgb(64, 64, 64); font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-family: Helmet, Freesans, Helvetica, Arial, sans-serif; font-size: 1rem; line-height: 1.375; margin-top: 18px; margin-right: 0px; margin-left: 0px; padding: 0px; vertical-align: baseline;\"><span style=\"background-color: rgb(255, 255, 255);\">\"So, you\'ve got enormous bureaucracy, enormous change, but crucially you\'ve got a problem with the infrastructure at the key ports around the Channel, which currently really act as an extension of the motorway for our supply chain, where you will be holding thousands of vehicles every day.\"</span></p><p style=\"border: 0px; color: rgb(64, 64, 64); font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-family: Helmet, Freesans, Helvetica, Arial, sans-serif; font-size: 1rem; line-height: 1.375; margin-top: 18px; margin-right: 0px; margin-left: 0px; padding: 0px; vertical-align: baseline;\"><span style=\"background-color: rgb(255, 255, 255);\">\"I don\'t know if you\'ve been to Dover recently, but there isn\'t an enormous amount of room to hold that infrastructure,\" he added.</span></p>', '1581487425_110846210_eupic.jpg', NULL, NULL, NULL, NULL, NULL, 4, NULL, 0, NULL, 0, 1, NULL, 'true', 0, NULL, '2023-01-15 09:01:21', '2023-01-15 03:01:21'),
(112, 1, 'Stopping Venice choking on its own pollution', 'Stopping-Venice-choking-on-its-own-pollution', 'article', 'Stopping Venice choking on its own pollution', 0, 1, 0, 0, 1, 1, 0, NULL, '<p style=\"border: 0px; color: rgb(64, 64, 64); font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-family: Helmet, Freesans, Helvetica, Arial, sans-serif; font-size: 1rem; line-height: 1.375; margin-top: 23px; margin-right: 0px; margin-left: 0px; padding: 0px; vertical-align: baseline;\"><span style=\"background-color: rgb(255, 255, 255);\">Less well-known is that Venice is also choking on its own pollution.</span></p><p style=\"border: 0px; color: rgb(64, 64, 64); font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-family: Helmet, Freesans, Helvetica, Arial, sans-serif; font-size: 1rem; line-height: 1.375; margin-top: 18px; margin-right: 0px; margin-left: 0px; padding: 0px; vertical-align: baseline;\"><span style=\"background-color: rgb(255, 255, 255);\">Hundreds of diesel-powered vaporetti - commuter boats or water buses - spew out tonnes of carbon as they zigzag through the city\'s canals. Zipping to and from the Italian mainland, they ferry the 25 million tourists that visit annually, as well as food, hotel laundry and goods.</span></p><p style=\"border: 0px; color: rgb(64, 64, 64); font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-family: Helmet, Freesans, Helvetica, Arial, sans-serif; font-size: 1rem; line-height: 1.375; margin-top: 18px; margin-right: 0px; margin-left: 0px; padding: 0px; vertical-align: baseline;\"><span style=\"background-color: rgb(255, 255, 255);\">But some in this climate-challenged city believe they have at least a partial answer to Venice\'s environmental problems; an alternative vaporetto powered not by diesel but by hydrogen, a fuel that emits only water vapour when burnt and none of the carbon or greenhouse gases which cause pollution and climate change.</span></p>', '1581488360_110752632_gettyimages-1148668983.jpg', NULL, NULL, NULL, NULL, NULL, 4, NULL, 0, NULL, 0, 1, NULL, 'true', 0, NULL, '2023-01-15 09:01:21', '2023-01-15 03:01:21'),
(113, 2, 'Step into the world of America\'s most notorious gangster', 'Step-into-the-world-of-America\'s-most-notorious-gangster', 'rss', NULL, 0, 0, 0, 0, 0, 0, 0, NULL, 'Harry Caray\'s Italian Steakhouse in Chicago holds a darker history than its name would suggest. If these walls could speak, they\'d tell the tale of mob operations during the Al Capone era.<img src=\"http://feeds.feedburner.com/~r/rss/edition_travel/~4/CJWpIlJlE-g\" height=\"1\" width=\"1\" alt=\"\">\n', NULL, 'https://cdn.cnn.com/cnnnext/dam/assets/200214115317-harry-caray-italian-steakhouse-sign-super-169.jpg', NULL, NULL, NULL, NULL, 27, NULL, 0, NULL, 0, 1, NULL, 'true', 0, 'http://rss.cnn.com/~r/rss/edition_travel/~3/CJWpIlJlE-g/index.html', '2023-01-15 09:01:21', '2023-01-15 03:01:21'),
(114, 2, 'Delta CEO on seat reclining: \'Ask if it\'s OK first\'', 'Delta-CEO-on-seat-reclining:-\'Ask-if-it\'s-OK-first\'', 'rss', NULL, 0, 0, 0, 0, 0, 0, 0, NULL, 'Delta Air Lines CEO Ed Bastian added a bit of fuel to the great seat recline debate on Friday. In an interview on CNBC, Bastian said that he thinks passenger have a right to recline, but the polite thing to do is \"ask if it\'s OK first.\"<img src=\"http://feeds.feedburner.com/~r/rss/edition_travel/~4/VCQ5RN3Kj98\" height=\"1\" width=\"1\" alt=\"\">\n', NULL, 'https://cdn.cnn.com/cnnnext/dam/assets/190625151552-delta-airlines-planes-super-169.jpg', NULL, NULL, NULL, NULL, 27, NULL, 0, NULL, 0, 1, NULL, 'true', 0, 'http://rss.cnn.com/~r/rss/edition_travel/~3/VCQ5RN3Kj98/index.html', '2023-01-15 09:01:21', '2023-01-15 03:01:21'),
(116, 2, 'নিউজিল্যান্ডে আকস্মিক বন্যায় হাজারো মানুষ ঘরবাড়ি ছেড়েছে', 'নিউজিল্যান্ডে-আকস্মিক-বন্যায়-হাজারো-মানুষ-ঘরবাড়ি-ছেড়েছে', 'article', 'নিউজিল্যান্ডে আকস্মিক বন্যায় হাজারো মানুষ ঘরবাড়ি ছেড়েছে', 0, 0, 0, 0, 0, 0, 0, NULL, '<p style=\"outline: 0px; padding: 0px; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; color: rgb(0, 0, 0); font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif;\"><span style=\"background-color: rgb(255, 255, 255);\">নিউজিল্যান্ডের দক্ষিণাঞ্চলে আকস্মিক বন্যায় ঘরবাড়ি ছেড়েছে হাজারো মানুষ। সেই সঙ্গে প্রত্যন্ত মিলফোর্ড সাউন্ড বিউটি পর্যটন স্পটে আটকা পড়েছেন অনেক পর্যটক। এখন পর্যন্ত দুজন আহত হওয়ার খবর পাওয়া গেছে। আজ বুধবার বার্তা সংস্থা এএফপির প্রতিবেদনে এ তথ্য জানানো হয়।</span></p><p style=\"outline: 0px; padding: 0px; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; color: rgb(0, 0, 0); font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif;\"><span style=\"background-color: rgb(255, 255, 255);\">নিউজিল্যান্ডের দক্ষিণাঞ্চলের নগরগুলোতে কয়েক দিন ধরে চলা ভারী বৃষ্টিপাতের প্রভাবে এই বন্যা দেখা দিয়েছে। এসব অঞ্চলে ‘জরুরি অবস্থা’ ঘোষণা করা হয়েছে। গত ৬০ ঘণ্টায় সেখানে ১ হাজার মিলিমিটার বৃষ্টিপাত হয়েছে। প্রধান প্রধান সড়কে ভূমিধসের আশঙ্কা রয়েছে। এ ছাড়া নদীর তীরগুলোতে ফাটল দেখা দিয়েছে।</span></p><p style=\"outline: 0px; padding: 0px; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; overflow: hidden; line-height: 30px; overflow-wrap: break-word; color: rgb(0, 0, 0); font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif;\"><span style=\"background-color: rgb(255, 255, 255);\"><font size=\"3\">বুধবার ভোরে জরুরি ভিত্তিতে নিম্নাঞ্চল গোর ও মাতৌরার বাসিন্দাদের সরিয়ে নেওয়া হয়েছে বলে জানিয়েছে কর্তৃপক্ষ। মাতৌরা নদীর পানি তীরে উঠে আসে। উইন্ডহ্যাম অঞ্চলের মানুষদের এলাকা ছাড়তে হতে পারে—এমন সতর্কবার্তা দেওয়া হয়েছে।</font><br></span></p><p style=\"outline: 0px; padding: 0px; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; color: rgb(0, 0, 0); font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif;\"><span style=\"background-color: rgb(255, 255, 255);\">ইমার্জেন্সি ম্যানেজমেন্টস সাউদল্যান্ডের (ইএমএস) মুখপাত্র বার্তা সংস্থা এএফপপিকে বলেন, ‘আমরা ৬ হাজার মানুষকে সরিয়ে নেওয়ার প্রস্তুতি নিতে নোটিশ জারি করেছি। বাসিন্দাদের ওষুধ, পোশাক ও নিজেদের পরিচয়পত্র নিয়ে যেতে বলা হয়েছে। অঞ্চলটিতে বিদ্যুৎ বিচ্ছিন্ন হয়ে পড়েছে। এখন পর্যন্ত দুজন আহত হওয়ার খবর পাওয়া গেছে।’</span></p><p style=\"outline: 0px; padding: 0px; margin-right: 0px; margin-left: 0px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; color: rgb(0, 0, 0); font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif;\"><span style=\"background-color: rgb(255, 255, 255);\">পর্যটকদের জন্য জনপ্রিয় পর্যটক স্পট পর্বত মিলফোর্ড সাউন্ডের একমাত্র রাস্তা বন্যার পানিতে ভেসে গেছে। ইএমএস জানিয়েছে, প্রায় ২০০ পর্যটক সেখানে অবস্থান করছেন।</span></p>', '15819208292f7224bfb54b3ec08bf7a829e4c7c88e-5e36e013b860d.jpg', NULL, NULL, NULL, NULL, NULL, 16, 33, 0, NULL, 0, 1, NULL, 'true', 0, NULL, '2023-01-15 09:01:21', '2023-01-15 03:01:21');
INSERT INTO `posts` (`id`, `language_id`, `title`, `slug`, `post_type`, `meta_tag`, `show_right_column`, `is_feature`, `is_slider`, `slider_left`, `slider_right`, `is_trending`, `is_videoGallery`, `tags`, `description`, `image_big`, `rss_image`, `image_small`, `video`, `embed_video`, `audio`, `category_id`, `subcategories_id`, `schedule_post`, `schedule_post_date`, `is_pending`, `admin_id`, `user_id`, `status`, `is_draft`, `rss_link`, `created_at`, `updated_at`) VALUES
(117, 2, 'জাহাজে আলাদা রাখা মার্কিন যাত্রীদের দেশে নেওয়া হচ্ছে', 'জাহাজে-আলাদা-রাখা-মার্কিন-যাত্রীদের-দেশে-নেওয়া-হচ্ছে', 'article', 'জাহাজে আলাদা রাখা মার্কিন যাত্রীদের দেশে নেওয়া হচ্ছে', 0, 0, 0, 0, 0, 0, 0, NULL, '<p style=\"outline: 0px; padding: 0px; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; color: rgb(0, 0, 0); font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif;\"><span style=\"background-color: rgb(255, 255, 255);\">করোনাভাইরাসের কারণে জাপানে পৃথক করে রাখা জাহাজটির মার্কিন যাত্রীদের দুটো বিমানে করে নিজ দেশে নিয়ে যাচ্ছে যুক্তরাষ্ট্র। করোনাভাইরাসের সংক্রমণে দেখা দেওয়া রোগ কোভিড-১৯–এ আক্রান্ত রোগী থাকায় ডায়মন্ড প্রিন্সেস নামের জাহাজটি থেকে যাত্রী-ক্রুদের নামতে না দিয়ে কোয়ারেন্টাইন (যে সময় পর্যন্ত সংক্রমণের আশঙ্কায় পৃথক রাখা হয়) করে রেখেছে জাপান।</span></p><p style=\"outline: 0px; padding: 0px; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; color: rgb(0, 0, 0); font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif;\"><span style=\"background-color: rgb(255, 255, 255);\">আজ সোমবার ভোরে জাপানের রাজধানী টোকিওর হানেদা বিমানবন্দর থেকে মার্কিন সরকারের দুটি বিমান যাত্রীদের নিয়ে যুক্তরাষ্ট্রের উদ্দেশে রওনা দিয়েছে।</span></p><p style=\"outline: 0px; padding: 0px; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; overflow: hidden; line-height: 30px; overflow-wrap: break-word; color: rgb(0, 0, 0); font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif;\"><span style=\"background-color: rgb(255, 255, 255);\"><font size=\"2\">বিবিসি অনলাইনের খবরে জানানো হয়, ডায়মন্ড প্রিন্সেস জাহাজটিতে মোট যাত্রী ও ক্রু রয়েছেন ৩ হাজার ৭০০ জন। এর মধ্যে ৪০০ জন মার্কিন নাগরিক। চীনে করোনাভাইরাস আঘাত হানার পর ৩ ফেব্রুয়ারি থেকে জাহাজটি জাপানের ইয়োকোহামা বন্দরে কোয়ারেন্টাইন করে রাখা হয়েছে। জাহাজ থেকে হংকংয়ে নেমে যাওয়া এক যাত্রীর করোনাভাইরাস ধরা পড়ার পর জাহাজটিকে কোয়ারেন্টাইন রাখা হয়। বর্তমানে আক্রান্ত ব্যক্তিদের মধ্যে ৪০ জন মার্কিন নাগরিক। তাঁদের জাপানেই চিকিৎসা দেওয়া হবে।</font><br></span></p><p style=\"outline: 0px; padding: 0px; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; color: rgb(0, 0, 0); font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif;\"><span style=\"background-color: rgb(255, 255, 255);\">চীনের বাইরে এই জাহাজেই সবচেয়ে বেশিসংখ্যক মানুষ কোভিড-১৯–এ আক্রান্ত হয়েছেন। জাপানি কর্তৃপক্ষ গতকাল রোববার জানিয়েছে, জাহাজটিতে নতুনভাবে আরও ৭০ জন আক্রান্ত হয়েছেন। মোট আক্রান্ত ব্যক্তির সংখ্যা বেড়ে দাঁড়িয়েছে ৩৫৫।</span></p><p style=\"outline: 0px; padding: 0px; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; color: rgb(0, 0, 0); font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif;\"><span style=\"background-color: rgb(255, 255, 255);\">যুক্তরাষ্ট্রের ন্যাশনাল ইনস্টিটিউট অব অ্যালার্জি অ্যান্ড ইনফেকশাস ডিজিজের পরিচালক ড. অ্যান্থনি ফাউসি জানিয়েছেন, জাহাজে যেসব মার্কিন যাত্রী আক্রান্ত হয়েছেন, তাঁদের জাপানেই চিকিৎসা দেওয়া হবে।</span></p><p style=\"outline: 0px; padding: 0px; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; color: rgb(0, 0, 0); font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif;\"><span style=\"background-color: rgb(255, 255, 255);\">সিবিএস টেলিভিশনের ফেস দ্য নেশন অনুষ্ঠানে দেওয়া সাক্ষাৎকারে ড. ফাউসি আরও বলেন, যদি ওই যাত্রীদের কারও উড়োজাহাজে এ রোগের লক্ষণ ধরা পড়ে, তবে তাঁদের উড়োজাহাজের ভেতরেই পৃথক করে ফেলা হবে।</span></p><p style=\"outline: 0px; padding: 0px; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; color: rgb(0, 0, 0); font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif;\"><span style=\"background-color: rgb(255, 255, 255);\">দুটি বিমানে ঠিক কত মার্কিন নাগরিককে বহন করা হবে, সে সম্পর্কে স্পষ্ট কোনো তথ্য পাওয়া যায়নি। জানা গেছে, যাত্রীদের নিজ দেশে নেওয়ার পর ১৪ দিন কোয়ারেন্টাইন করে রাখা হবে।</span></p><p style=\"outline: 0px; padding: 0px; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; color: rgb(0, 0, 0); font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif;\"><span style=\"background-color: rgb(255, 255, 255);\">জাহাজটির বেশ কয়েকজন মার্কিন যাত্রী এখনই ডায়মন্ড প্রিন্সেস জাহাজটি ত্যাগ করতে অস্বীকৃতি জানিয়েছেন। জাহাজটিকে কোয়ারেন্টাইন করে রাখার সময় শেষ হবে ১৯ ফেব্রুয়ারি। তাঁরা তত দিন পর্যন্ত জাহাজেই থাকতে চান। জাহাজের একজন মার্কিন যাত্রী ম্যাট স্মিথ বলেন, যে বাসে করে বিমানবন্দরে বিমানের কাছে নেওয়া হবে, সেই বাসে সম্ভাব্য আক্রান্ত ব্যক্তি থাকতে পারেন। এ কারণে তিনি ওই ব্যক্তিদের সঙ্গে এক বাসে যেতে চান না। জাহাজেই থাকবেন।</span></p><p style=\"outline: 0px; padding: 0px; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; color: rgb(0, 0, 0); font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif;\"><span style=\"background-color: rgb(255, 255, 255);\">জাহাজে কোয়ারেন্টাইন থাকা যাত্রীদের জাপানের স্বাস্থ্য মন্ত্রণালয়ের তৈরি বিশেষ অ্যাপ–সুবিধাসংবলিত দুই হাজার আইফোন দেওয়া হয়েছে। যাতে যাত্রীরা ওই অ্যাপের মাধ্যমে চিকিৎসক, ফার্মাসিস্ট ও মানসিক স্বাস্থ্য কাউন্সিলরদের সঙ্গে যোগাযোগ করতে পারেন। প্রতিটি কেবিনের জন্য একটি করে আইফোন দেওয়া হয়েছে। জাপানের বাইরে নিবন্ধিত ফোন থেকে এই অ্যাপে ঢোকার সুযোগ নেই।</span></p><p style=\"outline: 0px; padding: 0px; margin-right: 0px; margin-left: 0px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; color: rgb(0, 0, 0); font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif;\"><span style=\"background-color: rgb(255, 255, 255);\">গতকালের তথ্য অনুসারে, ভাইরাসটির উৎপত্তিস্থল চীনের হুবেই প্রদেশে আরও ১০০ জন মারা গেছেন। গত শনিবারের চেয়ে এ সংখ্যা ১৩৯ জন কম। চীনে মোট ১ হাজার ৭০০ জন মারা গেছেন। এর মধ্যে হুবেই প্রদেশে মারা গেছেন ১ হাজার ৬৯২ জন। আক্রান্ত ব্যক্তিদেরও বেশির ভাগ হুবেই প্রদেশের। মোট আক্রান্ত ব্যক্তির সংখ্যা ৭০ হাজার ৫০০–র বেশি। চীনের বাইরে ৩০টি দেশে ৫০০–এর বেশি মানুষ আক্রান্ত হয়েছেন। এর মধ্যে ফ্রান্স, হংকং, ফিলিপাইন ও জাপানে চারজন মারা গেছেন।</span></p>', '1581921136af87098f3e79a4d4d33a8e681b88dcac-5e4a1cd8b266b.jpg', NULL, NULL, NULL, NULL, NULL, 16, 32, 0, NULL, 0, 1, NULL, 'true', 0, NULL, '2023-01-15 09:01:21', '2023-01-15 03:01:21'),
(118, 2, 'অ্যান্টার্কটিকায় যাওয়ার পথে চিলির উড়োজাহাজ নিখোঁজ', 'অ্যান্টার্কটিকায়-যাওয়ার-পথে-চিলির-উড়োজাহাজ-নিখোঁজ', 'article', 'অ্যান্টার্কটিকায় যাওয়ার পথে চিলির উড়োজাহাজ নিখোঁজ', 0, 0, 0, 0, 0, 0, 0, NULL, '<p style=\"outline: 0px; padding: 0px; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; color: rgb(0, 0, 0); font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif;\"><span style=\"background-color: rgb(255, 255, 255);\">অ্যান্টার্কটিকায় যাওয়ার পথে চিলির একটি সামরিক উড়োজাহাজ নিখোঁজ হয়ে গেছে। উড়োজাহাজটিতে মোট ৩৮ জন আরোহী ছিলেন। চিলির বিমানবাহিনী এ তথ্য নিশ্চিত করেছে।</span></p><p style=\"outline: 0px; padding: 0px; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; color: rgb(0, 0, 0); font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif;\"><span style=\"background-color: rgb(255, 255, 255);\">ব্রিটিশ সংবাদমাধ্যম বিবিসির প্রতিবেদনে বলা হয়েছে, নিখোঁজ হওয়া সি-১৩০ হারকিউলিস উড়োজাহাজটি স্থানীয় সময় মঙ্গলবার বিকেলে চিলির পুন্তা অ্যারেনাস শহর থেকে যাত্রা শুরু করে। যাত্রা শুরুর সোয়া ঘণ্টা পরে নিয়ন্ত্রণকক্ষের সঙ্গে উড়োজাহাজটির সংযোগ বিচ্ছিন্ন হয়ে যায়। বিমানটিতে ২১ জন যাত্রী ও ১৭ জন ক্রু ছিলেন। অ্যান্টার্কটিকার কিং জর্জ দ্বীপে একটি সামরিক ক্যাম্পে সহায়তা দেওয়ার জন্য উড়োজাহাজটি রওনা হয়েছিল। উড়োজাহাজটির খোঁজে অভিযান চলছে।</span></p><p style=\"outline: 0px; padding: 0px; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; overflow: hidden; line-height: 30px; overflow-wrap: break-word; color: rgb(0, 0, 0); font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif;\"><span style=\"background-color: rgb(255, 255, 255);\"><font size=\"2\">চিলির বিমানবাহিনীর দেওয়া এক বিজ্ঞপ্তিতে বলা হয়েছে, ৭৭০ মাইল যাত্রাপথের মধ্যে ৪৫০ মাইল পর্যন্ত উড়োজাহাজটির সঙ্গে যোগাযোগ ছিল কন্ট্রোল রুমের। কিন্তু উড়োজাহাজটি ড্রেক প্যাসেজে যাওয়ার পর হঠাৎ সংযোগ বিচ্ছিন্ন হয়ে যায়। উড়োজাহাজটির সঙ্গে সর্বশেষ যে জায়গায় যোগাযোগ করা গেছে, সে জায়গার ছবি টুইটারে শেয়ার করেছে বিমানবাহিনী।</font><br></span></p><p style=\"outline: 0px; padding: 0px; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; color: rgb(0, 0, 0); font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif;\"><span style=\"background-color: rgb(255, 255, 255);\">ড্রেক প্যাসেজ হলো দক্ষিণ আটলান্টিক ও দক্ষিণ প্রশান্ত মহাসাগরের মধ্যে সংযোগকারী একটি চ্যানেল। দুর্যোগপূর্ণ আবহাওয়ার জন্য বিশেষ পরিচিতি আছে এই ড্রেক প্যাসেজের। তবে চিলির বিমানবাহিনী জানিয়েছে, উড়োজাহাজটি নিখোঁজ হওয়ার সময় ওই জায়গার আবহাওয়া অনুকূলেই ছিল। সংযোগ বিচ্ছিন্ন হওয়ার সময় উড়োজাহাজটিতে পর্যাপ্ত জ্বালানি ছিল বলেও জানা গেছে।</span></p><p style=\"outline: 0px; padding: 0px; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; color: rgb(0, 0, 0); font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif;\"><span style=\"background-color: rgb(255, 255, 255);\">উড়োজাহাজটির নিখোঁজ হয়ে যাওয়া প্রসঙ্গে চিলির এয়ারফোর্স জেনারেল এদুয়ার্ডো মসকুয়েরা স্থানীয় গণমাধ্যমকে বলেছেন, বিপদে পড়ার ব্যাপারে উড়োজাহাজটি থেকে কোনো বার্তা পাঠানো হয়নি। উড়োজাহাজটির পাইলট অনেক অভিজ্ঞ। জেনারেল এদুয়ার্ডো আশঙ্কা প্রকাশ করে বলেছেন, হতে পারে বাধ্য হয়ে উড়োজাহাজটিকে সমুদ্রে অবতরণ করাতে বাধ্য হয়েছেন পাইলট।</span></p><p style=\"outline: 0px; padding: 0px; margin-right: 0px; margin-left: 0px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; color: rgb(0, 0, 0); font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif;\"><span style=\"background-color: rgb(255, 255, 255);\">এ ঘটনার পর চিলির প্রেসিডেন্ট সেবাস্তিয়ান পিনেরা এক টুইটবার্তায় বলেছেন, এ ঘটনায় তিনি মর্মাহত। উদ্ধার অভিযান পর্যবেক্ষণ করতে দেশটির স্বরাষ্ট্রমন্ত্রী ও প্রতিরক্ষামন্ত্রীর সঙ্গে চেরিলোস বিমানঘাঁটিতেও গেছেন তিনি।</span></p>', '15819213480e54201b1ebd310756260e4071359fa0-5defbc7733d3e.jpg', NULL, NULL, NULL, NULL, NULL, 16, 32, 0, NULL, 0, 1, NULL, 'true', 0, NULL, '2023-01-15 09:01:21', '2023-01-15 03:01:21'),
(119, 2, 'করোনার ভয়ে চীনে যাচ্ছেন না জেমস বন্ডও', 'করোনার-ভয়ে-চীনে-যাচ্ছেন-না-জেমস-বন্ডও', 'article', 'করোনার ভয়ে চীনে যাচ্ছেন না জেমস বন্ডও', 0, 0, 0, 0, 1, 0, 0, 'hollywood', '<p style=\"outline: 0px; padding: 0px; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; color: rgb(0, 0, 0); font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif;\"><span style=\"background-color: rgb(255, 255, 255);\">করোনাভাইরাসের ভয়ে চীনে যাননি জেমস বন্ড! এখনই তিনি মরতে চান না। কারণ, জেমস বন্ড সিরিজের ২৫তম ছবি ‘নো টাইম টু ডাই’ মুক্তি পাচ্ছে এপ্রিল মাসে। এ উপলক্ষে বিশ্বের নানা দেশে প্রচারণায় অংশ নিচ্ছেন ছবির নায়ক ড্যানিয়েল ক্রেগ। করোনাভাইরাসের ভয়ে চীনের রাজধানী বেইজিং সফর বাতিল করেছেন তিনি। এখন মরে গেলে চলবে না তাঁর।</span></p><p style=\"outline: 0px; padding: 0px; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; color: rgb(0, 0, 0); font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif;\"><span style=\"background-color: rgb(255, 255, 255);\">চীনের বেইজিংয়ে এপ্রিল মাসে উদ্বোধনী প্রদর্শনী হওয়ার কথা ‘নো টাইম টু ডাই’ ছবিটির। কিন্তু দেশটিতে করোনাভাইরাসে ইতিমধ্যে ১ হাজার ৬০০ লোক মারা যাওয়ায় সবকিছু এলোমেলো হয়ে গেছে। প্রায় সব প্রেক্ষাগৃহে লেগেছে তালা। বিশ্ব সিনেমা অঙ্গন চীন থেকে প্রায় ৬ বিলিয়ন ইউরো আয় করে। সেই বাজার বন্ধ মানে, সিনেমা ব্যবসায়ীদের দোকানে লালবাতি জ্বলার মতো। যদিও জেমস বন্ড সিরিজের নতুন এই ছবিটি রেকর্ড পরিমাণ ব্যবসা করার পরিকল্পনায় এগোচ্ছিল। সূত্র জানিয়েছে, এর মধ্যে যদি প্রেক্ষাগৃহগুলো খুলেও দেয়, তবু অভিনেতা ড্যানিয়েলের ব্যক্তিগত চিকিৎসক তাঁকে চীনে যেতে দেবেন না।</span></p>', '15819220526fdd49c8912d0254366b15752f301434-5e4984482e512.jpg', NULL, NULL, NULL, NULL, NULL, 20, 35, 0, NULL, 0, 1, NULL, 'true', 0, NULL, '2023-01-15 09:01:21', '2023-01-15 03:01:21'),
(120, 2, 'টাবুর কবিতা ও সৌন্দর্যে উজ্জ্বল আসর', 'টাবুর-কবিতা-ও-সৌন্দর্যে-উজ্জ্বল-আসর', 'article', 'টাবুর কবিতা ও সৌন্দর্যে উজ্জ্বল আসর', 0, 0, 0, 0, 1, 0, 0, 'bollywood', '<p style=\"outline: 0px; padding: 0px; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; color: rgb(0, 0, 0); font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif;\"><span style=\"background-color: rgb(255, 255, 255);\">হালকা শীতের আড়মোড়া ভেঙে গতকাল শুরু হয় ল্যাকমে ফ্যাশন শোয়ের চতুর্থ সকাল। শুরুতেই আলো ছড়ান বলিউড তারকারা। সোহা, এষা, তারা, আলায়ার আলোয় উজ্জ্বল ছিল গতকালের আসর।</span></p><p style=\"outline: 0px; padding: 0px; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; color: rgb(0, 0, 0); font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif;\"><span style=\"background-color: rgb(255, 255, 255);\">‘ল্যাকমে ফ্যাশন উইক সামার/রিসোর্ট ২০২০’-এর চতুর্থ দিনের প্রথম আয়োজন ছিল মনীশ ছাবরার ‘দিল্লি ভিনটেজ কো’। তিনি নিয়ে আসেন খাদি সুতির ওপর সোনালি, রুপালি এবং আইভরির এমব্রয়ডারি করা পাশ্চাত্য পোশাক। প্রীতি জৈন ন্যানুটিয়ার ডিজাইন করা পোশাকে ‘পুল মডেল’ হিসেবে র‍্যাম্পে হাঁটেন বলিউড অভিনেত্রী এষা গুপ্তা। শাহীন মান্নানের ভ্রমণপোশাকে মঞ্চে হাঁটেন সোহা আলী খান। র‍্যাম্পে এই বলিউড অভিনেত্রীর কাঁধে ব্যাগের বদলে ছিল বই। সংবাদ সম্মেলনে সোহা জানান, ভ্রমণের সময় বই সবচেয়ে ভালো সঙ্গী।</span></p>', '1581922178600a8cbb9d5d41b466f015617de4d56d-5e48f83454002.jpg', NULL, NULL, NULL, NULL, NULL, 20, 34, 0, NULL, 0, 1, NULL, 'true', 0, NULL, '2023-01-15 09:01:21', '2023-01-15 03:01:21'),
(121, 2, 'ডেলের নতুন চার ল্যাপটপ বাজারে', 'ডেলের-নতুন-চার-ল্যাপটপ-বাজারে', 'article', 'ডেলের নতুন চার ল্যাপটপ বাজারে', 0, 0, 0, 0, 0, 0, 0, 'dell', '<p style=\"outline: 0px; padding: 0px; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; color: rgb(0, 0, 0); font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif;\"><span style=\"background-color: rgb(255, 255, 255);\">নতুন চারটি ল্যাপটপ বাজারে এনেছে ডেল টেকনোলজিস। গতকাল বুধবার রাজধানীর একটি হোটেলে আয়োজিত অনুষ্ঠানে প্রাতিষ্ঠানিক এবং ব্যক্তিগত ব্যবহারকারীদের জন্য ‘এক্সপিএস’ সিরিজের একটি এবং ‘ইন্সপায়রন’ সিরিজের তিনটি মডেল দেখান ডেলের কর্মকর্তারা।</span></p><p style=\"outline: 0px; padding: 0px; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; color: rgb(0, 0, 0); font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif;\"><span style=\"background-color: rgb(255, 255, 255);\">নতুন ল্যাপটপগুলো হলো এক্সপিএস সিরিজের ১৩-৭০০০ টু-ইন-ওয়ান, ইন্সপায়রন ১৩-৭০০০ টু-ইন-ওয়ান, ইন্সপায়রন ৫৩৯১ এবং ইন্সপায়রন ৫৪৯০।</span></p><p style=\"outline: 0px; padding: 0px; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; color: rgb(0, 0, 0); font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif;\"><span style=\"background-color: rgb(255, 255, 255);\">এক্সপিএস সিরিজের ল্যাপটপটিতে ১৬:১০ অনুপাতের ‘ইনফিনিটি-এজ’ সুবিধার ডিসপ্লের পাশাপাশি ‘ডলবিভিশন’ আলট্রা হাই ডেফিনেশনের অভিজ্ঞতা মিলবে বলে জানানো হয় অনুষ্ঠানে।</span></p><p style=\"outline: 0px; padding: 0px; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; color: rgb(0, 0, 0); font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif;\"><span style=\"background-color: rgb(255, 255, 255);\">ডেল টেকনোলজিস দক্ষিণ এশিয়ার ভাইস প্রেসিডেন্ট আনোথাই ওয়েত্তাকর্ন বলেন, কম্পিউটার জগতে চাহিদা অনুযায়ী নিত্য নতুন পাতলা এবং হালকা ল্যাপটপ উৎপাদন করছে ডেল।</span></p><p style=\"outline: 0px; padding: 0px; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; color: rgb(0, 0, 0); font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif;\"><span style=\"background-color: rgb(255, 255, 255);\">ডেল বাংলাদেশের কান্ট্রি ডিরেক্টর মোহাম্মদ আতিকুর রহমান বলেন, সুন্দর নকশা এবং ইনটেল দশম প্রজন্মের পরিচালনক্ষমতা নিয়ে বহুমাত্রিক কাজের সহজ সমাধান দেবে এক্সপিএস এবং ইন্সপায়রন সিরিজের নতুন ল্যাপটপগুলো।</span></p>', '1581922427db44d76912a8685ccc01ef316123cc31-5e327a6560dd7.jpg', NULL, NULL, NULL, NULL, NULL, 21, 36, 0, NULL, 0, 1, NULL, 'true', 0, NULL, '2023-01-15 09:01:21', '2023-01-15 03:01:21'),
(122, 2, '৭১ নতুন প্রজাতির সন্ধান', '৭১-নতুন-প্রজাতির-সন্ধান', 'article', '৭১ নতুন প্রজাতির সন্ধান', 0, 0, 0, 0, 0, 0, 0, 'science', '<p style=\"outline: 0px; padding: 0px; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; color: rgb(0, 0, 0); font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif;\"><span style=\"background-color: rgb(255, 255, 255);\">বিশ্বের বিভিন্ন প্রজাতির প্রাণী ও উদ্ভিদ বিলুপ্ত হয়ে যাচ্ছে। তবে এর মধ্যে ভালো খবর দিলেন বিজ্ঞানীরা। যুক্তরাষ্ট্রের ক্যালিফোর্নিয়া একাডেমি অব সায়েন্সেসের গবেষকেরা বলেছেন, এ বছর তাঁরা ৭১ প্রজাতির নতুন প্রাণী ও উদ্ভিদের সন্ধান পেয়েছেন। তিনটি সমুদ্র ও পাঁচটি মহাদেশের গুহা, বনাঞ্চল, এমনকি সমুদ্রের গভীরে খুঁজে পান এসব প্রজাতি।</span></p><p class=\"TEXT\" style=\"outline: 0px; padding: 0px; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; color: rgb(0, 0, 0); font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif;\"><span style=\"background-color: rgb(255, 255, 255);\">নতুন ওই প্রজাতির তালিকায় রয়েছে ফুল, মাছ, কোরাল, মাকড়সা, সামুদ্রিক প্রাণী, পিঁপড়া ও টিকটিকি। এসব নতুন প্রজাতির বিষয়ে এখন বেশি বেশি জানতে হবে। এতে করে পরিবেশ ও বাস্তুসংস্থানের বিষয়ে ব্যাপক জানা–বোঝার পাশাপাশি সংরক্ষণের প্রচেষ্টাও বেগবান করবে।</span></p><p class=\"TEXT\" style=\"outline: 0px; padding: 0px; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; color: rgb(0, 0, 0); font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif;\"><span style=\"background-color: rgb(255, 255, 255);\">গত জুনে জাতিসংঘের এক সমন্বিত গবেষণা প্রতিবেদনে বলা হয়, গত আড়াই শ বছরের পৃথিবী থেকে হারিয়ে গেছে প্রায় ৬০০ প্রজাতির গাছ। এ সংখ্যা আগের একই সময়ে বিলুপ্ত পাখি, স্তন্যপায়ী প্রাণী ও সরীসৃপের মিলিত সংখ্যার দ্বিগুণ। বিজ্ঞানীরা বলছেন, সাধারণ ধারণার চেয়ে ৫০০ গুণ দ্রুতগতিতে গাছ বিলুপ্তির ঘটনা ঘটছে। জলবায়ু পরিবর্তনের কারণে বৈশ্বিক উষ্ণায়ন বেড়ে যাওয়ার প্রভাব মানুষের পাশাপাশি জীববৈচিত্র্যের ওপরও পড়ছে। এর সঙ্গে বিভিন্ন প্রজাতি বিলুপ্তির বিষয়টির যোগসূত্র থাকতে পারে বলে সতর্ক করেছেন বিজ্ঞানীরা।</span></p><p class=\"TEXT\" style=\"outline: 0px; padding: 0px; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; color: rgb(0, 0, 0); font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif;\"><span style=\"background-color: rgb(255, 255, 255);\">এত সব নেতিবাচক তথ্যের মধ্যে নতুন প্রজাতির সন্ধান পেয়ে ব্যাপক উচ্ছ্বসিত বিজ্ঞানীরা। ক্যালিফোর্নিয়া একাডেমি অব সায়েন্সেসের প্রধান শ্যানন বেনেট বলেন, ‘পৃথিবীর অধিক পরিচিত ও দূরবর্তী এলাকাগুলোতে দশকের পর দশক নিরলস অনুসন্ধানের পরও জীববৈচিত্র্যের বিজ্ঞানীরা প্রকৃতির ৯০ শতাংশ প্রজাতি সম্পর্কে কোনো ধারণা দিতে পারেননি। প্রাণী ও উদ্ভিদে সমৃদ্ধ এই জীববৈচিত্র্য আমাদের পৃথিবীকে আরও বেশি প্রাণের সঞ্চার ঘটাতে সাহায্য করবে। পৃথিবীতে থাকা সব প্রাণীর জীবনব্যবস্থার মধ্যে আন্তসংযোগ স্থাপন করা গেলে তা জলবায়ুসংকট সমষ্টিগতভাবে মোকাবিলার জন্য কার্যকর হবে। গুরুত্বপূর্ণ বাস্তুসংস্থান সংরক্ষণ ও ভালো জানা–বোঝার জন্য আমরা যে প্রচেষ্টা চালাচ্ছিলাম, আবিষ্কৃত প্রতিটি নতুন প্রজাতি তাতে গুরুত্বপূর্ণ ভূমিকা পালন করবে।’</span></p><p style=\"outline: 0px; padding: 0px; margin-right: 0px; margin-left: 0px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; color: rgb(0, 0, 0); font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif;\"><span style=\"background-color: rgb(255, 255, 255);\">একাডেমির গবেষকেরা গত বছর ২২৯টি নতুন প্রজাতি আবিষ্কার করেন।</span></p>', '1581922632b79aaf08d1134f1e294edbbfead85966-5def6046e0c07.jpg', NULL, NULL, NULL, NULL, NULL, 21, 37, 0, NULL, 0, 1, NULL, 'true', 0, NULL, '2023-01-15 09:01:21', '2023-01-15 03:01:21'),
(123, 2, 'এ জীবন শুধুই ভালোবাসার', 'এ-জীবন-শুধুই-ভালোবাসার', 'article', 'এ জীবন শুধুই ভালোবাসার', 0, 0, 0, 0, 0, 0, 0, 'love', '<p style=\"outline: 0px; padding: 0px; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; color: rgb(0, 0, 0); font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif;\"><span style=\"background-color: rgb(255, 255, 255);\">ভালোবাসার উচ্ছ্বাস আর আনন্দে ভরে উঠেছিল জ্যাকসন হাইটসের জুইশ সেন্টার। লাল, মেরুন আর হলুদ পোশাকে সেজে আসা মানুষ মেতে উঠেছিলেন ভালোবাসার আড্ডায়, ভালোবাসার গানে আর সংলাপে। বলেছেন ভালোবাসার বলা না–বলা কথা। কেউ ২০ বছর আগে পালিয়ে বিয়ে করার কথা বলতে গিয়ে স্মৃতিকাতর হয়েছেন। কেউ ভালোবাসার আবেগে কোনো কথা না–বলেই মঞ্চে কেঁদে ফেলেছেন হাউমাউ করে। এভাবে ১৪ ফেব্রুয়ারি সন্ধ্যার জুইশ সেন্টার ভালোবাসাময় হয়ে উঠেছিল।</span></p><p style=\"outline: 0px; padding: 0px; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; color: rgb(0, 0, 0); font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif;\"><span style=\"background-color: rgb(255, 255, 255);\">‘এ জীবন আজ শুধুই ভালোবাসার’—স্লোগানে আয়োজিত অনুষ্ঠানে ভালোবাসার কথা শুনিয়ে প্রথম আলো উত্তর আমেরিকা ও এসেনসিয়াল ট্রাভেল অ্যান্ড ট্যুরস পুরস্কার পেয়েছেন অনেকে। নৃত্য, সাজ আর সংগীত হিমাঙ্কের নিচে থাকা তাপমাত্রায় ভালোবাসার উত্তাপ ছড়িয়েছে এই অনুষ্ঠানে। কান্তা কবীরের ভালোবাসার নৃত্য ছিল অনুষ্ঠানের অন্যতম আকর্ষণ। অনুষ্ঠানজুড়ে একের পর এক আয়োজনে ভালোবাসায় ডুবে ছিল দর্শক।</span></p>', '1581936753926e76a6ef402b7ede3f6a7f1ec36460-5e482c0287abe.jpg', NULL, NULL, NULL, NULL, NULL, 16, 32, 0, NULL, 0, 1, NULL, 'true', 0, NULL, '2023-01-15 09:01:21', '2023-01-15 03:01:21'),
(124, 2, 'মার্কিন সরকারের বিরুদ্ধে শিশুদের মামলা করা বারণ', 'মার্কিন-সরকারের-বিরুদ্ধে-শিশুদের-মামলা-করা-বারণ', 'article', 'মার্কিন সরকারের বিরুদ্ধে শিশুদের মামলা করা বারণ', 0, 0, 0, 0, 0, 0, 0, 'america', '<p style=\"outline: 0px; padding: 0px; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; color: rgb(0, 0, 0); font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif;\"><span style=\"background-color: rgb(255, 255, 255);\">মার্কিন সরকারের বিরুদ্ধে শিশু-কিশোরদের মামলা করার বিধান নেই। জলবায়ু পরিবর্তন ইস্যুতে যুক্তরাষ্ট্রের সরকারের বিরুদ্ধে শিশু-কিশোরদের করা একটি মামলা খারিজ করে দিয়ে মার্কিন আদালত এ রায় দিয়েছেন। ‘জলবায়ু পরিবর্তন থেকে সুরক্ষার সাংবিধানিক অধিকার রয়েছে’—এমন ভিত্তির ওপর দাঁড়িয়ে মার্কিন সরকারের বিরুদ্ধে এক দল শিশু-কিশোরের করা মামলার খারিজ করে দিয়ে গত শুক্রবার এ মত ব্যক্ত করেন আদালত।</span></p><p style=\"outline: 0px; padding: 0px; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; color: rgb(0, 0, 0); font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif;\"><span style=\"background-color: rgb(255, 255, 255);\">বার্তা সংস্থা রয়টার্সের প্রতিবেদনে বলা হয়, জলবায়ু পরিবর্তনকে আমলে নিতে মার্কিন সরকারের বিরুদ্ধে ২০১৫ সালে মামলাটি করেছিল শিশু-কিশোরেরা। মামলাটির যুক্তরাষ্ট্রের নবম সার্কিট কোর্টে উঠলে বিচারকেরা বিভক্ত রায়ে জানান, মামলাটি করার সময় বাদীদের বয়স ৮ থেকে ১৯ বছরের মধ্যে ছিল। এ হিসাবে তাদের কারও বয়স মার্কিন সরকারের বিরুদ্ধে মামলা করার উপযুক্ত নয়। বিভক্ত এ রায়ে তিন বিচারপতির প্যানেলের মধ্যে একজন বাদীদের পক্ষে মত ব্যক্ত করেন।</span></p><p style=\"outline: 0px; padding: 0px; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; color: rgb(0, 0, 0); font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif;\"><span style=\"background-color: rgb(255, 255, 255);\">বিচারক অ্যান্ড্রু হারউইটজ বলেছেন, প্যানেলের সংখ্যাগরিষ্ঠ বিচারক বিষয়টিকে দেখেছেন অনেকটা নিস্পৃহ দৃষ্টিতে। এ ক্ষেত্রে জলবায়ু পরিবর্তনের মতো গুরুতর বিষয়ের ওপর জীবাশ্ম জ্বালানির ক্ষতিকর প্রভাব জানা সত্ত্বেও একে দেওয়া সরকারি পৃষ্ঠপোষকতার মতো বিষয়কে অগ্রাহ্য করা হয়েছে।</span></p><p style=\"outline: 0px; padding: 0px; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; color: rgb(0, 0, 0); font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif;\"><span style=\"background-color: rgb(255, 255, 255);\">মামলাটি দায়েরে সহায়তা করেছিল ‘আওয়ার চিলড্রেনস ট্রাস্ট’ নামের একটি অলাভজনক সংস্থা। রায়ের পর দেওয়া এক বিবৃতিতে সংস্থাটি জানায়, এ রায় পুনর্বিবেচনার জন্য তারা ১১ জন বিচারকের সমন্বয়ে গঠিত প্যানেলের দ্বারস্থ হবে।</span></p><p style=\"outline: 0px; padding: 0px; margin-right: 0px; margin-left: 0px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; color: rgb(0, 0, 0); font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif;\"><span style=\"background-color: rgb(255, 255, 255);\">এদিকে এ রায়ে সন্তোষ প্রকাশ করেছে মার্কিন বিচার মন্ত্রণালয়।</span></p>', '1581936973e274ba58e810b3c8512f86e4c6bbc242-5e24736a052e8.jpg', NULL, NULL, NULL, NULL, NULL, 16, 32, 0, NULL, 0, 1, NULL, 'true', 0, NULL, '2023-01-15 09:01:21', '2023-01-15 03:01:21'),
(125, 2, 'ট্রাম্পের বিরুদ্ধে সাক্ষ্য দেওয়ায় দুই কর্মকর্তা বরখাস্ত', 'ট্রাম্পের-বিরুদ্ধে-সাক্ষ্য-দেওয়ায়-দুই-কর্মকর্তা-বরখাস্ত', 'article', 'ট্রাম্পের বিরুদ্ধে সাক্ষ্য দেওয়ায় দুই কর্মকর্তা বরখাস্ত', 0, 0, 0, 0, 0, 0, 0, 'america', '<p style=\"outline: 0px; padding: 0px; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; color: rgb(0, 0, 0); font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif;\"><span style=\"background-color: rgb(255, 255, 255);\">অভিশংসন বিচারে সাক্ষ্য দেওয়া দুই জ্যেষ্ঠ কর্মকর্তাকে বরখাস্ত করেছেন মার্কিন প্রেসিডেন্ট ডোনাল্ড ট্রাম্প। স্থানীয় সময় গতকাল শুক্রবার ইউরোপীয় ইউনিয়নে (ইইউ) মার্কিন রাষ্ট্রদূত গর্ডন সন্ডল্যান্ড এবং মার্কিন জাতীয় নিরাপত্তা কাউন্সিলের ইউক্রেনবিষয়ক শীর্ষ বিশেষজ্ঞ লেফটেন্যান্ট কর্নেল আলেক্সান্ডার ভিন্ডম্যানকে ট্রাম্পের বিরুদ্ধে সাক্ষ্য দেওয়ার কারণে বরখাস্ত করা হয়েছে।</span></p><p style=\"outline: 0px; padding: 0px; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; color: rgb(0, 0, 0); font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif;\"><span style=\"background-color: rgb(255, 255, 255);\">আলেক্সান্ডার ভিন্ডম্যানের যমজ ভাই লেফটেন্যান্ট কর্নেল ইয়েভগেনি ভিন্ডম্যানকে হোয়াইট হাউস থেকে সেনা দপ্তরে ফেরত পাঠানো হয়েছে।</span></p><p style=\"outline: 0px; padding: 0px; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; color: rgb(0, 0, 0); font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif;\"><span style=\"background-color: rgb(255, 255, 255);\">আজ শনিবার বিবিসি অনলাইন ও সিএনএনের খবরে জানানো হয়, ইউক্রেনে জন্ম নেওয়া আলেক্সান্ডার ভিন্ডম্যানের আইনজীবী জানিয়েছেন, ভিন্ডম্যানকে নিরাপত্তাকর্মীরা হোয়াইট হাউস থেকে সরিয়ে নিয়ে যান। বলা হয়েছে, হোয়াইট হাউসে তাঁকে আর প্রয়োজন নেই। তিনি প্রতিদিনের মতো গতকালও তাঁর কর্মস্থলে যাওয়ার পর তাঁকে সরিয়ে নেওয়া হয়। তাঁর ভাই মার্কিন জাতীয় নিরাপত্তা কাউন্সিলের জ্যেষ্ঠ আইনজীবী ইয়েভগেনি ভিন্ডম্যানকেও তাঁর সঙ্গে হোয়াইট হাউস থেকে সরিয়ে দেওয়া হয়। গতকাল শুক্রবার তাঁকে সেনা দপ্তরে ফেরত পাঠানো হয়েছে।</span></p><p style=\"outline: 0px; padding: 0px; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; color: rgb(0, 0, 0); font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif;\"><span style=\"background-color: rgb(255, 255, 255);\">ভিন্ডম্যানকে বরখাস্ত করার তিন ঘণ্টা পর গর্ডন সন্ডল্যান্ডকে রাষ্ট্রদূত পদ থেকে অপসারণ করা হয়।</span></p>', '1581937244cc6d49247c9d34cde410b986b8ba3bf7-5e3e7955b15aa.jpg', NULL, NULL, NULL, NULL, NULL, 16, 32, 0, NULL, 0, 1, NULL, 'true', 0, NULL, '2023-01-15 09:01:21', '2023-01-15 03:01:21'),
(126, 2, 'অস্ট্রেলিয়ায় দাবানল নিয়ন্ত্রণে মাঠে নামছে সেনাবাহিনী', 'অস্ট্রেলিয়ায়-দাবানল-নিয়ন্ত্রণে-মাঠে-নামছে-সেনাবাহিনী', 'article', 'অস্ট্রেলিয়ায় দাবানল নিয়ন্ত্রণে মাঠে নামছে সেনাবাহিনী', 0, 0, 0, 0, 0, 0, 0, 'australia', '<p style=\"outline: 0px; padding: 0px; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; color: rgb(0, 0, 0); font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif;\"><span style=\"background-color: rgb(255, 255, 255);\">ভয়াবহ দাবানলে পুড়ছে অস্ট্রেলিয়া। প্রতিদিন নতুন নতুন এলাকায় আগুন ছড়িয়ে পড়ছে। এমন পরিস্থিতিতে দাবানল নিয়ন্ত্রণে আনতে জরুরি ভিত্তিতে সেনাবাহিনী মাঠে নামাচ্ছে ভিক্টোরিয়া ও নিউ সাউথ ওয়েলস রাজ্য সরকার।</span></p><p style=\"outline: 0px; padding: 0px; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; color: rgb(0, 0, 0); font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif;\"><span style=\"background-color: rgb(255, 255, 255);\">ব্রিটিশ সংবাদমাধ্যম বিবিসির প্রতিবেদনে বলা হয়েছে, ভিক্টোরিয়া রাজ্য সরকারের অনুরোধের পরিপ্রেক্ষিতে সেনাবাহিনী ও যান পাঠাতে রাজি হয়েছেন অস্ট্রেলিয়ার প্রধানমন্ত্রী স্কট মরিসন ও প্রতিরক্ষামন্ত্রী লিন্ডা রেনল্ডস। তীব্র গতিতে ছড়িয়ে পড়া আগুন থেকে বাঁচতে সমুদ্র উপকূলবর্তী অঞ্চলগুলোয় আশ্রয় নিচ্ছে অসংখ্য মানুষ। আজ মঙ্গলবার এক দিনেই ভিক্টোরিয়ার প্রায় চার হাজার মানুষ উপকূলে আশ্রয় নিয়েছে। নিউ সাউথ ওয়েলসে আগুনে মারা গেছে আরও দুজন। এ নিয়ে দাবানলের কারণে মৃত্যুর সংখ্যা ১২-তে গিয়ে ঠেকেছে। এ ছাড়া দুই রাজ্য মিলিয়ে পাঁচজন নিখোঁজ আছে বলেও জানিয়েছে প্রশাসন।<br></span></p>', '15819373646979d5da3af6d64a0676d385d0637e6a-5e0b5d56a603a.jpg', NULL, NULL, NULL, NULL, NULL, 16, 33, 0, NULL, 0, 1, NULL, 'true', 0, NULL, '2023-01-15 09:01:21', '2023-01-15 03:01:21'),
(129, 2, 'সিডনি ঢাকা পড়েছে ধোঁয়ায়', 'সিডনি-ঢাকা-পড়েছে-ধোঁয়ায়', 'article', 'সিডনি ঢাকা পড়েছে ধোঁয়ায়', 0, 0, 1, 0, 0, 0, 0, 'australia', '<p style=\"outline: 0px; padding: 0px; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; color: rgb(0, 0, 0); font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif;\"><span style=\"background-color: rgb(255, 255, 255);\">অস্ট্রেলিয়ার সিডনির আকাশ আজ মঙ্গলবার ধোঁয়ায় আচ্ছন্ন। রাতভর প্রচণ্ড বাতাস ছিল। আবহাওয়া বিভাগ বলছে, বায়ুদূষণের মাত্রা ঝুঁকিপূর্ণ। এতে চোখ জ্বালাপোড়া করা এবং নাক ও গলায় অস্বস্তিকর অনুভূতির মতো উপসর্গ দেখা দিয়েছে।</span></p><p style=\"outline: 0px; padding: 0px; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; color: rgb(0, 0, 0); font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif;\"><span style=\"background-color: rgb(255, 255, 255);\">বিবিসি অনলাইনের খবরে জানানো হয়, সামাজিক যোগাযোগের মাধ্যমে সিডনির মানুষ কুয়াশাচ্ছন্ন আকাশ ও বাড়িতে কটু গন্ধে ভরা ধোঁয়ার কথা লিখেছেন। সিডনির নীল আকাশ এখন ধূসর।</span></p><p style=\"outline: 0px; padding: 0px; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; color: rgb(0, 0, 0); font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif;\"><span style=\"background-color: rgb(255, 255, 255);\">সিডনির রাজধানী নিউ সাউথ ওয়েলসে ৫০ লাখ মানুষের বাস। এই এলাকায় কয়েক সপ্তাহ ধরে দাবানলের প্রভাব ছিল। নিউ সাউথ ওয়েলসের উত্তরে গত অক্টোবর থেকে শুরু হওয়া দাবানলে ছয়জনের প্রাণহানি হয়েছে।</span></p><p style=\"outline: 0px; padding: 0px; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; color: rgb(0, 0, 0); font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif;\"><span style=\"background-color: rgb(255, 255, 255);\">সিডনির বাসিন্দাদের মঙ্গলবার অগ্নিকাণ্ডের ব্যাপারে সতর্ক করা হয়েছে। আবহাওয়া বিভাগ বলছে, সিডনির পশ্চিমে তাপমাত্রা ৩৭ ডিগ্রি সেলসিয়াস হতে পারে।<br style=\"outline: 0px; padding: 0px; margin: 0px;\">সিডনির বিভিন্ন এলাকায় বায়ুদূষণ নির্ধারিত মাত্রার চেয়ে বেশি পরিমাণে রেকর্ড করা হয়েছে। আটবার এমন ঘটনা ঘটেছে।</span></p><p style=\"outline: 0px; padding: 0px; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; color: rgb(0, 0, 0); font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif;\"><span style=\"background-color: rgb(255, 255, 255);\">এএফপির খবরে জানা যায়, স্বাস্থ্য কর্মকর্তারা সিডনিবাসীকে ঘরের ভেতর থাকার পরামর্শ দিয়েছেন। কায়িক শ্রমের কাজ এড়িয়ে চলতে বলা হয়েছে। নিউ সাউথ ওয়েলসের অ্যাম্বুলেন্স পরিষেবা বলছে, শ্বাসপ্রশ্বাস-সংক্রান্ত জটিলতা যাদের রয়েছে, তাদের বিশেষ যত্নে থাকতে হবে।</span></p>', '15819376705bc87c9053b00ace7d891b314a41bb18-5dd37d446f80c.jpg', NULL, NULL, NULL, NULL, NULL, 16, 33, 0, NULL, 0, 1, NULL, 'true', 0, NULL, '2023-01-15 09:01:21', '2023-01-15 03:01:21'),
(130, 2, 'বাংলাদেশ টেস্ট ম্যাচ জেতা শিখবে কবে', 'বাংলাদেশ-টেস্ট-ম্যাচ-জেতা-শিখবে-কবে', 'article', NULL, 0, 0, 0, 0, 0, 0, 0, NULL, '<span style=\"background-color: rgb(255, 255, 255);\"><span style=\"color: rgb(0, 0, 0);\"><font style=\"\" size=\"2\" face=\"verdana\">বাংলাদেশের টেস্টে অভিষেক হয়েছে দুই দশক হয়েছে। লম্বা সময়ের পথ চলায় টেস্টে কতটা উন্নতি করেছে বাংলাদেশ? ২০০০ সালে ভারতের সঙ্গে টেস্টে অভিষেক বাংলার টাইগারদের। গত দুই দশকে বাংলাদেশ টেস্ট খেলেছে ১১৮টি, যার মধ্যে জয় ১৩টি। ড্র ১৬টি। এর সিংহভাগ দেশের মাটিতে। ম্যাচ হেরেছে ঠিক ৮৯টি। অর্থাৎ মোট ম্যাচের ৭৫ শতাংশই হেরেছেন বাংলার বাঘেরা। হেরে যাওয়ার ম্যাচের প্রায় অর্ধেকটা (৪৩) আবার ইনিংস পরাজয়। পরিসংখ্যানই বলে দিচ্ছে টেস্ট ম্যাচ জিততে কতটা কাঁচা টিম বাংলাদেশ।</font></span><br></span><div><p style=\"outline: 0px; padding: 0px; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; color: rgb(0, 0, 0); font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif;\"><span style=\"background-color: rgb(255, 255, 255);\">একটা দলের ভালো করার পেছনে সবচেয়ে বড় অবদান ঘরোয়া লিগের। বিশ্বের যত নামীদামি খেলোয়াড়, তাঁদের ঘরোয়া লীগের পরিসংখ্যান বলে দেয় তাঁরা কেন এত প্রতিষ্ঠিত। অথচ বাংলাদেশের ঘরোয়া লিগের মান নিয়ে আছে নানান প্রশ্ন। ক্রিকেটের উচ্চ গদিতে যিনিই বসেছেন, তিনিই বলেছেন ঘরোয়া লিগ তাঁদের চিন্তায় আছে। ঘরোয়ার উন্নতি হচ্ছে। এত উন্নতির ফলাফল পাওয়া যাবে কবে?</span></p><p style=\"outline: 0px; padding: 0px; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; color: rgb(0, 0, 0); font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif;\"><span style=\"background-color: rgb(255, 255, 255);\">বাংলাদেশ এ পর্যন্ত ১১৮টি টেস্ট ম্যাচ খেলেছে। এর মধ্যে অভিষেক হয়েছে ৯৬ জনের। এদের কেউ কেউ খেলা থেকে বিদায় নিয়েছেন। কেউবা দুই-এক ম্যাচ সুযোগ পেয়ে দলছাড়া হয়েছেন। যাঁরা দলছাড়া হয়েছেন, তাঁরা অনুপযুক্ত হলে কেনই বা দলে সুযোগ পেলেন? দলছাড়া হওয়ার পর কতটাই বা পরিচর্যা করেছে বিসিবি? প্রশ্ন থেকেই যাচ্ছে।</span></p></div>', '158200376367770586a6512dc80d2712bb8e98e12f-5e4acb8e4cea6.jpg', NULL, NULL, NULL, NULL, NULL, 19, 28, 0, NULL, 0, 1, NULL, 'true', 0, NULL, '2023-01-15 09:01:21', '2023-01-15 03:01:21'),
(131, 2, 'মেসির রেকর্ডের রাতে জনতার নায়ক টেন্ডুলকার', 'মেসির-রেকর্ডের-রাতে-জনতার-নায়ক-টেন্ডুলকার', 'article', 'মেসির রেকর্ডের রাতে জনতার নায়ক টেন্ডুলকার', 0, 0, 0, 0, 0, 0, 0, 'cricket, shachin', '<p style=\"outline: 0px; padding: 0px; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; color: rgb(0, 0, 0); font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif;\"><span style=\"background-color: rgb(255, 255, 255);\">সোমবার রাতেই ইতিহাস হয়ে গেছে। গতকাল বার্লিনে দেওয়া হলো ২০১৯ সালের লরিয়াস ক্রীড়া পুরস্কার। প্রথমবারের মতো কোনো ফুটবলার হিসেবে এ সম্মান পেলেন লিওনেল মেসি। এটুকুই যথেষ্ট ছিল ইতিহাসে নাম লেখানোর জন্য। কিন্তু চূড়ান্ত বিজয়ী হিসেবে বছরের সেরা ক্রীড়া ব্যক্তিত্ব একা হওয়া সম্ভব হয়নি মেসির পক্ষে। ভোটাভুটিতে তাঁর সমান ভোট পেয়েছেন ফর্মুলা ওয়ানের লুইস হ্যামিল্টনও। ২০ বছরের ইতিহাসে প্রথমবারের মতো দুজন বিজয়ী পেয়েছে লরিয়াস।</span></p><p style=\"outline: 0px; padding: 0px; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; color: rgb(0, 0, 0); font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif;\"><span style=\"background-color: rgb(255, 255, 255);\">বর্ষসেরা ক্রীড়াবিদ হ্যামিল্টন ও মেসি হলেও কাল রাতে মানুষের নায়ক হয়ে উঠেছিলেন টেন্ডুলকার। বিভিন্ন ক্যাটাগরির মাঝে মাত্র একটি পুরস্কারেই সাধারণ মানুষের ভোট দেওয়ার সুযোগ ছিল। গত বিশ বছরের সেরা ক্রীড়া মুহূর্তের সে পুরস্কার উঠেছে শচীন টেন্ডুলকারের হাতে। ২০১১ সালে বিশ্বকাপ জয়ের পর টেন্ডুলকারকে ঘাড়ে তুলে ভারতীয় দলের উদ্‌যাপনের সে স্মৃতি ভারতীয় সমর্থকদের মনে গেঁথে আছে। স্বাভাবিকভাবেই তাদের বিপুল সমর্থন এ পুরস্কার পেতে টেন্ডুলকারের পথে অন্য কাউকে বাঁধা হতে দেয়নি।।</span></p><p style=\"outline: 0px; padding: 0px; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; color: rgb(0, 0, 0); font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif;\"><span style=\"background-color: rgb(255, 255, 255);\">বর্ষসেরা নারী ক্রীড়াবিদ হয়েছেন যুক্তরাষ্ট্রের জিমন্যাস্ট সিমোনা বাইলস। আর বিশ্বসেরা দল নির্বাচিত হয়েছে ২০১৯ সালে বিশ্বকাপ জেতা দক্ষিণ আফ্রিকার রাগবি দল। ইয়ুর্গেন ক্লপের লিভারপুল ও যুক্তরাষ্ট্রের নারী ফুটবল দলকে হারিয়েছে তারা।</span></p><p style=\"outline: 0px; padding: 0px; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; color: rgb(0, 0, 0); font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif;\"><span style=\"background-color: rgb(255, 255, 255);\">ছুটিতে থাকায় প্রথম ফুটবলার হিসেবে লরিয়াস জেতার মুহূর্তে থাকতে পারেননি মেসি। তবে এক ভিডিও বার্তায় বলেছেন, ‘কোনো দলীয় খেলা থেকে প্রথম ব্যক্তি হিসেবে এই পুরস্কার জেতায় আমি গর্বিত।’</span></p><p style=\"outline: 0px; padding: 0px; margin-right: 0px; margin-left: 0px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; color: rgb(0, 0, 0); font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif;\"><span style=\"background-color: rgb(255, 255, 255);\">আর স্টিভ ওয়াহর কাছ থেকে সেরা মুহূর্তের পুরস্কার বুঝে নেওয়া টেন্ডুলকার বলেছেন, ‘এখানে অনেক অ্যাথলেট আছেন, যাদের অনেক কিছু ছিল না। তবু তারা তাদের পাওয়া সুযোগের সর্বোচ্চ ব্যবহার করেছেন। খেলাকে পেশা হিসেবে বেছে নেওয়ায় এবং নিজের স্বপ্ন পূরণ করে তরুণদের অনুপ্রাণিত করায় আমি তাদের ধন্যবাদ দিই। এ পুরস্কার শুধু আমার নয়, তাদের সবার।’</span></p>', '158200398325bf5230d5a761b3eb001003f8503881-5e4b53423d0df.jpg', NULL, NULL, NULL, NULL, NULL, 19, 28, 0, NULL, 0, 1, NULL, 'true', 0, NULL, '2023-01-15 09:01:21', '2023-01-15 03:01:21'),
(132, 2, 'পাকিস্তানে বোমা হামলায় ৮ জনের মৃত্যু', 'পাকিস্তানে-বোমা-হামলায়-৮-জনের-মৃত্যু', 'article', 'পাকিস্তানে বোমা হামলায় ৮ জনের মৃত্যু', 0, 0, 0, 0, 0, 0, 0, 'cricket, pakistan', '<p style=\"outline: 0px; padding: 0px; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; color: rgb(0, 0, 0); font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif;\"><span style=\"background-color: rgb(255, 255, 255);\">বাংলাদেশ দল দু-দফায় পাকিস্তান সফর করে এসেছে। তিনটি টি-টোয়েন্টি ও একটি টেস্ট শেষ হয়েছে। আরেক দফা পাকিস্তানে গিয়ে একটি ওয়ানডে ও বাকি টেস্ট খেলবেন মুমিনুল-তামিমেরা। দেশটি আন্তর্জাতিক ক্রিকেটের জন্য নিরাপদ প্রমাণ করতে সর্বোচ্চ চেষ্টা চালাচ্ছে পাকিস্তান ক্রিকেট বোর্ড। ২০০৯ সালে শ্রীলঙ্কা দলের ওপর হামলার পর যে বড় কোনো দলই পাকিস্তানে যেতে রাজি হচ্ছে না। বাংলাদেশ ও এর আগে শ্রীলঙ্কার পাকিস্তান সফর দিয়ে নিজেদের ভাবমূর্তি উজ্জ্বল করার চেষ্টা শুরু হয়েছে পাকিস্তানের। গতকাল সে চেষ্টা একটা বড় ধাক্কা খেল।</span></p><p style=\"outline: 0px; padding: 0px; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; color: rgb(0, 0, 0); font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif;\"><span style=\"background-color: rgb(255, 255, 255);\">পঞ্চমবারের মতো পাকিস্তান সুপার লিগ আয়োজিত হচ্ছে। অবশেষে নিজেদের মাটিতে সম্পূর্ণ পিএসএল আয়োজন করতে যাচ্ছে পাকিস্তান। অনেকে বিদেশি ক্রিকেটার আসছেন পাকিস্তানে। এ অবস্থায় গতকাল পাকিস্তানের কোয়েটাতে আত্মঘাতী বোমা হামলা হয়েছে। ধর্মীয় এক মিছিলে সে হামলায় অন্তত আটজন নিহত হয়েছে বলে জানিয়েছে আল জাজিরা। এদের মধ্যে অন্তত দুজন পুলিশ অফিসার বলে জানিয়েছে বার্তা সংস্থা এএফপি। কর্তৃপক্ষ এখনো আনুষ্ঠানিকভাবে হতাহতের সংখ্যা জানায়নি। পিএসএলে কোয়েটার একটি ফ্র্যাঞ্চাইজি আছে। তবে কোয়েটা গ্ল্যাডিয়টেরসের কোনো ম্যাচ এবার হোম ভেন্যুতে নেই।<br style=\"outline: 0px; padding: 0px; margin: 0px;\"><br style=\"outline: 0px; padding: 0px; margin: 0px;\">পাকিস্তানের অনেক সংবাদমাধ্যম অবশ্য জানিয়েছে, এই হামলায় অন্তত ১২জন প্রাণ হারিয়েছে। আল জাজিরার দাবি, প্রদেশের মুখ্যমন্ত্রী জিয়া লানগোভ জানিয়েছেন, আহলে সুন্নত ওয়াল জামাতের এক অনুষ্ঠানস্থলের কাছে এ ঘটনা ঘটেছে।</span></p><p style=\"outline: 0px; padding: 0px; margin-right: 0px; margin-left: 0px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; color: rgb(0, 0, 0); font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif;\"><span style=\"background-color: rgb(255, 255, 255);\">২০ ফেব্রুয়ারি পিএসএল শুরু হবে। করাচি, লাহোর, রাওয়ালপিন্ডি ও মুলতানে হবে এবারের ৩৪টি ম্যাচ। কিন্তু টুর্নামেন্টের মাত্র দুদিন আগে এমন হামলার ঘটনা এ টুর্নামেন্টের আয়োজন নিয়ে</span></p>', '1582004213c7fcceccd3a6b42a50b241633409c449-5e4b751c7fe84.jpg', NULL, NULL, NULL, NULL, NULL, 19, 28, 0, NULL, 0, 1, NULL, 'true', 0, NULL, '2023-01-15 09:01:21', '2023-01-15 03:01:21'),
(133, 2, '১৫ দিনে কাকে কিনবে বার্সেলোনা?', '১৫-দিনে-কাকে-কিনবে-বার্সেলোনা?', 'article', '১৫ দিনে কাকে কিনবে বার্সেলোনা?', 0, 0, 0, 0, 0, 0, 0, 'football, barcalona', '<p style=\"outline: 0px; padding: 0px; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; color: rgb(0, 0, 0); font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif;\"><span style=\"background-color: rgb(255, 255, 255);\">লুইস সুয়ারেজ আছেন চার মাসের ‘ছুটি’তে। ওউসমান ডেমবেলেও সে পথে হেঁটে চোট পেয়ে মাঠের বাইরে চলে গেছেন ছয় মাসের জন্য। এ অবস্থায় বার্সেলোনার জরুরি দলবদলের আরজি মেনে নিয়েছে লা লিগা কর্তৃপক্ষ। স্পেনের মধ্য থেকে যেকোনো স্ট্রাইকারকে আনার সুযোগ দেওয়া হয়েছে তাদের। তবে কাজটা করতে হবে ১৫ দিনের মধ্যে। গতকালই ছিল এর প্রথম দিন।</span></p><p style=\"outline: 0px; padding: 0px; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; color: rgb(0, 0, 0); font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif;\"><span style=\"background-color: rgb(255, 255, 255);\">কাকে আনবে বার্সেলোনা? পুরো জানুয়ারির দলবদলের সময়টা চেষ্টা করেও কাউকে আনতে পারেনি ক্লাব। পিয়েরি-এমেরিক অবামেয়াং, কার্লোস ভেলা, লওতারো মার্টিনেজ, লরেন মোরোন, রদ্রিগো মরেনো, দুসান তাদিচ, রিচার্লিসন—কম নাম শোনা যায়নি এ সময়ে। কিন্তু বড় তারকাদের কাউকেই আনতে পারেনি তারা। চীন থেকে সেডরিক বাকাম্বুকেও আনতে আনেনি। ডেমবেলে চোট পাওয়ার পর উইলিয়াম হোসে, লুকাস পেরেজ ও আনহেল রদ্রিগেজকে আনার চেষ্টা করা হয়েছে। এমনকি তৃতীয় বিভাগের দলে খেলা লুইস সুয়ারেজকেও বাজিয়ে দেখেছে তারা। কিন্তু অবশেষে তাদের মনে ধরেছে মার্টিন ব্র্যাথওয়েটকে।</span></p><p style=\"outline: 0px; padding: 0px; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; color: rgb(0, 0, 0); font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif;\"><span style=\"background-color: rgb(255, 255, 255);\">ড্যানিশ এই স্ট্রাইকার খেলেন লেগানেসে। এ মৌসুমে ৬ গোল করেছেন লা লিগায়। ২৫ বছর বয়সী এই খেলোয়াড়ের এজেন্ট আলী দুর্সানকে বার্সেলোনায় দেখা গেছে কাল। শোনা যাচ্ছে দলবদল নিয়ে দর-কষাকষি করতেই এসেছেন দুর্সান। ফ্র্যাঙ্কি ডি ইয়ংয়েরও এজেন্ট হওয়াতে দুর্সানের সঙ্গে কাজের অভিজ্ঞতাও ভালো বার্সেলোনার। এদিকে লেগানেস সাফ জানিয়ে দিয়েছে, এই স্ট্রাইকারকে পেতে হলে রিলিজ ক্লজ দিয়েই নিতে হবে আর সেটা ২০ মিলিয়ন ইউরো।</span></p><p style=\"outline: 0px; padding: 0px; margin-right: 0px; margin-left: 0px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; color: rgb(0, 0, 0); font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif;\"><span style=\"background-color: rgb(255, 255, 255);\">বার্সেলোনা যদি ২০ মিলিয়ন ইউরো জোগাড় করতে না পারে তবে গেটাফের আনহেলকেই আনতে হবে। আর সে ক্ষেত্রে খরচ পড়বে ১০ মিলিয়ন। দেখা যাক, কাকে আনে বার্সেলোনা!</span></p>', '158200445490d04ec67adc48a79126f840acd44de7-5e4b70dd8be52.jpg', NULL, NULL, NULL, NULL, NULL, 19, 29, 0, NULL, 0, 1, NULL, 'true', 0, NULL, '2023-01-15 09:01:21', '2023-01-15 03:01:21');
INSERT INTO `posts` (`id`, `language_id`, `title`, `slug`, `post_type`, `meta_tag`, `show_right_column`, `is_feature`, `is_slider`, `slider_left`, `slider_right`, `is_trending`, `is_videoGallery`, `tags`, `description`, `image_big`, `rss_image`, `image_small`, `video`, `embed_video`, `audio`, `category_id`, `subcategories_id`, `schedule_post`, `schedule_post_date`, `is_pending`, `admin_id`, `user_id`, `status`, `is_draft`, `rss_link`, `created_at`, `updated_at`) VALUES
(134, 2, 'মেসিদের নিয়ে কুৎসা রটান বার্সা সভাপতি', 'মেসিদের-নিয়ে-কুৎসা-রটান-বার্সা-সভাপতি', 'article', 'মেসিদের নিয়ে কুৎসা রটান বার্সা সভাপতি', 0, 0, 0, 0, 0, 0, 0, 'football, messi, barcalona', '<p style=\"outline: 0px; padding: 0px; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; color: rgb(0, 0, 0); font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif;\"><span style=\"background-color: rgb(255, 255, 255);\">ফুটবল জগতে প্রতিপক্ষের অভাব নেই। মাঠের প্রতিপক্ষ আছে। ছিদ্রান্বেষী সংবাদমাধ্যম আছে। চাইলে ফুটবল নিয়ন্ত্রক সংস্থার কঠিন নিয়ম কানুনের গায়েও এ ট্যাগ দিয়ে দেওয়া যায়। এসবের বিরুদ্ধে ক্লাব ও খেলোয়াড় একে অপরের সম্বল। সেখানে কিনা বার্সেলোনা নিজেদের খেলোয়াড়দের বিপদে ফেলে দিচ্ছে। তাদের ইতিহাসের সেরা খেলোয়াড় মেসির নামে কুৎসা রটাচ্ছে! বোর্ড সভাপতি নিজের স্বার্থে ক্লাবের কিংবদন্তিদের ভাবমূর্তি নষ্ট করার চেষ্টা চালাচ্ছেন।</span></p><p style=\"outline: 0px; padding: 0px; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; color: rgb(0, 0, 0); font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif;\"><span style=\"background-color: rgb(255, 255, 255);\">ক্লাবের কাজ হলো নিজেদের খেলোয়াড়দের যেকোনো মূল্যে রক্ষা করা। এমনকি সমর্থকদের সাফাইও গায় ক্লাব। গতকাল মুসা মারেগা বর্ণবৈষম্যের শিকার হওয়ায় প্রতিবাদ বানিয়েছে পর্তুগালের ক্লাব এফসি পোর্তো। অথচ আগের সপ্তাহেই প্রতিপক্ষের এক খেলোয়াড়কে একইভাবে বর্ণবৈষম্যের শিকার বানিয়ে ফেলার পরও সমর্থকদের দোষ খুঁজে পায়নি পোর্তো। ক্রিস্টিয়ানো রোনালদোর বিপক্ষে ধর্ষণের অভিযোগ ওঠার পর সর্বোচ্চ সহযোগিতা করেছে ক্লাব জুভেন্টাস। লিওনেল মেসি কর নিয়ে ঝামেলায় পড়ায় তাঁর পক্ষে দাঁড়িয়েছিল বার্সেলোনা। আবার রিয়াল মাদ্রিদ সে কাজ না করায় খেপেছিলেন রোনালদো।</span></p><p style=\"outline: 0px; padding: 0px; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; color: rgb(0, 0, 0); font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif;\"><span style=\"background-color: rgb(255, 255, 255);\">কাতালান সংবাদমাধ্যম কে থি জোগাসের এক প্রতিবেদন অনুযায়ী, বার্সেলোনা বোর্ড নাকি এক জনসংযোগ প্রতিষ্ঠানকে ভাড়া করেছিলেন। আইথ্রি নামের সে প্রতিষ্ঠানের কাজ ছিল বার্সা সভাপতি হোসে মারিয়া বার্তোমেউর ভাবমূর্তি সামাজিক যোগাযোগ মাধ্যমে উজ্জ্বল করা। আর সে সঙ্গে যেসব বর্তমান ও সাবেক খেলোয়াড়ের সঙ্গে বার্তোমেউর বনে না, তাদের বিরুদ্ধে কুৎসা রটাতো এই প্রতিষ্ঠান।</span></p><p style=\"outline: 0px; padding: 0px; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; color: rgb(0, 0, 0); font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif;\"><span style=\"background-color: rgb(255, 255, 255);\">কে থি জোগাসের দাবি, ওই প্রতিষ্ঠান এক শর কাছাকাছি টুইটার ও ফেসবুক অ্যাকাউন্টের মাধ্যমে ক্লাব কিংবদন্তি মেসি, জাভি, জেরার্ড পিকে, পেপ গার্দিওলা, কার্লেস পুয়োলদের আক্রমণ করত। সাবেক সভাপতি হুয়ান লাপোর্তা ও কাতালান স্বাধীনতাকামী রাজনীতিবিদ কার্লেস পুইচডিমন্তের বিপক্ষেও নেমেছিল আইথ্রি।</span></p><p style=\"outline: 0px; padding: 0px; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; color: rgb(0, 0, 0); font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif;\"><span style=\"background-color: rgb(255, 255, 255);\">আইথ্রির সৃষ্টি করা অ্যাকাউন্টগুলো মেসির বিরুদ্ধে চুক্তি নবায়ন না করার গুঞ্জন সৃষ্টি করত। পিকের সব ব্যবসায়িক বিষয়াদি নিয়েও আলোচনা করত এরা। ২০১৭ সালে শুরু হয় প্রোপাগান্ডা। একের পর এক মন্তব্য করে ও বিভিন্ন নেতিবাচক আলোচনা করে মেসিদের আক্রমণ করা হতো। এর একমাত্র উদ্দেশ্য ছিল বার্তেমেউর ভাবমূর্তি উজ্জ্বল করা ও তাঁর সভাপতিত্ব নিশ্চিত করা। বার্সেলোনা স্বীকার করেছে, আইথ্রিকে তারা আসলেই নিয়োগ দিয়েছিল এবং এর বিনিময়ে ১০ লাখ ইউরোও পেয়েছে সে প্রতিষ্ঠান।</span></p><p style=\"outline: 0px; padding: 0px; margin-right: 0px; margin-left: 0px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; color: rgb(0, 0, 0); font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif;\"><span style=\"background-color: rgb(255, 255, 255);\">বার্সেলোনা অবশ্য মেসি-গার্দিওলাদের দিকে আক্রমণ করা অ্যাকাউন্টের অস্তিত্বের কথা অস্বীকার করেছে। কিন্তু আইথ্রির অর্থ পরিশোধ করার জন্য ছয়টি ভিন্ন চালানপত্র ব্যবহার করা সন্দেহের জন্ম দিচ্ছে।</span></p>', '1582004679fd28bf40ac372dded66dda79b3b20590-5e4aa76a18fdf.jpg', NULL, NULL, NULL, NULL, NULL, 19, 29, 0, NULL, 0, 1, NULL, 'true', 0, NULL, '2023-01-15 09:01:21', '2023-01-15 03:01:21'),
(135, 2, 'চেলসির মাঠ রাঙাল ইউনাইটেড', 'চেলসির-মাঠ-রাঙাল-ইউনাইটেড', 'article', 'চেলসির মাঠ রাঙাল ইউনাইটেড', 0, 0, 0, 0, 0, 0, 0, 'football', '<p style=\"outline: 0px; padding: 0px; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; color: rgb(0, 0, 0); font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif;\"><span style=\"background-color: rgb(255, 255, 255);\">ম্যানচেস্টার সিটি কি আগামী চ্যাম্পিয়নস লিগ খেলতে পারবে? আন্তর্জাতিক ক্রীড়া আদালতে আবেদন করে উয়েফার আরোপিত দুই বছরের নিষেধাজ্ঞা সিটি কাটাতে না পারলে কপাল খুলে যাবে ইংলিশ প্রিমিয়ার লিগের অন্য দলগুলোর। প্রথম চারের বদলে পঞ্চম দলটিরও সুযোগ মিলবে ইউরোপ সেরার প্রতিযোগিতায় নামার। এ তথ্য জেনেই হয়তো গা ছেড়ে দিয়েছে চেলসি। নিজেদের মাঠে জয় পেলেই যেখানে চতুর্থ স্থানে নিজেদের জায়গাটা সুদৃঢ় হয়, সে ম্যাচেই তারা হেরে বসেছে। কাল স্টামফোর্ড ব্রিজে চেলসিকে ২-০ গোলে হারিয়ে চ্যাম্পিয়নস লিগের আশা বাঁচিয়ে রেখেছে ম্যানচেস্টার ইউনাইটেড।</span></p><p style=\"outline: 0px; padding: 0px; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; color: rgb(0, 0, 0); font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif;\"><span style=\"background-color: rgb(255, 255, 255);\">হারের পেছনে অবশ্য অজুহাত খুঁজে নিয়েছেন চেলসি কোচ ফ্র্যাঙ্ক ল্যাম্পার্ড। ম্যাচে প্রথম গোলের আগেই লাল কার্ড দেখার মতো ঘটনা ঘটেছিল একটি। বল মাঠের বাইরে যাওয়ার পর চেলসির মিচি বাতশুয়াইকে টেনে ফেলে দিয়েছিলেন হ্যারি ম্যাগুয়ার। কিন্তু ভিডিও অ্যাসিস্ট্যান্ট রেফারি সেখানে লাল কার্ড দেওয়ার মতো কিছু দেখেনি। আবার চেলসির একমাত্র গোলটিও ভিএআর বাতিল করে দিয়েছে। সেই ম্যাগুয়ার পরে একটি গোল করে জ্বলুনি বাড়িয়েছেন ল্যাম্পার্ডের, ‘ম্যাগুয়ারকে অবশ্যই বের করে দেওয়া উচিত ছিল। এটাই ম্যাচ বদলে দিয়েছে। আজপিলিকুয়েতাকে ব্র্যান্ডন উইলিয়ামস ধাক্কা দিয়েছে, ফলে আমাদের গোলটাও হওয়া উচিত ছিল। জিরুর পায়ের আঙুল অফসাইডে ছিল, সেটা না হয় মেনেই নিলাম। এখন এটাই নিয়ম। আমি জানি না ওরা কেন ওই মনিটরে দেখে না, ওটা ব্যবহার করা উচিত।’</span></p><p style=\"outline: 0px; padding: 0px; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; color: rgb(0, 0, 0); font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif;\"><span style=\"background-color: rgb(255, 255, 255);\">ল্যাম্পার্ড যতই রেফারির দোষ খুঁজুন না কেন, সত্য হলো চেলসি ভালো খেলেনি কাল। আর ম্যানচেস্টার ইউনাইটেডের বিপক্ষে এ মৌসুমে এটি তৃতীয় হার তাদের। নভেম্বর থেকেই ফর্মটা বাজে যাচ্ছে তাদের। লিগে গত ১০ ম্যাচে মাত্র ৩ জয় তাদের। এ বছরও লিগে মাত্র একটি জয় চেলসির। তবু অন্যদের ব্যর্থতা মিলিয়ে লিগে চতুর্থ স্থানটা ধরে রেখেছে তারা। কিন্তু ২৬ ম্যাচ থেকে ৪১ পয়েন্ট পাওয়া চেলসি এখন সবার ধরাছোঁয়ার মধ্যে। ৪০ ও ৩৯ পয়েন্ট নিয়ে পাঁচ ও ছয়ে আছে টটেনহাম ও শেফিল্ড ইউনাইটেড। ৩৮ পয়েন্ট নিয়ে ম্যানচেস্টারও পিছিয়ে নেই। এমনকি ১১-তে থাকা বার্নলিও মাত্র ৭ পয়েন্ট পিছিয়ে আছে।</span></p><p style=\"outline: 0px; padding: 0px; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; color: rgb(0, 0, 0); font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif;\"><span style=\"background-color: rgb(255, 255, 255);\">২১ মিনিটে ম্য্যাগুয়ার ওভাবে বেঁচে যাওয়ার পর ম্যাচের নিয়ন্ত্রণ ইউনাইটেডের কাছেই ছিল। দুই দলই যে খুব একটা আহামরি ফুটবল খেলেছে তা নয়। কিন্তু সুযোগ কাজে লাগানোয় এগিয়ে গেছে ইউনাইটেড। প্রথমার্ধের শেষ মিনিটে ওয়ান-বিসাকার ক্রস থেকে হেড করে ইউনাইটেডকে এগিয়ে দিয়েছেন অ্যান্থনি মার্শিয়াল। ৫৩ মিনিটেই সমতা ফিরিয়েছেন বলে ভেবেছিলেন কোর্ট জুমা। কিন্তু গোলের আগ মুহূর্তে সিজার আজপিলিকুয়েতা ফ্রেডকে ধাক্কা দেওয়ায়, সে গোল ভিএআর বাতিল করে দিয়েছে।</span></p><p style=\"outline: 0px; padding: 0px; margin-right: 0px; margin-left: 0px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; color: rgb(0, 0, 0); font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif;\"><span style=\"background-color: rgb(255, 255, 255);\">৬৬ মিনিটে ব্রুনো ফার্নান্দেজের কর্নার থেকে ম্যাগুয়ারের গোল চেলসিকে শেষ করে দিয়েছে। এর পর দুই দলই গোলের সুযোগ পেলেও কাজে লাগাতে পারেনি কেউ। ৭৭ মিনিটে চেলসির অলিভিয়ের জিরুর গোল বাতিল হয় অফসাইডে।</span></p>', '15820052682562b21d85cfde7da66c5943c571fa14-5e4b66836f341.jpg', NULL, NULL, NULL, NULL, NULL, 19, 29, 0, NULL, 0, 1, NULL, 'true', 0, NULL, '2023-01-15 09:01:21', '2023-01-15 03:01:21'),
(136, 2, 'স্ত্রীকে নিয়ে বাংলাদেশের মাছে মজেছেন ব্রাজিলিয়ান ফুটবলার', 'স্ত্রীকে-নিয়ে-বাংলাদেশের-মাছে-মজেছেন-ব্রাজিলিয়ান-ফুটবলার', 'article', 'স্ত্রীকে নিয়ে বাংলাদেশের মাছে মজেছেন ব্রাজিলিয়ান ফুটবলার', 0, 0, 0, 0, 0, 0, 0, 'football, brazil, bangladesh', '<p style=\"outline: 0px; padding: 0px; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; color: rgb(0, 0, 0); font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif;\"><span style=\"background-color: rgb(255, 255, 255);\">ব্রাজিলিয়ান ফুটবল মানেই গ্যালারিতে তরুণীদের সাম্বার ছন্দ। বল নিয়ে প্রতিটি মুভে জোরালো উচ্ছ্বাস। ঢাকার ফুটবলে এমন চলন দেখা যায় না। তবে গতকাল বঙ্গবন্ধু জাতীয় স্টেডিয়ামে প্রিমিয়ার লিগের ম্যাচ শেষে এক ব্রাজিলিয়ান তরুণী দৃষ্টি করে নিলেন মাঠে উপস্থিত থাকা মানুষদের।</span></p><p style=\"outline: 0px; padding: 0px; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; color: rgb(0, 0, 0); font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif;\"><span style=\"background-color: rgb(255, 255, 255);\">তিনি আবাহনী লিমিটেডের ব্রাজিলিয়ান ডিফেন্ডার মাইলসনের স্ত্রী এনি। স্বামীর সঙ্গে পাঁচ মাস ধরে বাংলাদেশে অবস্থান করছেন। বঙ্গবন্ধু জাতীয় স্টেডিয়ামে খেলা দেখতে এর আগেও এসেছেন। কিন্তু গতকালই প্রথম দেখা গেল ম্যাচ শেষে অ্যাথলেটিকস ট্রাকে এসে দাঁড়িয়ে স্বামী মাইলসনকে অভিনন্দন জানাতে। গতকাল পুলিশ ক্লাবকে ২-০ গোলে হারিয়ে প্রিমিয়ার লিগে শুভ সূচনা করেছে আবাহনী।</span></p><p style=\"outline: 0px; padding: 0px; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; color: rgb(0, 0, 0); font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif;\"><span style=\"background-color: rgb(255, 255, 255);\">স্ত্রী এনি প্রতি ম্যাচেই তাঁকে উৎসাহ দেওয়ার জন্য মাঠে আসেন বলে জানালেন মাইলসন, ‘সমর্থন দেওয়ার জন্য সে সব সময় আমার সঙ্গেই থাকে। সে আমার খেলা দেখতে পছন্দ করে। তাই ওর মাঠে আসা।’</span></p><p style=\"outline: 0px; padding: 0px; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; color: rgb(0, 0, 0); font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif;\"><span style=\"background-color: rgb(255, 255, 255);\">বাংলাদেশে আসার আগে মাইলসন বেশ কয়েক মৌসুম ভারতের ফ্র্যাঞ্চাইজি আইএসএলে খেলেছেন । এনিকেও মাইলসনের সঙ্গে ঘুরতে হয়েছে এক প্রদেশ থেকে আরেক প্রদেশ। প্রতিবেশী দুই দেশের ফুটবল মাঠের পার্থক্যটাও ইতিমধ্যে চোখে পড়েছে এনির। সেটি মাইলসনকে জানিয়েছেন, ‘ও আমাকে বলে, “দুই দেশের মানুষ প্রায় একই রকম । কিন্তু ভারতে অনেক বেশি দর্শক মাঠে আসে। মেয়েরাও খুব উৎসাহ নিয়ে খেলা দেখেন। এখানে সেটা দেখা যায় না।”’</span></p><p style=\"outline: 0px; padding: 0px; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; color: rgb(0, 0, 0); font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif;\"><span style=\"background-color: rgb(255, 255, 255);\">ফুটবলে মজতে না পারলেও বাংলাদেশের মাছে ঠিকই মজে গেছেন ব্রাজিলিয়ান দম্পতি। সপ্তাহে কয়েক দিন রেস্টুরেন্টে গিয়ে মাছ না খেলে তাদের নাকি ভালোই লাগে না! মাইলসন জানালেন, ‘ব্রাজিলের চেয়ে বাংলাদেশ পুরোপুরি ভিন্ন। এখানে অনেক বেশি গাড়ি , যানজট । তাই বাইরে বের হওয়া হয় না। তবে মাঝে মাঝে রেস্টুরেন্টে খেতে যাই। এখানকার মাছ খুব ভালো লাগে। সপ্তাহে কয়েক দিন আমাদের রেস্টুরেন্টে গিয়ে মাছ খেতেই হবে।’</span></p><p style=\"outline: 0px; padding: 0px; margin-right: 0px; margin-left: 0px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; color: rgb(0, 0, 0); font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif;\"><span style=\"background-color: rgb(255, 255, 255);\">মাইলসন-এনি কি তবে মাছে-ভাতে ব্রাজিলিয়ান!</span></p>', '1582005453beccd66f3dd7cac22dc6fc9427d57e45-5e4a7d6098ed8.jpg', NULL, NULL, NULL, NULL, NULL, 19, 29, 0, NULL, 0, 1, NULL, 'true', 0, NULL, '2023-01-15 09:01:21', '2023-01-15 03:01:21'),
(137, 2, 'বিয়ের পর জীবনের অর্থ খুঁজে পেয়েছেন বিবার', 'বিয়ের-পর-জীবনের-অর্থ-খুঁজে-পেয়েছেন-বিবার', 'article', 'বিয়ের পর জীবনের অর্থ খুঁজে পেয়েছেন বিবার', 0, 0, 0, 0, 0, 0, 0, 'entertainment, justin', '<p style=\"outline: 0px; padding: 0px; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; color: rgb(0, 0, 0); font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif;\"><span style=\"background-color: rgb(255, 255, 255);\">‘বিয়ের আগে জীবন ছিল অর্থহীন।’ শুনলে হয়তো অনেকে একটু অবাক হবেন, সত্যি কি এই কথা জাস্টিন বিবার বলেছেন! এটাই সত্যি, কথাটি জাস্টিন বিবারই বলেছেন। বিয়ের পরেই তিনি জীবনের অর্থ খুঁজে পেয়েছেন।</span></p><p style=\"outline: 0px; padding: 0px; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; color: rgb(0, 0, 0); font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif;\"><span style=\"background-color: rgb(255, 255, 255);\">পাঁচ বছরের দীর্ঘ বিরতি ভেঙে ভালোবাসা দিবসে ভক্তদের নতুন অ্যালবাম ‘চেঞ্জেস’ উপহার দিলেন জাস্টিন বিবার। ২৫ বছর বয়সী এই কানাডীয়-মার্কিন পপ তারকার নতুন অ্যালবামের সব কটি গান তাঁর স্ত্রী হেইলি ব্যাল্ডউইনকে ঘিরে।</span></p><p style=\"outline: 0px; padding: 0px; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; color: rgb(0, 0, 0); font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif;\"><span style=\"background-color: rgb(255, 255, 255);\">জাস্টিন বিবারের অ্যালবামের প্রচ্ছদ শেয়ার করে ইনস্টাগ্রামে হেইলি ক্যাপশন লেখেন, ‘অবশেষে ভক্তদের কাছে তোমার নতুন অ্যালবাম পৌঁছাল। এর চেয়ে খুশির ব্যাপার আর কী হতে পারে বলো? তোমাকে নিয়ে আমি গর্বিত, প্রিয়। দুর্দান্ত একটি অ্যালবাম উপহার দেবার জন্য তোমাকে অভিনন্দন।’ ২০১৯ সালের সেপ্টেম্বর মাসে বিয়ের আনুষ্ঠানিকতা সারেন বিবার ও হেইলি জুটি। অবশ্য এক বছর আগেই চুপি চুপি রেজিস্ট্রি করে বিয়ের আনুষ্ঠানিকতা সেরেছিলেন তাঁরা। এই ‘অল অ্যারাউন্ড মি’ তারকা বিয়ের পর সিএনএনকে বলেন, ‘বিয়ের আগে আমি কী ছিলাম, তা এখন আর ঠিক মনে পড়ে না। মাঝেমধ্যে বোঝার চেষ্টার করি, তখন আমার জীবন কেমন ছিল। একেবারে অর্থহীন।’</span></p>', '1582005793abf2e984eb162d1da5ccf78d91b2db55-5e483dff68cde.jpg', NULL, NULL, NULL, NULL, NULL, 20, 35, 0, NULL, 0, 1, NULL, 'true', 0, NULL, '2023-01-15 09:01:21', '2023-01-15 03:01:21'),
(139, 2, 'টেলর সুইফটের পুরস্কারপ্রীতি', 'টেলর-সুইফটের-পুরস্কারপ্রীতি', 'article', 'টেলর সুইফটের পুরস্কারপ্রীতি', 0, 0, 0, 0, 0, 0, 0, 'hollywood', '<p style=\"outline: 0px; padding: 0px; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; color: rgb(0, 0, 0); font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif;\"><span style=\"background-color: rgb(255, 255, 255);\">পুরস্কার পেতে কে না ভালোবাসেন! শিল্পী ও পারফরমারদের সেই আকাঙ্ক্ষা আরও প্রবল। তবে মার্কিন পপ তারকা টেলর সুইফটের ক্ষেত্রে পুরস্কারপ্রীতিটা যেন বাড়াবাড়ি রকমের। পুরস্কার পাচ্ছেন না আঁচ করতে পেরে এ বছর গ্র্যামির আয়োজনেই যাননি এই তারকা।</span></p><p style=\"outline: 0px; padding: 0px; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; color: rgb(0, 0, 0); font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif;\"><span style=\"background-color: rgb(255, 255, 255);\">বিশ্বসংগীতের সবচেয়ে বড় সম্মাননা গ্র্যামি অ্যাওয়ার্ডের আসরে এ বছর কেন দেখা যায়নি টেলর সুইফটকে! সবার ভেতরে এ রকম এক জিজ্ঞাসার জন্ম নিয়েছে। অনুষ্ঠান শেষে সম্প্রতি জানা গেছে সেই কারণ। এ বছর গ্র্যামি পাচ্ছেন না তিনি, সেটা আগাম টের পেয়েছিলেন তিনি। এ নিয়ে কিঞ্চিৎ নিন্দার শিকার হয়েছেন এই তারকা। সংগীতাঙ্গনের বেশ কয়েকজন নিশ্চিত করেছেন সুইফটের এই কাণ্ডের কথা। গ্র্যামির অনুষ্ঠানে গান করার প্রস্তাব দেওয়া হয়েছিল সুইফটকে। তাঁর সঙ্গীরা আয়োজকদের কাছে জানতে চেয়েছিলেন, টেলর সুইফট কি এ বছর পুরস্কার পাচ্ছেন? গ্র্যামির আয়োজক কর্তৃপক্ষ অনুষ্ঠানের আগে সেই খবর ফাঁস করতে চায়নি, এমনকি কোনো ইঙ্গিত দিতেও রাজি হয়নি। এতে যা বোঝার বুঝে নিয়েছিলেন সুইফটের সঙ্গীরা। গ্র্যামির অনুষ্ঠানে পরিবেশন করতে রাজি হননি তাঁরা। নাম প্রকাশ না করার শর্তে সংগীতাঙ্গনের একজন বলেছেন, ‘আপনারা তো জানেনই যে তাঁর পুরস্কারপ্রীতি আছে। তিনি সবখানে পুরস্কৃত হতে চান।’ এ প্রসঙ্গে সুইফটের এক মুখপাত্র বলেছেন, ‘এটা একেবারেই বানোয়াট ও ভুয়া কথা। তিনি এমনিতেই যাননি।’</span></p><p style=\"outline: 0px; padding: 0px; margin-right: 0px; margin-left: 0px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; color: rgb(0, 0, 0); font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif;\"><span style=\"background-color: rgb(255, 255, 255);\">এ বছর গ্র্যামি অ্যাওয়ার্ডে বেস্ট পপ ভোকাল অ্যালবাম ও বেস্ট পপ সলো পারফরম্যান্স শাখায় মনোনয়ন পেয়েছিলেন টেলর সুইফট। প্রথম পুরস্কারটি পেয়েছেন বিলি আইলিশ এবং পরেরটি পেয়েছেন লিজ্জো। পেজ সিক্স</span></p>', '1582006074360b4bed97f11b54719299ae9f2221bf-5e3551ed5aed1.jpg', NULL, NULL, NULL, NULL, NULL, 20, 35, 0, NULL, 0, 1, NULL, 'true', 0, NULL, '2023-01-15 09:01:21', '2023-01-15 03:01:21'),
(140, 2, 'সংখ্যায় ৯২তম একাডেমি অ্যাওয়ার্ড', 'সংখ্যায়-৯২তম-একাডেমি-অ্যাওয়ার্ড', 'article', 'সংখ্যায় ৯২তম একাডেমি অ্যাওয়ার্ড', 0, 0, 0, 0, 0, 0, 0, 'hollywood', '<span style=\"background-color: rgb(255, 255, 255);\"><span style=\"color: rgb(0, 0, 0); font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; font-size: 18px;\">৯ ফেব্রুয়ারি (বাংলাদেশ সময় ১০ ফেব্রুয়ারি ভোররাত) যুক্তরাষ্ট্রের লস অ্যাঞ্জেলেসের ডলবি থিয়েটারে অনুষ্ঠিত হবে হলিউডি চলচ্চিত্রের সবচেয়ে জমকালো আসর। সেই রাতে বিশ্ব চলচ্চিত্রের ‘এ’ ক্লাস তারকাদের হাতে উঠবে আকাঙ্ক্ষিত সেই পুরস্কার। অথবা যাঁদের হাতে পুরস্কার শোভা পাবে, তাঁরা রাতারাতি বনে যাবেন ‘এ’ ক্লাস তারকা। এই বেলা জেনে নেওয়া যাক, সংখ্যায় এবারের অস্কার আয়োজন।</span><br></span><div><span style=\"color: rgb(0, 0, 0); font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; font-size: 18px; background-color: rgb(255, 255, 255);\">মনোনয়ন পাওয়া সেরা ছবিগুলো হল: ফর্ড ভি ফেরারি, দ্য আইরিশম্যান, জো জো র‍্যাবিট, জোকার, লিটিল উইমেন, ম্যারেজ স্টোরি, ১৯১৭, ওয়ান্স আপন আ টাইম ইন হলিউড ও বহু আলোচিত প্যারাসাইট. সেরা অভিনেতা বিভাগে মনোনীত শিল্পীরা হলেন অ্যান্টোনিও ব্যান্ডেরাস, লিওনার্দো ডিক্যাপ্রিও, অ্যাডাম ড্রাইভার ও জনাথন প্রাইস। সেরা অভিনেত্রীদের মধ্যে স্কারলেট জোহানসনের পাশাপাশি উপহারের ব্যাগ পাবেন সিনথিয়া এরিভো, সার্শে রোনান, শার্লিজ থেরন ও রেনে জেলওয়েগার। মনোনয়ন জেতা সেরা সহ-অভিনেতারা</span><span style=\"color: rgb(0, 0, 0); font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; font-size: 18px; background-color: rgb(240, 240, 237);\"><br></span></div>', '158200622456cc3108bca7f4a056da2f8b8b577fa4-5e404d8ad026c.jpg', NULL, NULL, NULL, NULL, NULL, 20, 35, 0, NULL, 0, 1, NULL, 'true', 0, NULL, '2023-01-15 09:01:21', '2023-01-15 03:01:21'),
(141, 2, 'শ্রদ্ধা কারিনা কুনালে উজ্জ্বল মঞ্চ', 'শ্রদ্ধা-কারিনা-কুনালে-উজ্জ্বল-মঞ্চ', 'article', 'শ্রদ্ধা কারিনা কুনালে উজ্জ্বল মঞ্চ', 0, 0, 0, 0, 0, 0, 0, 'bollywood', '<p style=\"outline: 0px; padding: 0px; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; color: rgb(0, 0, 0); font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif;\"><span style=\"background-color: rgb(255, 255, 255);\">গতকাল রোববার ল্যাকমের প্রাঙ্গণজুড়ে ছিল বিদায়ী সুর। কারণ, ল্যাকমের এই পাঁচ দিনব্যাপী ফ্যাশন মহোৎসবের শেষ দিন। তাই কাল এত রঙের মধ্যেও মন খারাপের আড্ডা।</span></p><p style=\"outline: 0px; padding: 0px; margin-right: 0px; margin-bottom: 16px; margin-left: 0px; overflow: hidden; font-size: 18px; line-height: 30px; overflow-wrap: break-word; color: rgb(0, 0, 0); font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif;\"><span style=\"background-color: rgb(255, 255, 255);\">‘ল্যাকমে ফ্যাশন উইক সামার/রিসোর্ট ২০২০’-এর শেষ দিনে হাজির হয়েছিলেন সাহেব ভাটিয়া, কুনাল খেমু, কুনাল অনিল তান্না, তিমির সালভা-সমীরা লাভেকার। সাহেব ভাটিয়ার শোর শোস্টপার ছিলেন ‘নিরজা’খ্যাত জিম সরাভ। বলিউড নায়ক কুনাল খেমু কালো শার্ট, কালো প্যান্ট আর নীল-কালো ক্রিসক্রস জ্যাকেটে মাইকেল জ্যাকসনের স্টেপ করে ফ্যাশন মঞ্চে ঝড় তোলেন। কুনাল খেমু পরেছিলেন কুনাল অনিল তান্নার ডিজাইন করা পোশাক। তিমির সালভা-সমিরা লাভেকরের ডিজাইন করা শেরওয়ানি পরে মঞ্চে হাঁটেন বলিউড অভিনেতা অমিত সাধ। দুপুরে কনের বেশে মঞ্চ আলো করে আসেন বলিউড অভিনেত্রী ইলিয়েনা ডিক্রুজ। তিনি পরেছিলেন ম্রুনালিনী রাওয়ের ডিজাইন করা বেগুনি রঙের ব্রাইডাল লেহেঙ্গা।</span></p>', '1582006353babe502c59655aaec9782f96c5e4df97-5e4982b1d92c83.jpg', NULL, NULL, NULL, NULL, NULL, 20, 34, 0, NULL, 0, 1, NULL, 'true', 0, NULL, '2023-01-15 09:01:21', '2023-01-15 03:01:21'),
(142, 2, 'যাদের হাতে উঠল ফিল্মফেয়ার', 'যাদের-হাতে-উঠল-ফিল্মফেয়ার', 'article', 'যাদের হাতে উঠল ফিল্মফেয়ার', 0, 0, 0, 0, 0, 0, 0, 'bollywood', '<span style=\"color: rgb(0, 0, 0); font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; font-size: 18px; background-color: rgb(255, 255, 255);\">গতকাল রাত বলিউডের জন্য একটা বিশেষ বড় তারার ঝলকময় রাত। সেরাতে বলিউডের রথী–মহারথীরা নামী ডিজাইনারদের দিয়ে ডিজাইন করা পোশাক পরে সুন্দর করে সেজে মিলিত হয়েছিলেন ৬৫তম ফিল্মফেয়ার পুরস্কার অনুষ্ঠানে। আকাঙ্ক্ষিত কালো নারীকে (ফিল্মফেয়ারের ট্রফি) ভেবে ভেবে কতই না রাত পার করেছেন তাঁরা। অবশেষে কাদের হাতে ধরা দিল সেই কাঙ্ক্ষিত পুরস্কার, তা দেখে নেওয়া যাক একনজরে:</span><br>', '1582006478ef09501311501751895d64c540c98737-5e492b9dac321.jpg', NULL, NULL, NULL, NULL, NULL, 20, 34, 0, NULL, 0, 1, NULL, 'true', 0, NULL, '2023-01-15 09:01:21', '2023-01-15 03:01:21'),
(161, 2, 'Everything travelers need to know about coronavirus', 'Everything-travelers-need-to-know-about-coronavirus', 'rss', NULL, 0, 0, 0, 0, 0, 0, 0, NULL, 'With cases reported in locations around the world, drastic measures are being taken in an effort to stem coronavirus\' spread. Here\'s what travelers should know.<img src=\"http://feeds.feedburner.com/~r/rss/edition_travel/~4/Li-7Aov60Ok\" height=\"1\" width=\"1\" alt=\"\">', NULL, 'https://cdn.cnn.com/cnnnext/dam/assets/200304132746-delta-tarmac-jfk-super-169.jpg', NULL, NULL, NULL, NULL, 27, NULL, 0, NULL, 0, 1, NULL, 'true', 0, 'http://rss.cnn.com/~r/rss/edition_travel/~3/Li-7Aov60Ok/index.html', '2023-01-15 09:01:21', '2023-01-15 03:01:21'),
(162, 2, 'Major cruise lines suspending operations at US ports for 30 days over coronavirus pandemic', 'Major-cruise-lines-suspending-operations-at-US-ports-for-30-days-over-coronavirus-pandemic', 'rss', NULL, 0, 0, 0, 0, 0, 0, 0, NULL, 'More than 50 cruise lines are suspending operations to and from US ports for 30 days due to the \"unprecedented situation\" of the coronavirus pandemic, according to a cruise line trade association.<img src=\"http://feeds.feedburner.com/~r/rss/edition_travel/~4/NEhV1z9pfyA\" height=\"1\" width=\"1\" alt=\"\">', NULL, 'https://cdn.cnn.com/cnnnext/dam/assets/200311161843-carnival-cruise-0307-super-169.jpg', NULL, NULL, NULL, NULL, 27, NULL, 0, NULL, 0, 1, NULL, 'true', 0, 'http://rss.cnn.com/~r/rss/edition_travel/~3/NEhV1z9pfyA/index.html', '2023-01-15 09:01:21', '2023-01-15 03:01:21'),
(163, 2, 'Attractions closed and events canceled amid coronavirus outbreak', 'Attractions-closed-and-events-canceled-amid-coronavirus-outbreak', 'rss', NULL, 0, 0, 0, 0, 0, 0, 0, NULL, 'It started with the shuttering of Shanghai Disney Resort, but it wouldn\'t be long before all of Asia\'s Disney-themed parks closed due to coronavirus concerns.<img src=\"http://feeds.feedburner.com/~r/rss/edition_travel/~4/YmkUHG6cqTg\" height=\"1\" width=\"1\" alt=\"\">', NULL, 'https://cdn.cnn.com/cnnnext/dam/assets/200302122333-louvre-oped-andelman-super-169.jpg', NULL, NULL, NULL, NULL, 27, NULL, 0, NULL, 0, 1, NULL, 'true', 0, 'http://rss.cnn.com/~r/rss/edition_travel/~3/YmkUHG6cqTg/index.html', '2023-01-15 09:01:21', '2023-01-15 03:01:21'),
(164, 2, 'Face masks and rainbows as Holi is celebrated', 'Face-masks-and-rainbows-as-Holi-is-celebrated', 'rss', NULL, 0, 0, 0, 0, 0, 0, 0, NULL, 'The annual Hindu festival of Holi was marked with its usual riot of color across India and South Asia this year, although some participants wore face masks because of coronavirus concerns, and others stayed away altogether.<img src=\"http://feeds.feedburner.com/~r/rss/edition_travel/~4/FrP54Em2k9c\" height=\"1\" width=\"1\" alt=\"\">', NULL, 'https://cdn.cnn.com/cnnnext/dam/assets/200309114616-10-holi-festival-2020-super-169.jpg', NULL, NULL, NULL, NULL, 27, NULL, 0, NULL, 0, 1, NULL, 'true', 0, 'http://rss.cnn.com/~r/rss/edition_travel/~3/FrP54Em2k9c/holi-coronavirus-mask-lon-orig-ah-travel.cnn', '2023-01-15 09:01:21', '2023-01-15 03:01:21'),
(214, 2, 'Lorem ipsum dolor sit amet', 'Lorem-ipsum-dolor-sit-amet', 'Sorted List', 'sort item', 0, 0, 0, 0, 0, 0, 0, 'sort item', '<span style=\"color: rgb(41, 41, 58); font-family: &quot;Open Sans&quot;;\">The annual Hindu festival of Holi was marked with its usual riot of color across India and South Asia this year, although some participants wore face masks because of coronavirus concerns, and others stayed away altogether</span><br>', '1588613071Apacherr310c.jpg', NULL, NULL, NULL, NULL, NULL, 24, NULL, 0, NULL, 0, 1, NULL, 'true', 0, NULL, '2023-01-15 09:01:21', '2023-01-15 03:01:21'),
(218, 2, 'Test', 'Test', 'article', NULL, 0, 0, 0, 0, 0, 0, 0, NULL, '<span style=\"color: rgb(41, 41, 58); font-family: &quot;Open Sans&quot;;\">The annual Hindu festival of Holi was marked with its usual riot of color across India and South Asia this year, although some participants wore face masks because of coronavirus concerns, and others stayed away altogether</span><br>', '15897953280a2dc0c686287bcb11aa7e09aa194769.jpg', NULL, NULL, NULL, NULL, NULL, 20, NULL, 1, '2020-05-30 09:48:34', 0, 1, NULL, 'true', 0, NULL, '2023-01-15 09:01:21', '2023-01-15 03:01:21'),
(255, 2, 'Have you ever had a dream like this?', 'Have-you-ever-had-a-dream-like-this?', 'article', 'Have you ever had a dream like this?', 0, 0, 0, 0, 0, 0, 0, NULL, '<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem.</span><br>', '1601178472PYDjUOnK.jpg', NULL, NULL, NULL, NULL, NULL, 20, 35, 0, NULL, 0, 1, NULL, 'true', 0, NULL, '2023-01-15 09:01:21', '2023-01-15 03:01:21'),
(256, 2, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod', 'eiusmod', 'video', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod', 0, 0, 0, 0, 0, 0, 1, 'dsf', '<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span><br>', '1601178829G7m5Yl1k.jpg', NULL, NULL, '1601178829videoplayback.mp4', NULL, NULL, 20, NULL, 0, NULL, 0, 1, NULL, 'true', 0, NULL, '2023-01-15 09:01:21', '2023-01-15 03:01:21'),
(257, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit', 'Lorem-ipsum-dolor-sit-amet,-consectetur-adipiscing-elit', 'article', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit', 0, 0, 0, 0, 0, 0, 0, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit', '<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit</span><span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit</span><br>', '1601193880dypVL2oW.jpg', NULL, NULL, NULL, NULL, NULL, 1, NULL, 0, NULL, 0, 1, NULL, 'true', 0, NULL, '2023-01-15 09:01:21', '2023-01-15 03:01:21'),
(317, 2, 'FDA won\'t reveal why AstraZeneca vaccine is still on hold in US', 'FDA-won\'t-reveal-why-AstraZeneca-vaccine-is-still-on-hold-in-US', 'rss', NULL, 0, 0, 1, 0, 0, 0, 0, NULL, NULL, NULL, 'https://cdn.cnn.com/cnnnext/dam/assets/200417143153-01-cdc-coronavirus-model-super-169.jpg', NULL, NULL, NULL, NULL, 27, NULL, 0, NULL, 0, 1, NULL, 'true', 0, 'https://cnn.it/30mI74A', '2023-01-15 09:01:21', '2023-01-15 03:01:21'),
(319, 2, 'Japan\'s Tokyo Stock Exchange suffers its worst outage ever', 'Japan\'s-Tokyo-Stock-Exchange-suffers-its-worst-outage-ever', 'rss', NULL, 0, 0, 0, 0, 0, 0, 0, NULL, 'Japan\'s Tokyo Stock Exchange halted all trading Thursday because of a technical glitch.', NULL, 'https://cdn.cnn.com/cnnnext/dam/assets/200930211457-tokyo-stock-exchange-file-super-169.jpg', NULL, NULL, NULL, NULL, 27, NULL, 0, NULL, 0, 1, NULL, 'true', 0, 'https://www.cnn.com/2020/09/30/investing/global-stocks/index.html', '2023-01-15 09:01:21', '2023-01-15 03:01:21'),
(349, 2, 'Chrissy Teigen loses baby after pregnancy complications', 'Chrissy-Teigen-loses-baby-after-pregnancy-complications', 'article', 'Chrissy Teigen loses baby after pregnancy complications, calling it the \'darkest of days\'', 0, 0, 0, 0, 0, 0, 0, 'Chrissy Teigen loses baby after pregnancy complications, calling it the \'darkest of days\'', '<span style=\"color: rgb(0, 0, 0); font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; font-size: 18px;\">গতকাল রাত বলিউডের জন্য একটা বিশেষ বড় তারার ঝলকময় রাত। সেরাতে বলিউডের রথী–মহারথীরা নামী ডিজাইনারদের দিয়ে ডিজাইন করা পোশাক পরে সুন্দর করে সেজে মিলিত হয়েছিলেন ৬৫তম ফিল্মফেয়ার পুরস্কার অনুষ্ঠানে। আকাঙ্ক্ষিত কালো নারীকে (ফিল্মফেয়ারের ট্রফি) ভেবে ভেবে কতই না রাত পার করেছেন তাঁরা। অবশেষে কাদের হাতে ধরা দিল সেই কাঙ্ক্ষিত পুরস্কার, তা দেখে নেওয়া যাক একনজরে</span><br>', '1602307367eKqJdouB.jpg', NULL, NULL, NULL, NULL, NULL, 24, NULL, 0, NULL, 0, 1, NULL, 'true', 0, NULL, '2023-01-15 09:01:21', '2023-01-15 03:01:21'),
(369, 2, 'China is doubling down in the global push for a coronavirus vaccine', 'China-is-doubling-down-in-the-global-push-for-a-coronavirus-vaccine', 'rss', NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 'https://cdn.cnn.com/cnnnext/dam/assets/201002191503-sinovac-coronavirus-vaccine-1002-super-169.jpg', NULL, NULL, NULL, NULL, 27, NULL, 0, NULL, 0, 1, NULL, 'true', 0, 'https://cnn.it/36OW13m', '2023-01-15 09:01:21', '2023-01-15 03:01:21'),
(370, 2, 'Authorities seized 13 tons of human hair entering the US. Here\'s where it comes from', 'Authorities-seized-13-tons-of-human-hair-entering-the-US.-Here\'s-where-it-comes-from', 'rss', NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 27, NULL, 0, NULL, 0, 1, NULL, 'true', 0, 'https://cnn.it/2GyjriW', '2023-01-15 09:01:21', '2023-01-15 03:01:21'),
(371, 2, 'Live updates: Report details failures in pandemic response', 'Live-updates:-Report-details-failures-in-pandemic-response', 'rss', NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 27, NULL, 0, NULL, 0, 1, NULL, 'true', 0, 'https://edition.cnn.com/world/live-news/coronavirus-pandemic-10-10-20-intl/h_2f25f32340cf7e4b02dd33c31831e984', '2023-01-15 09:01:21', '2023-01-15 03:01:21'),
(372, 2, 'New report alleges governments weren\'t prepared for pandemic', 'New-report-alleges-governments-weren\'t-prepared-for-pandemic', 'rss', NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 'https://cdn.cnn.com/cnnnext/dam/assets/201009065713-01-coronavirus-testing-france-0921-super-169.jpg', NULL, NULL, NULL, NULL, 27, NULL, 0, NULL, 0, 1, NULL, 'true', 0, 'https://cnn.it/30RSZHJ', '2023-01-15 09:01:21', '2023-01-15 03:01:21'),
(374, 2, 'Trump says he tested \'totally negative\' for Covid-19', 'Trump-says-he-tested-\'totally-negative\'-for-Covid-19', 'rss', NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 'https://cdn.cnn.com/cnnnext/dam/assets/201010143529-12-donald-trump-white-house-event-1010-super-169.jpg', NULL, NULL, NULL, NULL, 27, NULL, 0, NULL, 0, 1, NULL, 'true', 0, 'https://cnn.it/3nJX9LU', '2023-01-15 09:01:21', '2023-01-15 03:01:21'),
(375, 2, 'In photos: Wildfires burning in the West', 'In-photos:-Wildfires-burning-in-the-West', 'rss', NULL, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, NULL, 'https://cdn.cnn.com/cnnnext/dam/assets/201012002730-01-west-coast-wildfire-1001-super-169.jpg', NULL, NULL, NULL, NULL, 27, NULL, 0, NULL, 0, 1, NULL, 'true', 0, 'https://cnn.it/3jSHDdZ', '2023-01-15 09:01:21', '2023-01-15 03:01:21'),
(376, 2, 'Most people try to avoid Covid-19. But thousands are signing up to be deliberately exposed', 'Most-people-try-to-avoid-Covid-19.-But-thousands-are-signing-up-to-be-deliberately-exposed', 'rss', NULL, 0, 0, 0, 0, 0, 0, 0, NULL, 'As most of us obsess with avoiding Covid-19 at all costs, a rapidly growing group of people around the world say they are prepared to deliberately take on the virus.', NULL, 'https://cdn.cnn.com/cnnnext/dam/assets/201002171311-08-covid-volunteers-split-super-169.jpg', NULL, NULL, NULL, NULL, 27, NULL, 0, NULL, 0, 1, NULL, 'true', 0, 'https://www.cnn.com/2020/10/12/health/coronavirus-human-challenge-trials-gbr-intl/index.html', '2023-01-15 09:01:21', '2023-01-15 03:01:21'),
(377, 2, 'North Cyprus reopens \'ghost town\' beach resort, sparking international criticism', 'North-Cyprus-reopens-\'ghost-town\'-beach-resort,-sparking-international-criticism', 'rss', NULL, 0, 0, 1, 0, 0, 0, 0, NULL, 'Northern Cyprus has reopened part of the beachfront Varosha resort, which had been abandoned since Turkey invaded the Mediterranean island decades ago.<img src=\"http://feeds.feedburner.com/~r/rss/edition_travel/~4/yPMsEemqwhU\" height=\"1\" width=\"1\" alt=\"\">\n', NULL, 'https://cdn.cnn.com/cnnnext/dam/assets/201008130304-01-varosha-1006-super-169.jpg', NULL, NULL, NULL, NULL, 27, NULL, 0, NULL, 0, 1, NULL, 'true', 0, 'http://rss.cnn.com/~r/rss/edition_travel/~3/yPMsEemqwhU/index.html', '2023-01-15 09:01:21', '2023-01-15 03:01:21'),
(378, 2, 'The American man who became a porter on Everest', 'The-American-man-who-became-a-porter-on-Everest', 'rss', NULL, 0, 1, 0, 0, 0, 0, 0, NULL, 'After teaching himself Nepalese, adventurer Nate Menninger took on the challenge of becoming one of the first non-native porters on Everest and documented the experience on film.<img src=\"http://feeds.feedburner.com/~r/rss/edition_travel/~4/U68WwB7XEV8\" height=\"1\" width=\"1\" alt=\"\">\n', NULL, 'https://cdn.cnn.com/cnnnext/dam/assets/201006112932-everest-porter-new-7-5-super-169.jpg', NULL, NULL, NULL, NULL, 27, NULL, 0, NULL, 0, 1, NULL, 'true', 0, 'http://rss.cnn.com/~r/rss/edition_travel/~3/U68WwB7XEV8/index.html', '2023-01-15 09:01:21', '2023-01-15 03:01:21'),
(392, 2, 'trivia title', 'trivia-title', 'Trivia Quiz', 'trivia', 0, 0, 0, 0, 0, 0, 0, 'trivia', '<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</span><br>', '1603773757pjUIZnE9.jpg', NULL, NULL, NULL, NULL, NULL, 44, NULL, 0, NULL, 0, 1, NULL, 'true', 0, NULL, '2023-01-15 09:01:21', '2023-01-15 03:01:21'),
(393, 2, 'sort item', 'sort-item', 'Sorted List', 'sort item', 0, 0, 0, 0, 0, 0, 0, 'sort', '<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur</span><br>', '1603774432Qx3wfgKc.jpg', NULL, NULL, NULL, NULL, NULL, 24, NULL, 0, NULL, 0, 1, NULL, 'true', 0, NULL, '2023-01-15 09:01:21', '2023-01-15 03:01:21'),
(394, 2, 'personality title', 'personality-title', 'Personality Quiz', 'personality title', 0, 0, 0, 0, 0, 0, 0, 'personality title', '<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem</span><br>', '1603774741VmnCHMkU.jpg', NULL, NULL, NULL, NULL, NULL, 44, NULL, 0, NULL, 0, 1, NULL, 'true', 0, NULL, '2023-01-15 09:01:21', '2023-01-15 03:01:21'),
(396, 1, 'Japan mulls ‘China exit’ for 87 manufacturing projects', 'Japan-mulls-‘China-exit’-for-87-manufacturing-projects', 'article', 'japan', 0, 0, 0, 0, 0, 0, 0, 'japan, mulls, projects', '<p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">Of the companies, 30 will shift to Southeast Asia. This includes: Hoya Corporation, which will produce hard-drive parts in Vietnam and Laos; Sumitomo Rubber Industries, which will manufacture nitrile rubber gloves in Malaysia; and Shin-Etsu Chemical, which will shift its rare-earth magnet production to Vietnam, among others.</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">The rest 57 projects will move to Japan for their operations.</p><div class=\"mobile-adv-in-body pull-left pad-left-right-big gero-left pad-bottom-small\" style=\"float: left; padding-top: 0px; padding-right: 24px; padding-bottom: 15px; color: rgb(0, 0, 0); font-size: 16px; padding-left: 0px !important;\"></div><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">Iris Ohyama, which currently produces face masks at Chinese plants in Liaoning Province and west of Shanghai, will shift its production to its factory in Miyagi Prefecture in northern Japan.</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">With the help of subsidies, the company will begin producing face masks at its Kakuda factory in its home base in Miyagi Prefecture. All material will be prepared locally, independent of overseas suppliers.</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">Companies which are eligible for the subsidy also include producers of alcohol-based sanitiser, aviation parts, auto parts, fertiliser, medicine and paper products.</p>', '1604989416a8CKIAb5.jpg', NULL, NULL, NULL, NULL, NULL, 4, 48, 0, NULL, 0, 1, NULL, 'true', 0, NULL, '2023-01-15 09:01:21', '2023-01-15 03:01:21'),
(397, 1, 'Alibaba\'s Lazada appoints Chun Li as new CEO', 'Alibaba\'s-Lazada-appoints-Chun-Li-as-new-CEO', 'article', 'Alibaba\'s Lazada appoints Chun Li as new CEO', 0, 0, 0, 0, 1, 0, 0, 'alibabas, chun li, ceo', '<p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">Poignant had himself replaced Lucy Peng, an Alibaba co-founder, who stepped down as CEO after nine months in 2018 although she remains executive chairwoman. Lazada said Poignant will now become special assistant to Alibaba Group Chairman and CEO Daniel Zheng.</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">Alibaba has long had struggles with managing Lazada, a company it owns 90% of after investing $3 billion since 2016, with employees highlighting a long-running culture clash with management from China.</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">According to VentureCap Insights, Lazada received a $1.2 billion injunction from Alibaba this year. It was not clear what the injunction related to and Lazada did not immediately respond to requests for comment.</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">Three sources told Reuters Lazada is also examining whether to rebrand or shut down LazMall, its take on Alibaba\'s Tmall marketplace.</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">James Sullivan, who headed Lazada Logistics, would also step down, two people said. Sullivan was not immediately reachable for comment, but his LinkedIn profile indicated he left Lazada in April.</p>', '1604989545PhNcw5me.jpg', NULL, NULL, NULL, NULL, NULL, 4, 48, 0, NULL, 0, 1, NULL, 'true', 0, NULL, '2023-01-15 09:01:21', '2023-01-15 03:01:21'),
(398, 1, 'Economists eye silver lining in India’s rising rural inflation numbers', 'Economists-eye-silver-lining-in-India’s-rising-rural-inflation-numbers', 'article', 'Economists eye silver lining in India’s rising rural inflation numbers', 0, 0, 0, 0, 1, 0, 0, 'economics, numbers, eye, silver', '<p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">India\'s rural inflation rate surged faster than urban inflation for the first time in 19 months in January, and economists are optimistic that signals something the country desperately needs - a revival in demand in the rural economy.</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">Around two-thirds of India\'s population depends on the rural sector with agriculture accounting for near 15 per cent of India\'s $2.8 trillion economy, and rising inflation suggests pricing power is returning to the hands of the farmers, say economists.</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">\"This augurs well for farmers\' cash flows in the coming months. I expect early signs of demand revival to emerge from the rural belts, going ahead,\" said Rupa Rege Nitsure, chief economist at L&amp;T Financial Holdings.</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">Rural inflation rose to 7.73 per cent in January, higher than the urban inflation rate - which was 7.39 per cent - for the first time since June 2018. The latest data, released on Wednesday, also showed that overall inflation was 7.59 per cent - its highest level in more than six years.</p>', '1604989662bA5U5N6y.jpg', NULL, NULL, NULL, NULL, NULL, 4, 48, 0, NULL, 0, 1, NULL, 'true', 0, NULL, '2023-01-15 09:01:21', '2023-01-15 03:01:21');
INSERT INTO `posts` (`id`, `language_id`, `title`, `slug`, `post_type`, `meta_tag`, `show_right_column`, `is_feature`, `is_slider`, `slider_left`, `slider_right`, `is_trending`, `is_videoGallery`, `tags`, `description`, `image_big`, `rss_image`, `image_small`, `video`, `embed_video`, `audio`, `category_id`, `subcategories_id`, `schedule_post`, `schedule_post_date`, `is_pending`, `admin_id`, `user_id`, `status`, `is_draft`, `rss_link`, `created_at`, `updated_at`) VALUES
(399, 1, 'Commerce ministry asks trade bodies to ensure face mask use', 'Commerce-ministry-asks-trade-bodies-to-ensure-face-mask-use', 'article', 'Commerce ministry asks trade bodies to ensure face mask use', 0, 0, 1, 0, 0, 0, 0, 'commerce, trade, face, mask', '<p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">In many cases, a lackadaisical attitude is being observed in the use of masks. Instructions in this regard have also been issued by the cabinet division.</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">In this context, the commerce ministry requested to take necessary measures to ensure the mask use for all officers and employees working in commercial organisations, institutions, affiliated associations, district and upazila chambers or joint chambers of commerce and industries, associations and foundations.</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">The ministry has issued instructions to the concerned institutions last week, the statement added.</p><div class=\"mobile-adv-in-body pull-left pad-left-right-big gero-left pad-bottom-small\" style=\"float: left; padding-top: 0px; padding-right: 24px; padding-bottom: 15px; color: rgb(0, 0, 0); font-size: 16px; padding-left: 0px !important;\"></div><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">After the cases of Covid-19 surged in several countries recently, Prime Minister Sheikh Hasina urged all to follow health guidelines and use face-masks in public places and gatherings last month.</p>', '1604989754jjNMdyAQ.jpg', NULL, NULL, NULL, NULL, NULL, 4, 48, 0, NULL, 0, 1, NULL, 'true', 0, NULL, '2023-01-15 09:01:21', '2023-01-15 03:01:21'),
(400, 1, 'Banks to continue suspended ATM operations for 6-8hrs at night', 'Banks-to-continue-suspended-ATM-operations-for-6-8hrs-at-night', 'article', 'Banks to continue suspended ATM operations for 6-8hrs at night', 0, 0, 0, 0, 0, 0, 0, 'banks, atm, night', '<p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">Sources said some banks keep their ATM booths closed for eight hours from 11:00pm to 7:00am while some keep it suspended for six hours from 12:00am to avert any fraud.</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">According to official sources, the Bangladesh Bank alerted all commercial banks in a circular on August 27 about a possible threat of hacking in the banking transactions through ATM booth, credit cards and other modes of online banking.</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">\"The alert was issued following global media reports that a North Korean hacker group is trying to hack different banks in various countries,\" said a Bangladesh Bank official.&nbsp;</p><div class=\"mobile-adv-in-body pull-left pad-left-right-big gero-left pad-bottom-small\" style=\"float: left; padding-top: 0px; padding-right: 24px; padding-bottom: 15px; color: rgb(0, 0, 0); font-size: 16px; padding-left: 0px !important;\"></div><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">Ekram Kabir, executive vice president (communications) of Brac Bank, said his bank keeps the ATM booth transactions suspended from 12:00am to 6:00am following the central bank\'s alert.</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">He said every debit card holder of the bank was notified about the move.</p>', '1604989890mvQG7b0b.jpg', NULL, NULL, NULL, NULL, NULL, 4, 49, 0, NULL, 0, 1, NULL, 'true', 0, NULL, '2023-01-15 09:01:21', '2023-01-15 03:01:21'),
(401, 1, 'City Bank joins growing list of lenders issuing international debit card', 'City-Bank-joins-growing-list-of-lenders-issuing-international-debit-card', 'article', 'City Bank joins growing list of lenders issuing international debit card', 0, 0, 0, 0, 0, 0, 0, 'city, bank, debit card, international', '<p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">Debit cards are the happy medium between credit cards and cash -- one gets the convenience of carrying a card without the risk of running up debt as they limit spending to what is available in one\'s current account.</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">And not only that, one simply does not have to worry about the drag of late fees, annual fees and interest charge and the possibility of theft.</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">If the card is reported missing right after the incident, the bank will straightaway cancel it so nobody would be able to use the card.</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">Having a debit card in one\'s pocket also means one does not have to stand in a queue in a bank branch to withdraw cash; he/she can simply stop by the nearest automated teller machine and take out as much as need.</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">And while at the cashpoint, one can get a mini statement or do a balance inquiry.</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">In Bangladesh, almost all banks issue debit cards, mostly of Visa and MasterCard, meaning they come with most of the perks of owning a credit card.</p>', '1604989973RC8qnbIc.jpg', NULL, NULL, NULL, NULL, NULL, 4, 49, 0, NULL, 0, 1, NULL, 'true', 0, NULL, '2023-01-15 09:01:21', '2023-01-15 03:01:21'),
(402, 1, 'Block prints for all seasons', 'Block-prints-for-all-seasons', 'article', 'Block prints for all seasons', 0, 0, 0, 0, 1, 0, 0, 'block, prints', '<p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">If you have never understood what the fuss was all about, try block prints on khadi. That too, on a bright and clear Baishakhi afternoon, and you will immediately realise the grounds.</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">And Warah, a quaint boutique shop in the heart of the city, has boundless options.However, Warah\'s blocks are different; they endure through all types of weather.</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">Rumana Chowdhury, owner and head designer of the boutique house, assured of their quality, saying, \"The colours used for our blocks are of the highest quality, and we also use khadi material as foundation fabric. And everybody who has worn khadi at least once in their lifetime knows how comfortable and long-lasting it can be.\"</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">Once you are inside the store, you get to see many racks filled with blocks in all sizes and shapes. But one thing is surely common in the quaint outlet — the well-regarded khadi used as base material for most designs.</p>', '1604991271J910P6fN.jpg', NULL, NULL, NULL, NULL, NULL, 3, 50, 0, NULL, 0, 1, NULL, 'true', 0, NULL, '2023-01-15 09:01:21', '2023-01-15 03:01:21'),
(403, 1, 'Managing menopause through proper dietary', 'Managing-menopause-through-proper-dietary', 'article', 'Managing menopause through proper dietary', 0, 0, 0, 0, 1, 0, 0, 'proper', '<p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\"><span style=\"font-weight: 800;\">What happens during menopause?</span></p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">The female hormone oestrogen begins to decline during perimenopause, which usually begins in a woman\'s 40s. These hormonal changes increase the rate at which females store visceral fat, which surrounds the vital organs deep within the abdomen, and precipitate changes in insulin sensitivity and glucose metabolism, putting them at increased risk of cardiovascular disease and diabetes.</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">There are also other physical changes including higher blood pressure, changes in cholesterol levels (increasing risk of heart disease), and losing calcium from bones (raising the risk of osteoporosis), weight gain, hot flushes, night sweats, irritability, poor concentration, more frequent headaches, and joint pains. These symptoms can last for just a few months to several years. The range of symptoms and how severe they are, is different for each woman.</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">The decline in oestrogen and progesterone, which leads to hot flushes in about 75 to 85 percent of women, contributes to insomnia. Hot flushes can disrupt sleep because body temperature dramatically rises, leading to night sweats that cause sudden waking. Most women experience hot flashes for about one year, but some experience them for up to five years.</p>', '1604991346jNpZWEwv.jpg', NULL, NULL, NULL, NULL, NULL, 3, 50, 0, NULL, 0, 1, NULL, 'true', 0, NULL, '2023-01-15 09:01:21', '2023-01-15 03:01:21'),
(404, 1, 'Bangabandhu and I', 'Bangabandhu-and-I', 'article', 'Bangabandhu and I', 0, 0, 1, 0, 0, 0, 0, 'Bangabandhu', '<p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\"><em>Today marks the birth centenary of our Father of the Nation, Bangabandhu Sheikh Mujibur Rahman -- the visionary who made us dream of an independent Bangladesh, the powerhouse of charisma who ignited hope amongst the oppressed Bengalis, the legend whom the nation shall forever remain indebted to.&nbsp;</em></p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\"><em>On this extraordinary occasion of his birth centenary, Star Lifestyle spoke to Shahabuddin Ahmed, artist extraordinaire, who frequently portrays Bangabandhu on his canvas.</em></p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\"><em>The highly celebrated painter is a living legend in his own right. Prestigious accolades like Independence Day Award (highest state award given by the Bangladeshi government), Knight in the Order of Fine Arts and Humanities (awarded by the French government), and recognition as one of the \'50 Master Painters of Contemporary Art\' (enlisted by the Olympiad of Arts) speak volumes about his works.&nbsp;</em></p>', '16049914251KIm6AtR.jpg', NULL, NULL, NULL, NULL, NULL, 3, 50, 0, NULL, 0, 1, NULL, 'true', 0, NULL, '2023-01-15 09:01:21', '2023-01-15 03:01:21'),
(405, 1, 'The bard’s lost muse', 'The-bard’s-lost-muse', 'article', 'The bard’s lost muse', 0, 0, 0, 0, 0, 0, 0, 'The bard’s lost muse', '<p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">Kadambari came into my life only a few years back on a dull wintry afternoon of 2015. I was looking for a good Bengali movie and there they were, Konkona Sen Sharma and Parambrata Chatterjee, on the shelves of the video store, guised as Kadambari and Tagore.</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">Did not expect much from the movie at the beginning, as it was just an option to while away the hours.&nbsp; But somehow the movie affected me so much that even today I keep looking for Kadambari, Jorasanko, and Rabindranath at every random book house I visit.</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">This transparent soul from the 19th century somehow speaks more to me about love, affection, loss, and desperation than any other renowned character that I have leafed through, over the years.</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">Some say, her life was not as illustrious as it is portrayed in the movies or the books, while many others deny the fabled concoctions of a narrative between her and Rabindranath.</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">I merely shy away from the controversies because it really does not matter to me!&nbsp; What matters is that the loneliness she felt in her heart was real, her isolation undeniable, able to trump any unrequited love story in the first stance. At least in my eyes, it is so.</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">Based on accounts, Kadambari was only 10 years old when she entered the Tagore residence as the wife of Jyotirindranath Tagore, and her brother in law Rabindranath was two years younger to her.</p>', '1604991514MJLN6nFi.jpg', NULL, NULL, NULL, NULL, NULL, 3, 50, 0, NULL, 0, 1, NULL, 'true', 0, NULL, '2023-01-15 09:01:21', '2023-01-15 03:01:21'),
(406, 1, 'Four easy-peasy chicken recipes', 'Four-easy-peasy-chicken-recipes', 'article', 'Four easy-peasy chicken recipes', 0, 0, 1, 0, 0, 0, 0, 'Four easy-peasy chicken recipes', '<p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">We all start somewhere when it comes to cooking. For some, their very first attempt brings out delectable results, while for others, it can be a total disaster. Whatever the case may be, it is always a memorable experience. We are all amateurs at the beginning and pick things up as we go along.</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">These four chicken recipes are extremely easy to put together, yet with promising results. You will be surprised at how such minimal effort brings about food that is finger-licking good. These are perfect if you are trying your hand at cooking or want to make a quick meal.</p>', '1604991595qrJGJk8u.jpg', NULL, NULL, NULL, NULL, NULL, 3, 51, 0, NULL, 0, 1, NULL, 'true', 0, NULL, '2023-01-15 09:01:21', '2023-01-15 03:01:21'),
(407, 1, 'Try your hand at punjabi cuisine', 'Try-your-hand-at-punjabi-cuisine', 'article', 'Try your hand at punjabi cuisine', 0, 0, 0, 0, 0, 0, 0, 'Try your hand at punjabi cuisine', '<p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\"><span style=\"font-weight: 800;\">Ingredients</span></p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">500g fish fillets (any river fish)</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">50g ginger-garlic paste</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">10g red chilli powder</p><div class=\"mobile-adv-in-body pull-left pad-left-right-big gero-left pad-bottom-small\" style=\"float: left; padding-top: 0px; padding-right: 24px; padding-bottom: 15px; color: rgb(0, 0, 0); font-size: 16px; padding-left: 0px !important;\"></div><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">20ml lemon juice</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">5g ajwain</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">200g gram flour</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">2 eggs</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">100g yoghurt</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">Salt to taste</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">Oil for deep frying</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\"><span style=\"font-weight: 800;\">Method</span></p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">Clean, wash, and cut the fish into fillets. Apply salt, lime juice, ginger-garlic paste and red chilli powder. Make a batter of gram flour, yoghurt, eggs, ajwain, salt, and water. Marinate the fish in the batter for 10 minutes. Heat oil in a pan and deep fry the fish until lightly brown and crisp. Sprinkle with chaat masala, lemon wedges and serve hot.</p>', '1604991663RRA0uytY.jpg', NULL, NULL, NULL, NULL, NULL, 3, 51, 0, NULL, 0, 1, NULL, 'true', 0, NULL, '2023-01-15 09:01:21', '2023-01-15 03:01:21'),
(408, 1, 'The grand Eid feast', 'The-grand-Eid-feast', 'article', 'The grand Eid feast', 0, 0, 0, 0, 0, 0, 0, 'The grand Eid feast', '<h2 style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 18px; font-weight: 800; line-height: 24px; color: rgb(0, 0, 0);\">MUSHROOM AND COCONUT MASALA</h2><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">A common dish from Kerala and easy to prepare. Perfect for vegans. It is a rich, creamy dish that goes great with polao or parathas.</p><h2 style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 18px; font-weight: 800; line-height: 24px; color: rgb(0, 0, 0);\">Ingredients</h2><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\"><em>For the coconut masala —</em></p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">2-3 tbsp coconut oil</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">1 cup grated coconut</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">1½ tsp coriander powder</p><div class=\"mobile-adv-in-body pull-left pad-left-right-big gero-left pad-bottom-small\" style=\"float: left; padding-top: 0px; padding-right: 24px; padding-bottom: 15px; color: rgb(0, 0, 0); font-size: 16px; padding-left: 0px !important;\"></div><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">2 tbsp red chilli powder</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">¼ tsp turmeric powder</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">1 tsp cumin powder</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">1 tsp fenugreek powder</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\"><em>For the gravy —</em></p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">¼ cup water</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">1 tsp tamarind</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">2 tbsp coconut oil&nbsp;</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">¼ cup onions, chopped</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">1 tsp ginger, chopped</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">1 sprig curry leaves</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">½kg mushroom, halved</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">1½ tsp salt&nbsp;</p><h2 style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 18px; font-weight: 800; line-height: 24px; color: rgb(0, 0, 0);\">Method</h2><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">Soak the tamarind in a cup of warm water and set aside. Heat 2-3 tablespoons of coconut oil in a frying pan over medium heat. Fry the grated coconut until light brown and reduce the heat to low. Add the spices and fry until well combined. Set aside to cool. Once the coconut masala has cooled, grind it into a paste with a mortar and pestle, or food processor.</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">Over low heat, place a medium frying pan and heat the coconut oil. Once the oil is hot, sauté the onion and ginger until the onion is translucent. Add the coconut masala paste and keep stirring on low heat.</p>', '1604991738GymKZBYR.jpg', NULL, NULL, NULL, NULL, NULL, 3, 51, 0, NULL, 0, 1, NULL, 'true', 0, NULL, '2023-01-15 09:01:21', '2023-01-15 03:01:21'),
(409, 1, 'Dina’s Table', 'Dina’s-Table', 'article', 'Dina’s Table', 0, 0, 0, 0, 0, 0, 0, 'Dina’s Table', '<p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">Dhaka is famous for its Mughal rooted dishes, and the famous jali kebab has become a firm favourite across the country. Ramadan is meant to be a time of restraint, but dusk inevitably brings forth the feasting, and my table is never complete without a fried item or two! I’ve diverted from the classic red meat variety, and opted for chicken mince, which is equally delicious. Flattened kebabs, laced in a jali — or net coating of whisked egg, are dropped into hot oil, and emerge minutes later; crispy, golden brown and ready to be devoured. I like mine simply with a squeeze of lemon juice, but you can also enjoy them with a dipping sauce of your choice.</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\"><span style=\"font-weight: 800;\">Chicken Jali Kebab</span></p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\"><span style=\"font-weight: 800;\">Ingredients</span></p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\"><span style=\"font-weight: 800;\">Serving: 16</span></p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\"><em>For the kebab mix —</em></p><div class=\"mobile-adv-in-body pull-left pad-left-right-big gero-left pad-bottom-small\" style=\"float: left; padding-top: 0px; padding-right: 24px; padding-bottom: 15px; color: rgb(0, 0, 0); font-size: 16px; padding-left: 0px !important;\"></div><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">500g chicken mince</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">1 tsp salt</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">2 cloves garlic</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">½ inch piece ginger</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">1 small onion</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">1 tsp chilli powder</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">¼ tsp nutmeg</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">1/8 tsp mace</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">1 tsp garam masala</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">1 tsp cumin</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">1 tsp coriander</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">4 green chillies</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">2 tbsp coriander, chopped</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">1 tbs mint, chopped</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">1 medium egg</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">60g fresh breadcrumbs (2 slices of bread)</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\"><em>For the coating —</em></p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">6 plain biscuits (Rich Tea, or Marie Biscuits)</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">2 eggs</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\"><span style=\"font-weight: 800;\">Method</span></p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">Blend the garlic, ginger, and onion into a smooth paste in a blender, or grate finely and add to a mixing bowl. Add the rest of the kebab, and mix well with the ingredients. Divide into 16 balls and flatten each between your palms into approximately three inch patties. Grind or crush the biscuits to fine crumbs and place in a shallow bowl. When you are ready to cook, lightly coat the kebabs in the biscuit crumbs and set aside on a plate. Heat about an inch of oil in a large frying pan on medium-high heat. Whisk the two eggs and dip each kabab in the egg so that both sides are coated and place carefully into the hot oil. To test the seasoning, drop a small bit of mixture into the hot oil and cook for a couple of minutes and adjust the salt if required. Now add four or five kebabs into the oil and fry for about two minutes on each side, until golden brown. Drain with a slotted spoon onto kitchen paper and serve hot with lemon wedges, or a sauce of your choice.</p>', '1604991819i6phy6FT.jpg', NULL, NULL, NULL, NULL, NULL, 3, 51, 0, NULL, 0, 1, NULL, 'true', 0, NULL, '2023-01-15 09:01:21', '2023-01-15 03:01:21'),
(410, 1, 'Photos show Italy deserted in new curfew', 'Photos-show-Italy-deserted-in-new-curfew', 'rss', NULL, 0, 0, 0, 0, 0, 0, 0, NULL, 'New Italy restrictions, which see restaurants and bars closed at 6pm, and entails a night-time curfew across the country, have left its iconic spaces empty<img src=\"http://feeds.feedburner.com/~r/rss/edition_travel/~4/lKBEgWfeC8M\" height=\"1\" width=\"1\" alt=\"\">', NULL, 'https://cdn.cnn.com/cnnnext/dam/assets/201107181449-italy-venice-palazzo-ducale-empty-super-169.jpg', NULL, NULL, NULL, NULL, 26, NULL, 0, NULL, 0, 1, NULL, 'true', 0, 'http://rss.cnn.com/~r/rss/edition_travel/~3/lKBEgWfeC8M/index.html', '2023-01-15 09:01:21', '2023-01-15 03:01:21'),
(411, 1, 'Emily Harrington becomes the fourth woman to free-climb El Capitan in under 24 hours', 'Emily-Harrington-becomes-the-fourth-woman-to-free-climb-El-Capitan-in-under-24-hours', 'rss', NULL, 0, 0, 0, 0, 0, 0, 0, NULL, 'Only three people -- all men -- had ever free-climbed the Golden Gate route on El Capitan in Yosemite National Park in under 24 hours. But now a woman is the fourth.<img src=\"http://feeds.feedburner.com/~r/rss/edition_travel/~4/PQgeq22drLc\" height=\"1\" width=\"1\" alt=\"\">', NULL, 'https://cdn.cnn.com/cnnnext/dam/assets/201108173839-el-capitan-yosemite-restricted-super-169.jpg', NULL, NULL, NULL, NULL, 26, NULL, 0, NULL, 0, 1, NULL, 'true', 0, 'http://rss.cnn.com/~r/rss/edition_travel/~3/PQgeq22drLc/index.html', '2023-01-15 09:01:21', '2023-01-15 03:01:21'),
(412, 1, 'The only place in the world experiencing overtourism right now', 'The-only-place-in-the-world-experiencing-overtourism-right-now', 'rss', NULL, 0, 0, 0, 0, 1, 0, 0, NULL, 'The coronavirus pandemic has decimated the travel industry, as hotels, restaurants and airlines in destinations around the world struggle to survive. But there\'s one place on the planet where there are too many tourists right now: the Chatham Islands.<img src=\"http://feeds.feedburner.com/~r/rss/edition_travel/~4/uLuH9fVGrLs\" height=\"1\" width=\"1\" alt=\"\">', NULL, 'https://cdn.cnn.com/cnnnext/dam/assets/201103172207-03-chatham-islands-new-zealand-super-169.jpg', NULL, NULL, NULL, NULL, 26, NULL, 0, NULL, 0, 1, NULL, 'true', 0, 'http://rss.cnn.com/~r/rss/edition_travel/~3/uLuH9fVGrLs/index.html', '2023-01-15 09:01:21', '2023-01-15 03:01:21'),
(413, 1, 'Which Christmas markets are still going ahead?', 'Which-Christmas-markets-are-still-going-ahead?', 'rss', NULL, 0, 0, 0, 0, 0, 0, 0, NULL, 'From Austria\'s Viennese Dream Christmas Market to the Winter Village in New York, a rundown of the Christmas markets that will be going ahead in 2020, and those that have been called off.<img src=\"http://feeds.feedburner.com/~r/rss/edition_travel/~4/VZqE5UrExy0\" height=\"1\" width=\"1\" alt=\"\">', NULL, 'https://cdn.cnn.com/cnnnext/dam/assets/201030172308-16-top-christmas-markets-austria-super-169.jpg', NULL, NULL, NULL, NULL, 26, NULL, 0, NULL, 0, 1, NULL, 'true', 0, 'http://rss.cnn.com/~r/rss/edition_travel/~3/VZqE5UrExy0/index.html', '2023-01-15 09:01:21', '2023-01-15 03:01:21'),
(414, 1, 'Farewell to the airport that wouldn\'t die', 'Farewell-to-the-airport-that-wouldn\'t-die', 'rss', NULL, 0, 0, 1, 0, 0, 0, 0, NULL, 'Berlin\'s weary Tegel Airport should\'ve closed years ago, but despite being cramped and outdated, it survived repeated attempts to kill it off. Now, as the end finally nears, the city prepares to bid an affectionate farewell.<img src=\"http://feeds.feedburner.com/~r/rss/edition_travel/~4/A-L_AawIWPA\" height=\"1\" width=\"1\" alt=\"\">', NULL, 'https://cdn.cnn.com/cnnnext/dam/assets/201023171438-berlin-tegel-airport-11-super-169.jpg', NULL, NULL, NULL, NULL, 26, NULL, 0, NULL, 0, 1, NULL, 'true', 0, 'http://rss.cnn.com/~r/rss/edition_travel/~3/A-L_AawIWPA/index.html', '2023-01-15 09:01:21', '2023-01-15 03:01:21'),
(415, 1, 'Six 747s flew into a Dutch airport -- but then couldn\'t leave', 'Six-747s-flew-into-a-Dutch-airport----but-then-couldn\'t-leave', 'rss', NULL, 0, 0, 0, 0, 0, 0, 0, NULL, 'Six Lufthansa Boeing 747-400s landed at Twente Airport, a small Dutch air hub in the northeast of the country, back in the summer -- but then were stranded for months.<img src=\"http://feeds.feedburner.com/~r/rss/edition_travel/~4/mT5dj8CPxg0\" height=\"1\" width=\"1\" alt=\"\">', NULL, 'https://cdn.cnn.com/cnnnext/dam/assets/201102112648-lufthansa-twente-airport-super-169.jpg', NULL, NULL, NULL, NULL, 26, NULL, 0, NULL, 0, 1, NULL, 'true', 0, 'http://rss.cnn.com/~r/rss/edition_travel/~3/mT5dj8CPxg0/index.html', '2023-01-15 09:01:21', '2023-01-15 03:01:21'),
(416, 1, 'Halloween goes virtual in Japan amid pandemic', 'Halloween-goes-virtual-in-Japan-amid-pandemic', 'rss', NULL, 0, 0, 0, 0, 0, 0, 0, NULL, 'This Halloween, Japan closed popular landmarks and party spots due to Covid-19, but the country\'s tourism bureau offered citizens exciting virtual alternatives.<img src=\"http://feeds.feedburner.com/~r/rss/edition_travel/~4/of9gMfxL9cM\" height=\"1\" width=\"1\" alt=\"\">', NULL, 'https://cdn.cnn.com/cnnnext/dam/assets/201030190105-shibuya-crosswalk-japan-virtual-halloween-super-169.jpg', NULL, NULL, NULL, NULL, 26, NULL, 0, NULL, 0, 1, NULL, 'true', 0, 'http://rss.cnn.com/~r/rss/edition_travel/~3/of9gMfxL9cM/shibuya-crosswalk-tokyo-japan-virtual-halloween-orig-mm.cnn', '2023-01-15 09:01:21', '2023-01-15 03:01:21'),
(418, 1, 'The modern-day language barriers', 'The-modern-day-language-barriers', 'article', 'The modern-day language barriers', 0, 0, 0, 0, 0, 0, 0, 'The modern-day language barriers', '<p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">With thousands of children exposed to an unhealthy amount of screen time, most are suffering from unwarranted cases of depression, language distortion, aggressive behaviour, and even developing harmful personalities — those that lack empathy and social intelligence.</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">Musammat Sharmila Khan, a working lady and a mother of three, already has a lot on her plate. She finds it even more taxing to find individual time for all her children on a daily basis and also go through the household chores at the same time. \"I sometimes think gadgets are the ultimate saviour. If it weren\'t for these miraculous smart gadgets, I wouldn\'t be able to keep my sanity intact,\'\' Khan confessed.</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">However, a deeper probe reveals problems within Khan\'s home — her youngest is too dependent on the internet and has to listen to nursery rhymes during every meal; the middle child is no different, a 10-year-old boy who prefers to play online games rather than socialise with neighbourhood children over a game of football; and the eldest, a teenager who wakes up late in the morning because he loves listening to music on his phone all night. The teenager also gets upset at the slightest trigger that attempts to break his unhealthy cycle of everyday life.</p>', '1605758586JIrOKJk0.jpg', NULL, NULL, NULL, NULL, NULL, 3, 50, 0, NULL, 0, 1, NULL, 'true', 0, NULL, '2023-01-15 09:01:21', '2023-01-15 03:01:21'),
(419, 1, 'The artist’s impediments', 'The-artist’s-impediments', 'article', 'The artist’s impediments', 0, 0, 0, 0, 0, 0, 0, 'The artist’s impediments', '<p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">Today’s young artists face their share of obstacles and struggles, which make their journey in the creative world rather unique. Starting from a lack of support to facing social backlash, artists nowadays are working hard to leave a footprint. It is through social media platforms, a boon of this generation, that artists are now able to share their work with a larger audience, be it to create a movement or to simply express themselves. However, this exposure did not come to them easily nor is it easy for them to live out their passion<br></p>', '1605758755ykQzIEXl.jpg', NULL, NULL, NULL, NULL, NULL, 3, 50, 0, NULL, 0, 1, NULL, 'true', 0, NULL, '2023-01-15 09:01:21', '2023-01-15 03:01:21'),
(420, 1, 'Eid-Ul-Azha Recipes', 'Eid-Ul-Azha Recipes', 'article', 'Eid-Ul-Azha Recipes', 0, 0, 0, 0, 0, 0, 0, 'The artist’s impediments', '<p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\"><span style=\"font-weight: 800;\">KARAHI KEBAB&nbsp;</span><br></p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\"><span style=\"font-weight: 800;\">Ingredients</span></p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">½ kg beef mince</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">2 chopped onions</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">5-6 green chillies</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">½ cup fresh coriander</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">½ cup mint leaves</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">1 egg</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">1 tbsp cumin powder</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">1 tbsp roasted and crushed coriander</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">1 tsp red chilli powder</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">1 tsp garam masala powder</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">1 tbsp ginger garlic paste</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">Salt to taste</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">For gravy —</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">1 chopped onion</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">2-3 tomatoes, puréed</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">1 tsp cumin powder</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">½ tbsp ginger-garlic paste</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">½ tsp red chilli powder</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">½ tsp turmeric powder</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">½ tsp garam masala powder</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">Salt to taste</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\"><span style=\"font-weight: 800;\">Method</span></p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">In a blender, add green chillies, onions, coriander, and mint; grind them well. Take beef mince in a bowl, add green chillies mixture to it and mix. Now add egg, crushed and roasted coriander, red chilli powder, ginger garlic paste, garam masala and salt. Mix well until completely combined. Shape kebabs out of this mixture and fry for 3-4 minutes. For gravy, heat oil in a pan. Add onions, ginger-garlic paste, tomato purée, red chilli powder, turmeric powder, garam masala powder, salt and mix well. Add water to the pan and bring it to boil. Add fried kebabs to this gravy and let it cook for 10-15 minutes. Lastly, add green chillies and simmer for a minute or two. Remove from heat</p>', '16057589164y5twNQK.jpg', NULL, NULL, NULL, NULL, NULL, 3, 51, 0, NULL, 0, 1, NULL, 'true', 0, NULL, '2023-01-15 09:01:21', '2023-01-15 03:01:21');
INSERT INTO `posts` (`id`, `language_id`, `title`, `slug`, `post_type`, `meta_tag`, `show_right_column`, `is_feature`, `is_slider`, `slider_left`, `slider_right`, `is_trending`, `is_videoGallery`, `tags`, `description`, `image_big`, `rss_image`, `image_small`, `video`, `embed_video`, `audio`, `category_id`, `subcategories_id`, `schedule_post`, `schedule_post_date`, `is_pending`, `admin_id`, `user_id`, `status`, `is_draft`, `rss_link`, `created_at`, `updated_at`) VALUES
(421, 1, 'Soup for Iftar', 'Soup for Iftar', 'article', 'Soup for Iftar', 0, 0, 0, 0, 0, 0, 0, 'Soup for Iftar', '<h2 style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 18px; font-weight: 800; line-height: 24px; color: rgb(0, 0, 0);\">MUSHROOM SOUP WITH POACHED QUAIL EGG</h2><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\"><span style=\"font-weight: 800;\">Ingredients</span></p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">2tbsp olive oil</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">250g chicken thinly sliced</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">2tsp garlic powder</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">250g enoki or any kind of mushroom</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">Salt and pepper</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">3 cups chicken stock</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">1 cup tomato cube</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">500gm bok choy</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">1tbsp soya sauce</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">1tbsp oyster sauce</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">1tbsp white vinegar</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">1tsp sugar</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">12 quail eggs (chicken egg also applicable, but reduced numbers)</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">½ cup coriander leaf&nbsp;&nbsp;</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\"><span style=\"font-weight: 800;\">Method</span></p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">Marinate the chicken with garlic powder, salt and pepper for 10 minutes. Sauté in olive oil for 4/5 minutes in medium heat. Add the Enoki or mushrooms. Sauté till there is no water left. In a soup pot, add the chicken stock and bring it to boil, then add the tomato and bok choy, soya sauce and oyster sauce. Let it simmer for 5 minutes. Add the sugar and vinegar, taste and adjust. Stir in the chicken, and gradually add the quail or chicken eggs, one by one. Remove from the heat after 2 minutes.</p>', '1605759437fOGZzg46.jpg', NULL, NULL, NULL, NULL, NULL, 3, 51, 0, NULL, 0, 1, NULL, 'true', 0, NULL, '2023-01-15 09:01:21', '2023-01-15 03:01:21'),
(422, 1, 'Everyone is guessing’ about coronavirus economic impacts: experts', 'Everyone-is-guessing’-about-coronavirus-economic-impacts:-experts', 'article', 'Everyone is guessing’ about coronavirus economic impacts: experts', 0, 0, 0, 0, 0, 0, 0, 'Everyone is guessing’ about coronavirus economic impacts: experts', '<p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">The coronavirus that spread from a seafood market in Wuhan, China to infect tens of thousands has shuttered businesses, grounded flights and killed over 1,000 people so far, mostly in China.</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">As the world\'s second-largest economy struggles to get back to work after an extended Lunar New Year holiday, analysts and bankers have been revisiting their estimates of the economic impact of the virus.</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">Most believe China faces a short but sharper economic shock than originally thought, one that will be felt around the world. Expectations of how harsh the impact will be vary widely, however. Health professionals and economists say opaque Chinese data and lack of precedent hinder clear estimates.</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">China\'s gross domestic product growth in the first quarter could fall to as low as 4%, Nicholas R. Lardy, senior fellow at the Peterson Institute for International Economics, estimated on Tuesday. That compares to Chinese government estimates of 6% annual growth before the virus emerged.</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">However, if the number of confirmed new coronavirus cases continues to decline, then adverse effect on annual growth will be much smaller, he added. Analysts from S&amp;P, meanwhile, estimated Tuesday that the virus could lower China\'s GDP growth to 5 per cent this year, with a peak effect in the first quarter before a rebound begins in the third quarter.</p><div class=\"mobile-adv-in-body pull-left pad-left-right-big gero-left pad-bottom-small\" style=\"float: left; padding-top: 0px; padding-right: 24px; padding-bottom: 15px; color: rgb(0, 0, 0); font-size: 16px; padding-left: 0px !important;\"></div><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">\"The numbers are very imperfect, and that\'s the basic reason behind the wide range of estimates,\" said Lardy.&nbsp; \"Everyone is guessing.\"&nbsp; Many economists and analysts are looking closely at the historical precedent from the SARS virus spread in 2003. But when SARS struck, China\'s contribution to global GDP was just 4 per cent, compared with 15 per cent in 2017, and Chinese companies were much less integrated into global supply chains.</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">Any forecasts are also complicated by the fact that Beijing has a history of closely managing China\'s economy to hit specific targets, and there were already doubts whether China\'s economy could reach 6 per cent growth this year.</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">Further, much remains unknown about the coronavirus, including its exact incubation period and the effectiveness of China\'s quarantine measures, Catherine Troisi, a University of Texas public health specialist, said Tuesday during a National Association for Business Economics call on the virus\'s economic impact.</p>', '1605759554LRgVL10F.jpg', NULL, NULL, NULL, NULL, NULL, 4, 48, 0, NULL, 0, 1, NULL, 'true', 0, NULL, '2023-01-15 09:01:21', '2023-01-15 03:01:21'),
(423, 1, 'Boeing’s 737 MAX will fly again after 2 air disasters grounded them for 20 months', 'Boeing’s-737-MAX-will-fly-again-after-2-air-disasters-grounded-them-for-20-months', 'article', 'Boeing’s 737 MAX will fly again after 2 air disasters grounded them for 20 months', 0, 0, 0, 0, 0, 0, 0, 'Boeing’s 737 MAX will fly again after 2 air disasters grounded them for 20 months', '<p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">The 737 MAX crashes in Indonesia and Ethiopia killed 346 people within five months in 2018 and 2019 and triggered a hailstorm of investigations, frayed US&nbsp;leadership in global aviation and cost Boeing some $20 billion.</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">The US&nbsp;planemaker\'s best-selling jet will resume commercial service facing strong headwinds from a resurgent coronavirus pandemic, new European trade tariffs and mistrust of one of the most scrutinized brands in aviation.</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">\"Our family was broken,\" Naoise Ryan, whose 39-year-old husband died aboard Ethiopian Airlines flight 302, said on Tuesday. \"We are suffering and we\'ll most likely continue to suffer for a very long time, if not for the rest of our lives.\"</p><div class=\"mobile-adv-in-body pull-left pad-left-right-big gero-left pad-bottom-small\" style=\"float: left; padding-top: 0px; padding-right: 24px; padding-bottom: 15px; color: rgb(0, 0, 0); font-size: 16px; padding-left: 0px !important;\"></div><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">The 737 MAX is a re-engined upgrade of a jet first introduced in the 1960s. Single-aisle jets like the MAX and rival Airbus&nbsp;A320neo are workhorses that dominate global fleets and provide a major source of industry profit.</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">American Airlines&nbsp;plans to relaunch the first commercial MAX flight since the grounding on December&nbsp;29. Southwest Airlines, the world\'s largest MAX operator, does not plan to fly the aircraft until the second quarter of 2021.</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">\"The FAA\'s directive is an important milestone,\" said Stan Deal, head of Boeing Commercial Airplanes. \"We will continue to work with regulators around the world and our customers to return the airplane back into service worldwide.\"</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">Leading regulators in Europe, Brazil and China must issue their own approvals for their airlines after independent reviews, illustrating how the 737 MAX crashes upended a once US-dominated airline safety system in which nations large and small for decades moved in lock-step with the FAA.</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">When it does fly, Boeing will be running a 24-hour war room to monitor all MAX flights for issues that could impact the jet\'s return, from stuck landing gear to health emergencies, three people familiar with the matter said.</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">Shares jumped 5.7% to $221.95 premarket and were on track for their highest level since early June.</p>', '16057596587yrU1Lmw.jpg', NULL, NULL, NULL, NULL, NULL, 4, 48, 0, NULL, 0, 1, NULL, 'true', 0, NULL, '2023-01-15 09:01:21', '2023-01-15 03:01:21'),
(424, 1, 'Dhaka Bank shapeshifting with pandemic', 'Dhaka-Bank-shapeshifting-with-pandemic', 'article', 'Dhaka Bank shapeshifting with pandemic', 0, 0, 0, 0, 0, 0, 0, 'Dhaka Bank shapeshifting with pandemic', '<p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">When the majority of banks are struggling to survive from the ongoing financial meltdown brought on by the coronavirus pandemic, Dhaka Bank has introduced a novel banking product that will help clients open their account from home.</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">The lender rolled out the product named \"Account from Home\" in mid-May to help clients open accounts by way of maintaining social distance, Emranul Huq, managing director of the bank, told The Daily Star in an interview recently.</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">The agents of the lender now deliver welcome pack at customers\' doorstep (maintaining health and safety standard) including free debit card and cheque book and collect documents with their signature.</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">The banks\' accounts are increasing at a faster pace after the product\'s launch, Huq said.</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">The lender, which marked its 25th anniversary on July 5, invested nearly $7 million last year to upgrade its online platform as part of its effort to make both the digital and virtual banking vibrant.</p><div class=\"mobile-adv-in-body pull-left pad-left-right-big gero-left pad-bottom-small\" style=\"float: left; padding-top: 0px; padding-right: 24px; padding-bottom: 15px; color: rgb(0, 0, 0); font-size: 16px; padding-left: 0px !important;\"></div><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">\"This has helped run our business to a great extent at a time when banks from across the globe encourage clients to do banking while sitting from home to control the spread of the pandemic,\" Huq said.</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">The lender has already introduced a good number of digital products riding on the investment, which are serving its clients, he said.</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">Another virtual banking product namely \"Dhaka Bank Trade Cloud\" has recently been introduced, which now helps clients to open letters of credit sitting from their home and office.</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">The move is allowing clients to submit all export and import-related documents digitally. The businesses are being allowed to carry out trade-related procedures just by turning up at a branch once.&nbsp;&nbsp;</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">The bank, which commenced its commercial operation in 1995, is one of the leading players in trade-based financing in Bangladesh. It accounts for more than 3 per cent of the country\'s total trade volume.</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">Dhaka Bank initially started its journey with only one corresponding bank to do its foreign exchange related banking, but the number now stands at 450, in what can be viewed as the lender\'s growing acceptance across the globe.</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">\"We are maintaining a credit line with 30 global banks and two multilateral organisations – International Finance Corporation and the Asian Development Bank.</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">They have provided a remarkable amount of guarantee and funded loans due to Dhaka Bank\'s strong brand image, said Huq, who was promoted to the post of MD in February from the previous position of additional managing director. He has been with Dhaka Bank for 23 years now.</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">The lender is now campaigning to popularising its online product namely \"Dhaka Bank Go\" such that clients do their banking smoothly including inter-bank fund transfer, utility bill payment, mobile phone recharge and pay tuition fee for educational purpose.</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">Banks must improve their digital and virtual banking as the pandemic has given a lesson that manual banking is not possible all the time.</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">\"Improving the skill in manpower is our core target in the days ahead. And we will make tech-savvy manpower to keep up with the time,\" Huq said.</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">Quality human asset, technology-based advancement and good corporate governance have been the lender\'s focus since its inception.</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">The principles have already given several awards.</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">Dhaka Bank received 9th IFC Trade Award 2019 as a Best Issuing Bank in South Asia for best utilisation and performance of the Global Trade Finance Program limit maintained with IFC.</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">Besides, the bank has been awarded \'Bank of the Year-2018 in Bangladesh\' as the industry standard for banking excellence from The Banker (UK) for its strong management, sound business model, banking innovations and prudent Risk approach.</p>', '1605759757w31OraIu.jpg', NULL, NULL, NULL, NULL, NULL, 4, 49, 0, NULL, 0, 1, NULL, 'true', 0, NULL, '2023-01-15 09:01:21', '2023-01-15 03:01:21'),
(425, 1, 'Reserve Bank of India Feb rate cut on a knife’s edge', 'Reserve Bank of India Feb rate cut on a knife’s edge', 'article', 'Reserve Bank of India Feb rate cut on a knife’s edge', 0, 0, 0, 0, 0, 0, 0, 'Reserve Bank of India Feb rate cut on a knife’s edge', '<p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">The others expected no move at the Feb. 4-6 meeting.</p><div class=\"mobile-adv-in-body pull-left pad-left-right-big gero-left pad-bottom-small\" style=\"float: left; padding-top: 0px; padding-right: 24px; padding-bottom: 15px; color: rgb(0, 0, 0); font-size: 16px; padding-left: 0px !important;\"></div><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">“The MPC has retained its ‘accommodative’ policy stance, which suggests that this is a pause rather than an end to the loosening cycle,” said Darren Aw, Asia economist at Capital Economics.</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">A firm majority, over 80 percent economists said the RBI will cut rates by end-June, with the median forecast for a 25-basis point trim to 4.90 percent, and then stay on the sidelines for the rest of the year.</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">“Timing the next RBI move has become precarious after it chose to abstain from additional front-loading, despite a sharp growth downgrade and below-target inflation forecast with balanced risks,” said Abhishek Upadhyay, senior economist at ICICI Securities.</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">“We suspect higher inflation and fiscal risks could push any further cut to the next fiscal year, perhaps in June with the risk that we have already reached the end of the rate cut cycle.”</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">When asked what the central bank’s next move should be, instead of what the RBI will deliver, all but three of 45 economists also said a cut, with the median of those responses recommending 25 basis points.</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">And in response to a separate question, 35 of 52 economists said they were confident the RBI would cut rates soon. The remaining 17 contributors said they were not confident, mostly citing expectations for elevated inflation.</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">A separate Reuters poll of 52 economists taken Dec. 5-10 predicted inflation rose last month to over a three-year high of 5.26 percent from October’s 4.62 percent, largely driven by a continued surge in vegetable prices, particularly onions - an important ingredient in the kitchens of more than 1.2 billion Indians.</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">“While multiple data shows lack of inflation pressure in the economy, onion prices - within the food component - have been the biggest driver of headline inflation and this cannot be influenced by monetary policy actions,” said Kunal Kundu, India economist at Societe Generale.</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">But even though inflation has turned up recently, the RBI took many forecasters and traders off guard at the December meeting as policymakers had given no signal after a rapid-fire succession of cuts this year it was about to pause.</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">When asked if that decision had damaged the RBI’s credibility, 70 percent - 39 of 53 - of economists said ‘not at all’. Eleven contributors said it had “a bit” and three said “a lot”.</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">“In terms of providing monetary policy accommodation they feel that they are already doing enough right now and they want to see more transmission before they cut more if they have to,” said Sakshi Gupta, senior India economist at HDFC Bank.</p>', '1605759866CJV8ONNa.jpg', NULL, NULL, NULL, NULL, NULL, 4, 49, 0, NULL, 0, 1, NULL, 'true', 0, NULL, '2023-01-15 09:01:21', '2023-01-15 03:01:21'),
(426, 1, 'Eastern Bank’s profits rise on higher loan recovery, low NPL', 'Eastern Bank’s profits rise on higher loan recovery, low NPL', 'article', 'Eastern Bank’s profits rise on higher loan recovery, low NPL', 0, 0, 0, 0, 0, 0, 0, 'Eastern Bank’s profits rise on higher loan recovery, low NPL', '<p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">The main reason of our profit rise in the challenging year was the higher recovery rate and we were able to keep the NPL ratio low,\" said Ali Reza Iftekhar, managing director and chief executive officer.</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">The lender recovered Tk 63.6 crore from its written-off loans last year which was Tk 42.3 crore and Tk 50.1 crore in 2018 and 2017 respectively. Meanwhile its recovery from classified loans were Tk 94.7 crore, Tk 70 crore and Tk 85.8 crore respectively.</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">Its non-performing loan (NPL) ratio was 3.35 per cent last year whereas the industry average was 9.32 per cent, according to its annual report.</p><div class=\"mobile-adv-in-body pull-left pad-left-right-big gero-left pad-bottom-small\" style=\"float: left; padding-top: 0px; padding-right: 24px; padding-bottom: 15px; color: rgb(0, 0, 0); font-size: 16px; padding-left: 0px !important;\"></div><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">\"If the NPL remains high, profits are mostly hit with provisioning, from which we had relief as the quality of our assets is good and the NPL remains low,\" the CEO told The Daily Star yesterday.</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">Though the NPL ratio was low compared to others in the industry last year, it was higher than 2.35 per cent in 2018 which was preceded by 2.50 per cent, 2.69 per cent and 3.27 per cent in the past successive years.</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">This rise was mainly caused by a single account from the textile industry, according to the annual report.</p>', '1605759983DKQ2xBWx.jpg', NULL, NULL, NULL, NULL, NULL, 4, 49, 0, NULL, 0, 1, NULL, 'true', 0, NULL, '2023-01-15 09:01:21', '2023-01-15 03:01:21'),
(427, 1, 'He was eagerly waiting for a vacation: Soumitra\'s daughter recalls', 'He-was-eagerly-waiting-for-a-vacation:-Soumitra\'s-daughter-recalls', 'article', 'He was eagerly waiting for a vacation: Soumitra\'s daughter recalls', 0, 0, 0, 0, 0, 0, 0, NULL, '<p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\"><em>Baba&nbsp;</em>has taught me to enjoy every bit of life. He would always tell me to never get upset from life, and focus on making our lives meaningful. He would always inspire us to do something for the world. He lived his life to the fullest, and was rarely ever depressed.</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">We have plans to preserve his memories. We wish to work on that with time and show our gratitude to the people who have showered their unconditional love for&nbsp;<em>Baba</em>.</p>', '1605760131FDdmvzkj.jpg', NULL, NULL, NULL, NULL, NULL, 6, NULL, 0, NULL, 0, 1, NULL, 'true', 0, NULL, '2023-01-15 09:01:21', '2023-01-15 03:01:21'),
(428, 1, 'His devotion to acting was unparalleled: Babita on Soumitra Chatterjee', 'His devotion to acting was unparalleled: Babita on Soumitra Chatterjee', 'article', 'His devotion to acting was unparalleled: Babita on Soumitra Chatterjee', 0, 0, 0, 0, 0, 0, 0, 'His devotion to acting was unparalleled: Babita on Soumitra Chatterjee', '<p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">Soumitra Chatterjee was one of the few&nbsp; acting legends who defined the golden era of Bengali cinema. For me, he was a guiding light.</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">His devotion to acting was unparalleled. He was working, even during the coronavirus pandemic.</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">I had the privilege to work with him in 1972 when I was around 15. Only two of my films had released at the time. Being on the sets with two legends, Satyajit Ray and Soumitra Chatterjee, I was very anxious and excited at the same time. I travelled outside the country for the first time during \"Ashani Sanket.\" I had to arrange my passport.</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">The shooting of \"Ashani Sanket\" was held in Birbhum. The first shot of the film had no dialogues. In the scene, I was supposed to allow an old man to stay at our house after providing him with some food.</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">Shoumitra Chatterjee was supposed to ask who the man was using sign language, and I was supposed to respond to him in the same way, ending the shot at where I had to bite my tongue, after giving him the answer.</p><div class=\"mobile-adv-in-body pull-left pad-left-right-big gero-left pad-bottom-small\" style=\"float: left; padding-top: 0px; padding-right: 24px; padding-bottom: 15px; color: rgb(0, 0, 0); font-size: 16px; padding-left: 0px !important;\"></div><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">After the shot was over, he praised me a lot. He was so welcoming that it made me forget all my worries.</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">Once, while we were shooting for the film during Eid. I was feeling low as I was away from my friends and family. He had noticed that I was trying to hold back tears, and asked me what was wrong. He told me to wait till we were done shooting for the day. A huge feast, with lots of firecrackers and delicious food, was what he had in store for me in the evening that day.</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">Satyajit Ray and Soumitra Chatterjee shared a very special bond. They could read each other\'s minds with just an eye contact. &nbsp;One day during the shoot, the trolley man was repeatedly making the same mistake. Within seconds, we saw Shoumitra Chatterjee pushing the trolley without any hesitation. I had never seen a \'hero\' doing such things on a set, that too, an actor of his stature.&nbsp;</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">He also used to take notes during each&nbsp; shot. This only shows how careful he was regarding his presentation on the screen. He entertained us through songs and games on our way back to Kolkata, after the shooting ended.</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">I always met Shoumitra Chatterjee every time I visited Kolkata. We used to be in touch over the phone as well. Four years after \"Ashani Sanket\" was released, I visited him again. I still remember his words when I met him. He had said, \"You have been doing a lot of good films. You are also being praised with awards for your performances. I knew you would end up being one of the brightest stars in the industry.\"</p>', '16057602226Tfd6udF.jpg', NULL, NULL, NULL, NULL, NULL, 6, NULL, 0, NULL, 0, 1, NULL, 'true', 0, NULL, '2023-01-15 09:01:21', '2023-01-15 03:01:21'),
(429, 1, 'Longitude Latitude 8’ showcases versatile artworks through online exhibitions', 'Longitude-Latitude-8’-showcases-versatile-artworks-through-online-exhibitions', 'article', 'Longitude Latitude 8’ showcases versatile artworks through online exhibitions', 0, 0, 0, 0, 0, 0, 0, 'Longitude Latitude 8’ showcases versatile artworks through online exhibitions', '<p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">A month-long online art festival, \'Longitude Latitude 8,\' directed and curated by Shehzad Chowdhury is currently underway. \'Longitude Latitude,\' which started from 2003, is an art happening that takes on many forms—from festivals to exhibitions. This time, it took the form of an online festival for its 8th edition.</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">The festival started on October 23 and will conclude on November 22. However, since the artworks are exhibited online, they will be available afterwards as well.</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">\"The theme of this edition is Parampara and Prakriti. It\'s a collection of incredibly sincere and personal works in the middle of a global crisis,\" shares Shehzad Chowdhury. \"We have created a community of creative individuals who shared their stories. We can\'t thank them enough.\"</p>', '1605760359hW68XEwV.jpg', NULL, NULL, NULL, NULL, NULL, 6, NULL, 0, NULL, 0, 1, NULL, 'true', 0, NULL, '2023-01-15 09:01:21', '2023-01-15 03:01:21'),
(430, 1, 'Pakistan focus on new talent for upcoming NZ tour', 'Pakistan focus on new talent for upcoming NZ tour', 'article', 'Pakistan focus on new talent for upcoming NZ tour', 0, 0, 0, 0, 0, 0, 0, NULL, '<p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">We have opted to invest, develop and focus on the promising and emerging players,\" Malik told a press conference in Lahore.</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">He said the big-name omissions were due to a \"lack of performance\" on the summer England tour.</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">Pakistan lost the three-test series 1-0, and the Twenty20 series was tied 1-1 with one no result.&nbsp;</p><div class=\"mobile-adv-in-body pull-left pad-left-right-big gero-left pad-bottom-small\" style=\"float: left; padding-top: 0px; padding-right: 24px; padding-bottom: 15px; color: rgb(0, 0, 0); font-size: 16px; padding-left: 0px !important;\"></div><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">Shafiq, who has played a Pakistan record of 72 consecutive Tests in his 77-match career, managed just 67 runs in five innings in England.</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">Malik made 14 in one of the three T20 internationals, while he did not bat in the other two.</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">Amir failed to get a wicket in two T20 internationals in England.</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">Uncapped Amad Butt, Danish Aziz, Imran Butt and Rohail Nazir are all solid young domestic performers included in the squad -- larger than usual in case players have to drop out because of coronavirus.</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">\"These unprecedented Covid-19 times provide a unique opportunity to select a larger squad,\" Misbah said.</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">The Test squad will be captained for the first time by Babar Azam, who was appointed Tuesday.</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">The team will depart November 23 for Lincoln, where they will spend two weeks in quarantine.</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">T20 internationals are scheduled for Auckland on December 18, Hamilton on December 20 and Napier on December 22.</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">The first Test is at Mount Maunganui from December 26-30, with the second at Christchurch from January 3-7.</p>', '1605760473pzntUMTF.jpg', NULL, NULL, NULL, NULL, NULL, 5, 30, 0, NULL, 0, 1, NULL, 'true', 0, NULL, '2023-01-15 09:01:21', '2023-01-15 03:01:21'),
(431, 1, 'Afridi\'s bare-it-all helmet', 'Afridi\'s bare-it-all helmet', 'article', 'Afridi\'s bare-it-all helmet', 0, 0, 0, 0, 0, 0, 0, 'Afridi\'s bare-it-all helmet', '<p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">However, all the previous versions beat the one Shahid Afridi put on during a PSL qualifier match on Saturday, which by the looks of it, is as far removed from safety as possible. Afridi, upon his PSL return, sported an unusual yet dangerous-looking helmet, which had the top bar of the grille removed. The helmet has the potential to bring serious damage to the batsman as the huge gap allows the ball to penetrate between the lower grille and the top half of the helmet.</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">Afridi scored 12 off 12 balls wearing the helmet with some commentators on air discussing about the batsman\'s unusual gear. \"He [Afridi] has got an interesting grille on Jonty, I\'ve never seen that one before,\" former cricketer Bazid Khan said.</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">Former South Africa cricketer Jonty Rhodes revealed that he used the version a while ago because it allows a proper view of the bowler, his hand and the ball, and understood where Afridi was coming from. \"I played a couple of months ago and I had an issue with the top bar of the grille,\" said Rhodes. \"I understand where he\'s at, I couldn\'t see through it either. So I did get mine ground down by from a safety point of view, I was facing blokes like this.\"</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">Sky Sports Cricket assistant producer Tanzil Khawaja also voiced concern for Afridi. \"Is it me or is Afridi\'s helmet grille really dangerous? Seems to be very open around the eyes and mouth area,\" he tweeted.</p><div class=\"mobile-adv-in-body pull-left pad-left-right-big gero-left pad-bottom-small\" style=\"float: left; padding-top: 0px; padding-right: 24px; padding-bottom: 15px; color: rgb(0, 0, 0); font-size: 16px; padding-left: 0px !important;\"></div><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">Designing of cricket helmets has been under strict supervision ever since Phil Hughes struck a blow while batting and passed away. Ever since, a protective layer has been offered that saves the batsmen blows on the back of the neck. But surely, Afridi\'s version is sure to become a talking point.</p>', '1605760568acjWOz5x.jpg', NULL, NULL, NULL, NULL, NULL, 5, 30, 0, NULL, 0, 1, NULL, 'true', 0, NULL, '2023-01-15 09:01:21', '2023-01-15 03:01:21'),
(432, 1, 'Corona-negative Mahmudullah to return to training', 'Corona-negative Mahmudullah to return to training', 'article', 'Corona-negative Mahmudullah to return to training', 0, 0, 0, 0, 0, 0, 0, 'Corona-negative Mahmudullah to return to training', '<p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">The 34-year-old had tested positive on November 6 and in the subsequent test too as he was preparing to take part in the Pakistan Super League playoffs for Multan Sultans.&nbsp;</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">\"I tested negative for coronavirus yesterday. I will now try to return to the field as quickly as possible. I thank everyone to be by my side during these times,\" the all-rounder told media today.</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">Mahmudullah will now start preparation for Bangabandhu T20 Cup, which begins on November 24. The all-rounder will be leading Gemcon Khulna in the five-team tournament.</p>', '1605760651zyRZChSj.jpg', NULL, NULL, NULL, NULL, NULL, 5, 30, 0, NULL, 0, 1, NULL, 'true', 0, NULL, '2023-01-15 09:01:21', '2023-01-15 03:01:21'),
(433, 1, 'High five for Rohit’s Mumbai', 'High five for Rohit’s Mumbai', 'article', 'High five for Rohit’s Mumbai', 0, 0, 0, 0, 0, 0, 0, 'High five for Rohit’s Mumbai', '<p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">It looked like Mumbai Indians were definitely not going to lose the IPL 2020 final and it remained that way as Rohit Sharma\'s men won a record-extending 5th title by decimating first-time finalists Delhi Capitals by 5 wickets. Barring blips in their first and last league games, Mumbai were always on top gear and they made it all look easy at the end.</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">The powerhouse of T20 cricket needed just 18.4 overs to gun down a target of 157 in what turned out to be the shortest final in the history of IPL, in terms of the overs played. Led by captain Rohit Sharma\'s 68 and a terrific Trent Boult, Mumbai Indians used all their experience of having featured in 5 previous IPL finals to good effect against Shreyas Iyer\'s men.</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">\"Pretty happy with how things went the entire season for us. We said at the start we want to make winning a habit, and you couldn\'t have asked any more from the guys. We were right on the money from ball one and even until today, we never looked back,\" said Mumbai captain Rohit Sharma.</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">\"IPL always amazes you. Probably one of the toughest leagues to play. I feel overwhelmed playing in such a league. It\'s been a great journey. I\'m very proud of my boys, it\'s not a small feat to reach the final. It was a great achievement. Winning the IPL is something more - one step ahead. We\'ll come back stronger and see to it that we win the trophy. I would just like to tell the fans that you\'ve been great support through the season,\" said Delhi captain Shreyas Iyer.</p>', '1605760767wCAQnJV1.jpg', NULL, NULL, NULL, NULL, NULL, 5, 30, 0, NULL, 0, 1, NULL, 'true', 0, NULL, '2023-01-15 09:01:21', '2023-01-15 03:01:21');
INSERT INTO `posts` (`id`, `language_id`, `title`, `slug`, `post_type`, `meta_tag`, `show_right_column`, `is_feature`, `is_slider`, `slider_left`, `slider_right`, `is_trending`, `is_videoGallery`, `tags`, `description`, `image_big`, `rss_image`, `image_small`, `video`, `embed_video`, `audio`, `category_id`, `subcategories_id`, `schedule_post`, `schedule_post_date`, `is_pending`, `admin_id`, `user_id`, `status`, `is_draft`, `rss_link`, `created_at`, `updated_at`) VALUES
(434, 1, 'Kishan, Bumrah power Mumbai to IPL final', 'Kishan, Bumrah power Mumbai to IPL final', 'article', 'Kishan, Bumrah power Mumbai to IPL final', 0, 0, 0, 0, 0, 0, 0, 'Kishan, Bumrah power Mumbai to IPL final', '<p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">We know in the big games runs on the board is always critical no matter what the conditions are,\" skipper Rohit Sharma told reporters.</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">\"You put runs on the board there is always an additional pressure on the opposition. And also of course our bowling unit has been terrific through the tournament. The way we played today was absolutely perfect.\"</p><div class=\"mobile-adv-in-body pull-left pad-left-right-big gero-left pad-bottom-small\" style=\"float: left; padding-top: 0px; padding-right: 24px; padding-bottom: 15px; color: rgb(0, 0, 0); font-size: 16px; padding-left: 0px !important;\"></div><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">The Shreyas Iyer-led Delhi will get another crack at qualifying against either Virat Kohli\'s Royal Challengers Bangalore or Sunrisers Hyderabad, who clash on Friday in an eliminator.</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">Delhi were reduced to 0-3 after pace spearhead Trent Boult struck twice in his first over with the wickets of Prithvi Shaw and Ajinkya Rahane while fellow quick Bumrah sent back Shikhar Dhawan.</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">Marcus Stoinis made a valiant 65 including a sixth-wicket partnership of 71 with Axar Patel, who made 42, to put up some resistance for Delhi.</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">Bumrah kept up the pressure and struck twice in one over including Stoinis, bowled after his 46-ball knock, to go past Delhi quick Kagiso Rabada\'s 25 scalps this season</p>', '1605760862QigEvvRS.jpg', NULL, NULL, NULL, NULL, NULL, 5, 30, 0, NULL, 0, 1, NULL, 'true', 0, NULL, '2023-01-15 09:01:21', '2023-01-15 03:01:21'),
(435, 1, 'Brazil up against Uruguay, Argentina take on Peru', 'Brazil up against Uruguay, Argentina take on Peru', 'article', 'Brazil up against Uruguay, Argentina take on Peru', 0, 0, 0, 0, 0, 0, 0, 'Brazil up against Uruguay, Argentina take on Peru', '<p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">However, having faced the three bottom teams so far, their place atop the single 10-team CONMEBOL qualifying group will come under threat when they play in Montevideo against a Uruguay team that purred in a 3-0 thumping of Colombia on Friday.</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">Brazil will need to up their game as they face another match without Paris Saint-Germain forward Neymar, who suffered a thigh injury last month and is still not fit.</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">\"We have had three victories. In the first two we created lots of chances and scored lots of goals, played well and got good results,\" Tite said in a virtual press conference on Monday.</p><div class=\"mobile-adv-in-body pull-left pad-left-right-big gero-left pad-bottom-small\" style=\"float: left; padding-top: 0px; padding-right: 24px; padding-bottom: 15px; color: rgb(0, 0, 0); font-size: 16px; padding-left: 0px !important;\"></div><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">\"We might not have played well in the third game (against Venezuela) but it was a consistent performance and we got the win. Maybe these teams won\'t be in the running to qualify but they will soon climb the table.\"</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">He added: \"This is traditionally a big game. Uruguay on their own turf are a different proposition and will make more demands of us defensively than Venezuela did, but at the same time we will have more space in which to create going forward.\"</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">Tite struggled to find the right formula to break down Venezuela in Sao Paulo, with Firmino withdrawing to a deeper role on the left, Richarlison starting as centre forward and Gabriel Jesus on the right.</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\"><span style=\"font-weight: 800;\">Messi, Argentina go to Peru</span></p>', '1605761127b2SrXyrf.jpg', NULL, NULL, NULL, NULL, NULL, 5, 31, 0, NULL, 0, 1, NULL, 'true', 0, NULL, '2023-01-15 09:01:21', '2023-01-15 03:01:21'),
(436, 1, 'Suarez tests Covid-positive ahead of Brazil game', 'Suarez-tests-Covid-positive-ahead-of-Brazil-game', 'article', 'Suarez tests Covid-positive ahead of Brazil game', 0, 0, 0, 0, 0, 0, 0, 'Suarez tests Covid-positive ahead of Brazil game', '<p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">The statement added that both players and the staff member were in good health and said the team had followed protocol and taken the appropriate measures following the results.</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">Suarez, who scored a penalty in Uruguay\'s 3-0 win over Colombia on Friday, is now ruled out of the match with Brazil.</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">He will almost certainly also miss his club\'s La Liga match against his former club Barcelona on Nov 21.</p><div class=\"mobile-adv-in-body pull-left pad-left-right-big gero-left pad-bottom-small\" style=\"float: left; padding-top: 0px; padding-right: 24px; padding-bottom: 15px; color: rgb(0, 0, 0); font-size: 16px; padding-left: 0px !important;\"></div><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">The Uruguayan is Atletico\'s joint-top scorer this season alongside Joao Felix, grabbing five goals since switching from Barca on a free transfer in September.</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">Suarez is the latest high-profile player to test positive for the virus during an international break, after Liverpool\'s Mohamed Salah was infected while on duty with Egypt.</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">Last month, Cristiano Ronaldo tested positive while representing Portugal and was forced to miss several games for Juventus.</p>', '1605761215z9qRXo4W.jpg', NULL, NULL, NULL, NULL, NULL, 5, 31, 0, NULL, 0, 1, NULL, 'true', 0, NULL, '2023-01-15 09:01:21', '2023-01-15 03:01:21'),
(437, 1, 'Ramos’ record 177th marred by misses', 'Ramos’ record 177th marred by misses', 'article', 'Ramos’ record 177th marred by misses', 0, 0, 0, 0, 0, 0, 0, 'Ramos’ record 177th marred by misses', '<p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">The statement added that both players and the staff member were in good health and said the team had followed protocol and taken the appropriate measures following the results.</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">Suarez, who scored a penalty in Uruguay\'s 3-0 win over Colombia on Friday, is now ruled out of the match with Brazil.</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">He will almost certainly also miss his club\'s La Liga match against his former club Barcelona on Nov 21.</p><div class=\"mobile-adv-in-body pull-left pad-left-right-big gero-left pad-bottom-small\" style=\"float: left; padding-top: 0px; padding-right: 24px; padding-bottom: 15px; color: rgb(0, 0, 0); font-size: 16px; padding-left: 0px !important;\"></div><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">The Uruguayan is Atletico\'s joint-top scorer this season alongside Joao Felix, grabbing five goals since switching from Barca on a free transfer in September.</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">Suarez is the latest high-profile player to test positive for the virus during an international break, after Liverpool\'s Mohamed Salah was infected while on duty with Egypt.</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">Last month, Cristiano Ronaldo tested positive while representing Portugal and was forced to miss several games for Juventus.</p>', '1605761341GnOemyx0.jpg', NULL, NULL, NULL, NULL, NULL, 5, 31, 0, NULL, 0, 1, NULL, 'true', 0, NULL, '2023-01-15 09:01:21', '2023-01-15 03:01:21'),
(438, 1, 'Salah tests positive for virus again', 'Salah-tests-positive-for-virus-again', 'article', 'Tired of always being the problem for everything at Barca: Messi', 0, 0, 0, 0, 0, 0, 0, 'Tired of always being the problem for everything at Barca: Messi', '<p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">Messi returned to Barcelona from international duty with Argentina on Wednesday when he was accosted by reporters at the airport.</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">\"The truth is that I\'m a little tired of always being the problem for everything at the club,\" Messi was quoted as saying by Spanish media.</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">\"On top of that, after a 15-hour flight, I had the tax authorities waiting for me. It\'s madness.\"</p><div class=\"mobile-adv-in-body pull-left pad-left-right-big gero-left pad-bottom-small\" style=\"float: left; padding-top: 0px; padding-right: 24px; padding-bottom: 15px; color: rgb(0, 0, 0); font-size: 16px; padding-left: 0px !important;\"></div><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">With one year left on his contract, Messi tried to activate a disputed clause to leave Barcelona for free in the off-season, but eventually decided to stay as he did not want to face a legal battle with the club.</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">Barcelona have been in turmoil since Bayern Munich humiliated the Spanish side 8-2 in the Champions League quarter-finals last season. Club president Josep Maria Bartomeu resigned last month ahead of a vote of no confidence.</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">Messi has also had his run-ins with the Spanish tax authorities in recent years.</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">He was handed a 21-month prison sentence in 2016 and ordered to pay a fine of two million euros ($2.37 million) for defrauding the Spanish government of 4.2 million euros over income earned from image rights.</p>', '16057736305SiTWN70.jpg', NULL, NULL, NULL, NULL, NULL, 5, 31, 0, NULL, 0, 1, NULL, 'true', 0, NULL, '2023-01-15 09:01:21', '2023-01-15 03:01:21'),
(439, 1, 'Tired of always being the problem for everything at Barca: Messi', 'Tired-of-always-being-the-problem-for-everything-at-Barca:-Messi', 'article', 'Tired of always being the problem for everything at Barca: Messi', 0, 0, 0, 0, 0, 0, 0, 'Tired of always being the problem for everything at Barca: Messi', '<p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">Messi returned to Barcelona from international duty with Argentina on Wednesday when he was accosted by reporters at the airport.</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">\"The truth is that I\'m a little tired of always being the problem for everything at the club,\" Messi was quoted as saying by Spanish media.</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">\"On top of that, after a 15-hour flight, I had the tax authorities waiting for me. It\'s madness.\"</p><div class=\"mobile-adv-in-body pull-left pad-left-right-big gero-left pad-bottom-small\" style=\"float: left; padding-top: 0px; padding-right: 24px; padding-bottom: 15px; color: rgb(0, 0, 0); font-size: 16px; padding-left: 0px !important;\"></div><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">With one year left on his contract, Messi tried to activate a disputed clause to leave Barcelona for free in the off-season, but eventually decided to stay as he did not want to face a legal battle with the club.</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">Barcelona have been in turmoil since Bayern Munich humiliated the Spanish side 8-2 in the Champions League quarter-finals last season. Club president Josep Maria Bartomeu resigned last month ahead of a vote of no confidence.</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">Messi has also had his run-ins with the Spanish tax authorities in recent years.</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">He was handed a 21-month prison sentence in 2016 and ordered to pay a fine of two million euros ($2.37 million) for defrauding the Spanish government of 4.2 million euros over income earned from image rights.</p>', '1605773659Al4qBHzA.jpg', NULL, NULL, NULL, NULL, NULL, 5, 31, 0, NULL, 0, 1, NULL, 'draft', 0, NULL, '2023-01-15 09:01:21', '2023-01-15 03:01:21'),
(440, 1, 'Tired of always being the problem for everything at Barca: Messi', 'Tired-of-always-being-the-problem-for-everythin', 'article', 'Tired of always being the problem for everything at Barca: Messi', 0, 0, 0, 0, 0, 0, 0, 'Tired of always being the problem for everything at Barca: Messi', '<p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">Messi returned to Barcelona from international duty with Argentina on Wednesday when he was accosted by reporters at the airport.</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">\"The truth is that I\'m a little tired of always being the problem for everything at the club,\" Messi was quoted as saying by Spanish media.</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">\"On top of that, after a 15-hour flight, I had the tax authorities waiting for me. It\'s madness.\"</p><div class=\"mobile-adv-in-body pull-left pad-left-right-big gero-left pad-bottom-small\" style=\"float: left; padding-top: 0px; padding-right: 24px; padding-bottom: 15px; color: rgb(0, 0, 0); font-size: 16px; padding-left: 0px !important;\"></div><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">With one year left on his contract, Messi tried to activate a disputed clause to leave Barcelona for free in the off-season, but eventually decided to stay as he did not want to face a legal battle with the club.</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">Barcelona have been in turmoil since Bayern Munich humiliated the Spanish side 8-2 in the Champions League quarter-finals last season. Club president Josep Maria Bartomeu resigned last month ahead of a vote of no confidence.</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">Messi has also had his run-ins with the Spanish tax authorities in recent years.</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">He was handed a 21-month prison sentence in 2016 and ordered to pay a fine of two million euros ($2.37 million) for defrauding the Spanish government of 4.2 million euros over income earned from image rights.</p><p style=\"margin-right: 0px; margin-bottom: 21px; margin-left: 0px; font-family: &quot;Droid Serif&quot;, serif; font-size: 16px; line-height: 24px; color: rgb(0, 0, 0);\">However, the 33-year-old did not serve any jail time after exchanging his sentence for a 250,000 euros fine, as in Spain defendants without a previous conviction are permitted to serve any sentence of under two years on probation.</p>', '16057737457o2bshlK.jpg', NULL, NULL, NULL, NULL, NULL, 5, 31, 0, NULL, 0, 1, NULL, 'true', 0, NULL, '2023-01-15 09:01:21', '2023-01-15 03:01:21'),
(441, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit', 'Lorem-ipsum-dolor-sit-am', 'video', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit', 0, 0, 0, 0, 0, 0, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit', '<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum</span><br>', '1605773985UwLuXHCW.jpg', NULL, NULL, '1605773985videoplayback.mp4', NULL, NULL, 6, NULL, 0, NULL, 0, 1, NULL, 'true', 0, NULL, '2023-01-15 09:01:21', '2023-01-15 03:01:21'),
(442, 1, 'Lorem ipsum dolor sit amet, consectetur', 'Lorem-ipsum-dolor-sit-amet,-consectetur', 'video', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit', 0, 0, 0, 0, 0, 0, 1, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit', '<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum</span><br>', '1605774210pJSrI63O.jpg', NULL, NULL, '160577421030 Second WhatsApp Video Status - Sad WhatsApp Status.mp4', NULL, NULL, 6, NULL, 0, NULL, 0, 1, NULL, 'true', 0, NULL, '2023-01-15 09:01:21', '2023-01-15 03:01:21'),
(443, 1, 'I must explain to you how all this mistaken idea', 'I-must-explain-to-you-how-all-this-mistaken-idea', 'video', 'I must explain to you how all this mistaken idea', 0, 0, 0, 0, 0, 0, 1, 'I must explain to you how all this mistaken idea', '<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat</span><br>', '1605774550mOWXqatI.jpg', NULL, NULL, '1605774550videoplayback (1).mp4', NULL, NULL, 6, NULL, 0, NULL, 0, 1, NULL, 'true', 0, NULL, '2023-01-15 09:01:21', '2023-01-15 03:01:21'),
(444, 1, 'dolore magnam aliquam quaerat voluptatem', 'dolore-magnam-aliquam-quaerat-voluptatem', 'video', 'dolore magnam aliquam quaerat voluptatem', 0, 0, 0, 0, 0, 0, 1, 'dolore magnam aliquam quaerat voluptatem', '<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</span><br>', '1605774901Hmq6wSZI.jpg', NULL, NULL, '1605774901🔥Boys Attitude Status __ Boys Attitude WhatsApp Status Video __ Bad Boy 😎 __ Attitude Status.mp4', NULL, NULL, 6, NULL, 0, NULL, 0, 1, 86, 'true', 0, NULL, '2023-01-15 09:05:14', '2023-01-15 03:01:21');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(191) DEFAULT NULL,
  `section` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `section`) VALUES
(1, 'admin', '[\"menu_builder\",\"pages\",\"categories\",\"add_post\",\"add_gallery\",\"posts\",\"schedule_post\",\"drafts\",\"rss_feeds\",\"polls\",\"widgets\",\"create_ads\",\"newsLetter\",\"contact_messages\",\"languages\",\"general_settings\",\"social_settings\",\"seo_tools\",\"emails_settings\",\"role_management\",\"font_option\",\"user_management\",\"cache_management\",\"administration_management\"]'),
(2, 'moderator', '[\"pages\",\"categories\",\"add_post\",\"add_gallery\",\"posts\",\"schedule_post\",\"drafts\",\"rss_feeds\",\"polls\",\"widgets\",\"create_ads\",\"newsLetter\",\"contact_messages\",\"languages\",\"general_settings\",\"social_settings\",\"seo_tools\",\"emails_settings\",\"font_option\",\"user_management\",\"cache_management\"]'),
(3, 'author', '[\"add_post\",\"add_gallery\",\"posts\",\"schedule_post\",\"drafts\",\"cache_management\"]'),
(4, 'user', '[\"add_post\",\"posts\",\"schedule_post\",\"drafts\"]'),
(5, 'HR', '[\"menu_builder\",\"pages\",\"add_post\",\"posts\",\"drafts\",\"polls\",\"create_ads\",\"contact_messages\",\"general_settings\",\"seo_tools\",\"role_management\",\"user_management\",\"administration_management\"]');

-- --------------------------------------------------------

--
-- Table structure for table `rss_feeds`
--

CREATE TABLE `rss_feeds` (
  `id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `feed_name` varchar(191) DEFAULT NULL,
  `feed_url` varchar(191) DEFAULT NULL,
  `post_limit` int(11) DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `auto_update` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rss_feeds`
--

INSERT INTO `rss_feeds` (`id`, `language_id`, `feed_name`, `feed_url`, `post_limit`, `category_id`, `auto_update`, `created_at`, `updated_at`) VALUES
(22, 2, 'CNN', 'http://rss.cnn.com/rss/edition_travel.rss', 4, 27, '0', '2020-03-14 07:46:13', '2020-03-14 07:46:13'),
(23, 2, 'CNN', 'http://rss.cnn.com/rss/edition.rss', 5, 27, '0', '2020-10-01 06:57:21', '2020-10-01 06:57:21'),
(27, 1, 'BBC', 'http://rss.cnn.com/rss/edition_travel.rss', 10, 26, '0', '2020-11-10 14:11:09', '2020-11-10 14:11:09');

-- --------------------------------------------------------

--
-- Table structure for table `seotools`
--

CREATE TABLE `seotools` (
  `id` int(11) NOT NULL,
  `google_analytics` varchar(100) DEFAULT NULL,
  `meta_keys` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `seotools`
--

INSERT INTO `seotools` (`id`, `google_analytics`, `meta_keys`) VALUES
(1, 'UA-154630174-1', 'newspaper');

-- --------------------------------------------------------

--
-- Table structure for table `short_lists`
--

CREATE TABLE `short_lists` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `item_title` varchar(255) DEFAULT NULL,
  `item_photo` varchar(255) DEFAULT NULL,
  `item_description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `short_lists`
--

INSERT INTO `short_lists` (`id`, `post_id`, `item_title`, `item_photo`, `item_description`) VALUES
(5, 194, 'Class aptent taciti sociosqu ad litora torquent per conubia nostra', '1588399220tmOLewct.jpg', '<p>Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Donec rhoncus feugiat magna ut hendrerit. Mauris non consectetur nunc. Nam scelerisque ex a posuere porttitor. Morbi tincidunt eget odio nec pretium. Morbi aliquam, elit nec interdum commodo, metus neque tincidunt tellus, a hendrerit risus magna sit amet turpis.</p>\n<div id=\"gtx-trans\" style=\"position: absolute; left: 820px; top: -12px;\">\n<div class=\"gtx-trans-icon\"></div></div>'),
(6, 194, 'Vivamus sit amet turpis at nisl elementum pellentesque', '1588399222Y1S1NXTT.jpg', '<p>Integer non cursus ligula, et varius diam. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Vestibulum auctor, tellus sit amet dapibus ultricies, lorem tortor efficitur enim, et gravida eros felis et lectus. Cras a condimentum felis. Sed congue mauris vel lectus scelerisque, id rutrum velit dictum. Nam sapien neque, interdum at mi quis, viverra pellentesque metus. Etiam in ante nunc.</p>\n<div id=\"gtx-trans\" style=\"position: absolute; left: 673px; top: 8px;\">\n<div class=\"gtx-trans-icon\"></div></div>'),
(7, 194, 'Quisque efficitur augue eget enim malesuada auctor', '1588399223xqQYMrBn.jpg', '<p>Cras hendrerit enim ut turpis commodo, eget porta massa ullamcorper. Maecenas quis maximus ipsum. Interdum et malesuada fames ac ante ipsum primis in faucibus. Sed hendrerit magna ligula, nec malesuada lectus finibus vel. Praesent varius rutrum nunc, sit amet tincidunt dolor ultrices nec.</p>\n<div id=\"gtx-trans\" style=\"position: absolute; left: 629px; top: 33px;\">\n<div class=\"gtx-trans-icon\"></div></div>'),
(8, 214, 'although some participants wore', '1588613073gYMnoOwI.jpg', '<span style=\"color: rgb(41, 41, 58); font-family: &quot;Open Sans&quot;;\">The annual Hindu festival of Holi was marked with its usual riot of color across India and South Asia this year, although some participants wore face masks because of coronavirus concerns, and others stayed away altogether</span><br>'),
(9, 214, 'although some participants wore', '1588613074EHv4axmL.jpg', '<span style=\"color: rgb(41, 41, 58); font-family: &quot;Open Sans&quot;;\">The annual Hindu festival of Holi was marked with its usual riot of color across India and South Asia this year, although some participants wore face masks because of coronavirus concerns, and others stayed away altogether</span><br>'),
(10, 255, 'German Shepherd Dogs can stand as high as 26 inches', '1591550393Q2NLPIRu.jpg', '<span style=\"color: rgb(34, 34, 35); font-family: Lato, Arial, sans-serif; font-size: small;\">German Shepherd Dogs can stand as high as 26 inches at the shoulder and, when viewed in outline, presents a picture of smooth, graceful curves rather than angles. The natural gait is a free-and-easy trot, but they can turn it up a notch or two and reach great speeds.</span><br>'),
(11, 255, 'The graceful, medium-sized Siberian Husky', '1591550394uN7rYki9.jpg', '<span style=\"color: rgb(34, 34, 35); font-family: Lato, Arial, sans-serif; background-color: rgb(255, 255, 255);\"><font size=\"2\">The graceful, medium-sized Siberian Husky’s almond-shaped eyes can be either brown or blue—and sometimes one of each—and convey a keen but amiable and even mischievous expression. Quick and nimble-footed, Siberians are known for their powerful but seemingly effortless gait. Tipping the scales at no more than 60 pounds, they are noticeably smaller and lighter than their burly cousin,</font></span><br>'),
(12, 256, 'xcv', '1591551708qW75IKmu.jpg', 'cxvx'),
(13, 257, 'The graceful, medium-sized Siberian Husky', '15915524243Duq53wW.jpg', 'Enter some text in the fields below, then press the \"Reset form\" button to reset the form.<br>'),
(14, 257, 'xcv', '15915524255ilvg4Rh.jpg', 'Enter some text in the fields below, then press the \"Reset form\" button to reset the form.<br>'),
(15, 258, 'The graceful, medium-sized Siberian Husky', '1591552592BmXwB3AH.jpg', 'Enter some text in the fields below, then press the \"Reset form\" button to reset the form.<br>'),
(16, 258, 'xcv', '1591552593hl5zxFGy.jpg', 'Enter some text in the fields below, then press the \"Reset form\" button to reset the form.<br>'),
(17, 259, 'The graceful, medium-sized Siberian Husky', '1591552897AgQ3Zdjx.jpg', 'Enter some text in the fields below, then press the \"Reset form\" button to reset the form.<br>'),
(18, 259, 'xcv', '1591552898tAcDIof4.jpg', 'Enter some text in the fields below, then press the \"Reset form\" button to reset the form.<br>'),
(19, 260, 'The graceful, medium-sized Siberian Husky', '1591594120cNPnlRpD.jpg', '<span style=\"color: rgb(26, 30, 37); font-family: -apple-system, &quot;Segoe UI&quot;, sans-serif; font-size: medium;\">This package can make a Laravel app tenant aware. The philosophy of this package is that it should only provide the bare essentials to enable multitenancy.</span><br>'),
(20, 261, NULL, NULL, '<br>'),
(21, 262, NULL, NULL, '<br>'),
(22, 264, 'The graceful, medium-sized Siberian Husky', '1591601362bJ0DWPQU.jpg', 'gjgh'),
(23, 263, 'The graceful, medium-sized Siberian Husky', '1591601362qgTvU4ea.jpg', 'gjgh'),
(24, 264, 'The graceful, medium-sized Siberian Husky', '1591601362ws3RJxxS.jpg', 'fghf'),
(25, 263, 'The graceful, medium-sized Siberian Husky', '1591601362appT3ApW.jpg', 'fghf'),
(26, 266, NULL, NULL, '<br>'),
(27, 265, NULL, NULL, '<br>'),
(28, 256, 'The graceful, medium-sized Siberian Husky', '1591764926cQXo4HYj.jpg', '<span style=\"color: rgb(57, 66, 78); font-family: &quot;Whitney SSm A&quot;, &quot;Whitney SSm B&quot;, Avenir, &quot;Segoe UI&quot;, Ubuntu, &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 16px;\">The creator of this contest is solely responsible for setting and communicating the eligibility requirements associated with prizes awarded to participants, as well as for procurement and distribution of all prizes. The contest creator holds HackerRank harmless from and against any and all claims, losses, damages, costs, awards, settlements, orders, or fines.</span><br>'),
(29, 262, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit', '1601367099Uy5jC5Fw.jpg', '<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span><br>'),
(30, 262, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit', '1601367099zel3FMID.jpg', '<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span><br>'),
(31, 262, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit', '1601367100YMHm45lS.jpg', '<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span><br>'),
(33, 325, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit', '1601960815uK2seoy8.jpg', 'fghfg'),
(36, 393, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit', '1603774433TRVldjsh.jpg', '<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur</span><br>'),
(37, 393, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit', '1603774434obf85eoy.jpg', '<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur</span><br>'),
(38, 393, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit', '1603774436DpU7y4bB.jpg', '<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur</span><br>'),
(39, 461, 'dfg', '1673782072m59Pf2aD.jpg', 'fghfhgf'),
(40, 461, 'test sort', '1673782072rtZCcruO.jpg', 'fghfgh'),
(41, 466, 'dfgdfg', '1673850848q5ZNCbDb.jpg', 'dfgdfg'),
(42, 466, 'dfgdfg', '16738508481hFqS2Jc.jpg', 'dfgdfgd');

-- --------------------------------------------------------

--
-- Table structure for table `sitemaps`
--

CREATE TABLE `sitemaps` (
  `id` int(11) NOT NULL,
  `sitemap_url` varchar(255) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `auto_update` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `socialsettings`
--

CREATE TABLE `socialsettings` (
  `id` int(11) NOT NULL,
  `fclient_id` varchar(100) DEFAULT NULL,
  `fclient_secret` varchar(100) DEFAULT NULL,
  `fredirect` varchar(100) DEFAULT NULL,
  `gclient_id` varchar(100) DEFAULT NULL,
  `gclient_secret` varchar(100) DEFAULT NULL,
  `gredirect` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `socialsettings`
--

INSERT INTO `socialsettings` (`id`, `fclient_id`, `fclient_secret`, `fredirect`, `gclient_id`, `gclient_secret`, `gredirect`) VALUES
(1, '560315224867834', 'ebcdaa2a847428152e8f254ea9f95bab', 'https://localhost/newspaper/auth/facebook/callback', '904681031719-sh1aolu42k7l93ik0bkiddcboghbpcfi.apps.googleusercontent.com', 'yGBWmUpPtn5yWhDAsXnswEX3', 'http://localhost/newspaper/auth/google/callback');

-- --------------------------------------------------------

--
-- Table structure for table `social_links`
--

CREATE TABLE `social_links` (
  `id` int(11) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `link` varchar(100) DEFAULT NULL,
  `icon` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `social_links`
--

INSERT INTO `social_links` (`id`, `name`, `link`, `icon`) VALUES
(2, 'facebook', 'https://www.facebook.com', 'fab fa-facebook-f'),
(3, 'twitter', 'https://twitter.com/', 'fab fa-twitter'),
(4, 'instagram', 'https://www.instagram.com/', 'fab fa-instagram'),
(5, 'linkedin', 'https://linkedin.com/', 'fab fa-linkedin-in'),
(6, 'youtube', 'https://www.youtube.com/', 'fab fa-youtube');

-- --------------------------------------------------------

--
-- Table structure for table `social_providers`
--

CREATE TABLE `social_providers` (
  `id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `provider_id` varchar(191) NOT NULL,
  `provider` varchar(191) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` int(11) NOT NULL,
  `email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `subscribers`
--

INSERT INTO `subscribers` (`id`, `email`) VALUES
(16, 'mma.rifat66@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `trivia_answers`
--

CREATE TABLE `trivia_answers` (
  `id` int(11) NOT NULL,
  `trivia_question_id` int(11) NOT NULL,
  `answer_title` varchar(255) DEFAULT NULL,
  `correct_answer` tinyint(4) DEFAULT 0,
  `answer_photo` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `trivia_answers`
--

INSERT INTO `trivia_answers` (`id`, `trivia_question_id`, `answer_title`, `correct_answer`, `answer_photo`) VALUES
(372, 303, 'a', 0, '1602050454T7SgXAGq.jpg'),
(373, 303, NULL, 0, '1602050454ZRyO2mSt.jpg'),
(374, 304, 'a', 0, '16020504560VXzEAmG.jpg'),
(375, 304, NULL, 0, '1602050456nAFymf74.jpg'),
(376, 305, 'q', 0, NULL),
(377, 305, 'y', 0, NULL),
(378, 308, 'r', 0, NULL),
(379, 308, 't', 0, NULL),
(380, 309, 'a', 1, NULL),
(381, 309, 'b', 0, NULL),
(382, 310, 'a', 1, NULL),
(383, 310, 'b', 0, NULL),
(388, 313, 'a', 1, NULL),
(389, 313, 'b', 0, NULL),
(390, 314, 'a', 1, NULL),
(391, 314, 'b', 0, NULL),
(475, 346, 'a', 1, NULL),
(476, 346, 'b', 0, NULL),
(477, 347, 'w', 0, '1603773761W5qcNmMl.jpg'),
(478, 347, 'e', 1, '1603773765rrOYQRZi.jpg'),
(479, 348, 'q', 1, NULL),
(480, 348, 'r', 0, NULL),
(493, 351, 'sdfds', 1, '1673782497rG0Ym8Go.jpg'),
(494, 351, 'dsfsd', 0, '1673782498yOdIso6g.jpg'),
(495, 352, 'ghj', 0, '1673782498NOcUtd4d.jpg'),
(496, 352, 'ghjgh', 1, '1673782498503PKuET.jpg'),
(497, 353, 'gfhf', 1, '16738513485cq4JP5G.jpg'),
(498, 353, 'gfh', 0, '1673851349joBvGLxP.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `trivia_questions`
--

CREATE TABLE `trivia_questions` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `question_title` varchar(255) DEFAULT NULL,
  `question_photo` varchar(255) DEFAULT NULL,
  `question_description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `trivia_questions`
--

INSERT INTO `trivia_questions` (`id`, `post_id`, `question_title`, `question_photo`, `question_description`) VALUES
(303, 334, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit', '1602050453flJQswLe.jpg', '<br>'),
(304, 334, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit', '1602050456a9Iq0UmF.jpg', '<br>'),
(305, 334, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit', '1602050458cZMau9EY.jpg', '<br>'),
(306, 335, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit', '1602051685Q0vCujHM.jpg', '<br>'),
(308, 354, 'gfgh', NULL, '<br>'),
(309, 355, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit', '1602309736GigUSK0D.jpg', '<br>'),
(310, 356, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit', '1602309771qFudLBgu.jpg', '<br>'),
(313, 379, 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium', '1602646325T7sZOtR9.jpg', '<br>'),
(314, 380, 'Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium', '1602646492swQzOIyN.jpg', '<br>'),
(346, 392, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit', '1603773758NGxlRpI4.jpg', '<br>'),
(347, 392, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit', '1603773760EKaJCRa8.jpg', '<br>'),
(348, 392, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit', '1603773760EKaJCRa8.jpg', '<br>'),
(351, 462, 'sfdsfsdf', '1673782497ugez65du.jpg', 'sdfdsf'),
(352, 462, 'sdfsdfs', '1673782498NNKLJHxM.jpg', 'sdfsd'),
(353, 467, 'dfgdfgdfg', '1673851348bw7Q7NxS.jpg', '<br>');

-- --------------------------------------------------------

--
-- Table structure for table `trivia_results`
--

CREATE TABLE `trivia_results` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `result_title` varchar(255) DEFAULT NULL,
  `result_photo` varchar(255) DEFAULT NULL,
  `result_description` text DEFAULT NULL,
  `min` int(11) DEFAULT NULL,
  `max` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `trivia_results`
--

INSERT INTO `trivia_results` (`id`, `post_id`, `result_title`, `result_photo`, `result_description`, `min`, `max`) VALUES
(61, 334, 'You are confident', '1602050460bQf9x3Xa.jpg', '<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum</span><br>', NULL, NULL),
(62, 334, 'You are dull', '1602050460foIdm8QP.jpg', '<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum</span><br>', NULL, NULL),
(63, 354, 'v', NULL, '<br>', NULL, NULL),
(64, 355, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit', '1602309736e7mOdk5c.jpg', '<br>', 0, 1),
(65, 356, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit', '1602309771qbx9Ju6B.jpg', '<br>', 0, 1),
(81, 392, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit', '1603773766GYU1MY3v.jpg', '<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</span><br>', 0, 1),
(82, 392, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit', '1603773766xmdN12yl.jpg', '<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.</span><br>', 2, 3),
(85, 462, 'ghjghjg', '16737824989tvtx6Na.jpg', 'ghjghj', 0, 2),
(86, 467, 'gfhgfhf', '1673851349Qu2ifEJ9.jpg', 'gfhgf', 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `photo` varchar(191) DEFAULT NULL,
  `zip` varchar(191) DEFAULT NULL,
  `city` varchar(191) DEFAULT NULL,
  `address` varchar(191) DEFAULT NULL,
  `phone` varchar(191) DEFAULT NULL,
  `fax` varchar(191) DEFAULT NULL,
  `email` varchar(191) NOT NULL,
  `password` varchar(191) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `is_provider` tinyint(10) NOT NULL DEFAULT 0,
  `status` tinyint(10) NOT NULL DEFAULT 0,
  `verification_link` text DEFAULT NULL,
  `email_verified` enum('Yes','No') NOT NULL DEFAULT 'No',
  `affilate_code` text DEFAULT NULL,
  `referral_id` tinyint(1) NOT NULL DEFAULT 0,
  `verified` tinyint(4) NOT NULL DEFAULT 0,
  `details` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `photo`, `zip`, `city`, `address`, `phone`, `fax`, `email`, `password`, `remember_token`, `is_provider`, `status`, `verification_link`, `email_verified`, `affilate_code`, `referral_id`, `verified`, `details`, `created_at`, `updated_at`) VALUES
(86, 'B Chowdhury', 'santiago', '16737608881580115253david-beckham-3.jpg', '1230', 'dhaka', 'kamarapara, dhaka', '01724935886', '789654123', 'user@gmail.com', '$2y$10$2LplCYqHwlZSSxkijuUuTOxqKISnQbvDQqQJPuUl8bGjRSQwnaO..', 'OeS722UYMOgKwcwK5BIJ8nLpf6UOsbPfL3PT2s5fA94SJlM9pMeqIU9X573e', 0, 0, '759f1706acfd7bc23f6b95ae35d0fd8e', 'Yes', '3266dcfa238c067719a09f1eabc4e1b4', 0, 1, NULL, NULL, '2023-01-14 23:36:09');

-- --------------------------------------------------------

--
-- Table structure for table `views`
--

CREATE TABLE `views` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `ip_address` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `views`
--

INSERT INTO `views` (`id`, `post_id`, `ip_address`) VALUES
(3, 47, '::1'),
(12, 51, '::1'),
(14, 46, '::1'),
(17, 52, '::1'),
(20, 49, '::1'),
(21, 95, '::1'),
(22, 96, '::1'),
(24, 102, '::1'),
(25, 106, '::1'),
(26, 109, '::1'),
(27, 110, '::1'),
(28, 108, '::1'),
(29, 112, '::1'),
(30, 48, '::1'),
(31, 107, '::1'),
(33, 116, '::1'),
(34, 125, '::1'),
(35, 124, '::1'),
(36, 131, '::1'),
(38, 141, '::1'),
(39, 142, '::1'),
(40, 114, '::1'),
(41, 113, '::1'),
(43, 140, '::1'),
(49, 119, '::1'),
(50, 152, '::1'),
(51, 120, '::1'),
(53, 136, '::1'),
(54, 153, '::1'),
(55, 117, '::1'),
(56, 139, '::1'),
(58, 123, '::1'),
(59, 134, '::1'),
(60, 135, '::1'),
(61, 132, '::1'),
(62, 118, '::1'),
(63, 129, '::1'),
(64, 121, '::1'),
(65, 162, '::1'),
(66, 137, '::1'),
(67, 164, '::1'),
(68, 163, '::1'),
(70, 47, '::2'),
(71, 47, '::3'),
(72, 47, '::4'),
(73, 51, '::2'),
(74, 51, '::3'),
(75, 122, '::1'),
(76, 126, '::1'),
(77, 130, '::1'),
(78, 161, '::1'),
(79, 94, '::1'),
(80, 105, '::1'),
(82, 111, '::1'),
(84, 99, '::1'),
(85, 76, '::1'),
(87, 194, '::1'),
(89, 103, '::1'),
(90, 133, '::1'),
(91, 104, '::1'),
(92, 214, '::1'),
(93, 215, '::1'),
(110, 255, '::1'),
(127, 319, '::1'),
(129, 317, '::1'),
(130, 256, '::1'),
(131, 218, '::1'),
(132, 221, '::1'),
(134, 257, '::1'),
(135, 338, '::1'),
(137, 378, '::1'),
(141, 142, '103.54.150.47'),
(142, 142, '169.61.190.27'),
(143, 392, '103.54.150.47'),
(144, 51, '103.54.150.47'),
(145, 51, '169.60.29.183'),
(146, 393, '103.54.150.47'),
(147, 394, '103.54.150.47'),
(148, 125, '103.127.4.242'),
(149, 392, '180.210.220.103'),
(150, 47, '180.210.220.103'),
(151, 414, '103.54.150.47'),
(152, 414, '169.60.29.183'),
(153, 406, '103.54.150.47'),
(154, 406, '169.60.29.183'),
(155, 435, '103.54.150.47'),
(156, 435, '169.60.29.183'),
(157, 444, '103.54.150.47'),
(158, 444, '169.61.190.27'),
(159, 398, '103.54.150.47'),
(160, 398, '169.61.190.27'),
(161, 412, '103.54.150.47'),
(162, 412, '169.61.133.87'),
(163, 411, '103.54.150.47'),
(164, 411, '169.46.82.252'),
(165, 120, '103.197.205.8'),
(166, 120, '169.61.133.87'),
(167, 399, '203.189.227.70'),
(168, 399, '169.60.29.183'),
(169, 399, '173.252.83.120'),
(170, 399, '173.252.83.24'),
(171, 399, '173.252.83.1'),
(172, 399, '173.252.83.17'),
(173, 399, '173.252.83.12'),
(174, 399, '173.252.83.13'),
(175, 399, '173.252.83.3'),
(176, 403, '203.189.227.70'),
(177, 403, '169.46.82.252'),
(178, 419, '203.189.227.70'),
(179, 419, '169.63.251.251'),
(180, 420, '203.189.227.70'),
(181, 420, '169.63.251.251'),
(182, 434, '203.189.227.70'),
(183, 434, '169.46.82.252'),
(184, 406, '173.252.83.23'),
(185, 406, '173.252.83.21'),
(186, 406, '173.252.83.20'),
(187, 406, '173.252.95.9'),
(188, 406, '173.252.107.118'),
(189, 406, '173.252.95.16'),
(190, 406, '173.252.107.3'),
(191, 406, '173.252.95.26'),
(192, 406, '173.252.107.117'),
(193, 406, '173.252.83.12'),
(194, 406, '173.252.83.16'),
(195, 406, '69.171.251.11'),
(196, 423, '103.54.150.47'),
(197, 423, '169.61.133.87'),
(198, 423, '173.252.95.118'),
(199, 423, '173.252.95.11'),
(200, 423, '173.252.95.6'),
(201, 423, '173.252.107.14'),
(202, 423, '69.171.249.111'),
(203, 423, '173.252.107.7'),
(204, 423, '173.252.107.6'),
(205, 423, '69.171.249.15'),
(206, 423, '69.171.249.120'),
(207, 423, '173.252.95.18'),
(208, 423, '31.13.115.7'),
(209, 423, '74.114.154.10'),
(210, 423, '173.252.95.17'),
(211, 423, '173.252.95.116'),
(212, 423, '54.236.1.11'),
(213, 415, '103.54.150.47'),
(214, 415, '169.61.133.87'),
(215, 418, '103.54.150.47'),
(216, 418, '169.60.29.183'),
(217, 418, '69.171.251.117'),
(218, 418, '69.171.251.13'),
(219, 418, '69.171.251.22'),
(220, 418, '66.220.149.3'),
(221, 418, '173.252.83.20'),
(222, 418, '66.220.149.7'),
(223, 418, '66.220.149.23'),
(224, 418, '173.252.83.13'),
(225, 418, '173.252.83.22'),
(226, 418, '74.114.154.12'),
(227, 423, '66.220.149.21'),
(228, 418, '59.152.11.134'),
(229, 418, '173.252.83.18'),
(230, 418, '173.252.83.9'),
(231, 418, '173.252.83.8'),
(232, 418, '173.252.83.15'),
(233, 418, '173.252.83.6'),
(234, 398, '59.152.11.134'),
(235, 442, '59.152.11.134'),
(236, 442, '169.61.133.87'),
(237, 402, '59.152.11.134'),
(238, 402, '169.61.133.87'),
(239, 402, '173.252.83.7'),
(240, 402, '173.252.83.8'),
(241, 402, '173.252.127.120'),
(242, 402, '173.252.127.28'),
(243, 402, '173.252.127.12'),
(244, 402, '108.174.8.21'),
(245, 402, '173.252.83.5'),
(246, 402, '173.252.83.15'),
(247, 402, '173.252.83.12'),
(248, 402, '173.252.127.20'),
(249, 402, '173.252.95.19'),
(250, 414, '59.152.11.134'),
(251, 404, '59.152.11.134'),
(252, 404, '169.46.82.252'),
(253, 428, '59.152.11.134'),
(254, 428, '169.61.190.27'),
(255, 428, '54.236.1.11'),
(256, 403, '59.152.11.134'),
(257, 418, '66.220.149.116'),
(258, 418, '66.220.149.46'),
(259, 418, '66.220.149.36'),
(260, 418, '66.220.149.1'),
(261, 418, '66.220.149.26'),
(262, 418, '66.220.149.8'),
(263, 423, '66.220.149.30'),
(264, 423, '66.220.149.15'),
(265, 423, '66.220.149.36'),
(266, 418, '66.220.149.34'),
(267, 423, '66.220.149.20'),
(268, 423, '66.220.149.45'),
(269, 402, '173.252.83.17'),
(270, 402, '173.252.83.120'),
(271, 402, '173.252.83.117'),
(272, 402, '173.252.83.20'),
(273, 402, '173.252.83.117'),
(274, 402, '173.252.83.23'),
(275, 402, '173.252.83.20'),
(276, 402, '173.252.83.17'),
(277, 418, '173.252.95.20'),
(278, 418, '173.252.95.25'),
(279, 423, '173.252.95.119'),
(280, 406, '173.252.95.32'),
(281, 406, '173.252.95.111'),
(282, 423, '173.252.95.20'),
(283, 428, '66.249.79.41'),
(284, 402, '173.252.87.9'),
(285, 402, '173.252.87.6'),
(286, 423, '173.252.83.12'),
(287, 428, '54.236.1.13'),
(288, 427, '::1'),
(289, 377, '::1'),
(291, 421, '::1'),
(292, 402, '::1'),
(294, 461, '::1'),
(295, 467, '::1'),
(296, 466, '::1'),
(297, 415, '::1');

-- --------------------------------------------------------

--
-- Table structure for table `widgets`
--

CREATE TABLE `widgets` (
  `id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(191) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `widgets`
--

INSERT INTO `widgets` (`id`, `language_id`, `title`, `description`, `status`) VALUES
(8, 2, 'Coronavirus', '<span style=\"color: rgb(0, 0, 0); font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; font-size: 18px; background-color: rgb(255, 255, 255);\">ঠিক কত পদে ট্রাম্প-মেলানিয়া দম্পতিকে আপ্যায়ন করা হবে, তা কেউ প্রকাশ করেনি। তবে ভারতের গণমাধ্যম এনডিটিভির খবরে বলা হয়েছে, নৈশভোজে তিনটি পর্ব থাকবে। হালকা মুখরোচক পদ আর পানীয় দিয়ে শুরু হবে খাবার পর্ব। এরপর পরিবেশন করা হবে মূল খাবার। শেষে থাকছে মিষ্টান্ন।</span>', 1),
(9, 2, 'ডোনাল্ড ট্রাম্প', '<span style=\"color: rgb(0, 0, 0); font-family: Kiron, SolaimanLipi, Arial, Vrinda, FallbackBengaliFont, Helvetica, sans-serif; font-size: 18px; background-color: rgb(255, 255, 255);\">মার্কিন প্রেসিডেন্ট ডোনাল্ড ট্রাম্পের সম্মানে আজ মঙ্গলবার নৈশভোজের আয়োজন করেছেন ভারতের রাষ্ট্রপতি রামনাথ কোবিন্দ। এতে মার্কিন ফার্স্ট লেডি মেলানিয়া ট্রাম্পসহ প্রায় ১০০ অতিথি উপস্থিত থাকবেন। বিশ্বের ক্ষমতাধর দেশের প্রেসিডেন্ট ও ফার্স্ট লেডিকে আপ্যায়ন করতে আয়োজনের কোনো কমতি নেই রাষ্ট্রপতি ভবনের রান্নাঘরে।</span>', 1),
(10, 1, 'Death of George Floyd', '<span style=\"color: rgb(77, 81, 86); font-family: arial, sans-serif;\">On May 25, 2020, George Perry Floyd, a black man, was killed in the Powderhorn community of Minneapolis, Minnesota, United States</span><br>', 1),
(12, 1, 'Coronavirus: Bangladesh', 'Deaths:6092', 1);

-- --------------------------------------------------------

--
-- Table structure for table `widget_settings`
--

CREATE TABLE `widget_settings` (
  `id` int(11) NOT NULL,
  `feature_inhome` tinyint(4) NOT NULL DEFAULT 0,
  `category_inhome` tinyint(4) NOT NULL DEFAULT 0,
  `follow_inhome` tinyint(4) NOT NULL DEFAULT 0,
  `tag_inhome` tinyint(4) NOT NULL DEFAULT 0,
  `poll_inhome` tinyint(4) NOT NULL DEFAULT 0,
  `calendar_inhome` tinyint(4) NOT NULL DEFAULT 0,
  `newsletter_inhome` tinyint(4) NOT NULL DEFAULT 0,
  `category_incategory` tinyint(4) NOT NULL DEFAULT 0,
  `newsletter_incategory` tinyint(4) NOT NULL DEFAULT 0,
  `calendar_incategory` tinyint(4) NOT NULL DEFAULT 0,
  `category_indetails` tinyint(4) NOT NULL DEFAULT 0,
  `newsletter_indetails` tinyint(4) NOT NULL DEFAULT 0,
  `calendar_indetails` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `widget_settings`
--

INSERT INTO `widget_settings` (`id`, `feature_inhome`, `category_inhome`, `follow_inhome`, `tag_inhome`, `poll_inhome`, `calendar_inhome`, `newsletter_inhome`, `category_incategory`, `newsletter_incategory`, `calendar_incategory`, `category_indetails`, `newsletter_indetails`, `calendar_indetails`) VALUES
(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_languages`
--
ALTER TABLE `admin_languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `advertisements`
--
ALTER TABLE `advertisements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `follows`
--
ALTER TABLE `follows`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fonts`
--
ALTER TABLE `fonts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `generalsettings`
--
ALTER TABLE `generalsettings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `image_albums`
--
ALTER TABLE `image_albums`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `image_categories`
--
ALTER TABLE `image_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `image_galleries`
--
ALTER TABLE `image_galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logos`
--
ALTER TABLE `logos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personality_answers`
--
ALTER TABLE `personality_answers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personality_questions`
--
ALTER TABLE `personality_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personality_results`
--
ALTER TABLE `personality_results`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `poll_answers`
--
ALTER TABLE `poll_answers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `poll_questions`
--
ALTER TABLE `poll_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `poll_results`
--
ALTER TABLE `poll_results`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `title` (`title`),
  ADD KEY `title_2` (`title`),
  ADD KEY `title_3` (`title`);
ALTER TABLE `posts` ADD FULLTEXT KEY `title_4` (`title`);
ALTER TABLE `posts` ADD FULLTEXT KEY `description` (`description`);
ALTER TABLE `posts` ADD FULLTEXT KEY `description_2` (`description`);
ALTER TABLE `posts` ADD FULLTEXT KEY `slug` (`slug`);
ALTER TABLE `posts` ADD FULLTEXT KEY `slug_2` (`slug`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rss_feeds`
--
ALTER TABLE `rss_feeds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seotools`
--
ALTER TABLE `seotools`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `short_lists`
--
ALTER TABLE `short_lists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sitemaps`
--
ALTER TABLE `sitemaps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `socialsettings`
--
ALTER TABLE `socialsettings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_links`
--
ALTER TABLE `social_links`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_providers`
--
ALTER TABLE `social_providers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trivia_answers`
--
ALTER TABLE `trivia_answers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trivia_questions`
--
ALTER TABLE `trivia_questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trivia_results`
--
ALTER TABLE `trivia_results`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `views`
--
ALTER TABLE `views`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `widgets`
--
ALTER TABLE `widgets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `widget_settings`
--
ALTER TABLE `widget_settings`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `admin_languages`
--
ALTER TABLE `admin_languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `advertisements`
--
ALTER TABLE `advertisements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `follows`
--
ALTER TABLE `follows`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `fonts`
--
ALTER TABLE `fonts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `generalsettings`
--
ALTER TABLE `generalsettings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `image_albums`
--
ALTER TABLE `image_albums`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `image_categories`
--
ALTER TABLE `image_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `image_galleries`
--
ALTER TABLE `image_galleries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `logos`
--
ALTER TABLE `logos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `personality_answers`
--
ALTER TABLE `personality_answers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=190;

--
-- AUTO_INCREMENT for table `personality_questions`
--
ALTER TABLE `personality_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `personality_results`
--
ALTER TABLE `personality_results`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `poll_answers`
--
ALTER TABLE `poll_answers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `poll_questions`
--
ALTER TABLE `poll_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `poll_results`
--
ALTER TABLE `poll_results`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=469;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `rss_feeds`
--
ALTER TABLE `rss_feeds`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `seotools`
--
ALTER TABLE `seotools`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `short_lists`
--
ALTER TABLE `short_lists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `sitemaps`
--
ALTER TABLE `sitemaps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `socialsettings`
--
ALTER TABLE `socialsettings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `social_links`
--
ALTER TABLE `social_links`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `social_providers`
--
ALTER TABLE `social_providers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `trivia_answers`
--
ALTER TABLE `trivia_answers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=499;

--
-- AUTO_INCREMENT for table `trivia_questions`
--
ALTER TABLE `trivia_questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=354;

--
-- AUTO_INCREMENT for table `trivia_results`
--
ALTER TABLE `trivia_results`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT for table `views`
--
ALTER TABLE `views`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=298;

--
-- AUTO_INCREMENT for table `widgets`
--
ALTER TABLE `widgets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `widget_settings`
--
ALTER TABLE `widget_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
