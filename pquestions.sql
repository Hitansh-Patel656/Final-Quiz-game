-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 12, 2025 at 05:28 PM
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
-- Table structure for table `qaans`
--

CREATE TABLE `qaans` (
  `sno` int(11) NOT NULL,
  `question` text NOT NULL,
  `op1` varchar(30) NOT NULL,
  `op2` varchar(30) NOT NULL,
  `op3` varchar(30) NOT NULL,
  `op4` varchar(30) NOT NULL,
  `ans` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `qaans`
--

INSERT INTO `qaans` (`sno`, `question`, `op1`, `op2`, `op3`, `op4`, `ans`) VALUES
(1, 'Which of the following countries were involved in World War II?', ' Britain', ' France', ' Canada', ' All of the above', 'op4'),
(2, 'The first Industrial Revolution took place in?', ' England', ' USA', ' France', ' Germany', 'op1'),
(3, 'Which was the first country in Asia to have large scale industrialization?', ' Japan', ' China', ' India', ' Iran', 'op2'),
(4, ' Where are the Great Pyramids of Giza located? ', ' West bank of the Nile River', ' East bank of the Nile River', ' Sahara Desert', ' Giza Plateau', 'op1'),
(5, 'Which global organisation was formed after World War II to promote international cooperation and peace?\r\n\r\n', ' United Nations', ' World Health Organisation', ' League of Nations', ' North Atlantic Treaty Organ', 'op1');

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
(1, 'Which of the following newspapers/journals was from Maharashtra?', 'A) Sarathi', 'B) Sandhya', 'C) Kranti', 'D) Atmashakti', 'op3'),
(2, 'Who among the following was not a member of the Congress Socialist Party, although he encouraged and blessed its formation?', 'A) Jayaprakash Narayan', 'B) Acharya Narendra Dev', 'C) Achyuta Patwardhan', 'D) Jawaharlal Nehru', 'op4'),
(3, 'Who said \'the congress movement was neither inspired by the people nor devised or planned by them?\'', 'A) Lord Curzon', 'B) Lord Dufferin', 'C) Lala Lajpat Rai', 'D) Sir Syed Ahmad Khan', 'op3'),
(4, 'Which of the following organizations/persons did not approve of the Quit India Movement?', 'A) B.R. Ambedkar', 'B) Hindu Mahasabha', 'C) Muslim League', 'D) All of the above', 'op4'),
(5, 'The British Government introduced the portfolio system for the first time in', 'A) 1861', 'B) 1892', 'C) 1853', 'D) 1858', 'op1'),
(6, 'What was the early capital of the Portuguese in India?', 'A) Culient', 'B) Cannanore', 'C) Goa', 'D) Cochin', 'op4'),
(7, 'Who said on Gandhiji\'s death \"The light has gone out of our lives?\"', 'A) S. Radha Krishnan', 'B) Bidhan Chandra Roy', 'C) J. L. Nehru', 'D) Rajendra Prasad', 'op3'),
(8, 'When was the All-India Kisan Sabha formed?', 'A) 1928', 'B) 1936', 'C) 1991', 'D) 1920', 'op2'),
(9, 'The first free university in India, completely independent of the Government and receiving no grant from it was', 'A) Women\'s University, Pune', 'B) Benaras Hindu University', 'C) Vishva Bharati, Shantiniket', 'D) Aligarh Muslim University', 'op3'),
(10, 'The Indian Association played an important role in arousing national consciousness through the formation of the', 'A) Indian National Conference', 'B) British India Association', 'C) Indian National Congress', 'D) Bengal British Indian Socie', 'op1'),
(11, 'Who was the founder of secret society Abhinav Bharat?', '(A) Ganesh Savarkar', '(B) Damodar Chapek', '(C) Naren Bhattacharji', '(D) Jatin Mukherji', 'op1'),
(12, 'Who is generally acknowledged as the pioneer of local self-Government in modern India?', '(A) M.K.Gandlii', '(B) Curzon', '(C) Ripon', '(D) Hardinge-I', 'op3'),
(13, 'Who was the first to attempt decentralization of financial administration?', '(A) Curzon', '(B) Lytton', '(C) Ripon', '(D) Mayo', 'op4'),
(14, 'Subhas Chandra Bose fought the presidential elections in 1939 on the ground that', '(A) He was opposed to Gandhiji', '(B) He favored an aggressive p', '(C) He did not like the nomina', '(D) He pleaded for elections i', 'op4'),
(15, 'Who described Bal Gangadhar Tilak as the father of Indian unrest', '(A) Minto-II', '(B) Chelmsford', '(C) Valentine Chirol', '(D) Disrachi', 'op3'),
(16, 'Who said: This orderly disciplined anarchy should go, and if as a result there is complete lawlessness I would risk it?', '(A) Rajagopalachari', '(B) Vallab Bhai Patel', '(C) Jawaharlal Nehru', '(D) Mahatma Gandhi', 'op4'),
(17, 'What is Asthavana?', '(A) One-third of the produce o', '(B) House-tax', '(C) Land revenue department', '(D) A type of rice', 'op3'),
(18, 'Who was the founder of the Sultanate of Madurai?', '(A) Nusrat Shah', '(B) Dilwar Khan', '(C) Jalaluddin Ahsan', '(D) Hussain Shah', 'op3'),
(19, 'The Whitley Commission was concerned with', '(A) Public Health', '(B)Reorganization of Civil Ser', '(C) Labour', '(D) Education', 'op3'),
(20, 'Which of the following pairs are correctly matched?', '(A) Jhansi - Sir Hugh Rose', '(B) Lucknow - Major General Ha', '(C) Banaras - Sir Colin Campbe', '(D) Kanpur - Brigadier General', 'op1'),
(21, 'When and where the song Tande Mataram was first sung, (by Rabindranath Tagore)?', '(A) At Santiniketan Ashrams in', '(B) At Calcutta Session of the', '(C) On July 19,1905 at Calcutt', '(D) At Calcutta Town Hall on A', 'op2'),
(22, 'Gadar party was founded in 1913 at', '(A) Calcutta', '(B) San Francisco', '(C) Bombay', '(D) Punjab', 'op2'),
(23, 'Who founded Swadeshi Bhandar in 1897?', '(A) Mahatma Gandhi', '(B) Bipin Chandra Pal', '(C) Sarala Devi', '(D) Rabindranath Tagore', 'op4'),
(24, 'Who gave the slogan Inquilab Zindabad?', '(A) S. C. Bose', '(B) M. K. Gandhi', '(C) Bhagat Singh', '(D) Harriet Mohani', 'op3'),
(25, 'Who announced Queen Victoria as the Crown of India?', '(A) Lord Lytton', '(B) Lord Hastings', '(C) Lord Wellesley', '(D) Lord Cornwallis', 'op1'),
(26, 'The Indian National Army (I.N.A.) came into existence in 1943 in', '(A) Then Barma', '(B) Then Malaya', '(C) Singapore', '(D) Japan', 'op3'),
(27, 'Who was the first Indian woman to become the President of Indian National Congress?', '(A) Sarojini Naidu', '(B) Vijayalakshmi Pandit', '(C) Aruna Asaf Ali', '(D) Sucheta Kripalani', 'op1'),
(28, 'Which of the following is not a principal tool of the Early Stone Age?', '(A) Cleaver', '(B) Chopper', '(C) Scrapper', '(D) Handaxe', 'op3'),
(29, 'In which year the Indian capitalist class organized itself under the banner of FICCI?', '(A) 1930', '(B) 1932', '(C) 1922', '(D) 1927', 'op4'),
(30, 'What is the name of the newspaper published by the Indian Muslim League?', '(A) Star of India', '(B) Dawn', '(C) Quam', '(D) Inquilab', 'op1'),
(31, 'The first meeting of Indian National Congress was held in Bombay in 1885 A.D. under the leadership of __:', 'A) Dadabhai Naoroji', 'B) Sir C. Sankaran Nair', 'C) Woomesh Chandra Banerjee', 'D) Badruddin Tyabji', 'op1'),
(32, 'Who among the following edited and published the newspaper Indian Mirror in 1861?', 'A) Amitava Ghosh', 'B)Ravindranath Tagore', 'C) Sumit Ganguly', 'D) Manmohan Ghosh and Devendra', 'op4'),
(33, 'The Lucknow session of Indian National Congress that took place in 1916 was presided by__:', 'A) Rashbihari Ghosh', 'B) Ambika Charan Majumdar', 'C) Bhupendra Nath Bose', 'D) None of the above', 'op2'),
(34, 'On which among the following dates, Jallianwala Bagh Massacre took place?', 'A) April 16 1919', 'B) April 13 1919', 'C) April 3 1919', 'D) April 14 1919', 'op2'),
(35, 'Before 26 November 1949, which among the following was the governing law of India?', 'A) The Cabinet Mission Plan', 'B) Government of India Act 193', 'C) Government of India Act 191', 'D) Government of India Act 190', 'op2'),
(36, 'In which year Calcutta Flag designed by Sachindra Prasad Bose unfurled in Calcutta?', 'A) 1904', 'B) 1905', 'C) 1906', 'D) 1907', 'op4'),
(37, 'Who among the following was popularly known as the ‘Frontier Gandhi’?', 'A) Hasrat Mohani', 'B) Maulana Abul Kalam Azad', 'C) Khan Abdul Ghaffar Khan', 'D) Iqbal Khan', 'op3'),
(38, 'Till which of the following years, the appointments of the Civil Services were exclusively done by the Directors of the East India Company?', 'A) 1833', 'B) 1853', 'C) 1857', 'D) 1858', 'op2'),
(39, 'What event is considered the immediate cause of World War I?', 'A) The invasion of Belgium', 'B) The assassination of Archdu', 'C) The bombing of Pearl Harbor', 'D) The rise of Hitler', 'op2'),
(40, ' What was the name of the wall that divided East and West Berlin until 1989?', 'A) Iron Wall', 'B) Great Wall', 'C) Berlin Wall', 'D) Soviet Wall', 'op3'),
(41, 'What major global conflict occurred between 1939 and 1945?', 'A) World War I', 'B) World War II', 'C) Korean War', 'D) Vietnam War', 'op2'),
(42, 'Which war was fought between the North and South in the United States from 1861 to 1865?', ' A) American Civil War', 'B) Revolutionary War', 'C) Spanish-American War', 'D) War of 1812', 'op1'),
(43, 'What was the name of the period of intellectual and cultural growth in Europe during the 14th to 17th century?', 'A) Enlightenment', 'B) Renaissance', 'C) Industrial Revolution', 'D) Reformation', 'op2'),
(44, 'Who was the British Prime Minister during most of World War II?', 'A) Neville Chamberlain', ' B) Winston Churchill', 'C) Clement Attlee', 'D) Harold Macmillan', 'op2'),
(45, ' Where did the Renaissance begin?', ' A) Italy', 'B) France', 'C) England', 'D) Spain', 'op1'),
(46, 'Who discovered America in 1492?', 'A) Vasco da Gama', 'B) Christopher Columbus', 'C) Ferdinand Magellan', 'D)Marco Polo', 'op2'),
(47, 'What was the name of the famous ship that sank in 1912?', 'A) Queen Mary', 'B) Titanic', 'C) Britannic', 'D)Poseidon', 'op2'),
(48, ' Which country built the Great Wall?', 'A) China', 'B) India', 'C) Japan', 'D) Egypt', 'op1'),
(49, 'Who was the first President of the United States?', 'A) Abraham Lincoln', 'B) Thomas Jefferson', 'C) George Washington', 'D) John Adams', 'op3'),
(50, ' In which city were the Olympic Games first held in ancient times?', ' A) Olympia', 'B) Athens', 'C) Rome', 'D) Sparta', 'op1'),
(51, 'What was the name of the war between the Allies and the Axis powers?', 'A) Cold War', 'B. World War II', 'C) Gulf War', 'D) Vietnam War', 'op2'),
(52, 'Who was the famous non-violent leader of India’s independence movement?', 'A) Nehru', 'B) Subhas Chandra Bose', 'C) Mahatma Gandhi', 'D) B. R. Ambedkar', 'op3'),
(53, 'What is the name of the famous tower in Italy that leans?', 'A) Eiffel Tower', 'B) Big Ben', 'C) Leaning Tower of Pisa', 'D) Colosseum', 'op3'),
(54, ' Which country used to be ruled by Pharaohs?', 'A) Egypt', 'B) Greece', 'C) Rome', 'D) China', 'op1'),
(55, ' What year did the Berlin Wall fall, marking the symbolic end of the Cold War?', 'A) 1987', 'B) 1991', 'C) 1989', 'D) 1985', 'op3'),
(56, 'Which empire was known for its road system and capital city, Cuzco?', 'A) Maya', 'B) Inca', 'C) Aztec', 'D) Olmec', 'op2'),
(57, 'Who was the powerful queen of ancient Egypt known for her relationships with Julius Caesar and Mark Antony?', 'A) Nefertiti', 'B) Cleopatra', 'C) Hatshepsut', 'D. Isis', 'op2'),
(58, 'Which ancient Greek philosopher taught Alexander the Great?', 'A) Socrates', 'B) Plato', 'C) Aristotle', 'D)Pythagoras', 'op3'),
(59, 'What type of government did Ancient Rome have before becoming an empire?', 'A) Republic', 'B) Monarchy', 'C) Theocracy', 'D) Oligarchy', 'op1'),
(60, 'The Opium Wars were fought between China and which country?', 'A) France', 'B) Portugal', 'C) Britain', 'D) Russia', 'op3');

-- --------------------------------------------------------

--
-- Table structure for table `questions1`
--

CREATE TABLE `questions1` (
  `sno` int(11) NOT NULL,
  `question` text NOT NULL,
  `op1` varchar(30) NOT NULL,
  `op2` varchar(30) NOT NULL,
  `op3` varchar(30) NOT NULL,
  `op4` varchar(30) NOT NULL,
  `ans` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `questions1`
--

INSERT INTO `questions1` (`sno`, `question`, `op1`, `op2`, `op3`, `op4`, `ans`) VALUES
(1, 'A triangle with all sides of different lengths is called?', 'A) Equilateral Triangle', 'B) Isosceles Triangle', 'C) Scalene Triangle', 'D) Right Triangle', 'op3'),
(2, 'The sum of all interior angles of a quadrilateral is?', 'A) 180°', 'B) 270°', 'C) 360°', 'D) 90°', 'op3'),
(3, 'A line that touches a circle at exactly one point is called?', 'A) Chord', 'B) Tangent', 'C) Secant', 'D) Diameter', 'op2'),
(4, 'How many degrees are in a right angle?', 'A) 180°', 'B) 90°', 'C) 60°', 'D) 45°', 'op2'),
(5, 'If two parallel lines are cut by a transversal, then corresponding angles are?', 'A) Equal', 'B) Supplementary', 'C) Complementary', 'D) None of the above', 'op1'),
(6, 'The diagonals of a rhombus always?', 'A) Are equal', 'B) Bisect each other at right ', 'C) Are perpendicular but not e', 'D) Both B and C', 'op4'),
(7, 'The perpendicular height of a triangle is called?', 'A) Median', 'B) Altitude', 'C) Bisector', 'D) Perpendicular Bisector', 'op2'),
(8, 'If the sides of a triangle are 7 cm, 24 cm, and 25 cm, what type of triangle is it?', 'A) Equilateral', 'B) Isosceles', 'C) Right-angled', 'D) Scalene', 'op3'),
(9, 'The area of a right-angled triangle is 48 cm², and its base is 8 cm. What is its height?', 'A) 6 cm', 'B) 12 cm', 'C) 8 cm', 'D) 10 cm', 'op2'),
(10, 'The sum of the interior angles of a hexagon is?', 'A) 360°', 'B) 540°', 'C) 720°', 'D) 900°', 'op3'),
(11, 'A parallelogram has one angle of 75°. What is the measure of its adjacent angle?', 'A) 105°', 'B) 90°', 'C) 75°', 'D) 285°', 'op1'),
(12, 'The measure of each exterior angle of a regular pentagon is?', 'A) 60°', 'B) 72°', 'C) 108°', 'D) 120°', 'op2'),
(13, 'The area of a sector with a central angle of 90° in a circle of radius 14 cm is?', 'A) 154 cm²', 'B) 308 cm²', 'C) 49 cm²', 'D) 77 cm²', 'op1'),
(14, 'How many diagonals does a hexagon have?', 'A) 6', 'B) 7', 'C) 9', 'D) 15', 'op4'),
(15, 'What is the volume of a sphere with radius 3 cm?', 'A) 36π cm³', 'B) 27π cm³', 'C) 4π cm³', 'D) 36π cm²', 'op1'),
(16, 'The slant height of a cone is 13 cm, and its radius is 5 cm. What is its height?', 'A) 12 cm', 'B) 10 cm', 'C) 15 cm', 'D) 8 cm', 'op1'),
(17, 'A parallelogram has diagonals of lengths 12 cm and 16 cm. What is the length of each half-diagonal?', 'A) 6 cm, 8 cm', 'B) 8 cm, 10 cm', 'C) 10 cm, 12 cm', 'D) 9 cm, 6 cm', 'op1'),
(18, 'If an angle is 5 times its complement, what is the angle?', 'A) 75°', 'B) 72°', 'C) 80°', 'D) 60°', 'op2'),
(19, 'The diagonals of a rhombus are 16 cm and 30 cm. What is its area?', 'A) 120 cm²', 'B) 240 cm²', 'C) 480 cm²', 'D) 150 cm²', 'op2'),
(20, 'If the angles of a triangle are in the ratio 2:3:4, what is the smallest angle?', 'A) 20°', 'B) 40°', 'C) 60°', 'D) 80°', 'op2'),
(21, 'The area of an equilateral triangle with side length 10 cm is?', 'A) 25√3 cm²', 'B) 50 cm²', 'C) 50√3 cm²', 'D) 75 cm²', 'op3'),
(22, 'What is the 8th Fibonacci number?', 'A) 8', 'B) 13', 'C) 21', 'D) 34', 'op3'),
(23, 'What is the ratio of consecutive Fibonacci numbers approaching?', 'A) 2', 'B) 1.414', 'C) 1.618', 'D) 3.14', 'op3'),
(24, 'If F(5) = 5 and F(6) = 8, what is F(7)?', 'A) 10', 'B) 11', 'C) 13', 'D) 15', 'op3'),
(25, 'Which mathematical concept is closely related to the Fibonacci sequence?', 'A) Prime Numbers', 'B) Factorial', 'C) Golden Ratio', 'D) Logarithms', 'op3'),
(26, 'Which theorem states that the sum of the squares of the two shorter sides of a right triangle is equal to the square of the longest side?', 'A) Thales’ theorem', 'B) Pythagoras theorem', 'C) Euclid’s theorem', 'D) Midpoint theorem', 'op2'),
(27, 'A cube has how many vertices?', 'A) 4', 'B) 6', 'C) 8', 'D) 12', 'op3'),
(28, 'The diagonal of a cube with side length 4 cm is:', 'A) 4√2 cm', 'B) 4√3 cm', 'C) 8 cm', 'D) 6√2 cm', 'op2'),
(29, 'The centroid of a triangle divides each median in the ratio:', 'A) 1:1', 'B) 2:1', 'C) 3:2', 'D) 3:1', 'op2'),
(30, 'If the radius of a circle is increased by 50%, the area increases by:', 'A) 50%', 'B) 100%', 'C) 125%', 'D) 225%', 'op3'),
(31, 'What is the area of a rectangle with a length of 7 cm and a width of 4 cm? (Remember, the area of a rectangle is length times width!', 'a) 11 square cm', 'b) 22 square cm', 'c) 28 square cm', 'd) 35 square cm', 'op3'),
(32, 'If you have a square piece of paper and you fold it in half diagonally (corner to opposite corner), what shape do you get?', 'a) Rectangle', 'b) Triangle', 'c) Trapezoid', 'd) Pentagon', 'op2'),
(33, 'Think of a bicycle wheel. If you mark one point on the very edge of the tire, what shape does that point trace as the bicycle moves in a straight line?', 'a) A straight line', 'b) A circle', 'c) A curve that loops (called ', 'd) A spiral', 'op3'),
(34, 'Imagine a line segment connecting two points on a circle. What is the longest possible length this line segment can be?', 'a) The radius', 'b) Half the radius', 'c) The diameter', 'd) The circumference', 'op3'),
(35, 'Imagine you are building a tower with blocks. If you want the tower to stand up straight and not lean, what geometric concept is most important to consider?', 'a) Area', 'b) Perimeter', 'c) Symmetry and balance', 'd) Volume', 'op3'),
(36, 'A rectangular swimming pool is 15 meters long and 8 meters wide. If you walk all the way around the edge of the pool once, how many meters have you walked? (This is the perimeter!)', 'a) 23', 'b) 46', 'c) 60', 'd) 120', 'op2'),
(37, 'Two angles in a triangle measure 55 degrees and 65 degrees. What is the measure of the third angle in degrees? (The angles in a triangle add up to 180 degrees!)', 'a) 50', 'b) 60', 'c) 70', 'd) 80', 'op2'),
(38, 'Which part of a cone is a flat circle?', 'a) The pointed top (apex)', 'b) The slanted side', 'c) The base', 'd) The height', 'op3'),
(39, 'If you were to unroll the slanted side of a cone, what shape would it form?', 'a) A circle', 'b) A rectangle', 'c) A triangle', 'd) A sector of a circle (like ', 'op4'),
(40, 'If you have a pyramid with a square base, how many triangular faces does it have?', 'a) 1', 'b) 2', 'c) 3', 'd) 4', 'op4'),
(41, 'What is the name for an angle that is greater than 90 degrees but less than 180 degrees?', 'a) Acute angle', 'b) Right angle', 'c) Obtuse angle', 'd) Straight angle', 'op3'),
(42, 'A cone has a radius of 3 cm and a height of 4 cm. What is its volume?', 'A) 37.68 cm³', 'B) 50.24 cm³', 'C) 28.26 cm³', 'D) 62.83 cm³', 'op1'),
(43, 'The radius of the base of a cone is 8 cm, and its slant height is 15 cm. What is the lateral surface area of the cone?', 'A) 120 cm²', 'B) 180 cm²', 'C) 200 cm²', 'D) 240 cm²', 'op4'),
(44, 'What is the slant height of a cone with radius 5 cm and height 12 cm?', 'A) 13 cm', 'B) 17 cm', 'C) 10 cm', 'D) 7 cm', 'op1'),
(45, 'What is the surface area of a sphere with radius 7 cm?', 'A) 154 cm²', 'B) 615.44 cm²', 'C) 308 cm²', 'D) 200 cm²', 'op2'),
(46, 'A cylinder has a circular base of radius 5 cm and height 10 cm. What is its volume?', 'A) 785 cm³', 'B) 314 cm³', 'C) 500 cm³', 'D) 1570 cm³', 'op1'),
(47, 'What is the curved surface area of a cylinder with radius 4 cm and height 9 cm?', 'A) 226.08 cm²', 'B) 113.04 cm²', 'C) 452.16 cm²', 'D) 100 cm²', 'op1'),
(48, 'What is the value of tan 0°?', 'A) 1', 'B) 0', 'C) Undefined', 'D)∞', 'op2'),
(49, 'Which of the following is not defined?', 'A)tan90∘', 'B)tan0∘', 'C)tan0∘', 'D)cot45∘', 'op1'),
(50, 'What is the measure of each interior angle in a regular pentagon?', 'A) 108°', 'B) 120°', 'C) 100°', 'D) 72°', 'op3'),
(51, 'What is the mean of: 3, 5, 7, 9, 11?', 'A) 7', 'B) 5', 'C) 9', 'D) 6', 'op1'),
(52, 'If a car travels 60 km in 2 hours, what is its speed?', 'A) 120 km/h', 'B) 30 km/h', 'C) 40 km/h', 'D) 60 km/h', 'op2'),
(53, 'Factor:x^2+5x+6?', 'A) (x + 3)(x + 2)', 'B) (x + 6)(x - 1)', 'C) (x + 4)(x + 1)', 'D) (x + 2)(x - 3)', 'op1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `qaans`
--
ALTER TABLE `qaans`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `questions1`
--
ALTER TABLE `questions1`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `qaans`
--
ALTER TABLE `qaans`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `questions1`
--
ALTER TABLE `questions1`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;