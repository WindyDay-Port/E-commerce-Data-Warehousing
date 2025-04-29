CREATE TABLE customer (
   `customerID` varchar(36) NOT NULL,
   `first` varchar(50) DEFAULT NULL,
   `middle` varchar(50) DEFAULT NULL,
   `last` varchar(50) DEFAULT NULL,
   `email` varchar(255) DEFAULT NULL,
   PRIMARY KEY (`customerID`)
 ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci