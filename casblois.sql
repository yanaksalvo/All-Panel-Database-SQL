-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 07, 2023 at 10:17 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `casblois`
--

-- --------------------------------------------------------

--
-- Table structure for table `announcement`
--

CREATE TABLE `announcement` (
  `id` int(99) NOT NULL,
  `annContent` varchar(255) DEFAULT 'Tanımlanmamış',
  `annTime` date DEFAULT NULL,
  `annPriority` varchar(32) NOT NULL DEFAULT 'Duyuru',
  `annPriorityColor` int(99) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Dumping data for table `announcement`
--

INSERT INTO `announcement` (`id`, `annContent`, `annTime`, `annPriority`, `annPriorityColor`) VALUES
(58, 'Anahtar paylaşımı kesinlikle yasaktır otomatik yasaklanıcaktır', '2023-02-06', 'BAN', 4),
(59, 'discord.gg/lexas t.me/lexaspro tek adreslerimiz', '2023-02-06', 'ILETISIM', 3),
(62, 'DEPREM SEBEBİ İLE BAZI HİZMETLERİMİZ PASİFDİR ANLAYIŞINIZ İÇİN TEŞEKÜRLER', '2023-02-06', 'ÖNEMLİ', 0);

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` int(99) NOT NULL,
  `serviceContent` varchar(255) DEFAULT 'Tanımlanmamış',
  `serviceTime` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `serviceContent`, `serviceTime`) VALUES
(1, 'Ad-Soyad Sorgu', '2023-01-30'),
(2, 'asdfasdfasdf', '2023-01-31');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `url` varchar(500) NOT NULL,
  `logo` varchar(500) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `title`, `url`, `logo`, `status`) VALUES
(1, 'Lexas', 'http://localhost/', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `userRole` int(10) DEFAULT 0,
  `userLog` varchar(40) DEFAULT NULL,
  `userTime` date DEFAULT NULL,
  `userBrowser` varchar(50) DEFAULT NULL,
  `userOS` varchar(50) DEFAULT NULL,
  `userModerator` varchar(100) DEFAULT NULL,
  `userAuthKey` varchar(144) DEFAULT NULL,
  `userVerified` int(99) DEFAULT 0,
  `multiCheck` int(11) NOT NULL DEFAULT 0,
  `userName` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `userRole`, `userLog`, `userTime`, `userBrowser`, `userOS`, `userModerator`, `userAuthKey`, `userVerified`, `multiCheck`, `userName`) VALUES
(6, 1, NULL, '2023-04-21', 'Mobile browser', 'Linux', 'Lexas', 'lexasQWE..!', 1, 1, 'casblois'),
(34, 1, NULL, '2024-02-06', 'Mobile browser', 'Linux', 'casblois', 'FluBabaPro1337!!..', 1, 1, 'flubabapro'),
(35, 1, NULL, '2023-02-13', 'Mobile browser', 'Linux', 'casblois', 'JesuCoderPythonJSPHPJAVADEBIAN', 1, 1, 'jesu.java'),
(36, 1, NULL, '2023-02-13', 'Google Chrome', 'Windows OS', 'casblois', 'lexper1312...!!!', 1, 1, 'Lexas'),
(38, 3, '197.122', '2023-03-07', 'Mobile browser', 'Mac OS', 'flubabapro', '36ed5fdfef8f9c99cba36c218a7235592ed35d92', 1, 0, 'ahmetsiey'),
(39, 1, NULL, '2024-02-06', 'Mobile browser', 'Mac OS', 'lexper11yaşında', '145306swoxy', 1, 1, 'farukpiçi'),
(41, 4, '.203.22', '2024-02-06', 'Google Chrome', 'Windows OS', 'flubabapro', '00743ee56552aad97aa0a3798db741e832ab69e2', 1, 0, 'semih'),
(42, 4, '.198.68', '2024-02-06', 'Google Chrome', 'Windows OS', 'flubabapro', '8d1ce3ed8875df8666d9deb72f911386c7148f29', 1, 0, 'berkay911'),
(43, 3, NULL, '2023-03-07', 'Mobile browser', 'Mac OS', 'Lexas', '28d74fcd7761fdb9afc22228efc43df8b9cff675', 1, 0, 'ankaca'),
(44, 4, '.245.69', '2024-02-07', 'Google Chrome', 'Windows OS', 'flubabapro', 'f8b9c62e899f1e26cb94a23ead0695949f03637a', 1, 1, 'hasbihal'),
(45, 3, '1.60.51', '2023-03-06', 'Mozilla Firefox', 'Windows OS', 'flubabapro', '3f3ff55ef0fbf92ece7a802f85d2ae34784adbe9', 1, 0, 'darned'),
(46, 1, NULL, '2023-02-13', 'Google Chrome', 'Windows OS', 'flubabapro', 'salcalıekmek', 1, 1, 'Urfa Culture'),
(47, 3, '142.146', '2023-03-06', 'Google Chrome', 'Windows OS', 'flubabapro', '427321e7c0e6072bfb953523c1ccf44776f3580c', 1, 0, 'Erencanaltas'),
(48, 2, '.196.80', '2023-02-13', 'Google Chrome', 'Windows OS', 'flubabapro', '72627fc8f74aa30ca470f6f84d8178422dde2f62', 1, 0, 'leoman'),
(49, 3, '.136.14', '2023-03-06', 'Safari', 'Mac OS', 'flubabapro', 'c34ab818a011e000579d389754c1e3d1ab07c4a7', 1, 0, 'giovanni'),
(50, 2, '.22.119', '2023-02-13', 'Google Chrome', 'Windows OS', 'flubabapro', '126a2539f4fc7cd49fea0e351aaf5d3a0c6bcfe8', 0, 0, 'mehmetqwe'),
(51, 3, '.64.162', '2023-03-06', 'Google Chrome', 'Windows OS', 'flubabapro', '4c2ef0f4392e65c5edcda7098e7d037b086d5ce4', 1, 0, 'beta'),
(52, 3, NULL, '2023-03-07', 'Google Chrome', 'Windows OS', 'flubabapro', 'ac1f3530cca5154ce626d435ace9b1050c6fb088', 1, 0, 'Astrooo#0001'),
(53, 2, '.26.177', '2023-02-14', 'Google Chrome', 'Windows OS', 'flubabapro', '93a213e12da64114bf66ebf5bd4122c9f8565b90', 0, 0, 'Slanchex Raven#7777'),
(54, 3, '108.159', '2023-03-06', 'Google Chrome', 'Windows OS', 'flubabapro', 'd85f41ecee1a81d6048c6f4e11d6fb42b00fcc70', 1, 0, 'xxl'),
(55, 3, '.110.68', '2023-03-06', 'Mobile browser', 'Linux', 'flubabapro', 'a8ec7e439869ddfccddcdba0845372dcb0d162b5', 1, 0, 'experm00#2930'),
(57, 2, '116.126', '2023-02-13', 'Mobile browser', 'Linux', 'flubabapro', '1d2115acc9ebe09d56af36640bcf62088720f300', 0, 0, 'loris'),
(58, 3, '3.43.88', '2023-03-06', 'Google Chrome', 'Windows OS', 'flubabapro', '5c5112e55a7936f6e0196dbbee64831b1e9eceb1', 1, 0, 'mert-#0611'),
(59, 3, '.20.251', '2023-03-07', 'Google Chrome', 'Windows OS', 'flubabapro', '7302fc7cf6c6402492657f559738916f78c82082', 1, 0, 'creature'),
(60, 2, '200.116', '2023-02-13', 'Mobile browser', 'Linux', 'flubabapro', '4f14e2dd5f13e4187a982e3b85f23b222e12deb0', 1, 0, '⚡ŞİMŞEK ABUZER⚡#1923'),
(61, 2, NULL, '2023-02-13', NULL, NULL, 'flubabapro', 'a1a01b6e987060d28c3a913f2e3b9515f80150ab', 1, 0, 'man360'),
(62, 3, '.14.146', '2023-03-06', 'Google Chrome', 'Windows OS', 'flubabapro', '6a1f9bd39801dc24f50d36f741c6526b5b84862e', 1, 0, 'Ebubekirsiddik#8375'),
(65, 3, '0.59.86', '2023-03-07', 'Mobile browser', 'Linux', 'flubabapro', '30c7eecf731cbffd085ee691c0e8946038de2c0b', 1, 0, 'x7'),
(67, 3, '.226.94', '2023-03-06', 'Google Chrome', 'Windows OS', 'flubabapro', '0f5136cee00e1072ed5f79a05448eb799de6a259', 0, 0, 'Klonzy'),
(69, 3, '.72.146', '2023-03-06', 'Google Chrome', 'Windows OS', 'flubabapro', 'f33a388cb4eff6204a994842aaeb0e22f095989a', 1, 0, 'Sur-i Cartuş-i#8592'),
(71, 2, NULL, '2023-02-14', 'Google Chrome', 'Windows OS', 'flubabapro', 'bd94e9384727991e95d3f749726524f3714a7796', 1, 1, 'ender'),
(72, 2, '139.218', '2023-02-13', 'Google Chrome', 'Windows OS', 'flubabapro', '9be39c406dd31f302e4817f1dd1283b3c0322ca4', 1, 0, 'yigwt#0600'),
(73, 2, '.116.58', '2023-02-13', 'Mobile browser', 'Linux', 'flubabapro', 'cca9e5a4a7654bb81a07aa56f721eb9a218c6ff8', 0, 0, 'dexxx'),
(74, 3, '31.85.9', '2023-03-07', 'Google Chrome', 'Windows OS', 'flubabapro', 'c7f4c939c1f894b337f7aae536dbc0292d874d09', 1, 0, 'furkan öncel'),
(76, 2, '.83.180', '2023-02-14', 'Google Chrome', 'Windows OS', 'flubabapro', 'd0690df667967f22a1f3ed7044f2a25bc37d05c0', 1, 0, '!V-R!#6485'),
(77, 2, '8.80.11', '2023-02-14', 'Mobile browser', 'Linux', 'flubabapro', 'c0e36012fd5b6e19a7e63698abe81fc2caddda91', 1, 0, 'drillbekx'),
(78, 2, '128.180', '2023-02-13', 'Google Chrome', 'Windows OS', 'flubabapro', '148859a8a5ec1d1bfee31a1a1928c794a825644c', 1, 0, 'xexaa#1921'),
(79, 3, '169.141', '2023-03-06', 'Google Chrome', 'Windows OS', 'flubabapro', 'd07401ee0691d90326e0aee510151a7325eff2f9', 1, 0, 'mrshade'),
(80, 3, '.13.246', '2023-03-06', 'Google Chrome', 'Windows OS', 'flubabapro', '752eb6799b179af669614b63ae9dc2e84a472c67', 0, 0, 'santana'),
(81, 3, '.68.101', '2023-03-07', 'Mobile browser', 'Linux', 'flubabapro', '3b9d07ef2994ee29e160493b500c6215b9a41a9e', 1, 0, 'mrshade 2'),
(82, 3, '7.42.64', '2023-03-06', 'Mobile browser', 'Mac OS', 'Lexas', 'af21f6c776618953547de4b13394be39a620e815', 1, 0, 'İrem'),
(83, 2, '.194.63', '2023-02-13', 'Mobile browser', 'Linux', 'Lexas', 'fbfee00b57af8cbf9cce2ea4c43e788d4e40c6db', 1, 0, 'Kwarey#2600'),
(84, 4, '221.252', '2024-02-06', 'Mobile browser', 'Linux', 'Lexas', 'f4d4b3e6a432069d601161c77973d4362b854eeb', 1, 0, 'suckimoto'),
(86, 4, NULL, '2024-02-06', 'Google Chrome', 'Windows OS', 'flubabapro', 'f49ca94a1c0151c52ee7fd50262c0a2476a3b680', 1, 1, 'schizo#8192'),
(87, 2, '.72.244', '2023-02-14', 'Mobile browser', 'Linux', 'flubabapro', 'dc11cb22219797baa7233ae2da1c70b2f0a8eef8', 1, 0, '1mustafaa#2387'),
(88, 2, '.162.57', '2023-02-13', 'Mobile browser', 'Linux', 'Lexas', 'a74ecea2c3177f02c93fd00216b79d49ced11055', 1, 0, 'hasan'),
(89, 2, '.233.94', '2023-02-13', 'Google Chrome', 'Windows OS', 'flubabapro', 'b3da73b60e2584528497d89ef95cf32b910e8aae', 0, 0, 'gecko#9999'),
(90, 2, '4b:756c', '2023-02-13', 'Google Chrome', 'Windows OS', 'Lexas', 'd30eec83b56dcc7a9561a9e6cb73839b36988cba', 1, 0, 'Poijeks'),
(91, 2, '0.110.5', '2023-02-13', 'Mobile browser', 'Mac OS', 'flubabapro', 'f5b694ec5052c756d26d67f6b2adc56fb7791ab4', 1, 0, 'xLAYN#8083'),
(92, 2, '.71.213', '2023-02-14', 'Mobile browser', 'Mac OS', 'flubabapro', 'e12d4354b6decfdc424d85bafa1560145a355295', 1, 0, 'İMAMx#1871'),
(93, 3, '0.142.8', '2023-03-07', 'Mobile browser', 'Linux', 'flubabapro', 'd4037300459a97af05718605b3ae7c4bcd650e2e', 1, 0, 'erdem.#0927'),
(95, 2, '0.37.84', '2023-02-14', 'Mobile browser', 'Linux', 'flubabapro', '8b735d2f3ba8a1947233fa106b537470ef95dd31', 0, 0, 'Şükrü Deliğisağlam#1985'),
(97, 3, '.151.90', '2023-03-07', 'Mobile browser', 'Linux', 'farukpiçi', 'cd96c6b83ddf84c9e8d93f6d98ffcaf4fa82c173', 0, 0, 'BatuBey'),
(98, 2, 'd3:9f48', '2023-02-14', 'Mobile browser', 'Linux', 'Urfa Culture', 'PatronBrez', 1, 0, 'Patron'),
(99, 3, '0.67.21', '2023-03-07', 'Mobile browser', 'Mac OS', 'farukpiçi', 'ca92f5c0fc9fc04af19f3f7f63f0f42d5d803386', 1, 0, 'Mami'),
(100, 2, '22:8c20', '2023-02-14', 'Mobile browser', 'Linux', 'flubabapro', 'f642682bb751f27a99df5b445884d4117c971bc4', 1, 0, 'Mustafa Özulucak#3808'),
(101, 2, '156.193', '2023-02-14', 'Mobile browser', 'Mac OS', 'flubabapro', '8c1ecfef07fddcfdb249218963c02dd715863df4', 1, 0, 'harun'),
(102, 3, NULL, '2023-03-07', NULL, NULL, 'flubabapro', '7e27ffaa719660e956e7b0ee0cb7d1bf8cbb7ebb', 1, 0, 'awd'),
(103, 3, NULL, '2023-03-07', NULL, NULL, 'flubabapro', '2727461325c3cada2b749fc47e5187d5d4b17a4f', 1, 0, 'awd'),
(104, 3, '109.205', '2023-03-07', 'Mobile browser', 'Linux', 'Urfa Culture', '29143f7da63f66ec6d3bd093fa744580feb476c5', 0, 0, 'Callous'),
(105, 3, '111.126', '2023-03-07', 'Mobile browser', 'Linux', 'Urfa Culture', '424e7b78ef139e675398c506920b4b8e50aec752', 1, 0, '666'),
(106, 4, '.151.57', '2024-02-07', 'Google Chrome', 'Windows OS', 'flubabapro', '9981f4b1fea7039e3955f199a5c2a0c2623db4c7', 1, 0, 'atallah'),
(107, 2, '214.173', '2023-02-14', 'Google Chrome', 'Windows OS', 'flubabapro', 'ff40a699c1db1413e4e1ae7eae17229eb6854c38', 1, 0, '乡Kattjägare☨#9473'),
(108, 3, '28.66.2', '2023-03-07', 'Google Chrome', 'Windows OS', 'flubabapro', 'fe26ee64da6a8dc3161433ba6794e3c9b7dd741c', 1, 0, 'furkan_0001#0001'),
(109, 2, NULL, '2023-02-14', NULL, NULL, 'flubabapro', '4eda64c0a74bb43f1be3d825a71634db555105fc', 1, 0, 'orcun pektas b'),
(110, 3, '.38.113', '2023-03-07', 'Mobile browser', 'Linux', 'farukpiçi', 'fda5013435e05cb3c89b72441fe4ecc1fbed15a9', 1, 0, 'Batu'),
(111, 3, '6.66.99', '2023-03-07', 'Google Chrome', 'Windows OS', 'casblois', 'ed39d9deb8e1f7382c407d70cf37d492823810b2', 1, 0, 'musthavelondon');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `announcement`
--
ALTER TABLE `announcement`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `announcement`
--
ALTER TABLE `announcement`
  MODIFY `id` int(99) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(99) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
