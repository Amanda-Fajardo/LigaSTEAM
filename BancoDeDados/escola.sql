create DATABASE escola;

use escola;

create table aluno (
    id int AUTOINCREMENT PRIMARY KEY,
    nome varchar(100) not null,
    email varchar (100),
    endereco varchar (255)
);