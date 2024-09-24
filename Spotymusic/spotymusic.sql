create database spotymusic;
use spotymusic;

create table genero(
idGenero int primary key auto_increment,
nomeGenero varchar(25) not null
);

create table artista(
idArtista int primary key auto_increment,
nomeArtista varchar(25) not null,
fk_idGenero int,
foreign key (fk_idGenero) references genero (idGenero) on delete cascade
);

create table album(
idAlbum int primary key auto_increment,
tituloAlbum varchar(50) not null,
anoLancamento int not null,
fk_idArtista int,
foreign key (fk_idArtista) references artista (idArtista) on delete cascade
);

create table compositor(
idCompositor int primary key auto_increment,
nomeCompositor varchar(25) not null,
sobrenomeCompositor varchar(25)
);

create table musica(
idMusica int primary key auto_increment,
nomeMusica varchar(50) not null,
duracao time not null,
fk_idAlbum int,
foreign key (fk_idAlbum) references album (idAlbum) on delete cascade,
fk_idCompositor int,
foreign key (fk_idCompositor) references compositor (idCompositor) on delete cascade
);

create table playlist(
idPlaylist int primary key auto_increment,
nomePlaylist varchar(50) not null
);

create table musica_playlist(
fk_idPlaylist int,
foreign key (fk_idPlaylist) references playlist (idPlaylist) on delete cascade,
fk_idMusica int,
foreign key (fk_idMusica) references musica (idMusica) on delete cascade
);


/* Criacão de usuários */
create user 'gui'@'localhost' 
identified by '1234';
grant create, insert on *.* to 'gui'@'localhost';

create user 'auanny'@'localhost' 
identified by '4321';
grant select on *.* to 'auanny'@'localhost';

create user 'theira'@'localhost' 
identified by 'theira@1234';
grant update, drop on *.* to 'theira'@'localhost';
