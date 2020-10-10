-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 10, 2020 at 08:20 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `onlinecourse`
--
CREATE DATABASE IF NOT EXISTS `onlinecourse` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `onlinecourse`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'admin', 'f925916e2754e5e03f75dd58a5733251', '2017-01-24 16:21:18', '21-05-2018 03:31:37 PM');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `id` int(11) NOT NULL,
  `courseCode` varchar(255) DEFAULT NULL,
  `courseName` varchar(255) DEFAULT NULL,
  `courseUnit` varchar(255) DEFAULT NULL,
  `noofSeats` int(11) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`id`, `courseCode`, `courseName`, `courseUnit`, `noofSeats`, `creationDate`, `updationDate`) VALUES
(5, '100', 'Web Technology', '6', 30, '2020-10-10 04:59:54', NULL),
(6, '200', 'HTML', '5', 30, '2020-10-10 06:00:29', NULL),
(7, '300', 'Operating System', '6', 35, '2020-10-10 06:01:35', NULL),
(8, '400', 'DBMS', '4', 30, '2020-10-10 06:01:58', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `courseenrolls`
--

CREATE TABLE `courseenrolls` (
  `id` int(11) NOT NULL,
  `studentRegno` varchar(255) DEFAULT NULL,
  `pincode` varchar(255) DEFAULT NULL,
  `session` int(11) DEFAULT NULL,
  `department` int(11) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `semester` int(11) DEFAULT NULL,
  `course` int(11) DEFAULT NULL,
  `enrollDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `courseenrolls`
--

INSERT INTO `courseenrolls` (`id`, `studentRegno`, `pincode`, `session`, `department`, `level`, `semester`, `course`, `enrollDate`) VALUES
(4, '10806121', '715948', 4, 7, 6, 5, 2, '2018-05-21 10:19:41'),
(5, '12345', '131863', 4, 7, 6, 6, 1, '2018-08-25 05:52:34'),
(6, '10806121', '715948', 4, 1, 6, 5, 1, '2020-09-23 08:28:50'),
(7, '10806123', '485138', 6, 8, 5, 7, 5, '2020-10-10 06:11:04');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `id` int(11) NOT NULL,
  `department` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`id`, `department`, `creationDate`) VALUES
(8, 'IT', '2020-10-07 10:29:33'),
(9, 'Civil', '2020-10-07 10:29:44'),
(10, 'EC', '2020-10-10 05:49:33'),
(11, 'Mechanical', '2020-10-10 05:50:03'),
(12, 'Computer', '2020-10-10 05:59:36');

-- --------------------------------------------------------

--
-- Table structure for table `level`
--

CREATE TABLE `level` (
  `id` int(11) NOT NULL,
  `level` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `level`
--

INSERT INTO `level` (`id`, `level`, `creationDate`) VALUES
(5, 'Level 1', '2017-02-09 19:04:04'),
(6, 'level 2', '2017-02-09 19:04:12'),
(7, 'level 4', '2017-02-09 19:04:17');

-- --------------------------------------------------------

--
-- Table structure for table `semester`
--

CREATE TABLE `semester` (
  `id` int(11) NOT NULL,
  `semester` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `semester`
--

INSERT INTO `semester` (`id`, `semester`, `creationDate`, `updationDate`) VALUES
(7, '1st', '2020-10-10 05:54:25', NULL),
(8, '2nd', '2020-10-10 05:54:31', NULL),
(9, '3rd', '2020-10-10 05:54:39', NULL),
(10, '4th', '2020-10-10 05:54:51', NULL),
(11, '5th', '2020-10-10 05:54:58', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `session`
--

CREATE TABLE `session` (
  `id` int(11) NOT NULL,
  `session` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `session`
--

INSERT INTO `session` (`id`, `session`, `creationDate`) VALUES
(5, 'Introduction', '2020-10-10 05:56:23'),
(6, 'Programming', '2020-10-10 05:58:07'),
(7, 'Networking', '2020-10-10 05:58:40'),
(8, 'QnA', '2020-10-10 05:58:55');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `StudentRegno` varchar(255) NOT NULL,
  `studentPhoto` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `studentName` varchar(255) DEFAULT NULL,
  `pincode` varchar(255) DEFAULT NULL,
  `session` varchar(255) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `semester` varchar(255) DEFAULT NULL,
  `cgpa` decimal(10,2) DEFAULT NULL,
  `creationdate` timestamp NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`StudentRegno`, `studentPhoto`, `password`, `studentName`, `pincode`, `session`, `department`, `semester`, `cgpa`, `creationdate`, `updationDate`) VALUES
('10806121', '', '202cb962ac59075b964b07152d234b70', 'Mahesh singh', '715948', '', '', '', '7.25', '2017-02-11 19:38:32', '21-05-2018 03:20:40 PM'),
('10806123', NULL, '81dc9bdb52d04dc20036dbd8313ed055', 'Darshan Purohit', '485138', NULL, NULL, NULL, NULL, '2020-10-10 05:53:25', NULL),
('10806124', NULL, '827ccb0eea8a706c4c34a16891f84e7b', 'Dhru patel', '744733', NULL, NULL, NULL, NULL, '2020-10-10 05:53:54', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `studentRegno` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT current_timestamp(),
  `logout` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `studentRegno`, `userip`, `loginTime`, `logout`, `status`) VALUES
(1, '10806121', 0x3a3a3100000000000000000000000000, '2017-02-11 20:05:58', '', 1),
(2, '10806121', 0x3a3a3100000000000000000000000000, '2017-02-11 20:07:18', '', 1),
(3, '10806121', 0x3a3a3100000000000000000000000000, '2017-02-11 20:08:46', '', 1),
(4, '10806121', 0x3a3a3100000000000000000000000000, '2017-02-11 20:26:15', '', 1),
(5, '10806121', 0x3a3a3100000000000000000000000000, '2017-02-11 20:27:11', '', 1),
(6, '10806121', 0x3a3a3100000000000000000000000000, '2017-02-11 20:28:19', '', 1),
(7, '10806121', 0x3a3a3100000000000000000000000000, '2017-02-11 20:29:30', '', 1),
(8, '10806121', 0x3a3a3100000000000000000000000000, '2017-02-11 20:30:39', '12-02-2017 02:00:40 AM', 1),
(9, '10806121', 0x3a3a3100000000000000000000000000, '2017-02-11 20:32:12', '12-02-2017 02:21:40 AM', 1),
(10, '10806121', 0x3a3a3100000000000000000000000000, '2017-02-11 20:51:50', '12-02-2017 05:14:45 AM', 1),
(11, '10806121', 0x3a3a3100000000000000000000000000, '2017-02-12 05:41:24', '12-02-2017 11:49:58 AM', 1),
(12, '10806121', 0x3a3a3100000000000000000000000000, '2017-02-12 06:20:05', '', 1),
(13, '10806121', 0x3a3a3100000000000000000000000000, '2017-02-12 06:20:23', '12-02-2017 12:09:59 PM', 1),
(14, '10806121', 0x3a3a3100000000000000000000000000, '2018-05-21 09:49:06', '21-05-2018 03:30:53 PM', 1),
(15, '10806121', 0x3a3a3100000000000000000000000000, '2018-05-21 10:19:15', '', 1),
(16, '12345', 0x3a3a3100000000000000000000000000, '2018-08-25 05:51:42', '25-08-2018 11:23:02 AM', 1),
(17, '10806121', 0x3a3a3100000000000000000000000000, '2020-09-23 08:26:07', '23-09-2020 01:59:56 PM', 1),
(18, '10806121', 0x3a3a3100000000000000000000000000, '2020-10-07 09:12:51', NULL, 1),
(19, '10806121', 0x3a3a3100000000000000000000000000, '2020-10-07 16:21:59', '07-10-2020 09:54:39 PM', 1),
(20, '10806121', 0x3a3a3100000000000000000000000000, '2020-10-07 16:57:49', '07-10-2020 10:30:19 PM', 1),
(21, '10806121', 0x3a3a3100000000000000000000000000, '2020-10-09 15:50:01', NULL, 1),
(22, '10806121', 0x3a3a3100000000000000000000000000, '2020-10-10 04:51:34', '10-10-2020 11:08:04 AM', 1),
(23, '10806121', 0x3a3a3100000000000000000000000000, '2020-10-10 05:41:50', '10-10-2020 11:36:31 AM', 1),
(24, '10806121', 0x3a3a3100000000000000000000000000, '2020-10-10 06:06:39', '10-10-2020 11:39:34 AM', 1),
(25, '10806123', 0x3a3a3100000000000000000000000000, '2020-10-10 06:09:57', NULL, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courseenrolls`
--
ALTER TABLE `courseenrolls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `level`
--
ALTER TABLE `level`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `semester`
--
ALTER TABLE `semester`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `session`
--
ALTER TABLE `session`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`StudentRegno`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `courseenrolls`
--
ALTER TABLE `courseenrolls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `level`
--
ALTER TABLE `level`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `semester`
--
ALTER TABLE `semester`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `session`
--
ALTER TABLE `session`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
