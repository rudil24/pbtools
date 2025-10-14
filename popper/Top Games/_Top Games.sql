/* COMMENTS:
 Top Games (MediaName: pl_Top Games) is a playlist nested under the Home top level. 
 This script picks 100 tables, in a distribution of: the top 20 pups, top 30 dmd non pups, 
 top 12 SS alphanumberics, top 17 SS, top 8 EM, and top 13 Original (non-vendor) tables. 
*/
SELECT * FROM (
    SELECT * FROM (
        SELECT * FROM Games
        WHERE
            Visible = 1
            AND GameType = "SS dmd"
            AND Tags like "%PuP%"
            AND Tags NOT like '%dup%'
            AND Manufact <> "Original"
            AND Manufact <> "Zen Studios"
        ORDER BY GameRating DESC
        LIMIT 20
    )
)
UNION ALL
SELECT * FROM (
    SELECT * FROM (
        SELECT * FROM Games
        WHERE
            Visible = 1
            AND GameType = "SS dmd"
            AND Tags NOT like "%PuP%"
            AND Tags NOT like '%dup%'
            AND Manufact <> "Original"
            AND Manufact <> "Zen Studios"
        ORDER BY GameRating DESC
        LIMIT 30
    )
)
UNION ALL
SELECT * FROM (
    SELECT * FROM (
        SELECT * FROM Games
        WHERE
            Visible = 1
            AND (GameType = "SS alpha" OR GameType = "SS hybrid")
            AND Tags NOT like '%dup%'
            AND Manufact <> "Original"
            AND Manufact <> "Zen Studios"
        ORDER BY GameRating DESC
        LIMIT 12
    )
)
UNION ALL
SELECT * FROM (
    SELECT * FROM (
        SELECT * FROM Games
        WHERE
            Visible = 1
            AND GameType = "SS"
            AND Tags NOT like '%dup%'
            AND Manufact <> "Original"
            AND Manufact <> "Zen Studios"
        ORDER BY GameRating DESC
        LIMIT 17
    )
)
UNION ALL
SELECT * FROM (
    SELECT * FROM (
        SELECT * FROM Games
        WHERE
            Visible = 1
            AND GameType = "EM"
            AND Tags NOT like '%dup%'
            AND Manufact <> "Original"
            AND Manufact <> "Zen Studios"
        ORDER BY GameRating DESC
        LIMIT 8
    )
)
UNION ALL
SELECT * FROM (
    SELECT * FROM (
        SELECT * FROM Games
        WHERE
            Visible = 1
            AND (Manufact = "Original" OR Manufact = "Zen Studios")
            AND Tags NOT like '%dup%'
        ORDER by GameRating DESC
        LIMIT 13
    )
);
-- End of Top Games (pl_Top Games) SQL
