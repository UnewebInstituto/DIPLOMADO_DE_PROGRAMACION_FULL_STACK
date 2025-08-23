-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-08-2025 a las 23:07:26
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
-- Base de datos: `bd1_catalogo_gabriel`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `calificaciones`
--

CREATE TABLE `calificaciones` (
  `id` int(11) NOT NULL,
  `usuario_id` int(11) NOT NULL,
  `producto_id` int(11) NOT NULL,
  `calificacion` int(11) NOT NULL,
  `fecha_hora` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `calificaciones`
--

INSERT INTO `calificaciones` (`id`, `usuario_id`, `producto_id`, `calificacion`, `fecha_hora`) VALUES
(1, 2, 1, 5, '2023-10-26 10:30:00'),
(2, 3, 1, 4, '2023-10-26 11:00:00'),
(3, 4, 2, 5, '2023-10-26 12:15:00'),
(4, 2, 3, 3, '2023-10-26 13:40:00'),
(5, 3, 5, 5, '2023-10-26 14:00:00'),
(6, 4, 4, 5, '2023-10-26 15:05:00'),
(7, 2, 5, 4, '2023-10-26 16:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `descripcion` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `nombre`, `descripcion`) VALUES
(1, 'Electrónica', 'Dispositivos y gadgets electrónicos'),
(2, 'Moda', 'Ropa, calzado y accesorios'),
(3, 'Hogar', 'Artículos para el hogar y decoración'),
(4, 'Libros', 'Libros de ficción y no ficción');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `etiquetas`
--

CREATE TABLE `etiquetas` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `descripcion` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `etiquetas`
--

INSERT INTO `etiquetas` (`id`, `nombre`, `descripcion`) VALUES
(1, 'oferta', 'Productos con descuento'),
(2, 'nuevo', 'Productos recién agregados'),
(3, 'mas vendido', 'Los productos más populares'),
(4, 'organico', 'Productos de origen orgánico');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `imagenes`
--

CREATE TABLE `imagenes` (
  `id` int(11) NOT NULL,
  `producto_id` int(11) NOT NULL,
  `archivo` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `imagenes`
--

INSERT INTO `imagenes` (`id`, `producto_id`, `archivo`) VALUES
(1, 1, 'smartphone_x_vista_frontal.jpg'),
(2, 1, 'smartphone_x_caja.jpg'),
(3, 2, 'camiseta_roja.jpg'),
(4, 3, 'sartenes_pack.jpg'),
(5, 4, 'el_quijote_portada.jpg'),
(6, 5, 'auriculares_blancos.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int(11) NOT NULL,
  `categoria_id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `precio` decimal(13,2) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `descripcion` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `categoria_id`, `nombre`, `precio`, `cantidad`, `descripcion`) VALUES
(1, 1, 'Smartphone X', 799.99, 50, 'Smartphone de última generación con cámara de alta resolución.'),
(2, 2, 'Camiseta de algodón', 19.50, 200, 'Camiseta 100% algodón, disponible en varios colores.'),
(3, 3, 'Set de sartenes antiadherentes', 85.00, 30, 'Juego de sartenes de 3 piezas para cocina.'),
(4, 4, 'El Quijote', 15.75, 150, 'Edición de bolsillo de la obra maestra de Cervantes.'),
(5, 1, 'Auriculares Bluetooth', 45.90, 100, 'Auriculares inalámbricos con cancelación de ruido.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos_etiquetas`
--

CREATE TABLE `productos_etiquetas` (
  `producto_id` int(11) NOT NULL,
  `etiqueta_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos_etiquetas`
--

INSERT INTO `productos_etiquetas` (`producto_id`, `etiqueta_id`) VALUES
(1, 2),
(1, 3),
(2, 1),
(3, 1),
(4, 3),
(5, 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `descripcion` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `nombre`, `descripcion`) VALUES
(1, 'Administrador', 'Control total sobre el sistema'),
(2, 'Vendedor', 'Gestiona productos y ventas'),
(3, 'Cliente', 'Compra productos y deja calificaciones');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `clave` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `apellido`, `correo`, `clave`) VALUES
(1, 'Carlos', 'Gómez', 'carlos.gomez@example.com', 'eb52fc9a4b3a81a2000a9e774d5aa515'),
(2, 'María', 'López', 'maria.lopez@example.com', '73a054cc528f91ca1bbdda3589b6a22d'),
(3, 'Juan', 'Pérez', 'juan.perez@example.com', '5cab168f8e24891f300bb1f1f6450e33'),
(4, 'Ana', 'Martínez', 'ana.martinez@example.com', 'b33e0dcc9e2d7a1649d96831260b5698');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios_roles`
--

CREATE TABLE `usuarios_roles` (
  `usuario_id` int(11) NOT NULL,
  `rol_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios_roles`
--

INSERT INTO `usuarios_roles` (`usuario_id`, `rol_id`) VALUES
(1, 1),
(1, 2),
(2, 3),
(3, 3),
(4, 3);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_productos`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_productos` (
`producto` varchar(50)
,`precio` decimal(13,2)
,`cantidad` int(11)
,`categoria` varchar(50)
,`descripcion_categoria` text
,`etiqueta` varchar(50)
,`descripcion_etiqueta` text
);

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_productos`
--
DROP TABLE IF EXISTS `vista_productos`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_productos`  AS SELECT `a`.`nombre` AS `producto`, `a`.`precio` AS `precio`, `a`.`cantidad` AS `cantidad`, `b`.`nombre` AS `categoria`, `b`.`descripcion` AS `descripcion_categoria`, `c`.`nombre` AS `etiqueta`, `c`.`descripcion` AS `descripcion_etiqueta` FROM (((`productos` `a` join `categorias` `b`) join `etiquetas` `c`) join `productos_etiquetas` `d`) WHERE `a`.`categoria_id` = `b`.`id` AND `d`.`producto_id` = `a`.`id` AND `d`.`etiqueta_id` = `c`.`id` ;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `calificaciones`
--
ALTER TABLE `calificaciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_usuario_id` (`usuario_id`),
  ADD KEY `idx_producto_id` (`producto_id`);

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `etiquetas`
--
ALTER TABLE `etiquetas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `imagenes`
--
ALTER TABLE `imagenes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_producto_id` (`producto_id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_categoria_id` (`categoria_id`);

--
-- Indices de la tabla `productos_etiquetas`
--
ALTER TABLE `productos_etiquetas`
  ADD PRIMARY KEY (`producto_id`,`etiqueta_id`),
  ADD KEY `etiqueta_id` (`etiqueta_id`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uk_correo` (`correo`);

--
-- Indices de la tabla `usuarios_roles`
--
ALTER TABLE `usuarios_roles`
  ADD PRIMARY KEY (`usuario_id`,`rol_id`),
  ADD KEY `rol_id` (`rol_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `calificaciones`
--
ALTER TABLE `calificaciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `etiquetas`
--
ALTER TABLE `etiquetas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `imagenes`
--
ALTER TABLE `imagenes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `calificaciones`
--
ALTER TABLE `calificaciones`
  ADD CONSTRAINT `calificaciones_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `calificaciones_ibfk_2` FOREIGN KEY (`producto_id`) REFERENCES `productos` (`id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `imagenes`
--
ALTER TABLE `imagenes`
  ADD CONSTRAINT `imagenes_ibfk_1` FOREIGN KEY (`producto_id`) REFERENCES `productos` (`id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`categoria_id`) REFERENCES `categorias` (`id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `productos_etiquetas`
--
ALTER TABLE `productos_etiquetas`
  ADD CONSTRAINT `productos_etiquetas_ibfk_1` FOREIGN KEY (`producto_id`) REFERENCES `productos` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `productos_etiquetas_ibfk_2` FOREIGN KEY (`etiqueta_id`) REFERENCES `etiquetas` (`id`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `usuarios_roles`
--
ALTER TABLE `usuarios_roles`
  ADD CONSTRAINT `usuarios_roles_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `usuarios_roles_ibfk_2` FOREIGN KEY (`rol_id`) REFERENCES `roles` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
