# Sistema de Registro de Consultas Médicas

Este projeto é um Sistema de Registro de Consultas Médicas utilizando PostgreSQL. Ele permite gerenciar pacientes, médicos, consultas e diagnósticos, armazenando todas as informações em um banco de dados relacional.

## Estrutura do Banco de Dados

O banco de dados é composto pelas seguintes tabelas:

- **pacientes**: Armazena informações sobre os pacientes.
- **medicos**: Armazena informações sobre os médicos.
- **consultas**: Registra as consultas realizadas entre pacientes e médicos.
- **diagnosticos**: Registra os diagnósticos feitos durante as consultas.

### Estrutura das Tabelas

**Tabela Pacientes**

| Coluna            | Tipo        | Descrição                              |
|-------------------|-------------|----------------------------------------|
| id                | SERIAL      | Chave primária                         |
| nome              | VARCHAR(100)| Nome do paciente                       |
| data_nascimento   | DATE        | Data de nascimento                     |
| genero            | VARCHAR(10) | Gênero                                 |
| endereco          | VARCHAR(255)| Endereço                               |
| telefone          | VARCHAR(15) | Telefone                               |

**Tabela Médicos**

| Coluna            | Tipo        | Descrição                              |
|-------------------|-------------|----------------------------------------|
| id                | SERIAL      | Chave primária                         |
| nome              | VARCHAR(100)| Nome do médico                         |
| especialidade     | VARCHAR(100)| Especialidade                          |
| telefone          | VARCHAR(15) | Telefone                               |

**Tabela Consultas**

| Coluna            | Tipo        | Descrição                              |
|-------------------|-------------|----------------------------------------|
| id                | SERIAL      | Chave primária                         |
| id_paciente       | INT         | Referência para a tabela pacientes     |
| id_medico         | INT         | Referência para a tabela médicos       |
| data_consulta     | TIMESTAMP   | Data e hora da consulta                |
| motivo_consulta   | TEXT        | Motivo da consulta                     |

**Tabela Diagnósticos**

| Coluna            | Tipo        | Descrição                              |
|-------------------|-------------|----------------------------------------|
| id                | SERIAL      | Chave primária                         |
| id_consulta       | INT         | Referência para a tabela consultas     |
| descricao         | TEXT        | Descrição do diagnóstico               |
| tratamento        | TEXT        | Tratamento recomendado                 |

## Instruções de Uso

### Requisitos

- PostgreSQL instalado e em execução na sua máquina.

### Passo a Passo

1. **Clone o repositório**:
   ```sh
   git clone https://github.com/seu_usuario/sistema_consultas_medicas.git
   cd sistema_consultas_medicas
   ```

2. **Crie o Banco de Dados e as Tabelas**:

    Conecte-se ao PostgreSQL e execute o script SQL

    ```sh
    psql -U seu_usuario -f sistema_consultas_medicas.sql
    ```

3. **Verifique os Dados Inseridos**:

    Após executar o script, o banco de dados será criado com as tabelas e alguns dados de exemplo. Você pode verificar a estrutura e os dados utilizando uma ferramenta como o pgAdmin ou via linha de comando do PostgreSQL.


# Contribuição

    Sinta-se à vontade para contribuir com melhorias e novas funcionalidades. Para isso, siga os passos abaixo:

    - 1. Fork este repositório
    
    - 2. Crie uma nova branch
    ```sh
    git checkout -b feature/nova-funcionalidade
    ```

    - 3. Faça suas modificações e adições

    - 4. Commit suas mudanças
    ```sh
    git push origin feature/nova-funcionalidade
    ```

# Licença

    Este projeto está licenciado sob a MIT License.

### Este `README.md` fornece uma visão geral clara do projeto, incluindo a estrutura do banco de dados, instruções de uso e como contribuir. Ajuste as URLs e informações específicas conforme necessário para seu repositório.

