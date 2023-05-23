-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 23/05/2023 às 02:41
-- Versão do servidor: 10.4.27-MariaDB
-- Versão do PHP: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `meu_projeto_unimar`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `auth_permission`
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
(25, 'Can add cliente', 7, 'add_cliente'),
(26, 'Can change cliente', 7, 'change_cliente'),
(27, 'Can delete cliente', 7, 'delete_cliente'),
(28, 'Can view cliente', 7, 'view_cliente'),
(29, 'Can add produto', 8, 'add_produto'),
(30, 'Can change produto', 8, 'change_produto'),
(31, 'Can delete produto', 8, 'delete_produto'),
(32, 'Can view produto', 8, 'view_produto');

-- --------------------------------------------------------

--
-- Estrutura para tabela `auth_user`
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$600000$V4FPFdSCqijnd02PxLPu1B$N/xgATcuXih8VDkQDLhujmoRZSYBRd3qm4YqiA8wbI4=', '2023-05-23 00:06:35.797553', 1, 'willian', '', '', 'william.yury@outlook.com', 1, 1, '2023-05-20 11:37:25.000000');

-- --------------------------------------------------------

--
-- Estrutura para tabela `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `auth_user_user_permissions`
--

INSERT INTO `auth_user_user_permissions` (`id`, `user_id`, `permission_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 5),
(6, 1, 6),
(7, 1, 7),
(8, 1, 8),
(9, 1, 9),
(10, 1, 10),
(11, 1, 11),
(12, 1, 12),
(13, 1, 13),
(14, 1, 14),
(15, 1, 15),
(16, 1, 16),
(17, 1, 17),
(18, 1, 18),
(19, 1, 19),
(20, 1, 20),
(21, 1, 21),
(22, 1, 22),
(23, 1, 23),
(24, 1, 24),
(25, 1, 25),
(26, 1, 26),
(27, 1, 27),
(28, 1, 28),
(29, 1, 29),
(30, 1, 30),
(31, 1, 31),
(32, 1, 32);

-- --------------------------------------------------------

--
-- Estrutura para tabela `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2023-05-20 13:41:17.059139', '1', 'willian', 2, '[{\"changed\": {\"fields\": [\"User permissions\"]}}]', 4, 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'meuapp', 'cliente'),
(8, 'meuapp', 'produto'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Estrutura para tabela `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-05-20 11:34:31.126886'),
(2, 'auth', '0001_initial', '2023-05-20 11:34:31.535884'),
(3, 'admin', '0001_initial', '2023-05-20 11:34:31.632870'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-05-20 11:34:31.641885'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-05-20 11:34:31.650872'),
(6, 'contenttypes', '0002_remove_content_type_name', '2023-05-20 11:34:31.700870'),
(7, 'auth', '0002_alter_permission_name_max_length', '2023-05-20 11:34:31.749872'),
(8, 'auth', '0003_alter_user_email_max_length', '2023-05-20 11:34:31.765869'),
(9, 'auth', '0004_alter_user_username_opts', '2023-05-20 11:34:31.772872'),
(10, 'auth', '0005_alter_user_last_login_null', '2023-05-20 11:34:31.807870'),
(11, 'auth', '0006_require_contenttypes_0002', '2023-05-20 11:34:31.811869'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2023-05-20 11:34:31.818873'),
(13, 'auth', '0008_alter_user_username_max_length', '2023-05-20 11:34:31.834869'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2023-05-20 11:34:31.848869'),
(15, 'auth', '0010_alter_group_name_max_length', '2023-05-20 11:34:31.864869'),
(16, 'auth', '0011_update_proxy_permissions', '2023-05-20 11:34:31.872869'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2023-05-20 11:34:31.888869'),
(18, 'meuapp', '0001_initial', '2023-05-20 11:34:31.988869'),
(19, 'sessions', '0001_initial', '2023-05-20 11:34:32.022868');

-- --------------------------------------------------------

--
-- Estrutura para tabela `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('8in48rkw98lpkj5bqwba291j9z9ezq0m', '.eJxVjEsOgkAQBe8yazMZoGdoXbrnDOT1dCOogYTPynh3JWGh21dV7-VabGvfbovN7aDu4gp3-t0E-WHjDvSO8Tb5PI3rPIjfFX_QxTeT2vN6uH8HPZb-W6NTWExchYickgqIqOQOlANVUaskFEIdtRATLnOsjRgGRLAwn937A_daOFg:1q0MRh:D6deXtAdGT9hlMTPgIBYpCn2hZghyptn415OQ0KcHrI', '2023-06-03 13:16:29.444339'),
('boc0lvmwhg27jqj0asw0e6mwmj8zd7wk', '.eJxVjEsOgkAQBe8yazMZoGdoXbrnDOT1dCOogYTPynh3JWGh21dV7-VabGvfbovN7aDu4gp3-t0E-WHjDvSO8Tb5PI3rPIjfFX_QxTeT2vN6uH8HPZb-W6NTWExchYickgqIqOQOlANVUaskFEIdtRATLnOsjRgGRLAwn937A_daOFg:1q0Ude:qMdW4lnzUzorJzN_RRris4Iw2rVU6dMnEm11x0wsQ40', '2023-06-03 22:01:22.807584'),
('efp9n0rl3x06pb945t7q5c8ivbqugzgn', '.eJxVjEsOgkAQBe8yazMZoGdoXbrnDOT1dCOogYTPynh3JWGh21dV7-VabGvfbovN7aDu4gp3-t0E-WHjDvSO8Tb5PI3rPIjfFX_QxTeT2vN6uH8HPZb-W6NTWExchYickgqIqOQOlANVUaskFEIdtRATLnOsjRgGRLAwn937A_daOFg:1q194U:OGPdf_9FLRK_ZzXBRsbITPffxnS95ONb5h_roq4huKI', '2023-06-05 17:11:46.137352'),
('n6sm4cjztiwlc66k0bfi1kq9saey6zrr', '.eJxVjEsOgkAQBe8yazMZoGdoXbrnDOT1dCOogYTPynh3JWGh21dV7-VabGvfbovN7aDu4gp3-t0E-WHjDvSO8Tb5PI3rPIjfFX_QxTeT2vN6uH8HPZb-W6NTWExchYickgqIqOQOlANVUaskFEIdtRATLnOsjRgGRLAwn937A_daOFg:1q0VAe:16J_vJWX1XbNtAhuvcONyBi5B78eBSBgeOFRDA6XAb4', '2023-06-03 22:35:28.610908'),
('yh0m5g1dh1ft9xpfhh9naxqxnsqpyrcy', '.eJxVjEsOgkAQBe8yazMZoGdoXbrnDOT1dCOogYTPynh3JWGh21dV7-VabGvfbovN7aDu4gp3-t0E-WHjDvSO8Tb5PI3rPIjfFX_QxTeT2vN6uH8HPZb-W6NTWExchYickgqIqOQOlANVUaskFEIdtRATLnOsjRgGRLAwn937A_daOFg:1q1FXv:v1c_ydHek9v7Cra2wrJiisp91H9DozDB0cjUh-aDGzQ', '2023-06-06 00:06:35.802553');

-- --------------------------------------------------------

--
-- Estrutura para tabela `meuapp_cliente`
--

CREATE TABLE `meuapp_cliente` (
  `id` bigint(20) NOT NULL,
  `nome` varchar(200) NOT NULL,
  `email` varchar(254) NOT NULL,
  `telefone` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `meuapp_cliente`
--

INSERT INTO `meuapp_cliente` (`id`, `nome`, `email`, `telefone`) VALUES
(8, 'Cliente 1', 'cliente1@email.com', '111-111-1111'),
(9, 'Cliente 2', 'cliente2@email.com', '222-222-2222'),
(10, 'Cliente 3', 'cliente3@email.com', '333-333-3333'),
(11, 'Cliente 4', 'cliente4@email.com', '444-444-4444'),
(12, 'Cliente 5', 'cliente5@email.com', '555-555-5555'),
(13, 'Cliente 6', 'cliente6@email.com', '666-666-6666'),
(14, 'Cliente 7', 'cliente7@email.com', '777-777-7777'),
(15, 'Cliente 8', 'cliente8@email.com', '888-888-8888'),
(16, 'Cliente 9', 'cliente9@email.com', '999-999-9999'),
(17, 'Cliente 10', 'cliente10@email.com', '100-100-1000'),
(18, 'Cliente 11', 'cliente11@email.com', '111-111-1112'),
(19, 'Cliente 12', 'cliente12@email.com', '122-122-1222'),
(20, 'Cliente 13', 'cliente13@email.com', '133-133-1333'),
(21, 'Cliente 14', 'cliente14@email.com', '144-144-1444'),
(22, 'Cliente 15', 'cliente15@email.com', '155-155-1555'),
(23, 'Cliente 16', 'cliente16@email.com', '166-166-1666'),
(24, 'Cliente 17', 'cliente17@email.com', '177-177-1777'),
(25, 'Cliente 18', 'cliente18@email.com', '188-188-1888'),
(26, 'Cliente 19', 'cliente19@email.com', '199-199-1999'),
(27, 'Cliente 20', 'cliente20@email.com', '200-200-2000'),
(28, 'Cliente 21', 'cliente21@email.com', '211-211-2111'),
(29, 'Cliente 22', 'cliente22@email.com', '222-222-2223'),
(30, 'Cliente 23', 'cliente23@email.com', '233-233-2333'),
(31, 'Cliente 24', 'cliente24@email.com', '244-244-2444'),
(32, 'Cliente 25', 'cliente25@email.com', '255-255-2555'),
(33, 'Cliente 26', 'cliente26@email.com', '266-266-2666'),
(34, 'Cliente 27', 'cliente27@email.com', '277-277-2777'),
(35, 'Cliente 28', 'cliente28@email.com', '288-288-2888'),
(36, 'Cliente 29', 'cliente29@email.com', '299-299-2999'),
(37, 'Cliente 30', 'cliente30@email.com', '300-300-3000'),
(38, 'Cliente 31', 'cliente31@email.com', '311-311-3111'),
(39, 'Cliente 32', 'cliente32@email.com', '322-322-3222'),
(40, 'Cliente 33', 'cliente33@email.com', '333-333-3334'),
(41, 'Cliente 34', 'cliente34@email.com', '344-344-3444'),
(42, 'Cliente 35', 'cliente35@email.com', '355-355-3555'),
(43, 'Cliente 36', 'cliente36@email.com', '366-366-3666'),
(44, 'Cliente 37', 'cliente37@email.com', '377-377-3777'),
(45, 'Cliente 38', 'cliente38@email.com', '388-388-3888'),
(46, 'Cliente 39', 'cliente39@email.com', '399-399-3999'),
(47, 'Cliente 40', 'cliente40@email.com', '400-400-4000'),
(48, 'Cliente 41', 'cliente41@email.com', '411-411-4111'),
(49, 'Cliente 42', 'cliente42@email.com', '422-422-4222'),
(50, 'Cliente 43', 'cliente43@email.com', '433-433-4333'),
(51, 'Cliente 44', 'cliente44@email.com', '444-444-4445'),
(52, 'Cliente 45', 'cliente45@email.com', '455-455-4555'),
(53, 'Cliente 46', 'cliente46@email.com', '466-466-4666'),
(54, 'Cliente 47', 'cliente47@email.com', '477-477-4777'),
(55, 'Cliente 48', 'cliente48@email.com', '488-488-4888'),
(56, 'Cliente 49', 'cliente49@email.com', '499-499-4999'),
(57, 'Cliente 50', 'cliente50@email.com', '500-500-5000');

-- --------------------------------------------------------

--
-- Estrutura para tabela `meuapp_produto`
--

CREATE TABLE `meuapp_produto` (
  `id` bigint(20) NOT NULL,
  `nome` varchar(200) NOT NULL,
  `tipo` varchar(200) NOT NULL,
  `codigo` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `meuapp_produto`
--

INSERT INTO `meuapp_produto` (`id`, `nome`, `tipo`, `codigo`) VALUES
(99, 'Produto 1', 'Tipo 1', '123'),
(100, 'Produto 2', 'Tipo 2', '456'),
(101, 'Produto 3', 'Tipo 3', '789'),
(102, 'Produto 4', 'Tipo 4', '101112'),
(103, 'Produto 5', 'Tipo 5', '131415'),
(104, 'Produto 6', 'Tipo 6', '161718'),
(105, 'Produto 7', 'Tipo 7', '192021'),
(106, 'Produto 8', 'Tipo 8', '222324'),
(107, 'Produto 9', 'Tipo 9', '252627'),
(108, 'Produto 10', 'Tipo 10', '282930'),
(109, 'Produto 11', 'Tipo 11', '313233'),
(110, 'Produto 12', 'Tipo 12', '343536'),
(111, 'Produto 13', 'Tipo 13', '373839'),
(112, 'Produto 14', 'Tipo 14', '404142'),
(113, 'Produto 15', 'Tipo 15', '434445'),
(114, 'Produto 16', 'Tipo 16', '464748'),
(115, 'Produto 17', 'Tipo 17', '495051'),
(116, 'Produto 18', 'Tipo 18', '525354'),
(117, 'Produto 19', 'Tipo 19', '555657'),
(118, 'Produto 20', 'Tipo 20', '585960'),
(119, 'Produto 21', 'Tipo 21', '616263'),
(120, 'Produto 22', 'Tipo 22', '646566'),
(121, 'Produto 23', 'Tipo 23', '676869'),
(122, 'Produto 24', 'Tipo 24', '707172'),
(123, 'Produto 25', 'Tipo 25', '737475'),
(124, 'Produto 26', 'Tipo 26', '767778'),
(125, 'Produto 27', 'Tipo 27', '798081'),
(126, 'Produto 28', 'Tipo 28', '828384'),
(127, 'Produto 29', 'Tipo 29', '858687'),
(128, 'Produto 30', 'Tipo 30', '888990'),
(129, 'Produto 31', 'Tipo 31', '919293'),
(130, 'Produto 32', 'Tipo 32', '949596'),
(131, 'Produto 33', 'Tipo 33', '979899'),
(132, 'Produto 34', 'Tipo 34', '100101102'),
(133, 'Produto 35', 'Tipo 35', '103104105'),
(134, 'Produto 36', 'Tipo 36', '106107108'),
(135, 'Produto 37', 'Tipo 37', '109110111'),
(136, 'Produto 38', 'Tipo 38', '112113114'),
(137, 'Produto 39', 'Tipo 39', '115116117'),
(138, 'Produto 40', 'Tipo 40', '118119120'),
(139, 'Produto 41', 'Tipo 41', '121122123'),
(140, 'Produto 42', 'Tipo 42', '124125126'),
(141, 'Produto 43', 'Tipo 43', '127128129'),
(142, 'Produto 44', 'Tipo 44', '130131132'),
(143, 'Produto 45', 'Tipo 45', '133134135'),
(144, 'Produto 46', 'Tipo 46', '136137138'),
(145, 'Produto 47', 'Tipo 47', '139140141'),
(146, 'Produto 48', 'Tipo 48', '142143144'),
(147, 'Produto 49', 'Tipo 49', '145146147'),
(148, 'Produto 50', 'Tipo 50', '148149150');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Índices de tabela `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Índices de tabela `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Índices de tabela `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Índices de tabela `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Índices de tabela `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Índices de tabela `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Índices de tabela `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Índices de tabela `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Índices de tabela `meuapp_cliente`
--
ALTER TABLE `meuapp_cliente`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `meuapp_produto`
--
ALTER TABLE `meuapp_produto`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de tabela `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de tabela `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de tabela `meuapp_cliente`
--
ALTER TABLE `meuapp_cliente`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT de tabela `meuapp_produto`
--
ALTER TABLE `meuapp_produto`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=149;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Restrições para tabelas `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Restrições para tabelas `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Restrições para tabelas `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Restrições para tabelas `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
