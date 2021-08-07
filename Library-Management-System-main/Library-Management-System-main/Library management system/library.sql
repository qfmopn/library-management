-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 28, 2020 at 04:54 AM
-- Server version: 8.0.21
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int NOT NULL AUTO_INCREMENT,
  `FullName` varchar(100) DEFAULT NULL,
  `AdminEmail` varchar(120) DEFAULT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `FullName`, `AdminEmail`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'Admin', 'admin@gmail.com', 'admin', '21232f297a57a5a743894a0e4a801fc3', '2020-11-26 06:20:12');

-- --------------------------------------------------------

--
-- Table structure for table `authors`
--

DROP TABLE IF EXISTS `authors`;
CREATE TABLE IF NOT EXISTS `authors` (
  `id` int NOT NULL AUTO_INCREMENT,
  `AuthorName` varchar(159) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `authors`
--

INSERT INTO `authors` (`id`, `AuthorName`, `creationDate`, `UpdationDate`) VALUES
(1, 'Anuj kumar', '2017-07-08 12:49:09', '2017-07-08 15:16:59'),
(2, 'Chetan Bhagatt', '2017-07-08 14:30:23', '2017-07-08 15:15:09'),
(3, 'Anita Desai', '2017-07-08 14:35:08', NULL),
(4, 'HC Verma', '2017-07-08 14:35:21', NULL),
(5, 'R.D. Sharma ', '2017-07-08 14:35:36', NULL),
(6, 'Jamie McGuire ', '2020-11-25 20:28:44', NULL),
(7, 'E.L. James ', '2020-11-25 20:28:44', NULL),
(8, 'John Green ', '2020-11-25 20:32:53', NULL),
(9, 'Veronica Roth ', '2020-11-25 20:32:53', NULL),
(10, 'Jane Austen', '2020-11-25 20:32:53', NULL),
(11, 'Sarah Dessen ', '2020-11-25 20:32:53', NULL),
(12, 'Chris Richardson ', '2020-11-26 07:18:06', NULL),
(13, 'Hobson Lane And Hannes Hapke ', '2020-11-26 07:18:45', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
CREATE TABLE IF NOT EXISTS `books` (
  `id` int NOT NULL AUTO_INCREMENT,
  `BookName` varchar(255) DEFAULT NULL,
  `CatId` int DEFAULT NULL,
  `AuthorId` int DEFAULT NULL,
  `ISBNNumber` int DEFAULT NULL,
  `BookPrice` int DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `BookName`, `CatId`, `AuthorId`, `ISBNNumber`, `BookPrice`, `RegDate`, `UpdationDate`) VALUES
(1, 'PHP And MySql programming', 5, 1, 222333, 20, '2017-07-08 20:04:55', '2017-07-15 05:54:41'),
(2, 'Kinematics', 6, 4, 1111, 15, '2017-07-08 20:17:31', '2020-11-26 06:48:38'),
(3, 'Beautiful Disaster', 4, 6, 1234, 100, '2020-11-25 20:31:06', NULL),
(4, 'Fifty Shades of Grey', 4, 7, 12345, 200, '2020-11-25 20:31:06', NULL),
(5, 'The Fault in Our Stars', 4, 8, 123456, 120, '2020-11-25 20:35:39', NULL),
(6, 'Divergent', 4, 9, 1234567, 150, '2020-11-25 20:35:39', NULL),
(7, 'Pride and Prejudice', 4, 10, 12345678, 110, '2020-11-25 20:35:39', NULL),
(8, 'The Truth About Forever', 4, 11, 123456789, 90, '2020-11-25 20:35:39', NULL),
(9, 'The Lost World', 10, 6, 9100, 32, '2020-11-26 06:57:55', NULL),
(10, ' Microservices Patterns: With examples in Java 1st Edition', 5, 12, 112233, 170, '2020-11-26 07:19:16', NULL),
(11, 'Natural Language Processing in Action: Understanding, analyzing, and generating text with Python 1st Edition', 5, 13, 11223344, 180, '2020-11-26 07:20:13', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `borrowbooks`
--

DROP TABLE IF EXISTS `borrowbooks`;
CREATE TABLE IF NOT EXISTS `borrowbooks` (
  `id` int NOT NULL AUTO_INCREMENT,
  `BookId` int DEFAULT NULL,
  `StudentID` varchar(150) DEFAULT NULL,
  `IssuesDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `ReturnDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `RetrunStatus` int DEFAULT NULL,
  `fine` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `borrowbooks`
--

INSERT INTO `borrowbooks` (`id`, `BookId`, `StudentID`, `IssuesDate`, `ReturnDate`, `RetrunStatus`, `fine`) VALUES
(11, 10, 'SID003', '2020-11-26 07:30:33', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `genre`
--

DROP TABLE IF EXISTS `genre`;
CREATE TABLE IF NOT EXISTS `genre` (
  `id` int NOT NULL AUTO_INCREMENT,
  `CategoryName` varchar(150) DEFAULT NULL,
  `Status` int DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `genre`
--

INSERT INTO `genre` (`id`, `CategoryName`, `Status`, `CreationDate`, `UpdationDate`) VALUES
(4, 'Romance', 1, '2017-07-04 18:35:25', '2020-11-26 06:50:33'),
(5, 'Technology', 1, '2017-07-04 18:35:39', '2017-07-08 17:13:03'),
(6, 'Science', 1, '2017-07-04 18:35:55', '0000-00-00 00:00:00'),
(7, 'Management', 1, '2017-07-04 18:36:16', '2020-11-26 07:20:56'),
(8, 'Fiction', 1, '2020-11-26 06:49:57', '0000-00-00 00:00:00'),
(9, 'Comedy', 1, '2020-11-26 06:50:23', '0000-00-00 00:00:00'),
(10, 'Drama', 1, '2020-11-26 06:51:07', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `StudentId` varchar(100) DEFAULT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `EmailId` varchar(120) DEFAULT NULL,
  `MobileNumber` char(11) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `Status` int DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `StudentId` (`StudentId`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `StudentId`, `FullName`, `EmailId`, `MobileNumber`, `Password`, `Status`, `RegDate`, `UpdationDate`) VALUES
(12, 'SID001', 'Test', 'test@test.com', '9100000000', '098f6bcd4621d373cade4e832627b4f6', 1, '2020-11-26 06:21:47', '2020-11-26 06:46:15'),
(13, 'SID002', 'test_2', 'test2@gmail.com', '9200000000', 'ad0234829205b9033196ba818f7a872b', 1, '2020-11-26 06:22:18', NULL),
(14, 'SID003', 'Test3', 'test3@gmail.com', '910000000', '8ad8757baa8564dc136c1e07507f4a98', 1, '2020-11-26 07:21:37', '2020-11-26 07:26:00');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
