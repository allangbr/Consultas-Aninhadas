## Scripts

### ODBC 

- [Conexão ODBC](js/db.js)
- [Questão 05 - Letra a)](js/insert.js)
- [Questão 05 - Letra b)](js/update.js)
- [Questão 05 - Letra c)](js/select.js)

### ORM 

- [Model Funcionário](orm/funcionario.js)
- [Model Departamento](orm/departamento.js)
- [Model Projeto](orm/projeto.js)
- [Model Atividade](orm/atividade.js)
- [Conexão ORM](orm/db.js)
- [Questão 06](orm/index.js)

## Resumo sobre ODBC na linguagem que escolheu

<p align="justify">
  Como o JavaScript puro não consegue fazer uma conexão com um banco de dados, usamos o node juntamente com o drive do banco de dados desejado para realizar a conexão. Para se conectar a um banco de dados e recuperar dados usando a linguagem de programação JavaScript, você precisa apenas de algumas funções:
</p>

- função connect() para criar uma conexão com o banco de dados;
- função query() para executar uma instrução sql;
- função end() para finalizar a conexão com o banco de dados.
