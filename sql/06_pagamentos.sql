create table pagamentos (
    id uuid primary key default gen_random_uuid(),

    agendamento_id uuid not null,

    valor decimal(10,2) not null,

    forma_pagamento varchar(50),

    data_pagamento timestamp default now(),

    status varchar(20) default 'pago',

    constraint fk_agendamento_pagamento
        foreign key (agendamento_id)
        references agendamentos(id)
);
