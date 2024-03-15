create schema practica_sql;
use practica_sql;
----
create table orchestras(
	id_orchestra int primary key auto_increment,
    name varchar(100) not null,
    rating dec(3,1),
    city_origin varchar(32) not null,
    country_origin varchar(32) not null,
    year int not null
);

insert into orchestras (name, rating, city_origin, country_origin, year) 
values ('Orquesta filarmónica de Santiago', 9.5, 'Santiago', 'Chile', 1955),
		('Orquesta filarmónica de Viena', 9.8, 'Viena', 'Austria', 1841),
		('Orquesta Real del Concertgebouw', 10, 'Amsterdam', 'Paises Bajos', 1888),
		('Orquesta de la Cámara Inglesa', 9.4, 'Londres', 'Reino Unido', 1948);
        
create table members(
	id_members int primary key auto_increment,
    name varchar(64) not null,
    position varchar(32) not null,
    experience int not null,
    id_orchestra int,
    wage int not null,
    foreign key (id_orchestra) references orchestras(id_orchestra)
);

insert into members (name, position, experience, id_orchestra, wage) 
values ('Alberto Dourthé', 'Violin', 25, 1, 7500000),
		('Héctor Viveros', 'Violin', 12, 1, 4700000),
        ('Becerra Gisella Plaza Nicolás', 'Violonchelo', 14, 2, 5300000),
        ('James J. Cooper III', 'Violonchelo', 26, 1, 8100000),
        ('Luis Alberto Latorre', 'Piano', 14, 2, 5300000),
        ('Maria Chiossi ', 'Arpa', 11, 2, 4900000),
        ('Cristián Errandonea', 'Contrabajo', 8, 3, 2900000),
        ('Héctor Leyton', 'Contrabajo', 14, 3, 5100000),
        ('Erika Sawczak', 'Violin', 12, 2, 4700000),
        ('Daniel Zelaya', 'Violin', 13, 1, 4900000),
        ('Marcelo Barraza', 'Percusión', 22, 3, 6900000),
        ('Ricardo Vivanco', 'Percusión', 14, 3, 5300000);

create table concerts(
	id_concerts int primary key auto_increment,
    city varchar(64) not null,
    country varchar(32) not null ,
    year int not null,
    rating dec(3,1) not null,
    id_orchestra int,
    foreign key (id_orchestra) references orchestras(id_orchestra)
);

insert into concerts (city, country, year, rating, id_orchestra) 
values ('Santiago', 'Chile', '2024', 9.5, 1),
		('Valparaiso', 'Chile', '2013', 8.4, 2),
		('Buenos Aires', 'Argentina', '2017', 9.1, 3),
		('New York', 'Estados Unidos', '2010', 8.2, 1),
		('Sydney', 'Australia', '2020', 9.5, 3),
		('Santiago', 'Chile', '2011', 8.9, 2),
        ('New York', 'Estados Unidos', '2018', 9.1, 2),
        ('Santiago', 'Chile', '2011', 8.9, 2),
        ('Amsterdam', 'Paises Bajos', '2020', 8.4, 2),
        ('Sydney', 'Australia', '2013', 7.8, 2),
        ('Santiago', 'Chile', '2024', 8.2, 2),
        ('Sydney', 'Australia', '2020', 8.9, 2),
        ('Santiago', 'Chile', '2018', 6.8, 2);

select * from orchestras;
select * from members;
select * from concerts;


