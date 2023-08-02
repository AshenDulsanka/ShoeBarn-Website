-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 02, 2023 at 03:57 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

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
  `prodPrice` decimal(6,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kids`
--

INSERT INTO `kids` (`kidID`, `prodName`, `prodPicNameSmall`, `prodPicNameLarge`, `prodDescripShort`, `prodDescripLong`, `prodPrice`) VALUES
(1, 'Nike AirForce 1 LE', 'NikeAirForce1LE(1).png', 'NikeAirForce1LE(1).png', 'This is what legends are made of. The Nike Air Force 1 LE brings back the \'82 hardwood icon into an everyday style in all-white or all-black. The durability, feel and Air are still there for those who love a classic.', 'The Nike Air Force 1 LE is a classic basketball shoe that has been updated with modern details. It features a premium leather upper, a hidden Air-sole unit for cushioning, and a rubber sole for traction. The Air Force 1 LE is available in a variety of colors and styles, making it a versatile shoe that can be dressed up or down. The Nike Air Force 1 LE is a great choice for anyone looking for a classic, comfortable, and stylish basketball shoe. It is also a popular choice for everyday wear, as it can be dressed up or down to suit any occasion.', '1199.00'),
(2, 'Nike Force 1 LE', 'NikeForce1LE.png', 'NikeForce1LE.png', 'This is what legends are made of. The Nike Force 1 LE brings back the \'82 hardwood icon into an everyday style in all-white or all-black. Let the durability, cushioning, and feel introduce little feet to a classic.', 'The Nike Force 1 LE is a classic basketball shoe that has been updated with modern details. It features a durable leather upper, a comfortable Air-Sole unit, and a rubber outsole for traction. The Force 1 LE is available in a variety of colors and styles, making it a versatile shoe that can be worn for everyday wear or for special occasions. The Nike Force 1 LE is a great choice for people who are looking for a classic, comfortable, and versatile sneaker. It is perfect for everyday wear, but it can also be dressed up for special occasions.', '1049.00'),
(3, 'Nike Tanjun Fly Ease', 'NikeTanjunFlyEase.png', 'NikeTanjunFlyEase.png', 'Forget the hype. The Tanjun EasyOn brings you simplicity at its best. Its hidden EasyOn entry system lets you easily get them on and off—without using your hands. The lightweight, airy design makes it a go-to for daily wear.', 'The Nike Tanjun FlyEase is a simple and comfortable sneaker that is easy to get on and off. It features a hidden FlyEase entry system that allows you to step into the shoe and pull a tab to secure it. The upper is made of a lightweight and breathable mesh that provides a snug and secure fit. The Tanjun FlyEase also has a cushioned midsole and a rubber outsole for comfort and traction.', '949.00');

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
  `prodPrice` decimal(6,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mens`
--

INSERT INTO `mens` (`menID`, `prodName`, `prodPicNameSmall`, `prodPicNameLarge`, `prodDescripShort`, `prodDescripLong`, `prodPrice`) VALUES
(1, 'Air Jordan 7 Retro', 'AirJordan7Retro(1).png', 'AirJordan7Retro(1).png', 'Inspired by the shoe originally worn by MJ during the \'92 season and summer of basketball, the Air Jordan 7 Retro revives its championship legacy for a new generation of sneakerheads.', 'The Air Jordan 7 Retro is a basketball shoe designed by Tinker Hatfield and released in 1992. It was the seventh signature shoe for Michael Jordan and was worn by him during the 1992 NBA Finals, when he led the Chicago Bulls to their second consecutive championship.\r\n\r\nThe Air Jordan 7 Retro features a full-length Nike Air unit in the midsole for cushioning, as well as a leather and textile upper. The shoe has a high-cut collar for ankle support and a rubber outsole for traction.', '8999.00'),
(2, 'Nike Invincible 3 By You', 'NikeInvincible3ByYou(1).png', 'NikeInvincible3ByYou(1).png', 'The Invincible Run 3 is a super cushioned running shoe that will keep you feeling fresh mile after mile. It\'s springy and bouncy, and you can customize the look to match your personal style.\r\n\r\n', 'The Invincible Run 3 sports a slab of thick cushioning to help you stay on your feet today, tomorrow and beyond. It’s super springy and bouncy, so that you can propel down your preferred path and come back for your next run feeling ready and reinvigorated. Once you handpick your personal touches from the upper to the midsole, you’ll look as unbeatable as you feel on your feet.', '6999.00'),
(3, 'Nike Dunk Low Premium', 'NikeDunkLowPremium(1).png', 'NikeDunkLowPremium(1).png', 'The Dunk Low \"Head 2 Head\" is a limited-edition sneaker that combines elements from Japan\'s most iconic sneaker releases. It features a snake and croc-print leather upper, vintage suede, and a nod to the Air Max 90 \"Escape.\"', 'From 16 to 1, the \"CO.JP Tournament\" pitted Japan\'s most iconic sneaker releases from the \'90s and early noughties against each other. Combing prominent elements from the top contenders, this design delivers a rare look at what it means to be the best. Colours nod to the coveted Air Max 90 \"Escape\", snake and croc-print leather riff off the competition\'s AF-1 and always-classic vintage suede ups your game. Signed with the Nike Limited Edition Logo, your look is certified legit. Pass the crown and welcome the Dunk Low \"Head 2 Head\".', '9499.00');

-- --------------------------------------------------------

--
-- Table structure for table `orderdetails`
--

CREATE TABLE `orderdetails` (
  `fullname` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `quantity` varchar(1000) NOT NULL,
  `address` varchar(5000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
  `prodPrice` decimal(6,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `woman`
--

INSERT INTO `woman` (`womanID`, `prodName`, `prodPicNameSmall`, `prodPicNameLarge`, `prodDescripShort`, `prodDescripLong`, `prodPrice`) VALUES
(1, 'Nike Pegasus 40 Premium', 'NikePegasus40Premium(1).png\r\n', 'NikePegasus40Premium(1).png', 'The Nike Pegasus 39 is a comfortable and responsive running shoe that is perfect for any distance. It has improved comfort in the arch and toes, and it celebrates the Pegasus\' history with Swoosh logos from previous models.', 'A springy ride for any run, the Peg\'s familiar, just-for-you feel returns to help you accomplish your goals. This version has the same responsiveness and neutral support you love but with improved comfort in those sensitive areas of your foot, like the arch and toes. Whether you\'re logging long marathon miles, squeezing in a speed session before the sun goes down or hopping into a spontaneous group jaunt, it\'s still the established road runner you can put your faith in, day after day, run after run.', '4799.00'),
(2, 'Nike Pegasus Turbo', 'NikePegasusTurbo(1).png', 'NikePegasusTurbo(1).png', 'This vibrantly bold, asymmetrical running shoe is perfect for pushing your tempo and achieving your personal best. ', 'Let this esteemed stallion help you log the hard miles. Complete with lighter, responsive foam and a feathery upper, this motley-colored mare helps you increase tempo without sacrificing comfort as you push toward a personal best. This vibrantly bold, asymmetrical design is all about celebrating your mixing and matching magnificence for the miles ahead.', '7499.00'),
(3, 'Nike Tech Hera', 'NikeTechHera(1).png', 'NikeTechHera(1).png', 'The Tech Hera is a chunky sneaker with a wavy lifted midsole and suede accents. It is comfortable and durable, perfect for everyday wear.', 'The Tech Hera is here to fulfill all of your chunky sneaker wishes. The wavy lifted midsole and suede accents level up your look while keeping you comfortable. Its durable design holds up beautifully to everyday wear—which is perfect because you\'ll definitely want to wear these every day.', '9199.00');

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
