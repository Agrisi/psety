CREATE TABLE lojas (
                loja_id NUMERIC(38) NOT NULL,
                nome VARCHAR(255) NOT NULL,
                CONSTRAINT loja_id PRIMARY KEY (loja_id)
);
COMMENT ON TABLE lojas IS 'Tabela que contém as informações das lojas.';
COMMENT ON COLUMN lojas.loja_id IS 'Coluna com o número de identificação das lojas.';
COMMENT ON COLUMN lojas.nome IS 'Coluna que contém o nome das lojas.';


CREATE TABLE clientes (
                cliente_id NUMERIC(38) NOT NULL,
                email VARCHAR(255) NOT NULL,
                nome VARCHAR(255) NOT NULL,
                telefone1 VARCHAR(20),
                telefone2 VARCHAR(20),
                telefpne3 VARCHAR(20),
                CONSTRAINT cliente_id PRIMARY KEY (cliente_id)
);
COMMENT ON TABLE clientes IS 'Tabela que mostra informações sobre os clientes.';
COMMENT ON COLUMN clientes.cliente_id IS 'Coluna com o número de identificação do cliente.
';
COMMENT ON COLUMN clientes.email IS 'Coluna que contém o email do cliente.
';
COMMENT ON COLUMN clientes.nome IS 'Coluna que contém o nome dos clientes.
';
COMMENT ON COLUMN clientes.telefone1 IS 'Coluna contendo um número de telefone que o cliente tem acesso.';
COMMENT ON COLUMN clientes.telefone2 IS 'Coluna contendo um número de telefone que o cliente tem acesso.';
COMMENT ON COLUMN clientes.telefpne3 IS 'Coluna contendo um número de telefone que o cliente tem acesso.';


CREATE TABLE pedidos (
                pedido_id NUMERIC(38) NOT NULL,
                data_hora TIMESTAMP NOT NULL,
                cliente_id NUMERIC(38) NOT NULL,
                status VARCHAR(15) NOT NULL,
                loja_id NUMERIC(38) NOT NULL,
                CONSTRAINT pedido_id PRIMARY KEY (pedido_id)
);
COMMENT ON TABLE pedidos IS 'Tabela que mostra os pedidos que foram feitos.
';
COMMENT ON COLUMN pedidos.pedido_id IS 'Coluna que mostra as identificações dos pedidos feitos.';
COMMENT ON COLUMN pedidos.data_hora IS 'Data e hora em que o pedido foi feito.
';
COMMENT ON COLUMN pedidos.cliente_id IS 'Coluna com o número de identificação do cliente.';
COMMENT ON COLUMN pedidos.status IS 'Coluna que contém o status dos pedidos.';
COMMENT ON COLUMN pedidos.loja_id IS 'Coluna com o número de identificação das lojas.';


ALTER TABLE pedidos ADD CONSTRAINT clientes_pedidos_fk
FOREIGN KEY (cliente_id)
REFERENCES clientes (cliente_id)
ON DELETE NO ACTION
ON UPDATE NO ACTION
NOT DEFERRABLE;
