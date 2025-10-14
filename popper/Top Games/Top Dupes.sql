Select * from Games WHERE VISIBLE=1
AND GameRating >= 8000
AND Tags LIKE '%dup%' 
AND Tags NOT LIKE '%dup2%'
order by GameRating DESC
-- End of Top Dupes script