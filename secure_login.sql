-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 30, 2022 at 02:56 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `secure_login`
--

-- --------------------------------------------------------

--
-- Table structure for table `login_attempts`
--

CREATE TABLE `login_attempts` (
  `user_id` int(11) NOT NULL,
  `time` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login_attempts`
--

INSERT INTO `login_attempts` (`user_id`, `time`) VALUES
(2, '1669705791'),
(2, '1669728144');

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` char(128) NOT NULL,
  `salt` char(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `username`, `email`, `password`, `salt`) VALUES
(1, 'test_user', 'test@example.com', '00807432eae173f652f2064bdca1b61b290b52d40e429a7d295d76a71084aa96c0233b82f1feac45529e0726559645acaed6f3ae58a286b9f075916ebf66cacc', 'f9aab579fc1b41ed0c44fe4ecdbfcdb4cb99b9023abb241a6db833288f4eea3c02f76e0d35204a8695077dcf81932aa59006423976224be0390395bae152d4ef'),
(2, 'alkalai', 'shelton.simpson@gmail.com', '1d5594301be245664d291d883a571cde487cc76fc0dc09188eaa39adbf8211dcd10924e5b536b64b3497cdba73c364ab87701399da4608145a087bffc9e140f6', 'd1e24165b59b9ebe30cd736b9f84cdb88e416ee9fed323cbf492b67e64e35b7230ed007362d2e6f0e18af563ed49c4a03cb612ad9a5077c2ba6d70fa4debb64d'),
(3, 'tree', 'yahoo@yahoo.com', 'cfea058213fd9935f84e7be7c4c119b32720c1861d4d52e096568f342a4ce0bc7302352d6ed78be7366fb3c4334955c71f32a73c87f9d86a35b987abc3ae0f3e', 'aaab68ef65327193ab7ae24fd878131256523ca5736cba3e1cc05459fe54d8643a9b20d6ebe898d5c1fb466fff7fea8f13ca1bce319f23bef46300724a40ee50'),
(4, 'cjdinofrio', 'cjdinofrio@test.com', '64dfd45027dc107a588efbc23ca856389e9c0e68ed67b213518259eab09338940a2c1375086702311aaaa66ae159baba7ef1d08a17d5d41f7778e4e54ce88ea7', '2322c75316563b4eaf953a74477601e720d18c81545a17f91245297ab20f724b699f69a2ce595b5e0a04a260d84dddaade7aa78df37f48d144f64a645d7eeed7');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
