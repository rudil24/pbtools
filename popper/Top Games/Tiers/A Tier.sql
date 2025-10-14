  SELECT * FROM Games 
  WHERE Visible=1
  AND Tags NOT like '%dup%'
  AND GameRating BETWEEN 8500 AND 8999
  ORDER BY GameRating DESC
