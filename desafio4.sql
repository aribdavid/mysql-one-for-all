SELECT
us.user_name AS usuario,
IF(TIMEDIFF(MAX(his.date_listened), "2020-12-31 23:59::59") > 0, "Usuário ativo", "Usuário inativo") "condicao_usuario"
FROM
SpotifyClone.users as us
INNER JOIN
SpotifyClone.history as his ON his.user_id = us.user_id
GROUP BY us.user_name; 