---Find all Samsung products with a Price greater than 100,000.
SELECT PRODUCT, BRAND, PRICE
FROM DBO.mobile_sales_data
WHERE BRAND= 'SAMSUNG' AND PRICE>100000;

---Find all products whose brand is Apple OR Samsung.
SELECT PRODUCT, BRAND
FROM DBO.mobile_sales_data
WHERE BRAND= 'APPLE' OR BRAND= 'SAMSUNG';

---Find all products that are NOT Apple.
SELECT PRODUCT, BRAND
FROM DBO.mobile_sales_data
WHERE NOT BRAND= 'APPLE';

---Find all products with a price between 75,000 and 150,000.
SELECT PRODUCT, PRICE
FROM DBO.mobile_sales_data
WHERE PRICE BETWEEN 75000 AND 150000;

---Find all Samsung products with a price between 100,000 and 200,000.
SELECT PRODUCT, BRAND, PRICE
FROM DBO.mobile_sales_data
WHERE BRAND= 'SAMSUNG' AND (PRICE BETWEEN 100000 AND 200000);

---Find all Samsung products where the RAM is either 8GB or 12GB.
SELECT PRODUCT, BRAND, RAM
FROM DBO.mobile_sales_data
WHERE BRAND= 'SAMSUNG' AND (RAM= '8GB' OR RAM= '12GB');

---Find all Mobile Phones where:Price is greater than 100,000 OR Quantity Sold is greater than 5.
SELECT PRODUCT, PRICE, [QUANTITY SOLD]
FROM DBO.mobile_sales_data
WHERE (PRODUCT= 'MOBILE PHONE' AND PRICE>100000) OR [QUANTITY SOLD]>5;

---Find all products that: Are NOT Samsung, AND have a price greater than 100,000.
SELECT PRODUCT, BRAND, PRICE
FROM DBO.mobile_sales_data
WHERE NOT BRAND= 'SAMSUNG' AND PRICE>100000;

---Find products that satisfy either of these two conditions:Condition A: Laptop, Price greater than 100,000 OR Condition B: Mobile Phone Quantity Sold greater than 5
SELECT PRODUCT, PRICE, [QUANTITY SOLD]
FROM DBO.mobile_sales_data
WHERE (PRODUCT= 'LAPTOP' AND PRICE>100000) OR (PRODUCT= 'MOBILE PHONE' AND [QUANTITY SOLD]>5);

---RETRIEVE high-value transaction as either: Option A Samsung Price ≥ 150,000 Quantity Sold ≥ 3 OR Option B Apple Price ≥ 100,000 Quantity Sold ≥ 5
SELECT BRAND, PRICE, [QUANTITY SOLD]
FROM DBO.mobile_sales_data
WHERE (BRAND= 'SAMSUNG' AND PRICE>=150000 AND [QUANTITY SOLD]>=3) OR (BRAND= 'APPLE' AND PRICE>=100000 AND [QUANTITY SOLD]>=5);

---Display: Product, Brand, Price and sort the results by Price from lowest to highest.
SELECT PRODUCT, BRAND, PRICE
FROM DBO.mobile_sales_data
ORDER BY PRICE ASC;

---Display: Product, Brand, Price and sort the results by Price from highest to lowest.
SELECT PRODUCT, BRAND, PRICE
FROM DBO.mobile_sales_data
ORDER BY PRICE DESC;

---Display:Product Brand Quantity Sold and show the products with the highest quantity sold first.
SELECT PRODUCT, BRAND, [QUANTITY SOLD]
FROM DBO.mobile_sales_data
ORDER BY [QUANTITY SOLD] DESC;

---Find all Samsung products and arrange them from highest price to lowest price.
SELECT PRODUCT, BRAND, PRICE
FROM DBO.mobile_sales_data
ORDER BY PRICE ASC;

---Find all products with a Price greater than 100,000, then arrange them from highest price to lowest price.
SELECT PRODUCT, PRICE
FROM DBO.mobile_sales_data
WHERE PRICE>100000
ORDER BY PRICE DESC;

---Find all products where Quantity Sold is greater than 5, then arrange them from lowest quantity sold to highest quantity sold
SELECT  PRODUCT, [QUANTITY SOLD]
FROM DBO.mobile_sales_data
WHERE [QUANTITY SOLD]>5
ORDER BY [QUANTITY SOLD] ASC;

---Sort all products by Brand alphabetically.
SELECT PRODUCT, BRAND
FROM DBO.mobile_sales_data
ORDER BY BRAND ASC;

--Sort the data by: Brand alphabetically Within each brand, Price from highest to lowest
SELECT BRAND, PRICE
FROM DBO.mobile_sales_data
ORDER BY BRAND ASC, PRICE DESC;

---Sort the data by: Region alphabetically Within each region, Quantity Sold from highest to lowest
SELECT REGION, [QUANTITY SOLD]
FROM DBO.mobile_sales_data
ORDER BY REGION ASC, [QUANTITY SOLD] DESC;

---Write a query that finds: Apple products with a price greater than 100,000 and displays the most expensive products first.
SELECT PRODUCT, BRAND, PRICE
FROM DBO.mobile_sales_data
WHERE PRICE>100000
ORDER BY PRICE DESC;

SELECT Upper(brand) as Brand_Name
from dbo.mobile_sales_data;

SELECT LEN(BRAND) AS BRAND_LENGTH
FROM DBO.mobile_sales_data

SELECT TRIM(BRAND) AS BRAND, TRIM(PRICE) AS PRICE, TRIM([QUANTITY SOLD]) AS [QUANTITY SALES]
FROM DBO.mobile_sales_data;

select CONCAT(brand, ' - ', product, ' - ', region) As Product_Details
from dbo.mobile_sales_data;

---Write a query that displays:Customer Name and a second column showing the number of characters in the customer's name.Use an alias called:name_Length
select [Customer Name], Len([customer name]) as Name_Length
from dbo.mobile_sales_data;

SELECT
    Brand,
    UPPER(Brand) AS Standard_Brand,
    LEN(Brand) AS Brand_Length
FROM dbo.mobile_sales_data;

Select Brand, Upper(Brand) As Brand_Upper, Lower(Brand) As Brand_Lower, Len(Brand) As Brand_Length
From dbo.mobile_sales_data;

Select Brand, Product, Trim(Upper(Brand)) As Clean_Brand, Concat(Brand, ' - ', Product) As Product_Details
From dbo.mobile_sales_data;

---Retrieve: Condition A: Product is MOBILE PHONE, Price is greater than or equal to ₦100,000, Quantity Sold is greater than or equal to 5 OR
--Condition B Product is LAPTOP Price is greater than or equal to ₦200,000 Quantity Sold is greater than or equal to 3
Select Product, Price, [Quantity Sold]
From dbo.mobile_sales_data
Where (Product= 'Mobile Phone' And Price>=100000 And [Quantity Sold]>=5) OR (Product= 'Laptop' And Price>=200000 And [Quantity Sold]>=3);

Select Product, Brand, Price, [Quantity Sold], Region, [Customer Name]
From dbo.mobile_sales_data

Select Brand, Upper(Trim(Brand)) As Clean_Brand
From dbo.mobile_sales_data

Select [Customer Name], Len([Customer Name]) As Customer_Name_Length
From dbo.mobile_sales_data;

--
Select Product, Brand, Concat(Brand, ' - ', Product) As Product_Details
From dbo.mobile_sales_data;

---Only return transactions that satisfy:
Select Product, Price, [Quantity Sold]
From dbo.mobile_sales_data
Where (Product= 'Mobile Phone' And Price>=100000 And [Quantity Sold]>=5) Or (Product= 'Laptop' And Price>=200000 And [Quantity Sold]>=3)
Order By Price Desc, [Quantity Sold]Desc;

Select Product, Brand, Price, [Quantity Sold], Region, [Customer Name], Upper(Trim(Brand)) As Clean_Brand, Len([Customer Name]) As Customer_Name_Length, Concat(Brand, ' - ', Product) As Product_Details
From dbo.mobile_sales_data
Where (Product= 'Mobile Phone' And Price>=100000 And [Quantity Sold]>=5) Or (Product= 'Laptop' And Price>=200000 And [Quantity Sold]>=3)
Order By Price Desc, [Quantity Sold] Desc;

---Write a query that displays: Product Price Rounded_Price where Rounded_Price is the Price rounded to 2 decimal places.
SELECT PRODUCT, PRICE, ROUND(PRICE,2) AS Rounded_Price
FROM dbo.mobile_sales_data;

---Write a query that displays: Product Price Quantity SolD Sales_Value
---where: Sales_Value = Price × Quantity Sold and the Sales Value is rounded to 2 decimal places.
SELECT Product, Price, [Quantity Sold], ROUND(PRICE*[QUANTITY SOLD],2) AS Sales_Value
FROM dbo.mobile_sales_data;

---Product Price Ceiling_Price where Ceiling_Price is the Price rounded up to the next whole number.
SELECT PRODUCT, PRICE, CEILING(PRICE) AS Ceiling_Price
FROM dbo.mobile_sales_data;

---Write a query that displays:Product Price Quantity Sold Sales_Value_Ceiling Sales_Value_Ceiling = Price × Quantity Sold
SELECT PRODUCT, PRICE, [QUANTITY SOLD], CEILING(PRICE*[QUANTITY SOLD]) AS Sales_Value_Ceiling
FROM dbo.mobile_sales_data;

SELECT Product, Price, Floor(Price) AS Floor_Price
FROM dbo.mobile_sales_data;

SELECT Product, Price, [Quantity Sold], FLOOR(Price*[Quantity Sold]) AS Sales_Value_Floor
FROM dbo.mobile_sales_data;

SELECT PRODUCT, PRICE, ABS(PRICE-100000) AS Price_Difference
FROM dbo.mobile_sales_data;

---What is the total gross sales value generated by each product based on unit price and volume sold?
SELECT Product, Price, [Quantity Sold], ABS(PRICE*[Quantity Sold]) AS Sales_Value
FROM dbo.mobile_sales_data;

---What year was stock received into inventory?
SELECT [Inward Date], Year([Inward Date]) As Inward_Year
FROM dbo.mobile_sales_data;

--Which month of the year was a product delivered into inventory?
SELECT PRODUCT, [Inward Date], Month([Inward Date]) As Inward_Month
FROM dbo.mobile_sales_data;

---What is the specific year, month, and day breakdown for when each product arrived into warehouse inventory?
SELECT PRODUCT, [INWARD DATE], YEAR([INWARD DATE]) AS Inward_Year, MONTH([INWARD DATE]) AS Inward_Month, DAY([INWARD DATE]) AS Inward_Day
FROM dbo.mobile_sales_data;

---How many total days elapsed between August 1, 2024, and August 10, 2024?
SELECT DATEDIFF(DAY, '2024-08-01', '2024-08-10') AS Days_Elapsed;

--Query B
SELECT DATEDIFF(DAY, '2024-08-10', '2024-08-01') AS Days_Elapsed;

---How many days does it take to dispatch each product from the time it is received into inventory?
SELECT Product, [Inward Date], [Dispatch Date], DATEDIFF(Day, [Inward Date], [Dispatch Date]) As Days_To_Dispatch
FROM dbo.mobile_sales_data;

---Which products experienced dispatch delays exceeding one week (7 days) after being received into inventory?
SELECT PRODUCT, [INWARD DATE], [DISPATCH DATE], DATEDIFF(DAY, [INWARD DATE], [DISPATCH DATE]) AS Days_To_Dispatch
FROM DBO.mobile_sales_data
WHERE DATEDIFF(DAY, [INWARD DATE], [DISPATCH DATE])>7;




/* =========================================================
   AGGREGATE & CONDITIONAL BUSINESS ANALYSIS
   ========================================================= */

---How many total transactions are recorded in the dataset?
SELECT COUNT(*) AS Total_Transactions
FROM dbo.mobile_sales_data;

---What is the total gross sales value across all transactions?
SELECT ROUND(SUM(Price * [Quantity Sold]), 2) AS Total_Gross_Sales
FROM dbo.mobile_sales_data;

---What is the average price of products in the dataset?
SELECT ROUND(AVG(Price), 2) AS Average_Price
FROM dbo.mobile_sales_data;

---What are the lowest and highest product prices?
SELECT MIN(Price) AS Minimum_Price,
       MAX(Price) AS Maximum_Price
FROM dbo.mobile_sales_data;

---How many transactions are recorded for each brand?
SELECT Brand,
       COUNT(*) AS Transaction_Count
FROM dbo.mobile_sales_data
GROUP BY Brand
ORDER BY Transaction_Count DESC;

---What is the total gross sales value generated by each product?
SELECT Product,
       ROUND(SUM(Price * [Quantity Sold]), 2) AS Total_Sales
FROM dbo.mobile_sales_data
GROUP BY Product
ORDER BY Total_Sales DESC;

---What is the total gross sales value generated by each brand?
SELECT Brand,
       ROUND(SUM(Price * [Quantity Sold]), 2) AS Total_Sales
FROM dbo.mobile_sales_data
GROUP BY Brand
ORDER BY Total_Sales DESC;

---What is the total quantity sold by each brand?
SELECT Brand,
       SUM([Quantity Sold]) AS Total_Quantity_Sold
FROM dbo.mobile_sales_data
GROUP BY Brand
ORDER BY Total_Quantity_Sold DESC;

---What is the average product price for each brand?
SELECT Brand,
       ROUND(AVG(Price), 2) AS Average_Price
FROM dbo.mobile_sales_data
GROUP BY Brand
ORDER BY Average_Price DESC;

---What is the total gross sales value generated by each region?
SELECT Region,
       ROUND(SUM(Price * [Quantity Sold]), 2) AS Total_Sales
FROM dbo.mobile_sales_data
GROUP BY Region
ORDER BY Total_Sales DESC;

---Which brands have more than 5 transactions?
SELECT Brand,
       COUNT(*) AS Transaction_Count
FROM dbo.mobile_sales_data
GROUP BY Brand
HAVING COUNT(*) > 5
ORDER BY Transaction_Count DESC;

---Which brands generated more than ₦1,000,000 in gross sales?
SELECT Brand,
       ROUND(SUM(Price * [Quantity Sold]), 2) AS Total_Sales
FROM dbo.mobile_sales_data
GROUP BY Brand
HAVING SUM(Price * [Quantity Sold]) > 1000000
ORDER BY Total_Sales DESC;

---Which products have a total quantity sold greater than 10?
SELECT Product,
       SUM([Quantity Sold]) AS Total_Quantity_Sold
FROM dbo.mobile_sales_data
GROUP BY Product
HAVING SUM([Quantity Sold]) > 10
ORDER BY Total_Quantity_Sold DESC;

---How many transactions are recorded in each region?
SELECT Region,
       COUNT(*) AS Transaction_Count
FROM dbo.mobile_sales_data
GROUP BY Region
ORDER BY Transaction_Count DESC;

---What is the average quantity sold for each product?
SELECT Product,
       ROUND(AVG([Quantity Sold]), 2) AS Average_Quantity_Sold
FROM dbo.mobile_sales_data
GROUP BY Product
ORDER BY Average_Quantity_Sold DESC;

---What are the lowest and highest prices recorded for each brand?
SELECT Brand,
       MIN(Price) AS Minimum_Price,
       MAX(Price) AS Maximum_Price
FROM dbo.mobile_sales_data
GROUP BY Brand
ORDER BY Maximum_Price DESC;

---What are the total sales value and transaction count for each brand?
SELECT Brand,
       COUNT(*) AS Transaction_Count,
       ROUND(SUM(Price * [Quantity Sold]), 2) AS Total_Sales
FROM dbo.mobile_sales_data
GROUP BY Brand
ORDER BY Total_Sales DESC;

---What is the average sales value per transaction for each brand?
SELECT Brand,
       ROUND(AVG(Price * [Quantity Sold]), 2) AS Average_Sales_Value
FROM dbo.mobile_sales_data
GROUP BY Brand
ORDER BY Average_Sales_Value DESC;

---Classify products into price categories.
SELECT Product,
       Brand,
       Price,
       CASE
           WHEN Price < 75000 THEN 'Low Price'
           WHEN Price BETWEEN 75000 AND 150000 THEN 'Medium Price'
           ELSE 'High Price'
       END AS Price_Category
FROM dbo.mobile_sales_data;

---How many transactions fall into each price category?
SELECT CASE
           WHEN Price < 75000 THEN 'Low Price'
           WHEN Price BETWEEN 75000 AND 150000 THEN 'Medium Price'
           ELSE 'High Price'
       END AS Price_Category,
       COUNT(*) AS Transaction_Count
FROM dbo.mobile_sales_data
GROUP BY CASE
             WHEN Price < 75000 THEN 'Low Price'
           WHEN Price BETWEEN 75000 AND 150000 THEN 'Medium Price'
           ELSE 'High Price'
         END
ORDER BY Transaction_Count DESC;

---Classify transactions based on quantity sold.
SELECT Product,
       [Quantity Sold],
       CASE
           WHEN [Quantity Sold] <= 2 THEN 'Low Volume'
           WHEN [Quantity Sold] BETWEEN 3 AND 5 THEN 'Medium Volume'
           ELSE 'High Volume'
       END AS Sales_Volume_Category
FROM dbo.mobile_sales_data;

---Classify products according to their dispatch duration.
SELECT Product,
       [Inward Date],
       [Dispatch Date],
       DATEDIFF(DAY, [Inward Date], [Dispatch Date]) AS Days_To_Dispatch,
       CASE
           WHEN DATEDIFF(DAY, [Inward Date], [Dispatch Date]) <= 3 THEN 'Fast'
           WHEN DATEDIFF(DAY, [Inward Date], [Dispatch Date]) <= 7 THEN 'Normal'
           ELSE 'Delayed'
       END AS Dispatch_Status
FROM dbo.mobile_sales_data;

---What is the total sales value generated by each price category?
SELECT CASE
           WHEN Price < 75000 THEN 'Low Price'
           WHEN Price BETWEEN 75000 AND 150000 THEN 'Medium Price'
           ELSE 'High Price'
       END AS Price_Category,
       ROUND(SUM(Price * [Quantity Sold]), 2) AS Total_Sales
FROM dbo.mobile_sales_data
GROUP BY CASE
             WHEN Price < 75000 THEN 'Low Price'
           WHEN Price BETWEEN 75000 AND 150000 THEN 'Medium Price'
           ELSE 'High Price'
         END
ORDER BY Total_Sales DESC;

---What is the total quantity sold within each price category?
SELECT CASE
           WHEN Price < 75000 THEN 'Low Price'
           WHEN Price BETWEEN 75000 AND 150000 THEN 'Medium Price'
           ELSE 'High Price'
       END AS Price_Category,
       SUM([Quantity Sold]) AS Total_Quantity_Sold
FROM dbo.mobile_sales_data
GROUP BY CASE
             WHEN Price < 75000 THEN 'Low Price'
           WHEN Price BETWEEN 75000 AND 150000 THEN 'Medium Price'
           ELSE 'High Price'
         END
ORDER BY Total_Quantity_Sold DESC;

---How many transactions fall into each dispatch performance category?
SELECT CASE
           WHEN DATEDIFF(DAY, [Inward Date], [Dispatch Date]) <= 3 THEN 'Fast'
           WHEN DATEDIFF(DAY, [Inward Date], [Dispatch Date]) <= 7 THEN 'Normal'
           ELSE 'Delayed'
       END AS Dispatch_Status,
       COUNT(*) AS Transaction_Count
FROM dbo.mobile_sales_data
GROUP BY CASE
             WHEN DATEDIFF(DAY, [Inward Date], [Dispatch Date]) <= 3 THEN 'Fast'
             WHEN DATEDIFF(DAY, [Inward Date], [Dispatch Date]) <= 7 THEN 'Normal'
             ELSE 'Delayed'
         END
ORDER BY Transaction_Count DESC;

---What is the average dispatch time for each region?
SELECT Region,
       ROUND(AVG(DATEDIFF(DAY, [Inward Date], [Dispatch Date])), 2) AS Average_Days_To_Dispatch
FROM dbo.mobile_sales_data
GROUP BY Region
ORDER BY Average_Days_To_Dispatch ASC;
