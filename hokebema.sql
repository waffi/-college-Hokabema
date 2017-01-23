-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 19, 2017 at 04:30 AM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hokebema`
--

-- --------------------------------------------------------

--
-- Table structure for table `alamat`
--

CREATE TABLE `alamat` (
  `ID_ALAMAT` int(11) NOT NULL,
  `ID_PELANGGAN` int(11) NOT NULL,
  `LATITUDE` float DEFAULT NULL,
  `LONGITUDE` float DEFAULT NULL,
  `JALAN` varchar(20) DEFAULT NULL,
  `RT` int(11) DEFAULT NULL,
  `RW` int(11) DEFAULT NULL,
  `NO_RUMAH` int(11) DEFAULT NULL,
  `KECAMATAN` varchar(20) DEFAULT NULL,
  `DESA_KELURAHAN` varchar(20) DEFAULT NULL,
  `PROVINSI` varchar(20) DEFAULT NULL,
  `KOTA_KABUPATEN` varchar(20) DEFAULT NULL,
  `KODE_POS` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `alamat`
--

INSERT INTO `alamat` (`ID_ALAMAT`, `ID_PELANGGAN`, `LATITUDE`, `LONGITUDE`, `JALAN`, `RT`, `RW`, `NO_RUMAH`, `KECAMATAN`, `DESA_KELURAHAN`, `PROVINSI`, `KOTA_KABUPATEN`, `KODE_POS`) VALUES
(1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(80) NOT NULL
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
(1, 'Can add tbl menu', 1, 'add_tblmenu'),
(2, 'Can change tbl menu', 1, 'change_tblmenu'),
(3, 'Can delete tbl menu', 1, 'delete_tblmenu'),
(4, 'Can add tbl menu detail', 2, 'add_tblmenudetail'),
(5, 'Can change tbl menu detail', 2, 'change_tblmenudetail'),
(6, 'Can delete tbl menu detail', 2, 'delete_tblmenudetail'),
(7, 'Can add alamat', 3, 'add_alamat'),
(8, 'Can change alamat', 3, 'change_alamat'),
(9, 'Can delete alamat', 3, 'delete_alamat'),
(10, 'Can add berita', 4, 'add_berita'),
(11, 'Can change berita', 4, 'change_berita'),
(12, 'Can delete berita', 4, 'delete_berita'),
(13, 'Can add cart', 5, 'add_cart'),
(14, 'Can change cart', 5, 'change_cart'),
(15, 'Can delete cart', 5, 'delete_cart'),
(16, 'Can add kandungan', 6, 'add_kandungan'),
(17, 'Can change kandungan', 6, 'change_kandungan'),
(18, 'Can delete kandungan', 6, 'delete_kandungan'),
(19, 'Can add kategori', 7, 'add_kategori'),
(20, 'Can change kategori', 7, 'change_kategori'),
(21, 'Can delete kategori', 7, 'delete_kategori'),
(22, 'Can add komentar', 8, 'add_komentar'),
(23, 'Can change komentar', 8, 'change_komentar'),
(24, 'Can delete komentar', 8, 'delete_komentar'),
(25, 'Can add menu', 9, 'add_menu'),
(26, 'Can change menu', 9, 'change_menu'),
(27, 'Can delete menu', 9, 'delete_menu'),
(28, 'Can add menuhaskandungan', 10, 'add_menuhaskandungan'),
(29, 'Can change menuhaskandungan', 10, 'change_menuhaskandungan'),
(30, 'Can delete menuhaskandungan', 10, 'delete_menuhaskandungan'),
(31, 'Can add outlet', 11, 'add_outlet'),
(32, 'Can change outlet', 11, 'change_outlet'),
(33, 'Can delete outlet', 11, 'delete_outlet'),
(34, 'Can add outlethassevis', 12, 'add_outlethassevis'),
(35, 'Can change outlethassevis', 12, 'change_outlethassevis'),
(36, 'Can delete outlethassevis', 12, 'delete_outlethassevis'),
(37, 'Can add pelanggan', 13, 'add_pelanggan'),
(38, 'Can change pelanggan', 13, 'change_pelanggan'),
(39, 'Can delete pelanggan', 13, 'delete_pelanggan'),
(40, 'Can add pesanan', 14, 'add_pesanan'),
(41, 'Can change pesanan', 14, 'change_pesanan'),
(42, 'Can delete pesanan', 14, 'delete_pesanan'),
(43, 'Can add rating', 15, 'add_rating'),
(44, 'Can change rating', 15, 'change_rating'),
(45, 'Can delete rating', 15, 'delete_rating'),
(46, 'Can add servis', 16, 'add_servis'),
(47, 'Can change servis', 16, 'change_servis'),
(48, 'Can delete servis', 16, 'delete_servis'),
(49, 'Can add log entry', 17, 'add_logentry'),
(50, 'Can change log entry', 17, 'change_logentry'),
(51, 'Can delete log entry', 17, 'delete_logentry'),
(52, 'Can add user', 18, 'add_user'),
(53, 'Can change user', 18, 'change_user'),
(54, 'Can delete user', 18, 'delete_user'),
(55, 'Can add group', 19, 'add_group'),
(56, 'Can change group', 19, 'change_group'),
(57, 'Can delete group', 19, 'delete_group'),
(58, 'Can add permission', 20, 'add_permission'),
(59, 'Can change permission', 20, 'change_permission'),
(60, 'Can delete permission', 20, 'delete_permission'),
(61, 'Can add content type', 21, 'add_contenttype'),
(62, 'Can change content type', 21, 'change_contenttype'),
(63, 'Can delete content type', 21, 'delete_contenttype'),
(64, 'Can add session', 22, 'add_session'),
(65, 'Can change session', 22, 'change_session'),
(66, 'Can delete session', 22, 'delete_session');

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
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
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
-- Table structure for table `berita`
--

CREATE TABLE `berita` (
  `ID_BERITA` int(11) NOT NULL,
  `DESKRIPSI` mediumtext,
  `GAMBAR` mediumtext CHARACTER SET latin1 COLLATE latin1_bin
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `berita`
--

INSERT INTO `berita` (`ID_BERITA`, `DESKRIPSI`, `GAMBAR`) VALUES
(1, 'Kalender 2017', './assets/img/promo/bb0be-thumbnail-kalender).jpg'),
(2, 'Paket Chicken Steak', './assets/img/promo/8bc28-web-thumbnail-hot-chicken-steak.jpg'),
(3, 'Omiyage', './assets/img/promo/c1c96-thumbnail-omiyage.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `ID_CART` int(11) NOT NULL,
  `ID_PELANGGAN` int(11) NOT NULL,
  `ID_ALAMAT` int(11) NOT NULL,
  `TANGGAL` timestamp NULL DEFAULT NULL,
  `STATUS_TELAH_DIPESAN` smallint(6) DEFAULT NULL,
  `STATUS_VERIFIKASI` smallint(6) DEFAULT NULL,
  `STATUS_PEMBAYARAN` smallint(6) DEFAULT NULL,
  `STATUS_PENGIRIMAN` smallint(6) DEFAULT NULL,
  `TOTAL_KESELURUHAN` float DEFAULT NULL,
  `PAJAK` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`ID_CART`, `ID_PELANGGAN`, `ID_ALAMAT`, `TANGGAL`, `STATUS_TELAH_DIPESAN`, `STATUS_VERIFIKASI`, `STATUS_PEMBAYARAN`, `STATUS_PENGIRIMAN`, `TOTAL_KESELURUHAN`, `PAJAK`) VALUES
(1, 1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

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
(17, 'admin', 'logentry'),
(19, 'auth', 'group'),
(20, 'auth', 'permission'),
(18, 'auth', 'user'),
(21, 'contenttypes', 'contenttype'),
(3, 'ghtelectroniccenter', 'alamat'),
(4, 'ghtelectroniccenter', 'berita'),
(5, 'ghtelectroniccenter', 'cart'),
(6, 'ghtelectroniccenter', 'kandungan'),
(7, 'ghtelectroniccenter', 'kategori'),
(8, 'ghtelectroniccenter', 'komentar'),
(9, 'ghtelectroniccenter', 'menu'),
(10, 'ghtelectroniccenter', 'menuhaskandungan'),
(11, 'ghtelectroniccenter', 'outlet'),
(12, 'ghtelectroniccenter', 'outlethassevis'),
(13, 'ghtelectroniccenter', 'pelanggan'),
(14, 'ghtelectroniccenter', 'pesanan'),
(15, 'ghtelectroniccenter', 'rating'),
(16, 'ghtelectroniccenter', 'servis'),
(1, 'ghtelectroniccenter', 'tblmenu'),
(2, 'ghtelectroniccenter', 'tblmenudetail'),
(22, 'sessions', 'session');

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
(1, 'contenttypes', '0001_initial', '2017-01-12 23:22:57.321774'),
(2, 'auth', '0001_initial', '2017-01-12 23:23:10.615821'),
(3, 'admin', '0001_initial', '2017-01-12 23:23:12.959416'),
(4, 'admin', '0002_logentry_remove_auto_add', '2017-01-12 23:23:13.221268'),
(5, 'contenttypes', '0002_remove_content_type_name', '2017-01-12 23:23:15.427748'),
(6, 'auth', '0002_alter_permission_name_max_length', '2017-01-12 23:23:16.667418'),
(7, 'auth', '0003_alter_user_email_max_length', '2017-01-12 23:23:18.665115'),
(8, 'auth', '0004_alter_user_username_opts', '2017-01-12 23:23:18.737865'),
(9, 'auth', '0005_alter_user_last_login_null', '2017-01-12 23:23:19.742166'),
(10, 'auth', '0006_require_contenttypes_0002', '2017-01-12 23:23:19.812931'),
(11, 'auth', '0007_alter_validators_add_error_messages', '2017-01-12 23:23:19.868508'),
(12, 'auth', '0008_alter_user_username_max_length', '2017-01-12 23:23:21.039940'),
(13, 'ghtelectroniccenter', '0001_initial', '2017-01-12 23:23:45.753305'),
(14, 'ghtelectroniccenter', '0002_orang', '2017-01-12 23:23:46.211759'),
(15, 'ghtelectroniccenter', '0003_makan', '2017-01-12 23:23:47.010551'),
(16, 'ghtelectroniccenter', '0004_akumakan', '2017-01-12 23:23:48.949916'),
(17, 'ghtelectroniccenter', '0005_menu_menuhaskandungan', '2017-01-12 23:23:50.747322'),
(18, 'ghtelectroniccenter', '0006_auto_20170106_0804', '2017-01-12 23:23:52.112105'),
(19, 'ghtelectroniccenter', '0007_auto_20170106_0959', '2017-01-12 23:24:17.244509'),
(20, 'ghtelectroniccenter', '0008_alamat_berita_cart_kandungan_kategori_komentar_menu_menuhaskandungan_outlet_outlethassevis_pelanggan', '2017-01-12 23:24:17.379600'),
(21, 'sessions', '0001_initial', '2017-01-12 23:24:18.803858');

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
('01ibpjs91l7u8inhmhx4uvu3ztials5t', 'MmVmZmEwNGUyMDQ5ODhkYjJjZTRhZmE0N2M4MTY0MDNhZmY3YjBhMTp7Imhhc19sb2dpbiI6dHJ1ZSwiaWRfcGVsYW5nZ2FuIjoyfQ==', '2017-02-01 14:52:13.750207'),
('0cofakchwl6o1v4x2yjt8enh69x7wz18', 'MmJiYzI5YjhkN2JlMzczYjA0ZmM2M2E1ZDYwMDE5MTBkYjNkZWQxMzp7Imhhc19sb2dpbiI6dHJ1ZSwiaWRfcGVsYW5nZ2FuIjoxfQ==', '2017-02-01 18:27:51.014237'),
('19iy6t6xzq3pxjrf0vid0f9ept38l7q9', 'MmJiYzI5YjhkN2JlMzczYjA0ZmM2M2E1ZDYwMDE5MTBkYjNkZWQxMzp7Imhhc19sb2dpbiI6dHJ1ZSwiaWRfcGVsYW5nZ2FuIjoxfQ==', '2017-02-01 18:24:47.020658'),
('1p0bpuc9wphizrjlzzanzbjufuowd7lf', 'NDg4NTY4MDVkYTc0YWEwZGY4OTdlNThiYzhjMDJmNzliYmZiNjhlMTp7ImlkX3BlbGFuZ2dhbiI6MSwiaGFzX2xvZ2luIjp0cnVlfQ==', '2017-02-01 16:47:57.342971'),
('28y2vjwg84i1e4f7v7qvranuj2au5dfx', 'MmJiYzI5YjhkN2JlMzczYjA0ZmM2M2E1ZDYwMDE5MTBkYjNkZWQxMzp7Imhhc19sb2dpbiI6dHJ1ZSwiaWRfcGVsYW5nZ2FuIjoxfQ==', '2017-02-01 18:45:20.841956'),
('2nxamk5bfea4idk3ojcqvk549kelrsmb', 'MmVmZmEwNGUyMDQ5ODhkYjJjZTRhZmE0N2M4MTY0MDNhZmY3YjBhMTp7Imhhc19sb2dpbiI6dHJ1ZSwiaWRfcGVsYW5nZ2FuIjoyfQ==', '2017-02-01 14:52:15.596898'),
('2zyqve1asvc1xrj2avmu30gu1lps06iy', 'MmJiYzI5YjhkN2JlMzczYjA0ZmM2M2E1ZDYwMDE5MTBkYjNkZWQxMzp7Imhhc19sb2dpbiI6dHJ1ZSwiaWRfcGVsYW5nZ2FuIjoxfQ==', '2017-02-01 18:39:50.653582'),
('3f223grjpxo1z6b6nmcsfgcurp6gj8t7', 'MmVmZmEwNGUyMDQ5ODhkYjJjZTRhZmE0N2M4MTY0MDNhZmY3YjBhMTp7Imhhc19sb2dpbiI6dHJ1ZSwiaWRfcGVsYW5nZ2FuIjoyfQ==', '2017-02-01 14:52:22.898132'),
('40yj15s3njukxgo1egco98znkvuoyaco', 'MmJiYzI5YjhkN2JlMzczYjA0ZmM2M2E1ZDYwMDE5MTBkYjNkZWQxMzp7Imhhc19sb2dpbiI6dHJ1ZSwiaWRfcGVsYW5nZ2FuIjoxfQ==', '2017-02-02 02:18:44.766023'),
('4dze1rf99q62u8sz7n5txmib6ifdllck', 'ZWMzMzc0NjRiNTYyZGZlNjY3ODFiYzJhMmQxNmJiODI1NWU3ZWEzMDp7ImlkX3BlbGFuZ2dhbiI6MiwiaGFzX2xvZ2luIjp0cnVlfQ==', '2017-02-01 15:16:59.248500'),
('4j7fxecmxvvyy9x9wy8qm6izsqbv2ca8', 'MmJiYzI5YjhkN2JlMzczYjA0ZmM2M2E1ZDYwMDE5MTBkYjNkZWQxMzp7Imhhc19sb2dpbiI6dHJ1ZSwiaWRfcGVsYW5nZ2FuIjoxfQ==', '2017-02-01 14:49:30.482791'),
('4l3537jf8zx8pl49gfm1a3voj77izlz9', 'MmVmZmEwNGUyMDQ5ODhkYjJjZTRhZmE0N2M4MTY0MDNhZmY3YjBhMTp7Imhhc19sb2dpbiI6dHJ1ZSwiaWRfcGVsYW5nZ2FuIjoyfQ==', '2017-02-01 14:52:25.199193'),
('52ymgtohseollde16ryzifpccnp594dp', 'MmVmZmEwNGUyMDQ5ODhkYjJjZTRhZmE0N2M4MTY0MDNhZmY3YjBhMTp7Imhhc19sb2dpbiI6dHJ1ZSwiaWRfcGVsYW5nZ2FuIjoyfQ==', '2017-02-01 14:52:28.857335'),
('5gslk9o1t13nnejsefbkn8jie3io87r2', 'NDg4NTY4MDVkYTc0YWEwZGY4OTdlNThiYzhjMDJmNzliYmZiNjhlMTp7ImlkX3BlbGFuZ2dhbiI6MSwiaGFzX2xvZ2luIjp0cnVlfQ==', '2017-02-01 16:48:14.985622'),
('5gxm6vzfvqdcjon9rf49ivjrn3pf6b9p', 'MmJiYzI5YjhkN2JlMzczYjA0ZmM2M2E1ZDYwMDE5MTBkYjNkZWQxMzp7Imhhc19sb2dpbiI6dHJ1ZSwiaWRfcGVsYW5nZ2FuIjoxfQ==', '2017-02-01 18:45:23.777847'),
('63htu816sviqbut6ig123zx234pykrbj', 'MmJiYzI5YjhkN2JlMzczYjA0ZmM2M2E1ZDYwMDE5MTBkYjNkZWQxMzp7Imhhc19sb2dpbiI6dHJ1ZSwiaWRfcGVsYW5nZ2FuIjoxfQ==', '2017-02-01 18:47:18.560293'),
('6n290gmht9nd59eaod2pc1eg0vr2qhxq', 'NDg4NTY4MDVkYTc0YWEwZGY4OTdlNThiYzhjMDJmNzliYmZiNjhlMTp7ImlkX3BlbGFuZ2dhbiI6MSwiaGFzX2xvZ2luIjp0cnVlfQ==', '2017-02-01 16:44:58.881051'),
('71z1qhw3c9qensxu1t7ngwf89hsid2qn', 'MmJiYzI5YjhkN2JlMzczYjA0ZmM2M2E1ZDYwMDE5MTBkYjNkZWQxMzp7Imhhc19sb2dpbiI6dHJ1ZSwiaWRfcGVsYW5nZ2FuIjoxfQ==', '2017-02-01 14:49:30.994751'),
('749cqs8onsfj451l9rdg0bd1vdxcpogy', 'MmVmZmEwNGUyMDQ5ODhkYjJjZTRhZmE0N2M4MTY0MDNhZmY3YjBhMTp7Imhhc19sb2dpbiI6dHJ1ZSwiaWRfcGVsYW5nZ2FuIjoyfQ==', '2017-02-01 14:52:20.375991'),
('7ibubytzpiog5xc5gsqys7ska8gw5dfo', 'NDg4NTY4MDVkYTc0YWEwZGY4OTdlNThiYzhjMDJmNzliYmZiNjhlMTp7ImlkX3BlbGFuZ2dhbiI6MSwiaGFzX2xvZ2luIjp0cnVlfQ==', '2017-02-01 16:32:10.665106'),
('7uf22dw8zlhcgzwgr45odjzh4cs4kuqp', 'MmVmZmEwNGUyMDQ5ODhkYjJjZTRhZmE0N2M4MTY0MDNhZmY3YjBhMTp7Imhhc19sb2dpbiI6dHJ1ZSwiaWRfcGVsYW5nZ2FuIjoyfQ==', '2017-02-01 14:52:18.650249'),
('7vru5r13nf7n9co69wa94we91m5p8kb0', 'MmJiYzI5YjhkN2JlMzczYjA0ZmM2M2E1ZDYwMDE5MTBkYjNkZWQxMzp7Imhhc19sb2dpbiI6dHJ1ZSwiaWRfcGVsYW5nZ2FuIjoxfQ==', '2017-02-01 18:22:42.448289'),
('81goi556w1wxm2lwz16fyto8yo4d1wir', 'MmVmZmEwNGUyMDQ5ODhkYjJjZTRhZmE0N2M4MTY0MDNhZmY3YjBhMTp7Imhhc19sb2dpbiI6dHJ1ZSwiaWRfcGVsYW5nZ2FuIjoyfQ==', '2017-02-01 14:52:26.528042'),
('84zslhgqyt2rzhippsw84r34m1v63uv9', 'MmVmZmEwNGUyMDQ5ODhkYjJjZTRhZmE0N2M4MTY0MDNhZmY3YjBhMTp7Imhhc19sb2dpbiI6dHJ1ZSwiaWRfcGVsYW5nZ2FuIjoyfQ==', '2017-02-01 14:52:18.906531'),
('88i8nvfuig2v6z3t839as0uu5rs0bn5r', 'MmJiYzI5YjhkN2JlMzczYjA0ZmM2M2E1ZDYwMDE5MTBkYjNkZWQxMzp7Imhhc19sb2dpbiI6dHJ1ZSwiaWRfcGVsYW5nZ2FuIjoxfQ==', '2017-02-01 18:45:32.890995'),
('8hb4vw56o46n40ofhuxjs3dr62jvkq2e', 'MmJiYzI5YjhkN2JlMzczYjA0ZmM2M2E1ZDYwMDE5MTBkYjNkZWQxMzp7Imhhc19sb2dpbiI6dHJ1ZSwiaWRfcGVsYW5nZ2FuIjoxfQ==', '2017-02-01 18:40:04.631225'),
('8hi0kesmytx98r5py9b97dnzeyv34aol', 'MmJiYzI5YjhkN2JlMzczYjA0ZmM2M2E1ZDYwMDE5MTBkYjNkZWQxMzp7Imhhc19sb2dpbiI6dHJ1ZSwiaWRfcGVsYW5nZ2FuIjoxfQ==', '2017-02-01 18:19:24.632572'),
('8hrvwlv4yrek4tgnvx615gkoh138li22', 'MmVmZmEwNGUyMDQ5ODhkYjJjZTRhZmE0N2M4MTY0MDNhZmY3YjBhMTp7Imhhc19sb2dpbiI6dHJ1ZSwiaWRfcGVsYW5nZ2FuIjoyfQ==', '2017-02-01 14:51:57.263257'),
('9525v5l7qx8xx90zkf6pobdui31ds7oq', 'MmVmZmEwNGUyMDQ5ODhkYjJjZTRhZmE0N2M4MTY0MDNhZmY3YjBhMTp7Imhhc19sb2dpbiI6dHJ1ZSwiaWRfcGVsYW5nZ2FuIjoyfQ==', '2017-02-01 14:52:19.405147'),
('99kzl0ucrllx0yx00a07j9gqfpihiiac', 'MmJiYzI5YjhkN2JlMzczYjA0ZmM2M2E1ZDYwMDE5MTBkYjNkZWQxMzp7Imhhc19sb2dpbiI6dHJ1ZSwiaWRfcGVsYW5nZ2FuIjoxfQ==', '2017-02-01 13:32:50.061428'),
('9aavf7a2fte44xu9ixi3i0exuefkqisi', 'MmVmZmEwNGUyMDQ5ODhkYjJjZTRhZmE0N2M4MTY0MDNhZmY3YjBhMTp7Imhhc19sb2dpbiI6dHJ1ZSwiaWRfcGVsYW5nZ2FuIjoyfQ==', '2017-02-01 14:52:20.634770'),
('9gyo23z0nyk9e1ki717x2o6cnxhuisaj', 'MmJiYzI5YjhkN2JlMzczYjA0ZmM2M2E1ZDYwMDE5MTBkYjNkZWQxMzp7Imhhc19sb2dpbiI6dHJ1ZSwiaWRfcGVsYW5nZ2FuIjoxfQ==', '2017-02-01 13:59:55.736440'),
('9zqk16yunodo0x4zjx329m334i8317g6', 'NDg4NTY4MDVkYTc0YWEwZGY4OTdlNThiYzhjMDJmNzliYmZiNjhlMTp7ImlkX3BlbGFuZ2dhbiI6MSwiaGFzX2xvZ2luIjp0cnVlfQ==', '2017-02-01 16:48:39.198957'),
('agb1dbkkqd3gciq19gq0aq557h3ewutm', 'MmJiYzI5YjhkN2JlMzczYjA0ZmM2M2E1ZDYwMDE5MTBkYjNkZWQxMzp7Imhhc19sb2dpbiI6dHJ1ZSwiaWRfcGVsYW5nZ2FuIjoxfQ==', '2017-02-01 18:51:28.347142'),
('am3bfozv809l578cy8x4ero9ks50siqf', 'MmVmZmEwNGUyMDQ5ODhkYjJjZTRhZmE0N2M4MTY0MDNhZmY3YjBhMTp7Imhhc19sb2dpbiI6dHJ1ZSwiaWRfcGVsYW5nZ2FuIjoyfQ==', '2017-02-01 14:52:22.669211'),
('b8p9nftx9pwbdfug4mn3hh0e2rll6ylm', 'MmVmZmEwNGUyMDQ5ODhkYjJjZTRhZmE0N2M4MTY0MDNhZmY3YjBhMTp7Imhhc19sb2dpbiI6dHJ1ZSwiaWRfcGVsYW5nZ2FuIjoyfQ==', '2017-02-01 14:52:27.285943'),
('bjzwwgc8hl7hrkkwloj4kfqme803gel9', 'MmVmZmEwNGUyMDQ5ODhkYjJjZTRhZmE0N2M4MTY0MDNhZmY3YjBhMTp7Imhhc19sb2dpbiI6dHJ1ZSwiaWRfcGVsYW5nZ2FuIjoyfQ==', '2017-02-01 14:52:23.431346'),
('bx2rqiiw24n80uxqeb6o3vejmqboacje', 'NDg4NTY4MDVkYTc0YWEwZGY4OTdlNThiYzhjMDJmNzliYmZiNjhlMTp7ImlkX3BlbGFuZ2dhbiI6MSwiaGFzX2xvZ2luIjp0cnVlfQ==', '2017-02-01 16:47:56.987882'),
('c3cdxrjy1dts4rbc2fetoshq591300vc', 'MmVmZmEwNGUyMDQ5ODhkYjJjZTRhZmE0N2M4MTY0MDNhZmY3YjBhMTp7Imhhc19sb2dpbiI6dHJ1ZSwiaWRfcGVsYW5nZ2FuIjoyfQ==', '2017-02-01 14:52:21.393281'),
('c6xcorotbbybhohtoawfdhkqnj7up52w', 'NDg4NTY4MDVkYTc0YWEwZGY4OTdlNThiYzhjMDJmNzliYmZiNjhlMTp7ImlkX3BlbGFuZ2dhbiI6MSwiaGFzX2xvZ2luIjp0cnVlfQ==', '2017-02-01 16:32:06.848073'),
('cknzgxoe4fbivzmuu7nfanfgi7f8gwdb', 'MmJiYzI5YjhkN2JlMzczYjA0ZmM2M2E1ZDYwMDE5MTBkYjNkZWQxMzp7Imhhc19sb2dpbiI6dHJ1ZSwiaWRfcGVsYW5nZ2FuIjoxfQ==', '2017-02-01 18:42:06.907612'),
('clte3m3ifjx4qihgazdexp8lcyyrvi9e', 'MmVmZmEwNGUyMDQ5ODhkYjJjZTRhZmE0N2M4MTY0MDNhZmY3YjBhMTp7Imhhc19sb2dpbiI6dHJ1ZSwiaWRfcGVsYW5nZ2FuIjoyfQ==', '2017-02-01 14:52:16.600400'),
('cmbdibwzzrlzmc3m4iebeeu7golzqeqg', 'MmJiYzI5YjhkN2JlMzczYjA0ZmM2M2E1ZDYwMDE5MTBkYjNkZWQxMzp7Imhhc19sb2dpbiI6dHJ1ZSwiaWRfcGVsYW5nZ2FuIjoxfQ==', '2017-02-02 03:12:42.283006'),
('cu32amxb9v65hw5r3llh3gu6tqgf07k1', 'MmVmZmEwNGUyMDQ5ODhkYjJjZTRhZmE0N2M4MTY0MDNhZmY3YjBhMTp7Imhhc19sb2dpbiI6dHJ1ZSwiaWRfcGVsYW5nZ2FuIjoyfQ==', '2017-02-01 14:52:17.474816'),
('fe2fm25mwwqm1ohps02h43vdnsm5yqng', 'NDg4NTY4MDVkYTc0YWEwZGY4OTdlNThiYzhjMDJmNzliYmZiNjhlMTp7ImlkX3BlbGFuZ2dhbiI6MSwiaGFzX2xvZ2luIjp0cnVlfQ==', '2017-02-01 15:28:59.533846'),
('ffz8osx6hkpwb0wlbs8jhblgvfaj1f6l', 'MmVmZmEwNGUyMDQ5ODhkYjJjZTRhZmE0N2M4MTY0MDNhZmY3YjBhMTp7Imhhc19sb2dpbiI6dHJ1ZSwiaWRfcGVsYW5nZ2FuIjoyfQ==', '2017-02-01 14:52:18.421524'),
('fqujjqevdsry0b7wzdkes1l58ekli3ol', 'MmVmZmEwNGUyMDQ5ODhkYjJjZTRhZmE0N2M4MTY0MDNhZmY3YjBhMTp7Imhhc19sb2dpbiI6dHJ1ZSwiaWRfcGVsYW5nZ2FuIjoyfQ==', '2017-02-01 14:52:13.519928'),
('gkmiopiqjh3dfxchqrczihthuueditxc', 'MmJiYzI5YjhkN2JlMzczYjA0ZmM2M2E1ZDYwMDE5MTBkYjNkZWQxMzp7Imhhc19sb2dpbiI6dHJ1ZSwiaWRfcGVsYW5nZ2FuIjoxfQ==', '2017-02-01 18:43:33.658939'),
('go7avwxwpea0qpjwm06azngeov1lrupw', 'MmJiYzI5YjhkN2JlMzczYjA0ZmM2M2E1ZDYwMDE5MTBkYjNkZWQxMzp7Imhhc19sb2dpbiI6dHJ1ZSwiaWRfcGVsYW5nZ2FuIjoxfQ==', '2017-02-01 13:24:29.399983'),
('gw0kzcjq31gj54p5oh78wchpy0r1bevl', 'MmVmZmEwNGUyMDQ5ODhkYjJjZTRhZmE0N2M4MTY0MDNhZmY3YjBhMTp7Imhhc19sb2dpbiI6dHJ1ZSwiaWRfcGVsYW5nZ2FuIjoyfQ==', '2017-02-01 14:52:27.529660'),
('h050n6pd7zdhavtqooaraqmdkhm6x4ov', 'NDg4NTY4MDVkYTc0YWEwZGY4OTdlNThiYzhjMDJmNzliYmZiNjhlMTp7ImlkX3BlbGFuZ2dhbiI6MSwiaGFzX2xvZ2luIjp0cnVlfQ==', '2017-02-01 16:46:19.043668'),
('h2bz6cyv6jaon8mlwjtdzp0k456m5fgb', 'NDg4NTY4MDVkYTc0YWEwZGY4OTdlNThiYzhjMDJmNzliYmZiNjhlMTp7ImlkX3BlbGFuZ2dhbiI6MSwiaGFzX2xvZ2luIjp0cnVlfQ==', '2017-02-01 15:17:19.609384'),
('htqj9bwt1qy1qrl2q4a3pkvj6ntr88jv', 'MmVmZmEwNGUyMDQ5ODhkYjJjZTRhZmE0N2M4MTY0MDNhZmY3YjBhMTp7Imhhc19sb2dpbiI6dHJ1ZSwiaWRfcGVsYW5nZ2FuIjoyfQ==', '2017-02-01 14:52:16.341029'),
('i75wyfprfvk3u1tsyqd4m4lk358pcsgs', 'NDg4NTY4MDVkYTc0YWEwZGY4OTdlNThiYzhjMDJmNzliYmZiNjhlMTp7ImlkX3BlbGFuZ2dhbiI6MSwiaGFzX2xvZ2luIjp0cnVlfQ==', '2017-02-01 15:28:59.745390'),
('ihanvef8ibbvcrayfcry1k2j7tnjcz6b', 'MmJiYzI5YjhkN2JlMzczYjA0ZmM2M2E1ZDYwMDE5MTBkYjNkZWQxMzp7Imhhc19sb2dpbiI6dHJ1ZSwiaWRfcGVsYW5nZ2FuIjoxfQ==', '2017-02-01 18:58:28.507982'),
('ir3rf4bngisusedcqte5yh4rkxoy599o', 'NDg4NTY4MDVkYTc0YWEwZGY4OTdlNThiYzhjMDJmNzliYmZiNjhlMTp7ImlkX3BlbGFuZ2dhbiI6MSwiaGFzX2xvZ2luIjp0cnVlfQ==', '2017-02-01 16:49:02.753557'),
('itprloc6uzmy8fxtl3sb19rgglcaqarr', 'NDg4NTY4MDVkYTc0YWEwZGY4OTdlNThiYzhjMDJmNzliYmZiNjhlMTp7ImlkX3BlbGFuZ2dhbiI6MSwiaGFzX2xvZ2luIjp0cnVlfQ==', '2017-02-01 16:32:11.246099'),
('j34el60dph73wfl1b05g42jhr3i7jgmg', 'MmVmZmEwNGUyMDQ5ODhkYjJjZTRhZmE0N2M4MTY0MDNhZmY3YjBhMTp7Imhhc19sb2dpbiI6dHJ1ZSwiaWRfcGVsYW5nZ2FuIjoyfQ==', '2017-02-01 14:52:23.177352'),
('jdge98oyqzz1aigrn9srazkvc0g9ehta', 'MmVmZmEwNGUyMDQ5ODhkYjJjZTRhZmE0N2M4MTY0MDNhZmY3YjBhMTp7Imhhc19sb2dpbiI6dHJ1ZSwiaWRfcGVsYW5nZ2FuIjoyfQ==', '2017-02-01 14:52:21.142529'),
('jhfdgf00c6sbo72x4zya3vbytbmnbqs1', 'MmJiYzI5YjhkN2JlMzczYjA0ZmM2M2E1ZDYwMDE5MTBkYjNkZWQxMzp7Imhhc19sb2dpbiI6dHJ1ZSwiaWRfcGVsYW5nZ2FuIjoxfQ==', '2017-02-01 18:45:23.298975'),
('khqwzcyjvzjcu99xjwsix1db457wc8fb', 'MmVmZmEwNGUyMDQ5ODhkYjJjZTRhZmE0N2M4MTY0MDNhZmY3YjBhMTp7Imhhc19sb2dpbiI6dHJ1ZSwiaWRfcGVsYW5nZ2FuIjoyfQ==', '2017-02-01 14:52:17.736712'),
('kkctdugtakuohngxc66fte5r2u1a4fw8', 'MmVmZmEwNGUyMDQ5ODhkYjJjZTRhZmE0N2M4MTY0MDNhZmY3YjBhMTp7Imhhc19sb2dpbiI6dHJ1ZSwiaWRfcGVsYW5nZ2FuIjoyfQ==', '2017-02-01 14:52:29.102756'),
('kqf3f3yhhkponiis541rymu03g9hzs9p', 'MmJiYzI5YjhkN2JlMzczYjA0ZmM2M2E1ZDYwMDE5MTBkYjNkZWQxMzp7Imhhc19sb2dpbiI6dHJ1ZSwiaWRfcGVsYW5nZ2FuIjoxfQ==', '2017-02-02 02:01:05.126988'),
('la5vjkoh416slrnc83yd6m36dmboxy90', 'MmJiYzI5YjhkN2JlMzczYjA0ZmM2M2E1ZDYwMDE5MTBkYjNkZWQxMzp7Imhhc19sb2dpbiI6dHJ1ZSwiaWRfcGVsYW5nZ2FuIjoxfQ==', '2017-02-01 14:49:30.724468'),
('lbtpmacah9ece7uzh1nrgueykuulefd7', 'NDg4NTY4MDVkYTc0YWEwZGY4OTdlNThiYzhjMDJmNzliYmZiNjhlMTp7ImlkX3BlbGFuZ2dhbiI6MSwiaGFzX2xvZ2luIjp0cnVlfQ==', '2017-02-01 16:32:10.413926'),
('lvalt2npvyfdncqcbxnpwfttal7hceda', 'MmJiYzI5YjhkN2JlMzczYjA0ZmM2M2E1ZDYwMDE5MTBkYjNkZWQxMzp7Imhhc19sb2dpbiI6dHJ1ZSwiaWRfcGVsYW5nZ2FuIjoxfQ==', '2017-02-01 14:49:31.200310'),
('lxot5glgs5xirpw1bemjf8o0wnduuqwr', 'MDQ2YmMwMjA3ZTI4N2Y2MjNiNGZjMzY3NjM4ZDM4MWZjNjdiMmE4MTp7ImlkX3BlbGFuZ2dhbiI6MywiaGFzX2xvZ2luIjp0cnVlfQ==', '2017-02-01 16:04:57.090361'),
('m1tror1b59kxmrhsn10nbdxjeed23o3c', 'MmJiYzI5YjhkN2JlMzczYjA0ZmM2M2E1ZDYwMDE5MTBkYjNkZWQxMzp7Imhhc19sb2dpbiI6dHJ1ZSwiaWRfcGVsYW5nZ2FuIjoxfQ==', '2017-02-01 14:10:01.200776'),
('m7m4xdj212y4xnnk2czyxvti1sjsuomt', 'MmJiYzI5YjhkN2JlMzczYjA0ZmM2M2E1ZDYwMDE5MTBkYjNkZWQxMzp7Imhhc19sb2dpbiI6dHJ1ZSwiaWRfcGVsYW5nZ2FuIjoxfQ==', '2017-02-01 14:45:44.483728'),
('mcj1k91b4lrh7c03sstdmircp7g2pp83', 'MmVmZmEwNGUyMDQ5ODhkYjJjZTRhZmE0N2M4MTY0MDNhZmY3YjBhMTp7Imhhc19sb2dpbiI6dHJ1ZSwiaWRfcGVsYW5nZ2FuIjoyfQ==', '2017-02-01 14:52:26.253426'),
('mm2ck9dlv6x4jyiy3u5m4dwqoiybvbe7', 'MmVmZmEwNGUyMDQ5ODhkYjJjZTRhZmE0N2M4MTY0MDNhZmY3YjBhMTp7Imhhc19sb2dpbiI6dHJ1ZSwiaWRfcGVsYW5nZ2FuIjoyfQ==', '2017-02-01 14:52:26.041958'),
('mn45e9cungre9i6nxcp2ymjup81zffjg', 'MmVmZmEwNGUyMDQ5ODhkYjJjZTRhZmE0N2M4MTY0MDNhZmY3YjBhMTp7Imhhc19sb2dpbiI6dHJ1ZSwiaWRfcGVsYW5nZ2FuIjoyfQ==', '2017-02-01 14:52:25.745842'),
('n11sib8oerksykctj7q5g64g0rw02ci3', 'MmVmZmEwNGUyMDQ5ODhkYjJjZTRhZmE0N2M4MTY0MDNhZmY3YjBhMTp7Imhhc19sb2dpbiI6dHJ1ZSwiaWRfcGVsYW5nZ2FuIjoyfQ==', '2017-02-01 14:52:28.360961'),
('nahxcpegrck87f72r4ck9gdjonpbr626', 'MmVmZmEwNGUyMDQ5ODhkYjJjZTRhZmE0N2M4MTY0MDNhZmY3YjBhMTp7Imhhc19sb2dpbiI6dHJ1ZSwiaWRfcGVsYW5nZ2FuIjoyfQ==', '2017-02-01 14:52:28.625157'),
('nqftf69czn8ol5unu0pdvdly0h1krofn', 'MmVmZmEwNGUyMDQ5ODhkYjJjZTRhZmE0N2M4MTY0MDNhZmY3YjBhMTp7Imhhc19sb2dpbiI6dHJ1ZSwiaWRfcGVsYW5nZ2FuIjoyfQ==', '2017-02-01 14:52:21.870472'),
('onfs0vxbyym026vl3pq7via1xxzsoacl', 'MmVmZmEwNGUyMDQ5ODhkYjJjZTRhZmE0N2M4MTY0MDNhZmY3YjBhMTp7Imhhc19sb2dpbiI6dHJ1ZSwiaWRfcGVsYW5nZ2FuIjoyfQ==', '2017-02-01 14:52:26.786409'),
('opefpve88ejvw8328xco1il5gvzknqv6', 'MmVmZmEwNGUyMDQ5ODhkYjJjZTRhZmE0N2M4MTY0MDNhZmY3YjBhMTp7Imhhc19sb2dpbiI6dHJ1ZSwiaWRfcGVsYW5nZ2FuIjoyfQ==', '2017-02-01 14:52:28.093765'),
('ot6e63eej2s7fcsb7jsistfj6vcjapze', 'MmJiYzI5YjhkN2JlMzczYjA0ZmM2M2E1ZDYwMDE5MTBkYjNkZWQxMzp7Imhhc19sb2dpbiI6dHJ1ZSwiaWRfcGVsYW5nZ2FuIjoxfQ==', '2017-02-01 14:48:52.991470'),
('oz7p5clf5hbvahb26jy8o3kdv2d2kv6z', 'MmVmZmEwNGUyMDQ5ODhkYjJjZTRhZmE0N2M4MTY0MDNhZmY3YjBhMTp7Imhhc19sb2dpbiI6dHJ1ZSwiaWRfcGVsYW5nZ2FuIjoyfQ==', '2017-02-01 14:52:16.911514'),
('p5fa58rf24ijj7r1zocfp4gacb91cddn', 'MmJiYzI5YjhkN2JlMzczYjA0ZmM2M2E1ZDYwMDE5MTBkYjNkZWQxMzp7Imhhc19sb2dpbiI6dHJ1ZSwiaWRfcGVsYW5nZ2FuIjoxfQ==', '2017-02-01 18:45:25.632254'),
('pq2k12zh1i4jrjbmsamkjoobcoqfru8i', 'MmJiYzI5YjhkN2JlMzczYjA0ZmM2M2E1ZDYwMDE5MTBkYjNkZWQxMzp7Imhhc19sb2dpbiI6dHJ1ZSwiaWRfcGVsYW5nZ2FuIjoxfQ==', '2017-02-01 13:24:46.387955'),
('pqk8sy2j2cnu46prqwqi7fjc3a5daxrx', 'MmVmZmEwNGUyMDQ5ODhkYjJjZTRhZmE0N2M4MTY0MDNhZmY3YjBhMTp7Imhhc19sb2dpbiI6dHJ1ZSwiaWRfcGVsYW5nZ2FuIjoyfQ==', '2017-02-01 14:52:20.165174'),
('pxuysdo16n39nyiepea5ro34kjcj0ppp', 'NDg4NTY4MDVkYTc0YWEwZGY4OTdlNThiYzhjMDJmNzliYmZiNjhlMTp7ImlkX3BlbGFuZ2dhbiI6MSwiaGFzX2xvZ2luIjp0cnVlfQ==', '2017-02-01 16:24:33.293864'),
('qbt18snycfx5a9kykg0mnaxhufhi9sij', 'MmVmZmEwNGUyMDQ5ODhkYjJjZTRhZmE0N2M4MTY0MDNhZmY3YjBhMTp7Imhhc19sb2dpbiI6dHJ1ZSwiaWRfcGVsYW5nZ2FuIjoyfQ==', '2017-02-01 14:52:14.188946'),
('qki92q9g72alkopttatnxnaym5nf2grr', 'MmVmZmEwNGUyMDQ5ODhkYjJjZTRhZmE0N2M4MTY0MDNhZmY3YjBhMTp7Imhhc19sb2dpbiI6dHJ1ZSwiaWRfcGVsYW5nZ2FuIjoyfQ==', '2017-02-01 14:52:19.458695'),
('qyee3ck52xgd4af7yiknbkpi1i70rhto', 'MmVmZmEwNGUyMDQ5ODhkYjJjZTRhZmE0N2M4MTY0MDNhZmY3YjBhMTp7Imhhc19sb2dpbiI6dHJ1ZSwiaWRfcGVsYW5nZ2FuIjoyfQ==', '2017-02-01 14:52:25.490649'),
('r1nsrbobgnrsx21prf73kh7a43im5gnn', 'NDg4NTY4MDVkYTc0YWEwZGY4OTdlNThiYzhjMDJmNzliYmZiNjhlMTp7ImlkX3BlbGFuZ2dhbiI6MSwiaGFzX2xvZ2luIjp0cnVlfQ==', '2017-02-01 15:28:59.922523'),
('ra7wf7gflvz1z6eu4hx800rmdtib2zy5', 'MmJiYzI5YjhkN2JlMzczYjA0ZmM2M2E1ZDYwMDE5MTBkYjNkZWQxMzp7Imhhc19sb2dpbiI6dHJ1ZSwiaWRfcGVsYW5nZ2FuIjoxfQ==', '2017-02-01 14:38:46.688679'),
('rhpefzj4deij4vqkx055eet0021z0qpg', 'NDg4NTY4MDVkYTc0YWEwZGY4OTdlNThiYzhjMDJmNzliYmZiNjhlMTp7ImlkX3BlbGFuZ2dhbiI6MSwiaGFzX2xvZ2luIjp0cnVlfQ==', '2017-02-01 15:28:59.340463'),
('rzd1sulpyd95x65nm0lklifob7stz83e', 'MmJiYzI5YjhkN2JlMzczYjA0ZmM2M2E1ZDYwMDE5MTBkYjNkZWQxMzp7Imhhc19sb2dpbiI6dHJ1ZSwiaWRfcGVsYW5nZ2FuIjoxfQ==', '2017-02-01 14:48:29.323461'),
('s2mt9ludju7pyzfig578wxw039dndg4v', 'MmJiYzI5YjhkN2JlMzczYjA0ZmM2M2E1ZDYwMDE5MTBkYjNkZWQxMzp7Imhhc19sb2dpbiI6dHJ1ZSwiaWRfcGVsYW5nZ2FuIjoxfQ==', '2017-02-01 18:52:25.767823'),
('s3limy5e4gfqfh4t75miogx3do5varat', 'MmVmZmEwNGUyMDQ5ODhkYjJjZTRhZmE0N2M4MTY0MDNhZmY3YjBhMTp7Imhhc19sb2dpbiI6dHJ1ZSwiaWRfcGVsYW5nZ2FuIjoyfQ==', '2017-02-01 14:52:23.751356'),
('sic641xhtij9b3oiai5z2ialnazvudpv', 'MmJiYzI5YjhkN2JlMzczYjA0ZmM2M2E1ZDYwMDE5MTBkYjNkZWQxMzp7Imhhc19sb2dpbiI6dHJ1ZSwiaWRfcGVsYW5nZ2FuIjoxfQ==', '2017-02-01 18:22:38.879029'),
('skflarzptlkh1eov0waxaeu1st3jv9sh', 'MmVmZmEwNGUyMDQ5ODhkYjJjZTRhZmE0N2M4MTY0MDNhZmY3YjBhMTp7Imhhc19sb2dpbiI6dHJ1ZSwiaWRfcGVsYW5nZ2FuIjoyfQ==', '2017-02-01 14:52:24.942140'),
('sq5voupx7coxjros1eimsv8oyiojgzj2', 'NDg4NTY4MDVkYTc0YWEwZGY4OTdlNThiYzhjMDJmNzliYmZiNjhlMTp7ImlkX3BlbGFuZ2dhbiI6MSwiaGFzX2xvZ2luIjp0cnVlfQ==', '2017-02-01 16:32:10.942927'),
('tf3qwydvcjhfghnurrqs1eu28a04zhb9', 'NDg4NTY4MDVkYTc0YWEwZGY4OTdlNThiYzhjMDJmNzliYmZiNjhlMTp7ImlkX3BlbGFuZ2dhbiI6MSwiaGFzX2xvZ2luIjp0cnVlfQ==', '2017-02-01 15:29:00.040221'),
('tjereg3iuegq2ytpiyy6tgocsu5xh9v3', 'MmVmZmEwNGUyMDQ5ODhkYjJjZTRhZmE0N2M4MTY0MDNhZmY3YjBhMTp7Imhhc19sb2dpbiI6dHJ1ZSwiaWRfcGVsYW5nZ2FuIjoyfQ==', '2017-02-01 14:52:13.943417'),
('tmaa5mdn9avaq6cqruu5yglm32v8uu29', 'MmVmZmEwNGUyMDQ5ODhkYjJjZTRhZmE0N2M4MTY0MDNhZmY3YjBhMTp7Imhhc19sb2dpbiI6dHJ1ZSwiaWRfcGVsYW5nZ2FuIjoyfQ==', '2017-02-01 14:52:17.195229'),
('txwt90hsww3wczv06457n33si1660f61', 'MmVmZmEwNGUyMDQ5ODhkYjJjZTRhZmE0N2M4MTY0MDNhZmY3YjBhMTp7Imhhc19sb2dpbiI6dHJ1ZSwiaWRfcGVsYW5nZ2FuIjoyfQ==', '2017-02-01 14:52:27.025680'),
('u6yo7sniefd4xygfk1urp5k5hhy17wzg', 'MmJiYzI5YjhkN2JlMzczYjA0ZmM2M2E1ZDYwMDE5MTBkYjNkZWQxMzp7Imhhc19sb2dpbiI6dHJ1ZSwiaWRfcGVsYW5nZ2FuIjoxfQ==', '2017-02-01 18:19:23.441831'),
('uhi5jc63jtw5b8kvlz74s28tqcxtdn2u', 'MmVmZmEwNGUyMDQ5ODhkYjJjZTRhZmE0N2M4MTY0MDNhZmY3YjBhMTp7Imhhc19sb2dpbiI6dHJ1ZSwiaWRfcGVsYW5nZ2FuIjoyfQ==', '2017-02-01 14:52:27.850372'),
('uojwdwoi2uvtq57cfa2y88qvcymwg3qz', 'MmVmZmEwNGUyMDQ5ODhkYjJjZTRhZmE0N2M4MTY0MDNhZmY3YjBhMTp7Imhhc19sb2dpbiI6dHJ1ZSwiaWRfcGVsYW5nZ2FuIjoyfQ==', '2017-02-01 14:52:22.355976'),
('ut4ifjb7o13wiqjlusle40vxs3rtadti', 'MmVmZmEwNGUyMDQ5ODhkYjJjZTRhZmE0N2M4MTY0MDNhZmY3YjBhMTp7Imhhc19sb2dpbiI6dHJ1ZSwiaWRfcGVsYW5nZ2FuIjoyfQ==', '2017-02-01 14:52:13.321892'),
('uzyds1tesj63538l8sj5judmt943q5sb', 'MmVmZmEwNGUyMDQ5ODhkYjJjZTRhZmE0N2M4MTY0MDNhZmY3YjBhMTp7Imhhc19sb2dpbiI6dHJ1ZSwiaWRfcGVsYW5nZ2FuIjoyfQ==', '2017-02-01 14:52:24.614138'),
('vi3xq6rmhjle28gnly1ydrbzp4m3g3d0', 'NDg4NTY4MDVkYTc0YWEwZGY4OTdlNThiYzhjMDJmNzliYmZiNjhlMTp7ImlkX3BlbGFuZ2dhbiI6MSwiaGFzX2xvZ2luIjp0cnVlfQ==', '2017-02-01 16:32:10.161540'),
('vxijw4ukmlyba8snaiwiwu9a5cm7a7fi', 'MmVmZmEwNGUyMDQ5ODhkYjJjZTRhZmE0N2M4MTY0MDNhZmY3YjBhMTp7Imhhc19sb2dpbiI6dHJ1ZSwiaWRfcGVsYW5nZ2FuIjoyfQ==', '2017-02-01 14:52:24.054144'),
('vxq8lczwc6bcjccphaeym1h8gb7f2dtb', 'MmVmZmEwNGUyMDQ5ODhkYjJjZTRhZmE0N2M4MTY0MDNhZmY3YjBhMTp7Imhhc19sb2dpbiI6dHJ1ZSwiaWRfcGVsYW5nZ2FuIjoyfQ==', '2017-02-01 14:52:12.580116'),
('w5ljdc20tblhdgnq8e7zbgc5hji33gqx', 'MmVmZmEwNGUyMDQ5ODhkYjJjZTRhZmE0N2M4MTY0MDNhZmY3YjBhMTp7Imhhc19sb2dpbiI6dHJ1ZSwiaWRfcGVsYW5nZ2FuIjoyfQ==', '2017-02-01 14:52:11.610737'),
('wzijsj10j1tlqhrcgwf6th1uburl1364', 'NDg4NTY4MDVkYTc0YWEwZGY4OTdlNThiYzhjMDJmNzliYmZiNjhlMTp7ImlkX3BlbGFuZ2dhbiI6MSwiaGFzX2xvZ2luIjp0cnVlfQ==', '2017-02-01 16:51:02.292420'),
('wzz259n7ia8fdypen8wid874zunpucs7', 'MmVmZmEwNGUyMDQ5ODhkYjJjZTRhZmE0N2M4MTY0MDNhZmY3YjBhMTp7Imhhc19sb2dpbiI6dHJ1ZSwiaWRfcGVsYW5nZ2FuIjoyfQ==', '2017-02-01 14:52:20.879735'),
('x3e2m8jljq074cads6rg8pt5ye5vvd6m', 'MmJiYzI5YjhkN2JlMzczYjA0ZmM2M2E1ZDYwMDE5MTBkYjNkZWQxMzp7Imhhc19sb2dpbiI6dHJ1ZSwiaWRfcGVsYW5nZ2FuIjoxfQ==', '2017-02-01 18:45:25.930477'),
('xawqrviz851ap813cjjnk6krlnk69vcj', 'MmVmZmEwNGUyMDQ5ODhkYjJjZTRhZmE0N2M4MTY0MDNhZmY3YjBhMTp7Imhhc19sb2dpbiI6dHJ1ZSwiaWRfcGVsYW5nZ2FuIjoyfQ==', '2017-02-01 14:52:21.640468'),
('xdsg8irhcteek6etl91ukp5quikzhxmz', 'MmVmZmEwNGUyMDQ5ODhkYjJjZTRhZmE0N2M4MTY0MDNhZmY3YjBhMTp7Imhhc19sb2dpbiI6dHJ1ZSwiaWRfcGVsYW5nZ2FuIjoyfQ==', '2017-02-01 14:52:19.696480'),
('xi8shoyraj9nud1qi76xt701qx0ciiz9', 'MmVmZmEwNGUyMDQ5ODhkYjJjZTRhZmE0N2M4MTY0MDNhZmY3YjBhMTp7Imhhc19sb2dpbiI6dHJ1ZSwiaWRfcGVsYW5nZ2FuIjoyfQ==', '2017-02-01 14:52:16.022358'),
('xnkaff9vccb0j6l3wco1yy5iauz6b91b', 'MmJiYzI5YjhkN2JlMzczYjA0ZmM2M2E1ZDYwMDE5MTBkYjNkZWQxMzp7Imhhc19sb2dpbiI6dHJ1ZSwiaWRfcGVsYW5nZ2FuIjoxfQ==', '2017-02-01 14:49:27.212501'),
('xtdtbw4w1g2oywh0idhxaacy3scmx4g0', 'NDg4NTY4MDVkYTc0YWEwZGY4OTdlNThiYzhjMDJmNzliYmZiNjhlMTp7ImlkX3BlbGFuZ2dhbiI6MSwiaGFzX2xvZ2luIjp0cnVlfQ==', '2017-02-01 15:16:48.842827'),
('xwjd2f4d2ued5aj3u6qf45755h0c0iqs', 'MmVmZmEwNGUyMDQ5ODhkYjJjZTRhZmE0N2M4MTY0MDNhZmY3YjBhMTp7Imhhc19sb2dpbiI6dHJ1ZSwiaWRfcGVsYW5nZ2FuIjoyfQ==', '2017-02-01 14:52:19.949744'),
('ybk7uaqk7ml1ngbqajq69m8o10f3kps9', 'NDg4NTY4MDVkYTc0YWEwZGY4OTdlNThiYzhjMDJmNzliYmZiNjhlMTp7ImlkX3BlbGFuZ2dhbiI6MSwiaGFzX2xvZ2luIjp0cnVlfQ==', '2017-02-01 16:32:58.122531'),
('yj0qhne4lceq8sbscwvvnxvvclppc3iq', 'MTNiNzAzZmMzNjExYWU0ZWI4N2EwMjU4OTMyMDJhODcwNmRiOWRiNTp7ImlkX3BlbGFuZ2dhbiI6M30=', '2017-02-01 16:37:51.813057'),
('yqgm15x4rf4tmtcw3yy4iydw239xys8q', 'MmVmZmEwNGUyMDQ5ODhkYjJjZTRhZmE0N2M4MTY0MDNhZmY3YjBhMTp7Imhhc19sb2dpbiI6dHJ1ZSwiaWRfcGVsYW5nZ2FuIjoyfQ==', '2017-02-01 14:52:18.168289'),
('yu1vom4c96bcil651netctk90n8r8fds', 'MmJiYzI5YjhkN2JlMzczYjA0ZmM2M2E1ZDYwMDE5MTBkYjNkZWQxMzp7Imhhc19sb2dpbiI6dHJ1ZSwiaWRfcGVsYW5nZ2FuIjoxfQ==', '2017-02-01 18:42:30.445767'),
('yw4owj7wqrfmc80w9dh5msbffud6eiz7', 'MmVmZmEwNGUyMDQ5ODhkYjJjZTRhZmE0N2M4MTY0MDNhZmY3YjBhMTp7Imhhc19sb2dpbiI6dHJ1ZSwiaWRfcGVsYW5nZ2FuIjoyfQ==', '2017-02-01 14:52:17.954262'),
('zfxd427ct50fa1d0hn92mb9ip02yp81e', 'MmJiYzI5YjhkN2JlMzczYjA0ZmM2M2E1ZDYwMDE5MTBkYjNkZWQxMzp7Imhhc19sb2dpbiI6dHJ1ZSwiaWRfcGVsYW5nZ2FuIjoxfQ==', '2017-02-01 14:49:31.457279'),
('zi88z4hdb0yde6cxabr1xek1s4cf6cqw', 'MmVmZmEwNGUyMDQ5ODhkYjJjZTRhZmE0N2M4MTY0MDNhZmY3YjBhMTp7Imhhc19sb2dpbiI6dHJ1ZSwiaWRfcGVsYW5nZ2FuIjoyfQ==', '2017-02-01 14:52:14.928246'),
('zpv3d29pa7o7o7gpte02kx8edezcv5s4', 'MmVmZmEwNGUyMDQ5ODhkYjJjZTRhZmE0N2M4MTY0MDNhZmY3YjBhMTp7Imhhc19sb2dpbiI6dHJ1ZSwiaWRfcGVsYW5nZ2FuIjoyfQ==', '2017-02-01 14:52:22.104719');

-- --------------------------------------------------------

--
-- Table structure for table `kandungan`
--

CREATE TABLE `kandungan` (
  `ID_KANDUNGAN` int(11) NOT NULL,
  `NAMA_KANDUNGAN` char(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kandungan`
--

INSERT INTO `kandungan` (`ID_KANDUNGAN`, `NAMA_KANDUNGAN`) VALUES
(1, 'Ayam');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `ID_KATEGORI` int(11) NOT NULL,
  `NAMA_KATEGORI` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`ID_KATEGORI`, `NAMA_KATEGORI`) VALUES
(1, 'Main Menu'),
(2, 'Fried Menu'),
(3, 'Soup & Sukiyaki'),
(4, 'Desserts'),
(5, 'Beverages'),
(6, 'Snacks'),
(7, 'Side Dish'),
(8, 'Set Menu');

-- --------------------------------------------------------

--
-- Table structure for table `komentar`
--

CREATE TABLE `komentar` (
  `ID_KOMENTAR` int(11) NOT NULL,
  `EMAIL` varchar(20) DEFAULT NULL,
  `DESKRIPSI_KOMENTAR` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `ID_MENU` int(11) NOT NULL,
  `ID_KATEGORI` int(11) NOT NULL,
  `NAMA_MENU` varchar(20) DEFAULT NULL,
  `DESKRIPSI_MENU` varchar(200) DEFAULT NULL,
  `STOK_MENU` int(11) DEFAULT NULL,
  `GAMBAR_MENU` mediumtext CHARACTER SET latin1 COLLATE latin1_bin,
  `HARGA_MENU` float DEFAULT NULL,
  `DISCOUNT` float DEFAULT NULL,
  `KALORI` float DEFAULT NULL,
  `PROTEIN` float DEFAULT NULL,
  `NATRIUM` float DEFAULT NULL,
  `LEMAK` float DEFAULT NULL,
  `KARBOHIDRAT` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`ID_MENU`, `ID_KATEGORI`, `NAMA_MENU`, `DESKRIPSI_MENU`, `STOK_MENU`, `GAMBAR_MENU`, `HARGA_MENU`, `DISCOUNT`, `KALORI`, `PROTEIN`, `NATRIUM`, `LEMAK`, `KARBOHIDRAT`) VALUES
(1, 1, 'Beef Teriyaki', 'Premium beef, slices of onion and cooked with HokBen special teriyaki sauce.', 10, './assets/img/menu/069e1-Beef-Teriyaki.jpg', 37000, 0, 210, 19, 770, 90, 12),
(2, 1, 'Beef Yakiniku', 'Premium beef, slices of onion and green paprika cooked with HokBen special yakiniku sauce. ', 10, './assets/img/menu/265cb-Beef-Yakiniku.jpg', 37000, 0, 130, 14, 820, 6, 5),
(3, 1, 'Chicken Blakkupeppa', 'Slices of chicken meat seasoning with blackpepper, cooked until the spices seep into the meat.', 10, './assets/img/menu/38faf-Chicken-Blakkupeppa.jpg', 26500, 0, 200, 24, 1060, 6, 125),
(4, 1, 'CHICKEN STEAK ORIGIN', 'grilled boneless chicken meat flavored typical Japanese Teriyaki sauce with sweet and savory', 10, './assets/img/menu/6fd38-CHICKEN-STEAK-ORIGINAL.jpg', 30000, 0, 0, 0, 0, 0, 0),
(5, 1, 'Chicken Teriyaki', 'Boneless chicken meat and slices of onion cooked with HokBen special teriyaki sauce. ', 10, './assets/img/menu/d3765-Chicken-Teriyaki.jpg', 26500, 0, 180, 7, 800, 7, 23),
(6, 1, 'Chicken Yakiniku', 'Boneless chicken meat and slices of onion cooked with HokBen special yakiniku sauce. ', 10, './assets/img/menu/d2e22-Chicken-Yakiniku.jpg', 26500, 0, 120, 15, 760, 4, 6),
(7, 1, 'HOT CHICKEN STEAK', 'Grilled boneless chicken meat flavored typical Japanese miso sauce with a spicy flavor.', 10, './assets/img/menu/2f2a5-HOT-CHICKEN-STEAK.jpg', 32000, 0, 0, 0, 0, 0, 0),
(8, 2, 'Chicken Katsu', 'Boneless chicken breast wrapped with flour and special seasoning of HokBen cooked above 150 degrees, crunchy outside but soft inside.', 10, './assets/img/menu/b0416-Chicken-Katsu.jpg', 27000, 0, 250, 20, 680, 7, 14),
(9, 2, 'Crispy Karaage', 'Boneless fried chicken fried with HokBen special karaage spices.', 10, './assets/img/menu/48c81-Crispy-Karaage.jpg', 31000, 0, 340, 25, 570, 21, 15),
(10, 2, 'Ebi Furai', 'Skinless shrimp wrapped in bread flour and cooked with deep frying method. Crunchy outside but soft inside.', 10, './assets/img/menu/77458-Ebi-Furai.jpg', 32500, 0, 360, 9, 450, 32, 10),
(11, 2, 'Egg Chicken Roll', 'Egg chicken roll made from processed chicken meat that rolled with eggs and cook with deep frying method.', 10, './assets/img/menu/434a4-Egg-Chicken-Roll.jpg', 26500, 0, 290, 12, 479, 20, 45),
(12, 2, 'Ekkado', 'Delicious petite quaill eggs coated with processed shrimp meat and wrapped with tofu skin, cooked with deep frying method, so you can get fresh and soft quaill egg inside your Ekkado.', 10, './assets/img/menu/376e7-Ekkado.jpg', 34000, 0, 220, 15, 530, 17, 3),
(13, 2, 'Kaniroll', 'Made from processed small crab meat wrapped with tofu skin and cooked in deep frying method.', 10, './assets/img/menu/54af2-Kaniroll.jpg', 26500, 0, 190, 17, 660, 12, 4),
(14, 2, 'Shrimp Roll', 'Processed shrimp meat wrapped in egg and bread flour, cook in deep frying method. Best combine with tomato or chilli sauce.', 10, './assets/img/menu/7616e-Shrimp-Roll.jpg', 25500, 0, 270, 13, 460, 16, 18),
(15, 2, 'Spicy Chicken', 'Processed chicken breast seasoning with spicy spice, wrapped in bread flour and cooked with deep frying method', 10, './assets/img/menu/a1c9d-Spicy-Chicken.jpg', 27500, 0, 250, 7, 570, 14, 15),
(16, 2, 'Tori no Teba', 'A special HokBen creation made from processed chicken wings, cooked with Deep Frying Oil method. ', 10, './assets/img/menu/48a99-Tori-no-Teba.jpg', 24000, 0, 260, 20, 570, 16, 9),
(17, 2, 'Tempura Moriawase', 'Processed shrimp meat, onion, and yellow sweet potate layered with flour and cooked with Deep Frying Oil method.', 10, './assets/img/menu/4e029-Tempura-Moriawase.jpg', 42000, 0, 250, 3, 440, 19, 18),
(18, 3, 'Chicken Tofu ( 1 pcs', 'Japanese tofu layered with chicken meat, served with chicken broth and leeks. Warm and delicious.', 10, './assets/img/menu/f3ce5-Chicken-Tofu-(-1-pcs-).jpg', 11000, 0, 160, 14, 300, 10, 3),
(19, 3, 'Chicken Tofu ( 2 pcs', 'Japanese tofu layered with chicken meat, served with chicken broth and leeks. Warm and delicious.', 10, './assets/img/menu/bdb46-Chicken-Tofu-(-2-pcs-).jpg', 18000, 0, 160, 14, 300, 10, 3),
(20, 3, 'MISO SOUP', 'Soup with chicken broth flavored sauce Miso andgiven a piece of tofu and a sprinkling of green onionpieces.', 10, './assets/img/menu/ced02-Miso.jpg', 10000, 0, 0, 0, 0, 0, 0),
(21, 3, 'Shrimp Ball', 'Processed shrimp meatballs served with leeks and HokBen''s special chicken broth.', 10, './assets/img/menu/9d9fb-Shrimp-Ball.jpg', 22000, 0, 60, 3, 370, 3, 4),
(22, 3, 'Shrimp Dumpling', 'Made from processed shrimp wrapped in wonton skin, served with leeks and HokBen''s special broth.', 10, './assets/img/menu/7377e-Shrimp-Dumpling.jpg', 18000, 0, 40, 4, 420, 1, 6),
(23, 3, 'Sukiyaki', 'Premium sliced meat stew with japanese silk tofu, shiratake, white mustard, onion leaves, onions riched with HokBen special sukiyaki sauce.', 10, './assets/img/menu/8b3df-Sukiyaki.jpg', 52000, 0, 90, 5, 750, 2, 12),
(24, 4, 'Es Ogura', 'Special dessert made of red beans served with simple syrup, coconut milk and shaved ice.', 10, './assets/img/menu/41119-Es-Ogura.jpg', 11000, 0, 0, 0, 0, 0, 0),
(25, 4, 'Es Sarang Burung', 'Dessert made of gelatin and Longan fruits served with simple syrup and shaved ice.', 10, './assets/img/menu/0aa55-Es-Sarang-Burung.jpg', 16000, 0, 0, 0, 0, 0, 0),
(26, 4, 'Puding Coklat', 'Chocolate flavored pudding served with chocolate sauce.', 10, './assets/img/menu/3348f-Chocolate-Pudding.jpg', 16500, 0, 0, 0, 0, 0, 0),
(27, 4, 'Puding Soft Caramel', 'Soft pudding with special caramel sauce.', 10, './assets/img/menu/690be-Soft-Caramel-Pudding.jpg', 16500, 0, 0, 0, 0, 0, 0),
(28, 5, 'Aqua Pet', '-', 10, './assets/img/menu/8aac0-Aqua-Pet.jpg', 7500, 0, 0, 0, 0, 0, 0),
(29, 5, 'Buavita Orange 250ml', '-', 10, './assets/img/menu/b0e09-Buavita-Orange-250ml.jpg', 9500, 0, 0, 0, 0, 0, 0),
(30, 5, 'Coca Cola Can', '-', 10, './assets/img/menu/d013c-Coca-Cola-Kaleng.jpg', 11000, 0, 0, 0, 0, 0, 0),
(31, 5, 'Cold Ocha', 'Cold and fresh Japanese green tea. ', 10, './assets/img/menu/38883-Ocha.jpg', 6500, 0, 0, 0, 0, 0, 0),
(32, 5, 'Lemon Tea', '-', 10, './assets/img/menu/5451e-Lemon-Tea.jpg', 11000, 0, 0, 0, 0, 0, 0),
(33, 5, 'Melon Juice', 'Fresh and original honeydew juice. ', 10, './assets/img/menu/b390c-Jus-Melon.jpg', 18000, 0, 0, 0, 0, 0, 0),
(34, 5, 'Milo', '-', 10, './assets/img/menu/978c5-Milo.jpg', 9000, 0, 0, 0, 0, 0, 0),
(35, 5, 'Orange Juice', 'Fresh and original orange juice. ', 10, './assets/img/menu/6c6c5-Jus-Jeruk.jpg', 18000, 0, 0, 0, 0, 0, 0),
(36, 5, 'Teh Kotak Sosro', '-', 10, './assets/img/menu/0f1f0-Teh-Kotak-Sosro.jpg', 7500, 0, 0, 0, 0, 0, 0),
(37, 6, 'Edamame ( Large )', 'Slice of unfatty chicken breast filled with flour and cooked with deep frying method.', 10, './assets/img/menu/16020-Edamame-(-Large-).jpg', 12000, 0, 370, 24, 980, 20, 22),
(38, 6, 'Edamame ( Reg )', 'Slice of unfatty chicken breast filled with flour and cooked with deep frying method.', 10, './assets/img/menu/93497-Edamame-(-Reg-).jpg', 55000, 0, 370, 24, 980, 20, 22),
(39, 6, 'Shumai Furai 3 pcs', 'Deep fried processed shrimp and chicken meat wrapped in dumpling skin.', 10, './assets/img/menu/bde51-Shumai-Furai-(-3-pcs-).jpg', 14000, 0, 0, 0, 0, 0, 0),
(40, 6, 'Shumai Steam 3 pcs', 'Steam processed shrimp and chicken meat wrapped in dumpling skin.', 10, './assets/img/menu/26af1-Shumai-Steam-(-3-pcs-).jpg', 14000, 0, 0, 0, 0, 0, 0),
(41, 6, 'Takoyaki ( 3 pcs )', 'Snack like little balls with cuttings baby octopus inside.', 10, './assets/img/menu/50983-Takoyaki-(-3-pcs-).jpg', 13500, 0, 0, 0, 0, 0, 0),
(42, 6, 'Tori Popcorn ( Large', 'Slice of unfatty chicken breast filled with flour and cooked with deep frying method.', 10, './assets/img/menu/d6e0d-Tori-Popcorn-(-Large-).jpg', 21000, 0, 370, 24, 980, 20, 22),
(43, 6, 'Tori Popcorn ( Reg )', 'Slice of unfatty chicken breast filled with flour and cooked with deep frying method.', 10, './assets/img/menu/2732b-Tori-Popcorn-(-Reg-).jpg', 11500, 0, 370, 24, 980, 20, 22),
(44, 7, 'Rice', 'Cooked with HokBen special rice.', 10, './assets/img/menu/d5f23-Nasi.jpg', 7000, 0, 120, 4, 0, 0, 25),
(45, 7, 'Salad', 'Pickles, shaved cabbage topped with HokBen''s special mayonnaise', 10, './assets/img/menu/e3032-Salad.jpg', 95000, 0, 180, 1, 340, 17, 6),
(46, 8, 'Bento Special 1', 'Rice, Salad, Chicken Teriyaki, Tori No Teba dan Ebi Furai', 10, './assets/img/menu/57c00-bs1.jpg', 47500, 0, 612, 25, 1700, 24, 75),
(47, 8, 'Bento Special 2', 'Rice, Salad, Beef Yakiniku, Tori no Teba dan Kani Roll', 10, './assets/img/menu/85738-bs2.jpg', 53500, 0, 607, 42, 1700, 23, 58),
(48, 8, 'Bento Special 3', 'Rice, Salad, Beef Yakiniku, Tori no Teba, Ebi Furai, Ebi Fried', 10, './assets/img/menu/cf89e-bs3.jpg', 53500, 0, 656, 37, 1500, 29, 63),
(49, 8, 'Bento Special 4', 'Rice, Salad, Beef Teriyaki, Tori no Teba, Ebi Furai, Ebi Fried', 10, './assets/img/menu/d7f81-bs4.jpg', 53500, 0, 703, 38, 1200, 30, 69),
(50, 8, 'Favorite Set Chicken', 'Chicken Blakkupeppa, Egg Chicken Roll, Spicy Chicken, Rice, Clear Soup, Salad and Ocha.', 10, './assets/img/menu/1a284-Favorite-Set-Chicken-Blakkupeppa.jpg', 46000, 0, 694, 44, 1500, 26, 70),
(51, 8, 'Favorite Set Chicken', 'Chicken Teriyaki, Egg Chicken Roll, Spicy Chicken, Rice, Clear Soup, Salad and Ocha.', 10, './assets/img/menu/acd4c-Favorite-Set-Chicken-Teriyaki.jpg', 46000, 0, 677, 30, 1300, 27, 79),
(52, 8, 'Favorite Set Chicken', 'Chicken Yakiniku, Egg Chicken Roll, Spicy Chicken, Rice, Clear Soup, Salad and Ocha.', 10, './assets/img/menu/f1220-Favorite-Set-Chicken-Yakiniku.jpg', 46000, 0, 626, 37, 1300, 24, 49),
(53, 8, 'Hoka Hemat 1', 'HokBen special rice, salad, 1 Ekkado and 3 Egg Chicken Roll', 10, './assets/img/menu/c15fd-Hoka-Hemat-1.jpg', 22000, 0, 460, 19, 526, 21, 50),
(54, 8, 'Hoka Hemat 2', 'HokBen special rice, salad, 1 Tori Baaga and 2 Egg Chicken Roll', 10, './assets/img/menu/5087a-Hoka-Hemat-2.jpg', 22000, 0, 464, 21, 526, 19, 53),
(55, 8, 'Hoka Hemat 3', 'HokBen special rice, salad, 2 Egg Chicken Roll and 2 Shrimp Roll', 10, './assets/img/menu/8c039-Hoka-Hemat-3.jpg', 22000, 0, 413, 21, 494, 16, 48),
(56, 8, 'Hoka Hemat 4', '-', 10, './assets/img/menu/0ab98-Hoka-Hemat-4.jpg', 22000, 0, 0, 0, 0, 0, 0),
(57, 8, 'Kidzu Bento 1', 'Egg chicken roll made from processed chicken meat that rolled with eggs and cook with deep frying method, an original scrambled eggs, without additives and HokBen special rice.', 10, './assets/img/menu/2f851-kidzu-1.jpg', 33000, 0, 369, 17, 272, 13, 47),
(58, 8, 'Kidzu Bento 2', 'Chicken thigh layered with flour and cooked with Deep Frying Oil method, an original scrambled eggs, without additives and HokBen special rice.', 10, './assets/img/menu/31e5f-kidzu-2.jpg', 33000, 0, 293, 11, 445, 23, 11),
(59, 8, 'Kidzu Bento 3', 'Boneless fried chicken fried with HokBen special karaage spices, skinless shrimp wrapped in bread flour and cooked with deep frying method. Crunchy outside but soft inside, an original scrambled eggs ', 10, './assets/img/menu/28d4a-kidzu-3.jpg', 33000, 0, 389, 19, 268, 15, 45),
(60, 8, 'Kidzu Bento 4', 'HokBen special rice, salad, 1 Ekkado and 1 Tori Baaga', 10, './assets/img/menu/acd49-kidzu-4.jpg', 33000, 0, 413, 21, 494, 16, 48),
(61, 8, 'Omiyage ber4', 'Chicken katsu, Ebi Fried, Egg Chicken Roll, Edamame, Chicken Teriyaki / Yakiniku, Beef Teriyaki / Yakiniku HokBen Special Rice + Pickles', 10, './assets/img/menu/1de76-menu-website-omiyage-ber4.jpg', 165000, 0, 0, 0, 0, 0, 0),
(62, 8, 'Omiyage ber6', 'Chicken katsu, Ebi Fried, Egg Chicken Roll, Shrimp Roll, Edamame, Chicken Teriyaki / Yakiniku, Beef Teriyaki / Yakiniku (double portion) HokBen Special Rice + Pickles', 10, './assets/img/menu/46914-menu-website-omiyage-ber6.jpg', 264000, 0, 0, 0, 0, 0, 0),
(63, 8, 'Paket A', 'Rice, Salad, Beef Yakiniku, 2 pcs Shrimp Roll, 1 pc Spicy Chicken', 10, './assets/img/menu/1c741-thumbnailA.jpg', 48000, 0, 556, 32, 1200, 22, 58),
(64, 8, 'Paket B', 'Rice, Salad, Chicken Yakiniku, 2 pcs Egg Chicken Roll, 1 pc Ebi Furai', 10, './assets/img/menu/120ec-thumbnailB.jpg', 42500, 0, 522, 27, 1022, 23, 53),
(65, 8, 'Paket C', 'Rice, Salad, Beef Triyaki, 2 pcs Shrimp Roll, 1 pc Spicy Chicken', 10, './assets/img/menu/bf9c7-thumbnailC.jpg', 48000, 0, 625, 36, 1163, 25, 64),
(66, 8, 'Paket D', 'Rice, Salad, Chicken Teriyaki, 2 pcs Egg Chicken Roll, 1 pc Ebi Furai', 10, './assets/img/menu/ef586-thumbnailD.jpg', 42500, 0, 574, 20, 1055, 25, 68),
(67, 8, 'PAKET HOT CHICKEN ST', 'Hot Chicken Steak, Rice and Ocha', 10, './assets/img/menu/911a2-PAKET-HOT-CHICKEN-STEAK.jpg', 39000, 0, 0, 0, 0, 0, 0),
(68, 8, 'PAKET ORIGINAL CHICK', 'Original Chicken Steak, Rice and Ocha', 10, './assets/img/menu/cdc7b-PAKET-ORIGINAL-CHICKEN-STEAK.jpg', 37000, 0, 0, 0, 0, 0, 0),
(69, 8, 'Premium Set Beef Ter', 'Beef Teriyaki, Chicken Katsu, Rice, Clear Soup, Salad and Ocha.', 10, './assets/img/menu/2e52f-Premium-Set-Beef-Teriyaki.jpg', 57000, 0, 655, 45, 1400, 18, 65),
(70, 8, 'Premium Set Beef Yak', 'Chicken Yakiniku, Egg Chicken Roll, Spicy Chicken, Rice, Clear Soup, Salad and Ocha.', 10, './assets/img/menu/b1c66-Premium-Set-Beef-Yakiniku.jpg', 57000, 0, 626, 37, 1300, 24, 49),
(71, 8, 'Premium Set Seafood', 'Rice, Beef Teriyaki / Yakiniku, Ekkado, Ebi Furai, Shrimp Roll, Clear Soup, Salad dan Ocha', 10, './assets/img/menu/8eb6d-Premium-Set-Seafood.jpg', 55500, 0, 0, 0, 0, 0, 0),
(72, 8, 'Simple Set 1', 'Rice + 4 pcs Egg Chicken Roll', 10, './assets/img/menu/5bfe3-ss1.jpg', 20000, 0, 451, 17, 457, 20, 52),
(73, 8, 'Simple Set 2', 'Rice + 3 pcs Shrimp Roll', 10, './assets/img/menu/4e0de-ss2.jpg', 20000, 0, 693, 30, 882, 32, 71),
(74, 8, 'Simple Set Teriyaki ', 'Rice + Chicken Teriyaki + 2 pcs Egg Chicken Roll', 10, './assets/img/menu/64307-Simple-Set-Teriyaki-1.jpg', 35000, 0, 509, 19, 1100, 18, 69),
(75, 8, 'Simple Set Teriyaki ', 'Rice + Chicken Teriyaki + 2 pcs Shrimp Roll', 10, './assets/img/menu/b1ef2-Simple-Set-Teriyaki-2.jpg', 35000, 0, 711, 29, 1400, 29, 83),
(76, 8, 'Value Set', 'Egg Chicken Roll, Shrimp Roll, Rice, Clear Soup, Salad and Ocha.', 10, './assets/img/menu/42951-Value-Set.jpg', 26500, 0, 670, 29, 808, 31, 69);

-- --------------------------------------------------------

--
-- Table structure for table `menuhaskandungan`
--

CREATE TABLE `menuhaskandungan` (
  `ID_KANDUNGAN` int(11) NOT NULL,
  `ID_MENU` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menuhaskandungan`
--

INSERT INTO `menuhaskandungan` (`ID_KANDUNGAN`, `ID_MENU`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `outlet`
--

CREATE TABLE `outlet` (
  `ID_OUTLET` int(11) NOT NULL,
  `WAKTU_BUKA` time DEFAULT NULL,
  `WAKTU_TUTUP` time DEFAULT NULL,
  `LATITUDE_OUTLET` float DEFAULT NULL,
  `LONGITUDE_OUTLET` float DEFAULT NULL,
  `JALAN` varchar(20) DEFAULT NULL,
  `RT` int(11) DEFAULT NULL,
  `RW` int(11) DEFAULT NULL,
  `NO_RUMAH` int(11) DEFAULT NULL,
  `KECAMATAN` varchar(20) DEFAULT NULL,
  `DESA_KELURAHAN` varchar(20) DEFAULT NULL,
  `PROVINSI` varchar(20) DEFAULT NULL,
  `KOTA_KABUPATEN` varchar(20) DEFAULT NULL,
  `KODE_POS` varchar(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `outlethassevis`
--

CREATE TABLE `outlethassevis` (
  `ID_SERVIS` int(11) NOT NULL,
  `ID_OUTLET` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `ID_PELANGGAN` int(11) NOT NULL,
  `USER_NAME` varchar(10) DEFAULT NULL,
  `PASSWORD` char(6) DEFAULT NULL,
  `EMAIL` varchar(20) DEFAULT NULL,
  `NOMOR_HP` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`ID_PELANGGAN`, `USER_NAME`, `PASSWORD`, `EMAIL`, `NOMOR_HP`) VALUES
(1, 'waffi', '123456', NULL, NULL),
(2, 'rizal', '123456', NULL, NULL),
(3, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pesanan`
--

CREATE TABLE `pesanan` (
  `ID_PESANAN` int(11) NOT NULL,
  `ID_MENU` int(11) NOT NULL,
  `ID_CART` int(11) NOT NULL,
  `JUMLAH_PESANAN` float DEFAULT NULL,
  `TOTAL_HARGA` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pesanan`
--

INSERT INTO `pesanan` (`ID_PESANAN`, `ID_MENU`, `ID_CART`, `JUMLAH_PESANAN`, `TOTAL_HARGA`) VALUES
(0, 30, 1, 1, 11000);

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating` (
  `ID_MENU` int(11) NOT NULL,
  `ID_PELANGGAN` int(11) NOT NULL,
  `NILAI` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `servis`
--

CREATE TABLE `servis` (
  `ID_SERVIS` int(11) NOT NULL,
  `NAMA_SERVIS` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alamat`
--
ALTER TABLE `alamat`
  ADD PRIMARY KEY (`ID_ALAMAT`),
  ADD UNIQUE KEY `ALAMAT_PK` (`ID_ALAMAT`),
  ADD KEY `PELANGGANHASALAMAT_FK` (`ID_PELANGGAN`);

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
  ADD UNIQUE KEY `auth_group_permissions_group_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_01ab375a_uniq` (`content_type_id`,`codename`);

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
  ADD UNIQUE KEY `auth_user_groups_user_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` (`permission_id`);

--
-- Indexes for table `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`ID_BERITA`),
  ADD UNIQUE KEY `BERITA_PK` (`ID_BERITA`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`ID_CART`),
  ADD UNIQUE KEY `CART_PK` (`ID_CART`),
  ADD KEY `PELANGGANHASCART_FK` (`ID_PELANGGAN`),
  ADD KEY `SENTTO_FK` (`ID_ALAMAT`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_76bd3d3b_uniq` (`app_label`,`model`);

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
  ADD KEY `django_session_de54fa62` (`expire_date`);

--
-- Indexes for table `kandungan`
--
ALTER TABLE `kandungan`
  ADD PRIMARY KEY (`ID_KANDUNGAN`),
  ADD UNIQUE KEY `KANDUNGAN_PK` (`ID_KANDUNGAN`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`ID_KATEGORI`),
  ADD UNIQUE KEY `KATEGORI_PK` (`ID_KATEGORI`);

--
-- Indexes for table `komentar`
--
ALTER TABLE `komentar`
  ADD PRIMARY KEY (`ID_KOMENTAR`),
  ADD UNIQUE KEY `KOMENTAR_PK` (`ID_KOMENTAR`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`ID_MENU`),
  ADD UNIQUE KEY `MENU_PK` (`ID_MENU`),
  ADD KEY `MENUHASKATEGORI_FK` (`ID_KATEGORI`);

--
-- Indexes for table `menuhaskandungan`
--
ALTER TABLE `menuhaskandungan`
  ADD PRIMARY KEY (`ID_KANDUNGAN`,`ID_MENU`),
  ADD UNIQUE KEY `MENUHASKANDUNGAN_PK` (`ID_KANDUNGAN`,`ID_MENU`),
  ADD KEY `MENUHASKANDUNGAN2_FK` (`ID_MENU`),
  ADD KEY `MENUHASKANDUNGAN_FK` (`ID_KANDUNGAN`);

--
-- Indexes for table `outlet`
--
ALTER TABLE `outlet`
  ADD PRIMARY KEY (`ID_OUTLET`),
  ADD UNIQUE KEY `OUTLET_PK` (`ID_OUTLET`);

--
-- Indexes for table `outlethassevis`
--
ALTER TABLE `outlethassevis`
  ADD PRIMARY KEY (`ID_SERVIS`,`ID_OUTLET`),
  ADD UNIQUE KEY `OUTLETHASSEVIS_PK` (`ID_SERVIS`,`ID_OUTLET`),
  ADD KEY `OUTLETHASSEVIS2_FK` (`ID_OUTLET`),
  ADD KEY `OUTLETHASSEVIS_FK` (`ID_SERVIS`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`ID_PELANGGAN`),
  ADD UNIQUE KEY `PELANGGAN_PK` (`ID_PELANGGAN`);

--
-- Indexes for table `pesanan`
--
ALTER TABLE `pesanan`
  ADD PRIMARY KEY (`ID_PESANAN`),
  ADD UNIQUE KEY `PESANAN_PK` (`ID_MENU`,`ID_CART`),
  ADD KEY `PESANAN2_FK` (`ID_CART`),
  ADD KEY `PESANAN_FK` (`ID_MENU`);

--
-- Indexes for table `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`ID_MENU`,`ID_PELANGGAN`),
  ADD UNIQUE KEY `RATING_PK` (`ID_MENU`,`ID_PELANGGAN`),
  ADD KEY `RATING2_FK` (`ID_PELANGGAN`),
  ADD KEY `RATING_FK` (`ID_MENU`);

--
-- Indexes for table `servis`
--
ALTER TABLE `servis`
  ADD PRIMARY KEY (`ID_SERVIS`),
  ADD UNIQUE KEY `SERVIS_PK` (`ID_SERVIS`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `alamat`
--
ALTER TABLE `alamat`
  MODIFY `ID_ALAMAT` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;
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
-- AUTO_INCREMENT for table `berita`
--
ALTER TABLE `berita`
  MODIFY `ID_BERITA` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `ID_CART` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `kandungan`
--
ALTER TABLE `kandungan`
  MODIFY `ID_KANDUNGAN` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `ID_KATEGORI` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `komentar`
--
ALTER TABLE `komentar`
  MODIFY `ID_KOMENTAR` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `ID_MENU` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;
--
-- AUTO_INCREMENT for table `outlet`
--
ALTER TABLE `outlet`
  MODIFY `ID_OUTLET` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `outlethassevis`
--
ALTER TABLE `outlethassevis`
  MODIFY `ID_SERVIS` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `ID_PELANGGAN` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `servis`
--
ALTER TABLE `servis`
  MODIFY `ID_SERVIS` int(11) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `alamat`
--
ALTER TABLE `alamat`
  ADD CONSTRAINT `FK_alamat_pelanggan` FOREIGN KEY (`ID_PELANGGAN`) REFERENCES `pelanggan` (`ID_PELANGGAN`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissi_permission_id_84c5c92e_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permissi_content_type_id_2f476e4b_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

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
  ADD CONSTRAINT `auth_user_user_perm_permission_id_1fbb5f2c_fk_auth_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `FK_cart_alamat` FOREIGN KEY (`ID_ALAMAT`) REFERENCES `alamat` (`ID_ALAMAT`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_cart_pelanggan` FOREIGN KEY (`ID_PELANGGAN`) REFERENCES `pelanggan` (`ID_PELANGGAN`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin__content_type_id_c4bce8eb_fk_django_content_type_id` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `menu`
--
ALTER TABLE `menu`
  ADD CONSTRAINT `FK_menu` FOREIGN KEY (`ID_KATEGORI`) REFERENCES `kategori` (`ID_KATEGORI`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menuhaskandungan`
--
ALTER TABLE `menuhaskandungan`
  ADD CONSTRAINT `FK_menuhaskandungan` FOREIGN KEY (`ID_KANDUNGAN`) REFERENCES `kandungan` (`ID_KANDUNGAN`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_menuhaskandungan_menu` FOREIGN KEY (`ID_MENU`) REFERENCES `menu` (`ID_MENU`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `outlethassevis`
--
ALTER TABLE `outlethassevis`
  ADD CONSTRAINT `FK_outlethassevis` FOREIGN KEY (`ID_OUTLET`) REFERENCES `outlet` (`ID_OUTLET`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pesanan`
--
ALTER TABLE `pesanan`
  ADD CONSTRAINT `FK_pesanan` FOREIGN KEY (`ID_CART`) REFERENCES `cart` (`ID_CART`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_pesanan_menu` FOREIGN KEY (`ID_MENU`) REFERENCES `menu` (`ID_MENU`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `rating`
--
ALTER TABLE `rating`
  ADD CONSTRAINT `FK_rating` FOREIGN KEY (`ID_MENU`) REFERENCES `menu` (`ID_MENU`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_rating_pelanggan` FOREIGN KEY (`ID_PELANGGAN`) REFERENCES `pelanggan` (`ID_PELANGGAN`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
