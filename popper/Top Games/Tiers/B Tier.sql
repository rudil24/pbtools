SELECT * FROM Games 
  WHERE Visible=1
  AND Tags NOT like '%dup%'
  AND GameRating BETWEEN 7500 AND 7999
ORDER BY GameRating DESC
-- end of script