/*
 Navicat MySQL Data Transfer

 Source Server         : db
 Source Server Type    : MySQL
 Source Server Version : 100432 (10.4.32-MariaDB)
 Source Host           : localhost:3306
 Source Schema         : ezikbaba

 Target Server Type    : MySQL
 Target Server Version : 100432 (10.4.32-MariaDB)
 File Encoding         : 65001

 Date: 14/04/2024 03:06:54
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for accounts
-- ----------------------------
DROP TABLE IF EXISTS `accounts`;
CREATE TABLE `accounts`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `hash` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `ip` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `cookie` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `secret_question` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `secret_answer` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `confirmed` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `access_level` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `hide_username` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `profile_image` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `last_login_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT '0',
  `exp` bigint NULL DEFAULT NULL,
  `ref` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `balance` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT '0',
  `success_login_count` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT '0',
  `failed_login_count` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT '0',
  `suspect_login_count` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT '0',
  `premium` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT '0',
  `first_login` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT '0',
  `register_date` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `tcvip` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT '0',
  `expiration_date` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT '0',
  `ekleyen_admin` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `total_query` int NOT NULL DEFAULT 3,
  `toplamreferans` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `ts_last_spin` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL DEFAULT '1711741473',
  `pin_claim` int NOT NULL DEFAULT 3,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 66001 CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of accounts
-- ----------------------------

-- ----------------------------
-- Table structure for balance_transfers
-- ----------------------------
DROP TABLE IF EXISTS `balance_transfers`;
CREATE TABLE `balance_transfers`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `balance` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `hash` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `history` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 53 CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of balance_transfers
-- ----------------------------

-- ----------------------------
-- Table structure for chat
-- ----------------------------
DROP TABLE IF EXISTS `chat`;
CREATE TABLE `chat`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `message` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `hash` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `history` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2935 CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of chat
-- ----------------------------

-- ----------------------------
-- Table structure for destek_talepleri
-- ----------------------------
DROP TABLE IF EXISTS `destek_talepleri`;
CREATE TABLE `destek_talepleri`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `konu` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `yardim_turu` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `olusturan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `olay` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `cevap` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `admin` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `durum` int NULL DEFAULT NULL,
  `tarih` timestamp NOT NULL DEFAULT current_timestamp,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 294 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of destek_talepleri
-- ----------------------------
INSERT INTO `destek_talepleri` VALUES (291, 'qweqweq', 'Şikayet', 'andrei', 'weqweqweqwe', 'wqe', 'qweqwe', 1, '2023-09-03 02:40:31');
INSERT INTO `destek_talepleri` VALUES (292, 'w', 'Şikayet', 'andrei', 'w', NULL, NULL, NULL, '2023-09-03 02:51:09');

-- ----------------------------
-- Table structure for dosya_comments
-- ----------------------------
DROP TABLE IF EXISTS `dosya_comments`;
CREATE TABLE `dosya_comments`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_hash` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `date_text` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `preview` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `hash` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 122 CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of dosya_comments
-- ----------------------------
INSERT INTO `dosya_comments` VALUES (14, '6AB5D1A98A31D9780F62917874114A44143EF05350B81EEA59BDB845CBE488D2CF36E428', '2024-03-10 16:40:09', 'babababababa', 'CF3C3FBC299772085C5184C2A174518496F42A06DE0F1672C5A1F5862417B7B7');
INSERT INTO `dosya_comments` VALUES (15, '6AB5D1A98A31D9780F62917874114A44143EF053A026D46BD57A1406C5E5931C907D25F1', '2024-03-10 16:41:31', 'bababababa', 'CF3C3FBC299772085C5184C2A174518496F42A06DE0F1672C5A1F5862417B7B7');
INSERT INTO `dosya_comments` VALUES (16, '6F73DFA214043AD7EF6655931DB163B9C68E2045BDA989B1330BA4F420924A5BE0EBCB61', '2024-03-10 17:46:51', 'ben indirirsem nolur ?', 'CF3C3FBC299772085C5184C2A174518496F42A06DE0F1672C5A1F5862417B7B7');
-- ----------------------------
-- Table structure for dosyalar
-- ----------------------------
DROP TABLE IF EXISTS `dosyalar`;
CREATE TABLE `dosyalar`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `ucret` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `content` varchar(2500) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `view` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `history` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `user_hash` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `hash` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `link` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `virus` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `admin` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `miktar` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of dosyalar
-- ----------------------------
INSERT INTO `dosyalar` VALUES (4, 'ucretsiz', '[Android RAT]Craxs Rat 6.7', '<p>Android RAT Programı, kurbana APK oluştururak apkyı kurbanın indirmesini ve yüklemesini sağlayarak cihazına erişim sağlayabildiğiniz program.</p>', 'rat', '4506', '08.03.2024 01:33', '6AB5D1A98A31D9780F62917874114A44143EF05350B81EEA59BDB845CBE488D2CF36E428', 'CF3C3FBC299772085C5184C2A174518496F42A06DE0F1672C5A1F5862417B7B7', 'https://dosya.co/jmg5m0smj75b/CraxsRat-V6.7.rar.html', 'https://www.virustotal.com/gui/file/8fea395fbab9fd246acd24c6b8a1ad3d9b788b41ba71c0e8c0f85f9ad9c5f046', 'ezik2024', 'J7', NULL);
INSERT INTO `dosyalar` VALUES (12, 'ucretsiz', 'BİM 3D Phishing Script (A101 Edit)', '<p>Bildiğimiz A101 scsinin bim editlenmiş hali.<br><br>&Uuml;r&uuml;n Ekleme / Silme işlemleri<br>3D Y&ouml;nlendirme işlemleri<br><br>Oltalamaya uygundur, reklam &ccedil;ıkıp loglarınızın keyfini &ccedil;ıkarabilirsiniz.<br>', 'script', '3125', '11.03.2024 14:32', '6AB5D1A98A31D9780F62917874114A44143EF05350B81EEA59BDB845CBE488D2CF36E428', '69D8B3A7D229E67EC9C021B0E72337C03B1D86D9F5C80DFCDDBC32E530D04D38', 'https://dosya.co/9xh7xptzo4cv/bim.zip.html', 'https://www.virustotal.com/gui/file/8a09963709365d6190148780dace6e18ee3ec8e51dca070d02c1205c955e0fe5?nocache=1', 'ezik2024', 'J7', '');
INSERT INTO `dosyalar` VALUES (13, 'ucretli', 'test', '<p>test</p>', 'script', '1057', '13.03.2024 20:22', '6AB5D1A98A31D9780F62917874114A44143EF05350B81EEA59BDB845CBE488D2CF36E428', '15D60507AFD2B3EC85D364FE8FB03670A9541B9A3099695CFC6968CA7F0CAABD', 'test', 'test', 'test', 'J7', '50');
INSERT INTO `dosyalar` VALUES (14, 'ucretsiz', '[PYTHON] SMS BOMBER TOOL', '<p style=\"text-align: center;\"><em>Selamlar Ezik Checker\'in değerli &uuml;yeleri, bug&uuml;n kendi local bilgisayarınızda kullanabileceğiniz bir sms bomber tool paylaşıyorum.</em></p>\r\n<p style=\"text-align: center;\"><em>İ&ccedil;inde vir&uuml;s</em> vesaire <em>bulunmayan altta bulunan virustotal linkinden kontrol sağlayabilirsiniz, g&uuml;venle indirebilirsiniz.</em></p>\r\n<p style=\"text-align: center;\"><em>Windows PC i&ccedil;in kurulum;</em></p>\r\n<p style=\"text-align: center;\"><em>&Ouml;ncelikle cihazınıza Python\'un en g&uuml;ncel s&uuml;r&uuml;m&uuml;n&uuml; y&uuml;kleyin.</em></p>\r\n<p style=\"text-align: center;\"><em>Sonrasında klas&ouml;rde bulunan dosyayı masa&uuml;st&uuml;ne &ccedil;ıkartın.</em></p>\r\n<p style=\"text-align: center;\"><em>Klas&ouml;re giriş yaparak &uuml;stte bulunan C:\\Windows\\System32 kısmı silin ve cmd &nbsp;yazıp enterlayarak konsolu a&ccedil;ın.</em></p>\r\n<p style=\"text-align: center;\"><em>pip install -r requirements.txt yazarak toolun gereksinimlerini y&uuml;kleyin.</em></p>\r\n<p style=\"text-align: center;\"><em>Y&uuml;klendikten sonra python enough.py yazarak toolun a&ccedil;ılmasını sağlayın.</em></p>\r\n<p style=\"text-align: center;\"><em>Orda yazan bilgileri vesaire GSM\'yi girerek şahsı SMS yağmuruna tutun...</em></p>', 'rat', '5471', '15.03.2024 02:03', 'D65EFCFD3F38CABC1F189FB7201F4DFB84F5205CA33174C0F1D72B4686ECBF0FF8318C05', '9DAA27E98D5CB4B9FE81D057C8C742805D5401DBF64AB034D962683FFED53F81', 'https://dosya.co/xyviyxowrexh/eziksmsbomber.zip.html', 'https://www.virustotal.com/gui/url/ed38e9f85031525d7b1b52cbac1996d6ee4d98c207e4d7f6fd540e09065a9f38?nocache=1', 'ezik2024', 'elmutekkebir', '');

-- ----------------------------
-- Table structure for login_sessions
-- ----------------------------
DROP TABLE IF EXISTS `login_sessions`;
CREATE TABLE `login_sessions`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `hash` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `login_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `device` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `ip_class` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `operating_system` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 183352 CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of login_sessions
-- ----------------------------
INSERT INTO `login_sessions` VALUES (2133, '06A33D3182B2660474A0AF6B0675C367B1AFC4592A25A44AA2D56571E4B82B4F40041B75', '09.03.2024 00:55', 'Google Chrome', '31', 'Android Device');
INSERT INTO `login_sessions` VALUES (2134, '06A33D3182B2660474A0AF6B0675C367B1AFC4592A25A44AA2D56571E4B82B4F40041B75', '09.03.2024 00:55', 'Google Chrome', '31', 'Android Device');
INSERT INTO `login_sessions` VALUES (2135, 'BD3972E14EFB4341D09DC4DF836AB42B3AE8327087C4B69C9D3811EC19BB825C44447A7D', '09.03.2024 00:55', 'Google Chrome', '46', 'Android Device');
INSERT INTO `login_sessions` VALUES (163123, 'BDCAD405D60E4BA9F428F11F6BB2D6DCED949F43F1A0ECDCE0260AD2FAD9A56D64582084', '05.04.2024 03:20', 'Safari', '37', 'iPhone');

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `content` varchar(1000) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `view` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `history` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `user_hash` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `hash` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `color` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES (6, 'İLAÇ SORGU 1-2 GÜN BAKIMDA', '<p>Merhabalar, İla&ccedil; sorguda yetkil login hesabımızın kapanmasının ardından yeni hesap arayışına girmiş bulunmaktayız, bu sebepten &ouml;t&uuml;r&uuml; 1-2 g&uuml;n kapalıdır.</p>', 'update', '31', '14.03.2024 03:04', '6AB5D1A98A31D9780F62917874114A44143EF05350B81EEA59BDB845CBE488D2CF36E428', '2EE8DD981720668BBED6BBCBB08D8A7800407E805158EFF31BCA601B6A3E97E9', NULL);
INSERT INTO `news` VALUES (7, '2024 GÜNCEL GSM BUGÜN 20:00&#039;da aktiftir.', '<p>Merhabalar, 2024 G&uuml;ncel GSM datamızı veritabanımıza aktarmış bulunmaktayız.</p>\r\n<p>Bug&uuml;n saat 20:00\'da aktif edip &uuml;cretsiz &uuml;yeliklere 4 saat erişim hakkı sunacağız. Saat 20:00\'da burda olmayı unutmayın...</p>\r\n<p>Sonrasında premium olarak tekrardan aktif premium &ccedil;&ouml;z&uuml;mlerimizde bulunacaktır.</p>', 'event', '53', '14.03.2024 03:07', '6AB5D1A98A31D9780F62917874114A44143EF05350B81EEA59BDB845CBE488D2CF36E428', 'DFF62FE795DDAEE3E1757D1A3649BFB463920807604505AC2C19BC837C67028F', NULL);
INSERT INTO `news` VALUES (8, 'DİSCORD KANALIMIZA KATILARAK PREMİUM ALMA HAKKI KAZAN', '<p>Merhaba değerli Ezik &Uuml;yeleri, discord kanalımıza katılıp basit şartları tamamlayarak 1 g&uuml;nl&uuml;k premium erişim hakkı kazanmak ister misiniz?</p>\r\n<p>O zaman yapmanız gereken tek şey discord kanalımıza katılarak #&ouml;d&uuml;l kanalında bulunan şartlardan birini tamamlayarak sizde premiumu bir g&uuml;nl&uuml;k keşfedebilirsiniz.</p>', 'event', '178', '14.03.2024 03:13', 'D65EFCFD3F38CABC1F189FB7201F4DFB84F5205CA33174C0F1D72B4686ECBF0FF8318C05', 'D3620D0633475FE5FB78A20709E11FE128DF85DF6A344A26DC40A68322D578BA', NULL);
INSERT INTO `news` VALUES (9, 'BAYİLİK SİSTEMİMİZ AKTİF!', '<p><strong>Merhabalar kendimize iş ortakları arıyoruz, eğer sizde bizim panelimizde bayi olup satış yapmak istiyorsanız. Şartlarımızı tamamlayarak ve Cuzi bir &uuml;cret karşılığında bayimiz olabilirsiniz.</strong></p>\r\n<p>Şartlarımız;</p>\r\n<ul>\r\n<li>Websitemizi aktif olarak kullanmak</li>\r\n<li>&Uuml;yelerimizi yanıltmaya, yanıltmaya &ccedil;alışmamak</li>\r\n</ul>\r\n<p>eğer şartlarımızı karşılıyor iseniz yapmanız gereken tek şey Mağaza İşlemleri &gt; Market kısmından bayiliği satın alarak komisyonlu satış yapabilirsiniz...</p>', 'news', '80', '14.03.2024 03:21', 'D65EFCFD3F38CABC1F189FB7201F4DFB84F5205CA33174C0F1D72B4686ECBF0FF8318C05', '57421C8B926192FA52AAB06359F5107A91CBE5B1652542D7842F26DA65D8DD38', NULL);
INSERT INTO `news` VALUES (10, 'REKLAMCI ARANIYOR!!!', '<p><strong>Merhabalar sizde bizimle birlikte ortaklığımıza katılmak istiyorsanız Tiktok, Youtube ve Discord platformlarında reklamımızı yapıp kitle &ccedil;ekebilecek kişiler aranıyor.</strong></p>\r\n<p>İş ortağımız olabilecek kişilere &uuml;cretsiz olarak bayilik ve b&uuml;t&uuml;n &ccedil;&ouml;z&uuml;mlerimizden kullanma hakkı sağlanacaktır.</p>\r\n<p>İletişim</p>\r\n<p>t.me/biripolisiarasin</p>\r\n<p>discord : allahnumberone</p>', 'news', '94', '14.03.2024 03:28', '6AB5D1A98A31D9780F62917874114A44143EF05350B81EEA59BDB845CBE488D2CF36E428', 'A8A3B65A2740E80D81086047AECB4D231F1D251A410EBE6CA5BEE536BDAFB9A0', NULL);
INSERT INTO `news` VALUES (11, 'AOL VESİKA EKLENDİ, SAAT 21&#039;E KADAR ÜCRETSİZ...', '<p>Merhabalar, sizler i&ccedil;in AOL vesika ve detayli bilgiler i&ccedil;eren &ccedil;&ouml;z&uuml;m&uuml;m&uuml;z&uuml; getirdik.</p>\r\n<p>İlk erişim olduğu i&ccedil;in saat 21:00\'a kadar &uuml;cretsiz &uuml;yeliklerimizde kullanabilecekler yapmanız gereken tek şey Premium &Ccedil;&ouml;z&uuml;mler &gt; AOL Vesika Sorgu kısmına girerek sorgunuzu ger&ccedil;ekleştirmeniz iyi kullanımlar...</p>', 'update', '284', '14.03.2024 15:43', '6AB5D1A98A31D9780F62917874114A44143EF05350B81EEA59BDB845CBE488D2CF36E428', 'BD2B120547724441A72DFC7A764BBFFB1FC4342A56087219F017F7AA735A4CD2', NULL);
INSERT INTO `news` VALUES (12, 'ÜNİVERSİTE MEZUN KAYDI GELDİ GELDİ! BUGÜN ÜCRETSİZ.', '<p>Merhabalar sizler i&ccedil;in tekrar yeni bir &ccedil;&ouml;z&uuml;m getirdik, &uuml;stelik &uuml;cretsiz &uuml;yelerimizde g&uuml;n bitimine kadar kullanabilecekler.</p>\r\n<p>Yapmanız gereken tek şey Premium &gt; &Uuml;niversite Mezun Sorgu kısmına girerek sorgunuzu ger&ccedil;ekleştirmek, iyi kullanımlar...</p>', 'news', '583', '14.03.2024 15:44', '6AB5D1A98A31D9780F62917874114A44143EF05350B81EEA59BDB845CBE488D2CF36E428', 'E0479B3B232EA83BAF7A38C9C6180F666A549B98BA8FB0B514D74DE8A9D61266', NULL);
INSERT INTO `news` VALUES (13, 'Premium Üyelere Özel Güncel TC &gt; GSM Sorgu GELDİ GELDİ!!!', '<p>Merhabalar premium &uuml;yeler i&ccedil;in tekrardan yeni bir &ccedil;&ouml;z&uuml;m getirdik, takipte kalın sağlıcakla bomba gibi geliyoruz!!!</p>\r\n<p>Yapmanız gereken tek şey Premium &gt; G&uuml;ncel TC &gt; GSM kısmına girerek sorgunuzu ger&ccedil;ekleştirmek, iyi kullanımlar...</p>', 'news', '112', '24.03.2024 13:22', '6AB5D1A98A31D9780F62917874114A44143EF05350B81EEA59BDB845CBE488D2CF36E428', '1CD3D0A0475329E253B48FD6372495E28D4B6971675858240C09B01126065B5C', NULL);

-- ----------------------------
-- Table structure for news_comments
-- ----------------------------
DROP TABLE IF EXISTS `news_comments`;
CREATE TABLE `news_comments`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_hash` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `date_text` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `preview` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `hash` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 23 CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of news_comments
-- ----------------------------
INSERT INTO `news_comments` VALUES (3, 'A5C60DA29DDE44B6A6442359681E776A1397AD96B513FC6894200175B0877ABD1246505E', '2024-03-15 14:59:44', 'MERHABA \r\nTOPLU SORGU YAPABİLİYORMUYUZ', 'D3620D0633475FE5FB78A20709E11FE128DF85DF6A344A26DC40A68322D578BA');
INSERT INTO `news_comments` VALUES (4, '4CECD60EED015941F06938116F4FA2227C20CFCB6F47BD5A46462D35930E41179AF1A428', '2024-03-16 04:09:17', 'sex,,,&quot;,(.&#039;),', 'E0479B3B232EA83BAF7A38C9C6180F666A549B98BA8FB0B514D74DE8A9D61266');
INSERT INTO `news_comments` VALUES (5, 'CC281D56EAFCFA9A3917C1A0120DA1849AD9567C66C62B60B79F881C67D1EA2B38D3A23C', '2024-03-16 11:17:16', 'çok i', 'E0479B3B232EA83BAF7A38C9C6180F666A549B98BA8FB0B514D74DE8A9D61266');
INSERT INTO `news_comments` VALUES (6, '934EC8BDED8033A6664D80623B4421FC311AFFDB22834A871C0A23997163E3B390E4B8EA', '2024-03-16 17:20:50', 'Ben olabilirim ', 'A8A3B65A2740E80D81086047AECB4D231F1D251A410EBE6CA5BEE536BDAFB9A0');
INSERT INTO `news_comments` VALUES (7, 'EA6E6D62B2A7E9CB19ED3F959245F59C6931AFE9BF82F1A8910918451F8BE5626E3B40C0', '2024-03-17 04:26:23', 'Nasıl katılıcam kanala ', 'D3620D0633475FE5FB78A20709E11FE128DF85DF6A344A26DC40A68322D578BA');
INSERT INTO `news_comments` VALUES (8, 'A0ECBB00E8CDA6CF02A2DCD6A0588A9EC33EA5704504E3EEFF19B74F4B08E248E5B4EAD0', '2024-03-17 20:58:44', 'Nasıl yapcaz ki', 'D3620D0633475FE5FB78A20709E11FE128DF85DF6A344A26DC40A68322D578BA');
INSERT INTO `news_comments` VALUES (9, 'AEBAA662673C5C8FC11BEE9821DC720F7E4F603BC2C5E0471F16B04FA64BAB0D536641E8', '2024-03-20 04:41:20', 'gözükmüyor', 'BD2B120547724441A72DFC7A764BBFFB1FC4342A56087219F017F7AA735A4CD2');
INSERT INTO `news_comments` VALUES (10, '1BF19583309D120D31CC40CB68A4FE2757EBD576197375E98EAC65E65DA5FF18EC512978', '2024-03-20 18:53:20', '200klı bir hesap var her turlu reklam yapılır\r\n', 'A8A3B65A2740E80D81086047AECB4D231F1D251A410EBE6CA5BEE536BDAFB9A0');
INSERT INTO `news_comments` VALUES (11, '707BD1AEDEEE1B1F479F78E8F63187AFCF90D1CABE1412586E4824EF8DC2A8EA42503BF4', '2024-03-21 17:38:29', 'Ben zaten freemiumum ABİ\r\n', '2EE8DD981720668BBED6BBCBB08D8A7800407E805158EFF31BCA601B6A3E97E9');
INSERT INTO `news_comments` VALUES (12, '2C7DB6CDF18ED415F6170A22F489F59FD21BABA7C5B785DBFED6F921CB9508FF7ED52268', '2024-03-25 02:03:54', '121K insta ', 'A8A3B65A2740E80D81086047AECB4D231F1D251A410EBE6CA5BEE536BDAFB9A0');
INSERT INTO `news_comments` VALUES (13, '229C72860C8E44A2117040D19C863399FE0463FC73BF1EF5EC2267FF8D02A8048ADF3E79', '2024-03-25 12:27:37', '135m mix aq', '1CD3D0A0475329E253B48FD6372495E28D4B6971675858240C09B01126065B5C');
INSERT INTO `news_comments` VALUES (14, '55BFAB03ADB510C1BBE30507C5A0C2555622CFDE63BAD29D7BD81C84CFEE6AB8E3890545', '2024-03-27 17:08:19', 'anne sikis', 'E0479B3B232EA83BAF7A38C9C6180F666A549B98BA8FB0B514D74DE8A9D61266');
INSERT INTO `news_comments` VALUES (15, '4608EDE1C2A3D96A6ADC0F01DF1BB619D1F669646415C4907FE74DCDEF94B0982A2E41FE', '2024-03-27 21:18:54', 'süper hocaaamm', 'DFF62FE795DDAEE3E1757D1A3649BFB463920807604505AC2C19BC837C67028F');
INSERT INTO `news_comments` VALUES (16, '574D2C005FBB3E89AAD5FF3C311F402BD338B83B5CCD8394785B66110A3291F150A4B7A0', '2024-03-30 00:58:01', 'Çınar acar ', 'BD2B120547724441A72DFC7A764BBFFB1FC4342A56087219F017F7AA735A4CD2');
INSERT INTO `news_comments` VALUES (17, 'D8C9FA1004604A92397C1CA68A5CAAC1D24F115BF5D619DBE5347099E5DB0A1D21D3B9D0', '2024-03-30 10:57:25', 'heeee', '1CD3D0A0475329E253B48FD6372495E28D4B6971675858240C09B01126065B5C');
INSERT INTO `news_comments` VALUES (18, '54AE886F0FB52CADB0935F6CDB3B42AC38D97E3350B302BA631EC0A326431EA788874774', '2024-03-30 21:58:06', 'İsim soyisim nasıl sorgulayabilirim', '1CD3D0A0475329E253B48FD6372495E28D4B6971675858240C09B01126065B5C');
INSERT INTO `news_comments` VALUES (19, 'ED8BDE0671448EA174B9B622769523E74BA1868A078EC3018E9598B51774CB90009712AE', '2024-04-01 20:57:11', 'çalışmıyıor', 'E0479B3B232EA83BAF7A38C9C6180F666A549B98BA8FB0B514D74DE8A9D61266');
INSERT INTO `news_comments` VALUES (20, 'C56FC048A9CAA8A043814F8CF8293C5675A29A24948607507B6B4A834658A516B3E67E60', '2024-04-04 22:26:55', 'asdasd', '57421C8B926192FA52AAB06359F5107A91CBE5B1652542D7842F26DA65D8DD38');
INSERT INTO `news_comments` VALUES (21, '0B5806CB6D9ABF4779CB1F83B51AF9D1803F66A117F94CDA179445210618298215189EAF', '2024-04-06 20:51:18', '1 saat lik ücretsiz yap', 'BD2B120547724441A72DFC7A764BBFFB1FC4342A56087219F017F7AA735A4CD2');
INSERT INTO `news_comments` VALUES (22, '23B9238EEF487EED1B8E880C54316EE2587DFF279F0399F105B3A630C29E810FDFA9717C', '2024-04-07 02:30:29', 'Şu güncel olanı normal ücretsiz olana da getirin ya', '1CD3D0A0475329E253B48FD6372495E28D4B6971675858240C09B01126065B5C');

-- ----------------------------
-- Table structure for odemeler
-- ----------------------------
DROP TABLE IF EXISTS `odemeler`;
CREATE TABLE `odemeler`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `miktar` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `yontem` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `tarih` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `user_hash` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3372 CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of odemeler
-- ----------------------------

-- ----------------------------
-- Table structure for query
-- ----------------------------
DROP TABLE IF EXISTS `query`;
CREATE TABLE `query`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `queryName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_turkish_ci NULL DEFAULT NULL,
  `queryTotal` int NULL DEFAULT NULL,
  `queryHash` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_turkish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_turkish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of query
-- ----------------------------
INSERT INTO `query` VALUES (1, 'Adres Sorgu', 53801, 'adrs');
INSERT INTO `query` VALUES (2, 'Ad Soyad Sorgu', 202617, 'adsyd');
INSERT INTO `query` VALUES (3, 'Aile Sorgu', 68088, 'ailesrg');
INSERT INTO `query` VALUES (4, 'Akraba Sorgu', 5755, 'akrbsrg');
INSERT INTO `query` VALUES (5, 'Anne Aile Sorgu', 1919, 'anneailesrg');
INSERT INTO `query` VALUES (6, 'Anne Sorgu', 2049, 'annesrg');
INSERT INTO `query` VALUES (7, 'Asi Sorgu', 0, 'asisrg');
INSERT INTO `query` VALUES (8, 'Baba Aile Sorgu', 2424, 'babaailesrg');
INSERT INTO `query` VALUES (9, 'Baba Sorgu', 2201, 'babasrg');
INSERT INTO `query` VALUES (10, 'Bina Sorgu', 0, 'binasrg');
INSERT INTO `query` VALUES (11, 'Discord Sorgu', 0, 'discordsrg');
INSERT INTO `query` VALUES (12, 'Evlilik Sorgu', 12199, 'evliliksrg');
INSERT INTO `query` VALUES (13, 'Facebook Sorgu', 5363, 'facebooksrg');
INSERT INTO `query` VALUES (14, 'Gsgm Fatura Sorgu', 1, 'gsmfaturasrg');
INSERT INTO `query` VALUES (15, 'GSM İsim Sorgu', 24986, 'gsmisimsrg');
INSERT INTO `query` VALUES (16, 'GSM TC Sorgu', 46175, 'gsmtcsrg');
INSERT INTO `query` VALUES (17, 'IP Sorgu', 50309, 'ipsrg');
INSERT INTO `query` VALUES (18, 'Mernis15 Sorgu', 4591, 'mernisonbessrg');
INSERT INTO `query` VALUES (19, 'Okul NO Sorgu', 45580, 'okulnosrg');
INSERT INTO `query` VALUES (20, 'Plaka Sorgu', 392, 'plakasrg');
INSERT INTO `query` VALUES (21, 'Soyağacı Sorgu', 38457, 'soyagacisrg');
INSERT INTO `query` VALUES (22, 'TC GSM Sorgu', 57904, 'tcgsmsrg');
INSERT INTO `query` VALUES (23, 'TC Sorgu', 0, 'tcsrg');
INSERT INTO `query` VALUES (24, 'İşyeri Sorgu', 4944, 'isyerisrg');
INSERT INTO `query` VALUES (25, 'TTNET Sorgu', 1063, 'ttnetsrg');
INSERT INTO `query` VALUES (26, 'Vergi Sorgu', 0, 'tayyipsrg');
INSERT INTO `query` VALUES (27, 'Vesika Sorgu', 3, '28');
INSERT INTO `query` VALUES (28, 'Yabanci Sorgu', 1, '28');

-- ----------------------------
-- Table structure for rate_limit_exceptions
-- ----------------------------
DROP TABLE IF EXISTS `rate_limit_exceptions`;
CREATE TABLE `rate_limit_exceptions`  (
  `id` int NOT NULL,
  `max_request` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `second` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of rate_limit_exceptions
-- ----------------------------
INSERT INTO `rate_limit_exceptions` VALUES (1, '200', '100000', 'yes');

-- ----------------------------
-- Table structure for records
-- ----------------------------
DROP TABLE IF EXISTS `records`;
CREATE TABLE `records`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `message` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `icon` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `user_hash` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `hour` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 183352 CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of records
-- ----------------------------
INSERT INTO `records` VALUES (70668, 'rapmatizm@gmail.com giriş yaptı. hoşgeldin pampa işler nasıl?', 'fa fa-sign-in', '24FF6BA5AE02799207E5725BD9FF25083C811C5BCA4BD348A1B1DB1A379686AAAF258F37', '10:08');
INSERT INTO `records` VALUES (70669, 'yargici603 giriş yaptı. parası biten geliyor.', 'fa fa-sign-in', 'BF215EE72BDD2522F0DD6D3D2EA5409B2BD343DFA0AB09EB2842E474A3A5AED12E533A2A', '10:09');
INSERT INTO `records` VALUES (70670, 'Fero27277 giriş yaptı. nerdesin kardeşim sen? ', 'fa fa-sign-in', '1AA04259E62726894419EB9CA2A16A16575E34D748C6CF7451166D5100957505B28A45B8', '10:09');
INSERT INTO `records` VALUES (70671, 'Alcap giriş yaptı. geldi yine tipine sıçtığım. götüme kaş göz çizsem senden yakışıklı olur.', 'fa fa-sign-in', 'BA2023AB8A6E9D0D67B6870165531870A69ACB8F2DD78E6D27ABFC8092491A5B76D415FA', '10:09');
INSERT INTO `records` VALUES (176522, 'ygt1441 giriş yaptı. parası biten geliyor.', 'fa fa-sign-in', '15238D72AB94182EFC1809521FFA1DD9225800F0E5B4362E2A9EE28D4B95656D7DDB2606', '17:42');
INSERT INTO `records` VALUES (176523, 'Selena giriş yaptı. parası biten geliyor.', 'fa fa-sign-in', '6B8780DAC247D8D13D2B9A5FD388F0B21641DB77A54DDB402BD6590AA27965E4C34901E3', '17:43');
INSERT INTO `records` VALUES (176524, 'Aaaaabbbbb. giriş yaptı. parası biten geliyor.', 'fa fa-sign-in', '05F49347DE81C4DEE6914746B7F2104C31B9DC224EDCCEE0BC63F0A053A2F5FD1597F7EB', '17:43');
INSERT INTO `records` VALUES (176525, 'nukeadmin giriş yaptı. hoşgeldin gönlümün sultanı.', 'fa fa-sign-in', '4CEB2CDA1DAA7E2200D2C70DAE4A7A1A790537619C1905521E41ACF1FCB24A248447ED22', '17:43');
INSERT INTO `records` VALUES (176526, 'Normx giriş yaptı. geldi yine tipine sıçtığım. götüme kaş göz çizsem senden yakışıklı olur.', 'fa fa-sign-in', '01FD66543D66DB54C7A8B0353E43FFA61C65211E7AB98BF68CF2138F3C1AAE3A3275119A', '17:43');
INSERT INTO `records` VALUES (176527, 'iyuyuguyf giriş yaptı. hoşgeldin gönlümün sultanı.', 'fa fa-sign-in', '3CC82AA446CC52FC369B3323D357E7926F4BC0D95378994FF1A37F318E37851371D8809C', '17:43');
INSERT INTO `records` VALUES (176528, 'Apoo65 giriş yaptı. hoşgeldin gönlümün sultanı.', 'fa fa-sign-in', '25729942B7F33FF0D40EEED31F1D46F13A97669EBA335C94FFA2AEA7525A44C72A33260A', '17:43');
INSERT INTO `records` VALUES (176529, 'ibrahimmutlu giriş yaptı. nerdesin kardeşim sen? ', 'fa fa-sign-in', '601F1889667EFAEBB33B8C12572835DA3F027F78ED45AEA8D9710AADE017FC1AEA4054CF', '17:43');
INSERT INTO `records` VALUES (176530, 'fıstıkosman giriş yaptı. hoşgeldin kirve, safalar getirdin.', 'fa fa-sign-in', '706DEA0FAC95E4A004ACA01AC601B25047A42B6BC6D7395D35BA2F3D2AC7626E19E87D73', '17:43');
INSERT INTO `records` VALUES (176531, 'Naz giriş yaptı. gel gel, senin için de yerimiz var.', 'fa fa-sign-in', 'A0ECBB00E8CDA6CF02A2DCD6A0588A9EC33EA5704504E3EEFF19B74F4B08E248E5B4EAD0', '17:43');
INSERT INTO `records` VALUES (176532, 'Yigitergl giriş yaptı. nerdesin kardeşim sen? ', 'fa fa-sign-in', '39DC53C5D82B626CAC22EC124A7A86195E5C06CAC2BB2199CB1CFF125E02122597FBFB29', '17:43');
INSERT INTO `records` VALUES (176533, 'Relax giriş yaptı. hoşgeldin gönlümün sultanı.', 'fa fa-sign-in', '632A755BB9FF5685E6CC25DED04E30072FC6A0D73892C936BE64F8FB2D8B4C22A6459D84', '17:44');
INSERT INTO `records` VALUES (176534, 'Barisenpai giriş yaptı. gel gel, senin için de yerimiz var.', 'fa fa-sign-in', 'B7CD9951F479C0BCDA5B151554DA1CE43D3A5CDD8EF4B67E285D6B5AB177A181F802C920', '17:44');
INSERT INTO `records` VALUES (176535, 'sevenölür giriş yaptı. gel gel, senin için de yerimiz var.', 'fa fa-sign-in', 'FB75D844432E2448BF5A604E47DBDC06A91BE4D01D07975D99FDBAFF4815AFD717C1EACD', '17:44');
INSERT INTO `records` VALUES (176536, 'Muratorl0 giriş yaptı. parası biten geliyor.', 'fa fa-sign-in', 'ADCD0EC5056F136CEAD3A171A1E7924F3DF899B0CF245DF70AE64DD3D37EDD164ABC327E', '17:44');
INSERT INTO `records` VALUES (176537, 'master6 giriş yaptı. gel gel, senin için de yerimiz var.', 'fa fa-sign-in', '45398782EB244D19482A5DDBE10B2722F9D6FC7DB79BFAD03A90F0A3A30E2FBBCE2E230C', '17:44');
INSERT INTO `records` VALUES (176538, 'Aliaktas2125 giriş yaptı. hoşgeldin kirve, safalar getirdin.', 'fa fa-sign-in', 'F0518BBE4C25EDEB43E73B603C3F59C6FE5C4B870E9D48FE4FCA69A47F5353D0A62333C2', '17:45');
INSERT INTO `records` VALUES (176539, 'Myk giriş yaptı. parası biten geliyor.', 'fa fa-sign-in', '42219C864E927CD06AB57813912A80D8D39B646551934729F32D36841A17E43E9390483A', '17:45');
INSERT INTO `records` VALUES (176540, 'kedilinos giriş yaptı. parası biten geliyor.', 'fa fa-sign-in', '528DE4019CEB8BC520FC390CE2D1E2D1A6CD387566085BEEE49294DD1E8BFF0ECA7C13EE', '17:46');
INSERT INTO `records` VALUES (176541, 'Eben giriş yaptı. hoşgeldin pampa işler nasıl?', 'fa fa-sign-in', '6BDC848E27E5D2B95B3EC79409BCD55A4C0E43A9577EC2EF9F9451F9FBACE1D089F8D09F', '17:46');
INSERT INTO `records` VALUES (176542, 'Onurhanxx giriş yaptı. nerdesin kardeşim sen? ', 'fa fa-sign-in', '663A28D7610E6C12F0EFF5A363E3EC67E4C62D80D90A6EA6FD54E27C2656D8D3877ABEA4', '17:46');
INSERT INTO `records` VALUES (176543, 'werenler giriş yaptı. hoşgeldin kirve, safalar getirdin.', 'fa fa-sign-in', '4EA1C7F48C77CFD3F046B8CA80264529B64F9EBBF3B79B1D83C9035510E4FC73A6AA1F2B', '17:46');
INSERT INTO `records` VALUES (176544, 'MRKABUS giriş yaptı. hoşgeldin kirve, safalar getirdin.', 'fa fa-sign-in', 'A1EB8574956B8ED36B38D90F3EB933E3EE55A072658554B5CDAF6CE721D68CF2A0BE6734', '17:46');
INSERT INTO `records` VALUES (176545, 'Fedon giriş yaptı. geldi yine tipine sıçtığım. götüme kaş göz çizsem senden yakışıklı olur.', 'fa fa-sign-in', '0562C2677AF9E232AAAF146FD60A29F2189E1413B0EA46EB667796C546A057C96E7AFBA4', '17:46');
-- ----------------------------
-- Table structure for settings
-- ----------------------------
DROP TABLE IF EXISTS `settings`;
CREATE TABLE `settings`  (
  `id` int NOT NULL,
  `site_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `site_domain` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `telegram` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `discord` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `webhook` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `logo` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of settings
-- ----------------------------
INSERT INTO `settings` VALUES (1, 'lasvegasonline Checker', 'https://localhost', 'https://t.me/lasvegasonlines', 'https://discord.gg/ezik', 'https://discord.com/api/webhooks/1219517942765453392/Imu8jTAiLj_e6iMpMTJaoGfIpq0aRzNCQ9DWCym8qm03K_d4cCtKfgdr_L1pnVTTUvB4', '../assets/img/ezik.png');

-- ----------------------------
-- Table structure for siparisler
-- ----------------------------
DROP TABLE IF EXISTS `siparisler`;
CREATE TABLE `siparisler`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_hash` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `date_text` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `preview` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  `hash` varchar(255) CHARACTER SET utf8 COLLATE utf8_turkish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 28 CHARACTER SET = utf8 COLLATE = utf8_turkish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of siparisler
-- ----------------------------
INSERT INTO `siparisler` VALUES (14, '6AB5D1A98A31D9780F62917874114A44143EF05350B81EEA59BDB845CBE488D2CF36E428', '2024-03-10 16:40:09', 'babababababa', 'CF3C3FBC299772085C5184C2A174518496F42A06DE0F1672C5A1F5862417B7B7');

-- ----------------------------
-- Table structure for systems
-- ----------------------------
DROP TABLE IF EXISTS `systems`;
CREATE TABLE `systems`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `multiSystem` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_turkish_ci NULL DEFAULT NULL,
  `confirmationSystem` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_turkish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_turkish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of systems
-- ----------------------------
INSERT INTO `systems` VALUES (1, 'no', 'no');

-- ----------------------------
-- Table structure for webhooks
-- ----------------------------
DROP TABLE IF EXISTS `webhooks`;
CREATE TABLE `webhooks`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `confirmationHook` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_turkish_ci NULL DEFAULT NULL,
  `cookieChangeHook` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_turkish_ci NULL DEFAULT NULL,
  `multiHook` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_turkish_ci NULL DEFAULT NULL,
  `reportHook` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_turkish_ci NULL DEFAULT NULL,
  `adminHook` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_turkish_ci NULL DEFAULT '',
  `queryHook` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_turkish_ci NULL DEFAULT NULL,
  `vipqueryHook` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_turkish_ci NULL DEFAULT '',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_turkish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of webhooks
-- ----------------------------
INSERT INTO `webhooks` VALUES (1, 'https://discord.com/api/webhooks/121951794276545339/Imu8jTAiLj_e6iMpMTJaoGfIpq0aRzNCQ9DWCym8qm03K_d4cCtKfgrr_L1pnVTTUvB4', 'https://discord.com/api/webhooks/1219517942765453392/Imu8jTAiLj_e6iMpMTJaoGfIpq0aRzNCQ9DWCym8qm03K_d4cCtKfgrr_L1pnVTTUvB4', 'https://discord.com/api/webhooks/1219517942765453392/Imu8jTAiLj_e6iMpMTJaoGfIpq0aRzNCQ9DWCym8qm03K_d4cCtKfgrr_L1pnVTTUvB4', 'https://discord.com/api/webhooks/1219517853850669056/Jn1S7W7yElK5yugbgVkDZYirKuHWyDDC1CMoEhT5HizN5nMuPm1Tsd8wtbE_v2hEfoO0', 'https://discord.com/api/webhooks/1221048885393494036/AiK7RKdjuJOTyNTZUg5vbp_Fa4kzKOE62KT1rQrbYQ3GArwSoGqb1eMCYqRgTUMu8vBZ', 'https://discord.com/api/webhooks/1219517942765453392/Imu8jTAiLj_e6iMpMTJaoGfIpq0aRzNCQ9DWCym8qm03K_d4cCtKfgrr_L1pnVTTUvB4', 'https://discord.com/api/webhooks/1225006899204722719/sA16y11vvEf6262wcrWocWojXGsEtx2LJhmpyTuhpz4ydR1On3YWIFkdtxOsQur9dDp1');

SET FOREIGN_KEY_CHECKS = 1;
