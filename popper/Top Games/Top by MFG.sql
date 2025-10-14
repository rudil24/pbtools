/* COMMENTS:
 Top by MFG: (MediaName: pl_Top by MFG) is a playlist nested under the Top Games layer. 
 This script lists the top 100 tables, in order, that are EM, SS, or SS alpha tables.
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
