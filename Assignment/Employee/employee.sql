-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 06, 2017 at 06:52 PM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 7.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `register`
--

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `EmpNo` int(10) NOT NULL,
  `Ename` varchar(50) NOT NULL,
  `Job` varchar(25) NOT NULL,
  `MGR` float NOT NULL,
  `HireDate` date NOT NULL,
  `Salary` float NOT NULL,
  `DeptNo` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`EmpNo`, `Ename`, `Job`, `MGR`, `HireDate`, `Salary`, `DeptNo`) VALUES
(1, 'Maryam', 'Engineer', 6000, '0000-00-00', 20000, 22),
(2, 'Saba', 'Engineer', 6000, '0000-00-00', 20000, 22),
(3, 'Saket', 'Engineer', 6000, '0000-00-00', 20000, 22),
(4, 'Mukesh', 'Sales Exe', 6000, '0000-00-00', 20000, 23),
(5, 'Nafia', 'Accountant', 6000, '0000-00-00', 20000, 21),
(6, 'Vaibhav', 'Junior Acc', 6000, '0000-00-00', 20000, 21);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`EmpNo`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
