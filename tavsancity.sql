-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 22 Ara 2024, 15:50:22
-- Sunucu sürümü: 10.4.32-MariaDB
-- PHP Sürümü: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `tavsancity`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `admin` varchar(64) NOT NULL,
  `username` varchar(64) NOT NULL,
  `package` varchar(32) NOT NULL,
  `date` int(11) NOT NULL,
  `ua` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `errors`
--

CREATE TABLE `errors` (
  `id` int(11) NOT NULL,
  `username` varchar(64) NOT NULL,
  `requestedURL` varchar(256) NOT NULL,
  `statusCode` int(4) NOT NULL,
  `date` int(24) NOT NULL,
  `ip` varchar(24) NOT NULL,
  `userAgent` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `errors`
--

INSERT INTO `errors` (`id`, `username`, `requestedURL`, `statusCode`, `date`, `ip`, `userAgent`) VALUES
(1, 'booster123', 'http://localhost/10mgsmtc.jsp', 404, 1733518226, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(2, 'booster123', 'http://localhost/10mgsmtc.jsp', 404, 1733518290, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(3, 'booster123', 'http://localhost/eksi18vesika.jsp', 404, 1733519332, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(4, 'booster123', 'http://localhost/eksi18vesika.jsp', 404, 1733519335, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(5, 'booster123', 'https://localhost/pages/index.jsp', 404, 1733520088, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(6, 'booster123', 'https://localhost/favicon.ico', 404, 1733520088, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(7, 'booster123', 'https://localhost/favicon.ico', 404, 1733520091, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(8, 'booster123', 'https://localhost/favicon.ico', 404, 1733520093, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(9, 'booster123', 'https://localhost/assets/plugins/global/plugins.bundle.js', 404, 1733520224, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(10, 'booster123', 'https://localhost/assets/js/scripts.bundle.js', 404, 1733520224, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(11, 'booster123', 'https://localhost/assets/plugins/custom/fullcalendar/fullcalendar.bundle.js', 404, 1733520225, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(12, 'booster123', 'https://localhost/favicon.ico', 404, 1733520225, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(13, 'booster123', 'https://localhost/favicon.ico', 404, 1733520226, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(14, 'booster123', 'https://localhost/assets/plugins/global/plugins.bundle.js', 404, 1733520230, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(15, 'booster123', 'https://localhost/assets/js/scripts.bundle.js', 404, 1733520230, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(16, 'booster123', 'https://localhost/assets/plugins/custom/fullcalendar/fullcalendar.bundle.js', 404, 1733520230, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(17, 'booster123', 'https://localhost/favicon.ico', 404, 1733520230, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(18, 'booster123', 'https://localhost/assets/plugins/global/plugins.bundle.js', 404, 1733520238, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(19, 'booster123', 'https://localhost/assets/js/scripts.bundle.js', 404, 1733520238, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(20, 'booster123', 'https://localhost/assets/plugins/custom/fullcalendar/fullcalendar.bundle.js', 404, 1733520238, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(21, 'booster123', 'https://localhost/favicon.ico', 404, 1733520238, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(22, 'booster123', 'https://localhost/assets/js/scripts.bundle.js', 404, 1733520238, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(23, 'booster123', 'https://localhost/assets/plugins/global/plugins.bundle.js', 404, 1733520238, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(24, 'booster123', 'https://localhost/assets/plugins/custom/fullcalendar/fullcalendar.bundle.js', 404, 1733520238, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(25, 'booster123', 'https://localhost/favicon.ico', 404, 1733520239, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(26, 'booster123', 'https://localhost/favicon.ico', 404, 1733520240, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(27, 'booster123', 'https://localhost/favicon.ico', 404, 1733520268, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(28, 'booster123', 'https://localhost/favicon.ico', 404, 1733520269, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(29, 'booster123', 'https://localhost/favicon.ico', 404, 1733520271, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(30, 'booster123', 'https://localhost/favicon.ico', 404, 1733520275, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(31, 'booster123', 'https://localhost/favicon.ico', 404, 1733520276, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(32, 'booster123', 'https://localhost/favicon.ico', 404, 1733520279, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(33, 'REXIS', 'http://localhost/favicon.ico', 404, 1733563432, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(34, 'REXIS', 'http://localhost/favicon.ico', 404, 1733563438, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(35, 'REXIS', 'http://localhost/favicon.ico', 404, 1733563439, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(36, 'REXIS', 'http://localhost/favicon.ico', 404, 1733563441, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(37, 'REXIS', 'http://localhost/favicon.ico', 404, 1733563446, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(38, 'REXIS', 'http://localhost/favicon.ico', 404, 1733563449, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(39, 'REXIS', 'http://localhost/favicon.ico', 404, 1733563450, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(40, 'REXIS', 'http://localhost/favicon.ico', 404, 1733563468, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(41, 'REXIS', 'http://localhost/favicon.ico', 404, 1733563499, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(42, 'REXIS', 'http://localhost/favicon.ico', 404, 1733563505, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(43, 'REXIS', 'http://localhost/favicon.ico', 404, 1733563507, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(44, 'REXIS', 'http://localhost/favicon.ico', 404, 1733563513, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(45, 'REXIS', 'http://localhost/favicon.ico', 404, 1733563532, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(46, 'REXIS', 'http://localhost/favicon.ico', 404, 1733563548, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(47, 'REXIS', 'http://localhost/favicon.ico', 404, 1733563548, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(48, 'REXIS', 'http://localhost/favicon.ico', 404, 1733563548, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(49, 'REXIS', 'http://localhost/favicon.ico', 404, 1733563552, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(50, 'REXIS', 'http://localhost/favicon.ico', 404, 1733563560, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(51, 'REXIS', 'http://localhost/favicon.ico', 404, 1733563568, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(52, 'REXIS', 'http://localhost/favicon.ico', 404, 1733563569, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(53, 'REXIS', 'http://localhost/favicon.ico', 404, 1733563575, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(54, 'REXIS', 'http://localhost/favicon.ico', 404, 1733563613, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(55, 'REXIS', 'http://localhost/favicon.ico', 404, 1733563614, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(56, 'REXIS', 'http://localhost/favicon.ico', 404, 1733563805, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(57, 'REXIS', 'http://localhost/favicon.ico', 404, 1733563833, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(58, 'REXIS', 'http://localhost/favicon.ico', 404, 1733563839, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(59, 'REXIS', 'http://localhost/favicon.ico', 404, 1733563941, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(60, 'REXIS', 'http://localhost/favicon.ico', 404, 1733563942, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(61, 'REXIS', 'http://localhost/favicon.ico', 404, 1733563944, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(62, 'REXIS', 'http://localhost/js/jquery.min.js', 404, 1733564462, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(63, 'REXIS', 'http://localhost/sweetalert2.all.min.js', 404, 1733564462, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(64, 'booster12345', 'http://localhost/sweetalert2.all.min.js', 404, 1733564869, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(65, 'booster12345', 'http://localhost/js/jquery.min.js', 404, 1733564869, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(66, 'booster123', 'http://localhost/js/jquery.min.js', 404, 1733598471, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(67, 'booster123', 'http://localhost/sweetalert2.all.min.js', 404, 1733598471, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(68, 'booster123@gmail.com', 'http://localhost/js/jquery.min.js', 404, 1734286001, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(69, 'booster123@gmail.com', 'http://localhost/sweetalert2.all.min.js', 404, 1734286001, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(70, 'booster123@gmail.com', 'http://localhost/sweetalert2.all.min.js', 404, 1734291870, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(71, 'booster123@gmail.com', 'http://localhost/js/jquery.min.js', 404, 1734291870, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(72, 'booster123@gmail.com', 'http://localhost/assets/plugins/custom/datatables/datatables.bundle.css', 404, 1734292618, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(73, 'booster123@gmail.com', 'http://localhost/assets/plugins/custom/datatables/datatables.bundle.js', 404, 1734292618, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(74, 'booster123@gmail.com', 'http://localhost/assets/plugins/global/plugins.bundle.js', 404, 1734292618, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(75, 'booster123@gmail.com', 'http://localhost/assets/js/widgets.bundle.js', 404, 1734292618, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(76, 'booster123@gmail.com', 'http://localhost/assets/js/scripts.bundle.js', 404, 1734292618, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(77, 'booster123@gmail.com', 'http://localhost/assets/plugins/custom/fullcalendar/fullcalendar.bundle.js', 404, 1734292618, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(78, 'booster123@gmail.com', 'http://localhost/assets/js/custom/widgets.js', 404, 1734292618, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(79, 'booster123@gmail.com', 'http://localhost/assets/js/custom/apps/chat/chat.js', 404, 1734292618, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(80, 'booster123@gmail.com', 'http://localhost/assets/js/custom/utilities/modals/users-search.js', 404, 1734292618, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(81, 'booster123@gmail.com', 'http://localhost/assets/plugins/custom/datatables/datatables.bundle.js', 404, 1734292618, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(82, 'booster123@gmail.com', 'http://localhost/assets/plugins/global/plugins.bundle.js', 404, 1734292622, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(83, 'booster123@gmail.com', 'http://localhost/assets/plugins/custom/datatables/datatables.bundle.js', 404, 1734292622, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(84, 'booster123@gmail.com', 'http://localhost/assets/plugins/custom/fullcalendar/fullcalendar.bundle.js', 404, 1734292622, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(85, 'booster123@gmail.com', 'http://localhost/assets/js/widgets.bundle.js', 404, 1734292622, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(86, 'booster123@gmail.com', 'http://localhost/assets/js/scripts.bundle.js', 404, 1734292622, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(87, 'booster123@gmail.com', 'http://localhost/assets/plugins/custom/datatables/datatables.bundle.css', 404, 1734292622, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(88, 'booster123@gmail.com', 'http://localhost/assets/js/custom/widgets.js', 404, 1734292622, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(89, 'booster123@gmail.com', 'http://localhost/assets/js/custom/apps/chat/chat.js', 404, 1734292622, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(90, 'booster123@gmail.com', 'http://localhost/assets/js/custom/utilities/modals/users-search.js', 404, 1734292622, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(91, 'booster123@gmail.com', 'http://localhost/assets/plugins/custom/datatables/datatables.bundle.js', 404, 1734292622, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(92, 'booster123@gmail.com', 'http://localhost/assets/plugins/custom/datatables/datatables.bundle.js', 404, 1734292624, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(93, 'booster123@gmail.com', 'http://localhost/assets/plugins/custom/datatables/datatables.bundle.css', 404, 1734292624, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(94, 'booster123@gmail.com', 'http://localhost/assets/plugins/global/plugins.bundle.js', 404, 1734292624, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(95, 'booster123@gmail.com', 'http://localhost/assets/js/scripts.bundle.js', 404, 1734292624, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(96, 'booster123@gmail.com', 'http://localhost/assets/js/widgets.bundle.js', 404, 1734292624, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(97, 'booster123@gmail.com', 'http://localhost/assets/plugins/custom/fullcalendar/fullcalendar.bundle.js', 404, 1734292624, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(98, 'booster123@gmail.com', 'http://localhost/assets/js/custom/widgets.js', 404, 1734292624, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(99, 'booster123@gmail.com', 'http://localhost/assets/js/custom/apps/chat/chat.js', 404, 1734292624, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(100, 'booster123@gmail.com', 'http://localhost/assets/js/custom/utilities/modals/users-search.js', 404, 1734292624, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(101, 'booster123@gmail.com', 'http://localhost/assets/plugins/custom/datatables/datatables.bundle.js', 404, 1734292624, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(102, 'booster123@gmail.com', 'http://localhost/adsoyadsorgu', 404, 1734292633, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(103, 'booster123@gmail.com', 'http://localhost/assets/plugins/custom/datatables/datatables.bundle.css', 404, 1734292703, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(104, 'booster123@gmail.com', 'http://localhost/assets/plugins/custom/datatables/datatables.bundle.js', 404, 1734292703, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(105, 'booster123@gmail.com', 'http://localhost/assets/plugins/global/plugins.bundle.js', 404, 1734292703, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(106, 'booster123@gmail.com', 'http://localhost/assets/js/widgets.bundle.js', 404, 1734292703, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(107, 'booster123@gmail.com', 'http://localhost/assets/plugins/custom/fullcalendar/fullcalendar.bundle.js', 404, 1734292703, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(108, 'booster123@gmail.com', 'http://localhost/assets/js/scripts.bundle.js', 404, 1734292703, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(109, 'booster123@gmail.com', 'http://localhost/assets/js/custom/widgets.js', 404, 1734292703, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(110, 'booster123@gmail.com', 'http://localhost/assets/js/custom/apps/chat/chat.js', 404, 1734292703, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(111, 'booster123@gmail.com', 'http://localhost/assets/js/custom/utilities/modals/users-search.js', 404, 1734292703, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(112, 'booster123@gmail.com', 'http://localhost/assets/plugins/custom/datatables/datatables.bundle.js', 404, 1734292704, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(113, 'booster123@gmail.com', 'http://localhost/assets/plugins/custom/datatables/datatables.bundle.css', 404, 1734292704, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(114, 'booster123@gmail.com', 'http://localhost/assets/plugins/custom/fullcalendar/fullcalendar.bundle.js', 404, 1734292704, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(115, 'booster123@gmail.com', 'http://localhost/assets/plugins/global/plugins.bundle.js', 404, 1734292704, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(116, 'booster123@gmail.com', 'http://localhost/assets/js/widgets.bundle.js', 404, 1734292704, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(117, 'booster123@gmail.com', 'http://localhost/assets/js/scripts.bundle.js', 404, 1734292704, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(118, 'booster123@gmail.com', 'http://localhost/assets/plugins/custom/datatables/datatables.bundle.js', 404, 1734292704, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(119, 'booster123@gmail.com', 'http://localhost/assets/js/custom/widgets.js', 404, 1734292704, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(120, 'booster123@gmail.com', 'http://localhost/assets/js/custom/apps/chat/chat.js', 404, 1734292704, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(121, 'booster123@gmail.com', 'http://localhost/assets/js/custom/utilities/modals/users-search.js', 404, 1734292704, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(122, 'booster123@gmail.com', 'http://localhost/assets/plugins/custom/datatables/datatables.bundle.js', 404, 1734292705, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(123, 'booster123@gmail.com', 'http://localhost/sweetalert2.all.min.js', 404, 1734292706, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(124, 'booster123@gmail.com', 'http://localhost/js/jquery.min.js', 404, 1734292706, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(125, 'booster123@gmail.com', 'http://localhost/sweetalert2.all.min.js', 404, 1734293506, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(126, 'booster123@gmail.com', 'http://localhost/js/jquery.min.js', 404, 1734293506, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(127, 'booster12345', 'http://localhost/js/jquery.min.js', 404, 1734814141, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(128, 'booster12345', 'http://localhost/sweetalert2.all.min.js', 404, 1734814141, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(129, 'booster12345', 'http://localhost/js/jquery.min.js', 404, 1734814864, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(130, 'booster12345', 'http://localhost/sweetalert2.all.min.js', 404, 1734814864, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(131, 'booster12345', 'http://localhost/js/jquery.min.js', 404, 1734814903, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(132, 'booster12345', 'http://localhost/sweetalert2.all.min.js', 404, 1734814903, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(133, 'booster12345', 'http://localhost/sweetalert2.all.min.js', 404, 1734815782, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(134, 'booster12345', 'http://localhost/js/jquery.min.js', 404, 1734815782, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(135, 'booster12345', 'http://localhost/js/jquery.min.js', 404, 1734875408, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(136, 'booster12345', 'http://localhost/sweetalert2.all.min.js', 404, 1734875408, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(137, 'booster12345', 'http://localhost/sweetalert2.all.min.js', 404, 1734875415, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(138, 'booster12345', 'http://localhost/js/jquery.min.js', 404, 1734875415, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(139, 'booster12345', 'http://localhost/sweetalert2.all.min.js', 404, 1734875457, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(140, 'booster12345', 'http://localhost/js/jquery.min.js', 404, 1734875457, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(141, 'booster12345', 'http://localhost/js/jquery.min.js', 404, 1734875587, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(142, 'booster12345', 'http://localhost/sweetalert2.all.min.js', 404, 1734875587, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(143, 'booster12345', 'http://localhost/js/jquery.min.js', 404, 1734875598, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(144, 'booster12345', 'http://localhost/sweetalert2.all.min.js', 404, 1734875598, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(145, 'booster12345', 'http://localhost/js/jquery.min.js', 404, 1734875642, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(146, 'booster12345', 'http://localhost/sweetalert2.all.min.js', 404, 1734875642, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(147, 'booster12345', 'http://localhost/js/jquery.min.js', 404, 1734875941, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(148, 'booster12345', 'http://localhost/sweetalert2.all.min.js', 404, 1734875941, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(149, 'booster12345', 'http://localhost/js/jquery.min.js', 404, 1734876031, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(150, 'booster12345', 'http://localhost/sweetalert2.all.min.js', 404, 1734876031, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(151, 'booster12345', 'http://localhost/js/jquery.min.js', 404, 1734876081, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(152, 'booster12345', 'http://localhost/sweetalert2.all.min.js', 404, 1734876081, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(153, 'booster12345', 'http://localhost/js/jquery.min.js', 404, 1734876340, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(154, 'booster12345', 'http://localhost/sweetalert2.all.min.js', 404, 1734876340, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(155, 'booster12345', 'http://localhost/js/jquery.min.js', 404, 1734877099, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(156, 'booster12345', 'http://localhost/sweetalert2.all.min.js', 404, 1734877099, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(157, 'booster12345', 'http://localhost/js/jquery.min.js', 404, 1734877104, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(158, 'booster12345', 'http://localhost/sweetalert2.all.min.js', 404, 1734877104, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(159, 'booster12345', 'http://localhost/js/jquery.min.js', 404, 1734877131, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(160, 'booster12345', 'http://localhost/sweetalert2.all.min.js', 404, 1734877131, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(161, 'booster12345', 'http://localhost/js/jquery.min.js', 404, 1734877388, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(162, 'booster12345', 'http://localhost/sweetalert2.all.min.js', 404, 1734877388, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(163, 'booster12345', 'http://localhost/js/jquery.min.js', 404, 1734877589, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(164, 'booster12345', 'http://localhost/sweetalert2.all.min.js', 404, 1734877589, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(165, 'booster12345', 'http://localhost/js/jquery.min.js', 404, 1734877595, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(166, 'booster12345', 'http://localhost/sweetalert2.all.min.js', 404, 1734877595, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(167, 'booster12345', 'http://localhost/js/jquery.min.js', 404, 1734877634, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(168, 'booster12345', 'http://localhost/sweetalert2.all.min.js', 404, 1734877634, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(169, 'booster12345', 'http://localhost/assets/media/photos/', 404, 1734877736, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(170, 'booster12345', 'http://localhost/js/jquery.min.js', 404, 1734877736, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(171, 'booster12345', 'http://localhost/sweetalert2.all.min.js', 404, 1734877737, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(172, 'booster12345', 'http://localhost/js/jquery.min.js', 404, 1734877753, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(173, 'booster12345', 'http://localhost/sweetalert2.all.min.js', 404, 1734877753, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(174, 'booster12345', 'http://localhost/assets/', 404, 1734877753, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(175, 'booster12345', 'http://localhost/js/jquery.min.js', 404, 1734877790, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(176, 'booster12345', 'http://localhost/sweetalert2.all.min.js', 404, 1734877790, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(177, 'booster12345', 'http://localhost/js/jquery.min.js', 404, 1734877935, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(178, 'booster12345', 'http://localhost/sweetalert2.all.min.js', 404, 1734877935, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(179, 'booster12345', 'http://localhost/js/jquery.min.js', 404, 1734877946, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(180, 'booster12345', 'http://localhost/sweetalert2.all.min.js', 404, 1734877946, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(181, 'booster12345', 'http://localhost/js/jquery.min.js', 404, 1734877989, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(182, 'booster12345', 'http://localhost/sweetalert2.all.min.js', 404, 1734877989, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `logins`
--

CREATE TABLE `logins` (
  `id` int(11) NOT NULL,
  `username` varchar(64) NOT NULL,
  `validateToken` varchar(64) NOT NULL,
  `ip` varchar(64) NOT NULL,
  `date` int(24) NOT NULL,
  `userAgent` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `logins`
--

INSERT INTO `logins` (`id`, `username`, `validateToken`, `ip`, `date`, `userAgent`) VALUES
(1, 'REXIS', '994909d2', ':.**', 1733517556, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(2, 'booster123', '988009ca', ':.**', 1733517620, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(3, 'booster123', '999609d5', ':.**', 1733519197, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(4, 'REXIS', '98b709cc', ':.**', 1733563432, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(5, 'booster12345', '9a3c09db', ':.**', 1733564869, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(6, 'booster123', '99d009d6', ':.**', 1733598470, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(7, 'booster123@gmail.com', '981e09c6', ':.**', 1734286000, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(8, 'booster123@gmail.com', '9a0409d9', ':.**', 1734291869, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(9, 'booster123@gmail.com', '98eb09ce', ':.**', 1734293505, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(10, 'booster12345', '986b09c9', ':.**', 1734814141, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(11, 'booster12345', '999109d4', ':.**', 1734815781, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(12, 'booster12345', '99b409d5', ':.**', 1734875407, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(13, 'booster12345', '9a8309dd', ':.**', 1734877098, 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `logs`
--

CREATE TABLE `logs` (
  `id` int(11) NOT NULL,
  `username` varchar(64) NOT NULL,
  `query` varchar(64) NOT NULL,
  `token` varchar(64) NOT NULL,
  `validateToken` varchar(64) NOT NULL,
  `ip` varchar(24) NOT NULL,
  `processAction` varchar(48) NOT NULL,
  `processDate` int(24) NOT NULL,
  `userAgent` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `useractions`
--

CREATE TABLE `useractions` (
  `id` int(11) NOT NULL,
  `username` varchar(64) NOT NULL,
  `validateToken` varchar(24) NOT NULL,
  `page` varchar(256) NOT NULL,
  `date` int(24) NOT NULL,
  `ip` varchar(32) NOT NULL,
  `userAgent` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `useractions`
--

INSERT INTO `useractions` (`id`, `username`, `validateToken`, `page`, `date`, `ip`, `userAgent`) VALUES
(1, 'REXIS', 'b6160ab1', 'dashboard.jsp', 1733517556, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(2, 'REXIS', 'b6160ab1', 'paket-sil.jsp', 1733517572, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(3, 'booster123', 'b5350aa9', 'dashboard.jsp', 1733517620, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(4, 'booster123', 'b5350aa9', 'dashboard.jsp', 1733517703, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(5, 'booster123', 'b5350aa9', 'adsoyadv1.jsp', 1733517706, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(6, 'booster123', 'b5350aa9', 'adsoyadv2.jsp', 1733517708, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(7, 'booster123', 'b5350aa9', 'adsoyadv3.jsp', 1733517709, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(8, 'booster123', 'b5350aa9', '25msorguadsoyad.jsp', 1733517710, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(9, 'booster123', 'b5350aa9', 'tcsorguv1.jsp', 1733517713, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(10, 'booster123', 'b5350aa9', 'tcsorguv1.jsp', 1733518171, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(11, 'booster123', 'b5350aa9', '135mtcgsm.jsp', 1733518211, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(12, 'booster123', 'b5350aa9', '135mtcgsm.jsp', 1733518223, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(13, 'booster123', 'b5350aa9', 'error.jsp', 1733518226, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(14, 'booster123', 'b5350aa9', '135mtcgsm.jsp', 1733518228, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(15, 'booster123', 'b5350aa9', '135mtcgsm.jsp', 1733518287, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(16, 'booster123', 'b5350aa9', 'error.jsp', 1733518290, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(17, 'booster123', 'b5350aa9', '135mtcgsm.jsp', 1733518291, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(18, 'booster123', 'b5350aa9', '135mtcgsm.jsp', 1733518305, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(19, 'booster123', 'b5350aa9', 'dashboard.jsp', 1733518379, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(20, 'booster123', 'b5350aa9', 'dashboard.jsp', 1733518399, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(21, 'booster123', 'b5350aa9', 'dashboard.jsp', 1733518410, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(22, 'booster123', 'b5350aa9', 'dashboard.jsp', 1733518419, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(23, 'booster123', 'b5350aa9', '135mtcgsm.jsp', 1733518424, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(24, 'booster123', 'b5350aa9', '135mtcgsm.jsp', 1733518452, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(25, 'booster123', 'b5350aa9', '135mtcgsm.jsp', 1733518461, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(26, 'booster123', 'b5350aa9', '135mtcgsm.jsp', 1733518467, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(27, 'booster123', 'b5350aa9', 'tcsorgu2015.jsp', 1733518475, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(28, 'booster123', 'b5350aa9', 'tcsorgu2015.jsp', 1733518515, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(29, 'booster123', 'b5350aa9', 'dashboard.jsp', 1733518518, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(30, 'booster123', 'b5350aa9', 'torunsorgu.jsp', 1733518521, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(31, 'booster123', 'b5350aa9', 'dashboard.jsp', 1733518523, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(32, 'booster123', 'b5350aa9', 'sicil.jsp', 1733518525, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(33, 'booster123', 'b5350aa9', 'sicil.jsp', 1733518540, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(34, 'booster123', 'b5350aa9', 'sicil.jsp', 1733518567, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(35, 'booster123', 'b5350aa9', 'sicil.jsp', 1733518596, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(36, 'booster123', 'b5350aa9', 'sicil.jsp', 1733518614, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(37, 'booster123', 'b5350aa9', 'sicil.jsp', 1733518626, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(38, 'booster123', 'b5350aa9', 'dashboard.jsp', 1733518627, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(39, 'booster123', '73bf08a6', 'dashboard.jsp', 1733519189, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(40, 'booster123', 'b66c0ab4', 'dashboard.jsp', 1733519197, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(41, 'booster123', 'b66c0ab4', 'adsoyadv1.jsp', 1733519201, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(42, 'booster123', 'b66c0ab4', 'adsoyadv1.jsp', 1733519203, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(43, 'booster123', 'b66c0ab4', 'adsoyadv1.jsp', 1733519211, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(44, 'booster123', 'b66c0ab4', '25msorguadsoyad.jsp', 1733519215, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(45, 'booster123', 'b66c0ab4', 'adsoyadv2.jsp', 1733519266, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(46, 'booster123', 'b66c0ab4', 'adsoyadv3.jsp', 1733519269, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(47, 'booster123', 'b66c0ab4', 'adsoyadv1.jsp', 1733519273, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(48, 'booster123', 'b66c0ab4', 'adsoyadv2.jsp', 1733519274, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(49, 'booster123', 'b66c0ab4', 'adsoyadv3.jsp', 1733519275, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(50, 'booster123', 'b66c0ab4', 'adsoyadv3.jsp', 1733519285, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(51, 'booster123', 'b66c0ab4', 'tcsorguv1.jsp', 1733519288, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(52, 'booster123', 'b66c0ab4', 'tcsorguv2.jsp', 1733519293, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(53, 'booster123', 'b66c0ab4', 'tcsorguv1.jsp', 1733519303, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(54, 'booster123', 'b66c0ab4', 'tcsorguv1.jsp', 1733519304, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(55, 'booster123', 'b66c0ab4', 'tcsorguv1.jsp', 1733519318, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(56, 'booster123', 'b66c0ab4', 'adsoyadv1.jsp', 1733519319, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(57, 'booster123', 'b66c0ab4', 'adsoyadv1.jsp', 1733519328, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(58, 'booster123', 'b66c0ab4', 'dashboard.jsp', 1733519330, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(59, 'booster123', 'b66c0ab4', 'error.jsp', 1733519332, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(60, 'booster123', 'b66c0ab4', 'dashboard.jsp', 1733519334, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(61, 'booster123', 'b66c0ab4', 'error.jsp', 1733519335, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(62, 'booster123', 'b66c0ab4', 'dashboard.jsp', 1733519336, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(63, 'booster123', 'b66c0ab4', 'avea.jsp', 1733519337, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(64, 'booster123', 'b66c0ab4', 'avea.jsp', 1733519341, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(65, 'booster123', 'b66c0ab4', 'avea.jsp', 1733519345, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(66, 'booster123', 'b66c0ab4', 'adressorgu2015.jsp', 1733519347, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(67, 'booster123', 'b66c0ab4', 'adressorgu53m.jsp', 1733519350, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(68, 'booster123', 'b66c0ab4', 'adressorgu53m.jsp', 1733519383, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(69, 'booster123', 'b66c0ab4', 'adressorgu2015.jsp', 1733519392, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(70, 'booster123', 'b66c0ab4', 'adressorgu2015.jsp', 1733519430, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(71, 'booster123', 'b66c0ab4', 'adressorgu2015.jsp', 1733519435, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(72, 'booster123', 'b66c0ab4', 'adressorgu2015.jsp', 1733519460, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(73, 'booster123', 'b66c0ab4', 'adressorgu2015.jsp', 1733519481, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(74, 'booster123', 'b66c0ab4', 'ailesorgu.jsp', 1733519483, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(75, 'booster123', 'b66c0ab4', 'adressorgu2015.jsp', 1733519491, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(76, 'booster123', 'b66c0ab4', 'ailesorgu.jsp', 1733519497, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(77, 'booster123', 'b66c0ab4', 'adressorgu2015.jsp', 1733519498, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(78, 'booster123', 'b66c0ab4', 'soyagaci.jsp', 1733519499, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(79, 'booster123', 'b66c0ab4', 'soyagaci.jsp', 1733519501, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(80, 'booster123', 'b66c0ab4', 'soyagaci.jsp', 1733519501, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(81, 'booster123', 'b66c0ab4', 'soyagaci.jsp', 1733519503, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(82, 'booster123', 'b66c0ab4', 'adressorgu2015.jsp', 1733519507, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(83, 'booster123', 'b66c0ab4', 'sulalesorgu.jsp', 1733519509, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(84, 'booster123', 'b66c0ab4', 'adressorgu2015.jsp', 1733519579, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(85, 'booster123', 'b66c0ab4', 'adressorgu2015.jsp', 1733519582, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(86, 'booster123', 'b66c0ab4', 'adressorgu53m.jsp', 1733519583, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(87, 'booster123', 'b66c0ab4', 'kardessorgu.jsp', 1733519585, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(88, 'booster123', 'b66c0ab4', 'adressorgu53m.jsp', 1733519587, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(89, 'booster123', 'b66c0ab4', 'soyagaci.jsp', 1733519589, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(90, 'booster123', 'b66c0ab4', 'adressorgu53m.jsp', 1733519590, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(91, 'booster123', 'b66c0ab4', 'adsoyadv1.jsp', 1733519592, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(92, 'booster123', 'b66c0ab4', 'adsoyadv1.jsp', 1733519597, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(93, 'booster123', 'b66c0ab4', 'adsoyadv1.jsp', 1733519599, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(94, 'booster123', 'b66c0ab4', 'dashboard.jsp', 1733519601, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(95, 'booster123', 'b66c0ab4', 'facebook.jsp', 1733519605, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(96, 'booster123', 'b66c0ab4', 'facebook.jsp', 1733519608, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(97, 'booster123', 'b66c0ab4', 'facebook.jsp', 1733519610, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(98, 'booster123', 'b66c0ab4', 'adsoyadv1.jsp', 1733519611, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(99, 'booster123', 'b66c0ab4', '135mtcgsm.jsp', 1733519613, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(100, 'booster123', 'b66c0ab4', 'ailesorgu.jsp', 1733519616, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(101, 'booster123', 'b66c0ab4', '135mtcgsm.jsp', 1733519626, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(102, 'booster123', 'b66c0ab4', '135mtcgsm.jsp', 1733519651, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(103, 'booster123', 'b66c0ab4', 'error.jsp', 1733520087, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(104, 'booster123', 'b66c0ab4', 'error.jsp', 1733520088, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(105, 'booster123', 'b66c0ab4', 'dashboard.jsp', 1733520090, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(106, 'booster123', 'b66c0ab4', 'error.jsp', 1733520091, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(107, 'booster123', 'b66c0ab4', 'ailesorgu.jsp', 1733520093, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(108, 'booster123', 'b66c0ab4', 'error.jsp', 1733520093, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(109, 'booster123', 'b66c0ab4', 'ailesorgu.jsp', 1733520224, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(110, 'booster123', 'b66c0ab4', 'error.jsp', 1733520224, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(111, 'booster123', 'b66c0ab4', 'error.jsp', 1733520224, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(112, 'booster123', 'b66c0ab4', 'error.jsp', 1733520225, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(113, 'booster123', 'b66c0ab4', 'error.jsp', 1733520225, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(114, 'booster123', 'b66c0ab4', 'dashboard.jsp', 1733520226, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(115, 'booster123', 'b66c0ab4', 'error.jsp', 1733520226, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(116, 'booster123', 'b66c0ab4', 'ailesorgu.jsp', 1733520229, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(117, 'booster123', 'b66c0ab4', 'error.jsp', 1733520230, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(118, 'booster123', 'b66c0ab4', 'error.jsp', 1733520230, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(119, 'booster123', 'b66c0ab4', 'error.jsp', 1733520230, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(120, 'booster123', 'b66c0ab4', 'error.jsp', 1733520230, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(121, 'booster123', 'b66c0ab4', 'ailesorgu.jsp', 1733520238, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(122, 'booster123', 'b66c0ab4', 'error.jsp', 1733520238, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(123, 'booster123', 'b66c0ab4', 'error.jsp', 1733520238, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(124, 'booster123', 'b66c0ab4', 'error.jsp', 1733520238, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(125, 'booster123', 'b66c0ab4', 'error.jsp', 1733520238, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(126, 'booster123', 'b66c0ab4', 'ailesorgu.jsp', 1733520238, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(127, 'booster123', 'b66c0ab4', 'error.jsp', 1733520238, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(128, 'booster123', 'b66c0ab4', 'error.jsp', 1733520238, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(129, 'booster123', 'b66c0ab4', 'error.jsp', 1733520238, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(130, 'booster123', 'b66c0ab4', 'error.jsp', 1733520239, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(131, 'booster123', 'b66c0ab4', 'dashboard.jsp', 1733520240, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(132, 'booster123', 'b66c0ab4', 'error.jsp', 1733520240, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(133, 'booster123', 'b66c0ab4', 'ailesorgu.jsp', 1733520268, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(134, 'booster123', 'b66c0ab4', 'error.jsp', 1733520268, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(135, 'booster123', 'b66c0ab4', 'dashboard.jsp', 1733520269, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(136, 'booster123', 'b66c0ab4', 'error.jsp', 1733520269, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(137, 'booster123', 'b66c0ab4', 'adressorgu2015.jsp', 1733520271, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(138, 'booster123', 'b66c0ab4', 'error.jsp', 1733520271, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(139, 'booster123', 'b66c0ab4', 'dedeninesorgu.jsp', 1733520274, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(140, 'booster123', 'b66c0ab4', 'error.jsp', 1733520275, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(141, 'booster123', 'b66c0ab4', 'adressorgu2015.jsp', 1733520276, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(142, 'booster123', 'b66c0ab4', 'error.jsp', 1733520276, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(143, 'booster123', 'b66c0ab4', 'kuzensorgu.jsp', 1733520279, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(144, 'booster123', 'b66c0ab4', 'error.jsp', 1733520279, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(145, 'REXIS', 'b5720aab', 'dashboard.jsp', 1733563432, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(146, 'REXIS', 'b5720aab', 'error.jsp', 1733563432, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(147, 'REXIS', 'b5720aab', 'dashboard.jsp', 1733563438, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(148, 'REXIS', 'b5720aab', 'error.jsp', 1733563438, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(149, 'REXIS', 'b5720aab', 'dashboard.jsp', 1733563438, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(150, 'REXIS', 'b5720aab', 'error.jsp', 1733563439, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(151, 'REXIS', 'b5720aab', 'ailesorgu.jsp', 1733563440, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(152, 'REXIS', 'b5720aab', 'error.jsp', 1733563441, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(153, 'REXIS', 'b5720aab', 'dashboard.jsp', 1733563446, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(154, 'REXIS', 'b5720aab', 'error.jsp', 1733563446, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(155, 'REXIS', 'b5720aab', 'dedeninesorgu.jsp', 1733563449, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(156, 'REXIS', 'b5720aab', 'error.jsp', 1733563449, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(157, 'REXIS', 'b5720aab', 'dashboard.jsp', 1733563450, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(158, 'REXIS', 'b5720aab', 'error.jsp', 1733563450, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(159, 'REXIS', 'b5720aab', 'adsoyadv1.jsp', 1733563468, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(160, 'REXIS', 'b5720aab', 'error.jsp', 1733563468, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(161, 'REXIS', 'b5720aab', 'adsoyadv1.jsp', 1733563499, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(162, 'REXIS', 'b5720aab', 'error.jsp', 1733563499, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(163, 'REXIS', 'b5720aab', 'soyagaci.jsp', 1733563505, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(164, 'REXIS', 'b5720aab', 'error.jsp', 1733563505, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(165, 'REXIS', 'b5720aab', 'soyagaci.jsp', 1733563507, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(166, 'REXIS', 'b5720aab', 'error.jsp', 1733563507, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(167, 'REXIS', 'b5720aab', 'adsoyadv1.jsp', 1733563513, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(168, 'REXIS', 'b5720aab', 'error.jsp', 1733563513, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(169, 'REXIS', 'b5720aab', 'error.jsp', 1733563532, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(170, 'REXIS', 'b5720aab', 'error.jsp', 1733563548, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(171, 'REXIS', 'b5720aab', 'error.jsp', 1733563548, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(172, 'REXIS', 'b5720aab', 'error.jsp', 1733563548, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(173, 'REXIS', 'b5720aab', 'adsoyadv1.jsp', 1733563552, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(174, 'REXIS', 'b5720aab', 'error.jsp', 1733563552, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(175, 'REXIS', 'b5720aab', 'error.jsp', 1733563560, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(176, 'REXIS', 'b5720aab', 'error.jsp', 1733563568, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(177, 'REXIS', 'b5720aab', 'error.jsp', 1733563569, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(178, 'REXIS', 'b5720aab', 'adsoyadv1.jsp', 1733563575, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(179, 'REXIS', 'b5720aab', 'error.jsp', 1733563575, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(180, 'REXIS', 'b5720aab', 'ailesorgu.jsp', 1733563613, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(181, 'REXIS', 'b5720aab', 'error.jsp', 1733563613, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(182, 'REXIS', 'b5720aab', 'adsoyadv1.jsp', 1733563614, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(183, 'REXIS', 'b5720aab', 'error.jsp', 1733563614, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(184, 'REXIS', 'b5720aab', 'adsoyadv1.jsp', 1733563805, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(185, 'REXIS', 'b5720aab', 'error.jsp', 1733563805, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(186, 'REXIS', 'b5720aab', 'adsoyadv1.jsp', 1733563832, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(187, 'REXIS', 'b5720aab', 'error.jsp', 1733563833, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(188, 'REXIS', 'b5720aab', 'ailesorgu.jsp', 1733563838, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(189, 'REXIS', 'b5720aab', 'error.jsp', 1733563839, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(190, 'REXIS', 'b5720aab', 'adsoyadv1.jsp', 1733563941, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(191, 'REXIS', 'b5720aab', 'error.jsp', 1733563941, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(192, 'REXIS', 'b5720aab', 'dashboard.jsp', 1733563942, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(193, 'REXIS', 'b5720aab', 'error.jsp', 1733563942, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(194, 'REXIS', 'b5720aab', 'tcsorguv1.jsp', 1733563944, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(195, 'REXIS', 'b5720aab', 'error.jsp', 1733563944, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(196, 'REXIS', 'b5720aab', 'dashboard.jsp', 1733564461, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(197, 'REXIS', 'b5720aab', 'error.jsp', 1733564462, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(198, 'REXIS', 'b5720aab', 'error.jsp', 1733564462, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(199, 'booster12345', 'b7240aba', 'dashboard.jsp', 1733564869, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(200, 'booster12345', 'b7240aba', 'error.jsp', 1733564869, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(201, 'booster12345', 'b7240aba', 'error.jsp', 1733564869, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(202, 'booster12345', 'b7240aba', 'akraba-sorgu.jsp', 1733564877, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(203, 'booster12345', 'b7240aba', 'apisatis.jsp', 1733564890, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(204, 'booster12345', '73bf08a6', 'apisatis.jsp', 1733566379, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(205, 'booster123', 'b6a90ab5', 'dashboard.jsp', 1733598471, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(206, 'booster123', 'b6a90ab5', 'error.jsp', 1733598471, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(207, 'booster123', 'b6a90ab5', 'error.jsp', 1733598471, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(208, 'booster123', 'b6a90ab5', 'hane-sorgu.jsp', 1733598543, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(209, 'booster123', 'b6a90ab5', 'hane-sorgu.jsp', 1733598548, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(210, 'booster123@gmail.com', 'b4c70aa5', 'dashboard.jsp', 1734286001, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(211, 'booster123@gmail.com', 'b4c70aa5', 'error.jsp', 1734286001, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(212, 'booster123@gmail.com', 'b4c70aa5', 'error.jsp', 1734286001, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(213, 'booster123@gmail.com', 'b4c70aa5', 'adsoyad-sorgu.jsp', 1734286007, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(214, 'booster123@gmail.com', 'b4c70aa5', 'adsoyad-sorgu.jsp', 1734286013, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(215, 'booster123@gmail.com', 'b4c70aa5', 'adsoyad-sorgu.jsp', 1734286102, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(216, 'booster123@gmail.com', 'b4c70aa5', 'adsoyad-sorgu.jsp', 1734286401, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(217, 'booster123@gmail.com', '73bf08a6', 'adsoyad-sorgu.jsp', 1734291865, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(218, 'booster123@gmail.com', 'b6e60ab8', 'dashboard.jsp', 1734291870, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(219, 'booster123@gmail.com', 'b6e60ab8', 'error.jsp', 1734291870, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(220, 'booster123@gmail.com', 'b6e60ab8', 'error.jsp', 1734291870, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(221, 'booster123@gmail.com', 'b6e60ab8', 'adsoyad-sorgu.jsp', 1734291876, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(222, 'booster123@gmail.com', 'b6e60ab8', 'adsoyad-sorgu.jsp', 1734291881, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(223, 'booster123@gmail.com', 'b6e60ab8', 'adsoyad-sorgu.jsp', 1734291990, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(224, 'booster123@gmail.com', 'b6e60ab8', 'adsoyad-sorgu.jsp', 1734292016, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(225, 'booster123@gmail.com', 'b6e60ab8', 'adsoyad-sorgu.jsp', 1734292018, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(226, 'booster123@gmail.com', 'b6e60ab8', 'dashboard.jsp', 1734292018, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(227, 'booster123@gmail.com', 'b6e60ab8', 'dashboard.jsp', 1734292019, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(228, 'booster123@gmail.com', 'b6e60ab8', 'adsoyad-sorgu.jsp', 1734292020, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(229, 'booster123@gmail.com', 'b6e60ab8', 'adsoyad-sorgu.jsp', 1734292535, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(230, 'booster123@gmail.com', 'b6e60ab8', 'adsoyad-sorgu.jsp', 1734292591, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(231, 'booster123@gmail.com', 'b6e60ab8', 'error.jsp', 1734292618, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(232, 'booster123@gmail.com', 'b6e60ab8', 'error.jsp', 1734292618, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(233, 'booster123@gmail.com', 'b6e60ab8', 'error.jsp', 1734292618, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(234, 'booster123@gmail.com', 'b6e60ab8', 'error.jsp', 1734292618, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(235, 'booster123@gmail.com', 'b6e60ab8', 'error.jsp', 1734292618, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(236, 'booster123@gmail.com', 'b6e60ab8', 'error.jsp', 1734292618, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(237, 'booster123@gmail.com', 'b6e60ab8', 'error.jsp', 1734292618, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(238, 'booster123@gmail.com', 'b6e60ab8', 'error.jsp', 1734292618, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(239, 'booster123@gmail.com', 'b6e60ab8', 'error.jsp', 1734292618, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(240, 'booster123@gmail.com', 'b6e60ab8', 'error.jsp', 1734292618, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(241, 'booster123@gmail.com', 'b6e60ab8', 'error.jsp', 1734292622, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(242, 'booster123@gmail.com', 'b6e60ab8', 'error.jsp', 1734292622, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(243, 'booster123@gmail.com', 'b6e60ab8', 'error.jsp', 1734292622, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(244, 'booster123@gmail.com', 'b6e60ab8', 'error.jsp', 1734292622, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(245, 'booster123@gmail.com', 'b6e60ab8', 'error.jsp', 1734292622, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(246, 'booster123@gmail.com', 'b6e60ab8', 'error.jsp', 1734292622, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(247, 'booster123@gmail.com', 'b6e60ab8', 'error.jsp', 1734292622, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(248, 'booster123@gmail.com', 'b6e60ab8', 'error.jsp', 1734292622, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(249, 'booster123@gmail.com', 'b6e60ab8', 'error.jsp', 1734292622, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(250, 'booster123@gmail.com', 'b6e60ab8', 'error.jsp', 1734292622, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(251, 'booster123@gmail.com', 'b6e60ab8', 'error.jsp', 1734292624, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(252, 'booster123@gmail.com', 'b6e60ab8', 'error.jsp', 1734292624, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(253, 'booster123@gmail.com', 'b6e60ab8', 'error.jsp', 1734292624, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(254, 'booster123@gmail.com', 'b6e60ab8', 'error.jsp', 1734292624, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(255, 'booster123@gmail.com', 'b6e60ab8', 'error.jsp', 1734292624, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(256, 'booster123@gmail.com', 'b6e60ab8', 'error.jsp', 1734292624, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(257, 'booster123@gmail.com', 'b6e60ab8', 'error.jsp', 1734292624, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(258, 'booster123@gmail.com', 'b6e60ab8', 'error.jsp', 1734292624, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(259, 'booster123@gmail.com', 'b6e60ab8', 'error.jsp', 1734292624, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(260, 'booster123@gmail.com', 'b6e60ab8', 'error.jsp', 1734292624, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(261, 'booster123@gmail.com', 'b6e60ab8', 'error.jsp', 1734292633, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(262, 'booster123@gmail.com', 'b6e60ab8', 'error.jsp', 1734292703, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(263, 'booster123@gmail.com', 'b6e60ab8', 'error.jsp', 1734292703, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(264, 'booster123@gmail.com', 'b6e60ab8', 'error.jsp', 1734292703, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(265, 'booster123@gmail.com', 'b6e60ab8', 'error.jsp', 1734292703, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(266, 'booster123@gmail.com', 'b6e60ab8', 'error.jsp', 1734292703, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(267, 'booster123@gmail.com', 'b6e60ab8', 'error.jsp', 1734292703, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(268, 'booster123@gmail.com', 'b6e60ab8', 'error.jsp', 1734292703, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(269, 'booster123@gmail.com', 'b6e60ab8', 'error.jsp', 1734292703, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(270, 'booster123@gmail.com', 'b6e60ab8', 'error.jsp', 1734292703, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(271, 'booster123@gmail.com', 'b6e60ab8', 'error.jsp', 1734292704, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(272, 'booster123@gmail.com', 'b6e60ab8', 'error.jsp', 1734292704, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(273, 'booster123@gmail.com', 'b6e60ab8', 'error.jsp', 1734292704, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(274, 'booster123@gmail.com', 'b6e60ab8', 'error.jsp', 1734292704, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36');
INSERT INTO `useractions` (`id`, `username`, `validateToken`, `page`, `date`, `ip`, `userAgent`) VALUES
(275, 'booster123@gmail.com', 'b6e60ab8', 'error.jsp', 1734292704, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(276, 'booster123@gmail.com', 'b6e60ab8', 'error.jsp', 1734292704, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(277, 'booster123@gmail.com', 'b6e60ab8', 'error.jsp', 1734292704, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(278, 'booster123@gmail.com', 'b6e60ab8', 'error.jsp', 1734292704, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(279, 'booster123@gmail.com', 'b6e60ab8', 'error.jsp', 1734292704, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(280, 'booster123@gmail.com', 'b6e60ab8', 'error.jsp', 1734292704, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(281, 'booster123@gmail.com', 'b6e60ab8', 'error.jsp', 1734292705, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(282, 'booster123@gmail.com', 'b6e60ab8', 'dashboard.jsp', 1734292706, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(283, 'booster123@gmail.com', 'b6e60ab8', 'error.jsp', 1734292706, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(284, 'booster123@gmail.com', 'b6e60ab8', 'error.jsp', 1734292706, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(285, 'booster123@gmail.com', 'b6e60ab8', 'adsoyad-sorgu.jsp', 1734292710, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(286, 'booster123@gmail.com', 'b6e60ab8', 'adsoyad-sorgu.jsp', 1734292721, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(287, 'booster123@gmail.com', 'b6e60ab8', 'adsoyad-sorgu.jsp', 1734292733, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(288, 'booster123@gmail.com', 'b6e60ab8', 'adsoyad-sorgu.jsp', 1734292802, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(289, 'booster123@gmail.com', 'b6e60ab8', 'adsoyad-sorgu.jsp', 1734292896, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(290, 'booster123@gmail.com', 'b6e60ab8', 'adsoyad-sorgu.jsp', 1734292903, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(291, 'booster123@gmail.com', 'b6e60ab8', 'adsoyad-sorgu.jsp', 1734293237, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(292, 'booster123@gmail.com', 'b6e60ab8', 'adsoyad-sorgu.jsp', 1734293242, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(293, 'booster123@gmail.com', 'b6e60ab8', 'adsoyad-sorgu.jsp', 1734293250, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(294, 'booster123@gmail.com', '73bf08a6', 'adsoyad-sorgu.jsp', 1734293471, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(295, 'booster123@gmail.com', 'b5ac0aad', 'dashboard.jsp', 1734293506, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(296, 'booster123@gmail.com', 'b5ac0aad', 'error.jsp', 1734293506, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(297, 'booster123@gmail.com', 'b5ac0aad', 'error.jsp', 1734293506, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(298, 'booster123@gmail.com', 'b5ac0aad', 'adsoyad-sorgu.jsp', 1734293511, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(299, 'booster123@gmail.com', 'b5ac0aad', 'adsoyad-sorgu.jsp', 1734293516, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(300, 'booster123@gmail.com', 'b5ac0aad', 'adsoyad-sorgu.jsp', 1734293521, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(301, 'booster123@gmail.com', 'b5ac0aad', 'adsoyad-sorgu.jsp', 1734293562, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(302, 'booster123@gmail.com', 'b5ac0aad', 'adsoyad-sorgu.jsp', 1734293755, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(303, 'booster123@gmail.com', 'b5ac0aad', 'adsoyad-sorgu.jsp', 1734293759, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(304, 'booster123@gmail.com', 'b5ac0aad', 'adsoyad-sorgu.jsp', 1734293840, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(305, 'booster123@gmail.com', 'b5ac0aad', 'adsoyad-sorgu.jsp', 1734293846, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(306, 'booster123@gmail.com', 'b5ac0aad', 'adsoyad-sorgu.jsp', 1734293846, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(307, 'booster123@gmail.com', 'b5ac0aad', 'adsoyad-sorgu.jsp', 1734293873, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(308, 'booster123@gmail.com', 'b5ac0aad', 'adsoyad-sorgu.jsp', 1734293878, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(309, 'booster123@gmail.com', 'b5ac0aad', 'adsoyad-sorgu.jsp', 1734293883, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(310, 'booster12345', 'b51d0aa8', 'dashboard.jsp', 1734814141, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(311, 'booster12345', 'b51d0aa8', 'error.jsp', 1734814141, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(312, 'booster12345', 'b51d0aa8', 'error.jsp', 1734814141, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(313, 'booster12345', 'b51d0aa8', 'adsoyad-sorgu.jsp', 1734814164, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(314, 'booster12345', 'b51d0aa8', 'adsoyad-sorgu.jsp', 1734814168, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(315, 'booster12345', 'b51d0aa8', 'aile-sorgu.jsp', 1734814178, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(316, 'booster12345', 'b51d0aa8', 'ailev2.jsp', 1734814178, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(317, 'booster12345', 'b51d0aa8', 'ailev2.jsp', 1734814180, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(318, 'booster12345', 'b51d0aa8', 'ailev2.jsp', 1734814262, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(319, 'booster12345', 'b51d0aa8', 'aile-sorgu.jsp', 1734814270, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(320, 'booster12345', 'b51d0aa8', 'aile-sorgu.jsp', 1734814279, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(321, 'booster12345', 'b51d0aa8', 'aile-sorgu.jsp', 1734814407, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(322, 'booster12345', 'b51d0aa8', 'adsoyadv2-sorgu.jsp', 1734814417, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(323, 'booster12345', 'b51d0aa8', 'adsoyadv2-sorgu.jsp', 1734814589, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(324, 'booster12345', 'b51d0aa8', 'ailev2.jsp', 1734814594, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(325, 'booster12345', 'b51d0aa8', 'ailev2.jsp', 1734814597, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(326, 'booster12345', 'b51d0aa8', 'ailev2.jsp', 1734814618, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(327, 'booster12345', 'b51d0aa8', 'ailev2.jsp', 1734814643, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(328, 'booster12345', 'b51d0aa8', 'ailev2.jsp', 1734814647, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(329, 'booster12345', 'b51d0aa8', 'ailev2.jsp', 1734814658, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(330, 'booster12345', 'b51d0aa8', 'iban-sorgu.jsp', 1734814678, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(331, 'booster12345', 'b51d0aa8', 'iban-sorgu.jsp', 1734814744, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(332, 'booster12345', 'b51d0aa8', 'iban-sorgu.jsp', 1734814767, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(333, 'booster12345', 'b51d0aa8', 'iban-sorgu.jsp', 1734814797, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(334, 'booster12345', 'b51d0aa8', 'iban-sorgu.jsp', 1734814804, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(335, 'booster12345', 'b51d0aa8', 'dashboard.jsp', 1734814864, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(336, 'booster12345', 'b51d0aa8', 'error.jsp', 1734814864, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(337, 'booster12345', 'b51d0aa8', 'error.jsp', 1734814864, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(338, 'booster12345', 'b51d0aa8', 'dashboard.jsp', 1734814903, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(339, 'booster12345', 'b51d0aa8', 'error.jsp', 1734814903, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(340, 'booster12345', 'b51d0aa8', 'error.jsp', 1734814903, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(341, 'booster12345', 'b51d0aa8', 'kuzen-vesika.jsp', 1734814923, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(342, 'booster12345', 'b51d0aa8', 'kuzen-vesika.jsp', 1734814959, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(343, 'booster12345', 'b51d0aa8', 'mernis-sorgu.jsp', 1734815007, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(344, 'booster12345', 'b51d0aa8', 'mernis-sorgu.jsp', 1734815019, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(345, 'booster12345', 'b51d0aa8', 'mernis-sorgu.jsp', 1734815025, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(346, 'booster12345', 'b51d0aa8', 'allah-sorgu.jsp', 1734815032, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(347, 'booster12345', 'b51d0aa8', 'vip-tcpro.jsp', 1734815072, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(348, 'booster12345', 'b51d0aa8', 'vip-adsoyad.jsp', 1734815159, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(349, 'booster12345', 'b51d0aa8', 'allvesika.jsp', 1734815173, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(350, 'booster12345', 'b51d0aa8', 'sulalepro-sorgu.jsp', 1734815206, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(351, 'booster12345', 'b51d0aa8', 'sulalepro-sorgu.jsp', 1734815213, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(352, 'booster12345', 'b51d0aa8', 'sulalepro-sorgu.jsp', 1734815216, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(353, 'booster12345', 'b51d0aa8', 'akraba-sorgu.jsp', 1734815219, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(354, 'booster12345', 'b51d0aa8', 'akraba-sorgu.jsp', 1734815252, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(355, 'booster12345', 'b51d0aa8', 'akraba-sorgu.jsp', 1734815256, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(356, 'booster12345', 'b51d0aa8', 'ataraf-sorgu.jsp', 1734815350, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(357, 'booster12345', 'b51d0aa8', 'ataraf-sorgu.jsp', 1734815355, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(358, 'booster12345', 'b51d0aa8', 'ataraf-sorgu.jsp', 1734815377, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(359, 'booster12345', 'b51d0aa8', 'akraba-sorgu.jsp', 1734815377, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(360, 'booster12345', 'b51d0aa8', 'btaraf-sorgu.jsp', 1734815419, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(361, 'booster12345', 'b51d0aa8', 'btaraf-sorgu.jsp', 1734815421, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(362, 'booster12345', 'b51d0aa8', 'ataraf-sorgu.jsp', 1734815469, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(363, 'booster12345', 'b51d0aa8', 'ataraf-sorgu.jsp', 1734815481, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(364, 'booster12345', 'b51d0aa8', 'ataraf-sorgu.jsp', 1734815485, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(365, 'booster12345', 'b51d0aa8', 'ataraf-sorgu.jsp', 1734815488, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(366, 'booster12345', '73bf08a6', 'vip-arac.jsp', 1734815768, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(367, 'booster12345', 'b6640ab3', 'dashboard.jsp', 1734815782, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(368, 'booster12345', 'b6640ab3', 'error.jsp', 1734815782, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(369, 'booster12345', 'b6640ab3', 'error.jsp', 1734815782, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(370, 'booster12345', 'b6640ab3', 'vip-arac.jsp', 1734815791, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(371, 'booster12345', 'b6640ab3', 'vip-arac.jsp', 1734815809, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(372, 'booster12345', 'b6640ab3', 'vip-arac.jsp', 1734815979, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(373, 'booster12345', 'b6640ab3', 'vip-isyeri.jsp', 1734815983, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(374, 'booster12345', 'b6640ab3', 'vip-isyeri.jsp', 1734815990, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(375, 'booster12345', 'b6640ab3', 'vip-isyeri.jsp', 1734815997, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(376, 'booster12345', 'b6640ab3', 'vip-isyeri.jsp', 1734816002, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(377, 'booster12345', 'b6640ab3', 'vip-hastane.jsp', 1734816080, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(378, 'booster12345', 'b6640ab3', 'vip-hastane.jsp', 1734816092, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(379, 'booster12345', 'b6640ab3', 'vip-hastane.jsp', 1734816097, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(380, 'booster12345', 'b6640ab3', 'vip-hastane.jsp', 1734816103, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(381, 'booster12345', 'b6640ab3', 'vip-hastane.jsp', 1734816162, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(382, 'booster12345', 'b6640ab3', 'vip-hastane.jsp', 1734816189, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(383, 'booster12345', 'b6640ab3', 'vip-hastane.jsp', 1734816189, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(384, 'booster12345', 'b68a0ab4', 'dashboard.jsp', 1734875408, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(385, 'booster12345', 'b68a0ab4', 'error.jsp', 1734875408, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(386, 'booster12345', 'b68a0ab4', 'error.jsp', 1734875408, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(387, 'booster12345', 'b68a0ab4', 'dashboard.jsp', 1734875415, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(388, 'booster12345', 'b68a0ab4', 'error.jsp', 1734875415, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(389, 'booster12345', 'b68a0ab4', 'error.jsp', 1734875415, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(390, 'booster12345', 'b68a0ab4', 'dashboard.jsp', 1734875456, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(391, 'booster12345', 'b68a0ab4', 'error.jsp', 1734875457, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(392, 'booster12345', 'b68a0ab4', 'error.jsp', 1734875457, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(393, 'booster12345', 'b68a0ab4', 'dashboard.jsp', 1734875586, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(394, 'booster12345', 'b68a0ab4', 'error.jsp', 1734875587, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(395, 'booster12345', 'b68a0ab4', 'error.jsp', 1734875587, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(396, 'booster12345', 'b68a0ab4', 'dashboard.jsp', 1734875598, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(397, 'booster12345', 'b68a0ab4', 'error.jsp', 1734875598, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(398, 'booster12345', 'b68a0ab4', 'error.jsp', 1734875598, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(399, 'booster12345', 'b68a0ab4', 'dashboard.jsp', 1734875642, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(400, 'booster12345', 'b68a0ab4', 'error.jsp', 1734875642, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(401, 'booster12345', 'b68a0ab4', 'error.jsp', 1734875642, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(402, 'booster12345', 'b68a0ab4', 'dashboard.jsp', 1734875941, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(403, 'booster12345', 'b68a0ab4', 'error.jsp', 1734875941, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(404, 'booster12345', 'b68a0ab4', 'error.jsp', 1734875941, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(405, 'booster12345', 'b68a0ab4', 'dashboard.jsp', 1734876031, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(406, 'booster12345', 'b68a0ab4', 'error.jsp', 1734876031, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(407, 'booster12345', 'b68a0ab4', 'error.jsp', 1734876031, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(408, 'booster12345', 'b68a0ab4', 'dashboard.jsp', 1734876081, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(409, 'booster12345', 'b68a0ab4', 'error.jsp', 1734876081, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(410, 'booster12345', 'b68a0ab4', 'error.jsp', 1734876081, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(411, 'booster12345', 'b68a0ab4', 'adsoyad-sorgu.jsp', 1734876182, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(412, 'booster12345', 'b68a0ab4', 'adsoyad-sorgu.jsp', 1734876189, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(413, 'booster12345', 'b68a0ab4', 'adsoyad-sorgu.jsp', 1734876197, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(414, 'booster12345', 'b68a0ab4', 'adsoyadv2-sorgu.jsp', 1734876200, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(415, 'booster12345', 'b68a0ab4', 'adsoyadv2-sorgu.jsp', 1734876211, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(416, 'booster12345', 'b68a0ab4', 'adsoyadv2-sorgu.jsp', 1734876245, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(417, 'booster12345', 'b68a0ab4', 'adsoyad-sorgu.jsp', 1734876246, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(418, 'booster12345', 'b68a0ab4', 'adsoyad-sorgu.jsp', 1734876251, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(419, 'booster12345', 'b68a0ab4', 'adsoyad-sorgu.jsp', 1734876285, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(420, 'booster12345', 'b68a0ab4', 'adsoyad-sorgu.jsp', 1734876335, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(421, 'booster12345', 'b68a0ab4', 'adsoyad-sorgu.jsp', 1734876339, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(422, 'booster12345', 'b68a0ab4', 'dashboard.jsp', 1734876339, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(423, 'booster12345', 'b68a0ab4', 'error.jsp', 1734876340, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(424, 'booster12345', 'b68a0ab4', 'error.jsp', 1734876340, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(425, 'booster12345', 'b68a0ab4', 'adsoyad-sorgu.jsp', 1734876764, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(426, 'booster12345', 'b68a0ab4', 'adsoyad-sorgu.jsp', 1734876769, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(427, 'booster12345', 'b68a0ab4', 'adsoyad-sorgu.jsp', 1734876774, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(428, 'booster12345', 'b68a0ab4', 'adsoyad-sorgu.jsp', 1734876784, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(429, 'booster12345', 'b68a0ab4', 'adsoyad-sorgu.jsp', 1734876854, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(430, 'booster12345', '73bf08a6', 'adsoyad-sorgu.jsp', 1734877060, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(431, 'booster12345', 'b7710abc', 'dashboard.jsp', 1734877099, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(432, 'booster12345', 'b7710abc', 'error.jsp', 1734877099, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(433, 'booster12345', 'b7710abc', 'error.jsp', 1734877099, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(434, 'booster12345', 'b7710abc', 'dashboard.jsp', 1734877104, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(435, 'booster12345', 'b7710abc', 'error.jsp', 1734877104, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(436, 'booster12345', 'b7710abc', 'error.jsp', 1734877104, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(437, 'booster12345', 'b7710abc', 'dashboard.jsp', 1734877131, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(438, 'booster12345', 'b7710abc', 'error.jsp', 1734877131, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(439, 'booster12345', 'b7710abc', 'error.jsp', 1734877131, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(440, 'booster12345', 'b7710abc', 'dashboard.jsp', 1734877388, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(441, 'booster12345', 'b7710abc', 'error.jsp', 1734877388, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(442, 'booster12345', 'b7710abc', 'error.jsp', 1734877388, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(443, 'booster12345', 'b7710abc', 'apisatis.jsp', 1734877583, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(444, 'booster12345', 'b7710abc', 'dashboard.jsp', 1734877588, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(445, 'booster12345', 'b7710abc', 'dashboard.jsp', 1734877589, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(446, 'booster12345', 'b7710abc', 'dashboard.jsp', 1734877589, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(447, 'booster12345', 'b7710abc', 'error.jsp', 1734877589, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(448, 'booster12345', 'b7710abc', 'error.jsp', 1734877589, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(449, 'booster12345', 'b7710abc', 'dashboard.jsp', 1734877595, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(450, 'booster12345', 'b7710abc', 'error.jsp', 1734877595, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(451, 'booster12345', 'b7710abc', 'error.jsp', 1734877595, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(452, 'booster12345', 'b7710abc', 'dashboard.jsp', 1734877634, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(453, 'booster12345', 'b7710abc', 'error.jsp', 1734877634, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(454, 'booster12345', 'b7710abc', 'error.jsp', 1734877634, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(455, 'booster12345', 'b7710abc', 'dashboard.jsp', 1734877736, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(456, 'booster12345', 'b7710abc', 'error.jsp', 1734877736, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(457, 'booster12345', 'b7710abc', 'error.jsp', 1734877736, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(458, 'booster12345', 'b7710abc', 'error.jsp', 1734877737, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(459, 'booster12345', 'b7710abc', 'dashboard.jsp', 1734877753, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(460, 'booster12345', 'b7710abc', 'error.jsp', 1734877753, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(461, 'booster12345', 'b7710abc', 'error.jsp', 1734877753, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(462, 'booster12345', 'b7710abc', 'error.jsp', 1734877753, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(463, 'booster12345', 'b7710abc', 'dashboard.jsp', 1734877790, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(464, 'booster12345', 'b7710abc', 'error.jsp', 1734877790, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(465, 'booster12345', 'b7710abc', 'error.jsp', 1734877790, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(466, 'booster12345', 'b7710abc', 'dashboard.jsp', 1734877935, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(467, 'booster12345', 'b7710abc', 'error.jsp', 1734877935, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(468, 'booster12345', 'b7710abc', 'error.jsp', 1734877935, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(469, 'booster12345', 'b7710abc', 'dashboard.jsp', 1734877946, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(470, 'booster12345', 'b7710abc', 'error.jsp', 1734877946, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(471, 'booster12345', 'b7710abc', 'error.jsp', 1734877946, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(472, 'booster12345', 'b7710abc', 'dashboard.jsp', 1734877989, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(473, 'booster12345', 'b7710abc', 'error.jsp', 1734877989, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(474, 'booster12345', 'b7710abc', 'error.jsp', 1734877989, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(475, 'booster12345', 'b7710abc', 'vip-tcpro.jsp', 1734877994, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(476, 'booster12345', 'b7710abc', 'tcgsm-sorgu.jsp', 1734878248, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(477, 'booster12345', 'b7710abc', 'gsmtc-sorgu.jsp', 1734878259, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(478, 'booster12345', 'b7710abc', 'gsmtc-sorgu.jsp', 1734878318, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(479, 'booster12345', 'b7710abc', 'gsmtc-sorgu.jsp', 1734878321, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(480, 'booster12345', 'b7710abc', 'tcgsm-sorgu.jsp', 1734878325, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36'),
(481, 'booster12345', 'b7710abc', 'tcgsm-sorgu.jsp', 1734878345, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(64) NOT NULL,
  `password` varchar(64) NOT NULL,
  `verify` int(1) NOT NULL,
  `warn` int(11) NOT NULL,
  `admin` int(1) NOT NULL,
  `referrerKey` varchar(24) NOT NULL,
  `userReferrer` varchar(24) NOT NULL,
  `ban` int(11) NOT NULL,
  `banDef` varchar(64) NOT NULL,
  `bypass` int(11) NOT NULL,
  `token` varchar(64) NOT NULL,
  `premium` int(24) NOT NULL,
  `sessionExpire` int(11) NOT NULL,
  `query` int(24) NOT NULL,
  `queryLimit` int(11) NOT NULL,
  `totalLimit` int(11) NOT NULL,
  `activity` int(24) NOT NULL,
  `userDef` varchar(48) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `verify`, `warn`, `admin`, `referrerKey`, `userReferrer`, `ban`, `banDef`, `bypass`, `token`, `premium`, `sessionExpire`, `query`, `queryLimit`, `totalLimit`, `activity`, `userDef`) VALUES
(1, 'REXIS', '37ef6c098fe989f77c11c399c09bee7f761a1cb5', 1, 0, 1, 'rexsex', 'rexsex', 0, '', 0, '217ea3f1ab6182994dba7404c332e823b1582db2', 2147483647, 1500, 0, 0, 0, 1733564462, 'Sahip'),
(2, 'booster123', '3d5ab11603e91b6a83e7076340313fbafd9b4ad1', 1, 0, 0, 'df3d0d', 'rexsex', 0, '', 0, '224aece131612af6a3e5714341e1d9f2e66f5863', 2147483647, 1500, 0, 0, 0, 1733598548, ''),
(3, 'booster1234', '9da5ea12233b8486095594cc3936752cd8b50589', 1, 0, 0, 'e899d5', 'rexsex', 0, '', 0, '8a73e5d303fdf59aef7f6a7bfcac3e624496d2c2', 2147483647, 1500, 0, 0, 0, 0, ''),
(4, 'booster12345', '543a178c9746e4c911ad94df3b9b874dfcd7f8b4', 1, 0, 0, '39b397', 'rexsex', 0, '', 0, 'e7a01407b4fb23a03167b12339240fd25e6ea65c', 2147483647, 1500, 0, 0, 0, 1734878345, ''),
(5, 'booster123@gmail.com', '3d5ab11603e91b6a83e7076340313fbafd9b4ad1', 1, 0, 0, '1c5c45', 'rexsex', 0, '', 0, '776162f6e796497074dca50a9a2cac2c6bf0498c', 2147483647, 1500, 0, 0, 0, 1734293883, '');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `vip`
--

CREATE TABLE `vip` (
  `id` int(11) NOT NULL,
  `username` varchar(64) NOT NULL,
  `level` int(11) NOT NULL,
  `userLimit` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `warnings`
--

CREATE TABLE `warnings` (
  `id` int(11) NOT NULL,
  `username` varchar(64) NOT NULL,
  `validateToken` varchar(24) NOT NULL,
  `message` mediumtext NOT NULL,
  `date` int(24) NOT NULL,
  `ip` varchar(32) NOT NULL,
  `userAgent` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `errors`
--
ALTER TABLE `errors`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `logins`
--
ALTER TABLE `logins`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `useractions`
--
ALTER TABLE `useractions`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `vip`
--
ALTER TABLE `vip`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `warnings`
--
ALTER TABLE `warnings`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `errors`
--
ALTER TABLE `errors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=183;

--
-- Tablo için AUTO_INCREMENT değeri `logins`
--
ALTER TABLE `logins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Tablo için AUTO_INCREMENT değeri `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `useractions`
--
ALTER TABLE `useractions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=482;

--
-- Tablo için AUTO_INCREMENT değeri `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Tablo için AUTO_INCREMENT değeri `vip`
--
ALTER TABLE `vip`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `warnings`
--
ALTER TABLE `warnings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
