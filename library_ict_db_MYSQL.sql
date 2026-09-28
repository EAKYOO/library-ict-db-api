-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 28, 2026 at 09:04 AM
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
-- Database: `library_ict_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `component`
--

CREATE TABLE `component` (
  `component_id` int(11) NOT NULL,
  `computer_id` int(11) DEFAULT NULL,
  `component_type_id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `inventory_barcode` varchar(30) DEFAULT NULL,
  `serial_number` varchar(50) DEFAULT NULL,
  `brand` varchar(50) DEFAULT NULL,
  `model` varchar(50) DEFAULT NULL,
  `status_id` int(11) NOT NULL,
  `last_checked` date DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL
) ;

--
-- Dumping data for table `component`
--

INSERT INTO `component` (`component_id`, `computer_id`, `component_type_id`, `room_id`, `inventory_barcode`, `serial_number`, `brand`, `model`, `status_id`, `last_checked`, `remarks`) VALUES
(1, 1, 3, 1, 'UDSM-CMPNT-0001', 'COM-SN-00001', 'Dell', 'MK120', 2010, '2026-09-25', 'Library ICT component'),
(2, 2, 2, 2, 'UDSM-CMPNT-0002', 'COM-SN-00002', 'HP', 'P2422H', 2010, '2026-09-24', 'Library ICT component'),
(3, 3, 4, 3, 'UDSM-CMPNT-0003', 'COM-SN-00003', 'Lenovo', 'M185', 2009, '2026-09-23', 'Library ICT component'),
(4, 4, 8, 5, 'UDSM-CMPNT-0004', 'COM-SN-00004', 'Acer', 'ScanMate', 2010, '2026-09-22', 'Library ICT component'),
(5, 5, 9, 6, 'UDSM-CMPNT-0005', 'COM-SN-00005', 'ASUS', 'B203', 2009, '2026-09-21', 'Library ICT component'),
(6, 6, 6, 7, 'UDSM-CMPNT-0006', 'COM-SN-00006', 'Logitech', 'UPS-650VA', 2010, '2026-09-20', 'Library ICT component'),
(7, 7, 1, 8, 'UDSM-CMPNT-0007', 'COM-SN-00007', 'Epson', 'C920', 2009, '2026-09-19', 'Library ICT component'),
(8, 8, 5, 9, 'UDSM-CMPNT-0008', 'COM-SN-00008', 'Canon', 'K120', 2009, '2026-09-18', 'Library ICT component'),
(9, 9, 7, 10, 'UDSM-CMPNT-0009', 'COM-SN-00009', 'APC', 'Basic', 2009, '2026-09-17', 'Library ICT component'),
(10, 10, 3, 11, 'UDSM-CMPNT-0010', 'COM-SN-00010', 'Dell', 'MK120', 2010, '2026-09-16', 'Library ICT component'),
(11, 11, 2, 12, 'UDSM-CMPNT-0011', 'COM-SN-00011', 'HP', 'P2422H', 2009, '2026-09-15', 'Library ICT component'),
(12, 12, 4, 13, 'UDSM-CMPNT-0012', 'COM-SN-00012', 'Lenovo', 'M185', 2010, '2026-09-14', 'Library ICT component'),
(13, 13, 8, 15, 'UDSM-CMPNT-0013', 'COM-SN-00013', 'Acer', 'ScanMate', 2009, '2026-09-13', 'Library ICT component'),
(14, 14, 9, 16, 'UDSM-CMPNT-0014', 'COM-SN-00014', 'ASUS', 'B203', 2010, '2026-09-12', 'Library ICT component'),
(15, 15, 6, 17, 'UDSM-CMPNT-0015', 'COM-SN-00015', 'Logitech', 'UPS-650VA', 2009, '2026-09-11', 'Library ICT component'),
(16, 16, 1, 18, 'UDSM-CMPNT-0016', 'COM-SN-00016', 'Epson', 'C920', 2010, '2026-09-10', 'Library ICT component'),
(17, 17, 5, 1, 'UDSM-CMPNT-0017', 'COM-SN-00017', 'Canon', 'K120', 2009, '2026-09-09', 'Library ICT component'),
(18, 18, 7, 2, 'UDSM-CMPNT-0018', 'COM-SN-00018', 'APC', 'Basic', 2010, '2026-09-08', 'Library ICT component'),
(19, 19, 3, 3, 'UDSM-CMPNT-0019', 'COM-SN-00019', 'Dell', 'MK120', 2009, '2026-09-07', 'Library ICT component'),
(20, 20, 2, 5, 'UDSM-CMPNT-0020', 'COM-SN-00020', 'HP', 'P2422H', 2010, '2026-09-06', 'Library ICT component'),
(21, 21, 4, 6, 'UDSM-CMPNT-0021', 'COM-SN-00021', 'Lenovo', 'M185', 2009, '2026-09-05', 'Library ICT component'),
(22, 22, 8, 7, 'UDSM-CMPNT-0022', 'COM-SN-00022', 'Acer', 'ScanMate', 2010, '2026-09-04', 'Library ICT component'),
(23, 23, 9, 8, 'UDSM-CMPNT-0023', 'COM-SN-00023', 'ASUS', 'B203', 2009, '2026-09-03', 'Library ICT component'),
(24, 24, 6, 9, 'UDSM-CMPNT-0024', 'COM-SN-00024', 'Logitech', 'UPS-650VA', 2010, '2026-09-02', 'Library ICT component'),
(25, 25, 1, 10, 'UDSM-CMPNT-0025', 'COM-SN-00025', 'Epson', 'C920', 2009, '2026-09-01', 'Library ICT component'),
(26, 26, 5, 11, 'UDSM-CMPNT-0026', 'COM-SN-00026', 'Canon', 'K120', 2010, '2026-08-31', 'Library ICT component'),
(27, 27, 7, 12, 'UDSM-CMPNT-0027', 'COM-SN-00027', 'APC', 'Basic', 2009, '2026-08-30', 'Library ICT component'),
(28, 28, 3, 13, 'UDSM-CMPNT-0028', 'COM-SN-00028', 'Dell', 'MK120', 2010, '2026-08-29', 'Library ICT component'),
(29, 29, 2, 15, 'UDSM-CMPNT-0029', 'COM-SN-00029', 'HP', 'P2422H', 2009, '2026-08-28', 'Library ICT component'),
(30, 30, 4, 16, 'UDSM-CMPNT-0030', 'COM-SN-00030', 'Lenovo', 'M185', 2010, '2026-08-27', 'Library ICT component'),
(31, 31, 8, 17, 'UDSM-CMPNT-0031', 'COM-SN-00031', 'Acer', 'ScanMate', 2009, '2026-08-26', 'Library ICT component'),
(32, 32, 9, 18, 'UDSM-CMPNT-0032', 'COM-SN-00032', 'ASUS', 'B203', 2010, '2026-08-25', 'Library ICT component'),
(33, 33, 6, 1, 'UDSM-CMPNT-0033', 'COM-SN-00033', 'Logitech', 'UPS-650VA', 2009, '2026-08-24', 'Library ICT component'),
(34, 34, 1, 2, 'UDSM-CMPNT-0034', 'COM-SN-00034', 'Epson', 'C920', 2010, '2026-08-23', 'Library ICT component'),
(35, 35, 5, 3, 'UDSM-CMPNT-0035', 'COM-SN-00035', 'Canon', 'K120', 2009, '2026-08-22', 'Library ICT component'),
(36, 36, 7, 5, 'UDSM-CMPNT-0036', 'COM-SN-00036', 'APC', 'Basic', 2010, '2026-08-21', 'Library ICT component'),
(37, 37, 3, 6, 'UDSM-CMPNT-0037', 'COM-SN-00037', 'Dell', 'MK120', 2009, '2026-08-20', 'Library ICT component'),
(38, 38, 2, 7, 'UDSM-CMPNT-0038', 'COM-SN-00038', 'HP', 'P2422H', 2010, '2026-08-19', 'Library ICT component'),
(39, 39, 4, 8, 'UDSM-CMPNT-0039', 'COM-SN-00039', 'Lenovo', 'M185', 2009, '2026-08-18', 'Library ICT component'),
(40, 40, 8, 9, 'UDSM-CMPNT-0040', 'COM-SN-00040', 'Acer', 'ScanMate', 2010, '2026-08-17', 'Library ICT component'),
(41, 41, 9, 10, 'UDSM-CMPNT-0041', 'COM-SN-00041', 'ASUS', 'B203', 2009, '2026-08-16', 'Library ICT component'),
(42, 42, 6, 11, 'UDSM-CMPNT-0042', 'COM-SN-00042', 'Logitech', 'UPS-650VA', 2010, '2026-08-15', 'Library ICT component'),
(43, 43, 1, 12, 'UDSM-CMPNT-0043', 'COM-SN-00043', 'Epson', 'C920', 2009, '2026-08-14', 'Library ICT component'),
(44, 44, 5, 13, 'UDSM-CMPNT-0044', 'COM-SN-00044', 'Canon', 'K120', 2010, '2026-08-13', 'Library ICT component'),
(45, 45, 7, 15, 'UDSM-CMPNT-0045', 'COM-SN-00045', 'APC', 'Basic', 2009, '2026-08-12', 'Library ICT component'),
(46, 46, 3, 16, 'UDSM-CMPNT-0046', 'COM-SN-00046', 'Dell', 'MK120', 2010, '2026-08-11', 'Library ICT component'),
(47, 47, 2, 17, 'UDSM-CMPNT-0047', 'COM-SN-00047', 'HP', 'P2422H', 2009, '2026-08-10', 'Library ICT component'),
(48, 48, 4, 18, 'UDSM-CMPNT-0048', 'COM-SN-00048', 'Lenovo', 'M185', 2010, '2026-08-09', 'Library ICT component'),
(49, 49, 8, 1, 'UDSM-CMPNT-0049', 'COM-SN-00049', 'Acer', 'ScanMate', 2009, '2026-08-08', 'Library ICT component'),
(50, 50, 9, 2, 'UDSM-CMPNT-0050', 'COM-SN-00050', 'ASUS', 'B203', 2010, '2026-08-07', 'Library ICT component'),
(51, 51, 6, 3, 'UDSM-CMPNT-0051', 'COM-SN-00051', 'Logitech', 'UPS-650VA', 2009, '2026-08-06', 'Library ICT component'),
(52, 52, 1, 5, 'UDSM-CMPNT-0052', 'COM-SN-00052', 'Epson', 'C920', 2010, '2026-08-05', 'Library ICT component'),
(53, 53, 5, 6, 'UDSM-CMPNT-0053', 'COM-SN-00053', 'Canon', 'K120', 2009, '2026-08-04', 'Library ICT component'),
(54, 54, 7, 7, 'UDSM-CMPNT-0054', 'COM-SN-00054', 'APC', 'Basic', 2010, '2026-08-03', 'Library ICT component'),
(55, 55, 3, 8, 'UDSM-CMPNT-0055', 'COM-SN-00055', 'Dell', 'MK120', 2009, '2026-08-02', 'Library ICT component'),
(56, 56, 2, 9, 'UDSM-CMPNT-0056', 'COM-SN-00056', 'HP', 'P2422H', 2010, '2026-08-01', 'Library ICT component'),
(57, 57, 4, 10, 'UDSM-CMPNT-0057', 'COM-SN-00057', 'Lenovo', 'M185', 2009, '2026-07-31', 'Library ICT component'),
(58, 58, 8, 11, 'UDSM-CMPNT-0058', 'COM-SN-00058', 'Acer', 'ScanMate', 2010, '2026-07-30', 'Library ICT component'),
(59, 59, 9, 12, 'UDSM-CMPNT-0059', 'COM-SN-00059', 'ASUS', 'B203', 2009, '2026-07-29', 'Library ICT component'),
(60, 60, 6, 13, 'UDSM-CMPNT-0060', 'COM-SN-00060', 'Logitech', 'UPS-650VA', 2010, '2026-07-28', 'Library ICT component'),
(61, 61, 1, 15, 'UDSM-CMPNT-0061', 'COM-SN-00061', 'Epson', 'C920', 2009, '2026-07-27', 'Library ICT component'),
(62, 62, 5, 16, 'UDSM-CMPNT-0062', 'COM-SN-00062', 'Canon', 'K120', 2010, '2026-07-26', 'Library ICT component'),
(63, 63, 7, 17, 'UDSM-CMPNT-0063', 'COM-SN-00063', 'APC', 'Basic', 2009, '2026-07-25', 'Library ICT component'),
(64, 64, 3, 18, 'UDSM-CMPNT-0064', 'COM-SN-00064', 'Dell', 'MK120', 2010, '2026-07-24', 'Library ICT component'),
(65, 65, 2, 1, 'UDSM-CMPNT-0065', 'COM-SN-00065', 'HP', 'P2422H', 2009, '2026-07-23', 'Library ICT component'),
(66, 66, 4, 2, 'UDSM-CMPNT-0066', 'COM-SN-00066', 'Lenovo', 'M185', 2010, '2026-07-22', 'Library ICT component'),
(67, 67, 8, 3, 'UDSM-CMPNT-0067', 'COM-SN-00067', 'Acer', 'ScanMate', 2009, '2026-07-21', 'Library ICT component'),
(68, 68, 9, 5, 'UDSM-CMPNT-0068', 'COM-SN-00068', 'ASUS', 'B203', 2010, '2026-07-20', 'Library ICT component'),
(69, 69, 6, 6, 'UDSM-CMPNT-0069', 'COM-SN-00069', 'Logitech', 'UPS-650VA', 2009, '2026-07-19', 'Library ICT component'),
(70, 70, 1, 7, 'UDSM-CMPNT-0070', 'COM-SN-00070', 'Epson', 'C920', 2010, '2026-07-18', 'Library ICT component'),
(71, 71, 5, 8, 'UDSM-CMPNT-0071', 'COM-SN-00071', 'Canon', 'K120', 2009, '2026-07-17', 'Library ICT component'),
(72, 72, 7, 9, 'UDSM-CMPNT-0072', 'COM-SN-00072', 'APC', 'Basic', 2010, '2026-07-16', 'Library ICT component'),
(73, 73, 3, 10, 'UDSM-CMPNT-0073', 'COM-SN-00073', 'Dell', 'MK120', 2009, '2026-07-15', 'Library ICT component'),
(74, 74, 2, 11, 'UDSM-CMPNT-0074', 'COM-SN-00074', 'HP', 'P2422H', 2010, '2026-07-14', 'Library ICT component'),
(75, 75, 4, 12, 'UDSM-CMPNT-0075', 'COM-SN-00075', 'Lenovo', 'M185', 2009, '2026-07-13', 'Library ICT component'),
(76, 76, 8, 13, 'UDSM-CMPNT-0076', 'COM-SN-00076', 'Acer', 'ScanMate', 2010, '2026-07-12', 'Library ICT component'),
(77, 77, 9, 15, 'UDSM-CMPNT-0077', 'COM-SN-00077', 'ASUS', 'B203', 2009, '2026-07-11', 'Library ICT component'),
(78, 78, 6, 16, 'UDSM-CMPNT-0078', 'COM-SN-00078', 'Logitech', 'UPS-650VA', 2010, '2026-07-10', 'Library ICT component'),
(79, 79, 1, 17, 'UDSM-CMPNT-0079', 'COM-SN-00079', 'Epson', 'C920', 2009, '2026-07-09', 'Library ICT component'),
(80, 80, 5, 18, 'UDSM-CMPNT-0080', 'COM-SN-00080', 'Canon', 'K120', 2010, '2026-07-08', 'Library ICT component'),
(81, 81, 7, 1, 'UDSM-CMPNT-0081', 'COM-SN-00081', 'APC', 'Basic', 2009, '2026-07-07', 'Library ICT component'),
(82, 82, 3, 2, 'UDSM-CMPNT-0082', 'COM-SN-00082', 'Dell', 'MK120', 2010, '2026-07-06', 'Library ICT component'),
(83, 83, 2, 3, 'UDSM-CMPNT-0083', 'COM-SN-00083', 'HP', 'P2422H', 2009, '2026-07-05', 'Library ICT component'),
(84, 84, 4, 5, 'UDSM-CMPNT-0084', 'COM-SN-00084', 'Lenovo', 'M185', 2010, '2026-07-04', 'Library ICT component'),
(85, 85, 8, 6, 'UDSM-CMPNT-0085', 'COM-SN-00085', 'Acer', 'ScanMate', 2009, '2026-07-03', 'Library ICT component'),
(86, 86, 9, 7, 'UDSM-CMPNT-0086', 'COM-SN-00086', 'ASUS', 'B203', 2010, '2026-07-02', 'Library ICT component'),
(87, 87, 6, 8, 'UDSM-CMPNT-0087', 'COM-SN-00087', 'Logitech', 'UPS-650VA', 2009, '2026-07-01', 'Library ICT component'),
(88, 88, 1, 9, 'UDSM-CMPNT-0088', 'COM-SN-00088', 'Epson', 'C920', 2010, '2026-06-30', 'Library ICT component'),
(89, 89, 5, 10, 'UDSM-CMPNT-0089', 'COM-SN-00089', 'Canon', 'K120', 2009, '2026-06-29', 'Library ICT component'),
(90, 90, 7, 11, 'UDSM-CMPNT-0090', 'COM-SN-00090', 'APC', 'Basic', 2010, '2026-09-26', 'Library ICT component'),
(91, 91, 3, 12, 'UDSM-CMPNT-0091', 'COM-SN-00091', 'Dell', 'MK120', 2009, '2026-09-25', 'Library ICT component'),
(92, 92, 2, 13, 'UDSM-CMPNT-0092', 'COM-SN-00092', 'HP', 'P2422H', 2010, '2026-09-24', 'Library ICT component'),
(93, 93, 4, 15, 'UDSM-CMPNT-0093', 'COM-SN-00093', 'Lenovo', 'M185', 2009, '2026-09-23', 'Library ICT component'),
(94, 94, 8, 16, 'UDSM-CMPNT-0094', 'COM-SN-00094', 'Acer', 'ScanMate', 2010, '2026-09-22', 'Library ICT component'),
(95, 95, 9, 17, 'UDSM-CMPNT-0095', 'COM-SN-00095', 'ASUS', 'B203', 2009, '2026-09-21', 'Library ICT component'),
(96, 96, 6, 18, 'UDSM-CMPNT-0096', 'COM-SN-00096', 'Logitech', 'UPS-650VA', 2010, '2026-09-20', 'Library ICT component'),
(97, 97, 1, 1, 'UDSM-CMPNT-0097', 'COM-SN-00097', 'Epson', 'C920', 2009, '2026-09-19', 'Library ICT component'),
(98, 98, 5, 2, 'UDSM-CMPNT-0098', 'COM-SN-00098', 'Canon', 'K120', 2010, '2026-09-18', 'Library ICT component'),
(99, 99, 7, 3, 'UDSM-CMPNT-0099', 'COM-SN-00099', 'APC', 'Basic', 2009, '2026-09-17', 'Library ICT component'),
(100, 100, 3, 5, 'UDSM-CMPNT-0100', 'COM-SN-00100', 'Dell', 'MK120', 2010, '2026-09-16', 'Library ICT component'),
(101, 101, 2, 6, 'UDSM-CMPNT-0101', 'COM-SN-00101', 'HP', 'P2422H', 2009, '2026-09-15', 'Library ICT component'),
(102, 102, 4, 7, 'UDSM-CMPNT-0102', 'COM-SN-00102', 'Lenovo', 'M185', 2010, '2026-09-14', 'Library ICT component'),
(103, 103, 8, 8, 'UDSM-CMPNT-0103', 'COM-SN-00103', 'Acer', 'ScanMate', 2009, '2026-09-13', 'Library ICT component'),
(104, 104, 9, 9, 'UDSM-CMPNT-0104', 'COM-SN-00104', 'ASUS', 'B203', 2010, '2026-09-12', 'Library ICT component'),
(105, 105, 6, 10, 'UDSM-CMPNT-0105', 'COM-SN-00105', 'Logitech', 'UPS-650VA', 2009, '2026-09-11', 'Library ICT component'),
(106, 106, 1, 11, 'UDSM-CMPNT-0106', 'COM-SN-00106', 'Epson', 'C920', 2010, '2026-09-10', 'Library ICT component'),
(107, 107, 5, 12, 'UDSM-CMPNT-0107', 'COM-SN-00107', 'Canon', 'K120', 2009, '2026-09-09', 'Library ICT component'),
(108, 108, 7, 13, 'UDSM-CMPNT-0108', 'COM-SN-00108', 'APC', 'Basic', 2010, '2026-09-08', 'Library ICT component'),
(109, 109, 3, 15, 'UDSM-CMPNT-0109', 'COM-SN-00109', 'Dell', 'MK120', 2009, '2026-09-07', 'Library ICT component'),
(110, 110, 2, 16, 'UDSM-CMPNT-0110', 'COM-SN-00110', 'HP', 'P2422H', 2010, '2026-09-06', 'Library ICT component'),
(111, 111, 4, 17, 'UDSM-CMPNT-0111', 'COM-SN-00111', 'Lenovo', 'M185', 2009, '2026-09-05', 'Library ICT component'),
(112, 112, 8, 18, 'UDSM-CMPNT-0112', 'COM-SN-00112', 'Acer', 'ScanMate', 2010, '2026-09-04', 'Library ICT component'),
(113, 113, 9, 1, 'UDSM-CMPNT-0113', 'COM-SN-00113', 'ASUS', 'B203', 2009, '2026-09-03', 'Library ICT component'),
(114, 114, 6, 2, 'UDSM-CMPNT-0114', 'COM-SN-00114', 'Logitech', 'UPS-650VA', 2010, '2026-09-02', 'Library ICT component'),
(115, 115, 1, 3, 'UDSM-CMPNT-0115', 'COM-SN-00115', 'Epson', 'C920', 2009, '2026-09-01', 'Library ICT component'),
(116, 116, 5, 5, 'UDSM-CMPNT-0116', 'COM-SN-00116', 'Canon', 'K120', 2010, '2026-08-31', 'Library ICT component'),
(117, 117, 7, 6, 'UDSM-CMPNT-0117', 'COM-SN-00117', 'APC', 'Basic', 2009, '2026-08-30', 'Library ICT component'),
(118, 118, 3, 7, 'UDSM-CMPNT-0118', 'COM-SN-00118', 'Dell', 'MK120', 2010, '2026-08-29', 'Library ICT component'),
(119, 119, 2, 8, 'UDSM-CMPNT-0119', 'COM-SN-00119', 'HP', 'P2422H', 2009, '2026-08-28', 'Library ICT component'),
(120, 120, 4, 9, 'UDSM-CMPNT-0120', 'COM-SN-00120', 'Lenovo', 'M185', 2010, '2026-08-27', 'Library ICT component'),
(121, 121, 8, 10, 'UDSM-CMPNT-0121', 'COM-SN-00121', 'Acer', 'ScanMate', 2009, '2026-08-26', 'Library ICT component'),
(122, 122, 9, 11, 'UDSM-CMPNT-0122', 'COM-SN-00122', 'ASUS', 'B203', 2010, '2026-08-25', 'Library ICT component'),
(123, 123, 6, 12, 'UDSM-CMPNT-0123', 'COM-SN-00123', 'Logitech', 'UPS-650VA', 2009, '2026-08-24', 'Library ICT component'),
(124, 124, 1, 13, 'UDSM-CMPNT-0124', 'COM-SN-00124', 'Epson', 'C920', 2010, '2026-08-23', 'Library ICT component'),
(125, 125, 5, 15, 'UDSM-CMPNT-0125', 'COM-SN-00125', 'Canon', 'K120', 2009, '2026-08-22', 'Library ICT component'),
(126, 126, 7, 16, 'UDSM-CMPNT-0126', 'COM-SN-00126', 'APC', 'Basic', 2010, '2026-08-21', 'Library ICT component'),
(127, 127, 3, 17, 'UDSM-CMPNT-0127', 'COM-SN-00127', 'Dell', 'MK120', 2009, '2026-08-20', 'Library ICT component'),
(128, 128, 2, 18, 'UDSM-CMPNT-0128', 'COM-SN-00128', 'HP', 'P2422H', 2010, '2026-08-19', 'Library ICT component'),
(129, 129, 4, 1, 'UDSM-CMPNT-0129', 'COM-SN-00129', 'Lenovo', 'M185', 2009, '2026-08-18', 'Library ICT component'),
(130, 130, 8, 2, 'UDSM-CMPNT-0130', 'COM-SN-00130', 'Acer', 'ScanMate', 2010, '2026-08-17', 'Library ICT component'),
(131, 131, 9, 3, 'UDSM-CMPNT-0131', 'COM-SN-00131', 'ASUS', 'B203', 2009, '2026-08-16', 'Library ICT component'),
(132, 132, 6, 5, 'UDSM-CMPNT-0132', 'COM-SN-00132', 'Logitech', 'UPS-650VA', 2010, '2026-08-15', 'Library ICT component'),
(133, 133, 1, 6, 'UDSM-CMPNT-0133', 'COM-SN-00133', 'Epson', 'C920', 2009, '2026-08-14', 'Library ICT component'),
(134, 134, 5, 7, 'UDSM-CMPNT-0134', 'COM-SN-00134', 'Canon', 'K120', 2010, '2026-08-13', 'Library ICT component'),
(135, 135, 7, 8, 'UDSM-CMPNT-0135', 'COM-SN-00135', 'APC', 'Basic', 2009, '2026-08-12', 'Library ICT component'),
(136, 136, 3, 9, 'UDSM-CMPNT-0136', 'COM-SN-00136', 'Dell', 'MK120', 2010, '2026-08-11', 'Library ICT component'),
(137, 137, 2, 10, 'UDSM-CMPNT-0137', 'COM-SN-00137', 'HP', 'P2422H', 2009, '2026-08-10', 'Library ICT component'),
(138, 138, 4, 11, 'UDSM-CMPNT-0138', 'COM-SN-00138', 'Lenovo', 'M185', 2010, '2026-08-09', 'Library ICT component'),
(139, 139, 8, 12, 'UDSM-CMPNT-0139', 'COM-SN-00139', 'Acer', 'ScanMate', 2009, '2026-08-08', 'Library ICT component'),
(140, 140, 9, 13, 'UDSM-CMPNT-0140', 'COM-SN-00140', 'ASUS', 'B203', 2010, '2026-08-07', 'Library ICT component'),
(141, 141, 6, 15, 'UDSM-CMPNT-0141', 'COM-SN-00141', 'Logitech', 'UPS-650VA', 2009, '2026-08-06', 'Library ICT component'),
(142, 142, 1, 16, 'UDSM-CMPNT-0142', 'COM-SN-00142', 'Epson', 'C920', 2010, '2026-08-05', 'Library ICT component'),
(143, 143, 5, 17, 'UDSM-CMPNT-0143', 'COM-SN-00143', 'Canon', 'K120', 2009, '2026-08-04', 'Library ICT component'),
(144, 144, 7, 18, 'UDSM-CMPNT-0144', 'COM-SN-00144', 'APC', 'Basic', 2010, '2026-08-03', 'Library ICT component'),
(145, 145, 3, 1, 'UDSM-CMPNT-0145', 'COM-SN-00145', 'Dell', 'MK120', 2009, '2026-08-02', 'Library ICT component'),
(146, 146, 2, 2, 'UDSM-CMPNT-0146', 'COM-SN-00146', 'HP', 'P2422H', 2010, '2026-08-01', 'Library ICT component'),
(147, 147, 4, 3, 'UDSM-CMPNT-0147', 'COM-SN-00147', 'Lenovo', 'M185', 2009, '2026-07-31', 'Library ICT component'),
(148, 148, 8, 5, 'UDSM-CMPNT-0148', 'COM-SN-00148', 'Acer', 'ScanMate', 2010, '2026-07-30', 'Library ICT component'),
(149, 149, 9, 6, 'UDSM-CMPNT-0149', 'COM-SN-00149', 'ASUS', 'B203', 2009, '2026-07-29', 'Library ICT component'),
(150, 150, 6, 7, 'UDSM-CMPNT-0150', 'COM-SN-00150', 'Logitech', 'UPS-650VA', 2010, '2026-07-28', 'Library ICT component'),
(151, 151, 1, 8, 'UDSM-CMPNT-0151', 'COM-SN-00151', 'Epson', 'C920', 2009, '2026-07-27', 'Library ICT component'),
(152, 152, 5, 9, 'UDSM-CMPNT-0152', 'COM-SN-00152', 'Canon', 'K120', 2010, '2026-07-26', 'Library ICT component'),
(153, 153, 7, 10, 'UDSM-CMPNT-0153', 'COM-SN-00153', 'APC', 'Basic', 2009, '2026-07-25', 'Library ICT component'),
(154, 154, 3, 11, 'UDSM-CMPNT-0154', 'COM-SN-00154', 'Dell', 'MK120', 2010, '2026-07-24', 'Library ICT component'),
(155, 155, 2, 12, 'UDSM-CMPNT-0155', 'COM-SN-00155', 'HP', 'P2422H', 2009, '2026-07-23', 'Library ICT component'),
(156, 156, 4, 13, 'UDSM-CMPNT-0156', 'COM-SN-00156', 'Lenovo', 'M185', 2010, '2026-07-22', 'Library ICT component'),
(157, 157, 8, 15, 'UDSM-CMPNT-0157', 'COM-SN-00157', 'Acer', 'ScanMate', 2009, '2026-07-21', 'Library ICT component'),
(158, 158, 9, 16, 'UDSM-CMPNT-0158', 'COM-SN-00158', 'ASUS', 'B203', 2010, '2026-07-20', 'Library ICT component'),
(159, 159, 6, 17, 'UDSM-CMPNT-0159', 'COM-SN-00159', 'Logitech', 'UPS-650VA', 2009, '2026-07-19', 'Library ICT component'),
(160, 160, 1, 18, 'UDSM-CMPNT-0160', 'COM-SN-00160', 'Epson', 'C920', 2010, '2026-07-18', 'Library ICT component'),
(161, 161, 5, 1, 'UDSM-CMPNT-0161', 'COM-SN-00161', 'Canon', 'K120', 2009, '2026-07-17', 'Library ICT component'),
(162, 162, 7, 2, 'UDSM-CMPNT-0162', 'COM-SN-00162', 'APC', 'Basic', 2010, '2026-07-16', 'Library ICT component'),
(163, 163, 3, 3, 'UDSM-CMPNT-0163', 'COM-SN-00163', 'Dell', 'MK120', 2009, '2026-07-15', 'Library ICT component'),
(164, 164, 2, 5, 'UDSM-CMPNT-0164', 'COM-SN-00164', 'HP', 'P2422H', 2010, '2026-07-14', 'Library ICT component'),
(165, 165, 4, 6, 'UDSM-CMPNT-0165', 'COM-SN-00165', 'Lenovo', 'M185', 2009, '2026-07-13', 'Library ICT component'),
(166, 166, 8, 7, 'UDSM-CMPNT-0166', 'COM-SN-00166', 'Acer', 'ScanMate', 2010, '2026-07-12', 'Library ICT component'),
(167, 167, 9, 8, 'UDSM-CMPNT-0167', 'COM-SN-00167', 'ASUS', 'B203', 2009, '2026-07-11', 'Library ICT component'),
(168, 168, 6, 9, 'UDSM-CMPNT-0168', 'COM-SN-00168', 'Logitech', 'UPS-650VA', 2010, '2026-07-10', 'Library ICT component'),
(169, 169, 1, 10, 'UDSM-CMPNT-0169', 'COM-SN-00169', 'Epson', 'C920', 2009, '2026-07-09', 'Library ICT component'),
(170, 170, 5, 11, 'UDSM-CMPNT-0170', 'COM-SN-00170', 'Canon', 'K120', 2010, '2026-07-08', 'Library ICT component'),
(171, 171, 7, 12, 'UDSM-CMPNT-0171', 'COM-SN-00171', 'APC', 'Basic', 2009, '2026-07-07', 'Library ICT component'),
(172, 172, 3, 13, 'UDSM-CMPNT-0172', 'COM-SN-00172', 'Dell', 'MK120', 2010, '2026-07-06', 'Library ICT component'),
(173, 173, 2, 15, 'UDSM-CMPNT-0173', 'COM-SN-00173', 'HP', 'P2422H', 2009, '2026-07-05', 'Library ICT component'),
(174, 174, 4, 16, 'UDSM-CMPNT-0174', 'COM-SN-00174', 'Lenovo', 'M185', 2010, '2026-07-04', 'Library ICT component'),
(175, 175, 8, 17, 'UDSM-CMPNT-0175', 'COM-SN-00175', 'Acer', 'ScanMate', 2009, '2026-07-03', 'Library ICT component'),
(176, 176, 9, 18, 'UDSM-CMPNT-0176', 'COM-SN-00176', 'ASUS', 'B203', 2010, '2026-07-02', 'Library ICT component'),
(177, 177, 6, 1, 'UDSM-CMPNT-0177', 'COM-SN-00177', 'Logitech', 'UPS-650VA', 2009, '2026-07-01', 'Library ICT component'),
(178, 178, 1, 2, 'UDSM-CMPNT-0178', 'COM-SN-00178', 'Epson', 'C920', 2010, '2026-06-30', 'Library ICT component'),
(179, 179, 5, 3, 'UDSM-CMPNT-0179', 'COM-SN-00179', 'Canon', 'K120', 2009, '2026-06-29', 'Library ICT component'),
(180, 180, 7, 5, 'UDSM-CMPNT-0180', 'COM-SN-00180', 'APC', 'Basic', 2010, '2026-09-26', 'Library ICT component'),
(181, 181, 3, 6, 'UDSM-CMPNT-0181', 'COM-SN-00181', 'Dell', 'MK120', 2009, '2026-09-25', 'Library ICT component'),
(182, 182, 2, 7, 'UDSM-CMPNT-0182', 'COM-SN-00182', 'HP', 'P2422H', 2010, '2026-09-24', 'Library ICT component'),
(183, 183, 4, 8, 'UDSM-CMPNT-0183', 'COM-SN-00183', 'Lenovo', 'M185', 2009, '2026-09-23', 'Library ICT component'),
(184, 184, 8, 9, 'UDSM-CMPNT-0184', 'COM-SN-00184', 'Acer', 'ScanMate', 2010, '2026-09-22', 'Library ICT component'),
(185, 185, 9, 10, 'UDSM-CMPNT-0185', 'COM-SN-00185', 'ASUS', 'B203', 2009, '2026-09-21', 'Library ICT component'),
(186, 186, 6, 11, 'UDSM-CMPNT-0186', 'COM-SN-00186', 'Logitech', 'UPS-650VA', 2010, '2026-09-20', 'Library ICT component'),
(187, 187, 1, 12, 'UDSM-CMPNT-0187', 'COM-SN-00187', 'Epson', 'C920', 2009, '2026-09-19', 'Library ICT component'),
(188, 188, 5, 13, 'UDSM-CMPNT-0188', 'COM-SN-00188', 'Canon', 'K120', 2010, '2026-09-18', 'Library ICT component'),
(189, 189, 7, 15, 'UDSM-CMPNT-0189', 'COM-SN-00189', 'APC', 'Basic', 2009, '2026-09-17', 'Library ICT component'),
(190, 190, 3, 16, 'UDSM-CMPNT-0190', 'COM-SN-00190', 'Dell', 'MK120', 2010, '2026-09-16', 'Library ICT component'),
(191, 191, 2, 17, 'UDSM-CMPNT-0191', 'COM-SN-00191', 'HP', 'P2422H', 2009, '2026-09-15', 'Library ICT component'),
(192, 192, 4, 18, 'UDSM-CMPNT-0192', 'COM-SN-00192', 'Lenovo', 'M185', 2010, '2026-09-14', 'Library ICT component'),
(193, 193, 8, 1, 'UDSM-CMPNT-0193', 'COM-SN-00193', 'Acer', 'ScanMate', 2009, '2026-09-13', 'Library ICT component'),
(194, 194, 9, 2, 'UDSM-CMPNT-0194', 'COM-SN-00194', 'ASUS', 'B203', 2010, '2026-09-12', 'Library ICT component'),
(195, 195, 6, 3, 'UDSM-CMPNT-0195', 'COM-SN-00195', 'Logitech', 'UPS-650VA', 2009, '2026-09-11', 'Library ICT component'),
(196, 196, 1, 5, 'UDSM-CMPNT-0196', 'COM-SN-00196', 'Epson', 'C920', 2010, '2026-09-10', 'Library ICT component'),
(197, 197, 5, 6, 'UDSM-CMPNT-0197', 'COM-SN-00197', 'Canon', 'K120', 2009, '2026-09-09', 'Library ICT component'),
(198, 198, 7, 7, 'UDSM-CMPNT-0198', 'COM-SN-00198', 'APC', 'Basic', 2010, '2026-09-08', 'Library ICT component'),
(199, 199, 3, 8, 'UDSM-CMPNT-0199', 'COM-SN-00199', 'Dell', 'MK120', 2009, '2026-09-07', 'Library ICT component'),
(200, 200, 2, 9, 'UDSM-CMPNT-0200', 'COM-SN-00200', 'HP', 'P2422H', 2010, '2026-09-06', 'Library ICT component'),
(201, 201, 4, 10, 'UDSM-CMPNT-0201', 'COM-SN-00201', 'Lenovo', 'M185', 2009, '2026-09-05', 'Library ICT component'),
(202, 202, 8, 11, 'UDSM-CMPNT-0202', 'COM-SN-00202', 'Acer', 'ScanMate', 2010, '2026-09-04', 'Library ICT component'),
(203, 203, 9, 12, 'UDSM-CMPNT-0203', 'COM-SN-00203', 'ASUS', 'B203', 2009, '2026-09-03', 'Library ICT component'),
(204, 204, 6, 13, 'UDSM-CMPNT-0204', 'COM-SN-00204', 'Logitech', 'UPS-650VA', 2010, '2026-09-02', 'Library ICT component'),
(205, 205, 1, 15, 'UDSM-CMPNT-0205', 'COM-SN-00205', 'Epson', 'C920', 2009, '2026-09-01', 'Library ICT component'),
(206, 206, 5, 16, 'UDSM-CMPNT-0206', 'COM-SN-00206', 'Canon', 'K120', 2010, '2026-08-31', 'Library ICT component'),
(207, 207, 7, 17, 'UDSM-CMPNT-0207', 'COM-SN-00207', 'APC', 'Basic', 2009, '2026-08-30', 'Library ICT component'),
(208, 208, 3, 18, 'UDSM-CMPNT-0208', 'COM-SN-00208', 'Dell', 'MK120', 2010, '2026-08-29', 'Library ICT component'),
(209, 209, 2, 1, 'UDSM-CMPNT-0209', 'COM-SN-00209', 'HP', 'P2422H', 2009, '2026-08-28', 'Library ICT component'),
(210, 210, 4, 2, 'UDSM-CMPNT-0210', 'COM-SN-00210', 'Lenovo', 'M185', 2010, '2026-08-27', 'Library ICT component'),
(211, 211, 8, 3, 'UDSM-CMPNT-0211', 'COM-SN-00211', 'Acer', 'ScanMate', 2009, '2026-08-26', 'Library ICT component'),
(212, 212, 9, 5, 'UDSM-CMPNT-0212', 'COM-SN-00212', 'ASUS', 'B203', 2010, '2026-08-25', 'Library ICT component'),
(213, 213, 6, 6, 'UDSM-CMPNT-0213', 'COM-SN-00213', 'Logitech', 'UPS-650VA', 2009, '2026-08-24', 'Library ICT component'),
(214, 214, 1, 7, 'UDSM-CMPNT-0214', 'COM-SN-00214', 'Epson', 'C920', 2010, '2026-08-23', 'Library ICT component'),
(215, 215, 5, 8, 'UDSM-CMPNT-0215', 'COM-SN-00215', 'Canon', 'K120', 2009, '2026-08-22', 'Library ICT component'),
(216, 216, 7, 9, 'UDSM-CMPNT-0216', 'COM-SN-00216', 'APC', 'Basic', 2010, '2026-08-21', 'Library ICT component'),
(217, 217, 3, 10, 'UDSM-CMPNT-0217', 'COM-SN-00217', 'Dell', 'MK120', 2009, '2026-08-20', 'Library ICT component'),
(218, 218, 2, 11, 'UDSM-CMPNT-0218', 'COM-SN-00218', 'HP', 'P2422H', 2010, '2026-08-19', 'Library ICT component'),
(219, 219, 4, 12, 'UDSM-CMPNT-0219', 'COM-SN-00219', 'Lenovo', 'M185', 2009, '2026-08-18', 'Library ICT component'),
(220, 220, 8, 13, 'UDSM-CMPNT-0220', 'COM-SN-00220', 'Acer', 'ScanMate', 2010, '2026-08-17', 'Library ICT component'),
(221, 221, 9, 15, 'UDSM-CMPNT-0221', 'COM-SN-00221', 'ASUS', 'B203', 2009, '2026-08-16', 'Library ICT component'),
(222, 222, 6, 16, 'UDSM-CMPNT-0222', 'COM-SN-00222', 'Logitech', 'UPS-650VA', 2010, '2026-08-15', 'Library ICT component'),
(223, 223, 1, 17, 'UDSM-CMPNT-0223', 'COM-SN-00223', 'Epson', 'C920', 2009, '2026-08-14', 'Library ICT component'),
(224, 224, 5, 18, 'UDSM-CMPNT-0224', 'COM-SN-00224', 'Canon', 'K120', 2010, '2026-08-13', 'Library ICT component'),
(225, 225, 7, 1, 'UDSM-CMPNT-0225', 'COM-SN-00225', 'APC', 'Basic', 2009, '2026-08-12', 'Library ICT component'),
(226, 226, 3, 2, 'UDSM-CMPNT-0226', 'COM-SN-00226', 'Dell', 'MK120', 2010, '2026-08-11', 'Library ICT component'),
(227, 227, 2, 3, 'UDSM-CMPNT-0227', 'COM-SN-00227', 'HP', 'P2422H', 2009, '2026-08-10', 'Library ICT component'),
(228, 228, 4, 5, 'UDSM-CMPNT-0228', 'COM-SN-00228', 'Lenovo', 'M185', 2010, '2026-08-09', 'Library ICT component'),
(229, 229, 8, 6, 'UDSM-CMPNT-0229', 'COM-SN-00229', 'Acer', 'ScanMate', 2009, '2026-08-08', 'Library ICT component'),
(230, 230, 9, 7, 'UDSM-CMPNT-0230', 'COM-SN-00230', 'ASUS', 'B203', 2010, '2026-08-07', 'Library ICT component'),
(231, 231, 6, 8, 'UDSM-CMPNT-0231', 'COM-SN-00231', 'Logitech', 'UPS-650VA', 2009, '2026-08-06', 'Library ICT component'),
(232, 232, 1, 9, 'UDSM-CMPNT-0232', 'COM-SN-00232', 'Epson', 'C920', 2010, '2026-08-05', 'Library ICT component'),
(233, 233, 5, 10, 'UDSM-CMPNT-0233', 'COM-SN-00233', 'Canon', 'K120', 2009, '2026-08-04', 'Library ICT component'),
(234, 234, 7, 11, 'UDSM-CMPNT-0234', 'COM-SN-00234', 'APC', 'Basic', 2010, '2026-08-03', 'Library ICT component'),
(235, 235, 3, 12, 'UDSM-CMPNT-0235', 'COM-SN-00235', 'Dell', 'MK120', 2009, '2026-08-02', 'Library ICT component'),
(236, 236, 2, 13, 'UDSM-CMPNT-0236', 'COM-SN-00236', 'HP', 'P2422H', 2010, '2026-08-01', 'Library ICT component'),
(237, 237, 4, 15, 'UDSM-CMPNT-0237', 'COM-SN-00237', 'Lenovo', 'M185', 2009, '2026-07-31', 'Library ICT component'),
(238, 238, 8, 16, 'UDSM-CMPNT-0238', 'COM-SN-00238', 'Acer', 'ScanMate', 2010, '2026-07-30', 'Library ICT component'),
(239, 239, 9, 17, 'UDSM-CMPNT-0239', 'COM-SN-00239', 'ASUS', 'B203', 2009, '2026-07-29', 'Library ICT component'),
(240, 240, 6, 18, 'UDSM-CMPNT-0240', 'COM-SN-00240', 'Logitech', 'UPS-650VA', 2010, '2026-07-28', 'Library ICT component'),
(241, 241, 1, 1, 'UDSM-CMPNT-0241', 'COM-SN-00241', 'Epson', 'C920', 2009, '2026-07-27', 'Library ICT component'),
(242, 242, 5, 2, 'UDSM-CMPNT-0242', 'COM-SN-00242', 'Canon', 'K120', 2010, '2026-07-26', 'Library ICT component'),
(243, 243, 7, 3, 'UDSM-CMPNT-0243', 'COM-SN-00243', 'APC', 'Basic', 2009, '2026-07-25', 'Library ICT component'),
(244, 244, 3, 5, 'UDSM-CMPNT-0244', 'COM-SN-00244', 'Dell', 'MK120', 2010, '2026-07-24', 'Library ICT component'),
(245, 245, 2, 6, 'UDSM-CMPNT-0245', 'COM-SN-00245', 'HP', 'P2422H', 2009, '2026-07-23', 'Library ICT component'),
(246, 246, 4, 7, 'UDSM-CMPNT-0246', 'COM-SN-00246', 'Lenovo', 'M185', 2010, '2026-07-22', 'Library ICT component'),
(247, 247, 8, 8, 'UDSM-CMPNT-0247', 'COM-SN-00247', 'Acer', 'ScanMate', 2009, '2026-07-21', 'Library ICT component'),
(248, 248, 9, 9, 'UDSM-CMPNT-0248', 'COM-SN-00248', 'ASUS', 'B203', 2010, '2026-07-20', 'Library ICT component'),
(249, 249, 6, 10, 'UDSM-CMPNT-0249', 'COM-SN-00249', 'Logitech', 'UPS-650VA', 2009, '2026-07-19', 'Library ICT component'),
(250, 250, 1, 11, 'UDSM-CMPNT-0250', 'COM-SN-00250', 'Epson', 'C920', 2010, '2026-07-18', 'Library ICT component'),
(251, 251, 5, 12, 'UDSM-CMPNT-0251', 'COM-SN-00251', 'Canon', 'K120', 2009, '2026-07-17', 'Library ICT component'),
(252, 252, 7, 13, 'UDSM-CMPNT-0252', 'COM-SN-00252', 'APC', 'Basic', 2010, '2026-07-16', 'Library ICT component'),
(253, 253, 3, 15, 'UDSM-CMPNT-0253', 'COM-SN-00253', 'Dell', 'MK120', 2009, '2026-07-15', 'Library ICT component'),
(254, 254, 2, 16, 'UDSM-CMPNT-0254', 'COM-SN-00254', 'HP', 'P2422H', 2010, '2026-07-14', 'Library ICT component'),
(255, 255, 4, 17, 'UDSM-CMPNT-0255', 'COM-SN-00255', 'Lenovo', 'M185', 2009, '2026-07-13', 'Library ICT component'),
(256, 256, 8, 18, 'UDSM-CMPNT-0256', 'COM-SN-00256', 'Acer', 'ScanMate', 2010, '2026-07-12', 'Library ICT component'),
(257, 257, 9, 1, 'UDSM-CMPNT-0257', 'COM-SN-00257', 'ASUS', 'B203', 2009, '2026-07-11', 'Library ICT component'),
(258, 258, 6, 2, 'UDSM-CMPNT-0258', 'COM-SN-00258', 'Logitech', 'UPS-650VA', 2010, '2026-07-10', 'Library ICT component'),
(259, 259, 1, 3, 'UDSM-CMPNT-0259', 'COM-SN-00259', 'Epson', 'C920', 2009, '2026-07-09', 'Library ICT component'),
(260, 260, 5, 5, 'UDSM-CMPNT-0260', 'COM-SN-00260', 'Canon', 'K120', 2010, '2026-07-08', 'Library ICT component'),
(261, 261, 7, 6, 'UDSM-CMPNT-0261', 'COM-SN-00261', 'APC', 'Basic', 2009, '2026-07-07', 'Library ICT component'),
(262, 262, 3, 7, 'UDSM-CMPNT-0262', 'COM-SN-00262', 'Dell', 'MK120', 2010, '2026-07-06', 'Library ICT component'),
(263, 263, 2, 8, 'UDSM-CMPNT-0263', 'COM-SN-00263', 'HP', 'P2422H', 2009, '2026-07-05', 'Library ICT component'),
(264, 264, 4, 9, 'UDSM-CMPNT-0264', 'COM-SN-00264', 'Lenovo', 'M185', 2010, '2026-07-04', 'Library ICT component'),
(265, 265, 8, 10, 'UDSM-CMPNT-0265', 'COM-SN-00265', 'Acer', 'ScanMate', 2009, '2026-07-03', 'Library ICT component'),
(266, 266, 9, 11, 'UDSM-CMPNT-0266', 'COM-SN-00266', 'ASUS', 'B203', 2010, '2026-07-02', 'Library ICT component'),
(267, 267, 6, 12, 'UDSM-CMPNT-0267', 'COM-SN-00267', 'Logitech', 'UPS-650VA', 2009, '2026-07-01', 'Library ICT component'),
(268, 268, 1, 13, 'UDSM-CMPNT-0268', 'COM-SN-00268', 'Epson', 'C920', 2010, '2026-06-30', 'Library ICT component'),
(269, 269, 5, 15, 'UDSM-CMPNT-0269', 'COM-SN-00269', 'Canon', 'K120', 2009, '2026-06-29', 'Library ICT component'),
(270, 270, 7, 16, 'UDSM-CMPNT-0270', 'COM-SN-00270', 'APC', 'Basic', 2010, '2026-09-26', 'Library ICT component'),
(271, 271, 3, 17, 'UDSM-CMPNT-0271', 'COM-SN-00271', 'Dell', 'MK120', 2009, '2026-09-25', 'Library ICT component'),
(272, 272, 2, 18, 'UDSM-CMPNT-0272', 'COM-SN-00272', 'HP', 'P2422H', 2010, '2026-09-24', 'Library ICT component'),
(273, 273, 4, 1, 'UDSM-CMPNT-0273', 'COM-SN-00273', 'Lenovo', 'M185', 2009, '2026-09-23', 'Library ICT component'),
(274, 274, 8, 2, 'UDSM-CMPNT-0274', 'COM-SN-00274', 'Acer', 'ScanMate', 2010, '2026-09-22', 'Library ICT component'),
(275, 275, 9, 3, 'UDSM-CMPNT-0275', 'COM-SN-00275', 'ASUS', 'B203', 2009, '2026-09-21', 'Library ICT component'),
(276, 276, 6, 5, 'UDSM-CMPNT-0276', 'COM-SN-00276', 'Logitech', 'UPS-650VA', 2010, '2026-09-20', 'Library ICT component'),
(277, 277, 1, 6, 'UDSM-CMPNT-0277', 'COM-SN-00277', 'Epson', 'C920', 2009, '2026-09-19', 'Library ICT component'),
(278, 278, 5, 7, 'UDSM-CMPNT-0278', 'COM-SN-00278', 'Canon', 'K120', 2010, '2026-09-18', 'Library ICT component'),
(279, 279, 7, 8, 'UDSM-CMPNT-0279', 'COM-SN-00279', 'APC', 'Basic', 2009, '2026-09-17', 'Library ICT component'),
(280, 280, 3, 9, 'UDSM-CMPNT-0280', 'COM-SN-00280', 'Dell', 'MK120', 2010, '2026-09-16', 'Library ICT component'),
(281, 281, 2, 10, 'UDSM-CMPNT-0281', 'COM-SN-00281', 'HP', 'P2422H', 2009, '2026-09-15', 'Library ICT component'),
(282, 282, 4, 11, 'UDSM-CMPNT-0282', 'COM-SN-00282', 'Lenovo', 'M185', 2010, '2026-09-14', 'Library ICT component'),
(283, 283, 8, 12, 'UDSM-CMPNT-0283', 'COM-SN-00283', 'Acer', 'ScanMate', 2009, '2026-09-13', 'Library ICT component'),
(284, 284, 9, 13, 'UDSM-CMPNT-0284', 'COM-SN-00284', 'ASUS', 'B203', 2010, '2026-09-12', 'Library ICT component'),
(285, 285, 6, 15, 'UDSM-CMPNT-0285', 'COM-SN-00285', 'Logitech', 'UPS-650VA', 2009, '2026-09-11', 'Library ICT component'),
(286, 286, 1, 16, 'UDSM-CMPNT-0286', 'COM-SN-00286', 'Epson', 'C920', 2010, '2026-09-10', 'Library ICT component'),
(287, 287, 5, 17, 'UDSM-CMPNT-0287', 'COM-SN-00287', 'Canon', 'K120', 2009, '2026-09-09', 'Library ICT component'),
(288, 288, 7, 18, 'UDSM-CMPNT-0288', 'COM-SN-00288', 'APC', 'Basic', 2010, '2026-09-08', 'Library ICT component'),
(289, 289, 3, 1, 'UDSM-CMPNT-0289', 'COM-SN-00289', 'Dell', 'MK120', 2009, '2026-09-07', 'Library ICT component'),
(290, 290, 2, 2, 'UDSM-CMPNT-0290', 'COM-SN-00290', 'HP', 'P2422H', 2010, '2026-09-06', 'Library ICT component'),
(291, 291, 4, 3, 'UDSM-CMPNT-0291', 'COM-SN-00291', 'Lenovo', 'M185', 2009, '2026-09-05', 'Library ICT component'),
(292, 292, 8, 5, 'UDSM-CMPNT-0292', 'COM-SN-00292', 'Acer', 'ScanMate', 2010, '2026-09-04', 'Library ICT component'),
(293, 293, 9, 6, 'UDSM-CMPNT-0293', 'COM-SN-00293', 'ASUS', 'B203', 2009, '2026-09-03', 'Library ICT component'),
(294, 294, 6, 7, 'UDSM-CMPNT-0294', 'COM-SN-00294', 'Logitech', 'UPS-650VA', 2010, '2026-09-02', 'Library ICT component'),
(295, 295, 1, 8, 'UDSM-CMPNT-0295', 'COM-SN-00295', 'Epson', 'C920', 2009, '2026-09-01', 'Library ICT component'),
(296, 296, 5, 9, 'UDSM-CMPNT-0296', 'COM-SN-00296', 'Canon', 'K120', 2010, '2026-08-31', 'Library ICT component'),
(297, 297, 7, 10, 'UDSM-CMPNT-0297', 'COM-SN-00297', 'APC', 'Basic', 2009, '2026-08-30', 'Library ICT component'),
(298, 298, 3, 11, 'UDSM-CMPNT-0298', 'COM-SN-00298', 'Dell', 'MK120', 2010, '2026-08-29', 'Library ICT component'),
(299, 299, 2, 12, 'UDSM-CMPNT-0299', 'COM-SN-00299', 'HP', 'P2422H', 2009, '2026-08-28', 'Library ICT component'),
(300, 300, 4, 13, 'UDSM-CMPNT-0300', 'COM-SN-00300', 'Lenovo', 'M185', 2010, '2026-08-27', 'Library ICT component'),
(301, 301, 8, 15, 'UDSM-CMPNT-0301', 'COM-SN-00301', 'Acer', 'ScanMate', 2009, '2026-08-26', 'Library ICT component'),
(302, 302, 9, 16, 'UDSM-CMPNT-0302', 'COM-SN-00302', 'ASUS', 'B203', 2010, '2026-08-25', 'Library ICT component'),
(303, 303, 6, 17, 'UDSM-CMPNT-0303', 'COM-SN-00303', 'Logitech', 'UPS-650VA', 2009, '2026-08-24', 'Library ICT component'),
(304, 304, 1, 18, 'UDSM-CMPNT-0304', 'COM-SN-00304', 'Epson', 'C920', 2010, '2026-08-23', 'Library ICT component'),
(305, 305, 5, 1, 'UDSM-CMPNT-0305', 'COM-SN-00305', 'Canon', 'K120', 2009, '2026-08-22', 'Library ICT component'),
(306, 306, 7, 2, 'UDSM-CMPNT-0306', 'COM-SN-00306', 'APC', 'Basic', 2010, '2026-08-21', 'Library ICT component'),
(307, 307, 3, 3, 'UDSM-CMPNT-0307', 'COM-SN-00307', 'Dell', 'MK120', 2009, '2026-08-20', 'Library ICT component'),
(308, 308, 2, 5, 'UDSM-CMPNT-0308', 'COM-SN-00308', 'HP', 'P2422H', 2010, '2026-08-19', 'Library ICT component'),
(309, 309, 4, 6, 'UDSM-CMPNT-0309', 'COM-SN-00309', 'Lenovo', 'M185', 2009, '2026-08-18', 'Library ICT component'),
(310, 310, 8, 7, 'UDSM-CMPNT-0310', 'COM-SN-00310', 'Acer', 'ScanMate', 2010, '2026-08-17', 'Library ICT component'),
(311, 311, 9, 8, 'UDSM-CMPNT-0311', 'COM-SN-00311', 'ASUS', 'B203', 2009, '2026-08-16', 'Library ICT component'),
(312, 312, 6, 9, 'UDSM-CMPNT-0312', 'COM-SN-00312', 'Logitech', 'UPS-650VA', 2010, '2026-08-15', 'Library ICT component'),
(313, 313, 1, 10, 'UDSM-CMPNT-0313', 'COM-SN-00313', 'Epson', 'C920', 2009, '2026-08-14', 'Library ICT component'),
(314, 314, 5, 11, 'UDSM-CMPNT-0314', 'COM-SN-00314', 'Canon', 'K120', 2010, '2026-08-13', 'Library ICT component'),
(315, 315, 7, 12, 'UDSM-CMPNT-0315', 'COM-SN-00315', 'APC', 'Basic', 2009, '2026-08-12', 'Library ICT component'),
(316, 316, 3, 13, 'UDSM-CMPNT-0316', 'COM-SN-00316', 'Dell', 'MK120', 2010, '2026-08-11', 'Library ICT component'),
(317, 317, 2, 15, 'UDSM-CMPNT-0317', 'COM-SN-00317', 'HP', 'P2422H', 2009, '2026-08-10', 'Library ICT component'),
(318, 318, 4, 16, 'UDSM-CMPNT-0318', 'COM-SN-00318', 'Lenovo', 'M185', 2010, '2026-08-09', 'Library ICT component'),
(319, 319, 8, 17, 'UDSM-CMPNT-0319', 'COM-SN-00319', 'Acer', 'ScanMate', 2009, '2026-08-08', 'Library ICT component'),
(320, 320, 9, 18, 'UDSM-CMPNT-0320', 'COM-SN-00320', 'ASUS', 'B203', 2010, '2026-08-07', 'Library ICT component'),
(321, 321, 6, 1, 'UDSM-CMPNT-0321', 'COM-SN-00321', 'Logitech', 'UPS-650VA', 2009, '2026-08-06', 'Library ICT component'),
(322, 322, 1, 2, 'UDSM-CMPNT-0322', 'COM-SN-00322', 'Epson', 'C920', 2010, '2026-08-05', 'Library ICT component'),
(323, 323, 5, 3, 'UDSM-CMPNT-0323', 'COM-SN-00323', 'Canon', 'K120', 2009, '2026-08-04', 'Library ICT component'),
(324, 324, 7, 5, 'UDSM-CMPNT-0324', 'COM-SN-00324', 'APC', 'Basic', 2010, '2026-08-03', 'Library ICT component'),
(325, 325, 3, 6, 'UDSM-CMPNT-0325', 'COM-SN-00325', 'Dell', 'MK120', 2009, '2026-08-02', 'Library ICT component'),
(326, 326, 2, 7, 'UDSM-CMPNT-0326', 'COM-SN-00326', 'HP', 'P2422H', 2010, '2026-08-01', 'Library ICT component'),
(327, 327, 4, 8, 'UDSM-CMPNT-0327', 'COM-SN-00327', 'Lenovo', 'M185', 2009, '2026-07-31', 'Library ICT component'),
(328, 328, 8, 9, 'UDSM-CMPNT-0328', 'COM-SN-00328', 'Acer', 'ScanMate', 2010, '2026-07-30', 'Library ICT component'),
(329, 329, 9, 10, 'UDSM-CMPNT-0329', 'COM-SN-00329', 'ASUS', 'B203', 2009, '2026-07-29', 'Library ICT component'),
(330, 330, 6, 11, 'UDSM-CMPNT-0330', 'COM-SN-00330', 'Logitech', 'UPS-650VA', 2010, '2026-07-28', 'Library ICT component'),
(331, 331, 1, 12, 'UDSM-CMPNT-0331', 'COM-SN-00331', 'Epson', 'C920', 2009, '2026-07-27', 'Library ICT component'),
(332, 332, 5, 13, 'UDSM-CMPNT-0332', 'COM-SN-00332', 'Canon', 'K120', 2010, '2026-07-26', 'Library ICT component'),
(333, 333, 7, 15, 'UDSM-CMPNT-0333', 'COM-SN-00333', 'APC', 'Basic', 2009, '2026-07-25', 'Library ICT component'),
(334, 334, 3, 16, 'UDSM-CMPNT-0334', 'COM-SN-00334', 'Dell', 'MK120', 2010, '2026-07-24', 'Library ICT component'),
(335, 335, 2, 17, 'UDSM-CMPNT-0335', 'COM-SN-00335', 'HP', 'P2422H', 2009, '2026-07-23', 'Library ICT component'),
(336, 336, 4, 18, 'UDSM-CMPNT-0336', 'COM-SN-00336', 'Lenovo', 'M185', 2010, '2026-07-22', 'Library ICT component'),
(337, 337, 8, 1, 'UDSM-CMPNT-0337', 'COM-SN-00337', 'Acer', 'ScanMate', 2009, '2026-07-21', 'Library ICT component'),
(338, 338, 9, 2, 'UDSM-CMPNT-0338', 'COM-SN-00338', 'ASUS', 'B203', 2010, '2026-07-20', 'Library ICT component'),
(339, 339, 6, 3, 'UDSM-CMPNT-0339', 'COM-SN-00339', 'Logitech', 'UPS-650VA', 2009, '2026-07-19', 'Library ICT component'),
(340, 340, 1, 5, 'UDSM-CMPNT-0340', 'COM-SN-00340', 'Epson', 'C920', 2010, '2026-07-18', 'Library ICT component'),
(341, 341, 5, 6, 'UDSM-CMPNT-0341', 'COM-SN-00341', 'Canon', 'K120', 2009, '2026-07-17', 'Library ICT component'),
(342, 342, 7, 7, 'UDSM-CMPNT-0342', 'COM-SN-00342', 'APC', 'Basic', 2010, '2026-07-16', 'Library ICT component'),
(343, 343, 3, 8, 'UDSM-CMPNT-0343', 'COM-SN-00343', 'Dell', 'MK120', 2009, '2026-07-15', 'Library ICT component'),
(344, 344, 2, 9, 'UDSM-CMPNT-0344', 'COM-SN-00344', 'HP', 'P2422H', 2010, '2026-07-14', 'Library ICT component'),
(345, 345, 4, 10, 'UDSM-CMPNT-0345', 'COM-SN-00345', 'Lenovo', 'M185', 2009, '2026-07-13', 'Library ICT component'),
(346, 346, 8, 11, 'UDSM-CMPNT-0346', 'COM-SN-00346', 'Acer', 'ScanMate', 2010, '2026-07-12', 'Library ICT component'),
(347, 347, 9, 12, 'UDSM-CMPNT-0347', 'COM-SN-00347', 'ASUS', 'B203', 2009, '2026-07-11', 'Library ICT component'),
(348, 348, 6, 13, 'UDSM-CMPNT-0348', 'COM-SN-00348', 'Logitech', 'UPS-650VA', 2010, '2026-07-10', 'Library ICT component'),
(349, 349, 1, 15, 'UDSM-CMPNT-0349', 'COM-SN-00349', 'Epson', 'C920', 2009, '2026-07-09', 'Library ICT component'),
(350, 350, 5, 16, 'UDSM-CMPNT-0350', 'COM-SN-00350', 'Canon', 'K120', 2010, '2026-07-08', 'Library ICT component'),
(351, 351, 7, 17, 'UDSM-CMPNT-0351', 'COM-SN-00351', 'APC', 'Basic', 2009, '2026-07-07', 'Library ICT component'),
(352, 352, 3, 18, 'UDSM-CMPNT-0352', 'COM-SN-00352', 'Dell', 'MK120', 2010, '2026-07-06', 'Library ICT component'),
(353, 353, 2, 1, 'UDSM-CMPNT-0353', 'COM-SN-00353', 'HP', 'P2422H', 2009, '2026-07-05', 'Library ICT component'),
(354, 354, 4, 2, 'UDSM-CMPNT-0354', 'COM-SN-00354', 'Lenovo', 'M185', 2010, '2026-07-04', 'Library ICT component'),
(355, 355, 8, 3, 'UDSM-CMPNT-0355', 'COM-SN-00355', 'Acer', 'ScanMate', 2009, '2026-07-03', 'Library ICT component'),
(356, 356, 9, 5, 'UDSM-CMPNT-0356', 'COM-SN-00356', 'ASUS', 'B203', 2010, '2026-07-02', 'Library ICT component'),
(357, 357, 6, 6, 'UDSM-CMPNT-0357', 'COM-SN-00357', 'Logitech', 'UPS-650VA', 2009, '2026-07-01', 'Library ICT component'),
(358, 358, 1, 7, 'UDSM-CMPNT-0358', 'COM-SN-00358', 'Epson', 'C920', 2010, '2026-06-30', 'Library ICT component'),
(359, 359, 5, 8, 'UDSM-CMPNT-0359', 'COM-SN-00359', 'Canon', 'K120', 2009, '2026-06-29', 'Library ICT component'),
(360, 360, 7, 9, 'UDSM-CMPNT-0360', 'COM-SN-00360', 'APC', 'Basic', 2010, '2026-09-26', 'Library ICT component'),
(361, 361, 3, 10, 'UDSM-CMPNT-0361', 'COM-SN-00361', 'Dell', 'MK120', 2009, '2026-09-25', 'Library ICT component'),
(362, 362, 2, 11, 'UDSM-CMPNT-0362', 'COM-SN-00362', 'HP', 'P2422H', 2010, '2026-09-24', 'Library ICT component'),
(363, 363, 4, 12, 'UDSM-CMPNT-0363', 'COM-SN-00363', 'Lenovo', 'M185', 2009, '2026-09-23', 'Library ICT component'),
(364, 364, 8, 13, 'UDSM-CMPNT-0364', 'COM-SN-00364', 'Acer', 'ScanMate', 2010, '2026-09-22', 'Library ICT component'),
(365, 365, 9, 15, 'UDSM-CMPNT-0365', 'COM-SN-00365', 'ASUS', 'B203', 2009, '2026-09-21', 'Library ICT component'),
(366, 366, 6, 16, 'UDSM-CMPNT-0366', 'COM-SN-00366', 'Logitech', 'UPS-650VA', 2010, '2026-09-20', 'Library ICT component'),
(367, 367, 1, 17, 'UDSM-CMPNT-0367', 'COM-SN-00367', 'Epson', 'C920', 2009, '2026-09-19', 'Library ICT component'),
(368, 368, 5, 18, 'UDSM-CMPNT-0368', 'COM-SN-00368', 'Canon', 'K120', 2010, '2026-09-18', 'Library ICT component'),
(369, 369, 7, 1, 'UDSM-CMPNT-0369', 'COM-SN-00369', 'APC', 'Basic', 2009, '2026-09-17', 'Library ICT component'),
(370, 370, 3, 2, 'UDSM-CMPNT-0370', 'COM-SN-00370', 'Dell', 'MK120', 2010, '2026-09-16', 'Library ICT component'),
(371, 371, 2, 3, 'UDSM-CMPNT-0371', 'COM-SN-00371', 'HP', 'P2422H', 2009, '2026-09-15', 'Library ICT component'),
(372, 372, 4, 5, 'UDSM-CMPNT-0372', 'COM-SN-00372', 'Lenovo', 'M185', 2010, '2026-09-14', 'Library ICT component'),
(373, 373, 8, 6, 'UDSM-CMPNT-0373', 'COM-SN-00373', 'Acer', 'ScanMate', 2009, '2026-09-13', 'Library ICT component'),
(374, 374, 9, 7, 'UDSM-CMPNT-0374', 'COM-SN-00374', 'ASUS', 'B203', 2010, '2026-09-12', 'Library ICT component'),
(375, 375, 6, 8, 'UDSM-CMPNT-0375', 'COM-SN-00375', 'Logitech', 'UPS-650VA', 2009, '2026-09-11', 'Library ICT component'),
(376, 376, 1, 9, 'UDSM-CMPNT-0376', 'COM-SN-00376', 'Epson', 'C920', 2010, '2026-09-10', 'Library ICT component'),
(377, 377, 5, 10, 'UDSM-CMPNT-0377', 'COM-SN-00377', 'Canon', 'K120', 2009, '2026-09-09', 'Library ICT component'),
(378, 378, 7, 11, 'UDSM-CMPNT-0378', 'COM-SN-00378', 'APC', 'Basic', 2010, '2026-09-08', 'Library ICT component'),
(379, 379, 3, 12, 'UDSM-CMPNT-0379', 'COM-SN-00379', 'Dell', 'MK120', 2009, '2026-09-07', 'Library ICT component'),
(380, 380, 2, 13, 'UDSM-CMPNT-0380', 'COM-SN-00380', 'HP', 'P2422H', 2010, '2026-09-06', 'Library ICT component'),
(381, 381, 4, 15, 'UDSM-CMPNT-0381', 'COM-SN-00381', 'Lenovo', 'M185', 2009, '2026-09-05', 'Library ICT component'),
(382, 382, 8, 16, 'UDSM-CMPNT-0382', 'COM-SN-00382', 'Acer', 'ScanMate', 2010, '2026-09-04', 'Library ICT component'),
(383, 383, 9, 17, 'UDSM-CMPNT-0383', 'COM-SN-00383', 'ASUS', 'B203', 2009, '2026-09-03', 'Library ICT component'),
(384, 384, 6, 18, 'UDSM-CMPNT-0384', 'COM-SN-00384', 'Logitech', 'UPS-650VA', 2010, '2026-09-02', 'Library ICT component'),
(385, 385, 1, 1, 'UDSM-CMPNT-0385', 'COM-SN-00385', 'Epson', 'C920', 2009, '2026-09-01', 'Library ICT component'),
(386, 386, 5, 2, 'UDSM-CMPNT-0386', 'COM-SN-00386', 'Canon', 'K120', 2010, '2026-08-31', 'Library ICT component'),
(387, 387, 7, 3, 'UDSM-CMPNT-0387', 'COM-SN-00387', 'APC', 'Basic', 2009, '2026-08-30', 'Library ICT component'),
(388, 388, 3, 5, 'UDSM-CMPNT-0388', 'COM-SN-00388', 'Dell', 'MK120', 2010, '2026-08-29', 'Library ICT component'),
(389, 389, 2, 6, 'UDSM-CMPNT-0389', 'COM-SN-00389', 'HP', 'P2422H', 2009, '2026-08-28', 'Library ICT component'),
(390, 390, 4, 7, 'UDSM-CMPNT-0390', 'COM-SN-00390', 'Lenovo', 'M185', 2010, '2026-08-27', 'Library ICT component'),
(391, 391, 8, 8, 'UDSM-CMPNT-0391', 'COM-SN-00391', 'Acer', 'ScanMate', 2009, '2026-08-26', 'Library ICT component'),
(392, 392, 9, 9, 'UDSM-CMPNT-0392', 'COM-SN-00392', 'ASUS', 'B203', 2010, '2026-08-25', 'Library ICT component'),
(393, 393, 6, 10, 'UDSM-CMPNT-0393', 'COM-SN-00393', 'Logitech', 'UPS-650VA', 2009, '2026-08-24', 'Library ICT component'),
(394, 394, 1, 11, 'UDSM-CMPNT-0394', 'COM-SN-00394', 'Epson', 'C920', 2010, '2026-08-23', 'Library ICT component'),
(395, 395, 5, 12, 'UDSM-CMPNT-0395', 'COM-SN-00395', 'Canon', 'K120', 2009, '2026-08-22', 'Library ICT component'),
(396, 396, 7, 13, 'UDSM-CMPNT-0396', 'COM-SN-00396', 'APC', 'Basic', 2010, '2026-08-21', 'Library ICT component'),
(397, 397, 3, 15, 'UDSM-CMPNT-0397', 'COM-SN-00397', 'Dell', 'MK120', 2009, '2026-08-20', 'Library ICT component'),
(398, 398, 2, 16, 'UDSM-CMPNT-0398', 'COM-SN-00398', 'HP', 'P2422H', 2010, '2026-08-19', 'Library ICT component'),
(399, 399, 4, 17, 'UDSM-CMPNT-0399', 'COM-SN-00399', 'Lenovo', 'M185', 2009, '2026-08-18', 'Library ICT component'),
(400, 400, 8, 18, 'UDSM-CMPNT-0400', 'COM-SN-00400', 'Acer', 'ScanMate', 2010, '2026-08-17', 'Library ICT component'),
(401, 401, 9, 1, 'UDSM-CMPNT-0401', 'COM-SN-00401', 'ASUS', 'B203', 2009, '2026-08-16', 'Library ICT component'),
(402, 402, 6, 2, 'UDSM-CMPNT-0402', 'COM-SN-00402', 'Logitech', 'UPS-650VA', 2010, '2026-08-15', 'Library ICT component'),
(403, 403, 1, 3, 'UDSM-CMPNT-0403', 'COM-SN-00403', 'Epson', 'C920', 2009, '2026-08-14', 'Library ICT component'),
(404, 404, 5, 5, 'UDSM-CMPNT-0404', 'COM-SN-00404', 'Canon', 'K120', 2010, '2026-08-13', 'Library ICT component'),
(405, 405, 7, 6, 'UDSM-CMPNT-0405', 'COM-SN-00405', 'APC', 'Basic', 2009, '2026-08-12', 'Library ICT component'),
(406, 406, 3, 7, 'UDSM-CMPNT-0406', 'COM-SN-00406', 'Dell', 'MK120', 2010, '2026-08-11', 'Library ICT component'),
(407, 407, 2, 8, 'UDSM-CMPNT-0407', 'COM-SN-00407', 'HP', 'P2422H', 2009, '2026-08-10', 'Library ICT component'),
(408, 408, 4, 9, 'UDSM-CMPNT-0408', 'COM-SN-00408', 'Lenovo', 'M185', 2010, '2026-08-09', 'Library ICT component'),
(409, 409, 8, 10, 'UDSM-CMPNT-0409', 'COM-SN-00409', 'Acer', 'ScanMate', 2009, '2026-08-08', 'Library ICT component'),
(410, 410, 9, 11, 'UDSM-CMPNT-0410', 'COM-SN-00410', 'ASUS', 'B203', 2010, '2026-08-07', 'Library ICT component'),
(411, 411, 6, 12, 'UDSM-CMPNT-0411', 'COM-SN-00411', 'Logitech', 'UPS-650VA', 2009, '2026-08-06', 'Library ICT component'),
(412, 412, 1, 13, 'UDSM-CMPNT-0412', 'COM-SN-00412', 'Epson', 'C920', 2010, '2026-08-05', 'Library ICT component'),
(413, 413, 5, 15, 'UDSM-CMPNT-0413', 'COM-SN-00413', 'Canon', 'K120', 2009, '2026-08-04', 'Library ICT component'),
(414, 414, 7, 16, 'UDSM-CMPNT-0414', 'COM-SN-00414', 'APC', 'Basic', 2010, '2026-08-03', 'Library ICT component'),
(415, 415, 3, 17, 'UDSM-CMPNT-0415', 'COM-SN-00415', 'Dell', 'MK120', 2009, '2026-08-02', 'Library ICT component'),
(416, 416, 2, 18, 'UDSM-CMPNT-0416', 'COM-SN-00416', 'HP', 'P2422H', 2010, '2026-08-01', 'Library ICT component'),
(417, 417, 4, 1, 'UDSM-CMPNT-0417', 'COM-SN-00417', 'Lenovo', 'M185', 2009, '2026-07-31', 'Library ICT component'),
(418, 418, 8, 2, 'UDSM-CMPNT-0418', 'COM-SN-00418', 'Acer', 'ScanMate', 2010, '2026-07-30', 'Library ICT component'),
(419, 419, 9, 3, 'UDSM-CMPNT-0419', 'COM-SN-00419', 'ASUS', 'B203', 2009, '2026-07-29', 'Library ICT component'),
(420, 420, 6, 5, 'UDSM-CMPNT-0420', 'COM-SN-00420', 'Logitech', 'UPS-650VA', 2010, '2026-07-28', 'Library ICT component'),
(421, 421, 1, 6, 'UDSM-CMPNT-0421', 'COM-SN-00421', 'Epson', 'C920', 2009, '2026-07-27', 'Library ICT component'),
(422, 422, 5, 7, 'UDSM-CMPNT-0422', 'COM-SN-00422', 'Canon', 'K120', 2010, '2026-07-26', 'Library ICT component'),
(423, 423, 7, 8, 'UDSM-CMPNT-0423', 'COM-SN-00423', 'APC', 'Basic', 2009, '2026-07-25', 'Library ICT component'),
(424, 424, 3, 9, 'UDSM-CMPNT-0424', 'COM-SN-00424', 'Dell', 'MK120', 2010, '2026-07-24', 'Library ICT component'),
(425, 425, 2, 10, 'UDSM-CMPNT-0425', 'COM-SN-00425', 'HP', 'P2422H', 2009, '2026-07-23', 'Library ICT component'),
(426, 426, 4, 11, 'UDSM-CMPNT-0426', 'COM-SN-00426', 'Lenovo', 'M185', 2010, '2026-07-22', 'Library ICT component'),
(427, 427, 8, 12, 'UDSM-CMPNT-0427', 'COM-SN-00427', 'Acer', 'ScanMate', 2009, '2026-07-21', 'Library ICT component'),
(428, 428, 9, 13, 'UDSM-CMPNT-0428', 'COM-SN-00428', 'ASUS', 'B203', 2010, '2026-07-20', 'Library ICT component'),
(429, 429, 6, 15, 'UDSM-CMPNT-0429', 'COM-SN-00429', 'Logitech', 'UPS-650VA', 2009, '2026-07-19', 'Library ICT component'),
(430, 430, 1, 16, 'UDSM-CMPNT-0430', 'COM-SN-00430', 'Epson', 'C920', 2010, '2026-07-18', 'Library ICT component'),
(431, 431, 5, 17, 'UDSM-CMPNT-0431', 'COM-SN-00431', 'Canon', 'K120', 2009, '2026-07-17', 'Library ICT component'),
(432, 432, 7, 18, 'UDSM-CMPNT-0432', 'COM-SN-00432', 'APC', 'Basic', 2010, '2026-07-16', 'Library ICT component'),
(433, 433, 3, 1, 'UDSM-CMPNT-0433', 'COM-SN-00433', 'Dell', 'MK120', 2009, '2026-07-15', 'Library ICT component'),
(434, 434, 2, 2, 'UDSM-CMPNT-0434', 'COM-SN-00434', 'HP', 'P2422H', 2010, '2026-07-14', 'Library ICT component'),
(435, 435, 4, 3, 'UDSM-CMPNT-0435', 'COM-SN-00435', 'Lenovo', 'M185', 2009, '2026-07-13', 'Library ICT component'),
(436, 436, 8, 5, 'UDSM-CMPNT-0436', 'COM-SN-00436', 'Acer', 'ScanMate', 2010, '2026-07-12', 'Library ICT component');
INSERT INTO `component` (`component_id`, `computer_id`, `component_type_id`, `room_id`, `inventory_barcode`, `serial_number`, `brand`, `model`, `status_id`, `last_checked`, `remarks`) VALUES
(437, 437, 9, 6, 'UDSM-CMPNT-0437', 'COM-SN-00437', 'ASUS', 'B203', 2009, '2026-07-11', 'Library ICT component'),
(438, 438, 6, 7, 'UDSM-CMPNT-0438', 'COM-SN-00438', 'Logitech', 'UPS-650VA', 2010, '2026-07-10', 'Library ICT component'),
(439, 439, 1, 8, 'UDSM-CMPNT-0439', 'COM-SN-00439', 'Epson', 'C920', 2009, '2026-07-09', 'Library ICT component'),
(440, 440, 5, 9, 'UDSM-CMPNT-0440', 'COM-SN-00440', 'Canon', 'K120', 2010, '2026-07-08', 'Library ICT component'),
(441, 441, 7, 10, 'UDSM-CMPNT-0441', 'COM-SN-00441', 'APC', 'Basic', 2009, '2026-07-07', 'Library ICT component'),
(442, 442, 3, 11, 'UDSM-CMPNT-0442', 'COM-SN-00442', 'Dell', 'MK120', 2010, '2026-07-06', 'Library ICT component'),
(443, 443, 2, 12, 'UDSM-CMPNT-0443', 'COM-SN-00443', 'HP', 'P2422H', 2009, '2026-07-05', 'Library ICT component'),
(444, 444, 4, 13, 'UDSM-CMPNT-0444', 'COM-SN-00444', 'Lenovo', 'M185', 2010, '2026-07-04', 'Library ICT component'),
(445, 445, 8, 15, 'UDSM-CMPNT-0445', 'COM-SN-00445', 'Acer', 'ScanMate', 2009, '2026-07-03', 'Library ICT component'),
(446, 446, 9, 16, 'UDSM-CMPNT-0446', 'COM-SN-00446', 'ASUS', 'B203', 2010, '2026-07-02', 'Library ICT component'),
(447, 447, 6, 17, 'UDSM-CMPNT-0447', 'COM-SN-00447', 'Logitech', 'UPS-650VA', 2009, '2026-07-01', 'Library ICT component'),
(448, 448, 1, 18, 'UDSM-CMPNT-0448', 'COM-SN-00448', 'Epson', 'C920', 2010, '2026-06-30', 'Library ICT component'),
(449, 449, 5, 1, 'UDSM-CMPNT-0449', 'COM-SN-00449', 'Canon', 'K120', 2009, '2026-06-29', 'Library ICT component'),
(450, 450, 7, 2, 'UDSM-CMPNT-0450', 'COM-SN-00450', 'APC', 'Basic', 2010, '2026-09-26', 'Library ICT component'),
(451, 451, 3, 3, 'UDSM-CMPNT-0451', 'COM-SN-00451', 'Dell', 'MK120', 2009, '2026-09-25', 'Library ICT component'),
(452, 452, 2, 5, 'UDSM-CMPNT-0452', 'COM-SN-00452', 'HP', 'P2422H', 2010, '2026-09-24', 'Library ICT component'),
(453, 453, 4, 6, 'UDSM-CMPNT-0453', 'COM-SN-00453', 'Lenovo', 'M185', 2009, '2026-09-23', 'Library ICT component'),
(454, 454, 8, 7, 'UDSM-CMPNT-0454', 'COM-SN-00454', 'Acer', 'ScanMate', 2010, '2026-09-22', 'Library ICT component'),
(455, 455, 9, 8, 'UDSM-CMPNT-0455', 'COM-SN-00455', 'ASUS', 'B203', 2009, '2026-09-21', 'Library ICT component'),
(456, 456, 6, 9, 'UDSM-CMPNT-0456', 'COM-SN-00456', 'Logitech', 'UPS-650VA', 2010, '2026-09-20', 'Library ICT component'),
(457, 457, 1, 10, 'UDSM-CMPNT-0457', 'COM-SN-00457', 'Epson', 'C920', 2009, '2026-09-19', 'Library ICT component'),
(458, 458, 5, 11, 'UDSM-CMPNT-0458', 'COM-SN-00458', 'Canon', 'K120', 2010, '2026-09-18', 'Library ICT component'),
(459, 459, 7, 12, 'UDSM-CMPNT-0459', 'COM-SN-00459', 'APC', 'Basic', 2009, '2026-09-17', 'Library ICT component'),
(460, 460, 3, 13, 'UDSM-CMPNT-0460', 'COM-SN-00460', 'Dell', 'MK120', 2010, '2026-09-16', 'Library ICT component'),
(461, 461, 2, 15, 'UDSM-CMPNT-0461', 'COM-SN-00461', 'HP', 'P2422H', 2009, '2026-09-15', 'Library ICT component'),
(462, 462, 4, 16, 'UDSM-CMPNT-0462', 'COM-SN-00462', 'Lenovo', 'M185', 2010, '2026-09-14', 'Library ICT component'),
(463, 463, 8, 17, 'UDSM-CMPNT-0463', 'COM-SN-00463', 'Acer', 'ScanMate', 2009, '2026-09-13', 'Library ICT component'),
(464, 464, 9, 18, 'UDSM-CMPNT-0464', 'COM-SN-00464', 'ASUS', 'B203', 2010, '2026-09-12', 'Library ICT component'),
(465, 465, 6, 1, 'UDSM-CMPNT-0465', 'COM-SN-00465', 'Logitech', 'UPS-650VA', 2009, '2026-09-11', 'Library ICT component'),
(466, 466, 1, 2, 'UDSM-CMPNT-0466', 'COM-SN-00466', 'Epson', 'C920', 2010, '2026-09-10', 'Library ICT component'),
(467, 467, 5, 3, 'UDSM-CMPNT-0467', 'COM-SN-00467', 'Canon', 'K120', 2009, '2026-09-09', 'Library ICT component'),
(468, 468, 7, 5, 'UDSM-CMPNT-0468', 'COM-SN-00468', 'APC', 'Basic', 2010, '2026-09-08', 'Library ICT component'),
(469, 469, 3, 6, 'UDSM-CMPNT-0469', 'COM-SN-00469', 'Dell', 'MK120', 2009, '2026-09-07', 'Library ICT component'),
(470, 470, 2, 7, 'UDSM-CMPNT-0470', 'COM-SN-00470', 'HP', 'P2422H', 2010, '2026-09-06', 'Library ICT component'),
(471, 471, 4, 8, 'UDSM-CMPNT-0471', 'COM-SN-00471', 'Lenovo', 'M185', 2009, '2026-09-05', 'Library ICT component'),
(472, 472, 8, 9, 'UDSM-CMPNT-0472', 'COM-SN-00472', 'Acer', 'ScanMate', 2010, '2026-09-04', 'Library ICT component'),
(473, 473, 9, 10, 'UDSM-CMPNT-0473', 'COM-SN-00473', 'ASUS', 'B203', 2009, '2026-09-03', 'Library ICT component'),
(474, 474, 6, 11, 'UDSM-CMPNT-0474', 'COM-SN-00474', 'Logitech', 'UPS-650VA', 2010, '2026-09-02', 'Library ICT component'),
(475, 475, 1, 12, 'UDSM-CMPNT-0475', 'COM-SN-00475', 'Epson', 'C920', 2009, '2026-09-01', 'Library ICT component'),
(476, 476, 5, 13, 'UDSM-CMPNT-0476', 'COM-SN-00476', 'Canon', 'K120', 2010, '2026-08-31', 'Library ICT component'),
(477, 477, 7, 15, 'UDSM-CMPNT-0477', 'COM-SN-00477', 'APC', 'Basic', 2009, '2026-08-30', 'Library ICT component'),
(478, 478, 3, 16, 'UDSM-CMPNT-0478', 'COM-SN-00478', 'Dell', 'MK120', 2010, '2026-08-29', 'Library ICT component'),
(479, 479, 2, 17, 'UDSM-CMPNT-0479', 'COM-SN-00479', 'HP', 'P2422H', 2009, '2026-08-28', 'Library ICT component'),
(480, 480, 4, 18, 'UDSM-CMPNT-0480', 'COM-SN-00480', 'Lenovo', 'M185', 2010, '2026-08-27', 'Library ICT component'),
(481, 481, 8, 1, 'UDSM-CMPNT-0481', 'COM-SN-00481', 'Acer', 'ScanMate', 2009, '2026-08-26', 'Library ICT component'),
(482, 482, 9, 2, 'UDSM-CMPNT-0482', 'COM-SN-00482', 'ASUS', 'B203', 2010, '2026-08-25', 'Library ICT component'),
(483, 483, 6, 3, 'UDSM-CMPNT-0483', 'COM-SN-00483', 'Logitech', 'UPS-650VA', 2009, '2026-08-24', 'Library ICT component'),
(484, 484, 1, 5, 'UDSM-CMPNT-0484', 'COM-SN-00484', 'Epson', 'C920', 2010, '2026-08-23', 'Library ICT component'),
(485, 485, 5, 6, 'UDSM-CMPNT-0485', 'COM-SN-00485', 'Canon', 'K120', 2009, '2026-08-22', 'Library ICT component'),
(486, 486, 7, 7, 'UDSM-CMPNT-0486', 'COM-SN-00486', 'APC', 'Basic', 2010, '2026-08-21', 'Library ICT component'),
(487, 487, 3, 8, 'UDSM-CMPNT-0487', 'COM-SN-00487', 'Dell', 'MK120', 2009, '2026-08-20', 'Library ICT component'),
(488, 488, 2, 9, 'UDSM-CMPNT-0488', 'COM-SN-00488', 'HP', 'P2422H', 2010, '2026-08-19', 'Library ICT component'),
(489, 489, 4, 10, 'UDSM-CMPNT-0489', 'COM-SN-00489', 'Lenovo', 'M185', 2009, '2026-08-18', 'Library ICT component'),
(490, 490, 8, 11, 'UDSM-CMPNT-0490', 'COM-SN-00490', 'Acer', 'ScanMate', 2010, '2026-08-17', 'Library ICT component'),
(491, 491, 9, 12, 'UDSM-CMPNT-0491', 'COM-SN-00491', 'ASUS', 'B203', 2009, '2026-08-16', 'Library ICT component'),
(492, 492, 6, 13, 'UDSM-CMPNT-0492', 'COM-SN-00492', 'Logitech', 'UPS-650VA', 2010, '2026-08-15', 'Library ICT component'),
(493, 493, 1, 15, 'UDSM-CMPNT-0493', 'COM-SN-00493', 'Epson', 'C920', 2009, '2026-08-14', 'Library ICT component'),
(494, 494, 5, 16, 'UDSM-CMPNT-0494', 'COM-SN-00494', 'Canon', 'K120', 2010, '2026-08-13', 'Library ICT component'),
(495, 495, 7, 17, 'UDSM-CMPNT-0495', 'COM-SN-00495', 'APC', 'Basic', 2009, '2026-08-12', 'Library ICT component'),
(496, 496, 3, 18, 'UDSM-CMPNT-0496', 'COM-SN-00496', 'Dell', 'MK120', 2010, '2026-08-11', 'Library ICT component'),
(497, 497, 2, 1, 'UDSM-CMPNT-0497', 'COM-SN-00497', 'HP', 'P2422H', 2009, '2026-08-10', 'Library ICT component'),
(498, 498, 4, 2, 'UDSM-CMPNT-0498', 'COM-SN-00498', 'Lenovo', 'M185', 2010, '2026-08-09', 'Library ICT component'),
(499, 499, 8, 3, 'UDSM-CMPNT-0499', 'COM-SN-00499', 'Acer', 'ScanMate', 2009, '2026-08-08', 'Library ICT component'),
(500, 500, 9, 5, 'UDSM-CMPNT-0500', 'COM-SN-00500', 'ASUS', 'B203', 2010, '2026-08-07', 'Library ICT component');

-- --------------------------------------------------------

--
-- Table structure for table `component_type`
--

CREATE TABLE `component_type` (
  `component_type_id` int(11) NOT NULL,
  `type_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `component_type`
--

INSERT INTO `component_type` (`component_type_id`, `type_name`) VALUES
(3, 'Keyboard'),
(2, 'Monitor'),
(4, 'Mouse'),
(8, 'Router'),
(9, 'Scanner'),
(6, 'Speakers'),
(1, 'System Unit'),
(5, 'UPS'),
(7, 'Webcam');

-- --------------------------------------------------------

--
-- Table structure for table `computer_set`
--

CREATE TABLE `computer_set` (
  `computer_id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `computer_type_id` int(11) NOT NULL,
  `inventory_barcode` varchar(30) DEFAULT NULL,
  `serial_number` varchar(50) DEFAULT NULL,
  `brand` varchar(50) DEFAULT NULL,
  `model` varchar(50) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `purchase_date` date DEFAULT NULL,
  `date_added` date DEFAULT curdate(),
  `remarks` varchar(255) DEFAULT NULL
) ;

--
-- Dumping data for table `computer_set`
--

INSERT INTO `computer_set` (`computer_id`, `room_id`, `computer_type_id`, `inventory_barcode`, `serial_number`, `brand`, `model`, `status_id`, `purchase_date`, `date_added`, `remarks`) VALUES
(1, 1, 7, 'UDSM-CMP-0001', 'CMP-SN-00001', 'Dell', 'Latitude 5520', 2009, NULL, '2026-09-26', 'not-working'),
(2, 2, 9, 'UDSM-CMP-0002', 'CMP-SN-00002', 'HP', 'OptiPlex 7090', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(3, 3, 10, 'UDSM-CMP-0003', 'CMP-SN-00003', 'Lenovo', 'ThinkCentre M720', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(4, 5, 8, 'UDSM-CMP-0004', 'CMP-SN-00004', 'Acer', 'ProBook 450 G8', 2010, NULL, '2026-09-26', 'Library ICT workstation'),
(5, 6, 7, 'UDSM-CMP-0005', 'CMP-SN-00005', 'ASUS', 'Aspire 5', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(6, 7, 9, 'UDSM-CMP-0006', 'CMP-SN-00006', 'Dell', 'Latitude 5520', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(7, 8, 10, 'UDSM-CMP-0007', 'CMP-SN-00007', 'HP', 'OptiPlex 7090', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(8, 9, 8, 'UDSM-CMP-0008', 'CMP-SN-00008', 'Lenovo', 'ThinkCentre M720', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(9, 10, 7, 'UDSM-CMP-0009', 'CMP-SN-00009', 'Acer', 'ProBook 450 G8', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(10, 11, 9, 'UDSM-CMP-0010', 'CMP-SN-00010', 'ASUS', 'Aspire 5', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(11, 12, 10, 'UDSM-CMP-0011', 'CMP-SN-00011', 'Dell', 'Latitude 5520', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(12, 13, 8, 'UDSM-CMP-0012', 'CMP-SN-00012', 'HP', 'OptiPlex 7090', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(13, 15, 7, 'UDSM-CMP-0013', 'CMP-SN-00013', 'Lenovo', 'ThinkCentre M720', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(14, 16, 9, 'UDSM-CMP-0014', 'CMP-SN-00014', 'Acer', 'ProBook 450 G8', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(15, 17, 10, 'UDSM-CMP-0015', 'CMP-SN-00015', 'ASUS', 'Aspire 5', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(16, 18, 8, 'UDSM-CMP-0016', 'CMP-SN-00016', 'Dell', 'Latitude 5520', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(17, 1, 7, 'UDSM-CMP-0017', 'CMP-SN-00017', 'HP', 'OptiPlex 7090', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(18, 2, 9, 'UDSM-CMP-0018', 'CMP-SN-00018', 'Lenovo', 'ThinkCentre M720', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(19, 3, 10, 'UDSM-CMP-0019', 'CMP-SN-00019', 'Acer', 'ProBook 450 G8', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(20, 5, 8, 'UDSM-CMP-0020', 'CMP-SN-00020', 'ASUS', 'Aspire 5', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(21, 6, 7, 'UDSM-CMP-0021', 'CMP-SN-00021', 'Dell', 'Latitude 5520', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(22, 7, 9, 'UDSM-CMP-0022', 'CMP-SN-00022', 'HP', 'OptiPlex 7090', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(23, 8, 10, 'UDSM-CMP-0023', 'CMP-SN-00023', 'Lenovo', 'ThinkCentre M720', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(24, 9, 8, 'UDSM-CMP-0024', 'CMP-SN-00024', 'Acer', 'ProBook 450 G8', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(25, 10, 7, 'UDSM-CMP-0025', 'CMP-SN-00025', 'ASUS', 'Aspire 5', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(26, 11, 9, 'UDSM-CMP-0026', 'CMP-SN-00026', 'Dell', 'Latitude 5520', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(27, 12, 10, 'UDSM-CMP-0027', 'CMP-SN-00027', 'HP', 'OptiPlex 7090', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(28, 13, 8, 'UDSM-CMP-0028', 'CMP-SN-00028', 'Lenovo', 'ThinkCentre M720', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(29, 15, 7, 'UDSM-CMP-0029', 'CMP-SN-00029', 'Acer', 'ProBook 450 G8', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(30, 16, 9, 'UDSM-CMP-0030', 'CMP-SN-00030', 'ASUS', 'Aspire 5', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(31, 17, 10, 'UDSM-CMP-0031', 'CMP-SN-00031', 'Dell', 'Latitude 5520', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(32, 18, 8, 'UDSM-CMP-0032', 'CMP-SN-00032', 'HP', 'OptiPlex 7090', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(33, 1, 7, 'UDSM-CMP-0033', 'CMP-SN-00033', 'Lenovo', 'ThinkCentre M720', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(34, 2, 9, 'UDSM-CMP-0034', 'CMP-SN-00034', 'Acer', 'ProBook 450 G8', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(35, 3, 10, 'UDSM-CMP-0035', 'CMP-SN-00035', 'ASUS', 'Aspire 5', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(36, 5, 8, 'UDSM-CMP-0036', 'CMP-SN-00036', 'Dell', 'Latitude 5520', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(37, 6, 7, 'UDSM-CMP-0037', 'CMP-SN-00037', 'HP', 'OptiPlex 7090', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(38, 7, 9, 'UDSM-CMP-0038', 'CMP-SN-00038', 'Lenovo', 'ThinkCentre M720', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(39, 8, 10, 'UDSM-CMP-0039', 'CMP-SN-00039', 'Acer', 'ProBook 450 G8', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(40, 9, 8, 'UDSM-CMP-0040', 'CMP-SN-00040', 'ASUS', 'Aspire 5', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(41, 10, 7, 'UDSM-CMP-0041', 'CMP-SN-00041', 'Dell', 'Latitude 5520', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(42, 11, 9, 'UDSM-CMP-0042', 'CMP-SN-00042', 'HP', 'OptiPlex 7090', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(43, 12, 10, 'UDSM-CMP-0043', 'CMP-SN-00043', 'Lenovo', 'ThinkCentre M720', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(44, 13, 8, 'UDSM-CMP-0044', 'CMP-SN-00044', 'Acer', 'ProBook 450 G8', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(45, 15, 7, 'UDSM-CMP-0045', 'CMP-SN-00045', 'ASUS', 'Aspire 5', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(46, 16, 9, 'UDSM-CMP-0046', 'CMP-SN-00046', 'Dell', 'Latitude 5520', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(47, 17, 10, 'UDSM-CMP-0047', 'CMP-SN-00047', 'HP', 'OptiPlex 7090', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(48, 18, 8, 'UDSM-CMP-0048', 'CMP-SN-00048', 'Lenovo', 'ThinkCentre M720', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(49, 1, 7, 'UDSM-CMP-0049', 'CMP-SN-00049', 'Acer', 'ProBook 450 G8', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(50, 2, 9, 'UDSM-CMP-0050', 'CMP-SN-00050', 'ASUS', 'Aspire 5', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(51, 3, 10, 'UDSM-CMP-0051', 'CMP-SN-00051', 'Dell', 'Latitude 5520', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(52, 5, 8, 'UDSM-CMP-0052', 'CMP-SN-00052', 'HP', 'OptiPlex 7090', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(53, 6, 7, 'UDSM-CMP-0053', 'CMP-SN-00053', 'Lenovo', 'ThinkCentre M720', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(54, 7, 9, 'UDSM-CMP-0054', 'CMP-SN-00054', 'Acer', 'ProBook 450 G8', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(55, 8, 10, 'UDSM-CMP-0055', 'CMP-SN-00055', 'ASUS', 'Aspire 5', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(56, 9, 8, 'UDSM-CMP-0056', 'CMP-SN-00056', 'Dell', 'Latitude 5520', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(57, 10, 7, 'UDSM-CMP-0057', 'CMP-SN-00057', 'HP', 'OptiPlex 7090', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(58, 11, 9, 'UDSM-CMP-0058', 'CMP-SN-00058', 'Lenovo', 'ThinkCentre M720', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(59, 12, 10, 'UDSM-CMP-0059', 'CMP-SN-00059', 'Acer', 'ProBook 450 G8', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(60, 13, 8, 'UDSM-CMP-0060', 'CMP-SN-00060', 'ASUS', 'Aspire 5', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(61, 15, 7, 'UDSM-CMP-0061', 'CMP-SN-00061', 'Dell', 'Latitude 5520', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(62, 16, 9, 'UDSM-CMP-0062', 'CMP-SN-00062', 'HP', 'OptiPlex 7090', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(63, 17, 10, 'UDSM-CMP-0063', 'CMP-SN-00063', 'Lenovo', 'ThinkCentre M720', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(64, 18, 8, 'UDSM-CMP-0064', 'CMP-SN-00064', 'Acer', 'ProBook 450 G8', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(65, 1, 7, 'UDSM-CMP-0065', 'CMP-SN-00065', 'ASUS', 'Aspire 5', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(66, 2, 9, 'UDSM-CMP-0066', 'CMP-SN-00066', 'Dell', 'Latitude 5520', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(67, 3, 10, 'UDSM-CMP-0067', 'CMP-SN-00067', 'HP', 'OptiPlex 7090', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(68, 5, 8, 'UDSM-CMP-0068', 'CMP-SN-00068', 'Lenovo', 'ThinkCentre M720', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(69, 6, 7, 'UDSM-CMP-0069', 'CMP-SN-00069', 'Acer', 'ProBook 450 G8', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(70, 7, 9, 'UDSM-CMP-0070', 'CMP-SN-00070', 'ASUS', 'Aspire 5', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(71, 8, 10, 'UDSM-CMP-0071', 'CMP-SN-00071', 'Dell', 'Latitude 5520', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(72, 9, 8, 'UDSM-CMP-0072', 'CMP-SN-00072', 'HP', 'OptiPlex 7090', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(73, 10, 7, 'UDSM-CMP-0073', 'CMP-SN-00073', 'Lenovo', 'ThinkCentre M720', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(74, 11, 9, 'UDSM-CMP-0074', 'CMP-SN-00074', 'Acer', 'ProBook 450 G8', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(75, 12, 10, 'UDSM-CMP-0075', 'CMP-SN-00075', 'ASUS', 'Aspire 5', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(76, 13, 8, 'UDSM-CMP-0076', 'CMP-SN-00076', 'Dell', 'Latitude 5520', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(77, 15, 7, 'UDSM-CMP-0077', 'CMP-SN-00077', 'HP', 'OptiPlex 7090', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(78, 16, 9, 'UDSM-CMP-0078', 'CMP-SN-00078', 'Lenovo', 'ThinkCentre M720', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(79, 17, 10, 'UDSM-CMP-0079', 'CMP-SN-00079', 'Acer', 'ProBook 450 G8', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(80, 18, 8, 'UDSM-CMP-0080', 'CMP-SN-00080', 'ASUS', 'Aspire 5', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(81, 1, 7, 'UDSM-CMP-0081', 'CMP-SN-00081', 'Dell', 'Latitude 5520', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(82, 2, 9, 'UDSM-CMP-0082', 'CMP-SN-00082', 'HP', 'OptiPlex 7090', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(83, 3, 10, 'UDSM-CMP-0083', 'CMP-SN-00083', 'Lenovo', 'ThinkCentre M720', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(84, 5, 8, 'UDSM-CMP-0084', 'CMP-SN-00084', 'Acer', 'ProBook 450 G8', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(85, 6, 7, 'UDSM-CMP-0085', 'CMP-SN-00085', 'ASUS', 'Aspire 5', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(86, 7, 9, 'UDSM-CMP-0086', 'CMP-SN-00086', 'Dell', 'Latitude 5520', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(87, 8, 10, 'UDSM-CMP-0087', 'CMP-SN-00087', 'HP', 'OptiPlex 7090', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(88, 9, 8, 'UDSM-CMP-0088', 'CMP-SN-00088', 'Lenovo', 'ThinkCentre M720', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(89, 10, 7, 'UDSM-CMP-0089', 'CMP-SN-00089', 'Acer', 'ProBook 450 G8', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(90, 11, 9, 'UDSM-CMP-0090', 'CMP-SN-00090', 'ASUS', 'Aspire 5', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(91, 12, 10, 'UDSM-CMP-0091', 'CMP-SN-00091', 'Dell', 'Latitude 5520', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(92, 13, 8, 'UDSM-CMP-0092', 'CMP-SN-00092', 'HP', 'OptiPlex 7090', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(93, 15, 7, 'UDSM-CMP-0093', 'CMP-SN-00093', 'Lenovo', 'ThinkCentre M720', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(94, 16, 9, 'UDSM-CMP-0094', 'CMP-SN-00094', 'Acer', 'ProBook 450 G8', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(95, 17, 10, 'UDSM-CMP-0095', 'CMP-SN-00095', 'ASUS', 'Aspire 5', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(96, 18, 8, 'UDSM-CMP-0096', 'CMP-SN-00096', 'Dell', 'Latitude 5520', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(97, 1, 7, 'UDSM-CMP-0097', 'CMP-SN-00097', 'HP', 'OptiPlex 7090', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(98, 2, 9, 'UDSM-CMP-0098', 'CMP-SN-00098', 'Lenovo', 'ThinkCentre M720', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(99, 3, 10, 'UDSM-CMP-0099', 'CMP-SN-00099', 'Acer', 'ProBook 450 G8', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(100, 5, 8, 'UDSM-CMP-0100', 'CMP-SN-00100', 'ASUS', 'Aspire 5', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(101, 6, 7, 'UDSM-CMP-0101', 'CMP-SN-00101', 'Dell', 'Latitude 5520', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(102, 7, 9, 'UDSM-CMP-0102', 'CMP-SN-00102', 'HP', 'OptiPlex 7090', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(103, 8, 10, 'UDSM-CMP-0103', 'CMP-SN-00103', 'Lenovo', 'ThinkCentre M720', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(104, 9, 8, 'UDSM-CMP-0104', 'CMP-SN-00104', 'Acer', 'ProBook 450 G8', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(105, 10, 7, 'UDSM-CMP-0105', 'CMP-SN-00105', 'ASUS', 'Aspire 5', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(106, 11, 9, 'UDSM-CMP-0106', 'CMP-SN-00106', 'Dell', 'Latitude 5520', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(107, 12, 10, 'UDSM-CMP-0107', 'CMP-SN-00107', 'HP', 'OptiPlex 7090', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(108, 13, 8, 'UDSM-CMP-0108', 'CMP-SN-00108', 'Lenovo', 'ThinkCentre M720', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(109, 15, 7, 'UDSM-CMP-0109', 'CMP-SN-00109', 'Acer', 'ProBook 450 G8', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(110, 16, 9, 'UDSM-CMP-0110', 'CMP-SN-00110', 'ASUS', 'Aspire 5', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(111, 17, 10, 'UDSM-CMP-0111', 'CMP-SN-00111', 'Dell', 'Latitude 5520', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(112, 18, 8, 'UDSM-CMP-0112', 'CMP-SN-00112', 'HP', 'OptiPlex 7090', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(113, 1, 7, 'UDSM-CMP-0113', 'CMP-SN-00113', 'Lenovo', 'ThinkCentre M720', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(114, 2, 9, 'UDSM-CMP-0114', 'CMP-SN-00114', 'Acer', 'ProBook 450 G8', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(115, 3, 10, 'UDSM-CMP-0115', 'CMP-SN-00115', 'ASUS', 'Aspire 5', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(116, 5, 8, 'UDSM-CMP-0116', 'CMP-SN-00116', 'Dell', 'Latitude 5520', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(117, 6, 7, 'UDSM-CMP-0117', 'CMP-SN-00117', 'HP', 'OptiPlex 7090', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(118, 7, 9, 'UDSM-CMP-0118', 'CMP-SN-00118', 'Lenovo', 'ThinkCentre M720', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(119, 8, 10, 'UDSM-CMP-0119', 'CMP-SN-00119', 'Acer', 'ProBook 450 G8', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(120, 9, 8, 'UDSM-CMP-0120', 'CMP-SN-00120', 'ASUS', 'Aspire 5', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(121, 10, 7, 'UDSM-CMP-0121', 'CMP-SN-00121', 'Dell', 'Latitude 5520', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(122, 11, 9, 'UDSM-CMP-0122', 'CMP-SN-00122', 'HP', 'OptiPlex 7090', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(123, 12, 10, 'UDSM-CMP-0123', 'CMP-SN-00123', 'Lenovo', 'ThinkCentre M720', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(124, 13, 8, 'UDSM-CMP-0124', 'CMP-SN-00124', 'Acer', 'ProBook 450 G8', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(125, 15, 7, 'UDSM-CMP-0125', 'CMP-SN-00125', 'ASUS', 'Aspire 5', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(126, 16, 9, 'UDSM-CMP-0126', 'CMP-SN-00126', 'Dell', 'Latitude 5520', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(127, 17, 10, 'UDSM-CMP-0127', 'CMP-SN-00127', 'HP', 'OptiPlex 7090', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(128, 18, 8, 'UDSM-CMP-0128', 'CMP-SN-00128', 'Lenovo', 'ThinkCentre M720', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(129, 1, 7, 'UDSM-CMP-0129', 'CMP-SN-00129', 'Acer', 'ProBook 450 G8', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(130, 2, 9, 'UDSM-CMP-0130', 'CMP-SN-00130', 'ASUS', 'Aspire 5', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(131, 3, 10, 'UDSM-CMP-0131', 'CMP-SN-00131', 'Dell', 'Latitude 5520', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(132, 5, 8, 'UDSM-CMP-0132', 'CMP-SN-00132', 'HP', 'OptiPlex 7090', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(133, 6, 7, 'UDSM-CMP-0133', 'CMP-SN-00133', 'Lenovo', 'ThinkCentre M720', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(134, 7, 9, 'UDSM-CMP-0134', 'CMP-SN-00134', 'Acer', 'ProBook 450 G8', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(135, 8, 10, 'UDSM-CMP-0135', 'CMP-SN-00135', 'ASUS', 'Aspire 5', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(136, 9, 8, 'UDSM-CMP-0136', 'CMP-SN-00136', 'Dell', 'Latitude 5520', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(137, 10, 7, 'UDSM-CMP-0137', 'CMP-SN-00137', 'HP', 'OptiPlex 7090', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(138, 11, 9, 'UDSM-CMP-0138', 'CMP-SN-00138', 'Lenovo', 'ThinkCentre M720', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(139, 12, 10, 'UDSM-CMP-0139', 'CMP-SN-00139', 'Acer', 'ProBook 450 G8', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(140, 13, 8, 'UDSM-CMP-0140', 'CMP-SN-00140', 'ASUS', 'Aspire 5', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(141, 15, 7, 'UDSM-CMP-0141', 'CMP-SN-00141', 'Dell', 'Latitude 5520', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(142, 16, 9, 'UDSM-CMP-0142', 'CMP-SN-00142', 'HP', 'OptiPlex 7090', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(143, 17, 10, 'UDSM-CMP-0143', 'CMP-SN-00143', 'Lenovo', 'ThinkCentre M720', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(144, 18, 8, 'UDSM-CMP-0144', 'CMP-SN-00144', 'Acer', 'ProBook 450 G8', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(145, 1, 7, 'UDSM-CMP-0145', 'CMP-SN-00145', 'ASUS', 'Aspire 5', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(146, 2, 9, 'UDSM-CMP-0146', 'CMP-SN-00146', 'Dell', 'Latitude 5520', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(147, 3, 10, 'UDSM-CMP-0147', 'CMP-SN-00147', 'HP', 'OptiPlex 7090', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(148, 5, 8, 'UDSM-CMP-0148', 'CMP-SN-00148', 'Lenovo', 'ThinkCentre M720', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(149, 6, 7, 'UDSM-CMP-0149', 'CMP-SN-00149', 'Acer', 'ProBook 450 G8', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(150, 7, 9, 'UDSM-CMP-0150', 'CMP-SN-00150', 'ASUS', 'Aspire 5', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(151, 8, 10, 'UDSM-CMP-0151', 'CMP-SN-00151', 'Dell', 'Latitude 5520', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(152, 9, 8, 'UDSM-CMP-0152', 'CMP-SN-00152', 'HP', 'OptiPlex 7090', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(153, 10, 7, 'UDSM-CMP-0153', 'CMP-SN-00153', 'Lenovo', 'ThinkCentre M720', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(154, 11, 9, 'UDSM-CMP-0154', 'CMP-SN-00154', 'Acer', 'ProBook 450 G8', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(155, 12, 10, 'UDSM-CMP-0155', 'CMP-SN-00155', 'ASUS', 'Aspire 5', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(156, 13, 8, 'UDSM-CMP-0156', 'CMP-SN-00156', 'Dell', 'Latitude 5520', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(157, 15, 7, 'UDSM-CMP-0157', 'CMP-SN-00157', 'HP', 'OptiPlex 7090', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(158, 16, 9, 'UDSM-CMP-0158', 'CMP-SN-00158', 'Lenovo', 'ThinkCentre M720', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(159, 17, 10, 'UDSM-CMP-0159', 'CMP-SN-00159', 'Acer', 'ProBook 450 G8', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(160, 18, 8, 'UDSM-CMP-0160', 'CMP-SN-00160', 'ASUS', 'Aspire 5', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(161, 1, 7, 'UDSM-CMP-0161', 'CMP-SN-00161', 'Dell', 'Latitude 5520', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(162, 2, 9, 'UDSM-CMP-0162', 'CMP-SN-00162', 'HP', 'OptiPlex 7090', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(163, 3, 10, 'UDSM-CMP-0163', 'CMP-SN-00163', 'Lenovo', 'ThinkCentre M720', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(164, 5, 8, 'UDSM-CMP-0164', 'CMP-SN-00164', 'Acer', 'ProBook 450 G8', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(165, 6, 7, 'UDSM-CMP-0165', 'CMP-SN-00165', 'ASUS', 'Aspire 5', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(166, 7, 9, 'UDSM-CMP-0166', 'CMP-SN-00166', 'Dell', 'Latitude 5520', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(167, 8, 10, 'UDSM-CMP-0167', 'CMP-SN-00167', 'HP', 'OptiPlex 7090', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(168, 9, 8, 'UDSM-CMP-0168', 'CMP-SN-00168', 'Lenovo', 'ThinkCentre M720', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(169, 10, 7, 'UDSM-CMP-0169', 'CMP-SN-00169', 'Acer', 'ProBook 450 G8', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(170, 11, 9, 'UDSM-CMP-0170', 'CMP-SN-00170', 'ASUS', 'Aspire 5', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(171, 12, 10, 'UDSM-CMP-0171', 'CMP-SN-00171', 'Dell', 'Latitude 5520', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(172, 13, 8, 'UDSM-CMP-0172', 'CMP-SN-00172', 'HP', 'OptiPlex 7090', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(173, 15, 7, 'UDSM-CMP-0173', 'CMP-SN-00173', 'Lenovo', 'ThinkCentre M720', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(174, 16, 9, 'UDSM-CMP-0174', 'CMP-SN-00174', 'Acer', 'ProBook 450 G8', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(175, 17, 10, 'UDSM-CMP-0175', 'CMP-SN-00175', 'ASUS', 'Aspire 5', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(176, 18, 8, 'UDSM-CMP-0176', 'CMP-SN-00176', 'Dell', 'Latitude 5520', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(177, 1, 7, 'UDSM-CMP-0177', 'CMP-SN-00177', 'HP', 'OptiPlex 7090', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(178, 2, 9, 'UDSM-CMP-0178', 'CMP-SN-00178', 'Lenovo', 'ThinkCentre M720', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(179, 3, 10, 'UDSM-CMP-0179', 'CMP-SN-00179', 'Acer', 'ProBook 450 G8', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(180, 5, 8, 'UDSM-CMP-0180', 'CMP-SN-00180', 'ASUS', 'Aspire 5', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(181, 6, 7, 'UDSM-CMP-0181', 'CMP-SN-00181', 'Dell', 'Latitude 5520', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(182, 7, 9, 'UDSM-CMP-0182', 'CMP-SN-00182', 'HP', 'OptiPlex 7090', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(183, 8, 10, 'UDSM-CMP-0183', 'CMP-SN-00183', 'Lenovo', 'ThinkCentre M720', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(184, 9, 8, 'UDSM-CMP-0184', 'CMP-SN-00184', 'Acer', 'ProBook 450 G8', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(185, 10, 7, 'UDSM-CMP-0185', 'CMP-SN-00185', 'ASUS', 'Aspire 5', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(186, 11, 9, 'UDSM-CMP-0186', 'CMP-SN-00186', 'Dell', 'Latitude 5520', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(187, 12, 10, 'UDSM-CMP-0187', 'CMP-SN-00187', 'HP', 'OptiPlex 7090', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(188, 13, 8, 'UDSM-CMP-0188', 'CMP-SN-00188', 'Lenovo', 'ThinkCentre M720', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(189, 15, 7, 'UDSM-CMP-0189', 'CMP-SN-00189', 'Acer', 'ProBook 450 G8', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(190, 16, 9, 'UDSM-CMP-0190', 'CMP-SN-00190', 'ASUS', 'Aspire 5', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(191, 17, 10, 'UDSM-CMP-0191', 'CMP-SN-00191', 'Dell', 'Latitude 5520', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(192, 18, 8, 'UDSM-CMP-0192', 'CMP-SN-00192', 'HP', 'OptiPlex 7090', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(193, 1, 7, 'UDSM-CMP-0193', 'CMP-SN-00193', 'Lenovo', 'ThinkCentre M720', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(194, 2, 9, 'UDSM-CMP-0194', 'CMP-SN-00194', 'Acer', 'ProBook 450 G8', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(195, 3, 10, 'UDSM-CMP-0195', 'CMP-SN-00195', 'ASUS', 'Aspire 5', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(196, 5, 8, 'UDSM-CMP-0196', 'CMP-SN-00196', 'Dell', 'Latitude 5520', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(197, 6, 7, 'UDSM-CMP-0197', 'CMP-SN-00197', 'HP', 'OptiPlex 7090', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(198, 7, 9, 'UDSM-CMP-0198', 'CMP-SN-00198', 'Lenovo', 'ThinkCentre M720', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(199, 8, 10, 'UDSM-CMP-0199', 'CMP-SN-00199', 'Acer', 'ProBook 450 G8', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(200, 9, 8, 'UDSM-CMP-0200', 'CMP-SN-00200', 'ASUS', 'Aspire 5', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(201, 10, 7, 'UDSM-CMP-0201', 'CMP-SN-00201', 'Dell', 'Latitude 5520', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(202, 11, 9, 'UDSM-CMP-0202', 'CMP-SN-00202', 'HP', 'OptiPlex 7090', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(203, 12, 10, 'UDSM-CMP-0203', 'CMP-SN-00203', 'Lenovo', 'ThinkCentre M720', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(204, 13, 8, 'UDSM-CMP-0204', 'CMP-SN-00204', 'Acer', 'ProBook 450 G8', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(205, 15, 7, 'UDSM-CMP-0205', 'CMP-SN-00205', 'ASUS', 'Aspire 5', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(206, 16, 9, 'UDSM-CMP-0206', 'CMP-SN-00206', 'Dell', 'Latitude 5520', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(207, 17, 10, 'UDSM-CMP-0207', 'CMP-SN-00207', 'HP', 'OptiPlex 7090', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(208, 18, 8, 'UDSM-CMP-0208', 'CMP-SN-00208', 'Lenovo', 'ThinkCentre M720', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(209, 1, 7, 'UDSM-CMP-0209', 'CMP-SN-00209', 'Acer', 'ProBook 450 G8', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(210, 2, 9, 'UDSM-CMP-0210', 'CMP-SN-00210', 'ASUS', 'Aspire 5', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(211, 3, 10, 'UDSM-CMP-0211', 'CMP-SN-00211', 'Dell', 'Latitude 5520', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(212, 5, 8, 'UDSM-CMP-0212', 'CMP-SN-00212', 'HP', 'OptiPlex 7090', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(213, 6, 7, 'UDSM-CMP-0213', 'CMP-SN-00213', 'Lenovo', 'ThinkCentre M720', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(214, 7, 9, 'UDSM-CMP-0214', 'CMP-SN-00214', 'Acer', 'ProBook 450 G8', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(215, 8, 10, 'UDSM-CMP-0215', 'CMP-SN-00215', 'ASUS', 'Aspire 5', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(216, 9, 8, 'UDSM-CMP-0216', 'CMP-SN-00216', 'Dell', 'Latitude 5520', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(217, 10, 7, 'UDSM-CMP-0217', 'CMP-SN-00217', 'HP', 'OptiPlex 7090', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(218, 11, 9, 'UDSM-CMP-0218', 'CMP-SN-00218', 'Lenovo', 'ThinkCentre M720', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(219, 12, 10, 'UDSM-CMP-0219', 'CMP-SN-00219', 'Acer', 'ProBook 450 G8', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(220, 13, 8, 'UDSM-CMP-0220', 'CMP-SN-00220', 'ASUS', 'Aspire 5', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(221, 15, 7, 'UDSM-CMP-0221', 'CMP-SN-00221', 'Dell', 'Latitude 5520', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(222, 16, 9, 'UDSM-CMP-0222', 'CMP-SN-00222', 'HP', 'OptiPlex 7090', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(223, 17, 10, 'UDSM-CMP-0223', 'CMP-SN-00223', 'Lenovo', 'ThinkCentre M720', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(224, 18, 8, 'UDSM-CMP-0224', 'CMP-SN-00224', 'Acer', 'ProBook 450 G8', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(225, 1, 7, 'UDSM-CMP-0225', 'CMP-SN-00225', 'ASUS', 'Aspire 5', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(226, 2, 9, 'UDSM-CMP-0226', 'CMP-SN-00226', 'Dell', 'Latitude 5520', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(227, 3, 10, 'UDSM-CMP-0227', 'CMP-SN-00227', 'HP', 'OptiPlex 7090', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(228, 5, 8, 'UDSM-CMP-0228', 'CMP-SN-00228', 'Lenovo', 'ThinkCentre M720', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(229, 6, 7, 'UDSM-CMP-0229', 'CMP-SN-00229', 'Acer', 'ProBook 450 G8', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(230, 7, 9, 'UDSM-CMP-0230', 'CMP-SN-00230', 'ASUS', 'Aspire 5', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(231, 8, 10, 'UDSM-CMP-0231', 'CMP-SN-00231', 'Dell', 'Latitude 5520', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(232, 9, 8, 'UDSM-CMP-0232', 'CMP-SN-00232', 'HP', 'OptiPlex 7090', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(233, 10, 7, 'UDSM-CMP-0233', 'CMP-SN-00233', 'Lenovo', 'ThinkCentre M720', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(234, 11, 9, 'UDSM-CMP-0234', 'CMP-SN-00234', 'Acer', 'ProBook 450 G8', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(235, 12, 10, 'UDSM-CMP-0235', 'CMP-SN-00235', 'ASUS', 'Aspire 5', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(236, 13, 8, 'UDSM-CMP-0236', 'CMP-SN-00236', 'Dell', 'Latitude 5520', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(237, 15, 7, 'UDSM-CMP-0237', 'CMP-SN-00237', 'HP', 'OptiPlex 7090', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(238, 16, 9, 'UDSM-CMP-0238', 'CMP-SN-00238', 'Lenovo', 'ThinkCentre M720', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(239, 17, 10, 'UDSM-CMP-0239', 'CMP-SN-00239', 'Acer', 'ProBook 450 G8', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(240, 18, 8, 'UDSM-CMP-0240', 'CMP-SN-00240', 'ASUS', 'Aspire 5', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(241, 1, 7, 'UDSM-CMP-0241', 'CMP-SN-00241', 'Dell', 'Latitude 5520', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(242, 2, 9, 'UDSM-CMP-0242', 'CMP-SN-00242', 'HP', 'OptiPlex 7090', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(243, 3, 10, 'UDSM-CMP-0243', 'CMP-SN-00243', 'Lenovo', 'ThinkCentre M720', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(244, 5, 8, 'UDSM-CMP-0244', 'CMP-SN-00244', 'Acer', 'ProBook 450 G8', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(245, 6, 7, 'UDSM-CMP-0245', 'CMP-SN-00245', 'ASUS', 'Aspire 5', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(246, 7, 9, 'UDSM-CMP-0246', 'CMP-SN-00246', 'Dell', 'Latitude 5520', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(247, 8, 10, 'UDSM-CMP-0247', 'CMP-SN-00247', 'HP', 'OptiPlex 7090', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(248, 9, 8, 'UDSM-CMP-0248', 'CMP-SN-00248', 'Lenovo', 'ThinkCentre M720', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(249, 10, 7, 'UDSM-CMP-0249', 'CMP-SN-00249', 'Acer', 'ProBook 450 G8', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(250, 11, 9, 'UDSM-CMP-0250', 'CMP-SN-00250', 'ASUS', 'Aspire 5', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(251, 12, 10, 'UDSM-CMP-0251', 'CMP-SN-00251', 'Dell', 'Latitude 5520', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(252, 13, 8, 'UDSM-CMP-0252', 'CMP-SN-00252', 'HP', 'OptiPlex 7090', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(253, 15, 7, 'UDSM-CMP-0253', 'CMP-SN-00253', 'Lenovo', 'ThinkCentre M720', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(254, 16, 9, 'UDSM-CMP-0254', 'CMP-SN-00254', 'Acer', 'ProBook 450 G8', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(255, 17, 10, 'UDSM-CMP-0255', 'CMP-SN-00255', 'ASUS', 'Aspire 5', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(256, 18, 8, 'UDSM-CMP-0256', 'CMP-SN-00256', 'Dell', 'Latitude 5520', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(257, 1, 7, 'UDSM-CMP-0257', 'CMP-SN-00257', 'HP', 'OptiPlex 7090', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(258, 2, 9, 'UDSM-CMP-0258', 'CMP-SN-00258', 'Lenovo', 'ThinkCentre M720', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(259, 3, 10, 'UDSM-CMP-0259', 'CMP-SN-00259', 'Acer', 'ProBook 450 G8', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(260, 5, 8, 'UDSM-CMP-0260', 'CMP-SN-00260', 'ASUS', 'Aspire 5', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(261, 6, 7, 'UDSM-CMP-0261', 'CMP-SN-00261', 'Dell', 'Latitude 5520', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(262, 7, 9, 'UDSM-CMP-0262', 'CMP-SN-00262', 'HP', 'OptiPlex 7090', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(263, 8, 10, 'UDSM-CMP-0263', 'CMP-SN-00263', 'Lenovo', 'ThinkCentre M720', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(264, 9, 8, 'UDSM-CMP-0264', 'CMP-SN-00264', 'Acer', 'ProBook 450 G8', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(265, 10, 7, 'UDSM-CMP-0265', 'CMP-SN-00265', 'ASUS', 'Aspire 5', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(266, 11, 9, 'UDSM-CMP-0266', 'CMP-SN-00266', 'Dell', 'Latitude 5520', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(267, 12, 10, 'UDSM-CMP-0267', 'CMP-SN-00267', 'HP', 'OptiPlex 7090', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(268, 13, 8, 'UDSM-CMP-0268', 'CMP-SN-00268', 'Lenovo', 'ThinkCentre M720', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(269, 15, 7, 'UDSM-CMP-0269', 'CMP-SN-00269', 'Acer', 'ProBook 450 G8', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(270, 16, 9, 'UDSM-CMP-0270', 'CMP-SN-00270', 'ASUS', 'Aspire 5', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(271, 17, 10, 'UDSM-CMP-0271', 'CMP-SN-00271', 'Dell', 'Latitude 5520', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(272, 18, 8, 'UDSM-CMP-0272', 'CMP-SN-00272', 'HP', 'OptiPlex 7090', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(273, 1, 7, 'UDSM-CMP-0273', 'CMP-SN-00273', 'Lenovo', 'ThinkCentre M720', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(274, 2, 9, 'UDSM-CMP-0274', 'CMP-SN-00274', 'Acer', 'ProBook 450 G8', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(275, 3, 10, 'UDSM-CMP-0275', 'CMP-SN-00275', 'ASUS', 'Aspire 5', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(276, 5, 8, 'UDSM-CMP-0276', 'CMP-SN-00276', 'Dell', 'Latitude 5520', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(277, 6, 7, 'UDSM-CMP-0277', 'CMP-SN-00277', 'HP', 'OptiPlex 7090', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(278, 7, 9, 'UDSM-CMP-0278', 'CMP-SN-00278', 'Lenovo', 'ThinkCentre M720', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(279, 8, 10, 'UDSM-CMP-0279', 'CMP-SN-00279', 'Acer', 'ProBook 450 G8', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(280, 9, 8, 'UDSM-CMP-0280', 'CMP-SN-00280', 'ASUS', 'Aspire 5', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(281, 10, 7, 'UDSM-CMP-0281', 'CMP-SN-00281', 'Dell', 'Latitude 5520', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(282, 11, 9, 'UDSM-CMP-0282', 'CMP-SN-00282', 'HP', 'OptiPlex 7090', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(283, 12, 10, 'UDSM-CMP-0283', 'CMP-SN-00283', 'Lenovo', 'ThinkCentre M720', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(284, 13, 8, 'UDSM-CMP-0284', 'CMP-SN-00284', 'Acer', 'ProBook 450 G8', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(285, 15, 7, 'UDSM-CMP-0285', 'CMP-SN-00285', 'ASUS', 'Aspire 5', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(286, 16, 9, 'UDSM-CMP-0286', 'CMP-SN-00286', 'Dell', 'Latitude 5520', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(287, 17, 10, 'UDSM-CMP-0287', 'CMP-SN-00287', 'HP', 'OptiPlex 7090', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(288, 18, 8, 'UDSM-CMP-0288', 'CMP-SN-00288', 'Lenovo', 'ThinkCentre M720', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(289, 1, 7, 'UDSM-CMP-0289', 'CMP-SN-00289', 'Acer', 'ProBook 450 G8', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(290, 2, 9, 'UDSM-CMP-0290', 'CMP-SN-00290', 'ASUS', 'Aspire 5', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(291, 3, 10, 'UDSM-CMP-0291', 'CMP-SN-00291', 'Dell', 'Latitude 5520', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(292, 5, 8, 'UDSM-CMP-0292', 'CMP-SN-00292', 'HP', 'OptiPlex 7090', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(293, 6, 7, 'UDSM-CMP-0293', 'CMP-SN-00293', 'Lenovo', 'ThinkCentre M720', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(294, 7, 9, 'UDSM-CMP-0294', 'CMP-SN-00294', 'Acer', 'ProBook 450 G8', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(295, 8, 10, 'UDSM-CMP-0295', 'CMP-SN-00295', 'ASUS', 'Aspire 5', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(296, 9, 8, 'UDSM-CMP-0296', 'CMP-SN-00296', 'Dell', 'Latitude 5520', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(297, 10, 7, 'UDSM-CMP-0297', 'CMP-SN-00297', 'HP', 'OptiPlex 7090', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(298, 11, 9, 'UDSM-CMP-0298', 'CMP-SN-00298', 'Lenovo', 'ThinkCentre M720', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(299, 12, 10, 'UDSM-CMP-0299', 'CMP-SN-00299', 'Acer', 'ProBook 450 G8', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(300, 13, 8, 'UDSM-CMP-0300', 'CMP-SN-00300', 'ASUS', 'Aspire 5', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(301, 15, 7, 'UDSM-CMP-0301', 'CMP-SN-00301', 'Dell', 'Latitude 5520', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(302, 16, 9, 'UDSM-CMP-0302', 'CMP-SN-00302', 'HP', 'OptiPlex 7090', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(303, 17, 10, 'UDSM-CMP-0303', 'CMP-SN-00303', 'Lenovo', 'ThinkCentre M720', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(304, 18, 8, 'UDSM-CMP-0304', 'CMP-SN-00304', 'Acer', 'ProBook 450 G8', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(305, 1, 7, 'UDSM-CMP-0305', 'CMP-SN-00305', 'ASUS', 'Aspire 5', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(306, 2, 9, 'UDSM-CMP-0306', 'CMP-SN-00306', 'Dell', 'Latitude 5520', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(307, 3, 10, 'UDSM-CMP-0307', 'CMP-SN-00307', 'HP', 'OptiPlex 7090', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(308, 5, 8, 'UDSM-CMP-0308', 'CMP-SN-00308', 'Lenovo', 'ThinkCentre M720', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(309, 6, 7, 'UDSM-CMP-0309', 'CMP-SN-00309', 'Acer', 'ProBook 450 G8', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(310, 7, 9, 'UDSM-CMP-0310', 'CMP-SN-00310', 'ASUS', 'Aspire 5', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(311, 8, 10, 'UDSM-CMP-0311', 'CMP-SN-00311', 'Dell', 'Latitude 5520', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(312, 9, 8, 'UDSM-CMP-0312', 'CMP-SN-00312', 'HP', 'OptiPlex 7090', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(313, 10, 7, 'UDSM-CMP-0313', 'CMP-SN-00313', 'Lenovo', 'ThinkCentre M720', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(314, 11, 9, 'UDSM-CMP-0314', 'CMP-SN-00314', 'Acer', 'ProBook 450 G8', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(315, 12, 10, 'UDSM-CMP-0315', 'CMP-SN-00315', 'ASUS', 'Aspire 5', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(316, 13, 8, 'UDSM-CMP-0316', 'CMP-SN-00316', 'Dell', 'Latitude 5520', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(317, 15, 7, 'UDSM-CMP-0317', 'CMP-SN-00317', 'HP', 'OptiPlex 7090', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(318, 16, 9, 'UDSM-CMP-0318', 'CMP-SN-00318', 'Lenovo', 'ThinkCentre M720', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(319, 17, 10, 'UDSM-CMP-0319', 'CMP-SN-00319', 'Acer', 'ProBook 450 G8', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(320, 18, 8, 'UDSM-CMP-0320', 'CMP-SN-00320', 'ASUS', 'Aspire 5', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(321, 1, 7, 'UDSM-CMP-0321', 'CMP-SN-00321', 'Dell', 'Latitude 5520', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(322, 2, 9, 'UDSM-CMP-0322', 'CMP-SN-00322', 'HP', 'OptiPlex 7090', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(323, 3, 10, 'UDSM-CMP-0323', 'CMP-SN-00323', 'Lenovo', 'ThinkCentre M720', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(324, 5, 8, 'UDSM-CMP-0324', 'CMP-SN-00324', 'Acer', 'ProBook 450 G8', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(325, 6, 7, 'UDSM-CMP-0325', 'CMP-SN-00325', 'ASUS', 'Aspire 5', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(326, 7, 9, 'UDSM-CMP-0326', 'CMP-SN-00326', 'Dell', 'Latitude 5520', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(327, 8, 10, 'UDSM-CMP-0327', 'CMP-SN-00327', 'HP', 'OptiPlex 7090', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(328, 9, 8, 'UDSM-CMP-0328', 'CMP-SN-00328', 'Lenovo', 'ThinkCentre M720', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(329, 10, 7, 'UDSM-CMP-0329', 'CMP-SN-00329', 'Acer', 'ProBook 450 G8', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(330, 11, 9, 'UDSM-CMP-0330', 'CMP-SN-00330', 'ASUS', 'Aspire 5', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(331, 12, 10, 'UDSM-CMP-0331', 'CMP-SN-00331', 'Dell', 'Latitude 5520', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(332, 13, 8, 'UDSM-CMP-0332', 'CMP-SN-00332', 'HP', 'OptiPlex 7090', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(333, 15, 7, 'UDSM-CMP-0333', 'CMP-SN-00333', 'Lenovo', 'ThinkCentre M720', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(334, 16, 9, 'UDSM-CMP-0334', 'CMP-SN-00334', 'Acer', 'ProBook 450 G8', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(335, 17, 10, 'UDSM-CMP-0335', 'CMP-SN-00335', 'ASUS', 'Aspire 5', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(336, 18, 8, 'UDSM-CMP-0336', 'CMP-SN-00336', 'Dell', 'Latitude 5520', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(337, 1, 7, 'UDSM-CMP-0337', 'CMP-SN-00337', 'HP', 'OptiPlex 7090', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(338, 2, 9, 'UDSM-CMP-0338', 'CMP-SN-00338', 'Lenovo', 'ThinkCentre M720', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(339, 3, 10, 'UDSM-CMP-0339', 'CMP-SN-00339', 'Acer', 'ProBook 450 G8', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(340, 5, 8, 'UDSM-CMP-0340', 'CMP-SN-00340', 'ASUS', 'Aspire 5', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(341, 6, 7, 'UDSM-CMP-0341', 'CMP-SN-00341', 'Dell', 'Latitude 5520', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(342, 7, 9, 'UDSM-CMP-0342', 'CMP-SN-00342', 'HP', 'OptiPlex 7090', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(343, 8, 10, 'UDSM-CMP-0343', 'CMP-SN-00343', 'Lenovo', 'ThinkCentre M720', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(344, 9, 8, 'UDSM-CMP-0344', 'CMP-SN-00344', 'Acer', 'ProBook 450 G8', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(345, 10, 7, 'UDSM-CMP-0345', 'CMP-SN-00345', 'ASUS', 'Aspire 5', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(346, 11, 9, 'UDSM-CMP-0346', 'CMP-SN-00346', 'Dell', 'Latitude 5520', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(347, 12, 10, 'UDSM-CMP-0347', 'CMP-SN-00347', 'HP', 'OptiPlex 7090', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(348, 13, 8, 'UDSM-CMP-0348', 'CMP-SN-00348', 'Lenovo', 'ThinkCentre M720', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(349, 15, 7, 'UDSM-CMP-0349', 'CMP-SN-00349', 'Acer', 'ProBook 450 G8', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(350, 16, 9, 'UDSM-CMP-0350', 'CMP-SN-00350', 'ASUS', 'Aspire 5', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(351, 17, 10, 'UDSM-CMP-0351', 'CMP-SN-00351', 'Dell', 'Latitude 5520', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(352, 18, 8, 'UDSM-CMP-0352', 'CMP-SN-00352', 'HP', 'OptiPlex 7090', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(353, 1, 7, 'UDSM-CMP-0353', 'CMP-SN-00353', 'Lenovo', 'ThinkCentre M720', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(354, 2, 9, 'UDSM-CMP-0354', 'CMP-SN-00354', 'Acer', 'ProBook 450 G8', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(355, 3, 10, 'UDSM-CMP-0355', 'CMP-SN-00355', 'ASUS', 'Aspire 5', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(356, 5, 8, 'UDSM-CMP-0356', 'CMP-SN-00356', 'Dell', 'Latitude 5520', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(357, 6, 7, 'UDSM-CMP-0357', 'CMP-SN-00357', 'HP', 'OptiPlex 7090', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(358, 7, 9, 'UDSM-CMP-0358', 'CMP-SN-00358', 'Lenovo', 'ThinkCentre M720', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(359, 8, 10, 'UDSM-CMP-0359', 'CMP-SN-00359', 'Acer', 'ProBook 450 G8', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(360, 9, 8, 'UDSM-CMP-0360', 'CMP-SN-00360', 'ASUS', 'Aspire 5', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(361, 10, 7, 'UDSM-CMP-0361', 'CMP-SN-00361', 'Dell', 'Latitude 5520', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(362, 11, 9, 'UDSM-CMP-0362', 'CMP-SN-00362', 'HP', 'OptiPlex 7090', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(363, 12, 10, 'UDSM-CMP-0363', 'CMP-SN-00363', 'Lenovo', 'ThinkCentre M720', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(364, 13, 8, 'UDSM-CMP-0364', 'CMP-SN-00364', 'Acer', 'ProBook 450 G8', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(365, 15, 7, 'UDSM-CMP-0365', 'CMP-SN-00365', 'ASUS', 'Aspire 5', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(366, 16, 9, 'UDSM-CMP-0366', 'CMP-SN-00366', 'Dell', 'Latitude 5520', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(367, 17, 10, 'UDSM-CMP-0367', 'CMP-SN-00367', 'HP', 'OptiPlex 7090', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(368, 18, 8, 'UDSM-CMP-0368', 'CMP-SN-00368', 'Lenovo', 'ThinkCentre M720', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(369, 1, 7, 'UDSM-CMP-0369', 'CMP-SN-00369', 'Acer', 'ProBook 450 G8', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(370, 2, 9, 'UDSM-CMP-0370', 'CMP-SN-00370', 'ASUS', 'Aspire 5', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(371, 3, 10, 'UDSM-CMP-0371', 'CMP-SN-00371', 'Dell', 'Latitude 5520', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(372, 5, 8, 'UDSM-CMP-0372', 'CMP-SN-00372', 'HP', 'OptiPlex 7090', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(373, 6, 7, 'UDSM-CMP-0373', 'CMP-SN-00373', 'Lenovo', 'ThinkCentre M720', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(374, 7, 9, 'UDSM-CMP-0374', 'CMP-SN-00374', 'Acer', 'ProBook 450 G8', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(375, 8, 10, 'UDSM-CMP-0375', 'CMP-SN-00375', 'ASUS', 'Aspire 5', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(376, 9, 8, 'UDSM-CMP-0376', 'CMP-SN-00376', 'Dell', 'Latitude 5520', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(377, 10, 7, 'UDSM-CMP-0377', 'CMP-SN-00377', 'HP', 'OptiPlex 7090', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(378, 11, 9, 'UDSM-CMP-0378', 'CMP-SN-00378', 'Lenovo', 'ThinkCentre M720', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(379, 12, 10, 'UDSM-CMP-0379', 'CMP-SN-00379', 'Acer', 'ProBook 450 G8', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(380, 13, 8, 'UDSM-CMP-0380', 'CMP-SN-00380', 'ASUS', 'Aspire 5', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(381, 15, 7, 'UDSM-CMP-0381', 'CMP-SN-00381', 'Dell', 'Latitude 5520', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(382, 16, 9, 'UDSM-CMP-0382', 'CMP-SN-00382', 'HP', 'OptiPlex 7090', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(383, 17, 10, 'UDSM-CMP-0383', 'CMP-SN-00383', 'Lenovo', 'ThinkCentre M720', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(384, 18, 8, 'UDSM-CMP-0384', 'CMP-SN-00384', 'Acer', 'ProBook 450 G8', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(385, 1, 7, 'UDSM-CMP-0385', 'CMP-SN-00385', 'ASUS', 'Aspire 5', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(386, 2, 9, 'UDSM-CMP-0386', 'CMP-SN-00386', 'Dell', 'Latitude 5520', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(387, 3, 10, 'UDSM-CMP-0387', 'CMP-SN-00387', 'HP', 'OptiPlex 7090', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(388, 5, 8, 'UDSM-CMP-0388', 'CMP-SN-00388', 'Lenovo', 'ThinkCentre M720', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(389, 6, 7, 'UDSM-CMP-0389', 'CMP-SN-00389', 'Acer', 'ProBook 450 G8', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(390, 7, 9, 'UDSM-CMP-0390', 'CMP-SN-00390', 'ASUS', 'Aspire 5', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(391, 8, 10, 'UDSM-CMP-0391', 'CMP-SN-00391', 'Dell', 'Latitude 5520', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(392, 9, 8, 'UDSM-CMP-0392', 'CMP-SN-00392', 'HP', 'OptiPlex 7090', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(393, 10, 7, 'UDSM-CMP-0393', 'CMP-SN-00393', 'Lenovo', 'ThinkCentre M720', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(394, 11, 9, 'UDSM-CMP-0394', 'CMP-SN-00394', 'Acer', 'ProBook 450 G8', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(395, 12, 10, 'UDSM-CMP-0395', 'CMP-SN-00395', 'ASUS', 'Aspire 5', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(396, 13, 8, 'UDSM-CMP-0396', 'CMP-SN-00396', 'Dell', 'Latitude 5520', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(397, 15, 7, 'UDSM-CMP-0397', 'CMP-SN-00397', 'HP', 'OptiPlex 7090', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(398, 16, 9, 'UDSM-CMP-0398', 'CMP-SN-00398', 'Lenovo', 'ThinkCentre M720', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(399, 17, 10, 'UDSM-CMP-0399', 'CMP-SN-00399', 'Acer', 'ProBook 450 G8', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(400, 18, 8, 'UDSM-CMP-0400', 'CMP-SN-00400', 'ASUS', 'Aspire 5', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(401, 1, 7, 'UDSM-CMP-0401', 'CMP-SN-00401', 'Dell', 'Latitude 5520', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(402, 2, 9, 'UDSM-CMP-0402', 'CMP-SN-00402', 'HP', 'OptiPlex 7090', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(403, 3, 10, 'UDSM-CMP-0403', 'CMP-SN-00403', 'Lenovo', 'ThinkCentre M720', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(404, 5, 8, 'UDSM-CMP-0404', 'CMP-SN-00404', 'Acer', 'ProBook 450 G8', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(405, 6, 7, 'UDSM-CMP-0405', 'CMP-SN-00405', 'ASUS', 'Aspire 5', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(406, 7, 9, 'UDSM-CMP-0406', 'CMP-SN-00406', 'Dell', 'Latitude 5520', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(407, 8, 10, 'UDSM-CMP-0407', 'CMP-SN-00407', 'HP', 'OptiPlex 7090', 2009, NULL, '2026-09-26', 'Library ICT workstation');
INSERT INTO `computer_set` (`computer_id`, `room_id`, `computer_type_id`, `inventory_barcode`, `serial_number`, `brand`, `model`, `status_id`, `purchase_date`, `date_added`, `remarks`) VALUES
(408, 9, 8, 'UDSM-CMP-0408', 'CMP-SN-00408', 'Lenovo', 'ThinkCentre M720', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(409, 10, 7, 'UDSM-CMP-0409', 'CMP-SN-00409', 'Acer', 'ProBook 450 G8', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(410, 11, 9, 'UDSM-CMP-0410', 'CMP-SN-00410', 'ASUS', 'Aspire 5', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(411, 12, 10, 'UDSM-CMP-0411', 'CMP-SN-00411', 'Dell', 'Latitude 5520', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(412, 13, 8, 'UDSM-CMP-0412', 'CMP-SN-00412', 'HP', 'OptiPlex 7090', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(413, 15, 7, 'UDSM-CMP-0413', 'CMP-SN-00413', 'Lenovo', 'ThinkCentre M720', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(414, 16, 9, 'UDSM-CMP-0414', 'CMP-SN-00414', 'Acer', 'ProBook 450 G8', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(415, 17, 10, 'UDSM-CMP-0415', 'CMP-SN-00415', 'ASUS', 'Aspire 5', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(416, 18, 8, 'UDSM-CMP-0416', 'CMP-SN-00416', 'Dell', 'Latitude 5520', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(417, 1, 7, 'UDSM-CMP-0417', 'CMP-SN-00417', 'HP', 'OptiPlex 7090', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(418, 2, 9, 'UDSM-CMP-0418', 'CMP-SN-00418', 'Lenovo', 'ThinkCentre M720', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(419, 3, 10, 'UDSM-CMP-0419', 'CMP-SN-00419', 'Acer', 'ProBook 450 G8', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(420, 5, 8, 'UDSM-CMP-0420', 'CMP-SN-00420', 'ASUS', 'Aspire 5', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(421, 6, 7, 'UDSM-CMP-0421', 'CMP-SN-00421', 'Dell', 'Latitude 5520', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(422, 7, 9, 'UDSM-CMP-0422', 'CMP-SN-00422', 'HP', 'OptiPlex 7090', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(423, 8, 10, 'UDSM-CMP-0423', 'CMP-SN-00423', 'Lenovo', 'ThinkCentre M720', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(424, 9, 8, 'UDSM-CMP-0424', 'CMP-SN-00424', 'Acer', 'ProBook 450 G8', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(425, 10, 7, 'UDSM-CMP-0425', 'CMP-SN-00425', 'ASUS', 'Aspire 5', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(426, 11, 9, 'UDSM-CMP-0426', 'CMP-SN-00426', 'Dell', 'Latitude 5520', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(427, 12, 10, 'UDSM-CMP-0427', 'CMP-SN-00427', 'HP', 'OptiPlex 7090', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(428, 13, 8, 'UDSM-CMP-0428', 'CMP-SN-00428', 'Lenovo', 'ThinkCentre M720', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(429, 15, 7, 'UDSM-CMP-0429', 'CMP-SN-00429', 'Acer', 'ProBook 450 G8', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(430, 16, 9, 'UDSM-CMP-0430', 'CMP-SN-00430', 'ASUS', 'Aspire 5', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(431, 17, 10, 'UDSM-CMP-0431', 'CMP-SN-00431', 'Dell', 'Latitude 5520', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(432, 18, 8, 'UDSM-CMP-0432', 'CMP-SN-00432', 'HP', 'OptiPlex 7090', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(433, 1, 7, 'UDSM-CMP-0433', 'CMP-SN-00433', 'Lenovo', 'ThinkCentre M720', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(434, 2, 9, 'UDSM-CMP-0434', 'CMP-SN-00434', 'Acer', 'ProBook 450 G8', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(435, 3, 10, 'UDSM-CMP-0435', 'CMP-SN-00435', 'ASUS', 'Aspire 5', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(436, 5, 8, 'UDSM-CMP-0436', 'CMP-SN-00436', 'Dell', 'Latitude 5520', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(437, 6, 7, 'UDSM-CMP-0437', 'CMP-SN-00437', 'HP', 'OptiPlex 7090', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(438, 7, 9, 'UDSM-CMP-0438', 'CMP-SN-00438', 'Lenovo', 'ThinkCentre M720', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(439, 8, 10, 'UDSM-CMP-0439', 'CMP-SN-00439', 'Acer', 'ProBook 450 G8', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(440, 9, 8, 'UDSM-CMP-0440', 'CMP-SN-00440', 'ASUS', 'Aspire 5', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(441, 10, 7, 'UDSM-CMP-0441', 'CMP-SN-00441', 'Dell', 'Latitude 5520', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(442, 11, 9, 'UDSM-CMP-0442', 'CMP-SN-00442', 'HP', 'OptiPlex 7090', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(443, 12, 10, 'UDSM-CMP-0443', 'CMP-SN-00443', 'Lenovo', 'ThinkCentre M720', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(444, 13, 8, 'UDSM-CMP-0444', 'CMP-SN-00444', 'Acer', 'ProBook 450 G8', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(445, 15, 7, 'UDSM-CMP-0445', 'CMP-SN-00445', 'ASUS', 'Aspire 5', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(446, 16, 9, 'UDSM-CMP-0446', 'CMP-SN-00446', 'Dell', 'Latitude 5520', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(447, 17, 10, 'UDSM-CMP-0447', 'CMP-SN-00447', 'HP', 'OptiPlex 7090', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(448, 18, 8, 'UDSM-CMP-0448', 'CMP-SN-00448', 'Lenovo', 'ThinkCentre M720', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(449, 1, 7, 'UDSM-CMP-0449', 'CMP-SN-00449', 'Acer', 'ProBook 450 G8', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(450, 2, 9, 'UDSM-CMP-0450', 'CMP-SN-00450', 'ASUS', 'Aspire 5', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(451, 3, 10, 'UDSM-CMP-0451', 'CMP-SN-00451', 'Dell', 'Latitude 5520', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(452, 5, 8, 'UDSM-CMP-0452', 'CMP-SN-00452', 'HP', 'OptiPlex 7090', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(453, 6, 7, 'UDSM-CMP-0453', 'CMP-SN-00453', 'Lenovo', 'ThinkCentre M720', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(454, 7, 9, 'UDSM-CMP-0454', 'CMP-SN-00454', 'Acer', 'ProBook 450 G8', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(455, 8, 10, 'UDSM-CMP-0455', 'CMP-SN-00455', 'ASUS', 'Aspire 5', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(456, 9, 8, 'UDSM-CMP-0456', 'CMP-SN-00456', 'Dell', 'Latitude 5520', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(457, 10, 7, 'UDSM-CMP-0457', 'CMP-SN-00457', 'HP', 'OptiPlex 7090', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(458, 11, 9, 'UDSM-CMP-0458', 'CMP-SN-00458', 'Lenovo', 'ThinkCentre M720', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(459, 12, 10, 'UDSM-CMP-0459', 'CMP-SN-00459', 'Acer', 'ProBook 450 G8', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(460, 13, 8, 'UDSM-CMP-0460', 'CMP-SN-00460', 'ASUS', 'Aspire 5', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(461, 15, 7, 'UDSM-CMP-0461', 'CMP-SN-00461', 'Dell', 'Latitude 5520', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(462, 16, 9, 'UDSM-CMP-0462', 'CMP-SN-00462', 'HP', 'OptiPlex 7090', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(463, 17, 10, 'UDSM-CMP-0463', 'CMP-SN-00463', 'Lenovo', 'ThinkCentre M720', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(464, 18, 8, 'UDSM-CMP-0464', 'CMP-SN-00464', 'Acer', 'ProBook 450 G8', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(465, 1, 7, 'UDSM-CMP-0465', 'CMP-SN-00465', 'ASUS', 'Aspire 5', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(466, 2, 9, 'UDSM-CMP-0466', 'CMP-SN-00466', 'Dell', 'Latitude 5520', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(467, 3, 10, 'UDSM-CMP-0467', 'CMP-SN-00467', 'HP', 'OptiPlex 7090', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(468, 5, 8, 'UDSM-CMP-0468', 'CMP-SN-00468', 'Lenovo', 'ThinkCentre M720', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(469, 6, 7, 'UDSM-CMP-0469', 'CMP-SN-00469', 'Acer', 'ProBook 450 G8', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(470, 7, 9, 'UDSM-CMP-0470', 'CMP-SN-00470', 'ASUS', 'Aspire 5', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(471, 8, 10, 'UDSM-CMP-0471', 'CMP-SN-00471', 'Dell', 'Latitude 5520', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(472, 9, 8, 'UDSM-CMP-0472', 'CMP-SN-00472', 'HP', 'OptiPlex 7090', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(473, 10, 7, 'UDSM-CMP-0473', 'CMP-SN-00473', 'Lenovo', 'ThinkCentre M720', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(474, 11, 9, 'UDSM-CMP-0474', 'CMP-SN-00474', 'Acer', 'ProBook 450 G8', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(475, 12, 10, 'UDSM-CMP-0475', 'CMP-SN-00475', 'ASUS', 'Aspire 5', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(476, 13, 8, 'UDSM-CMP-0476', 'CMP-SN-00476', 'Dell', 'Latitude 5520', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(477, 15, 7, 'UDSM-CMP-0477', 'CMP-SN-00477', 'HP', 'OptiPlex 7090', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(478, 16, 9, 'UDSM-CMP-0478', 'CMP-SN-00478', 'Lenovo', 'ThinkCentre M720', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(479, 17, 10, 'UDSM-CMP-0479', 'CMP-SN-00479', 'Acer', 'ProBook 450 G8', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(480, 18, 8, 'UDSM-CMP-0480', 'CMP-SN-00480', 'ASUS', 'Aspire 5', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(481, 1, 7, 'UDSM-CMP-0481', 'CMP-SN-00481', 'Dell', 'Latitude 5520', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(482, 2, 9, 'UDSM-CMP-0482', 'CMP-SN-00482', 'HP', 'OptiPlex 7090', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(483, 3, 10, 'UDSM-CMP-0483', 'CMP-SN-00483', 'Lenovo', 'ThinkCentre M720', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(484, 5, 8, 'UDSM-CMP-0484', 'CMP-SN-00484', 'Acer', 'ProBook 450 G8', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(485, 6, 7, 'UDSM-CMP-0485', 'CMP-SN-00485', 'ASUS', 'Aspire 5', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(486, 7, 9, 'UDSM-CMP-0486', 'CMP-SN-00486', 'Dell', 'Latitude 5520', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(487, 8, 10, 'UDSM-CMP-0487', 'CMP-SN-00487', 'HP', 'OptiPlex 7090', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(488, 9, 8, 'UDSM-CMP-0488', 'CMP-SN-00488', 'Lenovo', 'ThinkCentre M720', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(489, 10, 7, 'UDSM-CMP-0489', 'CMP-SN-00489', 'Acer', 'ProBook 450 G8', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(490, 11, 9, 'UDSM-CMP-0490', 'CMP-SN-00490', 'ASUS', 'Aspire 5', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(491, 12, 10, 'UDSM-CMP-0491', 'CMP-SN-00491', 'Dell', 'Latitude 5520', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(492, 13, 8, 'UDSM-CMP-0492', 'CMP-SN-00492', 'HP', 'OptiPlex 7090', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(493, 15, 7, 'UDSM-CMP-0493', 'CMP-SN-00493', 'Lenovo', 'ThinkCentre M720', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(494, 16, 9, 'UDSM-CMP-0494', 'CMP-SN-00494', 'Acer', 'ProBook 450 G8', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(495, 17, 10, 'UDSM-CMP-0495', 'CMP-SN-00495', 'ASUS', 'Aspire 5', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(496, 18, 8, 'UDSM-CMP-0496', 'CMP-SN-00496', 'Dell', 'Latitude 5520', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(497, 1, 7, 'UDSM-CMP-0497', 'CMP-SN-00497', 'HP', 'OptiPlex 7090', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(498, 2, 9, 'UDSM-CMP-0498', 'CMP-SN-00498', 'Lenovo', 'ThinkCentre M720', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(499, 3, 10, 'UDSM-CMP-0499', 'CMP-SN-00499', 'Acer', 'ProBook 450 G8', 2009, NULL, '2026-09-26', 'Library ICT workstation'),
(500, 5, 8, 'UDSM-CMP-0500', 'CMP-SN-00500', 'ASUS', 'Aspire 5', 2009, NULL, '2026-09-26', 'Library ICT workstation');

-- --------------------------------------------------------

--
-- Table structure for table `computer_type`
--

CREATE TABLE `computer_type` (
  `computer_type_id` int(11) NOT NULL,
  `type_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `computer_type`
--

INSERT INTO `computer_type` (`computer_type_id`, `type_name`) VALUES
(7, 'All in one(AIO)'),
(9, 'Desktop'),
(10, 'Laptop'),
(8, 'Thin client');

-- --------------------------------------------------------

--
-- Table structure for table `library`
--

CREATE TABLE `library` (
  `library_id` int(11) NOT NULL,
  `library_name` varchar(50) NOT NULL,
  `building_desc` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `library`
--

INSERT INTO `library` (`library_id`, `library_name`, `building_desc`) VALUES
(1, 'Old Library', 'Main Campus - Original Building'),
(2, 'New Library', 'Main Campus - New Wing'),
(3, 'AlexandriaDB', 'Egypt by the shore'),
(4, 'West Wing Library', 'Satellite campus - West Wing');

-- --------------------------------------------------------

--
-- Table structure for table `maintenance_log`
--

CREATE TABLE `maintenance_log` (
  `log_id` int(11) NOT NULL,
  `item_type` enum('Computer','Component','Printer') NOT NULL,
  `item_id` int(11) NOT NULL,
  `date_reported` date NOT NULL,
  `issue_description` varchar(255) DEFAULT NULL,
  `date_resolved` date DEFAULT NULL,
  `action_taken` varchar(255) DEFAULT NULL,
  `resolved_status_id` int(11) DEFAULT NULL,
  `reported_by_user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `maintenance_log`
--

INSERT INTO `maintenance_log` (`log_id`, `item_type`, `item_id`, `date_reported`, `issue_description`, `date_resolved`, `action_taken`, `resolved_status_id`, `reported_by_user_id`) VALUES
(1, 'Computer', 1, '2026-09-26', 'Not working', '2026-09-26', 'Repaired', 2009, 1),
(2, 'Component', 4, '2026-09-26', 'broken', '2026-09-27', 'Repaired', 2009, 2),
(3, 'Computer', 67, '2026-09-26', 'Dead', '2026-09-26', NULL, 2009, 2),
(4, 'Computer', 1, '2026-09-27', 'stolen', NULL, NULL, NULL, 8);

-- --------------------------------------------------------

--
-- Table structure for table `printer`
--

CREATE TABLE `printer` (
  `printer_id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `inventory_barcode` varchar(30) DEFAULT NULL,
  `serial_number` varchar(50) DEFAULT NULL,
  `brand` varchar(50) DEFAULT NULL,
  `model` varchar(50) DEFAULT NULL,
  `printer_type` varchar(30) DEFAULT NULL,
  `status_id` int(11) NOT NULL,
  `purchase_date` date DEFAULT NULL,
  `remarks` varchar(255) DEFAULT NULL
) ;

--
-- Dumping data for table `printer`
--

INSERT INTO `printer` (`printer_id`, `room_id`, `inventory_barcode`, `serial_number`, `brand`, `model`, `printer_type`, `status_id`, `purchase_date`, `remarks`) VALUES
(1, 1, 'UDSM-PRN-0001', 'PRN-SN-00001', 'HP', 'LaserJet Pro', 'Laser', 2009, NULL, 'Library ICT printer'),
(2, 2, 'UDSM-PRN-0002', 'PRN-SN-00002', 'Canon', 'imageCLASS', 'Inkjet', 2010, NULL, 'Library ICT printer'),
(3, 3, 'UDSM-PRN-0003', 'PRN-SN-00003', 'Epson', 'EcoTank', 'Multifunction', 2009, NULL, 'Library ICT printer'),
(4, 5, 'UDSM-PRN-0004', 'PRN-SN-00004', 'Brother', 'HL Series', 'Laser', 2010, NULL, 'Library ICT printer'),
(5, 6, 'UDSM-PRN-0005', 'PRN-SN-00005', 'Xerox', 'WorkCentre', 'Inkjet', 2009, NULL, 'Library ICT printer'),
(6, 7, 'UDSM-PRN-0006', 'PRN-SN-00006', 'HP', 'LaserJet Pro', 'Multifunction', 2010, NULL, 'Library ICT printer'),
(7, 8, 'UDSM-PRN-0007', 'PRN-SN-00007', 'Canon', 'imageCLASS', 'Laser', 2009, NULL, 'Library ICT printer'),
(8, 9, 'UDSM-PRN-0008', 'PRN-SN-00008', 'Epson', 'EcoTank', 'Inkjet', 2010, NULL, 'Library ICT printer'),
(9, 10, 'UDSM-PRN-0009', 'PRN-SN-00009', 'Brother', 'HL Series', 'Multifunction', 2009, NULL, 'Library ICT printer'),
(10, 11, 'UDSM-PRN-0010', 'PRN-SN-00010', 'Xerox', 'WorkCentre', 'Laser', 2010, NULL, 'Library ICT printer'),
(11, 12, 'UDSM-PRN-0011', 'PRN-SN-00011', 'HP', 'LaserJet Pro', 'Inkjet', 2009, NULL, 'Library ICT printer'),
(12, 13, 'UDSM-PRN-0012', 'PRN-SN-00012', 'Canon', 'imageCLASS', 'Multifunction', 2010, NULL, 'Library ICT printer'),
(13, 15, 'UDSM-PRN-0013', 'PRN-SN-00013', 'Epson', 'EcoTank', 'Laser', 2009, NULL, 'Library ICT printer'),
(14, 16, 'UDSM-PRN-0014', 'PRN-SN-00014', 'Brother', 'HL Series', 'Inkjet', 2010, NULL, 'Library ICT printer'),
(15, 17, 'UDSM-PRN-0015', 'PRN-SN-00015', 'Xerox', 'WorkCentre', 'Multifunction', 2009, NULL, 'Library ICT printer'),
(16, 18, 'UDSM-PRN-0016', 'PRN-SN-00016', 'HP', 'LaserJet Pro', 'Laser', 2010, NULL, 'Library ICT printer'),
(17, 1, 'UDSM-PRN-0017', 'PRN-SN-00017', 'Canon', 'imageCLASS', 'Inkjet', 2009, NULL, 'Library ICT printer'),
(18, 2, 'UDSM-PRN-0018', 'PRN-SN-00018', 'Epson', 'EcoTank', 'Multifunction', 2010, NULL, 'Library ICT printer'),
(19, 3, 'UDSM-PRN-0019', 'PRN-SN-00019', 'Brother', 'HL Series', 'Laser', 2009, NULL, 'Library ICT printer'),
(20, 5, 'UDSM-PRN-0020', 'PRN-SN-00020', 'Xerox', 'WorkCentre', 'Inkjet', 2010, NULL, 'Library ICT printer'),
(21, 6, 'UDSM-PRN-0021', 'PRN-SN-00021', 'HP', 'LaserJet Pro', 'Multifunction', 2009, NULL, 'Library ICT printer'),
(22, 7, 'UDSM-PRN-0022', 'PRN-SN-00022', 'Canon', 'imageCLASS', 'Laser', 2010, NULL, 'Library ICT printer'),
(23, 8, 'UDSM-PRN-0023', 'PRN-SN-00023', 'Epson', 'EcoTank', 'Inkjet', 2009, NULL, 'Library ICT printer'),
(24, 9, 'UDSM-PRN-0024', 'PRN-SN-00024', 'Brother', 'HL Series', 'Multifunction', 2010, NULL, 'Library ICT printer'),
(25, 10, 'UDSM-PRN-0025', 'PRN-SN-00025', 'Xerox', 'WorkCentre', 'Laser', 2009, NULL, 'Library ICT printer'),
(26, 11, 'UDSM-PRN-0026', 'PRN-SN-00026', 'HP', 'LaserJet Pro', 'Inkjet', 2010, NULL, 'Library ICT printer'),
(27, 12, 'UDSM-PRN-0027', 'PRN-SN-00027', 'Canon', 'imageCLASS', 'Multifunction', 2009, NULL, 'Library ICT printer'),
(28, 13, 'UDSM-PRN-0028', 'PRN-SN-00028', 'Epson', 'EcoTank', 'Laser', 2010, NULL, 'Library ICT printer'),
(29, 15, 'UDSM-PRN-0029', 'PRN-SN-00029', 'Brother', 'HL Series', 'Inkjet', 2009, NULL, 'Library ICT printer'),
(30, 16, 'UDSM-PRN-0030', 'PRN-SN-00030', 'Xerox', 'WorkCentre', 'Multifunction', 2010, NULL, 'Library ICT printer'),
(31, 17, 'UDSM-PRN-0031', 'PRN-SN-00031', 'HP', 'LaserJet Pro', 'Laser', 2009, NULL, 'Library ICT printer'),
(32, 18, 'UDSM-PRN-0032', 'PRN-SN-00032', 'Canon', 'imageCLASS', 'Inkjet', 2010, NULL, 'Library ICT printer'),
(33, 1, 'UDSM-PRN-0033', 'PRN-SN-00033', 'Epson', 'EcoTank', 'Multifunction', 2009, NULL, 'Library ICT printer'),
(34, 2, 'UDSM-PRN-0034', 'PRN-SN-00034', 'Brother', 'HL Series', 'Laser', 2010, NULL, 'Library ICT printer'),
(35, 3, 'UDSM-PRN-0035', 'PRN-SN-00035', 'Xerox', 'WorkCentre', 'Inkjet', 2009, NULL, 'Library ICT printer'),
(36, 5, 'UDSM-PRN-0036', 'PRN-SN-00036', 'HP', 'LaserJet Pro', 'Multifunction', 2010, NULL, 'Library ICT printer'),
(37, 6, 'UDSM-PRN-0037', 'PRN-SN-00037', 'Canon', 'imageCLASS', 'Laser', 2009, NULL, 'Library ICT printer'),
(38, 7, 'UDSM-PRN-0038', 'PRN-SN-00038', 'Epson', 'EcoTank', 'Inkjet', 2010, NULL, 'Library ICT printer'),
(39, 8, 'UDSM-PRN-0039', 'PRN-SN-00039', 'Brother', 'HL Series', 'Multifunction', 2009, NULL, 'Library ICT printer'),
(40, 9, 'UDSM-PRN-0040', 'PRN-SN-00040', 'Xerox', 'WorkCentre', 'Laser', 2010, NULL, 'Library ICT printer'),
(41, 10, 'UDSM-PRN-0041', 'PRN-SN-00041', 'HP', 'LaserJet Pro', 'Inkjet', 2009, NULL, 'Library ICT printer'),
(42, 11, 'UDSM-PRN-0042', 'PRN-SN-00042', 'Canon', 'imageCLASS', 'Multifunction', 2010, NULL, 'Library ICT printer'),
(43, 12, 'UDSM-PRN-0043', 'PRN-SN-00043', 'Epson', 'EcoTank', 'Laser', 2009, NULL, 'Library ICT printer'),
(44, 13, 'UDSM-PRN-0044', 'PRN-SN-00044', 'Brother', 'HL Series', 'Inkjet', 2010, NULL, 'Library ICT printer'),
(45, 15, 'UDSM-PRN-0045', 'PRN-SN-00045', 'Xerox', 'WorkCentre', 'Multifunction', 2009, NULL, 'Library ICT printer'),
(46, 16, 'UDSM-PRN-0046', 'PRN-SN-00046', 'HP', 'LaserJet Pro', 'Laser', 2010, NULL, 'Library ICT printer'),
(47, 17, 'UDSM-PRN-0047', 'PRN-SN-00047', 'Canon', 'imageCLASS', 'Inkjet', 2009, NULL, 'Library ICT printer'),
(48, 18, 'UDSM-PRN-0048', 'PRN-SN-00048', 'Epson', 'EcoTank', 'Multifunction', 2010, NULL, 'Library ICT printer'),
(49, 1, 'UDSM-PRN-0049', 'PRN-SN-00049', 'Brother', 'HL Series', 'Laser', 2009, NULL, 'Library ICT printer'),
(50, 2, 'UDSM-PRN-0050', 'PRN-SN-00050', 'Xerox', 'WorkCentre', 'Inkjet', 2010, NULL, 'Library ICT printer'),
(51, 3, 'UDSM-PRN-0051', 'PRN-SN-00051', 'HP', 'LaserJet Pro', 'Multifunction', 2009, NULL, 'Library ICT printer'),
(52, 5, 'UDSM-PRN-0052', 'PRN-SN-00052', 'Canon', 'imageCLASS', 'Laser', 2010, NULL, 'Library ICT printer'),
(53, 6, 'UDSM-PRN-0053', 'PRN-SN-00053', 'Epson', 'EcoTank', 'Inkjet', 2009, NULL, 'Library ICT printer'),
(54, 7, 'UDSM-PRN-0054', 'PRN-SN-00054', 'Brother', 'HL Series', 'Multifunction', 2010, NULL, 'Library ICT printer'),
(55, 8, 'UDSM-PRN-0055', 'PRN-SN-00055', 'Xerox', 'WorkCentre', 'Laser', 2009, NULL, 'Library ICT printer'),
(56, 9, 'UDSM-PRN-0056', 'PRN-SN-00056', 'HP', 'LaserJet Pro', 'Inkjet', 2010, NULL, 'Library ICT printer'),
(57, 10, 'UDSM-PRN-0057', 'PRN-SN-00057', 'Canon', 'imageCLASS', 'Multifunction', 2009, NULL, 'Library ICT printer'),
(58, 11, 'UDSM-PRN-0058', 'PRN-SN-00058', 'Epson', 'EcoTank', 'Laser', 2010, NULL, 'Library ICT printer'),
(59, 12, 'UDSM-PRN-0059', 'PRN-SN-00059', 'Brother', 'HL Series', 'Inkjet', 2009, NULL, 'Library ICT printer'),
(60, 13, 'UDSM-PRN-0060', 'PRN-SN-00060', 'Xerox', 'WorkCentre', 'Multifunction', 2010, NULL, 'Library ICT printer'),
(61, 15, 'UDSM-PRN-0061', 'PRN-SN-00061', 'HP', 'LaserJet Pro', 'Laser', 2009, NULL, 'Library ICT printer'),
(62, 16, 'UDSM-PRN-0062', 'PRN-SN-00062', 'Canon', 'imageCLASS', 'Inkjet', 2010, NULL, 'Library ICT printer'),
(63, 17, 'UDSM-PRN-0063', 'PRN-SN-00063', 'Epson', 'EcoTank', 'Multifunction', 2009, NULL, 'Library ICT printer'),
(64, 18, 'UDSM-PRN-0064', 'PRN-SN-00064', 'Brother', 'HL Series', 'Laser', 2010, NULL, 'Library ICT printer'),
(65, 1, 'UDSM-PRN-0065', 'PRN-SN-00065', 'Xerox', 'WorkCentre', 'Inkjet', 2009, NULL, 'Library ICT printer'),
(66, 2, 'UDSM-PRN-0066', 'PRN-SN-00066', 'HP', 'LaserJet Pro', 'Multifunction', 2010, NULL, 'Library ICT printer'),
(67, 3, 'UDSM-PRN-0067', 'PRN-SN-00067', 'Canon', 'imageCLASS', 'Laser', 2009, NULL, 'Library ICT printer'),
(68, 5, 'UDSM-PRN-0068', 'PRN-SN-00068', 'Epson', 'EcoTank', 'Inkjet', 2010, NULL, 'Library ICT printer'),
(69, 6, 'UDSM-PRN-0069', 'PRN-SN-00069', 'Brother', 'HL Series', 'Multifunction', 2009, NULL, 'Library ICT printer'),
(70, 7, 'UDSM-PRN-0070', 'PRN-SN-00070', 'Xerox', 'WorkCentre', 'Laser', 2010, NULL, 'Library ICT printer'),
(71, 8, 'UDSM-PRN-0071', 'PRN-SN-00071', 'HP', 'LaserJet Pro', 'Inkjet', 2009, NULL, 'Library ICT printer'),
(72, 9, 'UDSM-PRN-0072', 'PRN-SN-00072', 'Canon', 'imageCLASS', 'Multifunction', 2010, NULL, 'Library ICT printer'),
(73, 10, 'UDSM-PRN-0073', 'PRN-SN-00073', 'Epson', 'EcoTank', 'Laser', 2009, NULL, 'Library ICT printer'),
(74, 11, 'UDSM-PRN-0074', 'PRN-SN-00074', 'Brother', 'HL Series', 'Inkjet', 2010, NULL, 'Library ICT printer'),
(75, 12, 'UDSM-PRN-0075', 'PRN-SN-00075', 'Xerox', 'WorkCentre', 'Multifunction', 2009, NULL, 'Library ICT printer'),
(76, 13, 'UDSM-PRN-0076', 'PRN-SN-00076', 'HP', 'LaserJet Pro', 'Laser', 2010, NULL, 'Library ICT printer'),
(77, 15, 'UDSM-PRN-0077', 'PRN-SN-00077', 'Canon', 'imageCLASS', 'Inkjet', 2009, NULL, 'Library ICT printer'),
(78, 16, 'UDSM-PRN-0078', 'PRN-SN-00078', 'Epson', 'EcoTank', 'Multifunction', 2010, NULL, 'Library ICT printer'),
(79, 17, 'UDSM-PRN-0079', 'PRN-SN-00079', 'Brother', 'HL Series', 'Laser', 2009, NULL, 'Library ICT printer'),
(80, 18, 'UDSM-PRN-0080', 'PRN-SN-00080', 'Xerox', 'WorkCentre', 'Inkjet', 2010, NULL, 'Library ICT printer'),
(81, 1, 'UDSM-PRN-0081', 'PRN-SN-00081', 'HP', 'LaserJet Pro', 'Multifunction', 2009, NULL, 'Library ICT printer'),
(82, 2, 'UDSM-PRN-0082', 'PRN-SN-00082', 'Canon', 'imageCLASS', 'Laser', 2010, NULL, 'Library ICT printer'),
(83, 3, 'UDSM-PRN-0083', 'PRN-SN-00083', 'Epson', 'EcoTank', 'Inkjet', 2009, NULL, 'Library ICT printer'),
(84, 5, 'UDSM-PRN-0084', 'PRN-SN-00084', 'Brother', 'HL Series', 'Multifunction', 2010, NULL, 'Library ICT printer'),
(85, 6, 'UDSM-PRN-0085', 'PRN-SN-00085', 'Xerox', 'WorkCentre', 'Laser', 2009, NULL, 'Library ICT printer'),
(86, 7, 'UDSM-PRN-0086', 'PRN-SN-00086', 'HP', 'LaserJet Pro', 'Inkjet', 2010, NULL, 'Library ICT printer'),
(87, 8, 'UDSM-PRN-0087', 'PRN-SN-00087', 'Canon', 'imageCLASS', 'Multifunction', 2009, NULL, 'Library ICT printer'),
(88, 9, 'UDSM-PRN-0088', 'PRN-SN-00088', 'Epson', 'EcoTank', 'Laser', 2010, NULL, 'Library ICT printer'),
(89, 10, 'UDSM-PRN-0089', 'PRN-SN-00089', 'Brother', 'HL Series', 'Inkjet', 2009, NULL, 'Library ICT printer'),
(90, 11, 'UDSM-PRN-0090', 'PRN-SN-00090', 'Xerox', 'WorkCentre', 'Multifunction', 2010, NULL, 'Library ICT printer'),
(91, 12, 'UDSM-PRN-0091', 'PRN-SN-00091', 'HP', 'LaserJet Pro', 'Laser', 2009, NULL, 'Library ICT printer'),
(92, 13, 'UDSM-PRN-0092', 'PRN-SN-00092', 'Canon', 'imageCLASS', 'Inkjet', 2010, NULL, 'Library ICT printer'),
(93, 15, 'UDSM-PRN-0093', 'PRN-SN-00093', 'Epson', 'EcoTank', 'Multifunction', 2009, NULL, 'Library ICT printer'),
(94, 16, 'UDSM-PRN-0094', 'PRN-SN-00094', 'Brother', 'HL Series', 'Laser', 2010, NULL, 'Library ICT printer'),
(95, 17, 'UDSM-PRN-0095', 'PRN-SN-00095', 'Xerox', 'WorkCentre', 'Inkjet', 2009, NULL, 'Library ICT printer'),
(96, 18, 'UDSM-PRN-0096', 'PRN-SN-00096', 'HP', 'LaserJet Pro', 'Multifunction', 2010, NULL, 'Library ICT printer'),
(97, 1, 'UDSM-PRN-0097', 'PRN-SN-00097', 'Canon', 'imageCLASS', 'Laser', 2009, NULL, 'Library ICT printer'),
(98, 2, 'UDSM-PRN-0098', 'PRN-SN-00098', 'Epson', 'EcoTank', 'Inkjet', 2010, NULL, 'Library ICT printer'),
(99, 3, 'UDSM-PRN-0099', 'PRN-SN-00099', 'Brother', 'HL Series', 'Multifunction', 2009, NULL, 'Library ICT printer'),
(100, 5, 'UDSM-PRN-0100', 'PRN-SN-00100', 'Xerox', 'WorkCentre', 'Laser', 2010, NULL, 'Library ICT printer'),
(101, 6, 'UDSM-PRN-0101', 'PRN-SN-00101', 'HP', 'LaserJet Pro', 'Inkjet', 2009, NULL, 'Library ICT printer'),
(102, 7, 'UDSM-PRN-0102', 'PRN-SN-00102', 'Canon', 'imageCLASS', 'Multifunction', 2010, NULL, 'Library ICT printer'),
(103, 8, 'UDSM-PRN-0103', 'PRN-SN-00103', 'Epson', 'EcoTank', 'Laser', 2009, NULL, 'Library ICT printer'),
(104, 9, 'UDSM-PRN-0104', 'PRN-SN-00104', 'Brother', 'HL Series', 'Inkjet', 2010, NULL, 'Library ICT printer'),
(105, 10, 'UDSM-PRN-0105', 'PRN-SN-00105', 'Xerox', 'WorkCentre', 'Multifunction', 2009, NULL, 'Library ICT printer'),
(106, 11, 'UDSM-PRN-0106', 'PRN-SN-00106', 'HP', 'LaserJet Pro', 'Laser', 2010, NULL, 'Library ICT printer'),
(107, 12, 'UDSM-PRN-0107', 'PRN-SN-00107', 'Canon', 'imageCLASS', 'Inkjet', 2009, NULL, 'Library ICT printer'),
(108, 13, 'UDSM-PRN-0108', 'PRN-SN-00108', 'Epson', 'EcoTank', 'Multifunction', 2010, NULL, 'Library ICT printer'),
(109, 15, 'UDSM-PRN-0109', 'PRN-SN-00109', 'Brother', 'HL Series', 'Laser', 2009, NULL, 'Library ICT printer'),
(110, 16, 'UDSM-PRN-0110', 'PRN-SN-00110', 'Xerox', 'WorkCentre', 'Inkjet', 2010, NULL, 'Library ICT printer'),
(111, 17, 'UDSM-PRN-0111', 'PRN-SN-00111', 'HP', 'LaserJet Pro', 'Multifunction', 2009, NULL, 'Library ICT printer'),
(112, 18, 'UDSM-PRN-0112', 'PRN-SN-00112', 'Canon', 'imageCLASS', 'Laser', 2010, NULL, 'Library ICT printer'),
(113, 1, 'UDSM-PRN-0113', 'PRN-SN-00113', 'Epson', 'EcoTank', 'Inkjet', 2009, NULL, 'Library ICT printer'),
(114, 2, 'UDSM-PRN-0114', 'PRN-SN-00114', 'Brother', 'HL Series', 'Multifunction', 2010, NULL, 'Library ICT printer'),
(115, 3, 'UDSM-PRN-0115', 'PRN-SN-00115', 'Xerox', 'WorkCentre', 'Laser', 2009, NULL, 'Library ICT printer'),
(116, 5, 'UDSM-PRN-0116', 'PRN-SN-00116', 'HP', 'LaserJet Pro', 'Inkjet', 2010, NULL, 'Library ICT printer'),
(117, 6, 'UDSM-PRN-0117', 'PRN-SN-00117', 'Canon', 'imageCLASS', 'Multifunction', 2009, NULL, 'Library ICT printer'),
(118, 7, 'UDSM-PRN-0118', 'PRN-SN-00118', 'Epson', 'EcoTank', 'Laser', 2010, NULL, 'Library ICT printer'),
(119, 8, 'UDSM-PRN-0119', 'PRN-SN-00119', 'Brother', 'HL Series', 'Inkjet', 2009, NULL, 'Library ICT printer'),
(120, 9, 'UDSM-PRN-0120', 'PRN-SN-00120', 'Xerox', 'WorkCentre', 'Multifunction', 2010, NULL, 'Library ICT printer'),
(121, 10, 'UDSM-PRN-0121', 'PRN-SN-00121', 'HP', 'LaserJet Pro', 'Laser', 2009, NULL, 'Library ICT printer'),
(122, 11, 'UDSM-PRN-0122', 'PRN-SN-00122', 'Canon', 'imageCLASS', 'Inkjet', 2010, NULL, 'Library ICT printer'),
(123, 12, 'UDSM-PRN-0123', 'PRN-SN-00123', 'Epson', 'EcoTank', 'Multifunction', 2009, NULL, 'Library ICT printer'),
(124, 13, 'UDSM-PRN-0124', 'PRN-SN-00124', 'Brother', 'HL Series', 'Laser', 2010, NULL, 'Library ICT printer'),
(125, 15, 'UDSM-PRN-0125', 'PRN-SN-00125', 'Xerox', 'WorkCentre', 'Inkjet', 2009, NULL, 'Library ICT printer'),
(126, 16, 'UDSM-PRN-0126', 'PRN-SN-00126', 'HP', 'LaserJet Pro', 'Multifunction', 2010, NULL, 'Library ICT printer'),
(127, 17, 'UDSM-PRN-0127', 'PRN-SN-00127', 'Canon', 'imageCLASS', 'Laser', 2009, NULL, 'Library ICT printer'),
(128, 18, 'UDSM-PRN-0128', 'PRN-SN-00128', 'Epson', 'EcoTank', 'Inkjet', 2010, NULL, 'Library ICT printer'),
(129, 1, 'UDSM-PRN-0129', 'PRN-SN-00129', 'Brother', 'HL Series', 'Multifunction', 2009, NULL, 'Library ICT printer'),
(130, 2, 'UDSM-PRN-0130', 'PRN-SN-00130', 'Xerox', 'WorkCentre', 'Laser', 2010, NULL, 'Library ICT printer'),
(131, 3, 'UDSM-PRN-0131', 'PRN-SN-00131', 'HP', 'LaserJet Pro', 'Inkjet', 2009, NULL, 'Library ICT printer'),
(132, 5, 'UDSM-PRN-0132', 'PRN-SN-00132', 'Canon', 'imageCLASS', 'Multifunction', 2010, NULL, 'Library ICT printer'),
(133, 6, 'UDSM-PRN-0133', 'PRN-SN-00133', 'Epson', 'EcoTank', 'Laser', 2009, NULL, 'Library ICT printer'),
(134, 7, 'UDSM-PRN-0134', 'PRN-SN-00134', 'Brother', 'HL Series', 'Inkjet', 2010, NULL, 'Library ICT printer'),
(135, 8, 'UDSM-PRN-0135', 'PRN-SN-00135', 'Xerox', 'WorkCentre', 'Multifunction', 2009, NULL, 'Library ICT printer'),
(136, 9, 'UDSM-PRN-0136', 'PRN-SN-00136', 'HP', 'LaserJet Pro', 'Laser', 2010, NULL, 'Library ICT printer'),
(137, 10, 'UDSM-PRN-0137', 'PRN-SN-00137', 'Canon', 'imageCLASS', 'Inkjet', 2009, NULL, 'Library ICT printer'),
(138, 11, 'UDSM-PRN-0138', 'PRN-SN-00138', 'Epson', 'EcoTank', 'Multifunction', 2010, NULL, 'Library ICT printer'),
(139, 12, 'UDSM-PRN-0139', 'PRN-SN-00139', 'Brother', 'HL Series', 'Laser', 2009, NULL, 'Library ICT printer'),
(140, 13, 'UDSM-PRN-0140', 'PRN-SN-00140', 'Xerox', 'WorkCentre', 'Inkjet', 2010, NULL, 'Library ICT printer'),
(141, 15, 'UDSM-PRN-0141', 'PRN-SN-00141', 'HP', 'LaserJet Pro', 'Multifunction', 2009, NULL, 'Library ICT printer'),
(142, 16, 'UDSM-PRN-0142', 'PRN-SN-00142', 'Canon', 'imageCLASS', 'Laser', 2010, NULL, 'Library ICT printer'),
(143, 17, 'UDSM-PRN-0143', 'PRN-SN-00143', 'Epson', 'EcoTank', 'Inkjet', 2009, NULL, 'Library ICT printer'),
(144, 18, 'UDSM-PRN-0144', 'PRN-SN-00144', 'Brother', 'HL Series', 'Multifunction', 2010, NULL, 'Library ICT printer'),
(145, 1, 'UDSM-PRN-0145', 'PRN-SN-00145', 'Xerox', 'WorkCentre', 'Laser', 2009, NULL, 'Library ICT printer'),
(146, 2, 'UDSM-PRN-0146', 'PRN-SN-00146', 'HP', 'LaserJet Pro', 'Inkjet', 2010, NULL, 'Library ICT printer'),
(147, 3, 'UDSM-PRN-0147', 'PRN-SN-00147', 'Canon', 'imageCLASS', 'Multifunction', 2009, NULL, 'Library ICT printer'),
(148, 5, 'UDSM-PRN-0148', 'PRN-SN-00148', 'Epson', 'EcoTank', 'Laser', 2010, NULL, 'Library ICT printer'),
(149, 6, 'UDSM-PRN-0149', 'PRN-SN-00149', 'Brother', 'HL Series', 'Inkjet', 2009, NULL, 'Library ICT printer'),
(150, 7, 'UDSM-PRN-0150', 'PRN-SN-00150', 'Xerox', 'WorkCentre', 'Multifunction', 2010, NULL, 'Library ICT printer'),
(151, 8, 'UDSM-PRN-0151', 'PRN-SN-00151', 'HP', 'LaserJet Pro', 'Laser', 2009, NULL, 'Library ICT printer'),
(152, 9, 'UDSM-PRN-0152', 'PRN-SN-00152', 'Canon', 'imageCLASS', 'Inkjet', 2010, NULL, 'Library ICT printer'),
(153, 10, 'UDSM-PRN-0153', 'PRN-SN-00153', 'Epson', 'EcoTank', 'Multifunction', 2009, NULL, 'Library ICT printer'),
(154, 11, 'UDSM-PRN-0154', 'PRN-SN-00154', 'Brother', 'HL Series', 'Laser', 2010, NULL, 'Library ICT printer'),
(155, 12, 'UDSM-PRN-0155', 'PRN-SN-00155', 'Xerox', 'WorkCentre', 'Inkjet', 2009, NULL, 'Library ICT printer'),
(156, 13, 'UDSM-PRN-0156', 'PRN-SN-00156', 'HP', 'LaserJet Pro', 'Multifunction', 2010, NULL, 'Library ICT printer'),
(157, 15, 'UDSM-PRN-0157', 'PRN-SN-00157', 'Canon', 'imageCLASS', 'Laser', 2009, NULL, 'Library ICT printer'),
(158, 16, 'UDSM-PRN-0158', 'PRN-SN-00158', 'Epson', 'EcoTank', 'Inkjet', 2010, NULL, 'Library ICT printer'),
(159, 17, 'UDSM-PRN-0159', 'PRN-SN-00159', 'Brother', 'HL Series', 'Multifunction', 2009, NULL, 'Library ICT printer'),
(160, 18, 'UDSM-PRN-0160', 'PRN-SN-00160', 'Xerox', 'WorkCentre', 'Laser', 2010, NULL, 'Library ICT printer'),
(161, 1, 'UDSM-PRN-0161', 'PRN-SN-00161', 'HP', 'LaserJet Pro', 'Inkjet', 2009, NULL, 'Library ICT printer'),
(162, 2, 'UDSM-PRN-0162', 'PRN-SN-00162', 'Canon', 'imageCLASS', 'Multifunction', 2010, NULL, 'Library ICT printer'),
(163, 3, 'UDSM-PRN-0163', 'PRN-SN-00163', 'Epson', 'EcoTank', 'Laser', 2009, NULL, 'Library ICT printer'),
(164, 5, 'UDSM-PRN-0164', 'PRN-SN-00164', 'Brother', 'HL Series', 'Inkjet', 2010, NULL, 'Library ICT printer'),
(165, 6, 'UDSM-PRN-0165', 'PRN-SN-00165', 'Xerox', 'WorkCentre', 'Multifunction', 2009, NULL, 'Library ICT printer'),
(166, 7, 'UDSM-PRN-0166', 'PRN-SN-00166', 'HP', 'LaserJet Pro', 'Laser', 2010, NULL, 'Library ICT printer'),
(167, 8, 'UDSM-PRN-0167', 'PRN-SN-00167', 'Canon', 'imageCLASS', 'Inkjet', 2009, NULL, 'Library ICT printer'),
(168, 9, 'UDSM-PRN-0168', 'PRN-SN-00168', 'Epson', 'EcoTank', 'Multifunction', 2010, NULL, 'Library ICT printer'),
(169, 10, 'UDSM-PRN-0169', 'PRN-SN-00169', 'Brother', 'HL Series', 'Laser', 2009, NULL, 'Library ICT printer'),
(170, 11, 'UDSM-PRN-0170', 'PRN-SN-00170', 'Xerox', 'WorkCentre', 'Inkjet', 2010, NULL, 'Library ICT printer'),
(171, 12, 'UDSM-PRN-0171', 'PRN-SN-00171', 'HP', 'LaserJet Pro', 'Multifunction', 2009, NULL, 'Library ICT printer'),
(172, 13, 'UDSM-PRN-0172', 'PRN-SN-00172', 'Canon', 'imageCLASS', 'Laser', 2010, NULL, 'Library ICT printer'),
(173, 15, 'UDSM-PRN-0173', 'PRN-SN-00173', 'Epson', 'EcoTank', 'Inkjet', 2009, NULL, 'Library ICT printer'),
(174, 16, 'UDSM-PRN-0174', 'PRN-SN-00174', 'Brother', 'HL Series', 'Multifunction', 2010, NULL, 'Library ICT printer'),
(175, 17, 'UDSM-PRN-0175', 'PRN-SN-00175', 'Xerox', 'WorkCentre', 'Laser', 2009, NULL, 'Library ICT printer'),
(176, 18, 'UDSM-PRN-0176', 'PRN-SN-00176', 'HP', 'LaserJet Pro', 'Inkjet', 2010, NULL, 'Library ICT printer'),
(177, 1, 'UDSM-PRN-0177', 'PRN-SN-00177', 'Canon', 'imageCLASS', 'Multifunction', 2009, NULL, 'Library ICT printer'),
(178, 2, 'UDSM-PRN-0178', 'PRN-SN-00178', 'Epson', 'EcoTank', 'Laser', 2010, NULL, 'Library ICT printer'),
(179, 3, 'UDSM-PRN-0179', 'PRN-SN-00179', 'Brother', 'HL Series', 'Inkjet', 2009, NULL, 'Library ICT printer'),
(180, 5, 'UDSM-PRN-0180', 'PRN-SN-00180', 'Xerox', 'WorkCentre', 'Multifunction', 2010, NULL, 'Library ICT printer'),
(181, 6, 'UDSM-PRN-0181', 'PRN-SN-00181', 'HP', 'LaserJet Pro', 'Laser', 2009, NULL, 'Library ICT printer'),
(182, 7, 'UDSM-PRN-0182', 'PRN-SN-00182', 'Canon', 'imageCLASS', 'Inkjet', 2010, NULL, 'Library ICT printer'),
(183, 8, 'UDSM-PRN-0183', 'PRN-SN-00183', 'Epson', 'EcoTank', 'Multifunction', 2009, NULL, 'Library ICT printer'),
(184, 9, 'UDSM-PRN-0184', 'PRN-SN-00184', 'Brother', 'HL Series', 'Laser', 2010, NULL, 'Library ICT printer'),
(185, 10, 'UDSM-PRN-0185', 'PRN-SN-00185', 'Xerox', 'WorkCentre', 'Inkjet', 2009, NULL, 'Library ICT printer'),
(186, 11, 'UDSM-PRN-0186', 'PRN-SN-00186', 'HP', 'LaserJet Pro', 'Multifunction', 2010, NULL, 'Library ICT printer'),
(187, 12, 'UDSM-PRN-0187', 'PRN-SN-00187', 'Canon', 'imageCLASS', 'Laser', 2009, NULL, 'Library ICT printer'),
(188, 13, 'UDSM-PRN-0188', 'PRN-SN-00188', 'Epson', 'EcoTank', 'Inkjet', 2010, NULL, 'Library ICT printer'),
(189, 15, 'UDSM-PRN-0189', 'PRN-SN-00189', 'Brother', 'HL Series', 'Multifunction', 2009, NULL, 'Library ICT printer'),
(190, 16, 'UDSM-PRN-0190', 'PRN-SN-00190', 'Xerox', 'WorkCentre', 'Laser', 2010, NULL, 'Library ICT printer'),
(191, 17, 'UDSM-PRN-0191', 'PRN-SN-00191', 'HP', 'LaserJet Pro', 'Inkjet', 2009, NULL, 'Library ICT printer'),
(192, 18, 'UDSM-PRN-0192', 'PRN-SN-00192', 'Canon', 'imageCLASS', 'Multifunction', 2010, NULL, 'Library ICT printer'),
(193, 1, 'UDSM-PRN-0193', 'PRN-SN-00193', 'Epson', 'EcoTank', 'Laser', 2009, NULL, 'Library ICT printer'),
(194, 2, 'UDSM-PRN-0194', 'PRN-SN-00194', 'Brother', 'HL Series', 'Inkjet', 2010, NULL, 'Library ICT printer'),
(195, 3, 'UDSM-PRN-0195', 'PRN-SN-00195', 'Xerox', 'WorkCentre', 'Multifunction', 2009, NULL, 'Library ICT printer'),
(196, 5, 'UDSM-PRN-0196', 'PRN-SN-00196', 'HP', 'LaserJet Pro', 'Laser', 2010, NULL, 'Library ICT printer'),
(197, 6, 'UDSM-PRN-0197', 'PRN-SN-00197', 'Canon', 'imageCLASS', 'Inkjet', 2009, NULL, 'Library ICT printer'),
(198, 7, 'UDSM-PRN-0198', 'PRN-SN-00198', 'Epson', 'EcoTank', 'Multifunction', 2010, NULL, 'Library ICT printer'),
(199, 8, 'UDSM-PRN-0199', 'PRN-SN-00199', 'Brother', 'HL Series', 'Laser', 2009, NULL, 'Library ICT printer'),
(200, 9, 'UDSM-PRN-0200', 'PRN-SN-00200', 'Xerox', 'WorkCentre', 'Inkjet', 2010, NULL, 'Library ICT printer'),
(201, 10, 'UDSM-PRN-0201', 'PRN-SN-00201', 'HP', 'LaserJet Pro', 'Multifunction', 2009, NULL, 'Library ICT printer'),
(202, 11, 'UDSM-PRN-0202', 'PRN-SN-00202', 'Canon', 'imageCLASS', 'Laser', 2010, NULL, 'Library ICT printer'),
(203, 12, 'UDSM-PRN-0203', 'PRN-SN-00203', 'Epson', 'EcoTank', 'Inkjet', 2009, NULL, 'Library ICT printer'),
(204, 13, 'UDSM-PRN-0204', 'PRN-SN-00204', 'Brother', 'HL Series', 'Multifunction', 2010, NULL, 'Library ICT printer'),
(205, 15, 'UDSM-PRN-0205', 'PRN-SN-00205', 'Xerox', 'WorkCentre', 'Laser', 2009, NULL, 'Library ICT printer'),
(206, 16, 'UDSM-PRN-0206', 'PRN-SN-00206', 'HP', 'LaserJet Pro', 'Inkjet', 2010, NULL, 'Library ICT printer'),
(207, 17, 'UDSM-PRN-0207', 'PRN-SN-00207', 'Canon', 'imageCLASS', 'Multifunction', 2009, NULL, 'Library ICT printer'),
(208, 18, 'UDSM-PRN-0208', 'PRN-SN-00208', 'Epson', 'EcoTank', 'Laser', 2010, NULL, 'Library ICT printer'),
(209, 1, 'UDSM-PRN-0209', 'PRN-SN-00209', 'Brother', 'HL Series', 'Inkjet', 2009, NULL, 'Library ICT printer'),
(210, 2, 'UDSM-PRN-0210', 'PRN-SN-00210', 'Xerox', 'WorkCentre', 'Multifunction', 2010, NULL, 'Library ICT printer'),
(211, 3, 'UDSM-PRN-0211', 'PRN-SN-00211', 'HP', 'LaserJet Pro', 'Laser', 2009, NULL, 'Library ICT printer'),
(212, 5, 'UDSM-PRN-0212', 'PRN-SN-00212', 'Canon', 'imageCLASS', 'Inkjet', 2010, NULL, 'Library ICT printer'),
(213, 6, 'UDSM-PRN-0213', 'PRN-SN-00213', 'Epson', 'EcoTank', 'Multifunction', 2009, NULL, 'Library ICT printer'),
(214, 7, 'UDSM-PRN-0214', 'PRN-SN-00214', 'Brother', 'HL Series', 'Laser', 2010, NULL, 'Library ICT printer'),
(215, 8, 'UDSM-PRN-0215', 'PRN-SN-00215', 'Xerox', 'WorkCentre', 'Inkjet', 2009, NULL, 'Library ICT printer'),
(216, 9, 'UDSM-PRN-0216', 'PRN-SN-00216', 'HP', 'LaserJet Pro', 'Multifunction', 2010, NULL, 'Library ICT printer'),
(217, 10, 'UDSM-PRN-0217', 'PRN-SN-00217', 'Canon', 'imageCLASS', 'Laser', 2009, NULL, 'Library ICT printer'),
(218, 11, 'UDSM-PRN-0218', 'PRN-SN-00218', 'Epson', 'EcoTank', 'Inkjet', 2010, NULL, 'Library ICT printer'),
(219, 12, 'UDSM-PRN-0219', 'PRN-SN-00219', 'Brother', 'HL Series', 'Multifunction', 2009, NULL, 'Library ICT printer'),
(220, 13, 'UDSM-PRN-0220', 'PRN-SN-00220', 'Xerox', 'WorkCentre', 'Laser', 2010, NULL, 'Library ICT printer'),
(221, 15, 'UDSM-PRN-0221', 'PRN-SN-00221', 'HP', 'LaserJet Pro', 'Inkjet', 2009, NULL, 'Library ICT printer'),
(222, 16, 'UDSM-PRN-0222', 'PRN-SN-00222', 'Canon', 'imageCLASS', 'Multifunction', 2010, NULL, 'Library ICT printer'),
(223, 17, 'UDSM-PRN-0223', 'PRN-SN-00223', 'Epson', 'EcoTank', 'Laser', 2009, NULL, 'Library ICT printer'),
(224, 18, 'UDSM-PRN-0224', 'PRN-SN-00224', 'Brother', 'HL Series', 'Inkjet', 2010, NULL, 'Library ICT printer'),
(225, 1, 'UDSM-PRN-0225', 'PRN-SN-00225', 'Xerox', 'WorkCentre', 'Multifunction', 2009, NULL, 'Library ICT printer'),
(226, 2, 'UDSM-PRN-0226', 'PRN-SN-00226', 'HP', 'LaserJet Pro', 'Laser', 2010, NULL, 'Library ICT printer'),
(227, 3, 'UDSM-PRN-0227', 'PRN-SN-00227', 'Canon', 'imageCLASS', 'Inkjet', 2009, NULL, 'Library ICT printer'),
(228, 5, 'UDSM-PRN-0228', 'PRN-SN-00228', 'Epson', 'EcoTank', 'Multifunction', 2010, NULL, 'Library ICT printer'),
(229, 6, 'UDSM-PRN-0229', 'PRN-SN-00229', 'Brother', 'HL Series', 'Laser', 2009, NULL, 'Library ICT printer'),
(230, 7, 'UDSM-PRN-0230', 'PRN-SN-00230', 'Xerox', 'WorkCentre', 'Inkjet', 2010, NULL, 'Library ICT printer'),
(231, 8, 'UDSM-PRN-0231', 'PRN-SN-00231', 'HP', 'LaserJet Pro', 'Multifunction', 2009, NULL, 'Library ICT printer'),
(232, 9, 'UDSM-PRN-0232', 'PRN-SN-00232', 'Canon', 'imageCLASS', 'Laser', 2010, NULL, 'Library ICT printer'),
(233, 10, 'UDSM-PRN-0233', 'PRN-SN-00233', 'Epson', 'EcoTank', 'Inkjet', 2009, NULL, 'Library ICT printer'),
(234, 11, 'UDSM-PRN-0234', 'PRN-SN-00234', 'Brother', 'HL Series', 'Multifunction', 2010, NULL, 'Library ICT printer'),
(235, 12, 'UDSM-PRN-0235', 'PRN-SN-00235', 'Xerox', 'WorkCentre', 'Laser', 2009, NULL, 'Library ICT printer'),
(236, 13, 'UDSM-PRN-0236', 'PRN-SN-00236', 'HP', 'LaserJet Pro', 'Inkjet', 2010, NULL, 'Library ICT printer'),
(237, 15, 'UDSM-PRN-0237', 'PRN-SN-00237', 'Canon', 'imageCLASS', 'Multifunction', 2009, NULL, 'Library ICT printer'),
(238, 16, 'UDSM-PRN-0238', 'PRN-SN-00238', 'Epson', 'EcoTank', 'Laser', 2010, NULL, 'Library ICT printer'),
(239, 17, 'UDSM-PRN-0239', 'PRN-SN-00239', 'Brother', 'HL Series', 'Inkjet', 2009, NULL, 'Library ICT printer'),
(240, 18, 'UDSM-PRN-0240', 'PRN-SN-00240', 'Xerox', 'WorkCentre', 'Multifunction', 2010, NULL, 'Library ICT printer'),
(241, 1, 'UDSM-PRN-0241', 'PRN-SN-00241', 'HP', 'LaserJet Pro', 'Laser', 2009, NULL, 'Library ICT printer'),
(242, 2, 'UDSM-PRN-0242', 'PRN-SN-00242', 'Canon', 'imageCLASS', 'Inkjet', 2010, NULL, 'Library ICT printer'),
(243, 3, 'UDSM-PRN-0243', 'PRN-SN-00243', 'Epson', 'EcoTank', 'Multifunction', 2009, NULL, 'Library ICT printer'),
(244, 5, 'UDSM-PRN-0244', 'PRN-SN-00244', 'Brother', 'HL Series', 'Laser', 2010, NULL, 'Library ICT printer'),
(245, 6, 'UDSM-PRN-0245', 'PRN-SN-00245', 'Xerox', 'WorkCentre', 'Inkjet', 2009, NULL, 'Library ICT printer'),
(246, 7, 'UDSM-PRN-0246', 'PRN-SN-00246', 'HP', 'LaserJet Pro', 'Multifunction', 2010, NULL, 'Library ICT printer'),
(247, 8, 'UDSM-PRN-0247', 'PRN-SN-00247', 'Canon', 'imageCLASS', 'Laser', 2009, NULL, 'Library ICT printer'),
(248, 9, 'UDSM-PRN-0248', 'PRN-SN-00248', 'Epson', 'EcoTank', 'Inkjet', 2010, NULL, 'Library ICT printer'),
(249, 10, 'UDSM-PRN-0249', 'PRN-SN-00249', 'Brother', 'HL Series', 'Multifunction', 2009, NULL, 'Library ICT printer'),
(250, 11, 'UDSM-PRN-0250', 'PRN-SN-00250', 'Xerox', 'WorkCentre', 'Laser', 2010, NULL, 'Library ICT printer'),
(251, 12, 'UDSM-PRN-0251', 'PRN-SN-00251', 'HP', 'LaserJet Pro', 'Inkjet', 2009, NULL, 'Library ICT printer'),
(252, 13, 'UDSM-PRN-0252', 'PRN-SN-00252', 'Canon', 'imageCLASS', 'Multifunction', 2010, NULL, 'Library ICT printer'),
(253, 15, 'UDSM-PRN-0253', 'PRN-SN-00253', 'Epson', 'EcoTank', 'Laser', 2009, NULL, 'Library ICT printer'),
(254, 16, 'UDSM-PRN-0254', 'PRN-SN-00254', 'Brother', 'HL Series', 'Inkjet', 2010, NULL, 'Library ICT printer'),
(255, 17, 'UDSM-PRN-0255', 'PRN-SN-00255', 'Xerox', 'WorkCentre', 'Multifunction', 2009, NULL, 'Library ICT printer'),
(256, 18, 'UDSM-PRN-0256', 'PRN-SN-00256', 'HP', 'LaserJet Pro', 'Laser', 2010, NULL, 'Library ICT printer'),
(257, 1, 'UDSM-PRN-0257', 'PRN-SN-00257', 'Canon', 'imageCLASS', 'Inkjet', 2009, NULL, 'Library ICT printer'),
(258, 2, 'UDSM-PRN-0258', 'PRN-SN-00258', 'Epson', 'EcoTank', 'Multifunction', 2010, NULL, 'Library ICT printer'),
(259, 3, 'UDSM-PRN-0259', 'PRN-SN-00259', 'Brother', 'HL Series', 'Laser', 2009, NULL, 'Library ICT printer'),
(260, 5, 'UDSM-PRN-0260', 'PRN-SN-00260', 'Xerox', 'WorkCentre', 'Inkjet', 2010, NULL, 'Library ICT printer'),
(261, 6, 'UDSM-PRN-0261', 'PRN-SN-00261', 'HP', 'LaserJet Pro', 'Multifunction', 2009, NULL, 'Library ICT printer'),
(262, 7, 'UDSM-PRN-0262', 'PRN-SN-00262', 'Canon', 'imageCLASS', 'Laser', 2010, NULL, 'Library ICT printer'),
(263, 8, 'UDSM-PRN-0263', 'PRN-SN-00263', 'Epson', 'EcoTank', 'Inkjet', 2009, NULL, 'Library ICT printer'),
(264, 9, 'UDSM-PRN-0264', 'PRN-SN-00264', 'Brother', 'HL Series', 'Multifunction', 2010, NULL, 'Library ICT printer'),
(265, 10, 'UDSM-PRN-0265', 'PRN-SN-00265', 'Xerox', 'WorkCentre', 'Laser', 2009, NULL, 'Library ICT printer'),
(266, 11, 'UDSM-PRN-0266', 'PRN-SN-00266', 'HP', 'LaserJet Pro', 'Inkjet', 2010, NULL, 'Library ICT printer'),
(267, 12, 'UDSM-PRN-0267', 'PRN-SN-00267', 'Canon', 'imageCLASS', 'Multifunction', 2009, NULL, 'Library ICT printer'),
(268, 13, 'UDSM-PRN-0268', 'PRN-SN-00268', 'Epson', 'EcoTank', 'Laser', 2010, NULL, 'Library ICT printer'),
(269, 15, 'UDSM-PRN-0269', 'PRN-SN-00269', 'Brother', 'HL Series', 'Inkjet', 2009, NULL, 'Library ICT printer'),
(270, 16, 'UDSM-PRN-0270', 'PRN-SN-00270', 'Xerox', 'WorkCentre', 'Multifunction', 2010, NULL, 'Library ICT printer'),
(271, 17, 'UDSM-PRN-0271', 'PRN-SN-00271', 'HP', 'LaserJet Pro', 'Laser', 2009, NULL, 'Library ICT printer'),
(272, 18, 'UDSM-PRN-0272', 'PRN-SN-00272', 'Canon', 'imageCLASS', 'Inkjet', 2010, NULL, 'Library ICT printer'),
(273, 1, 'UDSM-PRN-0273', 'PRN-SN-00273', 'Epson', 'EcoTank', 'Multifunction', 2009, NULL, 'Library ICT printer'),
(274, 2, 'UDSM-PRN-0274', 'PRN-SN-00274', 'Brother', 'HL Series', 'Laser', 2010, NULL, 'Library ICT printer'),
(275, 3, 'UDSM-PRN-0275', 'PRN-SN-00275', 'Xerox', 'WorkCentre', 'Inkjet', 2009, NULL, 'Library ICT printer'),
(276, 5, 'UDSM-PRN-0276', 'PRN-SN-00276', 'HP', 'LaserJet Pro', 'Multifunction', 2010, NULL, 'Library ICT printer'),
(277, 6, 'UDSM-PRN-0277', 'PRN-SN-00277', 'Canon', 'imageCLASS', 'Laser', 2009, NULL, 'Library ICT printer'),
(278, 7, 'UDSM-PRN-0278', 'PRN-SN-00278', 'Epson', 'EcoTank', 'Inkjet', 2010, NULL, 'Library ICT printer'),
(279, 8, 'UDSM-PRN-0279', 'PRN-SN-00279', 'Brother', 'HL Series', 'Multifunction', 2009, NULL, 'Library ICT printer'),
(280, 9, 'UDSM-PRN-0280', 'PRN-SN-00280', 'Xerox', 'WorkCentre', 'Laser', 2010, NULL, 'Library ICT printer'),
(281, 10, 'UDSM-PRN-0281', 'PRN-SN-00281', 'HP', 'LaserJet Pro', 'Inkjet', 2009, NULL, 'Library ICT printer'),
(282, 11, 'UDSM-PRN-0282', 'PRN-SN-00282', 'Canon', 'imageCLASS', 'Multifunction', 2010, NULL, 'Library ICT printer'),
(283, 12, 'UDSM-PRN-0283', 'PRN-SN-00283', 'Epson', 'EcoTank', 'Laser', 2009, NULL, 'Library ICT printer'),
(284, 13, 'UDSM-PRN-0284', 'PRN-SN-00284', 'Brother', 'HL Series', 'Inkjet', 2010, NULL, 'Library ICT printer'),
(285, 15, 'UDSM-PRN-0285', 'PRN-SN-00285', 'Xerox', 'WorkCentre', 'Multifunction', 2009, NULL, 'Library ICT printer'),
(286, 16, 'UDSM-PRN-0286', 'PRN-SN-00286', 'HP', 'LaserJet Pro', 'Laser', 2010, NULL, 'Library ICT printer'),
(287, 17, 'UDSM-PRN-0287', 'PRN-SN-00287', 'Canon', 'imageCLASS', 'Inkjet', 2009, NULL, 'Library ICT printer'),
(288, 18, 'UDSM-PRN-0288', 'PRN-SN-00288', 'Epson', 'EcoTank', 'Multifunction', 2010, NULL, 'Library ICT printer'),
(289, 1, 'UDSM-PRN-0289', 'PRN-SN-00289', 'Brother', 'HL Series', 'Laser', 2009, NULL, 'Library ICT printer'),
(290, 2, 'UDSM-PRN-0290', 'PRN-SN-00290', 'Xerox', 'WorkCentre', 'Inkjet', 2010, NULL, 'Library ICT printer'),
(291, 3, 'UDSM-PRN-0291', 'PRN-SN-00291', 'HP', 'LaserJet Pro', 'Multifunction', 2009, NULL, 'Library ICT printer'),
(292, 5, 'UDSM-PRN-0292', 'PRN-SN-00292', 'Canon', 'imageCLASS', 'Laser', 2010, NULL, 'Library ICT printer'),
(293, 6, 'UDSM-PRN-0293', 'PRN-SN-00293', 'Epson', 'EcoTank', 'Inkjet', 2009, NULL, 'Library ICT printer'),
(294, 7, 'UDSM-PRN-0294', 'PRN-SN-00294', 'Brother', 'HL Series', 'Multifunction', 2010, NULL, 'Library ICT printer'),
(295, 8, 'UDSM-PRN-0295', 'PRN-SN-00295', 'Xerox', 'WorkCentre', 'Laser', 2009, NULL, 'Library ICT printer'),
(296, 9, 'UDSM-PRN-0296', 'PRN-SN-00296', 'HP', 'LaserJet Pro', 'Inkjet', 2010, NULL, 'Library ICT printer'),
(297, 10, 'UDSM-PRN-0297', 'PRN-SN-00297', 'Canon', 'imageCLASS', 'Multifunction', 2009, NULL, 'Library ICT printer'),
(298, 11, 'UDSM-PRN-0298', 'PRN-SN-00298', 'Epson', 'EcoTank', 'Laser', 2010, NULL, 'Library ICT printer'),
(299, 12, 'UDSM-PRN-0299', 'PRN-SN-00299', 'Brother', 'HL Series', 'Inkjet', 2009, NULL, 'Library ICT printer'),
(300, 13, 'UDSM-PRN-0300', 'PRN-SN-00300', 'Xerox', 'WorkCentre', 'Multifunction', 2010, NULL, 'Library ICT printer'),
(301, 15, 'UDSM-PRN-0301', 'PRN-SN-00301', 'HP', 'LaserJet Pro', 'Laser', 2009, NULL, 'Library ICT printer'),
(302, 16, 'UDSM-PRN-0302', 'PRN-SN-00302', 'Canon', 'imageCLASS', 'Inkjet', 2010, NULL, 'Library ICT printer'),
(303, 17, 'UDSM-PRN-0303', 'PRN-SN-00303', 'Epson', 'EcoTank', 'Multifunction', 2009, NULL, 'Library ICT printer'),
(304, 18, 'UDSM-PRN-0304', 'PRN-SN-00304', 'Brother', 'HL Series', 'Laser', 2010, NULL, 'Library ICT printer'),
(305, 1, 'UDSM-PRN-0305', 'PRN-SN-00305', 'Xerox', 'WorkCentre', 'Inkjet', 2009, NULL, 'Library ICT printer'),
(306, 2, 'UDSM-PRN-0306', 'PRN-SN-00306', 'HP', 'LaserJet Pro', 'Multifunction', 2010, NULL, 'Library ICT printer'),
(307, 3, 'UDSM-PRN-0307', 'PRN-SN-00307', 'Canon', 'imageCLASS', 'Laser', 2009, NULL, 'Library ICT printer'),
(308, 5, 'UDSM-PRN-0308', 'PRN-SN-00308', 'Epson', 'EcoTank', 'Inkjet', 2010, NULL, 'Library ICT printer'),
(309, 6, 'UDSM-PRN-0309', 'PRN-SN-00309', 'Brother', 'HL Series', 'Multifunction', 2009, NULL, 'Library ICT printer'),
(310, 7, 'UDSM-PRN-0310', 'PRN-SN-00310', 'Xerox', 'WorkCentre', 'Laser', 2010, NULL, 'Library ICT printer'),
(311, 8, 'UDSM-PRN-0311', 'PRN-SN-00311', 'HP', 'LaserJet Pro', 'Inkjet', 2009, NULL, 'Library ICT printer'),
(312, 9, 'UDSM-PRN-0312', 'PRN-SN-00312', 'Canon', 'imageCLASS', 'Multifunction', 2010, NULL, 'Library ICT printer'),
(313, 10, 'UDSM-PRN-0313', 'PRN-SN-00313', 'Epson', 'EcoTank', 'Laser', 2009, NULL, 'Library ICT printer'),
(314, 11, 'UDSM-PRN-0314', 'PRN-SN-00314', 'Brother', 'HL Series', 'Inkjet', 2010, NULL, 'Library ICT printer'),
(315, 12, 'UDSM-PRN-0315', 'PRN-SN-00315', 'Xerox', 'WorkCentre', 'Multifunction', 2009, NULL, 'Library ICT printer'),
(316, 13, 'UDSM-PRN-0316', 'PRN-SN-00316', 'HP', 'LaserJet Pro', 'Laser', 2010, NULL, 'Library ICT printer'),
(317, 15, 'UDSM-PRN-0317', 'PRN-SN-00317', 'Canon', 'imageCLASS', 'Inkjet', 2009, NULL, 'Library ICT printer'),
(318, 16, 'UDSM-PRN-0318', 'PRN-SN-00318', 'Epson', 'EcoTank', 'Multifunction', 2010, NULL, 'Library ICT printer'),
(319, 17, 'UDSM-PRN-0319', 'PRN-SN-00319', 'Brother', 'HL Series', 'Laser', 2009, NULL, 'Library ICT printer'),
(320, 18, 'UDSM-PRN-0320', 'PRN-SN-00320', 'Xerox', 'WorkCentre', 'Inkjet', 2010, NULL, 'Library ICT printer'),
(321, 1, 'UDSM-PRN-0321', 'PRN-SN-00321', 'HP', 'LaserJet Pro', 'Multifunction', 2009, NULL, 'Library ICT printer'),
(322, 2, 'UDSM-PRN-0322', 'PRN-SN-00322', 'Canon', 'imageCLASS', 'Laser', 2010, NULL, 'Library ICT printer'),
(323, 3, 'UDSM-PRN-0323', 'PRN-SN-00323', 'Epson', 'EcoTank', 'Inkjet', 2009, NULL, 'Library ICT printer'),
(324, 5, 'UDSM-PRN-0324', 'PRN-SN-00324', 'Brother', 'HL Series', 'Multifunction', 2010, NULL, 'Library ICT printer'),
(325, 6, 'UDSM-PRN-0325', 'PRN-SN-00325', 'Xerox', 'WorkCentre', 'Laser', 2009, NULL, 'Library ICT printer'),
(326, 7, 'UDSM-PRN-0326', 'PRN-SN-00326', 'HP', 'LaserJet Pro', 'Inkjet', 2010, NULL, 'Library ICT printer'),
(327, 8, 'UDSM-PRN-0327', 'PRN-SN-00327', 'Canon', 'imageCLASS', 'Multifunction', 2009, NULL, 'Library ICT printer'),
(328, 9, 'UDSM-PRN-0328', 'PRN-SN-00328', 'Epson', 'EcoTank', 'Laser', 2010, NULL, 'Library ICT printer'),
(329, 10, 'UDSM-PRN-0329', 'PRN-SN-00329', 'Brother', 'HL Series', 'Inkjet', 2009, NULL, 'Library ICT printer'),
(330, 11, 'UDSM-PRN-0330', 'PRN-SN-00330', 'Xerox', 'WorkCentre', 'Multifunction', 2010, NULL, 'Library ICT printer'),
(331, 12, 'UDSM-PRN-0331', 'PRN-SN-00331', 'HP', 'LaserJet Pro', 'Laser', 2009, NULL, 'Library ICT printer'),
(332, 13, 'UDSM-PRN-0332', 'PRN-SN-00332', 'Canon', 'imageCLASS', 'Inkjet', 2010, NULL, 'Library ICT printer'),
(333, 15, 'UDSM-PRN-0333', 'PRN-SN-00333', 'Epson', 'EcoTank', 'Multifunction', 2009, NULL, 'Library ICT printer'),
(334, 16, 'UDSM-PRN-0334', 'PRN-SN-00334', 'Brother', 'HL Series', 'Laser', 2010, NULL, 'Library ICT printer'),
(335, 17, 'UDSM-PRN-0335', 'PRN-SN-00335', 'Xerox', 'WorkCentre', 'Inkjet', 2009, NULL, 'Library ICT printer'),
(336, 18, 'UDSM-PRN-0336', 'PRN-SN-00336', 'HP', 'LaserJet Pro', 'Multifunction', 2010, NULL, 'Library ICT printer'),
(337, 1, 'UDSM-PRN-0337', 'PRN-SN-00337', 'Canon', 'imageCLASS', 'Laser', 2009, NULL, 'Library ICT printer'),
(338, 2, 'UDSM-PRN-0338', 'PRN-SN-00338', 'Epson', 'EcoTank', 'Inkjet', 2010, NULL, 'Library ICT printer'),
(339, 3, 'UDSM-PRN-0339', 'PRN-SN-00339', 'Brother', 'HL Series', 'Multifunction', 2009, NULL, 'Library ICT printer'),
(340, 5, 'UDSM-PRN-0340', 'PRN-SN-00340', 'Xerox', 'WorkCentre', 'Laser', 2010, NULL, 'Library ICT printer'),
(341, 6, 'UDSM-PRN-0341', 'PRN-SN-00341', 'HP', 'LaserJet Pro', 'Inkjet', 2009, NULL, 'Library ICT printer'),
(342, 7, 'UDSM-PRN-0342', 'PRN-SN-00342', 'Canon', 'imageCLASS', 'Multifunction', 2010, NULL, 'Library ICT printer'),
(343, 8, 'UDSM-PRN-0343', 'PRN-SN-00343', 'Epson', 'EcoTank', 'Laser', 2009, NULL, 'Library ICT printer'),
(344, 9, 'UDSM-PRN-0344', 'PRN-SN-00344', 'Brother', 'HL Series', 'Inkjet', 2010, NULL, 'Library ICT printer'),
(345, 10, 'UDSM-PRN-0345', 'PRN-SN-00345', 'Xerox', 'WorkCentre', 'Multifunction', 2009, NULL, 'Library ICT printer'),
(346, 11, 'UDSM-PRN-0346', 'PRN-SN-00346', 'HP', 'LaserJet Pro', 'Laser', 2010, NULL, 'Library ICT printer'),
(347, 12, 'UDSM-PRN-0347', 'PRN-SN-00347', 'Canon', 'imageCLASS', 'Inkjet', 2009, NULL, 'Library ICT printer'),
(348, 13, 'UDSM-PRN-0348', 'PRN-SN-00348', 'Epson', 'EcoTank', 'Multifunction', 2010, NULL, 'Library ICT printer'),
(349, 15, 'UDSM-PRN-0349', 'PRN-SN-00349', 'Brother', 'HL Series', 'Laser', 2009, NULL, 'Library ICT printer'),
(350, 16, 'UDSM-PRN-0350', 'PRN-SN-00350', 'Xerox', 'WorkCentre', 'Inkjet', 2010, NULL, 'Library ICT printer'),
(351, 17, 'UDSM-PRN-0351', 'PRN-SN-00351', 'HP', 'LaserJet Pro', 'Multifunction', 2009, NULL, 'Library ICT printer'),
(352, 18, 'UDSM-PRN-0352', 'PRN-SN-00352', 'Canon', 'imageCLASS', 'Laser', 2010, NULL, 'Library ICT printer'),
(353, 1, 'UDSM-PRN-0353', 'PRN-SN-00353', 'Epson', 'EcoTank', 'Inkjet', 2009, NULL, 'Library ICT printer'),
(354, 2, 'UDSM-PRN-0354', 'PRN-SN-00354', 'Brother', 'HL Series', 'Multifunction', 2010, NULL, 'Library ICT printer'),
(355, 3, 'UDSM-PRN-0355', 'PRN-SN-00355', 'Xerox', 'WorkCentre', 'Laser', 2009, NULL, 'Library ICT printer'),
(356, 5, 'UDSM-PRN-0356', 'PRN-SN-00356', 'HP', 'LaserJet Pro', 'Inkjet', 2010, NULL, 'Library ICT printer'),
(357, 6, 'UDSM-PRN-0357', 'PRN-SN-00357', 'Canon', 'imageCLASS', 'Multifunction', 2009, NULL, 'Library ICT printer'),
(358, 7, 'UDSM-PRN-0358', 'PRN-SN-00358', 'Epson', 'EcoTank', 'Laser', 2010, NULL, 'Library ICT printer'),
(359, 8, 'UDSM-PRN-0359', 'PRN-SN-00359', 'Brother', 'HL Series', 'Inkjet', 2009, NULL, 'Library ICT printer'),
(360, 9, 'UDSM-PRN-0360', 'PRN-SN-00360', 'Xerox', 'WorkCentre', 'Multifunction', 2010, NULL, 'Library ICT printer'),
(361, 10, 'UDSM-PRN-0361', 'PRN-SN-00361', 'HP', 'LaserJet Pro', 'Laser', 2009, NULL, 'Library ICT printer'),
(362, 11, 'UDSM-PRN-0362', 'PRN-SN-00362', 'Canon', 'imageCLASS', 'Inkjet', 2010, NULL, 'Library ICT printer'),
(363, 12, 'UDSM-PRN-0363', 'PRN-SN-00363', 'Epson', 'EcoTank', 'Multifunction', 2009, NULL, 'Library ICT printer'),
(364, 13, 'UDSM-PRN-0364', 'PRN-SN-00364', 'Brother', 'HL Series', 'Laser', 2010, NULL, 'Library ICT printer'),
(365, 15, 'UDSM-PRN-0365', 'PRN-SN-00365', 'Xerox', 'WorkCentre', 'Inkjet', 2009, NULL, 'Library ICT printer'),
(366, 16, 'UDSM-PRN-0366', 'PRN-SN-00366', 'HP', 'LaserJet Pro', 'Multifunction', 2010, NULL, 'Library ICT printer'),
(367, 17, 'UDSM-PRN-0367', 'PRN-SN-00367', 'Canon', 'imageCLASS', 'Laser', 2009, NULL, 'Library ICT printer'),
(368, 18, 'UDSM-PRN-0368', 'PRN-SN-00368', 'Epson', 'EcoTank', 'Inkjet', 2010, NULL, 'Library ICT printer'),
(369, 1, 'UDSM-PRN-0369', 'PRN-SN-00369', 'Brother', 'HL Series', 'Multifunction', 2009, NULL, 'Library ICT printer'),
(370, 2, 'UDSM-PRN-0370', 'PRN-SN-00370', 'Xerox', 'WorkCentre', 'Laser', 2010, NULL, 'Library ICT printer'),
(371, 3, 'UDSM-PRN-0371', 'PRN-SN-00371', 'HP', 'LaserJet Pro', 'Inkjet', 2009, NULL, 'Library ICT printer'),
(372, 5, 'UDSM-PRN-0372', 'PRN-SN-00372', 'Canon', 'imageCLASS', 'Multifunction', 2010, NULL, 'Library ICT printer'),
(373, 6, 'UDSM-PRN-0373', 'PRN-SN-00373', 'Epson', 'EcoTank', 'Laser', 2009, NULL, 'Library ICT printer'),
(374, 7, 'UDSM-PRN-0374', 'PRN-SN-00374', 'Brother', 'HL Series', 'Inkjet', 2010, NULL, 'Library ICT printer'),
(375, 8, 'UDSM-PRN-0375', 'PRN-SN-00375', 'Xerox', 'WorkCentre', 'Multifunction', 2009, NULL, 'Library ICT printer'),
(376, 9, 'UDSM-PRN-0376', 'PRN-SN-00376', 'HP', 'LaserJet Pro', 'Laser', 2010, NULL, 'Library ICT printer'),
(377, 10, 'UDSM-PRN-0377', 'PRN-SN-00377', 'Canon', 'imageCLASS', 'Inkjet', 2009, NULL, 'Library ICT printer'),
(378, 11, 'UDSM-PRN-0378', 'PRN-SN-00378', 'Epson', 'EcoTank', 'Multifunction', 2010, NULL, 'Library ICT printer'),
(379, 12, 'UDSM-PRN-0379', 'PRN-SN-00379', 'Brother', 'HL Series', 'Laser', 2009, NULL, 'Library ICT printer'),
(380, 13, 'UDSM-PRN-0380', 'PRN-SN-00380', 'Xerox', 'WorkCentre', 'Inkjet', 2010, NULL, 'Library ICT printer'),
(381, 15, 'UDSM-PRN-0381', 'PRN-SN-00381', 'HP', 'LaserJet Pro', 'Multifunction', 2009, NULL, 'Library ICT printer'),
(382, 16, 'UDSM-PRN-0382', 'PRN-SN-00382', 'Canon', 'imageCLASS', 'Laser', 2010, NULL, 'Library ICT printer'),
(383, 17, 'UDSM-PRN-0383', 'PRN-SN-00383', 'Epson', 'EcoTank', 'Inkjet', 2009, NULL, 'Library ICT printer'),
(384, 18, 'UDSM-PRN-0384', 'PRN-SN-00384', 'Brother', 'HL Series', 'Multifunction', 2010, NULL, 'Library ICT printer'),
(385, 1, 'UDSM-PRN-0385', 'PRN-SN-00385', 'Xerox', 'WorkCentre', 'Laser', 2009, NULL, 'Library ICT printer'),
(386, 2, 'UDSM-PRN-0386', 'PRN-SN-00386', 'HP', 'LaserJet Pro', 'Inkjet', 2010, NULL, 'Library ICT printer'),
(387, 3, 'UDSM-PRN-0387', 'PRN-SN-00387', 'Canon', 'imageCLASS', 'Multifunction', 2009, NULL, 'Library ICT printer'),
(388, 5, 'UDSM-PRN-0388', 'PRN-SN-00388', 'Epson', 'EcoTank', 'Laser', 2010, NULL, 'Library ICT printer'),
(389, 6, 'UDSM-PRN-0389', 'PRN-SN-00389', 'Brother', 'HL Series', 'Inkjet', 2009, NULL, 'Library ICT printer'),
(390, 7, 'UDSM-PRN-0390', 'PRN-SN-00390', 'Xerox', 'WorkCentre', 'Multifunction', 2010, NULL, 'Library ICT printer'),
(391, 8, 'UDSM-PRN-0391', 'PRN-SN-00391', 'HP', 'LaserJet Pro', 'Laser', 2009, NULL, 'Library ICT printer'),
(392, 9, 'UDSM-PRN-0392', 'PRN-SN-00392', 'Canon', 'imageCLASS', 'Inkjet', 2010, NULL, 'Library ICT printer'),
(393, 10, 'UDSM-PRN-0393', 'PRN-SN-00393', 'Epson', 'EcoTank', 'Multifunction', 2009, NULL, 'Library ICT printer'),
(394, 11, 'UDSM-PRN-0394', 'PRN-SN-00394', 'Brother', 'HL Series', 'Laser', 2010, NULL, 'Library ICT printer'),
(395, 12, 'UDSM-PRN-0395', 'PRN-SN-00395', 'Xerox', 'WorkCentre', 'Inkjet', 2009, NULL, 'Library ICT printer'),
(396, 13, 'UDSM-PRN-0396', 'PRN-SN-00396', 'HP', 'LaserJet Pro', 'Multifunction', 2010, NULL, 'Library ICT printer'),
(397, 15, 'UDSM-PRN-0397', 'PRN-SN-00397', 'Canon', 'imageCLASS', 'Laser', 2009, NULL, 'Library ICT printer'),
(398, 16, 'UDSM-PRN-0398', 'PRN-SN-00398', 'Epson', 'EcoTank', 'Inkjet', 2010, NULL, 'Library ICT printer'),
(399, 17, 'UDSM-PRN-0399', 'PRN-SN-00399', 'Brother', 'HL Series', 'Multifunction', 2009, NULL, 'Library ICT printer'),
(400, 18, 'UDSM-PRN-0400', 'PRN-SN-00400', 'Xerox', 'WorkCentre', 'Laser', 2010, NULL, 'Library ICT printer'),
(401, 1, 'UDSM-PRN-0401', 'PRN-SN-00401', 'HP', 'LaserJet Pro', 'Inkjet', 2009, NULL, 'Library ICT printer'),
(402, 2, 'UDSM-PRN-0402', 'PRN-SN-00402', 'Canon', 'imageCLASS', 'Multifunction', 2010, NULL, 'Library ICT printer'),
(403, 3, 'UDSM-PRN-0403', 'PRN-SN-00403', 'Epson', 'EcoTank', 'Laser', 2009, NULL, 'Library ICT printer'),
(404, 5, 'UDSM-PRN-0404', 'PRN-SN-00404', 'Brother', 'HL Series', 'Inkjet', 2010, NULL, 'Library ICT printer'),
(405, 6, 'UDSM-PRN-0405', 'PRN-SN-00405', 'Xerox', 'WorkCentre', 'Multifunction', 2009, NULL, 'Library ICT printer'),
(406, 7, 'UDSM-PRN-0406', 'PRN-SN-00406', 'HP', 'LaserJet Pro', 'Laser', 2010, NULL, 'Library ICT printer'),
(407, 8, 'UDSM-PRN-0407', 'PRN-SN-00407', 'Canon', 'imageCLASS', 'Inkjet', 2009, NULL, 'Library ICT printer'),
(408, 9, 'UDSM-PRN-0408', 'PRN-SN-00408', 'Epson', 'EcoTank', 'Multifunction', 2010, NULL, 'Library ICT printer'),
(409, 10, 'UDSM-PRN-0409', 'PRN-SN-00409', 'Brother', 'HL Series', 'Laser', 2009, NULL, 'Library ICT printer'),
(410, 11, 'UDSM-PRN-0410', 'PRN-SN-00410', 'Xerox', 'WorkCentre', 'Inkjet', 2010, NULL, 'Library ICT printer'),
(411, 12, 'UDSM-PRN-0411', 'PRN-SN-00411', 'HP', 'LaserJet Pro', 'Multifunction', 2009, NULL, 'Library ICT printer'),
(412, 13, 'UDSM-PRN-0412', 'PRN-SN-00412', 'Canon', 'imageCLASS', 'Laser', 2010, NULL, 'Library ICT printer'),
(413, 15, 'UDSM-PRN-0413', 'PRN-SN-00413', 'Epson', 'EcoTank', 'Inkjet', 2009, NULL, 'Library ICT printer'),
(414, 16, 'UDSM-PRN-0414', 'PRN-SN-00414', 'Brother', 'HL Series', 'Multifunction', 2010, NULL, 'Library ICT printer'),
(415, 17, 'UDSM-PRN-0415', 'PRN-SN-00415', 'Xerox', 'WorkCentre', 'Laser', 2009, NULL, 'Library ICT printer'),
(416, 18, 'UDSM-PRN-0416', 'PRN-SN-00416', 'HP', 'LaserJet Pro', 'Inkjet', 2010, NULL, 'Library ICT printer'),
(417, 1, 'UDSM-PRN-0417', 'PRN-SN-00417', 'Canon', 'imageCLASS', 'Multifunction', 2009, NULL, 'Library ICT printer'),
(418, 2, 'UDSM-PRN-0418', 'PRN-SN-00418', 'Epson', 'EcoTank', 'Laser', 2010, NULL, 'Library ICT printer'),
(419, 3, 'UDSM-PRN-0419', 'PRN-SN-00419', 'Brother', 'HL Series', 'Inkjet', 2009, NULL, 'Library ICT printer'),
(420, 5, 'UDSM-PRN-0420', 'PRN-SN-00420', 'Xerox', 'WorkCentre', 'Multifunction', 2010, NULL, 'Library ICT printer'),
(421, 6, 'UDSM-PRN-0421', 'PRN-SN-00421', 'HP', 'LaserJet Pro', 'Laser', 2009, NULL, 'Library ICT printer'),
(422, 7, 'UDSM-PRN-0422', 'PRN-SN-00422', 'Canon', 'imageCLASS', 'Inkjet', 2010, NULL, 'Library ICT printer'),
(423, 8, 'UDSM-PRN-0423', 'PRN-SN-00423', 'Epson', 'EcoTank', 'Multifunction', 2009, NULL, 'Library ICT printer'),
(424, 9, 'UDSM-PRN-0424', 'PRN-SN-00424', 'Brother', 'HL Series', 'Laser', 2010, NULL, 'Library ICT printer'),
(425, 10, 'UDSM-PRN-0425', 'PRN-SN-00425', 'Xerox', 'WorkCentre', 'Inkjet', 2009, NULL, 'Library ICT printer'),
(426, 11, 'UDSM-PRN-0426', 'PRN-SN-00426', 'HP', 'LaserJet Pro', 'Multifunction', 2010, NULL, 'Library ICT printer'),
(427, 12, 'UDSM-PRN-0427', 'PRN-SN-00427', 'Canon', 'imageCLASS', 'Laser', 2009, NULL, 'Library ICT printer'),
(428, 13, 'UDSM-PRN-0428', 'PRN-SN-00428', 'Epson', 'EcoTank', 'Inkjet', 2010, NULL, 'Library ICT printer'),
(429, 15, 'UDSM-PRN-0429', 'PRN-SN-00429', 'Brother', 'HL Series', 'Multifunction', 2009, NULL, 'Library ICT printer'),
(430, 16, 'UDSM-PRN-0430', 'PRN-SN-00430', 'Xerox', 'WorkCentre', 'Laser', 2010, NULL, 'Library ICT printer'),
(431, 17, 'UDSM-PRN-0431', 'PRN-SN-00431', 'HP', 'LaserJet Pro', 'Inkjet', 2009, NULL, 'Library ICT printer'),
(432, 18, 'UDSM-PRN-0432', 'PRN-SN-00432', 'Canon', 'imageCLASS', 'Multifunction', 2010, NULL, 'Library ICT printer'),
(433, 1, 'UDSM-PRN-0433', 'PRN-SN-00433', 'Epson', 'EcoTank', 'Laser', 2009, NULL, 'Library ICT printer'),
(434, 2, 'UDSM-PRN-0434', 'PRN-SN-00434', 'Brother', 'HL Series', 'Inkjet', 2010, NULL, 'Library ICT printer'),
(435, 3, 'UDSM-PRN-0435', 'PRN-SN-00435', 'Xerox', 'WorkCentre', 'Multifunction', 2009, NULL, 'Library ICT printer'),
(436, 5, 'UDSM-PRN-0436', 'PRN-SN-00436', 'HP', 'LaserJet Pro', 'Laser', 2010, NULL, 'Library ICT printer'),
(437, 6, 'UDSM-PRN-0437', 'PRN-SN-00437', 'Canon', 'imageCLASS', 'Inkjet', 2009, NULL, 'Library ICT printer'),
(438, 7, 'UDSM-PRN-0438', 'PRN-SN-00438', 'Epson', 'EcoTank', 'Multifunction', 2010, NULL, 'Library ICT printer'),
(439, 8, 'UDSM-PRN-0439', 'PRN-SN-00439', 'Brother', 'HL Series', 'Laser', 2009, NULL, 'Library ICT printer'),
(440, 9, 'UDSM-PRN-0440', 'PRN-SN-00440', 'Xerox', 'WorkCentre', 'Inkjet', 2010, NULL, 'Library ICT printer'),
(441, 10, 'UDSM-PRN-0441', 'PRN-SN-00441', 'HP', 'LaserJet Pro', 'Multifunction', 2009, NULL, 'Library ICT printer'),
(442, 11, 'UDSM-PRN-0442', 'PRN-SN-00442', 'Canon', 'imageCLASS', 'Laser', 2010, NULL, 'Library ICT printer'),
(443, 12, 'UDSM-PRN-0443', 'PRN-SN-00443', 'Epson', 'EcoTank', 'Inkjet', 2009, NULL, 'Library ICT printer'),
(444, 13, 'UDSM-PRN-0444', 'PRN-SN-00444', 'Brother', 'HL Series', 'Multifunction', 2010, NULL, 'Library ICT printer'),
(445, 15, 'UDSM-PRN-0445', 'PRN-SN-00445', 'Xerox', 'WorkCentre', 'Laser', 2009, NULL, 'Library ICT printer'),
(446, 16, 'UDSM-PRN-0446', 'PRN-SN-00446', 'HP', 'LaserJet Pro', 'Inkjet', 2010, NULL, 'Library ICT printer'),
(447, 17, 'UDSM-PRN-0447', 'PRN-SN-00447', 'Canon', 'imageCLASS', 'Multifunction', 2009, NULL, 'Library ICT printer'),
(448, 18, 'UDSM-PRN-0448', 'PRN-SN-00448', 'Epson', 'EcoTank', 'Laser', 2010, NULL, 'Library ICT printer'),
(449, 1, 'UDSM-PRN-0449', 'PRN-SN-00449', 'Brother', 'HL Series', 'Inkjet', 2009, NULL, 'Library ICT printer'),
(450, 2, 'UDSM-PRN-0450', 'PRN-SN-00450', 'Xerox', 'WorkCentre', 'Multifunction', 2010, NULL, 'Library ICT printer');
INSERT INTO `printer` (`printer_id`, `room_id`, `inventory_barcode`, `serial_number`, `brand`, `model`, `printer_type`, `status_id`, `purchase_date`, `remarks`) VALUES
(451, 3, 'UDSM-PRN-0451', 'PRN-SN-00451', 'HP', 'LaserJet Pro', 'Laser', 2009, NULL, 'Library ICT printer'),
(452, 5, 'UDSM-PRN-0452', 'PRN-SN-00452', 'Canon', 'imageCLASS', 'Inkjet', 2010, NULL, 'Library ICT printer'),
(453, 6, 'UDSM-PRN-0453', 'PRN-SN-00453', 'Epson', 'EcoTank', 'Multifunction', 2009, NULL, 'Library ICT printer'),
(454, 7, 'UDSM-PRN-0454', 'PRN-SN-00454', 'Brother', 'HL Series', 'Laser', 2010, NULL, 'Library ICT printer'),
(455, 8, 'UDSM-PRN-0455', 'PRN-SN-00455', 'Xerox', 'WorkCentre', 'Inkjet', 2009, NULL, 'Library ICT printer'),
(456, 9, 'UDSM-PRN-0456', 'PRN-SN-00456', 'HP', 'LaserJet Pro', 'Multifunction', 2010, NULL, 'Library ICT printer'),
(457, 10, 'UDSM-PRN-0457', 'PRN-SN-00457', 'Canon', 'imageCLASS', 'Laser', 2009, NULL, 'Library ICT printer'),
(458, 11, 'UDSM-PRN-0458', 'PRN-SN-00458', 'Epson', 'EcoTank', 'Inkjet', 2010, NULL, 'Library ICT printer'),
(459, 12, 'UDSM-PRN-0459', 'PRN-SN-00459', 'Brother', 'HL Series', 'Multifunction', 2009, NULL, 'Library ICT printer'),
(460, 13, 'UDSM-PRN-0460', 'PRN-SN-00460', 'Xerox', 'WorkCentre', 'Laser', 2010, NULL, 'Library ICT printer'),
(461, 15, 'UDSM-PRN-0461', 'PRN-SN-00461', 'HP', 'LaserJet Pro', 'Inkjet', 2009, NULL, 'Library ICT printer'),
(462, 16, 'UDSM-PRN-0462', 'PRN-SN-00462', 'Canon', 'imageCLASS', 'Multifunction', 2010, NULL, 'Library ICT printer'),
(463, 17, 'UDSM-PRN-0463', 'PRN-SN-00463', 'Epson', 'EcoTank', 'Laser', 2009, NULL, 'Library ICT printer'),
(464, 18, 'UDSM-PRN-0464', 'PRN-SN-00464', 'Brother', 'HL Series', 'Inkjet', 2010, NULL, 'Library ICT printer'),
(465, 1, 'UDSM-PRN-0465', 'PRN-SN-00465', 'Xerox', 'WorkCentre', 'Multifunction', 2009, NULL, 'Library ICT printer'),
(466, 2, 'UDSM-PRN-0466', 'PRN-SN-00466', 'HP', 'LaserJet Pro', 'Laser', 2010, NULL, 'Library ICT printer'),
(467, 3, 'UDSM-PRN-0467', 'PRN-SN-00467', 'Canon', 'imageCLASS', 'Inkjet', 2009, NULL, 'Library ICT printer'),
(468, 5, 'UDSM-PRN-0468', 'PRN-SN-00468', 'Epson', 'EcoTank', 'Multifunction', 2010, NULL, 'Library ICT printer'),
(469, 6, 'UDSM-PRN-0469', 'PRN-SN-00469', 'Brother', 'HL Series', 'Laser', 2009, NULL, 'Library ICT printer'),
(470, 7, 'UDSM-PRN-0470', 'PRN-SN-00470', 'Xerox', 'WorkCentre', 'Inkjet', 2010, NULL, 'Library ICT printer'),
(471, 8, 'UDSM-PRN-0471', 'PRN-SN-00471', 'HP', 'LaserJet Pro', 'Multifunction', 2009, NULL, 'Library ICT printer'),
(472, 9, 'UDSM-PRN-0472', 'PRN-SN-00472', 'Canon', 'imageCLASS', 'Laser', 2010, NULL, 'Library ICT printer'),
(473, 10, 'UDSM-PRN-0473', 'PRN-SN-00473', 'Epson', 'EcoTank', 'Inkjet', 2009, NULL, 'Library ICT printer'),
(474, 11, 'UDSM-PRN-0474', 'PRN-SN-00474', 'Brother', 'HL Series', 'Multifunction', 2010, NULL, 'Library ICT printer'),
(475, 12, 'UDSM-PRN-0475', 'PRN-SN-00475', 'Xerox', 'WorkCentre', 'Laser', 2009, NULL, 'Library ICT printer'),
(476, 13, 'UDSM-PRN-0476', 'PRN-SN-00476', 'HP', 'LaserJet Pro', 'Inkjet', 2010, NULL, 'Library ICT printer'),
(477, 15, 'UDSM-PRN-0477', 'PRN-SN-00477', 'Canon', 'imageCLASS', 'Multifunction', 2009, NULL, 'Library ICT printer'),
(478, 16, 'UDSM-PRN-0478', 'PRN-SN-00478', 'Epson', 'EcoTank', 'Laser', 2010, NULL, 'Library ICT printer'),
(479, 17, 'UDSM-PRN-0479', 'PRN-SN-00479', 'Brother', 'HL Series', 'Inkjet', 2009, NULL, 'Library ICT printer'),
(480, 18, 'UDSM-PRN-0480', 'PRN-SN-00480', 'Xerox', 'WorkCentre', 'Multifunction', 2010, NULL, 'Library ICT printer'),
(481, 1, 'UDSM-PRN-0481', 'PRN-SN-00481', 'HP', 'LaserJet Pro', 'Laser', 2009, NULL, 'Library ICT printer'),
(482, 2, 'UDSM-PRN-0482', 'PRN-SN-00482', 'Canon', 'imageCLASS', 'Inkjet', 2010, NULL, 'Library ICT printer'),
(483, 3, 'UDSM-PRN-0483', 'PRN-SN-00483', 'Epson', 'EcoTank', 'Multifunction', 2009, NULL, 'Library ICT printer'),
(484, 5, 'UDSM-PRN-0484', 'PRN-SN-00484', 'Brother', 'HL Series', 'Laser', 2010, NULL, 'Library ICT printer'),
(485, 6, 'UDSM-PRN-0485', 'PRN-SN-00485', 'Xerox', 'WorkCentre', 'Inkjet', 2009, NULL, 'Library ICT printer'),
(486, 7, 'UDSM-PRN-0486', 'PRN-SN-00486', 'HP', 'LaserJet Pro', 'Multifunction', 2010, NULL, 'Library ICT printer'),
(487, 8, 'UDSM-PRN-0487', 'PRN-SN-00487', 'Canon', 'imageCLASS', 'Laser', 2009, NULL, 'Library ICT printer'),
(488, 9, 'UDSM-PRN-0488', 'PRN-SN-00488', 'Epson', 'EcoTank', 'Inkjet', 2010, NULL, 'Library ICT printer'),
(489, 10, 'UDSM-PRN-0489', 'PRN-SN-00489', 'Brother', 'HL Series', 'Multifunction', 2009, NULL, 'Library ICT printer'),
(490, 11, 'UDSM-PRN-0490', 'PRN-SN-00490', 'Xerox', 'WorkCentre', 'Laser', 2010, NULL, 'Library ICT printer'),
(491, 12, 'UDSM-PRN-0491', 'PRN-SN-00491', 'HP', 'LaserJet Pro', 'Inkjet', 2009, NULL, 'Library ICT printer'),
(492, 13, 'UDSM-PRN-0492', 'PRN-SN-00492', 'Canon', 'imageCLASS', 'Multifunction', 2010, NULL, 'Library ICT printer'),
(493, 15, 'UDSM-PRN-0493', 'PRN-SN-00493', 'Epson', 'EcoTank', 'Laser', 2009, NULL, 'Library ICT printer'),
(494, 16, 'UDSM-PRN-0494', 'PRN-SN-00494', 'Brother', 'HL Series', 'Inkjet', 2010, NULL, 'Library ICT printer'),
(495, 17, 'UDSM-PRN-0495', 'PRN-SN-00495', 'Xerox', 'WorkCentre', 'Multifunction', 2009, NULL, 'Library ICT printer'),
(496, 18, 'UDSM-PRN-0496', 'PRN-SN-00496', 'HP', 'LaserJet Pro', 'Laser', 2010, NULL, 'Library ICT printer'),
(497, 1, 'UDSM-PRN-0497', 'PRN-SN-00497', 'Canon', 'imageCLASS', 'Inkjet', 2009, NULL, 'Library ICT printer'),
(498, 2, 'UDSM-PRN-0498', 'PRN-SN-00498', 'Epson', 'EcoTank', 'Multifunction', 2010, NULL, 'Library ICT printer'),
(499, 3, 'UDSM-PRN-0499', 'PRN-SN-00499', 'Brother', 'HL Series', 'Laser', 2009, NULL, 'Library ICT printer'),
(500, 5, 'UDSM-PRN-0500', 'PRN-SN-00500', 'Xerox', 'WorkCentre', 'Inkjet', 2010, NULL, 'Library ICT printer');

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `room_id` int(11) NOT NULL,
  `library_id` int(11) NOT NULL,
  `room_type_id` int(11) NOT NULL,
  `room_name` varchar(50) NOT NULL,
  `floor_no` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`room_id`, `library_id`, `room_type_id`, `room_name`, `floor_no`) VALUES
(1, 2, 14, 'Art and Law collection', '2'),
(2, 2, 14, 'Science and Engineering collection', '2'),
(3, 2, 18, 'Ebooks', '2'),
(4, 2, 17, 'Reception', '1'),
(5, 2, 14, 'East Africana', 'ground'),
(6, 2, 13, 'Open space office', 'Ground'),
(7, 2, 13, 'office 435', 'ground'),
(8, 2, 13, 'Office 5', 'Ground'),
(9, 2, 13, 'office 10', 'Ground'),
(10, 2, 13, 'Managers office', 'Ground'),
(11, 2, 13, 'Acquisition', 'Ground'),
(12, 1, 13, 'Office 1', '1'),
(13, 1, 14, 'Old magazine', '1'),
(14, 1, 17, 'Reception', 'Ground'),
(15, 1, 14, 'Private space', '1'),
(16, 1, 13, 'Human Resource', '1'),
(17, 1, 13, 'Burser\'s Office', '1'),
(18, 2, 15, 'Office 21', 'Ground');

-- --------------------------------------------------------

--
-- Table structure for table `room_type`
--

CREATE TABLE `room_type` (
  `room_type_id` int(11) NOT NULL,
  `type_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `room_type`
--

INSERT INTO `room_type` (`room_type_id`, `type_name`) VALUES
(16, 'Clorke room'),
(18, 'Computer lab'),
(17, 'Reception'),
(15, 'Server room'),
(13, 'Staff Office'),
(14, 'Studying room');

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `status_id` int(11) NOT NULL,
  `status_name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`status_id`, `status_name`) VALUES
(2010, 'Not-working'),
(2009, 'Working');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `hashed_password` varchar(255) NOT NULL,
  `role` enum('admin','user') NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `hashed_password`, `role`, `created_at`) VALUES
(1, 'Factor', '$2b$12$Dnxh4Qw5wYa4fSPMHpNZaOm4cMxEpsAbAmdPk3WeTCd.IAE7xUlTS', 'admin', '2026-09-07 08:16:47'),
(2, 'Wolf', '$2b$12$tk9Jp57vrewnNlspTx3y2eu0P5yfHT3MlXl2FocVpiCrhQWaJ/fI2', 'user', '2026-09-07 09:04:38'),
(3, 'amina.juma', '$2b$12$pTcZJXyaxSSsfgkN2DdOGuouSUkKXlKI4kYyXqPxINwHTpy9/Eb/G', 'user', '2026-09-27 10:48:23'),
(4, 'baraka.musa', '$2b$12$Quz1b3r8z6gWZQTQ.DfjD.GwW2agvplkXD4uYAGiND32wnq.nPLrK', 'user', '2026-09-27 10:48:24'),
(5, 'charles.john', '$2b$12$nrw7xS1xfmI.iOiwRbj3FO6aNTQP1y8h5UaXIjvMcwDIRKM4T8wg.', 'user', '2026-09-27 10:48:24'),
(6, 'diana.peter', '$2b$12$IzVL.JpNRJBs6zfirmSuDeVfUX.pBZncliEqbDP8qFqvbHg0eOKL6', 'user', '2026-09-27 10:48:25'),
(7, 'elias.mwita', '$2b$12$RxFCjtJAizeW3i6Zk6LLPuiuiCFcnmUs9NgCEIm.UBY2RUg5CjjBu', 'user', '2026-09-27 10:48:25'),
(8, 'fatuma.ali', '$2b$12$TJMTZZm/IMh/GuNTKVmV2eBK2S9foRqzIp.eh6Icsj1oT1usmdYhq', 'user', '2026-09-27 10:48:25'),
(9, 'george.mrema', '$2b$12$nQEgTPnmAs7Tpx.2t1VR9uo30mU6zgqveMMu0ezZTC.bJ1QesVpZ2', 'user', '2026-09-27 10:48:26'),
(10, 'halima.said', '$2b$12$MuxfhN9gEGp5zhuZui2z9uWjCO9aHMu65EBNFzgkas/oE1uAuC16.', 'user', '2026-09-27 10:48:26'),
(11, 'ibrahim.omari', '$2b$12$DD1epGHmtV9VC6CRssKNiuX5R9Ic4sDvkDLxL28P3gffqMcaH/sIe', 'user', '2026-09-27 10:48:27'),
(12, 'janeth.kweka', '$2b$12$XGUggT8vskp.7QvkM7HA9.91Rs1TrCN0WnleBH3/m0k2Ot8FLJDWS', 'user', '2026-09-27 10:48:27'),
(13, 'kelvin.mashauri', '$2b$12$dCC41qyP6JcNJbRLU70asuG5sJlR3PVoS.glIgtV2cxezce7FVcsK', 'user', '2026-09-27 10:48:27'),
(14, 'lucy.moshi', '$2b$12$JLZ5Fs.3uy2rHDYjhE7.Se2aVzwMQXh4fyz9rChBERHFSsWR0q62S', 'user', '2026-09-27 10:48:28'),
(15, 'mariam.hamisi', '$2b$12$ePYANIEfuHlYwQqXTstT7etk1KbjTro6s8uVMW6QcUZCXw8fvG2DG', 'user', '2026-09-27 10:48:28'),
(16, 'neema.joseph', '$2b$12$sQDz.6QRBtwvVB.7JLnD5emaHWfwcVJYzEAh3K2XMLKQQ6LFLSXUS', 'user', '2026-09-27 10:48:29'),
(17, 'oscar.massawe', '$2b$12$2SUsB5DLWv265SgO.ct0V.IqIkJi5HYSGL84GnI6hpmuPCYARzbv.', 'user', '2026-09-27 10:48:29'),
(18, 'paul.matei', '$2b$12$4xhcDKi8pC7RWzlsbUPnTu9u0gUK.Fqq9xV4CXLei5f4bCMAIOEC6', 'user', '2026-09-27 10:48:29'),
(20, 'steven.kileo', '$2b$12$PRogyUDT88oAj1SqK5gxO.srwCCgPVgG3Llh/ykKC8oIMfCdGfGra', 'admin', '2026-09-27 10:48:30'),
(21, 'teresia.mollel', '$2b$12$p4royuk6ca2IK3la9iyNyOE8zChhu586otWGz0RPTRFH7U9AnAyom', 'user', '2026-09-27 10:48:31'),
(24, 'EAkyoo Vector', '$2b$12$muP5YkFRCEyFcrgpOmnmE.Svx8msPpf6qv.qW9JfxsZvLs7ZXkLna', 'user', '2026-09-27 18:32:23'),
(26, 'Johnson Jonathan', '$2b$12$/pmT2da/uWJxLIt3L3wDmOXZCZLAK4AUuQIvrexEo68g1ES6i/X/q', 'user', '2026-09-28 05:45:45'),
(27, 'James Gris', '$2b$12$J.2SrNiO3.58zXtmJd0yLuvdyRCA.NymKSbSORwh7wJO5L580hgWG', 'user', '2026-09-28 06:04:26'),
(28, 'Denis Deus', '$2b$12$qcY9gF3a8PugYRKImLwhK.3k.FhuJ1BP7zjOfoW46dqezHEr0u7ye', 'user', '2026-09-28 06:25:28');

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_computer_overall_status`
-- (See below for the actual view)
--
CREATE TABLE `vw_computer_overall_status` (
`computer_id` int(11)
,`computer_identifier` varchar(50)
,`computer_type` varchar(50)
,`library_name` varchar(50)
,`room_name` varchar(50)
,`room_type` varchar(50)
,`overall_status` varchar(15)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_faulty_components`
-- (See below for the actual view)
--
CREATE TABLE `vw_faulty_components` (
`library_name` varchar(50)
,`room_name` varchar(50)
,`attached_to_computer` varchar(50)
,`component` varchar(50)
,`component_identifier` varchar(50)
,`brand` varchar(50)
,`model` varchar(50)
,`status_name` varchar(30)
,`last_checked` date
,`remarks` varchar(255)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_printer_status`
-- (See below for the actual view)
--
CREATE TABLE `vw_printer_status` (
`library_name` varchar(50)
,`room_name` varchar(50)
,`printer_identifier` varchar(50)
,`brand` varchar(50)
,`model` varchar(50)
,`printer_type` varchar(30)
,`status_name` varchar(30)
,`remarks` varchar(255)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_room_equipment_summary`
-- (See below for the actual view)
--
CREATE TABLE `vw_room_equipment_summary` (
`library_name` varchar(50)
,`room_name` varchar(50)
,`room_type` varchar(50)
,`total_computers` bigint(21)
,`total_printers` bigint(21)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `vw_spare_components`
-- (See below for the actual view)
--
CREATE TABLE `vw_spare_components` (
`library_name` varchar(50)
,`stored_in` varchar(50)
,`component` varchar(50)
,`component_identifier` varchar(50)
,`brand` varchar(50)
,`model` varchar(50)
,`status_name` varchar(30)
,`remarks` varchar(255)
);

-- --------------------------------------------------------

--
-- Structure for view `vw_computer_overall_status`
--
DROP TABLE IF EXISTS `vw_computer_overall_status`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_computer_overall_status`  AS SELECT `cs`.`computer_id` AS `computer_id`, coalesce(`cs`.`inventory_barcode`,`cs`.`serial_number`) AS `computer_identifier`, `ct2`.`type_name` AS `computer_type`, `l`.`library_name` AS `library_name`, `r`.`room_name` AS `room_name`, `rt`.`type_name` AS `room_type`, CASE WHEN sum(case when `s`.`status_name` = 'Not Functioning' then 1 else 0 end) > 0 THEN 'Not Functioning' WHEN sum(case when `s`.`status_name` = 'Under Repair' then 1 else 0 end) > 0 THEN 'Under Repair' ELSE 'Functioning' END AS `overall_status` FROM ((((((`computer_set` `cs` join `room` `r` on(`cs`.`room_id` = `r`.`room_id`)) join `library` `l` on(`r`.`library_id` = `l`.`library_id`)) join `room_type` `rt` on(`r`.`room_type_id` = `rt`.`room_type_id`)) join `computer_type` `ct2` on(`cs`.`computer_type_id` = `ct2`.`computer_type_id`)) left join `component` `c` on(`c`.`computer_id` = `cs`.`computer_id`)) left join `status` `s` on(`c`.`status_id` = `s`.`status_id`)) GROUP BY `cs`.`computer_id`, coalesce(`cs`.`inventory_barcode`,`cs`.`serial_number`), `ct2`.`type_name`, `l`.`library_name`, `r`.`room_name`, `rt`.`type_name` ;

-- --------------------------------------------------------

--
-- Structure for view `vw_faulty_components`
--
DROP TABLE IF EXISTS `vw_faulty_components`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_faulty_components`  AS SELECT `l`.`library_name` AS `library_name`, `r`.`room_name` AS `room_name`, coalesce(`cs`.`inventory_barcode`,`cs`.`serial_number`,'(standalone/spare)') AS `attached_to_computer`, `ct`.`type_name` AS `component`, coalesce(`c`.`inventory_barcode`,`c`.`serial_number`) AS `component_identifier`, `c`.`brand` AS `brand`, `c`.`model` AS `model`, `s`.`status_name` AS `status_name`, `c`.`last_checked` AS `last_checked`, `c`.`remarks` AS `remarks` FROM (((((`component` `c` join `room` `r` on(`c`.`room_id` = `r`.`room_id`)) join `library` `l` on(`r`.`library_id` = `l`.`library_id`)) join `component_type` `ct` on(`c`.`component_type_id` = `ct`.`component_type_id`)) join `status` `s` on(`c`.`status_id` = `s`.`status_id`)) left join `computer_set` `cs` on(`c`.`computer_id` = `cs`.`computer_id`)) WHERE `s`.`status_name` in ('Not Functioning','Under Repair') ;

-- --------------------------------------------------------

--
-- Structure for view `vw_printer_status`
--
DROP TABLE IF EXISTS `vw_printer_status`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_printer_status`  AS SELECT `l`.`library_name` AS `library_name`, `r`.`room_name` AS `room_name`, coalesce(`p`.`inventory_barcode`,`p`.`serial_number`) AS `printer_identifier`, `p`.`brand` AS `brand`, `p`.`model` AS `model`, `p`.`printer_type` AS `printer_type`, `s`.`status_name` AS `status_name`, `p`.`remarks` AS `remarks` FROM (((`printer` `p` join `room` `r` on(`p`.`room_id` = `r`.`room_id`)) join `library` `l` on(`r`.`library_id` = `l`.`library_id`)) join `status` `s` on(`p`.`status_id` = `s`.`status_id`)) ;

-- --------------------------------------------------------

--
-- Structure for view `vw_room_equipment_summary`
--
DROP TABLE IF EXISTS `vw_room_equipment_summary`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_room_equipment_summary`  AS SELECT `l`.`library_name` AS `library_name`, `r`.`room_name` AS `room_name`, `rt`.`type_name` AS `room_type`, count(distinct `cs`.`computer_id`) AS `total_computers`, count(distinct `p`.`printer_id`) AS `total_printers` FROM ((((`room` `r` join `library` `l` on(`r`.`library_id` = `l`.`library_id`)) join `room_type` `rt` on(`r`.`room_type_id` = `rt`.`room_type_id`)) left join `computer_set` `cs` on(`cs`.`room_id` = `r`.`room_id`)) left join `printer` `p` on(`p`.`room_id` = `r`.`room_id`)) GROUP BY `l`.`library_name`, `r`.`room_name`, `rt`.`type_name` ;

-- --------------------------------------------------------

--
-- Structure for view `vw_spare_components`
--
DROP TABLE IF EXISTS `vw_spare_components`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vw_spare_components`  AS SELECT `l`.`library_name` AS `library_name`, `r`.`room_name` AS `stored_in`, `ct`.`type_name` AS `component`, coalesce(`c`.`inventory_barcode`,`c`.`serial_number`) AS `component_identifier`, `c`.`brand` AS `brand`, `c`.`model` AS `model`, `s`.`status_name` AS `status_name`, `c`.`remarks` AS `remarks` FROM ((((`component` `c` join `room` `r` on(`c`.`room_id` = `r`.`room_id`)) join `library` `l` on(`r`.`library_id` = `l`.`library_id`)) join `component_type` `ct` on(`c`.`component_type_id` = `ct`.`component_type_id`)) join `status` `s` on(`c`.`status_id` = `s`.`status_id`)) WHERE `c`.`computer_id` is null ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `component`
--
ALTER TABLE `component`
  ADD PRIMARY KEY (`component_id`),
  ADD UNIQUE KEY `inventory_barcode` (`inventory_barcode`),
  ADD UNIQUE KEY `serial_number` (`serial_number`),
  ADD KEY `fk_component_computer` (`computer_id`),
  ADD KEY `fk_component_type` (`component_type_id`),
  ADD KEY `fk_component_room` (`room_id`),
  ADD KEY `fk_component_status` (`status_id`);

--
-- Indexes for table `component_type`
--
ALTER TABLE `component_type`
  ADD PRIMARY KEY (`component_type_id`),
  ADD UNIQUE KEY `type_name` (`type_name`);

--
-- Indexes for table `computer_set`
--
ALTER TABLE `computer_set`
  ADD PRIMARY KEY (`computer_id`),
  ADD UNIQUE KEY `inventory_barcode` (`inventory_barcode`),
  ADD UNIQUE KEY `serial_number` (`serial_number`),
  ADD KEY `fk_computer_room` (`room_id`),
  ADD KEY `fk_computer_type` (`computer_type_id`),
  ADD KEY `fk_computer_status` (`status_id`);

--
-- Indexes for table `computer_type`
--
ALTER TABLE `computer_type`
  ADD PRIMARY KEY (`computer_type_id`),
  ADD UNIQUE KEY `type_name` (`type_name`);

--
-- Indexes for table `library`
--
ALTER TABLE `library`
  ADD PRIMARY KEY (`library_id`),
  ADD UNIQUE KEY `library_name` (`library_name`);

--
-- Indexes for table `maintenance_log`
--
ALTER TABLE `maintenance_log`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `fk_log_status` (`resolved_status_id`),
  ADD KEY `fk_log_reported_by` (`reported_by_user_id`);

--
-- Indexes for table `printer`
--
ALTER TABLE `printer`
  ADD PRIMARY KEY (`printer_id`),
  ADD UNIQUE KEY `inventory_barcode` (`inventory_barcode`),
  ADD UNIQUE KEY `serial_number` (`serial_number`),
  ADD KEY `fk_printer_room` (`room_id`),
  ADD KEY `fk_printer_status` (`status_id`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`room_id`),
  ADD UNIQUE KEY `library_id` (`library_id`,`room_name`),
  ADD KEY `fk_room_type` (`room_type_id`);

--
-- Indexes for table `room_type`
--
ALTER TABLE `room_type`
  ADD PRIMARY KEY (`room_type_id`),
  ADD UNIQUE KEY `type_name` (`type_name`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`status_id`),
  ADD UNIQUE KEY `status_name` (`status_name`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `component`
--
ALTER TABLE `component`
  MODIFY `component_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `component_type`
--
ALTER TABLE `component_type`
  MODIFY `component_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `computer_set`
--
ALTER TABLE `computer_set`
  MODIFY `computer_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `computer_type`
--
ALTER TABLE `computer_type`
  MODIFY `computer_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `library`
--
ALTER TABLE `library`
  MODIFY `library_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `maintenance_log`
--
ALTER TABLE `maintenance_log`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `printer`
--
ALTER TABLE `printer`
  MODIFY `printer_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `room`
--
ALTER TABLE `room`
  MODIFY `room_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `room_type`
--
ALTER TABLE `room_type`
  MODIFY `room_type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
  MODIFY `status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2011;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `component`
--
ALTER TABLE `component`
  ADD CONSTRAINT `fk_component_computer` FOREIGN KEY (`computer_id`) REFERENCES `computer_set` (`computer_id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_component_room` FOREIGN KEY (`room_id`) REFERENCES `room` (`room_id`),
  ADD CONSTRAINT `fk_component_status` FOREIGN KEY (`status_id`) REFERENCES `status` (`status_id`),
  ADD CONSTRAINT `fk_component_type` FOREIGN KEY (`component_type_id`) REFERENCES `component_type` (`component_type_id`);

--
-- Constraints for table `computer_set`
--
ALTER TABLE `computer_set`
  ADD CONSTRAINT `fk_computer_room` FOREIGN KEY (`room_id`) REFERENCES `room` (`room_id`),
  ADD CONSTRAINT `fk_computer_status` FOREIGN KEY (`status_id`) REFERENCES `status` (`status_id`),
  ADD CONSTRAINT `fk_computer_type` FOREIGN KEY (`computer_type_id`) REFERENCES `computer_type` (`computer_type_id`);

--
-- Constraints for table `maintenance_log`
--
ALTER TABLE `maintenance_log`
  ADD CONSTRAINT `fk_log_reported_by` FOREIGN KEY (`reported_by_user_id`) REFERENCES `users` (`user_id`) ON DELETE SET NULL,
  ADD CONSTRAINT `fk_log_status` FOREIGN KEY (`resolved_status_id`) REFERENCES `status` (`status_id`);

--
-- Constraints for table `printer`
--
ALTER TABLE `printer`
  ADD CONSTRAINT `fk_printer_room` FOREIGN KEY (`room_id`) REFERENCES `room` (`room_id`),
  ADD CONSTRAINT `fk_printer_status` FOREIGN KEY (`status_id`) REFERENCES `status` (`status_id`);

--
-- Constraints for table `room`
--
ALTER TABLE `room`
  ADD CONSTRAINT `fk_room_library` FOREIGN KEY (`library_id`) REFERENCES `library` (`library_id`),
  ADD CONSTRAINT `fk_room_type` FOREIGN KEY (`room_type_id`) REFERENCES `room_type` (`room_type_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
