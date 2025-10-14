SELECT * FROM Games 
  WHERE Visible=1 
  AND (GameTheme = "Jungle" OR GameTheme LIKE "%Jurassic%") 
  AND Tags NOT like "%dup2%" 
ORDER BY GameRating DESC
-- end of script