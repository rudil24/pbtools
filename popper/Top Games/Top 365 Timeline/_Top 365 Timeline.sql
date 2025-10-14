/* COMMENTS: This is a fun one, the idea behind it is "play a different table every day, of your top 365, 
going from your oldest table that qualifies to your newest table."
*/
SELECT * FROM 
  (SELECT * from Games 
    WHERE Visible=1 
    AND Tags NOT like "%dup%"
  ORDER BY GameRating DESC LIMIT(365))
ORDER BY GameYear, GameRating
-- end of script