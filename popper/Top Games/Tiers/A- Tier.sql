SELECT * FROM Games 
  WHERE Visible=1
  AND Tags NOT like '%dup%'
  AND GameRating BETWEEN 8000 AND 8499
ORDER BY GameRating DESC
-- end of script