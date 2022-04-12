SELECT users.user_name AS usuario,
COUNT(history.usuario_id) AS qtde_musicas_ouvidas,
ROUND((SUM(songs.song_seconds)/60), 2) AS total_minutos
FROM SpotifyClone.users AS users
INNER JOIN SpotifyClone.history AS history
ON history.user_id = users.user_id  
INNER JOIN SpotifyClone.songs AS songs
ON history.song_id = songs.song_id
GROUP BY users.user_name;