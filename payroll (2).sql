-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 13, 2019 at 11:25 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `payroll`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_allowance`
--

CREATE TABLE `tbl_allowance` (
  `id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `allowance_name` varchar(255) NOT NULL,
  `mode_of_payment` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `createdby` int(11) NOT NULL,
  `createdon` int(11) NOT NULL,
  `updatedby` int(11) DEFAULT NULL,
  `updatedon` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_application`
--

CREATE TABLE `tbl_application` (
  `id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `applicant_name` varchar(255) NOT NULL,
  `father_name` varchar(255) NOT NULL,
  `department_id` int(11) NOT NULL,
  `designation_id` int(11) NOT NULL,
  `date_of_apply` date NOT NULL,
  `mobile` bigint(10) NOT NULL,
  `dob` date NOT NULL,
  `gender` varchar(6) NOT NULL,
  `marital_status` varchar(10) NOT NULL,
  `edu_qua` varchar(300) NOT NULL,
  `tech_qua` varchar(300) DEFAULT NULL,
  `work_exp` varchar(300) NOT NULL,
  `last_salary` decimal(10,0) NOT NULL,
  `expected_salary` decimal(10,0) NOT NULL,
  `notice_period` varchar(50) NOT NULL,
  `city` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `resume` varchar(100) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `address` text NOT NULL,
  `createdon` int(11) NOT NULL,
  `createdby` int(11) NOT NULL,
  `updatedon` int(11) DEFAULT NULL,
  `updatedby` int(11) DEFAULT NULL,
  `application_status` enum('Applied','Offered','Confirmed','Appointed','Rejected') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_appointment_letter`
--

CREATE TABLE `tbl_appointment_letter` (
  `id` int(11) NOT NULL,
  `applicant_id` int(11) NOT NULL,
  `sdesignation` varchar(100) NOT NULL,
  `grade` varchar(100) NOT NULL,
  `probation_period` int(11) NOT NULL,
  `appointmentdate` varchar(100) NOT NULL,
  `refnumber` int(11) NOT NULL,
  `generation_date` varchar(100) NOT NULL,
  `notice_period` int(11) NOT NULL,
  `signdate` varchar(100) NOT NULL,
  `createdby` int(11) NOT NULL,
  `createdon` int(11) NOT NULL,
  `letter_status` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_attendance`
--

CREATE TABLE `tbl_attendance` (
  `id` int(11) NOT NULL,
  `emp_id` int(11) NOT NULL,
  `year_v` int(5) NOT NULL,
  `month_v` int(2) NOT NULL,
  `day1` varchar(10) NOT NULL,
  `day2` varchar(10) DEFAULT NULL,
  `day3` varchar(10) DEFAULT NULL,
  `day4` varchar(10) DEFAULT NULL,
  `day5` varchar(10) DEFAULT NULL,
  `day6` varchar(10) DEFAULT NULL,
  `day7` varchar(10) DEFAULT NULL,
  `day8` varchar(10) DEFAULT NULL,
  `day9` varchar(10) DEFAULT NULL,
  `day10` varchar(10) DEFAULT NULL,
  `day11` varchar(10) DEFAULT NULL,
  `day12` varchar(10) DEFAULT NULL,
  `day13` varchar(10) DEFAULT NULL,
  `day14` varchar(10) DEFAULT NULL,
  `day15` varchar(10) DEFAULT NULL,
  `day16` varchar(10) DEFAULT NULL,
  `day17` varchar(10) DEFAULT NULL,
  `day18` varchar(10) DEFAULT NULL,
  `day19` varchar(10) DEFAULT NULL,
  `day20` varchar(10) DEFAULT NULL,
  `day21` varchar(10) DEFAULT NULL,
  `day22` varchar(10) DEFAULT NULL,
  `day23` varchar(10) DEFAULT NULL,
  `day24` varchar(10) DEFAULT NULL,
  `day25` varchar(10) DEFAULT NULL,
  `day26` varchar(10) DEFAULT NULL,
  `day27` varchar(10) DEFAULT NULL,
  `day28` varchar(10) DEFAULT NULL,
  `day29` varchar(10) DEFAULT NULL,
  `day30` varchar(10) DEFAULT NULL,
  `day31` varchar(10) DEFAULT NULL,
  `ot_days` decimal(10,1) DEFAULT NULL,
  `locked_status` int(1) DEFAULT NULL,
  `createdby` int(10) NOT NULL,
  `createdon` int(15) NOT NULL,
  `updatedby` int(10) DEFAULT NULL,
  `updatedon` int(15) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bank`
--

CREATE TABLE `tbl_bank` (
  `id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `bank_name` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `createdby` int(11) NOT NULL,
  `createdon` int(11) NOT NULL,
  `updatedby` int(11) DEFAULT NULL,
  `updatedon` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bank_branch`
--

CREATE TABLE `tbl_bank_branch` (
  `id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `bank_id` int(10) NOT NULL,
  `branch_name` varchar(255) NOT NULL,
  `ifsc_code` varchar(255) NOT NULL,
  `micr_code` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `createdby` int(11) NOT NULL,
  `createdon` int(11) NOT NULL,
  `updatedby` int(11) DEFAULT NULL,
  `updatedon` int(11) DEFAULT NULL,
  `account_no` varchar(20) NOT NULL,
  `branch_code` varchar(15) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_branch`
--

CREATE TABLE `tbl_branch` (
  `id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `branch_name` text NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `pincode` varchar(255) DEFAULT NULL,
  `description` text,
  `gstnumber` varchar(100) NOT NULL,
  `createdby` int(11) NOT NULL,
  `createdon` int(11) NOT NULL,
  `updatedby` int(11) DEFAULT NULL,
  `updatedon` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cities`
--

CREATE TABLE `tbl_cities` (
  `city_id` int(11) NOT NULL,
  `city_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `state_id` int(11) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '0:Blocked, 1:Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_client`
--

CREATE TABLE `tbl_client` (
  `id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `industry_id` int(11) NOT NULL,
  `client_name` text NOT NULL,
  `client_regi_no` varchar(100) NOT NULL,
  `pan_cord_no` varchar(50) NOT NULL,
  `licence_no` varchar(100) DEFAULT NULL,
  `tax_deduction_ac_no` varchar(255) DEFAULT NULL,
  `contact_person_name` varchar(255) NOT NULL,
  `contact_person_mobile` bigint(10) NOT NULL,
  `contact_person_email` varchar(255) NOT NULL,
  `deduction_id` varchar(50) DEFAULT NULL,
  `gst` varchar(50) DEFAULT NULL,
  `service_tax` decimal(10,2) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `pincode` varchar(255) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `on_up_gst` enum('1') DEFAULT NULL,
  `createdby` int(11) NOT NULL,
  `createdon` int(11) NOT NULL,
  `updatedby` int(11) DEFAULT NULL,
  `updatedon` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_client`
--

INSERT INTO `tbl_client` (`id`, `company_id`, `branch_id`, `industry_id`, `client_name`, `client_regi_no`, `pan_cord_no`, `licence_no`, `tax_deduction_ac_no`, `contact_person_name`, `contact_person_mobile`, `contact_person_email`, `deduction_id`, `gst`, `service_tax`, `address`, `country`, `state`, `city`, `pincode`, `status`, `on_up_gst`, `createdby`, `createdon`, `updatedby`, `updatedon`) VALUES
(1, 1, 1, 2, 'DENA BANK, BANGLA BAZAR', '123456789', 'ABCDE_____', '123456789', 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'Branch Manager', 5222422165, 'bangla@denabank.co.in', '', '1,2', '3.85', 'B-45, Sector J, Rail Nagar, Jail Road, Bangla Bazar, lko\r\n', 'INDIA', 'UP', 'LKO', '212507', 1, NULL, 3, 1524734470, NULL, NULL),
(2, 1, 1, 2, 'DENA BANK, NIGOHAN', '123456789', 'AAAAA2222A', '123456789', 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'Branch Manager', 522282380, 'nigoha@denabank.co.in', '1,2,3', '1,2', '3.85', 'Station Road, Tehsil, Mohanlal ganj, Nigoha\r\n', 'INDIA', 'U.P.', 'LUCKNOW', '227309', 1, NULL, 3, 1521116245, NULL, NULL),
(3, 1, 1, 3, 'CONSUMER FORUM, FARUKHABAD', '123456789', 'ABCDE_____', '123456789', 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'NARENDRA', 5692235404, 'rizwan.rizwan58@gmail.com', '', '1,2', '0.00', 'Kalectrate Compound, \r\n', 'INDIA', 'U.P.', 'FATEHGARH', '209601', 0, NULL, 3, 1531226352, NULL, NULL),
(4, 1, 1, 3, 'CONSUMER FORUM, FAIZABAD', '123456789', 'ABCDE_____', '123456789', 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'NARENDRA', 9451718267, 'anusharma95@gmail.com', '', '1,2', '0.00', 'Kalectrate Compound, Faizabad\r\n', 'INDIA', 'U.P.', 'FAIZABAD', '274001', 0, NULL, 3, 1531226265, NULL, NULL),
(5, 1, 1, 6, 'DIRECT TAX REGIONAL TRAINING INSTITUTE (PRAGYA)', '123456789', 'ABCDE_____', '123456789', 'ABCDEFGHIJKLMNOPQRSTUVWXYZ', 'S K PANDEY', 8318905159, 'incometax@gmail.com', '', '1,2', '2.10', 'VIBHUTIKHAND, GOMTINAGAR, LKO\r\n', 'INDIA', 'U.P.', 'LUCKNOW', '226010 ', 1, NULL, 3, 1521954115, NULL, NULL),
(6, 1, 1, 2, 'DENA BANK LTD', '', 'HHHHH4441C', '', '', 'BRANCH MANAGER', 7379023456, 'dena@gmail.com', '', '1,2', '3.85', '', '', '', '', '', 1, NULL, 3, 1521292970, NULL, NULL),
(7, 1, 1, 2, 'DENA BANK, BABUGANJ ', '', 'AAASS2222S', '', '09AAACD4249BZZZ', 'BRANCH MANAGER', 5332251057, 'babuga@denabank.co.in', '', '1,2', '3.85', 'vill & post- Babuganj, The- Phulpur, Babuganj\r\n\r\n', 'INDIA', 'UTTAR PRADESH', 'ALLAHABAD', '212507', 1, NULL, 3, 1525090113, NULL, NULL),
(8, 1, 1, 2, 'DENA BANK, LALGANJ', '', '', '', '09AAACD4249B2ZZ', 'BRANCH MANAGER', 9721459253, 'lalgan@denabank.co.in', NULL, '1,2', '3.85', 'Po- Lalganj, The-Dalmau, Dist- Raebareilly\r\n', 'INDIA', 'UTTAR PRADESH', 'RAEBAREILLY', '229206', 1, NULL, 3, 1521458154, NULL, NULL),
(9, 1, 1, 2, 'DENA BANK, HARCHANDPUR', '', '', '', '09AAACD4249B2ZZ', 'BRANCH MANAGER', 535225268, 'harcha@denabank.co.in', NULL, '1,2', '3.85', 'Station Road, Harchandpur, Dist- Raebareilly\r\n', 'INDIA', 'UTTAR PRADESH', 'RAEBAREILLY', '229303', 1, NULL, 3, 1521458263, NULL, NULL),
(10, 1, 1, 2, 'DENA BANK, NYAY NAGAR', '', '', '', '09AAACD4249B2ZZ', 'BRANCH MANAGER', 532256934, 'nayay@denabank.co.in', NULL, '1,2', '3.85', 'Warsi market GT Road, Nyaynagar (jhusi)\r\n', 'INDIA', 'UTTAR PRADESH', 'ALLAHABAD', '221506', 1, NULL, 3, 1521458374, NULL, NULL),
(11, 1, 1, 2, 'DENA BANK, SHERI', '', 'AAAAA4564A', '', '09AAACD4249B2ZZ', 'BRANCH MANAGER', 9721459398, 'seri@denabank.co.in', '', '1,2', '3.85', 'Johwa Sharki Mod, Seri Kundanganj, Dist- Raebareilly\r\n', 'INDIA', 'UTTAR PRADESH', 'RAEBAREILLY', '229303', 1, NULL, 3, 1521721328, NULL, NULL),
(12, 1, 1, 2, 'DENA BANK, PRATAPPUR', '', 'AAAAA2131A', '', '09AAACD4249B2ZZ', 'BRANCH MANAGER', 9721459582, 'praluc@denabank.co.in', '', '1,2', '3.85', 'Vill &po- Pratappur, Taeh- Handya\r\n', 'INDIA', 'UTTAR PRADESH', 'ALLAHABAD', '212402', 1, NULL, 3, 1521458824, NULL, NULL),
(13, 1, 1, 2, 'DENA BANK, THANAPUR', '', '', '', '09AAACD4249B2ZZ', 'BRANCH MANAGER', 9721459421, 'thanapur@denabank.co.in', NULL, '1,2', '3.85', 'Paragana Sikandara, Tehsil- Phulpur, Allahabad\r\n', 'INDIA', 'UTTAR PRADESH', 'ALLAHABAD', '221507', 1, NULL, 3, 1521458952, NULL, NULL),
(14, 1, 1, 2, 'DENA BANK, SHIVAJI MARG', '', '', '', '09AAACD4249B2ZZ', 'BRANCH MANAGER', 522261220, 'shinew@denabank.co.in', NULL, '1,2', '3.85', '7-shivajimarg, lucknow\r\n', 'INDIA', 'UTTAR PRADESH', 'LUCKNOW', '226001', 1, NULL, 3, 1521459114, NULL, NULL),
(15, 1, 1, 2, 'DENA BANK, RAMBAGH', '', '', '', '09AAACD4249B2ZZ', 'BRANCH MANAGER', 9721459217, 'rambag@denabank.co.in', NULL, '1,2', '3.85', 'Sundaram Towers, 164/147,S V Marg, Rambag Crossing\r\n', 'INDIA', 'UTTAR PRADESH', 'ALLAHABAD', '211003', 1, NULL, 3, 1521459404, NULL, NULL),
(16, 1, 1, 2, 'DENA BANK, JONSTON GANJ', '', '', '', '09AAACD4249B2ZZ', 'BRANCH MANAGER', 532240203, 'allaha@denabank.co.in', NULL, '1,2', '3.85', '12/14, Jhonstonganj, Allahabad\r\n', 'INDIA', 'UTTAR PRADESH', 'ALLAHABAD', '211003', 1, NULL, 3, 1521459658, NULL, NULL),
(17, 1, 1, 2, 'DENA BANK, HARDOI', '', '', '', '09AAACD4249B2ZZ', 'BRANCH MANAGER', 9721459581, 'hardoi@denabank.co.in', NULL, '1,2', '3.85', '157, Circular road, Nagehta Near Essar petrol Pump, hardoi\r\n', 'INDIA', 'UTTAR PRADESH', 'HARDOI', '241001', 1, NULL, 3, 1521459828, NULL, NULL),
(18, 1, 1, 2, 'DENA BANK, RAIBAREILLY', '', '', '', '09AAACD4249B2ZZ', 'BRANCH MANAGER', 535220445, 'raebar@denabank.co.in', NULL, '1,2', '3.85', 'kaiperaganj, malik Mau Road, Dist- Raebareilly\r\n', 'INDIA', 'UTTAR PRADESH', 'RAEBAREILLY', '229001', 1, NULL, 3, 1521459962, NULL, NULL),
(19, 1, 1, 2, 'DENA BANK, AIHAR', '', '', '', '09AAACD4249B2ZZ', 'BRANCH MANAGER', 9721459102, 'aihar@denabank.co.in', NULL, '1,2', '3.85', 'Near rail coch factory,vill & post-Aihar, Dist Raebareilly\r\n', 'INDIA', 'UTTAR PRADESH', 'RAEBAREILLY', '229121', 1, NULL, 3, 1521460052, NULL, NULL),
(20, 1, 1, 2, 'DENA BANK, CURRENCY CHEST', '', '', '', '09AAACD4249B2ZZ', 'BRANCH MANAGER', 522235439, 'cclucknow@denabank.co.in', NULL, '1,2', '3.85', 'B-1015,Indiranagar\r\n', 'INDIA', 'UTTAR PRADESH', 'LUCKNOW', '226016', 1, NULL, 3, 1521460186, NULL, NULL),
(21, 1, 1, 2, 'DENA BANK, BANGAL BAZAAR', '', '', '', '09AAACD4249B2ZZ', 'BRANCH MANAGER', 522242216, 'bangla@denabank.co.in', NULL, '1,2', '3.85', 'B-45, Sector J, Rail Nagar, Jail Road, Bangla Bazar, lko\r\n', 'INDIA', 'UTTAR PRADESH', 'LUCKNOW', '212507', 1, NULL, 3, 1521460274, NULL, NULL),
(22, 1, 1, 2, 'DENA BANK, RAJAJIPURAM', '', '', '', '09AAACD4249B2ZZ', 'BRANCH MANAGER', 522241739, 'rajaji@denabank.co.in', NULL, '1,2', '3.85', 'SKD plazha, E-block, Rajajipuram\r\n', 'INDIA', 'UTTAR PRADESH', 'LUCKNOW', '226017', 1, NULL, 3, 1521460443, NULL, NULL),
(23, 1, 1, 2, 'DENA BANK, GOMTINAGAR', '', 'AAAAA3564O', '', '09AAACD4249B2ZZ', 'BRANCH MANAGER', 5222398266, 'gomtin@denabank.co.in', '', '1,2', '3.85', 'Bhatiya Plazha,1/8, Viram Khand, Gomtinagar\r\n', 'INDIA', 'UTTAR PRADESH', 'LUCKNOW', '226010', 1, NULL, 3, 1530458166, NULL, NULL),
(24, 1, 1, 2, 'DENA BANK, GHOSPURA', '', '', '', '09AAACD4249B2ZZ', 'BRANCH MANAGER', 522234050, 'ghospu@denabank.co.in', NULL, '1,2', '3.85', 'B-1015, Ram Sagar Mishra Sadan,Indiranagar\r\n', 'INDIA', 'UTTAR PRADESH', 'LUCKNOW', '226016', 1, NULL, 3, 1521460614, NULL, NULL),
(25, 1, 1, 2, 'DENA BANK, BARABANKI', '', '', '', '09AAACD4249B2ZZ', 'BRANCH MANAGER', 9721459219, 'barluc@denabank.co.in', NULL, '1,2', '3.85', 'Near DM residence, civil lines, lko-faizabad road, Barabanki\r\n', 'INDIA', 'UTTAR PRADESH', 'BARABANKI', '225001', 1, NULL, 3, 1521460706, NULL, NULL),
(26, 1, 1, 2, 'DENA BANK, ALIGANJ', '', '', '', '09AAACD4249B2ZZ', 'BRANCH MANAGER', 522233473, 'aligan@denabank.co.in', NULL, '1,2', '3.85', 'C-1,Sector-M, Aliganj\r\n', 'INDIA', 'UTTAR PRADESH', 'LUCKNOW', '226024', 1, NULL, 3, 1521460927, NULL, NULL),
(27, 1, 1, 2, 'DENA BANK, ALAMBAGH', '', '', '', '09AAACD4249B2ZZ', 'BRANCH MANAGER', 522233473, 'alambagh@denabank.co.in', NULL, '1,2', '3.85', '565 ka/94/2,samrudhi bagh, sneh nagar, Alambah\r\n', 'INDIA', 'UTTAR PRADESH', 'LUCKNOW', '226005', 1, NULL, 3, 1521461010, NULL, NULL),
(28, 1, 1, 2, 'DENA BANK, SEOGARH', '', 'AAAAA2322A', '', '09AAACD4249B2ZZ', 'BRANCH MANAGER', 9721459243, 'sheoga@denabank.co.in', '', '', '3.85', 'vill & post- Sheogarh, Tal Soraon,\r\n', 'INDIA', 'UTTAR PRADESH', 'ALLAHABAD', '212502', 1, NULL, 3, 1521461148, NULL, NULL),
(29, 1, 1, 2, 'DENA BANK, SAVAPUR NEWADA', '', '', '', '09AAACD4249B2ZZ', 'BRANCH MANAGER', 9721459208, 'sawnew@denabank.co.in', NULL, '1,2', '3.85', 'Unchahar- 83/1, Vill- Khojanpur, Post-Sawapur Newada, Unchahar\r\n', 'INDIA', 'UTTAR PRADESH', 'RAEBAREILLY', '229303', 1, NULL, 3, 1521461268, NULL, NULL),
(30, 1, 1, 2, 'DENA BANK, UTARATHIYA', '', '', '', '09AAACD4249B2ZZ', 'BRANCH MANAGER', 522244052, 'uthrat@denabank.co.in', NULL, '1,2', '3.85', 'House no.129, Eledeco colony, udyan-2 Rae Bareilly Road, Lucknow\r\n', 'INDIA', 'UTTAR PRADESH', 'LUCKNOW', '226025', 1, NULL, 3, 1521461346, NULL, NULL),
(31, 1, 1, 2, 'DENA BANK, NADAN MAHAL', '', '', '', '09AAACD4249B2ZZ', 'BRANCH MANAGER', 522226640, 'nadanm@denabank.co.in', NULL, '1,2', '3.85', 'Nadan Mahal Road, LKO\r\n', 'INDIA', 'UTTAR PRADESH', 'LUCKNOW', '226001', 1, NULL, 3, 1521461438, NULL, NULL),
(32, 1, 1, 2, 'DENA BANK, SAHJAURA', '', '', '', '', 'BRANCH MANAGER', 9721459251, 'sahjau@denabank.co.in', NULL, '1,2', '3.85', 'Villagae- Sahjaura, Dist- Raebareilly\r\n', 'INDIA', 'UTTAR PRADESH', 'RAEBAREILLY', '229122', 1, NULL, 3, 1521461994, NULL, NULL),
(33, 1, 1, 3, 'DISTRICT CONSUMER FORUM ,MAHARAJGANJ', '', '', '', '', 'DISTRICT CONSUMER FORUM', 552322392, 'digvijaygkp@gmail.com', NULL, '1,2', '0.00', 'Kalectrate Compound, \r\n', 'INDIA', 'UTTAR PRADESH', 'MAHARAJGANJ', '273302', 1, NULL, 3, 1521639868, NULL, NULL),
(34, 1, 1, 3, 'DISTRICT CONSUMER FORUM ,BAGPAT', '', '', '', '', 'DISTRICT CONSUMER FORUM', 9568666184, 'ravindrakumar000123@gmail.com', NULL, '1,2', '0.00', 'Kalectrate Compound, Bagpat\r\n', 'INDIA', 'UTTAR PRADESH', 'BAGPAT', '250606', 1, NULL, 3, 1521640000, NULL, NULL),
(35, 1, 1, 3, 'DISTRICT CONSUMER FORUM, AMROHA', '', '', '', '', 'CONSUMER FORUM', 9456932889, 'surendrasingh9457421@59gmail.com', NULL, '1,2', '0.00', 'Kalectrate Compound, Amroha\r\n', 'INDIA', 'UTTAR PRADESH', 'AMROHA', '244221', 1, NULL, 3, 1521651953, NULL, NULL),
(36, 1, 1, 3, 'DISTRICT CONSUMER FORUM, AMBEDKAR NAGAR', '', '', '', '', 'CONSUMER FORUM', 527124690, 'ramuwith@gmail.com', NULL, '1,2', '0.00', 'Azamgarh Road, \r\n', 'INDIA', 'UTTAR PRADESH', ' AMBEDKAR NAGAR', '224122', 1, NULL, 3, 1521654534, NULL, NULL),
(37, 1, 1, 3, 'DISTRICT CONSUMER FORUM, HARDOI', '', '', '', '', 'CONSUMER FORUM', 585223277, 'ayazhusain2015@gmail.com', NULL, '1,2', '0.00', 'Kalectrate Compound, \r\n', 'INDIA', 'UTTAR PRADESH', ' HARDOI', '241001', 1, NULL, 3, 1521654709, NULL, NULL),
(38, 1, 1, 3, 'DISTRICT CONSUMER FORUM, FIROZABAD', '', '', '', '', 'CONSUMER FORUM', 561228507, 'sudhir198shakya@gmail.com', NULL, '1,2', '0.00', 'Kalectrate Compound, firozabad\r\n', 'INDIA', 'UTTAR PRADESH', ' FIROZABAD', '283203', 1, NULL, 3, 1521654842, NULL, NULL),
(39, 1, 1, 3, 'DISTRICT CONSUMER FORUM, GORAKHPUR', '', '', '', '', 'CONSUMER FORUM', 551222007, 'dcfgkp@gmail.com', NULL, '1,2', '0.00', 'Kalectrate Compound, \r\n', 'INDIA', 'UTTAR PRADESH', 'GORAKHPUR', '273001', 1, NULL, 3, 1521654967, NULL, NULL),
(40, 1, 1, 3, 'DISTRICT CONSUMER FORUM, FARUKHABAD', '', '', '', '', 'CONSUMER FORUM', 569223540, 'farrukhabdc@gmail.com', NULL, '1,2', '0.00', 'Kalectrate Compound, \r\n', 'INDIA', 'UTTAR PRADESH', 'FARUKHABAD', '209601', 1, NULL, 3, 1521655177, NULL, NULL),
(41, 1, 1, 3, 'DISTRICT CONSUMER FORUM, GAZIPUR', '', '', '', '', 'CONSUMER FORUM', 548222208, 'confo-gp-up@nic.in', NULL, '1,2', '0.00', 'Kalectrate Compound, \r\n', 'INDIA', 'UTTAR PRADESH', 'GAZIPUR', '233001', 1, NULL, 3, 1521655279, NULL, NULL),
(42, 1, 1, 3, 'DISTRICT CONSUMER FORUM, JAUNPUR', '', '', '', '', 'CONSUMER FORUM', 545226046, 'prateekbajpai61@gmail.com', NULL, '1,2', '0.00', 'Kalectrate Compound, \r\n', 'INDIA', 'UTTAR PRADESH', 'JAUNPUR', '222001', 1, NULL, 3, 1521655446, NULL, NULL),
(43, 1, 1, 3, 'DISTRICT CONSUMER FORUM, VARANASI', '', '', '', '', 'CONSUMER FORUM', 542225095, 'comfo-vo-up@nic.in', NULL, '1,2', '0.00', 'Kalectrate Compound, \r\n', 'INDIA', 'UTTAR PRADESH', 'VARANASI', '221002', 1, NULL, 3, 1521655568, NULL, NULL),
(44, 1, 1, 3, 'DISTRICT CONSUMER FORUM, SITAPUR', '', '', '', '', 'CONSUMER FORUM', 8004151453, 'sanajykumar1988@gmail.com', '', '1,2', '0.00', 'Kalectrate Compound, \r\n', 'INDIA', 'UTTAR PRADESH', 'SITAPUR', '261001', 1, NULL, 3, 1531125972, NULL, NULL),
(45, 1, 1, 3, 'DISTRICT CONSUMER FORUM, BALRAMPUR', '', '', '', '', 'CONSUMER FORUM', 526323603, 'rk070567@gmail.com', NULL, '1,2', '0.00', 'Kalectrate Compound, Balrampur\r\n', 'INDIA', 'UTTAR PRADESH', 'BALRAMPUR', '271201', 1, NULL, 3, 1521655865, NULL, NULL),
(46, 1, 1, 3, 'DISTRICT CONSUMER FORUM, GONDA', '', '', '', '', 'CONSUMER FORUM', 526223248, 'aliwajid155@gmail.com', NULL, '1,2', '0.00', 'Kalectrate Compound, \r\n', 'INDIA', 'UTTAR PRADESH', 'GONDA', '271001', 1, NULL, 3, 1521655953, NULL, NULL),
(47, 1, 1, 3, 'DISTRICT CONSUMER FORUM, BARABANKI', '', '', '', '', 'CONSUMER FORUM', 9695461429, 'confo-vp@nic.in', NULL, '1,2', '0.00', 'Kalectrate Compound, Barabanki\r\n', 'INDIA', 'UTTAR PRADESH', 'BARABANKI', '225001', 1, NULL, 3, 1521656070, NULL, NULL),
(48, 1, 1, 3, 'DISTRICT CONSUMER FORUM,FATEHPUR ', '', '', '', '', 'CONSUMER FORUM', 518022362, 'confo-ft-up@nic.in', NULL, '1,2', '0.00', 'Kalectrate Compound, Fatehpur\r\n', 'INDIA', 'UTTAR PRADESH', 'FATEHPUR ', '212601', 1, NULL, 3, 1521656153, NULL, NULL),
(49, 1, 1, 3, 'DISTRICT CONSUMER FORUM, MATHURA ', '', '', '', '', 'CONSUMER FORUM', 9415002400, 'ysinghjudiciary@gmail.com', NULL, '1,2', '0.00', 'Kalectrate Compound, \r\n', 'INDIA', 'UTTAR PRADESH', 'MATHURA ', '281001', 1, NULL, 3, 1521656269, NULL, NULL),
(50, 1, 1, 3, 'DISTRICT CONSUMER FORUM,ETAWAH ', '', '', '', '', 'CONSUMER FORUM', 568825653, 'mukesh2610@gmail.com', NULL, '1,2', '0.00', 'Kalectrate Compound, Etawah\r\n', 'INDIA', 'UTTAR PRADESH', 'ETAWAH ', '206001', 1, NULL, 3, 1521656380, NULL, NULL),
(51, 1, 1, 3, 'DISTRICT CONSUMER FORUM, SANT KABIR NAGAR', '', '', '', '', 'CONSUMER FORUM', 554722752, 'dcdrfskn@gmail.com', NULL, '1,2', '0.00', 'Kalectrate Compound, \r\n', 'INDIA', 'UTTAR PRADESH', 'SANT KABIR NAGAR', '272199', 1, NULL, 3, 1521656535, NULL, NULL),
(52, 1, 1, 3, 'DISTRICT CONSUMER FORUM, RAEBAREILLY', '', '', '', '', 'CONSUMER FORUM', 535270245, 'ranjeety2010@gmail.com', NULL, '1,2', '0.00', 'Kalectrate Compound, \r\n', 'INDIA', 'UTTAR PRADESH', 'RAEBAREILLY', '229001', 1, NULL, 3, 1521656674, NULL, NULL),
(53, 1, 1, 3, 'DISTRICT CONSUMER FORUM, BASTI', '', '', '', '', 'CONSUMER FORUM', 554224591, 'pandeyanoop34@gmail.com', NULL, '1,2', '0.00', 'Kalectrate Compound, Basti\r\n', 'INDIA', 'UTTAR PRADESH', 'BASTI', '272001', 1, NULL, 3, 1521656777, NULL, NULL),
(54, 1, 1, 3, 'DISTRICT CONSUMER FORUM, LAKHIMPUR KHIRI', '', '', '', '', 'CONSUMER FORUM', 587225561, 'raghu2015pal@gmail.com', NULL, '1,2', '0.00', 'Kalectrate Compound, \r\n', 'INDIA', 'UTTAR PRADESH', 'LAKHIMPUR KHIRI', '262701', 1, NULL, 3, 1521656944, NULL, NULL),
(55, 1, 1, 3, 'DISTRICT CONSUMER FORUM,AMETHI', '', '', '', '', 'CONSUMER FORUM', 8090688925, 'pradeepkumar96215482@51gmail.com', NULL, '1,2', '0.00', 'Kalectrate Compound, Amethi\r\n', 'INDIA', 'UTTAR PRADESH', 'AMETHI', '227405', 1, NULL, 3, 1521657030, NULL, NULL),
(56, 1, 1, 3, 'DISTRICT CONSUMER FORUM, HATHRAS', '', '', '', '', 'CONSUMER FORUM', 572222270, 'girishkumarjadaunali@goshgmail.com', NULL, '1,2', '0.00', 'Kalectrate Compound, \r\n', 'INDIA', 'UTTAR PRADESH', 'HATHRAS', '204101', 1, NULL, 3, 1521657143, NULL, NULL),
(57, 1, 1, 3, 'DISTRICT CONSUMER FORUM, BALLIA', '', '', '', '', 'CONSUMER FORUM', 549822217, 'rahul.rai571@gmail.com', NULL, '1,2', '0.00', 'Kalectrate Compound, Ballia\r\n', 'INDIA', 'UTTAR PRADESH', 'BALLIA', '277001', 1, NULL, 3, 1521657220, NULL, NULL),
(58, 1, 1, 3, 'DISTRICT CONSUMER FORUM, DEORIA ', '', '', '', '', 'CONSUMER FORUM', 9455926619, 'vinodkumar25982@gmail.com', NULL, '1,2', '0.00', 'Kalectrate Compound, Deoriya\r\n', 'INDIA', 'UTTAR PRADESH', 'DEORIA ', '274001', 1, NULL, 3, 1521657515, NULL, NULL),
(59, 1, 1, 3, 'DISTRICT CONSUMER FORUM, KASHGANJ', '', '', '', '', 'CONSUMER FORUM', 9627591089, 'riskythakur.ankit@gmail.com', NULL, '1,2', '0.00', 'Kalectrate Compound, \r\n', 'INDIA', 'UTTAR PRADESH', ' KASHGANJ', '207123', 1, NULL, 3, 1521658290, NULL, NULL),
(60, 1, 1, 3, 'DISTRICT CONSUMER FORUM,BHADOI', '', '', '', '', 'CONSUMER FORUM', 541425102, 'sudheer_98monu@yahoo.com', NULL, '1,2', '0.00', 'Kalectrate Compound, Bhadohi\r\n', 'INDIA', 'UTTAR PRADESH', 'BHADOI', '221401', 1, NULL, 3, 1521658488, NULL, NULL),
(61, 1, 1, 3, 'DISTRICT CONSUMER FORUM, PRATAPGARH', '', '', '', '', 'CONSUMER FORUM', 534222330, 'anoop905@gmail.com', NULL, '1,2', '0.00', 'Kalectrate Compound, \r\n', 'INDIA', 'UTTAR PRADESH', ' PRATAPGARH', '230001', 1, NULL, 3, 1521659788, NULL, NULL),
(62, 1, 1, 3, 'DISTRICT CONSUMER FORUM,SIDDHART NAGAR', '', '', '', '', 'CONSUMER FORUM', 9451792261, 'presidentsiddhartnag@arforumgmail.com', NULL, '1,2', '0.00', 'Kalectrate Compound, \r\n', 'INDIA', 'UTTAR PRADESH', 'SIDDHART NAGAR', '272153', 1, NULL, 3, 1521659928, NULL, NULL),
(63, 1, 1, 3, 'DISTRICT CONSUMER FORUM, MUZAFFAR NAGAR ', '', '', '', '', 'CONSUMER FORUM', 9761037057, 'vishalsingh11986@gmail.com', NULL, '1,2', '0.00', 'Kalectrate Compound, \r\n', 'INDIA', 'UTTAR PRADESH', 'MUZAFFAR NAGAR ', '251001', 1, NULL, 3, 1521660033, NULL, NULL),
(64, 1, 1, 3, 'DISTRICT CONSUMER FORUM, MAU', '', '', '', '', 'CONSUMER FORUM', 9839242152, 'jaiswal.gorakhanth@gmail.com', NULL, '1,2', '0.00', 'Kalectrate Compound, \r\n', 'INDIA', 'UTTAR PRADESH', 'MAU', '257101', 1, NULL, 3, 1521660118, NULL, NULL),
(65, 1, 1, 3, 'DISTRICT CONSUMER FORUM, CHANDAULI', '', '', '', '', 'CONSUMER FORUM', 541226026, 'jpsingh03071972@gmail.com', NULL, '1,2', '0.00', 'Kalectrate Compound, Chandauli\r\n', 'INDIA', 'UTTAR PRADESH', ' CHANDAULI', '232104', 1, NULL, 3, 1521660219, NULL, NULL),
(66, 1, 1, 3, 'DISTRICT CONSUMER FORUM, BADAUN', '', '', '', '', 'CONSUMER FORUM', 583226605, 'ashishsoron@gmail.com', NULL, '1,2', '0.00', 'Kalectrate Compound, \r\n ', 'INDIA', 'UTTAR PRADESH', 'BADAUN', '243601', 1, NULL, 3, 1521660349, NULL, NULL),
(67, 1, 1, 3, 'DISTRICT CONSUMER FORUM, SHAMLI', '', '', '', '', 'CONSUMER FORUM', 139825970, 'sks.c502@gmail.com', NULL, '1,2', '0.00', 'Kalectrate Compound, \r\n', 'INDIA', 'UTTAR PRADESH', 'SHAMLI', '247776', 1, NULL, 3, 1521660429, NULL, NULL),
(68, 1, 1, 3, 'DISTRICT CONSUMER FORUM, SONBHADRA', '', '', '', '', 'CONSUMER FORUM', 8354078819, 'kamalpandey03@gmail.com', '', '1,2', '0.00', 'Kalectrate Compound, \r\n', 'INDIA', 'UTTAR PRADESH', ' SONBHADRA', '3', 1, NULL, 3, 1530603909, NULL, NULL),
(69, 1, 1, 3, 'DISTRICT CONSUMER FORUM,SONBHADRA', '', '', '', '', 'CONSUMER FORUM', 8354078819, 'kamalpandey03@gmail.com', NULL, '1,2', '0.00', 'Kalectrate Compound, \r\n', 'INDIA', 'UTTAR PRADESH', 'SONBHADRA', '231216', 1, NULL, 3, 1521660599, NULL, NULL),
(70, 1, 1, 3, 'DISTRICT CONSUMER FORUM, FAIZABAD', '', '', '', '', 'CONSUMER FORUM', 9451718267, 'mishraashis491@gmail.com', NULL, '1,2', '0.00', 'Kalectrate Compound, Faizabad\r\n', 'INDIA', 'UTTAR PRADESH', 'FAIZABAD', '224401', 1, NULL, 3, 1521660757, NULL, NULL),
(71, 1, 1, 3, 'DISTRICT CONSUMER FORUM, KUSHINAGAR', '', '', '', '', 'CONSUMER FORUM', 9450474941, 'rahul.y121088@gmail.com', NULL, '1,2', '0.00', 'Kalectrate Compound, \r\n', 'INDIA', 'UTTAR PRADESH', 'KUSHINAGAR', '274303', 1, NULL, 3, 1521660847, NULL, NULL),
(72, 1, 1, 3, 'DISTRICT CONSUMER FORUM,SHRAWASTI', '', '', '', '', 'CONSUMER FORUM', 5250222680, 'er.csra@gmail.com', '3', '1,2', '0.00', 'Kalectrate Compound, \r\n', 'INDIA', 'UTTAR PRADESH', 'SHRAWASTI', '271845', 1, NULL, 3, 1531735047, NULL, NULL),
(73, 1, 1, 3, 'DISTRICT CONSUMER FORUM, SHAHJAHANPUR', '', '', '', '', 'CONSUMER FORUM', 9839723784, 'raurav.it27@gmail.com', NULL, '1,2', '0.00', 'Kalectrate Compound, \r\n', 'INDIA', 'UTTAR PRADESH', ' SHAHJAHANPUR', '242001', 1, NULL, 3, 1521661089, NULL, NULL),
(74, 1, 2, 0, 'Pr. Chief Commissioner of Income Tax', 'a', '', '', '', 'a', 1234567890, 'bpl@gmail.com', '', '3', '0.00', 'Aayakar Bhavan, Plot No. 48, \r\nArera Hills, Hoshangabad Road, \r\nBhopal - 462011 Tel - 0755-2557189', '', '', '', '', 1, '1', 4, 1524661860, NULL, NULL),
(75, 1, 1, 2, 'DENA BANK, ARJUNGANJ', '', '', '', '', 'BRANCH MANAGER', 522812844, 'arjung@denabank.co.in', NULL, '1,2', '3.85', 'Upper Ground Floor, Khasara No. 890, Village- Sarsawan\r\n', 'INDIA', 'UTTAR PRADESH', 'LUCKNOW', '226002', 1, NULL, 3, 1521918976, NULL, NULL),
(76, 1, 1, 7, 'C S I TOWER', '', 'AAAAA1234A', '', '', 'MR. SANJAY MAHAJAN', 9415023124, 'csitower@gmail.com', '', '1,2', '5.00', 'VIPIN KHAND GOMTINAGAR, LKO\r\n', 'INDIA', 'UTTAR PRADESH', 'LUCKNOW', '226010', 1, NULL, 3, 1522440291, NULL, NULL),
(77, 1, 1, 16, 'CRS GLOBAL SERVICES PVT. LTD.', '', '', '', '09AAGCC1652D1ZY', 'ANAND BISHT ', 9935169168, 'anand.bisht@crs.org', NULL, '1,2', '0.00', 'PLOT NO. 628/10A, FAIZABAD ROAD, INDRA NAGAR, LUCKNOW', 'India', 'Uttar Pradesh', 'LUCKNOW', '229206', 1, NULL, 3, 1522394125, NULL, NULL),
(78, 1, 1, 0, 'THE MEMBER SECRETARY, UP STATE COMMISSION FOR WOMEN', '', '', '', '', 'MR. A K GUPTA', 7905682527, 'up.mahilaayog@yahoo.com', '1,2', '1,2', '2.10', 'VIBHUTI KHAND GOMTI NAGAR LUCKNOW U.P.', 'India', 'UTTAR PRADESH', 'LUCKNOW', '226001', 1, NULL, 3, 1530600991, NULL, NULL),
(79, 1, 1, 18, 'THE MEMBER SECRETARY, UP STATE COMMISSION FOR WOMEN', '', '', '', '', 'MR. A K GUPTA', 7905682527, 'up.mahilaayog@yahoo.com', '1,2', '1,2', '2.10', 'VIBHUTI KHAND GOMTI NAGAR LUCKNOW U.P.', 'India', 'UTTAR PRADESH', 'LUCKNOW', '226001', 1, NULL, 3, 1522399413, NULL, NULL),
(80, 1, 1, 17, 'RADHA KRISHNA FOODLAND', '', '', '', '', 'MR. ANJANI VERMA	', 9415177758, 'verma.a.4@pg.com', '', '1,2', '8.00', 'BIJANAUR ROAD,LKO\r\n', 'INDIA', 'UTTAR PRADESH', 'LUCKNOW', '226001', 1, NULL, 3, 1524510385, NULL, NULL),
(81, 1, 1, 5, 'C R C LUCKNOW', '', '', '', '', 'MR. HIMANSHU SINGH	', 9415809115, 'crclko@rediffmail.com', '', '1,2', '0.00', 'MOHAN ROAD, LKO\r\n', 'INDIA', 'UTTAR PRADESH', 'LUCKNOW', '', 1, NULL, 3, 1524893863, NULL, NULL),
(82, 1, 1, 19, 'EXCUTIVE ENGINEER, BHADAR', '', 'DADDR1125A', '', '09AAECM0108J1ZO', 'J. E. SONI JI', 9453007320, 'madhurendrasingh9199@gmail.com', '', '1,2', '5.00', 'E D D , GAURIGANJ-2 AMETHI', 'India', 'U.P', 'SULTANPUR', '', 1, NULL, 3, 1522401762, NULL, NULL),
(83, 1, 1, 20, 'EXCUTIVE ENGINEER, BHADAR', '', '', '', '09AAECM0108J1ZO', 'J. E. SONI JI', 9453007320, 'madhurendrasingh9199@gmail.com', NULL, '1,2', '5.00', 'E D D , GAURIGANJ-2 AMETHI', 'INDIA', 'UTTAR PRADESH', 'SULTANPUR', '', 1, NULL, 3, 1522403221, NULL, NULL),
(84, 1, 1, 19, 'EXCUTIVE ENGINEER, HAL', '', '', '', '09AAECM0108J1ZO', 'J. E. SONI JI', 9453007320, 'madhurendrasingh9199@gmail.com', NULL, '1,2', '5.00', 'E D D , GAURIGANJ-2 AMETHI\r\n', 'INDIA', 'UTTAR PRADESH', 'SULTANPUR', '', 1, NULL, 3, 1522403421, NULL, NULL),
(85, 1, 1, 20, 'EXCUTIVE ENGINEER, HAL', '', '', '', '09AAECM0108J1ZO', 'J. E. SONI JI', 9453007320, 'madhurendrasingh9199@gmail.com', NULL, '1,2', '5.00', 'E D D , GAURIGANJ-2 AMETHI\r\n', 'INDIA', 'UTTAR PRADESH', 'SULTANPUR', '', 1, NULL, 3, 1522403533, NULL, NULL),
(86, 1, 1, 19, 'EXCUTIVE ENGINEER, BHETUA', '', '', '', '09AAECM0108J1ZO', 'J. E. SONI JI', 9453007320, 'madhurendrasingh9199@gmail.com', NULL, '1,2', '5.00', 'E D D , GAURIGANJ-2 AMETHI\r\n', 'INDIA', 'UTTAR PRADESH', 'SULTANPUR', '', 1, NULL, 3, 1522403737, NULL, NULL),
(87, 1, 1, 20, 'EXCUTIVE ENGINEER, BHETUA', '', '', '', '09AAECM0108J1ZO', 'J. E. SONI JI', 9453007320, 'madhurendrasingh9199@gmail.com', NULL, '1,2', '5.00', 'E D D , GAURIGANJ-2 AMETHI\r\n', 'India', 'UTTAR PRADESH', 'SULTANPUR', '', 1, NULL, 3, 1522403910, NULL, NULL),
(88, 1, 1, 19, 'EXCUTIVE ENGINEER, PITHIPUR', '', '', '', '09AAECM0108J1ZO', 'J. E. SONI JI', 9453007320, 'madhurendrasingh9199@gmail.com', NULL, '1,2', '5.00', 'E D D , GAURIGANJ-2 AMETHI\r\n', 'India', 'UTTAR PRADESH', 'SULTANPUR', '', 1, NULL, 3, 1522404063, NULL, NULL),
(89, 1, 1, 20, 'EXCUTIVE ENGINEER, PITHIPUR', '', '', '', '09AAECM0108J1ZO', 'J. E. SONI JI', 9453007320, 'madhurendrasingh9199@gmail.com', NULL, '1,2', '5.00', 'E D D , GAURIGANJ-2 AMETHI\r\n', 'India', 'UTTAR PRADESH', 'SULTANPUR', '', 1, NULL, 3, 1522404189, NULL, NULL),
(90, 1, 1, 10, 'DIRECTOR, SARVA SHIKSHA ABHIYAN', '', '', '', '', 'RAJKUMARI VERMA', 522278095, 'upefa@upefa.com', NULL, '1,2', '0.00', 'NISHATGANJ, LUCKNOW\r\n', 'India', 'UTTAR PRADESH', 'LUCKNOW', '229206', 1, NULL, 3, 1522405000, NULL, NULL),
(91, 1, 1, 10, 'ANYA POLYTECH & FERTILIZERS PVT. LTD.', '', '', '', '09AAKCA1442K1ZL', 'MR. AMAR PRATAP', 7525003658, 'amarnath@apfl.in', NULL, '1,2', '0.00', 'PIPROLA, SHAHJHANPUR\r\n', 'India', 'UTTAR PRADESH', 'SHAJAHANPUR', '', 1, NULL, 3, 1522406013, NULL, NULL),
(92, 1, 1, 21, 'The Registrar, Dr. Shakuntala Mishra National Rehabilitation University (LAB)', '', '', '', '', 'SMT. BINDU TRIPATHI', 9455504127, 'sinha.banty@gmail.com', '1,2', '1,2', '2.09', 'MOHAN ROAD, LKO\r\n', 'India', 'Uttar Pradesh', 'LUCKNOW', '226001', 1, NULL, 3, 1522408932, NULL, NULL),
(93, 1, 1, 21, 'The Registrar, Dr. Shakuntala Mishra National Rehabilitation University (CLASS IV)', '', '', '', '', 'SMT. BINDU TRIPATHI', 9455504127, 'sinha.banty@gmail.com', '1,2', '1,2', '2.09', 'MOHAN ROAD, LKO', 'India', 'Uttar Pradesh', 'LUCKNOW', '226001', 1, NULL, 3, 1525360687, NULL, NULL),
(94, 1, 1, 21, 'The Registrar, Dr. Shakuntala Mishra National Rehabilitation University (COM. OPERATOR)', '', '', '', '', 'SMT. BINDU TRIPATHI	', 9455504127, 'sinha.banty@gmail.com', '1,2', '1,2', '2.09', 'MOHAN ROAD, LKO', 'India', 'Uttar Pradesh', 'LUCKNOW', '226001', 1, NULL, 3, 1525354009, NULL, NULL),
(95, 1, 1, 21, 'The Registrar, Dr. Shakuntala Mishra National Rehabilitation University (NET WORK SUPERVISOR)', '', '', '', '', 'SMT. BINDU TRIPATHI	', 9455504127, 'sinha.banty@gmail.com', '1,2', '1,2', '2.09', 'MOHAN ROAD, LKO', 'India', 'UTTAR PRADESH', 'LUCKNOW', '226001', 1, NULL, 3, 1522409359, NULL, NULL),
(96, 1, 1, 21, 'The Registrar, Dr. Shakuntala Mishra National Rehabilitation University (HOS. SUP)', '', '', '', '', 'SMT. BINDU TRIPATHI				', 9455504127, 'sinha.banty@gmail.com', '1,2', '1,2', '2.09', 'MOHAN ROAD, LKO', 'India', 'UTTAR PRADESH', 'LUCKNOW', '226001', 1, NULL, 3, 1522409429, NULL, NULL),
(97, 1, 1, 21, 'The Registrar, Dr. Shakuntala Mishra National Rehabilitation University (SECURITY)', '', '', '', '', 'SMT. BINDU TRIPATHI					', 9455504127, 'sinha.banty@gmail.com', '1,2', '1,2', '2.09', 'MOHAN ROAD, LKO', 'India', 'UTTAR PRADESH', 'LUCKNOW', '226001', 1, NULL, 3, 1522409720, NULL, NULL),
(98, 1, 1, 21, 'The Registrar, Dr. Shakuntala Mishra National Rehabilitation University (GUN MAN)', '', '', '', '', 'SMT. BINDU TRIPATHI					', 9455504127, 'sinha.banty@gmail.com', NULL, '1,2', '2.09', 'MOHAN ROAD, LKO', 'India', 'UTTAR PRADESH', 'LUCKNOW', '226001', 1, NULL, 3, 1522409781, NULL, NULL),
(99, 1, 1, 21, 'The Registrar, Dr. Shakuntala Mishra National Rehabilitation University (SECURITY SUPERVISIORS)', '', '', '', '', 'SMT. BINDU TRIPATHI		', 9455504127, 'sinha.banty@gmail.com', '1,2', '1,2', '2.09', 'MOHAN ROAD, LKO', 'India', 'UTTAR PRADESH', 'LUCKNOW', '226001', 1, NULL, 3, 1522409850, NULL, NULL),
(100, 1, 1, 21, 'The Registrar, Dr. Shakuntala Mishra National Rehabilitation University (B.TECH)', '', '', '', '', 'SMT. BINDU TRIPATHI	', 9455504127, 'sinha.banty@gmail.com', '1,2', '1,2', '2.09', 'MOHAN ROAD, LKO', 'India', 'UTTAR PRADESH', 'LUCKNOW', '226001', 1, NULL, 3, 1522409925, NULL, NULL),
(101, 1, 1, 21, 'The Registrar, Dr. Shakuntala Mishra National Rehabilitation University (Hostel)', '', '', '', '', 'SMT. BINDU TRIPATHI				', 9455504127, 'sinha.banty@gmail.com', '1,2', '1,2', '2.09', 'MOHAN ROAD, LKO', 'India', 'UTTAR PRADESH', 'LUCKNOW', '226001', 1, NULL, 3, 1522410652, NULL, NULL),
(102, 1, 1, 22, 'KRIBHCO FERTILIZEERS LTD.  (TOWN SHIP)					', '', '', '', '', 'MR. ANAND PATHAK			', 9918577777, 'anandpathak@ksfl.in', NULL, '1,2', '0.00', 'PIPROLA, SHAHJHANPUR', 'India', 'Uttar Pradesh', 'SHAJAHANPUR', '242221', 1, NULL, 3, 1522411044, NULL, NULL),
(103, 1, 1, 22, 'KRIBHCO FERTILIZEERS LTD.  (PLANT)					', '', '', '', '', 'MR. ANAND PATHAK			', 9918577777, 'anandpathak@ksfl.in', NULL, '1,2', '0.00', 'PIPROLA, SHAHJHANPUR', 'India', 'Uttar Pradesh', 'SHAJAHANPUR', '242221', 1, NULL, 3, 1522411117, NULL, NULL),
(104, 1, 1, 4, 'PRINCIPAL, GOVT. MEDICAL COLLEGE, AZAMGARH					 					', '', '', '', '', 'MR. AMIT TIWARI	', 9455130309, 'amittiwarigmc2015@gmail.com', NULL, '1,2', '0.00', 'VILL-CHAKRAPANPUR, DIST-AZAMGAARH', 'India', 'Uttar Pradesh', 'AZAMGARH', '276128', 1, NULL, 3, 1522411385, NULL, NULL),
(105, 1, 1, 4, 'THE REGISTRAR, KING GEORGE MEDICAL UNIVESITY, LUCKNOW (HEMOPHYLIA CARE)', '', 'SADAG1554A', '', '09AAAAK4509KIZJ					', 'MR. SANTOSH MAURYA', 9451991014, 'madhurendrasingh9199@gmail.com', '', '1,2', '0.00', 'SHAHMEEN AROAD, CHAOK, LKO\r\n', 'India', 'UTTAR PRADESH', 'LUCKNOW', '226001', 1, NULL, 3, 1522412622, NULL, NULL),
(106, 1, 1, 4, 'THE REGISTRAR, KING GEORGE MEDICAL UNIVERSITY LUCKNOW( PRACTOR OFFICE)', '', '', '', '09AAAAK4509KIZJ					', 'MR. SANTOSH MAURYA	', 9451991014, 'madhurendrasingh9199@gmail.com', NULL, '1,2', '0.00', 'SHAHMEEN AROAD, CHAOK, LKO\r\n', 'India', 'UTTAR PRADESH', 'LUCKNOW', '226001', 1, NULL, 3, 1522413195, NULL, NULL),
(107, 1, 1, 4, 'THE REGISTRAR, KING GEORGE MEDICAL UNIVESITY, (CTVS)', '', 'AAAAA1234A', '', '', 'MR. SANTOSH MAURYA', 9451991014, 'madhurendra9199@gmail.com', '', '1,2', '0.00', 'SHAHMEEN AROAD, CHAOK, LKO\r\n', 'India', 'Uttar Pradesh', 'LUCKNOW', '226001', 1, NULL, 3, 1522437718, NULL, NULL),
(108, 1, 1, 4, 'THE REGISTRAR, KING GEORGE MEDICAL UNIVESITY, (RESPIRATORY MEDICINE)', '', '', '', '09AAAAK4509KIZJ					', 'MR. SANTOSH MAURYA	', 9451991014, 'madhurendrasingh9199@gmail.com', NULL, '1,2', '0.00', 'SHAHMEEN AROAD, CHAOK, LKO', 'INDIA', 'UTTAR PRADESH', 'LUCKNOW', '226001', 1, NULL, 3, 1522437932, NULL, NULL),
(109, 1, 1, 4, 'THE REGISTRAR, KING GEORGE MEDICAL UNIVESITY, (PSYCHIATRY)', '', 'AAAAA1233A', '', '09AAAAK4509KIZJ', 'MR. SANTOSH MAURYA					', 9451991014, 'mahurendrasingh9199@gmail.com', '', '1,2', '0.00', 'SHAHMEEN AROAD, CHAOK, LKO', 'INDIA', 'UTTAR PRADESH', 'LUCKNOW', '226001', 1, NULL, 3, 1522438127, NULL, NULL),
(110, 1, 1, 4, 'THE REGISTRAR, KING GEORGE MEDICAL UNIVESITY, (RADIOTHERAPY)', '', '', '', '09AAAAK4509KIZJ', 'MR. SANTOSH MAURYA', 9451991014, 'madhurendrasingh9199@gmail.com', NULL, '1,2', '0.00', 'SHAHMEEN AROAD, CHAOK, LKO\r\n', 'INDIA', 'UTTAR PRADESH', 'LUCKNOW', '226001', 1, NULL, 3, 1522438264, NULL, NULL),
(111, 1, 1, 4, 'THE REGISTRAR, KING GEORGE MEDICAL UNIVESITY, (D.K. HOSTEL)', '', '', '', '09AAAAK4509KIZJ', 'MR. SANTOSH MAURYA', 9451991014, 'madhurendrasingh9199@gmail.com', NULL, '1,2', '0.00', 'SHAHMEEN AROAD, CHAOK, LKO\r\n', 'INDIA', 'UTTAR PRADESH', 'LUCKNOW', '226001', 1, NULL, 3, 1522438401, NULL, NULL),
(112, 1, 1, 4, 'THE REGISTRAR, KING GEORGE MEDICAL UNIVESITY, (CLINICAL HEMATOLOGY)', '', '', '', '09AAAAK4509KIZJ', 'MR. SANTOSH MAURYA				', 9451991014, 'madhurendrasingh9199@gmail.com', NULL, '1,2', '0.00', 'SHAHMEEN AROAD, CHAOK, LKO', 'INDIA', 'UTTAR PRADESH', 'LUCKNOW', '226001', 1, NULL, 3, 1522438546, NULL, NULL),
(113, 1, 1, 4, 'THE REGISTRAR, KING GEORGE MEDICAL UNIVESITY, (H.R.F.)', '', '', '', '09AAAAK4509KIZJ', 'MR. SANTOSH MAURYA		', 9451991014, 'madurendrasingh9199@gmail.com', NULL, '1,2', '0.00', 'SHAHMEEN AROAD, CHAOK, LKO', 'INDIA', 'UTTAR PRADESH', 'LUCKNOW', '226001', 1, NULL, 3, 1522438719, NULL, NULL),
(114, 1, 1, 4, 'THE REGISTRAR, KING GEORGE MEDICAL UNIVESITY, (NEHRU P. G. HOSTAL)', '', 'AAAAA2222A', '', '09AAAAK4509KIZJ', 'MR. SANTOSH MAURYA	', 9451991014, 'madhurendrasingh9199@gmail.com', '', '1,2', '0.00', 'SHAHMEEN AROAD, CHAOK, LKO', 'INDIA', 'UTTAR PRADESH', 'LUCKNOW', '226001', 1, NULL, 3, 1522438949, NULL, NULL),
(115, 1, 1, 4, 'THE REGISTRAR, KING GEORGE MEDICAL UNIVESITY, (NEW GUEST)', '', 'AAAAA1234A', '', '09AAAAK4509KIZJ', 'MR. SANTOSH MAURYA		', 9451991014, 'madhurendrasingh9199@gmail.com', '', '1,2', '0.00', 'SHAHMEEN AROAD, CHAOK, LKO', 'INDIA', 'UTTAR PRADESH', 'LUCKNOW', '226001', 1, NULL, 3, 1522439139, NULL, NULL),
(116, 1, 1, 4, 'THE REGISTRAR, KING GEORGE MEDICAL UNIVESITY, (CENTRAL LIBRARY	)', '', '', '', '09AAAAK4509KIZJ', 'MR. SANTOSH MAURYA		', 9451991014, 'madhurendrasingh9199@gmail.com', NULL, '1,2', '0.00', 'SHAHMEEN AROAD, CHAOK, LKO', 'INDIA', 'UTTAR PRADESH', 'LUCKNOW', '226001', 1, NULL, 3, 1522439230, NULL, NULL),
(117, 1, 1, 4, 'THE REGISTRAR, KING GEORGE MEDICAL UNIVESITY, (LIGEN OFFICE, SC/ST CELL.)', '', '', '', '09AAAAK4509KIZJ', 'MR. SANTOSH MAURYA	', 9451991014, 'madhurendrasingh9199@gmail.com', NULL, '1,2', '0.00', 'SHAHMEEN AROAD, CHAOK, LKO', 'INDIA', 'UTTAR PRADESH', 'LUCKNOW', '226001', 1, NULL, 3, 1522439359, NULL, NULL),
(118, 1, 1, 4, 'THE REGISTRAR, KING GEORGE MEDICAL UNIVESITY, (DEAN FACALTY OF MEDICINE)', '', '', '', '09AAAAK4509KIZJ', 'MR. SANTOSH MAURYA		', 9451991014, 'madhurendrasingh9199@gmail.com', NULL, '1,2', '0.00', 'SHAHMEEN AROAD, CHAOK, LKO', 'INDIA', 'UTTAR PRADESH', 'LUCKNOW', '226001', 1, NULL, 3, 1522439449, NULL, NULL),
(119, 1, 1, 4, 'THE REGISTRAR, KING GEORGE MEDICAL UNIVESITY, (IT CELL)', '', '', '', '09AAAAK4509KIZJ', 'MR. SANTOSH MAURYA	', 9451991014, 'madhurenndrsingh@gmail.com', NULL, '1,2', '0.00', 'SHAHMEEN AROAD, CHAOK, LKO', 'INDIA', 'UTTAR PRADESH', 'LUCKNOW', '226001', 1, NULL, 3, 1522439550, NULL, NULL),
(120, 1, 3, 8, 'ACUMEN OVERSEAS PVT. LTD', '', '', '', '06AADCA8499B1ZM', 'ABHIMANYU SHARMA', 9873561744, 'administration@groupconcorde.com', '', '3', '0.00', 'PLOT NO. 142, UDYOG VIHAR PHASE-4\r\n', 'INDIA', 'HARYANA', 'GURGAON', '122001', 1, NULL, 5, 1525428202, NULL, NULL),
(121, 1, 2, 25, 'COMMISSIONER OF INCOME TAX ( CENTRAL)', 'a', '', 'A', '', 'a', 1234567890, 'bpl@gmail.com', '', '3', '0.00', 'AAYAKAR BHAWAN, PLOT NO. 48\r\nARERA HILLS, HOSHANGABAD ROAD,\r\nBHOPAL - 462011', 'INDIA', 'MADHYA PRADESH', 'BHOPAL', '462011', 1, '1', 4, 1524718825, NULL, NULL),
(122, 1, 2, 25, 'OFFICE OF INCOME TAX (D.V.O.)', 'A', '', 'A', '', 'A', 1234567890, 'bpl@gmail.com', '', '3', '0.00', 'AAYAKAR BHAVAN, PLOT NO. 48, \r\nARERA HILLS, HOSHANGABAD ROAD, \r\nBHOPAL - 462011\r\n', 'INDIA', 'MADHYA PRADESH', 'BHOPAL', '462011', 1, '1', 4, 1524742181, NULL, NULL),
(123, 1, 2, 25, 'OFFICE OF INCOME TAX (D.V.O.) - ow', 'a', '', '', '', 'a', 1234567890, 'bpl@gmail.com', '', '3', '0.00', 'AAYAKAR BHAVAN, PLOT NO. - 48,\r\nARERA HILLS, HOSHANGABAD ROAD,\r\nBHOPAL - 462011', 'INDIA', 'MADHYA PRADESH', 'BHOPAL', '', 1, '1', 4, 1524718953, NULL, NULL),
(124, 1, 2, 25, 'INCOME TAX OFFICE - (SEHORE)', '', '', '', '', 'a', 1234567890, 'bpl@gmail.com', '', '3', '0.00', 'OLD COLLECTRETE CAMPUS,\r\nCIVIL LINE, SEHORE - 466001\r\n', 'INDIA', 'MADHYA PRADESH', 'SEHORE ', '466001', 1, '1', 4, 1524719063, NULL, NULL),
(125, 1, 2, 25, 'INCOME TAX OFFICE ( BETUL) ', '', '', '', '', 'A', 1234567890, 'bpl@gmail.com', '', '3', '0.00', 'COLLAGE ROAD, \r\nIN FRONT OF CIVIL LINE \r\nBETUL - 460001', 'INDIA', 'MADHYA PRADESH', 'BETUL ', '460001', 1, '1', 4, 1524743888, NULL, NULL),
(126, 1, 2, 25, 'PRINCIPAL DIRECTOR OF INCOME TAX (INVESTIGATION)', '', '', '', '', 'a', 1234567890, 'bpl@gmail.com', '', '3', '0.00', 'AAYAKAR BHAVAN, PLOT NO. 48,\r\nARERA HILLS, HOSHANGABAD ROAD,\r\nBHOPAL - 462011', 'INDIA', 'MADHYA PRADESH', 'BHOPAL ', '462011', 1, '1', 4, 1524745330, NULL, NULL),
(127, 1, 2, 25, 'INCOME TAX OFFICE - (VIDISHA) ', '', '', '', '', 'a', 1234567890, 'bpl@gmail.com', '', '3', '0.00', 'JAIL ROAD, \r\nVIDISHA - 464001', 'INDIA ', 'MADHYA PRADESH', 'VIDISHA ', '464001', 1, '1', 4, 1524745487, NULL, NULL),
(128, 1, 2, 25, 'INCOME TAX OFFICE ( ITARSI)', '', '', '', '', 'a', 1234567890, 'bpl@gmail.com', '', '3', '0.00', 'AAYAKAR BHAVAN, NR MGM COLLAGE,\r\nNYAS COLONY, \r\nITARSI - 461111', 'INDIA', 'MADHYA PRADESH', 'ITARSI ', '461111', 1, '1', 4, 1524745851, NULL, NULL),
(129, 1, 2, 25, 'INCOME TAX OFFICE ( RAISEN)', '', '', '', '', 'A', 1234567890, 'bpl@gmail.com', NULL, '3', '0.00', 'PATAN DEV, \r\nSAGAR ROAD,\r\nRAISEN - 464551', 'INDIA ', 'MADHYA PRADESH', 'RAISEN ', '464551', 1, '1', 4, 1523085882, NULL, NULL),
(130, 1, 2, 25, 'INCOME TAX OFFICE (HARDA) ', '', '', '', '', 'a', 1234567890, 'bpl@gmail.com', '', '3', '0.00', 'OPP. MAMA COMPLEX,\r\nCHHIPANER ROAD,\r\nDIST - HARDA - 461331', 'INDIA ', 'MADHYA PRADESH', 'HARDA ', '461331', 1, '1', 4, 1524746161, NULL, NULL),
(131, 1, 2, 25, 'COMMISSIONER OF INCOME TAX ( EXEMPTION)', '', '', '', '', 'A', 1234567890, 'bpl@gmail.com', NULL, '3', '0.00', '2\'ND FLOOR, WALK METRO,\r\nBITTHAN MARKER,\r\nE-7, ARERA COLONY, BHOPAL - 462011', 'INDIA ', 'MADHYA PRADESH', 'BHOPAL ', '462011', 1, '1', 4, 1523086144, NULL, NULL),
(132, 1, 2, 25, 'COMMISSIONER OF INCOME TAX ( AUDIT) ', '', '', '', '', 'a', 1234567890, 'bpl@gmail.com', '', '3', '0.00', 'AAYAKAR BHAVAN, PLOT NO. 48, \r\nARERA HILLS, HOSHANGABAD ROAD, \r\nBHOPAL - 462011', 'INDIA ', 'MADHYA PRADESH', 'BHOPAL ', '462011', 1, '1', 4, 1524746624, NULL, NULL),
(133, 1, 2, 25, 'COMMISSIONER OF INCOME TAX ( APEAL-I) ', '', '', '', '', 'a', 1234567890, 'bpl@gmail.com', '', '3', '0.00', 'AAYAKAR BHAVAN, PLOT NO. 48, \r\nARERA HILLS, HOSHANGABAD ROAD,\r\nBHOPAL - 462011', 'INDIA ', 'MADHYA PRADESH', 'BHOPAL ', '462011', 1, '1', 4, 1524746668, NULL, NULL),
(134, 1, 2, 25, 'COMMISSIONER OF INCOME TAX ( APEAL-II) ', '', '', '', '', 'a', 1234567890, 'bpl@gmail.com', '', '3', '0.00', '3\'RD FLOOR, WALK METRO, BITTHAN MARKET\r\nE-7, ARERA COLONY, \r\nBHOPAL - 462011', 'INDIA ', 'MADHYA PRADESH', 'BHOPAL ', '462011', 1, '1', 4, 1524746690, NULL, NULL),
(135, 1, 2, 25, 'COMMISSIONER OF INCOME TAX ( APEAL-III) ', '', '', '', '', 'a', 1234567890, 'bpl@gmail.com', '', '3', '0.00', 'AAYAKAR BHAVAN, PLOT NO. 48, \r\nARERA HILLS, HOSHANGABAD ROAD, \r\nBHOPAL - 462011\r\n', 'INDIA ', 'MADHYA PRADESH', 'BHOPAL ', '', 1, '1', 4, 1524746712, NULL, NULL),
(136, 1, 2, 25, 'COMMISSIONER OF INCOME TAX ( CO) ', '', '', '', '', 'a', 1234567890, 'bpl@gmail.com', '', '3', '0.00', 'AAYAKAR BHAWAN, PLOT NO. 48, \r\nARERA HILLS, HOSHANGABD ROAD, \r\nBHOPAL - 462011', 'INDIA ', 'MADHYA PRADESH', 'BHOPAL ', '462011', 1, '1', 4, 1524746733, NULL, NULL),
(137, 1, 2, 25, 'COMMISSIONER OF INCOME TAX ( INTELLIGENCE) ', '', '', '', '', 'a', 1234567890, 'bpl@gmail.com', '', '3', '0.00', '2\'ND FLOOR, WALK METRO, BITTHAN MARKET,\r\nE-7, ARERA COLONY, \r\nBHOPAL - 462011', 'INDIA ', 'MADHYA PRADESH', 'BHOPAL ', '462011', 1, '1', 4, 1524746752, NULL, NULL),
(138, 1, 2, 25, 'DIRECTOR OF INCOME TAX ( DTRTI)', '', '', '', '', 'a', 1234567890, 'bpl@gmail.com', '', '3', '0.00', '4\'TH FLOOR, WALK METRO, BITTHAN MARKET, \r\nE-7, ARERA COLONY, \r\nBHOPAL - 462011\r\n', 'INDIA', 'MADHYA PRADESH', 'BHOPAL', '462011', 1, '1', 4, 1524746777, NULL, NULL),
(139, 1, 2, 25, 'PRINCIPAL COMMISSIONER OF INCOME TAX - 01 - (DEO)', '', '', '', '', 'a', 1234567890, 'bpl@gmail.com', '', '3', '0.00', 'AAYAKAR BHAVAN, PLOT NO. 48, \r\nARERA HILLS, HOSHANGABD ROAD, \r\nBHOPAL - 462011', 'INDIA ', 'MADHYA PRADESH', 'BHOPAL ', '462011', 1, '1', 4, 1524746799, NULL, NULL),
(140, 1, 2, 25, 'PRINCIPAL COMMISSIONER OF INCOME TAX - 01 - (OW) ', '', '', '', '', 'a', 1234567890, 'bpl@gmail.com', '', '3', '0.00', 'AAYAKAR BHAVAN, PLOT NO. - 48, \r\nARERA HILLS, HOSHANGABD ROAD, \r\nBHOPAL - 462011', 'INDIA ', 'MADHYA PRADESH', 'BHOPAL ', '462011', 1, '1', 4, 1524746823, NULL, NULL),
(141, 1, 2, 25, 'PRINCIPAL COMMISSIONER OF INCOME TAX - 02 - (DEO)', '', '', '', '', 'a', 1234567890, 'bpl@gmail.com', '', '3', '0.00', '3\'rd FLOOR, WALK METRO, BITTHAN MARKET,\r\nE-7, ARERA COLONY, \r\nBHOPAL - 462011', 'INDIA', 'MADHYA PRADESH', 'BHOPAL ', '462011', 1, '1', 4, 1524746842, NULL, NULL),
(142, 1, 2, 25, 'PRINCIPAL COMMISSIONER OF INCOME TAX - 02 - (OW)', '', '', '', '', 'a', 1234567890, 'bpl@gmail.com', '', '3', '0.00', '3\'rd FLOOR, WALK METRO, BITTAN MARKET, \r\nE-7, ARERA COLONY,\r\nBHOPAL - 462011 ', 'INDIA', 'MADHYA PRADESH', 'BHOPAL', '462011', 1, '1', 4, 1524746859, NULL, NULL),
(143, 1, 2, 25, 'DIRECTOR GENERAL OF INCOME TAX ( INVESTIGATION) ', '', '', '', '', 'a', 1234567890, 'bpl@gmail.com', '', '3', '0.00', 'AAYAKAR BHAVAN, PLOT NO. 48, \r\nARERA HILLS, HOSHANGABAD ROAD,\r\nBHOPAL - 462011\r\n', 'INDIA', 'MADHYA PRADESH', 'BHOPAL ', '462011', 1, '1', 4, 1524746878, NULL, NULL),
(144, 1, 2, 25, 'COMMISSIONER OF INCOME TAX ( TDS) ', '', '', '', '', 'a', 1234567890, 'bpl@gmail.com', '', '3', '0.00', 'AAYAKAR BHAVAN, PLOT NO. 48, \r\nARERA HILLS, HOSHANGABD ROAD, \r\nBHOPAL - 462011\r\n', 'INDIA', 'MADHYA PRADESH', 'BHOPAL', '462011', 1, '1', 4, 1524746901, NULL, NULL),
(145, 1, 2, 25, 'ASST. COMMISSIONER OF INCOME TAX ( BPU) ', '', '', '', '', 'a', 1234567890, 'bpl@gmail.com', '', '3', '0.00', 'AAYAKAR BHAVAN, PLOT NO. 48, \r\nARERA HILLS, HOSHANGABAD ROAD, \r\nBHOPAL - 462011', 'INDIA ', 'MADHYA PRADESH', 'BHOPAL', '462011', 1, '1', 4, 1524746926, NULL, NULL),
(146, 1, 3, 8, 'AJAY POLY PVT. LTD. SURAJPUR. S/SUP', '', '', '', '09AAACA0172A1ZF', 'SOMNATH BHATTACHARYA', 9871485189, 'sbhttacharya@ajaypoly.com', '4', '1,2', '0.00', 'PLOT NO. E-119/120 SITE B, SURAJPUR INDUSTRIAL AREA\r\n', 'INDIA', 'UTTAR PRADESH', 'GREATER NOIDA', '201306', 1, '1', 5, 1524288083, NULL, NULL),
(147, 1, 3, 8, 'AJAY POLY PVT. LTD. SURAJPUR. SG.', '', '', '', '09AAACA0172A1ZF', 'SOMNATH BHATTACHARYA', 9871485189, 'sbhttacharya@ajaypoly.com', '4', '1,2', '0.00', 'PLOT NO. E-119/120 SITE B, SURAJPUR INDUSTRIAL AREA\r\n', 'INDIA', 'UTTAR PRADESH', 'GREATER NOIDA', '201306', 1, '1', 5, 1524288217, NULL, NULL),
(148, 1, 3, 8, 'AJAY POLY PVT. LTD. SURAJPUR. LABOUR ', '', '', '', '09AAACA0172A1ZF', 'SOMNATH BHATTACHARYA', 9871485189, 'sbhttacharya@ajaypoly.com', '4', '1,2', '0.00', 'PLOT NO. E-119/120 SITE B, SURAJPUR INDUSTRIAL AREA\r\n', 'INDIA', 'UTTAR PRADESH', 'GREATER NOIDA', '201306', 1, '1', 5, 1524288257, NULL, NULL),
(149, 1, 3, 8, 'AJAY POLY PVT. LTD. SURAJPUR. LABOUR .', '', '', '', '09AAACA0172A1ZF', 'SOMNATH BHATTACHARYA', 9871485189, 'sbhttacharya@ajaypoly.com', '4', '1,2', '0.00', 'PLOT NO. E-119/120 SITE B, SURAJPUR INDUSTRIAL AREA\r\n', 'INDIA', 'UTTAR PRADESH', 'GREATER NOIDA', '201306', 1, '1', 5, 1524288329, NULL, NULL),
(150, 1, 3, 8, 'AJAY POLY PVT. LTD. SURAJPUR. SG.', '', '', '', '09AAACA0172A1ZF', 'SOMNATH BHATTACHARYA', 9871485189, 'sbhttacharya@ajaypoly.com', '4', '1,2', '0.00', 'PLOT NO. E-119/120 SITE B, SURAJPUR INDUSTRIAL AREA', 'India', 'UTTAR PRADESH', 'GREATER NOIDA', '201306', 0, '1', 5, 1524288436, NULL, NULL),
(151, 1, 3, 8, 'AJAY POLY PVT. LTD. SURAJPUR.MATERIAL', '', '', '', '09AAACA0172A1ZF', 'SOMNATH BHATTACHARYA', 9871485189, 'sbhttacharya@ajaypoly.com', '4', '1,2', '0.00', 'PLOT NO. E-119/120 SITE B, SURAJPUR INDUSTRIAL AREA', 'India', 'UTTAR PRADESH', 'GREATER NOIDA', '201306', 1, '1', 5, 1523178150, NULL, NULL),
(152, 1, 3, 8, 'AJAY POLY PVT. LTD. ADJUSTMENT', '', '', '', '09AAACA0172A1ZF', 'SOMNATH BHATTACHARYA', 9871485189, 'sbhttacharya@ajaypoly.com', '4', '1,2', '0.00', 'PLOT NO. E-119/120 SITE B, SURAJPUR INDUSTRIAL AREA', 'India', 'UTTAR PRADESH', 'GREATER NOIDA', '201306', 1, '1', 5, 1523178174, NULL, NULL),
(153, 1, 3, 8, 'AJAY POLY PVT. LTD.BADARPUR', '', '', '', '07AAACA0172A1ZJ', 'WATSON', 9810566333, 'sbhttacharya@ajaypoly.com', '4', '1,2', '0.00', 'B-2/30, MOHAN CO-OPERATIVE INDUSTRIAL ESTATE, BADARPUR BORDER\r\n', 'INDIA', 'DELHI', '', '110044', 1, NULL, 5, 1523178265, NULL, NULL),
(154, 1, 3, 8, 'AJAY POLY PVT. LTD.MOHALI', '', '', '', '03AAACA0172A1ZR', 'SOMNATH BHATTACHARYA', 9871485189, 'sbhttacharya@ajaypoly.com', '4', '3', '0.00', 'E-180 INDUSTRIAL AREA, PHASE-VII MOHALI\r\n', 'India', 'PUNJAB', 'GREATER NOIDA', '', 1, NULL, 5, 1523178328, NULL, NULL),
(155, 1, 3, 8, 'AJAY POLY PVT. LTD.FBD', '', '', '', '06AAACA0172A1ZL', 'NK.BADOLA', 9971259625, 'sbhttacharya@ajaypoly.com', NULL, '3', '0.00', '19 A, NIT FARIDABAD\r\n', 'INDIA', 'HARYANA', '', '', 1, NULL, 5, 1523178405, NULL, NULL),
(156, 1, 3, 8, 'AJAY POLY PVT. LTD.RAJASTHAN', '', '', '', '08AAACA0172A1ZH', 'AVESH NAYAK', 9829457401, 'rambir.singh@ajaypoly.com', '4', '3', '0.00', 'H-48-49, RIICO INDUSTRIAL AREA VIGYAN NAGAR,  SHAHJAHANPUR, DISTT. ALWAR\r\n', 'INDIA', 'RAJASTHAN', '', '', 1, NULL, 5, 1523178497, NULL, NULL),
(157, 1, 3, 9, 'BIBA APPARELS PRIVATE LIMITED SG', '', 'AABCB9274B', '', '07AABCB9274B1ZU', 'PRAVANJAN PANDA', 9818736766, 'pravanjan.panda@bibaindia.com', '', '1,2', '0.00', 'PLOT NO. 8, CHATTERPUR EXT. BLOCK NO. A-2, NEAR TIVOLI GARDEN\r\n', 'INDIA', 'DELHI', '', '110074', 1, NULL, 5, 1523178754, NULL, NULL),
(158, 1, 3, 9, 'BIBA APPARELS PRIVATE LIMITED HK', '', '', '', '07AABCB9274B1ZU', 'PRAVANJAN PANDA', 9818736766, 'pravanjan.panda@bibaindia.com', NULL, '1,2', '0.00', 'PLOT NO. 8, CHATTERPUR EXT. BLOCK NO. A-2, NEAR TIVOLI GARDEN\r\n', 'INDIA', 'DELHI', '', '110074', 1, NULL, 5, 1523178860, NULL, NULL),
(159, 1, 3, 8, 'COMFORT TRIMS PVT. LTD', '', '', '', '24AADCE0568M1ZJ', 'RAVI SIRMAN', 8401234349, 'riteshkumar@comforttrims.in', NULL, '3', '0.00', 'SURVEY NO. 435, VILLAGE BALASAR', 'INDIA', 'GUJARAT', 'MEHSANA', '382715', 1, NULL, 5, 1523178971, NULL, NULL),
(160, 1, 3, 8, 'COMFORT TRIMS PVT. LTD. OT', '', '', '', '24AADCE0568M1ZJ', 'RAVI SIRMAN', 8401234349, 'riteshkumar@comforttrims.in', NULL, '3', '0.00', 'SURVEY NO. 435, VILLAGE BALASAR', 'India', 'GUJARAT', 'MEHSANA', '382715', 1, NULL, 5, 1523179006, NULL, NULL),
(161, 1, 3, 8, 'COVESTRO (INDIA) PVT. LTD.', '', '', '', '09AAACB2419H1ZY', 'GAURAV SRIVASTAVA', 8800442385, 'gaurav.srivastava@covestro.com', NULL, '1,2', '0.00', 'PLOT NO. 1 A, UDYOG KENDRA SECTOR ECOTECH-III, GREATER NOIDA', 'India', 'U.P.', 'GREATER NOIDA', '201306', 1, '1', 5, 1523179113, NULL, NULL),
(162, 1, 3, 8, 'COVESTRO (INDIA) PVT. LTD. OT', '', '', '', '09AAACB2419H1ZY', 'GAURAV SRIVASTAVA', 8800442385, 'gaurav.srivastava@covestro.com', NULL, '1,2', '0.00', 'PLOT NO. 1 A, UDYOG KENDRA SECTOR ECOTECH-III, GREATER NOIDA-201306', 'India', 'U.P.', 'GREATER NOIDA', '201306', 1, '1', 5, 1523179177, NULL, NULL),
(163, 1, 3, 23, 'DENA BANK MEERUT CANTT', '', '', '', '09AAACD4249B2ZZ', 'RADVEER SINGH', 7060408826, 'meecan@denabank.co.in', '4,5', '1,2', '0.00', 'PL Sharma Rd, Begambagh, Meerut\r\n', 'INDIA', 'UP', '', '250001', 1, '1', 5, 1530778800, NULL, NULL),
(164, 1, 3, 23, 'DENA BANK MEERUT CITY', '', '', '', '09AAACD4249B2ZZ', 'PRAMOD SAHAI', 7088113073, 'meecit@denabank.co.in', NULL, '1,2', '0.00', '449, BUDHANA GATE, OPP. ISMAIL GIRLS DEGREE COLLEGE, Meerut\r\n', 'INDIA', 'UP', '', '250001', 1, '1', 5, 1523179426, NULL, NULL),
(165, 1, 3, 23, 'DENA BANK MEERUT FAFUNDA', '', '', '', '09AAACD4249B2ZZ', 'B.P.SINGH', 7060408830, 'paphun@denabank.co.in', NULL, '1,2', '0.00', 'HAPUR ROAD PAPHUNDA MEERUT\r\n', 'India', 'UTTAR PRADESH', '', '245206', 1, '1', 5, 1523179480, NULL, NULL),
(166, 1, 3, 23, 'DENA BANK MEERUT HAPUR BRANCH', '', '', '', '09AAACD4249B2ZZ', 'PRAMOD KR.SINGH', 7060408829, 'hapur@denabank.co.in', NULL, '1,2', '0.00', 'Swarg Ashram Road, Near Modi Hospital, Hapur\r\n', 'INDIA', 'UP', '', '245101', 1, '1', 5, 1523179539, NULL, NULL),
(167, 1, 3, 23, 'DENA BANK MEERUT LODHA ALIGARH', '', '', '', '09AAACD4249B2ZZ', 'DEVKANT ARYA', 7060408824, 'lodha@denabank.co.in', NULL, '1,2', '0.00', 'KHAIR ROAD LODHA ALIGARH\r\n', 'India', 'U.P.', 'GREATER NOIDA', '202140', 1, '1', 5, 1523179685, NULL, NULL),
(168, 1, 3, 23, 'DENA BANK MEERUT MURADABAD', '', '', '', '09AAACD4249B2ZZ', 'P.K.SHARMA', 7060408828, 'morda@denabank.co.in', NULL, '1,2', '0.00', '1st floor, Town hall, Moradabad\r\n', 'India', 'UTTAR PRADESH', 'GREATER NOIDA', '244001', 1, '1', 5, 1523179743, NULL, NULL),
(169, 1, 3, 23, 'DENA BANK MEERUT MUZAFFER NAGAR', '', 'AAACD4249B', '', '09AAACD4249B2ZZ', 'P.K.SHARMA', 7060408828, 'muzaff@denabank.co.in', '', '1,2', '0.00', 'NEAR MINAKSHI CHOWK LAMBA BAZAR MUZAFFER NAGAR\r\n', 'India', 'UTTAR PRADESH', '', '251002', 1, '1', 5, 1523180240, NULL, NULL),
(170, 1, 3, 23, 'DENA BANK SHASTRI NGR.', '', '', '', '09AAACD4249B2ZZ', 'VEER SINGH', 7060408839, 'shasnm@denabank.co.in', NULL, '1,2', '0.00', 'LS 187 , ASSOCIATE PLAZA NEAR PVS MALL SHASTRI NAGAR MEERUT\r\n', 'INDIA', 'UP', '', '250004', 1, '1', 5, 1523180697, NULL, NULL),
(171, 1, 3, 15, 'DIRECTORATE GENERAL OF  SYSTEM', '', '', '', '', 'ALOK TIWARI', 7011670472, 'aloktiwari2004@gmail.com', NULL, '1,2', '6.50', ' CUSTOMS & CENTRAL EXCISE,  1st FLOOR, NBCC PLAZA SAKET\r\n', 'INDIA', 'DELHI', '', '', 1, NULL, 5, 1523180819, NULL, NULL),
(172, 1, 3, 8, 'ENCRAFT INDIA PVT. LTD.OKHLA.H/K', '', '', '', '07AADCE2725N1ZI', 'AVNISH SINGH', 8800012020, 'avanish.singh@dcjgroup.in', NULL, '1,2', '0.00', 'B-70, OKHLA INDUSTRIAL ESTATE, PHASE-3, NEAR MODI MILL\r\n', 'INDIA', 'DELHI', '', '', 1, NULL, 5, 1523180975, NULL, NULL),
(173, 1, 3, 8, 'ENCRAFT INDIA PVT. LTD.OKHLA.SG', '', '', '', '07AADCE2725N1ZI', 'AVNISH SINGH', 8800012020, 'avanish.singh@dcjgroup.in', NULL, '1,2', '0.00', 'B-70, OKHLA INDUSTRIAL ESTATE, PHASE-3, NEAR MODI MILL\r\n', 'INDIA', 'DELHI', '', '', 1, NULL, 5, 1523181091, NULL, NULL),
(174, 1, 3, 8, 'ENCRAFT INDIA PVT. LTD.SURAJPUR', '', '', '', '09AADCE2725N1ZE', 'AVNISH SINGH', 8800012020, 'avanish.singh@dcjgroup.in', NULL, '1,2', '0.00', 'B-12, SITE C SURAJPUR INDUSTRIAL AREA, GREATER NOIDA\r\n', 'INDIA', 'UTTAR PRADESH', '', '201306', 1, '1', 5, 1523181153, NULL, NULL),
(175, 1, 3, 8, 'HARYANA  AIR  PRODUCTS  LTD.', '', '', '', '06AABCH3440D1Z6', 'UDIT MITTAL', 9871947967, 'udit.mittal@hapgas.com', NULL, '3', '0.00', 'VILL.- TATARPUR, PO-ASAO, DIST. PALWAL\r\n', 'INDIA', 'HARYANA', 'PALWAL', '', 1, NULL, 5, 1523181282, NULL, NULL),
(176, 1, 3, 8, 'HINDUSTAN AEROSYSTEMS PVT LTD', '', '', '', '09AACCH3417R1Z5', 'NEERAJ SHARMA', 8218920234, 'neeraj.sharma@hindustanaerosystems.com', NULL, '1,2', '0.00', 'PLOT NO. 20, ECOTECH-1 , EXTENSION\r\n\r\n', 'INDIA', 'UP', 'GREATER NOIDA', '201306', 1, '1', 5, 1523181555, NULL, NULL);
INSERT INTO `tbl_client` (`id`, `company_id`, `branch_id`, `industry_id`, `client_name`, `client_regi_no`, `pan_cord_no`, `licence_no`, `tax_deduction_ac_no`, `contact_person_name`, `contact_person_mobile`, `contact_person_email`, `deduction_id`, `gst`, `service_tax`, `address`, `country`, `state`, `city`, `pincode`, `status`, `on_up_gst`, `createdby`, `createdon`, `updatedby`, `updatedon`) VALUES
(177, 1, 3, 11, 'KPC PROJECT LTD.SEC 39', '', 'AACCK7073N', '', '09AACCK7073N1ZY', 'ASHOK', 7835064042, 'ashokkumar.b@kpcprojects.com', '', '1,2', '0.00', 'Site Office :District Hospital Project, Sector-50', 'INDIA', 'UP', 'NOIDA', '', 1, '1', 5, 1523181775, NULL, NULL),
(178, 1, 3, 11, 'KPC PROJECT LTD. SEC 50.', '', '', '', '09AACCK7073N1ZY', 'ASHOK', 7835064042, 'ashokkumar.b@kpcprojects.com', NULL, '1,2', '0.00', 'Site Office :District Hospital Project, Sector-50', 'INDIA', 'UP', 'NOIDA', '', 1, '1', 5, 1523181744, NULL, NULL),
(179, 1, 3, 15, 'KRIBHCO INFRASTRUCTURE LTD. NOIDA', '', '', '', '06AADCK7285P1ZT', 'ROHIT SAXENA', 9015166886, 'ocverma@kribhcoinfra.com', NULL, '1,2', '0.00', 'KRIBHCO BHAWAN, A-10, SECTOR-1', 'INDIA', 'UTTAR PRADESH', 'NOIDA', '201301', 1, '1', 5, 1523181926, NULL, NULL),
(180, 1, 3, 15, 'KRIBHCO INFRASTRUCTURE LTD. REWARI', '', '', '', '09AADCK7285P1ZN', 'O.C. VERMA', 9873718051, 'ocverma@kribhcoinfra.com', NULL, '3', '0.00', 'GOVIND PURI, REWARI \r\n', 'INDIA', 'HARYANA', '', '', 1, NULL, 5, 1523182112, NULL, NULL),
(181, 1, 3, 15, 'KRIBHCO INFRASTRUCTURE LTD.MODI NGR', '', '', '', '09AADCK7285P1ZN', 'O.C. VERMA', 9873718051, 'ocverma@kribhcoinfra.com', NULL, '1,2', '0.00', 'MODI NAGAR, DISTT. GHAZIABAD\r\n', 'INDIA', 'UTTAR PRADESH', 'GAZIABAD', '', 1, '1', 5, 1523182201, NULL, NULL),
(182, 1, 3, 8, 'KRISHNA  MARUTI  LTD. - SHEET DIVISION', '', '', '', '24AAACK1316N1ZQ', 'GULAB SINGH', 7573950013, 'gulbkumar@krishnamaruti.in', NULL, '3', '0.00', 'HANSHALPUR - GUJRAT\r\n', 'INDIA', 'GUJARAT', '', '', 1, NULL, 5, 1523182333, NULL, NULL),
(183, 1, 3, 8, 'KRISHNA  MARUTI  LTD. - SHEET DIVISION OT', '', '', '', '24AAACK1316N1ZQ', 'GULAB SINGH', 7573950013, 'gulbkumar@krishnamaruti.in', NULL, '3', '0.00', 'HANSHALPUR - GUJRAT\r\n', 'INDIA', 'GUJARAT', '', '', 1, NULL, 5, 1523182418, NULL, NULL),
(184, 1, 3, 8, 'KRISHNA  MARUTI  LTD.-PLASTIC DIVISION', '', '', '', '24AAACK1316N2ZP', 'OP PUROHIT', 9712699666, 'oppurohit@krishnamaruti.in', NULL, '3', '0.00', 'Plot No.-6, SMG Supplier Park, Village-Hansalpur (Becharaji), Taluka- Mandal,  Dist-Ahmedabad\r\n', 'INDIA', 'GUJARAT', '', '', 1, NULL, 5, 1523182896, NULL, NULL),
(185, 1, 3, 8, 'KRISHNA  MARUTI  LTD.-PLASTIC DIVISION OT', '', '', '', '24AAACK1316N2ZP', 'OP PUROHIT', 9712699666, 'oppurohit@krishnamaruti.in', NULL, '3', '0.00', 'Plot No.-6, SMG Supplier Park, Village-Hansalpur (Becharaji), Taluka- Mandal,  Dist-Ahmedabad\r\n', 'INDIA', 'GUJARAT', '', '', 1, NULL, 5, 1523182948, NULL, NULL),
(186, 1, 3, 8, 'KRISHNA GROUP ANTOLINE PVT. LTD.', '', '', '', '24AACCK4149H3ZM', 'AWADHESH', 7046387684, 'hrkgapl_guj@krishnamaruti.in', NULL, '3', '0.00', 'DASHLANA DISTT VIRAMGAM GUJRAT\r\n', 'India', 'GUJARAT', '', '', 1, NULL, 5, 1523182999, NULL, NULL),
(187, 1, 3, 8, 'KRISHNA GROUP ANTOLINE PVT. LTD.OT', '', '', '', '24AACCK4149H3ZM', 'AWADHESH', 7046387684, 'hrkgapl_guj@krishnamaruti.in', NULL, '3', '0.00', 'DASHLANA DISTT VIRAMGAM GUJRAT\r\n', 'India', 'GUJARAT', '', '', 1, NULL, 5, 1523183048, NULL, NULL),
(188, 1, 3, 8, 'KRISHNA ISHIZAKI AUTO LTD', '', 'AAACK3141P', '', '24AAACK3141P1ZJ', 'RAVI SIRMAN', 8401234349, 'riteshkumar@comforttrims.in', '', '3', '0.00', 'VILL-DASLANA,TALUKA,VIRAMGAM\r\n', 'India', 'GUJARAT', 'AHMEDABAD', '', 1, NULL, 5, 1523183135, NULL, NULL),
(189, 1, 3, 8, 'KRISHNA ISHIZAKI AUTO LTD. OT', '', '', '', '24AAACK3141P1ZJ', 'AMIT MAKWANA', 9998607766, 'amitmakwanahr@gmail.com', NULL, '3', '0.00', 'VILL-DASLANA,TALUKA,VIRAMGAM,', 'India', 'GUJARAT', 'AHMEDABAD', '', 1, NULL, 5, 1523183192, NULL, NULL),
(190, 1, 3, 10, 'NCHM CT', '', '', '', '', 'NARSINGH', 9811503097, 'nchmctadmn@gmail.com', '', '1,2', '0.00', 'C-1, HUTMENTS, NEW DELHI\r\n', 'INDIA', 'NEW DELHI', '', '', 1, NULL, 5, 1530581348, NULL, NULL),
(191, 1, 3, 10, 'NCHM CT ..', '', '', '', '', 'NARSINGH', 9811503097, 'nchmctadmn@gmail.com', '', '1,2', '0.00', 'TRANSPORT BHAWAN ROOM NO. 126, NEW DELHI\r\n', 'INDIA', 'NEW DELHI', '', '', 1, NULL, 5, 1530581407, NULL, NULL),
(192, 1, 3, 10, 'NCHM CT...', '', '', '', '', 'NARSINGH', 9811503097, 'nchmctadmn@gmail.com', '', '1,2', '0.00', 'A-34, SECTOR-62, NOIDA\r\n', 'INDIA', 'UP', '', '', 1, '1', 5, 1530581465, NULL, NULL),
(193, 1, 3, 10, 'NCHM CT....', '', '', '', '', 'NARSINGH', 9811503097, 'nchmctadmn@gmail.com', '', '1,2', '0.00', 'A-34, SECTOR-62, NOIDA\r\n', 'INDIA', 'UP', '', '', 1, '1', 5, 1530581508, NULL, NULL),
(194, 1, 3, 10, 'NCHM CT.....', '', 'AAACK3141P', '', '', 'NARSINGH', 9811503097, 'nchmctadmn@gmail.com', '', '1,2', '0.00', 'A-34, SECTOR-62, NOIDA\r\n', 'India', 'UTTAR PRADESH', 'NOIDA', '', 1, '1', 5, 1530581542, NULL, NULL),
(195, 1, 3, 10, 'NCHM CT.......', '', '', '', '', 'NARSINGH', 9811503097, 'nchmctadmn@gmail.com', '', '1,2', '0.00', 'A-34, SECTOR-62, NOIDA\r\n', 'INDIA', 'UP', 'NOIDA', '', 1, '1', 5, 1530581578, NULL, NULL),
(212, 1, 3, 8, 'SUKHI CREATIONS', '', '', '', '', 'SONAL GOYAL', 9310193494, 'asdas@fafaf151fasf.com', '', '1,2', '0.00', 'SURAJ PUR', '', '', '', '', 1, '1', 5, 1530583704, NULL, NULL),
(196, 1, 3, 8, 'OMP INDIA PVT. LTD.', '', '', '', '06AAACO8867C1ZD', 'HARISH THAKUR', 8860400300, 'bipin.upadhaya@omp-group.com', NULL, '3', '0.00', 'DEVALI CROSSING, BHAGOLA (HR)\r\n', 'INDIA', 'HARYANA', '', '', 1, NULL, 5, 1523183809, NULL, NULL),
(197, 1, 3, 12, 'PACE EXPRESS TRAVELS & CARGO PVT. LTD.', '', '', '', '07AACCP7113Q2ZI', 'ABHIMANYU SHARMA', 9873561744, 'administration@groupconcorde.com', NULL, '1,2', '0.00', 'KHASRA NO. 1027/1, ROAD NO. 06, PLOT NO. 29,NR. OM PALACE HOTEL, MAHIPALPUR, NEW DELHI-37\r\n', 'INDIA', 'DELHI', '', '110037', 1, NULL, 5, 1523183903, NULL, NULL),
(198, 1, 3, 8, 'RELIABLE PACKAGING UNIT 3', '', '', '', '09AXPPS8992R1ZP', 'ABHIMANYU SHARMA', 9873561744, 'navneet@reliablepackaging.com', NULL, '1,2', '0.00', 'RELIABLE PACKAGING PLOT NO.39-40 UCOTECH 1ST.GR NOIDA', 'INDIA', 'UTTAR PRADESH', 'NOIDA', '', 1, '1', 5, 1523184030, NULL, NULL),
(199, 1, 3, 12, 'RELIABLE TRAVELS & CARGO PVT. LTD.', '', '', '', '07AAACR4254J1ZC', 'ABHIMANYU SHARMA', 9873561744, 'administration@groupconcorde.com', NULL, '1,2', '0.00', 'H.NO. B-843/1, VASANT KUNJ ROAD, MAHIPALPUR, NR. CNG GAS, NEW DELHI-37\r\n', 'INDIA', 'DELHI', '', '110037', 1, NULL, 5, 1523184174, NULL, NULL),
(200, 1, 3, 24, 'RWA SARITA VIHAR, POCKET –“ L “ ,', '', '', '', '', 'MAHESH NANDA', 9811413132, 'administration@grouprwa.com', '', '1,2', '7.25', 'SARITA VIHAR\r\n', 'INDIA', 'DELHI', '', '110076', 1, NULL, 5, 1524637100, NULL, NULL),
(201, 1, 3, 8, 'SUMRIDHI ALUMINIUM PRIVATE LIMITED', '', '', '', '06AAKCS9296D1ZW', 'GIRISH SHARMA', 7404157301, 'girish@sumridhialuminium.com', NULL, '3', '0.00', ' DEVLI-MANDKOL ROAD, VILLAGE- BAGOLA, DISTT. PALWAL\r\n', 'INDIA', 'HARYANA', 'PALWAL', '', 1, NULL, 5, 1523184357, NULL, NULL),
(202, 1, 3, 8, 'SUNRISE SPORTS (INDIA) PVT. LTD.', '', '', '', '07AAACS3317D1ZU', 'GANESH THAKUR', 9873562640, 'ganesh@risesun.co.in', NULL, '1,2', '0.00', 'SALCON AUREM BUILDING\r\n', 'INDIA', 'DELHI', 'JASOLA', '', 1, NULL, 5, 1523184462, NULL, NULL),
(203, 1, 3, 23, 'THE INDUSIND  BANK  LIMITED  ', '', '', '', '09AAACI1314G1Z1', 'ANNU SHETIYAR', 2261069291, 'annu.shetiyar@indusind.com', NULL, '1,2', '0.00', '5,10-R P MARG,SKRD LUCKNOW\r\n', 'INDIA', 'UTTAR PRADESH', '', '226001', 1, '1', 5, 1523184523, NULL, NULL),
(204, 1, 3, 11, 'VSS BUILDCON PVT. LTD,', '', '', '', '17AAECV1608G1ZI', 'RAHUL PANDEY', 7503411795, 'info@vssbuildcon.com', '', '3', '7.00', 'UPPER NON GRIM HILLS SHILLONG\r\n', 'INDIA', 'MEGHALAYA', '', '', 1, NULL, 5, 1524474402, NULL, NULL),
(205, 1, 2, 25, 'INCOME TAX OFFICER - RAISEN-1', '1', '', '', '', 'A', 1234567890, 'bhopal@gmail.com', '', '3', '0.00', 'PATAN DEV, SAGAR ROAD,\r\nRAISEN', '', 'MADHYA PRADESH ', 'RAISEN ', '', 1, '1', 4, 1528896786, NULL, NULL),
(206, 1, 1, 3, 'DISTRICT CONSUMER FORUM, BULANDSAHAR', '', '', '', '', 'PESHKAR', 8170557222, 'confobulan@gmail.com', '', '1,2', '0.00', '', 'INDIA', 'UTTAR PRADESH', 'BULANDSAHAR', '', 1, NULL, 3, 1530881612, NULL, NULL),
(207, 1, 1, 3, 'DISTRICT CONSUMER FORUM, HAPUR (SWEEPER).', '', '', '', '', 'PESHKAR', 9456472627, 'hapur@gmail.com', '', '1,2', '0.00', 'KOLECTRATE COMPOUND, HAPUR', 'INDIA', 'UTTAR PRADESH', 'HAPUR', '', 1, NULL, 3, 1531203428, NULL, NULL),
(208, 1, 1, 22, 'KRIBHCO FERTILIZERS LTD. (TOWN SHIP)', '', '', '', '09AACCK6999B1Z6', 'Mr. Anand Pathak ', 9918577777, 'anandpathak@ksfl.in', NULL, '1,2', '0.00', 'PIPROLA SHAHJAHANPUR', 'INDIA', 'UTTAR PRADESH', 'SHAHJAHANPUR', '', 1, NULL, 3, 1530506171, NULL, NULL),
(209, 1, 1, 22, 'KRIBHCO FERTILIZERS LTD. (PLANT)', '', '', '', '09AAACB2419H1ZY', 'Mr. Anand Pathak ', 9918577777, 'ananpathak@ksfl.com', NULL, '1,2', '0.00', 'PIPROLA SHAHJAHANPUR', 'INDIA', 'UTTAR PRADESH', 'SHAHJAHANPUR', '', 1, NULL, 3, 1530506332, NULL, NULL),
(210, 1, 1, 21, 'ADHIKSHIKA, RAJKIY MAMTA VIDYALAY MOHAAN ROAD', '', '', '', '', 'G N YATI', 8896301220, 'mamta@gmail.com', NULL, NULL, '0.00', '', '', '', '', '', 1, NULL, 3, 1530536227, NULL, NULL),
(211, 1, 1, 21, 'ADIKSHIKA, RAJKIY MAMTA VIDYALAY MOHAAN ROAD', '', '', '', '', 'G N YATI', 8896301220, 'mamta@gmail.com', NULL, NULL, '0.00', '', '', '', '', '', 1, NULL, 3, 1530536645, NULL, NULL),
(213, 1, 1, 3, 'DISTRICT CONSUMER FORUM, AGRA-I', '', '', '', '', 'PESHKAR ', 9058071908, 'pallab.k2011@gmail.com', '', '1,2', '0.00', 'CALECTRATE  COMPOUND AGRA', 'INDIA', 'UP', 'AGRA', '', 1, NULL, 3, 1530877245, NULL, NULL),
(214, 1, 1, 3, 'DISTRICT CONSUMER FORUM, AGRA-II', '', '', '', '', 'PESHKAR ', 7753035484, 'pallav.k2011@gmail.com', '1,2', '1,2', '0.00', 'COLECTRATE  COMPOUND AGRA-II', 'INDIA', 'UP', 'AGRA', '', 1, NULL, 3, 1530876308, NULL, NULL),
(215, 1, 1, 3, 'DISTRICT CONSUMER FORUM, AMBEDKARNAGAR', '', '', '', '', 'PESHKAAR', 8353953161, 'ramuwith@gmail.com', NULL, '1,2', '0.00', 'KOLECTRATE COMPOUND AMBEDKARNAGAR', 'INDIA', 'UTTAR PRADESH', 'AMBEDKARNAGAR', '224001', 1, NULL, 3, 1531123731, NULL, NULL),
(216, 1, 1, 3, 'DISTRICT CONSUMER FORUM, SITAPUR.', '', '', '', '', 'CONSUMER FORUM', 8004151453, 'sanajykumar1988@gmail.com', NULL, '1,2', '0.00', 'Kalectrate Compound, ', 'INDIA', 'UTTAR PRADESH', 'SITAPUR', '261001', 1, NULL, 3, 1531125974, NULL, NULL),
(217, 1, 1, 3, 'DISTRICT CONSUMER FORUM, BAGPAT.', '', '', '', '', 'DISTRICT CONSUMER FORUM', 9568666184, 'ravindrakumar000123@gmail.com', NULL, '1,2', '0.00', 'Kalectrate Compound, Bagpat', 'INDIA', 'UTTAR PRADESH', 'BAGPAT', '250606', 1, NULL, 3, 1531134850, NULL, NULL),
(218, 1, 1, 3, 'DISTRICT CONSUMER FORUM,FATEHPUR.', '', '', '', '', 'CONSUMER FORUM', 5180223627, 'confo-ft-up@nic.in', NULL, '1,2', '0.00', 'Kalectrate Compound, Fatehpur', 'INDIA', 'UTTAR PRADESH', 'FATEHPUR ', '212601', 1, NULL, 3, 1531137619, NULL, NULL),
(219, 1, 1, 3, 'DISTRICT CONSUMER FORUM, HAPUR  (CHOWKIDAR)', '', '', '', '', 'PESHKAR', 9456472627, 'hapur@gmail.com', NULL, '1,2', '0.00', 'KALECTRATE COMPUND , HAPUR', 'INDIA', 'UTTAR PRADESH', 'HAPUR', '', 1, NULL, 3, 1531200104, NULL, NULL),
(220, 1, 1, 3, 'DISTRICT CONSUMER FORUM, HAPUR  (ARDALI)', '', '', '', '', 'PESHKAAR', 9456472627, 'hapur@gmail.com', '', '1,2', '0.00', 'KOLECTRATE COMPOUND, HAPUR', 'INDIA', 'UTTAR PRADESH', 'HAPUR', '', 1, NULL, 3, 1531201639, NULL, NULL),
(221, 1, 1, 3, 'DISTRICT CONSUMER FORUM, HAPUR  (PEON)', '', '', '', '', 'PESHKAR', 9456472627, 'hapur@gmail.com', '', '1,2', '0.00', 'KOLECTRATE COMPOUND, HAPUR', 'INDIA', 'UTTAR PRADESH', 'HAPUR', '', 1, NULL, 3, 1531202600, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_client_invoice`
--

CREATE TABLE `tbl_client_invoice` (
  `id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `year_v` int(11) NOT NULL,
  `month_v` int(11) NOT NULL,
  `bank_branch_id` int(11) NOT NULL,
  `invoice_no` int(11) NOT NULL,
  `on_up_gst` char(1) DEFAULT NULL,
  `service_ids` text,
  `sub_service_ids` text,
  `invoice_date` varchar(15) NOT NULL,
  `payment_string` text NOT NULL,
  `total_payment_string` text NOT NULL,
  `emp_details` text NOT NULL,
  `total_amount` decimal(10,2) NOT NULL,
  `paid_amount` decimal(10,2) DEFAULT NULL,
  `due_amount` decimal(10,2) DEFAULT NULL,
  `payment_status` enum('Unpaid','Due','Paid') NOT NULL,
  `createdon` int(11) NOT NULL,
  `createdby` int(11) NOT NULL,
  `updatedon` int(11) DEFAULT NULL,
  `updatedby` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_client_service_mapping`
--

CREATE TABLE `tbl_client_service_mapping` (
  `id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL,
  `subservice_id` int(11) NOT NULL,
  `allowance` varchar(150) DEFAULT NULL,
  `client_rate` decimal(10,2) NOT NULL,
  `employee_rate` decimal(10,2) NOT NULL,
  `strength` int(10) NOT NULL,
  `total` int(10) NOT NULL,
  `status` int(11) NOT NULL,
  `bill_cycle` int(11) NOT NULL,
  `bill_cycle_num` int(2) DEFAULT NULL,
  `ot_rate` decimal(10,2) DEFAULT NULL,
  `createdby` int(11) NOT NULL,
  `createdon` int(11) NOT NULL,
  `updatedby` int(11) DEFAULT NULL,
  `updatedon` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_company`
--

CREATE TABLE `tbl_company` (
  `id` int(11) NOT NULL,
  `company_name` text NOT NULL,
  `financial_year_from` date DEFAULT NULL,
  `financial_year_to` date DEFAULT NULL,
  `establishment_date` date DEFAULT NULL,
  `company_regi_no` varchar(100) NOT NULL,
  `pan_cord_no` varchar(50) NOT NULL,
  `pf_regi_no` varchar(100) DEFAULT NULL,
  `pf_regi_date` date DEFAULT NULL,
  `licence_no` varchar(100) DEFAULT NULL,
  `tax_deduction_ac_no` varchar(100) DEFAULT NULL,
  `policy_in_lieu_edli_no` varchar(100) DEFAULT NULL,
  `policy_in_lieu_edli_date` date DEFAULT NULL,
  `gratuity_reg_no` varchar(100) DEFAULT NULL,
  `esi_regi_no` varchar(100) DEFAULT NULL,
  `esi_regi_date` date DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `pincode` varchar(255) DEFAULT NULL,
  `logo_path` varchar(255) DEFAULT NULL,
  `createdby` int(11) NOT NULL,
  `createdon` int(11) NOT NULL,
  `updatedby` int(11) DEFAULT NULL,
  `updatedon` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_company`
--

INSERT INTO `tbl_company` (`id`, `company_name`, `financial_year_from`, `financial_year_to`, `establishment_date`, `company_regi_no`, `pan_cord_no`, `pf_regi_no`, `pf_regi_date`, `licence_no`, `tax_deduction_ac_no`, `policy_in_lieu_edli_no`, `policy_in_lieu_edli_date`, `gratuity_reg_no`, `esi_regi_no`, `esi_regi_date`, `address`, `country`, `state`, `city`, `pincode`, `logo_path`, `createdby`, `createdon`, `updatedby`, `updatedon`) VALUES
(1, 'Omax Security Services Pvt. Ltd.', '2017-11-29', '2017-11-19', '2017-11-23', 'rvr', 'AABC05531E', 'UPLKO00056017000', '2011-01-01', 'g5g5g5', 'g5g5g', '', '2011-01-01', '', '30000600320001000', '2011-01-01', 'A-Surajdeep Building, IInd Floor, Jopling Road near Dainik Jagran Crossing', 'India', 'U.P.', 'Lucknow', '226001', '00d678ceb2ab792ca0d654a4f9186149.png', 1, 1511704448, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_confirmation_letter`
--

CREATE TABLE `tbl_confirmation_letter` (
  `id` int(11) NOT NULL,
  `applicant_id` int(11) NOT NULL,
  `grade` int(100) NOT NULL,
  `designation` varchar(100) NOT NULL,
  `appointemntdate` varchar(100) NOT NULL,
  `signDesignation` varchar(100) NOT NULL,
  `confirmdate` varchar(100) NOT NULL,
  `reportdate` varchar(100) NOT NULL,
  `createdon` int(100) NOT NULL,
  `createdby` int(11) NOT NULL,
  `letter_status` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_deduction_head`
--

CREATE TABLE `tbl_deduction_head` (
  `id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `date_from` date DEFAULT NULL,
  `date_to` date DEFAULT NULL,
  `type_of_deduction` enum('Regular','Temperary') NOT NULL,
  `mode_of_deduction` enum('Fixed','Calculated') NOT NULL,
  `deduction_applied_on` int(11) NOT NULL,
  `deduction_not_applied_on` int(11) DEFAULT NULL,
  `deduction_head` varchar(255) NOT NULL,
  `employee_contribution` decimal(10,2) DEFAULT NULL,
  `employer_contribution` decimal(10,2) DEFAULT NULL,
  `min_deduction_limit` decimal(10,2) DEFAULT NULL,
  `max_deduction_limit` decimal(10,2) DEFAULT NULL,
  `min_salary_limit` decimal(10,2) DEFAULT NULL,
  `max_salary_limit` decimal(10,2) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `createdby` int(11) NOT NULL,
  `createdon` int(11) NOT NULL,
  `updatedby` int(11) DEFAULT NULL,
  `updatedon` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_department`
--

CREATE TABLE `tbl_department` (
  `id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `department_name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `status` int(11) NOT NULL,
  `createdby` int(11) NOT NULL,
  `createdon` int(11) NOT NULL,
  `updatedby` int(11) DEFAULT NULL,
  `updatedon` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_designation`
--

CREATE TABLE `tbl_designation` (
  `id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `designation_name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `status` int(11) NOT NULL,
  `createdby` int(11) NOT NULL,
  `createdon` int(11) NOT NULL,
  `updatedby` int(11) DEFAULT NULL,
  `updatedon` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_employee`
--

CREATE TABLE `tbl_employee` (
  `id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `group_id` varchar(20) NOT NULL,
  `emp_code` varchar(255) NOT NULL,
  `emp_name` varchar(255) NOT NULL,
  `dob` date NOT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `mobile` bigint(10) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `pan` varchar(50) DEFAULT NULL,
  `adhar_card_no` varchar(12) DEFAULT NULL,
  `createdby` int(11) NOT NULL,
  `createdon` int(11) NOT NULL,
  `updatedby` int(11) DEFAULT NULL,
  `updatedon` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_employee`
--

INSERT INTO `tbl_employee` (`id`, `company_id`, `group_id`, `emp_code`, `emp_name`, `dob`, `gender`, `mobile`, `email`, `pan`, `adhar_card_no`, `createdby`, `createdon`, `updatedby`, `updatedon`) VALUES
(1, 1, '1', 'vitesseio-1', 'Vishal singh', '1995-12-18', 'male', 8417809551, 'vishalsingh1812@gmail.com', '478596589', '451278548569', 1, 1560332162, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_employee_licence`
--

CREATE TABLE `tbl_employee_licence` (
  `id` int(11) NOT NULL,
  `emp_id` int(11) NOT NULL,
  `licence_type` varchar(255) DEFAULT NULL,
  `issued_by` varchar(255) DEFAULT NULL,
  `regi_no` varchar(255) DEFAULT NULL,
  `issue_date` date DEFAULT NULL,
  `valid_upto` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_employee_official`
--

CREATE TABLE `tbl_employee_official` (
  `id` int(11) NOT NULL,
  `emp_id` int(11) NOT NULL,
  `doj` date NOT NULL,
  `job_type` varchar(255) DEFAULT NULL,
  `experience` varchar(255) DEFAULT NULL,
  `esic_id` varchar(255) DEFAULT NULL,
  `pf_id` varchar(255) DEFAULT NULL,
  `account_no` varchar(20) DEFAULT NULL,
  `bank_name` varchar(255) DEFAULT NULL,
  `ifsc_code` varchar(255) DEFAULT NULL,
  `branch_code` varchar(255) DEFAULT NULL,
  `bank_branch_name` varchar(255) DEFAULT NULL,
  `salary_type` enum('AsPerClient','AsPerEmployee') NOT NULL,
  `grade` int(11) NOT NULL,
  `department` int(11) NOT NULL,
  `designation` int(11) NOT NULL,
  `photo` varchar(255) DEFAULT NULL,
  `right_thumb` varchar(255) DEFAULT NULL,
  `left_thumb` varchar(255) DEFAULT NULL,
  `date_of_leave` date DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_employee_qualification`
--

CREATE TABLE `tbl_employee_qualification` (
  `id` int(11) NOT NULL,
  `emp_id` int(11) NOT NULL,
  `class_stad` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `collage_name` varchar(255) NOT NULL,
  `passing_year` varchar(255) NOT NULL,
  `division` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_employee_reference`
--

CREATE TABLE `tbl_employee_reference` (
  `id` int(11) NOT NULL,
  `emp_id` int(11) NOT NULL,
  `ref_person_name` varchar(255) NOT NULL,
  `ref_person_add` text NOT NULL,
  `ref_person_mbile` bigint(12) NOT NULL,
  `ref_person_known` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_extradeduction`
--

CREATE TABLE `tbl_extradeduction` (
  `id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `extradeduction_name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `status` int(11) NOT NULL,
  `createdby` int(11) NOT NULL,
  `createdon` int(11) NOT NULL,
  `updatedby` int(11) DEFAULT NULL,
  `updatedon` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_extradeduction_trans`
--

CREATE TABLE `tbl_extradeduction_trans` (
  `id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `extradeduction_id` int(11) NOT NULL,
  `payable_id` int(11) NOT NULL,
  `month_v` int(11) NOT NULL,
  `year_v` int(11) NOT NULL,
  `loan_type` varchar(50) NOT NULL,
  `emp_id` int(11) NOT NULL,
  `loan_approved` decimal(10,2) NOT NULL,
  `due` decimal(10,2) NOT NULL,
  `paid` decimal(10,2) NOT NULL,
  `emi_id` int(11) DEFAULT NULL,
  `tran_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `createdon` int(11) NOT NULL,
  `createdby` int(11) NOT NULL,
  `updatedon` int(11) DEFAULT NULL,
  `updatedby` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_grade`
--

CREATE TABLE `tbl_grade` (
  `id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `grade_name` varchar(255) NOT NULL,
  `nature_of_work` varchar(255) DEFAULT NULL,
  `description` text NOT NULL,
  `status` int(11) NOT NULL,
  `createdby` int(11) NOT NULL,
  `createdon` int(11) NOT NULL,
  `updatedby` int(11) DEFAULT NULL,
  `updatedon` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_gradebase_salary`
--

CREATE TABLE `tbl_gradebase_salary` (
  `id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `grade_id` int(11) NOT NULL,
  `department_id` int(11) NOT NULL,
  `designation_id` int(11) NOT NULL,
  `basic_salary` decimal(10,2) NOT NULL,
  `deduction_id` varchar(255) DEFAULT NULL,
  `allowance` varchar(255) DEFAULT NULL,
  `income_tax` varchar(1) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `createdby` int(11) NOT NULL,
  `createdon` int(11) NOT NULL,
  `updatedby` int(11) DEFAULT NULL,
  `updatedon` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_group`
--

CREATE TABLE `tbl_group` (
  `id` int(11) NOT NULL,
  `group_title` varchar(255) NOT NULL,
  `group_permission` text NOT NULL,
  `status` int(1) NOT NULL,
  `createdby` int(11) NOT NULL,
  `createdon` int(11) NOT NULL,
  `updatedby` int(11) DEFAULT NULL,
  `updatedon` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_group`
--

INSERT INTO `tbl_group` (`id`, `group_title`, `group_permission`, `status`, `createdby`, `createdon`, `updatedby`, `updatedon`) VALUES
(1, 'smartadmin', 'menu,menu-add,menu-index,menu-edit,menu-delete,group,group-add,group-index,group-edit,group-delete,employee,employee-add,employee-index,employee-edit,employee-delete,smartadmin,smartadmin-dashboard', 1, 1, 1560332038, NULL, NULL),
(3, 'demo', 'menu,menu-add,menu-index,menu-edit,menu-delete,group,group-add,group-index,group-edit,group-delete,employee,employee-add,employee-index,employee-edit,employee-delete', 1, 1, 1560417179, 1, 1560417341);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_gst_master`
--

CREATE TABLE `tbl_gst_master` (
  `id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `cgst` decimal(10,2) DEFAULT NULL,
  `sgst` decimal(10,2) DEFAULT NULL,
  `igst` decimal(10,2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_income_tax`
--

CREATE TABLE `tbl_income_tax` (
  `id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `type_of_tax` varchar(10) NOT NULL,
  `tax_applied_on` int(11) NOT NULL,
  `min_salary_limit` decimal(10,2) NOT NULL,
  `max_salary_limit` decimal(10,2) NOT NULL,
  `percentage` decimal(10,2) NOT NULL,
  `status` int(11) NOT NULL,
  `createdby` int(11) NOT NULL,
  `createdon` int(11) NOT NULL,
  `updatedby` int(11) DEFAULT NULL,
  `updatedon` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_industry`
--

CREATE TABLE `tbl_industry` (
  `id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `industry_name` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `createdby` int(11) NOT NULL,
  `createdon` int(11) NOT NULL,
  `updatedby` int(11) DEFAULT NULL,
  `updatedon` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_loan_advance_details`
--

CREATE TABLE `tbl_loan_advance_details` (
  `id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `loan_type` varchar(50) NOT NULL,
  `emp_id` int(11) NOT NULL,
  `loan_amount` int(11) NOT NULL,
  `loan_approved` decimal(10,2) NOT NULL,
  `due` decimal(10,2) NOT NULL,
  `paid` decimal(10,2) NOT NULL,
  `emi_amount` float DEFAULT NULL,
  `emi_no` int(11) NOT NULL,
  `date_applied` varchar(100) NOT NULL,
  `date_approved` varchar(100) NOT NULL,
  `loan_approved_by` int(11) NOT NULL,
  `purpose_loan` varchar(255) NOT NULL,
  `createdon` int(11) NOT NULL,
  `createdby` int(11) NOT NULL,
  `updatedon` int(11) DEFAULT NULL,
  `updatedby` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `year_v` int(11) NOT NULL,
  `month_v` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_loan_details`
--

CREATE TABLE `tbl_loan_details` (
  `id` int(11) NOT NULL,
  `emp_id` int(11) NOT NULL,
  `row_id` int(11) NOT NULL,
  `emi_amount` int(11) NOT NULL,
  `no_of_emi` int(11) NOT NULL,
  `emi_status` int(11) DEFAULT NULL,
  `emi_payable_id` int(11) DEFAULT NULL,
  `year_v` int(11) NOT NULL,
  `month_v` int(11) NOT NULL,
  `createdon` int(11) NOT NULL,
  `updatedon` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_menu`
--

CREATE TABLE `tbl_menu` (
  `id` int(11) NOT NULL,
  `menu_title` varchar(255) NOT NULL,
  `menu_function` varchar(255) DEFAULT NULL,
  `menu_url` varchar(255) NOT NULL,
  `menu_parent_id` int(10) UNSIGNED DEFAULT NULL,
  `menu_icon` varchar(255) DEFAULT NULL,
  `display_in_menu` tinyint(3) UNSIGNED DEFAULT NULL,
  `status` int(11) NOT NULL,
  `createdby` int(11) NOT NULL,
  `createdon` int(11) NOT NULL,
  `updatedby` int(11) DEFAULT NULL,
  `updatedon` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_menu`
--

INSERT INTO `tbl_menu` (`id`, `menu_title`, `menu_function`, `menu_url`, `menu_parent_id`, `menu_icon`, `display_in_menu`, `status`, `createdby`, `createdon`, `updatedby`, `updatedon`) VALUES
(1, 'Manage Menu', NULL, 'menu', 0, 'fa fa-bars', 1, 1, 1, 1560331718, NULL, NULL),
(2, 'Add Menu ', NULL, 'menu-add', 1, 'fa fa-plus', 1, 1, 1, 1560331833, 1, 1560404266),
(3, 'Menu List', NULL, 'menu-index', 1, 'fa fa-bars', 1, 1, 1, 1560331882, NULL, NULL),
(4, 'Edit Menu', NULL, 'menu-edit', 1, 'fe fe-edit-2', 0, 1, 1, 1560331928, NULL, NULL),
(5, 'Delete Menu', NULL, 'menu-delete', 1, 'fa fa-trash', 0, 1, 1, 1560331951, NULL, NULL),
(6, 'Manage Group', NULL, 'group', 0, 'fa fa-users', 1, 1, 22, 1560333416, NULL, NULL),
(7, 'Add Group', NULL, 'group-add', 6, 'fa fa-plus', 1, 1, 22, 1560333459, NULL, NULL),
(8, 'Group List', NULL, 'group-index', 6, 'fa fa-bars', 1, 1, 22, 1560333502, NULL, NULL),
(9, 'Edit Group', NULL, 'group-edit', 6, 'fe fe-edit-2', 0, 1, 22, 1560333597, NULL, NULL),
(10, 'Delete Group', NULL, 'group-delete', 6, 'fa fa-trash', 0, 1, 22, 1560333627, NULL, NULL),
(11, 'Manage Employee', NULL, 'employee', 0, 'fa fa-user-plus', 1, 1, 1, 1560334007, NULL, NULL),
(12, 'Add Employee', NULL, 'employee-add', 11, 'fa fa-plus', 1, 1, 1, 1560334050, 1, 1560410941),
(13, 'Employee List', NULL, 'employee-index', 11, 'fa fa-bars', 1, 1, 1, 1560334091, NULL, NULL),
(14, 'Edit Employee', NULL, 'employee-edit', 11, 'fe fe-edit-2', 0, 1, 1, 1560334121, NULL, NULL),
(15, 'Delete Employee', NULL, 'employee-delete', 11, 'fa fa-trash', 0, 1, 1, 1560334159, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_offerletter`
--

CREATE TABLE `tbl_offerletter` (
  `id` int(11) NOT NULL,
  `applicant_id` int(11) NOT NULL,
  `reportingon` varchar(100) NOT NULL,
  `place` varchar(100) NOT NULL,
  `interviewon` varchar(100) NOT NULL,
  `interviewed_by` int(11) NOT NULL,
  `post_offered` varchar(100) NOT NULL,
  `offered_salary` int(11) NOT NULL,
  `reference_number` int(11) NOT NULL,
  `letter_status` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_outstading_amount`
--

CREATE TABLE `tbl_outstading_amount` (
  `id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `outstanding_amount` decimal(15,2) NOT NULL,
  `paid_amount` decimal(15,2) DEFAULT '0.00',
  `due_amount` decimal(15,2) NOT NULL,
  `createdon` int(11) NOT NULL,
  `createdby` int(11) NOT NULL,
  `updatedon` int(11) DEFAULT NULL,
  `updatedby` int(11) DEFAULT NULL,
  `status` enum('Unpaid','Due','Paid') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_outstandingamountt_transaction`
--

CREATE TABLE `tbl_outstandingamountt_transaction` (
  `id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `paymentmode` int(11) NOT NULL,
  `totalamount` decimal(15,2) NOT NULL,
  `tds_amount` decimal(15,0) DEFAULT NULL,
  `pay_amount` decimal(15,2) NOT NULL,
  `due_amount` decimal(15,2) NOT NULL,
  `pay_person` varchar(50) DEFAULT NULL,
  `payment_date` varchar(225) NOT NULL,
  `bank_name` int(11) DEFAULT NULL,
  `cheque_no` int(11) DEFAULT NULL,
  `cleardate` varchar(255) DEFAULT NULL,
  `transaction_id` int(11) DEFAULT NULL,
  `createdon` int(11) NOT NULL,
  `year_v` int(11) NOT NULL,
  `month_v` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_salary`
--

CREATE TABLE `tbl_salary` (
  `id` int(11) NOT NULL,
  `emp_id` int(11) NOT NULL,
  `emp_code` varchar(255) NOT NULL,
  `year_v` int(11) NOT NULL,
  `month_v` int(11) NOT NULL,
  `PresentDay` int(11) NOT NULL,
  `WeekOffDay` int(11) NOT NULL,
  `AbsentDay` int(11) NOT NULL,
  `OTDay` decimal(10,1) DEFAULT NULL,
  `OTDayAmount` decimal(10,2) DEFAULT NULL,
  `BasicSalary` decimal(10,0) NOT NULL,
  `PayableBasicSalary` decimal(10,0) NOT NULL,
  `CurrentAllowance` text,
  `PayableAllowance` text,
  `TotalAllowance` decimal(10,2) DEFAULT NULL,
  `GrossSalary` decimal(10,0) NOT NULL,
  `PayableGrossSalary` decimal(10,2) NOT NULL,
  `CurrentDeduction` text,
  `ApplyDeduction` text,
  `TotalDeductionEP` decimal(10,2) DEFAULT NULL,
  `TotalDeductionER` decimal(10,2) DEFAULT NULL,
  `ExtraDeduction` varchar(500) DEFAULT NULL,
  `TotalExtraDeduction` decimal(10,2) DEFAULT NULL,
  `NetSalary` decimal(10,0) NOT NULL,
  `DeductionOnNetSalary` text,
  `DeductionAmountOnNetSalary` decimal(10,2) DEFAULT NULL,
  `FinalNetSalary` decimal(10,2) DEFAULT NULL,
  `TakeHomeSalary` decimal(10,0) NOT NULL,
  `DeductionOnTakeHomeSalary` text NOT NULL,
  `DeductionAmountOnTakeHomeSalary` decimal(10,2) DEFAULT NULL,
  `FinalTakeHomeSalary` decimal(10,0) NOT NULL,
  `CTC` decimal(10,0) NOT NULL,
  `company_id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `salary_type` enum('AsPerClient','AsPerEmployee') NOT NULL,
  `paid_status` enum('Unpaid','Paid','','') NOT NULL,
  `createdon` int(11) NOT NULL,
  `createdby` int(11) NOT NULL,
  `updatedon` int(11) DEFAULT NULL,
  `updatedby` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_salary_detail`
--

CREATE TABLE `tbl_salary_detail` (
  `id` int(11) NOT NULL,
  `salary_id` int(11) NOT NULL,
  `emp_id` int(11) NOT NULL,
  `emp_code` varchar(255) NOT NULL,
  `year_v` int(11) NOT NULL,
  `month_v` int(11) NOT NULL,
  `PresentDay` int(11) NOT NULL,
  `WeekOffDay` int(11) NOT NULL,
  `AbsentDay` int(11) NOT NULL,
  `OTDay` int(11) NOT NULL,
  `BasicSalary` decimal(10,0) NOT NULL,
  `PayableBasicSalary` decimal(10,0) NOT NULL,
  `CurrentAllowance` text,
  `PayableAllowance` text,
  `TotalAllowance` decimal(10,2) DEFAULT NULL,
  `GrossSalary` decimal(10,0) NOT NULL,
  `CurrentDeduction` text,
  `ApplyDeduction` text,
  `TotalDeductionEP` decimal(10,2) DEFAULT NULL,
  `TotalDeductionER` decimal(10,2) DEFAULT NULL,
  `NetSalary` decimal(10,0) NOT NULL,
  `DeductionOnNetSalary` text,
  `DeductionAmountOnNetSalary` decimal(10,2) DEFAULT NULL,
  `FinalNetSalary` decimal(10,2) DEFAULT NULL,
  `TakeHomeSalary` decimal(10,0) NOT NULL,
  `DeductionOnTakeHomeSalary` text NOT NULL,
  `DeductionAmountOnTakeHomeSalary` decimal(10,2) DEFAULT NULL,
  `FinalTakeHomeSalary` decimal(10,0) NOT NULL,
  `CTC` decimal(10,0) NOT NULL,
  `company_id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `salary_type` enum('AsPerClient','AsPerEmployee') NOT NULL,
  `shiftid` int(11) NOT NULL,
  `clientid` int(11) NOT NULL,
  `serviceid` int(11) NOT NULL,
  `subserviceid` int(11) NOT NULL,
  `APW` text NOT NULL,
  `createdon` int(11) NOT NULL,
  `createdby` int(11) NOT NULL,
  `updatedon` int(11) DEFAULT NULL,
  `updatedby` int(11) DEFAULT NULL,
  `OTDayAmount` decimal(10,2) DEFAULT NULL,
  `PayableGrossSalary` decimal(10,2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_service`
--

CREATE TABLE `tbl_service` (
  `id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `service_name` varchar(255) NOT NULL,
  `hsn_sac` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `createdby` int(11) NOT NULL,
  `createdon` int(11) NOT NULL,
  `updatedby` int(11) DEFAULT NULL,
  `updatedon` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_setting`
--

CREATE TABLE `tbl_setting` (
  `id` int(11) NOT NULL,
  `logo` varchar(200) NOT NULL,
  `title` varchar(200) NOT NULL,
  `keyword` text NOT NULL,
  `description` text NOT NULL,
  `analytics_code` text NOT NULL,
  `site_name` varchar(300) NOT NULL,
  `site_url` varchar(300) NOT NULL,
  `footer_copyright` varchar(500) NOT NULL,
  `social_icon` int(11) NOT NULL DEFAULT '0',
  `contact` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_setting`
--

INSERT INTO `tbl_setting` (`id`, `logo`, `title`, `keyword`, `description`, `analytics_code`, `site_name`, `site_url`, `footer_copyright`, `social_icon`, `contact`) VALUES
(1, 'f69661884e8ae4b06c1b2d59165e3edd.png', 'Omax Security', 'Omax Security', 'Omax Security', 'Omax Security', 'Omax Security', 'http://localhost:8080/cztn/telecom', '', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shift_emp`
--

CREATE TABLE `tbl_shift_emp` (
  `id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `service_id` int(11) NOT NULL,
  `subservice_id` int(11) NOT NULL,
  `emp_id` int(11) NOT NULL,
  `year_v` int(11) NOT NULL,
  `month_v` int(11) NOT NULL,
  `attendance_id` int(10) NOT NULL,
  `days` text NOT NULL,
  `APW` varchar(255) NOT NULL,
  `createdby` int(11) NOT NULL,
  `createdon` int(11) NOT NULL,
  `updatedby` int(11) DEFAULT NULL,
  `updatedon` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_subclient`
--

CREATE TABLE `tbl_subclient` (
  `id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `client_name` text NOT NULL,
  `client_regi_no` varchar(100) NOT NULL,
  `pan_cord_no` varchar(50) NOT NULL,
  `licence_no` varchar(100) DEFAULT NULL,
  `tax_deduction_ac_no` varchar(255) DEFAULT NULL,
  `contact_person_name` varchar(255) NOT NULL,
  `contact_person_mobile` varchar(10) NOT NULL,
  `contact_person_email` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `pincode` varchar(255) DEFAULT NULL,
  `createdby` int(11) NOT NULL,
  `createdon` int(11) NOT NULL,
  `updatedby` int(11) DEFAULT NULL,
  `updatedon` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_transaction`
--

CREATE TABLE `tbl_transaction` (
  `id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `branch_id` int(11) NOT NULL,
  `clientid` int(11) NOT NULL,
  `invoiceno` int(11) NOT NULL,
  `invoiceid` int(11) DEFAULT NULL,
  `paymentmode` int(11) NOT NULL,
  `totalamount` int(11) NOT NULL,
  `tds_amount` decimal(10,0) DEFAULT NULL,
  `pay_amount` decimal(10,2) NOT NULL,
  `due_amount` int(11) NOT NULL,
  `pay_person` varchar(11) DEFAULT NULL,
  `payment_date` varchar(50) NOT NULL,
  `bank` varchar(11) DEFAULT NULL,
  `cheque_no` int(11) DEFAULT NULL,
  `cleardate` varchar(50) DEFAULT NULL,
  `transactionid` int(11) DEFAULT NULL,
  `createdon` int(11) NOT NULL,
  `year_v` int(11) NOT NULL,
  `month_v` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `branch_id` int(11) DEFAULT NULL,
  `group_id` int(11) NOT NULL,
  `emp_id` int(20) NOT NULL,
  `username` varchar(55) NOT NULL,
  `auth_key` varchar(35) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `mobile` bigint(10) NOT NULL,
  `password` varchar(255) NOT NULL,
  `salt` text,
  `password_reset_token` varchar(250) DEFAULT NULL,
  `role` int(1) DEFAULT NULL,
  `status` int(1) NOT NULL,
  `type` enum('smartadmin','admin','branchadmin','user') NOT NULL,
  `createdby` int(5) NOT NULL,
  `updatedby` int(5) DEFAULT NULL,
  `is_approved` int(1) NOT NULL DEFAULT '0',
  `createdon` int(15) NOT NULL,
  `updatedon` int(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`id`, `company_id`, `branch_id`, `group_id`, `emp_id`, `username`, `auth_key`, `email`, `mobile`, `password`, `salt`, `password_reset_token`, `role`, `status`, `type`, `createdby`, `updatedby`, `is_approved`, `createdon`, `updatedon`) VALUES
(1, 0, 0, 1, 0, 'smartadmin', 'TFEj_Ln8niw1o19UudkvFSdJGs-HCKS-', 'prashant@cztn.co.in', 7379023456, '786b7204083c24e3bed9216b03cef5ec9b28235a24876afb474d396f9c06492b', '20f3765880a5c269b747e1e906054a4b4a3a991259f1e16b5dde4742cec2319', NULL, 1, 1, 'smartadmin', 0, NULL, 0, 1507206589, NULL),
(22, 1, NULL, 1, 1, 'vishalsingh1812@gmail.com', NULL, NULL, 8417809551, '8738fe65f6af122147187da3f730c1a2ec10d9f86032462c0dc0ae9ba5cfd3c4', NULL, NULL, NULL, 1, 'user', 1, NULL, 1, 1560332162, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user_details`
--

CREATE TABLE `tbl_user_details` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `date_of_birth` varchar(200) DEFAULT NULL,
  `gender` varchar(11) DEFAULT NULL,
  `address` text,
  `street_address` text,
  `city` varchar(200) DEFAULT NULL,
  `state` varchar(200) DEFAULT NULL,
  `country` varchar(200) DEFAULT NULL,
  `zipcode` varchar(10) DEFAULT NULL,
  `designation` varchar(50) DEFAULT NULL,
  `department` varchar(255) DEFAULT NULL,
  `nationality` varchar(50) DEFAULT NULL,
  `profile_photo` varchar(200) DEFAULT 'avatar.jpg',
  `about_me` longtext
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user_details`
--

INSERT INTO `tbl_user_details` (`id`, `user_id`, `name`, `date_of_birth`, `gender`, `address`, `street_address`, `city`, `state`, `country`, `zipcode`, `designation`, `department`, `nationality`, `profile_photo`, `about_me`) VALUES
(1, 1, 'vishal singh', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.jpg', NULL),
(2, 2, 'g5g5g', NULL, NULL, 'Lucknow', NULL, 'Lucknow', 'UP', 'India', '123456', NULL, NULL, NULL, 'cf710193763b08fd70f6d80ae86992f3.jpg', NULL),
(3, 3, 'Ashish', NULL, NULL, 'Lucknow', NULL, 'kjhgf', 'up', 'India', '123', NULL, NULL, NULL, '417a06d4eb5d076ce581ebbcef0201d3.jpg', NULL),
(4, 4, 'Ashutosh Srivastav', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.jpg', NULL),
(5, 5, 'P N SHUKLA', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'avatar.jpg', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_allowance`
--
ALTER TABLE `tbl_allowance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_application`
--
ALTER TABLE `tbl_application`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_appointment_letter`
--
ALTER TABLE `tbl_appointment_letter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_attendance`
--
ALTER TABLE `tbl_attendance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_bank`
--
ALTER TABLE `tbl_bank`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_bank_branch`
--
ALTER TABLE `tbl_bank_branch`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_branch`
--
ALTER TABLE `tbl_branch`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_client`
--
ALTER TABLE `tbl_client`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_client_invoice`
--
ALTER TABLE `tbl_client_invoice`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_client_service_mapping`
--
ALTER TABLE `tbl_client_service_mapping`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_company`
--
ALTER TABLE `tbl_company`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_confirmation_letter`
--
ALTER TABLE `tbl_confirmation_letter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_deduction_head`
--
ALTER TABLE `tbl_deduction_head`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_department`
--
ALTER TABLE `tbl_department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_designation`
--
ALTER TABLE `tbl_designation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_employee`
--
ALTER TABLE `tbl_employee`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `emp_code` (`emp_code`);

--
-- Indexes for table `tbl_employee_licence`
--
ALTER TABLE `tbl_employee_licence`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_employee_official`
--
ALTER TABLE `tbl_employee_official`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_employee_qualification`
--
ALTER TABLE `tbl_employee_qualification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_employee_reference`
--
ALTER TABLE `tbl_employee_reference`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_extradeduction`
--
ALTER TABLE `tbl_extradeduction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_extradeduction_trans`
--
ALTER TABLE `tbl_extradeduction_trans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_grade`
--
ALTER TABLE `tbl_grade`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_gradebase_salary`
--
ALTER TABLE `tbl_gradebase_salary`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_group`
--
ALTER TABLE `tbl_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `group_title` (`group_title`);

--
-- Indexes for table `tbl_gst_master`
--
ALTER TABLE `tbl_gst_master`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_income_tax`
--
ALTER TABLE `tbl_income_tax`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_industry`
--
ALTER TABLE `tbl_industry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_loan_advance_details`
--
ALTER TABLE `tbl_loan_advance_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_loan_details`
--
ALTER TABLE `tbl_loan_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_menu`
--
ALTER TABLE `tbl_menu`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menu_title` (`menu_title`);

--
-- Indexes for table `tbl_offerletter`
--
ALTER TABLE `tbl_offerletter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_outstading_amount`
--
ALTER TABLE `tbl_outstading_amount`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_outstandingamountt_transaction`
--
ALTER TABLE `tbl_outstandingamountt_transaction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_salary`
--
ALTER TABLE `tbl_salary`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_salary_detail`
--
ALTER TABLE `tbl_salary_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_service`
--
ALTER TABLE `tbl_service`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_setting`
--
ALTER TABLE `tbl_setting`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `tbl_shift_emp`
--
ALTER TABLE `tbl_shift_emp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_subclient`
--
ALTER TABLE `tbl_subclient`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_transaction`
--
ALTER TABLE `tbl_transaction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `mobile` (`mobile`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `tbl_user_details`
--
ALTER TABLE `tbl_user_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`,`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_allowance`
--
ALTER TABLE `tbl_allowance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_application`
--
ALTER TABLE `tbl_application`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_appointment_letter`
--
ALTER TABLE `tbl_appointment_letter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_attendance`
--
ALTER TABLE `tbl_attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_bank`
--
ALTER TABLE `tbl_bank`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_bank_branch`
--
ALTER TABLE `tbl_bank_branch`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_branch`
--
ALTER TABLE `tbl_branch`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_client`
--
ALTER TABLE `tbl_client`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=222;

--
-- AUTO_INCREMENT for table `tbl_client_invoice`
--
ALTER TABLE `tbl_client_invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_client_service_mapping`
--
ALTER TABLE `tbl_client_service_mapping`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_company`
--
ALTER TABLE `tbl_company`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_confirmation_letter`
--
ALTER TABLE `tbl_confirmation_letter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_deduction_head`
--
ALTER TABLE `tbl_deduction_head`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_department`
--
ALTER TABLE `tbl_department`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_designation`
--
ALTER TABLE `tbl_designation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_employee`
--
ALTER TABLE `tbl_employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_employee_licence`
--
ALTER TABLE `tbl_employee_licence`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_employee_official`
--
ALTER TABLE `tbl_employee_official`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_employee_qualification`
--
ALTER TABLE `tbl_employee_qualification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_employee_reference`
--
ALTER TABLE `tbl_employee_reference`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_extradeduction`
--
ALTER TABLE `tbl_extradeduction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_extradeduction_trans`
--
ALTER TABLE `tbl_extradeduction_trans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_grade`
--
ALTER TABLE `tbl_grade`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_gradebase_salary`
--
ALTER TABLE `tbl_gradebase_salary`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_group`
--
ALTER TABLE `tbl_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_gst_master`
--
ALTER TABLE `tbl_gst_master`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_income_tax`
--
ALTER TABLE `tbl_income_tax`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_industry`
--
ALTER TABLE `tbl_industry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_loan_advance_details`
--
ALTER TABLE `tbl_loan_advance_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_loan_details`
--
ALTER TABLE `tbl_loan_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_menu`
--
ALTER TABLE `tbl_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tbl_offerletter`
--
ALTER TABLE `tbl_offerletter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_outstading_amount`
--
ALTER TABLE `tbl_outstading_amount`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_outstandingamountt_transaction`
--
ALTER TABLE `tbl_outstandingamountt_transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_salary`
--
ALTER TABLE `tbl_salary`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_salary_detail`
--
ALTER TABLE `tbl_salary_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_service`
--
ALTER TABLE `tbl_service`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_setting`
--
ALTER TABLE `tbl_setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_shift_emp`
--
ALTER TABLE `tbl_shift_emp`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_subclient`
--
ALTER TABLE `tbl_subclient`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_transaction`
--
ALTER TABLE `tbl_transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `tbl_user_details`
--
ALTER TABLE `tbl_user_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
