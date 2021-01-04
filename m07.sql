-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 29-11-2020 a las 03:05:50
-- Versión del servidor: 8.0.20
-- Versión de PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `m07`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `noticias`
--

CREATE TABLE `noticias` (
  `id` int NOT NULL,
  `titulo` varchar(200) COLLATE utf8mb4_es_0900_ai_ci NOT NULL,
  `contenido` varchar(300) COLLATE utf8mb4_es_0900_ai_ci NOT NULL,
  `autor` varchar(100) COLLATE utf8mb4_es_0900_ai_ci NOT NULL,
  `hora` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `likes` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_es_0900_ai_ci;

--
-- Volcado de datos para la tabla `noticias`
--

INSERT INTO `noticias` (`id`, `titulo`, `contenido`, `autor`, `hora`, `likes`) VALUES
(219, 'Noticia 1', 'Texto o contenido de la noticia 1', 'Autor_1', '2020-11-29 02:01:32', 0),
(220, 'Noticia 2', 'Texto o contenido de la noticia 2', 'Autor_2', '2020-11-29 02:01:32', 0),
(221, 'Noticia 3', 'Texto o contenido de la noticia 3', 'Autor_3', '2020-11-29 02:01:32', 0),
(222, 'Noticia 4', 'Texto o contenido de la noticia 4', 'Autor_4', '2020-11-29 02:01:32', 0),
(223, 'Noticia 5', 'Texto o contenido de la noticia 5', 'Autor_5', '2020-11-29 02:01:32', 0),
(224, 'Noticia 6', 'Texto o contenido de la noticia 6', 'Autor_6', '2020-11-29 02:01:32', 0),
(225, 'Noticia 7', 'Texto o contenido de la noticia 7', 'Autor_7', '2020-11-29 02:01:32', 0),
(226, 'Noticia 8', 'Texto o contenido de la noticia 8', 'Autor_8', '2020-11-29 02:01:32', 0),
(227, 'Noticia 9', 'Texto o contenido de la noticia 9', 'Autor_9', '2020-11-29 02:01:32', 0),
(228, 'Noticia 10', 'Texto o contenido de la noticia 10', 'Autor_10', '2020-11-29 02:01:32', 0),
(229, 'Noticia 11', 'Texto o contenido de la noticia 11', 'Autor_11', '2020-11-29 02:01:32', 0),
(230, 'Noticia 12', 'Texto o contenido de la noticia 12', 'Autor_12', '2020-11-29 02:01:32', 0),
(231, 'Noticia 13', 'Texto o contenido de la noticia 13', 'Autor_13', '2020-11-29 02:01:32', 0),
(232, 'Noticia 14', 'Texto o contenido de la noticia 14', 'Autor_14', '2020-11-29 02:01:32', 0),
(233, 'Noticia 15', 'Texto o contenido de la noticia 15', 'Autor_15', '2020-11-29 02:01:32', 0),
(234, 'Noticia 16', 'Texto o contenido de la noticia 16', 'Autor_16', '2020-11-29 02:01:33', 0),
(235, 'Noticia 17', 'Texto o contenido de la noticia 17', 'Autor_17', '2020-11-29 02:01:33', 0),
(236, 'Noticia 18', 'Texto o contenido de la noticia 18', 'Autor_18', '2020-11-29 02:01:33', 0),
(237, 'Noticia 19', 'Texto o contenido de la noticia 19', 'Autor_19', '2020-11-29 02:01:33', 0),
(238, 'Noticia 20', 'Texto o contenido de la noticia 20', 'Autor_20', '2020-11-29 02:01:33', 0),
(239, 'Noticia 21', 'Texto o contenido de la noticia 21', 'Autor_21', '2020-11-29 02:01:34', 0),
(240, 'Noticia 22', 'Texto o contenido de la noticia 22', 'Autor_22', '2020-11-29 02:01:34', 0),
(241, 'Noticia 23', 'Texto o contenido de la noticia 23', 'Autor_23', '2020-11-29 02:01:34', 0),
(242, 'Noticia 24', 'Texto o contenido de la noticia 24', 'Autor_24', '2020-11-29 02:01:34', 0),
(243, 'Noticia 25', 'Texto o contenido de la noticia 25', 'Autor_25', '2020-11-29 02:01:34', 0),
(244, 'Noticia 26', 'Texto o contenido de la noticia 26', 'Autor_26', '2020-11-29 02:01:34', 0),
(245, 'Noticia 27', 'Texto o contenido de la noticia 27', 'Autor_27', '2020-11-29 02:01:34', 0),
(246, 'Noticia 28', 'Texto o contenido de la noticia 28', 'Autor_28', '2020-11-29 02:01:34', 0),
(247, 'Noticia 29', 'Texto o contenido de la noticia 29', 'Autor_29', '2020-11-29 02:01:34', 0),
(248, 'Noticia 30', 'Texto o contenido de la noticia 30', 'Autor_30', '2020-11-29 02:01:34', 0),
(249, 'Noticia 31', 'Texto o contenido de la noticia 31', 'Autor_31', '2020-11-29 02:01:34', 0),
(250, 'Noticia 32', 'Texto o contenido de la noticia 32', 'Autor_32', '2020-11-29 02:01:34', 0),
(251, 'Noticia 33', 'Texto o contenido de la noticia 33', 'Autor_33', '2020-11-29 02:01:34', 0),
(252, 'Noticia 34', 'Texto o contenido de la noticia 34', 'Autor_34', '2020-11-29 02:01:35', 0),
(253, 'Noticia 35', 'Texto o contenido de la noticia 35', 'Autor_35', '2020-11-29 02:01:35', 0),
(254, 'Noticia 36', 'Texto o contenido de la noticia 36', 'Autor_36', '2020-11-29 02:01:35', 0),
(255, 'Noticia 37', 'Texto o contenido de la noticia 37', 'Autor_37', '2020-11-29 02:01:35', 0),
(256, 'Noticia 38', 'Texto o contenido de la noticia 38', 'Autor_38', '2020-11-29 02:01:35', 0),
(257, 'Noticia 39', 'Texto o contenido de la noticia 39', 'Autor_39', '2020-11-29 02:01:35', 0),
(258, 'Noticia 40', 'Texto o contenido de la noticia 40', 'Autor_40', '2020-11-29 02:01:35', 0),
(259, 'Noticia 41', 'Texto o contenido de la noticia 41', 'Autor_41', '2020-11-29 02:01:36', 0),
(260, 'Noticia 42', 'Texto o contenido de la noticia 42', 'Autor_42', '2020-11-29 02:01:36', 0),
(261, 'Noticia 43', 'Texto o contenido de la noticia 43', 'Autor_43', '2020-11-29 02:01:36', 0),
(262, 'Noticia 44', 'Texto o contenido de la noticia 44', 'Autor_44', '2020-11-29 02:01:36', 0),
(263, 'Noticia 45', 'Texto o contenido de la noticia 45', 'Autor_45', '2020-11-29 02:01:36', 0),
(264, 'Noticia 46', 'Texto o contenido de la noticia 46', 'Autor_46', '2020-11-29 02:01:36', 0),
(265, 'Noticia 47', 'Texto o contenido de la noticia 47', 'Autor_47', '2020-11-29 02:01:36', 0),
(266, 'Noticia 48', 'Texto o contenido de la noticia 48', 'Autor_48', '2020-11-29 02:01:36', 0),
(267, 'Noticia 49', 'Texto o contenido de la noticia 49', 'Autor_49', '2020-11-29 02:01:36', 0),
(268, 'Noticia 50', 'Texto o contenido de la noticia 50', 'Autor_50', '2020-11-29 02:01:36', 0),
(269, 'Noticia 51', 'Texto o contenido de la noticia 51', 'Autor_51', '2020-11-29 02:01:36', 0),
(270, 'Noticia 52', 'Texto o contenido de la noticia 52', 'Autor_52', '2020-11-29 02:01:36', 0),
(271, 'Noticia 53', 'Texto o contenido de la noticia 53', 'Autor_53', '2020-11-29 02:01:36', 0),
(272, 'Noticia 54', 'Texto o contenido de la noticia 54', 'Autor_54', '2020-11-29 02:01:37', 0),
(273, 'Noticia 55', 'Texto o contenido de la noticia 55', 'Autor_55', '2020-11-29 02:01:37', 0),
(274, 'Noticia 56', 'Texto o contenido de la noticia 56', 'Autor_56', '2020-11-29 02:01:37', 0),
(275, 'Noticia 57', 'Texto o contenido de la noticia 57', 'Autor_57', '2020-11-29 02:01:37', 0),
(276, 'Noticia 58', 'Texto o contenido de la noticia 58', 'Autor_58', '2020-11-29 02:01:37', 0),
(277, 'Noticia 59', 'Texto o contenido de la noticia 59', 'Autor_59', '2020-11-29 02:01:37', 0),
(278, 'Noticia 60', 'Texto o contenido de la noticia 60', 'Autor_60', '2020-11-29 02:01:37', 0),
(279, 'Noticia 61', 'Texto o contenido de la noticia 61', 'Autor_61', '2020-11-29 02:01:37', 0),
(280, 'Noticia 62', 'Texto o contenido de la noticia 62', 'Autor_62', '2020-11-29 02:01:38', 0),
(281, 'Noticia 63', 'Texto o contenido de la noticia 63', 'Autor_63', '2020-11-29 02:01:38', 0),
(282, 'Noticia 64', 'Texto o contenido de la noticia 64', 'Autor_64', '2020-11-29 02:01:38', 0),
(283, 'Noticia 65', 'Texto o contenido de la noticia 65', 'Autor_65', '2020-11-29 02:01:38', 0),
(284, 'Noticia 66', 'Texto o contenido de la noticia 66', 'Autor_66', '2020-11-29 02:01:38', 0),
(285, 'Noticia 67', 'Texto o contenido de la noticia 67', 'Autor_67', '2020-11-29 02:01:38', 0),
(286, 'Noticia 68', 'Texto o contenido de la noticia 68', 'Autor_68', '2020-11-29 02:01:38', 0),
(287, 'Noticia 69', 'Texto o contenido de la noticia 69', 'Autor_69', '2020-11-29 02:01:38', 0),
(288, 'Noticia 70', 'Texto o contenido de la noticia 70', 'Autor_70', '2020-11-29 02:01:38', 0),
(289, 'Noticia 71', 'Texto o contenido de la noticia 71', 'Autor_71', '2020-11-29 02:01:38', 0),
(290, 'Noticia 72', 'Texto o contenido de la noticia 72', 'Autor_72', '2020-11-29 02:01:38', 0),
(291, 'Noticia 73', 'Texto o contenido de la noticia 73', 'Autor_73', '2020-11-29 02:01:38', 0),
(292, 'Noticia 74', 'Texto o contenido de la noticia 74', 'Autor_74', '2020-11-29 02:01:38', 0),
(293, 'Noticia 75', 'Texto o contenido de la noticia 75', 'Autor_75', '2020-11-29 02:01:39', 0),
(294, 'Noticia 76', 'Texto o contenido de la noticia 76', 'Autor_76', '2020-11-29 02:01:39', 0),
(295, 'Noticia 77', 'Texto o contenido de la noticia 77', 'Autor_77', '2020-11-29 02:01:39', 0),
(296, 'Noticia 78', 'Texto o contenido de la noticia 78', 'Autor_78', '2020-11-29 02:01:39', 0),
(297, 'Noticia 79', 'Texto o contenido de la noticia 79', 'Autor_79', '2020-11-29 02:01:39', 0),
(298, 'Noticia 80', 'Texto o contenido de la noticia 80', 'Autor_80', '2020-11-29 02:01:39', 0),
(299, 'Noticia 81', 'Texto o contenido de la noticia 81', 'Autor_81', '2020-11-29 02:01:39', 0),
(300, 'Noticia 82', 'Texto o contenido de la noticia 82', 'Autor_82', '2020-11-29 02:01:39', 0),
(301, 'Noticia 83', 'Texto o contenido de la noticia 83', 'Autor_83', '2020-11-29 02:01:40', 0),
(302, 'Noticia 84', 'Texto o contenido de la noticia 84', 'Autor_84', '2020-11-29 02:01:40', 0),
(303, 'Noticia 85', 'Texto o contenido de la noticia 85', 'Autor_85', '2020-11-29 02:01:40', 0),
(304, 'Noticia 86', 'Texto o contenido de la noticia 86', 'Autor_86', '2020-11-29 02:01:40', 0),
(305, 'Noticia 87', 'Texto o contenido de la noticia 87', 'Autor_87', '2020-11-29 02:01:40', 0),
(306, 'Noticia 88', 'Texto o contenido de la noticia 88', 'Autor_88', '2020-11-29 02:01:40', 0),
(307, 'Noticia 89', 'Texto o contenido de la noticia 89', 'Autor_89', '2020-11-29 02:01:40', 0),
(308, 'Noticia 90', 'Texto o contenido de la noticia 90', 'Autor_90', '2020-11-29 02:01:40', 0),
(309, 'Noticia 91', 'Texto o contenido de la noticia 91', 'Autor_91', '2020-11-29 02:01:41', 0),
(310, 'Noticia 92', 'Texto o contenido de la noticia 92', 'Autor_92', '2020-11-29 02:01:41', 0),
(311, 'Noticia 93', 'Texto o contenido de la noticia 93', 'Autor_93', '2020-11-29 02:01:41', 0),
(312, 'Noticia 94', 'Texto o contenido de la noticia 94', 'Autor_94', '2020-11-29 02:01:41', 0),
(313, 'Noticia 95', 'Texto o contenido de la noticia 95', 'Autor_95', '2020-11-29 02:01:41', 0),
(314, 'Noticia 96', 'Texto o contenido de la noticia 96', 'Autor_96', '2020-11-29 02:01:41', 0),
(315, 'Noticia 97', 'Texto o contenido de la noticia 97', 'Autor_97', '2020-11-29 02:01:42', 0),
(316, 'Noticia 98', 'Texto o contenido de la noticia 98', 'Autor_98', '2020-11-29 02:01:42', 0),
(317, 'Noticia 99', 'Texto o contenido de la noticia 99', 'Autor_99', '2020-11-29 02:01:42', 0),
(318, 'Noticia 100', 'Texto o contenido de la noticia 100', 'Autor_100', '2020-11-29 02:01:42', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int NOT NULL,
  `nombre` varchar(50) COLLATE utf8mb4_es_0900_ai_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_es_0900_ai_ci NOT NULL,
  `email` varchar(200) COLLATE utf8mb4_es_0900_ai_ci NOT NULL,
  `edad` int NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `direccion` varchar(200) COLLATE utf8mb4_es_0900_ai_ci NOT NULL,
  `codigo_postal` int NOT NULL,
  `provincia` varchar(100) COLLATE utf8mb4_es_0900_ai_ci NOT NULL,
  `genero` char(1) COLLATE utf8mb4_es_0900_ai_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_es_0900_ai_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `password`, `email`, `edad`, `fecha_nacimiento`, `direccion`, `codigo_postal`, `provincia`, `genero`) VALUES
(288, 'Usuario_1', '$2y$10$XI4j4yJudyv3bPWSH6UHGuTVELfeQk.j3EGo0vDsWuwOw6Ps..ocW', 'ejemplo1@ejemplo.com', 20, '2020-01-01', 'Calle del ejemplo numero 1', 11111, 'Población 1', 'm'),
(289, 'Usuario_2', '$2y$10$XI4j4yJudyv3bPWSH6UHGuTVELfeQk.j3EGo0vDsWuwOw6Ps..ocW', 'ejemplo2@ejemplo.com', 20, '2020-01-01', 'Calle del ejemplo numero 2', 11111, 'Población 2', 'm'),
(290, 'Usuario_3', '$2y$10$XI4j4yJudyv3bPWSH6UHGuTVELfeQk.j3EGo0vDsWuwOw6Ps..ocW', 'ejemplo3@ejemplo.com', 20, '2020-01-01', 'Calle del ejemplo numero 3', 11111, 'Población 3', 'm'),
(291, 'Usuario_4', '$2y$10$XI4j4yJudyv3bPWSH6UHGuTVELfeQk.j3EGo0vDsWuwOw6Ps..ocW', 'ejemplo4@ejemplo.com', 20, '2020-01-01', 'Calle del ejemplo numero 4', 11111, 'Población 4', 'm'),
(292, 'Usuario_5', '$2y$10$XI4j4yJudyv3bPWSH6UHGuTVELfeQk.j3EGo0vDsWuwOw6Ps..ocW', 'ejemplo5@ejemplo.com', 20, '2020-01-01', 'Calle del ejemplo numero 5', 11111, 'Población 5', 'm'),
(293, 'Usuario_6', '$2y$10$XI4j4yJudyv3bPWSH6UHGuTVELfeQk.j3EGo0vDsWuwOw6Ps..ocW', 'ejemplo6@ejemplo.com', 20, '2020-01-01', 'Calle del ejemplo numero 6', 11111, 'Población 6', 'm'),
(294, 'Usuario_7', '$2y$10$XI4j4yJudyv3bPWSH6UHGuTVELfeQk.j3EGo0vDsWuwOw6Ps..ocW', 'ejemplo7@ejemplo.com', 20, '2020-01-01', 'Calle del ejemplo numero 7', 11111, 'Población 7', 'm'),
(295, 'Usuario_8', '$2y$10$XI4j4yJudyv3bPWSH6UHGuTVELfeQk.j3EGo0vDsWuwOw6Ps..ocW', 'ejemplo8@ejemplo.com', 20, '2020-01-01', 'Calle del ejemplo numero 8', 11111, 'Población 8', 'm'),
(296, 'Usuario_9', '$2y$10$XI4j4yJudyv3bPWSH6UHGuTVELfeQk.j3EGo0vDsWuwOw6Ps..ocW', 'ejemplo9@ejemplo.com', 20, '2020-01-01', 'Calle del ejemplo numero 9', 11111, 'Población 9', 'm'),
(297, 'Usuario_10', '$2y$10$XI4j4yJudyv3bPWSH6UHGuTVELfeQk.j3EGo0vDsWuwOw6Ps..ocW', 'ejemplo10@ejemplo.com', 20, '2020-01-01', 'Calle del ejemplo numero 10', 11111, 'Población 10', 'm'),
(298, 'Usuario_11', '$2y$10$XI4j4yJudyv3bPWSH6UHGuTVELfeQk.j3EGo0vDsWuwOw6Ps..ocW', 'ejemplo11@ejemplo.com', 20, '2020-01-01', 'Calle del ejemplo numero 11', 11111, 'Población 11', 'm'),
(299, 'Usuario_12', '$2y$10$XI4j4yJudyv3bPWSH6UHGuTVELfeQk.j3EGo0vDsWuwOw6Ps..ocW', 'ejemplo12@ejemplo.com', 20, '2020-01-01', 'Calle del ejemplo numero 12', 11111, 'Población 12', 'm'),
(300, 'Usuario_13', '$2y$10$XI4j4yJudyv3bPWSH6UHGuTVELfeQk.j3EGo0vDsWuwOw6Ps..ocW', 'ejemplo13@ejemplo.com', 20, '2020-01-01', 'Calle del ejemplo numero 13', 11111, 'Población 13', 'm'),
(301, 'Usuario_14', '$2y$10$XI4j4yJudyv3bPWSH6UHGuTVELfeQk.j3EGo0vDsWuwOw6Ps..ocW', 'ejemplo14@ejemplo.com', 20, '2020-01-01', 'Calle del ejemplo numero 14', 11111, 'Población 14', 'm'),
(302, 'Usuario_15', '$2y$10$XI4j4yJudyv3bPWSH6UHGuTVELfeQk.j3EGo0vDsWuwOw6Ps..ocW', 'ejemplo15@ejemplo.com', 20, '2020-01-01', 'Calle del ejemplo numero 15', 11111, 'Población 15', 'm'),
(303, 'Usuario_16', '$2y$10$XI4j4yJudyv3bPWSH6UHGuTVELfeQk.j3EGo0vDsWuwOw6Ps..ocW', 'ejemplo16@ejemplo.com', 20, '2020-01-01', 'Calle del ejemplo numero 16', 11111, 'Población 16', 'm'),
(304, 'Usuario_17', '$2y$10$XI4j4yJudyv3bPWSH6UHGuTVELfeQk.j3EGo0vDsWuwOw6Ps..ocW', 'ejemplo17@ejemplo.com', 20, '2020-01-01', 'Calle del ejemplo numero 17', 11111, 'Población 17', 'm'),
(305, 'Usuario_18', '$2y$10$XI4j4yJudyv3bPWSH6UHGuTVELfeQk.j3EGo0vDsWuwOw6Ps..ocW', 'ejemplo18@ejemplo.com', 20, '2020-01-01', 'Calle del ejemplo numero 18', 11111, 'Población 18', 'm'),
(306, 'Usuario_19', '$2y$10$XI4j4yJudyv3bPWSH6UHGuTVELfeQk.j3EGo0vDsWuwOw6Ps..ocW', 'ejemplo19@ejemplo.com', 20, '2020-01-01', 'Calle del ejemplo numero 19', 11111, 'Población 19', 'm'),
(307, 'Usuario_20', '$2y$10$XI4j4yJudyv3bPWSH6UHGuTVELfeQk.j3EGo0vDsWuwOw6Ps..ocW', 'ejemplo20@ejemplo.com', 20, '2020-01-01', 'Calle del ejemplo numero 20', 11111, 'Población 20', 'm'),
(308, 'Usuario_21', '$2y$10$XI4j4yJudyv3bPWSH6UHGuTVELfeQk.j3EGo0vDsWuwOw6Ps..ocW', 'ejemplo21@ejemplo.com', 20, '2020-01-01', 'Calle del ejemplo numero 21', 11111, 'Población 21', 'm'),
(309, 'Usuario_22', '$2y$10$XI4j4yJudyv3bPWSH6UHGuTVELfeQk.j3EGo0vDsWuwOw6Ps..ocW', 'ejemplo22@ejemplo.com', 20, '2020-01-01', 'Calle del ejemplo numero 22', 11111, 'Población 22', 'm'),
(310, 'Usuario_23', '$2y$10$XI4j4yJudyv3bPWSH6UHGuTVELfeQk.j3EGo0vDsWuwOw6Ps..ocW', 'ejemplo23@ejemplo.com', 20, '2020-01-01', 'Calle del ejemplo numero 23', 11111, 'Población 23', 'm'),
(311, 'Usuario_24', '$2y$10$XI4j4yJudyv3bPWSH6UHGuTVELfeQk.j3EGo0vDsWuwOw6Ps..ocW', 'ejemplo24@ejemplo.com', 20, '2020-01-01', 'Calle del ejemplo numero 24', 11111, 'Población 24', 'm'),
(312, 'Usuario_25', '$2y$10$XI4j4yJudyv3bPWSH6UHGuTVELfeQk.j3EGo0vDsWuwOw6Ps..ocW', 'ejemplo25@ejemplo.com', 20, '2020-01-01', 'Calle del ejemplo numero 25', 11111, 'Población 25', 'm'),
(313, 'Usuario_26', '$2y$10$XI4j4yJudyv3bPWSH6UHGuTVELfeQk.j3EGo0vDsWuwOw6Ps..ocW', 'ejemplo26@ejemplo.com', 20, '2020-01-01', 'Calle del ejemplo numero 26', 11111, 'Población 26', 'm'),
(314, 'Usuario_27', '$2y$10$XI4j4yJudyv3bPWSH6UHGuTVELfeQk.j3EGo0vDsWuwOw6Ps..ocW', 'ejemplo27@ejemplo.com', 20, '2020-01-01', 'Calle del ejemplo numero 27', 11111, 'Población 27', 'm'),
(315, 'Usuario_28', '$2y$10$XI4j4yJudyv3bPWSH6UHGuTVELfeQk.j3EGo0vDsWuwOw6Ps..ocW', 'ejemplo28@ejemplo.com', 20, '2020-01-01', 'Calle del ejemplo numero 28', 11111, 'Población 28', 'm'),
(316, 'Usuario_29', '$2y$10$XI4j4yJudyv3bPWSH6UHGuTVELfeQk.j3EGo0vDsWuwOw6Ps..ocW', 'ejemplo29@ejemplo.com', 20, '2020-01-01', 'Calle del ejemplo numero 29', 11111, 'Población 29', 'm'),
(317, 'Usuario_30', '$2y$10$XI4j4yJudyv3bPWSH6UHGuTVELfeQk.j3EGo0vDsWuwOw6Ps..ocW', 'ejemplo30@ejemplo.com', 20, '2020-01-01', 'Calle del ejemplo numero 30', 11111, 'Población 30', 'm'),
(318, 'Usuario_31', '$2y$10$XI4j4yJudyv3bPWSH6UHGuTVELfeQk.j3EGo0vDsWuwOw6Ps..ocW', 'ejemplo31@ejemplo.com', 20, '2020-01-01', 'Calle del ejemplo numero 31', 11111, 'Población 31', 'm'),
(319, 'Usuario_32', '$2y$10$XI4j4yJudyv3bPWSH6UHGuTVELfeQk.j3EGo0vDsWuwOw6Ps..ocW', 'ejemplo32@ejemplo.com', 20, '2020-01-01', 'Calle del ejemplo numero 32', 11111, 'Población 32', 'm'),
(320, 'Usuario_33', '$2y$10$XI4j4yJudyv3bPWSH6UHGuTVELfeQk.j3EGo0vDsWuwOw6Ps..ocW', 'ejemplo33@ejemplo.com', 20, '2020-01-01', 'Calle del ejemplo numero 33', 11111, 'Población 33', 'm'),
(321, 'Usuario_34', '$2y$10$XI4j4yJudyv3bPWSH6UHGuTVELfeQk.j3EGo0vDsWuwOw6Ps..ocW', 'ejemplo34@ejemplo.com', 20, '2020-01-01', 'Calle del ejemplo numero 34', 11111, 'Población 34', 'm'),
(322, 'Usuario_35', '$2y$10$XI4j4yJudyv3bPWSH6UHGuTVELfeQk.j3EGo0vDsWuwOw6Ps..ocW', 'ejemplo35@ejemplo.com', 20, '2020-01-01', 'Calle del ejemplo numero 35', 11111, 'Población 35', 'm'),
(323, 'Usuario_36', '$2y$10$XI4j4yJudyv3bPWSH6UHGuTVELfeQk.j3EGo0vDsWuwOw6Ps..ocW', 'ejemplo36@ejemplo.com', 20, '2020-01-01', 'Calle del ejemplo numero 36', 11111, 'Población 36', 'm'),
(324, 'Usuario_37', '$2y$10$XI4j4yJudyv3bPWSH6UHGuTVELfeQk.j3EGo0vDsWuwOw6Ps..ocW', 'ejemplo37@ejemplo.com', 20, '2020-01-01', 'Calle del ejemplo numero 37', 11111, 'Población 37', 'm'),
(325, 'Usuario_38', '$2y$10$XI4j4yJudyv3bPWSH6UHGuTVELfeQk.j3EGo0vDsWuwOw6Ps..ocW', 'ejemplo38@ejemplo.com', 20, '2020-01-01', 'Calle del ejemplo numero 38', 11111, 'Población 38', 'm'),
(326, 'Usuario_39', '$2y$10$XI4j4yJudyv3bPWSH6UHGuTVELfeQk.j3EGo0vDsWuwOw6Ps..ocW', 'ejemplo39@ejemplo.com', 20, '2020-01-01', 'Calle del ejemplo numero 39', 11111, 'Población 39', 'm'),
(327, 'Usuario_40', '$2y$10$XI4j4yJudyv3bPWSH6UHGuTVELfeQk.j3EGo0vDsWuwOw6Ps..ocW', 'ejemplo40@ejemplo.com', 20, '2020-01-01', 'Calle del ejemplo numero 40', 11111, 'Población 40', 'm'),
(328, 'Usuario_41', '$2y$10$XI4j4yJudyv3bPWSH6UHGuTVELfeQk.j3EGo0vDsWuwOw6Ps..ocW', 'ejemplo41@ejemplo.com', 20, '2020-01-01', 'Calle del ejemplo numero 41', 11111, 'Población 41', 'm'),
(329, 'Usuario_42', '$2y$10$XI4j4yJudyv3bPWSH6UHGuTVELfeQk.j3EGo0vDsWuwOw6Ps..ocW', 'ejemplo42@ejemplo.com', 20, '2020-01-01', 'Calle del ejemplo numero 42', 11111, 'Población 42', 'm'),
(330, 'Usuario_43', '$2y$10$XI4j4yJudyv3bPWSH6UHGuTVELfeQk.j3EGo0vDsWuwOw6Ps..ocW', 'ejemplo43@ejemplo.com', 20, '2020-01-01', 'Calle del ejemplo numero 43', 11111, 'Población 43', 'm'),
(331, 'Usuario_44', '$2y$10$XI4j4yJudyv3bPWSH6UHGuTVELfeQk.j3EGo0vDsWuwOw6Ps..ocW', 'ejemplo44@ejemplo.com', 20, '2020-01-01', 'Calle del ejemplo numero 44', 11111, 'Población 44', 'm'),
(332, 'Usuario_45', '$2y$10$XI4j4yJudyv3bPWSH6UHGuTVELfeQk.j3EGo0vDsWuwOw6Ps..ocW', 'ejemplo45@ejemplo.com', 20, '2020-01-01', 'Calle del ejemplo numero 45', 11111, 'Población 45', 'm'),
(333, 'Usuario_46', '$2y$10$XI4j4yJudyv3bPWSH6UHGuTVELfeQk.j3EGo0vDsWuwOw6Ps..ocW', 'ejemplo46@ejemplo.com', 20, '2020-01-01', 'Calle del ejemplo numero 46', 11111, 'Población 46', 'm'),
(334, 'Usuario_47', '$2y$10$XI4j4yJudyv3bPWSH6UHGuTVELfeQk.j3EGo0vDsWuwOw6Ps..ocW', 'ejemplo47@ejemplo.com', 20, '2020-01-01', 'Calle del ejemplo numero 47', 11111, 'Población 47', 'm'),
(335, 'Usuario_48', '$2y$10$XI4j4yJudyv3bPWSH6UHGuTVELfeQk.j3EGo0vDsWuwOw6Ps..ocW', 'ejemplo48@ejemplo.com', 20, '2020-01-01', 'Calle del ejemplo numero 48', 11111, 'Población 48', 'm'),
(336, 'Usuario_49', '$2y$10$XI4j4yJudyv3bPWSH6UHGuTVELfeQk.j3EGo0vDsWuwOw6Ps..ocW', 'ejemplo49@ejemplo.com', 20, '2020-01-01', 'Calle del ejemplo numero 49', 11111, 'Población 49', 'm'),
(337, 'Usuario_50', '$2y$10$XI4j4yJudyv3bPWSH6UHGuTVELfeQk.j3EGo0vDsWuwOw6Ps..ocW', 'ejemplo50@ejemplo.com', 20, '2020-01-01', 'Calle del ejemplo numero 50', 11111, 'Población 50', 'm'),
(338, 'Usuario_51', '$2y$10$XI4j4yJudyv3bPWSH6UHGuTVELfeQk.j3EGo0vDsWuwOw6Ps..ocW', 'ejemplo51@ejemplo.com', 20, '2020-01-01', 'Calle del ejemplo numero 51', 11111, 'Población 51', 'm'),
(339, 'Usuario_52', '$2y$10$XI4j4yJudyv3bPWSH6UHGuTVELfeQk.j3EGo0vDsWuwOw6Ps..ocW', 'ejemplo52@ejemplo.com', 20, '2020-01-01', 'Calle del ejemplo numero 52', 11111, 'Población 52', 'm'),
(340, 'Usuario_53', '$2y$10$XI4j4yJudyv3bPWSH6UHGuTVELfeQk.j3EGo0vDsWuwOw6Ps..ocW', 'ejemplo53@ejemplo.com', 20, '2020-01-01', 'Calle del ejemplo numero 53', 11111, 'Población 53', 'm'),
(341, 'Usuario_54', '$2y$10$XI4j4yJudyv3bPWSH6UHGuTVELfeQk.j3EGo0vDsWuwOw6Ps..ocW', 'ejemplo54@ejemplo.com', 20, '2020-01-01', 'Calle del ejemplo numero 54', 11111, 'Población 54', 'm'),
(342, 'Usuario_55', '$2y$10$XI4j4yJudyv3bPWSH6UHGuTVELfeQk.j3EGo0vDsWuwOw6Ps..ocW', 'ejemplo55@ejemplo.com', 20, '2020-01-01', 'Calle del ejemplo numero 55', 11111, 'Población 55', 'm'),
(343, 'Usuario_56', '$2y$10$XI4j4yJudyv3bPWSH6UHGuTVELfeQk.j3EGo0vDsWuwOw6Ps..ocW', 'ejemplo56@ejemplo.com', 20, '2020-01-01', 'Calle del ejemplo numero 56', 11111, 'Población 56', 'm'),
(344, 'Usuario_57', '$2y$10$XI4j4yJudyv3bPWSH6UHGuTVELfeQk.j3EGo0vDsWuwOw6Ps..ocW', 'ejemplo57@ejemplo.com', 20, '2020-01-01', 'Calle del ejemplo numero 57', 11111, 'Población 57', 'm'),
(345, 'Usuario_58', '$2y$10$XI4j4yJudyv3bPWSH6UHGuTVELfeQk.j3EGo0vDsWuwOw6Ps..ocW', 'ejemplo58@ejemplo.com', 20, '2020-01-01', 'Calle del ejemplo numero 58', 11111, 'Población 58', 'm'),
(346, 'Usuario_59', '$2y$10$XI4j4yJudyv3bPWSH6UHGuTVELfeQk.j3EGo0vDsWuwOw6Ps..ocW', 'ejemplo59@ejemplo.com', 20, '2020-01-01', 'Calle del ejemplo numero 59', 11111, 'Población 59', 'm'),
(347, 'Usuario_60', '$2y$10$XI4j4yJudyv3bPWSH6UHGuTVELfeQk.j3EGo0vDsWuwOw6Ps..ocW', 'ejemplo60@ejemplo.com', 20, '2020-01-01', 'Calle del ejemplo numero 60', 11111, 'Población 60', 'm'),
(348, 'Usuario_61', '$2y$10$XI4j4yJudyv3bPWSH6UHGuTVELfeQk.j3EGo0vDsWuwOw6Ps..ocW', 'ejemplo61@ejemplo.com', 20, '2020-01-01', 'Calle del ejemplo numero 61', 11111, 'Población 61', 'm'),
(349, 'Usuario_62', '$2y$10$XI4j4yJudyv3bPWSH6UHGuTVELfeQk.j3EGo0vDsWuwOw6Ps..ocW', 'ejemplo62@ejemplo.com', 20, '2020-01-01', 'Calle del ejemplo numero 62', 11111, 'Población 62', 'm'),
(350, 'Usuario_63', '$2y$10$XI4j4yJudyv3bPWSH6UHGuTVELfeQk.j3EGo0vDsWuwOw6Ps..ocW', 'ejemplo63@ejemplo.com', 20, '2020-01-01', 'Calle del ejemplo numero 63', 11111, 'Población 63', 'm'),
(351, 'Usuario_64', '$2y$10$XI4j4yJudyv3bPWSH6UHGuTVELfeQk.j3EGo0vDsWuwOw6Ps..ocW', 'ejemplo64@ejemplo.com', 20, '2020-01-01', 'Calle del ejemplo numero 64', 11111, 'Población 64', 'm'),
(352, 'Usuario_65', '$2y$10$XI4j4yJudyv3bPWSH6UHGuTVELfeQk.j3EGo0vDsWuwOw6Ps..ocW', 'ejemplo65@ejemplo.com', 20, '2020-01-01', 'Calle del ejemplo numero 65', 11111, 'Población 65', 'm'),
(353, 'Usuario_66', '$2y$10$XI4j4yJudyv3bPWSH6UHGuTVELfeQk.j3EGo0vDsWuwOw6Ps..ocW', 'ejemplo66@ejemplo.com', 20, '2020-01-01', 'Calle del ejemplo numero 66', 11111, 'Población 66', 'm'),
(354, 'Usuario_67', '$2y$10$XI4j4yJudyv3bPWSH6UHGuTVELfeQk.j3EGo0vDsWuwOw6Ps..ocW', 'ejemplo67@ejemplo.com', 20, '2020-01-01', 'Calle del ejemplo numero 67', 11111, 'Población 67', 'm'),
(355, 'Usuario_68', '$2y$10$XI4j4yJudyv3bPWSH6UHGuTVELfeQk.j3EGo0vDsWuwOw6Ps..ocW', 'ejemplo68@ejemplo.com', 20, '2020-01-01', 'Calle del ejemplo numero 68', 11111, 'Población 68', 'm'),
(356, 'Usuario_69', '$2y$10$XI4j4yJudyv3bPWSH6UHGuTVELfeQk.j3EGo0vDsWuwOw6Ps..ocW', 'ejemplo69@ejemplo.com', 20, '2020-01-01', 'Calle del ejemplo numero 69', 11111, 'Población 69', 'm'),
(357, 'Usuario_70', '$2y$10$XI4j4yJudyv3bPWSH6UHGuTVELfeQk.j3EGo0vDsWuwOw6Ps..ocW', 'ejemplo70@ejemplo.com', 20, '2020-01-01', 'Calle del ejemplo numero 70', 11111, 'Población 70', 'm'),
(358, 'Usuario_71', '$2y$10$XI4j4yJudyv3bPWSH6UHGuTVELfeQk.j3EGo0vDsWuwOw6Ps..ocW', 'ejemplo71@ejemplo.com', 20, '2020-01-01', 'Calle del ejemplo numero 71', 11111, 'Población 71', 'm'),
(359, 'Usuario_72', '$2y$10$XI4j4yJudyv3bPWSH6UHGuTVELfeQk.j3EGo0vDsWuwOw6Ps..ocW', 'ejemplo72@ejemplo.com', 20, '2020-01-01', 'Calle del ejemplo numero 72', 11111, 'Población 72', 'm'),
(360, 'Usuario_73', '$2y$10$XI4j4yJudyv3bPWSH6UHGuTVELfeQk.j3EGo0vDsWuwOw6Ps..ocW', 'ejemplo73@ejemplo.com', 20, '2020-01-01', 'Calle del ejemplo numero 73', 11111, 'Población 73', 'm'),
(361, 'Usuario_74', '$2y$10$XI4j4yJudyv3bPWSH6UHGuTVELfeQk.j3EGo0vDsWuwOw6Ps..ocW', 'ejemplo74@ejemplo.com', 20, '2020-01-01', 'Calle del ejemplo numero 74', 11111, 'Población 74', 'm'),
(362, 'Usuario_75', '$2y$10$XI4j4yJudyv3bPWSH6UHGuTVELfeQk.j3EGo0vDsWuwOw6Ps..ocW', 'ejemplo75@ejemplo.com', 20, '2020-01-01', 'Calle del ejemplo numero 75', 11111, 'Población 75', 'm'),
(363, 'Usuario_76', '$2y$10$XI4j4yJudyv3bPWSH6UHGuTVELfeQk.j3EGo0vDsWuwOw6Ps..ocW', 'ejemplo76@ejemplo.com', 20, '2020-01-01', 'Calle del ejemplo numero 76', 11111, 'Población 76', 'm'),
(364, 'Usuario_77', '$2y$10$XI4j4yJudyv3bPWSH6UHGuTVELfeQk.j3EGo0vDsWuwOw6Ps..ocW', 'ejemplo77@ejemplo.com', 20, '2020-01-01', 'Calle del ejemplo numero 77', 11111, 'Población 77', 'm'),
(365, 'Usuario_78', '$2y$10$XI4j4yJudyv3bPWSH6UHGuTVELfeQk.j3EGo0vDsWuwOw6Ps..ocW', 'ejemplo78@ejemplo.com', 20, '2020-01-01', 'Calle del ejemplo numero 78', 11111, 'Población 78', 'm'),
(366, 'Usuario_79', '$2y$10$XI4j4yJudyv3bPWSH6UHGuTVELfeQk.j3EGo0vDsWuwOw6Ps..ocW', 'ejemplo79@ejemplo.com', 20, '2020-01-01', 'Calle del ejemplo numero 79', 11111, 'Población 79', 'm'),
(367, 'Usuario_80', '$2y$10$XI4j4yJudyv3bPWSH6UHGuTVELfeQk.j3EGo0vDsWuwOw6Ps..ocW', 'ejemplo80@ejemplo.com', 20, '2020-01-01', 'Calle del ejemplo numero 80', 11111, 'Población 80', 'm'),
(368, 'Usuario_81', '$2y$10$XI4j4yJudyv3bPWSH6UHGuTVELfeQk.j3EGo0vDsWuwOw6Ps..ocW', 'ejemplo81@ejemplo.com', 20, '2020-01-01', 'Calle del ejemplo numero 81', 11111, 'Población 81', 'm'),
(369, 'Usuario_82', '$2y$10$XI4j4yJudyv3bPWSH6UHGuTVELfeQk.j3EGo0vDsWuwOw6Ps..ocW', 'ejemplo82@ejemplo.com', 20, '2020-01-01', 'Calle del ejemplo numero 82', 11111, 'Población 82', 'm'),
(370, 'Usuario_83', '$2y$10$XI4j4yJudyv3bPWSH6UHGuTVELfeQk.j3EGo0vDsWuwOw6Ps..ocW', 'ejemplo83@ejemplo.com', 20, '2020-01-01', 'Calle del ejemplo numero 83', 11111, 'Población 83', 'm'),
(371, 'Usuario_84', '$2y$10$XI4j4yJudyv3bPWSH6UHGuTVELfeQk.j3EGo0vDsWuwOw6Ps..ocW', 'ejemplo84@ejemplo.com', 20, '2020-01-01', 'Calle del ejemplo numero 84', 11111, 'Población 84', 'm'),
(372, 'Usuario_85', '$2y$10$XI4j4yJudyv3bPWSH6UHGuTVELfeQk.j3EGo0vDsWuwOw6Ps..ocW', 'ejemplo85@ejemplo.com', 20, '2020-01-01', 'Calle del ejemplo numero 85', 11111, 'Población 85', 'm'),
(373, 'Usuario_86', '$2y$10$XI4j4yJudyv3bPWSH6UHGuTVELfeQk.j3EGo0vDsWuwOw6Ps..ocW', 'ejemplo86@ejemplo.com', 20, '2020-01-01', 'Calle del ejemplo numero 86', 11111, 'Población 86', 'm'),
(374, 'Usuario_87', '$2y$10$XI4j4yJudyv3bPWSH6UHGuTVELfeQk.j3EGo0vDsWuwOw6Ps..ocW', 'ejemplo87@ejemplo.com', 20, '2020-01-01', 'Calle del ejemplo numero 87', 11111, 'Población 87', 'm'),
(375, 'Usuario_88', '$2y$10$XI4j4yJudyv3bPWSH6UHGuTVELfeQk.j3EGo0vDsWuwOw6Ps..ocW', 'ejemplo88@ejemplo.com', 20, '2020-01-01', 'Calle del ejemplo numero 88', 11111, 'Población 88', 'm'),
(376, 'Usuario_89', '$2y$10$XI4j4yJudyv3bPWSH6UHGuTVELfeQk.j3EGo0vDsWuwOw6Ps..ocW', 'ejemplo89@ejemplo.com', 20, '2020-01-01', 'Calle del ejemplo numero 89', 11111, 'Población 89', 'm'),
(377, 'Usuario_90', '$2y$10$XI4j4yJudyv3bPWSH6UHGuTVELfeQk.j3EGo0vDsWuwOw6Ps..ocW', 'ejemplo90@ejemplo.com', 20, '2020-01-01', 'Calle del ejemplo numero 90', 11111, 'Población 90', 'm'),
(378, 'Usuario_91', '$2y$10$XI4j4yJudyv3bPWSH6UHGuTVELfeQk.j3EGo0vDsWuwOw6Ps..ocW', 'ejemplo91@ejemplo.com', 20, '2020-01-01', 'Calle del ejemplo numero 91', 11111, 'Población 91', 'm'),
(379, 'Usuario_92', '$2y$10$XI4j4yJudyv3bPWSH6UHGuTVELfeQk.j3EGo0vDsWuwOw6Ps..ocW', 'ejemplo92@ejemplo.com', 20, '2020-01-01', 'Calle del ejemplo numero 92', 11111, 'Población 92', 'm'),
(380, 'Usuario_93', '$2y$10$XI4j4yJudyv3bPWSH6UHGuTVELfeQk.j3EGo0vDsWuwOw6Ps..ocW', 'ejemplo93@ejemplo.com', 20, '2020-01-01', 'Calle del ejemplo numero 93', 11111, 'Población 93', 'm'),
(381, 'Usuario_94', '$2y$10$XI4j4yJudyv3bPWSH6UHGuTVELfeQk.j3EGo0vDsWuwOw6Ps..ocW', 'ejemplo94@ejemplo.com', 20, '2020-01-01', 'Calle del ejemplo numero 94', 11111, 'Población 94', 'm'),
(382, 'Usuario_95', '$2y$10$XI4j4yJudyv3bPWSH6UHGuTVELfeQk.j3EGo0vDsWuwOw6Ps..ocW', 'ejemplo95@ejemplo.com', 20, '2020-01-01', 'Calle del ejemplo numero 95', 11111, 'Población 95', 'm'),
(383, 'Usuario_96', '$2y$10$XI4j4yJudyv3bPWSH6UHGuTVELfeQk.j3EGo0vDsWuwOw6Ps..ocW', 'ejemplo96@ejemplo.com', 20, '2020-01-01', 'Calle del ejemplo numero 96', 11111, 'Población 96', 'm'),
(384, 'Usuario_97', '$2y$10$XI4j4yJudyv3bPWSH6UHGuTVELfeQk.j3EGo0vDsWuwOw6Ps..ocW', 'ejemplo97@ejemplo.com', 20, '2020-01-01', 'Calle del ejemplo numero 97', 11111, 'Población 97', 'm'),
(385, 'Usuario_98', '$2y$10$XI4j4yJudyv3bPWSH6UHGuTVELfeQk.j3EGo0vDsWuwOw6Ps..ocW', 'ejemplo98@ejemplo.com', 20, '2020-01-01', 'Calle del ejemplo numero 98', 11111, 'Población 98', 'm'),
(386, 'Usuario_99', '$2y$10$XI4j4yJudyv3bPWSH6UHGuTVELfeQk.j3EGo0vDsWuwOw6Ps..ocW', 'ejemplo99@ejemplo.com', 20, '2020-01-01', 'Calle del ejemplo numero 99', 11111, 'Población 99', 'm'),
(387, 'Usuario_100', '$2y$10$XI4j4yJudyv3bPWSH6UHGuTVELfeQk.j3EGo0vDsWuwOw6Ps..ocW', 'ejemplo100@ejemplo.com', 20, '2020-01-01', 'Calle del ejemplo numero 100', 11111, 'Población 100', 'm');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `noticias`
--
ALTER TABLE `noticias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `noticias`
--
ALTER TABLE `noticias`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=319;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=388;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
