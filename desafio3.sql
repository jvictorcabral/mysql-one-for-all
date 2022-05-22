SELECT 
  us.full_name AS usuario,
  COUNT(hi.user_id) AS qtde_musicas_ouvidas,
  ROUND(SUM(so.duration_in_second / 60), 2) AS total_minutos
FROM
  SpotifyClone.users AS us
      JOIN
  SpotifyClone.history AS hi ON hi.user_id = us.user_id
      JOIN
  SpotifyClone.songs AS so ON hi.song_id = so.song_id
GROUP BY us.user_id
ORDER BY us.full_name;
