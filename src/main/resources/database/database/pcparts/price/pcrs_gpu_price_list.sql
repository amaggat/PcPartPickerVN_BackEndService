-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: pcrs
-- ------------------------------------------------------
-- Server version	8.0.19

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `gpu_price_list`
--

DROP TABLE IF EXISTS `gpu_price_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gpu_price_list` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `link` text NOT NULL,
  `name` text NOT NULL,
  `price` int NOT NULL,
  `rid` int NOT NULL,
  `fid` varchar(100) NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `fid` (`fid`),
  KEY `gpu_price_list_ibfk_2_idx` (`rid`),
  CONSTRAINT `gpu_price_list_ibfk_1` FOREIGN KEY (`fid`) REFERENCES `gpu` (`ID`),
  CONSTRAINT `gpu_price_list_ibfk_2` FOREIGN KEY (`rid`) REFERENCES `retailer` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=131 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gpu_price_list`
--

LOCK TABLES `gpu_price_list` WRITE;
/*!40000 ALTER TABLE `gpu_price_list` DISABLE KEYS */;
INSERT INTO `gpu_price_list` VALUES (1,'https://www.anphatpc.com.vn/vga-msi-geforce-gtx-1650-d6-ventus-xs-oc_id35057.html','VGA MSI GeForce GTX 1650 D6 VENTUS XS OC',3799000,3,'msi-geforce-gtx-1650-d6-ventus-xs-oc'),(2,'https://www.anphatpc.com.vn/vga-gigabyte-geforce-gt-1030-oc-2g-gv-n1030oc-2gi_id22872.html','VGA GIGABYTE GV-N1030OC-2GI (GeForce GT 1030)',2199000,3,'gigabyte-geforce-gt-1030-gv-n1030oc-2gi'),(3,'https://www.anphatpc.com.vn/vga-msi-geforce-gtx-1650-super-ventus-xs-oc_id31390.html','VGA MSI GeForce GTX 1650 SUPER VENTUS XS OC',4999000,3,'msi-geforce-gtx-1650-super-ventus-xs-oc'),(4,'https://www.anphatpc.com.vn/vga-msi-geforce-gtx-1660-super-ventus-xs-oc_id31038.html','VGA MSI GEFORCE GTX 1660 SUPER VENTUS XS OC',6099000,3,'msi-geforce-gtx-1660-super-ventus-xs-oc'),(5,'https://www.anphatpc.com.vn/vga-msi-geforce-rtx-3070-ventus-2x-oc_id34442.html','VGA MSI GeForce RTX 3070 VENTUS 2X OC',15499000,3,'msi-geforce-rtx-3070-ventus-2x-oc'),(6,'https://www.anphatpc.com.vn/vga-msi-geforce-rtx-3070-ventus-3x-oc_id34437.html','VGA MSI GeForce RTX 3070 VENTUS 3X OC',16199000,3,'msi-geforce-rtx-3070-ventus-3x-oc'),(7,'https://www.anphatpc.com.vn/vga-msi-geforce-rtx-3070-gaming-x-trio_id34435.html','VGA MSI GeForce RTX 3070 GAMING X TRIO',17999000,3,'msi-geforce-rtx-3070-gaming-x-trio'),(8,'https://www.anphatpc.com.vn/vga-msi-geforce-gtx-1660-super-gaming-x_id31251.html','VGA MSI GeForce GTX 1660 SUPER GAMING X',6599000,3,'msi-geforce-gtx-1660-super-gaming-x'),(9,'https://www.anphatpc.com.vn/vga-gigabyte-geforce-rtx-3090-gaming-oc-24g-gv-n3090gaming-oc-24gd_id34419.html','VGA GIGABYTE GeForce RTX 3090 GAMING OC 24G (GV-N3090GAMING OC-24GD)',49199000,3,'gigabyte-geforce-rtx-3090-gv-n3090gaming-oc-24gd'),(10,'https://www.anphatpc.com.vn/vga-msi-geforce-rtx-3090-ventus-3x-24g-oc_id34427.html','VGA MSI GeForce RTX 3090 VENTUS 3X 24G OC',45999000,3,'msi-geforce-rtx-3090-ventus-3x-oc'),(11,'https://www.anphatpc.com.vn/vga-msi-geforce-rtx-3090-gaming-x-trio-24g_id34425.html','VGA MSI GeForce RTX 3090 GAMING X TRIO 24G',47399000,3,'msi-geforce-rtx-3090-gaming-x-trio'),(12,'https://www.anphatpc.com.vn/vga-msi-geforce-gtx-1660-ti-ventus-xs-6g-oc_id28699.html','VGA MSI GeForce GTX 1660 Ti VENTUS XS 6G OC ',8099000,3,'msi-geforce-gtx-1660-ti-ventus-xs-oc'),(13,'https://www.anphatpc.com.vn/vga-msi-geforce-rtx-3080-ventus-3x-10g-oc_id34433.html','VGA MSI GeForce RTX 3080 VENTUS 3X 10G OC',21799000,3,'msi-geforce-rtx-3080-ventus-3x-oc'),(14,'https://www.anphatpc.com.vn/vga-msi-geforce-rtx-2060-ventus-6g-oc_id28422.html','VGA MSI GeForce RTX 2060 VENTUS XS 6G OC',9499000,3,'msi-geforce-rtx-2060-ventus-xs-oc'),(15,'https://www.anphatpc.com.vn/vga-msi-geforce-rtx-3080-gaming-x-trio-10g_id34431.html','VGA MSI GeForce RTX 3080 GAMING X TRIO 10G',22899000,3,'msi-geforce-rtx-3080-gaming-x-trio'),(16,'https://www.anphatpc.com.vn/vga-msi-geforce-rtx-3080-suprim-x-10g_id35433.html','VGA MSI GeForce RTX 3080 SUPRIM X 10G',25499000,3,'msi-geforce-rtx-3080-suprim-x'),(17,'https://www.anphatpc.com.vn/vga-asus-gt710-sl-2gd5-brk-geforce-gt-710-2gb-gddr5_id32642.html','VGA Asus GT710-SL-2GD5-BRK (GeForce GT 710 2GB GDDR5)',1249000,3,'asus-geforce-gt-710-gt710-sl-2gd5'),(18,'https://www.anphatpc.com.vn/vga-gigabyte-geforce-gtx-1650-super-windforce-oc-4g-gv-n165swf2oc-4gd_id32180.html','VGA GIGABYTE GeForce GTX 1650 SUPER WINDFORCE OC 4G (GV-N165SWF2OC-4GD)',5199000,3,'gigabyte-geforce-gtx-1650-super-windforce-oc'),(19,'https://www.anphatpc.com.vn/vga-asus-tuf-gaming-geforce-rtx-3090-oc-tuf-rtx3090-o24g-gaming_id34548.html','VGA ASUS TUF Gaming GeForce RTX 3090 OC (TUF-RTX3090-O24G-GAMING)',50749000,3,'asus-geforce-rtx-3090-tuf-gaming-oc'),(20,'https://www.anphatpc.com.vn/vga-asus-tuf-gaming-geforce-rtx-3080-oc-tuf-rtx3080-o10g-gaming_id34551.html','VGA ASUS TUF Gaming GeForce RTX 3080 OC (TUF-RTX3080-O10G-GAMING)',24499000,3,'asus-geforce-rtx-3080-tuf-gaming-oc'),(21,'https://www.anphatpc.com.vn/vga-asus-tuf-gaming-geforce-rtx-3070-oc-tuf-rtx3070-o8g-gaming_id34974.html','VGA ASUS TUF Gaming GeForce RTX 3070 OC (TUF-RTX3070-O8G-GAMING)',16999000,3,'asus-geforce-rtx-3070-tuf-gaming-oc'),(22,'https://www.anphatpc.com.vn/vga-asus-tuf-gaming-geforce-rtx-3090-tuf-rtx3090-24g-gaming_id34412.html','VGA ASUS TUF GAMING GeForce RTX 3090 (TUF-RTX3090-24G-GAMING)',42799000,3,'asus-geforce-rtx-3090-tuf-gaming'),(23,'https://www.anphatpc.com.vn/vga-asus-dual-geforce-rtx-3070-oc-dual-rtx3070-o8g_id34552.html','VGA ASUS DUAL GeForce RTX 3070 OC (DUAL-RTX3070-O8G)',16349000,3,'asus-geforce-rtx-3070-dual-oc'),(24,'https://www.anphatpc.com.vn/vga-gigabyte-geforce-rtx-3080-vision-oc-10g-gv-n3080vision-oc-10gd_id34856.html','VGA GIGABYTE GeForce RTX 3080 VISION OC 10G (GV-N3080VISION OC-10GD)',23799000,3,'gigabyte-geforce-rtx-3080-vision-oc'),(25,'https://www.anphatpc.com.vn/vga-asus-dual-geforce-rtx-3070-dual-rtx3070-8g_id34454.html','VGA ASUS DUAL GeForce RTX 3070 (DUAL-RTX3070-8G)',15899000,3,'asus-geforce-rtx-3070-dual'),(26,'https://www.anphatpc.com.vn/vga-gigabyte-geforce-rtx-3070-eagle-oc-8g-gv-n3070eagle-oc-8gd_id34768.html','VGA GIGABYTE GeForce RTX 3070 EAGLE OC 8G (GV-N3070EAGLE OC-8GD)',16999000,3,'gigabyte-geforce-rtx-3070-eagle-oc'),(27,'https://www.anphatpc.com.vn/vga-gigabyte-geforce-rtx-3070-eagle-8g-gv-n3070eagle-8gd_id35091.html','VGA GIGABYTE GeForce RTX 3070 EAGLE 8G (GV-N3070EAGLE-8GD)',16499000,3,'gigabyte-geforce-rtx-3070-eagle'),(28,'https://www.anphatpc.com.vn/vga-asus-rog-strix-geforce-rtx-3090-oc-rog-strix-rtx3090-o24g-gaming_id34547.html','VGA ASUS ROG Strix GeForce RTX 3090 OC (ROG-STRIX-RTX3090-O24G-GAMING)',55899000,3,'asus-geforce-rtx-3090-strix-gaming-oc'),(29,'https://www.anphatpc.com.vn/vga-gigabyte-geforce-rtx-3070-vision-oc-8g-gv-n3070vision-oc-8gd_id35090.html','VGA GIGABYTE GeForce RTX 3070 VISION OC 8G (GV-N3070VISION OC-8GD)',18399000,3,'gigabyte-geforce-rtx-3070-vision-oc'),(30,'https://www.anphatpc.com.vn/vga-gigabyte-geforce-rtx-3080-eagle-oc-10g-gv-n3080eagle-oc-10gd_id34424.html','VGA GIGABYTE GeForce RTX 3080 EAGLE OC 10G (GV-N3080EAGLE OC-10GD)',22399000,3,'gigabyte-geforce-rtx-3080-eagle-oc'),(31,'https://www.anphatpc.com.vn/vga-asus-tuf-gaming-geforce-rtx-3080-tuf-rtx3080-10g-gaming_id34414.html','VGA ASUS TUF GAMING GeForce RTX 3080 (TUF-RTX3080-10G-GAMING)',22999000,3,'asus-geforce-rtx-3080-tuf-gaming'),(32,'https://www.anphatpc.com.vn/vga-asus-tuf-gaming-x3-geforce-gtx-1660-super-oc-edition-6gb-gddr6-tuf-3-gtx1660s-o6g-gaming_id31250.html','VGA ASUS TUF Gaming X3 GeForce GTX 1660 SUPER OC edition 6GB GDDR6 (TUF 3-GTX1660S-O6G-GAMING)',6799000,3,'asus-geforce-gtx-1660-super-tuf-gaming-x3-oc'),(33,'https://www.anphatpc.com.vn/vga-gigabyte-aorus-geforce-rtx-3070-master-8g-gv-n3070aorus-m-8gd_id35089.html','VGA GIGABYTE AORUS GeForce RTX 3070 MASTER 8G (GV-N3070AORUS M-8GD)',19399000,3,'gigabyte-geforce-rtx-3070-aorus-master'),(34,'https://www.anphatpc.com.vn/vga-gigabyte-aorus-geforce-rtx-3090-xtreme-24g-gv-n3090aorus-x-24gd_id34415.html','VGA GIGABYTE AORUS GeForce RTX 3090 XTREME 24G (GV-N3090AORUS X-24GD)',53799000,3,'gigabyte-geforce-rtx-3090-aorus-xtreme'),(35,'https://www.anphatpc.com.vn/vga-asus-rog-strix-geforce-rtx-3080-oc-rog-strix-rtx3080-o10g-gaming_id34549.html','VGA ASUS ROG Strix GeForce RTX 3080 OC (ROG-STRIX-RTX3080-O10G-GAMING)',27899000,3,'asus-geforce-rtx-3080-strix-gaming-oc'),(36,'https://www.anphatpc.com.vn/vga-gigabyte-aorus-geforce-rtx-3090-master-24g-gv-n3090aorus-m-24gd_id34417.html','VGA GIGABYTE AORUS GeForce RTX 3090 MASTER 24G (GV-N3090AORUS M-24GD)',51599000,3,'gigabyte-geforce-rtx-3090-aorus-master'),(37,'https://www.anphatpc.com.vn/vga-asus-rog-strix-geforce-rtx-3090-rog-strix-rtx3090-24g-gaming_id34409.html','VGA ASUS ROG Strix GeForce RTX 3090 (ROG-STRIX-RTX3090-24G-GAMING)',53749000,3,'asus-geforce-rtx-3090-strix-gaming'),(38,'https://www.anphatpc.com.vn/vga-gigabyte-geforce-rtx-3090-turbo-24g-gv-n3090turbo-24gd_id34857.html','VGA GIGABYTE GeForce RTX 3090 TURBO 24G (GV-N3090TURBO-24GD)',49999000,3,'gigabyte-geforce-rtx-3090-turbo'),(39,'https://www.anphatpc.com.vn/vga-gigabyte-aorus-geforce-rtx-3080-master-10g-gv-n3080aorus-m-10gd_id34422.html','VGA GIGABYTE AORUS GeForce RTX 3080 MASTER 10G (GV-N3080AORUS M-10GD)',26799000,3,'gigabyte-geforce-rtx-3080-aorus-master'),(40,'https://www.anphatpc.com.vn/vga-asus-tuf-gaming-geforce-rtx-3070-tuf-rtx3070-8g-gaming_id34975.html','VGA ASUS TUF Gaming GeForce RTX 3070 (TUF-RTX3070-8G-GAMING)',17749000,3,'asus-geforce-rtx-3070-tuf-gaming-oc'),(41,'https://www.anphatpc.com.vn/vga-asus-rog-strix-geforce-rtx-3070-rog-strix-rtx3070-8g-gaming_id34453.html','VGA ASUS ROG Strix GeForce RTX 3070 (ROG-STRIX-RTX3070-8G-GAMING)',19699000,3,'asus-geforce-rtx-3070-strix-gaming'),(42,'https://www.anphatpc.com.vn/vga-asus-rog-strix-geforce-rtx-3080-rog-strix-rtx3080-10g-gaming_id34413.html','VGA ASUS ROG Strix GeForce RTX 3080 (ROG-STRIX-RTX3080-10G-GAMING)',26499000,3,'asus-geforce-rtx-3080-strix-gaming'),(43,'https://www.anphatpc.com.vn/vga-asus-rog-strix-geforce-rtx-3070-oc-rog-strix-rtx3070-o8g-gaming_id34972.html','VGA ASUS ROG Strix GeForce RTX 3070 OC (ROG-STRIX-RTX3070-O8G-GAMING)',20699000,3,'asus-geforce-rtx-3070-strix-gaming'),(44,'https://www.anphatpc.com.vn/vga-gigabite-geforce-gt-710-gv-n710d5-2gil_id30906.html','VGA Gigabite GeForce GT 710 2GB DDR5 (GV-N710D5-2GIL)',1299000,3,'gigabyte-geforce-gt-710-gv-n710sl-2gl'),(45,'https://www.anphatpc.com.vn/vga-asus-phoenix-geforce-gtx-1650-oc-edition-4gb-gddr6-ph-gtx1650-o4gd6_id35055.html','VGA ASUS Phoenix GeForce GTX 1650 OC edition 4GB GDDR6 (PH-GTX1650-O4GD6)',3799000,3,'asus-geforce-gtx-1650-phoenix-oc'),(46,'https://www.anphatpc.com.vn/vga-asus-rog-strix-radeon-rx570-8gb-gddr5-rog-strix-rx570-8g-gaming_id32022.html','VGA ASUS ROG Strix Radeon RX570 8GB GDDR5 (ROG-STRIX-RX570-8G-GAMING)',3999000,3,'asus-radeon-rx-570-rog-strix'),(47,'https://www.anphatpc.com.vn/vga-asus-tuf-gaming-x3-geforce-gtx-1660-super-6gb-gddr6-tuf-3-gtx1660s-6g-gaming_id31034.html','VGA ASUS TUF Gaming X3 GeForce GTX 1660 SUPER 6GB GDDR6 (TUF 3-GTX1660S-6G-GAMING)',6499000,3,'asus-geforce-gtx-1660-super-tuf-gaming-x3-oc'),(48,'https://www.anphatpc.com.vn/vga-asus-phoenix-radeon-rx-550-4gb-gddr5-ph-rx550-4g-evo_id33989.html','VGA ASUS Phoenix Radeon RX 550 4GB GDDR5 (PH-RX550-4G-EVO)',1899000,3,'asus-radeon-rx-550---512-rx550-4g'),(49,'https://www.anphatpc.com.vn/vga-asus-phoenix-geforce-gtx-1650-4gb-gddr6-ph-gtx1650-4gd6_id34303.html','VGA ASUS Phoenix GeForce GTX 1650 4GB GDDR6 (PH-GTX1650-4GD6)',3599000,3,'asus-geforce-gtx-1650-phoenix-oc'),(50,'https://www.hanoicomputer.vn/card-man-hinh-gigabyte-rtx-3080-eagle-oc-10gd-10gb-gdd6x-320-bit-hdmi-dp-2x8-pin','Card màn hình Gigabyte RTX 3080 EAGLE OC-10GD (10GB GDD6X, 320-bit, HDMI +DP, 2x8-pin)',22949000,2,'gigabyte-geforce-rtx-3080-eagle-oc'),(51,'https://www.hanoicomputer.vn/card-man-hinh-gigabyte-rtx-3070-vision-oc-8gd-8gb-gdd6-256-bit-hdmi-dp-1x8-pin-6x1-pin','Card màn hình Gigabyte RTX 3070 VISION OC - 8GD (8GB GDD6, 256-bit, HDMI +DP, 1x8-pin+6x1-pin)',17999000,2,'gigabyte-geforce-rtx-3070-vision-oc'),(52,'https://www.hanoicomputer.vn/card-man-hinh-msi-rtx-3070-ventus-2x-8g-8gb-gdd6-256-bit-hdmi-dp-2x8-pin','Card màn hình MSI RTX 3070 VENTUS 2X OC 8G',15999000,2,'msi-geforce-rtx-3070-ventus-2x-oc'),(53,'https://www.hanoicomputer.vn/card-man-hinh-gigabyte-rtx-3090-aorus-xtreme-24gd','Card màn hình Gigabyte RTX 3090 AORUS XTREME-24GD',53990000,2,'gigabyte-geforce-rtx-3090-aorus-xtreme'),(54,'https://www.hanoicomputer.vn/card-man-hinh-gigabyte-rtx-3070-eagle-oc-8gd-1','Card màn hình Gigabyte RTX 3070 EAGLE OC - 8GD (8GB GDD6, 256-bit, HDMI +DP, 1x8-pin+6x1-pin)',16999000,2,'gigabyte-geforce-rtx-3070-eagle-oc'),(55,'https://www.hanoicomputer.vn/card-man-hinh-msi-gtx-1650-super-ventus-xs-4g-oc','Card màn hình MSI GTX 1650 Super VENTUS XS OC (4GB GDDR6, 128-bit, DVI+HDMI+DP, 1x6-pin) ',4799000,2,'msi-geforce-gtx-1650-super-ventus-xs-oc'),(56,'https://www.hanoicomputer.vn/card-man-hinh-msi-rtx-3090-ventus-3x-oc-24g-24gb-gddr6x-384-bit-hdmi-dp-2x8-pin','Card màn hình MSI RTX 3090 VENTUS 3X OC 24G (24GB GDDR6X, 384-bit, HDMI +DP, 2x8-pin)',45999000,2,'msi-geforce-rtx-3090-ventus-3x-oc'),(57,'https://www.hanoicomputer.vn/card-man-hinh-gigabyte-rtx-3060-ti-aorus-master-8gd','Card màn hình Gigabyte RTX 3060 Ti AORUS MASTER (8GB GDD6, 256-bit, HDMI +DP, 1x8-pin, 1x6-pin)',15999000,2,'gigabyte-geforce-rtx-3060-ti-aorus-master'),(58,'https://www.hanoicomputer.vn/card-man-hinh-msi-rtx-3090-gaming-x-trio-24g-24gb-gddr6x-384-bit-hdmi-dp-3x8-pin','Card màn hình MSI RTX 3090 GAMING X TRIO 24G (24GB GDDR6X, 384-bit, HDMI +DP, 3x8-pin)',49990000,2,'msi-geforce-rtx-3090-gaming-x-trio'),(59,'https://www.hanoicomputer.vn/card-man-hinh-gigabyte-rtx-3070-aorus-master-8gd','Card màn hình Gigabyte RTX 3070 AORUS MASTER - 8GD (8GB GDD6, 256-bit, HDMI +DP, 2x8-pin) ',19599000,2,'gigabyte-geforce-rtx-3070-aorus-master'),(60,'https://www.hanoicomputer.vn/card-man-hinh-msi-gtx-1650-d6-ventus-xs-4g-oc','Card màn hình MSI GTX 1650 D6 VENTUS XS 4G OCV1 (4GB GDDR6, 128-bit, DVI+HDMI+DP)',4099000,2,'msi-geforce-gtx-1650-d6-ventus-xs-oc'),(61,'https://www.hanoicomputer.vn/card-man-hinh-asus-tuf-rtx3090-o24g-gaming-24gb-gdd6x-384-bit-hdmi-dp-2x8-pin','Card màn hình Asus TUF RTX3090-O24G-GAMING (24GB GDD6X, 384-bit, HDMI +DP, 2x8-Pin)',50790000,2,'asus-geforce-rtx-3090-tuf-gaming'),(62,'https://www.hanoicomputer.vn/card-man-hinh-msi-gtx-1650-d6-aero-itx-4g-ocv1','Card màn hình MSI GTX 1650 D6 AERO ITX 4G OCV1 (4GB GDDR6, 128-bit, DVI+HDMI+DP, 1x6-pin)',3899000,2,'msi-geforce-gtx-1650-d6-aero-itx-oc'),(63,'https://www.hanoicomputer.vn/card-man-hinh-asus-rog-strix-rtx3090-o24g-gaming','Card màn hình Asus ROG STRIX RTX3090-O24G-GAMING (24GB GDD6X, 384-bit, HDMI +DP, 3x8-pin)',55899000,2,'asus-geforce-rtx-3090-strix-gaming'),(64,'https://gearvn.com/products/asus-tuf-gaming-geforce-rtx-3060-ti-oc','ASUS TUF Gaming GeForce RTX 3060 Ti OC',15290000,1,'asus-geforce-rtx-3060-ti-tuf-gaming-oc'),(65,'https://gearvn.com/products/msi-geforce-rtx-3060-ti-gaming-x-trio','MSI GeForce RTX 3060 Ti GAMING X TRIO',14990000,1,'msi-geforce-rtx-3060-ti-gaming-x-trio'),(66,'https://gearvn.com/products/msi-geforce-rtx-3060-ti-ventus-2x-oc','MSI GeForce RTX 3060 Ti VENTUS 2X OC',13490000,1,'msi-geforce-rtx-3060-ti-ventus-2x-oc'),(67,'https://gearvn.com/products/asus-dual-geforce-rtx-3060-ti-oc','ASUS Dual GeForce RTX 3060 Ti OC',13390000,1,'asus-geforce-rtx-3060-ti-dual-oc'),(68,'https://gearvn.com/products/asus-rog-strix-geforce-rtx-3060-ti-oc','ASUS ROG Strix GeForce RTX 3060 Ti OC',16990000,1,'asus-geforce-rtx-3060-ti-rog-strix-gaming-oc'),(69,'https://gearvn.com/products/gigabyte-geforce-rtx-2070-gaming-oc-8g','GIGABYTE GeForce® RTX 2070 GAMING OC 8G',16290000,1,'gigabyte-geforce-rtx-2070-gaming-8g'),(70,'https://gearvn.com/products/msi-geforce-rtx-3090-ventus-3x-24g-oc','MSI GeForce RTX 3090 VENTUS 3X 24G OC',45990000,1,'msi-geforce-rtx-3090-ventus-3x-oc'),(71,'https://gearvn.com/products/vga-msi-geforce-rtx-3070-ventus-2x-oc','VGA MSI Geforce RTX 3070 VENTUS 2x OC',15990000,1,'msi-geforce-rtx-3070-ventus-2x-oc'),(72,'https://gearvn.com/products/card-man-hinh-aorus-geforce-rtx-3060-ti-master-8g','GIGABYTE AORUS GeForce RTX 3060 Ti MASTER 8G',15650000,1,'gigabyte-geforce-rtx-3060-ti-aorus-master'),(73,'https://gearvn.com/products/msi-geforce-rtx-3090-gaming-x-trio-24g','MSI GeForce RTX 3090 GAMING X TRIO 24G',47990000,1,'msi-geforce-rtx-3090-gaming-x-trio'),(74,'https://gearvn.com/products/vga-msi-geforce-rtx-3070-ventus-3x-oc','VGA MSI GeForce RTX 3070 VENTUS 3X OC',17490000,1,'msi-geforce-rtx-3070-ventus-3x-oc'),(75,'https://gearvn.com/products/asus-geforce-rtx-3070-ko-oc-8g-gaming','ASUS GeForce RTX 3070 KO OC 8G GAMING',16990000,1,'asus-geforce-rtx-3070-ko-gaming-oc'),(76,'https://gearvn.com/products/gigabyte-geforce-rtx-3060-ti-eagle-oc-8g','GIGABYTE GeForce RTX 3060 Ti EAGLE OC 8G',13490000,1,'gigabyte-geforce-rtx-3060-ti-eagle-oc'),(77,'https://gearvn.com/products/gigabyte-aorus-geforce-rtx-3090-master-24g','GIGABYTE AORUS GeForce RTX 3090 MASTER 24G',51990000,1,'gigabyte-geforce-rtx-3090-aorus-master'),(78,'https://gearvn.com/products/msi-geforce-rtx-3070-gaming-x-trio-8gb','MSI GeForce RTX 3070 GAMING X TRIO 8GB',18490000,1,'msi-geforce-rtx-3070-gaming-x-trio'),(79,'https://gearvn.com/products/msi-geforce-gt-1030-aero-itx-2gb-oc','MSI GeForce® GT 1030 AERO ITX 2GB OC',2390000,1,'msi-geforce-gt-1030-aero-itx-oc'),(80,'https://gearvn.com/products/msi-geforce-rtx-3070-suprim-x-8g','MSI GeForce RTX 3070 SUPRIM X 8G',20990000,1,'msi-geforce-rtx-3070-suprim-x'),(81,'https://gearvn.com/products/card-man-hinh-aorus-geforce-rtx-3060-ti-gaming-oc-pro-8g','GIGABYTE GeForce RTX 3060 Ti GAMING OC PRO 8G',14250000,1,'gigabyte-geforce-rtx-3060-ti-gaming-oc-pro'),(82,'https://gearvn.com/products/gigabyte-geforce-rtx-3060-ti-eagle-8g','GIGABYTE GeForce RTX 3060 Ti EAGLE 8G',12990000,1,'gigabyte-geforce-rtx-3060-ti-eagle'),(83,'https://gearvn.com/products/gigabyte-geforce-rtx-3070-eagle-oc-8g','GIGABYTE GeForce RTX 3070 EAGLE OC 8G',16890000,1,'gigabyte-geforce-rtx-3070-eagle-oc'),(84,'https://gearvn.com/products/gigabyte-geforce-rtx-2070-super-windforce-oc-8g','GIGABYTE GeForce RTX™ 2070 SUPER WINDFORCE OC 8G',14690000,1,'gigabyte-geforce-rtx-2070-super-windforce-oc'),(85,'https://gearvn.com/products/gigabyte-geforce-rtx-2060-super-windforce-oc-8g','GIGABYTE GeForce RTX™ 2060 SUPER WINDFORCE OC 8G',10990000,1,'gigabyte-geforce-rtx-2060-super-windforce-oc'),(86,'https://gearvn.com/products/msi-geforce-rtx-2070-gaming-z-8g','MSI GeForce RTX 2070 GAMING Z 8G',16790000,1,'msi-geforce-rtx-2070-gaming-z'),(87,'https://gearvn.com/products/gigabyte-geforce-rtx-3070-eagle-8g','GIGABYTE GeForce RTX 3070 EAGLE 8G',16390000,1,'gigabyte-geforce-rtx-3070-eagle'),(88,'https://gearvn.com/products/gigabyte-geforce-rtx-3060-ti-gaming-oc-8g','GIGABYTE GeForce RTX 3060 Ti GAMING OC 8G',13990000,1,'gigabyte-geforce-rtx-3060-ti-gaming-oc'),(89,'https://gearvn.com/products/gigabyte-geforce-rtx-3090-turbo-24g','GIGABYTE GeForce RTX 3090 TURBO 24G',50990000,1,'gigabyte-geforce-rtx-3090-turbo'),(90,'https://gearvn.com/products/msi-geforce-gtx-1050-ti-aero-itx-oc-4gd5','MSI GeForce® GTX 1050 Ti AERO ITX OC 4GD5',4190000,1,'msi-geforce-gtx-1050-ti-aero-itx'),(91,'https://gearvn.com/products/asus-geforce-gtx-1650-4gb-dual-oc','ASUS GeForce GTX 1650 4GB DUAL OC',4090000,1,'asus-geforce-gtx-1650-dual-oc'),(92,'https://gearvn.com/products/gigabyte-geforce-rtx-3070-gaming-oc-8g','GIGABYTE GeForce RTX 3070 GAMING OC 8G',17490000,1,'gigabyte-geforce-rtx-3070-gaming-oc'),(93,'https://gearvn.com/products/msi-geforce-rtx-3080-ventus-3x-10g-oc','MSI GeForce RTX 3080 VENTUS 3X 10G OC',23490000,1,'msi-geforce-rtx-3080-ventus-3x-oc'),(94,'https://gearvn.com/products/gigabyte-geforce-rtx-2070-windforce-8g','GIGABYTE GeForce® RTX 2070 Windforce 8G',15290000,1,'gigabyte-geforce-rtx-2070-windforce'),(95,'https://gearvn.com/products/vga-gigabyte-aorus-geforce-rtx-3070-master-8g','VGA Gigabyte AORUS GeForce RTX 3070 MASTER 8G',18990000,1,'gigabyte-geforce-rtx-3070-aorus-master'),(96,'https://gearvn.com/products/asus-tuf-3090-24g-gaming','Asus TUF RTX 3090 24G GAMING',42990000,1,'asus-geforce-rtx-3090-tuf-gaming'),(97,'https://gearvn.com/products/msi-geforce-rtx-2080-sea-hawk-ek-x-8gb','MSI GEFORCE RTX 2080 SEA HAWK EK X 8GB',27990000,1,'msi-geforce-rtx-2080-sea-hawk-x'),(98,'https://gearvn.com/products/msi-amd-radeon-rx-5600-xt-mech-oc-6g','MSI AMD Radeon™ RX 5600 XT Mech OC 6G',8590000,1,'msi-radeon-rx-5600-xt-mech-oc'),(99,'https://gearvn.com/products/vga-gigabyte-geforce-rtx-3070-vision-oc-8g','VGA Gigabyte GeForce RTX 3070 VISION OC 8G',17890000,1,'gigabyte-geforce-rtx-3070-vision-oc'),(100,'https://gearvn.com/products/msi-rtx-2080-super-gaming-x-trio-8gb','MSI RTX 2080 SUPER GAMING X TRIO 8GB',20990000,1,'msi-geforce-rtx-2080-super-gaming-x-trio'),(101,'https://gearvn.com/products/msi-amd-radeon-rx-5600-xt-gaming-x-6g','MSI AMD Radeon™ RX 5600 XT Gaming X 6G',8690000,1,'msi-radeon-rx-5600-xt-gaming-x'),(102,'https://gearvn.com/products/gigabyte-amd-radeon-rx-5600-xt-gaming-oc-6g','GIGABYTE AMD Radeon™ RX 5600 XT GAMING OC 6G',7990000,1,'gigabyte-radeon-rx-5600-xt-gaming-oc'),(103,'https://gearvn.com/products/msi-rtx-2080-gaming-x-trio-8g','MSI RTX 2080 GAMING X TRIO 8G',23790000,1,'msi-geforce-rtx-2080-gaming-x-trio'),(104,'https://gearvn.com/products/vga-asus-geforce-rtx-3090-rog-strix-oc-24g-gaming','VGA ASUS GeForce RTX 3090 Rog Strix OC 24G Gaming',51990000,1,'asus-geforce-rtx-3090-strix-gaming-oc'),(105,'https://gearvn.com/products/msi-gtx-1650-super-ventus-xs-oc','MSI GTX 1650 Super VENTUS XS OC 4GB GDDR6',4690000,1,'msi-geforce-gtx-1650-super-ventus-xs-oc'),(106,'https://gearvn.com/products/asus-tuf-rtx3080-o10g-gaming','Asus TUF RTX 3080 O10G GAMING',24950000,1,'asus-geforce-rtx-3080-tuf-gaming'),(107,'https://gearvn.com/products/gigabyte-geforce-rtx-3090-gaming-oc-24g','Gigabyte GeForce RTX 3090 GAMING OC 24G',49990000,1,'gigabyte-geforce-rtx-3090-gv-n3090gaming-oc-24gd'),(108,'https://gearvn.com/products/msi-gtx-1660-ti-ventus-xs-6g-oc-gddr6','MSI GTX 1660 Ti Ventus XS 6G OC GDDR6',7490000,1,'msi-geforce-gtx-1660-ti-ventus-xs-oc'),(109,'https://gearvn.com/products/asus-gtx-1650-super-4gb-tuf-gaming-oc','ASUS GTX 1650 Super TUF GAMING OC 4GB GDDR6',4890000,1,'asus-geforce-gtx-1650-super-tuf-gaming-oc'),(110,'https://gearvn.com/products/vga-asus-tuf-rtx-3090-oc-24g-gaming','VGA ASUS TUF RTX 3090 OC 24G GAMING',47990000,1,'asus-geforce-rtx-3090-tuf-gaming-oc'),(111,'https://gearvn.com/products/asus-dual-rtx-3070-8g','Asus Dual RTX 3070 8G',15950000,1,'asus-geforce-rtx-3070-dual'),(112,'https://gearvn.com/products/msi-gtx-1650-super-gaming-x-4gb-gddr6','MSI GTX 1650 Super GAMING X 4GB GDDR6',5390000,1,'msi-geforce-gtx-1650-super-gaming-x'),(113,'https://gearvn.com/products/gigabyte-gtx-1650-super-wf-oc','GIGABYTE GTX 1650 Super Windforce OC 4GB GDDR6',4890000,1,'gigabyte-geforce-gtx-1650-super-windforce-oc'),(114,'https://gearvn.com/products/asus-gtx-1650-super-4gb-tuf-gaming','ASUS GTX 1650 Super TUF GAMING 4GB GDDR6',4790000,1,'asus-geforce-gtx-1650-super-tuf-gaming'),(115,'https://gearvn.com/products/msi-rtx-2080-duke-8g-oc','MSI RTX 2080 DUKE 8G OC',23990000,1,'msi-geforce-rtx-2080-duke'),(116,'https://gearvn.com/products/msi-gtx-1660-ventus-xs-6g-oc-gddr5','MSI GTX 1660 Ventus XS 6G OC GDDR5',5590000,1,'msi-geforce-gtx-1660-ventus-xs-oc'),(117,'https://gearvn.com/products/asus-rog-strix-rx-3090-24g-gaming','Asus ROG STRIX RTX 3090 24G GAMING',50990000,1,'asus-geforce-rtx-3090-strix-gaming'),(118,'https://gearvn.com/products/msi-gtx-1650-ventus-xs-4gb-gddr6','MSI GTX 1650 VENTUS XS 4GB OC V1 GDDR6',3790000,1,'msi-geforce-gtx-1650-ventus-xs-oc'),(119,'https://gearvn.com/products/asus-rog-strix-rtx3080-o10g-gaming','ASUS ROG STRIX RTX 3080 O10G GAMING',27990000,1,'asus-geforce-rtx-3080-strix-gaming'),(120,'https://gearvn.com/products/gigabyte-gtx-1650-winforce-oc-4gb-gddr6','GIGABYTE GTX 1650 Winforce OC 4GB GDDR6',3990000,1,'gigabyte-geforce-gtx-1650-windforce-oc'),(121,'https://gearvn.com/products/aorus-geforce-rtx-2080-xtreme-8g','AORUS GeForce® RTX 2080 XTREME 8G',24490000,1,'gigabyte-geforce-rtx-2080-aorus-xtreme'),(122,'https://gearvn.com/products/gigabyte-geforce-gt-710-1gb','Gigabyte GeForce® GT 710 1GB',990000,1,'gigabyte-geforce-gt-710-gv-n710d3-1gl-1.0'),(123,'https://gearvn.com/products/asus-amd-rog-strix-radeon-rx-5600-xt-oc-6g','ASUS AMD ROG Strix Radeon™ RX 5600 XT T6G GAMING',8990000,1,'asus-radeon-rx-5600-xt-strix-gaming-oc'),(124,'https://gearvn.com/products/vga-asus-rog-strix-rtx-3070-o8g-gaming','VGA ASUS ROG Strix RTX 3070 O8G Gaming',20750000,1,'asus-geforce-rtx-3070-strix-gaming'),(125,'https://gearvn.com/products/msi-geforce-rtx-2060-ventus-xs-6g-ocv1-gddr6','MSI GeForce RTX™ 2060 VENTUS XS 6G OCV1 GDDR6',8490000,1,'msi-geforce-rtx-2060-ventus-xs-oc'),(126,'https://gearvn.com/products/asus-geforce-gtx-1650-4gb-dual','ASUS GeForce GTX 1650 4GB DUAL',3990000,1,'asus-geforce-gtx-1650-dual-oc'),(127,'https://gearvn.com/products/msi-geforce-gtx-1660-super-gaming-z-plus','MSI GeForce GTX 1660 SUPER GAMING Z PLUS',6790000,1,'gigabyte-geforce-gtx-1660-super-gaming'),(128,'https://gearvn.com/products/asus-rog-strix-gtx-1650-super-oc-gddr6','ASUS ROG STRIX GTX 1650 Super OC 4GB GDDR6',5720000,1,'asus-geforce-gtx-1650-super-strix-gaming-oc'),(129,'https://gearvn.com/products/vga-asus-tuf-rtx-3070-o8g-gaming','VGA ASUS TUF RTX 3070 O8G Gaming',16990000,1,'asus-geforce-rtx-3070-tuf-gaming-oc'),(130,'https://gearvn.com/products/gigabyte-radeon-rx-6800-xt-gaming-oc-16g','GIGABYTE Radeon™ RX 6800 XT GAMING OC 16G',23250000,1,'gigabyte-radeon-rx-6800-xt-gv-r68xt-16gc-b');
/*!40000 ALTER TABLE `gpu_price_list` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-22 20:43:43