-- phpMyAdmin SQL Dump
-- version 4.9.11
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 10, 2023 at 07:44 AM
-- Server version: 10.3.38-MariaDB-log-cll-lve
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `beaunqrp_roaya`
--

-- --------------------------------------------------------

--
-- Table structure for table `aboutus`
--

CREATE TABLE `aboutus` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `headline` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `aboutus`
--

INSERT INTO `aboutus` (`id`, `title`, `description`, `image`, `created_at`, `updated_at`, `deleted_at`, `headline`) VALUES
(6, 'الأهداف ', 'تطبيق مفهوم الحوكمة الإلكترونية\r\nتوطين تقنية المعلومات\r\nرفع الاقتصاد الوطني', 'account/images\\but.jpg', '2019-01-05 06:36:13', '2019-01-24 13:58:55', '2019-01-24 13:58:55', NULL),
(7, 'الرسالة ', 'البحث والتطوير والإبداع في تسخير التقنية وتطبيق أدوات التميز المؤسسي لشركائنا.', 'account/images\\message.jpg', '2019-01-05 06:40:37', '2019-01-24 13:59:53', '2019-01-24 13:59:53', NULL),
(16, 'الرؤية ', 'رواد الجودة والابتكار في دعم التحول الرقمي وتوطين التقنية.', 'account/images\\vision.jpg', '2019-01-22 10:34:24', '2019-01-24 14:00:56', '2019-01-24 14:00:56', NULL),
(17, 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi laoreet urna ante, quis luctus nisi sodales sit amet.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation. You think water moves fast? You should see ice.\r\n\r\nYou think water moves fast? You should see ice. It moves like it has a mind. Like it knows it killed the world once and got a taste for murder. After the avalanche, it took us a weeked do incididunt magna Lorem', 'account/images\\about.jpg', '2019-01-24 14:08:32', '2020-11-14 11:21:29', NULL, 'We Are Professional Website Design & Development Company!'),
(18, 'رؤيتنا', 'سوف نساعد عملائنا على تنمية أعمالهم  وسنكون ملتزمون بتقديم نتائج ممتازة في كل ما نقوم به  بالطرق الفعالة وسنكون صادقين  في تعاملاتنا  وعلى اطلاع بكل ماهو جديد في عالم التصميم الحديث وسنظهر لعملائنا  اهتمامًا حقيقيًا  وسنحرص على تسليم العمل في المواعيد المحددة ', 'account/images/feature_aboutus.jpg', '2019-01-27 08:02:01', '2019-02-13 00:32:33', NULL, NULL),
(19, 'مهمتنا', '    \r\nمساعدة عملائنا في النمو المستمر وتحقيق النتائج التي تمكنهم من التطوير المستمر وتوفير خدمات ذات قيمة مضافة وعالية الجودة ومساعدتهم في العثورعلى العملاء المناسبين والحفاظ عليهم وتنميتهم من خلال استراتيجيات التسويق والتصميم  والبرمجة ذات المستوى العالمي  ', 'account/images/VISION.png', '2019-01-27 09:12:27', '2019-02-13 00:28:30', NULL, NULL),
(20, 'نحن معك االيوم وغدا', 'اليوم معك وغدا سنكون هنا من أجلك. هناك العديد من الشركات تأتي وتذهب ولكننا نخطط لأن نكون موجودين الى الأبد. هدفنا ان نبني شراكة أبديه معك. ', 'account/images/Hand.png', '2019-01-27 09:18:03', '2019-02-13 19:11:13', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `id` int(11) NOT NULL,
  `offerspackages_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `mail` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL,
  `namepackage` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `top` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `icon`, `image`, `slug`, `status`, `top`, `created_at`, `updated_at`) VALUES
(1, '{\"ar\":\"تطوير\",\"en\":\"Development\"}', 'jhbjh', NULL, NULL, 0, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(250) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `title`, `description`, `image`, `created_at`, `updated_at`, `deleted_at`) VALUES
(12, 'Garden Diars', '', 'account/images\\Logo.jpeg', '2019-01-22 09:53:02', '2019-01-28 21:16:01', NULL),
(13, 'wfwfr', 'ssssss', 'account/images\\choose_img - Copy.png', '2019-01-22 10:06:35', '2019-01-27 11:15:58', NULL),
(14, 'تصميم المواقع   ', '', 'account/images\\Logo.jpeg', '2019-01-27 11:21:14', '2019-01-27 11:21:14', NULL),
(15, 'تصميم المواقع   ', '', 'account/images\\Logo.jpeg', '2019-01-27 11:21:30', '2019-01-27 11:21:30', NULL),
(16, 'تصميم المواقع   ', '', 'account/images\\choose_img - Copy.png', '2019-01-27 11:22:33', '2019-01-27 11:22:33', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `contactus`
--

CREATE TABLE `contactus` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `map` varchar(255) NOT NULL,
  `mail` varchar(255) NOT NULL,
  `adress` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `calendar` varchar(255) NOT NULL,
  `social` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `contactus`
--

INSERT INTO `contactus` (`id`, `title`, `map`, `mail`, `adress`, `phone`, `calendar`, `social`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'عنوان السعوديه', 'https://www.google.com/maps/embed?pb=!1m17!1m8!1m3!1d6913.310116589366!2d31.251424000000004!3d29.960598999999995!3m2!1i1024!2i768!4f13.1!4m6!3e6!4m0!4m3!3m2!1d29.960598599999997!2d31.2514236!5e0!3m2!1sen!2seg!4v1548314155823\r\n', 'info@matrixclouds.com', '7, شارع 103 - المعادي - القاهرة', '  01014141625', '', 'https://facebook.com', '2019-01-05 10:13:01', '2019-01-28 21:24:56', '2019-01-28 21:24:56'),
(2, 'عنوان مصر', 'https://www.google.com/maps/embed?pb=!1m17!1m8!1m3!1d6913.310116589366!2d31.251424000000004!3d29.960598999999995!3m2!1i1024!2i768!4f13.1!4m6!3e6!4m0!4m3!3m2!1d29.960598599999997!2d31.2514236!5e0!3m2!1sen!2seg!4v1548314155823\r\n', 'info@matrixtranslation.net', '7, 103 St, Maadi - Cairo - Egypt', '01014141625', '', 'https://www.facebook.com/matrixtranslate/', '2019-01-14 16:12:20', '2019-01-28 21:25:02', '2019-01-28 21:25:02'),
(3, '', 'ثفغاثف', 'matrixdeveloper1@gmail.com', 'kkkkkkkkkkkkk', '011507689375', '', '', '2019-01-26 11:24:54', '2019-01-26 11:28:01', '2019-01-26 11:28:01'),
(4, 'فرع مصر ', 'https://www.google.com/maps/embed?pb=!1m10!1m8!1m3!1d6913.310116589366!2d31.251424000000004!3d29.960598999999995!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2seg!4v1547457039646', 'shereen.shapaan@gmail.com', '7 شارع 103- المعادي - القاهرة ', '01092741599', 'Opening: 09am-5pm', '', '2019-01-28 21:25:57', '2020-11-14 11:05:06', NULL),
(5, 'فرع قطر', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2381.7399040776495!2d-6.261147484122739!3d53.34791197997939!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1                      !3m3!3m2!1sen!2sus!4v1462581622087', 'info@matrixclouds.com ', 'الدوحة- ثطر', '0097455820661', ' مواعيد العمل: من السبت الى الخميس من الساعة 9 صباحا حتى ال 5 مساءا', '', '2019-02-27 17:32:13', '2019-02-28 13:57:55', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `details`
--

CREATE TABLE `details` (
  `id` int(11) NOT NULL,
  `name` varchar(190) NOT NULL,
  `check` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `details`
--

INSERT INTO `details` (`id`, `name`, `check`, `created_at`, `updated_at`) VALUES
(1, 'لوحة تحكم', 1, NULL, NULL),
(5, 'صفحات غير محدودة', 1, NULL, NULL),
(6, 'صفحات غير محدودة', 0, NULL, NULL),
(7, 'مكتبة فيديوهات', 1, NULL, NULL),
(8, 'مكتبة فيديوهات', 0, NULL, NULL),
(9, 'خريطة', 1, NULL, NULL),
(10, 'خريطة', 0, NULL, NULL),
(11, 'فورم مراسلة', 1, NULL, NULL),
(12, 'فورم مراسلة', 0, NULL, NULL),
(13, 'شات اونلاين', 1, NULL, NULL),
(14, 'شات اونلاين', 0, NULL, NULL),
(15, 'سلة تسوق', 1, NULL, NULL),
(16, 'سلة تسوق', 0, NULL, NULL),
(17, 'Check Out', 1, NULL, NULL),
(18, 'Check Out', 0, NULL, NULL),
(19, 'بانرات اعلانية داخل الموقع', 1, '2019-02-18 08:58:52', '2019-02-18 08:58:52'),
(20, 'بانرات اعلانية داخل الموقع', 0, NULL, NULL),
(21, 'تحليل عدد الزوار', 1, NULL, NULL),
(22, 'تحليل عدد الزوار', 0, NULL, NULL),
(23, 'الدفع اونلاين', 1, NULL, NULL),
(24, 'الدفع اونلاين', 0, NULL, NULL),
(25, 'صلاحيات المستخدمين', 1, NULL, NULL),
(26, 'صلاحيات المستخدمين', 0, NULL, NULL),
(27, 'دومين مجاني', 1, NULL, NULL),
(28, 'دومين مجاني', 0, NULL, NULL),
(29, 'استضافة مجانية', 1, NULL, NULL),
(30, 'استضافة مجانية', 0, NULL, NULL),
(31, 'صيانة مجانية', 1, NULL, NULL),
(32, 'صيانة مجانية', 0, NULL, NULL),
(33, 'صيانة مجانية', 1, NULL, NULL),
(34, 'صيانة مجانية', 0, NULL, NULL),
(135, 'لوحة تحكم', 1, '2019-02-19 15:31:13', '2019-02-19 15:31:13'),
(136, 'لوحة تحكم', NULL, '2019-02-19 15:31:21', '2019-02-19 15:31:21'),
(137, 'تصميم متجاوب', 1, '2019-02-19 15:49:28', '2019-02-26 15:43:09'),
(138, 'تصميم متوافق مع كل الأجهزة	', 1, '2019-02-19 15:49:34', '2019-02-19 15:49:34'),
(139, 'صفحات غير محدودة', 1, '2019-02-19 15:49:51', '2019-02-19 15:49:51'),
(140, 'صفحات غير محدودة', NULL, '2019-02-19 15:49:57', '2019-02-19 15:49:57'),
(141, 'معرض صور', NULL, '2019-02-19 16:02:11', '2019-02-19 16:02:11'),
(142, 'معرض صور', 1, '2019-02-19 16:02:18', '2019-02-19 16:02:18'),
(143, 'مكتبة فيديوهات', NULL, '2019-02-19 16:02:32', '2019-02-19 16:02:32'),
(144, 'مكتبة فيديوهات', 1, '2019-02-19 16:02:40', '2019-02-19 16:02:40'),
(145, 'خريطة جوجل', NULL, '2019-02-19 16:02:52', '2019-02-19 16:02:52'),
(146, 'خريطة جوجل', 1, '2019-02-19 16:02:58', '2019-02-19 16:02:58'),
(147, 'فورم مراسلة', NULL, '2019-02-19 16:03:11', '2019-02-19 16:03:11'),
(148, 'فورم مراسلة', 1, '2019-02-19 16:03:16', '2019-02-19 16:03:16'),
(149, 'شات اونلاين', NULL, '2019-02-19 16:03:38', '2019-02-19 16:03:38'),
(150, 'شات اونلاين', 1, '2019-02-19 16:03:45', '2019-02-19 16:03:45'),
(151, 'سلة تسوق', NULL, '2019-02-19 16:03:54', '2019-02-19 16:03:54'),
(152, 'سلة تسوق', 1, '2019-02-19 16:04:00', '2019-02-19 16:04:00'),
(153, 'Check Out', NULL, '2019-02-19 16:04:13', '2019-02-19 16:04:13'),
(154, 'Check Out', 1, '2019-02-19 16:04:19', '2019-02-19 16:04:19'),
(155, 'الدفع الالكتروني', NULL, '2019-02-19 16:05:18', '2019-02-19 16:05:18'),
(156, 'الدفع الالكتروني', 1, '2019-02-19 16:05:25', '2019-02-19 16:05:25'),
(157, 'SEO', NULL, '2019-02-19 16:05:45', '2019-02-26 15:46:05'),
(158, 'SEO', 1, '2019-02-19 16:05:52', '2019-02-26 15:46:50'),
(159, 'صيانة مجانية', NULL, '2019-02-19 16:07:53', '2019-02-19 16:07:53'),
(160, 'صيانة مجانية', 1, '2019-02-19 16:07:59', '2019-02-19 16:07:59'),
(161, 'صلاحيات المستخدمين', NULL, '2019-02-19 16:19:41', '2019-02-19 16:19:41'),
(162, 'صلاحيات المستخدمين', 1, '2019-02-19 16:19:47', '2019-02-19 16:19:47'),
(163, 'تحليل عدد الزوار', NULL, '2019-02-19 16:20:06', '2019-02-19 16:20:06'),
(164, 'تحليل عدد الزوار', 1, '2019-02-19 16:20:12', '2019-02-19 16:20:12'),
(165, 'دومين مجاني', NULL, '2019-02-19 16:20:22', '2019-02-19 16:20:22'),
(166, 'دومين مجاني', 1, '2019-02-19 16:20:28', '2019-02-19 16:20:28'),
(167, 'استضافة مجانية', NULL, '2019-02-19 16:20:36', '2019-02-19 16:20:36'),
(168, 'استضافة مجانية', 1, '2019-02-19 16:20:41', '2019-02-19 16:20:41'),
(169, 'المساحة: 5000 ميجا', 1, '2019-02-20 14:07:16', '2019-02-20 14:20:01'),
(170, 'المساحة: 10 جيجا', 1, '2019-02-20 14:51:34', '2019-02-20 14:51:34'),
(171, 'المساحة: 50 جيجا', 1, '2019-02-20 14:52:08', '2019-02-20 14:52:08'),
(172, 'المساحة: غير محدودة', 1, '2019-02-20 14:52:24', '2019-02-20 14:52:24'),
(173, 'نقل البيانات: 10 جيجا', 1, '2019-02-20 14:52:54', '2019-02-20 14:52:54'),
(174, 'نقل البيانات: 100 جيجا', 1, '2019-02-20 14:58:15', '2019-02-20 14:58:15'),
(175, 'نقل البيانات:  غير محدودة', 1, '2019-02-20 14:58:39', '2019-02-20 14:58:49'),
(176, 'البريد الالكتروني: 5 حسابات', 1, '2019-02-20 14:59:58', '2019-02-20 14:59:58'),
(177, 'البريد الالكتروني: 20  حساب ', 1, '2019-02-20 15:00:35', '2019-02-20 15:00:35'),
(178, 'البريد الالكتروني: 50  حساب ', 1, '2019-02-20 15:01:03', '2019-02-20 15:01:03'),
(179, 'البريد الالكتروني:  غير محدود', 1, '2019-02-20 15:01:41', '2019-02-20 15:01:41'),
(180, 'نقل البيانات: 50 جيجا	', 1, '2019-02-20 15:11:49', '2019-02-20 15:11:49'),
(181, 'الدومين مجاني', 1, '2019-02-20 15:13:58', '2019-02-20 15:13:58'),
(182, 'الدومين مجاني', NULL, '2019-02-20 15:14:09', '2019-02-20 15:14:09'),
(183, 'نسخ احتياطي شهري', 1, '2019-02-20 15:14:51', '2019-02-20 15:14:51'),
(184, 'نسخ احتياطي اسبوعي', 1, '2019-02-20 15:15:05', '2019-02-20 15:15:05'),
(185, 'نسخ احتياطي يومي', 1, '2019-02-20 15:15:17', '2019-02-20 15:15:17'),
(186, 'قواعد البيانات: 5', 1, '2019-02-20 15:15:50', '2019-02-20 15:15:50'),
(187, 'قواعد البيانات: 10', 1, '2019-02-20 15:16:00', '2019-02-20 15:16:00'),
(188, 'قواعد البيانات: 50', 1, '2019-02-20 15:16:10', '2019-02-20 15:16:10'),
(189, 'قواعد البيانات: غير محدودة', 1, '2019-02-20 15:16:24', '2019-02-20 15:16:24'),
(190, 'SSL', 1, '2019-02-20 15:16:48', '2019-02-20 15:16:48'),
(191, 'SSL', NULL, '2019-02-20 15:16:54', '2019-02-20 15:16:54'),
(192, 'Domain Privacy', 1, '2019-02-20 15:17:16', '2019-02-20 15:17:16'),
(193, 'Domain Privacy', NULL, '2019-02-20 15:17:22', '2019-02-20 15:17:22'),
(194, 'IP Address', 1, '2019-02-20 15:17:44', '2019-02-20 15:17:44'),
(195, 'IP Address', NULL, '2019-02-20 15:17:50', '2019-02-20 15:17:50'),
(196, 'نقل الموقع مجاني', 1, '2019-02-20 15:18:18', '2019-02-20 15:18:18');

-- --------------------------------------------------------

--
-- Table structure for table `feature`
--

CREATE TABLE `feature` (
  `id` int(10) UNSIGNED NOT NULL,
  `services_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `feature`
--

INSERT INTO `feature` (`id`, `services_id`, `title`, `description`, `image`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 6, 'tryrtttttttttttttttttttt', 'fyjtyjthhhhhhhhhhhhhhhhhhh', 'account/images\\4.jpg', NULL, '2019-01-22 12:12:20', '2019-01-22 12:12:20'),
(2, 6, 'تصميم احترافي  ', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز ...', 'account/images\\Hydrangeas.jpg', '2019-01-21 05:59:22', '2019-01-22 06:35:38', NULL),
(3, 6, 'تصميم متجاوب', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز ...', 'account/images\\ujh.jpg', '2019-01-22 06:37:16', '2019-01-22 06:37:16', NULL),
(4, 6, 'تصميم سريع', 'هناك حقيقة مثبتة منذ زمن طويل وهي أن المحتوى المقروء لصفحة ما سيلهي القارئ عن التركيز ...', 'account/images\\ujh.jpg', '2019-01-22 06:37:38', '2019-01-22 06:37:38', NULL),
(5, 12, 'تصميم احترافي', 'كلمة الاحترافية لا تعني هنا الشكل فقط ولكن نعمل علي اخراج موقع متوافق مع كل معايير الاحترافية من شكل وتناسق الوان وسهولة تصفح ومرونة وجاذبية', 'account/images/5a74764ec14f9b0001c33ad2_7b934-1pu7wwmx3jata6ccdkvswpa_du6azv-p-2000.jpeg', '2019-01-28 20:50:22', '2019-01-28 20:50:22', NULL),
(6, 8, 'ktuk', 'utdjkdt', 'account/images/gallery_img5.jpg', '2019-01-28 20:53:15', '2019-01-28 20:56:10', '2019-01-28 20:56:10'),
(7, 15, 'تصميم احترافي', 'كلمة الاحترافية هنا لا تعني الشكل فقط ولكن أيضا هي العمل على انشاء موقع متكامل ومتوافق مع كافة معاييرالاحترافية من شكل وتناسق الوان وسهولة تصفح ومرونة وجاذبية', 'account/images/megamenu-ui-ux.png', '2019-02-07 14:30:32', '2019-02-11 14:19:46', NULL),
(8, 15, 'تصميم متجاوب', 'ثق تماما بانك عند التعاقد معنا علي تصميم موقعك بانك ستحصل علي موقع كامل متجاوب مع كافة الاجهزة والمتصفحات سواء عن طريق أجهزة الكمبيوتر او الهواتف', 'account/images/images.png', '2019-02-09 14:42:39', '2019-02-11 16:21:40', NULL),
(9, 15, 'تصميم سريع', 'أصبح من اهم العوامل التي تجعل من موقعك محبوب من المستخدم ومن محركات البحث هي السرعة لذلك حرصنا جيدا علي تسليمك موقع سريع 100%', 'account/images/speed.png', '2019-02-11 16:27:29', '2019-02-11 16:27:29', NULL),
(10, 15, 'ضمان الاستمرارية', 'نحن علي ثقة تامة من جودة تصميماتنا وقدرتها علي الاستمرار والمنافسة في السوق فترة كبيرة جدا لذلك نعطي فترة ضمان خمس سنوات كاملة عن اي مشاكل فد تحدث في التصميم', 'account/images/insurance.jpg', '2019-02-11 16:38:01', '2019-02-11 16:52:40', NULL),
(11, 16, 'برمجة خاصة', 'مهما كانت متطلباتك الخاصة بموقعك سنقوم بتنفيذها لك كما تريد,كافة المواقع التي نعمل عليها تكون مكتوبة باكواد خاصه بنا مما يجعل موقعك دائما في امان وقابل للتطوير والتحديث بطريقة سهلة', 'account/images/Special.png', '2019-02-11 16:51:07', '2019-02-11 16:51:07', NULL),
(12, 16, 'لوحة تحكم حديثة', 'لوحة التحكم التي نعمل عليها في انشاء مواقغنا لا تحتاج الي اي تدريب من جانبنا لانها مصممة خصيصا لراحتك ومساعدتك في ادارة الموقع بسهولة, ومع ذلك فريقنا جاهز في اي وقت لتدريبكم على استخدامها', 'account/images/System-control-panel-icon.png', '2019-02-11 16:58:25', '2019-02-11 16:58:57', NULL),
(13, 16, 'حماية من الاختراق', 'سنضمن لك حماية كاملة لمعلوماتك فحماية موقعك من الاختراق والحماية من الهجمات الالكترونية وكتابة كود موثوق وخالي من الثغرات هي مسؤلياتنا والضمان الذي نقدمه لك', 'account/images/hack.png', '2019-02-11 17:53:01', '2019-02-11 17:54:19', NULL),
(14, 16, 'تهيئة كاملة مع محركات البحث', 'عوامل ظهور موقعك في مقدمة محركات البحث تتم عن طريق مرحلتين مرحلة داخل الموقع ومرحلة خارجه سنقوم بالتهيئة الداخلية الكاملة لموقعك مما سيساعدك في الظهور سريعا في مقدمة محركات البحث.', 'account/images/SEO.png', '2019-02-11 18:35:51', '2019-02-11 18:35:51', NULL),
(15, 18, ' نسخ احتياطية', 'لا تقلق بشان ملفات موقعك, عملية النسخ الاحتياطي لدينا تتم بشكل يومي وستقدم لك  في اي وقت بدون اي مشاكل وباخر تحديث بداخل الملفات', 'account/images/bachup.png', '2019-02-12 15:41:10', '2019-02-12 15:41:10', NULL),
(16, 18, 'استضافة غير محدودة', 'مهما زاد حجم الملفات او الايميلات او عدد الزوار للموقع لا تقلق بشأن ذلك فنجن هنا نقدم استضافات غيرمحدودة السرعة والايميلات والمساحة', 'account/images/hosting-icon.jpg', '2019-02-12 15:54:50', '2019-02-12 15:58:15', NULL),
(17, 18, 'سيرفرات محمية وأمنة', 'كافة السيرفرات التي نقدمها هي سيرفرات أمنة بشكل كامل من الفيروسات ومحمية حماية كاملة من اي هجمات او عمليات اختراق', 'account/images/hack.png', '2019-02-12 15:59:12', '2019-02-12 15:59:12', NULL),
(18, 18, 'دعم فني طوال الوقت', 'اذا واجهتك مشكلة في اي شيء بداخل الموقع لا تقلق فلدينا فريق عمل احترافي سيقوم بالعمل علي حل المشكلة بشكل احترافي وفي اسرع وقت\r\n', 'account/images/cloud_servers_icon02.png', '2019-02-12 16:01:07', '2019-02-12 16:01:07', NULL),
(19, 19, 'حملات تسويقية فعالة', 'عندما تختار التعامل معنا في الحملات التسويقية ، سنجعلك مطمئن دوما  من نجاح حملتك الاعلانية  لانه بيتم إدارتها من قبل خبراء وأخصائيين ', 'account/images/ppc-icon-new.png', '2019-02-12 16:51:32', '2019-02-12 16:52:15', NULL),
(20, 19, 'ادارة احترافية لحسابات السوشيال ميديا', 'نبذل قصارى جهدنا للوصول بحساباتك على السوشيال ميديا الى كل المستهدفين الذي ترغب بالحصول عليهم . ونسعى إلى زيادة الوعي بعلامتك التجارية  وكذلك تعزيز معدل التحويل الخاص بك مع استراتيجيات وسائل الإعلام الاجتماعية.  ', 'account/images/social-media-icons.png', '2019-02-12 17:25:58', '2019-02-12 17:25:58', NULL),
(21, 19, 'محتوى ابداعي', 'سواء كنت تبحث عن محتوى تسويقي من الصفر أو كنت ترغب فقط في تنشيط محتوى موقعك الحالي أو إضافته، سنساعدك في خلق ونقل  رسالتك التسويقية باحترافية ', 'account/images/creative-content-512.png', '2019-02-12 17:56:33', '2019-02-12 17:57:30', NULL),
(22, 20, 'تصميم علامة تجارية احترافية', 'سواء كنت تقوم بتحديث العلامة التجارية أو تبدأ من الصفر، سيقوم مصممينا بمساعدتك  في تطوير علامة تجارية قوية ومتسقة ولا تنسى . ', 'account/images/logodesign.png', '2019-02-12 18:29:11', '2019-02-12 18:29:11', NULL),
(23, 20, 'الاهتمام الشخصي بكل عميل ', 'بصفتي مالك الشركة ، أشرف شخصياً على كل مشروع. كما أستخدم مصممين موهوبين ومحترفين  بنقوم بالعمل مع عدد محدود من العملاء في وقت واحد لضمان حصولك على اهتمامي الشخصي . هدفي هو جعل كل عميل  يشعر وكأنه عميلي الوحيد!', 'account/images/images.jpg', '2019-02-13 00:41:18', '2019-02-13 00:42:25', NULL),
(24, 20, 'تصميمات عصرية', 'يجب أن تكون العلامة التجارية عصرية قابلاة للتكيف مع العديد من التطبيقات المختلفة. سيتم استخدامها عبر الإنترنت ، في توقيعات البريد الإلكتروني ، على القمصان ، لافتات الشوارع ، وما إلى ذلك. ويجب ان تكون ملائمة لكل مكان من هذه الأماكن', 'account/images/ADAPTABLE.png', '2019-02-13 15:51:13', '2019-02-13 15:52:26', NULL),
(25, 21, 'ألتسليم في الوقت المناسب', 'ما يقرب من ثلثي المشاريع تفشل في تحقيق أهدافها ، لانه لا يتم تسليمها في الوقت المناسب ،.الهدف من انشاء تطبيقات الويب هو تسريع وتسهيل العمل في الشركات لذلك قمنا بمراعاة ذلك جيد خلال العمل علي المشروع الخاص بك ', 'account/images/java-14.png', '2019-02-14 02:59:06', '2019-02-14 02:59:06', NULL),
(26, 24, 'محتوى جذاب', 'حركات التصميمات التي تجذب وتلفت انتباه الجمهور نابعة من جودة المحتوى المكتوب المعبر عن  التصميم لذلك نعتني بكتابة الإسكريبت جيدًا\r\n\r\n', 'account/images/Special.png', '2019-02-16 15:54:14', '2019-02-16 15:54:14', NULL),
(27, 24, 'صوت ملفت ', 'يعد الصوت جزءًا مهمًا من هوية علامتك التجارية. لذلك يعتبر المعلق الصوتي والتأثيرات الصوتية و أصوات الخلفية من أهم العوامل التي تعكس روح عملك الى الجمهور. لدى ماتريكس كل المقومات والادوات لمساعدتك في انتاج صوت فريد وملفت وجذاب ومتناسق مع محتوى السكريبت الم', 'account/images/voice-over-microphone-252x300.png', '2019-02-16 16:55:53', '2019-02-16 17:11:43', NULL),
(28, 24, 'تصميمات خاصة', 'سنقوم بعمل تصميمات احترافية وعصرية ومصممه خصيصا لمحتواك . سيعرض التصميم الذي تم تصميمه بشكل خاص لك مرتبطة ارتباط كلي بالمحتوى المكتوب مما يجعل من عرض الفيديو يظهر في أفضل صورة ممكنة وسيساعد قسم التسويق في الوصول للعميل المستهدف بسرعة ', 'account/images/download.jpg', '2019-02-16 19:47:09', '2019-02-16 19:47:09', NULL),
(29, 21, 'لوحة تحكم حديثة', 'لوحة التحكم التي نعتمد عليها في التطبيقات النتي ننشأها مليئة بالميزات التي تم إنشاؤها لجعل ادارة اعمالك أسهل. كلها تعمل بسلاسة  لتحريك القوائم . وتستطيع العمل عليها من كافة الاجهزة ', 'account/images/-Control-Panel.ico', '2019-02-16 20:22:13', '2019-02-16 20:22:13', NULL),
(30, 21, 'التحديث بشكل مستمر', 'نعمل على إصدار تحديثات مستمرة على المدى الطويل وبنقوم بطرح العديد من المميزات طوال الوقت. بمجرد الاتفاق معنا على العمل في التطبيق الخاص بك يحق لك الاستفادة بشكل مجاني بكل التحديثات المستقبلية.', 'account/images/update.png', '2019-02-17 14:28:43', '2019-02-17 14:29:25', NULL),
(31, 22, 'دراسة الفكرة والاستراتيجية ', 'ننتعاون مع فريقك لدراسة الفكرة والاستراتيجية  ووضع حلول  تقنية  مع التركيز على النمو والتطوير في المستقبل. ووضع خطة لتحقيق الدخل والاستثمار', 'account/images/step-1-lg.png', '2019-02-17 23:41:35', '2019-02-17 23:41:35', NULL),
(32, 22, 'تصميم احترافي ', 'نسعى أن يبرز تطبيقك من الوهلة الأولى ، ويعكس هوية علامتك التجارية ، ويوفر تصميم تجذب المستخدمين. نحن نتبع ما يجب فعله دائما  من Apple و Google لإنشاء تصميمات يسهل استخدامها.', 'account/images/Ui_Ux_Design-512.png', '2019-02-18 00:16:34', '2019-02-18 00:16:34', NULL),
(33, 22, 'نتائج سريعة', 'لمساعدتك على المنافسة والتفوق على منافسيك ، نهدف إلى تقليص الفجوة بين فكرتك والنتيجة التي ستحصل عليها .نقدم لك  مجموعة كاملة من خدمات تطوير تطبيقات الموبايل الكاملة التي تمكنك من ابراز خدماتك ومنتجاتك والحصول على نتائج سريعة ', 'account/images/results-icon-about.png', '2019-02-18 00:59:16', '2019-02-18 00:59:16', NULL),
(34, 22, 'دعم فني مستمر', 'لا تكتفي باطلاق المشروع وحسيب ولكن نقوم بتحديث المشروع بشكل مستمر ، ونقوم بتقديم دعم فني مستمرلتحسين التطبيق وتطويره. ويستخدم فريقنا تقارير ومحادثات يومية  بالبريد الإلكتروني وعبر الهاتف  وزيارات ميدانية لتقديم الدعم الفني.', 'account/images/customer-support.png', '2019-02-18 14:04:56', '2019-02-18 14:04:56', NULL),
(35, 25, 'التخطيط والاستراتيجية', 'المستشارون يساعدون الشركات من خلال التحليل والإحصائيات والاستراتيجية. نقوم بمساعدتك من خلال مستشارين ذوي خبرة لتخطيط الخطوات الأساسية للاعمال الناشئة.', 'account/images/creative-content-512.png', '2019-02-18 15:20:41', '2019-02-18 15:20:41', NULL),
(36, 25, 'تطوير الهيكل التنظيمي', 'يجب على الشركات الناشئة تنفيذ عدة عناصر في وقت واحد. يستطيع للمستشارين لدينا في  المساعدة على تنفيذ خطوات رئيسية في المراحل الأولى من العمل.', 'account/images/Structure.png', '2019-02-18 15:42:47', '2019-02-18 15:42:47', NULL),
(37, 25, 'تطوير ونمو الانتاج', 'سنقوم بتوفير مستشارين لمساعدة الشركات في عمليات النمو ، وتوفير الادوات اللازمة التي ستساعد الشركات في تطوير الأعمال ، والشبكات الداخلية ، والشبكات الخارجية ، والمساعدة في الاستثمارات التكنولوجية لزيادة الإنتاجية العامة.', 'account/images/ADAPTABLE.png', '2019-02-18 15:50:31', '2019-02-18 15:50:31', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `icons`
--

CREATE TABLE `icons` (
  `id` int(11) NOT NULL,
  `icon` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `icons`
--

INSERT INTO `icons` (`id`, `icon`) VALUES
(1, 'fa fa-globe'),
(2, 'fa fa-paint-brush'),
(3, 'fa fa-mobile');

-- --------------------------------------------------------

--
-- Table structure for table `landing`
--

CREATE TABLE `landing` (
  `id` int(11) NOT NULL,
  `title` varchar(250) NOT NULL,
  `description` text NOT NULL,
  `imag` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `landing`
--

INSERT INTO `landing` (`id`, `title`, `description`, `imag`, `created_at`, `updated_at`) VALUES
(1, 'تصميم المواقع الالكترونية', 'كلمة الاحترافية لا تعني الشكل فقط ولكن أيضا هي العمل على انشاء موقع متكامل ومتوافق مع كافة معاييرالاحترافية من شكل وتناسق الوان وسهولة تصفح ومرونة وجاذبية', 'account/images/Web design.png', '2019-03-14 11:20:01', '2019-03-20 16:28:55'),
(2, 'برمجة تطبيقات الويب', 'من خلال تطبيقات الويب التي نقوم بإنشاؤها باستخدام أحدث تقنيات وممارسات الويب مفتوحة المصدر سنقدم لك تطبيقات احترافية وآمنة .', 'account/images/web_application_framework-01.png', '2019-03-20 18:31:29', '2019-03-20 18:31:29'),
(3, 'التسويق الالكتروني', 'نقوم بدعم الشركات والهيئات من خلال مجموعة متنوعة من الحلول وخدمات الاستشارات التسويقية الإلكترونية', 'account/images/Lead-Generation.png', '2019-03-21 12:43:26', '2019-03-21 12:43:26'),
(4, 'الفيديوهات الدعائية', 'اضف اللمسة الحيوية إلي المحتوي الإعلاني لشركتك وحقق إنتشار كبير باستخدام فيديوهات موشن جرافيك فى الحملات التسويقية لخدماتك', 'account/images/motiongraphics.png', '2019-03-21 13:35:29', '2019-03-21 13:35:29'),
(5, 'تصميم العلامة التجارية', 'يعد شعارك جزءًا مهمًا للترويج والتسويق لنشاطك التجاري وهو أول شيء يلفت نظر العميل المحتمل. يدعم تصميم الشعار الخاص جميع المواد التسويقية والترويجية وموقع الويب الخاص بك لجذب الانتباه وتحفيزالعملاء بالاهتمام بما تقدمه.', 'account/images/Building-a-Visually-Consistent-and-Memorable-Identity-as-a-Brand.png', '2019-03-21 13:41:51', '2019-03-21 15:42:13'),
(6, 'برمجة تطبيقات الموبايل', 'اذا كنت تريد إنشاء تطبيق للموبايل ، فقد قمنا بتوفيركل انواع المنصات التي خصصت. بما في ذلك iOS و Android و Windows Mobile', 'account/images/get-more-phone-calls-from-website.jpg', '2019-03-21 13:43:40', '2019-03-21 13:43:40');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `mail` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `message` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `name`, `mail`, `subject`, `phone`, `message`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'hamada', 'matrixdeveloper1@gmail.com', 'swrgte', '011507689375', 'rgerwggwg', '2019-01-27 12:47:43', '2019-02-26 17:53:05', '2019-02-26 17:53:05'),
(2, '', 'hamadadeveloper1@gmail.com', '', '', '', '2019-01-27 12:58:24', '2019-02-26 17:53:09', '2019-02-26 17:53:09'),
(3, '', 'matrixdeveloper1@gmail.com', '', '', '', '2019-01-27 12:59:51', '2019-02-26 17:53:13', '2019-02-26 17:53:13'),
(4, 'hazem fawzi', 'hazem.dash@gmail.com', 'test', '01096563501', 'test test', '2019-02-09 14:51:09', '2019-02-26 17:53:17', '2019-02-26 17:53:17'),
(5, '', '', '', '', '', '2019-02-20 13:20:52', '2019-02-26 17:53:22', '2019-02-26 17:53:22'),
(6, 'hazem fawzi', 'admin_manager@matrixtranslation.net', 'test', '01096563501', 'test', '2019-02-20 13:36:06', '2019-02-26 17:53:27', '2019-02-26 17:53:27'),
(7, '', '', '', '', '', '2019-02-20 14:23:35', '2019-02-26 17:53:31', '2019-02-26 17:53:31'),
(8, 'Admin', 'admin_manager@matrixtranslation.net', 'test', '01096563501', 'https://www.youtube.com/watch?v=giH1ZuxLW6o&feature=youtu.be', '2019-02-20 14:32:52', '2019-02-26 17:53:35', '2019-02-26 17:53:35'),
(9, 'hazem fawzi', 'admin_manager@matrixtranslation.net', 'test', '01096563501', 'https://xd.adobe.com/view/63586009-ffd1-4ce6-7d52-ab7d4ef27001-1569/', '2019-02-21 19:43:46', '2019-02-26 17:53:39', '2019-02-26 17:53:39'),
(10, 'VincentBox', 'bgrge@hotmail.com', 'Find yourself a girl for the night in your city', '89275344978', 'The best women for sex in your town: https://lil.ink/getsexinyourcity38363', '2019-02-23 07:21:20', '2019-02-26 17:53:45', '2019-02-26 17:53:45'),
(11, 'VincentBox', 'j_t_keck@msn.com', 'Meet sexy girls in your city', '81254682827', 'The best girls for sex in your town: http://rih.co/getsexinyourcity29052', '2019-02-24 05:14:59', '2019-02-26 17:53:50', '2019-02-26 17:53:50'),
(12, 'hazem fawzi', 'admin_manager@matrixtranslation.net', 'test', '01096563501', 'test', '2019-02-24 23:59:11', '2019-02-26 17:53:55', '2019-02-26 17:53:55'),
(13, 'VincentBox', 'harveensoni@gmail.com', 'The best girls for sex in your town', '81838622132', 'Beautiful women for sex in your town: http://go.fireontherim.com/getsexinyourcity60267', '2019-02-25 04:31:07', '2019-02-26 17:54:00', '2019-02-26 17:54:00'),
(14, 'hamada', 'matrixdeveloper1@gmail.com', 'swrgte', '011507689375', 'ggggggggggggg', '2019-02-25 16:29:30', '2019-02-26 17:54:06', '2019-02-26 17:54:06'),
(15, 'hamada', 'matrixdeveloper1@gmail.com', 'swrgte', '011507689375', 'gggggf', '2019-02-25 16:30:41', '2019-02-26 17:54:12', '2019-02-26 17:54:12'),
(16, 'VincentBox', 'lstephens40@yahoo.com', 'The best women for sex in your town', '89766322795', 'Beautiful girls for sex in your city: https://aaa.moda/getsexinyourcity96472', '2019-02-26 17:27:04', '2019-02-26 17:54:16', '2019-02-26 17:54:16'),
(17, 'hazem fawzi', 'admin_manager@matrixtranslation.net', 'test', '01096563501', 'test', '2019-02-26 17:57:23', '2019-02-28 21:32:17', '2019-02-28 21:32:17'),
(18, 'hazem fawzi', 'admin_manager@matrixtranslation.net', 'test', '01096563501', 'test', '2019-02-26 17:58:05', '2019-02-28 21:32:24', '2019-02-28 21:32:24'),
(19, 'hamada', 'matrixdeveloper1@gmail.com', 'swrgte', '011507689375', 'kkkkkkkkkkkkkkkkk', '2019-02-26 20:11:44', '2019-02-28 21:32:32', '2019-02-28 21:32:32'),
(20, 'hamada', 'matrixdeveloper1@gmail.com', 'swrgte', '011507689375', 'hhhhhhhhhhhhhhhhhhhhh', '2019-02-26 20:12:15', '2019-02-28 21:32:41', '2019-02-28 21:32:41'),
(21, 'hamada', 'matrixdeveloper1@gmail.com', 'swrgte', '011507689375', 'llllllllllllllllll', '2019-02-26 20:13:28', '2019-02-28 21:32:48', '2019-02-28 21:32:48'),
(22, 'FindFastBusinessFunds', 'noreply@findfastbusinessfunds.com', '', '', 'Hi, letting you know that http://FindFastBusinessFunds.com can find your business a SBA or private loan for $2,000 - $350K Without high credit or collateral. \r\n \r\nFind Out how much you qualify for by clicking here: \r\n \r\nhttp://FindFastBusinessFunds.com \r\n', '2019-02-28 18:13:07', '2019-02-28 21:32:11', '2019-02-28 21:32:11'),
(23, 'hamada', 'matrixdeveloper1@gmail.com', 'swrgte', '011507689375', 'eeeeeeeeeeeeeeeeeeee', '2019-03-03 21:09:36', '2019-03-04 23:42:05', '2019-03-04 23:42:05'),
(24, 'hamada', 'matrixdeveloper1@gmail.com', 'swrgte', '011507689375', 'fffffffffffff', '2019-03-03 21:10:10', '2019-03-04 23:42:10', '2019-03-04 23:42:10'),
(25, 'hamada', 'matrixdeveloper1@gmail.com', 'swrgte', '011507689375', 'gggggggggggg', '2019-03-03 21:13:06', '2019-03-04 23:42:15', '2019-03-04 23:42:15'),
(26, 'hamada', 'matrixdeveloper1@gmail.com', 'swrgte', '011507689375', 'xxxxxxxxxxxx', '2019-03-03 21:32:11', '2019-03-04 23:42:20', '2019-03-04 23:42:20'),
(27, 'hamada', 'matrixdeveloper1@gmail.com', 'swrgte', 'fffffffffffffffffff', 'fffffffffffffff', '2019-03-03 21:35:31', '2019-03-04 23:42:39', '2019-03-04 23:42:39'),
(28, 'hamada', 'matrixdeveloper1@gmail.com', 'swrgte', '011507689375', 'dddddddddddddddddddddd', '2019-03-13 15:55:33', '2019-03-14 12:33:50', '2019-03-14 12:33:50'),
(29, 'hamada', 'matrixdeveloper1@gmail.com', 'قلصلصل', '011507689375', 'يييييييييييييييي', '2019-03-13 16:02:10', '2019-03-14 12:33:56', '2019-03-14 12:33:56'),
(30, 'محمود سيد مكي ', 'egyptsmania@gmail.com', 'سعر  ال seo  لموقع سياحي ', '1112416690', 'أريد الاستعلام عن الاجر الشهري لعمل ال seo لموقعي السياحي', '2019-03-14 04:24:21', '2019-03-14 04:24:21', NULL),
(31, '', 'aaoomm84@yahoo.com', 'الصور', '', 'انا\r\n', '2019-03-15 03:59:45', '2019-03-15 03:59:45', NULL),
(32, 'BusinessFunds365', 'noreply@business-funds-365.com', '', '', 'Hi, letting you know that http://Business-Funds-365.com can find your business a SBA or private loan for $2,000 - $350K Without high credit or collateral. \r\n \r\nFind Out how much you qualify for by clicking here: \r\n \r\nhttp://Business-Funds-365.com \r\n \r\nMin', '2019-03-17 06:25:37', '2019-03-17 06:25:37', NULL),
(33, 'محمود ', 'ssslll011152949652@gmail.com', 'رياضه', '01010793813', 'رياضه', '2019-03-24 18:46:40', '2019-03-24 18:46:40', NULL),
(34, 'ProFunding247', 'noreply@profunding247.co', '', '', 'Hi, letting you know that http://ProFunding247.co can find your business a SBA or private loan for $2,000 - $350K Without high credit or collateral. \r\n \r\nFind Out how much you qualify for by clicking here: \r\n \r\nhttp://ProFunding247.co \r\n \r\nMinimum require', '2019-04-03 18:31:50', '2019-04-03 18:31:50', NULL),
(35, 'Vidmp', 'ewrdfrgew32f@yandex.com', 'Vidmate app free download', '84458794554', 'Today almost every Internet user uses YT or any other video hosting provider to upload and watch funny videos, free movies and other video content. But sometimes you want to download a video or a movie and the service doesn\'t allow you to do it. That\'s wh', '2019-04-16 05:32:47', '2019-04-16 05:32:47', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2016_09_13_160523_add_role_to_users', 1),
('2016_09_23_054348_add_username_to_users', 1),
('2019_01_04_063312_create_aboutus_table', 2),
('2019_01_04_063326_create_contactus_table', 2),
('2019_01_04_063338_create_services_table', 2),
('2019_01_04_063352_create_blog_table', 2),
('2019_01_04_063406_create_testimonil_table', 2),
('2019_01_04_063418_create_quate_table', 2),
('2019_01_05_131645_create_quatation_table', 3),
('2019_01_08_124648_create_slidshow_table', 4),
('2019_01_10_102802_clients_settingg_table', 5),
('2019_01_08_124648_create_slider_table', 6),
('2019_01_20_140929_create_minservices_table', 7),
('2019_01_20_140949_create_feature_table', 7),
('2019_01_04_063326_create_messaages_table', 8),
('2019_01_04_063352_create_newsletter_table', 9),
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2016_09_13_160523_add_role_to_users', 1),
('2016_09_23_054348_add_username_to_users', 1),
('2019_01_04_063312_create_aboutus_table', 2),
('2019_01_04_063326_create_contactus_table', 2),
('2019_01_04_063338_create_services_table', 2),
('2019_01_04_063352_create_blog_table', 2),
('2019_01_04_063406_create_testimonil_table', 2),
('2019_01_04_063418_create_quate_table', 2),
('2019_01_05_131645_create_quatation_table', 3),
('2019_01_08_124648_create_slidshow_table', 4),
('2019_01_10_102802_clients_settingg_table', 5),
('2019_01_08_124648_create_slider_table', 6),
('2019_01_20_140929_create_minservices_table', 7),
('2019_01_20_140949_create_feature_table', 7),
('2019_01_04_063326_create_messaages_table', 8),
('2019_01_04_063352_create_newsletter_table', 9),
('2019_01_05_131645_create_request_price_table', 10),
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2016_09_13_160523_add_role_to_users', 1),
('2016_09_23_054348_add_username_to_users', 1),
('2019_01_04_063312_create_aboutus_table', 2),
('2019_01_04_063326_create_contactus_table', 2),
('2019_01_04_063338_create_services_table', 2),
('2019_01_04_063352_create_blog_table', 2),
('2019_01_04_063406_create_testimonil_table', 2),
('2019_01_04_063418_create_quate_table', 2),
('2019_01_05_131645_create_quatation_table', 3),
('2019_01_08_124648_create_slidshow_table', 4),
('2019_01_10_102802_clients_settingg_table', 5),
('2019_01_08_124648_create_slider_table', 6),
('2019_01_20_140929_create_minservices_table', 7),
('2019_01_20_140949_create_feature_table', 7),
('2019_01_04_063326_create_messaages_table', 8),
('2019_01_04_063352_create_newsletter_table', 9),
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2016_09_13_160523_add_role_to_users', 1),
('2016_09_23_054348_add_username_to_users', 1),
('2019_01_04_063312_create_aboutus_table', 2),
('2019_01_04_063326_create_contactus_table', 2),
('2019_01_04_063338_create_services_table', 2),
('2019_01_04_063352_create_blog_table', 2),
('2019_01_04_063406_create_testimonil_table', 2),
('2019_01_04_063418_create_quate_table', 2),
('2019_01_05_131645_create_quatation_table', 3),
('2019_01_08_124648_create_slidshow_table', 4),
('2019_01_10_102802_clients_settingg_table', 5),
('2019_01_08_124648_create_slider_table', 6),
('2019_01_20_140929_create_minservices_table', 7),
('2019_01_20_140949_create_feature_table', 7),
('2019_01_04_063326_create_messaages_table', 8),
('2019_01_04_063352_create_newsletter_table', 9),
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2016_09_13_160523_add_role_to_users', 1),
('2016_09_23_054348_add_username_to_users', 1),
('2019_01_04_063312_create_aboutus_table', 2),
('2019_01_04_063326_create_contactus_table', 2),
('2019_01_04_063338_create_services_table', 2),
('2019_01_04_063352_create_blog_table', 2),
('2019_01_04_063406_create_testimonil_table', 2),
('2019_01_04_063418_create_quate_table', 2),
('2019_01_05_131645_create_quatation_table', 3),
('2019_01_08_124648_create_slidshow_table', 4),
('2019_01_10_102802_clients_settingg_table', 5),
('2019_01_08_124648_create_slider_table', 6),
('2019_01_20_140929_create_minservices_table', 7),
('2019_01_20_140949_create_feature_table', 7),
('2019_01_04_063326_create_messaages_table', 8),
('2019_01_04_063352_create_newsletter_table', 9),
('2019_01_05_131645_create_request_price_table', 10),
('2019_01_04_063338_create_offers_table', 11),
('2019_01_08_124648_create_packages_table', 12),
('2019_01_20_140949_create_offersdetails_table', 13),
('2019_01_20_140949_create_offers_details_table', 14),
('2019_01_20_140949_create_details_table', 15),
('2019_01_20_140949_create_detail_table', 16),
('2019_01_04_063326_create_booking_table', 17),
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2016_09_13_160523_add_role_to_users', 1),
('2016_09_23_054348_add_username_to_users', 1),
('2019_01_04_063312_create_aboutus_table', 2),
('2019_01_04_063326_create_contactus_table', 2),
('2019_01_04_063338_create_services_table', 2),
('2019_01_04_063352_create_blog_table', 2),
('2019_01_04_063406_create_testimonil_table', 2),
('2019_01_04_063418_create_quate_table', 2),
('2019_01_05_131645_create_quatation_table', 3),
('2019_01_08_124648_create_slidshow_table', 4),
('2019_01_10_102802_clients_settingg_table', 5),
('2019_01_08_124648_create_slider_table', 6),
('2019_01_20_140929_create_minservices_table', 7),
('2019_01_20_140949_create_feature_table', 7),
('2019_01_04_063326_create_messaages_table', 8),
('2019_01_04_063352_create_newsletter_table', 9),
('2019_01_05_131645_create_request_price_table', 10),
('2019_01_04_063338_create_offers_table', 11),
('2019_01_08_124648_create_packages_table', 12),
('2019_01_20_140949_create_offersdetails_table', 13),
('2019_01_20_140949_create_offers_details_table', 14),
('2019_01_20_140949_create_details_table', 15),
('2019_01_20_140949_create_detail_table', 16),
('2019_01_04_063326_create_booking_table', 17),
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2016_09_13_160523_add_role_to_users', 1),
('2016_09_23_054348_add_username_to_users', 1),
('2019_01_04_063312_create_aboutus_table', 2),
('2019_01_04_063326_create_contactus_table', 2),
('2019_01_04_063338_create_services_table', 2),
('2019_01_04_063352_create_blog_table', 2),
('2019_01_04_063406_create_testimonil_table', 2),
('2019_01_04_063418_create_quate_table', 2),
('2019_01_05_131645_create_quatation_table', 3),
('2019_01_08_124648_create_slidshow_table', 4),
('2019_01_10_102802_clients_settingg_table', 5),
('2019_01_08_124648_create_slider_table', 6),
('2019_01_20_140929_create_minservices_table', 7),
('2019_01_20_140949_create_feature_table', 7),
('2019_01_04_063326_create_messaages_table', 8),
('2019_01_04_063352_create_newsletter_table', 9),
('2019_01_05_131645_create_request_price_table', 10),
('2019_01_04_063338_create_offers_table', 11),
('2019_01_08_124648_create_packages_table', 12),
('2019_01_20_140949_create_offersdetails_table', 13),
('2019_01_20_140949_create_offers_details_table', 14),
('2019_01_20_140949_create_details_table', 15),
('2019_01_20_140949_create_detail_table', 16),
('2019_01_04_063326_create_booking_table', 17),
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2016_09_13_160523_add_role_to_users', 1),
('2016_09_23_054348_add_username_to_users', 1),
('2019_01_04_063312_create_aboutus_table', 2),
('2019_01_04_063326_create_contactus_table', 2),
('2019_01_04_063338_create_services_table', 2),
('2019_01_04_063352_create_blog_table', 2),
('2019_01_04_063406_create_testimonil_table', 2),
('2019_01_04_063418_create_quate_table', 2),
('2019_01_05_131645_create_quatation_table', 3),
('2019_01_08_124648_create_slidshow_table', 4),
('2019_01_10_102802_clients_settingg_table', 5),
('2019_01_08_124648_create_slider_table', 6),
('2019_01_20_140929_create_minservices_table', 7),
('2019_01_20_140949_create_feature_table', 7),
('2019_01_04_063326_create_messaages_table', 8),
('2019_01_04_063352_create_newsletter_table', 9),
('2019_01_05_131645_create_request_price_table', 10),
('2019_01_04_063338_create_offers_table', 11),
('2019_01_08_124648_create_packages_table', 12),
('2019_01_20_140949_create_offersdetails_table', 13),
('2019_01_20_140949_create_offers_details_table', 14),
('2019_01_20_140949_create_details_table', 15),
('2019_01_20_140949_create_detail_table', 16),
('2019_01_04_063326_create_booking_table', 17),
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2016_09_13_160523_add_role_to_users', 1),
('2016_09_23_054348_add_username_to_users', 1),
('2019_01_04_063312_create_aboutus_table', 2),
('2019_01_04_063326_create_contactus_table', 2),
('2019_01_04_063338_create_services_table', 2),
('2019_01_04_063352_create_blog_table', 2),
('2019_01_04_063406_create_testimonil_table', 2),
('2019_01_04_063418_create_quate_table', 2),
('2019_01_05_131645_create_quatation_table', 3),
('2019_01_08_124648_create_slidshow_table', 4),
('2019_01_10_102802_clients_settingg_table', 5),
('2019_01_08_124648_create_slider_table', 6),
('2019_01_20_140929_create_minservices_table', 7),
('2019_01_20_140949_create_feature_table', 7),
('2019_01_04_063326_create_messaages_table', 8),
('2019_01_04_063352_create_newsletter_table', 9),
('2019_01_05_131645_create_request_price_table', 10),
('2019_01_04_063338_create_offers_table', 11),
('2019_01_08_124648_create_packages_table', 12),
('2019_01_20_140949_create_offersdetails_table', 13),
('2019_01_20_140949_create_offers_details_table', 14),
('2019_01_20_140949_create_details_table', 15),
('2019_01_20_140949_create_detail_table', 16),
('2019_01_04_063326_create_booking_table', 17),
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2016_09_13_160523_add_role_to_users', 1),
('2016_09_23_054348_add_username_to_users', 1),
('2019_01_04_063312_create_aboutus_table', 2),
('2019_01_04_063326_create_contactus_table', 2),
('2019_01_04_063338_create_services_table', 2),
('2019_01_04_063352_create_blog_table', 2),
('2019_01_04_063406_create_testimonil_table', 2),
('2019_01_04_063418_create_quate_table', 2),
('2019_01_05_131645_create_quatation_table', 3),
('2019_01_08_124648_create_slidshow_table', 4),
('2019_01_10_102802_clients_settingg_table', 5),
('2019_01_08_124648_create_slider_table', 6),
('2019_01_20_140929_create_minservices_table', 7),
('2019_01_20_140949_create_feature_table', 7),
('2019_01_04_063326_create_messaages_table', 8),
('2019_01_04_063352_create_newsletter_table', 9),
('2019_01_05_131645_create_request_price_table', 10),
('2019_01_04_063338_create_offers_table', 11),
('2019_01_08_124648_create_packages_table', 12),
('2019_01_20_140949_create_offersdetails_table', 13),
('2019_01_20_140949_create_offers_details_table', 14),
('2019_01_20_140949_create_details_table', 15),
('2019_01_20_140949_create_detail_table', 16),
('2019_01_04_063326_create_booking_table', 17),
('2019_02_17_173837_create_offers_table', 18),
('2019_02_17_173954_create_packages_table', 18),
('2019_02_17_174005_create_details_table', 18),
('2019_02_17_174436_create_package_details_table', 18),
('2019_02_17_190441_add_offer_id_to_packages', 19),
('2019_02_17_174005_create_detailss_table', 20),
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2016_09_13_160523_add_role_to_users', 1),
('2016_09_23_054348_add_username_to_users', 1),
('2019_01_04_063312_create_aboutus_table', 2),
('2019_01_04_063326_create_contactus_table', 2),
('2019_01_04_063338_create_services_table', 2),
('2019_01_04_063352_create_blog_table', 2),
('2019_01_04_063406_create_testimonil_table', 2),
('2019_01_04_063418_create_quate_table', 2),
('2019_01_05_131645_create_quatation_table', 3),
('2019_01_08_124648_create_slidshow_table', 4),
('2019_01_10_102802_clients_settingg_table', 5),
('2019_01_08_124648_create_slider_table', 6),
('2019_01_20_140929_create_minservices_table', 7),
('2019_01_20_140949_create_feature_table', 7),
('2019_01_04_063326_create_messaages_table', 8),
('2019_01_04_063352_create_newsletter_table', 9),
('2019_01_05_131645_create_request_price_table', 10),
('2019_01_04_063338_create_offers_table', 11),
('2019_01_08_124648_create_packages_table', 12),
('2019_01_20_140949_create_offersdetails_table', 13),
('2019_01_20_140949_create_offers_details_table', 14),
('2019_01_20_140949_create_details_table', 15),
('2019_01_20_140949_create_detail_table', 16),
('2019_01_04_063326_create_booking_table', 17),
('2019_02_17_173837_create_offers_table', 18),
('2019_02_17_173954_create_packages_table', 18),
('2019_02_17_174005_create_details_table', 18),
('2019_02_17_174436_create_package_details_table', 18),
('2019_02_17_190441_add_offer_id_to_packages', 19),
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2016_09_13_160523_add_role_to_users', 1),
('2016_09_23_054348_add_username_to_users', 1),
('2019_01_04_063312_create_aboutus_table', 2),
('2019_01_04_063326_create_contactus_table', 2),
('2019_01_04_063338_create_services_table', 2),
('2019_01_04_063352_create_blog_table', 2),
('2019_01_04_063406_create_testimonil_table', 2),
('2019_01_04_063418_create_quate_table', 2),
('2019_01_05_131645_create_quatation_table', 3),
('2019_01_08_124648_create_slidshow_table', 4),
('2019_01_10_102802_clients_settingg_table', 5),
('2019_01_08_124648_create_slider_table', 6),
('2019_01_20_140929_create_minservices_table', 7),
('2019_01_20_140949_create_feature_table', 7),
('2019_01_04_063326_create_messaages_table', 8),
('2019_01_04_063352_create_newsletter_table', 9),
('2019_01_05_131645_create_request_price_table', 10),
('2019_01_04_063338_create_offers_table', 11),
('2019_01_08_124648_create_packages_table', 12),
('2019_01_20_140949_create_offersdetails_table', 13),
('2019_01_20_140949_create_offers_details_table', 14),
('2019_01_20_140949_create_details_table', 15),
('2019_01_20_140949_create_detail_table', 16),
('2019_01_04_063326_create_booking_table', 17),
('2019_02_17_173837_create_offers_table', 18),
('2019_02_17_173954_create_packages_table', 18),
('2019_02_17_174005_create_details_table', 18),
('2019_02_17_174436_create_package_details_table', 18),
('2019_02_17_190441_add_offer_id_to_packages', 19),
('2019_02_17_174005_create_detailss_table', 20),
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2016_09_13_160523_add_role_to_users', 1),
('2016_09_23_054348_add_username_to_users', 1),
('2019_01_04_063312_create_aboutus_table', 2),
('2019_01_04_063326_create_contactus_table', 2),
('2019_01_04_063338_create_services_table', 2),
('2019_01_04_063352_create_blog_table', 2),
('2019_01_04_063406_create_testimonil_table', 2),
('2019_01_04_063418_create_quate_table', 2),
('2019_01_05_131645_create_quatation_table', 3),
('2019_01_08_124648_create_slidshow_table', 4),
('2019_01_10_102802_clients_settingg_table', 5),
('2019_01_08_124648_create_slider_table', 6),
('2019_01_20_140929_create_minservices_table', 7),
('2019_01_20_140949_create_feature_table', 7),
('2019_01_04_063326_create_messaages_table', 8),
('2019_01_04_063352_create_newsletter_table', 9),
('2019_01_05_131645_create_request_price_table', 10),
('2019_01_04_063338_create_offers_table', 11),
('2019_01_08_124648_create_packages_table', 12),
('2019_01_20_140949_create_offersdetails_table', 13),
('2019_01_20_140949_create_offers_details_table', 14),
('2019_01_20_140949_create_details_table', 15),
('2019_01_20_140949_create_detail_table', 16),
('2019_01_04_063326_create_booking_table', 17),
('2019_02_17_173837_create_offers_table', 18),
('2019_02_17_173954_create_packages_table', 18),
('2019_02_17_174005_create_details_table', 18),
('2019_02_17_174436_create_package_details_table', 18),
('2019_02_17_190441_add_offer_id_to_packages', 19),
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2016_09_13_160523_add_role_to_users', 1),
('2016_09_23_054348_add_username_to_users', 1),
('2019_01_04_063312_create_aboutus_table', 2),
('2019_01_04_063326_create_contactus_table', 2),
('2019_01_04_063338_create_services_table', 2),
('2019_01_04_063352_create_blog_table', 2),
('2019_01_04_063406_create_testimonil_table', 2),
('2019_01_04_063418_create_quate_table', 2),
('2019_01_05_131645_create_quatation_table', 3),
('2019_01_08_124648_create_slidshow_table', 4),
('2019_01_10_102802_clients_settingg_table', 5),
('2019_01_08_124648_create_slider_table', 6),
('2019_01_20_140929_create_minservices_table', 7),
('2019_01_20_140949_create_feature_table', 7),
('2019_01_04_063326_create_messaages_table', 8),
('2019_01_04_063352_create_newsletter_table', 9),
('2019_01_05_131645_create_request_price_table', 10),
('2019_01_04_063338_create_offers_table', 11),
('2019_01_08_124648_create_packages_table', 12),
('2019_01_20_140949_create_offersdetails_table', 13),
('2019_01_20_140949_create_offers_details_table', 14),
('2019_01_20_140949_create_details_table', 15),
('2019_01_20_140949_create_detail_table', 16),
('2019_01_04_063326_create_booking_table', 17),
('2019_02_17_173837_create_offers_table', 18),
('2019_02_17_173954_create_packages_table', 18),
('2019_02_17_174005_create_details_table', 18),
('2019_02_17_174436_create_package_details_table', 18),
('2019_02_17_190441_add_offer_id_to_packages', 19),
('2019_02_17_174005_create_detailss_table', 20),
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2016_09_13_160523_add_role_to_users', 1),
('2016_09_23_054348_add_username_to_users', 1),
('2019_01_04_063312_create_aboutus_table', 2),
('2019_01_04_063326_create_contactus_table', 2),
('2019_01_04_063338_create_services_table', 2),
('2019_01_04_063352_create_blog_table', 2),
('2019_01_04_063406_create_testimonil_table', 2),
('2019_01_04_063418_create_quate_table', 2),
('2019_01_05_131645_create_quatation_table', 3),
('2019_01_08_124648_create_slidshow_table', 4),
('2019_01_10_102802_clients_settingg_table', 5),
('2019_01_08_124648_create_slider_table', 6),
('2019_01_20_140929_create_minservices_table', 7),
('2019_01_20_140949_create_feature_table', 7),
('2019_01_04_063326_create_messaages_table', 8),
('2019_01_04_063352_create_newsletter_table', 9),
('2019_01_05_131645_create_request_price_table', 10),
('2019_01_04_063338_create_offers_table', 11),
('2019_01_08_124648_create_packages_table', 12),
('2019_01_20_140949_create_offersdetails_table', 13),
('2019_01_20_140949_create_offers_details_table', 14),
('2019_01_20_140949_create_details_table', 15),
('2019_01_20_140949_create_detail_table', 16),
('2019_01_04_063326_create_booking_table', 17),
('2019_02_17_173837_create_offers_table', 18),
('2019_02_17_173954_create_packages_table', 18),
('2019_02_17_174005_create_details_table', 18),
('2019_02_17_174436_create_package_details_table', 18),
('2019_02_17_190441_add_offer_id_to_packages', 19),
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2016_09_13_160523_add_role_to_users', 1),
('2016_09_23_054348_add_username_to_users', 1),
('2019_01_04_063312_create_aboutus_table', 2),
('2019_01_04_063326_create_contactus_table', 2),
('2019_01_04_063338_create_services_table', 2),
('2019_01_04_063352_create_blog_table', 2),
('2019_01_04_063406_create_testimonil_table', 2),
('2019_01_04_063418_create_quate_table', 2),
('2019_01_05_131645_create_quatation_table', 3),
('2019_01_08_124648_create_slidshow_table', 4),
('2019_01_10_102802_clients_settingg_table', 5),
('2019_01_08_124648_create_slider_table', 6),
('2019_01_20_140929_create_minservices_table', 7),
('2019_01_20_140949_create_feature_table', 7),
('2019_01_04_063326_create_messaages_table', 8),
('2019_01_04_063352_create_newsletter_table', 9),
('2019_01_05_131645_create_request_price_table', 10),
('2019_01_04_063338_create_offers_table', 11),
('2019_01_08_124648_create_packages_table', 12),
('2019_01_20_140949_create_offersdetails_table', 13),
('2019_01_20_140949_create_offers_details_table', 14),
('2019_01_20_140949_create_details_table', 15),
('2019_01_20_140949_create_detail_table', 16),
('2019_01_04_063326_create_booking_table', 17),
('2019_02_17_173837_create_offers_table', 18),
('2019_02_17_173954_create_packages_table', 18),
('2019_02_17_174005_create_details_table', 18),
('2019_02_17_174436_create_package_details_table', 18),
('2019_02_17_190441_add_offer_id_to_packages', 19),
('2019_02_17_174005_create_detailss_table', 20),
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2016_09_13_160523_add_role_to_users', 1),
('2016_09_23_054348_add_username_to_users', 1),
('2019_01_04_063312_create_aboutus_table', 2),
('2019_01_04_063326_create_contactus_table', 2),
('2019_01_04_063338_create_services_table', 2),
('2019_01_04_063352_create_blog_table', 2),
('2019_01_04_063406_create_testimonil_table', 2),
('2019_01_04_063418_create_quate_table', 2),
('2019_01_05_131645_create_quatation_table', 3),
('2019_01_08_124648_create_slidshow_table', 4),
('2019_01_10_102802_clients_settingg_table', 5),
('2019_01_08_124648_create_slider_table', 6),
('2019_01_20_140929_create_minservices_table', 7),
('2019_01_20_140949_create_feature_table', 7),
('2019_01_04_063326_create_messaages_table', 8),
('2019_01_04_063352_create_newsletter_table', 9),
('2019_01_05_131645_create_request_price_table', 10),
('2019_01_04_063338_create_offers_table', 11),
('2019_01_08_124648_create_packages_table', 12),
('2019_01_20_140949_create_offersdetails_table', 13),
('2019_01_20_140949_create_offers_details_table', 14),
('2019_01_20_140949_create_details_table', 15),
('2019_01_20_140949_create_detail_table', 16),
('2019_01_04_063326_create_booking_table', 17),
('2019_02_17_173837_create_offers_table', 18),
('2019_02_17_173954_create_packages_table', 18),
('2019_02_17_174005_create_details_table', 18),
('2019_02_17_174436_create_package_details_table', 18),
('2019_02_17_190441_add_offer_id_to_packages', 19),
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2016_09_13_160523_add_role_to_users', 1),
('2016_09_23_054348_add_username_to_users', 1),
('2019_01_04_063312_create_aboutus_table', 2),
('2019_01_04_063326_create_contactus_table', 2),
('2019_01_04_063338_create_services_table', 2),
('2019_01_04_063352_create_blog_table', 2),
('2019_01_04_063406_create_testimonil_table', 2),
('2019_01_04_063418_create_quate_table', 2),
('2019_01_05_131645_create_quatation_table', 3),
('2019_01_08_124648_create_slidshow_table', 4),
('2019_01_10_102802_clients_settingg_table', 5),
('2019_01_08_124648_create_slider_table', 6),
('2019_01_20_140929_create_minservices_table', 7),
('2019_01_20_140949_create_feature_table', 7),
('2019_01_04_063326_create_messaages_table', 8),
('2019_01_04_063352_create_newsletter_table', 9),
('2019_01_05_131645_create_request_price_table', 10),
('2019_01_04_063338_create_offers_table', 11),
('2019_01_08_124648_create_packages_table', 12),
('2019_01_20_140949_create_offersdetails_table', 13),
('2019_01_20_140949_create_offers_details_table', 14),
('2019_01_20_140949_create_details_table', 15),
('2019_01_20_140949_create_detail_table', 16),
('2019_01_04_063326_create_booking_table', 17),
('2019_02_17_173837_create_offers_table', 18),
('2019_02_17_173954_create_packages_table', 18),
('2019_02_17_174005_create_details_table', 18),
('2019_02_17_174436_create_package_details_table', 18),
('2019_02_17_190441_add_offer_id_to_packages', 19),
('2019_02_17_174005_create_detailss_table', 20),
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2016_09_13_160523_add_role_to_users', 1),
('2016_09_23_054348_add_username_to_users', 1),
('2019_01_04_063312_create_aboutus_table', 2),
('2019_01_04_063326_create_contactus_table', 2),
('2019_01_04_063338_create_services_table', 2),
('2019_01_04_063352_create_blog_table', 2),
('2019_01_04_063406_create_testimonil_table', 2),
('2019_01_04_063418_create_quate_table', 2),
('2019_01_05_131645_create_quatation_table', 3),
('2019_01_08_124648_create_slidshow_table', 4),
('2019_01_10_102802_clients_settingg_table', 5),
('2019_01_08_124648_create_slider_table', 6),
('2019_01_20_140929_create_minservices_table', 7),
('2019_01_20_140949_create_feature_table', 7),
('2019_01_04_063326_create_messaages_table', 8),
('2019_01_04_063352_create_newsletter_table', 9),
('2019_01_05_131645_create_request_price_table', 10),
('2019_01_04_063338_create_offers_table', 11),
('2019_01_08_124648_create_packages_table', 12),
('2019_01_20_140949_create_offersdetails_table', 13),
('2019_01_20_140949_create_offers_details_table', 14),
('2019_01_20_140949_create_details_table', 15),
('2019_01_20_140949_create_detail_table', 16),
('2019_01_04_063326_create_booking_table', 17),
('2019_02_17_173837_create_offers_table', 18),
('2019_02_17_173954_create_packages_table', 18),
('2019_02_17_174005_create_details_table', 18),
('2019_02_17_174436_create_package_details_table', 18),
('2019_02_17_190441_add_offer_id_to_packages', 19),
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2016_09_13_160523_add_role_to_users', 1),
('2016_09_23_054348_add_username_to_users', 1),
('2019_01_04_063312_create_aboutus_table', 2),
('2019_01_04_063326_create_contactus_table', 2),
('2019_01_04_063338_create_services_table', 2),
('2019_01_04_063352_create_blog_table', 2),
('2019_01_04_063406_create_testimonil_table', 2),
('2019_01_04_063418_create_quate_table', 2),
('2019_01_05_131645_create_quatation_table', 3),
('2019_01_08_124648_create_slidshow_table', 4),
('2019_01_10_102802_clients_settingg_table', 5),
('2019_01_08_124648_create_slider_table', 6),
('2019_01_20_140929_create_minservices_table', 7),
('2019_01_20_140949_create_feature_table', 7),
('2019_01_04_063326_create_messaages_table', 8),
('2019_01_04_063352_create_newsletter_table', 9),
('2019_01_05_131645_create_request_price_table', 10),
('2019_01_04_063338_create_offers_table', 11),
('2019_01_08_124648_create_packages_table', 12),
('2019_01_20_140949_create_offersdetails_table', 13),
('2019_01_20_140949_create_offers_details_table', 14),
('2019_01_20_140949_create_details_table', 15),
('2019_01_20_140949_create_detail_table', 16),
('2019_01_04_063326_create_booking_table', 17),
('2019_02_17_173837_create_offers_table', 18),
('2019_02_17_173954_create_packages_table', 18),
('2019_02_17_174005_create_details_table', 18),
('2019_02_17_174436_create_package_details_table', 18),
('2019_02_17_190441_add_offer_id_to_packages', 19),
('2019_02_17_174005_create_detailss_table', 20),
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2016_09_13_160523_add_role_to_users', 1),
('2016_09_23_054348_add_username_to_users', 1),
('2019_01_04_063312_create_aboutus_table', 2),
('2019_01_04_063326_create_contactus_table', 2),
('2019_01_04_063338_create_services_table', 2),
('2019_01_04_063352_create_blog_table', 2),
('2019_01_04_063406_create_testimonil_table', 2),
('2019_01_04_063418_create_quate_table', 2),
('2019_01_05_131645_create_quatation_table', 3),
('2019_01_08_124648_create_slidshow_table', 4),
('2019_01_10_102802_clients_settingg_table', 5),
('2019_01_08_124648_create_slider_table', 6),
('2019_01_20_140929_create_minservices_table', 7),
('2019_01_20_140949_create_feature_table', 7),
('2019_01_04_063326_create_messaages_table', 8),
('2019_01_04_063352_create_newsletter_table', 9),
('2019_01_05_131645_create_request_price_table', 10),
('2019_01_04_063338_create_offers_table', 11),
('2019_01_08_124648_create_packages_table', 12),
('2019_01_20_140949_create_offersdetails_table', 13),
('2019_01_20_140949_create_offers_details_table', 14),
('2019_01_20_140949_create_details_table', 15),
('2019_01_20_140949_create_detail_table', 16),
('2019_01_04_063326_create_booking_table', 17),
('2019_02_17_173837_create_offers_table', 18),
('2019_02_17_173954_create_packages_table', 18),
('2019_02_17_174005_create_details_table', 18),
('2019_02_17_174436_create_package_details_table', 18),
('2019_02_17_190441_add_offer_id_to_packages', 19),
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2016_09_13_160523_add_role_to_users', 1),
('2016_09_23_054348_add_username_to_users', 1),
('2019_01_04_063312_create_aboutus_table', 2),
('2019_01_04_063326_create_contactus_table', 2),
('2019_01_04_063338_create_services_table', 2),
('2019_01_04_063352_create_blog_table', 2),
('2019_01_04_063406_create_testimonil_table', 2),
('2019_01_04_063418_create_quate_table', 2),
('2019_01_05_131645_create_quatation_table', 3),
('2019_01_08_124648_create_slidshow_table', 4),
('2019_01_10_102802_clients_settingg_table', 5),
('2019_01_08_124648_create_slider_table', 6),
('2019_01_20_140929_create_minservices_table', 7),
('2019_01_20_140949_create_feature_table', 7),
('2019_01_04_063326_create_messaages_table', 8),
('2019_01_04_063352_create_newsletter_table', 9),
('2019_01_05_131645_create_request_price_table', 10),
('2019_01_04_063338_create_offers_table', 11),
('2019_01_08_124648_create_packages_table', 12),
('2019_01_20_140949_create_offersdetails_table', 13),
('2019_01_20_140949_create_offers_details_table', 14),
('2019_01_20_140949_create_details_table', 15),
('2019_01_20_140949_create_detail_table', 16),
('2019_01_04_063326_create_booking_table', 17),
('2019_02_17_173837_create_offers_table', 18),
('2019_02_17_173954_create_packages_table', 18),
('2019_02_17_174005_create_details_table', 18),
('2019_02_17_174436_create_package_details_table', 18),
('2019_02_17_190441_add_offer_id_to_packages', 19),
('2019_02_17_174005_create_detailss_table', 20),
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2016_09_13_160523_add_role_to_users', 1),
('2016_09_23_054348_add_username_to_users', 1),
('2019_01_04_063312_create_aboutus_table', 2),
('2019_01_04_063326_create_contactus_table', 2),
('2019_01_04_063338_create_services_table', 2),
('2019_01_04_063352_create_blog_table', 2),
('2019_01_04_063406_create_testimonil_table', 2),
('2019_01_04_063418_create_quate_table', 2),
('2019_01_05_131645_create_quatation_table', 3),
('2019_01_08_124648_create_slidshow_table', 4),
('2019_01_10_102802_clients_settingg_table', 5),
('2019_01_08_124648_create_slider_table', 6),
('2019_01_20_140929_create_minservices_table', 7),
('2019_01_20_140949_create_feature_table', 7),
('2019_01_04_063326_create_messaages_table', 8),
('2019_01_04_063352_create_newsletter_table', 9),
('2019_01_05_131645_create_request_price_table', 10),
('2019_01_04_063338_create_offers_table', 11),
('2019_01_08_124648_create_packages_table', 12),
('2019_01_20_140949_create_offersdetails_table', 13),
('2019_01_20_140949_create_offers_details_table', 14),
('2019_01_20_140949_create_details_table', 15),
('2019_01_20_140949_create_detail_table', 16),
('2019_01_04_063326_create_booking_table', 17),
('2019_02_17_173837_create_offers_table', 18),
('2019_02_17_173954_create_packages_table', 18),
('2019_02_17_174005_create_details_table', 18),
('2019_02_17_174436_create_package_details_table', 18),
('2019_02_17_190441_add_offer_id_to_packages', 19),
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2016_09_13_160523_add_role_to_users', 1),
('2016_09_23_054348_add_username_to_users', 1),
('2019_01_04_063312_create_aboutus_table', 2),
('2019_01_04_063326_create_contactus_table', 2),
('2019_01_04_063338_create_services_table', 2),
('2019_01_04_063352_create_blog_table', 2),
('2019_01_04_063406_create_testimonil_table', 2),
('2019_01_04_063418_create_quate_table', 2),
('2019_01_05_131645_create_quatation_table', 3),
('2019_01_08_124648_create_slidshow_table', 4),
('2019_01_10_102802_clients_settingg_table', 5),
('2019_01_08_124648_create_slider_table', 6),
('2019_01_20_140929_create_minservices_table', 7),
('2019_01_20_140949_create_feature_table', 7),
('2019_01_04_063326_create_messaages_table', 8),
('2019_01_04_063352_create_newsletter_table', 9),
('2019_01_05_131645_create_request_price_table', 10),
('2019_01_04_063338_create_offers_table', 11),
('2019_01_08_124648_create_packages_table', 12),
('2019_01_20_140949_create_offersdetails_table', 13),
('2019_01_20_140949_create_offers_details_table', 14),
('2019_01_20_140949_create_details_table', 15),
('2019_01_20_140949_create_detail_table', 16),
('2019_01_04_063326_create_booking_table', 17),
('2019_02_17_173837_create_offers_table', 18),
('2019_02_17_173954_create_packages_table', 18),
('2019_02_17_174005_create_details_table', 18),
('2019_02_17_174436_create_package_details_table', 18),
('2019_02_17_190441_add_offer_id_to_packages', 19),
('2019_02_17_174005_create_detailss_table', 20),
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2016_09_13_160523_add_role_to_users', 1),
('2016_09_23_054348_add_username_to_users', 1),
('2019_01_04_063312_create_aboutus_table', 2),
('2019_01_04_063326_create_contactus_table', 2),
('2019_01_04_063338_create_services_table', 2),
('2019_01_04_063352_create_blog_table', 2),
('2019_01_04_063406_create_testimonil_table', 2),
('2019_01_04_063418_create_quate_table', 2),
('2019_01_05_131645_create_quatation_table', 3),
('2019_01_08_124648_create_slidshow_table', 4),
('2019_01_10_102802_clients_settingg_table', 5),
('2019_01_08_124648_create_slider_table', 6),
('2019_01_20_140929_create_minservices_table', 7),
('2019_01_20_140949_create_feature_table', 7),
('2019_01_04_063326_create_messaages_table', 8),
('2019_01_04_063352_create_newsletter_table', 9),
('2019_01_05_131645_create_request_price_table', 10),
('2019_01_04_063338_create_offers_table', 11),
('2019_01_08_124648_create_packages_table', 12),
('2019_01_20_140949_create_offersdetails_table', 13),
('2019_01_20_140949_create_offers_details_table', 14),
('2019_01_20_140949_create_details_table', 15),
('2019_01_20_140949_create_detail_table', 16),
('2019_01_04_063326_create_booking_table', 17),
('2019_02_17_173837_create_offers_table', 18),
('2019_02_17_173954_create_packages_table', 18),
('2019_02_17_174005_create_details_table', 18),
('2019_02_17_174436_create_package_details_table', 18),
('2019_02_17_190441_add_offer_id_to_packages', 19),
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2016_09_13_160523_add_role_to_users', 1),
('2016_09_23_054348_add_username_to_users', 1),
('2019_01_04_063312_create_aboutus_table', 2),
('2019_01_04_063326_create_contactus_table', 2),
('2019_01_04_063338_create_services_table', 2),
('2019_01_04_063352_create_blog_table', 2),
('2019_01_04_063406_create_testimonil_table', 2),
('2019_01_04_063418_create_quate_table', 2),
('2019_01_05_131645_create_quatation_table', 3),
('2019_01_08_124648_create_slidshow_table', 4),
('2019_01_10_102802_clients_settingg_table', 5),
('2019_01_08_124648_create_slider_table', 6),
('2019_01_20_140929_create_minservices_table', 7),
('2019_01_20_140949_create_feature_table', 7),
('2019_01_04_063326_create_messaages_table', 8),
('2019_01_04_063352_create_newsletter_table', 9),
('2019_01_05_131645_create_request_price_table', 10),
('2019_01_04_063338_create_offers_table', 11),
('2019_01_08_124648_create_packages_table', 12),
('2019_01_20_140949_create_offersdetails_table', 13),
('2019_01_20_140949_create_offers_details_table', 14),
('2019_01_20_140949_create_details_table', 15),
('2019_01_20_140949_create_detail_table', 16),
('2019_01_04_063326_create_booking_table', 17),
('2019_02_17_173837_create_offers_table', 18),
('2019_02_17_173954_create_packages_table', 18),
('2019_02_17_174005_create_details_table', 18),
('2019_02_17_174436_create_package_details_table', 18),
('2019_02_17_190441_add_offer_id_to_packages', 19),
('2019_02_17_174005_create_detailss_table', 20),
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2016_09_13_160523_add_role_to_users', 1),
('2016_09_23_054348_add_username_to_users', 1),
('2019_01_04_063312_create_aboutus_table', 2),
('2019_01_04_063326_create_contactus_table', 2),
('2019_01_04_063338_create_services_table', 2),
('2019_01_04_063352_create_blog_table', 2),
('2019_01_04_063406_create_testimonil_table', 2),
('2019_01_04_063418_create_quate_table', 2),
('2019_01_05_131645_create_quatation_table', 3),
('2019_01_08_124648_create_slidshow_table', 4),
('2019_01_10_102802_clients_settingg_table', 5),
('2019_01_08_124648_create_slider_table', 6),
('2019_01_20_140929_create_minservices_table', 7),
('2019_01_20_140949_create_feature_table', 7),
('2019_01_04_063326_create_messaages_table', 8),
('2019_01_04_063352_create_newsletter_table', 9),
('2019_01_05_131645_create_request_price_table', 10),
('2019_01_04_063338_create_offers_table', 11),
('2019_01_08_124648_create_packages_table', 12),
('2019_01_20_140949_create_offersdetails_table', 13),
('2019_01_20_140949_create_offers_details_table', 14),
('2019_01_20_140949_create_details_table', 15),
('2019_01_20_140949_create_detail_table', 16),
('2019_01_04_063326_create_booking_table', 17),
('2019_02_17_173837_create_offers_table', 18),
('2019_02_17_173954_create_packages_table', 18),
('2019_02_17_174005_create_details_table', 18),
('2019_02_17_174436_create_package_details_table', 18),
('2019_02_17_190441_add_offer_id_to_packages', 19),
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2016_09_13_160523_add_role_to_users', 1),
('2016_09_23_054348_add_username_to_users', 1),
('2019_01_04_063312_create_aboutus_table', 2),
('2019_01_04_063326_create_contactus_table', 2),
('2019_01_04_063338_create_services_table', 2),
('2019_01_04_063352_create_blog_table', 2),
('2019_01_04_063406_create_testimonil_table', 2),
('2019_01_04_063418_create_quate_table', 2),
('2019_01_05_131645_create_quatation_table', 3),
('2019_01_08_124648_create_slidshow_table', 4),
('2019_01_10_102802_clients_settingg_table', 5),
('2019_01_08_124648_create_slider_table', 6),
('2019_01_20_140929_create_minservices_table', 7),
('2019_01_20_140949_create_feature_table', 7),
('2019_01_04_063326_create_messaages_table', 8),
('2019_01_04_063352_create_newsletter_table', 9),
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2016_09_13_160523_add_role_to_users', 1),
('2016_09_23_054348_add_username_to_users', 1),
('2019_01_04_063312_create_aboutus_table', 2),
('2019_01_04_063326_create_contactus_table', 2),
('2019_01_04_063338_create_services_table', 2),
('2019_01_04_063352_create_blog_table', 2),
('2019_01_04_063406_create_testimonil_table', 2),
('2019_01_04_063418_create_quate_table', 2),
('2019_01_05_131645_create_quatation_table', 3),
('2019_01_08_124648_create_slidshow_table', 4),
('2019_01_10_102802_clients_settingg_table', 5),
('2019_01_08_124648_create_slider_table', 6),
('2019_01_20_140929_create_minservices_table', 7),
('2019_01_20_140949_create_feature_table', 7),
('2019_01_04_063326_create_messaages_table', 8),
('2019_01_04_063352_create_newsletter_table', 9),
('2019_01_05_131645_create_request_price_table', 10),
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2016_09_13_160523_add_role_to_users', 1),
('2016_09_23_054348_add_username_to_users', 1),
('2019_01_04_063312_create_aboutus_table', 2),
('2019_01_04_063326_create_contactus_table', 2),
('2019_01_04_063338_create_services_table', 2),
('2019_01_04_063352_create_blog_table', 2),
('2019_01_04_063406_create_testimonil_table', 2),
('2019_01_04_063418_create_quate_table', 2),
('2019_01_05_131645_create_quatation_table', 3),
('2019_01_08_124648_create_slidshow_table', 4),
('2019_01_10_102802_clients_settingg_table', 5),
('2019_01_08_124648_create_slider_table', 6),
('2019_01_20_140929_create_minservices_table', 7),
('2019_01_20_140949_create_feature_table', 7),
('2019_01_04_063326_create_messaages_table', 8),
('2019_01_04_063352_create_newsletter_table', 9),
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2016_09_13_160523_add_role_to_users', 1),
('2016_09_23_054348_add_username_to_users', 1),
('2019_01_04_063312_create_aboutus_table', 2),
('2019_01_04_063326_create_contactus_table', 2),
('2019_01_04_063338_create_services_table', 2),
('2019_01_04_063352_create_blog_table', 2),
('2019_01_04_063406_create_testimonil_table', 2),
('2019_01_04_063418_create_quate_table', 2),
('2019_01_05_131645_create_quatation_table', 3),
('2019_01_08_124648_create_slidshow_table', 4),
('2019_01_10_102802_clients_settingg_table', 5),
('2019_01_08_124648_create_slider_table', 6),
('2019_01_20_140929_create_minservices_table', 7),
('2019_01_20_140949_create_feature_table', 7),
('2019_01_04_063326_create_messaages_table', 8),
('2019_01_04_063352_create_newsletter_table', 9),
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2016_09_13_160523_add_role_to_users', 1),
('2016_09_23_054348_add_username_to_users', 1),
('2019_01_04_063312_create_aboutus_table', 2),
('2019_01_04_063326_create_contactus_table', 2),
('2019_01_04_063338_create_services_table', 2),
('2019_01_04_063352_create_blog_table', 2),
('2019_01_04_063406_create_testimonil_table', 2),
('2019_01_04_063418_create_quate_table', 2),
('2019_01_05_131645_create_quatation_table', 3),
('2019_01_08_124648_create_slidshow_table', 4),
('2019_01_10_102802_clients_settingg_table', 5),
('2019_01_08_124648_create_slider_table', 6),
('2019_01_20_140929_create_minservices_table', 7),
('2019_01_20_140949_create_feature_table', 7),
('2019_01_04_063326_create_messaages_table', 8),
('2019_01_04_063352_create_newsletter_table', 9),
('2019_01_05_131645_create_request_price_table', 10),
('2019_01_04_063338_create_offers_table', 11),
('2019_01_08_124648_create_packages_table', 12),
('2019_01_20_140949_create_offersdetails_table', 13),
('2019_01_20_140949_create_offers_details_table', 14),
('2019_01_20_140949_create_details_table', 15),
('2019_01_20_140949_create_detail_table', 16),
('2019_01_04_063326_create_booking_table', 17),
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2016_09_13_160523_add_role_to_users', 1),
('2016_09_23_054348_add_username_to_users', 1),
('2019_01_04_063312_create_aboutus_table', 2),
('2019_01_04_063326_create_contactus_table', 2),
('2019_01_04_063338_create_services_table', 2),
('2019_01_04_063352_create_blog_table', 2),
('2019_01_04_063406_create_testimonil_table', 2),
('2019_01_04_063418_create_quate_table', 2),
('2019_01_05_131645_create_quatation_table', 3),
('2019_01_08_124648_create_slidshow_table', 4),
('2019_01_10_102802_clients_settingg_table', 5),
('2019_01_08_124648_create_slider_table', 6),
('2019_01_20_140929_create_minservices_table', 7),
('2019_01_20_140949_create_feature_table', 7),
('2019_01_04_063326_create_messaages_table', 8),
('2019_01_04_063352_create_newsletter_table', 9),
('2019_01_05_131645_create_request_price_table', 10),
('2019_01_04_063338_create_offers_table', 11),
('2019_01_08_124648_create_packages_table', 12),
('2019_01_20_140949_create_offersdetails_table', 13),
('2019_01_20_140949_create_offers_details_table', 14),
('2019_01_20_140949_create_details_table', 15),
('2019_01_20_140949_create_detail_table', 16),
('2019_01_04_063326_create_booking_table', 17),
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2016_09_13_160523_add_role_to_users', 1),
('2016_09_23_054348_add_username_to_users', 1),
('2019_01_04_063312_create_aboutus_table', 2),
('2019_01_04_063326_create_contactus_table', 2),
('2019_01_04_063338_create_services_table', 2),
('2019_01_04_063352_create_blog_table', 2),
('2019_01_04_063406_create_testimonil_table', 2),
('2019_01_04_063418_create_quate_table', 2),
('2019_01_05_131645_create_quatation_table', 3),
('2019_01_08_124648_create_slidshow_table', 4),
('2019_01_10_102802_clients_settingg_table', 5),
('2019_01_08_124648_create_slider_table', 6),
('2019_01_20_140929_create_minservices_table', 7),
('2019_01_20_140949_create_feature_table', 7),
('2019_01_04_063326_create_messaages_table', 8),
('2019_01_04_063352_create_newsletter_table', 9),
('2019_01_05_131645_create_request_price_table', 10),
('2019_01_04_063338_create_offers_table', 11),
('2019_01_08_124648_create_packages_table', 12),
('2019_01_20_140949_create_offersdetails_table', 13),
('2019_01_20_140949_create_offers_details_table', 14),
('2019_01_20_140949_create_details_table', 15),
('2019_01_20_140949_create_detail_table', 16),
('2019_01_04_063326_create_booking_table', 17),
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2016_09_13_160523_add_role_to_users', 1),
('2016_09_23_054348_add_username_to_users', 1),
('2019_01_04_063312_create_aboutus_table', 2),
('2019_01_04_063326_create_contactus_table', 2),
('2019_01_04_063338_create_services_table', 2),
('2019_01_04_063352_create_blog_table', 2),
('2019_01_04_063406_create_testimonil_table', 2),
('2019_01_04_063418_create_quate_table', 2),
('2019_01_05_131645_create_quatation_table', 3),
('2019_01_08_124648_create_slidshow_table', 4),
('2019_01_10_102802_clients_settingg_table', 5),
('2019_01_08_124648_create_slider_table', 6),
('2019_01_20_140929_create_minservices_table', 7),
('2019_01_20_140949_create_feature_table', 7),
('2019_01_04_063326_create_messaages_table', 8),
('2019_01_04_063352_create_newsletter_table', 9),
('2019_01_05_131645_create_request_price_table', 10),
('2019_01_04_063338_create_offers_table', 11),
('2019_01_08_124648_create_packages_table', 12),
('2019_01_20_140949_create_offersdetails_table', 13),
('2019_01_20_140949_create_offers_details_table', 14),
('2019_01_20_140949_create_details_table', 15),
('2019_01_20_140949_create_detail_table', 16),
('2019_01_04_063326_create_booking_table', 17),
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2016_09_13_160523_add_role_to_users', 1),
('2016_09_23_054348_add_username_to_users', 1),
('2019_01_04_063312_create_aboutus_table', 2),
('2019_01_04_063326_create_contactus_table', 2),
('2019_01_04_063338_create_services_table', 2),
('2019_01_04_063352_create_blog_table', 2),
('2019_01_04_063406_create_testimonil_table', 2),
('2019_01_04_063418_create_quate_table', 2),
('2019_01_05_131645_create_quatation_table', 3),
('2019_01_08_124648_create_slidshow_table', 4),
('2019_01_10_102802_clients_settingg_table', 5),
('2019_01_08_124648_create_slider_table', 6),
('2019_01_20_140929_create_minservices_table', 7),
('2019_01_20_140949_create_feature_table', 7),
('2019_01_04_063326_create_messaages_table', 8),
('2019_01_04_063352_create_newsletter_table', 9),
('2019_01_05_131645_create_request_price_table', 10),
('2019_01_04_063338_create_offers_table', 11),
('2019_01_08_124648_create_packages_table', 12),
('2019_01_20_140949_create_offersdetails_table', 13),
('2019_01_20_140949_create_offers_details_table', 14),
('2019_01_20_140949_create_details_table', 15),
('2019_01_20_140949_create_detail_table', 16),
('2019_01_04_063326_create_booking_table', 17),
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2016_09_13_160523_add_role_to_users', 1),
('2016_09_23_054348_add_username_to_users', 1),
('2019_01_04_063312_create_aboutus_table', 2),
('2019_01_04_063326_create_contactus_table', 2),
('2019_01_04_063338_create_services_table', 2),
('2019_01_04_063352_create_blog_table', 2),
('2019_01_04_063406_create_testimonil_table', 2),
('2019_01_04_063418_create_quate_table', 2),
('2019_01_05_131645_create_quatation_table', 3),
('2019_01_08_124648_create_slidshow_table', 4),
('2019_01_10_102802_clients_settingg_table', 5),
('2019_01_08_124648_create_slider_table', 6),
('2019_01_20_140929_create_minservices_table', 7),
('2019_01_20_140949_create_feature_table', 7),
('2019_01_04_063326_create_messaages_table', 8),
('2019_01_04_063352_create_newsletter_table', 9),
('2019_01_05_131645_create_request_price_table', 10),
('2019_01_04_063338_create_offers_table', 11),
('2019_01_08_124648_create_packages_table', 12),
('2019_01_20_140949_create_offersdetails_table', 13),
('2019_01_20_140949_create_offers_details_table', 14),
('2019_01_20_140949_create_details_table', 15),
('2019_01_20_140949_create_detail_table', 16),
('2019_01_04_063326_create_booking_table', 17),
('2019_02_17_173837_create_offers_table', 18),
('2019_02_17_173954_create_packages_table', 18),
('2019_02_17_174005_create_details_table', 18),
('2019_02_17_174436_create_package_details_table', 18),
('2019_02_17_190441_add_offer_id_to_packages', 19),
('2019_02_17_174005_create_detailss_table', 20),
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2016_09_13_160523_add_role_to_users', 1),
('2016_09_23_054348_add_username_to_users', 1),
('2019_01_04_063312_create_aboutus_table', 2),
('2019_01_04_063326_create_contactus_table', 2),
('2019_01_04_063338_create_services_table', 2),
('2019_01_04_063352_create_blog_table', 2),
('2019_01_04_063406_create_testimonil_table', 2),
('2019_01_04_063418_create_quate_table', 2),
('2019_01_05_131645_create_quatation_table', 3),
('2019_01_08_124648_create_slidshow_table', 4),
('2019_01_10_102802_clients_settingg_table', 5),
('2019_01_08_124648_create_slider_table', 6),
('2019_01_20_140929_create_minservices_table', 7),
('2019_01_20_140949_create_feature_table', 7),
('2019_01_04_063326_create_messaages_table', 8),
('2019_01_04_063352_create_newsletter_table', 9),
('2019_01_05_131645_create_request_price_table', 10),
('2019_01_04_063338_create_offers_table', 11),
('2019_01_08_124648_create_packages_table', 12),
('2019_01_20_140949_create_offersdetails_table', 13),
('2019_01_20_140949_create_offers_details_table', 14),
('2019_01_20_140949_create_details_table', 15),
('2019_01_20_140949_create_detail_table', 16),
('2019_01_04_063326_create_booking_table', 17),
('2019_02_17_173837_create_offers_table', 18),
('2019_02_17_173954_create_packages_table', 18),
('2019_02_17_174005_create_details_table', 18),
('2019_02_17_174436_create_package_details_table', 18),
('2019_02_17_190441_add_offer_id_to_packages', 19),
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2016_09_13_160523_add_role_to_users', 1),
('2016_09_23_054348_add_username_to_users', 1),
('2019_01_04_063312_create_aboutus_table', 2),
('2019_01_04_063326_create_contactus_table', 2),
('2019_01_04_063338_create_services_table', 2),
('2019_01_04_063352_create_blog_table', 2),
('2019_01_04_063406_create_testimonil_table', 2),
('2019_01_04_063418_create_quate_table', 2),
('2019_01_05_131645_create_quatation_table', 3),
('2019_01_08_124648_create_slidshow_table', 4),
('2019_01_10_102802_clients_settingg_table', 5),
('2019_01_08_124648_create_slider_table', 6),
('2019_01_20_140929_create_minservices_table', 7),
('2019_01_20_140949_create_feature_table', 7),
('2019_01_04_063326_create_messaages_table', 8),
('2019_01_04_063352_create_newsletter_table', 9),
('2019_01_05_131645_create_request_price_table', 10),
('2019_01_04_063338_create_offers_table', 11),
('2019_01_08_124648_create_packages_table', 12),
('2019_01_20_140949_create_offersdetails_table', 13),
('2019_01_20_140949_create_offers_details_table', 14),
('2019_01_20_140949_create_details_table', 15),
('2019_01_20_140949_create_detail_table', 16),
('2019_01_04_063326_create_booking_table', 17),
('2019_02_17_173837_create_offers_table', 18),
('2019_02_17_173954_create_packages_table', 18),
('2019_02_17_174005_create_details_table', 18),
('2019_02_17_174436_create_package_details_table', 18),
('2019_02_17_190441_add_offer_id_to_packages', 19);
INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2019_02_17_174005_create_detailss_table', 20),
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2016_09_13_160523_add_role_to_users', 1),
('2016_09_23_054348_add_username_to_users', 1),
('2019_01_04_063312_create_aboutus_table', 2),
('2019_01_04_063326_create_contactus_table', 2),
('2019_01_04_063338_create_services_table', 2),
('2019_01_04_063352_create_blog_table', 2),
('2019_01_04_063406_create_testimonil_table', 2),
('2019_01_04_063418_create_quate_table', 2),
('2019_01_05_131645_create_quatation_table', 3),
('2019_01_08_124648_create_slidshow_table', 4),
('2019_01_10_102802_clients_settingg_table', 5),
('2019_01_08_124648_create_slider_table', 6),
('2019_01_20_140929_create_minservices_table', 7),
('2019_01_20_140949_create_feature_table', 7),
('2019_01_04_063326_create_messaages_table', 8),
('2019_01_04_063352_create_newsletter_table', 9),
('2019_01_05_131645_create_request_price_table', 10),
('2019_01_04_063338_create_offers_table', 11),
('2019_01_08_124648_create_packages_table', 12),
('2019_01_20_140949_create_offersdetails_table', 13),
('2019_01_20_140949_create_offers_details_table', 14),
('2019_01_20_140949_create_details_table', 15),
('2019_01_20_140949_create_detail_table', 16),
('2019_01_04_063326_create_booking_table', 17),
('2019_02_17_173837_create_offers_table', 18),
('2019_02_17_173954_create_packages_table', 18),
('2019_02_17_174005_create_details_table', 18),
('2019_02_17_174436_create_package_details_table', 18),
('2019_02_17_190441_add_offer_id_to_packages', 19),
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2016_09_13_160523_add_role_to_users', 1),
('2016_09_23_054348_add_username_to_users', 1),
('2019_01_04_063312_create_aboutus_table', 2),
('2019_01_04_063326_create_contactus_table', 2),
('2019_01_04_063338_create_services_table', 2),
('2019_01_04_063352_create_blog_table', 2),
('2019_01_04_063406_create_testimonil_table', 2),
('2019_01_04_063418_create_quate_table', 2),
('2019_01_05_131645_create_quatation_table', 3),
('2019_01_08_124648_create_slidshow_table', 4),
('2019_01_10_102802_clients_settingg_table', 5),
('2019_01_08_124648_create_slider_table', 6),
('2019_01_20_140929_create_minservices_table', 7),
('2019_01_20_140949_create_feature_table', 7),
('2019_01_04_063326_create_messaages_table', 8),
('2019_01_04_063352_create_newsletter_table', 9),
('2019_01_05_131645_create_request_price_table', 10),
('2019_01_04_063338_create_offers_table', 11),
('2019_01_08_124648_create_packages_table', 12),
('2019_01_20_140949_create_offersdetails_table', 13),
('2019_01_20_140949_create_offers_details_table', 14),
('2019_01_20_140949_create_details_table', 15),
('2019_01_20_140949_create_detail_table', 16),
('2019_01_04_063326_create_booking_table', 17),
('2019_02_17_173837_create_offers_table', 18),
('2019_02_17_173954_create_packages_table', 18),
('2019_02_17_174005_create_details_table', 18),
('2019_02_17_174436_create_package_details_table', 18),
('2019_02_17_190441_add_offer_id_to_packages', 19),
('2019_02_17_174005_create_detailss_table', 20),
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2016_09_13_160523_add_role_to_users', 1),
('2016_09_23_054348_add_username_to_users', 1),
('2019_01_04_063312_create_aboutus_table', 2),
('2019_01_04_063326_create_contactus_table', 2),
('2019_01_04_063338_create_services_table', 2),
('2019_01_04_063352_create_blog_table', 2),
('2019_01_04_063406_create_testimonil_table', 2),
('2019_01_04_063418_create_quate_table', 2),
('2019_01_05_131645_create_quatation_table', 3),
('2019_01_08_124648_create_slidshow_table', 4),
('2019_01_10_102802_clients_settingg_table', 5),
('2019_01_08_124648_create_slider_table', 6),
('2019_01_20_140929_create_minservices_table', 7),
('2019_01_20_140949_create_feature_table', 7),
('2019_01_04_063326_create_messaages_table', 8),
('2019_01_04_063352_create_newsletter_table', 9),
('2019_01_05_131645_create_request_price_table', 10),
('2019_01_04_063338_create_offers_table', 11),
('2019_01_08_124648_create_packages_table', 12),
('2019_01_20_140949_create_offersdetails_table', 13),
('2019_01_20_140949_create_offers_details_table', 14),
('2019_01_20_140949_create_details_table', 15),
('2019_01_20_140949_create_detail_table', 16),
('2019_01_04_063326_create_booking_table', 17),
('2019_02_17_173837_create_offers_table', 18),
('2019_02_17_173954_create_packages_table', 18),
('2019_02_17_174005_create_details_table', 18),
('2019_02_17_174436_create_package_details_table', 18),
('2019_02_17_190441_add_offer_id_to_packages', 19),
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2016_09_13_160523_add_role_to_users', 1),
('2016_09_23_054348_add_username_to_users', 1),
('2019_01_04_063312_create_aboutus_table', 2),
('2019_01_04_063326_create_contactus_table', 2),
('2019_01_04_063338_create_services_table', 2),
('2019_01_04_063352_create_blog_table', 2),
('2019_01_04_063406_create_testimonil_table', 2),
('2019_01_04_063418_create_quate_table', 2),
('2019_01_05_131645_create_quatation_table', 3),
('2019_01_08_124648_create_slidshow_table', 4),
('2019_01_10_102802_clients_settingg_table', 5),
('2019_01_08_124648_create_slider_table', 6),
('2019_01_20_140929_create_minservices_table', 7),
('2019_01_20_140949_create_feature_table', 7),
('2019_01_04_063326_create_messaages_table', 8),
('2019_01_04_063352_create_newsletter_table', 9),
('2019_01_05_131645_create_request_price_table', 10),
('2019_01_04_063338_create_offers_table', 11),
('2019_01_08_124648_create_packages_table', 12),
('2019_01_20_140949_create_offersdetails_table', 13),
('2019_01_20_140949_create_offers_details_table', 14),
('2019_01_20_140949_create_details_table', 15),
('2019_01_20_140949_create_detail_table', 16),
('2019_01_04_063326_create_booking_table', 17),
('2019_02_17_173837_create_offers_table', 18),
('2019_02_17_173954_create_packages_table', 18),
('2019_02_17_174005_create_details_table', 18),
('2019_02_17_174436_create_package_details_table', 18),
('2019_02_17_190441_add_offer_id_to_packages', 19),
('2019_02_17_174005_create_detailss_table', 20),
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2016_09_13_160523_add_role_to_users', 1),
('2016_09_23_054348_add_username_to_users', 1),
('2019_01_04_063312_create_aboutus_table', 2),
('2019_01_04_063326_create_contactus_table', 2),
('2019_01_04_063338_create_services_table', 2),
('2019_01_04_063352_create_blog_table', 2),
('2019_01_04_063406_create_testimonil_table', 2),
('2019_01_04_063418_create_quate_table', 2),
('2019_01_05_131645_create_quatation_table', 3),
('2019_01_08_124648_create_slidshow_table', 4),
('2019_01_10_102802_clients_settingg_table', 5),
('2019_01_08_124648_create_slider_table', 6),
('2019_01_20_140929_create_minservices_table', 7),
('2019_01_20_140949_create_feature_table', 7),
('2019_01_04_063326_create_messaages_table', 8),
('2019_01_04_063352_create_newsletter_table', 9),
('2019_01_05_131645_create_request_price_table', 10),
('2019_01_04_063338_create_offers_table', 11),
('2019_01_08_124648_create_packages_table', 12),
('2019_01_20_140949_create_offersdetails_table', 13),
('2019_01_20_140949_create_offers_details_table', 14),
('2019_01_20_140949_create_details_table', 15),
('2019_01_20_140949_create_detail_table', 16),
('2019_01_04_063326_create_booking_table', 17),
('2019_02_17_173837_create_offers_table', 18),
('2019_02_17_173954_create_packages_table', 18),
('2019_02_17_174005_create_details_table', 18),
('2019_02_17_174436_create_package_details_table', 18),
('2019_02_17_190441_add_offer_id_to_packages', 19),
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2016_09_13_160523_add_role_to_users', 1),
('2016_09_23_054348_add_username_to_users', 1),
('2019_01_04_063312_create_aboutus_table', 2),
('2019_01_04_063326_create_contactus_table', 2),
('2019_01_04_063338_create_services_table', 2),
('2019_01_04_063352_create_blog_table', 2),
('2019_01_04_063406_create_testimonil_table', 2),
('2019_01_04_063418_create_quate_table', 2),
('2019_01_05_131645_create_quatation_table', 3),
('2019_01_08_124648_create_slidshow_table', 4),
('2019_01_10_102802_clients_settingg_table', 5),
('2019_01_08_124648_create_slider_table', 6),
('2019_01_20_140929_create_minservices_table', 7),
('2019_01_20_140949_create_feature_table', 7),
('2019_01_04_063326_create_messaages_table', 8),
('2019_01_04_063352_create_newsletter_table', 9),
('2019_01_05_131645_create_request_price_table', 10),
('2019_01_04_063338_create_offers_table', 11),
('2019_01_08_124648_create_packages_table', 12),
('2019_01_20_140949_create_offersdetails_table', 13),
('2019_01_20_140949_create_offers_details_table', 14),
('2019_01_20_140949_create_details_table', 15),
('2019_01_20_140949_create_detail_table', 16),
('2019_01_04_063326_create_booking_table', 17),
('2019_02_17_173837_create_offers_table', 18),
('2019_02_17_173954_create_packages_table', 18),
('2019_02_17_174005_create_details_table', 18),
('2019_02_17_174436_create_package_details_table', 18),
('2019_02_17_190441_add_offer_id_to_packages', 19),
('2019_02_17_174005_create_detailss_table', 20),
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2016_09_13_160523_add_role_to_users', 1),
('2016_09_23_054348_add_username_to_users', 1),
('2019_01_04_063312_create_aboutus_table', 2),
('2019_01_04_063326_create_contactus_table', 2),
('2019_01_04_063338_create_services_table', 2),
('2019_01_04_063352_create_blog_table', 2),
('2019_01_04_063406_create_testimonil_table', 2),
('2019_01_04_063418_create_quate_table', 2),
('2019_01_05_131645_create_quatation_table', 3),
('2019_01_08_124648_create_slidshow_table', 4),
('2019_01_10_102802_clients_settingg_table', 5),
('2019_01_08_124648_create_slider_table', 6),
('2019_01_20_140929_create_minservices_table', 7),
('2019_01_20_140949_create_feature_table', 7),
('2019_01_04_063326_create_messaages_table', 8),
('2019_01_04_063352_create_newsletter_table', 9),
('2019_01_05_131645_create_request_price_table', 10),
('2019_01_04_063338_create_offers_table', 11),
('2019_01_08_124648_create_packages_table', 12),
('2019_01_20_140949_create_offersdetails_table', 13),
('2019_01_20_140949_create_offers_details_table', 14),
('2019_01_20_140949_create_details_table', 15),
('2019_01_20_140949_create_detail_table', 16),
('2019_01_04_063326_create_booking_table', 17),
('2019_02_17_173837_create_offers_table', 18),
('2019_02_17_173954_create_packages_table', 18),
('2019_02_17_174005_create_details_table', 18),
('2019_02_17_174436_create_package_details_table', 18),
('2019_02_17_190441_add_offer_id_to_packages', 19),
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2016_09_13_160523_add_role_to_users', 1),
('2016_09_23_054348_add_username_to_users', 1),
('2019_01_04_063312_create_aboutus_table', 2),
('2019_01_04_063326_create_contactus_table', 2),
('2019_01_04_063338_create_services_table', 2),
('2019_01_04_063352_create_blog_table', 2),
('2019_01_04_063406_create_testimonil_table', 2),
('2019_01_04_063418_create_quate_table', 2),
('2019_01_05_131645_create_quatation_table', 3),
('2019_01_08_124648_create_slidshow_table', 4),
('2019_01_10_102802_clients_settingg_table', 5),
('2019_01_08_124648_create_slider_table', 6),
('2019_01_20_140929_create_minservices_table', 7),
('2019_01_20_140949_create_feature_table', 7),
('2019_01_04_063326_create_messaages_table', 8),
('2019_01_04_063352_create_newsletter_table', 9),
('2019_01_05_131645_create_request_price_table', 10),
('2019_01_04_063338_create_offers_table', 11),
('2019_01_08_124648_create_packages_table', 12),
('2019_01_20_140949_create_offersdetails_table', 13),
('2019_01_20_140949_create_offers_details_table', 14),
('2019_01_20_140949_create_details_table', 15),
('2019_01_20_140949_create_detail_table', 16),
('2019_01_04_063326_create_booking_table', 17),
('2019_02_17_173837_create_offers_table', 18),
('2019_02_17_173954_create_packages_table', 18),
('2019_02_17_174005_create_details_table', 18),
('2019_02_17_174436_create_package_details_table', 18),
('2019_02_17_190441_add_offer_id_to_packages', 19),
('2019_02_17_174005_create_detailss_table', 20),
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2016_09_13_160523_add_role_to_users', 1),
('2016_09_23_054348_add_username_to_users', 1),
('2019_01_04_063312_create_aboutus_table', 2),
('2019_01_04_063326_create_contactus_table', 2),
('2019_01_04_063338_create_services_table', 2),
('2019_01_04_063352_create_blog_table', 2),
('2019_01_04_063406_create_testimonil_table', 2),
('2019_01_04_063418_create_quate_table', 2),
('2019_01_05_131645_create_quatation_table', 3),
('2019_01_08_124648_create_slidshow_table', 4),
('2019_01_10_102802_clients_settingg_table', 5),
('2019_01_08_124648_create_slider_table', 6),
('2019_01_20_140929_create_minservices_table', 7),
('2019_01_20_140949_create_feature_table', 7),
('2019_01_04_063326_create_messaages_table', 8),
('2019_01_04_063352_create_newsletter_table', 9),
('2019_01_05_131645_create_request_price_table', 10),
('2019_01_04_063338_create_offers_table', 11),
('2019_01_08_124648_create_packages_table', 12),
('2019_01_20_140949_create_offersdetails_table', 13),
('2019_01_20_140949_create_offers_details_table', 14),
('2019_01_20_140949_create_details_table', 15),
('2019_01_20_140949_create_detail_table', 16),
('2019_01_04_063326_create_booking_table', 17),
('2019_02_17_173837_create_offers_table', 18),
('2019_02_17_173954_create_packages_table', 18),
('2019_02_17_174005_create_details_table', 18),
('2019_02_17_174436_create_package_details_table', 18),
('2019_02_17_190441_add_offer_id_to_packages', 19),
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2016_09_13_160523_add_role_to_users', 1),
('2016_09_23_054348_add_username_to_users', 1),
('2019_01_04_063312_create_aboutus_table', 2),
('2019_01_04_063326_create_contactus_table', 2),
('2019_01_04_063338_create_services_table', 2),
('2019_01_04_063352_create_blog_table', 2),
('2019_01_04_063406_create_testimonil_table', 2),
('2019_01_04_063418_create_quate_table', 2),
('2019_01_05_131645_create_quatation_table', 3),
('2019_01_08_124648_create_slidshow_table', 4),
('2019_01_10_102802_clients_settingg_table', 5),
('2019_01_08_124648_create_slider_table', 6),
('2019_01_20_140929_create_minservices_table', 7),
('2019_01_20_140949_create_feature_table', 7),
('2019_01_04_063326_create_messaages_table', 8),
('2019_01_04_063352_create_newsletter_table', 9),
('2019_01_05_131645_create_request_price_table', 10),
('2019_01_04_063338_create_offers_table', 11),
('2019_01_08_124648_create_packages_table', 12),
('2019_01_20_140949_create_offersdetails_table', 13),
('2019_01_20_140949_create_offers_details_table', 14),
('2019_01_20_140949_create_details_table', 15),
('2019_01_20_140949_create_detail_table', 16),
('2019_01_04_063326_create_booking_table', 17),
('2019_02_17_173837_create_offers_table', 18),
('2019_02_17_173954_create_packages_table', 18),
('2019_02_17_174005_create_details_table', 18),
('2019_02_17_174436_create_package_details_table', 18),
('2019_02_17_190441_add_offer_id_to_packages', 19),
('2019_02_17_174005_create_detailss_table', 20),
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2016_09_13_160523_add_role_to_users', 1),
('2016_09_23_054348_add_username_to_users', 1),
('2019_01_04_063312_create_aboutus_table', 2),
('2019_01_04_063326_create_contactus_table', 2),
('2019_01_04_063338_create_services_table', 2),
('2019_01_04_063352_create_blog_table', 2),
('2019_01_04_063406_create_testimonil_table', 2),
('2019_01_04_063418_create_quate_table', 2),
('2019_01_05_131645_create_quatation_table', 3),
('2019_01_08_124648_create_slidshow_table', 4),
('2019_01_10_102802_clients_settingg_table', 5),
('2019_01_08_124648_create_slider_table', 6),
('2019_01_20_140929_create_minservices_table', 7),
('2019_01_20_140949_create_feature_table', 7),
('2019_01_04_063326_create_messaages_table', 8),
('2019_01_04_063352_create_newsletter_table', 9),
('2019_01_05_131645_create_request_price_table', 10),
('2019_01_04_063338_create_offers_table', 11),
('2019_01_08_124648_create_packages_table', 12),
('2019_01_20_140949_create_offersdetails_table', 13),
('2019_01_20_140949_create_offers_details_table', 14),
('2019_01_20_140949_create_details_table', 15),
('2019_01_20_140949_create_detail_table', 16),
('2019_01_04_063326_create_booking_table', 17),
('2019_02_17_173837_create_offers_table', 18),
('2019_02_17_173954_create_packages_table', 18),
('2019_02_17_174005_create_details_table', 18),
('2019_02_17_174436_create_package_details_table', 18),
('2019_02_17_190441_add_offer_id_to_packages', 19),
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2016_09_13_160523_add_role_to_users', 1),
('2016_09_23_054348_add_username_to_users', 1),
('2019_01_04_063312_create_aboutus_table', 2),
('2019_01_04_063326_create_contactus_table', 2),
('2019_01_04_063338_create_services_table', 2),
('2019_01_04_063352_create_blog_table', 2),
('2019_01_04_063406_create_testimonil_table', 2),
('2019_01_04_063418_create_quate_table', 2),
('2019_01_05_131645_create_quatation_table', 3),
('2019_01_08_124648_create_slidshow_table', 4),
('2019_01_10_102802_clients_settingg_table', 5),
('2019_01_08_124648_create_slider_table', 6),
('2019_01_20_140929_create_minservices_table', 7),
('2019_01_20_140949_create_feature_table', 7),
('2019_01_04_063326_create_messaages_table', 8),
('2019_01_04_063352_create_newsletter_table', 9),
('2019_01_05_131645_create_request_price_table', 10),
('2019_01_04_063338_create_offers_table', 11),
('2019_01_08_124648_create_packages_table', 12),
('2019_01_20_140949_create_offersdetails_table', 13),
('2019_01_20_140949_create_offers_details_table', 14),
('2019_01_20_140949_create_details_table', 15),
('2019_01_20_140949_create_detail_table', 16),
('2019_01_04_063326_create_booking_table', 17),
('2019_02_17_173837_create_offers_table', 18),
('2019_02_17_173954_create_packages_table', 18),
('2019_02_17_174005_create_details_table', 18),
('2019_02_17_174436_create_package_details_table', 18),
('2019_02_17_190441_add_offer_id_to_packages', 19),
('2019_02_17_174005_create_detailss_table', 20),
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2016_09_13_160523_add_role_to_users', 1),
('2016_09_23_054348_add_username_to_users', 1),
('2019_01_04_063312_create_aboutus_table', 2),
('2019_01_04_063326_create_contactus_table', 2),
('2019_01_04_063338_create_services_table', 2),
('2019_01_04_063352_create_blog_table', 2),
('2019_01_04_063406_create_testimonil_table', 2),
('2019_01_04_063418_create_quate_table', 2),
('2019_01_05_131645_create_quatation_table', 3),
('2019_01_08_124648_create_slidshow_table', 4),
('2019_01_10_102802_clients_settingg_table', 5),
('2019_01_08_124648_create_slider_table', 6),
('2019_01_20_140929_create_minservices_table', 7),
('2019_01_20_140949_create_feature_table', 7),
('2019_01_04_063326_create_messaages_table', 8),
('2019_01_04_063352_create_newsletter_table', 9),
('2019_01_05_131645_create_request_price_table', 10),
('2019_01_04_063338_create_offers_table', 11),
('2019_01_08_124648_create_packages_table', 12),
('2019_01_20_140949_create_offersdetails_table', 13),
('2019_01_20_140949_create_offers_details_table', 14),
('2019_01_20_140949_create_details_table', 15),
('2019_01_20_140949_create_detail_table', 16),
('2019_01_04_063326_create_booking_table', 17),
('2019_02_17_173837_create_offers_table', 18),
('2019_02_17_173954_create_packages_table', 18),
('2019_02_17_174005_create_details_table', 18),
('2019_02_17_174436_create_package_details_table', 18),
('2019_02_17_190441_add_offer_id_to_packages', 19),
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2016_09_13_160523_add_role_to_users', 1),
('2016_09_23_054348_add_username_to_users', 1),
('2019_01_04_063312_create_aboutus_table', 2),
('2019_01_04_063326_create_contactus_table', 2),
('2019_01_04_063338_create_services_table', 2),
('2019_01_04_063352_create_blog_table', 2),
('2019_01_04_063406_create_testimonil_table', 2),
('2019_01_04_063418_create_quate_table', 2),
('2019_01_05_131645_create_quatation_table', 3),
('2019_01_08_124648_create_slidshow_table', 4),
('2019_01_10_102802_clients_settingg_table', 5),
('2019_01_08_124648_create_slider_table', 6),
('2019_01_20_140929_create_minservices_table', 7),
('2019_01_20_140949_create_feature_table', 7),
('2019_01_04_063326_create_messaages_table', 8),
('2019_01_04_063352_create_newsletter_table', 9),
('2019_01_05_131645_create_request_price_table', 10),
('2019_01_04_063338_create_offers_table', 11),
('2019_01_08_124648_create_packages_table', 12),
('2019_01_20_140949_create_offersdetails_table', 13),
('2019_01_20_140949_create_offers_details_table', 14),
('2019_01_20_140949_create_details_table', 15),
('2019_01_20_140949_create_detail_table', 16),
('2019_01_04_063326_create_booking_table', 17),
('2019_02_17_173837_create_offers_table', 18),
('2019_02_17_173954_create_packages_table', 18),
('2019_02_17_174005_create_details_table', 18),
('2019_02_17_174436_create_package_details_table', 18),
('2019_02_17_190441_add_offer_id_to_packages', 19),
('2019_02_17_174005_create_detailss_table', 20),
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2016_09_13_160523_add_role_to_users', 1),
('2016_09_23_054348_add_username_to_users', 1),
('2019_01_04_063312_create_aboutus_table', 2),
('2019_01_04_063326_create_contactus_table', 2),
('2019_01_04_063338_create_services_table', 2),
('2019_01_04_063352_create_blog_table', 2),
('2019_01_04_063406_create_testimonil_table', 2),
('2019_01_04_063418_create_quate_table', 2),
('2019_01_05_131645_create_quatation_table', 3),
('2019_01_08_124648_create_slidshow_table', 4),
('2019_01_10_102802_clients_settingg_table', 5),
('2019_01_08_124648_create_slider_table', 6),
('2019_01_20_140929_create_minservices_table', 7),
('2019_01_20_140949_create_feature_table', 7),
('2019_01_04_063326_create_messaages_table', 8),
('2019_01_04_063352_create_newsletter_table', 9),
('2019_01_05_131645_create_request_price_table', 10),
('2019_01_04_063338_create_offers_table', 11),
('2019_01_08_124648_create_packages_table', 12),
('2019_01_20_140949_create_offersdetails_table', 13),
('2019_01_20_140949_create_offers_details_table', 14),
('2019_01_20_140949_create_details_table', 15),
('2019_01_20_140949_create_detail_table', 16),
('2019_01_04_063326_create_booking_table', 17),
('2019_02_17_173837_create_offers_table', 18),
('2019_02_17_173954_create_packages_table', 18),
('2019_02_17_174005_create_details_table', 18),
('2019_02_17_174436_create_package_details_table', 18),
('2019_02_17_190441_add_offer_id_to_packages', 19);

-- --------------------------------------------------------

--
-- Table structure for table `minservices`
--

CREATE TABLE `minservices` (
  `id` int(10) UNSIGNED NOT NULL,
  `services_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `image1` varchar(255) NOT NULL,
  `image2` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `minservices`
--

INSERT INTO `minservices` (`id`, `services_id`, `title`, `description`, `image1`, `image2`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 7, '56y56dddddddd', '56y5dddddddddddddd', 'account/images\\apps.png', 'account/images\\3.jpg', NULL, '2019-01-22 11:36:17', NULL),
(2, 6, 'wfewfwfwefwf', 'wefwrfwrf', 'account/images\\apps.png', 'account/images\\4.jpg', '2019-01-22 13:03:30', '2019-01-22 12:07:18', NULL),
(3, 6, 'wfewfwfwefwf', 'wefwrfwrf', 'account/images\\5.jpg', 'account/images\\4.jpg', '2019-01-22 13:03:30', '2019-01-22 13:03:50', '2019-01-22 13:03:50'),
(4, 12, 'تصميم المواقع الالكترونية', 'تصميم المواقع الالكترونية', 'account/images/Planing.png', 'account/images/5a74764ec14f9b0001c33ad2_7b934-1pu7wwmx3jata6ccdkvswpa_du6azv-p-2000.jpeg', '2019-01-28 20:47:05', '2019-01-28 20:47:05', NULL),
(5, 13, 'برمجة المواقع الالكترونية ', 'برمجة المواقع الالكترونية ', 'account/images/5a74764ec14f9b0001c33ad2_7b934-1pu7wwmx3jata6ccdkvswpa_du6azv-p-2000.jpeg', 'account/images/31747957_2246007572338047_6547273108372324352_o.jpg', '2019-01-28 20:49:38', '2019-01-28 20:49:38', NULL),
(6, 8, 'تصميم المواقع   ', '6tujy', 'account/images/gallery_img5.jpg', 'account/images/gallery_img5.jpg', '2019-01-28 20:55:53', '2019-01-28 20:55:58', '2019-01-28 20:55:58'),
(7, 12, 'تصميم متجاوب', 'ثق تماما بانك عند التعاقد معنا علي تصميم موقعك بانك ستحصل علي موقع كامل متجاوب مع كافة الاجهزة والمتصفحات سواء عن طريق الحواسيب او الهواتف', 'account/images/Planing.png', 'account/images/Social-Banner.jpg', '2019-01-28 21:08:46', '2019-01-28 21:08:46', NULL),
(8, 14, 'استضافة المواقع الالكترونية', 'كافة السيرفرات التي نوفرها لعملاؤنا سيرفرات قوية ومؤمنة ومناسبة لكافة الاغراض وتدعم كافة لغات البرمجة سواء للشركات او للافراد\r\n \r\n', 'account/images/under Development.jpg', 'account/images/Planing.png', '2019-01-30 13:52:18', '2019-01-30 13:52:18', NULL),
(9, 15, 'تصميم المواقع الالكترونية', 'كلمة الاحترافية لا تعني الشكل فقط  ولكن أيضا هي العمل على  انشاء موقع متكامل ومتوافق مع كافة معاييرالاحترافية من شكل وتناسق الوان وسهولة تصفح ومرونة وجاذبية', 'account/images/Webdesign3-1024x512.jpg', 'account/images/Website Design.jpg', '2019-02-07 14:14:38', '2019-02-07 14:19:23', NULL),
(10, 16, 'برمجة المواقع الالكترونية ', 'إن تحويل الأفكار إلى مشاريع تجارية جيدة التنفيذ هو ما يؤمن به فريقنا من مطوري PHP المحترفين. ', 'account/images/Web-Design.png', 'account/images/Webdesign3-1024x512.jpg', '2019-02-09 16:24:18', '2019-02-12 11:40:56', NULL),
(11, 18, 'استضافة المواقع الالكترونية', 'امتلاكك موقع جيد بدون استضافة  قوية وأمنة وسريعة لن يجعل من موقعك قابل للنجاح والتطوير . كافة السيرفرات التي نقدمها بها مميزات غير محدودة وبأحدث التقنيات المتاحة.\r\n', 'account/images/web-hosting.png', 'account/images/web-hosting.png', '2019-02-12 14:26:45', '2019-02-12 14:41:38', NULL),
(12, 19, 'التسويق الالكتروني', 'نقوم  بدعم الشركات والهيئات من خلال مجموعة متنوعة من الحلول وخدمات الاستشارات التسويقية الإلكترونية ', 'account/images/icon-desktop-tablet.png', 'account/images/RESPONSIVE_WEB-512.png', '2019-02-12 16:41:39', '2019-02-12 16:41:39', NULL),
(13, 20, 'تصميم العلامة التجارية', 'يعد شعارك جزءًا مهمًا للترويج والتسويق لنشاطك التجاري وهو أول شيء يلفت نظر العميل المحتمل. يدعم تصميم الشعار الخاص جميع المواد التسويقية والترويجية وموقع الويب الخاص بك  لجذب الانتباه وتحفيزالعملاء  بالاهتمام بما تقدمه.', 'account/images/megamenu-ios.png', 'account/images/megamenu-ios.png', '2019-02-12 18:00:38', '2019-02-12 18:02:18', NULL),
(14, 21, 'برمجة تطبيقات الويب', ' من خلال تطبيقات الويب التي نقوم بإنشاؤها باستخدام أحدث  تقنيات وممارسات الويب مفتوحة المصدر  سنقدم لك تطبيقات احترافية وآمنة . ', 'account/images/web_application_framework-01.png', 'account/images/web_application_framework-01.png', '2019-02-13 18:56:40', '2019-02-13 18:58:07', NULL),
(15, 22, 'برمجة تطبيقات الموبايل ', 'اذا كنت تريد إنشاء تطبيق للموبايل ، فقد قمنا بتوفيركل انواع المنصات التي خصصت.  بما في ذلك iOS و Android  و Windows Mobile ', 'account/images/cb_services_android-400x400.png', 'account/images/cb_services_apple-400x400.png', '2019-02-16 14:15:08', '2019-02-17 19:28:54', NULL),
(16, 24, 'الفيديوهات الدعائية', 'اضف اللمسة الحيوية إلي المحتوي الإعلاني لشركتك وحقق إنتشار كبير باستخدام فيديوهات موشن جرافيك فى الحملات التسويقية لخدماتك ', 'account/images/website-maintenance.png', 'account/images/Web-Design.png', '2019-02-16 15:47:20', '2019-02-21 21:52:59', NULL),
(17, 25, 'استشارات وحلول الاعمال', 'لتحقيق النجاح اليوم في بيئة العمل ، تحتاج الشركات إلى التنقل بنجاح من خلال تحليل ومراقبة الأداء ، وزيادة الكفاءة التشغيلية وتمكين التعاون في ظل التغيير المستمر.', 'account/images/images.jpg', 'account/images/images.jpg', '2019-02-18 15:03:59', '2019-02-18 15:03:59', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `money`
--

CREATE TABLE `money` (
  `id` int(11) NOT NULL,
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `salary` int(11) NOT NULL,
  `month` int(11) NOT NULL,
  `service` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `expenses` varchar(250) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `expenses_amount` int(11) NOT NULL,
  `Remainingـbalance` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `money`
--

INSERT INTO `money` (`id`, `name`, `salary`, `month`, `service`, `expenses`, `expenses_amount`, `Remainingـbalance`) VALUES
(1, 'حماده علي', 6500, 6, 'مبرمج', '', 0, 0),
(2, 'شرين', 4000, 6, 'مبرمجه', '', 0, 0),
(3, 'منه انور', 500, 6, 'تصميم لوجو', '', 0, 0),
(4, 'محمود', 5000, 6, 'تصميم html', '', 0, 0),
(5, 'موجود', 0, 6, '', 'شراء دومين', 1680, 0),
(6, 'حماده علي', 6500, 7, 'مبرمج', '', 0, 0),
(7, 'شرين', 4000, 7, 'مبرمجه', '', 0, 0),
(8, 'ابراهيم ', 2000, 7, 'مصمم جرافيك', '', 0, 0),
(9, 'مريم ', 750, 7, 'تواصل وداتا انتري  ', '', 0, 0),
(10, 'منه محمد', 1400, 7, 'تصميم جرافيك', '', 0, 0),
(11, 'حمادة علي', 6500, 8, 'مبرمج', '', 0, 0),
(12, 'شرين', 4000, 8, 'مبرمجه', '', 0, 0),
(13, 'مريم', 1000, 8, 'تواصل اجتماعي داتا انتري', '', 0, 0),
(14, 'منه محمد', 3000, 8, 'جرافيك ديزينر', '', 0, 0),
(15, 'موجود', 0, 8, '', 'كورس ل شرين', 1000, 0),
(16, 'حماده علي', 8000, 9, 'مبرمج', '', 0, 0),
(17, 'شرين', 5000, 9, 'مبرمجه', '', 0, 0),
(18, 'منه محمد', 3000, 9, 'جرافيك ديزينر', '', 0, 0),
(19, 'حمادة علي ', 8000, 10, 'مبرمج', '', 0, 0),
(20, 'شرين', 5000, 10, 'مبرمجه', '', 0, 0),
(21, 'وائل', 3000, 10, 'جرافيك ديزينر', '', 0, 0),
(22, 'حماده', 0, 10, '', 'شغل اتعمل ف التطبيق من قبل اشخاص اكثر خبره', 1000, 0),
(23, 'حماده', 0, 10, '', 'تصليح لاب توب ', 450, 0),
(24, 'حماده ', 0, 10, '', 'مصاريف نت', 70, 0),
(25, 'شرين', 0, 10, '', 'مصاريف نت', 70, 0),
(26, 'حمادة علي', 800, 11, 'مبرمج', '', 0, 0),
(27, 'شرين', 5000, 11, 'مبرمجه', '', 0, 0),
(28, 'وائل', 3000, 11, 'جرافيك ديزاينر', '', 0, 0),
(29, 'حازم ', 0, 11, '', 'شراء شهاده الامان', 487, 0),
(30, 'حمادة علي', 0, 11, '', 'شراء لاب توب', 7000, 0),
(31, 'حمادة علي', 8000, 12, 'مبرمج', '', 0, 0),
(32, 'شرين', 5000, 12, 'مبرمجه', '', 0, 0),
(33, 'وائل', 3000, 12, 'جرفيك ديزاينر ', '', 0, 0),
(34, 'حازم', 0, 12, '', 'ربط الموقع ب جوجل ومحركات البحث', 1000, 0);

-- --------------------------------------------------------

--
-- Table structure for table `newsletter`
--

CREATE TABLE `newsletter` (
  `id` int(10) UNSIGNED NOT NULL,
  `mail` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `newsletter`
--

INSERT INTO `newsletter` (`id`, `mail`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'matrixdeveloper1@gmail.com', '2019-01-27 13:01:49', '2019-01-27 13:01:49', NULL),
(2, 'mo_amer84@yahoo.com', '2019-02-24 14:10:56', '2019-02-24 14:10:56', NULL),
(3, 'mo_amer84@yahoo.com', '2019-02-24 14:21:51', '2019-02-24 14:21:51', NULL),
(4, 'admin_manager@matrixtranslation.net', '2019-02-24 15:58:17', '2019-02-24 15:58:17', NULL),
(5, 'admin_manager@matrixtranslation.net', '2019-03-03 18:23:07', '2019-03-03 18:23:07', NULL),
(6, 'mercedesparjus143@gmail.com', '2019-03-11 12:16:20', '2019-03-11 12:16:20', NULL),
(7, 'admin_manager@matrixtranslation.net', '2019-03-11 12:28:37', '2019-03-11 12:28:37', NULL),
(8, 'paulmdonovan@yahoo.com', '2019-03-11 14:08:23', '2019-03-11 14:08:23', NULL),
(9, 'mercedesparjus143@gmail.com', '2019-03-11 15:29:13', '2019-03-11 15:29:13', NULL),
(10, 'admin_manager@matrixtranslation.net', '2019-03-11 15:29:46', '2019-03-11 15:29:46', NULL),
(11, '', '2019-03-11 16:25:21', '2019-03-11 16:25:21', NULL),
(12, '', '2019-03-11 17:17:25', '2019-03-11 17:17:25', NULL),
(13, 'mercedesparjus143@gmail.com', '2019-03-11 20:54:00', '2019-03-11 20:54:00', NULL),
(14, 'mrsjewlya@yahoo.com', '2019-03-12 01:55:15', '2019-03-12 01:55:15', NULL),
(15, 'juddi18188@aol.com', '2019-03-12 08:52:39', '2019-03-12 08:52:39', NULL),
(16, 'tuvu2015@gmail.com', '2019-03-12 13:07:43', '2019-03-12 13:07:43', NULL),
(17, 'john@gibsonexp.com', '2019-03-12 17:30:27', '2019-03-12 17:30:27', NULL),
(18, 'kidscount3@gmail.com', '2019-03-12 19:25:25', '2019-03-12 19:25:25', NULL),
(19, 'mercedesparjus143@gmail.com', '2019-03-12 20:32:40', '2019-03-12 20:32:40', NULL),
(20, '', '2019-03-12 21:24:04', '2019-03-12 21:24:04', NULL),
(21, 'verduredesign@aol.com', '2019-03-12 21:45:24', '2019-03-12 21:45:24', NULL),
(22, 'mohsarlene@gmail.com', '2019-03-12 22:55:56', '2019-03-12 22:55:56', NULL),
(23, 'jasonexist@gmail.com', '2019-03-13 00:41:48', '2019-03-13 00:41:48', NULL),
(24, 'jones518@comcast.net', '2019-03-13 01:01:40', '2019-03-13 01:01:40', NULL),
(25, 'chippy525@gmail.com', '2019-03-13 01:19:06', '2019-03-13 01:19:06', NULL),
(26, 'kwhitham1@gmail.com', '2019-03-13 01:29:50', '2019-03-13 01:29:50', NULL),
(27, 'looloo885@yahoo.com', '2019-03-13 02:04:01', '2019-03-13 02:04:01', NULL),
(28, 'rawsonbari@gmail.com', '2019-03-13 04:08:05', '2019-03-13 04:08:05', NULL),
(29, 'ksmithbuilder1@gmail.com', '2019-03-13 12:06:56', '2019-03-13 12:06:56', NULL),
(30, 'akariseattle@yahoo.com', '2019-03-13 12:47:25', '2019-03-13 12:47:25', NULL),
(31, 'ire.brignoli@gmail.com', '2019-03-13 17:00:46', '2019-03-13 17:00:46', NULL),
(32, 'mepeverett@yahoo.com', '2019-03-13 20:23:51', '2019-03-13 20:23:51', NULL),
(33, 'shoty2cuteforu@aol.com', '2019-03-13 20:27:11', '2019-03-13 20:27:11', NULL),
(34, 'scabusi@calclosets.com', '2019-03-13 20:58:02', '2019-03-13 20:58:02', NULL),
(35, 'desiree.whitten@yahoo.com', '2019-03-13 23:17:58', '2019-03-13 23:17:58', NULL),
(36, 'enasb2018@gmail.com', '2019-03-13 23:25:22', '2019-03-13 23:25:22', NULL),
(37, 'super8tx@yahoo.com', '2019-03-14 00:58:53', '2019-03-14 00:58:53', NULL),
(38, 'aaronxf@gmail.com', '2019-03-14 02:19:15', '2019-03-14 02:19:15', NULL),
(39, 'shetzel22@gmail.com', '2019-03-14 02:19:54', '2019-03-14 02:19:54', NULL),
(40, 'liaram77@gmail.com', '2019-03-14 03:48:13', '2019-03-14 03:48:13', NULL),
(41, 'lmarsland@aol.com', '2019-03-14 04:08:24', '2019-03-14 04:08:24', NULL),
(42, 'akariseattle@yahoo.com', '2019-03-14 04:45:08', '2019-03-14 04:45:08', NULL),
(43, 'kmac12762@aol.com', '2019-03-14 05:17:13', '2019-03-14 05:17:13', NULL),
(44, 'joyce5meredith@gmail.com', '2019-03-14 06:04:14', '2019-03-14 06:04:14', NULL),
(45, 'dannyboy5454@aol.com', '2019-03-14 07:12:31', '2019-03-14 07:12:31', NULL),
(46, 'vashtie225@aol.com', '2019-03-14 11:25:25', '2019-03-14 11:25:25', NULL),
(47, 'valeria.saponaro@gmail.com', '2019-03-14 14:59:39', '2019-03-14 14:59:39', NULL),
(48, 'matthewrutski77@gmail.com', '2019-03-14 17:43:05', '2019-03-14 17:43:05', NULL),
(49, 'mirmol88molina@gmail.com', '2019-03-14 18:23:33', '2019-03-14 18:23:33', NULL),
(50, 'keschilli@aol.com', '2019-03-15 02:31:21', '2019-03-15 02:31:21', NULL),
(51, 'eric@sunartpainting.com', '2019-03-15 03:51:38', '2019-03-15 03:51:38', NULL),
(52, 'hofmeisterplumbing1@gmail.com', '2019-03-15 05:24:42', '2019-03-15 05:24:42', NULL),
(53, 'dudleypratt438@gmail.com', '2019-03-15 05:50:05', '2019-03-15 05:50:05', NULL),
(54, 'ionutng@yahoo.co.uk', '2019-03-15 06:48:35', '2019-03-15 06:48:35', NULL),
(55, 'louise.hodapp@gmail.com', '2019-03-15 17:05:37', '2019-03-15 17:05:37', NULL),
(56, 'gautamaurora1@aol.com', '2019-03-15 23:00:18', '2019-03-15 23:00:18', NULL),
(57, 'kluvsammy@gmail.com', '2019-03-16 01:38:51', '2019-03-16 01:38:51', NULL),
(58, 'fnasr@aol.com', '2019-03-16 03:00:07', '2019-03-16 03:00:07', NULL),
(59, 'uprightprisoner@gmail.com', '2019-03-16 04:12:15', '2019-03-16 04:12:15', NULL),
(60, 'drew.s.cohen@gmail.com', '2019-03-16 19:24:07', '2019-03-16 19:24:07', NULL),
(61, '', '2019-03-16 21:43:40', '2019-03-16 21:43:40', NULL),
(62, 'justinfrevert@gmail.com', '2019-03-17 03:08:03', '2019-03-17 03:08:03', NULL),
(63, 'myonnes1974@gmail.com', '2019-03-17 16:41:10', '2019-03-17 16:41:10', NULL),
(64, 'myonnes1974@gmail.com', '2019-03-17 16:42:12', '2019-03-17 16:42:12', NULL),
(65, 'bahaa.bebo394@gmail.com', '2019-03-18 15:27:37', '2019-03-18 15:27:37', NULL),
(66, '', '2019-03-21 02:44:48', '2019-03-21 02:44:48', NULL),
(67, 'mma006673@gmai.com', '2019-03-22 01:32:46', '2019-03-22 01:32:46', NULL),
(68, 'ssslll011152949652@gmail.com', '2019-03-24 18:47:36', '2019-03-24 18:47:36', NULL),
(69, 'matrixclouds.com@domstates.su', '2019-04-09 06:27:42', '2019-04-09 06:27:42', NULL),
(70, 'celiasteel50@aol.com', '2019-04-29 08:09:14', '2019-04-29 08:09:14', NULL),
(71, 'theevilclown03@gmail.com', '2019-04-29 10:09:27', '2019-04-29 10:09:27', NULL),
(72, 'shawfireandsafety@gmail.com', '2019-04-29 10:20:41', '2019-04-29 10:20:41', NULL),
(73, 'erikalisettesalazar@gmail.com', '2019-04-29 19:00:30', '2019-04-29 19:00:30', NULL),
(74, 'mhalum@yahoo.com', '2019-04-29 19:19:56', '2019-04-29 19:19:56', NULL),
(75, 'cdking@k12.wv.us', '2019-04-29 22:21:33', '2019-04-29 22:21:33', NULL),
(76, 'benjamin.jeffers@gmail.com', '2019-04-29 22:24:10', '2019-04-29 22:24:10', NULL),
(77, 'hamet17@aol.com', '2019-04-30 01:19:44', '2019-04-30 01:19:44', NULL),
(78, 'joshhillis1@gmail.com', '2019-04-30 03:26:02', '2019-04-30 03:26:02', NULL),
(79, 'stevyd025@yahoo.com', '2019-04-30 04:38:48', '2019-04-30 04:38:48', NULL),
(80, 'kunutrade@gmail.com', '2019-04-30 05:34:49', '2019-04-30 05:34:49', NULL),
(81, 'nicky.till@gmail.com', '2019-04-30 07:07:57', '2019-04-30 07:07:57', NULL),
(82, 'tdlite@aol.com', '2019-04-30 09:35:00', '2019-04-30 09:35:00', NULL),
(83, 'dread_arkive@yahoo.com', '2019-04-30 13:01:09', '2019-04-30 13:01:09', NULL),
(84, 'chrles241@yahoo.com', '2019-04-30 14:40:38', '2019-04-30 14:40:38', NULL),
(85, 'devotedchevylover@yahoo.com', '2019-04-30 16:24:13', '2019-04-30 16:24:13', NULL),
(86, 'cliff000zero@yahoo.com', '2019-04-30 18:04:19', '2019-04-30 18:04:19', NULL),
(87, 'jmh110480@yahoo.com', '2019-04-30 19:40:14', '2019-04-30 19:40:14', NULL),
(88, 'oakley4949@yahoo.com', '2019-04-30 19:44:30', '2019-04-30 19:44:30', NULL),
(89, 'bethawald@gmail.com', '2019-04-30 20:41:16', '2019-04-30 20:41:16', NULL),
(90, 'puthousing@aol.com', '2019-04-30 21:26:30', '2019-04-30 21:26:30', NULL),
(91, 'hcnum789@yahoo.com', '2019-04-30 21:28:53', '2019-04-30 21:28:53', NULL),
(92, 'cjentaylor@sbcglobal.net', '2019-04-30 21:56:15', '2019-04-30 21:56:15', NULL),
(93, 'vicky.nguyen.327@gmail.com', '2019-05-01 00:01:12', '2019-05-01 00:01:12', NULL),
(94, 'jmschuman19@yahoo.com', '2019-05-01 00:24:42', '2019-05-01 00:24:42', NULL),
(95, 'zwiebel.mark@gmail.com', '2019-05-01 00:38:01', '2019-05-01 00:38:01', NULL),
(96, 'ajgordon11306@gmail.com', '2019-05-01 00:48:36', '2019-05-01 00:48:36', NULL),
(97, 'chrisleach333@gmail.com', '2019-05-01 01:18:12', '2019-05-01 01:18:12', NULL),
(98, 'dannomania@gmail.com', '2019-05-01 02:52:16', '2019-05-01 02:52:16', NULL),
(99, 'joevallandingham@yahoo.com', '2019-05-01 03:14:15', '2019-05-01 03:14:15', NULL),
(100, 'emanespino1@gmail.com', '2019-05-01 03:42:02', '2019-05-01 03:42:02', NULL),
(101, 'gbuselt3@gmail.com', '2019-05-01 03:58:30', '2019-05-01 03:58:30', NULL),
(102, 'cbailee215@gmail.com', '2019-05-01 04:31:19', '2019-05-01 04:31:19', NULL),
(103, '4dolans@sbcglobal.net', '2019-05-01 04:59:42', '2019-05-01 04:59:42', NULL),
(104, 'federicosimula@gmail.com', '2019-05-01 07:10:17', '2019-05-01 07:10:17', NULL),
(105, 'gayboi1274@gmail.com', '2019-05-01 13:00:02', '2019-05-01 13:00:02', NULL),
(106, 'gazpatchoness@yahoo.com', '2019-05-01 14:51:45', '2019-05-01 14:51:45', NULL),
(107, 'beckygallagher@yahoo.com', '2019-05-01 15:16:43', '2019-05-01 15:16:43', NULL),
(108, 'adriannaj940@gmail.com', '2019-05-01 16:36:45', '2019-05-01 16:36:45', NULL),
(109, '87chrismoss@gmail.com', '2019-05-01 18:13:29', '2019-05-01 18:13:29', NULL),
(110, 'katevotaw@umsl.edu', '2019-05-01 18:35:12', '2019-05-01 18:35:12', NULL),
(111, 'celiasteel50@aol.com', '2019-05-01 19:46:49', '2019-05-01 19:46:49', NULL),
(112, 'tjconrad17@gmail.com', '2019-05-01 20:22:34', '2019-05-01 20:22:34', NULL),
(113, 'znzasser1998@gmail.com', '2019-05-01 20:31:10', '2019-05-01 20:31:10', NULL),
(114, 'skv3094@yahoo.com', '2019-05-01 20:50:09', '2019-05-01 20:50:09', NULL),
(115, 'catie_richards@yahoo.com', '2019-05-01 21:47:56', '2019-05-01 21:47:56', NULL),
(116, 'rogerdemint@yahoo.com', '2019-05-01 21:58:17', '2019-05-01 21:58:17', NULL),
(117, 'jasmine91372@gmail.com', '2019-05-02 00:17:49', '2019-05-02 00:17:49', NULL),
(118, 'arise1pm@gmail.com', '2019-05-02 02:28:32', '2019-05-02 02:28:32', NULL),
(119, 'jbragalone@gmail.com', '2019-05-02 03:49:34', '2019-05-02 03:49:34', NULL),
(120, 'c22addison@gmail.com', '2019-05-02 04:07:16', '2019-05-02 04:07:16', NULL),
(121, 'jwatson025@gmail.com', '2019-05-02 05:31:27', '2019-05-02 05:31:27', NULL),
(122, 'thomasclarke595@gmail.com', '2019-05-02 06:22:44', '2019-05-02 06:22:44', NULL),
(123, 'lbarrera.apex@gmail.com', '2019-05-02 06:40:29', '2019-05-02 06:40:29', NULL),
(124, 'brianzwiep@trvrsbldrs.com', '2019-05-02 10:54:29', '2019-05-02 10:54:29', NULL),
(125, 'girl.harley92@yahoo.com', '2019-05-02 16:55:37', '2019-05-02 16:55:37', NULL),
(126, 'fdurgaj@gmail.com', '2019-05-02 18:34:16', '2019-05-02 18:34:16', NULL),
(127, 'affixdesigns@gmail.com', '2019-05-02 19:35:58', '2019-05-02 19:35:58', NULL),
(128, 'annieburns1@gmail.com', '2019-05-02 19:50:53', '2019-05-02 19:50:53', NULL),
(129, 'tiger30241@gmail.com', '2019-05-02 23:28:45', '2019-05-02 23:28:45', NULL),
(130, 'kotronics@cox.net', '2019-05-03 00:58:22', '2019-05-03 00:58:22', NULL),
(131, 'marmuth18@gmail.com', '2019-05-03 03:01:52', '2019-05-03 03:01:52', NULL),
(132, 'bereyes@prodigy.net', '2019-05-03 03:45:55', '2019-05-03 03:45:55', NULL),
(133, 'heather@constructionsolutionsjax.com', '2019-05-03 04:48:41', '2019-05-03 04:48:41', NULL),
(134, 'cpasquerella@gmail.com', '2019-05-03 05:52:37', '2019-05-03 05:52:37', NULL),
(135, 'c22addison@gmail.com', '2019-05-03 06:40:05', '2019-05-03 06:40:05', NULL),
(136, 'lapagie@gmail.com', '2019-05-06 10:06:11', '2019-05-06 10:06:11', NULL),
(137, 'kaitlinambrogio@gmail.com', '2019-05-06 11:39:03', '2019-05-06 11:39:03', NULL),
(138, 'snowtop@gmail.com', '2019-05-06 14:42:24', '2019-05-06 14:42:24', NULL),
(139, 'john_hilligoss@yahoo.com', '2019-05-06 15:00:14', '2019-05-06 15:00:14', NULL),
(140, 'msanders@digitalmps.com', '2019-05-06 21:40:12', '2019-05-06 21:40:12', NULL),
(141, 'lapagie@gmail.com', '2019-05-06 23:59:38', '2019-05-06 23:59:38', NULL),
(142, 'mavericfolds@yahoo.com', '2019-05-07 00:22:52', '2019-05-07 00:22:52', NULL),
(143, 'hexfet100@yahoo.com', '2019-05-07 00:34:00', '2019-05-07 00:34:00', NULL),
(144, 'mizmo_024@yahoo.com', '2019-05-07 01:13:27', '2019-05-07 01:13:27', NULL),
(145, 'kristi@harborflooringsc.com', '2019-05-07 01:54:49', '2019-05-07 01:54:49', NULL),
(146, 'niruarunagiri@gmail.com', '2019-05-07 04:28:22', '2019-05-07 04:28:22', NULL),
(147, 'foshatogbe@gmail.com', '2019-05-07 07:27:58', '2019-05-07 07:27:58', NULL),
(148, 'esabaris@ccmanagers.com', '2019-05-07 07:39:18', '2019-05-07 07:39:18', NULL),
(149, 'june881019@gmail.com', '2019-05-07 08:20:06', '2019-05-07 08:20:06', NULL),
(150, 'dunbarstone@yahoo.com', '2019-05-07 08:38:01', '2019-05-07 08:38:01', NULL),
(151, 'summersplumbing@gmail.com', '2019-05-07 09:42:35', '2019-05-07 09:42:35', NULL),
(152, 'mimi.zoe79@gmail.com', '2019-05-07 09:48:57', '2019-05-07 09:48:57', NULL),
(153, 'buck@cheyennehomes.com', '2019-05-07 10:12:04', '2019-05-07 10:12:04', NULL),
(154, 'zmesule@gmail.com', '2019-05-07 11:05:06', '2019-05-07 11:05:06', NULL),
(155, 'bumperspecialist2013@gmail.com', '2019-05-07 11:09:20', '2019-05-07 11:09:20', NULL),
(156, 'leary@nusinc.us', '2019-05-07 11:44:09', '2019-05-07 11:44:09', NULL),
(157, 'sstufflebean@yahoo.com', '2019-05-07 12:47:57', '2019-05-07 12:47:57', NULL),
(158, 'kellyschreckfit@gmail.com', '2019-05-07 13:33:11', '2019-05-07 13:33:11', NULL),
(159, 'dfbockoven@gmail.com', '2019-05-07 13:47:56', '2019-05-07 13:47:56', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `offers`
--

CREATE TABLE `offers` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `offers`
--

INSERT INTO `offers` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'عروض تصمم وبرمجة المواقع', 'نقدم لك مجموعة كبيرة من عروض المواقع  الاحترافية بأفضل الأسعار في مصر والوطن العربي . كما نقدم باقات مخصصة على حسب الطلب .اطلب باقتك الان ووفر أكثر من 35٪ من السعر الفعلي لموقعك\r\n ', '2019-02-12 07:04:46', '2019-02-14 14:17:10'),
(8, 'عروض استضافة المواقع ', 'نقدم لك كل ما تحتاج إليه لتعزيز وجودك على شبكة الإنترنت. الأمر أصبح أسهل من أي وقت مضى مع الباقات المستضافة علي سيرفرات فائقة السرعة مع خطط استضافة متنوعة تناسب جميع احتياجات أصحاب المواقع والأعمال .كما نوفر نسخ احتياطية  يومية واسبوعية وشهرية ', '2019-02-19 13:03:04', '2019-02-19 16:07:48');

-- --------------------------------------------------------

--
-- Table structure for table `offerspackages`
--

CREATE TABLE `offerspackages` (
  `id` int(11) NOT NULL,
  `offers_id` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `offerspackages`
--

INSERT INTO `offerspackages` (`id`, `offers_id`, `title`, `price`, `created_at`, `updated_at`) VALUES
(25, '1', ' شخصي ', '249 $', '2019-02-14 14:11:32', '2019-02-15 23:48:29'),
(26, '1', ' شركة', '0 جنيه مصري', '2019-02-14 14:12:11', '2019-02-14 14:15:37'),
(27, '1', ' احترافي', '0 جنيه مصري', '2019-02-14 14:12:54', '2019-02-14 14:15:46'),
(28, '1', 'المشاريع الكبيرة', '0 جنيه مصري', '2019-02-14 14:16:11', '2019-02-14 14:16:11');

-- --------------------------------------------------------

--
-- Table structure for table `offers_details`
--

CREATE TABLE `offers_details` (
  `id` int(11) NOT NULL,
  `offers_id` int(11) NOT NULL,
  `offerspackages_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `checkmark` tinyint(1) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ourwork`
--

CREATE TABLE `ourwork` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `ourwork`
--

INSERT INTO `ourwork` (`id`, `title`, `url`, `description`, `image`, `created_at`, `updated_at`, `deleted_at`) VALUES
(17, 'Web Design & Development', '', 'Lorem Ipsum is simply dummy text of the printing and type setting industry when an unknown printer took a galley of type and scrambled it to make.', 'fa fa-globe', '2019-02-21 16:25:04', '2020-11-14 13:17:01', NULL),
(18, 'Graphic Design', '', 'Lorem Ipsum is simply dummy text of the printing and type setting industry when an unknown printer took a galley of type and scrambled it to make.\r\n', 'fa fa-paint-brush', '2019-02-21 17:17:35', '2020-11-14 13:24:09', NULL),
(19, 'App Mangement & development', '', 'Lorem Ipsum is simply dummy text of the printing and type setting industry when an unknown printer took a galley of type and scrambled it to make.', 'fa fa-mobile', '2020-11-14 11:26:35', '2020-11-14 13:25:19', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` int(11) NOT NULL,
  `title` varchar(190) NOT NULL,
  `price` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `offer_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`id`, `title`, `price`, `created_at`, `updated_at`, `offer_id`) VALUES
(1, 'موقع شخصي', '280 دولار', '2019-02-19 15:22:23', '2019-02-19 17:50:49', 1),
(2, 'موقع شركة', '400 دولار', '2019-02-19 15:29:33', '2019-02-19 17:54:35', 1),
(3, 'موقع احترافي', '550 دولار', '2019-02-19 15:48:29', '2019-02-19 17:54:52', 1),
(4, 'المشاريع الكبيرة', '750 دولار', '2019-02-19 15:48:48', '2019-02-19 17:55:29', 1),
(5, 'الباقة الشخصية', '50 دولار ', '2019-02-20 13:49:37', '2019-02-20 13:50:02', 8),
(6, 'الشركات الصغيرة', '75 دولار', '2019-02-20 13:51:40', '2019-02-20 13:51:40', 8),
(7, 'الباقة المييزة', ' 100 دولار', '2019-02-20 13:52:02', '2019-02-20 13:52:02', 8),
(8, 'المشاريع الكبيرة', '150 دولار', '2019-02-20 13:52:42', '2019-02-20 13:52:42', 8);

-- --------------------------------------------------------

--
-- Table structure for table `package_details`
--

CREATE TABLE `package_details` (
  `id` int(11) NOT NULL,
  `package_id` int(10) UNSIGNED NOT NULL,
  `detail_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `package_details`
--

INSERT INTO `package_details` (`id`, `package_id`, `detail_id`, `created_at`, `updated_at`) VALUES
(94, 1, 135, '2019-02-19 15:44:19', '2019-02-19 15:44:19'),
(95, 2, 135, '2019-02-19 15:44:49', '2019-02-19 15:44:49'),
(96, 3, 135, '2019-02-19 16:09:01', '2019-02-19 16:09:01'),
(97, 4, 135, '2019-02-19 16:10:13', '2019-02-19 16:10:13'),
(98, 1, 137, '2019-02-19 16:10:23', '2019-02-19 16:10:23'),
(99, 2, 137, '2019-02-19 16:10:42', '2019-02-19 16:10:42'),
(100, 3, 137, '2019-02-19 16:10:51', '2019-02-19 16:10:51'),
(101, 4, 137, '2019-02-19 16:10:58', '2019-02-19 16:10:58'),
(102, 1, 139, '2019-02-19 16:20:53', '2019-02-19 16:20:53'),
(103, 2, 139, '2019-02-19 16:21:14', '2019-02-19 16:21:14'),
(104, 3, 139, '2019-02-19 16:21:21', '2019-02-19 16:21:21'),
(105, 4, 139, '2019-02-19 16:21:27', '2019-02-19 16:21:27'),
(107, 1, 141, '2019-02-19 16:22:12', '2019-02-19 16:22:12'),
(108, 1, 143, '2019-02-19 16:24:58', '2019-02-19 16:24:58'),
(109, 1, 146, '2019-02-19 16:25:22', '2019-02-19 16:25:22'),
(111, 1, 147, '2019-02-19 16:26:39', '2019-02-19 16:26:39'),
(112, 1, 150, '2019-02-19 16:27:00', '2019-02-19 16:27:00'),
(113, 1, 151, '2019-02-19 16:27:12', '2019-02-19 16:27:12'),
(114, 1, 153, '2019-02-19 16:27:28', '2019-02-19 16:27:28'),
(115, 1, 155, '2019-02-19 16:27:41', '2019-02-19 16:27:41'),
(116, 1, 157, '2019-02-19 16:27:53', '2019-02-19 16:27:53'),
(117, 1, 160, '2019-02-19 16:28:18', '2019-02-19 16:28:18'),
(118, 1, 161, '2019-02-19 16:28:47', '2019-02-19 16:28:47'),
(119, 1, 164, '2019-02-19 16:29:01', '2019-02-19 16:29:01'),
(120, 1, 166, '2019-02-19 16:29:15', '2019-02-19 16:29:15'),
(121, 1, 167, '2019-02-19 16:29:25', '2019-02-19 16:29:25'),
(122, 2, 142, '2019-02-19 16:36:35', '2019-02-19 16:36:35'),
(123, 2, 143, '2019-02-19 16:36:54', '2019-02-19 16:36:54'),
(124, 2, 146, '2019-02-19 16:37:07', '2019-02-19 16:37:07'),
(125, 2, 148, '2019-02-19 16:37:40', '2019-02-19 16:37:40'),
(126, 2, 150, '2019-02-19 16:38:11', '2019-02-19 16:38:11'),
(127, 2, 151, '2019-02-19 16:38:23', '2019-02-19 16:38:23'),
(128, 2, 153, '2019-02-19 16:38:34', '2019-02-19 16:38:34'),
(129, 2, 155, '2019-02-19 16:38:45', '2019-02-19 16:38:45'),
(130, 2, 158, '2019-02-19 16:38:57', '2019-02-19 16:38:57'),
(131, 2, 160, '2019-02-19 16:39:08', '2019-02-19 16:39:08'),
(132, 2, 161, '2019-02-19 16:39:30', '2019-02-19 16:39:30'),
(133, 2, 164, '2019-02-19 16:39:44', '2019-02-19 16:39:44'),
(134, 2, 166, '2019-02-19 16:39:56', '2019-02-19 16:39:56'),
(135, 2, 167, '2019-02-19 16:40:05', '2019-02-19 16:40:05'),
(136, 3, 142, '2019-02-19 16:52:42', '2019-02-19 16:52:42'),
(137, 3, 144, '2019-02-19 16:52:52', '2019-02-19 16:52:52'),
(138, 3, 146, '2019-02-19 16:53:01', '2019-02-19 16:53:01'),
(139, 3, 148, '2019-02-19 16:53:14', '2019-02-19 16:53:14'),
(140, 3, 150, '2019-02-19 16:53:24', '2019-02-19 16:53:24'),
(141, 3, 152, '2019-02-19 16:53:37', '2019-02-19 16:53:37'),
(143, 3, 153, '2019-02-19 16:54:24', '2019-02-19 16:54:24'),
(144, 3, 155, '2019-02-19 16:54:39', '2019-02-19 16:54:39'),
(145, 3, 158, '2019-02-19 16:54:50', '2019-02-19 16:54:50'),
(146, 3, 160, '2019-02-19 16:55:03', '2019-02-19 16:55:03'),
(147, 3, 162, '2019-02-19 16:55:24', '2019-02-19 16:55:24'),
(148, 3, 164, '2019-02-19 16:55:35', '2019-02-19 16:55:35'),
(149, 3, 166, '2019-02-19 16:55:48', '2019-02-19 16:55:48'),
(150, 3, 167, '2019-02-19 16:56:00', '2019-02-19 16:56:00'),
(151, 4, 142, '2019-02-19 16:56:42', '2019-02-19 16:56:42'),
(152, 4, 144, '2019-02-19 16:56:55', '2019-02-19 16:56:55'),
(153, 4, 146, '2019-02-19 16:57:04', '2019-02-19 16:57:04'),
(154, 4, 148, '2019-02-19 16:57:14', '2019-02-19 16:57:14'),
(155, 4, 150, '2019-02-19 16:57:42', '2019-02-19 16:57:42'),
(156, 4, 152, '2019-02-19 16:57:54', '2019-02-19 16:57:54'),
(157, 4, 154, '2019-02-19 16:58:13', '2019-02-19 16:58:13'),
(158, 4, 156, '2019-02-19 16:58:23', '2019-02-19 16:58:23'),
(159, 4, 158, '2019-02-19 16:58:34', '2019-02-19 16:58:34'),
(160, 4, 160, '2019-02-19 16:58:44', '2019-02-19 16:58:44'),
(161, 4, 162, '2019-02-19 16:58:57', '2019-02-19 16:58:57'),
(162, 4, 164, '2019-02-19 16:59:26', '2019-02-19 16:59:26'),
(163, 4, 166, '2019-02-19 16:59:38', '2019-02-19 16:59:38'),
(164, 4, 168, '2019-02-19 16:59:51', '2019-02-19 16:59:51'),
(165, 5, 169, '2019-02-20 14:07:52', '2019-02-20 14:07:52'),
(166, 6, 170, '2019-02-20 14:56:06', '2019-02-20 14:56:06'),
(167, 7, 171, '2019-02-20 14:56:24', '2019-02-20 14:56:24'),
(168, 8, 172, '2019-02-20 14:57:16', '2019-02-20 14:57:16'),
(169, 5, 173, '2019-02-20 15:18:53', '2019-02-20 15:18:53'),
(170, 5, 176, '2019-02-20 15:19:21', '2019-02-20 15:19:21'),
(171, 5, 182, '2019-02-20 15:20:19', '2019-02-20 15:20:19'),
(172, 5, 183, '2019-02-20 15:20:42', '2019-02-20 15:20:42'),
(173, 5, 186, '2019-02-20 15:21:21', '2019-02-20 15:21:21'),
(174, 5, 191, '2019-02-20 15:23:00', '2019-02-20 15:23:00'),
(175, 5, 193, '2019-02-20 15:23:21', '2019-02-20 15:23:21'),
(176, 5, 195, '2019-02-20 15:23:31', '2019-02-20 15:23:31'),
(177, 5, 196, '2019-02-20 15:24:02', '2019-02-20 15:24:02'),
(178, 6, 180, '2019-02-20 15:42:42', '2019-02-20 15:42:42'),
(179, 6, 177, '2019-02-20 15:43:01', '2019-02-20 15:43:01'),
(180, 6, 182, '2019-02-20 15:43:51', '2019-02-20 15:44:11'),
(181, 6, 183, '2019-02-20 15:44:36', '2019-02-20 15:44:36'),
(182, 6, 187, '2019-02-20 15:44:59', '2019-02-20 15:44:59'),
(183, 6, 191, '2019-02-20 15:45:21', '2019-02-20 15:45:21'),
(184, 6, 193, '2019-02-20 15:45:36', '2019-02-20 15:45:36'),
(185, 6, 195, '2019-02-20 15:45:49', '2019-02-20 15:45:49'),
(186, 6, 196, '2019-02-20 15:46:03', '2019-02-20 15:46:03'),
(187, 7, 174, '2019-02-20 15:46:46', '2019-02-20 15:46:46'),
(188, 7, 178, '2019-02-20 15:46:59', '2019-02-20 15:46:59'),
(189, 7, 182, '2019-02-20 15:47:18', '2019-02-20 15:47:18'),
(190, 7, 184, '2019-02-20 15:47:37', '2019-02-20 15:47:37'),
(191, 7, 188, '2019-02-20 15:47:59', '2019-02-20 15:47:59'),
(192, 7, 191, '2019-02-20 15:48:10', '2019-02-20 15:48:10'),
(193, 7, 193, '2019-02-20 15:48:21', '2019-02-20 15:48:50'),
(194, 7, 195, '2019-02-20 15:49:08', '2019-02-20 15:49:08'),
(195, 7, 196, '2019-02-20 15:49:19', '2019-02-20 15:49:19'),
(196, 8, 175, '2019-02-20 15:49:44', '2019-02-20 15:49:44'),
(197, 8, 179, '2019-02-20 15:49:55', '2019-02-20 15:49:55'),
(198, 8, 181, '2019-02-20 15:50:07', '2019-02-20 15:50:07'),
(199, 8, 185, '2019-02-20 15:50:22', '2019-02-20 15:50:22'),
(200, 8, 189, '2019-02-20 15:50:45', '2019-02-20 15:50:45'),
(201, 8, 190, '2019-02-20 15:51:00', '2019-02-20 15:51:00'),
(202, 8, 192, '2019-02-20 15:51:13', '2019-02-20 15:51:13'),
(203, 8, 194, '2019-02-20 15:51:32', '2019-02-20 15:51:32'),
(204, 8, 196, '2019-02-20 15:51:42', '2019-02-20 15:51:42');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `price`
--

CREATE TABLE `price` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `mail` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `majal` varchar(255) NOT NULL,
  `company` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `site` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `file` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `price`
--

INSERT INTO `price` (`id`, `name`, `mail`, `phone`, `majal`, `company`, `type`, `site`, `description`, `file`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'hamada', 'matrixdeveloper1@gmail.com', '011507689375', 'ثالثخهعغ ل', 'ثفاثقفااث', 'تصميم المواقع الالكترونية', 'thethethhtet', 'xxxxxxxxxxxxxxxxx', 'account/images/icon.ico', '2019-02-25 16:20:30', '2019-02-26 17:52:40', '2019-02-26 17:52:40'),
(2, 'hamada', 'matrixdeveloper1@gmail.com', '011507689375', 'ثالثخهعغ ل', 'gwrgw', 'برمجة المواقع الالكترونية ', 'thethethhtet', 'ssssssssssssssssss', 'account/images/icon.ico', '2019-02-25 16:25:10', '2019-02-28 21:31:26', '2019-02-28 21:31:26'),
(3, 'hamada', 'matrixdeveloper1@gmail.com', '011507689375', 'ثالثخهعغ ل', 'gwrgw', 'التسويق الالكتروني', 'thethethhtet', 'e3qr4ef', 'account/images/icon.ico', '2019-02-25 16:25:35', '2019-02-26 14:43:28', '2019-02-26 14:43:28'),
(4, 'hamada', 'matrixdeveloper1@gmail.com', '011507689375', 'ثالثخهعغ ل', 'ثفاثقفااث', 'برمجة المواقع الالكترونية ', 'thethethhtet', 'fffffffffff', 'account/images/5a74764ec14f9b0001c33ad2_7b934-1pu7wwmx3jata6ccdkvswpa_du6azv-p-2000.jpeg', '2019-02-25 23:24:24', '2019-02-26 14:43:23', '2019-02-26 14:43:23'),
(5, 'لوحة تحكم', 'matrixdeveloper1@gmail.com', '011507689375', 'gwgwg', 'ثفاثقفااث', 'تصميم المواقع الالكترونية', 'thethethhtet', 'hhhhhhhhhhhhhhhhhh', 'account/images/5a74764ec14f9b0001c33ad2_7b934-1pu7wwmx3jata6ccdkvswpa_du6azv-p-2000.jpeg', '2019-02-26 20:14:32', '2019-02-28 21:31:37', '2019-02-28 21:31:37'),
(6, 'لوحة تحكم', 'matrixdeveloper1@gmail.com', '011507689375', 'ثالثخهعغ ل', 'wrgwgwrg', 'تصميم المواقع الالكترونية', 'vvvvvvvvvvvvvvvvvvvvv', 'gregegege', 'account/images/5a74764ec14f9b0001c33ad2_7b934-1pu7wwmx3jata6ccdkvswpa_du6azv-p-2000.jpeg', '2019-02-26 20:16:21', '2019-02-28 21:31:44', '2019-02-28 21:31:44'),
(7, 'hamada', 'matrixdeveloper1@gmail.com', '011507689375', 'ثالثخهعغ ل', 'ثفاثقفااث', 'استضافة المواقع', 'thethethhtet', 'gggggggggggggggggggggggg', 'account/images/choose_img - Copy.png', '2019-02-26 20:21:20', '2019-02-28 21:31:31', '2019-02-28 21:31:31'),
(8, 'hazem fawzi', 'admin_manager@matrixtranslation.net', '01096563501', 'ترجمة', 'test', 'برمجة المواقع الالكترونية ', 'matrixtranslation.com', 'test', 'account/images/MAPES - PC No. 15.pdf', '2019-02-28 23:58:01', '2019-03-11 13:02:56', '2019-03-11 13:02:56'),
(9, 'hazem fawzi', 'admin_manager@matrixtranslation.net', '01096563501', 'ترجمة', 'test', 'تصميم المواقع الالكترونية', 'matrixtranslation.com', 'matrixtranslation.com', 'account/images/Agreement.jpeg', '2019-03-03 18:21:43', '2019-03-03 18:22:51', '2019-03-03 18:22:51'),
(10, 'hazem fawzi', 'admin_manager@matrixtranslation.net', '01096563501', 'ترجمة', 'test', 'تصميم المواقع الالكترونية', 'matrixtranslation.com', 'السلام علبيكم ', 'account/images/R1.pdf', '2019-03-11 13:01:32', '2019-03-14 21:05:57', '2019-03-14 21:05:57'),
(11, 'hamada', 'matrixdeveloper1@gmail.com', '011507689375', 'ثالثخهعغ ل', 'ثفاثقفااث', '', 'thethethhtet', 'ggggggggggggggggggggg', 'account/images/choose_img - Copy.png', '2019-03-13 16:32:35', '2019-03-14 21:05:44', '2019-03-14 21:05:44'),
(12, 'hamada', 'matrixdeveloper1@gmail.com', '011507689375', 'ثالثخهعغ ل', 'ثفاثقفااث', 'التسويق الالكتروني', 'thethethhtet', 'ddddddddddddddddddd', 'account/images/choose_img - Copy.png', '2019-03-13 16:36:39', '2019-03-14 21:05:51', '2019-03-14 21:05:51');

-- --------------------------------------------------------

--
-- Table structure for table `quatation`
--

CREATE TABLE `quatation` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `mail` varchar(255) NOT NULL,
  `subject` varchar(50) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `majal` varchar(250) NOT NULL,
  `company` varchar(255) NOT NULL,
  `site` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `file` varchar(255) NOT NULL,
  `nameservic` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `quatation`
--

INSERT INTO `quatation` (`id`, `name`, `mail`, `subject`, `phone`, `majal`, `company`, `site`, `message`, `file`, `nameservic`, `created_at`, `updated_at`, `deleted_at`) VALUES
(21, 'shereen', 'shereen.shapaan@gmail.com', '', '01092741599', '', '', '', 'website', 'null', '', '2020-11-18 12:02:27', '2020-11-18 12:02:27', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `title`, `description`, `image`, `created_at`, `updated_at`, `deleted_at`) VALUES
(6, 'تصميم المواقع   ', 'Legal translation للللللللللللل', 'account/images\\img-4.jpg', '2019-01-11 18:15:31', '2019-01-24 15:22:08', '2019-01-24 15:22:08'),
(7, '  برمجة المواقع   ', 'The concept of general translation refers to the translation of non-specialised texts without terminological difficulties.\r\nWe have various expertise in providing high-quality, professional translation services in many languages for a wide range of clients across various industries. We also provide individual clients with certified translation services for their personal files and documents, such as academic degrees, birth certificates and passports.\r\n We have a global network of more than 1,200 professional translators and interpreters, our in-house team and project managers are on hand to offer you various linguistic solutions.\r\n\r\n', 'account/images\\img-3.jpg', '2019-01-11 18:17:25', '2019-01-28 20:47:27', '2019-01-28 20:47:27'),
(8, 'استضافة المواقع  ', 'Medical translation is highly a specialized field since medical documents are scientific and complex to translate. They require great accuracy and expertise to ensure professional translation,\r\nWe have vast experience translating medical documents in a wide variety of medical fields.\r\n', 'account/images\\img-2.jpg', '2019-01-11 18:18:29', '2019-01-30 13:49:18', '2019-01-30 13:49:18'),
(9, ' التسويق الالكتروني  ', 'Legal translation service is a service that has been formally approved for use for official purposes. Translating and interpreting a legal context is a speciali', 'account/images\\img-6.jpg', '2019-01-22 06:17:25', '2019-02-07 13:51:44', '2019-02-07 13:51:44'),
(10, 'تصميم العلامة التجارية   ', 'Legal translation service is a service that has been formally approved for use for official purposes. Translating and interpreting a legal context is a speciali', 'account/images\\img-3.jpg', '2019-01-22 06:18:25', '2019-02-07 13:51:47', '2019-02-07 13:51:47'),
(11, 'تصميم المواقع   ', 'The concept of general translation refers to the translation of non-specialised texts without terminological difficulties. We have various expertise in providi', 'account/images\\img-5.jpg', '2019-01-22 09:01:16', '2019-01-24 15:22:15', '2019-01-24 15:22:15'),
(12, 'تصميم المواقع', ' أصبح من السهل علي اي شركة ان تنشيء موقع الكتروني خاص بها ولكن ليست القضية في انشاء موقغ الكتروني فقط ولكن انشاؤه بطريقة جذابة ومرنة ومتوافقة مع كافة العوامل والمعايير العالمية لانشاء المواقع هي العائق امام العديد من شركات البرمجة  \r\nفحرصنا من البداية علي ان نقدم مواقع سهل ومرن وجذاب ومتوافق مع كافة المعايير العالمية وكافة العوامل التي تجعل من نجاح الموقع واشهاره عملية سهلة وسريعة\r\nمواقعنا تمتاز بالحماية الكاملة للموقع من اي عمليات اختراق وسنقوم بتدريب العميل وفريق عمله علي كافة الامور التي ستساعده علي حماية الموقع والايميلات من اي اختراق\r\nلا تتوقف ماتريكس علي تسليم الموقع للعميل بل تقوم بالمتابعة المستمرة للموقع وتقوم بتقديم كافة الاستشارات والنصائح التي ستساعد العميل علي اشهار وتطوير الموقع بطريقة سهلة وسريعة\r\n', 'account/images/5a74764ec14f9b0001c33ad2_7b934-1pu7wwmx3jata6ccdkvswpa_du6azv-p-2000.jpeg', '2019-01-24 15:24:43', '2019-02-07 13:51:53', '2019-02-07 13:51:53'),
(13, 'برمجة المواقع الالكترونية ', ' اذا كانت لديك فكرة موقع وتريد تنفيذ برمجة خاصة له وتبحث عن شركة توفر لك هذه الخدمة وبطريقة احترافية, كافة المواقع التي ننشأها نبنيها من الصفر ولا نستخدم اي قوالب, فلدينا فريق عمل محترف يستطيع كتابة كود احترافي ومحمي ويوفر لك كافة الادوات التي تحتاجها بداخله\r\nكافة المواقع التي نعمل عليها نحرص في بداية العمل علي مراعاة كافة المعايير العالمية في توافق الموقع مع محركات البحث فنقوم بتهيئية الموقع داخليا تهيئة كاملة بحيث نسهل عليك عملية ظهورك في مقدمة المواقع علي محركات البحث \r\n', 'account/images/5a74764ec14f9b0001c33ad2_7b934-1pu7wwmx3jata6ccdkvswpa_du6azv-p-2000.jpeg', '2019-01-28 20:48:40', '2019-02-07 13:51:57', '2019-02-07 13:51:57'),
(14, 'استضافة المواقع الالكترونية', 'كافة السيرفرات التي نوفرها لعملاؤنا سيرفرات قوية ومؤمنة ومناسبة لكافة الاغراض وتدعم كافة لغات البرمجة سواء للشركات او للافراد\r\nولان عمل موقعك طوال الوقت هو امر مهم فقد وفرنا دعم فني متكامل طوال الوقت للعمل علي حل اي مشكلة بسرعة فائقة\r\nونقوم بأخذ نسخة احتياطية يومية من ملفات المواقع تجنبا لفقدها في اي وقت ولاي سبب واعطائها للعميل عند طلبها\r\n', 'account/images/Planing.png', '2019-01-30 13:50:33', '2019-02-07 13:52:02', '2019-02-07 13:52:02'),
(15, 'تصميم المواقع الالكترونية', ' أصبح من السهل علي اي شركة ان تنشيء موقع الكتروني خاص بها ولكن ليست القضية في انشاء موقغ الكتروني فقط ولكن انشاؤه بطريقة جذابة ومرنة ومتوافقة مع كافة العوامل والمعايير العالمية لانشاء المواقع هي العائق امام العديد من شركات البرمجة  \r\nفحرصنا من البداية علي ان نقدم مواقع سهل ومرن وجذاب ومتوافق مع كافة المعايير العالمية وكافة العوامل التي تجعل من نجاح الموقع واشهاره عملية سهلة وسريعة\r\nمواقعنا تمتاز بالحماية الكاملة للموقع من اي عمليات اختراق وسنقوم بتدريب العميل وفريق عمله علي كافة الامور التي ستساعده علي حماية الموقع والايميلات من اي اختراق\r\nلا تتوقف ماتريكس علي تسليم الموقع للعميل بل تقوم بالمتابعة المستمرة للموقع وتقوم بتقديم كافة الاستشارات والنصائح التي ستساعد العميل علي اشهار وتطوير الموقع بطريقة سهلة وسريعة\r\n', 'account/images/computer-t.jpg', '2019-02-07 13:53:30', '2019-02-10 19:46:37', NULL),
(16, 'برمجة المواقع الالكترونية ', ' اذا كانت لديك فكرة موقع وتريد تنفيذ برمجة خاصة له وتبحث عن شركة توفر لك هذه الخدمة وبطريقة احترافية, كافة المواقع التي ننشأها نبنيها من الصفر ولا نستخدم اي قوالب, فلدينا فريق عمل محترف يستطيع كتابة كود احترافي ومحمي ويوفر لك كافة الادوات التي تحتاجها بداخله\r\nكافة المواقع التي نعمل عليها نحرص في بداية العمل علي مراعاة كافة المعايير العالمية في توافق الموقع مع محركات البحث فنقوم بتهيئية الموقع داخليا تهيئة كاملة بحيث نسهل عليك عملية ظهورك في مقدمة المواقع علي محركات البحث \r\n', 'account/images/hire-php-developers-main-bg.jpg', '2019-02-09 16:23:19', '2019-02-11 14:14:44', NULL),
(17, 'تصميم سريع', 'أصبح من اهم العوامل التي تجعل من موقعك محبوب من المستخدم ومن محركات البحث هي السرعة لذلك حرصنا جيدا علي تسليمك موقع سريع 100%', 'account/images/speed.png', '2019-02-11 16:25:38', '2019-02-11 16:28:01', '2019-02-11 16:28:01'),
(18, 'استضافة المواقع', 'كافة السيرفرات التي نوفرها لعملاؤنا سيرفرات قوية ومؤمنة ومناسبة لكافة الاغراض وتدعم كافة لغات البرمجة سواء للشركات او للافراد\r\nولان عمل موقعك طوال الوقت هو امر مهم فقد وفرنا دعم فني متكامل طوال الوقت للعمل علي حل اي مشكلة بسرعة فائقة\r\nونقوم بأخذ نسخة احتياطية يومية من ملفات المواقع تجنبا لفقدها في اي وقت ولاي سبب واعطائها للعميل عند طلبها\r\n', 'account/images/web-hosting-banner-1666x582.jpg', '2019-02-11 19:32:39', '2019-02-11 19:34:03', NULL),
(19, 'التسويق الالكتروني', 'اصبح التسويق الالكتروني في السنين الماضية هو التسويق الحديث والفعال الذي تتبعه كافة الشركات  لتسويق اعمالها\r\nاصبح التسويق باسلوبه القديم يتلاشي يوما عن يوما لذلك علي كل شركة اتباع الاسلوب الحديث في التسويق لضمان نجاح اي حملة تسويقية\r\nتستطبع من خلال التسويق الالكتروني ان تصل لاي شخص في اي مكان في العالم وبتكلفة منخفضة للغاية وبطريقة سريعة جدا  بمقارنة بالتسويق التقليدي\r\nلدينا فريق من الخبراء التسويقيين جاهز لخدمتك ورسم الخطة اللازمة لنجاح الحملة التسويقية الخاصه بعملك\r\nسنوفر لك بيانات ونتائج فورية ومدعمة بتقارير اولية لتساعدك في حملاتك المستقبلية\r\n', 'account/images/hire-developers-features1.jpg', '2019-02-11 19:52:47', '2019-02-11 19:52:47', NULL),
(20, 'تصميم العلامة التجارية', 'العلامة التجارية هي أفكار ورؤي ورسالات تعبرعن طابع واسلوب  كل شركة  وتبين مدي تاثيرها بداخل عقول الجمهور\r\n,اذا كنت تسعي الي ان تملك هوية ذات طابع مميز وفريد داخل السوق عليك ان تختار المصمم الذي يستطيع تحقيق هذه الامور لك\r\nماتريكس ستوفر لك تصميم شعارات جذابة وقوية لتعزيز وضوح الرؤية. نحن ندرك أن الشعارات تخدم غرضين: الترويج لاسم شركتك وإنشاء صورة مرئية تمثل خدماتك أو عملك أو مهمتك.سنقدم لك مجموعة كاملة من خدمات التصميم وسوف نساعدك في خدمات الطباعة إذا لزم الأمر. لدينا مصممين متمرسين في جميع أشكال التصميم الجرافيكي والطباعة.', 'account/images/banner-design.png', '2019-02-11 19:53:29', '2019-02-12 18:21:22', NULL),
(21, 'برمجة تطبيقات الويب', '  هدفنا الرئيسي في ماتريكس تقديم كافة الحلول للشركات ومساعدتها علي التطوير المستمر لذلك قمنا بتوفير خدمات انشاء تطبيقات الويب لتحسين عمل الشركات مع العملاء وسهولة ادارة الموظفين من اي مكان وفي اي وقت \r\nتطبيقات الويب هي تطوير لفكرة تطبيقات وبرامج الكمبيوتر التي كانت ومازالت بعض الشركات تعمل بها وهي برامج يصعب علي قسم الادارة في الشركات القيام بمهامهم الادارية من اي مكان غير مقر الشركة ولا متابعة عمل باقي الافرع وغيرها من المميزت التي اتاحتها تطبيقات الويب\r\nلدينا فريق عمل متكامل من المحلليين والمبرمجين ولديهم الخبرة الفائقة لانشاء كافة انواع البرامج والانظمة الخاصه بالويب \r\n', 'account/images/web_application_framework-01.png', '2019-02-11 20:09:06', '2019-02-11 20:09:06', NULL),
(22, 'برمجة تطبيقات الموبايل ', 'يتم استخدام التكنولوجيا وأجهزة الموبايل بشكل متزايد على نطاق واسع يوميًا وتستفيد الشركات  من هذه المنصات للوصول إلى عملائها وتلبية احتياجاتهم وتحسين وجودهم بشكل مستمر .نقوم بتقديم خدمات وحلول عالية الجودة في تطبيقات الموبايل  لمساعدتك على توسيع قاعدة عملائك بسرعة ، والانتقال إلى منهجية التطوير السريع ، وتحسين وجودك في السوق لتلبية الاهداف التنقل الخاصة بك ', 'account/images/mobapp.jpg', '2019-02-16 14:05:41', '2019-02-16 14:09:08', NULL),
(23, 'برمجة تطبيقات الموبايل ', 'اذا كنت تريد إنشاء تطبيق للموبايل ، فقد قمنا بتوفيركل انواع المنصات التي خصصت.  بما في ذلك iOS و Android  و Windows Mobile.', 'account/images/cb_services_android-400x400.png', '2019-02-16 14:13:47', '2019-02-16 14:15:20', '2019-02-16 14:15:20'),
(24, 'الفيديوهات الدعائية', 'اذا كان لديك منتج او خدمة تريد ان تعمل علي اشهارهم بطريقة اسرع فافضل وسيلة هي تصميم فيديو احترافي لعرض هذا المحتوي ,المحتوي المرئي هو من اهم واكثر المحتويات تاثيرا وجذبا للمستخدم, فالمستحدم يحتاج لاقل من 10 ثواني لتجذب انتباهة والمحتوي المرئي هو الوحيد القادر علي ذلك, بامكان الفيديو الدعائي زيادة معدل التحويل لموقعك الي اضعاف ما هو عليه\r\nلدينا فريق عمل متخصص في انشاء هذا النوع من المحتوي الدعائي, سنقوم بعمل فيديو احترافي ليعبر عن الخدمة التي تقدمها بافضل شكل مما سيساعدك علي الانتشار السريع\r\n', 'account/images/Turning_Infographics_into_Animated_Video-770x360.png', '2019-02-16 14:53:14', '2019-02-23 14:33:32', NULL),
(25, 'استشارات وحلول الاعمال', 'تقوم خدمات استشارات الأعمال بإدارة القدرات لتمكين نجاح العمل من خلال استراتيجيات تنفيذية وتأهيل فريق عمل  لتنفيذها بطريقة تؤدي الى النمو المستمر. لتحقيق التحول المطلوب ، من الاستراتيجية إلى التنفيذ ، واكتساب الكفاءة مع الخدمات الاستشارية. نحن هنا  نلعب دورا كبيرا وهاما في تحسين و تطوير أساليب و إستراتيجيات الأعمال المختلفة, نمدك بالتوجيهات اللازمة لتحسين وضع العلامة التجارية وسير العمل ومعرفة كل ما يخص السوق والمنافسين والجمهور المستهدف وعلاقتك بالعملاء وكل ما يؤثر في عائد العمل\r\nنملك فريق من الخبراء المتميزين والمتخصيين في استشارات وحلول تطوير الشركات  يستطيع ان يصل بك إلى المنافسة في السوق العالمية والمحلية \r\n', 'account/images/uomo-lavagna-disegni.jpg', '2019-02-16 15:39:27', '2019-02-18 15:07:18', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `slider`
--

CREATE TABLE `slider` (
  `id` int(10) UNSIGNED NOT NULL,
  `title1` varchar(255) NOT NULL,
  `title2` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `image2` varchar(100) DEFAULT NULL,
  `background` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `slider`
--

INSERT INTO `slider` (`id`, `title1`, `title2`, `image`, `created_at`, `updated_at`, `deleted_at`, `image2`, `background`) VALUES
(5, '', '', 'account/images/5a74764ec14f9b0001c33ad2_7b934-1pu7wwmx3jata6ccdkvswpa_du6azv-p-2000.jpeg', '2019-01-22 09:19:21', '2019-02-03 17:53:58', '2019-02-03 17:53:58', NULL, NULL),
(18, 'Web Design ', '', 'account/images/Website Design.jpg', '2019-01-29 14:55:41', '2019-02-11 20:12:13', '2019-02-11 20:12:13', NULL, NULL),
(19, '', '', 'account/images/webdesigndev.jpg', '2019-01-30 13:47:18', '2019-02-11 20:12:57', '2019-02-11 20:12:57', NULL, NULL),
(20, 'Web design & Developers ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi laoreet urna ante,quis luctus nisi sodales sit amet. Aliquam a enim in massa molestie mollis Proin quis velit at nisl vulputate egestas non in arcu Proin a magna hendrerit, tincidunt neque sed', 'account/images\\slider1-img1.jpg', '2019-02-07 13:50:48', '2020-11-14 11:01:14', NULL, 'account/images\\slider1-img2.jpg', 'account/images\\bg-slider1.jpg'),
(21, '', '', 'account/images/banner4.jpg', '2019-02-11 20:13:20', '2019-02-11 20:14:58', '2019-02-11 20:14:58', NULL, NULL),
(22, '', '', 'account/images/Webdesign.jpg', '2019-02-11 20:15:22', '2019-02-20 17:17:46', '2019-02-20 17:17:46', NULL, NULL),
(23, '', '', 'account/images/Web design.jpg', '2019-02-19 15:51:29', '2019-02-20 13:27:34', '2019-02-20 13:27:34', NULL, NULL),
(24, 'App Mangement & Programming', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi laoreet urna ante, quis luctus nisi sodales sit amet. Aliquam a enim in massa molestie mollis Proin quis velit at nisl vulputate egestas non in arcu Proin a magna hendrerit, tincidunt neque se', 'account/images\\bg-slider2.jpg', '2019-02-20 17:17:31', '2020-11-14 11:02:57', NULL, 'account/images\\slider2-img1.jpg', 'account/images\\slider2-img2.jpg'),
(25, 'Graphics', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi laoreet urna ante, quis luctus nisi sodales sit amet. Aliquam a enim in massa molestie mollis Proin quis velit at nisl vulputate egestas non in arcu Proin a magna hendrerit, tincidunt neque se', 'account/images\\bg-slider3.jpg', '2019-02-20 18:18:07', '2020-11-14 11:03:42', NULL, 'account/images\\slider3-img1.jpg', 'account/images\\slider3-img2.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `team`
--

CREATE TABLE `team` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(100) NOT NULL,
  `job_title` varchar(100) NOT NULL,
  `classification` varchar(100) NOT NULL,
  `experience` varchar(255) NOT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `github` varchar(255) DEFAULT NULL,
  `linkedIn` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `team`
--

INSERT INTO `team` (`id`, `name`, `description`, `image`, `job_title`, `classification`, `experience`, `facebook`, `github`, `linkedIn`) VALUES
(1, 'Hamada Ali ', 'Web Developer specializing in backe end development. Experienced with all stages of the development\r\ncycle for dynamic web projects. Well-versed in numerous programming languages including HTML5,\r\nPHP OOP, JavaScript, CSS, MySQL. Strong background in project management and customer relations.\r\nFlutter Developer specializing in developing mobile applications. Experienced in the development of\r\nmobile application projects, Well-versed in Firebase, working with REST APIs state management\r\nprovider,SQFLITE.', 'account/NewDesign/img/team/t1.jpg', 'Flutter Developer', 'Computer Information Systems', 'Five years', 'https://www.facebook.com/shereen.shapaan', 'https://github.com/', 'https://eg.linkedin.com/'),
(2, 'Shereen Shapaan ', 'Web Developer specializing in backe end development. Experienced with all stages of the development\r\ncycle for dynamic web projects. Well-versed in numerous programming languages including HTML5,\r\nPHP OOP, Laravel ,Restful Api ,JavaScript, CSS, MySQL. Strong background in project management and customer relations.', 'account/NewDesign/img/team/t1.jpg', 'Full Stack Developer (Laravel)', 'Computer Science', '3 years', 'https://www.facebook.com/shereen.shapaan', 'https://github.com/', 'https://eg.linkedin.com/');

-- --------------------------------------------------------

--
-- Table structure for table `testimonil`
--

CREATE TABLE `testimonil` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `testimonil`
--

INSERT INTO `testimonil` (`id`, `title`, `description`, `image`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Hazem', 'Proin lobortis ligula at tortor venenatis pellentesque id quis urna. Integer sit amet dui posuere, ullamcorper urna vitae, ornare sapien. Etiam hendrerit auctor libero.', 'account/images/Matrixtranslation Logo.png', '2019-01-05 08:45:14', '2019-01-24 15:29:53', '2019-01-24 15:29:53'),
(2, 'THEMEFOREST', 'Proin lobortis ligula at tortor venenatis pellentesque id quis urna. Integer sit amet dui posuere, ullamcorper urna vitae, ornare sapien. Etiam hendrerit auctor libero.', 'account/images\\Koala.jpg', '2019-01-08 08:58:32', '2019-01-24 15:29:48', '2019-01-24 15:29:48'),
(3, 'HAMADA', 'Proin lobortis ligula at tortor venenatis pellentesque id quis urna. Integer sit amet dui posuere, ullamcorper urna vitae, ornare sapien. Etiam hendrerit auctor libero.', 'account/images\\Jellyfish.jpg', '2019-01-08 08:59:06', '2019-01-24 15:29:45', '2019-01-24 15:29:45');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role` int(11) NOT NULL,
  `username` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `role`, `username`) VALUES
(1, 'hamada', 'hamada@ali.com', '$2y$10$646yt5imENOIBg0nz/CyOesvnDjqdBGhpTnkZgi5O7yqIsLFFJzKm', 'Bgg1mksySbaN3OEbvrKBVMVPS6F17zV0f6azLN0HKVuXAJuV0OlWjyuF6N9U', '2019-01-04 15:42:24', '2019-03-19 13:52:02', 3, 'admin1234'),
(2, 'Nagi', '5820661@gmail.com', '$2y$10$AomTUd63163zdGBLCU7PPuRokQnRzortCsD6ky8v65ZwLooGz4H1y', NULL, '2019-01-12 23:40:23', '2019-01-12 23:40:23', 3, 'Nagi Al Sawi'),
(3, 'hamadass', 'hamada.ali8899@yahoo.com', '$2y$10$GBFAcDL4HdcymzZ1VQMzI.MK59YbeRwSHre0ptgVKmP2MmOCbfVfK', 'wKP3TC91niTgdrpSRASYBkUs3aVy1ViCdfK925eZQIMRGzZhuOyv2EOMud2P', '2019-02-26 20:07:08', '2019-02-26 20:28:32', 3, 'admin1234dddsssssssss'),
(4, 'shereen shapaan', 'shereen.shapaan@gmail.com', '$2y$10$thKJVNrip9GKeCgUsZmHueITJOda1/h2hXcgueXeanunBWVUvLW8C', 'mXiYAbgwxkhutgQOJERFPWERiWtjXnLPDDN1osPtxPQUg5Qpj7i2L7yc58Wm', '2019-08-13 00:54:12', '2019-08-13 00:57:10', 3, 'shereen'),
(5, 'shereen', 'shereen.shapaan55@gmail.com', '$2y$10$McREbGOSljKSUsVXvU4/Y.bVYl68tuF7K3kRRFyITHOKz5MZf7dom', NULL, '2020-11-14 10:54:46', '2020-11-14 10:54:46', 3, 'shereen1');

-- --------------------------------------------------------

--
-- Table structure for table `work`
--

CREATE TABLE `work` (
  `id` int(11) NOT NULL,
  `ourwork_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `video` text NOT NULL,
  `url` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `work`
--

INSERT INTO `work` (`id`, `ourwork_id`, `title`, `description`, `image`, `video`, `url`, `created_at`, `updated_at`) VALUES
(1, 18, 'shereen ', 'Proin lobortis ligula at tortor venenatis pellentesque id quis urna. Integer sit amet dui posuere, ullamcorper urna vitae, ornare sapien. Etiam hendrerit auctor libero.', 'account/images\\p4.jpg', '', 'http://matrixtranslation.com', '2019-01-05 08:45:14', '2020-11-18 10:53:18'),
(5, 17, 'Maojod.com Website', 'موقع تسوق موجود دوت كوم ', 'account/images\\1605367947995.png', '', 'https://www.maojod.com/', '2019-02-21 16:27:34', '2020-11-14 13:39:38'),
(8, 17, 'turfaco', 'موقع تسوق بالجملة تروفاكو', 'account/images\\1605368484231.png', '', 'http://turfaco.com/', '2019-02-21 16:50:35', '2020-11-14 13:41:40');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aboutus`
--
ALTER TABLE `aboutus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contactus`
--
ALTER TABLE `contactus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `details`
--
ALTER TABLE `details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feature`
--
ALTER TABLE `feature`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `icons`
--
ALTER TABLE `icons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `landing`
--
ALTER TABLE `landing`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `minservices`
--
ALTER TABLE `minservices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `money`
--
ALTER TABLE `money`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsletter`
--
ALTER TABLE `newsletter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offers`
--
ALTER TABLE `offers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offerspackages`
--
ALTER TABLE `offerspackages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offers_details`
--
ALTER TABLE `offers_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ourwork`
--
ALTER TABLE `ourwork`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `package_details`
--
ALTER TABLE `package_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `price`
--
ALTER TABLE `price`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quatation`
--
ALTER TABLE `quatation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonil`
--
ALTER TABLE `testimonil`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- Indexes for table `work`
--
ALTER TABLE `work`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aboutus`
--
ALTER TABLE `aboutus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `booking`
--
ALTER TABLE `booking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `contactus`
--
ALTER TABLE `contactus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `details`
--
ALTER TABLE `details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=197;

--
-- AUTO_INCREMENT for table `feature`
--
ALTER TABLE `feature`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `icons`
--
ALTER TABLE `icons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `landing`
--
ALTER TABLE `landing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `minservices`
--
ALTER TABLE `minservices`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `money`
--
ALTER TABLE `money`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `newsletter`
--
ALTER TABLE `newsletter`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=160;

--
-- AUTO_INCREMENT for table `offers`
--
ALTER TABLE `offers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `offerspackages`
--
ALTER TABLE `offerspackages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `offers_details`
--
ALTER TABLE `offers_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ourwork`
--
ALTER TABLE `ourwork`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `package_details`
--
ALTER TABLE `package_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=205;

--
-- AUTO_INCREMENT for table `price`
--
ALTER TABLE `price`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `quatation`
--
ALTER TABLE `quatation`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `slider`
--
ALTER TABLE `slider`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `team`
--
ALTER TABLE `team`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `testimonil`
--
ALTER TABLE `testimonil`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `work`
--
ALTER TABLE `work`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
