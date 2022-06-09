USE codeup_test_db;
CREATE TABLE IF NOT EXISTS albums (
                                      id INT UNSIGNED NOT NULL AUTO_INCREMENT,
                                      artist VARCHAR(255)  DEFAULT 'NONE',
                                      name VARCHAR(255) DEFAULT 'Anonymous',
                                      release_date INT NOT NULL,
                                      genre VARCHAR(255),
                                      sales float,
                                      PRIMARY KEY (id)
);

DESCRIBE albums;