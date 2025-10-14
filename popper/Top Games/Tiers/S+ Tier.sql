  SELECT * FROM Games 
  WHERE Visible=1
  AND Tags NOT like '%dup%'
  AND GameRating >= 9500
   ORDER BY GameRating DESC
