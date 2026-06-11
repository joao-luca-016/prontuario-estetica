create table agendamentos (
    id uuid primary key default gen_random_uuid(),

    cliente_id uuid not null,
    profissional_id uuid not null,
    procedimento_id uuid not null,

    data_hora timestamp not null,

    status varchar(20) default 'agendado',

    observacoes text,

    created_at timestamp default now(),

    constraint fk_cliente
        foreign key (cliente_id)
        references clientes(id),

    constraint fk_profissional
        foreign key (profissional_id)
        references profissionais(id),

    constraint fk_procedimento
        foreign key (procedimento_id)
        references procedimentos(id)
);
