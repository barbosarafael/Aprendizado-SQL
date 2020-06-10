USE curso_sql;

#--- Criando uma linha com as informações

INSERT INTO funcionarios(id, nome, salario, departamento) VALUES (1, "Fernando", 1400, "TI");
INSERT INTO funcionarios(id, nome, salario, departamento) VALUES (2, "Guilherme", 2500, "Jurídico");
INSERT INTO funcionarios(nome, salario, departamento) VALUES ("Fábio", 1700, "TI");
INSERT INTO funcionarios(nome, salario, departamento) VALUES ("José", 1800, "Marketing");
INSERT INTO funcionarios(nome, salario, departamento) VALUES ("Isabela", 2200, "Jurídico");

#--- Selecionando todas as colunas

SELECT * FROM funcionarios;
SELECT * FROM funcionarios WHERE salario > 2000;
SELECT * FROM funcionarios WHERE nome = "José";
SELECT * FROM funcionarios WHERE id = 3;

UPDATE funcionarios SET salario = salario * 1.1; # Erro
UPDATE funcionarios SET salario = salario * 1.1 WHERE id = 1; # Dá certo

SELECT * FROM funcionarios;


SET SQL_SAFE_UPDATES = 0;
# SET SQL_SAFE_UPDATES = 1;
UPDATE funcionarios SET salario = salario * 1.1;
SELECT * FROM funcionarios;

UPDATE funcionarios SET salario = ROUND(salario * 1.1, 2);
SELECT * FROM funcionarios;

DELETE FROM funcionarios WHERE id = 4;
SELECT * FROM funcionarios;


#--- Criando veículos

INSERT INTO veiculo (funcionario_id, veiculo, placa) VALUES (1, "Carro", "SB-0001");
INSERT INTO veiculo (funcionario_id, veiculo, placa) VALUES (1, "Carro", "SB-0002");

UPDATE veiculo SET funcionario_id = 5 WHERE id = 2;

SELECT * FROM veiculo;

#--- Criando salarios

INSERT INTO salarios (faixa, inicio, fim) VALUES ("Analista Jr", 1000, 2000);
INSERT INTO salarios (faixa, inicio, fim) VALUES ("Analista Pl", 2000, 4000);

SELECT * FROM salarios;


#--- Apelidos

SELECT * FROM funcionarios AS func WHERE func.salario > 2000;
SELECT nome, salario FROM funcionarios AS func WHERE func.salario > 2000;
SELECT nome AS "Funcionário", salario AS "Salário" FROM funcionarios AS func WHERE func.salario > 2000;

#--- Union

SELECT * FROM funcionarios WHERE nome = "Guilherme";
SELECT * FROM funcionarios WHERE id = 5;

SELECT * FROM funcionarios WHERE nome = "Guilherme"
UNION
SELECT * FROM funcionarios WHERE id = 5;

SELECT * FROM funcionarios WHERE nome = "Guilherme"
UNION 
SELECT * FROM funcionarios WHERE nome = "Guilherme";

SELECT * FROM funcionarios WHERE nome = "Guilherme"
UNION ALL
SELECT * FROM funcionarios WHERE nome = "Guilherme";