/*
SQLyog Community Edition- MySQL GUI v7.01 
MySQL - 5.0.27-community-nt : Database - naivebayesfake
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`naivebayesfake` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `naivebayesfake`;

/*Table structure for table `addcart` */

DROP TABLE IF EXISTS `addcart`;

CREATE TABLE `addcart` (
  `id` int(200) NOT NULL auto_increment,
  `UserName` varchar(200) default NULL,
  `Productid` varchar(200) default NULL,
  `ProductName` varchar(200) default NULL,
  `ProductPrice` varchar(200) default NULL,
  `Quantity` varchar(200) default NULL,
  `pimage` varchar(200) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `addcart` */

insert  into `addcart`(`id`,`UserName`,`Productid`,`ProductName`,`ProductPrice`,`Quantity`,`pimage`) values (2,'subhash','1','V3Squared Men Cotton T-Shirt','439','1','1.png'),(3,'subhash','1','V3Squared Men Cotton T-Shirt','439','1','1.png'),(4,'null','9','Jonson baby soap','55','1','pc6.png'),(5,'null','2','Surat Tex Womens Net Saree (Pink & Cream_Free Size)','999','1','10.png');

/*Table structure for table `admindetail` */

DROP TABLE IF EXISTS `admindetail`;

CREATE TABLE `admindetail` (
  `id` int(200) default NULL,
  `AdminName` varchar(200) default NULL,
  `AdminPassword` varchar(200) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `admindetail` */

insert  into `admindetail`(`id`,`AdminName`,`AdminPassword`) values (NULL,'inbotics','inbotics123');

/*Table structure for table `algorithmreview` */

DROP TABLE IF EXISTS `algorithmreview`;

CREATE TABLE `algorithmreview` (
  `id` int(255) NOT NULL auto_increment,
  `Productid` varchar(255) default NULL,
  `UserName` varchar(255) default NULL,
  `Emailid` varchar(255) default NULL,
  `statement` text,
  `DateTime` timestamp NOT NULL default CURRENT_TIMESTAMP,
  `status` varchar(200) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `algorithmreview` */

insert  into `algorithmreview`(`id`,`Productid`,`UserName`,`Emailid`,`statement`,`DateTime`,`status`) values (1,'1','subhash','madhavisubhash9@gmail.com','Love my new red phone. Red is one of favorite colors. So i was so happy when apple came out with red one. It functions just like advertised a. The dealer i purchased it through must have sent that same day because it arrived also immediately.','2017-12-08 18:10:40','True'),(2,'1','subhash','madhavisubhash9@gmail.com','Love my new red phone. Red is one of favorite colors. So i was so happy when apple came out with red one. It functions just like advertised a. The dealer i purchased it through must have sent that same day because it arrived also immediately.','2017-12-08 18:11:37','True'),(3,'1','subhash','madhavisubhash9@gmail.com','Love my new red phone. Red is one of favorite colors. So i was so happy when apple came out with red one. It functions just like advertised a. The dealer i purchased it through must have sent that same day because it arrived also immediately.','2017-12-08 18:12:13','True'),(4,'1','subhash','madhavisubhash9@gmail.com','I liked it, the cellphone works excellent. The only problem was the box, it seemed like a fake one.','2017-12-08 18:10:40','Fake'),(5,'1','subhash','madhavisubhash9@gmail.com','I liked it, the cellphone works excellent. The only problem was the box, it seemed like a fake one.','2017-12-08 18:11:37','Fake'),(6,'1','subhash','madhavisubhash9@gmail.com','I liked it, the cellphone works excellent. The only problem was the box, it seemed like a fake one.','2017-12-08 18:13:36','Fake'),(7,'2','subhash','madhavisubhash9@gmail.com','There are scratches on the screen obviously!!! Everythings else is fine.	','2017-12-08 18:15:31','True'),(8,'2','subhash','madhavisubhash9@gmail.com','There are scratches on the screen obviously!!! Everythings else is fine.	','2017-12-08 18:15:40','True'),(9,'7','subhash','madhavisubhash9@gmail.com','There are scratches on the screen obviously!!! Everythings else is fine.	','2017-12-08 18:16:11','True'),(10,'2','sumit','madhavisubhash9@gmail.com','There are scratches on the screen obviously!!! Everythings else is fine.	','2017-12-13 14:46:12','True'),(11,'1','subhash','madhavisubhash9@gmail.com','Love my new red phone. Red is one of favorite colors. So i was so happy when apple came out with red one. It functions just like advertised a. The dealer i purchased it through must have sent that same day because it arrived also immediately.','2017-12-08 18:10:40','True'),(12,'1','subhash','madhavisubhash9@gmail.com','Love my new red phone. Red is one of favorite colors. So i was so happy when apple came out with red one. It functions just like advertised a. The dealer i purchased it through must have sent that same day because it arrived also immediately.','2017-12-08 18:11:37','True'),(13,'1','subhash','madhavisubhash9@gmail.com','Love my new red phone. Red is one of favorite colors. So i was so happy when apple came out with red one. It functions just like advertised a. The dealer i purchased it through must have sent that same day because it arrived also immediately.','2017-12-08 18:12:13','True'),(14,'1','subhash','madhavisubhash9@gmail.com','I liked it, the cellphone works excellent. The only problem was the box, it seemed like a fake one.','2017-12-08 18:10:40','Fake'),(15,'1','subhash','madhavisubhash9@gmail.com','I liked it, the cellphone works excellent. The only problem was the box, it seemed like a fake one.','2017-12-08 18:11:37','Fake'),(16,'1','subhash','madhavisubhash9@gmail.com','I liked it, the cellphone works excellent. The only problem was the box, it seemed like a fake one.','2017-12-08 18:13:36','Fake'),(17,'2','subhash','madhavisubhash9@gmail.com','There are scratches on the screen obviously!!! Everythings else is fine.	','2017-12-08 18:15:31','True'),(18,'2','subhash','madhavisubhash9@gmail.com','There are scratches on the screen obviously!!! Everythings else is fine.	','2017-12-08 18:15:40','True'),(19,'7','subhash','madhavisubhash9@gmail.com','There are scratches on the screen obviously!!! Everythings else is fine.	','2017-12-08 18:16:11','True'),(20,'2','sumit','madhavisubhash9@gmail.com','There are scratches on the screen obviously!!! Everythings else is fine.	','2017-12-13 14:46:12','True');

/*Table structure for table `category` */

DROP TABLE IF EXISTS `category`;

CREATE TABLE `category` (
  `id` int(255) NOT NULL auto_increment,
  `cname` varchar(500) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

/*Data for the table `category` */

insert  into `category`(`id`,`cname`) values (1,'Household'),(2,'Personal Care'),(3,'Packaged Foods');

/*Table structure for table `customerreport` */

DROP TABLE IF EXISTS `customerreport`;

CREATE TABLE `customerreport` (
  `id` int(200) NOT NULL auto_increment,
  `UserName` varchar(200) default NULL,
  `ReportStatement` varchar(200) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `customerreport` */

/*Table structure for table `products` */

DROP TABLE IF EXISTS `products`;

CREATE TABLE `products` (
  `id` int(255) NOT NULL auto_increment,
  `pcate` varchar(500) NOT NULL,
  `pscate` varchar(255) NOT NULL,
  `pname` varchar(500) NOT NULL,
  `pprice` varchar(500) NOT NULL,
  `pqty` varchar(500) NOT NULL,
  `pstock` varchar(500) NOT NULL,
  `image1` varchar(500) NOT NULL,
  `image2` varchar(500) NOT NULL,
  `image3` varchar(500) NOT NULL,
  `description` text,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

/*Data for the table `products` */

insert  into `products`(`id`,`pcate`,`pscate`,`pname`,`pprice`,`pqty`,`pstock`,`image1`,`image2`,`image3`,`description`) values (1,'1','1','V3Squared Men Cotton T-Shirt','439','1','500','1.png','1.png','1.png','Material: Cotton\r\nFit: Regular Fit\r\nWash Care: Do Not Iron on Print, Dry in Shade, Do Not Bleach, Machine Wash Warm at 40°C'),(2,'1','1','Surat Tex Womens Net Saree (Pink & Cream_Free Size)','999','1','1000','10.png','10.png','10.png','Material Composition: Net\r\nStyle: With Blouse Piece\r\nFabric/Material : Lycra & Net\r\nPattern:Embroidered\r\nColor : Pink & Cream\r\nSaree Length : 5.5 m, Blouse Material Length: 0.8 m\r\nProduct Color may slightly vary due to photographic lighting sources or your monitor settings,With un-stitched Blouse Piece.(The stitched garment shown in the image is for presentation purpose only)'),(7,'1','1','V3Squared Men Cotton T-Shirt','599','2','800','7.png','14.png','17.png','aaaa'),(5,'1','1','Surat Tex Womens Net Saree (Pink & Cream_Free Size)','399','1','800','12.png','12.png','12.png','ssss'),(8,'1','1','V3Squared Men Cotton T-Shirt','599','1','500','15.png','15.png','15.png','sssssssssssssssssssssssssssssss'),(9,'2','6','Jonson baby soap','55','1','800','pc6.png','pc6.png','pc6.png','Baby soap for care your baby.......');

/*Table structure for table `statement` */

DROP TABLE IF EXISTS `statement`;

CREATE TABLE `statement` (
  `statement` varchar(1000) default NULL,
  `classification` varchar(50) default NULL,
  `id` int(11) NOT NULL auto_increment,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `statement` */

insert  into `statement`(`statement`,`classification`,`id`) values ('Love my new red phone. Red is one of favorite colors. So i was so happy when apple came out with red one. It functions just like advertised a. The dealer i purchased it through must have sent that same day because it arrived also immediately.','True',1),('Love my new red phone. Red is one of favorite colors. So i was so happy when apple came out with red one. It functions just like advertised a. The dealer i purchased it through must have sent that same day because it arrived also immediately.','Fake',2),('Love my new red phone. Red is one of favorite colors. So i was so happy when apple came out with red one. It functions just like advertised a. The dealer i purchased it through must have sent that same day because it arrived also immediately.','Fake',3),('I liked it, the cellphone works excellent. The only problem was the box, it seemed like a fake one.','True',4),('I liked it, the cellphone works excellent. The only problem was the box, it seemed like a fake one.','Fake',5),('I liked it, the cellphone works excellent. The only problem was the box, it seemed like a fake one.','Fake',6),('There are scratches on the screen obviously!!! Everythings else is fine.	','True',7),('There are scratches on the screen obviously!!! Everythings else is fine.	','Fake',8),('There are scratches on the screen obviously!!! Everythings else is fine.	','True',9),('There are scratches on the screen obviously!!! Everythings else is fine.	','Fake',10);

/*Table structure for table `subcat` */

DROP TABLE IF EXISTS `subcat`;

CREATE TABLE `subcat` (
  `id` int(255) NOT NULL auto_increment,
  `subname` varchar(255) NOT NULL,
  `cat` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;

/*Data for the table `subcat` */

insert  into `subcat`(`id`,`subname`,`cat`) values (1,'Cookware','1'),(2,'Dust Pans','1'),(3,'Scrubbers','1'),(4,'Dust Cloth','1'),(5,'Mops','1'),(6,'Baby Soap','2'),(7,'Baby Care Accessories','2'),(8,'Baby Oil & Shampoos','2'),(9,'Baby Creams & Lotion','2'),(10,'Baby Powder','2'),(11,'Diapers & Wipes','2'),(12,'Beauty & Grooming','2'),(13,'Baby Food','3'),(14,'Dessert Items','3'),(15,'Biscuits','3'),(16,'Breakfast Cereals','3'),(17,'Canned Food ','3'),(18,'Chocolates & Sweets','3');

/*Table structure for table `userdetail` */

DROP TABLE IF EXISTS `userdetail`;

CREATE TABLE `userdetail` (
  `id` int(200) NOT NULL auto_increment,
  `First_Name` varchar(200) default NULL,
  `Last_Name` varchar(200) default NULL,
  `Email_Address` varchar(200) default NULL,
  `Mobile_Number` varchar(200) default NULL,
  `User_Name` varchar(200) default NULL,
  `Password` varchar(200) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `userdetail` */

insert  into `userdetail`(`id`,`First_Name`,`Last_Name`,`Email_Address`,`Mobile_Number`,`User_Name`,`Password`) values (4,'subhash','madhavi','madhavisubhash9@gmail.com','9637151412','subhash','s'),(5,'sumit','tawate','sumit@gmail.com','7276281461','sumit','s');

/*Table structure for table `userpurcheshproductlist` */

DROP TABLE IF EXISTS `userpurcheshproductlist`;

CREATE TABLE `userpurcheshproductlist` (
  `id` int(200) NOT NULL auto_increment,
  `UserName` varchar(200) default NULL,
  `Productid` varchar(200) default NULL,
  `ProductName` varchar(200) default NULL,
  `TimeStamp` timestamp NULL default CURRENT_TIMESTAMP,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `userpurcheshproductlist` */

insert  into `userpurcheshproductlist`(`id`,`UserName`,`Productid`,`ProductName`,`TimeStamp`) values (5,'subhash','2','Surat Tex Womens Net Saree (Pink & Cream_Free Size)','2017-12-11 10:59:30'),(6,'subhash','2','Surat Tex Womens Net Saree (Pink & Cream_Free Size)','2017-12-11 10:59:30'),(7,'subhash','1','V3Squared Men Cotton T-Shirt','2017-12-11 10:59:30'),(8,'subhash','9','Jonson baby soap','2017-12-11 10:59:30'),(9,'sumit','7','Jonson baby soap','2017-12-13 13:46:48');

/*Table structure for table `userreporting` */

DROP TABLE IF EXISTS `userreporting`;

CREATE TABLE `userreporting` (
  `id` int(200) NOT NULL auto_increment,
  `Productid` varchar(200) default NULL,
  `UserName` varchar(200) default NULL,
  `Emailid` varchar(200) default NULL,
  `statement` text,
  `ReportingUser` varchar(200) NOT NULL,
  `Datetime` timestamp NULL default CURRENT_TIMESTAMP,
  `status` varchar(200) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `userreporting` */

insert  into `userreporting`(`id`,`Productid`,`UserName`,`Emailid`,`statement`,`ReportingUser`,`Datetime`,`status`) values (5,'2','subhash','madhavisubhash9@gmail.com','There are scratches on the screen obviously!!! Everythings else is fine.	','sumit','2017-12-12 17:23:46','Fake');

/*Table structure for table `userreview` */

DROP TABLE IF EXISTS `userreview`;

CREATE TABLE `userreview` (
  `id` int(255) NOT NULL auto_increment,
  `Productid` varchar(255) default NULL,
  `UserName` varchar(255) default NULL,
  `Emailid` varchar(255) default NULL,
  `statement` text,
  `DateTime` timestamp NULL default CURRENT_TIMESTAMP,
  `status` varchar(200) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `userreview` */

insert  into `userreview`(`id`,`Productid`,`UserName`,`Emailid`,`statement`,`DateTime`,`status`) values (7,'1','subhash','madhavisubhash9@gmail.com','Love my new red phone. Red is one of favorite colors. So i was so happy when apple came out with red one. It functions just like advertised a. The dealer i purchased it through must have sent that same day because it arrived also immediately.','2017-12-08 18:10:40','True'),(8,'1','subhash','madhavisubhash9@gmail.com','Love my new red phone. Red is one of favorite colors. So i was so happy when apple came out with red one. It functions just like advertised a. The dealer i purchased it through must have sent that same day because it arrived also immediately.','2017-12-08 18:11:37','Fake'),(9,'1','subhash','madhavisubhash9@gmail.com','Love my new red phone. Red is one of favorite colors. So i was so happy when apple came out with red one. It functions just like advertised a. The dealer i purchased it through must have sent that same day because it arrived also immediately.','2017-12-08 18:12:13','Fake'),(10,'1','subhash','madhavisubhash9@gmail.com','I liked it, the cellphone works excellent. The only problem was the box, it seemed like a fake one.','2017-12-08 18:10:40','True'),(11,'1','subhash','madhavisubhash9@gmail.com','I liked it, the cellphone works excellent. The only problem was the box, it seemed like a fake one.','2017-12-08 18:11:37','Fake'),(12,'1','subhash','madhavisubhash9@gmail.com','I liked it, the cellphone works excellent. The only problem was the box, it seemed like a fake one.','2017-12-08 18:13:36','Fake'),(13,'2','subhash','madhavisubhash9@gmail.com','There are scratches on the screen obviously!!! Everythings else is fine.	','2017-12-08 18:15:31','True'),(14,'2','subhash','madhavisubhash9@gmail.com','There are scratches on the screen obviously!!! Everythings else is fine.	','2017-12-08 18:15:40','Fake'),(15,'7','subhash','madhavisubhash9@gmail.com','There are scratches on the screen obviously!!! Everythings else is fine.	','2017-12-08 18:16:11','0'),(16,'2','sumit','madhavisubhash9@gmail.com','There are scratches on the screen obviously!!! Everythings else is fine.	','2017-12-13 14:46:12','Fake');

/*Table structure for table `wordoccurances` */

DROP TABLE IF EXISTS `wordoccurances`;

CREATE TABLE `wordoccurances` (
  `word` varchar(1000) default NULL,
  `class` varchar(100) default NULL,
  `occurances` varchar(100) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `wordoccurances` */

insert  into `wordoccurances`(`word`,`class`,`occurances`) values ('also','True','1'),('it','True','3'),('my','True','1'),('phone.','True','1'),('liked','True','1'),('so','True','1'),('only','True','1'),('I','True','1'),('colors.','True','1'),('problem','True','1'),('one.','True','2'),('just','True','1'),('sent','True','1'),('a','True','1'),('when','True','1'),('one','True','1'),('is','True','3'),('are','True','2'),('same','True','1'),('There','True','2'),('works','True','1'),('red','True','2'),('Red','True','1'),('screen','True','2'),('fine.	','True','2'),('Everythings','True','2'),('through','True','1'),('i','True','2'),('that','True','1'),('was','True','2'),('out','True','1'),('obviously!!!','True','2'),('of','True','1'),('else','True','2'),('purchased','True','1'),('arrived','True','1'),('box,','True','1'),('fake','True','1'),('apple','True','1'),('It','True','1'),('favorite','True','1'),('came','True','1'),('scratches','True','2'),('functions','True','1'),('a.','True','1'),('with','True','1'),('have','True','1'),('cellphone','True','1'),('So','True','1'),('excellent.','True','1'),('new','True','1'),('advertised','True','1'),('because','True','1'),('on','True','2'),('seemed','True','1'),('like','True','2'),('dealer','True','1'),('must','True','1'),('it,','True','1'),('the','True','4'),('happy','True','1'),('Love','True','1'),('The','True','2'),('immediately.','True','1'),('day','True','1'),('box,','Fake','2'),('i','Fake','4'),('The','Fake','4'),('through','Fake','2'),('purchased','Fake','2'),('was','Fake','4'),('that','Fake','2'),('arrived','Fake','2'),('it,','Fake','2'),('fine.	','Fake','2'),('are','Fake','2'),('obviously!!!','Fake','2'),('a.','Fake','2'),('functions','Fake','2'),('just','Fake','2'),('because','Fake','2'),('fake','Fake','2'),('favorite','Fake','2'),('came','Fake','2'),('scratches','Fake','2'),('else','Fake','2'),('It','Fake','2'),('Everythings','Fake','2'),('with','Fake','2'),('have','Fake','2'),('cellphone','Fake','2'),('happy','Fake','2'),('apple','Fake','2'),('must','Fake','2'),('dealer','Fake','2'),('day','Fake','2'),('seemed','Fake','2'),('on','Fake','2'),('screen','Fake','2'),('So','Fake','2'),('excellent.','Fake','2'),('it','Fake','6'),('new','Fake','2'),('like','Fake','4'),('advertised','Fake','2'),('immediately.','Fake','2'),('I','Fake','2'),('liked','Fake','2'),('the','Fake','6'),('colors.','Fake','2'),('Love','Fake','2'),('so','Fake','2'),('only','Fake','2'),('one.','Fake','4'),('phone.','Fake','2'),('problem','Fake','2'),('same','Fake','2'),('of','Fake','2'),('There','Fake','2'),('when','Fake','2'),('one','Fake','2'),('sent','Fake','2'),('is','Fake','4'),('out','Fake','2'),('a','Fake','2'),('also','Fake','2'),('my','Fake','2'),('Red','Fake','2'),('red','Fake','4'),('works','Fake','2');

/*Table structure for table `wordwithclass` */

DROP TABLE IF EXISTS `wordwithclass`;

CREATE TABLE `wordwithclass` (
  `word` varchar(1000) default NULL,
  `class` varchar(1000) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `wordwithclass` */

insert  into `wordwithclass`(`word`,`class`) values ('Love','True'),('my','True'),('new','True'),('red','True'),('phone.','True'),('Red','True'),('is','True'),('one','True'),('of','True'),('favorite','True'),('colors.','True'),('So','True'),('i','True'),('was','True'),('so','True'),('happy','True'),('when','True'),('apple','True'),('came','True'),('out','True'),('with','True'),('red','True'),('one.','True'),('It','True'),('functions','True'),('just','True'),('like','True'),('advertised','True'),('a.','True'),('The','True'),('dealer','True'),('i','True'),('purchased','True'),('it','True'),('through','True'),('must','True'),('have','True'),('sent','True'),('that','True'),('same','True'),('day','True'),('because','True'),('it','True'),('arrived','True'),('also','True'),('immediately.','True'),('I','True'),('liked','True'),('it,','True'),('the','True'),('cellphone','True'),('works','True'),('excellent.','True'),('The','True'),('only','True'),('problem','True'),('was','True'),('the','True'),('box,','True'),('it','True'),('seemed','True'),('like','True'),('a','True'),('fake','True'),('one.','True'),('There','True'),('are','True'),('scratches','True'),('on','True'),('the','True'),('screen','True'),('obviously!!!','True'),('Everythings','True'),('else','True'),('is','True'),('fine.	','True'),('There','True'),('are','True'),('scratches','True'),('on','True'),('the','True'),('screen','True'),('obviously!!!','True'),('Everythings','True'),('else','True'),('is','True'),('fine.	','True'),('Love','Fake'),('my','Fake'),('new','Fake'),('red','Fake'),('phone.','Fake'),('Red','Fake'),('is','Fake'),('one','Fake'),('of','Fake'),('favorite','Fake'),('colors.','Fake'),('So','Fake'),('i','Fake'),('was','Fake'),('so','Fake'),('happy','Fake'),('when','Fake'),('apple','Fake'),('came','Fake'),('out','Fake'),('with','Fake'),('red','Fake'),('one.','Fake'),('It','Fake'),('functions','Fake'),('just','Fake'),('like','Fake'),('advertised','Fake'),('a.','Fake'),('The','Fake'),('dealer','Fake'),('i','Fake'),('purchased','Fake'),('it','Fake'),('through','Fake'),('must','Fake'),('have','Fake'),('sent','Fake'),('that','Fake'),('same','Fake'),('day','Fake'),('because','Fake'),('it','Fake'),('arrived','Fake'),('also','Fake'),('immediately.','Fake'),('Love','Fake'),('my','Fake'),('new','Fake'),('red','Fake'),('phone.','Fake'),('Red','Fake'),('is','Fake'),('one','Fake'),('of','Fake'),('favorite','Fake'),('colors.','Fake'),('So','Fake'),('i','Fake'),('was','Fake'),('so','Fake'),('happy','Fake'),('when','Fake'),('apple','Fake'),('came','Fake'),('out','Fake'),('with','Fake'),('red','Fake'),('one.','Fake'),('It','Fake'),('functions','Fake'),('just','Fake'),('like','Fake'),('advertised','Fake'),('a.','Fake'),('The','Fake'),('dealer','Fake'),('i','Fake'),('purchased','Fake'),('it','Fake'),('through','Fake'),('must','Fake'),('have','Fake'),('sent','Fake'),('that','Fake'),('same','Fake'),('day','Fake'),('because','Fake'),('it','Fake'),('arrived','Fake'),('also','Fake'),('immediately.','Fake'),('I','Fake'),('liked','Fake'),('it,','Fake'),('the','Fake'),('cellphone','Fake'),('works','Fake'),('excellent.','Fake'),('The','Fake'),('only','Fake'),('problem','Fake'),('was','Fake'),('the','Fake'),('box,','Fake'),('it','Fake'),('seemed','Fake'),('like','Fake'),('a','Fake'),('fake','Fake'),('one.','Fake'),('I','Fake'),('liked','Fake'),('it,','Fake'),('the','Fake'),('cellphone','Fake'),('works','Fake'),('excellent.','Fake'),('The','Fake'),('only','Fake'),('problem','Fake'),('was','Fake'),('the','Fake'),('box,','Fake'),('it','Fake'),('seemed','Fake'),('like','Fake'),('a','Fake'),('fake','Fake'),('one.','Fake'),('There','Fake'),('are','Fake'),('scratches','Fake'),('on','Fake'),('the','Fake'),('screen','Fake'),('obviously!!!','Fake'),('Everythings','Fake'),('else','Fake'),('is','Fake'),('fine.	','Fake'),('There','Fake'),('are','Fake'),('scratches','Fake'),('on','Fake'),('the','Fake'),('screen','Fake'),('obviously!!!','Fake'),('Everythings','Fake'),('else','Fake'),('is','Fake'),('fine.	','Fake');

/*Table structure for table `wordwithprobability` */

DROP TABLE IF EXISTS `wordwithprobability`;

CREATE TABLE `wordwithprobability` (
  `word` varchar(1000) default NULL,
  `class` varchar(1000) default NULL,
  `probability` varchar(1000) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `wordwithprobability` */

insert  into `wordwithprobability`(`word`,`class`,`probability`) values ('also','True','0.013605442176870748'),('box,','Fake','0.014150943396226415'),('phone.','True','0.013605442176870748'),('liked','True','0.013605442176870748'),('only','True','0.013605442176870748'),('that','Fake','0.014150943396226415'),('fine.	','Fake','0.014150943396226415'),('are','Fake','0.014150943396226415'),('I','True','0.013605442176870748'),('functions','Fake','0.014150943396226415'),('just','Fake','0.014150943396226415'),('came','Fake','0.014150943396226415'),('with','Fake','0.014150943396226415'),('have','Fake','0.014150943396226415'),('one.','True','0.02040816326530612'),('just','True','0.013605442176870748'),('sent','True','0.013605442176870748'),('a','True','0.013605442176870748'),('apple','Fake','0.014150943396226415'),('must','Fake','0.014150943396226415'),('are','True','0.02040816326530612'),('dealer','Fake','0.014150943396226415'),('seemed','Fake','0.014150943396226415'),('day','Fake','0.014150943396226415'),('screen','Fake','0.014150943396226415'),('on','Fake','0.014150943396226415'),('excellent.','Fake','0.014150943396226415'),('same','True','0.013605442176870748'),('There','True','0.02040816326530612'),('like','Fake','0.02358490566037736'),('advertised','Fake','0.014150943396226415'),('immediately.','Fake','0.014150943396226415'),('fine.	','True','0.02040816326530612'),('Everythings','True','0.02040816326530612'),('I','Fake','0.02358490566037736'),('colors.','Fake','0.014150943396226415'),('so','Fake','0.014150943396226415'),('that','True','0.013605442176870748'),('only','Fake','0.014150943396226415'),('of','True','0.013605442176870748'),('box,','True','0.013605442176870748'),('apple','True','0.013605442176870748'),('came','True','0.013605442176870748'),('functions','True','0.013605442176870748'),('excellent.','True','0.013605442176870748'),('same','Fake','0.014150943396226415'),('like','True','0.02040816326530612'),('There','Fake','0.014150943396226415'),('when','Fake','0.014150943396226415'),('sent','Fake','0.014150943396226415'),('is','Fake','0.02358490566037736'),('a','Fake','0.014150943396226415'),('happy','True','0.013605442176870748'),('red','Fake','0.014150943396226415'),('day','True','0.013605442176870748'),('it','True','0.027210884353741496'),('my','True','0.013605442176870748'),('so','True','0.013605442176870748'),('through','Fake','0.014150943396226415'),('purchased','Fake','0.014150943396226415'),('was','Fake','0.02358490566037736'),('arrived','Fake','0.014150943396226415'),('it,','Fake','0.014150943396226415'),('obviously!!!','Fake','0.014150943396226415'),('a.','Fake','0.014150943396226415'),('because','Fake','0.014150943396226415'),('colors.','True','0.013605442176870748'),('fake','Fake','0.014150943396226415'),('else','Fake','0.014150943396226415'),('favorite','Fake','0.014150943396226415'),('scratches','Fake','0.014150943396226415'),('Everythings','Fake','0.014150943396226415'),('problem','True','0.013605442176870748'),('cellphone','Fake','0.014150943396226415'),('happy','Fake','0.014150943396226415'),('when','True','0.013605442176870748'),('one','True','0.013605442176870748'),('is','True','0.027210884353741496'),('it','Fake','0.014150943396226415'),('new','Fake','0.014150943396226415'),('works','True','0.013605442176870748'),('red','True','0.02040816326530612'),('screen','True','0.02040816326530612'),('through','True','0.013605442176870748'),('liked','Fake','0.014150943396226415'),('the','Fake','0.02358490566037736'),('Love','Fake','0.014150943396226415'),('was','True','0.02040816326530612'),('out','True','0.013605442176870748'),('obviously!!!','True','0.02040816326530612'),('one.','Fake','0.02358490566037736'),('else','True','0.02040816326530612'),('purchased','True','0.013605442176870748'),('arrived','True','0.013605442176870748'),('fake','True','0.013605442176870748'),('phone.','Fake','0.014150943396226415'),('favorite','True','0.013605442176870748'),('scratches','True','0.02040816326530612'),('a.','True','0.013605442176870748'),('problem','Fake','0.014150943396226415'),('with','True','0.013605442176870748'),('have','True','0.013605442176870748'),('cellphone','True','0.013605442176870748'),('of','Fake','0.014150943396226415'),('new','True','0.013605442176870748'),('advertised','True','0.013605442176870748'),('because','True','0.013605442176870748'),('on','True','0.02040816326530612'),('seemed','True','0.013605442176870748'),('dealer','True','0.013605442176870748'),('must','True','0.013605442176870748'),('it,','True','0.013605442176870748'),('one','Fake','0.014150943396226415'),('out','Fake','0.014150943396226415'),('the','True','0.034013605442176874'),('also','Fake','0.014150943396226415'),('Love','True','0.013605442176870748'),('my','Fake','0.014150943396226415'),('works','Fake','0.014150943396226415'),('immediately.','True','0.013605442176870748');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
