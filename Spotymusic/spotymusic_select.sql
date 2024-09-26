select nomeMusica, duracao from musica
where duracao > '00:08:00'
order by nomeMusica;

select nomeArtista, nomeGenero from artista
inner join genero
on fk_idGenero = idGenero
where nomeGenero = 'Rap';

select tituloAlbum, nomeGenero from album
inner join artista
on idArtista = fk_idArtista
inner join genero
on fk_idGenero = idGenero
order by tituloAlbum;

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
