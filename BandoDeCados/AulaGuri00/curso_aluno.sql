-- Active: 1787176816834@@127.0.0.1@5432@bd_aula@public
CREATE TABLE curso(
    id_curso INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    nome VARCHAR(60) NOT NULL
);
CREATE TABLE aluno(
    id_aluno INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    nome VARCHAR(80) NOT NULL,
    id_curso INTEGER NOT NULL REFERENCES curso(id_curso)
);

SELECT * FROM  curso;

SELECT id_curso FROM  curso;
SELECT nome FROM  curso;

SELECT * FROM  aluno;

SELECT id_aluno FROM  aluno;
SELECT id_curso FROM  aluno;
SELECT nome FROM  aluno;

INSERT INTO curso (nome) VALUES
('Sistemas de Informacao'),
('Administracao'),
('Direito'),
('Ciencia da computacao');

INSERT INTO aluno (nome,id_curso) VALUES
('Ana Beatriz Sousa' , 1),
('Carlos Henrique Lemos' , 1),
('Pedro Mestre Mago' , 2),
('Davi Senior Silva' , 3),
('Gustavo Pereira Manuel' , 1);

SELECT 
    a.id_aluno AS id,
    a.nome AS alunos,
    a.id_curso
FROM
    aluno a 
ORDER BY
    nome ASC;

SELECT
    id_curso AS id,
    nome AS cursos
FROM
    curso
ORDER BY
    nome ASC;

SELECT
    nome AS aluno,
     id_curso AS id
FROM
    aluno
WHERE
    id_curso = 1;