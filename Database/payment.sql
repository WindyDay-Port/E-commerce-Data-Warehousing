CREATE TABLE payment (
   `paymentID` varchar(255) NOT NULL,
   `orderID` varchar(255) DEFAULT NULL,
   `method` varchar(75) DEFAULT NULL,
   `amount` float DEFAULT NULL,
   `status` varchar(75) DEFAULT NULL,
   PRIMARY KEY (`paymentID`),
   UNIQUE KEY `orderID` (`orderID`),
   CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`orderID`) REFERENCES `order` (`orderID`)
 ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci