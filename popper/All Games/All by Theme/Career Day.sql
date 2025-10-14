SELECT * FROM Games 
  WHERE Visible=1 
  AND Tags NOT like "%dup2%"
  AND (GameTheme LIKE "%Fire and Rescue%" OR GameTheme LIKE "%Workplaces%") 
ORDER BY GameRating DESC
-- end of script