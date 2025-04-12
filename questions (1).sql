-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 12, 2025 at 05:26 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pquestions`
--

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `sno` int(11) NOT NULL,
  `question` text NOT NULL,
  `op1` varchar(30) NOT NULL,
  `op2` varchar(30) NOT NULL,
  `op3` varchar(30) NOT NULL,
  `op4` varchar(30) NOT NULL,
  `ans` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`sno`, `question`, `op1`, `op2`, `op3`, `op4`, `ans`) VALUES
(1, 'Which of the following newspapers/journals was from Maharashtra?', ' Sarathi', ' Sandhya', ' Kranti', ' Atmashakti', 'op3'),
(2, 'Who among the following was not a member of the Congress Socialist Party, although he encouraged and blessed its formation?', ' Jayaprakash Narayan', ' Acharya Narendra Dev', ' Achyuta Patwardhan', ' Jawaharlal Nehru', 'op4'),
(3, 'Who said \'the congress movement was neither inspired by the people nor devised or planned by them?\'', ' Lord Curzon', ' Lord Dufferin', ' Lala Lajpat Rai', ' Sir Syed Ahmad Khan', 'op3'),
(4, 'Which of the following organizations/persons did not approve of the Quit India Movement?', ' B.R. Ambedkar', ' Hindu Mahasabha', ' Muslim League', ' All of the above', 'op4'),
(5, 'The British Government introduced the portfolio system for the first time in', ' 1861', ' 1892', ' 1853', ' 1858', 'op1'),
(6, 'What was the early capital of the Portuguese in India?', ' Culient', ' Cannanore', ' Goa', ' Cochin', 'op4'),
(7, 'Who said on Gandhiji\'s death \"The light has gone out of our lives?\"', ' S. Radha Krishnan', ' Bidhan Chandra Roy', ' J. L. Nehru', ' Rajendra Prasad', 'op3'),
(8, 'When was the All-India Kisan Sabha formed?', ' 1928', ' 1936', ' 1991', ' 1920', 'op2'),
(9, 'The first free university in India, completely independent of the Government and receiving no grant from it was', ' Women\'s University, Pune', ' Benaras Hindu University', ' Vishva Bharati, Shantiniket', ' Aligarh Muslim University', 'op3'),
(10, 'The Indian Association played an important role in arousing national consciousness through the formation of the', ' Indian National Conference', ' British India Association', ' Indian National Congress', ' Bengal British Indian Socie', 'op1'),
(11, 'Who was the founder of secret society Abhinav Bharat?', ' Ganesh Savarkar', ' Damodar Chapek', ' Naren Bhattacharji', ' Jatin Mukherji', 'op1'),
(12, 'Who is generally acknowledged as the pioneer of local self-Government in modern India?', ' M.K.Gandlii', ' Curzon', ' Ripon', ' Hardinge-I', 'op3'),
(13, 'Who was the first to attempt decentralization of financial administration?', ' Curzon', ' Lytton', ' Ripon', ' Mayo', 'op4'),
(14, 'Subhas Chandra Bose fought the presidential elections in 1939 on the ground that', ' He was opposed to Gandhiji', ' He favored an aggressive p', ' He did not like the nomina', ' He pleaded for elections i', 'op4'),
(15, 'Who described Bal Gangadhar Tilak as the father of Indian unrest', ' Minto-II', ' Chelmsford', ' Valentine Chirol', ' Disrachi', 'op3'),
(16, 'Who said: This orderly disciplined anarchy should go, and if as a result there is complete lawlessness I would risk it?', ' Rajagopalachari', ' Vallab Bhai Patel', ' Jawaharlal Nehru', ' Mahatma Gandhi', 'op4'),
(17, 'What is Asthavana?', ' One-third of the produce o', ' House-tax', ' Land revenue department', ' A type of rice', 'op3'),
(18, 'Who was the founder of the Sultanate of Madurai?', ' Nusrat Shah', ' Dilwar Khan', ' Jalaluddin Ahsan', ' Hussain Shah', 'op3'),
(19, 'The Whitley Commission was concerned with', ' Public Health', 'Reorganization of Civil Ser', ' Labour', ' Education', 'op3'),
(20, 'Which of the following pairs are correctly matched?', ' Jhansi - Sir Hugh Rose', ' Lucknow - Major General Ha', ' Banaras - Sir Colin Campbe', ' Kanpur - Brigadier General', 'op1'),
(21, 'When and where the song Tande Mataram was first sung, (by Rabindranath Tagore)?', ' At Santiniketan Ashrams in', ' At Calcutta Session of the', ' On July 19,1905 at Calcutt', ' At Calcutta Town Hall on A', 'op2'),
(22, 'Gadar party was founded in 1913 at', ' Calcutta', ' San Francisco', ' Bombay', ' Punjab', 'op2'),
(23, 'Who founded Swadeshi Bhandar in 1897?', ' Mahatma Gandhi', ' Bipin Chandra Pal', ' Sarala Devi', ' Rabindranath Tagore', 'op4'),
(24, 'Who gave the slogan Inquilab Zindabad?', ' S. C. Bose', ' M. K. Gandhi', ' Bhagat Singh', ' Harriet Mohani', 'op3'),
(25, 'Who announced Queen Victoria as the Crown of India?', ' Lord Lytton', ' Lord Hastings', ' Lord Wellesley', ' Lord Cornwallis', 'op1'),
(26, 'The Indian National Army (I.N.A.) came into existence in 1943 in', ' Then Barma', ' Then Malaya', ' Singapore', ' Japan', 'op3'),
(27, 'Who was the first Indian woman to become the President of Indian National Congress?', ' Sarojini Naidu', ' Vijayalakshmi Pandit', ' Aruna Asaf Ali', ' Sucheta Kripalani', 'op1'),
(28, 'Which of the following is not a principal tool of the Early Stone Age?', ' Cleaver', ' Chopper', ' Scrapper', ' Handaxe', 'op3'),
(29, 'In which year the Indian capitalist class organized itself under the banner of FICCI?', ' 1930', ' 1932', ' 1922', ' 1927', 'op4'),
(30, 'What is the name of the newspaper published by the Indian Muslim League?', ' Star of India', ' Dawn', ' Quam', ' Inquilab', 'op1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
