# DROP TABLE IF EXISTS `users`;
#
# CREATE TABLE `users` (
#                             `id` bigint NOT NULL AUTO_INCREMENT primary key ,
#                             `first_name` varchar(45) DEFAULT NULL,
#                             `last_name` varchar(45) DEFAULT NULL,
#                             `email` varchar(45) DEFAULT NULL,`password` varchar(255) not null
# ) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=latin1;

--
-- Data for table `employee`
--

# INSERT INTO `user` VALUES
# (1,'Leslie','Andrews','leslie@luv2code.com','$2a$10$yTnrThU8bAirB2CIt7lFwekVcD.qNz5gWsGJfz9b26IwUfcHNTl5e'),
# (2,'Emma','Baumgarten','emma@luv2code.com','$2a$10$yTnrThU8bAirB2CIt7lFwekVcD.qNz5gWsGJfz9b26IwUfcHNTl5e'),
# (3,'Avani','Gupta','avani@luv2code.com','$2a$10$yTnrThU8bAirB2CIt7lFwekVcD.qNz5gWsGJfz9b26IwUfcHNTl5e'),
# (4,'Yuri','Petrov','yuri@luv2code.com','$2a$10$yTnrThU8bAirB2CIt7lFwekVcD.qNz5gWsGJfz9b26IwUfcHNTl5e'),
# (5,'Juan','Vega','juan@luv2code.com','$2a$10$yTnrThU8bAirB2CIt7lFwekVcD.qNz5gWsGJfz9b26IwUfcHNTl5e');
# insert into role values (1,'ROLE_ADMIN');
# insert into role values (2,'ROLE_USER');


insert into user_role values (1,1);
insert into user_role values (1,2);
insert into user_role values (2,1);
insert into user_role values (3,2);
insert into user_role values (4,1);
insert into user_role values (5,1);
insert into user_role values (5,2);


