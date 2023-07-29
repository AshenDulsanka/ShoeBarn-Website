-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 29, 2023 at 04:19 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shoebarn`
--

-- --------------------------------------------------------

--
-- Table structure for table `kids`
--

CREATE TABLE `kids` (
  `kidID` int(4) NOT NULL,
  `prodName` varchar(30) NOT NULL,
  `prodPicNameSmall` varchar(100) NOT NULL,
  `prodPicNameLarge` varchar(100) NOT NULL,
  `prodDescripShort` varchar(1000) DEFAULT NULL,
  `prodDescripLong` varchar(3000) DEFAULT NULL,
  `prodPrice` decimal(6,2) NOT NULL,
  `prodQuantity` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kids`
--

INSERT INTO `kids` (`kidID`, `prodName`, `prodPicNameSmall`, `prodPicNameLarge`, `prodDescripShort`, `prodDescripLong`, `prodPrice`, `prodQuantity`) VALUES
(1, 'Acer Aspire Vero', 'NikeAirForce1LE(1).png', 'NikeAirForce1LE(1).png', 'The Acer Aspire Vero is a fantastic option for eco-conscious buyers, as it’s made of recycled materials.', '\r\nIt’s no slouch in the performance department either given the specs.\r\n This laptop has an Intel Core i7-1195G7 CPU, Intel Iris Xe graphics, 16GB of RAM, and 512GB of NVMe SSD storage—a killer package for under $500. \r\nIt’s zippy enough for everyday tasks like watching Hulu, writing papers, browsing social media, and so on.\r\nThe 15.6-inch display should provide clean visuals thanks to the 1920×1080 resolution. This is an awesome deal for an everyday laptop.', '579.00', 8),
(2, 'Asus Zenbook', 'NikeForce1LE.png', 'NikeForce1LE.png', '\r\nThe Asus Zenbook OLED laptop is a fantastic machine for work or everyday use.', '\r\nIt features an Intel Core i5 CPU, Intel Iris Xe graphics, 8GB of RAM, and 256GB of SSD storage. \r\nIn other words, this laptop should be able to zip right through tasks like browsing the web, watching YouTube, spreadsheet work, and so on. \r\nThe 14-inch OLED display has a resolution of 2880×1800 and, according to Asus, a maximum brightness level of 400 nits. OLED displays tend to be more colorful, so you should expect a lovely picture. \r\nThe touchpad also doubles as a number pad, which is rather unique. This is an excellent deal and a great laptop for a college student or a young professional.', '549.00', 6),
(3, 'Samsung Chromebook', 'NikeTanjunFlyEase.png', 'NikeTanjunFlyEase.png', 'If you’re looking for a barebones machine, the Samsung Chromebook 4 is a good option. ', 'Inside, you’ll find an Intel Celeron N4020 CPU, Intel UHD Graphics 600, 4GB of RAM, and 64GB of eMMC storage. \r\nThat’s not a ton of power, but it’s enough for everyday tasks like checking e-mail and browsing the web.\r\n The display is on the smaller side at 11.6-inches and has a resolution of 1366×768.\r\n It’s not the sharpest picture we’ve ever seen on a Chromebook, but it’s fine for scrolling through social media and such.\r\n For a little over $100, it’s a good deal.', '125.00', 4);

-- --------------------------------------------------------

--
-- Table structure for table `mens`
--

CREATE TABLE `mens` (
  `menID` int(4) NOT NULL,
  `prodName` varchar(30) NOT NULL,
  `prodPicNameSmall` varchar(100) NOT NULL,
  `prodPicNameLarge` varchar(100) NOT NULL,
  `prodDescripShort` varchar(1000) DEFAULT NULL,
  `prodDescripLong` varchar(3000) DEFAULT NULL,
  `prodPrice` decimal(6,2) NOT NULL,
  `prodQuantity` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mens`
--

INSERT INTO `mens` (`menID`, `prodName`, `prodPicNameSmall`, `prodPicNameLarge`, `prodDescripShort`, `prodDescripLong`, `prodPrice`, `prodQuantity`) VALUES
(1, 'Air Jordan 7 Retro', 'AirJordan7Retro(1).png', 'AirJordan7Retro(1).png', 'The Acer Aspire Vero is a fantastic option for eco-conscious buyers, as it’s made of recycled materials.', '\r\nIt’s no slouch in the performance department either given the specs.\r\n This laptop has an Intel Core i7-1195G7 CPU, Intel Iris Xe graphics, 16GB of RAM, and 512GB of NVMe SSD storage—a killer package for under $500. \r\nIt’s zippy enough for everyday tasks like watching Hulu, writing papers, browsing social media, and so on.\r\nThe 15.6-inch display should provide clean visuals thanks to the 1920×1080 resolution. This is an awesome deal for an everyday laptop.', '579.00', 8),
(2, 'Nike Invincible 3 By You', 'NikeInvincible3ByYou(1).png', 'NikeInvincible3ByYou(1).png', '\r\nThe Asus Zenbook OLED laptop is a fantastic machine for work or everyday use.', '\r\nIt features an Intel Core i5 CPU, Intel Iris Xe graphics, 8GB of RAM, and 256GB of SSD storage. \r\nIn other words, this laptop should be able to zip right through tasks like browsing the web, watching YouTube, spreadsheet work, and so on. \r\nThe 14-inch OLED display has a resolution of 2880×1800 and, according to Asus, a maximum brightness level of 400 nits. OLED displays tend to be more colorful, so you should expect a lovely picture. \r\nThe touchpad also doubles as a number pad, which is rather unique. This is an excellent deal and a great laptop for a college student or a young professional.', '549.00', 6),
(3, 'Nike Dunk Low Premium', 'NikeDunkLowPremium(1).png', 'NikeDunkLowPremium(1).png', 'If you’re looking for a barebones machine, the Samsung Chromebook 4 is a good option. ', 'Inside, you’ll find an Intel Celeron N4020 CPU, Intel UHD Graphics 600, 4GB of RAM, and 64GB of eMMC storage. \r\nThat’s not a ton of power, but it’s enough for everyday tasks like checking e-mail and browsing the web.\r\n The display is on the smaller side at 11.6-inches and has a resolution of 1366×768.\r\n It’s not the sharpest picture we’ve ever seen on a Chromebook, but it’s fine for scrolling through social media and such.\r\n For a little over $100, it’s a good deal.', '125.00', 4);

-- --------------------------------------------------------

--
-- Table structure for table `woman`
--

CREATE TABLE `woman` (
  `womanID` int(4) NOT NULL,
  `prodName` varchar(30) NOT NULL,
  `prodPicNameSmall` varchar(100) NOT NULL,
  `prodPicNameLarge` varchar(100) NOT NULL,
  `prodDescripShort` varchar(1000) DEFAULT NULL,
  `prodDescripLong` varchar(3000) DEFAULT NULL,
  `prodPrice` decimal(6,2) NOT NULL,
  `prodQuantity` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `woman`
--

INSERT INTO `woman` (`womanID`, `prodName`, `prodPicNameSmall`, `prodPicNameLarge`, `prodDescripShort`, `prodDescripLong`, `prodPrice`, `prodQuantity`) VALUES
(1, 'Nike Pegasus 40 Premium', 'NikePegasus40Premium(1).png\r\n', 'NikePegasus40Premium(1).png', 'The Acer Aspire Vero is a fantastic option for eco-conscious buyers, as it’s made of recycled materials.', '\r\nIt’s no slouch in the performance department either given the specs.\r\n This laptop has an Intel Core i7-1195G7 CPU, Intel Iris Xe graphics, 16GB of RAM, and 512GB of NVMe SSD storage—a killer package for under $500. \r\nIt’s zippy enough for everyday tasks like watching Hulu, writing papers, browsing social media, and so on.\r\nThe 15.6-inch display should provide clean visuals thanks to the 1920×1080 resolution. This is an awesome deal for an everyday laptop.', '579.00', 8),
(2, 'Nike Pegasus Turbo', 'NikePegasusTurbo(1).png', 'NikePegasusTurbo(1).png', '\r\nThe Asus Zenbook OLED laptop is a fantastic machine for work or everyday use.', '\r\nIt features an Intel Core i5 CPU, Intel Iris Xe graphics, 8GB of RAM, and 256GB of SSD storage. \r\nIn other words, this laptop should be able to zip right through tasks like browsing the web, watching YouTube, spreadsheet work, and so on. \r\nThe 14-inch OLED display has a resolution of 2880×1800 and, according to Asus, a maximum brightness level of 400 nits. OLED displays tend to be more colorful, so you should expect a lovely picture. \r\nThe touchpad also doubles as a number pad, which is rather unique. This is an excellent deal and a great laptop for a college student or a young professional.', '549.00', 6),
(3, 'Nike Tech Hera', 'NikeTechHera(1).png', 'NikeTechHera(1).png', 'If you’re looking for a barebones machine, the Samsung Chromebook 4 is a good option. ', 'Inside, you’ll find an Intel Celeron N4020 CPU, Intel UHD Graphics 600, 4GB of RAM, and 64GB of eMMC storage. \r\nThat’s not a ton of power, but it’s enough for everyday tasks like checking e-mail and browsing the web.\r\n The display is on the smaller side at 11.6-inches and has a resolution of 1366×768.\r\n It’s not the sharpest picture we’ve ever seen on a Chromebook, but it’s fine for scrolling through social media and such.\r\n For a little over $100, it’s a good deal.', '125.00', 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kids`
--
ALTER TABLE `kids`
  ADD PRIMARY KEY (`kidID`);

--
-- Indexes for table `mens`
--
ALTER TABLE `mens`
  ADD PRIMARY KEY (`menID`);

--
-- Indexes for table `woman`
--
ALTER TABLE `woman`
  ADD PRIMARY KEY (`womanID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
