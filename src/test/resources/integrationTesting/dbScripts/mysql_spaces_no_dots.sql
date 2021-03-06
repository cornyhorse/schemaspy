CREATE DATABASE `TEST 1`;

CREATE TABLE `TEST 1`.`LINKS 1` (
  id INTEGER AUTO_INCREMENT,
  url VARCHAR(16) NOT NULL,
  PRIMARY KEY (id),
  UNIQUE url_unique (url)
) engine=InnoDB;

CREATE TABLE `TEST 1`.`TABLE 1` (
  id INTEGER AUTO_INCREMENT,
  name VARCHAR(16) NOT NULL,
  `link id` INTEGER NOT NULL,
  PRIMARY KEY (id),
  UNIQUE name_link_unique (name, `link id`),
  CONSTRAINT `link fk` FOREIGN KEY (`link id`) REFERENCES `TEST 1`.`LINKS 1`(id)
) engine=InnoDB;

GRANT SELECT on `TEST 1`.* to test@`%`;
FLUSH PRIVILEGES;