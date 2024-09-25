select nomeMusica, duracao from musica
where duracao > '00:04:00';

select nomeMusica from musica
where nomeMusica like 'a%';

select nomeMusica, duracao from musica
inner join album
on fk_idAlbum = idAlbum
where idAlbum = 3;

select nomeArtista, nomeMusica, tituloAlbum from album
inner join musica
on fk_idAlbum = idAlbum
inner join artista
on fk_idArtista = idArtista
where nomeMusica = "Ai Calica";
