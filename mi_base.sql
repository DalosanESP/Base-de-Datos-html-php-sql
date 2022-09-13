-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-09-2022 a las 16:01:54
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
(23, 'Banda de Hondo'),
(15, 'Colectivo Sombra'),
(21, 'Federacion de Sistemas Neutrales'),
(12, 'Gremio de Cazarrecompensas'),
(20, 'Guardia de la Muerte'),
(16, 'Guardian de los Whills'),
(18, 'Hermana de la noche'),
(19, 'Hermano de la noche'),
(3, 'Imperio Galactico'),
(4, 'Imperio Sith'),
(7, 'Mandaloriano'),
(17, 'Milicia'),
(14, 'Orden Jedi'),
(8, 'Primera Orden'),
(5, 'Republica Galactica'),
(9, 'Resistencia'),
(10, 'Sindicato Hutt'),
(11, 'Sindicato Pyke'),
(22, 'Sol Negro');

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
(48, 'Arco Laser'),
(20, 'Ballesta Wookie'),
(22, 'Blaster Defensor'),
(56, 'Blaster Pesado Mandaloriano'),
(36, 'Blurrg'),
(52, 'Brujeria'),
(50, 'Cañon Blaster Rotativo Z-6'),
(61, 'CC-420'),
(38, 'CR-2'),
(2, 'DC-15'),
(8, 'DC-15A'),
(9, 'DC-17'),
(47, 'DC-17M'),
(57, 'Desactivador Hold-Out'),
(18, 'DH-17'),
(7, 'DL-44'),
(14, 'DLT-19'),
(15, 'DLT-19X'),
(54, 'DT-12'),
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
(59, 'La Fuerza'),
(34, 'Lanza'),
(60, 'Latigo Laser'),
(46, 'LL-30'),
(29, 'No Usa'),
(53, 'Pistola Weequay'),
(10, 'Relby-v10'),
(62, 'Repetidor ACP'),
(49, 'Rifle Firepuncher 773'),
(51, 'Rifle Francotirador MK'),
(35, 'S-5'),
(55, 'Sable Oscuro'),
(19, 'SE-14C'),
(37, 'SE-44c'),
(21, 'T-21'),
(28, 'Taser'),
(41, 'TL-50'),
(42, 'Valken-38X'),
(24, 'Westar-34'),
(30, 'Westar-35'),
(58, 'Wetsar-STL'),
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
(63, 'Abyssin'),
(84, 'Anacondiano'),
(36, 'Aqualish'),
(68, 'Arcona'),
(65, 'Asogiano'),
(54, 'Besalisko'),
(10, 'Bith'),
(44, 'Cereano'),
(51, 'Chagriano'),
(49, 'Clawdite'),
(2, 'Clon'),
(83, 'Convor'),
(55, 'Cosiano'),
(60, 'Dathomiriana'),
(33, 'Desconocida'),
(39, 'Droide'),
(25, 'Dug'),
(24, 'Duros'),
(9, 'Ewok'),
(81, 'Faust'),
(67, 'Frenk'),
(11, 'Geonosiano'),
(27, 'Gotal'),
(26, 'Gran'),
(12, 'Gungan'),
(79, 'Harch'),
(1, 'Humano'),
(14, 'Hutt'),
(28, 'Iktotchi'),
(13, 'Ithoriano'),
(15, 'Jawa'),
(77, 'Kage'),
(40, 'Kaleesh'),
(3, 'Kaminiano'),
(78, 'Karkarodon'),
(16, 'Kel Dor'),
(86, 'Kerkoidano'),
(56, 'Kiffar'),
(61, 'Kyuzo'),
(42, 'Lannik'),
(80, 'Lurmen'),
(58, 'Mikkiana'),
(50, 'Mirialana'),
(5, 'Mon Calamari'),
(4, 'Nautolano'),
(8, 'Neimodiano'),
(29, 'Nikto'),
(57, 'Ongree'),
(46, 'Palliduvano'),
(64, 'Pantorano'),
(66, 'Parwan'),
(72, 'Patroliano'),
(38, 'Pauano'),
(70, 'Phindiano'),
(73, 'Pyke'),
(18, 'Quarren'),
(43, 'Quermiano'),
(30, 'Rodiano'),
(85, 'Roonan'),
(71, 'Selkath'),
(69, 'Skrilling'),
(76, 'Ssori'),
(19, 'Sullustano'),
(82, 'Talz'),
(75, 'Theelin'),
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
(23, 'Zabrak'),
(74, 'Zilkiniano'),
(62, 'Zygerriano');

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
(57, 'Acushnet'),
(7, 'Ala-A'),
(50, 'Ala-B'),
(55, 'Ala-U'),
(43, 'Ala-V'),
(1, 'Ala-X'),
(6, 'Ala-Y'),
(62, 'Angel Plateado'),
(40, 'ARC-170'),
(5, 'Bombardero TIE'),
(39, 'Cañonera LAAT'),
(42, 'Caza Clon Z-95'),
(30, 'Caza estelar Belbullab-22'),
(27, 'Caza Estelar Geonosiano'),
(56, 'Caza Estelar Ginivex'),
(18, 'Caza Jedi Delta-7'),
(33, 'Caza N-1'),
(3, 'Caza TIE'),
(38, 'Caza V-19 Torrente'),
(19, 'Cimitarra'),
(52, 'Corbeta Cabezamartillo'),
(41, 'Corbeta Furtiva IPV-2C'),
(46, 'Corvus'),
(54, 'Crucero Gozanti'),
(53, 'Crucero Ligero Arquitens'),
(48, 'Defensor TIE'),
(31, 'Deslizador Terrestre X-34'),
(44, 'Destructor Estelar Imperial'),
(51, 'Destructor Estelar Interdictor'),
(24, 'Destructor Estelar Venator'),
(11, 'Diente del Sabueso'),
(58, 'El Coronet'),
(8, 'El Espiritu'),
(9, 'El Fantasma'),
(12, 'Esclavo 1'),
(61, 'Garra del Buitre'),
(21, 'Guantelete Mandaloriano'),
(2, 'Halcon Milenario'),
(32, 'Halo'),
(37, 'Havoc Marauder'),
(35, 'Hogar Uno'),
(17, 'Interceptor Jedi'),
(4, 'Interceptor TIE'),
(34, 'Justificador'),
(23, 'La Mano Invisible'),
(20, 'Lanzadera T-2c'),
(47, 'Lanzadera T-4 Lambda'),
(26, 'Malevolence'),
(29, 'Nave de Control de Droides'),
(22, 'Nubian 327'),
(36, 'Profundidad'),
(60, 'Punishing One'),
(13, 'Razor Crest'),
(59, 'Shadow Caster'),
(45, 'Superdestructor Estelar Ejecutor'),
(15, 'Tantive IV'),
(10, 'TIE Avanzado x1'),
(49, 'TIE Striker'),
(28, 'Velero Punworcca 116 ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oficio`
--

CREATE TABLE `oficio` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `oficio`
--

INSERT INTO `oficio` (`id`, `nombre`) VALUES
(22, ' '),
(36, 'Almirante'),
(16, 'ARC'),
(44, 'Arquitecto'),
(66, 'Artillero'),
(59, 'Artista'),
(51, 'Asesino'),
(24, 'Asistente'),
(23, 'Astromecanico'),
(31, 'Bandido'),
(21, 'Bruja'),
(2, 'Caballero Jedi'),
(42, 'Canciller Supremo'),
(9, 'Capitan'),
(68, 'Cazador'),
(7, 'Cazarrecompensas'),
(69, 'Chatarrero'),
(10, 'Comandante'),
(46, 'Comando'),
(17, 'Comerciante'),
(26, 'Conde'),
(35, 'Consejero'),
(8, 'Contrabandista'),
(67, 'Coronel'),
(72, 'Criminal'),
(45, 'Director'),
(53, 'Doctor'),
(55, 'Duquesa'),
(5, 'Emperador'),
(61, 'Esclavista'),
(13, 'Esclavo'),
(60, 'Espia'),
(12, 'General'),
(40, 'Gobernador'),
(37, 'Gran Almirante'),
(39, 'Gran Moff'),
(14, 'Granjero'),
(18, 'Guardia Real'),
(19, 'Guardia Sentorial'),
(65, 'Guerrero'),
(54, 'Guerrero Mandaloriano'),
(57, 'Herrero'),
(4, 'Inquisidor'),
(64, 'Inspector'),
(56, 'Instructor'),
(50, 'Lider Criminal'),
(6, 'Lord Sith'),
(1, 'Maestro Jedi'),
(62, 'Mecanico'),
(41, 'Ministro'),
(38, 'Moff'),
(3, 'Padawan'),
(20, 'Piloto'),
(52, 'Pirata'),
(43, 'Presentador'),
(63, 'Princesa'),
(70, 'Principe'),
(32, 'Sargento'),
(11, 'Senador'),
(71, 'Soldado ARF'),
(15, 'Soldado clon'),
(27, 'Soldado de Asalto'),
(29, 'Soldado de Costa'),
(28, 'Soldado de la Muerte'),
(47, 'Soldado de la Purga'),
(30, 'Soldado de las Nieve'),
(33, 'Soldado Incinerador'),
(34, 'Soldado Jet'),
(58, 'Supercomando Imperial'),
(49, 'Terrorista'),
(48, 'Vice Almirante'),
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
(18, 'Fenn', 'Rau', 'Mandaloriano', 'Humano', 'Concord Dawn', 'Westar-35', 'Piloto', 'Guantelete Mandaloriano'),
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
(100, 'Raddus', ' ', 'Alianza Rebelde', 'Mon Calamari', 'Mon Cala', 'DH-17', 'Almirante', 'Profundidad'),
(101, 'Rex', ' ', 'Republica Galactica', 'Clon', 'Kamino', 'DC-17', 'Capitan', 'Ala-Y'),
(102, 'Keeli', ' ', 'Republica Galactica', 'Clon', 'Kamino', 'DC-17', 'Capitan', ' '),
(103, 'Fordo', ' ', 'Republica Galactica', 'Clon', 'Kamino', 'DC-17', 'Capitan', ' '),
(104, 'Vaughn', ' ', 'Republica Galactica', 'Clon', 'Kamino', 'DC-15A', 'Capitan', ' '),
(105, 'Howzer', ' ', 'Republica Galactica', 'Clon', 'Kamino', 'DC-15', 'Capitan', ' '),
(106, 'Jesse', ' ', 'Republica Galactica', 'Clon', 'Kamino', 'DC-17', 'ARC', ' '),
(107, 'Echo', ' ', 'Republica Galactica', 'Clon', 'Kamino', 'DC-17', 'ARC', 'Havoc Marauder'),
(108, 'Cincos', ' ', 'Republica Galactica', 'Clon', 'Kamino', 'DC-17', 'ARC', ' '),
(109, 'Blitz', ' ', 'Republica Galactica', 'Clon', 'Kamino', 'DC-17', 'ARC', ' '),
(110, 'Hammer', ' ', 'Republica Galactica', 'Clon', 'Kamino', 'DC-17', 'ARC', ' '),
(111, 'Havoc', ' ', 'Republica Galactica', 'Clon', 'Kamino', 'DC-17', 'ARC', ' '),
(112, 'Doom', ' ', 'Republica Galactica', 'Clon', 'Kamino', 'DC-17', 'Comandante', ' '),
(113, 'Wolf', ' ', 'Republica Galactica', 'Clon', 'Kamino', 'DC-17', 'Comandante', ' '),
(114, 'Stone', ' ', 'Republica Galactica', 'Clon', 'Kamino', 'DC-17', 'Comandante', ' '),
(115, 'Gregor', ' ', 'Republica Galactica', 'Clon', 'Kamino', 'DC-17M', 'Comando', ' '),
(116, 'Boss', ' ', 'Republica Galactica', 'Clon', 'Kamino', 'DC-17M', 'Comando', ' '),
(117, 'Sev', ' ', 'Republica Galactica', 'Clon', 'Kamino', 'DC-17M', 'Comando', ' '),
(118, 'Scorch', ' ', 'Republica Galactica', 'Clon', 'Kamino', 'DC-17M', 'Comando', ' '),
(119, 'Fixer', ' ', 'Republica Galactica', 'Clon', 'Kamino', 'DC-17M', 'Comando', ' '),
(120, 'Hunter', ' ', 'Republica Galactica', 'Clon', 'Kamino', 'DC-17', 'Sargento', 'Havoc Marauder'),
(121, 'Tech', ' ', 'Republica Galactica', 'Clon', 'Kamino', 'DC-17', 'Comando', 'Havoc Marauder'),
(122, 'Wrecker', ' ', 'Republica Galactica', 'Clon', 'Kamino', 'DC-17M', 'Comando', 'Havoc Marauder'),
(123, 'Omega', ' ', 'Republica Galactica', 'Clon', 'Kamino', 'Arco Laser', ' ', 'Havoc Marauder'),
(124, 'Crosshair', ' ', 'Imperio Galactico', 'Clon', 'Kamino', 'Rifle Firepuncher 773', 'Comandante', ' '),
(125, 'Ponds', ' ', 'Republica Galactica', 'Clon', 'Kamino', 'DC-15A', 'Comandante', ' '),
(126, 'Bly', ' ', 'Republica Galactica', 'Clon', 'Kamino', 'DC-15A', 'Comandante', ' '),
(127, 'Thire', ' ', 'Republica Galactica', 'Clon', 'Kamino', 'DC-15A', 'Comandante', ' '),
(128, 'Fox', ' ', 'Republica Galactica', 'Clon', 'Kamino', 'DC-15A', 'Comandante', ' '),
(129, 'Neyo', ' ', 'Republica Galactica', 'Clon', 'Kamino', 'DC-17', 'Comandante', ' '),
(130, 'Bacara', ' ', 'Republica Galactica', 'Clon', 'Kamino', 'DC-15', 'Comandante', ' '),
(131, 'Cody', ' ', 'Republica Galactica', 'Clon', 'Kamino', 'DC-15', 'Comandante', ' '),
(132, 'Gree', ' ', 'Republica Galactica', 'Clon', 'Kamino', 'DC-15', 'Comandante', ' '),
(133, 'Trauma', ' ', 'Republica Galactica', 'Clon', 'Kamino', 'DC-15', 'Comandante', ' '),
(134, 'Appo', ' ', 'Republica Galactica', 'Clon', 'Kamino', 'DC-15', 'Sargento', ' '),
(135, 'Keller', ' ', 'Republica Galactica', 'Clon', 'Kamino', 'DC-15', 'Comandante', ' '),
(136, 'Heavy', ' ', 'Republica Galactica', 'Clon', 'Kamino', 'Cañon Blaster Rotativo Z-6', 'Soldado clon', ' '),
(137, 'Thorn', ' ', 'Republica Galactica', 'Clon', 'Kamino', 'Cañon Blaster Rotativo Z-6', 'Comandante', ' '),
(138, 'Hardcase', ' ', 'Republica Galactica', 'Clon', 'Kamino', 'Cañon Blaster Rotativo Z-6', 'Soldado clon', ' '),
(139, 'Kix', ' ', 'Republica Galactica', 'Clon', 'Kamino', 'DC-15', 'Soldado clon', ' '),
(140, 'Tup', ' ', 'Republica Galactica', 'Clon', 'Kamino', 'DC-15', 'Soldado clon', ' '),
(141, 'Kano', ' ', 'Republica Galactica', 'Clon', 'Kamino', 'DC-15A', 'Sargento', ' '),
(142, 'Denal', ' ', 'Republica Galactica', 'Clon', 'Kamino', 'DC-15', 'Soldado clon', ' '),
(143, 'Redeye', ' ', 'Republica Galactica', 'Clon', 'Kamino', 'DC-15', 'Soldado clon', ' '),
(144, 'Boil', ' ', 'Republica Galactica', 'Clon', 'Kamino', 'DC-15', 'Soldado clon', ' '),
(145, 'Waxer', ' ', 'Republica Galactica', 'Clon', 'Kamino', 'DC-15', 'Soldado clon', ' '),
(146, 'Crys', ' ', 'Republica Galactica', 'Clon', 'Kamino', 'DC-15', 'Soldado clon', ' '),
(147, '99', ' ', 'Republica Galactica', 'Clon', 'Kamino', ' ', 'Asistente', ' '),
(148, 'Sinker', ' ', 'Republica Galactica', 'Clon', 'Kamino', 'DC-15', 'Soldado clon', ' '),
(149, 'Comet', ' ', 'Republica Galactica', 'Clon', 'Kamino', 'DC-15', 'Soldado clon', ' '),
(150, 'Boost', ' ', 'Republica Galactica', 'Clon', 'Kamino', 'DC-15', 'Soldado clon', ' '),
(151, 'Alpha', ' 17', 'Republica Galactica', 'Clon', 'Kamino', 'DC-17', 'ARC', ' '),
(152, 'Axe', ' ', 'Republica Galactica', 'Clon', 'Kamino', ' ', 'Piloto', 'Caza V-19 Torrente'),
(153, 'Hawk', ' ', 'Republica Galactica', 'Clon', 'Kamino', ' ', 'Piloto', 'Cañonera LAAT'),
(154, 'Odd', 'Ball', 'Republica Galactica', 'Clon', 'Kamino', ' ', 'Piloto', 'ARC-170'),
(155, 'Blackout', ' ', 'Republica Galactica', 'Clon', 'Kamino', ' ', 'Piloto', 'Corbeta Furtiva IPV-2C'),
(156, 'Boomer', ' ', 'Republica Galactica', 'Clon', 'Kamino', 'DC-15A', 'Sargento', ' '),
(157, 'Buzz', ' ', 'Republica Galactica', 'Clon', 'Kamino', 'Cañon Blaster Rotativo Z-6', 'Soldado clon', ' '),
(158, 'Cutup', ' ', 'Republica Galactica', 'Clon', 'Kamino', 'DC-15', 'Soldado clon', ' '),
(159, 'Deviss', ' ', 'Republica Galactica', 'Clon', 'Kamino', 'DC-15A', 'Comandante', ' '),
(160, 'Droidbait', ' ', 'Republica Galactica', 'Clon', 'Kamino', 'DC-15', 'Soldado clon', ' '),
(161, 'Grey', ' ', 'Republica Galactica', 'Clon', 'Kamino', 'DC-15', 'Comandante', ' '),
(162, 'Jek', ' ', 'Republica Galactica', 'Clon', 'Kamino', 'Cañon Blaster Rotativo Z-6', 'Soldado clon', ' '),
(163, 'Jet', ' ', 'Republica Galactica', 'Clon', 'Kamino', 'DC-17', 'Comandante', ' '),
(164, 'Longshot', ' ', 'Republica Galactica', 'Clon', 'Kamino', 'DC-15', 'Soldado clon', ' '),
(165, 'Mixer', ' ', 'Republica Galactica', 'Clon', 'Kamino', 'DC-15', 'Soldado clon', ' '),
(166, 'Ridge', ' ', 'Republica Galactica', 'Clon', 'Kamino', 'DC-15', 'Soldado clon', ' '),
(167, 'Ringo', ' ', 'Republica Galactica', 'Clon', 'Kamino', 'DC-15', 'Soldado clon', ' '),
(168, 'Rys', ' ', 'Republica Galactica', 'Clon', 'Kamino', 'DC-15', 'Soldado clon', ' '),
(169, 'Warthog', ' ', 'Republica Galactica', 'Clon', 'Kamino', ' ', 'Piloto', 'Caza Clon Z-95'),
(170, 'Slick', ' ', 'Alianza Separatista', 'Clon', 'Kamino', 'DC-15', 'Sargento', ' '),
(171, 'Sterling', ' ', 'Republica Galactica', 'Clon', 'Kamino', 'DC-15A', 'Soldado clon', ' '),
(172, 'Styles', ' ', 'Republica Galactica', 'Clon', 'Kamino', 'DC-15', 'Capitan', ' '),
(173, 'Trapper', ' ', 'Republica Galactica', 'Clon', 'Kamino', 'DC-15', 'Soldado clon', ' '),
(174, 'Wooley', ' ', 'Republica Galactica', 'Clon', 'Kamino', 'DC-15', 'Soldado clon', ' '),
(175, 'Cut', 'Lawquane', ' ', 'Clon', 'Kamino', 'DC-15', 'Granjero', ' '),
(176, 'Cid', ' ', 'Gremio de Cazarrecompensas', 'Trandoshano', 'Ord Mantell', ' ', 'Comerciante', ' '),
(177, 'Fennec', 'Shand', 'Gremio de Cazarrecompensas', 'Humano', ' Desconocido', 'Rifle Francotirador MK', 'Cazarrecompensas', 'Esclavo 1'),
(178, ' ', 'Rampart', 'Imperio Galactico', 'Humano', ' Desconocido', ' ', 'Vice Almirante', 'Destructor Estelar Imperial'),
(179, 'Saw', 'Gerrera', 'Milicia', 'Humano', 'Onderon', 'DH-17', 'Terrorista', 'Ala-U'),
(180, 'Steela', 'Gerrera', 'Milicia', 'Humano', 'Onderon', 'A-280', 'Terrorista', ' '),
(181, 'Jabba', 'El Hutt', 'Sindicato Hutt', 'Hutt', 'Nal Hutta', ' ', 'Lider Criminal', ' '),
(182, 'Ziro', 'Desilijic', 'Sindicato Hutt', 'Hutt', 'Nal Hutta', ' ', 'Lider Criminal', ' '),
(183, 'Arok', ' ', 'Sindicato Hutt', 'Hutt', 'A-Foroon', ' ', 'Lider Criminal', ' '),
(184, 'Gardulla', 'Desilijic', 'Sindicato Hutt', 'Hutt', 'Nal Hutta', ' ', 'Lider Criminal', ' '),
(185, 'Gorga', 'Desilijic', 'Sindicato Hutt', 'Hutt', 'Nal Hutta', ' ', 'Lider Criminal', ' '),
(186, 'Mama', 'Desilijic', 'Sindicato Hutt', 'Hutt', 'Nal Hutta', ' ', 'Lider Criminal', ' '),
(187, 'Marlo', 'Desilijic', 'Sindicato Hutt', 'Hutt', 'Nal Hutta', ' ', 'Lider Criminal', ' '),
(188, 'Oruba', 'Desilijic', 'Sindicato Hutt', 'Hutt', 'Nal Hutta', ' ', 'Lider Criminal', ' '),
(189, 'Sutha', 'Desilijic', 'Sindicato Hutt', 'Hutt', 'Nal Hutta', ' ', 'Lider Criminal', ' '),
(190, 'Krrsantan', ' ', 'Gremio de Cazarrecompensas', 'Wookie', 'Kashyyyk', 'Ballesta Wookie', 'Cazarrecompensas', ' '),
(191, 'Darth', 'Bane', 'Imperio Sith', 'Humano', 'Korriban', 'Espada Laser (Roja)', 'Lord Sith', ' '),
(192, 'Asajj', 'Ventress', 'Alianza Separatista', 'Dathomiriana', 'Dathomir', 'Espada Laser (Roja)', 'Asesino', 'Caza Estelar Ginivex'),
(193, 'Talzin', ' ', 'Hermana de la noche', 'Dathomiriana', 'Dathomir', 'Brujeria', 'Bruja', ' '),
(194, 'Daka', ' ', 'Hermana de la noche', 'Dathomiriana', 'Dathomir', 'Brujeria', 'Bruja', ' '),
(195, 'Talia', ' ', 'Hermana de la noche', 'Dathomiriana', 'Dathomir', 'Arco Laser', 'Bruja', ' '),
(196, 'Merrin', ' ', 'Hermana de la noche', 'Dathomiriana', 'Dathomir', 'Brujeria', 'Bruja', ' '),
(197, 'Savage', 'Opress', 'Colectivo Sombra', 'Zabrak', 'Dathomir', 'Espada Laser (Roja)', 'Asesino', ' '),
(198, 'Hondo', 'Ohnaka', 'Banda de Hondo', 'Weequay', 'Sriluur', 'Pistola Weequay', 'Pirata', 'Acushnet'),
(199, 'Greedo', ' ', 'Gremio de Cazarrecompensas', 'Rodiano', 'Rodia', 'DT-12', 'Cazarrecompensas', ' '),
(200, 'Embo', ' ', 'Gremio de Cazarrecompensas', 'Kyuzo', 'Phatrong', 'Ballesta Wookie', 'Cazarrecompensas', 'Halo'),
(201, 'Lux', 'Bonteri', 'Alianza Separatista', 'Humano', 'Onderon', ' ', 'Terrorista', ' '),
(202, 'Mina', 'Bonteri', 'Alianza Separatista', 'Humano', 'Onderon', ' ', 'Senador', ' '),
(203, 'Nala', 'Se', 'Alianza Separatista', 'Kaminiano', 'Kamino', ' ', 'Doctor', ' '),
(204, 'Halle', 'Burtoni', 'Republica Galactica', 'Kaminiano', 'Kamino', ' ', 'Senador', ' '),
(205, 'Shoan', 'Kilian', 'Republica Galactica', 'Humano', 'Corellia', ' ', 'Almirante', ' '),
(206, 'Huyang', ' ', 'Orden Jedi', 'Droide', ' Desconocido', ' ', 'Asistente', ' '),
(207, 'Rush', 'Clovis', 'Alianza Separatista', 'Humano', 'Scipio', ' ', 'Senador', ' '),
(208, 'Pre', 'Vizsla', 'Guardia de la Muerte', 'Humano', 'Mandalore', 'Sable Oscuro', 'Lider Criminal', 'Guantelete Mandaloriano'),
(209, 'Bo-Katan', 'Kryze', 'Guardia de la Muerte', 'Humano', 'Mandalore', 'Westar-35', 'Guerrero Mandaloriano', 'Guantelete Mandaloriano'),
(210, 'Tal', 'Merrik', 'Alianza Separatista', 'Humano', 'Kalevala', 'Pistola Weequay', 'Senador', ' '),
(211, 'Tarre', 'Vizsla', 'Orden Jedi', 'Humano', 'Mandalore', 'Sable Oscuro', 'Caballero Jedi', ' '),
(212, 'Satine', 'Kryze', 'Republica Galactica', 'Humano', 'Mandalore', 'Desactivador Hold-Out', 'Duquesa', 'El Coronet'),
(213, 'Shae', 'Vizla', 'Imperio Sith', 'Humano', 'Mandalore', 'Westar-35', 'Cazarrecompensas', ' '),
(214, 'Paz', 'Vizsla', 'Mandaloriano', 'Humano', 'Mandalore', 'Blaster Pesado Mandaloriano', 'Guerrero Mandaloriano', ' '),
(215, 'Kal', 'Skirata', 'Republica Galactica', 'Humano', 'Kuat', 'Westar-35', 'Instructor', ' '),
(216, 'Koska', 'Reeves', 'Mandaloriano', 'Humano', 'Mandalore', 'Westar-35', 'Guerrero Mandaloriano', 'Guantelete Mandaloriano'),
(217, 'Axe', 'Woves', 'Mandaloriano', 'Humano', 'Mandalore', 'Westar-35', 'Guerrero Mandaloriano', 'Guantelete Mandaloriano'),
(218, 'Sabine', 'Wren', 'Alianza Rebelde', 'Humano', 'Krownest', 'Westar-35', 'Guerrero Mandaloriano', 'El Espiritu'),
(219, 'Ursa', 'Wren', 'Mandaloriano', 'Humano', 'Krownest', 'Westar-35', 'Conde', 'Guantelete Mandaloriano'),
(220, 'Ketsu', 'Onyo', 'Sol Negro', 'Humano', 'Mandalore', 'Lanza', 'Cazarrecompensas', 'Shadow Caster'),
(221, 'La Armera', ' ', 'Mandaloriano', 'Humano', 'Mandalore', 'Lanza', 'Herrero', ' '),
(222, 'Tarre', 'Vizsla', 'Orden Jedi', 'Humano', 'Mandalore', 'Sable Oscuro', 'Caballero Jedi', ' '),
(223, 'Almec', ' ', 'Colectivo Sombra', 'Humano', 'Mandalore', ' ', 'Ministro', ' '),
(224, 'Gar', 'Saxon', 'Imperio Galactico', 'Humano', 'Mandalore', 'Wetsar-STL', 'Supercomando Imperial', ' '),
(225, 'Tiber', 'Saxon', 'Imperio Galactico', 'Humano', 'Mandalore', 'Wetsar-STL', 'Virrey', ' '),
(226, 'Rook', 'Kast', 'Colectivo Sombra', 'Humano', 'Mandalore', 'Westar-35', 'Guerrero Mandaloriano', ' '),
(227, 'Alrich', 'Wren', 'Mandaloriano', 'Humano', 'Mandalore', ' ', 'Artista', ' '),
(228, 'Tristan', 'Wren', 'Mandaloriano', 'Humano', 'Mandalore', 'Westar-35', 'Guerrero Mandaloriano', ' '),
(229, 'Bendu', ' ', ' ', 'Desconocida', 'Atollon', 'La Fuerza', ' ', ' '),
(230, 'Padre', '  ', ' ', 'Desconocida', 'Mortis', 'La Fuerza', ' ', ' '),
(231, 'Hija', '  ', ' ', 'Desconocida', 'Mortis', 'La Fuerza', ' ', ' '),
(232, 'Hijo', '  ', ' ', 'Desconocida', 'Mortis', 'La Fuerza', ' ', ' '),
(233, 'Lee', 'Char', 'Republica Galactica', 'Mon Calamari', 'Mon Cala', 'Lanza', 'Gobernador', ' '),
(234, 'Arguss', ' ', 'Alianza Separatista', 'Zygerriano', 'Zygerria', ' ', 'Esclavista', ' '),
(235, 'Shahan', 'Alama', 'Banda de Hondo', 'Weequay', 'Sriluur', 'Pistola Weequay', 'Pirata', 'Acushnet'),
(236, 'Aramis', ' ', 'Republica Galactica', 'Humano', 'Mandalore', 'Lanza', 'Guardia Real', ' '),
(237, 'Fargo', 'Argyus', 'Alianza Separatista', 'Humano', 'Tepasi', 'DC-15A', 'Guardia Sentorial', ' '),
(238, 'Jackar', 'Bowmani', 'Republica Galactica', 'Abyssin', 'Abyss', ' ', 'Mecanico', ' '),
(239, 'Byph', ' ', 'Orden Jedi', 'Ithoriano', 'Ithor', 'Espada Laser (Azul)', 'Padawan', ' '),
(240, 'Barton', 'Coburn', 'Republica Galactica', 'Humano', 'Commenor', ' ', 'Almirante', 'Crucero Ligero Arquitens'),
(241, 'Chi', 'Cho', 'Republica Galactica', 'Pantorano', 'Pantora', 'Pistola Weequay', 'Gobernador', ' '),
(242, 'Riyo', 'Chuchi', 'Republica Galactica', 'Pantorano', 'Pantora', ' ', 'Senador', ' '),
(243, 'Che', 'Papadonia', 'Republica Galactica', 'Pantorano', 'Pantora', ' ', 'Princesa', ' '),
(244, 'Notluwiski', 'Papadonia', 'Republica Galactica', 'Pantorano', 'Pantora', ' ', 'Gobernador', ' '),
(245, 'Darts', 'D Nar', 'Alianza Separatista', 'Zygerriano', 'Zygerria', 'Latigo Laser', 'Esclavista', ' '),
(246, 'Dao', ' ', 'Republica Galactica', 'Humano', 'Coruscant', ' ', 'Almirante', 'Destructor Estelar Venator'),
(247, 'Wullf', 'Yularen', 'Republica Galactica', 'Humano', 'Coruscant', ' ', 'Almirante', 'Destructor Estelar Venator'),
(248, 'Mee', 'Deechi', 'Republica Galactica', 'Umbarano', 'Umbara', ' ', 'Senador', ' '),
(249, 'Ramsis', 'Dendup', 'Republica Galactica', 'Humano', 'Onderon', ' ', 'Gobernador', ' '),
(250, 'Dengar', ' ', 'Gremio de Cazarrecompensas', 'Humano', 'Corellia', 'DLT-19', 'Cazarrecompensas', ' Punishing One'),
(251, 'Derrown', ' ', 'Gremio de Cazarrecompensas', 'Parwan', 'Parwa', 'Pistola Weequay', 'Cazarrecompensas', ' '),
(252, 'Ima-Gun', 'Di', 'Orden Jedi', 'Nikto', 'Kintan', 'Espada Laser (Azul)', 'Caballero Jedi', ' '),
(253, 'Tanivos', 'Divo', 'Republica Galactica', 'Humano', 'Coruscant', '', 'Inpector', ' '),
(254, 'Twazzi', ' ', 'Gremio de Cazarrecompensas', 'Frenk', 'Gorobei', 'Pistola Weequay', 'Cazarrecompensas', ' '),
(255, 'Draa', ' ', 'Republica Galactica', 'Clon', 'Kamino', 'DC-15', 'Soldado clon', ' '),
(256, 'El', 'Les', 'Republica Galactica', 'Arcona', 'Cona', 'Pistola Weequay', 'Instructor', ' '),
(257, 'Ord', 'Enisence', 'Orden Jedi', 'Skrilling', 'Agriworld-2079', 'Espada Laser (Verde)', 'Caballero Jedi', ' '),
(258, 'Moralo', 'Eval', 'Alianza Separatista', 'Phindiano', 'Phindar', 'Pistola Weequay', 'Cazarrecompensas', ' '),
(259, 'Chata', 'Hyoki', 'Gremio de Cazarrecompensas', 'Selkath', ' Desconocido', 'Pistola Weequay', 'Cazarrecompensas', ' '),
(260, 'Robonino', ' ', 'Gremio de Cazarrecompensas', 'Patroliano', ' Desconocido', 'Pistola Weequay', 'Cazarrecompensas', ' '),
(261, 'Turk', 'Falso', 'Banda de Hondo', 'Weequay', 'Florum', 'Pistola Weequay', 'Pirata', 'Acushnet'),
(262, 'Onaconda', 'Farr', 'Republica Galactica', 'Rodiano', 'Rodia', ' ', 'Senador', ' '),
(263, 'Feral', 'Opress', 'Hermano de la noche', 'Zabrak', 'Dathomir', 'Lanza', 'Guerrero', ' '),
(264, 'Fife', ' ', 'Sindicato Pyke', 'Pyke', 'Oba Diah', 'CC-420', 'Asistente', ' '),
(265, 'Dagu', 'Flask', 'Banda de Hondo', 'Pyke', 'Sriluur', 'Fusil Francotirador', 'Pirata', 'Acushnet'),
(266, 'Fury', ' ', 'Republica Galactica', 'Clon', 'Kamino', ' ', 'Artillero', 'Destructor Estelar Venator'),
(267, 'Gubacher', ' ', 'Republica Galactica', 'Parwan', 'Parwa', ' ', 'Doctor', ' '),
(268, 'Gwarm', ' ', 'Banda de Hondo', 'Weequay', 'Florum', 'Pistola Weequay', 'Pirata', 'Acushnet'),
(269, 'Goru', ' ', 'Banda de Hondo', 'Weequay', 'Florum', 'Pistola Weequay', 'Pirata', 'Acushnet'),
(270, 'Gobi', 'Glie', 'Republica Galactica', 'Twilek', 'Ryloth', 'Pistola Weequay', 'Terrorista', ' '),
(271, 'Goji', ' ', 'Republica Galactica', 'Clon', 'Kamino', 'Pistola Weequay', 'Piloto', 'Ala-Y'),
(272, 'Gungi', ' ', 'Orden Jedi', 'Wookie', 'Kashyyyk', 'Espada Laser (Verde)', 'Padawan', ' '),
(273, 'Gonky', ' ', 'Republica Galactica', 'Droide', 'Kamino', ' ', 'Asistente', ' '),
(274, 'Meebur', 'Gascon', 'Republica Galactica', 'Zilkiniano', 'Zilk', ' ', 'Coronel', ' '),
(275, 'Gha', 'Nachkt', 'Alianza Separatista', 'Trandoshano', 'Trandosha', 'Taser', 'Chatarrero', ' Garra del Buitre'),
(276, 'Ky', 'Narec', 'Orden Jedi', 'Humano', ' Desconocido', 'Espada Laser (Verde)', 'Caballero Jedi', ' '),
(277, 'Ratter', ' ', ' ', 'Trandoshano', 'Trandosha', 'Pistola Weequay', 'Cazador', ' '),
(278, 'Sochek', ' ', ' ', 'Trandoshano', 'Trandosha', 'Repetidor ACP', 'Cazador', ' '),
(279, 'Lo', 'Taren', ' ', 'Trandoshano', 'Trandosha', 'Relby-v10', 'Cazador', ' '),
(280, 'Dar', ' ', ' ', 'Trandoshano', 'Trandosha', 'Fusil Francotirador', 'Cazador', ' '),
(281, 'Smug', ' ', ' ', 'Trandoshano', 'Trandosha', 'Repetidor ACP', 'Cazador', ' '),
(282, 'Krix', ' ', ' ', 'Trandoshano', 'Trandosha', 'Repetidor ACP', 'Cazador', ' '),
(283, 'Lagon', ' ', ' ', 'Trandoshano', 'Trandosha', 'Repetidor ACP', 'Cazador', ' '),
(284, 'Gilas', ' ', ' ', 'Trandoshano', 'Trandosha', 'Repetidor ACP', 'Cazador', ' '),
(285, 'Garnac', ' ', ' ', 'Trandoshano', 'Trandosha', 'Repetidor ACP', 'Cazador', ' '),
(286, 'Luce', '  ', 'Hermana de la noche', 'Dathomiriana', 'Dathomir', 'Arco Laser', 'Bruja', ' '),
(287, 'Lock', ' ', 'Republica Galactica', 'Clon', 'Kamino', 'DC-15', 'Capitan', ' '),
(288, 'Sanjay', 'Rash', 'Alianza Separatista', 'Humano', 'Onderon', ' ', 'Gobernador', ' '),
(289, 'Numa', ' ', 'Alianza Rebelde', 'Humano', 'Ryloth', 'DC-17', 'Terrorista', ' '),
(290, 'Ion', 'Papadonia', 'Republica Galactica', 'Pantorano', 'Pantora', ' ', 'Principe', ' '),
(291, 'Cato', 'Parasitti', 'Gremio de Cazarrecompensas', 'Clawdite', 'Zolan', 'Fusil Francotirador', 'Cazarrecompensas', ' '),
(292, 'Parsel', ' ', 'Banda de Hondo', 'Weequay', 'Sriluur', 'Pistola Weequay', 'Pirata', 'Acushnet'),
(293, 'Petro', ' ', 'Orden Jedi', 'Humano', 'Corellia', 'Espada Laser (Azul)', 'Padawan', ' '),
(294, 'Preigo', ' ', ' ', 'Dug', 'Malastare', ' ', 'Presentador', ' '),
(295, 'R4', 'P17', 'Republica Galactica', 'Droide', 'Coruscant', 'Taser', 'Astromecanico', ' '),
(296, 'R7', 'a7', 'Republica Galactica', 'Droide', 'Coruscant', 'Taser', 'Astromecanico', ' '),
(297, 'Bolla', 'Ropal', 'Orden Jedi', 'Rodiano', 'Rodia', 'Espada Laser (Verde)', 'Caballero Jedi', ' '),
(298, 'Rosthi', ' ', 'Republica Galactica', 'Togruta', 'Kiros', ' ', 'Gobernador', ' '),
(299, 'Rotta', 'Desilijic', 'Sindicato Hutt', 'Hutt', 'Tatooine', ' ', ' ', ' '),
(300, 'Patrok', 'Saxon', 'Republica Galactica', 'Humano', 'Mandalore', 'Lanza', 'Guardia Real', ' '),
(301, 'Russo', 'ISC', 'Republica Galactica', 'Droide', 'Coruscant', ' ', 'Inspector', ' '),
(302, 'Niner', ' ', 'Republica Galactica', 'Clon', 'Kamino', 'DC-15A', 'Soldado clon', ' '),
(303, 'Razor', ' ', 'Republica Galactica', 'Clon', 'Kamino', 'DC-15', 'Soldado ARF', ' '),
(304, 'Rod', ' ', 'Republica Galactica', 'Clon', 'Kamino', ' ', 'Artillero', 'Ala-Y'),
(305, 'Shiv', ' ', 'Republica Galactica', 'Clon', 'Kamino', 'DC-15', 'Soldado clon', ' '),
(306, 'Spark', ' ', 'Republica Galactica', 'Clon', 'Kamino', ' ', 'Piloto', 'Corbeta Furtiva IPV-2C'),
(307, 'Stak', ' ', 'Republica Galactica', 'Clon', 'Kamino', 'DC-15', 'Soldado ARF', ' '),
(308, 'Lom', 'Pyke', 'Sindicato Pyke', 'Pyke', 'Oba Diah', 'CC-420', 'Criminal', ' '),
(309, 'Sabo', ' ', 'Banda de Hondo', 'Weequay', 'Florum', 'Pistola Weequay', 'Pirata', 'Acushnet'),
(310, 'Barb', 'Mentir', 'Banda de Hondo', 'Weequay', 'Florum', 'Pistola Weequay', 'Pirata', 'Acushnet'),
(311, 'Jiro', ' ', 'Banda de Hondo', 'Weequay', 'Florum', 'Pistola Weequay', 'Pirata', 'Acushnet'),
(312, 'Miraj', 'Scintel', 'Alianza Separatista', 'Zygerriano', 'Zygerria', 'Latigo Laser', 'Gobernador', ' '),
(313, 'Atai', 'Molec', 'Alianza Separatista', 'Zygerriano', 'Zygerria', 'Latigo Laser', 'Ministro', ' '),
(314, 'Silman', ' ', 'Republica Galactica', 'Humano', 'Coruscant', ' ', 'Asistente', ' '),
(315, 'Orn Free', 'Taa', 'Republica Galactica', 'Twilek', 'Ryloth', ' ', 'Senador', ' '),
(316, 'Akenathen', 'Tandin', 'Republica Galactica', 'Humano', 'Onderon', ' ', 'General', ' '),
(317, 'Tarfful', ' ', 'Republica Galactica', 'Wookie', 'Kashyyyk', 'Ballesta Wookie', 'Gobernador', ' '),
(318, 'Nils', 'Tenant', 'Republica Galactica', 'Humano', 'Coruscant', ' ', 'Almirante', 'Destructor Estelar Venator'),
(319, 'Letta', 'Turmond', 'Republica Galactica', 'Humano', 'Coruscant', ' ', 'Terrorista', ' '),
(320, 'Nakha', 'Urus', 'Republica Galactica', 'Dug', 'Malastare', 'Lanza', 'Gobernador', ' '),
(321, 'Viscus', ' ', 'Hermano de la noche', 'Zabrak', 'Dathomir', 'Lanza', 'Gobernador', ' '),
(322, 'Zatt', ' ', 'Orden Jedi', 'Nautolano', 'Glee Anselm', 'Espada Laser (Verde)', 'Padawan', ' '),
(323, 'Teckla', 'Minnau', 'Republica Galactica', 'Humano', 'Naboo', ' ', 'Asistente', ' '),
(324, 'Rako', 'Hardeen', 'Gremio de Cazarrecompensas', 'Humano', 'Concord Dawn', 'Fusil Francotirador', 'Cazarrecompensas', ' '),
(325, 'Knox', ' ', 'Orden Jedi', 'Nautolano', 'Glee Anselm', 'Espada Laser (Azul)', 'Padawan', ' '),
(326, 'Kalifa', ' ', 'Orden Jedi', 'Humano', 'Corellia', 'Espada Laser (Azul)', 'Padawan', ' '),
(327, 'Jinx', ' ', 'Orden Jedi', 'Twilek', 'Ryloth', 'Espada Laser (Verde)', 'Padawan', ' '),
(328, 'Hound', ' ', 'Republica Galactica', 'Clon', 'Kamino', 'DC-17', 'Sargento', ' '),
(329, 'Kalani', ' ', 'Alianza Separatista', 'Droide', 'Geonosis', ' ', 'General', ' '),
(330, 'Katuunko', ' ', 'Republica Galactica', 'Toydariano', 'Toydaria', ' ', 'Gobernador', ' '),
(331, 'Killer', ' ', 'Republica Galactica', 'Clon', 'Kamino', ' ', 'Piloto', 'Ala-Y'),
(332, 'Pong', 'Krell', 'Alianza Separatista', 'Besalisko', 'Ojom', 'Espada Laser (Verde)', 'Caballero Jedi', ' '),
(333, 'Marg', 'Krim', 'Sindicato Pyke', 'Pyke', 'Oba Diah', 'CC-420', 'Lider Criminal', ' '),
(334, 'Korkie', 'Kryze', 'Republica Galactica', 'Humano', 'Mandalore', 'Westar-34', ' ', ' '),
(335, 'Latts', 'Razzi', 'Gremio de Cazarrecompensas', 'Theelin', 'Korbori', 'Pistola Weequay', 'Cazarrecompensas', ' '),
(336, 'Riff', 'Tamson', 'Alianza Separatista', 'Karkarodon', 'Karkaris', ' ', 'Comandante', ' '),
(337, 'Todo', '360', 'Gremio de Cazarrecompensas', 'Droide', 'Vertseth', ' ', 'Asistente', ' '),
(338, 'Trench', ' ', 'Alianza Separatista', 'Harch', 'Secundus Ando', ' ', 'Almirante', ' '),
(339, 'Tub', ' ', 'Federacion de Sistemas Neutrales', 'Lurmen', 'Maridun', ' ', 'Doctor', ' '),
(340, 'Tee', 'Watt Kaa', 'Federacion de Sistemas Neutrales', 'Lurmen', 'Maridun', ' ', 'Gobernador', ' '),
(341, 'Nuvo', 'Vindi', 'Alianza Separatista', 'Faust', 'Adana', ' ', 'Doctor', ' '),
(342, 'Thi', 'Sen', 'Federacion de Sistemas Neutrales', 'Talz', 'Orto Plutonia', 'Lanza', 'Gobernador', ' '),
(343, 'Medcha', 'Wanto', 'Federacion de Sistemas Neutrales', 'Talz', 'Orto Plutonia', 'Lanza', 'Asistente', ' '),
(344, 'Morai', ' ', ' ', 'Talz', 'Mortis', ' ', ' ', ' '),
(345, 'Halsey', ' ', 'Orden Jedi', 'Roonan', 'Roona', 'Espada Laser (Verde)', 'Caballero Jedi', ' '),
(346, 'Katooni', ' ', 'Orden Jedi', 'Tholothiano', 'Tholoth', 'Espada Laser (Azul)', 'Padawan', ' '),
(347, 'Suu', 'Lawquane', ' ', 'Twilek', 'Selucami', 'Fusil Cycler', 'Granjero', ' '),
(348, 'Shaeeah', 'Lawquane', ' ', 'Twilek', 'Selucami', ' ', 'Granjero', ' '),
(349, 'Jek', 'Lawquane', ' ', 'Twilek', 'Selucami', ' ', 'Granjero', ' '),
(350, 'Whorm', 'Loathsom', 'Alianza Separatista', 'Kerkoidano', 'Kerkoidia', ' ', 'General', ' '),
(351, 'Rafa', 'Martez', 'Sindicato Pyke', 'Humano', 'Coruscant', ' ', 'Contrabandista', 'Angel Plateado'),
(352, 'Trace', 'Martez', 'Sindicato Pyke', 'Humano', 'Coruscant', ' ', 'Piloto', 'Angel Plateado'),
(353, 'Zett', 'Jukassa', 'Orden Jedi', 'Humano', 'Coruscant', 'Espada Laser (Azul)', 'Padawan', ' '),
(354, 'Raymus', 'Antilles', 'Alianza Rebelde', 'Humano', 'Alderaan', 'DH-17', 'Capitan', 'Tantive IV'),
(355, 'Breha', 'Organa', 'Alianza Rebelde', 'Humano', 'Alderaan', ' ', ' ', ' '),
(356, 'Tion', 'Medon', 'Republica Galactica', 'Pauano', 'Utapau', ' ', 'Gobernador', ' ');

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
(102, 'A-Foroon'),
(114, 'Abyss'),
(135, 'Adana'),
(123, 'Agriworld'),
(124, 'Agriworld-2079'),
(21, 'Ahch-To'),
(8, 'Alderaan'),
(99, 'Alsakan'),
(98, 'Aria Prime'),
(111, 'Atollon'),
(14, 'Bespin'),
(118, 'Bordo Asogi'),
(25, 'Canto Bight'),
(24, 'Cato Neimoidia'),
(74, 'Cerea'),
(75, 'Chalacta'),
(80, 'Champala'),
(26, 'Christophsis'),
(101, 'Commenor'),
(122, 'Cona'),
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
(121, 'Gorobei'),
(95, 'Grange'),
(69, 'Haruun Kal'),
(17, 'Hoth'),
(72, 'Iktotch'),
(23, 'Illum'),
(37, 'Iridonia'),
(115, 'Ithor'),
(38, 'Jakku'),
(39, 'Jedha'),
(67, 'Kalee'),
(108, 'Kalevala'),
(3, 'Kamino'),
(131, 'Karkaris'),
(5, 'Kashyyyk'),
(144, 'Kerkoidia'),
(40, 'Kessel'),
(84, 'Kiffu'),
(120, 'Kintan'),
(128, 'Kiros'),
(129, 'Korbori'),
(45, 'Korriban'),
(110, 'Krownest'),
(109, 'Kuat'),
(71, 'Lannik'),
(86, 'Lavisar'),
(94, 'Lexruk'),
(41, 'Lothal'),
(42, 'Malachor'),
(43, 'Malastare'),
(44, 'Mandalore'),
(134, 'Maridun'),
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
(126, 'Oba Diah'),
(82, 'Ojom'),
(48, 'Onderon'),
(49, 'Ord Mantell'),
(136, 'Orto Plutonia'),
(117, 'Pantora'),
(119, 'Parwa'),
(96, 'Pendarr III'),
(106, 'Phatrong'),
(125, 'Phindar'),
(1, 'Polis Massa'),
(77, 'Pollillus'),
(130, 'Quarzite'),
(73, 'Quermia'),
(50, 'Rishi'),
(105, 'Rodia'),
(137, 'Roona'),
(13, 'Ryloth'),
(51, 'Scarif'),
(107, 'Scipio'),
(133, 'Secundus Ando'),
(143, 'Selucami'),
(81, 'Sembla'),
(65, 'Serenno'),
(52, 'Shili'),
(85, 'Skustell'),
(90, 'Socorro'),
(104, 'Sriluur'),
(64, 'Stewjon'),
(53, 'Sullust'),
(54, 'Takodana'),
(4, 'Tatooine'),
(113, 'Tepasi'),
(70, 'Thisspias'),
(139, 'Tholoth'),
(55, 'Toydaria'),
(6, 'Trandosha'),
(56, 'Umbara'),
(57, 'Utapau'),
(92, 'Vallt'),
(132, 'Vertseth'),
(97, 'Virujansi'),
(100, 'Yar Togna'),
(16, 'Yavin IV'),
(127, 'Zilk'),
(78, 'Zolan'),
(112, 'Zygerria');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `arma`
--
ALTER TABLE `arma`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT de la tabla `especie`
--
ALTER TABLE `especie`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT de la tabla `nave`
--
ALTER TABLE `nave`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT de la tabla `oficio`
--
ALTER TABLE `oficio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT de la tabla `personaje`
--
ALTER TABLE `personaje`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=357;

--
-- AUTO_INCREMENT de la tabla `planeta_origen`
--
ALTER TABLE `planeta_origen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=145;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
