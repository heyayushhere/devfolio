-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 19, 2023 at 12:49 PM
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
-- Database: `cart`
--

-- --------------------------------------------------------

--
-- Table structure for table `ayurveda`
--

CREATE TABLE `ayurveda` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ayurveda`
--

INSERT INTO `ayurveda` (`id`, `name`, `price`, `image`) VALUES
(1, 'Dabur Giloy Neem Tulsi Juice:', '179', 'giloyneem.jpg'),
(2, 'Gynoveda Constipation Relief Medicine', '400', 'ayurveda.jpg'),
(3, 'Kesh King hair oil', '261', 'keshking.jpg'),
(4, 'DIVYA SWASARI PRAVAHI 250 ML', '74', 'ayu1.jpg'),
(5, 'PATANJALI ROGAN BADAM SHIRIN ', '154', 'ayu2.jpg'),
(6, 'PATANJALI BALM 25 G', '56', 'ayu3.jpg'),
(7, 'PATANJALI SPECIAL CHYAWANPRASH ', '288', 'ayu4.jpg'),
(8, 'DIVYA GILOY KWATH', '40', 'ayu5.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `band`
--

CREATE TABLE `band` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `band`
--

INSERT INTO `band` (`id`, `name`, `price`, `image`) VALUES
(1, 'Bandai VITAL BRACELET ', '3200', 'vitalband.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `quantity` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `name`, `price`, `image`, `quantity`) VALUES
(36, 'Baby Skincare Wipes', '200', '72s_1.jpg', '1'),
(37, 'Baby Powder', '350', '600g_powder.jpg', '1'),
(39, ' Newborn Head-To-Toe Bath', '350', 'newborn.png', '1'),
(40, 'johnsons-clean-fresh-shampoo-front', '260', 'johnsons-clean-fresh-shampoo-front.jpg', '1'),
(41, 'Dabur Giloy Neem Tulsi Juice:', '179', 'giloyneem.jpg', '1');

-- --------------------------------------------------------

--
-- Table structure for table `drink`
--

CREATE TABLE `drink` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `drink`
--

INSERT INTO `drink` (`id`, `name`, `price`, `image`) VALUES
(1, 'Sting Energy Drink', '35', 'stingdrink.jpg'),
(2, 'Red Bull Energy Drink', '135', 'drinks.jpg'),
(3, 'Ocean Energy Drink ', '390', 'drinkss.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `elder`
--

CREATE TABLE `elder` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `elder`
--

INSERT INTO `elder` (`id`, `name`, `price`, `image`) VALUES
(1, 'neckband', '550', 'neckband.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `h&d`
--

CREATE TABLE `h&d` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `h&d`
--

INSERT INTO `h&d` (`id`, `name`, `price`, `image`) VALUES
(1, 'Dettol liquid handwash', '190', 'dettolhw.jpg'),
(4, 'dettol liquid disinfectant', '170', 'handwash.jpg'),
(5, 'palomolive natural black', '99', 'palmo.jpg'),
(6, 'Sting Energy Drink', '35', 'stingdrink.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `med`
--

CREATE TABLE `med` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `med`
--

INSERT INTO `med` (`id`, `name`, `price`, `image`) VALUES
(1, 'Combiflam - Strip ', '40', '614c-6Ya4FL._SL1500_.jpg'),
(2, 'Crocin 650 ', '25', 'crocin.jpg'),
(3, 'Revital H for Woman ', '288', 'revital.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `nut`
--

CREATE TABLE `nut` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nut`
--

INSERT INTO `nut` (`id`, `name`, `price`, `image`) VALUES
(1, 'D4DIET- DIET PROTEIN MIX', '150', 'diethealthy.jpg'),
(2, 'Yogabar Multigrain Energy Bars', '370', 'eldercare.jpg'),
(3, 'True Elements Antioxidant Mix Seeds', '145', 'antioxiadant.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `number` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `method` varchar(255) NOT NULL,
  `flat` varchar(255) NOT NULL,
  `street` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `pin` varchar(255) NOT NULL,
  `total_products` varchar(255) NOT NULL,
  `total_price` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `name`, `number`, `email`, `method`, `flat`, `street`, `city`, `state`, `country`, `pin`, `total_products`, `total_price`) VALUES
(1, 'mahi', '7788669955', 'mahinazir@gmail.com', 'cash on delivery', '507A', '', 'Delhi', 'new delhi', 'India', '110019', '', '0'),
(2, 'mahi', '7788669955', 'mahinazir@gmail.com', 'cash on delivery', '507A', '', 'Delhi', 'new delhi', 'India', '110019', '', '0'),
(3, 'mahi', '7788669955', 'mahinazir@gmail.com', 'cash on delivery', '507A', '', 'Delhi', 'new delhi', 'India', '110019', '', '0'),
(4, 'mahi', '7788669955', 'mahinazir@gmail.com', 'cash on delivery', '507A', '', 'Delhi', 'new delhi', 'India', '110019', '', '0'),
(5, 'mahi', '7788669955', 'mahinazir@gmail.com', 'cash on delivery', '507A', '34', 'Delhi', 'new delhi', 'India', '110019', '', '0'),
(6, 'mahi', '7788669955', 'mahinazir@gmail.com', 'cash on delivery', '507A', '23', 'Delhi', 'new delhi', 'India', '110019', 'fry chiken (1 ), noodle (2 ), burger (1 )', '960'),
(7, 'mahi', '7788669955', 'mahinazir@gmail.com', 'cash on delivery', '507A', '507A', 'Delhi', 'new delhi', 'India', '110019', '', '0'),
(8, 'mahi', '7788669955', 'mahinazir@gmail.com', 'cash on delivery', '507A', '45', 'Delhi', 'new delhi', 'India', '110019', '', '0'),
(9, 'mahi', '7788669955', 'mahinazir@gmail.com', 'cash on delivery', '507A', '45', 'Delhi', 'new delhi', 'India', '110019', 'fry chiken (1 ), noodle (2 ), burger (1 )', '960'),
(10, 'mahi', '7788669955', 'mahinazir@gmail.com', 'cash on delivery', '507A', '45', 'Delhi', 'new delhi', 'India', '110019', '', '0'),
(11, 'mahi', '7788669955', 'mahinazir@gmail.com', 'cash on delivery', '507A', '45', 'Delhi', 'new delhi', 'India', '110019', 'fry chiken (1 ), noodle (2 ), burger (1 )', '960'),
(12, 'mahi', '7788669955', 'mahinazir@gmail.com', 'cash on delivery', '507A', '507A', 'Delhi', 'new delhi', 'India', '110019', 'noodle (2 ), burger (1 )', '460'),
(13, 'mahi', '7788669955', 'mahinazir@gmail.com', 'cash on delivery', '507A', '34', 'Delhi', 'new delhi', 'India', '110019', 'chiken (2 ), fish fry (3 ), burger (1 )', '963'),
(14, 'aahil', '7788669955', 'mahinazir@gmail.com', 'cash on delivery', '678', '80', 'Delhi', 'new delhi', 'India', '110019', 'fish fry (3 ), burger (1 )', '273'),
(15, 'Ayush Jha', '4564564562', 'ayushjha602@gmail.com', 'cash on delivery', '11', 'ss', 'dd', 'sss', 'ww', '123456', 'Baby Powder (4 ), johnsons-clean-fresh-shampoo-front (5 )', '2'),
(16, 'Ayush Jha', '4564564562', 'ayushjha602@gmail.com', 'cash on delivery', '11', 'ss', 'dd', 'sss', 'ww', '123456', 'Baby Powder (4 ), johnsons-clean-fresh-shampoo-front (5 )', '2'),
(17, 'idkk', '455555555555', 'ayushjha602@gmail.com', 'cash on delivery', '11', 'ss', 'dd', 'sss', 'ww', '394210', 'Baby Powder (4 ), johnsons-clean-fresh-shampoo-front (5 )', '2'),
(18, 'heloo', '5444', 'happypeople@gmail.com', 'cash on delivery', '11', 'KARADWA', 'dd', 'sss', 'ww', '394210', 'Baby Powder (4 ), johnsons-clean-fresh-shampoo-front (5 )', '2'),
(19, 'heloo', '1', 'happypeople@gmail.com', 'cash on delivery', '11', 'KARADWA', 'dd', 'sss', 'i', '123456', 'Baby Powder (5 ), johnsons-clean-fresh-shampoo-front (6 )', '2'),
(20, 'heloo', '1', 'happypeople@gmail.com', 'cash on delivery', '11', 'KARADWA', 'dd', 'sss', 'i', '123456', 'Baby Powder (5 ), johnsons-clean-fresh-shampoo-front (6 )', '2'),
(21, 'heloo', '1', 'traun@gmail.com', 'credit card', '11', 'ss', 'dd', 'f', 'f', '12', 'Baby Powder (5 ), johnsons-clean-fresh-shampoo-front (6 )', '2'),
(22, 'idkk', '777', 'happypeople@gmail.com', 'cash on delivery', '1', 'w1', 'w', 'w', 'w', '1223', 'Baby Powder (5 ), johnsons-clean-fresh-shampoo-front (6 )', '2'),
(23, 'testing', '77', 'ayushjha602@gmail.com', 'cash on delivery', '44', '44', '44', 'k', 'jj', '122', 'Baby Powder (5 ), johnsons-clean-fresh-shampoo-front (6 )', '2'),
(24, 'idkk', '777', 'happypeople@gmail.com', 'cash on delivery', '1', 'w1', 'w', 'w', 'w', '1223', 'Baby Powder (5 ), johnsons-clean-fresh-shampoo-front (6 )', '2'),
(25, 'idkk', '777', 'happypeople@gmail.com', 'cash on delivery', '1', 'w1', 'w', 'w', 'w', '1223', 'Baby Powder (5 ), johnsons-clean-fresh-shampoo-front (6 )', '2'),
(26, 'idkk', '777', 'happypeople@gmail.com', 'cash on delivery', '1', 'w1', 'w', 'w', 'w', '1223', 'Baby Powder (5 ), johnsons-clean-fresh-shampoo-front (6 )', '2'),
(27, 'idkk', '777', 'happypeople@gmail.com', 'cash on delivery', '1', 'w1', 'w', 'w', 'w', '1223', 'Baby Powder (5 ), johnsons-clean-fresh-shampoo-front (6 )', '2'),
(28, 'testing', '122', 'q@gmail', 'cash on delivery', '44', 'a', 'w', 'w', 'w', '1', 'Baby Powder (1 ), johnsons-clean-fresh-shampoo-front (1 ),  Newborn Head-To-Toe Bath (1 ), herbal (1 )', '1015'),
(29, 'idkk', '12', 'test@gmail.com', 'cash on delivery', '11', 'w1', 'q', 'w', 'q', '123', 'Baby Powder (1 ), johnsons-clean-fresh-shampoo-front (1 ),  Newborn Head-To-Toe Bath (1 ), herbal (1 )', '1015'),
(30, 'idkk', '12', 'test@gmail.com', 'cash on delivery', '11', 'w1', 'q', 'w', 'q', '123', 'Baby Powder (1 ), johnsons-clean-fresh-shampoo-front (1 ),  Newborn Head-To-Toe Bath (1 ), herbal (1 )', '1015'),
(31, 'idkk', '12', 'test@gmail.com', 'cash on delivery', '11', 'w1', 'q', 'w', 'q', '123', 'Baby Powder (1 ), johnsons-clean-fresh-shampoo-front (1 ),  Newborn Head-To-Toe Bath (1 ), herbal (1 )', '1015'),
(32, 'idkk', '12', 'test@gmail.com', 'cash on delivery', '11', 'w1', 'q', 'w', 'q', '123', 'Baby Powder (1 ), johnsons-clean-fresh-shampoo-front (1 ),  Newborn Head-To-Toe Bath (1 ), herbal (1 )', '1015'),
(33, 'heloo', '1', 'traun@gmail.com', 'credit card', '11', 'ss', 'dd', 'f', 'f', '12', 'Baby Powder (1 ), johnsons-clean-fresh-shampoo-front (1 ),  Newborn Head-To-Toe Bath (1 ), herbal (1 )', '1015'),
(34, 'heloo', '1', 'traun@gmail.com', 'credit card', '11', 'ss', 'dd', 'f', 'f', '12', 'Baby Powder (1 ), johnsons-clean-fresh-shampoo-front (1 ),  Newborn Head-To-Toe Bath (1 ), herbal (1 )', '1015'),
(35, 'heloo', '1', 'happypeople@gmail.com', 'cash on delivery', '1', 'a', 'a', 'a', 'a', '121', 'Baby Powder (1 ), johnsons-clean-fresh-shampoo-front (1 ),  Newborn Head-To-Toe Bath (1 ), herbal (1 )', '1015'),
(36, 'heloo', '1', 'happypeople@gmail.com', 'cash on delivery', '1', 'a', 'a', 'a', 'a', '121', 'Baby Powder (1 ), johnsons-clean-fresh-shampoo-front (1 ),  Newborn Head-To-Toe Bath (1 ), herbal (1 )', '1015'),
(37, 'heloo', '1', 'happypeople@gmail.com', 'cash on delivery', '1', 'a', 'a', 'a', 'a', '121', 'Baby Powder (1 ), johnsons-clean-fresh-shampoo-front (1 ),  Newborn Head-To-Toe Bath (1 ), herbal (1 )', '1015'),
(38, 'jaydeep', '77777', 'iamhero@gmail.com', 'cash on delivery', '1', '2', 'q', 'q', 'q', '1', 'Baby Skincare Wipes (1 ), Baby Powder (1 ), herbal (1 )', '605'),
(39, 'vaishnavi', '8777777777', 'vaishnavishripati9804@gmail.com', 'cash on delivery', '1', '1', 'q', 'q', 'q', '1', 'Baby Skincare Wipes (1 ), Baby Powder (1 ),  Newborn Head-To-Toe Bath (1 ), johnsons-clean-fresh-shampoo-front (1 )', '1160'),
(40, 'vaishnavi', '8777777777', 'vaishnavishripati9804@gmail.com', 'cash on delivery', '1', '1', 'q', 'q', 'q', '1', 'Baby Skincare Wipes (1 ), Baby Powder (1 ),  Newborn Head-To-Toe Bath (1 ), johnsons-clean-fresh-shampoo-front (1 )', '1160'),
(41, 'vaishnavi', '8777777777', 'vaishnavishripati9804@gmail.com', 'cash on delivery', '1', '1', 'q', 'q', 'q', '1', 'Baby Skincare Wipes (1 ), Baby Powder (1 ),  Newborn Head-To-Toe Bath (1 ), johnsons-clean-fresh-shampoo-front (1 )', '1160'),
(42, 'vaishnavi', '8777777777', 'vaishnavishripati9804@gmail.com', 'cash on delivery', '1', '1', 'q', 'q', 'q', '1', 'Baby Skincare Wipes (1 ), Baby Powder (1 ),  Newborn Head-To-Toe Bath (1 ), johnsons-clean-fresh-shampoo-front (1 )', '1160');

-- --------------------------------------------------------

--
-- Table structure for table `p1`
--

CREATE TABLE `p1` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `p1`
--

INSERT INTO `p1` (`id`, `name`, `price`, `image`) VALUES
(4, '	\r\nPONDS Pure Detox Anti-Pollution Purity Face wash', '35', 'sk1.jpg\r\n'),
(5, 'Ponds Cold Cream', '94', 'sk2.jpg'),
(6, 'Ponds triple vitamin moisturising body lotion', '239', 'sk3.jpg\r\n'),
(7, 'Himalaya Herbals Purifying Neem Face Wash', '70', 'sk4.jpg\r\n'),
(8, 'Himalaya Herbals Fairness Kesar Face Pack', '115', 'sk5.jpg'),
(9, 'Himalaya Herbals Nourishing Skin Cream', '95', 'sk6.jpg'),
(10, 'Glow & Lovely Advanced Multivitamin Face Cream', '200', 'sk7.jpg'),
(11, 'LAKMÉ Absolute Perfect Radiance Skin Lightening Facewash', '175', 'sk8.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `pc2`
--

CREATE TABLE `pc2` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pc2`
--

INSERT INTO `pc2` (`id`, `name`, `price`, `image`) VALUES
(1, 'STAYFREE Dry Max All Night combo', '120', 'stayfree.jpg'),
(2, 'Menstrual Cup', '300', 'menstrual cup.jpg'),
(3, 'ColgAate', '220', 'colgate.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `image`) VALUES
(18, ' Newborn Head-To-Toe Bath', '350', 'newborn.png'),
(20, 'Baby Skincare Wipes', '200', '72s_1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tooth`
--

CREATE TABLE `tooth` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tooth`
--

INSERT INTO `tooth` (`id`, `name`, `price`, `image`) VALUES
(0, 'ColgAate', '220', 'colgate.jpg'),
(0, 'REdColgAate', '320', 'redcolgate.jpg'),
(0, 'Colgate Visible White O2, Teeth Whitening Toothpaste', '130', 'to1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `vitamin`
--

CREATE TABLE `vitamin` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vitamin`
--

INSERT INTO `vitamin` (`id`, `name`, `price`, `image`) VALUES
(1, ' HK Vitals Multivitamin', '750', 'hk vitamins.jpg'),
(2, 'MuscleBlaze VITE Multivitamin ', '550', 'multivita.jpg'),
(3, 'Swisse Fish Oil with 1500mg Omega 3 ', '1550', '417pQfhA8EL._AC_SX184_.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ayurveda`
--
ALTER TABLE `ayurveda`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `band`
--
ALTER TABLE `band`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `drink`
--
ALTER TABLE `drink`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `elder`
--
ALTER TABLE `elder`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `h&d`
--
ALTER TABLE `h&d`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `med`
--
ALTER TABLE `med`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nut`
--
ALTER TABLE `nut`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `p1`
--
ALTER TABLE `p1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pc2`
--
ALTER TABLE `pc2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vitamin`
--
ALTER TABLE `vitamin`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `ayurveda`
--
ALTER TABLE `ayurveda`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `band`
--
ALTER TABLE `band`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `drink`
--
ALTER TABLE `drink`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `elder`
--
ALTER TABLE `elder`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `h&d`
--
ALTER TABLE `h&d`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `med`
--
ALTER TABLE `med`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `nut`
--
ALTER TABLE `nut`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `p1`
--
ALTER TABLE `p1`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `pc2`
--
ALTER TABLE `pc2`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `vitamin`
--
ALTER TABLE `vitamin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
