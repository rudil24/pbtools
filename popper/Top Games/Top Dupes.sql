/* COMMENTS:
  Top Dupes (MediaName: pl_Top Dupes) is a playlist nested under the Top Games layer. 
  This script lists all tables with the "dup" tag, except those with the "dup2" tag, 
  that have a GameRating of 8000 or higher, in descending order.
*/
SELECT * FROM Games 
  WHERE Visible=1
  AND GameRating >= 8000
  AND Tags LIKE '%dup%' 
  AND Tags NOT LIKE '%dup2%'
ORDER BY GameRating DESC
-- end of script