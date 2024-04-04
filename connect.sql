-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 04, 2024 at 04:43 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `connect`
--

-- --------------------------------------------------------

--
-- Table structure for table `grievances`
--

CREATE TABLE `grievances` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `details` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` varchar(20) NOT NULL DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `grievances`
--

INSERT INTO `grievances` (`id`, `name`, `type`, `details`, `created_at`, `status`) VALUES
(3, 'Priya Patel', 'Academic', 'I have not received my grade for the recent assignment despite submitting it on time. I would appreciate it if this issue could be addressed promptly.', '2024-04-03 17:48:58', 'Pending'),
(4, 'Rahul Sharma', 'Administrative', 'There has been a discrepancy in my tuition fee payment. I have already made the payment, but it is not reflecting in my account. Kindly investigate and rectify this issue as soon as possible.', '2024-04-03 17:48:58', 'Pending'),
(5, 'Deepika Singh', 'Technology and IT Support', 'I am facing difficulties accessing the online learning platform. Every time I try to log in, I encounter an error message. Please look into this matter and provide assistance to resolve the technical issue.', '2024-04-03 17:48:58', 'Pending'),
(6, 'Arjun Gupta', 'Campus Facilities and Services', 'The air conditioning system in the library has been malfunctioning for the past few days, making it uncomfortable for students to study. It is essential to fix this issue promptly to maintain a conducive learning environment.', '2024-04-03 17:48:58', 'Pending'),
(7, 'Ananya Singh', 'Other', 'I have noticed instances of plagiarism in one of my courses, which is affecting the academic integrity of the institution. It is imperative to address this issue and take appropriate actions to uphold academic standards.', '2024-04-03 17:48:58', 'Pending'),
(8, 'Aryan Khanna', 'Academic', 'The syllabus provided for the upcoming semester is incomplete, and several topics are missing. This hampers our preparation for the exams. Please revise and update the syllabus.', '2024-04-03 17:48:58', 'Pending'),
(9, 'Neha Sharma', 'Administrative', 'I have been waiting for the issuance of my identity card for over a month now. Without it, I face difficulties accessing various campus facilities. Can you please expedite the process?', '2024-04-03 17:48:58', 'Pending'),
(10, 'Rohan Mehta', 'Technology and IT Support', 'The Wi-Fi connectivity in the hostel is extremely poor, making it impossible to complete online assignments and research work. This issue needs immediate attention and resolution.', '2024-04-03 17:48:58', 'Pending'),
(11, 'Aishwarya Patel', 'Campus Facilities and Services', 'There is a severe shortage of seating arrangements in the cafeteria during peak hours. Many students have to stand or eat hastily due to this. Additional seating needs to be arranged to accommodate all students.', '2024-04-03 17:48:58', 'Pending'),
(12, 'Priya Patel', 'Academic', 'I have not received my grade for the recent assignment despite submitting it on time. I would appreciate it if this issue could be addressed promptly.', '2024-04-03 17:49:32', 'Pending'),
(13, 'Rahul Sharma', 'Administrative', 'There has been a discrepancy in my tuition fee payment. I have already made the payment, but it is not reflecting in my account. Kindly investigate and rectify this issue as soon as possible.', '2024-04-03 17:49:32', 'Pending'),
(14, 'Deepika Singh', 'Technology and IT Support', 'I am facing difficulties accessing the online learning platform. Every time I try to log in, I encounter an error message. Please look into this matter and provide assistance to resolve the technical issue.', '2024-04-03 17:49:32', 'Pending'),
(15, 'Arjun Gupta', 'Campus Facilities and Services', 'The air conditioning system in the library has been malfunctioning for the past few days, making it uncomfortable for students to study. It is essential to fix this issue promptly to maintain a conducive learning environment.', '2024-04-03 17:49:32', 'Pending'),
(16, 'Ananya Singh', 'Other', 'I have noticed instances of plagiarism in one of my courses, which is affecting the academic integrity of the institution. It is imperative to address this issue and take appropriate actions to uphold academic standards.', '2024-04-03 17:49:32', 'Pending'),
(17, 'Aryan Khanna', 'Academic', 'The syllabus provided for the upcoming semester is incomplete, and several topics are missing. This hampers our preparation for the exams. Please revise and update the syllabus.', '2024-04-03 17:49:32', 'Pending'),
(18, 'Neha Sharma', 'Administrative', 'I have been waiting for the issuance of my identity card for over a month now. Without it, I face difficulties accessing various campus facilities. Can you please expedite the process?', '2024-04-03 17:49:32', 'Pending'),
(19, 'Rohan Mehta', 'Technology and IT Support', 'The Wi-Fi connectivity in the hostel is extremely poor, making it impossible to complete online assignments and research work. This issue needs immediate attention and resolution.', '2024-04-03 17:49:32', 'Pending'),
(20, 'Aishwarya Patel', 'Campus Facilities and Services', 'There is a severe shortage of seating arrangements in the cafeteria during peak hours. Many students have to stand or eat hastily due to this. Additional seating needs to be arranged to accommodate all students.', '2024-04-03 17:49:32', 'Pending'),
(21, 'Priya Patel', 'Academic', 'I have not received my grade for the recent assignment despite submitting it on time. I would appreciate it if this issue could be addressed promptly.', '2024-04-03 17:50:19', 'Pending'),
(22, 'rahul', 'Academic', 'hi', '2024-04-03 19:18:07', 'Pending'),
(23, 'rahul', 'Academic', 'dsgserh', '2024-04-03 19:29:56', 'Pending'),
(24, 'rahul soni', 'Academic', 'hello', '2024-04-03 19:30:57', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `college_uid` varchar(50) NOT NULL,
  `course` varchar(50) NOT NULL,
  `phone_number` varchar(15) NOT NULL,
  `branch` varchar(100) NOT NULL,
  `address` text NOT NULL,
  `email` varchar(255) NOT NULL,
  `profile_photo` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `confirm_password` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `college_uid`, `course`, `phone_number`, `branch`, `address`, `email`, `profile_photo`, `password`, `confirm_password`) VALUES
(1, 'Avnit SIngh', '3432345', 'M.Tech', '7654321324', 'Electrical Engineering', 'hgdtrx', 'jrsoni645@gmail.com', 'uploads/rahul.png', NULL, NULL),
(2, 'Avnit SIngh', '3432345', 'M.Tech', '7654321324', 'Electrical Engineering', 'hgdtrx', 'jrsoni645@gmail.com', 'uploads/rahul.png', NULL, NULL),
(3, 'Avnit SIngh', '3432345', 'M.Tech', '7654321324', 'Computer Science', '22', 'sarmistharoy483@gmail.com', 'uploads/rahul.png', '123', NULL),
(4, 'Avnit SIngh', '3432345', 'M.Tech', '7654321324', 'Computer Science', '22', 'sarmistharoy483@gmail.com', 'uploads/rahul.png', '123321', NULL),
(5, 'Avnit SIngh', '12345', 'B.Tech', '7654321324', 'Mechanical Engineering', 'drhyer', 'sarmistharoy483@gmail.com', 'uploads/back.png', '123456', NULL),
(6, 'rahul', '909090', 'B.Sc', '7654321324', 'Mechanical Engineering', 'efw', 'jrsoni645@gmail.com', 'uploads/main.png', '12345', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `grievances`
--
ALTER TABLE `grievances`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `grievances`
--
ALTER TABLE `grievances`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
