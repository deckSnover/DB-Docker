## Sistema_DB_-Utilkzando_Docker

```markdown
# Sistema de Banco de Dados Usando Docker

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
```

### docker-compose.yml

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

volumes:
  db-data:
```

## Deploy

Para iniciar o banco de dados em contêiner, execute o comando:

```sh
docker-compose up -d
```

Isso criará um contêiner em segundo plano com o banco de dados PostgreSQL.

## Uso

Conecte-se ao banco de dados utilizando um cliente PostgreSQL, como o `psql`:

```sh
psql -h localhost -U mybank mybank
```

Crie uma tabela para armazenar as informações de contas bancárias:

```sql
CREATE TABLE accounts (
    id SERIAL PRIMARY KEY,
    account_number VARCHAR(20) NOT NULL,
    account_holder VARCHAR(50) NOT NULL,
    balance DECIMAL(10, 2) NOT NULL DEFAULT 0.00
);
```

Insira dados de exemplo:

```sql
INSERT INTO accounts (account_number, account_holder, balance)
VALUES ('1234567890', 'John Doe', 1000.00),
       ('9876543210', 'Jane Doe', 500.00);
```

Realize operações de depósito e saque utilizando comandos SQL, como:

```sql
-- Depositar
UPDATE accounts SET balance = balance + 100 WHERE account_number = '1234567890';

-- Sacar
UPDATE accounts SET balance = balance - 50 WHERE account_number = '9876543210';
```

## Observações

- Certifique-se de que o Docker esteja instalado e configurado corretamente em seu sistema.
- Este é um exemplo básico e não inclui segurança ou autenticação. Em um ambiente de produção, é importante implementar medidas de segurança adequadas.
- Este exemplo utiliza a porta 5432, que é a porta padrão do PostgreSQL. Se você estiver utilizando outra porta, ajuste o arquivo `docker-compose.yml` conforme necessário.

## Backup e Restauração

### Backup

Para fazer backup do banco de dados, use o comando `pg_dump`:

```sh
pg_dump -h localhost -U mybank mybank > backup.sql
```

### Restauração

Para restaurar o banco de dados a partir de um backup, use o comando `psql`:

```sh
psql -h localhost -U mybank mybank < backup.sql
```

## Referências

- [Documentação do PostgreSQL](https://www.postgresql.org/docs/)
- [Documentação do Docker](https://docs.docker.com/)
- [Documentação do Docker Compose](https://docs.docker.com/compose/)

## Contribuição

1. Faça um fork deste repositório.
2. Crie uma branch com sua feature: `git checkout -b minha-feature`.
3. Commit suas mudanças: `git commit -m 'Adiciona minha feature'`.
4. Faça um push para a branch: `git push origin minha-feature`.
5. Abra um pull request.

## Licença

MIT License

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

**Autor:** Igor Hilario
```

### Passos para Adicionar o README.md ao GitHub

1. **Crie um arquivo `README.md` na raiz do seu repositório local**:
   - Abra seu editor de texto favorito.
   - Crie um novo arquivo chamado `README.md`.
   - Cole o conteúdo do markdown acima no arquivo `README.md`.

2. **Adicione o arquivo ao seu repositório local**:
   - Abra seu terminal ou prompt de comando.
   - Navegue até a raiz do seu repositório.
   - Adicione o arquivo ao repositório usando os comandos:
     ```sh
     git add README.md
     git commit -m "Adiciona documentação inicial do sistema de banco de dados"
     git push origin main
     ```

3. **Verifique no GitHub**:
   - Vá para a página do seu repositório no GitHub.
   - Verifique se o `README.md` foi adicionado e está sendo exibido corretamente na página principal do repositório.

Isso garantirá que todas as informações relevantes sobre o projeto, incluindo a configuração, uso, backup, restauração, contribuições e licença, estejam documentadas e acessíveis diretamente na página principal do repositório no GitHub.
