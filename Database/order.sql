CREATE TABLE `order` (
   `orderID` varchar(36) NOT NULL,
   `customerID` varchar(36) DEFAULT NULL,
   `shipping_status` varchar(75) DEFAULT NULL,
   `total_amount` decimal(10,2) DEFAULT NULL,
   `timestamp` timestamp NULL DEFAULT NULL,
   PRIMARY KEY (`orderID`),
   KEY `idx_order_customerID_timestamp` (`customerID`,`timestamp` DESC),
   CONSTRAINT `order_ibfk_1` FOREIGN KEY (`customerID`) REFERENCES `customer` (`customerID`)
 ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci