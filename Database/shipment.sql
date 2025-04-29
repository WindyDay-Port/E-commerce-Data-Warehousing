CREATE TABLE shipment (
   `shipmentID` varchar(36) NOT NULL,
   `orderID` varchar(36) DEFAULT NULL,
   `delivery_method` varchar(75) DEFAULT NULL,
   `delivery_status` varchar(75) DEFAULT NULL,
   PRIMARY KEY (`shipmentID`),
   UNIQUE KEY `orderID` (`orderID`),
   KEY `idx_shipment_orderID` (`orderID`),
   CONSTRAINT `shipment_ibfk_1` FOREIGN KEY (`orderID`) REFERENCES `order` (`orderID`)
 ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci