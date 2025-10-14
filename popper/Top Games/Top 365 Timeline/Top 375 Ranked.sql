/* COMMENTS: 
  This one is just a helper app for the Top 365 Timeline, it helps you see the ranking in order
  AND it helps you see the bottom 10 "honorable mentions"--
  those that didn't quite make the cut for the 365 list, in case you want to bump one up / push others down.
*/
SELECT * FROM Games 
  WHERE Visible=1 
  AND Tags NOT like "%dup%"
ORDER BY GameRating DESC LIMIT(375)
-- end of script