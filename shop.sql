-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 30, 2016 at 01:56 PM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 7.0.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`category_id`, `category_name`) VALUES
(1, 'TV'),
(2, 'Mobile'),
(3, 'Mens fashion'),
(4, 'Womens fashion'),
(5, 'Books');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `customer_id` int(11) NOT NULL,
  `customer_fname` varchar(20) DEFAULT NULL,
  `customer_lname` varchar(20) DEFAULT NULL,
  `customer_phone` int(11) DEFAULT NULL,
  `customer_address` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_customer`
--

INSERT INTO `tbl_customer` (`customer_id`, `customer_fname`, `customer_lname`, `customer_phone`, `customer_address`) VALUES
(1, 'Mandeep', 'Rimal', 2147483647, 'Balaju'),
(2, 'Abhash', 'Pradhananga', 2147483647, 'Baneshowr'),
(3, 'Prince', 'Thakuri', 2147483647, 'Maharajgunj'),
(4, 'Nischal', 'Khanal', 2147483647, 'Maharajgunj'),
(5, 'Karan', 'Shrestha', 2147483647, 'Lokanthali'),
(6, 'Jeeban', 'Kunwar', 2147483647, 'Greenland'),
(7, 'Adarsh', 'Shrestha', 2147483647, 'Maitidevi'),
(8, 'Anish', 'Twayana', 2147483647, 'suryabinayak'),
(9, 'Ayush', 'Shrestha', 2147483647, 'Sanepa'),
(10, 'Pawan', 'Sampang', 2147483647, 'Baneshowr'),
(22, 'Mandeep', 'Rimal', 2147483647, 'Balaju');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`order_id`, `customer_id`, `product_id`) VALUES
(1, 22, 1),
(2, 2, 3),
(3, 3, 4),
(4, 4, 5),
(5, 5, 2),
(6, 6, 4),
(7, 7, 3),
(8, 8, 1),
(9, 9, 5),
(10, 10, 3),
(11, 22, 2),
(12, 2, 4),
(13, 4, 3),
(14, 6, 2),
(15, 8, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(30) NOT NULL,
  `category_id` int(11) NOT NULL,
  `product_price` int(11) NOT NULL,
  `product_quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`product_id`, `product_name`, `category_id`, `product_price`, `product_quantity`) VALUES
(1, 'HTC one m8', 2, 40000, 1),
(2, 'Samsung 55H600', 1, 240000, 1),
(3, 'Pant', 3, 5000, 3),
(4, 'Saree', 4, 14000, 2),
(5, 'Iphone6s', 2, 68000, 1),
(6, 'Football jersey', 3, 1000, 1),
(7, 'Muna-Madan', 5, 4000, 1),
(8, 'Shoe', 4, 4000, 2),
(9, 'Samsung 40S5000', 2, 140000, 1),
(10, 'Shirt', 3, 6000, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `user_id` (`customer_id`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `category_id` (`category_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
