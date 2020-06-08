CREATE DATABASE curso_sql;

#--- Sempre utilizar o USE: ele seleciona o banco para que todas as operações sejam realizadas nele

USE curso_sql;

#--- Construindo uma tabela de funcionários: ID, Nome do funcionário, Salário e Departamento

CREATE TABLE funcionarios
(
	id int unsigned not null auto_increment,
    nome varchar(45) not null,
    salario double not null default "0",
    departamento varchar(45) not null,
    primary key(id)
);

CREATE TABLE veiculo
(
	id int unsigned not null auto_increment,
    funcionario_id int unsigned default null, 
    veiculo varchar(45) not null default "",
    placa varchar(10) not null default "",
    primary key(id),
    constraint fk_veiculos_funcionarios foreign key(funcionario_id) references funcionarios (id)
);

CREATE TABLE salarios
(
	faixa varchar(45) not null,
    inicio double not null,
    fim double not null,
    primary key(faixa)
);


#--- Alterar o tipo de campo e o tipo de dado:

ALTER TABLE funcionarios CHANGE COLUMN nome nome_func varchar(45) not null;
ALTER TABLE funcionarios CHANGE COLUMN nome_func nome varchar(45) not null;

SELECT * FROM funcionarios;

#--- Excluindo a tabela salarios

DROP TABLE salarios;

SELECT * FROM salarios; # Não existe mais


#--- Índices

CREATE INDEX departamentos ON funcionarios(departamento);
CREATE INDEX nomes ON funcionarios(nome(6));