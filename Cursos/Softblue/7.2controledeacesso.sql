#--- Criando usuários

# CREATE USER "nome de usuário" @ "local" IDENTIFIED BY "usuário";

# CREATE USER "rafael"@"200.200.190.190" IDENTIFIED BY "rafael1234";
CREATE USER "rafael"@"local.host" IDENTIFIED BY "rafael1234"; # Acesso somente ao computador 
# CREATE USER "rafael"@"%" IDENTIFIED BY "rafael1234"; # Acesso a qualquer lugar

GRANT ALL ON curso_sql.* TO "rafael"@"local.host";

CREATE USER "rafael"@"%" identified by "rafaelviagem";
GRANT SELECT ON curso_sql.* TO "rafael"@"%";

GRANT INSERT ON curso_sql.funcionarios TO "rafael"@"%";


#--- Removendo acesso

REVOKE SELECT ON curso_sql.funcionarios FROM "rafael"@"%";
REVOKE SELECT ON curso_sql.veiculo FROM "rafael"@"%";

REVOKE ALL ON curso_sql.* FROM "rafael"@"local.host";

DROP USER "rafael"@"%";
DROP USER "rafael"@"local.host";


SELECT User FROM mysql.user;
SHOW GRANTS FOR "rafael"@"local.host";