-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3309
-- Generation Time: Jan 31, 2023 at 05:58 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chocolate`
--

-- --------------------------------------------------------

--
-- Table structure for table `ferrerotb`
--

CREATE TABLE `ferrerotb` (
  `id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_price` float NOT NULL,
  `product_image` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ferrerotb`
--

INSERT INTO `ferrerotb` (`id`, `product_name`, `product_price`, `product_image`) VALUES
(1, 'Ferrero Rocher', 200, 0x2e2f696d616765732f4665727265726f2d526f636865722e6a7067),
(2, 'Ferrero Pocket Coffee', 450, 0x2e2f696d616765732f4665727265726f2d506f636b65742d436f666665652e6a7067),
(3, 'Ferrero Giotto', 300, 0x2e2f696d616765732f4665727265726f2d47696f74746f2e6a7067),
(4, 'Ferrero Raffaello', 460, 0x2e2f696d616765732f4665727265726f2d5261666661656c6c6f2e6a7067),
(5, 'Ferrero Rondnoir', 700, 0x2e2f696d616765732f6665727265726f2d726f6e646e6f69722e6a7067);

-- --------------------------------------------------------

--
-- Table structure for table `kandostb`
--

CREATE TABLE `kandostb` (
  `id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_price` float NOT NULL,
  `product_image` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kandostb`
--

INSERT INTO `kandostb` (`id`, `product_name`, `product_price`, `product_image`) VALUES
(1, 'Kandos Superblend Milk Chocolate', 650, 0x2e2f696d616765732f7375706572626c656e64206d696c6b2063686f636f6c6174652e6a706567),
(2, 'Kandos Superblend Fruit & Nut Chocolate', 450, 0x2e2f696d616765732f7375706572626c656e6420667275697420616e64206e75742063686f636f6c6174652e6a706567),
(3, 'Kandos Superblend Choco', 800, 0x2e2f696d616765732f737570657263686f636f2e6a706567),
(4, 'Kandos Choco Fingers', 1200, 0x2e2f696d616765732f6368636f66696e676572732e706e67),
(5, 'Kandos Cashew Nut Milk Chocolate', 520, 0x2e2f696d616765732f636173686577206e7574206d696c6b2063686f636f6c6174652e6a706567);

-- --------------------------------------------------------

--
-- Table structure for table `marstb`
--

CREATE TABLE `marstb` (
  `id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_price` float NOT NULL,
  `product_image` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `marstb`
--

INSERT INTO `marstb` (`id`, `product_name`, `product_price`, `product_image`) VALUES
(1, 'Mars Red', 150, 0x696d616765732f6d6172732d6261722d7265642e6a7067),
(2, 'Mars Lava', 200, 0x696d616765732f4d6172732d4c6176612e6a7067),
(3, 'Mars Ice Cream Bars', 990, 0x696d616765732f4d6172732d4963652d437265616d2d626172732e6a7067),
(4, 'Mars Planets', 350, 0x696d616765732f4d6172732d506c616e6574732e6a7067),
(5, 'Mars Honeycomb', 200, 0x696d616765732f6d6172735f686f6e6579636f6d622e6a7067),
(6, 'Mars Mix', 500, 0x696d616765732f6d6172735f6d69782e6a7067);

-- --------------------------------------------------------

--
-- Table structure for table `nestletb`
--

CREATE TABLE `nestletb` (
  `id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_price` float NOT NULL,
  `product_image` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nestletb`
--

INSERT INTO `nestletb` (`id`, `product_name`, `product_price`, `product_image`) VALUES
(1, 'Nestle Aero', 250, 0x2e2f696d616765732f4165726f2d312d6261722e6a7067),
(2, 'Nestle Butterfinger', 300, 0x2e2f696d616765732f62757474657266696e6765722e6a7067),
(3, 'Nestle Smarties', 700, 0x2e2f696d616765732f736d617274696573202e706e67),
(4, 'Nestle Kit Kat', 400, 0x2e2f696d616765732f4b6974204b61742e6a7067),
(5, 'Nestle Toll House', 460, 0x2e2f696d616765732f546f6c6c20486f7573652e6a7067);

-- --------------------------------------------------------

--
-- Table structure for table `new_registration`
--

CREATE TABLE `new_registration` (
  `Username` varchar(20) NOT NULL,
  `Password` varchar(20) NOT NULL,
  `Confirm_Password` varchar(20) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Address` varchar(50) NOT NULL,
  `Email` varchar(20) NOT NULL,
  `Phone_No` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `new_registration`
--

INSERT INTO `new_registration` (`Username`, `Password`, `Confirm_Password`, `Name`, `Address`, `Email`, `Phone_No`) VALUES
('xyz', '123', '', 'fdsff', 'fdfdf', 'fddsfdsf', 23124314),
('ss', 'sa', '', 'ss', 'ss', 'ss', 41),
('abc', '123', '123', 'Nisula Premaratne', 'Panadura', 'nisula.rap@gmail.com', 713347882);

-- --------------------------------------------------------

--
-- Table structure for table `producttb`
--

CREATE TABLE `producttb` (
  `id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_price` float NOT NULL,
  `product_image` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `producttb`
--

INSERT INTO `producttb` (`id`, `product_name`, `product_price`, `product_image`) VALUES
(1, 'Kandos Superblend Choco', 800, 0x2e2f696d616765732f737570657263686f636f2e6a706567),
(2, 'Kandos Choco Fingers', 1200, 0x2e2f696d616765732f6368636f66696e676572732e706e67),
(3, 'Toblerone White Chocolate', 600, 0x2e2f696d616765732f776869746563686f636f6c6174652e6a7067),
(4, 'Toblerone Dark Chocolate', 650, 0x2e2f696d616765732f6461726b636f686f6c6174652e6a7067),
(5, 'Kandos Superblend Fruit & Nut Chocolate', 450, 0x2e2f696d616765732f7375706572626c656e6420667275697420616e64206e75742063686f636f6c6174652e6a706567),
(6, 'Nestle Aero', 350, 0x2e2f696d616765732f4165726f2d312d6261722e6a7067),
(7, 'Ritzbury Chocolate Fingers', 110, 0x2e2f696d616765732f63686f636f6c6174652066696e676572732e6a706567),
(8, 'Kandos Cashew Nut Milk Chocolate', 520, 0x2e2f696d616765732f636173686577206e7574206d696c6b2063686f636f6c6174652e6a706567),
(9, 'Snickers Original', 150, 0x696d616765732f536e69636b6572732d4f726967696e616c2e6a7067),
(10, 'Mars Planets', 350, 0x696d616765732f4d6172732d506c616e6574732e6a7067),
(11, 'Mars Lava', 200, 0x696d616765732f4d6172732d4c6176612e6a7067),
(12, 'Mars Ice Cream Bars', 990, 0x696d616765732f4d6172732d4963652d437265616d2d626172732e6a7067),
(13, 'Toblerone Tobelle', 1200, 0x696d616765732f746f626c65726f6e6520746f62656c6c652e6a7067),
(14, 'Ferrero Pocket Coffee', 450, 0x696d616765732f4665727265726f2d506f636b65742d436f666665652e6a7067),
(15, 'Kandos Superblend Milk Chocolate', 650, 0x696d616765732f7375706572626c656e64206d696c6b2063686f636f6c6174652e6a706567),
(16, 'Ritzbury Choco-mo', 450, 0x696d616765732f43686f636f2d6d6f2e6a7067),
(17, 'Nestle Smarties', 700, 0x696d616765732f736d617274696573202e706e67),
(18, 'Toblerone Chocolate - MILK', 520, 0x696d616765732f746f626c65726f6e652063686f636f6c617465206d696c6b2e6a7067),
(19, 'Nestle Kit Kat', 400, 0x696d616765732f4b6974204b61742e6a7067),
(20, 'Ferrero Raffaello', 460, 0x696d616765732f4665727265726f2d5261666661656c6c6f2e6a7067),
(21, 'Mars Honeycomb', 200, 0x696d616765732f6d6172735f686f6e6579636f6d622e6a7067),
(22, 'Nestle Butterfinger', 300, 0x696d616765732f62757474657266696e6765722e6a7067),
(23, 'Ferrero Rondnoir', 700, 0x696d616765732f6665727265726f2d726f6e646e6f69722e6a7067),
(24, 'Ritzbury Revello Milk Chocolate', 230, 0x696d616765732f526576656c6c6f2d4d696c6b2e6a7067),
(25, 'Ferrero Rocher', 200, 0x696d616765732f4665727265726f2d526f636865722e6a7067),
(26, 'Nestle Toll House', 460, 0x696d616765732f546f6c6c20486f7573652e6a7067),
(27, 'Ritzbury Cashew Chocolate', 200, 0x696d616765732f7269747a62757279206361736865772063686f636f6c6174652e706e67),
(28, 'Ferrero Giotto', 300, 0x696d616765732f4665727265726f2d47696f74746f2e6a7067),
(29, 'Ritzbury Revello Fruit & Nut Chocolate', 250, 0x696d616765732f726576656c6c6f20667275697420616e64206e75742e6a7067),
(30, 'Ritzbury Chunky Choc', 350, 0x696d616765732f6368756e6b792063686f632e6a7067),
(31, 'Snickers Ice cream', 1200, 0x696d616765732f536e69636b6572732049636520437265616d2e6a7067),
(32, 'Snickers Almond', 290, 0x696d616765732f536e69636b65727320416c6d6f6e642e6a7067),
(33, 'Mars Mix', 500, 0x696d616765732f6d6172735f6d69782e6a7067),
(34, 'Snickers white', 200, 0x696d616765732f536e69636b6572732d57686974652e6a7067),
(35, 'Snickers Crisper', 380, 0x696d616765732f536e69636b6572732d437269737065722e6a7067),
(36, 'Mars Red', 150, 0x696d616765732f6d6172732d6261722d7265642e6a7067);

-- --------------------------------------------------------

--
-- Table structure for table `ritzburytb`
--

CREATE TABLE `ritzburytb` (
  `id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_price` float NOT NULL,
  `product_image` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ritzburytb`
--

INSERT INTO `ritzburytb` (`id`, `product_name`, `product_price`, `product_image`) VALUES
(1, 'Ritzbury Chocolate Fingers', 110, 0x696d616765732f63686f636f6c6174652066696e676572732e6a706567),
(2, 'Ritzbury Choco-mo', 450, 0x696d616765732f43686f636f2d6d6f2e6a7067),
(3, 'Ritzbury Revello Milk Chocolate', 230, 0x696d616765732f526576656c6c6f2d4d696c6b2e6a7067),
(4, 'Ritzbury Cashew Chocolate', 200, 0x696d616765732f7269747a62757279206361736865772063686f636f6c6174652e706e67),
(5, 'Ritzbury Revello Fruit & Nuts Chocolate', 250, 0x696d616765732f726576656c6c6f20667275697420616e64206e75742e6a7067),
(6, 'Ritzbury Chunky Choc', 350, 0x696d616765732f6368756e6b792063686f632e6a7067);

-- --------------------------------------------------------

--
-- Table structure for table `snickerstb`
--

CREATE TABLE `snickerstb` (
  `id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_price` float NOT NULL,
  `product_image` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `snickerstb`
--

INSERT INTO `snickerstb` (`id`, `product_name`, `product_price`, `product_image`) VALUES
(1, 'Snickers Crisper', 380, 0x696d616765732f536e69636b6572732d437269737065722e6a7067),
(2, 'Snickers Almond', 290, 0x696d616765732f536e69636b65727320416c6d6f6e642e6a7067),
(3, 'Snickers Original', 150, 0x696d616765732f536e69636b6572732d4f726967696e616c2e6a7067),
(4, 'Snickers Ice cream', 1200, 0x696d616765732f536e69636b6572732049636520437265616d2e6a7067),
(5, 'Snickers white', 200, 0x696d616765732f536e69636b6572732d57686974652e6a7067);

-- --------------------------------------------------------

--
-- Table structure for table `tobleronetb`
--

CREATE TABLE `tobleronetb` (
  `id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_price` float NOT NULL,
  `product_image` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tobleronetb`
--

INSERT INTO `tobleronetb` (`id`, `product_name`, `product_price`, `product_image`) VALUES
(1, 'Toblerone Dark Chocolate', 650, 0x696d616765732f6461726b636f686f6c6174652e6a7067),
(2, 'Toblerone White Chocolate', 600, 0x696d616765732f776869746563686f636f6c6174652e6a7067),
(3, 'Toblerone Tobelle', 1200, 0x696d616765732f746f626c65726f6e6520746f62656c6c652e6a7067),
(4, 'Toblerone Chocolate - MILK', 520, 0x696d616765732f746f626c65726f6e652063686f636f6c617465206d696c6b2e6a7067);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `producttb`
--
ALTER TABLE `producttb`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
