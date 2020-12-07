-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 07, 2020 at 04:36 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `countries`
--

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL,
  `numcode` smallint(6) DEFAULT NULL,
  `phonecode` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`id`, `name`, `numcode`, `phonecode`) VALUES
(1, 'Afghanistan', 4, 93),
(2, 'Albania', 8, 355),
(3, 'Algeria', 12, 213),
(4, 'American Samoa', 16, 1684),
(5, 'Andorra', 20, 376),
(6, 'Angola', 24, 244),
(7, 'Anguilla', 660, 1264),
(8, 'Antarctica', NULL, 0),
(9, 'Antigua and Barbuda', 28, 1268),
(10, 'Argentina', 32, 54),
(11, 'Armenia', 51, 374),
(12, 'Aruba', 533, 297),
(13, 'Australia', 36, 61),
(14, 'Austria', 40, 43),
(15, 'Azerbaijan', 31, 994),
(16, 'Bahamas', 44, 1242),
(17, 'Bahrain', 48, 973),
(18, 'Bangladesh', 50, 880),
(19, 'Barbados', 52, 1246),
(20, 'Belarus', 112, 375),
(21, 'Belgium', 56, 32),
(22, 'Belize', 84, 501),
(23, 'Benin', 204, 229),
(24, 'Bermuda', 60, 1441),
(25, 'Bhutan', 64, 975),
(26, 'Bolivia', 68, 591),
(27, 'Bosnia and Herzegovina', 70, 387),
(28, 'Botswana', 72, 267),
(29, 'Bouvet Island', NULL, 0),
(30, 'Brazil', 76, 55),
(31, 'British Indian Ocean Territory', NULL, 246),
(32, 'Brunei Darussalam', 96, 673),
(33, 'Bulgaria', 100, 359),
(34, 'Burkina Faso', 854, 226),
(35, 'Burundi', 108, 257),
(36, 'Cambodia', 116, 855),
(37, 'Cameroon', 120, 237),
(38, 'Canada', 124, 1),
(39, 'Cape Verde', 132, 238),
(40, 'Cayman Islands', 136, 1345),
(41, 'Central African Republic', 140, 236),
(42, 'Chad', 148, 235),
(43, 'Chile', 152, 56),
(44, 'China', 156, 86),
(45, 'Christmas Island', NULL, 61),
(46, 'Cocos (Keeling) Islands', NULL, 672),
(47, 'Colombia', 170, 57),
(48, 'Comoros', 174, 269),
(49, 'Congo', 178, 242),
(50, 'Congo, the Democratic Republic of the', 180, 242),
(51, 'Cook Islands', 184, 682),
(52, 'Costa Rica', 188, 506),
(53, 'Cote D\'Ivoire', 384, 225),
(54, 'Croatia', 191, 385),
(55, 'Cuba', 192, 53),
(56, 'Cyprus', 196, 357),
(57, 'Czech Republic', 203, 420),
(58, 'Denmark', 208, 45),
(59, 'Djibouti', 262, 253),
(60, 'Dominica', 212, 1767),
(61, 'Dominican Republic', 214, 1809),
(62, 'Ecuador', 218, 593),
(63, 'Egypt', 818, 20),
(64, 'El Salvador', 222, 503),
(65, 'Equatorial Guinea', 226, 240),
(66, 'Eritrea', 232, 291),
(67, 'Estonia', 233, 372),
(68, 'Ethiopia', 231, 251),
(69, 'Falkland Islands (Malvinas)', 238, 500),
(70, 'Faroe Islands', 234, 298),
(71, 'Fiji', 242, 679),
(72, 'Finland', 246, 358),
(73, 'France', 250, 33),
(74, 'French Guiana', 254, 594),
(75, 'French Polynesia', 258, 689),
(76, 'French Southern Territories', NULL, 0),
(77, 'Gabon', 266, 241),
(78, 'Gambia', 270, 220),
(79, 'Georgia', 268, 995),
(80, 'Germany', 276, 49),
(81, 'Ghana', 288, 233),
(82, 'Gibraltar', 292, 350),
(83, 'Greece', 300, 30),
(84, 'Greenland', 304, 299),
(85, 'Grenada', 308, 1473),
(86, 'Guadeloupe', 312, 590),
(87, 'Guam', 316, 1671),
(88, 'Guatemala', 320, 502),
(89, 'Guinea', 324, 224),
(90, 'Guinea-Bissau', 624, 245),
(91, 'Guyana', 328, 592),
(92, 'Haiti', 332, 509),
(93, 'Heard Island and Mcdonald Islands', NULL, 0),
(94, 'Holy See (Vatican City State)', 336, 39),
(95, 'Honduras', 340, 504),
(96, 'Hong Kong', 344, 852),
(97, 'Hungary', 348, 36),
(98, 'Iceland', 352, 354),
(99, 'India', 356, 91),
(100, 'Indonesia', 360, 62),
(101, 'Iran, Islamic Republic of', 364, 98),
(102, 'Iraq', 368, 964),
(103, 'Ireland', 372, 353),
(104, 'Israel', 376, 972),
(105, 'Italy', 380, 39),
(106, 'Jamaica', 388, 1876),
(107, 'Japan', 392, 81),
(108, 'Jordan', 400, 962),
(109, 'Kazakhstan', 398, 7),
(110, 'Kenya', 404, 254),
(111, 'Kiribati', 296, 686),
(112, 'Korea, Democratic People\'s Republic of', 408, 850),
(113, 'Korea, Republic of', 410, 82),
(114, 'Kuwait', 414, 965),
(115, 'Kyrgyzstan', 417, 996),
(116, 'Lao People\'s Democratic Republic', 418, 856),
(117, 'Latvia', 428, 371),
(118, 'Lebanon', 422, 961),
(119, 'Lesotho', 426, 266),
(120, 'Liberia', 430, 231),
(121, 'Libyan Arab Jamahiriya', 434, 218),
(122, 'Liechtenstein', 438, 423),
(123, 'Lithuania', 440, 370),
(124, 'Luxembourg', 442, 352),
(125, 'Macao', 446, 853),
(126, 'Macedonia, the Former Yugoslav Republic of', 807, 389),
(127, 'Madagascar', 450, 261),
(128, 'Malawi', 454, 265),
(129, 'Malaysia', 458, 60),
(130, 'Maldives', 462, 960),
(131, 'Mali', 466, 223),
(132, 'Malta', 470, 356),
(133, 'Marshall Islands', 584, 692),
(134, 'Martinique', 474, 596),
(135, 'Mauritania', 478, 222),
(136, 'Mauritius', 480, 230),
(137, 'Mayotte', NULL, 269),
(138, 'Mexico', 484, 52),
(139, 'Micronesia, Federated States of', 583, 691),
(140, 'Moldova, Republic of', 498, 373),
(141, 'Monaco', 492, 377),
(142, 'Mongolia', 496, 976),
(143, 'Montserrat', 500, 1664),
(144, 'Morocco', 504, 212),
(145, 'Mozambique', 508, 258),
(146, 'Myanmar', 104, 95),
(147, 'Namibia', 516, 264),
(148, 'Nauru', 520, 674),
(149, 'Nepal', 524, 977),
(150, 'Netherlands', 528, 31),
(151, 'Netherlands Antilles', 530, 599),
(152, 'New Caledonia', 540, 687),
(153, 'New Zealand', 554, 64),
(154, 'Nicaragua', 558, 505),
(155, 'Niger', 562, 227),
(156, 'Nigeria', 566, 234),
(157, 'Niue', 570, 683),
(158, 'Norfolk Island', 574, 672),
(159, 'Northern Mariana Islands', 580, 1670),
(160, 'Norway', 578, 47),
(161, 'Oman', 512, 968),
(162, 'Pakistan', 586, 92),
(163, 'Palau', 585, 680),
(164, 'Palestinian Territory, Occupied', NULL, 970),
(165, 'Panama', 591, 507),
(166, 'Papua New Guinea', 598, 675),
(167, 'Paraguay', 600, 595),
(168, 'Peru', 604, 51),
(169, 'Philippines', 608, 63),
(170, 'Pitcairn', 612, 0),
(171, 'Poland', 616, 48),
(172, 'Portugal', 620, 351),
(173, 'Puerto Rico', 630, 1787),
(174, 'Qatar', 634, 974),
(175, 'Reunion', 638, 262),
(176, 'Romania', 642, 40),
(177, 'Russian Federation', 643, 70),
(178, 'Rwanda', 646, 250),
(179, 'Saint Helena', 654, 290),
(180, 'Saint Kitts and Nevis', 659, 1869),
(181, 'Saint Lucia', 662, 1758),
(182, 'Saint Pierre and Miquelon', 666, 508),
(183, 'Saint Vincent and the Grenadines', 670, 1784),
(184, 'Samoa', 882, 684),
(185, 'San Marino', 674, 378),
(186, 'Sao Tome and Principe', 678, 239),
(187, 'Saudi Arabia', 682, 966),
(188, 'Senegal', 686, 221),
(189, 'Serbia and Montenegro', NULL, 381),
(190, 'Seychelles', 690, 248),
(191, 'Sierra Leone', 694, 232),
(192, 'Singapore', 702, 65),
(193, 'Slovakia', 703, 421),
(194, 'Slovenia', 705, 386),
(195, 'Solomon Islands', 90, 677),
(196, 'Somalia', 706, 252),
(197, 'South Africa', 710, 27),
(198, 'South Georgia and the South Sandwich Islands', NULL, 0),
(199, 'Spain', 724, 34),
(200, 'Sri Lanka', 144, 94),
(201, 'Sudan', 736, 249),
(202, 'Suriname', 740, 597),
(203, 'Svalbard and Jan Mayen', 744, 47),
(204, 'Swaziland', 748, 268),
(205, 'Sweden', 752, 46),
(206, 'Switzerland', 756, 41),
(207, 'Syrian Arab Republic', 760, 963),
(208, 'Taiwan, Province of China', 158, 886),
(209, 'Tajikistan', 762, 992),
(210, 'Tanzania, United Republic of', 834, 255),
(211, 'Thailand', 764, 66),
(212, 'Timor-Leste', NULL, 670),
(213, 'Togo', 768, 228),
(214, 'Tokelau', 772, 690),
(215, 'Tonga', 776, 676),
(216, 'Trinidad and Tobago', 780, 1868),
(217, 'Tunisia', 788, 216),
(218, 'Turkey', 792, 90),
(219, 'Turkmenistan', 795, 7370),
(220, 'Turks and Caicos Islands', 796, 1649),
(221, 'Tuvalu', 798, 688),
(222, 'Uganda', 800, 256),
(223, 'Ukraine', 804, 380),
(224, 'United Arab Emirates', 784, 971),
(225, 'United Kingdom', 826, 44),
(226, 'United States', 840, 1),
(227, 'United States Minor Outlying Islands', NULL, 1),
(228, 'Uruguay', 858, 598),
(229, 'Uzbekistan', 860, 998),
(230, 'Vanuatu', 548, 678),
(231, 'Venezuela', 862, 58),
(232, 'Viet Nam', 704, 84),
(233, 'Virgin Islands, British', 92, 1284),
(234, 'Virgin Islands, U.s.', 850, 1340),
(235, 'Wallis and Futuna', 876, 681),
(236, 'Western Sahara', 732, 212),
(237, 'Yemen', 887, 967),
(238, 'Zambia', 894, 260),
(239, 'Zimbabwe', 716, 263);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=253;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
