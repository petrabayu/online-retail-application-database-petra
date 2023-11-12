#
# TABLE STRUCTURE FOR: buyer
#

DROP TABLE IF EXISTS `buyer`;

CREATE TABLE `buyer` (
  `id` int(9) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `phone_number` varchar(15) NOT NULL,
  `email` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE  (`phone_number`,`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

#
# TABLE STRUCTURE FOR: product
#

DROP TABLE IF EXISTS `product`;

CREATE TABLE `product` (
  `id` int(9) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `stock` int(9) unsigned NOT NULL,
  `price` int(15) unsigned NOT NULL,
  `ratings` int(5) unsigned NOT NULL,
  `category` varchar(255) NOT NULL,
  `description` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

#
# TABLE STRUCTURE FOR: seller
#

DROP TABLE IF EXISTS `seller`;

CREATE TABLE `seller` (
  `id` int(9) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `phone_number` varchar(15) NOT NULL,
  `email` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE  (`phone_number`,`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

#
# TABLE STRUCTURE FOR: catalog
#

DROP TABLE IF EXISTS `catalog`;

CREATE TABLE `catalog` (
  `id` int(9) unsigned NOT NULL AUTO_INCREMENT,
  `seller_id` int(9) unsigned NOT NULL,
  `product_id` int(9) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`seller_id`) REFERENCES seller(id),
  FOREIGN KEY (`product_id`) REFERENCES product(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

#
# TABLE STRUCTURE FOR: transaction
#

DROP TABLE IF EXISTS `transaction`;

CREATE TABLE `transaction` (
  `id` int(9) unsigned NOT NULL AUTO_INCREMENT,
  `transaction_date` date NOT NULL,
  `buyer_id` int(9) unsigned NOT NULL,
  `product_id` int(9) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`buyer_id`) REFERENCES buyer(id),
  FOREIGN KEY (`product_id`) REFERENCES product(id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

