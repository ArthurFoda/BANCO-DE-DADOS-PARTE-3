drop table if exists Cidades,Alunos;

create table Cidades (
id int  primary key,
nome varchar(60)  not null,
populacao int
);

create table Alunos (
id	int  primary key,
nome varchar(60) not null,
data_nasc date,
cidade_id int,
foreign key(cidade_id) references Cidades(id)
);

insert into Cidades values (1, 'Arraial dos Tucanos',42632);
insert into Cidades values (2, 'Springfield',13820);
insert into Cidades values (3, 'Hill Valley',27383);
insert into Cidades values (4, 'Coruscant',19138);
insert into Cidades values (5, 'Minas Tirith',31394);
insert into Alunos values ( 1, 'Immanuel Kant', date'1724-04-22', 4);
insert into Alunos values ( 2, 'Alan Turing', date'1912-06-23', 3);
insert into Alunos values ( 3, 'George Boole', date'2002-01-01', 1);
insert into Alunos values ( 4, 'Lynn Margulis', date'1991-08-12', 3);
insert into Alunos values ( 5, 'Nicola Tesla', date'2090-01-08', null);
insert into Alunos values ( 6, 'Ada Lovelace', date'1978-05-28', 4);
insert into Alunos values ( 7,'Claude Shannon', date'1982-10-15', 3);
insert into Alunos values ( 8, 'Charles Darwin', date'2010-02-06', null);
insert into Alunos values ( 9, 'Marie Curie', date'2007-07-12', 3);
insert into Alunos values (10, 'Carl Sagan', date'2000-11-20', 1);
insert into Alunos values (11, 'Tim Berners-Lee', date'1973-12-05', 4);
insert into Alunos values (12, 'Richard Feynman', date'1982-09-12', 1);

