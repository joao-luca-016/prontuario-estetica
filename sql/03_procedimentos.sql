create table procedimentos (
    id uuid primary key default gen_random_uuid(),
    nome varchar(150) not null,
    descricao text,
    valor decimal(10,2) not null,
    duracao_minutos integer,
    ativo boolean default true,
    created_at timestamp default now()
);
