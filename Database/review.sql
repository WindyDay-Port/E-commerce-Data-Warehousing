CREATE TABLE review (
   `reviewID` varchar(36) NOT NULL,
   `orderID` varchar(36) DEFAULT NULL,
   `SKU` varchar(36) DEFAULT NULL,
   `rating` int DEFAULT NULL,
   `comment` text,
   `timestamp` timestamp NULL DEFAULT NULL,
   PRIMARY KEY (`reviewID`),
   KEY `orderID` (`orderID`),
   KEY `idx_review_SKU_timestamp` (`SKU`,`timestamp` DESC),
   CONSTRAINT `review_ibfk_1` FOREIGN KEY (`SKU`) REFERENCES `product` (`SKU`),
   CONSTRAINT `review_ibfk_2` FOREIGN KEY (`orderID`) REFERENCES `order` (`orderID`)
 ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci