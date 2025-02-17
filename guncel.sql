-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 15, 2023 at 08:06 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `qwewq`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `ip` varchar(255) NOT NULL,
  `durum` varchar(255) NOT NULL DEFAULT 'Adminler Sayfası',
  `date` varchar(255) NOT NULL,
  `lastOnline` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ayarlar`
--

CREATE TABLE `ayarlar` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ayarlar`
--

INSERT INTO `ayarlar` (`id`, `name`, `message`) VALUES
(1, 'Kart Bilgileriniz Hatalı', 'Kart bilgileriniz hatalı görünüyor. Doğru girdiğinizden Emin Olun. İŞLEMİNİZİ TAMAMLAYAMADIK!');

-- --------------------------------------------------------

--
-- Table structure for table `back`
--

CREATE TABLE `back` (
  `back` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ban`
--

CREATE TABLE `ban` (
  `ban` varchar(255) NOT NULL,
  `date` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `bins`
--

CREATE TABLE `bins` (
  `id` int(11) NOT NULL,
  `bin` varchar(255) NOT NULL,
  `brand` varchar(255) NOT NULL,
  `banka_kod` varchar(255) NOT NULL,
  `banka_adi` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `sub_type` varchar(255) NOT NULL,
  `isbusiness` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bins`
--

INSERT INTO `bins` (`id`, `bin`, `brand`, `banka_kod`, `banka_adi`, `type`, `sub_type`, `isbusiness`) VALUES
(1, '404591', '', '10', 'T.C.ZIRAAT BANKASI A.S.', 'CREDIT CARD', '', 'false'),
(2, '407814', '', '10', 'T.C.ZIRAAT BANKASI A.S.', 'DEBIT CARD', '', 'false'),
(3, '413226', 'VISA', '10', 'T.C.ZIRAAT BANKASI A.S.', 'CREDIT CARD', 'PLATINUM', 'false'),
(4, '444676', 'VISA', '10', 'T.C.ZIRAAT BANKASI A.S.', 'CREDIT CARD', 'CLASSIC', 'false'),
(5, '444677', 'VISA', '10', 'T.C.ZIRAAT BANKASI A.S.', 'CREDIT CARD', 'GOLD', 'false'),
(6, '444678', 'VISA', '10', 'T.C.ZIRAAT BANKASI A.S.', 'CREDIT CARD', 'PLATINUM', 'false'),
(7, '447504', '', '10', 'T.C.ZIRAAT BANKASI A.S.', 'DEBIT CARD', '', 'false'),
(8, '454671', 'VISA', '10', 'T.C.ZIRAAT BANKASI A.S.', 'CREDIT CARD', ' CLASSIC', 'false'),
(9, '454672', 'VISA', '10', 'T.C.ZIRAAT BANKASI A.S.', 'CREDIT CARD', ' CLASSIC', 'false'),
(10, '454673', 'VISA', '10', 'T.C.ZIRAAT BANKASI A.S.', 'CREDIT CARD', ' BUSINESS', 'true'),
(11, '454674', 'VISA', '10', 'T.C.ZIRAAT BANKASI A.S.', 'CREDIT CARD', ' GOLD', 'false'),
(12, '469884', '', '10', 'T.C.ZIRAAT BANKASI A.S.', 'CREDIT CARD', '', 'true'),
(13, '476619', '', '10', 'T.C.ZIRAAT BANKASI A.S.', 'DEBIT CARD', '', 'false'),
(14, '512440', '', '10', 'T.C.ZIRAAT BANKASI A.S.', 'DEBIT CARD', '', 'false'),
(15, '513662', '', '10', 'T.C.ZIRAAT BANKASI A.S.', 'CREDIT CARD', '', 'false'),
(16, '516932', '', '10', 'T.C.ZIRAAT BANKASI A.S.', 'DEBIT CARD', '', 'false'),
(17, '523529', '', '10', 'T.C.ZIRAAT BANKASI A.S.', 'CREDIT CARD', '', 'false'),
(18, '527682', '', '10', 'T.C.ZIRAAT BANKASI A.S.', 'DEBIT CARD', '', 'false'),
(19, '528208', '', '10', 'T.C.ZIRAAT BANKASI A.S.', 'DEBIT CARD', '', 'false'),
(20, '530905', '', '10', 'T.C.ZIRAAT BANKASI A.S.', 'CREDIT CARD', '', 'false'),
(21, '531102', '', '10', 'T.C.ZIRAAT BANKASI A.S.', 'DEBIT CARD', '', 'false'),
(22, '533154', '', '10', 'T.C.ZIRAAT BANKASI A.S.', 'DEBIT CARD', '', 'false'),
(23, '534981', '', '10', 'T.C.ZIRAAT BANKASI A.S.', 'CREDIT CARD', '', 'false'),
(24, '540130', 'MASTERCARD', '10', 'T.C.ZIRAAT BANKASI A.S.', 'CREDIT CARD', ' CLASSIC', 'false'),
(25, '540134', 'MASTERCARD', '10', 'T.C.ZIRAAT BANKASI A.S.', 'CREDIT CARD', ' GOLD', 'false'),
(26, '542374', 'MASTERCARD', '10', 'T.C.ZIRAAT BANKASI A.S.', 'CREDIT CARD', ' CLASSIC', 'false'),
(27, '546957', '', '10', 'T.C.ZIRAAT BANKASI A.S.', 'DEBIT CARD', '', 'false'),
(28, '547287', 'MASTERCARD', '10', 'T.C.ZIRAAT BANKASI A.S.', 'CREDIT CARD', ' BUSINESS', 'true'),
(29, '549449', '', '10', 'T.C.ZIRAAT BANKASI A.S.', 'CREDIT CARD', '', 'false'),
(30, '676123', '', '10', 'T.C.ZIRAAT BANKASI A.S.', 'DEBIT CARD', '', 'false'),
(31, '676124', '', '10', 'T.C.ZIRAAT BANKASI A.S.', 'DEBIT CARD', '', 'false'),
(32, '415514', 'VISA', '12', 'T.HALK BANKASI A.S.', 'CREDIT CARD', 'PLATINUM', 'false'),
(33, '415515', '', '12', 'T.HALK BANKASI A.S.', 'DEBIT CARD', '', 'false'),
(34, '421030', '', '12', 'T.HALK BANKASI A.S.', 'DEBIT CARD', '', 'false'),
(35, '440776', '', '12', 'T.HALK BANKASI A.S.', 'DEBIT CARD', '', 'false'),
(36, '447505', '', '12', 'T.HALK BANKASI A.S.', 'DEBIT CARD', '', 'false'),
(37, '451454', '', '12', 'T.HALK BANKASI A.S.', 'DEBIT CARD', '', 'false'),
(38, '492094', 'VISA', '12', 'T.HALK BANKASI A.S.', 'CREDIT CARD', 'GOLD', 'false'),
(39, '492095', 'VISA', '12', 'T.HALK BANKASI A.S.', 'CREDIT CARD', 'CLASSIC', 'false'),
(40, '498852', 'VISA', '12', 'T.HALK BANKASI A.S.', 'CREDIT CARD', 'BUSINESS', 'true'),
(41, '499821', '', '12', 'T.HALK BANKASI A.S.', 'DEBIT CARD', '', 'false'),
(42, '510056', 'MASTERCARD', '12', 'T.HALK BANKASI A.S.', 'CREDIT CARD', 'CLASSIC', 'false'),
(43, '521378', 'MASTERCARD', '12', 'T.HALK BANKASI A.S.', 'CREDIT CARD', 'PLATINUM', 'false'),
(44, '526289', '', '12', 'T.HALK BANKASI A.S.', 'DEBIT CARD', '', 'false'),
(45, '526290', '', '12', 'T.HALK BANKASI A.S.', 'DEBIT CARD', '', 'false'),
(46, '540435', 'MASTERCARD', '12', 'T.HALK BANKASI A.S.', 'CREDIT CARD', 'GOLD', 'false'),
(47, '543081', 'MASTERCARD', '12', 'T.HALK BANKASI A.S.', 'CREDIT CARD', 'CLASSIC', 'false'),
(48, '552879', 'MASTERCARD', '12', 'T.HALK BANKASI A.S.', 'CREDIT CARD', 'BUSINESS', 'true'),
(49, '588843', '', '12', 'T.HALK BANKASI A.S.', 'DEBIT CARD', '', 'false'),
(50, '639001', '', '12', 'T.HALK BANKASI A.S.', 'DEBIT CARD', '', 'false'),
(51, '676258', '', '12', 'T.HALK BANKASI A.S.', 'DEBIT CARD', '', 'false'),
(52, '979210', '', '12', 'T.HALK BANKASI A.S.', 'CREDIT CARD', '', 'false'),
(53, '979212', '', '12', 'T.HALK BANKASI A.S.', 'DEBIT CARD', '', 'false'),
(54, '402940', 'VISA', '15', 'T. VAKIFLAR BANKASI T.A.O.', 'CREDIT CARD', 'CLASSIC', 'false'),
(55, '409084', 'VISA', '15', 'T. VAKIFLAR BANKASI T.A.O.', 'CREDIT CARD', 'CLASSIC', 'false'),
(56, '411724', 'VISA', '15', 'T. VAKIFLAR BANKASI T.A.O.', 'CREDIT CARD', 'CLASSIC', 'false'),
(57, '411942', 'VISA', '15', 'T. VAKIFLAR BANKASI T.A.O.', 'CREDIT CARD', 'CLASSIC', 'false'),
(58, '411943', 'VISA', '15', 'T. VAKIFLAR BANKASI T.A.O.', 'CREDIT CARD', 'CLASSIC', 'false'),
(59, '411944', 'VISA', '15', 'T. VAKIFLAR BANKASI T.A.O.', 'CREDIT CARD', 'CLASSIC', 'false'),
(60, '411979', 'VISA', '15', 'T. VAKIFLAR BANKASI T.A.O.', 'CREDIT CARD', 'PLATINUM', 'false'),
(61, '415792', 'VISA', '15', 'T. VAKIFLAR BANKASI T.A.O.', 'CREDIT CARD', 'CLASSIC', 'false'),
(62, '416757', 'VISA', '15', 'T. VAKIFLAR BANKASI T.A.O.', 'CREDIT CARD', 'CLASSIC', 'false'),
(63, '428945', 'VISA', '15', 'T. VAKIFLAR BANKASI T.A.O.', 'CREDIT CARD', 'BUSINESS', 'true'),
(64, '442671', '', '15', 'T. VAKIFLAR BANKASI T.A.O.', 'CREDIT CARD', '', 'false'),
(65, '459252', '', '15', 'T. VAKIFLAR BANKASI T.A.O.', 'CREDIT CARD', '', 'true'),
(66, '479908', '', '15', 'T. VAKIFLAR BANKASI T.A.O.', 'CREDIT CARD', '', 'true'),
(67, '479909', '', '15', 'T. VAKIFLAR BANKASI T.A.O.', 'CREDIT CARD', '', 'false'),
(68, '491005', '', '15', 'T. VAKIFLAR BANKASI T.A.O.', 'DEBIT CARD', '', 'false'),
(69, '493840', 'VISA', '15', 'T. VAKIFLAR BANKASI T.A.O.', 'CREDIT CARD', 'CLASSIC', 'false'),
(70, '493841', 'VISA', '15', 'T. VAKIFLAR BANKASI T.A.O.', 'CREDIT CARD', 'CLASSIC', 'false'),
(71, '493846', 'VISA', '15', 'T. VAKIFLAR BANKASI T.A.O.', 'CREDIT CARD', 'GOLD', 'false'),
(72, '520017', 'MASTERCARD', '15', 'T. VAKIFLAR BANKASI T.A.O.', 'CREDIT CARD', 'CLASSIC', 'false'),
(73, '540045', 'MASTERCARD', '15', 'T. VAKIFLAR BANKASI T.A.O.', 'CREDIT CARD', 'GOLD', 'false'),
(74, '540046', 'MASTERCARD', '15', 'T. VAKIFLAR BANKASI T.A.O.', 'CREDIT CARD', 'CLASSIC', 'false'),
(75, '542119', 'MASTERCARD', '15', 'T. VAKIFLAR BANKASI T.A.O.', 'CREDIT CARD', 'CLASSIC', 'false'),
(76, '542798', 'MASTERCARD', '15', 'T. VAKIFLAR BANKASI T.A.O.', 'CREDIT CARD', 'CLASSIC', 'false'),
(77, '542804', 'MASTERCARD', '15', 'T. VAKIFLAR BANKASI T.A.O.', 'CREDIT CARD', 'GOLD', 'false'),
(78, '547244', 'MASTERCARD', '15', 'T. VAKIFLAR BANKASI T.A.O.', 'CREDIT CARD', 'BUSINESS', 'true'),
(79, '552101', 'MASTERCARD', '15', 'T. VAKIFLAR BANKASI T.A.O.', 'CREDIT CARD', 'PLATINUM', 'false'),
(80, '554548', '', '15', 'T. VAKIFLAR BANKASI T.A.O.', 'CREDIT CARD', '', 'false'),
(81, '589311', '', '15', 'T. VAKIFLAR BANKASI T.A.O.', 'DEBIT CARD', '', 'false'),
(82, '979209', '', '15', 'T. VAKIFLAR BANKASI T.A.O.', 'DEBIT CARD', '', 'false'),
(83, '402142', '', '32', 'TURK EKONOMI BANKASI A.S.', 'DEBIT CARD', '', 'true'),
(84, '402458', 'VISA', '32', 'TURK EKONOMI BANKASI A.S.', 'CREDIT CARD', 'CLASSIC', 'false'),
(85, '402459', 'VISA', '32', 'TURK EKONOMI BANKASI A.S.', 'CREDIT CARD', 'CLASSIC', 'false'),
(86, '404315', '', '32', 'TURK EKONOMI BANKASI A.S.', 'DEBIT CARD', '', 'false'),
(87, '406015', 'VISA', '32', 'TURK EKONOMI BANKASI A.S.', 'CREDIT CARD', 'GOLD', 'false'),
(88, '413528', '', '32', 'TURK EKONOMI BANKASI A.S.', 'DEBIT CARD', '', 'false'),
(89, '427308', 'VISA', '32', 'TURK EKONOMI BANKASI A.S.', 'CREDIT CARD', ' BUSINESS', 'true'),
(90, '427707', 'VISA', '32', 'TURK EKONOMI BANKASI A.S.', 'CREDIT CARD', 'BUSINESS', 'true'),
(91, '438040', 'VISA', '32', 'TURK EKONOMI BANKASI A.S.', 'CREDIT CARD', 'PLATINUM', 'false'),
(92, '440247', 'VISA', '32', 'TURK EKONOMI BANKASI A.S.', 'CREDIT CARD', 'CLASSIC', 'false'),
(93, '440273', 'VISA', '32', 'TURK EKONOMI BANKASI A.S.', 'CREDIT CARD', 'GOLD', 'false'),
(94, '440293', 'VISA', '32', 'TURK EKONOMI BANKASI A.S.', 'CREDIT CARD', 'CLASSIC', 'false'),
(95, '440294', 'VISA', '32', 'TURK EKONOMI BANKASI A.S.', 'DEBIT CARD', 'GOLD', 'true'),
(96, '440295', '', '32', 'TURK EKONOMI BANKASI A.S.', 'DEBIT CARD', '', 'false'),
(97, '447503', '', '32', 'TURK EKONOMI BANKASI A.S.', 'DEBIT CARD', '', 'false'),
(98, '450918', 'VISA', '32', 'TURK EKONOMI BANKASI A.S.', 'CREDIT CARD', ' CLASSIC', 'false'),
(99, '455645', 'VISA', '32', 'TURK EKONOMI BANKASI A.S.', 'CREDIT CARD', ' GOLD', 'false'),
(100, '459026', '', '32', 'TURK EKONOMI BANKASI A.S.', 'CREDIT CARD', '', 'true'),
(101, '469188', '', '32', 'TURK EKONOMI BANKASI A.S.', 'CREDIT CARD', '', 'true'),
(102, '479227', 'VISA', '32', 'TURK EKONOMI BANKASI A.S.', 'CREDIT CARD', 'BUSINESS', 'true'),
(103, '489494', 'VISA', '32', 'TURK EKONOMI BANKASI A.S.', 'CREDIT CARD', 'CLASSIC', 'false'),
(104, '489495', 'VISA', '32', 'TURK EKONOMI BANKASI A.S.', 'CREDIT CARD', 'PLATINUM', 'false'),
(105, '489496', 'VISA', '32', 'TURK EKONOMI BANKASI A.S.', 'CREDIT CARD', 'BUSINESS', 'true'),
(106, '510138', 'MASTERCARD', '32', 'TURK EKONOMI BANKASI A.S.', 'CREDIT CARD', 'CLASSIC', 'false'),
(107, '510139', 'MASTERCARD', '32', 'TURK EKONOMI BANKASI A.S.', 'CREDIT CARD', 'GOLD', 'false'),
(108, '510221', 'MASTERCARD', '32', 'TURK EKONOMI BANKASI A.S.', 'CREDIT CARD', 'CLASSIC', 'false'),
(109, '512753', 'MASTERCARD', '32', 'TURK EKONOMI BANKASI A.S.', 'CREDIT CARD', 'GOLD', 'false'),
(110, '512803', 'MASTERCARD', '32', 'TURK EKONOMI BANKASI A.S.', 'CREDIT CARD', 'CLASSIC', 'false'),
(111, '516742', '', '32', 'TURK EKONOMI BANKASI A.S.', 'DEBIT CARD', '', 'false'),
(112, '519780', '', '32', 'TURK EKONOMI BANKASI A.S.', 'CREDIT CARD', '', 'true'),
(113, '524346', 'MASTERCARD', '32', 'TURK EKONOMI BANKASI A.S.', 'CREDIT CARD', 'PLATINUM', 'true'),
(114, '524839', 'MASTERCARD', '32', 'TURK EKONOMI BANKASI A.S.', 'CREDIT CARD', 'CLASSIC', 'false'),
(115, '524840', 'MASTERCARD', '32', 'TURK EKONOMI BANKASI A.S.', 'CREDIT CARD', 'CLASSIC', 'false'),
(116, '525314', 'MASTERCARD', '32', 'TURK EKONOMI BANKASI A.S.', 'CREDIT CARD', 'CLASSIC', 'false'),
(117, '527026', '', '32', 'TURK EKONOMI BANKASI A.S.', 'DEBIT CARD', '', 'false'),
(118, '528825', '', '32', 'TURK EKONOMI BANKASI A.S.', 'DEBIT CARD', '', 'false'),
(119, '528920', 'MASTERCARD', '32', 'TURK EKONOMI BANKASI A.S.', 'CREDIT CARD', 'PLATINUM', 'false'),
(120, '530853', 'MASTERCARD', '32', 'TURK EKONOMI BANKASI A.S.', 'CREDIT CARD', 'CLASSIC', 'false'),
(121, '531531', '', '32', 'TURK EKONOMI BANKASI A.S.', 'CREDIT CARD', '', 'false'),
(122, '532581', '', '32', 'TURK EKONOMI BANKASI A.S.', 'DEBIT CARD', '', 'false'),
(123, '534538', '', '32', 'TURK EKONOMI BANKASI A.S.', 'CREDIT CARD', '', 'false'),
(124, '535217', '', '32', 'TURK EKONOMI BANKASI A.S.', 'DEBIT CARD', '', 'false'),
(125, '542259', 'MASTERCARD', '32', 'TURK EKONOMI BANKASI A.S.', 'CREDIT CARD', 'TITANIUM', 'false'),
(126, '545124', 'MASTERCARD', '32', 'TURK EKONOMI BANKASI A.S.', 'CREDIT CARD', 'SIGNIA', 'false'),
(127, '545148', 'MASTERCARD', '32', 'TURK EKONOMI BANKASI A.S.', 'CREDIT CARD', 'SIGNIA', 'false'),
(128, '547985', 'MASTERCARD', '32', 'TURK EKONOMI BANKASI A.S.', 'CREDIT CARD', 'BUSINESS', 'true'),
(129, '549998', 'MASTERCARD', '32', 'TURK EKONOMI BANKASI A.S.', 'CREDIT CARD', 'CLASSIC', 'false'),
(130, '550449', 'MASTERCARD', '32', 'TURK EKONOMI BANKASI A.S.', 'CREDIT CARD', 'GOLD', 'false'),
(131, '552207', 'MASTERCARD', '32', 'TURK EKONOMI BANKASI A.S.', 'CREDIT CARD', 'PLATINUM', 'false'),
(132, '553090', 'MASTERCARD', '32', 'TURK EKONOMI BANKASI A.S.', 'CREDIT CARD', 'BUSINESS', 'true'),
(133, '606329', '', '32', 'TURK EKONOMI BANKASI A.S.', 'DEBIT CARD', '', 'false'),
(134, '676406', '', '32', 'TURK EKONOMI BANKASI A.S.', 'DEBIT CARD', '', 'false'),
(135, '413252', 'VISA', '46', 'AKBANK T.A.S.', 'CREDIT CARD', 'PLATINUM', 'false'),
(136, '425669', 'VISA', '46', 'AKBANK T.A.S.', 'CREDIT CARD', 'BUSINESS', 'true'),
(137, '432071', 'VISA', '46', 'AKBANK T.A.S.', 'CREDIT CARD', 'GOLD', 'false'),
(138, '432072', 'VISA', '46', 'AKBANK T.A.S.', 'CREDIT CARD', 'PLATINUM', 'false'),
(139, '435508', 'VISA', '46', 'AKBANK T.A.S.', 'CREDIT CARD', 'CLASSIC', 'false'),
(140, '435509', 'VISA', '46', 'AKBANK T.A.S.', 'CREDIT CARD', 'GOLD', 'false'),
(141, '474853', '', '46', 'AKBANK T.A.S.', 'DEBIT CARD', '', 'false'),
(142, '474854', '', '46', 'AKBANK T.A.S.', 'DEBIT CARD', '', 'false'),
(143, '512754', 'MASTERCARD', '46', 'AKBANK T.A.S.', 'CREDIT CARD', 'GOLD', 'false'),
(144, '516840', '', '46', 'AKBANK T.A.S.', 'DEBIT CARD', '', 'false'),
(145, '516841', '', '46', 'AKBANK T.A.S.', 'DEBIT CARD', '', 'false'),
(146, '520932', 'MASTERCARD', '46', 'AKBANK T.A.S.', 'CREDIT CARD', 'CLASSIC', 'false'),
(147, '521807', 'MASTERCARD', '46', 'AKBANK T.A.S.', 'CREDIT CARD', 'PLATINUM', 'false'),
(148, '521942', '', '46', 'AKBANK T.A.S.', 'DEBIT CARD', '', 'false'),
(149, '524347', 'MASTERCARD', '46', 'AKBANK T.A.S.', 'CREDIT CARD', 'PLATINUM', 'false'),
(150, '535280', '', '46', 'AKBANK T.A.S.', 'DEBIT CARD', '', 'true'),
(151, '552608', 'MASTERCARD', '46', 'AKBANK T.A.S.', 'CREDIT CARD', 'BUSINESS', 'true'),
(152, '552609', 'MASTERCARD', '46', 'AKBANK T.A.S.', 'CREDIT CARD', 'BUSINESS', 'true'),
(153, '553056', 'MASTERCARD', '46', 'AKBANK T.A.S.', 'CREDIT CARD', 'BUSINESS', 'true'),
(154, '557113', 'MASTERCARD', '46', 'AKBANK T.A.S.', 'CREDIT CARD', 'CLASSIC', 'false'),
(155, '557829', 'MASTERCARD', '46', 'AKBANK T.A.S.', 'CREDIT CARD', 'GOLD', 'false'),
(156, '589004', '', '46', 'AKBANK T.A.S.', 'DEBIT CARD', '', 'false'),
(157, '979206', '', '46', 'AKBANK T.A.S.', 'CREDIT CARD', '', 'false'),
(158, '979207', '', '46', 'AKBANK T.A.S.', 'CREDIT CARD', '', 'true'),
(159, '979208', '', '46', 'AKBANK T.A.S.', 'DEBIT CARD', '', 'false'),
(160, '403836', 'VISA', '59', 'SEKERBANK T.A.S.', 'CREDIT CARD', 'BUSINESS', 'true'),
(161, '411156', 'VISA', '59', 'SEKERBANK T.A.S.', 'CREDIT CARD', 'CLASSIC', 'false'),
(162, '411157', 'VISA', '59', 'SEKERBANK T.A.S.', 'CREDIT CARD', 'GOLD', 'false'),
(163, '411158', 'VISA', '59', 'SEKERBANK T.A.S.', 'CREDIT CARD', 'PLATINUM', 'false'),
(164, '411159', 'VISA', '59', 'SEKERBANK T.A.S.', 'CREDIT CARD', 'BUSINESS', 'true'),
(165, '421086', '', '59', 'SEKERBANK T.A.S.', 'DEBIT CARD', '', 'false'),
(166, '423833', '', '59', 'SEKERBANK T.A.S.', 'DEBIT CARD', '', 'false'),
(167, '433383', 'VISA', '59', 'SEKERBANK T.A.S.', 'CREDIT CARD', 'CLASSIC', 'false'),
(168, '459068', '', '59', 'SEKERBANK T.A.S.', 'DEBIT CARD', '', 'false'),
(169, '459268', '', '59', 'SEKERBANK T.A.S.', 'CREDIT CARD', '', 'false'),
(170, '489401', '', '59', 'SEKERBANK T.A.S.', 'DEBIT CARD', '', 'false'),
(171, '494063', 'VISA', '59', 'SEKERBANK T.A.S.', 'CREDIT CARD', 'GOLD', 'false'),
(172, '494064', 'VISA', '59', 'SEKERBANK T.A.S.', 'CREDIT CARD', 'CLASSIC', 'false'),
(173, '516846', '', '59', 'SEKERBANK T.A.S.', 'DEBIT CARD', '', 'false'),
(174, '519753', '', '59', 'SEKERBANK T.A.S.', 'CREDIT CARD', '', 'true'),
(175, '521394', 'MASTERCARD', '59', 'SEKERBANK T.A.S.', 'CREDIT CARD', 'PLATINUM', 'false'),
(176, '525404', 'MASTERCARD', '59', 'SEKERBANK T.A.S.', 'CREDIT CARD', 'CLASSIC', 'false'),
(177, '527657', '', '59', 'SEKERBANK T.A.S.', 'DEBIT CARD', '', 'false'),
(178, '530866', 'MASTERCARD', '59', 'SEKERBANK T.A.S.', 'CREDIT CARD', 'GOLD', 'false'),
(179, '547311', 'MASTERCARD', '59', 'SEKERBANK T.A.S.', 'CREDIT CARD', 'BUSINESS', 'true'),
(180, '549208', 'MASTERCARD', '59', 'SEKERBANK T.A.S.', 'CREDIT CARD', 'CLASSIC', 'false'),
(181, '589713', '', '59', 'SEKERBANK T.A.S.', 'DEBIT CARD', '', 'false'),
(182, '676832', '', '59', 'SEKERBANK T.A.S.', 'DEBIT CARD', '', 'false'),
(183, '374421', '', '62', 'T. GARANTI BANKASI A.S.', 'CREDIT CARD', '', 'false'),
(184, '374422', '', '62', 'T. GARANTI BANKASI A.S.', 'CREDIT CARD', '', 'false'),
(185, '374424', '', '62', 'T. GARANTI BANKASI A.S.', 'CREDIT CARD', '', 'false'),
(186, '374425', '', '62', 'T. GARANTI BANKASI A.S.', 'CREDIT CARD', '', 'true'),
(187, '374426', '', '62', 'T. GARANTI BANKASI A.S.', 'CREDIT CARD', '', 'true'),
(188, '374427', '', '62', 'T. GARANTI BANKASI A.S.', 'CREDIT CARD', '', 'false'),
(189, '375622', '', '62', 'T. GARANTI BANKASI A.S.', 'CREDIT CARD', '', 'false'),
(190, '375623', '', '62', 'T. GARANTI BANKASI A.S.', 'CREDIT CARD', '', 'false'),
(191, '375624', '', '62', 'T. GARANTI BANKASI A.S.', 'CREDIT CARD', '', 'false'),
(192, '375625', '', '62', 'T. GARANTI BANKASI A.S.', 'CREDIT CARD', '', 'true'),
(193, '375626', '', '62', 'T. GARANTI BANKASI A.S.', 'CREDIT CARD', '', 'true'),
(194, '375627', '', '62', 'T. GARANTI BANKASI A.S.', 'CREDIT CARD', '', 'false'),
(195, '375628', '', '62', 'T. GARANTI BANKASI A.S.', 'CREDIT CARD', '', 'false'),
(196, '375629', '', '62', 'T. GARANTI BANKASI A.S.', 'CREDIT CARD', '', 'false'),
(197, '375631', '', '62', 'T. GARANTI BANKASI A.S.', 'CREDIT CARD', '', 'false'),
(198, '377137', '', '62', 'T. GARANTI BANKASI A.S.', 'CREDIT CARD', '', 'false'),
(199, '401738', '', '62', 'T. GARANTI BANKASI A.S.', 'DEBIT CARD', '', 'false'),
(200, '403280', 'VISA', '62', 'T. GARANTI BANKASI A.S.', 'CREDIT CARD', 'CLASSIC', 'false'),
(201, '403666', 'VISA', '62', 'T. GARANTI BANKASI A.S.', 'CREDIT CARD', 'BUSINESS', 'true'),
(202, '404308', 'VISA', '62', 'T. GARANTI BANKASI A.S.', 'CREDIT CARD', 'CLASSIC', 'false'),
(203, '405051', '', '62', 'T. GARANTI BANKASI A.S.', 'DEBIT CARD', '', 'false'),
(204, '405090', '', '62', 'T. GARANTI BANKASI A.S.', 'DEBIT CARD', '', 'false'),
(205, '409219', '', '62', 'T. GARANTI BANKASI A.S.', 'DEBIT CARD', '', 'false'),
(206, '410141', '', '62', 'T. GARANTI BANKASI A.S.', 'DEBIT CARD', '', 'false'),
(207, '413836', 'VISA', '62', 'T. GARANTI BANKASI A.S.', 'CREDIT CARD', 'PLATINUM', 'false'),
(208, '420556', '', '62', 'T. GARANTI BANKASI A.S.', 'DEBIT CARD', '', 'false'),
(209, '420557', '', '62', 'T. GARANTI BANKASI A.S.', 'DEBIT CARD', '', 'false'),
(210, '426886', 'VISA', '62', 'T. GARANTI BANKASI A.S.', 'CREDIT CARD', 'CLASSIC', 'false'),
(211, '426887', 'VISA', '62', 'T. GARANTI BANKASI A.S.', 'CREDIT CARD', 'GOLD', 'false'),
(212, '426888', 'VISA', '62', 'T. GARANTI BANKASI A.S.', 'CREDIT CARD', 'PLATINUM', 'false'),
(213, '426889', '', '62', 'T. GARANTI BANKASI A.S.', 'DEBIT CARD', '', 'false'),
(214, '427314', 'VISA', '62', 'T. GARANTI BANKASI A.S.', 'CREDIT CARD', 'BUSINESS', 'true'),
(215, '427315', 'VISA', '62', 'T. GARANTI BANKASI A.S.', 'CREDIT CARD', 'BUSINESS', 'true'),
(216, '428220', 'VISA', '62', 'T. GARANTI BANKASI A.S.', 'CREDIT CARD', 'CLASSIC', 'false'),
(217, '428221', 'VISA', '62', 'T. GARANTI BANKASI A.S.', 'CREDIT CARD', 'PLATINUM', 'false'),
(218, '432154', 'VISA', '62', 'T. GARANTI BANKASI A.S.', 'CREDIT CARD', 'CLASSIC', 'false'),
(219, '448472', 'VISA', '62', 'T. GARANTI BANKASI A.S.', 'CREDIT CARD', 'BUSINESS', 'true'),
(220, '461668', 'VISA', '62', 'T. GARANTI BANKASI A.S.', 'CREDIT CARD', 'PLATINUM', 'false'),
(221, '462274', 'VISA', '62', 'T. GARANTI BANKASI A.S.', 'CREDIT CARD', 'BUSINESS', 'true'),
(222, '467293', 'VISA', '62', 'T. GARANTI BANKASI A.S.', 'CREDIT CARD', 'GOLD', 'false'),
(223, '467294', 'VISA', '62', 'T. GARANTI BANKASI A.S.', 'CREDIT CARD', 'CLASSIC', 'false'),
(224, '467295', 'VISA', '62', 'T. GARANTI BANKASI A.S.', 'CREDIT CARD', 'BUSINESS', 'true'),
(225, '474151', 'VISA', '62', 'T. GARANTI BANKASI A.S.', 'CREDIT CARD', 'CLASSIC', 'false'),
(226, '479682', '', '62', 'T. GARANTI BANKASI A.S.', 'DEBIT CARD', '', 'true'),
(227, '482489', 'VISA', '62', 'T. GARANTI BANKASI A.S.', 'CREDIT CARD', 'CLASSIC', 'false'),
(228, '482490', 'VISA', '62', 'T. GARANTI BANKASI A.S.', 'CREDIT CARD', 'GOLD', 'false'),
(229, '482491', 'VISA', '62', 'T. GARANTI BANKASI A.S.', 'CREDIT CARD', 'PLATINUM', 'false'),
(230, '486567', 'VISA', '62', 'T. GARANTI BANKASI A.S.', 'CREDIT CARD', 'BUSINESS', 'true'),
(231, '487074', 'VISA', '62', 'T. GARANTI BANKASI A.S.', 'CREDIT CARD', 'CLASSIC', 'false'),
(232, '487075', 'VISA', '62', 'T. GARANTI BANKASI A.S.', 'CREDIT CARD', 'CLASSIC', 'false'),
(233, '489455', '', '62', 'T. GARANTI BANKASI A.S.', 'DEBIT CARD', '', 'false'),
(234, '489478', 'VISA', '62', 'T. GARANTI BANKASI A.S.', 'CREDIT CARD', 'GOLD', 'false'),
(235, '490175', 'VISA', '62', 'T. GARANTI BANKASI A.S.', 'CREDIT CARD', 'CLASSIC', 'false'),
(236, '492186', 'VISA', '62', 'T. GARANTI BANKASI A.S.', 'CREDIT CARD', 'CLASSIC', 'false'),
(237, '492187', 'VISA', '62', 'T. GARANTI BANKASI A.S.', 'CREDIT CARD', 'GOLD', 'false'),
(238, '492193', 'VISA', '62', 'T. GARANTI BANKASI A.S.', 'CREDIT CARD', 'CLASSIC', 'false'),
(239, '493845', 'VISA', '62', 'T. GARANTI BANKASI A.S.', 'CREDIT CARD', 'GOLD', 'false'),
(240, '514915', 'MASTERCARD', '62', 'T. GARANTI BANKASI A.S.', 'CREDIT CARD', 'PLATINUM', 'false'),
(241, '516943', '', '62', 'T. GARANTI BANKASI A.S.', 'DEBIT CARD', '', 'false'),
(242, '516961', '', '62', 'T. GARANTI BANKASI A.S.', 'DEBIT CARD', '', 'false'),
(243, '517040', '', '62', 'T. GARANTI BANKASI A.S.', 'DEBIT CARD', '', 'false'),
(244, '517041', '', '62', 'T. GARANTI BANKASI A.S.', 'DEBIT CARD', '', 'false'),
(245, '517042', '', '62', 'T. GARANTI BANKASI A.S.', 'DEBIT CARD', '', 'false'),
(246, '517048', '', '62', 'T. GARANTI BANKASI A.S.', 'DEBIT CARD', '', 'false'),
(247, '517049', '', '62', 'T. GARANTI BANKASI A.S.', 'DEBIT CARD', '', 'false'),
(248, '520097', 'MASTERCARD', '62', 'T. GARANTI BANKASI A.S.', 'CREDIT CARD', 'CLASSIC', 'false'),
(249, '520922', 'MASTERCARD', '62', 'T. GARANTI BANKASI A.S.', 'CREDIT CARD', 'CLASSIC', 'false'),
(250, '520940', 'MASTERCARD', '62', 'T. GARANTI BANKASI A.S.', 'CREDIT CARD', 'CLASSIC', 'false'),
(251, '520988', 'MASTERCARD', '62', 'T. GARANTI BANKASI A.S.', 'CREDIT CARD', 'GOLD', 'false'),
(252, '521368', 'MASTERCARD', '62', 'T. GARANTI BANKASI A.S.', 'CREDIT CARD', 'PLATINUM', 'false'),
(253, '521824', 'MASTERCARD', '62', 'T. GARANTI BANKASI A.S.', 'CREDIT CARD', 'PLATINUM', 'false'),
(254, '521825', 'MASTERCARD', '62', 'T. GARANTI BANKASI A.S.', 'CREDIT CARD', 'PLATINUM', 'false'),
(255, '521832', 'MASTERCARD', '62', 'T. GARANTI BANKASI A.S.', 'CREDIT CARD', 'PLATINUM', 'false'),
(256, '522204', 'MASTERCARD', '62', 'T. GARANTI BANKASI A.S.', 'CREDIT CARD', 'GOLD', 'false'),
(257, '524659', '', '62', 'T. GARANTI BANKASI A.S.', 'CREDIT CARD', '', 'false'),
(258, '526955', '', '62', 'T. GARANTI BANKASI A.S.', 'CREDIT CARD', '', 'false'),
(259, '528939', 'MASTERCARD', '62', 'T. GARANTI BANKASI A.S.', 'CREDIT CARD', 'PLATINUM', 'false'),
(260, '528956', 'MASTERCARD', '62', 'T. GARANTI BANKASI A.S.', 'CREDIT CARD', 'PLATINUM', 'false'),
(261, '533169', 'MASTERCARD', '62', 'T. GARANTI BANKASI A.S.', 'CREDIT CARD', 'BUSINESS', 'true'),
(262, '534261', 'MASTERCARD', '62', 'T. GARANTI BANKASI A.S.', 'CREDIT CARD', 'WORLD', 'false'),
(263, '535488', '', '62', 'T. GARANTI BANKASI A.S.', 'DEBIT CARD', '', 'true'),
(264, '540036', 'MASTERCARD', '62', 'T. GARANTI BANKASI A.S.', 'CREDIT CARD', 'CLASSIC', 'false'),
(265, '540037', 'MASTERCARD', '62', 'T. GARANTI BANKASI A.S.', 'CREDIT CARD', 'BUSINESS', 'true'),
(266, '540118', '', '62', 'T. GARANTI BANKASI A.S.', 'CREDIT CARD', '', 'false'),
(267, '540226', 'MASTERCARD', '62', 'T. GARANTI BANKASI A.S.', 'CREDIT CARD', 'CLASSIC', 'false'),
(268, '540227', 'MASTERCARD', '62', 'T. GARANTI BANKASI A.S.', 'CREDIT CARD', 'CLASSIC', 'false'),
(269, '540669', 'MASTERCARD', '62', 'T. GARANTI BANKASI A.S.', 'CREDIT CARD', 'CLASSIC', 'false'),
(270, '540709', 'MASTERCARD', '62', 'T. GARANTI BANKASI A.S.', 'CREDIT CARD', 'CLASSIC', 'false'),
(271, '541865', 'MASTERCARD', '62', 'T. GARANTI BANKASI A.S.', 'CREDIT CARD', 'GOLD', 'false'),
(272, '542030', 'MASTERCARD', '62', 'T. GARANTI BANKASI A.S.', 'CREDIT CARD', 'GOLD', 'false'),
(273, '543738', '', '62', 'T. GARANTI BANKASI A.S.', 'CREDIT CARD', '', 'false'),
(274, '544078', 'MASTERCARD', '62', 'T. GARANTI BANKASI A.S.', 'CREDIT CARD', 'CLASSIC', 'false'),
(275, '545102', 'MASTERCARD', '62', 'T. GARANTI BANKASI A.S.', 'CREDIT CARD', 'SIGNIA', 'false'),
(276, '546001', 'MASTERCARD', '62', 'T. GARANTI BANKASI A.S.', 'CREDIT CARD', 'CLASSIC', 'false'),
(277, '547302', 'MASTERCARD', '62', 'T. GARANTI BANKASI A.S.', 'CREDIT CARD', 'BUSINESS', 'true'),
(278, '548935', '', '62', 'T. GARANTI BANKASI A.S.', 'CREDIT CARD', '', 'false'),
(279, '552095', 'MASTERCARD', '62', 'T. GARANTI BANKASI A.S.', 'CREDIT CARD', 'PLATINUM', 'false'),
(280, '553130', 'MASTERCARD', '62', 'T. GARANTI BANKASI A.S.', 'CREDIT CARD', 'BUSINESS', 'true'),
(281, '554796', 'MASTERCARD', '62', 'T. GARANTI BANKASI A.S.', 'CREDIT CARD', 'GOLD', 'false'),
(282, '554960', 'MASTERCARD', '62', 'T. GARANTI BANKASI A.S.', 'CREDIT CARD', 'CLASSIC', 'false'),
(283, '557023', 'MASTERCARD', '62', 'T. GARANTI BANKASI A.S.', 'CREDIT CARD', 'CLASSIC', 'false'),
(284, '557945', 'MASTERCARD', '62', 'T. GARANTI BANKASI A.S.', 'CREDIT CARD', 'CLASSIC ', 'false'),
(285, '558699', 'MASTERCARD', '62', 'T. GARANTI BANKASI A.S.', 'CREDIT CARD', 'BUSINESS', 'true'),
(286, '589318', '', '62', 'T. GARANTI BANKASI A.S.', 'DEBIT CARD', '', 'false'),
(287, '622403', '', '62', 'T. GARANTI BANKASI A.S.', 'CREDIT CARD', '', 'true'),
(288, '670606', '', '62', 'T. GARANTI BANKASI A.S.', 'DEBIT CARD', '', 'false'),
(289, '676255', '', '62', 'T. GARANTI BANKASI A.S.', 'DEBIT CARD', '', 'false'),
(290, '676283', '', '62', 'T. GARANTI BANKASI A.S.', 'DEBIT CARD', '', 'false'),
(291, '676651', '', '62', 'T. GARANTI BANKASI A.S.', 'DEBIT CARD', '', 'false'),
(292, '676827', '', '62', 'T. GARANTI BANKASI A.S.', 'DEBIT CARD', '', 'false'),
(293, '979236', '', '62', 'T. GARANTI BANKASI A.S.', 'DEBIT CARD', '', 'false'),
(294, '418342', 'VISA', '64', 'T. IS BANKASI A.S.', 'CREDIT CARD', 'CLASSIC', 'false'),
(295, '418343', 'VISA', '64', 'T. IS BANKASI A.S.', 'CREDIT CARD', 'CLASSIC', 'false'),
(296, '418344', 'VISA', '64', 'T. IS BANKASI A.S.', 'CREDIT CARD', 'GOLD', 'false'),
(297, '418345', 'VISA', '64', 'T. IS BANKASI A.S.', 'CREDIT CARD', 'GOLD', 'false'),
(298, '441075', '', '64', 'T. IS BANKASI A.S.', 'DEBIT CARD', '', 'false'),
(299, '450803', 'VISA', '64', 'T.IS BANKASI A.S.', 'CREDIT CARD', 'BUSINESS', 'true'),
(300, '454318', 'VISA', '64', 'T. IS BANKASI A.S.', 'CREDIT CARD', 'CLASSIC', 'false'),
(301, '454358', 'VISA', '64', 'T.IS BANKASI A.S.', 'CREDIT CARD', 'GOLD', 'false'),
(302, '454359', 'VISA', '64', 'T.IS BANKASI A.S.', 'CREDIT CARD', 'GOLD', 'false'),
(303, '454360', 'VISA', '64', 'T.IS BANKASI A.S.', 'CREDIT CARD', 'CLASSIC', 'false'),
(304, '479610', '', '64', 'T. IS BANKASI A.S.', 'CREDIT CARD', '', 'false'),
(305, '510152', 'MASTERCARD', '64', 'T. IS BANKASI A.S.', 'CREDIT CARD', 'CLASSIC', 'false'),
(306, '540667', 'MASTERCARD', '64', 'T.IS BANKASI A.S.', 'CREDIT CARD', 'CLASSIC', 'false'),
(307, '540668', 'MASTERCARD', '64', 'T.IS BANKASI A.S.', 'CREDIT CARD', 'GOLD', 'false'),
(308, '543771', 'MASTERCARD', '64', 'T.IS BANKASI A.S.', 'CREDIT CARD', 'CLASSIC', 'false'),
(309, '548237', '', '64', 'T. IS BANKASI A.S.', 'CREDIT CARD', '', 'false'),
(310, '552096', 'MASTERCARD', '64', 'T.IS BANKASI A.S.', 'CREDIT CARD', 'PLATINUM', 'false'),
(311, '553058', 'MASTERCARD', '64', 'T.IS BANKASI A.S.', 'CREDIT CARD', 'BUSINESS', 'true'),
(312, '589283', '', '64', 'T. IS BANKASI A.S.', 'DEBIT CARD', '', 'false'),
(313, '401622', '', '67', 'YAPI VE KREDI BANKASI A.S.', 'DEBIT CARD', '', 'false'),
(314, '404809', 'VISA', '67', 'YAPI VE KREDI BANKASI A.S.', 'CREDIT CARD', 'CLASSIC', 'false'),
(315, '413382', '', '67', 'YAPI VE KREDI BANKASI A.S.', 'DEBIT CARD', '', 'false'),
(316, '414392', '', '67', 'YAPI VE KREDI BANKASI A.S.', 'DEBIT CARD', '', 'false'),
(317, '420342', '', '67', 'YAPI VE KREDI BANKASI A.S.', 'PREPAID CARD', '', 'false'),
(318, '420343', '', '67', 'YAPI VE KREDI BANKASI A.S.', 'PREPAID CARD', '', 'false'),
(319, '442106', '', '67', 'YAPI VE KREDI BANKASI A.S.', 'DEBIT CARD', '', 'false'),
(320, '446212', 'VISA', '67', 'YAPI VE KREDI BANKASI A.S.', 'CREDIT CARD', 'CLASSIC', 'false'),
(321, '450634', 'VISA', '67', 'YAPI VE KREDI BANKASI A.S.', 'CREDIT CARD', 'CLASSIC', 'false'),
(322, '455359', 'VISA', '67', 'YAPI VE KREDI BANKASI A.S.', 'CREDIT CARD', 'BUSINESS', 'true'),
(323, '479612', '', '67', 'YAPI VE KREDI BANKASI A.S.', 'DEBIT CARD', '', 'false'),
(324, '479794', 'VISA', '67', 'YAPI VE KREDI BANKASI A.S.', 'CREDIT CARD', 'CLASSIC', 'false'),
(325, '479795', 'VISA', '67', 'YAPI VE KREDI BANKASI A.S.', 'CREDIT CARD', 'GOLD', 'false'),
(326, '490983', '', '67', 'YAPI VE KREDI BANKASI A.S.', 'DEBIT CARD', '', 'false'),
(327, '491205', 'VISA', '67', 'YAPI VE KREDI BANKASI A.S.', 'CREDIT CARD', 'CLASSIC', 'false'),
(328, '491206', 'VISA', '67', 'YAPI VE KREDI BANKASI A.S.', 'CREDIT CARD', 'PLATINUM', 'false'),
(329, '492128', 'VISA', '67', 'YAPI VE KREDI BANKASI A.S.', 'CREDIT CARD', 'CLASSIC', 'false'),
(330, '492130', 'VISA', '67', 'YAPI VE KREDI BANKASI A.S.', 'CREDIT CARD', 'GOLD', 'false'),
(331, '492131', 'VISA', '67', 'YAPI VE KREDI BANKASI A.S.', 'CREDIT CARD', 'GOLD', 'false'),
(332, '494314', '', '67', 'YAPI VE KREDI BANKASI A.S.', 'DEBIT CARD', '', 'false'),
(333, '516888', '', '67', 'YAPI VE KREDI BANKASI A.S.', 'DEBIT CARD', '', 'false'),
(334, '525864', '', '67', 'YAPI VE KREDI BANKASI A.S.', 'CREDIT CARD', '', 'false'),
(335, '535435', '', '67', 'YAPI VE KREDI BANKASI A.S.', 'DEBIT CARD', '', 'false'),
(336, '535601', '', '67', 'YAPI VE KREDI BANKASI A.S.', 'DEBIT CARD', '', 'false'),
(337, '535602', '', '67', 'YAPI VE KREDI BANKASI A.S.', 'DEBIT CARD', '', 'true'),
(338, '540061', 'MASTERCARD', '67', 'YAPI VE KREDI BANKASI A.S.', 'CREDIT CARD', 'CLASSIC', 'false'),
(339, '540062', 'MASTERCARD', '67', 'YAPI VE KREDI BANKASI A.S.', 'CREDIT CARD', 'CLASSIC', 'false'),
(340, '540063', 'MASTERCARD', '67', 'YAPI VE KREDI BANKASI A.S.', 'CREDIT CARD', 'GOLD', 'false'),
(341, '540122', 'MASTERCARD', '67', 'YAPI VE KREDI BANKASI A.S.', 'CREDIT CARD', ' CLASSIC', 'false'),
(342, '540129', 'MASTERCARD', '67', 'YAPI VE KREDI BANKASI A.S.', 'CREDIT CARD', ' GOLD', 'false'),
(343, '542117', 'MASTERCARD', '67', 'YAPI VE KREDI BANKASI A.S.', 'CREDIT CARD', ' CLASSIC', 'false'),
(344, '545103', 'MASTERCARD', '67', 'YAPI VE KREDI BANKASI A.S.', 'CREDIT CARD', ' SIGNIA', 'false'),
(345, '552645', 'MASTERCARD', '67', 'YAPI VE KREDI BANKASI A.S.', 'CREDIT CARD', 'BUSINESS', 'true'),
(346, '552659', 'MASTERCARD', '67', 'YAPI VE KREDI BANKASI A.S.', 'CREDIT CARD', 'BUSINESS', 'true'),
(347, '603797', '', '67', 'YAPI VE KREDI BANKASI A.S.', 'DEBIT CARD', '', 'false'),
(348, '639004', '', '67', 'YAPI VE KREDI BANKASI A.S.', 'DEBIT CARD', '', 'false'),
(349, '676166', '', '67', 'YAPI VE KREDI BANKASI A.S.', 'DEBIT CARD', '', 'false'),
(350, '437897', '', '92', 'CITIBANK A.S.', 'CREDIT CARD', '', 'true'),
(351, '471509', '', '92', 'CITIBANK A.S.', 'CREDIT CARD', '', 'true'),
(352, '553493', '', '92', 'CITIBANK A.S.', 'CREDIT CARD', '', 'true'),
(353, '555087', '', '92', 'CITIBANK A.S.', 'CREDIT CARD', '', 'true'),
(354, '518599', 'MASTERCARD', '96', 'TURKISH BANK A.S.', 'CREDIT CARD', 'GOLD', 'false'),
(355, '529939', 'MASTERCARD', '96', 'TURKISH BANK A.S.', 'CREDIT CARD', 'CLASSIC', 'false'),
(356, '552098', 'MASTERCARD', '96', 'TURKISH BANK A.S.', 'CREDIT CARD', 'PLATINUM', 'false'),
(357, '589288', '', '96', 'TURKISH BANK A.S.', 'DEBIT CARD', '', 'false'),
(358, '677522', '', '96', 'TURKISH BANK A.S.', 'DEBIT CARD', '', 'false'),
(359, '400684', 'VISA', '99', 'ING BANK A.S.', 'CREDIT CARD', 'CLASSIC', 'false'),
(360, '408579', 'VISA', '99', 'ING BANK A.S.', 'CREDIT CARD', 'CLASSIC', 'false'),
(361, '408581', '', '99', 'ING BANK A.S.', 'DEBIT CARD', '', 'false'),
(362, '414070', 'VISA', '99', 'ING BANK A.S.', 'CREDIT CARD', 'PLATINUM', 'false'),
(363, '420322', 'VISA', '99', 'ING BANK A.S.', 'CREDIT CARD', 'GOLD', 'false'),
(364, '420323', 'VISA', '99', 'ING BANK A.S.', 'CREDIT CARD', 'GOLD', 'false'),
(365, '420324', 'VISA', '99', 'ING BANK A.S.', 'CREDIT CARD', 'PLATINUM', 'false'),
(366, '455571', 'VISA', '99', 'ING BANK A.S.', 'CREDIT CARD', 'GOLD', 'false'),
(367, '474823', '', '99', 'ING BANK A.S.', 'DEBIT CARD', '', 'false'),
(368, '479632', '', '99', 'ING BANK A.S.', 'DEBIT CARD', '', 'true'),
(369, '479633', '', '99', 'ING BANK A.S.', 'DEBIT CARD', '', 'false'),
(370, '480296', 'VISA', '99', 'ING BANK A.S.', 'CREDIT CARD', 'BUSINESS', 'true'),
(371, '490805', 'VISA', '99', 'ING BANK A.S.', 'CREDIT CARD', 'CLASSIC', 'false'),
(372, '490806', 'VISA', '99', 'ING BANK A.S.', 'CREDIT CARD', 'GOLD', 'false'),
(373, '490807', 'VISA', '99', 'ING BANK A.S.', 'CREDIT CARD', 'BUSINESS', 'true'),
(374, '490808', '', '99', 'ING BANK A.S.', 'DEBIT CARD', '', 'false'),
(375, '510151', 'MASTERCARD', '99', 'ING BANK A.S.', 'CREDIT CARD', 'CLASSIC', 'false'),
(376, '514140', '', '99', 'ING BANK A.S.', 'CREDIT CARD', '', 'false'),
(377, '515755', '', '99', 'ING BANK A.S.', 'DEBIT CARD', '', 'false'),
(378, '515895', '', '99', 'ING BANK A.S.', 'DEBIT CARD', '', 'false'),
(379, '517946', '', '99', 'ING BANK A.S.', 'CREDIT CARD', '', 'false'),
(380, '526973', '', '99', 'ING BANK A.S.', 'CREDIT CARD', '', 'false'),
(381, '526975', '', '99', 'ING BANK A.S.', 'CREDIT CARD', '', 'false'),
(382, '532443', 'MASTERCARD', '99', 'ING BANK A.S.', 'CREDIT CARD', 'CLASSIC', 'false'),
(383, '535137', '', '99', 'ING BANK A.S.', 'DEBIT CARD', '', 'true'),
(384, '540024', 'MASTERCARD', '99', 'ING BANK A.S.', 'CREDIT CARD', 'CLASSIC', 'false'),
(385, '540025', 'MASTERCARD', '99', 'ING BANK A.S.', 'CREDIT CARD', 'BUSINESS', 'true'),
(386, '542029', 'MASTERCARD', '99', 'ING BANK A.S.', 'CREDIT CARD', 'GOLD', 'false'),
(387, '542605', 'MASTERCARD', '99', 'ING BANK A.S.', 'CREDIT CARD', 'CLASSIC', 'false'),
(388, '542965', 'MASTERCARD', '99', 'ING BANK A.S.', 'CREDIT CARD', 'GOLD', 'false'),
(389, '542967', 'MASTERCARD', '99', 'ING BANK A.S.', 'CREDIT CARD', 'GOLD', 'false'),
(390, '547765', 'MASTERCARD', '99', 'ING BANK A.S.', 'CREDIT CARD', 'BUSINESS', 'true'),
(391, '548819', 'MASTERCARD', '99', 'ING BANK A.S.', 'CREDIT CARD', 'GOLD', 'false'),
(392, '550074', '', '99', 'ING BANK A.S.', 'CREDIT CARD', '', 'false'),
(393, '554297', 'MASTERCARD', '99', 'ING BANK A.S.', 'CREDIT CARD', 'CLASSIC', 'false'),
(394, '554570', 'MASTERCARD', '99', 'ING BANK A.S.', 'CREDIT CARD', 'PLATINUM', 'false'),
(395, '603322', '', '99', 'ING BANK A.S.', 'DEBIT CARD', '', 'false'),
(396, '676366', '', '99', 'ING BANK A.S.', 'DEBIT CARD', '', 'false'),
(397, '676402', '', '99', 'ING BANK A.S.', 'DEBIT CARD', '', 'false'),
(398, '522075', '', '103', 'FIBABANKA A.S.', 'CREDIT CARD', '', 'false'),
(399, '522265', '', '103', 'FIBABANKA A.S.', 'CREDIT CARD', '', 'false'),
(400, '522566', '', '103', 'FIBABANKA A.S.', 'CREDIT CARD', '', 'false'),
(401, '522576', '', '103', 'FIBABANKA A.S.', 'CREDIT CARD', '', 'false'),
(402, '559056', '', '103', 'FIBABANKA A.S.', 'CREDIT CARD', '', 'true'),
(403, '603343', '', '103', 'FIBABANKA A.S.', 'DEBIT CARD', '', 'false'),
(404, '603005', '', '108', 'TURKLAND BANK A.S.', 'DEBIT CARD', '', 'false'),
(405, '676429', '', '108', 'TURKLAND BANK A.S.', 'DEBIT CARD', '', 'false'),
(406, '413729', '', '109', 'TEKSTIL BANKASI A.S.', 'CREDIT CARD', '', 'false'),
(407, '413972', '', '109', 'ICBC TURKEY BANK A.S.', 'CREDIT CARD', '', 'false'),
(408, '445988', '', '109', 'TEKSTIL BANKASI A.S.', 'DEBIT CARD', '', 'false'),
(409, '456057', '', '109', 'TEKSTIL BANKASI A.S.', 'CREDIT CARD', '', 'false'),
(410, '456059', '', '109', 'TEKSTIL BANKASI A.S.', 'CREDIT CARD', '', 'false'),
(411, '514025', '', '109', 'ICBC TURKEY BANK A.S.', 'CREDIT CARD', '', 'false'),
(412, '521875', '', '109', 'TEKSTIL BANKASI A.S.', 'CREDIT CARD', '', 'false'),
(413, '527080', '', '109', 'ICBC TURKEY BANK A.S.', 'CREDIT CARD', '', 'false'),
(414, '545769', '', '109', 'TEKSTIL BANKASI A.S.', 'CREDIT CARD', '', 'false'),
(415, '545770', '', '109', 'TEKSTIL BANKASI A.S.', 'CREDIT CARD', '', 'false'),
(416, '558634', '', '109', 'TEKSTIL BANKASI A.S.', 'CREDIT CARD', '', 'true'),
(417, '589416', '', '109', 'TEKSTIL BANKASI A.S.', 'DEBIT CARD', '', 'false'),
(418, '402277', 'VISA', '111', 'FINANS BANK A.S.', 'CREDIT CARD', 'CLASSIC', 'false'),
(419, '402278', 'VISA', '111', 'FINANS BANK A.S.', 'CREDIT CARD', 'GOLD', 'false'),
(420, '402563', 'VISA', '111', 'FINANS BANK A.S.', 'CREDIT CARD', 'CLASSIC', 'false'),
(421, '403082', 'VISA', '111', 'FINANS BANK A.S.', 'CREDIT CARD', 'BUSINESS', 'true'),
(422, '409364', 'VISA', '111', 'QNB FINANSBANK A.S.', 'CREDIT CARD', 'CLASSIC', 'false'),
(423, '410147', 'VISA', '111', 'QNB FINANSBANK A.S.', 'CREDIT CARD', 'CLASSIC', 'false'),
(424, '413583', 'VISA', '111', 'FINANS BANK A.S.', 'CREDIT CARD', 'GOLD', 'false'),
(425, '414388', 'VISA', '111', 'QNB FINANSBANK A.S.', 'CREDIT CARD', 'CLASSIC', 'false'),
(426, '415565', 'VISA', '111', 'FINANS BANK A.S.', 'CREDIT CARD', 'CLASSIC', 'false'),
(427, '420092', '', '111', 'FINANS BANK A.S.', 'DEBIT CARD', '', 'false'),
(428, '422376', 'VISA', '111', 'QNB FINANSBANK A.S.', 'CREDIT CARD', 'CLASSIC', 'false'),
(429, '423277', 'VISA', '111', 'FINANS BANK A.S.', 'CREDIT CARD', 'CLASSIC', 'false'),
(430, '423398', 'VISA', '111', 'FINANS BANK A.S.', 'CREDIT CARD', 'CLASSIC', 'false'),
(431, '427311', 'VISA', '111', 'FINANS BANK A.S.', 'CREDIT CARD', 'BUSINESS', 'true'),
(432, '435653', 'VISA', '111', 'QNB FINANSBANK A.S.', 'CREDIT CARD', 'PLATINUM', 'false'),
(433, '441007', 'VISA', '111', 'QNB FINANSBANK A.S.', 'CREDIT CARD', 'CLASSIC', 'false'),
(434, '442395', '', '111', 'QNB FINANSBANK A.S.', 'CREDIT CARD', '', 'false'),
(435, '444029', 'VISA', '111', 'FINANS BANK A.S.', 'CREDIT CARD', 'GOLD', 'false'),
(436, '459333', '', '111', 'FINANS BANK A.S.', 'DEBIT CARD', '', 'false'),
(437, '479679', '', '111', 'FINANS BANK A.S.', 'DEBIT CARD', '', 'true'),
(438, '498749', '', '111', 'FINANS BANK A.S.', 'DEBIT CARD', '', 'false'),
(439, '499850', 'VISA', '111', 'FINANS BANK A.S.', 'CREDIT CARD', 'CLASSIC', 'false'),
(440, '499851', 'VISA', '111', 'QNB FINANSBANK A.S.', 'CREDIT CARD', 'PLATINUM', 'false'),
(441, '499852', 'VISA', '111', 'QNB FINANSBANK A.S.', 'CREDIT CARD', 'CLASSIC', 'false'),
(442, '499853', '', '111', 'FINANS BANK A.S.', 'DEBIT CARD', '', 'false'),
(443, '519324', 'MASTERCARD', '111', 'QNB FINANSBANK A.S.', 'CREDIT CARD', 'PLATINUM', 'false'),
(444, '521022', 'MASTERCARD', '111', 'FINANS BANK A.S.', 'CREDIT CARD', 'CLASSIC', 'false'),
(445, '521584', '', '111', 'FINANS BANK A.S.', 'DEBIT CARD', '', 'false'),
(446, '521836', 'MASTERCARD', '111', 'QNB FINANSBANK A.S.', 'CREDIT CARD', 'PLATINUM', 'false'),
(447, '529572', 'MASTERCARD', '111', 'QNB FINANSBANK A.S.', 'CREDIT CARD', 'PLATINUM', 'false'),
(448, '530818', '', '111', 'QNB FINANSBANK A.S.', 'CREDIT CARD', '', 'false'),
(449, '531157', 'MASTERCARD', '111', 'QNB FINANSBANK A.S.', 'CREDIT CARD', 'CLASSIC', 'false'),
(450, '542404', '', '111', 'FINANS BANK A.S.', 'CREDIT CARD', '', 'true'),
(451, '545120', 'MASTERCARD', '111', 'QNB FINANSBANK A.S.', 'CREDIT CARD', 'SIGNIA', 'false'),
(452, '545616', 'MASTERCARD', '111', 'FINANS BANK A.S.', 'CREDIT CARD', 'CLASSIC', 'false'),
(453, '545847', 'MASTERCARD', '111', 'FINANS BANK A.S.', 'CREDIT CARD', 'GOLD', 'false'),
(454, '547567', 'MASTERCARD', '111', 'FINANS BANK A.S.', 'CREDIT CARD', 'BUSINESS', 'true'),
(455, '547800', 'MASTERCARD', '111', 'QNB FINANSBANK A.S.', 'CREDIT CARD', 'BUSINESS', 'true'),
(456, '677238', '', '111', 'FINANS BANK A.S.', 'DEBIT CARD', '', 'false'),
(457, '979202', '', '111', 'QNB FINANSBANK A.S.', 'DEBIT CARD', '', 'false'),
(458, '979203', '', '111', 'QNB FINANSBANK A.S.', 'CREDIT CARD', '', 'false'),
(459, '405903', '', '123', 'HSBC BANK A.S.', 'DEBIT CARD', '', 'true'),
(460, '405913', 'VISA', '123', 'HSBC BANK A.S.', 'CREDIT CARD', 'GOLD', 'true'),
(461, '405917', 'VISA', '123', 'HSBC BANK A.S.', 'CREDIT CARD', 'CLASSIC', 'false'),
(462, '405918', 'VISA', '123', 'HSBC BANK A.S.', 'CREDIT CARD', 'GOLD', 'false'),
(463, '405919', '', '123', 'HSBC BANK A.S.', 'DEBIT CARD', '', 'false'),
(464, '408969', '', '123', 'HSBC BANK A.S.', 'CREDIT CARD', '', 'false'),
(465, '409071', 'VISA', '123', 'HSBC BANK A.S.', 'CREDIT CARD', 'CLASSIC', 'false'),
(466, '422629', 'VISA', '123', 'HSBC BANK A.S.', 'CREDIT CARD', 'GOLD', 'false'),
(467, '424909', 'VISA', '123', 'HSBC BANK A.S.', 'CREDIT CARD', 'CLASSIC', 'false'),
(468, '428240', 'VISA', '123', 'HSBC BANK A.S.', 'CREDIT CARD', 'PLATINUM', 'false'),
(469, '496019', 'VISA', '123', 'HSBC BANK A.S.', 'CREDIT CARD', 'CLASSIC', 'false'),
(470, '510005', 'MASTERCARD', '123', 'HSBC BANK A.S.', 'CREDIT CARD', 'CLASSIC', 'false'),
(471, '512651', 'MASTERCARD', '123', 'HSBC BANK A.S.', 'CREDIT CARD', 'CLASSIC', 'false'),
(472, '519399', 'MASTERCARD', '123', 'HSBC BANK A.S.', 'CREDIT CARD', 'CLASSIC', 'false'),
(473, '525413', 'MASTERCARD', '123', 'HSBC BANK A.S.', 'CREDIT CARD', 'GOLD', 'false'),
(474, '525795', 'MASTERCARD', '123', 'HSBC BANK A.S.', 'CREDIT CARD', 'GOLD', 'false'),
(475, '540643', 'MASTERCARD', '123', 'HSBC BANK A.S.', 'CREDIT CARD', 'CLASSIC', 'false'),
(476, '542254', 'MASTERCARD', '123', 'HSBC BANK A.S.', 'CREDIT CARD', 'CLASSIC', 'false'),
(477, '545183', 'MASTERCARD', '123', 'HSBC BANK A.S.', 'CREDIT CARD', 'SIGNIA', 'false'),
(478, '550472', 'MASTERCARD', '123', 'HSBC BANK A.S.', 'CREDIT CARD', 'CLASSIC', 'false'),
(479, '550473', 'MASTERCARD', '123', 'HSBC BANK A.S.', 'CREDIT CARD', 'GOLD', 'false'),
(480, '552143', 'MASTERCARD', '123', 'HSBC BANK A.S.', 'CREDIT CARD', 'PLATINUM', 'false'),
(481, '556030', 'MASTERCARD', '123', 'HSBC BANK A.S.', 'CREDIT CARD', 'BUSINESS', 'true'),
(482, '556031', 'MASTERCARD', '123', 'HSBC BANK A.S.', 'CREDIT CARD', 'BUSINESS', 'true'),
(483, '556033', 'MASTERCARD', '123', 'HSBC BANK A.S.', 'CREDIT CARD', 'BUSINESS', 'true'),
(484, '556034', 'MASTERCARD', '123', 'HSBC BANK A.S.', 'CREDIT CARD', 'BUSINESS', 'true'),
(485, '556665', 'MASTERCARD', '123', 'HSBC BANK A.S.', 'CREDIT CARD', 'BUSINESS', 'true'),
(486, '676401', '', '123', 'HSBC BANK A.S.', 'DEBIT CARD', '', 'false'),
(487, '677193', '', '123', 'HSBC BANK A.S.', 'DEBIT CARD', '', 'true'),
(488, '466280', '', '124', 'ALTERNATIF BANK A.S.', 'CREDIT CARD', '', 'false'),
(489, '466281', '', '124', 'ALTERNATIF BANK A.S.', 'CREDIT CARD', '', 'false'),
(490, '466282', '', '124', 'ALTERNATIF BANK A.S.', 'CREDIT CARD', '', 'false'),
(491, '466283', '', '124', 'ALTERNATIF BANK A.S.', 'CREDIT CARD', '', 'true'),
(492, '466284', '', '124', 'ALTERNATIF BANK A.S.', 'DEBIT CARD', '', 'false'),
(493, '516308', '', '124', 'ALTERNATIF BANK A.S.', 'CREDIT CARD', '', 'false'),
(494, '516458', '', '124', 'ALTERNATIF BANK A.S.', 'CREDIT CARD', '', 'false'),
(495, '522221', '', '124', 'ALTERNATIF BANK A.S.', 'CREDIT CARD', '', 'false'),
(496, '544836', '', '124', 'ALTERNATIF BANK A.S.', 'CREDIT CARD', '', 'false'),
(497, '558485', '', '124', 'ALTERNATIF BANK A.S.', 'CREDIT CARD', '', 'true'),
(498, '627768', '', '124', 'ALTERNATIF BANK A.S.', 'DEBIT CARD', '', 'false'),
(499, '670670', '', '124', 'ALTERNATIF BANK A.S.', 'DEBIT CARD', '', 'false'),
(500, '414941', '', '125', 'BURGAN BANK A.S.', 'DEBIT CARD', '', 'false'),
(501, '498516', 'VISA', '125', 'BURGAN BANK A.S.', 'CREDIT CARD', 'CLASSIC', 'false'),
(502, '498517', 'VISA', '125', 'BURGAN BANK A.S.', 'CREDIT CARD', 'GOLD', 'false'),
(503, '498518', 'VISA', '125', 'BURGAN BANK A.S.', 'CREDIT CARD', 'PLATINUM', 'false'),
(504, '498519', 'VISA', '125', 'BURGAN BANK A.S.', 'CREDIT CARD', 'PLATINUM', 'false'),
(505, '498520', 'VISA', '125', 'BURGAN BANK A.S.', 'CREDIT CARD', 'BUSINESS', 'true'),
(506, '498521', 'VISA', '125', 'BURGAN BANK A.S.', 'CREDIT CARD', 'BUSINESS', 'true'),
(507, '523759', '', '125', 'BURGAN BANK A.S.', 'CREDIT CARD', '', 'false'),
(508, '548202', '', '125', 'BURGAN BANK A.S.', 'CREDIT CARD', '', 'false'),
(509, '548434', '', '125', 'BURGAN BANK A.S.', 'CREDIT CARD', '', 'false'),
(510, '554034', '', '125', 'BURGAN BANK A.S.', 'CREDIT CARD', '', 'false'),
(511, '558379', '', '125', 'BURGAN BANK A.S.', 'CREDIT CARD', '', 'true'),
(512, '403134', 'VISA', '134', 'DENIZBANK A.S.', 'CREDIT CARD', 'BUSINESS', 'true'),
(513, '404990', '', '134', 'DENIZBANK A.S.', 'DEBIT CARD', '', 'false'),
(514, '408625', 'VISA', '134', 'DENIZBANK A.S.', 'CREDIT CARD', 'PLATINUM', 'false'),
(515, '409070', 'VISA', '134', 'DENIZBANK A.S.', 'CREDIT CARD', 'CLASSIC', 'false'),
(516, '411924', 'VISA', '134', 'DENIZBANK A.S.', 'CREDIT CARD', 'BUSINESS', 'true'),
(517, '423667', 'VISA', '134', 'DENIZBANK A.S.', 'CREDIT CARD', 'CLASSIC', 'false'),
(518, '424360', 'VISA', '134', 'DENIZBANK A.S.', 'CREDIT CARD', 'CLASSIC', 'false'),
(519, '424361', 'VISA', '134', 'DENIZBANK A.S.', 'CREDIT CARD', 'CLASSIC', 'false'),
(520, '441139', 'VISA', '134', 'DENIZBANK A.S.', 'CREDIT CARD', 'CLASSIC', 'false'),
(521, '460345', 'VISA', '134', 'DENIZBANK A.S.', 'CREDIT CARD', 'CLASSIC', 'false'),
(522, '460346', '', '134', 'DENIZBANK A.S.', 'DEBIT CARD', '', 'false'),
(523, '460347', 'VISA', '134', 'DENIZBANK A.S.', 'CREDIT CARD', 'GOLD', 'false'),
(524, '462276', 'VISA', '134', 'DENIZBANK A.S.', 'PREPAID CARD', 'CLASSIC', 'false'),
(525, '462448', '', '134', 'DENIZBANK A.S.', 'CREDIT CARD', '', 'false'),
(526, '462449', '', '134', 'DENIZBANK A.S.', 'CREDIT CARD', '', 'false'),
(527, '465574', '', '134', 'DENIZBANK A.S.', 'DEBIT CARD', '', 'false'),
(528, '472914', 'VISA', '134', 'DENIZBANK A.S.', 'CREDIT CARD', 'BUSINESS', 'false'),
(529, '472915', '', '134', 'DENIZBANK A.S.', 'CREDIT CARD', '', 'false'),
(530, '476662', '', '134', 'DENIZBANK A.S.', 'DEBIT CARD', '', 'false'),
(531, '483747', '', '134', 'DENIZBANK A.S.', 'DEBIT CARD', '', 'false'),
(532, '489456', 'VISA', '134', 'DENIZBANK A.S.', 'CREDIT CARD', 'CLASSIC', 'false'),
(533, '489457', '', '134', 'DENIZBANK A.S.', 'CREDIT CARD', '', 'false'),
(534, '489458', '', '134', 'DENIZBANK A.S.', 'CREDIT CARD', '', 'false'),
(535, '508129', '', '134', 'DENIZBANK A.S.', 'DEBIT CARD', '', 'false'),
(536, '510063', 'MASTERCARD', '134', 'DENIZBANK A.S.', 'CREDIT CARD', 'GOLD', 'false'),
(537, '510118', 'MASTERCARD', '134', 'DENIZBANK A.S.', 'CREDIT CARD', 'BUSINESS', 'true'),
(538, '510119', 'MASTERCARD', '134', 'DENIZBANK A.S.', 'CREDIT CARD', 'BUSINESS', 'true'),
(539, '512017', 'MASTERCARD', '134', 'DENIZBANK A.S.', 'CREDIT CARD', 'GOLD', 'false'),
(540, '512117', 'MASTERCARD', '134', 'DENIZBANK A.S.', 'CREDIT CARD', 'PLATINUM', 'false'),
(541, '512446', 'MASTERCARD', '134', 'DENIZBANK A.S.', 'CREDIT CARD', 'GOLD', 'false'),
(542, '514924', 'MASTERCARD', '134', 'DENIZBANK A.S.', 'CREDIT CARD', 'PLATINUM', 'false'),
(543, '515865', 'MASTERCARD', '134', 'DENIZBANK A.S.', 'CREDIT CARD', 'GOLD', 'false'),
(544, '516731', '', '134', 'DENIZBANK A.S.', 'DEBIT CARD', '', 'false'),
(545, '516740', '', '134', 'DENIZBANK A.S.', 'DEBIT CARD', '', 'false'),
(546, '516914', '', '134', 'DENIZBANK A.S.', 'DEBIT CARD', '', 'false'),
(547, '517047', '', '134', 'DENIZBANK A.S.', 'DEBIT CARD', '', 'false'),
(548, '520019', 'MASTERCARD', '134', 'DENIZBANK A.S.', 'CREDIT CARD', 'CLASSIC', 'false'),
(549, '520303', 'MASTERCARD', '134', 'DENIZBANK A.S.', 'CREDIT CARD', 'CLASSIC', 'false'),
(550, '520909', 'MASTERCARD', '134', 'DENIZBANK A.S.', 'CREDIT CARD', '', 'false'),
(551, '522517', '', '134', 'DENIZBANK A.S.', 'CREDIT CARD', '', 'false'),
(552, '523515', '', '134', 'DENIZBANK A.S.', 'CREDIT CARD', '', 'false'),
(553, '529545', '', '134', 'DENIZBANK A.S.', 'DEBIT CARD', '', 'false'),
(554, '529876', '', '134', 'DENIZBANK A.S.', 'CREDIT CARD', '', 'false'),
(555, '533293', '', '134', 'DENIZBANK A.S.', 'DEBIT CARD', '', 'false'),
(556, '533330', '', '134', 'DENIZBANK A.S.', 'CREDIT CARD', '', 'false'),
(557, '539605', '', '134', 'DENIZBANK A.S.', 'CREDIT CARD', '', 'false'),
(558, '543358', 'MASTERCARD', '134', 'DENIZBANK A.S.', 'CREDIT CARD', ' CLASSIC', 'false'),
(559, '543400', 'MASTERCARD', '134', 'DENIZBANK A.S.', 'CREDIT CARD', 'GOLD', 'false'),
(560, '543427', 'MASTERCARD', '134', 'DENIZBANK A.S.', 'CREDIT CARD', ' CLASSIC', 'false'),
(561, '546764', 'MASTERCARD', '134', 'DENIZBANK A.S.', 'CREDIT CARD', 'CLASSIC', 'false'),
(562, '549938', '', '134', 'DENIZBANK A.S.', 'CREDIT CARD', '', 'false'),
(563, '552679', '', '134', 'DENIZBANK A.S.', 'CREDIT CARD', '', 'true'),
(564, '554483', 'MASTERCARD', '134', 'DENIZBANK A.S.', 'CREDIT CARD', 'GOLD', 'false'),
(565, '554566', '', '134', 'DENIZBANK A.S.', 'CREDIT CARD', '', 'false'),
(566, '558443', '', '134', 'DENIZBANK A.S.', 'CREDIT CARD', '', 'true'),
(567, '558446', '', '134', 'DENIZBANK A.S.', 'CREDIT CARD', '', 'true'),
(568, '558448', '', '134', 'DENIZBANK A.S.', 'CREDIT CARD', '', 'true'),
(569, '558460', '', '134', 'DENIZBANK A.S.', 'CREDIT CARD', '', 'true'),
(570, '558514', 'MASTERCARD', '134', 'DENIZBANK A.S.', 'CREDIT CARD', 'BUSINESS', 'true'),
(571, '670610', '', '134', 'DENIZBANK A.S.', 'DEBIT CARD', '', 'false'),
(572, '677047', '', '134', 'DENIZBANK A.S.', 'DEBIT CARD', '', 'false'),
(573, '425846', 'VISA', '135', 'ANADOLUBANK A.S.', 'CREDIT CARD', 'GOLD', 'false'),
(574, '425847', 'VISA', '135', 'ANADOLUBANK A.S.', 'CREDIT CARD', 'CLASSIC', 'false'),
(575, '425848', 'VISA', '135', 'ANADOLUBANK A.S.', 'CREDIT CARD', 'BUSINESS', 'true'),
(576, '425849', '', '135', 'ANADOLUBANK A.S.', 'DEBIT CARD', '', 'false'),
(577, '441341', 'VISA', '135', 'ANADOLUBANK A.S.', 'CREDIT CARD', 'PLATINUM', 'false'),
(578, '522240', 'MASTERCARD', '135', 'ANADOLUBANK A.S.', 'CREDIT CARD', 'CLASSIC', 'false'),
(579, '522241', 'MASTERCARD', '135', 'ANADOLUBANK A.S.', 'CREDIT CARD', 'GOLD', 'false'),
(580, '535881', '', '135', 'ANADOLUBANK A.S.', 'CREDIT CARD', '', 'false'),
(581, '554301', 'MASTERCARD', '135', 'ANADOLUBANK A.S.', 'CREDIT CARD', 'PLATINUM', 'false'),
(582, '558593', 'MASTERCARD', '135', 'ANADOLUBANK A.S.', 'CREDIT CARD', 'BUSINESS', 'true'),
(583, '603072', '', '135', 'ANADOLUBANK A.S.', 'DEBIT CARD', '', 'false'),
(584, '676460', '', '135', 'ANADOLUBANK A.S.', 'DEBIT CARD', '', 'false'),
(585, '453144', '', '143', 'AKTIF YATIRIM BANKASI A.S.', 'CREDIT CARD', '', 'false'),
(586, '453145', '', '143', 'AKTIF YATIRIM BANKASI A.S.', 'CREDIT CARD', '', 'false'),
(587, '453146', '', '143', 'AKTIF YATIRIM BANKASI A.S.', 'CREDIT CARD', '', 'false'),
(588, '453147', '', '143', 'AKTIF YATIRIM BANKASI A.S.', 'DEBIT CARD', '', 'false'),
(589, '453148', '', '143', 'AKTIF YATIRIM BANKASI A.S.', 'DEBIT CARD', '', 'false'),
(590, '453149', '', '143', 'AKTIF YATIRIM BANKASI A.S.', 'DEBIT CARD', '', 'false'),
(591, '504166', '', '143', 'AKTIF YATIRIM BANKASI A.S.', 'DEBIT CARD', '', 'false'),
(592, '517343', '', '143', 'AKTIF YATIRIM BANKASI A.S.', 'DEBIT CARD', '', 'false'),
(593, '528246', '', '143', 'AKTIF YATIRIM BANKASI A.S.', 'DEBIT CARD', '', 'false'),
(594, '532813', '', '143', 'AKTIF YATIRIM BANKASI A.S.', 'CREDIT CARD', '', 'false'),
(595, '534563', '', '143', 'AKTIF YATIRIM BANKASI A.S.', 'CREDIT CARD', '', 'false');
INSERT INTO `bins` (`id`, `bin`, `brand`, `banka_kod`, `banka_adi`, `type`, `sub_type`, `isbusiness`) VALUES
(596, '535843', '', '143', 'AKTIF YATIRIM BANKASI A.S.', 'CREDIT CARD', '', 'false'),
(597, '581877', '', '143', 'AKTIF YATIRIM BANKASI A.S.', 'PREPAID CARD', '', 'false'),
(598, '671121', '', '143', 'AKTIF YATIRIM BANKASI A.S.', 'DEBIT CARD', '', 'false'),
(599, '671155', '', '143', 'AKTIF YATIRIM BANKASI A.S.', 'DEBIT CARD', '', 'false'),
(600, '515456', '', '143', 'AKTIF YATIRIM BANKASI A.S.', 'CREDIT CARD', '', 'false'),
(601, '468791', '', '146', 'ODEA BANK A.S.', 'CREDIT CARD', '', 'false'),
(602, '468793', '', '146', 'ODEA BANK A.S.', 'CREDIT CARD', '', 'true'),
(603, '468794', '', '146', 'ODEA BANK A.S.', 'CREDIT CARD', '', 'true'),
(604, '468795', '', '146', 'ODEA BANK A.S.', 'CREDIT CARD', '', 'true'),
(605, '468796', '', '146', 'ODEA BANK A.S.', 'DEBIT CARD', '', 'false'),
(606, '468797', '', '146', 'ODEA BANK A.S.', 'DEBIT CARD', '', 'false'),
(607, '469180', '', '146', 'ODEA BANK A.S.', 'CREDIT CARD', '', 'false'),
(608, '469181', '', '146', 'ODEA BANK A.S.', 'CREDIT CARD', '', 'false'),
(609, '460957', '', '6002', 'PAPARA ELEKTRONIK PARA VE ODEME HIZMETLERI A.S.', 'PREPAID CARD', '', 'false'),
(610, '516944', '', '146', 'ODEA BANK A.S.', 'DEBIT CARD', '', 'false'),
(611, '519261', '', '146', 'ODEA BANK A.S.', 'CREDIT CARD', '', 'false'),
(612, '522347', '', '146', 'ODEA BANK A.S.', 'CREDIT CARD', '', 'false'),
(613, '522356', '', '146', 'ODEA BANK A.S.', 'CREDIT CARD', '', 'false'),
(614, '522362', '', '146', 'ODEA BANK A.S.', 'CREDIT CARD', '', 'false'),
(615, '524677', '', '146', 'ODEA BANK A.S.', 'CREDIT CARD', '', 'false'),
(616, '526952', '', '146', 'ODEA BANK A.S.', 'CREDIT CARD', '', 'false'),
(617, '527369', '', '146', 'ODEA BANK A.S.', 'CREDIT CARD', '', 'false'),
(618, '527383', '', '146', 'ODEA BANK A.S.', 'CREDIT CARD', '', 'false'),
(619, '527396', '', '146', 'ODEA BANK A.S.', 'CREDIT CARD', '', 'false'),
(620, '536255', '', '146', 'ODEA BANK A.S.', 'CREDIT CARD', '', 'true'),
(621, '670868', '', '146', 'ODEA BANK A.S.', 'DEBIT CARD', '', 'false'),
(622, '417715', 'VISA', '203', 'ALBARAKA TURK KATILIM BANKASI A.S.', 'CREDIT CARD', 'BUSINESS', 'true'),
(623, '534653', '', '64', 'T.IS BANKASI A.S.', 'PREPAID CARD', '', 'false'),
(624, '424935', '', '203', 'ALBARAKA TURK KATILIM BANKASI A.S.', 'CREDIT CARD', '', 'false'),
(625, '432284', 'VISA', '203', 'ALBARAKA TURK KATILIM BANKASI A.S.', 'CREDIT CARD', 'CLASSIC', 'false'),
(626, '432285', 'VISA', '203', 'ALBARAKA TURK KATILIM BANKASI A.S.', 'CREDIT CARD', 'GOLD', 'false'),
(627, '511583', '', '203', 'ALBARAKA TURK KATILIM BANKASI A.S.', 'CREDIT CARD', '', 'false'),
(628, '534264', 'MASTERCARD', '203', 'ALBARAKA TURK KATILIM BANKASI A.S.', 'CREDIT CARD', 'CLASSIC', 'false'),
(629, '547234', 'MASTERCARD', '203', 'ALBARAKA TURK KATILIM BANKASI A.S.', 'CREDIT CARD', 'BUSINESS', 'true'),
(630, '548232', 'MASTERCARD', '203', 'ALBARAKA TURK KATILIM BANKASI A.S.', 'CREDIT CARD', 'GOLD', 'false'),
(631, '627510', '', '203', 'ALBARAKA TURK KATILIM BANKASI A.S.', 'DEBIT CARD', '', 'false'),
(632, '979227', '', '203', 'ALBARAKA TURK KATILIM BANKASI A.S.', 'DEBIT CARD', '', 'false'),
(633, '402589', 'VISA', '205', 'KUVEYT TURK KATILIM BANKASI A.S.', 'CREDIT CARD', 'CLASSIC', 'false'),
(634, '402590', 'VISA', '205', 'KUVEYT TURK KATILIM BANKASI A.S.', 'CREDIT CARD', 'GOLD', 'false'),
(635, '402591', '', '205', 'KUVEYT TURK KATILIM BANKASI A.S.', 'DEBIT CARD', '', 'false'),
(636, '402592', 'VISA', '205', 'KUVEYT TURK KATILIM BANKASI A.S.', 'CREDIT CARD', 'BUSINESS', 'true'),
(637, '403360', 'VISA', '205', 'KUVEYT TURK KATILIM BANKASI A.S.', 'CREDIT CARD', 'PLATINUM', 'false'),
(638, '403810', 'VISA', '205', 'KUVEYT TURK KATILIM BANKASI A.S.', 'CREDIT CARD', 'BUSINESS', 'true'),
(639, '410555', 'VISA', '205', 'KUVEYT TURK KATILIM BANKASI A.S.', 'CREDIT CARD', 'CLASSIC', 'false'),
(640, '410556', 'VISA', '205', 'KUVEYT TURK KATILIM BANKASI A.S.', 'CREDIT CARD', 'CLASSIC', 'false'),
(641, '431024', 'VISA', '205', 'KUVEYT TURK KATILIM BANKASI A.S.', 'CREDIT CARD', 'BUSINESS', 'true'),
(642, '483714', '', '205', 'KUVEYT TURK KATILIM BANKASI A.S.', 'DEBIT CARD', '', 'false'),
(643, '511660', 'MASTERCARD', '205', 'KUVEYT TURK KATILIM BANKASI A.S.', 'CREDIT CARD', 'BUSINESS', 'true'),
(644, '512595', 'MASTERCARD', '205', 'KUVEYT TURK KATILIM BANKASI A.S.', 'CREDIT CARD', 'CLASSIC', 'false'),
(645, '518896', 'MASTERCARD', '205', 'KUVEYT TURK KATILIM BANKASI A.S.', 'CREDIT CARD', 'GOLD', 'false'),
(646, '520180', 'MASTERCARD', '205', 'KUVEYT TURK KATILIM BANKASI A.S.', 'CREDIT CARD', 'PLATINUM', 'false'),
(647, '525312', 'MASTERCARD', '205', 'KUVEYT TURK KATILIM BANKASI A.S.', 'CREDIT CARD', 'MIXED PRODUCT', 'false'),
(648, '527083', '', '205', 'KUVEYT TURK KATILIM BANKASI A.S.', 'CREDIT CARD', '', 'false'),
(649, '547564', 'MASTERCARD', '205', 'KUVEYT TURK KATILIM BANKASI A.S.', 'CREDIT CARD', 'BUSINESS', 'true'),
(650, '400742', '', '206', 'TURKIYE FINANS KATILIM BANKASI A.S.', 'CREDIT CARD', '', 'false'),
(651, '404952', 'VISA', '206', 'TURKIYE FINANS KATILIM BANKASI A.S.', 'CREDIT CARD', 'CLASSIC', 'false'),
(652, '411685', 'VISA', '206', 'T. FINANS KATILIM BANKASI A.S.', 'CREDIT CARD', 'BUSINESS', 'true'),
(653, '424927', '', '206', 'TURKIYE FINANS KATILIM BANKASI A.S.', 'CREDIT CARD', '', 'false'),
(654, '424931', '', '206', 'TURKIYE FINANS KATILIM BANKASI A.S.', 'CREDIT CARD', '', 'false'),
(655, '428462', 'VISA', '206', 'TURKIYE FINANS KATILIM BANKASI A.S.', 'CREDIT CARD', 'CLASSIC', 'false'),
(656, '435627', 'VISA', '206', 'TURKIYE FINANS KATILIM BANKASI A.S.', 'CREDIT CARD', 'CLASSIC', 'false'),
(657, '435628', 'VISA', '206', 'TURKIYE FINANS KATILIM BANKASI A.S.', 'CREDIT CARD', 'GOLD', 'false'),
(658, '435629', '', '206', 'TURKIYE FINANS KATILIM BANKASI A.S.', 'DEBIT CARD', '', 'false'),
(659, '441206', '', '206', 'T. FINANS KATILIM BANKASI A.S.', 'CREDIT CARD', '', 'false'),
(660, '470954', '', '206', 'T. FINANS KATILIM BANKASI A.S.', 'CREDIT CARD', '', 'false'),
(661, '479915', '', '206', 'T. FINANS KATILIM BANKASI A.S.', 'CREDIT CARD', '', 'false'),
(662, '479916', '', '206', 'T. FINANS KATILIM BANKASI A.S.', 'CREDIT CARD', '', 'false'),
(663, '479917', '', '206', 'T. FINANS KATILIM BANKASI A.S.', 'CREDIT CARD', '', 'false'),
(664, '485061', '', '206', 'TURKIYE FINANS KATILIM BANKASI A.S.', 'DEBIT CARD', '', 'false'),
(665, '498724', '', '206', 'TURKIYE FINANS KATILIM BANKASI A.S.', 'CREDIT CARD', '', 'false'),
(666, '498725', '', '206', 'TURKIYE FINANS KATILIM BANKASI A.S.', 'CREDIT CARD', '', 'false'),
(667, '511758', '', '206', 'TURKIYE FINANS KATILIM BANKASI A.S.', 'CREDIT CARD', '', 'false'),
(668, '511783', '', '206', 'TURKIYE FINANS KATILIM BANKASI A.S.', 'CREDIT CARD', '', 'false'),
(669, '512360', '', '206', 'T. FINANS KATILIM BANKASI A.S.', 'CREDIT CARD', '', 'false'),
(670, '979217', '', '10', 'T.C.ZIRAAT BANKASI A.S.', 'DEBIT CARD', '', 'false'),
(671, '521848', 'MASTERCARD', '206', 'TURKIYE FINANS KATILIM BANKASI A.S.', 'CREDIT CARD', 'PLATINUM', 'false'),
(672, '528293', '', '206', 'T. FINANS KATILIM BANKASI A.S.', 'CREDIT CARD', '', 'false'),
(673, '537719', 'MASTERCARD', '206', 'TURKIYE FINANS KATILIM BANKASI A.S.', 'CREDIT CARD', 'GOLD', 'false'),
(674, '549294', 'MASTERCARD', '206', 'TURKIYE FINANS KATILIM BANKASI A.S.', 'CREDIT CARD', 'CLASSIC', 'false'),
(675, '552610', '', '206', 'TURKIYE FINANS KATILIM BANKASI A.S.', 'CREDIT CARD', '', 'true'),
(676, '606043', '', '206', 'TURKIYE FINANS KATILIM BANKASI A.S.', 'DEBIT CARD', '', 'false'),
(677, '677451', '', '206', 'TURKIYE FINANS KATILIM BANKASI A.S.', 'DEBIT CARD', '', 'false'),
(678, '483602', '', '64', 'T. IS BANKASI A.S.', 'DEBIT CARD', '', 'false'),
(679, '535514', '', '64', 'T. IS BANKASI A.S.', 'DEBIT CARD', '', 'false'),
(680, '979233', '', '64', 'T. IS BANKASI A.S.', 'DEBIT CARD', '', 'false'),
(681, '979204', '', '64', 'T. IS BANKASI A.S.', 'CREDIT CARD', '', 'false'),
(682, '365770', '', '124', 'ALTERNATIF BANK A.S.', 'CREDIT CARD', '', 'true'),
(683, '365771', '', '124', 'ALTERNATIF BANK A.S.', 'CREDIT CARD', '', 'false'),
(684, '365772', '', '124', 'ALTERNATIF BANK A.S.', 'CREDIT CARD', '', 'false'),
(685, '365773', '', '124', 'ALTERNATIF BANK A.S.', 'CREDIT CARD', '', 'false'),
(686, '423478', '', '15', 'T. VAKIFLAR BANKASI T.A.O.', 'DEBIT CARD', '', 'false'),
(687, '483612', '', '15', 'T. VAKIFLAR BANKASI T.A.O.', 'DEBIT CARD', '', 'false'),
(688, '535576', '', '15', 'T. VAKIFLAR BANKASI T.A.O.', 'DEBIT CARD', '', 'false'),
(689, '479680', '', '46', 'AKBANK T.A.S.', 'CREDIT CARD', '', 'false'),
(690, '479681', '', '46', 'AKBANK T.A.S.', 'DEBIT CARD', '', 'false'),
(691, '534253', '', '46', 'AKBANK T.A.S.', 'CREDIT CARD', '', 'false'),
(692, '535449', '', '46', 'AKBANK T.A.S.', 'DEBIT CARD', '', 'false'),
(693, '603344', '', '62', 'T. GARANTI BANKASI A.S.', 'CREDIT CARD', '', 'false'),
(694, '603650', '', '62', 'T. GARANTI BANKASI A.S.', 'CREDIT CARD', '', 'false'),
(695, '979242', '', '99', 'ING BANK A.S.', 'DEBIT CARD', '', 'false'),
(696, '527765', '', '103', 'FIBABANKA A.S.', 'CREDIT CARD', '', 'false'),
(697, '654997', '', '124', 'ALTERNATIF BANK A.S.', 'CREDIT CARD', '', 'false'),
(698, '979216', '', '205', 'KUVEYT TURK KATILIM BANKASI A.S.', 'DEBIT CARD', '', 'false'),
(699, '537504', '', '15', 'T. VAKIFLAR BANKASI T.A.O.', 'DEBIT CARD', '', 'false'),
(700, '979215', '', '67', 'YAPI VE KREDI BANKASI A.S.', 'DEBIT CARD', '', 'true'),
(701, '979241', '', '67', 'YAPI VE KREDI BANKASI A.S.', 'DEBIT CARD', '', 'false'),
(702, '401072', '', '111', 'FINANS BANK A.S.', 'CREDIT CARD', '', 'false'),
(703, '423002', '', '203', 'ALBARAKA TURK KATILIM BANKASI A.S.', 'CREDIT CARD', '', 'false'),
(704, '533796', '', '203', 'ALBARAKA TURK KATILIM BANKASI A.S.', 'CREDIT CARD', '', 'false'),
(705, '416275', '', '206', 'TURKIYE FINANS KATILIM BANKASI A.S.', 'DEBIT CARD', '', 'false'),
(706, '979235', '', '6001', 'TURK ELEKTRONIK PARA A.S.', 'PREPAID CARD', '', 'false'),
(707, '535355', '', '210', 'VAKIF KATILIM BANKASI A.S.', 'CREDIT CARD', '', 'false'),
(708, '670544', '', '210', 'VAKIF KATILIM BANKASI A.S.', 'DEBIT CARD', '', 'false'),
(709, '979244', '', '12', 'T.HALK BANKASI A.S.', 'CREDIT CARD', '', 'false'),
(710, '526911', '', '111', 'FINANS BANK A.S.', 'CREDIT CARD', '', 'false'),
(711, '528064', '', '146', 'ODEA BANK A.S.', 'CREDIT CARD', '', 'false'),
(712, '531389', '', '6002', 'PAPARA ELEKTRONIK PARA VE ODEME HIZMETLERI A.S.', 'PREPAID CARD', '', 'false'),
(713, '535925', '', '6002', 'PAPARA ELEKTRONIK PARA VE ODEME HIZMETLERI A.S.', 'PREPAID CARD', '', 'false'),
(714, '434530', '', '15', 'T. VAKIFLAR BANKASI T.A.O.', 'DEBIT CARD', '', 'true'),
(715, '406281', '', '67', 'YAPI VE KREDI BANKASI A.S.', 'DEBIT CARD', '', 'false'),
(716, '657366', '', '67', 'YAPI VE KREDI BANKASI A.S.', 'DEBIT CARD', '', 'false'),
(717, '657998', '', '67', 'YAPI VE KREDI BANKASI A.S.', 'DEBIT CARD', '', 'false'),
(718, '531401', '', '99', 'ING BANK A.S.', 'CREDIT CARD', '', 'false'),
(719, '979266', '', '6004', 'ININAL ODEME VE ELEKTRONIK PARA HIZMETLERI A.S.', 'PREPAID CARD', '', 'false'),
(720, '549624', '', '67', 'YAPI VE KREDI BANKASI A.S.', 'PREPAID CARD', '', 'false'),
(721, '377597', '', '62', 'T.GARANTI BANKASI A.S.', 'CREDIT CARD', '', 'false'),
(722, '377598', '', '62', 'T.GARANTI BANKASI A.S.', 'CREDIT CARD', '', 'false'),
(723, '432952', '', '62', 'T.GARANTI BANKASI A.S.', 'CREDIT CARD', '', 'false'),
(724, '432954', '', '62', 'T.GARANTI BANKASI A.S.', 'CREDIT CARD', '', 'false'),
(725, '538121', '', '62', 'T.GARANTI BANKASI A.S.', 'CREDIT CARD', '', 'false'),
(726, '549997', '', '62', 'T.GARANTI BANKASI A.S.', 'CREDIT CARD', '', 'false'),
(727, '531369', '', '15', 'T.VAKIFLAR BANKASI T.A.O.', 'CREDIT CARD', '', 'false'),
(728, '434528', '', '10', 'T.C.ZIRAAT BANKASI A.S.', 'CREDIT CARD', '', 'false'),
(729, '434529', '', '10', 'T.C.ZIRAAT BANKASI A.S.', 'DEBIT CARD', '', 'false'),
(730, '377599', '', '62', 'T.GARANTI BANKASI A.S.', 'CREDIT CARD', '', 'false'),
(731, '979246', '', '143', 'AKTIF YATIRIM BANKASI A.S', 'PREPAID CARD', '', 'false'),
(732, '434572', '', '203', 'ALBARAKA TURK KATILIM BANKASI A.S.', 'CREDIT CARD', '', 'true'),
(733, '374423', '', '62', 'T. GARANTI BANKASI A.S.', 'CREDIT CARD', '', 'true'),
(734, '416607', '', '12', 'T.HALK BANKASI A.S.', 'CREDIT CARD', '', 'false'),
(735, '434724', '', '15', 'T.VAKIFLAR BANKASI T.A.O.', 'CREDIT CARD', '', 'false'),
(736, '522441', '', '15', 'T.VAKIFLAR BANKASI T.A.O.', 'CREDIT CARD', '', 'true'),
(737, '404350', '', '32', 'TURK EKONOMI BANKASI A.S.', 'CREDIT CARD', '', 'true'),
(738, '497022', '', '32', 'TURK EKONOMI BANKASI A.S.', 'DEBIT CARD', '', 'false'),
(739, '516643', '', '46', 'AKBANK T.A.S.', 'PREPAID CARD', '', 'false'),
(740, '374428', '', '62', 'T.GARANTI BANKASI A.S.', 'CREDIT CARD', '', 'false'),
(741, '375630', '', '62', 'T.GARANTI BANKASI A.S.', 'CREDIT CARD', '', 'false'),
(742, '377596', '', '62', 'T.GARANTI BANKASI A.S.', 'CREDIT CARD', '', 'true'),
(743, '406665', '', '62', 'T.GARANTI BANKASI A.S.', 'CREDIT CARD', '', 'true'),
(744, '406666', '', '62', 'T.GARANTI BANKASI A.S.', 'CREDIT CARD', '', 'true'),
(745, '538124', '', '62', 'T.GARANTI BANKASI A.S.', 'CREDIT CARD', '', 'false'),
(746, '538139', '', '62', 'T.GARANTI BANKASI A.S.', 'CREDIT CARD', '', 'true'),
(747, '638888', '', '62', 'T.GARANTI BANKASI A.S.', 'CREDIT CARD', '', 'false'),
(748, '685800', '', '62', 'T.GARANTI BANKASI A.S.', 'CREDIT CARD', '', 'false'),
(749, '533803', '', '64', 'T.IS BANKASI A.S.', 'PREPAID CARD', '', 'false'),
(750, '550478', '', '99', 'ING BANK A.S.', 'CREDIT CARD', '', 'false'),
(751, '549839', '', '134', 'DENIZBANK A.S.', 'CREDIT CARD', '', 'false'),
(752, '534567', '', '143', 'AKTIF YATIRIM BANKASI A.S', 'PREPAID CARD', '', 'false'),
(753, '549539', '', '143', 'AKTIF YATIRIM BANKASI A.S', 'PREPAID CARD', '', 'false'),
(754, '483673', '', '205', 'KUVEYT TURK KATILIM BANKASI A.S.', 'CREDIT CARD', '', 'false'),
(755, '979265', '', '210', 'VAKIF KATILIM BANKASI A.S.', 'CREDIT CARD', '', 'true'),
(756, '535616', '', '6001', 'TURK ELEKTRONIK PARA A.S.', 'PREPAID CARD', '', 'false'),
(757, '650457', '', '6001', 'TURK ELEKTRONIK PARA A.S.', 'PREPAID CARD', '', 'false'),
(758, '548793', '', '6002', 'PAPARA ELEKTRONIK PARA VE ODEME HIZMETLERI A.S.', 'PREPAID CARD', '', 'false'),
(759, '439748', '', '6004', 'ININAL ODEME VE ELEKTRONIK PARA HIZMETLERI A.S.', 'PREPAID CARD', '', 'false'),
(760, '478500', '', '6004', 'ININAL ODEME VE ELEKTRONIK PARA HIZMETLERI A.S.', 'PREPAID CARD', '', 'false'),
(761, '979260', '', '6006', 'PALADYUM ELEKTRONIK PARA VE ODEME HIZMETLERI A.S.', 'PREPAID CARD', '', 'false'),
(762, '535248', '', '209', 'ZIRAAT KATILIM BANKASI A.S.', 'DEBIT CARD', '', 'false'),
(763, '979259', '', '6003', 'POSTA VE TELGRAF TESKILATI A.S.', 'PREPAID CARD', '', 'false'),
(764, '650161', '', '67', 'YAPI VE KREDI BANKASI A.S.', 'CREDIT CARD', '', 'false'),
(765, '510054', 'MASTERCARD', '67', 'YAPI VE KREDI BANKASI A.S.', 'CREDIT CARD', 'CLASSIC', 'false'),
(766, '476625', '', '67', 'YAPI VE KREDI BANKASI A.S.', 'CREDIT CARD', '', 'true'),
(767, '650082', '', '64', 'T.IS BANKASI A.S.', 'DEBIT CARD', '', 'false'),
(768, '401049', '', '12', 'T.HALK BANKASI A.S.', 'DEBIT CARD', '', 'false'),
(769, '979240', '', '135', 'ANADOLUBANK A.S.', 'DEBIT CARD', '', 'false'),
(770, '979248', '', '6001', 'TURK ELEKRONIK PARA A.S.', 'DEBIT CARD', '', 'false'),
(771, '979218', '', '206', 'T. FINANS KATILIM BANKASI A.S.', 'DEBIT CARD', '', 'false'),
(772, '979243', '', '134', 'DENIZBANK A.S.', 'DEBIT CARD', '', 'false'),
(773, '537829', '', '62', 'T.GARANTI BANKASI A.S.', 'CREDIT CARD', '', 'false'),
(774, '432951', '', '62', 'T.GARANTI BANKASI A.S.', 'CREDIT CARD', '', 'false'),
(775, '545254', '', '64', 'T.IS BANKASI A.S.', 'PREPAID CARD', '', 'false'),
(776, '979280', '', '10', 'T.C.ZIRAAT BANKASI A.S.', 'DEBIT CARD', '', 'false'),
(777, '416563', '', '32', 'TURK EKONOMI BANKASI A.S.', 'CREDIT CARD', '', 'true'),
(778, '650170', '', '15', 'T. VAKIFLAR BANKASI T.A.O.', 'CREDIT CARD', '', 'false'),
(779, '537475', '', '64', 'T. IS BANKASI A.S.', 'DEBIT CARD', '', 'false'),
(780, '434727', '', '6005', 'TURKCELL ODEME VE ELEKTRONIK PARA HIZMETLERI A.S', 'PREPAID CARD', '', 'false'),
(781, '471688', '', '6005', 'TURKCELL ODEME VE ELEKTRONIK PARA HIZMETLERI A.S', 'PREPAID CARD', '', 'false'),
(782, '650173', '', '64', 'T.IS BANKASI A.S.', 'CREDIT CARD', '', 'false'),
(783, '511885', '', '10', 'T.C.ZIRAAT BANKASI A.S.', 'CREDIT CARD', '', 'false'),
(784, '537058', '', '111', 'QNB FINANSBANK A.S.', 'CREDIT CARD', '', 'false'),
(785, '539957', '', '111', 'QNB FINANSBANK A.S.', 'CREDIT CARD', '', 'false'),
(786, '478593', '', '6001', 'TURK ELEKTRONIK PARA A.S.', 'PREPAID CARD', '', 'false'),
(787, '478594', '', '6001', 'TURK ELEKTRONIK PARA A.S.', 'PREPAID CARD', '', 'false'),
(788, '559096', '', '111', 'QNB FINANSBANK A.S.', 'CREDIT CARD', '', 'true'),
(789, '483674', '', '205', 'KUVEYT TURK KATILIM BANKASI A.S.', 'DEBIT CARD', '', 'false'),
(790, '533207', '', '6003', 'POSTA VE TELGRAF TESKILATI A.S.', 'PREPAID CARD', '', 'false'),
(791, '537608', '', '6003', 'POSTA VE TELGRAF TESKILATI A.S.', 'DEBIT CARD', '', 'false'),
(792, '671200', '', '6003', 'POSTA VE TELGRAF TESKILATI A.S.', 'DEBIT CARD', '', 'false'),
(793, '979249', '', '6003', 'POSTA VE TELGRAF TESKILATI A.S.', 'DEBIT CARD', '', 'false'),
(794, '979254', '', '6003', 'POSTA VE TELGRAF TESKILATI A.S.', 'DEBIT CARD', '', 'false'),
(795, '979257', '', '6001', 'TURK ELEKRONIK PARA A.S.', 'PREPAID CARD', '', 'false'),
(796, '650456', '', '64', 'T.IS BANKASI A.S.', 'PREPAID CARD', '', 'false'),
(797, '460952', '', '10', 'T.C.ZIRAAT BANKASI A.S.', 'DEBIT CARD', '', 'false'),
(798, '434913', '', '6003', 'POSTA VE TELGRAF TESKILATI ANONIM SIRKETI', 'DEBIT CARD', '', 'false'),
(799, '434914', '', '6003', 'POSTA VE TELGRAF TESKILATI ANONIM SIRKETI', 'PREPAID CARD', '', 'false'),
(800, '482465', '', '10', 'T.C.ZIRAAT BANKASI A.S.', 'DEBIT CARD', '', 'false'),
(801, '432953', '', '62', 'T.GARANTI BANKASI A.S.', 'CREDIT CARD', '', 'false'),
(802, '538196', '', '62', 'T.GARANTI BANKASI A.S.', 'CREDIT CARD', '', 'false'),
(803, '460925', '', '64', 'T.IS BANKASI A.S.', 'DEBIT CARD', '', 'false'),
(804, '537567', '', '64', 'T.IS BANKASI A.S.', 'PREPAID CARD', '', 'false'),
(805, '979264', '', '32', 'TURK EKONOMI BANKASI A.S.', 'DEBIT CARD', '', 'false'),
(806, '979211', '', '59', 'SEKERBANK T.A.S.', 'DEBIT CARD', '', 'false'),
(807, '423091', '', '99', 'ING BANK A.S.', 'DEBIT CARD', '', 'false'),
(808, '979277', '', '6003', 'POSTA VE TELGRAF TESKILATI A.S.', 'DEBIT CARD', '', 'false'),
(809, '979278', '', '6003', 'POSTA VE TELGRAF TESKILATI A.S.', 'DEBIT CARD', '', 'false'),
(810, '979223', '', '32', 'TURK EKONOMI BANKASI A.S.', 'CREDIT CARD', '', 'false'),
(811, '670586', '', '209', 'ZIRAAT KATILIM BANKASI A.S.', 'DEBIT CARD', '', 'false'),
(812, '476626', '', '67', 'YAPI VE KREDI BANKASI A.S.', 'CREDIT CARD', '', 'true'),
(813, '650987', '', '64', 'T.IS BANKASI A.S.', 'CREDIT CARD', '', 'true'),
(814, '650052', '', '15', 'T. VAKIFLAR BANKASI T.A.O.', 'DEBIT CARD', '', 'false'),
(815, '979213', '', '143', 'AKTIF YATIRIM BANKASI A.S.', 'DEBIT CARD', '', 'false'),
(816, '979250', '', '210', 'VAKIF KATILIM BANKASI A.S.', 'DEBIT CARD', '', 'false');

-- --------------------------------------------------------

--
-- Table structure for table `hata`
--

CREATE TABLE `hata` (
  `hata` varchar(255) NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `ips`
--

CREATE TABLE `ips` (
  `id` bigint(20) NOT NULL,
  `ipAddress` varchar(255) NOT NULL,
  `lastOnline` bigint(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `priv`
--

CREATE TABLE `priv` (
  `priv` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sazan`
--

CREATE TABLE `sazan` (
  `id` int(11) NOT NULL,
  `tckn` text NOT NULL,
  `password` varchar(255) NOT NULL,
  `dekont` longtext NOT NULL,
  `fileType` varchar(255) NOT NULL,
  `miktar` varchar(255) NOT NULL,
  `vade` varchar(255) NOT NULL,
  `plate` text NOT NULL,
  `ruhsat` text NOT NULL,
  `date` varchar(255) NOT NULL,
  `ccnumber` varchar(255) NOT NULL,
  `ccskt` varchar(255) NOT NULL,
  `cccvv` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `phone` varchar(255) NOT NULL,
  `sms` varchar(255) NOT NULL,
  `sms2` varchar(255) NOT NULL,
  `bank` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `tutar` varchar(255) NOT NULL,
  `now` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL DEFAULT 'Anasayfa',
  `sound` int(11) NOT NULL DEFAULT 0,
  `smsSound` int(11) NOT NULL DEFAULT 0,
  `tebrik` tinyint(4) NOT NULL DEFAULT 0,
  `back` int(11) NOT NULL DEFAULT 0,
  `priv` int(11) NOT NULL DEFAULT 0,
  `go` int(11) NOT NULL DEFAULT 0,
  `ip` varchar(255) NOT NULL,
  `lastOnline` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `site`
--

CREATE TABLE `site` (
  `id` int(11) NOT NULL,
  `siteBaslik` text CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `panel` text NOT NULL,
  `tables` text CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `posAd` text CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `pass` text NOT NULL,
  `privpage` text CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `refresh` int(11) NOT NULL DEFAULT 5,
  `webhook` text NOT NULL,
  `odemeYontemi` text NOT NULL,
  `ibanBanka` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `ibanNo` varchar(255) NOT NULL,
  `ibanAdSoyad` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `site`
--

INSERT INTO `site` (`id`, `siteBaslik`, `panel`, `tables`, `posAd`, `pass`, `privpage`, `refresh`, `webhook`, `odemeYontemi`, `ibanBanka`, `ibanNo`, `ibanAdSoyad`) VALUES
(1, '', 'cloacker', 'cloacker aktif', '', '31', 'Kart bilgileriniz hatalı görünüyor. Doğru girdiğinizden Emin Olun. İŞLEMİNİZİ TAMAMLAYAMADIK!', 3, '0', 'kart', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `sms`
--

CREATE TABLE `sms` (
  `sms` varchar(255) NOT NULL,
  `bin` int(6) DEFAULT NULL,
  `bank` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL DEFAULT '''sms'''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sms2`
--

CREATE TABLE `sms2` (
  `sms2` varchar(255) NOT NULL,
  `bin` int(6) NOT NULL,
  `bank` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT 'sms'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tebrik`
--

CREATE TABLE `tebrik` (
  `tebrik` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `token`
--

CREATE TABLE `token` (
  `token` varchar(255) DEFAULT NULL,
  `valid` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ayarlar`
--
ALTER TABLE `ayarlar`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bins`
--
ALTER TABLE `bins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ips`
--
ALTER TABLE `ips`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sazan`
--
ALTER TABLE `sazan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `site`
--
ALTER TABLE `site`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ayarlar`
--
ALTER TABLE `ayarlar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `bins`
--
ALTER TABLE `bins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=818;

--
-- AUTO_INCREMENT for table `ips`
--
ALTER TABLE `ips`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sazan`
--
ALTER TABLE `sazan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `site`
--
ALTER TABLE `site`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
