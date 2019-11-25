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
CREATE TABLE `conquistas` (
  `cq_id` int(11) NOT NULL AUTO_INCREMENT,
  `cq_usrId` int(11) DEFAULT NULL,
  `cq_conquista` varchar(240) COLLATE utf8_unicode_ci,
 
  PRIMARY KEY (`cq_id`),
  KEY `CONQUISTAS_1` (`cq_usrId`),
 
  CONSTRAINT `conquista_fk` FOREIGN KEY (`cq_usrId`) REFERENCES `cad_user` (`usr_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



 SET character_set_client = utf8mb4 ;
CREATE TABLE `registro_login` (
  `rl_id` int(11) NOT NULL AUTO_INCREMENT,
  `rl_usrId` int(11) DEFAULT NULL, 
  `rl_data_registro` datetime DEFAULT NULL,
 
  PRIMARY KEY (`rl_id`),
  KEY `REGISTROS_1` (`rl_usrId`),
 
  CONSTRAINT `registro_fk` FOREIGN KEY (`rl_usrId`) REFERENCES `cad_user` (`usr_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;