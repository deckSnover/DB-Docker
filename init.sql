CREATE TABLE accounts (
    id SERIAL PRIMARY KEY,
    account_number VARCHAR(20) NOT NULL,
    account_holder VARCHAR(50) NOT NULL,
    balance DECIMAL(10, 2) NOT NULL DEFAULT 0.00
);

INSERT INTO accounts (account_number, account_holder, balance) VALUES 
    ('1234567890', 'John Doe', 1000.00),
    ('9876543210', 'Jane Doe', 500.00),
    ('2468101214', 'Alice Smith', 1500.00),
    ('3691215182', 'Bob Johnson', 2000.00),
    ('1012141618', 'Eva Brown', 1800.00),
    ('3141592653', 'Michael Williams', 2200.00),
    ('1718192022', 'Sophia Jones', 3000.00),
    ('2324252628', 'William Davis', 2500.00),
    ('2930313234', 'Olivia Wilson', 2800.00),
    ('3536373830', 'James Miller', 3200.00),
    ('4646464646', 'Ethan Clark', 1500.00),
    ('5555555555', 'Mia Johnson', 2200.00),
    ('6666666666', 'Liam White', 3200.00),
    ('7777777777', 'Emma Harris', 2500.00),
    ('8888888888', 'Noah Martin', 2800.00),
    ('9999999999', 'Ava Thompson', 3000.00),
    ('1111111111', 'Lucas Garcia', 1000.00),
    ('2222222222', 'Isabella Rodriguez', 500.00),
    ('3333333333', 'Mason Martinez', 1500.00),
    ('4444444444', 'Sophia Hernandez', 2000.00),
    ('5555554444', 'Olivia King', 1800.00),
    ('1234509876', 'Charlotte Wright', 1000.00),
    ('9876512345', 'Amelia Lopez', 500.00),
    ('2345678901', 'Harper Scott', 1500.00),
    ('6789012345', 'Evelyn Green', 2000.00),
    ('3456789012', 'Abigail Adams', 1800.00),
    ('4567890123', 'Avery Nelson', 2200.00),
    ('5678901234', 'Ella Hill', 3000.00),
    ('6789012346', 'Scarlett Rivera', 2500.00),
    ('7890123456', 'Luna Perez', 2800.00),
    ('8901234567', 'Aria Roberts', 3200.00),
    ('9012345678', 'Chloe Collins', 1500.00),
    ('0123456789', 'Layla Stewart', 2200.00),
    ('2345678910', 'Mila Morris', 3200.00),
    ('3456789013', 'Nora Murphy', 2500.00),
    ('4567890124', 'Hazel Cook', 2800.00),
    ('5678901235', 'Riley Bell', 3000.00),
    ('6789012347', 'Zoe Parker', 1000.00),
    ('7890123457', 'Stella Lewis', 500.00),
    ('8901234568', 'Ellie Young', 1500.00),
    ('9012345679', 'Lily Allen', 2000.00),
    ('0123456780', 'Grace Baker', 1800.00),
    ('1234567891', 'Victoria Campbell', 2200.00),
    ('2345678911', 'Aubrey Gonzalez', 3000.00),
    ('3456789014', 'Zoey Ward', 2500.00),
    ('4567890125', 'Penelope Torres', 2800.00),
    ('5678901236', 'Addison Price', 3200.00),
    ('6789012348', 'Lucy Sanders', 1500.00),
    ('7890123458', 'Audrey Lee', 2200.00),
    ('8901234569', 'Hannah Turner', 3200.00),
    ('9012345680', 'Madison Baker', 2500.00),
    ('0123456781', 'Violet Phillips', 2800.00),
    ('1234567892', 'Lillian Mitchell', 3000.00),
    ('2345678912', 'Aurora Carter', 1000.00),
    ('3456789015', 'Natalie Diaz', 500.00),
    ('4567890126', 'Savannah Baker', 1500.00),
    ('5678901237', 'Brooklyn Edwards', 2000.00),
    ('6789012349', 'Bella Simmons', 1800.00),
    ('7890123459', 'Claire Watson', 2200.00),
    ('8901234570', 'Skylar Morgan', 3000.00),
    ('9012345681', 'Paisley Bryant', 2500.00),
    ('0123456782', 'Everly Perez', 2800.00),
    ('1234567893', 'Anna Gray', 3200.00),
    ('2345678913', 'Caroline Ross', 1500.00),
    ('3456789016', 'Nova Green', 2200.00),
    ('4567890127', 'Genesis Sullivan', 3200.00),
    ('5678901238', 'Emilia Bell', 2500.00),
    ('6789012350', 'Kennedy Cox', 2800.00),
    ('7890123460', 'Samantha Ramirez', 3000.00),
    ('8901234571', 'Maya Howard', 1000.00),
    ('9012345682', 'Willow Ward', 500.00),
    ('0123456783', 'Kinsley Brooks', 1500.00),
    ('1234567894', 'Naomi Sanders', 2000.00),
    ('2345678914', 'Ariana Powell', 1800.00),
    ('3456789017', 'Elena Cook', 2200.00),
    ('4567890128', 'Sarah Barnes', 3000.00),
    ('5678901239', 'Aaliyah Mitchell', 2500.00),
    ('6789012351', 'Gabriella Kelly', 2800.00),
    ('7890123461', 'Allison Morris', 3200.00),
    ('8901234572', 'Alice Rogers', 1500.00),
    ('9012345683', 'Madelyn Reed', 2200.00),
    ('0123456784', 'Cora Bell', 3200.00),
    ('1234567895', 'Eva Jenkins', 2500.00),
    ('2345678915', 'Arianna Long', 2800.00),
    ('3456789018', 'Isabelle Bennett', 3000.00),
    ('4567890129', 'Quinn Hughes', 1000.00),
    ('5678901240', 'Nevaeh Patel', 500.00),
    ('6789012352', 'Ivy Ramirez', 1500.00),
    ('7890123462', 'Sadie Perez', 2000.00),
    ('8901234573', 'Piper Hill', 1800.00),
    ('9012345684', 'Lydia Carter', 2200.00),
    ('0123456785', 'Julia Cooper', 3000.00),
    ('1234567896', 'Josephine Edwards', 2500.00),
    ('2345678916', 'Vivian Watson', 2800.00),
    ('3456789019', 'Clara Price', 3200.00),
    ('4567890130', 'Eliana Collins', 1500.00),
    ('5678901241', 'Madeline Russell', 2200.00),
    ('6789012353', 'Delilah James', 3200.00),
    ('7890123463', 'Isla Wilson', 2500.00),
    ('8901234574', 'Everleigh Myers', 2800.00),
    ('9012345685', 'Rylee Gonzales', 3000.00),
    ('0123456786', 'Arya Hughes', 1000.00),
    ('1234567897', 'Eloise Griffin', 500.00),
    ('2345678917', 'Lila Hayes', 1500.00),
    ('3456789020', 'Autumn Lee', 2000.00),
    ('4567890131', 'Adeline Brooks', 1800.00),
    ('5678901242', 'Leilani Morgan', 2200.00),
    ('6789012354', 'Emery Jenkins', 3000.00),
    ('7890123464', 'Lyla Perry', 2500.00),
    ('8901234575', 'Sophie Powell', 2800.00),
    ('9012345686', 'Brielle Patterson', 3200.00),
    ('0123456787', 'Jade Torres', 1500.00),
    ('1234567898', 'Melody Sanders', 2200.00),
    ('2345678918', 'London Ramirez', 3200.00),
    ('3456789021', 'Jordyn Lopez', 2500.00),
    ('4567890132', 'Alaina Price', 2800.00),
    ('5678901243', 'Elsie King', 3000.00),
    ('6789012355', 'Raegan Cooper', 1000.00),
    ('7890123465', 'Reagan Howard', 500.00),
    ('8901234576', 'Blakely Ross', 1500.00),
    ('9012345687', 'Gemma Ward', 2000.00),
    ('0123456788', 'Catalina Stewart', 1800.00),
    ('1234567899', 'Kenzie Bailey', 2200.00),
    ('2345678919', 'Gracie Morales', 3000.00),
    ('3456789022', 'Anastasia Reed', 2500.00),
    ('4567890133', 'Maeve Rogers', 2800.00),
    ('5678901244', 'Charlie Cook', 3200.00),
    ('6789012356', 'Tessa Brooks', 1500.00),
    ('7890123466', 'Sienna Lee', 2200.00),
    ('8901234577', 'Ada Perez', 3200.00),
    ('9012345688', 'Camila Hill', 2500.00),
    ('0123456789', 'Talia Carter', 2800.00),
    ('1234567800', 'Adalyn Davis', 3000.00),
    ('2345678920', 'Giselle Miller', 1000.00),
    ('3456789023', 'Dakota Allen', 500.00),
    ('4567890134', 'Arabella Lopez', 1500.00),
    ('5678901245', 'Fiona Phillips', 2000.00),
    ('6789012357', 'Juliet Perez', 1800.00),
    ('7890123467', 'Juniper Sanchez', 2200.00),
    ('8901234578', 'Makenna Roberts', 3000.00),
    ('9012345689', 'Saylor Clark', 2500.00),
    ('0123456790', 'Adelyn Hughes', 2800.00),
    ('1234567801', 'Lennon Russell', 3200.00),
    ('2345678921', 'Alyssa Jenkins', 1500.00),
    ('3456789024', 'Selena Edwards', 2200.00),
    ('4567890135', 'Harmony Adams', 3200.00),
    ('5678901246', 'Alison Bell', 2500.00),
    ('6789012358', 'Sabrina Young', 2800.00),
    ('7890123468', 'Kaitlyn Nelson', 3000.00),
    ('8901234579', 'Fatima Perez', 1000.00),
    ('9012345690', 'Marley Rivera', 500.00),
    ('0123456791', 'Myla Stewart', 1500.00),
    ('1234567802', 'Amina Scott', 2000.00),
    ('2345678922', 'Gabrielle Murphy', 1800.00),
    ('3456789025', 'Jasmine Cox', 2200.00),
    ('4567890136', 'Emersyn Bell', 3000.00),
    ('5678901247', 'Alexandra Rogers', 2500.00),
    ('6789012359', 'Raelynn Myers', 2800.00),
    ('7890123469', 'Brooke Cooper', 3200.00),
    ('8901234580', 'Amaya Powell', 1500.00),
    ('9012345691', 'Lila Walker', 2200.00),
    ('0123456792', 'Sarai Baker', 3200.00),
    ('1234567803', 'Ariella Johnson', 2500.00),
    ('2345678923', 'Daniela Thompson', 2800.00),
    ('3456789026', 'Phoenix White', 3000.00),
    ('4567890137', 'Daleyza Martin', 1000.00),
    ('5678901248', 'Tatum Perez', 500.00),
    ('6789012360', 'Palmer Lee', 1500.00),
    ('7890123470', 'Kaylee Ramirez', 2000.00),
    ('8901234581', 'Angelina Lewis', 1800.00),
    ('9012345692', 'Leighton Brown', 2200.00),
    ('0123456793', 'Lilliana Davis', 3000.00),
    ('1234567804', 'Malani Rivera', 2500.00),
    ('2345678924', 'Nina Mitchell', 2800.00),
    ('3456789027', 'Adelaide Carter', 3200.00),
    ('4567890138', 'Makenzie Green', 1500.00),
    ('5678901249', 'Emelia Campbell', 2200.00),
    ('6789012361', 'Octavia Lopez', 3200.00),
    ('7890123471', 'Ophelia Harris', 2500.00),
    ('8901234582', 'Evangeline Lee', 2800.00),
    ('9012345693', 'Remi Wright', 3000.00),
    ('0123456794', 'Leona Kelly', 1000.00),
    ('1234567805', 'Celine Garcia', 500.00),
    ('2345678925', 'Jolene Sanchez', 1500.00),
    ('3456789028', 'Alivia Lewis', 2000.00),
    ('4567890139', 'Sutton Martinez', 1800.00),
    ('5678901250', 'Remington Clark', 2200.00),
    ('6789012362', 'Harlow Walker', 3000.00),
    ('7890123472', 'Aurelia Hall', 2500.00),
    ('8901234583', 'Macie Rodriguez', 2800.00),
    ('9012345694', 'Dahlia Young', 3200.00),
    ('0123456795', 'Lyric Allen', 1500.00),
    ('1234567806', 'Alaya Hernandez', 2200.00),
    ('2345678926', 'Alicia King', 3200.00),
    ('3456789029', 'Winter Gonzalez', 2500.00),
    ('4567890140', 'Kendra Wright', 2800.00),
    ('5678901251', 'Selah Anderson', 3000.00);

CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    username VARCHAR(70) NOT NULL,
    password VARCHAR(70) NOT NULL,
    role VARCHAR(30) NOT NULL
);

INSERT INTO users (username, password, role) VALUES 
    ('consultor', 'senha_123456', 'consultor de investimento'),
    ('gerente', 'senha_654321', 'gerente administrativo'),
    ('geral', 'senha_1234567', 'gerente geral');

-- Funções para diferentes níveis de acesso
CREATE FUNCTION consultar_contas() RETURNS TABLE(id INT, account_number VARCHAR, account_holder VARCHAR, balance DECIMAL) AS $$
BEGIN
  RETURN QUERY SELECT * FROM accounts;
END;
$$ LANGUAGE plpgsql;

CREATE FUNCTION depositar(numero_conta VARCHAR, valor DECIMAL) RETURNS VOID AS $$
BEGIN
  UPDATE accounts SET balance = balance + valor WHERE account_number = numero_conta;
END;
$$ LANGUAGE plpgsql;

CREATE FUNCTION sacar(numero_conta VARCHAR, valor DECIMAL) RETURNS VOID AS $$
BEGIN
  UPDATE accounts SET balance = balance - valor WHERE account_number = numero_conta;
END;
$$ LANGUAGE plpgsql;

-- Permissões para os usuários
GRANT EXECUTE ON FUNCTION consultar_contas() TO consultor;
GRANT EXECUTE ON FUNCTION depositar(VARCHAR, DECIMAL) TO gerente;
GRANT EXECUTE ON FUNCTION sacar(VARCHAR, DECIMAL) TO geral;

-- Procedimento de backup diário
CREATE OR REPLACE FUNCTION backup_diario() RETURNS VOID AS $$
DECLARE
  backup_nome TEXT := format('backup_%s.sql', to_char(now(), 'YYYYMMDD_HH24MI'));
BEGIN
  EXECUTE format('pg_dump -U %s -F c -b -v -f /var/lib/postgresql/data/%s %s', current_user, backup_nome, current_database());
END;
$$ LANGUAGE plpgsql;

-- Agendamento do backup diário
DO $$
BEGIN
  PERFORM cron.schedule('backup_diario', '0 0 * * *', 'CALL backup_diario()');
END;
$$;