-- Total Orders
SELECT COUNT(*) AS total_orders
FROM shipping_data;

-- Delayed Deliveries
SELECT COUNT(*) AS delayed_orders
FROM shipping_data
WHERE Reached.on.Time_Y.N = 1;

-- Shipment Mode Performance
SELECT Mode_of_Shipment,
       COUNT(*) AS total_shipments
FROM shipping_data
GROUP BY Mode_of_Shipment
ORDER BY total_shipments DESC;

-- Warehouse Performance
SELECT Warehouse_block,
       COUNT(*) AS total_orders
FROM shipping_data
GROUP BY Warehouse_block
ORDER BY total_orders DESC;

-- Average Customer Rating
SELECT AVG(Customer_rating) AS avg_rating
FROM shipping_data;

-- Product Importance Analysis
SELECT Product_importance,
       COUNT(*) AS total_orders
FROM shipping_data
GROUP BY Product_importance
ORDER BY total_orders DESC;
