CREATE DATABASE project02;
use project02;
select * from marketing_campaign;

# 1. Query Most Responsive Customer Segments

-- SELECT
--     Education,
--     Marital_Status,
--     SUM(Response) AS Total_Responses,
--     COUNT(*) AS Num_Customers,
--     AVG(Response) AS Conversion_Rate
-- FROM
--     customers
-- GROUP BY
--     Education, Marital_Status
-- ORDER BY
--     Total_Responses DESC;


-- 2. Aggregate Campaign Response by Marital Status or Education Level4

-- SELECT
--     Marital_Status,
--     SUM(Response) AS Total_Responses,
--     COUNT(*) AS Num_Customers,
--     AVG(Response) AS Conversion_Rate
-- FROM
--     customers
-- GROUP BY
--     Marital_Status
-- ORDER BY
--     Total_Responses DESC;

-- education
-- SELECT
--     Education,
--     SUM(Response) AS Total_Responses,
--     COUNT(*) AS Num_Customers,
--     AVG(Response) AS Conversion_Rate
-- FROM
--     customers
-- GROUP BY
--     Education
-- ORDER BY
--     Total_Responses DESC;

-- 3. Calculate Average Spending and Conversion per Segment
SELECT
    Education,
    Marital_Status,
    AVG(MntWines + MntFruits + MntMeatProducts + MntFishProducts + MntSweetProducts + MntGoldProds) AS Avg_Total_Spending,
    AVG(Response) AS Conversion_Rate
FROM
    customers
GROUP BY
    Education, Marital_Status
ORDER BY
    Avg_Total_Spending DESC;
 

 
 


