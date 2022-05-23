SELECT 
  so.song_name AS cancoes,
  COUNT(hi.song_id) AS reproducoes
FROM
  SpotifyClone.history AS hi
    JOIN
  SpotifyClone.songs AS so ON hi.song_id = so.song_id
GROUP BY hi.song_id
ORDER BY reproducoes DESC, so.song_name
LIMIT 2;
