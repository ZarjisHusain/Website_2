-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 22, 2022 at 11:39 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bus`
--

-- --------------------------------------------------------

--
-- Table structure for table `booking`
--

CREATE TABLE `booking` (
  `Name` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Phone` int(11) NOT NULL,
  `Bus Provider` varchar(100) NOT NULL,
  `Location` varchar(100) NOT NULL,
  `Destination` varchar(100) NOT NULL,
  `Booked Tickets` int(11) NOT NULL,
  `Order ID` int(100) NOT NULL,
  `Date` date NOT NULL,
  `Price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `booking`
--

INSERT INTO `booking` (`Name`, `Email`, `Phone`, `Bus Provider`, `Location`, `Destination`, `Booked Tickets`, `Order ID`, `Date`, `Price`) VALUES
('Mahdi', 'mahdi@gmail.com', 1883422698, 'Hanif', 'Dhaka', 'Bogura', 4, 1, '2022-04-28', 2000);

-- --------------------------------------------------------

--
-- Table structure for table `busroute`
--

CREATE TABLE `busroute` (
  `Bus Name` varchar(100) NOT NULL,
  `Place1` varchar(100) NOT NULL,
  `Place2` varchar(100) NOT NULL,
  `Fare` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `busroute`
--

INSERT INTO `busroute` (`Bus Name`, `Place1`, `Place2`, `Fare`) VALUES
('BRTC1', 'Dhaka', 'Chittagong', '450'),
('BRTC1', 'Dhaka', 'Chittagong', '450'),
('Alif Poribahan', 'Mirpur', 'Mohakhali', '10'),
('Alif Poribahan', 'Mirpur', 'Mohakhali', '10'),
('Rab Rab', 'BRACU', 'Soinik Club', '120'),
('Rab Rab', 'BRACU', 'Soinik Club', '120');

-- --------------------------------------------------------

--
-- Table structure for table `login page`
--

CREATE TABLE `login page` (
  `ID` int(11) NOT NULL,
  `Username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login page`
--

INSERT INTO `login page` (`ID`, `Username`, `email`, `Password`) VALUES
(0, 'Mahdi', 'mahdiahmed2121@gmail.com', '12345678');

-- --------------------------------------------------------

--
-- Table structure for table `offers`
--

CREATE TABLE `offers` (
  `Provider` varchar(100) NOT NULL,
  `Description` text NOT NULL,
  `Price` int(11) NOT NULL,
  `Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `offers`
--

INSERT INTO `offers` (`Provider`, `Description`, `Price`, `Date`) VALUES
('ENA', 'AC Bus Dhaka to Chittagong with 3 days stay at Lounge Boze at a 15% Discount. Full family package.', 4000, '2022-04-29');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `Type` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `Type`) VALUES
(8, 'Mahdi', 'mahdiahmed2121@gmail.com', '1234578', 'Premium');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `booking`
--
ALTER TABLE `booking`
  ADD PRIMARY KEY (`Order ID`);

--
-- Indexes for table `login page`
--
ALTER TABLE `login page`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `offers`
--
ALTER TABLE `offers`
  ADD PRIMARY KEY (`Provider`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
