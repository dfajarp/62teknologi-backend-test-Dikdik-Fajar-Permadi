-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: db_business
-- ------------------------------------------------------
-- Server version	5.5.5-10.1.48-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `business`
--

DROP TABLE IF EXISTS `business`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `business` (
  `id` varchar(100) NOT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `is_closed` tinyint(1) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `review_count` int(11) DEFAULT NULL,
  `rating` decimal(3,2) DEFAULT NULL,
  `latitude` decimal(10,6) DEFAULT NULL,
  `longitude` decimal(10,6) DEFAULT NULL,
  `price` varchar(10) DEFAULT NULL,
  `address1` varchar(255) DEFAULT NULL,
  `address2` varchar(255) DEFAULT NULL,
  `address3` varchar(255) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `zip_code` varchar(20) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `distance` decimal(10,2) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `business`
--

LOCK TABLES `business` WRITE;
/*!40000 ALTER TABLE `business` DISABLE KEYS */;
INSERT INTO `business` VALUES ('0d24d980-90fb-4ef5-aa80-2efe105be7cc','nopa-san-francisco','Nopa','https://s3-media3.fl.yelpcdn.com/bphoto/QA8Cvsvbx4Pi0e64OTDrZQ/o.jpg',0,'https://www.yelp.com/biz/nopa-san-francisco?adjust_creative=DSj6I8qbyHf-Zm2fGExuug&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=DSj6I8qbyHf-Zm2fGExuug',5516,4.00,37.774830,-122.437460,'$$$','560 Divisadero St',NULL,'','San Francisco','US','CA','94117','+14158648643',1559.18,'2024-02-04 19:16:37','2024-02-04 19:16:37'),('0f589c5f-3fa0-4169-8e0c-814ce7b9eb2b','gary-danko-san-francisco','Gary Danko','https://s3-media1.fl.yelpcdn.com/bphoto/Rqsfo-yDIBrYC6QHSlcw5A/o.jpg',0,'https://www.yelp.com/biz/gary-danko-san-francisco?adjust_creative=DSj6I8qbyHf-Zm2fGExuug&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=DSj6I8qbyHf-Zm2fGExuug',5951,4.50,37.805823,-122.420606,'$$$$','800 N Point St','','','San Francisco','US','CA','94109','+14157492060',5185.69,'2024-02-04 19:16:37','2024-02-04 19:16:37'),('147ea169-ad7d-4e23-b889-7007e75dd53a','hog-island-oyster-san-francisco-2','Hog Island Oyster','https://s3-media4.fl.yelpcdn.com/bphoto/Hx-2wk2qjf5pOJLewaCoUQ/o.jpg',0,'https://www.yelp.com/biz/hog-island-oyster-san-francisco-2?adjust_creative=DSj6I8qbyHf-Zm2fGExuug&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=DSj6I8qbyHf-Zm2fGExuug',7131,4.50,37.795831,-122.393303,'$$','1 Ferry Bldg','','Shop 11','San Francisco','US','CA','94111','+14153917117',5428.16,'2024-02-04 19:16:37','2024-02-04 19:16:37'),('14b8a9dd-c2f3-40ee-9f75-b8dff25770f1','beretta-valencia-san-francisco-3','Beretta Valencia','https://s3-media2.fl.yelpcdn.com/bphoto/HKxMJ8q8fzOY76hy7ACIag/o.jpg',0,'https://www.yelp.com/biz/beretta-valencia-san-francisco-3?adjust_creative=DSj6I8qbyHf-Zm2fGExuug&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=DSj6I8qbyHf-Zm2fGExuug',4189,4.00,37.753856,-122.420628,'$$','1199 Valencia St','','','San Francisco','US','CA','94110','+14156951199',1596.08,'2024-02-04 19:16:37','2024-02-04 19:16:37'),('262377f8-8129-4027-9fd1-6f9d75f186c2','kitchen-story-san-francisco','Kitchen Story','https://s3-media3.fl.yelpcdn.com/bphoto/NFhzbxcz4No5Ny8_IHdPMw/o.jpg',0,'https://www.yelp.com/biz/kitchen-story-san-francisco?adjust_creative=DSj6I8qbyHf-Zm2fGExuug&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=DSj6I8qbyHf-Zm2fGExuug',4110,4.00,37.764291,-122.430724,'$$','3499 16th St','','','San Francisco','US','CA','94114','+14155254905',628.73,'2024-02-04 19:16:37','2024-02-04 19:16:37'),('2a156ffb-7b3f-4624-9f2d-928e1e6a351c','kokkari-estiatorio-san-francisco','Kokkari Estiatorio','https://s3-media2.fl.yelpcdn.com/bphoto/FTQfPJubJEtYeyHqwAsVKw/o.jpg',0,'https://www.yelp.com/biz/kokkari-estiatorio-san-francisco?adjust_creative=DSj6I8qbyHf-Zm2fGExuug&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=DSj6I8qbyHf-Zm2fGExuug',5229,4.50,37.796996,-122.399661,'$$$','200 Jackson St','','','San Francisco','US','CA','94111','+14159810983',5153.88,'2024-02-04 19:16:37','2024-02-04 19:16:37'),('3ce0fea1-887b-401f-9e21-b236ccd0d8a1','marufuku-ramen-san-francisco-5','Marufuku Ramen','https://s3-media4.fl.yelpcdn.com/bphoto/ouK2VmW0SrI70jsJpTxJhw/o.jpg',0,'https://www.yelp.com/biz/marufuku-ramen-san-francisco-5?adjust_creative=DSj6I8qbyHf-Zm2fGExuug&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=DSj6I8qbyHf-Zm2fGExuug',5026,4.50,37.785220,-122.431570,'$$','1581 Webster St','Ste 235',NULL,'San Francisco','US','CA','94115','+14158729786',2720.80,'2024-02-04 19:16:37','2024-02-04 19:16:37'),('526ef0d4-9e6d-471e-ae81-5b0e4024eb9b','liholiho-yacht-club-san-francisco-2','Liholiho Yacht Club','https://s3-media3.fl.yelpcdn.com/bphoto/fOYW8NHV-SDkRdclG4ueGA/o.jpg',0,'https://www.yelp.com/biz/liholiho-yacht-club-san-francisco-2?adjust_creative=DSj6I8qbyHf-Zm2fGExuug&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=DSj6I8qbyHf-Zm2fGExuug',2755,4.50,37.788439,-122.414509,'$$$','871 Sutter St',NULL,'','San Francisco','US','CA','94109','',3618.77,'2024-02-04 19:16:37','2024-02-04 19:16:37'),('58a0d476-0fc7-4e22-acbe-03357afc3ed7','zazie-san-francisco','Zazie','https://s3-media2.fl.yelpcdn.com/bphoto/p-wLlWtS6hcPY5vXWkd92Q/o.jpg',0,'https://www.yelp.com/biz/zazie-san-francisco?adjust_creative=DSj6I8qbyHf-Zm2fGExuug&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=DSj6I8qbyHf-Zm2fGExuug',5239,4.00,37.765257,-122.450002,'$$','941 Cole St','','','San Francisco','US','CA','94117','+14155645332',1286.26,'2024-02-04 19:16:37','2024-02-04 19:16:37'),('5df72d3b-f3d7-4623-8fad-391334e19569','brendas-french-soul-food-san-francisco-6','Brenda\'s French Soul Food','https://s3-media2.fl.yelpcdn.com/bphoto/AgHoMsQcQUXH84gF4XDeVw/o.jpg',0,'https://www.yelp.com/biz/brendas-french-soul-food-san-francisco-6?adjust_creative=DSj6I8qbyHf-Zm2fGExuug&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=DSj6I8qbyHf-Zm2fGExuug',12285,4.00,37.782915,-122.418900,'$$','652 Polk St','','','San Francisco','US','CA','94102','+14153458100',2893.41,'2024-02-04 19:16:37','2024-02-04 19:16:37'),('9720836f-fb31-49d9-9f46-8ff5ce498b28','foreign-cinema-san-francisco','Foreign Cinema','https://s3-media3.fl.yelpcdn.com/bphoto/cw5y2LSOIE-EVNjKK_d7SQ/o.jpg',0,'https://www.yelp.com/biz/foreign-cinema-san-francisco?adjust_creative=DSj6I8qbyHf-Zm2fGExuug&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=DSj6I8qbyHf-Zm2fGExuug',5531,4.00,37.756370,-122.419250,'$$$','2534 Mission St','','','San Francisco','US','CA','94110','+14156487600',1595.99,'2024-02-04 19:16:37','2024-02-04 19:16:37'),('9d19de91-6b6c-4440-b515-7f9afb2cfc26','sweet-maple-san-francisco','Sweet Maple','https://s3-media2.fl.yelpcdn.com/bphoto/etyS0Af-PS74CTwxly2uoA/o.jpg',0,'https://www.yelp.com/biz/sweet-maple-san-francisco?adjust_creative=DSj6I8qbyHf-Zm2fGExuug&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=DSj6I8qbyHf-Zm2fGExuug',4774,4.50,37.785670,-122.435087,'$$','2101 Sutter St','','','San Francisco','US','CA','94115','+14156559169',2771.36,'2024-02-04 19:16:37','2024-02-04 19:16:37'),('a2e9eca5-6c8b-4790-a25e-c39e1ff4f033','scomas-restaurant-san-francisco-3','Scoma\'s Restaurant','https://s3-media2.fl.yelpcdn.com/bphoto/YRg4ICRgMgVN89LH4L6Rww/o.jpg',0,'https://www.yelp.com/biz/scomas-restaurant-san-francisco-3?adjust_creative=DSj6I8qbyHf-Zm2fGExuug&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=DSj6I8qbyHf-Zm2fGExuug',4538,4.00,37.808952,-122.418487,'$$$','1965 Al Scoma Way','','','San Francisco','US','CA','94133','+14157714383',5570.65,'2024-02-04 19:16:37','2024-02-04 19:16:37'),('b12ad647-3f7d-47f7-8d73-93a9c0fe3699','lazy-bear-san-francisco-5','Lazy Bear','https://s3-media3.fl.yelpcdn.com/bphoto/I3yhxGxciarZn4J8QJWBkw/o.jpg',0,'https://www.yelp.com/biz/lazy-bear-san-francisco-5?adjust_creative=DSj6I8qbyHf-Zm2fGExuug&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=DSj6I8qbyHf-Zm2fGExuug',807,4.50,37.760410,-122.419690,'$$$$','3416 19th St','','','San Francisco','US','CA','94110','+14158749921',1471.93,'2024-02-04 19:16:37','2024-02-04 19:16:37'),('d18ca0db-7d29-4d8e-9be5-67b504588f25','lapisara-eatery-san-francisco-2','Lapisara Eatery','https://s3-media4.fl.yelpcdn.com/bphoto/E2NDjr70XCrrxYAz2vsglw/o.jpg',0,'https://www.yelp.com/biz/lapisara-eatery-san-francisco-2?adjust_creative=DSj6I8qbyHf-Zm2fGExuug&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=DSj6I8qbyHf-Zm2fGExuug',1507,4.50,37.787851,-122.413231,'$$','698 Post St',NULL,'','San Francisco','US','CA','94109','+14156553556',3625.64,'2024-02-04 19:16:37','2024-02-04 19:16:37'),('de0c4ba5-8cf7-48ee-894c-0db00fd38b45','surisan-san-francisco','Surisan','https://s3-media3.fl.yelpcdn.com/bphoto/TRmQFBMztDCAlp_ol7IMbA/o.jpg',0,'https://www.yelp.com/biz/surisan-san-francisco?adjust_creative=DSj6I8qbyHf-Zm2fGExuug&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=DSj6I8qbyHf-Zm2fGExuug',3531,4.50,37.806780,-122.417560,'$$','505 Beach St','',NULL,'San Francisco','US','CA','94133','+14157718449',5366.48,'2024-02-04 19:16:37','2024-02-04 19:16:37'),('e4725807-75d8-42fa-93bf-907b6ce5ce97','fog-harbor-fish-house-san-francisco-2','Fog Harbor Fish House','https://s3-media2.fl.yelpcdn.com/bphoto/by8Hh63BLPv_HUqRUdsp_w/o.jpg',0,'https://www.yelp.com/biz/fog-harbor-fish-house-san-francisco-2?adjust_creative=DSj6I8qbyHf-Zm2fGExuug&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=DSj6I8qbyHf-Zm2fGExuug',10169,4.50,37.808890,-122.410250,'$$','39 Pier','Ste 202A','','San Francisco','US','CA','94133','+14159692010',5804.68,'2024-02-04 19:16:37','2024-02-04 19:16:37'),('e5a85262-0cbe-44e6-8e28-b921cc9bbe4c','roma-antica-san-francisco-3','Roma Antica','https://s3-media1.fl.yelpcdn.com/bphoto/uPPwdSVkRw4hrRQTynvJBA/o.jpg',0,'https://www.yelp.com/biz/roma-antica-san-francisco-3?adjust_creative=DSj6I8qbyHf-Zm2fGExuug&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=DSj6I8qbyHf-Zm2fGExuug',1440,4.50,37.799890,-122.440800,'$$','3242 Scott St','',NULL,'San Francisco','US','CA','94123','+14158964281',4351.77,'2024-02-04 19:16:37','2024-02-04 19:16:37'),('f77227f2-c895-480f-b35e-045b19a713a6','house-of-prime-rib-san-francisco','House of Prime Rib','https://s3-media4.fl.yelpcdn.com/bphoto/HLrjaMoAgYSac0vx71YpCA/o.jpg',0,'https://www.yelp.com/biz/house-of-prime-rib-san-francisco?adjust_creative=DSj6I8qbyHf-Zm2fGExuug&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=DSj6I8qbyHf-Zm2fGExuug',8955,4.00,37.793380,-122.422500,'$$$','1906 Van Ness Ave','','','San Francisco','US','CA','94109','+14158854605',3827.48,'2024-02-04 19:16:37','2024-02-04 19:16:37'),('fe51a551-5d9e-4ee2-989e-181b8f70c089','wildseed-san-francisco-2','Wildseed','https://s3-media1.fl.yelpcdn.com/bphoto/u08PO92_L37rJy1bVvCrpA/o.jpg',0,'https://www.yelp.com/biz/wildseed-san-francisco-2?adjust_creative=DSj6I8qbyHf-Zm2fGExuug&utm_campaign=yelp_api_v3&utm_medium=api_v3_business_search&utm_source=DSj6I8qbyHf-Zm2fGExuug',1470,4.50,37.797680,-122.432450,'$$','2000 Union St',NULL,NULL,'San Francisco','US','CA','94123','+14158727350',4099.44,'2024-02-04 19:16:37','2024-02-04 19:16:37');
/*!40000 ALTER TABLE `business` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `alias` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `businessId` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `businessId` (`businessId`),
  CONSTRAINT `categories_ibfk_1` FOREIGN KEY (`businessId`) REFERENCES `business` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'seafood','Seafood','2024-02-04 19:16:37','2024-02-04 19:16:37','e4725807-75d8-42fa-93bf-907b6ce5ce97'),(2,'wine_bars','Wine Bars','2024-02-04 19:16:37','2024-02-04 19:16:37','e4725807-75d8-42fa-93bf-907b6ce5ce97'),(3,'cocktailbars','Cocktail Bars','2024-02-04 19:16:37','2024-02-04 19:16:37','e4725807-75d8-42fa-93bf-907b6ce5ce97'),(4,'greek','Greek','2024-02-04 19:16:37','2024-02-04 19:16:37','2a156ffb-7b3f-4624-9f2d-928e1e6a351c'),(5,'mediterranean','Mediterranean','2024-02-04 19:16:37','2024-02-04 19:16:37','2a156ffb-7b3f-4624-9f2d-928e1e6a351c'),(6,'newamerican','New American','2024-02-04 19:16:37','2024-02-04 19:16:37','0f589c5f-3fa0-4169-8e0c-814ce7b9eb2b'),(7,'french','French','2024-02-04 19:16:37','2024-02-04 19:16:37','0f589c5f-3fa0-4169-8e0c-814ce7b9eb2b'),(8,'wine_bars','Wine Bars','2024-02-04 19:16:37','2024-02-04 19:16:37','0f589c5f-3fa0-4169-8e0c-814ce7b9eb2b'),(9,'seafood','Seafood','2024-02-04 19:16:37','2024-02-04 19:16:37','147ea169-ad7d-4e23-b889-7007e75dd53a'),(10,'seafoodmarkets','Seafood Markets','2024-02-04 19:16:37','2024-02-04 19:16:37','147ea169-ad7d-4e23-b889-7007e75dd53a'),(11,'raw_food','Live/Raw Food','2024-02-04 19:16:37','2024-02-04 19:16:37','147ea169-ad7d-4e23-b889-7007e75dd53a'),(12,'breakfast_brunch','Breakfast & Brunch','2024-02-04 19:16:37','2024-02-04 19:16:37','58a0d476-0fc7-4e22-acbe-03357afc3ed7'),(13,'french','French','2024-02-04 19:16:37','2024-02-04 19:16:37','58a0d476-0fc7-4e22-acbe-03357afc3ed7'),(14,'wine_bars','Wine Bars','2024-02-04 19:16:37','2024-02-04 19:16:37','58a0d476-0fc7-4e22-acbe-03357afc3ed7'),(15,'korean','Korean','2024-02-04 19:16:37','2024-02-04 19:16:37','de0c4ba5-8cf7-48ee-894c-0db00fd38b45'),(16,'newamerican','New American','2024-02-04 19:16:37','2024-02-04 19:16:37','de0c4ba5-8cf7-48ee-894c-0db00fd38b45'),(17,'breakfast_brunch','Breakfast & Brunch','2024-02-04 19:16:37','2024-02-04 19:16:37','de0c4ba5-8cf7-48ee-894c-0db00fd38b45'),(18,'breakfast_brunch','Breakfast & Brunch','2024-02-04 19:16:37','2024-02-04 19:16:37','5df72d3b-f3d7-4623-8fad-391334e19569'),(19,'southern','Southern','2024-02-04 19:16:37','2024-02-04 19:16:37','5df72d3b-f3d7-4623-8fad-391334e19569'),(20,'cajun','Cajun/Creole','2024-02-04 19:16:37','2024-02-04 19:16:37','5df72d3b-f3d7-4623-8fad-391334e19569'),(21,'tradamerican','American','2024-02-04 19:16:37','2024-02-04 19:16:37','f77227f2-c895-480f-b35e-045b19a713a6'),(22,'steak','Steakhouses','2024-02-04 19:16:37','2024-02-04 19:16:37','f77227f2-c895-480f-b35e-045b19a713a6'),(23,'wine_bars','Wine Bars','2024-02-04 19:16:37','2024-02-04 19:16:37','f77227f2-c895-480f-b35e-045b19a713a6'),(24,'vegan','Vegan','2024-02-04 19:16:37','2024-02-04 19:16:37','fe51a551-5d9e-4ee2-989e-181b8f70c089'),(25,'cocktailbars','Cocktail Bars','2024-02-04 19:16:37','2024-02-04 19:16:37','fe51a551-5d9e-4ee2-989e-181b8f70c089'),(26,'ramen','Ramen','2024-02-04 19:16:37','2024-02-04 19:16:37','3ce0fea1-887b-401f-9e21-b236ccd0d8a1'),(27,'seafood','Seafood','2024-02-04 19:16:37','2024-02-04 19:16:37','a2e9eca5-6c8b-4790-a25e-c39e1ff4f033'),(28,'bars','Bars','2024-02-04 19:16:37','2024-02-04 19:16:37','a2e9eca5-6c8b-4790-a25e-c39e1ff4f033'),(29,'breakfast_brunch','Breakfast & Brunch','2024-02-04 19:16:37','2024-02-04 19:16:37','9720836f-fb31-49d9-9f46-8ff5ce498b28'),(30,'mediterranean','Mediterranean','2024-02-04 19:16:37','2024-02-04 19:16:37','9720836f-fb31-49d9-9f46-8ff5ce498b28'),(31,'cocktailbars','Cocktail Bars','2024-02-04 19:16:37','2024-02-04 19:16:37','9720836f-fb31-49d9-9f46-8ff5ce498b28'),(32,'tradamerican','American','2024-02-04 19:16:37','2024-02-04 19:16:37','9d19de91-6b6c-4440-b515-7f9afb2cfc26'),(33,'breakfast_brunch','Breakfast & Brunch','2024-02-04 19:16:37','2024-02-04 19:16:37','9d19de91-6b6c-4440-b515-7f9afb2cfc26'),(34,'burgers','Burgers','2024-02-04 19:16:37','2024-02-04 19:16:37','9d19de91-6b6c-4440-b515-7f9afb2cfc26'),(35,'newamerican','New American','2024-02-04 19:16:37','2024-02-04 19:16:37','0d24d980-90fb-4ef5-aa80-2efe105be7cc'),(36,'desserts','Desserts','2024-02-04 19:16:37','2024-02-04 19:16:37','0d24d980-90fb-4ef5-aa80-2efe105be7cc'),(37,'cocktailbars','Cocktail Bars','2024-02-04 19:16:37','2024-02-04 19:16:37','0d24d980-90fb-4ef5-aa80-2efe105be7cc'),(38,'breakfast_brunch','Breakfast & Brunch','2024-02-04 19:16:37','2024-02-04 19:16:37','d18ca0db-7d29-4d8e-9be5-67b504588f25'),(39,'burgers','Burgers','2024-02-04 19:16:37','2024-02-04 19:16:37','d18ca0db-7d29-4d8e-9be5-67b504588f25'),(40,'thai','Thai','2024-02-04 19:16:37','2024-02-04 19:16:37','d18ca0db-7d29-4d8e-9be5-67b504588f25'),(41,'bars','Bars','2024-02-04 19:16:37','2024-02-04 19:16:37','526ef0d4-9e6d-471e-ae81-5b0e4024eb9b'),(42,'newamerican','New American','2024-02-04 19:16:37','2024-02-04 19:16:37','526ef0d4-9e6d-471e-ae81-5b0e4024eb9b'),(43,'seafood','Seafood','2024-02-04 19:16:37','2024-02-04 19:16:37','526ef0d4-9e6d-471e-ae81-5b0e4024eb9b'),(44,'breakfast_brunch','Breakfast & Brunch','2024-02-04 19:16:37','2024-02-04 19:16:37','262377f8-8129-4027-9fd1-6f9d75f186c2'),(45,'asianfusion','Asian Fusion','2024-02-04 19:16:37','2024-02-04 19:16:37','262377f8-8129-4027-9fd1-6f9d75f186c2'),(46,'newamerican','New American','2024-02-04 19:16:37','2024-02-04 19:16:37','262377f8-8129-4027-9fd1-6f9d75f186c2'),(47,'italian','Italian','2024-02-04 19:16:37','2024-02-04 19:16:37','14b8a9dd-c2f3-40ee-9f75-b8dff25770f1'),(48,'pizza','Pizza','2024-02-04 19:16:37','2024-02-04 19:16:37','14b8a9dd-c2f3-40ee-9f75-b8dff25770f1'),(49,'breakfast_brunch','Breakfast & Brunch','2024-02-04 19:16:37','2024-02-04 19:16:37','14b8a9dd-c2f3-40ee-9f75-b8dff25770f1'),(50,'newamerican','New American','2024-02-04 19:16:37','2024-02-04 19:16:37','b12ad647-3f7d-47f7-8d73-93a9c0fe3699'),(51,'pizza','Pizza','2024-02-04 19:16:37','2024-02-04 19:16:37','e5a85262-0cbe-44e6-8e28-b921cc9bbe4c'),(52,'italian','Italian','2024-02-04 19:16:37','2024-02-04 19:16:37','e5a85262-0cbe-44e6-8e28-b921cc9bbe4c'),(53,'pastashops','Pasta Shops','2024-02-04 19:16:37','2024-02-04 19:16:37','e5a85262-0cbe-44e6-8e28-b921cc9bbe4c');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transactions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name_transaction` varchar(100) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  `businessId` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `businessId` (`businessId`),
  CONSTRAINT `transactions_ibfk_1` FOREIGN KEY (`businessId`) REFERENCES `business` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactions`
--

LOCK TABLES `transactions` WRITE;
/*!40000 ALTER TABLE `transactions` DISABLE KEYS */;
INSERT INTO `transactions` VALUES (1,'restaurant_reservation','2024-02-04 19:16:37','2024-02-04 19:16:37','e4725807-75d8-42fa-93bf-907b6ce5ce97'),(2,'delivery','2024-02-04 19:16:37','2024-02-04 19:16:37','2a156ffb-7b3f-4624-9f2d-928e1e6a351c'),(3,'pickup','2024-02-04 19:16:37','2024-02-04 19:16:37','2a156ffb-7b3f-4624-9f2d-928e1e6a351c'),(4,'pickup','2024-02-04 19:16:37','2024-02-04 19:16:37','0f589c5f-3fa0-4169-8e0c-814ce7b9eb2b'),(5,'pickup','2024-02-04 19:16:37','2024-02-04 19:16:37','147ea169-ad7d-4e23-b889-7007e75dd53a'),(6,'pickup','2024-02-04 19:16:37','2024-02-04 19:16:37','58a0d476-0fc7-4e22-acbe-03357afc3ed7'),(7,'restaurant_reservation','2024-02-04 19:16:37','2024-02-04 19:16:37','58a0d476-0fc7-4e22-acbe-03357afc3ed7'),(8,'pickup','2024-02-04 19:16:37','2024-02-04 19:16:37','de0c4ba5-8cf7-48ee-894c-0db00fd38b45'),(9,'restaurant_reservation','2024-02-04 19:16:37','2024-02-04 19:16:37','de0c4ba5-8cf7-48ee-894c-0db00fd38b45'),(10,'pickup','2024-02-04 19:16:37','2024-02-04 19:16:37','5df72d3b-f3d7-4623-8fad-391334e19569'),(11,'restaurant_reservation','2024-02-04 19:16:37','2024-02-04 19:16:37','5df72d3b-f3d7-4623-8fad-391334e19569'),(12,'pickup','2024-02-04 19:16:37','2024-02-04 19:16:37','f77227f2-c895-480f-b35e-045b19a713a6'),(13,'restaurant_reservation','2024-02-04 19:16:37','2024-02-04 19:16:37','f77227f2-c895-480f-b35e-045b19a713a6'),(14,'pickup','2024-02-04 19:16:37','2024-02-04 19:16:37','fe51a551-5d9e-4ee2-989e-181b8f70c089'),(15,'restaurant_reservation','2024-02-04 19:16:37','2024-02-04 19:16:37','fe51a551-5d9e-4ee2-989e-181b8f70c089'),(16,'pickup','2024-02-04 19:16:37','2024-02-04 19:16:37','3ce0fea1-887b-401f-9e21-b236ccd0d8a1'),(17,'restaurant_reservation','2024-02-04 19:16:37','2024-02-04 19:16:37','3ce0fea1-887b-401f-9e21-b236ccd0d8a1'),(18,'pickup','2024-02-04 19:16:37','2024-02-04 19:16:37','a2e9eca5-6c8b-4790-a25e-c39e1ff4f033'),(19,'restaurant_reservation','2024-02-04 19:16:37','2024-02-04 19:16:37','a2e9eca5-6c8b-4790-a25e-c39e1ff4f033'),(20,'pickup','2024-02-04 19:16:37','2024-02-04 19:16:37','9720836f-fb31-49d9-9f46-8ff5ce498b28'),(21,'restaurant_reservation','2024-02-04 19:16:37','2024-02-04 19:16:37','9720836f-fb31-49d9-9f46-8ff5ce498b28'),(22,'pickup','2024-02-04 19:16:37','2024-02-04 19:16:37','9d19de91-6b6c-4440-b515-7f9afb2cfc26'),(23,'restaurant_reservation','2024-02-04 19:16:37','2024-02-04 19:16:37','9d19de91-6b6c-4440-b515-7f9afb2cfc26'),(24,'pickup','2024-02-04 19:16:37','2024-02-04 19:16:37','0d24d980-90fb-4ef5-aa80-2efe105be7cc'),(25,'restaurant_reservation','2024-02-04 19:16:37','2024-02-04 19:16:37','0d24d980-90fb-4ef5-aa80-2efe105be7cc'),(26,'pickup','2024-02-04 19:16:37','2024-02-04 19:16:37','d18ca0db-7d29-4d8e-9be5-67b504588f25'),(27,'restaurant_reservation','2024-02-04 19:16:37','2024-02-04 19:16:37','d18ca0db-7d29-4d8e-9be5-67b504588f25'),(28,'pickup','2024-02-04 19:16:37','2024-02-04 19:16:37','526ef0d4-9e6d-471e-ae81-5b0e4024eb9b'),(29,'restaurant_reservation','2024-02-04 19:16:37','2024-02-04 19:16:37','526ef0d4-9e6d-471e-ae81-5b0e4024eb9b'),(30,'pickup','2024-02-04 19:16:37','2024-02-04 19:16:37','262377f8-8129-4027-9fd1-6f9d75f186c2'),(31,'restaurant_reservation','2024-02-04 19:16:37','2024-02-04 19:16:37','262377f8-8129-4027-9fd1-6f9d75f186c2'),(32,'pickup','2024-02-04 19:16:37','2024-02-04 19:16:37','14b8a9dd-c2f3-40ee-9f75-b8dff25770f1'),(33,'restaurant_reservation','2024-02-04 19:16:37','2024-02-04 19:16:37','14b8a9dd-c2f3-40ee-9f75-b8dff25770f1'),(34,'pickup','2024-02-04 19:16:37','2024-02-04 19:16:37','e5a85262-0cbe-44e6-8e28-b921cc9bbe4c'),(35,'restaurant_reservation','2024-02-04 19:16:37','2024-02-04 19:16:37','e5a85262-0cbe-44e6-8e28-b921cc9bbe4c');
/*!40000 ALTER TABLE `transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'db_business'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-02-05  2:30:54
