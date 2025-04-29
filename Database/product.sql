CREATE TABLE product (
   `SKU` varchar(36) NOT NULL,
   `supplierID` varchar(36) DEFAULT NULL,
   `product_name` varchar(75) DEFAULT NULL,
   `description` text,
   `price` decimal(10,2) DEFAULT NULL,
   `inventory_count` int DEFAULT NULL,
   PRIMARY KEY (`SKU`),
   KEY `supplierID` (`supplierID`),
   KEY `idx_product_name_price_inventory` (`product_name`,`price`,`inventory_count`),
   CONSTRAINT `product_ibfk_1` FOREIGN KEY (`supplierID`) REFERENCES `supplier` (`supplierID`)
 ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci