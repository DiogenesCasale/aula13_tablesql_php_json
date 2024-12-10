-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 20/11/2024 às 01:47
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `sch`
--
CREATE DATABASE IF NOT EXISTS `sch` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `sch`;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tblchamado`
--

DROP TABLE IF EXISTS `tblchamado`;
CREATE TABLE `tblchamado` (
  `id` int(11) NOT NULL,
  `solicitante` int(11) NOT NULL,
  `departamento` varchar(50) NOT NULL,
  `descrição` varchar(200) NOT NULL,
  `prioridade` int(11) NOT NULL,
  `tecnico_responsavel` int(11) NOT NULL,
  `data_limite` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `tbldepartamento`
--

DROP TABLE IF EXISTS `tbldepartamento`;
CREATE TABLE `tbldepartamento` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tbldepartamento`
--

INSERT INTO `tbldepartamento` (`id`, `nome`) VALUES
(1, 'RH'),
(2, 'Administração'),
(3, 'Contabilidade'),
(4, 'Vendas');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tblusuario`
--

DROP TABLE IF EXISTS `tblusuario`;
CREATE TABLE `tblusuario` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `senha` varchar(256) NOT NULL,
  `tecnico` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `tblusuario`
--

INSERT INTO `tblusuario` (`id`, `nome`, `email`, `senha`, `tecnico`) VALUES
(1, 'Primeiro Teste', 'teste@teste.com', 'teste12345', 0),
(2, 'João Cagamuro', 'joaozin@site.com', '12345678', 0),
(3, 'Mauro Careca', 'mauro@site.com', '56412', 0),
(4, 'Didizn', 'didi@site.com', 'didi321', 0),
(5, 'Lara Zn', 'laraff@site.com', '96325', 0),
(6, 'Maurex', 'maurao@site.com', '258711', 0),
(7, 'Daniel Guardinha', 'guarda@site.com', 'exercito321', 0),
(8, 'Joaninhaa', 'joanacreu@site.com', '79643468', 0),
(9, 'ciclano', 'oakley@site.com', '318646', 0),
(10, 'Vinizin da Zo', 'vinizni@site.com', '7981345', 0),
(11, 'Gabriel GG', 'gordin@site.com', '6198176', 0);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `tblchamado`
--
ALTER TABLE `tblchamado`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `tbldepartamento`
--
ALTER TABLE `tbldepartamento`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `tblusuario`
--
ALTER TABLE `tblusuario`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `tblchamado`
--
ALTER TABLE `tblchamado`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tbldepartamento`
--
ALTER TABLE `tbldepartamento`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `tblusuario`
--
ALTER TABLE `tblusuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
