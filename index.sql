-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 16, 2018 at 05:35 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.0.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `index`
--
DROP DATABASE IF EXISTS `index`;
CREATE DATABASE IF NOT EXISTS `index` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `index`;

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

DROP TABLE IF EXISTS `files`;
CREATE TABLE `files` (
  `id` int(15) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `file_location` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `county` varchar(255) DEFAULT NULL,
  `township` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `related` varchar(255) DEFAULT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `keywords` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`id`, `filename`, `category`, `subcategory`, `file_location`, `state`, `county`, `township`, `city`, `related`, `alias`, `keywords`) VALUES
(1, 'Lawrenceburg Airport', 'Transportation', '', 'Lawrenceburg, A', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', '', ''),
(2, 'Lawrenceburg Antique Museum', 'History', '', 'Lawrenceburg, A', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', '', ''),
(3, 'Lawrenceburg Architecture', 'Architecture', 'Historic Buildings', 'Lawrenceburg, A', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', '', ''),
(7, 'Lawrenceburg Bicentennial 2002', 'Events', '', 'Lawrenceburg, B', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', '', ''),
(12, 'ABC Motors, Inc.', 'Business', 'Transportation', 'Lawrenceburg, B', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', '', ''),
(13, 'Acapulco', 'Business', 'Restaurants', 'Lawrenceburg, B', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', '', ''),
(14, 'AEP (American Electric Power)', 'Business', 'Utilities', 'Lawrenceburg, B', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', 'Indiana and Michigan Power', ''),
(15, 'Anchor Glass', 'Business', 'Manufacturing', 'Lawrenceburg, B', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', 'Thatcher Glass Mfg. Company', ''),
(16, 'Angostura Distillery', 'Business', 'Distilleries', 'Lawrenceburg, B', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', '', ''),
(17, 'Lawrenceburg Banks', 'Business', 'Banking', 'Lawrenceburg, B', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', '', ''),
(18, 'Lawrenceburg Bars', 'Business', 'Restaurants', 'Lawrenceburg, B', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', '', ''),
(19, 'Batesville Lumber and Veneer', 'Business', 'Manufacturing', 'Lawrenceburg, B', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', '', ''),
(20, 'Bauer Cooperage', 'Business', 'Cooperage', 'Lawrenceburg, B', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', '', ''),
(21, 'Lawrenceburg Bowling Alleys', 'Business', 'Sports', 'Lawrenceburg, B', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', '', ''),
(22, 'Brown and Tate', 'Business', 'Manufacturing', 'Lawrenceburg, B', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', '', ''),
(23, 'Lawrenceburg Cigar Business', 'Business', 'Retail', 'Lawrenceburg, B', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', '', ''),
(24, 'Lawrenceburg Clothing Stores', 'Business', 'Retail', 'Lawrenceburg, B', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', '', 'Dottie&#39;s Ladies Apparel, Finkbines&#39;s, Willie&#39;s Dad and Lad, Dollin&#39;s Store'),
(25, 'A. D. Cook', 'Business', 'Manufacturing', 'Lawrenceburg, B', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', 'Dearborn County Patents (977.211 MCH)', '', 'deep well turbines, pumps, Cook Piano Factory'),
(26, 'Dearborn Plaza', 'Business', 'Retail', 'Lawrenceburg, B', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', '', ''),
(27, 'H.P. Diehl Company', 'Business', 'Manufacturing', 'Lawrenceburg, B', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', '', 'fireworks'),
(28, 'Lawrenceburg Distilleries', 'Business', 'Distilleries', 'Lawrenceburg, B', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', 'Joseph E. Seagram, Schenley', '', 'whiskey city'),
(29, 'Lawrenceburg Dressmakers and Milliners', 'Business', '', 'Lawrenceburg, B', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', '', 'clothing, hats'),
(30, 'Lawrenceburg Drug Stores', 'Business', 'Retail', 'Lawrenceburg, B', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', '', 'Wade Rexall Drugs, Lommel Drug Store, Ideal Drug Store, Jones&#39; Pharmacy, McCullough Drug Company'),
(31, 'Durbin Plaza', 'Business', 'Retail', 'Lawrenceburg, B', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', '', ''),
(32, 'Lawrenceburg Ferry', 'Business', 'Transportation', 'Lawrenceburg, B', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', '', 'haunted ferry'),
(33, 'Fitch Brothers Funeral Home', 'Business', 'Funeral Homes', 'Lawrenceburg, B', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', '', ''),
(34, 'Lawrenceburg Furniture Companies', 'Business', 'Furniture', 'Lawrenceburg, B', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', 'W.M. Johnston Furniture Company', '', 'Junker Furniture Company, Meader, Johnson, & Co., Greendale Furniture Company'),
(35, 'Gallemore, W.B. Ice Cream Company', 'Business', '', 'Lawrenceburg, B', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', '', ''),
(36, 'Garnier Brewing Company', 'Business', 'Distilleries', 'Lawrenceburg, B', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', 'Oberting Family File', '', ''),
(37, 'Lawrenceburg Gas Stations', 'Business', 'Transportation', 'Lawrenceburg, B', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', '', 'Shell, Sunoco, Citgo, The Gas Barn, Meyer&#39;s Gas Station'),
(38, 'Lawrenceburg Grocery Stores', 'Business', 'Retail', 'Lawrenceburg, B', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', '', '&#34;Hammerin&#39; Hank&#34; Grocery Store, Bobrink Grocery, Gordon&#39;s Dry Goods'),
(39, 'Lawrenceburg Hotels', 'Business', 'Hospitality', 'Lawrenceburg, B', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', '', 'King Hotel, New Central Hotel and Restaurant'),
(40, 'James and Meyer Buggy Company', 'Business', 'Transportation', 'Lawrenceburg, B', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', '', 'James car'),
(41, 'Johnston, W. M. Furniture Company', 'Business', 'Furniture', 'Lawrenceburg, B', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', '', 'Johnston and Klare'),
(45, 'Klausing Motors', 'Business', 'Transportation', 'Lawrenceburg, B', 'Indiana', 'Dearborn', 'LAWRENCEBURG', 'LAWRENCEBURG', '', '', 'Packard Motor Cars'),
(47, 'Kleppers Confectionery', 'Business', 'Restaurants', 'Lawrenceburg, B', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', '', 'ice cream, candy'),
(48, 'Koetkemeyer Motor Company', 'Business', 'Transportation', 'Lawrenceburg, B', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', '', ''),
(49, 'Lawrenceburg Roller Mills Company', 'Business', 'Manufacturing', 'Lawrenceburg, B', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', '', 'flour mill'),
(50, 'Liberty Theatre', 'Business', 'Entertainment', 'Lawrenceburg, B', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', '', ''),
(51, 'MGP Ingredients, Inc.', 'Business', 'Distilleries', 'Lawrenceburg, B', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', 'Joseph Seagram and Sons', '', ''),
(52, 'Miami Stove Works', 'Business', '', 'Lawrenceburg, B', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', '', 'foundry'),
(53, 'Mitchell Brick Company', 'Business', 'Manufacturing', 'Lawrenceburg, B', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', '', 'brickyard'),
(54, 'Ohio Valley Coffin Company', 'Business', 'Manufacturing', 'Lawrenceburg, B', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', '', ''),
(55, 'Ohlen-Bishop Saw Factory', 'Business', 'Manufacturing', 'Lawrenceburg, B', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', '', 'George H. Bishop & Co.'),
(60, 'People&#39;s Coal Company', 'Business', '', 'Lawrenceburg, B', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', '', 'George Kunz, Julius Sneider, W. F. Ritzmann'),
(61, 'Lawrenceburg Photographers', 'Business', '', 'Lawrenceburg, B', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', '', 'C. W. Rugg, D.B. Rugg, George Lane, Albert Diehl, Kiefer & Kirsch'),
(62, 'Pierson-Hollowell Company', 'Business', 'Manufacturing', 'Lawrenceburg, B', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', '', 'lumber mill, tree plantation'),
(63, 'Popular Drive-In Theatre', 'Business', 'Entertainment', 'Lawrenceburg, B', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', '', '1949 theater'),
(64, 'Proximo Spirits', 'Business', 'Distilleries', 'Lawrenceburg, B', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', 'Joseph Seagram and Sons', '', ''),
(65, 'Purity Sweets', 'Business', '', 'Lawrenceburg, B', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', '', 'confectionery'),
(66, 'Ritzmann, W. F. Ice Cream Company', 'Business', 'Manufacturing', 'Lawrenceburg, B', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', '', 'ice cream'),
(67, 'Rossville Commercial Alcohol Corporation', 'Business', 'Distilleries', 'Lawrenceburg, B', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', '', 'General Industrial Alcohol Corp., American Solvents and Chemical Corp.'),
(68, 'Schenley Industries, Inc.', 'Business', 'Distilleries', 'Lawrenceburg, B', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', '', ''),
(69, 'Joseph E. Seagram and Sons', 'Business', 'Distilleries', 'Lawrenceburg, B', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', 'Proximo Spirits, MGP Ingredients, Inc.', '', ''),
(70, 'Lawrenceburg Soap Factory', 'Business', 'Manufacturing', 'Lawrenceburg, B', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', '', 'John Odenbach'),
(71, 'Suer Brick Company', 'Business', 'Manufacturing', 'Lawrenceburg, B', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', '', 'brick yard'),
(72, 'United Telephone Company', 'Business', 'Communications', 'Lawrenceburg, B', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', '', ''),
(73, 'Walnut Theater', 'Business', 'Entertainment', 'Lawrenceburg, B', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', '', ''),
(74, 'Lawrenceburg Woolen Mills', 'Business', 'Manufacturing', 'Lawrenceburg, B', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', '', ''),
(75, 'Lawrenceburg Census and Profiles', 'Government', '', 'Lawrenceburg, C', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', '', 'Greendale census'),
(76, 'Lawrenceburg Conservancy District', 'Government', '', 'Lawrenceburg, C', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', '', 'levee'),
(77, 'Lawrenceburg Accidental Deaths', 'History', '', 'Lawrenceburg, D', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', '', 'deaths 1800&#39;s'),
(78, 'Lawrenceburg Downtown Development', 'Business', '', 'Lawrenceburg, D', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', '', ''),
(79, 'Lawrenceburg Downtown Development Plans', 'Business', '', 'Lawrenceburg, D', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', '', 'Bicentennial Master Plan 1993-2002, Lawrenceburg Landing Center, 129 and 133 East High St.'),
(80, 'Lawrenceburg Employment', 'Business', '', 'Lawrenceburg, E', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', '', 'occupational wage survey 1962-1963'),
(81, 'Charles Lindbergh - Lawrenceburg', 'History', '', 'Lawrenceburg, H', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', '', ''),
(82, 'Strassenfest', 'Events', '', 'Lawrenceburg, E', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', '', ''),
(83, 'Lawrenceburg Event Center', 'Business', '', 'Lawrenceburg, E', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', '', ''),
(84, 'Lawrenceburg Events', 'Events', '', 'Lawrenceburg, E', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', '', 'soap box derby'),
(85, 'Lawrenceburg 1832 Flood', 'Disaster', 'Flood', 'Lawrenceburg, F', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', '', ''),
(86, 'Lawrenceburg 1847 Flood', 'Disaster', 'Flood', 'Lawrenceburg, F', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', '', 'Great Miami River changed course'),
(87, 'Lawrenceburg 1882, 1883, 1884 Floods', 'Disaster', 'Flood', 'Lawrenceburg, F', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', '', ''),
(88, 'Lawrenceburg 1907 Flood', 'Disaster', 'Flood', 'Lawrenceburg, F', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', '', ''),
(89, 'Lawrenceburg 1913 Flood', 'Disaster', 'Flood', 'Lawrenceburg, F', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', '', ''),
(91, 'Lawrenceburg 1937 Flood', 'Disaster', 'Flood', 'Lawrenceburg, F', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', '', ''),
(92, 'Lawrenceburg 1955 Flood', 'Disaster', 'Flood', 'Lawrenceburg, F', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', '', ''),
(93, 'Lawrenceburg 1964 Flood', 'Disaster', 'Flood', 'Lawrenceburg, F', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', '', ''),
(94, 'Lawrenceburg 1997 Flood', 'Disaster', 'Flood', 'Lawrenceburg, F', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', '', ''),
(95, 'Lawrenceburg Floods and Flood Control', 'Disaster', 'Flood', 'Lawrenceburg, F', 'Indiana', '', '', '', 'Lawrenceburg Conservancy District', '', 'levee, flood history'),
(96, 'Lawrenceburg Fire Department', 'Government', '', 'Lawrenceburg, F', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', '', ''),
(97, 'Casino Gaming Proposals', 'Gaming', '', 'Lawrenceburg, G', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', '', 'Ameristar, Argosy, Boomtown, Boyd, Empire, Golden Nugget, Harrah&#39;s, Imperial Palace, Lady Luck'),
(98, 'Lawrenceburg Gaming Device Stamps', 'Gaming', '', 'Lawrenceburg, G', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', '', ''),
(99, 'Hollywood Casino', 'Gaming', '', 'Lawrenceburg, G', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', 'Argosy Casino', ''),
(100, 'Lawrenceburg Officials 1832-1898', 'Government', '', 'Lawrenceburg, G', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', '', ''),
(101, 'Lawrenceburg 1983 Municipal Zoning Code', 'Government', '', 'Lawrenceburg, G', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', '', ''),
(102, 'Acorn Hall', 'Historic Homes', '', 'Lawrenceburg, H', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', '', ''),
(103, 'A. D. Cook Home', 'Historic Homes', '', 'Lawrenceburg, H', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', '', 'Ridge Avenue, First Church of Christ'),
(104, 'Angevine Cabin', 'Historic Homes', '', 'Lawrenceburg, H', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', '', 'Dearborn County Historical Society'),
(105, 'Dobell House', 'Historic Homes', '', 'Lawrenceburg, H', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', '', ''),
(106, 'Governor Durbin House', 'Historic Homes', '', 'Lawrenceburg, H', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', '', ''),
(107, 'James Ead Home', 'Historic Homes', '', 'Lawrenceburg, H', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', '', ''),
(108, 'Garnier House', 'Historic Homes', '', 'Lawrenceburg, H', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', '', ''),
(109, 'James Guard Home', 'Historic Homes', '', 'Lawrenceburg, H', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', '', ''),
(110, 'Hunt House', 'Historic Homes', '', 'Lawrenceburg, H', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', '', ''),
(111, 'Daniel S. Major House', 'Historic Homes', '', 'Lawrenceburg, H', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', 'Twin Bays, James McLeaster House', ''),
(112, 'Lawrenceburg Oldest House 1804', 'Historic Homes', '', 'Lawrenceburg, H', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', '', ''),
(113, 'Poellman House', 'Historic Homes', '', 'Lawrenceburg, H', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', '', ''),
(114, 'Vance Tousey Home', 'Historic Homes', '', 'Lawrenceburg, H', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', '', ''),
(115, 'Lawrenceburg History Sesquicentennial', 'History', '', 'Lawrenceburg, History', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', '', '1803-1953'),
(116, 'History of Lawrenceburg', 'History', '', 'Lawrenceburg, History', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', '', ''),
(117, 'Donner Party', 'History', '', 'Lawrenceburg, History, D', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', '', ''),
(118, 'Eisenhower Funeral Train', 'History', '', 'Lawrenceburg, History, E', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', '', 'April 1, 1969'),
(119, 'Lawrenceburg Famous Natives', 'History', '', 'Lawrenceburg, History, F', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', '', ''),
(120, 'Andrew Jackson Visit 1832', 'History', '', 'Lawrenceburg, History, J', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', '', ''),
(121, 'Lincoln&#39;s Visit 1861', 'History', '', 'Lawrenceburg, History, L', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', '', ''),
(122, 'Lawrenceburg Historic Sites', 'Historic Sites', '', 'Lawrenceburg, History', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', '', ''),
(123, 'WWI Incident', 'History', '', 'Lawrenceburg, History, W', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', '', 'David McAllister Post No. 239'),
(124, 'Lawrenceburg Historic Preservation Commission', 'History', '', 'Lawrenceburg, History', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', '', ''),
(125, 'Lawrenceburg Voters 1867', 'History', '', 'Lawrenceburg, History, V', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', '', ''),
(126, 'Dearborn County Hospital', 'Hospitals', '', 'Lawrenceburg, H', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', '', ''),
(127, 'Levee (1940)', 'Government', '', 'Lawrenceburg, L', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', '', 'flood control'),
(128, 'Lawrenceburg Public Library History', 'History', 'Library', 'Lawrenceburg, L', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', '', ''),
(129, 'Lawrenceburg Public Library Newspaper Articles', 'History', 'Library', 'Lawrenceburg, L', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', '', ''),
(130, 'Lawrenceburg Memorial Day', 'Events', '', 'Lawrenceburg, M', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', '', ''),
(131, 'Lawrenceburg Newspapers', 'History', '', 'Lawrenceburg, N', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', '', 'The News'),
(132, 'Lawrenceburg Newtown / Edenborough Square', 'History', '', 'Lawrenceburg, N', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', '', ''),
(133, 'Boy Scouts', 'Organizations', 'Youth', 'Lawrenceburg, Organizations', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', '', ''),
(134, 'David McAllister Post 239', 'Organizations', 'Military', 'Lawrenceburg, Organizations', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', '', ''),
(135, 'Dearborn Adult Center', 'Organizations', 'Community', 'Lawrenceburg, Organizations', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', '', ''),
(136, 'Golden Age Club', 'Organizations', '', 'Lawrenceburg, Organizations', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', '', ''),
(137, 'Historic Lawrenceburg Foundation', 'Organizations', '', 'Lawrenceburg, Organizations', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', '', ''),
(138, 'Kiwanis Club', 'Organizations', 'Community', 'Lawrenceburg, Organizations', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', '', ''),
(139, 'Knights of Columbus', 'Organizations', 'Religious', 'Lawrenceburg, Organizations', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', '', ''),
(140, 'Liedertafel Society', 'Organizations', 'Music', 'Lawrenceburg, Organizations', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', '', ''),
(141, 'Main Street', 'Organizations', 'Community', 'Lawrenceburg, Organizations', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', '', ''),
(142, 'Slater&#39;s Drum Corp', 'Organizations', 'Music', 'Lawrenceburg, Organizations', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', '', ''),
(143, 'St. Cecilia Musicale', 'Organizations', 'Music', 'Lawrenceburg, Organizations', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', '', ''),
(144, 'Masons, Odd Fellows, Knights of Pythias, O.V.A.', 'Organizations', '', 'Lawrenceburg, Organizations', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', '', ''),
(145, 'Oxbow, Inc.', 'Organizations', 'Preservation', 'Lawrenceburg, Organizations', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', '', ''),
(146, 'Rivertown Players', 'Organizations', 'Theater', 'Lawrenceburg, Organizations', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', '', ''),
(147, 'Bald-Headed Club', 'Organizations', '', 'Lawrenceburg, Organizations', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', '', ''),
(148, 'Daughters of the American Revolution (D. A. R.)', 'Organizations', '', 'Lawrenceburg, Organizations', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', '', ''),
(149, 'Dog Leg Society', 'Organizations', '', 'Lawrenceburg, Organizations', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', '', ''),
(150, 'Ersthane History Club', 'Organizations', '', 'Lawrenceburg, Organizations', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', '', ''),
(151, 'Gentlemen&#39;s Literary Club', 'Organizations', '', 'Lawrenceburg, Organizations', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', '', ''),
(152, 'Indiana Home Extension Association (IHEA)', 'Organizations', '', 'Lawrenceburg, Organizations', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', '', ''),
(153, 'Review Club', 'Organizations', '', 'Lawrenceburg, Organizations', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', '', ''),
(154, 'Secret Societies', 'Organizations', '', 'Lawrenceburg, Organizations', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', '', ''),
(155, 'Southeastern Indiana Art Guild', 'Organizations', '', 'Lawrenceburg, Organizations', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', '', ''),
(156, 'Tri Kappa Sorority', 'Organizations', '', 'Lawrenceburg, Organizations', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', '', ''),
(157, 'Veterans of Foreign Wars (VFW)', 'Organizations', 'Military', 'Lawrenceburg, Organizations', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', '', ''),
(158, 'Lawrenceburg Police Department', 'Government', '', 'Lawrenceburg, P', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', '', ''),
(159, 'Lawrenceburg Port', 'Government', '', 'Lawrenceburg, P', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', '', ''),
(160, 'Lawrenceburg Post Office History', 'Government', 'History', 'Lawrenceburg, P', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', '', ''),
(161, 'Promotional Booklets', 'Marketing', '', 'Lawrenceburg, P', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', '', 'marketing'),
(162, 'Lawrenceburg Route 48 Realignment', 'Transportation', '', 'Lawrenceburg, R', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', '', 'roadways'),
(163, 'Row House Restoration', 'Historic Homes', '', 'Lawrenceburg, R', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', '', ''),
(164, 'Ivy Tech', 'Schools', '', 'Lawrenceburg, S', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', '', 'college'),
(165, 'Lawrenceburg High School Building Plans', 'Schools', '', 'Lawrenceburg, S', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', '', ''),
(166, 'Lawrenceburg Schools Community Newsletters', 'Schools', '', 'Lawrenceburg, S', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', '', ''),
(167, 'Lawrenceburg High School Alumni Lists', 'Schools', '', 'Lawrenceburg, S', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', '', ''),
(168, 'LHS News 1920-1940', 'Schools', '', 'Lawrenceburg, S', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', '', ''),
(169, 'LHS Sports Articles', 'Schools', 'Sports', 'Lawrenceburg, S', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', '', ''),
(170, 'LHS Tiger Tales 1970&#39;s', 'Schools', '', 'Lawrenceburg, S', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', '', ''),
(171, 'LHS Tiger Tales 1980&#39;s', 'Schools', '', 'Lawrenceburg, S', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', '', ''),
(172, 'LHS Tiger Tales 1990&#39;s', 'Schools', '', 'Lawrenceburg, S', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', '', ''),
(173, 'LHS School Board', 'Schools', '', 'Lawrenceburg, S', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', '', ''),
(174, 'Lawrenceburg Central Elementary', 'Schools', '', 'Lawrenceburg, S', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', '', ''),
(175, 'History of Lawrenceburg Schools', 'Schools', 'History', 'Lawrenceburg, S', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', '', ''),
(176, 'Reorganization of County Schools (1960&#39;s)', 'Schools', '', 'Lawrenceburg, S', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', '', ''),
(177, 'Lawrenceburg Speedway', 'Sports', '', 'Lawrenceburg, S', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', '', ''),
(178, 'Lawrenceburg Sports', 'Sports', '', 'Lawrenceburg, S', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', '', ''),
(179, 'Lawrenceburg Non-school Sports', 'Sports', '', 'Lawrenceburg, S', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', '', '1926 Athletics of Old Lawrenceburg'),
(180, 'Lawrenceburg Tours / Tourism', 'Marketing', '', 'Lawrenceburg, T', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', '', ''),
(181, 'Lawrenceburg Water Quality', 'Government', 'Utilities', 'Lawrenceburg, W', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', '', ''),
(182, 'Raising of Walnut Street', 'History', '', 'Lawrenceburg, W', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', '', ''),
(183, 'Homestead School', 'Schools', '', 'Lawrenceburg, S', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', '', ''),
(184, 'Greendale School', 'Schools', '', 'Lawrenceburg, S', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', '', 'Lawrenceburg School District'),
(185, 'Dearborn County African American History', 'History', '', 'DC, A', 'Indiana', 'Dearborn', '', '', '', '', ''),
(186, 'First Baptist Church - Aurora', 'Churches', 'Baptist', 'DC, Churches', 'Indiana', 'Dearborn', 'Center', 'Aurora', '', '', ''),
(187, 'Dearborn County Airplanes', 'Transportation', 'Airplanes', 'DC, A', 'Indiana', 'Dearborn', '', '', '', '', ''),
(188, 'Dearborn County Archaeology', 'Archaeology', '', 'DC, A', 'Indiana', 'Dearborn', '', '', '', '', 'Collins Enclosure Report, Nowlin Mounds, Glenn Black Survey, Oberting Fort, Oberting-Glenn'),
(189, 'Dearborn County Asylum', 'History', '', 'DC, A', 'Indiana', 'Dearborn', '', '', '', 'YES Home, Youth Encouragement Services, James B. Wismann Home', '1890 Report, DC Asylum Deaths'),
(190, 'Blizzards', 'Disaster', 'Blizzard', 'DC, B', 'Indiana', 'Dearborn', '', '', '', '', '1977-1978'),
(191, 'Dearborn County Bridges', 'Transportation', 'Bridges', 'DC, B', 'Indiana', 'Dearborn', '', '', '', '', 'Guilford Covered Bridge'),
(192, 'Dearborn County Breweries', 'Business', 'Breweries', 'DC, B', 'Indiana', 'Dearborn', '', '', '', '', '1800-1976'),
(193, 'Indiana Archaeology', 'Archaeology', '', 'IN, A', 'Indiana', '', '', '', 'See Indiana County Files', '', 'Artifacts; Caddoan Family; Contacts; Glossary; Hopewell'),
(194, 'Agriculture', 'Agriculture', '', 'IN, A', 'Indiana', '', '', '', '', '', 'Reports 1992-1994; Tobacco'),
(196, 'Art, Literature, Music', 'Arts, Literature, Music', 'Authors', 'IN, A', 'Indiana', '', '', '', '', '', 'James Whitcomb Riley; Booth Tarkington, Lew Wallace, James Alexander Thom; James B. Gruelle'),
(198, 'Indiana Art, Literature, Music', 'Art, Literature, Music', 'Artists, Authors, Musicians', 'IN, A', 'Indiana', '', '', '', '', '', 'James Whitcomb Riley, Booth Tarkington, Lew Wallace, James Alexander Thom, James B. Gruelle'),
(199, 'Autograph Album 1881-1888', 'Ephemera', '', 'IN, A', 'Indiana', '', '', '', '', '', 'Chesterville, Indiana; Ella Carmichael'),
(200, 'Indiana Bicentennial Bulletins', 'Events', 'Bicentennial', 'IN, B', 'Indiana', '', '', '', '', '', ''),
(201, 'Indiana Automobiles', 'Transportation', 'Automobiles', 'IN, A', 'Indiana', '', '', '', '', '', 'Crash Facts, Autos Built in Indiana'),
(202, 'Indiana Bicentennial Review', 'Event', 'Bicentennial', 'IN, B', 'Indiana', '', '', '', '', '', '1971-1977'),
(203, 'Indiana Bicentennial Reports', 'Event', 'Bicentennial Reports', 'IN, B', 'Indiana', '', '', '', '', '', ''),
(204, 'Indiana Black Hisotry News', 'African-American', 'Black History, Liberia', 'IN, B', 'Indiana', '', '', '', '', '', 'Black History News, Emigrants to Liberia'),
(205, 'Indiana Cemetery Preservation', 'Cemetery', 'Preservation', 'IN, C', 'Indiana', '', '', '', '', '', 'Legislation, DNR Posters'),
(206, 'Indiana Chamber of Commerce', 'Business', 'Chamber of Commerce', 'IN, C', 'Indiana', '', '', '', '', '', 'Maps, Pamphlets'),
(207, 'Indiana Children&#39;s Bureau', 'Government', 'Children', 'IN, C', 'Indiana', '', '', '', '', '', 'History of Children&#39;s Bureau'),
(208, 'Indiana Church History', 'Church', 'History', 'IN, C', 'Indiana', '', '', '', '', '', 'Church Timelines, Indiana Methodism'),
(209, 'Indiana Civil Rights Commission', 'Government', 'Civil Rights', 'IN, C', 'Indiana', '', '', '', '', '', 'Timeline, Report'),
(210, 'Indiana Conservation', 'Conservation', '', 'IN, C', 'Indiana', '', '', '', '', '', 'Hoosier Conservation Magazine 1988'),
(211, 'Indiana Constitution', 'Government', 'Constitution', 'IN, C', 'Indiana', '', '', '', '', '', 'History'),
(212, 'Indiana Covered Bridges', 'Transportation', 'Bridges', 'IN, C', 'Indiana', '', '', '', '', '', 'Descriptions, Maps'),
(213, 'Indiana Economic Development', 'Business', 'Development', 'IN, E', 'Indiana', '', '', '', '', '', 'Pamphlets, Publications'),
(214, 'Indiana Education', 'Education', 'Higher Education', 'IN, E', 'Indiana', '', '', '', '', '', 'CAPPS'),
(215, 'Indiana Employment Security Division', 'Government', 'Employment', 'IN, E', 'Indiana', '', '', '', '', '', 'Job Servie Pamphlets'),
(216, 'Indiana Energy News', 'Energy', 'Municipal Power', 'IN, E', 'Indiana', '', '', '', '', '', 'Municipal Power, Conservation, Publications'),
(217, 'Indiana Famous People', 'Famous People', '', 'IN, F', 'Indiana', '', '', '', '', '', 'Lincoln, Favorite Sons'),
(218, 'Indiana Fire and Building Standards', 'Fire Standards', '', 'Publications', 'Indiana', '', '', '', '', '', ''),
(219, 'Indiana Government', 'Government', '', 'IN, G', 'Indiana', '', '', '', '', '', 'Hoosier in Congress; Portraits & Painters of Gov.; First Ladies; Albert G. Porter; Winfield T. Durbin; Edgar Whitcomb'),
(220, 'Indiana Health Facilities', 'Health', '', 'In, H', 'Indiana', '', '', '', '', '', 'Licensed Facilities Directory'),
(221, 'Indiana Highway Safety', 'Transportation', 'Highway Safety', 'IN, H', 'Indiana', '', '', '', '', '', 'Quilt & Saved by the Belt Activities'),
(222, 'Indiana Historic Preservation', 'Historic Preservation', '', 'IN, H', 'Indiana', '', '', '', '', '', 'Unregistered sites; Historical Socieities Listing, Museum Listings'),
(223, 'Indiana Hoosier Celebration 1988', 'Event', 'Celebration 1988', 'IN, H', 'Indiana', '', '', '', '', '', 'Anniversary'),
(224, 'Indiana History', 'History', '', 'IN, H', 'Indiana', '', '', '', '', '', 'History Day, Sesquicentennial'),
(225, 'Indiana Humanities', 'Humanities', '', 'IN, H', 'Indiana', '', '', '', '', '', 'Humanities Council'),
(226, 'Indiana, Indian Tribes', 'Native Americans', '', 'IN, I', 'Indiana', '', '', '', '', '', 'Quaker Mission; Chief Little Turtle: Pontiac; Friction with the Indianas; Miami; Cannibals; Capt. John Cooke; Chief Richardville; Chief Logan; Delaware'),
(227, 'Indiana Inventors Association', 'Invention', '', 'IN, I', 'Indiana', '', '', '', '', '', 'Information Sheet'),
(228, 'Indiana Maps', 'Maps', 'History', 'IN, M', 'Indiana', '', '', '', '', '', 'Illustrated; IN Satr; Doomsday; SE Roads; IN Map Collection; Zip Code;'),
(229, 'Indiana Military History', 'Military', '', 'IN, M', 'Indiana', '', '', '', '', '', 'Civil War; Vietnam'),
(230, 'Indiana Natural Resources', 'Natural Resources', '', 'IN, N', 'Indiana', '', '', '', '', '', 'Ground Water, Flood-prone; Mineral Resources; Fur Trading; Gold; Mineral Waters;'),
(231, 'Indiana Northwest Territory', 'Northwest Territory', '', 'IN, N', 'Indiana', '', '', '', '', '', 'Ordinance; Lessons'),
(232, 'Indiana OKI Reports', 'Government', '', 'IN, O', 'Indiana', '', '', '', '', '', 'Newsletter; Economic Outlook; Historic Resources in Community Development'),
(233, 'Indiana Orphan Trains', 'Orphan', '', 'IN, O', 'Indiana', '', '', '', '', '', 'Orphan Train Heritage Society of America'),
(234, 'Indiana Outdoor Recreation', 'Recreation', '', 'IN, O', 'Indiana', '', '', '', '', '', 'Assessment; Policy'),
(235, 'Indiana Pioneers', 'Pioneers', '', 'IN, P', 'Indiana', '', '', '', '', '', 'Simon Kenton; George Rogers Clark; David Crockett; Circuit Rider; Pioneer Transportation; Pioneer Living; The French; Travel'),
(236, 'Indiana Population Report', 'Population', '', 'IN, P', 'Indiana', '', '', '', '', '', 'Projections; 1960 IN Population Characteristcs'),
(237, 'Indiana Port Commission', 'Government', '', 'IN, P', 'Indiana', '', '', '', '', '', 'Impact Statements, Development Summary'),
(238, 'Indiana Railroads', 'Transportation', '', 'IN, R', 'Indiana', '', '', '', '', '', '1995 Report'),
(239, 'Indiana Recycling', 'Recycling', '', 'IN, R', 'Indiana', '', '', '', '', '', 'References; Newsletter; Coalition'),
(240, 'Indiana Sexual Harassment', 'Sexual Harassment', '', 'IN, S', 'Indiana', '', '', '', '', '', ''),
(241, 'Indiana Soils', 'Environment', '', 'IN, S', 'Indiana', '', '', '', '', '', 'Taxonomic & Environmental Factors'),
(242, 'Indiana State Symbols & County Origins', 'County & State History', '', 'IN, S', 'Indiana', '', '', '', '', '', 'IN Poems, Song, Flower, Seal, Illustrated Map, Word &#34;Hoosier,&#34; County Histories'),
(243, 'Indiana State Library', 'Library', '', 'IN, S', 'Indiana', '', '', '', '', '', 'Newsletters'),
(244, 'Lawrenceburg Floods General', 'Disaster', 'Flood', 'Lawrenceburg, F', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', '', ''),
(245, 'Miller-Guard Homestead', 'Historic Homes', '', 'Lawrenceburg, H', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', 'Thomas Miller Homestead', ''),
(246, 'Job Miller House', 'Historic Homes', '', 'Lawrenceburg, H', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', 'Job Miller family file', '', ''),
(247, 'Lawrenceburg Fire 1866', 'Disaster', 'Fire', 'Lawrenceburg, F', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', '', ''),
(248, '2008, 2012 Floods', 'Disaster', 'Flood', 'Lawrenceburg, F', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', '', ''),
(249, 'Walnut Street Mills', 'Business', 'Manufacturing', 'Lawrenceburg, B', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', '', 'grist-mill, 1913 flood'),
(250, 'Whisky&#39;s Restaurant', 'Business', 'Restaurants', 'Lawrenceburg, B', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', '', ''),
(251, 'Lt. General Ulysses S. Grant attempted murder', 'History', '', 'Lawrenceburg, H', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', '', 'train track sabotage, Guilford'),
(252, 'Dearborn County Business Development', 'Business', '', 'DC, B', 'Indiana', 'Dearborn', '', '', '', '', ''),
(253, 'Indiana Tourism', 'Tourism', '', 'IN, T', 'Indiana', '', '', '', '', '', 'State Route 1; Indiana Wander Book; Travel Guide; IN 10 Great Gifts to America; IN Museums'),
(254, 'Indiana Transportation', 'Transportation', '', 'IN, T', 'Indiana', '', '', '', '', '', 'Bicycles; Truck Industry; Canals; Steamboats; Early Waterways and Portages; River Travel; National Road; Conestoga Wagon; Travel in IN Long Ago; Touring Historic IN; Illustrated Maps; Canal Barges and Railroad Cars; Development of Transportation in IN; Le'),
(255, 'Indiana Trees', 'Natural Resources', '', 'IN, T', 'Indiana', '', '', '', '', '', '50 Trees of Indiana'),
(256, 'Indiana, Underground Railroad', 'History', '', 'IN, U', 'Indiana', '', '', '', '', '', '&#34;The Role of Free Blacks in Indiana&#39;s Underground Railroad&#34; - Floyd, Harrison, Washington Counties; &#34;The Underground Railroad and the Antislavery Movement in Fort Wayne and Allen County, Indiana&#34;; &#34;Walkin&#39; the Wabash: An Explor'),
(257, 'Indiana Utility', 'Business', '', 'IN, U', 'Indiana', '', '', '', '', '', 'REMC'),
(258, 'Indiana Volunteerism', 'Volunteers', '', 'IN, V', 'Indiana', '', '', '', '', '', 'Horizons Newsletters, Governors Program'),
(259, 'Indiana Wast Management', 'Sanitation', '', 'IN, W', 'Indiana', '', '', '', '', '', 'Management Plan 1988, 1992; Planning Guide 1970; SE IN Solic Waste District - Regional Vs. Local Approaches & Markets 1992; Construction of Mound Septic System'),
(260, 'Indiana Water Control and Water Management', 'Natural Resources', '', 'IN, W', 'Indiana', '', '', '', '', '', 'Water Quality Report 1998, 2000; IN Water Use 1986, 1989, 1990; Water Column & Water Quality Newsletters; Draft Wellhead Protection Program 1993'),
(261, 'Indiana Youth Institute', 'Youth', '', 'IN, Y', 'Indiana', '', '', '', '', '', 'IN Youth Poll 1992'),
(262, 'Dearborn County Cablevision', 'Business', '', 'DC, C', 'Indiana', 'Dearborn', '', '', '', '', ''),
(263, 'Mutual Insurance Company', 'Business', 'Insurance', 'DC, B', 'Indiana', 'Dearborn', '', '', '', '', ''),
(264, 'Perfect North', 'Business', '', 'DC, B', 'Indiana', 'Dearborn', '', '', '', '', ''),
(265, 'Dearborn County Census', 'Government', 'Census', 'DC, C', 'Indiana', 'Dearborn', '', '', '', '', '1940-1980'),
(266, 'St. John&#39;s Luthern - Caesar Creek Township', 'Churchs', 'Lutheran', 'DC, Churches, Caesar Creek Twp', 'Indiana', 'Dearborn', 'Caesar Creek', 'Farmer&#39;s Retreat', '', '', ''),
(267, 'First Presbyterian Church', 'Churches', 'Presbyterian', 'DC, Churches, Center Twp.', 'Indiana', 'Dearborn', 'Center', 'Aurora', '', '', ''),
(268, 'First United Methodist Church', 'Churches', 'Methodist', 'DC, Churches, Center Twp', 'Indiana', 'Dearborn', 'Center', 'Aurora', '', '', ''),
(269, 'St. Mary&#39;s Catholic Church', 'Churches', 'Catholic', 'DC, Churches, Center Twp', 'Indiana', 'Dearborn', 'Center', 'Aurora', '', '', ''),
(270, 'St. John Evangelical Lutheran Church', 'Churches', 'Luthern', 'DC, Churches, Center Twp', 'Indiana', 'Dearborn', 'Center', 'Aurora', '', '', ''),
(271, 'Dillsboro United Methodist', 'Churches', 'Methodist', 'DC, Churches, Clay Township', 'Indiana', 'Dearborn', 'Clay', 'Dillsboro', '', '', ''),
(272, 'Hopewell Presbyterian Church', 'Churches', 'Presbyterian', 'DC, Churches, Clay Twp', 'Indiana', 'Dearborn', 'Clay', 'Dillsboro', '', '', ''),
(273, 'St. Peter Lutheran Church', 'Churches', 'Lutheran', 'DC, Churches, Clay Twp', 'Indiana', 'Dearborn', 'Clay', 'Dillsboro', '', '', ''),
(274, 'St. Paul&#39;s Evangelical Luthern', 'Churches', 'Lutheran', 'DC, Churches, Harrison Twp', 'Indiana', 'Dearborn', 'Harrison', 'West Harrison', '', '', ''),
(275, 'Lawrenceville Methodist Church', 'Churches', 'Methodist', 'DC, Churches, Jackson Twp', 'Indiana', 'Dearborn', 'Jackson', 'Lawrenceville', '', '', 'Lawrenceville Cemetery Records'),
(276, 'St. Jacob&#39;s United Church of Christ', 'Churches', 'United Church of Christ', 'DC, Churches, Jacson Twp', 'Indiana', 'Dearborn', 'Jackson', 'Sunman', '', '', ''),
(277, 'St. John&#39;s Lutheran - Jackson Township', 'Churches', 'Lutheran', 'DC, Churches, Jackson Twp', 'Indiana', 'Dearborn', 'Jackson', 'Sunman', '', '', 'Hubbell&#39;s Corner, burial records 1881-1972; marriages 1880-1972'),
(278, 'St. John the Baptist Catholic Church', 'Churches', 'Catholic', 'DC, Churches, Kelso Twp', 'Indiana', 'Dearborn', 'Kelso', 'Dover', '', '', ''),
(279, 'St. Joseph&#39;s Catholic Church', 'Churches', 'Catholic', 'DC, Churches, Kelso Twp', 'Indiana', 'Dearborn', 'Kelso', 'St. Leon', '', '', 'Cemetery Records 1855-2014'),
(280, 'St. Paul&#39;s Lutheran (Stone) Church', 'Churces', 'Lutheran', 'DC, Churches, Kelso Twp', 'Indiana', 'Dearborn', 'Kelso', 'New Alsace', '', '', 'Marriages 1873-1928, Cemetery Records, Baptismal Records'),
(281, 'St. Paul&#39;s Catholic Church - New Alsace', 'Churches', 'Catholic', 'DC, Churches, Kelso Twp', 'Indiana', 'Dearborn', 'Kelso', 'New Alsace', '', '', 'Baptisms, Marriages, Deaths, 1842'),
(282, 'Beecher Presbyterian Church', 'Churches', 'Presbyterian', 'DC, Churches, Lawrenceburg Twp', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', '', ''),
(283, 'Belleview Methodist Church', 'Churches', 'Methodist', 'DC, Churches, Lawrenceburg Twp', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', '', ''),
(284, 'Bethlehem Lutheran Church', 'Churches', 'Lutheran', 'DC, Churches, Lawrenceburg Twp', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', '', ''),
(285, 'Emanuel Lutheran Church', 'Churches', 'Lutheran', 'DC, Churches, Lawrenceburg Twp', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', '', ''),
(286, 'First Baptist Church - Lawrenceburg', 'Churches', 'Baptist', 'DC, Churches, Lawrenceburg Twp', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', '', ''),
(287, 'First Church of Christ', 'Churches', 'Church of Christ', 'DC, Churches, Lawrenceburg Twp', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', '', ''),
(288, 'German Methodist Church', 'Churches', 'Methodist', 'DC, Churches, Lawrenceburg Twp', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', '', ''),
(289, 'Hamline Chapel United Methoidst Church', 'Churches', 'Methodist', 'DC, Churches, Lawrenceburg Twp', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', '', ''),
(290, 'St. John&#39;s Lutheran&#39;s Church - Bellaire', 'Churches', 'Lutheran', 'DC, Churches, Lawrenceburg Twp', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', '', ''),
(291, 'St. Lawrence Catholic Church', 'Churches', 'Catholic', 'DC, Churches, Lawrenceburg Twp', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', '', ''),
(292, 'Trinity Episcopal Church', 'Churches', 'Episcopal', 'DC, Churches, Lawrenceburg Twp', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', '', ''),
(293, 'Union Valley Missionary Baptist', 'Churches', 'Baptist', 'DC, Churches, Lawrenceburg Twp', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', '', ''),
(294, 'Zion United Church of Christ', 'Churches', 'United Church of Christ', 'DC, Churches, Lawrenceburg Twp', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', '', ''),
(295, 'Ebenezer Baptist Church', 'Churches', 'Baptist', 'DC, Churches, Manchester Twp', 'Indiana', 'Dearborn', 'Manchester', '', '', '', ''),
(296, 'First Baptist Church - Manchester Twp', 'Churches', 'Baptist', 'DC, Churches, Manchester Twp', 'Indiana', 'Dearborn', 'Manchester', '', '', '', '&#34;Old School Baptists&#34;'),
(297, 'Hogan Hill Baptist Church', 'Churches', 'Baptist', 'DC, Churches, Manchester Twp', 'Indiana', 'Dearborn', 'Manchester', '', '', '', ''),
(298, 'St. Stephen&#39;s (Busse) Lutheran Church', 'Churches', 'Lutheran', 'DC, Churches, Manchester Township', 'Indiana', 'Dearborn', 'Manchester', '', '', '', ''),
(299, 'Second Church of Chrst', 'Churches', '', 'DC, Churches, Manchester Twp', 'Indiana', 'Dearborn', 'Manchester', '', '', '', ''),
(300, 'Manchester Universalist Church', 'Churches', '', 'DC, Churches, Manchester Twp', 'Indiana', 'Dearborn', 'Manchester', '', '', '', ''),
(301, 'Zion Evangelical Lutheran Church', 'Churches', 'Lutheran', 'DC, Churches, Manchester Twp.', 'Indiana', 'Dearborn', 'Manchester', '', '', '', ''),
(302, 'Bright Christian Church', 'Churches', 'Christian', 'DC, Churches, Miller Twp.', 'Indiana', 'Dearborn', 'Miller', 'Bright', '', '', ''),
(303, 'Bright Methodist Church', 'Churches', 'Methodist', 'DC, Churches, Miller Twp', 'Indiana', 'Dearborn', 'Miller', 'Bright', '', '', ''),
(304, 'East Fork Methodist', 'Churches', 'Methodist', 'DC, Churches, Miller Twp', 'Indiana', 'Dearborn', 'Miller', '', '', '', 'East Fork Stone Chapel; Methodist Tanner Creek Circuit'),
(305, 'Providence Presbyterian Church', 'Churches', 'Presbyterian', 'DC, Churches, Miller Twp', 'Indiana', 'Dearborn', 'Miller', '', '', '', ''),
(306, 'St. Teresa Benedicta of the Cross Church', 'Churches', 'Catholic', 'DC, Churches, Miler Twp', 'Indiana', 'Dearborn', 'Miller', 'Bright', '', '', ''),
(307, 'Tanner Valley United Methodist Church', 'Churches', 'Methodist', 'DC, Churches, Miller Twp', 'Indiana', 'Dearborn', 'Miller', '', '', '', 'Guilford United Methodist Church'),
(308, 'Mt. Tabor United Methodist Church', 'Churches', 'Methodist', 'DC, Churches, Washington Twp', 'Indiana', 'Dearborn', 'Washington', '', '', '', ''),
(309, 'Mt. Hope Church', 'Churches', '', 'DC, Churches, York Twp', 'Indiana', 'Dearborn', 'York', '', '', '', ''),
(310, 'West Fork Church', 'Churches', '', 'DC, Churches, York Twp', 'Indiana', 'Dearborn', 'York', '', '', '', ''),
(311, 'St. Martin&#39;s Catholic Church', 'Churches', 'Catholic', 'DC, Churches, York Twp', 'Indiana', 'Dearborn', 'York', 'Yorkville', '', '', ''),
(312, 'Indiana Schools Character Education 1942', 'Schools', '', 'IN, S', 'Indiana', '', '', '', '', '', 'State Department of Public Instruction'),
(313, 'Marquis de Lafayette Visit 1825', 'History', '', 'L, History, L', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', '', 'Zebulon Pike'),
(314, 'Newtown School', 'Schools', '', 'Lawrenceburg, S', 'Indiana', 'Dearborn', 'Lawrenceburg', 'Lawrenceburg', '', '', 'Lawrenceburg School District');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(13) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  `role` int(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `role`) VALUES
(1, 'admin', 'LPLD', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `filename` (`filename`) USING BTREE,
  ADD UNIQUE KEY `filename_2` (`filename`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=315;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(13) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
