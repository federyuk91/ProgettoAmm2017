/*User Federico, Password Amm2017*/

create schema nerdbook;

create table nerdbook.utente(
	id int primary key,
	nome varchar(32) not null, 
	cognome varchar(32) not null,
        presentazione varchar(2048),
	email varchar(128) not null,
	password varchar(32) not null,
	urlFotoProfilo varchar(1024),
	status boolean not null
);

create table nerdbook.post(
	id int primary key,
	user int not null on delete cascade on update cascade,
	content varchar(2048) not null,
	postType enum,
	foreign key(user)
);

create table nerdbook.Gruppi(
	nomeGruppo varchar(64) primary key,
	utentiGruppo int not null
);