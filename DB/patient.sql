-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 27, 2021 at 02:18 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.3.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `patientrecordsystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `Admin_ID` varchar(30) NOT NULL,
  `Admin_Name` varchar(30) NOT NULL,
  `Admin_Surname` varchar(30) NOT NULL,
  `Admin_Contact_Number` varchar(10) NOT NULL,
  `Admin_Email` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `Appointment_ID` int(30) NOT NULL,
  `Patient_ID` varchar(30) NOT NULL,
  `Doctor_ID` varchar(30) NOT NULL,
  `Appointment_Facility` varchar(150) NOT NULL,
  `Appointment_Date` datetime NOT NULL,
  `Appointment_Time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `Doctor_ID` varchar(30) NOT NULL,
  `Doctor_Name` varchar(30) NOT NULL,
  `Doctor_Surname` varchar(30) NOT NULL,
  `Doctor_Email` varchar(30) NOT NULL,
  `Specialty` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `medical_record`
--

CREATE TABLE `medical_record` (
  `Record_ID` varchar(30) NOT NULL,
  `Patient_ID` varchar(30) NOT NULL,
  `Doctor_ID` varchar(30) NOT NULL,
  `Diagnosis` varchar(150) NOT NULL,
  `Pre-Existing_Conditions?` tinyint(1) NOT NULL,
  `Prescription` varchar(150) NOT NULL,
  `Last_Appointment` datetime NOT NULL,
  `Next_Appointment` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `Patient_ID` varchar(30) NOT NULL,
  `Patient_Name` varchar(30) NOT NULL,
  `Patient_Surname` varchar(30) NOT NULL,
  `Patient_Address` varchar(30) NOT NULL,
  `Patient_Email` varchar(100) NOT NULL,
  `Contact_Number` varchar(10) NOT NULL,
  `Gender` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `patient_file`
--

CREATE TABLE `patient_file` (
  `PatientID` varchar(30) NOT NULL,
  `Medical_ID` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`Admin_ID`);

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`Appointment_ID`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`Doctor_ID`);

--
-- Indexes for table `medical_record`
--
ALTER TABLE `medical_record`
  ADD PRIMARY KEY (`Record_ID`,`Patient_ID`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`Patient_ID`);

--
-- Indexes for table `patient_file`
--
ALTER TABLE `patient_file`
  ADD PRIMARY KEY (`PatientID`,`Medical_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `Appointment_ID` int(30) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
