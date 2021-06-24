-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 30-12-2020 a las 00:04:48
-- Versión del servidor: 10.4.16-MariaDB
-- Versión de PHP: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `loginphp_database`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(200) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `email`, `password`) VALUES
(1, 'yerkoandriuw_12@hotmail.com', '$2y$10$ouKFsExz6hV8ygpErS/iBeq8o38KhZLiKD5wNuV8zYl.MeqtxRB8O'),
(2, 'koyar_stilo_underground@hotmail.com,', '$2y$10$1U2Uw8GnsQUwVzO1I2x.z.L6F6YgpKYSmDqSiFlJ5BDeeiFRBL3ha'),
(3, 'slike_99@hotmail.com', '$2y$10$PXiNVhW20LqaAk.278hQuuAzymdFAh7yhwumtJPDYPR51VreNHETG'),
(4, 'test@gmail.com', '$2y$10$lWq3wu6mda7KhkmtQs3pG.FJW6nLwu61c62UmNydsFlhRVPMmeXWu'),
(5, 'testi12@gmail.com', '$2y$10$BZ2ZG.UqNi1Yeqbn1twOk.EkCQiNehGWYyeG3u44MulpS1l7qaad6'),
(6, 'testi12@gmail.com', '$2y$10$TTMHkOyG3BPXEwA3Hfzy0Orw358waSQCzQspcltTVZ5Fwm7xKjl.q'),
(7, 'najasdkj@mail.com', '$2y$10$0308NWiHDi2pIVz1VBksoOtDvgbtidOQVQllczKK9wYcdX9t4fWOm'),
(8, 'yerko@mail.com', '$2y$10$DJRKeNoIio.ghsHNa29DsujS8gKNjDDTA/L6UdFWG8dEU6pjaVL62'),
(9, 'loco123@gmail.com', '$2y$10$ZeoX807QcU2UujOhVSeL9eEuaXxKO5m1YgEqBEVeSv/DrrKj5P.Ka');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
