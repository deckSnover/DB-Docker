# Sistema_DB_Utilizando_Docker

## Planejamento

**Banco de Dados**: PostgreSQL  
**Requisitos**:
- Armazenar informações de contas bancárias (número da conta, titular, saldo)
- Realizar operações de depósito e saque
- Manter histórico de transações

## Configuração

### Dockerfile

```dockerfile
FROM postgres:13

ENV POSTGRES_USER=mybank
ENV POSTGRES_PASSWORD=mybank
ENV POSTGRES_DB=mybank

EXPOSE 5432

CMD ["postgres"]
