-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 11-03-2024 a las 05:17:07
-- Versión del servidor: 8.0.30
-- Versión de PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `shopping`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `admin`
--

CREATE TABLE `admin` (
  `id` int NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `creationDate`, `updationDate`) VALUES
(1, 'admin', 'f925916e2754e5e03f75dd58a5733251', '2017-01-24 17:21:18', '21-06-2018 08:27:55 PM');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `category`
--

CREATE TABLE `category` (
  `id` int NOT NULL,
  `categoryName` varchar(255) DEFAULT NULL,
  `categoryDescription` longtext,
  `creationDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(4, 'Tenis', 'En este aparado encontraras tenis, de todo tipo para caballero y para damas, mayormente son tenis unisex', '2017-01-24 20:19:32', '27-02-2024 10:51:49 PM'),
(6, 'Botas', 'En este apartado encontraras las mejores botas para caballero, con una calidad en pieles, tanto de res, como de venado, mantarraya, avestruz y cocodrilo. ', '2017-02-20 20:18:52', '27-02-2024 10:58:12 PM'),
(9, 'Sandalias', 'Sandalias casuales ', '2024-02-27 17:34:22', '27-02-2024 11:26:53 PM');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orders`
--

CREATE TABLE `orders` (
  `id` int NOT NULL,
  `userId` int DEFAULT NULL,
  `productId` varchar(255) DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `orderDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `paymentMethod` varchar(50) DEFAULT NULL,
  `orderStatus` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `orders`
--

INSERT INTO `orders` (`id`, `userId`, `productId`, `quantity`, `orderDate`, `paymentMethod`, `orderStatus`) VALUES
(25, 5, '44', 1, '2024-03-09 23:33:23', '', NULL),
(26, 5, '43', 1, '2024-03-09 23:35:17', '', NULL),
(27, 5, '37', 1, '2024-03-10 06:33:42', NULL, NULL),
(28, 5, '43', 1, '2024-03-10 06:33:42', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ordertrackhistory`
--

CREATE TABLE `ordertrackhistory` (
  `id` int NOT NULL,
  `orderId` int DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `remark` mediumtext,
  `postingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productreviews`
--

CREATE TABLE `productreviews` (
  `id` int NOT NULL,
  `productId` int DEFAULT NULL,
  `quality` int DEFAULT NULL,
  `price` int DEFAULT NULL,
  `value` int DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `review` longtext,
  `reviewDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `productreviews`
--

INSERT INTO `productreviews` (`id`, `productId`, `quality`, `price`, `value`, `name`, `summary`, `review`, `reviewDate`) VALUES
(2, 3, 4, 5, 5, 'Anuj Kumar', 'BEST PRODUCT FOR ME :)', 'BEST PRODUCT FOR ME :)', '2017-02-26 21:43:57'),
(3, 3, 3, 4, 3, 'Sarita pandey', 'Nice Product', 'Value for money', '2017-02-26 21:52:46'),
(4, 3, 3, 4, 3, 'Sarita pandey', 'Nice Product', 'Value for money', '2017-02-26 21:59:19');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `id` int NOT NULL,
  `category` int NOT NULL,
  `subCategory` int DEFAULT NULL,
  `productName` varchar(255) DEFAULT NULL,
  `productCompany` varchar(255) DEFAULT NULL,
  `productPrice` int DEFAULT NULL,
  `productPriceBeforeDiscount` int DEFAULT NULL,
  `productDescription` longtext,
  `productImage1` varchar(255) DEFAULT NULL,
  `productImage2` varchar(255) DEFAULT NULL,
  `productImage3` varchar(255) DEFAULT NULL,
  `shippingCharge` int DEFAULT NULL,
  `productAvailability` varchar(255) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id`, `category`, `subCategory`, `productName`, `productCompany`, `productPrice`, `productPriceBeforeDiscount`, `productDescription`, `productImage1`, `productImage2`, `productImage3`, `shippingCharge`, `productAvailability`, `postingDate`, `updationDate`) VALUES
(36, 6, 21, 'Bota Vaquera Sidepass', 'ARIAT', 5800, 5800, '<p style=\"margin-bottom: 1.25em; overflow-wrap: break-word; word-break: break-word; box-sizing: border-box; color: rgb(37, 37, 37); font-family: ProximaNova-Regular; font-size: 16px;\">Una versión audaz de un clásico. Mantenemos la tecnología cómoda y que reduce la fatiga por la que somos conocidos, pero agregamos un patrón de costura impactante y llamativos orificios para tirar de ellos y obtener una fácil colocación.&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p><p style=\"margin-bottom: 1.25em; overflow-wrap: break-word; word-break: break-word; box-sizing: border-box; color: rgb(37, 37, 37); font-family: ProximaNova-Regular; font-size: 16px;\"><span style=\"overflow-wrap: break-word; word-break: break-word; box-sizing: border-box; color: rgb(203, 108, 40);\"><b>Características:</b></span></p><ul style=\"margin-bottom: 1em; margin-left: 2em; overflow-wrap: break-word; word-break: break-word; box-sizing: border-box; color: rgb(37, 37, 37); font-family: ProximaNova-Regular; font-size: 16px;\"><li style=\"overflow-wrap: break-word; word-break: break-word; box-sizing: border-box;\">Amortiguamiento ATS® para un mejor soporte.</li><li style=\"overflow-wrap: break-word; word-break: break-word; box-sizing: border-box;\">Shock Shield®&nbsp;reduce el impacto del talón para minimizar la fatiga.</li><li style=\"overflow-wrap: break-word; word-break: break-word; box-sizing: border-box;\">Plantilla antifatiga Energy Max extraíble para un máximo confort.</li><li style=\"overflow-wrap: break-word; word-break: break-word; box-sizing: border-box;\">Suela Duratread™ para&nbsp;máxima durabilidad.</li><li style=\"overflow-wrap: break-word; word-break: break-word; box-sizing: border-box;\">Doble pespunte.<br style=\"overflow-wrap: break-word; word-break: break-word; box-sizing: border-box;\"></li><li style=\"overflow-wrap: break-word; word-break: break-word; box-sizing: border-box;\">Patrón de puntada de ocho filas.</li><li style=\"overflow-wrap: break-word; word-break: break-word; box-sizing: border-box;\">Estilo fácil de poner&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</li></ul><p style=\"margin-bottom: 1.25em; overflow-wrap: break-word; word-break: break-word; box-sizing: border-box; color: rgb(37, 37, 37); font-family: ProximaNova-Regular; font-size: 16px;\"><span style=\"overflow-wrap: break-word; word-break: break-word; box-sizing: border-box; color: rgb(203, 108, 40);\"><b>Materiales:</b></span></p><ul style=\"margin-bottom: 1em; margin-left: 2em; overflow-wrap: break-word; word-break: break-word; box-sizing: border-box; color: rgb(37, 37, 37); font-family: ProximaNova-Regular; font-size: 16px;\"><li style=\"overflow-wrap: break-word; word-break: break-word; box-sizing: border-box;\">Pie y parte superior de cuero de plena flor.</li><li style=\"overflow-wrap: break-word; word-break: break-word; box-sizing: border-box;\">El cuero&nbsp;de plena flor se considera uno de los cueros de mejor calidad disponibles,&nbsp;es deseable debido a sus tratamientos mínimos y su durabilidad.</li></ul><div><font color=\"#252525\" face=\"ProximaNova-Regular\"><span style=\"font-size: 16px;\"><br></span></font></div><div><font color=\"#252525\" face=\"ProximaNova-Regular\"><span style=\"font-size: 16px;\"><b>Talla disponible:&nbsp;</b></span></font></div><div><font color=\"#252525\" face=\"ProximaNova-Regular\"><span style=\"font-size: 16px;\"><br></span></font></div><div><ul><li><font color=\"#252525\" face=\"ProximaNova-Regular\"><span style=\"font-size: 16px;\">6 MX&nbsp; - 7 MX&nbsp; -&nbsp; 8MX&nbsp; -&nbsp; 9MX</span></font></li></ul></div>', '1.png', '2.png', '3.png', 0, 'In Stock', '2024-03-07 02:08:08', NULL),
(37, 6, 22, 'Bota Vaquera Texas', 'ARIAT', 5444, 5444, '<p style=\"margin-bottom: 1.25em; overflow-wrap: break-word; word-break: break-word; box-sizing: border-box; color: rgb(37, 37, 37); font-family: ProximaNova-Regular; font-size: 16px;\">Una versión audaz de un clásico. Mantenemos la tecnología cómoda y que reduce la fatiga por la que somos conocidos, pero agregamos un patrón de costura impactante y llamativos orificios para tirar de ellos y obtener una fácil colocación.&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p><p style=\"margin-bottom: 1.25em; overflow-wrap: break-word; word-break: break-word; box-sizing: border-box; color: rgb(37, 37, 37); font-family: ProximaNova-Regular; font-size: 16px;\"><span style=\"overflow-wrap: break-word; word-break: break-word; box-sizing: border-box; color: rgb(203, 108, 40);\"><b>Características:</b></span></p><ul style=\"margin-bottom: 1em; margin-left: 2em; overflow-wrap: break-word; word-break: break-word; box-sizing: border-box; color: rgb(37, 37, 37); font-family: ProximaNova-Regular; font-size: 16px;\"><li style=\"overflow-wrap: break-word; word-break: break-word; box-sizing: border-box;\">Amortiguamiento ATS® para un mejor soporte.</li><li style=\"overflow-wrap: break-word; word-break: break-word; box-sizing: border-box;\">Shock Shield®&nbsp;reduce el impacto del talón para minimizar la fatiga.</li><li style=\"overflow-wrap: break-word; word-break: break-word; box-sizing: border-box;\">Plantilla antifatiga Energy Max extraíble para un máximo confort.</li><li style=\"overflow-wrap: break-word; word-break: break-word; box-sizing: border-box;\">Suela Duratread™ para&nbsp;máxima durabilidad.</li><li style=\"overflow-wrap: break-word; word-break: break-word; box-sizing: border-box;\">Doble pespunte.<br style=\"overflow-wrap: break-word; word-break: break-word; box-sizing: border-box;\"></li><li style=\"overflow-wrap: break-word; word-break: break-word; box-sizing: border-box;\">Patrón de puntada de ocho filas.</li><li style=\"overflow-wrap: break-word; word-break: break-word; box-sizing: border-box;\">Estilo fácil de poner&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</li></ul><p style=\"margin-bottom: 1.25em; overflow-wrap: break-word; word-break: break-word; box-sizing: border-box; color: rgb(37, 37, 37); font-family: ProximaNova-Regular; font-size: 16px;\"><span style=\"overflow-wrap: break-word; word-break: break-word; box-sizing: border-box; color: rgb(203, 108, 40);\"><b>Materiales:</b></span></p><ul style=\"margin-bottom: 1em; margin-left: 2em; overflow-wrap: break-word; word-break: break-word; box-sizing: border-box; color: rgb(37, 37, 37); font-family: ProximaNova-Regular; font-size: 16px;\"><li style=\"overflow-wrap: break-word; word-break: break-word; box-sizing: border-box;\">Pie y parte superior de cuero de plena flor.</li><li style=\"overflow-wrap: break-word; word-break: break-word; box-sizing: border-box;\">El cuero&nbsp;de plena flor se considera uno de los cueros de mejor calidad disponibles,&nbsp;es deseable debido a sus tratamientos mínimos y su durabilidad.</li></ul><div><font color=\"#252525\" face=\"ProximaNova-Regular\"><span style=\"font-size: 16px;\"><br></span></font></div><div><font color=\"#252525\" face=\"ProximaNova-Regular\"><span style=\"font-size: 16px;\"><b>Talla disponible:&nbsp;</b></span></font></div><div><font color=\"#252525\" face=\"ProximaNova-Regular\"><span style=\"font-size: 16px;\"><br></span></font></div><div><ul><li><font color=\"#252525\" face=\"ProximaNova-Regular\"><span style=\"font-size: 16px;\">6 MX&nbsp; - 7 MX&nbsp; -&nbsp; 8MX&nbsp; -&nbsp; 9MX</span></font></li></ul></div>', '1.jpg', '2.jpg', '3.jpg', 0, 'In Stock', '2024-03-07 02:09:13', NULL),
(43, 6, 22, 'Bota Vaquera Apits', 'ARIAT', 6800, 6800, '<p style=\"margin-bottom: 1.25em; overflow-wrap: break-word; word-break: break-word; box-sizing: border-box; color: rgb(37, 37, 37); font-family: ProximaNova-Regular; font-size: 16px;\">Una versión audaz de un clásico. Mantenemos la tecnología cómoda y que reduce la fatiga por la que somos conocidos, pero agregamos un patrón de costura impactante y llamativos orificios para tirar de ellos y obtener una fácil colocación.&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p><p style=\"margin-bottom: 1.25em; overflow-wrap: break-word; word-break: break-word; box-sizing: border-box; color: rgb(37, 37, 37); font-family: ProximaNova-Regular; font-size: 16px;\"><span style=\"overflow-wrap: break-word; word-break: break-word; box-sizing: border-box; color: rgb(203, 108, 40);\"><b>Características:</b></span></p><ul style=\"margin-bottom: 1em; margin-left: 2em; overflow-wrap: break-word; word-break: break-word; box-sizing: border-box; color: rgb(37, 37, 37); font-family: ProximaNova-Regular; font-size: 16px;\"><li style=\"overflow-wrap: break-word; word-break: break-word; box-sizing: border-box;\">Amortiguamiento ATS® para un mejor soporte.</li><li style=\"overflow-wrap: break-word; word-break: break-word; box-sizing: border-box;\">Shock Shield®&nbsp;reduce el impacto del talón para minimizar la fatiga.</li><li style=\"overflow-wrap: break-word; word-break: break-word; box-sizing: border-box;\">Plantilla antifatiga Energy Max extraíble para un máximo confort.</li><li style=\"overflow-wrap: break-word; word-break: break-word; box-sizing: border-box;\">Suela Duratread™ para&nbsp;máxima durabilidad.</li><li style=\"overflow-wrap: break-word; word-break: break-word; box-sizing: border-box;\">Doble pespunte.<br style=\"overflow-wrap: break-word; word-break: break-word; box-sizing: border-box;\"></li><li style=\"overflow-wrap: break-word; word-break: break-word; box-sizing: border-box;\">Patrón de puntada de ocho filas.</li><li style=\"overflow-wrap: break-word; word-break: break-word; box-sizing: border-box;\">Estilo fácil de poner&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</li></ul><p style=\"margin-bottom: 1.25em; overflow-wrap: break-word; word-break: break-word; box-sizing: border-box; color: rgb(37, 37, 37); font-family: ProximaNova-Regular; font-size: 16px;\"><span style=\"overflow-wrap: break-word; word-break: break-word; box-sizing: border-box; color: rgb(203, 108, 40);\"><b>Materiales:</b></span></p><ul style=\"margin-bottom: 1em; margin-left: 2em; overflow-wrap: break-word; word-break: break-word; box-sizing: border-box; color: rgb(37, 37, 37); font-family: ProximaNova-Regular; font-size: 16px;\"><li style=\"overflow-wrap: break-word; word-break: break-word; box-sizing: border-box;\">Pie y parte superior de cuero de plena flor.</li><li style=\"overflow-wrap: break-word; word-break: break-word; box-sizing: border-box;\">El cuero&nbsp;de plena flor se considera uno de los cueros de mejor calidad disponibles,&nbsp;es deseable debido a sus tratamientos mínimos y su durabilidad.</li></ul><div><font color=\"#252525\" face=\"ProximaNova-Regular\"><span style=\"font-size: 16px;\"><br></span></font></div><div><font color=\"#252525\" face=\"ProximaNova-Regular\"><span style=\"font-size: 16px;\"><b>Talla disponible:&nbsp;</b></span></font></div><div><font color=\"#252525\" face=\"ProximaNova-Regular\"><span style=\"font-size: 16px;\"><br></span></font></div><div><ul><li><font color=\"#252525\" face=\"ProximaNova-Regular\"><span style=\"font-size: 16px;\">6 MX&nbsp; - 7 MX&nbsp; -&nbsp; 8MX&nbsp; -&nbsp; 9MX</span></font></li></ul></div>', '1.png', '2.png', '3.png', 0, 'In Stock', '2024-03-07 02:17:13', NULL),
(44, 6, 20, 'Bota Vaquera Norteña', 'ARIAT', 4000, 4600, '<p style=\"margin-bottom: 1.25em; overflow-wrap: break-word; word-break: break-word; box-sizing: border-box; color: rgb(37, 37, 37); font-family: ProximaNova-Regular; font-size: 16px;\">Una versión audaz de un clásico. Mantenemos la tecnología cómoda y que reduce la fatiga por la que somos conocidos, pero agregamos un patrón de costura impactante y llamativos orificios para tirar de ellos y obtener una fácil colocación.&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p><p style=\"margin-bottom: 1.25em; overflow-wrap: break-word; word-break: break-word; box-sizing: border-box; color: rgb(37, 37, 37); font-family: ProximaNova-Regular; font-size: 16px;\"><span style=\"overflow-wrap: break-word; word-break: break-word; box-sizing: border-box; color: rgb(203, 108, 40);\"><b>Características:</b></span></p><ul style=\"margin-bottom: 1em; margin-left: 2em; overflow-wrap: break-word; word-break: break-word; box-sizing: border-box; color: rgb(37, 37, 37); font-family: ProximaNova-Regular; font-size: 16px;\"><li style=\"overflow-wrap: break-word; word-break: break-word; box-sizing: border-box;\">Amortiguamiento ATS® para un mejor soporte.</li><li style=\"overflow-wrap: break-word; word-break: break-word; box-sizing: border-box;\">Shock Shield®&nbsp;reduce el impacto del talón para minimizar la fatiga.</li><li style=\"overflow-wrap: break-word; word-break: break-word; box-sizing: border-box;\">Plantilla antifatiga Energy Max extraíble para un máximo confort.</li><li style=\"overflow-wrap: break-word; word-break: break-word; box-sizing: border-box;\">Suela Duratread™ para&nbsp;máxima durabilidad.</li><li style=\"overflow-wrap: break-word; word-break: break-word; box-sizing: border-box;\">Doble pespunte.<br style=\"overflow-wrap: break-word; word-break: break-word; box-sizing: border-box;\"></li><li style=\"overflow-wrap: break-word; word-break: break-word; box-sizing: border-box;\">Patrón de puntada de ocho filas.</li><li style=\"overflow-wrap: break-word; word-break: break-word; box-sizing: border-box;\">Estilo fácil de poner&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</li></ul><p style=\"margin-bottom: 1.25em; overflow-wrap: break-word; word-break: break-word; box-sizing: border-box; color: rgb(37, 37, 37); font-family: ProximaNova-Regular; font-size: 16px;\"><span style=\"overflow-wrap: break-word; word-break: break-word; box-sizing: border-box; color: rgb(203, 108, 40);\"><b>Materiales:</b></span></p><ul style=\"margin-bottom: 1em; margin-left: 2em; overflow-wrap: break-word; word-break: break-word; box-sizing: border-box; color: rgb(37, 37, 37); font-family: ProximaNova-Regular; font-size: 16px;\"><li style=\"overflow-wrap: break-word; word-break: break-word; box-sizing: border-box;\">Pie y parte superior de cuero de plena flor.</li><li style=\"overflow-wrap: break-word; word-break: break-word; box-sizing: border-box;\">El cuero&nbsp;de plena flor se considera uno de los cueros de mejor calidad disponibles,&nbsp;es deseable debido a sus tratamientos mínimos y su durabilidad.</li></ul><div><font color=\"#252525\" face=\"ProximaNova-Regular\"><span style=\"font-size: 16px;\"><br></span></font></div><div><font color=\"#252525\" face=\"ProximaNova-Regular\"><span style=\"font-size: 16px;\"><b>Talla disponible:&nbsp;</b></span></font></div><div><font color=\"#252525\" face=\"ProximaNova-Regular\"><span style=\"font-size: 16px;\"><br></span></font></div><div><ul><li><font color=\"#252525\" face=\"ProximaNova-Regular\"><span style=\"font-size: 16px;\">6 MX&nbsp; - 7 MX&nbsp; -&nbsp; 8MX&nbsp; -&nbsp; 9MX</span></font></li></ul></div>', '1.png', '2.png', '3.png', 0, 'In Stock', '2024-03-07 02:20:47', NULL),
(46, 6, 20, 'Bota Vaquera Qualifier', 'ARIAT', 5300, 5399, '<p style=\"margin-bottom: 1.25em; overflow-wrap: break-word; word-break: break-word; box-sizing: border-box; color: rgb(37, 37, 37); font-family: ProximaNova-Regular; font-size: 16px;\">Una versión audaz de un clásico. Mantenemos la tecnología cómoda y que reduce la fatiga por la que somos conocidos, pero agregamos un patrón de costura impactante y llamativos orificios para tirar de ellos y obtener una fácil colocación.&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p><p style=\"margin-bottom: 1.25em; overflow-wrap: break-word; word-break: break-word; box-sizing: border-box; color: rgb(37, 37, 37); font-family: ProximaNova-Regular; font-size: 16px;\"><span style=\"overflow-wrap: break-word; word-break: break-word; box-sizing: border-box; color: rgb(203, 108, 40);\"><b>Características:</b></span></p><ul style=\"margin-bottom: 1em; margin-left: 2em; overflow-wrap: break-word; word-break: break-word; box-sizing: border-box; color: rgb(37, 37, 37); font-family: ProximaNova-Regular; font-size: 16px;\"><li style=\"overflow-wrap: break-word; word-break: break-word; box-sizing: border-box;\">Amortiguamiento ATS® para un mejor soporte.</li><li style=\"overflow-wrap: break-word; word-break: break-word; box-sizing: border-box;\">Shock Shield®&nbsp;reduce el impacto del talón para minimizar la fatiga.</li><li style=\"overflow-wrap: break-word; word-break: break-word; box-sizing: border-box;\">Plantilla antifatiga Energy Max extraíble para un máximo confort.</li><li style=\"overflow-wrap: break-word; word-break: break-word; box-sizing: border-box;\">Suela Duratread™ para&nbsp;máxima durabilidad.</li><li style=\"overflow-wrap: break-word; word-break: break-word; box-sizing: border-box;\">Doble pespunte.<br style=\"overflow-wrap: break-word; word-break: break-word; box-sizing: border-box;\"></li><li style=\"overflow-wrap: break-word; word-break: break-word; box-sizing: border-box;\">Patrón de puntada de ocho filas.</li><li style=\"overflow-wrap: break-word; word-break: break-word; box-sizing: border-box;\">Estilo fácil de poner&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</li></ul><p style=\"margin-bottom: 1.25em; overflow-wrap: break-word; word-break: break-word; box-sizing: border-box; color: rgb(37, 37, 37); font-family: ProximaNova-Regular; font-size: 16px;\"><span style=\"overflow-wrap: break-word; word-break: break-word; box-sizing: border-box; color: rgb(203, 108, 40);\"><b>Materiales:</b></span></p><ul style=\"margin-bottom: 1em; margin-left: 2em; overflow-wrap: break-word; word-break: break-word; box-sizing: border-box; color: rgb(37, 37, 37); font-family: ProximaNova-Regular; font-size: 16px;\"><li style=\"overflow-wrap: break-word; word-break: break-word; box-sizing: border-box;\">Pie y parte superior de cuero de plena flor.</li><li style=\"overflow-wrap: break-word; word-break: break-word; box-sizing: border-box;\">El cuero&nbsp;de plena flor se considera uno de los cueros de mejor calidad disponibles,&nbsp;es deseable debido a sus tratamientos mínimos y su durabilidad.</li></ul><div><font color=\"#252525\" face=\"ProximaNova-Regular\"><span style=\"font-size: 16px;\"><br></span></font></div><div><font color=\"#252525\" face=\"ProximaNova-Regular\"><span style=\"font-size: 16px;\"><b>Talla disponible:&nbsp;</b></span></font></div><div><font color=\"#252525\" face=\"ProximaNova-Regular\"><span style=\"font-size: 16px;\"><br></span></font></div><div><ul><li><font color=\"#252525\" face=\"ProximaNova-Regular\"><span style=\"font-size: 16px;\">6 MX&nbsp; - 7 MX&nbsp; -&nbsp; 8MX&nbsp; -&nbsp; 9MX</span></font></li></ul></div>', '1.png', '2.png', '3.png', 0, 'In Stock', '2024-03-07 02:25:14', NULL),
(52, 4, 23, 'Nike Air Max Pulse', 'Nike', 3000, 3000, '<h3 class=\"product-facts-title\" style=\"margin-bottom: 0px; font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; line-height: 24px; color: rgb(15, 17, 17); box-sizing: border-box; padding: 4px 0px 14px;\"><font size=\"3\">Detalles del producto</font></h3><ul class=\"a-unordered-list a-vertical a-spacing-small\" style=\"margin-bottom: 0px; margin-left: 18px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px; box-sizing: border-box;\"><li>Material de suela: Caucho</li><li>Material exterior: Tela blue</li><li>Cierre: Cordones</li></ul><div><br></div><h3 class=\"product-facts-title\" style=\"margin-bottom: 0px; font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; line-height: 24px; color: rgb(15, 17, 17); box-sizing: border-box; padding: 4px 0px 14px;\"><font size=\"3\">Acerca de este artículo</font></h3><h3 class=\"product-facts-title\" style=\"margin-bottom: 0px; font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; line-height: 24px; color: rgb(15, 17, 17); box-sizing: border-box; padding: 4px 0px 14px;\"><ul class=\"a-unordered-list a-vertical a-spacing-small\" style=\"margin-bottom: 0px; margin-left: 18px; font-size: 14px; box-sizing: border-box; font-weight: 400;\"><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item a-size-base a-color-base\" style=\"box-sizing: border-box; line-height: 20px !important;\">Una línea enfocada en corredores casuales con estilos diseñados para brindarte un paso y zancadas con transiciones suaves. Descubre los nuevos Tenis Charly Zenith Sport Running Road Casual para Hombre, que es un tenis muy ligero con sistema de ajuste mediante agujetas para una mejor sujeción, creados con una malla textil con piezas de tpu que fungen como refuerzo en herradura y puntera, además de un forro textil suave y una plantilla de eva cómoda.</span></li></ul></h3><h2 class=\"softlines\" style=\"margin-bottom: 0px; font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; line-height: 1.3; box-sizing: border-box; padding: 0px 0px 4px;\"><font size=\"3\">Descripción del producto</font></h2><div><span style=\"color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\">Una línea enfocada en corredores casuales con estilos diseñados para brindarte un paso y zancadas con transiciones suaves. Descubre los nuevos Tenis Charly Zenith Sport Running Road Casual para Hombre, que es un tenis muy ligero con sistema de ajuste mediante agujetas para una mejor sujeción, creados con una malla textil con piezas de tpu que fungen como refuerzo en herradura y puntera, además de un forro textil suave y una plantilla de eva cómoda y ligera.</span></div><div><div><div><br></div></div><div><h2 style=\"margin-bottom: 0px; font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; line-height: 32px; color: rgb(15, 17, 17); box-sizing: border-box; padding: 0px 0px 4px;\"><font size=\"4\">Tallas disponibles&nbsp;</font></h2></div><div id=\"detailBullets_feature_div\" style=\"box-sizing: border-box; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\"><ul class=\"a-unordered-list a-nostyle a-vertical a-spacing-none detail-bullet-list\" style=\"margin-bottom: 1px; margin-left: 18px; box-sizing: border-box;\"><li style=\"box-sizing: border-box;\"><font color=\"#252525\" face=\"ProximaNova-Regular\" style=\"box-sizing: border-box;\"><span style=\"box-sizing: border-box; font-size: 16px;\">6 MX&nbsp; - 7 MX&nbsp; -&nbsp; 8MX&nbsp; -&nbsp; 9MX</span></font></li></ul></div></div>', '1.png', '2.png', '3.png', 0, 'In Stock', '2024-03-07 02:52:25', NULL),
(53, 4, 23, 'Nike Air Running', 'Nike', 2800, 2800, '<h3 class=\"product-facts-title\" style=\"margin-bottom: 0px; font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; line-height: 24px; color: rgb(15, 17, 17); box-sizing: border-box; padding: 4px 0px 14px;\"><font size=\"3\">Detalles del producto</font></h3><ul class=\"a-unordered-list a-vertical a-spacing-small\" style=\"margin-bottom: 0px; margin-left: 18px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px; box-sizing: border-box;\"><li>Material de suela: Caucho</li><li>Material exterior: Tela blue</li><li>Cierre: Cordones</li></ul><div><br></div><h3 class=\"product-facts-title\" style=\"margin-bottom: 0px; font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; line-height: 24px; color: rgb(15, 17, 17); box-sizing: border-box; padding: 4px 0px 14px;\"><font size=\"3\">Acerca de este artículo</font></h3><h3 class=\"product-facts-title\" style=\"margin-bottom: 0px; font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; line-height: 24px; color: rgb(15, 17, 17); box-sizing: border-box; padding: 4px 0px 14px;\"><ul class=\"a-unordered-list a-vertical a-spacing-small\" style=\"margin-bottom: 0px; margin-left: 18px; font-size: 14px; box-sizing: border-box; font-weight: 400;\"><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item a-size-base a-color-base\" style=\"box-sizing: border-box; line-height: 20px !important;\">Una línea enfocada en corredores casuales con estilos diseñados para brindarte un paso y zancadas con transiciones suaves. Descubre los nuevos Tenis Charly Zenith Sport Running Road Casual para Hombre, que es un tenis muy ligero con sistema de ajuste mediante agujetas para una mejor sujeción, creados con una malla textil con piezas de tpu que fungen como refuerzo en herradura y puntera, además de un forro textil suave y una plantilla de eva cómoda y ligera</span></li></ul><ul class=\"a-unordered-list a-vertical a-spacing-small\" style=\"margin-bottom: 0px; margin-left: 18px; font-size: 14px; box-sizing: border-box; font-weight: 400;\"><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item a-size-base a-color-base\" style=\"box-sizing: border-box; line-height: 20px !important;\">Este calzado es ideal para entrenamientos básicos, correr o trotar en asfalto, ya que cuenta con una suela de eva ligera suave y flexible, además de su TECNOLOGÍA COREFOAM; compuesto especial de eva en la entresuela, flexible y ligero que proporciona una adecuada absorción de energía y un rebote moderado a cada paso. ¡Perfectos para ayudarte a llegar a la meta!</span></li></ul></h3><h2 class=\"softlines\" style=\"margin-bottom: 0px; font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; line-height: 1.3; box-sizing: border-box; padding: 0px 0px 4px;\"><font size=\"3\">Descripción del producto</font></h2><div><span style=\"color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\">Una línea enfocada en corredores casuales con estilos diseñados para brindarte un paso y zancadas con transiciones suaves. Descubre los nuevos Tenis Charly Zenith Sport Running Road Casual para Hombre, que es un tenis muy ligero con sistema de ajuste mediante agujetas para una mejor sujeción, creados con una malla textil con piezas de tpu que fungen como refuerzo en herradura y puntera, además de un forro textil suave y una plantilla de eva cómoda y ligera.</span></div><div><div><div><br></div></div><div><h2 style=\"margin-bottom: 0px; font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; line-height: 32px; color: rgb(15, 17, 17); box-sizing: border-box; padding: 0px 0px 4px;\"><font size=\"4\">Tallas disponibles&nbsp;</font></h2></div><div id=\"detailBullets_feature_div\" style=\"box-sizing: border-box; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\"><ul class=\"a-unordered-list a-nostyle a-vertical a-spacing-none detail-bullet-list\" style=\"margin-bottom: 1px; margin-left: 18px; box-sizing: border-box;\"><li style=\"box-sizing: border-box;\"><font color=\"#252525\" face=\"ProximaNova-Regular\" style=\"box-sizing: border-box;\"><span style=\"box-sizing: border-box; font-size: 16px;\">6 MX&nbsp; - 7 MX&nbsp; -&nbsp; 8MX&nbsp; -&nbsp; 9MX</span></font></li></ul></div></div>', '1.png', '2.png', '3.png', 0, 'In Stock', '2024-03-07 02:54:40', NULL),
(56, 4, 23, 'Nike Air', 'Nike', 3999, 3999, '<h3 class=\"product-facts-title\" style=\"margin-bottom: 0px; font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; line-height: 24px; color: rgb(15, 17, 17); box-sizing: border-box; padding: 4px 0px 14px;\"><font size=\"3\">Detalles del producto</font></h3><ul class=\"a-unordered-list a-vertical a-spacing-small\" style=\"margin-bottom: 0px; margin-left: 18px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px; box-sizing: border-box;\"><li>Material de suela: Caucho</li><li>Material exterior: Tela blue</li><li>Cierre: Cordones</li></ul><div><br></div><h3 class=\"product-facts-title\" style=\"margin-bottom: 0px; font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; line-height: 24px; color: rgb(15, 17, 17); box-sizing: border-box; padding: 4px 0px 14px;\"><font size=\"3\">Acerca de este artículo</font></h3><h3 class=\"product-facts-title\" style=\"margin-bottom: 0px; font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; line-height: 24px; color: rgb(15, 17, 17); box-sizing: border-box; padding: 4px 0px 14px;\"><ul class=\"a-unordered-list a-vertical a-spacing-small\" style=\"margin-bottom: 0px; margin-left: 18px; font-size: 14px; box-sizing: border-box; font-weight: 400;\"><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item a-size-base a-color-base\" style=\"box-sizing: border-box; line-height: 20px !important;\">Una línea enfocada en corredores casuales con estilos diseñados para brindarte un paso y zancadas con transiciones suaves. Descubre los nuevos Tenis Charly Zenith Sport Running Road Casual para Hombre, que es un tenis muy ligero con sistema de ajuste mediante agujetas para una mejor sujeción, creados con una malla textil con piezas de tpu que fungen como refuerzo en herradura y puntera, además de un forro textil suave y una plantilla de eva cómoda y ligera</span></li></ul><ul class=\"a-unordered-list a-vertical a-spacing-small\" style=\"margin-bottom: 0px; margin-left: 18px; font-size: 14px; box-sizing: border-box; font-weight: 400;\"><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item a-size-base a-color-base\" style=\"box-sizing: border-box; line-height: 20px !important;\">Este calzado es ideal para entrenamientos básicos, correr o trotar en asfalto, ya que cuenta con una suela de eva ligera suave y flexible, además de su TECNOLOGÍA COREFOAM; compuesto especial de eva en la entresuela, flexible y ligero que proporciona una adecuada absorción de energía y un rebote moderado a cada paso. ¡Perfectos para ayudarte a llegar a la meta!</span></li></ul></h3><h2 class=\"softlines\" style=\"margin-bottom: 0px; font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; line-height: 1.3; box-sizing: border-box; padding: 0px 0px 4px;\"><font size=\"3\">Descripción del producto</font></h2><div><span style=\"color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\">Una línea enfocada en corredores casuales con estilos diseñados para brindarte un paso y zancadas con transiciones suaves. Descubre los nuevos Tenis Charly Zenith Sport Running Road Casual para Hombre, que es un tenis muy ligero con sistema de ajuste mediante agujetas para una mejor sujeción, creados con una malla textil con piezas de tpu que fungen como refuerzo en herradura y puntera, además de un forro textil suave y una plantilla de eva cómoda y ligera.</span></div><div><div><br></div><div><h2 style=\"margin-bottom: 0px; font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; line-height: 32px; color: rgb(15, 17, 17); box-sizing: border-box; padding: 0px 0px 4px;\"><font size=\"4\">Tallas disponibles&nbsp;</font></h2></div><div id=\"detailBullets_feature_div\" style=\"box-sizing: border-box; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\"><ul class=\"a-unordered-list a-nostyle a-vertical a-spacing-none detail-bullet-list\" style=\"margin-bottom: 1px; margin-left: 18px; box-sizing: border-box;\"><li style=\"box-sizing: border-box;\"><font color=\"#252525\" face=\"ProximaNova-Regular\" style=\"box-sizing: border-box;\"><span style=\"box-sizing: border-box; font-size: 16px;\">6 MX&nbsp; - 7 MX&nbsp; -&nbsp; 8MX&nbsp; -&nbsp; 9MX</span></font></li></ul></div></div>', '1.png', '2.png', '3.png', 0, 'In Stock', '2024-03-07 03:23:13', NULL),
(57, 4, 24, 'Nike Pegasus Turbo', 'Nike', 2900, 2900, '<h3 class=\"product-facts-title\" style=\"margin-bottom: 0px; font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; line-height: 24px; color: rgb(15, 17, 17); box-sizing: border-box; padding: 4px 0px 14px;\"><font size=\"3\">Detalles del producto</font></h3><ul class=\"a-unordered-list a-vertical a-spacing-small\" style=\"margin-bottom: 0px; margin-left: 18px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px; box-sizing: border-box;\"><li>Material de suela: Caucho</li><li>Material exterior: Tela blue</li><li>Cierre: Cordones</li></ul><div><br></div><h3 class=\"product-facts-title\" style=\"margin-bottom: 0px; font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; line-height: 24px; color: rgb(15, 17, 17); box-sizing: border-box; padding: 4px 0px 14px;\"><font size=\"3\">Acerca de este artículo</font></h3><h3 class=\"product-facts-title\" style=\"margin-bottom: 0px; font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; line-height: 24px; color: rgb(15, 17, 17); box-sizing: border-box; padding: 4px 0px 14px;\"><ul class=\"a-unordered-list a-vertical a-spacing-small\" style=\"margin-bottom: 0px; margin-left: 18px; font-size: 14px; box-sizing: border-box; font-weight: 400;\"><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item a-size-base a-color-base\" style=\"box-sizing: border-box; line-height: 20px !important;\">Una línea enfocada en corredores casuales con estilos diseñados para brindarte un paso y zancadas con transiciones suaves. Descubre los nuevos Tenis Charly Zenith Sport Running Road Casual para Hombre, que es un tenis muy ligero con sistema de ajuste mediante agujetas para una mejor sujeción, creados con una malla textil con piezas de tpu que fungen como refuerzo en herradura y puntera, además de un forro textil suave y una plantilla de eva cómoda y ligera</span></li></ul><ul class=\"a-unordered-list a-vertical a-spacing-small\" style=\"margin-bottom: 0px; margin-left: 18px; font-size: 14px; box-sizing: border-box; font-weight: 400;\"><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item a-size-base a-color-base\" style=\"box-sizing: border-box; line-height: 20px !important;\">Este calzado es ideal para entrenamientos básicos, correr o trotar en asfalto, ya que cuenta con una suela de eva ligera suave y flexible, además de su TECNOLOGÍA COREFOAM; compuesto especial de eva en la entresuela, flexible y ligero que proporciona una adecuada absorción de energía y un rebote moderado a cada paso. ¡Perfectos para ayudarte a llegar a la meta!</span></li></ul></h3><h2 class=\"softlines\" style=\"margin-bottom: 0px; font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; line-height: 1.3; box-sizing: border-box; padding: 0px 0px 4px;\"><font size=\"3\">Descripción del producto</font></h2><div><span style=\"color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\">Una línea enfocada en corredores casuales con estilos diseñados para brindarte un paso y zancadas con transiciones suaves. Descubre los nuevos Tenis Charly Zenith Sport Running Road Casual para Hombre, que es un tenis muy ligero con sistema de ajuste mediante agujetas para una mejor sujeción, creados con una malla textil con piezas de tpu que fungen como refuerzo en herradura y puntera, además de un forro textil suave y una plantilla de eva cómoda y ligera.</span></div><div><div><br></div><div><h2 style=\"margin-bottom: 0px; font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; line-height: 32px; color: rgb(15, 17, 17); box-sizing: border-box; padding: 0px 0px 4px;\"><font size=\"4\">Tallas disponibles&nbsp;</font></h2></div><div id=\"detailBullets_feature_div\" style=\"box-sizing: border-box; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\"><ul class=\"a-unordered-list a-nostyle a-vertical a-spacing-none detail-bullet-list\" style=\"margin-bottom: 1px; margin-left: 18px; box-sizing: border-box;\"><li style=\"box-sizing: border-box;\"><font color=\"#252525\" face=\"ProximaNova-Regular\" style=\"box-sizing: border-box;\"><span style=\"box-sizing: border-box; font-size: 16px;\">6 MX&nbsp; - 7 MX&nbsp; -&nbsp; 8MX&nbsp; -&nbsp; 9MX</span></font></li></ul></div></div>', '1.png', '2.png', '3.png', 0, 'In Stock', '2024-03-07 03:33:23', NULL),
(60, 4, 24, 'Nike Pegasus Trail 4', 'Nike', 3099, 3099, '<h3 class=\"product-facts-title\" style=\"margin-bottom: 0px; font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; line-height: 24px; color: rgb(15, 17, 17); box-sizing: border-box; padding: 4px 0px 14px;\"><font size=\"3\">Detalles del producto</font></h3><ul class=\"a-unordered-list a-vertical a-spacing-small\" style=\"margin-bottom: 0px; margin-left: 18px; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px; box-sizing: border-box;\"><li>Material de suela: Caucho</li><li>Material exterior: Tela blue</li><li>Cierre: Cordones</li></ul><div><br></div><h3 class=\"product-facts-title\" style=\"margin-bottom: 0px; font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; line-height: 24px; color: rgb(15, 17, 17); box-sizing: border-box; padding: 4px 0px 14px;\"><font size=\"3\">Acerca de este artículo</font></h3><h3 class=\"product-facts-title\" style=\"margin-bottom: 0px; font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; line-height: 24px; color: rgb(15, 17, 17); box-sizing: border-box; padding: 4px 0px 14px;\"><ul class=\"a-unordered-list a-vertical a-spacing-small\" style=\"margin-bottom: 0px; margin-left: 18px; font-size: 14px; box-sizing: border-box; font-weight: 400;\"><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item a-size-base a-color-base\" style=\"box-sizing: border-box; line-height: 20px !important;\">Una línea enfocada en corredores casuales con estilos diseñados para brindarte un paso y zancadas con transiciones suaves. Descubre los nuevos Tenis Charly Zenith Sport Running Road Casual para Hombre, que es un tenis muy ligero con sistema de ajuste mediante agujetas para una mejor sujeción, creados con una malla textil con piezas de tpu que fungen como refuerzo en herradura y puntera, además de un forro textil suave y una plantilla de eva cómoda y ligera</span></li></ul><ul class=\"a-unordered-list a-vertical a-spacing-small\" style=\"margin-bottom: 0px; margin-left: 18px; font-size: 14px; box-sizing: border-box; font-weight: 400;\"><li style=\"box-sizing: border-box; list-style: disc; overflow-wrap: break-word; margin: 0px;\"><span class=\"a-list-item a-size-base a-color-base\" style=\"box-sizing: border-box; line-height: 20px !important;\">Este calzado es ideal para entrenamientos básicos, correr o trotar en asfalto, ya que cuenta con una suela de eva ligera suave y flexible, además de su TECNOLOGÍA COREFOAM; compuesto especial de eva en la entresuela, flexible y ligero que proporciona una adecuada absorción de energía y un rebote moderado a cada paso. ¡Perfectos para ayudarte a llegar a la meta!</span></li></ul></h3><h2 class=\"softlines\" style=\"margin-bottom: 0px; font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; line-height: 1.3; box-sizing: border-box; padding: 0px 0px 4px;\"><font size=\"3\">Descripción del producto</font></h2><div><span style=\"color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\">Una línea enfocada en corredores casuales con estilos diseñados para brindarte un paso y zancadas con transiciones suaves. Descubre los nuevos Tenis Charly Zenith Sport Running Road Casual para Hombre, que es un tenis muy ligero con sistema de ajuste mediante agujetas para una mejor sujeción, creados con una malla textil con piezas de tpu que fungen como refuerzo en herradura y puntera, además de un forro textil suave y una plantilla de eva cómoda y ligera.</span></div><div><div><br></div><div><h2 style=\"margin-bottom: 0px; font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; line-height: 32px; color: rgb(15, 17, 17); box-sizing: border-box; padding: 0px 0px 4px;\"><font size=\"4\">Tallas disponibles&nbsp;</font></h2></div><div id=\"detailBullets_feature_div\" style=\"box-sizing: border-box; color: rgb(15, 17, 17); font-family: &quot;Amazon Ember&quot;, Arial, sans-serif; font-size: 14px;\"><ul class=\"a-unordered-list a-nostyle a-vertical a-spacing-none detail-bullet-list\" style=\"margin-bottom: 1px; margin-left: 18px; box-sizing: border-box;\"><li style=\"box-sizing: border-box;\"><font color=\"#252525\" face=\"ProximaNova-Regular\" style=\"box-sizing: border-box;\"><span style=\"box-sizing: border-box; font-size: 16px;\">6 MX&nbsp; - 7 MX&nbsp; -&nbsp; 8MX&nbsp; -&nbsp; 9MX</span></font></li></ul></div></div>', '1.png', '2.png', '3.png', 0, 'In Stock', '2024-03-07 03:35:06', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int NOT NULL,
  `categoryid` int DEFAULT NULL,
  `subcategory` varchar(255) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(20, 6, 'King Ranch', '2024-03-07 01:18:38', '07-03-2024 06:50:07 AM'),
(21, 6, 'Rowder VentTEK', '2024-03-07 01:19:21', '07-03-2024 06:50:13 AM'),
(22, 6, 'Everlite Vapor', '2024-03-07 01:20:03', '07-03-2024 06:50:21 AM'),
(23, 4, 'Running', '2024-03-07 02:26:52', NULL),
(24, 4, 'Pegasus', '2024-03-07 03:32:15', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `userlog`
--

CREATE TABLE `userlog` (
  `id` int NOT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `userip` binary(16) DEFAULT NULL,
  `loginTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `logout` varchar(255) DEFAULT NULL,
  `status` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `userlog`
--

INSERT INTO `userlog` (`id`, `userEmail`, `userip`, `loginTime`, `logout`, `status`) VALUES
(1, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 12:18:50', '', 1),
(2, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 12:29:33', '', 1),
(3, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 12:30:11', '', 1),
(4, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 16:00:23', '26-02-2017 11:12:06 PM', 1),
(5, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 19:08:58', '', 0),
(6, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 19:09:41', '', 0),
(7, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 19:10:04', '', 0),
(8, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 19:10:31', '', 0),
(9, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-26 19:13:43', '', 1),
(10, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-27 19:52:58', '', 0),
(11, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-02-27 19:53:07', '', 1),
(12, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-03 19:00:09', '', 0),
(13, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-03 19:00:15', '', 1),
(14, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-06 19:10:26', '', 1),
(15, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-07 13:28:16', '', 1),
(16, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-07 19:43:27', '', 1),
(17, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-07 19:55:33', '', 1),
(18, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-07 20:44:29', '', 1),
(19, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-08 20:21:15', '', 1),
(20, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-15 18:19:38', '', 1),
(21, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-15 18:20:36', '15-03-2017 10:50:39 PM', 1),
(22, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2017-03-16 02:13:57', '', 1),
(23, 'hgfhgf@gmass.com', 0x3a3a3100000000000000000000000000, '2018-04-29 10:30:40', '', 1),
(24, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2024-02-08 04:39:50', NULL, 1),
(27, 'anuj.lpu1@gmail.com', 0x3a3a3100000000000000000000000000, '2024-02-20 14:47:48', NULL, 1),
(28, 'hr38939@gmail.com', 0x3a3a3100000000000000000000000000, '2024-02-22 15:43:57', NULL, 0),
(29, 'hr38939@gmail.com', 0x3a3a3100000000000000000000000000, '2024-02-22 15:44:05', NULL, 1),
(30, 'hr38939@gmail.com', 0x3132372e302e302e3100000000000000, '2024-03-09 21:22:12', NULL, 0),
(31, 'hr38939@gmail.com', 0x3132372e302e302e3100000000000000, '2024-03-09 21:22:28', NULL, 0),
(32, 'hr38939@gmail.com', 0x3132372e302e302e3100000000000000, '2024-03-09 21:22:37', NULL, 0),
(33, 'hr38939@gmail.com', 0x3132372e302e302e3100000000000000, '2024-03-09 21:29:19', NULL, 1),
(34, 'hr38939@gmail.com', 0x3132372e302e302e3100000000000000, '2024-03-09 23:32:53', NULL, 1),
(35, 'hr38939@gmail.com', 0x3132372e302e302e3100000000000000, '2024-03-10 06:33:35', '11-03-2024 07:32:23 AM', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` bigint DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `shippingAddress` longtext,
  `shippingState` varchar(255) DEFAULT NULL,
  `shippingCity` varchar(255) DEFAULT NULL,
  `shippingPincode` int DEFAULT NULL,
  `billingAddress` longtext,
  `billingState` varchar(255) DEFAULT NULL,
  `billingCity` varchar(255) DEFAULT NULL,
  `billingPincode` int DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `contactno`, `password`, `shippingAddress`, `shippingState`, `shippingCity`, `shippingPincode`, `billingAddress`, `billingState`, `billingCity`, `billingPincode`, `regDate`, `updationDate`) VALUES
(1, 'Anuj Kumar', 'anuj.lpu1@gmail.com', 9009857868, 'f925916e2754e5e03f75dd58a5733251', 'CS New Delhi', 'New Delhi', 'Delhi', 110001, 'New Delhi', 'New Delhi', 'Delhi', 110092, '2017-02-04 20:30:50', ''),
(2, 'Amit ', 'amit@gmail.com', 8285703355, '5c428d8875d2948607f3e3fe134d71b4', '', '', '', 0, '', '', '', 0, '2017-03-15 18:21:22', ''),
(3, 'hg', 'hgfhgf@gmass.com', 1121312312, '827ccb0eea8a706c4c34a16891f84e7b', '', '', '', 0, '', '', '', 0, '2018-04-29 10:30:32', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int NOT NULL,
  `userId` int DEFAULT NULL,
  `productId` int DEFAULT NULL,
  `postingDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productreviews`
--
ALTER TABLE `productreviews`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `category`
--
ALTER TABLE `category`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de la tabla `ordertrackhistory`
--
ALTER TABLE `ordertrackhistory`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `productreviews`
--
ALTER TABLE `productreviews`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT de la tabla `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
