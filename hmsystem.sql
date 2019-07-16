-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 11, 2019 at 09:57 PM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `hmsystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
`Admin_id` int(11) NOT NULL,
  `username` varchar(33) NOT NULL,
  `password` varchar(33) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`Admin_id`, `username`, `password`) VALUES
(1, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE IF NOT EXISTS `appointment` (
`count` int(11) NOT NULL,
  `ddname` varchar(33) NOT NULL,
  `ppname` varchar(33) NOT NULL,
  `dproom` varchar(33) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`count`, `ddname`, `ppname`, `dproom`) VALUES
(1, 'Dr. Tisha Rahman', 'Sadia Begum', '201'),
(2, 'tisha', 'Sadia Begum', '201'),
(3, 'Dr. Mizan', 'Sadia Begum', '301'),
(4, 'nisha', 'Bilasi', '301'),
(5, 'nisha', 'Bilasi', '301'),
(6, 'nisha', 'Bilasi', '301'),
(7, 'nisha', 'Bilasi', '301');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE IF NOT EXISTS `department` (
`dept_id` int(11) NOT NULL,
  `dept_name` varchar(55) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`dept_id`, `dept_name`) VALUES
(1, 'Gynae'),
(2, 'Cardiology'),
(3, 'Surgery'),
(4, 'Paediatric'),
(11, 'ENT'),
(12, 'Pathology'),
(13, 'Psycology'),
(21, 'Orthopedics'),
(112, 'Pathology');

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE IF NOT EXISTS `doctor` (
`count` int(11) NOT NULL,
  `joinDate` varchar(33) NOT NULL,
  `Doctor_id` varchar(11) NOT NULL,
  `name` varchar(33) NOT NULL,
  `age` varchar(11) NOT NULL,
  `gender` varchar(11) NOT NULL,
  `blood` varchar(3) NOT NULL,
  `department` varchar(20) NOT NULL,
  `phone` varchar(14) NOT NULL,
  `email` varchar(33) NOT NULL,
  `marital` varchar(33) NOT NULL,
  `address` varchar(50) NOT NULL,
  `room` varchar(11) NOT NULL,
  `user` varchar(11) NOT NULL,
  `pass` varchar(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`count`, `joinDate`, `Doctor_id`, `name`, `age`, `gender`, `blood`, `department`, `phone`, `email`, `marital`, `address`, `room`, `user`, `pass`) VALUES
(7, '12-05-1945', '17', 'Dr. Bilasi', '22', 'Female', 'O+', 'Paediatric', '+88017766536', 'bilasi@gmail.com', 'Unmarried', 'Modhusahid', '202', 'bilai', 'bilai'),
(9, '26-09-2018', '1123', 'Dr. Mizanur Rahaman', '34', 'Male', 'O+', 'Gynae', '+8801719339918', 'mizanlnd@gmail.com', 'Married', 'Mirboxtula, Sylhet', '301', 'Dr. Mizan', 'mizanlnd'),
(10, '23-08-2018', '1111', 'Dr. Tisha Rahman', '28', 'Female', 'B+', 'Gynae', '+8801860270024', 'ishratjahantisha370@gmail.com', 'Married', '37 Azadi, Mirboxtula, Sylhet\n', '101', 'tisha1', 'tisha1'),
(11, '12-10-2018', '1233', 'Dr. Nisha', '23', 'Female', 'O+', 'ENT', '+8801789903223', 'nisha@gmail.com', 'Married', 'mirboxtula', '301', 'nisha', 'nisha'),
(13, '23-01-2018', '1254', 'Dr. Rita', '29', 'Female', 'AB+', 'Paediatric', '+8801752738922', 'ritaere@gmail.com', 'Married', 'Talatula', '202', 'rita', 'rita'),
(16, '12-03-2018', '1234', 'ghsvdasgvd', '23', 'Female', 'AB+', 'Gynae', '+88012323434', 'hasjh@ksjda.com', 'Married', 'sdvghasdawjh', '301', 'qwer', 'qwer'),
(18, '12-09-2018', '1239', 'Dr. Mahira', '56', 'Male', 'AB+', 'Cardiology', '+880562378990', 'sjhsxbh@jdhj.com', 'Married', 'wfdwegyg', '201', 'mahira', 'mahira'),
(19, '23-12-2019', '256', 'Dr. Rafiq', '35', 'Male', 'O+', 'Paediatric', '+8801761645545', 'rafiqulislam@gmail.com', 'Unmarried', 'Lamabazar,Sylhet', '301', 'rafiq', 'rafiq'),
(20, '18-02-2011', '19', 'Dr. Sakila', '45', 'Female', 'AB+', 'Gynae', '+8801758099871', 'sakila@gmail.com', 'Married', 'Tilaghore', 'Cabin-1', 'sakila', 'sakila');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE IF NOT EXISTS `patient` (
`count` int(11) NOT NULL,
  `date` varchar(11) NOT NULL,
  `patient_id` varchar(11) NOT NULL,
  `name` varchar(11) NOT NULL,
  `age` varchar(11) NOT NULL,
  `gender` varchar(11) NOT NULL,
  `blood` varchar(11) NOT NULL,
  `department` varchar(33) NOT NULL,
  `phone` varchar(14) NOT NULL,
  `disease` varchar(11) NOT NULL,
  `status` varchar(11) NOT NULL,
  `address` varchar(33) NOT NULL,
  `ward` varchar(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`count`, `date`, `patient_id`, `name`, `age`, `gender`, `blood`, `department`, `phone`, `disease`, `status`, `address`, `ward`) VALUES
(1, '02-12-2017', '45', 'Sadia Begum', '34', 'Female', 'AB+', 'Medicine', '+880156467785', 'Fever', 'Married', '23 payra', '21'),
(2, '23-10-2018', '123', 'Bilasi', '34', 'Female', 'A+', 'ENT', '+8801734663321', 'Headhache', 'Married', 'Mirboxtula', '101'),
(7, '23-09-2018', '1233', 'Pranto', '24', 'Male', 'O+', 'ENT', '01680929776', 'Headache', 'Married', 'Subid Bazar', '101'),
(8, '12-02-2018', '32', 'Monica', '23', 'Female', 'A-', 'Surgery', '01792838278', 'jnjkan', 'Unmarried', 'jkxasxnaskl', 'None');

-- --------------------------------------------------------

--
-- Table structure for table `receptionist`
--

CREATE TABLE IF NOT EXISTS `receptionist` (
`count` int(11) NOT NULL,
  `joining` varchar(11) NOT NULL,
  `Receptionist_id` varchar(33) NOT NULL,
  `name` varchar(33) NOT NULL,
  `age` varchar(11) NOT NULL,
  `gender` varchar(11) NOT NULL,
  `blood` varchar(11) NOT NULL,
  `phone` varchar(14) NOT NULL,
  `address` varchar(50) NOT NULL,
  `status` varchar(14) NOT NULL,
  `username` varchar(14) NOT NULL,
  `password` varchar(14) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `receptionist`
--

INSERT INTO `receptionist` (`count`, `joining`, `Receptionist_id`, `name`, `age`, `gender`, `blood`, `phone`, `address`, `status`, `username`, `password`) VALUES
(2, '03-12-2017', '1234', 'Sohel', '33', 'Male', 'O+', '+8801719339918', 'Mirboxtula, Sylhet', 'Married', 'sohel', 'sohel'),
(11, '01-09-2018', '120', 'Bilasi', '23', 'Female', 'AB+', 'bilasi', 'Unmarried', 'Modhu sahid', 'bilasi', 'bilasi'),
(12, '12-05-2018', '121', 'Rafia', '24', 'Female', 'O+', '+8801818362733', 'Married', 'modhu Sahid', 'rafia', 'rafia'),
(13, '23-10-2018', '112', 'Bilasi', '23', 'Female', 'B+', '+8801761644976', 'Unmarried', 'Subidbazar', 'bilasi', 'bilasi'),
(14, '23-12-2018', '12', 'Ratul Hossain', '27', 'Male', 'O+', '+8801765657723', 'Unmarried', 'Tilaghore', 'ratul', 'ratul');

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE IF NOT EXISTS `room` (
`count` int(11) NOT NULL,
  `id` varchar(33) NOT NULL,
  `type` varchar(33) NOT NULL,
  `name` varchar(33) NOT NULL,
  `reserve` varchar(33) NOT NULL,
  `charge` varchar(33) NOT NULL,
  `status` varchar(33) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`count`, `id`, `type`, `name`, `reserve`, `charge`, `status`) VALUES
(2, '111', 'Single', 'Cabin-1', 'Sohel', '1200', 'Booked'),
(3, '112', 'Single', 'Cabin-2', 'None', '1200', 'Empty'),
(4, '113', 'Single', 'Cabin-3', 'None', '1200', 'Empty'),
(5, '114', 'Double', 'Cabin-4', 'None', '2100', 'Empty'),
(6, '115', 'Double', 'Cabin-5', 'None', '2100', 'Empty'),
(7, '116', 'Double', 'Cabin-6', 'None', '2100', 'Empty'),
(8, '117', 'VIP', 'Cabin-7', 'None', '5000', 'Empty'),
(9, '118', 'VIP', 'Cabin-8', 'None', '5000', 'Empty'),
(10, '211', 'None', 'Ward-1', 'None', '200', 'Empty'),
(13, '213', 'None', 'Ward-3', 'None', '200', 'Empty');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
 ADD PRIMARY KEY (`Admin_id`);

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
 ADD PRIMARY KEY (`count`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
 ADD PRIMARY KEY (`dept_id`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
 ADD PRIMARY KEY (`count`), ADD UNIQUE KEY `id` (`Doctor_id`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
 ADD PRIMARY KEY (`count`), ADD UNIQUE KEY `patient_id` (`patient_id`);

--
-- Indexes for table `receptionist`
--
ALTER TABLE `receptionist`
 ADD PRIMARY KEY (`count`), ADD UNIQUE KEY `Receptionist_id` (`Receptionist_id`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
 ADD PRIMARY KEY (`count`), ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
MODIFY `Admin_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
MODIFY `count` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
MODIFY `dept_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=113;
--
-- AUTO_INCREMENT for table `doctor`
--
ALTER TABLE `doctor`
MODIFY `count` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
MODIFY `count` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `receptionist`
--
ALTER TABLE `receptionist`
MODIFY `count` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `room`
--
ALTER TABLE `room`
MODIFY `count` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
