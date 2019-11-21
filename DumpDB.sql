 SET character_set_client = utf8mb4 ;
CREATE TABLE `cad_user` (
  `usr_id` int(11) NOT NULL AUTO_INCREMENT,
  `usr_username` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `usr_email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `usr_password` varchar(240) COLLATE utf8_unicode_ci NOT NULL,
  
  PRIMARY KEY (`usr_id`)
  
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


