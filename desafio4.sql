SELECT 
  us.full_name AS usuario,
  IF(YEAR(MAX(hi.reproduction_date)) = 2021,
    'Usuário ativo',
    'Usuário inativo') AS condicao_usuario
FROM
  SpotifyClone.users AS us
    JOIN
  SpotifyClone.history AS hi ON us.user_id = hi.user_id
GROUP BY us.user_id
ORDER BY us.full_name;