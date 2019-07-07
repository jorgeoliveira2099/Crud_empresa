para poder rodar o sistema, primeiro siga até o fim os passos a seguir:

--
-- banco de dados: `user`
--

CREATE DATABASE IF NOT EXISTS `user`;
USE `user`;

-----------------------------------------------------------

--
-- estrutura da tabela 'pessoas'
--

CREATE TABLE `pessoas` (
	`id` int(11) NOT NULL AUTO_INCREMENT primary key,
	`nome` varchar(60) NOT NULL,
	`senha` varchar(20) NOT NULL,
	`email` varchar(45) NOT NULL,
	`DDD` varchar(4) NOT NULL,
	`telefone` varchar(10) NOT NULL,
	`tipo` varchar(20) NOT NULL
   );


--
-- inserindo dados iniciais na tabela 'pessoas'
--

INSERT INTO `pessoas` (`nome`,`senha`, `email`, `DDD`, `telefone`, `tipo`) VALUES
	('João Amaral', 'amaral123', 'joao.amaral@gmail.com', '81', '33742133', 'fixo'),
	('Ana Claudia Tenorio','anaclaudia321', 'aclaudiatenorio@gmail.com', '81', '987654321', 'celular'),
	('wellington da silva', '12345689@#$%', 'wellinghton@gmail.com', '99', '9979787', 'celular'),
	('Luiz Henrique',  '!@#@$luiz', 'luizhenrique@gmail.com', '44', '985644515', 'celular'),
	('Anderson Santos', '@nd#rs0m', 'andersonsan@gmail.com', '71', '987534436', 'celular'),
	('Allisson Freitas', '@11iss0m', 'allissonfreitas@hotmail.com', '81', '35436453', 'fixo'),
	('José Nilo', 'j0s3n1l0#$%', 'jose.nilo@gmail.com', '81', '35633563', 'fixo');


após isso, insira os dados do seu banco, usuário e senha nos arquivos: 

adicionar_pessoas.jsp

editar_pessoas.jsp

listar_pessoas.jsp

remover_pessoas.jsp

e use um servidor de sua preferência, no projeto eu usei com o apache tomcat 8 e o wildfly



----
---- e só
----







































