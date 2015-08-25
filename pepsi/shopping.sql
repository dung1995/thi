-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 29, 2014 at 05:35 AM
-- Server version: 5.6.11
-- PHP Version: 5.5.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `shopping`
--
CREATE DATABASE IF NOT EXISTS `shopping` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `shopping`;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE IF NOT EXISTS `customers` (
  `serial` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8 NOT NULL,
  `email` varchar(80) CHARACTER SET utf8 NOT NULL,
  `address` varchar(80) CHARACTER SET utf8 NOT NULL,
  `phone` varchar(20) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`serial`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=9 ;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`serial`, `name`, `email`, `address`, `phone`) VALUES
(7, 'Dương Thanh Minh', 'minh@fpt.edu.vn', 'Hà Nội', '01635255669'),
(8, 'Nguyễn Công Quyết', 'kinghiphop_9x@yahoo.com', 'Hà Nội', '01635255668');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `serial` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `customerid` int(11) NOT NULL,
  PRIMARY KEY (`serial`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=9 ;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`serial`, `date`, `customerid`) VALUES
(7, '2014-11-11', 7),
(8, '2014-11-29', 8);

-- --------------------------------------------------------

--
-- Table structure for table `order_detail`
--

CREATE TABLE IF NOT EXISTS `order_detail` (
  `orderid` int(11) NOT NULL,
  `productid` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `order_detail`
--

INSERT INTO `order_detail` (`orderid`, `productid`, `quantity`, `price`) VALUES
(6, 1, 6, 700000),
(6, 3, 1, 1800000),
(7, 1, 4, 700000),
(8, 1, 1, 700000),
(8, 2, 1, 900000);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `serial` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `price` float NOT NULL,
  `picture` varchar(80) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`serial`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci AUTO_INCREMENT=14 ;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`serial`, `name`, `price`, `picture`) VALUES
(1, 'Chuck Taylor All Star Back Zip', 700000, 'Product1.jpg'),
(2, 'Converse All Star Chuck ''70', 900000, 'Product2.jpg'),
(3, 'Converse All Star Chuck Panel', 780000, 'Product3.jpg'),
(4, 'Chuck Taylor DC Comics Joker', 580000, 'Product4.jpg'),
(5, 'Chuck Taylor All Star BatMan', 700000, 'Product5.jpg'),
(6, 'Chuck Taylor All Star BatMan', 999000, 'Product6.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `username` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `pass` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`username`, `pass`, `email`) VALUES
('minhdt', '1q2w3e4r', 'minhdt@gmail.com');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
