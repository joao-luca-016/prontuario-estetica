CREATE TABLE usuarios (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),

    nome VARCHAR(200) NOT NULL,
    email VARCHAR(200) UNIQUE NOT NULL,
    senha_hash TEXT NOT NULL,

    perfil VARCHAR(50) NOT NULL,
    
    ativo BOOLEAN DEFAULT TRUE,

    created_at TIMESTAMP DEFAULT NOW()
);
