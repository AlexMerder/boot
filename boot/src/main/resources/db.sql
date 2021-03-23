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

INSERT INTO `user` VALUES
(1,'leslie@luv2code.com','Andrews','Leslie','$2a$10$yTnrThU8bAirB2CIt7lFwekVcD.qNz5gWsGJfz9b26IwUfcHNTl5e'),
(2,'emma@luv2code.com','Baumgarten','Emma','$2a$10$yTnrThU8bAirB2CIt7lFwekVcD.qNz5gWsGJfz9b26IwUfcHNTl5e'),
(3,'avani@luv2code.com','Gupta','Avani','$2a$10$yTnrThU8bAirB2CIt7lFwekVcD.qNz5gWsGJfz9b26IwUfcHNTl5e'),
(4,'yuri@luv2code.com','Petrov','Yuri','$2a$10$yTnrThU8bAirB2CIt7lFwekVcD.qNz5gWsGJfz9b26IwUfcHNTl5e'),
(5,'juan@luv2code.com','Vega','Juan','$2a$10$yTnrThU8bAirB2CIt7lFwekVcD.qNz5gWsGJfz9b26IwUfcHNTl5e');
insert into role values (1,'ROLE_ADMIN');
insert into role values (2,'ROLE_USER');



insert into user_role values (1,1);
insert into user_role values (1,2);
insert into user_role values (2,1);
insert into user_role values (3,2);
insert into user_role values (4,1);
insert into user_role values (5,1);
insert into user_role values (5,2);


