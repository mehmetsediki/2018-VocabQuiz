-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 18, 2017 at 06:05 PM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 7.1.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dictionary`
--

-- --------------------------------------------------------

--
-- Stand-in structure for view `eachstudentscore`
-- (See below for the actual view)
--
CREATE TABLE `eachstudentscore` (
`user_name` varchar(100)
,`last_name` varchar(100)
,`average` decimal(47,0)
);

-- --------------------------------------------------------

--
-- Table structure for table `exam_list`
--

CREATE TABLE `exam_list` (
  `id` int(11) NOT NULL,
  `name` varchar(30) COLLATE utf8_persian_ci NOT NULL,
  `sem` int(2) NOT NULL,
  `book` varchar(20) COLLATE utf8_persian_ci NOT NULL,
  `en_fa_fa_en` tinyint(1) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `exam_list`
--

INSERT INTO `exam_list` (`id`, `name`, `sem`, `book`, `en_fa_fa_en`, `user_id`) VALUES
(25, 'test', 1, 'Speaking', 1, 3),
(26, 'one', 1, 'Speaking', 1, 1),
(27, 'b', 1, 'Listening', 1, 1),
(28, 'dd', 1, 'Listening', 1, 3),
(29, 'test1', 1, 'Speaking', 1, 3),
(30, 'testNew', 1, 'Speaking', 1, 1),
(31, 'farsi', 1, 'Speaking', 0, 1),
(32, 'newPersian', 1, 'Speaking', 0, 1),
(33, 'myNewTest', 1, 'Speaking', 1, 1);

-- --------------------------------------------------------

--
-- Stand-in structure for view `exam_list_word_count`
-- (See below for the actual view)
--
CREATE TABLE `exam_list_word_count` (
`user_name` varchar(100)
,`last_name` varchar(100)
,`id` int(11)
,`name` varchar(30)
,`sem` int(2)
,`book` varchar(20)
,`en_fa_fa_en` tinyint(1)
,`user_id` int(11)
,`total_record` bigint(21)
,`passed_record` bigint(21)
,`success_record` bigint(21)
,`faild_record` bigint(21)
,`average` decimal(24,0)
);

-- --------------------------------------------------------

--
-- Table structure for table `exam_record`
--

CREATE TABLE `exam_record` (
  `record_id` int(11) NOT NULL,
  `list_id` int(11) NOT NULL,
  `word` int(11) NOT NULL,
  `response` varchar(50) COLLATE utf8_persian_ci NOT NULL,
  `true_false` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `exam_record`
--

INSERT INTO `exam_record` (`record_id`, `list_id`, `word`, `response`, `true_false`) VALUES
(115, 25, 32, 'رنج بردن', 0),
(116, 25, 80, 'غیر قابل اعتماد', 1),
(117, 25, 201, 'آزمایشات', 1),
(118, 25, 130, 'غلیظ', 1),
(119, 28, 204, 'غیر قابل اعتماد', 0),
(120, 28, 203, 'کتاب', 1),
(121, 25, 68, 'حس شوخ طبعی', 1),
(122, 25, 158, 'آزمایشات', 0),
(123, 25, 145, 'رنج بردن', 1),
(124, 25, 79, 'مهاجرین', 0),
(125, 25, 46, 'تاکید کنید', 1),
(126, 25, 74, 'متقلب', 1),
(127, 25, 41, 'صورت گرد', 0),
(128, 25, 66, 'خشونت آمیز', 1),
(129, 25, 88, 'مراسم غیر مذهبی', 1),
(130, 25, 91, 'عروسی', 1),
(131, 25, 155, 'دور از انتظار', 0),
(132, 25, 153, 'بدبخت', 1),
(133, 25, 142, 'ریزش', 1),
(134, 25, 163, 'وحشت زده', 0),
(135, 25, 53, 'نازک', 1),
(136, 25, 98, 'معبد', 1),
(137, 25, 182, 'اجداد', 1),
(138, 25, 196, 'قابل توجه', 1),
(139, 25, 149, 'هیجان زده', 1),
(140, 25, 161, 'وحشت زده', 1),
(141, 25, 172, 'دلسوز همدرد', 1),
(142, 25, 144, 'لینز نمره', 1),
(143, 25, 72, 'میل', 1),
(144, 25, 40, 'پریشان کردن', 1),
(145, 25, 169, 'هیجانی', 1),
(146, 25, 181, 'سلطنتی', 1),
(147, 25, 95, 'سخنرانی کردن', 1),
(148, 25, 137, 'خوش اندام', 1),
(149, 25, 120, 'روان', 1),
(150, 25, 65, 'متکبر', 1),
(151, 25, 97, 'سالگرد', 1),
(152, 25, 199, 'کاوش کنید', 1),
(153, 25, 104, 'مردن', 1),
(154, 25, 87, 'مراسم مذهبی', 1),
(155, 25, 58, 'اعتماد به نفس', 1),
(156, 25, 67, 'خسته کن', 1),
(157, 25, 197, 'جهان', 1),
(158, 25, 150, 'خشمگین', 1),
(159, 25, 177, 'به فرزندی گرفتن', 1),
(160, 25, 136, 'شانه ای بزرگ', 1),
(161, 25, 200, 'سطح', 1),
(162, 25, 39, 'هجا', 1),
(163, 25, 96, 'به افتخار کسی چیزی خوردن', 1),
(164, 25, 156, 'ناراحت', 1),
(165, 25, 108, 'سوزاندن', 1),
(166, 25, 21, 'با هم بودن', 1),
(167, 25, 36, 'تاکید کنید', 0),
(168, 25, 85, 'عروسی', 1),
(169, 25, 102, 'عزاداری', 1),
(170, 25, 148, 'دفن کردن', 0),
(171, 25, 147, '', 1),
(172, 25, 73, 'حساس', 1),
(173, 25, 110, 'وصیت نامه', 1),
(174, 25, 159, 'شگفت زده شد', 1),
(175, 25, 47, 'ظاهر', 1),
(176, 25, 93, 'پذیرش', 1),
(177, 25, 123, 'حاوی', 1),
(178, 25, 134, 'چاق و چله', 1),
(179, 25, 106, 'مرد بیوه', 1),
(180, 25, 25, 'متکبر', 1),
(181, 25, 54, 'برنزه', 1),
(182, 25, 114, 'ایجاد انگیزه', 1),
(183, 25, 195, 'به دست آورد', 1),
(184, 25, 84, 'جنگ', 1),
(185, 25, 51, 'منتظر', 1),
(186, 25, 30, 'نکات', 1),
(187, 25, 45, 'صدای بلند', 1),
(188, 25, 118, 'متحیر', 0),
(189, 25, 135, 'صورت گرد', 1),
(190, 25, 22, 'مالش دادن', 1),
(191, 25, 92, '', 1),
(192, 25, 125, 'با عصبانیت', 0),
(193, 25, 175, 'یکی از والدین را دارد', 1),
(194, 25, 111, 'میراث', 1),
(195, 25, 100, 'سنگ قبر', 1),
(196, 25, 165, 'ترسیدن', 1),
(197, 25, 183, 'مهاجرین', 1),
(198, 25, 190, 'منظومه شمسی', 1),
(199, 25, 61, 'بشاش', 1),
(200, 25, 194, 'دور از انتظار', 1),
(201, 25, 157, '', 1),
(202, 25, 189, 'سیارات', 1),
(203, 25, 29, 'رد', 1),
(204, 25, 78, 'ارتباطات خوب', 1),
(205, 25, 48, 'جامد سخت', 1),
(206, 25, 178, 'طلاق گرفتن', 1),
(207, 25, 76, 'در تماس بودن', 1),
(208, 25, 173, 'حمایتی', 1),
(209, 25, 138, 'لاغر استخوانی', 1),
(210, 25, 185, 'مثل شخصیت کسی', 1),
(211, 25, 71, 'احمق', 1),
(212, 25, 70, 'دیوانه', 1),
(213, 25, 184, 'به نظر رسیدن', 1),
(214, 25, 43, 'عامیانه', 1),
(215, 25, 179, 'بزرگ شدن', 1),
(216, 25, 109, 'جای که اجساد سوخته میشود', 1),
(217, 25, 166, 'حسادت', 1),
(218, 25, 63, 'صادقانه', 1),
(219, 25, 33, 'آزمایشی', 1),
(220, 25, 50, 'باردار', 1),
(221, 25, 99, 'قبر', 1),
(222, 25, 69, 'بی صبر', 0),
(223, 25, 20, 'روشنی چراغ', 1),
(224, 25, 143, 'پاک', 1),
(225, 25, 42, 'کلمات آب و هوا', 1),
(226, 25, 174, 'تک بچه', 1),
(227, 25, 133, 'رنگ پریده', 1),
(228, 25, 171, 'اخمو', 1),
(229, 25, 90, '', 1),
(230, 25, 139, 'بدون ریش و بروت', 1),
(231, 25, 34, 'بحث و جدل', 1),
(232, 25, 122, 'مناسب', 1),
(233, 25, 154, 'حسادت', 1),
(234, 25, 38, 'انداختن', 1),
(235, 25, 28, 'پشيمان شدن', 1),
(236, 25, 119, 'خسته کننده، اذیت کننده', 1),
(237, 25, 193, 'به نظر می رسید', 1),
(238, 25, 124, 'صحنه های', 1),
(239, 25, 198, 'مریخ', 1),
(240, 25, 83, 'جدا شدن', 1),
(241, 25, 49, 'غلیظ', 0),
(242, 25, 35, 'با عصبانیت', 1),
(243, 25, 186, 'موشک', 0),
(244, 25, 57, 'بلند پروازانه', 1),
(245, 25, 160, 'عاطفی', 1),
(246, 25, 167, 'کاملا', 1),
(247, 25, 37, 'پیش رفتن', 1),
(248, 25, 113, '', 0),
(249, 25, 94, 'رسم', 1),
(250, 25, 27, '', 0),
(251, 25, 44, 'فهمیدن', 0),
(252, 25, 56, 'سفید شدن', 1),
(253, 25, 168, 'حد اکثر', 1),
(254, 25, 188, 'چرخیدن', 1),
(255, 25, 103, 'تابوت', 1),
(256, 25, 112, 'هدف', 1),
(257, 25, 116, 'آشکار', 1),
(258, 25, 59, 'سخاوتمندانه', 1),
(259, 25, 75, 'اجتماعی', 1),
(260, 25, 132, 'پوست تیره', 1),
(261, 25, 105, 'زن بیوه', 1),
(262, 25, 81, 'همراهی', 1),
(263, 25, 24, 'فروتن', 1),
(264, 25, 127, 'قدرت کلمه', 1),
(265, 25, 26, 'مترادف', 1),
(266, 25, 176, 'پدر مادر رضایی', 1),
(267, 25, 187, 'تقریبا', 1),
(268, 25, 146, 'خشن', 1),
(269, 25, 129, 'عبارتی', 1),
(270, 25, 117, 'تشویق', 1),
(271, 25, 191, 'فضا', 1),
(272, 25, 140, 'جای زخم', 1),
(273, 25, 192, 'موشک', 1),
(274, 25, 52, 'صورت گرد', 1),
(275, 25, 64, 'بردبار', 1),
(276, 25, 162, 'ترسناک', 1),
(277, 25, 126, 'یادگیرنده', 1),
(278, 25, 152, 'وحشت زده', 1),
(279, 25, 82, 'فهمیدن', 1),
(280, 25, 86, 'مراسم خاکسپاری', 1),
(281, 25, 55, 'چروک', 1),
(282, 25, 115, 'بیان', 1),
(283, 25, 151, 'متحیر', 1),
(284, 25, 170, 'حساس', 1),
(285, 25, 60, 'بی صبر', 1),
(286, 25, 101, 'عزاداران', 1),
(287, 25, 180, 'برادر اندر', 1),
(288, 25, 23, 'شاید', 1),
(289, 25, 202, 'كشف كردن', 1),
(290, 25, 128, 'اصطلاح', 1),
(291, 25, 62, 'اسان گیر', 1),
(292, 25, 121, 'مربوط', 1),
(293, 25, 31, 'خلاصه', 1),
(294, 25, 107, 'دفن کردن', 1),
(295, 25, 141, 'در حال کل شدن', 1),
(296, 25, 89, 'داماد', 1),
(297, 25, 77, 'دوست یابی', 1),
(298, 25, 131, 'ته ریش', 1),
(299, 25, 164, 'پیش رفتن', 0),
(300, 29, 100, 'سنگ قبر', 1),
(301, 29, 88, 'مراسم غیر مذهبی', 1),
(302, 29, 71, 'احمق', 1),
(303, 29, 94, 'رسم', 1),
(304, 29, 84, 'قدرت کلمه', 0),
(305, 29, 107, 'دفن کردن', 1),
(306, 29, 136, 'شانه ای بزرگ', 1),
(307, 29, 128, 'اصطلاح', 1),
(308, 29, 150, 'خشمگین', 1),
(309, 29, 25, 'منظومه شمسی', 0),
(310, 29, 158, 'خوشحالم', 1),
(311, 29, 177, 'به فرزندی گرفتن', 1),
(312, 26, 178, 'طلاق گرفتن', 1),
(313, 26, 166, 'ایجاد انگیزه', 0),
(314, 26, 174, 'تک بچه', 1),
(315, 26, 62, 'اسان گیر', 1),
(316, 26, 151, 'صورت گرد', 0),
(317, 26, 46, 'حمایتی', 0),
(318, 26, 87, 'مراسم مذهبی', 1),
(319, 26, 28, 'پشيمان شدن', 1),
(320, 26, 148, 'مرتب', 1),
(321, 26, 42, 'کلمات آب و هوا', 1),
(322, 26, 168, 'حد اکثر', 1),
(323, 26, 72, 'توهین آمیز', 0),
(324, 26, 139, 'بدون ریش و بروت', 1),
(325, 26, 185, 'مثل شخصیت کسی', 1),
(326, 26, 82, 'فهمیدن', 1),
(327, 26, 100, 'سنگ قبر', 1),
(328, 26, 43, 'عامیانه', 1),
(329, 26, 116, 'آشکار', 1),
(330, 26, 29, 'رد', 1),
(331, 26, 124, 'صحنه های', 1),
(332, 26, 83, 'کاوش کنید', 0),
(333, 26, 54, 'برنزه', 1),
(334, 26, 169, 'هیجانی', 1),
(335, 26, 184, 'به نظر رسیدن', 1),
(336, 26, 84, 'با عصبانیت', 0),
(337, 26, 113, 'متقلب', 0),
(338, 26, 144, 'لینز نمره', 1),
(339, 26, 186, '', 1),
(340, 26, 90, '', 1),
(341, 26, 75, 'اجتماعی', 1),
(342, 26, 172, 'دلسوز همدرد', 1),
(343, 26, 70, 'خشن', 0),
(344, 26, 53, 'نازک', 1),
(345, 26, 170, 'حساس', 1),
(346, 26, 64, 'بردبار', 1),
(347, 26, 63, 'صادقانه', 1),
(348, 26, 25, 'توهین آمیز', 0),
(349, 26, 198, 'مریخ', 1),
(350, 26, 130, 'غلیظ', 1),
(351, 26, 86, 'مراسم خاکسپاری', 1),
(352, 26, 34, 'بحث و جدل', 1),
(353, 26, 69, 'معقول', 1),
(354, 26, 102, 'عزاداری', 1),
(355, 26, 141, 'در حال کل شدن', 1),
(356, 26, 132, 'پوست تیره', 1),
(357, 26, 200, 'سطح', 1),
(358, 26, 201, 'آزمایشات', 1),
(359, 26, 21, 'با هم بودن', 1),
(360, 26, 94, 'رسم', 1),
(361, 26, 110, 'وصیت نامه', 1),
(362, 26, 44, 'عبارتی', 0),
(363, 26, 97, 'پذیرش', 0),
(364, 26, 73, 'حساس', 1),
(365, 26, 179, 'بیزار', 0),
(366, 26, 202, 'كشف كردن', 1),
(367, 26, 127, 'قدرت کلمه', 1),
(368, 26, 74, 'متقلب', 1),
(369, 26, 176, 'پدر مادر رضایی', 1),
(370, 26, 133, 'رنگ پریده', 1),
(371, 26, 135, 'صورت گرد', 1),
(372, 26, 129, 'عبارتی', 1),
(373, 26, 143, 'پاک', 1),
(374, 26, 111, 'میراث', 1),
(375, 26, 78, 'هدف', 0),
(376, 26, 119, 'خسته کننده، اذیت کننده', 1),
(377, 26, 123, 'حاوی', 1),
(378, 26, 47, 'ظاهر', 1),
(379, 26, 162, 'چهار شانه', 0),
(380, 26, 159, 'شگفت زده شد', 1),
(381, 26, 68, 'حس شوخ طبعی', 1),
(382, 26, 120, 'روان', 1),
(383, 26, 77, 'دوست یابی', 1),
(384, 26, 126, 'یادگیرنده', 1),
(385, 26, 122, 'مناسب', 1),
(386, 26, 109, 'نکات', 0),
(387, 26, 136, 'شانه ای بزرگ', 1),
(388, 26, 165, 'ترسیدن', 1),
(389, 26, 196, 'قابل توجه', 1),
(390, 26, 92, '', 1),
(391, 26, 197, 'جهان', 1),
(392, 26, 164, 'اخمو', 0),
(393, 26, 99, 'قبر', 1),
(394, 26, 140, 'خسته کن', 0),
(395, 26, 157, '', 1),
(396, 26, 88, 'مراسم غیر مذهبی', 1),
(397, 26, 189, 'سیارات', 1),
(398, 26, 67, 'مناسب', 0),
(399, 26, 154, 'حسادت', 1),
(400, 26, 48, 'جامد سخت', 1),
(401, 26, 156, 'ناراحت', 1),
(402, 26, 183, 'مهاجرین', 1),
(403, 26, 115, 'بیان', 1),
(404, 26, 108, 'سوزاندن', 1),
(405, 26, 35, 'با عصبانیت', 1),
(406, 26, 66, 'خشونت آمیز', 1),
(407, 26, 107, 'دفن کردن', 1),
(408, 26, 60, 'بی صبر', 1),
(409, 26, 118, 'مطلع', 1),
(410, 26, 59, 'سخاوتمندانه', 1),
(411, 26, 41, 'نمونه', 1),
(412, 26, 38, 'غیر قابل اعتماد', 0),
(413, 26, 81, 'همراهی', 1),
(414, 26, 80, 'پریشان کردن', 0),
(415, 26, 180, 'برادر اندر', 1),
(416, 26, 138, 'لاغر استخوانی', 1),
(417, 26, 125, 'خشونت', 1),
(418, 26, 153, 'شاید', 0),
(419, 26, 134, 'چاق و چله', 1),
(420, 26, 150, 'خشمگین', 1),
(421, 26, 114, 'ایجاد انگیزه', 1),
(422, 26, 58, 'اعتماد به نفس', 1),
(423, 26, 20, 'روشنی چراغ', 1),
(424, 26, 182, 'اجداد', 1),
(425, 26, 177, 'به فرزندی گرفتن', 1),
(426, 26, 50, 'باردار', 1),
(427, 26, 98, 'معبد', 1),
(428, 26, 171, 'دلسوز همدرد', 0),
(429, 26, 79, 'تشویق', 0),
(430, 26, 191, 'فضا', 1),
(431, 26, 101, 'عزاداران', 1),
(432, 26, 93, 'پذیرش', 1),
(433, 26, 31, 'وحشت زده', 0),
(434, 26, 104, 'مردن', 1),
(435, 26, 45, 'صدای بلند', 1),
(436, 26, 161, 'وحشت زده', 1),
(437, 26, 95, 'سخنرانی کردن', 1),
(438, 26, 181, 'سلطنتی', 1),
(439, 26, 22, 'مالش دادن', 1),
(440, 26, 173, 'حمایتی', 1),
(441, 26, 76, 'در تماس بودن', 1),
(442, 26, 36, 'تجدید نظر', 1),
(443, 26, 65, 'رنج بردن', 0),
(444, 26, 188, 'چرخیدن', 1),
(445, 26, 155, 'مشتاق', 1),
(446, 26, 195, 'به دست آورد', 1),
(447, 26, 103, 'تابوت', 1),
(448, 26, 71, 'احمق', 1),
(449, 26, 27, 'هجا', 0),
(450, 26, 89, 'داماد', 1),
(451, 26, 158, 'متکبر', 0),
(452, 26, 105, 'زن بیوه', 1),
(453, 26, 112, 'هدف', 1),
(454, 26, 52, 'صورت گرد', 1),
(455, 26, 117, 'وحشت زده', 0),
(456, 26, 163, 'افسرده', 1),
(457, 26, 57, 'بلند پروازانه', 1),
(458, 26, 91, 'عروسی', 1),
(459, 26, 61, 'بشاش', 1),
(460, 26, 106, 'مرد بیوه', 1),
(461, 26, 121, 'مربوط', 1),
(462, 26, 175, 'یکی از والدین را دارد', 1),
(463, 26, 24, 'فروتن', 1),
(464, 26, 190, 'منظومه شمسی', 1),
(465, 26, 160, 'عاطفی', 1),
(466, 26, 192, 'موشک', 1),
(467, 26, 37, 'پیش رفتن', 1),
(468, 26, 23, 'شاید', 1),
(469, 26, 167, 'کاملا', 1),
(470, 26, 55, 'چروک', 1),
(471, 26, 187, 'تقریبا', 1),
(472, 26, 194, 'دور از انتظار', 1),
(473, 26, 96, 'به افتخار کسی چیزی خوردن', 1),
(474, 26, 146, 'خشن', 1),
(475, 26, 149, 'هیجان زده', 1),
(476, 26, 40, 'پریشان کردن', 1),
(477, 26, 193, 'به نظر می رسید', 1),
(478, 26, 32, 'ترسیدن', 1),
(479, 26, 128, 'اصطلاح', 1),
(480, 26, 152, 'تشویق', 0),
(481, 26, 131, 'ته ریش', 1),
(482, 26, 33, 'آزمایشی', 1),
(483, 26, 39, 'هجا', 1),
(484, 26, 147, '', 1),
(485, 26, 85, 'عروسی', 1),
(486, 26, 49, 'بلند پروازانه', 0),
(487, 26, 56, 'سفید شدن', 1),
(488, 26, 26, 'مترادف', 1),
(489, 26, 199, 'کاوش کنید', 1),
(490, 26, 137, 'خوش اندام', 1),
(491, 26, 145, '', 0),
(492, 26, 142, 'ریزش', 1),
(493, 26, 30, 'نکات', 1),
(494, 26, 51, 'منتظر', 1),
(495, 30, 161, 'وحشت زده', 1),
(496, 30, 162, 'ترسناک', 1),
(497, 30, 93, 'بلند پروازانه', 0),
(498, 30, 94, 'رسم', 1),
(499, 30, 201, 'آزمایشات', 1),
(500, 30, 109, 'جای که اجساد سوخته میشود', 1),
(501, 30, 176, 'پدر مادر رضایی', 1),
(502, 30, 86, 'مراسم خاکسپاری', 1),
(503, 30, 47, 'ظاهر', 1),
(504, 30, 68, 'حس شوخ طبعی', 1),
(505, 30, 163, 'افسرده', 1),
(506, 30, 156, 'ناراحت', 1),
(507, 30, 138, 'لاغر استخوانی', 1),
(508, 30, 58, 'اعتماد به نفس', 1),
(509, 31, 162, 'ترسناک', 1),
(510, 31, 151, 'متحیر', 1),
(511, 31, 20, 'روشنی چراغ', 1),
(512, 31, 137, 'خوش اندام', 1),
(513, 31, 42, 'کلمات آب و هوا', 1),
(514, 31, 194, 'دور از انتظار', 1),
(515, 31, 201, 'آزمایشات', 1),
(516, 31, 77, 'دوست یابی', 1),
(517, 31, 23, 'شاید', 1),
(518, 31, 200, 'سطح', 1),
(519, 31, 120, 'روان', 1),
(520, 31, 70, 'دیوانه', 1),
(521, 31, 118, 'مطلع', 1),
(522, 31, 156, 'ناراحت', 1),
(523, 31, 93, 'پذیرش', 1),
(524, 31, 21, 'با هم بودن', 1),
(525, 31, 91, 'عروسی', 1),
(526, 31, 173, 'حمایتی', 1),
(527, 31, 26, 'مترادف', 1),
(528, 31, 78, 'ارتباطات خوب', 1),
(529, 31, 46, 'تاکید کنید', 1),
(530, 31, 202, 'كشف كردن', 1),
(531, 31, 38, 'انداختن', 1),
(532, 31, 39, 'هجا', 1),
(533, 31, 88, 'مراسم غیر مذهبی', 1),
(534, 31, 28, 'پشيمان شدن', 1),
(535, 31, 127, 'قدرت کلمه', 1),
(536, 31, 66, 'خشونت آمیز', 1),
(537, 31, 150, 'خشمگین', 1),
(538, 31, 30, 'نکات', 1),
(539, 31, 129, 'عبارتی', 1),
(540, 31, 138, 'لاغر استخوانی', 1),
(541, 31, 104, 'مردن', 1),
(542, 31, 33, 'آزمایشی', 1),
(543, 31, 181, 'سلطنتی', 1),
(544, 31, 35, 'با عصبانیت', 1),
(545, 31, 76, 'در تماس بودن', 1),
(546, 31, 121, 'مربوط', 1),
(547, 31, 147, '', 1),
(548, 31, 175, 'یکی از والدین را دارد', 1),
(549, 31, 112, 'هدف', 1),
(550, 31, 189, 'سیارات', 1),
(551, 31, 44, 'توهین آمیز', 1),
(552, 31, 75, 'اجتماعی', 1),
(553, 31, 185, 'مثل شخصیت کسی', 1),
(554, 31, 163, 'افسرده', 1),
(555, 31, 45, 'صدای بلند', 1),
(556, 31, 27, 'disadvantage', 1),
(557, 31, 49, 'چهار شانه', 1),
(558, 31, 100, 'سنگ قبر', 1),
(559, 31, 87, 'مراسم مذهبی', 1),
(560, 31, 55, 'چروک', 1),
(561, 31, 83, 'جدا شدن', 1),
(562, 31, 126, 'یادگیرنده', 1),
(563, 31, 102, 'عزاداری', 1),
(564, 31, 98, 'معبد', 1),
(565, 31, 128, 'اصطلاح', 1),
(566, 31, 178, 'طلاق گرفتن', 1),
(567, 31, 155, 'مشتاق', 1),
(568, 31, 135, 'صورت گرد', 1),
(569, 31, 123, 'حاوی', 1),
(570, 31, 68, 'حس شوخ طبعی', 1),
(571, 31, 152, 'وحشت زده', 1),
(572, 31, 48, 'جامد سخت', 1),
(573, 31, 22, 'مالش دادن', 1),
(574, 31, 63, 'صادقانه', 1),
(575, 31, 40, 'پریشان کردن', 1),
(576, 31, 130, 'غلیظ', 1),
(577, 31, 79, 'rely', 1),
(578, 31, 116, 'آشکار', 1),
(579, 31, 159, 'amazed', 1),
(580, 32, 130, 'thick', 1),
(581, 32, 85, 'wedding', 1),
(582, 32, 40, 'stressed', 1),
(583, 32, 148, 'tidy', 1),
(584, 32, 100, 'gravestone', 1),
(585, 31, 166, 'envious', 1),
(586, 31, 140, 'revise', 0),
(587, 31, 164, 'fed up', 1),
(588, 31, 172, 'symphathetic', 1),
(589, 31, 95, 'make speeches', 1),
(590, 31, 41, 'instance', 1),
(591, 31, 24, 'modest', 1),
(592, 31, 90, 'best man', 1),
(593, 31, 74, 'dishonest', 1),
(594, 31, 72, 'desire', 1),
(595, 31, 169, 'emotion', 1),
(596, 31, 92, 'drink a toast', 0),
(597, 31, 64, 'tolerant', 1),
(598, 31, 36, 'revise', 1),
(599, 31, 86, 'funeral', 1),
(600, 31, 149, 'emotion', 0),
(601, 31, 158, 'delighted', 1),
(602, 31, 109, 'cemetery', 1),
(603, 31, 105, 'widow', 1),
(604, 31, 190, 'solar system', 1),
(605, 31, 176, 'foster parent', 1),
(606, 33, 180, 'برادر اندر', 1),
(607, 33, 170, 'حساس', 1),
(608, 33, 169, 'هیجانی', 1),
(609, 33, 140, 'متکبر', 0),
(610, 33, 159, 'شگفت زده شد', 1),
(611, 33, 137, 'خوش اندام', 1),
(612, 33, 103, 'خشونت آمیز', 0),
(613, 33, 53, 'نازک', 1),
(614, 33, 46, 'تاکید کنید', 1),
(615, 33, 112, 'هدف', 1),
(616, 33, 152, 'وحشت زده', 1),
(617, 33, 163, 'افسرده', 1),
(618, 33, 193, 'به نظر می رسید', 1),
(619, 33, 54, 'ته ریش', 0),
(620, 33, 56, 'سفید شدن', 1),
(621, 33, 22, 'مالش دادن', 1),
(622, 33, 89, 'داماد', 1),
(623, 33, 91, 'عروسی', 1),
(624, 33, 183, 'مهاجرین', 1),
(625, 33, 190, 'منظومه شمسی', 1),
(626, 33, 31, 'اجداد', 0),
(627, 33, 59, 'سخاوتمندانه', 1),
(628, 33, 95, 'سخنرانی کردن', 1),
(629, 33, 77, 'دوست یابی', 1),
(630, 33, 28, 'پشيمان شدن', 1),
(631, 33, 171, 'اخمو', 1),
(632, 33, 34, 'بحث و جدل', 1),
(633, 33, 58, 'اعتماد به نفس', 1),
(634, 33, 175, 'یکی از والدین را دارد', 1),
(635, 33, 62, 'اسان گیر', 1),
(636, 33, 57, 'بلند پروازانه', 1),
(637, 33, 181, 'سلطنتی', 1),
(638, 33, 197, 'جهان', 1),
(639, 33, 192, 'موشک', 1),
(640, 33, 167, 'کاملا', 1),
(641, 33, 129, 'عبارتی', 1),
(642, 33, 25, 'متکبر', 1),
(643, 33, 158, 'خوشحالم', 1),
(644, 33, 47, 'ظاهر', 1),
(645, 33, 142, 'نکات', 0),
(646, 33, 191, 'فضا', 1),
(647, 33, 30, 'نکات', 1),
(648, 33, 82, 'معقول', 0),
(649, 33, 67, 'مراسم خاکسپاری', 0),
(650, 33, 107, 'دفن کردن', 1),
(651, 33, 44, 'توهین آمیز', 1),
(652, 33, 161, 'وحشت زده', 1),
(653, 33, 36, 'تجدید نظر', 1),
(654, 33, 182, 'اجداد', 1),
(655, 33, 133, 'رنگ پریده', 1),
(656, 33, 164, 'مناسب', 0),
(657, 33, 27, 'disadvantage', 1),
(658, 33, 99, 'قبر', 1),
(659, 33, 106, 'مرد بیوه', 1),
(660, 33, 105, 'زن بیوه', 1),
(661, 33, 68, 'حس شوخ طبعی', 1),
(662, 33, 100, 'سنگ قبر', 1),
(663, 33, 111, 'میراث', 1),
(664, 33, 72, 'میل', 1),
(665, 33, 166, 'حسادت', 1),
(666, 33, 24, 'فروتن', 1),
(667, 33, 33, 'آزمایشی', 1),
(668, 33, 147, '', 1),
(669, 33, 202, 'كشف كردن', 1),
(670, 33, 73, 'حساس', 1),
(671, 33, 113, 'به فرزندی گرفتن', 0),
(672, 33, 189, 'سیارات', 1),
(673, 33, 96, 'به افتخار کسی چیزی خوردن', 1),
(674, 33, 110, 'وصیت نامه', 1),
(675, 33, 93, 'پذیرش', 1),
(676, 33, 90, '', 1),
(677, 33, 177, 'جدا شدن', 0),
(678, 33, 97, 'سالگرد', 1),
(679, 33, 117, 'تشویق', 1),
(680, 33, 37, 'پیش رفتن', 1),
(681, 33, 127, 'قدرت کلمه', 1),
(682, 33, 172, 'دلسوز همدرد', 1),
(683, 33, 41, 'صورت گرد', 0),
(684, 33, 23, 'شاید', 1),
(685, 33, 149, 'چاق و چله', 0),
(686, 33, 108, 'هجا', 0),
(687, 32, 143, 'neater', 1),
(688, 32, 160, 'sensible', 0),
(689, 32, 191, 'space', 1),
(690, 32, 170, 'sensitive', 1),
(691, 32, 74, 'dishonest', 1),
(692, 32, 39, 'syllable', 1),
(693, 32, 135, 'fattish face', 1),
(694, 32, 168, 'extreme', 1),
(695, 32, 102, 'mourning', 1),
(696, 32, 91, 'bride', 1),
(697, 32, 127, 'wordpower', 1),
(698, 32, 63, 'honest', 1),
(699, 32, 131, 'stubble', 1),
(700, 32, 45, 'loudness', 1),
(701, 32, 80, 'disloyal', 1),
(702, 32, 112, 'aim', 1),
(703, 32, 147, 'slender', 1),
(704, 32, 137, 'aware', 0),
(705, 32, 114, 'motivate', 1),
(706, 32, 140, 'scar', 1),
(707, 33, 139, 'بدون ریش و بروت', 1);

-- --------------------------------------------------------

--
-- Stand-in structure for view `fa_en_list`
-- (See below for the actual view)
--
CREATE TABLE `fa_en_list` (
`word` varchar(100)
,`meaning` text
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `sem_book_words_count`
-- (See below for the actual view)
--
CREATE TABLE `sem_book_words_count` (
`sem` int(3)
,`book` varchar(30)
,`count_word` bigint(21)
);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_dictionary`
--

CREATE TABLE `tbl_dictionary` (
  `id` int(11) NOT NULL,
  `word` varchar(100) COLLATE utf8_persian_ci NOT NULL,
  `meaning` varchar(100) COLLATE utf8_persian_ci NOT NULL,
  `sem` int(3) NOT NULL,
  `book` varchar(30) COLLATE utf8_persian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `tbl_dictionary`
--

INSERT INTO `tbl_dictionary` (`id`, `word`, `meaning`, `sem`, `book`) VALUES
(20, 'spotlight', 'روشنی چراغ', 1, 'Speaking'),
(21, 'get toghether', 'با هم بودن', 1, 'Speaking'),
(22, 'rub', 'مالش دادن', 1, 'Speaking'),
(23, 'perhaps', 'شاید', 1, 'Speaking'),
(24, 'modest', 'فروتن', 1, 'Speaking'),
(25, 'arrogant', 'متکبر', 1, 'Speaking'),
(26, 'synonym', 'مترادف', 1, 'Speaking'),
(27, 'drawback', 'disadvantage', 1, 'Speaking'),
(28, 'regret', 'پشيمان شدن', 1, 'Speaking'),
(29, 'dismiss', 'رد', 1, 'Speaking'),
(30, 'tips', 'نکات', 1, 'Speaking'),
(31, 'gist', 'خلاصه', 1, 'Speaking'),
(32, 'afraid', 'ترسیدن', 1, 'Speaking'),
(33, 'experiment', 'آزمایشی', 1, 'Speaking'),
(34, 'argument', 'بحث و جدل', 1, 'Speaking'),
(35, 'angrily', 'با عصبانیت', 1, 'Speaking'),
(36, 'revise', 'تجدید نظر', 1, 'Speaking'),
(37, 'progress', 'پیش رفتن', 1, 'Speaking'),
(38, 'toss', 'انداختن', 1, 'Speaking'),
(39, 'syllable', 'هجا', 1, 'Speaking'),
(40, 'stressed', 'پریشان کردن', 1, 'Speaking'),
(41, 'instance', 'نمونه', 1, 'Speaking'),
(42, 'weather words', 'کلمات آب و هوا', 1, 'Speaking'),
(43, 'slang', 'عامیانه', 1, 'Speaking'),
(44, 'offensive', 'توهین آمیز', 1, 'Speaking'),
(45, 'loudness', 'صدای بلند', 1, 'Speaking'),
(46, 'emphasize', 'تاکید کنید', 1, 'Speaking'),
(47, 'appearance', 'ظاهر', 1, 'Speaking'),
(48, 'solid', 'جامد سخت', 1, 'Speaking'),
(49, 'stocky', 'چهار شانه', 1, 'Speaking'),
(50, 'pregnant', 'باردار', 1, 'Speaking'),
(51, 'expecting', 'منتظر', 1, 'Speaking'),
(52, 'roundish face', 'صورت گرد', 1, 'Speaking'),
(53, 'smooth', 'نازک', 1, 'Speaking'),
(54, 'tanned', 'برنزه', 1, 'Speaking'),
(55, 'wrinkles', 'چروک', 1, 'Speaking'),
(56, 'going grey', 'سفید شدن', 1, 'Speaking'),
(57, 'ambitious', 'بلند پروازانه', 1, 'Speaking'),
(58, 'self confident', 'اعتماد به نفس', 1, 'Speaking'),
(59, 'generous', 'سخاوتمندانه', 1, 'Speaking'),
(60, 'impatient', 'بی صبر', 1, 'Speaking'),
(61, 'cheerful', 'بشاش', 1, 'Speaking'),
(62, 'easy-going', 'اسان گیر', 1, 'Speaking'),
(63, 'honest', 'صادقانه', 1, 'Speaking'),
(64, 'tolerant', 'بردبار', 1, 'Speaking'),
(65, 'arrogant', 'متکبر', 1, 'Speaking'),
(66, 'aggressive', 'خشونت آمیز', 1, 'Speaking'),
(67, 'dull', 'خسته کن', 1, 'Speaking'),
(68, 'sense of humour', 'حس شوخ طبعی', 1, 'Speaking'),
(69, 'sensible', 'معقول', 1, 'Speaking'),
(70, 'mad', 'دیوانه', 1, 'Speaking'),
(71, 'stupid', 'احمق', 1, 'Speaking'),
(72, 'desire', 'میل', 1, 'Speaking'),
(73, 'sensibly', 'حساس', 1, 'Speaking'),
(74, 'dishonest', 'متقلب', 1, 'Speaking'),
(75, 'sociable', 'اجتماعی', 1, 'Speaking'),
(76, 'keep in touch', 'در تماس بودن', 1, 'Speaking'),
(77, 'make friend', 'دوست یابی', 1, 'Speaking'),
(78, 'get on well', 'ارتباطات خوب', 1, 'Speaking'),
(79, 'rely', 'قابل اعتماد', 1, 'Speaking'),
(80, 'disloyal', 'غیر قابل اعتماد', 1, 'Speaking'),
(81, 'company', 'همراهی', 1, 'Speaking'),
(82, 'realize', 'فهمیدن', 1, 'Speaking'),
(83, 'spilt up', 'جدا شدن', 1, 'Speaking'),
(84, 'row', 'جنگ', 1, 'Speaking'),
(85, 'wedding', 'عروسی', 1, 'Speaking'),
(86, 'funeral', 'مراسم خاکسپاری', 1, 'Speaking'),
(87, 'religious ceremony', 'مراسم مذهبی', 1, 'Speaking'),
(88, 'civil ceremony', 'مراسم غیر مذهبی', 1, 'Speaking'),
(89, 'groom', 'داماد', 1, 'Speaking'),
(90, 'best man', '', 1, 'Speaking'),
(91, 'bride', 'عروسی', 1, 'Speaking'),
(92, 'bridesmaids', '', 1, 'Speaking'),
(93, 'reception', 'پذیرش', 1, 'Speaking'),
(94, 'traditional', 'رسم', 1, 'Speaking'),
(95, 'make speeches', 'سخنرانی کردن', 1, 'Speaking'),
(96, 'drink a toast', 'به افتخار کسی چیزی خوردن', 1, 'Speaking'),
(97, 'anniversary', 'سالگرد', 1, 'Speaking'),
(98, 'temple', 'معبد', 1, 'Speaking'),
(99, 'graves', 'قبر', 1, 'Speaking'),
(100, 'gravestone', 'سنگ قبر', 1, 'Speaking'),
(101, 'mourners', 'عزاداران', 1, 'Speaking'),
(102, 'mourning', 'عزاداری', 1, 'Speaking'),
(103, 'coffin', 'تابوت', 1, 'Speaking'),
(104, 'die,death,dead', 'مردن', 1, 'Speaking'),
(105, 'widow', 'زن بیوه', 1, 'Speaking'),
(106, 'widower', 'مرد بیوه', 1, 'Speaking'),
(107, 'bury,burial', 'دفن کردن', 1, 'Speaking'),
(108, 'cremate,cremation', 'سوزاندن', 1, 'Speaking'),
(109, 'cemetery', 'جای که اجساد سوخته میشود', 1, 'Speaking'),
(110, 'will', 'وصیت نامه', 1, 'Speaking'),
(111, 'inherit', 'میراث', 1, 'Speaking'),
(112, 'aim', 'هدف', 1, 'Speaking'),
(113, 'enthusiastic', 'مشتاق', 1, 'Speaking'),
(114, 'motivate', 'ایجاد انگیزه', 1, 'Speaking'),
(115, 'express', 'بیان', 1, 'Speaking'),
(116, 'obvious', 'آشکار', 1, 'Speaking'),
(117, 'encouraging', 'تشویق', 1, 'Speaking'),
(118, 'aware', 'مطلع', 1, 'Speaking'),
(119, 'frustrating', 'خسته کننده، اذیت کننده', 1, 'Speaking'),
(120, 'fluent', 'روان', 1, 'Speaking'),
(121, 'relevant', 'مربوط', 1, 'Speaking'),
(122, 'appropriate', 'مناسب', 1, 'Speaking'),
(123, 'contain', 'حاوی', 1, 'Speaking'),
(124, 'scenes', 'صحنه های', 1, 'Speaking'),
(125, 'violence', 'خشونت', 1, 'Speaking'),
(126, 'learner', 'یادگیرنده', 1, 'Speaking'),
(127, 'wordpower', 'قدرت کلمه', 1, 'Speaking'),
(128, 'idiom', 'اصطلاح', 1, 'Speaking'),
(129, 'phrasal', 'عبارتی', 1, 'Speaking'),
(130, 'thick', 'غلیظ', 1, 'Speaking'),
(131, 'stubble', 'ته ریش', 1, 'Speaking'),
(132, 'dark skinned', 'پوست تیره', 1, 'Speaking'),
(133, 'pale skinned', 'رنگ پریده', 1, 'Speaking'),
(134, 'plump', 'چاق و چله', 1, 'Speaking'),
(135, 'fattish face', 'صورت گرد', 1, 'Speaking'),
(136, 'broad shoulder', 'شانه ای بزرگ', 1, 'Speaking'),
(137, 'well built', 'خوش اندام', 1, 'Speaking'),
(138, 'skinny', 'لاغر استخوانی', 1, 'Speaking'),
(139, 'clean shaven', 'بدون ریش و بروت', 1, 'Speaking'),
(140, 'scar', 'جای زخم', 1, 'Speaking'),
(141, 'going bald', 'در حال کل شدن', 1, 'Speaking'),
(142, 'receding', 'ریزش', 1, 'Speaking'),
(143, 'neater', 'پاک', 1, 'Speaking'),
(144, 'contact lense', 'لینز نمره', 1, 'Speaking'),
(145, 'surface', 'رنج بردن', 1, 'Speaking'),
(146, 'rough', 'خشن', 1, 'Speaking'),
(147, 'slender', '', 1, 'Speaking'),
(148, 'tidy', 'مرتب', 1, 'Speaking'),
(149, 'thrilled', 'هیجان زده', 1, 'Speaking'),
(150, 'furious', 'خشمگین', 1, 'Speaking'),
(151, 'astonished', 'متحیر', 1, 'Speaking'),
(152, 'terrified', 'وحشت زده', 1, 'Speaking'),
(153, 'miserable', 'بدبخت', 1, 'Speaking'),
(154, 'jealous', 'حسادت', 1, 'Speaking'),
(155, 'anxious', 'مشتاق', 1, 'Speaking'),
(156, 'upset', 'ناراحت', 1, 'Speaking'),
(157, 'took off', '', 1, 'Speaking'),
(158, 'delighted', 'خوشحالم', 1, 'Speaking'),
(159, 'amazed', 'شگفت زده شد', 1, 'Speaking'),
(160, 'emotionally', 'عاطفی', 1, 'Speaking'),
(161, 'frightened', 'وحشت زده', 1, 'Speaking'),
(162, 'scared stiff', 'ترسناک', 1, 'Speaking'),
(163, 'depressed', 'افسرده', 1, 'Speaking'),
(164, 'fed up', 'بیزار', 1, 'Speaking'),
(165, 'afraid', 'ترسیدن', 1, 'Speaking'),
(166, 'envious', 'حسادت', 1, 'Speaking'),
(167, 'absolutely', 'کاملا', 1, 'Speaking'),
(168, 'extreme', 'حد اکثر', 1, 'Speaking'),
(169, 'emotion', 'هیجانی', 1, 'Speaking'),
(170, 'sensitive', 'حساس', 1, 'Speaking'),
(171, 'moody', 'اخمو', 1, 'Speaking'),
(172, 'symphathetic', 'دلسوز همدرد', 1, 'Speaking'),
(173, 'supportive', 'حمایتی', 1, 'Speaking'),
(174, 'only child', 'تک بچه', 1, 'Speaking'),
(175, 'single parent family', 'یکی از والدین را دارد', 1, 'Speaking'),
(176, 'foster parent', 'پدر مادر رضایی', 1, 'Speaking'),
(177, 'adopted', 'به فرزندی گرفتن', 1, 'Speaking'),
(178, 'divorced', 'طلاق گرفتن', 1, 'Speaking'),
(179, 'brought up', 'بزرگ شدن', 1, 'Speaking'),
(180, 'half brother', 'برادر اندر', 1, 'Speaking'),
(181, 'royal', 'سلطنتی', 1, 'Speaking'),
(182, 'ancestors', 'اجداد', 1, 'Speaking'),
(183, 'immigrants', 'مهاجرین', 1, 'Speaking'),
(184, 'look like', 'به نظر رسیدن', 1, 'Speaking'),
(185, 'take after', 'مثل شخصیت کسی', 1, 'Speaking'),
(186, 'satellite', '', 1, 'Speaking'),
(187, 'approximately', 'تقریبا', 1, 'Speaking'),
(188, 'revolves', 'چرخیدن', 1, 'Speaking'),
(189, 'planets', 'سیارات', 1, 'Speaking'),
(190, 'solar system', 'منظومه شمسی', 1, 'Speaking'),
(191, 'space', 'فضا', 1, 'Speaking'),
(192, 'rocket', 'موشک', 1, 'Speaking'),
(193, 'seemed', 'به نظر می رسید', 1, 'Speaking'),
(194, 'far fetched', 'دور از انتظار', 1, 'Speaking'),
(195, 'gained', 'به دست آورد', 1, 'Speaking'),
(196, 'considerable', 'قابل توجه', 1, 'Speaking'),
(197, 'universe', 'جهان', 1, 'Speaking'),
(198, 'mars', 'مریخ', 1, 'Speaking'),
(199, 'explore', 'کاوش کنید', 1, 'Speaking'),
(200, 'surface', 'سطح', 1, 'Speaking'),
(201, 'experiments', 'آزمایشات', 1, 'Speaking'),
(202, 'discover', 'كشف كردن', 1, 'Speaking'),
(203, 'book', 'کتاب', 1, 'Listening'),
(204, 'dog', 'سگ', 1, 'Listening');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `user_id` int(11) NOT NULL,
  `roll_number` int(11) NOT NULL,
  `type` int(1) NOT NULL,
  `name` varchar(100) COLLATE utf8_persian_ci NOT NULL,
  `father_name` varchar(100) COLLATE utf8_persian_ci NOT NULL,
  `last_name` varchar(100) COLLATE utf8_persian_ci NOT NULL,
  `username` varchar(20) COLLATE utf8_persian_ci NOT NULL,
  `password` varchar(20) COLLATE utf8_persian_ci NOT NULL,
  `active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `roll_number`, `type`, `name`, `father_name`, `last_name`, `username`, `password`, `active`) VALUES
(1, 11, 1, 'shafi', 'a.Qadir', 'sediqi', 'shafi', 'jann', 1),
(2, 12, 1, 'ekram', 'a.Qadir', 'sediqi', 'ekram', 'jannn', 1),
(3, 13, 1, 'ashraf', 'saeed', 'mohammady', 'ashraf', 'ok', 1);

-- --------------------------------------------------------

--
-- Stand-in structure for view `word_meaning`
-- (See below for the actual view)
--
CREATE TABLE `word_meaning` (
`id` text
,`word` varchar(100)
,`meaning` text
,`sem` text
,`book` text
);

-- --------------------------------------------------------

--
-- Structure for view `eachstudentscore`
--
DROP TABLE IF EXISTS `eachstudentscore`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `eachstudentscore`  AS  select `a`.`user_name` AS `user_name`,`a`.`last_name` AS `last_name`,round((sum(`a`.`average`) / count(`a`.`id`)),0) AS `average` from `exam_list_word_count` `a` group by `a`.`user_id` ;

-- --------------------------------------------------------

--
-- Structure for view `exam_list_word_count`
--
DROP TABLE IF EXISTS `exam_list_word_count`;

CREATE ALGORITHM=TEMPTABLE DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `exam_list_word_count`  AS  select `b`.`name` AS `user_name`,`b`.`last_name` AS `last_name`,`a`.`id` AS `id`,`a`.`name` AS `name`,`a`.`sem` AS `sem`,`a`.`book` AS `book`,`a`.`en_fa_fa_en` AS `en_fa_fa_en`,`a`.`user_id` AS `user_id`,(select count(`tbl_dictionary`.`id`) from `tbl_dictionary` where ((`tbl_dictionary`.`sem` = `a`.`sem`) and (`tbl_dictionary`.`book` = `a`.`book`))) AS `total_record`,(select count(`exam_record`.`record_id`) from `exam_record` where (`exam_record`.`list_id` = `a`.`id`)) AS `passed_record`,(select count(`exam_record`.`record_id`) from `exam_record` where ((`exam_record`.`list_id` = `a`.`id`) and (`exam_record`.`true_false` = 1))) AS `success_record`,(select count(`exam_record`.`record_id`) from `exam_record` where ((`exam_record`.`list_id` = `a`.`id`) and (`exam_record`.`true_false` = 0))) AS `faild_record`,round((((select count(`exam_record`.`record_id`) from `exam_record` where ((`exam_record`.`list_id` = `a`.`id`) and (`exam_record`.`true_false` = 1))) * 100) / (select count(`tbl_dictionary`.`id`) from `tbl_dictionary` where ((`tbl_dictionary`.`sem` = `a`.`sem`) and (`tbl_dictionary`.`book` = `a`.`book`)))),0) AS `average` from (`exam_list` `a` left join `tbl_user` `b` on((`a`.`user_id` = `b`.`user_id`))) ;

-- --------------------------------------------------------

--
-- Structure for view `fa_en_list`
--
DROP TABLE IF EXISTS `fa_en_list`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `fa_en_list`  AS  select `tbl_dictionary`.`meaning` AS `word`,group_concat(`tbl_dictionary`.`word` separator '  ') AS `meaning` from `tbl_dictionary` group by `tbl_dictionary`.`meaning` ;

-- --------------------------------------------------------

--
-- Structure for view `sem_book_words_count`
--
DROP TABLE IF EXISTS `sem_book_words_count`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `sem_book_words_count`  AS  select `tbl_dictionary`.`sem` AS `sem`,`tbl_dictionary`.`book` AS `book`,count(`tbl_dictionary`.`id`) AS `count_word` from `tbl_dictionary` group by `tbl_dictionary`.`sem`,`tbl_dictionary`.`book` ;

-- --------------------------------------------------------

--
-- Structure for view `word_meaning`
--
DROP TABLE IF EXISTS `word_meaning`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `word_meaning`  AS  select group_concat(`tbl_dictionary`.`id` separator '  ') AS `id`,`tbl_dictionary`.`word` AS `word`,group_concat(`tbl_dictionary`.`meaning` separator '  ') AS `meaning`,group_concat(`tbl_dictionary`.`sem` separator '  ') AS `sem`,group_concat(`tbl_dictionary`.`book` separator '  ') AS `book` from `tbl_dictionary` group by `tbl_dictionary`.`word` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `exam_list`
--
ALTER TABLE `exam_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `exam_record`
--
ALTER TABLE `exam_record`
  ADD PRIMARY KEY (`record_id`),
  ADD KEY `list_id` (`list_id`),
  ADD KEY `word` (`word`),
  ADD KEY `word_2` (`word`);

--
-- Indexes for table `tbl_dictionary`
--
ALTER TABLE `tbl_dictionary`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `exam_list`
--
ALTER TABLE `exam_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `exam_record`
--
ALTER TABLE `exam_record`
  MODIFY `record_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=708;
--
-- AUTO_INCREMENT for table `tbl_dictionary`
--
ALTER TABLE `tbl_dictionary`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=205;
--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `exam_record`
--
ALTER TABLE `exam_record`
  ADD CONSTRAINT `exam_record_ibfk_1` FOREIGN KEY (`list_id`) REFERENCES `exam_list` (`id`),
  ADD CONSTRAINT `exam_record_ibfk_2` FOREIGN KEY (`word`) REFERENCES `tbl_dictionary` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
