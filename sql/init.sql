-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: rent_car
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `booking`
--

DROP TABLE IF EXISTS `booking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `booking` (
  `booking_no` int NOT NULL AUTO_INCREMENT,
  `rent_day` date NOT NULL,
  `rent_time` time NOT NULL,
  `return_day` date NOT NULL,
  `return_time` time NOT NULL,
  `user_id` varchar(10) DEFAULT NULL,
  `reserved_car` varchar(8) DEFAULT NULL,
  `insurance` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`booking_no`),
  KEY `user_id` (`user_id`),
  KEY `reserved_car` (`reserved_car`),
  CONSTRAINT `booking_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `booking_ibfk_2` FOREIGN KEY (`reserved_car`) REFERENCES `carinfo` (`carnumber`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking`
--

LOCK TABLES `booking` WRITE;
/*!40000 ALTER TABLE `booking` DISABLE KEYS */;
/*!40000 ALTER TABLE `booking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carinfo`
--

DROP TABLE IF EXISTS `carinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `carinfo` (
  `carnumber` varchar(8) NOT NULL,
  `carname` VARCHAR(100) NOT NULL,
  `carimage` VARCHAR(500) NULL,         -- varchar 크기 수정
  `rentcost` int not null,               -- rentcost 비용 컬럼 수정
  `carseate` VARCHAR(4) NOT NULL,
  `carpoint` VARCHAR(50) NOT NULL,
  `caryearmodel`	varchar(6) NOT NULL,
  `category` VARCHAR(10) NOT NULL,
  `rentstatus` int not null,                   -- 0이면 대여 가능, 1이면 불가능 추가
  `x` varchar(50),   -- 지도 맵 추가
  `y` varchar(50),   -- 지도 맵 추가
  PRIMARY KEY (`carnumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carinfo`
--

LOCK TABLES `carinfo` WRITE;
/*!40000 ALTER TABLE `carinfo` DISABLE KEYS */;
INSERT INTO `carinfo` VALUES ('01','G-wagen','https://imagetest.kr.object.ncloudstorage.com/carinfo/18e42b52-1b59-4af8-aa82-c374905a3683G-Wagen.png',1234,'1','1','1','1',1,'1','1'),('1','1','https://kr.object.ncloudstorage.com/imagetest/carinfo/36afd70d-9554-40a3-b99c-d3d7ebbbb7e5camaro.png',1,'1','1','1','1',1,'1','1'),('11231231','123','https://kr.object.ncloudstorage.com/imagetest/carinfo/934d49e1-264b-45c4-b9d8-930564852db7BMWi3.png',123,'123','123','123','11',123,NULL,NULL),('123','1','https://imagetest.kr.object.ncloudstorage.com/carinfo/3e992712-5b71-4f28-9b70-8ae5f7778aa8aec2bb3d-7410-4015-91d8-cd536c9ae32a.png',1,'1','1','1','1',1,NULL,NULL),('2','2','https://kr.object.ncloudstorage.com/imagetest/carinfo/934d49e1-264b-45c4-b9d8-930564852db7BMWi3.png',2,'2','2','2','2',2,'2','2'),('4','1','https://imagetest.kr.object.ncloudstorage.com/carinfo/18e42b52-1b59-4af8-aa82-c374905a3683G-Wagen.png',1,'1','1','1','1',1,'1','1');
/*!40000 ALTER TABLE `carinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `caroption`
--

DROP TABLE IF EXISTS `caroption`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `caroption` (
  `bluetooth` varchar(4) DEFAULT NULL,
  `rear_sensor` varchar(4) DEFAULT NULL,
  `rear_camera` varchar(5) DEFAULT NULL,
  `black_box` varchar(4) DEFAULT NULL,
  `heated_seat` varchar(4) DEFAULT NULL,
  `heated_handle` varchar(4) DEFAULT NULL,
  `ventilated_seat` varchar(4) DEFAULT NULL,
  `navigation` varchar(5) DEFAULT NULL,
  `non_smoking_vehicle` varchar(4) DEFAULT NULL,
  `smart_key` varchar(4) DEFAULT NULL,
  `sunroof` varchar(3) DEFAULT NULL,
  `rear_warning_light` varchar(5) DEFAULT NULL,
  `lane_departure_prevention` varchar(6) DEFAULT NULL,
  `carnumber` varchar(8) NOT NULL,
  KEY `fk_caroption_carinfo1` (`carnumber`),
  CONSTRAINT `fk_caroption_carinfo1` FOREIGN KEY (`carnumber`) REFERENCES `carinfo` (`carnumber`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `caroption`
--

LOCK TABLES `caroption` WRITE;
/*!40000 ALTER TABLE `caroption` DISABLE KEYS */;
INSERT INTO `caroption` VALUES ('블루투스',NULL,'후방카메라',NULL,'열선시트',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'01');
/*!40000 ALTER TABLE `caroption` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `facilities`
--

DROP TABLE IF EXISTS `facilities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `facilities` (
  `Caffe_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(25) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `address_road` varchar(45) DEFAULT NULL,
  `phonenum` varchar(25) DEFAULT NULL,
  `type` varchar(5) DEFAULT NULL,
  `x` varchar(45) DEFAULT NULL,
  `y` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Caffe_id`),
  KEY `latlng` (`x`,`y`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `facilities`
--

LOCK TABLES `facilities` WRITE;
/*!40000 ALTER TABLE `facilities` DISABLE KEYS */;
INSERT INTO `facilities` VALUES (1,'찔레꽃','청주시 상당구 용암동 1635 (2층) ','청주시 상당구 1순환로1253번길 42 (용암동  2층)',NULL,'까페','36.6095343677027 ','127.503855997724'),(2,'홍라이브카페','청주시 상당구 북문로2가 113-19 8층 ','청주시 상당구 중앙로 30 (북문로2가  8층)','043-264-6930','까페','36.6120349967071','127.468473865521'),(3,'구오커피(GUO)','청주시 상당구 북문로2가 84-1 ','청주시 상당구 상당로115번길 26  1동 101호 (북문로2가)',NULL,'까페','36.639699174209 ','127.488901003365'),(4,'스윙','청주시 서원구 수곡동 771 (지하층) ','청주시 서원구 수곡로 83 (수곡동)','043-298-1080','까페','36.6192020177172 ','127.471318092181'),(5,'좋은원두 일레븐 충북대점','청주시 서원구 사창동 473 외 1필지(1층) ','청주시 서원구 1순환로674번길 52, 1층 (사창동)','070-4226-9091','까페','36.6386262599541 ','127.488623180094'),(6,'CoCo(코코)','청주시 서원구 산남동 637 , 1층 ','청주시 서원구 두꺼비로94번길 72-17, 1층 (산남동)','043-283-0402','까페','36.6059770015448 ','127.470952826234'),(7,'머물고싶은자리','청주시 서원구 산남동 581 미소시티  103호 ','청주시 서원구 산남로70번길 34 (산남동,미소시티  103호)',NULL,'까페','36.6322156956528 ','127.458102410852'),(8,'더쉐프','청주시 서원구 산남동 47-3 , 1동 1층 ','청주시 서원구 산미로 95, 1동 1층 (산남동)','043-283-3722','까페','36.6126758754863 ','127.466408036337'),(9,'마쯔','청주시 서원구 산남동 450 (1층) ','청주시 서원구 산남로24번길 18-8, 1층 (산남동)','043-283-8440','까페','36.6109867297387 ','127.468537385397'),(10,'뮤','청주시 서원구 산남동 838 (4층) ','청주시 서원구 산남로 49, 4층 (산남동)','043-285-7700','까페','36.612366854653 ','127.471633849235'),(11,'아지트꾼','청주시 서원구 사직동 123-9 (2층) ','청주시 서원구 무심서로 497 (사직동, (2층))',NULL,'까페','36.6357086103229 ','127.482448695286'),(12,'민속주점 쎄시봉','청주시 서원구 산남동 838 (3층) ','청주시 서원구 산남로 49, 3층 (산남동)','043-285-9290','까페','36.6109867297387 ','127.468537385397'),(13,'1905자이언트몬스터피자인펍','청주시 서원구 사창동 474-2 (지하1층) ','청주시 서원구 1순환로704번길 63, 지하1층 (사창동)','043-266-1905','까페','36.634447613223 ','127.469056531218'),(14,'어번브라운','청주시 서원구 사창동 316-17 어번브라운2(1층,2층,3층,4층) ','청주시 서원구 예체로 92-1, 1층,2층,3층,4층 (사창동, 어번브라운2)','070-4256-3402','까페','36.632352991992 ','127.458463132785'),(15,'더 라이브','청주시 흥덕구 복대동 2828 (3층) ','청주시 흥덕구 2순환로1167번길 19 (복대동,(3층))','043-236-6833','까페','36.631941287496 ','127.427633646663'),(16,'여기다316','청주시 흥덕구 봉명동 2721 (2층) ','청주시 흥덕구 백봉로 201 (봉명동,(2층))','043-263-8081','까페','36.6330328884412 ','127.429920244394'),(17,'숨','청주시 흥덕구 복대동 3021 (3층) ','청주시 흥덕구 진재로 22 (복대동,(3층))','043-231-8377','까페','36.6495053516582 ','127.457898711913'),(18,'카라멜','청주시 흥덕구 복대동 2844 (1층) ','청주시 흥덕구 짐대로72번길 17, 1층 (복대동)','043-231-9442','까페','36.6474018577945 ','127.477519713958'),(19,'준카페','청주시 흥덕구 운천동 1547 (1층) ','청주시 흥덕구 흥덕로162번길 19 (운천동, (1층))','043-264-3346','까페','36.6492153584854 ','127.47490923128'),(20,'카페더비','청주시 흥덕구 오송읍 만수리 736 ','청주시 흥덕구 오송읍 연제만수길 50',NULL,'까페','36.6380071461034 ','127.437514250121'),(21,'로망','청주시 흥덕구 운천동 682-1 (2층) ','청주시 흥덕구 흥덕로151번길 36, 2층 (운천동)','043-260-3502','까페','36.6301397057629 ','127.428798200851'),(22,'여우사랑','청주시 흥덕구 복대동 221-41 (1층) ','청주시 흥덕구 죽천로 131, 1층 (복대동)',NULL,'까페','36.6437131614625 ','127.461916373951'),(23,'디에떼(강서점)','청주시 흥덕구 강서동 526 DS클리닉(1층) ','청주시 흥덕구 2순환로 1254, DS클리닉동 1층 (강서동)','043-234-2633','까페','36.6421802274594 ','127.46875128312'),(24,'179table(테이블)','청주시 흥덕구 봉명동 884-2 ,1층 ','청주시 흥덕구 예체로179번길 1, 1층 (봉명동)','043-273-7333','까페','36.6244724942453 ','127.328859894852'),(25,'할로나(Halona)','청주시 흥덕구 봉명동 1779 1층 ','청주시 흥덕구 과상미로10번길 3, 1층 (봉명동)',NULL,'까페','36.6242539643553 ','127.430971112673'),(26,'올인','청주시 청원구 내덕동 301-29 ','청주시 청원구 새터로 29 (내덕동)','043-255-8037','까페','36.6559319613176 ','127.486130182405'),(27,'봄봄','충북 청주시 서원구 수곡동 1002','충청북도 청주시 서원구 수곡로 34','','까페','36.6153023118373','127.474194791881'),(34,'수아커피로스터즈','충북 청주시 서원구 수곡동 959','충청북도 청주시 서원구 수곡로3번길 44','1','까페','36.614640678857874','127.472430730876');
/*!40000 ALTER TABLE `facilities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `help`
--

DROP TABLE IF EXISTS `help`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `help` (
  `no` int NOT NULL AUTO_INCREMENT,
  `carinfo_carnum` varchar(45) NOT NULL,
  `rx` varchar(20) NOT NULL,
  `ry` varchar(20) NOT NULL,
  `reason` varchar(1000) NOT NULL,
  `state` varchar(20) NOT NULL DEFAULT 'request',
  `supporter_carnum` varchar(10) DEFAULT NULL,
  `request_time` datetime DEFAULT NULL,
  `accepted_time` datetime DEFAULT NULL,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`no`),
  KEY `carinfo_carnum` (`carinfo_carnum`),
  KEY `fk_help_supporter1_idx` (`supporter_carnum`),
  CONSTRAINT `fk_help_supporter1` FOREIGN KEY (`supporter_carnum`) REFERENCES `supporter` (`carnum`),
  CONSTRAINT `help_ibfk_1` FOREIGN KEY (`carinfo_carnum`) REFERENCES `carinfo` (`carnumber`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `help`
--

LOCK TABLES `help` WRITE;
/*!40000 ALTER TABLE `help` DISABLE KEYS */;
/*!40000 ALTER TABLE `help` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `list`
--

DROP TABLE IF EXISTS `list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `list` (
  `listno` int NOT NULL AUTO_INCREMENT COMMENT '글 번호',
  `title` varchar(300) NOT NULL COMMENT '제목',
  `content` longtext NOT NULL COMMENT '내용',
  `wname` varchar(20) NOT NULL COMMENT '작성자',
  `cnt` smallint NOT NULL DEFAULT '0' COMMENT '조회수',
  `recommend` int NOT NULL DEFAULT '0' COMMENT '좋아요',
  `rdate` datetime NOT NULL COMMENT '등록일',
  PRIMARY KEY (`listno`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `list`
--

LOCK TABLES `list` WRITE;
/*!40000 ALTER TABLE `list` DISABLE KEYS */;
INSERT INTO `list` VALUES (1,'1','1','1',2,1,'2022-07-07 00:00:00');
/*!40000 ALTER TABLE `list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notice`
--

DROP TABLE IF EXISTS `notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notice` (
  `noticeno` int NOT NULL AUTO_INCREMENT,
  `title` varchar(300) NOT NULL,
  `wname` varchar(30) NOT NULL,
  `content` varchar(1000) NOT NULL,
  `passwd` varchar(20) DEFAULT NULL,
  `wdate` date NOT NULL,
  `fname` varchar(100) DEFAULT '파일이 없습니다.',
  `key` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`noticeno`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notice`
--

LOCK TABLES `notice` WRITE;
/*!40000 ALTER TABLE `notice` DISABLE KEYS */;
INSERT INTO `notice` VALUES (1,'2','3','1','1','2022-08-08','파일이 없습니다.',NULL),(2,'개설 축하 이벤트','1','1','1','2022-02-02','1','1'),(3,'이벤트는 없습니다.','1','1','1','2022-08-08','오류.png','notice/b5eb3958-e8c0-4c6d-9511-7b093586f4e9오류.png'),(4,'1','w','1','1','2022-08-08','파일이 없습니다.',NULL),(5,'asdsas','eqsd','1','1','2022-08-08','파일이 없습니다.',NULL),(6,'123','asd','1','1','2022-08-08','파일이 없습니다.',NULL),(7,'asdas','sdsd','1','1','2022-08-08','파일이 없습니다.',NULL),(8,'rwqwr','sd','1','1','2022-08-08','파일이 없습니다.',NULL),(9,'sdas','a','1','1','2022-08-08','파일이 없습니다.',NULL),(10,'asdasda','asd','1','1','2022-08-08','파일이 없습니다.',NULL),(11,'dasdasdc','asd','1','1','2022-08-08','파일이 없습니다.',NULL),(12,'sd','as','1','1','2022-08-08','파일이 없습니다.',NULL),(13,'dzca','asd','1','1','2022-08-08','파일이 없습니다.',NULL),(14,'asdac','as','1','1','2022-08-08','파일이 없습니다.',NULL);
/*!40000 ALTER TABLE `notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review`
--

DROP TABLE IF EXISTS `review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `review` (
  `rnum` int NOT NULL AUTO_INCREMENT,
  `content` varchar(500) NOT NULL,
  `regdate` date NOT NULL,
  `id` varchar(15) NOT NULL,
  `listno` int NOT NULL,
  PRIMARY KEY (`rnum`),
  KEY `listno` (`listno`),
  CONSTRAINT `review_ibfk_1` FOREIGN KEY (`listno`) REFERENCES `list` (`listno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review`
--

LOCK TABLES `review` WRITE;
/*!40000 ALTER TABLE `review` DISABLE KEYS */;
/*!40000 ALTER TABLE `review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `support_log`
--

DROP TABLE IF EXISTS `support_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `support_log` (
  `no` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `rx` varchar(20) DEFAULT NULL,
  `ry` varchar(20) DEFAULT NULL,
  `reason` varchar(1000) DEFAULT NULL,
  `request_time` datetime DEFAULT NULL,
  `accepted_time` datetime DEFAULT NULL,
  `complete_time` datetime DEFAULT NULL,
  `carnum` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`no`),
  KEY `carnum` (`carnum`),
  CONSTRAINT `support_log_ibfk_1` FOREIGN KEY (`carnum`) REFERENCES `carinfo` (`carnumber`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `support_log`
--

LOCK TABLES `support_log` WRITE;
/*!40000 ALTER TABLE `support_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `support_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supporter`
--

DROP TABLE IF EXISTS `supporter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supporter` (
  `carnum` varchar(10) NOT NULL,
  `registed` date NOT NULL,
  `production` varchar(45) DEFAULT NULL,
  `state` varchar(10) DEFAULT NULL,
  `brand` varchar(45) DEFAULT NULL,
  `model` varchar(45) DEFAULT NULL,
  `dccombo` varchar(45) DEFAULT NULL,
  `dcdemo` varchar(45) DEFAULT NULL,
  `ac` varchar(45) DEFAULT NULL,
  `fullcharge` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`carnum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supporter`
--

LOCK TABLES `supporter` WRITE;
/*!40000 ALTER TABLE `supporter` DISABLE KEYS */;
INSERT INTO `supporter` VALUES ('13오123','2022-02-02','2020-01-01','stay','현대','ev1','1','1','1','1');
/*!40000 ALTER TABLE `supporter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` varchar(10) NOT NULL,
  `passwd` varchar(24) NOT NULL,
  `mname` varchar(20) NOT NULL,
  `phone` varchar(14) NOT NULL,
  `email` varchar(50) NOT NULL,
  `jumin` varchar(20) NOT NULL,
  `license` varchar(50) NOT NULL,
  `grade` varchar(10) NOT NULL DEFAULT 'H',
  `pnt` varchar(10000) NOT NULL DEFAULT '0',
  `fname` varchar(50) DEFAULT NULL,
  `zipcode` varchar(7) DEFAULT NULL,
  `address1` varchar(150) DEFAULT NULL,
  `address2` varchar(50) DEFAULT NULL,
  `mdate` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('admin','1234','관리자','02-1234-1234','admin@mail.com','0000000000000','0','A','0','license.jpg','123-123','서울시','서초구','2022-08-07'),('user1','1234','김길동','010-0000-0001','mail1@mail.com','0000000000000','13-11-123456-78','H','0','license.jpg','123-123','서울시','강남구','2022-08-07'),('user2','1234','홍길동','010-0000-0002','mail2@mail.com','0000000000000','13-11-123456-79','H','0','license.jpg','123-123','서울시','용산구','2022-08-07'),('user3','1234','박길동','010-0000-0003','mail3@mail.com','0000000000000','13-11-123456-80','H','0','license.jpg','123-123','서울시','동작구','2022-08-07');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'rent_car'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-08-14 22:02:48
