CREATE TABLE fotos_procedimento (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),

    cliente_id UUID NOT NULL,

    agendamento_id UUID,

    tipo_foto VARCHAR(20) NOT NULL,

    url_foto TEXT NOT NULL,

    data_upload TIMESTAMP DEFAULT NOW(),

    observacoes TEXT,

    CONSTRAINT fk_foto_cliente
        FOREIGN KEY (cliente_id)
        REFERENCES clientes(id),

    CONSTRAINT fk_foto_agendamento
        FOREIGN KEY (agendamento_id)
        REFERENCES agendamentos(id)
);
