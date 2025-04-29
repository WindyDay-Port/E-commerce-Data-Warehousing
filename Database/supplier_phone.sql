CREATE TABLE supplier_phone (
   `supplierID` varchar(36) NOT NULL,
   `type` varchar(75) DEFAULT NULL,
   `business_phone` varchar(20) NOT NULL,
   PRIMARY KEY (`supplierID`,`business_phone`),
   CONSTRAINT `supplier_phone_ibfk_1` FOREIGN KEY (`supplierID`) REFERENCES `supplier` (`supplierID`)
 ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci