-- Active: 1792714591000@@127.0.0.1@5432@bd_plano_saude@public
CREATE DATABASE bd_plano_saude;

DROP TABLE IF EXISTS planilha_atendimento;
DROP VIEW  IF EXISTS vw_dependente;
DROP VIEW  IF EXISTS vw_consulta;
DROP TABLE IF EXISTS exame_solicitado;
DROP TABLE IF EXISTS consulta;
DROP TABLE IF EXISTS credenciamento;
DROP TABLE IF EXISTS telefone;
DROP TABLE IF EXISTS medico;
DROP TABLE IF EXISTS paciente;
DROP TABLE IF EXISTS especialidade;
DROP TABLE IF EXISTS convenio;
DROP TABLE IF EXISTS pessoa;


-- Regra 1. O endereco composto vira quatro colunas
CREATE TABLE pessoa (
    id              INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    nome            TEXT    NOT NULL,
    cpf             TEXT    NOT NULL UNIQUE,
    data_nascimento DATE    NOT NULL,
    logradouro      TEXT    NOT NULL,
    numero          TEXT    NOT NULL,
    bairro          TEXT    NOT NULL,
    cidade          TEXT    NOT NULL
);

-- Regra 2. Uma linha por telefone
CREATE TABLE telefone (
    pessoa_id INTEGER NOT NULL REFERENCES pessoa (id),
    numero    TEXT    NOT NULL,
    PRIMARY KEY (pessoa_id, numero)
);

-- Regra 5
CREATE TABLE especialidade (
    id   INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    nome TEXT    NOT NULL UNIQUE
);

-- Regra 6
CREATE TABLE convenio (
    id   INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    nome TEXT    NOT NULL UNIQUE
);

-- Regras 3 e 4. A chave primaria e tambem chave estrangeira para pessoa
CREATE TABLE paciente (
    pessoa_id     INTEGER PRIMARY KEY REFERENCES pessoa (id),
    data_cadastro DATE    NOT NULL,
    titular_id    INTEGER REFERENCES paciente (pessoa_id)
);

-- Regras 3 e 5
CREATE TABLE medico (
    pessoa_id        INTEGER PRIMARY KEY REFERENCES pessoa (id),
    crm              TEXT    NOT NULL UNIQUE,
    especialidade_id INTEGER NOT NULL REFERENCES especialidade (id)
);


