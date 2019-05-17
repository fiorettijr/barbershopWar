-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 17-Maio-2019 às 04:25
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
(11, '2019-05-13', '12:00', 46, 53, 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `servicos`
--

CREATE TABLE `servicos` (
  `id` int(11) NOT NULL,
  `nome` varchar(200) NOT NULL,
  `preco` int(11) NOT NULL,
  `descricao` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `servicos`
--

INSERT INTO `servicos` (`id`, `nome`, `preco`, `descricao`) VALUES
(1, 'Corte', 25, 'Corte de cabelo tradicional'),
(2, 'Barba', 20, 'Corte de barba tradicional'),
(3, 'Luzes', 50, 'Deixa o cabelo com as pontas loiras'),
(4, 'Platinar', 100, 'Deixa o cabelo platinado, patrão.');

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
  `nivel` tinyint(4) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `cpf`, `email`, `senha`, `nivel`) VALUES
(46, 'Eduardo Fioretti Junior', '44582554873', 'fiorettijr@gmail.com', 'fiorettijr', 1),
(47, 'Pedro', '89823928', 'pedro@pedro', 'senhasenha', 1),
(48, 'Eduardo Fioretti Junior', '4458255487', 'fiorettijr@gmail', 'asdasdasd', 1),
(49, 'Eduardo Fioretti Junior', '123123', 'fiorettijr@g', '123123123', 1),
(50, 'teste', '123123123', 'teste@teste', 'asdasdasd', 1),
(51, 'teste', '232112', 'fiorettijr@teste.com', 'asdasdasd', 1),
(52, 'Eduardo Fioretti Junior', '445825548', 'fiorettijr@gmail.c', 'asdasdasd', 1),
(53, 'barbeiro da silva', '4444444444', 'barbeiro@barbeiro', 'barbeiro', 2),
(54, 'barber silvester', '6456456453', 'barber@barber', 'barber', 2),
(55, ' Adm Barber Shop', '11111111111', 'adm@adm', 'adm', 3),
(56, 'Eduardo Fioretti Junior', '44582554874', 'fifi@fifi', 'asdasdasd', 1);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `servicos`
--
ALTER TABLE `servicos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

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
