SELECT COUNT(song_id) as quantidade_musicas_no_historico	
FROM SpotifyClone.history AS his
WHERE his.user_id = 3;