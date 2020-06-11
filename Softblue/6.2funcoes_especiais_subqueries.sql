USE curso_sql;

SELECT * FROM funcionarios;

SELECT COUNT(*) FROM funcionarios;
SELECT COUNT(*) FROM funcionarios WHERE salario > 2000;
SELECT COUNT(*) FROM funcionarios WHERE salario > 2000 AND departamento = "Jurídico";
SELECT * FROM funcionarios WHERE salario > 2000 AND departamento = "Jurídico";

#--- Soma do salário

SELECT SUM(salario) FROM funcionarios;
SELECT SUM(salario) FROM funcionarios WHERE departamento = "TI";

#--- Média do salário

SELECT AVG(salario) FROM funcionarios;
SELECT AVG(salario) FROM funcionarios WHERE departamento = "TI";

#--- Máximo

SELECT MAX(salario) FROM funcionarios;
SELECT MAX(salario) FROM funcionarios WHERE departamento = "TI";

#--- Mínimo

SELECT MIN(salario) FROM funcionarios;
SELECT MIN(salario) FROM funcionarios WHERE departamento = "TI";

#--- Valores únicos

SELECT departamento FROM funcionarios;
SELECT DISTINCT(departamento) FROM funcionarios;


#--- Ordenação

SELECT * FROM funcionarios;
SELECT * FROM funcionarios ORDER BY nome;
SELECT * FROM funcionarios ORDER BY salario DESC;
SELECT * FROM funcionarios ORDER BY salario DESC, departamento DESC;

#--- Paginação

SELECT * FROM funcionarios;
SELECT * FROM funcionarios LIMIT 2; # head
SELECT * FROM funcionarios LIMIT 1, 2; # skip 


#--- Agrupamento

SELECT AVG(salario) AS "Média Salário", departamento AS "Departamento" FROM funcionarios 
GROUP BY departamento;

SELECT AVG(salario) AS media_salario, departamento FROM funcionarios 
GROUP BY departamento
HAVING media_salario > 2000;

SELECT departamento, COUNT(*) FROM funcionarios
GROUP BY departamento;


#--- Subqueries

SELECT nome FROM funcionarios WHERE departamento
IN ("TI", "Jurídico");

SELECT nome FROM funcionarios WHERE departamento
IN (
SELECT departamento FROM funcionarios
GROUP BY departamento 
HAVING AVG(salario) > 2000
);