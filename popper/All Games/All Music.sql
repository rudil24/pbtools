SELECT * FROM Games 
  WHERE Visible=1 
  AND Tags like "%Music%" 
  AND TAGS NOT like "%dup%"
ORDER BY GameRating DESC
-- end of script