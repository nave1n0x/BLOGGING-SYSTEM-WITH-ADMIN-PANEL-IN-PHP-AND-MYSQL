-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 05, 2017 at 06:58 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cms_blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `cms_admin`
--

CREATE TABLE `cms_admin` (
  `id` int(11) NOT NULL,
  `date_time` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `added_by` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cms_admin`
--

INSERT INTO `cms_admin` (`id`, `date_time`, `username`, `password`, `added_by`) VALUES
(8, '2017-06-21 07:35:11 ', 'admin', 'admin123', 'testtest'),
(9, '2017-06-21 07:46:20 ', 'user', 'user123', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `cms_category`
--

CREATE TABLE `cms_category` (
  `cat_id` int(11) NOT NULL,
  `cat_datetime` date NOT NULL,
  `cat_name` varchar(50) NOT NULL,
  `cat_creator` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cms_category`
--

INSERT INTO `cms_category` (`cat_id`, `cat_datetime`, `cat_name`, `cat_creator`) VALUES
(3, '2017-06-19', 'sports', 'Admin'),
(25, '2017-06-21', 'CSS3', 'Admin'),
(26, '2017-06-21', 'test', 'testtest'),
(27, '2017-06-21', 'Libog', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `cms_post`
--

CREATE TABLE `cms_post` (
  `post_id` int(11) NOT NULL,
  `post_date_time` date NOT NULL,
  `title` varchar(50) NOT NULL,
  `category` varchar(50) NOT NULL,
  `author` varchar(50) NOT NULL,
  `image` varchar(500) NOT NULL,
  `post` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cms_post`
--

INSERT INTO `cms_post` (`post_id`, `post_date_time`, `title`, `category`, `author`, `image`, `post`) VALUES
(1, '2017-06-21', 'What Is HTML 5? ', 'CSS3', 'admin', 'html5.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas euismod urna lacus, sit amet rhoncus diam consectetur non. Fusce non felis id felis tincidunt gravida. Quisque id condimentum magna. Ut quam quam, consectetur a porta eget, venenatis at sapien. Curabitur bibendum est vel facilisis malesuada. Donec sit amet augue a eros tincidunt laoreet. Cras quis fringilla massa. Phasellus eu mi in ipsum aliquet ornare. In vehicula nisi pretium pulvinar fringilla. Mauris viverra risus a sem posuere, tempor ullamcorper magna accumsan.\r\n\r\nIn tempor purus id arcu posuere posuere. Aenean augue purus, porttitor tempor dictum sed, tempor at ex. Nulla feugiat, lorem vel fringilla imperdiet, dui turpis auctor tortor, sit amet fermentum purus nunc in lacus. Nulla pharetra nisl at lectus faucibus, sit amet cursus est vestibulum. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Proin nunc nisl, dignissim eu condimentum in, ornare a nisl. Etiam eu ornare nisl, et posuere mi. In consectetur maximus ullamcorper. Curabitur pretium libero dolor, at facilisis orci fringilla et. Praesent erat sem, sagittis nec leo sed, egestas accumsan tellus. Praesent eu lacus augue. Etiam justo tellus, varius a malesuada in, eleifend molestie lectus. In ut elementum nisi. Praesent venenatis dolor eu diam finibus semper.					'),
(2, '2017-06-21', 'test1', 'sports', 'admin', 'html5.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam odio metus, aliquam quis libero id, fermentum accumsan nisl. Nunc volutpat libero congue, egestas sem eget, consectetur velit. Vivamus quis porttitor sapien. Vivamus id arcu aliquam nibh vulputate porttitor. Donec ac dui vitae lectus viverra bibendum. Pellentesque tortor felis, varius ut tortor vitae, fringilla pharetra velit. Fusce aliquam ipsum ac dapibus laoreet. Proin nec nisl nec lacus blandit tempor. Nullam eu purus ac augue eleifend cursus quis sit amet diam. Aliquam sit amet bibendum risus, quis cursus justo. Sed faucibus massa blandit lorem sollicitudin, venenatis rhoncus neque ullamcorper. Vivamus nec vulputate augue.\r\n\r\nUt aliquam odio at volutpat aliquet. In vitae risus et nunc aliquam rhoncus ac non eros. Maecenas tempor pulvinar lacus at sodales. Duis a placerat erat, sit amet egestas augue. Pellentesque ac interdum massa, in ornare dolor. Ut ac tellus ut massa viverra ultrices. Etiam malesuada in lorem at hendrerit. Nulla quis est at mauris fermentum convallis. Donec elementum ullamcorper sem eu fermentum. Maecenas ut libero mollis, imperdiet elit ac, convallis odio. Sed volutpat id eros sit amet dapibus. Cras tincidunt metus eget lectus pellentesque posuere. Mauris facilisis tortor varius, molestie lorem ac, volutpat massa.\r\n\r\nDonec non pellentesque risus. Aliquam molestie magna nec feugiat volutpat. Nunc a velit metus. Integer et facilisis libero. Aenean volutpat, tortor ac blandit suscipit, nibh risus pharetra augue, et aliquet dui sapien lacinia elit. Aenean auctor malesuada feugiat. Vestibulum ante arcu, imperdiet id tristique tempus, porta et tellus. Sed ut nunc at nibh semper sagittis. Quisque auctor tellus dui, mattis vehicula metus ultricies vitae. In eu nisi in nisi tempor consectetur vel non lectus.\r\n\r\nEtiam sed dapibus justo. Cras dignissim, nisl id dictum tempus, risus neque posuere justo, quis convallis dui eros non sem. Integer aliquet felis nec erat blandit ultricies. Vestibulum euismod sodales ultrices. Vivamus pretium malesuada felis hendrerit dictum. Vivamus ipsum ante, pharetra et elementum id, placerat porta sapien. Mauris ac urna orci. Phasellus gravida venenatis sem, a vehicula massa posuere at. Aenean at fringilla nibh.\r\n\r\nSed vitae odio in nisl sodales eleifend. Quisque nec congue mi. Curabitur blandit est eu ante lobortis, id auctor ligula aliquam. Etiam in mi convallis, fringilla lectus eget, condimentum nulla. Aenean ut eros eu nulla mollis varius et vitae turpis. Nunc tincidunt tincidunt lorem vel porttitor. Integer mattis in odio sed sagittis. Donec et lectus mauris. Mauris vitae ante ut nibh dignissim volutpat.			'),
(3, '2017-06-21', 'Test2', 'CSS3', 'admin', 'wave-1913559_960_720.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam odio metus, aliquam quis libero id, fermentum accumsan nisl. Nunc volutpat libero congue, egestas sem eget, consectetur velit. Vivamus quis porttitor sapien. Vivamus id arcu aliquam nibh vulputate porttitor. Donec ac dui vitae lectus viverra bibendum. Pellentesque tortor felis, varius ut tortor vitae, fringilla pharetra velit. Fusce aliquam ipsum ac dapibus laoreet. Proin nec nisl nec lacus blandit tempor. Nullam eu purus ac augue eleifend cursus quis sit amet diam. Aliquam sit amet bibendum risus, quis cursus justo. Sed faucibus massa blandit lorem sollicitudin, venenatis rhoncus neque ullamcorper. Vivamus nec vulputate augue.\r\n\r\nUt aliquam odio at volutpat aliquet. In vitae risus et nunc aliquam rhoncus ac non eros. Maecenas tempor pulvinar lacus at sodales. Duis a placerat erat, sit amet egestas augue. Pellentesque ac interdum massa, in ornare dolor. Ut ac tellus ut massa viverra ultrices. Etiam malesuada in lorem at hendrerit. Nulla quis est at mauris fermentum convallis. Donec elementum ullamcorper sem eu fermentum. Maecenas ut libero mollis, imperdiet elit ac, convallis odio. Sed volutpat id eros sit amet dapibus. Cras tincidunt metus eget lectus pellentesque posuere. Mauris facilisis tortor varius, molestie lorem ac, volutpat massa.\r\n\r\nDonec non pellentesque risus. Aliquam molestie magna nec feugiat volutpat. Nunc a velit metus. Integer et facilisis libero. Aenean volutpat, tortor ac blandit suscipit, nibh risus pharetra augue, et aliquet dui sapien lacinia elit. Aenean auctor malesuada feugiat. Vestibulum ante arcu, imperdiet id tristique tempus, porta et tellus. Sed ut nunc at nibh semper sagittis. Quisque auctor tellus dui, mattis vehicula metus ultricies vitae. In eu nisi in nisi tempor consectetur vel non lectus.\r\n\r\nEtiam sed dapibus justo. Cras dignissim, nisl id dictum tempus, risus neque posuere justo, quis convallis dui eros non sem. Integer aliquet felis nec erat blandit ultricies. Vestibulum euismod sodales ultrices. Vivamus pretium malesuada felis hendrerit dictum. Vivamus ipsum ante, pharetra et elementum id, placerat porta sapien. Mauris ac urna orci. Phasellus gravida venenatis sem, a vehicula massa posuere at. Aenean at fringilla nibh.\r\n\r\nSed vitae odio in nisl sodales eleifend. Quisque nec congue mi. Curabitur blandit est eu ante lobortis, id auctor ligula aliquam. Etiam in mi convallis, fringilla lectus eget, condimentum nulla. Aenean ut eros eu nulla mollis varius et vitae turpis. Nunc tincidunt tincidunt lorem vel porttitor. Integer mattis in odio sed sagittis. Donec et lectus mauris. Mauris vitae ante ut nibh dignissim volutpat.									\r\n								'),
(4, '2017-06-21', 'test3', 'sports', 'admin', 'sql.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam odio metus, aliquam quis libero id, fermentum accumsan nisl. Nunc volutpat libero congue, egestas sem eget, consectetur velit. Vivamus quis porttitor sapien. Vivamus id arcu aliquam nibh vulputate porttitor. Donec ac dui vitae lectus viverra bibendum. Pellentesque tortor felis, varius ut tortor vitae, fringilla pharetra velit. Fusce aliquam ipsum ac dapibus laoreet. Proin nec nisl nec lacus blandit tempor. Nullam eu purus ac augue eleifend cursus quis sit amet diam. Aliquam sit amet bibendum risus, quis cursus justo. Sed faucibus massa blandit lorem sollicitudin, venenatis rhoncus neque ullamcorper. Vivamus nec vulputate augue.\r\n\r\nUt aliquam odio at volutpat aliquet. In vitae risus et nunc aliquam rhoncus ac non eros. Maecenas tempor pulvinar lacus at sodales. Duis a placerat erat, sit amet egestas augue. Pellentesque ac interdum massa, in ornare dolor. Ut ac tellus ut massa viverra ultrices. Etiam malesuada in lorem at hendrerit. Nulla quis est at mauris fermentum convallis. Donec elementum ullamcorper sem eu fermentum. Maecenas ut libero mollis, imperdiet elit ac, convallis odio. Sed volutpat id eros sit amet dapibus. Cras tincidunt metus eget lectus pellentesque posuere. Mauris facilisis tortor varius, molestie lorem ac, volutpat massa.\r\n\r\nDonec non pellentesque risus. Aliquam molestie magna nec feugiat volutpat. Nunc a velit metus. Integer et facilisis libero. Aenean volutpat, tortor ac blandit suscipit, nibh risus pharetra augue, et aliquet dui sapien lacinia elit. Aenean auctor malesuada feugiat. Vestibulum ante arcu, imperdiet id tristique tempus, porta et tellus. Sed ut nunc at nibh semper sagittis. Quisque auctor tellus dui, mattis vehicula metus ultricies vitae. In eu nisi in nisi tempor consectetur vel non lectus.\r\n\r\nEtiam sed dapibus justo. Cras dignissim, nisl id dictum tempus, risus neque posuere justo, quis convallis dui eros non sem. Integer aliquet felis nec erat blandit ultricies. Vestibulum euismod sodales ultrices. Vivamus pretium malesuada felis hendrerit dictum. Vivamus ipsum ante, pharetra et elementum id, placerat porta sapien. Mauris ac urna orci. Phasellus gravida venenatis sem, a vehicula massa posuere at. Aenean at fringilla nibh.\r\n\r\nSed vitae odio in nisl sodales eleifend. Quisque nec congue mi. Curabitur blandit est eu ante lobortis, id auctor ligula aliquam. Etiam in mi convallis, fringilla lectus eget, condimentum nulla. Aenean ut eros eu nulla mollis varius et vitae turpis. Nunc tincidunt tincidunt lorem vel porttitor. Integer mattis in odio sed sagittis. Donec et lectus mauris. Mauris vitae ante ut nibh dignissim volutpat.									\r\n								'),
(5, '2017-06-21', 'test4', 'Libog', 'admin', 'soap.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam odio metus, aliquam quis libero id, fermentum accumsan nisl. Nunc volutpat libero congue, egestas sem eget, consectetur velit. Vivamus quis porttitor sapien. Vivamus id arcu aliquam nibh vulputate porttitor. Donec ac dui vitae lectus viverra bibendum. Pellentesque tortor felis, varius ut tortor vitae, fringilla pharetra velit. Fusce aliquam ipsum ac dapibus laoreet. Proin nec nisl nec lacus blandit tempor. Nullam eu purus ac augue eleifend cursus quis sit amet diam. Aliquam sit amet bibendum risus, quis cursus justo. Sed faucibus massa blandit lorem sollicitudin, venenatis rhoncus neque ullamcorper. Vivamus nec vulputate augue.\r\n\r\nUt aliquam odio at volutpat aliquet. In vitae risus et nunc aliquam rhoncus ac non eros. Maecenas tempor pulvinar lacus at sodales. Duis a placerat erat, sit amet egestas augue. Pellentesque ac interdum massa, in ornare dolor. Ut ac tellus ut massa viverra ultrices. Etiam malesuada in lorem at hendrerit. Nulla quis est at mauris fermentum convallis. Donec elementum ullamcorper sem eu fermentum. Maecenas ut libero mollis, imperdiet elit ac, convallis odio. Sed volutpat id eros sit amet dapibus. Cras tincidunt metus eget lectus pellentesque posuere. Mauris facilisis tortor varius, molestie lorem ac, volutpat massa.\r\n\r\nDonec non pellentesque risus. Aliquam molestie magna nec feugiat volutpat. Nunc a velit metus. Integer et facilisis libero. Aenean volutpat, tortor ac blandit suscipit, nibh risus pharetra augue, et aliquet dui sapien lacinia elit. Aenean auctor malesuada feugiat. Vestibulum ante arcu, imperdiet id tristique tempus, porta et tellus. Sed ut nunc at nibh semper sagittis. Quisque auctor tellus dui, mattis vehicula metus ultricies vitae. In eu nisi in nisi tempor consectetur vel non lectus.\r\n\r\nEtiam sed dapibus justo. Cras dignissim, nisl id dictum tempus, risus neque posuere justo, quis convallis dui eros non sem. Integer aliquet felis nec erat blandit ultricies. Vestibulum euismod sodales ultrices. Vivamus pretium malesuada felis hendrerit dictum. Vivamus ipsum ante, pharetra et elementum id, placerat porta sapien. Mauris ac urna orci. Phasellus gravida venenatis sem, a vehicula massa posuere at. Aenean at fringilla nibh.\r\n\r\nSed vitae odio in nisl sodales eleifend. Quisque nec congue mi. Curabitur blandit est eu ante lobortis, id auctor ligula aliquam. Etiam in mi convallis, fringilla lectus eget, condimentum nulla. Aenean ut eros eu nulla mollis varius et vitae turpis. Nunc tincidunt tincidunt lorem vel porttitor. Integer mattis in odio sed sagittis. Donec et lectus mauris. Mauris vitae ante ut nibh dignissim volutpat.									\r\n								'),
(6, '2017-06-23', 'test5', 'test', 'admin', 'wave-1913559_960_720.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam odio metus, aliquam quis libero id, fermentum accumsan nisl. Nunc volutpat libero congue, egestas sem eget, consectetur velit. Vivamus quis porttitor sapien. Vivamus id arcu aliquam nibh vulputate porttitor. Donec ac dui vitae lectus viverra bibendum. Pellentesque tortor felis, varius ut tortor vitae, fringilla pharetra velit. Fusce aliquam ipsum ac dapibus laoreet. Proin nec nisl nec lacus blandit tempor. Nullam eu purus ac augue eleifend cursus quis sit amet diam. Aliquam sit amet bibendum risus, quis cursus justo. Sed faucibus massa blandit lorem sollicitudin, venenatis rhoncus neque ullamcorper. Vivamus nec vulputate augue.\r\n\r\nUt aliquam odio at volutpat aliquet. In vitae risus et nunc aliquam rhoncus ac non eros. Maecenas tempor pulvinar lacus at sodales. Duis a placerat erat, sit amet egestas augue. Pellentesque ac interdum massa, in ornare dolor. Ut ac tellus ut massa viverra ultrices. Etiam malesuada in lorem at hendrerit. Nulla quis est at mauris fermentum convallis. Donec elementum ullamcorper sem eu fermentum. Maecenas ut libero mollis, imperdiet elit ac, convallis odio. Sed volutpat id eros sit amet dapibus. Cras tincidunt metus eget lectus pellentesque posuere. Mauris facilisis tortor varius, molestie lorem ac, volutpat massa.\r\n\r\nDonec non pellentesque risus. Aliquam molestie magna nec feugiat volutpat. Nunc a velit metus. Integer et facilisis libero. Aenean volutpat, tortor ac blandit suscipit, nibh risus pharetra augue, et aliquet dui sapien lacinia elit. Aenean auctor malesuada feugiat. Vestibulum ante arcu, imperdiet id tristique tempus, porta et tellus. Sed ut nunc at nibh semper sagittis. Quisque auctor tellus dui, mattis vehicula metus ultricies vitae. In eu nisi in nisi tempor consectetur vel non lectus.\r\n\r\nEtiam sed dapibus justo. Cras dignissim, nisl id dictum tempus, risus neque posuere justo, quis convallis dui eros non sem. Integer aliquet felis nec erat blandit ultricies. Vestibulum euismod sodales ultrices. Vivamus pretium malesuada felis hendrerit dictum. Vivamus ipsum ante, pharetra et elementum id, placerat porta sapien. Mauris ac urna orci. Phasellus gravida venenatis sem, a vehicula massa posuere at. Aenean at fringilla nibh.\r\n\r\nSed vitae odio in nisl sodales eleifend. Quisque nec congue mi. Curabitur blandit est eu ante lobortis, id auctor ligula aliquam. Etiam in mi convallis, fringilla lectus eget, condimentum nulla. Aenean ut eros eu nulla mollis varius et vitae turpis. Nunc tincidunt tincidunt lorem vel porttitor. Integer mattis in odio sed sagittis. Donec et lectus mauris. Mauris vitae ante ut nibh dignissim volutpat.									\r\n								'),
(7, '2017-06-21', 'Test6', 'sports', 'admin', 'css3_2.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam odio metus, aliquam quis libero id, fermentum accumsan nisl. Nunc volutpat libero congue, egestas sem eget, consectetur velit. Vivamus quis porttitor sapien. Vivamus id arcu aliquam nibh vulputate porttitor. Donec ac dui vitae lectus viverra bibendum. Pellentesque tortor felis, varius ut tortor vitae, fringilla pharetra velit. Fusce aliquam ipsum ac dapibus laoreet. Proin nec nisl nec lacus blandit tempor. Nullam eu purus ac augue eleifend cursus quis sit amet diam. Aliquam sit amet bibendum risus, quis cursus justo. Sed faucibus massa blandit lorem sollicitudin, venenatis rhoncus neque ullamcorper. Vivamus nec vulputate augue.\r\n\r\nUt aliquam odio at volutpat aliquet. In vitae risus et nunc aliquam rhoncus ac non eros. Maecenas tempor pulvinar lacus at sodales. Duis a placerat erat, sit amet egestas augue. Pellentesque ac interdum massa, in ornare dolor. Ut ac tellus ut massa viverra ultrices. Etiam malesuada in lorem at hendrerit. Nulla quis est at mauris fermentum convallis. Donec elementum ullamcorper sem eu fermentum. Maecenas ut libero mollis, imperdiet elit ac, convallis odio. Sed volutpat id eros sit amet dapibus. Cras tincidunt metus eget lectus pellentesque posuere. Mauris facilisis tortor varius, molestie lorem ac, volutpat massa.\r\n\r\nDonec non pellentesque risus. Aliquam molestie magna nec feugiat volutpat. Nunc a velit metus. Integer et facilisis libero. Aenean volutpat, tortor ac blandit suscipit, nibh risus pharetra augue, et aliquet dui sapien lacinia elit. Aenean auctor malesuada feugiat. Vestibulum ante arcu, imperdiet id tristique tempus, porta et tellus. Sed ut nunc at nibh semper sagittis. Quisque auctor tellus dui, mattis vehicula metus ultricies vitae. In eu nisi in nisi tempor consectetur vel non lectus.\r\n\r\nEtiam sed dapibus justo. Cras dignissim, nisl id dictum tempus, risus neque posuere justo, quis convallis dui eros non sem. Integer aliquet felis nec erat blandit ultricies. Vestibulum euismod sodales ultrices. Vivamus pretium malesuada felis hendrerit dictum. Vivamus ipsum ante, pharetra et elementum id, placerat porta sapien. Mauris ac urna orci. Phasellus gravida venenatis sem, a vehicula massa posuere at. Aenean at fringilla nibh.\r\n\r\nSed vitae odio in nisl sodales eleifend. Quisque nec congue mi. Curabitur blandit est eu ante lobortis, id auctor ligula aliquam. Etiam in mi convallis, fringilla lectus eget, condimentum nulla. Aenean ut eros eu nulla mollis varius et vitae turpis. Nunc tincidunt tincidunt lorem vel porttitor. Integer mattis in odio sed sagittis. Donec et lectus mauris. Mauris vitae ante ut nibh dignissim volutpat.									\r\n								'),
(8, '2017-06-21', 'Test7', 'sports', 'admin', '19250919_687844558072425_1341121266_n.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam odio metus, aliquam quis libero id, fermentum accumsan nisl. Nunc volutpat libero congue, egestas sem eget, consectetur velit. Vivamus quis porttitor sapien. Vivamus id arcu aliquam nibh vulputate porttitor. Donec ac dui vitae lectus viverra bibendum. Pellentesque tortor felis, varius ut tortor vitae, fringilla pharetra velit. Fusce aliquam ipsum ac dapibus laoreet. Proin nec nisl nec lacus blandit tempor. Nullam eu purus ac augue eleifend cursus quis sit amet diam. Aliquam sit amet bibendum risus, quis cursus justo. Sed faucibus massa blandit lorem sollicitudin, venenatis rhoncus neque ullamcorper. Vivamus nec vulputate augue.\r\n\r\nUt aliquam odio at volutpat aliquet. In vitae risus et nunc aliquam rhoncus ac non eros. Maecenas tempor pulvinar lacus at sodales. Duis a placerat erat, sit amet egestas augue. Pellentesque ac interdum massa, in ornare dolor. Ut ac tellus ut massa viverra ultrices. Etiam malesuada in lorem at hendrerit. Nulla quis est at mauris fermentum convallis. Donec elementum ullamcorper sem eu fermentum. Maecenas ut libero mollis, imperdiet elit ac, convallis odio. Sed volutpat id eros sit amet dapibus. Cras tincidunt metus eget lectus pellentesque posuere. Mauris facilisis tortor varius, molestie lorem ac, volutpat massa.\r\n\r\nDonec non pellentesque risus. Aliquam molestie magna nec feugiat volutpat. Nunc a velit metus. Integer et facilisis libero. Aenean volutpat, tortor ac blandit suscipit, nibh risus pharetra augue, et aliquet dui sapien lacinia elit. Aenean auctor malesuada feugiat. Vestibulum ante arcu, imperdiet id tristique tempus, porta et tellus. Sed ut nunc at nibh semper sagittis. Quisque auctor tellus dui, mattis vehicula metus ultricies vitae. In eu nisi in nisi tempor consectetur vel non lectus.\r\n\r\nEtiam sed dapibus justo. Cras dignissim, nisl id dictum tempus, risus neque posuere justo, quis convallis dui eros non sem. Integer aliquet felis nec erat blandit ultricies. Vestibulum euismod sodales ultrices. Vivamus pretium malesuada felis hendrerit dictum. Vivamus ipsum ante, pharetra et elementum id, placerat porta sapien. Mauris ac urna orci. Phasellus gravida venenatis sem, a vehicula massa posuere at. Aenean at fringilla nibh.\r\n\r\nSed vitae odio in nisl sodales eleifend. Quisque nec congue mi. Curabitur blandit est eu ante lobortis, id auctor ligula aliquam. Etiam in mi convallis, fringilla lectus eget, condimentum nulla. Aenean ut eros eu nulla mollis varius et vitae turpis. Nunc tincidunt tincidunt lorem vel porttitor. Integer mattis in odio sed sagittis. Donec et lectus mauris. Mauris vitae ante ut nibh dignissim volutpat.									\r\n								'),
(9, '2017-06-21', 'test8', 'sports', 'admin', 'wave-1913559_960_720.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam odio metus, aliquam quis libero id, fermentum accumsan nisl. Nunc volutpat libero congue, egestas sem eget, consectetur velit. Vivamus quis porttitor sapien. Vivamus id arcu aliquam nibh vulputate porttitor. Donec ac dui vitae lectus viverra bibendum. Pellentesque tortor felis, varius ut tortor vitae, fringilla pharetra velit. Fusce aliquam ipsum ac dapibus laoreet. Proin nec nisl nec lacus blandit tempor. Nullam eu purus ac augue eleifend cursus quis sit amet diam. Aliquam sit amet bibendum risus, quis cursus justo. Sed faucibus massa blandit lorem sollicitudin, venenatis rhoncus neque ullamcorper. Vivamus nec vulputate augue.\r\n\r\nUt aliquam odio at volutpat aliquet. In vitae risus et nunc aliquam rhoncus ac non eros. Maecenas tempor pulvinar lacus at sodales. Duis a placerat erat, sit amet egestas augue. Pellentesque ac interdum massa, in ornare dolor. Ut ac tellus ut massa viverra ultrices. Etiam malesuada in lorem at hendrerit. Nulla quis est at mauris fermentum convallis. Donec elementum ullamcorper sem eu fermentum. Maecenas ut libero mollis, imperdiet elit ac, convallis odio. Sed volutpat id eros sit amet dapibus. Cras tincidunt metus eget lectus pellentesque posuere. Mauris facilisis tortor varius, molestie lorem ac, volutpat massa.\r\n\r\nDonec non pellentesque risus. Aliquam molestie magna nec feugiat volutpat. Nunc a velit metus. Integer et facilisis libero. Aenean volutpat, tortor ac blandit suscipit, nibh risus pharetra augue, et aliquet dui sapien lacinia elit. Aenean auctor malesuada feugiat. Vestibulum ante arcu, imperdiet id tristique tempus, porta et tellus. Sed ut nunc at nibh semper sagittis. Quisque auctor tellus dui, mattis vehicula metus ultricies vitae. In eu nisi in nisi tempor consectetur vel non lectus.\r\n\r\nEtiam sed dapibus justo. Cras dignissim, nisl id dictum tempus, risus neque posuere justo, quis convallis dui eros non sem. Integer aliquet felis nec erat blandit ultricies. Vestibulum euismod sodales ultrices. Vivamus pretium malesuada felis hendrerit dictum. Vivamus ipsum ante, pharetra et elementum id, placerat porta sapien. Mauris ac urna orci. Phasellus gravida venenatis sem, a vehicula massa posuere at. Aenean at fringilla nibh.\r\n\r\nSed vitae odio in nisl sodales eleifend. Quisque nec congue mi. Curabitur blandit est eu ante lobortis, id auctor ligula aliquam. Etiam in mi convallis, fringilla lectus eget, condimentum nulla. Aenean ut eros eu nulla mollis varius et vitae turpis. Nunc tincidunt tincidunt lorem vel porttitor. Integer mattis in odio sed sagittis. Donec et lectus mauris. Mauris vitae ante ut nibh dignissim volutpat.									\r\n								'),
(10, '2017-06-23', 'test9', 'Libog', 'admin', '19264895_687845481405666_221127161_n.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam odio metus, aliquam quis libero id, fermentum accumsan nisl. Nunc volutpat libero congue, egestas sem eget, consectetur velit. Vivamus quis porttitor sapien. Vivamus id arcu aliquam nibh vulputate porttitor. Donec ac dui vitae lectus viverra bibendum. Pellentesque tortor felis, varius ut tortor vitae, fringilla pharetra velit. Fusce aliquam ipsum ac dapibus laoreet. Proin nec nisl nec lacus blandit tempor. Nullam eu purus ac augue eleifend cursus quis sit amet diam. Aliquam sit amet bibendum risus, quis cursus justo. Sed faucibus massa blandit lorem sollicitudin, venenatis rhoncus neque ullamcorper. Vivamus nec vulputate augue.\r\n\r\nUt aliquam odio at volutpat aliquet. In vitae risus et nunc aliquam rhoncus ac non eros. Maecenas tempor pulvinar lacus at sodales. Duis a placerat erat, sit amet egestas augue. Pellentesque ac interdum massa, in ornare dolor. Ut ac tellus ut massa viverra ultrices. Etiam malesuada in lorem at hendrerit. Nulla quis est at mauris fermentum convallis. Donec elementum ullamcorper sem eu fermentum. Maecenas ut libero mollis, imperdiet elit ac, convallis odio. Sed volutpat id eros sit amet dapibus. Cras tincidunt metus eget lectus pellentesque posuere. Mauris facilisis tortor varius, molestie lorem ac, volutpat massa.\r\n\r\nDonec non pellentesque risus. Aliquam molestie magna nec feugiat volutpat. Nunc a velit metus. Integer et facilisis libero. Aenean volutpat, tortor ac blandit suscipit, nibh risus pharetra augue, et aliquet dui sapien lacinia elit. Aenean auctor malesuada feugiat. Vestibulum ante arcu, imperdiet id tristique tempus, porta et tellus. Sed ut nunc at nibh semper sagittis. Quisque auctor tellus dui, mattis vehicula metus ultricies vitae. In eu nisi in nisi tempor consectetur vel non lectus.\r\n\r\nEtiam sed dapibus justo. Cras dignissim, nisl id dictum tempus, risus neque posuere justo, quis convallis dui eros non sem. Integer aliquet felis nec erat blandit ultricies. Vestibulum euismod sodales ultrices. Vivamus pretium malesuada felis hendrerit dictum. Vivamus ipsum ante, pharetra et elementum id, placerat porta sapien. Mauris ac urna orci. Phasellus gravida venenatis sem, a vehicula massa posuere at. Aenean at fringilla nibh.\r\n\r\nSed vitae odio in nisl sodales eleifend. Quisque nec congue mi. Curabitur blandit est eu ante lobortis, id auctor ligula aliquam. Etiam in mi convallis, fringilla lectus eget, condimentum nulla. Aenean ut eros eu nulla mollis varius et vitae turpis. Nunc tincidunt tincidunt lorem vel porttitor. Integer mattis in odio sed sagittis. Donec et lectus mauris. Mauris vitae ante ut nibh dignissim volutpat.									\r\n								'),
(11, '2017-06-21', 'test10', 'sports', 'admin', 'html5.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam odio metus, aliquam quis libero id, fermentum accumsan nisl. Nunc volutpat libero congue, egestas sem eget, consectetur velit. Vivamus quis porttitor sapien. Vivamus id arcu aliquam nibh vulputate porttitor. Donec ac dui vitae lectus viverra bibendum. Pellentesque tortor felis, varius ut tortor vitae, fringilla pharetra velit. Fusce aliquam ipsum ac dapibus laoreet. Proin nec nisl nec lacus blandit tempor. Nullam eu purus ac augue eleifend cursus quis sit amet diam. Aliquam sit amet bibendum risus, quis cursus justo. Sed faucibus massa blandit lorem sollicitudin, venenatis rhoncus neque ullamcorper. Vivamus nec vulputate augue.\r\n\r\nUt aliquam odio at volutpat aliquet. In vitae risus et nunc aliquam rhoncus ac non eros. Maecenas tempor pulvinar lacus at sodales. Duis a placerat erat, sit amet egestas augue. Pellentesque ac interdum massa, in ornare dolor. Ut ac tellus ut massa viverra ultrices. Etiam malesuada in lorem at hendrerit. Nulla quis est at mauris fermentum convallis. Donec elementum ullamcorper sem eu fermentum. Maecenas ut libero mollis, imperdiet elit ac, convallis odio. Sed volutpat id eros sit amet dapibus. Cras tincidunt metus eget lectus pellentesque posuere. Mauris facilisis tortor varius, molestie lorem ac, volutpat massa.\r\n\r\nDonec non pellentesque risus. Aliquam molestie magna nec feugiat volutpat. Nunc a velit metus. Integer et facilisis libero. Aenean volutpat, tortor ac blandit suscipit, nibh risus pharetra augue, et aliquet dui sapien lacinia elit. Aenean auctor malesuada feugiat. Vestibulum ante arcu, imperdiet id tristique tempus, porta et tellus. Sed ut nunc at nibh semper sagittis. Quisque auctor tellus dui, mattis vehicula metus ultricies vitae. In eu nisi in nisi tempor consectetur vel non lectus.\r\n\r\nEtiam sed dapibus justo. Cras dignissim, nisl id dictum tempus, risus neque posuere justo, quis convallis dui eros non sem. Integer aliquet felis nec erat blandit ultricies. Vestibulum euismod sodales ultrices. Vivamus pretium malesuada felis hendrerit dictum. Vivamus ipsum ante, pharetra et elementum id, placerat porta sapien. Mauris ac urna orci. Phasellus gravida venenatis sem, a vehicula massa posuere at. Aenean at fringilla nibh.\r\n\r\nSed vitae odio in nisl sodales eleifend. Quisque nec congue mi. Curabitur blandit est eu ante lobortis, id auctor ligula aliquam. Etiam in mi convallis, fringilla lectus eget, condimentum nulla. Aenean ut eros eu nulla mollis varius et vitae turpis. Nunc tincidunt tincidunt lorem vel porttitor. Integer mattis in odio sed sagittis. Donec et lectus mauris. Mauris vitae ante ut nibh dignissim volutpat.									\r\n								'),
(12, '2017-06-21', 'Testing Number 11', 'sports', 'admin', 'css3_2.jpg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas euismod urna lacus, sit amet rhoncus diam consectetur non. Fusce non felis id felis tincidunt gravida. Quisque id condimentum magna. Ut quam quam, consectetur a porta eget, venenatis at sapien. Curabitur bibendum est vel facilisis malesuada. Donec sit amet augue a eros tincidunt laoreet. Cras quis fringilla massa. Phasellus eu mi in ipsum aliquet ornare. In vehicula nisi pretium pulvinar fringilla. Mauris viverra risus a sem posuere, tempor ullamcorper magna accumsan. In tempor purus id arcu posuere posuere. Aenean augue purus, porttitor tempor dictum sed, tempor at ex. Nulla feugiat, lorem vel fringilla imperdiet, dui turpis auctor tortor, sit amet fermentum purus nunc in lacus. Nulla pharetra nisl at lectus faucibus, sit amet cursus est vestibulum. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Proin nunc nisl, dignissim eu condimentum in, ornare a nisl. Etiam eu ornare nisl, et posuere mi. In consectetur maximus ullamcorper. Curabitur pretium libero dolor, at facilisis orci fringilla et. Praesent erat sem, sagittis nec leo sed, egestas accumsan tellus. Praesent eu lacus augue. Etiam justo tellus, varius a malesuada in, eleifend molestie lectus. In ut elementum nisi. Praesent venenatis dolor eu diam finibus semper.								\r\n								');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `date_time` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `comment` varchar(1000) NOT NULL,
  `status` varchar(50) NOT NULL,
  `approve_by` varchar(50) NOT NULL,
  `post_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`id`, `date_time`, `email`, `comment`, `status`, `approve_by`, `post_id`) VALUES
(8, '2017-06-21 08:12:26 ', 'algerzxc@gmail.com', 'Nice Post', 'approved', 'admin', 0),
(9, '2017-06-21 08:12:56 ', 'algermakiputin1@gmail.com', 'This Post Is Very Amazing I am So Impress.', 'approved', 'admin', 0),
(10, '2017-06-22 00:30:57 ', 'algerzcx@gmail.com', 'test2', 'approved', 'admin', 0),
(11, '2017-06-22 00:36:11 ', 'algermakiputin1@gmail.com', 'test2', 'approved', 'admin', 1),
(12, '2017-06-22 00:47:49 ', 'algerzxc@gmail.com', 'Test2', 'approved', 'admin', 1),
(13, '2017-06-22 00:49:13 ', 'algerzxc@gmail.com', 'test5', 'approved', 'admin', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cms_admin`
--
ALTER TABLE `cms_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_category`
--
ALTER TABLE `cms_category`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `cms_post`
--
ALTER TABLE `cms_post`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cms_admin`
--
ALTER TABLE `cms_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `cms_category`
--
ALTER TABLE `cms_category`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `cms_post`
--
ALTER TABLE `cms_post`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
