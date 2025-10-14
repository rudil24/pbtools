SELECT * FROM Games 
  WHERE Visible=1 
  AND Tags like "%Odd%" 
ORDER BY GameRating DESC
-- end of script