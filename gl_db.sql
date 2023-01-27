-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : ven. 27 jan. 2023 à 20:16
-- Version du serveur : 10.4.27-MariaDB
-- Version de PHP : 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `gl_db`
--

-- --------------------------------------------------------

--
-- Structure de la table `accounts_utilisateur`
--

CREATE TABLE `accounts_utilisateur` (
  `id` bigint(20) NOT NULL,
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `accounts_utilisateur`
--

INSERT INTO `accounts_utilisateur` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$390000$CuKiRsWEhyBUCOE2lT2Qpk$ckgWGrrfi4Auy2DIyTbBhT4lSCOsPbLVJZYkhLXN9pg=', '2023-01-27 18:55:53.634346', 1, 'admin', '', '', 'admin@gmail.com', 1, 1, '2023-01-27 18:55:27.753834'),
(2, 'pass', NULL, 0, 'sara', '', '', '', 0, 1, '2023-01-27 18:57:35.000000');

-- --------------------------------------------------------

--
-- Structure de la table `accounts_utilisateur_groups`
--

CREATE TABLE `accounts_utilisateur_groups` (
  `id` bigint(20) NOT NULL,
  `utilisateur_id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `accounts_utilisateur_user_permissions`
--

CREATE TABLE `accounts_utilisateur_user_permissions` (
  `id` bigint(20) NOT NULL,
  `utilisateur_id` bigint(20) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `annonces_annonce`
--

CREATE TABLE `annonces_annonce` (
  `id` bigint(20) NOT NULL,
  `titre` varchar(50) DEFAULT NULL,
  `category` varchar(50) NOT NULL,
  `slug` varchar(128) DEFAULT NULL,
  `themeAnnonce` varchar(50) DEFAULT NULL,
  `modalite` varchar(10) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `tarif` varchar(10) DEFAULT NULL,
  `adressAnnonce` varchar(100) DEFAULT NULL,
  `wilayaAnnonce` varchar(50) DEFAULT NULL,
  `communeAnnonce` varchar(50) DEFAULT NULL,
  `datepub` datetime(6) DEFAULT NULL,
  `photoAnnonce` varchar(100) NOT NULL,
  `nomAnnonceur` varchar(50) DEFAULT NULL,
  `prenomAnnonceur` varchar(50) DEFAULT NULL,
  `adressAnnonceur` varchar(100) DEFAULT NULL,
  `emailAnnonceur` varchar(50) DEFAULT NULL,
  `telAnnonceur` varchar(10) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `annonces_annonce2`
--

CREATE TABLE `annonces_annonce2` (
  `id` bigint(20) NOT NULL,
  `annonce_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `annonces_favori`
--

CREATE TABLE `annonces_favori` (
  `id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `annonces_favori_annonces`
--

CREATE TABLE `annonces_favori_annonces` (
  `id` bigint(20) NOT NULL,
  `favori_id` bigint(20) NOT NULL,
  `annonce2_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `annonces_message`
--

CREATE TABLE `annonces_message` (
  `id` bigint(20) NOT NULL,
  `message` longtext DEFAULT NULL,
  `recever_id` bigint(20) DEFAULT NULL,
  `sender_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `auth_permission`
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
(13, 'Can add content type', 4, 'add_contenttype'),
(14, 'Can change content type', 4, 'change_contenttype'),
(15, 'Can delete content type', 4, 'delete_contenttype'),
(16, 'Can view content type', 4, 'view_contenttype'),
(17, 'Can add session', 5, 'add_session'),
(18, 'Can change session', 5, 'change_session'),
(19, 'Can delete session', 5, 'delete_session'),
(20, 'Can view session', 5, 'view_session'),
(21, 'Can add annonce', 6, 'add_annonce'),
(22, 'Can change annonce', 6, 'change_annonce'),
(23, 'Can delete annonce', 6, 'delete_annonce'),
(24, 'Can view annonce', 6, 'view_annonce'),
(25, 'Can add annonce2', 7, 'add_annonce2'),
(26, 'Can change annonce2', 7, 'change_annonce2'),
(27, 'Can delete annonce2', 7, 'delete_annonce2'),
(28, 'Can view annonce2', 7, 'view_annonce2'),
(29, 'Can add message', 8, 'add_message'),
(30, 'Can change message', 8, 'change_message'),
(31, 'Can delete message', 8, 'delete_message'),
(32, 'Can view message', 8, 'view_message'),
(33, 'Can add favori', 9, 'add_favori'),
(34, 'Can change favori', 9, 'change_favori'),
(35, 'Can delete favori', 9, 'delete_favori'),
(36, 'Can view favori', 9, 'view_favori'),
(37, 'Can add user', 10, 'add_utilisateur'),
(38, 'Can change user', 10, 'change_utilisateur'),
(39, 'Can delete user', 10, 'delete_utilisateur'),
(40, 'Can view user', 10, 'view_utilisateur'),
(41, 'Can add association', 11, 'add_association'),
(42, 'Can change association', 11, 'change_association'),
(43, 'Can delete association', 11, 'delete_association'),
(44, 'Can view association', 11, 'view_association'),
(45, 'Can add code', 12, 'add_code'),
(46, 'Can change code', 12, 'change_code'),
(47, 'Can delete code', 12, 'delete_code'),
(48, 'Can view code', 12, 'view_code'),
(49, 'Can add nonce', 13, 'add_nonce'),
(50, 'Can change nonce', 13, 'change_nonce'),
(51, 'Can delete nonce', 13, 'delete_nonce'),
(52, 'Can view nonce', 13, 'view_nonce'),
(53, 'Can add user social auth', 14, 'add_usersocialauth'),
(54, 'Can change user social auth', 14, 'change_usersocialauth'),
(55, 'Can delete user social auth', 14, 'delete_usersocialauth'),
(56, 'Can view user social auth', 14, 'view_usersocialauth'),
(57, 'Can add partial', 15, 'add_partial'),
(58, 'Can change partial', 15, 'change_partial'),
(59, 'Can delete partial', 15, 'delete_partial'),
(60, 'Can view partial', 15, 'view_partial');

-- --------------------------------------------------------

--
-- Structure de la table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2023-01-27 18:57:48.966327', '2', 'sara', 1, '[{\"added\": {}}]', 10, 1);

-- --------------------------------------------------------

--
-- Structure de la table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(10, 'accounts', 'utilisateur'),
(1, 'admin', 'logentry'),
(6, 'annonces', 'annonce'),
(7, 'annonces', 'annonce2'),
(9, 'annonces', 'favori'),
(8, 'annonces', 'message'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'contenttypes', 'contenttype'),
(5, 'sessions', 'session'),
(11, 'social_django', 'association'),
(12, 'social_django', 'code'),
(13, 'social_django', 'nonce'),
(15, 'social_django', 'partial'),
(14, 'social_django', 'usersocialauth');

-- --------------------------------------------------------

--
-- Structure de la table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-01-27 18:53:38.351692'),
(2, 'contenttypes', '0002_remove_content_type_name', '2023-01-27 18:53:38.424611'),
(3, 'auth', '0001_initial', '2023-01-27 18:53:38.881876'),
(4, 'auth', '0002_alter_permission_name_max_length', '2023-01-27 18:53:38.947767'),
(5, 'auth', '0003_alter_user_email_max_length', '2023-01-27 18:53:38.957742'),
(6, 'auth', '0004_alter_user_username_opts', '2023-01-27 18:53:38.966717'),
(7, 'auth', '0005_alter_user_last_login_null', '2023-01-27 18:53:38.977730'),
(8, 'auth', '0006_require_contenttypes_0002', '2023-01-27 18:53:38.981720'),
(9, 'auth', '0007_alter_validators_add_error_messages', '2023-01-27 18:53:38.991704'),
(10, 'auth', '0008_alter_user_username_max_length', '2023-01-27 18:53:39.005680'),
(11, 'auth', '0009_alter_user_last_name_max_length', '2023-01-27 18:53:39.014645'),
(12, 'auth', '0010_alter_group_name_max_length', '2023-01-27 18:53:39.076928'),
(13, 'auth', '0011_update_proxy_permissions', '2023-01-27 18:53:39.087900'),
(14, 'auth', '0012_alter_user_first_name_max_length', '2023-01-27 18:53:39.097872'),
(15, 'accounts', '0001_initial', '2023-01-27 18:53:39.368792'),
(16, 'admin', '0001_initial', '2023-01-27 18:53:39.499442'),
(17, 'admin', '0002_logentry_remove_auto_add', '2023-01-27 18:53:39.521309'),
(18, 'admin', '0003_logentry_add_action_flag_choices', '2023-01-27 18:53:39.532278'),
(19, 'annonces', '0001_initial', '2023-01-27 18:53:40.102763'),
(20, 'annonces', '0002_alter_annonce_datepub_alter_deposer_datepub', '2023-01-27 18:53:40.124188'),
(21, 'annonces', '0003_alter_annonce_datepub_alter_deposer_datepub', '2023-01-27 18:53:40.145141'),
(22, 'annonces', '0004_annonce_user_alter_annonce_datepub_delete_deposer', '2023-01-27 18:53:40.267694'),
(23, 'annonces', '0005_alter_annonce_datepub', '2023-01-27 18:53:40.297925'),
(24, 'annonces', '0006_alter_annonce_datepub', '2023-01-27 18:53:40.315879'),
(25, 'annonces', '0007_alter_annonce_datepub', '2023-01-27 18:53:40.332883'),
(26, 'annonces', '0008_alter_annonce_datepub_alter_annonce_photoannonce', '2023-01-27 18:53:40.361559'),
(27, 'annonces', '0009_alter_annonce_datepub', '2023-01-27 18:53:40.426408'),
(28, 'annonces', '0010_annonce_date1_annonce_date2_alter_annonce_datepub', '2023-01-27 18:53:40.485303'),
(29, 'annonces', '0011_remove_annonce_date1_remove_annonce_date2_and_more', '2023-01-27 18:53:40.545599'),
(30, 'annonces', '0012_alter_annonce_datepub', '2023-01-27 18:53:40.564751'),
(31, 'annonces', '0013_alter_annonce_communeannonce_alter_annonce_datepub_and_more', '2023-01-27 18:53:40.617357'),
(32, 'annonces', '0014_alter_annonce_datepub', '2023-01-27 18:53:40.640792'),
(33, 'annonces', '0015_alter_annonce_communeannonce_alter_annonce_datepub', '2023-01-27 18:53:40.697302'),
(34, 'annonces', '0016_alter_annonce_datepub', '2023-01-27 18:53:40.713532'),
(35, 'annonces', '0017_alter_annonce_datepub', '2023-01-27 18:53:40.731441'),
(36, 'sessions', '0001_initial', '2023-01-27 18:53:40.767662'),
(37, 'default', '0001_initial', '2023-01-27 18:53:40.946158'),
(38, 'social_auth', '0001_initial', '2023-01-27 18:53:40.946158'),
(39, 'default', '0002_add_related_name', '2023-01-27 18:53:40.974517'),
(40, 'social_auth', '0002_add_related_name', '2023-01-27 18:53:40.979266'),
(41, 'default', '0003_alter_email_max_length', '2023-01-27 18:53:41.046120'),
(42, 'social_auth', '0003_alter_email_max_length', '2023-01-27 18:53:41.049112'),
(43, 'default', '0004_auto_20160423_0400', '2023-01-27 18:53:41.064071'),
(44, 'social_auth', '0004_auto_20160423_0400', '2023-01-27 18:53:41.067964'),
(45, 'social_auth', '0005_auto_20160727_2333', '2023-01-27 18:53:41.088168'),
(46, 'social_django', '0006_partial', '2023-01-27 18:53:41.127079'),
(47, 'social_django', '0007_code_timestamp', '2023-01-27 18:53:41.177998'),
(48, 'social_django', '0008_partial_timestamp', '2023-01-27 18:53:41.217164'),
(49, 'social_django', '0009_auto_20191118_0520', '2023-01-27 18:53:41.298258'),
(50, 'social_django', '0010_uid_db_index', '2023-01-27 18:53:41.329085'),
(51, 'social_django', '0003_alter_email_max_length', '2023-01-27 18:53:41.338858'),
(52, 'social_django', '0002_add_related_name', '2023-01-27 18:53:41.343755'),
(53, 'social_django', '0001_initial', '2023-01-27 18:53:41.346136'),
(54, 'social_django', '0004_auto_20160423_0400', '2023-01-27 18:53:41.351166'),
(55, 'social_django', '0005_auto_20160727_2333', '2023-01-27 18:53:41.357161');

-- --------------------------------------------------------

--
-- Structure de la table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Déchargement des données de la table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('sjvyucxipat3sfcwj7d3ujp1wyxndlvv', '.eJxVjMsOwiAQRf-FtSHAlJdL934DGRiQqoGktCvjv2uTLnR7zzn3xQJuaw3byEuYiZ2ZZKffLWJ65LYDumO7dZ56W5c58l3hBx382ik_L4f7d1Bx1G-trQIdizTFYVRAGZ1HBOfjZGyeNEhlqDggbUrUAAJAgze-JIHFCmLvD9h5N34:1pLTtB:ZoEE1en-ZwCxq50qcqn8Nw-ODb4E-MmzY90jyeWsrHw', '2023-02-10 18:55:53.636424');

-- --------------------------------------------------------

--
-- Structure de la table `social_auth_association`
--

CREATE TABLE `social_auth_association` (
  `id` int(11) NOT NULL,
  `server_url` varchar(255) NOT NULL,
  `handle` varchar(255) NOT NULL,
  `secret` varchar(255) NOT NULL,
  `issued` int(11) NOT NULL,
  `lifetime` int(11) NOT NULL,
  `assoc_type` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `social_auth_code`
--

CREATE TABLE `social_auth_code` (
  `id` int(11) NOT NULL,
  `email` varchar(254) NOT NULL,
  `code` varchar(32) NOT NULL,
  `verified` tinyint(1) NOT NULL,
  `timestamp` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `social_auth_nonce`
--

CREATE TABLE `social_auth_nonce` (
  `id` int(11) NOT NULL,
  `server_url` varchar(255) NOT NULL,
  `timestamp` int(11) NOT NULL,
  `salt` varchar(65) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `social_auth_partial`
--

CREATE TABLE `social_auth_partial` (
  `id` int(11) NOT NULL,
  `token` varchar(32) NOT NULL,
  `next_step` smallint(5) UNSIGNED NOT NULL CHECK (`next_step` >= 0),
  `backend` varchar(32) NOT NULL,
  `data` longtext NOT NULL,
  `timestamp` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `social_auth_usersocialauth`
--

CREATE TABLE `social_auth_usersocialauth` (
  `id` int(11) NOT NULL,
  `provider` varchar(32) NOT NULL,
  `uid` varchar(255) NOT NULL,
  `extra_data` longtext NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `created` datetime(6) NOT NULL,
  `modified` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `accounts_utilisateur`
--
ALTER TABLE `accounts_utilisateur`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Index pour la table `accounts_utilisateur_groups`
--
ALTER TABLE `accounts_utilisateur_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `accounts_utilisateur_gro_utilisateur_id_group_id_941da25f_uniq` (`utilisateur_id`,`group_id`),
  ADD KEY `accounts_utilisateur_groups_group_id_a4007cd2_fk_auth_group_id` (`group_id`);

--
-- Index pour la table `accounts_utilisateur_user_permissions`
--
ALTER TABLE `accounts_utilisateur_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `accounts_utilisateur_use_utilisateur_id_permissio_59447ab2_uniq` (`utilisateur_id`,`permission_id`),
  ADD KEY `accounts_utilisateur_permission_id_6f24b1cb_fk_auth_perm` (`permission_id`);

--
-- Index pour la table `annonces_annonce`
--
ALTER TABLE `annonces_annonce`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `titre` (`titre`),
  ADD KEY `annonces_annonce_slug_32f2ca68` (`slug`),
  ADD KEY `annonces_annonce_user_id_f38f733a_fk_accounts_utilisateur_id` (`user_id`);

--
-- Index pour la table `annonces_annonce2`
--
ALTER TABLE `annonces_annonce2`
  ADD PRIMARY KEY (`id`),
  ADD KEY `annonces_annonce2_annonce_id_7a9e88e1_fk_annonces_annonce_id` (`annonce_id`),
  ADD KEY `annonces_annonce2_user_id_038cdffb_fk_accounts_utilisateur_id` (`user_id`);

--
-- Index pour la table `annonces_favori`
--
ALTER TABLE `annonces_favori`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- Index pour la table `annonces_favori_annonces`
--
ALTER TABLE `annonces_favori_annonces`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `annonces_favori_annonces_favori_id_annonce2_id_a4e2f2d2_uniq` (`favori_id`,`annonce2_id`),
  ADD KEY `annonces_favori_anno_annonce2_id_6f08f3dd_fk_annonces_` (`annonce2_id`);

--
-- Index pour la table `annonces_message`
--
ALTER TABLE `annonces_message`
  ADD PRIMARY KEY (`id`),
  ADD KEY `annonces_message_recever_id_1e3d6dc7_fk_accounts_utilisateur_id` (`recever_id`),
  ADD KEY `annonces_message_sender_id_ebd9e9a8_fk_accounts_utilisateur_id` (`sender_id`);

--
-- Index pour la table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Index pour la table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Index pour la table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Index pour la table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_accounts_utilisateur_id` (`user_id`);

--
-- Index pour la table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Index pour la table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Index pour la table `social_auth_association`
--
ALTER TABLE `social_auth_association`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `social_auth_association_server_url_handle_078befa2_uniq` (`server_url`,`handle`);

--
-- Index pour la table `social_auth_code`
--
ALTER TABLE `social_auth_code`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `social_auth_code_email_code_801b2d02_uniq` (`email`,`code`),
  ADD KEY `social_auth_code_code_a2393167` (`code`),
  ADD KEY `social_auth_code_timestamp_176b341f` (`timestamp`);

--
-- Index pour la table `social_auth_nonce`
--
ALTER TABLE `social_auth_nonce`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `social_auth_nonce_server_url_timestamp_salt_f6284463_uniq` (`server_url`,`timestamp`,`salt`);

--
-- Index pour la table `social_auth_partial`
--
ALTER TABLE `social_auth_partial`
  ADD PRIMARY KEY (`id`),
  ADD KEY `social_auth_partial_token_3017fea3` (`token`),
  ADD KEY `social_auth_partial_timestamp_50f2119f` (`timestamp`);

--
-- Index pour la table `social_auth_usersocialauth`
--
ALTER TABLE `social_auth_usersocialauth`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `social_auth_usersocialauth_provider_uid_e6b5e668_uniq` (`provider`,`uid`),
  ADD KEY `social_auth_usersoci_user_id_17d28448_fk_accounts_` (`user_id`),
  ADD KEY `social_auth_usersocialauth_uid_796e51dc` (`uid`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `accounts_utilisateur`
--
ALTER TABLE `accounts_utilisateur`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `accounts_utilisateur_groups`
--
ALTER TABLE `accounts_utilisateur_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `accounts_utilisateur_user_permissions`
--
ALTER TABLE `accounts_utilisateur_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `annonces_annonce`
--
ALTER TABLE `annonces_annonce`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `annonces_annonce2`
--
ALTER TABLE `annonces_annonce2`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `annonces_favori`
--
ALTER TABLE `annonces_favori`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `annonces_favori_annonces`
--
ALTER TABLE `annonces_favori_annonces`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `annonces_message`
--
ALTER TABLE `annonces_message`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT pour la table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pour la table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT pour la table `social_auth_association`
--
ALTER TABLE `social_auth_association`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `social_auth_code`
--
ALTER TABLE `social_auth_code`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `social_auth_nonce`
--
ALTER TABLE `social_auth_nonce`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `social_auth_partial`
--
ALTER TABLE `social_auth_partial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `social_auth_usersocialauth`
--
ALTER TABLE `social_auth_usersocialauth`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `accounts_utilisateur_groups`
--
ALTER TABLE `accounts_utilisateur_groups`
  ADD CONSTRAINT `accounts_utilisateur_groups_group_id_a4007cd2_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `accounts_utilisateur_utilisateur_id_ca92c3d8_fk_accounts_` FOREIGN KEY (`utilisateur_id`) REFERENCES `accounts_utilisateur` (`id`);

--
-- Contraintes pour la table `accounts_utilisateur_user_permissions`
--
ALTER TABLE `accounts_utilisateur_user_permissions`
  ADD CONSTRAINT `accounts_utilisateur_permission_id_6f24b1cb_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `accounts_utilisateur_utilisateur_id_1f62d6d5_fk_accounts_` FOREIGN KEY (`utilisateur_id`) REFERENCES `accounts_utilisateur` (`id`);

--
-- Contraintes pour la table `annonces_annonce`
--
ALTER TABLE `annonces_annonce`
  ADD CONSTRAINT `annonces_annonce_user_id_f38f733a_fk_accounts_utilisateur_id` FOREIGN KEY (`user_id`) REFERENCES `accounts_utilisateur` (`id`);

--
-- Contraintes pour la table `annonces_annonce2`
--
ALTER TABLE `annonces_annonce2`
  ADD CONSTRAINT `annonces_annonce2_annonce_id_7a9e88e1_fk_annonces_annonce_id` FOREIGN KEY (`annonce_id`) REFERENCES `annonces_annonce` (`id`),
  ADD CONSTRAINT `annonces_annonce2_user_id_038cdffb_fk_accounts_utilisateur_id` FOREIGN KEY (`user_id`) REFERENCES `accounts_utilisateur` (`id`);

--
-- Contraintes pour la table `annonces_favori`
--
ALTER TABLE `annonces_favori`
  ADD CONSTRAINT `annonces_favori_user_id_7483dbb9_fk_accounts_utilisateur_id` FOREIGN KEY (`user_id`) REFERENCES `accounts_utilisateur` (`id`);

--
-- Contraintes pour la table `annonces_favori_annonces`
--
ALTER TABLE `annonces_favori_annonces`
  ADD CONSTRAINT `annonces_favori_anno_annonce2_id_6f08f3dd_fk_annonces_` FOREIGN KEY (`annonce2_id`) REFERENCES `annonces_annonce2` (`id`),
  ADD CONSTRAINT `annonces_favori_anno_favori_id_eb8af089_fk_annonces_` FOREIGN KEY (`favori_id`) REFERENCES `annonces_favori` (`id`);

--
-- Contraintes pour la table `annonces_message`
--
ALTER TABLE `annonces_message`
  ADD CONSTRAINT `annonces_message_recever_id_1e3d6dc7_fk_accounts_utilisateur_id` FOREIGN KEY (`recever_id`) REFERENCES `accounts_utilisateur` (`id`),
  ADD CONSTRAINT `annonces_message_sender_id_ebd9e9a8_fk_accounts_utilisateur_id` FOREIGN KEY (`sender_id`) REFERENCES `accounts_utilisateur` (`id`);

--
-- Contraintes pour la table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Contraintes pour la table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Contraintes pour la table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_accounts_utilisateur_id` FOREIGN KEY (`user_id`) REFERENCES `accounts_utilisateur` (`id`);

--
-- Contraintes pour la table `social_auth_usersocialauth`
--
ALTER TABLE `social_auth_usersocialauth`
  ADD CONSTRAINT `social_auth_usersoci_user_id_17d28448_fk_accounts_` FOREIGN KEY (`user_id`) REFERENCES `accounts_utilisateur` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
