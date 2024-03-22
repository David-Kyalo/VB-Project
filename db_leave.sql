-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 22, 2024 at 11:50 AM
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
-- Database: `db_leave`
--

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `EMPID` varchar(60) NOT NULL,
  `emp_fname` varchar(60) DEFAULT NULL,
  `emp_lname` varchar(60) DEFAULT NULL,
  `emp_mname` varchar(60) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `contact` varchar(20) DEFAULT NULL,
  `status` varchar(30) DEFAULT NULL,
  `birth_date` date DEFAULT NULL,
  `birth_place` varchar(100) DEFAULT NULL,
  `emp_sex` varchar(10) DEFAULT NULL,
  `emp_age` int(10) DEFAULT NULL,
  `emerg_contct` varchar(25) DEFAULT NULL,
  `REMAININGLEAVE` double NOT NULL,
  `DEFAULTLEAVE` double NOT NULL,
  `ONLEAVE` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`EMPID`, `emp_fname`, `emp_lname`, `emp_mname`, `address`, `contact`, `status`, `birth_date`, `birth_place`, `emp_sex`, `emp_age`, `emerg_contct`, `REMAININGLEAVE`, `DEFAULTLEAVE`, `ONLEAVE`) VALUES
('KEN001', 'Nyambura', 'Mwangi', 'Wanjiku', 'Nairobi, Kenya', '+254712345678', 'Active', '1990-05-15', 'Nakuru, Kenya', 'Female', 34, '+254701234567', 15, 20, 0),
('KEN002', 'Juma', 'Omondi', 'Otieno', 'Mombasa, Kenya', '+254723456789', 'Active', '1988-12-28', 'Kisumu, Kenya', 'Male', 36, '+254705432109', 18, 20, 0),
('KEN003', 'Amina', 'Mohammed', 'Ali', 'Eldoret, Kenya', '+254732109876', 'Active', '1995-07-10', 'Garissa, Kenya', 'Female', 29, '+254708765432', 20, 20, 0),
('KEN004', 'Kimathi', 'Wanjohi', 'Karanja', 'Kisumu, Kenya', '+254741234567', 'Active', '1992-03-02', 'Nyeri, Kenya', 'Male', 32, '+254707654321', 17, 20, 0),
('KEN005', 'Akinyi', 'Nyawira', 'Wambui', 'Nakuru, Kenya', '+254798765432', 'Active', '1987-09-20', 'Nyandarua, Kenya', 'Female', 37, '+254712345678', 16, 20, 0),
('KEN006', 'Odhiambo', 'Otieno', 'Okoth', 'Kisii, Kenya', '+254786543210', 'Active', '1993-11-12', 'Homa Bay, Kenya', 'Male', 31, '+254723456789', 19, 20, 0),
('KEN007', 'Njeri', 'Kariuki', 'Muthoni', 'Thika, Kenya', '+254710987654', 'Active', '1985-04-17', 'Murang\'a, Kenya', 'Female', 39, '+254732109876', 20, 20, 0),
('KEN008', 'Mutua', 'Musyoka', 'Kilonzo', 'Machakos, Kenya', '+254736543210', 'Active', '1994-06-25', 'Kitui, Kenya', 'Male', 30, '+254741234567', 18, 20, 0),
('KEN009', 'Makena', 'Gitonga', 'Njeri', 'Nyeri, Kenya', '+254710123456', 'Active', '1991-08-08', 'Meru, Kenya', 'Female', 33, '+254798765432', 19, 20, 0),
('KEN010', 'Kamau', 'Wachira', 'Maina', 'Kiambu, Kenya', '+254707654321', 'Active', '1989-12-03', 'Kiambu, Kenya', 'Male', 35, '+254786543210', 20, 20, 0);

-- --------------------------------------------------------

--
-- Table structure for table `employee_workinfo`
--

CREATE TABLE `employee_workinfo` (
  `id` int(10) NOT NULL,
  `EMPID` varchar(30) NOT NULL,
  `d_rate` double DEFAULT NULL,
  `p_method` varchar(60) DEFAULT NULL,
  `position` varchar(60) DEFAULT NULL,
  `w_status` varchar(60) DEFAULT NULL,
  `d_hired` date DEFAULT NULL,
  `DEPARTMENT` varchar(50) NOT NULL,
  `w_type` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `employee_workinfo`
--

INSERT INTO `employee_workinfo` (`id`, `EMPID`, `d_rate`, `p_method`, `position`, `w_status`, `d_hired`, `DEPARTMENT`, `w_type`) VALUES
(33, 'KEN001', 250, 'Weekly', 'Staff', NULL, '2011-08-07', 'IT', 'Regular'),
(34, 'KEN002', 250, 'Weekly', 'Staff', NULL, '2011-07-04', 'Human Resource Dept.', 'Regular'),
(35, 'KEN003', 250, 'Weekly', 'Staff', NULL, '2011-04-03', 'Human Resource Dept.', 'Regular'),
(36, 'KEN004', 200, 'Weekly', 'Clerk', NULL, '2011-02-09', 'Finance Dept.', 'Regular'),
(37, 'KEN005', 300, 'Weekly', 'Medication Committee', NULL, '2000-05-04', 'Human Resource Dept.', 'Regular'),
(38, 'KEN006', 350, 'Weekly', 'Ethics Committee', NULL, '2013-05-06', 'Corporate Planning Dept.', 'Regular'),
(39, 'KEN007', 200, 'Weekly', 'Lineman', NULL, '2012-05-04', 'Engineering Service Dept.', 'Regular'),
(40, 'KEN008', 200, 'Weekly', 'Lineman', NULL, '2011-06-05', 'Engineering Service Dept.', 'Regular'),
(41, 'KEN009', 250, 'Weekly', 'Election Committee', NULL, '2014-02-05', 'Corporate Planning Dept.', 'Regular'),
(42, 'KEN010', 300, 'Weekly', 'Medication Committee', NULL, '2013-03-05', 'Corporal Communication Dept.', 'Regular');

-- --------------------------------------------------------

--
-- Table structure for table `leave`
--

CREATE TABLE `leave` (
  `LEAVEID` int(11) NOT NULL,
  `EMPID` varchar(11) NOT NULL,
  `LEAVECODE` int(11) NOT NULL,
  `LEAVEFORMAT` varchar(30) NOT NULL,
  `LEAVEAPPLIED` varchar(50) NOT NULL,
  `DATEFROM` datetime NOT NULL,
  `DATETO` datetime NOT NULL,
  `LEAVEDATE` datetime NOT NULL,
  `LEAVEENDDATE` datetime NOT NULL,
  `NODAYS` double NOT NULL,
  `REASON` text NOT NULL,
  `DAYOFFSCHEDULE` datetime NOT NULL,
  `REMARKS` varchar(30) NOT NULL,
  `APPLIED` tinyint(1) NOT NULL,
  `STATUS` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `leave`
--

INSERT INTO `leave` (`LEAVEID`, `EMPID`, `LEAVECODE`, `LEAVEFORMAT`, `LEAVEAPPLIED`, `DATEFROM`, `DATETO`, `LEAVEDATE`, `LEAVEENDDATE`, `NODAYS`, `REASON`, `DAYOFFSCHEDULE`, `REMARKS`, `APPLIED`, `STATUS`) VALUES
(1, 'KEN001', 0, 'Without Pay', 'Sick', '2015-02-22 06:02:15', '2015-02-22 06:02:15', '2015-02-22 02:02:15', '0000-00-00 00:00:00', 1, '0', '2015-02-22 02:02:15', 'Approved', 1, 'Pending'),
(2, 'KEN002', 0, 'Without Pay', 'Sick', '2015-02-25 06:31:25', '2015-02-25 12:31:25', '2015-02-25 07:31:25', '2015-02-25 07:31:25', 0, '0', '2015-02-25 07:31:25', 'Pending', 1, 'Pending'),
(3, 'KEN003', 0, 'Without Pay', 'Sick', '2015-02-25 06:33:33', '2015-02-25 12:33:33', '2015-02-25 07:33:33', '2015-02-25 07:33:33', 0, '0', '2015-02-25 07:33:33', 'Pending', 1, 'Pending'),
(4, 'KEN004', 0, 'With Pay', 'Sick', '2015-02-25 06:35:51', '2015-02-25 12:35:51', '2015-02-25 07:35:51', '2015-02-25 07:35:51', 0, 'asdasd', '2015-02-25 07:35:51', 'Pending', 1, 'Pending'),
(5, 'KEN005', 0, 'Without Pay', 'Sick', '2015-02-25 06:37:36', '2015-02-25 12:37:36', '2015-02-25 07:37:36', '2015-02-25 07:37:36', 0.5, 'asdasdasasd', '2015-02-25 07:37:36', 'Pending', 1, 'Pending'),
(6, 'KEN006', 0, 'With Pay', 'Sick', '2015-02-26 12:05:22', '2015-02-26 12:05:22', '2015-02-04 12:05:22', '2015-02-11 12:05:22', 7, 'I have a fever.', '2015-02-06 12:05:22', 'Approved', 1, 'Pending'),
(7, 'KEN007', 0, 'With Pay', 'AccidentOnDuty', '2015-02-26 12:06:47', '2015-02-26 12:06:47', '2015-01-20 12:06:47', '2015-01-29 12:06:47', 9, 'Car Accident.', '2015-01-26 12:06:47', 'Approved', 1, 'Pending'),
(8, 'KEN008', 0, 'With Pay', 'Vacation', '2015-02-26 12:08:36', '2015-02-26 12:08:36', '2015-02-11 12:08:36', '2015-02-14 12:08:36', 3, 'Family Matter.', '2015-02-26 12:08:36', 'Approved', 1, 'Pending'),
(9, 'KEN009', 0, 'With Pay', 'Sick', '2015-02-26 12:09:28', '2015-02-26 12:09:28', '2015-02-03 12:09:28', '2015-02-06 12:09:28', 3, 'Chicken Pox.', '2015-02-26 12:09:28', 'Approved', 1, 'Pending'),
(10, 'KEN010', 0, 'With Pay', 'Sick', '2015-02-26 12:11:28', '2015-02-26 12:11:28', '2015-02-26 12:11:27', '2015-02-26 12:11:27', 0, 'im sick', '2015-02-26 12:11:28', 'Approved', 1, 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `tblapproveleave`
--

CREATE TABLE `tblapproveleave` (
  `APPROVEDID` int(11) NOT NULL,
  `LEAVEID` int(11) NOT NULL,
  `LEAVECODE` varchar(30) NOT NULL,
  `EMPID` varchar(30) NOT NULL,
  `NODAYSAPPROVE` int(30) NOT NULL,
  `user_id` varchar(30) NOT NULL,
  `STATUS` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblapproveleave`
--

INSERT INTO `tblapproveleave` (`APPROVEDID`, `LEAVEID`, `LEAVECODE`, `EMPID`, `NODAYSAPPROVE`, `user_id`, `STATUS`) VALUES
(1, 1, '0', 'KEN001', 1, '12', 'APPROVE'),
(2, 6, '0', 'KEN007', 7, '12', 'APPROVE'),
(3, 7, '0', 'KEN003', 9, '12', 'APPROVE'),
(4, 8, '0', 'KEN002', 3, '12', 'APPROVE'),
(5, 9, '0', 'KEN009', 3, '12', 'APPROVE');

-- --------------------------------------------------------

--
-- Table structure for table `tblautonumber`
--

CREATE TABLE `tblautonumber` (
  `id` int(11) NOT NULL,
  `STRT` varchar(30) NOT NULL,
  `END` int(11) NOT NULL,
  `INCREMENT` int(11) NOT NULL,
  `DESCRIPTION` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblautonumber`
--

INSERT INTO `tblautonumber` (`id`, `STRT`, `END`, `INCREMENT`, `DESCRIPTION`) VALUES
(1, '00001', 29, 1, 'employee'),
(2, '1032', 9, 1, 'user');

-- --------------------------------------------------------

--
-- Table structure for table `tbldepartment`
--

CREATE TABLE `tbldepartment` (
  `ID` int(11) NOT NULL,
  `DEPARTMENT` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbldepartment`
--

INSERT INTO `tbldepartment` (`ID`, `DEPARTMENT`) VALUES
(2, 'Corporal Communication Dept.'),
(3, 'Human Resource Dept.'),
(4, 'Corporate Planning Dept.'),
(5, 'Finance Dept.'),
(6, 'Engineering Service Dept.'),
(7, 'Transmission & Distribution Dept.');

-- --------------------------------------------------------

--
-- Table structure for table `tblleaveinfo`
--

CREATE TABLE `tblleaveinfo` (
  `LEAVEID` int(11) NOT NULL,
  `EMPID` varchar(11) NOT NULL,
  `REASONS` varchar(30) NOT NULL,
  `LEAVEDAYS` int(11) NOT NULL,
  `DEFAULT` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblleaveinfo`
--

INSERT INTO `tblleaveinfo` (`LEAVEID`, `EMPID`, `REASONS`, `LEAVEDAYS`, `DEFAULT`) VALUES
(1, 'KEN001', 'SICK', 15, 0),
(2, 'KEN002', 'MATERNITY', 15, 0),
(3, 'KEN003', 'Vacation', 15, 0),
(4, 'KEN004', 'Funeral', 15, 0),
(5, 'KEN005', 'Paternity', 15, 0),
(6, 'KEN006', 'Accident On Duty', 15, 0),
(7, 'KEN007', 'SICK', 15, 0),
(8, 'KEN008', 'MATERNITY', 15, 0),
(9, 'KEN009', 'Vacation', 15, 0),
(10, 'KEN010', 'Funeral', 15, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblsettings`
--

CREATE TABLE `tblsettings` (
  `ID` int(11) NOT NULL,
  `DESCRIPTION` text NOT NULL,
  `FORTHE` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblsettings`
--

INSERT INTO `tblsettings` (`ID`, `DESCRIPTION`, `FORTHE`) VALUES
(1, 'Staff', 'Position'),
(2, 'Clerk', 'Position'),
(3, 'Election Committee', 'Position'),
(4, 'Audit Committee', 'Position'),
(5, 'Corporate Secretary', 'Position'),
(6, 'Medication Committee', 'Position'),
(7, 'Treasurer', 'Position'),
(8, 'Ethics Committee', 'Position'),
(9, 'Lineman', 'Position'),
(10, 'Teller', 'Position');

-- --------------------------------------------------------

--
-- Table structure for table `tbluser`
--

CREATE TABLE `tbluser` (
  `user_id` int(30) NOT NULL,
  `name` text DEFAULT NULL,
  `username` varchar(60) DEFAULT NULL,
  `pass` varchar(90) DEFAULT NULL,
  `type` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbluser`
--

INSERT INTO `tbluser` (`user_id`, `name`, `username`, `pass`, `type`) VALUES
(12, 'David Mulei', 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'Administrator'),
(10328, 'John Mwanzia', 'HR', '51bd95353aeda6615433bea21896c893ef5e62dc', 'HR Personnel');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`EMPID`);

--
-- Indexes for table `employee_workinfo`
--
ALTER TABLE `employee_workinfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `leave`
--
ALTER TABLE `leave`
  ADD PRIMARY KEY (`LEAVEID`);

--
-- Indexes for table `tblapproveleave`
--
ALTER TABLE `tblapproveleave`
  ADD PRIMARY KEY (`APPROVEDID`);

--
-- Indexes for table `tblautonumber`
--
ALTER TABLE `tblautonumber`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbldepartment`
--
ALTER TABLE `tbldepartment`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblleaveinfo`
--
ALTER TABLE `tblleaveinfo`
  ADD PRIMARY KEY (`LEAVEID`);

--
-- Indexes for table `tblsettings`
--
ALTER TABLE `tblsettings`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbluser`
--
ALTER TABLE `tbluser`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employee_workinfo`
--
ALTER TABLE `employee_workinfo`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `leave`
--
ALTER TABLE `leave`
  MODIFY `LEAVEID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tblapproveleave`
--
ALTER TABLE `tblapproveleave`
  MODIFY `APPROVEDID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblautonumber`
--
ALTER TABLE `tblautonumber`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbldepartment`
--
ALTER TABLE `tbldepartment`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblleaveinfo`
--
ALTER TABLE `tblleaveinfo`
  MODIFY `LEAVEID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tblsettings`
--
ALTER TABLE `tblsettings`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbluser`
--
ALTER TABLE `tbluser`
  MODIFY `user_id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10329;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
