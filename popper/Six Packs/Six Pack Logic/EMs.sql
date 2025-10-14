  SELECT * FROM Games 
  WHERE Visible=1 AND GameType="EM" 
  AND Tags NOT like '%dup%'
  AND Manufact <> "Original"
  AND Manufact <> "Zen Studios"
  AND GameRating >= 8000
   ORDER BY GameRating DESC
