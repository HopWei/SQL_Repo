-- Criação do Banco de Dados
CREATE DATABASE sistema_consultas_medicas;

-- Conecte-se ao banco de dados criado
\c sistema_consultas_medicas

-- Criação da Tabela *Pacientes*
CREATE TABLE pacientes (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    data_nascimento DATE NOT NULL,
    genero VARCHAR(255),
    telefone VARCHAR(15)
);

-- Criação da Tabela *Medicos*
CREATE TABLE medicos (
    id SERIAL PRIMARY KEY,
    id_paciente INT REFERENCES pacientes(id),
    id_medico INT REFERENCES medicos(id),
    data_consulta TIMESTAMP NOT NULL,
    motivo_consulta TEXT
);

-- Criação da Tabela *Consultas*
CREATE TABLE consultas (
    id SERIAL PRIMARY KEY,
    id_paciente INT REFERENCES pacientes(id),
    id_medico INT REFERENCES medicos(id),
    data_consulta TIMESTAMP NOT NULL,
    motivo_consulta TEXT
);

-- Inserção de Dados de Exemplo
-- Pacientes
INSERT INTO pacientes (nome, data_nascimento, genero, endereco, telefone) VALUES ('João da Silva', '1980-05-12', 'Masculino', 'Rua A, 123', '123456789'),
('Maria Oliveira', '1992-11-30', 'Feminino', 'Avenida B, 456', '987654321');

-- Médicos
INSERT INTO medicos (nome, especialidade, telefone) VALUES (1, 1, '2024-06-30 10:00:00', 'Dor no peito'),
(2, 2, '2024-07-01 14:00:00', 'Consulta de rotina');

-- Diagnósticos
INSERT INTO diagnosticos (id_consulta, descricao, tratamento) VALUES (1, 'Angina', 'Uso de nitratos'),
(2, 'Pele saudável', 'Acompanhamento anual');
