SELECT 
	us.user_name AS usuario,
    COUNT(his.user_id) AS qtde_musicas_ouvidas,
    ROUND(SUM(son.song_seconds) / 60, 2) AS total_minutos
FROM
	SpotifyClone.users AS us
    INNER JOIN
    SpotifyClone.history AS his ON us.user_id = his.user_id
    INNER JOIN
    SpotifyClone.songs AS son ON son.song_id = his.song_id
GROUP BY user_name; 