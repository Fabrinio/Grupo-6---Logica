

CREATE TABLE Funcionario (
    id_funcionario SERIAL PRIMARY KEY,
    Nome VARCHAR(40) NOT NULL,
    cpf CHAR(11) NOT NULL UNIQUE
);
CREATE TABLE endereco (
    cadastro_endereco SERIAL PRIMARY KEY,
    rua VARCHAR(40),
    numero VARCHAR(20),
    bairro VARCHAR(20),
    cep VARCHAR(20) NOT NULL,
    complemento VARCHAR(20),
    cidade VARCHAR(20)
);
CREATE TABLE Categoria (
    id_categoria SERIAL PRIMARY KEY,
    Tipo VARCHAR(20),
    Descricao VARCHAR(40)
);

CREATE TABLE Produto (
    id_produto SERIAL PRIMARY KEY,
    nome VARCHAR(40),
    descricao VARCHAR(40),
    quant_estoque NUMERIC,
    data_fabricacao DATE,
    valor_unitario NUMERIC NOT NULL,
    id_categoria SERIAL,
	FOREIGN KEY (id_categoria) REFERENCES Categoria (id_categoria)
	ON UPDATE CASCADE ON DELETE NO ACTION
);


CREATE TABLE Pedido (
    id_pedido SERIAL PRIMARY KEY,
    produtos VARCHAR(40),
    data_pedido DATE,
    id_cliente INT,
	FOREIGN KEY (id_cliente) REFERENCES Cliente (id_cliente)
    ON UPDATE CASCADE ON DELETE NO ACTION
);

CREATE TABLE Cliente (
    id_cliente INT PRIMARY KEY,
    nome_completo VARCHAR(40) NOT NULL,
    nome_usuario VARCHAR(40) NOT NULL UNIQUE,
    email VARCHAR(40) NOT NULL,
    cpf CHAR(11),
    data_nascimento DATE,
    cadastro_endereco SERIAL,
	FOREIGN KEY (cadastro_endereco) REFERENCES endereco (cadastro_endereco)
    ON UPDATE CASCADE ON DELETE NO ACTION
);

CREATE TABLE Itens_Pedido (
    codigo_itemPedido SERIAL PRIMARY KEY,
    desconto NUMERIC,
    quantidade NUMERIC,
    id_pedido SERIAL,
    id_produto SERIAL,
    FOREIGN KEY (id_pedido) REFERENCES Pedido (id_pedido) ON UPDATE CASCADE 
	ON DELETE NO ACTION,
    FOREIGN KEY (id_produto) REFERENCES Produto (id_produto)
    ON UPDATE CASCADE ON DELETE NO ACTION
);



CREATE TABLE Cadastro_Produto (
    id_funcionario SERIAL,
    id_produto SERIAL,
    FOREIGN KEY (id_funcionario) REFERENCES Funcionario (id_funcionario)
	ON UPDATE CASCADE ON DELETE NO ACTION,
    FOREIGN KEY (id_produto) REFERENCES Produto (id_produto)
    ON UPDATE CASCADE ON DELETE NO ACTION
);