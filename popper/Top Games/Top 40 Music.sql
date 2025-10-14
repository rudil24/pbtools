/* COMMENTS:  
  I know this one says "Top 40" and you can definitely play it that way (ORDER BY GameRating DESC LIMIT 40),
  but I have so much dang fun with music tables, I broadened it to anything "4 stars and up" (which is my 8000 rating). 
  So I give the nod to Mr. Kasem for the naming, but I have extra, good tables in here. 
*/
SELECT * FROM Games 
  WHERE Visible=1 
  AND Tags like "%Music%" 
  AND Tags NOT like "%dup%" 
  AND GameRating >= 8000
ORDER BY GameRating DESC
-- end of script