WITH hotels as (
SELECT *
FROM [Hotel].[dbo].[hotels_2018]
UNION 
SELECT * 
FROM [Hotel].[dbo].[hotels_2019]
UNION
SELECT *
FROM [Hotel].[dbo].[hotels_2020]
)
SELECT * FROM hotels h
LEFT JOIN [Hotel].[dbo].[market] m
ON h.market_segment = m.market_segment
LEFT JOIN [Hotel].[dbo].[meal_cost] c
ON c.meal = h.meal
/*SELECT ROUND(SUM(lodgings*adr), 2) AS Revenue, YEAR(arrival) AS year, hotel
FROM hotels
GROUP BY YEAR(arrival), hotel
ORDER BY hotel

SELECT * FROM [meal_cost]

SELECT * FROM [market]*/