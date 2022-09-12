-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-09-2022 a las 16:10:34
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `mi_base`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `afiliacion`
--

CREATE TABLE `afiliacion` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `afiliacion`
--

INSERT INTO `afiliacion` (`id`, `nombre`) VALUES
(13, ' '),
(1, 'Alianza Rebelde'),
(2, 'Alianza Separatista'),
(6, 'Antigua Republica'),
(15, 'Colectivo Sombra'),
(12, 'Gremio de Cazarrecompensas'),
(16, 'Guardian de los Whills'),
(3, 'Imperio Galactico'),
(4, 'Imperio Sith'),
(7, 'Mandaloriano'),
(14, 'Orden Jedi'),
(8, 'Primera Orden'),
(5, 'Republica Galactica'),
(9, 'Resistencia'),
(10, 'Sindicato Hutt'),
(11, 'Sindicato Pyke');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `arma`
--

CREATE TABLE `arma` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `arma`
--

INSERT INTO `arma` (`id`, `nombre`) VALUES
(26, ' '),
(16, 'A-180'),
(17, 'A-280'),
(20, 'Ballesta Wookie'),
(22, 'Blaster Defensor'),
(36, 'Blurrg'),
(38, 'CR-2'),
(2, 'DC-15'),
(8, 'DC-15A'),
(9, 'DC-17'),
(47, 'DC-17M'),
(18, 'DH-17'),
(7, 'DL-44'),
(14, 'DLT-19'),
(15, 'DLT-19X'),
(33, 'DX-13'),
(12, 'E-11'),
(13, 'E-11D'),
(11, 'EE-3'),
(39, 'EL-16'),
(23, 'ELG-3A'),
(5, 'Espada Laser (Amarilla)'),
(3, 'Espada Laser (Azul)'),
(32, 'Espada Laser (Blanca)'),
(4, 'Espada Laser (Morada)'),
(6, 'Espada Laser (Roja)'),
(1, 'Espada Laser (Verde)'),
(31, 'Fusil Cycler'),
(45, 'Fusil Francotirador'),
(40, 'FWMB-10K'),
(25, 'IB-94'),
(43, 'IQA-11'),
(34, 'Lanza'),
(46, 'LL-30'),
(29, 'No Usa'),
(10, 'Relby-v10'),
(35, 'S-5'),
(19, 'SE-14C'),
(37, 'SE-44c'),
(21, 'T-21'),
(28, 'Taser'),
(41, 'TL-50'),
(42, 'Valken-38X'),
(24, 'Westar-34'),
(30, 'Westar-35'),
(44, 'X-8');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `especie`
--

CREATE TABLE `especie` (
  `id` int(11) NOT NULL,
  `nombre` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `especie`
--

INSERT INTO `especie` (`id`, `nombre`) VALUES
(35, ''),
(36, 'Aqualish'),
(54, 'Besalisko'),
(10, 'Bith'),
(44, 'Cereano'),
(51, 'Chagriano'),
(49, 'Clawdite'),
(2, 'Clon'),
(55, 'Cosiano'),
(33, 'Desconocida'),
(39, 'Droide'),
(25, 'Dug'),
(24, 'Duros'),
(9, 'Ewok'),
(11, 'Geonosiano'),
(27, 'Gotal'),
(26, 'Gran'),
(12, 'Gungan'),
(1, 'Humano'),
(14, 'Hutt'),
(28, 'Iktotchi'),
(13, 'Ithoriano'),
(15, 'Jawa'),
(40, 'Kaleesh'),
(3, 'Kaminiano'),
(16, 'Kel Dor'),
(56, 'Kiffar'),
(42, 'Lannik'),
(58, 'Mikkiana'),
(50, 'Mirialana'),
(5, 'Mon Calamari'),
(4, 'Nautolano'),
(8, 'Neimodiano'),
(29, 'Nikto'),
(57, 'Ongree'),
(46, 'Palliduvano'),
(38, 'Pauano'),
(18, 'Quarren'),
(43, 'Quermiano'),
(30, 'Rodiano'),
(19, 'Sullustano'),
(41, 'Thisspiasiano'),
(48, 'Tholothiano'),
(59, 'Tognath'),
(45, 'Togruta'),
(31, 'Toydariano'),
(7, 'Trandoshano'),
(47, 'Troig'),
(17, 'Tusken'),
(32, 'Twilek'),
(21, 'Ugnaught'),
(52, 'Umbarano'),
(20, 'Vurk'),
(22, 'Weequay'),
(6, 'Wookie'),
(23, 'Zabrak');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `login`
--

CREATE TABLE `login` (
  `usuario` varchar(50) NOT NULL,
  `contraseña` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `login`
--

INSERT INTO `login` (`usuario`, `contraseña`) VALUES
('david', 'lozano');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nave`
--

CREATE TABLE `nave` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `nave`
--

INSERT INTO `nave` (`id`, `nombre`) VALUES
(16, ' '),
(14, ' No Tiene'),
(25, 'Acorazado Separatista'),
(7, 'Ala-A'),
(1, 'Ala-X'),
(6, 'Ala-Y'),
(5, 'Bombardero TIE'),
(30, 'Caza estelar Belbullab-22'),
(27, 'Caza Estelar Geonosiano'),
(21, 'Caza Guantelete'),
(18, 'Caza Jedi Delta-7'),
(33, 'Caza N-1'),
(3, 'Caza TIE'),
(19, 'Cimitarra'),
(31, 'Deslizador Terrestre X-34'),
(11, 'Diente del Sabueso'),
(8, 'El Espiritu'),
(9, 'El Fantasma'),
(12, 'Esclavo 1'),
(2, 'Halcon Milenario'),
(32, 'Halo'),
(35, 'Hogar Uno'),
(17, 'Interceptor Jedi'),
(4, 'Interceptor TIE'),
(34, 'Justificador'),
(23, 'La Mano Invisible'),
(20, 'Lanzadera T-2c'),
(26, 'Malevolence'),
(29, 'Nave de Control de Droides'),
(22, 'Nubian 327'),
(36, 'Profundidad'),
(13, 'Razor Crest'),
(15, 'Tantive IV'),
(10, 'TIE Avanzado x1'),
(28, 'Velero Punworcca 116 '),
(24, 'Venator');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oficio`
--

CREATE TABLE `oficio` (
  `id` int(11) NOT NULL,
  `nombre` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `oficio`
--

INSERT INTO `oficio` (`id`, `nombre`) VALUES
(22, ' '),
(36, 'Almirante'),
(16, 'ARC'),
(44, 'Arquitecto'),
(24, 'Asistente'),
(23, 'Astromecanico'),
(31, 'Bandido'),
(21, 'Bruja'),
(2, 'Caballero Jedi'),
(42, 'Canciller Supremo'),
(9, 'Capitan'),
(7, 'Cazarrecompensas'),
(10, 'Comandante'),
(46, 'Comando'),
(17, 'Comerciante'),
(26, 'Conde'),
(35, 'Consejero'),
(8, 'Contrabandista'),
(45, 'Director'),
(5, 'Emperador'),
(13, 'Esclavo'),
(12, 'General'),
(40, 'Gobernador'),
(37, 'Gran Almirante'),
(39, 'Gran Moff'),
(14, 'Granjero'),
(18, 'Guardia Real'),
(19, 'Guardia Sentorial'),
(4, 'Inquisidor'),
(6, 'Lord Sith'),
(1, 'Maestro Jedi'),
(41, 'Ministro'),
(38, 'Moff'),
(3, 'Padawan'),
(20, 'Piloto'),
(43, 'Presentador'),
(32, 'Sargento'),
(11, 'Senador'),
(15, 'Soldado clon'),
(27, 'Soldado de Asalto'),
(29, 'Soldado de Costa'),
(28, 'Soldado de la Muerte'),
(30, 'Soldado de las Nieve'),
(33, 'Soldado Incinerador'),
(34, 'Soldado Jet'),
(25, 'Virrey');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personaje`
--

CREATE TABLE `personaje` (
  `id` int(11) NOT NULL,
  `nombre` varchar(20) DEFAULT NULL,
  `apellido` varchar(50) DEFAULT NULL,
  `afiliacion` varchar(50) DEFAULT NULL,
  `especie` varchar(50) DEFAULT NULL,
  `planeta_origen` varchar(50) DEFAULT NULL,
  `arma` varchar(50) DEFAULT NULL,
  `oficio` varchar(50) DEFAULT NULL,
  `nave` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `personaje`
--

INSERT INTO `personaje` (`id`, `nombre`, `apellido`, `afiliacion`, `especie`, `planeta_origen`, `arma`, `oficio`, `nave`) VALUES
(1, 'Luke', 'Skywalker', 'Alianza Rebelde', 'Humano', 'Polis Massa', 'Espada Laser (Verde)', 'Maestro Jedi', 'Ala-X'),
(2, 'Han', 'Solo', 'Alianza Rebelde', 'Humano', 'Corellia', 'DL-44', 'Contrabandista', 'Halcon Milenario'),
(3, 'Chewbacca', ' ', 'Alianza Rebelde', 'Wookie', 'Kashyyyk', 'Ballesta Wookie', 'Contrabandista', 'Halcon Milenario'),
(4, 'Leia', 'Organa', 'Alianza Rebelde', 'Humano', 'Polis Massa', 'Blaster Defensor', 'General', 'Tantive IV'),
(5, 'R2', 'D2', 'Alianza Rebelde', 'Droide', 'Naboo', 'Taser', 'Astromecanico', ' '),
(6, 'C3', 'PO', 'Alianza Rebelde', 'Droide', 'Tatooine', ' ', 'Astromecanico', ' '),
(8, 'Obi-Wan', 'Kenobi', 'Orden Jedi', 'Humano', 'Stewjon', 'Espada Laser (Azul)', 'Maestro Jedi', 'Caza Jedi Delta-7'),
(9, 'Yoda', ' ', 'Orden Jedi', 'Desconocida', ' Desconocido', 'Espada Laser (Verde)', 'Maestro Jedi', 'Interceptor Jedi'),
(10, 'Anakin', 'Skywalker', 'Orden Jedi', 'Humano', 'Tatooine', 'Espada Laser (Azul)', 'Caballero Jedi', 'Interceptor Jedi'),
(11, 'Boba', 'Fett', 'Gremio de Cazarrecompensas', 'Clon', 'Kamino', 'EE-3', 'Cazarrecompensas', 'Esclavo 1'),
(12, 'Darth', 'Maul', 'Colectivo Sombra', 'Zabrak', 'Dathomir', 'Espada Laser (Roja)', 'Lord Sith', 'Cimitarra'),
(14, 'Darth', 'Vader', 'Imperio Galactico', 'Humano', 'Tatooine', 'Espada Laser (Roja)', 'Lord Sith', 'TIE Avanzado x1'),
(15, 'Bossk ', 'Cradossk', 'Gremio de Cazarrecompensas', 'Trandoshano', 'Trandosha', 'Relby-v10', 'Cazarrecompensas', 'Diente del Sabueso'),
(17, 'Jango', 'Fett', 'Mandaloriano', 'Humano', 'Concord Dawn', 'Westar-34', 'Cazarrecompensas', 'Esclavo 1'),
(18, 'Fenn', 'Rau', 'Mandaloriano', 'Humano', 'Concord Dawn', 'Westar-35', 'Piloto', 'Caza Guantelete'),
(19, 'Qui-Gon', 'Jinn', 'Orden Jedi', 'Humano', 'Coruscant', 'Espada Laser (Verde)', 'Maestro Jedi', ' '),
(20, 'Padme', 'Amidala', 'Republica Galactica', 'Humano', 'Naboo', 'ELG-3A', 'Senador', 'Nubian 327'),
(21, 'Jar Jar', 'Binks', 'Republica Galactica', 'Gungan', 'Naboo', ' ', 'Senador', ' '),
(22, 'Darth', 'Sidius', 'Imperio Galactico', 'Humano', 'Naboo', 'Espada Laser (Roja)', 'Emperador', 'Lanzadera T-2c'),
(23, 'Darth', 'Tyranus', 'Alianza Separatista', 'Humano', 'Serenno', 'Espada Laser (Roja)', 'Conde', 'Velero Punworcca 116 '),
(24, 'Nute', 'Gunray', 'Alianza Separatista', 'Neimodiano', 'Cato Neimoidia', ' ', 'Virrey', 'Nave de Control de Droides'),
(25, 'Kit', 'Fisto', 'Orden Jedi', 'Nautolano', 'Glee Anselm', 'Espada Laser (Verde)', 'Maestro Jedi', 'Caza Jedi Delta-7'),
(26, 'Grievous', ' ', 'Alianza Separatista', 'Kaleesh', 'Kalee', 'Espada Laser (Azul)', 'General', 'Caza estelar Belbullab-22'),
(27, 'Nahdar', 'Vebb', 'Orden Jedi', 'Mon Calamari', 'Mon Cala', 'Espada Laser (Azul)', 'Caballero Jedi', 'Caza estelar Belbullab-22'),
(28, 'Plo ', 'Koon', 'Orden Jedi', 'Kel Dor', 'Dorin', 'Espada Laser (Azul)', 'Maestro Jedi', 'Caza Jedi Delta-7'),
(34, 'Watto', ' ', ' ', 'Toydariano', 'Toydaria', ' ', 'Comerciante', ' '),
(35, 'Shmi', 'Skywalker', ' ', 'Humano', 'Tatooine', ' ', 'Esclavo', ' '),
(36, 'Owen', 'Lars', ' ', 'Humano', 'Tatooine', 'Fusil Cycler', 'Granjero', 'Deslizador Terrestre X-34'),
(37, 'Beru', 'Lars', ' ', 'Humano', 'Tatooine', 'Fusil Cycler', 'Granjero', 'Deslizador Terrestre X-34'),
(38, 'Cliegg', 'Lars', ' ', 'Humano', 'Tatooine', 'Fusil Cycler', 'Granjero', ' '),
(39, 'Mace', 'Windu', 'Orden Jedi', 'Humano', ' Haruun Kal', 'Espada Laser (Morada)', 'Maestro Jedi', 'Caza Jedi Delta-7'),
(40, 'Yaddle', ' ', 'Orden Jedi', 'Desconocida', ' Desconocido', 'Espada Laser (Verde)', 'Maestro Jedi', ' '),
(41, 'Oppo', 'Rancisis', 'Orden Jedi', 'Thisspiasiano', 'Thisspias', 'Espada Laser (Verde)', 'Maestro Jedi', ' '),
(42, 'Saesee', 'Tiin', 'Orden Jedi', 'Iktotchi', 'Iktotch', 'Espada Laser (Verde)', 'Maestro Jedi', 'Caza Jedi Delta-7'),
(43, 'Even', 'Piell', 'Orden Jedi', 'Lannik', 'Lannik', 'Espada Laser (Verde)', 'Maestro Jedi', 'Caza Jedi Delta-7'),
(44, 'Yarael', 'Poof', 'Orden Jedi', 'Quermiano', ' Quermia', 'Espada Laser (Azul)', 'Maestro Jedi', ' '),
(45, 'Ki-Adi', 'Mundi', 'Orden Jedi', 'Cereano', 'Cerea', 'Espada Laser (Azul)', 'Maestro Jedi', ' '),
(46, 'Ahsoka', 'Tano', 'Orden Jedi', 'Togruta', 'Shili', 'Espada Laser (Blanca)', 'Padawan', 'Interceptor Jedi'),
(47, 'Caleb', 'Dume', 'Orden Jedi', 'Humano', 'Coruscant', 'Espada Laser (Azul)', 'Padawan', ' '),
(48, 'Kanan', 'Jarrus', 'Alianza Rebelde', 'Humano', 'Coruscant', 'Espada Laser (Azul)', 'Caballero Jedi', 'El Espiritu'),
(49, 'Aurra', 'Sing', 'Gremio de Cazarrecompensas', 'Palliduvano', 'Nar Shaddaa', 'DX-13', 'Cazarrecompensas', 'Esclavo 1'),
(50, 'Rugor', 'Nass', 'Republica Galactica', 'Gungan', 'Naboo', ' ', 'Gobernador', ' '),
(51, 'Lyonie', '', 'Republica Galactica', 'Gungan', 'Naboo', ' ', 'Gobernador', ' '),
(52, 'Roos', 'Tarpals', 'Republica Galactica', 'Gungan', 'Naboo', 'Lanza', 'Capitan', ' '),
(53, 'Peppi', 'Bow', 'Republica Galactica', 'Gungan', 'Naboo', 'Lanza', 'Granjero', ' '),
(54, 'Rish', 'Loo', 'Alianza Separatista', 'Gungan', 'Naboo', ' ', 'Ministro', ' '),
(55, 'Sebulba', ' ', ' ', 'Dug', 'Malastare', ' ', 'Piloto', ' '),
(56, 'Finis', 'Valorum', 'Republica Galactica', 'Humano', 'Coruscant', ' ', 'Canciller Supremo', ' '),
(57, 'Depa', 'Billaba', 'Orden Jedi', 'Humano', 'Chalacta', 'Espada Laser (Azul)', 'Maestro Jedi', 'Caza Jedi Delta-7'),
(58, 'Kitser', 'Chanchani', ' ', 'Humano', 'Tatooine', ' ', 'Esclavo', ' '),
(59, 'Quarsh', 'Panaka', 'Republica Galactica', 'Humano', 'Naboo', 'S-5', 'Guardia Real', ' '),
(60, 'Bib', 'Fortuna', 'Sindicato Hutt', 'Twilek', 'Ryloth', ' ', 'Asistente', ' '),
(61, 'Fodesinbeed', 'Annodue', 'Sindicato Hutt', 'Troig', 'Pollillus', ' ', 'Presentador', ' '),
(62, 'Adi', 'Gallia', 'Orden Jedi', 'Tholothiano', 'Coruscant', 'Espada Laser (Azul)', 'Maestro Jedi', 'Caza Jedi Delta-7'),
(63, 'Ric', 'Olie', 'Republica Galactica', 'Humano', 'Naboo', ' ', 'Piloto', 'Caza N-1'),
(64, 'Eeth', 'Koth', 'Orden Jedi', 'Zabrak', 'Iridonia', 'Espada Laser (Verde)', 'Maestro Jedi', 'Caza Jedi Delta-7'),
(65, 'Sio', 'Bibble', 'Republica Galactica', 'Humano', 'Naboo', ' ', 'Gobernador', ' '),
(66, 'TC', '14', 'Alianza Separatista', 'Droide', ' Desconocido', ' ', 'Asistente', ' '),
(67, 'Rune', 'Haako', 'Alianza Separatista', 'Neimodiano', 'Cato Neimoidia', ' ', 'Asistente', 'Nave de Control de Droides'),
(68, 'Dorme', ' ', 'Republica Galactica', 'Humano', 'Naboo', ' ', 'Asistente', ' '),
(69, 'Zam', 'Wesell', 'Gremio de Cazarrecompensas', 'Clawdite', 'Zolan', 'Fusil Francotirador', 'Cazarrecompensas', ' '),
(70, 'Barris', 'Offee', 'Orden Jedi', 'Mirialana', 'Mirial', 'Espada Laser (Azul)', 'Padawan', 'Caza Jedi Delta-7'),
(71, 'Bail', 'Organa', 'Republica Galactica', 'Humano', 'Alderaan', ' ', 'Senador', 'Tantive IV'),
(72, 'Shaak', 'Ti', 'Orden Jedi', 'Togruta', 'Shili', 'Espada Laser (Azul)', 'Maestro Jedi', 'Caza Jedi Delta-7'),
(73, 'Jocasta', 'Nu', 'Orden Jedi', 'Humano', 'Coruscant', 'Espada Laser (Azul)', 'Caballero Jedi', ' '),
(74, 'Aayla', 'Secura', 'Orden Jedi', 'Twilek', 'Ryloth', 'Espada Laser (Azul)', 'Caballero Jedi', 'Caza Jedi Delta-7'),
(75, 'Luminara', 'Unduli', 'Orden Jedi', 'Mirialana', 'Mirial', 'Espada Laser (Verde)', 'Caballero Jedi', 'Caza Jedi Delta-7'),
(76, 'Taun', 'We', 'Republica Galactica', 'Kaminiano', 'Kamino', ' ', 'Asistente', ' '),
(77, 'Lama', 'Su', 'Republica Galactica', 'Kaminiano', 'Kamino', ' ', 'Ministro', ' '),
(78, 'Poggle', 'El Menor', 'Alianza Separatista', 'Geonosiano', 'Geonosis', ' ', 'Gobernador', ' '),
(79, 'Gregar', 'Typho', 'Republica Galactica', 'Humano', 'Naboo', 'S-5', 'Guardia Real', 'Caza N-1'),
(80, 'Agen', 'Kolar', 'Orden Jedi', 'Zabrak', 'Iridonia', 'Espada Laser (Azul)', 'Caballero Jedi', 'Caza Jedi Delta-7'),
(81, 'Mass', 'Amedda', 'Imperio Galactico', 'Chagriano', 'Champala', ' ', 'Asistente', ' '),
(82, 'Sly', 'Moore', 'Imperio Galactico', 'Umbarano', 'Umbara', ' ', 'Asistente', ' '),
(83, 'Lott', 'Dod', 'Alianza Separatista', 'Neimodiano', 'Cato Neimoidia', ' ', 'Senador', ' '),
(84, 'Coleman', 'Trebor', 'Orden Jedi', 'Vurk', 'Sembla', 'Espada Laser (Verde)', 'Caballero Jedi', ' '),
(85, 'Dexter', 'Jettster', ' ', 'Besalisko', 'Ojom', ' ', 'Comerciante', ' '),
(86, 'Tera', 'Sinube', 'Orden Jedi', 'Cosiano', 'Cosia', 'Espada Laser (Blanca)', 'Maestro Jedi', ' '),
(87, 'Quinlan', 'Vos', 'Orden Jedi', 'Kiffar', 'Kiffu', 'Espada Laser (Verde)', 'Caballero Jedi', 'Caza Jedi Delta-7'),
(88, 'Coleman', 'Kcaj', 'Orden Jedi', 'Ongree', 'Skustell', 'Espada Laser (Azul)', 'Maestro Jedi', 'Interceptor Jedi'),
(89, 'Cere', 'Junda', 'Orden Jedi', 'Humano', 'Coruscant', 'Espada Laser (Verde)', 'Caballero Jedi', ' '),
(90, 'Cin', 'Drallig', 'Orden Jedi', 'Humano', 'Lavisar', 'Espada Laser (Verde)', 'Maestro Jedi', ' '),
(91, 'Sifo', 'Dyas', 'Orden Jedi', 'Humano', 'Minashee', 'Espada Laser (Azul)', 'Maestro Jedi', ' '),
(92, 'Tiplee', ' ', 'Orden Jedi', 'Mikkiana', 'Mikkia', 'Espada Laser (Azul)', 'Caballero Jedi', ' '),
(93, 'Tiplar', ' ', 'Orden Jedi', 'Mikkiana', 'Mikkia', 'Espada Laser (Verde)', 'Caballero Jedi', ' '),
(94, 'Cad', 'Bane', 'Gremio de Cazarrecompensas', 'Duros', 'Duro', 'LL-30', 'Cazarrecompensas', 'Justificador'),
(95, 'Shriv', 'Suurgav', 'Alianza Rebelde', 'Duros', 'Duro', 'A-280', 'Comandante', 'Ala-X'),
(96, 'Lando', 'Calrrissian', 'Alianza Rebelde', 'Humano', 'Socorro', 'X-8', 'Contrabandista', 'Halcon Milenario'),
(97, 'L3', '37', ' ', 'Droide', ' Desconocido', ' ', 'Contrabandista', 'Halcon Milenario'),
(98, 'Nien', 'Nunb', 'Alianza Rebelde', 'Sullustano', 'Sullust', 'DH-17', 'Piloto', 'Ala-X'),
(99, 'Gial', 'Ackbar', 'Alianza Rebelde', 'Mon Calamari', 'Mon Cala', 'DH-17', 'Almirante', 'Hogar Uno'),
(100, 'Raddus', ' ', 'Alianza Rebelde', 'Mon Calamari', 'Mon Cala', 'DH-17', 'Almirante', 'Profundidad');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `planeta_origen`
--

CREATE TABLE `planeta_origen` (
  `id` int(11) NOT NULL,
  `nombre` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `planeta_origen`
--

INSERT INTO `planeta_origen` (`id`, `nombre`) VALUES
(63, ' '),
(62, ' Desconocido'),
(58, ' Jabiim'),
(21, 'Ahch-To'),
(8, 'Alderaan'),
(99, 'Alsakan'),
(98, 'Aria Prime'),
(14, 'Bespin'),
(25, 'Canto Bight'),
(24, 'Cato Neimoidia'),
(74, 'Cerea'),
(75, 'Chalacta'),
(80, 'Champala'),
(26, 'Christophsis'),
(101, 'Commenor'),
(27, 'Concord Dawn'),
(9, 'Corellia'),
(2, 'Coruscant'),
(83, 'Cosia'),
(28, 'Crait'),
(19, 'Dagobah'),
(7, 'Dantooine'),
(30, 'Dathomir'),
(31, 'Devaron'),
(68, 'Dorin'),
(29, 'DQar'),
(89, 'Duro'),
(32, 'Eadu'),
(33, 'Endor'),
(34, 'Exegol'),
(35, 'Felucia'),
(91, 'Fest'),
(36, 'Florum'),
(18, 'Geonosis'),
(66, 'Glee Anselm'),
(95, 'Grange'),
(69, 'Haruun Kal'),
(17, 'Hoth'),
(72, 'Iktotch'),
(23, 'Illum'),
(37, 'Iridonia'),
(38, 'Jakku'),
(39, 'Jedha'),
(67, 'Kalee'),
(3, 'Kamino'),
(5, 'Kashyyyk'),
(40, 'Kessel'),
(84, 'Kiffu'),
(45, 'Korriban'),
(71, 'Lannik'),
(86, 'Lavisar'),
(94, 'Lexruk'),
(41, 'Lothal'),
(42, 'Malachor'),
(43, 'Malastare'),
(44, 'Mandalore'),
(88, 'Mikkia'),
(87, 'Minashee'),
(79, 'Mirial'),
(12, 'Mon Cala'),
(46, 'Mortis'),
(15, 'Mustafar'),
(47, 'Mygeeto'),
(10, 'Naboo'),
(20, 'Nal Hutta'),
(76, 'Nar Shaddaa'),
(82, 'Ojom'),
(48, 'Onderon'),
(49, 'Ord Mantell'),
(96, 'Pendarr III'),
(1, 'Polis Massa'),
(77, 'Pollillus'),
(73, 'Quermia'),
(50, 'Rishi'),
(13, 'Ryloth'),
(51, 'Scarif'),
(81, 'Sembla'),
(65, 'Serenno'),
(52, 'Shili'),
(85, 'Skustell'),
(90, 'Socorro'),
(64, 'Stewjon'),
(53, 'Sullust'),
(54, 'Takodana'),
(4, 'Tatooine'),
(70, 'Thisspias'),
(55, 'Toydaria'),
(6, 'Trandosha'),
(56, 'Umbara'),
(57, 'Utapau'),
(92, 'Vallt'),
(97, 'Virujansi'),
(100, 'Yar Togna'),
(16, 'Yavin IV'),
(78, 'Zolan');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `afiliacion`
--
ALTER TABLE `afiliacion`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nombre` (`nombre`);

--
-- Indices de la tabla `arma`
--
ALTER TABLE `arma`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nombre` (`nombre`);

--
-- Indices de la tabla `especie`
--
ALTER TABLE `especie`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nombre` (`nombre`);

--
-- Indices de la tabla `login`
--
ALTER TABLE `login`
  ADD UNIQUE KEY `usuario` (`usuario`);

--
-- Indices de la tabla `nave`
--
ALTER TABLE `nave`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nave` (`nombre`);

--
-- Indices de la tabla `oficio`
--
ALTER TABLE `oficio`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nombre` (`nombre`);

--
-- Indices de la tabla `personaje`
--
ALTER TABLE `personaje`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `planeta_origen`
--
ALTER TABLE `planeta_origen`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nombre` (`nombre`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `afiliacion`
--
ALTER TABLE `afiliacion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `arma`
--
ALTER TABLE `arma`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT de la tabla `especie`
--
ALTER TABLE `especie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT de la tabla `nave`
--
ALTER TABLE `nave`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT de la tabla `oficio`
--
ALTER TABLE `oficio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT de la tabla `personaje`
--
ALTER TABLE `personaje`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT de la tabla `planeta_origen`
--
ALTER TABLE `planeta_origen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
