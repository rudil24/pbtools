SELECT * FROM Games 
  WHERE Visible=1 
  AND Tags like "%Zip%" 
ORDER BY GameRating DESC
-- end of script