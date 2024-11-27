-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-11-2024 a las 04:24:45
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `prototipo`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `citas`
--

CREATE TABLE `citas` (
  `id_citas` int(11) NOT NULL,
  `estado` enum('PENDIENTE','CONFIRMADA','CANCELADA') NOT NULL DEFAULT 'PENDIENTE',
  `id_paciente` int(11) NOT NULL,
  `id_odontologo` int(11) NOT NULL,
  `id_horas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `citas`
--

INSERT INTO `citas` (`id_citas`, `estado`, `id_paciente`, `id_odontologo`, `id_horas`) VALUES
(6, 'PENDIENTE', 7, 8, 12),
(7, 'PENDIENTE', 7, 10, 10),
(8, 'PENDIENTE', 7, 10, 8),
(9, 'CONFIRMADA', 4, 10, 13),
(10, 'CONFIRMADA', 4, 10, 14),
(11, 'CANCELADA', 4, 8, 16),
(12, 'PENDIENTE', 3, 10, 34),
(13, 'PENDIENTE', 3, 10, 35),
(14, 'CONFIRMADA', 11, 8, 38);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fechas`
--

CREATE TABLE `fechas` (
  `id_fecha` int(11) NOT NULL,
  `fecha` date DEFAULT NULL,
  `id_odontologo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `fechas`
--

INSERT INTO `fechas` (`id_fecha`, `fecha`, `id_odontologo`) VALUES
(1, '2024-11-01', 1),
(2, '2024-11-02', 1),
(3, '2024-11-01', 1),
(4, '2024-11-19', 1),
(5, '2024-11-19', 9),
(6, '2024-11-20', 10),
(7, '2024-11-21', 10),
(8, '2024-11-21', 10),
(9, '2024-11-22', 10),
(10, '2024-11-22', 8),
(11, '2024-11-25', 10),
(12, '2024-11-26', 10),
(13, '2024-11-25', 8),
(14, '2024-11-26', 8),
(15, '2024-11-29', 11),
(16, '2024-11-28', 11),
(17, '2024-11-29', 9),
(18, '2024-11-28', 9),
(19, '2024-11-29', 7),
(20, '2024-11-28', 7),
(21, '2024-11-29', 10),
(22, '2024-11-30', 10),
(23, '2024-12-01', 10),
(24, '2024-12-03', 10),
(25, '2024-12-04', 8),
(26, '2024-12-04', 10),
(29, '2024-12-05', 7),
(30, '2024-12-05', 9),
(31, '2024-12-04', 1),
(32, '2024-12-06', 1),
(33, '2024-12-05', 6),
(34, '2024-12-04', 6),
(35, '2024-12-05', 11),
(36, '2024-12-04', 11);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `horas`
--

CREATE TABLE `horas` (
  `id_horas` int(11) NOT NULL,
  `hora` time(6) NOT NULL,
  `id_odontologo` int(11) NOT NULL,
  `id_fecha` int(11) NOT NULL,
  `disponibilidad` enum('DISPONIBLE','NO_DISPONIBLE') NOT NULL DEFAULT 'DISPONIBLE'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `horas`
--

INSERT INTO `horas` (`id_horas`, `hora`, `id_odontologo`, `id_fecha`, `disponibilidad`) VALUES
(6, '09:00:00.000000', 10, 6, ''),
(7, '10:00:00.000000', 10, 7, 'DISPONIBLE'),
(8, '10:00:00.000000', 10, 9, 'NO_DISPONIBLE'),
(9, '09:00:00.000000', 10, 9, 'DISPONIBLE'),
(10, '11:00:00.000000', 10, 9, 'NO_DISPONIBLE'),
(11, '09:00:00.000000', 8, 10, 'DISPONIBLE'),
(12, '10:00:00.000000', 8, 10, 'NO_DISPONIBLE'),
(13, '09:00:00.000000', 10, 11, 'NO_DISPONIBLE'),
(14, '10:00:00.000000', 10, 11, 'NO_DISPONIBLE'),
(16, '11:00:00.000000', 8, 13, 'NO_DISPONIBLE'),
(17, '10:00:00.000000', 8, 13, 'DISPONIBLE'),
(18, '07:00:00.000000', 8, 14, 'DISPONIBLE'),
(19, '09:00:00.000000', 9, 17, 'DISPONIBLE'),
(20, '10:00:00.000000', 9, 17, 'DISPONIBLE'),
(21, '11:00:00.000000', 9, 17, 'DISPONIBLE'),
(22, '09:00:00.000000', 11, 16, 'DISPONIBLE'),
(23, '10:00:00.000000', 11, 16, 'DISPONIBLE'),
(24, '09:00:00.000000', 11, 15, 'DISPONIBLE'),
(25, '10:00:00.000000', 11, 15, 'DISPONIBLE'),
(26, '07:00:00.000000', 11, 15, 'DISPONIBLE'),
(27, '13:00:00.000000', 11, 16, 'DISPONIBLE'),
(29, '10:00:00.000000', 7, 19, 'DISPONIBLE'),
(30, '08:00:00.000000', 7, 19, 'DISPONIBLE'),
(31, '07:00:00.000000', 10, 23, 'DISPONIBLE'),
(32, '11:00:00.000000', 10, 24, 'DISPONIBLE'),
(33, '10:00:00.000000', 10, 21, 'DISPONIBLE'),
(34, '11:00:00.000000', 10, 22, 'NO_DISPONIBLE'),
(35, '09:00:00.000000', 10, 23, 'NO_DISPONIBLE'),
(36, '07:00:00.000000', 10, 24, 'DISPONIBLE'),
(37, '07:00:00.000000', 10, 26, 'DISPONIBLE'),
(38, '08:00:00.000000', 8, 25, 'NO_DISPONIBLE'),
(39, '09:00:00.000000', 7, 29, 'DISPONIBLE'),
(40, '12:00:00.000000', 7, 29, 'DISPONIBLE'),
(41, '10:00:00.000000', 9, 30, 'DISPONIBLE'),
(42, '08:00:00.000000', 9, 30, 'DISPONIBLE'),
(43, '10:00:00.000000', 1, 32, 'DISPONIBLE'),
(44, '12:00:00.000000', 1, 31, 'DISPONIBLE'),
(45, '12:00:00.000000', 1, 32, 'DISPONIBLE'),
(46, '16:00:00.000000', 1, 32, 'DISPONIBLE'),
(47, '10:00:00.000000', 8, 25, 'DISPONIBLE'),
(48, '12:00:00.000000', 8, 25, 'DISPONIBLE'),
(49, '10:00:00.000000', 6, 33, 'DISPONIBLE'),
(50, '12:00:00.000000', 6, 33, 'DISPONIBLE'),
(51, '11:00:00.000000', 6, 34, 'DISPONIBLE'),
(52, '09:00:00.000000', 6, 34, 'DISPONIBLE'),
(53, '10:00:00.000000', 11, 35, 'DISPONIBLE'),
(54, '12:00:00.000000', 11, 35, 'DISPONIBLE'),
(55, '09:00:00.000000', 11, 36, 'DISPONIBLE'),
(56, '07:00:00.000000', 11, 36, 'DISPONIBLE');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `odontologos`
--

CREATE TABLE `odontologos` (
  `id_odontologo` int(11) NOT NULL,
  `especialidad` varchar(100) NOT NULL,
  `sucursal` varchar(100) NOT NULL,
  `id_usuarios` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `odontologos`
--

INSERT INTO `odontologos` (`id_odontologo`, `especialidad`, `sucursal`, `id_usuarios`) VALUES
(1, 'endodoncia', 'lomas coloradas', 29),
(6, 'ortodoncia', 'coronel', 24),
(7, 'endodoncia', 'coronel', 30),
(8, 'ortodoncia', 'lomas coloradas', 31),
(9, 'endodoncia', 'lomas coloradas', 32),
(10, 'ortodoncia', 'coronel', 33),
(11, 'periodoncia', 'lomas coloradas', 18);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pacientes`
--

CREATE TABLE `pacientes` (
  `id_paciente` int(11) NOT NULL,
  `fecha_nacimiento` datetime NOT NULL,
  `sexo` enum('M','F') NOT NULL DEFAULT 'M',
  `numero` int(10) NOT NULL,
  `id_usuarios` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `pacientes`
--

INSERT INTO `pacientes` (`id_paciente`, `fecha_nacimiento`, `sexo`, `numero`, `id_usuarios`) VALUES
(2, '2024-11-28 00:00:00', 'M', 123213213, 24),
(3, '2024-11-23 00:00:00', 'M', 123456789, 26),
(4, '2024-10-23 00:00:00', 'F', 123456789, 27),
(5, '2024-11-27 00:00:00', 'M', 123456789, 28),
(6, '2024-12-05 00:00:00', 'M', 123456789, 29),
(7, '2024-11-22 00:00:00', 'F', 123456789, 30),
(8, '2024-11-28 00:00:00', 'M', 123456789, 31),
(9, '2024-11-06 00:00:00', 'F', 123456789, 32),
(10, '2024-11-21 00:00:00', 'M', 123456789, 33),
(11, '1990-06-15 00:00:00', 'M', 123123123, 35);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id_rol` int(11) NOT NULL,
  `nombre_rol` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id_rol`, `nombre_rol`) VALUES
(1, 'paciente'),
(2, 'odontologo'),
(3, 'admin');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuarios` int(11) NOT NULL,
  `rut` varchar(12) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(150) NOT NULL,
  `correo` varchar(255) NOT NULL,
  `fecha_registro` datetime NOT NULL DEFAULT current_timestamp(),
  `id_rol` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuarios`, `rut`, `pass`, `nombre`, `apellido`, `correo`, `fecha_registro`, `id_rol`) VALUES
(18, '2123', '$2a$08$QYRf3t/wqOwxbN6.caRRlOOYsNkmcPAkWVtUzK6.HohgDp3/oNFRW', 'bastty', 'ibarra', 'basttyloll@gmail.com', '2024-11-16 19:17:28', 2),
(24, 'callback', '$2a$08$ihco2m.n063T1hw6/A.cFuekVHu7hQV2yNJA.8hIPmq.44eYtm.sa', 'doctor2', 'asdad', 'adasd11123@gmail.com', '2024-11-16 19:29:29', 2),
(26, '21', '$2a$08$rrNL1G4DhqmNua3Yz6WLeOnvK1LcNLKHv34cx8dVFWmd5L.ZuMs.O', 'bastian', 'ibarra', 'usuario25@gmail.com', '2024-11-16 19:30:36', 1),
(27, '15', '$2a$08$RjbGxvvzRas573uOkw1x4ew.FSCM3GTgUdexw4VVUA6pnJpEdsYu.', 'maria', 'contreras', 'maria@gmail.com', '2024-11-16 19:34:18', 1),
(28, '101231231', '$2a$08$or0eIlg/ITK.moXjQFXG5.Z1xjx4/b2c1lQiY.2Yh/bKqmyMA7/QG', 'admin', 'admin', 'admin@admin.cl', '2024-11-16 19:45:59', 3),
(29, '111231231', '$2a$08$vkyEWrTN3oj9/bKuuRvWGONzs2NrYlC7JWIacGF0HSl2J7MyLzZbC', 'doctor', 'doctor', 'doctor@doctor.cl', '2024-11-16 19:54:03', 2),
(30, '1', '$2a$08$VAc/gmmOqLbPp59gW4/72uc4U7w5So6Wu6nEYF4.mXjzxVUsGaw6C', 'Ana', 'Lopez Garcia', 'ana.lopez@gmail.com', '2024-11-18 23:26:52', 2),
(31, '2', '$2a$08$kj32rASKwjMPcsZpaHfCAOnZ4Ec3OLI42aRUnAwvSALEs994IhEM6', 'Carlos', 'Pérez Rodríguez', 'carlos.perez@hotmail.com', '2024-11-18 23:27:26', 2),
(32, '3', '$2a$08$vOczz4dnmh2e1tSILeHQpeqetnBeRt/uobVl4XaD7BCPtxD1/iNP2', 'María', 'Fernández Martínez', 'maria.fernandez@yahoo.com', '2024-11-18 23:28:13', 2),
(33, '4', '$2a$08$h2dqYQN0veUY8g2Z7CRWkOn6m6FTnPTUu/WKVEfgD5nF3tKofzFGC', 'Juan', 'Sánchez González', 'juan.sanchez@outlook.com', '2024-11-18 23:28:52', 2),
(35, '5', '$2a$08$iQYMGulk8qJcrOvJEYnSeuP2uqXbG4H1ctPI4Fmgn5iJqDmnGZHhe', 'Juan', 'Pérez', 'juan.perez@example.com', '2024-11-25 14:36:20', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `citas`
--
ALTER TABLE `citas`
  ADD PRIMARY KEY (`id_citas`),
  ADD KEY `id_odontologo` (`id_odontologo`),
  ADD KEY `id_paciente` (`id_paciente`),
  ADD KEY `id_horas` (`id_horas`);

--
-- Indices de la tabla `fechas`
--
ALTER TABLE `fechas`
  ADD PRIMARY KEY (`id_fecha`),
  ADD KEY `id_odontologo` (`id_odontologo`);

--
-- Indices de la tabla `horas`
--
ALTER TABLE `horas`
  ADD PRIMARY KEY (`id_horas`),
  ADD KEY `id_odontologo` (`id_odontologo`),
  ADD KEY `id_fecha` (`id_fecha`);

--
-- Indices de la tabla `odontologos`
--
ALTER TABLE `odontologos`
  ADD PRIMARY KEY (`id_odontologo`),
  ADD KEY `id_usuarios_idx` (`id_usuarios`);

--
-- Indices de la tabla `pacientes`
--
ALTER TABLE `pacientes`
  ADD PRIMARY KEY (`id_paciente`),
  ADD KEY `id_usuarios_idx` (`id_usuarios`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id_rol`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuarios`),
  ADD UNIQUE KEY `correo_UNIQUE` (`correo`),
  ADD UNIQUE KEY `rut_UNIQUE` (`rut`),
  ADD KEY `fk_Usuarios_Roles1_idx` (`id_rol`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `citas`
--
ALTER TABLE `citas`
  MODIFY `id_citas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `fechas`
--
ALTER TABLE `fechas`
  MODIFY `id_fecha` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT de la tabla `horas`
--
ALTER TABLE `horas`
  MODIFY `id_horas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT de la tabla `odontologos`
--
ALTER TABLE `odontologos`
  MODIFY `id_odontologo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `pacientes`
--
ALTER TABLE `pacientes`
  MODIFY `id_paciente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id_rol` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuarios` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `citas`
--
ALTER TABLE `citas`
  ADD CONSTRAINT `citas_ibfk_1` FOREIGN KEY (`id_paciente`) REFERENCES `pacientes` (`id_paciente`),
  ADD CONSTRAINT `citas_ibfk_2` FOREIGN KEY (`id_odontologo`) REFERENCES `odontologos` (`id_odontologo`),
  ADD CONSTRAINT `citas_ibfk_3` FOREIGN KEY (`id_horas`) REFERENCES `horas` (`id_horas`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `fechas`
--
ALTER TABLE `fechas`
  ADD CONSTRAINT `fechas_ibfk_1` FOREIGN KEY (`id_odontologo`) REFERENCES `odontologos` (`id_odontologo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `horas`
--
ALTER TABLE `horas`
  ADD CONSTRAINT `horas_ibfk_1` FOREIGN KEY (`id_odontologo`) REFERENCES `odontologos` (`id_odontologo`),
  ADD CONSTRAINT `horas_ibfk_2` FOREIGN KEY (`id_fecha`) REFERENCES `fechas` (`id_fecha`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `odontologos`
--
ALTER TABLE `odontologos`
  ADD CONSTRAINT `fk_Odontologos_Usuarios` FOREIGN KEY (`id_usuarios`) REFERENCES `usuarios` (`id_usuarios`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `pacientes`
--
ALTER TABLE `pacientes`
  ADD CONSTRAINT `fk_Pacientes_Usuarios` FOREIGN KEY (`id_usuarios`) REFERENCES `usuarios` (`id_usuarios`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `fk_Usuarios_Roles1` FOREIGN KEY (`id_rol`) REFERENCES `roles` (`id_rol`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
