-- MySQL dump 10.13  Distrib 8.0.16, for macos10.14 (x86_64)
--
-- Host: us-cdbr-iron-east-02.cleardb.net    Database: heroku_a13089feafaa2e3
-- ------------------------------------------------------
-- Server version	5.5.62-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `bairro`
--

DROP TABLE IF EXISTS `bairro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `bairro` (
  `bai_id` int(11) NOT NULL AUTO_INCREMENT,
  `bai_nome` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `bai_cidade` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `bai_uf` varchar(2) COLLATE utf8_unicode_ci NOT NULL,
  `log_responsavelinc` int(11) NOT NULL,
  `log_dtinc` datetime NOT NULL,
  `log_responsavelalt` int(11) DEFAULT NULL,
  `log_dtalt` datetime DEFAULT NULL,
  `log_responsaveldel` int(11) DEFAULT NULL,
  `log_dtdel` datetime DEFAULT NULL,
  `bai_ativo` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'S',
  `bai_idreg` int(11) DEFAULT NULL,
  PRIMARY KEY (`bai_id`),
  KEY `IDX_PROJETO_1` (`log_responsavelinc`),
  KEY `IDX_PROJETO_2` (`log_responsavelalt`),
  KEY `IDX_PROJETO_3` (`log_responsaveldel`),
  KEY `IDX_PROJETO_4` (`bai_idreg`),
  CONSTRAINT `bairro_ibfk_1` FOREIGN KEY (`log_responsavelinc`) REFERENCES `m_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `bairro_ibfk_2` FOREIGN KEY (`log_responsavelalt`) REFERENCES `m_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `bairro_ibfk_3` FOREIGN KEY (`log_responsaveldel`) REFERENCES `m_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `bairro_ibfk_4` FOREIGN KEY (`bai_idreg`) REFERENCES `regiao` (`reg_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bairro`
--

LOCK TABLES `bairro` WRITE;
/*!40000 ALTER TABLE `bairro` DISABLE KEYS */;
INSERT INTO `bairro` VALUES (22,'Cambuí','Campinas','SP',2,'2019-08-27 14:55:44',NULL,NULL,NULL,NULL,'S',62),(32,'Taquaral','Campinas','SP',2,'2019-08-27 14:55:57',NULL,NULL,NULL,NULL,'S',62),(42,'São Fernando','Campinas','SP',2,'2019-08-27 14:56:28',NULL,NULL,NULL,NULL,'S',42),(52,'Jardim Chapadão','Campinas','SP',2,'2019-08-27 14:57:24',NULL,NULL,NULL,NULL,'S',22);
/*!40000 ALTER TABLE `bairro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `desafio_objetivo`
--

DROP TABLE IF EXISTS `desafio_objetivo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `desafio_objetivo` (
  `dsf_id` int(11) NOT NULL AUTO_INCREMENT,
  `dsf_desc` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `dsf_obj_id` int(11) NOT NULL,
  `log_dtinc` datetime NOT NULL,
  `log_responsavelinc` int(11) NOT NULL,
  `log_responsavelalt` int(11) DEFAULT NULL,
  `log_dtalt` datetime DEFAULT NULL,
  `log_responsaveldel` int(11) DEFAULT NULL,
  `log_dtdel` datetime DEFAULT NULL,
  `dsf_ativo` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'S',
  `dsf_sequencia` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`dsf_id`),
  KEY `IDX_OBJETIVO_1` (`log_responsavelinc`),
  KEY `IDX_OBJETIVO_2` (`log_responsavelalt`),
  KEY `IDX_OBJETIVO_3` (`log_responsaveldel`),
  KEY `IDX_OBJETIVO_4` (`dsf_obj_id`),
  CONSTRAINT `desafio_objetivo_ibfk_1` FOREIGN KEY (`log_responsavelinc`) REFERENCES `m_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `desafio_objetivo_ibfk_2` FOREIGN KEY (`log_responsavelalt`) REFERENCES `m_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `desafio_objetivo_ibfk_3` FOREIGN KEY (`log_responsaveldel`) REFERENCES `m_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `desafio_objetivo_ibfk_4` FOREIGN KEY (`dsf_obj_id`) REFERENCES `objetivo_programa` (`obj_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=402 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `desafio_objetivo`
--

LOCK TABLES `desafio_objetivo` WRITE;
/*!40000 ALTER TABLE `desafio_objetivo` DISABLE KEYS */;
INSERT INTO `desafio_objetivo` VALUES (102,'Estimular a adoção de novos conceitos de desenvolvimento urbano que viabilizem as cidades como promotoras de desenvolvimento ;',22,'2019-08-27 15:02:48',2,NULL,NULL,NULL,NULL,'S','1.A'),(112,'Incentivar a inovação para tornar os espaços cada vez mais inclusivos;',22,'2019-08-27 15:02:48',2,NULL,NULL,NULL,NULL,'S','1.B'),(122,'Repensar a cidade como espaço educativo oportunizando a história, cultura, identidade e interações sociais.',22,'2019-08-27 15:02:48',2,NULL,NULL,NULL,NULL,'S','1.C'),(132,'Fomentar a utilização dos espaços públicos pelas organizações da sociedade civil para realização de suas atividades;',32,'2019-08-27 15:03:16',2,NULL,NULL,NULL,NULL,'S','2.A'),(142,' Intensificar a oferta de atividades sociais, eventos culturais e esportivos em espaços públicos;',32,'2019-08-27 15:03:16',2,NULL,NULL,NULL,NULL,'S','2.B'),(152,' Impulsionar a estruturação de grupos locais de gestão dos espaços públicos.',32,'2019-08-27 15:03:16',2,NULL,NULL,NULL,NULL,'S','2.C'),(162,'Dar visibilidade a soluções, boas práticas e experiências exitosas de promoção da inclusão de crianças, jovens, idosos e pessoas com deficiência;',42,'2019-08-27 15:03:43',2,NULL,NULL,NULL,NULL,'S','3.A'),(172,'Promover nos espaços de controle social das políticas públicas um debate sobre o papel da cidade na efetivação dos direitos.',42,'2019-08-27 15:03:43',2,NULL,NULL,NULL,NULL,'S','3.B'),(182,'Incentivar o protagonismo local positivo e propositivo que envolva a comunidade na superação dos seus desafios;',52,'2019-08-27 15:04:31',2,NULL,NULL,2,'2019-08-27 15:04:49','N','4.A'),(192,' Desenvolver a capacidade local de articulação e atuação coletiva para promoção do bem-estar social;',52,'2019-08-27 15:04:31',2,NULL,NULL,2,'2019-08-27 15:04:49','N','4.B'),(202,' Apoiar soluções locais e iniciativas piloto com potencial de promoção do desenvolvimento local.',52,'2019-08-27 15:04:31',2,NULL,NULL,2,'2019-08-27 15:04:49','N','4.C'),(212,'Incentivar o protagonismo local positivo e propositivo que envolva a comunidade na superação dos seus desafios;',52,'2019-08-27 15:04:44',2,NULL,NULL,2,'2019-08-27 15:04:49','N','4.A'),(222,'Incentivar o protagonismo local positivo e propositivo que envolva a comunidade na superação dos seus desafios;',62,'2019-08-27 15:05:11',2,NULL,NULL,NULL,NULL,'S','4.A'),(232,' Desenvolver a capacidade local de articulação e atuação coletiva para promoção do bem-estar social;',62,'2019-08-27 15:05:11',2,NULL,NULL,NULL,NULL,'S','4.B'),(242,' Apoiar soluções locais e iniciativas piloto com potencial de promoção do desenvolvimento local.',62,'2019-08-27 15:05:11',2,NULL,NULL,NULL,NULL,'S','4.C'),(252,'Mobilizar cidadãos para se tornarem agentes de mudança em prol do bem-estar-social;',72,'2019-08-27 15:20:04',2,NULL,NULL,NULL,NULL,'S','1.A'),(262,'Articular pessoas para a prática de ações transformadoras que fortaleçam a coletividade.',72,'2019-08-27 15:20:04',2,NULL,NULL,NULL,NULL,'S','1.B'),(272,'dasds',82,'2019-08-27 15:20:16',2,NULL,NULL,2,'2019-08-27 15:20:20','N','2.A'),(282,'Fomentar a articulação das redes comunitárias, o protagonismo dos grupos e a convivência, contribuindo para a qualidade de vida da população;',92,'2019-08-27 15:20:59',2,NULL,NULL,NULL,NULL,'S','2.A'),(292,'Oportunizar investimentos de empresas que qualifiquem projetos de Organizações da Sociedade Civil.',92,'2019-08-27 15:20:59',2,NULL,NULL,NULL,NULL,'S','2.B'),(302,'Fortalecer os espaços de controle social para que orientem sua atuação a partir das premissas de participação social e transparência;',102,'2019-08-27 15:21:26',2,NULL,NULL,NULL,NULL,'S','3.A'),(312,'Propor modelos eficientes de gestão que ampliem os resultados dos conselhos em termos de impacto na garantia e defesa de direitos.',102,'2019-08-27 15:21:26',2,NULL,NULL,NULL,NULL,'S','3.B'),(322,'Fomentar espaços genuinamente autogeridos por jovens;',112,'2019-08-29 14:06:34',122,NULL,NULL,NULL,NULL,'S','1.A'),(332,'Ampliar as possibilidades de escolhas dos jovens frente as diversas questões que refletem em suas vidas;',112,'2019-08-29 14:06:34',122,NULL,NULL,NULL,NULL,'S','1.B'),(342,'Possibilitar a aquisição de habilidades fundamentais de autoproteção e autonomia, a partir da participação social, especialmente entre pares;',112,'2019-08-29 14:06:34',122,NULL,NULL,NULL,NULL,'S','1.C'),(352,'Colaborar com a criação uma cultura de participação política e social voltada à juventude;',122,'2019-08-29 14:07:53',122,NULL,NULL,NULL,NULL,'S','2.A'),(362,'Aumentar a representatividade de jovens nas instâncias formais consultivas e deliberativas das políticas públicas;',122,'2019-08-29 14:07:53',122,NULL,NULL,NULL,NULL,'S','2.B'),(372,'Contribuir para que as instituições tenham modelos inovadores de gestão, viabilizando abertura para a participação efetiva dos jovens na gestão das organizações;',122,'2019-08-29 14:07:53',122,NULL,NULL,NULL,NULL,'S','2.C'),(382,'FdDFdafAFAS',132,'2019-08-29 14:08:22',122,NULL,NULL,122,'2019-08-29 14:09:01','N','3.A'),(392,'Teste',132,'2019-08-29 14:08:46',122,NULL,NULL,122,'2019-08-29 14:09:01','N','3.A');
/*!40000 ALTER TABLE `desafio_objetivo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documentos`
--

DROP TABLE IF EXISTS `documentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `documentos` (
  `doc_id` int(11) NOT NULL AUTO_INCREMENT,
  `doc_nome` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `doc_nome_original` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `log_responsavelinc` int(11) NOT NULL,
  `log_dtinc` datetime NOT NULL,
  `log_responsavelalt` int(11) DEFAULT NULL,
  `log_dtalt` datetime DEFAULT NULL,
  `log_responsaveldel` int(11) DEFAULT NULL,
  `log_dtdel` datetime DEFAULT NULL,
  `reg_ativo` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'S',
  PRIMARY KEY (`doc_id`),
  KEY `IDX_PROJETO_1` (`log_responsavelinc`),
  KEY `IDX_PROJETO_2` (`log_responsavelalt`),
  KEY `IDX_PROJETO_3` (`log_responsaveldel`),
  CONSTRAINT `documentoibfk_1` FOREIGN KEY (`log_responsavelinc`) REFERENCES `m_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `documentoibfk_2` FOREIGN KEY (`log_responsavelalt`) REFERENCES `m_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `documentoibfk_3` FOREIGN KEY (`log_responsaveldel`) REFERENCES `m_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documentos`
--

LOCK TABLES `documentos` WRITE;
/*!40000 ALTER TABLE `documentos` DISABLE KEYS */;
/*!40000 ALTER TABLE `documentos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entidade`
--

DROP TABLE IF EXISTS `entidade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `entidade` (
  `ent_id` int(11) NOT NULL AUTO_INCREMENT,
  `ent_cnpj` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `ent_nome` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ent_caracter_juridico` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ent_fin_estaturaria` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ent_temp_experi` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ent_repres_legal` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ent_end` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ent_cep` int(11) NOT NULL,
  `ent_uf` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ent_cidade` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ent_telefone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ent_num` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `ent_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ent_ativo` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'S',
  `ent_site` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `log_responsavelinc` int(11) NOT NULL,
  `log_dtinc` datetime NOT NULL,
  `log_responsavelalt` int(11) DEFAULT NULL,
  `log_dtalt` datetime DEFAULT NULL,
  `log_responsaveldel` int(11) DEFAULT NULL,
  `log_dtdel` datetime DEFAULT NULL,
  PRIMARY KEY (`ent_id`),
  KEY `IDX_PROJETO_1` (`log_responsavelinc`),
  KEY `IDX_PROJETO_2` (`log_responsavelalt`),
  KEY `IDX_PROJETO_3` (`log_responsaveldel`),
  CONSTRAINT `entidade_ibfk_1` FOREIGN KEY (`log_responsavelinc`) REFERENCES `m_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `entidade_ibfk_2` FOREIGN KEY (`log_responsavelalt`) REFERENCES `m_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `entidade_ibfk_3` FOREIGN KEY (`log_responsaveldel`) REFERENCES `m_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entidade`
--

LOCK TABLES `entidade` WRITE;
/*!40000 ALTER TABLE `entidade` DISABLE KEYS */;
INSERT INTO `entidade` VALUES (22,'10.101.010/1010-10','Entidade Proponente','Entidade Proponente','Entidade Proponente','30','Entidade Proponente','Rua Descampado',13050154,'SP','Campinas','19981221497','555','teste@teste.com','S','teste.com',2,'2019-08-27 15:43:44',2,'2019-08-27 15:44:00',NULL,NULL),(32,'33.333.333/3333-33','Teste','Tetse','Teste','20','teste','Rua Descampado',13050154,'SP','Campinas','(19) 9111-1111','123','teste@teste.com','S','teste.com',82,'2019-08-29 17:52:26',82,'2019-08-29 17:53:39',NULL,NULL);
/*!40000 ALTER TABLE `entidade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `etapa`
--

DROP TABLE IF EXISTS `etapa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `etapa` (
  `etp_id` int(11) NOT NULL AUTO_INCREMENT,
  `etp_cod` int(11) NOT NULL,
  `etp_ds` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `etp_ativo` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'S',
  `log_responsavelinc` int(11) NOT NULL,
  `log_dtinc` datetime NOT NULL,
  `log_responsavelalt` int(11) DEFAULT NULL,
  `log_dtalt` datetime DEFAULT NULL,
  `log_responsaveldel` int(11) DEFAULT NULL,
  `log_dtdel` datetime DEFAULT NULL,
  PRIMARY KEY (`etp_id`),
  KEY `IDX_ETAPA_1` (`log_responsavelinc`),
  KEY `IDX_ETAPA_2` (`log_responsavelalt`),
  KEY `IDX_ETAPA_3` (`log_responsaveldel`),
  CONSTRAINT `etapa_ibfk_1` FOREIGN KEY (`log_responsavelinc`) REFERENCES `m_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `etapa_ibfk_2` FOREIGN KEY (`log_responsavelalt`) REFERENCES `m_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `etapa_ibfk_3` FOREIGN KEY (`log_responsaveldel`) REFERENCES `m_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `etapa`
--

LOCK TABLES `etapa` WRITE;
/*!40000 ALTER TABLE `etapa` DISABLE KEYS */;
INSERT INTO `etapa` VALUES (1,1,'Resumo Analítico','S',2,'2019-06-18 20:34:54',NULL,NULL,NULL,NULL),(2,2,'Interatividade','S',2,'2019-06-18 20:34:54',NULL,NULL,NULL,NULL),(3,3,'Liberação Parecer','S',2,'2019-06-18 20:34:54',NULL,NULL,NULL,NULL),(4,4,'Formulário Técnico','S',2,'2019-06-18 20:34:54',NULL,NULL,NULL,NULL),(5,5,'Formulário Financeiro','S',2,'2019-06-18 20:34:54',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `etapa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `etr_inv_social`
--

DROP TABLE IF EXISTS `etr_inv_social`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `etr_inv_social` (
  `etr_id` int(11) NOT NULL AUTO_INCREMENT,
  `etr_desc` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `etr_ativo` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'S',
  `log_responsavelinc` int(11) NOT NULL,
  `log_dtinc` datetime NOT NULL,
  `log_responsavelalt` int(11) DEFAULT NULL,
  `log_dtalt` datetime DEFAULT NULL,
  `log_responsaveldel` int(11) DEFAULT NULL,
  `log_dtdel` datetime DEFAULT NULL,
  PRIMARY KEY (`etr_id`),
  KEY `IDX_PROJETO_1` (`log_responsavelinc`),
  KEY `IDX_PROJETO_2` (`log_responsavelalt`),
  KEY `IDX_PROJETO_3` (`log_responsaveldel`),
  CONSTRAINT `etr_inv_social_ibfk_1` FOREIGN KEY (`log_responsavelinc`) REFERENCES `m_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `etr_inv_social_ibfk_2` FOREIGN KEY (`log_responsavelalt`) REFERENCES `m_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `etr_inv_social_ibfk_3` FOREIGN KEY (`log_responsaveldel`) REFERENCES `m_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `etr_inv_social`
--

LOCK TABLES `etr_inv_social` WRITE;
/*!40000 ALTER TABLE `etr_inv_social` DISABLE KEYS */;
INSERT INTO `etr_inv_social` VALUES (12,'Estratégia de Investimento Social 1','S',2,'2019-08-27 15:01:00',2,'2019-08-27 15:09:33',NULL,NULL),(22,'Estratégia de Investimento Social 2','S',2,'2019-08-27 15:01:05',2,'2019-08-27 15:09:30',NULL,NULL),(32,'Estratégia de Investimento Social 3','S',2,'2019-08-27 15:01:12',2,'2019-08-27 15:09:23',NULL,NULL);
/*!40000 ALTER TABLE `etr_inv_social` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ff_tecnica_entidade`
--

DROP TABLE IF EXISTS `ff_tecnica_entidade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `ff_tecnica_entidade` (
  `ffte_id` int(11) NOT NULL AUTO_INCREMENT,
  `ffte_ent_id` int(11) NOT NULL,
  `ffte_fft_id` int(11) NOT NULL,
  `ffte_fft_tipo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ffte_ativo` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'S',
  `log_responsavelinc` int(11) NOT NULL,
  `log_dtinc` datetime NOT NULL,
  `log_responsavelalt` int(11) DEFAULT NULL,
  `log_dtalt` datetime DEFAULT NULL,
  `log_responsaveldel` int(11) DEFAULT NULL,
  `log_dtdel` datetime DEFAULT NULL,
  PRIMARY KEY (`ffte_id`),
  KEY `IDX_FICHATECNICAENTIDADE_1` (`log_responsavelinc`),
  KEY `IDX_FICHATECNICAENTIDADE_2` (`log_responsavelalt`),
  KEY `IDX_FICHATECNICAENTIDADE_3` (`log_responsaveldel`),
  KEY `IDX_FICHATECNICAENTIDADE_4` (`ffte_ent_id`),
  KEY `IDX_FICHATECNICAENTIDADE_5` (`ffte_fft_id`),
  CONSTRAINT `form_ficha_tecnica_entidade_ibfk_1` FOREIGN KEY (`log_responsavelinc`) REFERENCES `m_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `form_ficha_tecnica_entidade_ibfk_2` FOREIGN KEY (`log_responsavelalt`) REFERENCES `m_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `form_ficha_tecnica_entidade_ibfk_3` FOREIGN KEY (`log_responsaveldel`) REFERENCES `m_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `form_ficha_tecnica_entidade_ibfk_4` FOREIGN KEY (`ffte_ent_id`) REFERENCES `entidade` (`ent_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `form_ficha_tecnica_entidade_ibfk_5` FOREIGN KEY (`ffte_fft_id`) REFERENCES `form_ficha_tecnica` (`fft_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ff_tecnica_entidade`
--

LOCK TABLES `ff_tecnica_entidade` WRITE;
/*!40000 ALTER TABLE `ff_tecnica_entidade` DISABLE KEYS */;
INSERT INTO `ff_tecnica_entidade` VALUES (22,22,12,'Proponente','S',2,'2019-08-27 15:43:44',NULL,NULL,NULL,NULL),(32,32,52,'Proponente','S',82,'2019-08-29 17:52:27',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `ff_tecnica_entidade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `form_equipe_tecnica`
--

DROP TABLE IF EXISTS `form_equipe_tecnica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `form_equipe_tecnica` (
  `fet_id` int(11) NOT NULL AUTO_INCREMENT,
  `fet_prj_id` int(11) NOT NULL DEFAULT '0',
  `fet_func_projeto` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fet_tp_veiculo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fet_frm_pessoal` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fet_desc_responsabilidade` text COLLATE utf8_unicode_ci NOT NULL,
  `fet_ativo` varchar(1) COLLATE utf8_unicode_ci NOT NULL,
  `log_responsavelinc` int(11) NOT NULL,
  `log_dtinc` datetime NOT NULL,
  `log_responsavelalt` int(11) DEFAULT NULL,
  `log_dtalt` datetime DEFAULT NULL,
  `log_responsaveldel` int(11) DEFAULT NULL,
  `log_dtdel` datetime DEFAULT NULL,
  PRIMARY KEY (`fet_id`),
  KEY `IDX_PROJETO_1` (`log_responsavelinc`),
  KEY `IDX_PROJETO_2` (`log_responsavelalt`),
  KEY `IDX_PROJETO_3` (`log_responsaveldel`),
  KEY `IDX_PROJETO_4` (`fet_prj_id`),
  CONSTRAINT `form_equipe_tecnica_ibfk_1` FOREIGN KEY (`log_responsavelinc`) REFERENCES `m_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `form_equipe_tecnica_ibfk_2` FOREIGN KEY (`log_responsavelalt`) REFERENCES `m_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `form_equipe_tecnica_ibfk_3` FOREIGN KEY (`log_responsaveldel`) REFERENCES `m_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `form_equipe_tecnica_ibfk_4` FOREIGN KEY (`fet_prj_id`) REFERENCES `projeto` (`prj_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `form_equipe_tecnica`
--

LOCK TABLES `form_equipe_tecnica` WRITE;
/*!40000 ALTER TABLE `form_equipe_tecnica` DISABLE KEYS */;
INSERT INTO `form_equipe_tecnica` VALUES (12,62,'Função Projeto *','Tipo de veículo *','Formação Profissional *','Descrição da Responsabilidade *','S',2,'2019-08-27 15:48:43',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `form_equipe_tecnica` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `form_ficha_tecnica`
--

DROP TABLE IF EXISTS `form_ficha_tecnica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `form_ficha_tecnica` (
  `fft_id` int(11) NOT NULL AUTO_INCREMENT,
  `fft_prj_id` int(11) NOT NULL,
  `fft_ativo` varchar(1) CHARACTER SET utf8 NOT NULL,
  `log_responsavelinc` int(11) NOT NULL,
  `log_dtinc` datetime NOT NULL,
  `log_responsavelalt` int(11) DEFAULT NULL,
  `log_dtalt` datetime DEFAULT NULL,
  `log_responsaveldel` int(11) DEFAULT NULL,
  `log_dtdel` datetime DEFAULT NULL,
  PRIMARY KEY (`fft_id`),
  KEY `IDX_PROJETO_1` (`log_responsavelinc`),
  KEY `IDX_PROJETO_2` (`log_responsavelalt`),
  KEY `IDX_PROJETO_3` (`log_responsaveldel`),
  KEY `IDX_PROJETO_6` (`fft_prj_id`),
  CONSTRAINT `form_ficha_tecnica_ibfk_1` FOREIGN KEY (`log_responsavelinc`) REFERENCES `m_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `form_ficha_tecnica_ibfk_2` FOREIGN KEY (`log_responsavelalt`) REFERENCES `m_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `form_ficha_tecnica_ibfk_3` FOREIGN KEY (`log_responsaveldel`) REFERENCES `m_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `form_ficha_tecnica_ibfk_6` FOREIGN KEY (`fft_prj_id`) REFERENCES `projeto` (`prj_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `form_ficha_tecnica`
--

LOCK TABLES `form_ficha_tecnica` WRITE;
/*!40000 ALTER TABLE `form_ficha_tecnica` DISABLE KEYS */;
INSERT INTO `form_ficha_tecnica` VALUES (12,62,'S',2,'2019-08-27 15:39:33',NULL,NULL,NULL,NULL),(22,72,'S',2,'2019-08-27 17:56:14',NULL,NULL,NULL,NULL),(32,82,'S',2,'2019-08-27 18:02:36',NULL,NULL,NULL,NULL),(42,92,'S',2,'2019-08-27 18:44:50',NULL,NULL,NULL,NULL),(52,102,'S',122,'2019-08-29 14:34:08',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `form_ficha_tecnica` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `form_ficha_tecnica_dados_financeiros_proj`
--

DROP TABLE IF EXISTS `form_ficha_tecnica_dados_financeiros_proj`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `form_ficha_tecnica_dados_financeiros_proj` (
  `fftdfp_id` int(11) NOT NULL AUTO_INCREMENT,
  `fftdfp_fft_id` int(11) NOT NULL,
  `fftdfp_prj_id` int(11) NOT NULL,
  `fftdfp_nome` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fftdfp_temp_exec` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `fftdfp_valor_feac` double NOT NULL,
  `fftdfp_idparceiro` int(11) NOT NULL,
  `fftdfp_total` double NOT NULL,
  `fftdfp_ativo` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'S',
  `log_responsavelinc` int(11) NOT NULL,
  `log_dtinc` datetime NOT NULL,
  `log_responsavelalt` int(11) DEFAULT NULL,
  `log_dtalt` datetime DEFAULT NULL,
  `log_responsaveldel` int(11) DEFAULT NULL,
  `log_dtdel` datetime DEFAULT NULL,
  PRIMARY KEY (`fftdfp_id`),
  KEY `IDX_PROJETO_DADOS_FINANCEIROS_1` (`log_responsavelinc`),
  KEY `IDX_PROJETO_DADOS_FINANCEIROS_2` (`log_responsavelalt`),
  KEY `IDX_PROJETO_DADOS_FINANCEIROS_3` (`log_responsaveldel`),
  KEY `IDX_PROJETO_DADOS_FINANCEIROS_4` (`fftdfp_fft_id`),
  KEY `IDX_PROJETO_DADOS_FINANCEIROS_5` (`fftdfp_prj_id`),
  KEY `IDX_PROJETO_DADOS_FINANCEIROS_6` (`fftdfp_idparceiro`),
  CONSTRAINT `form_ficha_tecnica_dados_finance_ibfk_1` FOREIGN KEY (`log_responsavelinc`) REFERENCES `m_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `form_ficha_tecnica_dados_finance_ibfk_2` FOREIGN KEY (`log_responsavelalt`) REFERENCES `m_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `form_ficha_tecnica_dados_finance_ibfk_3` FOREIGN KEY (`log_responsaveldel`) REFERENCES `m_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `form_ficha_tecnica_dados_finance_ibfk_4` FOREIGN KEY (`fftdfp_fft_id`) REFERENCES `form_ficha_tecnica` (`fft_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `form_ficha_tecnica_dados_finance_ibfk_5` FOREIGN KEY (`fftdfp_prj_id`) REFERENCES `projeto` (`prj_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `form_ficha_tecnica_dados_finance_ibfk_6` FOREIGN KEY (`fftdfp_idparceiro`) REFERENCES `form_tecnico_introducao_parceiro` (`fti_parc_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `form_ficha_tecnica_dados_financeiros_proj`
--

LOCK TABLES `form_ficha_tecnica_dados_financeiros_proj` WRITE;
/*!40000 ALTER TABLE `form_ficha_tecnica_dados_financeiros_proj` DISABLE KEYS */;
INSERT INTO `form_ficha_tecnica_dados_financeiros_proj` VALUES (32,32,82,'55','55 Mês(es)',555,12,55,'N',2,'2019-08-27 18:42:24',NULL,NULL,2,'2019-08-27 18:42:38'),(42,52,102,'Dados 1','24 Mês(es)',10,22,10,'S',82,'2019-08-29 18:28:04',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `form_ficha_tecnica_dados_financeiros_proj` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `form_tecnico_apresentacao`
--

DROP TABLE IF EXISTS `form_tecnico_apresentacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `form_tecnico_apresentacao` (
  `fta_id` int(11) NOT NULL AUTO_INCREMENT,
  `fta_proponente_beneficiario` text CHARACTER SET utf8 NOT NULL,
  `fta_prj_id` int(11) NOT NULL,
  `log_responsavelinc` int(11) NOT NULL,
  `log_dtinc` datetime NOT NULL,
  `log_responsavelalt` int(11) DEFAULT NULL,
  `log_dtalt` datetime DEFAULT NULL,
  `log_responsaveldel` int(11) DEFAULT NULL,
  `log_dtdel` datetime DEFAULT NULL,
  `fta_ativo` char(1) CHARACTER SET utf8 NOT NULL DEFAULT 'S',
  PRIMARY KEY (`fta_id`),
  KEY `IDX_PROJETO_1` (`log_responsavelinc`),
  KEY `IDX_PROJETO_2` (`log_responsavelalt`),
  KEY `IDX_PROJETO_3` (`log_responsaveldel`),
  KEY `IDX_PROJETO_4` (`fta_prj_id`),
  CONSTRAINT `form_tecnico_apresentacao_ibfk_1` FOREIGN KEY (`log_responsavelinc`) REFERENCES `m_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `form_tecnico_apresentacao_ibfk_2` FOREIGN KEY (`log_responsavelalt`) REFERENCES `m_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `form_tecnico_apresentacao_ibfk_3` FOREIGN KEY (`log_responsaveldel`) REFERENCES `m_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `form_tecnico_apresentacao_ibfk_4` FOREIGN KEY (`fta_prj_id`) REFERENCES `projeto` (`prj_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `form_tecnico_apresentacao`
--

LOCK TABLES `form_tecnico_apresentacao` WRITE;
/*!40000 ALTER TABLE `form_tecnico_apresentacao` DISABLE KEYS */;
INSERT INTO `form_tecnico_apresentacao` VALUES (12,'2.2 Organizações envolvidas (proponente e beneficiária) *',62,2,'2019-08-27 15:46:52',2,'2019-08-27 15:49:33',NULL,NULL,'S');
/*!40000 ALTER TABLE `form_tecnico_apresentacao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `form_tecnico_contextualizacao`
--

DROP TABLE IF EXISTS `form_tecnico_contextualizacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `form_tecnico_contextualizacao` (
  `ftc_id` int(11) NOT NULL AUTO_INCREMENT,
  `ftc_grup_destinatario` text CHARACTER SET utf8 NOT NULL,
  `ftc_justificativa` text CHARACTER SET utf8 NOT NULL,
  `ftc_prj_id` int(11) NOT NULL,
  `log_responsavelinc` int(11) NOT NULL,
  `log_dtinc` datetime NOT NULL,
  `log_responsavelalt` int(11) DEFAULT NULL,
  `log_dtalt` datetime DEFAULT NULL,
  `log_responsaveldel` int(11) DEFAULT NULL,
  `log_dtdel` datetime DEFAULT NULL,
  `ftc_ativo` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ftc_id`),
  KEY `IDX_PROJETO_1` (`log_responsavelinc`),
  KEY `IDX_PROJETO_2` (`log_responsavelalt`),
  KEY `IDX_PROJETO_3` (`log_responsaveldel`),
  KEY `IDX_PROJETO_4` (`ftc_prj_id`),
  CONSTRAINT `form_tecnico_contextualizacao_ibfk_1` FOREIGN KEY (`log_responsavelinc`) REFERENCES `m_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `form_tecnico_contextualizacao_ibfk_2` FOREIGN KEY (`log_responsavelalt`) REFERENCES `m_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `form_tecnico_contextualizacao_ibfk_3` FOREIGN KEY (`log_responsaveldel`) REFERENCES `m_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `form_tecnico_contextualizacao_ibfk_4` FOREIGN KEY (`ftc_prj_id`) REFERENCES `projeto` (`prj_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `form_tecnico_contextualizacao`
--

LOCK TABLES `form_tecnico_contextualizacao` WRITE;
/*!40000 ALTER TABLE `form_tecnico_contextualizacao` DISABLE KEYS */;
INSERT INTO `form_tecnico_contextualizacao` VALUES (12,'3.1 Contexto e Grupo Destinatário *','3.2 Justificativa *',62,2,'2019-08-27 15:46:58',2,'2019-08-27 15:49:31',NULL,NULL,'S');
/*!40000 ALTER TABLE `form_tecnico_contextualizacao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `form_tecnico_estrategia`
--

DROP TABLE IF EXISTS `form_tecnico_estrategia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `form_tecnico_estrategia` (
  `fte_id` int(11) NOT NULL AUTO_INCREMENT,
  `fte_prj_id` int(11) NOT NULL DEFAULT '0',
  `fte_obj_projeto` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fte_ativo` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `log_responsavelinc` int(11) NOT NULL,
  `log_dtinc` datetime NOT NULL,
  `log_responsavelalt` int(11) DEFAULT NULL,
  `log_dtalt` datetime DEFAULT NULL,
  `log_responsaveldel` int(11) DEFAULT NULL,
  `log_dtdel` datetime DEFAULT NULL,
  PRIMARY KEY (`fte_id`),
  KEY `IDX_PROJETO_1` (`log_responsavelinc`),
  KEY `IDX_PROJETO_2` (`log_responsavelalt`),
  KEY `IDX_PROJETO_3` (`log_responsaveldel`),
  KEY `IDX_PROJETO_4` (`fte_prj_id`),
  CONSTRAINT `form_tecnico_estrategia_ibfk_1` FOREIGN KEY (`log_responsavelinc`) REFERENCES `m_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `form_tecnico_estrategia_ibfk_2` FOREIGN KEY (`log_responsavelalt`) REFERENCES `m_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `form_tecnico_estrategia_ibfk_3` FOREIGN KEY (`log_responsaveldel`) REFERENCES `m_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `form_tecnico_estrategia_ibfk_4` FOREIGN KEY (`fte_prj_id`) REFERENCES `projeto` (`prj_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `form_tecnico_estrategia`
--

LOCK TABLES `form_tecnico_estrategia` WRITE;
/*!40000 ALTER TABLE `form_tecnico_estrategia` DISABLE KEYS */;
INSERT INTO `form_tecnico_estrategia` VALUES (12,62,'4.1 Objetivo do projeto *','S',2,'2019-08-27 15:48:14',2,'2019-08-27 15:49:27',NULL,NULL);
/*!40000 ALTER TABLE `form_tecnico_estrategia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `form_tecnico_estrategia_cronograma`
--

DROP TABLE IF EXISTS `form_tecnico_estrategia_cronograma`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `form_tecnico_estrategia_cronograma` (
  `fte_cro_id` int(11) NOT NULL AUTO_INCREMENT,
  `fte_cro_idprj` int(11) NOT NULL,
  `fte_cro_idfte` int(11) NOT NULL,
  `fte_cro_atividade` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fte_cro_responsavel` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fte_cro_ativo` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'S',
  `log_responsavelinc` int(11) NOT NULL,
  `log_dtinc` datetime NOT NULL,
  `log_responsavelalt` int(11) DEFAULT NULL,
  `log_dtalt` datetime DEFAULT NULL,
  `log_responsaveldel` int(11) DEFAULT NULL,
  `log_dtdel` datetime DEFAULT NULL,
  PRIMARY KEY (`fte_cro_id`),
  KEY `IDX_PROGRAMA_1` (`log_responsavelinc`),
  KEY `IDX_PROGRAMA_2` (`log_responsavelalt`),
  KEY `IDX_PROGRAMA_3` (`log_responsaveldel`),
  KEY `IDX_PROGRAMA_4` (`fte_cro_idprj`),
  KEY `IDX_PROGRAMA_5` (`fte_cro_idfte`),
  CONSTRAINT `fte_cro_ibfk_1` FOREIGN KEY (`log_responsavelinc`) REFERENCES `m_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fte_cro_ibfk_2` FOREIGN KEY (`log_responsavelalt`) REFERENCES `m_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fte_cro_ibfk_3` FOREIGN KEY (`log_responsaveldel`) REFERENCES `m_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fte_cro_ibfk_4` FOREIGN KEY (`fte_cro_idprj`) REFERENCES `projeto` (`prj_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fte_cro_ibfk_5` FOREIGN KEY (`fte_cro_idfte`) REFERENCES `form_tecnico_estrategia` (`fte_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=262 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `form_tecnico_estrategia_cronograma`
--

LOCK TABLES `form_tecnico_estrategia_cronograma` WRITE;
/*!40000 ALTER TABLE `form_tecnico_estrategia_cronograma` DISABLE KEYS */;
INSERT INTO `form_tecnico_estrategia_cronograma` VALUES (242,62,12,' Atividade 1','Responsável 1','S',2,'2019-08-27 15:49:27',NULL,NULL,NULL,NULL),(252,62,12,' Atividade 2','Responsável 2','S',2,'2019-08-27 15:49:27',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `form_tecnico_estrategia_cronograma` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `form_tecnico_estrategia_cronograma_mes`
--

DROP TABLE IF EXISTS `form_tecnico_estrategia_cronograma_mes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `form_tecnico_estrategia_cronograma_mes` (
  `fte_cro_mes_id` int(11) NOT NULL AUTO_INCREMENT,
  `fte_cro_mes_idcro` int(11) NOT NULL,
  `fte_cro_mes_num` int(11) NOT NULL,
  `fte_cro_mes_ativo` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'S',
  `log_responsavelinc` int(11) NOT NULL,
  `log_dtinc` datetime NOT NULL,
  `log_responsavelalt` int(11) DEFAULT NULL,
  `log_dtalt` datetime DEFAULT NULL,
  `log_responsaveldel` int(11) DEFAULT NULL,
  `log_dtdel` datetime DEFAULT NULL,
  PRIMARY KEY (`fte_cro_mes_id`),
  KEY `IDX_PROGRAMA_1` (`log_responsavelinc`),
  KEY `IDX_PROGRAMA_2` (`log_responsavelalt`),
  KEY `IDX_PROGRAMA_3` (`log_responsaveldel`),
  KEY `IDX_PROGRAMA_4` (`fte_cro_mes_idcro`),
  CONSTRAINT `fte_cro_mes_ibfk_1` FOREIGN KEY (`log_responsavelinc`) REFERENCES `m_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fte_cro_mes_ibfk_2` FOREIGN KEY (`log_responsavelalt`) REFERENCES `m_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fte_cro_mes_ibfk_3` FOREIGN KEY (`log_responsaveldel`) REFERENCES `m_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fte_cro_mes_ibfk_4` FOREIGN KEY (`fte_cro_mes_idcro`) REFERENCES `form_tecnico_estrategia_cronograma` (`fte_cro_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=212 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `form_tecnico_estrategia_cronograma_mes`
--

LOCK TABLES `form_tecnico_estrategia_cronograma_mes` WRITE;
/*!40000 ALTER TABLE `form_tecnico_estrategia_cronograma_mes` DISABLE KEYS */;
INSERT INTO `form_tecnico_estrategia_cronograma_mes` VALUES (152,242,1,'S',2,'2019-08-27 15:49:27',NULL,NULL,NULL,NULL),(162,242,2,'S',2,'2019-08-27 15:49:27',NULL,NULL,NULL,NULL),(172,242,3,'S',2,'2019-08-27 15:49:27',NULL,NULL,NULL,NULL),(182,252,12,'S',2,'2019-08-27 15:49:27',NULL,NULL,NULL,NULL),(192,252,13,'S',2,'2019-08-27 15:49:27',NULL,NULL,NULL,NULL),(202,252,14,'S',2,'2019-08-27 15:49:27',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `form_tecnico_estrategia_cronograma_mes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `form_tecnico_estrategia_cronograma_meta`
--

DROP TABLE IF EXISTS `form_tecnico_estrategia_cronograma_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `form_tecnico_estrategia_cronograma_meta` (
  `fte_cro_meta_id` int(11) NOT NULL AUTO_INCREMENT,
  `fte_cro_meta_idcro` int(11) NOT NULL,
  `fte_cro_meta_idmeta` int(11) NOT NULL,
  `fte_cro_meta_ativo` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'S',
  `log_responsavelinc` int(11) NOT NULL,
  `log_dtinc` datetime NOT NULL,
  `log_responsavelalt` int(11) DEFAULT NULL,
  `log_dtalt` datetime DEFAULT NULL,
  `log_responsaveldel` int(11) DEFAULT NULL,
  `log_dtdel` datetime DEFAULT NULL,
  PRIMARY KEY (`fte_cro_meta_id`),
  KEY `IDX_PROGRAMA_1` (`log_responsavelinc`),
  KEY `IDX_PROGRAMA_2` (`log_responsavelalt`),
  KEY `IDX_PROGRAMA_3` (`log_responsaveldel`),
  KEY `IDX_PROGRAMA_6` (`fte_cro_meta_idmeta`),
  CONSTRAINT `fte_cro_meta_ibfk_1` FOREIGN KEY (`log_responsavelinc`) REFERENCES `m_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fte_cro_meta_ibfk_2` FOREIGN KEY (`log_responsavelalt`) REFERENCES `m_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fte_cro_meta_ibfk_3` FOREIGN KEY (`log_responsaveldel`) REFERENCES `m_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fte_cro_meta_ibfk_6` FOREIGN KEY (`fte_cro_meta_idmeta`) REFERENCES `form_tecnico_estrategia_meta` (`fte_meta_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=122 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `form_tecnico_estrategia_cronograma_meta`
--

LOCK TABLES `form_tecnico_estrategia_cronograma_meta` WRITE;
/*!40000 ALTER TABLE `form_tecnico_estrategia_cronograma_meta` DISABLE KEYS */;
INSERT INTO `form_tecnico_estrategia_cronograma_meta` VALUES (92,242,62,'S',2,'2019-08-27 15:49:27',NULL,NULL,NULL,NULL),(102,242,72,'S',2,'2019-08-27 15:49:27',NULL,NULL,NULL,NULL),(112,252,72,'S',2,'2019-08-27 15:49:27',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `form_tecnico_estrategia_cronograma_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `form_tecnico_estrategia_ind_geral`
--

DROP TABLE IF EXISTS `form_tecnico_estrategia_ind_geral`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `form_tecnico_estrategia_ind_geral` (
  `fte_ind_geral_id` int(11) NOT NULL AUTO_INCREMENT,
  `fte_ind_geral_idprj` int(11) NOT NULL,
  `fte_ind_geral_idfte` int(11) NOT NULL,
  `fte_ind_geral_idind` int(11) NOT NULL,
  `fte_ind_geral_qtd` int(11) NOT NULL,
  `fte_ind_geral_seme` int(11) NOT NULL,
  `fte_ind_geral_ativo` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'S',
  `log_responsavelinc` int(11) NOT NULL,
  `log_dtinc` datetime NOT NULL,
  `log_responsavelalt` int(11) DEFAULT NULL,
  `log_dtalt` datetime DEFAULT NULL,
  `log_responsaveldel` int(11) DEFAULT NULL,
  `log_dtdel` datetime DEFAULT NULL,
  PRIMARY KEY (`fte_ind_geral_id`),
  KEY `IDX_PROGRAMA_1` (`log_responsavelinc`),
  KEY `IDX_PROGRAMA_2` (`log_responsavelalt`),
  KEY `IDX_PROGRAMA_3` (`log_responsaveldel`),
  KEY `IDX_PROGRAMA_4` (`fte_ind_geral_idprj`),
  KEY `IDX_PROGRAMA_5` (`fte_ind_geral_idfte`),
  KEY `fte_ind_geral_ibfk_6` (`fte_ind_geral_idind`),
  CONSTRAINT `fte_ind_geral_ibfk_1` FOREIGN KEY (`log_responsavelinc`) REFERENCES `m_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fte_ind_geral_ibfk_2` FOREIGN KEY (`log_responsavelalt`) REFERENCES `m_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fte_ind_geral_ibfk_3` FOREIGN KEY (`log_responsaveldel`) REFERENCES `m_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fte_ind_geral_ibfk_4` FOREIGN KEY (`fte_ind_geral_idprj`) REFERENCES `projeto` (`prj_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fte_ind_geral_ibfk_5` FOREIGN KEY (`fte_ind_geral_idfte`) REFERENCES `form_tecnico_estrategia` (`fte_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fte_ind_geral_ibfk_6` FOREIGN KEY (`fte_ind_geral_idind`) REFERENCES `programa_indicadores` (`pri_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `form_tecnico_estrategia_ind_geral`
--

LOCK TABLES `form_tecnico_estrategia_ind_geral` WRITE;
/*!40000 ALTER TABLE `form_tecnico_estrategia_ind_geral` DISABLE KEYS */;
INSERT INTO `form_tecnico_estrategia_ind_geral` VALUES (62,62,12,42,2,3,'S',2,'2019-08-27 15:49:27',NULL,NULL,NULL,NULL),(72,62,12,102,3,4,'S',2,'2019-08-27 15:49:27',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `form_tecnico_estrategia_ind_geral` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `form_tecnico_estrategia_ind_quali`
--

DROP TABLE IF EXISTS `form_tecnico_estrategia_ind_quali`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `form_tecnico_estrategia_ind_quali` (
  `fte_ind_quali_id` int(11) NOT NULL AUTO_INCREMENT,
  `fte_ind_quali_idprj` int(11) NOT NULL,
  `fte_ind_quali_idfte` int(11) NOT NULL,
  `fte_ind_quali_desc` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fte_ind_quali_ativo` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'S',
  `log_responsavelinc` int(11) NOT NULL,
  `log_dtinc` datetime NOT NULL,
  `log_responsavelalt` int(11) DEFAULT NULL,
  `log_dtalt` datetime DEFAULT NULL,
  `log_responsaveldel` int(11) DEFAULT NULL,
  `log_dtdel` datetime DEFAULT NULL,
  PRIMARY KEY (`fte_ind_quali_id`),
  KEY `IDX_PROGRAMA_1` (`log_responsavelinc`),
  KEY `IDX_PROGRAMA_2` (`log_responsavelalt`),
  KEY `IDX_PROGRAMA_3` (`log_responsaveldel`),
  KEY `IDX_PROGRAMA_4` (`fte_ind_quali_idprj`),
  KEY `IDX_PROGRAMA_5` (`fte_ind_quali_idfte`),
  CONSTRAINT `fte_ind_quali_ibfk_1` FOREIGN KEY (`log_responsavelinc`) REFERENCES `m_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fte_ind_quali_ibfk_2` FOREIGN KEY (`log_responsavelalt`) REFERENCES `m_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fte_ind_quali_ibfk_3` FOREIGN KEY (`log_responsaveldel`) REFERENCES `m_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fte_ind_quali_ibfk_4` FOREIGN KEY (`fte_ind_quali_idprj`) REFERENCES `projeto` (`prj_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fte_ind_quali_ibfk_5` FOREIGN KEY (`fte_ind_quali_idfte`) REFERENCES `form_tecnico_estrategia` (`fte_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `form_tecnico_estrategia_ind_quali`
--

LOCK TABLES `form_tecnico_estrategia_ind_quali` WRITE;
/*!40000 ALTER TABLE `form_tecnico_estrategia_ind_quali` DISABLE KEYS */;
INSERT INTO `form_tecnico_estrategia_ind_quali` VALUES (72,62,12,'Indicadores Qualitativos 1','S',2,'2019-08-27 15:49:27',NULL,NULL,NULL,NULL),(82,62,12,'Indicadores Qualitativos 2','S',2,'2019-08-27 15:49:27',NULL,NULL,NULL,NULL),(92,62,12,'Indicadores Qualitativos 3','S',2,'2019-08-27 15:49:27',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `form_tecnico_estrategia_ind_quali` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `form_tecnico_estrategia_ind_quant`
--

DROP TABLE IF EXISTS `form_tecnico_estrategia_ind_quant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `form_tecnico_estrategia_ind_quant` (
  `fte_ind_quant_id` int(11) NOT NULL AUTO_INCREMENT,
  `fte_ind_quant_idprj` int(11) NOT NULL,
  `fte_ind_quant_idfte` int(11) NOT NULL,
  `fte_ind_quant_desc` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fte_ind_quant_qtd` int(11) NOT NULL,
  `fte_ind_quant_seme` int(11) NOT NULL,
  `fte_ind_quant_ativo` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'S',
  `log_responsavelinc` int(11) NOT NULL,
  `log_dtinc` datetime NOT NULL,
  `log_responsavelalt` int(11) DEFAULT NULL,
  `log_dtalt` datetime DEFAULT NULL,
  `log_responsaveldel` int(11) DEFAULT NULL,
  `log_dtdel` datetime DEFAULT NULL,
  PRIMARY KEY (`fte_ind_quant_id`),
  KEY `IDX_PROGRAMA_1` (`log_responsavelinc`),
  KEY `IDX_PROGRAMA_2` (`log_responsavelalt`),
  KEY `IDX_PROGRAMA_3` (`log_responsaveldel`),
  KEY `IDX_PROGRAMA_4` (`fte_ind_quant_idprj`),
  KEY `IDX_PROGRAMA_5` (`fte_ind_quant_idfte`),
  CONSTRAINT `fte_ind_quant_ibfk_1` FOREIGN KEY (`log_responsavelinc`) REFERENCES `m_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fte_ind_quant_ibfk_2` FOREIGN KEY (`log_responsavelalt`) REFERENCES `m_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fte_ind_quant_ibfk_3` FOREIGN KEY (`log_responsaveldel`) REFERENCES `m_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fte_ind_quant_ibfk_4` FOREIGN KEY (`fte_ind_quant_idprj`) REFERENCES `projeto` (`prj_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fte_ind_quant_ibfk_5` FOREIGN KEY (`fte_ind_quant_idfte`) REFERENCES `form_tecnico_estrategia` (`fte_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `form_tecnico_estrategia_ind_quant`
--

LOCK TABLES `form_tecnico_estrategia_ind_quant` WRITE;
/*!40000 ALTER TABLE `form_tecnico_estrategia_ind_quant` DISABLE KEYS */;
INSERT INTO `form_tecnico_estrategia_ind_quant` VALUES (62,62,12,'Indicadores Quantitativos 1',10,2,'S',2,'2019-08-27 15:49:27',NULL,NULL,NULL,NULL),(72,62,12,'Indicadores Quantitativos 2',20,3,'S',2,'2019-08-27 15:49:27',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `form_tecnico_estrategia_ind_quant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `form_tecnico_estrategia_meta`
--

DROP TABLE IF EXISTS `form_tecnico_estrategia_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `form_tecnico_estrategia_meta` (
  `fte_meta_id` int(11) NOT NULL AUTO_INCREMENT,
  `fte_meta_idprj` int(11) NOT NULL,
  `fte_meta_idfte` int(11) DEFAULT NULL,
  `fte_meta_desc` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `fte_meta_num` int(20) NOT NULL,
  `fte_meta_ativo` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'S',
  `log_responsavelinc` int(11) NOT NULL,
  `log_dtinc` datetime NOT NULL,
  `log_responsavelalt` int(11) DEFAULT NULL,
  `log_dtalt` datetime DEFAULT NULL,
  `log_responsaveldel` int(11) DEFAULT NULL,
  `log_dtdel` datetime DEFAULT NULL,
  PRIMARY KEY (`fte_meta_id`),
  KEY `IDX_PROGRAMA_1` (`log_responsavelinc`),
  KEY `IDX_PROGRAMA_2` (`log_responsavelalt`),
  KEY `IDX_PROGRAMA_3` (`log_responsaveldel`),
  KEY `IDX_PROGRAMA_4` (`fte_meta_idprj`),
  KEY `IDX_PROGRAMA_5` (`fte_meta_idfte`),
  CONSTRAINT `fte_meta_ibfk_1` FOREIGN KEY (`log_responsavelinc`) REFERENCES `m_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fte_meta_ibfk_2` FOREIGN KEY (`log_responsavelalt`) REFERENCES `m_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fte_meta_ibfk_3` FOREIGN KEY (`log_responsaveldel`) REFERENCES `m_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fte_meta_ibfk_4` FOREIGN KEY (`fte_meta_idprj`) REFERENCES `projeto` (`prj_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fte_meta_ibfk_5` FOREIGN KEY (`fte_meta_idfte`) REFERENCES `form_tecnico_estrategia` (`fte_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `form_tecnico_estrategia_meta`
--

LOCK TABLES `form_tecnico_estrategia_meta` WRITE;
/*!40000 ALTER TABLE `form_tecnico_estrategia_meta` DISABLE KEYS */;
INSERT INTO `form_tecnico_estrategia_meta` VALUES (62,62,NULL,'Meta 1',1,'S',2,'2019-08-27 15:47:08',NULL,NULL,NULL,NULL),(72,62,NULL,'Meta 2',2,'S',2,'2019-08-27 15:47:12',NULL,NULL,NULL,NULL),(82,102,NULL,'Meta 1',1,'S',82,'2019-08-29 18:42:47',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `form_tecnico_estrategia_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `form_tecnico_financeiro_memoria_calculo`
--

DROP TABLE IF EXISTS `form_tecnico_financeiro_memoria_calculo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `form_tecnico_financeiro_memoria_calculo` (
  `ftf_id` int(11) NOT NULL AUTO_INCREMENT,
  `ftf_prj_id` int(11) NOT NULL DEFAULT '0',
  `ftf_fonte` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ftf_linha_invest` varchar(255) CHARACTER SET utf8 NOT NULL,
  `ftf_rubrica` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ftf_item` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ftf_qtd_mensal` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ftf_valor` double(20,2) DEFAULT NULL,
  `ftf_ativo` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `log_responsavelinc` int(11) NOT NULL,
  `log_dtinc` datetime NOT NULL,
  `log_responsavelalt` int(11) DEFAULT NULL,
  `log_dtalt` datetime DEFAULT NULL,
  `log_responsaveldel` int(11) DEFAULT NULL,
  `log_dtdel` datetime DEFAULT NULL,
  PRIMARY KEY (`ftf_id`),
  KEY `IDX_PROJETO_1` (`log_responsavelinc`),
  KEY `IDX_PROJETO_2` (`log_responsavelalt`),
  KEY `IDX_PROJETO_3` (`log_responsaveldel`),
  KEY `IDX_PROJETO_4` (`ftf_prj_id`),
  CONSTRAINT `form_tecnico_financeiro_memoria_calculo_ibfk_1` FOREIGN KEY (`log_responsavelinc`) REFERENCES `m_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `form_tecnico_financeiro_memoria_calculo_ibfk_2` FOREIGN KEY (`log_responsavelalt`) REFERENCES `m_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `form_tecnico_financeiro_memoria_calculo_ibfk_3` FOREIGN KEY (`log_responsaveldel`) REFERENCES `m_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `form_tecnico_financeiro_memoria_calculo_ibfk_4` FOREIGN KEY (`ftf_prj_id`) REFERENCES `projeto` (`prj_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `form_tecnico_financeiro_memoria_calculo`
--

LOCK TABLES `form_tecnico_financeiro_memoria_calculo` WRITE;
/*!40000 ALTER TABLE `form_tecnico_financeiro_memoria_calculo` DISABLE KEYS */;
/*!40000 ALTER TABLE `form_tecnico_financeiro_memoria_calculo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `form_tecnico_financeiro_memoria_calculo_mes`
--

DROP TABLE IF EXISTS `form_tecnico_financeiro_memoria_calculo_mes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `form_tecnico_financeiro_memoria_calculo_mes` (
  `ftf_mes_id` int(11) NOT NULL AUTO_INCREMENT,
  `ftf_mes_idftf` int(11) NOT NULL,
  `ftf_mes_num` int(11) NOT NULL,
  `ftf_mes_ativo` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'S',
  `log_responsavelinc` int(11) NOT NULL,
  `log_dtinc` datetime NOT NULL,
  `log_responsavelalt` int(11) DEFAULT NULL,
  `log_dtalt` datetime DEFAULT NULL,
  `log_responsaveldel` int(11) DEFAULT NULL,
  `log_dtdel` datetime DEFAULT NULL,
  PRIMARY KEY (`ftf_mes_id`),
  KEY `IDX_PROGRAMA_1` (`log_responsavelinc`),
  KEY `IDX_PROGRAMA_2` (`log_responsavelalt`),
  KEY `IDX_PROGRAMA_3` (`log_responsaveldel`),
  KEY `IDX_PROGRAMA_4` (`ftf_mes_idftf`),
  CONSTRAINT `ftf_mes_ibfk_1` FOREIGN KEY (`log_responsavelinc`) REFERENCES `m_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `ftf_mes_ibfk_2` FOREIGN KEY (`log_responsavelalt`) REFERENCES `m_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `ftf_mes_ibfk_3` FOREIGN KEY (`log_responsaveldel`) REFERENCES `m_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `ftf_mes_ibfk_4` FOREIGN KEY (`ftf_mes_idftf`) REFERENCES `form_tecnico_financeiro_memoria_calculo` (`ftf_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `form_tecnico_financeiro_memoria_calculo_mes`
--

LOCK TABLES `form_tecnico_financeiro_memoria_calculo_mes` WRITE;
/*!40000 ALTER TABLE `form_tecnico_financeiro_memoria_calculo_mes` DISABLE KEYS */;
/*!40000 ALTER TABLE `form_tecnico_financeiro_memoria_calculo_mes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `form_tecnico_introducao`
--

DROP TABLE IF EXISTS `form_tecnico_introducao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `form_tecnico_introducao` (
  `fti_id` int(11) NOT NULL AUTO_INCREMENT,
  `fti_prj_id` int(11) NOT NULL DEFAULT '0',
  `fti_org_proponente` text COLLATE utf8_unicode_ci NOT NULL,
  `fti_dtinc` datetime NOT NULL,
  `fti_dtfim` datetime NOT NULL,
  `fti_ativo` varchar(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `log_responsavelinc` int(11) NOT NULL,
  `log_dtinc` datetime NOT NULL,
  `log_responsavelalt` int(11) DEFAULT NULL,
  `log_dtalt` datetime DEFAULT NULL,
  `log_responsaveldel` int(11) DEFAULT NULL,
  `log_dtdel` datetime DEFAULT NULL,
  PRIMARY KEY (`fti_id`),
  KEY `IDX_PROJETO_1` (`log_responsavelinc`),
  KEY `IDX_PROJETO_2` (`log_responsavelalt`),
  KEY `IDX_PROJETO_3` (`log_responsaveldel`),
  KEY `IDX_PROJETO_6` (`fti_prj_id`),
  CONSTRAINT `form_tecnico_introducao_ibfk_1` FOREIGN KEY (`log_responsavelinc`) REFERENCES `m_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `form_tecnico_introducao_ibfk_2` FOREIGN KEY (`log_responsavelalt`) REFERENCES `m_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `form_tecnico_introducao_ibfk_3` FOREIGN KEY (`log_responsaveldel`) REFERENCES `m_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `form_tecnico_introducao_ibfk_6` FOREIGN KEY (`fti_prj_id`) REFERENCES `projeto` (`prj_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=182 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `form_tecnico_introducao`
--

LOCK TABLES `form_tecnico_introducao` WRITE;
/*!40000 ALTER TABLE `form_tecnico_introducao` DISABLE KEYS */;
INSERT INTO `form_tecnico_introducao` VALUES (132,62,'Organização Proponente ','0000-00-00 00:00:00','0000-00-00 00:00:00','S',2,'2019-08-27 15:39:33',2,'2019-08-27 17:53:31',NULL,NULL),(142,72,'Organização Proponente','2019-08-07 00:00:00','2020-07-07 00:00:00','S',2,'2019-08-27 17:56:14',NULL,NULL,NULL,NULL),(152,82,'TT','2019-06-08 00:00:00','2021-06-07 00:00:00','S',2,'2019-08-27 18:02:36',2,'2019-08-27 18:02:59',NULL,NULL),(162,92,'rewrew','2019-08-07 00:00:00','2021-07-07 00:00:00','S',2,'2019-08-27 18:44:50',NULL,NULL,NULL,NULL),(172,102,'31312','2019-05-08 00:00:00','2021-05-07 00:00:00','S',122,'2019-08-29 14:34:08',82,'2019-08-29 18:27:36',NULL,NULL);
/*!40000 ALTER TABLE `form_tecnico_introducao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `form_tecnico_introducao_parceiro`
--

DROP TABLE IF EXISTS `form_tecnico_introducao_parceiro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `form_tecnico_introducao_parceiro` (
  `fti_parc_id` int(11) NOT NULL AUTO_INCREMENT,
  `fti_parc_idprj` int(11) NOT NULL,
  `fti_parc_idfti` int(11) NOT NULL,
  `fti_parc_idmod` int(11) NOT NULL,
  `fti_parc_nome` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `fti_parc_file` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `fti_parc_url_file` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `fti_parc_ativo` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'S',
  `log_responsavelinc` int(11) NOT NULL,
  `log_dtinc` datetime NOT NULL,
  `log_responsavelalt` int(11) DEFAULT NULL,
  `log_dtalt` datetime DEFAULT NULL,
  `log_responsaveldel` int(11) DEFAULT NULL,
  `log_dtdel` datetime DEFAULT NULL,
  PRIMARY KEY (`fti_parc_id`),
  KEY `IDX_PROGRAMA_1` (`log_responsavelinc`),
  KEY `IDX_PROGRAMA_2` (`log_responsavelalt`),
  KEY `IDX_PROGRAMA_3` (`log_responsaveldel`),
  KEY `IDX_PROGRAMA_4` (`fti_parc_idprj`),
  CONSTRAINT `fti_parc_ibfk_1` FOREIGN KEY (`log_responsavelinc`) REFERENCES `m_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fti_parc_ibfk_2` FOREIGN KEY (`log_responsavelalt`) REFERENCES `m_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fti_parc_ibfk_3` FOREIGN KEY (`log_responsaveldel`) REFERENCES `m_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fti_parc_ibfk_4` FOREIGN KEY (`fti_parc_idprj`) REFERENCES `projeto` (`prj_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `form_tecnico_introducao_parceiro`
--

LOCK TABLES `form_tecnico_introducao_parceiro` WRITE;
/*!40000 ALTER TABLE `form_tecnico_introducao_parceiro` DISABLE KEYS */;
INSERT INTO `form_tecnico_introducao_parceiro` VALUES (12,82,152,12,'33','Mzt6T7c.jpg','33985-Mzt6T7c.jpg','S',2,'2019-08-27 18:02:59',NULL,NULL,NULL,NULL),(22,102,172,12,'Parceiro 1','thumb-1920-954218.jpg','253412-thumb-1920-954218.jpg','S',82,'2019-08-29 18:27:36',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `form_tecnico_introducao_parceiro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `form_tecnico_metodologia`
--

DROP TABLE IF EXISTS `form_tecnico_metodologia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `form_tecnico_metodologia` (
  `ftm_id` int(11) NOT NULL AUTO_INCREMENT,
  `ftm_prj_id` int(11) NOT NULL DEFAULT '0',
  `ftm_metodologia` text CHARACTER SET utf8 NOT NULL,
  `log_responsavelinc` int(11) NOT NULL,
  `log_dtinc` datetime NOT NULL,
  `log_responsavelalt` int(11) DEFAULT NULL,
  `log_dtalt` datetime DEFAULT NULL,
  `log_responsaveldel` int(11) DEFAULT NULL,
  `log_dtdel` datetime DEFAULT NULL,
  `ftm_ativo` char(1) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ftm_id`),
  KEY `IDX_PROJETO_1` (`log_responsavelinc`),
  KEY `IDX_PROJETO_2` (`log_responsavelalt`),
  KEY `IDX_PROJETO_3` (`log_responsaveldel`),
  KEY `IDX_PROJETO_4` (`ftm_prj_id`),
  CONSTRAINT `form_tecnico_metodologia_ibfk_1` FOREIGN KEY (`log_responsavelinc`) REFERENCES `m_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `form_tecnico_metodologia_ibfk_2` FOREIGN KEY (`log_responsavelalt`) REFERENCES `m_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `form_tecnico_metodologia_ibfk_3` FOREIGN KEY (`log_responsaveldel`) REFERENCES `m_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `form_tecnico_metodologia_ibfk_4` FOREIGN KEY (`ftm_prj_id`) REFERENCES `projeto` (`prj_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `form_tecnico_metodologia`
--

LOCK TABLES `form_tecnico_metodologia` WRITE;
/*!40000 ALTER TABLE `form_tecnico_metodologia` DISABLE KEYS */;
INSERT INTO `form_tecnico_metodologia` VALUES (2,62,'5 Metodologia ',2,'2019-08-27 15:48:29',2,'2019-08-27 15:49:23',NULL,NULL,'S');
/*!40000 ALTER TABLE `form_tecnico_metodologia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `form_tecnico_sumario`
--

DROP TABLE IF EXISTS `form_tecnico_sumario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `form_tecnico_sumario` (
  `fts_id` int(11) NOT NULL AUTO_INCREMENT,
  `fts_prj_id` int(11) NOT NULL DEFAULT '0',
  `fts_sumario` text COLLATE utf8_unicode_ci NOT NULL,
  `log_responsavelinc` int(11) NOT NULL,
  `log_dtinc` datetime NOT NULL,
  `log_responsavelalt` int(11) DEFAULT NULL,
  `log_dtalt` datetime DEFAULT NULL,
  `log_responsaveldel` int(11) DEFAULT NULL,
  `log_dtdel` datetime DEFAULT NULL,
  `fts_ativo` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'S',
  PRIMARY KEY (`fts_id`),
  KEY `IDX_PROJETO_1` (`log_responsavelinc`),
  KEY `IDX_PROJETO_2` (`log_responsavelalt`),
  KEY `IDX_PROJETO_3` (`log_responsaveldel`),
  KEY `IDX_PROJETO_4` (`fts_prj_id`),
  CONSTRAINT `form_tecnico_sumario_ibfk_1` FOREIGN KEY (`log_responsavelinc`) REFERENCES `m_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `form_tecnico_sumario_ibfk_2` FOREIGN KEY (`log_responsavelalt`) REFERENCES `m_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `form_tecnico_sumario_ibfk_3` FOREIGN KEY (`log_responsaveldel`) REFERENCES `m_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `form_tecnico_sumario_ibfk_4` FOREIGN KEY (`fts_prj_id`) REFERENCES `projeto` (`prj_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `form_tecnico_sumario`
--

LOCK TABLES `form_tecnico_sumario` WRITE;
/*!40000 ALTER TABLE `form_tecnico_sumario` DISABLE KEYS */;
INSERT INTO `form_tecnico_sumario` VALUES (2,62,'2.1 Sumário ',2,'2019-08-27 15:48:57',2,'2019-08-27 15:53:51',NULL,NULL,'S');
/*!40000 ALTER TABLE `form_tecnico_sumario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `form_tecnico_sustentabilidade`
--

DROP TABLE IF EXISTS `form_tecnico_sustentabilidade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `form_tecnico_sustentabilidade` (
  `ftst_id` int(11) NOT NULL AUTO_INCREMENT,
  `ftst_participacao_comunidade` text COLLATE utf8_unicode_ci NOT NULL,
  `ftst_estrategia_autossustentavel` text CHARACTER SET utf8 NOT NULL,
  `ftst_prj_id` int(11) NOT NULL,
  `log_responsavelinc` int(11) NOT NULL,
  `log_dtinc` datetime NOT NULL,
  `log_responsavelalt` int(11) DEFAULT NULL,
  `log_dtalt` datetime DEFAULT NULL,
  `log_responsaveldel` int(11) DEFAULT NULL,
  `log_dtdel` datetime DEFAULT NULL,
  `ftst_ativo` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`ftst_id`),
  KEY `IDX_PROJETO_1` (`log_responsavelinc`),
  KEY `IDX_PROJETO_2` (`log_responsavelalt`),
  KEY `IDX_PROJETO_3` (`log_responsaveldel`),
  KEY `IDX_PROJETO_4` (`ftst_prj_id`),
  CONSTRAINT `form_tecnico_sustentabilidade_ibfk_1` FOREIGN KEY (`log_responsavelinc`) REFERENCES `m_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `form_tecnico_sustentabilidade_ibfk_2` FOREIGN KEY (`log_responsavelalt`) REFERENCES `m_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `form_tecnico_sustentabilidade_ibfk_3` FOREIGN KEY (`log_responsaveldel`) REFERENCES `m_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `form_tecnico_sustentabilidade_ibfk_4` FOREIGN KEY (`ftst_prj_id`) REFERENCES `projeto` (`prj_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `form_tecnico_sustentabilidade`
--

LOCK TABLES `form_tecnico_sustentabilidade` WRITE;
/*!40000 ALTER TABLE `form_tecnico_sustentabilidade` DISABLE KEYS */;
INSERT INTO `form_tecnico_sustentabilidade` VALUES (12,'7.1 - Participação da Comunidade no Projeto *','7.2 - Estratégias para tornar a iniciativa autossustentável após o término do projeto *',62,2,'2019-08-27 15:48:53',2,'2019-08-27 15:49:15',NULL,NULL,'S');
/*!40000 ALTER TABLE `form_tecnico_sustentabilidade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `m_user`
--

DROP TABLE IF EXISTS `m_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `m_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(150) NOT NULL,
  `password` varchar(250) NOT NULL,
  `level` int(11) NOT NULL,
  `usr_ativo` char(1) NOT NULL DEFAULT 'S',
  `usr_nome` varchar(200) NOT NULL,
  `usr_sobrenome` varchar(200) NOT NULL,
  `usr_entidade` varchar(200) NOT NULL,
  `usr_email` varchar(100) NOT NULL,
  `usr_telefone` varchar(30) DEFAULT NULL,
  `usr_celular` varchar(45) DEFAULT NULL,
  `usr_cargo` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=162 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `m_user`
--

LOCK TABLES `m_user` WRITE;
/*!40000 ALTER TABLE `m_user` DISABLE KEYS */;
INSERT INTO `m_user` VALUES (2,'dodi','ca26331c6bfbf9487a7cde0f1f95644449e83baa',1,'S','','','','','0000-00-00',NULL,NULL),(42,'administrador','40bd001563085fc35165329ea1ff5c5ecbdbbeef',2,'S','Robson','Administrador','Feac','administrador@gmail.com','(19) 3222-2222','(19) 93232-3232','Administrador'),(52,'diretor','40bd001563085fc35165329ea1ff5c5ecbdbbeef',5,'S','Roger','Diretor','Feac','diretor@gmail.com','(19) 3233-3333','(19) 98133-3232','Diretor'),(62,'arthur','7c4a8d09ca3762af61e59520943dc26494f8941b',7,'S','Arthur ',' Amaral Ducati','Amigos do Bairro','arthur.ducati@uol.com.br','(19) 3236-5548','(19) 99638-1414','Agente'),(72,'maria','7c4a8d09ca3762af61e59520943dc26494f8941b',6,'S','Maria ','Gomes Machado','Amigos do BAirro','maria.machado@icloud.com','(19) 3236-5547','(19) 99638-1414','Agente'),(82,'matheus','7c4a8d09ca3762af61e59520943dc26494f8941b',5,'S','Matheus ','Ducati Teixeira','Amigos do BAirro','matheus.teixeira@uol.com.br','(19) 3236-5547','(19) 99638-1414','Diretor'),(92,'carlos','7c4a8d09ca3762af61e59520943dc26494f8941b',4,'S','Carlos ','Amaral Machado','Amigos do BAirro','carlos.machado@hotmail.com','(19) 3236-5547','(19) 99638-1414','Acessor'),(102,'joao','7c4a8d09ca3762af61e59520943dc26494f8941b',3,'S','João ','Teixeira Gomes','Amigos do BAirro','joão.gomes@uol.com.br','(19) 3236-5547','(19) 99638-1414','Analista'),(112,'pedro','7c4a8d09ca3762af61e59520943dc26494f8941b',2,'S','Pedro ','Amaral Gomes','Amigos do BAirro','pedro.gomes@hotmail.com','(19) 3236-5547','(19) 99638-1414','ADM PROG'),(122,'lucas','7c4a8d09ca3762af61e59520943dc26494f8941b',1,'S','Lucas ','Gomes Amaral','Amigos do BAirro','lucas.amaral@icloud.com','(19) 3236-5547','(19) 99638-1414','ADM SIS'),(132,'fgoncalves','da39a3ee5e6b4b0d3255bfef95601890afd80709',1,'S','Fernando','Gonçalves','Amigos do bairro','fernando_20048@hotmail.com','(19) 3258-9964','(19) 98856-4451','Administrador'),(142,'fgoncalves5387','6549f786e8d38cf58e91d397a077ebdeaadd5dee',2,'S','Fernando','Gonçalves','Casa da Criança','fernando_20048@hotmail.com','(21) 4365-8722','(19) 19191-9919','Sem Com'),(152,'fgoncalves9303','34dbd48eb7d41c58ea57cbef66d7d177117535e4',2,'S','Fernando','Gonçalves','Casa da Criança','andredionisio114@gmail.com','(21) 4365-8722','(19) 19191-9919','Administrador');
/*!40000 ALTER TABLE `m_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `metas_ods_programa`
--

DROP TABLE IF EXISTS `metas_ods_programa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `metas_ods_programa` (
  `modsprg_id` int(11) NOT NULL AUTO_INCREMENT,
  `modsprg_odsprg_id` int(11) NOT NULL,
  `modsprg_odm_id` int(11) DEFAULT NULL,
  `modsprg_ativo` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'S',
  `log_responsavelinc` int(11) NOT NULL,
  `log_dtinc` datetime NOT NULL,
  `log_responsavelalt` int(11) DEFAULT NULL,
  `log_dtalt` datetime DEFAULT NULL,
  `log_responsaveldel` int(11) DEFAULT NULL,
  `log_dtdel` datetime DEFAULT NULL,
  PRIMARY KEY (`modsprg_id`),
  KEY `IDX_ODSM_PROGRAMA_1` (`log_responsavelinc`),
  KEY `IDX_ODSM_PROGRAMA_2` (`log_responsavelalt`),
  KEY `IDX_ODSM_PROGRAMA_3` (`log_responsaveldel`),
  KEY `IDX_ODSM_PROGRAMA_4` (`modsprg_odsprg_id`),
  CONSTRAINT `odsm_programa_ibfk_1` FOREIGN KEY (`log_responsavelinc`) REFERENCES `m_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `odsm_programa_ibfk_2` FOREIGN KEY (`log_responsavelalt`) REFERENCES `m_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `odsm_programa_ibfk_3` FOREIGN KEY (`log_responsaveldel`) REFERENCES `m_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `odsm_programa_ibfk_4` FOREIGN KEY (`modsprg_odsprg_id`) REFERENCES `ods_programa` (`odsprg_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=122 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `metas_ods_programa`
--

LOCK TABLES `metas_ods_programa` WRITE;
/*!40000 ALTER TABLE `metas_ods_programa` DISABLE KEYS */;
INSERT INTO `metas_ods_programa` VALUES (2,62,272,'S',2,'2019-08-27 15:06:37',NULL,NULL,NULL,NULL),(12,62,282,'S',2,'2019-08-27 15:06:37',NULL,NULL,NULL,NULL),(22,62,302,'S',2,'2019-08-27 15:06:37',NULL,NULL,NULL,NULL),(32,72,442,'S',2,'2019-08-27 15:24:10',NULL,NULL,NULL,NULL),(42,72,462,'S',2,'2019-08-27 15:24:10',NULL,NULL,NULL,NULL),(52,82,552,'S',122,'2019-08-29 14:18:04',NULL,NULL,NULL,NULL),(62,82,532,'S',122,'2019-08-29 14:18:04',NULL,NULL,NULL,NULL),(72,82,512,'S',122,'2019-08-29 14:18:04',NULL,NULL,NULL,NULL),(82,92,512,'S',2,'2019-08-29 17:08:06',NULL,NULL,NULL,NULL),(92,92,532,'S',2,'2019-08-29 17:08:06',NULL,NULL,NULL,NULL),(102,102,512,'S',2,'2019-08-29 17:26:09',NULL,NULL,NULL,NULL),(112,102,532,'S',2,'2019-08-29 17:26:09',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `metas_ods_programa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `modalidade_parceria`
--

DROP TABLE IF EXISTS `modalidade_parceria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `modalidade_parceria` (
  `mod_id` int(11) NOT NULL AUTO_INCREMENT,
  `mod_nome` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `log_responsavelinc` int(11) NOT NULL,
  `log_dtinc` datetime NOT NULL,
  `log_responsavelalt` int(11) DEFAULT NULL,
  `log_dtalt` datetime DEFAULT NULL,
  `log_responsaveldel` int(11) DEFAULT NULL,
  `log_dtdel` datetime DEFAULT NULL,
  `mod_ativo` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'S',
  PRIMARY KEY (`mod_id`),
  KEY `IDX_PROJETO_1` (`log_responsavelinc`),
  KEY `IDX_PROJETO_2` (`log_responsavelalt`),
  KEY `IDX_PROJETO_3` (`log_responsaveldel`),
  CONSTRAINT `modalidade_parceria_ibfk_1` FOREIGN KEY (`log_responsavelinc`) REFERENCES `m_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `modalidade_parceria_ibfk_2` FOREIGN KEY (`log_responsavelalt`) REFERENCES `m_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `modalidade_parceria_ibfk_3` FOREIGN KEY (`log_responsaveldel`) REFERENCES `m_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `modalidade_parceria`
--

LOCK TABLES `modalidade_parceria` WRITE;
/*!40000 ALTER TABLE `modalidade_parceria` DISABLE KEYS */;
INSERT INTO `modalidade_parceria` VALUES (12,'Modalidade parceria 1',2,'2019-08-27 14:59:25',2,'2019-08-27 15:08:15',NULL,NULL,'S'),(22,'Modalidade de Parceria 2',2,'2019-08-27 14:59:51',2,'2019-08-27 15:08:12',2,'2019-08-27 15:08:20','N'),(32,'Modalidade Parceria 2',2,'2019-08-27 15:00:02',2,'2019-08-27 15:08:24',NULL,NULL,'S'),(42,'Modalidade de Parceria 3',2,'2019-08-27 15:08:30',NULL,NULL,NULL,NULL,'S');
/*!40000 ALTER TABLE `modalidade_parceria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `objetivo_programa`
--

DROP TABLE IF EXISTS `objetivo_programa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `objetivo_programa` (
  `obj_id` int(11) NOT NULL AUTO_INCREMENT,
  `obj_desc` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `obj_idprog` int(11) NOT NULL,
  `log_dtinc` datetime NOT NULL,
  `log_responsavelinc` int(11) NOT NULL,
  `log_responsavelalt` int(11) DEFAULT NULL,
  `log_dtalt` datetime DEFAULT NULL,
  `log_responsaveldel` int(11) DEFAULT NULL,
  `log_dtdel` datetime DEFAULT NULL,
  `obj_ativo` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'S',
  `obj_numero` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`obj_id`),
  KEY `IDX_PROJETO_1` (`log_responsavelinc`),
  KEY `IDX_PROJETO_2` (`log_responsavelalt`),
  KEY `IDX_PROJETO_3` (`log_responsaveldel`),
  KEY `IDX_RPARECER_4` (`obj_idprog`),
  CONSTRAINT `objetivo_programa_ibfk_1` FOREIGN KEY (`log_responsavelinc`) REFERENCES `m_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `objetivo_programa_ibfk_2` FOREIGN KEY (`log_responsavelalt`) REFERENCES `m_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `objetivo_programa_ibfk_3` FOREIGN KEY (`log_responsaveldel`) REFERENCES `m_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `objetivo_programa_ibfk_4` FOREIGN KEY (`obj_idprog`) REFERENCES `programa` (`prg_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=142 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `objetivo_programa`
--

LOCK TABLES `objetivo_programa` WRITE;
/*!40000 ALTER TABLE `objetivo_programa` DISABLE KEYS */;
INSERT INTO `objetivo_programa` VALUES (22,'Promover a reflexão do papel do espaço nos processos de desenvolvimento social, bem como na educação, inclusão e equidade',112,'2019-08-27 15:02:48',2,NULL,NULL,NULL,NULL,'S','1'),(32,'Incentivar utilização dos espaços públicos pelas comunidades de forma ampla e democrática, fortalecendo o tecido social',112,'2019-08-27 15:03:16',2,NULL,NULL,NULL,NULL,'S','2'),(42,'Contribuir com a construção de uma cidade mais inclusiva de crianças, jovens, idosos e pessoas com deficiência',112,'2019-08-27 15:03:43',2,NULL,NULL,NULL,NULL,'S','3'),(52,'Fomentar o desenvolvimento de comunidades em situação de vulnerabilidade e risco social considerando o contexto, potencial e prioridades locais',112,'2019-08-27 15:04:31',2,2,'2019-08-27 15:04:44',2,'2019-08-27 15:04:49','N','4'),(62,'Fomentar o desenvolvimento de comunidades em situação de vulnerabilidade e risco social considerando o contexto, potencial e prioridades locais',112,'2019-08-27 15:05:11',2,NULL,NULL,NULL,NULL,'S','4'),(72,'Despertar a responsabilidade individual e coletiva para superação dos desafios das comunidades',122,'2019-08-27 15:20:04',2,NULL,NULL,NULL,NULL,'S','1'),(82,'asss',122,'2019-08-27 15:20:16',2,NULL,NULL,2,'2019-08-27 15:20:20','N','2'),(92,'Inspirar atores para agir coletivamente em ações de transformação social na busca pelo bem-estar de todos',122,'2019-08-27 15:20:59',2,NULL,NULL,NULL,NULL,'S','2'),(102,'Incentivar e qualificar a participação nos espaços de controle social das políticas públicas',122,'2019-08-27 15:21:26',2,NULL,NULL,NULL,NULL,'S','3'),(112,'Incentivar a criação de espaços de participação para que os jovens possam desenvolver suas potencialidades, visando a construção de projetos de vida autênticos, que possibilitem a mobilidade social.',132,'2019-08-29 14:06:34',122,NULL,NULL,NULL,NULL,'S','1'),(122,'Promover a participação ativa dos jovens nos diferentes espaços decisórios que os afetam.',132,'2019-08-29 14:07:53',122,NULL,NULL,NULL,NULL,'S','2'),(132,'LOKINHO',132,'2019-08-29 14:08:22',122,122,'2019-08-29 14:08:46',122,'2019-08-29 14:09:01','N','3');
/*!40000 ALTER TABLE `objetivo_programa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ods`
--

DROP TABLE IF EXISTS `ods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `ods` (
  `ods_id` int(11) NOT NULL AUTO_INCREMENT,
  `ods_numero` int(11) NOT NULL,
  `ods_titulo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ods_descricao` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ods_logo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ods_url_logo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ods_ativo` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'S',
  `log_responsavelinc` int(11) NOT NULL,
  `log_dtinc` datetime NOT NULL,
  `log_responsavelalt` int(11) DEFAULT NULL,
  `log_dtalt` datetime DEFAULT NULL,
  `log_responsaveldel` int(11) DEFAULT NULL,
  `log_dtdel` datetime DEFAULT NULL,
  PRIMARY KEY (`ods_id`),
  KEY `IDX_PRG_INDIC_1` (`log_responsavelinc`),
  KEY `IDX_PRG_INDIC_2` (`log_responsavelalt`),
  KEY `IDX_PRG_INDIC_3` (`log_responsaveldel`),
  CONSTRAINT `ods_ibfk_1` FOREIGN KEY (`log_responsavelinc`) REFERENCES `m_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `ods_ibfk_2` FOREIGN KEY (`log_responsavelalt`) REFERENCES `m_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `ods_ibfk_3` FOREIGN KEY (`log_responsaveldel`) REFERENCES `m_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ods`
--

LOCK TABLES `ods` WRITE;
/*!40000 ALTER TABLE `ods` DISABLE KEYS */;
INSERT INTO `ods` VALUES (32,12,'Erradicação da Pobreza','Acabar com a pobreza em todas as suas formas, em todos os lugares\nEm 2000, o mundo comprometeu-se em reduzir pela metade o número de pessoas vivendo em extrema pobreza e alcançou ganhos notáveis no desenvolvimento humano. Até 2015, a pobreza havia sido re','1.png','895868-1.png','S',2,'2019-08-27 15:05:51',2,'2019-08-27 15:06:21',NULL,NULL),(42,2,'Fome Zero e Agricultura Sustentável','Acabar com a fome, alcançar a segurança alimentar e melhoria da nutrição e promover a agricultura sustentável\nDurante as duas últimas décadas, o rápido crescimento econômico e o desenvolvimento da agricultura foram responsáveis pela redução pela metade da','2.png','975564-2.png','S',2,'2019-08-27 15:08:27',2,'2019-08-27 15:09:27',NULL,NULL),(52,3,'s','s',NULL,NULL,'N',2,'2019-08-27 15:08:39',NULL,NULL,2,'2019-08-27 15:08:44'),(62,2,'2','2',NULL,NULL,'N',2,'2019-08-27 15:09:03',NULL,NULL,2,'2019-08-27 15:09:07'),(72,10,'Redução da Desigualdades','O mundo é mais desigual hoje do que em qualquer momento da história desde 1940. A desigualdade de renda e na distribuição da riqueza dentro dos países têm disparado, incapacitando os esforços de alcance dos resultados do desenvolvimento e de expansão das ','10.png','556329-10.png','S',122,'2019-08-29 14:16:06',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `ods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ods_meta`
--

DROP TABLE IF EXISTS `ods_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `ods_meta` (
  `odm_id` int(11) NOT NULL AUTO_INCREMENT,
  `odm_idods` int(11) NOT NULL,
  `odm_sequencia` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `odm_descricao` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `odm_ativo` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'S',
  `log_responsavelinc` int(11) NOT NULL,
  `log_dtinc` datetime NOT NULL,
  `log_responsavelalt` int(11) DEFAULT NULL,
  `log_dtalt` datetime DEFAULT NULL,
  `log_responsaveldel` int(11) DEFAULT NULL,
  `log_dtdel` datetime DEFAULT NULL,
  PRIMARY KEY (`odm_id`),
  KEY `IDX_PRG_INDIC_1` (`log_responsavelinc`),
  KEY `IDX_PRG_INDIC_2` (`log_responsavelalt`),
  KEY `IDX_PRG_INDIC_3` (`log_responsaveldel`),
  KEY `IDX_PRG_INDIC_4` (`odm_idods`),
  CONSTRAINT `odm_ibfk_1` FOREIGN KEY (`log_responsavelinc`) REFERENCES `m_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `odm_ibfk_2` FOREIGN KEY (`log_responsavelalt`) REFERENCES `m_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `odm_ibfk_3` FOREIGN KEY (`log_responsaveldel`) REFERENCES `m_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `odm_ibfk_4` FOREIGN KEY (`odm_idods`) REFERENCES `ods` (`ods_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=562 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ods_meta`
--

LOCK TABLES `ods_meta` WRITE;
/*!40000 ALTER TABLE `ods_meta` DISABLE KEYS */;
INSERT INTO `ods_meta` VALUES (192,32,'12.1','Até 2030, erradicar a pobreza extrema para todas as pessoas em todos os lugares, atualmente medida como pessoas vivendo com menos de US$ 1,25 por dia','N',2,'2019-08-27 15:05:51',NULL,NULL,2,'2019-08-27 15:06:21'),(202,32,'12.2','Até 2030, reduzir pelo menos à metade a proporção de homens, mulheres e crianças, de todas as idades, que vivem na pobreza, em todas as suas dimensões, de acordo com as definições nacionais','N',2,'2019-08-27 15:05:51',NULL,NULL,2,'2019-08-27 15:06:21'),(212,32,'12.3','Implementar, em nível nacional, medidas e sistemas de proteção social apropriados, para todos, incluindo pisos, e até 2030 atingir a cobertura substancial dos pobres e vulneráveis','N',2,'2019-08-27 15:05:51',NULL,NULL,2,'2019-08-27 15:06:21'),(222,32,'12.4','Até 2030, garantir que todos os homens e mulheres, particularmente os pobres e vulneráveis, tenham direitos iguais aos recursos econômicos, bem como acesso a serviços básicos, propriedade e controle sobre a terra e outras formas de propriedade, herança, r','N',2,'2019-08-27 15:05:51',NULL,NULL,2,'2019-08-27 15:06:21'),(232,32,'12.5','Até 2030, construir a resiliência dos pobres e daqueles em situação de vulnerabilidade, e reduzir a exposição e vulnerabilidade destes a eventos extremos relacionados com o clima e outros choques e desastres econômicos, sociais e ambientais','N',2,'2019-08-27 15:05:51',NULL,NULL,2,'2019-08-27 15:06:21'),(242,32,'12.6','Garantir uma mobilização significativa de recursos a partir de uma variedade de fontes, inclusive por meio do reforço da cooperação para o desenvolvimento, de forma a proporcionar meios adequados e previsíveis para que os países em desenvolvimento, em par','N',2,'2019-08-27 15:05:51',NULL,NULL,2,'2019-08-27 15:06:21'),(252,32,'12.7','Criar marcos políticos sólidos, em níveis nacional, regional e internacional, com base em estratégias de desenvolvimento a favor dos pobres e sensíveis a gênero, para apoiar investimentos acelerados nas ações de erradicação da pobreza','N',2,'2019-08-27 15:05:51',NULL,NULL,2,'2019-08-27 15:06:21'),(262,32,'12.1','Até 2030, erradicar a pobreza extrema para todas as pessoas em todos os lugares, atualmente medida como pessoas vivendo com menos de US$ 1,25 por dia','S',2,'2019-08-27 15:06:21',NULL,NULL,NULL,NULL),(272,32,'12.2','Até 2030, reduzir pelo menos à metade a proporção de homens, mulheres e crianças, de todas as idades, que vivem na pobreza, em todas as suas dimensões, de acordo com as definições nacionais','S',2,'2019-08-27 15:06:21',NULL,NULL,NULL,NULL),(282,32,'12.3','Implementar, em nível nacional, medidas e sistemas de proteção social apropriados, para todos, incluindo pisos, e até 2030 atingir a cobertura substancial dos pobres e vulneráveis','S',2,'2019-08-27 15:06:21',NULL,NULL,NULL,NULL),(292,32,'12.4','Até 2030, garantir que todos os homens e mulheres, particularmente os pobres e vulneráveis, tenham direitos iguais aos recursos econômicos, bem como acesso a serviços básicos, propriedade e controle sobre a terra e outras formas de propriedade, herança, r','S',2,'2019-08-27 15:06:21',NULL,NULL,NULL,NULL),(302,32,'12.5','Até 2030, construir a resiliência dos pobres e daqueles em situação de vulnerabilidade, e reduzir a exposição e vulnerabilidade destes a eventos extremos relacionados com o clima e outros choques e desastres econômicos, sociais e ambientais','S',2,'2019-08-27 15:06:21',NULL,NULL,NULL,NULL),(312,32,'12.6','Garantir uma mobilização significativa de recursos a partir de uma variedade de fontes, inclusive por meio do reforço da cooperação para o desenvolvimento, de forma a proporcionar meios adequados e previsíveis para que os países em desenvolvimento, em par','S',2,'2019-08-27 15:06:21',NULL,NULL,NULL,NULL),(322,32,'12.7','Criar marcos políticos sólidos, em níveis nacional, regional e internacional, com base em estratégias de desenvolvimento a favor dos pobres e sensíveis a gênero, para apoiar investimentos acelerados nas ações de erradicação da pobreza','S',2,'2019-08-27 15:06:21',NULL,NULL,NULL,NULL),(332,42,'2.1','Até 2030, acabar com a fome e garantir o acesso de todas as pessoas, em particular os pobres e pessoas em situações vulneráveis, incluindo crianças, a alimentos seguros, nutritivos e suficientes durante todo o ano.','N',2,'2019-08-27 15:08:27',NULL,NULL,2,'2019-08-27 15:09:27'),(342,42,'2.2','Até 2030, acabar com todas as formas de desnutrição, inclusive pelo alcance até 2025 das metas acordadas internacionalmente sobre desnutrição crônica e desnutrição em crianças menores de cinco anos de idade, e atender às necessidades nutricionais de menin','N',2,'2019-08-27 15:08:27',NULL,NULL,2,'2019-08-27 15:09:27'),(352,42,'2.3','Até 2030, dobrar a produtividade agrícola e a renda dos pequenos produtores de alimentos, particularmente das mulheres, povos indígenas, agricultores familiares, pastores e pescadores, inclusive por meio de acesso seguro e igual à terra, outros recursos p','N',2,'2019-08-27 15:08:27',NULL,NULL,2,'2019-08-27 15:09:27'),(362,42,'2.4','Até 2030, garantir sistemas sustentáveis de produção de alimentos e implementar práticas agrícolas robustas, que aumentem a produtividade e a produção, que ajudem a manter os ecossistemas, que fortaleçam a capacidade de adaptação às mudança do clima, às c','N',2,'2019-08-27 15:08:27',NULL,NULL,2,'2019-08-27 15:09:27'),(372,42,'2.5','Até 2020, manter a diversidade genética de sementes, plantas cultivadas, animais de criação e domesticados e suas respectivas espécies selvagens, inclusive por meio de bancos de sementes e plantas diversificados e adequadamente geridos em nível nacional, ','N',2,'2019-08-27 15:08:27',NULL,NULL,2,'2019-08-27 15:09:27'),(382,42,'2.6','Aumentar o investimento, inclusive por meio do reforço da cooperação internacional, em infraestrutura rural, pesquisa e extensão de serviços agrícolas, desenvolvimento de tecnologia, e os bancos de genes de plantas e animais, de maneira a aumentar a capac','N',2,'2019-08-27 15:08:27',NULL,NULL,2,'2019-08-27 15:09:27'),(392,42,'2.7','Corrigir e prevenir as restrições ao comércio e distorções nos mercados agrícolas mundiais, inclusive por meio da eliminação paralela de todas as formas de subsídios à exportação e todas as medidas de exportação com efeito equivalente, de acordo com o man','N',2,'2019-08-27 15:08:27',NULL,NULL,2,'2019-08-27 15:09:27'),(402,42,'2.8','Adotar medidas para garantir o funcionamento adequado dos mercados de commodities de alimentos e seus derivados, e facilitar o acesso oportuno à informação de mercado, inclusive sobre as reservas de alimentos, a fim de ajudar a limitar a volatilidade extr','N',2,'2019-08-27 15:08:27',NULL,NULL,2,'2019-08-27 15:09:27'),(412,52,'3.1','s','S',2,'2019-08-27 15:08:39',NULL,NULL,NULL,NULL),(422,62,'2.1','2','S',2,'2019-08-27 15:09:03',NULL,NULL,NULL,NULL),(432,42,'2.1','Até 2030, acabar com a fome e garantir o acesso de todas as pessoas, em particular os pobres e pessoas em situações vulneráveis, incluindo crianças, a alimentos seguros, nutritivos e suficientes durante todo o ano.','S',2,'2019-08-27 15:09:27',NULL,NULL,NULL,NULL),(442,42,'2.2','Até 2030, acabar com todas as formas de desnutrição, inclusive pelo alcance até 2025 das metas acordadas internacionalmente sobre desnutrição crônica e desnutrição em crianças menores de cinco anos de idade, e atender às necessidades nutricionais de menin','S',2,'2019-08-27 15:09:27',NULL,NULL,NULL,NULL),(452,42,'2.3','Até 2030, dobrar a produtividade agrícola e a renda dos pequenos produtores de alimentos, particularmente das mulheres, povos indígenas, agricultores familiares, pastores e pescadores, inclusive por meio de acesso seguro e igual à terra, outros recursos p','S',2,'2019-08-27 15:09:27',NULL,NULL,NULL,NULL),(462,42,'2.4','Até 2030, garantir sistemas sustentáveis de produção de alimentos e implementar práticas agrícolas robustas, que aumentem a produtividade e a produção, que ajudem a manter os ecossistemas, que fortaleçam a capacidade de adaptação às mudança do clima, às c','S',2,'2019-08-27 15:09:27',NULL,NULL,NULL,NULL),(472,42,'2.5','Até 2020, manter a diversidade genética de sementes, plantas cultivadas, animais de criação e domesticados e suas respectivas espécies selvagens, inclusive por meio de bancos de sementes e plantas diversificados e adequadamente geridos em nível nacional, ','S',2,'2019-08-27 15:09:27',NULL,NULL,NULL,NULL),(482,42,'2.6','Aumentar o investimento, inclusive por meio do reforço da cooperação internacional, em infraestrutura rural, pesquisa e extensão de serviços agrícolas, desenvolvimento de tecnologia, e os bancos de genes de plantas e animais, de maneira a aumentar a capac','S',2,'2019-08-27 15:09:27',NULL,NULL,NULL,NULL),(492,42,'2.7','Corrigir e prevenir as restrições ao comércio e distorções nos mercados agrícolas mundiais, inclusive por meio da eliminação paralela de todas as formas de subsídios à exportação e todas as medidas de exportação com efeito equivalente, de acordo com o man','S',2,'2019-08-27 15:09:27',NULL,NULL,NULL,NULL),(502,42,'2.8','Adotar medidas para garantir o funcionamento adequado dos mercados de commodities de alimentos e seus derivados, e facilitar o acesso oportuno à informação de mercado, inclusive sobre as reservas de alimentos, a fim de ajudar a limitar a volatilidade extr','S',2,'2019-08-27 15:09:27',NULL,NULL,NULL,NULL),(512,72,'10.1','Até 2030, progressivamente alcançar e sustentar o crescimento da renda dos 40% da população mais pobre a uma taxa maior que a média nacional','S',122,'2019-08-29 14:16:06',NULL,NULL,NULL,NULL),(522,72,'10.2','Até 2030, empoderar e promover a inclusão social, econômica e política de todos, independentemente da idade, sexo, deficiência, raça, etnia, origem, religião, condição econômica ou outra','S',122,'2019-08-29 14:16:06',NULL,NULL,NULL,NULL),(532,72,'10.3','Garantir a igualdade de oportunidades e reduzir as desigualdades de resultado, inclusive por meio da eliminação de leis, políticas e práticas discriminatórias e promover legislação, políticas e ações adequadas a este respeito','S',122,'2019-08-29 14:16:06',NULL,NULL,NULL,NULL),(542,72,'10.4','Adotar políticas, especialmente fiscal, salarial e políticas de proteção social, e alcançar progressivamente uma maior igualdade','S',122,'2019-08-29 14:16:06',NULL,NULL,NULL,NULL),(552,72,'10.5','Melhorar a regulamentação e monitoramento dos mercados e instituições financeiras globais, e fortalecer a implementação de tais regulamentações','S',122,'2019-08-29 14:16:06',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `ods_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ods_programa`
--

DROP TABLE IF EXISTS `ods_programa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `ods_programa` (
  `odsprg_id` int(11) NOT NULL AUTO_INCREMENT,
  `odsprg_idods` int(11) NOT NULL,
  `odsprg_idprg` int(11) NOT NULL,
  `odsprg_ativo` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'S',
  `log_responsavelinc` int(11) NOT NULL,
  `log_dtinc` datetime NOT NULL,
  `log_responsavelalt` int(11) DEFAULT NULL,
  `log_dtalt` datetime DEFAULT NULL,
  `log_responsaveldel` int(11) DEFAULT NULL,
  `log_dtdel` datetime DEFAULT NULL,
  `ods_tipo` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`odsprg_id`),
  KEY `IDX_ODS_PROGRAMA_1` (`log_responsavelinc`),
  KEY `IDX_ODS_PROGRAMA_2` (`log_responsavelalt`),
  KEY `IDX_ODS_PROGRAMA_3` (`log_responsaveldel`),
  KEY `IDX_ODS_PROGRAMA_4` (`odsprg_idods`),
  KEY `IDX_ODS_PROGRAMA_5` (`odsprg_idprg`),
  CONSTRAINT `ods_programa_ibfk_1` FOREIGN KEY (`log_responsavelinc`) REFERENCES `m_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `ods_programa_ibfk_2` FOREIGN KEY (`log_responsavelalt`) REFERENCES `m_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `ods_programa_ibfk_3` FOREIGN KEY (`log_responsaveldel`) REFERENCES `m_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `ods_programa_ibfk_4` FOREIGN KEY (`odsprg_idods`) REFERENCES `ods` (`ods_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `ods_programa_ibfk_5` FOREIGN KEY (`odsprg_idprg`) REFERENCES `programa` (`prg_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ods_programa`
--

LOCK TABLES `ods_programa` WRITE;
/*!40000 ALTER TABLE `ods_programa` DISABLE KEYS */;
INSERT INTO `ods_programa` VALUES (62,32,112,'S',2,'2019-08-27 15:06:37',NULL,NULL,NULL,NULL,'Primario'),(72,42,122,'S',2,'2019-08-27 15:24:10',NULL,NULL,NULL,NULL,'Primario'),(82,72,132,'S',122,'2019-08-29 14:18:04',NULL,NULL,NULL,NULL,'Primario'),(92,72,112,'S',2,'2019-08-29 17:08:06',NULL,NULL,NULL,NULL,'Primario'),(102,72,112,'S',2,'2019-08-29 17:26:09',NULL,NULL,NULL,NULL,'Primario');
/*!40000 ALTER TABLE `ods_programa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `placar_documentos`
--

DROP TABLE IF EXISTS `placar_documentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `placar_documentos` (
  `pld_id` int(11) NOT NULL AUTO_INCREMENT,
  `pld_estatuto_social` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pld_ata_reperesentante_legais` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pld_certidao_negativa_fgts` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pld_copia_negativa_cnpj` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pld_certidao_debt_inss` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pld_certidao_divida_ativa_uniao` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pld_declaracao_propria` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pld_declaracao_idonea` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `pld_carta_banco_projeto` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `log_responsavelinc` int(11) NOT NULL,
  `log_dtinc` datetime NOT NULL,
  `log_responsavelalt` int(11) DEFAULT NULL,
  `log_dtalt` datetime DEFAULT NULL,
  `log_responsaveldel` int(11) DEFAULT NULL,
  `log_dtdel` datetime DEFAULT NULL,
  PRIMARY KEY (`pld_id`),
  KEY `IDX_PROJETO_1` (`log_responsavelinc`),
  KEY `IDX_PROJETO_2` (`log_responsavelalt`),
  KEY `IDX_PROJETO_3` (`log_responsaveldel`),
  CONSTRAINT `placar_documentos_ibfk_1` FOREIGN KEY (`log_responsavelinc`) REFERENCES `m_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `placar_documentos_ibfk_2` FOREIGN KEY (`log_responsavelalt`) REFERENCES `m_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `placar_documentos_ibfk_3` FOREIGN KEY (`log_responsaveldel`) REFERENCES `m_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `placar_documentos`
--

LOCK TABLES `placar_documentos` WRITE;
/*!40000 ALTER TABLE `placar_documentos` DISABLE KEYS */;
/*!40000 ALTER TABLE `placar_documentos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `placar_etapa`
--

DROP TABLE IF EXISTS `placar_etapa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `placar_etapa` (
  `ple_id` int(11) NOT NULL AUTO_INCREMENT,
  `ple_etapa` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `log_responsavelinc` int(11) NOT NULL,
  `log_dtinc` datetime NOT NULL,
  `log_responsavelalt` int(11) DEFAULT NULL,
  `log_dtalt` datetime DEFAULT NULL,
  `log_responsaveldel` int(11) DEFAULT NULL,
  `log_dtdel` datetime DEFAULT NULL,
  `ple_ativo` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'S',
  PRIMARY KEY (`ple_id`),
  KEY `IDX_PROJETO_1` (`log_responsavelinc`),
  KEY `IDX_PROJETO_2` (`log_responsavelalt`),
  KEY `IDX_PROJETO_3` (`log_responsaveldel`),
  CONSTRAINT `placar_etapa_ibfk_1` FOREIGN KEY (`log_responsavelinc`) REFERENCES `m_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `placar_etapa_ibfk_2` FOREIGN KEY (`log_responsavelalt`) REFERENCES `m_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `placar_etapa_ibfk_3` FOREIGN KEY (`log_responsaveldel`) REFERENCES `m_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `placar_etapa`
--

LOCK TABLES `placar_etapa` WRITE;
/*!40000 ALTER TABLE `placar_etapa` DISABLE KEYS */;
/*!40000 ALTER TABLE `placar_etapa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `programa`
--

DROP TABLE IF EXISTS `programa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `programa` (
  `prg_id` int(11) NOT NULL AUTO_INCREMENT,
  `prg_titulo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `prg_resumo` text COLLATE utf8_unicode_ci NOT NULL,
  `prg_sigla` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `prg_logo_doc_id` int(11) DEFAULT NULL,
  `prg_ativo` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'S',
  `log_responsavelinc` int(11) NOT NULL,
  `log_dtinc` datetime NOT NULL,
  `log_responsavelalt` int(11) DEFAULT NULL,
  `log_dtalt` datetime DEFAULT NULL,
  `log_responsaveldel` int(11) DEFAULT NULL,
  `log_dtdel` datetime DEFAULT NULL,
  `prg_url_logo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `prg_logo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `prg_url_ods` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `prg_ods` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `prg_url_toc` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `prg_toc` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`prg_id`),
  KEY `IDX_PROGRAMA_1` (`log_responsavelinc`),
  KEY `IDX_PROGRAMA_2` (`log_responsavelalt`),
  KEY `IDX_PROGRAMA_3` (`log_responsaveldel`),
  KEY `programa_ibfk_6` (`prg_logo_doc_id`),
  CONSTRAINT `programa_ibfk_1` FOREIGN KEY (`log_responsavelinc`) REFERENCES `m_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `programa_ibfk_2` FOREIGN KEY (`log_responsavelalt`) REFERENCES `m_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `programa_ibfk_3` FOREIGN KEY (`log_responsaveldel`) REFERENCES `m_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `programa_ibfk_6` FOREIGN KEY (`prg_logo_doc_id`) REFERENCES `documentos` (`doc_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=142 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `programa`
--

LOCK TABLES `programa` WRITE;
/*!40000 ALTER TABLE `programa` DISABLE KEYS */;
INSERT INTO `programa` VALUES (112,'Programa Desenvolvimento Local','Para promover essa transformação, o Programa articula ações de promoção econômica, social e ambiental nos territórios a partir de um processo que parte da valorização dos potenciais locais e coloca o cidadão como protagonista da mudança de sua realidade.\n\nO território se constrói cotidianamente através das relações que se dão no espaço. São as diferentes dinâmicas políticas, sociais, econômicas e afetivas que caracterizam uma determinada área, influenciando os modos de vida daquele local.\n\nEm comunidades em situação de vulnerabilidade social, os desafios são mais acentuados em decorrência de contextos específicos de múltiplas carências e escassas oportunidades. No enfrentamento dessa realidade, o programa incentiva ações de desenvolvimento local baseadas na participação, escuta e diálogo.\n\nEsta abordagem promove reflexão acerca destas dinâmicas e gera conhecimento, tornando os cidadãos conscientes do seu papel na comunidade. Desta forma, fomenta soluções com maior aderência ao contexto, potenciais e prioridades locais.\n\nDar visibilidade aos desafios de desenvolvimento destes territórios possibilita engajar diferentes atores. Novos parceiros ampliam repertórios. O território se beneficia ao mesclar novos conhecimentos e perspectivas com a percepção do local.\n\nUma das estratégias é fomentar ambientes destinados às demandas sociais, de convivência, esporte e lazer. Assim, a utilização dos espaços pela população é estimulada, sendo um dos fatores para criar comunidades seguras. A sensação de segurança está diretamente ligada às conexões humanas existentes naquele ambiente.\n\nO programa investe em projetos que atendam expectativas das comunidades e catalisem a transformação dos territórios gerando impacto duradouro no bem-estar social.\n\nCriado em 2017, integrou uma iniciativa de promoção de projetos de empreendedorismo comunitário em bairros de habitações de interesse social em Campinas. Desta forma, teve início a jornada de incentivo à prática da cidadania ativa e da transformação dos territórios.\n\n','PDL',NULL,'S',2,'2019-08-27 15:02:12',2,'2019-08-29 17:04:08',NULL,NULL,'416623-desenvolvimento-color.png','desenvolvimento-color.png',NULL,NULL,'607803-aRiXtrn.jpg','aRiXtrn.jpg'),(122,'Programa Cidadania Ativa','O Programa Cidadania Ativa é uma iniciativa da Fundação FEAC que investe em mobilização e engajamento de todos, com objetivo de energizar a sociedade para agir na superação dos seus desafios e promover o bem-estar social.\n\nOs cidadãos ativos, além de conhecerem seus direitos e deveres, praticam valores como solidariedade e tolerância e estão dispostos a agir para superação dos desafios de suas comunidades. O programa apoia ações que contribuem para promover o sentimento de pertencimento, o diálogo e incentivar a atuação coletiva e colaborativa.\n\nTodo cidadão tem um papel fundamental na construção de uma sociedade mais justa e inclusiva. Neste sentido, o programa atua na promoção de competências e atitudes de cidadania ativa. Através da mobilização social, inspira indivíduos a tornarem-se agentes de mudança incentivando a cultura de participação e de corresponsabilidade pelo bem-estar social. \n\nIncentiva ainda o envolvimento de empresas em projetos sociais, oportunizando parcerias com organizações da sociedade civil em iniciativas com impacto social positivo.\n\nOs investimentos do programa também buscam colaborar com os espaços de controle social das políticas públicas, estimulando a participação qualificada e propositiva dos cidadãos, indicando modelos de gestão eficientes e orientados para resultados. A Fundação FEAC acredita que o desenvolvimento e o bem-estar social só são possíveis com o engajamento de toda a sociedade.\n\nTemas como engajamento e desenvolvimento social em prol do bem comum estão presentes na Fundação FEAC desde a década de 90. Um exemplo é o Programa Voluntários, de 1996, que tinha como objetivo fortalecer a ação voluntária e oportunizar experiências de formação para voluntários e instituições parceiras.','PCA',NULL,'S',2,'2019-08-27 15:13:27',2,'2019-08-27 15:28:45',NULL,NULL,'530982-cidadaniacolor.png','cidadaniacolor.png',NULL,NULL,'337924-1.png','1.png'),(132,'Programa  Juventude','O programa promove a participação juvenil, incentivando a valorização da opinião dos jovens nas questões que lhes afetam individual e coletivamente.\r\n\r\nInveste para que os jovens possam ter espaços de reflexão, debate e construção de propostas que incentivem a autoproteção e a construção de projetos de vida. Contribui também para que os jovens sejam referências positivas nas suas comunidades.\r\n\r\nNeste sentido, estimula o protagonismo juvenil propositivo fomentando a capacidade de liderança e cooperação para atuarem como agentes de transformação de suas realidades. Para isso, é necessário colocar o jovem na centralidade da construção da sua própria história e ainda ampliar o senso e pertencimento, melhorar o clima nas escolas, estimular a adoção de práticas conscientes em relação à saúde, incentivar a resolução de conflitos através de meios pacíficos, fomentar o respeito as diferenças.\r\n\r\nAdicionalmente, o programa também propõe projetos que contribuam com a concretização destes projetos de vida nos seus mais diversos aspectos, em especial que possibilitem ampliar oportunidades de inserção no mundo do trabalho.\r\n\r\nDesde 2014, a Fundação FEAC já vem se dedicando à criação de espaços apoiando 31 instituições que desenvolvem trabalhos com jovens. A Fundação FEAC também apoiou a criação da Rede Articula Juventude (REAJU) e a criação do Conselho da Juventude, em 2015. Em 2016 iniciou o projeto Atitude Educação, com o objetivo de conscientizar e incentivar jovens a serem protagonistas em suas escolas.','Prog  JU',NULL,'S',122,'2019-08-29 14:05:03',122,'2019-08-29 17:06:37',NULL,NULL,'339566-juv.PNG','juv.PNG',NULL,NULL,'945142-juv.PNG','juv.PNG');
/*!40000 ALTER TABLE `programa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `programa_indicadores`
--

DROP TABLE IF EXISTS `programa_indicadores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `programa_indicadores` (
  `pri_id` int(11) NOT NULL AUTO_INCREMENT,
  `pri_idprg` int(11) NOT NULL,
  `pri_desc` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `pri_tipo` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `pri_valor_referencia` int(11) DEFAULT NULL COMMENT '\n',
  `log_responsavelinc` int(11) NOT NULL,
  `log_dtinc` datetime NOT NULL,
  `log_responsavelalt` int(11) DEFAULT NULL,
  `log_dtalt` datetime DEFAULT NULL,
  `log_responsaveldel` int(11) DEFAULT NULL,
  `log_dtdel` datetime DEFAULT NULL,
  `pri_ativo` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'S',
  PRIMARY KEY (`pri_id`),
  KEY `IDX_PRG_INDIC_1` (`log_responsavelinc`),
  KEY `IDX_PRG_INDIC_2` (`log_responsavelalt`),
  KEY `IDX_PRG_INDIC_3` (`log_responsaveldel`),
  KEY `IDX_PRG_INDIC_4` (`pri_idprg`),
  CONSTRAINT `programa_indicador_ibfk_1` FOREIGN KEY (`log_responsavelinc`) REFERENCES `m_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `programa_indicador_ibfk_2` FOREIGN KEY (`log_responsavelalt`) REFERENCES `m_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `programa_indicador_ibfk_3` FOREIGN KEY (`log_responsaveldel`) REFERENCES `m_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `programa_indicador_ibfk_6` FOREIGN KEY (`pri_idprg`) REFERENCES `programa` (`prg_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=222 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `programa_indicadores`
--

LOCK TABLES `programa_indicadores` WRITE;
/*!40000 ALTER TABLE `programa_indicadores` DISABLE KEYS */;
INSERT INTO `programa_indicadores` VALUES (42,112,'Indicadores Quantitativo 1','Quantitativo',10,2,'2019-08-27 15:05:37',NULL,NULL,NULL,NULL,'S'),(52,112,'Indicadores Quantitativo 2','Quantitativo',20,2,'2019-08-27 15:05:41',NULL,NULL,NULL,NULL,'S'),(62,112,'Indicadores Quantitativo 3','Quantitativo',30,2,'2019-08-27 15:05:45',NULL,NULL,NULL,NULL,'S'),(72,112,'Indicadores Quantitativo 5','Quantitativo',33,2,'2019-08-27 15:05:50',NULL,NULL,2,'2019-08-27 15:05:53','N'),(82,112,'Indicadores Qualitativo 1','Qualitativo',NULL,2,'2019-08-27 15:06:07',NULL,NULL,NULL,NULL,'S'),(92,112,'Indicadores Qualitativo 3','Qualitativo',NULL,2,'2019-08-27 15:06:09',NULL,NULL,2,'2019-08-27 15:06:17','N'),(102,112,'Indicadores Qualitativo 2','Qualitativo',NULL,2,'2019-08-27 15:06:12',NULL,NULL,NULL,NULL,'S'),(112,112,'Indicadores Qualitativo 3','Qualitativo',NULL,2,'2019-08-27 15:06:15',NULL,NULL,NULL,NULL,'S'),(122,122,'Quantitativo','Quantitativo',6363,2,'2019-08-27 15:22:14',NULL,NULL,NULL,NULL,'S'),(132,122,'Quantitativo dois','Quantitativo',22,2,'2019-08-27 15:22:29',NULL,NULL,2,'2019-08-27 15:22:32','N'),(142,122,'Quantitativo dois','Quantitativo',212,2,'2019-08-27 15:22:43',NULL,NULL,NULL,NULL,'S'),(152,122,'Qualitativos','Qualitativo',NULL,2,'2019-08-27 15:22:54',NULL,NULL,NULL,NULL,'S'),(162,122,'Qualitativos dois','Qualitativo',NULL,2,'2019-08-27 15:23:02',NULL,NULL,NULL,NULL,'S'),(172,132,'Teste juventude Quantitativo 1','Quantitativo',5,122,'2019-08-29 14:10:05',NULL,NULL,NULL,NULL,'S'),(182,132,'Teste juventude Quantitativo 2','Quantitativo',8,122,'2019-08-29 14:10:29',122,'2019-08-29 14:11:10',NULL,NULL,'S'),(192,132,'Teste juventude Qualitativos 0','Qualitativo',NULL,122,'2019-08-29 14:10:53',122,'2019-08-29 14:11:26',NULL,NULL,'S'),(202,132,'Teste juventude Qualitativos 2','Qualitativo',NULL,122,'2019-08-29 14:11:01',NULL,NULL,122,'2019-08-29 14:11:38','N'),(212,132,'Teste juventude Qualitativos 2','Qualitativo',NULL,122,'2019-08-29 14:11:48',NULL,NULL,NULL,NULL,'S');
/*!40000 ALTER TABLE `programa_indicadores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projeto`
--

DROP TABLE IF EXISTS `projeto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `projeto` (
  `prj_id` int(11) NOT NULL AUTO_INCREMENT,
  `prj_idprog` int(11) NOT NULL,
  `prj_codproj` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `prj_data_inicio_previsto` datetime NOT NULL,
  `prj_qtd_meses` int(11) NOT NULL,
  `prj_titulo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `prj_centro_custo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `prj_subtitulo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `prj_url` text COLLATE utf8_unicode_ci NOT NULL,
  `prj_tpa_id` int(11) DEFAULT NULL,
  `prj_ativo` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'S',
  `prj_ple_id` int(11) DEFAULT NULL,
  `prj_obs` text CHARACTER SET utf8 NOT NULL,
  `prj_logo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `prj_url_logo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `log_responsavelinc` int(11) NOT NULL,
  `log_dtinc` datetime NOT NULL,
  `log_responsavelalt` int(11) DEFAULT NULL,
  `log_dtalt` datetime DEFAULT NULL,
  `log_responsaveldel` int(11) DEFAULT NULL,
  `log_dtdel` datetime DEFAULT NULL,
  `prj_etr_inv` int(11) DEFAULT NULL,
  PRIMARY KEY (`prj_id`),
  KEY `IDX_PROJETO_1` (`log_responsavelinc`),
  KEY `IDX_PROJETO_2` (`log_responsavelalt`),
  KEY `IDX_PROJETO_3` (`log_responsaveldel`),
  KEY `IDX_PROJETO_4` (`prj_idprog`),
  KEY `projeto_ibfk_5` (`prj_ple_id`),
  KEY `IDX_PROJETO_6` (`prj_tpa_id`),
  KEY `projeto_ibfk_7_idx` (`prj_etr_inv`),
  CONSTRAINT `projeto_ibfk_1` FOREIGN KEY (`log_responsavelinc`) REFERENCES `m_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `projeto_ibfk_2` FOREIGN KEY (`log_responsavelalt`) REFERENCES `m_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `projeto_ibfk_3` FOREIGN KEY (`log_responsaveldel`) REFERENCES `m_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `projeto_ibfk_4` FOREIGN KEY (`prj_idprog`) REFERENCES `programa` (`prg_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `projeto_ibfk_5` FOREIGN KEY (`prj_ple_id`) REFERENCES `placar_etapa` (`ple_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `projeto_ibfk_6` FOREIGN KEY (`prj_tpa_id`) REFERENCES `tipo_parceria` (`tpa_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `projeto_ibfk_7` FOREIGN KEY (`prj_etr_inv`) REFERENCES `etr_inv_social` (`etr_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projeto`
--

LOCK TABLES `projeto` WRITE;
/*!40000 ALTER TABLE `projeto` DISABLE KEYS */;
INSERT INTO `projeto` VALUES (62,112,'CentrInvalid date','1970-01-01 00:00:00',24,'Empreendedorismo de Base Comunitária','Centro de Custo 1','Apostamos na atuação de grupos engajados, que fazem a diferença e buscam contribuir para o bem-estar de suas comunidades! ','https://www.feac.org.br/empreendedorismo-de-base-comunitaria/',12,'S',NULL,'Acreditamos no poder de conectar pessoas e soluções! Ao fomentar o empreendedorismo de base comunitária é possível fortalecer o coletivo e disseminar ideias transformadoras.\n\nEntendemos que o município apresenta diversas demandas e áreas de vulnerabilidade social, com comunidades vivenciando contextos específicos de múltiplas carências e escassas oportunidades. Essas populações possuem um potencial de inovação social para catalisar melhorias significativas nas suas comunidades. Por isso, garantir oportunidades aos cidadãos conscientes do seu papel na comunidade pode fomentar soluções contextuais que atendam a prioridades locais e com potencial para transformar realidades.\n\n','empreendedorismo-400x245.png','925846-empreendedorismo-400x245.png',2,'2019-08-27 15:12:33',2,'2019-08-29 17:04:27',NULL,NULL,12),(72,122,'Centr2019','2019-08-08 00:00:00',12,'Motiva inspirando voluntários ','Centro de Custo 1','','https://www.feac.org.br/motiva/',12,'S',NULL,'O projeto Mobilização, orientação, treinamento e incentivo a voluntários (Motiva) prepara e orienta pessoas para atuação em iniciativas de cidadania ativa e de apoio às Organizações da Sociedade Civil (OSC). A iniciativa promove formações para quem está disposto a atuar doando tempo e talento por meio do trabalho voluntário.','cidadaniacolor.png','72360-cidadaniacolor.png',2,'2019-08-27 15:41:00',NULL,NULL,NULL,NULL,12),(82,112,'000002000','2000-01-01 00:00:00',24,'000000000000000099','000000000000000099','000000000000000099','000000000000000099',12,'N',NULL,'000000000000000099',NULL,NULL,2,'2019-08-27 17:56:13',NULL,NULL,2,'2019-08-29 13:29:25',12),(92,112,'jjInvalid date','1970-01-01 00:00:00',24,'jjj','jj','jjjj','jjj',12,'N',NULL,'jjjj',NULL,NULL,2,'2019-08-27 18:43:13',NULL,NULL,2,'2019-08-29 13:29:29',12),(102,132,'Centr1970','1970-01-01 00:00:00',24,'Identidade & Saberes','Centro 1','','https://www.feac.org.br/identidade-e-saberes/',12,'S',NULL,'O “Guia Prático de Atividades do Educador e Educadora Social: Diálogos com as Juventudes” é um fio condutor de oportunidades socioeducativas que respeita a realidade local de cada território onde pretende ser desenvolvido. Para isso, o Guia traz temáticas geradoras e novos espaços de diálogos com a comunidade em favor da garantia de direitos.\r\n\r\nNosso convite é para que você explore e experimente os recursos metodológicos e oficinas propostas e disponíveis no Guia e invista em novas possibilidades, adaptando e adequando-as a partir das análises dos processos grupais em que está inserido, respeitando trajetórias e principalmente, sua relação educadora com a comunidade.\r\n\r\n','juv.PNG','908159-juv.PNG',122,'2019-08-29 14:25:26',122,'2019-08-29 17:07:09',NULL,NULL,12);
/*!40000 ALTER TABLE `projeto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projeto_bairro`
--

DROP TABLE IF EXISTS `projeto_bairro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `projeto_bairro` (
  `pjb_id` int(11) NOT NULL AUTO_INCREMENT,
  `pjb_prj_id` int(11) NOT NULL,
  `pjb_bid` int(11) NOT NULL,
  `log_responsavelinc` int(11) NOT NULL,
  `log_dtinc` datetime NOT NULL,
  `log_responsavelalt` int(11) DEFAULT NULL,
  `log_dtalt` datetime DEFAULT NULL,
  `log_responsaveldel` int(11) DEFAULT NULL,
  `log_dtdel` datetime DEFAULT NULL,
  PRIMARY KEY (`pjb_id`),
  KEY `IDX_PROJETO_1` (`log_responsavelinc`),
  KEY `IDX_PROJETO_2` (`log_responsavelalt`),
  KEY `IDX_PROJETO_3` (`log_responsaveldel`),
  KEY `IDX_PROJETO_5` (`pjb_prj_id`),
  KEY `projeto_regiao_ibfk_7_idx` (`pjb_bid`),
  CONSTRAINT `projeto_bairro_ibfk_1` FOREIGN KEY (`log_responsavelinc`) REFERENCES `m_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `projeto_bairro_ibfk_2` FOREIGN KEY (`log_responsavelalt`) REFERENCES `m_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `projeto_bairro_ibfk_3` FOREIGN KEY (`log_responsaveldel`) REFERENCES `m_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `projeto_bairro_ibfk_6` FOREIGN KEY (`pjb_prj_id`) REFERENCES `projeto` (`prj_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `projeto_bairro_ibfk_7` FOREIGN KEY (`pjb_bid`) REFERENCES `bairro` (`bai_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=542 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projeto_bairro`
--

LOCK TABLES `projeto_bairro` WRITE;
/*!40000 ALTER TABLE `projeto_bairro` DISABLE KEYS */;
INSERT INTO `projeto_bairro` VALUES (262,72,42,2,'2019-08-27 15:41:00',NULL,NULL,NULL,NULL),(362,82,42,2,'2019-08-27 17:56:13',NULL,NULL,NULL,NULL),(372,82,52,2,'2019-08-27 17:56:13',NULL,NULL,NULL,NULL),(382,92,52,2,'2019-08-27 18:43:13',NULL,NULL,NULL,NULL),(492,62,22,2,'2019-08-29 17:04:27',NULL,NULL,NULL,NULL),(502,62,52,2,'2019-08-29 17:04:27',NULL,NULL,NULL,NULL),(512,62,32,2,'2019-08-29 17:04:27',NULL,NULL,NULL,NULL),(522,102,22,122,'2019-08-29 17:07:09',NULL,NULL,NULL,NULL),(532,102,32,122,'2019-08-29 17:07:09',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `projeto_bairro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projeto_etapa`
--

DROP TABLE IF EXISTS `projeto_etapa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `projeto_etapa` (
  `prjetp_id` int(11) NOT NULL AUTO_INCREMENT,
  `prjetp_idprj` int(11) NOT NULL,
  `prjetp_idetp` int(11) NOT NULL,
  `prjetp_ativo` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'S',
  `prjetp_ini` datetime NOT NULL,
  `prjetp_fim` datetime DEFAULT NULL,
  `log_responsavelinc` int(11) NOT NULL,
  `log_dtinc` datetime NOT NULL,
  `log_responsavelalt` int(11) DEFAULT NULL,
  `log_dtalt` datetime DEFAULT NULL,
  `log_responsaveldel` int(11) DEFAULT NULL,
  `log_dtdel` datetime DEFAULT NULL,
  PRIMARY KEY (`prjetp_id`),
  KEY `IDX_ETAPA_1` (`log_responsavelinc`),
  KEY `IDX_ETAPA_2` (`log_responsavelalt`),
  KEY `IDX_ETAPA_3` (`log_responsaveldel`),
  KEY `IDX_ETAPA_4` (`prjetp_idetp`),
  KEY `projeto_etapa_ibfk_5_idx` (`prjetp_idprj`),
  CONSTRAINT `projeto_etapa_ibfk_1` FOREIGN KEY (`log_responsavelinc`) REFERENCES `m_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `projeto_etapa_ibfk_2` FOREIGN KEY (`log_responsavelalt`) REFERENCES `m_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `projeto_etapa_ibfk_3` FOREIGN KEY (`log_responsaveldel`) REFERENCES `m_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `projeto_etapa_ibfk_4` FOREIGN KEY (`prjetp_idetp`) REFERENCES `etapa` (`etp_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projeto_etapa`
--

LOCK TABLES `projeto_etapa` WRITE;
/*!40000 ALTER TABLE `projeto_etapa` DISABLE KEYS */;
INSERT INTO `projeto_etapa` VALUES (1,62,1,'S','2019-08-27 15:02:12','2019-08-29 13:38:12',2,'2019-08-27 15:02:12',2,'2019-08-29 13:38:12',NULL,NULL),(2,72,1,'S','2019-08-27 15:02:12',NULL,2,'2019-08-27 15:02:12',NULL,NULL,NULL,NULL),(12,62,2,'S','2019-08-29 13:38:12','2019-08-29 13:38:22',2,'2019-08-29 13:38:12',2,'2019-08-29 13:38:22',NULL,NULL),(22,62,3,'S','2019-08-29 13:38:22',NULL,2,'2019-08-29 13:38:22',NULL,NULL,NULL,NULL),(32,102,1,'S','2019-08-29 14:25:26','2019-08-29 14:30:23',122,'2019-08-29 14:25:26',122,'2019-08-29 14:30:23',NULL,NULL),(42,102,2,'S','2019-08-29 14:30:23','2019-08-29 14:30:39',122,'2019-08-29 14:30:23',122,'2019-08-29 14:30:39',NULL,NULL),(52,102,3,'S','2019-08-29 14:30:39','2019-08-29 14:33:34',122,'2019-08-29 14:30:39',122,'2019-08-29 14:33:34',NULL,NULL),(62,102,4,'S','2019-08-29 14:33:34','2019-08-29 14:34:11',122,'2019-08-29 14:33:34',122,'2019-08-29 14:34:11',NULL,NULL),(72,102,5,'S','2019-08-29 14:34:11',NULL,122,'2019-08-29 14:34:11',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `projeto_etapa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `regiao`
--

DROP TABLE IF EXISTS `regiao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `regiao` (
  `reg_id` int(11) NOT NULL AUTO_INCREMENT,
  `reg_nome` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `log_responsavelinc` int(11) NOT NULL,
  `log_dtinc` datetime NOT NULL,
  `log_responsavelalt` int(11) DEFAULT NULL,
  `log_dtalt` datetime DEFAULT NULL,
  `log_responsaveldel` int(11) DEFAULT NULL,
  `log_dtdel` datetime DEFAULT NULL,
  `reg_ativo` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'S',
  PRIMARY KEY (`reg_id`),
  KEY `IDX_PROJETO_1` (`log_responsavelinc`),
  KEY `IDX_PROJETO_2` (`log_responsavelalt`),
  KEY `IDX_PROJETO_3` (`log_responsaveldel`),
  CONSTRAINT `regiao_ibfk_1` FOREIGN KEY (`log_responsavelinc`) REFERENCES `m_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `regiao_ibfk_2` FOREIGN KEY (`log_responsavelalt`) REFERENCES `m_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `regiao_ibfk_3` FOREIGN KEY (`log_responsaveldel`) REFERENCES `m_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `regiao`
--

LOCK TABLES `regiao` WRITE;
/*!40000 ALTER TABLE `regiao` DISABLE KEYS */;
INSERT INTO `regiao` VALUES (22,'Norte',2,'2019-08-27 14:55:01',NULL,NULL,NULL,NULL,'S'),(32,'Sul',2,'2019-08-27 14:55:06',NULL,NULL,NULL,NULL,'S'),(42,'Leste',2,'2019-08-27 14:55:11',NULL,NULL,NULL,NULL,'S'),(52,'Oeste',2,'2019-08-27 14:55:16',NULL,NULL,NULL,NULL,'S'),(62,'Centro',2,'2019-08-27 14:55:20',NULL,NULL,NULL,NULL,'S');
/*!40000 ALTER TABLE `regiao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rel_tec_comentario`
--

DROP TABLE IF EXISTS `rel_tec_comentario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `rel_tec_comentario` (
  `rtc_id` int(11) NOT NULL AUTO_INCREMENT,
  `rtc_prj_id` int(11) NOT NULL DEFAULT '0',
  `rtc_medida_objetiva` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `rtc_coment_gerais` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `log_responsavelinc` int(11) NOT NULL,
  `log_dtinc` datetime NOT NULL,
  `log_responsavelalt` int(11) DEFAULT NULL,
  `log_dtalt` datetime DEFAULT NULL,
  `log_responsaveldel` int(11) DEFAULT NULL,
  `log_dtdel` datetime DEFAULT NULL,
  PRIMARY KEY (`rtc_id`),
  KEY `IDX_PROJETO_1` (`log_responsavelinc`),
  KEY `IDX_PROJETO_2` (`log_responsavelalt`),
  KEY `IDX_PROJETO_3` (`log_responsaveldel`),
  KEY `IDX_PROJETO_4` (`rtc_prj_id`),
  CONSTRAINT `rel_tec_comentario_ibfk_1` FOREIGN KEY (`log_responsavelinc`) REFERENCES `m_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `rel_tec_comentario_ibfk_2` FOREIGN KEY (`log_responsavelalt`) REFERENCES `m_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `rel_tec_comentario_ibfk_3` FOREIGN KEY (`log_responsaveldel`) REFERENCES `m_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `rel_tec_comentario_ibfk_4` FOREIGN KEY (`rtc_prj_id`) REFERENCES `projeto` (`prj_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rel_tec_comentario`
--

LOCK TABLES `rel_tec_comentario` WRITE;
/*!40000 ALTER TABLE `rel_tec_comentario` DISABLE KEYS */;
/*!40000 ALTER TABLE `rel_tec_comentario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rel_tec_indicadorequalitativos`
--

DROP TABLE IF EXISTS `rel_tec_indicadorequalitativos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `rel_tec_indicadorequalitativos` (
  `rtq_id` int(11) NOT NULL AUTO_INCREMENT,
  `rtq_prj_id` int(11) NOT NULL DEFAULT '0',
  `rtq_coment1` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `rtq_coment2` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `log_responsavelinc` int(11) NOT NULL,
  `log_dtinc` datetime NOT NULL,
  `log_responsavelalt` int(11) DEFAULT NULL,
  `log_dtalt` datetime DEFAULT NULL,
  `log_responsaveldel` int(11) DEFAULT NULL,
  `log_dtdel` datetime DEFAULT NULL,
  `rtq_ativo` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'S',
  PRIMARY KEY (`rtq_id`),
  KEY `IDX_PROJETO_1` (`log_responsavelinc`),
  KEY `IDX_PROJETO_2` (`log_responsavelalt`),
  KEY `IDX_PROJETO_3` (`log_responsaveldel`),
  KEY `IDX_PROJETO_4` (`rtq_prj_id`),
  CONSTRAINT `rel_tec_indicadorequalitativos_ibfk_1` FOREIGN KEY (`log_responsavelinc`) REFERENCES `m_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `rel_tec_indicadorequalitativos_ibfk_2` FOREIGN KEY (`log_responsavelalt`) REFERENCES `m_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `rel_tec_indicadorequalitativos_ibfk_3` FOREIGN KEY (`log_responsaveldel`) REFERENCES `m_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `rel_tec_indicadorequalitativos_ibfk_4` FOREIGN KEY (`rtq_prj_id`) REFERENCES `projeto` (`prj_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rel_tec_indicadorequalitativos`
--

LOCK TABLES `rel_tec_indicadorequalitativos` WRITE;
/*!40000 ALTER TABLE `rel_tec_indicadorequalitativos` DISABLE KEYS */;
/*!40000 ALTER TABLE `rel_tec_indicadorequalitativos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rel_tec_indicadoresderesultado`
--

DROP TABLE IF EXISTS `rel_tec_indicadoresderesultado`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `rel_tec_indicadoresderesultado` (
  `rti_id` int(11) NOT NULL AUTO_INCREMENT,
  `rti_prj_id` int(11) NOT NULL DEFAULT '0',
  `rti_direto` int(20) NOT NULL,
  `rti_indireto` int(100) NOT NULL,
  `rti_comentario` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `log_responsavelinc` int(11) NOT NULL,
  `log_dtinc` datetime NOT NULL,
  `log_responsavelalt` int(11) DEFAULT NULL,
  `log_dtalt` datetime DEFAULT NULL,
  `log_responsaveldel` int(11) DEFAULT NULL,
  `log_dtdel` datetime DEFAULT NULL,
  PRIMARY KEY (`rti_id`),
  KEY `IDX_PROJETO_1` (`log_responsavelinc`),
  KEY `IDX_PROJETO_2` (`log_responsavelalt`),
  KEY `IDX_PROJETO_3` (`log_responsaveldel`),
  KEY `IDX_PROJETO_4` (`rti_prj_id`),
  CONSTRAINT `rel_tec_indicadoresderesultado_ibfk_1` FOREIGN KEY (`log_responsavelinc`) REFERENCES `m_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `rel_tec_indicadoresderesultado_ibfk_2` FOREIGN KEY (`log_responsavelalt`) REFERENCES `m_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `rel_tec_indicadoresderesultado_ibfk_3` FOREIGN KEY (`log_responsaveldel`) REFERENCES `m_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `rel_tec_indicadoresderesultado_ibfk_4` FOREIGN KEY (`rti_prj_id`) REFERENCES `projeto` (`prj_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rel_tec_indicadoresderesultado`
--

LOCK TABLES `rel_tec_indicadoresderesultado` WRITE;
/*!40000 ALTER TABLE `rel_tec_indicadoresderesultado` DISABLE KEYS */;
/*!40000 ALTER TABLE `rel_tec_indicadoresderesultado` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rel_tec_monitoramento`
--

DROP TABLE IF EXISTS `rel_tec_monitoramento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `rel_tec_monitoramento` (
  `rtm_id` int(11) NOT NULL AUTO_INCREMENT,
  `rtm_prj_id` int(11) NOT NULL DEFAULT '0',
  `rtm_acoes_planejadas` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `rtm_status` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `rtm_resultado` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `rtm_ponto_atencao` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `rtm_ponto_encaminhamento` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `log_responsavelinc` int(11) NOT NULL,
  `log_dtinc` datetime NOT NULL,
  `log_responsavelalt` int(11) DEFAULT NULL,
  `log_dtalt` datetime DEFAULT NULL,
  `log_responsaveldel` int(11) DEFAULT NULL,
  `log_dtdel` datetime DEFAULT NULL,
  PRIMARY KEY (`rtm_id`),
  KEY `IDX_PROJETO_1` (`log_responsavelinc`),
  KEY `IDX_PROJETO_2` (`log_responsavelalt`),
  KEY `IDX_PROJETO_3` (`log_responsaveldel`),
  KEY `IDX_PROJETO_4` (`rtm_prj_id`),
  CONSTRAINT `rel_tec_monitoramento_ibfk_1` FOREIGN KEY (`log_responsavelinc`) REFERENCES `m_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `rel_tec_monitoramento_ibfk_2` FOREIGN KEY (`log_responsavelalt`) REFERENCES `m_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `rel_tec_monitoramento_ibfk_3` FOREIGN KEY (`log_responsaveldel`) REFERENCES `m_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `rel_tec_monitoramento_ibfk_4` FOREIGN KEY (`rtm_prj_id`) REFERENCES `projeto` (`prj_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rel_tec_monitoramento`
--

LOCK TABLES `rel_tec_monitoramento` WRITE;
/*!40000 ALTER TABLE `rel_tec_monitoramento` DISABLE KEYS */;
/*!40000 ALTER TABLE `rel_tec_monitoramento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rel_tec_reg_fotografico`
--

DROP TABLE IF EXISTS `rel_tec_reg_fotografico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `rel_tec_reg_fotografico` (
  `rtf_id` int(11) NOT NULL AUTO_INCREMENT,
  `rtf_prj_id` int(11) NOT NULL DEFAULT '0',
  `rtf_empreendedor_social` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `rtf_mentoria_social` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `rtf_diagnostico_jovens` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `rtf_abertura_programa` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `log_responsavelinc` int(11) NOT NULL,
  `log_dtinc` datetime NOT NULL,
  `log_responsavelalt` int(11) DEFAULT NULL,
  `log_dtalt` datetime DEFAULT NULL,
  `log_responsaveldel` int(11) DEFAULT NULL,
  `log_dtdel` datetime DEFAULT NULL,
  PRIMARY KEY (`rtf_id`),
  KEY `IDX_PROJETO_1` (`log_responsavelinc`),
  KEY `IDX_PROJETO_2` (`log_responsavelalt`),
  KEY `IDX_PROJETO_3` (`log_responsaveldel`),
  KEY `IDX_PROJETO_4` (`rtf_prj_id`),
  CONSTRAINT `rel_tec_reg_fotografico_ibfk_1` FOREIGN KEY (`log_responsavelinc`) REFERENCES `m_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `rel_tec_reg_fotografico_ibfk_2` FOREIGN KEY (`log_responsavelalt`) REFERENCES `m_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `rel_tec_reg_fotografico_ibfk_3` FOREIGN KEY (`log_responsaveldel`) REFERENCES `m_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `rel_tec_reg_fotografico_ibfk_4` FOREIGN KEY (`rtf_prj_id`) REFERENCES `projeto` (`prj_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rel_tec_reg_fotografico`
--

LOCK TABLES `rel_tec_reg_fotografico` WRITE;
/*!40000 ALTER TABLE `rel_tec_reg_fotografico` DISABLE KEYS */;
/*!40000 ALTER TABLE `rel_tec_reg_fotografico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `responsavel_tecnico`
--

DROP TABLE IF EXISTS `responsavel_tecnico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `responsavel_tecnico` (
  `rtec_id` int(11) NOT NULL AUTO_INCREMENT,
  `rtec_ffte_id` int(11) NOT NULL,
  `rtec_nome` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `rtec_cpf` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `rtec_rg` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `rtec_cargo` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `rtec_formacao` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `rtec_email` varchar(60) COLLATE utf8_unicode_ci NOT NULL,
  `rtec_tel` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `rtec_ativo` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'S',
  `log_responsavelinc` int(11) NOT NULL,
  `log_dtinc` datetime NOT NULL,
  `log_responsavelalt` int(11) DEFAULT NULL,
  `log_dtalt` datetime DEFAULT NULL,
  `log_responsaveldel` int(11) DEFAULT NULL,
  `log_dtdel` datetime DEFAULT NULL,
  PRIMARY KEY (`rtec_id`),
  KEY `IDX_PROJETO_RESPONSAVEL_1` (`log_responsavelinc`),
  KEY `IDX_PROJETO_RESPONSAVEL_2` (`log_responsavelalt`),
  KEY `IDX_PROJETO_RESPONSAVEL_3` (`log_responsaveldel`),
  KEY `IDX_PROJETO_RESPONSAVEL_4` (`rtec_ffte_id`),
  CONSTRAINT `form_ficha_tecnica_rep_bene_ibfk_1` FOREIGN KEY (`log_responsavelinc`) REFERENCES `m_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `form_ficha_tecnica_rep_bene_ibfk_2` FOREIGN KEY (`log_responsavelalt`) REFERENCES `m_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `form_ficha_tecnica_rep_bene_ibfk_3` FOREIGN KEY (`log_responsaveldel`) REFERENCES `m_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `form_ficha_tecnica_rep_bene_ibfk_4` FOREIGN KEY (`rtec_ffte_id`) REFERENCES `ff_tecnica_entidade` (`ffte_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `responsavel_tecnico`
--

LOCK TABLES `responsavel_tecnico` WRITE;
/*!40000 ALTER TABLE `responsavel_tecnico` DISABLE KEYS */;
INSERT INTO `responsavel_tecnico` VALUES (12,22,'Responsável Técnico','101.010.101-01','1010101010','Responsável Técnico','Responsável Técnico','resp@gmail.com','1998133333','S',2,'2019-08-27 15:44:52',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `responsavel_tecnico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resumo_analitico`
--

DROP TABLE IF EXISTS `resumo_analitico`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `resumo_analitico` (
  `rsa_id` int(11) NOT NULL AUTO_INCREMENT,
  `rsa_idproj` int(11) NOT NULL,
  `rsa_data` datetime NOT NULL,
  `rsa_carcterritorio` text COLLATE utf8_unicode_ci NOT NULL,
  `rsa_orglocais` text COLLATE utf8_unicode_ci NOT NULL,
  `rsa_infoprinc` text COLLATE utf8_unicode_ci NOT NULL,
  `usp_ativo` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'S',
  `log_responsavelinc` int(11) NOT NULL,
  `log_dtinc` datetime NOT NULL,
  `log_responsavelalt` int(11) DEFAULT NULL,
  `log_dtalt` datetime DEFAULT NULL,
  `log_responsaveldel` int(11) DEFAULT NULL,
  `log_dtdel` datetime DEFAULT NULL,
  `rsa_interatividade` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`rsa_id`),
  KEY `IDX_RANALITICO_1` (`log_responsavelinc`),
  KEY `IDX_RANALITICO_2` (`log_responsavelalt`),
  KEY `IDX_RANALITICO_3` (`log_responsaveldel`),
  KEY `IDX_RANALITICO_4` (`rsa_idproj`),
  CONSTRAINT `resumo_analitico_ibfk_1` FOREIGN KEY (`log_responsavelinc`) REFERENCES `m_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `resumo_analitico_ibfk_2` FOREIGN KEY (`log_responsavelalt`) REFERENCES `m_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `resumo_analitico_ibfk_3` FOREIGN KEY (`log_responsaveldel`) REFERENCES `m_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `resumo_analitico_ibfk_4` FOREIGN KEY (`rsa_idproj`) REFERENCES `projeto` (`prj_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resumo_analitico`
--

LOCK TABLES `resumo_analitico` WRITE;
/*!40000 ALTER TABLE `resumo_analitico` DISABLE KEYS */;
INSERT INTO `resumo_analitico` VALUES (2,62,'0000-00-00 00:00:00','Caracterização de território *','Principais Organizações locais identificadas no território(entidades de base, governamentais e ONGs) *','Informações sobre os principais grupos produtivos diagnosticados *','S',2,'2019-08-27 15:13:28',2,'2019-08-29 13:38:11',NULL,NULL,'1'),(12,72,'2019-08-07 03:00:00','Caracterização de território *','Principais Organizações locais identificadas no território(entidades de base, governamentais e ONGs) *','Informações sobre os principais grupos produtivos diagnosticados *','S',2,'2019-08-27 17:06:40',NULL,NULL,NULL,NULL,'1'),(22,82,'0000-00-00 00:00:00','000000000000000099','000000000000000099','000000000000000099','S',2,'2019-08-27 17:56:20',2,'2019-08-27 18:04:34',NULL,NULL,'0'),(32,92,'2019-08-24 03:00:00','hrtht','hhhtrh','rthrthrt','S',2,'2019-08-27 18:43:26',NULL,NULL,NULL,NULL,'1'),(42,102,'2019-08-07 03:00:00','Caracterização de território *','Principais Organizações locais identificadas no território(entidades de base, governamentais e ONGs) *','Informações sobre os principais grupos produtivos diagnosticados *','S',122,'2019-08-29 14:30:23',NULL,NULL,NULL,NULL,'1');
/*!40000 ALTER TABLE `resumo_analitico` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resumo_analitico_interatividade`
--

DROP TABLE IF EXISTS `resumo_analitico_interatividade`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `resumo_analitico_interatividade` (
  `rint_id` int(11) NOT NULL AUTO_INCREMENT,
  `rint_idrsa` int(11) NOT NULL,
  `rint_data` datetime NOT NULL,
  `rint_text` text COLLATE utf8_unicode_ci NOT NULL,
  `log_responsavelinc` int(11) NOT NULL,
  `log_dtinc` datetime NOT NULL,
  `log_responsavelalt` int(11) DEFAULT NULL,
  `log_dtalt` datetime DEFAULT NULL,
  `log_responsaveldel` int(11) DEFAULT NULL,
  `log_dtdel` datetime DEFAULT NULL,
  `rint_ativo` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'S',
  PRIMARY KEY (`rint_id`),
  KEY `IDX_RINTERATIVIDADE_1` (`log_responsavelinc`),
  KEY `IDX_RINTERATIVIDADE_2` (`log_responsavelalt`),
  KEY `IDX_RINTERATIVIDADE_3` (`log_responsaveldel`),
  KEY `IDX_RINTERATIVIDADE_4` (`rint_idrsa`),
  CONSTRAINT `resumo_interatividade_ibfk_1` FOREIGN KEY (`log_responsavelinc`) REFERENCES `m_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `resumo_interatividade_ibfk_2` FOREIGN KEY (`log_responsavelalt`) REFERENCES `m_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `resumo_interatividade_ibfk_3` FOREIGN KEY (`log_responsaveldel`) REFERENCES `m_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `resumo_interatividade_ibfk_4` FOREIGN KEY (`rint_idrsa`) REFERENCES `resumo_analitico` (`rsa_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=382 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resumo_analitico_interatividade`
--

LOCK TABLES `resumo_analitico_interatividade` WRITE;
/*!40000 ALTER TABLE `resumo_analitico_interatividade` DISABLE KEYS */;
INSERT INTO `resumo_analitico_interatividade` VALUES (112,2,'2019-08-27 17:15:20','TESTE',2,'2019-08-27 17:15:20',NULL,NULL,NULL,NULL,'S'),(122,2,'2019-08-27 17:19:20','777',2,'2019-08-27 17:19:20',NULL,NULL,NULL,NULL,'S'),(132,2,'2019-08-27 17:19:24','iii',2,'2019-08-27 17:19:24',NULL,NULL,NULL,NULL,'S'),(142,2,'2019-08-27 17:19:27',',,,',2,'2019-08-27 17:19:27',NULL,NULL,NULL,NULL,'S'),(152,2,'2019-08-27 17:21:54','kkk',2,'2019-08-27 17:21:54',NULL,NULL,NULL,NULL,'S'),(202,2,'2019-08-27 17:40:42','77',2,'2019-08-27 17:40:42',NULL,NULL,NULL,NULL,'S'),(212,2,'2019-08-27 17:40:44','jjjj',2,'2019-08-27 17:40:44',NULL,NULL,NULL,NULL,'S'),(222,2,'2019-08-27 17:40:47',',,,',2,'2019-08-27 17:40:47',NULL,NULL,NULL,NULL,'S'),(232,2,'2019-08-27 17:40:50','hjhhjhjh',2,'2019-08-27 17:40:50',NULL,NULL,NULL,NULL,'S'),(242,2,'2019-08-27 17:51:31','444',2,'2019-08-27 17:51:31',NULL,NULL,NULL,NULL,'S'),(252,2,'2019-08-27 17:51:33','ggg',2,'2019-08-27 17:51:33',NULL,NULL,NULL,NULL,'S'),(322,22,'2019-08-27 18:36:40','ddd',2,'2019-08-27 18:36:40',NULL,NULL,NULL,NULL,'S'),(332,22,'2019-08-27 18:36:42','vvv',2,'2019-08-27 18:36:42',NULL,NULL,NULL,NULL,'S'),(342,32,'2019-08-27 18:43:31','htrhrt',2,'2019-08-27 18:43:31',NULL,NULL,NULL,NULL,'S'),(352,32,'2019-08-27 18:43:33','nnn',2,'2019-08-27 18:43:33',NULL,NULL,NULL,NULL,'S'),(362,42,'2019-08-29 14:30:34','Interatividade de Diagnóstico 1',122,'2019-08-29 14:30:34',NULL,NULL,NULL,NULL,'S'),(372,42,'2019-08-29 14:30:37','Interatividade de Diagnóstico 2',122,'2019-08-29 14:30:37',NULL,NULL,NULL,NULL,'S');
/*!40000 ALTER TABLE `resumo_analitico_interatividade` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `resumo_analitico_parecer`
--

DROP TABLE IF EXISTS `resumo_analitico_parecer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `resumo_analitico_parecer` (
  `rpar_id` int(11) NOT NULL AUTO_INCREMENT,
  `rpar_idprj` int(11) NOT NULL,
  `rpar_idusu` int(11) NOT NULL,
  `rpar_voto` varchar(20) CHARACTER SET utf8 NOT NULL,
  `log_responsavelinc` int(11) NOT NULL,
  `log_dtinc` datetime NOT NULL,
  `log_responsavelalt` int(11) DEFAULT NULL,
  `log_dtalt` datetime DEFAULT NULL,
  `log_responsaveldel` int(11) DEFAULT NULL,
  `log_dtdel` datetime DEFAULT NULL,
  `rpar_ativo` varchar(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'S',
  PRIMARY KEY (`rpar_id`),
  KEY `IDX_RPARECER_1` (`log_responsavelinc`),
  KEY `IDX_RPARECER_2` (`log_responsavelalt`),
  KEY `IDX_RPARECER_3` (`log_responsaveldel`),
  KEY `resumo_analitico_parecer_ibfk_4_idx` (`rpar_idprj`),
  KEY `resumo_analitico_parecer_ibfk_5_idx` (`rpar_idusu`),
  CONSTRAINT `resumo_analitico_parecer_ibfk_1` FOREIGN KEY (`log_responsavelinc`) REFERENCES `m_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `resumo_analitico_parecer_ibfk_2` FOREIGN KEY (`log_responsavelalt`) REFERENCES `m_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `resumo_analitico_parecer_ibfk_3` FOREIGN KEY (`log_responsaveldel`) REFERENCES `m_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `resumo_analitico_parecer_ibfk_4` FOREIGN KEY (`rpar_idprj`) REFERENCES `projeto` (`prj_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `resumo_analitico_parecer_ibfk_5` FOREIGN KEY (`rpar_idusu`) REFERENCES `m_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `resumo_analitico_parecer`
--

LOCK TABLES `resumo_analitico_parecer` WRITE;
/*!40000 ALTER TABLE `resumo_analitico_parecer` DISABLE KEYS */;
INSERT INTO `resumo_analitico_parecer` VALUES (12,102,82,'Sim',122,'2019-08-29 14:31:19',NULL,NULL,NULL,NULL,'S'),(22,102,102,'Sim',122,'2019-08-29 14:33:11',NULL,NULL,NULL,NULL,'S'),(32,102,62,'Sim',122,'2019-08-29 14:33:34',NULL,NULL,NULL,NULL,'S');
/*!40000 ALTER TABLE `resumo_analitico_parecer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_parceria`
--

DROP TABLE IF EXISTS `tipo_parceria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tipo_parceria` (
  `tpa_id` int(11) NOT NULL AUTO_INCREMENT,
  `tpa_nome` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `log_responsavelinc` int(11) NOT NULL,
  `log_dtinc` datetime NOT NULL,
  `log_responsavelalt` int(11) DEFAULT NULL,
  `log_dtalt` datetime DEFAULT NULL,
  `log_responsaveldel` int(11) DEFAULT NULL,
  `log_dtdel` datetime DEFAULT NULL,
  `tpa_ativo` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'S',
  PRIMARY KEY (`tpa_id`),
  KEY `IDX_PROJETO_1` (`log_responsavelinc`),
  KEY `IDX_PROJETO_2` (`log_responsavelalt`),
  KEY `IDX_PROJETO_3` (`log_responsaveldel`),
  CONSTRAINT `tipo_parceria_ibfk_1` FOREIGN KEY (`log_responsavelinc`) REFERENCES `m_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `tipo_parceria_ibfk_2` FOREIGN KEY (`log_responsavelalt`) REFERENCES `m_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `tipo_parceria_ibfk_3` FOREIGN KEY (`log_responsaveldel`) REFERENCES `m_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_parceria`
--

LOCK TABLES `tipo_parceria` WRITE;
/*!40000 ALTER TABLE `tipo_parceria` DISABLE KEYS */;
INSERT INTO `tipo_parceria` VALUES (12,'Tipo parceria',2,'2019-08-27 14:56:10',NULL,NULL,NULL,NULL,'S'),(22,'Tipo Parceria dois',2,'2019-08-27 15:00:12',2,'2019-08-27 15:07:50',NULL,NULL,'S'),(32,'Tipo Parceria Três',2,'2019-08-27 15:00:26',2,'2019-08-27 15:09:44',NULL,NULL,'S');
/*!40000 ALTER TABLE `tipo_parceria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `toc_programa`
--

DROP TABLE IF EXISTS `toc_programa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `toc_programa` (
  `toc_id` int(11) NOT NULL AUTO_INCREMENT,
  `toc_idprg` int(11) NOT NULL,
  `toc_num` int(11) NOT NULL,
  `toc_desc` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `toc_nivelgov` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `toc_ativo` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'S',
  `log_responsavelinc` int(11) NOT NULL,
  `log_dtinc` datetime NOT NULL,
  `log_responsavelalt` int(11) DEFAULT NULL,
  `log_dtalt` datetime DEFAULT NULL,
  `log_responsaveldel` int(11) DEFAULT NULL,
  `log_dtdel` datetime DEFAULT NULL,
  PRIMARY KEY (`toc_id`),
  KEY `IDX_PROGRAMA_1` (`log_responsavelinc`),
  KEY `IDX_PROGRAMA_2` (`log_responsavelalt`),
  KEY `IDX_PROGRAMA_3` (`log_responsaveldel`),
  KEY `IDX_PROGRAMA_4` (`toc_idprg`),
  CONSTRAINT `toc_programa_ibfk_1` FOREIGN KEY (`log_responsavelinc`) REFERENCES `m_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `toc_programa_ibfk_2` FOREIGN KEY (`log_responsavelalt`) REFERENCES `m_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `toc_programa_ibfk_4` FOREIGN KEY (`toc_idprg`) REFERENCES `programa` (`prg_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `toc_programaibfk_3` FOREIGN KEY (`log_responsaveldel`) REFERENCES `m_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `toc_programa`
--

LOCK TABLES `toc_programa` WRITE;
/*!40000 ALTER TABLE `toc_programa` DISABLE KEYS */;
INSERT INTO `toc_programa` VALUES (2,112,10,'Toc 1','Controle','S',2,'2019-08-27 15:07:07',NULL,NULL,NULL,NULL),(12,112,20,'Toc 2','Influência','S',2,'2019-08-27 15:07:13',NULL,NULL,NULL,NULL),(22,112,44,'Toc 4','Controle','N',2,'2019-08-27 15:07:19',NULL,NULL,2,'2019-08-27 15:07:22'),(32,112,30,'Toc 3','Interesse','S',2,'2019-08-27 15:07:33',NULL,NULL,NULL,NULL),(42,122,123,'Novo Toc','Controle','S',2,'2019-08-27 15:27:48',NULL,NULL,NULL,NULL),(52,132,10,'Teste Novo programa','Controle','S',122,'2019-08-29 14:19:18',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `toc_programa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario_programa`
--

DROP TABLE IF EXISTS `usuario_programa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `usuario_programa` (
  `usprg_id` int(11) NOT NULL AUTO_INCREMENT,
  `usprg_iduser` int(11) NOT NULL,
  `usprg_prg` int(11) NOT NULL,
  `usprg_tipo` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `usprg_ativo` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'S',
  `log_responsavelinc` int(11) NOT NULL,
  `log_dtinc` datetime NOT NULL,
  `log_responsavelalt` int(11) DEFAULT NULL,
  `log_dtalt` datetime DEFAULT NULL,
  `log_responsaveldel` int(11) DEFAULT NULL,
  `log_dtdel` datetime DEFAULT NULL,
  PRIMARY KEY (`usprg_id`),
  KEY `IDX_PROGRAMA_1` (`log_responsavelinc`),
  KEY `IDX_PROGRAMA_2` (`log_responsavelalt`),
  KEY `IDX_PROGRAMA_3` (`log_responsaveldel`),
  KEY `IDX_PROGRAMA_4` (`usprg_iduser`),
  KEY `IDX_PROGRAMA_5` (`usprg_prg`),
  CONSTRAINT `usuario_programa_ibfk_1` FOREIGN KEY (`log_responsavelinc`) REFERENCES `m_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `usuario_programa_ibfk_2` FOREIGN KEY (`log_responsavelalt`) REFERENCES `m_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `usuario_programa_ibfk_3` FOREIGN KEY (`log_responsaveldel`) REFERENCES `m_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `usuario_programa_ibfk_4` FOREIGN KEY (`usprg_iduser`) REFERENCES `m_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `usuario_programa_ibfk_5` FOREIGN KEY (`usprg_prg`) REFERENCES `programa` (`prg_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=872 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario_programa`
--

LOCK TABLES `usuario_programa` WRITE;
/*!40000 ALTER TABLE `usuario_programa` DISABLE KEYS */;
INSERT INTO `usuario_programa` VALUES (662,42,122,'ADM_PROGRAMA','S',2,'2019-08-27 15:41:00',NULL,NULL,NULL,NULL),(822,42,112,'ADM_PROGRAMA','S',2,'2019-08-29 17:04:27',NULL,NULL,NULL,NULL),(842,102,132,'ANALISTA_PROJETO','S',122,'2019-08-29 17:06:37',NULL,NULL,NULL,NULL),(852,92,132,'ACESSOR_COMUNICACAO','S',122,'2019-08-29 17:06:37',NULL,NULL,NULL,NULL),(862,122,132,'ADM_PROGRAMA','S',122,'2019-08-29 17:07:09',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `usuario_programa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario_projeto`
--

DROP TABLE IF EXISTS `usuario_projeto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `usuario_projeto` (
  `usp_id` int(11) NOT NULL AUTO_INCREMENT,
  `usp_iduser` int(11) NOT NULL,
  `usp_proj` int(11) NOT NULL,
  `usp_tipo` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `usp_ativo` char(1) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'S',
  `log_responsavelinc` int(11) NOT NULL,
  `log_dtinc` datetime NOT NULL,
  `log_responsavelalt` int(11) DEFAULT NULL,
  `log_dtalt` datetime DEFAULT NULL,
  `log_responsaveldel` int(11) DEFAULT NULL,
  `log_dtdel` datetime DEFAULT NULL,
  PRIMARY KEY (`usp_id`),
  KEY `IDX_PROGRAMA_1` (`log_responsavelinc`),
  KEY `IDX_PROGRAMA_2` (`log_responsavelalt`),
  KEY `IDX_PROGRAMA_3` (`log_responsaveldel`),
  KEY `IDX_PROGRAMA_4` (`usp_iduser`),
  KEY `IDX_PROGRAMA_5` (`usp_proj`),
  CONSTRAINT `usuario_projeto_ibfk_1` FOREIGN KEY (`log_responsavelinc`) REFERENCES `m_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `usuario_projeto_ibfk_2` FOREIGN KEY (`log_responsavelalt`) REFERENCES `m_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `usuario_projeto_ibfk_3` FOREIGN KEY (`log_responsaveldel`) REFERENCES `m_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `usuario_projeto_ibfk_4` FOREIGN KEY (`usp_iduser`) REFERENCES `m_user` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `usuario_projeto_ibfk_5` FOREIGN KEY (`usp_proj`) REFERENCES `projeto` (`prj_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=492 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario_projeto`
--

LOCK TABLES `usuario_projeto` WRITE;
/*!40000 ALTER TABLE `usuario_projeto` DISABLE KEYS */;
INSERT INTO `usuario_projeto` VALUES (442,52,62,'GTT_DIRECAO','S',2,'2019-08-29 17:04:27',NULL,NULL,NULL,NULL),(452,72,102,'ADM_PROJETO','S',122,'2019-08-29 17:07:09',NULL,NULL,NULL,NULL),(462,82,102,'GTT_DIRECAO','S',122,'2019-08-29 17:07:09',NULL,NULL,NULL,NULL),(472,62,102,'GTT_DIRECAO','S',122,'2019-08-29 17:07:09',NULL,NULL,NULL,NULL),(482,102,102,'GTT_DIRECAO','S',122,'2019-08-29 17:07:09',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `usuario_projeto` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-08-29 21:55:49
