-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 20-01-2021 a las 14:48:32
-- Versión del servidor: 8.0.22
-- Versión de PHP: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `laravel8`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `amigos`
--

CREATE TABLE `amigos` (
  `id` int UNSIGNED NOT NULL,
  `nombre` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `apellidos` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `amigos`
--

INSERT INTO `amigos` (`id`, `nombre`, `apellidos`, `created_at`, `updated_at`) VALUES
(1, 'asdfgasfd', 'asdfasdfasdf', '2018-11-07 10:07:46', '2018-11-07 10:07:46');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id` int NOT NULL,
  `categoria` varchar(200) NOT NULL,
  `descripcion` text,
  `user_id` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id`, `categoria`, `descripcion`, `user_id`) VALUES
(1, 'Bebidas alcohol', 'Gaseosas, café, té, cervezas y maltas', NULL),
(2, 'Condimentos', 'Salsas dulces y picantes, delicias, comida para untar y aderezos', NULL),
(3, 'Repostería', 'Postres, dulces y pan dulce', NULL),
(4, 'Lácteos', 'Quesos', NULL),
(5, 'Granos/Cereales', 'Pan, galletas, pasta y cereales', NULL),
(6, 'Carnes', 'Carnes preparadas', NULL),
(7, 'Frutas/Verduras', 'Frutas secas y queso de soja', NULL),
(9, 'asdfas', 'asdfasdfadfs', NULL),
(11, 'sdgf', 'sdfgsdgf', NULL),
(12, 'hgjg', 'jghjh', NULL),
(13, 'asdf', 'asdfadsf', NULL),
(15, 'Bebidas33', 'Gaseosas, café, té, cervezas y maltas333', NULL),
(17, 'si esto funcion', NULL, NULL),
(18, 'hasta luego Lucas', NULL, NULL),
(19, '', NULL, NULL),
(20, 'cohetes y pepinos', NULL, NULL),
(21, 'somos los mejores', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` int NOT NULL,
  `codigo` varchar(5) NOT NULL,
  `empresa` varchar(40) NOT NULL,
  `contacto` varchar(30) DEFAULT NULL,
  `cargo_contacto` varchar(30) DEFAULT NULL,
  `direccion` varchar(60) DEFAULT NULL,
  `ciudad` varchar(15) DEFAULT NULL,
  `region` varchar(15) DEFAULT NULL,
  `cp` varchar(10) DEFAULT NULL,
  `pais` varchar(15) DEFAULT NULL,
  `telefono` varchar(24) DEFAULT NULL,
  `fax` varchar(24) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `codigo`, `empresa`, `contacto`, `cargo_contacto`, `direccion`, `ciudad`, `region`, `cp`, `pais`, `telefono`, `fax`) VALUES
(2, 'ANATR', 'Ana Trujillo Emparedados y helados', 'JUANA LA LOCA', 'Propietario', 'Avda. de la Constitución 2222', 'México D.F.', NULL, '05021', 'México', '(5) 555-4729', '(5) 555-3745'),
(3, 'ANTON', 'Antonio Moreno Taquería', 'Antonio Moreno', 'Propietario', 'Mataderos  2312', 'México D.F.', NULL, '05023', 'México', '(5) 555-3932', NULL),
(4, 'AROUT', 'Around the Horn', 'Thomas Hardy', 'Representante de ventas', '120 Hanover Sq.', 'Londres', NULL, 'WA1 1DP', 'Reino Unido', '(71) 555-7788', '(71) 555-6750'),
(5, 'BERGS', 'Berglunds snabbköp', 'Christina Berglund', 'Administrador de pedidos', 'Berguvsvägen  8', 'Luleå', NULL, 'S-958 22', 'Suecia', '0921-12 34 65', '0921-12 34 67'),
(6, 'BLAUS', 'Blauer See Delikatessen', 'Hanna Moos', 'Representante de ventas', 'Forsterstr. 57', 'Mannheim', NULL, '68306', 'Alemania', '0621-08460', '0621-08924'),
(7, 'BLONP', 'Blondel père et fils', 'Frédérique Citeaux', 'Gerente de marketing', '24, place Kléber', 'Estrasburgo', NULL, '67000', 'Francia', '88.60.15.31', '88.60.15.32'),
(8, 'BOLID', 'Bólido Comidas preparadas', 'Martín Sommer', 'Propietario', 'C/ Araquil, 67', 'Madrid', NULL, '28023', 'España', '(91) 555 22 82', '(91) 555 91 99'),
(9, 'BONAP', 'Bon app\'', 'Laurence Lebihan', 'Propietario', '12, rue des Bouchers', 'Marsella', NULL, '13008', 'Francia', '91.24.45.40', '91.24.45.41'),
(10, 'BOTTM', 'Bottom-Dollar Markets', 'Elizabeth Lincoln', 'Gerente de contabilidad', '23 Tsawassen Blvd.', 'Tsawassen', 'BC', 'T2F 8M4', 'Canadá', '(604) 555-4729', '(604) 555-3745'),
(11, 'BSBEV', 'B\'s Beverages', 'Victoria Ashworth', 'Representante de ventas', 'Fauntleroy Circus', 'Londres', NULL, 'EC2 5NT', 'Reino Unido', '(71) 555-1212', NULL),
(13, 'CENTC', 'Centro comercial Moctezuma', 'Francisco Chang', 'Gerente de marketing', 'Sierras de Granada 9993', 'México D.F.', NULL, '05022', 'México', '(5) 555-3392', '(5) 555-7293'),
(14, 'COMMI', 'Comércio Mineiro', 'Pedro Afonso', 'Asistente de ventas', 'Av. dos Lusíadas, 23', 'São Paulo', 'SP', '05432-043', 'Brasil', '(11) 555-7647', NULL),
(15, 'CONSH', 'Consolidated Holdings', 'Elizabeth Brown', 'Representante de ventas', 'Berkeley Gardens\r\n12  Brewery ', 'Londres', NULL, 'WX1 6LT', 'Reino Unido', '(71) 555-2282', '(71) 555-9199'),
(18, 'DUMON', 'Du monde entier', 'Janine Labrune', 'Propietario', '67, rue des Cinquante Otages', 'Nantes', NULL, '44000', 'Francia', '40.67.88.88', '40.67.89.89'),
(19, 'EASTC', 'Eastern Connection', 'Ann Devon', 'Agente de ventas', '35 King George', 'Londres', NULL, 'WX3 6FW', 'Reino Unido', '(71) 555-0297', '(71) 555-3373'),
(20, 'ERNSH', 'Ernst Handel', 'Roland Mendel', 'Gerente de ventas', 'Kirchgasse 6', 'Graz', NULL, '8010', 'Austria', '7675-3425', '7675-3426'),
(21, 'FAMIA', 'Familia Arquibaldo', 'Aria Cruz', 'Asistente de marketing', 'Rua Orós, 92', 'Sao Paulo', 'SP', '05442-030', 'Brasil', '(11) 555-9857', NULL),
(22, 'FISSA', 'FISSA Fabrica Inter. Salchichas S.A.', 'Diego Roel', 'Gerente de contabilidad', 'C/ Moralzarzal, 86', 'Madrid', NULL, '28034', 'España', '(91) 555 94 44', '(91) 555 55 93'),
(23, 'FOLIG', 'Folies gourmandes', 'Martine Rancé', 'Asistente de agente de ventas', '184, chaussée de Tournai', 'Lille', NULL, '59000', 'Francia', '20.16.10.16', '20.16.10.17'),
(25, 'FRANK', 'Frankenversand', 'Peter Franken', 'Gerente de marketing', 'Berliner Platz 43', 'München', NULL, '80805', 'Alemania', '089-0877310', '089-0877451'),
(26, 'FRANR', 'France restauration', 'Carine Schmitt', 'Gerente de marketing', '54, rue Royale', 'Nantes', NULL, '44000', 'Francia', '40.32.21.21', '40.32.21.20'),
(27, 'FRANS', 'Franchi S.p.A.', 'Paolo Accorti', 'Representante de ventas', 'Via Monte Bianco 34', 'Torino', NULL, '10100', 'Italia', '011-4988260', '011-4988261'),
(28, 'FURIB', 'Furia Bacalhau e Frutos do Mar', 'Lino Rodriguez ', 'Gerente de ventas', 'Jardim das rosas n. 32', 'Lisboa', NULL, '1675', 'Portugal', '(1) 354-2534', '(1) 354-2535'),
(30, 'GODOS', 'Godos Cocina Típica', 'José Pedro Freyre', 'Gerente de ventas', 'C/ Romero, 33', 'Sevilla', NULL, '41101', 'España', '(95) 555 82 82', NULL),
(32, 'GREAL', 'Great Lakes Food Market', 'Howard Snyder', 'Gerente de marketing', '2732 Baker Blvd.', 'Eugenia', 'OR', '97403', 'Estados Unidos', '(503) 555-7555', NULL),
(34, 'HANAR', 'Hanari Carnes', 'Mario Pontes', 'Gerente de contabilidad', 'Rua do Paço, 67', 'Rio de Janeiro', 'RJ', '05454-876', 'Brasil', '(21) 555-0091', '(21) 555-8765'),
(35, 'HILAA', 'HILARIÓN-Abastos', 'Carlos Hernández', 'Representante de ventas', 'Carrera 22 con Ave. Carlos Soublette #8-35', 'San Cristóbal', 'Táchira', '5022', 'Venezuela', '(5) 555-1340', '(5) 555-1948'),
(36, 'HUNGC', 'Hungry Coyote Import Store', 'Yoshi Latimer', 'Representante de ventas', 'City Center Plaza\r\n516 Main St.', 'Elgin', 'OR', '97827', 'Estados Unidos', '(503) 555-6874', '(503) 555-2376'),
(37, 'HUNGO', 'Hungry Owl All-Night Grocers', 'Patricia McKenna', 'Asistente de ventas', '8 Johnstown Road', 'Cork', 'Co. Cork', NULL, 'Irlanda', '2967 542', '2967 3333'),
(38, 'ISLAT', 'Island Trading', 'Helen Bennett', 'Gerente de marketing', 'Garden House\r\nCrowther Way', 'Cowes', 'Isla de Wight', 'PO31 7PJ', 'Reino Unido', '(198) 555-8888', NULL),
(40, 'LACOR', 'La corne d\'abondance', 'Daniel Tonini', 'Representante de ventas', '67, avenue de l\'Europe', 'Versalles', NULL, '78000', 'Francia', '30.59.84.10', '30.59.85.11'),
(41, 'LAMAI', 'La maison d\'Asie', 'Annette Roulet', 'Gerente de ventas', '1 rue Alsace-Lorraine', 'Toulouse', NULL, '31000', 'Francia', '61.77.61.10', '61.77.61.11'),
(42, 'LAUGB', 'Laughing Bacchus Wine Cellars', 'Yoshi Tannamuri', 'Asistente de marketing', '1900 Oak St.', 'Vancouver', 'BC', 'V3F 2K1', 'Canadá', '(604) 555-3392', '(604) 555-7293'),
(43, 'LAZYK', 'Lazy K Kountry Store', 'John Steel', 'Gerente de marketing', '12 Orchestra Terrace', 'Walla Walla', 'WA', '99362', 'Estados Unidos', '(509) 555-7969', '(509) 555-6221'),
(44, 'LEHMS', 'Lehmanns Marktstand', 'Renate Messner', 'Representante de ventas', 'Magazinweg 7', 'Francfurt', NULL, '60528', 'Alemania', '069-0245984', '069-0245874'),
(45, 'LETSS', 'Let\'s Stop N Shop', 'Jaime Yorres', 'Propietario', '87 Polk St.\r\nSuite 5', 'San Francisco', 'CA', '94117', 'Estados Unidos', '(415) 555-5938', NULL),
(47, 'LINOD', 'LINO-Delicateses', 'Felipe Izquierdo', 'Propietario', 'Ave. 5 de Mayo Porlamar', 'I. de Margarita', 'Nueva Esparta', '4980', 'Venezuela', '(8) 34-56-12', '(8) 34-93-93'),
(48, 'LONEP', 'Lonesome Pine Restaurant', 'Fran Wilson', 'Gerente de ventas', '89 Chiaroscuro Rd.', 'Portland', 'OR', '97219', 'Estados Unidos', '(503) 555-9573', '(503) 555-9646'),
(51, 'MEREP', 'Mère Paillarde', 'Jean Fresnière', 'Asistente de marketing', '43 rue St. Laurent', 'Montreal', 'Québec', 'H1J 1C3', 'Canadá', '(514) 555-8054', '(514) 555-8055'),
(52, 'MORGK', 'Morgenstern Gesundkost', 'Alexander Feuer', 'Asistente de marketing', 'Heerstr. 22', 'Leipzig', NULL, '04179', 'Alemania', '0342-023176', NULL),
(53, 'NORTS', 'North/South', 'Simon Crowther', 'Asistente de ventas', 'South House\r\n300 Queensbridge', 'Londres', NULL, 'SW7 1RZ', 'Reino Unido', '(71) 555-7733', '(71) 555-2530'),
(56, 'OTTIK', 'Ottilies Käseladen', 'Henriette Pfalzheim', 'Propietario', 'Mehrheimerstr. 369', 'Köln', NULL, '50739', 'Alemania', '0221-0644327', '0221-0765721'),
(57, 'PARIS', 'Paris spécialités', 'Marie Bertrand', 'Propietario', '265, boulevard Charonne', 'París', NULL, '75012', 'Francia', '(1) 42.34.22.66', '(1) 42.34.22.77'),
(58, 'PERIC', 'Pericles Comidas clásicas', 'Guillermo Fernández', 'Representante de ventas', 'Calle Dr. Jorge Cash 321', 'México D.F.', NULL, '05033', 'México', '(5) 552-3745', '(5) 545-3745'),
(59, 'PICCO', 'Piccolo und mehr', 'Georg Pipps', 'Gerente de ventas', 'Geislweg 14', 'Salzburgo', NULL, '5020', 'Austria', '6562-9722', '6562-9723'),
(60, 'PRINI', 'Princesa Isabel Vinhos', 'Isabel de Castro', 'Representante de ventas', 'Estrada da saúde n. 58', 'Lisboa', NULL, '1756', 'Portugal', '(1) 356-5634', NULL),
(61, 'QUEDE', 'Que Delícia', 'Bernardo Batista', 'Gerente de contabilidad', 'Rua da Panificadora, 12', 'Rio de Janeiro', 'RJ', '02389-673', 'Brasil', '(21) 555-4252', '(21) 555-4545'),
(62, 'QUEEN', 'Queen Cozinha', 'Lúcia Carvalho', 'Asistente de marketing', 'Alameda dos Canàrios, 891', 'Sao Paulo', 'SP', '05487-020', 'Brasil', '(11) 555-1189', NULL),
(63, 'QUICK', 'QUICK-Stop', 'Horst Kloss', 'Gerente de contabilidad', 'Taucherstraße 10', 'Cunewalde', NULL, '01307', 'Alemania', '0372-035188', NULL),
(66, 'REGGC', 'Reggiani Caseifici', 'Maurizio Moroni', 'Asistente de ventas', 'Strada Provinciale 124', 'Reggio Emilia', NULL, '42100', 'Italia', '0522-556721', '0522-556722'),
(67, 'RICAR', 'Ricardo Adocicados', 'Janete Limeira', 'Asistente de agente de ventas', 'Av. Copacabana, 267', 'Rio de Janeiro', 'RJ', '02389-890', 'Brasil', '(21) 555-3412', NULL),
(68, 'RICSU', 'Richter Supermarkt', 'Michael Holz', 'Gerente de ventas', 'Grenzacherweg 237', 'Génova', NULL, '1203', 'Suiza', '0897-034214', NULL),
(69, 'ROMEY', 'Romero y tomillo', 'Alejandra Camino', 'Gerente de contabilidad', 'Gran Vía, 1', 'Madrid', NULL, '28001', 'España', '(91) 745 6200', '(91) 745 6210'),
(70, 'SANTG', 'Santé Gourmet', 'Jonas Bergulfsen', 'Propietario', 'Erling Skakkes gate 78', 'Stavern', NULL, '4110', 'Noruega', '07-98 92 35', '07-98 92 47'),
(72, 'SEVES', 'Seven Seas Imports', 'Hari Kumar', 'Gerente de ventas', '90 Wadhurst Rd.', 'Londres', NULL, 'OX15 4NB', 'Reino Unido', '(71) 555-1717', '(71) 555-5646'),
(73, 'SIMOB', 'Simons bistro', 'Jytte Petersen', 'Propietario', 'Vinbæltet 34', 'København', NULL, '1734', 'Dinamarca', '31 12 34 56', '31 13 35 57'),
(74, 'SPECD', 'Spécialités du monde', 'Dominique Perrier', 'Gerente de marketing', '25, rue Lauriston', 'París', NULL, '75016', 'Francia', '(1) 47.55.60.10', '(1) 47.55.60.20'),
(75, 'SPLIR', 'Split Rail Beer & Ale', 'Art Braunschweiger', 'Gerente de ventas', 'P.O. Box 555', 'Lander', 'WY', '82520', 'Estados Unidos', '(307) 555-4680', '(307) 555-6525'),
(77, 'THEBI', 'The Big Cheese', 'Liz Nixon', 'Gerente de marketing', '89 Jefferson Way\r\nSuite 2', 'Portland', 'OR', '97201', 'Estados Unidos', '(503) 555-3612', NULL),
(79, 'TOMSP', 'Toms Spezialitäten', 'Karin Josephs', 'Gerente de marketing', 'Luisenstr. 48', 'Münster', NULL, '44087', 'Alemania', '0251-031259', '0251-035695'),
(80, 'TORTU', 'Tortuga Restaurante', 'Miguel Angel Paolino', 'Propietario', 'Avda. Azteca 123', 'México D.F.', NULL, '05033', 'México', '(5) 555-2933', NULL),
(81, 'TRADH', 'Tradição Hipermercados', 'Anabela Domingues', 'Representante de ventas', 'Av. Inês de Castro, 414', 'Sao Paulo', 'SP', '05634-030', 'Brasil', '(11) 555-2167', '(11) 555-2168'),
(82, 'TRAIH', 'Trail\'s Head Gourmet Provisioners', 'Helvetius Nagy', 'Asistente de ventas', '722 DaVinci Blvd.', 'Kirkland', 'WA', '98034', 'Estados Unidos', '(206) 555-8257', '(206) 555-2174'),
(84, 'VICTE', 'Victuailles en stock', 'Mary Saveley', 'Agente de ventas', '2, rue du Commerce', 'Lion', NULL, '69004', 'Francia', '78.32.54.86', '78.32.54.87'),
(85, 'VINET', 'Vins et alcools Chevalier', 'Paul Henriot', 'Gerente de contabilidad', '59 rue de l\'Abbaye', 'Reims', NULL, '51100', 'Francia', '26.47.15.10', '26.47.15.11'),
(86, 'WANDK', 'Die Wandernde Kuh', 'Rita Müller', 'Representante de ventas', 'Adenauerallee 900', 'Stuttgart', NULL, '70563', 'Alemania', '0711-020361', '0711-035428'),
(87, 'WARTH', 'Wartian Herkku', 'Pirkko Koskitalo', 'Gerente de contabilidad', 'Torikatu 38', 'Oulu', NULL, '90110', 'Finlandia', '981-443655', '981-443655'),
(88, 'WELLI', 'Wellington Importadora', 'Paula Parente', 'Gerente de ventas', 'Rua do Mercado, 12', 'Resende', 'SP', '08737-363', 'Brasil', '(14) 555-8122', NULL),
(89, 'WHITC', 'White Clover Markets', 'Karl Jablonski', 'Propietario', '305 - 14th Ave. S.\r\nSuite 3B', 'Seattle', 'WA', '98128', 'Estados Unidos', '(206) 555-4112', '(206) 555-4115'),
(90, 'WILMK', 'Wilman Kala', 'Matti Karttunen', 'Prop./Asistente marketing', 'Keskuskatu 45', 'Helsinki', NULL, '21240', 'Finlandia', '90-224 8858', '90-224 8858'),
(91, 'WOLZA', 'Wolski  Zajazd', 'Zbyszek Piestrzeniewicz', 'Propietario', 'ul. Filtrowa 68', 'Warszawa', NULL, '01-012', 'Polonia', '(26) 642-7012', '(26) 642-7012');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalles`
--

CREATE TABLE `detalles` (
  `pedido_id` int NOT NULL,
  `producto_id` int NOT NULL,
  `precio_unidad` decimal(19,4) DEFAULT NULL,
  `cantidad` smallint DEFAULT NULL,
  `descuento` double(7,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `detalles`
--

INSERT INTO `detalles` (`pedido_id`, `producto_id`, `precio_unidad`, `cantidad`, `descuento`) VALUES
(10265, 17, '31.2000', 30, 0.00),
(10265, 70, '12.0000', 20, 0.00),
(10277, 28, '36.4000', 20, 0.00),
(10277, 62, '39.4000', 12, 0.00),
(10280, 24, '3.6000', 12, 0.00),
(10280, 55, '19.2000', 20, 0.00),
(10280, 75, '6.2000', 30, 0.00),
(10295, 56, '30.4000', 4, 0.00),
(10307, 62, '39.4000', 10, 0.00),
(10307, 68, '10.0000', 3, 0.00),
(10312, 28, '36.4000', 4, 0.00),
(10312, 43, '36.8000', 24, 0.00),
(10312, 53, '26.2000', 20, 0.00),
(10312, 75, '6.2000', 10, 0.00),
(10313, 36, '15.2000', 12, 0.00),
(10339, 4, '17.6000', 10, 0.00),
(10339, 17, '31.2000', 70, 0.05),
(10339, 62, '39.4000', 28, 0.00),
(10345, 8, '32.0000', 70, 0.00),
(10345, 19, '7.3000', 80, 0.00),
(10345, 42, '11.2000', 9, 0.00),
(10368, 21, '8.0000', 5, 0.10),
(10368, 28, '36.4000', 13, 0.10),
(10368, 57, '15.6000', 25, 0.00),
(10368, 64, '26.6000', 35, 0.10),
(10379, 41, '7.7000', 8, 0.10),
(10379, 63, '35.1000', 16, 0.10),
(10379, 65, '16.8000', 20, 0.10),
(10388, 45, '7.6000', 15, 0.20),
(10388, 52, '5.6000', 20, 0.20),
(10388, 53, '26.2000', 40, 0.00),
(10392, 69, '28.8000', 50, 0.00),
(10407, 11, '16.8000', 30, 0.00),
(10407, 69, '28.8000', 15, 0.00),
(10407, 71, '17.2000', 15, 0.00),
(10414, 19, '7.3000', 18, 0.05),
(10414, 33, '2.0000', 50, 0.00),
(10422, 26, '24.9000', 2, 0.00),
(10462, 13, '4.8000', 1, 0.00),
(10462, 23, '7.2000', 21, 0.00),
(10471, 7, '24.0000', 30, 0.00),
(10471, 56, '30.4000', 20, 0.00),
(10478, 10, '24.8000', 20, 0.05),
(10487, 19, '7.3000', 5, 0.00),
(10487, 26, '24.9000', 30, 0.00),
(10487, 54, '5.9000', 24, 0.25),
(10502, 45, '9.5000', 21, 0.00),
(10502, 53, '32.8000', 6, 0.00),
(10502, 67, '14.0000', 30, 0.00),
(10515, 9, '97.0000', 16, 0.15),
(10515, 16, '17.4500', 50, 0.00),
(10515, 27, '43.9000', 120, 0.00),
(10515, 33, '2.5000', 16, 0.15),
(10515, 60, '34.0000', 84, 0.15),
(10516, 18, '62.5000', 25, 0.10),
(10516, 41, '9.6500', 80, 0.10),
(10516, 42, '14.0000', 20, 0.00),
(10541, 24, '4.5000', 35, 0.10),
(10541, 38, '263.5000', 4, 0.10),
(10541, 65, '21.0500', 36, 0.10),
(10541, 71, '21.5000', 9, 0.10),
(10552, 69, '36.0000', 18, 0.00),
(10552, 75, '7.7500', 30, 0.00),
(10553, 11, '21.0000', 15, 0.00),
(10553, 16, '17.4500', 14, 0.00),
(10553, 22, '21.0000', 24, 0.00),
(10553, 31, '12.5000', 30, 0.00),
(10553, 35, '18.0000', 6, 0.00),
(10556, 72, '34.8000', 24, 0.00),
(10563, 36, '19.0000', 25, 0.00),
(10563, 52, '7.0000', 70, 0.00),
(10583, 29, '123.7900', 10, 0.00),
(10583, 60, '34.0000', 24, 0.15),
(10583, 69, '36.0000', 10, 0.15),
(10588, 18, '62.5000', 40, 0.20),
(10588, 42, '14.0000', 100, 0.20),
(10595, 35, '18.0000', 30, 0.25),
(10595, 61, '28.5000', 120, 0.25),
(10595, 69, '36.0000', 65, 0.25),
(10615, 55, '24.0000', 5, 0.00),
(10620, 24, '4.5000', 5, 0.00),
(10620, 52, '7.0000', 5, 0.00),
(10663, 40, '18.4000', 30, 0.05),
(10663, 42, '14.0000', 30, 0.05),
(10663, 51, '53.0000', 20, 0.05),
(10669, 36, '19.0000', 30, 0.00),
(10673, 16, '17.4500', 3, 0.00),
(10673, 42, '14.0000', 6, 0.00),
(10673, 43, '46.0000', 6, 0.00),
(10676, 10, '31.0000', 2, 0.00),
(10676, 19, '9.2000', 7, 0.00),
(10676, 44, '19.4500', 21, 0.00),
(10683, 52, '7.0000', 9, 0.00),
(10686, 17, '39.0000', 30, 0.20),
(10686, 26, '31.2300', 15, 0.00),
(10691, 1, '18.0000', 30, 0.00),
(10691, 29, '123.7900', 40, 0.00),
(10691, 43, '46.0000', 40, 0.00),
(10691, 44, '19.4500', 24, 0.00),
(10691, 62, '49.3000', 48, 0.00),
(10727, 17, '39.0000', 20, 0.05),
(10727, 56, '38.0000', 10, 0.05),
(10727, 59, '55.0000', 10, 0.05),
(10737, 13, '6.0000', 4, 0.00),
(10737, 41, '9.6500', 12, 0.00),
(10738, 16, '17.4500', 3, 0.00),
(10752, 1, '18.0000', 8, 0.00),
(10752, 69, '36.0000', 3, 0.00),
(10781, 54, '7.4500', 3, 0.20),
(10781, 56, '38.0000', 20, 0.20),
(10781, 74, '10.0000', 35, 0.00),
(10787, 2, '19.0000', 15, 0.05),
(10787, 29, '123.7900', 20, 0.05),
(10798, 62, '49.3000', 2, 0.00),
(10798, 72, '34.8000', 10, 0.00),
(10805, 34, '14.0000', 10, 0.00),
(10805, 38, '263.5000', 10, 0.00),
(10810, 13, '6.0000', 7, 0.00),
(10810, 25, '14.0000', 5, 0.00),
(10810, 70, '15.0000', 5, 0.00),
(10832, 13, '6.0000', 3, 0.20),
(10832, 25, '14.0000', 10, 0.20),
(10832, 44, '19.4500', 16, 0.20),
(10832, 64, '33.2500', 3, 0.00),
(10858, 7, '30.0000', 5, 0.00),
(10858, 27, '43.9000', 10, 0.00),
(10858, 70, '15.0000', 4, 0.00),
(10865, 38, '263.5000', 60, 0.05),
(10865, 39, '18.0000', 80, 0.05),
(10912, 11, '21.0000', 40, 0.25),
(10912, 29, '123.7900', 60, 0.25),
(10915, 17, '39.0000', 10, 0.00),
(10915, 33, '2.5000', 30, 0.00),
(10915, 54, '7.4500', 10, 0.00),
(10919, 16, '17.4500', 24, 0.00),
(10919, 25, '14.0000', 24, 0.00),
(10919, 40, '18.4000', 20, 0.00),
(10949, 6, '25.0000', 12, 0.00),
(10949, 10, '31.0000', 30, 0.00),
(10949, 17, '39.0000', 6, 0.00),
(10949, 62, '49.3000', 60, 0.00),
(10967, 19, '9.2000', 12, 0.00),
(10967, 49, '20.0000', 40, 0.00),
(10971, 29, '123.7900', 14, 0.00),
(10982, 7, '30.0000', 20, 0.00),
(10982, 43, '46.0000', 9, 0.00),
(10985, 16, '17.4500', 36, 0.10),
(10985, 18, '62.5000', 8, 0.10),
(10985, 32, '32.0000', 35, 0.10),
(10989, 6, '25.0000', 40, 0.00),
(10989, 11, '21.0000', 15, 0.00),
(10989, 41, '9.6500', 4, 0.00),
(10990, 21, '10.0000', 65, 0.00),
(10990, 34, '14.0000', 60, 0.15),
(10990, 55, '24.0000', 65, 0.15),
(10990, 61, '28.5000', 66, 0.15),
(11005, 1, '18.0000', 2, 0.00),
(11005, 59, '55.0000', 10, 0.00),
(11009, 24, '4.5000', 12, 0.00),
(11009, 36, '19.0000', 18, 0.25),
(11009, 60, '34.0000', 9, 0.00),
(11010, 7, '30.0000', 20, 0.00),
(11010, 24, '4.5000', 10, 0.00),
(11013, 23, '9.0000', 10, 0.00),
(11013, 42, '14.0000', 4, 0.00),
(11013, 45, '9.5000', 20, 0.00),
(11013, 68, '12.5000', 2, 0.00),
(11014, 41, '9.6500', 28, 0.10),
(11015, 30, '25.8900', 15, 0.00),
(11015, 77, '13.0000', 18, 0.00),
(11020, 10, '31.0000', 24, 0.15),
(11032, 36, '19.0000', 35, 0.00),
(11032, 38, '263.5000', 25, 0.00),
(11032, 59, '55.0000', 30, 0.00),
(11042, 44, '19.4500', 15, 0.00),
(11042, 61, '28.5000', 4, 0.00),
(11053, 18, '62.5000', 35, 0.20),
(11053, 32, '32.0000', 20, 0.00),
(11053, 64, '33.2500', 25, 0.20),
(11059, 13, '6.0000', 30, 0.00),
(11059, 17, '39.0000', 12, 0.00),
(11059, 60, '34.0000', 35, 0.00),
(11060, 60, '34.0000', 4, 0.00),
(11060, 77, '13.0000', 10, 0.00),
(11070, 1, '18.0000', 40, 0.15),
(11070, 2, '19.0000', 20, 0.15),
(11070, 16, '17.4500', 30, 0.15),
(11070, 31, '12.5000', 20, 0.00),
(11073, 11, '21.0000', 10, 0.00),
(11073, 24, '4.5000', 20, 0.00);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE `empleados` (
  `id` int NOT NULL,
  `apellidos` varchar(20) NOT NULL,
  `nombre` varchar(10) NOT NULL,
  `cargo` varchar(30) DEFAULT NULL,
  `tratamiento` varchar(25) DEFAULT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `fecha_contratacion` date DEFAULT NULL,
  `direccion` varchar(60) DEFAULT NULL,
  `ciudad` varchar(15) DEFAULT NULL,
  `region` varchar(15) DEFAULT NULL,
  `cp` varchar(10) DEFAULT NULL,
  `pais` varchar(15) DEFAULT NULL,
  `telefono_domicilio` varchar(24) DEFAULT NULL,
  `extension` varchar(4) DEFAULT NULL,
  `notas` text,
  `jefe_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `empleados`
--

INSERT INTO `empleados` (`id`, `apellidos`, `nombre`, `cargo`, `tratamiento`, `fecha_nacimiento`, `fecha_contratacion`, `direccion`, `ciudad`, `region`, `cp`, `pais`, `telefono_domicilio`, `extension`, `notas`, `jefe_id`) VALUES
(2, 'Fuller', 'Andrew', 'Vicepresidente comercial', 'Dr.', '1952-02-19', '1992-08-14', '908 W. Capital Way', 'Tacoma', 'WA', '98401', 'EE.UU.', '(206) 555-9482', '3457', 'Andrew completó su licenciatura en Comercio y un doctorado en Marketing Internacional de la Universidad de Dallas. Habla con fluidez en francés e italiano y lee el alemán. Ingresó en la empresa como representante de ventas, fue ascendido a gerente de cuentas y después fue nombrado vicepresidente comercial.\r\nAndrew es miembro de la Mesa redonda de administración de Ventas, la Cámara de comercio de Seattle y de la Asociación de importadores de la Cuenca del Pacífico.', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `envios`
--

CREATE TABLE `envios` (
  `id` int NOT NULL,
  `empresa` varchar(40) NOT NULL,
  `telefono` varchar(24) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `envios`
--

INSERT INTO `envios` (`id`, `empresa`, `telefono`) VALUES
(1, 'Speedy Express', '(503) 555-9831'),
(2, 'United Package', '(503) 555-3199'),
(3, 'Federal Shipping', '(503) 555-9931');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `menus`
--

CREATE TABLE `menus` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2018-11-06 13:46:46', '2018-11-06 13:46:46');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_05_19_173453_create_menu_table', 1),
(6, '2016_10_21_190000_create_roles_table', 1),
(7, '2016_10_21_190000_create_settings_table', 1),
(8, '2016_11_30_135954_create_permission_table', 1),
(9, '2016_11_30_141208_create_permission_role_table', 1),
(10, '2016_12_26_201236_data_types__add__server_side', 1),
(11, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(12, '2017_01_14_005015_create_translations_table', 1),
(13, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(14, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(15, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(16, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(17, '2017_08_05_000000_add_group_to_settings_table', 1),
(18, '2017_11_26_013050_add_user_role_relationship', 1),
(19, '2017_11_26_015000_create_user_roles_table', 1),
(20, '2018_03_11_000000_add_user_settings', 1),
(21, '2018_03_14_000000_add_details_to_data_types_table', 1),
(22, '2018_03_16_000000_make_settings_value_nullable', 1),
(23, '2018_11_21_115359_create_permission_tables', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` int UNSIGNED NOT NULL,
  `model_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `model_has_permissions`
--

INSERT INTO `model_has_permissions` (`permission_id`, `model_type`, `model_id`) VALUES
(1, 'App\\User', 1),
(2, 'App\\User', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` int UNSIGNED NOT NULL,
  `model_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\User', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos`
--

CREATE TABLE `pedidos` (
  `id` int NOT NULL,
  `cliente_id` int NOT NULL,
  `empleado_id` int DEFAULT NULL,
  `fecha_pedido` date DEFAULT NULL,
  `fecha_entrega` date DEFAULT NULL,
  `fecha_envio` date DEFAULT NULL,
  `envio_id` int DEFAULT NULL,
  `cargo` decimal(19,4) DEFAULT NULL,
  `destinatario` varchar(40) DEFAULT NULL,
  `direccion_destinatario` varchar(60) DEFAULT NULL,
  `ciudad_destinatario` varchar(15) DEFAULT NULL,
  `region_destinatario` varchar(15) DEFAULT NULL,
  `cp_destinatario` varchar(10) DEFAULT NULL,
  `pais_destinatario` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `pedidos`
--

INSERT INTO `pedidos` (`id`, `cliente_id`, `empleado_id`, `fecha_pedido`, `fecha_entrega`, `fecha_envio`, `envio_id`, `cargo`, `destinatario`, `direccion_destinatario`, `ciudad_destinatario`, `region_destinatario`, `cp_destinatario`, `pais_destinatario`) VALUES
(10265, 7, 2, '2018-10-30', '1996-08-22', '1996-08-12', 1, '55.2800', 'Blondel père et fils', '24, place Kléber', 'Strasbourg', NULL, '67000', 'Francia'),
(10277, 52, 2, '1996-08-09', '1996-09-06', '1996-08-13', 3, '125.7700', 'Morgenstern Gesundkost', 'Heerstr. 22', 'Leipzig', NULL, '04179', 'Alemania'),
(10280, 5, 2, '1996-08-14', '1996-09-11', '1996-09-12', 1, '8.9800', 'Berglunds snabbköp', 'Berguvsvägen  8', 'Luleå', NULL, 'S-958 22', 'Suecia'),
(10295, 85, 2, '1996-09-02', '1996-09-30', '1996-09-10', 2, '1.1500', 'Vins et alcools Chevalier', '59 rue de l\'Abbaye', 'Reims', NULL, '51100', 'Francia'),
(10307, 48, 2, '1996-09-17', '1996-10-15', '1996-09-25', 2, '0.5600', 'Lonesome Pine Restaurant', '89 Chiaroscuro Rd.', 'Portland', 'OR', '97219', 'Estados Unidos'),
(10312, 86, 2, '1996-09-23', '1996-10-21', '1996-10-03', 2, '40.2600', 'Die Wandernde Kuh', 'Adenauerallee 900', 'Stuttgart', NULL, '70563', 'Alemania'),
(10313, 63, 2, '1996-09-24', '1996-10-22', '1996-10-04', 2, '1.9600', 'QUICK-Stop', 'Taucherstraße 10', 'Cunewalde', NULL, '01307', 'Alemania'),
(10339, 51, 2, '1996-10-28', '1996-11-25', '1996-11-04', 2, '15.6600', 'Mère Paillarde', '43 rue St. Laurent', 'Montréal', 'Québec', 'H1J 1C3', 'Canadá'),
(10345, 63, 2, '1996-11-04', '1996-12-02', '1996-11-11', 2, '249.0600', 'QUICK-Stop', 'Taucherstraße 10', 'Cunewalde', NULL, '01307', 'Alemania'),
(10368, 20, 2, '1996-11-29', '1996-12-27', '1996-12-02', 2, '101.9500', 'Ernst Handel', 'Kirchgasse 6', 'Graz', NULL, '8010', 'Austria'),
(10379, 61, 2, '1996-12-11', '1997-01-08', '1996-12-13', 1, '45.0300', 'Que Delícia', 'Rua da Panificadora, 12', 'Río de Janeiro', 'RJ', '02389-673', 'Brasil'),
(10388, 72, 2, '1996-12-19', '1997-01-16', '1996-12-20', 1, '34.8600', 'Seven Seas Imports', '90 Wadhurst Rd.', 'London', NULL, 'OX15 4NB', 'Reino Unido'),
(10392, 59, 2, '1996-12-24', '1997-01-21', '1997-01-01', 3, '122.4600', 'Piccolo und mehr', 'Geislweg 14', 'Salzburg', NULL, '5020', 'Austria'),
(10407, 56, 2, '1997-01-07', '1997-02-04', '1997-01-30', 2, '91.4800', 'Ottilies Käseladen', 'Mehrheimerstr. 369', 'Köln', NULL, '50739', 'Alemania'),
(10414, 21, 2, '1997-01-14', '1997-02-11', '1997-01-17', 3, '21.4800', 'Familia Arquibaldo', 'Rua Orós, 92', 'São Paulo', 'SP', '05442-030', 'Brasil'),
(10422, 27, 2, '1997-01-22', '1997-02-19', '1997-01-31', 1, '3.0200', 'Franchi S.p.A.', 'Via Monte Bianco 34', 'Torino', NULL, '10100', 'Italia'),
(10462, 15, 2, '1997-03-03', '1997-03-31', '1997-03-18', 1, '6.1700', 'Consolidated Holdings', 'Berkeley Gardens\r\n12  Brewery ', 'London', NULL, 'WX1 6LT', 'Reino Unido'),
(10471, 11, 2, '1997-03-11', '1997-04-08', '1997-03-18', 3, '45.5900', 'B\'s Beverages', 'Fauntleroy Circus', 'London', NULL, 'EC2 5NT', 'Reino Unido'),
(10478, 84, 2, '1997-03-18', '1997-04-01', '1997-03-26', 3, '4.8100', 'Victuailles en stock', '2, rue du Commerce', 'Lyon', NULL, '69004', 'Francia'),
(10487, 62, 2, '1997-03-26', '1997-04-23', '1997-03-28', 2, '71.0700', 'Queen Cozinha', 'Alameda dos Canàrios, 891', 'São Paulo', 'SP', '05487-020', 'Brasil'),
(10502, 58, 2, '1997-04-10', '1997-05-08', '1997-04-29', 1, '69.3200', 'Pericles Comidas clásicas', 'Calle Dr. Jorge Cash 321', 'México D.F.', NULL, '05033', 'México'),
(10515, 63, 2, '1997-04-23', '1997-05-07', '1997-05-23', 1, '204.4700', 'QUICK-Stop', 'Taucherstraße 10', 'Cunewalde', NULL, '01307', 'Alemania'),
(10516, 37, 2, '1997-04-24', '1997-05-22', '1997-05-01', 3, '62.7800', 'Hungry Owl All-Night Grocers', '8 Johnstown Road', 'Cork', 'Co. Cork', NULL, 'Irlanda'),
(10541, 34, 2, '1997-05-19', '1997-06-16', '1997-05-29', 1, '68.6500', 'Hanari Carnes', 'Rua do Paço, 67', 'Río de Janeiro', 'RJ', '05454-876', 'Brasil'),
(10552, 35, 2, '1997-05-29', '1997-06-26', '1997-06-05', 1, '83.2200', 'HILARIÓN-Abastos', 'Carrera 22 con Ave. Carlos Soublette #8-35', 'San Cristóbal', 'Táchira', '5022', 'Venezuela'),
(10553, 87, 2, '1997-05-30', '1997-06-27', '1997-06-03', 2, '149.4900', 'Wartian Herkku', 'Torikatu 38', 'Oulu', NULL, '90110', 'Finlandia'),
(10556, 73, 2, '1997-06-03', '1997-07-15', '1997-06-13', 1, '9.8000', 'Simons bistro', 'Vinbæltet 34', 'København', NULL, '1734', 'Dinamarca'),
(10563, 67, 2, '1997-06-10', '1997-07-22', '1997-06-24', 2, '60.4300', 'Ricardo Adocicados', 'Av. Copacabana, 267', 'Río de Janeiro', 'RJ', '02389-890', 'Brasil'),
(10583, 87, 2, '1997-06-30', '1997-07-28', '1997-07-04', 2, '7.2800', 'Wartian Herkku', 'Torikatu 38', 'Oulu', NULL, '90110', 'Finlandia'),
(10588, 63, 2, '1997-07-03', '1997-07-31', '1997-07-10', 3, '194.6700', 'QUICK-Stop', 'Taucherstraße 10', 'Cunewalde', NULL, '01307', 'Alemania'),
(10595, 20, 2, '1997-07-10', '1997-08-07', '1997-07-14', 1, '96.7800', 'Ernst Handel', 'Kirchgasse 6', 'Graz', NULL, '8010', 'Austria'),
(10615, 90, 2, '1997-07-30', '1997-08-27', '1997-08-06', 3, '0.7500', 'Wilman Kala', 'Keskuskatu 45', 'Helsinki', NULL, '21240', 'Finlandia'),
(10620, 42, 2, '1997-08-05', '1997-09-02', '1997-08-14', 3, '0.9400', 'Laughing Bacchus Wine Cellars', '2319 Elm St.', 'Vancouver', 'BC', 'V3F 2K1', 'Canadá'),
(10663, 9, 2, '1997-09-10', '1997-09-24', '1997-10-03', 2, '113.1500', 'Bon app\'', '12, rue des Bouchers', 'Marseille', NULL, '13008', 'Francia'),
(10669, 73, 2, '1997-09-15', '1997-10-13', '1997-09-22', 1, '24.3900', 'Simons bistro', 'Vinbæltet 34', 'København', NULL, '1734', 'Dinamarca'),
(10673, 90, 2, '1997-09-18', '1997-10-16', '1997-09-19', 1, '22.7600', 'Wilman Kala', 'Keskuskatu 45', 'Helsinki', NULL, '21240', 'Finlandia'),
(10676, 80, 2, '1997-09-22', '1997-10-20', '1997-09-29', 2, '2.0100', 'Tortuga Restaurante', 'Avda. Azteca 123', 'México D.F.', NULL, '05033', 'México'),
(10683, 18, 2, '1997-09-26', '1997-10-24', '1997-10-01', 1, '4.4000', 'Du monde entier', '67, rue des Cinquante Otages', 'Nantes', NULL, '44000', 'Francia'),
(10686, 59, 2, '1997-09-30', '1997-10-28', '1997-10-08', 1, '96.5000', 'Piccolo und mehr', 'Geislweg 14', 'Salzburg', NULL, '5020', 'Austria'),
(10691, 63, 2, '1997-10-03', '1997-11-14', '1997-10-22', 2, '810.0500', 'QUICK-Stop', 'Taucherstraße 10', 'Cunewalde', NULL, '01307', 'Alemania'),
(10727, 66, 2, '1997-11-03', '1997-12-01', '1997-12-05', 1, '89.9000', 'Reggiani Caseifici', 'Strada Provinciale 124', 'Reggio Emilia', NULL, '42100', 'Italia'),
(10737, 85, 2, '1997-11-11', '1997-12-09', '1997-11-18', 2, '7.7900', 'Vins et alcools Chevalier', '59 rue de l\'Abbaye', 'Reims', NULL, '51100', 'Francia'),
(10738, 74, 2, '1997-11-12', '1997-12-10', '1997-11-18', 1, '2.9100', 'Spécialités du monde', '25, rue Lauriston', 'Paris', NULL, '75016', 'Francia'),
(10752, 53, 2, '1997-11-24', '1997-12-22', '1997-11-28', 3, '1.3900', 'North/South', 'South House\r\n300 Queensbridge', 'London', NULL, 'SW7 1RZ', 'Reino Unido'),
(10781, 87, 2, '1997-12-17', '1998-01-14', '1997-12-19', 3, '73.1600', 'Wartian Herkku', 'Torikatu 38', 'Oulu', NULL, '90110', 'Finlandia'),
(10787, 41, 2, '1997-12-19', '1998-01-02', '1997-12-26', 1, '249.9300', 'La maison d\'Asie', '1 rue Alsace-Lorraine', 'Toulouse', NULL, '31000', 'Francia'),
(10798, 38, 2, '1997-12-26', '1998-01-23', '1998-01-05', 1, '2.3300', 'Island Trading', 'Garden House\r\nCrowther Way', 'Cowes', 'Isle of Wight', 'PO31 7PJ', 'Reino Unido'),
(10805, 77, 2, '1997-12-30', '1998-01-27', '1998-01-09', 3, '237.3400', 'The Big Cheese', '89 Jefferson Way\r\nSuite 2', 'Portland', 'OR', '97201', 'Estados Unidos'),
(10810, 42, 2, '1998-01-01', '1998-01-29', '1998-01-07', 3, '4.3300', 'Laughing Bacchus Wine Cellars', '2319 Elm St.', 'Vancouver', 'BC', 'V3F 2K1', 'Canadá'),
(10832, 41, 2, '1998-01-14', '1998-02-11', '1998-01-19', 2, '43.2600', 'La maison d\'Asie', '1 rue Alsace-Lorraine', 'Toulouse', NULL, '31000', 'Francia'),
(10858, 40, 2, '1998-01-29', '1998-02-26', '1998-02-03', 1, '52.5100', 'La corne d\'abondance', '67, avenue de l\'Europe', 'Versailles', NULL, '78000', 'Francia'),
(10865, 63, 2, '1998-02-02', '1998-02-16', '1998-02-12', 1, '348.1400', 'QUICK-Stop', 'Taucherstraße 10', 'Cunewalde', NULL, '01307', 'Alemania'),
(10912, 37, 2, '1998-02-26', '1998-03-26', '1998-03-18', 2, '580.9100', 'Hungry Owl All-Night Grocers', '8 Johnstown Road', 'Cork', 'Co. Cork', NULL, 'Irlanda'),
(10915, 80, 2, '1998-02-27', '1998-03-27', '1998-03-02', 2, '3.5100', 'Tortuga Restaurante', 'Avda. Azteca 123', 'México D.F.', NULL, '05033', 'México'),
(10919, 47, 2, '1998-03-02', '1998-03-30', '1998-03-04', 2, '19.8000', 'LINO-Delicateses', 'Ave. 5 de Mayo Porlamar', 'I. de Margarita', 'Nueva Esparta', '4980', 'Venezuela'),
(10949, 10, 2, '1998-03-13', '1998-04-10', '1998-03-17', 3, '74.4400', 'Bottom-Dollar Markets', '23 Tsawassen Blvd.', 'Tsawassen', 'BC', 'T2F 8M4', 'Canadá'),
(10967, 79, 2, '1998-03-23', '1998-04-20', '1998-04-02', 2, '62.2200', 'Toms Spezialitäten', 'Luisenstr. 48', 'Münster', NULL, '44087', 'Alemania'),
(10971, 26, 2, '1998-03-24', '1998-04-21', '1998-04-02', 2, '121.8200', 'France restauration', '54, rue Royale', 'Nantes', NULL, '44000', 'Francia'),
(10982, 10, 2, '1998-03-27', '1998-04-24', '1998-04-08', 1, '14.0100', 'Bottom-Dollar Markets', '23 Tsawassen Blvd.', 'Tsawassen', 'BC', 'T2F 8M4', 'Canadá'),
(10985, 37, 2, '1998-03-30', '1998-04-27', '1998-04-02', 1, '91.5100', 'Hungry Owl All-Night Grocers', '8 Johnstown Road', 'Cork', 'Co. Cork', NULL, 'Irlanda'),
(10989, 61, 2, '1998-03-31', '1998-04-28', '1998-04-02', 1, '34.7600', 'Que Delícia', 'Rua da Panificadora, 12', 'Río de Janeiro', 'RJ', '02389-673', 'Brasil'),
(10990, 20, 2, '1998-04-01', '1998-05-13', '1998-04-07', 3, '117.6100', 'Ernst Handel', 'Kirchgasse 6', 'Graz', NULL, '8010', 'Austria'),
(11005, 90, 2, '1998-04-07', '1998-05-05', '1998-04-10', 1, '0.7500', 'Wilman Kala', 'Keskuskatu 45', 'Helsinki', NULL, '21240', 'Finlandia'),
(11009, 30, 2, '1998-04-08', '1998-05-06', '1998-04-10', 1, '59.1100', 'Godos Cocina Típica', 'C/ Romero, 33', 'Sevilla', NULL, '41101', 'España'),
(11010, 66, 2, '1998-04-09', '1998-05-07', '1998-04-21', 2, '28.7100', 'Reggiani Caseifici', 'Strada Provinciale 124', 'Reggio Emilia', NULL, '42100', 'Italia'),
(11013, 69, 2, '1998-04-09', '1998-05-07', '1998-04-10', 1, '32.9900', 'Romero y tomillo', 'Gran Vía, 1', 'Madrid', NULL, '28001', 'España'),
(11014, 47, 2, '1998-04-10', '1998-05-08', '1998-04-15', 3, '23.6000', 'LINO-Delicateses', 'Ave. 5 de Mayo Porlamar', 'I. de Margarita', 'Nueva Esparta', '4980', 'Venezuela'),
(11015, 70, 2, '1998-04-10', '1998-04-24', '1998-04-20', 2, '4.6200', 'Santé Gourmet', 'Erling Skakkes gate 78', 'Stavern', NULL, '4110', 'Noruega'),
(11020, 56, 2, '1998-04-14', '1998-05-12', '1998-04-16', 2, '43.3000', 'Ottilies Käseladen', 'Mehrheimerstr. 369', 'Köln', NULL, '50739', 'Alemania'),
(11032, 89, 2, '1998-04-17', '1998-05-15', '1998-04-23', 3, '606.1900', 'White Clover Markets', '1029 - 12th Ave. S.', 'Seattle', 'WA', '98124', 'Estados Unidos'),
(11042, 14, 2, '1998-04-22', '1998-05-06', '1998-05-01', 1, '29.9900', 'Comércio Mineiro', 'Av. dos Lusíadas, 23', 'São Paulo', 'SP', '05432-043', 'Brasil'),
(11053, 59, 2, '1998-04-27', '1998-05-25', '1998-04-29', 2, '53.0500', 'Piccolo und mehr', 'Geislweg 14', 'Salzburg', NULL, '5020', 'Austria'),
(11059, 67, 2, '1998-04-29', '1998-06-10', NULL, 2, '85.8000', 'Ricardo Adocicados', 'Av. Copacabana, 267', 'Río de Janeiro', 'RJ', '02389-890', 'Brasil'),
(11060, 27, 2, '1998-04-30', '1998-05-28', '1998-05-04', 2, '10.9800', 'Franchi S.p.A.', 'Via Monte Bianco 34', 'Torino', NULL, '10100', 'Italia'),
(11070, 44, 2, '1998-05-05', '1998-06-02', NULL, 1, '136.0000', 'Lehmanns Marktstand', 'Magazinweg 7', 'Frankfurt a.M. ', NULL, '60528', 'Alemania'),
(11073, 58, 2, '1998-05-05', '1998-06-02', NULL, 2, '24.9500', 'Pericles Comidas clásicas', 'Calle Dr. Jorge Cash 321', 'México D.F.', NULL, '05033', 'México');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `permissions`
--

CREATE TABLE `permissions` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'edit articles', 'web', '2018-11-21 12:14:36', '2018-11-21 12:14:36'),
(2, 'delete articles', 'web', '2018-11-21 12:30:42', '2018-11-21 12:30:42'),
(3, 'mostrar pedidos', 'web', '2018-11-21 12:44:49', '2018-11-21 12:44:49');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id` int NOT NULL,
  `producto` varchar(40) NOT NULL,
  `proveedor_id` int DEFAULT NULL,
  `categoria_id` int DEFAULT NULL,
  `cantidad_por_unidad` varchar(20) DEFAULT NULL,
  `precio_unidad` decimal(19,4) DEFAULT NULL,
  `unidades_existencia` smallint DEFAULT NULL,
  `unidades_pedido` smallint DEFAULT NULL,
  `nivel_nuevo_pedido` int DEFAULT NULL,
  `suspendido` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id`, `producto`, `proveedor_id`, `categoria_id`, `cantidad_por_unidad`, `precio_unidad`, `unidades_existencia`, `unidades_pedido`, `nivel_nuevo_pedido`, `suspendido`) VALUES
(4, 'Papas', 2, 2, '48 - frascos 6 l', '22.0000', 53, 0, 0, 0),
(5, 'Mezcla Gumbo del chef Anton', 2, 2, '36 cajas', '21.3500', 0, 0, 0, -1),
(6, 'Mermelada de grosellas de la abuela', 3, 2, '12 - frascos 8 l', '25.0000', 120, 0, 25, 0),
(7, 'Peras secas orgánicas del tío Bob', 3, 7, '12 - paq. 1 kg', '30.0000', 15, 0, 10, 0),
(8, 'Salsa de arándanos Northwoods', 3, 2, '12 - frascos 12 l', '40.0000', 6, 0, 0, 0),
(9, 'Buey Mishi Kobe', 4, 6, '18 - paq. 500 g', '97.0000', 29, 0, 0, -1),
(14, 'Cuajada de judías', 6, 7, '40 - paq. 100 g', '23.2500', 35, 0, 0, 0),
(15, 'Salsa de soja baja en sodio', 6, 2, '24 - bot. 250 ml', '15.5000', 39, 0, 5, 0),
(16, 'Postre de merengue Pavlova', 7, 3, '32 - cajas 500 g', '17.4500', 29, 0, 10, 0),
(17, 'papas arrugadas', 7, 6, '20 - latas 1 kg', '39.0000', 0, 0, 0, -1),
(19, 'Pastas de té de chocolate', 8, 3, '10 cajas x 12 piezas', '9.2000', 25, 0, 5, 0),
(20, 'Mermelada de Sir Rodney\'s', 8, 3, '30 cajas regalo', '81.0000', 40, 0, 0, 0),
(21, 'Bollos de Sir Rodney\'s', 8, 3, '24 paq. x 4 piezas', '10.0000', 3, 40, 5, 0),
(22, 'Pan de centeno crujiente estilo Gustaf\'s', 9, 5, '24 - paq. 500 g', '21.0000', 104, 0, 25, 0),
(23, 'Pan fino', 9, 5, '12 - paq. 250 g', '9.0000', 61, 0, 25, 0),
(24, 'Refresco Guaraná Fantástica', 10, 1, '12 - latas 355 ml', '4.5000', 20, 0, 0, -1),
(25, 'Crema de chocolate y nueces NuNuCa', 11, 3, '20 - vasos  450 g', '14.0000', 76, 0, 30, 0),
(26, 'Ositos de goma Gumbär', 11, 3, '100 - bolsas 250 g', '31.2300', 15, 0, 0, 0),
(27, 'Chocolate Schoggi', 11, 3, '100 - piezas 100 g', '43.9000', 49, 0, 30, 0),
(28, 'Col fermentada Rössle', 12, 7, '25 - latas 825 g', '45.6000', 26, 0, 0, -1),
(29, 'Salchicha Thüringer', 12, 6, '50 bolsas x 30 salch', '123.7900', 0, 0, 0, -1),
(31, 'Queso gorgonzola Telino', 14, 4, '12 - paq. 100 g', '12.5000', 0, 70, 20, 0),
(32, 'Queso Mascarpone Fabioli', 14, 4, '24 - paq. 200 g', '32.0000', 9, 40, 25, 0),
(33, 'Queso de cabra', 15, 4, '500 g', '2.5000', 112, 0, 20, 0),
(42, 'Tallarines de Singapur', 20, 5, '32 - 1 kg paq.', '14.0000', 26, 0, 0, -1),
(43, 'Café de Malasia', 20, 1, '16 - latas 500 g', '46.0000', 17, 10, 25, 0),
(49, 'Regaliz', 23, 3, '24 - paq. 50 g', '20.0000', 10, 60, 15, 0),
(50, 'Chocolate blanco', 23, 3, '12 - barras 100 g', '16.2500', 65, 0, 30, 0),
(51, 'Manzanas secas Manjimup', 24, 7, '50 - paq. 300 g', '53.0000', 20, 0, 10, 0),
(53, 'Empanada de carne', 24, 6, '48 porc.', '32.8000', 0, 0, 0, -1),
(54, 'Empanada de cerdo', 25, 6, '16 tartas', '7.4500', 21, 0, 10, 0),
(55, 'Paté chino', 25, 6, '24 cajas x 2 tartas', '24.0000', 115, 0, 20, 0),
(56, 'Gnocchi de la abuela Alicia', 26, 5, '24 - paq. 250 g', '38.0000', 21, 10, 30, 0),
(57, 'Raviolis Angelo', 26, 5, '24 - paq. 250 g', '19.5000', 36, 0, 20, 0),
(59, 'Raclet de queso Courdavault', 28, 4, 'paq. 5 kg', '55.0000', 79, 0, 0, 0),
(60, 'Camembert Pierrot', 28, 4, '15 - paq. 300 g', '34.0000', 19, 0, 0, 0),
(63, 'Sandwich de vegetales', 7, 2, '15 - frascos 625 g', '43.9000', 24, 0, 5, 0),
(64, 'Bollos de pan de Wimmer', 12, 5, '20 bolsas x 4 porc.', '33.2500', 22, 80, 30, 0),
(66, 'Especias picantes de Luisiana', 2, 2, '24 - frascos 8 l', '17.0000', 4, 100, 20, 0),
(69, 'Queso Gudbrandsdals', 15, 4, 'paq. 10 kg', '36.0000', 26, 0, 15, 0),
(70, 'Cerveza Outback', 7, 1, '24 - bot. 355 ml', '15.0000', 15, 10, 30, 0),
(71, 'Crema de queso Fløtemys', 15, 4, '10 - paq. 500 g', '21.5000', 26, 0, 0, 0),
(72, 'Queso Mozzarella Giovanni', 14, 4, '24 - paq. 200 g', '34.8000', 14, 0, 0, 0),
(75, 'Cerveza Klosterbier Rhönbräu', 12, 1, '24 - bot. 0,5 l', '7.7500', 125, 0, 25, 0),
(76, 'Licor Cloudberry', 23, 1, '500 ml', '18.0000', 57, 0, 20, 0),
(77, 'Salsa verde original Frankfurter', 12, 2, '12 cajas', '13.0000', 32, 0, 15, 0),
(85, 'sake japones', 6, 1, NULL, NULL, NULL, NULL, NULL, 0),
(86, 'Coca Cola', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(88, 'Coca Cola1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(90, 'Coca Cola61', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0),
(91, 'Coca Cola631', NULL, NULL, NULL, NULL, 234, NULL, NULL, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores`
--

CREATE TABLE `proveedores` (
  `id` int NOT NULL,
  `empresa` varchar(40) NOT NULL,
  `contacto` varchar(30) DEFAULT NULL,
  `cargo_contacto` varchar(30) DEFAULT NULL,
  `direccion` varchar(60) DEFAULT NULL,
  `ciudad` varchar(15) DEFAULT NULL,
  `region` varchar(15) DEFAULT NULL,
  `cp` varchar(10) DEFAULT NULL,
  `pais` varchar(15) DEFAULT NULL,
  `telefono` varchar(24) DEFAULT NULL,
  `fax` varchar(24) DEFAULT NULL,
  `web` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `proveedores`
--

INSERT INTO `proveedores` (`id`, `empresa`, `contacto`, `cargo_contacto`, `direccion`, `ciudad`, `region`, `cp`, `pais`, `telefono`, `fax`, `web`) VALUES
(1, 'Exotic Liquids', 'Charlotte Cooper', 'Gerente de compras', '49 Gilbert St.', 'Londres', NULL, 'EC1 4SD', 'Reino Unido', '(171) 555-2222', NULL, NULL),
(2, 'New Orleans Cajun Delights', 'Shelley Burke', 'Administrador de pedidos', 'P.O. Box 78934', 'New Orleans', 'LA', '70117', 'Estados Unidos', '(100) 555-4822', NULL, NULL),
(3, 'Grandma Kelly\'s Homestead', 'Regina Murphy', 'Representante de ventas', '707 Oxford Rd.', 'Ann Arbor', 'MI', '48104', 'Estados Unidos', '(313) 555-5735', '(313) 555-3349', NULL),
(4, 'Tokyo Traders', 'Yoshi Nagase', 'Gerente de marketing', '9-8 Sekimai\r\nMusashino-shi', 'Tokyo', NULL, '100', 'Japón', '(03) 3555-5011', NULL, NULL),
(5, 'Cooperativa de Quesos \'Las Cabras\'', 'Antonio del Valle Saavedra ', 'Administrador de exportaciones', 'Calle del Rosal 4', 'Oviedo', 'Asturias', '33007', 'España', '(98) 598 76 54', NULL, NULL),
(6, 'Mayumi\'s', 'Mayumi Ohno', 'Representante de marketing', '92 Setsuko\r\nChuo-ku', 'Osaka', NULL, '545', 'Japón', '(06) 431-7877', NULL, NULL),
(7, 'Pavlova, Ltd.', 'Ian Devling', 'Gerente de marketing', '74 Rose St.\r\nMoonie Ponds', 'Melbourne', 'Victoria', '3058', 'Australia', '(03) 444-2343', '(03) 444-6588', NULL),
(8, 'Specialty Biscuits, Ltd.', 'Peter Wilson', 'Representante de ventas', '29 King\'s Way', 'Manchester', NULL, 'M14 GSD', 'Reino Unido', '(161) 555-4448', NULL, NULL),
(9, 'PB Knäckebröd AB', 'Lars Peterson', 'Agente de ventas', 'Kaloadagatan 13', 'Göteborg', NULL, 'S-345 67', 'Suecia', '031-987 65 43', '031-987 65 91', NULL),
(10, 'Refrescos Americanas LTDA', 'Carlos Diaz', 'Gerente de marketing', 'Av. das Americanas 12.890', 'São Paulo', NULL, '5442', 'Brasil', '(11) 555 4640', NULL, NULL),
(11, 'Heli Süßwaren GmbH & Co. KG', 'Petra Winkler', 'Gerente de ventas', 'Tiergartenstraße 5', 'Berlín', NULL, '10785', 'Alemania', '(010) 9984510', NULL, NULL),
(12, 'Plutzer Lebensmittelgroßmärkte AG', 'Martin Bein', 'Ger. marketing internacional', 'Bogenallee 51', 'Frankfurt', NULL, '60439', 'Alemania', '(069) 992755', NULL, NULL),
(13, 'Nord-Ost-Fisch Handelsgesellschaft mbH', 'Sven Petersen', 'Coordinador de mercados', 'Frahmredder 112a', 'Cuxhaven', NULL, '27478', 'Alemania', '(04721) 8713', '(04721) 8714', NULL),
(14, 'Formaggi Fortini s.r.l.', 'Elio Rossi', 'Representante de ventas', 'Viale Dante, 75', 'Ravenna', NULL, '48100', 'Italia', '(0544) 60323', '(0544) 60603', NULL),
(15, 'Norske Meierier', 'Beate Vileid', 'Gerente de marketing', 'Hatlevegen 5', 'Sandvika', NULL, '1320', 'Noruega', '(0)2-953010', NULL, NULL),
(16, 'Bigfoot Breweries', 'Cheryl Saylor', 'Repr. de cuentas regional', '3400 - 8th Avenue\r\nSuite 210', 'Bend', 'OR', '97101', 'Estados Unidos', '(503) 555-9931', NULL, NULL),
(17, 'Svensk Sjöföda AB', 'Michael Björn', 'Representante de ventas', 'Brovallavägen 231', 'Stockholm', NULL, 'S-123 45', 'Suecia', '08-123 45 67', NULL, NULL),
(18, 'Aux joyeux ecclésiastiques', 'Guylène Nodier', 'Gerente de ventas', '203, Rue des Francs-Bourgeois', 'París', NULL, '75004', 'Francia', '(1) 03.83.00.68', '(1) 03.83.00.62', NULL),
(19, 'New England Seafood Cannery', 'Robb Merchant', 'Agente de cuentas al por mayor', 'Order Processing Dept.\r\n2100 Paul Revere Blvd.', 'Boston', 'MA', '02134', 'Estados Unidos', '(617) 555-3267', '(617) 555-3389', NULL),
(20, 'Leka Trading', 'Chandra Leka', 'Propietario', '471 Serangoon Loop, Suite #402', 'Singapore', NULL, '0512', 'Singapur', '555-8787', NULL, NULL),
(21, 'Lyngbysild', 'Niels Petersen', 'Gerente de ventas', 'Lyngbysild\r\nFiskebakken 10', 'Lyngby', NULL, '2800', 'Dinamarca', '43844108', '43844115', NULL),
(22, 'Zaanse Snoepfabriek', 'Dirk Luchte', 'Gerente de contabilidad', 'Verkoop\r\nRijnweg 22', 'Zaandam', NULL, '9999 ZZ', 'Holanda', '(12345) 1212', '(12345) 1210', NULL),
(23, 'Karkki Oy', 'Anne Heikkonen', 'Gerente de producción', 'Valtakatu 12', 'Lappeenranta', NULL, '53120', 'Finlandia', '(953) 10956', NULL, NULL),
(24, 'G\'day, Mate', 'Wendy Mackenzie', 'Representante de ventas', '170 Prince Edward Parade\r\nHunter\'s Hill', 'Sydney', 'NSW', '2042', 'Australia', '(02) 555-5914', '(02) 555-4873', NULL),
(25, 'Ma Maison', 'Jean-Guy Lauzon', 'Gerente de marketing', '2960 Rue St. Laurent', 'Montréal', 'Québec', 'H1J 1C3', 'Canadá', '(514) 555-9022', NULL, NULL),
(26, 'Pasta Buttini s.r.l.', 'Giovanni Giudici', 'Administrador de pedidos', 'Via dei Gelsomini, 153', 'Salerno', NULL, '84100', 'Italia', '(089) 6547665', '(089) 6547667', NULL),
(27, 'Escargots Nouveaux', 'Marie Delamare', 'Gerente de ventas', '22, rue H. Voiron', 'Montceau', NULL, '71300', 'Francia', '85.57.00.07', NULL, NULL),
(28, 'Gai pâturage', 'Eliane Noz', 'Representante de ventas', 'Bat. B\r\n3, rue des Alpes', 'Annecy', NULL, '74000', 'Francia', '38.76.98.06', '38.76.98.58', NULL),
(29, 'Forêts d\'érables', 'Chantal Goulet', 'Gerente de contabilidad', '148 rue Chasseur', 'Ste-Hyacinthe', 'Québec', 'J2S 7S8', 'Canadá', '(514) 555-2955', '(514) 555-2921', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'writer', 'web', '2018-11-21 12:06:00', '2018-11-21 12:06:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` int UNSIGNED NOT NULL,
  `role_id` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(3, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 'mario', 'nuwanda555@gmail.com', 'users/default.png', NULL, '$2y$10$5XHcqD4tBGXN2uZk5uzCM.vcdsBIDOLtlRBCFPB8eJ5g/Ta7uCVfO', NULL, NULL, '2018-11-06 13:54:08', '2018-11-06 13:54:08'),
(2, 'pepe', 'pepe@gmail.com', 'users/default.png', NULL, '$2y$10$5XHcqD4tBGXN2uZk5uzCM.vcdsBIDOLtlRBCFPB8eJ5g/Ta7uCVfO', NULL, NULL, '2018-11-06 13:54:08', '2018-11-06 13:54:08');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `amigos`
--
ALTER TABLE `amigos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_categoria` (`categoria`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_cliente1` (`codigo`),
  ADD UNIQUE KEY `uq_cliente2` (`empresa`);

--
-- Indices de la tabla `detalles`
--
ALTER TABLE `detalles`
  ADD PRIMARY KEY (`pedido_id`,`producto_id`),
  ADD KEY `fk_producto` (`producto_id`);

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_jefe` (`jefe_id`);

--
-- Indices de la tabla `envios`
--
ALTER TABLE `envios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_envio` (`empresa`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indices de la tabla `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_cliente` (`cliente_id`),
  ADD KEY `fk_empleado` (`empleado_id`),
  ADD KEY `fk_envio` (`envio_id`);

--
-- Indices de la tabla `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_producto` (`producto`),
  ADD KEY `fk_categoria` (`categoria_id`),
  ADD KEY `fk_proveedor` (`proveedor_id`);

--
-- Indices de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_proveedor` (`empresa`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `amigos`
--
ALTER TABLE `amigos`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT de la tabla `empleados`
--
ALTER TABLE `empleados`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `envios`
--
ALTER TABLE `envios`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11074;

--
-- AUTO_INCREMENT de la tabla `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detalles`
--
ALTER TABLE `detalles`
  ADD CONSTRAINT `fk_pedido` FOREIGN KEY (`pedido_id`) REFERENCES `pedidos` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `empleados`
--
ALTER TABLE `empleados`
  ADD CONSTRAINT `fk_jefe` FOREIGN KEY (`jefe_id`) REFERENCES `empleados` (`id`);

--
-- Filtros para la tabla `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD CONSTRAINT `fk_cliente` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_empleado` FOREIGN KEY (`empleado_id`) REFERENCES `empleados` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_envio` FOREIGN KEY (`envio_id`) REFERENCES `envios` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `fk_categoria` FOREIGN KEY (`categoria_id`) REFERENCES `categorias` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_proveedor` FOREIGN KEY (`proveedor_id`) REFERENCES `proveedores` (`id`);

--
-- Filtros para la tabla `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
