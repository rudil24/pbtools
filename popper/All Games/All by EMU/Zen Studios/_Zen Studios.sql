/* COMMENTS: All Zen Studios games (FX3 and PinballFX) denoted by their EMUIDs
*/
SELECT * FROM Games 
  WHERE Visible=1 
  AND (EMUID="3" or EMUID="6") 
  AND Tags NOT like "%dup2%" 
ORDER BY GameRating DESC
-- end of script