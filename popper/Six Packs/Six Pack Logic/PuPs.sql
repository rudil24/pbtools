  SELECT * FROM Games 
  WHERE Visible=1 AND GameType="SS dmd" 
  AND Tags like "%PuP%"
  AND Tags NOT like '%dup%'
  AND Manufact <> "Original"
  AND Manufact <> "Zen Studios"
  AND GameRating >= 8000
   ORDER BY GameRating DESC
