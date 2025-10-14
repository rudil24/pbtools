/* COMMENTS:
  PlayLists Home (MediaName: pl_home) is the opening screen of Popper. This script serves a 
  "SIX PACK" of random tables: one TOP 25 GameRating table from each of six categories: 
  DMD PuP, DMD non-PuP, SS alpha, SS, EM, and Original (non-vendor) tables.
*/
SELECT * FROM (
    SELECT * FROM (
        SELECT * FROM Games
        WHERE
            Visible = 1
            AND GameType = "SS dmd"
            AND Tags LIKE "%PuP%"
            AND Tags NOT LIKE '%dup%'
            AND Manufact <> "Original"
            AND Manufact <> "Zen Studios"
        ORDER BY GameRating DESC
        LIMIT 25
    )
    ORDER BY RANDOM()
    LIMIT 1
)
UNION ALL
SELECT * FROM (
    SELECT * FROM (
        SELECT * FROM Games
        WHERE
            Visible = 1
            AND GameType = "SS dmd"
            AND Tags NOT LIKE "%PuP%"
            AND Tags NOT LIKE '%dup%'
            AND Manufact <> "Original"
            AND Manufact <> "Zen Studios"
        ORDER BY GameRating DESC
        LIMIT 25
    )
    ORDER BY RANDOM()
    LIMIT 1
)
UNION ALL
SELECT * FROM (
    SELECT * FROM (
        SELECT * FROM Games
        WHERE
            Visible = 1
            AND (GameType = "SS alpha" OR GameType = "SS hybrid")
            AND Tags NOT LIKE '%dup%'
            AND Manufact <> "Original"
            AND Manufact <> "Zen Studios"
        ORDER BY GameRating DESC
        LIMIT 25
    )
    ORDER BY RANDOM()
    LIMIT 1
)
UNION ALL
SELECT * FROM (
    SELECT * FROM (
        SELECT * FROM Games
        WHERE
            Visible = 1
            AND GameType = "SS"
            AND Tags NOT LIKE '%dup%'
            AND Manufact <> "Original"
            AND Manufact <> "Zen Studios"
        ORDER BY GameRating DESC
        LIMIT 25
    )
    ORDER BY RANDOM()
    LIMIT 1
)
UNION ALL
SELECT * FROM (
    SELECT * FROM (
        SELECT * FROM Games
        WHERE
            Visible = 1
            AND GameType = "EM"
            AND Tags NOT LIKE '%dup%'
            AND Manufact <> "Original"
            AND Manufact <> "Zen Studios"
        ORDER BY GameRating DESC
        LIMIT 25
    )
    ORDER BY RANDOM()
    LIMIT 1
)
UNION ALL
SELECT * FROM (
    SELECT * FROM (
        SELECT * FROM Games
        WHERE
            Visible = 1
            AND Manufact IN ("Original", "Zen Studios")
            AND Tags NOT LIKE '%dup%'
        ORDER BY GameRating DESC
        LIMIT 25
    )
    ORDER BY RANDOM()
    LIMIT 1
);
-- end of script