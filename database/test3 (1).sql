-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 11, 2019 at 01:15 PM
-- Server version: 5.7.26
-- PHP Version: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test3`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
CREATE TABLE IF NOT EXISTS `cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `product_id`, `quantity`) VALUES
(1, 18, 2, 6),
(2, 18, 1, 1),
(3, 25, 31, 1),
(19, 24, 31, 1),
(20, 23, 31, 1),
(21, 22, 8, 1),
(22, 22, 1, 1),
(34, 29, 40, 1),
(50, 32, 62, 1),
(52, 31, 41, 1),
(58, 34, 60, 1),
(71, 35, 53, 1),
(72, 35, 51, 2),
(73, 36, 62, 1),
(74, 34, 55, 1),
(76, 38, 39, 1);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `cat_slug` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `cat_slug`) VALUES
(5, 'SamSung', 'samsung'),
(6, 'Apple', 'apple'),
(7, 'Huawei', 'huawei'),
(8, 'Xiaomi', 'xiaomi'),
(10, 'Nokia', 'nokia'),
(11, 'Sony', 'sony'),
(12, 'OPPO', 'oppo'),
(13, 'HTC', 'htc'),
(14, 'Smart Phone KhÃ¡c', 'Smart Phone KhÃ¡c');

-- --------------------------------------------------------

--
-- Table structure for table `details`
--

DROP TABLE IF EXISTS `details`;
CREATE TABLE IF NOT EXISTS `details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sales_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `details`
--

INSERT INTO `details` (`id`, `sales_id`, `product_id`, `quantity`) VALUES
(14, 9, 11, 2),
(15, 9, 13, 5),
(16, 9, 3, 2),
(17, 9, 1, 3),
(18, 10, 13, 3),
(19, 10, 2, 4),
(20, 10, 19, 5);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `name` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `description` text NOT NULL,
  `slug` varchar(200) NOT NULL,
  `price` int(11) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `date_view` date NOT NULL,
  `counter` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `description`, `slug`, `price`, `photo`, `date_view`, `counter`) VALUES
(39, 6, 'Iphone XS-MAX (HOT)', '<p>M&agrave;n h&igrave;nh:&nbsp;&nbsp; &nbsp;OLED, 6.5&quot;, Super Retina<br />\r\nCamera trÆ°á»›c:&nbsp;&nbsp; &nbsp;7 MP<br />\r\nCamera sau:&nbsp;&nbsp; &nbsp;2 camera 12 MP<br />\r\nChipset:&nbsp;&nbsp; &nbsp;Apple A12 Bionic 6 nh&acirc;n<br />\r\nRam:&nbsp;&nbsp; &nbsp;4 GB<br />\r\nRom:&nbsp;&nbsp; &nbsp;256 GB<br />\r\nTháº» Sim:&nbsp;&nbsp; &nbsp;1 Nano Sim<br />\r\nDung lÆ°á»£ng pin:&nbsp;&nbsp; &nbsp;3.174 mAh<br />\r\nHá»‡ Ä‘iá»u h&agrave;nh:&nbsp;&nbsp; &nbsp;iOS</p>\r\n', 'iphone-xs-max-hot', 23000000, 'apple.jpg', '2019-10-10', 2),
(40, 6, 'Iphone  XR (HOT)', '<p>M&agrave;n h&igrave;nh:&nbsp;&nbsp; &nbsp;LCD, 6.1&quot;, Super Retina<br />\r\nCamera trÆ°á»›c:&nbsp;&nbsp; &nbsp;7 MP<br />\r\nCamera sau:&nbsp;&nbsp; &nbsp;12 MP<br />\r\nChipset:&nbsp;&nbsp; &nbsp;Apple A12 Bionic 6 nh&acirc;n<br />\r\nRam:&nbsp;&nbsp; &nbsp;3 GB<br />\r\nRom:&nbsp;&nbsp; &nbsp;64 GB<br />\r\nTháº» Sim:&nbsp;&nbsp; &nbsp;2 Sim<br />\r\nDung lÆ°á»£ng pin:&nbsp;&nbsp; &nbsp;2716 mAh<br />\r\nHá»‡ Ä‘iá»u h&agrave;nh:&nbsp;&nbsp; &nbsp;iOS</p>\r\n', 'iphone-xr-hot', 19000000, 'iphone-xr.jpg', '2019-10-09', 1),
(41, 6, 'Iphone  X (HOT)', '<p>M&agrave;n h&igrave;nh:&nbsp;&nbsp; &nbsp;OLED, 5.8&quot;, Super Retina<br />\r\nHá»‡ Ä‘iá»u h&agrave;nh:&nbsp;&nbsp; &nbsp;iOS 12<br />\r\nCamera sau:&nbsp;&nbsp; &nbsp;Ch&iacute;nh 12 MP &amp; Phá»¥ 12 MP<br />\r\nCamera trÆ°á»›c:&nbsp;&nbsp; &nbsp;7 MP<br />\r\nCPU:&nbsp;&nbsp; &nbsp;Apple A11 Bionic 6 nh&acirc;n<br />\r\nRAM:&nbsp;&nbsp; &nbsp;3 GB<br />\r\nBá»™ nhá»› trong:&nbsp;&nbsp; &nbsp;64 GB<br />\r\nTháº» SIM:1 Nano SIM, Há»— trá»£ 4G<br />\r\nDung lÆ°á»£ng pin:&nbsp;&nbsp; &nbsp;2716 mAh, c&oacute; sáº¡c nhanh</p>\r\n', 'iphone-x-hot', 30000000, 'iphone-x.jpg', '2019-10-09', 2),
(42, 6, 'Iphone 8 Plus (KhuyenMai)', '<p>M&agrave;n h&igrave;nh:&nbsp;&nbsp; &nbsp;LED-backlit IPS LCD, 5.5&quot;, Retina HD<br />\r\nCamera trÆ°á»›c:&nbsp;&nbsp; &nbsp;7 MP<br />\r\nCamera sau:&nbsp;&nbsp; &nbsp;2 camera 12 MP<br />\r\nChipset:&nbsp;&nbsp; &nbsp;Apple A11 Bionic 6 nh&acirc;n<br />\r\nRam:&nbsp;&nbsp; &nbsp;3 GB<br />\r\nRom:&nbsp;&nbsp; &nbsp;64 GB<br />\r\nTháº» Sim:&nbsp;&nbsp; &nbsp;1 Nano SIM<br />\r\nDung lÆ°á»£ng pin:&nbsp;&nbsp; &nbsp;2691 mAh<br />\r\nHá»‡ Ä‘iá»u h&agrave;nh:&nbsp;&nbsp; &nbsp;iOS</p>\r\n', 'iphone-8-plus-khuyenmai', 15000000, 'iphone-8-plus.jpg', '2019-10-02', 6),
(44, 13, 'HTC U11 Plus', '<p>M&agrave;n h&igrave;nh:&nbsp;&nbsp; &nbsp;Super LCD 6, 6.0&quot;, Quad HD+ (2K+)<br />\r\nHá»‡ Ä‘iá»u h&agrave;nh:&nbsp;&nbsp; &nbsp;Android 8.0 (Oreo)<br />\r\nCamera sau:&nbsp;&nbsp; &nbsp;12 MP<br />\r\nCamera trÆ°á»›c:&nbsp;&nbsp; &nbsp;8 MP<br />\r\nCPU:&nbsp;&nbsp; &nbsp;Qualcomm Snapdragon 835 8 nh&acirc;n 64-bit<br />\r\nRAM:&nbsp;&nbsp; &nbsp;6 GB<br />\r\nBá»™ nhá»› trong:&nbsp;&nbsp; &nbsp;128 GB<br />\r\nTháº» nhá»›:&nbsp;&nbsp; &nbsp;MicroSD, há»— trá»£ tá»‘i Ä‘a 256 GB<br />\r\nTháº» SIM:<br />\r\n2 Nano SIM, Há»— trá»£ 4G<br />\r\nDung lÆ°á»£ng pin:&nbsp;&nbsp; &nbsp;3930 mAh, c&oacute; sáº¡c nhanh</p>\r\n', 'htc-u11-plus', 14000000, 'htc-u11-plus.png', '2019-10-09', 4),
(45, 13, 'HTC U12 life (KhuyenMai)', '<p>M&agrave;n h&igrave;nh:&nbsp;&nbsp; &nbsp;Super LCD, 6&quot;, Full HD+<br />\r\nHá»‡ Ä‘iá»u h&agrave;nh:&nbsp;&nbsp; &nbsp;Android 8.1 (Oreo)<br />\r\nCamera sau:&nbsp;&nbsp; &nbsp;Ch&iacute;nh 16 MP &amp; Phá»¥ 5 MP<br />\r\nCamera trÆ°á»›c:&nbsp;&nbsp; &nbsp;13 MP<br />\r\nCPU:&nbsp;&nbsp; &nbsp;Qualcomm Snapdragon 636 8 nh&acirc;n 64-bit<br />\r\nRAM:&nbsp;&nbsp; &nbsp;4 GB<br />\r\nBá»™ nhá»› trong:&nbsp;&nbsp; &nbsp;64 GB<br />\r\nTháº» nhá»›:&nbsp;&nbsp; &nbsp;MicroSD, há»— trá»£ tá»‘i Ä‘a 512 GB<br />\r\nTháº» SIM:<br />\r\n2 SIM Nano (SIM 2 chung khe tháº» nhá»›), Há»— trá»£ 4G<br />\r\nDung lÆ°á»£ng pin:&nbsp;&nbsp; &nbsp;3600 mAh</p>\r\n', 'htc-u12-life-khuyenmai', 10000000, 'htc-u12-life.png', '2019-06-08', 14),
(46, 13, 'HTC Wildfire X', '<p>M&agrave;n h&igrave;nh:&nbsp;&nbsp; &nbsp;IPS LCD, 6.2&quot;, HD+<br />\r\nHá»‡ Ä‘iá»u h&agrave;nh:&nbsp;&nbsp; &nbsp;Android 9.0 (Pie)<br />\r\nCamera sau:&nbsp;&nbsp; &nbsp;Ch&iacute;nh 12 MP &amp; Phá»¥ 8 MP, 5 MP<br />\r\nCamera trÆ°á»›c:&nbsp;&nbsp; &nbsp;8 MP<br />\r\nCPU:&nbsp;&nbsp; &nbsp;MediaTek MT6762 8 nh&acirc;n 64-bit (Helio P22)<br />\r\nRAM:&nbsp;&nbsp; &nbsp;3 GB<br />\r\nBá»™ nhá»› trong:&nbsp;&nbsp; &nbsp;32 GB<br />\r\nTháº» nhá»›:&nbsp;&nbsp; &nbsp;MicroSD, há»— trá»£ tá»‘i Ä‘a 256 GB<br />\r\nTháº» SIM:<br />\r\n2 SIM Nano (SIM 2 chung khe tháº» nhá»›), Há»— trá»£ 4G<br />\r\nDung lÆ°á»£ng pin:&nbsp;&nbsp; &nbsp;3300 mAh, c&oacute; sáº¡c nhanh</p>\r\n', 'htc-wildfire-x', 5000000, 'htc-wildfire-x.png', '2019-10-09', 1),
(47, 10, 'Nokia 3.2  (KhuyenMai)', '<p>M&agrave;n h&igrave;nh:&nbsp;&nbsp; &nbsp;IPS LCD, 6.2&quot;, HD+<br />\r\nHá»‡ Ä‘iá»u h&agrave;nh:&nbsp;&nbsp; &nbsp;Android 9 Pie (Android One)<br />\r\nCamera sau:&nbsp;&nbsp; &nbsp;13 MP<br />\r\nCamera trÆ°á»›c:&nbsp;&nbsp; &nbsp;5 MP<br />\r\nCPU:&nbsp;&nbsp; &nbsp;Qualcomm Snapdragon 429 4 nh&acirc;n 64-bit<br />\r\nRAM:&nbsp;&nbsp; &nbsp;3 GB<br />\r\nBá»™ nhá»› trong:&nbsp;&nbsp; &nbsp;32 GB<br />\r\nTháº» nhá»›:&nbsp;&nbsp; &nbsp;MicroSD, há»— trá»£ tá»‘i Ä‘a 400 GB<br />\r\nTháº» SIM:<br />\r\n2 Nano SIM, Há»— trá»£ 4G<br />\r\nDung lÆ°á»£ng pin:&nbsp;&nbsp; &nbsp;4000 mAh</p>\r\n', 'nokia-3-2-khuyenmai', 3200000, 'nokia-3-2.png', '2019-10-05', 49),
(48, 10, 'Nokia 7.2', '<p>M&agrave;n h&igrave;nh:&nbsp;&nbsp; &nbsp;IPS LCD, 6.3&quot;, Full HD+<br />\r\nHá»‡ Ä‘iá»u h&agrave;nh:&nbsp;&nbsp; &nbsp;Android 9 Pie (Android One)<br />\r\nCamera sau:&nbsp;&nbsp; &nbsp;Ch&iacute;nh 48 MP &amp; Phá»¥ 8 MP, 5 MP<br />\r\nCamera trÆ°á»›c:&nbsp;&nbsp; &nbsp;20 MP<br />\r\nCPU:&nbsp;&nbsp; &nbsp;Qualcomm Snapdragon 660 8 nh&acirc;n<br />\r\nRAM:&nbsp;&nbsp; &nbsp;4 GB<br />\r\nBá»™ nhá»› trong:&nbsp;&nbsp; &nbsp;64 GB<br />\r\nTháº» nhá»›:&nbsp;&nbsp; &nbsp;MicroSD, há»— trá»£ tá»‘i Ä‘a 400 GB<br />\r\nTháº» SIM:<br />\r\n2 Nano SIM, Há»— trá»£ 4G<br />\r\nDung lÆ°á»£ng pin:&nbsp;&nbsp; &nbsp;3500 mAh</p>\r\n', 'nokia-7-2', 7000000, 'nokia-7-2.png', '2019-10-09', 2),
(49, 10, 'Nokia 8.1', '<p>M&agrave;n h&igrave;nh:&nbsp;&nbsp; &nbsp;IPS LCD, 6.18&rdquo;, Full HD+<br />\r\nHá»‡ Ä‘iá»u h&agrave;nh:&nbsp;&nbsp; &nbsp;Android 9 Pie (Android One)<br />\r\nCamera sau:&nbsp;&nbsp; &nbsp;Ch&iacute;nh 12 MP &amp; Phá»¥ 13 MP<br />\r\nCamera trÆ°á»›c:&nbsp;&nbsp; &nbsp;20 MP<br />\r\nCPU:&nbsp;&nbsp; &nbsp;Snapdragon 710 8 nh&acirc;n 64-bit<br />\r\nRAM:&nbsp;&nbsp; &nbsp;4 GB<br />\r\nBá»™ nhá»› trong:&nbsp;&nbsp; &nbsp;64 GB<br />\r\nTháº» nhá»›:&nbsp;&nbsp; &nbsp;MicroSD, há»— trá»£ tá»‘i Ä‘a 400 GB<br />\r\nTháº» SIM:<br />\r\n2 SIM Nano (SIM 2 chung khe tháº» nhá»›), Há»— trá»£ 4G<br />\r\nDung lÆ°á»£ng pin:&nbsp;&nbsp; &nbsp;3500 mAh, c&oacute; sáº¡c nhanh</p>\r\n', 'nokia-8-1', 8000000, 'nokia-8-1.jpg', '2019-10-05', 2),
(50, 12, 'OPPO A9 (2020) (HOT)', '<p>M&agrave;n h&igrave;nh:&nbsp;&nbsp; &nbsp;TFT, 6.5&quot;, HD+<br />\r\nHá»‡ Ä‘iá»u h&agrave;nh:&nbsp;&nbsp; &nbsp;Android 9.0 (Pie)<br />\r\nCamera sau:&nbsp;&nbsp; &nbsp;Ch&iacute;nh 48 MP &amp; Phá»¥ 8 MP, 2 MP, 2 MP<br />\r\nCamera trÆ°á»›c:&nbsp;&nbsp; &nbsp;16 MP<br />\r\nCPU:&nbsp;&nbsp; &nbsp;Qualcomm Snapdragon 665 8 nh&acirc;n<br />\r\nRAM:&nbsp;&nbsp; &nbsp;8 GB<br />\r\nBá»™ nhá»› trong:&nbsp;&nbsp; &nbsp;128 GB<br />\r\nTháº» nhá»›:&nbsp;&nbsp; &nbsp;MicroSD, há»— trá»£ tá»‘i Ä‘a 256 GB<br />\r\nTháº» SIM:<br />\r\n2 Nano SIM, Há»— trá»£ 4G<br />\r\nDung lÆ°á»£ng pin:&nbsp;&nbsp; &nbsp;5000 mAh</p>\r\n', 'oppo-a9-2020-hot', 15000000, 'oppo-a9-2020.png', '2019-10-09', 3),
(51, 12, 'OPPO R17 PRO (HOT)', '<p>M&agrave;n h&igrave;nh:&nbsp;&nbsp; &nbsp;AMOLED, 6.4&quot;, Full HD+<br />\r\nHá»‡ Ä‘iá»u h&agrave;nh:&nbsp;&nbsp; &nbsp;ColorOS 5.2 (Android 8.1)<br />\r\nCamera sau:&nbsp;&nbsp; &nbsp;Ch&iacute;nh 12 MP &amp; Phá»¥ 20 MP, TOF 3D<br />\r\nCamera trÆ°á»›c:&nbsp;&nbsp; &nbsp;25 MP<br />\r\nCPU:&nbsp;&nbsp; &nbsp;Snapdragon 710 8 nh&acirc;n 64-bit<br />\r\nRAM:&nbsp;&nbsp; &nbsp;8 GB<br />\r\nBá»™ nhá»› trong:&nbsp;&nbsp; &nbsp;128 GB<br />\r\nTháº» SIM:<br />\r\n2 Nano SIM, Há»— trá»£ 4G<br />\r\nDung lÆ°á»£ng pin:&nbsp;&nbsp; &nbsp;3700 mAh, c&oacute; sáº¡c nhanh</p>\r\n', 'oppo-r17-pro-hot', 11000000, 'oppo-r17-pro.png', '2019-10-09', 1),
(52, 12, 'OPPO Reno', '<p>M&agrave;n h&igrave;nh:&nbsp;&nbsp; &nbsp;AMOLED, 6.4&quot;, Full HD+<br />\r\nHá»‡ Ä‘iá»u h&agrave;nh:&nbsp;&nbsp; &nbsp;Android 9.0 (Pie)<br />\r\nCamera sau:&nbsp;&nbsp; &nbsp;Ch&iacute;nh 48 MP &amp; Phá»¥ 5 MP<br />\r\nCamera trÆ°á»›c:&nbsp;&nbsp; &nbsp;16 MP<br />\r\nCPU:&nbsp;&nbsp; &nbsp;Snapdragon 710 8 nh&acirc;n 64-bit<br />\r\nRAM:&nbsp;&nbsp; &nbsp;6 GB<br />\r\nBá»™ nhá»› trong:&nbsp;&nbsp; &nbsp;256 GB<br />\r\nTháº» SIM:<br />\r\n2 Nano SIM, Há»— trá»£ 4G<br />\r\nDung lÆ°á»£ng pin:&nbsp;&nbsp; &nbsp;3765 mAh, c&oacute; sáº¡c nhanh</p>\r\n', 'oppo-reno', 14000000, 'oppo-reno.png', '2019-07-31', 40),
(53, 5, 'SamSung A9', '<p>M&agrave;n h&igrave;nh:&nbsp;&nbsp; &nbsp;Super AMOLED, 6.3&quot;, Full HD+<br />\r\nHá»‡ Ä‘iá»u h&agrave;nh:&nbsp;&nbsp; &nbsp;Android 8.0 (Oreo)<br />\r\nCamera sau:&nbsp;&nbsp; &nbsp;Ch&iacute;nh 24 MP &amp; Phá»¥ 10 MP, 8 MP, 5 MP<br />\r\nCamera trÆ°á»›c:&nbsp;&nbsp; &nbsp;24 MP<br />\r\nCPU:&nbsp;&nbsp; &nbsp;Qualcomm Snapdragon 660 8 nh&acirc;n<br />\r\nRAM:&nbsp;&nbsp; &nbsp;6 GB<br />\r\nBá»™ nhá»› trong:&nbsp;&nbsp; &nbsp;128 GB<br />\r\nTháº» nhá»›:&nbsp;&nbsp; &nbsp;MicroSD, há»— trá»£ tá»‘i Ä‘a 512 GB<br />\r\nTháº» SIM:&nbsp;&nbsp; &nbsp;2 Nano SIM, Há»— trá»£ 4G<br />\r\nDung lÆ°á»£ng pin:&nbsp;&nbsp; &nbsp;3800 mAh, c&oacute; sáº¡c nhanh</p>\r\n', 'samsung-a9', 17000000, 'samsung-a9_1570267402.png', '2019-10-09', 2),
(54, 5, 'SamSung A70 (KhuyenMai)', '<p>M&agrave;n h&igrave;nh:&nbsp;&nbsp; &nbsp;Super AMOLED, 6.7&quot;, Full HD+<br />\r\nHá»‡ Ä‘iá»u h&agrave;nh:&nbsp;&nbsp; &nbsp;Android 9.0 (Pie)<br />\r\nCamera sau:&nbsp;&nbsp; &nbsp;Ch&iacute;nh 32 MP &amp; Phá»¥ 8 MP, 5 MP<br />\r\nCamera trÆ°á»›c:&nbsp;&nbsp; &nbsp;32 MP<br />\r\nCPU:&nbsp;&nbsp; &nbsp;Snapdragon 675 8 nh&acirc;n 64-bit<br />\r\nRAM:&nbsp;&nbsp; &nbsp;6 GB<br />\r\nBá»™ nhá»› trong:&nbsp;&nbsp; &nbsp;128 GB<br />\r\nTháº» nhá»›:&nbsp;&nbsp; &nbsp;MicroSD, há»— trá»£ tá»‘i Ä‘a 512 GB<br />\r\nTháº» SIM:&nbsp;&nbsp; &nbsp;2 Nano SIM, Há»— trá»£ 4G<br />\r\nDung lÆ°á»£ng pin:&nbsp;&nbsp; &nbsp;4500 mAh, c&oacute; sáº¡c nhanh</p>\r\n', 'samsung-a70-khuyenmai', 19000000, 'samsung-a70.png', '2019-07-07', 30),
(55, 5, 'SamSung Note 10+ (HOT)', '<p>M&agrave;n h&igrave;nh:&nbsp;&nbsp; &nbsp;Dynamic AMOLED, 6.8&quot;, Quad HD+ (2K+)<br />\r\nHá»‡ Ä‘iá»u h&agrave;nh:&nbsp;&nbsp; &nbsp;Android 9.0 (Pie)<br />\r\nCamera sau:&nbsp;&nbsp; &nbsp;Ch&iacute;nh 12 MP &amp; Phá»¥ 12 MP, 16 MP, TOF 3D<br />\r\nCamera trÆ°á»›c:&nbsp;&nbsp; &nbsp;10 MP<br />\r\nCPU:&nbsp;&nbsp; &nbsp;Exynos 9825 8 nh&acirc;n 64-bit<br />\r\nRAM:&nbsp;&nbsp; &nbsp;12 GB<br />\r\nBá»™ nhá»› trong:&nbsp;&nbsp; &nbsp;256 GB<br />\r\nTháº» nhá»›:&nbsp;&nbsp; &nbsp;MicroSD, há»— trá»£ tá»‘i Ä‘a 1 TB<br />\r\nTháº» SIM:<br />\r\n2 SIM Nano (SIM 2 chung khe tháº» nhá»›), Há»— trá»£ 4G<br />\r\nDung lÆ°á»£ng pin:&nbsp;&nbsp; &nbsp;4300 mAh, c&oacute; sáº¡c nhanh</p>\r\n', 'samsung-note-10-hot', 24000000, 'samsung-note-10.png', '2019-10-10', 2),
(56, 7, 'Huewei Nova 3', '<p>Th&ocirc;ng tin m&agrave;n h&igrave;nh:&nbsp;&nbsp; &nbsp;LTPS LCD 6.3&quot;, Full HD+ (1080 x 2340 Pixels)<br />\r\nCPU:&nbsp;&nbsp; &nbsp;Full HD+ (1080 x 2340 Pixels)<br />\r\nRAM:&nbsp;&nbsp; &nbsp;6 GB<br />\r\nCamera sau:&nbsp;&nbsp; &nbsp;Dual Camera 24 MP + 16 MP<br />\r\nCamera trÆ°á»›c:&nbsp;&nbsp; &nbsp;Dual Camera 24 MP + 2 MP<br />\r\nBá»™ nhá»› trong:&nbsp;&nbsp; &nbsp;128 GB<br />\r\nTháº» nhá»› ngo&agrave;i:&nbsp;&nbsp; &nbsp;MicroSD, há»— trá»£ tá»‘i Ä‘a 256 GB<br />\r\nDung lÆ°á»£ng pin:&nbsp;&nbsp; &nbsp;3750 mAh<br />\r\nHá»‡ Ä‘iá»u h&agrave;nh:&nbsp;&nbsp; &nbsp;Android 8.1 (Oreo)</p>\r\n', 'huewei-nova-3', 8000000, 'huewei-nove-3.jpg', '2018-08-05', 30),
(57, 7, 'Huewei P30 (HOT)', '<p>Th&ocirc;ng tin m&agrave;n h&igrave;nh:&nbsp;&nbsp; &nbsp;LTPS LCD 6.3&quot;, Full HD+ (1080 x 2340 Pixels)<br />\r\nCPU:&nbsp;&nbsp; &nbsp;Full HD+ (1080 x 2340 Pixels)<br />\r\nRAM:&nbsp;&nbsp; &nbsp;6 GB<br />\r\nCamera sau:&nbsp;&nbsp; &nbsp;Dual Camera 24 MP + 16 MP<br />\r\nCamera trÆ°á»›c:&nbsp;&nbsp; &nbsp;Dual Camera 24 MP + 2 MP<br />\r\nBá»™ nhá»› trong:&nbsp;&nbsp; &nbsp;128 GB<br />\r\nTháº» nhá»› ngo&agrave;i:&nbsp;&nbsp; &nbsp;MicroSD, há»— trá»£ tá»‘i Ä‘a 256 GB<br />\r\nDung lÆ°á»£ng pin:&nbsp;&nbsp; &nbsp;3750 mAh<br />\r\nHá»‡ Ä‘iá»u h&agrave;nh:&nbsp;&nbsp; &nbsp;Android 8.1 (Oreo)</p>\r\n', 'huewei-p30-hot', 8000000, 'huewei-p30.jpg', '2019-07-03', 20),
(58, 7, 'Huewei P30 Pro (HOT)', '<p>Th&ocirc;ng tin m&agrave;n h&igrave;nh:&nbsp;&nbsp; &nbsp;LTPS LCD 6.47&quot;, Full HD+ (1080 x 2340 Pixels)<br />\r\nCPU:&nbsp;&nbsp; &nbsp;HiSilicon Kirin 980 (7 nm)<br />\r\nRAM:&nbsp;&nbsp; &nbsp;6 GB<br />\r\nCamera sau:&nbsp;&nbsp; &nbsp;3 camera<br />\r\nCamera trÆ°á»›c:&nbsp;&nbsp; &nbsp;32 MP<br />\r\nBá»™ nhá»› trong:&nbsp;&nbsp; &nbsp;128 GB<br />\r\nTháº» nhá»› ngo&agrave;i:&nbsp;&nbsp; &nbsp;MicroSD, há»— trá»£ tá»‘i Ä‘a 256 GB<br />\r\nDung lÆ°á»£ng pin:&nbsp;&nbsp; &nbsp;4200 mAh<br />\r\nHá»‡ Ä‘iá»u h&agrave;nh:&nbsp;&nbsp; &nbsp;Android 9.0 (Pie)</p>\r\n', 'huewei-p30-pro-hot', 10000000, 'huewei-p30-pro.jpg', '2019-10-09', 3),
(59, 11, 'Sony-Xperia-Z5', '<p>M&agrave;n h&igrave;nh :5.2 inch (1080 x 1920 pixels )<br />\r\nCamera :Ch&iacute;nh: 23.0 MP, phá»¥: 5.0 MP<br />\r\nBá»™ nhá»› trong :32 GB<br />\r\nRAM : 3GB<br />\r\nHá»‡ Ä‘iá»u h&agrave;nh :Android 5.1 Lollipop<br />\r\nChipset :Qualcomm MSM8994 Snapdragon 810<br />\r\nCPU :Quad-core 1.5 GHz &amp; Quad-core 2 GHz<br />\r\nGPU :Adreno 430<br />\r\nK&iacute;ch thÆ°á»›c :146 x 72 x 7.3 mm</p>\r\n', 'sony-xperia-z5', 2000000, 'sony-xperia-z5.jpg', '2019-10-08', 2),
(60, 11, 'Sony Xperia XZ2', '<p>M&agrave;n h&igrave;nh :5.8 inch&nbsp;4K<br />\r\nCamera :Ch&iacute;nh: 19.0 MP+ 12MP, phá»¥: 13 MP<br />\r\nBá»™ nhá»› trong :64 GB<br />\r\nRAM : 6GB<br />\r\nHá»‡ Ä‘iá»u h&agrave;nh :Android 9.0<br />\r\nChipset :Qualcomm&nbsp; Snapdragon 845<br />\r\nK&iacute;ch thÆ°á»›c :146 x 72 x 7.3 mm<br />\r\nPin :&nbsp;3540 MAH</p>\r\n', 'sony-xperia-xz2', 7500000, 'sony-xperia-xz2.jpg', '2019-10-08', 2),
(61, 8, 'Xiaomi Redmi 7 16GB', '<p><br />\r\nM&agrave;n h&igrave;nh:&nbsp;&nbsp; &nbsp;IPS LCD, 6.26&quot;, HD+<br />\r\nHá»‡ Ä‘iá»u h&agrave;nh:&nbsp;&nbsp; &nbsp;Android 9.0 (Pie)<br />\r\nCamera sau:&nbsp;&nbsp; &nbsp;Ch&iacute;nh 12 MP &amp; Phá»¥ 2 MP<br />\r\nCamera trÆ°á»›c:&nbsp;&nbsp; &nbsp;8 MP<br />\r\nCPU:&nbsp;&nbsp; &nbsp;Qualcomm Snapdragon 632 8 nh&acirc;n 64-bit<br />\r\nRAM:&nbsp;&nbsp; &nbsp;2 GB<br />\r\nBá»™ nhá»› trong:&nbsp;&nbsp; &nbsp;16 GB<br />\r\nTháº» nhá»›:&nbsp;&nbsp; &nbsp;MicroSD, há»— trá»£ tá»‘i Ä‘a 512 GB<br />\r\nTháº» SIM:<br />\r\n2 Nano SIM, Há»— trá»£ 4G</p>\r\n\r\n<p>Dung lÆ°á»£ng pin:&nbsp;&nbsp; &nbsp;4000 mAh</p>\r\n', 'xiaomi-redmi-7-16gb', 2400000, 'xiaomi-redmi-7-16gb.png', '2019-10-05', 5),
(62, 8, 'Xiaomi Redmi Note 7 64GB (KhuyenMai)', '<p><br />\r\nM&agrave;n h&igrave;nh:&nbsp;&nbsp; &nbsp;IPS LCD, 6.3&quot;, Full HD+<br />\r\nHá»‡ Ä‘iá»u h&agrave;nh:&nbsp;&nbsp; &nbsp;Android 9.0 (Pie)<br />\r\nCamera sau:&nbsp;&nbsp; &nbsp;Ch&iacute;nh 48 MP &amp; Phá»¥ 5 MP<br />\r\nCamera trÆ°á»›c:&nbsp;&nbsp; &nbsp;13 MP<br />\r\nCPU:&nbsp;&nbsp; &nbsp;Qualcomm Snapdragon 660 8 nh&acirc;n<br />\r\nRAM:&nbsp;&nbsp; &nbsp;4 GB<br />\r\nBá»™ nhá»› trong:&nbsp;&nbsp; &nbsp;64 GB<br />\r\nTháº» nhá»›:&nbsp;&nbsp; &nbsp;MicroSD, há»— trá»£ tá»‘i Ä‘a 256 GB<br />\r\nTháº» SIM:<br />\r\n2 SIM Nano (SIM 2 chung khe tháº» nhá»›), Há»— trá»£ 4G</p>\r\n\r\n<p>Dung lÆ°á»£ng pin:&nbsp;&nbsp; &nbsp;4000 mAh, c&oacute; sáº¡c nhanh</p>\r\n', 'xiaomi-redmi-note-7-64gb-khuyenmai', 4500000, 'xiaomi-redmi-note-7-64gb.png', '2019-10-09', 3),
(63, 14, 'BlackBerry KEYone (KhuyenMai)', '<p>M&agrave;n h&igrave;nh:&nbsp;&nbsp; &nbsp;IPS LCD, 4.5&quot;, Full HD<br />\r\nHá»‡ Ä‘iá»u h&agrave;nh:&nbsp;&nbsp; &nbsp;Android 7.1 (Nougat)<br />\r\nCamera sau:&nbsp;&nbsp; &nbsp;12 MP<br />\r\nCamera trÆ°á»›c:&nbsp;&nbsp; &nbsp;8 MP<br />\r\nCPU:&nbsp;&nbsp; &nbsp;Snapdragon 625 8 nh&acirc;n 64-bit<br />\r\nRAM:&nbsp;&nbsp; &nbsp;4 GB<br />\r\nBá»™ nhá»› trong:&nbsp;&nbsp; &nbsp;64 GB<br />\r\nTháº» nhá»›:&nbsp;&nbsp; &nbsp;MicroSD, há»— trá»£ tá»‘i Ä‘a 256 GB<br />\r\nTháº» SIM:<br />\r\n1 Nano SIM, Há»— trá»£ 4G<br />\r\nDung lÆ°á»£ng pin:&nbsp;&nbsp; &nbsp;3505 mAh, c&oacute; sáº¡c nhanh</p>\r\n', 'blackberry-keyone-khuyenmai', 8000000, 'blackberry-keyone.png', '2019-10-09', 1),
(64, 14, 'Vivo V11', '<p>M&agrave;n h&igrave;nh:&nbsp;&nbsp; &nbsp;IPS LCD, 6.3&quot;, Full HD+<br />\r\nHá»‡ Ä‘iá»u h&agrave;nh:&nbsp;&nbsp; &nbsp;Android 8.1 (Oreo)<br />\r\nCamera sau:&nbsp;&nbsp; &nbsp;Ch&iacute;nh 16 MP &amp; Phá»¥ 5 MP<br />\r\nCamera trÆ°á»›c:&nbsp;&nbsp; &nbsp;25 MP<br />\r\nCPU:&nbsp;&nbsp; &nbsp;MediaTek Helio P60 8 nh&acirc;n 64-bit<br />\r\nRAM:&nbsp;&nbsp; &nbsp;4 GB<br />\r\nBá»™ nhá»› trong:&nbsp;&nbsp; &nbsp;128 GB<br />\r\nTháº» nhá»›:&nbsp;&nbsp; &nbsp;MicroSD, há»— trá»£ tá»‘i Ä‘a 256 GB<br />\r\nTháº» SIM:<br />\r\n2 Nano SIM, Há»— trá»£ 4G</p>\r\n\r\n<p>Dung lÆ°á»£ng pin:&nbsp;&nbsp; &nbsp;3315 mAh, c&oacute; sáº¡c nhanh</p>\r\n', 'vivo-v11', 5000000, 'vivo-v11.png', '2019-10-09', 1),
(65, 14, 'Mobiistar Lai Zumbo S Lite', '<p>M&agrave;n h&igrave;nh:&nbsp;&nbsp; &nbsp;IPS LCD, 5.5&quot;, HD<br />\r\nHá»‡ Ä‘iá»u h&agrave;nh:&nbsp;&nbsp; &nbsp;Android 7.0 (Nougat)<br />\r\nCamera sau:&nbsp;&nbsp; &nbsp;8 MP<br />\r\nCamera trÆ°á»›c:&nbsp;&nbsp; &nbsp;5 MP<br />\r\nCPU:&nbsp;&nbsp; &nbsp;MT6737 4 nh&acirc;n<br />\r\nRAM:&nbsp;&nbsp; &nbsp;1 GB<br />\r\nBá»™ nhá»› trong:&nbsp;&nbsp; &nbsp;8 GB<br />\r\nTháº» nhá»›:&nbsp;&nbsp; &nbsp;MicroSD, há»— trá»£ tá»‘i Ä‘a 32 GB<br />\r\nTháº» SIM:<br />\r\n2 Micro SIM, Há»— trá»£ 4G<br />\r\nDung lÆ°á»£ng pin:&nbsp;&nbsp; &nbsp;4000 mAh</p>\r\n', 'mobiistar-lai-zumbo-s-lite', 2000000, 'mobiistar-lai-zumbo-s-lite.png', '2019-10-05', 8);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

DROP TABLE IF EXISTS `sales`;
CREATE TABLE IF NOT EXISTS `sales` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `pay_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `sales_date` date NOT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `user_id`, `pay_id`, `sales_date`, `address`) VALUES
(46, 'a@gmail.com', '23000000\r\n Ã', '2019-10-10', 'Nguyá»…n VÄƒn A\r\n01234\r\nSL: 1\r\niphone');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(200) NOT NULL,
  `password` varchar(60) NOT NULL,
  `type` int(1) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `contact_info` varchar(100) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `status` int(1) NOT NULL,
  `activate_code` varchar(15) NOT NULL,
  `reset_code` varchar(15) NOT NULL,
  `created_on` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `type`, `firstname`, `lastname`, `address`, `contact_info`, `photo`, `status`, `activate_code`, `reset_code`, `created_on`) VALUES
(1, 'admin@gmail.com', '$2y$10$I1J0chcRQo/YL0aqAtWkgOdl96E37eOBycrlrhL0bF7BeF7SHx78.', 1, '', 'admin', '', '', 'thanos1.jpg', 1, '', '', '2018-05-01'),
(34, 'huy@gmail.com', '$2y$10$TRWt/NYOl.WM3RswJoFpuuX6WbXf2QC8rN3wP2xNe.m.MVM4iYeHW', 0, 'tran', 'huy', 'qwe', '123654789', '621.jpg', 1, '1+2', '3', '2019-10-08'),
(35, 'truonghaiauto98@gmail.com', '$2y$10$XowZ5FtHZ/PMAlfhQDyUGOSR3lax52AXEbVmijwUUNhk6j0HmmMxC', 0, 'Nguyá»…n', 'Háº£i', '226 hoÃ  hÆ°ng, phÆ°á»ng 13 , quáº­n 10', '0869240108', 'atlantis-nebula.jpg', 1, 'code', 'code', '2019-10-09'),
(36, '123@gmail.com', '$2y$10$.v4WyguyDcRMIBgpsvGMKuv9BV.BfD0XHoDDFe1ZePgFbfe6CkwQ.', 0, 'ttt', 'aa', '123', '113', 'prod.KYCServiceNATIONAL_ID19026front.jpg', 1, 'ocslon', 'ocslon', '2019-10-09'),
(37, 'anh@gmail.com', '$2y$10$TgCigJCrNW/YHX10Mxc8DOuCRT/ysRL3hvTjLCnXHC6a46EAiRUvi', 0, 'ÄoÃ n', 'Anh', 'TP. Há»“ ChÃ­ Minh', '0147852369', 'ava demo3.jpg', 1, 'mÃ¨o', 'mÃ¨o', '2019-10-10'),
(38, 'a@gmail.com', '$2y$10$k.OLTiWAbeVY/3NJCpmyKu8NBLS4GfBm6tPEkFsjQgXogXDDUUvp.', 0, 'Nguyá»…n', 'VÄƒn A', 'HÃ  Ná»™i', '01234', 'ava demo1.jpg', 1, 'code', 'code', '2019-10-10');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
