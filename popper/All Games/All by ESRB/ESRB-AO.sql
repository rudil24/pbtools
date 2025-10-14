/* COMMENTS: 
  All "Adults Only" (AO) games, including those set to Visible=2 (hidden)
*/
SELECT * FROM Games 
  WHERE Visible=2 OR Category="AO" 
ORDER BY GameRating DESC
-- end of script