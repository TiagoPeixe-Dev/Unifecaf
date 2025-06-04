create database faculdade;
use faculdade;

create table tbl_aluno(
id_aluno int not null primary key auto_increment,
nota int not null,
email varchar(45) not null,
nome varchar (45) not null
);

create table tbl_professor(
id_professor int not null primary key auto_increment,
nome varchar(45) not null,
materia varchar (45) not null,
email varchar (45) not null
);

create table tbl_curso(
id_curso int not null auto_increment primary key,
nome varchar(45) not null,
turma varchar(45) not null,
periodo int not null,
modalidade varchar(45) not null,
id_aluno int,
id_professor int,
foreign key (id_professor) references tbl_professor (id_professor),
foreign key (id_aluno) references tbl_aluno (id_aluno)
);
