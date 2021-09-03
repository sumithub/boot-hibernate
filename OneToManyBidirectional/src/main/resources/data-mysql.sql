CREATE DATABASE  IF NOT EXISTS `bookstoredb`;
USE `bookstoredb`;

DROP TABLE IF EXISTS `book`;
CREATE TABLE `book` (
                        `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
                        `isbn` varchar(255) DEFAULT NULL,
                        `title` varchar(255) DEFAULT NULL,
                        `author_id` int(11) unsigned DEFAULT NULL,
                        PRIMARY KEY (`id`),
                        KEY `fk_book_authorid_idx` (`author_id`),
                        CONSTRAINT `fk_book_authorid` FOREIGN KEY (`author_id`) REFERENCES `author` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `author`;
CREATE TABLE `author` (
                          `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
                          `name` varchar(255) NOT NULL,
                          `genre` varchar(255) NOT NULL,
                          `age` int NOT NULL,
                          PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- insert authors
INSERT INTO `author` (`age`, `name`, `genre`, `id`) VALUES (23, "Mark Janel", "Anthology", 1);
INSERT INTO `author` (`age`, `name`, `genre`, `id`) VALUES (43, "Olivia Goy", "Horror", 2);
INSERT INTO `author` (`age`, `name`, `genre`, `id`) VALUES (51, "Quartis Young", "Anthology", 3);
INSERT INTO `author` (`age`, `name`, `genre`, `id`) VALUES (34, "Joana Nimar", "History", 4);

-- insert books
INSERT INTO `book` (`isbn`, `title`, `author_id`, `id`) VALUES ("001-JN", "A History of Ancient Prague", 4, 1);
INSERT INTO `book` (`isbn`, `title`, `author_id`, `id`) VALUES ("002-JN", "A People's History", 4, 2);
INSERT INTO `book` (`isbn`, `title`, `author_id`, `id`) VALUES ("001-MJ", "The Beatles Anthology", 1, 3);
INSERT INTO `book` (`isbn`, `title`, `author_id`, `id`) VALUES ("001-OG", "Carrie", 2, 4);
