SELECT 
  COUNT(DISTINCT so.song_id) AS cancoes,
  COUNT(DISTINCT ar.artist_id) AS artistas,
  COUNT(DISTINCT al.album_id) AS albuns
FROM
  SpotifyClone.songs AS so,
  SpotifyClone.artist AS ar,
  SpotifyClone.albums AS al;