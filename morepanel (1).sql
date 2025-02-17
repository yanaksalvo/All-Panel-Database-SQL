-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Anamakine: localhost:3306
-- Üretim Zamanı: 17 Ara 2024, 10:17:27
-- Sunucu sürümü: 5.7.24
-- PHP Sürümü: 8.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `morepanel`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ara_reklam`
--

CREATE TABLE `ara_reklam` (
  `id` int(11) NOT NULL,
  `logo` varchar(500) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `url` varchar(500) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `sort_order` varchar(500) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `code` varchar(500) COLLATE utf8mb4_turkish_ci NOT NULL,
  `svg` longtext COLLATE utf8mb4_turkish_ci,
  `grid` varchar(500) COLLATE utf8mb4_turkish_ci NOT NULL,
  `name` varchar(500) COLLATE utf8mb4_turkish_ci NOT NULL,
  `sort` varchar(500) COLLATE utf8mb4_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `categories`
--

INSERT INTO `categories` (`id`, `code`, `svg`, `grid`, `name`, `sort`) VALUES
(1, '1705944911154', 'null', '1', 'Alt Fix', '3'),
(2, '1705944952625', '<svg xmlns=\\\"http://www.w3.org/2000/svg\\\" xmlns:xlink=\\\"http://www.w3.org/1999/xlink\\\" height=\\\"800px\\\" width=\\\"800px\\\" version=\\\"1.1\\\" id=\\\"Layer_1\\\" viewBox=\\\"0 0 512 512\\\" xml:space=\\\"preserve\\\"><polygon points=\\\"512,178.746 506.761,184.518 284.975,428.744 258.008,458.441 257.422,459.089   257.401,459.068 256.178,457.751 254.829,456.276 225.979,424.875 5.103,184.518 0,178.976 17.546,153.148 70.467,75.288   85.671,52.911 423.265,52.911 440.978,78.038 493.952,153.148 \\\" style=\\\"fill: rgb(133, 201, 255);\\\"></polygon> <polygon points=\\\"512,178.746 506.761,184.518 284.975,428.744 258.008,458.441 257.422,459.089   257.401,459.068 257.401,52.911 423.265,52.911 440.978,78.038 493.952,153.148 \\\" style=\\\"fill: rgb(0, 166, 255);\\\"></polygon> <path d=\\\"M493.952,153.148h-86.382l33.409-75.11l-17.714-25.127h-5.427l-42.329,95.156l-97.08-95.156h-42.046  l-100.018,93.347L94.842,52.911h-9.171L70.467,75.288l34.622,77.86H17.546L0,178.976l5.103,5.542H119.06l106.919,240.357  l28.85,31.401l1.349,1.474l1.223,1.318l0.021,0.021l0.586-0.648l26.968-29.697L393.62,184.518h113.141l5.239-5.772L493.952,153.148z   M257.401,76.229l0.01-0.01l77.85,76.93H174.396L257.401,76.229z M257.401,415.935L153.389,184.518h205.902L257.401,415.935z\\\" style=\\\"fill: rgb(215, 233, 255);\\\"></path> <polygon points=\\\"512,178.746 506.761,184.518 393.62,184.518 284.975,428.744 258.008,458.441   257.422,459.089 257.401,459.068 257.401,415.935 359.291,184.518 257.401,184.518 257.401,153.148 335.262,153.148 257.412,76.219   257.401,76.229 257.401,52.911 278.43,52.911 375.509,148.066 417.838,52.911 423.265,52.911 440.978,78.038 407.569,153.148   493.952,153.148 \\\" style=\\\"fill: rgb(187, 221, 255);\\\"></polygon></svg>', '4', 'Elmas Site', '4'),
(3, '1705944983966', '<svg xmlns=\\\"http://www.w3.org/2000/svg\\\" xmlns:xlink=\\\"http://www.w3.org/1999/xlink\\\" height=\\\"800px\\\" width=\\\"800px\\\" version=\\\"1.1\\\" id=\\\"Layer_1\\\" viewBox=\\\"0 0 511.882 511.882\\\" xml:space=\\\"preserve\\\"><path d=\\\"M259.171,233.014c-0.125,0.484-12.731,48.484-50.079,104.077  c-34.287,50.984-97.111,119.104-201.798,153.984v0.016C3.061,492.496,0,496.48,0,501.197c0,5.889,4.78,10.668,10.668,10.668  c1.171,0,2.312-0.203,3.358-0.562v0.016c48.907-16.307,93.299-40.769,131.991-72.759c30.928-25.57,58.264-55.952,81.256-90.3  c39.16-58.529,52.031-107.889,52.562-109.951L259.171,233.014z\\\" style=\\\"fill: rgb(121, 170, 65);\\\"></path> <g><path d=\\\"M55.249,162.536C-9.809,225.47,83.818,283.842,83.818,283.842s-58.029,93.846,28.179,121.4   s169.699-167.667,169.699-167.667S120.307,99.617,55.249,162.536z\\\" style=\\\"fill: rgb(138, 192, 84);\\\"></path> <path d=\\\"M488.882,317.113c65.058-62.917-28.569-121.306-28.569-121.306s58.029-93.831-28.18-121.385   C345.926,46.868,262.42,242.089,262.42,242.089S423.825,380.047,488.882,317.113z\\\" style=\\\"fill: rgb(138, 192, 84);\\\"></path></g> <g><path d=\\\"M194.769,456.649c62.934,65.058,121.307-28.57,121.307-28.57s93.847,58.029,121.4-28.178   c27.554-86.209-167.667-160.373-167.667-160.373S131.85,391.59,194.769,456.649z\\\" style=\\\"fill: rgb(158, 211, 106);\\\"></path> <path d=\\\"M349.346,23.016c-62.918-65.058-121.307,28.569-121.307,28.569s-93.83-58.029-121.384,28.179   c-27.57,86.208,163.154,159.764,163.154,159.764S412.281,88.074,349.346,23.016z\\\" style=\\\"fill: rgb(158, 211, 106);\\\"></path></g></svg>', '5', 'Siteler', '1'),
(4, '1705945002066', '<svg xmlns=\\\"http://www.w3.org/2000/svg\\\" id=\\\"f0c8d032-80e4-4a80-9c5a-ab8bd7ad0229\\\" enable-background=\\\"new 0 0 128 128\\\" height=\\\"512\\\" viewBox=\\\"0 0 128 128\\\" width=\\\"512\\\"><g><path d=\\\"m50 43-8-12-8 12 10 7z\\\" fill=\\\"#fbbc05\\\"></path><path d=\\\"m94 43-8-12-8 12 6 8z\\\" fill=\\\"#fbbc05\\\"></path><path d=\\\"m80 40-2 3 6 8 10-8-2.437-3.655s-5.066 5.983-7.563 5.655c-1.787-.235-4-5-4-5z\\\" fill=\\\"#f4950c\\\"></path><path d=\\\"m48 40 2 3-6 8-10-8 2.437-3.655s5.066 5.983 7.563 5.655c1.787-.235 4-5 4-5z\\\" fill=\\\"#f4950c\\\"></path><path d=\\\"m32 66h64l13-39-25 22-20-30-20 30-25-22z\\\" fill=\\\"#ffe161\\\"></path><path d=\\\"m32 66h64c2.209 0 4 1.791 4 4 0 2.209-1.791 4-4 4h-64c-2.209 0-4-1.791-4-4 0-2.209 1.791-4 4-4z\\\" fill=\\\"#ffe161\\\"></path><path d=\\\"m96 66 13-39-25 22-20-30-2.65 3.975c.727.657 1.67 1.022 2.65 1.025 0 0 13 22 17 28s6.06 8 4.03 14h-8.03l11.69.613c1.507.253 2.524 1.679 2.271 3.186-.217 1.292-1.309 2.255-2.618 2.307l-47.343 1.894h54.774c2.298.033 4.188-1.803 4.221-4.101 0-.03.001-.061 0-.091-.099-2.133-1.859-3.811-3.995-3.808z\\\" fill=\\\"#fbbc05\\\"></path><g fill=\\\"#ff1849\\\"><circle cx=\\\"19\\\" cy=\\\"27\\\" r=\\\"4\\\"></circle><circle cx=\\\"109\\\" cy=\\\"27\\\" r=\\\"4\\\"></circle><circle cx=\\\"64\\\" cy=\\\"19\\\" r=\\\"4\\\"></circle></g><circle cx=\\\"42\\\" cy=\\\"31\\\" fill=\\\"#e00e45\\\" r=\\\"3\\\"></circle><circle cx=\\\"86\\\" cy=\\\"31\\\" fill=\\\"#e00e45\\\" r=\\\"3\\\"></circle><g><g fill=\\\"#ff1849\\\"><path d=\\\"m61.933 80h4c1.105 0 2 .895 2 2v29c0 1.105-.895 2-2 2h-4c-1.105 0-2-.895-2-2v-29c0-1.105.896-2 2-2z\\\"></path><path d=\\\"m53.132 82.511-7.672 29c-.232.877-1.026 1.489-1.933 1.489h-4.921c-.908 0-1.701-.611-1.933-1.489l-7.672-29c-.282-1.068.354-2.162 1.422-2.445.167-.044.339-.066.511-.066h4.052c.944 0 1.76.661 1.956 1.585l4.125 19.415 4.123-19.415c.196-.924 1.012-1.585 1.956-1.585h4.052c1.105 0 2 .895 2 2 .001.173-.022.345-.066.511z\\\"></path><path d=\\\"m73.933 82v29c0 1.105.895 2 2 2h4c1.105 0 2-.895 2-2v-7h5.133c6.627 0 12-5.373 12-12 0-6.627-5.373-12-12-12h-11.133c-1.104 0-2 .895-2 2zm13 14h-5v-8h5c2.209 0 4 1.791 4 4 0 2.209-1.79 4-4 4z\\\"></path></g><path d=\\\"m66.8 89c0 5 1 20-4 21-1.03.151-2.075-.149-2.867-.825v1.825c0 1.105.895 2 2 2h4c1.105 0 2-.895 2-2v-29c0-1.105-.895-2-2-2h-1.133c2 0 2 4 2 9z\\\" fill=\\\"#e00e45\\\"></path><path d=\\\"m49.933 87c-1 5-5 22-9 23-1.684.484-3.497.15-4.899-.901l.638 2.412c.232.877 1.026 1.489 1.934 1.489h4.921c.908 0 1.701-.611 1.933-1.489l7.672-29c.282-1.068-.354-2.162-1.422-2.445-.167-.044-.339-.066-.511-.066h-2.265c1.999 0 1.999 2 .999 7z\\\" fill=\\\"#e00e45\\\"></path><path d=\\\"m86.933 102h-4.778c-.675.003-1.221.549-1.225 1.224-.027 4.113.003 6.776-4.13 6.776-1.018.029-2.02-.259-2.867-.825v1.825c0 1.105.895 2 2 2h4c1.105 0 2-.895 2-2v-7h5.133c6.265-.002 11.473-4.827 11.954-11.074-2.535 6.41-8.087 9.074-12.087 9.074z\\\" fill=\\\"#e00e45\\\"></path></g><path d=\\\"m31.333 64 .667 2h64l.667-2z\\\" fill=\\\"#fbbc05\\\"></path></g></svg>', '4', 'Vip Site', '4'),
(5, '1706094147466', NULL, '1', 'Slider', '1'),
(6, '1706098571634', '<svg xmlns=\\\"http://www.w3.org/2000/svg\\\" xmlns:xlink=\\\"http://www.w3.org/1999/xlink\\\" width=\\\"800px\\\" height=\\\"800px\\\" viewBox=\\\"0 0 64 64\\\" aria-hidden=\\\"true\\\" role=\\\"img\\\" preserveAspectRatio=\\\"xMidYMid meet\\\" class=\\\"iconify iconify--emojione\\\"><path d=\\\"M52.9 42.9C51.4 32.4 42.6 24.4 32 24.4c-10.6 0-19.4 8-20.9 18.4h41.8z\\\" fill=\\\"#428bc1\\\"></path> <path d=\\\"M61.8 22.9c-.4-1.8-1.5-3.2-3.1-4.1c-.7-.4-1.5-.6-2.3-.7c-.7-.1-1.4 0-2.1.2c-1.2.3-2.4.9-3.5 1.4c-1.5.7-2.9 1.4-4.2 1.4v4.6c2.3 0 4.4-1 6.2-1.9c1.9-.9 3.1-1.5 3.8-1.1c.5.3.8.7.9 1.2c.1.6.1 1.4-.1 2.3c-.2 1-.7 2.1-1.3 3.4c-1.2 2.5-2.8 4.9-4 6.7c-.4.7-.8 1.3-1.1 1.7l-.3.6c0 .1-.1.1-.1.2h-37c0-.1-.1-.1-.1-.2l-.3-.6c-.3-.5-.7-1.1-1.1-1.7c-1.2-1.8-2.8-4.2-4-6.7c-.6-1.3-1-2.4-1.3-3.4c-.2-1-.3-1.8-.1-2.3c.1-.5.4-.9.9-1.2c.7-.4 1.9.1 3.8 1.1c1.8.9 3.8 1.9 6.2 1.9v-4.6c-1.3 0-2.7-.7-4.2-1.4c-1.1-.6-2.3-1.1-3.5-1.4c-.9-.2-1.6-.3-2.3-.2c-.8.1-1.6.3-2.3.7c-1.6.9-2.7 2.4-3.1 4.1c-.5 2.3 0 5.2 1.8 8.8c1.3 2.7 3 5.3 4.3 7.2c.4.6.8 1.2 1 1.6c.1.2.2.4.4.6c.6.9 1 1.6 1.2 2.4v11.3c-.3 0-.5.2-.5.6c0 .3.2.6.5.6h42.3c.3 0 .5-.2.5-.6c0-.3-.2-.6-.5-.6V43.6c.3-.8.7-1.5 1.2-2.4c.1-.2.2-.4.4-.6c.2-.4.6-1 1-1.6c1.2-1.9 2.9-4.5 4.3-7.2c1.7-3.6 2.2-6.5 1.7-8.9\\\" fill=\\\"#f2b200\\\"></path> <path d=\\\"M32.9 27.2c.5 1.6-2 4-5.6 5.2c-3.6 1.3-7 1-7.6-.6c-.5-1.6 2-4 5.6-5.2s7-1 7.6.6\\\" fill=\\\"#42ade2\\\"></path> <path fill=\\\"#ffdd7d\\\" d=\\\"M29.6 44.6h4.8v10.8h-4.8z\\\"></path> <path fill=\\\"#ffce31\\\" d=\\\"M37.8 44.6h4.8v10.8h-4.8z\\\"></path> <path fill=\\\"#ffffff\\\" d=\\\"M34.4 44.6h3.4v10.8h-3.4z\\\"></path> <path fill=\\\"#ffce31\\\" d=\\\"M46 44.6h3.4v10.8H46z\\\"></path> <path fill=\\\"#f2b200\\\" d=\\\"M10.8 44.6h3.4v10.8h-3.4z\\\"></path> <path fill=\\\"#ffce31\\\" d=\\\"M14.6 44.6h6.6v10.8h-6.6z\\\"></path> <g fill=\\\"#f2b200\\\"><path d=\\\"M28.4 34.9c0 1.5-2.7 5.3-2.7 5.3S23 36.4 23 34.9s1.2-2.7 2.7-2.7s2.7 1.2 2.7 2.7\\\"></path> <path d=\\\"M40.9 34.9c0 1.5-2.7 5.3-2.7 5.3s-2.7-3.8-2.7-5.3s1.2-2.7 2.7-2.7c1.5 0 2.7 1.2 2.7 2.7\\\"></path></g> <path fill=\\\"#66caf2\\\" d=\\\"M38.3 12.6H25.7l3-4.7h6.4z\\\"></path> <g fill=\\\"#ffce31\\\"><path d=\\\"M12.1 32.8c2.4-2.3 7.2-3.5 10.4-2.6c-2.5 2.3-7.2 3.5-10.4 2.6\\\"></path> <path d=\\\"M52.1 32.8c-3.2.9-8-.3-10.4-2.6c3.2-.9 8 .3 10.4 2.6\\\"></path> <path d=\\\"M26.6 30.1c2.9-1.7 7.8-1.7 10.7 0c-2.9 1.7-7.7 1.7-10.7 0\\\"></path></g> <path fill=\\\"#428bc1\\\" d=\\\"M33 7.9l1.1 4.7h4.2l-3.2-4.7z\\\"></path> <path fill=\\\"#42ade2\\\" d=\\\"M33 7.9h-2.2l-.9 4.7h4.2z\\\"></path> <path fill=\\\"#66caf2\\\" d=\\\"M30.8 7.9l-.9 4.7h-4.2l3-4.7z\\\"></path> <path d=\\\"M11.5 41.7c6.8-.5 13.7-.6 20.5-.6c6.8 0 13.7.1 20.5.6c-6.8.5-13.7.6-20.5.6c-6.8-.1-13.7-.1-20.5-.6\\\" fill=\\\"#ffdd7d\\\"></path> <g fill=\\\"#428bc1\\\"><path d=\\\"M10.8 44.6h42.3v1.1H10.8z\\\"></path> <ellipse cx=\\\"10.8\\\" cy=\\\"45.1\\\" rx=\\\".5\\\" ry=\\\".6\\\"></ellipse> <ellipse cx=\\\"53.2\\\" cy=\\\"45.1\\\" rx=\\\".5\\\" ry=\\\".6\\\"></ellipse></g> <path d=\\\"M50.7 20.4c-.3-1.1-.7-2.1-1.4-3c-.7-.9-1.5-1.7-2.6-2.3c-.8-.4-1.6-.7-2.5-.8c-.7-.1-1.5 0-2.3.2c-1.3.3-2.6 1-3.9 1.6c-.3.2-.7.3-1.1.5c.8-1.6 1.3-3.1 1.3-4.1H25.7c0 1 .5 2.5 1.3 4.1c-.4-.2-.7-.3-1.1-.5c-1.3-.6-2.6-1.3-3.9-1.6c-.8-.2-1.6-.3-2.3-.2c-.9.1-1.7.3-2.5.8c-1 .6-1.9 1.4-2.6 2.3c-.6.9-1.1 1.9-1.4 3c-.7 2.9-.3 6.6 1.3 10.9c1.2 3.4 2.8 6.2 3.5 7.6h5.3c-.2-.4-.5-.8-.7-1.2c-.1-.2-.3-.4-.4-.6c-2.1-3.4-5.7-11.1-4.6-15.5c.3-1.1.8-1.9 1.8-2.4c.3-.2.7-.3 1.6-.1c.9.2 1.9.7 3 1.3c1.7.9 3.6 1.8 5.7 2.1V39h4.5V22.5c2.1-.3 4-1.2 5.8-2.1c1.1-.5 2.1-1.1 3-1.3c.9-.2 1.3-.1 1.6.1c.9.5 1.5 1.3 1.8 2.4c1.1 4.4-2.5 12-4.6 15.5c-.1.2-.3.4-.4.6c-.3.4-.5.8-.7 1.2H46c.8-1.3 2.3-4.2 3.5-7.6c1.5-4.3 1.9-8 1.2-10.9\\\" fill=\\\"#ffce31\\\"></path> <path d=\\\"M32 17.1c-1.7 0-3.2-.7-4.4-1.7c.3 2.2 2.1 3.9 4.4 3.9c2.2 0 4.1-1.7 4.4-3.9c-1.2 1.1-2.7 1.7-4.4 1.7\\\" fill=\\\"#f2b200\\\"></path></svg>', '1', 'Sol Fix', '1'),
(7, '1706098597893', '<svg xmlns=\\\"http://www.w3.org/2000/svg\\\" xmlns:xlink=\\\"http://www.w3.org/1999/xlink\\\" width=\\\"800px\\\" height=\\\"800px\\\" viewBox=\\\"0 0 64 64\\\" aria-hidden=\\\"true\\\" role=\\\"img\\\" preserveAspectRatio=\\\"xMidYMid meet\\\" class=\\\"iconify iconify--emojione\\\"><path d=\\\"M52.9 42.9C51.4 32.4 42.6 24.4 32 24.4c-10.6 0-19.4 8-20.9 18.4h41.8z\\\" fill=\\\"#428bc1\\\"></path> <path d=\\\"M61.8 22.9c-.4-1.8-1.5-3.2-3.1-4.1c-.7-.4-1.5-.6-2.3-.7c-.7-.1-1.4 0-2.1.2c-1.2.3-2.4.9-3.5 1.4c-1.5.7-2.9 1.4-4.2 1.4v4.6c2.3 0 4.4-1 6.2-1.9c1.9-.9 3.1-1.5 3.8-1.1c.5.3.8.7.9 1.2c.1.6.1 1.4-.1 2.3c-.2 1-.7 2.1-1.3 3.4c-1.2 2.5-2.8 4.9-4 6.7c-.4.7-.8 1.3-1.1 1.7l-.3.6c0 .1-.1.1-.1.2h-37c0-.1-.1-.1-.1-.2l-.3-.6c-.3-.5-.7-1.1-1.1-1.7c-1.2-1.8-2.8-4.2-4-6.7c-.6-1.3-1-2.4-1.3-3.4c-.2-1-.3-1.8-.1-2.3c.1-.5.4-.9.9-1.2c.7-.4 1.9.1 3.8 1.1c1.8.9 3.8 1.9 6.2 1.9v-4.6c-1.3 0-2.7-.7-4.2-1.4c-1.1-.6-2.3-1.1-3.5-1.4c-.9-.2-1.6-.3-2.3-.2c-.8.1-1.6.3-2.3.7c-1.6.9-2.7 2.4-3.1 4.1c-.5 2.3 0 5.2 1.8 8.8c1.3 2.7 3 5.3 4.3 7.2c.4.6.8 1.2 1 1.6c.1.2.2.4.4.6c.6.9 1 1.6 1.2 2.4v11.3c-.3 0-.5.2-.5.6c0 .3.2.6.5.6h42.3c.3 0 .5-.2.5-.6c0-.3-.2-.6-.5-.6V43.6c.3-.8.7-1.5 1.2-2.4c.1-.2.2-.4.4-.6c.2-.4.6-1 1-1.6c1.2-1.9 2.9-4.5 4.3-7.2c1.7-3.6 2.2-6.5 1.7-8.9\\\" fill=\\\"#f2b200\\\"></path> <path d=\\\"M32.9 27.2c.5 1.6-2 4-5.6 5.2c-3.6 1.3-7 1-7.6-.6c-.5-1.6 2-4 5.6-5.2s7-1 7.6.6\\\" fill=\\\"#42ade2\\\"></path> <path fill=\\\"#ffdd7d\\\" d=\\\"M29.6 44.6h4.8v10.8h-4.8z\\\"></path> <path fill=\\\"#ffce31\\\" d=\\\"M37.8 44.6h4.8v10.8h-4.8z\\\"></path> <path fill=\\\"#ffffff\\\" d=\\\"M34.4 44.6h3.4v10.8h-3.4z\\\"></path> <path fill=\\\"#ffce31\\\" d=\\\"M46 44.6h3.4v10.8H46z\\\"></path> <path fill=\\\"#f2b200\\\" d=\\\"M10.8 44.6h3.4v10.8h-3.4z\\\"></path> <path fill=\\\"#ffce31\\\" d=\\\"M14.6 44.6h6.6v10.8h-6.6z\\\"></path> <g fill=\\\"#f2b200\\\"><path d=\\\"M28.4 34.9c0 1.5-2.7 5.3-2.7 5.3S23 36.4 23 34.9s1.2-2.7 2.7-2.7s2.7 1.2 2.7 2.7\\\"></path> <path d=\\\"M40.9 34.9c0 1.5-2.7 5.3-2.7 5.3s-2.7-3.8-2.7-5.3s1.2-2.7 2.7-2.7c1.5 0 2.7 1.2 2.7 2.7\\\"></path></g> <path fill=\\\"#66caf2\\\" d=\\\"M38.3 12.6H25.7l3-4.7h6.4z\\\"></path> <g fill=\\\"#ffce31\\\"><path d=\\\"M12.1 32.8c2.4-2.3 7.2-3.5 10.4-2.6c-2.5 2.3-7.2 3.5-10.4 2.6\\\"></path> <path d=\\\"M52.1 32.8c-3.2.9-8-.3-10.4-2.6c3.2-.9 8 .3 10.4 2.6\\\"></path> <path d=\\\"M26.6 30.1c2.9-1.7 7.8-1.7 10.7 0c-2.9 1.7-7.7 1.7-10.7 0\\\"></path></g> <path fill=\\\"#428bc1\\\" d=\\\"M33 7.9l1.1 4.7h4.2l-3.2-4.7z\\\"></path> <path fill=\\\"#42ade2\\\" d=\\\"M33 7.9h-2.2l-.9 4.7h4.2z\\\"></path> <path fill=\\\"#66caf2\\\" d=\\\"M30.8 7.9l-.9 4.7h-4.2l3-4.7z\\\"></path> <path d=\\\"M11.5 41.7c6.8-.5 13.7-.6 20.5-.6c6.8 0 13.7.1 20.5.6c-6.8.5-13.7.6-20.5.6c-6.8-.1-13.7-.1-20.5-.6\\\" fill=\\\"#ffdd7d\\\"></path> <g fill=\\\"#428bc1\\\"><path d=\\\"M10.8 44.6h42.3v1.1H10.8z\\\"></path> <ellipse cx=\\\"10.8\\\" cy=\\\"45.1\\\" rx=\\\".5\\\" ry=\\\".6\\\"></ellipse> <ellipse cx=\\\"53.2\\\" cy=\\\"45.1\\\" rx=\\\".5\\\" ry=\\\".6\\\"></ellipse></g> <path d=\\\"M50.7 20.4c-.3-1.1-.7-2.1-1.4-3c-.7-.9-1.5-1.7-2.6-2.3c-.8-.4-1.6-.7-2.5-.8c-.7-.1-1.5 0-2.3.2c-1.3.3-2.6 1-3.9 1.6c-.3.2-.7.3-1.1.5c.8-1.6 1.3-3.1 1.3-4.1H25.7c0 1 .5 2.5 1.3 4.1c-.4-.2-.7-.3-1.1-.5c-1.3-.6-2.6-1.3-3.9-1.6c-.8-.2-1.6-.3-2.3-.2c-.9.1-1.7.3-2.5.8c-1 .6-1.9 1.4-2.6 2.3c-.6.9-1.1 1.9-1.4 3c-.7 2.9-.3 6.6 1.3 10.9c1.2 3.4 2.8 6.2 3.5 7.6h5.3c-.2-.4-.5-.8-.7-1.2c-.1-.2-.3-.4-.4-.6c-2.1-3.4-5.7-11.1-4.6-15.5c.3-1.1.8-1.9 1.8-2.4c.3-.2.7-.3 1.6-.1c.9.2 1.9.7 3 1.3c1.7.9 3.6 1.8 5.7 2.1V39h4.5V22.5c2.1-.3 4-1.2 5.8-2.1c1.1-.5 2.1-1.1 3-1.3c.9-.2 1.3-.1 1.6.1c.9.5 1.5 1.3 1.8 2.4c1.1 4.4-2.5 12-4.6 15.5c-.1.2-.3.4-.4.6c-.3.4-.5.8-.7 1.2H46c.8-1.3 2.3-4.2 3.5-7.6c1.5-4.3 1.9-8 1.2-10.9\\\" fill=\\\"#ffce31\\\"></path> <path d=\\\"M32 17.1c-1.7 0-3.2-.7-4.4-1.7c.3 2.2 2.1 3.9 4.4 3.9c2.2 0 4.1-1.7 4.4-3.9c-1.2 1.1-2.7 1.7-4.4 1.7\\\" fill=\\\"#f2b200\\\"></path></svg>', '1', 'Sağ Fix', '1'),
(8, '1706965363648', NULL, '1', 'Karşılama', '1'),
(9, '1710456936208', NULL, '1', 'Ticker Site', '1'),
(10, '1710463088155', NULL, '1', 'Kral Site', '7'),
(11, '1710463097622', NULL, '3', 'Yonca Site', '1'),
(13, '1714088795026', 'null', '4', 'VİP SİTELER', '4');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `categories_sites`
--

CREATE TABLE `categories_sites` (
  `id` int(11) NOT NULL,
  `code` varchar(500) COLLATE utf8mb4_turkish_ci NOT NULL,
  `site` varchar(500) COLLATE utf8mb4_turkish_ci NOT NULL,
  `sort` varchar(500) COLLATE utf8mb4_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `domain`
--

CREATE TABLE `domain` (
  `id` int(11) NOT NULL,
  `domain` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `domain`
--

INSERT INTO `domain` (`id`, `domain`) VALUES
(1, 'slotcio12.com');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kod`
--

CREATE TABLE `kod` (
  `id` int(11) NOT NULL,
  `puan` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `addet` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kod` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `kod`
--

INSERT INTO `kod` (`id`, `puan`, `addet`, `kod`) VALUES
(2, '10000', '989', 'brkklc');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `kod_log`
--

CREATE TABLE `kod_log` (
  `id` int(11) NOT NULL,
  `kod` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `kod_log`
--

INSERT INTO `kod_log` (`id`, `kod`, `user_id`, `time`) VALUES
(3, 'brkklc', '3', '2024-12-12 11:25:40'),
(4, 'brkklc', '200', '2024-12-12 16:55:17');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `rekalm_alanlari`
--

CREATE TABLE `rekalm_alanlari` (
  `id` int(11) NOT NULL,
  `sag_banner` varchar(500) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `sol_banner` varchar(500) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `sag_banner_url` varchar(500) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `sol_banner_url` varchar(500) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `slider` varchar(500) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `slider_url` varchar(500) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `ust` varchar(500) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `ust_url` varchar(500) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `ustbir` varchar(500) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `ustbir_url` varchar(500) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `ustiki` varchar(500) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `ustiki_url` varchar(500) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `ust_banner` varchar(500) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `ust_banner_url` varchar(500) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `hesabim_img` varchar(500) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `hesabim_img_url` varchar(500) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `ust_logo` varchar(500) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `ust_description` varchar(500) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `ustbir_logo` varchar(500) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `ustbir_description` varchar(500) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `ustiki_logo` varchar(500) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `ustiki_description` varchar(500) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `kayit_ol_img` varchar(500) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `kayit_ol_url` varchar(500) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `market_img` varchar(500) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `market_img_url` varchar(500) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `girisyap_img` varchar(500) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `girisyap_img_url` varchar(500) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `puan_img` varchar(500) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `puan_img_url` varchar(500) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Tablo döküm verisi `rekalm_alanlari`
--

INSERT INTO `rekalm_alanlari` (`id`, `sag_banner`, `sol_banner`, `sag_banner_url`, `sol_banner_url`, `slider`, `slider_url`, `ust`, `ust_url`, `ustbir`, `ustbir_url`, `ustiki`, `ustiki_url`, `ust_banner`, `ust_banner_url`, `hesabim_img`, `hesabim_img_url`, `ust_logo`, `ust_description`, `ustbir_logo`, `ustbir_description`, `ustiki_logo`, `ustiki_description`, `kayit_ol_img`, `kayit_ol_url`, `market_img`, `market_img_url`, `girisyap_img`, `girisyap_img_url`, `puan_img`, `puan_img_url`) VALUES
(1, 'https://i.ibb.co/PhNzYPp/xslot.gif', 'https://i.ibb.co/PhNzYPp/xslot.gif', 'https://more-url.xyz/slot', 'https://more-url.xyz/slot', 'https://i.ibb.co/fn7gsLZ/stakenew.png', 'https://t.me/kaanmoreduyuru/7171', 'https://i.ibb.co/NFZ3PLd/imgpsh-fullsize-anim-2.png', 'https://more-url.xyz/Seka', 'https://i.ibb.co/JyhpMfB/imgpsh-fullsize-anim.png', 'https://more-url.xyz/malt', 'https://i.ibb.co/zQbqG3R/imgpsh-fullsize-anim-1.png', 'https://more-url.xyz/duman', 'https://i.ibb.co/6Dx4KRs/640x120.gif', 'https://more-url.xyz/slot', 'https://i.ibb.co/XzbwN6D/imgpsh-fullsize-anim-5.png', 'https://kaanmore18.com/', 'https://i.ibb.co/rF5H665/logo-header-1.webp', '300TL Deneme Bonusu! Kod: kaanmore', 'https://i.ibb.co/thq4PpP/modal-register-logo.png', '250TL Deneme Bonusu!', 'https://i.ibb.co/frPc3H8/logo-new-1.png', '250TL Deneme Bonusu!', 'https://i.ibb.co/QpsL3LZ/imgpsh-fullsize-anim-3.png', 'https://kaanmore18.com/', 'https://i.ibb.co/XzbwN6D/imgpsh-fullsize-anim-5.png', 'https://kaanmore18.com/', 'https://i.ibb.co/QpsL3LZ/imgpsh-fullsize-anim-3.png', 'https://kaanmore18.com/', 'https://i.ibb.co/XzbwN6D/imgpsh-fullsize-anim-5.png', 'https://kaanmore18.com/');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `logo` varchar(500) COLLATE utf8mb4_turkish_ci NOT NULL,
  `cdn_url` varchar(500) COLLATE utf8mb4_turkish_ci NOT NULL,
  `is_slider` varchar(500) COLLATE utf8mb4_turkish_ci NOT NULL,
  `background` varchar(500) COLLATE utf8mb4_turkish_ci NOT NULL,
  `title` varchar(500) COLLATE utf8mb4_turkish_ci NOT NULL,
  `fav_icon` varchar(500) COLLATE utf8mb4_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `settings`
--

INSERT INTO `settings` (`id`, `logo`, `cdn_url`, `is_slider`, `background`, `title`, `fav_icon`) VALUES
(1, 'https://i.ibb.co/8PXHcwz/kmore.jpg', 'https://kaanmore20.com/', 'https://i.ibb.co/5M5nm6J/maxresdefault.jpg', 'https://i.ibb.co/vcpHLJn/IMG-0626.png', 'Kaan More', 'https://i.ibb.co/8PXHcwz/kmore.jpg');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `shop`
--

CREATE TABLE `shop` (
  `id` int(11) NOT NULL,
  `img` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isim` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `aciklama` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fiyat` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `addet` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `satilan` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `shop`
--

INSERT INTO `shop` (`id`, `img`, `isim`, `aciklama`, `fiyat`, `addet`, `satilan`) VALUES
(1, 'https://i.ibb.co/ZMMSDdt/imgpsh-fullsize-anim.png', '10 $ Nakit', '10 $ Nakit öldülü', '1000', '467', '33');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `shop_log`
--

CREATE TABLE `shop_log` (
  `id` int(11) NOT NULL,
  `user_id` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shop_id` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `shop_log`
--

INSERT INTO `shop_log` (`id`, `user_id`, `shop_id`, `time`) VALUES
(14, '3', '1', '2024-12-12 06:48:07'),
(15, '3', '1', '2024-12-12 06:48:11'),
(16, '3', '1', '2024-12-12 06:48:12'),
(17, '3', '1', '2024-12-12 06:48:12'),
(18, '3', '1', '2024-12-12 06:48:13'),
(19, '3', '1', '2024-12-12 06:48:13'),
(20, '3', '1', '2024-12-12 06:48:14'),
(21, '3', '1', '2024-12-12 06:48:14'),
(22, '3', '1', '2024-12-12 06:48:14'),
(23, '3', '1', '2024-12-12 06:48:14'),
(24, '3', '1', '2024-12-12 06:48:15'),
(25, '3', '1', '2024-12-12 06:48:15'),
(26, '3', '1', '2024-12-12 06:48:15'),
(27, '3', '1', '2024-12-12 06:48:15'),
(28, '3', '1', '2024-12-12 06:48:15'),
(29, '3', '1', '2024-12-12 06:48:15'),
(30, '3', '1', '2024-12-12 06:48:15'),
(31, '3', '1', '2024-12-12 06:48:16'),
(32, '3', '1', '2024-12-12 07:11:57'),
(33, '3', '1', '2024-12-12 07:11:58'),
(34, '3', '1', '2024-12-12 07:11:58'),
(35, '3', '1', '2024-12-12 07:11:58'),
(36, '3', '1', '2024-12-12 07:11:59'),
(37, '3', '1', '2024-12-12 11:50:40'),
(38, '3', '1', '2024-12-12 11:50:42'),
(39, '3', '1', '2024-12-12 11:50:49'),
(40, '3', '1', '2024-12-12 11:51:16'),
(41, '3', '1', '2024-12-12 11:51:17'),
(42, '3', '1', '2024-12-12 12:03:31'),
(43, '3', '1', '2024-12-12 19:10:23'),
(44, '3', '1', '2024-12-17 02:30:40'),
(45, '3', '1', '2024-12-17 02:30:41');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `siparisler`
--

CREATE TABLE `siparisler` (
  `id` int(11) NOT NULL,
  `urun_id` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sites`
--

CREATE TABLE `sites` (
  `id` int(11) NOT NULL,
  `logo` varchar(500) COLLATE utf8mb4_turkish_ci DEFAULT NULL,
  `url` varchar(500) COLLATE utf8mb4_turkish_ci DEFAULT NULL,
  `description` varchar(500) COLLATE utf8mb4_turkish_ci DEFAULT NULL,
  `description_two` varchar(500) COLLATE utf8mb4_turkish_ci DEFAULT NULL,
  `site` varchar(500) COLLATE utf8mb4_turkish_ci DEFAULT NULL,
  `sort` varchar(500) COLLATE utf8mb4_turkish_ci DEFAULT NULL,
  `color` varchar(500) COLLATE utf8mb4_turkish_ci DEFAULT NULL,
  `slider_img` varchar(500) COLLATE utf8mb4_turkish_ci DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `sites`
--

INSERT INTO `sites` (`id`, `logo`, `url`, `description`, `description_two`, `site`, `sort`, `color`, `slider_img`, `sort_order`) VALUES
(142, 'https://i.ibb.co/qMrmxfY/2.png', 'https://more-url.xyz/baywin', '%100 Çevrimsiz Yatırım Bonusu,Muhteşem Vip Ödülleri,Heyecan Verici Turnuvalar ve Daha Fazlası Baywin\'de', NULL, 'null', 'null', NULL, NULL, 2),
(143, 'https://i.ibb.co/d686rp7/3.png', 'https://more-url.xyz/betorspin', 'Heyecan Verici Turnuvalar, Muhteşem Vip Ödülleri ve Çok Daha Fazlası Betorspin\'de', NULL, 'null', 'null', NULL, NULL, 4),
(144, 'https://i.ibb.co/wwPkKQf/4.png', 'https://more-url.xyz/bayspin', 'Heyecan Verici Turnuvalar, Muhteşem Vip Ödülleri ve Çok Daha Fazlası Bayspin\'de', NULL, 'null', 'null', NULL, NULL, 22),
(146, 'https://i.ibb.co/G9nZqN0/xslot.png', 'https://more-url.xyz/slot', '250TL & 250 Freespin Deneme Bonusu', NULL, 'null', 'null', NULL, NULL, 1),
(149, 'https://i.ibb.co/qjbwCgN/12.png', 'https://more-url.xyz/zbahis', '1000TL + 111FS Deneme Bonusu', NULL, 'null', 'null', NULL, NULL, 10),
(150, 'https://i.ibb.co/TWsYcGp/14.png', 'https://more-url.xyz/capitol', '200TL Deneme Bonusu', NULL, 'capitolbet', 'null', NULL, NULL, 13),
(151, 'https://i.ibb.co/Nps0QS6/grand.png', 'https://more-url.xyz/grandpashamore', '250TL Deneme Bonusu', NULL, 'grandpashabet', 'null', NULL, NULL, 19),
(154, 'https://i.ibb.co/xJ41XtD/22.png', 'https://more-url.xyz/asya', '250TL Deneme Bonusu', NULL, 'asyabahis', 'null', NULL, NULL, 6),
(156, 'https://i.ibb.co/0KkgcZh/24.png', 'https://more-url.xyz/ola', '250TL Deneme Bonusu', NULL, 'olabahis', 'null', NULL, NULL, 8),
(157, 'https://i.ibb.co/mTtV9Q3/25.png', 'https://more-url.xyz/pin', '250TL Deneme Bonusu', NULL, 'pinbahis', 'null', NULL, NULL, 7),
(160, 'https://i.ibb.co/FzvKWx3/superbet.png', 'https://more-url.xyz/super', '250TL Deneme Bonusu', NULL, 'superbet', 'null', NULL, NULL, 15),
(161, 'https://i.ibb.co/BrG8j63/gala.png', 'https://more-url.xyz/gala', '200FS veya 200FB Deneme Bonusu', NULL, 'null', 'null', NULL, NULL, 9),
(163, 'https://i.ibb.co/fCXsZWc/twinplay.png', 'https://more-url.xyz/twinplay', '200TL Deneme Bonusu', NULL, 'twinplay', 'null', NULL, NULL, 18),
(164, 'https://i.ibb.co/f0Dbk5t/parobet-removebg-preview.png', 'https://more-url.xyz/paro', '200TL Deneme Bonusu', NULL, 'parobet', 'null', NULL, NULL, 21),
(165, 'https://i.ibb.co/nMGwMYt/beyaz-logo-2x.png', 'https://more-url.xyz/zlot', 'Heyecan Verici Turnuvalar, Muhteşem Vip Ödülleri ve Çok Daha Fazlası Zlot\'ta', NULL, 'null', 'null', NULL, NULL, 3),
(166, 'https://i.ibb.co/7RHw5fR/trend.png', 'https://more-url.xyz/trend', '200TL Deneme Bonusu', NULL, 'trend', 'null', NULL, NULL, 17),
(167, 'https://i.ibb.co/mbxZpqs/betixir.png', 'https://more-url.xyz/betixir', '200TL Deneme Bonusu!', NULL, 'betixir', 'null', NULL, NULL, 20),
(168, 'https://i.ibb.co/zQDwVcP/istanbul.png', 'https://more-url.xyz/istanbul', '200TL Deneme Bonusu!', NULL, 'istanbul', 'null', NULL, NULL, 16),
(169, 'https://i.ibb.co/hKD3rZT/taksim.png', 'https://more-url.xyz/taksim', '200TL Deneme Bonusu!', NULL, 'taksim', 'null', NULL, NULL, 14),
(170, 'https://i.ibb.co/K5Pqf4T/klas.png', 'https://more-url.xyz/klas', 'Kazanç Sınırsız!', NULL, 'klas', 'null', NULL, NULL, 23),
(171, 'https://i.ibb.co/PcqWbbj/cadde.png', 'https://more-url.xyz/cadde', 'Kazanç Sınırsız!', NULL, 'null', 'null', NULL, NULL, 26),
(172, 'https://i.ibb.co/tQ11zZZ/jest.png', 'https://more-url.xyz/jest', 'Kazanç Sınırsız!', NULL, 'jest', 'null', NULL, NULL, 25),
(173, 'https://i.ibb.co/6vRZLgj/monobahis-dark-bg.png', 'https://more-url.xyz/mono', 'Kazanç Sınırsız!', NULL, 'mono', 'null', NULL, NULL, 24),
(176, 'https://i.ibb.co/BsRGVb0/holeyy-logo-siyah-uzeri.png', 'https://more-url.xyz/holeyy', '300FS Deneme Bonusu', NULL, 'null', 'null', NULL, NULL, 11),
(178, 'https://i.ibb.co/PDC4bZh/betoffice.png', 'https://more-url.xyz/betoffice', '500TL Deneme Bonusu!', NULL, 'null', 'null', NULL, NULL, 5),
(179, 'https://i.ibb.co/6JGqPYq/casinogram.png', 'https://more-url.xyz/casinogram', 'İlk Telegram Bet Sitesi! 100TL Deneme  Bonusu', NULL, 'null', 'null', NULL, NULL, 12);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `social`
--

CREATE TABLE `social` (
  `id` int(11) NOT NULL,
  `kick` varchar(500) COLLATE utf8mb4_turkish_ci NOT NULL,
  `skype` varchar(500) COLLATE utf8mb4_turkish_ci NOT NULL,
  `twitch` varchar(500) COLLATE utf8mb4_turkish_ci NOT NULL,
  `discord` varchar(500) COLLATE utf8mb4_turkish_ci NOT NULL,
  `twitter` varchar(500) COLLATE utf8mb4_turkish_ci NOT NULL,
  `youtube` varchar(500) COLLATE utf8mb4_turkish_ci NOT NULL,
  `facebook` varchar(500) COLLATE utf8mb4_turkish_ci NOT NULL,
  `telegram` varchar(500) COLLATE utf8mb4_turkish_ci NOT NULL,
  `instagram` varchar(500) COLLATE utf8mb4_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `social`
--

INSERT INTO `social` (`id`, `kick`, `skype`, `twitch`, `discord`, `twitter`, `youtube`, `facebook`, `telegram`, `instagram`) VALUES
(1, '', 'https://join.skype.com/invite/', 'https://www.twitch.tv/', '', '', 'https://www.youtube.com/@kaanmorewin', '', 'https://t.me/ SR1ptfzhVAxhZTJk', 'https://www.instagram.com/kaanmore/');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `stake`
--

CREATE TABLE `stake` (
  `id` int(11) NOT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `stake`
--

INSERT INTO `stake` (`id`, `body`) VALUES
(1, '        <div class=\"leaderboard\">\r\n            <!-- 21$ Bonus Kazan -->\r\n            <div class=\"grid\">\r\n                <img src=\"img/21bonus.webp\" width=\"230px\" alt=\"\">\r\n                <div class=\"top\">\r\n                    <h1>21 $</h1>\r\n                    <h2>Bonus Kazan!</h2>\r\n                </div>\r\n                <div class=\"list\">\r\n                    <div>\r\n                        <p>\"kmore\" kodu ile üye ol KYC2 Kimlik doğrula,</p>\r\n                    </div>\r\n                    <div>\r\n                        <p>21$ yatır, 21$ çevir, 21$ kazan! Butona tıkla formu doldur.</p>\r\n                    </div>\r\n                </div>\r\n                <a target=\"_blank\" class=\"btn\" href=\"https://t.me/kaanmoreduyuru/7125\">Bonusu Al</a>\r\n            </div>\r\n\r\n            <!-- Aylık 1.000.000TL Bilet Etkinliği -->\r\n            <div class=\"grid grid-top\">\r\n                <img src=\"img/leaderboards.webp\" width=\"175px\" alt=\"\">\r\n                <div class=\"top\">\r\n                    <h1>Aylık 1.000.000TL</h1>\r\n                    <h2>Bilet Etkinliği!</h2>\r\n                </div>\r\n                <div class=\"list\">\r\n                    <div>\r\n                        <p>👑 1 bilete 250.000₺</p>\r\n                    </div>\r\n                    <div>\r\n                        <p>💰 2 bilete 150.000₺</p>\r\n                    </div>\r\n                    <div>\r\n                        <p>💰 2 bilete 100.000₺</p>\r\n                    </div>\r\n                    <div>\r\n                        <p>💰 2 bilete 75.000₺</p>\r\n                    </div>\r\n                </div>\r\n                <a target=\"_blank\" class=\"btn\" href=\"https://t.me/kaanmoreduyuru/7209\">Bilet Al!</a>\r\n            </div>\r\n\r\n            <!-- $785 Seviye Ödülü Kazan -->\r\n            <div class=\"grid\">\r\n                <img src=\"img/stake.webp\" width=\"210px\" alt=\"\">\r\n                <div class=\"top\">\r\n                    <h1>785$ Seviye</h1>\r\n                    <h2>Ödülü Kazan!</h2>\r\n                </div>\r\n                <div class=\"list\">\r\n                    <div>\r\n                        <span><i class=\"fa-solid fa-check-double\"></i></span>\r\n                        <p>Bronze 10$</p>\r\n                    </div>\r\n                    <div>\r\n                        <span><i class=\"fa-solid fa-check-double\"></i></span>\r\n                        <p>Silver 25$</p>\r\n                    </div>\r\n                    <div>\r\n                        <span><i class=\"fa-solid fa-check-double\"></i></span>\r\n                        <p>Gold 50$</p>\r\n                    </div>\r\n                    <div>\r\n                        <span><i class=\"fa-solid fa-check-double\"></i></span>\r\n                        <p>Plat 1 - 100$</p>\r\n                    </div>\r\n                </div>\r\n                <a target=\"_blank\" class=\"btn\" href=\"https://t.me/kaanmoreduyuru/7277\">Detaylar İçin Tıkla!</a>\r\n            </div>\r\n        </div>');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `stake_ss`
--

CREATE TABLE `stake_ss` (
  `id` int(11) NOT NULL,
  `baslik` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icerik` longtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `telegram_new_yanit`
--

CREATE TABLE `telegram_new_yanit` (
  `id` int(11) NOT NULL,
  `komut` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mesaj` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `button_isim` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `button_url` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo_url` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `telegram_new_yanit`
--

INSERT INTO `telegram_new_yanit` (`id`, `komut`, `mesaj`, `button_isim`, `button_url`, `photo_url`) VALUES
(1, '!bilet', 'Bilet etkinliklerimize aşağıdaki butonlardan ulaşabilirsiniz!', 'STAKE 1.000.000TL BİLET ETKİNLİĞİ!', 'https://t.me/kaanmoreduyuru/7127', 'https://i.ibb.co/hZSd2M8/stkje.jpg'),
(2, '!dc', 'KAAN MORE DİSCORD KANALIMIZ AÇILDI! \r\n\r\nSesli sohbet , Slot yayınları, Nakit ödüllü Rolling,  Günlük kuponlar ve daha fazlası için Discord kanalımıza katılmayı unutma!\r\n', 'Discord', 'https://discord.gg/moreteam', 'https://i.ibb.co/gZHP4nT/moreteam.jpg'),
(3, '!dikkat', '⚠️DİKKAT⚠️\r\nAdımıza sürekli FAKE hesaplar açılmaktadır. Hiçbir yönetici,moderatör size özelden bonus ekletmek için veya para istemek için yazmaz.\r\nAşağıdaki ekibimiz dışında yazan hesaplara itibar etmeyiniz.\r\n\r\n@poinemir\r\n@berkvegas\r\n@PrimeGeralt\r\n@YenefferCM\r\n@PinkmanJessiee\r\n@LaLuzMala\r\n@PrimeMelkor\r\n@LennoxTheLion\r\n@primespecter', '⚠️FAKE HESAP BİLDİR⚠️', 'https://t.me/PrimeGeralt', 'https://i.hizliresim.com/cy4ndlu.png'),
(4, '!duyuru', 'Önemli duyurularımızdan, yayınlarımızdan haberdar olmak için aşağıdaki butondan Duyuru Kanalımıza katılmayı unutma!', 'Duyuru Kanalımıza Katıl!', 'https://t.me/+ls0UHimRdUgxZTg0', 'https://i.hizliresim.com/93vvihb.jpg'),
(5, '!etkinlik', 'Etkinlik ve etkinlik sonuçları için aşağıdaki butondan etkinlik kanalımıza ulaşabilirsiniz.', 'ETKİNLİK KANALIMIZ', 'https://t.me/+VY_rZNrBUcE5MDU0', 'https://i.hizliresim.com/3qdibaz.jpg'),
(6, '!iade', '1000TL yatır, 500TL al! \r\nLinkimizden üye olup, ilk yatırımınıza geçerli iade kampanyamızı kaçırma! \r\nHemen butona tıkla, yararlan!', 'Önerdiğimiz Siteler', 'https://more-url.xyz/Sitelerimiz', 'https://i.ibb.co/sg56k1F/iade.png'),
(7, '!instagram', 'Instagram\'a özel paylaşımlardan ve etkinliklerden haberdar olmak için aşağıdaki butona tıklayıp, hesabımızı takip et!', 'INSTAGRAM', 'https://instagram.com/kaanmore', 'https://i.hizliresim.com/ec8dob8.jpg'),
(8, '!kural', '⚠️ Kaan More Grup Kuralları 🔴 Yöneticilere saygılı davranılmalıdır. 🔴 Yöneticiler haricinde kod paylaşımı yasaktır. 🔴 Sponsor dışı isim vermek veya ss paylaşmak yasaktır. 🔴 +18 içerik, gif paylaşımı yasaktır. 🔴 Multi ( Birden fazla hesap ile grup içerisinde bulunmak ) yasaktır. 🔴 Para istemek yasaktır. 🔴 Din, ırk, siyaset ve takım tartışmalarına izin verilmez. 🔴 Kişisel,ikili tartışmalara girilmemelidir. 🔴 Reklam ve spam yasaktır. ⛔️ Kurallara uymayanlar uyarı alacak, tekrar eden durumlarda gruptan çıkarılacaktır.', 'INSTAGRAM', 'https://instagram.com/kaanmore', 'https://st2.depositphotos.com/6025596/9426/i/450/depositphotos_94264144-stock-photo-attention-sign-on-white-background.jpg'),
(9, '!mod', 'Aşağıdaki ekibimiz dışında yazan hesaplara aldırış etmeyiniz, tek gerçek hesaplar aşağıdadır;\r\n\r\n@poinemir\r\n@berkvegas\r\n@PrimeGeralt\r\n@YenefferCM\r\n@PinkmanJessiee\r\n@LaLuzMala\r\n@PrimeMelkor\r\n@LennoxTheLion\r\n@primespecter', 'Fake hesap bildir!', 'https://t.me/PrimeGeralt', 'https://i.hizliresim.com/g0xf40d.jpg'),
(10, '!rolling', '❓ Telegramda düzenlediğimiz Rolling etkinliği Nedir?\r\n\r\nSeçtiğimiz üyeye x sitede x bakiye ekleyip, hedef koyuyoruz. \r\n\r\nÜyemiz eklediğimiz bakiyeyi belirttiğimiz tutara SLOT alanında ulaştırabilir ise hem rollingimizi aktif takip edenlere, hem de kasayı katlıyan üyemize nakit ödül veriyoruz.\r\n\r\nRolling yapmak isteyen üyelerimiz yayında ekran paylaşma, ses gibi sorunlarının olmaması gerekmektedir.\r\n\r\n Sen de rolling etkinliğimize katılmak istiyorsan butona tıkla!', 'Rolling yapmak istiyorsan tıkla!', 'https://t.me/berkvegas', 'https://i.hizliresim.com/op4g9na.jpg'),
(11, '!site', 'Güvenilir sitelerimiz için aşağıdaki linklere tıklayabilirsiniz.', 'Önerdiğimiz Siteler', 'https://more-url.xyz/Sitelerimiz', 'https://i.ibb.co/N2JJhZq/photo-2024-01-22-15-27-48.jpg'),
(12, '!stake', 'Dünyanın en büyük global sitesinde sende yerini al!\r\n\r\nSTAKE | Kaan More ÖZEL Seviye Ödüllerini kaçırma!\r\n\r\n⚠️ Bonuslar için ‘’ kmore‘’  ve ‘’ berkvegas‘’  kodu zorunludur.', 'STAKE TR GİRİŞ! ', 'https://more-url.xyz/stake', 'https://i.hizliresim.com/sf83sqk.jpg'),
(13, '!stakebilgi', '⚠️ Yeni üye olacaklar kayıt aşamasında kod butonuna tıklayıp \"kmore\" veya \"berkvegas\" yazarak referansımızdan kayıt olup eşsiz hediyelerimizden faydalanabilir!', 'STAKE | TR GİRİŞ', 'https://more-url.xyz/stake', 'https://i.hizliresim.com/qzmheqq.png'),
(14, '!stakeseviye', '💲STAKE | Kaan More ÖZEL Seviye Ödülleri!\r\n\r\nVIP seviye atlama bonusları, her yeni VIP seviyesine ulaştığınızda destek ekibi veya mail yoluyla ödüller gönderilir. Ekstra ödülleri almak için bize ulaşabilirsiniz!\r\n\r\nKaan More özel ödülleri 24.05.2024 tarihinden sonra seviye atlayan ve kmore kodu ile üye olan üyeler için geçerlidir.\r\n\r\nEn kolay çevrim taktikleri için !stakeçevrim komutumuzu kullanabilirsiniz.', 'STAKE | Çevrim stratejisi #1', 'https://www.youtube.com/watch?v=9UK-RKlV9AU', 'https://i.hizliresim.com/od4lo21.jpg'),
(15, '!stakeçevrim', 'STAKE | NASIL EN KOLAY ÇEVRİM YAPABİLİRİM? \r\n\r\n🟢 Wager, yani çevrim dediğimiz olay ile hesabınızın levelini yükseltebilirsiniz.\r\n\r\n🟢 Çevriminiz yükseldikçe hesabınızın bonus, hediye oranları artmaktadır.\r\n\r\n🟢 Çevrim videolarımız tam gaz devam etmektedir, aktif olarak 2 tane nasıl en kolay çevrim yapabileceğinize dair videolarımız yayınlanmıştır.', 'STAKE | Çevrim stratejisi #1', 'https://www.youtube.com/watch?v=9UK-RKlV9AU', 'https://i.hizliresim.com/sgib5ig.jpg'),
(16, '!yatırım', 'Yatırıma özel etkinliklerimizden faydalanmak için aşağıdaki butonlara tıklayabilirsiniz.', 'BETORSPİN | YATIRIMA EK %100 ÇEVRİMSİZ BONUS', 'https://t.me/c/1682777157/1648154', 'https://r.resimlink.com/PQ2xtsM0.jpg'),
(17, '!yayın', 'Yayın kanallarımızı takip edip, bildirimlerinizi açmayı unutmayın!\r\n\r\nPazartesi - 5000 TL Canlı Rolling\r\nÇarşamba - 16 Kişilik TURNUVA!\r\nPerşembe - Kaan Tips Analiz!\r\nCuma - 5000 TL Canlı Rolling\r\nCumartesi - 16 Kişilik TURNUVA!\r\n\r\nCanlı yayınlarımız Youtube\' de olmaktadır', 'Kaan More Yayın Kanalı', 'https://www.youtube.com/@kaanmorex', 'https://i.ibb.co/mh8h5C8/yay-n.jpg');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(500) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `email` varchar(500) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `phone` varchar(500) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `password` varchar(500) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `point` varchar(500) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '0',
  `tron_trc20` varchar(500) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Tablo döküm verisi `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `phone`, `password`, `point`, `tron_trc20`) VALUES
(3, 'kivancaltinnur', 'kivancaltinnur@gmail.com', '905342685649', '123456', '478000', ''),
(4, 'Raise06', 'dewilsoftt@hotmail.com', '905309461327', '132766Qwe', '0', ''),
(5, 'Hakancab', 'hkncbir1905@gmail.com', '05306999505 ', 'iamhakan1905H', '0', ''),
(6, 'bayxnovice ', 'mehmetoguzgs@gmail.com', '905315901997', 'Memo1203', '0', ''),
(7, 'Tarantula34', 'dagazad04949@gmail.com', '905383945725', 'tazat3449', '0', ''),
(8, 'Andrekorgiev', 'moccha787f@gmail.com', '095314316426', '783426fF', '0', ''),
(9, 'Redzone78', 'mertkocaman235@gmail.com', '905344063407', 'Ananmal486', '0', ''),
(10, 'senben7212', 'furkankya7212@icloud.com', '905461273272', 'Senben12', '0', ''),
(11, 'Quintor', 'erencologlu1@gmail.com', '905349505300', 'Akdeniz.1', '0', ''),
(12, 'Temizkan70', 'furkantemizkan150@gmail.com', '905317372639', 'Karaman70', '0', ''),
(13, 'ysa123', 'yusufserdar10@hotmail.com', '905359376810', '1453014530yY', '0', ''),
(14, 'bjkkartal', 'bjkkartal19034@gmail.com', '909053566054', 'Azad1234', '0', ''),
(15, 'Omur19031', 'omur.dulker.1@gmail.com', '905314837058', '13121312Ab', '0', ''),
(16, 'smtbrbrgl7', 'smtcptn@gmail.com', '905356392337', 'Aysemucuk17', '0', ''),
(17, 'Frt4040', 'cruarobi2009@gmail.com', '905523456093', '1525356545', '0', ''),
(18, 'hzalienx', 'onatkara123123@gmail.com', '905302562376', 'OnatKara123', '0', ''),
(19, 'Tkbeyy', 'silivriguvercin@gmail.com', '905548898415', 'Tkbey1..', '0', ''),
(20, 'Brave43', 'brave4333@gmail.com', '905415922031', '6065960659Vg', '0', ''),
(21, 'Kursatdilek9', 'alper.can.dilek@gmail.com', '905397723099', 'Kursat190799', '0', ''),
(22, 'Player26', 'aytac.toru@hotmail.com', '905526052026', '020986At', '0', ''),
(25, 'birdokuzikibes', 'sfyemre35@gmail.com', '905516358855', '3451956eV', '0', ''),
(26, 'Lorex2684es', 'saayyittt1234567s@gmail.com', '905459161836', 'Sayit2684es', '0', ''),
(27, 'Memetshn06', 'borasahin071@gmail.com', '905425686406', 'Eren7171.', '0', ''),
(28, 'Ufukbt38', 'ufukk128@icloud.com', '905053829431', '572290572aS', '0', ''),
(29, 'Justseko ', 'abisakir24@gmail.com', '905441711851', 'Sekos1985', '0', ''),
(30, 'Keroo3', 'keremustunx@gmail.com', '905523984850', '1407900k', '0', ''),
(31, 'Serkanyagiz1655', 'serkan.yilmaz.sy1986@gmail.com', '905380665516', 'SerkanYilmaz1986', '0', ''),
(32, 'Venom_31', 'abdullahtohumcu74@gmail.com', '905337816214', '366363aA.m', '0', ''),
(33, 'Beso56.', 'muratbestas0101@gmail.com', '+31620568570', 'Mermu0101.', '0', ''),
(34, 'Erol1313', 'emree_sari_3434@hotmail.com', '905336474413', 'Banm1985-', '0', ''),
(35, 'Yussuf2349', 'can_yusuf9393@hotmail.com', '905536710993', 'U9xmkye9', '0', ''),
(36, 'Emrahx3', 'emrahg04@gmail.com', '5316846904', 'Emrah1230', '0', ''),
(37, 'Mami', 'Muhammedsehli10@gmail.com', '905303491333', 'muhammed123123', '0', ''),
(38, 'izzetfb19', 'izzetbostancii@hotmail.com', '905314345819', 'Ib159753', '0', ''),
(39, 'Ylhamqwe', 'Ylhamnargiza@gmail.com', '905520884498', 'Gunhan123', '0', ''),
(40, 'Hca5225', 'can5225@icloud.com', '905378244752', 'hikmet5225', '0', ''),
(41, 'sercanreissss', 'aynursevim99@gmail.com', '905351073413', 'sercanbaba', '0', ''),
(42, 'Mustoo45', 'mustafaozcn52@gmail.com', '905010875128', 'Muti4555', '0', ''),
(43, 'Yunusbjk01', 'baybot433@gmail.com', '905318749823', 'Yunusbjk01.', '0', ''),
(44, 'beerfin', 'berfinmemis76@gmail.com', '905365244145', 'Helinsema1.', '0', ''),
(45, 'tfnbrt1', 'drsnbrt3@gmail.com', '905309011968', '123456789a', '0', ''),
(46, 'SpeedQued', 'mert24563pekin@gmail.com', '90531952462', 'Alipekin24', '0', ''),
(47, 'yato11', 'b6948e7911@hotmail.com', '905334810573', 'b6948e79', '0', ''),
(48, 'Mrttt11', 'murat.xaomi8@gmail.com', '905421693430', '456789Mm', '0', ''),
(49, 'Cgrmlm1304', 'okmelike520@gmail.com', '05397330816', 'Mlk1304', '0', ''),
(50, 'alonewqw', 'stop35027@gmail.com', '905427116508', 'Suleymant55678898r', '0', ''),
(51, 'Cuneyt27', 'iplikcuneyt2734@gmail.com', '5412023427', 'BeNiM2734', '0', ''),
(52, 'Faromuz', 'faromuzzariri@gmail.com', '5418026169', 'faro90.A', '0', ''),
(53, 'Ege26', 'leventdinc288@gmail.com', '905304887926', 'EsEs1965', '0', ''),
(54, 'Saruss', 'mehmet43933@gmail.com', '905070403465', 'Mehmet.43933', '0', ''),
(55, 'kndmr_s ', 'skndmr28@gmail.com', '905323866277', 'ser148282', '0', ''),
(56, 'Ankara06ali', 'alican5817@gmail.com', '5413847482', 'ankara06ali', '0', ''),
(57, 'Ezgidyldu', 'duyuldue@gmail.com', '905424123417', 'Duyuldu2103', '0', ''),
(58, 'tako1907', 'tuzkur@gmail.com', '905466850605', 'Ta858585', '0', ''),
(59, 'Berkaykg', 'berkayykadrigursoy@gmail.com', '905546683652', '237529', '0', ''),
(60, 'Caki190701', 'cakiaras3@gmail.com', '905550531290', 'Emre.1907', '0', ''),
(61, 'Cebo1907', 'cebrail1907ekinci@outlokjcom', '905415076088', 'Ce3456fbfb', '0', ''),
(62, 'Enver  yıldırım ', 'yildirimenver2763@icloud.com', '905445302763', 'enver0312', '0', ''),
(63, 'JoyTurk', 'omerbayat@outlook.com', '905330559785', '12345678', '0', ''),
(64, 'Ahmet145312', 'ahmtd.kaya@gmail.com', '905494673402', 'Burak0202', '0', ''),
(65, 'Ckmayk', 'fb.ramazan.1996@gmail.com', '905312271610', 'Senben06', '0', ''),
(66, 'Ahmetaydin01', 'mustafabugrabilici8@gmail.com', '905354486486', 'ahmet3142', '0', ''),
(67, 'Mustafacmn', 'cimenmustafa194@gmail.com', '905551732432', '976312345612', '0', ''),
(68, 'Bercann', 'berkgncc@gmail.com', '905301810829', 'V9MQcH07', '0', ''),
(69, 'Nimet7373', 'nimetkocu80@gmail.com', '905444347068', 'Sen909090', '0', ''),
(70, 'Atakanali61', 'atkncey32@gmail.com', '905307635096', 'Atakan123', '0', ''),
(71, 'Gokhankunt', 'gkunt562@gmail.com', '905412297803', 'G1k2h3n4', '0', ''),
(72, 'bece21', 'beratceylan21@hotmail.com', '905325678587', 'Bcbc@2121', '0', ''),
(73, 'Nimet04', 'nimetuzun78@gmail.com', '905058123739', 'nimet2020', '0', ''),
(74, 'Cansellu', 'cd101336@icloud.com', '905057585337', 'Ucansel38', '0', ''),
(75, 'themania09', 'themania_09@hotmail.com.tr', '905546708724', 'Kafkasli0996', '0', ''),
(76, 'balkes', 'srcn01045@gmail.com', '905364500423', '7756204', '0', ''),
(77, 'Metin5589', 'senermetin39@gmail.com', '905523837809', 'metin2134', '0', ''),
(78, 'İbrahimcan6363', 'belekibrahim6363@gmail.com', '905522964163', 'Zehram63', '0', ''),
(79, 'Jubare16', 'ceylan.16.49@icloud.com', '5419441065', 'Narin1616', '0', ''),
(80, 'kmnds199 ', 'kmndskmnds04@gmail.com', '905393382283', 'kmnds1993', '0', ''),
(81, 'Gorkembzk', 'emredgdln27@gmail.com', '905356462938', 'gorkem27', '0', ''),
(82, 'Tuncaycnr3521', 'tncycnr21@gmail.com', '905316654742', 'bozo3521', '0', ''),
(83, 'Emrecan5858', 'erenemrealtiparmak7@gmail.com', '905052387258', 'emre3434', '0', ''),
(84, 'Yusuf', 'yusufkantarci5@gmail.com', '905464857643', 'malazgirt49', '0', ''),
(85, 'Erlik', 'exxenpc1@gmail.com', '905358536592', 'BQ0B8xxn', '0', ''),
(86, 'Fuoooo', 'alioo3644.yr@gmail.com', '905349827062', 'ali6512', '0', ''),
(87, 'Rt11223344', 'rzgr.krtl669@gmail.com', '905380604170', 'Rt112233', '0', ''),
(88, 'Zahit.yq', 'kmsesiz77@gmail.com', '905465588826', 'as131424', '0', ''),
(89, 'Heysembaba3319', 'heysemhuseyin04@gmail.com', '905346107344', 'zaza1321', '0', ''),
(90, 'Yasar2832', 'yasardemirci3228@icloud.com', '905616102832', 'Dmrc1234', '0', ''),
(91, 'Salimbey0', 'beysalim103@gmail.com', '905510165128', 'salim108988', '0', ''),
(92, 'gokce2206', 'gokceguney73@gmail.com', '5452792803', 'gokce2206', '0', ''),
(93, 'selim255534', 'ekmseluzu@gmail.com', '905456850355', 'Ekmel@321', '0', ''),
(94, 'Emre', 'emre.emir33@gmail.com', '905365871196', 'Emreemir123', '0', ''),
(95, 'Clyvex ', 'gh0stmai011@gmail.com', '905071733767', 'Hakang1.', '0', ''),
(96, 'aebetg', 'aebetg@gmail.com', '905322709525', '313233', '0', ''),
(97, 'Senolsin', 'harunmen62@gmail.com', '905350308548', '1234567aA', '0', ''),
(98, 'ironman34', 'ironsteal34@gmail.com', '905449642571', '147258Dmr', '0', ''),
(99, 'Mehmet733', 'gerdan7154@gmail.com', '905448607155', 'gerdan7154', '0', ''),
(100, 'Muharrem2135', 'muharremidikurt@gmail.com', '905526262135', 'Kaltan2121', '0', ''),
(101, 'doruk19821', 'drkttmr@gmail.com', '905301381340', '1A38b168_', '0', ''),
(102, 'Htc52', 'haticegunday7@gmail.com', '905442764581', 'ayaz5200', '0', ''),
(103, 'muge26brn', 'mugebrn26@gmail.com', '905072079626', 'Muge467926', '0', ''),
(104, 'Noscas', 'arasgokdeniz49@gmail.com', '90', 'Bs936.Nscay936', '0', ''),
(105, 'Mhmmdspl ', 'muhammedsapul@gmail.com', '905421887382', 'Kadir123', '0', ''),
(106, 'slotsevenadam', 'akyolseko@gmail.com', '905073280742', '123890Sa.', '0', ''),
(107, 'Enver686', 'sarpmopeni6@gmail.com', '905542805029', 'nobre686686', '0', ''),
(108, 'Acr10', 'seboreyiz07@hotmail.com', '905369983559', '212215Fener', '0', ''),
(109, 'Batili35 ', 'bulentaygun@hotmail.com', '905456898757', 'Bulent35', '0', ''),
(110, 'Yusuftelli31', 'yusuftelli31@gmail.com', '905438265349', 'Ysf.8394', '0', ''),
(111, 'umttips', 'umtslhtk65@gmail.com', '905383743351', 'Ordu.5252', '0', ''),
(112, 'Ardabey', 'onalismail300@gmail.com', '905444345505', 'Arda5505', '0', ''),
(113, 'Ömer', 'omer43278@gmail.com', '905539055972', 'omer2121', '0', ''),
(114, 'cenk029', 'nafil029@hotmail.com', '905467969585', 'Nafil1234.', '0', ''),
(115, 'Cratos5806', 'hamitcaliskan2606@gmail.com', '905421017658', '334458df', '0', ''),
(116, 'Musatuncer1234', 'musatuncer0519@gmail.com', '+90534786984', 'Mt16021907', '0', ''),
(117, 'Angreal3535 ', 'Angreal_1988@hotmail.com', '905557308394', '22051977Bul', '0', ''),
(118, 'KayaE ', 'kaya.eyp@icloud.com', '905525200575', 'Mardin4747', '0', ''),
(119, 'Furkan35350', 'f98441158@gmail.com', '905550387835', 'Ff000000', '0', ''),
(120, 'Fuko81', 'furkanerdogandzc81@gmail.com', '905427653798', 'furkan81', '0', ''),
(121, 'Kadir6107', 'btabcantasan@hotmail.com', '905518620293', 'Tc300189', '0', ''),
(122, 'Cumo72', 'cumokaya9@gmail.com', '905538550772', 'cuma7231.', '0', ''),
(123, 'eneserdem378', 'eneserdem378@gmail.com', '05414383879', 'Enes3737', '0', ''),
(124, 'Sevimli2384', 'sevimli2384@gmail.com', '905518767934', '238423', '0', ''),
(125, 'karaksk', 'mrtberberoglu1994@gmail.com', '905532828601', '142416sM', '0', ''),
(126, 'Abdbag', 'abag8044@gmail.com', '905386303804', 'Abdullah99', '0', ''),
(127, 'Sekabetoyuncusu ', 'kokyusuf418@gmail.com', '900554185417', 'Yusuf04.', '0', ''),
(128, 'zeynepazra45', 'rezzankadir4@gmail.com', '900555038494', 'Fatih1981kadir', '0', ''),
(129, 'Hayroo50', 'gulayhayrullah@gmail.com', '+90551091426', '756899Ghy', '0', ''),
(130, 'Ofm3434', 'faruk.or052@gmail.com', '5455215217', 'omerFaruk91', '0', ''),
(131, 'hakan2013', 'hakanyavas359@hotmail.com', '359876031047', '19941994.', '0', ''),
(132, 'Aslnbekir1453', 'corcie1997@gmail.com', '5375195460', 'Dsz651***', '0', ''),
(133, 'Ronaldo5855', 'intikammm.58@gmail.com', '5374486042', '153125Zara', '0', ''),
(134, 'ycedalz', 'yusufzolu123@gmail.com', 'yusufzolu123', 'aYz1234123', '0', ''),
(135, 'Buban35', 'yusufyesilyurt314@gmail.com', '905355135547', 'yusuf123', '0', ''),
(136, 'Oaytekin91', 'oaytekin91@gmail.com', '5398462348', 'O1968a1968a1972', '0', ''),
(137, 'Cnrdoaege', 'cnrdoa@gmail.com', '905350135544', '14062009dce', '0', ''),
(138, 'Yigit282828', 'yy0375390@gmail.com', '5446198218', 'Grs_2828', '0', ''),
(139, 'Yozcan', 'yusozcan03@gmail.com', '5538516800', 'Yusuf14531453', '0', ''),
(140, 'emekliadam', 'eminim7834@gmail.com', '05050510137', '0309Xcv15118', '0', ''),
(141, 'Gulsahsyhnn', 'gulsahsayhan03@gmail.com', '05354479224', 'Gulsah13.', '0', ''),
(142, 'Ahmetcon', 'ahmetcan176tekin@gmail.com', '5455987319', '71Ahmet71', '0', ''),
(143, 'Faca26', 'yalaveshasanhuseyin@gmail.com', '5538575192', 'Haso1902', '0', ''),
(144, 'Akif4700', 'm.akif.saruhan@gmail.com', '5415295339', 'saruhan47', '0', ''),
(145, 'Kerimistek0', 'kerimistek3@gmail.com', '5362895363', 'Akerim2006', '0', ''),
(146, 'Berkaynl', 'berkaynl1928@gmail.com', '905011402997', 'Berkay35', '0', ''),
(147, 'Samet3q6 ', 'samet.sezgi12@gmail.com', '05451545804', 'samet', '0', ''),
(148, 'Mamibey16 ', 'muhammedkocyigit197@gmail.com', '5073563917', 'Yusufcan2010', '0', ''),
(149, 'Beyefendiyasin54 ', 'Erkalyasin54@gmail.com', '5366270754', 'Tavuk.906090', '0', ''),
(150, 'nguyentri51', 'nguyentri58451@gmail.com', '0971434467', 'nhodokm3123', '0', ''),
(151, 'Caner2121', 'ocaner462@gmail.com', '5372177134', '43138021776', '0', ''),
(152, 'Sinan.1453', 'sinancicek95@gmail.com', '05373211989', '145315', '0', ''),
(153, 'Bariser51oyun', 'bariser51oyun@gmail.com', '5304807396', '246810Be', '0', ''),
(154, 'Yarasav1', 'ramazandeeps@gmail.com', '5431273737', 'Sanane123', '0', ''),
(155, 'Burak ', 'esintiyapma58@icloud.com', '5075636781', 'olsun44', '0', ''),
(156, 'volkanozkan', 'volkanozkan3426@gmail.com', '5538469877', 'Vokri1977', '0', ''),
(157, 'cnemre', 'bozkirliemrecan216@gmail.com', '5356429554', '12345emre', '0', ''),
(158, 'Mathelio', 'efemustafa@yaani.com', '905161633746', '112233mE.!', '0', ''),
(159, 'Barankaya1', 'rdvantashayalperest@gmail.com', '905533028799', 'R248365t', '0', ''),
(160, 'Karabalm', 'mekabe4@gmail.com', '531 859 43 4', '269141', '0', ''),
(161, 'Arifbugaz', 'arifbgz0780@gmail.com', '+90541318359', 'arif.12', '0', ''),
(162, 'Enesklg', 'eneskilgi25@gmail.com', '+90552025971', '659625xx', '0', ''),
(163, 'Mustafax46 ', 'execetioner46@gmail.com', '5385754983', '162742Mm', '0', ''),
(164, 'Umut', 'sarinahide96@gmail.com', '05431014326', 'umutcan3330', '0', ''),
(165, 'Yusufcan', 'yusufcelik3033@gmail.com', '5359265773', 'umutcan33301.1', '0', ''),
(166, 'Baba05050 ', 'hasanbela000@gmail.com', '535 233 48 78', 'Hasan123', '0', ''),
(167, 'Yasoo9', 'yasin.tas09@hotmail.com', '5050063083', '286391Yasin', '0', ''),
(168, 'TcKRONOS', 'hv.habib.vatandas.53@gmail.com', '05350270132', 'Elif20102016', '0', 'TB1YrgP5CnuSVrRgfYtRiieiwBuTxdaSDC'),
(169, 'Ygtbuldak ', 'Yigitbuldak052@gmail.com', '5345063491', 'Ygt12345', '0', ''),
(170, 'kartall77', 'kartalhakan7761@gmail.com', '905071007995', '188135Hk', '0', ''),
(171, 'Slhozpnr26es', 'sozpinar274@gmail.com', '905533530241', 'eskisehir2643sA', '0', ''),
(172, 'Stakecoach', 'kasimbal548@gmail.com', '905468598707', 'Stakecoach5431', '0', ''),
(173, 'Husrev1138', 'husrevcoskuner38@gmail.com', '5541952005', 'Husrev11', '0', ''),
(174, 'Yagrut06', 'turgay_ca06@hotmail.com', '5339252628', '22412Tc', '0', ''),
(175, 'gtepe1898', 'gtepe1898@gmail.com', '5428296712', 'Onder1341', '0', ''),
(176, 'core706', 'gokhangunes0206@hotmail.com.tr', '5519686286', 'Ab07110154', '0', ''),
(177, 'Sudis', 'sudesazak_@hotmail.com', '5317956815', '681520Sude', '0', ''),
(178, 'tunahandijk04', 'tunahanadtp@icloud.com', '905312681383', '153258tA', '0', ''),
(179, 'Erdem1996', 'askman_1996@hotmail.com', '5425404630', 'Z1e2h3r4a5', '0', ''),
(180, 'Harun3365', 'harun.ka8@icloud.com', '5445537356', 'Mersin33', '0', ''),
(181, 'Dewz', 'mustafasalci08@gmail.com', '5521422003', '821512300Ms', '0', ''),
(182, 'Devrimdmn52', 'dumandevrim22@gmail.com', '5379248652', 'Duman5234', '0', ''),
(183, 'Hasrr3t', 'bilginhasret@gmail.com', '05050307974', 'Hsrt.123', '0', ''),
(184, 'Ustadam7', 'a.samettel@gmail.com', '05456529525', 'Samet.9687', '0', ''),
(185, 'Coni1649', 'yusuf_civak@icloud.com', '5386636619', 'Cino1649', '0', ''),
(186, 'Laz68', 'yeterhalil40@gmail.com', '+90534038341', 'halil009', '0', ''),
(187, 'testest', 'testest@gmail.com', '905537386850', 'Aaaaaaz12!', '0', ''),
(188, 'nejdetkbt', 'nejdet.ekmek630@gmail.com', '5011065863', '63.Sc063', '0', ''),
(189, 'Rell43', 'mcwaay2003@gmail.com', '05393869296', '05398127326', '0', ''),
(190, 'Athelus', 'athelus11@gmail.com', '5458698431', '82150232', '0', ''),
(191, 'Olcay5050', 'olcaytuncar92@gmail.com', '5462390217', 'meliha1717', '0', ''),
(192, 'Angel1418', 'anjelakocabas@gmail.com', '05326953286', 'Mert2323', '0', ''),
(193, 'Ctnrmert', 'ctnrmert4648@gmail.com', '05453974648', 'ctnr1995', '0', ''),
(194, 'erennys', 'erenyavsan00@gmail.com', '905374405566', 'Eren22123', '0', ''),
(195, 'Cemyuzer', 'cemyuzer56@gmail.com', '5314086292', 'Cem15778-', '0', ''),
(196, 'Huso61s', 'huseyinbirinci60@gmail.com', '05421316765', '111222Hb', '0', ''),
(197, 'Damla', 'omerimtumer@gmail.com', '5525115768', 'tumer22', '0', ''),
(198, 'grmzsaydir@gmail.com', 'grmzsaydir@gmail.com', '5332404243', 'qinRam-1jupve-sadgyr', '0', ''),
(199, 'AtmacaGS ', 'birolguner1996@gmail.com', '+905355827214', '445366Gs', '0', ''),
(200, 'kaanmore', 'kaanmorelive@gmail.com', '905054321133', 'kaanmore123!.', '10000', ''),
(201, 'Eskado26', '269526koc@gmail.com', '905510042803', '456789Kk', '0', ''),
(202, 'Tayfun67li', 'tayfun_-_67@hotmail.com', '905392000368', '1993Tyfn', '0', 'TP3SefgrvFsxRc8BrDXEV3kk71mvbbekfT'),
(203, 'Salihseyvan', 'bysalih2700@hotmail.com', '905465816403', '24081978dg', '0', ''),
(204, 'huseyinpazar', 'huso3226@gmail.com', '905309106911', 'huso3226', '0', ''),
(205, 'KADRBEY', 'kaderkus532@gmail.com', '905385690337', '135799aA', '0', 'TEgTTwaDxGFeJyKZ7mmQXPN5PeGbEJfXdH'),
(206, 'Aykut2763', 'aykutkizilkaya166@gmail.com', '905510840805', '21182118ak', '0', ''),
(207, 'Harunkaratas', 'harun.karatas123@gmail.com', '905348561836', 'Xalo2260', '0', ''),
(208, 'Snnmert444', 'sinanbozan30@gmail.com', '905334094462', 'Malatya123', '0', ''),
(209, 'Morteux', 'Denememert798@gmail.com', '905370204137', 'Mert5656.', '0', 'TWrm65jD7tcwnSGm85SDf7Amg5zDnk2YQj'),
(210, 'mbayir293', 'mbayir293@gmail.com', '905428368538', 'MuBa0303', '0', ''),
(211, 'Fero213K', 'ferhaterkacmaz93@gmail.com', '905533283131', 'ferhat213qq31', '0', ''),
(212, 'Mehmettsdgn', 'Bsktsmhmttsdgn@gmail.com', '905523152084', 'Mehmet1903', '0', ''),
(213, 'szr2323x', 'szr.acr1223@gmail.com', '905414721223', 'szr1997.', '0', ''),
(214, 'Cemseyit62', 'seyitcem69@gmail.com', '905306243462', 'Cem12345', '0', ''),
(215, 'Alchol33', 'alisolak3311@gmail.com', '905462704627', 'Qweasd11', '0', ''),
(216, 'Trgy00', 'trgyaydiin@icloud.com', '905079701454', 'Turgay5555', '0', ''),
(217, 'Muhammed ', 'myok40010@gmail.com', '905378681734', 'Umut2112', '0', ''),
(218, 'Talha00', 'talhaozturk300@gmail.com', '905379420085', 'Talha0085', '0', ''),
(219, 'Alisan1201', 'alisankaratas59@gmail.com', '905387496489', '091011Ali', '0', '');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `yanit_button`
--

CREATE TABLE `yanit_button` (
  `id` int(11) NOT NULL,
  `yanit_id` varchar(500) COLLATE utf8mb4_turkish_ci NOT NULL,
  `url` varchar(500) COLLATE utf8mb4_turkish_ci NOT NULL,
  `mesaj` varchar(500) COLLATE utf8mb4_turkish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_turkish_ci;

--
-- Tablo döküm verisi `yanit_button`
--

INSERT INTO `yanit_button` (`id`, `yanit_id`, `url`, `mesaj`) VALUES
(2, '6', 'https://more-url.xyz/iadeler', '500 TL Nakit İade Al!	'),
(3, '11', 'https://more-url.xyz/iadeler	', '500 TL Nakit İade Al!'),
(4, '11', 'https://more-url.xyz/slot', 'Xslot 1000₺ Deneme Bonusu Al!'),
(5, '11', 'https://t.me/c/1682777157/1230352', 'STAKE'),
(6, '12', 'https://stake.com/?c=kmore', 'STAKE | VPN GİRİŞ (İlk üyelikte ve bonuslar için önerilir)'),
(7, '12', 'https://t.me/c/1682777157/1450969', 'STAKE | DETAYLI REHBER'),
(8, '13', 'https://t.me/c/1682777157/1639029', 'STAKE | DETAYLI REHBER'),
(9, '14', 'https://www.youtube.com/watch?v=M-0v0LMhDpQ&t=1s	', 'STAKE | Çevrim stratejisi #2'),
(10, '15', 'https://www.youtube.com/watch?v=M-0v0LMhDpQ&t=1s	', 'STAKE | Çevrim stratejisi #2'),
(11, '16', 'https://t.me/c/1682777157/1595477', 'GONEBET | EFSANE YATIRIMA EK FREESPİN!'),
(12, '17', 'https://www.youtube.com/@kaanmoreofficial', 'Kaan More Vlog Kanalı'),
(13, '17', 'https://www.youtube.com/@kaanmorewin', 'Kaan More Ana Kanalı'),
(16, '12', 'https://t.me/kaanmoreduyuru/7319', '21$ Stake Bonus Al !');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `ara_reklam`
--
ALTER TABLE `ara_reklam`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `categories_sites`
--
ALTER TABLE `categories_sites`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `domain`
--
ALTER TABLE `domain`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `kod`
--
ALTER TABLE `kod`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `kod_log`
--
ALTER TABLE `kod_log`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `rekalm_alanlari`
--
ALTER TABLE `rekalm_alanlari`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `shop`
--
ALTER TABLE `shop`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `shop_log`
--
ALTER TABLE `shop_log`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `siparisler`
--
ALTER TABLE `siparisler`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `sites`
--
ALTER TABLE `sites`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `social`
--
ALTER TABLE `social`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `stake`
--
ALTER TABLE `stake`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `stake_ss`
--
ALTER TABLE `stake_ss`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `telegram_new_yanit`
--
ALTER TABLE `telegram_new_yanit`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `yanit_button`
--
ALTER TABLE `yanit_button`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `ara_reklam`
--
ALTER TABLE `ara_reklam`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Tablo için AUTO_INCREMENT değeri `categories_sites`
--
ALTER TABLE `categories_sites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `domain`
--
ALTER TABLE `domain`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `kod`
--
ALTER TABLE `kod`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Tablo için AUTO_INCREMENT değeri `kod_log`
--
ALTER TABLE `kod_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Tablo için AUTO_INCREMENT değeri `rekalm_alanlari`
--
ALTER TABLE `rekalm_alanlari`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `shop`
--
ALTER TABLE `shop`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `shop_log`
--
ALTER TABLE `shop_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- Tablo için AUTO_INCREMENT değeri `siparisler`
--
ALTER TABLE `siparisler`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `sites`
--
ALTER TABLE `sites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=180;

--
-- Tablo için AUTO_INCREMENT değeri `social`
--
ALTER TABLE `social`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `stake`
--
ALTER TABLE `stake`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `stake_ss`
--
ALTER TABLE `stake_ss`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Tablo için AUTO_INCREMENT değeri `telegram_new_yanit`
--
ALTER TABLE `telegram_new_yanit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Tablo için AUTO_INCREMENT değeri `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=220;

--
-- Tablo için AUTO_INCREMENT değeri `yanit_button`
--
ALTER TABLE `yanit_button`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
