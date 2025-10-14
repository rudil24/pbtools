Select * FROM Games 
    WHERE VISIBLE=1 AND Tags like "%Music%" and TAGS NOT like "%dup%" AND GameRating >= 8000
order by GameRating DESC
-- End of Top 40 Music script
