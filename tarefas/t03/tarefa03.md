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

## Resumo sobre ORM na linguagem que escolheu

<p align="justify">
  Um ORM é simplismente um Mapeador de Objetos Relacionais que ajuda na manipulação de dados e consultas por meio do uso de objetos do banco de dados. Usar um ORM otimiza consultas SQL tornando-as mais fáceis de serem reutilizadas e mantidas.
  
</p>

<p align="justify">
  O Javascript  permite a utilização de ORMs facilitando assim a escrita de código SQL por meio de funções prontas disponíveis em uma biblioteca. O que o ORM faz é, basicamente, transformar models em tabelas no banco de dados, além de permitir construir querys usando diretamente por meio de métodos fornecidos pelo ORM ao invés de SQL puro.
</p>

## Sequelize ORM

<p align="justify">
  Sequelize é um modulo Node.js open-source que permite aos desenvolvedores JavaScript trabalhar com banco de dados relacionais mais fácilmente.
</p>

### Benefícios do Sequelize
- Sequelize nos permite escrever menos código;
- Nos permite escrever um código mais consistente;
- Você pode evitar na maioria dos casos consultas SQL.

