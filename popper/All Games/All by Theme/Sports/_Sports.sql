SELECT * FROM Games 
  WHERE Visible=1 
  AND GameTheme LIKE "Sports%" 
  AND GameTheme NOT LIKE "%Motor%" 
  AND Tags NOT like "%dup2%" 
ORDER BY GameRating DESC
-- end of script