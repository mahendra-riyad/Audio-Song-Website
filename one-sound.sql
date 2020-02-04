-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 11, 2019 at 06:24 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `one-sound`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `name` varchar(200) NOT NULL,
  `email_id` varchar(200) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`name`, `email_id`, `password`) VALUES
('mahendra', 'choudharythor@gmail.com', '1233');

-- --------------------------------------------------------

--
-- Table structure for table `album`
--

CREATE TABLE `album` (
  `album_id` varchar(200) NOT NULL,
  `album_name` varchar(200) NOT NULL,
  `date` varchar(200) NOT NULL,
  `release_by` varchar(200) NOT NULL,
  `category` varchar(200) NOT NULL,
  `location` varchar(300) NOT NULL,
  `about` varchar(500) NOT NULL,
  `photo_status` int(11) NOT NULL,
  `delete1` int(11) NOT NULL,
  `views` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `album`
--

INSERT INTO `album` (`album_id`, `album_name`, `date`, `release_by`, `category`, `location`, `about`, `photo_status`, `delete1`, `views`) VALUES
('g3VpzRtPph', 'jydskud', '2109-03-12', 'jjfsdgfh', 'marathi', 'scvdgjr\r\nfs', 'jvrrfg\r\nfbsjdkhuv\r\n                                                ', 1, 0, 0),
('g2Awsk65eU', 'Jhootha Kahin Ka', '2019-04-13', 't-series', 'hindi', 'mumbai , India', 'vsj\r\nfsggsjsj fgsydfg fsg               ', 1, 0, 0),
('EH1xrYAaZ5', 'the moon', '2019-06-15', 'gftsg', 'hindi', 'bdhg\r\nfdkgthbfd rgt', 'sdfsjgf rrihg\r\nfsght rghirtg\r\n                                                ', 1, 0, 0),
('T1gazglhEy', 'kabir singh', '2019-05-31', 't-series', 'hindi', 'gdy hhgh ghridh\r\n ysgfusi', 'sryyg jgghuyd yrireg                     ', 1, 0, 0),
('th597G2dtX', 'Back in Black', '0219-09-20', 'jfdkfb', 'english', 'vhfdfl jgsughgghi', 'kjvduis hgiguskghos\r\nfughir\r\n                                                ', 1, 0, 0),
('aWmZ0yYsfE', 'Born to Run', '2019-10-11', 'vdmzfhhvjaop', 'english', 'vjfb vfihiufbdij', 'Born to Run Sgt. Peppers Lonely Hearts Club Band\r\n                                                ', 1, 0, 0),
('MX9lgiIZsK', 'Tunnel of Love', '2019-11-06', 'bhhse', 'english', 'vfbvsueij frwwue', 'cjksdhvi rvrs99fdu\r\n                                                ', 1, 0, 0),
('rIpeyaZJmo', 'Bat Out of Hell', '2018-12-01', 'ndznfv', 'panjabi', 'jrgh8re9 yge7regij\r\n', 'csdjfnvios eruisirfoa\r\n                                                ', 1, 0, 0),
('BQYKibdpNP', 'The Queen Is Dead', '2019-05-12', 'bngfdio', 'english', 'nsdfvbfdj usfvushs', 'jsffdui uvfhsughbzj\r\n                                                ', 1, 0, 0),
('lyKhM2pyK2', 'Parklife', '2016-03-12', 'jfnvs', 'english', 'vjfsdnzjj usvyiufsdo', 'bsdkvhsdo vfhsudzfhvs uvshdufo                     ', 1, 0, 0),
('r3iyoPZyvc', 'The Chronic', '2019-06-22', 'dnnjds', 'english', 'sggi grytire', 'hfsudi rysgtrtgios\r\n                                                ', 1, 0, 0),
('EsucFKDTyQ', 'Twilight Of The Thunder God', '2019-02-11', 'idjig', 'english', 'kdjjdhge rudgtyto jfhurtt', 'hsudihg rgyreyg8ufs fyytr          ', 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_code` varchar(200) NOT NULL,
  `category` varchar(200) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_code`, `category`, `status`) VALUES
('G5g3T7cg6K', 'hindi', 1),
('qDtLWCggug', 'hindi', 0),
('dfuMqWnS6s', 'english', 0),
('zawneeChFW', 'Punjabi', 0),
('JDqFlaIuxk', 'marathi', 0);

-- --------------------------------------------------------

--
-- Table structure for table `genres`
--

CREATE TABLE `genres` (
  `genres_id` varchar(200) NOT NULL,
  `genres_name` varchar(200) NOT NULL,
  `about_genres` varchar(100) NOT NULL,
  `photo_status` int(11) NOT NULL,
  `delete1` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `genres`
--

INSERT INTO `genres` (`genres_id`, `genres_name`, `about_genres`, `photo_status`, `delete1`) VALUES
('PLSs3b30lM', 'romantic', 'cool', 0, 1),
('AP22LzmYMr', 'Classical', 'Heart of Courage', 1, 0),
('pEK3LlAOcm', 'pop', 'Every Breath You Take', 1, 0),
('OSjiVCDskG', 'rock', ' teenagers and youngsters', 1, 0),
('yTlHdHLBI6', 'metal', 'hard-sounding', 1, 0),
('JkCFR0xke2', 'country', 'soulful music', 1, 0),
('HgBvTCQhcb', 'hip-hop', 'continuity of the rhythm', 1, 0),
('rpldgnzzfe', 'Ballads', 'emotional touch', 1, 0),
('SXQhVK755w', 'dance', 'thumping rhythmic pattern', 1, 0),
('xsl67gYuiT', 'love', 'love and relationships', 1, 0),
('ziB4Y8zD7q', 'Gospel', 'Church group', 1, 0),
('4h5C29QX5j', 'sdfb', 'kdsjhj', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `get_in_touch`
--

CREATE TABLE `get_in_touch` (
  `name` varchar(100) NOT NULL,
  `email_id` varchar(100) NOT NULL,
  `subject` varchar(200) NOT NULL,
  `message` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `get_in_touch`
--

INSERT INTO `get_in_touch` (`name`, `email_id`, `subject`, `message`) VALUES
('mahendra', 'a1@gmail.com', 'cjakfj', 'casvc ycafga e\r\nfrsydfgv ygas');

-- --------------------------------------------------------

--
-- Table structure for table `song`
--

CREATE TABLE `song` (
  `song_code` varchar(400) NOT NULL,
  `song_name` varchar(400) NOT NULL,
  `genres` varchar(100) NOT NULL,
  `category` varchar(200) NOT NULL,
  `album_name` varchar(200) NOT NULL,
  `tags` varchar(200) NOT NULL,
  `date` varchar(300) NOT NULL,
  `words` varchar(500) NOT NULL,
  `photo_status` int(11) NOT NULL,
  `song_status` int(11) NOT NULL,
  `views` int(11) NOT NULL,
  `song_delete` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `song`
--

INSERT INTO `song` (`song_code`, `song_name`, `genres`, `category`, `album_name`, `tags`, `date`, `words`, `photo_status`, `song_status`, `views`, `song_delete`) VALUES
('JKcazqzCEs', 'oh baby', 'xsl67gYuiT', 'dfuMqWnS6s', 'g3VpzRtPph', 'bfjhgf', '2018-04-13', 'dmfjhud', 1, 1, 0, 0),
('rhOYM4vWXR', 'gadsayu', 'HgBvTCQhcb', 'dfuMqWnS6s', 'g3VpzRtPph', 'dsgrfy', '2017-07-22', 'ygfsgr', 1, 1, 0, 0),
('m8ADLJeQsq', 'dnbgj', 'yTlHdHLBI6', 'qDtLWCggug', 'g3VpzRtPph', 'rkshgl', '2017-08-12', 'vfhjf', 1, 1, 0, 0),
('fgUWS4q5hl', 'vjksh', 'SXQhVK755w', 'dfuMqWnS6s', 'g3VpzRtPph', 'cksjf', '2016-08-13', 'vkfdhgb', 1, 1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `song_category`
--

CREATE TABLE `song_category` (
  `code` varchar(200) NOT NULL,
  `category` varchar(200) NOT NULL,
  `song_name` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `song_category`
--

INSERT INTO `song_category` (`code`, `category`, `song_name`) VALUES
('oBIKtUoXjs', 'rock', 'Jhootha Kahin Ka'),
('PqUl8iLhOw', 'love', 'Jhootha Kahin Ka'),
('SVnr2BDYwW', 'pop', 'Jhootha Kahin Ka'),
('7rnaJeoRlA', 'rock', 'jydskud'),
('jxErudqKhk', 'Ballads', 'jydskud'),
('cI55nXUxin', 'love', 'jydskud'),
('ZRym5EyhBG', 'country', 'the moon'),
('hArJiMi3Te', 'Gospel', 'the moon'),
('Ap93waAAYq', 'dance', 'the moon'),
('3kdMo8LSyY', 'pop', 'kabir singh'),
('iQurSoVJdZ', 'dance', 'kabir singh'),
('ADbteFqTZf', 'hip-hop', 'kabir singh'),
('c16k2WiscH', 'love', 'Back in Black'),
('HMy3iMK88x', 'hip-hop', 'Back in Black'),
('04eBfrOcBl', 'metal', 'Back in Black'),
('cIHsh9ntek', 'pop', 'Back in Black'),
('JtfuTQwnJk', 'dance', 'Back in Black'),
('1Ei9WNQVi7', 'metal', 'Born to Run'),
('2OnfwEA2zD', 'pop', 'Born to Run'),
('7d2UzJUose', 'rock', 'Born to Run'),
('SS70HKRysd', 'dance', 'Born to Run'),
('JOSC8PeoeY', 'love', 'Born to Run'),
('8JdemvGpcs', 'Gospel', 'Tunnel of Love'),
('a4Acjhufrw', 'love', 'Tunnel of Love'),
('40wNhaiBwB', 'Ballads', 'Tunnel of Love'),
('M4RVNriFWA', 'Classical', 'Bat Out of Hell'),
('OxSGTGWO7q', 'love', 'Bat Out of Hell'),
('4dFFDfM8jv', 'hip-hop', 'Bat Out of Hell'),
('r1vSzUELHh', 'metal', 'Bat Out of Hell'),
('oOO03lHVMr', 'dance', 'The Queen Is Dead'),
('R3yGrooix1', 'love', 'The Queen Is Dead'),
('PwdulXUcGg', 'country', 'The Queen Is Dead'),
('uzVGpN05zf', 'love', 'Parklife'),
('zJJly00Kuy', 'Classical', 'Parklife'),
('3dn4anbiI4', 'pop', 'Parklife'),
('d1qZkdPYWf', 'dance', 'The Chronic'),
('xBJH5TDt8l', 'hip-hop', 'The Chronic'),
('KsRhYzqZfW', 'country', 'The Chronic'),
('LG9dpPY6t2', 'Ballads', 'Twilight Of The Thunder God'),
('cfM3cqmXUC', 'country', 'Twilight Of The Thunder God'),
('zLpMP7PHd4', 'rock', 'Twilight Of The Thunder God');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` varchar(200) NOT NULL,
  `name` varchar(200) NOT NULL,
  `email_id` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `name`, `email_id`, `password`) VALUES
('3HGD45HFH8', '', '', ''),
('J0418D32H7', '', '', ''),
('A7IAAC5GGB', 'mahendra', 'a1@gmail.com', '123'),
('BKGH4DCBEB', '', '', ''),
('70GDGEEI7J', 'jxdfskfh', 'a2@gmail.com', '1234');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
