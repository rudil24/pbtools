SELECT * FROM (
  SELECT * FROM Games 
  WHERE Visible=1 AND GameType="EM"
  ORDER BY RANDOM() LIMIT 1
)
UNION ALL
SELECT * FROM (
  SELECT * FROM Games 
  WHERE Visible=1 AND GameType="SS"
  AND Tags NOT like "%PuP%"
  AND Manufact <> "Original"
  ORDER BY RANDOM() LIMIT 1
)
UNION ALL
SELECT * FROM (
  SELECT * FROM Games 
  WHERE Visible=1 AND GameType="SS alpha"
  AND Tags NOT like "%PuP%"
  AND Manufact <> "Original"
  ORDER BY RANDOM() LIMIT 1
)
UNION ALL
SELECT * FROM (
  SELECT * FROM Games 
  WHERE Visible=1 AND (GameType="SS dmd" OR GameType="SS hybrid")
  AND Tags NOT like "%PuP%"
  AND Manufact <> "Original"
  ORDER BY RANDOM() LIMIT 1
)
UNION ALL
SELECT * FROM (
  SELECT * FROM Games 
  WHERE Visible=1 AND Manufact="Original"
  ORDER BY RANDOM() LIMIT 1
)
UNION ALL
SELECT * FROM (
  SELECT * FROM Games 
  WHERE Visible=1 AND Tags like "%PuP%"
  ORDER BY RANDOM() LIMIT 1
)
