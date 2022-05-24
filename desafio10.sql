SELECT 
  so.song_name AS nome,
  COUNT(hi.song_id) AS reproducoes
FROM
  SpotifyClone.history AS hi
    JOIN
  SpotifyClone.users AS us ON us.user_id = hi.user_id
    JOIN
  SpotifyClone.songs AS so ON so.song_id = hi.song_id
WHERE
  us.plan_id = 1 OR us.plan_id = 4
GROUP BY so.song_name
ORDER BY so.song_name;
