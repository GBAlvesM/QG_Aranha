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
id INT AUTO_INCREMENT,
id_usuario INT,
id_quiz INT,
PRIMARY KEY (id, id_usuario, id_quiz),
FOREIGN KEY (id_usuario) REFERENCES usuario (id),
FOREIGN KEY (id_quiz) REFERENCES quiz(id),
pontuacao INT
);

INSERT INTO quiz VALUES 
	(1, 'Quiz Central Aranha');
    
SELECT * FROM jogoQuiz;

SELECT * FROM usuario;







