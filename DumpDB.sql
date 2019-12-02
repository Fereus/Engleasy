CREATE DATABASE `engleasy` /*!40100 DEFAULT CHARACTER SET utf8 */;

 SET character_set_client = utf8mb4 ;
CREATE TABLE `cad_user` (
  `usr_id` int(11) NOT NULL AUTO_INCREMENT,
  `usr_username` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `usr_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `usr_password` varchar(240) COLLATE utf8_unicode_ci NOT NULL,
  
  PRIMARY KEY (`usr_id`)
  
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


 SET character_set_client = utf8mb4 ;
CREATE TABLE `pontos` (
  `pt_id` int(11) NOT NULL AUTO_INCREMENT,
  `pt_usrId` int(11) DEFAULT NULL,
  `pt_pontuacao` int(11) DEFAULT NULL,
 
  PRIMARY KEY (`pt_id`),
  KEY `PONTOS_1` (`pt_usrId`),
 
  CONSTRAINT `pontos_fk` FOREIGN KEY (`pt_usrId`) REFERENCES `cad_user` (`usr_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


 SET character_set_client = utf8mb4 ;
CREATE TABLE `tipo_conquista` (

  `tcq_id` int(11) NOT NULL AUTO_INCREMENT,
  
`tcq_tipo_conquista` varchar(240) COLLATE utf8_unicode_ci DEFAULT NULL,
 
  PRIMARY KEY (`tcq_id`)
 
  

) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


 CREATE TABLE `conquistas` (

  `cq_id` int(11) NOT NULL AUTO_INCREMENT,

  `cq_usrId` int(11) DEFAULT NULL,

  `cq_idConquista` int(11) DEFAULT NULL,

  PRIMARY KEY (`cq_id`),

  KEY `CONQUISTAS_1` (`cq_usrId`),
  KEY `CONQUISTAS_2` (`cq_idConquista`),

  CONSTRAINT `conquista1_fk` FOREIGN KEY (`cq_usrId`) REFERENCES `cad_user` (`usr_id`),

  CONSTRAINT `conquista2_fk` FOREIGN KEY (`cq_idConquista`) REFERENCES `tipo_conquista`
 (`tcq_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



 SET character_set_client = utf8mb4 ;
CREATE TABLE `registro_login` (
  `rl_id` int(11) NOT NULL AUTO_INCREMENT,
  `rl_usrId` int(11) DEFAULT NULL, 
  `rl_data_registro` datetime DEFAULT NULL,
 
  PRIMARY KEY (`rl_id`),
  KEY `REGISTROS_1` (`rl_usrId`),
 
  CONSTRAINT `registro_fk` FOREIGN KEY (`rl_usrId`) REFERENCES `cad_user` (`usr_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


CREATE TABLE `game_palavras` (
  `gp_id` int(11) NOT NULL AUTO_INCREMENT,
  `gp_palavra_ingles` varchar(240) COLLATE utf8_unicode_ci DEFAULT NULL,
   `gp_palavra_traducao` varchar(240) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`gp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


INSERT INTO `tipo_conquista`
(`tcq_tipo_conquista`)
VALUES

("Recruta"),

("Soldado"),

("Cabo"),

("Terceiro-Sargento"),

("Segundo-Sargento"),

("Primeiro-Sargento"),

("Subtenente"),

("Aspirante"),

("Segundo-Tenente"),

("Primeiro-Tenente"),

("Capitão"),

("Major"),

("Tenente-Coronel"),

("Coronel"),

("General de Brigada"),

("General de Divisão"),

("General de Divisão"),

("Marechal");

INSERT INTO `game_palavras`
(`gp_palavra_ingles`,`gp_palavra_traducao`)
VALUES

("love","amor"),
("gun","arma"),
("dog","cachorro"),
("cat","gato"),
("rain","chuva"),
("book","livro"),
("orange","laranja"),
("apple","maça"),
("computer","computador"),
("lion","leao"),
("elephant","elefante"),
("monkey","macaco"),
("window","janela"),
("table","mesa"),
("keyboard","teclado"),
("browser","navegador"),
("shadow","sombra"),
("egg","ovo"),
("Cell phone","Celular"),
("crap","armadilha"),
("chair","cadeira"),
("card","cartao"),
("wallet","carteira"),
("schoolbag","mochila"),
("pea","ervilha"),
("corn","milho"),
("hat","chapeu"),
("pen","caneta"),
("control","controle"),
("blackboard","lousa"),
("sneakers","tenis"),
("snake","cobra"),
("shirt","camisa"),
("cants","calça"),
("sidewalk","recruta");

ferreira.jose@ifsp.edu.br

