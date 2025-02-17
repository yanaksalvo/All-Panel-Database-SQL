-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Янв 11 2024 г., 04:14
-- Версия сервера: 10.4.32-MariaDB-log
-- Версия PHP: 8.1.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `999new`
--

-- --------------------------------------------------------

--
-- Структура таблицы `addons`
--

CREATE TABLE `addons` (
  `id` int(11) NOT NULL,
  `user` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `concs` int(11) NOT NULL,
  `attacktime` int(11) NOT NULL,
  `blacklist` int(11) NOT NULL,
  `apiaccess` int(11) NOT NULL,
  `premium` int(11) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `addon_coupons`
--

CREATE TABLE `addon_coupons` (
  `id` int(11) NOT NULL,
  `code` varchar(255) NOT NULL,
  `percent` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `expire_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `apikeys`
--

CREATE TABLE `apikeys` (
  `id` int(11) NOT NULL,
  `user` varchar(255) NOT NULL,
  `api_key` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `attacklogs`
--

CREATE TABLE `attacklogs` (
  `id` int(11) NOT NULL,
  `user` varchar(255) NOT NULL,
  `target` varchar(255) NOT NULL,
  `port` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `method` varchar(255) NOT NULL,
  `concs` int(11) NOT NULL,
  `stopped` int(11) NOT NULL,
  `servers` varchar(255) NOT NULL,
  `premium` int(11) NOT NULL,
  `apiattack` int(11) NOT NULL,
  `date` int(11) NOT NULL,
  `datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `attacklogs`
--

INSERT INTO `attacklogs` (`id`, `user`, `target`, `port`, `time`, `method`, `concs`, `stopped`, `servers`, `premium`, `apiattack`, `date`, `datetime`) VALUES
(13078, 'korrupt', 'https://prax.wtf/', 80, 45, 'HTTPS', 1, 0, '#1 Dedicated', 1, 1, 1689542551, '2023-07-16 23:22:31'),
(15517, 'nsaec00', '80.15.154.94', 80, 60, 'UDP-BYPASS', 1, 0, '#2 Dedicated', 1, 0, 1689779000, '2023-07-19 17:03:20');

-- --------------------------------------------------------

--
-- Структура таблицы `bans`
--

CREATE TABLE `bans` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `reason` varchar(500) NOT NULL,
  `date` datetime NOT NULL,
  `expire` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `blacklist`
--

CREATE TABLE `blacklist` (
  `id` int(11) NOT NULL,
  `target` varchar(500) NOT NULL,
  `type` enum('ASN','IP','URL','DOMAIN') NOT NULL,
  `user` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `blacklist`
--

INSERT INTO `blacklist` (`id`, `target`, `type`, `user`) VALUES
(120, 'gov', 'DOMAIN', '999stresser'),
(121, 'bank', 'DOMAIN', '999stresser'),
(122, '999stresser.gay', 'DOMAIN', '999stresser'),
(123, 'https://tls.mrrage.xyz/nginx_status', 'URL', '999stresser');

-- --------------------------------------------------------

--
-- Структура таблицы `coupons`
--

CREATE TABLE `coupons` (
  `id` int(11) NOT NULL,
  `code` varchar(255) NOT NULL,
  `percent` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `expire_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `coupons`
--

INSERT INTO `coupons` (`id`, `code`, `percent`, `created_at`, `expire_at`) VALUES
(3, 'SA20', 20, '2027-07-07 06:48:03', 1691469960);

-- --------------------------------------------------------

--
-- Структура таблицы `methods`
--

CREATE TABLE `methods` (
  `id` int(11) NOT NULL,
  `apiname` varchar(255) NOT NULL,
  `publicname` varchar(255) NOT NULL,
  `type` enum('FREEL4','AMP','UDP','TCP','BOTNET','FREEL7','BASICL7','PREMIUML7') NOT NULL,
  `premium` int(11) NOT NULL,
  `timelimit` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `methods`
--

INSERT INTO `methods` (`id`, `apiname`, `publicname`, `type`, `premium`, `timelimit`) VALUES
(5, 'MIXAMP', '[PREMIUM] MIXAMP - Multiple Amplifcation', 'AMP', 1, 400),
(6, 'NTP', 'NTP - Spoofed NTP flood', 'AMP', 0, 400),
(7, 'DNS', 'DNS - Spoofed DNS flood', 'AMP', 0, 400),
(8, 'SADP', '[PREMIUM] SADP - SADP Amplification', 'AMP', 0, 400),
(13, 'TCP-BYPASS', '[PREMIUM] TCP-BYPASS - High PPS TCP', 'TCP', 1, 400),
(15, 'TCP', 'TCP - Spoofed SYN/ACK', 'TCP', 0, 400),
(19, 'GAME', 'GAME - Random protocols &amp; payloads', 'BOTNET', 0, 400),
(22, 'TLSV2', 'TLSV2 - HTTP/2 Flooder using TLS Connections', 'BASICL7', 0, 400),
(24, 'HTTP-BROWSER', '[PREMIUM] HTTP-BROWSER - HTTP/2 flood emulating Chrome + Firefox.', 'PREMIUML7', 1, 400),
(27, 'HTTPS', '[PREMIUM] HTTPS - HTTP/2 + HTTP/1 using GET', 'PREMIUML7', 1, 180),
(45, 'TLS', '[FREE] HTTPS-FREE', 'FREEL7', 0, 60),
(46, 'HTTPS-STRONG', '[PREMIUM] HTTPS-STRONG - HTTP/2 using GET + POST', 'PREMIUML7', 1, 600),
(47, 'HTTPS-EXPLOIT', '[PREMIUM] HTTPS-EXPLOIT- HTTP/2 Flood with auto-detection of ratelimit.', 'PREMIUML7', 1, 600),
(48, 'TFO', '[PREMIUM] TFO - TCP flood using TFO cookies', 'TCP', 1, 600),
(49, 'TCPBOT', '[PREMIUM] TCPBOT - TCP ACK from botnet', 'BOTNET', 1, 600),
(50, 'UDPBOT', '[PREMIUM] UDPBOT - UDP from botnet', 'BOTNET', 1, 600),
(51, 'OVH-KILL', '[PREMIUM] OVH-KILL - Simple OVH Handshake flood which allow traffic go through', 'TCP', 1, 600),
(52, 'OVH-BYPASS', '[PREMIUM] OVH-BYPASS - Mixed OVH Flood &amp; Payloads with Botnet', 'BOTNET', 1, 600),
(53, 'UDP', 'UDP - Spoofed UDP Flood', 'UDP', 0, 600),
(54, 'UDP-BYPASS', '[PREMIUM] UDP-BYPASS - Spoofed UDP flood for Bypass', 'UDP', 1, 600),
(55, 'SOCKET', '[PREMIUM] SOCKET - High Socket/s flood', 'TCP', 1, 600),
(56, 'STD', '[PREMIUM] STD - Spoofed STD flood (PowerFull)', 'AMP', 1, 400);

-- --------------------------------------------------------

--
-- Структура таблицы `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `icon` enum('fire','heart','bolt','gift','database','adjust','exclamation','template','ban','dollar') NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `news`
--

INSERT INTO `news` (`id`, `title`, `description`, `icon`, `date`) VALUES
(16, 'Update 10.07 2023', '<br />\n⭐️ Thank you for the great interest in our site, we are not slowing down with updates<br />\n we have prepared a discount code for you: CODE20 (-20%) ⭐️<br />\n<br />\n<br />\n× \"TCP-BYPASS\" has been updated.  (much more power)<br />\n× \"MIXAMP\" has been updated.  (much more power)<br />\n× \"TCP-SOCKET\" has been updated.  <br />\n× \"ROBLOX\" has been added.  <br />\n× \"HTTPS\" has been updated.  <br />\n× \"MAGIC-UDP\" has been updated. <br />\n× \"HTTPS-STRONG\" has been updated.<br />\n× \"MAGIC OVH-TCP\" has been updated.<br />\n<br />\n<br />\n⭐️Power Proofs https://t.me/powerproofs999', 'fire', '2023-07-11 16:20:46'),
(17, 'Update 11.07 2023', '\n⭐️ We added more slots for Layer4/Layer7\nso there should be no problem with full servers.\n<br />\n<br />\n\n⭐️We have strengthened all AMP and TCP methods\nThey should now push more gbs/pps\n<br />\n<br />\n\n⭐️Fixed errors with page not loading\n<br />\n<br />\n\n⭐️We are moving to a much more powerful dedicated server the day after tomorrow.\n<br />\n<br />\n\nKind regards,\n<br />\n@Cheatioxx | 999stresser.gay', 'database', '2023-07-11 16:31:32'),
(16, 'Update 10.07 2023', '<br />\n⭐️ Thank you for the great interest in our site, we are not slowing down with updates<br />\n we have prepared a discount code for you: CODE20 (-20%) ⭐️<br />\n<br />\n<br />\n× \"TCP-BYPASS\" has been updated.  (much more power)<br />\n× \"MIXAMP\" has been updated.  (much more power)<br />\n× \"TCP-SOCKET\" has been updated.  <br />\n× \"ROBLOX\" has been added.  <br />\n× \"HTTPS\" has been updated.  <br />\n× \"MAGIC-UDP\" has been updated. <br />\n× \"HTTPS-STRONG\" has been updated.<br />\n× \"MAGIC OVH-TCP\" has been updated.<br />\n<br />\n<br />\n⭐️Power Proofs https://t.me/powerproofs999', 'fire', '2023-07-11 16:20:46'),
(17, 'Update 11.07 2023', '\n⭐️ We added more slots for Layer4/Layer7\nso there should be no problem with full servers.\n<br />\n<br />\n\n⭐️We have strengthened all AMP and TCP methods\nThey should now push more gbs/pps\n<br />\n<br />\n\n⭐️Fixed errors with page not loading\n<br />\n<br />\n\n⭐️We are moving to a much more powerful dedicated server the day after tomorrow.\n<br />\n<br />\n\nKind regards,\n<br />\n@Cheatioxx | 999stresser.gay', 'database', '2023-07-11 16:31:32'),
(16, 'Update 10.07 2023', '<br />\n⭐️ Thank you for the great interest in our site, we are not slowing down with updates<br />\n we have prepared a discount code for you: CODE20 (-20%) ⭐️<br />\n<br />\n<br />\n× \"TCP-BYPASS\" has been updated.  (much more power)<br />\n× \"MIXAMP\" has been updated.  (much more power)<br />\n× \"TCP-SOCKET\" has been updated.  <br />\n× \"ROBLOX\" has been added.  <br />\n× \"HTTPS\" has been updated.  <br />\n× \"MAGIC-UDP\" has been updated. <br />\n× \"HTTPS-STRONG\" has been updated.<br />\n× \"MAGIC OVH-TCP\" has been updated.<br />\n<br />\n<br />\n⭐️Power Proofs https://t.me/powerproofs999', 'fire', '2023-07-11 16:20:46'),
(17, 'Update 11.07 2023', '\n⭐️ We added more slots for Layer4/Layer7\nso there should be no problem with full servers.\n<br />\n<br />\n\n⭐️We have strengthened all AMP and TCP methods\nThey should now push more gbs/pps\n<br />\n<br />\n\n⭐️Fixed errors with page not loading\n<br />\n<br />\n\n⭐️We are moving to a much more powerful dedicated server the day after tomorrow.\n<br />\n<br />\n\nKind regards,\n<br />\n@Cheatioxx | 999stresser.gay', 'database', '2023-07-11 16:31:32');

-- --------------------------------------------------------

--
-- Структура таблицы `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `content` varchar(1024) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `payments`
--

CREATE TABLE `payments` (
  `id` int(11) NOT NULL,
  `uniqid` varchar(1000) NOT NULL,
  `user` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `amount` int(11) NOT NULL,
  `crypto_address` varchar(1000) NOT NULL,
  `crypto_amount` varchar(255) NOT NULL,
  `amount_paid` varchar(255) NOT NULL DEFAULT '0',
  `crypto_uri` varchar(500) NOT NULL,
  `gateway` varchar(255) NOT NULL,
  `confirmations` int(11) DEFAULT 0,
  `hash` varchar(500) NOT NULL DEFAULT 'Please pay to get hash',
  `created_at` int(11) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `payments`
--

INSERT INTO `payments` (`id`, `uniqid`, `user`, `type`, `amount`, `crypto_address`, `crypto_amount`, `amount_paid`, `crypto_uri`, `gateway`, `confirmations`, `hash`, `created_at`, `status`) VALUES
(1, 'd5349e-0ef2bd7618-b066d2', '999stresser', 'Deposit', 7, 'bc1qklttfshea8e09xxtu7f6knp8g755ekk3wcanle', '0.000232657', '0', 'bitcoin:bc1qklttfshea8e09xxtu7f6knp8g755ekk3wcanle?amount=0.00023266', 'BITCOIN', 0, 'Please pay to get hash', 1687987834, 'VOIDED'),
(46, '8cbb7c-ab99df060c-43f810', 'Ampfer', 'Deposit', 10, 'TD8qMBS8zwiWBQys8i973PrSygrLXqvYTW', '10', '0', 'usdt:TD8qMBS8zwiWBQys8i973PrSygrLXqvYTW?value=10', 'USDT', 0, 'Please pay to get hash', 1690031564, 'PENDING');

-- --------------------------------------------------------

--
-- Структура таблицы `plans`
--

CREATE TABLE `plans` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `premium` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `concs` int(11) NOT NULL,
  `length` int(11) NOT NULL,
  `lengthtype` varchar(255) NOT NULL,
  `pagelength` varchar(255) NOT NULL,
  `private` varchar(5) NOT NULL,
  `apiaccess` int(11) NOT NULL,
  `supportprio` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `custom` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `plans`
--

INSERT INTO `plans` (`id`, `name`, `premium`, `time`, `concs`, `length`, `lengthtype`, `pagelength`, `private`, `apiaccess`, `supportprio`, `price`, `custom`) VALUES
(0, 'FREE', 0, 60, 1, 1, 'Years', 'month', 'yes', 0, 0, 666666, 'no'),
(8, 'BASIC #1', 0, 120, 1, 1, 'Months', 'month', 'no', 0, 0, 8, 'no'),
(9, 'BASIC #2', 0, 300, 1, 1, 'Months', 'month', 'no', 0, 0, 10, 'no'),
(10, 'PREMIUM #1', 1, 120, 1, 1, 'Months', 'month', 'no', 0, 0, 20, 'no'),
(11, 'PREMIUM #2', 1, 300, 1, 1, 'Months', 'month', 'no', 0, 0, 25, 'no'),
(12, 'PREMIUM #3', 1, 300, 2, 1, 'Months', 'month', 'no', 0, 1, 35, 'no'),
(13, 'DELUXE #1', 1, 300, 3, 1, 'Months', 'month', 'no', 1, 1, 60, 'no'),
(14, 'DELUXE #2', 1, 600, 3, 1, 'Months', 'month', 'no', 1, 1, 70, 'no'),
(15, 'DELUXE #3', 1, 600, 4, 1, 'Months', 'month', 'no', 1, 1, 90, 'no'),
(16, 'ULTIMATE #1', 1, 1200, 6, 1, 'Months', 'month', 'no', 1, 1, 130, 'no'),
(17, 'ULTIMATE #2', 1, 1200, 7, 1, 'Months', 'month', 'no', 1, 1, 150, 'no'),
(18, 'ULTIMATE #3', 1, 1200, 9, 1, 'Months', 'month', 'no', 1, 1, 180, 'no'),
(19, 'ULTIMATE #4', 1, 2400, 10, 1, 'Months', 'month', 'no', 1, 1, 230, 'no'),
(21, 'korrupt', 1, 300, 2, 1, 'Months', '1', 'yes', 1, 1, 999, 'yes'),
(22, '999', 1, 9999, 999, 999, 'Years', '333', 'yes', 1, 1, 999, 'yes'),
(29, 'LISEK', 1, 120, 2, 1, 'Months', 'MONTH', 'yes', 0, 1, 999, 'yes'),
(0, 'FREE', 0, 60, 1, 1, 'Years', 'month', 'yes', 0, 0, 666666, 'no'),
(8, 'BASIC #1', 0, 120, 1, 1, 'Months', 'month', 'no', 0, 0, 8, 'no'),
(9, 'BASIC #2', 0, 300, 1, 1, 'Months', 'month', 'no', 0, 0, 10, 'no'),
(10, 'PREMIUM #1', 1, 120, 1, 1, 'Months', 'month', 'no', 0, 0, 20, 'no'),
(11, 'PREMIUM #2', 1, 300, 1, 1, 'Months', 'month', 'no', 0, 0, 25, 'no'),
(12, 'PREMIUM #3', 1, 300, 2, 1, 'Months', 'month', 'no', 0, 1, 35, 'no'),
(13, 'DELUXE #1', 1, 300, 3, 1, 'Months', 'month', 'no', 1, 1, 60, 'no'),
(14, 'DELUXE #2', 1, 600, 3, 1, 'Months', 'month', 'no', 1, 1, 70, 'no'),
(15, 'DELUXE #3', 1, 600, 4, 1, 'Months', 'month', 'no', 1, 1, 90, 'no'),
(16, 'ULTIMATE #1', 1, 1200, 6, 1, 'Months', 'month', 'no', 1, 1, 130, 'no'),
(17, 'ULTIMATE #2', 1, 1200, 7, 1, 'Months', 'month', 'no', 1, 1, 150, 'no'),
(18, 'ULTIMATE #3', 1, 1200, 9, 1, 'Months', 'month', 'no', 1, 1, 180, 'no'),
(19, 'ULTIMATE #4', 1, 2400, 10, 1, 'Months', 'month', 'no', 1, 1, 230, 'no'),
(21, 'korrupt', 1, 300, 2, 1, 'Months', '1', 'yes', 1, 1, 999, 'yes'),
(22, '999', 1, 9999, 999, 999, 'Years', '333', 'yes', 1, 1, 999, 'yes'),
(29, 'LISEK', 1, 120, 2, 1, 'Months', 'MONTH', 'yes', 0, 1, 999, 'yes'),
(0, 'FREE', 0, 60, 1, 1, 'Years', 'month', 'yes', 0, 0, 666666, 'no'),
(8, 'BASIC #1', 0, 120, 1, 1, 'Months', 'month', 'no', 0, 0, 8, 'no'),
(9, 'BASIC #2', 0, 300, 1, 1, 'Months', 'month', 'no', 0, 0, 10, 'no'),
(10, 'PREMIUM #1', 1, 120, 1, 1, 'Months', 'month', 'no', 0, 0, 20, 'no'),
(11, 'PREMIUM #2', 1, 300, 1, 1, 'Months', 'month', 'no', 0, 0, 25, 'no'),
(12, 'PREMIUM #3', 1, 300, 2, 1, 'Months', 'month', 'no', 0, 1, 35, 'no'),
(13, 'DELUXE #1', 1, 300, 3, 1, 'Months', 'month', 'no', 1, 1, 60, 'no'),
(14, 'DELUXE #2', 1, 600, 3, 1, 'Months', 'month', 'no', 1, 1, 70, 'no'),
(15, 'DELUXE #3', 1, 600, 4, 1, 'Months', 'month', 'no', 1, 1, 90, 'no'),
(16, 'ULTIMATE #1', 1, 1200, 6, 1, 'Months', 'month', 'no', 1, 1, 130, 'no'),
(17, 'ULTIMATE #2', 1, 1200, 7, 1, 'Months', 'month', 'no', 1, 1, 150, 'no'),
(18, 'ULTIMATE #3', 1, 1200, 9, 1, 'Months', 'month', 'no', 1, 1, 180, 'no'),
(19, 'ULTIMATE #4', 1, 2400, 10, 1, 'Months', 'month', 'no', 1, 1, 230, 'no'),
(21, 'korrupt', 1, 300, 2, 1, 'Months', '1', 'yes', 1, 1, 999, 'yes'),
(22, '999', 1, 9999, 999, 999, 'Years', '333', 'yes', 1, 1, 999, 'yes'),
(29, 'LISEK', 1, 120, 2, 1, 'Months', 'MONTH', 'yes', 0, 1, 999, 'yes');

-- --------------------------------------------------------

--
-- Структура таблицы `plan_purchases`
--

CREATE TABLE `plan_purchases` (
  `id` int(11) NOT NULL,
  `user` varchar(255) NOT NULL,
  `plan` varchar(255) NOT NULL,
  `amount` int(11) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `plan_purchases`
--

INSERT INTO `plan_purchases` (`id`, `user`, `plan`, `amount`, `date`) VALUES
(1, '999stresser', 'PREMIUM #1', -180, '2023-06-29 02:41:47'),
(7, 'test123', 'ULTIMATE #4', 230, '2023-07-03 16:10:44');

-- --------------------------------------------------------

--
-- Структура таблицы `servers`
--

CREATE TABLE `servers` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `apiurl` varchar(1024) NOT NULL,
  `methods` varchar(1000) NOT NULL,
  `type` varchar(255) NOT NULL,
  `premium` varchar(255) NOT NULL DEFAULT 'no',
  `slots` int(11) NOT NULL,
  `status` enum('online','offline','maintaince') NOT NULL,
  `lastused` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `servers`
--

INSERT INTO `servers` (`id`, `name`, `apiurl`, `methods`, `type`, `premium`, `slots`, `status`, `lastused`) VALUES
(2, '#1 Dedicated', 'http://89.117.56.49:43926/attack?host=[host]&port=443&time=[time]&method=[method]', 'HTTPS  HTTP-BROWSER  TLSV2 BROWSER HTTPS-EXPLOIT HTTPS-STRONG', 'l7', 'yes', 25, 'online', '2023-06-28 22:33:10'),
(8, '#2 Dedicated', 'http://89.117.56.49:43926/attack?host=[host]&port=[port]&time=[time]&method=[method]', 'MIXAMP NTP DNS SADP UDP-BYPASS UDP TCP-SOCKET TCP-BYPASS TCP GAME TFO TCP UDPBOT TCPBOT OVH-KILL OVH-BYPASS SOCKET TCPTFO STD', 'l4', 'yes', 15, 'online', '2023-06-30 01:41:25'),
(10, 'FREE L7', 'http://84.54.51.79/api.php?host=[host]&port=[port]&time=[time]&method=[method]', 'TLS', 'l7', 'no', 10, 'online', '2023-07-01 00:36:09'),
(2, '#1 Dedicated', 'http://89.117.56.49:43926/attack?host=[host]&port=443&time=[time]&method=[method]', 'HTTPS  HTTP-BROWSER  TLSV2 BROWSER HTTPS-EXPLOIT HTTPS-STRONG', 'l7', 'yes', 25, 'online', '2023-06-28 22:33:10'),
(8, '#2 Dedicated', 'http://89.117.56.49:43926/attack?host=[host]&port=[port]&time=[time]&method=[method]', 'MIXAMP NTP DNS SADP UDP-BYPASS UDP TCP-SOCKET TCP-BYPASS TCP GAME TFO TCP UDPBOT TCPBOT OVH-KILL OVH-BYPASS SOCKET TCPTFO STD', 'l4', 'yes', 15, 'online', '2023-06-30 01:41:25'),
(10, 'FREE L7', 'http://84.54.51.79/api.php?host=[host]&port=[port]&time=[time]&method=[method]', 'TLS', 'l7', 'no', 10, 'online', '2023-07-01 00:36:09'),
(2, '#1 Dedicated', 'http://89.117.56.49:43926/attack?host=[host]&port=443&time=[time]&method=[method]', 'HTTPS  HTTP-BROWSER  TLSV2 BROWSER HTTPS-EXPLOIT HTTPS-STRONG', 'l7', 'yes', 25, 'online', '2023-06-28 22:33:10'),
(8, '#2 Dedicated', 'http://89.117.56.49:43926/attack?host=[host]&port=[port]&time=[time]&method=[method]', 'MIXAMP NTP DNS SADP UDP-BYPASS UDP TCP-SOCKET TCP-BYPASS TCP GAME TFO TCP UDPBOT TCPBOT OVH-KILL OVH-BYPASS SOCKET TCPTFO STD', 'l4', 'yes', 15, 'online', '2023-06-30 01:41:25'),
(10, 'FREE L7', 'http://84.54.51.79/api.php?host=[host]&port=[port]&time=[time]&method=[method]', 'TLS', 'l7', 'no', 10, 'online', '2023-07-01 00:36:09');

-- --------------------------------------------------------

--
-- Структура таблицы `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `googlesitekey` varchar(255) NOT NULL,
  `googlesecretkey` varchar(255) NOT NULL,
  `sellixapikey` varchar(500) NOT NULL,
  `name` varchar(255) NOT NULL,
  `registration` varchar(10) NOT NULL,
  `login` varchar(10) NOT NULL,
  `maintenance` varchar(25) NOT NULL DEFAULT 'no'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `settings`
--

INSERT INTO `settings` (`id`, `googlesitekey`, `googlesecretkey`, `sellixapikey`, `name`, `registration`, `login`, `maintenance`) VALUES
(1, 'googe site key', 'google secret key', 'AMpgTRWhJOUmFlmi4cTELFLO2xRrwE6ItOzJsEynBHnw5Ft75MHqr1Lo9JmUI75o', '999servicess', 'on', 'on', 'off'),
(1, 'googe site key', 'google secret key', 'AMpgTRWhJOUmFlmi4cTELFLO2xRrwE6ItOzJsEynBHnw5Ft75MHqr1Lo9JmUI75o', '999servicess', 'on', 'on', 'off');

-- --------------------------------------------------------

--
-- Структура таблицы `sheduledattacks`
--

CREATE TABLE `sheduledattacks` (
  `id` int(11) NOT NULL,
  `user` varchar(255) NOT NULL,
  `target` varchar(255) NOT NULL,
  `port` int(11) NOT NULL,
  `time` int(11) NOT NULL,
  `method` varchar(255) NOT NULL,
  `started` int(11) NOT NULL DEFAULT 0,
  `datetime` int(11) NOT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `sheduledattacks`
--

INSERT INTO `sheduledattacks` (`id`, `user`, `target`, `port`, `time`, `method`, `started`, `datetime`, `created`) VALUES
(1, '999stresser', '74.74.74.74', 80, 30, 'MIXAMP', 0, 1689001440, '2023-07-10 17:03:11');

-- --------------------------------------------------------

--
-- Структура таблицы `tickets`
--

CREATE TABLE `tickets` (
  `id` int(11) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `msg` text NOT NULL,
  `priority` enum('low','normal','high') NOT NULL DEFAULT 'normal',
  `user` varchar(255) NOT NULL,
  `created` datetime NOT NULL,
  `status` enum('open','closed','answered','customer-reply') NOT NULL DEFAULT 'open'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `tickets`
--

INSERT INTO `tickets` (`id`, `subject`, `msg`, `priority`, `user`, `created`, `status`) VALUES
(11, 'Można kupić za psc?', 'Można kupić maszynke za psc?', 'low', 'ksalxd', '2023-07-19 22:19:12', 'answered'),
(11, 'Można kupić za psc?', 'Można kupić maszynke za psc?', 'low', 'ksalxd', '2023-07-19 22:19:12', 'answered');

-- --------------------------------------------------------

--
-- Структура таблицы `tickets_replies`
--

CREATE TABLE `tickets_replies` (
  `id` int(11) NOT NULL,
  `ticket_id` int(11) NOT NULL,
  `msg` text NOT NULL,
  `sender` enum('admin','support','customer','') NOT NULL,
  `created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `tickets_replies`
--

INSERT INTO `tickets_replies` (`id`, `ticket_id`, `msg`, `sender`, `created`) VALUES
(15, 11, 'tak', 'admin', '2023-07-19 22:33:09'),
(20, 11, 'zrobiliśmy dc ale no nie wiadomo kiedy ban xd<br />\nhttps://discord.gg/nTFwve5jNX', 'admin', '2023-07-20 22:16:09');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` varchar(40) NOT NULL,
  `email` varchar(50) NOT NULL,
  `secretkey` varchar(20) NOT NULL,
  `rank` varchar(20) NOT NULL DEFAULT 'User',
  `plan` int(11) NOT NULL DEFAULT 0,
  `planexpire` int(11) NOT NULL DEFAULT 1658186997,
  `premium` int(11) NOT NULL DEFAULT 0,
  `apiaccess` int(11) NOT NULL DEFAULT 0,
  `apitoken` varchar(255) NOT NULL DEFAULT '0',
  `addon_concs` int(11) NOT NULL DEFAULT 0,
  `addon_time` int(11) NOT NULL DEFAULT 0,
  `addon_blacklist` int(11) NOT NULL DEFAULT 0,
  `balance` varchar(255) NOT NULL,
  `created` datetime(6) NOT NULL,
  `lastlogin` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `secretkey`, `rank`, `plan`, `planexpire`, `premium`, `apiaccess`, `apitoken`, `addon_concs`, `addon_time`, `addon_blacklist`, `balance`, `created`, `lastlogin`) VALUES
(4, '999stresser', 'b916e60f75e1e23f9f24c9ba2be5ba6b1be37fe5', '999@gmail.com', 'e80397bcbb257dd3', 'AdDolbaebmin', 22, 1691282541, 0, 0, 'hGgO99hZVfT59UAkWWUyOu', 0, 0, 0, '1', '2023-06-28 21:03:33.000000', '2023-07-23 10:30:36'),
(313, 'nvbvbnnbvnb', '356aa9bc26924d41f93a113414a49ae1d5673c6f', 'nvbvbnnbvnb@wp.pl', 'ac880f2d1fc49f1d', 'User', 0, 1720884225, 0, 0, '0', 0, 0, 0, '0', '2023-07-23 07:44:02.000000', '2023-07-23 07:44:02');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `addons`
--
ALTER TABLE `addons`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `addon_coupons`
--
ALTER TABLE `addon_coupons`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `apikeys`
--
ALTER TABLE `apikeys`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `attacklogs`
--
ALTER TABLE `attacklogs`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `bans`
--
ALTER TABLE `bans`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `blacklist`
--
ALTER TABLE `blacklist`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `methods`
--
ALTER TABLE `methods`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `sheduledattacks`
--
ALTER TABLE `sheduledattacks`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
