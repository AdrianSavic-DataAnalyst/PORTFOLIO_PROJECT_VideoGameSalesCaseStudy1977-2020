/* Top 20 games in terms of sales from 1977-2020. */

SELECT Name, Platform, Publisher, Total_Shipped, Year
FROM `game_sales_data`
WHERE Year BETWEEN 1977 AND 2020
ORDER BY Total_Shipped DESC
LIMIT 20;
-------------------------------------------------------------------------------------------------------------------------
/* Total shipped units for 1977-2020. */ 

SELECT
  SUM(Total_Shipped) AS Total_Shipped_1977_2020
FROM
  `game_sales_data`
WHERE
  YEAR BETWEEN 1977 AND 2020;
  -------------------------------------------------------------------------------------------------------------------------
  /* Total shipped units by platform 1977-2020 /* 
  
SELECT
  Platform,
  SUM(Total_Shipped) AS Total_Shipped_By_Platform
FROM
  `game_sales_data`
WHERE
  YEAR BETWEEN 1977 AND 2020
GROUP BY
  Platform
ORDER BY
  Total_Shipped_By_Platform DESC;
  -----------------------------------------------------------------------------------------------------------------------
 /* Market share for plaforms years 1977-2020 /* 
  
 SELECT
    A.Platform,
    A.Total_Shipped_By_Platform,
    A.Total_Shipped_By_Platform / B.Total_Units_Sold_All_Platforms * 100 AS Market_Share
FROM (
    SELECT
        Platform,
        SUM(Total_Shipped) AS Total_Shipped_By_Platform
    FROM
        `game_sales_data`
    WHERE
        YEAR BETWEEN 1977 AND 2020
    GROUP BY
        Platform
) AS A
CROSS JOIN (
    SELECT
        SUM(Total_Shipped) AS Total_Units_Sold_All_Platforms
    FROM
        `game_sales_data`
    WHERE
        YEAR BETWEEN 1977 AND 2020
) AS B
ORDER BY
    Market_Share DESC;
  ---------------------------------------------------------------------------------------------------------------------
  /* Market Share for publishers years 1977-2020 /* 
  
SELECT
    A.Publisher,
    A.Total_Shipped_By_Publisher,
    A.Total_Shipped_By_Publisher / B.Total_Units_Sold_All_Publishers * 100 AS Market_Share
FROM (
    SELECT
        Publisher,
        SUM(Total_Shipped) AS Total_Shipped_By_Publisher
    FROM
        `game_sales_data`
    WHERE
        YEAR BETWEEN 1977 AND 2020
    GROUP BY
        Publisher
) AS A
CROSS JOIN (
    SELECT
        SUM(Total_Shipped) AS Total_Units_Sold_All_Publishers
    FROM
        `game_sales_data`
    WHERE
        YEAR BETWEEN 1977 AND 2020
) AS B
ORDER BY
    Market_Share DESC;
  ------------------------------------------------------------------------------------------------------------------------
  /* Yearly growth and decline from years 1977-2020 /* 
  
WITH YearlyData AS (
    SELECT
        YEAR,
        SUM(Total_Shipped) AS Total_Shipped_All_Publishers
    FROM
        `game_sales_data`
    WHERE
        YEAR BETWEEN 1977 AND 2020
    GROUP BY
        YEAR
)
SELECT
    YEAR,
    Total_Shipped_All_Publishers,
    COALESCE(
        Total_Shipped_All_Publishers - LAG(Total_Shipped_All_Publishers) OVER (ORDER BY YEAR),
        0
    ) AS Yearly_Industry_Growth
FROM
    YearlyData
-----------------------------------------------------------------------------------------------------------------------------------

/* Top average critic scores from 1977-2020/*
SELECT
    gs.Year,
    AVG(gs.Critic_Score) AS Avg_Critic_Score,
    ts.Total_Shipped
FROM
    `game_sales_data` gs
LEFT JOIN (
    SELECT
        Year,
        SUM(Total_Shipped) AS Total_Shipped
    FROM
        `game_sales_data`
    WHERE
        Year BETWEEN 1977 AND 2020
    GROUP BY
        Year
) ts ON gs.Year = ts.Year
WHERE
    gs.Critic_Score <> 0
GROUP BY
    gs.Year, ts.Total_Shipped
ORDER BY
    Avg_Critic_Score DESC
LIMIT 10;
----------------------------------------------------------------------------------------------------------------------------------------
/* Top average user scores from 1977-2020/*

SELECT
    gs.Year,
    AVG(gs.User_Score) AS Avg_User_Score,
    ts.Total_Shipped
FROM
    `game_sales_data` gs
LEFT JOIN (
    SELECT
        Year,
        SUM(Total_Shipped) AS Total_Shipped
    FROM
        `game_sales_data`
    WHERE
        Year BETWEEN 1977 AND 2020
    GROUP BY
        Year
) ts ON gs.Year = ts.Year
WHERE
    gs.User_Score <> 0
GROUP BY
    gs.Year, ts.Total_Shipped
ORDER BY
    Avg_User_Score DESC
LIMIT 10;
-----------------------------------------------------------------------------------------------------------------------------------------------
