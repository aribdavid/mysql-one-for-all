SELECT son.name AS cancao,
COUNT(his.song_id) AS reproducoes
FROM SpotifyClone.songs as son
INNER JOIN SpotifyClone.history as his ON son.song_id = his.song_id
GROUP BY name
ORDER BY reproducoes DESC, cancao
LIMIT 2;