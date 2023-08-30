CREATE DATABASE `athenashop`;
USE `athenashop`

CREATE TABLE `anunciantes` (
  `id_anun` int NOT NULL,
  `nome_anun` varchar(100) NOT NULL,
  `empresa_anun` varchar(100) NOT NULL,
  `email_anun` varchar(50) NOT NULL,
  `senha_anun` varchar(50) DEFAULT NULL,
  `cnpj_anun` varchar(50) NOT NULL,
  `tel_anun` varchar(14) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO `anunciante` (`id`, `nome`, `empresa`, `email`, `cnpj`, `created_at`) VALUES
(1, 'Igor Moraes', 'Igor Serviços LTDA', 'igor@gmail.com', '31.139.805/0001-44', '2023-06-28 21:13:25');

DROP TABLE `tipo_usu`;

CREATE TABLE `tipo_usu` (
  `id_tipo_usu` int NOT NULL AUTO_INCREMENT,
  `tipo_usu` varchar(25) DEFAULT NULL,
  `descricao_usu` varchar(160) DEFAULT NULL,
  `status_tipo_usu` int DEFAULT '1',
  PRIMARY KEY(`id_tipo_usu`)
)ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci

CREATE TABLE `usuario` (
  `id_usu` int NOT NULL AUTO_INCREMENT,
  `nome_usu` varchar(50) NOT NULL,
  `user_usu` varchar(50) DEFAULT NULL,
  `senha_usu` varchar(50) NOT NULL,
  `confirmar_usu` varchar(50) NOT NULL,
  `tipo_usu` int NOT NULL DEFAULT '1',
  `tel_usu` varchar(14) DEFAULT NULL,
  `created_at_usu` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO `usuarios` (`id`, `nome`, `email`, `senha`, `confirmar`, `created_at`) VALUES
(1, 'Igor Moraes', 'igor@gmail.com', '123456', '2023-06-28 21:10:31');

ALTER TABLE `anunciante` ADD PRIMARY KEY (`id`);

ALTER TABLE `usuarios` ADD PRIMARY KEY (`id`);

ALTER TABLE `anunciante` MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

ALTER TABLE `usuarios` MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
