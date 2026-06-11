CREATE TABLE anamneses (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),

    cliente_id UUID NOT NULL,

    data_anamnese TIMESTAMP DEFAULT NOW(),

    hipertensao BOOLEAN DEFAULT FALSE,
    diabetes BOOLEAN DEFAULT FALSE,
    gestante BOOLEAN DEFAULT FALSE,

    alergias TEXT,
    medicamentos_em_uso TEXT,

    historico_cirurgico TEXT,
    observacoes TEXT,

    CONSTRAINT fk_anamnese_cliente
        FOREIGN KEY (cliente_id)
        REFERENCES clientes(id)
);
