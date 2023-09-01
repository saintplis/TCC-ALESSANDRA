-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 01/09/2023 às 18:48
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `db_copperton`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_carrinho`
--

CREATE TABLE `tb_carrinho` (
  `ID_CARRINHO` int(4) NOT NULL,
  `ID_PRODUTO` int(4) NOT NULL,
  `ID_CLIENTE` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `tb_carrinho`
--

INSERT INTO `tb_carrinho` (`ID_CARRINHO`, `ID_PRODUTO`, `ID_CLIENTE`) VALUES
(75, 33, 2),
(76, 32, 2),
(94, 26, 16),
(95, 36, 16),
(107, 26, 3);

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_cliente`
--

CREATE TABLE `tb_cliente` (
  `ID_CLIENTE` int(4) NOT NULL,
  `CLI_NOME` char(20) NOT NULL,
  `CLI_SOBRENOME` char(80) NOT NULL,
  `CLI_CPF` varchar(11) NOT NULL,
  `CLI_DTNASC` date NOT NULL,
  `CLI_SEXO` char(1) NOT NULL,
  `CLI_ESTADOCIVIL` char(20) NOT NULL,
  `CLI_EMAIL` varchar(80) NOT NULL,
  `CLI_TELEFONE1` bigint(11) NOT NULL,
  `CLI_TELEFONE2` bigint(11) DEFAULT NULL,
  `CLI_CEP` varchar(8) NOT NULL,
  `CLI_PAIS` char(50) NOT NULL,
  `CLI_UF` char(2) NOT NULL,
  `CLI_CIDADE` varchar(80) NOT NULL,
  `CLI_BAIRRO` varchar(80) NOT NULL,
  `CLI_RUA` varchar(80) NOT NULL,
  `CLI_NUMERO` int(4) NOT NULL,
  `CLI_DTCAD` date NOT NULL DEFAULT current_timestamp(),
  `CLI_STATUS` char(5) NOT NULL DEFAULT 'true'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `tb_cliente`
--

INSERT INTO `tb_cliente` (`ID_CLIENTE`, `CLI_NOME`, `CLI_SOBRENOME`, `CLI_CPF`, `CLI_DTNASC`, `CLI_SEXO`, `CLI_ESTADOCIVIL`, `CLI_EMAIL`, `CLI_TELEFONE1`, `CLI_TELEFONE2`, `CLI_CEP`, `CLI_PAIS`, `CLI_UF`, `CLI_CIDADE`, `CLI_BAIRRO`, `CLI_RUA`, `CLI_NUMERO`, `CLI_DTCAD`, `CLI_STATUS`) VALUES
(1, 'Aparecida', 'Ferreira', '12345678912', '2023-02-14', 'F', 'Casado', 'aparecida.ferreira@gmail.com', 45999003009, 4599990000, '85807670', 'Brasil', 'PR', 'Cascavel', 'Parque Verde', 'Araucaria', 392, '2023-06-02', 'true'),
(2, 'Lucas', 'Chasco', '11544951914', '2005-06-16', 'M', 'Solteiro', 'lucasjc2005@gmail.com', 45984319023, 45984151156, '85803620', 'Brasil', 'PR', 'Cascavel', 'Faculdade', 'Rua Gurgel', 454, '2023-06-02', 'true'),
(3, 'Rafael', 'Dos Santos', '06998647980', '2005-02-16', 'M', 'Casado', 'rafaelsantos.2020dc@gmail.com', 45998064904, 4532238480, '85805420', 'Brasil', 'PR', 'Cascavel', 'Pioneiros Catarinenses', 'Janio Quadros', 370, '2023-05-23', 'true'),
(15, 'Douglas', 'Maurício', '98427394872', '2005-02-16', 'M', 'Casado', 'teste@gmail.com', 45984319023, 45984319023, '85803620', 'Brasil', 'AC', 'Cascavel', 'Pioneiros Catarinenses', 'Rua Gurgel', 454, '2023-06-10', 'true'),
(16, 'Igor', 'Augusto Fonte', '78204628613', '2003-01-09', 'M', 'Solteiro', 'igor.augusto@gmail.com', 45999753923, 0, '84823953', 'Brasil', 'SP', 'Santos', 'Primavera', 'Carlos de Carvalho', 782, '2023-06-28', 'true'),
(17, 'Giuseph', 'Cammoli', '78387129837', '2000-04-04', 'M', 'Viúvo', 'giuseph.cammoli@gmail.com', 45984319023, 4532238480, '85803620', 'Brasil', 'PE', 'Cascavel', 'Faculdade', 'Rua Gurgel', 454, '2023-08-09', 'true'),
(18, 'Eliane Maria', 'Cristo', '00000000000', '1990-02-10', 'F', 'Casado', 'eliane.cristo@gmail.com', 45984319023, 45984319023, '85803620', 'Brasil', 'AC', 'Cascavel', 'Parque Verde', 'Rua Gurgel', 454, '2023-08-10', 'true');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_feedback`
--

CREATE TABLE `tb_feedback` (
  `ID_FEEDBACK` int(4) NOT NULL,
  `ID_CLIENTE` int(4) NOT NULL,
  `ID_PRODUTO` int(4) NOT NULL,
  `FED_NOME` char(80) NOT NULL,
  `FED_EMAIL` varchar(80) NOT NULL,
  `FED_DESCRICAO` text NOT NULL,
  `FED_NOTA` int(1) NOT NULL,
  `FED_DTFEEDBACK` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `tb_feedback`
--

INSERT INTO `tb_feedback` (`ID_FEEDBACK`, `ID_CLIENTE`, `ID_PRODUTO`, `FED_NOME`, `FED_EMAIL`, `FED_DESCRICAO`, `FED_NOTA`, `FED_DTFEEDBACK`) VALUES
(1, 3, 1, 'Rafael Dos Santos', 'rafaelsantos.2020dc@gmail.com', 'sla', 5, '2023-05-31'),
(2, 3, 1, 'Rafael Dos Santos', 'rafaelsantos.2020dc@gmail.com', 'wasd', 1, '2023-05-31'),
(3, 3, 3, 'Rafael Dos Santos', 'rafaelsantos.2020dc@gmail.com', 'post', 3, '2023-05-31'),
(4, 3, 7, 'Rafael Dos Santos', 'rafaelsantos.2020dc@gmail.com', 'Produto top dmais, super recomendo!', 4, '2023-05-31'),
(5, 3, 3, 'Rafael Dos Santos', 'rafaelsantos.2020dc@gmail.com', 'opa', 4, '2023-05-31'),
(6, 3, 1, 'Rafael Dos Santos', 'rafaelsantos.2020dc@gmail.com', 'teste', 4, '2023-05-31'),
(7, 3, 1, 'Rafael Dos Santos', 'rafaelsantos.2020dc@gmail.com', 'teste2', 2, '2023-05-31'),
(8, 3, 1, 'Rafael Dos Santos', 'rafaelsantos.2020dc@gmail.com', 'teste3', 3, '2023-05-31'),
(9, 3, 1, 'Rafael Dos Santos', 'rafaelsantos.2020dc@gmail.com', 'teste4', 4, '2023-05-31'),
(10, 3, 4, 'Rafael Dos Santos', 'rafaelsantos.2020dc@gmail.com', 'teste final!!!', 5, '2023-05-31'),
(11, 3, 7, 'Rafael Dos Santos', 'rafaelsantos.2020dc@gmail.com', 'Produto topzera, e agora com o feedback funfando :)', 4, '2023-05-31'),
(12, 2, 4, 'Lucas Chasco', 'lucasjc2005@gmail.com', 'Comprei a camisa muito linda maravilhosa e cheirosa', 5, '2023-06-01'),
(13, 2, 3, 'Lucas Chasco', 'lucasjc2005@gmail.com', 'Bom dia, comprei esta camiseta na loja Copperton do tamanho G sob promoção de Dia do Fallen, passado 3 dias da encomenda acordei esplendoroso com o carteiro batendo palma em minha casa com a encomenda que eu solicitei em suas mãos. Recebi o pacote e logo fui provar, em minha humilde residência, constatei tal procedência e qualidade de tal produto.', 5, '2023-06-02'),
(14, 3, 3, 'Rafael Dos Santos', 'rafaelsantos.2020dc@gmail.com', 'Bom dia, comprei esta camiseta na loja Copperton do tamanho G sob promoção de Dia do Fallen, passado 3 dias da encomenda acordei esplendoroso com o carteiro batendo palma em minha casa com a encomenda que eu solicitei em suas mãos. Recebi o pacote e logo fui provar, em minha humilde residência, constatei tal procedência e qualidade de tal produto.', 5, '2023-06-02'),
(18, 3, 1, 'Rafael Dos Santos', 'rafaelsantos.2020dc@gmail.com', 'Apenas um teste', 4, '2023-06-14'),
(19, 3, 26, 'Simão Kliemann', 'simao@gmail.com', 'Ficou pequena e veio errado', 4, '2023-06-22'),
(20, 16, 26, 'Igor Augusto Fonte', 'igor.augusto@gmail.com', 'Produto muito bom e acessível, super recomendo.', 5, '2023-06-28'),
(21, 2, 7, 'Lucas Chasco', 'lucasjc2005@gmail.com', 'Bom dia, comprei esta camiseta na loja Copperton do tamanho G sob promoção de Dia do Fallen, passado 3 dias da encomenda acordei esplendoroso com o carteiro batendo palma em minha casa com a encomenda que eu solicitei em suas mãos. Recebi o pacote e logo fui provar, em minha humilde residência, constatei tal procedência e qualidade de tal produto.', 5, '2023-08-04'),
(22, 2, 4, 'Lucas Chasco', 'lucasjc2005@gmail.com', 'Bom dia, comprei esta camiseta na loja Copperton do tamanho G sob promoção de Dia do Fallen, passado 3 dias da encomenda acordei esplendoroso com o carteiro batendo palma em minha casa com a encomenda que eu solicitei em suas mãos. Recebi o pacote e logo fui provar, em minha humilde residência, constatei tal procedência e qualidade de tal produto.', 5, '2023-08-04'),
(23, 2, 1, 'Lucas Chasco', 'lucasjc2005@gmail.com', 'Bom dia, comprei esta camiseta na loja Copperton do tamanho G sob promoção de Dia do Fallen, passado 3 dias da encomenda acordei esplendoroso com o carteiro batendo palma em minha casa com a encomenda que eu solicitei em suas mãos. Recebi o pacote e logo fui provar, em minha humilde residência, constatei tal procedência e qualidade de tal produto.', 5, '2023-08-04'),
(24, 2, 27, 'Lucas Chasco', 'lucasjc2005@gmail.com', 'Bom dia, comprei esta camiseta na loja Copperton do tamanho G sob promoção de Dia do Fallen, passado 3 dias da encomenda acordei esplendoroso com o carteiro batendo palma em minha casa com a encomenda que eu solicitei em suas mãos. Recebi o pacote e logo fui provar, em minha humilde residência, constatei tal procedência e qualidade de tal produto.', 5, '2023-08-04'),
(25, 2, 2, 'Lucas Chasco', 'lucasjc2005@gmail.com', 'Bom dia, comprei esta camiseta na loja Copperton do tamanho G sob promoção de Dia do Fallen, passado 3 dias da encomenda acordei esplendoroso com o carteiro batendo palma em minha casa com a encomenda que eu solicitei em suas mãos. Recebi o pacote e logo fui provar, em minha humilde residência, constatei tal procedência e qualidade de tal produto.', 4, '2023-08-04'),
(26, 2, 26, 'Lucas Chasco', 'lucasjc2005@gmail.com', 'Bom dia, comprei esta camiseta na loja Copperton do tamanho G sob promoção de Dia do Fallen, passado 3 dias da encomenda acordei esplendoroso com o carteiro batendo palma em minha casa com a encomenda que eu solicitei em suas mãos. Recebi o pacote e logo fui provar, em minha humilde residência, constatei tal procedência e qualidade de tal produto.', 5, '2023-08-04'),
(27, 2, 5, 'Lucas Chasco', 'lucasjc2005@gmail.com', 'Bom dia, comprei esta camiseta na loja Copperton do tamanho G sob promoção de Dia do Fallen, passado 3 dias da encomenda acordei esplendoroso com o carteiro batendo palma em minha casa com a encomenda que eu solicitei em suas mãos. Recebi o pacote e logo fui provar, em minha humilde residência, constatei tal procedência e qualidade de tal produto.', 5, '2023-08-04'),
(28, 2, 2, 'Lucas Chasco', 'lucasjc2005@gmail.com', 'Bom dia, comprei esta camiseta na loja Copperton do tamanho G sob promoção de Dia do Fallen, passado 3 dias da encomenda acordei esplendoroso com o carteiro batendo palma em minha casa com a encomenda que eu solicitei em suas mãos. Recebi o pacote e logo fui provar, em minha humilde residência, constatei tal procedência e qualidade de tal produto.', 5, '2023-08-04'),
(29, 2, 36, 'Lucas Chasco', 'lucasjc2005@gmail.com', 'Bom dia, comprei o moletom e veio um filhote de sapo no pacote, irei processar a sua empresa.', 2, '2023-08-04'),
(30, 2, 28, 'Lucas Chasco', 'lucasjc2005@gmail.com', 'Bom dia, comprei o produto na quarta feira e recebi logo após o dia seguinte, muito rápida a entrega e de excelente qualidade o produto.', 5, '2023-08-04'),
(31, 2, 36, 'Rafael Dos Santos', 'rafaelsantos.2020dc@gmail.com', 'Teste', 2, '2023-08-04'),
(32, 2, 36, 'Rafael Dos Santos', 'rafaelsantos.2020dc@gmail.com', 'teste2', 4, '2023-08-04'),
(33, 3, 40, 'Rafael Dos Santos', 'rafaelsantos.2020dc@gmail.com', 'Calça muito boa, super recomendo!!', 4, '2023-08-09');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_funcionario`
--

CREATE TABLE `tb_funcionario` (
  `ID_FUNCIONARIO` int(4) NOT NULL,
  `FUN_NOME` char(20) NOT NULL,
  `FUN_SOBRENOME` char(80) NOT NULL,
  `FUN_CPF` varchar(11) NOT NULL,
  `FUN_DTNASC` date NOT NULL,
  `FUN_SEXO` char(1) NOT NULL,
  `FUN_ESTADOCIVIL` char(20) NOT NULL,
  `FUN_EMAIL` varchar(80) NOT NULL,
  `FUN_TELEFONE1` bigint(11) NOT NULL,
  `FUN_TELEFONE2` bigint(11) DEFAULT NULL,
  `FUN_PAIS` char(80) NOT NULL,
  `FUN_UF` char(2) NOT NULL,
  `FUN_CIDADE` varchar(80) NOT NULL,
  `FUN_CEP` varchar(8) NOT NULL,
  `FUN_BAIRRO` varchar(80) NOT NULL,
  `FUN_RUA` varchar(80) NOT NULL,
  `FUN_NUMERO` int(4) NOT NULL,
  `FUN_CARGO` char(30) NOT NULL,
  `FUN_SETOR` char(30) NOT NULL,
  `FUN_SALARIO` decimal(10,0) NOT NULL,
  `FUN_DTCAD` date NOT NULL DEFAULT current_timestamp(),
  `FUN_STATUS` char(5) NOT NULL DEFAULT 'true'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `tb_funcionario`
--

INSERT INTO `tb_funcionario` (`ID_FUNCIONARIO`, `FUN_NOME`, `FUN_SOBRENOME`, `FUN_CPF`, `FUN_DTNASC`, `FUN_SEXO`, `FUN_ESTADOCIVIL`, `FUN_EMAIL`, `FUN_TELEFONE1`, `FUN_TELEFONE2`, `FUN_PAIS`, `FUN_UF`, `FUN_CIDADE`, `FUN_CEP`, `FUN_BAIRRO`, `FUN_RUA`, `FUN_NUMERO`, `FUN_CARGO`, `FUN_SETOR`, `FUN_SALARIO`, `FUN_DTCAD`, `FUN_STATUS`) VALUES
(2, 'Lucas', 'Chasco', '11465734529', '2005-06-16', 'M', 'Solteiro', 'lucasjc2005@copperton.com', 45984319023, 0, 'Brasil', 'PR', 'Cascavel', '85803620', 'Faculdade', 'Rua Gurgel', 454, 'CEO', 'Administrativo', 200000, '2023-05-19', 'true'),
(3, 'Aparecida', 'Ferreira', '0000000000', '2000-02-14', 'F', 'Casado', 'aparecida.ferreira@copperton.com', 45999003009, 0, 'Brasil', 'PR', 'Cascavel', '00000000', 'Parque Verde', 'Araucaria', 392, 'Supervisor', 'Financeiro', 0, '2023-05-19', 'true'),
(4, 'Rafael', 'Dos Santos', '06998647980', '2005-02-16', 'M', 'Solteiro', 'rafael.dossantos@copperton.com', 45998064904, 4532238480, 'Brasil', 'PR', 'Cascavel', '85805420', 'Pioneiros Catarinenses', 'Janio Quadros', 370, 'CEO', 'Operacional', 10000, '2023-05-23', 'true'),
(11, 'Teste', 'Teste', '27648720394', '2005-02-16', 'M', 'Solteiro', 'teste@copperton.com.br', 45984319023, 45984319023, 'Brasil', 'AC', 'Cascavel', '85803620', 'Pioneiros Catarinenses', 'Rua Gurgel', 454, 'CEO', 'Administrativo', 100, '2023-06-10', 'true'),
(12, 'Luan', 'Andrade Vasconcelos', '82634103722', '1997-07-28', 'M', 'Solteiro', 'luan.andrade@copperton.com', 47985382033, 0, 'Brasil', 'RS', 'Porto Alegre', '82038482', 'Centro', 'Vitória', 1780, 'Analista', 'Comercial', 3500, '2023-06-28', 'true'),
(13, 'Mathias', 'Da Silva', '09123647343', '1980-04-12', 'M', 'Casado', 'mathias.dasilva@copperton.com', 45998064904, 45984319023, 'Brasil', 'MA', 'Cascavel', '85803620', 'Parque Verde', 'Rua Gurgel', 454, 'Assistente', 'Comercial', 1800, '2023-08-09', 'true');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_login`
--

CREATE TABLE `tb_login` (
  `ID_LOGIN` int(11) NOT NULL,
  `ID_CLIENTE` int(4) DEFAULT NULL,
  `ID_FUNCIONARIO` int(4) DEFAULT NULL,
  `LOG_NOME` char(20) NOT NULL,
  `LOG_EMAIL` varchar(80) NOT NULL,
  `LOG_SENHA` varchar(20) NOT NULL,
  `LOG_USERTYPE` char(5) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `tb_login`
--

INSERT INTO `tb_login` (`ID_LOGIN`, `ID_CLIENTE`, `ID_FUNCIONARIO`, `LOG_NOME`, `LOG_EMAIL`, `LOG_SENHA`, `LOG_USERTYPE`) VALUES
(4, NULL, 3, 'Aparecida', 'aparecida.ferreira@copperton.com', 'aparecida00', 'on'),
(5, NULL, 4, 'Rafael', 'rafael.dossantos@copperton.com.br', 'admin', 'on'),
(6, 3, NULL, 'Rafael', 'rafaelsantos.2020dc@gmail.com', 'user123', 'user'),
(7, 2, NULL, 'Lucas', 'lucasjc2005@gmail.com', 'chasco4526', 'user'),
(8, 1, NULL, 'Aparecida', 'aparecida.ferreira@gmail.com', '123456', 'user'),
(22, NULL, 11, 'Paulo', 'teste@copperton.com.br', 'teste123', 'on'),
(24, 15, NULL, 'Douglas', 'teste@gmail.com', 'user123$', 'user'),
(25, 16, NULL, 'Igor', 'igor.augusto@gmail.com', 'user123$', 'user'),
(27, 17, NULL, 'Giuseph', 'giuseph.cammoli@gmail.com', 'user123$', 'user'),
(29, 18, NULL, 'Eliane Maria', 'eliane.cristo@gmail.com', 'admin123$', 'user');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_pedido`
--

CREATE TABLE `tb_pedido` (
  `ID_PEDIDO` int(4) NOT NULL,
  `ID_CLIENTE` int(4) NOT NULL,
  `ID_PRODUTO` int(4) NOT NULL,
  `PED_PAGAMENTO` varchar(40) NOT NULL,
  `PED_QUANTIDADE` int(2) NOT NULL,
  `PED_TOTAL` float(10,2) NOT NULL,
  `PED_DTPEDIDO` date NOT NULL DEFAULT current_timestamp(),
  `PED_ENTREGA` char(5) NOT NULL DEFAULT 'false'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `tb_pedido`
--

INSERT INTO `tb_pedido` (`ID_PEDIDO`, `ID_CLIENTE`, `ID_PRODUTO`, `PED_PAGAMENTO`, `PED_QUANTIDADE`, `PED_TOTAL`, `PED_DTPEDIDO`, `PED_ENTREGA`) VALUES
(22, 3, 5, 'credito', 0, 0.00, '2023-07-02', 'false'),
(23, 3, 1, 'credito', 0, 0.00, '2023-07-02', 'false'),
(24, 3, 5, 'debito', 0, 0.00, '2023-07-02', 'false'),
(27, 3, 1, 'credito', 4, 0.00, '2023-07-08', 'false'),
(28, 3, 7, 'credito', 4, 0.00, '2023-07-08', 'false'),
(33, 3, 4, 'debito', 2, 0.00, '2023-07-08', 'false'),
(34, 3, 7, 'debito', 3, 0.00, '2023-07-08', 'false'),
(35, 16, 26, 'credito', 2, 0.00, '2023-07-08', 'false'),
(36, 16, 3, 'credito', 5, 0.00, '2023-07-08', 'false'),
(39, 2, 4, 'debito', 1, 0.00, '2023-07-08', 'false'),
(40, 2, 5, 'debito', 4, 0.00, '2023-07-08', 'false'),
(41, 3, 27, 'debito', 2, 79.99, '2023-07-10', 'false'),
(42, 3, 26, 'debito', 3, 79.99, '2023-07-10', 'false'),
(43, 3, 1, 'credito', 2, 89.90, '2023-07-10', 'false'),
(44, 3, 29, 'credito', 1, 299.99, '2023-07-10', 'false'),
(45, 3, 27, 'credito', 2, 277.80, '2023-07-10', 'false'),
(46, 3, 35, 'credito', 5, 249.50, '2023-07-10', 'true'),
(47, 3, 31, 'credito', 4, 43.60, '2023-07-10', 'true'),
(48, 3, 31, 'credito', 1, 10.00, '2023-07-13', 'false'),
(49, 3, 31, 'credito', 1, 10.00, '2023-07-13', 'false'),
(50, 3, 36, 'credito', 1, 209.00, '2023-07-13', 'false'),
(51, 3, 28, 'credito', 2, 438.00, '2023-07-13', 'false'),
(52, 3, 38, 'credito', 1, 37.00, '2023-08-04', 'false'),
(53, 3, 40, 'credito', 2, 174.00, '2023-08-09', 'false'),
(54, 3, 29, 'credito', 4, 1196.00, '2023-08-09', 'false'),
(55, 3, 27, 'credito', 3, 414.00, '2023-08-10', 'false'),
(56, 3, 28, 'credito', 2, 438.00, '2023-08-10', 'false');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_produto`
--

CREATE TABLE `tb_produto` (
  `ID_PRODUTO` int(4) NOT NULL,
  `ID_FUNCIONARIO` int(4) NOT NULL,
  `PRO_BARCODE` varchar(10) NOT NULL,
  `PRO_NOME` varchar(50) NOT NULL,
  `PRO_DESCRICAO` text NOT NULL,
  `PRO_PRECO` decimal(10,2) NOT NULL,
  `PRO_CATEGORIA` char(25) NOT NULL,
  `PRO_TAMANHO` char(4) NOT NULL,
  `PRO_COR` char(25) NOT NULL,
  `PRO_MATERIAL` char(25) NOT NULL,
  `PRO_QUANTIDADE` int(3) NOT NULL,
  `PRO_FORNECEDOR` varchar(14) NOT NULL,
  `PRO_IMAGEM1` text NOT NULL,
  `PRO_IMAGEM2` text NOT NULL,
  `PRO_IMAGEM3` text NOT NULL,
  `PRO_IMAGEM4` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `tb_produto`
--

INSERT INTO `tb_produto` (`ID_PRODUTO`, `ID_FUNCIONARIO`, `PRO_BARCODE`, `PRO_NOME`, `PRO_DESCRICAO`, `PRO_PRECO`, `PRO_CATEGORIA`, `PRO_TAMANHO`, `PRO_COR`, `PRO_MATERIAL`, `PRO_QUANTIDADE`, `PRO_FORNECEDOR`, `PRO_IMAGEM1`, `PRO_IMAGEM2`, `PRO_IMAGEM3`, `PRO_IMAGEM4`) VALUES
(1, 2, '12345678', 'Camiseta Cloud9', 'Apenas uma camiseta', 89.90, 'Camiseta', 'G', 'Branco', 'Poliester', 11, '08470440000114', 'IMG-646bb7035a5758.06611716.png', 'IMG-646bb7035a7b80.79105237.png', 'IMG-646bb7035a9165.90833863.png', 'IMG-646bb7035aadf7.93290661.png'),
(2, 2, '98769876', 'Camiseta Astralis', 'Apenas uma camiseta', 109.90, 'Camiseta', 'M', 'Preto', 'Poliester', 19, '44937921000150', 'IMG-646d51a672ef48.88211940.png', 'IMG-646d51a67330c0.08481275.png', '', ''),
(3, 2, '56785678', 'Camiseta G2', 'Apenas uma camiseta', 70.98, 'Camiseta', 'G', 'Preto', 'Poliester', 4, '06279869000101', 'IMG-646d5319eda5f3.73411352.png', 'IMG-646d5319edbf50.67145794.png', '', ''),
(4, 2, '56781234', 'Camiseta OG', 'Apenas uma camiseta', 85.40, 'Camiseta', 'P', 'Preto', 'Poliester', 29, '29642289000124', 'IMG-646fe77f5cea28.51372270.png', 'IMG-646fe77f5d4e45.59608004.png', '', ''),
(5, 2, '23451234', 'Camiseta NAVI ', 'Apenas uma camiseta', 109.99, 'Camiseta', 'GG', 'Branco', 'Poliester', 19, '27133825000130', 'IMG-6470998fd63ba5.90516863.png', 'IMG-6470998fd66cf8.30709071.png', 'IMG-6470998fd690d3.99802969.png', 'IMG-6470998fd6b702.63492139.png'),
(7, 2, '76540928', 'Camiseta Fnatic', 'Apenas uma camiseta', 129.90, 'Camiseta', 'P', 'Preto', 'Linho', 3, '24140282000190', 'IMG-647780d14977e9.81989264.png', 'IMG-647780d149a5c6.73776776.png', '', ''),
(26, 4, '92384009', 'Camiseta MIBR', 'Apenas uma camiseta', 79.99, 'Camiseta', 'P', 'Azul', 'Poliester', 9, '24413099000111', 'IMG-648b460c36eb54.18323340.png', 'IMG-648b460c370837.41271946.png', '', ''),
(27, 12, '52283610', 'Camiseta Imperial', 'Teste de Camiseta', 138.90, 'Camiseta', 'G', 'Preto', 'Linho', 3, '34069923000111', 'IMG-649c929e6baef6.69250026.png', 'IMG-649c929e6c8504.70642840.png', 'IMG-649c929e6ce377.20973859.png', ''),
(28, 4, '98765283', 'Moletom COL', 'Moletom Complexity Branco para usar em casa.', 219.90, 'Moletom', 'GG', 'Preto', 'Algodao', 5, '37941821000132', 'IMG-649d70548eaa55.20833636.png', '', '', ''),
(29, 4, '78945615', 'Jaqueta Liquid', 'Jaqueta amarela e preta do time de CS:GO Liquid, perfeita para andar de moto e para dias frios.', 299.99, 'Jaqueta', 'M', 'Preto', 'Viscose', 15, '44389143000102', 'IMG-649d71fa0e2a46.32330581.png', 'IMG-649d71fa0e5759.03023146.png', '', ''),
(30, 4, '84597621', 'Boné Fúria ', 'Boné do time de CS:GO Fúria preto com as letras grafadas em branco', 55.90, 'Bone', 'M', 'Preto', 'Viscose', 9, '02084384000101', 'IMG-649d731c1ed782.19713794.png', 'IMG-649d731c1ef280.30428445.png', '', ''),
(31, 4, '58476925', 'Chaveiro Mibr', 'Aderesso para colocar em mochilas, chaves e puxadores do time de CS:GO Mibr', 10.90, 'Acessorio', 'Null', 'Branco', 'Null', 28, '24413099000111', 'IMG-649d73fb220aa1.89395393.png', '', '', ''),
(32, 4, '89631457', 'Bandeira Navi', 'Bandeira Navi Preta e Amarela ', 29.99, 'Bandeirao', 'Null', 'Preto', 'Poliester', 3, '27133825000130', 'IMG-649d74fa7c01f8.90226852.png', '', '', ''),
(33, 4, '98453216', 'Calça Imperial', 'Calça Moletom Imperial Gaming, para caminhadas', 189.90, 'Calca', 'M', 'Preto', 'Algodao', 9, '34069923000111', 'IMG-649d760602f2e0.57818770.png', 'IMG-649d7606030f38.58387816.png', 'IMG-649d76060322b6.26247790.png', ''),
(34, 4, '31587469', 'Shorts G2', 'Shorts G2 Gaming branco perfeito para caminhadas ', 69.90, 'Short', 'G', 'Branco', 'Algodao', 17, '06279869000101', 'IMG-649d77e5b234c5.42456554.png', 'IMG-649d77e5b25074.73867443.png', '', ''),
(35, 4, '32198757', 'Gorro Vitality', 'Gorro De Pescador, perfeito para um dia ensolarado num barco de pesca', 49.90, 'Gorro', 'G', 'Preto', 'Linho', 34, '05382523000163', 'IMG-649d798fb2d545.41008786.png', 'IMG-649d798fb2f285.71979253.png', 'IMG-649d798fb307d6.71310131.png', ''),
(36, 4, '26396520', 'Moletom Imperial', 'Moletom aconchegante e macio, perfeito para dias frios. Torça para a Imperial com estilo e conforto.', 209.90, 'Moletom', 'G', 'Branco', 'Algodao', 0, '34069923000111', 'IMG-64aefe1a7f48c2.12167939.png', 'IMG-64aefe1a7faa87.96073937.png', '', ''),
(37, 4, '45678912', 'Bandeirão Fnatic', 'Bandeira para você vibrar com a vitória do seu time preferido', 49.90, 'Bandeirao', 'Null', 'Preto', 'Poliester', 22, '24140282000190', 'IMG-64ccdecaa0c000.72838079.png', '', '', ''),
(38, 4, '52452145', 'Boné Navi', 'Boné Navi na coloração preta e amarelo estilo caminhoneiro', 37.50, 'Bone', 'XGG', 'Null', 'Algodao', 100, '27133825000130', 'IMG-64cce01463eb62.04662585.png', 'IMG-64cce014642ce5.20976698.png', 'IMG-64cce014647910.90058475.png', ''),
(39, 4, '32145695', 'Pingente FaZe', 'Pingente de ouro FaZe Clan de 18 quilates', 237.90, 'Acessorio', 'XGG', 'Amarelo', 'Null', 45, '18432312000130', 'IMG-64cce23cd82d38.47594199.png', '', '', ''),
(40, 4, '874516849', 'Calça NIP', 'Calça de pijama do time de counter-strike global offensive Ninja in Pijamas moletom preto com amarelo', 87.87, 'Calca', 'G', 'Preto', 'Viscose', 82, '02867678000100', 'IMG-64cce3ab0182d9.03729228.png', 'IMG-64cce3ab01b149.76536318.png', 'IMG-64cce3ab01dc06.39132880.png', ''),
(41, 4, '75482654', 'Corta Vento Fúria', 'Jaqueta Corta Vento Fúria nas cores preta com branco e azul', 288.80, 'Jaqueta', 'G', 'Branco', 'Poliester', 56, '02084384000101', 'IMG-64cce527596b16.86483131.png', '', '', ''),
(42, 4, '84516754', 'Shorts Astralis', 'Shorts Astralis preto e vermelho', 29.55, 'Short', 'G', 'Vermelho', 'Viscose', 45, '44937921000150', 'IMG-64cce6794827b7.51246178.png', 'IMG-64cce679487978.68664111.png', 'IMG-64cce67948b638.51772898.png', ''),
(43, 4, '54546985', 'Fisherhat OG', 'Fisherhat OG preto e azul ', 27.50, 'Gorro', 'G', 'Preto', 'Elestano', 45, '29642289000124', 'IMG-64cce8d341f967.61883983.png', '', '', '');

-- --------------------------------------------------------

--
-- Estrutura para tabela `tb_sac`
--

CREATE TABLE `tb_sac` (
  `SAC_ID` int(4) NOT NULL,
  `ID_CLIENTE` int(4) NOT NULL,
  `SAC_NOME` char(80) NOT NULL,
  `SAC_EMAIL` varchar(80) NOT NULL,
  `SAC_ASSUNTO` varchar(30) NOT NULL,
  `SAC_MENSAGEM` text NOT NULL,
  `SAC_DTSAC` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Despejando dados para a tabela `tb_sac`
--

INSERT INTO `tb_sac` (`SAC_ID`, `ID_CLIENTE`, `SAC_NOME`, `SAC_EMAIL`, `SAC_ASSUNTO`, `SAC_MENSAGEM`, `SAC_DTSAC`) VALUES
(1, 3, 'Rafael Dos Santos', 'rafaelsantos.2020dc@gmail.com', 'Teste', 'Teste', '2023-06-14'),
(2, 2, 'Lucas Chasco', 'lucasjc2005@gmail.com', 'Teste', 'Teste', '2023-06-14'),
(3, 16, 'Igor Augusto Fonte', 'igor.augusto@gmail.com', 'Visita', 'Olá, sou Igor e venho por meio deste desejar uma visita em sua locação mais próxima.', '2023-06-28'),
(4, 3, 'Rafael Dos Santos', 'rafaelsantos.2020dc@gmail.com', 'Visita Técnica', 'Gostaria de realizar uma visita técnica a fábrica.', '2023-08-09');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `tb_carrinho`
--
ALTER TABLE `tb_carrinho`
  ADD PRIMARY KEY (`ID_CARRINHO`),
  ADD KEY `CARCLIENT` (`ID_CLIENTE`),
  ADD KEY `CARPRODUCT` (`ID_PRODUTO`);

--
-- Índices de tabela `tb_cliente`
--
ALTER TABLE `tb_cliente`
  ADD PRIMARY KEY (`ID_CLIENTE`);

--
-- Índices de tabela `tb_feedback`
--
ALTER TABLE `tb_feedback`
  ADD PRIMARY KEY (`ID_FEEDBACK`),
  ADD KEY `PRODUTO` (`ID_PRODUTO`),
  ADD KEY `FEDCLIENT` (`ID_CLIENTE`);

--
-- Índices de tabela `tb_funcionario`
--
ALTER TABLE `tb_funcionario`
  ADD PRIMARY KEY (`ID_FUNCIONARIO`);

--
-- Índices de tabela `tb_login`
--
ALTER TABLE `tb_login`
  ADD PRIMARY KEY (`ID_LOGIN`),
  ADD KEY `CLIENTE` (`ID_CLIENTE`),
  ADD KEY `FUNCIONARIO` (`ID_FUNCIONARIO`);

--
-- Índices de tabela `tb_pedido`
--
ALTER TABLE `tb_pedido`
  ADD PRIMARY KEY (`ID_PEDIDO`),
  ADD KEY `order_client` (`ID_CLIENTE`),
  ADD KEY `order_product` (`ID_PRODUTO`);

--
-- Índices de tabela `tb_produto`
--
ALTER TABLE `tb_produto`
  ADD PRIMARY KEY (`ID_PRODUTO`),
  ADD KEY `FUNPRODUCT` (`ID_FUNCIONARIO`);

--
-- Índices de tabela `tb_sac`
--
ALTER TABLE `tb_sac`
  ADD PRIMARY KEY (`SAC_ID`),
  ADD KEY `SACCLIENT` (`ID_CLIENTE`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `tb_carrinho`
--
ALTER TABLE `tb_carrinho`
  MODIFY `ID_CARRINHO` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT de tabela `tb_cliente`
--
ALTER TABLE `tb_cliente`
  MODIFY `ID_CLIENTE` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de tabela `tb_feedback`
--
ALTER TABLE `tb_feedback`
  MODIFY `ID_FEEDBACK` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT de tabela `tb_funcionario`
--
ALTER TABLE `tb_funcionario`
  MODIFY `ID_FUNCIONARIO` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de tabela `tb_login`
--
ALTER TABLE `tb_login`
  MODIFY `ID_LOGIN` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT de tabela `tb_pedido`
--
ALTER TABLE `tb_pedido`
  MODIFY `ID_PEDIDO` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT de tabela `tb_produto`
--
ALTER TABLE `tb_produto`
  MODIFY `ID_PRODUTO` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT de tabela `tb_sac`
--
ALTER TABLE `tb_sac`
  MODIFY `SAC_ID` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `tb_carrinho`
--
ALTER TABLE `tb_carrinho`
  ADD CONSTRAINT `CARCLIENT` FOREIGN KEY (`ID_CLIENTE`) REFERENCES `tb_cliente` (`ID_CLIENTE`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `CARPRODUCT` FOREIGN KEY (`ID_PRODUTO`) REFERENCES `tb_produto` (`ID_PRODUTO`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Restrições para tabelas `tb_feedback`
--
ALTER TABLE `tb_feedback`
  ADD CONSTRAINT `FEDCLIENT` FOREIGN KEY (`ID_CLIENTE`) REFERENCES `tb_cliente` (`ID_CLIENTE`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `PRODUTO` FOREIGN KEY (`ID_PRODUTO`) REFERENCES `tb_produto` (`ID_PRODUTO`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Restrições para tabelas `tb_login`
--
ALTER TABLE `tb_login`
  ADD CONSTRAINT `CLIENTE` FOREIGN KEY (`ID_CLIENTE`) REFERENCES `tb_cliente` (`ID_CLIENTE`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FUNCIONARIO` FOREIGN KEY (`ID_FUNCIONARIO`) REFERENCES `tb_funcionario` (`ID_FUNCIONARIO`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Restrições para tabelas `tb_pedido`
--
ALTER TABLE `tb_pedido`
  ADD CONSTRAINT `order_client` FOREIGN KEY (`ID_CLIENTE`) REFERENCES `tb_cliente` (`ID_CLIENTE`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `order_product` FOREIGN KEY (`ID_PRODUTO`) REFERENCES `tb_produto` (`ID_PRODUTO`);

--
-- Restrições para tabelas `tb_produto`
--
ALTER TABLE `tb_produto`
  ADD CONSTRAINT `FUNPRODUCT` FOREIGN KEY (`ID_FUNCIONARIO`) REFERENCES `tb_funcionario` (`ID_FUNCIONARIO`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Restrições para tabelas `tb_sac`
--
ALTER TABLE `tb_sac`
  ADD CONSTRAINT `SACCLIENT` FOREIGN KEY (`ID_CLIENTE`) REFERENCES `tb_cliente` (`ID_CLIENTE`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
