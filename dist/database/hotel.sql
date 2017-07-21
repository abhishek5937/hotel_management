-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 18, 2017 at 02:31 PM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `hotel`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE IF NOT EXISTS `customer` (
  `cust_code` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `dob` date NOT NULL,
  `maritial` varchar(100) NOT NULL,
  `nationality` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `address` varchar(1000) NOT NULL,
  `booking_no` int(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `room_no` int(100) NOT NULL,
  `persons` int(100) NOT NULL,
  `relationship` varchar(100) NOT NULL,
  `arrival` date NOT NULL,
  `departure` date NOT NULL,
  `image` varchar(1000) NOT NULL,
  `files` varchar(1000) NOT NULL,
  PRIMARY KEY (`cust_code`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`cust_code`, `name`, `gender`, `dob`, `maritial`, `nationality`, `phone`, `email`, `address`, `booking_no`, `type`, `room_no`, `persons`, `relationship`, `arrival`, `departure`, `image`, `files`) VALUES
('12354', 'Kunal', 'Male', '1996-07-11', 'Unmarried', 'Indian', '8997977779', 'kunal@gmail.com', 'Bareta', 1010, 'Double Room', 303, 1, 'friends', '2017-07-12', '2017-07-18', '1500111322903kunal.jpg', '1500234990325starburn.txt'),
('12355', 'Yuvraj', 'Male', '1996-07-18', 'Unmarried', 'Indian', '9568498165', 'yuvi@gmail.com', 'Jalandhar', 1011, 'Double Room', 302, 1, '', '2017-07-14', '2017-07-17', '1500111813533yuvi.jpg', '1500238671237Document.txt'),
('12356', 'Jyotsana', 'Female', '1997-07-23', 'Unmarried', 'Indian', '9757855755', 'jojo@gmail.com', 'hoshiyarpur', 1012, 'Single Room (AC)', 410, 1, 'friends', '2017-07-19', '2017-07-25', '1500277547415jojo.jpg', '1500277547432Document.txt'),
('12357', 'Akash', 'Male', '1996-07-16', 'Unmarried', 'Indian', '9646468464', 'vishwa@gmail.com', 'bihar', 1013, 'Single Room (AC)', 408, 1, '', '2017-07-18', '2017-07-25', '1500296670391vishwa.jpg', ''),
('12358', 'Anish', 'Male', '1996-07-19', 'Unmarried', 'Indian', '9484846978', 'anish@gmail.com', 'yamunanagar', 1014, 'Deluxe Room', 204, 1, '', '2017-07-17', '2017-07-26', '1500304732406anish.jpg', '1500304732414Document.txt'),
('12359', 'Aditya', 'Male', '1996-07-14', 'Unmarried', 'Indian', '9454543545', 'adi@gmail.com', 'kanpur', 1015, 'Double Room', 304, 1, '', '2017-07-17', '2017-07-26', '1500365853664aditya.jpg', '1500365853677Document.txt'),
('12360', 'Ankit', 'Male', '1996-07-19', 'Unmarried', 'Indian', '4948948984', 'ank@gmail.com', 'aaa', 1016, 'Double Room', 303, 1, '', '2017-07-19', '2017-07-26', '1500371946673ankit.jpg', '1500371946682Document.txt');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE IF NOT EXISTS `employee` (
  `empid` int(100) NOT NULL,
  `empname` varchar(100) NOT NULL,
  `father` varchar(100) NOT NULL,
  `empgender` varchar(100) NOT NULL,
  `empaddress` varchar(100) NOT NULL,
  `empdob` date NOT NULL,
  `qualification` varchar(100) NOT NULL,
  `salary` varchar(100) NOT NULL,
  `designation` varchar(100) NOT NULL,
  `joiningdate` date NOT NULL,
  `image` varchar(200) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `files` varchar(1000) NOT NULL,
  PRIMARY KEY (`empid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`empid`, `empname`, `father`, `empgender`, `empaddress`, `empdob`, `qualification`, `salary`, `designation`, `joiningdate`, `image`, `username`, `password`, `type`, `files`) VALUES
(1010, 'Divyansh', 'Sharma', 'Male', 'Model Town', '1997-07-18', 'Undergraduate', '50000', 'Assistant Manager', '2017-07-12', '1500062652511dvd.jpg', 'dvd', '123', 'Admin', ''),
(1011, 'Harkirat', 'Walia', 'Male', 'Jalandhar', '1996-07-13', 'Undergraduate', '40000', 'Receptionist', '2017-07-18', '1500239612644harkirat.jpg', 'harkirat', '123', 'Staff', '1500237419060starburn.txt'),
(1013, 'Abhishek', 'JP Jay', 'Male', 'Jalandhar', '1996-07-04', 'Undergraduate', '50000', 'Manager', '2017-07-10', '1500359946766abhi.jpg', 'abhi', '1234', 'Admin', '');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE IF NOT EXISTS `payment` (
  `bill_no` int(100) NOT NULL,
  `cust_code` int(100) NOT NULL,
  `date` date NOT NULL,
  `time` varchar(100) NOT NULL,
  `total` varchar(1000) NOT NULL,
  PRIMARY KEY (`bill_no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`bill_no`, `cust_code`, `date`, `time`, `total`) VALUES
(110, 12355, '2017-07-17', '12:43::30', '11904.0'),
(112, 12357, '2017-07-17', '18:45::10', '19712.0'),
(113, 12354, '2017-07-17', '20:51::51', '24576.0'),
(114, 12358, '2017-07-18', '11:32::00', '57600.0'),
(115, 12359, '2017-07-18', '15:35::41', '38016.0');

-- --------------------------------------------------------

--
-- Table structure for table `roomdetails`
--

CREATE TABLE IF NOT EXISTS `roomdetails` (
  `roomno` int(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `rate` varchar(100) NOT NULL,
  PRIMARY KEY (`roomno`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `roomdetails`
--

INSERT INTO `roomdetails` (`roomno`, `type`, `description`, `rate`) VALUES
(101, 'Suite', 'Well Furnished AC, TV, WiFi, Room Service,Tea and coffee making facilities, Sightseeing, Laundry and dry cleaning', '6000'),
(102, 'Suite', 'Well Furnished AC, TV, WiFi, Room Service,Tea and coffee making facilities, Sightseeing, Laundry and dry cleaning', '6000'),
(103, 'Suite', 'Well Furnished AC, TV, WiFi, Room Service,Tea and coffee making facilities, Sightseeing, Laundry and dry cleaning', '6000'),
(104, 'Suite', 'Well Furnished AC, TV, WiFi, Room Service,Tea and coffee making facilities, Sightseeing, Laundry and dry cleaning', '6000'),
(105, 'Suite', 'Well Furnished AC, TV, WiFi, Room Service,Tea and coffee making facilities, Sightseeing, Laundry and dry cleaning', '6000'),
(201, 'Deluxe Room', 'Well Furnished AC, TV, WiFi, Room Service,Tea and coffee making facilities, Sightseeing', '5000'),
(202, 'Deluxe Room', 'Well Furnished AC, TV, WiFi, Room Service,Tea and coffee making facilities, Sightseeing', '5000'),
(203, 'Deluxe Room', 'Well Furnished AC, TV, WiFi, Room Service,Tea and coffee making facilities, Sightseeing', '5000'),
(204, 'Deluxe Room', 'Well Furnished AC, TV, WiFi, Room Service,Tea and coffee making facilities, Sightseeing', '5000'),
(205, 'Deluxe Room', 'Well Furnished AC, TV, WiFi, Room Service,Tea and coffee making facilities, Sightseeing', '5000'),
(301, 'Double Room', 'Well Furnished AC', '3000'),
(302, 'Double Room', 'Well Furnished AC, TV', '3100'),
(303, 'Double Room', 'Well Furnished AC, TV, WiFi', '3200'),
(304, 'Double Room', 'Well Furnished AC, TV, WiFi, Room Service', '3300'),
(305, 'Double Room', 'Well Furnished AC, TV, WiFi, Room Service,Tea and coffee making facilities', '3400'),
(306, 'Superior Twins', 'Well Furnished AC', '3000'),
(307, 'Superior Twins', 'Well Furnished AC, TV', '3100'),
(308, 'Superior Twins', 'Well Furnished AC, TV, WiFi', '3200'),
(309, 'Superior Twins', 'Well Furnished AC, TV, WiFi, Room Service', '3300'),
(310, 'Superior Twins', 'Well Furnished AC, TV, WiFi, Room Service,Tea and coffee making facilities', '3400'),
(401, 'Single Room (Non AC)', 'Well Furnished Non AC', '1500'),
(402, 'Single Room (Non AC)', 'Well Furnished Non AC, Gizar', '1600'),
(403, 'Single Room (Non AC)', 'Well Furnished Non AC, Gizar, TV', '1700'),
(404, 'Single Room (Non AC)', 'Well Furnished Non AC, Gizar, TV, Landline', '1800'),
(405, 'Single Room (Non AC)', 'Well Furnished Non AC, Gizar, TV, Landline, WiFi', '1900'),
(406, 'Single Room (AC)', 'Well Furnished AC', '2000'),
(407, 'Single Room (AC)', 'Well Furnished AC, TV', '2100'),
(408, 'Single Room (AC)', 'Well Furnished AC, TV, WiFi', '2200'),
(409, 'Single Room (AC)', 'Well Furnished AC, TV, WiFi, Room Service', '2300'),
(410, 'Single Room (AC)', 'Well Furnished AC, TV, WiFi, Room Service,Tea and coffee making facilities', '2400');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
