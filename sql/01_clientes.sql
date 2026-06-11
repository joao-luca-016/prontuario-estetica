create table clientes (
    id uuid primary key default gen_random_uuid(),
    nome varchar(200) not null,
    cpf varchar(14) unique,
    telefone varchar(20),
    email varchar(200),
    data_nascimento date,
    endereco text,
    observacoes text,
    created_at timestamp default now()
);
