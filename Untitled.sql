CREATE DATABASE escola_t1;
USE escola;

CREATE TABLE Aluno (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(60) NOT NULL
);

CREATE TABLE Professor (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(60) NOT NULL
);

CREATE TABLE Disciplina (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(60) NOT NULL
);

CREATE TABLE Turma (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(40) NOT NULL
);

CREATE TABLE TurmaDisciplina (
    id INT PRIMARY KEY AUTO_INCREMENT,
    turma_id INT NOT NULL,
    disciplina_id INT NOT NULL,
    professor_id INT NOT NULL,
    FOREIGN KEY (turma_id) REFERENCES Turma(id),
    FOREIGN KEY (disciplina_id) REFERENCES Disciplina(id),
    FOREIGN KEY (professor_id) REFERENCES Professor(id)
);

CREATE TABLE Matricula (
    id INT PRIMARY KEY AUTO_INCREMENT,
    aluno_id INT NOT NULL,
    turma_id INT NOT NULL,
    FOREIGN KEY (aluno_id) REFERENCES Aluno(id),
    FOREIGN KEY (turma_id) REFERENCES Turma(id),
    UNIQUE (aluno_id, turma_id)
);

CREATE TABLE Avaliacao (
    id INT PRIMARY KEY AUTO_INCREMENT,
    turma_disciplina_id INT NOT NULL,
    descricao VARCHAR(80) NOT NULL,
    FOREIGN KEY (turma_disciplina_id) REFERENCES TurmaDisciplina(id)
);

CREATE TABLE Nota (
    id INT PRIMARY KEY AUTO_INCREMENT,
    avaliacao_id INT NOT NULL,
    aluno_id INT NOT NULL,
    nota DECIMAL(4,1) NOT NULL,
    FOREIGN KEY (avaliacao_id) REFERENCES Avaliacao(id),
    FOREIGN KEY (aluno_id) REFERENCES Aluno(id)
);

CREATE TABLE Presenca (
    id INT PRIMARY KEY AUTO_INCREMENT,
    turma_disciplina_id INT NOT NULL,
    aluno_id INT NOT NULL,
    data DATE NOT NULL,
    presente BOOLEAN NOT NULL,
    FOREIGN KEY (turma_disciplina_id) REFERENCES TurmaDisciplina(id),
    FOREIGN KEY (aluno_id) REFERENCES Aluno(id)
);

INSERT INTO Aluno (nome) VALUES
('Aluno 1');
INSERT INTO Aluno (nome) VALUES
('Aluno 2');
INSERT INTO Aluno (nome) VALUES
('Aluno 3');
INSERT INTO Aluno (nome) VALUES
('Aluno 4');
INSERT INTO Aluno (nome) VALUES
('Aluno 5');
INSERT INTO Aluno (nome) VALUES
('Aluno 6');
INSERT INTO Aluno (nome) VALUES
('Aluno 7');
INSERT INTO Aluno (nome) VALUES
('Aluno 8');
INSERT INTO Aluno (nome) VALUES
('Aluno 9');
INSERT INTO Aluno (nome) VALUES
('Aluno 10');
INSERT INTO Aluno (nome) VALUES
('Aluno 11');
INSERT INTO Aluno (nome) VALUES
('Aluno 12');
INSERT INTO Aluno (nome) VALUES
('Aluno 13');
INSERT INTO Aluno (nome) VALUES
('Aluno 14');
INSERT INTO Aluno (nome) VALUES
('Aluno 15');
INSERT INTO Aluno (nome) VALUES
('Aluno 16');
INSERT INTO Aluno (nome) VALUES
('Aluno 17');
INSERT INTO Aluno (nome) VALUES
('Aluno 18');
INSERT INTO Aluno (nome) VALUES
('Aluno 19');
INSERT INTO Aluno (nome) VALUES
('Aluno 20');
INSERT INTO Aluno (nome) VALUES
('Aluno 21');
INSERT INTO Aluno (nome) VALUES
('Aluno 22');
INSERT INTO Aluno (nome) VALUES
('Aluno 23');
INSERT INTO Aluno (nome) VALUES
('Aluno 24');
INSERT INTO Aluno (nome) VALUES
('Aluno 25');
INSERT INTO Aluno (nome) VALUES
('Aluno 26');
INSERT INTO Aluno (nome) VALUES
('Aluno 27');
INSERT INTO Aluno (nome) VALUES
('Aluno 28');
INSERT INTO Aluno (nome) VALUES
('Aluno 29');
INSERT INTO Aluno (nome) VALUES
('Aluno 30');
INSERT INTO Aluno (nome) VALUES
('Aluno 31');
INSERT INTO Aluno (nome) VALUES
('Aluno 32');
INSERT INTO Aluno (nome) VALUES
('Aluno 33');
INSERT INTO Aluno (nome) VALUES
('Aluno 34');
INSERT INTO Aluno (nome) VALUES
('Aluno 35');
INSERT INTO Aluno (nome) VALUES
('Aluno 36');
INSERT INTO Aluno (nome) VALUES
('Aluno 37');
INSERT INTO Aluno (nome) VALUES
('Aluno 38');
INSERT INTO Aluno (nome) VALUES
('Aluno 39');
INSERT INTO Aluno (nome) VALUES
('Aluno 40');
INSERT INTO Aluno (nome) VALUES
('Aluno 41');
INSERT INTO Aluno (nome) VALUES
('Aluno 42');
INSERT INTO Aluno (nome) VALUES
('Aluno 43');
INSERT INTO Aluno (nome) VALUES
('Aluno 44');
INSERT INTO Aluno (nome) VALUES
('Aluno 45');
INSERT INTO Aluno (nome) VALUES
('Aluno 46');
INSERT INTO Aluno (nome) VALUES
('Aluno 47');
INSERT INTO Aluno (nome) VALUES
('Aluno 48');
INSERT INTO Aluno (nome) VALUES
('Aluno 49');
INSERT INTO Aluno (nome) VALUES
('Aluno 50');
INSERT INTO Aluno (nome) VALUES
('Aluno 51');
INSERT INTO Aluno (nome) VALUES
('Aluno 52');
INSERT INTO Aluno (nome) VALUES
('Aluno 53');
INSERT INTO Aluno (nome) VALUES
('Aluno 54');
INSERT INTO Aluno (nome) VALUES
('Aluno 55');
INSERT INTO Aluno (nome) VALUES
('Aluno 56');
INSERT INTO Aluno (nome) VALUES
('Aluno 57');
INSERT INTO Aluno (nome) VALUES
('Aluno 58');
INSERT INTO Aluno (nome) VALUES
('Aluno 59');
INSERT INTO Aluno (nome) VALUES
('Aluno 60');


INSERT INTO Professor (nome) VALUES
('Prof. João');
INSERT INTO Professor (nome) VALUES
('Prof. Maria');
INSERT INTO Professor (nome) VALUES
('Prof. Paulo');
INSERT INTO Professor (nome) VALUES
('Prof. Carla');
INSERT INTO Professor (nome) VALUES
('Prof. André');
INSERT INTO Professor (nome) VALUES
('Prof. Luciana');
INSERT INTO Professor (nome) VALUES
('Prof. Pedro');
INSERT INTO Professor (nome) VALUES
('Prof. Fernanda');
INSERT INTO Professor (nome) VALUES
('Prof. Marcos');
INSERT INTO Professor (nome) VALUES
('Prof. Juliana');
INSERT INTO Professor (nome) VALUES
('Prof. Felipe');
INSERT INTO Professor (nome) VALUES
('Prof. Aline');


INSERT INTO Disciplina (nome) VALUES
('Matemática');
INSERT INTO Disciplina (nome) VALUES
('Português');
INSERT INTO Disciplina (nome) VALUES
('Programação');
INSERT INTO Disciplina (nome) VALUES
('Eletrônica');
INSERT INTO Disciplina (nome) VALUES
('Física');


INSERT INTO Turma (nome) VALUES
('Turma A');
INSERT INTO Turma (nome) VALUES
('Turma B');
INSERT INTO Turma (nome) VALUES
('Turma C');
INSERT INTO Turma (nome) VALUES
('Turma D');
INSERT INTO Turma (nome) VALUES
('Turma E');
INSERT INTO Turma (nome) VALUES
('Turma F');


-- Turma A
INSERT INTO TurmaDisciplina (turma_id, disciplina_id, professor_id) VALUES
(1,1,1);
INSERT INTO TurmaDisciplina (turma_id, disciplina_id, professor_id) VALUES
(1,2,2);
INSERT INTO TurmaDisciplina (turma_id, disciplina_id, professor_id) VALUES
(1,3,3);
INSERT INTO TurmaDisciplina (turma_id, disciplina_id, professor_id) VALUES
(1,4,4);
INSERT INTO TurmaDisciplina (turma_id, disciplina_id, professor_id) VALUES
(1,5,1);

-- Turma B
INSERT INTO TurmaDisciplina (turma_id, disciplina_id, professor_id) VALUES
(2,1,2);
INSERT INTO TurmaDisciplina (turma_id, disciplina_id, professor_id) VALUES
(2,2,3);
INSERT INTO TurmaDisciplina (turma_id, disciplina_id, professor_id) VALUES
(2,3,4);
INSERT INTO TurmaDisciplina (turma_id, disciplina_id, professor_id) VALUES
(2,4,5);
INSERT INTO TurmaDisciplina (turma_id, disciplina_id, professor_id) VALUES
(2,5,2);

-- Turma C
INSERT INTO TurmaDisciplina (turma_id, disciplina_id, professor_id) VALUES
(3,1,6);
INSERT INTO TurmaDisciplina (turma_id, disciplina_id, professor_id) VALUES
(3,2,7);
INSERT INTO TurmaDisciplina (turma_id, disciplina_id, professor_id) VALUES
(3,3,8);
INSERT INTO TurmaDisciplina (turma_id, disciplina_id, professor_id) VALUES
(3,4,9);
INSERT INTO TurmaDisciplina (turma_id, disciplina_id, professor_id) VALUES
(3,5,6);

-- Turma D
INSERT INTO TurmaDisciplina (turma_id, disciplina_id, professor_id) VALUES
(4,1,10);
INSERT INTO TurmaDisciplina (turma_id, disciplina_id, professor_id) VALUES
(4,2,11);
INSERT INTO TurmaDisciplina (turma_id, disciplina_id, professor_id) VALUES
(4,3,12);
INSERT INTO TurmaDisciplina (turma_id, disciplina_id, professor_id) VALUES
(4,4,1);
INSERT INTO TurmaDisciplina (turma_id, disciplina_id, professor_id) VALUES
(4,5,10);

-- Turma E
INSERT INTO TurmaDisciplina (turma_id, disciplina_id, professor_id) VALUES
(5,1,2);
INSERT INTO TurmaDisciplina (turma_id, disciplina_id, professor_id) VALUES
(5,2,4);
INSERT INTO TurmaDisciplina (turma_id, disciplina_id, professor_id) VALUES
(5,3,6);
INSERT INTO TurmaDisciplina (turma_id, disciplina_id, professor_id) VALUES
(5,4,8);
INSERT INTO TurmaDisciplina (turma_id, disciplina_id, professor_id) VALUES
(5,5,2);

-- Turma F
INSERT INTO TurmaDisciplina (turma_id, disciplina_id, professor_id) VALUES
(6,1,3);
INSERT INTO TurmaDisciplina (turma_id, disciplina_id, professor_id) VALUES
(6,2,5);
INSERT INTO TurmaDisciplina (turma_id, disciplina_id, professor_id) VALUES
(6,3,7);
INSERT INTO TurmaDisciplina (turma_id, disciplina_id, professor_id) VALUES
(6,4,9);
INSERT INTO TurmaDisciplina (turma_id, disciplina_id, professor_id) VALUES
(6,5,3);


-- Turma A
INSERT INTO Matricula (aluno_id, turma_id) VALUES (1,1);
INSERT INTO Matricula (aluno_id, turma_id) VALUES (2,1);
INSERT INTO Matricula (aluno_id, turma_id) VALUES (3,1);
INSERT INTO Matricula (aluno_id, turma_id) VALUES (4,1);
INSERT INTO Matricula (aluno_id, turma_id) VALUES (5,1);
INSERT INTO Matricula (aluno_id, turma_id) VALUES (6,1);
INSERT INTO Matricula (aluno_id, turma_id) VALUES (7,1);
INSERT INTO Matricula (aluno_id, turma_id) VALUES (8,1);
INSERT INTO Matricula (aluno_id, turma_id) VALUES (9,1);
INSERT INTO Matricula (aluno_id, turma_id) VALUES (10,1);

-- Turma B
INSERT INTO Matricula (aluno_id, turma_id) VALUES (11,2);
INSERT INTO Matricula (aluno_id, turma_id) VALUES (12,2);
INSERT INTO Matricula (aluno_id, turma_id) VALUES (13,2);
INSERT INTO Matricula (aluno_id, turma_id) VALUES (14,2);
INSERT INTO Matricula (aluno_id, turma_id) VALUES (15,2);
INSERT INTO Matricula (aluno_id, turma_id) VALUES (16,2);
INSERT INTO Matricula (aluno_id, turma_id) VALUES (17,2);
INSERT INTO Matricula (aluno_id, turma_id) VALUES (18,2);
INSERT INTO Matricula (aluno_id, turma_id) VALUES (19,2);
INSERT INTO Matricula (aluno_id, turma_id) VALUES (20,2);

-- Turma C
INSERT INTO Matricula (aluno_id, turma_id) VALUES (21,3);
INSERT INTO Matricula (aluno_id, turma_id) VALUES (22,3);
INSERT INTO Matricula (aluno_id, turma_id) VALUES (23,3);
INSERT INTO Matricula (aluno_id, turma_id) VALUES (24,3);
INSERT INTO Matricula (aluno_id, turma_id) VALUES (25,3);
INSERT INTO Matricula (aluno_id, turma_id) VALUES (26,3);
INSERT INTO Matricula (aluno_id, turma_id) VALUES (27,3);
INSERT INTO Matricula (aluno_id, turma_id) VALUES (28,3);
INSERT INTO Matricula (aluno_id, turma_id) VALUES (29,3);
INSERT INTO Matricula (aluno_id, turma_id) VALUES (30,3);

-- Turma D
INSERT INTO Matricula (aluno_id, turma_id) VALUES (31,4);
INSERT INTO Matricula (aluno_id, turma_id) VALUES (32,4);
INSERT INTO Matricula (aluno_id, turma_id) VALUES (33,4);
INSERT INTO Matricula (aluno_id, turma_id) VALUES (34,4);
INSERT INTO Matricula (aluno_id, turma_id) VALUES (35,4);
INSERT INTO Matricula (aluno_id, turma_id) VALUES (36,4);
INSERT INTO Matricula (aluno_id, turma_id) VALUES (37,4);
INSERT INTO Matricula (aluno_id, turma_id) VALUES (38,4);
INSERT INTO Matricula (aluno_id, turma_id) VALUES (39,4);
INSERT INTO Matricula (aluno_id, turma_id) VALUES (40,4);

-- Turma E
INSERT INTO Matricula (aluno_id, turma_id) VALUES (41,5);
INSERT INTO Matricula (aluno_id, turma_id) VALUES (42,5);
INSERT INTO Matricula (aluno_id, turma_id) VALUES (43,5);
INSERT INTO Matricula (aluno_id, turma_id) VALUES (44,5);
INSERT INTO Matricula (aluno_id, turma_id) VALUES (45,5);
INSERT INTO Matricula (aluno_id, turma_id) VALUES (46,5);
INSERT INTO Matricula (aluno_id, turma_id) VALUES (47,5);
INSERT INTO Matricula (aluno_id, turma_id) VALUES (48,5);
INSERT INTO Matricula (aluno_id, turma_id) VALUES (49,5);
INSERT INTO Matricula (aluno_id, turma_id) VALUES (50,5);

-- Turma F
INSERT INTO Matricula (aluno_id, turma_id) VALUES (51,6);
INSERT INTO Matricula (aluno_id, turma_id) VALUES (52,6);
INSERT INTO Matricula (aluno_id, turma_id) VALUES (53,6);
INSERT INTO Matricula (aluno_id, turma_id) VALUES (54,6);
INSERT INTO Matricula (aluno_id, turma_id) VALUES (55,6);
INSERT INTO Matricula (aluno_id, turma_id) VALUES (56,6);
INSERT INTO Matricula (aluno_id, turma_id) VALUES (57,6);
INSERT INTO Matricula (aluno_id, turma_id) VALUES (58,6);
INSERT INTO Matricula (aluno_id, turma_id) VALUES (59,6);
INSERT INTO Matricula (aluno_id, turma_id) VALUES (60,6);


INSERT INTO Avaliacao (turma_disciplina_id, descricao) VALUES (1,'Prova 1');
INSERT INTO Avaliacao (turma_disciplina_id, descricao) VALUES (1,'Prova 2');
INSERT INTO Avaliacao (turma_disciplina_id, descricao) VALUES (1,'Prova 3');

INSERT INTO Avaliacao (turma_disciplina_id, descricao) VALUES (2,'Prova 1');
INSERT INTO Avaliacao (turma_disciplina_id, descricao) VALUES (2,'Prova 2');
INSERT INTO Avaliacao (turma_disciplina_id, descricao) VALUES (2,'Prova 3');

INSERT INTO Avaliacao (turma_disciplina_id, descricao) VALUES (3,'Prova 1');
INSERT INTO Avaliacao (turma_disciplina_id, descricao) VALUES (3,'Prova 2');
INSERT INTO Avaliacao (turma_disciplina_id, descricao) VALUES (3,'Prova 3');

INSERT INTO Avaliacao (turma_disciplina_id, descricao) VALUES (4,'Prova 1');
INSERT INTO Avaliacao (turma_disciplina_id, descricao) VALUES (4,'Prova 2');
INSERT INTO Avaliacao (turma_disciplina_id, descricao) VALUES (4,'Prova 3');

INSERT INTO Avaliacao (turma_disciplina_id, descricao) VALUES (5,'Prova 1');
INSERT INTO Avaliacao (turma_disciplina_id, descricao) VALUES (5,'Prova 2');
INSERT INTO Avaliacao (turma_disciplina_id, descricao) VALUES (5,'Prova 3');

INSERT INTO Avaliacao (turma_disciplina_id, descricao) VALUES (6,'Prova 1');
INSERT INTO Avaliacao (turma_disciplina_id, descricao) VALUES (6,'Prova 2');
INSERT INTO Avaliacao (turma_disciplina_id, descricao) VALUES (6,'Prova 3');

INSERT INTO Avaliacao (turma_disciplina_id, descricao) VALUES (7,'Prova 1');
INSERT INTO Avaliacao (turma_disciplina_id, descricao) VALUES (7,'Prova 2');
INSERT INTO Avaliacao (turma_disciplina_id, descricao) VALUES (7,'Prova 3');

INSERT INTO Avaliacao (turma_disciplina_id, descricao) VALUES (8,'Prova 1');
INSERT INTO Avaliacao (turma_disciplina_id, descricao) VALUES (8,'Prova 2');
INSERT INTO Avaliacao (turma_disciplina_id, descricao) VALUES (8,'Prova 3');

INSERT INTO Avaliacao (turma_disciplina_id, descricao) VALUES (9,'Prova 1');
INSERT INTO Avaliacao (turma_disciplina_id, descricao) VALUES (9,'Prova 2');
INSERT INTO Avaliacao (turma_disciplina_id, descricao) VALUES (9,'Prova 3');

INSERT INTO Avaliacao (turma_disciplina_id, descricao) VALUES (10,'Prova 1');
INSERT INTO Avaliacao (turma_disciplina_id, descricao) VALUES (10,'Prova 2');
INSERT INTO Avaliacao (turma_disciplina_id, descricao) VALUES (10,'Prova 3');

INSERT INTO Avaliacao (turma_disciplina_id, descricao) VALUES (11,'Prova 1');
INSERT INTO Avaliacao (turma_disciplina_id, descricao) VALUES (11,'Prova 2');
INSERT INTO Avaliacao (turma_disciplina_id, descricao) VALUES (11,'Prova 3');

INSERT INTO Avaliacao (turma_disciplina_id, descricao) VALUES (12,'Prova 1');
INSERT INTO Avaliacao (turma_disciplina_id, descricao) VALUES (12,'Prova 2');
INSERT INTO Avaliacao (turma_disciplina_id, descricao) VALUES (12,'Prova 3');

INSERT INTO Avaliacao (turma_disciplina_id, descricao) VALUES (13,'Prova 1');
INSERT INTO Avaliacao (turma_disciplina_id, descricao) VALUES (13,'Prova 2');
INSERT INTO Avaliacao (turma_disciplina_id, descricao) VALUES (13,'Prova 3');

INSERT INTO Avaliacao (turma_disciplina_id, descricao) VALUES (14,'Prova 1');
INSERT INTO Avaliacao (turma_disciplina_id, descricao) VALUES (14,'Prova 2');
INSERT INTO Avaliacao (turma_disciplina_id, descricao) VALUES (14,'Prova 3');

INSERT INTO Avaliacao (turma_disciplina_id, descricao) VALUES (15,'Prova 1');
INSERT INTO Avaliacao (turma_disciplina_id, descricao) VALUES (15,'Prova 2');
INSERT INTO Avaliacao (turma_disciplina_id, descricao) VALUES (15,'Prova 3');

INSERT INTO Avaliacao (turma_disciplina_id, descricao) VALUES (16,'Prova 1');
INSERT INTO Avaliacao (turma_disciplina_id, descricao) VALUES (16,'Prova 2');
INSERT INTO Avaliacao (turma_disciplina_id, descricao) VALUES (16,'Prova 3');

INSERT INTO Avaliacao (turma_disciplina_id, descricao) VALUES (17,'Prova 1');
INSERT INTO Avaliacao (turma_disciplina_id, descricao) VALUES (17,'Prova 2');
INSERT INTO Avaliacao (turma_disciplina_id, descricao) VALUES (17,'Prova 3');

INSERT INTO Avaliacao (turma_disciplina_id, descricao) VALUES (18,'Prova 1');
INSERT INTO Avaliacao (turma_disciplina_id, descricao) VALUES (18,'Prova 2');
INSERT INTO Avaliacao (turma_disciplina_id, descricao) VALUES (18,'Prova 3');

INSERT INTO Avaliacao (turma_disciplina_id, descricao) VALUES (19,'Prova 1');
INSERT INTO Avaliacao (turma_disciplina_id, descricao) VALUES (19,'Prova 2');
INSERT INTO Avaliacao (turma_disciplina_id, descricao) VALUES (19,'Prova 3');

INSERT INTO Avaliacao (turma_disciplina_id, descricao) VALUES (20,'Prova 1');
INSERT INTO Avaliacao (turma_disciplina_id, descricao) VALUES (20,'Prova 2');
INSERT INTO Avaliacao (turma_disciplina_id, descricao) VALUES (20,'Prova 3');

INSERT INTO Avaliacao (turma_disciplina_id, descricao) VALUES (21,'Prova 1');
INSERT INTO Avaliacao (turma_disciplina_id, descricao) VALUES (21,'Prova 2');
INSERT INTO Avaliacao (turma_disciplina_id, descricao) VALUES (21,'Prova 3');

INSERT INTO Avaliacao (turma_disciplina_id, descricao) VALUES (22,'Prova 1');
INSERT INTO Avaliacao (turma_disciplina_id, descricao) VALUES (22,'Prova 2');
INSERT INTO Avaliacao (turma_disciplina_id, descricao) VALUES (22,'Prova 3');

INSERT INTO Avaliacao (turma_disciplina_id, descricao) VALUES (23,'Prova 1');
INSERT INTO Avaliacao (turma_disciplina_id, descricao) VALUES (23,'Prova 2');
INSERT INTO Avaliacao (turma_disciplina_id, descricao) VALUES (23,'Prova 3');

INSERT INTO Avaliacao (turma_disciplina_id, descricao) VALUES (24,'Prova 1');
INSERT INTO Avaliacao (turma_disciplina_id, descricao) VALUES (24,'Prova 2');
INSERT INTO Avaliacao (turma_disciplina_id, descricao) VALUES (24,'Prova 3');

INSERT INTO Avaliacao (turma_disciplina_id, descricao) VALUES (25,'Prova 1');
INSERT INTO Avaliacao (turma_disciplina_id, descricao) VALUES (25,'Prova 2');
INSERT INTO Avaliacao (turma_disciplina_id, descricao) VALUES (25,'Prova 3');

INSERT INTO Avaliacao (turma_disciplina_id, descricao) VALUES (26,'Prova 1');
INSERT INTO Avaliacao (turma_disciplina_id, descricao) VALUES (26,'Prova 2');
INSERT INTO Avaliacao (turma_disciplina_id, descricao) VALUES (26,'Prova 3');

INSERT INTO Avaliacao (turma_disciplina_id, descricao) VALUES (27,'Prova 1');
INSERT INTO Avaliacao (turma_disciplina_id, descricao) VALUES (27,'Prova 2');
INSERT INTO Avaliacao (turma_disciplina_id, descricao) VALUES (27,'Prova 3');

INSERT INTO Avaliacao (turma_disciplina_id, descricao) VALUES (28,'Prova 1');
INSERT INTO Avaliacao (turma_disciplina_id, descricao) VALUES (28,'Prova 2');
INSERT INTO Avaliacao (turma_disciplina_id, descricao) VALUES (28,'Prova 3');

INSERT INTO Avaliacao (turma_disciplina_id, descricao) VALUES (29,'Prova 1');
INSERT INTO Avaliacao (turma_disciplina_id, descricao) VALUES (29,'Prova 2');
INSERT INTO Avaliacao (turma_disciplina_id, descricao) VALUES (29,'Prova 3');

INSERT INTO Avaliacao (turma_disciplina_id, descricao) VALUES (30,'Prova 1');
INSERT INTO Avaliacao (turma_disciplina_id, descricao) VALUES (30,'Prova 2');
INSERT INTO Avaliacao (turma_disciplina_id, descricao) VALUES (30,'Prova 3');


INSERT INTO Nota (avaliacao_id, aluno_id, nota)
SELECT av.id, m.aluno_id,
       LEAST(10, ROUND(5 + ((m.aluno_id % 10) * 0.5) + (av.id % 3) * 0.7,1))
FROM Avaliacao av
JOIN TurmaDisciplina td ON av.turma_disciplina_id = td.id
JOIN Matricula m ON m.turma_id = td.turma_id
WHERE td.id = 1;

INSERT INTO Nota (avaliacao_id, aluno_id, nota)
SELECT av.id, m.aluno_id,
       LEAST(10, ROUND(4.5 + ((m.aluno_id % 10) * 0.6) + (av.id % 2) * 0.9,1))
FROM Avaliacao av
JOIN TurmaDisciplina td ON av.turma_disciplina_id = td.id
JOIN Matricula m ON m.turma_id = td.turma_id
WHERE td.id = 2;


INSERT INTO Nota (avaliacao_id, aluno_id, nota)
SELECT av.id, m.aluno_id,
       LEAST(10, ROUND(6 + ((m.aluno_id % 10) * 0.4) + (av.id % 4) * 0.5,1))
FROM Avaliacao av
JOIN TurmaDisciplina td ON av.turma_disciplina_id = td.id
JOIN Matricula m ON m.turma_id = td.turma_id
WHERE td.id = 3;

INSERT INTO Nota (avaliacao_id, aluno_id, nota)
SELECT av.id, m.aluno_id,
       LEAST(10, ROUND(5.5 + ((m.aluno_id % 10) * 0.45) + (av.id % 5) * 0.4,1))
FROM Avaliacao av
JOIN TurmaDisciplina td ON av.turma_disciplina_id = td.id
JOIN Matricula m ON m.turma_id = td.turma_id
WHERE td.id = 4;

INSERT INTO Nota (avaliacao_id, aluno_id, nota)
SELECT av.id, m.aluno_id,
       LEAST(10, ROUND(4 + ((m.aluno_id % 10) * 0.7) + (av.id % 6) * 0.3,1))
FROM Avaliacao av
JOIN TurmaDisciplina td ON av.turma_disciplina_id = td.id
JOIN Matricula m ON m.turma_id = td.turma_id
WHERE td.id = 5;


INSERT INTO Nota (avaliacao_id, aluno_id, nota) SELECT av.id, m.aluno_id, LEAST(10, ROUND(5 + ((m.aluno_id % 10) * 0.5) + (av.id % 7) * 0.2,1)) FROM Avaliacao av JOIN TurmaDisciplina td ON av.turma_disciplina_id = td.id JOIN Matricula m ON m.turma_id = td.turma_id WHERE td.id = 6;
INSERT INTO Nota (avaliacao_id, aluno_id, nota) SELECT av.id, m.aluno_id, LEAST(10, ROUND(4.8 + ((m.aluno_id % 10) * 0.55) + (av.id % 3) * 0.6,1)) FROM Avaliacao av JOIN TurmaDisciplina td ON av.turma_disciplina_id = td.id JOIN Matricula m ON m.turma_id = td.turma_id WHERE td.id = 7;
INSERT INTO Nota (avaliacao_id, aluno_id, nota) SELECT av.id, m.aluno_id, LEAST(10, ROUND(6 + ((m.aluno_id % 10) * 0.35) + (av.id % 4) * 0.45,1)) FROM Avaliacao av JOIN TurmaDisciplina td ON av.turma_disciplina_id = td.id JOIN Matricula m ON m.turma_id = td.turma_id WHERE td.id = 8;
INSERT INTO Nota (avaliacao_id, aluno_id, nota) SELECT av.id, m.aluno_id, LEAST(10, ROUND(5.2 + ((m.aluno_id % 10) * 0.5) + (av.id % 5) * 0.3,1)) FROM Avaliacao av JOIN TurmaDisciplina td ON av.turma_disciplina_id = td.id JOIN Matricula m ON m.turma_id = td.turma_id WHERE td.id = 9;
INSERT INTO Nota (avaliacao_id, aluno_id, nota) SELECT av.id, m.aluno_id, LEAST(10, ROUND(4.6 + ((m.aluno_id % 10) * 0.6) + (av.id % 2) * 0.8,1)) FROM Avaliacao av JOIN TurmaDisciplina td ON av.turma_disciplina_id = td.id JOIN Matricula m ON m.turma_id = td.turma_id WHERE td.id = 10;

INSERT INTO Nota (avaliacao_id, aluno_id, nota) SELECT av.id, m.aluno_id, LEAST(10, ROUND(5.1 + ((m.aluno_id % 10) * 0.52) + (av.id % 3) * 0.4,1)) FROM Avaliacao av JOIN TurmaDisciplina td ON av.turma_disciplina_id = td.id JOIN Matricula m ON m.turma_id = td.turma_id WHERE td.id = 11;
INSERT INTO Nota (avaliacao_id, aluno_id, nota) SELECT av.id, m.aluno_id, LEAST(10, ROUND(4.9 + ((m.aluno_id % 10) * 0.48) + (av.id % 4) * 0.5,1)) FROM Avaliacao av JOIN TurmaDisciplina td ON av.turma_disciplina_id = td.id JOIN Matricula m ON m.turma_id = td.turma_id WHERE td.id = 12;
INSERT INTO Nota (avaliacao_id, aluno_id, nota) SELECT av.id, m.aluno_id, LEAST(10, ROUND(6.2 + ((m.aluno_id % 10) * 0.3) + (av.id % 5) * 0.3,1)) FROM Avaliacao av JOIN TurmaDisciplina td ON av.turma_disciplina_id = td.id JOIN Matricula m ON m.turma_id = td.turma_id WHERE td.id = 13;
INSERT INTO Nota (avaliacao_id, aluno_id, nota) SELECT av.id, m.aluno_id, LEAST(10, ROUND(5.4 + ((m.aluno_id % 10) * 0.42) + (av.id % 2) * 0.7,1)) FROM Avaliacao av JOIN TurmaDisciplina td ON av.turma_disciplina_id = td.id JOIN Matricula m ON m.turma_id = td.turma_id WHERE td.id = 14;
INSERT INTO Nota (avaliacao_id, aluno_id, nota) SELECT av.id, m.aluno_id, LEAST(10, ROUND(4.7 + ((m.aluno_id % 10) * 0.6) + (av.id % 3) * 0.5,1)) FROM Avaliacao av JOIN TurmaDisciplina td ON av.turma_disciplina_id = td.id JOIN Matricula m ON m.turma_id = td.turma_id WHERE td.id = 15;

INSERT INTO Nota (avaliacao_id, aluno_id, nota) SELECT av.id, m.aluno_id, LEAST(10, ROUND(5.6 + ((m.aluno_id % 10) * 0.4) + (av.id % 4) * 0.6,1)) FROM Avaliacao av JOIN TurmaDisciplina td ON av.turma_disciplina_id = td.id JOIN Matricula m ON m.turma_id = td.turma_id WHERE td.id = 16;
INSERT INTO Nota (avaliacao_id, aluno_id, nota) SELECT av.id, m.aluno_id, LEAST(10, ROUND(5.0 + ((m.aluno_id % 10) * 0.5) + (av.id % 5) * 0.45,1)) FROM Avaliacao av JOIN TurmaDisciplina td ON av.turma_disciplina_id = td.id JOIN Matricula m ON m.turma_id = td.turma_id WHERE td.id = 17;
INSERT INTO Nota (avaliacao_id, aluno_id, nota) SELECT av.id, m.aluno_id, LEAST(10, ROUND(4.4 + ((m.aluno_id % 10) * 0.65) + (av.id % 2) * 0.9,1)) FROM Avaliacao av JOIN TurmaDisciplina td ON av.turma_disciplina_id = td.id JOIN Matricula m ON m.turma_id = td.turma_id WHERE td.id = 18;
INSERT INTO Nota (avaliacao_id, aluno_id, nota) SELECT av.id, m.aluno_id, LEAST(10, ROUND(6.0 + ((m.aluno_id % 10) * 0.33) + (av.id % 3) * 0.4,1)) FROM Avaliacao av JOIN TurmaDisciplina td ON av.turma_disciplina_id = td.id JOIN Matricula m ON m.turma_id = td.turma_id WHERE td.id = 19;
INSERT INTO Nota (avaliacao_id, aluno_id, nota) SELECT av.id, m.aluno_id, LEAST(10, ROUND(5.3 + ((m.aluno_id % 10) * 0.48) + (av.id % 4) * 0.35,1)) FROM Avaliacao av JOIN TurmaDisciplina td ON av.turma_disciplina_id = td.id JOIN Matricula m ON m.turma_id = td.turma_id WHERE td.id = 20;

INSERT INTO Nota (avaliacao_id, aluno_id, nota) SELECT av.id, m.aluno_id, LEAST(10, ROUND(4.2 + ((m.aluno_id % 10) * 0.7) + (av.id % 5) * 0.25,1)) FROM Avaliacao av JOIN TurmaDisciplina td ON av.turma_disciplina_id = td.id JOIN Matricula m ON m.turma_id = td.turma_id WHERE td.id = 21;
INSERT INTO Nota (avaliacao_id, aluno_id, nota) SELECT av.id, m.aluno_id, LEAST(10, ROUND(6.1 + ((m.aluno_id % 10) * 0.28) + (av.id % 2) * 0.6,1)) FROM Avaliacao av JOIN TurmaDisciplina td ON av.turma_disciplina_id = td.id JOIN Matricula m ON m.turma_id = td.turma_id WHERE td.id = 22;
INSERT INTO Nota (avaliacao_id, aluno_id, nota) SELECT av.id, m.aluno_id, LEAST(10, ROUND(5.7 + ((m.aluno_id % 10) * 0.38) + (av.id % 3) * 0.5,1)) FROM Avaliacao av JOIN TurmaDisciplina td ON av.turma_disciplina_id = td.id JOIN Matricula m ON m.turma_id = td.turma_id WHERE td.id = 23;
INSERT INTO Nota (avaliacao_id, aluno_id, nota) SELECT av.id, m.aluno_id, LEAST(10, ROUND(4.9 + ((m.aluno_id % 10) * 0.52) + (av.id % 4) * 0.4,1)) FROM Avaliacao av JOIN TurmaDisciplina td ON av.turma_disciplina_id = td.id JOIN Matricula m ON m.turma_id = td.turma_id WHERE td.id = 24;
INSERT INTO Nota (avaliacao_id, aluno_id, nota) SELECT av.id, m.aluno_id, LEAST(10, ROUND(5.9 + ((m.aluno_id % 10) * 0.36) + (av.id % 5) * 0.33,1)) FROM Avaliacao av JOIN TurmaDisciplina td ON av.turma_disciplina_id = td.id JOIN Matricula m ON m.turma_id = td.turma_id WHERE td.id = 25;

INSERT INTO Nota (avaliacao_id, aluno_id, nota) SELECT av.id, m.aluno_id, LEAST(10, ROUND(5.05 + ((m.aluno_id % 10) * 0.49) + (av.id % 3) * 0.42,1)) FROM Avaliacao av JOIN TurmaDisciplina td ON av.turma_disciplina_id = td.id JOIN Matricula m ON m.turma_id = td.turma_id WHERE td.id = 26;
INSERT INTO Nota (avaliacao_id, aluno_id, nota) SELECT av.id, m.aluno_id, LEAST(10, ROUND(4.85 + ((m.aluno_id % 10) * 0.51) + (av.id % 4) * 0.37,1)) FROM Avaliacao av JOIN TurmaDisciplina td ON av.turma_disciplina_id = td.id JOIN Matricula m ON m.turma_id = td.turma_id WHERE td.id = 27;
INSERT INTO Nota (avaliacao_id, aluno_id, nota) SELECT av.id, m.aluno_id, LEAST(10, ROUND(6.3 + ((m.aluno_id % 10) * 0.25) + (av.id % 5) * 0.28,1)) FROM Avaliacao av JOIN TurmaDisciplina td ON av.turma_disciplina_id = td.id JOIN Matricula m ON m.turma_id = td.turma_id WHERE td.id = 28;
INSERT INTO Nota (avaliacao_id, aluno_id, nota) SELECT av.id, m.aluno_id, LEAST(10, ROUND(5.45 + ((m.aluno_id % 10) * 0.44) + (av.id % 2) * 0.66,1)) FROM Avaliacao av JOIN TurmaDisciplina td ON av.turma_disciplina_id = td.id JOIN Matricula m ON m.turma_id = td.turma_id WHERE td.id = 29;
INSERT INTO Nota (avaliacao_id, aluno_id, nota) SELECT av.id, m.aluno_id, LEAST(10, ROUND(4.95 + ((m.aluno_id % 10) * 0.6) + (av.id % 3) * 0.5,1)) FROM Avaliacao av JOIN TurmaDisciplina td ON av.turma_disciplina_id = td.id JOIN Matricula m ON m.turma_id = td.turma_id WHERE td.id = 30;


CREATE TEMPORARY TABLE dias (d INT, dt DATE);
INSERT INTO dias (d, dt) VALUES
(1,'2025-09-01'),(2,'2025-09-02'),(3,'2025-09-03'),(4,'2025-09-04'),(5,'2025-09-05'),
(6,'2025-09-06'),(7,'2025-09-07'),(8,'2025-09-08'),(9,'2025-09-09'),(10,'2025-09-10');


INSERT INTO Presenca (turma_disciplina_id, aluno_id, data, presente)
SELECT td.id, m.aluno_id, dia.dt,
       CASE WHEN ((m.aluno_id + dia.d + td.id) % 4) = 0 THEN 0 ELSE 1 END
FROM TurmaDisciplina td
JOIN Matricula m ON m.turma_id = td.turma_id
CROSS JOIN dias dia
WHERE td.id = 1;


INSERT INTO Presenca (turma_disciplina_id, aluno_id, data, presente) SELECT td.id, m.aluno_id, dia.dt, CASE WHEN ((m.aluno_id + dia.d + td.id) % 4) = 0 THEN 0 ELSE 1 END FROM TurmaDisciplina td JOIN Matricula m ON m.turma_id = td.turma_id CROSS JOIN dias dia WHERE td.id = 2;
INSERT INTO Presenca (turma_disciplina_id, aluno_id, data, presente) SELECT td.id, m.aluno_id, dia.dt, CASE WHEN ((m.aluno_id + dia.d + td.id) % 5) = 0 THEN 0 ELSE 1 END FROM TurmaDisciplina td JOIN Matricula m ON m.turma_id = td.turma_id CROSS JOIN dias dia WHERE td.id = 3;
INSERT INTO Presenca (turma_disciplina_id, aluno_id, data, presente) SELECT td.id, m.aluno_id, dia.dt, CASE WHEN ((m.aluno_id + dia.d + td.id) % 3) = 0 THEN 0 ELSE 1 END FROM TurmaDisciplina td JOIN Matricula m ON m.turma_id = td.turma_id CROSS JOIN dias dia WHERE td.id = 4;
INSERT INTO Presenca (turma_disciplina_id, aluno_id, data, presente) SELECT td.id, m.aluno_id, dia.dt, CASE WHEN ((m.aluno_id + dia.d + td.id) % 6) = 0 THEN 0 ELSE 1 END FROM TurmaDisciplina td JOIN Matricula m ON m.turma_id = td.turma_id CROSS JOIN dias dia WHERE td.id = 5;
INSERT INTO Presenca (turma_disciplina_id, aluno_id, data, presente) SELECT td.id, m.aluno_id, dia.dt, CASE WHEN ((m.aluno_id + dia.d + td.id) % 4) = 1 THEN 0 ELSE 1 END FROM TurmaDisciplina td JOIN Matricula m ON m.turma_id = td.turma_id CROSS JOIN dias dia WHERE td.id = 6;
INSERT INTO Presenca (turma_disciplina_id, aluno_id, data, presente) SELECT td.id, m.aluno_id, dia.dt, CASE WHEN ((m.aluno_id + dia.d + td.id) % 7) = 0 THEN 0 ELSE 1 END FROM TurmaDisciplina td JOIN Matricula m ON m.turma_id = td.turma_id CROSS JOIN dias dia WHERE td.id = 7;
INSERT INTO Presenca (turma_disciplina_id, aluno_id, data, presente) SELECT td.id, m.aluno_id, dia.dt, CASE WHEN ((m.aluno_id + dia.d + td.id) % 4) = 2 THEN 0 ELSE 1 END FROM TurmaDisciplina td JOIN Matricula m ON m.turma_id = td.turma_id CROSS JOIN dias dia WHERE td.id = 8;
INSERT INTO Presenca (turma_disciplina_id, aluno_id, data, presente) SELECT td.id, m.aluno_id, dia.dt, CASE WHEN ((m.aluno_id + dia.d + td.id) % 5) = 1 THEN 0 ELSE 1 END FROM TurmaDisciplina td JOIN Matricula m ON m.turma_id = td.turma_id CROSS JOIN dias dia WHERE td.id = 9;
INSERT INTO Presenca (turma_disciplina_id, aluno_id, data, presente) SELECT td.id, m.aluno_id, dia.dt, CASE WHEN ((m.aluno_id + dia.d + td.id) % 3) = 1 THEN 0 ELSE 1 END FROM TurmaDisciplina td JOIN Matricula m ON m.turma_id = td.turma_id CROSS JOIN dias dia WHERE td.id = 10;

INSERT INTO Presenca (turma_disciplina_id, aluno_id, data, presente) SELECT td.id, m.aluno_id, dia.dt, CASE WHEN ((m.aluno_id + dia.d + td.id) % 4) = 0 THEN 0 ELSE 1 END FROM TurmaDisciplina td JOIN Matricula m ON m.turma_id = td.turma_id CROSS JOIN dias dia WHERE td.id = 11;
INSERT INTO Presenca (turma_disciplina_id, aluno_id, data, presente) SELECT td.id, m.aluno_id, dia.dt, CASE WHEN ((m.aluno_id + dia.d + td.id) % 5) = 0 THEN 0 ELSE 1 END FROM TurmaDisciplina td JOIN Matricula m ON m.turma_id = td.turma_id CROSS JOIN dias dia WHERE td.id = 12;
INSERT INTO Presenca (turma_disciplina_id, aluno_id, data, presente) SELECT td.id, m.aluno_id, dia.dt, CASE WHEN ((m.aluno_id + dia.d + td.id) % 3) = 0 THEN 0 ELSE 1 END FROM TurmaDisciplina td JOIN Matricula m ON m.turma_id = td.turma_id CROSS JOIN dias dia WHERE td.id = 13;
INSERT INTO Presenca (turma_disciplina_id, aluno_id, data, presente) SELECT td.id, m.aluno_id, dia.dt, CASE WHEN ((m.aluno_id + dia.d + td.id) % 6) = 0 THEN 0 ELSE 1 END FROM TurmaDisciplina td JOIN Matricula m ON m.turma_id = td.turma_id CROSS JOIN dias dia WHERE td.id = 14;
INSERT INTO Presenca (turma_disciplina_id, aluno_id, data, presente) SELECT td.id, m.aluno_id, dia.dt, CASE WHEN ((m.aluno_id + dia.d + td.id) % 4) = 1 THEN 0 ELSE 1 END FROM TurmaDisciplina td JOIN Matricula m ON m.turma_id = td.turma_id CROSS JOIN dias dia WHERE td.id = 15;

INSERT INTO Presenca (turma_disciplina_id, aluno_id, data, presente) SELECT td.id, m.aluno_id, dia.dt, CASE WHEN ((m.aluno_id + dia.d + td.id) % 7) = 0 THEN 0 ELSE 1 END FROM TurmaDisciplina td JOIN Matricula m ON m.turma_id = td.turma_id CROSS JOIN dias dia WHERE td.id = 16;
INSERT INTO Presenca (turma_disciplina_id, aluno_id, data, presente) SELECT td.id, m.aluno_id, dia.dt, CASE WHEN ((m.aluno_id + dia.d + td.id) % 4) = 2 THEN 0 ELSE 1 END FROM TurmaDisciplina td JOIN Matricula m ON m.turma_id = td.turma_id CROSS JOIN dias dia WHERE td.id = 17;
INSERT INTO Presenca (turma_disciplina_id, aluno_id, data, presente) SELECT td.id, m.aluno_id, dia.dt, CASE WHEN ((m.aluno_id + dia.d + td.id) % 5) = 1 THEN 0 ELSE 1 END FROM TurmaDisciplina td JOIN Matricula m ON m.turma_id = td.turma_id CROSS JOIN dias dia WHERE td.id = 18;
INSERT INTO Presenca (turma_disciplina_id, aluno_id, data, presente) SELECT td.id, m.aluno_id, dia.dt, CASE WHEN ((m.aluno_id + dia.d + td.id) % 3) = 1 THEN 0 ELSE 1 END FROM TurmaDisciplina td JOIN Matricula m ON m.turma_id = td.turma_id CROSS JOIN dias dia WHERE td.id = 19;
INSERT INTO Presenca (turma_disciplina_id, aluno_id, data, presente) SELECT td.id, m.aluno_id, dia.dt, CASE WHEN ((m.aluno_id + dia.d + td.id) % 4) = 0 THEN 0 ELSE 1 END FROM TurmaDisciplina td JOIN Matricula m ON m.turma_id = td.turma_id CROSS JOIN dias dia WHERE td.id = 20;

INSERT INTO Presenca (turma_disciplina_id, aluno_id, data, presente) SELECT td.id, m.aluno_id, dia.dt, CASE WHEN ((m.aluno_id + dia.d + td.id) % 5) = 0 THEN 0 ELSE 1 END FROM TurmaDisciplina td JOIN Matricula m ON m.turma_id = td.turma_id CROSS JOIN dias dia WHERE td.id = 21;
INSERT INTO Presenca (turma_disciplina_id, aluno_id, data, presente) SELECT td.id, m.aluno_id, dia.dt, CASE WHEN ((m.aluno_id + dia.d + td.id) % 3) = 0 THEN 0 ELSE 1 END FROM TurmaDisciplina td JOIN Matricula m ON m.turma_id = td.turma_id CROSS JOIN dias dia WHERE td.id = 22;
INSERT INTO Presenca (turma_disciplina_id, aluno_id, data, presente) SELECT td.id, m.aluno_id, dia.dt, CASE WHEN ((m.aluno_id + dia.d + td.id) % 6) = 0 THEN 0 ELSE 1 END FROM TurmaDisciplina td JOIN Matricula m ON m.turma_id = td.turma_id CROSS JOIN dias dia WHERE td.id = 23;
INSERT INTO Presenca (turma_disciplina_id, aluno_id, data, presente) SELECT td.id, m.aluno_id, dia.dt, CASE WHEN ((m.aluno_id + dia.d + td.id) % 4) = 1 THEN 0 ELSE 1 END FROM TurmaDisciplina td JOIN Matricula m ON m.turma_id = td.turma_id CROSS JOIN dias dia WHERE td.id = 24;
INSERT INTO Presenca (turma_disciplina_id, aluno_id, data, presente) SELECT td.id, m.aluno_id, dia.dt, CASE WHEN ((m.aluno_id + dia.d + td.id) % 7) = 0 THEN 0 ELSE 1 END FROM TurmaDisciplina td JOIN Matricula m ON m.turma_id = td.turma_id CROSS JOIN dias dia WHERE td.id = 25;

INSERT INTO Presenca (turma_disciplina_id, aluno_id, data, presente) SELECT td.id, m.aluno_id, dia.dt, CASE WHEN ((m.aluno_id + dia.d + td.id) % 4) = 2 THEN 0 ELSE 1 END FROM TurmaDisciplina td JOIN Matricula m ON m.turma_id = td.turma_id CROSS JOIN dias dia WHERE td.id = 26;
INSERT INTO Presenca (turma_disciplina_id, aluno_id, data, presente) SELECT td.id, m.aluno_id, dia.dt, CASE WHEN ((m.aluno_id + dia.d + td.id) % 5) = 1 THEN 0 ELSE 1 END FROM TurmaDisciplina td JOIN Matricula m ON m.turma_id = td.turma_id CROSS JOIN dias dia WHERE td.id = 27;
INSERT INTO Presenca (turma_disciplina_id, aluno_id, data, presente) SELECT td.id, m.aluno_id, dia.dt, CASE WHEN ((m.aluno_id + dia.d + td.id) % 3) = 1 THEN 0 ELSE 1 END FROM TurmaDisciplina td JOIN Matricula m ON m.turma_id = td.turma_id CROSS JOIN dias dia WHERE td.id = 28;
INSERT INTO Presenca (turma_disciplina_id, aluno_id, data, presente) SELECT td.id, m.aluno_id, dia.dt, CASE WHEN ((m.aluno_id + dia.d + td.id) % 4) = 0 THEN 0 ELSE 1 END FROM TurmaDisciplina td JOIN Matricula m ON m.turma_id = td.turma_id CROSS JOIN dias dia WHERE td.id = 29;
INSERT INTO Presenca (turma_disciplina_id, aluno_id, data, presente) SELECT td.id, m.aluno_id, dia.dt, CASE WHEN ((m.aluno_id + dia.d + td.id) % 5) = 0 THEN 0 ELSE 1 END FROM TurmaDisciplina td JOIN Matricula m ON m.turma_id = td.turma_id CROSS JOIN dias dia WHERE td.id = 30;


DROP TEMPORARY TABLE IF EXISTS dias;


SELECT 
    a.nome AS aluno,
    t.nome AS turma,
    d.nome AS disciplina,
    COUNT(CASE WHEN p.presente = 0 THEN 1 END) AS total_faltas
FROM Presenca p
JOIN Aluno a ON p.aluno_id = a.id
JOIN TurmaDisciplina td ON p.turma_disciplina_id = td.id
JOIN Turma t ON td.turma_id = t.id
JOIN Disciplina d ON td.disciplina_id = d.id
GROUP BY a.id, td.id
ORDER BY total_faltas DESC;


SELECT
    a.nome AS aluno,
    t.nome AS turma,
    d.nome AS disciplina,
    ROUND(SUM(p.presente)/COUNT(*)*100,2) AS taxa_presenca
FROM Presenca p
JOIN Aluno a ON p.aluno_id = a.id
JOIN TurmaDisciplina td ON p.turma_disciplina_id = td.id
JOIN Turma t ON td.turma_id = t.id
JOIN Disciplina d ON td.disciplina_id = d.id
GROUP BY a.id, td.id;


SELECT 
    a.nome AS aluno,
    t.nome AS turma,
    d.nome AS disciplina,
    ROUND(AVG(n.nota),2) AS media_final
FROM Nota n
JOIN Aluno a ON n.aluno_id = a.id
JOIN Avaliacao av ON n.avaliacao_id = av.id
JOIN TurmaDisciplina td ON av.turma_disciplina_id = td.id
JOIN Turma t ON td.turma_id = t.id
JOIN Disciplina d ON td.disciplina_id = d.id
GROUP BY a.id, td.id;


SELECT
    t.nome AS turma,
    a.nome AS aluno,
    ROUND(AVG(n.nota),2) AS media
FROM Nota n
JOIN Aluno a ON n.aluno_id = a.id
JOIN Avaliacao av ON n.avaliacao_id = av.id
JOIN TurmaDisciplina td ON av.turma_disciplina_id = td.id
JOIN Turma t ON td.turma_id = t.id
GROUP BY t.id, a.id
HAVING AVG(n.nota) = (
    SELECT MAX(media_turma)
    FROM (
        SELECT AVG(n2.nota) AS media_turma
        FROM Nota n2
        JOIN Avaliacao av2 ON n2.avaliacao_id = av2.id
        JOIN TurmaDisciplina td2 ON av2.turma_disciplina_id = td2.id
        WHERE td2.turma_id = t.id
        GROUP BY n2.aluno_id
    ) AS sub
);


SELECT
    a.nome AS aluno,
    ROUND(AVG(n.nota),2) AS media
FROM Nota n
JOIN Aluno a ON n.aluno_id = a.id
JOIN Avaliacao av ON n.avaliacao_id = av.id
JOIN TurmaDisciplina td ON av.turma_disciplina_id = td.id
WHERE td.turma_id = 1
GROUP BY a.id
ORDER BY media DESC;


SELECT
    d.nome AS disciplina,
    ROUND(AVG(CASE WHEN p.presente = 0 THEN 1 ELSE 0 END)*100,2) AS taxa_faltas
FROM Presenca p
JOIN TurmaDisciplina td ON p.turma_disciplina_id = td.id
JOIN Disciplina d ON td.disciplina_id = d.id
GROUP BY d.id
ORDER BY taxa_faltas DESC;


SELECT
    pr.nome AS professor,
    COUNT(DISTINCT td.turma_id) AS numero_turmas
FROM TurmaDisciplina td
JOIN Professor pr ON td.professor_id = pr.id
GROUP BY pr.id
ORDER BY numero_turmas DESC
LIMIT 1;


SELECT
    t.nome AS turma,
    ROUND(AVG(n.nota),2) AS media_geral
FROM Nota n
JOIN Avaliacao av ON n.avaliacao_id = av.id
JOIN TurmaDisciplina td ON av.turma_disciplina_id = td.id
JOIN Turma t ON td.turma_id = t.id
GROUP BY t.id
HAVING media_geral < 6.0;


SELECT
    a.nome AS aluno,
    t.nome AS turma,
    d.nome AS disciplina,
    ROUND(SUM(p.presente)/COUNT(*)*100,2) AS taxa_presenca
FROM Presenca p
JOIN Aluno a ON p.aluno_id = a.id
JOIN TurmaDisciplina td ON p.turma_disciplina_id = td.id
JOIN Turma t ON td.turma_id = t.id
JOIN Disciplina d ON td.disciplina_id = d.id
GROUP BY a.id, td.id
HAVING taxa_presenca < 75;


SELECT
    av.descricao AS avaliacao,
    ROUND(AVG(n.nota),2) AS media,
    MIN(n.nota) AS min_nota,
    MAX(n.nota) AS max_nota,
    ROUND(STDDEV(n.nota),2) AS desvio
FROM Nota n
JOIN Avaliacao av ON n.avaliacao_id = av.id
GROUP BY av.id;


SELECT
    a.nome AS aluno,
    ROUND(AVG(n.nota),2) AS media_global
FROM Nota n
JOIN Aluno a ON n.aluno_id = a.id
GROUP BY a.id
ORDER BY media_global DESC
LIMIT 3;

