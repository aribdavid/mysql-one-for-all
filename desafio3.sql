SELECT 
user.name AS usuario, 
COUNT(hist.song_id) AS qtde_musicas_ouvidas,
ROUND(SUM(song.song_seconds) / 60, 2) AS total_minutos
FROM 
SpotifyClone.users AS user
INNER JOIN 
SpotifyClone.history AS hist
ON hist.user_id = user.user_id
INNER JOIN 
SpotifyClone.songs AS song
ON song.song_id = hist.song_id
GROUP BY user.name
ORDER BY user.name; 