CREATE TABLE supplier_email (
   `supplierID` varchar(36) NOT NULL,
   `type` varchar(75) DEFAULT NULL,
   `business_email` varchar(175) DEFAULT NULL,
   PRIMARY KEY (`supplierID`),
   CONSTRAINT `supplier_email_ibfk_1` FOREIGN KEY (`supplierID`) REFERENCES `supplier` (`supplierID`)
 ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci