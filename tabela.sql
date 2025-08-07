CREATE DATABASE plataforma_musica
default character set utf8mb4
default collate utf8mb4_general_ci;

CREATE TABLE ARTISTAS (
    id_artista INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    biografia TEXT,
    pais VARCHAR(50)
);

CREATE TABLE ALBUNS (
    id_album INT PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR(100) NOT NULL,
    ano_lancamento INT,
    id_artista INT,
    FOREIGN KEY (id_artista) REFERENCES ARTISTAS(id_artista)
);

CREATE TABLE MUSICAS (
    id_musica INT PRIMARY KEY AUTO_INCREMENT,
    titulo VARCHAR(100) NOT NULL,
    duracao TIME,
    id_album INT,
    FOREIGN KEY (id_album) REFERENCES ALBUNS(id_album)
);