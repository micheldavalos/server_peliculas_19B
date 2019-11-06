CREATE DATABASE personajes;
USE personajes;

CREATE TABLE movie(
    id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    title VARCHAR(100) NOT NULL,
    director VARCHAR(50),
    distributor VARCHAR(50),
    rate TINYINT UNSIGNED,
    year SMALLINT UNSIGNED,
    img VARCHAR(1000)
);

CREATE TABLE actor(
    id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    lastname VARCHAR(100),
    picture VARCHAR(1000) NOT NULL
);

CREATE TABLE character_m(
    id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    avatar VARCHAR(1000) NOT NULL,
    id_movie INT UNSIGNED,
    id_actor INT UNSIGNED,
    FOREIGN KEY (id_movie) REFERENCES movie(id),
    FOREIGN KEY (id_actor) REFERENCES actor(id)
);

INSERT INTO movie(title, director, distributor, rate, year, img)
VALUES('Matrix', 'Lana Wachowski, Lilly Wachowski', 'Warner Bros', 4, 1999, 
'https://boygeniusreport.files.wordpress.com/2017/10/the-matrix.jpg');


INSERT INTO movie(title, director, distributor, rate, year, img)
VALUES('Avengers: Infinity War', 'Anthony Russo, Joe Russo', 'Walt Disney Studios Motion Pictures', 4, 2018, 
'https://i2.wp.com/easysmartech.com/wp-content/uploads/2018/05/9198FD1D-1F5E-48F2-B08C-1E4021ACC29A.jpeg');
