-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 17, 2024 at 02:28 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gymdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladdpackage`
--

CREATE TABLE `tbladdpackage` (
  `id` int(11) NOT NULL,
  `category` varchar(45) DEFAULT NULL,
  `titlename` varchar(450) DEFAULT NULL,
  `PackageType` varchar(45) DEFAULT NULL,
  `PackageDuratiobn` varchar(45) DEFAULT NULL,
  `Price` varchar(45) DEFAULT NULL,
  `uploadphoto` varchar(450) DEFAULT NULL,
  `Description` varchar(450) DEFAULT NULL,
  `create_date` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbladdpackage`
--

INSERT INTO `tbladdpackage` (`id`, `category`, `titlename`, `PackageType`, `PackageDuratiobn`, `Price`, `uploadphoto`, `Description`, `create_date`) VALUES
(1, '1', 'Free Fitness Gear Package', '1', '3 Month', '6000', NULL, 'Free Fitness Gear\nComplimentary OnePass', '2022-03-05 02:55:34'),
(2, '1', 'Silver Membership Package', '1', '6 Month', '8000', NULL, 'Book Six Days Different Trainers Class designed for fast Weight Loss / Weight Gain with combination of Latest Workouts in addition to complimentary access to gym area with personal training.', '2022-03-05 02:56:44'),
(3, '1', 'Gold Membership Package', '1', '12 Month', '12000', NULL, 'Discounted or included sessions with a personal trainer. Use of the pool, sauna, steam room, or jacuzzi. Diet plans or consultations with a nutritionist. A limited number of guest passes for friends or family. Weight loss programs, strength training plans, or sports-specific training.', '2022-05-22 02:34:08');

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `mobile` varchar(45) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `create_date` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`id`, `name`, `email`, `mobile`, `password`, `create_date`) VALUES
(1, 'admin', 'admin@gmail.com', '99197896857', '5c428d8875d2948607f3e3fe134d71b4', '2022-01-19 11:25:17');

-- --------------------------------------------------------

--
-- Table structure for table `tblbooking`
--

CREATE TABLE `tblbooking` (
  `id` int(11) NOT NULL,
  `package_id` varchar(45) DEFAULT NULL,
  `userid` varchar(45) DEFAULT NULL,
  `booking_date` timestamp NULL DEFAULT current_timestamp(),
  `payment` varchar(45) DEFAULT NULL,
  `paymentType` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblbooking`
--

INSERT INTO `tblbooking` (`id`, `package_id`, `userid`, `booking_date`, `payment`, `paymentType`) VALUES
(1, '2', '1', '2022-03-05 03:53:21', '800', 'Partial Payment'),
(2, '1', '1', '2022-03-05 03:53:28', '600', 'Partial Payment'),
(3, '2', '5', '2022-03-08 17:44:18', '300', 'Full Payment'),
(6, '1', '5', '2022-05-22 02:16:14', NULL, NULL),
(7, '2', '6', '2022-05-22 02:32:45', NULL, 'Full Payment'),
(8, '1', '9', '2024-12-17 08:28:56', NULL, NULL),
(9, '2', '10', '2024-12-17 09:15:52', NULL, NULL),
(10, '3', '8', '2024-12-17 12:15:50', NULL, NULL),
(11, '2', '8', '2024-12-17 12:18:43', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `id` int(11) NOT NULL,
  `category_name` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`id`, `category_name`, `status`) VALUES
(1, 'Category1', '0'),
(2, 'Category2', '0');

-- --------------------------------------------------------

--
-- Table structure for table `tblpackage`
--

CREATE TABLE `tblpackage` (
  `id` int(11) NOT NULL,
  `cate_id` varchar(45) DEFAULT NULL,
  `PackageName` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblpackage`
--

INSERT INTO `tblpackage` (`id`, `cate_id`, `PackageName`) VALUES
(1, '1', 'Package1'),
(3, '2', 'Package2');

-- --------------------------------------------------------

--
-- Table structure for table `tblpayment`
--

CREATE TABLE `tblpayment` (
  `id` int(11) NOT NULL,
  `bookingID` varchar(45) DEFAULT NULL,
  `paymentType` varchar(45) DEFAULT NULL,
  `payment` varchar(45) DEFAULT NULL,
  `payment_date` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblpayment`
--

INSERT INTO `tblpayment` (`id`, `bookingID`, `paymentType`, `payment`, `payment_date`) VALUES
(1, '1', 'Partial Payment', '300', '2022-03-05 03:54:10'),
(4, '1', 'Full Payment', '500', '2022-05-22 01:01:58'),
(5, '3', 'Partial Payment', '300', '2022-05-22 01:09:53'),
(8, '3', 'Full Payment', '500', '2022-05-22 01:19:03'),
(9, '7', 'Partial Payment', '500', '2022-05-22 02:40:34'),
(10, '7', 'Full Payment', '300', '2022-05-22 02:41:14');

-- --------------------------------------------------------

--
-- Table structure for table `tbluser`
--

CREATE TABLE `tbluser` (
  `id` int(11) NOT NULL,
  `fname` varchar(45) DEFAULT NULL,
  `lname` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `mobile` varchar(45) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `create_date` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbluser`
--

INSERT INTO `tbluser` (`id`, `fname`, `lname`, `email`, `mobile`, `password`, `state`, `city`, `address`, `create_date`) VALUES
(1, 'atul', 'kumar', 'atul@gmail.com', '8888888888', 'f925916e2754e5e03f75dd58a5733251', 'Uttar Pradesh', 'niuda', 'e-48 new asholk nagar hdd ', '2022-02-16 16:48:25'),
(2, 'ddd', 'ddf', 'df@gmail.com', '9968556', 'e10adc3949ba59abbe56e057f20f883e', 'fgfg', 'fsdf', NULL, '2022-02-16 17:00:20'),
(3, 'anuj', 'kumar', 'anuj@gmail.com', '9999999999', 'f925916e2754e5e03f75dd58a5733251', 'up', 'noida', NULL, '2022-03-02 15:37:22'),
(4, 'sssssss', 'sssssss', 'sssssss', 'sssssss', 'f925916e2754e5e03f75dd58a5733251', 'sssssss', 'sssssss', NULL, '2022-03-05 03:27:28'),
(5, 'Anuj k', 'kumar', 'anuj.doca@Gmail.com', '1234567890', '202cb962ac59075b964b07152d234b70', 'sghsdg', 'sahgsh', NULL, '2022-03-08 17:43:23'),
(6, 'John', 'Doe', 'john@test.com', '1425635241', 'f925916e2754e5e03f75dd58a5733251', 'Delhi', 'New Delhi', 'ABC Street XYZ Colony', '2022-05-22 02:31:54'),
(8, 'Aditya', 'Tayde', 'adi@gmail.com', '7896541236', '827ccb0eea8a706c4c34a16891f84e7b', 'Gujarat', 'Ahmedabad', NULL, '2024-12-17 08:27:16'),
(9, 'Pradeep', 'Tejani', 'pradeep@gmail.com', '7896587452', '827ccb0eea8a706c4c34a16891f84e7b', 'Gujarat', 'Ahmedabad', NULL, '2024-12-17 08:28:25'),
(10, 'Rohan', 'Jha', 'rohan@gmail.com', '7896587458', '827ccb0eea8a706c4c34a16891f84e7b', 'Gujarat', 'Ahmedabad', NULL, '2024-12-17 09:15:35');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladdpackage`
--
ALTER TABLE `tbladdpackage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbooking`
--
ALTER TABLE `tblbooking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpackage`
--
ALTER TABLE `tblpackage`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpayment`
--
ALTER TABLE `tblpayment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbluser`
--
ALTER TABLE `tbluser`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladdpackage`
--
ALTER TABLE `tbladdpackage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblbooking`
--
ALTER TABLE `tblbooking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblpackage`
--
ALTER TABLE `tblpackage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblpayment`
--
ALTER TABLE `tblpayment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbluser`
--
ALTER TABLE `tbluser`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
