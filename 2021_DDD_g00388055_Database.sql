-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 27, 2021 at 03:59 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dental_pratice`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `addId` varchar(9) NOT NULL,
  `addressLine1` varchar(50) NOT NULL,
  `addressLine2` varchar(50) DEFAULT NULL,
  `town` varchar(50) NOT NULL,
  `county` varchar(50) NOT NULL,
  `eircode` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`addId`, `addressLine1`, `addressLine2`, `town`, `county`, `eircode`) VALUES
('add000001', '4 Kilmoney Rd Lower', 'Kilmoney', 'Carrigaline', 'Cork', 'P43 WA46'),
('add000002', 'Western Rd', 'Mardyke', 'Cork City', 'Cork', NULL),
('add000003', '9 Bluebell Lane', 'Forest Hill', 'Carrigaline', 'Cork', 'P43 CK46'),
('add000004', '10 Bluebell Lane', 'Forest Hill', 'Carrigaline', 'Cork', 'P43 CK35'),
('add000005', '112 Brightwater', NULL, 'Crosshaven', 'Cork', 'P43 CX32'),
('add000006', '54 Brightwater', NULL, 'Crosshaven', 'Cork', 'P43 Y943'),
('add000007', '172 Harty\'s Quay', 'Rochestown Rd', 'Rochestown', 'Cork', 'T12 XV7T'),
('add000008', '171 Harty\'s Quay', 'Rochestown Rd', 'Rochestown', 'Cork', 'T12 CVH3'),
('add000009', '43 Rovers Row', NULL, 'Douglas', 'Cork', 'P43 12S4'),
('add000010', '99 Ref Baloon Warf', NULL, 'Ringaskiddy', 'Cork', 'P43 RI01'),
('add000011', '44 Bluebell Lane', NULL, 'Carrigaline', 'Cork', 'P44 CK99'),
('add000012', '123 Fake St', 'Patricks Hill', 'Cork City', 'Cork', 'T12 K1K1'),
('add000013', '18 Calm Meddows', NULL, 'Cobh', 'Cork', 'C18 9812'),
('add000014', '45 Manor Wood', NULL, 'Templebreedy', 'Cork', 'T41 PV12'),
('add000015', '6 Beech Grove Lawns', 'Roberts Cove', 'Crosshaven', 'Cork', 'P43 CK99'),
('add000016', '99 Brightwater', NULL, 'Crosshaven', 'Cork', 'P43 W12S'),
('add000017', '92 Blackrock Rd', '', 'Blackrock', 'Cork', 'P43 CK88'),
('add000018', '99 Main St', NULL, 'Carrigaline', 'Cork', 'P43 CK53'),
('add000019', '4 Ringaskiddy Way', NULL, 'Ringaskiddy', 'Cork', NULL),
('add000020', '26 Calm Meddows', 'Forest Hill', 'Carrigaline', 'Cork', 'P43 YK44');

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `appNumber` varchar(9) NOT NULL,
  `appDate` date NOT NULL,
  `appTime` time NOT NULL,
  `patient` varchar(7) DEFAULT NULL,
  `dentist` varchar(3) DEFAULT NULL,
  `treatment` varchar(8) DEFAULT NULL,
  `referral` varchar(8) DEFAULT NULL,
  `bill` varchar(10) DEFAULT NULL,
  `status` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`appNumber`, `appDate`, `appTime`, `patient`, `dentist`, `treatment`, `referral`, `bill`, `status`) VALUES
('app000001', '2020-04-11', '14:00:00', 'pat0014', 'D01', 'treat001', 'ref00001', 'bill00001', 'STA07'),
('app000002', '2021-04-26', '12:00:00', 'pat0007', 'D01', 'treat002', NULL, 'bill00002', 'STA06');

-- --------------------------------------------------------

--
-- Table structure for table `appstatus`
--

CREATE TABLE `appstatus` (
  `statCode` varchar(5) NOT NULL,
  `Details` varchar(4000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `appstatus`
--

INSERT INTO `appstatus` (`statCode`, `Details`) VALUES
('STA01', 'VACANT'),
('STA02', 'BOOKED'),
('STA03', 'CONFIRMED'),
('STA04', 'CANCLED '),
('STA05', 'LATE CANCELATION\r\n'),
('STA06', 'ATTENDED'),
('STA07', 'REFERRED ');

-- --------------------------------------------------------

--
-- Table structure for table `bill`
--

CREATE TABLE `bill` (
  `billNumber` varchar(10) NOT NULL,
  `billTotal` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bill`
--

INSERT INTO `bill` (`billNumber`, `billTotal`) VALUES
('bill00001', '0.00'),
('bill00002', '45.00');

-- --------------------------------------------------------

--
-- Table structure for table `clinic`
--

CREATE TABLE `clinic` (
  `clinicNumber` varchar(6) NOT NULL,
  `clinicName` varchar(50) NOT NULL,
  `address` varchar(9) DEFAULT NULL,
  `contact` varchar(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `clinic`
--

INSERT INTO `clinic` (`clinicNumber`, `clinicName`, `address`, `contact`) VALUES
('cli001', 'Mulcahy Dental Pratice', 'add000001', 'con000002'),
('cli002', 'Specialist Dental Practice Cork', 'add000002', 'con000004');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `contactCode` varchar(9) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `extension` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`contactCode`, `email`, `phone`, `extension`) VALUES
('con000001', 'drm.mulcahy@clinic.ie', '+353214864800', '4801'),
('con000002', 'reception@clinic.ie', '+353214864800', '4800'),
('con000003', 'mary.mulcahy@email.net', '+353875487425', NULL),
('con000004', 'cork.clinic@specialist.ie', '+353214974900', NULL),
('con000005', NULL, '+353865798421', NULL),
('con000006', 'don.key@email.com', '+353896589658', NULL),
('con000007', 'j.smith@email.com', '+353878965478', NULL),
('con000008', 'm.garcia@outlook.com', NULL, NULL),
('con000009', 'jean.king@email.com', NULL, NULL),
('con000010', 'jerry.tseng@email.com', '+353831234123', NULL),
('con000011', 'd.lewis@email.com', '+353869874521', NULL),
('con000013', 'm.larsson@email.com', '+353894587412', NULL),
('con000014', 'leslie.murphy@email.com', '+353894785632', NULL),
('con000015', 'dan.phelan@email.com', '+353894785631', NULL),
('con000016', 'david.murphy@email.com', '+353894785633', NULL),
('con000017', 'niamh.murphy@email.com', '+353894785650', NULL),
('con000018', 'paul.kavanagh@email.com', '+353894785123', NULL),
('con000019', 'ben.mullaney@email.com', '+353894785456', NULL),
('con000020', 'james.nolan@email.com', '+353894785789', NULL),
('con000021', 'aoife.barry@email.com', '+353894785987', NULL),
('con000022', 's.crumplin@email.com', '+353894785654', NULL),
('con000023', 'marie.mcmahon@email.com', '+353894785321', NULL),
('con000024', 'james.johnson@email.com', '+353865897459', NULL),
('con000025', 'schmitt.c@email.com', NULL, NULL),
('con000026', 'cat.wheelan@email.com', '+353864268745', NULL),
('con000027', 's.tyrrell@email.com', '+353869547852', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `dentist`
--

CREATE TABLE `dentist` (
  `dNumber` varchar(3) NOT NULL,
  `employee` varchar(5) NOT NULL,
  `workContact` varchar(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dentist`
--

INSERT INTO `dentist` (`dNumber`, `employee`, `workContact`) VALUES
('D01', 'emp01', 'con000001');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `empNumber` varchar(5) NOT NULL,
  `empLastName` varchar(50) NOT NULL,
  `empFirstName` varchar(50) NOT NULL,
  `homeAdd` varchar(9) DEFAULT NULL,
  `perContact` varchar(9) DEFAULT NULL,
  `clinic` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`empNumber`, `empLastName`, `empFirstName`, `homeAdd`, `perContact`, `clinic`) VALUES
('emp01', 'Mulcahy', 'Mary', 'add000003', 'con000003', 'cli001'),
('emp02', 'Jane', 'Grey', 'add000004', 'con000005', 'cli001');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `patNumber` varchar(7) NOT NULL,
  `parLastName` varchar(50) NOT NULL,
  `patFirstName` varchar(50) NOT NULL,
  `personalDetails` varchar(7) DEFAULT NULL,
  `contact` varchar(9) DEFAULT NULL,
  `address` varchar(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`patNumber`, `parLastName`, `patFirstName`, `personalDetails`, `contact`, `address`) VALUES
('pat0001', 'Don', 'Key', 'per0001', 'con000006', 'add000005'),
('pat0002', 'James', 'Smith', 'per0002', 'con000007', 'add000006'),
('pat0003', 'Marie', 'Garcia', 'per0003', 'con000008', 'add000007'),
('pat0004', 'James', 'Johnson', 'per0004', 'con000023', 'add000008'),
('pat0005', 'Schmitt', 'Carine', 'per0005', 'con000024', 'add000009'),
('pat0006', 'King ', 'Jean', 'per0006', 'con000009', 'add000010'),
('pat0007', 'Ferguson', 'Alex', 'per0007', NULL, 'add000011'),
('pat0008', 'Nelson', 'Susan', 'per0008', NULL, 'add000012'),
('pat0009', 'Keith', 'Franco', 'per0009', NULL, 'add000013'),
('pat0010', 'Tseng', 'Jerry', 'per0010', 'con000010', 'add000014'),
('pat0011', 'Lewis', 'Dan', 'per0011', 'con000011', 'add000015'),
('pat0012', 'Larsson', 'Martha', 'per0012', 'con000013', 'add000016'),
('pat0013', 'Leslie', 'Murphy', 'per0013', 'con000014', 'add000017'),
('pat0014', 'Phelan', 'Dan', 'per0014', 'con000015', 'add000018'),
('pat0015', 'David', 'Murphy', 'per0015', 'con000016', 'add000010'),
('pat0016', 'Niamh', 'Murphy', 'per0016', 'con000017', 'add000006'),
('pat0017', 'Paul', 'Kavanagh', 'per0017', 'con000018', 'add000014'),
('pat0018', 'Ben', 'Mullaney', 'per0018', 'con000019', 'add000009'),
('pat0019', 'James', 'Nolan', 'per0019', 'con000020', 'add000018'),
('pat0020', 'Aoife ', 'Barry', 'per0020', 'con000021', 'add000011'),
('pat0021', 'Sean', 'Crumplin', 'per0021', 'con000022', 'add000015'),
('pat0022', 'Marie', 'McMahon', 'per0022', 'con000023', 'add000018'),
('pat0023', 'James', 'Malone', 'per0023', NULL, 'add000012'),
('pat0024', 'Catherine', 'Wheelan', 'per0024', 'con000026', 'add000015'),
('pat0025', 'David', 'Daniels', 'per0025', NULL, 'add000017'),
('pat0026', 'Stephen', 'Tyrrell', NULL, 'con000027', 'add000014');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `payNumber` varchar(9) NOT NULL,
  `bill` varchar(10) DEFAULT NULL,
  `patient` varchar(7) DEFAULT NULL,
  `payType` varchar(4) DEFAULT NULL,
  `payAmount` decimal(10,2) NOT NULL,
  `payDate` date NOT NULL,
  `receivedBy` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`payNumber`, `bill`, `patient`, `payType`, `payAmount`, `payDate`, `receivedBy`) VALUES
('pay000001', 'bill00002', 'pat0007', 'pt01', '45.00', '2021-04-26', 'REC01');

-- --------------------------------------------------------

--
-- Table structure for table `paytype`
--

CREATE TABLE `paytype` (
  `payTypeId` varchar(4) NOT NULL,
  `payTypeDescription` varchar(4000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `paytype`
--

INSERT INTO `paytype` (`payTypeId`, `payTypeDescription`) VALUES
('pt01', 'cash'),
('pt02', 'card'),
('pt03', 'cheque');

-- --------------------------------------------------------

--
-- Table structure for table `personaldetails`
--

CREATE TABLE `personaldetails` (
  `perDetNumber` varchar(7) NOT NULL,
  `DOB` date NOT NULL,
  `PPSN` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `personaldetails`
--

INSERT INTO `personaldetails` (`perDetNumber`, `DOB`, `PPSN`) VALUES
('per0001', '1990-04-16', '123456789A'),
('per0002', '1987-11-23', '987654321A'),
('per0003', '2001-06-22', '56987458A'),
('per0004', '1987-05-11', '578547854D'),
('per0005', '1990-10-27', '58963258S'),
('per0006', '1971-11-06', '256987458S'),
('per0007', '1952-06-22', '254789654w'),
('per0008', '1971-05-06', '568748963f'),
('per0009', '1952-06-22', '896587458c'),
('per0010', '2003-06-20', '123654987s'),
('per0011', '2000-01-01', '123654852s'),
('per0012', '1993-06-22', '852365412s'),
('per0013', '1985-06-23', '895123578c'),
('per0014', '1956-02-22', '452589669x'),
('per0015', '1990-10-27', '2587958v'),
('per0016', '1964-09-20', '25478965s'),
('per0017', '1962-07-27', '254789658c'),
('per0018', '2003-06-20', '598745896v'),
('per0019', '2001-02-14', '258741369g'),
('per0020', '1985-12-25', '258745632c'),
('per0021', '1985-04-23', '988954321A'),
('per0022', '1993-06-22', '54789654v'),
('per0023', '1952-03-11', '86596357v'),
('per0024', '1949-04-21', '123789852i'),
('per0025', '1987-12-01', '963987147g');

-- --------------------------------------------------------

--
-- Table structure for table `receptionist`
--

CREATE TABLE `receptionist` (
  `recNumber` varchar(5) NOT NULL,
  `empNumber` varchar(5) NOT NULL,
  `workContact` varchar(9) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `receptionist`
--

INSERT INTO `receptionist` (`recNumber`, `empNumber`, `workContact`) VALUES
('REC01', 'emp02', 'con000002');

-- --------------------------------------------------------

--
-- Table structure for table `referral`
--

CREATE TABLE `referral` (
  `refNumber` varchar(8) NOT NULL,
  `specialist` varchar(6) DEFAULT NULL,
  `patient` varchar(7) DEFAULT NULL,
  `refStatus` varchar(4000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `referral`
--

INSERT INTO `referral` (`refNumber`, `specialist`, `patient`, `refStatus`) VALUES
('ref00001', 'SPE001', 'pat0014', 'Specialist informed, file sent');

-- --------------------------------------------------------

--
-- Table structure for table `specialist`
--

CREATE TABLE `specialist` (
  `specNumber` varchar(6) NOT NULL,
  `specLastName` varchar(50) NOT NULL,
  `specFirstName` varchar(50) NOT NULL,
  `contact` varchar(9) DEFAULT NULL,
  `clinic` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `specialist`
--

INSERT INTO `specialist` (`specNumber`, `specLastName`, `specFirstName`, `contact`, `clinic`) VALUES
('SPE001', 'Grey', 'Earl', 'con000004', 'cli002');

-- --------------------------------------------------------

--
-- Table structure for table `treatment`
--

CREATE TABLE `treatment` (
  `treatCode` varchar(8) NOT NULL,
  `treatDetails` varchar(4000) NOT NULL,
  `treatCost` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `treatment`
--

INSERT INTO `treatment` (`treatCode`, `treatDetails`, `treatCost`) VALUES
('treat001', 'Examination with PRSI or Medical Card', '0.00'),
('treat002', 'Examination', '45.00'),
('treat003', 'Children’s Exam (under 16’s)', '25.00'),
('treat004', 'Issue of Prescription', '40.00'),
('treat005', 'Small X-Rays', '30.00'),
('treat006', 'OPG X-Ray (Panoramic)', '60.00'),
('treat007', 'Ceph', '60.00'),
('treat008', 'Crown', '750.00'),
('treat009', 'Bridge', '600.00'),
('treat010', 'Bridge (per unit)', '600.00'),
('treat011', 'Veneer', '550.00'),
('treat012', 'Root Canal (Anterior Tooth)', '350.00'),
('treat013', 'Root Canal (Premolar Tooth)', '450.00'),
('treat014', 'Root Canal (Molar Tooth)', '650.00'),
('treat015', 'Consultation (Orthodontics)', '50.00'),
('treat016', 'Orthodontics', '3800.00'),
('treat017', 'Scale and Polish with PRSI', '15.00'),
('treat018', 'Scale and Polish (Dentist)', '70.00'),
('treat019', 'Night Guard', '200.00'),
('treat020', 'Sports Shield', '150.00'),
('treat021', 'Whitening Kit', '250.00'),
('treat022', 'Removable Retainer', '150.00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`addId`);

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`appNumber`),
  ADD KEY `patient` (`patient`),
  ADD KEY `treatment` (`treatment`),
  ADD KEY `dentist` (`dentist`),
  ADD KEY `bill` (`bill`),
  ADD KEY `status` (`status`),
  ADD KEY `referral` (`referral`);

--
-- Indexes for table `appstatus`
--
ALTER TABLE `appstatus`
  ADD PRIMARY KEY (`statCode`);

--
-- Indexes for table `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`billNumber`);

--
-- Indexes for table `clinic`
--
ALTER TABLE `clinic`
  ADD PRIMARY KEY (`clinicNumber`),
  ADD KEY `address` (`address`),
  ADD KEY `contact` (`contact`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`contactCode`);

--
-- Indexes for table `dentist`
--
ALTER TABLE `dentist`
  ADD PRIMARY KEY (`dNumber`),
  ADD KEY `employee` (`employee`),
  ADD KEY `contact` (`workContact`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`empNumber`),
  ADD KEY `address` (`homeAdd`),
  ADD KEY `contact` (`perContact`),
  ADD KEY `clinic` (`clinic`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`patNumber`),
  ADD KEY `address` (`address`),
  ADD KEY `personalDetails` (`personalDetails`),
  ADD KEY `contact` (`contact`);

--
-- Indexes for table `payment`
--
ALTER TABLE `payment`
  ADD PRIMARY KEY (`payNumber`),
  ADD KEY `bill` (`bill`),
  ADD KEY `patient` (`patient`),
  ADD KEY `payType` (`payType`),
  ADD KEY `receivedBy` (`receivedBy`);

--
-- Indexes for table `paytype`
--
ALTER TABLE `paytype`
  ADD PRIMARY KEY (`payTypeId`);

--
-- Indexes for table `personaldetails`
--
ALTER TABLE `personaldetails`
  ADD PRIMARY KEY (`perDetNumber`);

--
-- Indexes for table `receptionist`
--
ALTER TABLE `receptionist`
  ADD PRIMARY KEY (`recNumber`),
  ADD KEY `empNumber` (`empNumber`),
  ADD KEY `workContact` (`workContact`);

--
-- Indexes for table `referral`
--
ALTER TABLE `referral`
  ADD PRIMARY KEY (`refNumber`),
  ADD KEY `specialist` (`specialist`),
  ADD KEY `patient` (`patient`);

--
-- Indexes for table `specialist`
--
ALTER TABLE `specialist`
  ADD PRIMARY KEY (`specNumber`),
  ADD KEY `clinic` (`clinic`),
  ADD KEY `contact` (`contact`);

--
-- Indexes for table `treatment`
--
ALTER TABLE `treatment`
  ADD PRIMARY KEY (`treatCode`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `appointment`
--
ALTER TABLE `appointment`
  ADD CONSTRAINT `appointment_ibfk_1` FOREIGN KEY (`patient`) REFERENCES `patient` (`patNumber`),
  ADD CONSTRAINT `appointment_ibfk_4` FOREIGN KEY (`treatment`) REFERENCES `treatment` (`treatCode`),
  ADD CONSTRAINT `appointment_ibfk_5` FOREIGN KEY (`dentist`) REFERENCES `dentist` (`dNumber`),
  ADD CONSTRAINT `appointment_ibfk_6` FOREIGN KEY (`bill`) REFERENCES `bill` (`billNumber`),
  ADD CONSTRAINT `appointment_ibfk_7` FOREIGN KEY (`status`) REFERENCES `appstatus` (`statCode`),
  ADD CONSTRAINT `appointment_ibfk_8` FOREIGN KEY (`referral`) REFERENCES `referral` (`refNumber`);

--
-- Constraints for table `clinic`
--
ALTER TABLE `clinic`
  ADD CONSTRAINT `clinic_ibfk_1` FOREIGN KEY (`address`) REFERENCES `address` (`addId`),
  ADD CONSTRAINT `clinic_ibfk_2` FOREIGN KEY (`contact`) REFERENCES `contact` (`contactCode`);

--
-- Constraints for table `dentist`
--
ALTER TABLE `dentist`
  ADD CONSTRAINT `dentist_ibfk_1` FOREIGN KEY (`employee`) REFERENCES `employee` (`empNumber`),
  ADD CONSTRAINT `dentist_ibfk_2` FOREIGN KEY (`workContact`) REFERENCES `contact` (`contactCode`);

--
-- Constraints for table `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`homeAdd`) REFERENCES `address` (`addId`),
  ADD CONSTRAINT `employee_ibfk_2` FOREIGN KEY (`perContact`) REFERENCES `contact` (`contactCode`),
  ADD CONSTRAINT `employee_ibfk_3` FOREIGN KEY (`clinic`) REFERENCES `clinic` (`clinicNumber`);

--
-- Constraints for table `patient`
--
ALTER TABLE `patient`
  ADD CONSTRAINT `patient_ibfk_1` FOREIGN KEY (`address`) REFERENCES `address` (`addId`),
  ADD CONSTRAINT `patient_ibfk_2` FOREIGN KEY (`personalDetails`) REFERENCES `personaldetails` (`perDetNumber`),
  ADD CONSTRAINT `patient_ibfk_3` FOREIGN KEY (`contact`) REFERENCES `contact` (`contactCode`);

--
-- Constraints for table `payment`
--
ALTER TABLE `payment`
  ADD CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`bill`) REFERENCES `bill` (`billNumber`),
  ADD CONSTRAINT `payment_ibfk_2` FOREIGN KEY (`patient`) REFERENCES `patient` (`patNumber`),
  ADD CONSTRAINT `payment_ibfk_3` FOREIGN KEY (`payType`) REFERENCES `paytype` (`payTypeId`),
  ADD CONSTRAINT `payment_ibfk_4` FOREIGN KEY (`receivedBy`) REFERENCES `receptionist` (`recNumber`);

--
-- Constraints for table `receptionist`
--
ALTER TABLE `receptionist`
  ADD CONSTRAINT `receptionist_ibfk_1` FOREIGN KEY (`empNumber`) REFERENCES `employee` (`empNumber`),
  ADD CONSTRAINT `receptionist_ibfk_2` FOREIGN KEY (`workContact`) REFERENCES `contact` (`contactCode`);

--
-- Constraints for table `referral`
--
ALTER TABLE `referral`
  ADD CONSTRAINT `referral_ibfk_1` FOREIGN KEY (`specialist`) REFERENCES `specialist` (`specNumber`),
  ADD CONSTRAINT `referral_ibfk_3` FOREIGN KEY (`patient`) REFERENCES `patient` (`patNumber`);

--
-- Constraints for table `specialist`
--
ALTER TABLE `specialist`
  ADD CONSTRAINT `specialist_ibfk_1` FOREIGN KEY (`clinic`) REFERENCES `clinic` (`clinicNumber`),
  ADD CONSTRAINT `specialist_ibfk_2` FOREIGN KEY (`contact`) REFERENCES `contact` (`contactCode`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
