-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 30, 2021 at 02:02 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cybervillage`
--

-- --------------------------------------------------------

--
-- Table structure for table `adminapp_complaints`
--

CREATE TABLE `adminapp_complaints` (
  `id` int(11) NOT NULL,
  `details` varchar(500) NOT NULL,
  `status` int(11) NOT NULL,
  `created_date` date NOT NULL,
  `updated_date` date NOT NULL,
  `company_id` int(11) NOT NULL,
  `dept_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `adminapp_complaints`
--

INSERT INTO `adminapp_complaints` (`id`, `details`, `status`, `created_date`, `updated_date`, `company_id`, `dept_id`) VALUES
(1, 'AC Not working', 2, '2021-04-17', '2021-04-17', 2, 2),
(2, 'water leakage', 2, '2021-04-21', '2021-04-21', 3, 5);

-- --------------------------------------------------------

--
-- Table structure for table `adminapp_department`
--

CREATE TABLE `adminapp_department` (
  `deptid` int(11) NOT NULL,
  `dname` varchar(25) NOT NULL,
  `phone` bigint(20) NOT NULL,
  `userid_id` int(11) NOT NULL,
  `email` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `adminapp_department`
--

INSERT INTO `adminapp_department` (`deptid`, `dname`, `phone`, `userid_id`, `email`) VALUES
(1, 'Administration', 9586987456, 1, 'admin@cybozone.com'),
(2, 'A/C Maintanence', 7907791788, 3, 'ac_maint@cybozone.com'),
(3, 'Electrical', 435262654, 4, 'electrical@cybozone.com'),
(4, 'Mechanical', 9989569895, 5, 'mec@cybozone.com'),
(5, 'Plumbing', 4352628888, 6, 'plb@cybozone.com'),
(6, 'Security', 8884352626, 7, 'security@cybozone.com'),
(7, 'water', 4352626, 10, 'wtr@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `adminapp_development`
--

CREATE TABLE `adminapp_development` (
  `id` int(11) NOT NULL,
  `dev_type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `adminapp_development`
--

INSERT INTO `adminapp_development` (`id`, `dev_type`) VALUES
(1, 'SEZ'),
(2, 'Non-SEZ');

-- --------------------------------------------------------

--
-- Table structure for table `adminapp_projectloc`
--

CREATE TABLE `adminapp_projectloc` (
  `id` int(11) NOT NULL,
  `projectname` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `adminapp_projectloc`
--

INSERT INTO `adminapp_projectloc` (`id`, `projectname`) VALUES
(1, 'Phase-1'),
(2, 'Phase-2'),
(3, 'Phase-3'),
(4, 'Phase-4');

-- --------------------------------------------------------

--
-- Table structure for table `adminapp_resume`
--

CREATE TABLE `adminapp_resume` (
  `id` int(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  `email` varchar(40) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `submitted_on` date NOT NULL,
  `resume` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `adminapp_resume`
--

INSERT INTO `adminapp_resume` (`id`, `name`, `email`, `phone`, `submitted_on`, `resume`) VALUES
(2, 'steve', 'ss@gmail.com', '4352626454', '2021-04-17', 'resume/Name.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `adminapp_space`
--

CREATE TABLE `adminapp_space` (
  `spaceid` int(11) NOT NULL,
  `facility_type` varchar(30) NOT NULL,
  `floor_no` int(11) NOT NULL,
  `area` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `image` varchar(100) NOT NULL,
  `development_type_id` int(11) NOT NULL,
  `project_loc_id` int(11) NOT NULL,
  `space_type_id` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `adminapp_space`
--

INSERT INTO `adminapp_space` (`spaceid`, `facility_type`, `floor_no`, `area`, `status`, `image`, `development_type_id`, `project_loc_id`, `space_type_id`, `price`) VALUES
(1, 'Office Space', 2, 5500, 0, 'space/office-space.jpg', 1, 1, 1, '500.00'),
(2, 'Office Space', 1, 2500, 0, 'space/office3.jpg', 1, 2, 1, '700.00'),
(3, 'Office Space', 3, 1250, 0, 'space/office2.png', 1, 3, 1, '450.00');

-- --------------------------------------------------------

--
-- Table structure for table `adminapp_spacerequest`
--

CREATE TABLE `adminapp_spacerequest` (
  `reqid` int(11) NOT NULL,
  `approval` int(11) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `bill` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `spaceid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `adminapp_spacerequest`
--

INSERT INTO `adminapp_spacerequest` (`reqid`, `approval`, `amount`, `bill`, `company_id`, `spaceid_id`) VALUES
(1, 1, '1750000.00', 1, 2, 2),
(2, 1, '2750000.00', 0, 2, 1),
(3, 2, '2750000.00', 0, 3, 1),
(4, 1, '562500.00', 1, 3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `adminapp_spacetype`
--

CREATE TABLE `adminapp_spacetype` (
  `id` int(11) NOT NULL,
  `space_type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `adminapp_spacetype`
--

INSERT INTO `adminapp_spacetype` (`id`, `space_type`) VALUES
(1, 'Fully furnished'),
(2, 'Unfurnished Raw Space');

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add login', 7, 'add_login'),
(26, 'Can change login', 7, 'change_login'),
(27, 'Can delete login', 7, 'delete_login'),
(28, 'Can view login', 7, 'view_login'),
(29, 'Can add company', 8, 'add_company'),
(30, 'Can change company', 8, 'change_company'),
(31, 'Can delete company', 8, 'delete_company'),
(32, 'Can view company', 8, 'view_company'),
(33, 'Can add development', 9, 'add_development'),
(34, 'Can change development', 9, 'change_development'),
(35, 'Can delete development', 9, 'delete_development'),
(36, 'Can view development', 9, 'view_development'),
(37, 'Can add projectloc', 10, 'add_projectloc'),
(38, 'Can change projectloc', 10, 'change_projectloc'),
(39, 'Can delete projectloc', 10, 'delete_projectloc'),
(40, 'Can view projectloc', 10, 'view_projectloc'),
(41, 'Can add space', 11, 'add_space'),
(42, 'Can change space', 11, 'change_space'),
(43, 'Can delete space', 11, 'delete_space'),
(44, 'Can view space', 11, 'view_space'),
(45, 'Can add spacetype', 12, 'add_spacetype'),
(46, 'Can change spacetype', 12, 'change_spacetype'),
(47, 'Can delete spacetype', 12, 'delete_spacetype'),
(48, 'Can view spacetype', 12, 'view_spacetype'),
(49, 'Can add spacerequest', 13, 'add_spacerequest'),
(50, 'Can change spacerequest', 13, 'change_spacerequest'),
(51, 'Can delete spacerequest', 13, 'delete_spacerequest'),
(52, 'Can view spacerequest', 13, 'view_spacerequest'),
(53, 'Can add complaints', 14, 'add_complaints'),
(54, 'Can change complaints', 14, 'change_complaints'),
(55, 'Can delete complaints', 14, 'delete_complaints'),
(56, 'Can view complaints', 14, 'view_complaints'),
(57, 'Can add department', 15, 'add_department'),
(58, 'Can change department', 15, 'change_department'),
(59, 'Can delete department', 15, 'delete_department'),
(60, 'Can view department', 15, 'view_department'),
(61, 'Can add job', 16, 'add_job'),
(62, 'Can change job', 16, 'change_job'),
(63, 'Can delete job', 16, 'delete_job'),
(64, 'Can view job', 16, 'view_job'),
(65, 'Can add resume', 17, 'add_resume'),
(66, 'Can change resume', 17, 'change_resume'),
(67, 'Can delete resume', 17, 'delete_resume'),
(68, 'Can view resume', 17, 'view_resume'),
(69, 'Can add payments', 18, 'add_payments'),
(70, 'Can change payments', 18, 'change_payments'),
(71, 'Can delete payments', 18, 'delete_payments'),
(72, 'Can view payments', 18, 'view_payments');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `companyapp_company`
--

CREATE TABLE `companyapp_company` (
  `companyid` int(11) NOT NULL,
  `cregnum` int(11) NOT NULL,
  `gstin` varchar(15) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `email` varchar(40) NOT NULL,
  `profile` varchar(300) NOT NULL,
  `workpattern` varchar(400) NOT NULL,
  `projects` varchar(400) NOT NULL,
  `website` varchar(30) NOT NULL,
  `clogo` varchar(100) NOT NULL,
  `approval` int(11) NOT NULL,
  `cname` varchar(25) NOT NULL,
  `userid_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `companyapp_company`
--

INSERT INTO `companyapp_company` (`companyid`, `cregnum`, `gstin`, `contact`, `email`, `profile`, `workpattern`, `projects`, `website`, `clogo`, `approval`, `cname`, `userid_id`) VALUES
(2, 76543478, '32SDRF666666666', '7907791788', 'ipsr@ipsrsolutions.com', 'web development', 'Training and web Development', 'DeQ', 'www.company1.com', 'logo/download_HR598oz.png', 1, 'IPSR Solutions', 2),
(3, 2147483647, '32SDRF666666666', '4352626567', 'valin@gmail.com', 'this template is attractive as much as it is useful. This one carries an eco-friendly theme and colors to emphasize that. However, you can certainly edit those borders. You can use the handy table of contents at the beginning and get ideas from the way this company presents its profile.', 'this template is attractive as much as it is useful. This one carries an eco-friendly theme and colors to emphasize that. However, you can certainly edit those borders. You can use the handy table of contents at the beginning and get ideas from the way this company presents its profile.', '1. EDUTECH\r\n2. SMART CLas', 'www.company2.com', 'logo/dp-avatar-300x300.png', 1, 'Valin Tech', 8),
(4, 23456432, '32SDRF666666666', '7907791788', 'valin@valin.com', 'hsgdfhasfvkfvhd', 'shfvhsgf', 'fghhj', 'www.company3.com', 'logo/dp-avatar-300x300_wTimRv4.png', 1, 'Valin Tech2', 9),
(5, 23456789, '32SDRF665869666', '7907791788', 'vgrd@gmail.com', 'well known for their customer service, and they highlight that in their profile. Their About Us page tells a story of service and growth, all centered around their customers.\r\n\r\nFor more insight, they have linked pages dedicated to detailing out more on topics like \"What we live by\" and \"How we work', 'well known for their customer service, and they highlight that in their profile. Their About Us page tells a story of service and growth, all centered around their customers.\r\n\r\nFor more insight, they have linked pages dedicated to detailing out more on topics like \"What we live by\" and \"How we work.\"', 'trizire', 'www.company3.com', 'logo/dp-avatar-300x300_zF8kNWX.png', 0, 'Vguard', 11);

-- --------------------------------------------------------

--
-- Table structure for table `companyapp_job`
--

CREATE TABLE `companyapp_job` (
  `id` int(11) NOT NULL,
  `title` varchar(20) NOT NULL,
  `experience` int(11) NOT NULL,
  `skills` varchar(200) NOT NULL,
  `description` varchar(400) NOT NULL,
  `created_date` date NOT NULL,
  `company_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `companyapp_job`
--

INSERT INTO `companyapp_job` (`id`, `title`, `experience`, `skills`, `description`, `created_date`, `company_id`) VALUES
(1, 'Python Developer', 2, 'Python, Django', 'Hands-on experience in DB design & Architecture with a focus on performance.', '2021-04-17', 2);

-- --------------------------------------------------------

--
-- Table structure for table `companyapp_payments`
--

CREATE TABLE `companyapp_payments` (
  `id` int(11) NOT NULL,
  `type` varchar(25) NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `paidon` date NOT NULL,
  `company_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `companyapp_payments`
--

INSERT INTO `companyapp_payments` (`id`, `type`, `amount`, `paidon`, `company_id`) VALUES
(1, 'Electricity', '500.00', '2021-04-30', 2);

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(14, 'adminapp', 'complaints'),
(15, 'adminapp', 'department'),
(9, 'adminapp', 'development'),
(10, 'adminapp', 'projectloc'),
(17, 'adminapp', 'resume'),
(11, 'adminapp', 'space'),
(13, 'adminapp', 'spacerequest'),
(12, 'adminapp', 'spacetype'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(8, 'companyapp', 'company'),
(16, 'companyapp', 'job'),
(18, 'companyapp', 'payments'),
(5, 'contenttypes', 'contenttype'),
(7, 'loginapp', 'login'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2021-03-18 14:18:46.192837'),
(2, 'auth', '0001_initial', '2021-03-18 14:18:49.625774'),
(3, 'admin', '0001_initial', '2021-03-18 14:19:00.420843'),
(4, 'admin', '0002_logentry_remove_auto_add', '2021-03-18 14:19:03.604576'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2021-03-18 14:19:03.714380'),
(6, 'contenttypes', '0002_remove_content_type_name', '2021-03-18 14:19:04.790660'),
(7, 'auth', '0002_alter_permission_name_max_length', '2021-03-18 14:19:06.719448'),
(8, 'auth', '0003_alter_user_email_max_length', '2021-03-18 14:19:08.116818'),
(9, 'auth', '0004_alter_user_username_opts', '2021-03-18 14:19:08.192036'),
(10, 'auth', '0005_alter_user_last_login_null', '2021-03-18 14:19:08.913025'),
(11, 'auth', '0006_require_contenttypes_0002', '2021-03-18 14:19:09.035404'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2021-03-18 14:19:09.088765'),
(13, 'auth', '0008_alter_user_username_max_length', '2021-03-18 14:19:10.358275'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2021-03-18 14:19:12.446747'),
(15, 'auth', '0010_alter_group_name_max_length', '2021-03-18 14:19:14.637060'),
(16, 'auth', '0011_update_proxy_permissions', '2021-03-18 14:19:15.115479'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2021-03-18 14:19:18.770798'),
(18, 'loginapp', '0001_initial', '2021-03-18 14:19:19.579965'),
(19, 'sessions', '0001_initial', '2021-03-18 14:19:20.646482'),
(20, 'companyapp', '0001_initial', '2021-04-12 09:53:49.400439'),
(21, 'companyapp', '0002_company_cname', '2021-04-12 10:00:49.562442'),
(22, 'adminapp', '0001_initial', '2021-04-12 11:38:16.196085'),
(23, 'adminapp', '0002_space_price', '2021-04-15 12:34:42.691621'),
(24, 'companyapp', '0003_company_userid', '2021-04-16 06:57:35.977003'),
(25, 'adminapp', '0003_spacerequest', '2021-04-17 08:03:14.174859'),
(26, 'adminapp', '0004_complaints_department', '2021-04-17 10:56:17.927241'),
(27, 'adminapp', '0005_auto_20210417_1757', '2021-04-17 12:27:27.647106'),
(28, 'adminapp', '0006_department_email', '2021-04-17 12:30:43.014767'),
(29, 'companyapp', '0004_job', '2021-04-17 15:06:40.642876'),
(30, 'adminapp', '0007_resume', '2021-04-17 15:09:15.962720'),
(31, 'companyapp', '0005_payments', '2021-04-30 09:46:48.785076'),
(32, 'companyapp', '0006_payments_company', '2021-04-30 11:53:55.206025');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('1iepki6yyjplpdz080kqym94oudo1wvl', 'eyJ1c2VyaWQiOjF9:1lXpZF:kC-xeKIPiHpveKPusVLDVYM43dyfygtZTjlyRKqfdKE', '2021-05-01 18:21:17.022055'),
('orgnl9m0qa1r6gg0re03qxxhemsmolk4', 'eyJ1c2VyaWQiOjExfQ:1laiXt:qqwhTmUge6LrpnMyX9LEETdpEkQFz4BQ6ElOQRio_tk', '2021-05-09 17:27:49.444070'),
('r5r05qt9r5ymsnugkahphq5njjotg3fh', 'eyJ1c2VyaWQiOjJ9:1lcPLP:Bvu8FP0dV-3yJ02Nsa94yb0nrva9IzOOZd8AyjzLSJk', '2021-05-14 09:21:55.111308');

-- --------------------------------------------------------

--
-- Table structure for table `loginapp_login`
--

CREATE TABLE `loginapp_login` (
  `userid` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(10) NOT NULL,
  `role` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `loginapp_login`
--

INSERT INTO `loginapp_login` (`userid`, `username`, `password`, `role`) VALUES
(1, 'admin', '123', 0),
(2, 'company1', '123', 1),
(3, 'acm', '123', 2),
(4, 'ele', '123', 2),
(5, 'mec', '123', 2),
(6, 'plb', '123', 2),
(7, 'security', '123', 2),
(8, 'valin', '123', 1),
(9, 'cmp1', '123', 1),
(10, 'wt', '123', 2),
(11, 'company3', '123', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adminapp_complaints`
--
ALTER TABLE `adminapp_complaints`
  ADD PRIMARY KEY (`id`),
  ADD KEY `adminapp_complaints_company_id_6577b7b9_fk_companyap` (`company_id`),
  ADD KEY `adminapp_complaints_dept_id_b132757c_fk_adminapp_` (`dept_id`);

--
-- Indexes for table `adminapp_department`
--
ALTER TABLE `adminapp_department`
  ADD PRIMARY KEY (`deptid`),
  ADD KEY `adminapp_department_userid_id_d0e64299_fk_loginapp_login_userid` (`userid_id`);

--
-- Indexes for table `adminapp_development`
--
ALTER TABLE `adminapp_development`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `adminapp_projectloc`
--
ALTER TABLE `adminapp_projectloc`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `adminapp_resume`
--
ALTER TABLE `adminapp_resume`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `adminapp_space`
--
ALTER TABLE `adminapp_space`
  ADD PRIMARY KEY (`spaceid`),
  ADD KEY `adminapp_space_development_type_id_9ad66454_fk_adminapp_` (`development_type_id`),
  ADD KEY `adminapp_space_project_loc_id_38ba4267_fk_adminapp_projectloc_id` (`project_loc_id`),
  ADD KEY `adminapp_space_space_type_id_266082e5_fk_adminapp_spacetype_id` (`space_type_id`);

--
-- Indexes for table `adminapp_spacerequest`
--
ALTER TABLE `adminapp_spacerequest`
  ADD PRIMARY KEY (`reqid`),
  ADD KEY `adminapp_spacereques_company_id_179db34d_fk_companyap` (`company_id`),
  ADD KEY `adminapp_spacereques_spaceid_id_514d46e1_fk_adminapp_` (`spaceid_id`);

--
-- Indexes for table `adminapp_spacetype`
--
ALTER TABLE `adminapp_spacetype`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `companyapp_company`
--
ALTER TABLE `companyapp_company`
  ADD PRIMARY KEY (`companyid`),
  ADD KEY `companyapp_company_userid_id_fbf6f2a2_fk_loginapp_login_userid` (`userid_id`);

--
-- Indexes for table `companyapp_job`
--
ALTER TABLE `companyapp_job`
  ADD PRIMARY KEY (`id`),
  ADD KEY `companyapp_job_company_id_f292df9e_fk_companyap` (`company_id`);

--
-- Indexes for table `companyapp_payments`
--
ALTER TABLE `companyapp_payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `companyapp_payments_company_id_9731cc77_fk_companyap` (`company_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `loginapp_login`
--
ALTER TABLE `loginapp_login`
  ADD PRIMARY KEY (`userid`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adminapp_complaints`
--
ALTER TABLE `adminapp_complaints`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `adminapp_department`
--
ALTER TABLE `adminapp_department`
  MODIFY `deptid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `adminapp_development`
--
ALTER TABLE `adminapp_development`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `adminapp_projectloc`
--
ALTER TABLE `adminapp_projectloc`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `adminapp_resume`
--
ALTER TABLE `adminapp_resume`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `adminapp_space`
--
ALTER TABLE `adminapp_space`
  MODIFY `spaceid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `adminapp_spacerequest`
--
ALTER TABLE `adminapp_spacerequest`
  MODIFY `reqid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `adminapp_spacetype`
--
ALTER TABLE `adminapp_spacetype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `companyapp_company`
--
ALTER TABLE `companyapp_company`
  MODIFY `companyid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `companyapp_job`
--
ALTER TABLE `companyapp_job`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `companyapp_payments`
--
ALTER TABLE `companyapp_payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `loginapp_login`
--
ALTER TABLE `loginapp_login`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `adminapp_complaints`
--
ALTER TABLE `adminapp_complaints`
  ADD CONSTRAINT `adminapp_complaints_company_id_6577b7b9_fk_companyap` FOREIGN KEY (`company_id`) REFERENCES `companyapp_company` (`companyid`),
  ADD CONSTRAINT `adminapp_complaints_dept_id_b132757c_fk_adminapp_` FOREIGN KEY (`dept_id`) REFERENCES `adminapp_department` (`deptid`);

--
-- Constraints for table `adminapp_department`
--
ALTER TABLE `adminapp_department`
  ADD CONSTRAINT `adminapp_department_userid_id_d0e64299_fk_loginapp_login_userid` FOREIGN KEY (`userid_id`) REFERENCES `loginapp_login` (`userid`);

--
-- Constraints for table `adminapp_space`
--
ALTER TABLE `adminapp_space`
  ADD CONSTRAINT `adminapp_space_development_type_id_9ad66454_fk_adminapp_` FOREIGN KEY (`development_type_id`) REFERENCES `adminapp_development` (`id`),
  ADD CONSTRAINT `adminapp_space_project_loc_id_38ba4267_fk_adminapp_projectloc_id` FOREIGN KEY (`project_loc_id`) REFERENCES `adminapp_projectloc` (`id`),
  ADD CONSTRAINT `adminapp_space_space_type_id_266082e5_fk_adminapp_spacetype_id` FOREIGN KEY (`space_type_id`) REFERENCES `adminapp_spacetype` (`id`);

--
-- Constraints for table `adminapp_spacerequest`
--
ALTER TABLE `adminapp_spacerequest`
  ADD CONSTRAINT `adminapp_spacereques_company_id_179db34d_fk_companyap` FOREIGN KEY (`company_id`) REFERENCES `companyapp_company` (`companyid`),
  ADD CONSTRAINT `adminapp_spacereques_spaceid_id_514d46e1_fk_adminapp_` FOREIGN KEY (`spaceid_id`) REFERENCES `adminapp_space` (`spaceid`);

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `companyapp_company`
--
ALTER TABLE `companyapp_company`
  ADD CONSTRAINT `companyapp_company_userid_id_fbf6f2a2_fk_loginapp_login_userid` FOREIGN KEY (`userid_id`) REFERENCES `loginapp_login` (`userid`);

--
-- Constraints for table `companyapp_job`
--
ALTER TABLE `companyapp_job`
  ADD CONSTRAINT `companyapp_job_company_id_f292df9e_fk_companyap` FOREIGN KEY (`company_id`) REFERENCES `companyapp_company` (`companyid`);

--
-- Constraints for table `companyapp_payments`
--
ALTER TABLE `companyapp_payments`
  ADD CONSTRAINT `companyapp_payments_company_id_9731cc77_fk_companyap` FOREIGN KEY (`company_id`) REFERENCES `companyapp_company` (`companyid`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
