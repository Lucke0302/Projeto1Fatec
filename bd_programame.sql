create database programa_me default charset utf8;
use programa_me;

select current_timestamp();

DELIMITER $$

create procedure teste()
	begin
		select * from usuario;
    end $$

DELIMITER ;

create table usuario(
	id int not null auto_increment,
    nome varchar(100) not null,
    email varchar(100) not null,
    senha varchar(256) not null,
    cpf varchar(11) not null,
    tipo enum ('u', 'd', 'a') not null,
    dtNasc date not null,
    dtCad datetime not null default current_timestamp,
    notaUsuario double not null default 5,    
    primary key(id)
);

create table 