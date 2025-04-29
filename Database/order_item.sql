CREATE TABLE order_item (
   `orderID` varchar(36) NOT NULL,
   `SKU` varchar(36) NOT NULL,
   `quantity` int DEFAULT NULL,
   PRIMARY KEY (`orderID`,`SKU`),
   KEY `idx_quantity` (`quantity`),
   KEY `idx_order_item_orderID` (`orderID`),
   KEY `idx_order_item_SKU` (`SKU`),
   KEY `idx_order_item_SKU_quantity` (`SKU`,`quantity`),
   CONSTRAINT `order_item_ibfk_1` FOREIGN KEY (`SKU`) REFERENCES `product` (`SKU`),
   CONSTRAINT `order_item_ibfk_2` FOREIGN KEY (`orderID`) REFERENCES `order` (`orderID`)
 ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci