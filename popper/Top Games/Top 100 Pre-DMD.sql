/* COMMENTS:
  Top 100 Pre-DMD (MediaName: pl_Top 100 Pre-DMD) is a playlist nested under the Top Games layer. 
  This script lists the top 100 tables, in order, that are EM, SS, or SS alpha tables.
*/
SELECT * FROM Games 
  WHERE Visible=1 
  AND (GameType="EM" OR GameType="SS" OR GameType="SS alpha") 
  AND TAGS NOT like "%dup%"
ORDER BY GameRating DESC LIMIT 100
-- end of script