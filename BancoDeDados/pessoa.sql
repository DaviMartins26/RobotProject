-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 17/05/2025 às 13:19
-- Versão do servidor: 10.4.32-MariaDB
-- Versão do PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `puc_achados`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `pessoa`
--

CREATE TABLE `pessoa` (
  `cpf` char(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `senha` varchar(255) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `matricula` varchar(45) DEFAULT NULL,
  `registro_puc` varchar(45) DEFAULT NULL,
  `acesso_nivel` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Despejando dados para a tabela `pessoa`
--

INSERT INTO `pessoa` (`cpf`, `email`, `senha`, `nome`, `matricula`, `registro_puc`, `acesso_nivel`) VALUES
('12345678111', 'davi@este.com.br', '$2y$10$B9cMsjO8L0thfLhBilZn1eBf5MsaoLP5/F7mh6foEreepyApA2eKm', ' 12', ' ', NULL, 0),
('12345678910', 'adm@adm.com', '$2y$10$WE7m9kb2/cj7PwguRZf67uMbrCTrLkHPX8fjhdCQvBI47HkROFzCO', 'adm_nome', NULL, ' 15nu51o9', 2),
('12345678911', 'funcionario@pucpr.br', '$2y$10$vXaKefhoPvVNssgLpw.kdegVBM9f9qXR0/lKB8rT1qDZ13Sw47f42', 'Funcionário Generico ', NULL, '4iin59n8n', 1),
('12345678912', 'aluno@pucpr.edu.br', '$2y$10$HcA2pVMH0RmjSKpKIGYI1eRaPiAiZllFv2I8s7eX9WdwfSoMM9Dai', 'Aluno Generico', '1985569091', NULL, 0),
('12345678913', 'renato@pucpr.br', '$2y$10$9tdG1dTZNObNp6Q0A/aeEeOHr/DL3PPG.dUFJSHiSwA088f7JNzIq', 'Renato Silva', NULL, '185ngfu50n', 2),
('12345678915', 'moura@pucpr.br', '$2y$10$H9rOKa0DXwewqzP47pThYusBXB08/Td9cWq3/tHqxG41RFwOxhwEa', 'Vinicius Moura', NULL, '55niv21n93', 1),
('12345678921', 'vetri@gmail.com', '$2y$10$ArY1yecqPWLeyB/vpvtzlOYmC1zeBpK0v7gk.PobYJfftBsPfeOLu', 'Paulo Vetri', '134569483', NULL, 0),
('12345678923', 'neves@yoahoo.com', '$2y$10$qXhGnMIvd.0D6mAk9CCP0uNfFezFAzS/Du1rb2a4ZGLFojnrfEwXq', 'Felipe Neves', '123456472', NULL, 0),
('12345678924', 'enzo@pucpr.edu.br', '$2y$10$VzhsfBTr3e0QQe1eTnUDke1y.vzR.eWxuED1JAODa2i/.8jIMiUGm', 'Enzo Miguel', '12426421', NULL, 0),
('12345678926', 'carla@gmail.com', '$2y$10$JGrboxIuz/WVOTHwuS0e6unT4nLiwAYPwpQV6Fvmohv9qFt4DuEqa', 'Carla Silva', '', NULL, 0),
('12345678927', 'adilson@gmail.com', '$2y$10$913H2oMlsbAgjJ1ctGozauNPGHvEuz6i7mHPWlukeveMGiLtWFCIW', 'Adilson Jurandir', '81826', NULL, 0),
('12345698737', 'criandoHash@gmail.com', '$2y$10$vXaKefhoPvVNssgLpw.kdegVBM9f9qXR0/lKB8rT1qDZ13Sw47f42', 'criandoHash@gmail.com', NULL, NULL, 0);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `pessoa`
--
ALTER TABLE `pessoa`
  ADD PRIMARY KEY (`cpf`),
  ADD UNIQUE KEY `cpf` (`cpf`),
  ADD UNIQUE KEY `email` (`email`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
