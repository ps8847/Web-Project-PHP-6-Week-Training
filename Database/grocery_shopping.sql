-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 24, 2021 at 03:18 PM
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
-- Database: `grocery_shopping`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

CREATE TABLE `admin_login` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_login`
--

INSERT INTO `admin_login` (`username`, `password`) VALUES
('admin1', 'ASD');

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `billid` int(11) NOT NULL,
  `grandtotal` float NOT NULL,
  `datetime` datetime NOT NULL,
  `paymentmethod` varchar(20) NOT NULL,
  `city` varchar(100) NOT NULL,
  `zipcode` int(6) NOT NULL,
  `address` text NOT NULL,
  `remarks` text NOT NULL,
  `status` varchar(30) NOT NULL,
  `trackingid` int(6) DEFAULT NULL,
  `companyname` varchar(100) DEFAULT NULL,
  `trackingurl` varchar(300) DEFAULT NULL,
  `trackremarks` text DEFAULT NULL,
  `personreceived` varchar(100) DEFAULT NULL,
  `returnremarks` text DEFAULT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`billid`, `grandtotal`, `datetime`, `paymentmethod`, `city`, `zipcode`, `address`, `remarks`, `status`, `trackingid`, `companyname`, `trackingurl`, `trackremarks`, `personreceived`, `returnremarks`, `email`) VALUES
(5, 9.8, '2021-08-26 19:25:22', 'cash', 'Amritsar', 143001, 'new mohindra colony', 'll', 'delievered', 9, 'dd', 'dd', 'dd', 'mohit', NULL, 'ramesh@gmail.com'),
(6, 286.32, '2021-08-26 19:26:46', 'cash', 'Amritsar', 143001, 'new mohindra colony', 'fr', 'shipped', 8, 'lamon', 'lu.com', 'fdf', NULL, NULL, 'ramesh@gmail.com'),
(7, 291.04, '2021-08-27 10:13:14', 'cash', 'Amritsar', 143001, 'new mohindra colony', 'kkk', 'cancelled', NULL, NULL, NULL, NULL, NULL, 'ffffffff', 'ramesh@gmail.com'),
(8, 286.32, '2021-08-28 10:19:40', 'cash', 'Amritsar', 143001, 'new mohindra colony', 'hhh', 'cancelled', NULL, NULL, NULL, NULL, NULL, 'fytyut7', 'ramesh@gmail.com'),
(9, 212.5, '2021-08-28 17:38:15', 'cash', 'Amritsar', 143001, 'new mohindra colony', 'ff', 'cancelled', NULL, NULL, NULL, NULL, NULL, 'not delivered yet', 'ramesh@gmail.com'),
(10, 403.72, '2021-08-28 19:53:59', 'cash', 'Amritsar', 143001, 'new mohindra colony', 'hhh', 'delievered', 777777, 'ssss', 'ssss', 'ss', 'manoj', NULL, 'prince@gmail.com'),
(11, 1176, '2021-08-28 19:57:31', 'cash', 'Amritsar', 143001, 'new mohindra colony', 'juju', 'pending', NULL, NULL, NULL, NULL, NULL, NULL, 'prince@gmail.com'),
(12, 212.5, '2021-08-28 20:09:44', 'cash', 'Amritsar', 143001, 'new mohindra colony', 'aaa', 'pending', NULL, NULL, NULL, NULL, NULL, NULL, 'prince@gmail.com'),
(13, 212.5, '2021-08-28 20:28:03', 'cash', 'Amritsar', 143001, 'new mohindra colony', 'hh', 'pending', NULL, NULL, NULL, NULL, NULL, NULL, 'prince@gmail.com'),
(14, 312.5, '2021-09-04 10:34:12', 'cash', 'Amritsar', 143001, 'new mohindra colony', 'htht', 'cancelled', NULL, NULL, NULL, NULL, NULL, 'not delivered yet', 'ramesh@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `bill_details`
--

CREATE TABLE `bill_details` (
  `id` int(11) NOT NULL,
  `price` float NOT NULL,
  `discount` float NOT NULL,
  `netprice` float NOT NULL,
  `quantity` int(11) NOT NULL,
  `productid` int(11) NOT NULL,
  `billid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bill_details`
--

INSERT INTO `bill_details` (`id`, `price`, `discount`, `netprice`, `quantity`, `productid`, `billid`) VALUES
(5, 10, 2, 9.8, 1, 26, 5),
(6, 66, 3, 64.02, 1, 27, 6),
(7, 250, 15, 212.5, 1, 25, 6),
(8, 10, 2, 9.8, 1, 26, 6),
(9, 80, 50, 40, 4, 30, 7),
(10, 16, 9, 14.56, 9, 29, 7),
(11, 250, 15, 212.5, 1, 25, 8),
(12, 10, 2, 9.8, 1, 26, 8),
(13, 66, 3, 64.02, 1, 27, 8),
(14, 250, 15, 212.5, 1, 25, 9),
(15, 10, 2, 9.8, 2, 26, 10),
(16, 66, 3, 64.02, 6, 27, 10),
(17, 300, 2, 294, 4, 31, 11),
(18, 250, 15, 212.5, 1, 25, 12),
(19, 250, 15, 212.5, 1, 25, 13),
(20, 250, 15, 212.5, 1, 25, 14),
(21, 100, 0, 100, 1, 24, 14);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `categories` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `catphoto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`categories`, `description`, `catphoto`) VALUES
('Dairy Products', 'healthy and tasty Dairy products', 'uploads/coca-cola-zero-300-ml-can-0-20210728.jpg'),
('jjjj', 'ki', ''),
('kiki', 'lplp', ''),
('Namkeen', 'bhujiya', '');

-- --------------------------------------------------------

--
-- Table structure for table `contactus`
--

CREATE TABLE `contactus` (
  `queryid` int(11) NOT NULL,
  `email` varchar(300) NOT NULL,
  `message` varchar(300) NOT NULL,
  `return_message` varchar(300) DEFAULT 'noooo',
  `datetimee` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contactus`
--

INSERT INTO `contactus` (`queryid`, `email`, `message`, `return_message`, `datetimee`) VALUES
(2, '', 'fghy', '', '2021-10-17 00:08:42'),
(3, 'ramesh@gmail.com', 'hhhh', '', '2021-10-17 00:08:42'),
(4, 'ramesh@gmail.com', 'HTHTHHT', 'lolo', '2021-10-17 00:08:42'),
(10, 'prince@gmail.com', 'hyy im prince sharma i have a roblem', 'gyuty', '2021-10-17 00:08:42'),
(11, 'ramesh@gmail.com', 'sdgfhweuifhe', 'vhdsgfhsaj', '2021-10-17 02:00:56'),
(12, 'ramesh@gmail.com', 'hfhuifrui', 'dfgkweyri', '2021-10-17 02:01:05');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `productid` int(10) NOT NULL,
  `productname` varchar(100) NOT NULL,
  `price` float NOT NULL,
  `discount` float NOT NULL,
  `stock` int(10) NOT NULL,
  `photo` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `subcategoryid` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`productid`, `productname`, `price`, `discount`, `stock`, `photo`, `description`, `subcategoryid`) VALUES
(24, 'Amul Milk jj', 100, 0, 3, 'uploads/amul-cow-ghee-1-l-tin-0-20210701.jpg', 'hh', 14),
(25, 'paneer', 250, 15, 241, 'uploads/britannia-strawberry-veg-muffills-32-g-0-20210304.jpg', 'paneer 250 per kg healthy healthy healthy healthy healthy healthy healthy', 14),
(26, 'tata namkeen', 10, 2, 0, 'uploads/britannia-strawberry-veg-muffills-32-g-0-20210304.jpg', 'tata namkern', 15),
(27, 'jjjj', 66, 3, 0, 'uploads/britannia-blend-and-diced-pizza-cheese-200-g-pouch-0-20210726.jpg', '10', 15),
(29, 'aloo wala bhujiya', 19, 9, 91, 'uploads/Screenshot (10).png', 'juju', 15),
(30, 'llllll', 80, 50, 6, 'uploads/bisleri-fonzo-600-ml-0-20210401.jpg', 'jyjyjyjy', 14),
(31, 'lio', 300, 2, 36, 'uploads/cauliflower-per-pc-0-20200710.jpg', 'kio', 14);

-- --------------------------------------------------------

--
-- Table structure for table `productphoto`
--

CREATE TABLE `productphoto` (
  `id` int(11) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `caption` text NOT NULL,
  `productid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `stock`
--

CREATE TABLE `stock` (
  `stockid` int(11) NOT NULL,
  `qty` float NOT NULL,
  `expiry` date NOT NULL,
  `dateofpurchase` date NOT NULL,
  `pid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `subcategoryid` int(50) NOT NULL,
  `subcategoryname` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `categories` varchar(100) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`subcategoryid`, `subcategoryname`, `description`, `categories`) VALUES
(14, 'Milk', '100% Pure Milk of Buffalow', 'Dairy Products'),
(15, 'TATA', 'tata bhujiya', 'Namkeen'),
(16, 'kuku', 'bgt', 'kiki'),
(17, 'liioo', 'good', 'Dairy Products');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `email` varchar(100) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL,
  `gender` varchar(30) NOT NULL,
  `mobile` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`email`, `fullname`, `password`, `gender`, `mobile`) VALUES
('prince@gmail.com', 'prince', 'prince', 'Male', '1234567890'),
('ramesh@gmail.com', 'ramesh', 'aa', 'Male', '8899889988');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_login`
--
ALTER TABLE `admin_login`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`billid`),
  ADD KEY `email` (`email`);

--
-- Indexes for table `bill_details`
--
ALTER TABLE `bill_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `productid` (`productid`),
  ADD KEY `billid` (`billid`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`categories`);

--
-- Indexes for table `contactus`
--
ALTER TABLE `contactus`
  ADD PRIMARY KEY (`queryid`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`productid`),
  ADD KEY `subcategoryid` (`subcategoryid`);

--
-- Indexes for table `productphoto`
--
ALTER TABLE `productphoto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `productid` (`productid`);

--
-- Indexes for table `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`stockid`),
  ADD KEY `pid` (`pid`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`subcategoryid`),
  ADD KEY `categories` (`categories`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bill`
--
ALTER TABLE `bill`
  MODIFY `billid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `bill_details`
--
ALTER TABLE `bill_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `contactus`
--
ALTER TABLE `contactus`
  MODIFY `queryid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `productid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `productphoto`
--
ALTER TABLE `productphoto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `stock`
--
ALTER TABLE `stock`
  MODIFY `stockid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `subcategoryid` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bill`
--
ALTER TABLE `bill`
  ADD CONSTRAINT `bill_ibfk_1` FOREIGN KEY (`email`) REFERENCES `users` (`email`);

--
-- Constraints for table `bill_details`
--
ALTER TABLE `bill_details`
  ADD CONSTRAINT `bill_details_ibfk_1` FOREIGN KEY (`productid`) REFERENCES `product` (`productid`),
  ADD CONSTRAINT `bill_details_ibfk_2` FOREIGN KEY (`billid`) REFERENCES `bill` (`billid`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`subcategoryid`) REFERENCES `subcategory` (`subcategoryid`);

--
-- Constraints for table `productphoto`
--
ALTER TABLE `productphoto`
  ADD CONSTRAINT `productphoto_ibfk_1` FOREIGN KEY (`productid`) REFERENCES `product` (`productid`);

--
-- Constraints for table `stock`
--
ALTER TABLE `stock`
  ADD CONSTRAINT `stock_ibfk_1` FOREIGN KEY (`pid`) REFERENCES `product` (`productid`);

--
-- Constraints for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD CONSTRAINT `subcategory_ibfk_1` FOREIGN KEY (`categories`) REFERENCES `categories` (`categories`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
