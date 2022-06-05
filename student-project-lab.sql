-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 05, 2022 at 09:29 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `student-project-lab`
--

-- --------------------------------------------------------

--
-- Table structure for table `projectdetails`
--

CREATE TABLE `projectdetails` (
  `id` int(11) NOT NULL,
  `project_name` varchar(250) DEFAULT NULL,
  `project_details` varchar(500) DEFAULT NULL,
  `project_group_name` varchar(500) DEFAULT NULL,
  `student1` varchar(200) DEFAULT NULL,
  `student2` varchar(200) DEFAULT NULL,
  `student3` varchar(200) DEFAULT NULL,
  `student4` varchar(250) DEFAULT NULL,
  `status_approval` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `projectdetails`
--

INSERT INTO `projectdetails` (`id`, `project_name`, `project_details`, `project_group_name`, `student1`, `student2`, `student3`, `student4`, `status_approval`) VALUES
(8, 'Coaching-Management ', 'teaching', 'Shikhon', '1888', '1887', 'empty', '567', 'Approved');

-- --------------------------------------------------------

--
-- Table structure for table `studentregistration`
--

CREATE TABLE `studentregistration` (
  `student_name` varchar(250) DEFAULT NULL,
  `student_id` varchar(250) NOT NULL,
  `student_email` varchar(250) DEFAULT NULL,
  `student_pass` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `studentregistration`
--

INSERT INTO `studentregistration` (`student_name`, `student_id`, `student_email`, `student_pass`) VALUES
('jodu', '567', 'rajudev111@gmail.com', '123456'),
('', '67', 'bonnhi.parna@gmail.com', '3');

-- --------------------------------------------------------

--
-- Table structure for table `teacherregistration`
--

CREATE TABLE `teacherregistration` (
  `teacher_name` varchar(250) DEFAULT NULL,
  `teacher_id` varchar(250) NOT NULL,
  `teacher_email` varchar(250) DEFAULT NULL,
  `teacher_pass` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teacherregistration`
--

INSERT INTO `teacherregistration` (`teacher_name`, `teacher_id`, `teacher_email`, `teacher_pass`) VALUES
('admin', '101', 'admin@gmail.com', '34567');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `projectdetails`
--
ALTER TABLE `projectdetails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student4` (`student4`);

--
-- Indexes for table `studentregistration`
--
ALTER TABLE `studentregistration`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `teacherregistration`
--
ALTER TABLE `teacherregistration`
  ADD PRIMARY KEY (`teacher_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `projectdetails`
--
ALTER TABLE `projectdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `projectdetails`
--
ALTER TABLE `projectdetails`
  ADD CONSTRAINT `projectdetails_ibfk_1` FOREIGN KEY (`student4`) REFERENCES `studentregistration` (`student_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
