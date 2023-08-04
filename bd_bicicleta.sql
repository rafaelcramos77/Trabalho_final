-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: bd_bicicleta
-- ------------------------------------------------------
-- Server version	8.0.33

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `area`
--

DROP TABLE IF EXISTS `area`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `area` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_estacao` int NOT NULL,
  `poligono` polygon NOT NULL,
  `nome_estacao` varchar(45) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`id`,`id_estacao`),
  KEY `fk_area_estacao1_idx` (`id_estacao`),
  CONSTRAINT `fk_area_estacao1` FOREIGN KEY (`id_estacao`) REFERENCES `estacao` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `area`
--

LOCK TABLES `area` WRITE;
/*!40000 ALTER TABLE `area` DISABLE KEYS */;
INSERT INTO `area` VALUES (2,25,_binary '\Ê\0\0\0\0\0\0\0\0\0\0\0Ä@¡•∞\◊E¿ä%¸Ü\¬6¿Ä@¡}\Á\◊E¿7{:á˝¡6¿Ä@¡ç\"\ÿE¿/OEÃÅ\¬6¿Ä@¡-˚\◊E¿\Zyå\'2\√6¿Ä@¡m¨\◊E¿\Ÿ\Z±˚\¬6¿Ä@¡çõ\◊E¿\ÁLö\œ\¬6¿Ä@¡•∞\◊E¿ä%¸Ü\¬6¿','Portico');
/*!40000 ALTER TABLE `area` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `avaliacao`
--

DROP TABLE IF EXISTS `avaliacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `avaliacao` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_cliente` int NOT NULL,
  `id_viagem` int NOT NULL,
  `momento` datetime NOT NULL,
  `nota` varchar(45) CHARACTER SET armscii8 COLLATE armscii8_general_ci NOT NULL,
  `comentario` varchar(100) CHARACTER SET armscii8 COLLATE armscii8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`,`id_cliente`,`id_viagem`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_avaliacao_cliente1_idx` (`id_cliente`),
  KEY `fk_avaliacao_viagem1_idx` (`id_viagem`),
  CONSTRAINT `fk_avaliacao_cliente1` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id`),
  CONSTRAINT `fk_avaliacao_viagem1` FOREIGN KEY (`id_viagem`) REFERENCES `viagem` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `avaliacao`
--

LOCK TABLES `avaliacao` WRITE;
/*!40000 ALTER TABLE `avaliacao` DISABLE KEYS */;
INSERT INTO `avaliacao` VALUES (1,1,1,'2023-07-23 02:27:54','5',NULL),(2,2,2,'2023-07-23 02:27:54','4',NULL),(3,4,4,'2023-07-23 02:27:54','3',NULL),(4,4,4,'2023-07-23 02:27:54','4',NULL),(5,5,5,'2023-07-23 02:27:54','5',NULL),(6,19,10,'2023-07-23 02:27:54','5',NULL),(7,2,12,'2023-07-23 02:31:59','3',NULL),(8,2,12,'2023-07-23 02:31:59','2',NULL),(9,16,18,'2023-07-23 02:31:59','5',NULL),(10,19,15,'2023-07-23 02:31:59','5',NULL),(11,2,12,'2023-07-23 02:31:59','4',NULL),(12,20,14,'2023-07-23 02:31:59','3',NULL);
/*!40000 ALTER TABLE `avaliacao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bicicleta`
--

DROP TABLE IF EXISTS `bicicleta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bicicleta` (
  `id` int NOT NULL AUTO_INCREMENT,
  `n_serie` varchar(45) CHARACTER SET armscii8 COLLATE armscii8_general_ci NOT NULL,
  `tipo` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bicicleta`
--

LOCK TABLES `bicicleta` WRITE;
/*!40000 ALTER TABLE `bicicleta` DISABLE KEYS */;
INSERT INTO `bicicleta` VALUES (1,'123456789','Mecanica'),(2,'987654321','Eletrica'),(3,'741852963','Mecanica'),(4,'147258369','Eletrica'),(5,'741852111','Mecanica'),(6,'147258111','Eletrica'),(7,'741852222','Mecanica'),(8,'147258222','Eletrica'),(9,'741852333','Mecanica'),(10,'147258333','Eletrica'),(11,'741852444','Mecanica'),(12,'147258444','Eletrica'),(13,'741852555','Mecanica'),(14,'147258555','Eletrica'),(15,'741852666','Mecanica'),(16,'147258666','Eletrica'),(17,'741852777','Mecanica'),(18,'147258777','Eletrica'),(19,'741852888','Mecanica'),(20,'147258888','Eletrica'),(21,'123654741','Mecanica'),(22,'159623847','Eletrica'),(23,'123658671','Mecanica'),(24,'159677747','Eletrica'),(25,'123654543','Mecanica'),(26,'159987847','Eletrica'),(27,'159456847','Eletrica'),(28,'151233847','Eletrica'),(29,'159564847','Eletrica'),(30,'128884741','Mecanica'),(31,'100023847','Eletrica'),(32,'166654741','Mecanica'),(33,'154443847','Eletrica'),(34,'123611141','Mecanica'),(35,'159623666','Eletrica');
/*!40000 ALTER TABLE `bicicleta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `id` int NOT NULL,
  `id_plano` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_cliente_plano1_idx` (`id_plano`),
  CONSTRAINT `fk_cliente_pessoa1` FOREIGN KEY (`id`) REFERENCES `pessoa` (`id`),
  CONSTRAINT `fk_cliente_plano1` FOREIGN KEY (`id_plano`) REFERENCES `plano` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,1),(5,1),(8,1),(15,1),(17,1),(2,2),(19,2),(10,3),(11,3),(13,3),(20,3),(9,4),(14,4),(16,4),(18,4),(3,5),(4,5),(12,5),(21,6);
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `endereco`
--

DROP TABLE IF EXISTS `endereco`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `endereco` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_funcionario` int NOT NULL,
  `rua` varchar(100) NOT NULL,
  `numero` varchar(45) NOT NULL,
  `cep` varchar(45) NOT NULL,
  `cidade` varchar(100) NOT NULL,
  `estado` varchar(100) NOT NULL,
  PRIMARY KEY (`id`,`id_funcionario`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_endereco_funcionario1_idx` (`id_funcionario`),
  CONSTRAINT `fk_endereco_funcionario1` FOREIGN KEY (`id_funcionario`) REFERENCES `funcionario` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `endereco`
--

LOCK TABLES `endereco` WRITE;
/*!40000 ALTER TABLE `endereco` DISABLE KEYS */;
INSERT INTO `endereco` VALUES (1,22,'Rua A','1','23890000','Serop√©dica','Rio de Janeiro'),(2,22,'Rua A','1','23890000','Serop√©dica','Rio de Janeiro'),(3,23,'Rua B','2','23890000','Serop√©dica','Rio de Janeiro'),(4,24,'Rua C','3','23890000','Serop√©dica','Rio de Janeiro'),(5,25,'Rua D','4','23890000','Serop√©dica','Rio de Janeiro'),(6,26,'Rua E','5','23890000','Serop√©dica','Rio de Janeiro'),(7,27,'Rua F','6','23890000','Serop√©dica','Rio de Janeiro'),(8,28,'Rua H','8','23890000','Seropedica','Rio de Janeiro'),(9,29,'Rua I','9','23890000','Seropedica','Rio de Janeiro'),(10,30,'Rua J','10','23890000','Seropedica','Rio de Janeiro'),(11,31,'Rua K','11','23890000','Seropedica','Rio de Janeiro'),(12,22,'Rua L','11','23890000','Seropedica','Rio de Janeiro');
/*!40000 ALTER TABLE `endereco` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estacao`
--

DROP TABLE IF EXISTS `estacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estacao` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  `geometria` point NOT NULL,
  `vaga` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estacao`
--

LOCK TABLES `estacao` WRITE;
/*!40000 ALTER TABLE `estacao` DISABLE KEYS */;
INSERT INTO `estacao` VALUES (1,'Predio da Avicultura',_binary '\Ê\0\0\0\0\0]oYç\∆6¿\…iôVT\÷E¿',10),(2,'Feno Rio',_binary '\Ê\0\0\0\0\0>ÛE\Ô\»6¿\»e∏\Ï\÷E¿',20),(3,'LabCiclo',_binary '\Ê\0\0\0\0\0¶=Nfˆ\»6¿ë\ﬁhÆ\◊E¿',10),(4,'Setor de Equinos',_binary '\Ê\0\0\0\0\0t[Qµ\«6¿©Eéæì\◊E¿',20),(5,'Laboratorio de EQ',_binary '\Ê\0\0\0\0\0“É´\—\Â\∆6¿ˇ¶\‚å\ÿE¿',10),(6,'Setor de Equinos',_binary '\Ê\0\0\0\0\0WEv≠\÷\∆6¿\nS\Ô\÷\◊E¿',20),(7,'Laboratorio de EQ',_binary '\Ê\0\0\0\0\0R	≤\∆6¿d]\‹F\ÿE¿',10),(8,'Dep Producao Animal',_binary '\Ê\0\0\0\0\0Ä†öö\∆6¿}\’0\È\◊E¿',20),(9,'Dep de Reproducao Animal',_binary '\Ê\0\0\0\0\0“°ôH\Â\≈6¿ku àˇ\◊E¿',10),(10,'PAP Fisica',_binary '\Ê\0\0\0\0\0\‡\Ÿ?\À\ \≈6¿Mi<\Í\◊E¿',20),(11,'CTUR',_binary '\Ê\0\0\0\0\0Oª∞\⁄\ƒ6¿óxzÑû\÷E¿',10),(12,'Lab de Quimica da Madeira',_binary '\Ê\0\0\0\0\0∑à{nô¡6¿\»\Íw\›2\ŸE¿',10),(13,'Alojamento Masculino',_binary '\Ê\0\0\0\0\0T!yB\n\≈6¿\ZN∫)\ÿE¿',20),(14,'Restaurante Universitario',_binary '\Ê\0\0\0\0\0\Îí\ÌS¿\ƒ6¿äìπ\ÿE¿',20),(15,'PAT',_binary '\Ê\0\0\0\0\0Q\Œ@˙`\≈6¿†4\‘(§\◊E¿',20),(16,'IT',_binary '\Ê\0\0\0\0\0>\«.\Óí\∆6¿±\À\"\⁄\◊E¿',20),(17,'IV',_binary '\Ê\0\0\0\0\0 +t5\¬6¿pwãç\ÿE¿',20),(18,'ICBS',_binary '\Ê\0\0\0\0\0G\ÕÙû\√6¿\Ÿ˛æX\ÿE¿',20),(19,'IA',_binary '\Ê\0\0\0\0\0\«\·\ÂLá\¬6¿¥kJ\À+\ŸE¿',20),(20,'CICS',_binary '\Ê\0\0\0\0\0å6øH\≈6¿æ\À\⁄\‡\ÿE¿',20),(21,'PQ',_binary '\Ê\0\0\0\0\0\“ˆTÛ¡\√6¿\Ê*∫\‡\◊E¿',20),(22,'ICHS',_binary '\Ê\0\0\0\0\0¶≠2\ƒ6¿=±Û\€|\◊E¿',20),(23,'ICHS',_binary '\Ê\0\0\0\0\0íﬁÅK\ƒ6¿r\Ãhöf\◊E¿',30),(24,'P1',_binary '\Ê\0\0\0\0\0å\„ó,¥\√6¿íÒˇ?\ÿE¿',30),(25,'TESTE',_binary '\Ê\0\0\0\0\0]oYç\∆6¿\…iôVT\÷E¿',10),(26,'Portico',_binary '\Ê\0\0\0\0\0TB¶\‰\◊E¿\Õ%_\Â\¬6¿',15),(27,'Prefeitura Univ',_binary '\Ê\0\0\0\0\0|7:í\ÿE¿\Õ\È;§\”\≈6¿',7);
/*!40000 ALTER TABLE `estacao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funcionario`
--

DROP TABLE IF EXISTS `funcionario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `funcionario` (
  `id` int NOT NULL,
  `Funcao` varchar(45) CHARACTER SET armscii8 COLLATE armscii8_general_ci NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `fk_funcionario_pessoa` FOREIGN KEY (`id`) REFERENCES `pessoa` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcionario`
--

LOCK TABLES `funcionario` WRITE;
/*!40000 ALTER TABLE `funcionario` DISABLE KEYS */;
INSERT INTO `funcionario` VALUES (22,'Mecanico'),(23,'Mecanico'),(24,'Mecanico'),(25,'Mecanico'),(26,'Mecanico'),(27,'Mecanico'),(28,'Mecanico'),(29,'Mecanico'),(30,'Mecanico'),(31,'Mecanico'),(32,'Mecanico');
/*!40000 ALTER TABLE `funcionario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `historico_compra`
--

DROP TABLE IF EXISTS `historico_compra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `historico_compra` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_cliente` int NOT NULL,
  `id_plano` int NOT NULL,
  PRIMARY KEY (`id`,`id_cliente`,`id_plano`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_historico_compra_cliente1_idx` (`id_cliente`),
  KEY `fk_historico_compra_plano1_idx` (`id_plano`),
  CONSTRAINT `fk_historico_compra_cliente1` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id`),
  CONSTRAINT `fk_historico_compra_plano1` FOREIGN KEY (`id_plano`) REFERENCES `plano` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `historico_compra`
--

LOCK TABLES `historico_compra` WRITE;
/*!40000 ALTER TABLE `historico_compra` DISABLE KEYS */;
INSERT INTO `historico_compra` VALUES (1,1,3),(2,1,3),(3,2,4),(4,3,1),(5,17,1),(90,9,1),(91,10,6),(92,11,1),(93,10,3),(94,20,3),(95,13,5),(96,12,4),(97,11,1),(98,2,2),(99,9,6),(100,18,4),(101,14,2);
/*!40000 ALTER TABLE `historico_compra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manutencao`
--

DROP TABLE IF EXISTS `manutencao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `manutencao` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_bicicleta` int DEFAULT NULL,
  `id_estacao` int DEFAULT NULL,
  `momento_entrada` datetime NOT NULL,
  `momento_saida` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_manutencao_bicicleta1_idx` (`id_bicicleta`),
  KEY `fk_manutencao_estacao1_idx` (`id_estacao`),
  CONSTRAINT `fk_manutencao_bicicleta1` FOREIGN KEY (`id_bicicleta`) REFERENCES `bicicleta` (`id`),
  CONSTRAINT `fk_manutencao_estacao1` FOREIGN KEY (`id_estacao`) REFERENCES `estacao` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manutencao`
--

LOCK TABLES `manutencao` WRITE;
/*!40000 ALTER TABLE `manutencao` DISABLE KEYS */;
INSERT INTO `manutencao` VALUES (1,1,NULL,'2023-07-23 01:40:01','2023-07-23 01:40:01'),(2,6,NULL,'2023-07-22 01:30:17','2023-07-22 01:40:17'),(3,6,NULL,'2023-07-22 01:30:17','2023-07-22 01:40:17'),(4,7,NULL,'2023-07-22 01:30:17','2023-07-22 01:40:17'),(5,8,NULL,'2023-07-22 01:30:17','2023-07-22 01:40:17'),(6,10,NULL,'2023-07-22 01:30:17','2023-07-22 01:40:17'),(7,3,NULL,'2023-07-22 01:30:17','2023-07-22 01:40:17'),(8,2,NULL,'2023-07-22 01:30:17','2023-07-22 01:40:17'),(9,15,NULL,'2023-07-22 01:30:17','2023-07-22 01:40:17'),(10,NULL,3,'2023-07-22 01:30:17','2023-07-22 01:40:17'),(11,NULL,9,'2023-07-22 01:30:17','2023-07-22 01:40:17'),(12,NULL,8,'2023-07-22 01:30:17','2023-07-22 01:40:17'),(13,NULL,10,'2023-07-22 01:30:17','2023-07-22 01:40:17'),(14,NULL,4,'2023-07-22 01:30:17','2023-07-22 01:40:17');
/*!40000 ALTER TABLE `manutencao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `manutencao_has_funcionario`
--

DROP TABLE IF EXISTS `manutencao_has_funcionario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `manutencao_has_funcionario` (
  `id_manutencao` int NOT NULL,
  `id_funcionario` int NOT NULL,
  PRIMARY KEY (`id_manutencao`,`id_funcionario`),
  KEY `fk_manutencao_has_funcionario_funcionario1_idx` (`id_funcionario`),
  KEY `fk_manutencao_has_funcionario_manutencao1_idx` (`id_manutencao`),
  CONSTRAINT `fk_manutencao_has_funcionario_funcionario1` FOREIGN KEY (`id_funcionario`) REFERENCES `funcionario` (`id`),
  CONSTRAINT `fk_manutencao_has_funcionario_manutencao1` FOREIGN KEY (`id_manutencao`) REFERENCES `manutencao` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `manutencao_has_funcionario`
--

LOCK TABLES `manutencao_has_funcionario` WRITE;
/*!40000 ALTER TABLE `manutencao_has_funcionario` DISABLE KEYS */;
INSERT INTO `manutencao_has_funcionario` VALUES (1,22),(3,22),(11,22),(14,22),(2,23),(10,23),(5,24),(4,25),(7,25),(8,26),(13,26),(6,27),(12,30),(9,31);
/*!40000 ALTER TABLE `manutencao_has_funcionario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pessoa`
--

DROP TABLE IF EXISTS `pessoa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pessoa` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) CHARACTER SET armscii8 COLLATE armscii8_general_ci NOT NULL,
  `cpf` varchar(45) CHARACTER SET armscii8 COLLATE armscii8_general_ci NOT NULL,
  `celular` varchar(45) CHARACTER SET armscii8 COLLATE armscii8_general_ci NOT NULL,
  `email` varchar(100) CHARACTER SET armscii8 COLLATE armscii8_general_ci NOT NULL,
  `data_nascimento` date NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pessoa`
--

LOCK TABLES `pessoa` WRITE;
/*!40000 ALTER TABLE `pessoa` DISABLE KEYS */;
INSERT INTO `pessoa` VALUES (1,'Rafael','123454678','65435231','sdfgsdggfggg@gmail.com','2023-07-05'),(2,'Marcos','213456789','365454152','sdgsfgffh@gmail.com','2023-05-09'),(3,'Flavio','1234554678','654355231','sdfgsdgkgfgggdd@gmail.com','2023-07-05'),(4,'Natalia','123478','635231','sdfgfgggaaaa@gmail.com','2023-07-05'),(5,'Marcia','1234678','655231','sdfgfgggpa@gmail.com','2023-07-05'),(8,'Marcio','123456789','987654321','sdfghdsgfh@gmail.com','1993-05-13'),(9,'Felipe','123434789','989854321','sd4hdsgfh@gmail.com','1993-05-13'),(10,'Otavio','128466789','987543321','sdfqqdsgfh@gmail.com','1993-05-13'),(11,'Ana','123412389','987656721','sdeedsgfh@gmail.com','1993-05-13'),(12,'Marcela','120096789','987000321','sdfghdppph@gmail.com','1993-05-13'),(13,'Poliana','125556789','955554321','sduuudsgfh@gmail.com','1993-05-13'),(14,'Marco','123450789','987654320','sdfghdiiih@gmail.com','1993-05-13'),(15,'Bruno','123654741','852741963','sdfjksgfdkj@gmail.com','1987-07-16'),(16,'Adrick','123555741','852555963','sdf33sgfdkj@gmail.com','1987-07-16'),(17,'Carol','123111741','811141963','sdfjdddfdkj@gmail.com','1987-07-16'),(18,'Jessica','123334741','852333963','sdfjddksgfdkj@gmail.com','1987-07-16'),(19,'Maria','121154741','852741911','sdfjksgwwfdkj@gmail.com','1987-07-16'),(20,'Lucas','122654741','852741223','sdfjkswegfdkj@gmail.com','1987-07-16'),(21,'Danilo','123000741','800041963','sdfjksgyykj@gmail.com','1987-07-16'),(22,'Roger','121114741','851141963','sdfjasgfdkj@gmail.com','1987-07-16'),(23,'Andre','123333741','852741555','sdfjksjkldkj@gmail.com','1987-07-16'),(24,'Amanda','123656661','852741666','sdqqksgfdkj@gmail.com','1987-07-16'),(25,'Marlene','123654799','852741999','sdfkkkgfdkj@gmail.com','1987-07-16'),(26,'Silvia','111654741','852111963','sdfjkooodkj@gmail.com','1987-07-16'),(27,'Bruna','123555741','852555963','stttksgfdkj@gmail.com','1987-07-16'),(28,'Isabela','147845123','963258741','dskfjhsfd@gmail.com','1995-07-13'),(29,'Isabela','147745123','9632544441','dskfjasdhsfd@gmail.com','1995-07-13'),(30,'Janaina','147844123','963448741','dskfjhsdfgfd@gmail.com','1995-07-13'),(31,'Renata','147844423','963258741','dskfjhsfdhh@gmail.com','1995-07-13'),(32,'Raphael','14784423','963258741','dskfjddhsfd@gmail.com','1995-07-13');
/*!40000 ALTER TABLE `pessoa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plano`
--

DROP TABLE IF EXISTS `plano`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `plano` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) CHARACTER SET armscii8 COLLATE armscii8_general_ci NOT NULL,
  `preco` decimal(45,2) NOT NULL,
  `contrato` varchar(100) NOT NULL,
  `duracao` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plano`
--

LOCK TABLES `plano` WRITE;
/*!40000 ALTER TABLE `plano` DISABLE KEYS */;
INSERT INTO `plano` VALUES (1,'Semanal',15.00,'Duracao de 7 dias\r\nValor 15 reais\r\nMaximo 2 viagens por dia\r\nDuracao de 30 minutos por viagem','30 minutos'),(2,'Diario',10.00,'Duracao de 1 dias\r\nValor 10 reais\r\nMaximo 4 viagens por dia\r\nDuracao de 30 minutos por viagem','30 minutos'),(3,'Lazer',20.00,'Duracao de 2 dias\r\nValor 20 reais\r\nMaximo 4 viagens por dia\r\nDuracao de 60 minutos por viagem','60 minutos'),(4,'Mensal',40.00,'Duracao de 30 dias\r\nValor 40 reais\r\nMaximo 4 viagens por dia\r\nDuracao de 45 minutos por viagem','45 minutos'),(5,'Semestral',200.00,'Duracao de 180 dias\r\nValor 200 reais\r\nMaximo 4 viagens por dia\r\nDuracao de 45 minutos por viagem','45 minutos'),(6,'Anual',360.00,'Duracao de 360 dias\r\nValor 360 reais\r\nMaximo 4 viagens por dia\r\nDuracao de 45 minutos por viagem','45 minutos');
/*!40000 ALTER TABLE `plano` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `viagem`
--

DROP TABLE IF EXISTS `viagem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `viagem` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_cliente` int NOT NULL,
  `id_bicicleta` int NOT NULL,
  `id_estacao_inicial` int NOT NULL,
  `id_estacao_final` int NOT NULL,
  `momento_final` datetime NOT NULL,
  `momento_inicial` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_UNIQUE` (`id`),
  KEY `fk_viagem_cliente1_idx` (`id_cliente`),
  KEY `fk_viagem_bicicleta1_idx` (`id_bicicleta`),
  KEY `fk_viagem_estacao1_idx` (`id_estacao_inicial`),
  KEY `fk_viagem_estacao2_idx` (`id_estacao_final`),
  CONSTRAINT `fk_viagem_bicicleta1` FOREIGN KEY (`id_bicicleta`) REFERENCES `bicicleta` (`id`),
  CONSTRAINT `fk_viagem_cliente1` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id`),
  CONSTRAINT `fk_viagem_estacao1` FOREIGN KEY (`id_estacao_inicial`) REFERENCES `estacao` (`id`),
  CONSTRAINT `fk_viagem_estacao2` FOREIGN KEY (`id_estacao_final`) REFERENCES `estacao` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `viagem`
--

LOCK TABLES `viagem` WRITE;
/*!40000 ALTER TABLE `viagem` DISABLE KEYS */;
INSERT INTO `viagem` VALUES (1,1,1,13,20,'2023-07-22 01:24:34','2023-07-22 01:40:34'),(2,2,2,10,21,'2023-07-22 01:20:34','2023-07-22 01:40:34'),(3,3,3,11,20,'2023-07-22 01:19:34','2023-07-22 01:41:34'),(4,4,4,1,19,'2023-07-22 01:29:34','2023-07-22 01:47:34'),(5,5,6,1,7,'2023-07-22 01:55:34','2023-07-22 01:59:34'),(7,2,2,10,21,'2023-07-22 01:20:34','2023-07-22 01:40:34'),(8,3,3,11,20,'2023-07-22 01:19:34','2023-07-22 01:41:34'),(9,20,4,1,19,'2023-07-22 01:29:34','2023-07-22 01:47:34'),(10,19,6,1,7,'2023-07-22 01:55:34','2023-07-22 01:59:34'),(12,2,2,10,21,'2023-07-22 01:20:34','2023-07-22 01:40:34'),(13,3,3,11,20,'2023-07-22 01:19:34','2023-07-22 01:41:34'),(14,20,4,1,19,'2023-07-22 01:29:34','2023-07-22 01:47:34'),(15,19,6,1,7,'2023-07-22 01:55:34','2023-07-22 01:59:34'),(16,18,8,7,12,'2023-07-22 01:00:34','2023-07-22 01:29:34'),(18,2,2,10,21,'2023-07-22 01:20:34','2023-07-22 01:40:34'),(19,3,3,11,20,'2023-07-22 01:19:34','2023-07-22 01:41:34'),(20,20,4,1,19,'2023-07-22 01:29:34','2023-07-22 01:47:34'),(21,19,6,1,7,'2023-07-22 01:55:34','2023-07-22 01:59:34'),(22,18,8,7,12,'2023-07-22 01:00:34','2023-07-22 01:29:34'),(23,17,5,7,7,'2023-07-22 01:11:34','2023-07-22 01:40:34'),(24,8,9,14,20,'2023-07-22 01:20:34','2023-07-22 01:40:40'),(25,9,10,10,19,'2023-07-22 01:01:34','2023-07-22 01:25:34'),(26,10,11,8,9,'2023-07-22 01:40:34','2023-07-22 01:59:34'),(27,11,12,1,14,'2023-07-22 01:00:34','2023-07-22 01:25:34'),(28,12,13,4,9,'2023-07-22 01:24:34','2023-07-22 01:40:34'),(29,21,30,2,12,'2022-07-23 02:38:22','2022-07-23 03:00:22'),(58,21,30,2,12,'2022-07-23 02:38:22','2022-07-23 03:00:22'),(59,10,30,2,12,'2022-07-23 02:38:22','2022-07-23 03:00:22'),(60,19,27,4,8,'2022-07-23 02:38:22','2022-07-23 03:00:22'),(61,2,7,10,2,'2022-07-23 02:38:22','2022-07-23 03:00:22'),(62,3,7,12,12,'2022-07-23 02:38:22','2022-07-23 03:00:22'),(63,9,9,4,12,'2022-07-23 02:38:22','2022-07-23 03:00:22'),(64,11,20,2,10,'2022-07-23 02:38:22','2022-07-23 03:00:22');
/*!40000 ALTER TABLE `viagem` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-08-04 18:02:40
