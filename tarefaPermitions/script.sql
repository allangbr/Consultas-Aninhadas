#Questão 01
CREATE ROLE administrador;

ALTER ROLE administrador WITH LOGIN SUPERUSER CREATEDB CREATEROLE INHERIT;

#Questão 02

CREATE ROLE usu WITH LOGIN SUPERUSER CREATEDB CREATEROLE INHERIT;

ALTER ROLE usu RENAME TO administrador2;

ALTER ROLE administrador2 PASSWORD 'admin';
