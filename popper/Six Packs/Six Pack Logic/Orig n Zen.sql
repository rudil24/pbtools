  SELECT * FROM Games 
  WHERE Visible=1 AND Manufact IN ("Original","Zen Studios")
  AND Tags NOT like '%dup%'
  AND GameRating >= 8000
  ORDER by GameRating DESC
