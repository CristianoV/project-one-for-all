DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

CREATE TABLE SpotifyClone.plano(
    plano_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    plano VARCHAR(50) NOT NULL,
    valor_plano INT NOT NULL
) engine = InnoDB;

CREATE TABLE SpotifyClone.usuario(
    usuario_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    usuario VARCHAR(50) NOT NULL,
    idade INT NOT NULL,
    plano_id INT NOT NULL,
    data_assinatura DATE NOT NULL,
    
    FOREIGN KEY (plano_id) REFERENCES SpotifyClone.plano (plano_id)
) engine = InnoDB;

CREATE TABLE SpotifyClone.artista(
    artista_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    artista VARCHAR(50) NOT NULL
) engine = InnoDB;

CREATE TABLE SpotifyClone.seguindo_artistas(
    usuario_id INT NOT NULL,
    seguindo_artistas INT NOT NULL,
    
    FOREIGN KEY (usuario_id) REFERENCES SpotifyClone.usuario (usuario_id),
    FOREIGN KEY (seguindo_artistas) REFERENCES SpotifyClone.artista (artista_id)
) engine = InnoDB;

CREATE TABLE SpotifyClone.album(
    album_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    album VARCHAR(50) NOT NULL,
    ano_lancamento YEAR NOT NULL,
    artista_id INT NOT NULL,
    
    FOREIGN KEY (artista_id) REFERENCES SpotifyClone.artista (artista_id)
) engine = InnoDB;

CREATE TABLE SpotifyClone.cancoes(
    cancoes_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    cancoes VARCHAR(100) NOT NULL,
    duracao_segundos INT NOT NULL,
    album_id INT NOT NULL,
    
    FOREIGN KEY (album_id) REFERENCES SpotifyClone.album (album_id)
) engine = InnoDB;

CREATE TABLE SpotifyClone.historico(
    cancoes_id INT NOT NULL,
    data_reproducao DATETIME NOT NULL,
    usuario_id INT NOT NULL,
    
	FOREIGN KEY (cancoes_id) REFERENCES SpotifyClone.cancoes (cancoes_id),
    FOREIGN KEY (usuario_id) REFERENCES SpotifyClone.usuario (usuario_id)
) engine = InnoDB;

INSERT INTO SpotifyClone.tabela1 (coluna1, coluna2)
VALUES
  ('exemplo de dados 1', 'exemplo de dados A'),
  ('exemplo de dados 2', 'exemplo de dados B'),
  ('exemplo de dados 3', 'exemplo de dados C');

INSERT INTO SpotifyClone.tabela2 (coluna1, coluna2)
VALUES
  ('exemplo de dados 1', 'exemplo de dados X'),
  ('exemplo de dados 2', 'exemplo de dados Y');