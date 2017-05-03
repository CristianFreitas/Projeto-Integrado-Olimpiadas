-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 11-Dez-2016 às 23:42
-- Versão do servidor: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `world`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `atleta`
--

CREATE TABLE `atleta` (
  `Cod_Atleta` int(11) NOT NULL,
  `Nome_Atleta` varchar(40) NOT NULL,
  `Dt_Nasc` date DEFAULT NULL,
  `Sexo` varchar(2) DEFAULT NULL,
  `Cod_Pais` int(8) DEFAULT NULL,
  `Cod_Tec` int(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `atleta`
--

INSERT INTO `atleta` (`Cod_Atleta`, `Nome_Atleta`, `Dt_Nasc`, `Sexo`, `Cod_Pais`, `Cod_Tec`) VALUES
(1, 'Kamia Yousufi', '1996-05-20', 'F', 1, 1),
(2, 'Abdul Wahab Zahiri', '1992-05-27', 'M', 1, 1),
(3, 'Mohammad Tawfiq Bakhshi', '1986-03-11', 'M', 1, 1),
(4, 'Sibide Aicha ', '1995-12-03', 'F', 2, 2),
(5, 'Jean Pierre Renan Bourhis ', '1995-03-29', 'M', 2, 1),
(6, 'Alexandre Bouzaid ', '1981-06-29', 'M', 2, 1),
(7, 'Ramata Daou ', '1988-03-23', 'F', 2, 2),
(8, 'Maimouna Diarra ', '1991-01-30', 'F', 2, 2),
(9, 'Adama Diatta', '1988-08-14', 'M', 2, 1),
(10, 'Hortance Diedhiou ', '1983-08-19', 'F', 2, 1),
(11, 'Bintou Dieme ', '1984-02-01', 'F', 2, 2),
(12, 'Fatou Dieng', '1983-08-18', 'F', 2, 2),
(13, 'Ndeye Khadidiatou Dieng', '1994-12-01', 'F', 2, 2),
(14, 'Balla Dieye ', '1980-11-13', 'M', 2, 1),
(15, 'Yacine Diop ', '1995-10-08', 'F', 2, 2),
(16, 'Diary Diouf ', '1984-12-15', 'F', 2, 2),
(17, 'Aida Fall ', '1986-11-10', 'F', 2, 2),
(18, 'Magali Mendy ', '1990-03-06', 'F', 2, 2),
(19, 'Couna Ndao ', '1996-04-22', 'F', 2, 1),
(20, 'Amadou Ndiaye', '1992-12-06', 'M', 2, 1),
(21, 'Awa Ly Ndiaye ', '2000-01-15', 'F', 2, 1),
(22, 'Abdoul Khadre MbayeNiane ', '1988-08-20', 'M', 2, 1),
(23, 'Marie-Sadio Rosche ', '1987-08-10', 'F', 2, 2),
(24, 'Isabelle Sambou ', '1980-10-20', 'F', 2, 1),
(25, 'Isabella Amado', '1996-08-09', 'F', 3, 1),
(26, 'Rolanda Bell', '1987-10-27', 'F', 3, 1),
(27, 'Atheyna Bylon', '1989-04-06', 'F', 3, 1),
(28, 'Yassir Cabrera', '1989-01-28', 'M', 3, 1),
(29, 'Carolena Carstens', '1960-01-18', 'F', 3, 1),
(30, 'Jorge Castelblanco', '1987-09-23', 'M', 3, 1),
(31, 'Edgar Crespo', '1989-05-11', 'M', 3, 1),
(32, 'Alonso Edward', '1989-12-08', 'M', 3, 1),
(33, 'Mateo Edward', '1993-05-01', 'M', 3, 1),
(34, 'Maria Far', '1998-01-06', 'F', 3, 1),
(35, 'Mohamed Daud Mohamed', '1996-03-01', 'M', 4, 1),
(36, 'Maryan Muse', '1997-01-01', 'F', 4, 1),
(37, 'Adam Okruashvili', '1989-01-01', 'M', 5, 1),
(38, 'Amiran Papinashvili', '1988-06-17', 'M', 5, 8),
(39, 'Anastasiia Hotfrid', '1996-04-25', 'F', 5, 7),
(40, 'Avtandili Tchrikishvili', '1991-03-18', 'M', 5, 1),
(41, 'Bachana Khorava', '1993-03-15', 'F', 5, 1),
(42, 'Beka Gviniashvili', '1995-10-26', 'F', 5, 6),
(43, 'Benik Abrahamyan', '1985-07-31', 'M', 5, 1),
(44, 'Daviti Kharazishvili', '1992-04-24', 'M', 5, 5),
(45, 'Elizbar Odikadze', '1989-06-14', 'F', 5, 1),
(46, 'Esther Stam', '1987-03-11', 'F', 5, 3),
(47, 'Geno Petriashvili', '1994-04-01', 'M', 5, 1),
(48, 'Giorgi Chkheidze', '1997-10-30', 'M', 5, 1),
(49, 'Iakobi Kajaia', '1993-09-28', 'M', 5, 3),
(50, 'Irakli Revishvili', '1989-11-03', 'M', 5, 1),
(51, 'Irakli Turmanidze', '1984-12-13', 'M', 5, 1),
(52, 'Jakob Makarashvili', '1985-12-28', 'M', 5, 1),
(53, 'Khatuna Narimanidze', '1974-02-02', 'M', 5, 8),
(54, 'Kristine Esebua', '1985-03-19', 'F', 5, 1),
(55, 'Lasha Shavdatuashvili', '1992-01-31', 'F', 5, 1),
(56, 'Lasha Talakhadze', '1993-10-02', 'F', 5, 1),
(57, 'Lasha Torgvaidze', '1993-05-26', 'F', 5, 1),
(58, 'Luba Golovina', '1990-04-20', 'M', 5, 1),
(59, 'Nikoloz Basilashvili', '1992-02-23', 'M', 5, 1),
(60, 'Nino Salukvadze', '1969-02-01', 'M', 5, 1),
(61, 'Revazi Nadareishvili', '1991-06-21', 'M', 5, 7),
(62, 'Roberti Kobliashvili', '1993-12-06', 'M', 5, 1),
(63, 'Salome Pazhava', '1997-09-03', 'F', 5, 1),
(64, 'Sandro Aminashvili', '1992-02-21', 'M', 5, 1),
(65, 'Sandro Bazadze', '1993-07-29', 'M', 5, 1),
(66, 'Shmagi Bolkvadze', '1994-07-26', 'M', 5, 6),
(67, 'Teona Bostashvili', '1998-01-19', 'F', 5, 1),
(68, 'Tsotne Machavariani', '1997-09-26', 'M', 5, 1),
(69, 'Valentina Liashenko', '1981-01-30', 'F', 5, 1),
(70, 'Varlam Liparteliani', '1989-02-27', 'M', 5, 1),
(71, 'Vazha Margvelashvili', '1993-10-03', 'F', 5, 5),
(72, 'Vladimer Khinchegashvili', '1991-04-18', 'M', 5, 1),
(73, 'Yuliya Lobzhenidze', '1977-08-23', 'F', 5, 1),
(74, 'Zaza Nadiradze', '1993-09-02', 'F', 5, 1),
(75, 'Zurabi Datunashvili', '1991-06-18', 'F', 5, 1),
(76, 'Zurabi Iakobishvili', '1992-02-04', 'F', 5, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `itemmodalidade`
--

CREATE TABLE `itemmodalidade` (
  `Cod_Atleta` int(8) DEFAULT NULL,
  `Cod_Mod` int(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `itemmodalidade`
--

INSERT INTO `itemmodalidade` (`Cod_Atleta`, `Cod_Mod`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 6),
(6, 5),
(7, 4),
(8, 4),
(9, 7),
(10, 8),
(11, 4),
(12, 4),
(13, 4),
(14, 9),
(15, 4),
(16, 4),
(17, 4),
(18, 4),
(19, 4),
(20, 11),
(21, 10),
(22, 12),
(23, 4),
(24, 13),
(25, 14),
(26, 15),
(27, 16),
(28, 17),
(29, 18),
(30, 19),
(31, 20),
(32, 21),
(33, 22),
(34, 23),
(35, 24),
(36, 25),
(37, 26),
(38, 27),
(39, 28),
(40, 29),
(41, 30),
(42, 31),
(43, 32),
(44, 33),
(45, 34),
(46, 35),
(47, 36),
(48, 37),
(49, 38),
(50, 39),
(51, 40),
(52, 41),
(53, 42),
(54, 43),
(55, 44),
(56, 45),
(57, 46),
(58, 47),
(59, 48),
(60, 49),
(61, 50),
(62, 51),
(63, 52),
(64, 53),
(65, 54),
(66, 55),
(67, 56),
(68, 57),
(69, 58),
(70, 59),
(71, 60),
(72, 61),
(73, 62),
(74, 63),
(75, 64),
(76, 65);

-- --------------------------------------------------------

--
-- Estrutura da tabela `medalhas`
--

CREATE TABLE `medalhas` (
  `Cod_Med` int(11) NOT NULL,
  `Cod_Atleta` int(11) DEFAULT NULL,
  `Tipo_Med` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `medalhas`
--

INSERT INTO `medalhas` (`Cod_Med`, `Cod_Atleta`, `Tipo_Med`) VALUES
(1, 1, 'Nenhuma'),
(2, 2, 'Nenhuma'),
(3, 3, 'Nenhuma'),
(4, 4, 'Nenhuma'),
(5, 5, 'Nenhuma'),
(6, 6, 'Nenhuma'),
(7, 7, 'Nenhuma'),
(8, 8, 'Nenhuma'),
(9, 9, 'Nenhuma'),
(10, 10, 'Nenhuma'),
(11, 11, 'Nenhuma'),
(12, 12, 'Nenhuma'),
(13, 13, 'Nenhuma'),
(14, 14, 'Nenhuma'),
(15, 15, 'Nenhuma'),
(16, 16, 'Nenhuma'),
(17, 17, 'Nenhuma'),
(18, 18, 'Nenhuma'),
(19, 19, 'Nenhuma'),
(20, 20, 'Nenhuma'),
(21, 21, 'Nenhuma'),
(22, 22, 'Nenhuma'),
(23, 23, 'Nenhuma'),
(24, 24, 'Nenhuma'),
(25, 25, 'Nenhuma'),
(26, 26, 'Nenhuma'),
(27, 27, 'Nenhuma'),
(28, 28, 'Nenhuma'),
(29, 29, 'Nenhuma'),
(30, 30, 'Nenhuma'),
(31, 31, 'Nenhuma'),
(32, 32, 'Nenhuma'),
(33, 33, 'Nenhuma'),
(34, 34, 'Nenhuma'),
(35, 35, 'Nenhuma'),
(36, 36, 'Nenhuma'),
(37, 37, 'Nenhuma'),
(38, 38, 'Nenhuma'),
(39, 39, 'Nenhuma'),
(40, 40, 'Nenhuma'),
(41, 41, 'Nenhuma'),
(42, 42, 'Nenhuma'),
(43, 43, 'Nenhuma'),
(44, 44, 'Nenhuma'),
(45, 45, 'Nenhuma'),
(46, 46, 'Nenhuma'),
(47, 47, 'Bronze'),
(48, 48, 'Nenhuma'),
(49, 49, 'Nenhuma'),
(50, 50, 'Nenhuma'),
(51, 51, 'Bronze'),
(52, 52, 'Nenhuma'),
(53, 53, 'Nenhuma'),
(54, 54, 'Nenhuma'),
(55, 55, 'Nenhuma'),
(56, 56, 'Bronze'),
(57, 57, 'Ouro'),
(58, 58, 'Nenhuma'),
(59, 59, 'Nenhuma'),
(60, 60, 'Nenhuma'),
(61, 61, 'Nenhuma'),
(62, 62, 'Nenhuma'),
(63, 63, 'Nenhuma'),
(64, 64, 'Nenhuma'),
(65, 65, 'Nenhuma'),
(66, 66, 'Bronze'),
(67, 67, 'Nenhuma'),
(68, 68, 'Nenhuma'),
(69, 69, 'Nenhuma'),
(70, 70, 'Prata'),
(71, 71, 'Nenhuma'),
(72, 72, 'Ouro'),
(73, 73, 'Nenhuma'),
(74, 74, 'Nenhuma'),
(75, 75, 'Nenhuma'),
(76, 76, 'Nenhuma');

-- --------------------------------------------------------

--
-- Estrutura da tabela `modalidade`
--

CREATE TABLE `modalidade` (
  `Cod_Mod` int(11) NOT NULL,
  `Nome_Mod` varchar(100) DEFAULT NULL,
  `Prova` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `modalidade`
--

INSERT INTO `modalidade` (`Cod_Mod`, `Nome_Mod`, `Prova`) VALUES
(1, 'Atletismo', '100m rasos feminino'),
(2, 'Atletismo', '100m rasos masculino'),
(3, 'Atletismo', 'At? 100kg masculino'),
(4, 'Basquetebol', 'Feminino'),
(5, 'Esgrima', 'masculino'),
(6, 'Canoagem', 'Individual masculino'),
(7, 'Luta Olimpica', 'masculino 60Kg'),
(8, 'Judo', 'feminino 60Kg'),
(9, 'Taekwondo', 'feminino 70Kg'),
(10, 'Natacao', '50m livre feminino'),
(11, 'Atletismo', '400m rasos masculino'),
(12, 'Atletismo', '50m livre masculino'),
(13, 'Luta Olimpica', 'feminino 60kg'),
(14, 'Ginastica Artistica', 'Ginastica Artistica M'),
(15, 'Atletismo', 'Atletismo'),
(16, 'boxe', 'boxe peso medio F'),
(17, 'Atletismo', 'Atletismo maratona M'),
(18, 'Taekwondo', 'Taekwondo F'),
(19, 'Atletismo', 'Atletismo Maratona M'),
(20, 'natacao', '100 m peito M'),
(21, 'Atletismo', 'Atletismo 200m M'),
(22, 'Atletismo', 'Atletismo'),
(23, 'natacao', '200 m borboleta F'),
(24, 'Atletismo', '5000m rasos masculino'),
(25, 'Atletismo', '400m rasos feminino'),
(26, 'ATLETISMO', 'DECATLO MASCULINO'),
(27, 'ATLETISMO', '100M RASOS MASCULINO'),
(28, 'ATLETISMO', '200M RASOS MASCULINO'),
(29, 'ATLETISMO', '400M RASOS MASCULINO'),
(30, 'ATLETISMO', '800M RASOS MASCULINO'),
(31, 'ATLETISMO', '1.500M RASOS MASCULINO'),
(32, 'ATLETISMO', '5.000M RASOS MASCULINO'),
(33, 'ATLETISMO', '10.000M RASOS MASCULINO'),
(34, 'ATLETISMO', '3.000M COM OBSTaCULOS MASCULINO'),
(35, 'ATLETISMO', '110M COM BARREIRAS MASCULINO'),
(36, 'ATLETISMO', '400M COM BARREIRAS MASCULINO'),
(37, 'ATLETISMO', 'REVEZAMENTO 4X100M MASCULINO'),
(38, 'ATLETISMO', 'REVEZAMENTO 4X400M MASCULINO'),
(39, 'ATLETISMO', 'LANCAMENTO DO DARDO MASCULINO'),
(40, 'ATLETISMO', 'LANCAMENTO DO MARTELO MASCULINO'),
(41, 'ATLETISMO', 'MARATONA MASCULINA'),
(42, 'ATLETISMO', 'MARCHA ATLTICA 20KM MASCULINA'),
(43, 'ATLETISMO', 'MARCHA ATLTICA 50KM MASCULINA'),
(44, 'ATLETISMO', 'ARREMESSO DO PESO MASCULINO'),
(45, 'ATLETISMO', 'LANCAMENTO DO DISCO MASCULINO'),
(46, 'ATLETISMO', 'SALTO EM ALTURA MASCULINO'),
(47, 'ATLETISMO', 'SALTO COM VARA MASCULINO'),
(48, 'ATLETISMO', 'SALTO EM DISTANCIA MASCULINO'),
(49, 'ATLETISMO', 'SALTO TRIPLO MASCULINO'),
(50, 'CANOAGEM VELOCIDADE', 'CAIAQUE INDIVIDUAL (K1) 200M MASCULINO'),
(51, 'CANOAGEM VELOCIDADE', 'CAIAQUE INDIVIDUAL (K1) 1.000M MASCULINO'),
(52, 'CANOAGEM VELOCIDADE', 'CAIAQUE DUPLO (K2) 200M MASCULINO'),
(53, 'CANOAGEM VELOCIDADE', 'CAIAQUE DUPLO (K2) 1.000M MASCULINO'),
(54, 'CANOAGEM VELOCIDADE', 'CAIAQUE QUµDRUPLO (K4) 1.000M MASCULINO'),
(55, 'CANOAGEM VELOCIDADE', 'CANOA INDIVIDUAL (C1) 200M MASCULINA'),
(56, 'CANOAGEM VELOCIDADE', 'CANOA INDIVIDUAL (C1) 1.000M MASCULINA'),
(57, 'CANOAGEM VELOCIDADE', 'CANOA DUPLA (C2) 1.000M MASCULINA'),
(58, 'CANOAGEM VELOCIDADE', 'CAIAQUE INDIVIDUAL (K1) 200M FEMININO'),
(59, 'CANOAGEM VELOCIDADE', 'CAIAQUE INDIVIDUAL (K1) 500M FEMININO'),
(60, 'CANOAGEM VELOCIDADE', 'CAIAQUE DUPLO (K2) 500M FEMININO'),
(61, 'CANOAGEM VELOCIDADE', 'CAIAQUE QUµDRUPLO (K4) 500M FEMININO'),
(62, 'ESGRIMA', 'FLORETE INDIVIDUAL MASCULINO'),
(63, 'ESGRIMA', 'ESPADA INDIVIDUAL MASCULINA'),
(64, 'ESGRIMA', 'SABRE INDIVIDUAL MASCULINO'),
(65, 'ESGRIMA', 'FLORETE POR EQUIPES MASCULINO'),
(66, 'ESGRIMA', 'ESPADA POR EQUIPES MASCULINA'),
(67, 'ESGRIMA', 'FLORETE INDIVIDUAL FEMININO'),
(68, 'ESGRIMA', 'ESPADA INDIVIDUAL FEMININA'),
(69, 'ESGRIMA', 'SABRE INDIVIDUAL FEMININO'),
(70, 'ESGRIMA', 'ESPADA POR EQUIPES FEMININA'),
(71, 'ESGRIMA', 'SABRE POR EQUIPES FEMININO'),
(72, 'GINASTICA DE TRAMPOLIM', 'Masculino'),
(73, 'GINASTICA DE TRAMPOLIM', 'Feminino'),
(74, 'GINASTICA ROTMICA', 'COMPETICAO INDIVIDUAL GERAL'),
(75, 'GINASTICA ROTMICA', 'COMPETICAO POR EQUIPES GERAL'),
(76, 'JUDO', 'AT 60KG MASCULINO'),
(77, 'JUDO', 'AT 66KG MASCULINO'),
(78, 'JUDO', 'AT 73KG MASCULINO'),
(79, 'JUDO', 'AT 81KG MASCULINO'),
(80, 'JUDO', 'AT 90KG MASCULINO'),
(81, 'JUDO', 'AT 100KG MASCULINO'),
(82, 'JUDO', 'ACIMA DE 100KG MASCULINO'),
(83, 'JUDO', 'AT 48KG FEMININO'),
(84, 'JUDO', 'AT 52KG FEMININO'),
(85, 'JUDO', 'AT 57KG FEMININO'),
(86, 'JUDO', 'AT 63KG FEMININO'),
(87, 'JUDO', 'AT 70KG FEMININO'),
(88, 'JUDO', 'AT 78KG FEMININO'),
(89, 'JUDO', 'ACIMA DE 78KG FEMININO'),
(90, 'LEVANTAMENTO DE PESO', 'AT 56KG MASCULINO'),
(91, 'LEVANTAMENTO DE PESO', 'AT 62KG MASCULINO'),
(92, 'LEVANTAMENTO DE PESO', 'AT 69KG MASCULINO'),
(93, 'LEVANTAMENTO DE PESO', 'AT 77KG MASCULINO'),
(94, 'LEVANTAMENTO DE PESO', 'AT 85KG MASCULINO'),
(95, 'LEVANTAMENTO DE PESO', 'AT 94KG MASCULINO'),
(96, 'LEVANTAMENTO DE PESO', 'AT 105KG MASCULINO'),
(97, 'LEVANTAMENTO DE PESO', 'ACIMA DE 105KG MASCULINO'),
(98, 'LEVANTAMENTO DE PESO', 'AT 48KG FEMININO'),
(99, 'LEVANTAMENTO DE PESO', 'AT 53KG FEMININO'),
(100, 'LEVANTAMENTO DE PESO', 'AT 58KG FEMININO'),
(101, 'LEVANTAMENTO DE PESO', 'AT 63KG FEMININO'),
(102, 'LEVANTAMENTO DE PESO', 'AT 69KG FEMININO'),
(103, 'LEVANTAMENTO DE PESO', 'AT 75KG FEMININO'),
(104, 'LEVANTAMENTO DE PESO', 'ACIMA DE 75KG FEMININO'),
(105, 'LUTA OLIMPICA', 'LUTA GRECO-ROMANA, 59KG MASCULINO'),
(106, 'LUTA OLIMPICA', 'LUTA GRECO-ROMANA, 66KG MASCULINO'),
(107, 'LUTA OLIMPICA', 'LUTA GRECO-ROMANA, 75KG MASCULINO'),
(108, 'LUTA OLIMPICA', 'LUTA GRECO-ROMANA, 85KG MASCULINO'),
(109, 'LUTA OLIMPICA', 'LUTA GRECO-ROMANA, 98KG MASCULINO'),
(110, 'LUTA OLIMPICA', 'LUTA GRECO-ROMANA, 130KG MASCULINO'),
(111, 'LUTA OLIMPICA', 'LUTA LIVRE, 57 MASCULINO'),
(112, 'LUTA OLIMPICA', 'LUTA LIVRE, 65KG MASCULINO'),
(113, 'LUTA OLIMPICA', 'LUTA LIVRE, 74KG MASCULINO'),
(114, 'LUTA OLIMPICA', 'LUTA LIVRE, 86KG MASCULINO'),
(115, 'LUTA OLIMPICA', 'LUTA LIVRE, 97KG MASCULINO'),
(116, 'LUTA OLIMPICA', 'LUTA LIVRE, 125KG MASCULINO'),
(117, 'LUTA OLIMPICA', 'LUTA LIVRE, 48KG FEMININO'),
(118, 'LUTA OLIMPICA', 'LUTA LIVRE, 53KG FEMININO'),
(119, 'LUTA OLIMPICA', 'LUTA LIVRE, 58KG FEMININO'),
(120, 'LUTA OLIMPICA', 'LUTA LIVRE, 63KG FEMININO'),
(121, 'LUTA OLIMPICA', 'LUTA LIVRE, 69KG FEMININO'),
(122, 'LUTA OLIMPICA', 'LUTA LIVRE, 75KG FEMININO'),
(123, 'NATACAO', '50M LIVRE MASCULINO'),
(124, 'NATACAO', '100M LIVRE MASCULINO'),
(125, 'NATACAO', '200M LIVRE MASCULINO'),
(126, 'NATACAO', '400M LIVRE MASCULINO'),
(127, 'NATACAO', '1.500M LIVRE MASCULINO'),
(128, 'NATACAO', 'REVEZAMENTO 4X100M LIVRE MASCULINO'),
(129, 'NATACAO', 'REVEZAMENTO 4X200M LIVRE MASCULINO'),
(130, 'NATACAO', '100M PEITO MASCULINO'),
(131, 'NATACAO', '200M PEITO MASCULINO'),
(132, 'NATACAO', '100M COSTAS MASCULINO'),
(133, 'NATACAO', '200M COSTAS MASCULINO'),
(134, 'NATACAO', '100M BORBOLETA MASCULINO'),
(135, 'NATACAO', '200M BORBOLETA MASCULINO'),
(136, 'NATACAO', '400M MEDLEY MASCULINO'),
(137, 'NATACAO', '200M MEDLEY MASCULINO'),
(138, 'NATACAO', 'REVEZAMENTO 4X100M MEDLEY MASCULINO'),
(139, 'TENIS', 'SIMPLES MASCULINO'),
(140, 'TENIS', 'DUPLAS MASCULINAS'),
(141, 'TENIS', 'SIMPLES FEMININO'),
(142, 'TENIS', 'DUPLAS FEMININAS'),
(143, 'TENIS', 'DUPLAS MISTAS'),
(144, 'TIRO COM ARCO', 'COMPETI€ÇO INDIVIDUAL MASCULINA'),
(145, 'TIRO COM ARCO', 'COMPETI€ÇO POR EQUIPES MASCULINA'),
(146, 'TIRO COM ARCO', 'COMPETI€ÇO INDIVIDUAL FEMININA'),
(147, 'TIRO COM ARCO', 'COMPETI€ÇO POR EQUIPES FEMININA'),
(148, 'TIRO ESPORTIVO', 'CARABINA DE AR 10M MASCULINO'),
(149, 'TIRO ESPORTIVO', 'CARABINA DEITADO 50M MASCULINO'),
(150, 'TIRO ESPORTIVO', 'CARABINA TRÒS POSI€åES 50M MASCULINO'),
(151, 'TIRO ESPORTIVO', 'PISTOLA 50M MASCULINO'),
(152, 'TIRO ESPORTIVO', 'PISTOLA DE TIRO RµPIDO 25M MASCULINO'),
(153, 'TIRO ESPORTIVO', 'PISTOLA DE AR 10M MASCULINO'),
(154, 'TIRO ESPORTIVO', 'FOSSA OLÖMPICA MASCULINO'),
(155, 'TIRO ESPORTIVO', 'FOSSA DOUBLE MASCULINO'),
(156, 'TIRO ESPORTIVO', 'SKEET MASCULINO'),
(157, 'TIRO ESPORTIVO', 'CARABINA DE AR 10M FEMININO'),
(158, 'TIRO ESPORTIVO', 'CARABINA TRÒS POSI€åES 50M FEMININO'),
(159, 'TIRO ESPORTIVO', 'PISTOLA DE AR 10M FEMININO'),
(160, 'TIRO ESPORTIVO', 'PISTOLA 25M FEMININO'),
(161, 'TIRO ESPORTIVO', 'FOSSA OLIMPICA FEMININO'),
(162, 'TIRO ESPORTIVO', 'SKEET FEMININO');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pais`
--

CREATE TABLE `pais` (
  `Cod_Pais` int(11) NOT NULL,
  `Nome_Pais` varchar(40) NOT NULL,
  `Nro_Atletas` int(8) NOT NULL,
  `Continente` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `pais`
--

INSERT INTO `pais` (`Cod_Pais`, `Nome_Pais`, `Nro_Atletas`, `Continente`) VALUES
(1, 'Afeganistao', 3, 'Asia'),
(2, 'Senegal', 21, 'Africa'),
(3, 'PANAMA', 10, 'America do Norte'),
(4, 'Somália', 2, 'África'),
(5, 'georgia', 40, 'americano');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tecnico`
--

CREATE TABLE `tecnico` (
  `Cod_Tec` int(11) NOT NULL,
  `Nome_Tec` varchar(40) NOT NULL,
  `Dt_Nasc_Tec` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `tecnico`
--

INSERT INTO `tecnico` (`Cod_Tec`, `Nome_Tec`, `Dt_Nasc_Tec`) VALUES
(1, 'Desconhecido', 'null'),
(2, 'GAYE Mamadou Moustapha', 'null'),
(3, 'Nemesis Olimpiana', '1978-07-30'),
(5, 'Apolo Olimpiano', '1979-09-03'),
(6, 'zeus Olimpiano', '1974-07-03'),
(7, 'Hercules Olimpiano', '1975-05-24'),
(8, 'Dionisio Olimpiano', '1982-06-30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `atleta`
--
ALTER TABLE `atleta`
  ADD PRIMARY KEY (`Cod_Atleta`),
  ADD KEY `Atleta_Cod_Pais_fk` (`Cod_Pais`),
  ADD KEY `Atleta_Cod_Tec_fk` (`Cod_Tec`);

--
-- Indexes for table `itemmodalidade`
--
ALTER TABLE `itemmodalidade`
  ADD KEY `ItemModalidade_Cod_Atleta_fk` (`Cod_Atleta`),
  ADD KEY `ItemModalidade_Cod_Mod_fk` (`Cod_Mod`);

--
-- Indexes for table `medalhas`
--
ALTER TABLE `medalhas`
  ADD PRIMARY KEY (`Cod_Med`),
  ADD KEY `medalhas_Cod_Atleta_fk` (`Cod_Atleta`);

--
-- Indexes for table `modalidade`
--
ALTER TABLE `modalidade`
  ADD PRIMARY KEY (`Cod_Mod`);

--
-- Indexes for table `pais`
--
ALTER TABLE `pais`
  ADD PRIMARY KEY (`Cod_Pais`);

--
-- Indexes for table `tecnico`
--
ALTER TABLE `tecnico`
  ADD PRIMARY KEY (`Cod_Tec`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `atleta`
--
ALTER TABLE `atleta`
  MODIFY `Cod_Atleta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;
--
-- AUTO_INCREMENT for table `medalhas`
--
ALTER TABLE `medalhas`
  MODIFY `Cod_Med` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;
--
-- AUTO_INCREMENT for table `modalidade`
--
ALTER TABLE `modalidade`
  MODIFY `Cod_Mod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=163;
--
-- AUTO_INCREMENT for table `pais`
--
ALTER TABLE `pais`
  MODIFY `Cod_Pais` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tecnico`
--
ALTER TABLE `tecnico`
  MODIFY `Cod_Tec` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `atleta`
--
ALTER TABLE `atleta`
  ADD CONSTRAINT `Atleta_Cod_Pais_fk` FOREIGN KEY (`Cod_Pais`) REFERENCES `pais` (`Cod_Pais`),
  ADD CONSTRAINT `Atleta_Cod_Tec_fk` FOREIGN KEY (`Cod_Tec`) REFERENCES `tecnico` (`Cod_Tec`);

--
-- Limitadores para a tabela `itemmodalidade`
--
ALTER TABLE `itemmodalidade`
  ADD CONSTRAINT `ItemModalidade_Cod_Atleta_fk` FOREIGN KEY (`Cod_Atleta`) REFERENCES `atleta` (`Cod_Atleta`),
  ADD CONSTRAINT `ItemModalidade_Cod_Mod_fk` FOREIGN KEY (`Cod_Mod`) REFERENCES `modalidade` (`Cod_Mod`);

--
-- Limitadores para a tabela `medalhas`
--
ALTER TABLE `medalhas`
  ADD CONSTRAINT `medalhas_Cod_Atleta_fk` FOREIGN KEY (`Cod_Atleta`) REFERENCES `atleta` (`Cod_Atleta`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
