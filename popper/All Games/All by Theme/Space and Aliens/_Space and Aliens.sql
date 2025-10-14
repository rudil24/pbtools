SELECT * FROM Games 
  WHERE Visible=1 
  AND GameTheme = "Outer Space"  
  AND GameDisplay NOT like '%Star Trek%' 
  AND GameDisplay NOT like '%Star Wars%'  
  AND Tags NOT like "%dup%" 
ORDER BY GameRating DESC
-- end of script