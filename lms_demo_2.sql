-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 28, 2018 at 08:22 AM
-- Server version: 5.7.17-log
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lms_demo_2`
--

-- --------------------------------------------------------

--
-- Table structure for table `audiovisual_`
--

CREATE TABLE `audiovisual_` (
  `Aud_id` int(11) NOT NULL COMMENT 'ไอดีของโสตทัศนวัสดุ',
  `Aud_name` varchar(50) DEFAULT NULL COMMENT 'ชื่อโสตทัศน',
  `Aud_Call_id` int(11) NOT NULL COMMENT 'ไอดีเลขเรียก',
  `Aud_Cat_id` varchar(250) DEFAULT NULL COMMENT 'ไอดีหมวดหมู่',
  `Aud_Reg_id` int(11) DEFAULT NULL COMMENT 'ไอดีข้อกำหนด',
  `Aud_Stab_id` int(11) NOT NULL COMMENT 'ไอดีสถานะ',
  `Aud_amount` varchar(11) DEFAULT NULL COMMENT 'จำนวนแผ่น',
  `Aud_language` varchar(250) DEFAULT NULL COMMENT 'ภาษา',
  `Aud_price` int(11) DEFAULT NULL COMMENT 'ราคา'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='1';

--
-- Dumping data for table `audiovisual_`
--

INSERT INTO `audiovisual_` (`Aud_id`, `Aud_name`, `Aud_Call_id`, `Aud_Cat_id`, `Aud_Reg_id`, `Aud_Stab_id`, `Aud_amount`, `Aud_language`, `Aud_price`) VALUES
(1, 'ไททานิค', 76, '000', 1, 0, '1', 'thai', 250),
(2, 'ดอยตุง', 5, '200', NULL, 0, '1', 'thai', 250),
(6, 'สายล่อฟ้า', 1, '200', NULL, 0, '1', 'ไทย', 120),
(29, 'คนไฟลอย', 130, '200', NULL, 0, '1', NULL, 1),
(30, 'มันมากับไฟ', 138, '500', NULL, 0, '2', NULL, 100),
(31, 'วิ่งสู้ฟัด', 146, '300', NULL, 0, '1', NULL, 12),
(33, 'อี๋! แหวะ', 196, '500', NULL, 0, '1', NULL, 120);

-- --------------------------------------------------------

--
-- Table structure for table `author_`
--

CREATE TABLE `author_` (
  `Aut_id` int(11) NOT NULL COMMENT 'ไอดีของผู้แต่ง',
  `Aut_name` varchar(50) DEFAULT NULL COMMENT 'ชื่อผู้แต่ง',
  `Aut_surname` varchar(50) DEFAULT NULL COMMENT 'นามสกุลผู้แต่ง'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='1';

--
-- Dumping data for table `author_`
--

INSERT INTO `author_` (`Aut_id`, `Aut_name`, `Aut_surname`) VALUES
(1, 'โจเซฟ', 'เวนิงตัน1'),
(4, 'กุลธิดา ', 'รุ่งเรืองกิจ'),
(5, 'สมพงศ์', 'สาระวัณ'),
(7, 'ฉัตรชัย', 'สุดหล่อ'),
(8, 'กีวี่', NULL),
(9, 'น้องอ้วน', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `book_`
--

CREATE TABLE `book_` (
  `Boo_id` int(11) NOT NULL COMMENT 'ไอดีหนังสือ',
  `Boo_name` varchar(50) NOT NULL COMMENT 'ชื่อหนังสือ',
  `Boo_year` year(4) DEFAULT NULL COMMENT 'ปีที่พิมพ์',
  `Boo_price` int(11) DEFAULT NULL COMMENT 'ราคาหนังสือ',
  `Boo_Aut_id` int(11) DEFAULT NULL COMMENT 'ไอดีผู้แต่ง',
  `Boo_Stab_id` int(11) DEFAULT NULL COMMENT 'ไอดีสถานะ',
  `Boo_Pub_id` int(11) DEFAULT NULL COMMENT 'ไอดีสำนักพิมพ์',
  `Boo_Cat_id` varchar(250) DEFAULT NULL COMMENT 'ไอดีหมวดหมู่',
  `Boo_Call_id` int(11) DEFAULT NULL COMMENT 'ไอดีเลขเรียกรายการ',
  `Boo_Reg_id` int(11) DEFAULT NULL COMMENT 'ไอดีกฏระเบียบ',
  `Boo_copy` varchar(11) DEFAULT NULL COMMENT 'เล่มที่เท่าไหร่',
  `Boo_Sub_id` varchar(250) DEFAULT NULL COMMENT 'ไอดีหมวดหมู่ย่อย'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='1';

--
-- Dumping data for table `book_`
--

INSERT INTO `book_` (`Boo_id`, `Boo_name`, `Boo_year`, `Boo_price`, `Boo_Aut_id`, `Boo_Stab_id`, `Boo_Pub_id`, `Boo_Cat_id`, `Boo_Call_id`, `Boo_Reg_id`, `Boo_copy`, `Boo_Sub_id`) VALUES
(2, 'ฤดูที่ฝนตก', 2018, 99, 1, 0, 1, '200', 2, 1, '1', NULL),
(63, 'หิวเมื่อไหร่ก็แวะมา', 2000, 39, 1, 0, 2, 'COO', 49, NULL, 'ๅ', NULL),
(96, 'พูดอังกฤษนอกตำรา', 2012, 199, 1, 0, 41, '400', 102, NULL, '1', NULL),
(97, 'สวัสดี', 2018, 200, 1, 0, 2, '300', 103, NULL, '1', NULL),
(98, 'เจ็บแต่จบ', 2010, 12, 4, 3, 43, '000', 106, NULL, '1', NULL),
(108, 'test1', 2018, 180, 1, 0, 1, '000', 117, NULL, '1', NULL),
(112, 'stil loving you', 2018, 120, 7, 0, 43, '000', 132, NULL, '1', NULL),
(115, 'love', 2018, 100, 1, 0, 1, '000', 135, NULL, '2', NULL),
(163, 'สางใจ', 2020, 12, 5, 0, 910, '300', 183, NULL, '1', NULL),
(170, 'ความในใจ', 2018, 10, 7, NULL, 914, '000', 199, NULL, '1', NULL),
(172, 'test123', 2013, 12, 9, 0, 916, 'COO', 201, NULL, '1', NULL),
(173, 'LOL', 2014, 100, 9, 0, 917, '000', 202, NULL, '1', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `call_number`
--

CREATE TABLE `call_number` (
  `Call_id` int(11) NOT NULL COMMENT 'ไอดีเลขเรียกรายการ',
  `Call_number` varchar(250) NOT NULL COMMENT 'เลขเรียกรายการ',
  `Call_Cnt_id` int(11) NOT NULL COMMENT 'ไอดีประเภทเลขเรียกรายการ',
  `Call_status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `call_number`
--

INSERT INTO `call_number` (`Call_id`, `Call_number`, `Call_Cnt_id`, `Call_status`) VALUES
(1, '500.cd1', 1, 1),
(2, '200.410.148', 2, 1),
(3, '123', 3, 1),
(5, '500.cd2', 1, 1),
(49, 'COO.410.63', 2, 1),
(53, '5.2010', 3, 1),
(65, '400.420.77', 2, 1),
(72, '200.410.84', 2, 1),
(73, '6.2014', 3, 1),
(76, '7.1.2013', 3, 1),
(96, '11.1.2014', 3, 1),
(102, '9786167708010', 2, 1),
(103, '300.420.97', 2, 1),
(104, '12.1.2018', 3, 1),
(105, '000.cd7', 1, 1),
(106, '000.1.110', 2, 1),
(107, '000.410.99', 2, 1),
(108, '000.410.100', 2, 1),
(109, '200.420.101', 2, 1),
(111, '600.430.102', 2, 1),
(116, '300.410.107', 2, 1),
(117, '000.1.108', 2, 1),
(118, '000.1.109', 2, 1),
(121, '000.cd12', 1, 1),
(122, '100.cd17', 1, 1),
(123, '100.cd22', 1, 1),
(128, '000.cd27', 1, 1),
(129, '000.cd28', 1, 1),
(130, '200.cd29', 1, 1),
(131, '13.1.1', 3, 1),
(132, '000.1.116', 2, 1),
(133, '600.1.113', 2, 1),
(134, '000.1.114', 2, 1),
(135, '000.1.115', 2, 1),
(137, '14.1.2018', 3, 1),
(138, '500.cd30', 1, 1),
(142, '', 2, 1),
(145, 'k123123', 3, 1),
(146, 'y123456', 1, 1),
(149, '200.cd32', 1, 1),
(173, '40466', 2, 1),
(178, '300.420.158', 2, 1),
(179, '400.420.159', 2, 1),
(183, '300.410.111', 2, 1),
(187, '500.410.167', 2, 1),
(188, '300.420.168', 2, 1),
(194, 'ff12345', 3, 1),
(196, '132e', 1, 1),
(197, '000.420.169', 2, 1),
(198, '19.4.2012', 3, 1),
(199, '000.1.153', 2, 1),
(201, 'COO.410.172', 2, 1),
(202, '000.420.173', 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `call_number_type`
--

CREATE TABLE `call_number_type` (
  `Cnt_id` int(11) NOT NULL COMMENT 'ไอดีประเภทเลขเรียกรายการ',
  `Cnt_name` varchar(250) NOT NULL COMMENT 'ชื่อประเภทของเลขเรียกรายการ'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `call_number_type`
--

INSERT INTO `call_number_type` (`Cnt_id`, `Cnt_name`) VALUES
(1, 'audiovisual'),
(2, 'book'),
(3, 'magazine');

-- --------------------------------------------------------

--
-- Table structure for table `category_`
--

CREATE TABLE `category_` (
  `Cat_id` varchar(250) NOT NULL COMMENT 'ไอดีหมวดหมู่',
  `Cat_name` varchar(50) DEFAULT '0' COMMENT 'ชื่อหมวดหมู่'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='1';

--
-- Dumping data for table `category_`
--

INSERT INTO `category_` (`Cat_id`, `Cat_name`) VALUES
('000', 'เบล็ตเตล็ดความรู้ทั่วไป'),
('100', 'จิตวิทยา'),
('200', 'ศาสนา'),
('300', 'สังคมศาสตร์'),
('400', 'ภาษาศาสตร์'),
('500', 'วิทยาศาสตร์'),
('600', 'วิทยาศาสตร์ประยุกต์ และเทคโนโลยี'),
('700', 'ศิลปะ และการบันเทิง'),
('800', 'วรรณคดี'),
('900', 'ประวัติศาสตร์'),
('COO', 'การ์ตูน');

-- --------------------------------------------------------

--
-- Table structure for table `date_holliday`
--

CREATE TABLE `date_holliday` (
  `Dath_id` int(11) NOT NULL COMMENT 'ไอดีวันหยุด',
  `Dath_date` date NOT NULL COMMENT 'วันหยุด'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `date_holliday`
--

INSERT INTO `date_holliday` (`Dath_id`, `Dath_date`) VALUES
(197, '2018-09-26'),
(198, '2018-09-01'),
(199, '2018-09-19');

-- --------------------------------------------------------

--
-- Table structure for table `history_payment`
--

CREATE TABLE `history_payment` (
  `Hisp_id` int(11) NOT NULL,
  `Hisp_Emp_id` varchar(50) NOT NULL,
  `Hisp_Call_number` varchar(50) NOT NULL,
  `Hisp_date` date NOT NULL,
  `Hisp_pay` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `history_payment`
--

INSERT INTO `history_payment` (`Hisp_id`, `Hisp_Emp_id`, `Hisp_Call_number`, `Hisp_date`, `Hisp_pay`) VALUES
(1, '40495', '000.410.100', '2018-09-19', 10),
(2, '40495', '000.410.98', '2018-09-19', 10),
(3, '40495', '123', '2018-09-19', 10),
(4, '40495', '200.210', '2018-09-25', 8),
(5, '40495', 'COO.410.63', '2018-09-25', 8),
(6, '40495', '123', '2018-09-27', 4),
(7, '40495', '6.2014', '2018-09-27', 4);

-- --------------------------------------------------------

--
-- Table structure for table `lms_employee_`
--

CREATE TABLE `lms_employee_` (
  `Emp_id` varchar(11) NOT NULL,
  `Emp_fname` varchar(50) DEFAULT NULL,
  `Emp_lname` varchar(50) DEFAULT NULL,
  `Emp_password` varchar(250) DEFAULT NULL,
  `Emp_stac_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='1';

--
-- Dumping data for table `lms_employee_`
--

INSERT INTO `lms_employee_` (`Emp_id`, `Emp_fname`, `Emp_lname`, `Emp_password`, `Emp_stac_id`) VALUES
('00009', 'สุรีรัตน์', 'ศรีเพ็ชร์', '00009', 1),
('00018', 'สิทธิพร', 'ชลายน', '00018', 1),
('00028', 'นรากร', 'พวงพลอย', '00028', 1),
('00144', 'สุกัญญา', 'เทศวงศ์', '00144', 1),
('02701', 'วิภา', 'เมฆเลื่อม', '02701', 1),
('03001', 'ยลดา', 'คำสัตย์', '03001', 1),
('04012', 'ขวัญชัย', 'พระกลาง', '04012', 1),
('04486', 'กิรณา', 'เพชรอารินทร์', '04486', 1),
('04640', 'พลอยไพลิน', 'เตี๋ยวสกุล', '04640', 1),
('04771', 'กัณฑิมา', 'หัตถารักษ์', '04771', 1),
('05032', 'ธนากร', 'แนวเวียง', '05032', 1),
('40495', '', '', '1001', 1),
('40496', '', '', '0000', 1),
('40497', 'jj', 'boxer', '1111', 1),
('admin', '', '', 'adminp', 2);

-- --------------------------------------------------------

--
-- Table structure for table `magzine_`
--

CREATE TABLE `magzine_` (
  `Mag_id` int(11) NOT NULL,
  `Mag_name` varchar(50) DEFAULT NULL,
  `Mag_year` year(4) DEFAULT NULL,
  `Mag_Call_id` int(11) DEFAULT NULL,
  `Mag_Magt_id` int(11) DEFAULT NULL,
  `Mag_price` int(11) DEFAULT NULL,
  `Mag_copy` int(11) DEFAULT NULL,
  `Mag_stab_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='1';

--
-- Dumping data for table `magzine_`
--

INSERT INTO `magzine_` (`Mag_id`, `Mag_name`, `Mag_year`, `Mag_Call_id`, `Mag_Magt_id`, `Mag_price`, `Mag_copy`, `Mag_stab_id`) VALUES
(1, 'playboy', 2018, 3, 1, 12, 1, 3),
(5, 'สงสัย', 2010, 53, 2, 8, 1, 0),
(6, 'ชีพจร', 2014, 73, 3, 59, 1, 0),
(11, 'ทำไมนะ', 2014, 96, 3, 3, 1, 0),
(12, 'สวัสดี', 2018, 104, 2, 10, 1, 0),
(13, 'รักลวง', 2001, 131, 2, 1, 1, 0),
(14, 'hello', 2018, 137, 2, 100, 1, 0),
(15, 'เรือนไม้', 2020, 145, 1, 12, 1, 0),
(18, 'บ้านทรง', 2001, 194, 1, 1, 1, 0),
(19, 'วรรณทอง', 2012, 198, 3, 12, 4, 0);

-- --------------------------------------------------------

--
-- Table structure for table `magzine_type_`
--

CREATE TABLE `magzine_type_` (
  `Magt` int(11) NOT NULL,
  `Magt_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='1';

--
-- Dumping data for table `magzine_type_`
--

INSERT INTO `magzine_type_` (`Magt`, `Magt_name`) VALUES
(1, 'รายปักษ์'),
(2, 'รายเดือน'),
(3, 'รายปี'),
(4, 'รายอื่นๆ');

-- --------------------------------------------------------

--
-- Table structure for table `manage`
--

CREATE TABLE `manage` (
  `Man_id` int(11) NOT NULL,
  `Man_emp_id` varchar(11) NOT NULL,
  `Man_date_start` date NOT NULL,
  `Man_pay` int(11) NOT NULL,
  `Man_Bc_id` int(11) DEFAULT NULL,
  `Man_Call_id` int(11) DEFAULT NULL,
  `Man_Stab_id` int(11) DEFAULT NULL,
  `Man_date_end` date DEFAULT NULL,
  `Man_date_return` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `publisher_`
--

CREATE TABLE `publisher_` (
  `Pub_id` int(11) NOT NULL,
  `Pub_name` varchar(250) NOT NULL,
  `Pub_address` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `publisher_`
--

INSERT INTO `publisher_` (`Pub_id`, `Pub_name`, `Pub_address`) VALUES
(1, 'asd', '1111'),
(2, 'asd', '123213'),
(41, 'ทำอะไรเพชร', 'กรุงเทพ'),
(43, 'Vibulkit', 'Bkk'),
(48, 'ชื่อสำนักพิมพ์', 'จังหวัด'),
(900, 'testtttt', ''),
(901, '123', ''),
(902, 'test2', ''),
(903, 'test3', ''),
(904, 'อะไรวะ', ''),
(905, 'Vibulkit', ''),
(906, 'Vibulkit', ''),
(907, 'ทำอะไรเพชร', ''),
(908, 'ชื่อสำนักพิมพ์', ''),
(909, 'testtttt', ''),
(910, '123', ''),
(911, 'ทำอะไรเพชร', ''),
(912, 'Vibulkit', ''),
(913, 'ชื่อสำนักพิมพ์', ''),
(914, 'testtttt', ''),
(915, 'ff', ''),
(916, 'ชื่อสำนักพิมพ์', ''),
(917, 'asd', '');

-- --------------------------------------------------------

--
-- Table structure for table `regulation_`
--

CREATE TABLE `regulation_` (
  `Reg_id` int(11) NOT NULL,
  `Reg_num_book` int(11) DEFAULT NULL,
  `Reg_num_day` int(11) DEFAULT NULL,
  `Reg_num_cost` int(11) DEFAULT NULL,
  `Reg_Btc_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='1';

--
-- Dumping data for table `regulation_`
--

INSERT INTO `regulation_` (`Reg_id`, `Reg_num_book`, `Reg_num_day`, `Reg_num_cost`, `Reg_Btc_id`) VALUES
(1, 5, 7, 2, 2),
(2, 3, 7, 2, 3),
(3, 3, 7, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `status_account`
--

CREATE TABLE `status_account` (
  `Stac_id` int(11) NOT NULL,
  `Stac_name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `status_account`
--

INSERT INTO `status_account` (`Stac_id`, `Stac_name`) VALUES
(1, 'user'),
(2, 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `status_book_`
--

CREATE TABLE `status_book_` (
  `Stab_id` int(11) NOT NULL,
  `Stab_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `status_book_`
--

INSERT INTO `status_book_` (`Stab_id`, `Stab_name`) VALUES
(0, 'ว่าง'),
(1, 'ยืม'),
(2, 'ยืมต่อ'),
(3, 'คืนแล้ว'),
(4, 'คืนแบบยังไม่ชำระ'),
(5, 'ยังไม่คืนและไม่ชำระ'),
(6, 'ค้างส่ง'),
(7, 'รอยืม'),
(8, 'รอคืน');

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE `subcategories` (
  `Sub_id` varchar(250) NOT NULL,
  `Sub_name` varchar(250) NOT NULL,
  `Sub_Cat_id` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`Sub_id`, `Sub_name`, `Sub_Cat_id`) VALUES
('001', 'สัตว์เลี้ยง', '000'),
('005', 'คอมพิวเตอร์', '000'),
('009', 'ความรู้ทั่วไป', '000'),
('310', 'กฎหมาย', '300'),
('320', 'วัมนธรรม', '300'),
('330', 'เศรษฐศาสตร์ และการพาณิชย์', '300'),
('410', 'ภาษาอังกฤษ', '400'),
('420', 'ภาษาอังกฤษ', '400'),
('430', 'ภาษาอื่นๆ', '400'),
('610', 'สุขภาพ', '600'),
('620', 'แม่ และเด็ก', '600'),
('630', 'เกษตรกร', '600'),
('640', 'คหกรรม', '600'),
('650', 'ธุรกิจ', '600'),
('660', 'อุตสาหกรรม', '600'),
('710', 'กีฬา', '700'),
('720', 'นันทนาการ', '700'),
('730', 'ประติมากรร, จิตกรรม', '700'),
('810', 'นิยายไทย', '800'),
('820', 'นิยายแปล', '800'),
('830', 'นิทาน', '800'),
('910', 'ภูมิศาสตร์/การท่องเที่ยว', '900'),
('920', 'ชีวประวัติ/สกุลวงค์', '900'),
('930', 'ประวัติศาสตร์สมัยโบราณ', '900');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `audiovisual_`
--
ALTER TABLE `audiovisual_`
  ADD PRIMARY KEY (`Aud_id`),
  ADD KEY `Aud_Call_id` (`Aud_Call_id`),
  ADD KEY `Aud_Cat_id` (`Aud_Cat_id`),
  ADD KEY `Aud_Reg_id` (`Aud_Reg_id`),
  ADD KEY `Aud_Stab_id` (`Aud_Stab_id`);

--
-- Indexes for table `author_`
--
ALTER TABLE `author_`
  ADD PRIMARY KEY (`Aut_id`);

--
-- Indexes for table `book_`
--
ALTER TABLE `book_`
  ADD PRIMARY KEY (`Boo_id`),
  ADD KEY `Boo_id` (`Boo_id`),
  ADD KEY `Boo_Aut_id` (`Boo_Aut_id`),
  ADD KEY `Boo_Pub_id` (`Boo_Pub_id`),
  ADD KEY `Boo_Cat_id` (`Boo_Cat_id`),
  ADD KEY `Boo_Call_id` (`Boo_Call_id`),
  ADD KEY `Boo_Reg_id` (`Boo_Reg_id`),
  ADD KEY `Boo_Sub_id` (`Boo_Sub_id`),
  ADD KEY `Boo_Stab_id` (`Boo_Stab_id`);

--
-- Indexes for table `call_number`
--
ALTER TABLE `call_number`
  ADD PRIMARY KEY (`Call_id`),
  ADD KEY `Call_Cnt_id` (`Call_Cnt_id`);

--
-- Indexes for table `call_number_type`
--
ALTER TABLE `call_number_type`
  ADD PRIMARY KEY (`Cnt_id`);

--
-- Indexes for table `category_`
--
ALTER TABLE `category_`
  ADD PRIMARY KEY (`Cat_id`),
  ADD KEY `Cat_id` (`Cat_id`);

--
-- Indexes for table `date_holliday`
--
ALTER TABLE `date_holliday`
  ADD PRIMARY KEY (`Dath_id`);

--
-- Indexes for table `history_payment`
--
ALTER TABLE `history_payment`
  ADD PRIMARY KEY (`Hisp_id`),
  ADD KEY `Hisp_Emp_id` (`Hisp_Emp_id`);

--
-- Indexes for table `lms_employee_`
--
ALTER TABLE `lms_employee_`
  ADD PRIMARY KEY (`Emp_id`),
  ADD KEY `Emp_id` (`Emp_id`),
  ADD KEY `Emp_stac_id` (`Emp_stac_id`);

--
-- Indexes for table `magzine_`
--
ALTER TABLE `magzine_`
  ADD PRIMARY KEY (`Mag_id`),
  ADD KEY `Mag_Magt_id` (`Mag_Magt_id`),
  ADD KEY `Mag_Call_id` (`Mag_Call_id`),
  ADD KEY `Mag_stab_id` (`Mag_stab_id`);

--
-- Indexes for table `magzine_type_`
--
ALTER TABLE `magzine_type_`
  ADD PRIMARY KEY (`Magt`);

--
-- Indexes for table `manage`
--
ALTER TABLE `manage`
  ADD PRIMARY KEY (`Man_id`),
  ADD KEY `Man_Bc_id` (`Man_Bc_id`),
  ADD KEY `Man_Call_id` (`Man_Call_id`),
  ADD KEY `Man_emp_id` (`Man_emp_id`),
  ADD KEY `Man_Stab_id` (`Man_Stab_id`);

--
-- Indexes for table `publisher_`
--
ALTER TABLE `publisher_`
  ADD PRIMARY KEY (`Pub_id`);

--
-- Indexes for table `regulation_`
--
ALTER TABLE `regulation_`
  ADD PRIMARY KEY (`Reg_id`),
  ADD KEY `FK_regulation__barcode_type_` (`Reg_Btc_id`);

--
-- Indexes for table `status_account`
--
ALTER TABLE `status_account`
  ADD PRIMARY KEY (`Stac_id`);

--
-- Indexes for table `status_book_`
--
ALTER TABLE `status_book_`
  ADD PRIMARY KEY (`Stab_id`);

--
-- Indexes for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`Sub_id`),
  ADD KEY `Sub_Cat_id` (`Sub_Cat_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `audiovisual_`
--
ALTER TABLE `audiovisual_`
  MODIFY `Aud_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ไอดีของโสตทัศนวัสดุ', AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `author_`
--
ALTER TABLE `author_`
  MODIFY `Aut_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ไอดีของผู้แต่ง', AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `book_`
--
ALTER TABLE `book_`
  MODIFY `Boo_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ไอดีหนังสือ', AUTO_INCREMENT=174;
--
-- AUTO_INCREMENT for table `call_number`
--
ALTER TABLE `call_number`
  MODIFY `Call_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ไอดีเลขเรียกรายการ', AUTO_INCREMENT=203;
--
-- AUTO_INCREMENT for table `call_number_type`
--
ALTER TABLE `call_number_type`
  MODIFY `Cnt_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ไอดีประเภทเลขเรียกรายการ', AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `date_holliday`
--
ALTER TABLE `date_holliday`
  MODIFY `Dath_id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ไอดีวันหยุด', AUTO_INCREMENT=200;
--
-- AUTO_INCREMENT for table `history_payment`
--
ALTER TABLE `history_payment`
  MODIFY `Hisp_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `magzine_`
--
ALTER TABLE `magzine_`
  MODIFY `Mag_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `magzine_type_`
--
ALTER TABLE `magzine_type_`
  MODIFY `Magt` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `manage`
--
ALTER TABLE `manage`
  MODIFY `Man_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=483;
--
-- AUTO_INCREMENT for table `publisher_`
--
ALTER TABLE `publisher_`
  MODIFY `Pub_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=918;
--
-- AUTO_INCREMENT for table `regulation_`
--
ALTER TABLE `regulation_`
  MODIFY `Reg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `status_account`
--
ALTER TABLE `status_account`
  MODIFY `Stac_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `status_book_`
--
ALTER TABLE `status_book_`
  MODIFY `Stab_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `audiovisual_`
--
ALTER TABLE `audiovisual_`
  ADD CONSTRAINT `audiovisual__ibfk_2` FOREIGN KEY (`Aud_Call_id`) REFERENCES `call_number` (`Call_id`),
  ADD CONSTRAINT `audiovisual__ibfk_3` FOREIGN KEY (`Aud_Cat_id`) REFERENCES `category_` (`Cat_id`),
  ADD CONSTRAINT `audiovisual__ibfk_4` FOREIGN KEY (`Aud_Reg_id`) REFERENCES `regulation_` (`Reg_id`),
  ADD CONSTRAINT `audiovisual__ibfk_5` FOREIGN KEY (`Aud_Stab_id`) REFERENCES `status_book_` (`Stab_id`);

--
-- Constraints for table `book_`
--
ALTER TABLE `book_`
  ADD CONSTRAINT `book__ibfk_10` FOREIGN KEY (`Boo_Stab_id`) REFERENCES `status_book_` (`Stab_id`),
  ADD CONSTRAINT `book__ibfk_2` FOREIGN KEY (`Boo_Aut_id`) REFERENCES `author_` (`Aut_id`),
  ADD CONSTRAINT `book__ibfk_3` FOREIGN KEY (`Boo_Pub_id`) REFERENCES `publisher_` (`Pub_id`),
  ADD CONSTRAINT `book__ibfk_4` FOREIGN KEY (`Boo_Cat_id`) REFERENCES `category_` (`Cat_id`),
  ADD CONSTRAINT `book__ibfk_5` FOREIGN KEY (`Boo_Call_id`) REFERENCES `call_number` (`Call_id`),
  ADD CONSTRAINT `book__ibfk_6` FOREIGN KEY (`Boo_Reg_id`) REFERENCES `regulation_` (`Reg_id`),
  ADD CONSTRAINT `book__ibfk_9` FOREIGN KEY (`Boo_Sub_id`) REFERENCES `subcategories` (`Sub_id`);

--
-- Constraints for table `call_number`
--
ALTER TABLE `call_number`
  ADD CONSTRAINT `call_number_ibfk_1` FOREIGN KEY (`Call_Cnt_id`) REFERENCES `call_number_type` (`Cnt_id`);

--
-- Constraints for table `history_payment`
--
ALTER TABLE `history_payment`
  ADD CONSTRAINT `history_payment_ibfk_1` FOREIGN KEY (`Hisp_Emp_id`) REFERENCES `lms_employee_` (`Emp_id`);

--
-- Constraints for table `lms_employee_`
--
ALTER TABLE `lms_employee_`
  ADD CONSTRAINT `lms_employee__ibfk_1` FOREIGN KEY (`Emp_stac_id`) REFERENCES `status_account` (`Stac_id`);

--
-- Constraints for table `magzine_`
--
ALTER TABLE `magzine_`
  ADD CONSTRAINT `magzine__ibfk_3` FOREIGN KEY (`Mag_Magt_id`) REFERENCES `magzine_type_` (`Magt`),
  ADD CONSTRAINT `magzine__ibfk_4` FOREIGN KEY (`Mag_Call_id`) REFERENCES `call_number` (`Call_id`),
  ADD CONSTRAINT `magzine__ibfk_5` FOREIGN KEY (`Mag_stab_id`) REFERENCES `status_book_` (`Stab_id`);

--
-- Constraints for table `manage`
--
ALTER TABLE `manage`
  ADD CONSTRAINT `manage_ibfk_2` FOREIGN KEY (`Man_Bc_id`) REFERENCES `barcode_` (`Bc_id`),
  ADD CONSTRAINT `manage_ibfk_3` FOREIGN KEY (`Man_Call_id`) REFERENCES `call_number` (`Call_id`),
  ADD CONSTRAINT `manage_ibfk_5` FOREIGN KEY (`Man_emp_id`) REFERENCES `lms_employee_` (`Emp_id`);

--
-- Constraints for table `subcategories`
--
ALTER TABLE `subcategories`
  ADD CONSTRAINT `subcategories_ibfk_1` FOREIGN KEY (`Sub_Cat_id`) REFERENCES `category_` (`Cat_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
