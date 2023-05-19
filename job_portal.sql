-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 19, 2023 at 04:45 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `job_portal`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_academic_qualification`
--

CREATE TABLE `tbl_academic_qualification` (
  `id` int(255) NOT NULL,
  `member_no` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `institution` varchar(255) NOT NULL,
  `course` varchar(255) NOT NULL,
  `level` varchar(255) NOT NULL,
  `timeframe` varchar(255) NOT NULL,
  `certificate` longblob NOT NULL,
  `transcript` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_alerts`
--

CREATE TABLE `tbl_alerts` (
  `id` int(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_alerts`
--

INSERT INTO `tbl_alerts` (`id`, `code`, `description`, `type`) VALUES
(3, '0927', 'Email address is already registered', 'warning'),
(4, '0346', 'Invalid email or password', 'danger'),
(5, '9837', 'Your profile have been updated successfully', 'success'),
(6, '9564', 'Password updated successfully', 'success'),
(9, '2305', 'Professional qualification was added successfully', 'success'),
(11, '0521', 'Qualification was deleted successfully', 'success'),
(13, '9367', 'language have been added', 'success'),
(14, '0591', 'Language was deleted successfully', 'success'),
(15, '8763', 'Language have been updated', 'success'),
(16, '6734', 'Professional qualification was updated', 'success'),
(17, '9843', 'Your job advertise have been posted successfully', 'success'),
(18, '1964', 'Training / Workshop have been added successfully', 'success'),
(20, '9210', 'working experience have been added', 'success'),
(22, '9215', 'working experience updated successfully', 'success'),
(24, '0593', 'working experience was deleted', 'success'),
(26, '9522', 'Training / workshop record have been deleted', 'success'),
(28, '2303', 'Academic qualification have been added successfully', 'success'),
(30, '1521', 'Academic qualification was deleted', 'success'),
(32, '3214', 'Academic qualification have been updated', 'success'),
(34, '2380', 'Referee was added successfully', 'success'),
(36, '7642', 'Referee information have been updated', 'success'),
(38, '0173', 'Job Ad have been deleted', 'success'),
(43, '5634', 'Your message was sent successfully', 'success'),
(44, '3091', 'You have successfully changed your password', 'success'),
(45, '3591', 'An error occurred while updating your password', 'danger'),
(46, '2290', 'Your certificate size must be less or equal to <strong>1MB</strong>', 'warning'),
(47, '2490', 'Your transcript size must be less or equal to <strong>1MB</strong>', 'warning'),
(48, '5790', 'Training information was updated', 'success'),
(50, '3478', 'Your image size must be less or equal to <strong>1MB</strong>', 'warning'),
(51, '6789', 'Attachment was added successfully', 'success'),
(53, '6784', 'Attachment was deleted successfully', 'success'),
(55, '7764', 'Attachment was updated successfully', 'success'),
(57, '9517', 'Referee have been deleted', 'success');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_categories`
--

CREATE TABLE `tbl_categories` (
  `id` int(255) NOT NULL,
  `category` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_categories`
--

INSERT INTO `tbl_categories` (`id`, `category`) VALUES
(1, 'Accounting'),
(2, 'Auditing'),
(3, 'Banking and Financial Services'),
(4, 'CEO and General Management'),
(5, 'Community and Social Devt'),
(6, 'Creative and Design'),
(7, 'Education and Training'),
(8, 'Engineering and Construction'),
(9, 'Farming and Agribusiness'),
(10, 'Healthcare and Pharmaceutical'),
(11, 'HR & Administration'),
(12, 'IT and Telecoms'),
(13, 'Legal'),
(14, 'Manufacturing'),
(15, 'Marketing,Media and Brand'),
(16, 'Mining and Natural Resources'),
(17, 'Project & Programme Mngmnt'),
(18, 'Research,Science and Biotech'),
(19, 'Security'),
(20, 'Strategy and Consulting'),
(21, 'Tourism and Travel'),
(22, 'Trades and Services'),
(23, 'Transport and Logistics'),
(24, 'Other');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_countries`
--

CREATE TABLE `tbl_countries` (
  `id` int(11) NOT NULL,
  `country_code` varchar(2) NOT NULL DEFAULT '',
  `country_name` varchar(100) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_countries`
--

INSERT INTO `tbl_countries` (`id`, `country_code`, `country_name`) VALUES
(1, 'AF', 'Afghanistan'),
(2, 'AL', 'Albania'),
(3, 'DZ', 'Algeria'),
(4, 'DS', 'American Samoa'),
(5, 'AD', 'Andorra'),
(6, 'AO', 'Angola'),
(7, 'AI', 'Anguilla'),
(8, 'AQ', 'Antarctica'),
(9, 'AG', 'Antigua and Barbuda'),
(10, 'AR', 'Argentina'),
(11, 'AM', 'Armenia'),
(12, 'AW', 'Aruba'),
(13, 'AU', 'Australia'),
(14, 'AT', 'Austria'),
(15, 'AZ', 'Azerbaijan'),
(16, 'BS', 'Bahamas'),
(17, 'BH', 'Bahrain'),
(18, 'BD', 'Bangladesh'),
(19, 'BB', 'Barbados'),
(20, 'BY', 'Belarus'),
(21, 'BE', 'Belgium'),
(22, 'BZ', 'Belize'),
(23, 'BJ', 'Benin'),
(24, 'BM', 'India'),
(25, 'BT', 'Bhutan'),
(26, 'BO', 'Bolivia'),
(27, 'BA', 'Bosnia and Herzegovina'),
(28, 'BW', 'Botswana'),
(29, 'BV', 'Bouvet Island'),
(30, 'BR', 'Brazil'),
(31, 'IO', 'British Indian Ocean Territory'),
(32, 'BN', 'Brunei Darussalam'),
(33, 'BG', 'Bulgaria'),
(34, 'BF', 'Burkina Faso'),
(35, 'BI', 'Burundi'),
(36, 'KH', 'Cambodia'),
(37, 'CM', 'Cameroon'),
(38, 'CA', 'Canada'),
(39, 'CV', 'Cape Verde'),
(40, 'KY', 'Cayman Islands'),
(41, 'CF', 'Central African Republic'),
(42, 'TD', 'Chad'),
(43, 'CL', 'Chile'),
(44, 'CN', 'China'),
(45, 'CX', 'Christmas Island'),
(46, 'CC', 'Cocos (Keeling) Islands'),
(47, 'CO', 'Colombia'),
(48, 'KM', 'Comoros'),
(49, 'CG', 'Congo'),
(50, 'CK', 'Cook Islands'),
(51, 'CR', 'Costa Rica'),
(52, 'HR', 'Croatia (Hrvatska)'),
(53, 'CU', 'Cuba'),
(54, 'CY', 'Cyprus'),
(55, 'CZ', 'Czech Republic'),
(56, 'DK', 'Denmark'),
(57, 'DJ', 'Djibouti'),
(58, 'DM', 'Dominica'),
(59, 'DO', 'Dominican Republic'),
(60, 'TP', 'East Timor'),
(61, 'EC', 'Ecuador'),
(62, 'EG', 'Egypt'),
(63, 'SV', 'El Salvador'),
(64, 'GQ', 'Equatorial Guinea'),
(65, 'ER', 'Eritrea'),
(66, 'EE', 'Estonia'),
(67, 'ET', 'Ethiopia'),
(68, 'FK', 'Falkland Islands (Malvinas)'),
(69, 'FO', 'Faroe Islands'),
(70, 'FJ', 'Fiji'),
(71, 'FI', 'Finland'),
(72, 'FR', 'France'),
(73, 'FX', 'France, Metropolitan'),
(74, 'GF', 'French Guiana'),
(75, 'PF', 'French Polynesia'),
(76, 'TF', 'French Southern Territories'),
(77, 'GA', 'Gabon'),
(78, 'GM', 'Gambia'),
(79, 'GE', 'Georgia'),
(80, 'DE', 'Germany'),
(81, 'GH', 'Ghana'),
(82, 'GI', 'Gibraltar'),
(83, 'GK', 'Guernsey'),
(84, 'GR', 'Greece'),
(85, 'GL', 'Greenland'),
(86, 'GD', 'Grenada'),
(87, 'GP', 'Guadeloupe'),
(88, 'GU', 'Guam'),
(89, 'GT', 'Guatemala'),
(90, 'GN', 'Guinea'),
(91, 'GW', 'Guinea-Bissau'),
(92, 'GY', 'Guyana'),
(93, 'HT', 'Haiti'),
(94, 'HM', 'Heard and Mc Donald Islands'),
(95, 'HN', 'Honduras'),
(96, 'HK', 'Hong Kong'),
(97, 'HU', 'Hungary'),
(98, 'IS', 'Iceland'),
(99, 'IN', 'India'),
(100, 'IM', 'Isle of Man'),
(101, 'ID', 'Indonesia'),
(102, 'IR', 'Iran (Islamic Republic of)'),
(103, 'IQ', 'Iraq'),
(104, 'IE', 'Ireland'),
(105, 'IL', 'Israel'),
(106, 'IT', 'Italy'),
(107, 'CI', 'Ivory Coast'),
(108, 'JE', 'Jersey'),
(109, 'JM', 'Jamaica'),
(110, 'JP', 'Japan'),
(111, 'JO', 'Jordan'),
(112, 'KZ', 'Kazakhstan'),
(113, 'KE', 'Kenya'),
(114, 'KI', 'Kiribati'),
(115, 'KP', 'Korea, Democratic People\'s Republic of'),
(116, 'KR', 'Korea, Republic of'),
(117, 'XK', 'Kosovo'),
(118, 'KW', 'Kuwait'),
(119, 'KG', 'Kyrgyzstan'),
(120, 'LA', 'Lao People\'s Democratic Republic'),
(121, 'LV', 'Latvia'),
(122, 'LB', 'Lebanon'),
(123, 'LS', 'Lesotho'),
(124, 'LR', 'Liberia'),
(125, 'LY', 'Libyan Arab Jamahiriya'),
(126, 'LI', 'Liechtenstein'),
(127, 'LT', 'Lithuania'),
(128, 'LU', 'Luxembourg'),
(129, 'MO', 'Macau'),
(130, 'MK', 'Macedonia'),
(131, 'MG', 'Madagascar'),
(132, 'MW', 'Malawi'),
(133, 'MY', 'Malaysia'),
(134, 'MV', 'Maldives'),
(135, 'ML', 'Mali'),
(136, 'MT', 'Malta'),
(137, 'MH', 'Marshall Islands'),
(138, 'MQ', 'Martinique'),
(139, 'MR', 'Mauritania'),
(140, 'MU', 'Mauritius'),
(141, 'TY', 'Mayotte'),
(142, 'MX', 'Mexico'),
(143, 'FM', 'Micronesia, Federated States of'),
(144, 'MD', 'Moldova, Republic of'),
(145, 'MC', 'Monaco'),
(146, 'MN', 'Mongolia'),
(147, 'ME', 'Montenegro'),
(148, 'MS', 'Montserrat'),
(149, 'MA', 'Morocco'),
(150, 'MZ', 'Mozambique'),
(151, 'MM', 'Myanmar'),
(152, 'NA', 'Namibia'),
(153, 'NR', 'Nauru'),
(154, 'NP', 'Nepal'),
(155, 'NL', 'Netherlands'),
(156, 'AN', 'Netherlands Antilles'),
(157, 'NC', 'New Caledonia'),
(158, 'NZ', 'New Zealand'),
(159, 'NI', 'Nicaragua'),
(160, 'NE', 'Niger'),
(161, 'NG', 'Nigeria'),
(162, 'NU', 'Niue'),
(163, 'NF', 'Norfolk Island'),
(164, 'MP', 'Northern Mariana Islands'),
(165, 'NO', 'Norway'),
(166, 'OM', 'Oman'),
(167, 'PK', 'Pakistan'),
(168, 'PW', 'Palau'),
(169, 'PS', 'Palestine'),
(170, 'PA', 'Panama'),
(171, 'PG', 'Papua New Guinea'),
(172, 'PY', 'Paraguay'),
(173, 'PE', 'Peru'),
(174, 'PH', 'Philippines'),
(175, 'PN', 'Pitcairn'),
(176, 'PL', 'Poland'),
(177, 'PT', 'Portugal'),
(178, 'PR', 'Puerto Rico'),
(179, 'QA', 'Qatar'),
(180, 'RE', 'Reunion'),
(181, 'RO', 'Romania'),
(182, 'RU', 'Russian Federation'),
(183, 'RW', 'Rwanda'),
(184, 'KN', 'Saint Kitts and Nevis'),
(185, 'LC', 'Saint Lucia'),
(186, 'VC', 'Saint Vincent and the Grenadines'),
(187, 'WS', 'Samoa'),
(188, 'SM', 'San Marino'),
(189, 'ST', 'Sao Tome and Principe'),
(190, 'SA', 'Saudi Arabia'),
(191, 'SN', 'Senegal'),
(192, 'RS', 'Serbia'),
(193, 'SC', 'Seychelles'),
(194, 'SL', 'Sierra Leone'),
(195, 'SG', 'Singapore'),
(196, 'SK', 'Slovakia'),
(197, 'SI', 'Slovenia'),
(198, 'SB', 'Solomon Islands'),
(199, 'SO', 'Somalia'),
(200, 'ZA', 'South Africa'),
(201, 'GS', 'South Georgia South Sandwich Islands'),
(202, 'ES', 'Spain'),
(203, 'LK', 'Sri Lanka'),
(204, 'SH', 'St. Helena'),
(205, 'PM', 'St. Pierre and Miquelon'),
(206, 'SD', 'Sudan'),
(207, 'SR', 'Suriname'),
(208, 'SJ', 'Svalbard and Jan Mayen Islands'),
(209, 'SZ', 'Swaziland'),
(210, 'SE', 'Sweden'),
(211, 'CH', 'Switzerland'),
(212, 'SY', 'Syrian Arab Republic'),
(213, 'TW', 'Taiwan'),
(214, 'TJ', 'Tajikistan'),
(215, 'TZ', 'Tanzania, United Republic of'),
(216, 'TH', 'Thailand'),
(217, 'TG', 'Togo'),
(218, 'TK', 'Tokelau'),
(219, 'TO', 'Tonga'),
(220, 'TT', 'Trinidad and Tobago'),
(221, 'TN', 'Tunisia'),
(222, 'TR', 'Turkey'),
(223, 'TM', 'Turkmenistan'),
(224, 'TC', 'Turks and Caicos Islands'),
(225, 'TV', 'Tuvalu'),
(226, 'UG', 'Uganda'),
(227, 'UA', 'Ukraine'),
(228, 'AE', 'United Arab Emirates'),
(229, 'GB', 'United Kingdom'),
(230, 'US', 'United States'),
(231, 'UM', 'United States minor outlying islands'),
(232, 'UY', 'Uruguay'),
(233, 'UZ', 'Uzbekistan'),
(234, 'VU', 'Vanuatu'),
(235, 'VA', 'Vatican City State'),
(236, 'VE', 'Venezuela'),
(237, 'VN', 'Vietnam'),
(238, 'VG', 'Virgin Islands (British)'),
(239, 'VI', 'Virgin Islands (U.S.)'),
(240, 'WF', 'Wallis and Futuna Islands'),
(241, 'EH', 'Western Sahara'),
(242, 'YE', 'Yemen'),
(243, 'ZR', 'Zaire'),
(244, 'ZM', 'Zambia'),
(245, 'ZW', 'Zimbabwe');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_experience`
--

CREATE TABLE `tbl_experience` (
  `id` int(255) NOT NULL,
  `member_no` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `institution` varchar(255) NOT NULL,
  `supervisor` varchar(255) NOT NULL,
  `supervisor_phone` varchar(255) NOT NULL,
  `start_date` varchar(255) NOT NULL,
  `end_date` varchar(255) NOT NULL,
  `duties` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_jobs`
--

CREATE TABLE `tbl_jobs` (
  `job_id` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `experience` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `responsibility` longtext NOT NULL,
  `requirements` longtext NOT NULL,
  `company` varchar(255) NOT NULL,
  `date_posted` varchar(255) NOT NULL,
  `closing_date` varchar(255) NOT NULL,
  `enc_id` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_jobs`
--

INSERT INTO `tbl_jobs` (`job_id`, `title`, `city`, `country`, `category`, `type`, `experience`, `description`, `responsibility`, `requirements`, `company`, `date_posted`, `closing_date`, `enc_id`) VALUES
('5609558107', 'Technical Engineer', 'Noida', 'India', 'IT and Telecoms', 'Full-time', '0 Years', 'abc.... ', 'xyd....', 'This .....', 'CM858235891', 'March 06, 2023', '01/04/2023', 11),
('56095581987', 'Software Engineer', 'Noida', 'India', 'IT and Telecoms', 'Full-time', '0 Years', 'abc.... ', 'xyd....', 'This .....', 'CM858235891', 'March 06, 2023', '01/12/2023', 13),
('2992564472', 'Data Analyst', 'Bangalore ', 'India', 'IT and Telecoms', 'Full-time', '2 Years', 'Nill', 'Nill', 'Nilll', 'CM089277268', 'May 06, 2023', '20/12/2023', 14);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_job_applications`
--

CREATE TABLE `tbl_job_applications` (
  `id` int(255) NOT NULL,
  `member_no` varchar(255) NOT NULL,
  `job_id` varchar(255) NOT NULL,
  `application_date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_language`
--

CREATE TABLE `tbl_language` (
  `id` int(255) NOT NULL,
  `member_no` varchar(255) NOT NULL,
  `language` varchar(255) NOT NULL,
  `speak` varchar(255) NOT NULL,
  `reading` varchar(255) NOT NULL,
  `writing` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_language`
--

INSERT INTO `tbl_language` (`id`, `member_no`, `language`, `speak`, `reading`, `writing`) VALUES
(1, 'EM105123754', 'English', 'Very Good', 'Very Good', 'Very Good'),
(2, 'EM105123754', 'Hindi', 'Very Good', 'Fair', 'Fair');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_other_attachments`
--

CREATE TABLE `tbl_other_attachments` (
  `id` int(255) NOT NULL,
  `member_no` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `issuer` varchar(255) NOT NULL,
  `attachment` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_professional_qualification`
--

CREATE TABLE `tbl_professional_qualification` (
  `id` int(255) NOT NULL,
  `member_no` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `institution` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `timeframe` varchar(255) NOT NULL,
  `certificate` longblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_referees`
--

CREATE TABLE `tbl_referees` (
  `id` int(255) NOT NULL,
  `member_no` varchar(255) NOT NULL,
  `ref_name` varchar(255) NOT NULL,
  `ref_mail` varchar(255) NOT NULL,
  `ref_title` varchar(255) NOT NULL,
  `ref_phone` varchar(255) NOT NULL,
  `institution` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tokens`
--

CREATE TABLE `tbl_tokens` (
  `id` int(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_tokens`
--

INSERT INTO `tbl_tokens` (`id`, `email`, `token`) VALUES
(2, 'richadixit028@gmail.com', '282a18e237f6f82d59c895d8bbf9aacb');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_training`
--

CREATE TABLE `tbl_training` (
  `id` int(255) NOT NULL,
  `member_no` varchar(255) NOT NULL,
  `training` varchar(255) NOT NULL,
  `institution` varchar(255) NOT NULL,
  `timeframe` varchar(255) NOT NULL,
  `certificate` longblob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL DEFAULT '-',
  `bdate` varchar(255) NOT NULL DEFAULT '-',
  `bmonth` varchar(255) NOT NULL DEFAULT '-',
  `byear` varchar(255) NOT NULL DEFAULT '-',
  `email` varchar(255) NOT NULL,
  `education` varchar(255) NOT NULL DEFAULT '-',
  `title` varchar(255) NOT NULL DEFAULT 'Your professional',
  `city` varchar(255) NOT NULL DEFAULT '-',
  `street` varchar(255) NOT NULL DEFAULT '-',
  `zip` varchar(255) NOT NULL DEFAULT '-',
  `country` varchar(255) NOT NULL DEFAULT '-',
  `phone` varchar(255) NOT NULL DEFAULT '-',
  `about` longtext DEFAULT NULL,
  `avatar` longblob DEFAULT NULL,
  `services` longtext DEFAULT NULL,
  `expertise` longtext DEFAULT NULL,
  `people` varchar(255) NOT NULL DEFAULT '-',
  `last_login` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `website` varchar(255) NOT NULL DEFAULT '-',
  `login` varchar(255) NOT NULL,
  `member_no` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`first_name`, `last_name`, `gender`, `bdate`, `bmonth`, `byear`, `email`, `education`, `title`, `city`, `street`, `zip`, `country`, `phone`, `about`, `avatar`, `services`, `expertise`, `people`, `last_login`, `role`, `website`, `login`, `member_no`) VALUES
('Adobe', '', '-', '-', '-', '-', 'bca@adobe.com', '-', 'Computer Software', '-', '-', '-', '-', '-', NULL, NULL, NULL, NULL, '-', '06-05-2023 07:05 PM [EAT +03:00]', 'employer', '-', '25d55ad283aa400af464c76d713c07ad', 'CM089277268');
INSERT INTO `tbl_users` (`first_name`, `last_name`, `gender`, `bdate`, `bmonth`, `byear`, `email`, `education`, `title`, `city`, `street`, `zip`, `country`, `phone`, `about`, `avatar`, `services`, `expertise`, `people`, `last_login`, `role`, `website`, `login`, `member_no`) VALUES
('Meta', '', '-', '-', '-', '-', 'abc@meta.com', 'B-tech(CSE)', 'Computer Software', '-', '-', '-', 'India', '9653xxxxxxx', 'abc..', 0x89504e470d0a1a0a0000000d49484452000001f7000001b608060000006271cfee000000017352474200aece1ce90000000467414d410000b18f0bfc6105000000097048597300000b1300000b1301009a9c1800000021744558744372656174696f6e2054696d6500323032323a30313a31332032323a30353a3138e034edb50000ff7849444154785eec7d07bc1c55f5ff9dddd7d3cb0ba40021a4070221244108105a407a151495a22256aa2082282a36aa52fca17f0b088a86aa084a0d48974e0ae9bdbeb4f75e5edfddf99fefbcd961767666766e999dd997fdf2396cc99bd933e7de536fd358196594510ad0a64e9d5a316ad4284367972f5faebff3ce3b5dc6bf04c411471c513164c89084f9914d9c383175e38d3766cc8f4120cdc3d9679f9da4175016e93973e6a4cdf741a0d17324b3cf61f290a2b73a3e07c10f7ef083c4934f3e99cc3ec7e6cd9b332fbdf412ee1118f6e7000f279d7452ba0465c988874a191e20cb050b1654981f016e1eecfd5244961eed091e02f70915b28c1bec0f534619658404182018b0fafafae4f4e9d3353288810d0fe06284b99c117e7fdebc79890103065806f0befbeee336c223468cb08283430f3d344d4694e739b4dadadaa49d87a79e7a8ac7211a46b857af5e96dda27b6548965c4e9528997d0ec8f2f5d75fe7920364f9e69b6f5acfd1d5d5a5cbc832ebd014c8928b07c892ae976acf9d3b77566479c0733cf7dc73dcb26c6d6dcd69cf7beeb947aa3d67cf9e0de72e2c4bf339b8f42b8e283bf732ca0817c8d02a53a914742db169d326c66b389c461806300a87e6121c703be6ec732834c2dc0e4d3238607068f6408b64c91d68493ab4bce0403640916d4f404096ca83031581166fe01c57580d53461965a807190eab5c08204333df06854606c7d25318e13973e6f01a61a36a607e64c40faee772aa73e7ce4dd81ddaac59b3b8ee01236c7f8edebd7beb9c65ec1c59820753965ccf61e701f7e02dbdc2a1c9b6274ac8e6fb2c0f5c72802ca36e4f825bbfe495a5c50320f01ccc294b0a16b903674959c6169660ca28a30cb58011eea9d92e6fa6e992ed72f110870c0d3cc421db25427b08b76718b294ed979025efb0829d07208a61a238c3124c196594e10943f93951ce764dc0a165790004b2a3bc6c978c38b743a300438a8790b25daef62459ca66ed6ed92e777b3a79e0ed97cec984b2ed0959f2f2005966790004da33d6b01ab98c32cab0a0c1809993df2a28ba4f6cd8b0814be9717d39dbede6c199ed8a4ca2a3eb2d670259cace392867bbdd90cd76456419467bf2cad2ad5ff2b667dc5176ee6594e1000c201c73b6f4a9c800728f05ca1a40e76425d94974223c10299dc92c1a1c38032dcee730022d5959da8303f0c01bec39574cc8b6a7884373f6cb284ae12a6449909a605a0a283bf732cab0418501746668bccb9cc04339dbed86ea6cd77c0eae404b45b6eb0c0ea208f688c2c876a5fae5b469d3786599176889540e6483bd5240d9b99751c627308cb0caec08868333ab9036c2841e99ed8a0407e5fd01bae19425da5336db8da2142e1b3813dc64c9c543a9a0ecdccbe869d0604466cd9aa5f16604e56cd78274b6eb94a58a6c97828392cc765d82032ea76a7f0ed1f60c23db2df539248048e5a0545076ee65f408c0f89043aa9839736692b2036decd8b19881cb65845594c2cbd9aebb2c658d708966bbf86da55518150e4d569666701049a045fa65f1205b5523a405da337b6dec5176ee65943ca0b40d0d0d965314318004a546382a0318c76c57d608efcad9ae8a4974f600258a400b3cc42070ceeb97bced89e7a097e4aa55abb8788f0a65e75e46a9c3cda149194015a570454bc68a6a8409a164bbb246b89ced764344962a744341b6abb43d230a0e8caa1a9e83f7baa85076ee659434141840b75238b711569d55449ded0202e391d2d9ae5b701045b6eb22cba20607e04145b66b6f4fc852b65fcab6a78ac0398aaa9a9d07922bd7905f54283bf732a28431f98d5e9323478e4c5c70c1054c41445f54234c70331c5c3c84111ca8c88e788db0d39988c8d225388824db55191c1076e96c37cb83a82c55077bb22b261a1a1a7492034f5b4482b2732f23124061860c1952498a922003a211712bad33a28f43b61b4570a0c200aa90654f9844a72238202a67bb8490823d2e3984d19ef41cbcb28c0465e75e461450a2b4e56cb71b2ab25d5959c620db55eed07a4ab62b121cc461c58402dd8845e01c152ca6cb28a35888a3d2aac88ecad96e37e87dc967bb80c89c03977e19c9b0829d07ea9745e781482a70f6d08da2f74bd924244a949d7b1932303a3d27f29c49044a1b874974060f719af8256284094a8283b865bb2a6419c58a09a76e9470b6abb4aa663e07577b28089c2345d9b9971118505a1cf5484a83cd622aeaebeb35de359f21391361230c28ca76a58c300ca06c76241b1cf494b15d1159c620d8cb6bcf5d35db55111ca89e442712ec458db2732f23304ca5353abc6900b91d9ad300ca2a6dd4d92e205bbe3583036e232c9bed12a48303d5431be56cb71b684f4eddc06f479eedaa90a54b7050f4608f484a37e280b2732f23105467bba5aab42a8203fb738087a88c7008a5706ec7ec74685104283d31db8d4ba0251b382baaaa71b7a782c03972949d7b1905a1c2a1f510a5c56f2b75262a8c70142763391d9aa20c8d5b9692c1415e7b46314c14862c7903adb8e8868b9de1d6f1ac2c15b627170f7141d9b9ef3ad0d0f14961cd8f81d1239516f7e075260a0ca092497492e5dbbce0403640916d4f404096b1cc7615c9529807a0a704cebc3a0e59e28c09f3a3747b02a57c6a5cd9b9f76c68e8acd3a74faf98346952929496ad5ab58aaba3c64569e396ed9ace446a58a19cede63813aee750101c480f2b28d00d25c15edc8689540507bc41ab4b7b4ae986882ce304eb41cae879b02b8c0aa5c53d5464bb224aab32db8dd17824b701a4eb651c1a7e1bed21dc9e61c8328ae0c099a14595edaa684f19593afb6544d9ae9b9d910a9c4564291b1cc40d9630cae85980d2d28b65847bf7eeaddf78e38d5cc68794366977aac876e92d97d2d275561fc33de6cc99c3a53050da2c0f80080f4f3ef9a42507f04086878b07c89214dfe281f8811cb978983b776ec22ecb59b36671dfc32e4b38139225577b922c8da58ce64791e760b2b2447b3a79e0ed9753a74ecd09f664db13b294d10d202eedc9fb1cce7e19b52cc183a9e381011e5c64c9db2f2d390002762676b014b58c9e05d928140a53ce760de0b773b2a372b6db0dd96c57449661b4a748b6abb2140e4495ed8630acc0ade376dd000fc55e02a8c2cec41165e71e4f1893dfeaebeb8dd3d278378a516100550407760328c203511863bbdcb2546100656529690063b93f4014a57015b224e4f44b1159ba381361598207d93924a62cb97870da1991f624523a4ca4a23d05ec4c2c5176ee3103941613e0e86d62d3a64d4c45142a3b1628aab47685e909d9aef91c5c99890a87e60c0e4432347b7bd2fbb864bbc2fd52b43d5d64c9edd07a40b62bad1b6e7646a43d2565a97c82a9889d892bac872a237a380da080d2e23a69231c03a58dc5b0421cb6b054111cc420dbc56f2bed972a82bd5d39db8ddace10a40367a72cf11c0aec0c370f441ae7b3170565e71e1fe4294c445168ec945645b62ba2b4761ee8bd74b62b12a0f4d46c9737d3040fb2c30ab2bae10cb478c7c99d014a4481735ebf8cc2cec421d0521538af5fbf9efb8c8d62c06aa03294019dcde8703c50a1b43d25db7531809128adc370446e8465032d150e4d5696a633297aa0a54237ec811681f7bc79e5ed1951bf5492edca067bcee020cac019c3a71b366ce0bab618b0045c8638d051e8253978f0e0e4b061c312175f7c319694f4040358ce76890745d50baee7506100554ca2b3077b51045ae0c119ec8938b46c7b0290a56cbf8c43b6ab2838286a7b1242d10dd9f69491258837402a06cace5d12505a6ad80aea6c4623ab505a15d96ed44a2b6a84e3a4b4f850ce763fe14136d02294b35d82a82cedc101788822d8531938035104072a64e9b4d9e5ccbd07228c1295ac438b5a69c14314d96e8c0d20d73d9c8683773c123c94b3dd6e3865a9a85f72e9b88a60cf6967786519467bf2cad2ad5f46101ce4d96cdef65460b38b82b273974048191ab7d2f6846c5781d2ba19c048b25d95c101782867bbe2b2541dec45b16242856ec8b6a70a591294f7cb6207ce04375972f1502ceceace5d43a7c5168e6478781ad84b69b90d205daf4c69d159798303154aeb54181123ac72129d42a5956a4fc85236d0926dcf52cd7655e8461c823da2d865bb147449075abcfd123c3883bd28aa6a2a750388f3a971bba473474723e3533173e6cc644343031a4ae774eed24a4b908e421518c03894a8e290ed2a7768a2c141dcb25d1103a822db5519ec01a51a3813c2a8c2c4419691045aa45f160fb27646a45f1613bba273373a9addf844a1b44e671275b60bc82aada843a3eba595d62e4bd9f62c67bb9ff040fdb224b35dd5553591e790cd7655d819d5d96e1476c6cdd6451038e7f54b5e59161bd6c3ee2a50a0b4a194a844785099edca2a2d782867bbdd50111c94b3dd6ea03d391d1a7e5b69b66b3e07577ba890a58b9dd955b3dd30da938b071576a6d8b098dd45e0e64c223580223ca8525abbc2c82a6d4fc9764564e9121c70f3107556e16184b98c5718b28c203888c524ba90ec0c777bc6a15faa0e9c65e7e398fd92ab4f44819272ee68684c7ec36969d3a74fc7c6013c0da4a444a55a69658f7a2c2bed273cf01a618274a0a5da089b86434a962ada53511586eb399cc1412967bbb2baa1d2ce286ccf62db19e55535f0203b842a60672281f5d0318706c79c4aa5c0afb1dd5f5969d5282deec1eb4c42525aaef654e0d0f264a9a83db97850d12f5567bb2a022d1159f6943924aa03675e1d0fa33de350555314ec71c94185ad8b0a16d371464f555ad928340e252a5396dc0a43d747aab44e59aa68cf12cd76a5032d15ba011eca7348dc65c99b69bab4a7946e445155030f2ec11eb72ce97a293be312a070c9214a580d18577828ad7023ab505a91465660006359a212e141b5d20ac8b29ced9ab0f300441538cbb62751acb25d4076c8cdec9745af50cada1905b64e497bc6c0ce440aab018a0043c89c50d2c80d0d0d15e6c75864bb2a94b69ced7ea2b41138933864bb060fe56cd75d965167bb2a64a922db8da012a4d5d7d727a83d2c594611381394da19f339b8da236a58020c011a3a8a39f9ad820495d8b061038f7063a9b4bb72894a7570a042968a9c89300fc0ae9cedda838372b6fb090f11047b4ada53859d917d0ed5361b3cf0fa0dd9151371802500d580d2a29111c141383d25db95cd8ed0d18aadb4843c67221b1c083c8774a0e56638649556b63d4d5946ead044830359591272fa65d4b2040fbc76c6cda1f5846c57457b4691ed8661b32308f66281509cbbb3a3edcad92e518ec2c82a6d39db8d5469f3da5336db157168f6e750d19ea2b274060722c19e23d0e2d6f1a81d9a2a3b2329cb5854d554ec0fe022cb48ed8c69ebb8da13cfc1f99ba1c06a4c85e811d96e4c9456f9b00278e809d96e144aebd69e5164bbf67ea922d82bd5151344680f83073c87ac4313684f8307193b43501eb48ac8d2c5ce441e382bb233dc3a9e7d0ed1f6842c7987a0c3809773374e4b9b356b96c6f960ca94d6dec85144a184c8955685437389e8cb4a2bd69e097b7bbef7de7bda2bafbc82e7087c0ff0d013b25d6770201ba088b6674fc8769db2dc55b35d15ed492465b3214b5593af274d9ac4887f1e192a87254c8231018e1ac9382d8d3a8c3676ec589d57383d31db8daa44d553b3dde22b2da37e99e3986b9e7efae981f4b69aa803df11c69934c2f8c4d81e44d38826110daaacacec4fd1f8d4458b16cd983f7ffed8c6c6c6ca4c2683bf9f42348c08ed8b6bc6130d206a375f7727c2f3766cdab4a9d7b66ddbaa860d1b963265c9d59e90253d83547baa70685157d508ca2b0702cfe16667b80367d5ba51a281b35b22c4dd9e4e59f206ad2afc4656962447b66ad52aaedf570d4b18600c514bf6e14a35db0dc3008a28ad9d077a5f565a82d99ec550da7aa2e14483892ade78a37ac8faf5eb67521b1cfbf1c71fcf6e69699949df1f4a7412d16544df233a92e870a2d388ae25ba98e83090a6695f24477eb9aeebb3e975067d773cbd5e49aff8dbe9f84c7435d167880e223a81e80aa2538926131d47f738b7a3a363d28e1d3b462c5cb8f0d0952b574ea4ef1158804f04146d449d44b5449071ce33a23d5504ced9f604204bd97e19876c378ae0a01c387723eb37cc8f42ede9ec97b2b234fb65d16d36fc4636a1c32eaa940c70b5a76a643b869b438b5c69cb25aa6e8874342269a5b5cb52457b2a5a3101395412d9e581ec1a0efb382238eca3898e213a9b9cea35e974fa7be498f16f33e8f553f4fa6922fcfd54a2914483ccd7514470b67544c8eaf1fd6e748fbef48af6e8453490eed18f5ec1530d1102080413788fbfdbd3245406e0b4e1dcf7a77b8ca6eb66d1fb93891020800f0416a7131d40848000c1c050a2d1447826184d540006a1fda74c99623cb3487b12e2d02f43c9767933b490e69070cb92aeb7ec4c142b269c365b449604b487942c55da6cf0a068c584547b4296a41b3ceda91c46c37a30c6f3704ab25dd50e2d6aa5050f2594ede6c01e858aca5245b0475976f582056ff55db468e1a0152bd6c0b9ee46848c1a59f2b789be6fbe873347e69dcdc0512e1f4d4e15a571f00187dd971c2c5eedc0331acfe906bade7c270ef31e5676433c201040808020050101828ab14428f3c3c9cf264245008effab74fd5e24cb0328e33f60c58a15ad1b376eecfdc20b2fe0399a8880824c3a0d604fc876457523ab9f007443d6cec806ce220ecdf91c02c1415ea02592edcada6c1576c66eb3c103a7ad0ba53d7983833090f4602c52a515118e8a8e4624d5c8849ce790cd7681522e51d979e0505a38f0dd2b2b2bf75cbd7af568ea0be35b5aba8ee9e8489f43df7f8be82622bc47160c8788ac790811326838cc2a22034ec74c4ed57c171cb2f7e0080ef087d9fe0ba78fa004cf3490ee810a032a0d07a452a9afa4d369541e30b60f19a0e280723ee4807646a69ff3a3ce400bed19936c97eb1ece7e19859d51214b8274121275b64b7093a5547b4296b2369b37d873b6a788cd26c8fa8d50808792ee683d21db55a1b4715b32061e6254a2f2ba073250386794b2f7273a82e80472a29f21fa0ad137e9f36c7ac5bf61e29ac19709fc86fd730e381cab2b62161ce04d6fba1ec30570e490c77e4490d7f94428eda35a81efe1e0fb10e16f29cecacbd0b8fa5418465851b62bd52f1565bbdcb2944c429457d5c003afad73da9928b25d05b28cc570745830b68635df47a2b404e96cd7a9b42211bd8bd24692ed967a898a50283b42660dc783f2fa5e440713a1fcfc79224c623b8f1cda21f48a1235c6ad85108663e645117840868f0978089050da878347967f11118627c6104d696c6c6c5abd7a91b669d34a6df2e469edbcfd328ed9ae5fbf5cf1c73fd67ce35347ed7ed9987d477e7df0883d2f9d76d87edf3a64e6b14756f439edc8f6cce947ede83cf5e874c5999337eff8fcb7274cf9d2b7f69ef8e94b0f3fbacf37671eb5eeceb75e69356f93879e94ed92533478306d9d949d8928db754be8e250a1e4e2214c60f99b51c60463e604b6c00246239330ace080909e33670e57234361860c196235b2080f4f3ef96432eb14a130d449b804ece4014a7be38d3772353265ed96633679801c023f073a1abd580690c02b4b8d9e23292b4b7b7b2a9625be8353c7643238748c291f488409643990758a613855591e80889e631bbda4e975295dff3cd172fafc0ad15afc3391a733039cfd72e2c4892919dd10e9975ebaa1ffe00715abd9e0211d8be6efc66a6bf649d4551f9959bff100bda5b59f56593998b1cc40d6d18500a820744dd3b5aaaaf7aa278e3979af9b6f5c6f7e6d41b56e00bcb2f4b075653b23c8834abf0108e846a8484e9a34c96868816cb73c21c3041a39e46cb72014c832af3d1595a830eb1b4bc6be43743bd15789905562bc1cce3e078a1c9af94e0c61f010e17320b3c73c863d8807544490d99f4884f17a64fc98a7808979588ae7fcc1bc7ec99ba1d97503101d271f3e7c78f2ca31078c3b6e67e751c774b053bf3579fab5db16afbe22b369fde57a6bdbe5da8e1de7e85bb74d639d9d7b68ba3e84a5d3bd593a637762bea007d4e89aa1e9b6f611772e7cff61f3eb2cf0fc39d9aeac9d21a4c3ac5e78c02ddbe57a8e90ec4cb1fd0690234bd9f634758397875061387759a58570ca1332ba2152a2521d1c98cfc1ad3076598a18e1952b5756bffdf6db7b511b4c273a833e632d389c399678a164dc9bc813b2ce0c889153954248cf81f68533c7900882ae6389b02e1f93f5f01db27cf465239b573187c4ae1b41edcca6bbeeea7dc990bdc77d6bca21c77f73f4a4af9cd9affeaac39b3aeea95eb9fa1b5a73cb19aca3f348d6d686e582bb9343eea3e919abdf4aa3a363df3b972fbcd1fc64408133810c636767a2b0d9aa823d87ade3e2218cf614b0d9a1033bd22564a396281c1a78284fc8e886539666892a30dc64c9c1037e77504545c57ecdcd8dc7a752e973c8112153c7d2343874380d648f96427b218e8e59050fbcf728020fd97f44c91a3be861e63d26e69d49846192319595953b93c9e6f61d3bdab5214386a445748308fa65fc969f6e106fda79ac76c4b7f71cf7a94b67ccbca9fdedf937e83b5baf613b769ca5b5774cd73a3a47f264e1b27038773787566c3ba3bcaa061e642b94b27ec3b433dcb2a4eb2d5b124570a04296c54072e6cc999a6cd412457040908d9c9467bb6864054a5bf4a10d22d1f6c47aed23c9915c4406fa6be43f2ea4cfc804f7a4cfd98d5f02c1e98c44108653e44589f2800b30f7a63f11b6dc9d42d71cd7d8d83161ebd6ad958b172faef8e8a38f1ae8fbc0fdaa50bfd4fffef7e417878e3ee61b43477d6edbdf1ebb515fb3e13abda9e9ab6c7be3be2c93194c14b8efa886ddb9cb262104693ba322db75da9912cd76f3022d5ebfa12038901e8e2e1692d440e6db6088d8991870464ee51295b8d2ba45a13eed0907b03711b2bc2f13dd42844d56b0a90c96a919f751e1d078ef11865395e54104613c0727e8720dc327589e8840ede84c2683cc1e8449780096daf9214f37be336d5ae5f7f7de77c2b70f9af9b96f0e1b75f5b6f717fe5edfb8f922adb3eb28d6d935524ba77bd31fcb0b5001b2ce5d4586e61cda10a9aa95b3dd6ea80eb44482030536bb68b0841d10d28dac203890ce76c3e868b2d58ba8943660440f59a17c7b14d11788ce22c2842cac4daf92756a317068a1f050e2c141f646b5740f8c6f630dfd7944d8521713f4302ebf9328ef07b2ba51575797b86cc89ec3cfaa197058ff350ddfd59b5b7fa66fd97a1a4ba527b0743ad02cf628603a7725d9ae5d3fe97dd1b35dd819d5fb03083c875bb62bed3764032d45369beb1ec5049773773ab452cd76c3e868c5565a8274141a20388011c7ec6a6c920283773911b2b9ac81273f60fcbc85127768c208838798c912551bb439da1ffbe2c3d9a31f6c27c21f61b6bd61002fa81f597ff2ced4670f6fcdfcacae61ebf7b41d4d17b18e8ec92c95c2304eec01e71e40370a2116d92e41b99d894985927bf8d2de9e90a5accde60d0e8a8d5c4df6013a1a09238e6bdac143e07ba091e9c5529828d6ed3a65693e0757670d4996b807ee89ad4f31190ee57794dcf725c2212a39fd25ae0e4df61e71788e12e0017a87cc7d0bd19c53c7edb7e847530f1e50d3d6750a6b6d3d5c4ba72d435a6a78f0d07d9331584fee55d20fcc830a9bad9a07595b07c8daeca8dab3d8b033eb879e9ced7245c20a22c0384ca23378b02bad19856247382c8fba8408dbbe62e738ec5d8ef5d0c6dfdae17406bc88a343134118cfc18b08784854262b6af61d543ff0acbdc61cfaa53d479f307067fb095a67e7484dd7e5851a21ee5cbee0272aed8c692fb91d9a6cb6eb62b3b9ed0c5d2f63ebf0dbb055160f5194c2edcfa1b03d63edd801abe1fc40c249641d0180723cbd7009870462fd168443510f9733a246c6921ceb1ebd7bf7d67977032285b1a271f0306bd62c5c2ffc1ce86822d50b1759f2c08d072e39a0b3677958b46851e5471f7db40fbdc596a50f10fd9e0893e5b075a9275438135984c143290607c5e6a16f6d2d3b6fcc44f6b799b3d95f0f3c8c5d3a7c1f6d58463376baec09b0db19d2930caf9df1a8ec05061c1a3966ab41a0e332b60e88c8ce249cb2a4179eceadcd9d3bd7f23d90a59971070664492f5622a4c26f88f83fd87df37dd15030738770e23821833702040f3d6142063a893da2973907fac517ff3568d5aaf5c7a5522964ea982887f175d72cdd8e38383440968f30789075cc51f000149265afea6a3673d89eecfbfb1ec47e387e0a3baacf20362459c992fc3f156b687d7aef7c3ed1f54bbc878e97e2d8ae879d11b6d9e0218a6cd7cd6617db6f40962a265f23c821deb97e5b16059d3b416929dc6ce4a297a8647988b1d272dd63afbdf6aaa1dfde73e1c28527b6b4745e498e00593af679c7ce6581a0daa189a0180ead10e2c88308fc9ea36f4d2d9b5e3f947d67e281ecebc3f761232baa5932c365db4a0a7aefba552fb08e7bf05ed6ce403fa3d8588b48ca66c3ce3434345899661c961aabb0d98a8636848303dec04416bece5d45d4e231212330543834d5c1415c94963738200c696e6e3e219d4e7f2d93c95c409fe1d4b1a6d978ae2008c3a1c9060751f00038efc18b38cb92fa3bfbcab9e7b11fd4efc5ce1f3c9ced5d59c31202fc951a481e6fbd50917ea82765bbbc365b75b61ba35d3785db1310f11b44680f8387499326c1c1174d892cc65da061c6a8f9de1030eff832849375ec00bd8770b984a362ccc565fc8a4bc0f41c393cc88ed59bb2e4ed68a2e357e01b0efc04325cbf22e3fd6b7a7f0ed1081167220b150e4d164e1e4410c7e790e5219148b0030f9cca7e71f3adec83791fb3efdf7a1b1bff8dafc2e3987fd1f391e9e8da20a2e3b033f462d94bd9b15d40d1dca6a2db6ca7df90b5d9223c38fd868af955227ec36eb38b0dab119ce8a9d9ae4889ca1e019658890aa7ae614df2b7c9115c46af3820c418531771042a9c89ac630d8307de7bc83e0310371ef61a39927de9cb17b39fdcf473367dc6c1acaaaa7b7e5c62c43096e8df9fa53e5ac0589aabdb9726ea07bcfc5ebfdaff4491edaaac50820715d9ae88cda6eba5fc06518ecd962985032a6c7614c3d1b27075ee1e1d4db891150a87ab81dc820311a5b547802554a21a4cf419222c69fb3419726c276a3c8708e2e0d000593ec2e041d63147c9c3fefb1fc07e70e38fd9b5dfbb9e1d75f431aca6267f9f99c45e7bb0c4a0012cf561cf77f0e94183fef08d07fff0b6f931109c0e0d76863709516167ec365b840722a58990a8df904ce86231894e76385a05ac0e6983744903c2a1ebac7b47b5fcc0ce03ee215ba212e1a1c8252a6ce93991e82aa2ff10dd4b348b0c393278eb1e22cec40959872602550e4d06b23ca8800a1e060f1eccfe36e751f6d47f9e63a79e763a1b38107b1479a3e2b04fb19a8bb0fb6ccf86be75cbc7e6db4070da3a3834013b63d95b40c4ce386d36efb01f3d87f45263d5a570f33922b7d9110c6d2881f51059b8454ebb50b66b013cc46009207e3b68890a7f8b9de4be46742ed13822e33a59a7a6c299c8de238e3c88208ce7e0c1840913d915577d87dd7afbafd9e831be5b19e401193cd3332cbd7c55cfcce02b935d550307dcf9eb0fdede647e530868889e90ede6cd0a8fc266ab987ced224b61bf0144311cad0a4ee72e3d4ea0c2a1a9e8685197a808d28d1c5069b16405d9fab78830590e5bc662a73957c75e6c6702f4541e4ae939860f1fc16ef8e18dec0737fe84cdb08da9f322396e0c4b0c1ed4234bf47a65c586c494036efff50bff6e31bff2850a8746506a6754d86c1187e662b38bee3788726429eb3764133ac1f654861ce7eecc7679277eb9454eb21332543432ef58bd0aa575ca3224a585139f4d04c77e26513d918538383459670684f11cbc285559521f6237fdec17ecf65fddc50e987220abaeae36ff451089c42763f06fbf6f7ed94390d1978d1ed6e78e1b83e9692cb2dd902a94c23c00bbeae46b42ce7308067bca6009c319b540389ce578e5c289a8914b614206be47d9fdeb4438a9ed60228cabe7a0273834208ecfc18b62cb124efdeccf9ccbeefd7f7f60871d76044b26adeea804dd257a9da5972c335e7b02b441fd3f1c7cf7ed7f363ffa424112e26667b8b35dd50ead44b35db74428729bcd2b4bd5c83e4c5e23f7e06cd7174ea55551a292e5011dcd545a7c8763363f4774131166c35b25783b764587e606d967004a4996959595ecec73ce653ff9e92fd805175ec4faf60dbcf1203792e3468311965ebeb24794e8b58aaa07effcf8fdb9e6474fc0d6b95428856d1d209bed8ad8ec30828328b2dd98dbecc86034ac8246569eed8a34f22e302183d225f64522ec2e3789c8929713c572267e88230fb2c141143c004164396a9f7d8c19f05ff8c2f96ce8d061e6b721229160c989e37a44895e4f56a4137deafefceb79ef0479905865bb4014c181d366d3bdb8b35d674227224b95361b3c44311c1d06d030b1cc76a9918b1d39e1b76357a2227e747a0ecc7e3a8ae8e7445f22da9d28b063ef298e991771e44104859e638f3df664175ff235635c1d13e78a8d9e50a2d72a2b36544c3de0b65fbdf09f8de657ae509008a1319566bb220e4d81cdce4be844fc86ac2cc183eccaac180c478782a4336ad9552764e0399c5168d44abb64c992e46bafbd369ade6279db3544d3888c7ff342180e8df71ec570684120cb47dc65595959c52eb8e822f6ab3bef61c71c3b5b7806bc0a5825fa8f179bdf9416f44462c93e437bfff4c6975ef2d3f972b66b4236db2548dbec30123ad9f68c7a129d1dc9e9d3a75ba7ffa8104ed4d92e20720caa4b142ad5c890a5ec848c850b17c2b163d21cc6d8f72432fecd0f3ddda1054518cfc18b3065b9d75e23d9c38f3dc13e73ce6719653fc67791c22cd1b34c861cfc12f3cbd24162d0c07f0fbaebd6c7cd8faee821d9aec143c4d96e5e70a0a27a21121c443d1c1d269293264d321eceec685c8c29100e84d2134a544a27643cf9e493f56bd7ae3d8f0c39d6ad1f47d497c8b8b71f7aba430b0ad96700e22a4bec2c77d9e557b2dffebf3fd2fb9c958fb14072d278305a72257a8de9bfbf73d187ff333fba41dace8454a194b275f4be24b35dd5c181accd060464192a2cc644b6e9238158d74338b25b1e5234899377b8ee418d9cb34d2d35307747b33f071446d1694e3c3064b966cdebc9c71f7f7c7c7b7bfbb73399ccd5f4fd3ef837e32f0a202e0e4d1661f0201b1ca870ecb23ce0f3d1c71ccb9e7cfa19f6cd6fe30ca0f8a2eaf41359d5299f363f9506b449137c27d24d9d3a3527db15b1339400588d2a6b67c083b9bd2b0ff24e3ae3b5d9e4d0444fa7ccc2d82ad77c2f2c4bd9ad729db214198e769125afdd0f150673221d0d8dece2d0b82c988a3d7c653b1a78b037b2acd212d2621dad4d5bb0a061782a95fa0a3982f3e96b94e18521eb4c44a0c229caa227f23060c040e318d63f3ff810db73cfbdcc6f638c6492559d750aab3864baf945cc41edd55e35c6336b879db1db3a113be3dc775dd6cea8706811edfd2e1b1ce4f90d922577c62dcb838af6a417ab3dc340b2b6b63611f5840c208a49746864c9b20a7e5bb244c5126fbcb1b3ee8d37d69dd4d696c2412f4879f236a4f1830a67227b8f38f22082309e8317d9eb2b2a2bd909279eccfe74ff83ec53871c6a7c574aa8d87f5fa6b7b4b0ccaab510a4f96d0cd1b7ef8713feefbabbcd4f3970b375118cede2b7a5e736a92e852b9a4417a9df10b3d9f9f3ab44da73faf4e994d02d084d31923367cec40f7075568c2fdba3164593e8a43a5a894ec8a0c0aa6acc962dad5f4aa7f56fd3e709e44c0c7e78a0ca996411a543cb228ae00088cb730c1b369cdd7ceb6d4609be5fbff036a20915154956317992e1d8e33c8b5eab4c3e7ee7c71f3e697e7442e99c201167a2c0ceb84dfce22e43cb4e1876da6c457e83db66d3f552c1815396a2c1015dab6dd8b0818b7f1e2479238730b25dd9462ed50919757575bb7775755c4cb60f65f85144c6bd7820eb4c649d19a0caa1c9a0273dc7ac238f32c6d6c78f9fa07cdbd8a2c39c459fd9b88965d6ac33bf8c17b4dd76bbf3cef7dffcc0fc68c1e9d04a35db8d83435310a0e0b795065a2249a502ff67055a20ba96ebf779c06b39e290ede635721c4a549c13329295956c626767ea27e43f2ea2cf384c5b9375cc2a9c511c1c7314cf11071e060d1acc7ef4939fb21b7ef0a3d277ea0ea0449f69d8123f079face84c54d5fce8d71ffd6fb3f98d05976c57cacec0d6c5644d3bb7cda6eb2d87168752781c123a9140cbce03c01b18f0c0fa9120a0468ec361fc914fc8404793e0a18ee8d3a9948631becf1219c77489381359c83a654085539445a9f390a0ecf6d8638f63731e7d9c7deebc2f189f7b1caaab58cd97bf18c349769965b563262f333f588043cbda3a40643591cb84616ea72a3b61d839f14bd666c3a1dd78e38d5c0a66f71b80c073b8d96c5ebf91274bde098961ac98a0172e39f0c012582180b18686066bc39b72894a280aad249a458e006b99661259f2e4850a87267b8f38f22002f31ef8e1ee37dd3ce07fad4468a3ec8f34124121a137f80eff8ec03049f7c067f4035060bd8223ffeeb5d7b19ffde2e658ae5b570a8cc14f3f305e25fa41035fdbfbee1b734e822b67bb9f208ed9ae2259722574cef6a4f745af38f322b0112a97a8ba21d1c8d81bf46ca29f921fc036b270f4065438455e38afef293cf8dc037d057f9cbd602bd172ba7e25d1267adf41f41e114e057b956801d13ca267881e267ad6fcee75a2c78830016b21bea3eb5f241ffd2afdf41afabc9c08f7594b5443b485680311fa0caa362d44e021397acc1876efeffec0ce3c1b87fbed3a8855893e91fcd59d1f7ff0b6f90930da46c6a1456c672cc4c166cb1e830a1e544ebe066483033340e16e4fd94991bc08e4dc5544a112d9ae01b78e261b3915290ac5df8e24ba82e8c7e40886d3ab254b117038345738af17812c0f802c1f0578c0182a9c2a1cf776224cd7fe0fd15f88fe48f404d14bc964f2196ad3fb4f3df5d41bd7ac59f3444747071cfb2b447f23821387b3ff88e82da27f13bd4804e78def9e26c3f14c26b3fded64527bf7f0c3f77aa8ababcfa33b76ecc03d5e22ba9d08f7c0df22187890680dfde69aebaeff7ecbcf7e71ebee63c68c0da4833d0ac8e0e1e0d7ad6799f5bee7b4848eea4f4db9ec8e179f45ff30e0b43322d92e41a99d31ed2557a6a9c2a1b9d8ec92cb76550407f6e750d89ebc7d8a1b050d0b8413832854797050a41215f8c5ae23983487a35aebc92119cf9085ac6356e1547b4070d045847153385d385fd0cb444f133d40f44ba23b89fe4584bf5944f411b5e792830e3a68e598316390c5b3534e39a595da13a5f726a26cdf00639d4476c3867fc377dae0c18393fbed7750d7de7b8f6d5db7ae0de701e0fb662264ec28dbe3de1f9bb472c58a15af5c71f5b533a64f3ff8b49a9a9ae84e7a891ae4e0936346b1ccf2554cdfbacdfcb2b868aba96c3fec81dffeb2a5abab8d3e1a1d308ed9aec8ee69e56cd7007e5b691526a2e168211472eed2c221286964badeea68028d2cadb46e1d2d80d2e2448faf12e154b7e1e48c8cdfcf428563e68562a76a2082e768a1eb51327f3991604fd1dd1e221efe499fe1cc413800e4052238f2954428850360148632a5da000651da359b378faaaca87d2a91489c45fc0bcfb7e829d0eaea58e5a7a64556a2ffc7a675897fac5e0e9d5e4db4d56967cad96e8e6e08db6c157ec39465316c760ed09eb2c30ab2c19e287c9dbb93b1f2840cae8e86d9513f25ba94a89fa433331003a71a0a0f01ee816c1ae3dbc8c61f27e7f8c7aaaaaac7889e25dd7d79e2c4c92f6fd8b001ce7e1511d2c08206d54569b9b3a3a04a4bcf5771f1d7bf7d55424fdc43a677bcf97519408425faefaf5ca06d6e6e1a476fb1232486701a860c19827f920ef68072b6dbfd1c1165bb6e365b2ad05214ec71c94106bece5d36db5511b594e0840cfcddfe44df27fa3c11265585e2147951423c20d3463685894e28a53f42843172bc7ff1c0030f7cfbe0830f5e3376ecd886debd0734f13a66154a4b04236a3c8c9fd2d2f325366cda7a3d3df7f7e9aa81e6d765d86196e87154acbe03715cf8d85a99603f7fff4d94726ae9e3286a9fbd3a3b9bded8679f714d0aed0cb763cef64bf050ce76bba122381019da88c3a44819783a771551a84bd4226584058483df2e76890a9919caf0a71119fb8686e15479efe1bc5e04613c8709dc0863d5c8ba971261121b66a8cf21825347891de3e41ba95fb6dbdb5336ab1055da20d9d19a2d5b46b4ec6c9f430ffd25fab8cb97e1fd80127dc5b4292cb37a2dd3373798df86872736af652f6ec48206a34fc2c18fe9e8484f58bd7ac9eb1515354ddbb66de3b155e84bb1ca7601d9ca4154365b455269b7d9223c10453e1c2d0b57e7eee1d022ed6822c2096a847dc0dbc87b105d4b848cbd3fbe00641d6b184e55363850cc0366b2c399df437433d17d4438a50bd97b76bcdc556939b30a5ca75469bd0ce0ba8ddbce4b64d89fe817b1ecb18c00d0aaab59e5b403c32fd1533fbc63c542b67a27e64d5afd127d62546767a63f3976787dacb208d4b7dcec4c14d9ae4a9b0d1e784be1ce0045d466d3f596df802c656d366ff502cf1183e16869b839f73ce1944b54dd4047f3505af08959f1b710c1b15bb3a0c3708abc88210f48cd707ef623443711fdd87c8f75e4dd16371fb841ec94d6cd00aedfb4e50c8de9f7d2430f33bf2a23288a50a2dfaaa7d96f567ccc76767638fb25b680c6183c864fd61321b82c84d864bb2a83031f5be7853cfd8c22db75b3d99cb28cc570b40ae4397705c251dec82530216302d17544a71285ead84b3c3868a0d777e8f551bac743f4fa14d187445e0edd42484acb6d84fd82bd152b56d45cf3bd1b6e26f1dc4acf89526f1902c896e8d3f33f0ec5c1bfd9d2c8feba1c2b135d7503c3277b9af40691b506de0de56cb71b6104ce6155d5fce0946514c3d1aae074ee6ec2e16aa042063008544ca253d9d1009f464676863176ec3e873176836fc0c5707041f67ac0798f88820394dd31cbfd76ea5fb75d7bedb5ff2259e23b18ce201ddf2da20fab3dbde0ab1bab376d1a5d5551fb676afdf3e879e51b6e17074af415fb4f62fa96adca4bf4bf5dbb8c2ddcbed54f3770dec368226c38850d89b05f415e5f2967bb9f4075b62b62b355ec0fe0321fa7d8764619729c7b4806502a7212e868ca276410d21e4a3b8008fbc463931a2c7dcbfe7d284e95f71e2a7c8c200f901526c7bd43d7ff859cfa6ffaf7affe7b7dfdd00f67cd9ab5338a604f763cd22fa2dfb469c73e9aaefd8d5aff30e31fcb500264f0ca4bf4d49f7fb8f803d6da85f99b9fc0a55fa3af606749546030068f4d89ec7f847f2f67bb8430b25d91aa9a9d077a2f5dbd506467b86c9d4a581d4b85017476b41e5ca2c2df8c20fa1e119c3bd6c9e640d6b1ca3a7640f61e12d763091b26c5fdae5fbf7e8f533f58326ad4d8d68e8e8e0caf010ca33d790da05bbf84d2923cb4af7ee3d223322cf334896a8cf1c7652885ea12fd1b1d3bd9034b1604d54f9cff309108670260b586b19321807e293b7c19876cd769b34b34db95ae5e386529d29e44d25518f35509b20f539e90612280d2e2de8389be49f46522ec429783301c332f8acc03e483123bf664bf83e817444f902cd7efb3cf3e563f8a8bd2f2560e0879fd72eedcb9daba8ddb70e2cb5f494ce5f5eb210225fae4a4f12cfdfe474c6f41855c1cf76f5acd3ed89a7b747b01dd40897e14110278f46f1c3014d70a25370fb2010a518e6e4491edda6529ea379cb294adc240962215ca0d1b36f01b6a0f18cca8e86844398d2c2b9c1897a8e0cccf22c238fbee44c6df66118653e5bd876c600070f290cdd4ef25c2e12a9bd19e6ed92ede0785b35f9221e2ed97796381229503a70184d25efcf56f5f9dd0d81d24a6bce0ae0cf5d07af762c9b1fbb0f48a55c2197c1b35d8ad8b3f62dbdab1953c17509adf8f088e7d2119e14ed563bb14b40adb3a40d110aab44393f51bb2365bc46f38ed8c8a610517bfe18b2c0ff48a73e2f90cbe07d030d2d9919b019435c25194a8024ec8389108e5789461ad0e9185ac638d43700004788e9d44af11214bc736bbd8d31d6393599985518589dc003ef4d04375975d79f55d1ad3aea6afca1bd31411da80fe5225faffb635b107972ec81938e7d00db4f5d84422d1dcd8d8b86ccc9831edf852c4d6116295ed028a1c9a94cd862ca3988f13f5b0829d87f9f3e7b355ab56f1f62757248b94edfa228c8e2652a2b2f340ef9d4a8bf1b7e388b02e1b51bcf15b7614c9a9fa42f67aa0c073e003d6a3ff99e82e2264ea188bb4641517a5b5f3a042696fb9e596aa9a5e7d7f4712c2097f654400d1127d9afaf40d0bde61eb5a10937643403f519a1f914aa53a53a98d1fb5b4e8291595a0a8b35d11dd082938506db30bc1e041e57034c16bf2b51772da73d3a64d6cc3860d5cb6d20bc9e9d3a75bd9477942464e47b3f38071b74389b0d9ca547ce106d58e594570c07b0f9febf10633e091a16317399c778e63569d6d150ba5258211b5789055daabaefac1c0617b0cff3bddfa14e30fca880cd9127deaedf718ebcc9df5ee8595a90e76f7d2f9ac2bcdd50d7240ba81be80f936076cdfdef1f697bffce5658aed4c41a8089c9d36bb14b35d425e80225271a6eba5ed8c5d96b2ed091fac2c739f3469927163b391b98db0ea2854d6089b1d4d6523e3bec8d4af243a82c87a5e3bc270ccbc088907dc0427663d4984e0e6362264ee4659d20959a575331c110c13e1b7ad7e79d34dbf9c3478f7c14fd09733f0b98ce881127de5c107055e26f7a78dabd9eb9b3e3956564237d027fad0f5a3e6ce9dfb11bdc76e8b816c96d3ce083834b73924c5b6d9060f2ab35dd9e0003c281af62bb69d911e8ef683e5dc43c8760bc219b5080807bfadbc44e518dbed4b8431f6d3895c771d0bc3a9f2dec3c52973c385073081bddd7f47f45ba2d7893c5325154a4b08a33d8595f6ea1b6ed863d0a0c12fd0cdf636feb18cd8c058078f12fd07054af4d4af6f58f2216be49f4867c14537708e44760d7cf70934fec8eb97e56c57cca139fd468c275ffb42812c7d613877b3a315bd915da250a946060f8a4b549809fd1d228cb15a07c13821eb58651d3b207b0fc7f5b87825d1034417123d4284ecdd4fb6b88194638e9bd25effa31f8d1b3268c8c3094d2b3bf698c228d18ff12fd17fd8d1cafedf6224d9dd90d48d2cf025f6ba40f08fd522be5b28ab984352ce762de01e52b2546d67a258315108496aac84a246e662cc191cc4b044d59b08eb98af271a842fdc108663e685621e70f13b740f64eb0f12ad202aa87c6eb2e40db4644b542a94366b847f71cbeda7f6edddff7172ecc8d0ca88318c59f413c7b1f4828ff33378ead777ac5dca166ec306736af4d3760f64ee58038f2f704cb1ebcd55244244d2d9ae3d3828e56c57363870b133c5e621af3d05645910c9b163c726641b59a4a3c57c420626d0cd2242391e5b501a7fe384ac5306143b6621d8aedf41f48f6432f9834c26f34f7a8ff1c4200c29515abade6a4f1185910d0eb23cfcec6737cfaca9ebf51089256fe7c132e20938f8e4be1359fac3f9390ebe414fb15b167dc85a024ebc7322807ec25660173b9406b009bef387e290ede2b763570a973dcc2ba2a4d2cdd649c912edc99b0805419277669e828e560a1332706804caf1d82bdc7a5627641db3ac5306647900e81eed44d807fe0e92e94d2d2d2d6eb3e03de1946514252a554afb9bdffc6e665defde7fd6121a6645970c8c07a5ff29e852250bad6f9fbc12fd738d5bd813abd19d8575c37ce70b64f0d8d00ace7d3991650fedfdd2c5ce0481b4335165b3ed3cf066bb2a1c5a484925b7ffa3eb2d3b23204be9e1e8a0f0745c1e501285ca0a87487a6cd7a74485235b7f40741a91eb043a40915335df7523a2e0003ffa0abdde5b5353f354535393b57f761028301c4ada535669e91e153ffbc52de753c67e5f9c1d7b2a95661d9d5daca5a59db5b4b5b3a6e6168376ee6c653b29636d365edb587b7b27f9b72e964e9318a89f24129a92fe12777497e8c7b31465f0acad8dddb0ec23b67167b3f9af7ce0d04ffc21866f302fe77d2254bcf2fae5ae9cedca3a34c8d2191c14dbce1094cb52e0390283cbb9db3b1a306dda34151d8debc1dc9c894049c3ab4485322c96bc7d85c873021d206b28390c872764ef41d76f4c2412b7f5ef5f7dfde187eff5f6673e7349934c7baa525ad9f614090e2ef8d2c5275757d7fc81448a43426205b46b1739f596d636d6b4b385b5b675d0e71439eeb4679b6732192b1068a52000ef81643229dd77e30e38f8c4a081ecfdffbdc57efde1ff8cef0474c37c1718e8c3986087fef31491aea24259ce760d280f0e54045a2a64c91b1cf0c07ad8420063b2a5707b238b1861829b33513519a286083bd061021d4a6c9e08c331f342928736bafe4da25f5067bdffb0c38edad1d898dc6595f60ff7fdf5cceaea6a72ec1a2651c60a1d1d5d6c47d34e2323efec4a09f535204581407b47a741998cce2a2b7ab6934f0c1fca2ebcf5a7ac61fb3625fa19f01ed8c512db526f241bb36efaf4e9d88bde4054d9aedd668be8275118d96eb1ed4c1c26d1490f47f322b073277865bb81e08c5a6256a2821c30290613e8f62732fedd0d824a9f8330eec189972963ffbfc1836b9f3ff4d0214dcb97ef8c2cd0a2eb2da5556100fd94f6eda917575e3b7644dfaf8ddd6fe8a523c78dfaf6d87d475ef5973f9f543578101cbbe7104c14e82247bea3a9d970ea46695d11e0d851ae47364f7d8055f450273ff7c517d8bdbfc33946fc90d44f4cb0db3d9d4e6f1a3c78f02272087a54d92e518ecd8e43b61b4529dc59718e62129d8a00851781b41a8cd18b3d1048cf993387ebe15c0e65e932fe2120d0d14818f6833ab87940230f1932c4ea68e6c42f34f200a2ef127d9dc8377b9375cc6e8654f61e1cd7632cf02f555555779f7aeaa9abbabfea5618eaec5c8ed947968180f67cf2c92793d93e21cb033071e2c4d48d37de48ee8b691f1f724aef445d6204e5a883345d1f45ac4d619a5ecf748ca7ebfbd09fef5d39e3a064f5059f655a3f2c558e0f905def68dc6994d6c304fa51afba1ad6a7779d6bbf2c655c7ee9b7d8dffff6572581b3807e62f7c6977af5aabc6cdcb8fd96210941bfecfed740d0c85e5a599ea91bb075811909c96673ebb8accd56c1435876c6fc1804d2ed29027be37b413a7272462d319c90710ed13788ea898cdf7083acd2030a0c87f98e0b90d53ca25f12dd79c001076cb1cb328212157e5bba12942d393637376bd7b7548c3868cd9633beb5f7f8cf6c1d35e1fa4455f24aa627ae4a68fa574964a7131dac316d32bd8e26190eac9c7660a2fa920b8c4d50e2044c866b6c6a11ea5b2240a91fe3f9d55595c6a4bb9e80d5ab57b11ffdf006d6d6c6bf239d221d87431bd1d595d1fbf7effffcc30f3fcced4c5466bba6bd14e6015064b3b9ed0c5d6ff1a0c2cef0cad26e67f019fe8fb77a617f0ec1f6144241e7eeec68b2e57853383c0da4ac91c921d93b1a9e039f8f22c2383bcaf2c6bf7b41d0b15a506438cc77dd08788fa54438c1ed616acf6659a57509f6b8db5326389877c4d9bdc7afdb30e5acda7e9f3daa8d5d76a25ef5eb1a4dfb2e31740ac9672611f6261844a2c218681e9207ecc76a2fbd8469555818110fa0199b77b61865f8620313f3da3b3a0c079f4c5a5da36471fb6db7b2d75efdaff9293864f51bb0dd030e7e4243430366cfaf270a54a9744b427827d17964bb81a1c2a1a9080e64ed8c0a5912a48303d9e16851f83a7767234338c58e9c08613913f080c92fd711c1c1fb42d0a95a506c380c04e4e143220c393c46edd9eca2b4dcb2a4eb2da52dd68a8979679f5d75d9d00993bf396afcd9c924bb922ce74f922c713c259b13e89f03cf70c744ab9aaf7f89697de23577ae95b24c64ed51017d29954ab19ada6a257d352a7474b4b3ef5c7939262f99df04876a1da7eb3149171d0d7bcf633be7428865b62b5355c367593b23ea3764abbd6e7e833738000ff6408b579632b03a810bb4b973e726ec8ccd993387ebc1a89135fb5845efdebd75ceb10a4480d678097898356b16aee76a64bacee2011dcd1cf781d29d477434bef783acd2bb41d67004c076229cb9fe0522ec36d7e66c4f5e5942699db2e46d4f52188b07c08f07fa525b3afbeca98b8e3ef3c6ca6de9d7e8f3eb9a96f8355d7c9ac634184e2ee098d09acbbec61243e2b58cbdb5b57bbdba8a7e250394e89b9a76121fe6172588c71e7d846ddeb4c9fc141c61e8b8099c24793ed140e3930fecb60ec058bdf93628dc6c1db77eda6d36f1c36d6f55db19157ec39425d773d879c03d78e70b2038b0b7a7882c710ff33d373c2f748b5a382340b7e5075cc24123ab2e51993ca0d10e27ba9c681891d5006e1070ac3950613838ef8133301f27ba9b0863ed1915b2244847f42e433439f740867ef96e13c67f6bf4c4cbb78d9af85b7ace6be8d18fa0e71f46aff6c9395c48ecb507abbde65263fd739c8059f1db76f89e39e20a94d2376ddacc162c5cc8de7df73d369f5e172efc982d5ab2846dd8b091a5e8be555555acba9a6fe801e3efe85b359cd7c501cdcdcdec3b575cc6b66c31f690090c59fd067cf41341e838a22544a8a2b902ba11876cd75e55c33d4a31db75da3ad959fe00efb0829bad13a938d3f327366cd8c06ba70d580270c0ad91e3302183bba3d1f5160fe8686680828973d7121d4ce46bc5c270ccbce0e401637bff26ba8908e37d46c708a3442512ec79292d96a95d3961e4a115ed99efe909f613cacc3f4d5f63158334301bbee66b17b1c4d0ddcc6fe201b42326cf610d7a50c0a92f5db68cbdf8e25cf6d4d3ff66f3e6cd676bd6ac65ebd6ad235acfd6ae5d6bfcfb7bef7fc056acecae040f1c38805556ba4e3f700536bce91e7ff7320ff1c47ffefd147be0cff773af3290d5f100fa0de163839b7788b045ad13b881d2e1cb281c1a41da6ff8d8eca0c8f31b22c1813dd022a439031465ed097bc96b67b370d5de1e3e2103eb995126bb88a81f912f8aec985dc1c1036663e1dc75ecb2b7065f007659a23de3b08525bd379476c511a7f6fffae87dcfa9ae6dbd931ef35a7ad869e4d8d50d889353abbdfc6b2c397eacf9457c80256f3ce3ecdbb66d637f79e86fe4d85f62ebd76f301cbd1f9a9a9a8c6cfe230a00d087860f1f16b82f2183c732b952c1d6ad5bd937bffe55b68d5e7910867e7adc03274b62539b8544a8ac5970669ad00d4515cac08883cd5695edbad919f36310e0b7731c336f22e46c4fd9408b9e49e7b4d706f29c7b18c2e18d5a3c3a9a54239b13bff0bc53896e27f2dd850e9055fca086d40f1c3cac2642191eb3e2ad4147d51d0de09d44e7a6b4d76fababba7adc84ef6712dac3f48c9f2187be073d6d5e7f94424505abfbc1d52c3916e700c50fdbb737b34cc03ef5fe071fb23fddff67925d03773fc492b0458b16b3f51b36b003f6c71e4d8581ecb792e4874d6e4a010ffdf541f6e8c373cc4fc121aba31cfa8921258c096d2342069f452c26d1f955d582c069b3099165bb763b23121cc46d38baa1a141271ef8949ee0d45c69e138198370e2d0c8a6438372fd82681a91f16f5ee0505a4fc8de83c3f0c06060f2dc1f89e0e4b33f841ba0b31a378a83d25eb9a37df8d95aef0beaaaf407e8f94ea1870c67709732f69aaf5ec0929327995fc40bd8210e7bc407c19b6fbec51e7bfc09d629786c69165bb66c31b2f9b163c618bbd3154246cfb0badaf867ef14b0b22b2efd9651d9e041183a5e001866c292dbfb888cc694adaab905cee56c578ddf309f432ad08a62383a8b1ce76e674c5438b28cb9454e8a4a5428c77f91e8b34405b724e354da3c8461383cee8123af1e20ba8508bbce597fa4200a05034a94f6b3dbbafa9cdda6fdb08e257f9dd0b433e8d90a0e89c8a0eacc5358e5d1874388e637f1c2b61dcd81fac4b2e5cbd9437f9f632c53530164ef8d8d8d86832f34a68ead6a6b6aaa5832402010253043fec107ee373f0583ac7e03023a0e41c2c1ef205a4ebad16a0f9c056c5d9e7e96b3dd6e8804072a86a30b4d182e0405c18105bb76e734b28af26dcc26644c21ba9408eba2ad7f7743188e99170179682142b68e31f69c713c422c94f64b555575e7b5555eb63bd31e22a77e343113fa02f38a9907b3ea2f7c064234bf8917b0b73b4e782b043256ecfefb1f603b5bd0ccea00073f60407f367cf870f31b6f24b404abae0e3e19afd8808caeb8ec5b4c76863caf8e4be8372ec4f8fbc68686868fc78d1b67dc482670363f96b35d1b0f141ca8f21b4181df960ab43c82032e7b6b87f53014b5e48cb91053dc1d8d046c5c0f803199b58900ef3a4ff040bc5bcf041ecc759e38caf564a2e944becba9649d32206b38020235c8ff23ba83286ff72bbb2cd19eb2fb03e01e3ceb3c5f24a3f1d131671c373dd3e7950aa6fd8c845294356828c3577ff15cf3533c81635883e0ddf7de675b38278805c5b3cfbd6004198510e46fa2c4f3cf3dc3162dfad8fc140c61e827e73df6251e3ebf76ed329c016f807495573f19f64c37df0adb6cd97d489c7e4324dbb5db9928fc06c1cdd671f140cf91b3a70bda93f73964f70770c2e81c2aa216444e76c6a21edb050f66e484cf1878bd8da8e0d22a59c52f527080b4ef51a27b889611e5fc0164698fe8d19eb2431b3c4abbf4d8d3f7eda5f5ba879cfa0d94ad63095051909c308ed55c7e09d3ea6277247b0e9a9b5b58bac0722db4f99f1ff88bf438bb173a3a3a58fffefdd88811fed93bf8ecd5ab5649bf0e03977ce54bd2593b2f646d042149f7d8a3ab2bb38adae19db6b6369515caa0e831d9aeeac9d722cfe194a56c15063cf0da6c27703325e55b59e1102919db353fda4b5418db45860b076ff1e806054a2b7d8f00d7e399fe45f453a2f944ce3f5032ef41a43db101cda5c3c6df4c62be9f1e630291f0a633bcc076b2b5d75f15bb83609cc02cf49dad6d05fbc5dc975e660b1660d55478686f6b67d30ec2e2117f60c67c6565d19a32306ebde597ec9fff78c2fc140c61e8382fcceb2be8a57f6363d37bebd6adc3f6b481015be732898e4bc7431a4295b2d9b03351cf39309f432ac85134898e8b07372454976f6da5f0c020e1c86e79e855a2c24c6c6c318bf53fa15b271586a30030bdfa45a2ef1061e7b93c4096d9f604146dbbe8db9e74736dd1b1671f50b52dfdb2c634ecfa575468b535ace61b5f665a5f8cbec41bc884839ccf8ea56b6163d3e6cd81669877764adb19e5c0baf6ffbb07ab3e8343d62903b23a6ebf9e2e9d9c4ea74fa1b7fdbbbf0984bced5d4d5b171870aae44c2c46cc5238d78338ed8c80cdd69c363b8a52780f19567085f4988b93b1628fed02889c3c84836c1d63ed05371357a9b4a228c0039ee97f44df2742293e0f1e1d2d54a5fdf888cf0e5e72f49937333d3d971e6086f975515175ce192cb91f5618c51f3a4e9b0f80356bb992392160fd7b6353e1ad6fc33e575e04bfbae3d6748be44443591d5710bcf7a27b9c48af9feafe58186e0e8d5e781891defb9de096d0f1da6ce924c4253890f21b22b2b49f150f1e14055a4a142ec7a98a3066ef68b2510b78501839a13e3b9b085bcc5a9dc00d2128ad927bd8809b2d20c2f082e7fed4aa9516f7f0539825479d7e60a2a2f303a6b12b29630f75699b17aace3e95551e3bcbfc147f04d9b4066bd1552d7d2b04ec74570885e607141b3b9b9bd73ffcf7bfbd4c6f033316868ef3c22301400282eaa2eb3f3aa03cdb5571288b88dfb0db1959bf01c84ea23303142e1e54542f3c6cb612580f27c2984b299ccb2221720a290ac5e7a1445f220adde978282d170a181f9cf0861ae49344ae077e3b032dc89257618296a830b6bef8e833be96d1b41749d23878271254cc98caaa4e43e2533a08e2549a9bf98f2b1505b2f74288c211fa21cd32bfdcb163c70fe92df675280a424c003074884e8cd329abf18517143813b7e1cba2dbec3864bbce004551f5828b07b4a7accdf683716393312e013b3b9a6ce40401cb46a10ee160ec170ede17212a6d6014e0016ba1ee24fa0b91732d7b16452b512d997dd6e8aa6de9a788e97b88ef829b018585c41ec363bfe4ad0cf5d0993e6ffc3e7b6395c87f897e46b4c5f8da0761e8382f0af0003dfa1c91df0108d2a570726856f00eecaad9ae33112ad5e1e8424079445559854b635434b24f89ea78a2c38842df302564c38141451cdd8adde73cd3b96295a8161f7de6944c467f851ebae019f8a122916035975cc8b4fe918c0448c1d95fdcd0b7881303eb022c1b4c04e0b958d033999b4886587c0f457b9008db2ebb9db4662088bc0b4156c703f0803fc0b9ef18467445dcf621010fa59aed223830dfc64696bcc3d1410007cbdd40aac776cd46e612b047e5003ce05ccfa388f625f2451194b6207c78c0f3605c1187c178ce1cf2e8685c0f6297a55b7bae38e2fc1a72ec17e99afe1afd51b4e7a69263affedc592c31724ff38bd2421047d9a74f1f5651519ca567c386162c6e05da87be1820ddb8bbb579f063e647004354d8a71debe1021957591de7bdde0d1ef7d88b0863ef79672d907e06aaaaf94049b66bb73322d96e213b1300d2d92e6419c2b0029763862c25790884e4820598a7151c604cf59687221bde78ece10b8b8885bbdf23f25d5ea24269430e0eb016ea97446f12796d13861b486f02d1d0d0607912677b2e38eef4a13aebba5f63faa5c4afef9860e82079559d389b559d7cbce1e44b119850d7d6da6e7ef2c6b265cbd9f6ed986a111e90b51f71f84c565b8b6317bc51555569ec311f2974b62e53c12e18b5472fa750b0960fc71b4f26b2767c03c2d0715e70f0800e8dc0194b5c71f85376f7a250b69116d82025c7cec8da6c157e03091d8fad23b8c9928b07c892aeb78c8fc89a7622b487c1039e83777f80a0b01a3c28287a93ded548f63013f0608f9c6c1d0d65788cb51f4ee4fb6c45545a4ff8dc0306ece74428c97b66ed2a94d6a53dad8e86b3d69996789ef83c9c98e5ee2baa919c388ed57ce57cc662b8a14a5068f45f5b7b67c1fed2d2daca962c596a7e0a0723860f6787cd3cd4fce48ddebd6a22dfc44667fa2f460c198ccd9b9c407f47591e84b2362215eab272fa0d84a1e305803f863d45606f2c63b03b13e8a7a24d5ab81d9aec19132e369b3bdb95ddc1cd191c882442b27bbfabf07fe66b41581148104038d90602623821e31022ac8bf23de94285d2cac287078cade3606a4ca0c3896f5e5052a272932571a22d3ce6cc83ba2a2a5ea3b7c8882207c6d731ce5eca8e1d48243496242a84c30f9bc9faf50b774ec1d4a9384ba9306a6aa22dd890762fed6c6bc6f6d17ec0e64ef712b96e1010331df70396ee6258d17026761d57b16ccd367c19142a865073ec8c88dff0995f150890a5e458bdf2e168f339786599803ccd8fbeb07ea810201cfb980b1a59a6a3018ac6eab33ca00c7f1ad14822eb37c24088c101caefd8a8065bcbe258484f78286d60380d875d69971c7dc625495dff0f491127e8450f72e8d5177c8e69838a72f64ce8a8ae0e56e23eeac8f0d6efe354b803f6c7c68dfe40499e33fb540ad2ad14d3f4efeebdf7de85c632b0a6efaf44ff247e7386b144f45356c7256486a1058cbd27552c19939d7ce6b4d9223c38ed0cf1c025cc02095d10a8080e94ef0f20baa70bc93050e7b2982d00e513324482036723db82033c072cd5a7897cd38c0895d6820f0f2b88b09e7dbdf1c9030a94d6b33d171f7dd679c4e03d44b1f1a495871fc22aa605cb324b01419dfbfe93f76343eaebcd4fea80fe77ccd147b3cacac247b9c2b9470a5d9f3b74c8a0a01bc82fa26742f6ce774c9c03b236c20d1cf740696a62229138aba161a9b5da4724e35691edda6d36819b8790265f733d8782e0200efb03183ce039ecf7f143a0f41e8dace0c41aa51332d0c8f77d322103e36c571319e52c2fa8505ad97bf85c8f7d407f47f430916f399e486a42865b7bde4d4ee4bcca41d7104777109381fa4531901c3d8a557fed42a6057044a5826432c1dada3a0aee5607e7bbc78811ecbdf73f50b6052c66becf983e8d1d71f8610567c1a3aff6ebdb8b25239abca8337d394be817f7eddd7b9df95521e853a64cd9be71e346e803cadb752a749c170aec0cf42fd5d9995a3276ec848da6ade375683913bf04c776c33acc2b3028db557ade3c64598a87ec38db33485b0631e24a4e190b79420614f93222df6c33064aebc703b2136c568399b29e5020cbbcf6bc02c77eadda7e97ceb4ab89bfd80c6a6b03fab3da1f5e13fb235c4500c7dade51f838d77efdfab2be7dfb1a93eb5438f883674c67279f7462a0a576a830f4eee53f933e4ce819edeb2376af7fd6fc58105903b871e3f2356d6da9a1a49fa3e8eb9aee7f0d8690753c10cceb6bd369b6a9a6a6e64d450e8dabf3a8b2d9763b2392d0c92695cea3ab457870395256ca31cb0607e061d5aa5505afb77ed00b1e63bb5c8cd175d6ef80b1ecd86e504038591e00c7f832661d61fb46df6d505528ad2c3c78c0ff70b627ca898bf0850f944cc8b0cbf28bf5f5897d52bd7e44b7fe2a7d99cb609420e75775fa894cebd5f31c3b80496a88a98260ca01fbb3534f3e29d086337e983471023bfeb8d981d7d0d7d54638914ed7dfdbb175e0a3e6a7828011ceeac651479db48582274c487d099f8342d629030aedcc1e74edc92ac676654be1227606d9ae8bcde6e2417658c1e937e83db71c540c47db6509ffa77038da17bed64575590598366d1a57d4021e7c961fe0be186bbf98686f224b0076c445693df8c044a03b88b0db962fecb244471399906197e5c16bf4e489151577684cbbd4f88318a1e2f04358f559a74068e6373d0b78ac6422c9dadb718aaf3f90e50f1f3e8c1db0ff64b665eb56b67dfb0eaefe8771fb133e7d3c3bfef8e3028db303559515ac5fdfd0377874053d5a9396d4cfde67ef5e58bf1e04e8243925e4f6f6f6cd6d6d6dd89a167b145bf6c70fb23aaed8cec0eeeeb672e5cae7e815cbfc023904a7cd265d97ce7645ec4c1cb35ddeea850a5912c21c8ef6859f73cf2bdfca963408694ee1e0ba1ce1384a54a8199e4af479224fab1533a53560f20059fc8308bbd0f91eac8dce2e5b262358b23ca6adad62b696fc19f1f50de35f6284c490c1ace6f2af332deac95c2123994cb2ae548aa5d2c1d4aaa6a6864dde6f5fb6cfa8bd0d27bd6dfb7604dce6bfe6023be1918166b38f3d869d74e2a7d99e7bee11b81fe3ef06f4eb63f01709f4cc2dc3860c7e90321cf30b7f388d309290850b176276fd4aa2f1445841e33b8bd1433fb9207b0f97eba100385b021bdbf8cdc3c9c26d08957be2175d6f3955013b83dff6b3d905e1e1d0b86c9df33978934ac04596dc014a08c3d18179f0d4de301a39840919482d6e251a416408c089982aadf9ced8ace2d7446f13f929a1920919d98e367dc78ecad9a9baef105b9751d61eaf85e31515aceab367b2e4180c97f66ca05b545426595b5be11debb240164ffd808d1b3bd628b38fdc6b2f3670e000366cd85063539a9123f762fb53867fd451b3d8a70e9e613875dead6c31ce5e57c73554ad0ca41a1b12acebc23e7dfa043eacdd270981bdc2614ba389b0bd6bae22dae0d4515e8461674ca0f1e6132d333ef9c05925ed29d9ae8a3907bc9503679514c30a323c9836bba881969773976e6455518b5d382e510bcaf1186ff73c6923c64a8b7aecfd44589b8b99f29e7036b28cd28e58b326f9b9cac1b752667755ec1c7b4263d5e77d86551e753884667ed9b38199e8983ddfd1e9b5c3b03bd0a748bfd8eebbefcec68e19c3c68f1fc7268c1f6f387d38f4fefdfb072ec1db51575b136539be39c9f493860eddadd0dc130b0174631311ec90317b1e5f3821abe3b23606f0e101fb7734103d6f7cf280b34aaa22dba5fec59dd08591ed463189ae40525910b281965bf582d7075b3f6e0731560a133286134d231a627c72418c9516ff5b42f4001114d7136864bb2cd1c8370a6e0251b77973e2e25ec36f20c77e89f94fb14272bf49e4d80f83d0cc6fe201b4194ae770c06ded1d06e17d2a952eb89c2d08e050fbf6e9a5a4bfc9006bdab1f42d2a90247fb8fbee83df303f1684876e380d202a004f1261ec3a0fb236c20d2aee610322ad23897c8f830d693d39afcd769bf82ccc039e8397070407761ee83db71c204bf3bdc10339652e1ed02f29c8b177ac34e7243a15ed999fb93ba316159153081332c0df4144d710b95a23154a1bc63d4ce059b0740fb3790bdd545989eabbed359faed2d82f88a9884f01710165b0355fbb9025ea079b5f448baeae9431d9ada5b59ded6c6963ad6d70eaedf45da7b184adbda3dbc963bd7a7b4717cb64d2464356088e53579aa5f34ece0c5e15c077fffe1867b7ec5a51a167f40f325d1597df7efbcf31c13408a05839bae193a1a13286f2fcb14439553ed9804af67a20809d01cf28cbbf4f94678bc3b0d922d9aeec24ba3864bb6e9583180e470782d3122929abd0f55603a9108e8b43c38020b24fcf73c563acb4f81f96e9fc890806c7132a4b54d76f4f1d5fab25fe4c4c455373f503c9a9ea8c9358e5a1a89c460764e270e68d8d3b0d876e65e7998cd176769b8bf7f82e93d1593a9bd593a36f696da3cf19c349f26cfe82ae526d6ef5da4981453151535d457dabaf7060a2006d699d9db9e78881814fca71736805eccc66228cbb230336d6f80570aa05217b8f80d7c3dec10ea334ef9c8b108b4974e041657040503df93a084a65383a1072b4d9d9c8b21332cc8ec6ddc801a2d071445710ed4e94ed0c1662aeb4184ffc3f22ec21ef775337590a29edf5db3387d51a87d1689e7313a244729f91acfac2cf332da24361e08c9b9a77b2c6e616c349cb94da7129b27e387a3869ac65e7c986511ac7323464f022fd9607e8a37d7ad71963ec38d0262aa433995fec39b41e43544121928460c720109c3b9c7c9e8ef2220c3be3036cd0850d7d729607ca66bb04250e0d76c6fc28141c10459eedda65091e648303199b6d7e14694f0bd64d201c62c6fa8c46161ddb353f0a8d7704d8b800b38490b163cc3db066f04085d27aa095e805a257887c3b9ec7f8556064dbf3e2ed6dbb5733fd57f454f1cbd8095aefdeacf2f493482ba2999dddd9d5c5b66d6f32caee2a9d29eed5d1d1c9b69bf7e60176861b38b05fa867a863d67d7f72eabdc9b94bfa3829e899cc47152c859d1903c3696738c676b12a05db3b4bebb86c600070f280b94538ca7a90f189001da720c77e13deb1dd1c3b037bab68ac9e8b07b4a78a7dd7cdb7c6739043e4b697b207c34c9d3a35a77a217a308cf931eb83b978b0232b1030a4b4a4817bf0462d01a35038f52f10cd20b2fe368b982b2db696bd896881f1c9036864d9f12b42f2ebfdfad54dccd43e9460da74f3bbd8a1fa7367b1ca43d194c5054aed3b1a77b2e69d2dc81ccd6fd5036d8f31faae549a5552160fa71a0428e9d7d6541ba57a541654ed2d8fb17d2c75c3f83a2a04f2bd5d1c193db3a28ba58edf63e8d0a07bc71bba21baa90701e3f92b483f4fa25764c24663f0da0820223b83923c6c078eb5c50d6295ed0202ebc9e390ede65582784be14e1ee87d18c3d15c301ad6d9c8602c8693e800fcdb7e44df21ca3bec5a56e1809095f6cf4458fae6b7a9386e90d3c822e3579b366daab8a0abf6eaa4a65d607e1d3b24f618ce6abe4c711ac7d8b40aa04db7ef680eb4b7bb2a60ecbeadbdd3c8c6833a78001bc9d4d6d618e3e23afd87317e917e0da7deb70f4af0bdacb1fda891d2d3578c1cbafb5cf36310488fed9211ee58b870615f7a8bb5ef5866c68d08ed0c6c34caf26fc199443db6ebf41b2249880abf2111ec1950111cb8042852b2447bf2fa602770b3584cc8200aead0b0a31acaf29620b2903558212bed47443f275a6e7cf2802aa5bdbb66f0a9d5baf64b62287e33e3017236355ffe224b0cc3b489e201edb19d327694cc8b0dfc36c6f45176e771f0867224bb33f95a0a0e703d3e27ccb17c387c3b70ef4a9c815f55c57ad5d5b03ee4d491ad5755c6c3a903c4f3e3cb3e9eff7d32c481fbb60a3b535f5f4f81efda8e544ac7b9e9fbaad0715e48d819ecc889e7fdbbea6c5744962ec141e47e8337dbf5080e7878084596bcc1811b92014be17e50322123a043c3e130984897b7db54188e99173e3c60563c260c216bf76b342525aa5b33bd8fadd5120f1043b11c67072a8f3c8c559e708cf9a93840f97d47d34e63395b548023c6d239386a91496c70dc98a407078f7bf4aaab3526c5d9c9d8610ed93e050270f228f1cbf66d95d033fae2d6e6b6730f3a68ff1de65741a0ccce6cddbaba79e74e6349c2694496ed0b8288ed0ce61b0daaaaaa7a62df7df76daaaeae366c848a6c9764b9ab66bbb2a570699badc007bb226742061a39c61332f01bb388b04f748e42aa305c2a94d603e8b0d866f621225fafe294a588d29ebd9df5aed192f7d013c5d6b133724a55e79e6e7e281e1a2376ec5960e9dcb61d4d2afb5849a133d579f9d8b17b60dc383054da994f7deab89dc3860d7b9ce48f3ddb036f2c10073b43d70f4ca552b3972e7dcb58ce4732e1964348279d713d080507c5987ced0b3c8773225f1493e814f860d76546c99933671aff00c6444a1a459c9081dd4d4e21c276b33950a030e6bb6e88185d9f7bc078fc960807c478ca86a37ae1056dd690219547b5677e9ed4d871e677b144f5173fcb92e330e4593c60c3999d3b83ee8f928bc58b97b08f3e9acf5e79f535f6e65bff63efbcf32e5bf0f1c75044d6d2d24a6dd5df181be741f7daf9ee35e6bb12ba52a9effdf177ff771faf9db1cfc751b1cce9dc73cfed221e30f68ea57103f07d21c4c4cee019dad2e9cc2b9a56d91441b68b87883cdb5551397029854bf10059ca0e2b88cc7b806e5c7cf1c5ccf9fcc9499326190d0dc6784b1a2e632e521d0d518b87d2e237e0dc7f66be5a08c331f3a2000f1f13dd4e8419c15ecc196381e4dc2d598a28ed998b369c53a5b19fd0edf83c4d115171e80c567d4e71b3f6ee4cb999ab6f6cdcb889bd38f725f6b7bf3f6c38f4a5cb9619ce1c27b16d27dabcb9812d5fb1829cfe3cc3e96fddba95f5eddb97f5230a0a4cb243d93ce8b9eea58e4c26fde095977ef33b2276c69e1df18eedfa3834ac51dc93685f7cef8798d9995ea9147bf690430e5953ecb15da72c55045a514ca2732695311f8ef6027edb080e1a1a1a74ba36877fc3b99b8d5cf4a8c52538f0e3e1642264ee56b9595659809095161dee3ea2a78876e20b37286864765d65bfa18358f249e225bacdc10b40eb55c76a2ebe80697d8bbb974e3365ec41b77545fb7ff8d147ec8107fe62386f325ee6bf780359f8fa0d1bd83befbe67fc3d4e660b3a610e81475427b01513195dff78d3fa2d5fb8f4d2affb1e92e44448195ad611648f513dd37cf584acad516c6730cbff8df9f3e72fa4d7c0c30a0a6cb65b42c7ed375439347c3079e00e505c566671c9c12e4bf0205bbd900d0e9078ac5ab52ae77a8c9d08454e749dd549c098c006ff6e1b5178019df910a2bce56f7688288c2c0a282dc6dab17fbcdfe130d28725fce0ecb3abf6d42bff4abc042a2f46858ac30f6189119813593c60025b2bc791aacf3ef73c9bf3f0a3c63ef2bc80a39efbd2cb74fd239495075329ec628719f43d1d5d6dad974f9d3a6183f93110dcec8ce2b15d387704de2b883c0dab0ac72c0b270f14504ea517ecf911082a6c36b25d0e9bed86386c78237d280b64492f568022b2e10dc932679332d9b96a1474e57610021e5295700243406931408bd29995e2383bbb0842565a94fc105963cb484fc84ec840f476cef6f4b509cdd8bd2ab6d0060d605567a2f0525c34ed6c09d4aec8b8ff74df9fd9f32fbc18285bf7027eebfd0f3e64f7fff901d6d49c4d0cfdb1b3051b17f64c903c521d5d5d575d7df595d003157686eb1e4e3be3e24c3063ff71a2edc62707e260673c78803d0c3c710593cfecb2a42c932f81209b6d7720a6cde6b2fbf6402bc4f6f4855b70c0fb1c2a76c39395a53d38000f6e7e23c12b1c624c93140eafd2e2b7ea89a6189f3c20ab30bcd70305ee81d95b9823e0796338e6ac1c00c8925e7818d1beb72533be4267df363fc71655271dcf8abdc52ccae5adadc132f097fefb5fb6f0634c8f5083458b97b0471f7ddcc8e60ba1b333658cbff744e87ae69fff7bede57b65ed8c6c7654c0cee038d84067c84761679c30ef01c78e0dbd0a42859d519dd089b4a73d38006483033c07f54b2ec553214b97408bbb721ea47a6145200111c5840c307d2911b65035ae0bc331f322000f73883043de6b2daf923197d91dfa5dc40b4a74b10576a2abfefcd94cab2aeeccf0eee3580b2f7dc378f9638fff2370293d28b66ddbc6060d1cc8860e1d6a7ee30df427ac5def49c8e8fa7f3f9effc1f9f7df7f7f9382b15d293b43f7f29b308c6d5d51e23ed4f86422e67606738fb612a122e2777881b49de194a517a4c7c9554ea2030f185650304ecec5036c365d6f396691392444186b3778f0f3c1d68f0481337212885adc4a1a852cea6e4488508d257bb2ca02a850da02c0d8e29be6ab2becb2841c44a2d01bb6a5cfa2063ccbfc1c4b1893e8bef1657a2dfe3c3f2c7f0b82a79ffe0f050262cbe4fc80cac1bf9efe3765e685030cacbf97398d2e6ed033fafaf5ab979f77cd35d76ce3cd8e3cc676b97483730df47a228cbd5b817889d8997d887cb377a7cd16b03379365b24db951c27771b5690ce7615558202033cd075160f66399e4b0e68cfa0b2b4fe2800dcc63b54286d217c8a08a98f2bafbc0a5304a585b0571261cf6cd70e8846a6174b61444a546fcd3e7544a5665434628de494c946e65e6ca04d821c08b36347a3b1cc2d2c5006ca3e5e54b8e29bcea40395f04b037a476757fbf7bff6b5af6d8c68538f9cd269c0e0001bdabc4ee4fa772138e68208101c60efe603bbdfe6c3c399f0ca32674e90a249745cf7407020e037ec308615ccf74182bd3ca8080e54cf21319fc35316d61f168273e217454e5c02f650da420f86d2133c03369a0825120e4169211764ed9e03b8ce8ec62b4b74f6bee9e48d1ad30e36bf8a272a2a22994407a4d219729685750fcbde9061878977df7bdf7ce70d74c3740f1977ef4aa56ffef5edb7fe1506903e72192f1563bb027606c084ba7f13b5aab033b2f7705eef01ac223aa8fb6d3e5cb25d6e9bbdab65bb1e50be1b9e8a3924850267ebc7fce08c9c44842318b5e06f4eed7e2b8f22292dd6f162ac3df70f4d4096b21dedbbdb3353888d73e9075c7f232ea83af978961892b3e750d190a12c3848fb2e5888050de162edda75aca9a9f0f26e2c8b2b75a4d2a95f7df5e7e7ffe4dd77dfed123080c59eac6b071c1f96ade2586629a8b0334e78dc03c90fe6dbd4199f6c5065b3cdf7c20ecd1e6815b93db3503189cee2011090a5c870740e44fc86f5c73e702babf036b2a8d24e201a813761280c2f02f280b13b94e5dd1a4f45892a51cdd253286bc70951b185d6bb97b1ae3d2a0429c93792c36d0eb85c4d062d2d2dc636b585e03cddadd490d1f597fff1e89ceb1b5e6bc8881861d9ec08ba21191c7c403a8e328b354922c676260becfd9193bdbb65bb2a64492f5cede974ccb27e4345b61bc5b0827d680390e521a82cad0bbce08c5a049456744206789b4134c8d9d94550a4e0601b11caf170ee795055a24ab044e1e9d711a3121bd64494b503414af21b366c34c6c4c306cafe2dad859d7b148e4415327a66c1facdeb2fa48ca453d6080301c7c9ed5091a125c94efc97de0a67ef45b23376207b879dcc4279b61b5170e096ed72b527eca564b09767b34578101c26b2e0f4c14175c37a7037b8458002c2119d90818814db990d343ed9c0ab302a142ec03df0056aaf7f33dfe7c0d9c8220630abb4a90cfbd0fc2a96d0060e6095a79d607e8a0641dab8a3a3bd68ebcb8304114570042141dfb675fb96736ffef18fd72a3480c24618e0cd8eb2b68ef0017dc4e43a693b2302015b85cd2330e9d8003d4731f707f04258d92e170f0a2a41d243a8b281968c0fb61ede0da470398e5976ad698035ed76c0a97f933a7bce2e4c22065056e9025e8f3fc24e578f1039d760e1dfa4d779666539b9b3b3b58f9e3c9bee5adc4dda03a2fabccfb0e4d8e29efae604b6742d3486ddb0b981cd5fb030f40975c001fbefcf761b32c4fce48e8acaa471467b2981d4b1a9a3abf3bb377cf71a6c0423b457b80a3b63df2b9c90e65c876de9e7860dcb3adbdbd383c9ce1cd3fd4fc121e098732068a76013b0c9d7ad443a649995830a9b8df6e45dd33e75ead44a95ed0987467e838b073866bade728ab207c3e03964f77411912541d86f580fef0484936d2080de8329eea8c57c6f30c619d163613466c9f37b731b6415ce0d1ef7c06cdb1789f25234d525aa2bb6ad5fab6bec2a6204c300b14262f8505679b8954844862007b75056c3aaaa2acd4fe1a27f3fdf63110c68868f2929b47676b67df5cedb6ebe1f1fcc0c8dd708e7941c45ed4cf61eb033bc3c9011b6b2dd7df79dbe8dface2bf496ebe0ff22da1927f0c308f20f71daeca8b25dd5eda928dbe56a1005fdd26d389a5b96327ec3d502ba09474469251ddad1a430108e2560150ac30b0ea55d4084f176a79c4229518d7bee91bf6ac9f401c4d0ef88ab45c417d73d430139d4aab34ea558d3ead391a122000f23460c67fdfa613551b8a8aeae663501b6ded512b97d2dcea0fe96e9eaecbae2ea2b2f7f74eddab56911234c88ddd82e65bee9542a8531f7b7bbbf290e24830344a8873b65c95b8e773a3491e0c0ce03fa046f7bda032d00edc9fb1cb2c1012116c30a2eb2e4e2c1bad806e513324cc6781aa89a3a3bd6b7a3dc248c30a2690fa00cbf9c286f5d9573fc4ae5848c31cf3cb166ecf38f5e5cd9959ca5e9ecabf4e5efa99588073d9263c612bbefc692fb8e373f458b440047595959c9060f1e647e0a0ffdfbf70f94b907094862039d3d79c3f5d7e03863032a26d129b2335cfa85ecc8c5086f21c2c4ba4090b533ceeb0540b7d03ee562b303a32767bbbcfd52c59e2e761e44022da76e98fd920b16035938232715133204a216ecbc3489c8da6c5b5661441c3bc73df00fcf10e594e4dd3a1abdf0301228d0dafba5391bc7bef0e8ef299bff72afda8e83d24c3b84e9da37e89f30b92ffcb55e262a671fc9b4babc25b79120914c0472f0fb4e9c68be0b0f6346ef63041285505969ecb05c0a7876d992055f6e6d6d35ec42540650f644450f87061eb017f1f344054f1d5261679c10bc87b51c0e768657962125745c7d220ed9ae33d8832ce9858b07c8d27c2fac1b2e091d577b128cb2770e62302183fc435d6d2a95ba8dde1bb38b5438665e702aed3aa2bb89361265ff30920919b72d5edc75f7f285ebef5cb1e07f772e5ff8f0817b0cb97d4045edb3495d5baf69fa588d69583aa31cd83bbee6d2af4270e637d142d312ddfbb517982cb7fbeebbb1575f7b5df9a131769c79c6e9c6f8be1f1088f4e9551b68ae4094203598b361ed8a2fdc76db6d56208b7e293289ce6167b837f5a0eb2d6189f04094335969f6ecd91932c459fdc5b9105f22c278b667a7566d674440f7306eb268d1a267aaabab374431f1cb39894e24d0729944c7f51c080eb2ed09f04ea2030fcec369440ef3ead5ab578e2c65fba5880fa697dc3aa053614466183a9596b7a38187050b3e3a936cf24cfa28341b9cd331bb8253e9b0231d36afb1ce8456607cf2022d11592ee9d54b7ba526b1766eadf6d2c6dac41dfbb7a61fd735b646d35995de6d160ad78b03a0eab413587282b14b702c80e6eb2287dd1560d737f48fb0f6971f3b760c3bfc3074657f545654b0debde251f5f084cede69dcb6e9dc8b2eba6867b65f9a06b0a84698508cc0191d671ad12822d7e3fac2b033bcf7b05d8f0980f3bff295affc4f81cd8e3cd05234c39eeb1e04bf602f08a4fb256429191c187e03cf6135088443cc589f454a01c458ce988b4859e5adb7deaacc64f491f4de58df2ea230b2e0543894bdd712d937bec8290f4196712851dd38674ee798171e7b77dc738fde34e6f9470f4f263207d1b31d4b77bd951e12338485a0f5ebcb2a0f8b7e86bc13b5018f503d78c6743674778c04a9455d5d2d3be1f8e3cd4ffee845597b9c411d6f615747ea9caf7ded6b8df60c8d8c1f57bf869d21e363f56bd3ce7029b9d3ced07bd8292edd0838b6fb165168c35a2a82031b9274fd01bc36db3e840a088cedbad93a6ebf11d2f06560a05fc660385ae9b042f6464a8463674c5469376dda544f59fb00fa58787ab10b142b4c10605c0e59bb25af900ed911ee68805369e91ff4d1cf3eb679dcf38f3e37f6f947ae1afbfca387b18a9a7e2c93399bbae3bfcc3f0b84aa1367336d50de5e439103e7a30799a446d136fbc2e7cf535a12c718fb71b367b3a1430b070de031ce67b9930aed4c641227fee10ff7ac28c61c9202900e9c3992907789ac6a9c1d0a336e6138ee51493c4c31df0782ea404b617b72d93ab7e080d75e3a833d119bad3a38909d43623c10be941d7321489734264d6215ebd6eda86d6b4b5d4d9f87c92a8c886317b80796c061bcbd051f103991fc2c010b9455c0402425aa3b977ed471e78a8f17dcb962e15f3e3d76afdb7b65926f333db18d6e52cb34bd5a635a5ec095183c88555ff039a655c773f3154cacc3d87b2120cb2699b3a54b97053a7fdd0f151515ecd4934f6233664c37bff1475d5d0dab89a973a7eebf8134e0e4e14307ce7329df72f74bbb9de1dcd4ca002a5ab2bae11c57f5e101e7bb9f4eb4a7f1c94444762607ceeb0990093a2e02f320fb5fe00652361bb26c6868b06681aa684f45a570a9610515c3d1bcfd123ca81eabc7cda4c7c955040798903160c038ed830f16ec95c9642ea0ce8eec9d0b2e1d9e0b820af710d1cb4498619bd3d160384a7542c6b34d4d99976a938be7d66affeed5d1f8c7bd58f543248e37e8ee2d1497ef41c232eac895b38f6215074e36ae8b233096ddd6de11e850162c8b1b3b660c5bbe6245a0835edcd0ab571d3be3f453a93f7b1eb39d03f4b901fdfa049ad95f7ce85b133a3b65f8d0c16f28085add26eb721b6159dd000ff6eca8806e60892b22b4314456601b919dc981c73d1a89de23f23c6e3a0b3759f2da6c59871646b02792edba047bdc369bae970a0eeaebeb13d41e962c5504ce09622c6889ca0b6ee3575c8c4138591ed2e934aca225a8a050a13002d84a8419f278c573282d5199b2e4ed68b2e3577925aa2f3efb6cebe8e71e5d32f6f947ff32f6b947cfa7d74124df7d5845e515959f3edafccbf8a26fefe013d55046bff45bdf64d3a74de336e2e3c78d63977dfb5bc656b341d18bb2f66492bbbb170709fdb8a14307bf09c361ef9766e994db08bbd8191e2829dfda7908a81bd86b1eebde0d44646772e0c303ca3f4166b52a1ddb0504ec4c9edf2087c8cd43d4c3446eba2132b4a1da66439649ca34ade8cb8c5ab895361b390132335f3ffcf0c3ea6ddbb61d4a9df564fa3ef0bea0bc46d80d824abb89e8ff8856a2915597a860004565890fb8475825aabb562cdcfebdd75eda9355559d6d7e155b249349d6954a237034bff107c6de274e18cf264e9cc0aaabaa587b47bb51aa772eabc37d070e1860fced69a79ec28e9c7584b11b5d50c0a9f7ef1bbfac5defeacae86ded5f1e3e6218e69218199add008a64682a97398107d9f22d780858554385ea5022d7a3a779a1223828c0c30aa2a7bbdfba238c6c9777c544503be38350b25dde7e49901e8e96b5d95e3e383973e64cc321e1a68a943688c258b0373275b2be24e04fd3dbc3f13928641546426191b5ff82a875572b51918c2b9a76b6de49b2c3ca865803ed5b55d55d9ee7e91a7dfaf431caf4074d9dcaf69fbc1f9b7ae0816cfcf8716cbffdf66333671ec20efdd4a7d8e1871f4699fa6463173a5ef4ef57bcbded8342dfd9c23aeef9fdd6f47d0f5dfbab251f353a8d30bd971e261219dbb5db1911dd703ec7b469d3823a138ccf9c48343a423b63a1000f882c9710bd448461c23c38ed4c54eda9a214ae628826cb4354363bccfd019293264d32988baa91edd9eea64d9b52cdcdcdd7d15b6c3d6b305b08b20a0748dc03e3edffa58ed64ef29332802a3a9abd91c36ecf4b2ef9d641bac67e40b2b33a779c816c1c997690c9754ee03a3224ac5fbfbe6c487dbd71ba1bb693c5c634a2bbca619cbdb6367e9310db7ef44b965eb068533bcbdc75cfb205ed82d9ae0537232c3b595744373826d13901e77e24f5738cbb5bb31e8b6c670c04bc7e2511c6dd91783861e8b8ca6c57457b4691ed3a833d91ca818bcd96e201b294b5d976dd309c7b544aeb14cee2c58b51fa3a8b680f7c1704ce0ecf0b098583d263f39a57a8a3e9d9e71095a5bd91453a1a514e23875da2baf23bd75c43b28bdfe2761f60721d4ae1380e364a609cbd37c73c8062406f6f671dbff9034bcf5bc828685b5fdbd9fbeef5d3c7a25f5b7d2a2a232c99a1b90d2b70f14071e1787a142c33133e6259d6b103016d1d66cabf43b4d4f8648302592a9f7c1da30aa5300f8088cd0e2370b6b7a7c19ca2895f5cc20163598503cc4904980c1278370f150a2381cd44eba991bbec86a3274dc8303fe661c5f6edfde9e6179a1f4b0a75b535ac5f5f9c261c0de0d8fbf689eef75d01c77ef7ef59ea8dec41685ac7d5435abbecfd52e1a61e3c709b442765674478d0b4e422fa9fb57ca2c876c60087ad4382e4b6eba40a9b2d3221d10eb74974dcc19eea49747eb6ce0db0d914e4587210b5d9761ec2987c9d30192baad2ba39349331d0dec69705a0c2b14bdea3a6babafa4d7b47133180aa37f5301b598501f4e4a1aa23fd3d125d287bd4170370f070b08ee60f1ddd8145efbc7e1725f4b676d6faa39b59ea5d4c0aef86a6eb2bd1a7640da0d308cbda195337024355e0dcab57c57c9254c14364bca0c2567100554f8c15e56c9ce094a548b6eb9425af9db1f300280af6b8fa04da5375702092d0d18b15e4c806ce809bcd4eae5ab58a5b6124c75cc090db980bee3983e85c7c5f08b2065281819d575151f1f0b871e38ced29f11c226381719890c153a25ab162454d4555f59f498231df08dd1f98c8064a63167d81c3656461cc8aefd79bf5895b297eeb36d67edbdd2cb37c95f94d37521abbe7836183b03b9b0115e39122e55be71c12457686eb39503a9d36ede0a6050b1660339be1e4982d7d0d0215819c4070f02ad13c22232041f02e3bb441f01cdb0d02677b9a76868b073c075d2fdd9e591e44fba5ec9c03a76e289265de3db83a2a0137434751261c9b438380be428433387db7eb521109cbde83ae7fb44f9f8a57468d1a67ec4cd7132764b8e1ea6b7f700e89eef3e6c79206b67dc5a436f4852007cc8800d93a26cfc56e56fcf61daced963bf31c3bd0c1b4db5eaed58cb312648d30a0a25f463db64bfc4f231b81dd9ab81a52819d31df7523e0f5186f7f9608b347a51d9a82e020af3d651db3487b3afba580cdce73cc24cba2db6cf0604fe8bc6cb6f52341408c4997347cc676315905a94de80392b20a47c07197ad33668cc0b8bb61001595557850f41215c989f8cd7ccefcd82380be808c7ac8e0fe4ab78085331f34a0af91b1c76d931abdb595b5dd760fcbacc27947b92055e8e8d0bbb72f857eca0e1315a35fba417683140407761ea89fcca797a23a7641e047f62332e60840962e76a6a8ed49b2d49ced293b4423d29ecee710e021c7a92ab2d95cf770b62764492faeed69fd5000e430868753ccd850228ce35affee065985715e2f02ba472bd1c23e7da6e890834847a3e8cb62c4ec685c0f629725780863428613ebb66cc184476ce8d1e3d0bd214d5fb65bfd40d6b74f9db1c42dc1d157d0af2a2a92ac77af5a563fa83f1b3cb05f2c0f83c9ac5ccddaaefb0965ec5831950f0adfd6ad4964d6e1bd8a49748a82032efdb21b6140c4a1d98383f9f3e7630323cc402f858db500e86942854373da6c81f6cc0bb404fc86ec243a83077bbf94b5d9e041916e04865b7bfad96ceb0f0bc1c958081332106962ccdd13129ddd1382c141bfbaba8ab79a9bdfd3043a9af293b1448cb053698318402d933c9d9e5fc9f9ef7105b26c9cab3e180e9ab2f941e4a4b17d2dcaebb535d546760fc27b7c87256d080ae0d04198a827baf63d6ca4172c626dbff815cb6cb6765375c38e7f746e6b42bf94cd76a11bbcfd320e272a3a75833ec3d661e737ecdd2e842265ed00f8c63ca0c92a6685dbed8c882c6392ed5abe0ba0f7dcf6d6294b3fa7ea06a76e1463f2b5f5637e50113905e868c8da43b58a0a838379e974a67f43433fdfc8c90dd4c8255ba2d2741d7b10ec1280708da358ab2a0d078ef2fa80fe7d0c470ec27b7c07c70f678facddd9bfe284f4a2a5acfdf67b98de54e078725dffa075c8908c6cb62b6200c330c22ab223d20df08083633e5952e003157646f21ee9442231260ed9ae6a5b1776b6eb06047b92b294de47df29cb20c181f5833e28d6848c9926d51b9f1c0843617861bbfe6d4dab78f24b5ffad2166a242e46544cc8909ddc127442861d1b366c9d44a1e04fcc8f659410ba5e7a8d75dcf3ff8c656f85401de181bf376f79e33e89c96740149b7ac000cace6426784dfc42c56a12d154fc9b1f14da190302b66e27dde3dd89132762a73a613b43f2b3da53c4ce10494fbeb6cf0a17994447503a912f2259bacdb02fc883f5835e40d49275048048444fcc58bf03c65c2227dc1f9bd7b83a761550a03059607b336de8d0a12b05a2d0304a545c3c38db336814aa6bec3cf36d19a582548a75ce798275fcbffb99de8ed34b0b23a565de11c98e5c4ae15c0ae6ec9794a5e07a2e3ba3a272e09369223232e622f841a19d1106f130845eac1fe6b53371c976550c2bf066bb4e382b07510c2bd8fd06109407eb47dde0d6c8bcc209181c60a20a966db89ee12eab30ceeb4560bb07b6295fbd6ad52aae3d4c9d06109d5db6a3c98ed50755dad5ab57d792738fffd9ae65e4a0f3b17fb1ce7f3dc318c73afead5dfa079cfd52f91c1241039853d2f7b0337e704b42ec3ce058673878cf8c49b19d3120181c60d551f2d557ffdd47c466ab6e4f53965c3c28080edc564c7065dccee0003cc8da6c9100453470b6187783ecf815214f693d8403c7be27519ef01575f61c4806079aae6b2877f12c8b89c5840cd1e02051d5eb007a89fde96f6574436f6c621dbfbd8f753efe2fd432cd6f0b23a3b30f8e7ce909ae4963d42fa5e790c461129d477060073e4398c6f2d720883209d1347db79696044ad0dcb20c29dbe511868a604f28dbb521944a10bd70c94126d0b29877028c39c77679c7af9cbba7f98cede26f3e4bb43f51cefa21d90eaf223870dc6307dde3397ac546dc816ee6264bd9f1ab20e3e47640694537f5b8ea9aefecce32dab92406e18333ca280eb0c4adfdb67b587ade02f39be0d035f68fbb962ffca7f93108dc76a22bf678a4a11bf6715511dd08b2e317611c11e605e5551843b03332c141862e5d3f63c68cbff1ee40ea6c4f593b83f6e4f51b70cc21b427170fce7e293b87c4d48da2cad262de814225aa828070ec915381a80533e561143023d5820a85918593070236f8c059c94185ac42969196a82a195bc4f44c83f9b18c9822b3a981b5ffe60f2cb37e83f90d1f345dc3b6a5811120db2d04b70c8dd708cbea06cfd82e96c385b27981625b07198ce0d171c069b34532ee52cf764db8559cb91a04fdd22e4b81e790de1fc07a003b2250dabe449850673d8c8b53e54618c101dd03bc62b7aa40f02851f1c04d965cf7902d51d5d7d7efecec4affc2fc5846dc904ab1d4ebff636d37fc941cbbdb31de41a0ef645aea7fe687824056a1b2140edd506184059c094f70f021d1c0eeb79f2086494805f1001dc7c6608180f674ca52d6a1890407761ed02778db939e236798a898c39736446eb3099ac540161129ed0e22ec29ef095e85093138c0b360624dc11f802c9d864356962263682eedc9254c28edd76ebee091543af56bf3ab32e282ae146bfffd03acfdfffe48eed938e6400c3a5bd135a07299f9a910bcb2a3c070ea461c8c30ee11c008e7c848856397bd8787ad4367d8adfb6d414867bb684fbb2c550407f49eb73ddd2a945cf69278f05b3111087199436209c2046e283d7e2530b68bcd6b2e201a4e447dd57a2e03715018dbf5186b7f8968bdf1c91bd22763a1a3a918ab57b1ce73f7caddd9f0a1fbbc3564e8e07d493663cc7f2b234260dd7ae7fd7f65a9975fa790934bf7f3a1694f4c78f2e127cc4fbe70eb97519c8c253a87240b644776dd08b0eb26ce4a9f4634def84470da095e8468eb70f00fe606152ce5a8902521f2f5e4f6f604148d93730f6dd0f5160fd08da8e690580d0a287026a24a8b99d88713194a134785b10125f94789b61b9f3ce06ce4384cc89035808f3efa50fba409e3febedbd01113483cbe959632c24566f55ad67ec76f58fafd8fcc6f24a1b31fdeb962e162f3931f6261005dec0c370f02b66e10d17422ac1e09dbce0482cff590c7ff1135199f7ca03ad0822c65275f8b6c6f1e7052a427540707e081772326053e18bf6d0407d68310444a54390063f6b20ac7980b26d455e38dacc2c82a0be0c303de40c10b6d669137e6d2134a54279dd45b9f95fce541033e3aa7aa7acbbfcc6fcb282aa82f763df3026bfbf1cd2cb322ffb856413457a67a23cb2b0894fb648db0533704ec8cdbd82e0f44c776319996eb64383fc8da3a37d8ee812a68c12d09e1d0046d76166e93e8b8ed8ca4ade39914e90af44b0a722c1e646d367850344cc4e3d80d1eb236dbba51184acb211cccc4de3be4ceae02601019bb118878c1294bd9461631802a94d6cec3c5c76cafbdfad0c44d2ca13d4a79e3c9359bfece2a9bdf35ffb58c62c1d898e66f8f31bd150b36d48054e481bd5fbaafa023808e3bc723e985ab4fa918ab97b033069cc101c77360231be87e4718b68a1705784039de1a3e70838743e36a0fbbad0364032dd3d671f160776880c27e19f81e9025bd58414e1cf607309841e414f1d82e14e612eaacfdbb3f8ac1d9d94510406991e16056b16bb90b8dacba44253ae6a2a24475cacce69aab8e6efed2c8c1ec3e92cd892421e3bc7d4def62558dafb374dd2896a90e3c29b70c4164366c32b691ed7afe25c652bcf6d31fd4c5bf7cd78a859bcc8f5e909e43a24037f0db518fed1e457a80fde52d232ae2d803d8195f04b07538ac1f766aa1f1291f79b2546467b86c1d7c0f5dafba3db99ec3cdfff5843924b899565f5f9fa08713168e02c6a65067c539e198b062200e0ae3713dce757e8ac82dd3e9519b7a9c7f7245ede9e33b7f93ac60576a4ccb5b024412a2ecfd3d96ee358665aab09d751961203d6f216bbfed6e9659aeac0cff0974b672ec0b8f5c77a3f9d10b2afaa5eae0a04893e8ecc0b6aee3c94e1cdbfd510cb2760a08708f9d44ff265a647c722006099dd19e0d0d0dd649a02ada13d96e9183bd3cdd1019ab57111cd8032db4675241234b472dc964723c75ce13e8edeedddff0230c857101b6c95d49f4a0f1c9017b47034a7942c66d17d50e3a6274eade44423b871cbbf54c4e2083af6cfa1fcbd4ee59cee0552393615dcfbe4819fb0372cbdc7c409df34f83572c8413f0835bbfe4d27105c1819b9de136c292ba519b482426d3eb71dd1f43b333be0868eb5005fd25915b45a69ced9a900cf60c1ede7cf3cd1cdd201eb86d365d2fe5378872022db467cef815be949d0c21324e400ab3855eb1b7bc015e8591551620a0c2a02361dccd9259166864eaacd64dd0c8a53a21e3ef57561e3c794ffdd984a6053abf5d4bb7b05e2b7f591e835708ec36d7f6cb3b59c77d0f31bdbde070b81874bd33a3b907aa769001cc190b24c3c36d84edfd12baa1680e090f548cedb6905d40054b78c243403ba302e83470f0793f606f4f40766cd7b4335cede1f41bf49edbd6c94e1876da6c111e64c7ea0979fd52c46fb8cd39c8614cd1243a2e854147abaed6a02c4643a9e8ec210607e01133e571b6b31dca3781886a42c6b5c76f18d8ab26fd9096d0f633bf0b063dcdea56ff9a255b97985f942104eabba977de676dd7dfc4d21f05de085108baa6cd4b56b4f8aea58311969cac64acdab0f74b59231c65e09c48185b64a38217a663f604477080846958f7db4fe0214b15762630dcfc86481292e50110b1754e9bcdcb033d47ec76c3339fc3688fe4a449930ca78ab28aec988be838c1dab51ba652279d415f710fdcaa888439eff13ad18b4456200403a8a244656fe4284a547fbbf5e0da8347d7dc994c68381c831b4689bef97d96ea378de949ac6e2c83179d0f3dda3d1bbe2da46cdd068de9f78e7de69fcf9b1fdda0a47c6b2f39aab0332263bbf6d2a9886ee03948472bd7ad5b8fc3ad8e271b613d5350c8da2a8e24048073c7665bd832370b636c57d6ce38c7768b3d29d2d99e080ea83db9ecad9bcd56304c54749bedb73f80e1dc219c2817db2f5ebc707c26a31f419d9d7bcc9db3c3e78153e15061584ef498f1a91bca276488c8524547fbc2948ddfaa48b2ef985f0546229964c99a6a565957cbaa6b3556d7f62aebaadc93a52bca93ec02219361e9a5cb59fbedbf61a9b7de513e1bde0dd4cd3bb4cac4e7ee5cbaa0d5fc2a0fce7e19c51c12a701846ef006ce04e92404ce84f8afddb9b3691f92dd29e63f0586ac630738ef81f5f8bf2782bd32a0a23d897264c91beca9706804a9e080a0dc662b9a44a7d46fa03ca2aa14c0a570c498354e90c968883207e33d0f54280c27f083393f12c71215bde76ecf0b27bfb05b4552ffa1f93910b4448255f5eecdaafbf525c75ec71295644fa84d90c1f7dffe7b56d98943b4caf0452ac53a1f7f8ab5fdf436959bd2140435d3d363fffdb0e7497f6efd92b7e4e8ec97027646fa642c184055c30a43870eeda08fd56467789d9134046c1d66f663f8c078768ff6e49283dd6603227646c538b96c29dcb9f77b54c3d176dde0f51b84bcb17aa7df48c88e130022e31d59c69a9b9bb5cacaca15d459b9a65a3b3bbb08041406e36d9b898c656168648abeac9ba0b373ca32940919bcc1c1bd174fad18d4a7e25e1247e0f3da93555586534f56574190e6b79f2091696503b6ddcb2a52e59362bda06fd9c6daeffc2deb7cf49f6486bbcc6f8b03ea607f36dfbac2d92f458cb0b35f0ad8991c23acc80072dd03c14196873df6d8239d4eeb284735e2735044908400d86c0bbbd41932576d67700f01594a27212ec10177b62bcb830addb0fb0d5337b83a855d965eed9950c498d18182c21e1c34343464dadadaf6a0b7aeeb318382576124150ecfdb6326649c7346df4b929a76b2f9d917905b559fde062173f74332bd9d0ddc726b398377406f6b639dff789ab55ef343967afb7d743ef35f8a045d7fb3774d87e7f237184055d92ede8b1a40270f8a7423309c01ca7befbd877bc199181b3905414449088000c4d849d3294b15764645b6cb1b1cd87900c2c8760b014e5552379427745eed6945410111ca848c050b164ca0b78710599bd8f84145242ca874e8d0980efe301ab9274cc898f7c723761fd82ff15b1287cb26350ed01fa10c8fac3d28127a3bab697f8f75568f6599e400f3db5d17c64e73bfbe97a55e7ecd28c947805446d72e19f59f273c772e8bc31c1222cce9b1f3206d6764c7ead7af5f5f4b89c824faf86922e3be85206bab2482039482ee275ae66267b8db53d5fc2a7c10b575f6f68463265bc7d59ef67e091ea2d80dcf69b3214bde7e197407534b0183000ecd1e39a9885accc8093b74042e09cb4242e120441c1c03de2dd999cfc1d5c8e86876598a0c6da82851edb17bc5e7121adbc7fcca1795b535e4d8f9cfcd48645aca25fa749a75bdf42a6bbbe956965e1cf4d8f450f05e5dab36d77c9f07d9ec08c6cbae1b71c98e7879c07338b3ddeddbb7c36162196cae01f1808a24c4098e7b2092de6c7704806cb62b22cb30da33ac6cd70f4effa7c266cbfa0d3f595a0f5b08212bed52a2bdf05d2184a1301c300e8da028b6deded14a754206d6b45726f56bcdcfbe485454b08ada5af3133fac127d17b6bcdeb5907af743a304dff1dbfb98be7d87f96d34206df9f99e6f3cecba090bfaa57dc88d90e6ec97ca8d7044c181db898ad071ac2c4075d17385814a48dabacdc9647237f3bd01d3ce70dd448543b3b72764291068e50c5fa23d65eca5d99e5cf652b5cd060fb2815621ddb0feb010542b2dee618b5a70dff5dd6fbd2151a2b2201b1cd0f55d04237b07d0d1e8854b0e4e598a743497790ffc4a3bbcea1c927ce1550a24b38a3a71c79e051c7cbfedf7d36bb40eae58c0ce725dff7981b5dff55ba31c1f3df4755a458bd759bd2ab2ddd86dea611a402efd221eaca147c0668411dc63067ac171290576c67c270cac40aa512d4bdef654101cc461c5849171db65296bb3c143d8ba6109cd0f604c766c170a631f737164bbc8daa7138d363e7940b5c28864fd748fe57575c967478f1ebf03cfa162cc4576fc4a64ece82fdf1d3eb8be8f7e0f89a4a073c7faf58a6a636e8e3492994656d3f62eeba8d99f651281e725951c52afbcc13afef08039b6ced545c2c40d639ff9e7abe6fb1cc000c66d0e4998e3915e000f3e63bbd0156cb68543ae3ca1c8ce98efba2160eb9aabab137f1e3b76028e7e1592a5d3668bc8d265b319ae7b38794070c06beb5cf65ae0e201ba41d75bc10164296bb365fd46101f6c31ec071563bb052227fc1b4e31f2840a859185c9c3a87efd86202a5635e6c2a570d4c8d2252a6a8fcabd87a4aea4c7f13def19e8dea0062b00d52199de6696e8b1936fcf0236a369fbc92dacfd377f609915abd151cd7f89163ad3e75776a5ef333f3ae157550b04e878d6a90251e8869307173b5308418615024dfa9581d3d60962687575c5462c351695a564b6ab64c5843ddb555809e2815b25885796610c131594a5f5835e40e494150e602b5105859be1700ac7282175bfcd878aceae3038d82d9369d4222a51299990f193d3b68da84c685f34bff205769e53646c72d05da2bfcf986cd7138053dbba9e7981b5df72174b2f5c6c7e1b1f681976ffde2f3de13a1e12874d3d54e846003be38b008133d68e63f2a9e77d15da190b02593b115bd6d1911ad2a74f9fecd8aeb02c4d87c66d67eced0959d20b170faa872fe3304c64f6cba2c8d2fa51373885632a2d574f0ba8b41b8850a30d645422ccda812d9b37b78d13e9684e8591e9688068a0357490fe79a6153e5e17ebd85595e3dd50d9b58a0dd8fa9b929f458fd27bdb0f7fd17d825bb36f012a1ae8ece3d664dddde6a71c84618479b3230fdd90b23302cfe136b6eb7c0e6cb4d54ce46a375504c1aa8203ba0c36555761674a34db55121cd87950111cf006ce04e140cbeacc2e00434af7f00563f7b98f13607dd56c229c4466752a40456797bd87e3fa8df4f91dba87d73a613728df1fc047969e4015e60717f5e9bbf7c0f483c452c11972dd5bca56989fc2014af4ddebe027b04cb2aff96d09a0b393a5defbc828bf773d379732f7183a7540d73ba9ad3f3de9b9bfad36bfb12316eb76094aed8cf91c5c4614ba91e501f0d82b1cf6e95822eb786a3b14db1921d8eeb1b6b2b2e68f4b972e45301218aaec4c08edc9c50382d610e6907057b424e757e5c992c76f783a7727632a26d1f93432d68e4271f24e2393edf0b20a0738eed192c9645ea357fb694bbe4047a386b50c8740238301e94d20d09e971cb6f38c8aa4f639f36b4f206bafec55272dff20c04637151d2b587bed81f421f806395121d3b09575fef511d6f9f0134cdf864a6d7ca16becc971cf3f7a87f931072afaa5d30046111c3827d1890c2b047468f5445f25721ef91c869d91090e20bf4da79d76da5d51d919f3a312bf810aa56c52293b894ec5c1302a7483a73d3d9dbb4bd4c22d1c67e4e4a3b438e400cefd68e39389301486172e3c60f800a7c2cd33be280cb78ec665bc5444a184e409d35aaaa7ee95f8353d52c149411535d8b0a6888eb6bd8169dbe7b1ae7ed362ebe0e1c8bb1e7d9275fce92f2cbd64193a83f92ff184cef446a6252fb86bf90263c6b403c5ca76fde06600b9782862e08cbf4369e92aa23cbb19829d31df0587ed1e78f3aff9f3e7ff8f5e03979454d81959bfa122d893c97601f0a0e24859ba5eaa5fca0607d68fdb01e164236140d1e4163fc6b611e1dfad43ac65950550a1302e80e7c16e7a810e2c2759e68cb94435210363479f995e314b4be85872e80b6c5883dde88a894c2acd2a5a16b2decb7fcc92edc53b1d2d0832eb36b08e3f3cc85a2ebb96753ef56c3cc7d55d409deeb671cfce79dffc98031593e8c8f8580a060318d51c12f3bdc1438863bbf8ee302263a58c1d21d9192eb8d84b4c9ec4297641a1c4cec8fa0dd91513e897aac7ea656db668bfb4cb52e039f29d7b844a8bcd21b676bfcd07afc2841c1c20f32df84cce8ea66242868c01aca9d0cfd69896d7e64e789df41626325ddda7a225db96b3ba35f7302d1dbd03d55b5a58d7cbafb1f65bee645dcfbf442dced5749182faeaf6949e29da243acad8b9faa5879de15272bb01546184718f0246189b57e54c0c09d9ce88a29dee810a63e0dda29c7646d18a09e1f604220a0e7acc464ccef21218921e73119c903186e808a2fe2a3abbec3d7c9416374210f2a0f1c9072e252a6e855155a2c2f2b7febdd8ddf458be9bc3e3b971380cbd31bf091f99749aa5daaca20d4ba4b6b38ad6c59195e875e2a5eb9fff669df73f64cc84d75b8ab2dba85a68daa5139e7fec15f3931d711826c26f4b4da2836e34343458b33d8b30b68bbdda0f263adef86442b59d5164ebd06171eadf7f8d2f0a200eed49c8eb97d49edcfd92aeb79ca2c073147b38da15aa3662ca71ee613432076328737f1eaf3e8e3510425218f39de1dcf18fae595116ce8e16f5848c2fcc6cbd379160938d7ff0418571384c711d6aaabd9d32f7dcb827d1b58555b62c609d0373a661848ece279e324e6d4b7f30cf58bb5e8ad0997e7bf3f6c1b7fc76c33b79ba6bef97aa8cb08ae080d700ca1a6167e01c20384050fc15229c0a67200c3bc30b0f1eb07ef556228c6f1592ab565f5f8f132e2d59ca4efc0a79f2b517dcfaa5300f8088cd969dc7e2f41bd00d511f6c3508c18d312ee14806079876fc43eaac769ee2a43059e01f9b881019bb0e23a0b3c76942c6d5a76c1c34a44fe21e8de5ca360ff4dc95bd7a153ca75d25e0d453adee9971a26b1b4bb62e63a9be5342cde033db77e8a917ffabb5dffe1b967ef7035827f35f4a10babe22914c7f75bf57fe92378d1ffd5265b60b4c9b36ad240da0407000ddb99208fb4318d7856c6702c183071c64f04fa28f8d4f3e90b4d90654075ae021aa6c37fb1ca6cd96d20dd9e0403670b61821c6dcc676b918a3ebacfbe11e9ce304b5d451739697a9e8ec22f70800081c67d0bb21761332c60daefc0239f682de315959616c375b4c749163f76ba3cae67759af9537873306afb377e9ffdfe9b8fd37dfef78700ed31b11b39536a8ff7f77cc334fac313fe640640b4b3b6000c9905b0a867e293b1ea9626c97773cd2ae1b40405b37910851a8f1db45b233bef0e101fb3a078950656db6e1d004646987925d37ed3cd07b6e7bdb13e790186fc098ea4904bc4a5b5d6dcc40973ae8dad9d94510506951f6dabbfb6d2e4896b19a9071cacce69a64523fdff8b60092d5c59d210fc79e4915ee26152d0b5862c3a3df353f2a80fe2135f4aca1bb0d9c366cb741b7a496affa177d57c2e9ba095d7f74cc738ffcddfc940315061046d8de2fc900723be690663207865b7010d0080f211a893745b433a2807d2ab854b7bc62a21b70aa21f5cbc0f770f64b157e0337cb8b9c64a31611e1507fc4df6feefea8a6b3f3de834369fb1341d9f3a04296ce8ec6dbc876a53d7eeff669f464638d7ff0014af1c92adfb9764a91c60e6fedc156ea6432faff96bc37e79e4c5abf803eba9e455e18fa36bacf5f3319ed94a143064d1d3664e04bd4de865cdb58f512a66b528165d4a09ebe960475b5f9d1093703c89b1db965bb3c300ca0f9ded00d5e234cba217d6892a01186b3c45e1cd87e360fb27646c4d615b8070255df325439dbb5e056bde0ea536ec1016fbf74099ca5fc0682838487d24a35b288d2eeb65bcd8e4422c1b555a21d6144c23ef7c07218ec52659deb0ec4b1445557a37d814453700f594ca42b163081ae1393d502b651478addf1ec9a635b860f1d743f858167d285d8172110327a664557aaebba2ddbb71c3a62e8e0cf8d183af09fd457723294039e7da08569fa9be6c79203497107cb68df19fbe2e3ae018a472528306038e83acb70881a61d9ecc84537b89fc36900031a6144a19f224a856167781180070c376176bf17cad9ae09a76e88d86c3b0fb887accd56a11b080ee2a0b446d43263c6ec16eaa41858dd12538571025b510eef7edbddd1e256a2ba7266730d3943ac40f08571408ce2635ddda06732aca3b18975616959c0364e67d8bfcef865e6ef9025b5913e6cc8a0a729dffeb4f9cf9ec864328f34ef683cf8f26f7d7dfc19a79c78f3237ffdabff516d9960cb86e2084dd7ae1bf7c2c30f991f73e07468d04fde7e296b84092a0c604e12226067dc0c60d03234860cf7a0fe277dd0421182033c1326fa7aee196297a5c2f6e4ea536e7e83b75fa23dedcfa122db95b1d9e081d7663b0314d1402bcb030059d28b1e07a5b584934c321c0fc6bd59b7acc238af0f0838f6ecc96a5e5168607804075c0fe254da7dc7759c5970863c2119e2c96f06a83dd21d1d86630f32c6fe09f4c68666fd1b4ea51d3a74f05bba9e398dfedd9a80496dde453df71d7af3c3b6ceaefd2ffff6d73f77fdf5d7bc877f43672fa4b43a4b60f543c9813ac88b63066af79a1f9d8832dbb5e03480514ca2930c9c71500c3685c971ee45b233390860eb50fdc41a4eafe1ab1c9b2ddb9e404fca76cd8f81e0b4d9e0815396d2d50b428e2cedc1815423ab989061672c93d1565167e51a530d23120e788fbd888c71777a0ed9b140e525aa6f9ed43ba925d885e6476f90fc2ab0235d48487774b28ea666a30c8fcc3d2874fa6bbaf43bd7fc6df05ae3a303c377af7fa232a1cfd432fac1f40cb3f44472c6cea601870edb7df08f2efafc390bcc3fcb1a8e823f4c99ef3afa9945e6c79200f5d3d59964ea22cdc3307a45f4dd9f824122db350023ecd40d7ae1e2c1a91bb246983370c6757dc8cee4ac8e29a29de1059419434cae3777da6c45b20caed8843867bbdd9f0241c970b4eac0d9ee378c1b9b8dccadb4aa85934ea7798e51550289e000993b9c7b2fd9ec081d4d3238c82b519d7d70722299a540fbc86b212c7fc3ae731d8d8de4d4777266ebdd4867b407ee786bf07d7eb2acafaf6fa62cfe4d4c8e1b3164c07b63c7263adc64492f811a95fee855f36d4940d792e74df8cf132bcd8f4eb845f45c46940c87db1c121eb86568bcba211b1cc806cea41ec981f48a605e182a929080f740d68e92bc25b32c54d86ca79de969d96e50c8d8992c54540efcfc86f10fb24aab5038589f8bb252206f1046d6ce8991d5d5d543b31d0d884389eae2a974d324bb52635ac17a7b85e2923c1c391c7ac78e46e3301811e819fdbdc52bd357323611fda0784aab25ef34dfc51d299de9578d7f6e8edbf6b20642cad0b8140c3a1e826e70d9196776043bc3e94c32046c396b551423b0333cb66e3e11fed1f98c4a6cb6bd3d214b7ae16acfb867bb01a1dc668be8864b5299c343425669150a27db400577555205d9e080aedf2791480f363f660da070470378032d1861bb2cc1c3b9a7f6df9b6e7882f99527f0fcaa96bf194ebdb9d928c1a3142f8a7446fff7a61decb357fe85ed28b6d2fee590891fd25f7b65c2b1013dd06d639f7bf436f3631e9c8683de73eba76c76e4d62f79db53417090971df11ae15ebd7aa13ab71bde1a5f08a0c84948231136b1c9816a87261a1cc42ddb8dc37074587e2321dbc88a2764e0be38a2b2e0ac54058ed97c2785319d9d3a4a76c21dcd9e1d11d29cb27435c21595fa6ca6196bf17d61ec212f290764e786536f6c62e9ce2e3484f92ffca08c7deedb2b335f38fb974dcb5597a882008623cd74cf6c380ea07efe8c56d17203b59a97a0fd02e74020592a5f4f2ed29ef6e7103480394698377026681d1d1da3e97514dee38b28ec0c87ad43548d657b39e7f73b75a39ced76033c50bf8c7c385ad66f98ba91c743926eccc318a29630f7f085e0b1260b9b9578424524ac283818944c265f4ea7372e18376e4a97e806fff80059aa38b0e14f7fba2f935a3ef24e62d05aa6e705631ff9a4a56f810159e188562c69c3bef0bae451a83ad33b3269f6fb3fbd9eb9f0e13787b44671c80e9496ae4fccec603514599e617e1d2fe86ca19eaa3e79dcf38f7bee07917d0ef3a3c8fed6797b8517f98c0903e041a59d010fbcfb958f1e3dba7ac78e1d7b527fc7ee888908ed4c5040e638d00abbd3659d96c83efa3970b333369b1d0808b4ecb64e24db7539af43980740d1c13052b244bf94f51b5e87ec583f12044ec321c25801a5c5bdc0e41788b023942b383b7c1e64150eb0dd63596363d7bc0f3ffc906b099f2a0368ef6890e555871c31299148dc64fc810fb0877c655d2d1ec4fca63030db3d8de350c9a1a7db3bb866bf7b8144ff5a474abbf4f7cfb4fde6d565c352224aabc0a1594a3ba33ddd55c334f4bf90d707f281fa68034beaa78e7f61ce0af32b37e41d3c111303c89d1dd9db93de4b1b401123bc7af56a6de3c6f55fa53e7a207dc5bda444b19d3150e01ed827e43e224c4c36fe50812cddec0c777b4adababcf6940df64cdde092838a7ee994a58ae0c02b68b5180d0025632e59c70ed07b5cefecad7858637db21b54288c2cec3c643299711d1d1dd896928791d04a54492d1928ebaca80deed8e1c4536d6dac7dfb0ed645af7a9a8b555750b3756598feab5fbe3ae8c8affe71d07fde58bb471a7230cb7d8181ceeeec976e252a3fd8fbe54b6c27394fddcf81161dd4c7b72713fa51e39e79ec03f32b57a89844672fdf9ab2e46a0f7bf916e02d85bbb5670463bb46e974c58a15bb51d71f479feba2b63340001e30990e63ee5979b9d96caef640b027d39e84508689e885bb3dedbaa168ce01972c9cfe4fc5b0821f0f16b38560575a85c2716b648c1be59c0e9785b3b38b2084e0601fa211dd6f8321ac091999ff1cdb4bd7d867cdaf3d81527ca2d0443a924bbaabcb98206738f556c12ddd1dd0998e93b59ea218ee909b5f39fc8a05d68af46ea5e57526aa95f6c9ce4e8c59ceedfe143d485e8d898c76d2e8671ff33d08c419ec4196f4c22507c8d27c6fc8522438a0ccc4e221db2fcd8f81a0ba3d710f5e67920d0e5a5a5ac692bdc00151d63305450876a610f08c682f2b3172da6c45edc9f520213934aef6740b0e6482565159dafba5886ef006ced68ff9018cd98513f2840c789182271a01bc0a13527080c936382dcaea807e5065845d64c9da596a2add0913807c91acacf29405b2728ca5b73736b14e72ec185b57065d7f524bb0636b5f39ece45eb35f7a4781d2e66568bcfdd235dbcde8b1d88a96fa5613fdefbc312f3ef29af9952bdc0c87a843333f2ae997b29503157646c49940961f7ef842755757d7306a83b1b27686f77a40f01ed88409c1b3616754b7a78a848eb73d150407d22b2654c8123cd865598cc03990432260ccc4622ce40919f026186f47066aa597112a8c058febd1e8ab893e222a34ee1eca848cec98cb75e7effd1de2f160e31f7c50d9abced84fde0e6c3a03a70e32369d1190af1728fb5ca1e9ec1b75b35ffcde4df7af5c73e34b2fe96484a5c7765dc6af948ced7e6bdcd4b524846bcdafa343825d32eeb9c7e6989ffc1068828d0fa4fb256419c61c12e31f02c24f378222db2f35ad415fb5aaf19ba4e3186fcf55960270da095e08da29fc1126d3a1349f566d67544ca21369cfb84da2030f4f3df514579ff2b233e6c720c06f73cf3928d86915442d6e6b13fd8c30ee8dec1d9dd480acb200820a13143852b5e0b1aa24cb9c2854340234df1bb2cc666899a78ec704b0b3f1de0fd88d0ebbd201c8d28db1f41d8dc6a6333886551548bc68e337758d9d5eb77df01872ec7fedfe976ea5952ddfda3334a05089ca059ec34463fffd208ecbfc1fde4701ea9b94b1b393c73dfbe89fccaf3c0159c625db35df67fb25577bc0ceb8b4a712dd080abbad7befbd8d186a1b4364f1140421db193f20c1c084ba76057686d766e74195dfb0f74be281ab4fa9b633e04145f542a05f0a55d5ac0b3ce0c6980aa52d047452cfcd6c8aa830160a282dcaf2fb77bff5840a597a96a8da2a3abf423fe17ac6bc1dd8b406e7a8773435759fd0d6aa66825c0e74fd713dc14ea9e9d57a64af635e785cfb4cce734652a272a2a0d2eafa4be6bba20263ecf4ffcf8d7dfe9127cdaf7ce16284b965291b1c843487844bc9fd7423202cfd6c6e6ed676eeec9a463a8e83a12cbe8a0189ac7d13111222693b836cd745963c50ee37e87d20876683926122bb9d29b5fd017c3bae933111e1d819e350da1d44c6119d2590b503300238efd91321c9d2ea68f488e7996f7d81dde3ba5a5a58a62ba55c0e74bfd78993736bf48acff73ee685a71387bc91370bcf6984e9bdb4d266e71c04453087a645e2dc4912578f1d5811e8843a8fc0994b96b2c141184698d700aa0e0e162e7cbd96b10c26d271ed272f6b67246c1dda0c4382cb54ac98505d55e3d54f825b70c0750fb4a76ce5208e7348780267eb879d703226201c19a5dd4604e79ef7b74554180b019416730330916db2f1c90118405959fa65bbedcf1c8313ab0a8eb5032ad6a6e740d737913c7e4f2c1ed26bf68b87d41dfbfcdf12c73d8bc32bdc108ad2f22a4c208796cabc4f0d846ca85868d698fec571cf3ffa5baf53deecf07068dcb2ccf6294026db05204bdef6a4e790de2b5c363820e43cc7962da92a529313e96de0bd99c3482038ee01de9f1b38706095bd3da11bf4c22507150e4d3638b0f74b15ed897b88540e246db6f4d086ac0fb62e74407afc4a526921840da430b685525c9ddd13bcf7e0505aec3fede6609538b46c67079c8d9c669982cbdf54831858aa33fd0abd32731039f52f9353a7acdd1f1e113d4f8328515a3f59663166d6e4f5f4e2ba245335488e0b748d1d3bfab9471f30bf2a0425d50b67bf24fde4528e42fd3208642b076e0690d79938b3dd96969603e82d96b8160d92c10192a1b57dfaf4b126cda80a9ce9854b3f550407f67ea922db8dc3b082080fb23ed87a003b42525aaea8a5aaaa6a0bbd5893ea44104634ed83be444711e5c8d4d9d1641d9a5369f5b7a756d263ce363f860e3da37fd895d2ae4c75e9c7d71df3e21dbd8e7c09e7ad17049456f538b98ab15d2fa5d5c09bce1e343f86087d1df5cb0bc63dfbc89bf46081fa053d87f2bddfa308b4a83dddc676b978703180524678d3a64d986d8a53e0a0cf8150643be386a5151515eba74f9f6ef40185edc9d5a714040786dfb0f74b15d9aeac9d910d504c5bc72507053e58b318b0413a6af1505a1e68d459b793d2589913afc238154e049c4a8bed298f26b24e89733a349128d4d9c84ea56dddd67b7fcafc90698406baff9a4c9afdb5a5553ffa977fc9ccf8f21f06feaaff092f2e23f1046d14b76185a296a808dcd96ea6228571779c8d1d0ae8c7df6d4e24668d7ffe319e99f92aaa6a39b214e9972a26d1a91edb5591a1ad5dbb1633e431cc556b7c590011d8192732747dfb9021b556955361b6cba55f76599afd92ab3d9c815614d96e8876465896223e187ec3124416a4b4611e0c1308080eeaea9ad30d0d6dd5d4d1cf1389842515c68080e2627d3e4eb5c3b1a1289149ef875c689de7755fd8e79bc4e72cf3a35290cc5ed775ed86f59b32d7fdf477357ff9dba201abe7af6b493ff5d453bc1d2d679da7c85a53a29cbd16c2dc93398bbb0e9cdcbcb53d738ac6b43dccaf94813ce19deb329d97cc7ceef135e65781a04296e454a5f70ab7f3005996fa5ee1e061fdfaf5158d8d8d08942f270a74b680ac9d11b0314e688944e24f43878e7c65b7dd7633b6701691a5ea35ed22c19e8bad136e4f40b45faab4332a6429ba6f85250800c2b1474e2aa21691920622fa71e30eefa24e8b7389b9cf770fc3b173dce348a2119065314a54c466c173dbb9a1eb0f137d3193d04e3ff1a7e907aefbc790cd1bfbf4d1c143a16cd709b4275d67c9014a2b52a2928da64522faee896d9ad22360a91f65d23abbebb5d6aeeb8e79e19f9bcdaf03c143965ced1146b6cb9b1da9684fd9ecc8294b64bbab56adc23d4e2712cada45ec8c1302c14113d13be4c80cdb2092713b7543d4669b1fe394ede21e81a1a05f4acf2171f31ba255358b1182929d78549efeb364c992ca743a8d1299eb2c742f38958e17924a8b8b17932c173964c9ddc874bdd5c86e195af37f8ed837a1256e343f0a831eaf9d1e793eb17e73a6227d41af63e6fef1a63faffcb06aef2fb649eef895d39ee8ec8a764f2b5aa6f9ed91e32971374e8993063df48e0e4dbbe0aaca963bd70caeebe809d96e5c76c3e3dd890ed50bbb33316589acfd2b44c3888c7ff343c476c600dde395eaeac4e3d3a6cdd828db9e006429db2f4b39dbcdf64b119b6de70190dd0d4f5437b2ed6931425f2a8d9c700fd9c8a9bababa893afc5be6c74050a13092184d3c1c62972535307767b7cb121dcd2ddb4d68c973ccb7623096b1b19feb097668ed80c66975c73e7f5bef235fda68feab8af12be9654ef64c133c843989ce15556d2f939ca4b7eed399fef44e3d7dc28f07241e6f6b6b4b976ab64b2f569f906d4f200e63bba62c31910ec35b58db6edddf0b31b033e0a19d5e364e9f7ee83c91f624f4886c17fd5255b68bf7a23c84348744b83d8d374e03189709198d8d8dcdf4d6f7d00c3b54289c827bf4a17bccf8f7bf9fc0ae75a119e1cc6b07d712abc7981f79f106fdcc95693d734cddab875dd7fb9817ded50e7a27e784187bb007083c87f48a09186159c3213b4cf4e08c195d198dbd697e1402f5a1bfafefd22ffef9c0ca77bcdab300a40367d271e919f6aacbb7b206103cf00e2b386d9dcda161bbd91944d684582fc4c4ce007a4585f63cb56b4685cd56d42fb9da8378709b7ccdc5834b12c2c58347b0c7c58387cd0e0c0fdde0ea14769b0d1e0ca17894a802038ca92eaba0914de3810d514e23e2563a5ec85e0f98f7e8452258dcd1d1f1d12bafbcc29d690691e5359f197b2eb5fcc5f473dd1bc5fb80b2c64e4d67584bfdff929af6b5da635ff8f94d7f5ef1facf1e58b51987b8987f66478f2951a918263a2151bb07c98d7bd22219ec868c9eb8f2bcc695df5f3a6290715a97886ee039b2a5364040967987b2147368c38431914fd6ced88715c083a261227cc62654371115dcb826467666b5a625ffafbaba7a431436db39f95aa4aaa662f2b54a3b63da3a6ec72c397c09480d5f8207fb8444b4675295d2666f1a82d222a3c4b83bc6c32c013ae1549828a269dbf598699b6e6b6b9b9b4aa5507d088ca0b2bceefcbdafa79ff3ddcf9e9c7a0b3dc27f12ba7e716d63fd0fab4ef9d7b33fb97f4583f9cf9e0869c504576757e0d09429eda11d19bd82695fa41b19f70a049dbd9c6189732f49373c63575a1159aa3c190b3c9881b3ac2cb97850616788c21adbc53d6f26829df10d9663646770d1bf7bf7ae7ceafcf32fdac6db9e2e76a6e8c11e518f9843e2123873eb46187348bc4a5481418cc9966ff34a1a0e1ef07e2e51a3f12924a8505a1b20d343c8b9efd7fd31188296a89a9e9a594ffca184e88a8caebfd89e62976d6b62873eb563f0e975c7cd7d55fbcc9c40e3c6e868aadb93b7dc07a575f64bde92a3b35f0a941cad32f4f64e632b64acdc28080aa8300e7a73baadeba41b066a0b548c47da654986873b3b22c5cf694f45e5dbc0706b4f113ba34296e6dbac2cb346189b4f4d22aa313e85088576a63991482cadadedbf51a63d01dea10d82f4583df589bc61227ae11186b49d21e43c470f9b43a22767ce9c6944aab8a9a219865cc20163014aa7c87e4f25723df52c8c689a172e3cf4a6172c757a8fc828c9fac1230a756de4ebcfdfe778fabd8bcd8f04bd911ef97f193df1ebb5db935fbbf48181bf79f2bdbab7d7640edaf8cd6ff2952de358a28a3adbfddba6953bcfaced3f9e6e86b3bd5d413d8efcbafe32fdef73e39e7ff4bebbd72cea0a29dbe5d24fa2b0b25d1e48951c0939fdd27c0ea94cd356091a4884a392cf24b2fedd0db27646d6c600b67b607bee3b9b9b9b8d03b682c2c3ce70dbecac2c45db330ed9ae8a0aa55d3764ed0cc05ba174b375599b6ddd34e61332b0d1c70744790792c82a1c10a2d21e4a34a5fbad2ff8266468ec64bc902359439cde9248b019bf7c3573d4acefedb8f3fb0ff737324c3432b527d78390c228cb7601b33db9fa149436846c975b699d3ca49399ef53bfc0c95b79a07668647ae6d2ae81c9d9d9dde63c742330c0035d67f180f68c20db55b206dace830a3ba362c584c903bec344ba9388ace774830a3be384e43d5653c0c37bf64139db35013b63e7212addb057d508694e59fab66772d2a449497c291bb514614206d69eee4b8448db828f630d849083835e44a83abc40e4d9684e59168a42afffe2de93355dbf29ad57fea4f7ece71fffc9fd2bb7323632a1323b928d42c183ecd82eee219ba141962263819415d87948dfbdece3e6cbf699f0a8ae6b7de88126509357503b433ecfb1a47eded8e71efbe76e0b1618f2427bdab3a39e92ed0ac8d26d0e09370f2a2645da6569b375f8b7cf109d4be43b912e667646a7f7777474742090ece8feaa3078ed8c1b429a8fc3750fbb9d015466bb41a1caced8fb256ff5c2d99e4e3b63dc58247272895ab89596337242e6bea2fb6d3754288c2c0a287d7f220c27ec697c7207f77af2ba635ffc71edecb9cff739ee59638733c8d299a1f146d3a4b4391332a83db93b9aca0c0de01d0b040fc4bbc583ea6c77f4738f2e19fbfc23178e7bfe919ab1cf3da28d7bfed10aa2e3c63df3d807c474b6f3e545d351cb123cf0ca9290931d99b2e4ba078cb04c7b12dc323465ed4940d60efdc4b9109e88a19d59409f97d22bcf64dd582c19030ff67e29a21b6166bb01e1a61b2afb652014aa1c24ebebebb562474e0491b15d44a8e389ac8964051c6b41a850da02f7c03fa2d280bde6b18d2e265be540b52cd1c871c87665237a429a33ab3078b047c28ab25d6e032899698692edf26668f67ea9a23da1e36467b87870f64b45ba917d0e7c879d07b1dd6c3f7ce18598d919f4858f3299cc2df41a386b8fc866e740959db1f74bd5d96e103875236673482c24e80b6ee1d823273432454e5cbd9518cb19dba50806d717bac7262294a17076b112859105070f2712e52d5bf39025af118e75b61b1079d1342f0ff41cca77c313a968b9c892db70c8b4274145b62b3bef2194ec88b73d9d76c6d19ee388a09718eef384ac9d715e2f02c73d32c4c353f4dad4fdb1309c7686c09bede6e9464fcd760b01b294b533ce2aa9c2392439b01e3420c090d2ec088c71cc22c63593a9b38feafed80dc948d840c84a8bb3a1b363efd91f52bea90721f26cd76c4f5ea50d23dbe596a5ec78a433a2ef81d96e20c445963e2b26b00f0526d15d617cf280ac8d0042b033cb887e45b4def85418b84139db25a8d00d173b23c503bd97ae5e78c992cbb9ab505ac9091958abbd1b7578ec1666dc430411282dd6cf62191f226e63c675188d5c56da6ea8505a5e598207d513bf7865e9e1d0b8f45341bfcc0bb444da5345b0e76367f621c26e74be07c4b838562e84606752748fc7e8f509a29dc63705a04a96f6f61409b454db19916c57e5f25820ee81b3f54701e066008b1db574555454b45107ff3cbd3766b7aa70ccbc10505a5c80ed7357112d20eaec89d9ae88d272ae98c843180ead54b35d42185598480da0080f05ec4c1d11c6dab19c14ef5d118263e6860b0f189a7c8808c71007614879e0ec90651028c976e31038abaeaaa990a59f9db17ea8104869a5c676092ac65cd8e9a78fc5a63058df9973d04950a8505a099c4134cd39e6223b7e857bf08eeda2a3b9b427170fb2e3574e1ee83db71c64c776a1b47659a25fde28398744e03942d91f40762c90b73d214b323e961c4c5972f1e0b433667bf2c0cfcee0be98943b9b6800be7083ac530642b033b8c106220ced056a17bb2cd19e2ac67605ec8cdbbc071eb8d93aae3e41cf217b6892f23924e673a890a5270f9641f18347d4c2c5983da2c783896715e3b48f3ffe781829cb78a23ee6bf05420c9476105d9f6e6a6a7a75cc9831c64cd71865bbbc1d2d270a2d67bb39cfc1d51eaab35d111e9ced0959ca66472295a090ed0cf69dc031c9a8fc61dcdd15b28e39243b832fee277a92a86062e3a61b9ced0948b7670c8689a487dc9cb22c95618520ce1d37936e6495c259b870613575f689f416672f07460c94b68aee514faff3c68f1fbfd49465e44658a444d51395163cc8ce2111515a950e0d50540ae76e4fd5a553c57606f7df9de85ea241e6e73cc8da0840b59d31afdf4a742bd1127c852f7c108a6e14dbce10dcfa25d77338ed8c886e38652962b36575033cd8ed4c10ddb07ed00b0a1803700f2ec6ec7076b4a54b97b6a552296c407148f737851123a5ed97c96450a279f5c20b2f6c92e9ec9065140e8da05469cde7e05218150ecdc500461e6889e886cab14085edc96d8465ed8c8b11b6f3802adf9d44381fc073373aa78ef3220c3b43c04dfe49f457a21df8c20f2afaa5eae04045b62ba21bb215cab804ce22ed99d78b1cd09ce3709499708d7583317ab11a9990e61c6bf0e2e178a2394438a0c5176e0aab289a16052e862371ca217b2a55de663736e06f709d5f3be06ffcee0104f91b11a8baaf8afb442587b064eb06fc16500c5989a0d07db13b1c0c97dfdfe01e30667e271b16fa1dd82028b1e791ae61386645766623d18f89eec18702c8b1977026e48cb883567a91b1d96e15ad62fb0dafaa5ae006417060df514f4496080eb2e3fde001e3e4bce3fd2eed0939147c0ebbf0f2e08c9cc09882a885ab819c518b2d72c25290a94458f36edcdf0b61282d2f1cd7e303640f4363a72c9cdfdb09803cdcfe2d4b80dbf77602dcbe9725c0ed7b5e02dcbee721c0ed7b3b016edfcb10e0f67d189485dbbff110e0f6bd2c016edf6729ab186eff9625007fe7f66f5902dcbecf12f4cdb2234e84612314d9193882e5445712150cbe9c363b8a52782967bb36e0b7a5872fed5535d9ea05306ddab4c0b2f474eeceb20a84c35bbe7576344565952c0f38210e335ea713055ed222829094b68c32ca880964f533443b836a0536ad7993c837fb8543730e6dc8ce2151344c54348766424970202b4b4218436e81efe1e5dc4b654206ce499f4634d2f8e40259c71c86d296514619f181ac8d0054db19dbf51f11fd91083bd3f9dd34c7a199363bf23924b2d9ae4870607f0e111e084a64a9620e8923d0e2e2c1b8d00930462f76c7af629c9c7bbc838481729a0134323590f3e170ff1f107d97286f694bdc9456e4f7a3c201071c80081aeb8c59fffe38dcae1b2b57ae64efbfff3e7be289278cf77ef8e10f7fc8fdcc37de78a3f12a72ad13f7df7f3f5bb122e720414f8c1c39929d7ffef9c67bea676ceedcb9c67b3f403690114006284f1ef5f5f5ecacb3ce32de7ff0c107ecb5d75e33dedbe1f59cb817a8b1b1d1907710d8f9090ab767bde0820bd85e7be52f44c9f204e07976ec2838b7ab2410a2630e0c8f7b206b8763bf9e680bbef002b25dfb5aee891327a68a35b69b8502bf91f31ca27e23a6e3e45c3c386529d29eb93daa1bb168646779c86742c69144371361fcdd82535980a89556e4fa62030e8214c4782d04389d3beeb8c3706c6e9091970a591d7df4d1ec8517b0e74761e0795f7cf145e33d020c38dd42c0df4056c091471e99e724a90fb3b7df7edb787ffbedb7b32baec8dfca3cc873c28942cebffad5af7c1daa9d9fa0707b563c479020018e1e7f0bbe8206207183ac8e876c67b0fc0d33fc3199ced3b07b3834619badc2a18938e622fb0d574096f6a492201da0f0ca52557b5a915e16c458ceae4664f4c0144f6f75db218a5b38591e0008c77ceb867944dd56d9072a9496172aee514cc0c8c3c1d91d3b323464e9700220bc47360920bbffd39ffe14c81196e10fc89414d8a255abb05371375039c9b64db1e1c513806a07b2fcf7de7b8f3df6d86339159e5280ac6377838a7bd880f5f827105d4284b329dc0c8af25d1a4bf5444538340ebfe106b733efb9e40059eeb4edd248fc44b61b5e8e730763f6d28e0063889c72a237320a5c02760a078d5c80071c018b5d9b10e51a2801a58d1d9c591fb2b1010306180efcb4d34e33fe1d84f730e2c85461f083007f8736094259b8fd5b96ecbfebf6ef590a9ab5c701c87c115465098e13cf70e18517e60453410329b48f531e6e54e87e6e3c4d9932c5b8bfbd62837e01275f6a0e5e0690851d223622c03d3061f85a224caacb6e9b6b5d440e4dda66dbb344519b6de741363800a8bf715d0f1ee0d0cc8f59bfc1d52090a59d07c8925e78ee91e7980582036547575b372148472dcec84985700234323a220e5200f1466aae2892d2c60630dc59c70e4702c37dd96597f99680518ec575975f7e798f197b8d235019819cb3b8f4d24bcd77d1018108da1f593bfa0aaa3b009c7f14d50511c4413f3978c0865da712fd9ae82aa2038870b18afdcaa56db6d36fc8267404ee210155d9aef93e5b39e0e1c135d0a217ae8ee5224beeb1fa2c0f76e7aedb1b595159854b38cea805c209d8c8e0151bda2c2931a58d05ecd91bc67661b883027f0f2a233cc099661d2832e33865c7e82bc8daedd5057b30d25311818ed7128d21c27af7db89be347af4e8aafafa7ab297f30d47c05b8676cb76451c9add6f0838b45865bb780f1e1405075cedc1391ced861c1eac37001e0aafb2250d51e148560e5e23858357e26a54274acd31cb223b2b1ec0986ad0b26f19c585bd3a82368b1330b1ce1ee0a1ea1367c8eab8f37a1108f2808bb02ae808bafefbcb962dfbfddcb9cf1df4f4d3abfb0a38b49e9ced7207398249a5850886a3f3e00cb4729c3b3a888a4656113909540ed6261289c7e9757bf7c7c00a6341856357718f62c29e65a1045c463c61cfd6e33833dd1e149e7a2a2ac8f14418fa296b6704b127d1191d1de97b5b5b5b2f266732893e07be711cb35ddc4351b6cbc543890e47e7c0ad0a93e3dc7143301645d4a2a0a3e993260dc6b8fbab4499289caa22a52d2aecce3dbb86b98c78016db4fffefb1bef515d89eb1c07fb6c7a7bbfea498859708052fd24ba1ee3f03f21ba80c872547e8863b66b2e9d0b8c30b2dd121b8eb6e0161ce43877dc9037725211b5a8e86868e471e30eefa28eff287db5b4fb5f82230e4a1b05ec196158ce9d022f431685282e4302d49f5cf97312fe2e6c60d21a96996511b4e48d896d6e3c3b49254a2d3854fdfc4110929dc10cfa9388b01efeb744e388e0f85de1b4d98ab2dda2fb8d30b25df2815c0de20c0e4c1eb8eea1a272e0161ce438775eb8094780b11ce1c83672454505b601c35a292e01cb220ca52d36fc8c33c679e130bca80c397805407ffce31fad000ccbe21e7f1c234ff144a96e64131471d0f1023c0c27fa1cd19f89be4404279f73818743e3b2d9d457dd82031ec436dba5b75cbe47812ca58715ec3ce039b28196f5a50062392163cf3df75c4d1dfe617abba1fb9bc2e8098e5905b094c90b7030d4be9ee407ccf4c692a942149731fffbeebbcf953f27e1ef8a0194e1f17b3cf2c1124527bf6ea4127efd276ee0d571153642f61eceeb3d80a36f71dec675443f22c2fec7d8710d172bc9765d4ae15c0fe24ce8c87ee37a9e7b488f93e339648303d5c3d1aa032d61e7ee8c9ce2322163e9d2a51df41699fb334405f98983d2960290d553fbe69073c7322fc039915129487129eb820f37fe9ca4925f7b0074fae9a71bf2cd060f08ac509ae799259f5d8b5e8854c23ec4136744a19f61d88802f7d89de834a29f11dd45341af656d2a18595d07139450f87c6c5435c8615ccf7c2c181dffe00d6cd79a1629c5c3638f099900107ff2011b6a60d15a5eed8eda554bf0c1c8e0c63e2768a8b33ee09b0074028bd43be186fc76e7058430ec789e18f383b5032bae6bbd21b7ff7431c74dcc943405411ed43f465a23ffcf7bfffbde899679e19d6dcdc0c072b92ed4a97c2e3b064cc2fdb0d02f040bc3b03142e1e9c1567d1e0c02e4b270f42cedd19b5a8889ca891b977e2b1f3e0229cff11fd8308e7bebb6257c8b80b01ce248b522aabee2a40f0959d4407c71ed70d83ec7d07159db83af7383866153c70de23493ccca46bae6f6a6afad1b3cf3e7bccead5abf34ed12c805864bbe0217b8f888283580e47bbc992dbb9bb452dbc911318b337326fe444c82bc7bb08075b66c1b9bf657c0a013d21388073cfee2e86234fcb0e3e7ec0583b1931e33ddac8afc21215ecf301ec0163a9230e3aae90873d88cec86432bf6c6868c098fc78a2dc9b7b4036db25287168761edc1c5a01e4396681e0a064f607b0fe2020bca296c0f0080eb87a2b472363cfcebf12e5fd5b4f70cc2a8072b07d0636cac165c40ff676211d32dfc503183eb097e47b4a1f52612364efe1bc5e048e7bf4221e26d0ebd544f7107d96c873d91ca020db55eed0c2ca760b21e6c3d139e072eecea805c2e1644c794903f7708b5a4c7412c17321edc17b037150da3801655f7bf68eb3c74b6572d4ae0264c3d9ec1d993b286aa0ca83a57aa02c304bbf3c17a31b61d80845c101be840d4527c2da78ec557f10516f22279424742ab35d2064bfe10a0a0e727880ffa3172e1e6483031e1eac870d00b73117de46563e2123c0ae465b8890bd2f373e29404f72ec00b277388bac8387b3c7f19d70f4f68c2c0bccda460090dd35ad10faf5eb67dc270895830a6ff064ef681b37f93aa9d00c7ce7dfe3774198dc873e82ac3d0b1c13dc530e118a838e172938184584b5f1d8fc06e7c623abb77ed82ddbe5b5d9aab35d15950391ddf0e8ba1c1e0482839c8ab3c85c353b0f780e3f1f9cdb7b7c8088815eac469a3871628a376b7771cc5dc6bf04849307423aa080d181bf4a74b50a85e969ce3d0b187a94e8f7da6b2ff39bc240408060c06d0db6885cb0140c59aa1ff0ef703480b32d4481e026bb190ff5eb40a565fc4dd6c9baf14dfd9dbdfdf6dbc67b0443575c7185f1de8eac8c909507c9c6edcfeefc4d3b3f41e1f6bbf6df08022ce3431f703e7fa9c2ad4ff1f6e538d819ceeb61cb7712a1111f22fa3bbe8bd0666711a5dfc8424370900d30c0031c338fff4370609f0c88e0c00c7202372aef735851801fdca21699c80928f2840cd409ff8f3afb7a7ae5d7321b54286d5c8199d928b56227b4ec11a35ec0bfe3eff0f771d97c6657004ff61e1610103cf1c413461084a57a080a7b8a637783ac531541047606b6b52fd129443711dd5955553576fbf6e575d923656394edf2802bdb75033d8774c599f4a398c3d10682f442b7c8098d1c9831d5510b78e08d9c085a2291b88194046b3e47e00b154adb939cbb13289167cbb678cdae89efc986bc8c5d1b2a9caaec3d54d819053cec245a4c6fff545b5bfbc2f8f1e317f366cc94d055945ab6eb0225fe6fc18205d825d080f91c5c8112f150c9cb83fda15d01e10c1830c08a18e87d8618e572aa44c9112346588d3c7bf66c3c1c97701a1a1a2ce1747575e9f7dd771f5704878eb66eddba6d994c063b37ed1f85d2961adadbdb8dc951a037de78c37a5f46193d156e8e95072a6c84ec3d14f1800d70602ba792bddd6bfdfaf5b0f98b8802dd0c36bbb5b5d5f22ff01bf7dc734f51fd0641a3c004fecb1008eef1dc73cf713955a7ff3bf4d043d3bc3cecdcb9b3c2cec3ebafbf2ec5036419c4071772ee39c241c4f1d4534ff13490c158af5ebd641a99b90887cbb1a3a3cd9b372f31706057e3962d6dcdd4d967d0d703bbff351854284c196594115f84e1987911331ef00633e8b11e7e2ad168a27789da88fc18cb7368e454b96db63d38104de8ecc181c8b0c29b6fbe99e3ff647800448203511fecebdc9d11c3b469d3a418531139d17beeca013a1a4a1a8307ef95d9b469d3ba96961674d8c3f16fc65f04806aa52da38c32e283309c6a4f090ee81eb0bf8388f6233a8408e5f9ed44cd44795060b3dd123a6ebfe14c2a45fd063ec82495d9e73083032e39d865091e78aa17859cbbd6d0d060dc58366a016318735110b570f1e0ec68279c704207f180da3222d1a144be3200e2a0b4659451467850ed544510073b5380874a226c6109db89794b38c36305911dd2363bca6c370b05010a7e3bd2e1685fc70646264d9a9414899c9c65150887b71cef0c0e4484e35256010f4d4478c5123938784f84a1b4659451467c108653e5bd47187626441eb01945b6540f27bf840836356fe297a26c572aa193ad388b04072afc1f01d507615916cc5aebebeb3591890c44398cc98eb90808c7e0c12338006d365fb1a0d78a8e9c8883d296514619e1415647656d04a0dace148187ec84bb83892613b5f6e9d367735d5d5de790210df4714864d9aeec38b982e0206f584164385a7658a1a073c70e5437f2effdae64bcc3211ca9e0c0a5a4810d1b3e229a49845d5b727b36210c8529a38c32e28338e87889f3001b8b63650f241b3b62fbf6ed3bbabafa6f696969494590d00139c18148e540e5243af010d5707441e7ce1bb110948f93a391398383a01332b0df3cc2cc7d8910855a90551640c53dca28a38c70108653e5bd47187626a2e000ab8fc6d1af1fb46ddbb63e5bb76e5d9f4ea731e92e3064133a0549a5c183ecb0425c86a3e57b9603604c66e30242cea601080ee8c1b84a1a761e80025be562e63cf654be94c8d8dc0608436965ef21a9b4e8a4f7d23d9ea0d78d44981cd34ee48bcaca4ac8d1160476a5bbba8cf90a5e409084fb67a1d13d707d96119d22fc20ed399808e702b8f0c08887ae207daa9e08c19b1b0f90476081565662072f838fec3dfc7870ca00000fb83e416d5043edd246b2cc1490a513cee7a0eb0d1e7a11a11255103eb2cccaaa20e81e18c60a2a4ba72cc0eb51f4fc5fa257647cc67d22d60d03a5c80310b3e7405f68a77b3c4bafd8baf249f33b5fc4c16f2038a0971cdde0ddf0869e23679b5ad90ddf08bc3c58b2cc6d554928108ed04e3c76388563363278f0bb07d66f7e93e85b44891eacb4589f8a4374a074af13f9767e0f5972294c484a5ba83d731017a5a52c426a972ad5b2349f436a9f6e8e3326f0ec6389be4cfd12ba86e0d2806cbf0614e886f92e3842d04ff35d70a8e60150f81cd8e10ecefd5ea2d544aec9846add0078cf3e11f41b39889b9db133228b9c723c181329abd0f55603099455f0db2213327610616fd57388fa5067cdeff11c90553840f61e1e8f00830a038b60069d063b4e79b6918a12957de66b14252a829265312aca7d591e446559600e49417804ce81011e04c723c1f714a26f50bf3c935efbe14b200add003cf423307a2a0fb276c6713dd6c6e394394cba83bec0ce761f3df90970839cc9d7b27686905638f93a2894f83f9576469973773ae628d6263a0d208413b091c1670b51237556383f94840d3e7aa0d26296eb1e4458c682ac0d6bfef1ec390823d00a61526441a80e0ecce7e0728a2a74c3253890e241457b0634c2b80ec7cedd487412f54ba9337d43d68dc070de8317bb100f3544c3893e4504bb837ebb8cc8f831050e0d0cc4cece443189cece03a0c4b97b44f45c8ed9697c142d3fe0124ebf7efd56747676d6d1db71443821891b25a2b468f70144c71141f930d68ac92f86c3706bcf08b25d378716b9d21631dbb5e054dab804ce05da137f0b3dc239b73f279a44fdd22abd023dc5a1f1de43f61980309e83171c3ca0ef626e1396cc1d4404678fb39033d42f35997ea9c0ce28afaa8107d90aa56cf502b2b4189284d29286ac01040f2291d3befbee9b6e6edeb2a1b33303073f833a6b6eef2d8012545afce18144d8cc074e0b593cb2f984caf6c43d64b35d288c02a5e5e6417556a1426923089c7997a6e2b760c42f263a9b683722ea96c6e5c228b26eb8220c1e78ef21fb0c4044b2c40528d54f223a229148b4b5b46c6d1e326458f3ba75eb22b1332a0267d9a4320c3b03594a3b7737c678a316e758609419da6ebb0d6fdcba75ed476d6da943e96b1825abe10ba144951672c33afffd89f6a8aeaefe78c488546baf5ec38d0b7b4a894a36db8d93d2caca92b73d9dc1410159f6213a89e87aa2d3885021a26ec9dd2f7310916ee441968f3078284159a25a089b33bda323bdfb8a152b3a51357df8e187b91cb38a3924aa03e728ec8c57e5c0fa4210d291935338604cc4009211b57890c98ec8b9b1debd0734ad5ab50aa56a94158dac037fe78712575af403ac53dd5fd733d3d6ac695e9bc964d651449a5291edc6a144d59394d6fc18082a6419705801d52e6c08f57d2238764cda34782f71ddb0508007cc5bc17c165fc8f21147590af2809b6062e544ba7e72434303e6397d4884fdea0b4295df90099c3d7443cace083c87e770b4947397cd8edc8413c5d82e915be9742d11ee339108d9872f9c1d9e178a14c67cd70dce7b40df8c8321e83a6c443190140e1b516ca3ef82dea89ced9a50101cb829ad74a0c52b4bf010b0aa763cd137888e25c2f8aa851ea01b7ecf803dd57f4704c78492b3a7ad08e3397811431e2a89079cef81619ce9449851bf95c86f0f8e5804ce04e57646658552d8b943382ed9110f63b84ea970441ad9c70062f7ba754430a898e9e91995f740a51d4cd74f20c78e9dfb200b6c42d28a7ff0830287160ba52d62b6eb09d9c099e06638b8e4e06c4fc8d2111c60431a1c01fa13a2ab8930b48392ab851ea81b06cc7bc001610df74d448f10653787c2c63db017d64521f21018b27204c2780e13d544a8f64c231a4284e364617ff310a05f1684ec38b90a3ba37a38da6967449d3b1872cb7603c3c9581cc676cd46b66747e860af1161962776d3ca99ed0bf460a585e1c6b8184aadc846b03ed555d94ce439136a4fd5cea4206290ed1a3cc82aad64e09ca71b8ab28aac1cf01d86acce23c2ce8ec710e564eb4048fdd27c171cb27c78f000c78e0d5aee26c24454c866011132f80d447050987f60240521f1c08518cbd20e543f502d85cd45d97e15917da96e219b5d102a0267157686ae97b175f86dd82a8b07a79d1172eeaa0ca05d38510407012764a0d1b1d312b6a6dd93282783efe14a0bf9c240a172812c1e8a87e31d312e96d3de21391361870628ca76b97850a5b47659ca06072a02675b7bd612a17c7a15d11788e0e45ded886cbf94d52d20441ede21ba85e82d22bbddc05c9d7944af12a18a3180ee9153aa57a89f811107590201f980dcb026fe3022d89d4d446b8832214da28b839de1f29f417cb0ab52168074e4e434802a22275e03c86984d1b930f68cfdb761cc0c14b1b37ba2884a8be0663f22187694e831d688885a77eb685194a8542b6d14e7400751da0008a3aa060705637b19119c1a9650a2bae38a307483f71e21f2806cf2174438a7c14db618d243f6fe9f4422b185ee81c9aad01fdc2cf78601d0c365e905fc311229d85b6cb8b55b656565c36ebba59b060c68267d5073a4ac223bc3ade374bdc54358c3d1dccedd19d147b1a9878ae02088701cc0781a26d9c1b9c1c9e775565e94a0d2a2f48a523d761c1b460499ad2759661cb2940af6e87d5c9456b85f8207454acb2dcb10aa6a30b29f27ba8808257854738c7ff7421c7583172ed783090c4d617ec15fcccf7ec84c98306121c9f39d4c26b39d9e017359b0aa20a7fa57083d51969c3c608863125d33a5a1a15d5bbd7ac796f6f65433e916b77e4aea061e22c7cef0ea38ec4c43438335bc1be67034b7731f397264820464b45454c28968f94176ab5638f923a8b34249ad1e5b820a63408007f41918778c894da3ebf76b6adaf2f1962ddbbb9a9a9a3a4f3ffdf452cc76f1dbd2c181bd5fc6610e89294b8100657de29557dee9fbc107f3f65fbb763d1cfaff233a9708f34e5096f7ed3411f5cb1c84c103dd038efd0e224c9ec3214cbe802c7108c8d0a143b7505bbc4d7d623edd03ed8b2a48a06d78659f43568e4018b2e4055d0f7bbb070549877774a4f7d8b66ddb0ee263057d17949950ec0c6f85b298c3d1dcce7dfaf4e9602c01c60264bb39703226221c8254704090cd8ed0a12aa9b361fc1de5365586c37c170cb2ca0248f280761c4cf718dfd59539a7a5a5a572ebd6ad99175f7c114b590a1e259b853dd052d89edc0e4d45b6ab72e6ab886e388303d10065e5cab5b51b36b49edad5953e9ffa0436a4c176a1c67d0b2106fdd2802c1f2e3c6018ea7e229ca888613a5fd8833dec9dd1a74f9f8e152b5660beca1b44eb89603b60433c190d430ebcf7909523a0f039a01f082e279393c7ca0c54501712e5cd017242f5909b80dfc8b17580809de11a8eb68c495010336cd2a44960529ab128820305133232f3e6bdb5a4bd3d8deb301e649d7015143d4c69b1f4a737fdfe61a47098e50a470065c359ec681b4fc6ec06109fe390edaa505a45b36fa57583433ff1bb035e7df5d583366e5c7fe1f6ededbfa6b6bc80da14ed8933160cbe822046fdd282021e90a53f48741b11c6db0bc1684f97600f8ce0dc7d9c40892397f1ef98a48ab90b0557e2f042560e4008b2e486070fd85c2c3b07083245f085d73c3875c3acf64ad91915c3d16255b5e07686dbb903f5f5f55ad88cb9c0cd00163d72224aeebbef94b60d1b962fefe848775247c336b5d6d9d441d00395161f20574c1a42b9fe0822cc7285c2c130e69d3a077818c0c0702aad8ae040d11c12ae80338c889e3338c030cbd9d4072ea46e7022bd474669f1131431ec972a78d849f74019fe1a224c922b8880ed898d5a9e27c23c1efc2d3279b483813064c98b3078906d4f0750aa1f4984e5ba1897c7445f9c1b6fff913cdd50515513f11b763b538ce16821e7be6ad52a2ee3e5c198b011066427d1999113d7734069b3e5db51a3c6b6ac5fbffefdf6f6764c321b4f84e51bc6bdfdb00b282d36a340b90cb3a94f2042268fac04e395b8c8907918c19e88d2da27d1d16bd19596a0a45fda6519e039d01e308a471161f6fb1fa83d71c00b2a5146a6aed808074218fd92178eebe12ce0d8b1490f9c7010f0b427fa2bcaca1f10a1548f2c1e4e2aa9f8397aa29dc902f618d553241520044918fa30a0c2ce10c1ee1b8c0804ce79c181481242e0b63342ce9d138670ec8cc91ae120518b13f646566184710f2264a5504e74aebd893c970601b2ca029498d2421e50b819444713c1a954f6e9c3da1389dace0103d6d38d8648b72740efa51d73144aebac1c280a0efc788003c1ae72e7139d437418b527faafd5a82119615fc8f649409607c0760f4ca07d81ee713bbd62739a407dcbd92f038eed6299ed47447389fa130f70f0481a0c667a802c85c0c9036c0b12890388504dc57e03d884ac73c8108853dc6fc84ed6555d39086a674277ee2a8443245dd250b9fc00b04580283d2f23029f2845e76cbf6987acc294a8d24266981d8c4c7136d1815d5dda982d5bb6546fdfdeba7ef1e2558973ce39a74381432bb6d22a9ff90a1e42da1f008ee2602238f41b88be4784800bc6b096da93ab419d08a34f45ec4cf0e3ff251e20abff11051aaa417b4a5428f11b5b264e9cf8d48e1d3bb66632c6a15e583a8709645c90956589b7274af5d8c676065d3f70fbf6ed6d83060d5adfabd74a7ddab413a5aabdd02fd9a1604515ca403c84eddc4331c2512c3f28b0063a1b792344c42c4eab31b38883c244cc036482b90923e81e076249cbce9d5d9f6e6f6fef9c3b772e4a6998818c4e9bfb032e509ded8a28ad8a612267bf94351cf43e1ba0601d35f6379f42846357b145ec854438dc0567f75b320ea34ff022e27e69c0763daa71ffaea8a8b892fae87bf43eb0ad417b3a022daef6849d213e12c387b77db46a55f3027a86cd44b029182a0934af270c59f242f67a40f239a01358c98309779356af5edd77edda8ef9fff9cf7f02afe2019c76268a3d5d64ec4ca8cedd697c4a79f94181ec08cf84999ad88a12e3cdd8e82527e256ad3025aeb4e87730587bd2737c9a5e11101d4e840c136d83f68291cd7b4867b62b5285e9895b58ce9f3f9fd1f5a81ac1a96347af33883e4b04e78e2c1dfd12f321721ab127f64b091e30c6feef6432f9f3542a8519ed81a122432332c676abab87b2aaaaaa4debd7afc758fc2b4498688700b8e0ca9c38b627ef3d649f0130ef017dc0e4d083298940a08b2d6cb18a07432ebe704b2a652bce8a92cac03c84e6dc55472d104e749b7a04565acc0a5f4484cc091b7e1863f061280c2fc2e0415669cdebd10771e4234a69c82cb1031a82a3b14470ba089ae094b0bc4eb84495858a608f28567348fef18f7f0ca37b1c4ff2bc843ea2e47e0511562ca00f22887285eaf6144118fd9217e6f590ff9b8944e2f6743a8d656a81dbd4c3d671b7a78b3341808b8976ff20c2f01fda12c11bfe2eefa163244b0b2a7890ec97981c0a278fc9a238710e9b07a1d28a31792f84527196b533bc15cad09cbb8a1295ec78a433381019ab17505a2c71c1661570f453a9a3798ec10745180ac38b22f0803911088ab233edb17e151ba820f3840c4790c2ed9838b1aa7dd1a286eababaf599a38e3a2ba520d82b39a525ecb574e9a223172c98ff99f9f3175c4ecee83a6a0fec20676d8d5c0861b427ef3de2c003807b10bd5c5393bc66e8d0116f363636626ff8a050d19e85fa25ee8521020cfd6193286cfd0c9db04af54e398840569671e001f0e123bb367e12116c0d32790450397026008a2acedc0980acff0bc5b93b8503c6c800720987c82851e1830ae1146bf981091c8f3a9fa8823a1aca41d65ed2a568007d942530387980cc31ac818978381d0a13f1a690133b69d9b2edb3b66ddb56b77cf98e3d5f7cf145b42f321a0406b8a1ef4dedfd52851116e9976ec14100a5c5383926c49d4ef4ad4442bb289361a79308b1be771cc91272b2268c06816c9b86d12f79a1a85f6246f523959595dfdd77dfc9f3162e5c58b0646b870a3bc3918460eb6b38f9b78930710ca57aa33223db1e61b4a72c0f2208c003e486ca20568ca0b285b93e58a69bfdc3bc408bb73d9dfe4f6088266f9e98c870b472e7ee96ed46911db9946f8b191ca021dbeaebebdfa27b60bc0c9da96f1c0c60892a2ddd42c3122e6c923381e8a44c26036787252f584b8fb14894f691d1a08c0f030d25b66760394aab78c544507805074e0161390f86273e43f42da2b388f09c47911c50d580b38761c73372397540b63d01d9360d8307817eb99d5e1ea78cfdae2953765b3472e4e414a79d8962c504324d9c71816573c8e207d173402f2cecaaed09047c0ec81bf37b30d707fa8400c938377eead4a9c900ab4f3ce1e6ff64833dd1e168e5ce9da0b444651ac0628fabba292d370f23478ed4d7ae5dbbb0b3b313e3c5703e814aa65914b1b37b22664a8bffa15d41183bc364198cd5a37c8f9dd55025f99cf919ca8bf21bc628b7565757efded4d4d4a7bdbdbd83da3645ed99652a1033505a1593e8d6ac99df77e1c205f58b177f3c64c386cd7dd3e9349e03e7e5c3917f9de85a224c843b8e08010cca88638810b8f42339e4cc9ae695a56c7f00c2e813bc50c0438aeef13439f63b8f38e298f79b9bb534af9d5111ecb9646841fb149cfc3b1515151fd0b3e31accaa47a9be1cec9908780fd865ecc5b17f3299ecd8b66ddbf6a14387b6e13c0051bf211b1cd8ed0c78101d8e966b1107c01809c3ea5c3080d4d9b915062729e13d8483a8e5c61b6fe479388da22f4bc0b23c0013274e4cc9f0f0e4934fd6b7b5b56137b01f1261b39b8272775316de0e1fa1c258888807fc012e42c96d2b5d9f8dcc8d4326e8facdf4fa0e11da180611636f1f1321f88232e2df5101e8defd82b16dd49e5a43c3d2de1d1da9ca9a9ac14dab56ad42c006478baa01dea3bc8bdfc57a7e7c87aa01e65fc07963ff83bd880f94cf115063a2e570e203937ce0bc01541bd0c7704fabefd911912c73e0bc1e90bd4704cfd14ed7dfbbdb6ebbdd74c001073435343464cc1513816f025b477a6d65792276060900bd580996a89d59bbf6e3010d0d6d47910c3e43844011016d60a8ee1311b4a70a1e3ae81e9864f70439f9399498bdb174e952e8756038db93909e33670e8f73d7c8f7182709e203fc9f48bfccfae05c8948823a9a738911d7f89502e1e405078a94163c04be87c773e0334a400f10c1c1bb1af02c7a88c2c485075c94bd513bdd034a0b870f078efdc2d1be28fb7f488480000e19656fac7cd842d7a30a904c24120db896682051f67a9476e1cce1d4710d4aa5e87370e498f18fef9ae91ed085ec3c82727b9a28320ff8c325d48ebf1b34a8e68159b34ec4ac6940da08f326216aedcc7c367f3e63e48cf6eeecec44050b932b3133bc2054b72750627dc280ed7ae8eefb74fd5fe9f56ea26cd0ed8b10fd8670bfb4df480a70aa218d47060684138399cc39cf81463697df81e04890212223046189571e62d6d98511c673f0c2bcdeba09f180a816d93abe83fce1d491b1239bc658364a7470ca288323183b84ee81b1b989742db6d03d925e6138719e00c6fc6711a17c8ed23926ffe17bcc0b80b3c77c0b4caac4bdf19e7bb7b12c62244b0b25c8037692fc7f5555550f1f72c88806ac2717b13330e49ce3e46e5068678c025386ee83cc133bea616f75049cf807f439cb2edb11467bf2de43b63f008a9f03b282ee43e7a1e7a8e2a12a5768039c580c47dbfd9f12e78eceae72dd2e104570a04269ed410e78708cb9e07960607072111c0c1c8235933e0bd90eafb8b31be8014acb0ba30dcdebd1278c763279c0bfa17c6ebf39beb3faaf1daa65596e4f6ee0879612ddd4af5fbfbf9c70c209dbe0d801e8386f0220314e6e40859d7156496d7606f781437a9a08552804b0d9c99739906dd330da3346fd12d53acca63f8cc85ee5cb63d0d99e2a564ca8d8d3458573c7cda4a2160847c5261074bd655ca130229321b23c984a2b1539f9f080a517c8e051f2c1da64eb9a3014861761f01023a5e5421c65c98b307828a1e7c07e134f127d93e8997df7dd372da3e32a2a942aec0c5d5fc8d6c1b660973d1c7a83a1a3c144a85219d795707be640f61e059e01553ec80cab572612c1e1bf4b9403677b8a4ca20b23a954e2dca74f9f6e4da213618c1056293c30540f2b14e001f2c1368858af8a920fcac0bda8a359bf2f8a3014861761f0a0586903a127f000c8f251c2cf011d7b82e82ea20f28db4d38e6047139551861152b2664ec8c5b225460a931d6c6631b5b94eb31df037bae1b3b67ca20a2f6cc41183c78dc03d50fcc93c2b6ce28d5632922f6d7e854517196ad047925952a9c3b23a7667478558c292c510542184a1b7057238ce360ab4b44d658af8a31326ba9136f67955516200c85e145183cc8ca320a1e80b22cbb21700fe8d6ef896e259a47764627fdb6f4336b00cd8f41000672929028ec0c412411c204529c47ff08de932c51a247266f1f6a0a0c675b88208c3ec10b011e90b92311c3063875959595cd6d6d6ddb860ec5bc4c354757ab1c8e56e2dcc78e1d9b2007ad29622c8c12951ff0db512a2de4b520994caea1ce850811cba3922a3a7b5969bb11071e4450966537387940391a15b16b88ee21c2f8331210cbce04c876f3e0951d991f8300bf2d3d7c2939b6ab5322f42e3dff62922176d1dc8d5e91c55b95d72090ed1361f429591e3800f9631bdbfde937c737373757b7b4742edebebd2d75e2897247caaa080eecfd528973bfe0820b8c53a978a3d0904ae1912bad4070a0d36f6ed0f58e79e9346ba14e83f24fce6625851047858982074042710d9465d90d593902613c870f30c4f52cd1af889e23c2296f79e3918a86fda4ed0c6f8552c5d86e2a9582ad5abf7dfbba0f3b3a32ef517b601507caf5c84a0ba2c8ede98a307810b807865147653299e93b76b44fdcb163c7d2175e7801131803df28a47e69f50925ce9d1862ab56ade2928e47b6cbad3074bd32e1e01eaac63bcc8f8100a53de080033263c68cdf4a727ca7a3a30333338713619666a0a83a8e0ac30bd9eb81383ec7ae6a00659f01e0e001a567cc10bf85085bb31a4b971464bba2436e76b8d999a25728b3c101765fd3f58a9675ebd6610501261b427698388625049e8d56e4f6f4842c1f0a9f03ed81e068723a9d464286155070f0a88af8c2d92fd19eaa87a3953877018021e91255434383e5f8e2b0fc4085d29e72ca29adc4c3abf416e544ac5185c2a1d378228e0ab30b381357c4810740968f3078084996d0791ca6f203a21b88b013a1f543aa67329b4988949d1199c8e732898e8b07a79d31aba47026d849f14d22ccaac796b6d8a71e63f1794945b95f76c3e3faecda78ec7381f6c5b239afd3058bb2622212e7ee96ed4651a25219d1ab525ab37a81de82ddd1a0709895893dd2b31bafe4200e9d1d70de831771788e38f22082309e8317459225322494e17f4d84ac3de7f84e95d92e3e987686db08c761acbec05263dc0b5b30634b66d81c94e8b14ba355aa2ff7cb4fe0c303b278ac8dc716c070f648d0f24af5ce4a5058c3d1513877e5d9ae8870540707742fd54a8b7ba17360ad2a2608cd20c26614393d4b75671781acc2c4810740b52c55f0d0030d602004e00143577f234219fe3522637c3d8b10b35d1e6168f5f5f5c664637c306d9db49d0971a931f6044052017942bed952bd749f08a34fc9f22082003ca0e281390cd8b512993cda0ec31f46168ff62cd67074d19d7b88d96e60a8505a2244e4060f2a94d6a372009e908dac207a85089134666a1a11751c15a6072b6d41c8f25196e527f0e10393e65e26fa3e1196b9ad2772d3bdb0b3dd825091b5bb946fc3b033764046381f010e7e1e5115b505e6ffa0546fc8b3ac1b8181210e6c8083ca2bf65c68a2f64cd9c7c965fba55f7b16d5b983317bd422d2d9897a82d2f20e2be0de18c3f988088b2a11190ea5ce665c2f8a3014861761f0d0539e8317719065c83c18a77611fd86080ede75bf6fa743837e7266bb6040cace10e25aa10cca037e674d5d5ddd6be9741a0114d6c663bffabc6d6c0b218c3ec18b90fba51f30291ac7521f4ed7f7257fd33468d0a006f21fd8774168383ae89e2ec574ee602847618a1085ba2172a59518738163c7b1a5f3a8a32092c6d18ec66e53bc9d555659803014861761f050966537e2c083091840f4fb5f10dd4e8471619ec94a45b733215528857900448283c99327774c9e5cf7c1ca954df3a83f341321b140f5301064fb0310c77ec9c90396356393b283e8ba096bd7aead6c6e6efef0b5d75ec39e0c81e10cf6101cf825954573ee1164bb7950a1b4cee507116c61d94e3cac1b3a54ffd7e6cd2dadd4c7b01105769be26a4b598591551640960740968f3078909565143c003194659aee818396ee23ba8e286fd29c13bc06d00d12d9ae0105b60ebf9d938488d83a5563bb386467c284cca6f5eb53ff6b6f6fc71c204cb62bb88a07e8a1fd921b743d6e80846c6ffafd031a1b1b51aac7702be68a1474f26ec15ea1bd168ae5dc4bbd44654081e1c06f4b2bede2c58b13a346edaf6732faffb66ddbb6943a0bb2986c166ff1e785303a3bef3d64950508e3397811471e441053592ea697df113d4804275f48d7dc661173e957b16632fb218ce04064f8d2bed478f36696f9f8e38f115861a9e1534498fb007b03475f3ebaba001cf7e84bf7c036b6871321abc78a288cc97bdd181773b767519cbb8a6c370e25aab8292d052bfa21871cb29cee81832170984176b29defb9e1b21d3e84ce2eadb451f000f444598a40210f085431631b4e1d5bc8c2916c252aa8278536f5280495d9aef9517ac31b113b83e7909c7300c05679c9129bde606d3c822fccb047e5104ede7a6e40b65fc9f6294061bf34a09007387524640712614c1e81d47ca23c38db3368c53974e71e976cb758cb0f7ce056bde07a0eb7e060ce9c39b807d6fbe208d9ff10659762d413e5218cceca8b38f220829e2a4bde7b28e401734a9ea1f777d33dfe4eef571305ba5918764624db954d4214040779c30a2255d200490878c2da7894e931ab1ecb74ad73e3c3e897bc88230f2e80bcc610e1e8ef7d89204b2c43b4e42d3a1c1db673ef11252a42ce73c84eb001642b072e4a8bf770f22f102d27c24ce2bd8810211af293eda8401c1546050fbcf728cbf21328e0214db75840af77f6e95375d735d75cf72ae9060c5c50c426db954d42545628c183ecae9ba62cfd7840e68e2113ec3900f90da076cc990314857e020afaa5f9ae1b213e07da0b2b117066fca1e66704ba3b9cc11e8fdfb01a200cd81953e1544d87c6ad30b24a1b52b92f2ca5c5774b88de2542368f323d764eea2ddb596595050843617811060fb2b28c030f2290e4a195ae7f3f9148fc9ed4fcc7a79e7ac6d37dfb0ed82e5355031465bb5cfaa92009317890b533b2b6ce696702da6cfc3b7ee7d56432b98cfa00caf62839637890dbc7c4a05f1a90e5438007545db1367e0ad12822baa061756deda00cce03e0f51b613a776dd2a449d6840c916c57266a31e1b62ca6e893e85428ad3d38000f0194169334b07c089b5134524783a2ed4164dc434567e7bd87acb200b23c00b27cf4541e8afc1ca82c3d4b8efdb7fdfa55fd63ca94a16b376deac844510a8f20dbcd830a3b4394334e2e9208d9ed8c80cdd60f3cf0c0352d2d5b3feaeccc60dec400ea5358e7cdb5365eb65fcaea1610310f90d918bac7b42d5b5af7deb061c30af221dbde7bef3d2edf159a7387c2d83b5a0f2a517145c2aa94d6fe1c1c4a8bdfd9367af4e8b75b5b9be66732c6a43bec9864dcd37c0d04d9ce0ea8569838f02082309e831711c91293e550c27d98e81ad2cf5b29cb5e346ad4b8965ebd8687bea9871b9cd9ae8a2137deca819bad8bc3f0a5882c71a4ec3efba49a93496d496363ea39fa8c655ed8c636d0daf888fa650e62c2031263c86d1ac970ffeddbb7a7e81e6be9b3ef52501bb4509cbb8a8e1651b69b036770203bac1091d2b2bdf7de3b71f0c1876cd8ba75d5bc8e0efdf174da1025d65c629c27d0b9f1cececa8b3014861761f0d0539e8317023ca0d361f2d51f881e229a3778f0603874e34666d05af4aa1a514eb62b6b6708695e3b43503a27c89425d773a8b0339f544987b0a6a6747acd9a351837c64e82d85b1dcfb727119c96d56676c8f649a04475230fb67be0cd9e740f246528d5630922766af4d515f4cbb09cbbd6d0d060346094252ac16cd7c0ff6fef7c7fe43aaf3abe33bb9b75a98d8de3356962d9c8f53adeb89688b18c6319c88be61dafa2fc01f9179050ca0b201202a48004af009536fd01a555d416aa36209ab4346913429c12d77662b0709a6eecc471d75e7bd73f523bb3bb9ccfcc9d9b3b77eececcf39c73e7796676bed223afed9d3be79ef37ccf8fe727cab1cce80d49ebed0077ed9ab9bd6fdfbef74597108e53bed862d43c8c62cd20afedac5ab20063c2786158dfa34419e8abaca87e4eda9f497b421ad344f3c28db1263780eb941bfc8cb1da8dc1cf849856c88f5e64ec496381ef6bd21839a4a060d8b96dbbaeb65f6a7901fac88d35b1860c6c35646f3c1788b11b8adbe6489e0a0524d12a25b88b51c7f6efdf3fee13d06221ed4759688330a187fb90c1e27c8084b40c8f4234ae78fc9e34e6c4c8a8d93ed7d2b3cae8ec1111c609da67c428830f1c6460dfee17a571080d41bd3ea448bf5456bb7cceb4da0de467da16f269fd0c32684728b5a317e8527c5d5e06d6009d92c60d97f81fb6cda5db7563e006d0f2a36419186d456747a5b1b29e290fd655b57c49d39ea5047720c4a96edcb8d139a009ca18a2eafb705f01699d65b0ae2a72a445a7385b2ea4e1320e86ceb82062bb3456d783aa7567f741c984e909c32a83eb33babc034769d28f3878e649697f20ed0569f42b1c3ae001a3513541876ab757142d1876d243197ea6832e792e1527891e3b79a84619aa1f977ed5b16375c30070a327f42003bf4021c6bdf1acaabf5f1ae741b025b1964db44a0beec78e1dabb866c26590d6b5da15943944d52b8a1c87ca01f6405a163a71d2ddf7a541c08f494763b8be7e310d888130434cdaaed0ca51b22e49147f208d73e0bf2e8d0aad6df1cfb054bb25dd31e12443be0889c5cff4a04b74c5503d89df82f42986e969f5636c87901b3dc1e31d189e27b8ff963402fee2fcfcfce2fdf7df5f7f506a146b08619db51341b5db961c943444d51116a4f5cce8a9bc08ec2f4d4e4ebe2a9d93f38ef937b244de2195a917944118570c2869db10a92e59b3c1d40e01fdf7a571631b7fa70f155d86613eaa16aadacdca203f9759ed16023f53b09b48e5673cdea3cd673beaf2baf8db57cf9f3fcffd18ec8d677538c3f54e88941bc94fbdc3f31924449c29f09bf2f9dd57ae5ca96cdab4e9ece6cd17564b0beeae88a1da35480ef86ed3698584b42ae7e3a84b7e6ff5c1071f5c9899993c7ef9f2add79797c7fe636565850e44a06728ad6bbfd1920594411857942183eb3322d3251fe4f438e6d3bf29ed1fa5715b1b375c75e44a0c774c58240781aadd3cccfd4c8811ca6ddbb68d1f3870e0c2bbefbe7b427ccc5969f817b6cd31bfdc159171c31b4a19f83023adb3f2e741d1e5ee73e7964e4711dc63a976ad496b31ade03372a075804d19d87b3c33b36fe1faf5eb6f2d2e2e7e45fe8b832998df81781c31c973190e6a8396305ab200ad0c402b4719326875a99081f9f467e5e7bf9667b0fafd5bc9bfb13da7235f0daa44041855bb028be4c0e2d4cdac0c1a3fc3e96b7bf7eebd353b3b2baa3cf3aff25fd894204f2bf42f4d5873c30786fcf246e6f30cd5cfd66ab5df8e21b8235519d56e70d28698564006cbf301d0e5c99327590cc573989767c52b73ab2f4b63fb1c7662382dd55d199d7d44da06fa2c0315fa3bf2f997a57d697c7cfc6fc5117ffde8d1a3afcdcdcd11d07bc55056bbc97b3871dca2da2d480e54531be8d2d1cff0ddf8aa54060b3f938c1cb04ee345698c0431b5c3ea70e6e3ebbf974519dc18123f43f1b5237870cf93368695af998ed6332c485b2043bf1314bebbc501169016f23117cf160c8663a9dc38c79e2c9bbdab13d2d154fdaa84ce3e90a40d2803bf848dff5dda33131313cfdc77dfc6e73efde9dffde9962d5b6e48bf76e28645bf8cb1da355a4437907ec67afa32e767789f6621817f695e29cb02df145a7e68f909ac396e2943f0e05e50ed3a3b8e7c470b3144654dda10f7403b9216d9a8e8b9d3191232fffa9a74b46bf227b7d37158c554d2d15a7b5f17e43bab2bca244caf884106e0a04b1e7e5adabf487b4adaef49fb9af4cb13870e1dbab463c7273f841b21aadd7c7230c8d56e97c4b923d6f033ce1c6fbe87a13dd53e7b0d5d36afb27e565a732a90d66f6e14224619b2081adcadb3d02123ad33619aef6148da5e75c9f0d94d91e1ad0f3e78efe5dbb72baf572a2b3f5a5959bd2aff8e0cbc0bc17eed9e986044da06b49f075dde03db727adc096954e87f27ed6969df96c696c85bf96ad767542d864574c35aedba721c5dcecfcfa773d816a3a4dad3f07af033c8c71e6eaeb2aedfef2ffd9a533559255e97c3829fc3e267b2cf0816dc2d02dab092d62739c83ac090a4ddbfff376a7bf7eefdf9d5abd77ebab4b4c4b03d478fb2a7952d525c3fdbec8df53dad5994ddd97b45eca4ed05059fa73f304fcea145ac74e708e27f4e1a95d14bd208f6ccb3f3bb6dd5aef4cb61499c9d39de7c0f6488a5da751da1d48e92a24beb295487640f7dd74709abd5ea05e9dfacf3e1b0ad96a1fa5e10033f41fe19aee82643a8e08e5423d20a0c9283a24574ced591763e324fdab367cf3617e1314c4f2548e3c2108ebb7d5f1a77ce13ec212795ffa474d6d6deea082d594037c2f402ad1c4632603ff4caf645e6cf59a04485ceae87cf4bfb9cb457a5917861a3167b0f6be21cbada05833a4269911c647db68f0ca2cbc56a75f17fae5fafbdb4b2b252116eb02f9e40df33acf9e903238e273f152348708f85b4b154bb59c26849ebe3380ae6239d499b4f0e0aecc921152cc6e3da42aa4416e1b1ede547d296a4a3cec99f7c86d5b137a4b333c7d6b9f7e6a0254c0ca455c880eeea1f9667d087489ebe2b3f7f5964f873f9f94fa4a16f92ac9f4b5b1379271c43e26c951c84ae76135daafc8cc5d4868f2e9bf6043e7e465a8bcff6f533f7debbbbb66fdff2e5d5d5e9e725f162a89e226197349e5d7fc7b5a0e527b0e67859328408eea554bb3ea4d52ea20b384455471169354e18a04b9f444bece1624f7a62f3eac2337bf6ecf9fecd9b378fcbcf2f4e4e56bebabcbcca421a4e392319e0f01cfe44c654ce3cd6136913902c3117896e182561f7c273d56af5b31313137ff4e8a38ffee9030f3cf01d69af893d1929e91508105db5ab5d609af4cb7559ed4a332d847cfd8cb2a0cb255a37564f9d3a853d597087ef2061a58a27d0b74df93591e7972bcae0b82b7a95a1efc17d58abdd4124ada094eac8e13deab236ee9b3f727d7676f6bdc5c5eb17ae5dbbc6f031e74eff97b467a431a4cce5231ca2c37731d74672c0cf5c3a217fe8103969f981eb1d39ee1527f6ae342a702efcf97b697f28ed2ff9fbc183074f3ef4d043fc9e993d5d1367414bb2a7e546124cbc93031f3f5314d044974e3258f8196926d56ef257af444b60ea6792f7b0f4d97083bb0cd8ed415f25c8b71d63abe5f8a0f999d4e8fd8045471ba66a373469f3ba344a0ebc65008f3cf2c887890c54a52cf0a211e8599c078159fcc5dc3dd52859fbdbd2d9d95f4f05cb48c006210c87ebd02fd2e7764204a4a5efc823d267fc421a95382bd9a94ab80b9be90b86d5b942f52fa4b1b29dc384f83daed36ceb971ed52eb739e6a7689c9db0b242ab27ce81d790f0dd4358ed8619a1ecd38e099e89afa020e03a6b4e6ae3c6b9ba0d95fcac43fb8cfce77de022436ab43e6054ed268891b4c8e05aa1f5e97c80a64c90970c9de17ae6ed59edfdc25d77ddf5fae4e4e417a6a62adfa8d556cf4a67e7563be6f40990fc1e0bc6b037b7dbb1529c216ce6f3f9377e47f852a9f70701fd80453a8dbf39a00b71f91e74ddfc25de01b970422c76bb229f7fa55a1dfbd6f8f80497b03cbdb2b2d2dc69c0f5a95f93f65d6924377c8644a6053d3ac08eb01e554bb8e124433e41f1ad76b32307a36ab701a3114a950cf2b3da6777f13370e38c34fc035c27c86f127e91f07b23cfef41480efa16dccb30f23054bb3ea4cd57bb16a4d53a0e0b7b3ae8b2fe3b62cfe545c19123476eccccecbbb26ddbb6d37373732cd4e3501d822481912d78df90f637d27e92fc9dea9f4af8b21086ea9f7f7f5fb8435fa012c63930eccfb1974c09902410a0990ee06716ab119459e97f539ec1169d39f93cabceab425a9ec7f1bc54dcfc2ed309241dff24ed4bd2908bd108e4f8ace8f2a9f1f1cbdfae562b52a5df754682aaa8f20c2773f15d24345dfb28f68c6dc7c48056bb264588b59f29a9daed080b3f13b010828b8c6c092f2bc8cc8a7aceda3009ccaec87fbe1fc941aab4b2313d3d9d66d37d36728a18ab5d1fd25ace478210a4b5d0a5a02839e0192c360364f1ccd5d308c66f4863fb177373f5a0bf6bd7e6ef2d2fafbc3e3535f1ec8e1dbff6d4c2c20287b850217329ca1f4ba30220489320b0e2fc9bd2182a675dc05f4d4d4d7d4e48765c88f7c30d1bc6bf72f4e8b12724c1e094b7ff94c667bf9ab4e7a5917410e8f99324822a7c115dceccfcfacace9d7bee6cdab4e9b6b6da4597c20d277b4a5357bbf95135237b7af7cbe43dfa9db416f9196719b4098a34976ab70d6bf819273d647569684f97f7581519de3a77eedce94a65e59dd5d50af3f0ecc671aae2cb08ccaef091a16fc1fdf0e1c348573534b28ab4ebb0daad2316d216e8d239a0e51d60976092958feffa5012ad894f7dea506dcf9e7dd7aad5c96b6fbef966fda43d690cdf33744e92406240654e05df5cc5cfb9d76f3ff9e4d8d5ad5b1f6521e03bd27eb665cbd64ba207fa044905a7f3d17826e0fbf9bf963e934fb45ce7c9b167be420b9038b7f54b577be693bd58aa5dd7446bc0abdd26daeca9f5d93ef6ccfb4b5f5d1e39b269a952b9e7ccd5ab579fabd56a8cb611e0bd4eccf441a8e4a06fc15d0c55999f9faffa187974846503790708691dab23be3b3869ad75990413a73e91771ce8d2dd01fe4e4bb5abad8e04cba1ed99e8d2d9092b83490cd52e68d165e86a17186d01747e0feda85a3ed1f2d1a59dcfde3eb6b4b4b47cfefc79926d46dcd86d0208f2acc55913dac01c3239e85b70a7834aa7abfa9036dbd9e968da2c343469916140aadd36582ca2cb3a8e10895691e31855bb0d19422ca22b29d97392a10c7b6a132d1f6ee4fda5872edb122dd165bf13adbaafb35cac9b91015d3025c6d41ca3729ca3c15a1a16d9b6a08c8abb9fc9416a807ee0e2c58baeda29721c4e4e38ef007d3a9a3453d2aee76ab7a04253915610bcda0d941c44b9862474e20c42240716bacc275a3ebab41ca14406a3644f654f74a9f5d905f6640d0e772c701c365b699bd7caa6d056dda19383be067757e48dec3344a5ad76237680dea405a1aaddac3dd16509a4ed88bc3d2daa5da3a170a744cb22d9d372a30c7bbaead222a01924073154bb7519acab5d6d821279e2cc5639823cdb4e39f88993edee95d676cf854560768536398839b8b7193900698b1c60906ad792b48251b52bf0d5a575b21762c78405370a1294beeb5260de2fb5c95e0ce703a04b6da2a5b5e70025ce3c9f617a4e7d647bec76f993b9f8b6a1fa5ea10dccdac400441bdcf3460e3d4405b40ed037a08d485b870f695b6011d00a923d273d94614f575daec18d7ef7cba26ad75997f9642ff4a85a086e14d93340e2cc77f30c952eadfd8c63e2cc099727c7c7c74f483026b0334cbf451b982daa7e9f674419dc2d3a5a04d5ae79400b445af36ad787b416d56e04c3b745098a4a97d833866ad7b5d2b44e9c135daa923d74a94db442240702537bfaeab2043fd36f19b852b676e8d0c72e2c2c7cf0e2cd9bb54b125439fc86636c7b86b6eab6a8da7946aa88886012d0e4f3a6a4d53ae151b5ab23adb53d2daa23b167dffba5b6dab5480e2caaddac0c3e8996363928b267a86a37db2f4324ce793fb35e774c7ca4cbed633b77cedcdeb061c3c98b172f72e815a755b2e08ea1fa8e07e0c450b5373f9f768a58601dd00291368a6a37afcb61381f4047da06b067e86a37790f277b58e8b2203908926809bf52197cb8a15d732028c39e4e3294e4679c39aee546decf18d9d349867cbfb4e046e22fb98591d32639b80a3d31545f3fc6b608daaadb3239488d1a03f2461e966a577e565768aea435701c7cb7badab526ad852e432407312ca2b34eb4906154ed36648861119d51b2e72c43683f2368d3a5ab3dbbf8194e99e4944a8ea1e6364aaa7856d5d7bfaf09ab8a5b83ec3352a34482e8486b51ed8620adb6aa3008687c7719d5912ad11ae46a57cb0dcb44cbd09ecedc28a1daed37374caa5deb69a218fc4c0c055d079fcdf1d35c4cc5ad93cd636c7f49dab865c5dd84363948951a1a2591d63930e749eb2a8340ed8487716ed787b4312ca21bd66ad76714667e7e7e22f96b14d56ed22f6348f69cf410833d056dfd32809f51275a45bad48eaa7591011db3279e636cb96782f7df2a8175a3fce98d329283542981d16be6b4266220ad4172c0779b9336065dba265a068ea32e8376e1576cd5ae5572e0ea00b54ed822d92b63544d1bd046d56e4bbff4960118e9b25f7e86df616ffc1bd56a958370a8e2b93b7ec22230bba228398822b8e73b9a8fe31855bb0d94a4cba0a4f50d685a7b4a8baada054617890449b4b232b8f64b648861f422023f13c5b482c58e89215943b270fdfa8537efdca9bd54abad52bd13e439abbe679451b583e0c1bda8a3f59bb40275165a12699d9db0d201d6658889b486f674256d74d5ae852e07750dc9f4f47455ec91ea3244e22c30f533c97b38d9c322a0e5fb6588644f5a8b2e43f899ec7b68ec79e0c021e94e2b97366fdefc9d8585856bf2ef1c804390675ebe23b4153b582b39483b7b204459ed86480e22c942cd49ebaa4b6b7b8221aa769d0373e8c419192caa5d8ba435a74b959f41066db53bda31d180873df96e757290ed975a3f23fd6bf5b1c71eab892eff5bfeca85345c2fcb8d731df7c66babf64e9f4f151c02060e504ddaa28e360c4354da8066455a575d0a784634ba4406d7855f79c791e8d2b95fcae7537bfa3861692dbad426cebef6ccea3244b56ba1cb82226458aa5d678e37dfc3d09ecedc5026072623941db8c1423bcea97f451a43f59c72f7cbd25aa00deca053e59f0a170045c1c449c1d659a86f4793cf9b92d6a73ab21ca202a1aadd1248abae761d039a893d23a876a318551bed9868c0c29ed24cfba5c528e910ef98f885b40bd2fe4dda0d691c7ed3dc1b5fff5ca7c0dc0bba25076967098163c78ed5171ba19c18aadd5848abad8e7c7469e9002d489be8d249060bd24ac31e7519d6206d47e4039a853d87a5da754db4f232a04b6d4033f233ce1c6fbe87a13d9db9a1f533d6d5ae457210c38e0974d9a15f221f43f554f2b7a47d42da0609cc2d43f5d6553b081adca7a7a72b38d22eca29026f3522ada088b48eba8ca1da6d23eda8da6d202207e82d031855bb8df7d0da13687599f4cbbe275a05c99e3337b23edb470669a689738ffd92e75f94f66369a72528330fcfb639a755f55974abda41daf143e0f0e1c31551ced888b40d19d6eb1196f980863dfb3d142e88c10116ad217196c19a1ba3c4b9017419a2dab51ca14406a33524def604e852db2f63489c1dfbe507d2de9a9a9a3abeb2b2c2aa7a86eaef73adda7b09ec207dd11010e38e3dfef8e363eb95b4961d0db8ce93179156e384812f69c51edef62c83b42116d1e5edb99eab5debf30106b9dab54c0e902174e21ca85f1625ce2a3fe3a14bd6904c1c3972e4c6b66ddb7e7ce1c2851312e479de76696c9b4b9fdd09dd86e39be8e96165c2b193a89db0201ad26a3b5a96b402d7fbe6f9dcb092565ded4652a139eb523e9ff64ba345917d7780829664cf48974ecf2829d953d9135d6a13ad181267a35118278e5b247b793fa3891bd2bf57efbefbeef7e6e6e67e207f7d471ac19da17a86ecd744af553b081edc5d60ddd180ab9147a4fd08d6a44d74d9577b0ad401ad0c7bfa54bb05a330aaf7f0d0655ba2e5e30095c9dea8da4d60a04bf36ad7c7cf0cebf900f2796460553dc7d89e92c6de78b6cdfdaab4faefe5d16bd50e52a50f0046d56e8218498b0cae155a49e70338eb523e6f4a5a577b5ae852d0d22f7d74a94d0ef2c95e0c6b48d0e528714edfc3bbd2043edc28f0332a192cec19dacfac61cf7969acaa7f551a53525c2bcb82bbfa770297aa1d0c4c701f9136859ab41659689eb4aeba2cc39eaeba5c23a0799316780c85c750ed9a4f2b20836b82a2e546913dd76bb59bd7e57add3191d7a5873df96e959f11b4bc47077b622356d5b337fe7fa571210db2ff8a0476644686fa337a5884b79cbe74e4501b3946d22283b6da0d3144950f68c352ed6a49ab7580c830aa761bf0096802537b26efe19c68697559e067fa9decb5d933d26ab71bd44548193ebb075df2fcff93765cda2be3e3632facae5618bea7ba27e04f49639f3c87e4b0ea9edfe7dfde90c655b49f97f6442a74ccd066f40273d21a55bb7d771cd2540e90ce1e69b5eb44da2207d807d2b6c022a00d49b55bef97f28ca8746951edba265ad6d5ae0f37f2baf4b5a7a5cff6b1e710f86cb6cebd7fcf3d9f78fbe0c1adcf2e2ddd7efece9d1556d8ff83fcfb17a4314fff43694f4bfb8cb42f4a7b5e1ac3fb975203c60a0bd25a54bbc33a4435e8d52e30728041122d6d40cb5647835ced2a9383a251b5becb2088aada054601cdf93db47ec622710eedb38b64f0489cab3b77ee1cfbf8c7ef5bddbd7befadd9d9d99f49bf3c2ffff59e344ebdfb89b4b7a5dd944632c0297877a4ada6068814264354f279b513d638c032482b8ec8f93d86b1da1d60d26a83495bbfd4ead2a2da0d31ad5052b2e7244319f60c9138e7fd8c5172d0779f8d0c5a3f93f5d982815b7c9d76c618110369f30e908e168991637080035fedfa384081a93d7dfaa5413089620d493e3930b2a7930c16012d023f63a2cb6118a1b4f233595d6aeda94d9c81ebf465fae5b1a10cd2fa18595bed5a90d6a2dad506342d698b1cc7a8da6dc810c3223a1f275cc64890d69e035aed16ad210932b511939fb1b267003f639e38fbe832fd70644029c1abdd921ce0c00f517974b4b2ec39f0a4458610c95e4185e6ac4bf9bc8a1b597b26dc50e9d222d10a911c681367810937b2f6949fd58996961b31d833e997417c765606d1a5b30c5106770b079837b291031c9176445a953d0b923d273d94614f575daec18d7ef74b75a2850cf9646fd047d57cec2930f133dac459c03354bab4f63321764c58f819ec992a22261438406727acec683154bb43435aad13b6206dde0987d8316145daac2e4354bb82e0a36ad68973a24b55b2273fab132dad9f19e4c4b9043fd3f7b8212d9ac4397d9158604d5adf80867292bf0633b265160a8c2e125139408b6ad7d501c662cf61a876f3fd1219d6e31a1281899fb10e265a7b5a240783ba86a4c0d7a974893d1db9d1664f4da2950a1203ac49ab550e7fb122adab03b476c216ba1c55bb0df8d85360465afe92bc87933d2c025abe5f6a933d741922a069fd4cf63d0cede92c43e86ad7821b793fe363cf081267f5945b5e97da442b7d500c78f8e1872bb55aad2e930f61f2a41d966ad7a2a3b992d6c071f0ddc350ed9a931619b4d5ae4fa235aa76ebe0bbd5c941b65faee76ab70c6ef4dbcf08cc75e9f11ee6d30ae90f31400c32b67ffffeba4c28475b1df990d67ae460901764643b5a88802630256df21eaa446b54edb670c3c99ed9f730b4a733372caa5dedb4c2a8daad23ba6ad74a97ae3ebb8cc439554a2c20b8274656652d1e1dad88b4ce815999850255401b91f623c4b088ae0cd2c650edfaf4cbf9f979aeb2ac23866a37e99731247bcedcc8265a21ec2930e997595d7abc8779b5eb2b434c6b489af64c5f2a164c4f4f578c3a9a93726221ad32a3e7bb87b2daf5216d560674a9758046a4f5768086f674e646de01ba569a05f65471c32239304af6bced8f1f366a000000244944415409d0a5b65f6afd8c852e43f86cebc4d9971bd6f674d565decf34ecf9e5e5ff0722c79d1ecf9284d70000000049454e44ae426082, 'IT- Computer Software', 'NA', '1-10', '06-05-2023 08:05 PM [EAT +03:00]', 'employer', '-', '25d55ad283aa400af464c76d713c07ad', 'CM890080599');
INSERT INTO `tbl_users` (`first_name`, `last_name`, `gender`, `bdate`, `bmonth`, `byear`, `email`, `education`, `title`, `city`, `street`, `zip`, `country`, `phone`, `about`, `avatar`, `services`, `expertise`, `people`, `last_login`, `role`, `website`, `login`, `member_no`) VALUES
('Khushi', 'Dixit', 'Female', '30', '06', '2002', 'khushi@gmail.com', 'B-tech', 'Your Professional', 'Lucknow', 'Sec 5E---', '226029', 'India', '12345678', 'I\'m currently enrolled as a student pursuing B-Tech (CSE) from Dr. A.P.J.Abdul Kalam Technical University, Lucknow. Being from technical background, I\'m interested in programming languages and data structures n algorithms. Also I am passionate about new technologies, communities and am always curious about to learn new skills.<br>', NULL, NULL, NULL, '-', '19-05-2023 11:05 AM [EAT +03:00]', 'employee', '-', '25d55ad283aa400af464c76d713c07ad', 'EM105123754'),
('Richaa', 'Dxt', 'Male', '08', '04', '2002', 'atoz@gmail.com', '-', 'Your Professional', '-', '-', '-', 'India', '-', '', NULL, NULL, NULL, '-', '19-05-2023 05:05 PM [EAT +03:00]', 'employee', '-', '25d55ad283aa400af464c76d713c07ad', 'EM233727816'),
('Abcd', 'Efgh', '-', '-', '-', '-', '123@gmail.com', '-', 'Your professional', '-', '-', '-', '-', '-', NULL, NULL, NULL, NULL, '-', '19-05-2023 05:05 PM [EAT +03:00]', 'employee', '-', '25d55ad283aa400af464c76d713c07ad', 'EM556841555'),
('Richa', 'Dixit', 'Male', '08', '04', '2002', 'richadixit@gmail.com', '-', 'Your Professional', '-', '-', '-', 'Afghanistan', '-', '', NULL, NULL, NULL, '-', '06-05-2023 07:05 PM [EAT +03:00]', 'employee', '-', '25d55ad283aa400af464c76d713c07ad', 'EM573967974'),
('Abhishek Kumar ', 'Singh', 'Male', '21', '11', '1998', 'abhiofficial98@gmail.com', 'Degree', 'Cse', 'Luckow', 'Harikansh Garhi', '226301', 'India', '7007552474', 'anhaseo', NULL, NULL, NULL, '-', '18-05-2023 10:05 AM [EAT +03:00]', 'employee', '-', 'f2d26eb7058caf2c58ea5ccddb528ec7', 'EM998865744');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_academic_qualification`
--
ALTER TABLE `tbl_academic_qualification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_alerts`
--
ALTER TABLE `tbl_alerts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `tbl_categories`
--
ALTER TABLE `tbl_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_countries`
--
ALTER TABLE `tbl_countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_experience`
--
ALTER TABLE `tbl_experience`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_jobs`
--
ALTER TABLE `tbl_jobs`
  ADD PRIMARY KEY (`enc_id`),
  ADD UNIQUE KEY `job_id` (`job_id`);

--
-- Indexes for table `tbl_job_applications`
--
ALTER TABLE `tbl_job_applications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_language`
--
ALTER TABLE `tbl_language`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_other_attachments`
--
ALTER TABLE `tbl_other_attachments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_professional_qualification`
--
ALTER TABLE `tbl_professional_qualification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_referees`
--
ALTER TABLE `tbl_referees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_tokens`
--
ALTER TABLE `tbl_tokens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_training`
--
ALTER TABLE `tbl_training`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`member_no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_academic_qualification`
--
ALTER TABLE `tbl_academic_qualification`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_alerts`
--
ALTER TABLE `tbl_alerts`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `tbl_categories`
--
ALTER TABLE `tbl_categories`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `tbl_countries`
--
ALTER TABLE `tbl_countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=246;

--
-- AUTO_INCREMENT for table `tbl_experience`
--
ALTER TABLE `tbl_experience`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_jobs`
--
ALTER TABLE `tbl_jobs`
  MODIFY `enc_id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbl_job_applications`
--
ALTER TABLE `tbl_job_applications`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_language`
--
ALTER TABLE `tbl_language`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_other_attachments`
--
ALTER TABLE `tbl_other_attachments`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_professional_qualification`
--
ALTER TABLE `tbl_professional_qualification`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_referees`
--
ALTER TABLE `tbl_referees`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_tokens`
--
ALTER TABLE `tbl_tokens`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_training`
--
ALTER TABLE `tbl_training`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
