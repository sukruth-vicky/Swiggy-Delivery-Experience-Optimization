CREATE TABLE swiggy_orders (
    Order_ID INT,
    Customer_ID VARCHAR(10),
    City VARCHAR(50),
    Order_Time VARCHAR(30),
    Delivery_Time_Minutes INT,
    Estimated_Time_Minutes INT,
    Restaurant_Prep_Time INT,
    Delivery_Distance_KM DECIMAL(5,2),
    Delivery_Partner_ID VARCHAR(10),
    Order_Status VARCHAR(20),
    Customer_Rating INT,
    Order_Value INT,
    Peak_Hour VARCHAR(10),
    Weather_Condition VARCHAR(20),
    Traffic_Level VARCHAR(20),
    Repeat_Customer VARCHAR(10)
);

DROP TABLE swiggy_orders;

CREATE TABLE swiggy_orders (
    Order_ID INT,
    Customer_ID VARCHAR(10),
    City VARCHAR(50),
    Order_Time VARCHAR(30),
    Delivery_Time_Minutes INT,
    Estimated_Time_Minutes INT,
    Restaurant_Prep_Time INT,
    Delivery_Distance_KM DECIMAL(5,2),
    Delivery_Partner_ID VARCHAR(10),
    Order_Status VARCHAR(20),
    Customer_Rating INT,
    Order_Value INT,
    Peak_Hour VARCHAR(10),
    Weather_Condition VARCHAR(20),
    Traffic_Level VARCHAR(20),
    Repeat_Customer VARCHAR(10)
);

SELECT COUNT(*) FROM swiggy_orders;

SELECT 
    AVG(Delivery_Time_Minutes) AS Average_Delivery_Time
FROM swiggy_orders;

SELECT 
    AVG(Estimated_Time_Minutes) AS Avg_Estimated_Time,
    AVG(Delivery_Time_Minutes) AS Avg_Actual_Delivery_Time
FROM swiggy_orders;

SELECT 
    Order_Status,
    COUNT(*) AS Total_Orders
FROM swiggy_orders
GROUP BY Order_Status;

SELECT 
    Peak_Hour,
    AVG(Delivery_Time_Minutes) AS Avg_Delivery_Time
FROM swiggy_orders
GROUP BY Peak_Hour;

SELECT 
    Repeat_Customer,
    COUNT(*) AS Total_Customers
FROM swiggy_orders
GROUP BY Repeat_Customer;

SELECT 
    AVG(Customer_Rating) AS Average_Customer_Rating
FROM swiggy_orders;

SELECT 
    Traffic_Level,
    AVG(Delivery_Time_Minutes) AS Avg_Delivery_Time
FROM swiggy_orders
GROUP BY Traffic_Level;

SELECT 
    City,
    AVG(Delivery_Time_Minutes) AS Avg_Delivery_Time
FROM swiggy_orders
GROUP BY City
ORDER BY Avg_Delivery_Time DESC;