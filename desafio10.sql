SELECT son.name AS nome,
COUNT(his.song_id) AS reproducoes
FROM SpotifyClone.songs AS son
INNER JOIN SpotifyClone.history AS his ON son.song_id = his.song_id
INNER JOIN SpotifyClone.users AS us ON us.user_id = his.user_id
WHERE us.plan_id IN (1, 4)
GROUP BY nome; 