SELECT * FROM Games 
    WHERE VISIBLE=1 
    AND GameTheme like "%Billiards%" 
    AND Tags NOT like "%dup2%" 
ORDER BY GameRating DESC