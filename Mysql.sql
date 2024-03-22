Create Database Laboratorio;
Use Laboratorio; 
create table autor (Codigo_Autor integer not null, Nome_autor Varchar(50) null);
Alter table autor add (primary key (Codigo_autor));

Create table CD
(Codigo_CD integer not null, Codigo_Gravadora integer null,Nome_CD Varchar(60) Null,Preco_venda decimal(16,2) Null,Data_lancamento Date Null,CD_indicado integer null);

Alter table CD
Add (Primary key (Codigo_CD)); 

Create table Gravadora (Codigo_Gravadora integer not null, Nome_Gravadora varchar(60) null, Endereço varchar(60) null, Telefone varchar(20) null, Contato varchar(20), URL varchar(80));

Alter table Gravadora
Add (Primary key (Codigo_Gravadora));

Create table faixa(
codigo_musica integer not null,
codigo_cd integer not null,
numero_faixa integer null,
codigo_faixa integer primary key not null);

create table musica (
codigo_musica integer not null,
nome_musica varchar(60) null,
duracao decimal(6,2) null);

alter table musica 
add (primary key (Codigo_Musica));
/*Comentario do banco*/
create table musica_autor (
codigo_musica integer not null,
codigo_autor integer not null,
codigo_musica_autor integer not null);

alter table musica_autor
add (primary key (codigo_musica_autor));

create table cd_categoria (
codigo_categoria integer not null,
menor_preco decimal(14,2)not null,
maior_preco decimal(14,2)not null);

alter table cd_categoria
add (primary key (codigo_categoria));

ALTER TABLE CD 
ADD CONSTRAINT fk_gravadora FOREIGN KEY (codigo_gravadora) REFERENCES gravadora 
( codigo_gravadora ) ;

Alter table Faixa
Add constraint fk_Faixa_Musica foreign key
(codigo_musica) references musica (codigo_musica);

Alter table faixa 
Add constraint fk_faixa_CD foreign key 
(codigo_cd) references CD (codigo_cd);

Alter table musica_autor
Add constraint fk_musica_autor foreign key (codigo_autor) references autor (codigo_autor);

Alter table musica_autor
Add constraint fk_musica_musica foreign key 
(codigo_musica) references musica (codigo_musica);




