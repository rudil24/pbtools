/* COMMENTS:
 Top by MFG: (MediaName: pl_Top by MFG) is a playlist nested under the Top Games layer. 
 This script grabs the top 15 Williams, top 15 Bally, top 10 Stern, top 10 Data East,
 top 10 Sega/Capcom, top 10 Gottlieb, top 10 other hardware manufacturers, top 10 Zen Studios, 
 and top 10 Original (non-vendor) tables.
*/
SELECT * FROM (
    SELECT * FROM (
        SELECT * FROM Games
        WHERE
            Visible = 1
            AND Manufact = "Williams"
            AND Tags NOT like '%dup%'
        ORDER BY GameRating DESC
        LIMIT 15
    )
)
UNION ALL
SELECT * FROM (
    SELECT * FROM (
        SELECT * FROM Games
        WHERE
            Visible = 1
            AND Manufact = "Bally"
            AND Tags NOT like '%dup%'
        ORDER BY GameRating DESC
        LIMIT 15
    )
)
UNION ALL
SELECT * FROM (
    SELECT * FROM (
        SELECT * FROM Games
        WHERE
            Visible = 1
            AND Manufact = "Stern"
            AND Tags NOT like '%dup%'
        ORDER BY GameRating DESC
        LIMIT 10
    )
)
UNION ALL
SELECT * FROM (
    SELECT * FROM (
        SELECT * FROM Games
        WHERE
            Visible = 1
            AND Manufact = "Data East"
            AND Tags NOT like '%dup%'
        ORDER BY GameRating DESC
        LIMIT 10
    )
)
UNION ALL
SELECT * FROM (
    SELECT * FROM (
        SELECT * FROM Games
        WHERE
            Visible = 1
            AND Manufact IN ("Sega", "Capcom")
            AND Tags NOT like '%dup%'
        ORDER BY GameRating DESC
        LIMIT 10
    )
)
UNION ALL
SELECT * FROM (
    SELECT * FROM (
        SELECT * FROM Games
        WHERE
            Visible = 1
            AND Manufact = "Gottlieb"
            AND Tags NOT like '%dup%'
        ORDER BY GameRating DESC
        LIMIT 10
    )
)
UNION ALL
SELECT * FROM (
    SELECT * FROM (
        SELECT * FROM Games
        WHERE
            Visible = 1
            AND Tags NOT like '%dup%'
            AND Manufact NOT IN ("Williams", "Bally", "Stern", "Gottlieb", "Data East", "Sega", "Capcom", "Original", "Zen Studios")
        ORDER BY GameRating DESC
        LIMIT 10
    )
)
UNION ALL
SELECT * FROM (
    SELECT * FROM (
        SELECT * FROM Games
        WHERE
            Visible = 1
            AND Manufact = "Zen Studios"
            AND Tags NOT like '%dup%'
        ORDER BY GameRating DESC
        LIMIT 10
    )
)
UNION ALL
SELECT * FROM (
    SELECT * FROM (
        SELECT * FROM Games
        WHERE
            Visible = 1
            AND Manufact = "Original"
            AND Tags NOT like '%dup%'
        ORDER BY GameRating DESC
        LIMIT 10
    )
);
-- End of Top by MFG script