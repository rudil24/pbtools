SELECT * FROM Games 
  WHERE Visible=1 
  AND GameTheme = "Outer Space" 
  AND GameDisplay like 'Star Wars%'  
  AND Tags NOT like "%dup2%" 
ORDER BY GameRating DESC
-- end of script