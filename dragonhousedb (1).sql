-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 15, 2023 at 04:33 PM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dragonhousedb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblaccomodation`
--

CREATE TABLE `tblaccomodation` (
  `ACCOMID` int(11) NOT NULL,
  `ACCOMODATION` varchar(30) NOT NULL,
  `ACCOMDESC` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblaccomodation`
--

INSERT INTO `tblaccomodation` (`ACCOMID`, `ACCOMODATION`, `ACCOMDESC`) VALUES
(12, 'Standard Room', 'max 22hrs.'),
(13, 'Travelers Time', 'max of 12hrs.'),
(15, 'Bayanihan Room', 'max 22hrs.');

-- --------------------------------------------------------

--
-- Table structure for table `tblauto`
--

CREATE TABLE `tblauto` (
  `autoid` int(11) NOT NULL,
  `start` int(11) NOT NULL,
  `end` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblauto`
--

INSERT INTO `tblauto` (`autoid`, `start`, `end`) VALUES
(1, 11147, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblcarrental`
--

CREATE TABLE `tblcarrental` (
  `CARID` int(11) NOT NULL,
  `CAR` varchar(50) NOT NULL,
  `CARDESC` varchar(255) NOT NULL,
  `CARIMAGE` varchar(255) NOT NULL,
  `RENT` double NOT NULL,
  `CARNUM` int(11) NOT NULL,
  `OCARNUM` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcarrental`
--

INSERT INTO `tblcarrental` (`CARID`, `CAR`, `CARDESC`, `CARIMAGE`, `RENT`, `CARNUM`, `OCARNUM`) VALUES
(4, 'car', 'Description:', 'cars/202304041342_download (6).jpg', 864, 0, 0),
(5, 'HONDA', 'CAR Description:', 'cars/202304050001_photo-1616455579100-2ceaa4eb2d37.jpg', 321, 0, 0),
(6, 'Swift', 'Swift Description', 'cars/202304050006_download (7).jpg', 213, 0, 0),
(7, 'car2', 'Description:', 'cars/202304050009_download (5).jpg', 545, 0, 0),
(8, 'car5645', 'Description:', 'cars/202304050012_download (7).jpg', 3216, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblfirstpartition`
--

CREATE TABLE `tblfirstpartition` (
  `FirstPID` int(11) NOT NULL,
  `FirstPTitle` text NOT NULL,
  `FirstPImage` varchar(99) NOT NULL,
  `FirstPSubTitle` text NOT NULL,
  `FirstPDescription` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblfirstpartition`
--

INSERT INTO `tblfirstpartition` (`FirstPID`, `FirstPTitle`, `FirstPImage`, `FirstPSubTitle`, `FirstPDescription`) VALUES
(1, 'Welcome to Dragon House', '5page-img1.png', 'In our Hotel', 'Located on the hills of Nice, a short distance from the famous Promenade des Anglais, Hotel Anis is one of the hotels in the Costa Azzurra (or Blue Coast) able to satisfy the different needs of its guests with comfort and first rate services. It is only 2 km from the airport and from highway exits. The hotel has a large parking area , a real luxury in a city like Nice.');

-- --------------------------------------------------------

--
-- Table structure for table `tblguest`
--

CREATE TABLE `tblguest` (
  `GUESTID` int(11) NOT NULL,
  `REFNO` int(11) NOT NULL,
  `G_FNAME` varchar(30) NOT NULL,
  `G_LNAME` varchar(30) NOT NULL,
  `G_CITY` varchar(90) NOT NULL,
  `G_ADDRESS` varchar(90) NOT NULL,
  `DBIRTH` date NOT NULL,
  `G_PHONE` varchar(20) NOT NULL,
  `G_NATIONALITY` varchar(30) NOT NULL,
  `G_COMPANY` varchar(90) NOT NULL,
  `G_CADDRESS` varchar(90) NOT NULL,
  `G_TERMS` tinyint(4) NOT NULL,
  `G_EMAIL` varchar(99) NOT NULL,
  `G_UNAME` varchar(255) NOT NULL,
  `G_PASS` varchar(255) NOT NULL,
  `ZIP` int(11) NOT NULL,
  `LOCATION` varchar(125) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblguest`
--

INSERT INTO `tblguest` (`GUESTID`, `REFNO`, `G_FNAME`, `G_LNAME`, `G_CITY`, `G_ADDRESS`, `DBIRTH`, `G_PHONE`, `G_NATIONALITY`, `G_COMPANY`, `G_CADDRESS`, `G_TERMS`, `G_EMAIL`, `G_UNAME`, `G_PASS`, `ZIP`, `LOCATION`) VALUES
(11122, 0, 'ahmed', 'jamal', '', 'xyz', '2023-03-01', '132', 'pakistani', '', '', 1, 'ahmedjamal970@gmail.com', 'ahmed', '1698c2bea6c8000723d5bb70363a8352d846917e', 540000, ''),
(11123, 0, 'arslan', 'rasheed', '', 'xyz', '2023-03-09', '132', 'pakistani', '', '', 1, 'arslan@gmail.com', 'arslan', '8d430d542b869d4cf6470b2c6b3d335ddbfda0ef', 540000, '');

-- --------------------------------------------------------

--
-- Table structure for table `tblhotel`
--

CREATE TABLE `tblhotel` (
  `HOTELID` int(11) NOT NULL,
  `HOTEL` varchar(50) NOT NULL,
  `HOTELIMAGE` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblhotel`
--

INSERT INTO `tblhotel` (`HOTELID`, `HOTEL`, `HOTELIMAGE`) VALUES
(1, 'hotel123', 'hotels/202303281610_download.jpg'),
(2, 'hotel47', 'hotels/202303281611_photo-1566073771259-6a8506099945.jpg'),
(3, 'hotel546', 'hotels/202303290005_download (1).jpg'),
(4, 'hotel48', 'hotels/202304012225_hotel-header-3422738.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tblmeal`
--

CREATE TABLE `tblmeal` (
  `MealID` int(11) NOT NULL,
  `MealType` varchar(90) NOT NULL,
  `MealPrice` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblmeal`
--

INSERT INTO `tblmeal` (`MealID`, `MealType`, `MealPrice`) VALUES
(4, 'Lunch', 10),
(7, 'HB', 10);

-- --------------------------------------------------------

--
-- Table structure for table `tblpayment`
--

CREATE TABLE `tblpayment` (
  `SUMMARYID` int(11) NOT NULL,
  `TRANSDATE` datetime NOT NULL,
  `CONFIRMATIONCODE` varchar(30) NOT NULL,
  `PQTY` int(11) NOT NULL,
  `GUESTID` int(11) NOT NULL,
  `SPRICE` double NOT NULL,
  `MSGVIEW` tinyint(1) NOT NULL,
  `STATUS` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpayment`
--

INSERT INTO `tblpayment` (`SUMMARYID`, `TRANSDATE`, `CONFIRMATIONCODE`, `PQTY`, `GUESTID`, `SPRICE`, `MSGVIEW`, `STATUS`) VALUES
(7, '2023-04-07 09:31:24', 'kvvyit76', 1, 11123, 864, 1, 'Confirmed'),
(8, '2023-04-07 09:32:21', '7qyt3fs2', 1, 11123, 786, 1, 'Confirmed'),
(9, '2023-04-07 09:38:02', '0waju3em', 1, 11123, 9653, 0, 'Confirmed'),
(10, '2023-04-07 09:38:11', '7o4jf3a4', 1, 11123, 864, 0, 'Confirmed'),
(11, '2023-04-07 09:42:34', '3b82i62k', 2, 11123, 1077, 0, 'Confirmed'),
(12, '2023-04-07 09:45:45', 'wijvpkoa', 1, 11123, 864, 0, 'Pending'),
(13, '2023-04-07 09:51:50', 'dtb824gb', 1, 11123, 786, 0, 'Pending'),
(14, '2023-04-07 09:52:31', '20fgynyp', 1, 11123, 864, 0, 'Pending'),
(15, '2023-04-07 09:56:05', 'uqqps5yc', 1, 11123, 545, 0, 'Pending'),
(16, '2023-04-08 01:32:40', 'ok2es6st', 1, 11123, 864, 0, 'Pending'),
(17, '2023-04-08 02:35:45', 'etkr4kjc', 2, 11123, 3301, 0, 'Pending'),
(18, '2023-04-08 02:36:34', 'cebb64sj', 1, 11123, 4564, 0, 'Pending'),
(19, '2023-04-08 03:05:08', 'dq8yaz2a', 2, 11123, 1331, 0, 'Confirmed');

-- --------------------------------------------------------

--
-- Table structure for table `tblpayments`
--

CREATE TABLE `tblpayments` (
  `SUMMARYID` int(11) NOT NULL,
  `TRANSDATE` datetime(6) DEFAULT NULL,
  `CONFIRMATIONCODE` varchar(30) DEFAULT NULL,
  `PQTY` int(11) DEFAULT NULL,
  `GUESTID` int(11) DEFAULT NULL,
  `SPRICE` double DEFAULT NULL,
  `MSGVIEW` tinyint(1) DEFAULT NULL,
  `STATUS` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpayments`
--

INSERT INTO `tblpayments` (`SUMMARYID`, `TRANSDATE`, `CONFIRMATIONCODE`, `PQTY`, `GUESTID`, `SPRICE`, `MSGVIEW`, `STATUS`) VALUES
(1, '2023-04-08 01:33:35.000000', 'pifwp65m', 1, 11123, 864, 0, 'Pending'),
(2, '2023-04-08 02:01:13.000000', 'g0qvk4zy', 1, 11123, 3216, 0, 'Pending'),
(3, '2023-04-08 02:27:44.000000', 'pkud5ad8', 2, 11123, 534, 0, 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `tblreservation`
--

CREATE TABLE `tblreservation` (
  `RESERVEID` int(11) NOT NULL,
  `CONFIRMATIONCODE` varchar(50) NOT NULL,
  `TRANSDATE` date NOT NULL,
  `ROOMID` int(11) NOT NULL,
  `CARID` int(11) NOT NULL,
  `ARRIVAL` datetime NOT NULL,
  `DEPARTURE` datetime NOT NULL,
  `RPRICE` double NOT NULL,
  `GUESTID` int(11) NOT NULL,
  `PRORPOSE` varchar(30) NOT NULL,
  `STATUS` varchar(11) NOT NULL,
  `BOOKDATE` datetime NOT NULL,
  `REMARKS` text NOT NULL,
  `USERID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblreservation`
--

INSERT INTO `tblreservation` (`RESERVEID`, `CONFIRMATIONCODE`, `TRANSDATE`, `ROOMID`, `CARID`, `ARRIVAL`, `DEPARTURE`, `RPRICE`, `GUESTID`, `PRORPOSE`, `STATUS`, `BOOKDATE`, `REMARKS`, `USERID`) VALUES
(10, 'kvvyit76', '2023-04-07', 4, 0, '2023-04-07 00:00:00', '2023-04-07 00:00:00', 864, 11123, 'Travel', 'Confirmed', '0000-00-00 00:00:00', '', 0),
(11, '7qyt3fs2', '2023-04-07', 21, 0, '2023-04-07 00:00:00', '2023-04-07 00:00:00', 786, 11123, 'Travel', 'Confirmed', '0000-00-00 00:00:00', '', 0),
(12, '0waju3em', '2023-04-07', 22, 0, '2023-04-07 00:00:00', '2023-04-07 00:00:00', 9653, 11123, 'Travel', 'Confirmed', '0000-00-00 00:00:00', '', 0),
(13, '7o4jf3a4', '2023-04-07', 4, 0, '2023-04-07 00:00:00', '2023-04-07 00:00:00', 864, 11123, 'Travel', 'Confirmed', '0000-00-00 00:00:00', '', 0),
(14, '3b82i62k', '2023-04-07', 4, 0, '2023-04-07 00:00:00', '2023-04-07 00:00:00', 864, 11123, 'Travel', 'Confirmed', '0000-00-00 00:00:00', '', 0),
(15, '3b82i62k', '2023-04-07', 6, 0, '2023-04-07 00:00:00', '2023-04-07 00:00:00', 213, 11123, 'Travel', 'Confirmed', '0000-00-00 00:00:00', '', 0),
(16, 'wijvpkoa', '2023-04-07', 4, 0, '2023-04-07 00:00:00', '2023-04-07 00:00:00', 864, 11123, 'Travel', 'Pending', '0000-00-00 00:00:00', '', 0),
(17, 'dtb824gb', '2023-04-07', 21, 0, '2023-04-07 00:00:00', '2023-04-07 00:00:00', 786, 11123, 'Travel', 'Pending', '0000-00-00 00:00:00', '', 0),
(18, '20fgynyp', '2023-04-07', 4, 0, '2023-04-07 00:00:00', '2023-04-07 00:00:00', 864, 11123, 'Travel', 'Pending', '0000-00-00 00:00:00', '', 0),
(19, 'uqqps5yc', '2023-04-07', 7, 0, '2023-04-07 00:00:00', '2023-04-07 00:00:00', 545, 11123, 'Travel', 'Pending', '0000-00-00 00:00:00', '', 0),
(20, 'ok2es6st', '2023-04-08', 4, 0, '2023-04-08 00:00:00', '2023-04-08 00:00:00', 864, 11123, 'Travel', 'Pending', '0000-00-00 00:00:00', '', 0),
(21, 'pifwp65m', '2023-04-08', 4, 0, '2023-04-08 00:00:00', '2023-04-08 00:00:00', 864, 11123, 'Travel', 'Pending', '0000-00-00 00:00:00', '', 0),
(22, 'g0qvk4zy', '2023-04-08', 0, 8, '2023-04-08 00:00:00', '2023-04-08 00:00:00', 3216, 11123, 'Travel', 'Pending', '0000-00-00 00:00:00', '', 0),
(23, 'pkud5ad8', '2023-04-08', 0, 5, '2023-04-08 00:00:00', '2023-04-08 00:00:00', 321, 11123, 'Travel', 'Pending', '0000-00-00 00:00:00', '', 0),
(24, 'pkud5ad8', '2023-04-08', 0, 6, '2023-04-08 00:00:00', '2023-04-08 00:00:00', 213, 11123, 'Travel', 'Pending', '0000-00-00 00:00:00', '', 0),
(25, 'etkr4kjc', '2023-04-08', 8, 0, '2023-04-08 00:00:00', '2023-04-08 00:00:00', 3216, 11123, 'Travel', 'Pending', '0000-00-00 00:00:00', '', 0),
(26, 'etkr4kjc', '2023-04-08', 25, 0, '2023-04-08 00:00:00', '2023-04-08 00:00:00', 85, 11123, 'Travel', 'Pending', '0000-00-00 00:00:00', '', 0),
(27, 'cebb64sj', '2023-04-08', 26, 0, '2023-04-08 00:00:00', '2023-04-08 00:00:00', 4564, 11123, 'Travel', 'Pending', '0000-00-00 00:00:00', '', 0),
(28, 'dq8yaz2a', '2023-04-08', 7, 0, '2023-04-08 00:00:00', '2023-04-08 00:00:00', 545, 11123, 'Travel', 'Confirmed', '0000-00-00 00:00:00', '', 0),
(29, 'dq8yaz2a', '2023-04-08', 21, 0, '2023-04-08 00:00:00', '2023-04-08 00:00:00', 786, 11123, 'Travel', 'Confirmed', '0000-00-00 00:00:00', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblreservations`
--

CREATE TABLE `tblreservations` (
  `RESERVEID` int(11) NOT NULL,
  `CONFIRMATIONCODE` varchar(50) NOT NULL,
  `TRANSDATE` date NOT NULL,
  `CARID` int(11) NOT NULL,
  `ARRIVAL` datetime(6) NOT NULL,
  `DEPARTURE` datetime(6) NOT NULL,
  `RPRICE` double NOT NULL,
  `GUESTID` int(11) NOT NULL,
  `PRORPOSE` varchar(30) NOT NULL,
  `STATUS` varchar(11) NOT NULL,
  `BOOKDATE` datetime(6) NOT NULL,
  `REMARKS` text NOT NULL,
  `USERID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblroom`
--

CREATE TABLE `tblroom` (
  `ROOMID` int(11) NOT NULL,
  `ROOMNUM` int(11) NOT NULL,
  `ACCOMID` int(11) NOT NULL,
  `HOTELID` int(11) NOT NULL,
  `ROOM` varchar(30) NOT NULL,
  `ROOMDESC` varchar(255) NOT NULL,
  `NUMPERSON` int(11) NOT NULL,
  `PRICE` double NOT NULL,
  `ROOMIMAGE` varchar(255) NOT NULL,
  `OROOMNUM` int(11) NOT NULL,
  `RoomTypeID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblroom`
--

INSERT INTO `tblroom` (`ROOMID`, `ROOMNUM`, `ACCOMID`, `HOTELID`, `ROOM`, `ROOMDESC`, `NUMPERSON`, `PRICE`, `ROOMIMAGE`, `OROOMNUM`, `RoomTypeID`) VALUES
(21, -3, 12, 1, 'Room1', 'hell how are you', 6, 786, 'rooms/202304012226_1.jpg', -1, 0),
(22, -3, 13, 2, 'Room2', 'hello who the hell are you?', 2, 9653, 'rooms/202304012228_2.jpg', 1, 0),
(23, 1, 15, 3, 'Room3', 'Description', 3, 65, 'rooms/202304012229_3.jpg', 1, 0),
(24, 1, 12, 4, 'room4', 'hell how are you', 5, 786, 'rooms/202304012229_4.jpg', 1, 0),
(25, 0, 13, 1, 'room5', 'hell how are you', 45, 85, 'rooms/202304012230_202303271518_about.jpg', 1, 0),
(26, 1, 13, 3, 'room6', 'hell how are you', 1, 4564, 'rooms/202304012232_202304012228_2.jpg', 1, 0),
(27, -1, 13, 1, 'Room7', 'hell how are you', 4, 786, 'rooms/202304032021_202304012232_202304012228_2.jpg', 1, 0),
(28, 1, 0, 3, 'ROOM10', 'hell how are you', 10, 469, 'rooms/202304050003_202303311446_download (3).jpg', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tblroomtype`
--

CREATE TABLE `tblroomtype` (
  `RoomTypeID` int(11) NOT NULL,
  `RoomType` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblslideshow`
--

CREATE TABLE `tblslideshow` (
  `SlideID` int(11) NOT NULL,
  `SlideImage` text NOT NULL,
  `SlideCaption` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblslideshow`
--

INSERT INTO `tblslideshow` (`SlideID`, `SlideImage`, `SlideCaption`) VALUES
(15, 'images.jpg', ''),
(16, 'slide-image-3.jpg', ''),
(17, 'header-bg1.jpg', ''),
(18, 'slide-image-3.jpg', ''),
(19, 'Desert.jpg', ''),
(20, 'Koala.jpg', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbltitle`
--

CREATE TABLE `tbltitle` (
  `TItleID` int(11) NOT NULL,
  `Title` text NOT NULL,
  `Subtitle` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbltitle`
--

INSERT INTO `tbltitle` (`TItleID`, `Title`, `Subtitle`) VALUES
(1, 'Dragon House', '24hrs.');

-- --------------------------------------------------------

--
-- Table structure for table `tbluseraccount`
--

CREATE TABLE `tbluseraccount` (
  `USERID` int(11) NOT NULL,
  `UNAME` varchar(30) NOT NULL,
  `USER_NAME` varchar(30) NOT NULL,
  `UPASS` varchar(90) NOT NULL,
  `ROLE` varchar(30) NOT NULL,
  `PHONE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbluseraccount`
--

INSERT INTO `tbluseraccount` (`USERID`, `UNAME`, `USER_NAME`, `UPASS`, `ROLE`, `PHONE`) VALUES
(1, 'Anonymous', 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'Administrator', 912856478);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_setting_contact`
--

CREATE TABLE `tbl_setting_contact` (
  `SetCon_ID` int(11) NOT NULL,
  `SetConLocation` varchar(99) NOT NULL,
  `SetConEmail` varchar(99) NOT NULL,
  `SetConContactNo` varchar(99) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_setting_contact`
--

INSERT INTO `tbl_setting_contact` (`SetCon_ID`, `SetConLocation`, `SetConEmail`, `SetConContactNo`) VALUES
(1, 'Guanzon Street, Kabankalan Catholic College Kabankalan City, 6111 philippines', 'kcc_1927@yahoo.com', '(034)471-24-79');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblaccomodation`
--
ALTER TABLE `tblaccomodation`
  ADD PRIMARY KEY (`ACCOMID`);

--
-- Indexes for table `tblauto`
--
ALTER TABLE `tblauto`
  ADD PRIMARY KEY (`autoid`);

--
-- Indexes for table `tblcarrental`
--
ALTER TABLE `tblcarrental`
  ADD PRIMARY KEY (`CARID`);

--
-- Indexes for table `tblfirstpartition`
--
ALTER TABLE `tblfirstpartition`
  ADD PRIMARY KEY (`FirstPID`);

--
-- Indexes for table `tblguest`
--
ALTER TABLE `tblguest`
  ADD PRIMARY KEY (`GUESTID`);

--
-- Indexes for table `tblhotel`
--
ALTER TABLE `tblhotel`
  ADD PRIMARY KEY (`HOTELID`);

--
-- Indexes for table `tblmeal`
--
ALTER TABLE `tblmeal`
  ADD PRIMARY KEY (`MealID`);

--
-- Indexes for table `tblpayment`
--
ALTER TABLE `tblpayment`
  ADD PRIMARY KEY (`SUMMARYID`),
  ADD UNIQUE KEY `CONFIRMATIONCODE` (`CONFIRMATIONCODE`),
  ADD KEY `GUESTID` (`GUESTID`);

--
-- Indexes for table `tblpayments`
--
ALTER TABLE `tblpayments`
  ADD PRIMARY KEY (`SUMMARYID`);

--
-- Indexes for table `tblreservation`
--
ALTER TABLE `tblreservation`
  ADD PRIMARY KEY (`RESERVEID`),
  ADD KEY `ROOMID` (`ROOMID`),
  ADD KEY `GUESTID` (`GUESTID`),
  ADD KEY `CONFIRMATIONCODE` (`CONFIRMATIONCODE`);

--
-- Indexes for table `tblreservations`
--
ALTER TABLE `tblreservations`
  ADD PRIMARY KEY (`RESERVEID`);

--
-- Indexes for table `tblroom`
--
ALTER TABLE `tblroom`
  ADD PRIMARY KEY (`ROOMID`),
  ADD KEY `ACCOMID` (`ACCOMID`);

--
-- Indexes for table `tblroomtype`
--
ALTER TABLE `tblroomtype`
  ADD PRIMARY KEY (`RoomTypeID`);

--
-- Indexes for table `tblslideshow`
--
ALTER TABLE `tblslideshow`
  ADD PRIMARY KEY (`SlideID`);

--
-- Indexes for table `tbltitle`
--
ALTER TABLE `tbltitle`
  ADD PRIMARY KEY (`TItleID`);

--
-- Indexes for table `tbluseraccount`
--
ALTER TABLE `tbluseraccount`
  ADD PRIMARY KEY (`USERID`);

--
-- Indexes for table `tbl_setting_contact`
--
ALTER TABLE `tbl_setting_contact`
  ADD PRIMARY KEY (`SetCon_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblaccomodation`
--
ALTER TABLE `tblaccomodation`
  MODIFY `ACCOMID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `tblauto`
--
ALTER TABLE `tblauto`
  MODIFY `autoid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tblcarrental`
--
ALTER TABLE `tblcarrental`
  MODIFY `CARID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `tblfirstpartition`
--
ALTER TABLE `tblfirstpartition`
  MODIFY `FirstPID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tblguest`
--
ALTER TABLE `tblguest`
  MODIFY `GUESTID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11124;
--
-- AUTO_INCREMENT for table `tblhotel`
--
ALTER TABLE `tblhotel`
  MODIFY `HOTELID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tblmeal`
--
ALTER TABLE `tblmeal`
  MODIFY `MealID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `tblpayment`
--
ALTER TABLE `tblpayment`
  MODIFY `SUMMARYID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `tblpayments`
--
ALTER TABLE `tblpayments`
  MODIFY `SUMMARYID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tblreservation`
--
ALTER TABLE `tblreservation`
  MODIFY `RESERVEID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `tblreservations`
--
ALTER TABLE `tblreservations`
  MODIFY `RESERVEID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tblroom`
--
ALTER TABLE `tblroom`
  MODIFY `ROOMID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `tblroomtype`
--
ALTER TABLE `tblroomtype`
  MODIFY `RoomTypeID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tblslideshow`
--
ALTER TABLE `tblslideshow`
  MODIFY `SlideID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `tbltitle`
--
ALTER TABLE `tbltitle`
  MODIFY `TItleID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbluseraccount`
--
ALTER TABLE `tbluseraccount`
  MODIFY `USERID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_setting_contact`
--
ALTER TABLE `tbl_setting_contact`
  MODIFY `SetCon_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
