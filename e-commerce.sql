-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 19, 2020 at 11:20 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `e-commerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `cast_order`
--

CREATE TABLE `cast_order` (
  `order_id` int(4) NOT NULL,
  `customer_id` int(4) NOT NULL,
  `pro_id` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cast_order`
--

INSERT INTO `cast_order` (`order_id`, `customer_id`, `pro_id`) VALUES
(289473877, 8, 56),
(372126726, 3, 38);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `cat_id` int(4) NOT NULL,
  `cat_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`cat_id`, `cat_name`, `image`) VALUES
(7, 'labtop', '36a9c75a49cf59c745ece54fd657e68a.jpg'),
(8, 'mobile', '2.jpg'),
(9, 'covers of mobile', '106-1.jpg'),
(10, 'computer', 'web-and-mobile-development.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(4) NOT NULL,
  `customer_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `customer_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `customer_password` int(50) NOT NULL,
  `mobile` int(12) NOT NULL,
  `address` varchar(10) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customer_id`, `customer_name`, `customer_email`, `customer_password`, `mobile`, `address`) VALUES
(1, 'amani ', 'amani@gmail.com', 1234, 789565344, 'amman'),
(3, 'abood', 'abood@gmail.com', 12345, 789565344, 'ajloan'),
(8, 'boody', 'stevenjobs@gmail.com', 1234, 2147483647, 'amman');

-- --------------------------------------------------------

--
-- Table structure for table `myadmin`
--

CREATE TABLE `myadmin` (
  `myadmin_id` int(11) NOT NULL,
  `myadmin_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `myadmin_password` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `fullname` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `myadmin`
--

INSERT INTO `myadmin` (`myadmin_id`, `myadmin_email`, `myadmin_password`, `fullname`) VALUES
(1, 'zgoul-abdulelah@gmail.com', '1234', 'abdulelah zgoul'),
(11, 'amani@gmail.com', '123', 'moone joko');

-- --------------------------------------------------------

--
-- Table structure for table `orderdetails`
--

CREATE TABLE `orderdetails` (
  `det_id` int(10) NOT NULL,
  `pro_id` int(4) NOT NULL,
  `order_id` int(4) NOT NULL,
  `pro_qty` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `pro_id` int(4) NOT NULL,
  `pro_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `pro_type` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `pro_price` int(255) NOT NULL,
  `image` varchar(225) COLLATE utf8_unicode_ci NOT NULL,
  `pro_dec` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `cat_id` int(50) NOT NULL,
  `cat_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`pro_id`, `pro_name`, `pro_type`, `pro_price`, `image`, `pro_dec`, `cat_id`, `cat_name`) VALUES
(37, 'Apple iPhone 11 Pro Max', 'Featured product', 200, 'Apple-iPhone-11-Pro-Max-Gold-frontimage.jpg', '  Dimensions	158 x 77.8 x 8.1 mm (6.22 x 3.06 x 0.32 in)\r\nWeight	226 g (7.97 oz)\r\nBuild	Glass front (Gorilla Glass), glass back (Gorilla Glass), stainless steel frame\r\nSIM	Single SIM (Nano-SIM and/or eSIM) or Dual SIM (Nano-SIM, dual stand-by) - for China\r\n 	IP68 dust/water resistant (up to 4m for 30 mins)\r\nApple Pay (Visa, MasterCard, AMEX certified)', 8, 'mobile'),
(38, 'Apple Iphone XS Max 64GB', 'Featured product', 200, 'apple-iphone-xs-max.jpg', '  Dimensions	157.5 x 77.4 x 7.7 mm (6.20 x 3.05 x 0.30 in)\r\nWeight	208 g (7.34 oz)\r\nBuild	Glass front (Gorilla Glass), glass back (Gorilla Glass), stainless steel frame\r\nSIM	Single SIM (Nano-SIM and/or eSIM) or Dual SIM (Nano-SIM, dual stand-by) - for China\r\n 	IP68 dust/water resistant (up to 2m for 30 mins)\r\nApple Pay (Visa, MasterCard, AMEX certified)', 8, 'mobile'),
(39, 'LG gram 14” 2-in-1 Ultra-Lightweight Laptop with I', 'Coming-soon product', 150, 'a16ce386-5ef1-4bfb-9cd9-ce8469ccea81.jpg', '  8th Gen. Intel® Core™ i7 processor\r\nWindows 10 Home\r\nConverts to 14” tablet\r\nIncludes Wacom AES 2.0 Pen\r\n72Wh Lithium Battery (up to 21 hours)\r\n16GB RAM & 512GB SSD', 7, 'labtop\r\n'),
(40, 'LG gram Thin and Light Laptop - 17\" (2560 x 1600) ', 'Coming-soon product', 200, '71+Ewud0jCL._AC_SX466_.jpg', '  17 Inch WQXGA (2560 x 1600) resolution 16: 10 IPS display\r\nIntel 8th Generation Intel Core i7 8565u Processor\r\nWindows home 10\r\n72Wh Lithium battery up to 19. 5 hours Battery Life (mobile mark 2014 standard)\r\nThunderbolt 3\r\n16GB RAM, 512GB SSD\r\nMil std 810g durability standard', 7, 'labtop'),
(41, 'Samsung Galaxy A20s', 'Featured product', 200, '51GX14nuGWL._AC_SL1000_.jpg', '  Dimensions	163.3 x 77.5 x 8 mm (6.43 x 3.05 x 0.31 in)\r\nWeight	183 g (6.46 oz)\r\nBuild	Glass front, plastic back, plastic frame\r\nSIM	Single SIM (Nano-SIM) or Dual SIM (Nano-SIM, dual stand-by)', 8, 'mobile'),
(43, 'Huawei P40 Pro', ' product', 200, 'images (3).jpg', '  \r\nDimensions	152.9 x 72.7 x 7.4 mm (6.02 x 2.86 x 0.29 in)\r\nWeight	152.9 g (5.40 oz)\r\nBuild	Glass front, glass back, plastic frame\r\nSim	Hybrid Dual SIM (Nano-SIM, dual stand-by)', 8, 'mobile'),
(46, 'HP Laptop - 15s-eq0007au', 'Coming-soon product', 200, '71c+9N5FvoL._SX466_.jpg', 'Processor: AMD Ryzen 3 3200U processor, 2.6 GHz base processor speed, up to 3.5 GHz burst frequency, 2 cores, 5MB L3 cache\r\nOperating System: Pre-loaded Windows 10 Home\r\nDisplay: 15.6-inch FHD (1920 x 1080) SVA WLED Display\r\nMemory & Storage: 4GB DDR4 RAM, with AMD Radeon Vega 3 Graphics | Storage: 256 GB SSD\r\nDesign & battery: Laptop weight: 1.7 kg\r\nIncluded Software: Microsoft Office Home & Student 2019\r\nConnectivity: Wifi 802.11b/g/n (1x1) and', 7, 'laptop'),
(48, '2019 Dell Inspiron 15.6\" HD Touchscreen High', 'product', 200, '51wgljB3OlL._AC_SX466_.jpg', '  Intel 7th Generation Core i5-7200U Dual-Core Processor 2.5GHz- Ultra-low-voltage platform. Dual-core, four-way processing provides maximum high-efficiency power to go. Intel Turbo Boost Technology delivers dynamic extra power when you need it; Integrated Intel HD Graphics 620 - On-processor graphics with shared video memory provide everyday image quality for Internet use, basic photo editing and casual gaming', 7, 'labtop'),
(49, 'Microsoft Surface Laptop 3', 'Coming-soon product', 200, 'surface-laptop-3-13-5-header.jpg', '  ✓Light, elegant metal and fabric design options\r\n✓High-quality 13.5-inch touch screen\r\n✓Strong performance\r\n✓Impressive build quality and attention to detail', 7, 'labtop'),
(50, 'Lenovo - Yoga C740 2-in-1 15.6\" Touch-Screen Lapto', 'Coming-soon product', 200, '6367802_sd.jpg', 'Lenovo Yoga C740 Convertible 2-in-1 Laptop: Combine power and flexibility with this 15.6-inch Lenovo Yoga convertible notebook. An Intel Core i7 processor and 12GB of RAM let you run multiple programs at once, and the 512GB of storage fits large programs and files. This Lenovo Yoga convertible notebook has a 15.6-inch Full HD touchscreen that delivers stunning images and lets you navigate using touch controls.\r\n', 7, 'labtop'),
(51, 'Macbook Air 13\"', 'Coming-soon product', 133, 'mbasg.jpg', '  13.3\" Display/1.6GHz i5 Processor/8GB RAM/128GB SSD Hard Drive/Touch ID - Space Grey (MVFH2LL/A)\r\n\r\nITP Part # MVFH2LL/A', 7, 'laptop'),
(52, 'Creative Mobile Covers Design', 'product', 10, 'creative_mobile_covers_design_800_600.jpg', '  We created Creative Mobile Cover Designs to sell for Iphone', 9, '9'),
(53, 'Supreme Stylish Back Cover for iPhone 7 Plus', 'product', 15, '0143093_supreme-stylish-back-cover-for-iphone-7-plus_550.jpeg', '  Model: iPhone 7 plus.\r\n360 degree fits tightly.\r\nCompact Cyst.\r\nAnti-slip strip.\r\n03mm above the camera.\r\nPrevents lens from scratching.\r\nMaterial TPU silicone + PC panel.\r\nEasy to disassemble without damage.\r\nEffectively prevent dust and scratches, shock proof.\r\nThe high-resilience button is more sensitive.\r\nTough and scratch-resistant.\r\nProtects your device perfectly.\r\nHigh-precision machine molding.\r\nUltra-thin and safe for use.', 9, '11'),
(54, 'Lenovo President’s Day desktop laptop offers', 'product', 200, '960x0.jpg', '  Should you want slightly extra efficiency out of your laptop, then it’s price contemplating a desktop laptop as an alternative. Lenovo doesn’t simply provide nice laptops — its desktops are additionally modern, highly effective, and high-performing. Listed below are the most effective Lenovo President’s Day desktop offers we may discover.', 10, 'computer'),
(55, 'Computer classes at Kingsville library', 'product', 150, 'computer-05-1.jpg', '  critical vulnerabilities in computer chips that were found out this week. The flaws, dubbed “Meltdown” and “Spectre,” could allow hackers get maintain of passwords, encryption keys, and other touchy records from a PC’s core reminiscence through malicious apps strolling on gadgets.\r\n\r\n', 10, 'computer'),
(56, 'New GeForce RTX Gaming Laptops', 'product', 100, 'laptops-101116.jpg', '  An incredibly sleek and narrow 6mm bezel enabled us to pack a 17.3\" screen into a traditional 15\" laptop footprint. Avon maximizes screen size while keeping the overall size and weight to a minimum, allowing you to easily carry your gaming laptop anywhere', 7, '7'),
(57, 'Lenovo All-in-One V330-20 8Gen Core i3 - Black', 'product', 150, 'V3300-550x400.jpg', '  Lenovo Vantage saves IT time by allowing end users to manage system health, configure updates, and purge unnecessary files\r\nUser-friendly front ports, for easy access and productivity\r\nUp to 6 USB 3.1 connectors\r\nReliable and secure:\r\n\r\nBIOS-based smart USB protection allows keyboard and mouse access while restricting storage options\r\nData encryption via Trusted Platform Module (TPM) 2.0\r\nTested for durability in Lenovo lab; can perform in the most challenging environments', 10, 'computer');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cast_order`
--
ALTER TABLE `cast_order`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `myadmin`
--
ALTER TABLE `myadmin`
  ADD PRIMARY KEY (`myadmin_id`);

--
-- Indexes for table `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD PRIMARY KEY (`det_id`),
  ADD KEY `pro_id` (`pro_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`pro_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `cat_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `myadmin`
--
ALTER TABLE `myadmin`
  MODIFY `myadmin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `orderdetails`
--
ALTER TABLE `orderdetails`
  MODIFY `det_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `pro_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orderdetails`
--
ALTER TABLE `orderdetails`
  ADD CONSTRAINT `orderdetails_ibfk_1` FOREIGN KEY (`pro_id`) REFERENCES `product` (`pro_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `orderdetails_ibfk_2` FOREIGN KEY (`order_id`) REFERENCES `cast_order` (`order_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
