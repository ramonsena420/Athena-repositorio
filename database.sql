CREATE DATABASE `athenashop`;

CREATE TABLE `anunciantes` (
  `id` int NOT NULL,
  `nome` varchar(100) NOT NULL,
  `empresa` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `cnpj` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO `anunciante` (`id`, `nome`, `empresa`, `email`, `cnpj`, `created_at`) VALUES
(1, 'Igor Moraes', 'Igor Serviços LTDA', 'igor@gmail.com', '31.139.805/0001-44', '2023-06-28 21:13:25');

CREATE TABLE `usuarios` (
  `id` int NOT NULL,
  `nome` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `senha` varchar(50) NOT NULL,
  `confirmar` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO `usuarios` (`id`, `nome`, `email`, `senha`, `confirmar`, `created_at`) VALUES
(1, 'Igor Moraes', 'igor@gmail.com', '123456', '2023-06-28 21:10:31');

ALTER TABLE `anunciante` ADD PRIMARY KEY (`id`);

ALTER TABLE `usuarios` ADD PRIMARY KEY (`id`);

ALTER TABLE `anunciante` MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

ALTER TABLE `usuarios` MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
