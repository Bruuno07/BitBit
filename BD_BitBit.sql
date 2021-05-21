-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.4.19-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             11.2.0.6213
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para bitbit
CREATE DATABASE IF NOT EXISTS `bitbit` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `bitbit`;

-- Volcando estructura para tabla bitbit.captcha
CREATE TABLE IF NOT EXISTS `captcha` (
  `captcha_id` bigint(13) unsigned NOT NULL AUTO_INCREMENT,
  `captcha_time` int(10) unsigned NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `word` varchar(20) NOT NULL,
  PRIMARY KEY (`captcha_id`),
  KEY `word` (`word`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla bitbit.captcha: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `captcha` DISABLE KEYS */;
INSERT INTO `captcha` (`captcha_id`, `captcha_time`, `ip_address`, `word`) VALUES
	(89, 1620658213, '::1', 'kquivxhy');
/*!40000 ALTER TABLE `captcha` ENABLE KEYS */;

-- Volcando estructura para tabla bitbit.groups
CREATE TABLE IF NOT EXISTS `groups` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `description` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla bitbit.groups: ~4 rows (aproximadamente)
/*!40000 ALTER TABLE `groups` DISABLE KEYS */;
INSERT INTO `groups` (`id`, `name`, `description`) VALUES
	(1, 'admin', 'Administrator'),
	(2, 'client', 'Client'),
	(3, 'tecnico', 'Tecnico'),
	(4, 'gestor', 'Gestor');
/*!40000 ALTER TABLE `groups` ENABLE KEYS */;

-- Volcando estructura para tabla bitbit.incidencia
CREATE TABLE IF NOT EXISTS `incidencia` (
  `id_incidencia` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) unsigned DEFAULT NULL,
  `id_Estado` int(11) DEFAULT NULL,
  `id_tecnico` int(10) unsigned DEFAULT NULL,
  `id_material` int(10) DEFAULT NULL,
  `desc_averia` varchar(50) DEFAULT NULL,
  `Fecha_entrada` date DEFAULT NULL,
  `uuid` varchar(50) DEFAULT NULL,
  `Marca` varchar(50) DEFAULT NULL,
  `Modelo` varchar(50) DEFAULT NULL,
  `Numero_serie` varchar(50) DEFAULT NULL,
  `Diagnostico_prev` longtext DEFAULT NULL,
  `Telf` varchar(50) DEFAULT NULL,
  `tiempo_reparcion` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_incidencia`),
  KEY `id_user` (`id_user`),
  KEY `id_Estado` (`id_Estado`),
  KEY `id_tecnico` (`id_tecnico`),
  CONSTRAINT `FK_incidencia_users` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`),
  CONSTRAINT `id_Estado` FOREIGN KEY (`id_Estado`) REFERENCES `tipo_estado` (`id_Estado`),
  CONSTRAINT `id_tecnico` FOREIGN KEY (`id_tecnico`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla bitbit.incidencia: ~3 rows (aproximadamente)
/*!40000 ALTER TABLE `incidencia` DISABLE KEYS */;
INSERT INTO `incidencia` (`id_incidencia`, `id_user`, `id_Estado`, `id_tecnico`, `id_material`, `desc_averia`, `Fecha_entrada`, `uuid`, `Marca`, `Modelo`, `Numero_serie`, `Diagnostico_prev`, `Telf`, `tiempo_reparcion`) VALUES
	(33, 31, 3, 29, NULL, 'a', '2021-05-04', NULL, 'a', 'a', 'a', '<h3 style="color:red;">\n	a</h3>\n', 'a', 'a'),
	(39, 32, 2, NULL, NULL, 'cambio de bateria', '2021-05-11', NULL, 'Samsung', 'A31', '1234567887RTYUIJHGF', '<p>\n	cambio</p>\n', '63245789', '789652'),
	(40, 31, 4, NULL, NULL, 'cambio de bateria', '2021-05-26', NULL, 'Lenovo ', 'Y50-70', '1234567887RTYUIJHGF', '<p>\n	pantalla da&ntilde;ada</p>\n', 'asdad', 'adads');
/*!40000 ALTER TABLE `incidencia` ENABLE KEYS */;

-- Volcando estructura para tabla bitbit.infocontacto
CREATE TABLE IF NOT EXISTS `infocontacto` (
  `id_InfoContacto` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `descripcion` varchar(200) DEFAULT NULL,
  `tipo_solicitut` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_InfoContacto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla bitbit.infocontacto: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `infocontacto` DISABLE KEYS */;
/*!40000 ALTER TABLE `infocontacto` ENABLE KEYS */;

-- Volcando estructura para tabla bitbit.login_attempts
CREATE TABLE IF NOT EXISTS `login_attempts` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(45) NOT NULL,
  `login` varchar(100) NOT NULL,
  `time` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla bitbit.login_attempts: ~11 rows (aproximadamente)
/*!40000 ALTER TABLE `login_attempts` DISABLE KEYS */;
INSERT INTO `login_attempts` (`id`, `ip_address`, `login`, `time`) VALUES
	(39, '::1', 'Trabajador', 1621604271),
	(40, '::1', 'Trabajador', 1621604280),
	(41, '::1', 'Tecnico', 1621604293),
	(42, '::1', 'Tecnico', 1621604300),
	(43, '::1', 'Tecnico', 1621604323),
	(44, '::1', 'Client', 1621604343),
	(45, '::1', 'Client ', 1621604351),
	(46, '::1', 'Client', 1621604368),
	(48, '::1', 'adas', 1621606122),
	(49, '::1', 'asdad', 1621606129),
	(50, '::1', 'Client', 1621607110);
/*!40000 ALTER TABLE `login_attempts` ENABLE KEYS */;

-- Volcando estructura para tabla bitbit.logs
CREATE TABLE IF NOT EXISTS `logs` (
  `id` int(11) NOT NULL,
  `uri` varchar(255) NOT NULL,
  `method` varchar(6) NOT NULL,
  `params` text DEFAULT NULL,
  `api_key` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `time` int(11) NOT NULL,
  `rtime` float DEFAULT NULL,
  `authorized` varchar(1) NOT NULL,
  `response_code` smallint(3) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla bitbit.logs: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `logs` ENABLE KEYS */;

-- Volcando estructura para tabla bitbit.mail
CREATE TABLE IF NOT EXISTS `mail` (
  `id_mail` int(11) NOT NULL,
  `Columna 2` int(11) NOT NULL,
  `de:` varchar(50) DEFAULT NULL,
  `para:` varchar(50) DEFAULT NULL,
  `mensaje` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id_mail`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla bitbit.mail: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `mail` DISABLE KEYS */;
/*!40000 ALTER TABLE `mail` ENABLE KEYS */;

-- Volcando estructura para tabla bitbit.material
CREATE TABLE IF NOT EXISTS `material` (
  `id_material` int(11) NOT NULL AUTO_INCREMENT,
  `Descripcion` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id_material`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla bitbit.material: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `material` DISABLE KEYS */;
/*!40000 ALTER TABLE `material` ENABLE KEYS */;

-- Volcando estructura para tabla bitbit.material_incidencia
CREATE TABLE IF NOT EXISTS `material_incidencia` (
  `id` int(11) NOT NULL,
  `id_incidencia` int(11) DEFAULT NULL,
  `id_material` int(11) DEFAULT NULL,
  `descrip` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_usuario` (`id_incidencia`) USING BTREE,
  KEY `id_material` (`id_material`),
  CONSTRAINT `id_incidencia` FOREIGN KEY (`id_incidencia`) REFERENCES `incidencia` (`id_incidencia`),
  CONSTRAINT `id_material` FOREIGN KEY (`id_material`) REFERENCES `material` (`id_material`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla bitbit.material_incidencia: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `material_incidencia` DISABLE KEYS */;
/*!40000 ALTER TABLE `material_incidencia` ENABLE KEYS */;

-- Volcando estructura para tabla bitbit.noticia
CREATE TABLE IF NOT EXISTS `noticia` (
  `Descripcion` varchar(50) DEFAULT NULL,
  `id_Usuario` int(11) NOT NULL,
  `id_Notcia` int(11) NOT NULL,
  PRIMARY KEY (`id_Notcia`),
  KEY `id_Usuario` (`id_Usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla bitbit.noticia: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `noticia` DISABLE KEYS */;
/*!40000 ALTER TABLE `noticia` ENABLE KEYS */;

-- Volcando estructura para tabla bitbit.tareas
CREATE TABLE IF NOT EXISTS `tareas` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `id_incidencia` int(11) NOT NULL,
  `id_tecnico` int(11) unsigned NOT NULL,
  `descripcion` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_tareas_incidencia` (`id_incidencia`),
  KEY `FK_tareas_users` (`id_tecnico`),
  CONSTRAINT `FK_tareas_incidencia` FOREIGN KEY (`id_incidencia`) REFERENCES `incidencia` (`id_incidencia`),
  CONSTRAINT `FK_tareas_users` FOREIGN KEY (`id_tecnico`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla bitbit.tareas: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tareas` DISABLE KEYS */;
/*!40000 ALTER TABLE `tareas` ENABLE KEYS */;

-- Volcando estructura para tabla bitbit.tipo_estado
CREATE TABLE IF NOT EXISTS `tipo_estado` (
  `id_Estado` int(11) NOT NULL,
  `Descrip` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_Estado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- Volcando datos para la tabla bitbit.tipo_estado: ~4 rows (aproximadamente)
/*!40000 ALTER TABLE `tipo_estado` DISABLE KEYS */;
INSERT INTO `tipo_estado` (`id_Estado`, `Descrip`) VALUES
	(1, 'No empezado'),
	(2, 'En curso'),
	(3, 'Completado'),
	(4, 'Entregado');
/*!40000 ALTER TABLE `tipo_estado` ENABLE KEYS */;

-- Volcando estructura para tabla bitbit.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(45) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(254) NOT NULL,
  `activation_selector` varchar(255) DEFAULT NULL,
  `activation_code` varchar(255) DEFAULT NULL,
  `forgotten_password_selector` varchar(255) DEFAULT NULL,
  `forgotten_password_code` varchar(255) DEFAULT NULL,
  `forgotten_password_time` int(11) unsigned DEFAULT NULL,
  `remember_selector` varchar(255) DEFAULT NULL,
  `remember_code` varchar(255) DEFAULT NULL,
  `created_on` int(11) unsigned NOT NULL,
  `last_login` int(11) unsigned DEFAULT NULL,
  `active` tinyint(1) unsigned DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `company` varchar(100) DEFAULT NULL,
  `phone` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uc_email` (`email`),
  UNIQUE KEY `uc_activation_selector` (`activation_selector`),
  UNIQUE KEY `uc_forgotten_password_selector` (`forgotten_password_selector`),
  UNIQUE KEY `uc_remember_selector` (`remember_selector`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla bitbit.users: ~6 rows (aproximadamente)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `ip_address`, `username`, `password`, `email`, `activation_selector`, `activation_code`, `forgotten_password_selector`, `forgotten_password_code`, `forgotten_password_time`, `remember_selector`, `remember_code`, `created_on`, `last_login`, `active`, `first_name`, `last_name`, `company`, `phone`) VALUES
	(1, '127.0.0.1', 'administrator', '$2y$10$.gQBTIc.W1pmHeSVzYB6pudj2aO.V6bHmFGmIL1ngdxoMLokCUhLC', 'admin@admin.com', NULL, '', NULL, NULL, NULL, NULL, NULL, 1268889823, 1621608746, 1, 'Admin', 'istrator', 'ADMIN', 0),
	(28, '', 'Gestor', '$2y$10$IPCPdTC4DONvezgCxL42CuCES40Je9aEql0l8t/L7mGydA5NI5pxe', 'gestor@gestor.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1621607835, 1, 'gestor', 'gestor', NULL, 611111111),
	(29, '', 'Trabajador', '$2y$10$2NvNaYNNpurimaScEtw/tuvnKoensNWS4Yd0ETYiAWfrvQiQ22PD2', 'trabajador@trabajador.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1621523470, 1, 'Trabajador', 'trabajador', NULL, 611111111),
	(31, '', 'Client', '$2y$10$FaKC.yPlSb4w6yb4cg93BuRoCTQXkjwwZYVZEEWSnicBhtklNZQT6', 'a@a.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1621524823, 1, 'Client', 'Client', NULL, 111111111),
	(32, '::1', 'bruno', '$2y$10$.TPgRsKYCF6gWO6Y3bYVDupu1qv06ZBfDcjGb83Dr7yTp1CwdvC6K', 'bruno@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1621006035, 1621629335, 1, 'bruno', 'andia', NULL, 638475213);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

-- Volcando estructura para tabla bitbit.users_groups
CREATE TABLE IF NOT EXISTS `users_groups` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) unsigned NOT NULL,
  `group_id` mediumint(8) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uc_users_groups` (`user_id`,`group_id`),
  KEY `fk_users_groups_users1_idx` (`user_id`),
  KEY `fk_users_groups_groups1_idx` (`group_id`),
  CONSTRAINT `fk_users_groups_groups1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  CONSTRAINT `fk_users_groups_users1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- Volcando datos para la tabla bitbit.users_groups: ~7 rows (aproximadamente)
/*!40000 ALTER TABLE `users_groups` DISABLE KEYS */;
INSERT INTO `users_groups` (`id`, `user_id`, `group_id`) VALUES
	(1, 1, 1),
	(2, 1, 2),
	(4, 1, 3),
	(3, 1, 4),
	(16, 28, 4),
	(15, 29, 3),
	(14, 31, 2),
	(17, 32, 2);
/*!40000 ALTER TABLE `users_groups` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
