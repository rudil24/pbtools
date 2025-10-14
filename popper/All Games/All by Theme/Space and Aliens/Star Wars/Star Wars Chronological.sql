SELECT * FROM Games 
  WHERE Visible=1 
  AND GameTheme = "Outer Space" 
  AND GameDisplay like 'Star Wars%'
  AND Tags NOT like "%dup2%" 
ORDER BY GameDisplay
-- end of script