SELECT art.name AS artista,
alb.name AS album
FROM  SpotifyClone.artists AS art
INNER JOIN SpotifyClone.albums AS alb ON alb.artist_id = art.artist_id
HAVING artista = 'Walter Phoenix';