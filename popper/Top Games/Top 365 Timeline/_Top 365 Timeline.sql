Select * from 
  (Select * from Games WHERE VISIBLE=1 and TAGS NOT like "%dup%"
   order by GameRating DESC LIMIT(365))
ORDER BY GameYear, GameRating
-- End of Top 365 Timeline script