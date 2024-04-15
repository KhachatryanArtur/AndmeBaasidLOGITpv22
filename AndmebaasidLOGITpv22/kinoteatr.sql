CREATE DATABASE kinoteatrKhachatryan
Use kinoteatrKhachatryan

--tabel filmtype
CREATE TABLE filmtype(
	filmTypeId int primary key identity(1,1),
	filmType varchar(25),
	kirjaldus text);
select * from filmType
insert into filmType (filmtype, kirjaldus)
VALUES ('5D', 'LASTE')

--tabel piletit
CREATE TABLE piletiMyyk(
	piletiMyykId int primary key identity(1,1),
	kogus int,
	kinoKavaId int);
select * from piletiMyyk
insert into piletiMyyk (kogus, kinoKavaId)
VALUES ('50', 1)







--tabel rezisor
create table rezisor(
	rezisorId int primary key identity(1,1),
	eesnimi varchar(25),
	perenimi varchar(25));
SELECT * FROM rezisor
insert into rezisor (eesnimi, perenimi)
VALUES ('Mihhail', 'Smith')



--tabel zanr
create table zanr(
	zanrId int primary key identity(1,1),
	zanrNimi varchar(25),
	zanrKirjeldus text);
insert into zanr (zanrNimi, zanrKirjeldus)
VALUES ('komeedia', 'naljakas')


--tabel kinokava
CREATE TABLE kinokava(
	kinoKavaId int primary key identity(1,1),
	kuupaevKellaaeg DATETIME,
	filmNimetus int,
	piletihind int);
select * from kinokava
insert into kinokava (kuupaevKellaaeg, piletihind, filmNimetus)
VALUES ('2024-04-25','8', 1)


--tabel film
CREATE TABLE film(
	filmId int primary key identity(1,1),
	filmNimetus varchar(25),
	zanrId int,
	pikkus int,
	rezisorId int,
	filmTypeId int,
	reklaam image);

--film-->filmType
ALTER TABLE film add foreign key (filmTypeId) references filmtype(filmTypeId);
insert into film(filmNimetus, zanrId, pikkus, rezisorId, filmTypeId)
values ('Shmanni', 1, 200, 1, 3);
--film-->rezisor
ALTER TABLE film add foreign key (rezisorId) references rezisor(rezisorId);
--film-->zanr
ALTER TABLE film add foreign key (zanrId) references zanr(zanrId);
--kinokava-->filmId
ALTER TABLE kinokava add foreign key (filmNimetus) references film(filmId);
--piletimyyk-->kinokava
ALTER TABLE piletiMyyk add foreign key (kinoKavaId) references kinokava(kinoKavaId);

select * from zanr
select * from rezisor
select * from filmtype
select * from film
select * from piletiMyyk
select * from kinokava


