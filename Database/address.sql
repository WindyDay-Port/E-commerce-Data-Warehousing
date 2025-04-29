CREATE TABLE address (
   `customerID` varchar(36) NOT NULL,
   `street` varchar(125) DEFAULT NULL,
   `city` varchar(125) DEFAULT NULL,
   `province` varchar(125) DEFAULT NULL,
   `postal_code` varchar(25) NOT NULL,
   `country` varchar(125) DEFAULT NULL,
   PRIMARY KEY (`customerID`,`postal_code`),
   KEY `idx_address_customerID` (`customerID`),
   CONSTRAINT `address_ibfk_1` FOREIGN KEY (`customerID`) REFERENCES `customer` (`customerID`)
 ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci