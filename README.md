## Sistema_DB_Utilizando_Docker

Claro, aqui está o novo markdown com as atualizações:

```markdown
# Sistema de Banco de Dados Usando Docker

## Permissões de Usuários

### Níveis de Acesso
- **Consultor de Investimento**: Pode consultar informações de contas.
- **Gerente Administrativo**: Pode consultar informações de contas e depositar em contas.
- **Gerente Geral**: Pode consultar informações de contas, depositar e sacar de contas.

## Procedimento de Backup Diário

O sistema possui um procedimento de backup diário agendado para garantir a segurança dos dados. O backup é realizado utilizando o utilitário `pg_dump` do PostgreSQL e é agendado para executar todos os dias à meia-noite.

## Uso

Para utilizar as funções do banco de dados de acordo com o nível de acesso do usuário, conecte-se ao banco de dados usando um cliente PostgreSQL, como o `psql`, e execute as funções relevantes.

Exemplo de consulta de contas:
```sql
SELECT * FROM consultar_contas();
```

Exemplo de depósito em conta (para gerentes administrativos):
```sql
SELECT depositar('1234567890', 500.00);
```

Exemplo de saque de conta (para gerentes gerais):
```sql
SELECT sacar('9876543210', 200.00);
```

## Contribuição

1. Faça um fork deste repositório.
2. Crie uma branch com sua feature: `git checkout -b minha-feature`.
3. Commit suas mudanças: `git commit -m 'Adiciona minha feature'`.
4. Faça um push para a branch: `git push origin minha-feature`.
5. Abra um pull request.

## Licença

Este projeto é licenciado sob a MIT License. Para mais detalhes, consulte o arquivo [LICENSE](LICENSE).
```
