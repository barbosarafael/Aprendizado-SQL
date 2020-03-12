--- Leve resumo de expressões lógicas:

-- Igualdade: =
-- Diferença: <> 
-- Menor que: <= 
-- Maior que: >=
-- Entre (Between): BETWEEN
-- Like: O operador LIKE permite comparar o valor de uma coluna com uma sequências de caracteres.
-- IN: Com o operador IN podemos criar uma lista de valores que serão comparados com o valor na coluna. 
-- E: AND
-- Ou: OR


--- Alteração dos tipos de dados

ALTER TABLE 
	iris 
ALTER COLUMN 
	SepalLength 
	real

ALTER TABLE 
	iris 
ALTER COLUMN 
	SepalWidth 
	real

ALTER TABLE 
	iris 
ALTER COLUMN 
	PetalLength 
	real

ALTER TABLE 
	iris 
ALTER COLUMN 
	PetalWidth
	real


-----------------------------------------

--- Comando: SELECT

-- Seleciona todas as colunas que tem no dataset 

SELECT * FROM iris

-----------------------------------------

-- Seleciona somente a coluna SepalLength

SELECT SepalLength FROM iris

-----------------------------------------

-- Seleciona algumas colunas

SELECT SepalLength, TrainingClass FROM iris 


-----------------------------------------

-- Seleciona algumas colunas com o WHERE filtrando o TrainingClass

SELECT 
	SepalLength,
	SepalLength, 
	TrainingClass
FROM 
	iris
WHERE 
	TrainingClass = 'Iris-setosa'

-----------------------------------------

-- Pegar todas as colunas, onde o TrainingClass é setosa e SepalLength é maior que 5


SELECT 
	* 
FROM 
	iris
WHERE 
	TrainingClass = 'Iris-setosa' AND
	SepalLength > 5

-----------------------------------------

-- Mudança nos nomes das variáveis

SELECT 
	SepalWidth AS sepala_largura,
	SepalLength AS sepala_comprimento, 
	PetalWidth AS petala_largura, 
	PetalLength AS petala_comprimento,
	TrainingClass AS classe
FROM 
	iris

-----------------------------------------

