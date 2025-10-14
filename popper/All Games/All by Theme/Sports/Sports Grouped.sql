/* COMMENTS: 
  I use "Custom5" field as a sub-theme sorter within Sports theme, so this script orders by that first, then by GameRating.
*/
SELECT * FROM Games 
  WHERE Visible=1 
  AND GameTheme LIKE "Sports%" 
  AND GameTheme NOT LIKE "%Motor%" 
  AND Tags NOT like "%dup2%" 
ORDER BY Custom5 ASC, GameRating DESC
-- end of script