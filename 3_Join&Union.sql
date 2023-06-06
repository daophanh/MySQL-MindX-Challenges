-- LESSON 3: JOIN - UNION

-- 1. List of orders with Category = 'Chip'

SELECT hd.*
    , sp.CategoryName
FROM MX_HOADON AS hd
LEFT JOIN MX_SANPHAM AS sp 
    ON hd.ProductID = sp.ProductId 
WHERE sp.CategoryName = 'Chip';

-- 2. Orders list with Employee name = 'Linh'
SELECT nv.EmName
    , hd.*
FROM MX_HOADON AS hd
LEFT JOIN MX_NHANVIEN AS nv
    ON hd.SalesID = nv.EmID
WHERE RIGHT(nv.EmName,4) = 'Linh'; 

-- 3. Union All with HOADON_MOI and repeat question1&2

SELECT summary.*
    , sp.CategoryName
FROM (
    SELECT * FROM [dbo].[MX_HOADON]
    UNION ALL 
    SELECT * FROM [dbo].[HOADONMOI]
) AS summary
LEFT JOIN MX_SANPHAM AS sp 
    ON summary.ProductID = sp.ProductId 
WHERE sp.CategoryName = 'Chip';

SELECT summary.*
    , sp.CategoryName
FROM (
    SELECT * FROM [dbo].[MX_HOADON]
    UNION ALL 
    SELECT * FROM [dbo].[HOADONMOI]
) AS summary
LEFT JOIN MX_SANPHAM AS sp 
    ON summary.ProductID = sp.ProductId 
WHERE sp.CategoryName = 'Chip';

SELECT nv.EmName
    , summary.*
FROM (
    SELECT * FROM [dbo].[MX_HOADON]
    UNION ALL 
    SELECT * FROM [dbo].[HOADONMOI]
) AS summary
LEFT JOIN MX_NHANVIEN AS nv
    ON summary.SalesID = nv.EmID
WHERE RIGHT(nv.EmName,4) = 'Linh'

-- 4. how manay days from orderdate to datecreate of Hoadon list
SELECT *
    , DATEDIFF(day,OrderDate,DateCreate) AS num_of_days
FROM [dbo].[MX_HOADON]
    UNION ALL 
SELECT * 
    , DATEDIFF(day,OrderDate,DateCreate) AS num_of_days
FROM [dbo].[HOADONMOI];