EXEMPLOS DE INSERT PARA CADA TABELA

/*Gênero*/
insert into genero values
(null, 'Pop');                      #obrigatório ter o null

/*Artista*/
insert into artista values 
(null, 'Michael Jackson', 1);           #O número vai de acordo com o id do gênero desejado

/*Album*/
insert into album values 
(null, 'Bad', 1987, 1);             #O número vai de acordo com o id do artista desejado

/*Compositor*/
insert into compositor values 
(null, 'Linkin', 'Park');            #Caso o compositor for o artista, só colocar o mesmo nome

/*Música*/
insert into musica values 
(null, 'Papercut', '00:03:04', 1, 1);         #O primeiro número representa o álbum e o segundo o compositor

/*Playlist*/
insert into playlist values
(null, 'Emo é meu estilo de vida');         #Aqui podem criar algumas playlists criativas

/*Música_Playlist*/
insert into musica_playlist values
(1, 1);                                     #O primeiro número representa a playlist e o segundo a música
