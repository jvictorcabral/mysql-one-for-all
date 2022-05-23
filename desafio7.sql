SELECT 
  ar.artist_name AS artista,
  al.album_name AS album,
  COUNT(al.album_name) AS seguidores
FROM
  SpotifyClone.following_artist AS fl
    JOIN
  SpotifyClone.users AS us ON fl.user_id = us.user_id
    JOIN
  SpotifyClone.artist AS ar ON ar.artist_id = fl.artist_id
    JOIN
  SpotifyClone.albums AS al ON al.artist_id = ar.artist_id
GROUP BY
  ar.artist_name,
  al.album_name
ORDER BY seguidores DESC, artista, album;
