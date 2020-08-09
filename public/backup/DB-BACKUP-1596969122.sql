DROP TABLE IF EXISTS admin_languages;

CREATE TABLE `admin_languages` (
  `id` int(191) NOT NULL AUTO_INCREMENT,
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  `language` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `rtl` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

INSERT INTO admin_languages VALUES('1','1','English','1567232745AoOcvCtY.json','1567232745AoOcvCtY','0');
INSERT INTO admin_languages VALUES('2','0','RTL English','1584887310NzfWDhO8.json','1584887310NzfWDhO8','1');



DROP TABLE IF EXISTS admin_user_conversations;

CREATE TABLE `admin_user_conversations` (
  `id` int(191) NOT NULL AUTO_INCREMENT,
  `subject` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(191) NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type` enum('Ticket','Dispute') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_number` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

INSERT INTO admin_user_conversations VALUES('2','Hello i need support','29','hghgsahgsa','2020-08-07 10:11:03','2020-08-07 10:11:03','Ticket','');



DROP TABLE IF EXISTS admin_user_messages;

CREATE TABLE `admin_user_messages` (
  `id` int(191) NOT NULL AUTO_INCREMENT,
  `conversation_id` int(191) NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

INSERT INTO admin_user_messages VALUES('2','2','hghgsahgsa','29','2020-08-07 10:11:03','2020-08-07 10:11:03');



DROP TABLE IF EXISTS admins;

CREATE TABLE `admins` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` int(191) NOT NULL DEFAULT '0',
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `shop_name` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admins_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO admins VALUES('1','Uday Raj Shiwakoti','admin@gmail.com','9851096919','0','1596603192default-avatar.jpg','$2y$10$p35S2FczpEfpbe41CX4j4.XE548tHBtF5weGLPxZ56MX5dsOFtaCC','1','ZwmQmx0xd1Qz0gzprJfHusIDbwPBlGTOvhhjDqMVhvvG83P6hN5jSuP2Yc7z','2018-03-01 05:12:08','2020-08-05 04:53:12','Sports Ventures Pvt. Ltd.');
INSERT INTO admins VALUES('5','Mr Mamun','mamun@gmail.com','34534534','17','1568803644User.png','$2y$10$3AEjcvFBiQHECgtH9ivXTeQZfMf.rw318G820TtVBsYaCt7UNOwGC','1','','2019-09-18 10:32:24','2019-09-19 03:06:49','');
INSERT INTO admins VALUES('6','Mr. Manik','manik@gmail.com','5079956958','18','1568863361user-admin.png','$2y$10$Z3Jx5jHjV2m4HtZHzeaKMuwxkLAKfJ1AX3Ed5MPACvFJLFkEWN9L.','1','','2019-09-19 03:07:41','2019-09-19 03:07:41','');
INSERT INTO admins VALUES('7','Mr. Pratik','pratik@gmail.com','34534534','16','1568863396user-admin.png','$2y$10$u.93l4y6wOz6vq3BlAxvU.LuJ16/uBQ9s2yesRGTWUtLRiQSwoH1C','1','iZPbEaxjSWBJMvncLqeMtAQsG7VoSirVMJ1EBfdJogvgXK2DM5mw236fBCOq','2019-09-19 03:08:16','2019-09-19 03:08:16','');



DROP TABLE IF EXISTS attribute_options;

CREATE TABLE `attribute_options` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `attribute_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=256 DEFAULT CHARSET=latin1;

INSERT INTO attribute_options VALUES('107','14','No Warranty','2019-09-24 04:41:07','2019-09-24 04:41:07');
INSERT INTO attribute_options VALUES('108','14','Local seller Warranty','2019-09-24 04:41:07','2019-09-24 04:41:07');
INSERT INTO attribute_options VALUES('109','14','Non local warranty','2019-09-24 04:41:07','2019-09-24 04:41:07');
INSERT INTO attribute_options VALUES('110','14','International Manufacturer Warranty','2019-09-24 04:41:07','2019-09-24 04:41:07');
INSERT INTO attribute_options VALUES('111','14','International Seller Warranty','2019-09-24 04:41:07','2019-09-24 04:41:07');
INSERT INTO attribute_options VALUES('157','22','Black','2019-09-24 06:31:26','2019-09-24 06:31:26');
INSERT INTO attribute_options VALUES('158','22','White','2019-09-24 06:31:26','2019-09-24 06:31:26');
INSERT INTO attribute_options VALUES('159','22','Sliver','2019-09-24 06:31:26','2019-09-24 06:31:26');
INSERT INTO attribute_options VALUES('160','22','Red','2019-09-24 06:31:26','2019-09-24 06:31:26');
INSERT INTO attribute_options VALUES('161','22','Dark Grey','2019-09-24 06:31:26','2019-09-24 06:31:26');
INSERT INTO attribute_options VALUES('162','22','Dark Blue','2019-09-24 06:31:26','2019-09-24 06:31:26');
INSERT INTO attribute_options VALUES('163','22','Brown','2019-09-24 06:31:26','2019-09-24 06:31:26');
INSERT INTO attribute_options VALUES('172','24','40','2019-09-24 07:10:32','2019-09-24 07:10:32');
INSERT INTO attribute_options VALUES('173','24','22','2019-09-24 07:10:32','2019-09-24 07:10:32');
INSERT INTO attribute_options VALUES('174','24','24','2019-09-24 07:10:32','2019-09-24 07:10:32');
INSERT INTO attribute_options VALUES('175','24','32','2019-09-24 07:10:32','2019-09-24 07:10:32');
INSERT INTO attribute_options VALUES('176','24','21','2019-09-24 07:10:32','2019-09-24 07:10:32');
INSERT INTO attribute_options VALUES('177','25','demo 1','2019-09-24 07:11:47','2019-09-24 07:11:47');
INSERT INTO attribute_options VALUES('178','25','demo 2','2019-09-24 07:11:47','2019-09-24 07:11:47');
INSERT INTO attribute_options VALUES('187','30','Yellow','2019-09-24 10:16:44','2019-09-24 10:16:44');
INSERT INTO attribute_options VALUES('188','30','White','2019-09-24 10:16:44','2019-09-24 10:16:44');
INSERT INTO attribute_options VALUES('189','31','22','2019-09-24 10:19:35','2019-09-24 10:19:35');
INSERT INTO attribute_options VALUES('190','31','34','2019-09-24 10:19:35','2019-09-24 10:19:35');
INSERT INTO attribute_options VALUES('191','31','45','2019-09-24 10:19:35','2019-09-24 10:19:35');
INSERT INTO attribute_options VALUES('253','32','demo 1','2019-10-13 09:03:04','2019-10-13 09:03:04');
INSERT INTO attribute_options VALUES('254','32','demo 2','2019-10-13 09:03:04','2019-10-13 09:03:04');
INSERT INTO attribute_options VALUES('255','32','demo 3','2019-10-13 09:03:04','2019-10-13 09:03:04');



DROP TABLE IF EXISTS attributes;

CREATE TABLE `attributes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `attributable_id` int(11) DEFAULT NULL,
  `attributable_type` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `input_name` varchar(255) DEFAULT NULL,
  `price_status` int(3) NOT NULL DEFAULT '1' COMMENT '0 - hide, 1- show	',
  `details_status` int(3) NOT NULL DEFAULT '1' COMMENT '0 - hide, 1- show	',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;

INSERT INTO attributes VALUES('14','5','App\\Models\\Category','Warranty Type','warranty_type','1','1','2019-09-24 04:41:07','2019-09-24 04:41:07');
INSERT INTO attributes VALUES('22','2','App\\Models\\Subcategory','Color Family','color_family','1','1','2019-09-24 06:30:45','2019-09-24 06:30:45');
INSERT INTO attributes VALUES('24','1','App\\Models\\Childcategory','Display Size','display_size','1','1','2019-09-24 06:39:17','2019-09-24 06:39:17');
INSERT INTO attributes VALUES('25','12','App\\Models\\Subcategory','demo','demo','1','1','2019-09-24 07:11:47','2019-09-24 07:11:47');
INSERT INTO attributes VALUES('30','3','App\\Models\\Subcategory','Interior Color','interior_color','1','1','2019-09-24 10:16:44','2019-09-24 10:16:44');
INSERT INTO attributes VALUES('31','8','App\\Models\\Childcategory','Temperature','temperature','1','1','2019-09-24 10:19:35','2019-09-24 10:19:35');
INSERT INTO attributes VALUES('32','18','App\\Models\\Category','Demo','demo','1','1','2019-10-03 05:24:12','2019-10-03 05:24:12');



DROP TABLE IF EXISTS banners;

CREATE TABLE `banners` (
  `id` int(191) NOT NULL AUTO_INCREMENT,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` enum('Large','TopSmall','BottomSmall') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

INSERT INTO banners VALUES('1','1568889151top2.jpg','https://www.google.com/','TopSmall');
INSERT INTO banners VALUES('2','1568889146top1.jpg','','TopSmall');
INSERT INTO banners VALUES('3','1568889164bottom1.jpg','https://www.google.com/','Large');
INSERT INTO banners VALUES('4','1564398600side-triple3.jpg','https://www.google.com/','BottomSmall');
INSERT INTO banners VALUES('5','1564398579side-triple2.jpg','https://www.google.com/','BottomSmall');
INSERT INTO banners VALUES('6','1564398571side-triple1.jpg','https://www.google.com/','BottomSmall');



DROP TABLE IF EXISTS blog_categories;

CREATE TABLE `blog_categories` (
  `id` int(191) NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

INSERT INTO blog_categories VALUES('8','Fashion&Technology','synchronize-fashion-&-technology');
INSERT INTO blog_categories VALUES('9','Fashion','fashion-trend-in-Nepal');



DROP TABLE IF EXISTS blogs;

CREATE TABLE `blogs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int(191) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `source` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `views` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `meta_tag` text COLLATE utf8mb4_unicode_ci,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `tags` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;




DROP TABLE IF EXISTS categories;

CREATE TABLE `categories` (
  `id` int(191) NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint(1) NOT NULL DEFAULT '0',
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

INSERT INTO categories VALUES('4','Electronic','electric','1','1557807287light.png','1','1568709131f6.jpg');
INSERT INTO categories VALUES('5','Fashion & Beauty','fashion-and-Beauty','1','1557807279fashion.png','1','1568709123f1.jpg');
INSERT INTO categories VALUES('6','Camera & Photo','camera-and-photo','1','1557807264camera.png','1','1568709110f2.jpg');
INSERT INTO categories VALUES('7','Smart Phone & Table','smart-phone-and-table','1','1557377810mobile.png','1','1568709597f4.jpg');
INSERT INTO categories VALUES('8','Sport & Outdoor','sport-and-Outdoor','1','1557807258sports.png','1','1568709577f8.jpg');
INSERT INTO categories VALUES('9','Jewelry & Watches','jewelry-and-watches','1','1557807252furniture.png','1','1568709077f7.jpg');
INSERT INTO categories VALUES('11','Books & Office','books-and-office','1','1557377917bags.png','1','1568709050f8.jpg');
INSERT INTO categories VALUES('12','Toys & Hobbies','toys-and-hobbies','1','1557807214sports.png','1','1568709042f9.jpg');
INSERT INTO categories VALUES('17','Portable & Personal Electronics','portable-and-personal-electronics','1','1568878538electronic.jpg','0','');
INSERT INTO categories VALUES('18','Outdoor, Recreation & Fitness','Outdoor-Recreation-and-Fitness','1','1568878596home.jpg','0','');



DROP TABLE IF EXISTS childcategories;

CREATE TABLE `childcategories` (
  `id` int(191) NOT NULL AUTO_INCREMENT,
  `subcategory_id` int(191) NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

INSERT INTO childcategories VALUES('1','2','LCD TV','lcd-tv','1');
INSERT INTO childcategories VALUES('2','2','LED TV','led-tv','1');
INSERT INTO childcategories VALUES('3','2','Curved TV','curved-tv','1');
INSERT INTO childcategories VALUES('4','2','Plasma TV','plasma-tv','1');
INSERT INTO childcategories VALUES('5','3','Top Freezer','top-freezer','1');
INSERT INTO childcategories VALUES('6','3','Side-by-Side','side-by-side','1');
INSERT INTO childcategories VALUES('7','3','Counter-Depth','counter-depth','1');
INSERT INTO childcategories VALUES('8','3','Mini Fridge','mini-fridge','1');
INSERT INTO childcategories VALUES('9','4','Front Loading','front-loading','1');
INSERT INTO childcategories VALUES('10','4','Top Loading','top-loading','1');
INSERT INTO childcategories VALUES('11','4','Washer Dryer Combo','washer-dryer-combo','1');
INSERT INTO childcategories VALUES('12','4','Laundry Center','laundry-center','1');
INSERT INTO childcategories VALUES('13','5','Central Air','central-air','1');
INSERT INTO childcategories VALUES('14','5','Window Air','window-air','1');
INSERT INTO childcategories VALUES('15','5','Portable Air','portable-air','1');
INSERT INTO childcategories VALUES('16','5','Hybrid Air','hybrid-air','1');



DROP TABLE IF EXISTS comments;

CREATE TABLE `comments` (
  `id` int(191) NOT NULL AUTO_INCREMENT,
  `user_id` int(191) unsigned NOT NULL,
  `product_id` int(191) unsigned NOT NULL,
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




DROP TABLE IF EXISTS conversations;

CREATE TABLE `conversations` (
  `id` int(191) NOT NULL AUTO_INCREMENT,
  `subject` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sent_user` int(191) NOT NULL,
  `recieved_user` int(191) NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

INSERT INTO conversations VALUES('1','heyy','30','29','i am your regular customer','2020-08-04 16:52:16','2020-08-04 16:52:16');



DROP TABLE IF EXISTS counters;

CREATE TABLE `counters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` enum('referral','browser') NOT NULL DEFAULT 'referral',
  `referral` varchar(255) DEFAULT NULL,
  `total_count` int(11) NOT NULL DEFAULT '0',
  `todays_count` int(11) NOT NULL DEFAULT '0',
  `today` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

INSERT INTO counters VALUES('1','referral','www.facebook.com','5','0','');
INSERT INTO counters VALUES('2','referral','geniusocean.com','2','0','');
INSERT INTO counters VALUES('3','browser','Windows 10','881','0','');
INSERT INTO counters VALUES('4','browser','Linux','221','0','');
INSERT INTO counters VALUES('5','browser','Unknown OS Platform','384','0','');
INSERT INTO counters VALUES('6','browser','Windows 7','415','0','');
INSERT INTO counters VALUES('7','referral','yandex.ru','15','0','');
INSERT INTO counters VALUES('8','browser','Windows 8.1','553','0','');
INSERT INTO counters VALUES('9','referral','www.google.com','6','0','');
INSERT INTO counters VALUES('10','browser','Android','375','0','');
INSERT INTO counters VALUES('11','browser','Mac OS X','1070','0','');
INSERT INTO counters VALUES('12','referral','l.facebook.com','1','0','');
INSERT INTO counters VALUES('13','referral','codecanyon.net','6','0','');
INSERT INTO counters VALUES('14','browser','Windows XP','2','0','');
INSERT INTO counters VALUES('15','browser','Windows 8','1','0','');
INSERT INTO counters VALUES('16','browser','iPad','20','0','');
INSERT INTO counters VALUES('17','browser','Ubuntu','1','0','');
INSERT INTO counters VALUES('18','browser','iPhone','8','0','');
INSERT INTO counters VALUES('19','referral','srv2.ininepal.com','1','0','');
INSERT INTO counters VALUES('20','referral','sportsventures.test','564','0','');



DROP TABLE IF EXISTS countries;

CREATE TABLE `countries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `country_code` varchar(2) NOT NULL DEFAULT '',
  `country_name` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=247 DEFAULT CHARSET=utf8;

INSERT INTO countries VALUES('1','AF','Afghanistan');
INSERT INTO countries VALUES('2','AL','Albania');
INSERT INTO countries VALUES('3','DZ','Algeria');
INSERT INTO countries VALUES('4','DS','American Samoa');
INSERT INTO countries VALUES('5','AD','Andorra');
INSERT INTO countries VALUES('6','AO','Angola');
INSERT INTO countries VALUES('7','AI','Anguilla');
INSERT INTO countries VALUES('8','AQ','Antarctica');
INSERT INTO countries VALUES('9','AG','Antigua and Barbuda');
INSERT INTO countries VALUES('10','AR','Argentina');
INSERT INTO countries VALUES('11','AM','Armenia');
INSERT INTO countries VALUES('12','AW','Aruba');
INSERT INTO countries VALUES('13','AU','Australia');
INSERT INTO countries VALUES('14','AT','Austria');
INSERT INTO countries VALUES('15','AZ','Azerbaijan');
INSERT INTO countries VALUES('16','BS','Bahamas');
INSERT INTO countries VALUES('17','BH','Bahrain');
INSERT INTO countries VALUES('18','BD','Bangladesh');
INSERT INTO countries VALUES('19','BB','Barbados');
INSERT INTO countries VALUES('20','BY','Belarus');
INSERT INTO countries VALUES('21','BE','Belgium');
INSERT INTO countries VALUES('22','BZ','Belize');
INSERT INTO countries VALUES('23','BJ','Benin');
INSERT INTO countries VALUES('24','BM','Bermuda');
INSERT INTO countries VALUES('25','BT','Bhutan');
INSERT INTO countries VALUES('26','BO','Bolivia');
INSERT INTO countries VALUES('27','BA','Bosnia and Herzegovina');
INSERT INTO countries VALUES('28','BW','Botswana');
INSERT INTO countries VALUES('29','BV','Bouvet Island');
INSERT INTO countries VALUES('30','BR','Brazil');
INSERT INTO countries VALUES('31','IO','British Indian Ocean Territory');
INSERT INTO countries VALUES('32','BN','Brunei Darussalam');
INSERT INTO countries VALUES('33','BG','Bulgaria');
INSERT INTO countries VALUES('34','BF','Burkina Faso');
INSERT INTO countries VALUES('35','BI','Burundi');
INSERT INTO countries VALUES('36','KH','Cambodia');
INSERT INTO countries VALUES('37','CM','Cameroon');
INSERT INTO countries VALUES('38','CA','Canada');
INSERT INTO countries VALUES('39','CV','Cape Verde');
INSERT INTO countries VALUES('40','KY','Cayman Islands');
INSERT INTO countries VALUES('41','CF','Central African Republic');
INSERT INTO countries VALUES('42','TD','Chad');
INSERT INTO countries VALUES('43','CL','Chile');
INSERT INTO countries VALUES('44','CN','China');
INSERT INTO countries VALUES('45','CX','Christmas Island');
INSERT INTO countries VALUES('46','CC','Cocos (Keeling) Islands');
INSERT INTO countries VALUES('47','CO','Colombia');
INSERT INTO countries VALUES('48','KM','Comoros');
INSERT INTO countries VALUES('49','CD','Democratic Republic of the Congo');
INSERT INTO countries VALUES('50','CG','Republic of Congo');
INSERT INTO countries VALUES('51','CK','Cook Islands');
INSERT INTO countries VALUES('52','CR','Costa Rica');
INSERT INTO countries VALUES('53','HR','Croatia (Hrvatska)');
INSERT INTO countries VALUES('54','CU','Cuba');
INSERT INTO countries VALUES('55','CY','Cyprus');
INSERT INTO countries VALUES('56','CZ','Czech Republic');
INSERT INTO countries VALUES('57','DK','Denmark');
INSERT INTO countries VALUES('58','DJ','Djibouti');
INSERT INTO countries VALUES('59','DM','Dominica');
INSERT INTO countries VALUES('60','DO','Dominican Republic');
INSERT INTO countries VALUES('61','TP','East Timor');
INSERT INTO countries VALUES('62','EC','Ecuador');
INSERT INTO countries VALUES('63','EG','Egypt');
INSERT INTO countries VALUES('64','SV','El Salvador');
INSERT INTO countries VALUES('65','GQ','Equatorial Guinea');
INSERT INTO countries VALUES('66','ER','Eritrea');
INSERT INTO countries VALUES('67','EE','Estonia');
INSERT INTO countries VALUES('68','ET','Ethiopia');
INSERT INTO countries VALUES('69','FK','Falkland Islands (Malvinas)');
INSERT INTO countries VALUES('70','FO','Faroe Islands');
INSERT INTO countries VALUES('71','FJ','Fiji');
INSERT INTO countries VALUES('72','FI','Finland');
INSERT INTO countries VALUES('73','FR','France');
INSERT INTO countries VALUES('74','FX','France, Metropolitan');
INSERT INTO countries VALUES('75','GF','French Guiana');
INSERT INTO countries VALUES('76','PF','French Polynesia');
INSERT INTO countries VALUES('77','TF','French Southern Territories');
INSERT INTO countries VALUES('78','GA','Gabon');
INSERT INTO countries VALUES('79','GM','Gambia');
INSERT INTO countries VALUES('80','GE','Georgia');
INSERT INTO countries VALUES('81','DE','Germany');
INSERT INTO countries VALUES('82','GH','Ghana');
INSERT INTO countries VALUES('83','GI','Gibraltar');
INSERT INTO countries VALUES('84','GK','Guernsey');
INSERT INTO countries VALUES('85','GR','Greece');
INSERT INTO countries VALUES('86','GL','Greenland');
INSERT INTO countries VALUES('87','GD','Grenada');
INSERT INTO countries VALUES('88','GP','Guadeloupe');
INSERT INTO countries VALUES('89','GU','Guam');
INSERT INTO countries VALUES('90','GT','Guatemala');
INSERT INTO countries VALUES('91','GN','Guinea');
INSERT INTO countries VALUES('92','GW','Guinea-Bissau');
INSERT INTO countries VALUES('93','GY','Guyana');
INSERT INTO countries VALUES('94','HT','Haiti');
INSERT INTO countries VALUES('95','HM','Heard and Mc Donald Islands');
INSERT INTO countries VALUES('96','HN','Honduras');
INSERT INTO countries VALUES('97','HK','Hong Kong');
INSERT INTO countries VALUES('98','HU','Hungary');
INSERT INTO countries VALUES('99','IS','Iceland');
INSERT INTO countries VALUES('100','IN','India');
INSERT INTO countries VALUES('101','IM','Isle of Man');
INSERT INTO countries VALUES('102','ID','Indonesia');
INSERT INTO countries VALUES('103','IR','Iran (Islamic Republic of)');
INSERT INTO countries VALUES('104','IQ','Iraq');
INSERT INTO countries VALUES('105','IE','Ireland');
INSERT INTO countries VALUES('106','IL','Israel');
INSERT INTO countries VALUES('107','IT','Italy');
INSERT INTO countries VALUES('108','CI','Ivory Coast');
INSERT INTO countries VALUES('109','JE','Jersey');
INSERT INTO countries VALUES('110','JM','Jamaica');
INSERT INTO countries VALUES('111','JP','Japan');
INSERT INTO countries VALUES('112','JO','Jordan');
INSERT INTO countries VALUES('113','KZ','Kazakhstan');
INSERT INTO countries VALUES('114','KE','Kenya');
INSERT INTO countries VALUES('115','KI','Kiribati');
INSERT INTO countries VALUES('116','KP','Korea, Democratic People\'s Republic of');
INSERT INTO countries VALUES('117','KR','Korea, Republic of');
INSERT INTO countries VALUES('118','XK','Kosovo');
INSERT INTO countries VALUES('119','KW','Kuwait');
INSERT INTO countries VALUES('120','KG','Kyrgyzstan');
INSERT INTO countries VALUES('121','LA','Lao People\'s Democratic Republic');
INSERT INTO countries VALUES('122','LV','Latvia');
INSERT INTO countries VALUES('123','LB','Lebanon');
INSERT INTO countries VALUES('124','LS','Lesotho');
INSERT INTO countries VALUES('125','LR','Liberia');
INSERT INTO countries VALUES('126','LY','Libyan Arab Jamahiriya');
INSERT INTO countries VALUES('127','LI','Liechtenstein');
INSERT INTO countries VALUES('128','LT','Lithuania');
INSERT INTO countries VALUES('129','LU','Luxembourg');
INSERT INTO countries VALUES('130','MO','Macau');
INSERT INTO countries VALUES('131','MK','North Macedonia');
INSERT INTO countries VALUES('132','MG','Madagascar');
INSERT INTO countries VALUES('133','MW','Malawi');
INSERT INTO countries VALUES('134','MY','Malaysia');
INSERT INTO countries VALUES('135','MV','Maldives');
INSERT INTO countries VALUES('136','ML','Mali');
INSERT INTO countries VALUES('137','MT','Malta');
INSERT INTO countries VALUES('138','MH','Marshall Islands');
INSERT INTO countries VALUES('139','MQ','Martinique');
INSERT INTO countries VALUES('140','MR','Mauritania');
INSERT INTO countries VALUES('141','MU','Mauritius');
INSERT INTO countries VALUES('142','TY','Mayotte');
INSERT INTO countries VALUES('143','MX','Mexico');
INSERT INTO countries VALUES('144','FM','Micronesia, Federated States of');
INSERT INTO countries VALUES('145','MD','Moldova, Republic of');
INSERT INTO countries VALUES('146','MC','Monaco');
INSERT INTO countries VALUES('147','MN','Mongolia');
INSERT INTO countries VALUES('148','ME','Montenegro');
INSERT INTO countries VALUES('149','MS','Montserrat');
INSERT INTO countries VALUES('150','MA','Morocco');
INSERT INTO countries VALUES('151','MZ','Mozambique');
INSERT INTO countries VALUES('152','MM','Myanmar');
INSERT INTO countries VALUES('153','NA','Namibia');
INSERT INTO countries VALUES('154','NR','Nauru');
INSERT INTO countries VALUES('155','NP','Nepal');
INSERT INTO countries VALUES('156','NL','Netherlands');
INSERT INTO countries VALUES('157','AN','Netherlands Antilles');
INSERT INTO countries VALUES('158','NC','New Caledonia');
INSERT INTO countries VALUES('159','NZ','New Zealand');
INSERT INTO countries VALUES('160','NI','Nicaragua');
INSERT INTO countries VALUES('161','NE','Niger');
INSERT INTO countries VALUES('162','NG','Nigeria');
INSERT INTO countries VALUES('163','NU','Niue');
INSERT INTO countries VALUES('164','NF','Norfolk Island');
INSERT INTO countries VALUES('165','MP','Northern Mariana Islands');
INSERT INTO countries VALUES('166','NO','Norway');
INSERT INTO countries VALUES('167','OM','Oman');
INSERT INTO countries VALUES('168','PK','Pakistan');
INSERT INTO countries VALUES('169','PW','Palau');
INSERT INTO countries VALUES('170','PS','Palestine');
INSERT INTO countries VALUES('171','PA','Panama');
INSERT INTO countries VALUES('172','PG','Papua New Guinea');
INSERT INTO countries VALUES('173','PY','Paraguay');
INSERT INTO countries VALUES('174','PE','Peru');
INSERT INTO countries VALUES('175','PH','Philippines');
INSERT INTO countries VALUES('176','PN','Pitcairn');
INSERT INTO countries VALUES('177','PL','Poland');
INSERT INTO countries VALUES('178','PT','Portugal');
INSERT INTO countries VALUES('179','PR','Puerto Rico');
INSERT INTO countries VALUES('180','QA','Qatar');
INSERT INTO countries VALUES('181','RE','Reunion');
INSERT INTO countries VALUES('182','RO','Romania');
INSERT INTO countries VALUES('183','RU','Russian Federation');
INSERT INTO countries VALUES('184','RW','Rwanda');
INSERT INTO countries VALUES('185','KN','Saint Kitts and Nevis');
INSERT INTO countries VALUES('186','LC','Saint Lucia');
INSERT INTO countries VALUES('187','VC','Saint Vincent and the Grenadines');
INSERT INTO countries VALUES('188','WS','Samoa');
INSERT INTO countries VALUES('189','SM','San Marino');
INSERT INTO countries VALUES('190','ST','Sao Tome and Principe');
INSERT INTO countries VALUES('191','SA','Saudi Arabia');
INSERT INTO countries VALUES('192','SN','Senegal');
INSERT INTO countries VALUES('193','RS','Serbia');
INSERT INTO countries VALUES('194','SC','Seychelles');
INSERT INTO countries VALUES('195','SL','Sierra Leone');
INSERT INTO countries VALUES('196','SG','Singapore');
INSERT INTO countries VALUES('197','SK','Slovakia');
INSERT INTO countries VALUES('198','SI','Slovenia');
INSERT INTO countries VALUES('199','SB','Solomon Islands');
INSERT INTO countries VALUES('200','SO','Somalia');
INSERT INTO countries VALUES('201','ZA','South Africa');
INSERT INTO countries VALUES('202','GS','South Georgia South Sandwich Islands');
INSERT INTO countries VALUES('203','SS','South Sudan');
INSERT INTO countries VALUES('204','ES','Spain');
INSERT INTO countries VALUES('205','LK','Sri Lanka');
INSERT INTO countries VALUES('206','SH','St. Helena');
INSERT INTO countries VALUES('207','PM','St. Pierre and Miquelon');
INSERT INTO countries VALUES('208','SD','Sudan');
INSERT INTO countries VALUES('209','SR','Suriname');
INSERT INTO countries VALUES('210','SJ','Svalbard and Jan Mayen Islands');
INSERT INTO countries VALUES('211','SZ','Swaziland');
INSERT INTO countries VALUES('212','SE','Sweden');
INSERT INTO countries VALUES('213','CH','Switzerland');
INSERT INTO countries VALUES('214','SY','Syrian Arab Republic');
INSERT INTO countries VALUES('215','TW','Taiwan');
INSERT INTO countries VALUES('216','TJ','Tajikistan');
INSERT INTO countries VALUES('217','TZ','Tanzania, United Republic of');
INSERT INTO countries VALUES('218','TH','Thailand');
INSERT INTO countries VALUES('219','TG','Togo');
INSERT INTO countries VALUES('220','TK','Tokelau');
INSERT INTO countries VALUES('221','TO','Tonga');
INSERT INTO countries VALUES('222','TT','Trinidad and Tobago');
INSERT INTO countries VALUES('223','TN','Tunisia');
INSERT INTO countries VALUES('224','TR','Turkey');
INSERT INTO countries VALUES('225','TM','Turkmenistan');
INSERT INTO countries VALUES('226','TC','Turks and Caicos Islands');
INSERT INTO countries VALUES('227','TV','Tuvalu');
INSERT INTO countries VALUES('228','UG','Uganda');
INSERT INTO countries VALUES('229','UA','Ukraine');
INSERT INTO countries VALUES('230','AE','United Arab Emirates');
INSERT INTO countries VALUES('231','GB','United Kingdom');
INSERT INTO countries VALUES('232','US','United States');
INSERT INTO countries VALUES('233','UM','United States minor outlying islands');
INSERT INTO countries VALUES('234','UY','Uruguay');
INSERT INTO countries VALUES('235','UZ','Uzbekistan');
INSERT INTO countries VALUES('236','VU','Vanuatu');
INSERT INTO countries VALUES('237','VA','Vatican City State');
INSERT INTO countries VALUES('238','VE','Venezuela');
INSERT INTO countries VALUES('239','VN','Vietnam');
INSERT INTO countries VALUES('240','VG','Virgin Islands (British)');
INSERT INTO countries VALUES('241','VI','Virgin Islands (U.S.)');
INSERT INTO countries VALUES('242','WF','Wallis and Futuna Islands');
INSERT INTO countries VALUES('243','EH','Western Sahara');
INSERT INTO countries VALUES('244','YE','Yemen');
INSERT INTO countries VALUES('245','ZM','Zambia');
INSERT INTO countries VALUES('246','ZW','Zimbabwe');



DROP TABLE IF EXISTS coupons;

CREATE TABLE `coupons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` tinyint(4) NOT NULL,
  `price` double NOT NULL,
  `times` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `used` int(191) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

INSERT INTO coupons VALUES('7','Covid19','0','19','2','0','1','2020-08-02','2020-12-31');



DROP TABLE IF EXISTS currencies;

CREATE TABLE `currencies` (
  `id` int(191) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sign` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` double NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

INSERT INTO currencies VALUES('1','Nepalese','Rs.','120','1');



DROP TABLE IF EXISTS email_templates;

CREATE TABLE `email_templates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_subject` mediumtext COLLATE utf8_unicode_ci,
  `email_body` longtext COLLATE utf8_unicode_ci,
  `status` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO email_templates VALUES('1','new_order','Your Order Placed Successfully','<p>Hello {customer_name},<br>Your Order Number is {order_number}<br>Your order has been placed successfully</p>','1');
INSERT INTO email_templates VALUES('2','new_registration','Welcome To Royal Commerce','<p>Hello {customer_name},<br>You have successfully registered to {website_title}, We wish you will have a wonderful experience using our service.</p><p>Thank You<br></p>','1');
INSERT INTO email_templates VALUES('3','vendor_accept','Your Vendor Account Activated','<p>Hello {customer_name},<br>Your Vendor Account Activated Successfully. Please Login to your account and build your own shop.</p><p>Thank You<br></p>','1');
INSERT INTO email_templates VALUES('4','subscription_warning','Your subscrption plan will end after five days','<p>Hello {customer_name},<br>Your subscription plan duration will end after five days. Please renew your plan otherwise all of your products will be deactivated.</p><p>Thank You<br></p>','1');
INSERT INTO email_templates VALUES('5','vendor_verification','Request for verification.','<p>Hello {customer_name},<br>You are requested verify your account. Please send us photo of your passport.</p><p>Thank You<br></p>','1');



DROP TABLE IF EXISTS faqs;

CREATE TABLE `faqs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO faqs VALUES('1','Right my front it wound cause fully','<span style=\"color: rgb(70, 85, 65); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">Nam enim risus, molestie et, porta ac, aliquam ac, risus. Quisque lobortis. Phasellus pellentesque purus in massa. Aenean in pede. Phasellus ac libero ac tellus pellentesque semper. Sed ac felis. Sed commodo, magna quis lacinia ornare, quam ante aliquam nisi, eu iaculis leo purus venenatis dui.</span><br>','1');
INSERT INTO faqs VALUES('3','Man particular insensible celebrated','<span style=\"color: rgb(70, 85, 65); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">Nam enim risus, molestie et, porta ac, aliquam ac, risus. Quisque lobortis. Phasellus pellentesque purus in massa. Aenean in pede. Phasellus ac libero ac tellus pellentesque semper. Sed ac felis. Sed commodo, magna quis lacinia ornare, quam ante aliquam nisi, eu iaculis leo purus venenatis dui.</span><br>','1');
INSERT INTO faqs VALUES('4','Civilly why how end viewing related','<span style=\"color: rgb(70, 85, 65); font-family: &quot;Open Sans&quot;, sans-serif; font-size: 16px;\">Nam enim risus, molestie et, porta ac, aliquam ac, risus. Quisque lobortis. Phasellus pellentesque purus in massa. Aenean in pede. Phasellus ac libero ac tellus pellentesque semper. Sed ac felis. Sed commodo, magna quis lacinia ornare, quam ante aliquam nisi, eu iaculis leo purus venenatis dui.</span><br>','0');
INSERT INTO faqs VALUES('5','Six started far placing saw respect','<span style=\"color: rgb(70, 85, 65); font-family: \" open=\"\" sans\",=\"\" sans-serif;=\"\" font-size:=\"\" 16px;\"=\"\">Nam enim risus, molestie et, porta ac, aliquam ac, risus. Quisque lobortis. Phasellus pellentesque purus in massa. Aenean in pede. Phasellus ac libero ac tellus pellentesque semper. Sed ac felis. Sed commodo, magna quis lacinia ornare, quam ante aliquam nisi, eu iaculis leo purus venenatis dui.</span><br>','0');
INSERT INTO faqs VALUES('6','She jointure goodness interest debat','<div style=\"text-align: center;\"><div style=\"text-align: center;\"><br></div></div><div style=\"text-align: center;\"><span style=\"color: rgb(70, 85, 65); font-family: \" open=\"\" sans\",=\"\" sans-serif;=\"\" font-size:=\"\" 16px;\"=\"\">Nam enim risus, molestie et, porta ac, aliquam ac, risus. Quisque lobortis. Phasellus pellentesque purus in massa. Aenean in pede. Phasellus ac libero ac tellus pellentesque semper. Sed ac felis. Sed commodo, magna quis lacinia ornare, quam ante aliquam nisi, eu iaculis leo purus venenatis dui.<br></span></div>','0');



DROP TABLE IF EXISTS favorite_sellers;

CREATE TABLE `favorite_sellers` (
  `id` int(191) NOT NULL AUTO_INCREMENT,
  `user_id` int(191) NOT NULL,
  `vendor_id` int(191) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

INSERT INTO favorite_sellers VALUES('1','22','13');



DROP TABLE IF EXISTS galleries;

CREATE TABLE `galleries` (
  `id` int(191) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` int(191) unsigned NOT NULL,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=229 DEFAULT CHARSET=latin1;

INSERT INTO galleries VALUES('6','93','156801646314-min.jpg');
INSERT INTO galleries VALUES('7','93','156801646315-min.jpg');
INSERT INTO galleries VALUES('8','93','156801646316-min.jpg');
INSERT INTO galleries VALUES('116','93','1568026950y7ihS4wE.jpg');



DROP TABLE IF EXISTS generalsettings;

CREATE TABLE `generalsettings` (
  `id` int(191) NOT NULL AUTO_INCREMENT,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `favicon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `header_email` text COLLATE utf8mb4_unicode_ci,
  `header_phone` text COLLATE utf8mb4_unicode_ci,
  `footer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `copyright` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `colors` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `loader` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_loader` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_talkto` tinyint(1) NOT NULL DEFAULT '1',
  `talkto` text COLLATE utf8mb4_unicode_ci,
  `is_language` tinyint(1) NOT NULL DEFAULT '1',
  `is_loader` tinyint(1) NOT NULL DEFAULT '1',
  `map_key` text COLLATE utf8mb4_unicode_ci,
  `is_disqus` tinyint(1) NOT NULL DEFAULT '0',
  `disqus` longtext COLLATE utf8mb4_unicode_ci,
  `is_contact` tinyint(1) NOT NULL DEFAULT '0',
  `is_faq` tinyint(1) NOT NULL DEFAULT '0',
  `guest_checkout` tinyint(1) NOT NULL DEFAULT '0',
  `stripe_check` tinyint(1) NOT NULL DEFAULT '0',
  `cod_check` tinyint(1) NOT NULL DEFAULT '0',
  `stripe_key` text COLLATE utf8mb4_unicode_ci,
  `stripe_secret` text COLLATE utf8mb4_unicode_ci,
  `currency_format` tinyint(1) NOT NULL DEFAULT '0',
  `withdraw_fee` double NOT NULL DEFAULT '0',
  `withdraw_charge` double NOT NULL DEFAULT '0',
  `tax` double NOT NULL DEFAULT '0',
  `shipping_cost` double NOT NULL DEFAULT '0',
  `smtp_host` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_port` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_user` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `smtp_pass` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `from_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_smtp` tinyint(1) NOT NULL DEFAULT '0',
  `is_comment` tinyint(1) NOT NULL DEFAULT '1',
  `is_currency` tinyint(1) NOT NULL DEFAULT '1',
  `add_cart` text COLLATE utf8mb4_unicode_ci,
  `out_stock` text COLLATE utf8mb4_unicode_ci,
  `add_wish` text COLLATE utf8mb4_unicode_ci,
  `already_wish` text COLLATE utf8mb4_unicode_ci,
  `wish_remove` text COLLATE utf8mb4_unicode_ci,
  `add_compare` text COLLATE utf8mb4_unicode_ci,
  `already_compare` text COLLATE utf8mb4_unicode_ci,
  `compare_remove` text COLLATE utf8mb4_unicode_ci,
  `color_change` text COLLATE utf8mb4_unicode_ci,
  `coupon_found` text COLLATE utf8mb4_unicode_ci,
  `no_coupon` text COLLATE utf8mb4_unicode_ci,
  `already_coupon` text COLLATE utf8mb4_unicode_ci,
  `order_title` text COLLATE utf8mb4_unicode_ci,
  `order_text` text COLLATE utf8mb4_unicode_ci,
  `is_affilate` tinyint(1) NOT NULL DEFAULT '1',
  `affilate_charge` int(100) NOT NULL DEFAULT '0',
  `affilate_banner` text COLLATE utf8mb4_unicode_ci,
  `already_cart` text COLLATE utf8mb4_unicode_ci,
  `fixed_commission` double NOT NULL DEFAULT '0',
  `percentage_commission` double NOT NULL DEFAULT '0',
  `multiple_shipping` tinyint(1) NOT NULL DEFAULT '0',
  `multiple_packaging` tinyint(4) NOT NULL DEFAULT '0',
  `vendor_ship_info` tinyint(1) NOT NULL DEFAULT '0',
  `reg_vendor` tinyint(1) NOT NULL DEFAULT '0',
  `cod_text` text COLLATE utf8mb4_unicode_ci,
  `paypal_text` text COLLATE utf8mb4_unicode_ci,
  `stripe_text` text COLLATE utf8mb4_unicode_ci,
  `header_color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `copyright_color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_admin_loader` tinyint(1) NOT NULL DEFAULT '0',
  `menu_color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `menu_hover_color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_home` tinyint(1) NOT NULL DEFAULT '0',
  `is_verification_email` tinyint(1) NOT NULL DEFAULT '0',
  `instamojo_key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instamojo_token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instamojo_text` text COLLATE utf8mb4_unicode_ci,
  `is_instamojo` tinyint(1) NOT NULL DEFAULT '0',
  `instamojo_sandbox` tinyint(1) NOT NULL DEFAULT '0',
  `is_paystack` tinyint(1) NOT NULL DEFAULT '0',
  `paystack_key` text COLLATE utf8mb4_unicode_ci,
  `paystack_email` text COLLATE utf8mb4_unicode_ci,
  `paystack_text` text COLLATE utf8mb4_unicode_ci,
  `wholesell` int(191) NOT NULL DEFAULT '0',
  `is_capcha` tinyint(1) NOT NULL DEFAULT '0',
  `error_banner` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_popup` tinyint(1) NOT NULL DEFAULT '0',
  `popup_title` text COLLATE utf8mb4_unicode_ci,
  `popup_text` text COLLATE utf8mb4_unicode_ci,
  `popup_background` text COLLATE utf8mb4_unicode_ci,
  `invoice_logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vendor_color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_secure` tinyint(1) NOT NULL DEFAULT '0',
  `is_report` tinyint(1) NOT NULL,
  `paypal_check` tinyint(1) DEFAULT '0',
  `paypal_business` text COLLATE utf8mb4_unicode_ci,
  `footer_logo` text COLLATE utf8mb4_unicode_ci,
  `email_encryption` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paytm_merchant` text COLLATE utf8mb4_unicode_ci,
  `paytm_secret` text COLLATE utf8mb4_unicode_ci,
  `paytm_website` text COLLATE utf8mb4_unicode_ci,
  `paytm_industry` text COLLATE utf8mb4_unicode_ci,
  `is_paytm` int(11) NOT NULL DEFAULT '1',
  `paytm_text` text COLLATE utf8mb4_unicode_ci,
  `paytm_mode` enum('sandbox','live') CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `is_molly` tinyint(1) NOT NULL DEFAULT '0',
  `molly_key` text COLLATE utf8mb4_unicode_ci,
  `molly_text` text COLLATE utf8mb4_unicode_ci,
  `is_razorpay` int(11) NOT NULL DEFAULT '1',
  `razorpay_key` text COLLATE utf8mb4_unicode_ci,
  `razorpay_secret` text COLLATE utf8mb4_unicode_ci,
  `razorpay_text` text COLLATE utf8mb4_unicode_ci,
  `show_stock` tinyint(1) NOT NULL DEFAULT '0',
  `is_maintain` tinyint(1) NOT NULL DEFAULT '0',
  `maintain_text` text COLLATE utf8mb4_unicode_ci,
  `is_sms` tinyint(1) NOT NULL DEFAULT '0',
  `sms_sender_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sms_username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sms_password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_customer_email` tinyint(1) NOT NULL DEFAULT '0',
  `create_customer_sms` tinyint(1) NOT NULL DEFAULT '0',
  `order_status_email` tinyint(1) NOT NULL DEFAULT '0',
  `order_status_sms` tinyint(1) NOT NULL DEFAULT '0',
  `new_product_email` tinyint(1) NOT NULL DEFAULT '0',
  `new_product_sms` tinyint(1) NOT NULL DEFAULT '0',
  `news_email` tinyint(1) NOT NULL DEFAULT '0',
  `news_sms` tinyint(1) NOT NULL DEFAULT '0',
  `order_email` tinyint(1) NOT NULL DEFAULT '0',
  `order_sms` tinyint(1) NOT NULL DEFAULT '0',
  `order_track_email` tinyint(1) NOT NULL DEFAULT '0',
  `order_track_sms` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO generalsettings VALUES('1','1596603215school.png','159620090616.png','Sports Ventures Pvt Ltd. Best Fashion Store in Kathmandu','smtp','0123 456789','Sports Ventures Pvt Ltd','© 2020 Sports Ventures Pvt Ltd. Powered by <a href=\"http://ininepal.com.np\" title=\"\" target=\"_blank\">INITIATIVE</a><br><br>','#ed1c24','1596117480SPORT-VENTURE-GIF.gif','1596117483SPORT-VENTURE-GIF.gif','0','<script type=\"text/javascript\">
var Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();
(function(){
var s1=document.createElement(\"script\"),s0=document.getElementsByTagName(\"script\")[0];
s1.async=true;
s1.src=\'https://embed.tawk.to/5bc2019c61d0b77092512d03/default\';
s1.charset=\'UTF-8\';
s1.setAttribute(\'crossorigin\',\'*\');
s0.parentNode.insertBefore(s1,s0);
})();
</script>','1','1','AIzaSyB1GpE4qeoJ__70UZxvX9CTMUTZRZNHcu8','0','<div id=\"disqus_thread\">         
    <script>
    /**
    *  RECOMMENDED CONFIGURATION VARIABLES: EDIT AND UNCOMMENT THE SECTION BELOW TO INSERT DYNAMIC VALUES FROM YOUR PLATFORM OR CMS.
    *  LEARN WHY DEFINING THESE VARIABLES IS IMPORTANT: https://disqus.com/admin/universalcode/#configuration-variables*/
    /*
    var disqus_config = function () {
    this.page.url = PAGE_URL;  // Replace PAGE_URL with your page\'s canonical URL variable
    this.page.identifier = PAGE_IDENTIFIER; // Replace PAGE_IDENTIFIER with your page\'s unique identifier variable
    };
    */
    (function() { // DON\'T EDIT BELOW THIS LINE
    var d = document, s = d.createElement(\'script\');
    s.src = \'https://junnun.disqus.com/embed.js\';
    s.setAttribute(\'data-timestamp\', +new Date());
    (d.head || d.body).appendChild(s);
    })();
    </script>
    <noscript>Please enable JavaScript to view the <a href=\"https://disqus.com/?ref_noscript\">comments powered by Disqus.</a></noscript>
    </div>','1','1','0','0','1','pk_test_UnU1Coi1p5qFGwtpjZMRMgJM','sk_test_QQcg3vGsKRPlW6T3dXcNJsor','0','5','5','0','5','smtp.gmail.com','465','hamrosoftware@gmail.com','nepal@123','sportsventures@gmail.com','Sports Ventures','1','1','1','Successfully Added To Cart','Out Of Stock','Add To Wishlist','Already Added To Wishlist','Successfully Removed From The Wishlist','Successfully Added To Compare','Already Added To Compare','Successfully Removed From The Compare','Successfully Changed The Color','Coupon Found','No Coupon Found','Coupon Already Applied','THANK YOU FOR YOUR PURCHASE.','We\'ll email you an order confirmation with details and tracking info.','0','8','15587771131554048228onepiece.jpeg','Already Added To Cart','5','5','1','1','1','1','Pay with cash upon delivery.','Pay via your Khalti account.','Pay via your Esewa Card.','#ffffff','#0060ae','#02020c','1','#ff5500','#02020c','0','0','test_172371aa837ae5cad6047dc3052','test_4ac5a785e25fc596b67dbc5c267','Pay via your Instamojo account.','0','1','0','pk_test_162a56d42131cbb01932ed0d2c48f9cb99d8e8e2','junnuns@gmail.com','Pay via your Paystack account.','6','1','1566878455404.png','1','SUBSCRIBE US','Subscribe Us for Special Discount!!!','1596182383pop1.jpg','1596199039top small banner(1280x600).png','1596184308ICON.png','#de9595','0','1','0','shaon143-facilitator-1@gmail.com','1596199023top small banner(1280x600).png','ssl','tkogux49985047638244','LhNGUUKE9xCQ9xY8','WEBSTAGING','Retail','0','Pay via your Paytm account.','sandbox','0','test_5HcWVs9qc5pzy36H9Tu9mwAyats33J','Pay with Molly Payment.','0','rzp_test_xDH74d48cwl8DF','cr0H1BiQ20hVzhpHfHuNbGri','Pay via your Razorpay account.','0','0','<div style=\"text-align: center;\"><font size=\"5\"><br></font></div><h1 style=\"text-align: center;\"><font size=\"6\">UNDER MAINTENANCE</font></h1>','1','SMS','iniclient','nepal123','1','1','1','1','0','0','0','0','1','1','0','0');



DROP TABLE IF EXISTS languages;

CREATE TABLE `languages` (
  `id` int(191) NOT NULL AUTO_INCREMENT,
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  `language` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

INSERT INTO languages VALUES('1','1','English','1579926860LzpDa1Y7.json');



DROP TABLE IF EXISTS messages;

CREATE TABLE `messages` (
  `id` int(191) NOT NULL AUTO_INCREMENT,
  `conversation_id` int(191) NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sent_user` int(191) DEFAULT NULL,
  `recieved_user` int(191) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

INSERT INTO messages VALUES('1','1','i am your regular customer','30','','2020-08-04 16:52:16','2020-08-04 16:52:16');
INSERT INTO messages VALUES('2','1','hello','','29','2020-08-05 07:24:35','2020-08-05 07:24:35');



DROP TABLE IF EXISTS migrations;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO migrations VALUES('2','2020_08_04_113316_add_sms_setting_columns_to_generalsettings_table','1');
INSERT INTO migrations VALUES('3','2020_08_05_072643_add_alert_columns_to_generalsettings_table','2');



DROP TABLE IF EXISTS notifications;

CREATE TABLE `notifications` (
  `id` int(191) NOT NULL AUTO_INCREMENT,
  `order_id` int(191) unsigned DEFAULT NULL,
  `user_id` int(191) DEFAULT NULL,
  `vendor_id` int(191) DEFAULT NULL,
  `product_id` int(191) DEFAULT NULL,
  `conversation_id` int(191) DEFAULT NULL,
  `is_read` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;




DROP TABLE IF EXISTS order_tracks;

CREATE TABLE `order_tracks` (
  `id` int(191) NOT NULL AUTO_INCREMENT,
  `order_id` int(191) NOT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

INSERT INTO order_tracks VALUES('1','1','Pending','You have successfully placed your order.','2020-07-31 06:54:12','2020-07-31 06:54:12');
INSERT INTO order_tracks VALUES('2','1','Order forwarded to the concerned department','Your order has been received and forwards to the concerned department.','2020-07-31 07:00:27','2020-07-31 07:00:27');



DROP TABLE IF EXISTS orders;

CREATE TABLE `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(191) DEFAULT NULL,
  `cart` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pickup_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `totalQty` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pay_amount` float NOT NULL,
  `txnid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `charge_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_number` varchar(255) NOT NULL,
  `payment_status` varchar(255) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `customer_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `customer_country` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_phone` varchar(255) NOT NULL,
  `customer_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_city` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `customer_zip` varchar(255) DEFAULT NULL,
  `shipping_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_country` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_city` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `shipping_zip` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `order_note` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `coupon_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupon_discount` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('pending','processing','completed','declined','on delivery') NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `affilate_user` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `affilate_charge` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_sign` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_value` double NOT NULL,
  `shipping_cost` double NOT NULL,
  `packing_cost` double NOT NULL DEFAULT '0',
  `tax` int(191) NOT NULL,
  `dp` tinyint(1) NOT NULL DEFAULT '0',
  `pay_id` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `vendor_shipping_id` int(191) NOT NULL DEFAULT '0',
  `vendor_packing_id` int(191) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

INSERT INTO orders VALUES('1','','BZh91AY&SYU]ïe\0_PXø;oþ¿ïÿúPàºÐÄ\0ÈG0À	Âi\0É¦O)êÈÐÍM¢y#CRJ§¨Ah\0\0\0\09À&\0L&L\0\0&M4$HL0	&MÈÐÄjMIõñ:ð}³ã0ICË¤aðÕ#IòúéÃ±E4§æêcDbÅÓÊ1+UO¯XÃ5ÕHÆ«1­Ô 4|¨óÕôm¶ð,_Ä§\0@êÈ ò7G´ë5bÌÒ1p$Éâe
G¬ ñ$)Ôð&,%µ1+³ÂtÂ.rq#Q¬´Äð=e¼ÈHABDÌÌÒHF`Óhbã<8Ê¦,Ñ¤Ä/ ÉpV3êvÉN£Ç À*×nÝ¦¢èÀÒ¦TWÊØù$RÐHÂ1Uò;D.+Vë)Jw(Q@¢)I¬Ff2á6Bbê\"ìrQM\\28àç9$1(Ád9§)i1+{aY¤ÙxÍb³L©1Ã]`)Ju8¹LÅP¯ Á0§\0åÔBÂ»J~«æ¹/n´¥clÑÀ/áAf%´a	¬RXb\"dÓ2B¥
-Æë{nÞÅ@Âáh©8Ü)5¦åÊH¬cmäonn0nÆöû5w	Ê5I`¶PÚÀöï7Öµvm±,gKQ¼áòDAdF;ç_¤òÀ£ØIÐ`ö?öóí¢ßrW*ðøëÌxeÌ³êc´©¤È/Ä@8Iô8ÇPÇ¤öl×)Îñì?áÐ¦Ç÷uå¢TQ t2a¬Ä¡µhø`ÅCÝÄmû#´±¤Ãhó¡ÒªW0hlXÀÖÞ.;ìóQ+à¼4Å¼>/¸d·tÃ«®îS½Y\\LeÅ¶jBµO!é¬À¸i
D¤8+,HJñÄ¯#ÔAyÈg@ð|ècªy®á¸þ±­FÒgÀê=RSæeÀÐîf¥ÎD¡*NñÃÀYr^ ÎÃÑwK®Ç11ÇzLë;».%Ä3l°í/ ìÄ$IM­VDÆz4¾¡`Ò¹r5p/¦ ^è áÈço aðHÀËc7Y#¹C²¤È!ðã¡Æ8·,p ¤¼B^Ãèj >¦Ijé[Qeh9ýIu+îg¼½ýúãGAÀ^cùHMGÜcúÐª¹¥Úi¤hÖ°äl6Ï\\!ûX¤))aÈPv*È ÙTéÑßÊî·Éø£ÚÂ²1`f!bWi \\	t7¯ÊébkÎ^¨êñ\\b(@A	\"òdBÞ³÷¢nÇ+åRÖM#%q¶Åa0(^¯,G½&F¹¯Ft÷ñ-\'4·%55[Ñz~²\0ùÕã{Ú1/ jÓ_i8¢o£¾~h(rø»)Âªï{(','Cash On Delivery','shipto','Azampur','1','130','','','2UB01596178450','Pending','uday.ktm@gmail.com','Uday','Nepal','9851098510','lalitpur','Lalitpur','44600','','','','','','','','','','','pending','2020-07-31 06:54:10','2020-07-31 06:54:10','','','Rs.','120','0','0','0','0','','0','0');
INSERT INTO orders VALUES('2','29','BZh91AY&SY»Ö\0¹_@\0Psø?Kõ¿ÿÿúPÛXÃ\0
sLL\0&\0&\00\0 H©ú Ð\0È\0i\0RJ\0iê \0\0\0\0iÀÀ\0&\0` @I¦@§£I4Ðm©´Å($1CÒ\"}{RQ.,Dð(zEûAÔteË GTçCè-,8Ç8£û».é`Ý,#kÒ¦GÄªZÅïLÌ¶
h¥R¦°A¶ÛÌcóî`í`áÝ²ç²Oj\0Çq¼&^^^0ÔA¬¬â[¼¸K$G2NCNpA8èõHBGxÁXMXã3T`!q9ÒILiÛöÄé:PÐ¨01À&Ð6DVUT$XjAQ¤©Y©±±Rd¨A¥Ýé$pHT&f:(GTAJzdÀã
*ï9à0ÀÆ0¦ÇSAÍ*Ì[k¼ÓpYi\"zZ¤#$b¡ÝÂ+\"U:Ft$¬«Yª*sKè¿µâ) M lÐZ¨(V¨¦-(º)EMPd\"7ºÄ
@P åîòü!2ÈIf!Ô\\Y0L)ÒÚìæÎõZQ«®ÔP×V)S.ÅËªIy	tÎ¦Äç9ºÓBº3Æ±m4aÊèæ<$Ç¢
=B\"9þnSÉµlYü#_1Þ±×DÇ*HJ¤¥[FbgØ×/ ÏÏÅ®Ñ#Có<ÚóÌò5©¡ï^úR6ÃÐÏ°Ï¯æPÀ©ùgQX13.Ä<¨pEã²W°i°:Ös9ÉeQ-§ò\\`jÓÐ@Cî.Íðìí·	Úû(1.&\\U±\\6ä+¬¬yF£aA¦`)àºYã;^\'qä1ÇãC.¹æ®ýü5sZq0Ð¹×Qã\"DÎlMJÅyÚ0ôè,ø/S ÚHM®56¤¡D¬N|ªx\"P3³qciÌÈþgPL£Z²è_[ÑAp¦j	ù^¬lÓ{¬	òævær¤¤w
d¬ÊAa2ÔDH}RÇãRQ- =°¡#§ëY T
%Þ)ùCR[;EÅ2Ô¹«ê4ËÕÿ.¸ífgA¨ÞaùÈö6Êy5JmfQxÎIdW¬Ù=p~­,R0Àd(9+H ¾¨È5³80ãì¸^XàyÒ #2$Y\0XIL2,^`pÇHE:ÒÞ*/¸­FfV	\"òdBÜµAqÜà(¸àg|°Å÷¦#5S	mÕárÈ{Bar1kÜ«uðà]G±-Á	MMEäF½G»a\0~æIðhF£\"CXÑXdúqB÷ ïïö¢())§ø»)ÂÞ°','Paypal','shipto','Civil Mall, Kathmandu','1','50','','','ZOdR1596632778','Pending','mee.prakash25@gmail.com','Prakash Poudel','Nepal','9843650517','Balkot-6','Lalitpur','44600','','','','','','','','','','','pending','2020-08-05 13:06:18','2020-08-05 13:06:18','','','Rs.','120','0','0','0','1','','0','0');



DROP TABLE IF EXISTS packages;

CREATE TABLE `packages` (
  `id` int(191) NOT NULL AUTO_INCREMENT,
  `user_id` int(191) NOT NULL DEFAULT '0',
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `subtitle` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `price` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

INSERT INTO packages VALUES('1','0','Default Packaging','Default packaging by store','0');
INSERT INTO packages VALUES('2','0','Gift Packaging','Exclusive Gift Packaging','0.83333333333333');



DROP TABLE IF EXISTS pages;

CREATE TABLE `pages` (
  `id` int(191) NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_tag` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `header` tinyint(1) NOT NULL DEFAULT '0',
  `footer` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

INSERT INTO pages VALUES('1','About Us','about','<div helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><h2><font size=\"6\">Title number 1</font><br></h2><p><span style=\"font-weight: 700;\">Lorem Ipsum</span>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p></div><div helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><h2><font size=\"6\">Title number 2</font><br></h2><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p></div><br helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><div helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><h2><font size=\"6\">Title number 3</font><br></h2><p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p></div><h2 helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-weight:=\"\" 700;=\"\" line-height:=\"\" 1.1;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);=\"\" margin:=\"\" 0px=\"\" 15px;=\"\" font-size:=\"\" 30px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\" style=\"font-family: \" 51);\"=\"\"><font size=\"6\">Title number 9</font><br></h2><p helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>','','','1','0');
INSERT INTO pages VALUES('2','Privacy & Policy','privacy','<div helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><h2><img src=\"https://i.imgur.com/BobQuyA.jpg\" width=\"591\"></h2><h2><font size=\"6\">Title number 1</font></h2><p><span style=\"font-weight: 700;\">Lorem Ipsum</span>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p></div><div helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><h2><font size=\"6\">Title number 2</font><br></h2><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p></div><br helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><div helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><h2><font size=\"6\">Title number 3</font><br></h2><p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p></div><h2 helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-weight:=\"\" 700;=\"\" line-height:=\"\" 1.1;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);=\"\" margin:=\"\" 0px=\"\" 15px;=\"\" font-size:=\"\" 30px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\" 51);\"=\"\" style=\"font-family: \"><font size=\"6\">Title number 9</font><br></h2><p helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>','test,test1,test2,test3','Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.','0','1');
INSERT INTO pages VALUES('3','Terms & Condition','terms','<div helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><h2><font size=\"6\">Title number 1</font><br></h2><p><span style=\"font-weight: 700;\">Lorem Ipsum</span>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p></div><div helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><h2><font size=\"6\">Title number 2</font><br></h2><p>It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).</p></div><br helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><div helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\"><h2><font size=\"6\">Title number 3</font><br></h2><p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p></div><h2 helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-weight:=\"\" 700;=\"\" line-height:=\"\" 1.1;=\"\" color:=\"\" rgb(51,=\"\" 51,=\"\" 51);=\"\" margin:=\"\" 0px=\"\" 15px;=\"\" font-size:=\"\" 30px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\" 51);\"=\"\" style=\"font-family: \"><font size=\"6\">Title number 9</font><br></h2><p helvetica=\"\" neue\",=\"\" helvetica,=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;=\"\" font-style:=\"\" normal;=\"\" font-variant-ligatures:=\"\" font-variant-caps:=\"\" font-weight:=\"\" 400;=\"\" letter-spacing:=\"\" orphans:=\"\" 2;=\"\" text-align:=\"\" start;=\"\" text-indent:=\"\" 0px;=\"\" text-transform:=\"\" none;=\"\" white-space:=\"\" widows:=\"\" word-spacing:=\"\" -webkit-text-stroke-width:=\"\" background-color:=\"\" rgb(255,=\"\" 255,=\"\" 255);=\"\" text-decoration-style:=\"\" initial;=\"\" text-decoration-color:=\"\" initial;\"=\"\">There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.</p>','t1,t2,t3,t4','There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ipsum which looks reasonable. The generated Lorem Ipsum is therefore always free from repetition, injected humour, or non-characteristic words etc.','0','1');



DROP TABLE IF EXISTS pagesettings;

CREATE TABLE `pagesettings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `contact_success` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_title` text COLLATE utf8mb4_unicode_ci,
  `contact_text` text COLLATE utf8mb4_unicode_ci,
  `side_title` text COLLATE utf8mb4_unicode_ci,
  `side_text` text COLLATE utf8mb4_unicode_ci,
  `street` text COLLATE utf8mb4_unicode_ci,
  `phone` text COLLATE utf8mb4_unicode_ci,
  `fax` text COLLATE utf8mb4_unicode_ci,
  `email` text COLLATE utf8mb4_unicode_ci,
  `site` text COLLATE utf8mb4_unicode_ci,
  `slider` tinyint(1) NOT NULL DEFAULT '1',
  `service` tinyint(1) NOT NULL DEFAULT '1',
  `featured` tinyint(1) NOT NULL DEFAULT '1',
  `small_banner` tinyint(1) NOT NULL DEFAULT '1',
  `best` tinyint(1) NOT NULL DEFAULT '1',
  `top_rated` tinyint(1) NOT NULL DEFAULT '1',
  `large_banner` tinyint(1) NOT NULL DEFAULT '1',
  `big` tinyint(1) NOT NULL DEFAULT '1',
  `hot_sale` tinyint(1) NOT NULL DEFAULT '1',
  `partners` tinyint(1) NOT NULL DEFAULT '0',
  `review_blog` tinyint(1) NOT NULL DEFAULT '1',
  `best_seller_banner` text COLLATE utf8mb4_unicode_ci,
  `best_seller_banner_link` text COLLATE utf8mb4_unicode_ci,
  `big_save_banner` text COLLATE utf8mb4_unicode_ci,
  `big_save_banner_link` text COLLATE utf8mb4_unicode_ci,
  `bottom_small` tinyint(1) NOT NULL DEFAULT '0',
  `flash_deal` tinyint(1) NOT NULL DEFAULT '0',
  `best_seller_banner1` text COLLATE utf8mb4_unicode_ci,
  `best_seller_banner_link1` text COLLATE utf8mb4_unicode_ci,
  `big_save_banner1` text COLLATE utf8mb4_unicode_ci,
  `big_save_banner_link1` text COLLATE utf8mb4_unicode_ci,
  `featured_category` int(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO pagesettings VALUES('1','Success! Thanks for contacting us, we will get back to you shortly.','info@sportsventures.com.np','<h4 class=\"subtitle\" style=\"margin-bottom: 6px; font-weight: 600; line-height: 28px; font-size: 28px; text-transform: uppercase;\">WE\'D LOVE TO</h4><h2 class=\"title\" style=\"margin-bottom: 13px;font-weight: 600;line-height: 50px;font-size: 40px;color: #0f78f2;text-transform: uppercase;\">HEAR FROM YOU</h2>','<span style=\"color: rgb(119, 119, 119);\">Send us a message and we\' ll respond as soon as possible</span><br>','<h4 class=\"title\" style=\"margin-bottom: 10px; font-weight: 600; line-height: 28px; font-size: 28px;\">Let\'s Connect</h4>','<span style=\"color: rgb(51, 51, 51);\">Get in touch with us</span>','Civil Mall, Kathmandu','015546763','015546763','info@sportsventures.com.np','https://sportsventures.com.np','1','1','1','1','1','1','1','1','1','1','0','1596781938gif-english.gif','http://google.com','1565150264banner3.jpg','http://google.com','1','1','1568889138banner2.jpg','http://google.com','1565150264banner4.jpg','http://google.com','1');



DROP TABLE IF EXISTS partners;

CREATE TABLE `partners` (
  `id` int(191) NOT NULL AUTO_INCREMENT,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

INSERT INTO partners VALUES('1','1563165366brand-1.png','https://www.google.com/');
INSERT INTO partners VALUES('2','1563165383brand-2.png','https://www.google.com/');
INSERT INTO partners VALUES('3','1563165393brand-3.png','https://www.google.com/');
INSERT INTO partners VALUES('4','1563165400brand-1.png','');
INSERT INTO partners VALUES('5','1563165411brand-2.png','');
INSERT INTO partners VALUES('6','1563165444brand-3.png','');



DROP TABLE IF EXISTS payment_gateways;

CREATE TABLE `payment_gateways` (
  `id` int(191) NOT NULL AUTO_INCREMENT,
  `subtitle` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint(10) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=latin1;

INSERT INTO payment_gateways VALUES('46','Pay via your Mobile Money.','Mobile Money','<font size=\"3\"><b style=\"\">Mobile Money</b><b>&nbsp;No: 6528068515</b><br><br></font>','1');



DROP TABLE IF EXISTS pickups;

CREATE TABLE `pickups` (
  `id` int(191) unsigned NOT NULL AUTO_INCREMENT,
  `location` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

INSERT INTO pickups VALUES('7','Civil Mall, Kathmandu');



DROP TABLE IF EXISTS product_clicks;

CREATE TABLE `product_clicks` (
  `id` int(191) NOT NULL AUTO_INCREMENT,
  `product_id` int(191) NOT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

INSERT INTO product_clicks VALUES('16','93','2020-08-03');
INSERT INTO product_clicks VALUES('17','166','2020-08-05');
INSERT INTO product_clicks VALUES('18','166','2020-08-05');
INSERT INTO product_clicks VALUES('19','181','2020-08-07');



DROP TABLE IF EXISTS products;

CREATE TABLE `products` (
  `id` int(191) unsigned NOT NULL AUTO_INCREMENT,
  `sku` varchar(255) DEFAULT NULL,
  `product_type` enum('normal','affiliate') NOT NULL DEFAULT 'normal',
  `affiliate_link` text,
  `user_id` int(191) NOT NULL DEFAULT '0',
  `category_id` int(191) unsigned NOT NULL,
  `subcategory_id` int(191) unsigned DEFAULT NULL,
  `childcategory_id` int(191) unsigned DEFAULT NULL,
  `attributes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size_qty` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size_price` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `price` double NOT NULL,
  `previous_price` double DEFAULT NULL,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `stock` int(191) DEFAULT NULL,
  `policy` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint(2) unsigned NOT NULL DEFAULT '1',
  `views` int(191) unsigned NOT NULL DEFAULT '0',
  `tags` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `features` text,
  `colors` text,
  `product_condition` tinyint(1) NOT NULL DEFAULT '0',
  `ship` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_meta` tinyint(1) NOT NULL DEFAULT '0',
  `meta_tag` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `youtube` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` enum('Physical','Digital','License') NOT NULL,
  `license` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `license_qty` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `link` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `platform` varchar(255) DEFAULT NULL,
  `region` varchar(255) DEFAULT NULL,
  `licence_type` varchar(255) DEFAULT NULL,
  `measure` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `best` tinyint(10) unsigned NOT NULL DEFAULT '0',
  `top` tinyint(10) unsigned NOT NULL DEFAULT '0',
  `hot` tinyint(10) unsigned NOT NULL DEFAULT '0',
  `latest` tinyint(10) unsigned NOT NULL DEFAULT '0',
  `big` tinyint(10) unsigned NOT NULL DEFAULT '0',
  `trending` tinyint(1) NOT NULL DEFAULT '0',
  `sale` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_discount` tinyint(1) NOT NULL DEFAULT '0',
  `discount_date` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `whole_sell_qty` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `whole_sell_discount` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `is_catalog` tinyint(1) NOT NULL DEFAULT '0',
  `catalog_id` int(191) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  FULLTEXT KEY `name` (`name`),
  FULLTEXT KEY `attributes` (`attributes`)
) ENGINE=InnoDB AUTO_INCREMENT=182 DEFAULT CHARSET=latin1;

INSERT INTO products VALUES('93','','normal','','0','11','','','','Digital Product Title will Be Here by Name 1','digital-product-title-will-be-here-by-name-1-','1596557136TxzxVj7o.png','1596557137dd2qjTYP.jpg','1568016463minimal (16).zip','','','','','50','75','<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" font-size:=\"\" 14px;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>','','<p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.</p><p style=\"margin-right: 0px; margin-bottom: 15px; margin-left: 0px; font-size: 14px; color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" padding:=\"\" 0px;=\"\" text-align:=\"\" justify;\"=\"\">The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>','1','40','book,ebook,asdasd','','','0','','0','book,ebook','These are ebook from Demo store.','https://www.youtube.com/watch?v=HxNydN5tScI','Digital','','','','','','','','0','1','0','0','0','0','0','0','2019-09-09 12:52:43','2020-08-04 16:06:19','0','','','','0','0');
INSERT INTO products VALUES('166','U1W3579L5k','normal','','0','4','2','1','{\"warranty_type\":{\"values\":[\"No warranty\",\"Non-local warranty\"],\"prices\":[\"0\",\"30\"],\"details_status\":1},\"brand\":{\"values\":[\"Oppo\",\"Infinix\"],\"prices\":[\"20\",\"40\"],\"details_status\":1},\"ram\":{\"values\":[\"3 GB\"],\"prices\":[\"0\"],\"details_status\":0},\"color_family\":{\"values\":[\"Black\",\"White\",\"Brown\"],\"prices\":[\"0\",\"20\",\"0\"],\"details_status\":1},\"display_size\":{\"values\":[\"40\",\"21\"],\"prices\":[\"12\",\"20\"],\"details_status\":1}}','Zain - Digital Agency and Startupuuuu','zain-digital-agency-and-startupuuuu-u1w3579l5k','15708736755B0OtgVI.png','1570873675mdibaSBp.jpg','','','','','','300','436','shsdh','346','sdhds','1','5','','','','0','','0','','','https://www.youtube.com/watch?v=MIJBxqzazeM','Physical','','','','','','','','0','0','0','0','0','0','0','0','2019-10-12 09:32:55','2020-08-05 18:11:45','0','','','','0','0');
INSERT INTO products VALUES('181','WRL2503SMd','normal','','0','4','2','1','{\"color_family\":{\"values\":[\"Black\",\"White\"],\"prices\":[\"0\",\"0\"],\"details_status\":1},\"display_size\":{\"values\":[\"40\",\"22\"],\"prices\":[\"0\",\"0\"],\"details_status\":1}}','Product','product-wrl2503smd','1596802578U9uGJefq.png','1596802578ccfdwwsH.jpg','','','','','','83.333333333333','0','Test Product','5','Test Product','1','1','','','','0','','0','','','','Physical','','','','','','','','0','0','0','0','0','0','0','0','2020-08-07 12:16:18','2020-08-07 12:16:39','0','','','','0','0');



DROP TABLE IF EXISTS ratings;

CREATE TABLE `ratings` (
  `id` int(191) NOT NULL AUTO_INCREMENT,
  `user_id` int(191) NOT NULL,
  `product_id` int(191) NOT NULL,
  `review` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `rating` tinyint(2) NOT NULL,
  `review_date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




DROP TABLE IF EXISTS replies;

CREATE TABLE `replies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(191) unsigned NOT NULL,
  `comment_id` int(191) unsigned NOT NULL,
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




DROP TABLE IF EXISTS reports;

CREATE TABLE `reports` (
  `id` int(191) NOT NULL AUTO_INCREMENT,
  `user_id` int(191) NOT NULL,
  `product_id` int(192) NOT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




DROP TABLE IF EXISTS reviews;

CREATE TABLE `reviews` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO reviews VALUES('4','1557343012img.jpg','Jhon Smith','CEO & Founder','Lorem ipsum dolor sit amet, consectetur elitad adipiscing Cras non placerat mi.');
INSERT INTO reviews VALUES('5','1557343018img.jpg','Jhon Smith','CEO & Founder','Lorem ipsum dolor sit amet, consectetur elitad adipiscing Cras non placerat mi.');
INSERT INTO reviews VALUES('6','1557343024img.jpg','Jhon Smith','CEO & Founder','Lorem ipsum dolor sit amet, consectetur elitad adipiscing Cras non placerat mi.');



DROP TABLE IF EXISTS roles;

CREATE TABLE `roles` (
  `id` int(191) NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `section` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

INSERT INTO roles VALUES('16','Manager','orders , products , affilate_products , customers , vendors , vendor_subscription_plans , categories , bulk_product_upload , product_discussion , set_coupons , blog , messages , general_settings , home_page_settings , menu_page_settings , emails_settings , payment_settings , social_settings , language_settings , seo_tools , subscribers , sms_settings');
INSERT INTO roles VALUES('17','Moderator','orders , products , customers , vendors , categories , blog , messages , home_page_settings , payment_settings , social_settings , language_settings , seo_tools , subscribers');
INSERT INTO roles VALUES('18','Staff','orders , products , vendors , vendor_subscription_plans , categories , blog , home_page_settings , menu_page_settings , language_settings , seo_tools , subscribers');



DROP TABLE IF EXISTS seotools;

CREATE TABLE `seotools` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `google_analytics` text COLLATE utf8mb4_unicode_ci,
  `meta_keys` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO seotools VALUES('1','<script>//Google Analytics Scriptfffffffffffffffffffffffssssfffffs</script>','Genius,Ocean,Sea,Etc,Genius,Ocean,SeaGenius,Ocean,Sea,Etc,Genius,Ocean,SeaGenius,Ocean,Sea,Etc,Genius,Ocean,Sea');



DROP TABLE IF EXISTS services;

CREATE TABLE `services` (
  `id` int(191) NOT NULL AUTO_INCREMENT,
  `user_id` int(191) NOT NULL DEFAULT '0',
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

INSERT INTO services VALUES('2','0','FREE SHIPPING','Free Shipping All Order','1561348133service1.png');
INSERT INTO services VALUES('3','0','PAYMENT METHOD','Secure Payment','1561348138service2.png');
INSERT INTO services VALUES('4','0','30 DAY RETURNS','30-Day Return Policy','1561348143service3.png');
INSERT INTO services VALUES('5','0','HELP CENTER','24/7 Support System','1561348147service4.png');



DROP TABLE IF EXISTS shippings;

CREATE TABLE `shippings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(191) NOT NULL DEFAULT '0',
  `title` text,
  `subtitle` text,
  `price` double NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

INSERT INTO shippings VALUES('1','0','Free Shipping','2-3 days','0');
INSERT INTO shippings VALUES('2','0','Express Shipping','12 Hours','0.83333333333333');



DROP TABLE IF EXISTS sliders;

CREATE TABLE `sliders` (
  `id` int(191) unsigned NOT NULL AUTO_INCREMENT,
  `subtitle_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `subtitle_size` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle_color` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle_anime` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `title_size` varchar(50) DEFAULT NULL,
  `title_color` varchar(50) DEFAULT NULL,
  `title_anime` varchar(50) DEFAULT NULL,
  `details_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `details_size` varchar(50) DEFAULT NULL,
  `details_color` varchar(50) DEFAULT NULL,
  `details_anime` varchar(50) DEFAULT NULL,
  `photo` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

INSERT INTO sliders VALUES('8','World Fashion','24','#ffffff','slideInUp','Get Up to 40% Off','60','#ffffff','slideInDown','Highlight your personality  and look with these fabulous and exquisite fashion.','16','#ffffff','slideInRight','1564224870012.jpg','slide-three','https://www.google.com/');
INSERT INTO sliders VALUES('9','World Fashion','24','#ffffff','slideInUp','Get Up to 40% Off','60','#ffffff','slideInDown','Highlight your personality  and look with these fabulous and exquisite fashion.','16','#ffffff','slideInDown','1564224753007.jpg','slide-one','https://www.google.com/');
INSERT INTO sliders VALUES('10','World Fashion','24','#c32d2d','slideInUp','Get Up to 40% Off','60','#bc2727','slideInDown','Highlight your personality  and look with these fabulous and exquisite fashion.','16','#c51d1d','slideInLeft','156422490902.jpg','slide-one','https://www.google.com/');



DROP TABLE IF EXISTS social_providers;

CREATE TABLE `social_providers` (
  `id` int(191) NOT NULL AUTO_INCREMENT,
  `user_id` int(191) NOT NULL,
  `provider_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




DROP TABLE IF EXISTS socialsettings;

CREATE TABLE `socialsettings` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `facebook` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gplus` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `twitter` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `linkedin` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dribble` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `f_status` tinyint(4) NOT NULL DEFAULT '1',
  `g_status` tinyint(4) NOT NULL DEFAULT '1',
  `t_status` tinyint(4) NOT NULL DEFAULT '1',
  `l_status` tinyint(4) NOT NULL DEFAULT '1',
  `d_status` tinyint(4) NOT NULL DEFAULT '1',
  `f_check` tinyint(10) DEFAULT NULL,
  `g_check` tinyint(10) DEFAULT NULL,
  `fclient_id` text COLLATE utf8mb4_unicode_ci,
  `fclient_secret` text COLLATE utf8mb4_unicode_ci,
  `fredirect` text COLLATE utf8mb4_unicode_ci,
  `gclient_id` text COLLATE utf8mb4_unicode_ci,
  `gclient_secret` text COLLATE utf8mb4_unicode_ci,
  `gredirect` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO socialsettings VALUES('1','https://www.facebook.com/','https://plus.google.com/','https://twitter.com/','https://www.linkedin.com/','https://dribbble.com/','1','1','1','1','0','1','1','503140663460329','f66cd670ec43d14209a2728af26dcc43','https://localhost/geniuscart1.7.4/auth/facebook/callback','904681031719-sh1aolu42k7l93ik0bkiddcboghbpcfi.apps.googleusercontent.com','yGBWmUpPtn5yWhDAsXnswEX3','http://localhost/geniuscart1.7.4/auth/google/callback');



DROP TABLE IF EXISTS subcategories;

CREATE TABLE `subcategories` (
  `id` int(191) NOT NULL AUTO_INCREMENT,
  `category_id` int(191) NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

INSERT INTO subcategories VALUES('2','4','TELEVISION','television','1');
INSERT INTO subcategories VALUES('3','4','REFRIGERATOR','refrigerator','1');
INSERT INTO subcategories VALUES('4','4','WASHING MACHINE','washing-machine','1');
INSERT INTO subcategories VALUES('5','4','AIR CONDITIONERS','air-conditioners','1');
INSERT INTO subcategories VALUES('6','5','ACCESSORIES','accessories','1');
INSERT INTO subcategories VALUES('7','5','BAGS','bags','1');
INSERT INTO subcategories VALUES('8','5','CLOTHINGS','clothings','1');
INSERT INTO subcategories VALUES('9','5','SHOES','shoes','1');
INSERT INTO subcategories VALUES('10','7','APPLE','apple','1');
INSERT INTO subcategories VALUES('11','7','SAMSUNG','samsung','1');
INSERT INTO subcategories VALUES('12','7','LG','lg','1');
INSERT INTO subcategories VALUES('13','7','SONY','sony','1');
INSERT INTO subcategories VALUES('14','6','DSLR','dslr','1');
INSERT INTO subcategories VALUES('15','6','Camera Phone','camera-phone','1');
INSERT INTO subcategories VALUES('16','6','Action Camera','animation-camera','1');
INSERT INTO subcategories VALUES('17','6','Digital Camera','digital-camera','1');



DROP TABLE IF EXISTS subscribers;

CREATE TABLE `subscribers` (
  `id` int(191) NOT NULL AUTO_INCREMENT,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

INSERT INTO subscribers VALUES('1','prakash@ininepal.com');



DROP TABLE IF EXISTS subscriptions;

CREATE TABLE `subscriptions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL DEFAULT '0',
  `days` int(11) NOT NULL,
  `allowed_products` int(11) NOT NULL DEFAULT '0',
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

INSERT INTO subscriptions VALUES('5','Run','Rs.','Rs.','1000','30','100','<ol><li>100 product can upload</li></ol>');
INSERT INTO subscriptions VALUES('6','Move','Rs.','Rs.','500','30','50','<span style=\"color: rgb(0, 0, 0); font-family: \" open=\"\" sans\",=\"\" arial,=\"\" sans-serif;=\"\" text-align:=\"\" justify;\"=\"\">50 product upload facilities</span><br>');
INSERT INTO subscriptions VALUES('8','Start','Rs','Rs','0','30','10','<ol><li>10 Product can upload</li></ol>');



DROP TABLE IF EXISTS user_notifications;

CREATE TABLE `user_notifications` (
  `id` int(191) NOT NULL AUTO_INCREMENT,
  `user_id` int(191) NOT NULL,
  `order_number` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_read` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;




DROP TABLE IF EXISTS user_subscriptions;

CREATE TABLE `user_subscriptions` (
  `id` int(191) NOT NULL AUTO_INCREMENT,
  `user_id` int(191) NOT NULL,
  `subscription_id` int(191) NOT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_code` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL DEFAULT '0',
  `days` int(11) NOT NULL,
  `allowed_products` int(11) NOT NULL DEFAULT '0',
  `details` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `method` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Free',
  `txnid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `charge_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `payment_number` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=latin1;




DROP TABLE IF EXISTS users;

CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fax` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_provider` tinyint(10) NOT NULL DEFAULT '0',
  `status` tinyint(10) NOT NULL DEFAULT '0',
  `verification_link` text COLLATE utf8mb4_unicode_ci,
  `email_verified` enum('Yes','No') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'No',
  `affilate_code` text COLLATE utf8mb4_unicode_ci,
  `affilate_income` double NOT NULL DEFAULT '0',
  `shop_name` text COLLATE utf8mb4_unicode_ci,
  `owner_name` text COLLATE utf8mb4_unicode_ci,
  `shop_number` text COLLATE utf8mb4_unicode_ci,
  `shop_address` text COLLATE utf8mb4_unicode_ci,
  `reg_number` text COLLATE utf8mb4_unicode_ci,
  `shop_message` text COLLATE utf8mb4_unicode_ci,
  `shop_details` text COLLATE utf8mb4_unicode_ci,
  `shop_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `f_url` text COLLATE utf8mb4_unicode_ci,
  `g_url` text COLLATE utf8mb4_unicode_ci,
  `t_url` text COLLATE utf8mb4_unicode_ci,
  `l_url` text COLLATE utf8mb4_unicode_ci,
  `is_vendor` tinyint(1) NOT NULL DEFAULT '0',
  `f_check` tinyint(1) NOT NULL DEFAULT '0',
  `g_check` tinyint(1) NOT NULL DEFAULT '0',
  `t_check` tinyint(1) NOT NULL DEFAULT '0',
  `l_check` tinyint(1) NOT NULL DEFAULT '0',
  `mail_sent` tinyint(1) NOT NULL DEFAULT '0',
  `shipping_cost` double NOT NULL DEFAULT '0',
  `current_balance` double NOT NULL DEFAULT '0',
  `date` date DEFAULT NULL,
  `ban` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO users VALUES('22','Test Customer','','44600','Test City','United States','Pulchowk','1234123123123','9851098510','user@gmail.com','$2y$10$.4NrvXAeyToa4x07EkFvS.XIUEc/aXGsxe1onkQ.Udms4Sl2W9ZYq','pktEyMBKOBTjaURr9LVq7V6Evyrl2YZNyCE3e3xE2TtfWq29rkt46mZV9J6z','2019-06-20 18:11:24','2020-07-31 08:24:54','0','0','1edae93935fba69d9542192fb854a80a','Yes','8f09b9691613ecb8c3f7e36e34b97b80','4963.69','','','','','','','','','','','','','0','0','0','0','0','0','0','0','','0');
INSERT INTO users VALUES('29','Prakash Poudel','','','','','Balkot-6','9843650517','','mee.prakash25@gmail.com','$2y$10$CM.2W8oMElBE8emZL1UzZunlM5p5cqG5BfFE7c9d6FS3EV1YpDD2K','2BR5tG4wefh6z7y4GE8OOsVA1c4E1cC3K2OyZ1utXZY0BFgD84nR0mNseQ4p','2020-08-02 07:06:16','2020-08-02 07:06:16','0','0','29ea1685475926718f39a49ebe555158','Yes','2eeea8e3f935c9dd5fbf5b696b93aa71','0','','','','','','','','','','','','','0','0','0','0','0','0','0','0','','0');
INSERT INTO users VALUES('30','Prakash Poudel','','','','','Balkot-6','9843650517','','mee.prakash256@gmail.com','$2y$10$0KLrvdm9amMjIpBGOq1m6OrPZwkjXgQKg1ZL3gZe9j1xUP8PfQnqS','0jdw3xB9Z1bki5ZJ047biPFYXW58wOFNP7XnJfbQi2YB5z2ytPjOcFjWr6cV','2020-08-04 16:49:23','2020-08-04 16:49:23','0','0','55371e2e769e935d9e22ba9096409fdc','Yes','462076a4654db252d73df779dfec2d94','0','','','','','','','','','','','','','0','0','0','0','0','0','0','0','','0');
INSERT INTO users VALUES('31','Prakash Poudel','','','','','Balkot','9843650527','','mee.prakash255@gmail.com','$2y$10$DNIvIw7K9wKtbwfJXuDPfeMYXj7u1TmQz/sPMQGLynHKHrJCQbrae','','2020-08-05 11:05:35','2020-08-05 11:05:35','0','0','dc98d4645a8a4b587dacd11ee3c4550c','Yes','ea2b60a32d5bcf5f3410e83b8bbfc351','0','','','','','','','','','','','','','0','0','0','0','0','0','0','0','','0');
INSERT INTO users VALUES('32','Prakash Poudel','','','','','Balkot','9843650527','','mee.prakash2555@gmail.com','$2y$10$pQPdBL8hk3dLQsc/vvGDaO827OTDmAbK83bkmoVjnaXaApcfLXs7m','ExbiFAyrbNoXGWv4pv0zJk3S88D4JcFMisLtfF24KdeuB4zAEmEuC42frys4','2020-08-05 11:15:57','2020-08-05 11:15:57','0','0','66fd62672452145b225d394136977d51','Yes','43656f628dad3ffea39dde9f304f2d51','0','','','','','','','','','','','','','0','0','0','0','0','0','0','0','','0');
INSERT INTO users VALUES('33','Prakash Poudel','','','','','Balkot','9843650527','','mee.praka@gmail.com','$2y$10$p.X2y4vwOkFQ97oFD8BeY.QN1x5ZNTERJSNY8FUZ62nTzF5eIt0sO','H9H15XR0DVVKkxTHBPclhRwCMmyoLjyllTfetiNNC3p2CSAyszhtolFlZ24G','2020-08-05 11:19:36','2020-08-05 11:19:36','0','0','e3896a81ceba08924d59a78a2b35e3c1','Yes','2eeea8e3f935c9dd5fbf5b696b93aa71','0','','','','','','','','','','','','','0','0','0','0','0','0','0','0','','0');
INSERT INTO users VALUES('34','Prakash Poudel','','','','','Balkot','9843650527','','mee.prakash25@gmail.combb','$2y$10$qYzb8r94Owg5vlgk7.ZWgOFjWxL6yj6AmjhKlCO7LeRKaKjwRP6rC','mqWGNVE2PWiK6BoGses8AXRpAyC6VUTXCwhpU6pZ3vhKgskIuyFJpV2I7cC1','2020-08-05 11:21:41','2020-08-05 11:21:41','0','0','bad2f49c0a3813786777bfbb6b2fc987','Yes','2eeea8e3f935c9dd5fbf5b696b93aa71','0','','','','','','','','','','','','','0','0','0','0','0','0','0','0','','0');
INSERT INTO users VALUES('35','Prakash Poudel','','','','','Balkot','9843650527','','mee.prakash215@gmail.com','$2y$10$Vgmtn76NiJm9YTE0F4f50.CsNyoMAC2ZfE8TEM2rA3Zg4FEIzh66.','','2020-08-05 11:26:05','2020-08-05 11:26:05','0','0','1e3fc51c239f429846dabf4975ad834f','Yes','b39a12e1463b9c06ef1a51435f216f5b','0','','','','','','','','','','','','','0','0','0','0','0','0','0','0','','0');
INSERT INTO users VALUES('36','Prakash Poudel','','','','','Balkot','9843650517','','mee.prakash235@gmail.com','$2y$10$6MbW5lVOd0nC8Fi3Pbm1ZupiAdBsRK896YSUneRPiq5byE6iy/cPC','lF9BeSb0YOpXwMxCvag8x2nbLyMG556VSdiAPcTlXA6hEDzeGQGehV5YORdR','2020-08-05 11:27:04','2020-08-05 11:27:04','0','0','56971fafa22cfb746df37433b6156928','Yes','622836cf4abce7bafef2f7b18ec26a03','0','','','','','','','','','','','','','0','0','0','0','0','0','0','0','','0');
INSERT INTO users VALUES('37','Prakash Poudel','','','','','Balkot','9843650517','','mee.prakasasash25@gmail.com','$2y$10$mBCit7dYE2xNINGz/34BWeAs.TiMmSq0/6Rs2lV/WIbbkYGuvOpxm','BtQJgg6eplm59iHhAFkTRPCZzdjXvRMBSr5aSZA22RYamWAQgsHqpFL5iCYd','2020-08-05 11:29:52','2020-08-05 11:29:52','0','0','0fb9dfdf5f5dfe7bea44cfa12069e126','Yes','c6edff12a753146c21b5b31864ba67e4','0','','','','','','','','','','','','','0','0','0','0','0','0','0','0','','0');
INSERT INTO users VALUES('38','Prakash Poudel','','','','','Balkot','9843650517','','mee.asdasprakash25@gmail.com','$2y$10$8cnS4J9LCM9fuaJijZoLG.uwrh8Ayf61NunLMLK5iWQ6Uo05sRFlG','3yR5O749GObRAETRzHSHOI2uiwC71yXytYMiA7R2BsyrtYMePi4k6Z4wYp82','2020-08-05 11:31:16','2020-08-05 11:31:16','0','0','ca9555ae2f316374c6c2ccc9120fdef6','Yes','02e6657fd3910154b41b3f9b605d812c','0','','','','','','','','','','','','','0','0','0','0','0','0','0','0','','0');
INSERT INTO users VALUES('39','Prakash Poudel','','','','','Balkot','9843650517','','mee.pasdrakash25@gmail.com','$2y$10$zcB5pVE5W6Ftm/rAiJxc9eNGLoeq0iP8.DgUpMtpNQlKhIjXKIqoi','RdFRpC0cGTQ4dX0xTQmJJK9ItDM4XVOkiGyUxkouLlP7mz6J4gTvdekYzYv9','2020-08-05 11:34:43','2020-08-05 11:34:43','0','0','30438ae083869d49cf89894a1b26ce6c','Yes','8b8ae03ddbd6a3536f9c1c2e2bd57d11','0','','','','','','','','','','','','','0','0','0','0','0','0','0','0','','0');



DROP TABLE IF EXISTS vendor_orders;

CREATE TABLE `vendor_orders` (
  `id` int(191) NOT NULL AUTO_INCREMENT,
  `user_id` int(191) NOT NULL,
  `order_id` int(191) NOT NULL,
  `qty` int(191) NOT NULL,
  `price` double NOT NULL,
  `order_number` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('pending','processing','completed','declined','on delivery') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;




DROP TABLE IF EXISTS verifications;

CREATE TABLE `verifications` (
  `id` int(191) NOT NULL AUTO_INCREMENT,
  `user_id` int(191) NOT NULL,
  `attachments` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` enum('Pending','Verified','Declined') DEFAULT NULL,
  `text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `admin_warning` tinyint(1) NOT NULL DEFAULT '0',
  `warning_reason` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

INSERT INTO verifications VALUES('4','13','1573723849Baby.tux-800x800.png,1573723849Baby.tux-800x800.png','Verified','TEst','0','','2019-11-14 09:15:49','2019-11-14 09:19:06');



DROP TABLE IF EXISTS wishlists;

CREATE TABLE `wishlists` (
  `id` int(191) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(191) unsigned NOT NULL,
  `product_id` int(191) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;




DROP TABLE IF EXISTS withdraws;

CREATE TABLE `withdraws` (
  `id` int(191) NOT NULL AUTO_INCREMENT,
  `user_id` int(191) DEFAULT NULL,
  `method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `acc_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `iban` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `acc_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `swift` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `amount` float DEFAULT NULL,
  `fee` float DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `status` enum('pending','completed','rejected') NOT NULL DEFAULT 'pending',
  `type` enum('user','vendor') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




