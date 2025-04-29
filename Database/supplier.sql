CREATE TABLE supplier (
   `supplierID` varchar(36) NOT NULL,
   `supplier_name` varchar(150) DEFAULT NULL,
   `supplier_detail` text,
   PRIMARY KEY (`supplierID`)
 ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci