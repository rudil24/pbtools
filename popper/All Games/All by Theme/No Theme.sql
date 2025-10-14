SELECT * FROM Games 
  WHERE Visible=1 
  AND GameTheme is null 
ORDER BY GameDisplay
-- end of script