-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 12-Jun-2019 às 05:52
-- Versão do servidor: 10.1.32-MariaDB
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbbarbershop`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `agendamento`
--

CREATE TABLE `agendamento` (
  `id` int(11) NOT NULL,
  `dia` date NOT NULL,
  `hora` varchar(10) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `id_barbeiro` int(11) NOT NULL,
  `id_servico` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `agendamento`
--

INSERT INTO `agendamento` (`id`, `dia`, `hora`, `id_usuario`, `id_barbeiro`, `id_servico`) VALUES
(1, '2019-06-06', '18:00', 46, 53, 2),
(3, '2019-06-06', '18:30', 46, 54, 4),
(4, '2019-06-07', '18:00', 46, 54, 2),
(6, '2019-06-07', '18:30', 46, 53, 3),
(7, '2019-06-07', '12:30', 46, 53, 4),
(8, '2019-06-06', '18:00', 46, 54, 1),
(11, '2019-05-13', '12:00', 46, 53, 2),
(14, '2019-05-17', '18:00', 46, 53, 1),
(15, '2019-05-17', '18:30', 46, 53, 4),
(16, '2019-05-11', '18:30', 46, 53, 4),
(17, '2019-05-02', '18:30', 46, 53, 2),
(18, '2019-05-18', '18:00', 46, 54, 1),
(19, '2019-05-18', '18:30', 46, 54, 4),
(20, '2019-05-18', '14:00', 47, 54, 3),
(21, '2019-05-18', '17:00', 47, 59, 2),
(22, '2019-06-05', '18:30', 46, 53, 6),
(23, '2019-06-06', '18:00', 46, 59, 6),
(24, '2019-06-12', '08:30', 46, 54, 1),
(25, '2019-06-20', '15:30', 46, 53, 4),
(26, '2019-06-13', '18:30', 46, 54, 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `servicos`
--

CREATE TABLE `servicos` (
  `id` int(11) NOT NULL,
  `nome` varchar(200) NOT NULL,
  `preco` float NOT NULL,
  `descricao` varchar(200) NOT NULL,
  `dt_excluir` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `servicos`
--

INSERT INTO `servicos` (`id`, `nome`, `preco`, `descricao`, `dt_excluir`) VALUES
(1, 'Corte', 24.95, 'Corte tradicional', NULL),
(2, 'Barba', 20, 'Corte de barba tradicional', NULL),
(3, 'Luzes', 50, 'Deixa o cabelo com as pontas loiras', NULL),
(4, 'Platinar', 100, 'Deixa o cabelo platinado, patrão.', '11/06/2019'),
(5, 'Escova', 24, 'Escova no cabelo pra ficar liso e chave', NULL),
(6, 'Bigodin', 34.25, 'FININ D+', NULL),
(7, 'Platinar', 23.4, 'Platina show', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nome` varchar(90) NOT NULL,
  `cpf` varchar(20) NOT NULL,
  `email` varchar(90) NOT NULL,
  `senha` varchar(50) NOT NULL,
  `nivel` tinyint(4) NOT NULL DEFAULT '1',
  `dt_excluir` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `cpf`, `email`, `senha`, `nivel`, `dt_excluir`) VALUES
(46, 'Eduardo Fioretti Jr', '44582554873', 'fiorettijr@gmail.com', 'fiorettijr', 1, NULL),
(47, 'Pedro Luis', '89823928', 'pedro@pedro', 'senhasenha', 1, NULL),
(48, 'Eduardo Fioretti Junior', '4458255487', 'fiorettijr@gmail', 'asdasdasd', 1, NULL),
(49, 'Eduardo Fioretti Junior', '123123', 'fiorettijr@g', '123123123', 1, NULL),
(50, 'teste', '123123123', 'teste@teste', 'asdasdasd', 1, NULL),
(51, 'teste', '232112', 'fiorettijr@teste.com', 'asdasdasd', 1, NULL),
(52, 'Eduardo Fioretti Junior', '445825548', 'fiorettijr@gmail.c', 'asdasdasd', 1, NULL),
(53, 'barbeiro da silva', '4444444444', 'barbeiro@barbeiro', 'barbeiro', 2, NULL),
(54, 'barber silvester', '6456456453', 'barber@barber', 'barber', 2, NULL),
(55, ' Adm Barber Shop', '11111111111', 'adm@adm', 'adm', 3, NULL),
(56, 'Eduardo Fioretti Junior', '44582554874', 'fifi@fifi', 'asdasdasd', 1, NULL),
(58, 'Eduardo Fioretti Junior', '44582554234', 'fiorettijr@gegege', 'asdasdasd', 1, NULL),
(59, 'Jeremias Linkin Park', '44444444444', 'jeremiasbarber@gmail.com', 'jeremias', 2, '11/06/2019'),
(60, 'Eduardo Fioretti Junior', '44582552332', 'fiorettijr@qweqwe', 'asdasdasd', 1, NULL),
(61, 'Eduardo Fioretti Junior', '12039023922', 'fiorettijr@com', 'asdasd', 1, NULL),
(63, 'Eduardo Fioretti Junior', '44234444873', 'fiore23ttijr@gmail.com', 'asdasd', 2, '11/06/2019');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agendamento`
--
ALTER TABLE `agendamento`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_barbeiro` (`id_barbeiro`) USING BTREE,
  ADD KEY `fk_usuario` (`id_usuario`),
  ADD KEY `fk_servico` (`id_servico`);

--
-- Indexes for table `servicos`
--
ALTER TABLE `servicos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `agendamento`
--
ALTER TABLE `agendamento`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `servicos`
--
ALTER TABLE `servicos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `agendamento`
--
ALTER TABLE `agendamento`
  ADD CONSTRAINT `fk_barbeiro` FOREIGN KEY (`id_barbeiro`) REFERENCES `usuarios` (`id`),
  ADD CONSTRAINT `fk_servico` FOREIGN KEY (`id_servico`) REFERENCES `servicos` (`id`),
  ADD CONSTRAINT `fk_usuario` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
