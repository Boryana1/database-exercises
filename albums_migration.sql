create database if not exists codeup_test_db;
USE codeup_test_db;

CREATE TABLE IF NOT EXISTS albums (
                                      id INT UNSIGNED   UNIQUE AUTO_INCREMENT,
                                      artist VARCHAR(255)  NOT NULL ,
                                      name VARCHAR(255) NOT NULL ,
                                      release_date INT UNSIGNED NOT NULL,
                                      genre VARCHAR(255) NOT NULL ,
                                      sales DECIMAL UNSIGNED NOT NULL,
                                      PRIMARY KEY (id)
);
ALTER TABLE albums
    RENAME COLUMN name TO album_name;

DESCRIBE albums;