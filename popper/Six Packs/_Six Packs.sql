/* COMMENTS: This script selects six highly rated games to create a "Six Pack" of diverse games. 
Much like my opening Playlist Home, this one picks a random game from all six of my categories, each game with at least 8000 rating, 
instead of just the top 25.
*/
SELECT * FROM (
 SELECT * FROM (
  SELECT * FROM Games 
  WHERE Visible=1 AND GameType="SS dmd" 
  AND Tags like "%PuP%"
  AND Tags NOT like '%dup%'
  AND Manufact <> "Original"
  AND Manufact <> "Zen Studios"
  AND GameRating >= 8000
   ORDER BY GameRating DESC)
  ORDER BY RANDOM() LIMIT 1
)
UNION ALL
SELECT * FROM (
 SELECT * FROM (
  SELECT * FROM Games 
  WHERE Visible=1 AND GameType="SS dmd"
  AND Tags NOT like "%PuP%"
  AND Tags NOT like '%dup%'
  AND Manufact <> "Original"
  AND Manufact <> "Zen Studios"
  AND GameRating >= 8000
   ORDER BY GameRating DESC)
  ORDER BY RANDOM() LIMIT 1
)
UNION ALL
SELECT * FROM (
 SELECT * FROM (
  SELECT * FROM Games 
  WHERE Visible=1 AND (GameType="SS alpha" OR GameType="SS hybrid")
  AND Tags NOT like '%dup%'
  AND Manufact <> "Original"
  AND Manufact <> "Zen Studios"
  AND GameRating >= 8000
   ORDER BY GameRating DESC)
  ORDER BY RANDOM() LIMIT 1
)
UNION ALL
SELECT * FROM (
 SELECT * FROM (
  SELECT * FROM Games 
  WHERE Visible=1 AND GameType="SS"
  AND Tags NOT like '%dup%'
  AND Manufact <> "Original"
  AND Manufact <> "Zen Studios"
  AND GameRating >= 8000
   ORDER BY GameRating DESC)
  ORDER BY RANDOM() LIMIT 1
)
UNION ALL
SELECT * FROM (
  SELECT * FROM (
   SELECT * FROM Games 
    WHERE Visible=1 AND GameType="EM" 
  AND Tags NOT like '%dup%'
  AND Manufact <> "Original"
  AND Manufact <> "Zen Studios"
  AND GameRating >= 8000
   ORDER BY GameRating DESC)
  ORDER BY RANDOM() LIMIT 1
)
UNION ALL
SELECT * FROM (
 SELECT * FROM (
  SELECT * FROM Games 
  WHERE Visible=1 AND Manufact IN ("Original","Zen Studios")
  AND Tags NOT like '%dup%'
  AND GameRating >= 8000
  ORDER by GameRating DESC)
  ORDER BY RANDOM() LIMIT 1
);
-- end of script