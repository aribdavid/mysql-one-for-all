SELECT art.name AS artista,
alb.name AS album,
COUNT(fol.user_id) AS seguidores
FROM  SpotifyClone.artists AS art
INNER JOIN SpotifyClone.albums AS alb ON alb.artist_id = art.artist_id
INNER JOIN SpotifyClone.following AS fol ON art.artist_id = fol.artist_id
GROUP BY album, artista
ORDER BY seguidores DESC, artista, album;
