CREATE DATABASE IF NOT EXISTS calculadora;

USE calculadora;

CREATE USER 'calculadora'@'localhost' IDENTIFIED BY 'calculadora';
GRANT ALL PRIVILEGES ON * . * TO 'calculadora'@'localhost';
FLUSH PRIVILEGES;

CREATE TABLE IF NOT EXISTS usuario (
  ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT, 
  Nome VARCHAR(100) NOT NULL);

CREATE TABLE IF NOT EXISTS historico (
  ID INT NOT NULL PRIMARY KEY AUTO_INCREMENT, 
  UsuarioID INT NOT NULL,
  Formula VARCHAR(300) NOT NULL,
  Resultado FLOAT NOT NULL,
  CONSTRAINT `fk_historico_usuario`
    FOREIGN KEY (UsuarioID) REFERENCES usuario(ID)
    ON DELETE CASCADE
    ON UPDATE RESTRICT);