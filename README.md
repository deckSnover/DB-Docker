### Documentação

Este sistema é um exemplo de configuração de um banco de dados PostgreSQL utilizando Docker. Ele inclui a criação de um contêiner PostgreSQL, a definição de uma estrutura de banco de dados e a configuração de permissões de usuários com diferentes níveis de acesso.

### Configuração do Projeto no Visual Studio Code

1. Abra o Visual Studio Code e crie uma nova pasta para o projeto.
2. Dentro dessa pasta, crie os seguintes arquivos:
   - `Dockerfile`
   - `docker-compose.yml`
   - `init.sql`
   - `README.md`
   - `LICENSE`

### Configuração dos Arquivos

#### Dockerfile

```dockerfile
FROM postgres:13

ENV POSTGRES_USER=mybank
ENV POSTGRES_PASSWORD=mybank
ENV POSTGRES_DB=mybank

EXPOSE 5432

CMD ["postgres"]
```

#### docker-compose.yml

```yaml
version: '3'

services:
  db:
    build: .
    environment:
      - POSTGRES_USER=mybank
      - POSTGRES_PASSWORD=mybank
      - POSTGRES_DB=mybank
    ports:
      - "5432:5432"
    volumes:
      - db-data:/var/lib/postgresql/data
      - ./init.sql:/docker-entrypoint-initdb.d/init.sql

volumes:
  db-data:
```

#### init.sql

```sql
CREATE TABLE accounts (
    id SERIAL PRIMARY KEY,
    account_number VARCHAR(20) NOT NULL,
    account_holder VARCHAR(50) NOT NULL,
    balance DECIMAL(10, 2) NOT NULL DEFAULT 0.00
);

INSERT INTO accounts (account_number, account_holder, balance)
VALUES 
    ('1234567890', 'John Doe', 1000.00),
    ('9876543210', 'Jane Doe', 500.00),
    ('2468101214', 'Alice Smith', 1500.00),
    ('3691215182', 'Bob Johnson', 2000.00),
    ('1012141618', 'Eva Brown', 1800.00),
    ('3141592653', 'Michael Williams', 2200.00),
    ('1718192022', 'Sophia Jones', 3000.00),
    ('2324252628', 'William Davis', 2500.00),
    ('2930313234', 'Olivia Wilson', 2800.00),
    ('3536373830', 'James Miller', 3200.00);
```

## Permissões de Usuários

### Níveis de Acesso
- **Consultor de Investimento**: Pode consultar informações de contas.
- **Gerente Administrativo**: Pode consultar informações de contas e depositar em contas.
- **Gerente Geral**: Pode consultar informações de contas, depositar, autorizar transfelências acima de 200 mil reai

### Atualização do Arquivo init.sql

```sql
-- Criação da tabela de usuários e atribuição de permissões
CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    password VARCHAR(50) NOT NULL,
    role VARCHAR(20) NOT NULL
);

-- Inserção de usuários de exemplo com diferentes níveis de acesso
INSERT INTO users (username, password, role) VALUES 
    ('consultor', 'senha_consultor', 'consultor de investimento'),
    ('gerente', 'senha_gerente', 'gerente administrativo'),
    ('geral', 'senha_geral', 'gerente geral');

-- Criação de funções para diferentes níveis de acesso
...

-- Concede permissões aos usuários de acordo com seus papéis
...

-- Criação de um job para realizar backup diário
...

-- Agendamento do backup diário
...
```

## Procedimento de Backup Diário

O sistema possui um procedimento de backup diário agendado para garantir a segurança dos dados. O backup é realizado utilizando o utilitário `pg_dump` do PostgreSQL e é agendado para executar todos os dias à meia-noite.

## Uso

...

## Contribuição

...
