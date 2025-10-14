SELECT * FROM Games 
  WHERE Visible=1
  AND Tags NOT like '%dup%'
  AND GameRating BETWEEN 6000 AND 6499
ORDER BY GameRating DESC
-- end of script