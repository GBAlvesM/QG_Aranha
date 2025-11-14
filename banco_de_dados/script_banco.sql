CREATE DATABASE central_aranha;
USE central_aranha;

CREATE TABLE usuario (
id INT PRIMARY KEY AUTO_INCREMENT,
nome VARCHAR(75) NOT NULL,
email VARCHAR(75) NOT NULL UNIQUE,
senha VARCHAR(50) NOT NULL,
preferencia VARCHAR(75)
);

CREATE TABLE quiz (
id INT PRIMARY KEY AUTO_INCREMENT,
nomeQuiz VARCHAR(75)
);

CREATE TABLE jogoQuiz (
id_usuario INT,
id_quiz INT,
PRIMARY KEY (id_usuario, id_quiz),
FOREIGN KEY (id_usuario) REFERENCES usuario (id),
FOREIGN KEY (id_quiz) REFERENCES quiz(id),
acertos INT,
erros INT 
);


