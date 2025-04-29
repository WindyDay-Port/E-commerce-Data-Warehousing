CREATE TABLE phone_number (
   `customerID` varchar(36) NOT NULL,
   `phone` varchar(20) NOT NULL,
   PRIMARY KEY (`customerID`,`phone`),
   KEY `idx_phone_number_customerID` (`customerID`),
   CONSTRAINT `phone_number_ibfk_1` FOREIGN KEY (`customerID`) REFERENCES `customer` (`customerID`)
 ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci