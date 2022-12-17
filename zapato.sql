-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 12-Out-2022 às 22:15
-- Versão do servidor: 10.4.24-MariaDB
-- versão do PHP: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `zapato`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `dboestilo`
--

CREATE TABLE `dboestilo` (
  `id_estilo` int(11) NOT NULL,
  `estilo` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `dboestilo`
--

INSERT INTO `dboestilo` (`id_estilo`, `estilo`) VALUES
(1, 'Casual'),
(2, 'Deportivo'),
(3, 'Formal');

-- --------------------------------------------------------

--
-- Estrutura da tabela `dbogenero`
--

CREATE TABLE `dbogenero` (
  `id_genero` int(11) NOT NULL,
  `genero` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `dbogenero`
--

INSERT INTO `dbogenero` (`id_genero`, `genero`) VALUES
(1, 'Masculino'),
(2, 'Femenino'),
(3, 'Unisex');

-- --------------------------------------------------------

--
-- Estrutura da tabela `dbotalla`
--

CREATE TABLE `dbotalla` (
  `id_talla` int(11) NOT NULL,
  `talla` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `dbotalla`
--

INSERT INTO `dbotalla` (`id_talla`, `talla`) VALUES
(1, '8'),
(2, '9'),
(12, '5'),
(13, '11');

-- --------------------------------------------------------

--
-- Estrutura da tabela `dbozapato`
--

CREATE TABLE `dbozapato` (
  `id_zapato` int(11) NOT NULL,
  `precio` decimal(18,2) NOT NULL,
  `color` varchar(45) NOT NULL,
  `id_estilo` int(11) NOT NULL,
  `id_talla` int(11) NOT NULL,
  `id_genero` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `dbozapato`
--

INSERT INTO `dbozapato` (`id_zapato`, `precio`, `color`, `id_estilo`, `id_talla`, `id_genero`, `cantidad`) VALUES
(1, '20.00', 'Verde', 1, 1, 1, 45),
(3, '79.01', 'preto', 1, 1, 1, 4),
(4, '67.90', 'dark', 1, 1, 1, 9),
(5, '67.90', 'dblack', 1, 1, 1, 9);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `dboestilo`
--
ALTER TABLE `dboestilo`
  ADD PRIMARY KEY (`id_estilo`);

--
-- Índices para tabela `dbogenero`
--
ALTER TABLE `dbogenero`
  ADD PRIMARY KEY (`id_genero`);

--
-- Índices para tabela `dbotalla`
--
ALTER TABLE `dbotalla`
  ADD PRIMARY KEY (`id_talla`);

--
-- Índices para tabela `dbozapato`
--
ALTER TABLE `dbozapato`
  ADD PRIMARY KEY (`id_zapato`),
  ADD KEY `id_estilo` (`id_estilo`),
  ADD KEY `id_talla` (`id_talla`),
  ADD KEY `id_genero` (`id_genero`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `dboestilo`
--
ALTER TABLE `dboestilo`
  MODIFY `id_estilo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `dbogenero`
--
ALTER TABLE `dbogenero`
  MODIFY `id_genero` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `dbotalla`
--
ALTER TABLE `dbotalla`
  MODIFY `id_talla` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de tabela `dbozapato`
--
ALTER TABLE `dbozapato`
  MODIFY `id_zapato` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `dbozapato`
--
ALTER TABLE `dbozapato`
  ADD CONSTRAINT `dbozapato_ibfk_1` FOREIGN KEY (`id_genero`) REFERENCES `dbogenero` (`id_genero`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `dbozapato_ibfk_2` FOREIGN KEY (`id_talla`) REFERENCES `dbotalla` (`id_talla`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `dbozapato_ibfk_3` FOREIGN KEY (`id_estilo`) REFERENCES `dboestilo` (`id_estilo`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
