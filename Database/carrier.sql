CREATE TABLE carrier (
   `shipmentID` varchar(36) NOT NULL,
   `first` varchar(75) DEFAULT NULL,
   `middle` varchar(75) DEFAULT NULL,
   `last` varchar(75) DEFAULT NULL,
   `phone` varchar(20) NOT NULL,
   PRIMARY KEY (`shipmentID`,`phone`),
   CONSTRAINT `carrier_ibfk_1` FOREIGN KEY (`shipmentID`) REFERENCES `shipment` (`shipmentID`)
 ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci