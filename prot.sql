-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 22, 2022 at 09:39 AM
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
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE `appointments` (
  `AppointmentEntry` int(11) NOT NULL,
  `Datez` varchar(30) NOT NULL,
  `Timez` varchar(10) NOT NULL,
  `AppointmentFrom` varchar(20) NOT NULL,
  `AppointmentTo` varchar(20) NOT NULL,
  `ClientInfo` text NOT NULL,
  `Hospital` varchar(50) NOT NULL,
  `Department` varchar(20) NOT NULL,
  `Diagnosis` text NOT NULL,
  `Payment` varchar(10) NOT NULL,
  `Statuss` varchar(20) DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `appointments`
--

INSERT INTO `appointments` (`AppointmentEntry`, `Datez`, `Timez`, `AppointmentFrom`, `AppointmentTo`, `ClientInfo`, `Hospital`, `Department`, `Diagnosis`, `Payment`, `Statuss`) VALUES
(1, '2022-03-25 14:19', '', 'victotis@gmail.com', 'Ian Murithi', 'Name: Victor OtienoEmail: victotis@gmail.com', 'PGH level 5', 'Dental care', 'sadfggh cvtyuii tyvubinio \r\ntuyik uvyino uyijkhhhhhhljh', 'Insurance', 'Done'),
(2, '2022-03-24', '18:54', 'victotis@gmail.com', 'Ian Murithi', 'Name: Victor OtienoEmail: victotis@gmail.com', 'Equity Afya hospital', 'Dental care', 'qwewrtryuiuoin\r\nrerfgihnjm', 'Insurance', 'Cancel'),
(5, '2022-03-30', '10:00', 'victotis@gmail.com', 'Ian Murithi', 'Name: Victor OtienoEmail: victotis@gmail.com', 'Joe Ellen women\'s hospital', 'Dental care', 'zwxecrvtbyiomp\r\nw34ec5rvtbynumi,o.p', 'Cash', 'Done'),
(6, '2022-03-26', '18:46', 'victotis@gmail.com', 'Ian Murithi', 'Name: Victor OtienoEmail: victotis@gmail.com', 'Mediheal HospitalNairobi Women', 'Otology', 'qwertyui\r\nwertyuio tyuiop', 'Insurance', 'Accepted'),
(7, '2022-03-24', '07:03', 'victotis@gmail.com', 'Ian Murithi', 'Name: Victor OtienoEmail: victotis@gmail.com', 'Joe Ellen women\'s hospital', 'Dental care', 'I am not even sure', 'Cash', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `UserId` int(254) NOT NULL,
  `UserName` varchar(20) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `Useremail` varchar(30) NOT NULL,
  `Userrole` varchar(10) NOT NULL,
  `Userpassword` varchar(254) NOT NULL,
  `Registrationdate` varchar(20) NOT NULL,
  `Token` varchar(254) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`UserId`, `UserName`, `Gender`, `Useremail`, `Userrole`, `Userpassword`, `Registrationdate`, `Token`) VALUES
(1, 'qwertyui', 'Male', 'qwertyui@qwerty.com', 'Male', '$2y$10$6WnuQ4VQI.oYimNk4kqvQO2m5lDQnZz6FXlqdbwgCJ6znkABT6ZZe', '2222/03/20', '6d103a7552a3017f510c43fdbf39f831ff5da3e9e10f45891e5f3912b10cbc4ecae298c3a936fb9bd2c033b115d11d9cfa6c'),
(2, 'Ian Otieno', 'Male', 'qwertyui@gmail.com', 'Male', '$2y$10$A18SVqjlJXrgmNitXMyty.RBaHa6MKHNVXKyH0RgwXFa.irY3MM6C', '2222/03/21', '2f4053851787b2ebddaf85c44660347a4c57d687d7d77de6a9a770cf253af71b0adc51a6a8b6f03a398484aef05d881a9094'),
(5, 'Victor Otieno', 'Male', 'victotis@gmail.com', 'Patient', '$2y$10$Wh/jO1mq20lDOApetAhMi.bOLTyyrjEBZFrAjBmXdcB67aX1heAGu', '2222/03/21', '7b830a7de20bb4eecc848de659c15833c21c108c6f5181d00e12d793b0281f602ca3426d74ecc17c2d8ae6a90e559fe56f46'),
(6, 'Ian Murithi', 'Male', 'murithiian@gmail.com', 'Doctor', '$2y$10$4AQE0tcE0ai1ZU7FQUwSrOpN27boyVDfa010zu/r4yGk1SDUjxI.a', '2222/03/21', '40bc80f66a8368727503b38baf1c90ef2a2b68f22d22026fdeb232af618fcafb9a0522db5499059b1524cc557fd041d071ca');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `MessageId` int(11) NOT NULL,
  `Datez` varchar(20) NOT NULL,
  `Sender` varchar(30) NOT NULL,
  `Receiver` varchar(30) NOT NULL,
  `Messages` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`MessageId`, `Datez`, `Sender`, `Receiver`, `Messages`) VALUES
(1, '', 'Victor Otieno', 'Ian Murithi', 'When can i come for my appointment'),
(2, '', 'Ian Murithi', 'Victor Otieno', 'You can come tomorrow at 9:30 am'),
(3, '', 'Ian Murithi', 'Victor Otieno', 'Am not available at the moment'),
(4, '2222/03/22', 'Ian Murithi', 'Victor Otieno', 'I will be available on saturday afternoon');

-- --------------------------------------------------------

--
-- Table structure for table `try`
--

CREATE TABLE `try` (
  `Entry` int(11) NOT NULL,
  `Datez` varchar(10) NOT NULL,
  `Hospital` varchar(15) NOT NULL,
  `Diagnosis` text NOT NULL,
  `Doctor` varchar(10) NOT NULL,
  `Paymant` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`AppointmentEntry`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`UserId`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`MessageId`);

--
-- Indexes for table `try`
--
ALTER TABLE `try`
  ADD PRIMARY KEY (`Entry`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointments`
--
ALTER TABLE `appointments`
  MODIFY `AppointmentEntry` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `UserId` int(254) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `MessageId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `try`
--
ALTER TABLE `try`
  MODIFY `Entry` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
