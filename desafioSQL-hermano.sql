CREATE DATABASE desafio;

USE desafio;

	CREATE TABLE clientes (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(50),
    email VARCHAR(50)
);

CREATE TABLE pedidos (
    id INT PRIMARY KEY AUTO_INCREMENT,
    data_pedido DATE,
    valor_total DECIMAL(10,2),
    cliente_id INT,
    FOREIGN KEY (cliente_id) REFERENCES clientes(id)
);

CREATE TABLE ato_pedido (
    id INT PRIMARY KEY AUTO_INCREMENT,
    tipo_de_pedido VARCHAR(50),
    como_vai_trazer_o_pedido VARCHAR(100),
    pedido_id INT,
    FOREIGN KEY (pedido_id) REFERENCES pedidos(id)
);

ALTER TABLE clientes
ADD COLUMN telefone VARCHAR(30);

INSERT INTO clientes (nome, email, telefone) VALUES
('Augusto dos Anjos', 'Augustinhoanjinho@yahoo.com', '(83) 91884-1914'),
('Clarice Lispector', 'Lispectorintro@gmail.com', '(21) 91920-1977'),
('Guimarães Rosa', 'Rosavederas@outlook.com', '(32) 91908-1967'),
('Rachel de Queiroz', 'Rachaeldosquinze@gmail.com', '(85) 91910-2003');

INSERT INTO pedidos (data_pedido, valor_total, cliente_id) VALUES
('1904-03-30', 650.00, 1),
('1924-09-27', 50.00, 2),
('1964-06-09', 100.00, 3),
('1999-12-18', 1000000.00, 4);

INSERT INTO ato_pedido (tipo_de_pedido, como_vai_trazer_o_pedido, pedido_id) VALUES
('Remédio para tuberculose', 'Vai trazer de mula, filho do carbono e amoníaco', 1),
('Traz um cigarrinho', 'Não tenho preferência na maneira de entrega, eu só não quero eles molhados', 2),
('Quero uma versão nova do Fausto de Goethe', 'Pode ser de charrete, aproveita e veja os montes de minas', 3),
('Eu quero que você acabe com a seca do Ceará', 'Preferência de avião, aproveita e joga a água lá de cima', 4);

SELECT * FROM clientes;

SELECT * FROM pedidos;

SELECT * FROM ato_pedido;