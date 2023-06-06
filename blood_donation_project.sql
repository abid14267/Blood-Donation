-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 06, 2023 at 07:25 PM
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
-- Database: `blood_donation_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `ID` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `comments` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`ID`, `name`, `email`, `comments`) VALUES
(5, 'Sakibul Hasan Rony', 'sakibulhasanr15@gmail.com', 'aaaaaaaaaaaaaaaa'),
(6, 'Sakibul Hasan Rony', 'sakibulhasanr15@gmail.com', 'aaaaaaaaaaaaaa'),
(7, 'Sakibul Hasan Rony', 'sakibulhasanr15@gmail.com', 'aaaaaaaaaaaaaa'),
(8, 'Sakibul Hasan Rony', 'sakibulhasanr15@gmail.com', 'aaaaaaaaaaaaaa'),
(9, 'Sakibul Hasan Rony', 'sakibulhasanr15@gmail.com', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaah'),
(10, 'Sakibul Hasan Rony', 'sakibulhasanr15@gmail.com', 'aaaaaaaaaaaaaaaaaaaaaaaaaaaah'),
(11, 'Sakibul Hasan Rony', 'sakibulhasanr15@gmail.com', 'aaaaaaaaaaaaaa'),
(12, 'Sakibul Hasan Rony', 'sakibulhasanr15@gmail.com', 'aaaaaaaaaaaaaah'),
(13, 'Sakibul Hasan Rony', 'sakibulhasanr15@gmail.com', 'aaaaaaaaaaaa'),
(14, 'Sakibul Hasan Rony', 'sakibulhasanr15@gmail.com', 'aaaaaaaaaaaa'),
(15, 'ron', 'sakibulhasanr15@gmail.com', 'aaaaaaaaaaaa'),
(16, 'Sakibul Hasan Rony', 'sakibulhasanr15@gmail.com', 'aaaaaaaaaaa'),
(17, 'ron', 'sakibulhasanr15@gmail.com', 'aaaaaa');

-- --------------------------------------------------------

--
-- Table structure for table `donars`
--

CREATE TABLE `donars` (
  `ID` int(10) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `blood_group` varchar(10) NOT NULL,
  `city` varchar(10) NOT NULL,
  `state` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `donars`
--

INSERT INTO `donars` (`ID`, `name`, `email`, `phone`, `blood_group`, `city`, `state`) VALUES
(101, 'Sakibul Hasan Rony', 'sakibulhasanr15@gmail.com', '+8801761796208', 'A+', 'Dhaka', 'Dhaka'),
(102, 'Sakibul Hasan Rony', 'sakibulhasanr15@gmail.com', '+8801761796208', 'A+', 'Dhaka', 'Dhaka'),
(103, 'Sakibul Hasan Rony', 'sakibulhasanr15@gmail.com', '+8801761796208', 'A+', 'Dhaka', 'Dhaka'),
(104, 'Sakibul Hasan Rony', 'sakibulhasanr15@gmail.com', '+8801761796208', 'A+', 'Dhaka', 'Dhaka'),
(105, 'Sakibul Hasan Rony', 'sakibulhasanr15@gmail.com', '+8801761796208', 'A+', 'Dhaka', 'Dhaka'),
(106, 'Sakibul Hasan Rony', 'sakibulhasanr15@gmail.com', '+8801761796208', 'A+', 'Dhaka', 'Dhaka'),
(107, 'Sakibul Hasan Rony', 'sakibulhasanr15@gmail.com', '+8801761796208', 'A+', 'Dhaka', 'Dhaka'),
(108, 'Sakibul Hasan Rony', 'sakibulhasanr15@gmail.com', '+8801761796208', 'A+', 'Dhaka', 'Dhaka'),
(109, 'Sakibul Hasan Rony', 'sakibulhasanr15@gmail.com', '+8801761796208', 'A+', 'Dhaka', 'Dhaka'),
(110, 'Sakibul Hasan Rony', 'sakibulhasanr15@gmail.com', '+8801761796208', 'A+', 'Dhaka', 'Dhaka'),
(111, 'Sakibul Hasan Rony', 'sakibulhasanr15@gmail.com', '+8801761796208', 'AB+', 'Dhaka', 'Dhaka'),
(112, 'Sakibul Hasan Rony', 'sakibulhasanr15@gmail.com', '+8801761796208', 'AB+', 'Dhaka', 'Dhaka'),
(113, 'Sakibul Hasan Rony', 'sakibulhasanr15@gmail.com', '+8801761796208', 'AB+', 'Dhaka', 'Dhaka'),
(114, 'Sakibul Hasan Rony', 'sakibulhasanr15@gmail.com', '+8801761796208', 'AB+', 'Dhaka', 'Dhaka'),
(115, 'Sakibul Hasan Rony', 'sakibulhasanr15@gmail.com', '+8801761796208', 'AB+', 'Dhaka', 'Dhaka'),
(116, 'Sakibul Hasan Rony', 'sakibulhasanr15@gmail.com', '+8801761796208', 'AB+', 'Dhaka', 'Dhaka'),
(117, 'Sakibul Hasan Rony', 'sakibulhasanr15@gmail.com', '+8801761796208', 'AB+', 'Dhaka', 'Dhaka'),
(118, 'Sakibul Hasan Rony', 'sakibulhasanr15@gmail.com', '+880176179620', 'AB+', 'Dhaka', 'Dhaka'),
(119, 'Sakibul Hasan Rony', 'sakibulhasanr15@gmail.com', '+880176179620', 'AB+', 'Dhaka', 'Dhaka'),
(120, 'Sakibul Hasan Rony', 'sakibulhasanr15@gmail.com', '+880176179620', 'AB+', 'Dhaka', 'Dhaka'),
(121, 'Sakibul Hasan Rony', 'sakibulhasanr15@gmail.com', '+880176179620', 'B-', 'Dhaka', 'Dhaka'),
(122, 'Sakibul Hasan Rony', 'sakibulhasanr15@gmail.com', '+8801761796208', 'AB+', 'Dhaka', 'Dhaka'),
(123, 'Sakibul Hasan Rony', 'sakibulhasanr15@gmail.com', '+8801761796208', 'AB+', 'Dhaka', 'Dhaka');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `ID` int(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `donars`
--
ALTER TABLE `donars`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `donars`
--
ALTER TABLE `donars`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=124;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
