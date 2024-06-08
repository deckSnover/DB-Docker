# Sistema_DB_Utilizando_Docker

## Resumo

Este projeto é um exemplo de configuração de um banco de dados PostgreSQL utilizando Docker. Ele inclui a criação de um contêiner PostgreSQL, a definição de uma estrutura de banco de dados e a configuração de permissões de usuários com diferentes níveis de acesso.

## Como Utilizar

1. Clone este repositório em sua máquina local.
2. Instale o Docker em seu sistema.
3. Execute o comando `docker-compose up` para iniciar o banco de dados em um contêiner.
4. Conecte-se ao banco de dados utilizando um cliente PostgreSQL, como o `psql`, para consultar informações de contas, realizar operações de depósito e saque, de acordo com o nível de acesso do usuário.

## Permissões de Usuários

- **Consultor de Investimento**: Pode consultar informações de contas.
- **Gerente Administrativo**: Pode consultar informações de contas e depositar em contas.
- **Gerente Geral**: Pode consultar informações de contas, depositar e sacar de contas.

## Procedimento de Backup Diário

O sistema possui um procedimento de backup diário agendado para garantir a segurança dos dados. O backup é realizado todos os dias à meia-noite.

## Licença

Este projeto é licenciado sob a MIT License.

## Contato

Para mais informações ou oportunidades de colaboração, entre em contato através do email: seuemail@example.com.
