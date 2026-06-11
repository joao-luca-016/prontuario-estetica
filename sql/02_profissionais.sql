create table profissionais (
    id uuid primary key default gen_random_uuid(),
    nome varchar(200) not null,
    conselho varchar(50),
    especialidade varchar(100),
    telefone varchar(20),
    email varchar(200),
    created_at timestamp default now()
);
