create table evolucoes (
    id uuid primary key default gen_random_uuid(),

    cliente_id uuid not null,
    profissional_id uuid not null,

    data_evolucao timestamp default now(),

    descricao text not null,

    constraint fk_cliente_evolucao
        foreign key (cliente_id)
        references clientes(id),

    constraint fk_profissional_evolucao
        foreign key (profissional_id)
        references profissionais(id)
);
