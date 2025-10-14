SELECT * FROM Games 
  WHERE Visible=1 AND GameTheme like "%Leisure%" 
  AND Tags NOT like "%dup2%" 
ORDER BY GameRating DESC
-- end of script