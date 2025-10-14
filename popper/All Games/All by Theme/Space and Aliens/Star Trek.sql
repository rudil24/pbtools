SELECT * FROM Games 
  WHERE Visible=1 
  AND GameTheme = "Outer Space" 
  AND GameDisplay like 'Star Trek%'
  AND Tags NOT like "%dup2%" 
ORDER BY GameYear ASC, GameRating DESC
-- end of script