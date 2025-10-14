SELECT * FROM Games 
    WHERE VISIBLE=1 
    AND GameTheme like "%Card and Casino%" 
    AND Tags NOT like "%dup2%" 
ORDER BY GameRating DESC