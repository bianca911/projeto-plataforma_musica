SELECT A.titulo AS album_titulo, R.nome AS artista_nome
FROM ALBUNS A
JOIN ARTISTAS R ON A.id_artista = R.id_artista;

SELECT M.titulo AS musica_titulo, R.nome AS artista_nome
FROM MUSICAS M
JOIN ALBUNS A ON M.id_album = A.id_album
JOIN ARTISTAS R ON A.id_artista = R.id_artista
WHERE R.nome = 'Queen';

SELECT A.titulo AS album_titulo, COUNT(M.id_musica) AS total_musicas
FROM ALBUNS A
JOIN MUSICAS M ON A.id_album = M.id_album
GROUP BY A.titulo;