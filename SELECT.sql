CREATE DATABASE 圖書銷售
GO
USE 圖書銷售
GO

USE 圖書銷售
GO
SELECT  *  FROM  晴創資訊

USE 圖書銷售
SELECT  員工編號, 姓名, 出生日期, 部門, 地址  as 晴創資訊
FROM  晴創資訊

--2.查詢地址住 板橋區 的員工所有資料。
USE 圖書銷售
GO
SELECT 員工編號,姓名, 出生日期, 部門,地址 
FROM   晴創資訊
WHERE  地址 LIKE '%板橋區%'

--4.查詢員工薪資調高10%後，薪資會超過5萬的員工姓名、調薪後薪資。
SELECT * FROM 晴創資訊 WHERE  薪資 >= 50000 

--9.查詢9,10 二個月的員工壽星名單。
SELECT 姓名,  出生日期 FROM   晴創資訊
WHERE  month(出生日期) >= 9 and month(出生日期) <= 10

--16.統計公司女性員工的各個姓氏人數。
SELECT 姓名, COUNT(*) AS 人數 FROM 晴創資訊
WHERE 性別 <> '男'
GROUP BY 姓名,性別;

--17.查詢部門人數超過5人的部門名稱,部門人數及部門平均薪資。
SELECT 部門, COUNT(*) AS 部門人數, AVG(薪資) AS 部門平均薪資
FROM 晴創資訊
GROUP BY 部門
HAVING COUNT(*) > 5;

--18.查詢公司員工居住最多的縣市名稱及人數。
SELECT LEFT(地址,3) as 縣市 , COUNT(*) as 人數
FROM 晴創資訊
GROUP BY LEFT(地址,3)   
ORDER BY 人數 DESC
