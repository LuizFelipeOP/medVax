-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 10, 2019 at 09:20 PM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `medvax`
--

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
(1, 'Can add post', 1, 'add_post'),
(2, 'Can change post', 1, 'change_post'),
(3, 'Can delete post', 1, 'delete_post'),
(4, 'Can view post', 1, 'view_post'),
(5, 'Can add profile', 2, 'add_profile'),
(6, 'Can change profile', 2, 'change_profile'),
(7, 'Can delete profile', 2, 'delete_profile'),
(8, 'Can view profile', 2, 'view_profile'),
(9, 'Can add vax', 3, 'add_vax'),
(10, 'Can change vax', 3, 'change_vax'),
(11, 'Can delete vax', 3, 'delete_vax'),
(12, 'Can view vax', 3, 'view_vax'),
(13, 'Can add station', 4, 'add_station'),
(14, 'Can change station', 4, 'change_station'),
(15, 'Can delete station', 4, 'delete_station'),
(16, 'Can view station', 4, 'view_station'),
(17, 'Can add storage', 5, 'add_storage'),
(18, 'Can change storage', 5, 'change_storage'),
(19, 'Can delete storage', 5, 'delete_storage'),
(20, 'Can view storage', 5, 'view_storage'),
(21, 'Can add log entry', 6, 'add_logentry'),
(22, 'Can change log entry', 6, 'change_logentry'),
(23, 'Can delete log entry', 6, 'delete_logentry'),
(24, 'Can view log entry', 6, 'view_logentry'),
(25, 'Can add permission', 7, 'add_permission'),
(26, 'Can change permission', 7, 'change_permission'),
(27, 'Can delete permission', 7, 'delete_permission'),
(28, 'Can view permission', 7, 'view_permission'),
(29, 'Can add group', 8, 'add_group'),
(30, 'Can change group', 8, 'change_group'),
(31, 'Can delete group', 8, 'delete_group'),
(32, 'Can view group', 8, 'view_group'),
(33, 'Can add user', 9, 'add_user'),
(34, 'Can change user', 9, 'change_user'),
(35, 'Can delete user', 9, 'delete_user'),
(36, 'Can view user', 9, 'view_user'),
(37, 'Can add content type', 10, 'add_contenttype'),
(38, 'Can change content type', 10, 'change_contenttype'),
(39, 'Can delete content type', 10, 'delete_contenttype'),
(40, 'Can view content type', 10, 'view_contenttype'),
(41, 'Can add session', 11, 'add_session'),
(42, 'Can change session', 11, 'change_session'),
(43, 'Can delete session', 11, 'delete_session'),
(44, 'Can view session', 11, 'view_session'),
(45, 'Can add card', 12, 'add_card'),
(46, 'Can change card', 12, 'change_card'),
(47, 'Can delete card', 12, 'delete_card'),
(48, 'Can view card', 12, 'view_card');

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
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$150000$W0wxPfW114pW$6qFC1WllajlWw56zSzjIRGzAjEyfiKZFj+zsZfMPUcQ=', '2019-11-02 02:46:25.907306', 1, 'admin', '', '', 'admin@admin.com', 1, 1, '2019-08-18 02:55:24.920690'),
(2, 'pbkdf2_sha256$150000$yAQmIpcZn3ku$TIvSy5MWMIdWwcJMcQE/Vv5Pg70YdsY1jDSagBQNi7s=', '2019-09-08 20:06:49.917445', 0, 'Lufe', '', '', 'luizfelipe@gmail.com', 0, 1, '2019-08-25 21:56:04.611946'),
(3, 'pbkdf2_sha256$150000$wydy0SWln4Ei$nTTrvqGCDykuvooZZr0xHswpmioDihYROyM13Mjzawk=', '2019-10-07 11:48:04.229964', 0, 'Teste', '', '', 'teste@teste.com', 0, 1, '2019-09-19 21:44:41.436538'),
(4, 'pbkdf2_sha256$150000$fmPkpDz8iHfE$a2YCy7oIsDXA/VMNkZ8sVZ9A+tS32+L3/GxBpiZPe/o=', '2019-10-21 22:31:29.263174', 0, 'Cristiana', '', '', 'cristiana.ornelasp@gmail.com', 0, 1, '2019-10-21 22:31:09.635710'),
(5, 'pbkdf2_sha256$150000$OJtHpQv91BBB$JHab7ptB7alDJXlkqOoQ5l4mOc/OHYFjyLwNg/4dp70=', '2019-11-02 02:34:51.348235', 0, 'Fuyumii', '', '', 'fuyu@gmail.com', 0, 1, '2019-11-01 23:23:29.000000');

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
-- Table structure for table `blog_post`
--

CREATE TABLE `blog_post` (
  `id` int(11) NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `corpo` longtext NOT NULL,
  `date_posted` datetime(6) NOT NULL,
  `author_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blog_post`
--

INSERT INTO `blog_post` (`id`, `titulo`, `corpo`, `date_posted`, `author_id`) VALUES
(1, 'Medvax chegou!', 'O melhor sistema que existe', '2019-08-25 23:31:27.345326', 1),
(2, 'Como funciona o sistema', 'Só logar que ta feito', '2019-09-05 22:28:24.075767', 1),
(3, 'MedVax 1.0.2', 'Estamos trabalhando para trazer uma solução para suas carteirinhas de vacina :)', '2019-10-21 22:40:43.102998', 1);

-- --------------------------------------------------------

--
-- Table structure for table `card_card`
--

CREATE TABLE `card_card` (
  `id` int(11) NOT NULL,
  `date_posted` datetime(6) NOT NULL,
  `author_id` int(11) NOT NULL,
  `lote_id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `vacina_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `card_card`
--

INSERT INTO `card_card` (`id`, `date_posted`, `author_id`, `lote_id`, `usuario_id`, `vacina_id`) VALUES
(1, '2019-09-08 22:11:22.532469', 1, 11, 2, 2),
(2, '2019-09-14 23:03:40.033284', 1, 5, 2, 2),
(3, '2019-09-14 23:13:55.252000', 1, 5, 2, 2),
(4, '2019-09-14 23:16:24.610392', 1, 2, 2, 2),
(5, '2019-09-15 18:25:42.971630', 1, 7, 1, 3),
(6, '2019-09-15 18:27:23.823523', 1, 4, 1, 2),
(7, '2019-09-15 18:42:22.162678', 1, 4, 2, 4),
(8, '2019-09-15 19:43:48.921105', 1, 7, 2, 3),
(9, '2019-09-15 19:46:19.095046', 1, 2, 2, 4),
(10, '2019-09-15 19:47:50.785822', 1, 5, 1, 2),
(11, '2019-09-15 19:48:46.892751', 1, 6, 1, 2),
(12, '2019-09-17 22:28:44.312393', 1, 6, 2, 2),
(13, '2019-09-23 02:43:51.463592', 1, 2, 2, 2),
(14, '2019-09-23 02:45:10.817532', 1, 2, 2, 2),
(15, '2019-09-23 02:46:44.966359', 1, 2, 2, 1),
(16, '2019-09-23 02:47:25.134640', 1, 2, 2, 1),
(17, '2019-09-28 18:38:29.391947', 1, 6, 2, 2),
(18, '2019-09-28 18:38:31.390963', 1, 6, 2, 2),
(19, '2019-09-28 18:39:12.445445', 1, 6, 2, 2),
(20, '2019-09-28 18:39:17.332253', 1, 6, 2, 2),
(21, '2019-09-28 18:39:17.631005', 1, 6, 2, 2),
(22, '2019-09-28 18:39:17.820584', 1, 6, 2, 2),
(23, '2019-09-28 18:39:17.972124', 1, 6, 2, 2),
(24, '2019-09-28 18:39:18.129495', 1, 6, 2, 2),
(25, '2019-09-28 18:39:54.763001', 1, 5, 3, 3),
(26, '2019-09-28 18:41:10.515675', 1, 5, 3, 3),
(27, '2019-10-06 21:41:12.505778', 1, 5, 2, 1),
(28, '2019-10-06 21:46:13.203727', 1, 4, 3, 2),
(29, '2019-10-06 21:48:32.578832', 1, 5, 1, 2),
(30, '2019-10-06 22:16:03.169410', 1, 6, 2, 2),
(31, '2019-10-07 11:44:37.972526', 1, 12, 1, 4),
(32, '2019-10-21 22:47:40.009597', 1, 13, 1, 5),
(33, '2019-10-21 23:56:34.215924', 1, 4, 4, 3),
(34, '2018-10-24 21:47:22.385618', 1, 12, 1, 3),
(35, '2019-10-24 22:38:05.463671', 1, 4, 1, 1),
(36, '2019-11-03 19:21:06.258891', 1, 3, 4, 7),
(37, '2019-11-03 19:21:20.376603', 1, 1, 4, 2),
(38, '2019-11-10 18:25:20.083796', 1, 3, 4, 1);

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

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2019-11-02 02:07:39.195623', '5', 'Fuyumii', 2, '[{\"changed\": {\"fields\": [\"user_permissions\"]}}]', 9, 1),
(2, '2019-11-02 02:33:32.474595', '5', 'Fuyumii', 2, '[{\"changed\": {\"fields\": [\"user_permissions\"]}}]', 9, 1),
(3, '2019-11-02 02:33:32.887667', '5', 'Fuyumii', 2, '[]', 9, 1);

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
(6, 'admin', 'logentry'),
(8, 'auth', 'group'),
(7, 'auth', 'permission'),
(9, 'auth', 'user'),
(1, 'blog', 'post'),
(12, 'card', 'card'),
(10, 'contenttypes', 'contenttype'),
(11, 'sessions', 'session'),
(4, 'station', 'station'),
(5, 'storage', 'storage'),
(2, 'users', 'profile'),
(3, 'vax', 'vax');

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
(1, 'contenttypes', '0001_initial', '2019-09-02 01:43:43.630393'),
(2, 'auth', '0001_initial', '2019-09-02 01:43:45.824574'),
(3, 'admin', '0001_initial', '2019-09-02 01:43:57.000844'),
(4, 'admin', '0002_logentry_remove_auto_add', '2019-09-02 01:44:00.010796'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2019-09-02 01:44:00.077618'),
(6, 'contenttypes', '0002_remove_content_type_name', '2019-09-02 01:44:01.772154'),
(7, 'auth', '0002_alter_permission_name_max_length', '2019-09-02 01:44:02.918058'),
(8, 'auth', '0003_alter_user_email_max_length', '2019-09-02 01:44:04.118924'),
(9, 'auth', '0004_alter_user_username_opts', '2019-09-02 01:44:04.165799'),
(10, 'auth', '0005_alter_user_last_login_null', '2019-09-02 01:44:05.132283'),
(11, 'auth', '0006_require_contenttypes_0002', '2019-09-02 01:44:05.180084'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2019-09-02 01:44:05.246917'),
(13, 'auth', '0008_alter_user_username_max_length', '2019-09-02 01:44:06.725214'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2019-09-02 01:44:08.004895'),
(15, 'auth', '0010_alter_group_name_max_length', '2019-09-02 01:44:09.342461'),
(16, 'auth', '0011_update_proxy_permissions', '2019-09-02 01:44:09.416099'),
(17, 'blog', '0001_initial', '2019-09-02 01:44:10.076968'),
(18, 'sessions', '0001_initial', '2019-09-02 01:44:12.567057'),
(19, 'station', '0001_initial', '2019-09-02 01:44:13.179075'),
(20, 'vax', '0001_initial', '2019-09-02 01:44:14.820735'),
(21, 'storage', '0001_initial', '2019-09-02 01:44:16.540764'),
(22, 'users', '0001_initial', '2019-09-02 01:44:19.789740'),
(23, 'blog', '0002_auto_20190905_1926', '2019-09-05 22:26:38.185716'),
(24, 'station', '0002_auto_20190905_2147', '2019-09-06 00:47:53.693244'),
(25, 'storage', '0002_auto_20190905_2147', '2019-09-06 00:47:53.853403'),
(26, 'vax', '0002_auto_20190905_2147', '2019-09-06 00:47:54.219656'),
(27, 'storage', '0003_storage_quantidade', '2019-09-07 16:02:50.560248'),
(28, 'card', '0001_initial', '2019-09-08 22:08:54.632214'),
(29, 'users', '0002_profile_cpf', '2019-09-15 20:32:44.527080'),
(30, 'users', '0003_auto_20190915_1733', '2019-09-15 20:33:47.044190'),
(31, 'users', '0004_remove_profile_cpf', '2019-09-15 21:31:43.130758'),
(32, 'users', '0005_profile_cpf', '2019-09-15 21:47:07.813422'),
(33, 'users', '0006_auto_20190915_1847', '2019-09-15 21:47:32.750445'),
(34, 'users', '0007_remove_profile_cpf', '2019-09-15 21:51:56.943512'),
(35, 'users', '0008_profile_cpf', '2019-09-15 22:17:21.912269'),
(36, 'users', '0009_remove_profile_cpf', '2019-09-15 23:12:58.922242'),
(37, 'users', '0010_auto_20190915_2040', '2019-09-15 23:40:19.196444'),
(38, 'users', '0011_auto_20190915_2101', '2019-09-16 00:01:27.015586'),
(39, 'users', '0012_auto_20191021_2014', '2019-10-21 23:15:41.775216'),
(40, 'users', '0013_auto_20191101_2233', '2019-11-02 01:38:01.619672'),
(41, 'users', '0014_auto_20191101_2234', '2019-11-02 01:38:01.676634'),
(42, 'users', '0015_auto_20191101_2243', '2019-11-02 01:43:58.142905'),
(43, 'storage', '0004_storage_ativo', '2019-11-02 03:14:39.006139'),
(44, 'users', '0016_auto_20191103_0115', '2019-11-03 04:15:52.543042');

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
('0jy46gb0lw8i13m8rudhqq8h7fvcmx0y', 'NGM4MmNjNjI3NDc1MmFiOTg3YjBkYzAwODQyYzNkNmU4YTRmYWU4OTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJkNGFhMjc4ZDczZmRmMGJjZTU0ODkyYWNlY2U4YTIwNmJiOWMyM2EwIn0=', '2019-11-04 22:34:21.435277'),
('5avwihwui3ar6kg16xmd3phkgbs3ltqm', 'NGM4MmNjNjI3NDc1MmFiOTg3YjBkYzAwODQyYzNkNmU4YTRmYWU4OTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJkNGFhMjc4ZDczZmRmMGJjZTU0ODkyYWNlY2U4YTIwNmJiOWMyM2EwIn0=', '2019-10-07 00:01:58.050227'),
('7vgzy8cjx7lypbdd29cvrr0w2zl8barg', 'NGM4MmNjNjI3NDc1MmFiOTg3YjBkYzAwODQyYzNkNmU4YTRmYWU4OTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJkNGFhMjc4ZDczZmRmMGJjZTU0ODkyYWNlY2U4YTIwNmJiOWMyM2EwIn0=', '2019-09-22 20:09:05.097381'),
('ay819wh45fnsxk8bevxt8xligc4pcvwk', 'NGM4MmNjNjI3NDc1MmFiOTg3YjBkYzAwODQyYzNkNmU4YTRmYWU4OTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJkNGFhMjc4ZDczZmRmMGJjZTU0ODkyYWNlY2U4YTIwNmJiOWMyM2EwIn0=', '2019-11-07 21:46:34.084686'),
('ggbxfxvbmdkaxzj5y6cufrsr2jam5lve', 'NGM4MmNjNjI3NDc1MmFiOTg3YjBkYzAwODQyYzNkNmU4YTRmYWU4OTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJkNGFhMjc4ZDczZmRmMGJjZTU0ODkyYWNlY2U4YTIwNmJiOWMyM2EwIn0=', '2019-11-16 02:46:26.058902'),
('l7qaexv1raknxhf29etjppwiih9tgsrk', 'MDJhOGRlYWZjMzNiZWEwMDUzN2Y3NTZhZTI0YjVmZjY4NDZkYWFlYTp7Il9hdXRoX3VzZXJfaWQiOiIzIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI1OGJmYzY3ZTIyMmQ3YjlhNmEzZmM1ZThmMmQyZDkzNTg5Mzc4MWE2In0=', '2019-10-03 21:44:51.484056'),
('w82yshffxfgyt8bqyhvp5cpo91o2npmw', 'NGM4MmNjNjI3NDc1MmFiOTg3YjBkYzAwODQyYzNkNmU4YTRmYWU4OTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJkNGFhMjc4ZDczZmRmMGJjZTU0ODkyYWNlY2U4YTIwNmJiOWMyM2EwIn0=', '2019-11-04 23:29:23.751538'),
('yk7cs272sjgf4lc9l236unhdlw9khq5z', 'NGM4MmNjNjI3NDc1MmFiOTg3YjBkYzAwODQyYzNkNmU4YTRmYWU4OTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJkNGFhMjc4ZDczZmRmMGJjZTU0ODkyYWNlY2U4YTIwNmJiOWMyM2EwIn0=', '2019-11-07 22:26:36.147884');

-- --------------------------------------------------------

--
-- Table structure for table `station_station`
--

CREATE TABLE `station_station` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `descricao` longtext NOT NULL,
  `author_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `station_station`
--

INSERT INTO `station_station` (`id`, `nome`, `descricao`, `author_id`) VALUES
(1, 'UBS santana', 'Unidade básica de Saúde de santana, Joaquim Antônio Eirado', 1),
(2, 'UBS cachoerinha', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborums.', 1),
(3, 'UBS Santa cruz', 'texto', 1),
(4, 'Campos do Jordão UBS', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 1);

-- --------------------------------------------------------

--
-- Table structure for table `storage_storage`
--

CREATE TABLE `storage_storage` (
  `id` int(11) NOT NULL,
  `lote` varchar(30) NOT NULL,
  `descricao` longtext NOT NULL,
  `date_posted` datetime(6) NOT NULL,
  `author_id` int(11) NOT NULL,
  `vax_id` int(11) NOT NULL,
  `quantidade` int(11) NOT NULL,
  `ativo` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `storage_storage`
--

INSERT INTO `storage_storage` (`id`, `lote`, `descricao`, `date_posted`, `author_id`, `vax_id`, `quantidade`, `ativo`) VALUES
(1, '289518', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', '2019-09-02 01:50:22.643965', 1, 2, 10, 'A'),
(2, '18548', 'lorem ipsum', '2019-09-06 01:11:24.147270', 1, 1, 10, 'A'),
(3, '158', 'Vacinão massa', '2019-09-07 16:06:38.417334', 1, 1, 154, 'A'),
(4, '9821', 'Chegou e pegou fogo', '2019-09-07 19:13:35.885576', 1, 3, 15, 'I'),
(5, '8448', 'Chegou e pegou fogo e explodiu', '2019-09-07 19:36:32.982061', 1, 1, 151, 'A'),
(6, '88', 'Essa tava geladinha', '2019-09-07 19:39:47.856199', 1, 4, 175, 'I'),
(7, '111', 'lorem ipsum', '2019-09-07 20:21:47.229664', 1, 4, 17, 'A'),
(8, '1112', 'lorem ipsum', '2019-09-07 20:23:37.421589', 1, 2, 17, 'A'),
(9, '11122', 'lorem ipsum', '2019-09-07 20:24:40.477900', 1, 1, 17, 'A'),
(10, '1111', 'Chegou e saiu voando', '2019-09-07 20:35:42.862495', 1, 3, 15, 'A'),
(11, '36', 'Chegou funcionante', '2019-09-07 20:39:06.646107', 1, 1, 17, 'I'),
(12, '99', 'TEste', '2019-09-07 20:40:13.997473', 1, 1, 17, 'I'),
(13, '1234567', 'Da empresa Nova Corp', '2019-10-21 22:45:11.580828', 1, 5, 1532, 'I'),
(14, '123456', 'Teste', '2019-10-24 22:50:43.314173', 1, 5, 154, 'A');

-- --------------------------------------------------------

--
-- Table structure for table `users_profile`
--

CREATE TABLE `users_profile` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `cpf` varchar(11) NOT NULL,
  `data_nascimento` datetime(6) NOT NULL,
  `cns` varchar(15) NOT NULL,
  `nome_mae` varchar(60) NOT NULL,
  `nome_pai` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_profile`
--

INSERT INTO `users_profile` (`id`, `user_id`, `cpf`, `data_nascimento`, `cns`, `nome_mae`, `nome_pai`) VALUES
(1, 1, '49861694838', '1970-09-15 00:00:00.000000', '712454363610004', '', ''),
(2, 2, '39604497049', '1998-09-15 00:00:00.000000', '777953487180000', '', ''),
(3, 3, '39604497041', '1900-09-19 00:00:00.000000', '118345644120003', '', ''),
(4, 4, '15402299803', '2018-10-21 00:00:00.000000', '735974388640009', '', ''),
(5, 5, '76855375083', '1994-11-01 00:00:00.000000', '168290654210008', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `vax_vax`
--

CREATE TABLE `vax_vax` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `descricao` longtext NOT NULL,
  `dose` int(11) NOT NULL,
  `temperature` double NOT NULL,
  `milimeter` double NOT NULL,
  `author_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vax_vax`
--

INSERT INTO `vax_vax` (`id`, `nome`, `descricao`, `dose`, `temperature`, `milimeter`, `author_id`) VALUES
(1, 'Vacina do sarampo', '\"Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.\"', 15, 15, 11, 1),
(2, 'Pentavalente', 'previne difteria, tétano, coqueluche, hepatite B e meningite e infecções por HiB', 1, 5, 8, 1),
(3, 'Rotavírus', 'previne diarreia por rotavírus', 1, 25, 111, 1),
(4, 'Meningocócica C', 'previne a doença meningocócica C) – 1ª dose', 1, 12, 1, 1),
(5, 'Febre Amarela 1', 'Previne a febre amarela', 1, -2, 2.5, 1),
(6, 'Antitetânica', 'lorem ipsum', 1, 10, 23, 1),
(7, 'Antitetânica 15', 'lorem ipsum', 1, 10, 23, 1);

--
-- Indexes for dumped tables
--

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
-- Indexes for table `blog_post`
--
ALTER TABLE `blog_post`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_post_author_id_dd7a8485_fk_auth_user_id` (`author_id`);

--
-- Indexes for table `card_card`
--
ALTER TABLE `card_card`
  ADD PRIMARY KEY (`id`),
  ADD KEY `card_card_author_id_ad805307_fk_auth_user_id` (`author_id`),
  ADD KEY `card_card_lote_id_04fdf2f1_fk_storage_storage_id` (`lote_id`),
  ADD KEY `card_card_usuario_id_216c9cf4_fk_auth_user_id` (`usuario_id`),
  ADD KEY `card_card_vacina_id_92b2909d_fk_vax_vax_id` (`vacina_id`);

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
-- Indexes for table `station_station`
--
ALTER TABLE `station_station`
  ADD PRIMARY KEY (`id`),
  ADD KEY `station_station_author_id_b84342e7_fk_auth_user_id` (`author_id`);

--
-- Indexes for table `storage_storage`
--
ALTER TABLE `storage_storage`
  ADD PRIMARY KEY (`id`),
  ADD KEY `storage_storage_author_id_93eca840_fk_auth_user_id` (`author_id`),
  ADD KEY `storage_storage_vax_id_631a5291_fk_vax_vax_id` (`vax_id`);

--
-- Indexes for table `users_profile`
--
ALTER TABLE `users_profile`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`),
  ADD UNIQUE KEY `users_profile_cpf_f5357628_uniq` (`cpf`),
  ADD UNIQUE KEY `users_profile_cns_3d27d133_uniq` (`cns`);

--
-- Indexes for table `vax_vax`
--
ALTER TABLE `vax_vax`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vax_vax_author_id_28545505_fk_auth_user_id` (`author_id`);

--
-- AUTO_INCREMENT for dumped tables
--

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
-- AUTO_INCREMENT for table `blog_post`
--
ALTER TABLE `blog_post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `card_card`
--
ALTER TABLE `card_card`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `station_station`
--
ALTER TABLE `station_station`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `storage_storage`
--
ALTER TABLE `storage_storage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users_profile`
--
ALTER TABLE `users_profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `vax_vax`
--
ALTER TABLE `vax_vax`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

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
-- Constraints for table `blog_post`
--
ALTER TABLE `blog_post`
  ADD CONSTRAINT `blog_post_author_id_dd7a8485_fk_auth_user_id` FOREIGN KEY (`author_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `card_card`
--
ALTER TABLE `card_card`
  ADD CONSTRAINT `card_card_author_id_ad805307_fk_auth_user_id` FOREIGN KEY (`author_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `card_card_lote_id_04fdf2f1_fk_storage_storage_id` FOREIGN KEY (`lote_id`) REFERENCES `storage_storage` (`id`),
  ADD CONSTRAINT `card_card_usuario_id_216c9cf4_fk_auth_user_id` FOREIGN KEY (`usuario_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `card_card_vacina_id_92b2909d_fk_vax_vax_id` FOREIGN KEY (`vacina_id`) REFERENCES `vax_vax` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `station_station`
--
ALTER TABLE `station_station`
  ADD CONSTRAINT `station_station_author_id_b84342e7_fk_auth_user_id` FOREIGN KEY (`author_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `storage_storage`
--
ALTER TABLE `storage_storage`
  ADD CONSTRAINT `storage_storage_author_id_93eca840_fk_auth_user_id` FOREIGN KEY (`author_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `storage_storage_vax_id_631a5291_fk_vax_vax_id` FOREIGN KEY (`vax_id`) REFERENCES `vax_vax` (`id`);

--
-- Constraints for table `users_profile`
--
ALTER TABLE `users_profile`
  ADD CONSTRAINT `users_profile_user_id_2112e78d_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `vax_vax`
--
ALTER TABLE `vax_vax`
  ADD CONSTRAINT `vax_vax_author_id_28545505_fk_auth_user_id` FOREIGN KEY (`author_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
