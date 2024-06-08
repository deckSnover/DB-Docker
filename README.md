## Sistema de Banco de Dados Usando Docker

### Resumo

Este projeto é um exemplo de configuração de um banco de dados PostgreSQL utilizando Docker. Ele inclui a criação de um contêiner PostgreSQL, a definição de uma estrutura de banco de dados e a configuração de permissões de usuários com diferentes níveis de acesso.

### Como Utilizar

### Pré-requisitos

- Docker: [Instalação do Docker](https://docs.docker.com/get-docker/)
- PostgreSQL: [Instalação do PostgreSQL](https://www.postgresql.org/download/)

### Passos

1. Clone este repositório em sua máquina local.
2. Instale o Docker em seu sistema, seguindo as [instruções de instalação](https://docs.docker.com/get-docker/).
3. Instale o PostgreSQL em seu sistema, seguindo as [instruções de instalação](https://www.postgresql.org/download/).
4. Execute o comando `docker-compose up` na raiz do projeto para iniciar o banco de dados em um contêiner.
5. Conecte-se ao banco de dados utilizando um cliente PostgreSQL, como o `psql`, para consultar informações de contas, realizar operações de depósito e saque, de acordo com o nível de acesso do usuário.

### Permissões de Usuários

- **Consultor de Investimento**: Pode consultar informações de contas.
- **Gerente Administrativo**: Pode consultar informações de contas e depositar em contas.
- **Gerente Geral**: Pode consultar informações de contas, depositar e sacar de contas.

### Procedimento de Backup Diário

O sistema possui um procedimento de backup diário agendado para garantir a segurança dos dados. O backup é realizado todos os dias à meia-noite.

### Licença

Este projeto é licenciado sob a MIT License.

### Orientações

Esse README fornece instruções claras sobre como configurar e usar seu projeto, incluindo links para os guias de instalação do Docker e PostgreSQL para facilitar a instalação dessas ferramentas.
```

