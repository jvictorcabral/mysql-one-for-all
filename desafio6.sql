SELECT 
  MIN(p.price) AS faturamento_minimo,
  MAX(p.price) AS faturamento_maximo,
  ROUND(AVG(p.price), 2) AS faturamento_medio,
  SUM(p.price) AS faturamento_total
FROM
  SpotifyClone.users AS us
    JOIN
  SpotifyClone.plans AS p ON p.plan_id = us.plan_id;