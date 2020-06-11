USE curso_sql;

SELECT * FROM funcionarios;
SELECT * FROM salarios;
SELECT * FROM veiculo;

#--- Inner JOIN

SELECT * FROM funcionarios
INNER JOIN veiculo
ON funcionarios.id = veiculo.funcionario_id;

#--- Left JOIN

SELECT * FROM funcionarios
LEFT JOIN veiculo
ON funcionarios.id = veiculo.funcionario_id;

#--- Right JOIN

SELECT * FROM funcionarios
RIGHT JOIN veiculo
ON funcionarios.id = veiculo.funcionario_id;

INSERT INTO veiculo (funcionario_id, veiculo, placa) VALUES (null, "Moto", "SB-0003");

#--- Full JOIN

SELECT * FROM funcionarios
LEFT JOIN veiculo
ON funcionarios.id = veiculo.funcionario_id
UNION
SELECT * FROM funcionarios
RIGHT JOIN veiculo
ON funcionarios.id = veiculo.funcionario_id;


#--- Equi JOIN

CREATE TABLE cpfs
(
	id int unsigned not null,
    cpf varchar(45) not null,
    PRIMARY KEY (id),
    CONSTRAINT fk_cpf FOREIGN KEY (id) REFERENCES funcionarios (id)
);

SELECT * FROM cpfs;

INSERT INTO cpfs (id, cpf) VALUES (1, "111.111.111-11");
INSERT INTO cpfs (id, cpf) VALUES (2, "222.222.222-22");
INSERT INTO cpfs (id, cpf) VALUES (3, "333.333.333-33");
INSERT INTO cpfs (id, cpf) VALUES (5, "555.555.555-55");

SELECT * FROM funcionarios
INNER JOIN cpfs 
ON funcionarios.id = cpfs.id;

SELECT * FROM funcionarios
INNER JOIN cpfs
USING (id);


#--- SELF Join

CREATE TABLE clientes
(
	id int unsigned not null auto_increment,
    nome varchar(45) not null,
    quem_indicou int unsigned,
    PRIMARY KEY (id),
    CONSTRAINT fk_quem_indicou FOREIGN KEY (quem_indicou) REFERENCES clientes (id)
);

SELECT * FROM clientes;

INSERT INTO clientes (id, nome, quem_indicou) VALUES (1, "André", NULL);
INSERT INTO clientes (id, nome, quem_indicou) VALUES (2, "Samuel", 1);
INSERT INTO clientes (id, nome, quem_indicou) VALUES (3, "Carlos", 2);
INSERT INTO clientes (id, nome, quem_indicou) VALUES (4, "Rafael", 1);

SELECT c1.nome AS "Nome", c2.nome AS "Quem indicou" FROM clientes AS c1
JOIN clientes AS c2
ON c1.quem_indicou = c2.id;

#--- Relacionamento com três ou mais tabelas 

SELECT * FROM funcionarios AS f
INNER JOIN veiculo AS v
ON f.id = v.funcionario_id
INNER JOIN cpfs
ON cpfs.id = f.id;


#--- Visões

CREATE VIEW funcionarios_a AS 
SELECT * FROM funcionarios WHERE salario >= 1800;

SELECT * FROM funcionarios_a;

UPDATE funcionarios SET salario = 1500 WHERE ID = 3;

DROP VIEW funcionarios_a;

CREATE VIEW funcionarios_a AS 
SELECT * FROM funcionarios WHERE salario >= 1700;