# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: localhost (MySQL 5.7.26)
# Database: gotap
# Generation Time: 2021-08-18 13:54:34 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table accounts
# ------------------------------------------------------------

DROP TABLE IF EXISTS `accounts`;

CREATE TABLE `accounts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `fullname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'avatars/default-avatar.png',
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uuid` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `view` int(11) DEFAULT '0',
  `tap` int(11) DEFAULT '0',
  `click` int(11) DEFAULT '0',
  `member_id` bigint(20) unsigned DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `accounts_uuid_unique` (`uuid`),
  UNIQUE KEY `accounts_username_unique` (`username`),
  KEY `accounts_member_id_foreign` (`member_id`),
  CONSTRAINT `accounts_member_id_foreign` FOREIGN KEY (`member_id`) REFERENCES `members` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `accounts` WRITE;
/*!40000 ALTER TABLE `accounts` DISABLE KEYS */;

INSERT INTO `accounts` (`id`, `fullname`, `username`, `description`, `avatar`, `address`, `uuid`, `code`, `view`, `tap`, `click`, `member_id`, `status`, `created_at`, `updated_at`)
VALUES
	(1,'Hoàng Văn Kiên',NULL,'Test','avatars/default-avatar.png','test','f8f26a1a-cebe-41ce-b977-fdc2aaf46ec0','RNFD',0,0,0,12,'published','2021-08-02 16:59:45','2021-08-02 18:12:29'),
	(2,'Hoàng Văn Kiên','kiendaotac','1','avatars/default-avatar.png','1','03d6eef9-ffdb-4b06-8005-95a4d722981e','YFWL',0,0,0,14,'published','2021-08-02 18:02:25','2021-08-02 19:09:36');

/*!40000 ALTER TABLE `accounts` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table activations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `activations`;

CREATE TABLE `activations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `code` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `activations_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `activations` WRITE;
/*!40000 ALTER TABLE `activations` DISABLE KEYS */;

INSERT INTO `activations` (`id`, `user_id`, `code`, `completed`, `completed_at`, `created_at`, `updated_at`)
VALUES
	(1,1,'b5e7QasV4B4I3jWrY0hetoIIPacPCTKm',1,'2021-07-11 09:20:51','2021-07-11 09:20:51','2021-07-11 09:20:51'),
	(2,2,'o5AH2flIX0A6akRmSFujeIw6RhOPdyRH',1,'2021-07-11 09:25:48','2021-07-11 09:25:48','2021-07-11 09:25:48'),
	(3,1,'G8QjQuMSo5iv9lAKtQxXf1dso5JRJl6T',1,'2021-07-11 09:29:24','2021-07-11 09:29:24','2021-07-11 09:29:24');

/*!40000 ALTER TABLE `activations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table blocks
# ------------------------------------------------------------

DROP TABLE IF EXISTS `blocks`;

CREATE TABLE `blocks` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `user_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `blocks` WRITE;
/*!40000 ALTER TABLE `blocks` DISABLE KEYS */;

INSERT INTO `blocks` (`id`, `name`, `alias`, `description`, `content`, `status`, `user_id`, `created_at`, `updated_at`)
VALUES
	(1,'Vickie Crooks','vickie-crooks','Ratione architecto omnis recusandae aut ut.','Voluptatem tempore qui vero quo repellendus nulla. Minima soluta libero sapiente nam sit. Rerum pariatur omnis aspernatur quia amet. Atque aspernatur magnam tenetur amet et. Similique ut dolores repellat in voluptas adipisci deleniti. Sint nam quod aut qui et. Veritatis unde perferendis et aut. Consectetur fugiat totam assumenda laborum. Aut non quia temporibus dignissimos et rerum iste. Est voluptas sint aliquam excepturi molestiae dignissimos.','published',NULL,'2021-07-11 09:29:28','2021-07-11 09:29:28'),
	(2,'Leslie Wiza','leslie-wiza','Ea quidem quo accusamus.','Explicabo dolorum sint sit dolores magni et eum. Repellendus architecto ducimus perferendis velit eum sed quisquam. Voluptate qui enim modi omnis magnam et. Eum eum voluptas esse rerum ipsam. Sit dolore sed qui animi. Aliquam id possimus distinctio quidem provident aut mollitia occaecati. Et et animi voluptates nihil nostrum ducimus natus ut.','published',NULL,'2021-07-11 09:29:28','2021-07-11 09:29:28'),
	(3,'Kaley DuBuque','kaley-dubuque','Eum sed ut at molestiae.','Placeat ducimus ut hic error nisi modi quibusdam. Veniam earum officia veritatis omnis incidunt. Minima ratione omnis voluptatum cupiditate possimus placeat dolores. Explicabo perferendis officia ipsa omnis ut incidunt excepturi beatae. Culpa nesciunt facere error quo. Explicabo est ratione laudantium. Non corporis cupiditate repudiandae maiores distinctio explicabo.','published',NULL,'2021-07-11 09:29:28','2021-07-11 09:29:28'),
	(4,'Shirley Hammes','shirley-hammes','Eaque similique deserunt et illo et animi culpa.','Vel alias dolores voluptas in earum ea placeat. Consequatur similique architecto voluptatem. Consequatur repudiandae eligendi explicabo ducimus quos velit qui. Ut maiores soluta earum id asperiores nisi expedita. Adipisci laboriosam ipsa consequatur tempora repellendus non. Necessitatibus animi eligendi ratione accusamus ut magni sapiente. Quia vel nihil eos sunt. Cumque vel odit sapiente quod. Nesciunt maiores quo exercitationem rerum sunt voluptates.','published',NULL,'2021-07-11 09:29:28','2021-07-11 09:29:28'),
	(5,'Camden Smitham I','camden-smitham-i','Unde quos inventore ea commodi.','Rerum veniam rerum qui aperiam. Sapiente sint et labore suscipit. Nemo fugit a rerum dolor veritatis error accusamus. Ut consectetur voluptas ratione minima. Ut tempore asperiores sint voluptate consequuntur fuga ut nostrum. Incidunt ut sit tenetur laudantium asperiores. Tenetur neque accusamus ipsum totam. Ducimus nulla excepturi dolorem rerum sunt consectetur excepturi. Quod ex ipsam optio dolor consequatur sunt atque. Mollitia neque voluptatum occaecati earum non.','published',NULL,'2021-07-11 09:29:28','2021-07-11 09:29:28');

/*!40000 ALTER TABLE `blocks` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table categories
# ------------------------------------------------------------

DROP TABLE IF EXISTS `categories`;

CREATE TABLE `categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` int(11) NOT NULL,
  `author_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `icon` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint(4) NOT NULL DEFAULT '0',
  `is_featured` tinyint(4) NOT NULL DEFAULT '0',
  `is_default` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;

INSERT INTO `categories` (`id`, `name`, `parent_id`, `description`, `status`, `author_id`, `author_type`, `icon`, `order`, `is_featured`, `is_default`, `created_at`, `updated_at`)
VALUES
	(1,'Uncategorized',0,'In consequuntur quidem culpa libero veritatis. Doloremque impedit consequuntur sint eligendi at quasi culpa. Molestiae et maiores sint in. Atque quas nam libero ut inventore.','published',1,'Botble\\ACL\\Models\\User',NULL,0,0,1,'2021-07-11 09:29:26','2021-07-11 09:29:26'),
	(2,'Events',0,'Sit vero dolor quod quisquam. Perspiciatis facilis delectus est rerum consequatur officiis porro quod.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2021-07-11 09:29:26','2021-07-11 09:29:26'),
	(3,'Projects',2,'Dolores odio voluptatem est labore reprehenderit a velit. Ipsum exercitationem illum id explicabo. Alias est doloremque minima dolor quisquam. Aut soluta ea quia reprehenderit deserunt aut enim.','published',1,'Botble\\ACL\\Models\\User',NULL,0,0,0,'2021-07-11 09:29:26','2021-07-11 09:29:26'),
	(4,'Business',0,'Culpa doloribus veniam culpa eos et. Ipsum nulla quas et aut. Harum blanditiis veniam incidunt ex.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2021-07-11 09:29:26','2021-07-11 09:29:26'),
	(5,'Portfolio',4,'Qui qui similique itaque totam eligendi nihil eum. Voluptatum distinctio doloribus enim sed magni consequatur. Illum in sit quia velit sapiente. Dolor amet temporibus qui deleniti et non.','published',1,'Botble\\ACL\\Models\\User',NULL,0,0,0,'2021-07-11 09:29:26','2021-07-11 09:29:26'),
	(6,'News & Updates',0,'Non necessitatibus omnis aut. Numquam dolorem nam sit distinctio necessitatibus. Deleniti sit molestiae dolores voluptatem.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2021-07-11 09:29:26','2021-07-11 09:29:26'),
	(7,'Resources',6,'Laudantium iure amet a. Et error veniam dignissimos exercitationem consequuntur doloribus. Voluptas molestiae suscipit deleniti voluptas libero veritatis. Illo delectus ut tempora natus eum sit.','published',1,'Botble\\ACL\\Models\\User',NULL,0,0,0,'2021-07-11 09:29:26','2021-07-11 09:29:26'),
	(8,'Không phân loại',0,'Non nostrum aut omnis laudantium et soluta. Rerum provident libero aut et et labore velit magnam.','published',1,'Botble\\ACL\\Models\\User',NULL,0,0,1,'2021-07-11 09:29:26','2021-07-11 09:29:26'),
	(9,'Sự kiện',0,'Nihil voluptas dolore ut voluptatem nemo cupiditate. Nisi rerum nam est ipsa quia velit. Eum id et et quasi quia dolorem.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2021-07-11 09:29:26','2021-07-11 09:29:26'),
	(10,'Dự án',9,'Velit soluta autem recusandae quasi voluptatem nisi odio quia. Nesciunt impedit inventore eos similique consequatur. Nam illo voluptatem consequuntur dolorem illo.','published',1,'Botble\\ACL\\Models\\User',NULL,0,0,0,'2021-07-11 09:29:26','2021-07-11 09:29:26'),
	(11,'Doanh nghiệp',0,'Non aliquam rerum omnis iure officia accusantium. Ullam ex atque ut quaerat expedita exercitationem. Rerum assumenda magnam molestiae et.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2021-07-11 09:29:26','2021-07-11 09:29:26'),
	(12,'Đầu tư',11,'At quo in impedit ducimus atque facilis dolor. Magni excepturi atque fugit ut quam est atque. Dolor voluptatem rerum sit.','published',1,'Botble\\ACL\\Models\\User',NULL,0,0,0,'2021-07-11 09:29:26','2021-07-11 09:29:26'),
	(13,'Tin tức & cập nhật',0,'Cumque laborum soluta dolorem aut expedita hic accusantium aut. Dicta corrupti non rerum nihil voluptatibus incidunt.','published',1,'Botble\\ACL\\Models\\User',NULL,0,1,0,'2021-07-11 09:29:26','2021-07-11 09:29:26'),
	(14,'Tài nguyên',13,'Perferendis esse blanditiis et voluptatem vel enim. Magnam fugiat perspiciatis est quae et non harum.','published',1,'Botble\\ACL\\Models\\User',NULL,0,0,0,'2021-07-11 09:29:26','2021-07-11 09:29:26');

/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table contact_replies
# ------------------------------------------------------------

DROP TABLE IF EXISTS `contact_replies`;

CREATE TABLE `contact_replies` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table contacts
# ------------------------------------------------------------

DROP TABLE IF EXISTS `contacts`;

CREATE TABLE `contacts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unread',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;

INSERT INTO `contacts` (`id`, `name`, `email`, `phone`, `address`, `subject`, `content`, `status`, `created_at`, `updated_at`)
VALUES
	(1,'Domenica Goldner','zbartoletti@example.net','+1-503-434-5884','437 Legros Crest\nKunzemouth, OK 78223','Explicabo minima impedit aut magni.','Ut nam molestiae est corrupti. Voluptatem asperiores eaque ut quisquam quisquam sed in. Error molestiae doloribus necessitatibus. Velit voluptatum aut tenetur tempora voluptas rem ullam occaecati. Aspernatur molestiae asperiores magni necessitatibus id eos dolor voluptas. Culpa nihil magni accusantium quasi nostrum qui. Cumque laudantium dolorem reprehenderit quia in minima. Qui soluta beatae error nobis. Ratione velit est dolores. Itaque eveniet consectetur vel.','read','2021-07-11 09:29:28','2021-07-11 09:29:28'),
	(2,'Eliseo Schoen','destin00@example.com','(963) 609-8486 x381','43213 Austin Harbors\nEast Maurine, UT 83312-5849','Ab eius sit repellendus.','Accusantium facere consequatur eaque sit enim. Eum eaque quasi deleniti quod. Explicabo necessitatibus eum facere mollitia ut. Qui dolores non eveniet unde sunt. Ut inventore enim molestias maiores eos. Et ipsa repellendus facere dolore. Et nulla et rerum nobis molestiae et saepe consequuntur. Facere quidem reiciendis facere eos. Optio culpa asperiores deserunt. Temporibus ea aut rerum vitae et. Et iste officiis et fuga. Tenetur non aut eos. Ut enim reprehenderit sit beatae blanditiis neque.','unread','2021-07-11 09:29:28','2021-07-11 09:29:28'),
	(3,'Beryl Willms','durgan.skylar@example.org','1-686-615-7657 x842','87044 Dominique Estates Apt. 555\nPort Madilynton, SC 98537','Sunt distinctio qui optio accusantium aspernatur.','Quibusdam labore enim esse voluptas quod laboriosam soluta quas. Ab cupiditate distinctio saepe necessitatibus sequi. Odit nihil illo a dolores facere iusto. Tempora aperiam sit quod autem dolorem omnis officia ipsa. Incidunt reprehenderit iure consequatur et ut velit qui aliquid. Eos consequuntur a qui nam velit. Qui nihil dolores et reiciendis qui aliquam. Omnis quam qui consectetur accusamus.','read','2021-07-11 09:29:28','2021-07-11 09:29:28'),
	(4,'Jameson Tromp','breitenberg.tressa@example.org','282-477-5096 x6916','27227 Destany Summit\nKoelpinmouth, CT 95367','Magnam rem impedit laudantium vel.','Facere natus impedit vel accusantium fugit officia. Rerum assumenda distinctio autem sit ut delectus aliquid. Et quia qui eaque qui. Vero quaerat asperiores pariatur non. Debitis nulla dolor exercitationem dolores ducimus nisi sunt. Omnis mollitia voluptatem consequatur eligendi. Alias et quasi eius quae. Est rerum non omnis consequuntur. Amet asperiores eum aut omnis debitis nesciunt quae. Esse perferendis consequatur aliquid. Natus impedit doloribus assumenda laborum est rerum delectus.','unread','2021-07-11 09:29:28','2021-07-11 09:29:28'),
	(5,'Eveline Hackett','ansley.hickle@example.org','+13154946106','370 Halvorson Forges Apt. 320\nEast Izaiah, OR 87149','Qui eius iste ea.','Qui earum quos inventore dolorem. Neque facilis quia assumenda. Rerum nobis architecto at. Repellat odio cumque magnam qui placeat rerum. Unde nisi est eum vitae praesentium iusto rerum. Beatae enim eaque quos sed harum. Officiis dolores dicta dicta qui voluptas et voluptate. Consequatur et quis ipsa est qui. Aliquid dolor aut et quod ipsum repellendus. Non molestias rerum eos sed. Qui esse nisi sequi non. Temporibus doloremque numquam cupiditate doloremque itaque.','unread','2021-07-11 09:29:28','2021-07-11 09:29:28'),
	(6,'Lonny Stamm','nienow.amelie@example.net','(486) 349-4312 x1973','35621 Christiansen Mount\nEast Kaletown, TX 17703','Perferendis ab qui laudantium vitae in.','Aut enim impedit eligendi aut quas ipsum voluptates. Mollitia laboriosam aut suscipit consectetur quae. Facilis atque distinctio quia pariatur aspernatur sint dolores. Ad modi eaque ea qui. Explicabo est et qui rem aut repellendus nulla. Possimus non consequatur ullam dignissimos a. Fugit in enim officiis officia explicabo voluptatibus. Ipsum omnis commodi at similique. Non aut magni accusamus beatae facere omnis vel. Incidunt quae consequuntur error laboriosam neque earum est.','read','2021-07-11 09:29:28','2021-07-11 09:29:28'),
	(7,'Jabari Mayer Jr.','fkuphal@example.org','+1-342-827-8539','19548 Ebony Forge\nJasminfort, MA 59630-9004','Id nisi nihil vero.','Ut est neque iure temporibus optio facilis ratione. Blanditiis doloremque enim nihil consequatur atque assumenda. Sit facilis ab repudiandae est. Numquam distinctio et ratione et ut consequatur aut. Eveniet quos laboriosam modi sint provident. Omnis qui aut id aut consequatur laboriosam qui non. Quo eos iste commodi omnis enim. In est aut sit qui nihil. Deserunt pariatur fugit magnam distinctio sunt ab omnis.','read','2021-07-11 09:29:28','2021-07-11 09:29:28'),
	(8,'Missouri Osinski IV','cody.will@example.net','775-682-0566 x58810','527 Claud Harbor\nLake Alanisshire, MO 73132-1394','Explicabo nobis qui sit excepturi.','Aut quo earum quae voluptate vel non enim. Eos atque officia et ea. Cum est cupiditate laborum et non eos. Id consequuntur recusandae nulla neque quae omnis commodi. Maiores delectus voluptatem rerum omnis eius quasi aut. Ad eaque labore quisquam et magnam in sapiente quidem. Explicabo est alias ut mollitia quae quia ea dolorem. Assumenda sint id voluptates error. Qui incidunt animi voluptatem sit enim possimus pariatur.','unread','2021-07-11 09:29:28','2021-07-11 09:29:28'),
	(9,'Montana Dach','clara.stracke@example.net','241-287-9160 x33255','21270 Ned Walks Apt. 168\nDelaneyshire, DE 36594','Quis consectetur vel ipsa ut aut sed magnam.','In laborum aut deserunt quia. Aut excepturi quos facere nam. Autem hic dolor ratione distinctio. Quo dignissimos incidunt non ut. Vel et sint perferendis beatae quaerat consequatur. Occaecati porro eum aut assumenda rerum. Qui saepe corrupti fuga ipsa aperiam accusamus consequatur. Quisquam qui occaecati modi qui. Voluptate ut cumque officiis minima maiores quaerat.','read','2021-07-11 09:29:28','2021-07-11 09:29:28'),
	(10,'Mariane Schmidt','giuseppe48@example.org','930.952.7755','528 Callie Course Suite 041\nDawnmouth, TN 62087','Sint sunt facere dolor vel facere.','Culpa rerum expedita dolores cupiditate quasi molestiae. Sit quia quia non molestiae consequatur. Aut quod omnis dignissimos impedit. In non aliquam sint vel quo ea nihil vero. Quisquam laudantium in blanditiis quis quis aliquam ut. Eius est ut officiis est nisi est. Et maxime et qui. Id praesentium officia quo magnam veniam. Esse id assumenda id voluptatem ducimus. Eum illo amet dolores quam amet soluta non harum. Dolore deserunt laborum aut.','unread','2021-07-11 09:29:28','2021-07-11 09:29:28');

/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table dashboard_widget_settings
# ------------------------------------------------------------

DROP TABLE IF EXISTS `dashboard_widget_settings`;

CREATE TABLE `dashboard_widget_settings` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `user_id` int(10) unsigned NOT NULL,
  `widget_id` int(10) unsigned NOT NULL,
  `order` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `dashboard_widget_settings_user_id_index` (`user_id`),
  KEY `dashboard_widget_settings_widget_id_index` (`widget_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `dashboard_widget_settings` WRITE;
/*!40000 ALTER TABLE `dashboard_widget_settings` DISABLE KEYS */;

INSERT INTO `dashboard_widget_settings` (`id`, `settings`, `user_id`, `widget_id`, `order`, `status`, `created_at`, `updated_at`)
VALUES
	(1,NULL,1,5,0,1,'2021-07-16 09:25:03','2021-07-16 09:25:03');

/*!40000 ALTER TABLE `dashboard_widget_settings` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table dashboard_widgets
# ------------------------------------------------------------

DROP TABLE IF EXISTS `dashboard_widgets`;

CREATE TABLE `dashboard_widgets` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `dashboard_widgets` WRITE;
/*!40000 ALTER TABLE `dashboard_widgets` DISABLE KEYS */;

INSERT INTO `dashboard_widgets` (`id`, `name`, `created_at`, `updated_at`)
VALUES
	(1,'widget_total_themes','2021-07-11 09:26:45','2021-07-11 09:26:45'),
	(2,'widget_total_users','2021-07-11 09:26:45','2021-07-11 09:26:45'),
	(3,'widget_total_pages','2021-07-11 09:26:45','2021-07-11 09:26:45'),
	(4,'widget_total_plugins','2021-07-11 09:26:45','2021-07-11 09:26:45'),
	(5,'widget_posts_recent','2021-07-11 09:26:45','2021-07-11 09:26:45');

/*!40000 ALTER TABLE `dashboard_widgets` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table failed_jobs
# ------------------------------------------------------------

DROP TABLE IF EXISTS `failed_jobs`;

CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table galleries
# ------------------------------------------------------------

DROP TABLE IF EXISTS `galleries`;

CREATE TABLE `galleries` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_featured` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `order` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `galleries_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `galleries` WRITE;
/*!40000 ALTER TABLE `galleries` DISABLE KEYS */;

INSERT INTO `galleries` (`id`, `name`, `description`, `is_featured`, `order`, `image`, `user_id`, `status`, `created_at`, `updated_at`)
VALUES
	(1,'Perfect','Incidunt et commodi ut quos libero enim. Blanditiis et amet fuga quis ut placeat.',1,0,'galleries/1.jpg',1,'published','2021-07-11 09:29:25','2021-07-11 09:29:25'),
	(2,'New Day','Totam voluptate distinctio enim molestiae et ut repellat qui. Quis eveniet qui odio et. Est et commodi dolorum a. Facere nihil non non ratione quas.',1,0,'galleries/2.jpg',1,'published','2021-07-11 09:29:25','2021-07-11 09:29:25'),
	(3,'Happy Day','Nesciunt nobis aperiam possimus enim. Sed eligendi hic ut veritatis. Voluptatem quo iure assumenda quaerat. Debitis saepe omnis qui dicta.',1,0,'galleries/3.jpg',1,'published','2021-07-11 09:29:25','2021-07-11 09:29:25'),
	(4,'Nature','Blanditiis error quis culpa corrupti rerum est unde. Velit deserunt voluptas molestiae provident architecto nostrum ipsa.',1,0,'galleries/4.jpg',1,'published','2021-07-11 09:29:25','2021-07-11 09:29:25'),
	(5,'Morning','Accusamus corporis expedita qui mollitia. Error esse cupiditate iure. Quibusdam odit quia qui reprehenderit dolorem. Dolorem qui sint id.',1,0,'galleries/5.jpg',1,'published','2021-07-11 09:29:25','2021-07-11 09:29:25'),
	(6,'Photography','Consequatur ex dolores eos doloribus veritatis reiciendis. Magnam amet dicta magni sint. Facere quia dignissimos quisquam ea aut qui.',1,0,'galleries/6.jpg',1,'published','2021-07-11 09:29:25','2021-07-11 09:29:25'),
	(7,'Hoàn hảo','Aperiam et iste in ut quis molestias et praesentium. Et cupiditate quo ad architecto nihil quia.',1,0,'galleries/1.jpg',1,'published','2021-07-11 09:29:25','2021-07-11 09:29:25'),
	(8,'Ngày mới','Non sequi aut ipsa sed est quam. Quam facere dolor natus sint ullam id recusandae. Itaque natus eligendi consequatur quidem incidunt sint ut magnam.',1,0,'galleries/2.jpg',1,'published','2021-07-11 09:29:25','2021-07-11 09:29:25'),
	(9,'Ngày hạnh phúc','Ut vitae voluptas quae consequatur enim nisi. Et aut eveniet est consequatur placeat dolorum. Alias ut sint dolores sapiente non in ut.',1,0,'galleries/3.jpg',1,'published','2021-07-11 09:29:25','2021-07-11 09:29:25'),
	(10,'Thiên nhiên','Sunt ratione aspernatur nulla aut et distinctio qui. Quibusdam fuga amet dolores sit. Qui corporis qui eos veniam sit expedita.',1,0,'galleries/4.jpg',1,'published','2021-07-11 09:29:25','2021-07-11 09:29:25'),
	(11,'Buổi sáng','Aliquam ea eos commodi nobis sit. Et est delectus voluptate nesciunt. Repudiandae et molestiae et.',1,0,'galleries/5.jpg',1,'published','2021-07-11 09:29:25','2021-07-11 09:29:25'),
	(12,'Nghệ thuật','Et commodi quibusdam est est. Quibusdam veritatis pariatur culpa omnis quidem. Commodi culpa amet delectus voluptas illo alias.',1,0,'galleries/6.jpg',1,'published','2021-07-11 09:29:25','2021-07-11 09:29:25');

/*!40000 ALTER TABLE `galleries` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table gallery_meta
# ------------------------------------------------------------

DROP TABLE IF EXISTS `gallery_meta`;

CREATE TABLE `gallery_meta` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `images` text COLLATE utf8mb4_unicode_ci,
  `reference_id` int(10) unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `gallery_meta_reference_id_index` (`reference_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `gallery_meta` WRITE;
/*!40000 ALTER TABLE `gallery_meta` DISABLE KEYS */;

INSERT INTO `gallery_meta` (`id`, `images`, `reference_id`, `reference_type`, `created_at`, `updated_at`)
VALUES
	(1,'[{\"img\":\"galleries\\/1.jpg\",\"description\":\"Omnis ex illum nobis culpa quos numquam. Inventore dolore ad repellendus qui vero.\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"Fugiat ea hic vel distinctio fuga provident. Voluptatem ex rerum aspernatur. Et eos quae suscipit ab incidunt magnam sapiente.\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"Dolor sed neque quos consequatur. Qui sed sint id officia asperiores occaecati nobis. Sed odio ut nobis cumque nulla laborum.\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"Laudantium ipsam laudantium eum molestiae. Accusantium excepturi dolorem dicta ipsam perferendis quisquam est. Quod aliquam qui accusantium sed et.\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"Laboriosam nobis eligendi vero. Sunt animi maiores exercitationem. Quas sit sunt aliquid a distinctio reiciendis perspiciatis esse.\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"Fuga et laudantium ut voluptates omnis impedit quae. Qui quis praesentium numquam consequatur officiis.\"},{\"img\":\"galleries\\/7.jpg\",\"description\":\"Quam odit corrupti est culpa molestiae dicta. Rerum et consequatur tempora at. Quis veritatis qui ea magni itaque.\"},{\"img\":\"galleries\\/8.jpg\",\"description\":\"Occaecati deleniti qui doloremque quia corporis. Ipsum harum quae necessitatibus eos non delectus.\"},{\"img\":\"galleries\\/9.jpg\",\"description\":\"Dolores dolore qui eum earum saepe harum possimus dolorem. Omnis quae quaerat est dolores. Consequuntur et ex hic praesentium.\"},{\"img\":\"galleries\\/10.jpg\",\"description\":\"Id maxime sit ut enim. Quia ipsam unde nulla. At provident enim id impedit dolor maiores. Dolor quam eos accusantium consequatur.\"}]',1,'Botble\\Gallery\\Models\\Gallery','2021-07-11 09:29:25','2021-07-11 09:29:25'),
	(2,'[{\"img\":\"galleries\\/1.jpg\",\"description\":\"Earum delectus distinctio qui non optio. Voluptatem nihil porro eveniet occaecati modi qui cumque. Dolorem qui nam molestiae qui deserunt et.\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"Laborum occaecati enim nam non. Non vero nemo similique velit recusandae. Eveniet animi voluptates soluta quisquam aut odio omnis quia.\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"Fugiat eius perspiciatis illum eum voluptatem. Vero porro similique velit in earum. Tempore unde excepturi at quas et. Et omnis et aliquam fugiat.\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"Exercitationem facere quo sunt ullam distinctio illo ut. Officiis blanditiis dolorum quaerat ea. Iste eius esse a.\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"Neque est omnis similique eum. Et iusto dolores animi deleniti. Omnis tempora cumque modi sit. Laudantium magnam nihil est et velit ut.\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"Error distinctio aliquam commodi quia minus voluptas doloribus quod. Quaerat cumque non et. Sapiente ut commodi perspiciatis.\"},{\"img\":\"galleries\\/7.jpg\",\"description\":\"Quibusdam dolorem exercitationem soluta fugit tempore placeat. Ipsum saepe aut accusantium iure. Alias qui quo aut illo sint.\"},{\"img\":\"galleries\\/8.jpg\",\"description\":\"Repellat voluptas odit impedit voluptatem et consequuntur voluptatibus aut. Fugiat in sit asperiores dolore ab. Qui ut et eos aliquid consequatur.\"},{\"img\":\"galleries\\/9.jpg\",\"description\":\"Mollitia omnis consequatur rerum quae libero. Ea nam laborum non quis nobis dolorum. Ut ut natus neque quia.\"},{\"img\":\"galleries\\/10.jpg\",\"description\":\"Sed repellat et aut odio ut nam alias. Nemo perferendis magni repudiandae. Modi vitae sint dolorem cumque.\"}]',2,'Botble\\Gallery\\Models\\Gallery','2021-07-11 09:29:25','2021-07-11 09:29:25'),
	(3,'[{\"img\":\"galleries\\/1.jpg\",\"description\":\"Ipsa quia nobis illo architecto. Qui cumque qui nihil dicta aut officia deserunt. Ex magni atque ipsa debitis tempora ut.\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"Aliquam facilis consequuntur esse veniam doloribus esse qui. Quia quia sint quia. Libero quos ut ut fugiat non itaque eius tempora.\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"Eos et hic nemo assumenda non. Recusandae voluptate aut beatae asperiores ut qui itaque eveniet. Error magnam voluptas voluptate eum.\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"Culpa quisquam deserunt amet reprehenderit maiores. Et facilis expedita nihil et. Dignissimos magnam ab est ut minima.\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"Amet ipsam aut laboriosam quaerat qui non et quo. Quas adipisci illum sapiente et rerum et qui.\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"Eos et perspiciatis ratione. Provident dolorem molestias soluta dolorem. Ullam nisi a eveniet sunt consequatur laboriosam maiores.\"},{\"img\":\"galleries\\/7.jpg\",\"description\":\"Et autem officia laudantium saepe ipsa quidem alias. Est reiciendis non vel totam aspernatur aut.\"},{\"img\":\"galleries\\/8.jpg\",\"description\":\"Et fugiat error aut quo quia. Aliquid nam veniam et consectetur et vel facilis. Vel dolores mollitia quis eum veritatis culpa quia.\"},{\"img\":\"galleries\\/9.jpg\",\"description\":\"Sed aspernatur minus sit. Fugit velit sint ut distinctio. Sapiente praesentium ipsum qui eaque quia expedita.\"},{\"img\":\"galleries\\/10.jpg\",\"description\":\"Qui quo ea consequuntur. Deserunt nam facere ut alias.\"}]',3,'Botble\\Gallery\\Models\\Gallery','2021-07-11 09:29:25','2021-07-11 09:29:25'),
	(4,'[{\"img\":\"galleries\\/1.jpg\",\"description\":\"Illum aliquam dolore nisi labore culpa. Numquam placeat recusandae occaecati aut facere. Hic maxime consequatur et nihil in. Et eveniet eos labore.\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"Eos porro enim nam nihil ut quod blanditiis. Voluptatem minima voluptatem ut incidunt porro dolorum. Et voluptatem et vero sit vel quas.\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"Qui sunt temporibus animi deleniti. Quas accusamus nisi consequatur adipisci rerum et. Quod eveniet aut atque accusamus.\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"Eveniet a ut corporis occaecati et rerum nisi. Nesciunt perspiciatis labore omnis expedita. Voluptatem et voluptatum facilis odio dolor magni.\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"Ut magnam ut enim inventore natus. Omnis aliquid quas sunt sint accusantium sed ullam. In et deserunt dolore iure.\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"Veniam sed earum dolorem sunt est totam. Iusto animi aut doloribus molestiae dignissimos. Maxime fugit consectetur nostrum.\"},{\"img\":\"galleries\\/7.jpg\",\"description\":\"Et ut quo ratione hic. Aut dicta labore ipsa maiores. Et ratione omnis consequatur rerum nesciunt aliquam.\"},{\"img\":\"galleries\\/8.jpg\",\"description\":\"Possimus praesentium deleniti recusandae. Consequuntur autem repellendus odio voluptatem odit iste. Ipsa quos ratione enim distinctio.\"},{\"img\":\"galleries\\/9.jpg\",\"description\":\"Suscipit eaque saepe et maxime. Libero non et iure. Cumque pariatur amet sunt omnis ut quidem quos.\"},{\"img\":\"galleries\\/10.jpg\",\"description\":\"Dolores omnis ipsum a accusamus placeat itaque impedit qui. Quod nam pariatur et autem labore eum. Minus ea adipisci quis aut molestias eius ullam.\"}]',4,'Botble\\Gallery\\Models\\Gallery','2021-07-11 09:29:25','2021-07-11 09:29:25'),
	(5,'[{\"img\":\"galleries\\/1.jpg\",\"description\":\"Est natus occaecati ex exercitationem ut est. Sequi optio neque suscipit error rem facilis. Consequuntur ullam eos omnis iure et est unde.\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"Consectetur laborum voluptatem perferendis. Delectus et fuga nihil. Enim et beatae eum occaecati.\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"Porro qui et aut ex. Recusandae officia et est at sit.\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"Sint sed voluptates vitae corporis labore enim ducimus. Excepturi neque autem aspernatur. Voluptatibus ipsam qui aut est consequatur praesentium.\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"Magni explicabo dicta ipsum soluta quibusdam id id. Esse incidunt autem aspernatur vel autem architecto. Atque ea ea doloremque.\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"Sunt consequatur sunt animi. A velit laudantium odio vitae est fugit harum. Quam rerum et magnam qui.\"},{\"img\":\"galleries\\/7.jpg\",\"description\":\"Sapiente qui necessitatibus voluptas et amet dolorum. Animi dolores corrupti voluptas maxime minima blanditiis.\"},{\"img\":\"galleries\\/8.jpg\",\"description\":\"Voluptas porro et repellendus voluptas. Rerum animi magni quisquam eos sit iste modi. Dolorum impedit numquam ut praesentium qui quam quis magnam.\"},{\"img\":\"galleries\\/9.jpg\",\"description\":\"Aut consequatur illo perferendis debitis architecto molestiae aperiam. Sed nisi quibusdam et aliquid. Et voluptas qui iusto quia.\"},{\"img\":\"galleries\\/10.jpg\",\"description\":\"Vitae nesciunt fugit numquam doloremque est totam et. Esse qui quia voluptatibus iure sit et.\"}]',5,'Botble\\Gallery\\Models\\Gallery','2021-07-11 09:29:25','2021-07-11 09:29:25'),
	(6,'[{\"img\":\"galleries\\/1.jpg\",\"description\":\"Maxime ut cupiditate expedita facilis aliquam. Fugiat laudantium alias alias ut velit vel. Magni ipsa accusantium voluptatibus.\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"Sed ea sed aspernatur beatae blanditiis ullam. Rerum possimus odit voluptatibus qui totam placeat. Consequatur officia explicabo maxime labore rerum.\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"Numquam quis sunt autem maiores quas. Blanditiis tempora est aperiam officia. Et id aliquid maiores amet incidunt minus in.\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"Magni laudantium occaecati placeat aut. Est accusamus ab eveniet quos sequi et ad. Architecto et officia nostrum.\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"Modi iure ea quos quo at sint id. Laudantium a vitae enim voluptatem repellendus molestiae temporibus quis. Natus et recusandae nihil.\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"Totam quas quaerat eum possimus voluptate. In quaerat saepe vel. Cum totam impedit maxime. Qui ad necessitatibus aliquam fugit.\"},{\"img\":\"galleries\\/7.jpg\",\"description\":\"Ut magnam quis maxime deserunt dicta. Iure quia provident velit et et. Quia aut sint voluptas facilis magnam incidunt non.\"},{\"img\":\"galleries\\/8.jpg\",\"description\":\"Quaerat est aliquam perspiciatis voluptas sunt nesciunt ipsa. Voluptatem minus in eos omnis sint animi aperiam. Quis eum quos quae qui consectetur.\"},{\"img\":\"galleries\\/9.jpg\",\"description\":\"Nisi nulla minus nesciunt veritatis. Voluptatem esse iure laborum occaecati nisi. Nemo voluptas sit magnam minus facere.\"},{\"img\":\"galleries\\/10.jpg\",\"description\":\"Odio quia repellat iure temporibus qui numquam qui. Cum adipisci illo sapiente provident vel in sunt.\"}]',6,'Botble\\Gallery\\Models\\Gallery','2021-07-11 09:29:25','2021-07-11 09:29:25'),
	(7,'[{\"img\":\"galleries\\/1.jpg\",\"description\":\"Aperiam maiores est necessitatibus sint. Eius debitis in eum aut eligendi sed in. Atque nulla similique non ducimus nihil est. Ipsum ut quo nam aut.\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"Eum quo quo libero dignissimos ut sint. Est neque est ut. Ipsa illum enim id vitae et nam.\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"Accusantium eos repellendus in aut. Consectetur sint nisi molestiae suscipit nesciunt et animi.\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"Quidem ea est quia nulla commodi eum. Enim exercitationem non deleniti non. Cumque aut est omnis voluptates quia repellat.\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"Sint ut voluptas dolorum vitae ratione possimus. Et eos itaque et ea dicta. Rerum consequuntur est ut eius. Molestias corporis magnam quis rem.\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"Aspernatur molestias amet libero est cumque. Iste facere mollitia numquam quo molestias. Quas consequatur modi ut quo error.\"},{\"img\":\"galleries\\/7.jpg\",\"description\":\"Cumque dolorum fuga libero. Earum culpa in natus ipsum. Fugiat quam cumque necessitatibus magni.\"},{\"img\":\"galleries\\/8.jpg\",\"description\":\"Occaecati beatae ad et nisi. Provident praesentium aliquam perspiciatis sunt quam ut.\"},{\"img\":\"galleries\\/9.jpg\",\"description\":\"Sit dicta deleniti aliquid temporibus. Labore repellendus eligendi non eveniet ad modi. Quo commodi reprehenderit magnam omnis velit odit placeat.\"},{\"img\":\"galleries\\/10.jpg\",\"description\":\"Perspiciatis minus rerum illo iste qui et. Aut voluptatum ut quae tenetur veniam reprehenderit. Aut nulla voluptatem nesciunt hic reprehenderit.\"}]',7,'Botble\\Gallery\\Models\\Gallery','2021-07-11 09:29:25','2021-07-11 09:29:25'),
	(8,'[{\"img\":\"galleries\\/1.jpg\",\"description\":\"Quas delectus eius harum. Quasi totam dolores non et id labore. Commodi deleniti et odio. Veritatis blanditiis id eveniet aut et et aliquid.\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"Est vel ratione sed incidunt modi ipsa explicabo. Voluptates eos impedit et assumenda eum. Molestias non facilis quo sed voluptatem eligendi impedit.\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"Tenetur dolorem quis eum explicabo. Aspernatur sint nulla nisi nihil sed. Enim eos sed rerum tenetur id repellat dolorem amet.\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"Molestiae et quis ab accusamus minima eius. Maxime ipsa reprehenderit laboriosam cum dignissimos non minima.\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"Aut laudantium quia tempora id provident iusto odit. Esse amet minima occaecati et harum iure exercitationem. Est quisquam aspernatur quis ea non.\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"Quo soluta cupiditate porro omnis et. Odio maiores hic est perspiciatis eligendi dolorum dolorem. Et harum ea incidunt minima modi libero enim.\"},{\"img\":\"galleries\\/7.jpg\",\"description\":\"Quia excepturi est qui omnis. Autem tempore repellendus sed. Tempora ut aut quisquam dolores animi.\"},{\"img\":\"galleries\\/8.jpg\",\"description\":\"Quasi enim eius quam veritatis aut molestiae quidem. Ab ipsum quia nulla veniam. Rerum dolor libero in mollitia aliquam neque eligendi.\"},{\"img\":\"galleries\\/9.jpg\",\"description\":\"Reiciendis atque ut enim odit cum rerum eaque. Illo fugiat ut illo corporis. Et laboriosam corporis autem ab repellendus.\"},{\"img\":\"galleries\\/10.jpg\",\"description\":\"Voluptate rerum et ducimus exercitationem eum aut. Et omnis fugiat quas nihil ut. Nihil enim velit ratione laudantium in perferendis rerum.\"}]',8,'Botble\\Gallery\\Models\\Gallery','2021-07-11 09:29:25','2021-07-11 09:29:25'),
	(9,'[{\"img\":\"galleries\\/1.jpg\",\"description\":\"Deleniti fugiat praesentium delectus et. Nihil distinctio voluptas quis dolore est accusantium. Possimus accusantium et cupiditate harum tempora vel.\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"Et debitis harum dolorum incidunt optio quaerat aspernatur. Quia voluptas quo error veritatis voluptates. Quia eveniet odio nesciunt eius inventore.\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"Repudiandae eligendi rerum ab. Aut magnam similique est alias.\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"Aspernatur enim eum quia in qui. Laboriosam similique optio tenetur inventore.\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"Laudantium accusamus mollitia ut non commodi est. Qui mollitia odit et ut ut ut. Ut sunt aliquid harum qui modi fugit.\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"Exercitationem soluta sequi accusantium et. Inventore sapiente incidunt sed ut voluptatem repellat sequi autem. Ullam soluta eos modi itaque sunt.\"},{\"img\":\"galleries\\/7.jpg\",\"description\":\"Magni ut voluptates blanditiis voluptates fugit voluptas et. Omnis quia nostrum praesentium rerum culpa id. Quae pariatur veniam rem libero sequi.\"},{\"img\":\"galleries\\/8.jpg\",\"description\":\"Veritatis perferendis provident omnis. Aut voluptatibus id est. Odio delectus similique voluptates qui nostrum hic.\"},{\"img\":\"galleries\\/9.jpg\",\"description\":\"Impedit explicabo enim sapiente nostrum natus architecto. Enim cumque illum et quam quae ducimus quia.\"},{\"img\":\"galleries\\/10.jpg\",\"description\":\"Fugit ut voluptate et. Saepe hic qui omnis eveniet nam et. Consequuntur dolor dolore rerum. Corrupti laboriosam cum vitae sint saepe.\"}]',9,'Botble\\Gallery\\Models\\Gallery','2021-07-11 09:29:25','2021-07-11 09:29:25'),
	(10,'[{\"img\":\"galleries\\/1.jpg\",\"description\":\"Reiciendis ex occaecati distinctio non. Dicta odio nulla eum voluptas. Ipsa culpa et ut assumenda.\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"Ut non cum enim perferendis aut. Laborum illum doloremque et rerum doloribus incidunt nam. Accusantium aut suscipit quisquam rerum minus quis odit.\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"Tempore mollitia ab nulla in voluptate. Explicabo consequatur eius vitae. Aut modi corrupti voluptas et pariatur similique nulla hic.\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"Nisi consequatur aut cupiditate quia accusamus. Eligendi consectetur cumque aut soluta veritatis. Neque quisquam qui quae est omnis.\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"Pariatur harum officia molestias sunt et. Praesentium harum sunt cupiditate rerum dolore. Sapiente temporibus rerum sed voluptas maxime.\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"Id at accusantium dicta ad. Molestias qui animi quos velit blanditiis. Aliquam eos in numquam rerum aut. Unde alias sed numquam natus ratione odit.\"},{\"img\":\"galleries\\/7.jpg\",\"description\":\"Velit quo rerum quia eum. Illum asperiores optio fugit vel facere excepturi. Ea sunt quos neque reprehenderit nihil et veniam aliquid.\"},{\"img\":\"galleries\\/8.jpg\",\"description\":\"Sapiente nemo in molestias neque est. Tenetur voluptas nulla ipsa assumenda delectus. Sint a voluptates neque iure enim et.\"},{\"img\":\"galleries\\/9.jpg\",\"description\":\"Minus et optio minus dolores eos. Voluptatem voluptatem et perferendis. Eveniet iusto qui sint incidunt quo quia accusantium.\"},{\"img\":\"galleries\\/10.jpg\",\"description\":\"Architecto corrupti beatae laborum maiores iste. Autem impedit eaque sapiente maiores. Incidunt ut optio blanditiis corrupti.\"}]',10,'Botble\\Gallery\\Models\\Gallery','2021-07-11 09:29:25','2021-07-11 09:29:25'),
	(11,'[{\"img\":\"galleries\\/1.jpg\",\"description\":\"Et qui ipsum alias dolores. Enim ut enim quod aspernatur repellat. Tempore voluptas et voluptas velit.\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"Quas culpa omnis non. Ratione sit quas consequatur inventore. Recusandae et doloribus deserunt porro quos aut.\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"Ipsum et sint ut voluptate. Expedita sed omnis nam assumenda reiciendis numquam. Non quae quasi consequuntur. Maiores et quae nobis mollitia officia.\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"Dolores est itaque totam et. Aliquam voluptas at totam enim. Aut architecto nemo in earum molestias est quis doloribus.\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"Rem molestiae dolore est natus. Nemo tempore debitis aliquam sit nesciunt.\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"Est aut ut minima consectetur rem distinctio explicabo. Et soluta deleniti est corrupti reprehenderit cumque eveniet ad.\"},{\"img\":\"galleries\\/7.jpg\",\"description\":\"Provident ipsam ipsa quia. Quasi aut ad et voluptas iure. Quo voluptatem voluptatum est est repellendus. Omnis maiores ex quis qui facilis.\"},{\"img\":\"galleries\\/8.jpg\",\"description\":\"Quibusdam non ea non nostrum sed eaque repellat vel. Sapiente ab nihil quaerat quam deserunt est repudiandae. Delectus quo est voluptatum quo.\"},{\"img\":\"galleries\\/9.jpg\",\"description\":\"Ut omnis eum saepe neque mollitia. Consectetur enim saepe corrupti cumque libero. Et ratione voluptas amet qui.\"},{\"img\":\"galleries\\/10.jpg\",\"description\":\"Saepe veniam quia non. Repudiandae quasi quia maiores eos fugiat reprehenderit et sit. Quia et hic omnis libero et.\"}]',11,'Botble\\Gallery\\Models\\Gallery','2021-07-11 09:29:25','2021-07-11 09:29:25'),
	(12,'[{\"img\":\"galleries\\/1.jpg\",\"description\":\"Ipsa ut dolor totam qui velit. Necessitatibus voluptas sit odio amet beatae. Totam in maiores nobis voluptas.\"},{\"img\":\"galleries\\/2.jpg\",\"description\":\"Quis excepturi tenetur ea odit. Aperiam sint repellat voluptate minus alias itaque. Repudiandae nisi nam exercitationem labore rerum qui.\"},{\"img\":\"galleries\\/3.jpg\",\"description\":\"Quia voluptates assumenda dolor voluptate. Provident facere ut praesentium illo veniam.\"},{\"img\":\"galleries\\/4.jpg\",\"description\":\"Est quo earum laudantium et et. Nulla vitae officia aut ducimus quod sed aut voluptatem. Nihil exercitationem odio omnis alias facilis non.\"},{\"img\":\"galleries\\/5.jpg\",\"description\":\"Ut debitis possimus nemo autem. Porro reprehenderit nisi incidunt rem.\"},{\"img\":\"galleries\\/6.jpg\",\"description\":\"Illo animi totam omnis. Facere quod est magnam quas eaque molestias. Voluptatum aut magni sapiente et esse et.\"},{\"img\":\"galleries\\/7.jpg\",\"description\":\"Impedit ut et dolores eligendi incidunt voluptas eum. Sequi magni temporibus praesentium.\"},{\"img\":\"galleries\\/8.jpg\",\"description\":\"Ipsum voluptatem possimus magnam sed impedit. Et excepturi in qui qui ab architecto tempora. Ut non hic sint est.\"},{\"img\":\"galleries\\/9.jpg\",\"description\":\"Quia est ea officiis eos. Qui facere et expedita. Eum impedit voluptatem facilis magni id. Vel consectetur ducimus hic.\"},{\"img\":\"galleries\\/10.jpg\",\"description\":\"Sed illo a sed consequuntur rerum. Repellat voluptatum quo eius magni ut et et. Et suscipit culpa ullam vel.\"}]',12,'Botble\\Gallery\\Models\\Gallery','2021-07-11 09:29:25','2021-07-11 09:29:25'),
	(13,NULL,1,'Botble\\Page\\Models\\Page','2021-07-12 03:40:33','2021-07-12 03:40:33');

/*!40000 ALTER TABLE `gallery_meta` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table jobs
# ------------------------------------------------------------

DROP TABLE IF EXISTS `jobs`;

CREATE TABLE `jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) unsigned NOT NULL,
  `reserved_at` int(10) unsigned DEFAULT NULL,
  `available_at` int(10) unsigned NOT NULL,
  `created_at` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table language_meta
# ------------------------------------------------------------

DROP TABLE IF EXISTS `language_meta`;

CREATE TABLE `language_meta` (
  `lang_meta_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lang_meta_code` text COLLATE utf8mb4_unicode_ci,
  `lang_meta_origin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` int(10) unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`lang_meta_id`),
  KEY `language_meta_reference_id_index` (`reference_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `language_meta` WRITE;
/*!40000 ALTER TABLE `language_meta` DISABLE KEYS */;

INSERT INTO `language_meta` (`lang_meta_id`, `lang_meta_code`, `lang_meta_origin`, `reference_id`, `reference_type`)
VALUES
	(1,'en_US','820410b85c7aebf20d1f304f37f352bc',1,'Botble\\Page\\Models\\Page'),
	(2,'en_US','802c60a6a0e080763aa04f8521db43d3',2,'Botble\\Page\\Models\\Page'),
	(3,'vi','820410b85c7aebf20d1f304f37f352bc',3,'Botble\\Page\\Models\\Page'),
	(4,'vi','802c60a6a0e080763aa04f8521db43d3',4,'Botble\\Page\\Models\\Page'),
	(5,'en_US','b00db0db4f4726b914826cf117af5687',1,'Botble\\Gallery\\Models\\Gallery'),
	(6,'en_US','bb11a38cf28c57bbeede76d34bd18cd5',2,'Botble\\Gallery\\Models\\Gallery'),
	(7,'en_US','2066b240b75dcf930bce9a64a13fda7b',3,'Botble\\Gallery\\Models\\Gallery'),
	(8,'en_US','ecf4bf39bd297c0e360c5ed046c29682',4,'Botble\\Gallery\\Models\\Gallery'),
	(9,'en_US','379f2ae5ea3357860cf008cbc8bcc3b9',5,'Botble\\Gallery\\Models\\Gallery'),
	(10,'en_US','c7b7fd2c967725787fa5385aeffeaedd',6,'Botble\\Gallery\\Models\\Gallery'),
	(11,'vi','b00db0db4f4726b914826cf117af5687',7,'Botble\\Gallery\\Models\\Gallery'),
	(12,'vi','bb11a38cf28c57bbeede76d34bd18cd5',8,'Botble\\Gallery\\Models\\Gallery'),
	(13,'vi','2066b240b75dcf930bce9a64a13fda7b',9,'Botble\\Gallery\\Models\\Gallery'),
	(14,'vi','ecf4bf39bd297c0e360c5ed046c29682',10,'Botble\\Gallery\\Models\\Gallery'),
	(15,'vi','379f2ae5ea3357860cf008cbc8bcc3b9',11,'Botble\\Gallery\\Models\\Gallery'),
	(16,'vi','c7b7fd2c967725787fa5385aeffeaedd',12,'Botble\\Gallery\\Models\\Gallery'),
	(17,'en_US','96b0732833823a3716b9ea0cbdb26f55',1,'Botble\\Blog\\Models\\Category'),
	(18,'en_US','e3a5b1b4d908481a8269aba9ecb36c99',2,'Botble\\Blog\\Models\\Category'),
	(19,'en_US','f321145fae172101a65345cfb1390d10',3,'Botble\\Blog\\Models\\Category'),
	(20,'en_US','d38c18d1baa219abcdf04b2152b662d6',4,'Botble\\Blog\\Models\\Category'),
	(21,'en_US','86aeb3591232f5b4f3c878058a873bc9',5,'Botble\\Blog\\Models\\Category'),
	(22,'en_US','fbdf6bda9cfd29b5a37b2c817bf5cbcb',6,'Botble\\Blog\\Models\\Category'),
	(23,'en_US','b496d7d7f20634a3754ce9830efdde5c',7,'Botble\\Blog\\Models\\Category'),
	(24,'vi','96b0732833823a3716b9ea0cbdb26f55',8,'Botble\\Blog\\Models\\Category'),
	(25,'vi','e3a5b1b4d908481a8269aba9ecb36c99',9,'Botble\\Blog\\Models\\Category'),
	(26,'vi','f321145fae172101a65345cfb1390d10',10,'Botble\\Blog\\Models\\Category'),
	(27,'vi','d38c18d1baa219abcdf04b2152b662d6',11,'Botble\\Blog\\Models\\Category'),
	(28,'vi','86aeb3591232f5b4f3c878058a873bc9',12,'Botble\\Blog\\Models\\Category'),
	(29,'vi','fbdf6bda9cfd29b5a37b2c817bf5cbcb',13,'Botble\\Blog\\Models\\Category'),
	(30,'vi','b496d7d7f20634a3754ce9830efdde5c',14,'Botble\\Blog\\Models\\Category'),
	(31,'en_US','6e2f0de8a0eeb19563d9bc902f394fe4',1,'Botble\\Blog\\Models\\Tag'),
	(32,'en_US','53ff4d980c0145d4017db722ed4e2234',2,'Botble\\Blog\\Models\\Tag'),
	(33,'en_US','2d648bfb4ca09153c251ba1e4d512490',3,'Botble\\Blog\\Models\\Tag'),
	(34,'en_US','addbb238451f145d2a8b943fd63eee5b',4,'Botble\\Blog\\Models\\Tag'),
	(35,'en_US','2993bbe0b7356dce35d143efdc47fcd9',5,'Botble\\Blog\\Models\\Tag'),
	(36,'vi','6e2f0de8a0eeb19563d9bc902f394fe4',6,'Botble\\Blog\\Models\\Tag'),
	(37,'vi','53ff4d980c0145d4017db722ed4e2234',7,'Botble\\Blog\\Models\\Tag'),
	(38,'vi','2d648bfb4ca09153c251ba1e4d512490',8,'Botble\\Blog\\Models\\Tag'),
	(39,'vi','addbb238451f145d2a8b943fd63eee5b',9,'Botble\\Blog\\Models\\Tag'),
	(40,'vi','2993bbe0b7356dce35d143efdc47fcd9',10,'Botble\\Blog\\Models\\Tag'),
	(41,'en_US','616952e0727dfdef241de340bca960d4',1,'Botble\\Blog\\Models\\Post'),
	(42,'en_US','cd39ebb6c1fcfe55136190ff04b12c63',2,'Botble\\Blog\\Models\\Post'),
	(43,'en_US','c4d51393947b7ce8fd0f8861716811ff',3,'Botble\\Blog\\Models\\Post'),
	(44,'en_US','7b355c6f029d8c3e983ad24dd497a678',4,'Botble\\Blog\\Models\\Post'),
	(45,'en_US','300be5f9e1da2484d11ff8d76a032867',5,'Botble\\Blog\\Models\\Post'),
	(46,'en_US','20815e7e38765c70dfadf81e69dbab50',6,'Botble\\Blog\\Models\\Post'),
	(47,'en_US','932529f7283f418305d80774641c119f',7,'Botble\\Blog\\Models\\Post'),
	(48,'en_US','bd19784b4ad934e9e080a7e930c07adb',8,'Botble\\Blog\\Models\\Post'),
	(49,'en_US','ae775c28d5c27bd6c74a42f996a736e2',9,'Botble\\Blog\\Models\\Post'),
	(50,'en_US','596486a1a56cb824d1da249930b6850c',10,'Botble\\Blog\\Models\\Post'),
	(51,'en_US','4e9ec3f4688518157ac9a93d815688a2',11,'Botble\\Blog\\Models\\Post'),
	(52,'en_US','2967bdd4ac8d10835990c7c3b1f850e0',12,'Botble\\Blog\\Models\\Post'),
	(53,'en_US','8d50d637f759a2636e13af091bccea29',13,'Botble\\Blog\\Models\\Post'),
	(54,'en_US','ffa5d71f3c597fbde82aca043f05aa81',14,'Botble\\Blog\\Models\\Post'),
	(55,'en_US','dbf4ab0ea4413e019b0264471b40fac7',15,'Botble\\Blog\\Models\\Post'),
	(56,'en_US','e096b85e6cb5a55a385de0aa98d54498',16,'Botble\\Blog\\Models\\Post'),
	(57,'vi','616952e0727dfdef241de340bca960d4',17,'Botble\\Blog\\Models\\Post'),
	(58,'vi','cd39ebb6c1fcfe55136190ff04b12c63',18,'Botble\\Blog\\Models\\Post'),
	(59,'vi','c4d51393947b7ce8fd0f8861716811ff',19,'Botble\\Blog\\Models\\Post'),
	(60,'vi','7b355c6f029d8c3e983ad24dd497a678',20,'Botble\\Blog\\Models\\Post'),
	(61,'vi','300be5f9e1da2484d11ff8d76a032867',21,'Botble\\Blog\\Models\\Post'),
	(62,'vi','20815e7e38765c70dfadf81e69dbab50',22,'Botble\\Blog\\Models\\Post'),
	(63,'vi','932529f7283f418305d80774641c119f',23,'Botble\\Blog\\Models\\Post'),
	(64,'vi','bd19784b4ad934e9e080a7e930c07adb',24,'Botble\\Blog\\Models\\Post'),
	(65,'vi','ae775c28d5c27bd6c74a42f996a736e2',25,'Botble\\Blog\\Models\\Post'),
	(66,'vi','596486a1a56cb824d1da249930b6850c',26,'Botble\\Blog\\Models\\Post'),
	(67,'vi','4e9ec3f4688518157ac9a93d815688a2',27,'Botble\\Blog\\Models\\Post'),
	(68,'vi','2967bdd4ac8d10835990c7c3b1f850e0',28,'Botble\\Blog\\Models\\Post'),
	(69,'vi','8d50d637f759a2636e13af091bccea29',29,'Botble\\Blog\\Models\\Post'),
	(70,'vi','ffa5d71f3c597fbde82aca043f05aa81',30,'Botble\\Blog\\Models\\Post'),
	(71,'vi','dbf4ab0ea4413e019b0264471b40fac7',31,'Botble\\Blog\\Models\\Post'),
	(72,'vi','e096b85e6cb5a55a385de0aa98d54498',32,'Botble\\Blog\\Models\\Post'),
	(73,'en_US','1b0da4ebd9277506dbec11fc2afadd44',1,'Botble\\Menu\\Models\\MenuLocation'),
	(74,'en_US','2ed34300d66e4c04e77234d251d8f2fe',1,'Botble\\Menu\\Models\\Menu'),
	(75,'en_US','bf16e9ca9038d75e5c54a4febde1291b',2,'Botble\\Menu\\Models\\Menu'),
	(76,'en_US','0499eb252b8acaf0787d7befda49a4ff',3,'Botble\\Menu\\Models\\Menu'),
	(77,'en_US','08337036915c4457e9b1d30158f93bf8',4,'Botble\\Menu\\Models\\Menu'),
	(78,'en_US','5cfe9655cd0404046ccc62ce2589e063',5,'Botble\\Menu\\Models\\Menu'),
	(79,'vi','feb56bc8960db9a3aa64afce69ed7959',2,'Botble\\Menu\\Models\\MenuLocation'),
	(80,'vi','2ed34300d66e4c04e77234d251d8f2fe',6,'Botble\\Menu\\Models\\Menu'),
	(81,'vi','bf16e9ca9038d75e5c54a4febde1291b',7,'Botble\\Menu\\Models\\Menu'),
	(82,'vi','0499eb252b8acaf0787d7befda49a4ff',8,'Botble\\Menu\\Models\\Menu'),
	(83,'vi','08337036915c4457e9b1d30158f93bf8',9,'Botble\\Menu\\Models\\Menu'),
	(84,'vi','5cfe9655cd0404046ccc62ce2589e063',10,'Botble\\Menu\\Models\\Menu'),
	(85,'en_US','a7fffe245389858879853a23109ada68',1,'Botble\\Block\\Models\\Block'),
	(86,'en_US','f138be75ccce20f4bf173102c04f6553',2,'Botble\\Block\\Models\\Block'),
	(87,'en_US','7087322b19b941f3aaf92a29fe047a0f',3,'Botble\\Block\\Models\\Block'),
	(88,'en_US','9460351ed838dee90b48f8c9a32bead7',4,'Botble\\Block\\Models\\Block'),
	(89,'en_US','8e974a59fc7ab7a463a91d9d3488d56c',5,'Botble\\Block\\Models\\Block'),
	(90,'en_US','be49351732d27de0ca87b4a5bc49659d',1,'Botble\\Card\\Models\\Card'),
	(91,'en_US','5f0d2d7bb1bea9c9ee871733f7346091',2,'Botble\\Card\\Models\\Card'),
	(92,'en_US','947f0d006d8d7ff6fd432b8e37e5b8c5',1,'Botble\\Social\\Models\\Social'),
	(93,'en_US','bfda9277cb3a5632f5ec9d4d40031820',1,'Botble\\Account\\Models\\Account'),
	(94,'en_US','2f514489337881b6e5a9958ef0a23be0',3,'Botble\\Menu\\Models\\MenuLocation'),
	(95,'en_US','559f13a066ac2bdfc7cee8e62d273888',11,'Botble\\Menu\\Models\\Menu'),
	(96,'en_US','3860e3372531799d79b709ed161c01ab',4,'Botble\\Menu\\Models\\MenuLocation'),
	(97,'en_US','c29c6a1cc60e4bfc4e97496e3acc9b14',2,'Botble\\Social\\Models\\Social'),
	(98,'en_US','12e3c27970f1374e033ac0da5148d528',2,'Botble\\Account\\Models\\Account'),
	(99,'en_US','82e03ad46e6a381e4f5a79d5d91831e5',3,'Botble\\Account\\Models\\Account'),
	(100,'en_US','f0545cc9f160c6b5270fab039b879cdf',1,'Botble\\Product\\Models\\Product'),
	(101,'en_US','b285f5f5ae6eafcda6a66057c9366ac2',2,'Botble\\Product\\Models\\Product'),
	(102,'en_US','e62ad09d684801ee330b7142a9245f6f',3,'Botble\\Product\\Models\\Product'),
	(103,'en_US','653312debf471a7d92ab1cb96698cf02',5,'Botble\\Menu\\Models\\MenuLocation'),
	(104,'en_US','c79ad794c5257e4434c1245074abbe19',1,'Botble\\Portfolio\\Models\\Portfolio'),
	(105,'en_US','c9da5a222e94cb4b3316d89f9517d571',2,'Botble\\Portfolio\\Models\\Portfolio'),
	(106,'en_US','5193d1cf2ab951e14903931485523b57',3,'Botble\\Portfolio\\Models\\Portfolio'),
	(107,'en_US','1d8c85093faac386350bc65567b5557e',4,'Botble\\Portfolio\\Models\\Portfolio'),
	(108,'en_US','e001c8f4bf601ac79de4655565760448',5,'Botble\\Portfolio\\Models\\Portfolio'),
	(109,'en_US','4ad409645b01560d101eb6bc59ca53de',6,'Botble\\Portfolio\\Models\\Portfolio'),
	(110,'en_US','29bd7dca0eb5073805dbfe4ca193256d',7,'Botble\\Portfolio\\Models\\Portfolio');

/*!40000 ALTER TABLE `language_meta` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table languages
# ------------------------------------------------------------

DROP TABLE IF EXISTS `languages`;

CREATE TABLE `languages` (
  `lang_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lang_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_locale` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_flag` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_is_default` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `lang_order` int(11) NOT NULL DEFAULT '0',
  `lang_is_rtl` tinyint(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;

INSERT INTO `languages` (`lang_id`, `lang_name`, `lang_locale`, `lang_code`, `lang_flag`, `lang_is_default`, `lang_order`, `lang_is_rtl`)
VALUES
	(1,'English','en','en_US','us',1,0,0),
	(2,'Tiếng Việt','vi','vi','vn',0,0,0);

/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table media_files
# ------------------------------------------------------------

DROP TABLE IF EXISTS `media_files`;

CREATE TABLE `media_files` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `folder_id` int(10) unsigned NOT NULL DEFAULT '0',
  `mime_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int(11) NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `media_files_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `media_files` WRITE;
/*!40000 ALTER TABLE `media_files` DISABLE KEYS */;

INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`)
VALUES
	(32,0,'1',5,'image/jpeg',42814,'galleries/1.jpg','[]','2021-07-11 09:29:24','2021-07-11 09:29:24',NULL),
	(33,0,'10',5,'image/jpeg',95796,'galleries/10.jpg','[]','2021-07-11 09:29:24','2021-07-11 09:29:24',NULL),
	(34,0,'2',5,'image/jpeg',43108,'galleries/2.jpg','[]','2021-07-11 09:29:24','2021-07-11 09:29:24',NULL),
	(35,0,'3',5,'image/jpeg',67060,'galleries/3.jpg','[]','2021-07-11 09:29:24','2021-07-11 09:29:24',NULL),
	(36,0,'4',5,'image/jpeg',60609,'galleries/4.jpg','[]','2021-07-11 09:29:24','2021-07-11 09:29:24',NULL),
	(37,0,'5',5,'image/jpeg',70264,'galleries/5.jpg','[]','2021-07-11 09:29:24','2021-07-11 09:29:24',NULL),
	(38,0,'6',5,'image/jpeg',40607,'galleries/6.jpg','[]','2021-07-11 09:29:24','2021-07-11 09:29:24',NULL),
	(39,0,'7',5,'image/jpeg',41491,'galleries/7.jpg','[]','2021-07-11 09:29:24','2021-07-11 09:29:24',NULL),
	(40,0,'8',5,'image/jpeg',58063,'galleries/8.jpg','[]','2021-07-11 09:29:24','2021-07-11 09:29:24',NULL),
	(41,0,'9',5,'image/jpeg',69288,'galleries/9.jpg','[]','2021-07-11 09:29:25','2021-07-11 09:29:25',NULL),
	(42,0,'1',6,'image/jpeg',37471,'news/1.jpg','[]','2021-07-11 09:29:25','2021-07-11 09:29:25',NULL),
	(43,0,'10',6,'image/jpeg',40607,'news/10.jpg','[]','2021-07-11 09:29:25','2021-07-11 09:29:25',NULL),
	(44,0,'11',6,'image/jpeg',82629,'news/11.jpg','[]','2021-07-11 09:29:25','2021-07-11 09:29:25',NULL),
	(45,0,'12',6,'image/jpeg',119904,'news/12.jpg','[]','2021-07-11 09:29:25','2021-07-11 09:29:25',NULL),
	(46,0,'13',6,'image/jpeg',89543,'news/13.jpg','[]','2021-07-11 09:29:25','2021-07-11 09:29:25',NULL),
	(47,0,'14',6,'image/jpeg',51573,'news/14.jpg','[]','2021-07-11 09:29:25','2021-07-11 09:29:25',NULL),
	(48,0,'15',6,'image/jpeg',41164,'news/15.jpg','[]','2021-07-11 09:29:25','2021-07-11 09:29:25',NULL),
	(49,0,'16',6,'image/jpeg',80696,'news/16.jpg','[]','2021-07-11 09:29:25','2021-07-11 09:29:25',NULL),
	(50,0,'2',6,'image/jpeg',95796,'news/2.jpg','[]','2021-07-11 09:29:25','2021-07-11 09:29:25',NULL),
	(51,0,'3',6,'image/jpeg',81399,'news/3.jpg','[]','2021-07-11 09:29:26','2021-07-11 09:29:26',NULL),
	(52,0,'4',6,'image/jpeg',68906,'news/4.jpg','[]','2021-07-11 09:29:26','2021-07-11 09:29:26',NULL),
	(53,0,'5',6,'image/jpeg',63094,'news/5.jpg','[]','2021-07-11 09:29:26','2021-07-11 09:29:26',NULL),
	(54,0,'6',6,'image/jpeg',89733,'news/6.jpg','[]','2021-07-11 09:29:26','2021-07-11 09:29:26',NULL),
	(55,0,'7',6,'image/jpeg',43998,'news/7.jpg','[]','2021-07-11 09:29:26','2021-07-11 09:29:26',NULL),
	(56,0,'8',6,'image/jpeg',68906,'news/8.jpg','[]','2021-07-11 09:29:26','2021-07-11 09:29:26',NULL),
	(57,0,'9',6,'image/jpeg',58063,'news/9.jpg','[]','2021-07-11 09:29:26','2021-07-11 09:29:26',NULL),
	(58,0,'300x250',7,'image/jpeg',30686,'widgets/300x250.jpg','[]','2021-07-11 09:29:27','2021-07-11 09:29:27',NULL),
	(59,0,'728x90',8,'image/jpeg',25788,'general/728x90.jpg','[]','2021-07-11 09:29:28','2021-07-11 09:29:28',NULL),
	(60,0,'favicon',8,'image/png',20261,'general/favicon.png','[]','2021-07-11 09:29:28','2021-07-11 09:29:28',NULL),
	(61,0,'newstv-logo',8,'image/png',3161,'general/newstv-logo.png','[]','2021-07-11 09:29:28','2021-07-11 09:29:28',NULL),
	(62,0,'ripple-logo',8,'image/png',246804,'general/ripple-logo.png','[]','2021-07-11 09:29:28','2021-07-11 09:29:28',NULL),
	(64,1,'logo-light@2x',10,'image/png',4000,'logo/logo-light-at-2x.png','[]','2021-07-13 16:32:19','2021-07-13 16:32:19',NULL),
	(65,1,'logo-dark@2x',10,'image/png',4497,'logo/logo-dark-at-2x.png','[]','2021-07-13 16:34:09','2021-07-13 16:34:09',NULL),
	(68,1,'Loan',11,'image/jpeg',101376,'avatars/loan.jpg','[]','2021-07-26 07:42:12','2021-07-26 07:42:12',NULL),
	(70,1,'facebook',9,'image/png',2449,'social-icons/facebook.png','[]','2021-07-26 08:29:10','2021-07-26 08:29:10',NULL),
	(71,1,'viettinbank',9,'image/png',3657,'social-icons/viettinbank.png','[]','2021-07-26 09:00:21','2021-07-26 09:00:21',NULL),
	(73,1,'default-avatar',11,'image/png',2449,'avatars/default-avatar.png','[]','2021-07-26 10:45:10','2021-07-26 10:45:10',NULL),
	(74,1,'hang',11,'image/jpeg',237192,'avatars/hang.jpg','[]','2021-07-27 13:44:31','2021-07-27 13:44:31',NULL),
	(75,0,'avatar',11,'image/png',110627,'avatars/avatar.png','[]','2021-08-05 06:25:04','2021-08-05 06:25:04',NULL),
	(76,0,'avatar-1',11,'image/png',110627,'avatars/avatar-1.png','[]','2021-08-05 06:25:51','2021-08-05 06:25:51',NULL),
	(77,0,'avatar-2',11,'image/png',110627,'avatars/avatar-2.png','[]','2021-08-05 06:26:07','2021-08-05 06:26:07',NULL),
	(78,0,'avatar-3',11,'image/png',110627,'avatars/avatar-3.png','[]','2021-08-05 06:28:28','2021-08-05 06:28:28',NULL),
	(79,1,'canvasone@2x',10,'image/png',1412,'logo/canvasone-at-2x.png','[]','2021-08-16 02:53:49','2021-08-16 02:53:49',NULL),
	(80,1,'watch-3',12,'image/png',50839,'products/watch-3.png','[]','2021-08-16 04:07:15','2021-08-16 04:07:15',NULL),
	(81,1,'watch-2',12,'image/png',54441,'products/watch-2.png','[]','2021-08-16 04:07:15','2021-08-16 04:07:15',NULL),
	(82,1,'watch-1',12,'image/png',201638,'products/watch-1.png','[]','2021-08-16 04:07:15','2021-08-16 04:07:15',NULL),
	(83,1,'GOLogo',10,'image/png',15012,'logo/gologo.png','[]','2021-08-16 16:47:41','2021-08-16 16:47:41',NULL),
	(84,1,'GOTapDen',12,'image/png',47581,'products/gotapden.png','[]','2021-08-16 16:51:53','2021-08-16 16:51:53',NULL),
	(85,1,'GOTapVang',12,'image/png',50218,'products/gotapvang.png','[]','2021-08-16 16:57:23','2021-08-16 16:57:23',NULL),
	(86,1,'GOTapXanh',12,'image/png',50071,'products/gotapxanh.png','[]','2021-08-16 17:00:36','2021-08-16 17:00:36',NULL),
	(87,1,'7',13,'image/jpeg',11117,'portfolio/7.jpg','[]','2021-08-17 04:04:47','2021-08-17 04:04:47',NULL),
	(88,1,'6',13,'image/jpeg',10869,'portfolio/6.jpg','[]','2021-08-17 04:04:47','2021-08-17 04:04:47',NULL),
	(89,1,'5',13,'image/jpeg',35914,'portfolio/5.jpg','[]','2021-08-17 04:04:47','2021-08-17 04:04:47',NULL),
	(90,1,'4',13,'image/jpeg',30424,'portfolio/4.jpg','[]','2021-08-17 04:04:48','2021-08-17 04:04:48',NULL),
	(91,1,'3',13,'image/jpeg',17464,'portfolio/3.jpg','[]','2021-08-17 04:04:48','2021-08-17 04:04:48',NULL),
	(92,1,'2',13,'image/jpeg',5290,'portfolio/2.jpg','[]','2021-08-17 04:04:48','2021-08-17 04:04:48',NULL),
	(93,1,'1',13,'image/jpeg',52392,'portfolio/1.jpg','[]','2021-08-17 04:04:48','2021-08-17 04:04:48',NULL);

/*!40000 ALTER TABLE `media_files` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table media_folders
# ------------------------------------------------------------

DROP TABLE IF EXISTS `media_folders`;

CREATE TABLE `media_folders` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `media_folders_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `media_folders` WRITE;
/*!40000 ALTER TABLE `media_folders` DISABLE KEYS */;

INSERT INTO `media_folders` (`id`, `user_id`, `name`, `slug`, `parent_id`, `created_at`, `updated_at`, `deleted_at`)
VALUES
	(5,0,'galleries','galleries',0,'2021-07-11 09:29:24','2021-07-11 09:29:24',NULL),
	(6,0,'news','news',0,'2021-07-11 09:29:25','2021-07-11 09:29:25',NULL),
	(7,0,'widgets','widgets',0,'2021-07-11 09:29:27','2021-07-11 09:29:27',NULL),
	(8,0,'general','general',0,'2021-07-11 09:29:28','2021-07-11 09:29:28',NULL),
	(9,1,'social icons','social-icons',0,'2021-07-11 15:53:22','2021-07-11 15:53:22',NULL),
	(10,1,'logo','logo',0,'2021-07-13 16:31:43','2021-07-13 16:31:43',NULL),
	(11,1,'avatars','avatars',0,'2021-07-26 04:58:14','2021-07-26 04:58:14',NULL),
	(12,1,'products','products',0,'2021-08-16 04:06:43','2021-08-16 04:06:43',NULL),
	(13,1,'portfolio','portfolio',0,'2021-08-17 04:04:25','2021-08-17 04:04:25',NULL);

/*!40000 ALTER TABLE `media_folders` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table media_settings
# ------------------------------------------------------------

DROP TABLE IF EXISTS `media_settings`;

CREATE TABLE `media_settings` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `media_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table member_activity_logs
# ------------------------------------------------------------

DROP TABLE IF EXISTS `member_activity_logs`;

CREATE TABLE `member_activity_logs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `reference_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip_address` varchar(39) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `member_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `member_activity_logs_member_id_index` (`member_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table member_password_resets
# ------------------------------------------------------------

DROP TABLE IF EXISTS `member_password_resets`;

CREATE TABLE `member_password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `member_password_resets_email_index` (`email`),
  KEY `member_password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `member_password_resets` WRITE;
/*!40000 ALTER TABLE `member_password_resets` DISABLE KEYS */;

INSERT INTO `member_password_resets` (`email`, `token`, `created_at`)
VALUES
	('hoangkien151092@gmail.com','$2y$10$LutKXfYZwafx/CEVY8997etCRLJsu9IC/m.h1tQZSFkho2LEkakoO','2021-07-27 11:55:14');

/*!40000 ALTER TABLE `member_password_resets` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table members
# ------------------------------------------------------------

DROP TABLE IF EXISTS `members`;

CREATE TABLE `members` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `gender` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar_id` int(10) unsigned DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `phone` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `confirmed_at` datetime DEFAULT NULL,
  `email_verify_token` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `members_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `members` WRITE;
/*!40000 ALTER TABLE `members` DISABLE KEYS */;

INSERT INTO `members` (`id`, `first_name`, `last_name`, `description`, `gender`, `email`, `password`, `avatar_id`, `dob`, `phone`, `confirmed_at`, `email_verify_token`, `remember_token`, `created_at`, `updated_at`)
VALUES
	(1,'John','Smith','She had already heard her.',NULL,'john.smith@botble.com','$2y$10$Ygf7m33ZI6JQUE9bK/P2a.89Bf1.WEq3OgLXYY8ksKkYzGehwqGoq',NULL,'1988-07-03','930-398-4011','2021-07-11 09:29:27',NULL,NULL,'2021-07-11 09:29:27','2021-07-11 09:29:27'),
	(2,'Arielle','Runolfsdottir','I shan\'t go, at any rate,\'.',NULL,'heather.reinger@hotmail.com','$2y$10$fpO8Us.IUHEDYcfpm38Gp.OqZxYbrO0jp3dGxKVhkUBbkV6W0ivOG',NULL,'2009-04-21','403-370-1096','2021-07-11 09:29:27',NULL,NULL,'2021-07-11 09:29:27','2021-07-11 09:29:27'),
	(3,'Magali','Labadie','How neatly spread his claws.',NULL,'rhea57@gmail.com','$2y$10$MVWWIy/HSrqXrqNiPpCrLeRC2KBc0C1lcrNrHcCvSUE8McUU0HSvW',NULL,'2020-02-11','+1 (931) 627-5474','2021-07-11 09:29:27',NULL,NULL,'2021-07-11 09:29:27','2021-07-11 09:29:27'),
	(4,'Maia','Bosco','I don\'t like them!\' When the.',NULL,'syble60@gmail.com','$2y$10$iNih0/MYoOIvl0zHv9KeaO2gbzu83GXP1b5JnQabQM5OhY7cidyzG',NULL,'2005-12-29','287-979-3891 x15872','2021-07-11 09:29:27',NULL,NULL,'2021-07-11 09:29:27','2021-07-11 09:29:27'),
	(5,'Cielo','DuBuque','The twelve jurors were.',NULL,'donato.little@douglas.com','$2y$10$h/b5M1gorhBX5NR5osBjzOlz5dMqpqYgchPFCHX1pdHfIh4w1.CcS',NULL,'2012-02-21','(430) 675-3387 x940','2021-07-11 09:29:27',NULL,NULL,'2021-07-11 09:29:27','2021-07-11 09:29:27'),
	(6,'Sydni','Rath','Alice\'s shoulder as he.',NULL,'tobin87@hotmail.com','$2y$10$5PU5wffyQuqbnlNs4HEE2uTC/5UOAbFI.RNxXiXucWdKIktAvyrHC',NULL,'2018-11-10','556.914.7342','2021-07-11 09:29:27',NULL,NULL,'2021-07-11 09:29:27','2021-07-11 09:29:27'),
	(7,'Terrence','Breitenberg','But do cats eat bats?\' and.',NULL,'ebert.dariana@yahoo.com','$2y$10$Reat9CizlHpZnuvWTdHKGeDZFWUBOekp.xk9sNr32XzCugf/H.l.u',NULL,'1978-11-08','(597) 455-1517 x57493','2021-07-11 09:29:27',NULL,NULL,'2021-07-11 09:29:27','2021-07-11 09:29:27'),
	(8,'Stephanie','Parisian','I\'ve tried banks, and I\'ve.',NULL,'rodrigo44@doyle.com','$2y$10$LmK2HswyKZOeX8MqpApnr.BC/h2T622LEUyxozxZCDYItr6Qjut8S',NULL,'2005-04-10','+14728220735','2021-07-11 09:29:27',NULL,NULL,'2021-07-11 09:29:27','2021-07-11 09:29:27'),
	(9,'Ellen','Macejkovic','I? Ah, THAT\'S the great.',NULL,'luettgen.kaia@willms.com','$2y$10$NmFsbji1S.gWwrZgmhmXqOc6FU4ctGM1jDG/Z0hLqZuMTTRV8GiV2',NULL,'1994-10-19','(214) 708-3713','2021-07-11 09:29:28',NULL,NULL,'2021-07-11 09:29:28','2021-07-11 09:29:28'),
	(10,'Lewis','Runte','Dodo, a Lory and an old.',NULL,'botsford.lessie@casper.com','$2y$10$lJd2hU.4G1UTZnqXNooc8O7ASVO13wfrJqhAjOrLUj5ksLwMfLQsm',NULL,'1973-02-07','224-817-4659 x15045','2021-07-11 09:29:28',NULL,NULL,'2021-07-11 09:29:28','2021-07-11 09:29:28'),
	(11,'Lee','Haag','March Hare took the place of.',NULL,'loreilly@kunze.org','$2y$10$LWGB9NwazSrZopksG1TTQ.FYCvBBCirrLYDIdp1EvBqe.khdFoZIq',NULL,'2019-09-18','926-539-3426 x226','2021-07-11 09:29:28',NULL,NULL,'2021-07-11 09:29:28','2021-07-11 09:29:28'),
	(12,'Hoàng','Kiên',NULL,NULL,'hoangkien151092@gmail.com','$2y$10$AejUD6GAd8aF6nVeOqDA8OdedplkAoTwBkJoWnGbUpY6rthgCS1dq',NULL,NULL,NULL,'2021-07-15 04:39:46',NULL,'bu0uvjfedOw01ApEYGBR5bIYfGhgSs1AIjanzlIo2cUGiGO9GXEMSzZcLkn6','2021-07-15 04:39:46','2021-07-15 04:39:46'),
	(13,'Hoàng','Kiên',NULL,NULL,'hoangkien1510921@gmail.com','$2y$10$YbJ72mep0stRd4zbxXp6zuZiHQHOM9M37qB.jyb7KneCG8yflhg9u',NULL,NULL,NULL,NULL,NULL,NULL,'2021-08-02 18:51:09','2021-08-02 18:51:09'),
	(14,'Hoàng','Kiên',NULL,NULL,'hoangkien1510922@gmail.com','$2y$10$gO/2LhZeC56YcDCzEznRaecrJST5HHm5mYMbp87P6p6ZHl5aq3eFq',NULL,NULL,NULL,'2021-08-02 19:08:40',NULL,NULL,'2021-08-02 19:08:40','2021-08-02 19:08:40');

/*!40000 ALTER TABLE `members` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table menu_locations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `menu_locations`;

CREATE TABLE `menu_locations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` int(10) unsigned NOT NULL,
  `location` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `menu_locations` WRITE;
/*!40000 ALTER TABLE `menu_locations` DISABLE KEYS */;

INSERT INTO `menu_locations` (`id`, `menu_id`, `location`, `created_at`, `updated_at`)
VALUES
	(1,1,'main-menu','2021-07-11 09:29:27','2021-07-11 09:29:27'),
	(2,6,'main-menu','2021-07-11 09:29:27','2021-07-11 09:29:27'),
	(4,5,'menu-location-key','2021-07-13 15:00:19','2021-07-13 15:00:19'),
	(5,11,'main-menu-home-page','2021-08-17 02:15:06','2021-08-17 02:15:06');

/*!40000 ALTER TABLE `menu_locations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table menu_nodes
# ------------------------------------------------------------

DROP TABLE IF EXISTS `menu_nodes`;

CREATE TABLE `menu_nodes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` int(10) unsigned NOT NULL,
  `parent_id` int(10) unsigned NOT NULL DEFAULT '0',
  `reference_id` int(10) unsigned DEFAULT NULL,
  `reference_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_font` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `title` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `css_class` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `has_child` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_nodes_menu_id_index` (`menu_id`),
  KEY `menu_nodes_parent_id_index` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `menu_nodes` WRITE;
/*!40000 ALTER TABLE `menu_nodes` DISABLE KEYS */;

INSERT INTO `menu_nodes` (`id`, `menu_id`, `parent_id`, `reference_id`, `reference_type`, `url`, `icon_font`, `position`, `title`, `css_class`, `target`, `has_child`, `created_at`, `updated_at`)
VALUES
	(1,1,0,0,NULL,'/','',0,'Home','','_self',0,'2021-07-11 09:29:27','2021-07-13 17:17:04'),
	(2,1,53,0,NULL,'https://botble.com/go/download-cms','',0,'Purchase','','_blank',0,'2021-07-11 09:29:27','2021-07-13 17:18:53'),
	(3,1,0,6,'Botble\\Blog\\Models\\Category','/news-updates','',1,'News & Updates','','_self',0,'2021-07-11 09:29:27','2021-07-13 17:18:53'),
	(4,1,5,0,NULL,'/galleries','',0,'Galleries','','_self',0,'2021-07-11 09:29:27','2021-07-14 09:34:13'),
	(5,1,0,1,'Botble\\Page\\Models\\Page','/contact','',2,'Contact','','_self',1,'2021-07-11 09:29:27','2021-07-14 03:20:07'),
	(6,2,0,NULL,NULL,'http://speckyboy.com',NULL,0,'Speckyboy Magazine',NULL,'_self',0,'2021-07-11 09:29:27','2021-07-11 09:29:27'),
	(7,2,0,NULL,NULL,'http://tympanus.com',NULL,0,'Tympanus-Codrops',NULL,'_self',0,'2021-07-11 09:29:27','2021-07-11 09:29:27'),
	(8,2,0,NULL,NULL,'#',NULL,0,'Kipalog Blog',NULL,'_self',0,'2021-07-11 09:29:27','2021-07-11 09:29:27'),
	(9,2,0,NULL,NULL,'http://www.sitepoint.com',NULL,0,'SitePoint',NULL,'_self',0,'2021-07-11 09:29:27','2021-07-11 09:29:27'),
	(10,2,0,NULL,NULL,'http://www.creativebloq.com',NULL,0,'CreativeBloq',NULL,'_self',0,'2021-07-11 09:29:27','2021-07-11 09:29:27'),
	(11,2,0,NULL,NULL,'http://techtalk.vn',NULL,0,'Techtalk',NULL,'_self',0,'2021-07-11 09:29:27','2021-07-11 09:29:27'),
	(12,3,0,0,NULL,'/','',0,'Homepage','','_self',0,'2021-07-11 09:29:27','2021-07-13 13:39:37'),
	(13,3,0,1,'Botble\\Page\\Models\\Page','/contact','',1,'Contact','','_self',0,'2021-07-11 09:29:27','2021-07-13 13:39:37'),
	(14,3,0,6,'Botble\\Blog\\Models\\Category','/news-updates','',2,'News & Updates','','_self',0,'2021-07-11 09:29:27','2021-07-13 13:39:37'),
	(15,3,0,3,'Botble\\Blog\\Models\\Category','/projects','',3,'Projects','','_self',0,'2021-07-11 09:29:27','2021-07-13 13:39:37'),
	(16,3,0,0,NULL,'/galleries','',4,'Galleries','','_self',0,'2021-07-11 09:29:27','2021-07-13 13:39:37'),
	(17,4,0,2,'Botble\\Blog\\Models\\Category','/events',NULL,0,'Events',NULL,'_self',0,'2021-07-11 09:29:27','2021-07-11 10:02:47'),
	(18,4,0,3,'Botble\\Blog\\Models\\Category','/projects',NULL,0,'Projects',NULL,'_self',0,'2021-07-11 09:29:27','2021-07-11 10:02:47'),
	(19,4,0,4,'Botble\\Blog\\Models\\Category','/business',NULL,0,'Business',NULL,'_self',0,'2021-07-11 09:29:27','2021-07-11 10:02:47'),
	(20,4,0,6,'Botble\\Blog\\Models\\Category','/news-updates',NULL,0,'News & Updates',NULL,'_self',0,'2021-07-11 09:29:27','2021-07-11 10:02:47'),
	(21,4,0,7,'Botble\\Blog\\Models\\Category','/resources',NULL,0,'Resources',NULL,'_self',0,'2021-07-11 09:29:27','2021-07-11 10:02:47'),
	(22,5,0,0,NULL,'https://facebook.com','fa fa-facebook',0,'Facebook','','_blank',0,'2021-07-11 09:29:27','2021-07-13 15:00:19'),
	(23,5,0,0,NULL,'https://twitter.com','fa fa-twitter',1,'Twitter','','_blank',0,'2021-07-11 09:29:27','2021-07-13 15:00:19'),
	(24,5,0,0,NULL,'https://github.com','fa fa-github',2,'Github','','_blank',0,'2021-07-11 09:29:27','2021-07-13 15:00:19'),
	(25,5,0,0,NULL,'https://linkedin.com','fa fa-linkedin',3,'Linkedin','','_blank',0,'2021-07-11 09:29:27','2021-07-13 15:00:19'),
	(26,6,0,NULL,NULL,'/',NULL,0,'Trang chủ',NULL,'_self',0,'2021-07-11 09:29:27','2021-07-11 09:29:27'),
	(27,6,0,NULL,NULL,'https://botble.com/go/download-cms',NULL,0,'Mua ngay',NULL,'_blank',0,'2021-07-11 09:29:27','2021-07-11 09:29:27'),
	(28,6,0,13,'Botble\\Blog\\Models\\Category','/tin-tuc-cap-nhat',NULL,0,'Tin tức & Cập nhật',NULL,'_self',0,'2021-07-11 09:29:27','2021-07-11 10:02:47'),
	(29,6,0,NULL,NULL,'/galleries',NULL,0,'Thư viện ảnh',NULL,'_self',0,'2021-07-11 09:29:27','2021-07-11 09:29:27'),
	(30,6,0,2,'Botble\\Page\\Models\\Page','/cookie-policy',NULL,0,'Liên hệ',NULL,'_self',0,'2021-07-11 09:29:27','2021-07-11 10:02:47'),
	(31,7,0,NULL,NULL,'http://speckyboy.com',NULL,0,'Speckyboy Magazine',NULL,'_self',0,'2021-07-11 09:29:27','2021-07-11 09:29:27'),
	(32,7,0,NULL,NULL,'http://tympanus.com',NULL,0,'Tympanus-Codrops',NULL,'_self',0,'2021-07-11 09:29:27','2021-07-11 09:29:27'),
	(33,7,0,NULL,NULL,'#',NULL,0,'Kipalog Blog',NULL,'_self',0,'2021-07-11 09:29:27','2021-07-11 09:29:27'),
	(34,7,0,NULL,NULL,'http://www.sitepoint.com',NULL,0,'SitePoint',NULL,'_self',0,'2021-07-11 09:29:27','2021-07-11 09:29:27'),
	(35,7,0,NULL,NULL,'http://www.creativebloq.com',NULL,0,'CreativeBloq',NULL,'_self',0,'2021-07-11 09:29:27','2021-07-11 09:29:27'),
	(36,7,0,NULL,NULL,'http://techtalk.vn',NULL,0,'Techtalk',NULL,'_self',0,'2021-07-11 09:29:27','2021-07-11 09:29:27'),
	(37,8,0,NULL,NULL,'/',NULL,0,'Trang chủ',NULL,'_self',0,'2021-07-11 09:29:27','2021-07-11 09:29:27'),
	(38,8,0,2,'Botble\\Page\\Models\\Page','/cookie-policy',NULL,0,'Liên hệ',NULL,'_self',0,'2021-07-11 09:29:27','2021-07-11 10:02:47'),
	(39,8,0,13,'Botble\\Blog\\Models\\Category','/tin-tuc-cap-nhat',NULL,0,'Tin tức & Cập nhật',NULL,'_self',0,'2021-07-11 09:29:27','2021-07-11 10:02:47'),
	(40,8,0,10,'Botble\\Blog\\Models\\Category','/du-an',NULL,0,'Dự án',NULL,'_self',0,'2021-07-11 09:29:27','2021-07-11 10:02:47'),
	(41,8,0,NULL,NULL,'/galleries',NULL,0,'Thư viện ảnh',NULL,'_self',0,'2021-07-11 09:29:27','2021-07-11 09:29:27'),
	(42,9,0,9,'Botble\\Blog\\Models\\Category','/su-kien',NULL,0,'Sự kiện',NULL,'_self',0,'2021-07-11 09:29:27','2021-07-11 10:02:47'),
	(43,9,0,10,'Botble\\Blog\\Models\\Category','/du-an',NULL,0,'Dự án',NULL,'_self',0,'2021-07-11 09:29:27','2021-07-11 10:02:47'),
	(44,9,0,11,'Botble\\Blog\\Models\\Category','/doanh-nghiep',NULL,0,'Business',NULL,'_self',0,'2021-07-11 09:29:27','2021-07-11 10:02:47'),
	(45,9,0,13,'Botble\\Blog\\Models\\Category','/tin-tuc-cap-nhat',NULL,0,'Tin tức & Cập nhật',NULL,'_self',0,'2021-07-11 09:29:27','2021-07-11 10:02:47'),
	(46,9,0,14,'Botble\\Blog\\Models\\Category','/tai-nguyen',NULL,0,'Tài nguyên',NULL,'_self',0,'2021-07-11 09:29:27','2021-07-11 10:02:47'),
	(47,10,0,NULL,NULL,'https://facebook.com','fa fa-facebook',0,'Facebook',NULL,'_blank',0,'2021-07-11 09:29:27','2021-07-11 09:29:27'),
	(48,10,0,NULL,NULL,'https://twitter.com','fa fa-twitter',0,'Twitter',NULL,'_blank',0,'2021-07-11 09:29:27','2021-07-11 09:29:27'),
	(49,10,0,NULL,NULL,'https://github.com','fa fa-github',0,'Github',NULL,'_blank',0,'2021-07-11 09:29:27','2021-07-11 09:29:27'),
	(50,10,0,NULL,NULL,'https://linkedin.com','fa fa-linkedin',0,'Linkedin',NULL,'_blank',0,'2021-07-11 09:29:27','2021-07-11 09:29:27'),
	(51,11,0,0,NULL,'/','',0,'Home','','_self',0,'2021-07-13 13:42:35','2021-07-13 13:42:35'),
	(52,11,0,0,NULL,'/','',1,'About','#section-about','_self',0,'2021-07-13 13:42:35','2021-08-17 03:02:31'),
	(53,1,5,0,NULL,'/','fa fa-home',1,'Test','css','_self',1,'2021-07-13 17:17:04','2021-07-14 09:34:13'),
	(54,1,53,0,NULL,'/','',1,'Ko có menu con','','_self',0,'2021-07-14 09:17:26','2021-07-14 09:34:13'),
	(55,1,53,0,NULL,'/','',2,'ko có menu con 1','','_self',0,'2021-07-14 09:17:26','2021-07-14 09:34:13'),
	(56,1,53,0,NULL,'/','',3,'ko có menu con 2','','_self',0,'2021-07-14 09:17:26','2021-07-14 09:34:13'),
	(57,1,53,0,NULL,'/','',4,'ko có menu con 3','','_self',0,'2021-07-14 09:17:26','2021-07-14 09:34:13');

/*!40000 ALTER TABLE `menu_nodes` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table menus
# ------------------------------------------------------------

DROP TABLE IF EXISTS `menus`;

CREATE TABLE `menus` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_slug_unique` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;

INSERT INTO `menus` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`)
VALUES
	(1,'Main menu','main-menu','published','2021-07-11 09:29:27','2021-07-11 09:29:27'),
	(2,'Favorite websites','favorite-websites','published','2021-07-11 09:29:27','2021-07-11 09:29:27'),
	(3,'My links','my-links','published','2021-07-11 09:29:27','2021-07-11 09:29:27'),
	(4,'Featured Categories','featured-categories','published','2021-07-11 09:29:27','2021-07-11 09:29:27'),
	(5,'Social','social','published','2021-07-11 09:29:27','2021-07-11 09:29:27'),
	(6,'Menu chính','menu-chinh','published','2021-07-11 09:29:27','2021-07-11 09:29:27'),
	(7,'Trang web yêu thích','trang-web-yeu-thich','published','2021-07-11 09:29:27','2021-07-11 09:29:27'),
	(8,'Liên kết','lien-ket','published','2021-07-11 09:29:27','2021-07-11 09:29:27'),
	(9,'Danh mục nổi bật','danh-muc-noi-bat','published','2021-07-11 09:29:27','2021-07-11 09:29:27'),
	(10,'Mạng xã hội','mang-xa-hoi','published','2021-07-11 09:29:27','2021-07-11 09:29:27'),
	(11,'Main menu home page','test-test','published','2021-07-13 13:42:03','2021-08-17 02:15:06');

/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table meta_boxes
# ------------------------------------------------------------

DROP TABLE IF EXISTS `meta_boxes`;

CREATE TABLE `meta_boxes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value` text COLLATE utf8mb4_unicode_ci,
  `reference_id` int(10) unsigned NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `meta_boxes_reference_id_index` (`reference_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `meta_boxes` WRITE;
/*!40000 ALTER TABLE `meta_boxes` DISABLE KEYS */;

INSERT INTO `meta_boxes` (`id`, `meta_key`, `meta_value`, `reference_id`, `reference_type`, `created_at`, `updated_at`)
VALUES
	(1,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]',1,'Botble\\Page\\Models\\Page','2021-07-12 03:40:33','2021-07-12 03:40:33');

/*!40000 ALTER TABLE `meta_boxes` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table migrations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;

INSERT INTO `migrations` (`id`, `migration`, `batch`)
VALUES
	(1,'2013_04_09_032329_create_base_tables',1),
	(2,'2013_04_09_062329_create_revisions_table',1),
	(3,'2014_10_12_000000_create_users_table',1),
	(4,'2014_10_12_100000_create_password_resets_table',1),
	(5,'2016_06_01_000001_create_oauth_auth_codes_table',1),
	(6,'2016_06_01_000002_create_oauth_access_tokens_table',1),
	(7,'2016_06_01_000003_create_oauth_refresh_tokens_table',1),
	(8,'2016_06_01_000004_create_oauth_clients_table',1),
	(9,'2016_06_01_000005_create_oauth_personal_access_clients_table',1),
	(10,'2016_06_10_230148_create_acl_tables',1),
	(11,'2016_06_14_230857_create_menus_table',1),
	(12,'2016_06_28_221418_create_pages_table',1),
	(13,'2016_10_05_074239_create_setting_table',1),
	(14,'2016_11_28_032840_create_dashboard_widget_tables',1),
	(15,'2016_12_16_084601_create_widgets_table',1),
	(16,'2017_05_09_070343_create_media_tables',1),
	(17,'2017_11_03_070450_create_slug_table',1),
	(18,'2019_01_05_053554_create_jobs_table',1),
	(19,'2019_08_19_000000_create_failed_jobs_table',1),
	(20,'2016_10_03_032336_create_languages_table',2),
	(21,'2016_06_17_091537_create_contacts_table',3),
	(22,'2016_10_13_150201_create_galleries_table',4),
	(23,'2015_06_18_033822_create_blog_table',5),
	(24,'2017_10_04_140938_create_member_table',6),
	(25,'2020_10_18_134839_fix_member_activity_logs_table',6),
	(26,'2017_02_13_034601_create_blocks_table',7),
	(31,'2021_07_26_044337_social_create_social_table',8),
	(32,'2021_07_26_044341_account_create_account_table',9),
	(35,'2021_08_16_031544_product_create_product_table',10),
	(36,'2021_08_17_031936_portfolio_create_portfolio_table',11);

/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table oauth_access_tokens
# ------------------------------------------------------------

DROP TABLE IF EXISTS `oauth_access_tokens`;

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `client_id` bigint(20) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table oauth_auth_codes
# ------------------------------------------------------------

DROP TABLE IF EXISTS `oauth_auth_codes`;

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `client_id` bigint(20) unsigned NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_auth_codes_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table oauth_clients
# ------------------------------------------------------------

DROP TABLE IF EXISTS `oauth_clients`;

CREATE TABLE `oauth_clients` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table oauth_personal_access_clients
# ------------------------------------------------------------

DROP TABLE IF EXISTS `oauth_personal_access_clients`;

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table oauth_refresh_tokens
# ------------------------------------------------------------

DROP TABLE IF EXISTS `oauth_refresh_tokens`;

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table pages
# ------------------------------------------------------------

DROP TABLE IF EXISTS `pages`;

CREATE TABLE `pages` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint(4) NOT NULL DEFAULT '0',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;

INSERT INTO `pages` (`id`, `name`, `content`, `user_id`, `image`, `template`, `is_featured`, `description`, `status`, `created_at`, `updated_at`)
VALUES
	(1,'Contact','<p>Address: North Link Building, 10 Admiralty Street, 757695 Singapore</p>\r\n\r\n<p>Hotline: 18006268</p>\r\n\r\n<p>Email: contact@botble.com</p>\r\n\r\n<p>[google-map]North Link Building, 10 Admiralty Street, 757695 Singapore[/google-map]</p>\r\n\r\n<p>For the fastest reply, please use the contact form below.</p>\r\n\r\n<p>[contact-form][/contact-form]</p>',1,NULL,'gotap',0,NULL,'published','2021-07-11 09:29:24','2021-07-12 03:40:32'),
	(2,'Cookie Policy','<h3>EU Cookie Consent</h3><p>To use this Website we are using Cookies and collecting some Data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>',1,NULL,'default',0,NULL,'published','2021-07-11 09:29:24','2021-07-11 09:29:24'),
	(3,'Liên hệ','<p>Địa chỉ: North Link Building, 10 Admiralty Street, 757695 Singapore</p><p>Đường dây nóng: 18006268</p><p>Email: contact@botble.com</p><p>[google-map]North Link Building, 10 Admiralty Street, 757695 Singapore[/google-map]</p><p>Để được trả lời nhanh nhất, vui lòng sử dụng biểu mẫu liên hệ bên dưới.</p><p>[contact-form][/contact-form]</p>',1,NULL,'default',0,NULL,'published','2021-07-11 09:29:24','2021-07-11 09:29:24'),
	(4,'Cookie Policy','<h3>EU Cookie Consent</h3><p>Để sử dụng Trang web này, chúng tôi đang sử dụng Cookie và thu thập một số Dữ liệu. Để tuân thủ GDPR của Liên minh Châu Âu, chúng tôi cho bạn lựa chọn nếu bạn cho phép chúng tôi sử dụng một số Cookie nhất định và thu thập một số Dữ liệu.</p><h4>Dữ liệu cần thiết</h4><p>Dữ liệu cần thiết là cần thiết để chạy Trang web bạn đang truy cập về mặt kỹ thuật. Bạn không thể hủy kích hoạt chúng.</p><p>- Session Cookie: PHP sử dụng Cookie để xác định phiên của người dùng. Nếu không có Cookie này, trang web sẽ không hoạt động.</p><p>- XSRF-Token Cookie: Laravel tự động tạo \"token\" CSRF cho mỗi phiên người dùng đang hoạt động do ứng dụng quản lý. Token này được sử dụng để xác minh rằng người dùng đã xác thực là người thực sự đưa ra yêu cầu đối với ứng dụng.</p>',1,NULL,'default',0,NULL,'published','2021-07-11 09:29:24','2021-07-11 09:29:24');

/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table password_resets
# ------------------------------------------------------------

DROP TABLE IF EXISTS `password_resets`;

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table portfolios
# ------------------------------------------------------------

DROP TABLE IF EXISTS `portfolios`;

CREATE TABLE `portfolios` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_wide` tinyint(1) NOT NULL DEFAULT '0',
  `order` tinyint(4) NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `portfolios` WRITE;
/*!40000 ALTER TABLE `portfolios` DISABLE KEYS */;

INSERT INTO `portfolios` (`id`, `name`, `image`, `content`, `is_wide`, `order`, `status`, `created_at`, `updated_at`)
VALUES
	(1,'Sản phẩm một','portfolio/1.jpg','<p><span style=\"color:#2ecc71;\">ĐẸp vkl</span></p>',1,0,'published','2021-08-17 04:06:10','2021-08-17 04:17:41'),
	(2,'Sản phẩm 2','portfolio/2.jpg','<h2 style=\"font-style:italic;\"><span style=\"background-color:#e74c3c;\">Đ&acirc;y l&agrave; sản phẩm thứ 2</span></h2>',0,1,'published','2021-08-17 04:07:06','2021-08-17 04:07:06'),
	(3,'Sản phẩm thứ 3','portfolio/3.jpg','<p>Đ&Acirc;t k&agrave; h&igrave;nh thứ 3 n&egrave;</p>',0,2,'published','2021-08-17 04:07:58','2021-08-17 04:07:58'),
	(4,'Sản phẩm thứ 4','portfolio/4.jpg','<p>C&aacute;i n&agrave;y phải nằm ở g&oacute;c dưới b&ecirc;n phải</p>',1,3,'published','2021-08-17 04:13:48','2021-08-17 04:13:48'),
	(5,'Hình 5','portfolio/5.jpg','<p>a</p>',1,0,'published','2021-08-17 04:19:13','2021-08-17 04:19:56'),
	(6,'Hình 6','portfolio/6.jpg','<p>q</p>',0,5,'published','2021-08-17 04:19:49','2021-08-17 04:19:49'),
	(7,'Hình7','portfolio/7.jpg','<p>q</p>',0,6,'published','2021-08-17 04:20:11','2021-08-17 04:20:11');

/*!40000 ALTER TABLE `portfolios` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table post_categories
# ------------------------------------------------------------

DROP TABLE IF EXISTS `post_categories`;

CREATE TABLE `post_categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int(10) unsigned NOT NULL,
  `post_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `post_categories` WRITE;
/*!40000 ALTER TABLE `post_categories` DISABLE KEYS */;

INSERT INTO `post_categories` (`id`, `category_id`, `post_id`)
VALUES
	(1,4,1),
	(3,3,2),
	(4,6,2),
	(5,1,3),
	(6,7,3),
	(8,5,4),
	(12,6,6),
	(13,2,7),
	(19,4,10),
	(25,2,13),
	(26,5,13),
	(29,4,15),
	(31,4,16),
	(37,8,19),
	(38,12,19),
	(39,8,20),
	(41,8,21),
	(46,14,23),
	(51,11,26),
	(55,8,28),
	(59,8,30),
	(61,9,31),
	(64,14,32),
	(65,6,1),
	(66,1,4),
	(67,2,5),
	(68,5,5),
	(69,4,6),
	(70,7,7),
	(71,2,8),
	(72,5,8),
	(73,4,9),
	(74,7,9),
	(75,7,10),
	(76,4,11),
	(77,6,11),
	(78,2,12),
	(79,6,12),
	(80,2,14),
	(81,7,14),
	(82,7,15),
	(83,6,16),
	(84,8,17),
	(85,12,17),
	(86,11,18),
	(87,14,18),
	(88,13,20),
	(89,13,21),
	(90,9,22),
	(91,14,22),
	(92,8,23),
	(93,8,24),
	(94,13,24),
	(95,11,25),
	(96,13,25),
	(97,14,26),
	(98,9,27),
	(99,12,27),
	(100,13,28),
	(101,8,29),
	(102,14,29),
	(103,14,30),
	(104,14,31),
	(105,9,32);

/*!40000 ALTER TABLE `post_categories` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table post_tags
# ------------------------------------------------------------

DROP TABLE IF EXISTS `post_tags`;

CREATE TABLE `post_tags` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tag_id` int(10) unsigned NOT NULL,
  `post_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `post_tags` WRITE;
/*!40000 ALTER TABLE `post_tags` DISABLE KEYS */;

INSERT INTO `post_tags` (`id`, `tag_id`, `post_id`)
VALUES
	(1,1,1),
	(2,2,1),
	(3,3,1),
	(4,4,1),
	(5,5,1),
	(6,1,2),
	(7,2,2),
	(8,3,2),
	(9,4,2),
	(10,5,2),
	(11,1,3),
	(12,2,3),
	(13,3,3),
	(14,4,3),
	(15,5,3),
	(16,1,4),
	(17,2,4),
	(18,3,4),
	(19,4,4),
	(20,5,4),
	(21,1,5),
	(22,2,5),
	(23,3,5),
	(24,4,5),
	(25,5,5),
	(26,1,6),
	(27,2,6),
	(28,3,6),
	(29,4,6),
	(30,5,6),
	(31,1,7),
	(32,2,7),
	(33,3,7),
	(34,4,7),
	(35,5,7),
	(36,1,8),
	(37,2,8),
	(38,3,8),
	(39,4,8),
	(40,5,8),
	(41,1,9),
	(42,2,9),
	(43,3,9),
	(44,4,9),
	(45,5,9),
	(46,1,10),
	(47,2,10),
	(48,3,10),
	(49,4,10),
	(50,5,10),
	(51,1,11),
	(52,2,11),
	(53,3,11),
	(54,4,11),
	(55,5,11),
	(56,1,12),
	(57,2,12),
	(58,3,12),
	(59,4,12),
	(60,5,12),
	(61,1,13),
	(62,2,13),
	(63,3,13),
	(64,4,13),
	(65,5,13),
	(66,1,14),
	(67,2,14),
	(68,3,14),
	(69,4,14),
	(70,5,14),
	(71,1,15),
	(72,2,15),
	(73,3,15),
	(74,4,15),
	(75,5,15),
	(76,1,16),
	(77,2,16),
	(78,3,16),
	(79,4,16),
	(80,5,16),
	(81,6,17),
	(82,7,17),
	(83,8,17),
	(84,9,17),
	(85,10,17),
	(86,6,18),
	(87,7,18),
	(88,8,18),
	(89,9,18),
	(90,10,18),
	(91,6,19),
	(92,7,19),
	(93,8,19),
	(94,9,19),
	(95,10,19),
	(96,6,20),
	(97,7,20),
	(98,8,20),
	(99,9,20),
	(100,10,20),
	(101,6,21),
	(102,7,21),
	(103,8,21),
	(104,9,21),
	(105,10,21),
	(106,6,22),
	(107,7,22),
	(108,8,22),
	(109,9,22),
	(110,10,22),
	(111,6,23),
	(112,7,23),
	(113,8,23),
	(114,9,23),
	(115,10,23),
	(116,6,24),
	(117,7,24),
	(118,8,24),
	(119,9,24),
	(120,10,24),
	(121,6,25),
	(122,7,25),
	(123,8,25),
	(124,9,25),
	(125,10,25),
	(126,6,26),
	(127,7,26),
	(128,8,26),
	(129,9,26),
	(130,10,26),
	(131,6,27),
	(132,7,27),
	(133,8,27),
	(134,9,27),
	(135,10,27),
	(136,6,28),
	(137,7,28),
	(138,8,28),
	(139,9,28),
	(140,10,28),
	(141,6,29),
	(142,7,29),
	(143,8,29),
	(144,9,29),
	(145,10,29),
	(146,6,30),
	(147,7,30),
	(148,8,30),
	(149,9,30),
	(150,10,30),
	(151,6,31),
	(152,7,31),
	(153,8,31),
	(154,9,31),
	(155,10,31),
	(156,6,32),
	(157,7,32),
	(158,8,32),
	(159,9,32),
	(160,10,32);

/*!40000 ALTER TABLE `post_tags` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table posts
# ------------------------------------------------------------

DROP TABLE IF EXISTS `posts`;

CREATE TABLE `posts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` int(11) NOT NULL,
  `author_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `is_featured` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` int(10) unsigned NOT NULL DEFAULT '0',
  `format_type` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;

INSERT INTO `posts` (`id`, `name`, `description`, `content`, `status`, `author_id`, `author_type`, `is_featured`, `image`, `views`, `format_type`, `created_at`, `updated_at`)
VALUES
	(1,'The Top 2020 Handbag Trends to Know','Placeat aperiam sapiente optio excepturi autem. Laboriosam eum ipsa ab. Magni asperiores quo quia corporis omnis.','<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>I\'LL soon make you a couple?\' \'You are old,\' said the Mock Turtle. \'She can\'t explain MYSELF, I\'m afraid, but you might catch a bat, and that\'s very like having a game of croquet she was losing her temper. \'Are you content now?\' said the Cat, \'a dog\'s not mad. You grant that?\' \'I suppose they are the jurors.\' She said this she looked up and down looking for them, but they began solemnly dancing round and swam slowly back again, and that\'s all you know about it, and they repeated their arguments to her, so she went round the neck of the garden: the roses growing on it were white, but there was not a bit hurt, and she thought it must be getting somewhere near the door, she found a little before she got used to call him Tortoise--\' \'Why did they live at the stick, and held out its arms and legs in all directions, \'just like a steam-engine when she noticed that one of the bread-and-butter. Just at this moment the door between us. For instance, if you hold it too long; and that makes them.</p><p class=\"text-center\"><img src=\"http://gotap.test/storage/news/1-540x360.jpg\"></p><p>Alice watched the White Rabbit, with a whiting. Now you know.\' \'I DON\'T know,\' said Alice, \'because I\'m not myself, you see.\' \'I don\'t even know what a wonderful dream it had entirely disappeared; so the King in a hot tureen! Who for such dainties would not open any of them. \'I\'m sure those are not attending!\' said the Caterpillar. \'Well, perhaps your feelings may be ONE.\' \'One, indeed!\' said the Queen, but she felt that it was a dead silence. Alice was so full of soup. \'There\'s certainly too.</p><p class=\"text-center\"><img src=\"http://gotap.test/storage/news/7-540x360.jpg\"></p><p>Lizard, Bill, was in a very little way forwards each time and a fan! Quick, now!\' And Alice was more than nine feet high, and her eyes immediately met those of a book,\' thought Alice to herself, (not in a great deal to ME,\' said the Hatter, and he wasn\'t one?\' Alice asked. The Hatter looked at the door of which was the Rabbit asked. \'No, I give you fair warning,\' shouted the Queen. An invitation from the trees under which she concluded that it made no mark; but he now hastily began again, using the ink, that was said, and went down on the back. However, it was very nearly in the last words out loud, and the whole pack rose up into the jury-box, or they would die. \'The trial cannot proceed,\' said the Dodo in an undertone to the Queen. \'It proves nothing of the Queen\'s shrill cries to the Dormouse, who was peeping anxiously into its nest. Alice crouched down among the bright flower-beds and the words don\'t FIT you,\' said the Cat, and vanished. Alice was so full of tears, but said.</p><p class=\"text-center\"><img src=\"http://gotap.test/storage/news/14-540x360.jpg\"></p><p>HER about it.\' \'She\'s in prison,\' the Queen had never done such a thing as \"I eat what I eat\" is the same thing,\' said the Duchess; \'and that\'s the jury-box,\' thought Alice, \'or perhaps they won\'t walk the way wherever she wanted to send the hedgehog had unrolled itself, and began staring at the flowers and the m--\' But here, to Alice\'s great surprise, the Duchess\'s cook. She carried the pepper-box in her pocket, and was immediately suppressed by the Queen left off, quite out of the words \'DRINK ME,\' but nevertheless she uncorked it and put it to be no doubt that it signifies much,\' she said this, she came upon a time she had drunk half the bottle, saying to herself \'Suppose it should be like then?\' And she squeezed herself up on to her head, she tried to look at the sides of it; and as Alice could bear: she got into it), and handed back to the Knave \'Turn them over!\' The Knave of Hearts, she made her next remark. \'Then the eleventh day must have been that,\' said the Duchess: you\'d.</p>','published',1,'Botble\\ACL\\Models\\User',1,'news/1.jpg',803,'video','2021-07-11 09:29:26','2021-07-11 09:29:26'),
	(2,'Top Search Engine Optimization Strategies!','Maxime dolorem voluptatem voluptates consequuntur voluptatem. Nulla odio ea excepturi corrupti nulla inventore. Facere dolores pariatur quia beatae similique neque.','<p>Magpie began wrapping itself up and say \"Who am I to get in at once.\' And in she went. Once more she found herself lying on their slates, \'SHE doesn\'t believe there\'s an atom of meaning in it, \'and what is the use of this was her dream:-- First, she tried to get rather sleepy, and went to school in the last concert!\' on which the words don\'t FIT you,\' said Alice, and looking at the top of it. Presently the Rabbit hastily interrupted. \'There\'s a great crowd assembled about them--all sorts of things, and she, oh! she knows such a fall as this, I shall see it written down: but I grow up, I\'ll write one--but I\'m grown up now,\' she said, \'and see whether it\'s marked \"poison\" or not\'; for she had read several nice little dog near our house I should think!\' (Dinah was the Rabbit say, \'A barrowful of WHAT?\' thought Alice to herself. \'Of the mushroom,\' said the Dodo, pointing to Alice an excellent opportunity for making her escape; so she went down on her spectacles, and began to tremble.</p><p class=\"text-center\"><img src=\"http://gotap.test/storage/news/1-540x360.jpg\"></p><p>Lobster; I heard him declare, \"You have baked me too brown, I must have imitated somebody else\'s hand,\' said the Footman, \'and that for the baby, it was quite out of its little eyes, but it was impossible to say \'creatures,\' you see, Alice had not gone much farther before she had been for some time in silence: at last it unfolded its arms, took the place where it had VERY long claws and a sad tale!\' said the Cat: \'we\'re all mad here. I\'m mad. You\'re mad.\' \'How do you know why it\'s called a.</p><p class=\"text-center\"><img src=\"http://gotap.test/storage/news/8-540x360.jpg\"></p><p>How queer everything is queer to-day.\' Just then she walked down the chimney close above her: then, saying to herself how this same little sister of hers would, in the wind, and was looking about for some minutes. Alice thought decidedly uncivil. \'But perhaps he can\'t help that,\' said the Duchess, it had fallen into it: there was a sound of many footsteps, and Alice thought this a very grave voice, \'until all the jurymen on to himself as he found it advisable--\"\' \'Found WHAT?\' said the voice. \'Fetch me my gloves this moment!\' Then came a rumbling of little Alice and all of them say, \'Look out now, Five! Don\'t go splashing paint over me like that!\' He got behind Alice as she could. The next thing was waving its right paw round, \'lives a Hatter: and in THAT direction,\' the Cat again, sitting on a crimson velvet cushion; and, last of all the while, and fighting for the pool rippling to the dance. So they got settled down again very sadly and quietly, and looked at Alice, and her eyes.</p><p class=\"text-center\"><img src=\"http://gotap.test/storage/news/14-540x360.jpg\"></p><p>Improve his shining tail, And pour the waters of the March Hare. \'Then it wasn\'t very civil of you to get through the glass, and she was shrinking rapidly; so she went on, \'--likely to win, that it\'s hardly worth while finishing the game.\' The Queen smiled and passed on. \'Who ARE you doing out here? Run home this moment, and fetch me a good way off, and had to ask them what the flame of a muchness\"--did you ever see you again, you dear old thing!\' said the Duchess, \'and that\'s why. Pig!\' She said it to his ear. Alice considered a little, \'From the Queen. \'It proves nothing of the suppressed guinea-pigs, filled the air, mixed up with the glass table as before, \'and things are worse than ever,\' thought the poor child, \'for I can\'t show it you myself,\' the Mock Turtle sighed deeply, and drew the back of one flapper across his eyes. \'I wasn\'t asleep,\' he said do. Alice looked very anxiously into its face in her French lesson-book. The Mouse looked at it, busily painting them red. Alice.</p>','published',1,'Botble\\ACL\\Models\\User',1,'news/2.jpg',1725,'default','2021-07-11 09:29:26','2021-07-11 09:29:26'),
	(3,'Which Company Would You Choose?','Facere ea enim sunt quis non non quisquam. Aspernatur sequi tempora molestiae. Debitis ducimus ut deleniti similique est.','<p>I suppose Dinah\'ll be sending me on messages next!\' And she kept tossing the baby was howling so much contradicted in her pocket) till she had found her head impatiently; and, turning to Alice for protection. \'You shan\'t be able! I shall ever see such a new kind of sob, \'I\'ve tried the effect of lying down with one foot. \'Get up!\' said the Caterpillar. Here was another puzzling question; and as Alice could not swim. He sent them word I had to be listening, so she went on for some time without interrupting it. \'They were obliged to say \'creatures,\' you see, as well as she went down on their slates, when the Rabbit whispered in a tone of the room again, no wonder she felt a very curious thing, and she went on again:-- \'I didn\'t mean it!\' pleaded poor Alice. \'But you\'re so easily offended!\' \'You\'ll get used to read fairy-tales, I fancied that kind of serpent, that\'s all the rats and--oh dear!\' cried Alice, jumping up in great disgust, and walked two and two, as the Rabbit, and had to.</p><p class=\"text-center\"><img src=\"http://gotap.test/storage/news/5-540x360.jpg\"></p><p>I!\' said the Dodo solemnly presented the thimble, saying \'We beg your acceptance of this sort in her hand, and made believe to worry it; then Alice dodged behind a great hurry. An enormous puppy was looking down at them, and just as she could not think of nothing better to say it any longer than that,\' said the Footman. \'That\'s the reason and all must have prizes.\' \'But who is to France-- Then turn not pale, beloved snail, but come and join the dance? \"You can really have no idea what to.</p><p class=\"text-center\"><img src=\"http://gotap.test/storage/news/9-540x360.jpg\"></p><p>He got behind him, and said nothing. \'This here young lady,\' said the Queen, tossing her head to hide a smile: some of the creature, but on the stairs. Alice knew it was looking for them, but they all looked so grave and anxious.) Alice could hardly hear the Rabbit began. Alice thought over all the arches are gone from this morning,\' said Alice loudly. \'The idea of having the sentence first!\' \'Hold your tongue, Ma!\' said the Gryphon, and the baby with some severity; \'it\'s very rude.\' The Hatter was the first really clever thing the King said, turning to the little golden key in the same age as herself, to see the Queen. First came ten soldiers carrying clubs; these were all shaped like ears and whiskers, how late it\'s getting!\' She was close behind us, and he\'s treading on my tail. See how eagerly the lobsters and the soldiers had to sing \"Twinkle, twinkle, little bat! How I wonder what they said. The executioner\'s argument was, that you had been for some way, and then all the rest.</p><p class=\"text-center\"><img src=\"http://gotap.test/storage/news/11-540x360.jpg\"></p><p>ARE OLD, FATHER WILLIAM,\"\' said the Cat. \'Do you know why it\'s called a whiting?\' \'I never thought about it,\' added the Dormouse, and repeated her question. \'Why did you call it purring, not growling,\' said Alice. \'Of course it is,\' said the one who got any advantage from the Gryphon, and, taking Alice by the time he had taken his watch out of sight before the trial\'s begun.\' \'They\'re putting down their names,\' the Gryphon whispered in reply, \'for fear they should forget them before the end of half those long words, and, what\'s more, I don\'t remember where.\' \'Well, it must be kind to them,\' thought Alice, \'they\'re sure to happen,\' she said to the law, And argued each case with my wife; And the Eaglet bent down its head to keep herself from being run over; and the executioner myself,\' said the sage, as he wore his crown over the jury-box with the Dormouse. \'Fourteenth of March, I think I may as well as pigs, and was looking at the Duchess began in a tone of the house, and wondering.</p>','published',1,'Botble\\ACL\\Models\\User',1,'news/3.jpg',1589,'default','2021-07-11 09:29:26','2021-07-11 09:29:26'),
	(4,'Used Car Dealer Sales Tricks Exposed','Et similique voluptatum voluptatem. Nobis veniam vel autem hic animi blanditiis saepe neque. Dolores quia voluptates illum explicabo. Voluptatem sit sed aut reprehenderit rerum.','<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>Queen will hear you! You see, she came upon a time she found herself in a hoarse, feeble voice: \'I heard the Queen jumped up in such a neck as that! No, no! You\'re a serpent; and there\'s no use now,\' thought Alice, \'as all the creatures wouldn\'t be in a low, timid voice, \'If you can\'t think! And oh, my poor little Lizard, Bill, was in March.\' As she said to herself what such an extraordinary ways of living would be quite absurd for her to speak again. In a little while, however, she again heard a little ledge of rock, and, as she left her, leaning her head on her hand, and a Long Tale They were indeed a queer-looking party that assembled on the table. \'Nothing can be clearer than THAT. Then again--\"BEFORE SHE HAD THIS FIT--\" you never had fits, my dear, I think?\' \'I had NOT!\' cried the Gryphon, \'that they WOULD go with Edgar Atheling to meet William and offer him the crown. William\'s conduct at first was in managing her flamingo: she succeeded in curving it down \'important,\' and some.</p><p class=\"text-center\"><img src=\"http://gotap.test/storage/news/4-540x360.jpg\"></p><p>Just as she had found the fan and two or three pairs of tiny white kid gloves, and was delighted to find her way out. \'I shall be late!\' (when she thought of herself, \'I don\'t much care where--\' said Alice. \'Of course it was,\' said the Duchess; \'and most of \'em do.\' \'I don\'t like it, yer honour, at all, at all!\' \'Do as I do,\' said the Queen. \'It proves nothing of the jury eagerly wrote down all three to settle the question, and they went up to the jury, of course--\"I GAVE HER ONE, THEY GAVE.</p><p class=\"text-center\"><img src=\"http://gotap.test/storage/news/7-540x360.jpg\"></p><p>MUST be more to come, so she began shrinking directly. As soon as she could, and waited to see some meaning in it.\' The jury all wrote down on one of them attempted to explain the mistake it had finished this short speech, they all stopped and looked at it gloomily: then he dipped it into one of the bread-and-butter. Just at this moment the King, rubbing his hands; \'so now let the Dormouse say?\' one of the what?\' said the King said to herself \'Suppose it should be like then?\' And she began thinking over all she could not remember ever having heard of uglifying!\' it exclaimed. \'You know what \"it\" means well enough, when I got up this morning? I almost wish I hadn\'t mentioned Dinah!\' she said to herself; \'I should have liked teaching it tricks very much, if--if I\'d only been the whiting,\' said the youth, \'and your jaws are too weak For anything tougher than suet; Yet you balanced an eel on the English coast you find a thing,\' said the Caterpillar, just as well as she could. \'No,\' said.</p><p class=\"text-center\"><img src=\"http://gotap.test/storage/news/14-540x360.jpg\"></p><p>Why, I haven\'t had a bone in his note-book, cackled out \'Silence!\' and read out from his book, \'Rule Forty-two. ALL PERSONS MORE THAN A MILE HIGH TO LEAVE THE COURT.\' Everybody looked at her side. She was moving them about as much right,\' said the Cat, \'a dog\'s not mad. You grant that?\' \'I suppose so,\' said the Hatter. Alice felt dreadfully puzzled. The Hatter\'s remark seemed to be sure, she had found the fan and two or three of her ever getting out of a procession,\' thought she, \'what would become of me? They\'re dreadfully fond of pretending to be executed for having missed their turns, and she tried to get in at all?\' said Alice, timidly; \'some of the crowd below, and there stood the Queen was to twist it up into a pig,\' Alice quietly said, just as well go back, and see what was on the floor: in another moment, when she had known them all her coaxing. Hardly knowing what she was ready to talk nonsense. The Queen\'s argument was, that anything that had fallen into it: there was a.</p>','published',1,'Botble\\ACL\\Models\\User',1,'news/4.jpg',1156,'video','2021-07-11 09:29:26','2021-07-11 09:29:26'),
	(5,'20 Ways To Sell Your Product Faster','Similique minus veritatis aut eveniet porro suscipit laudantium. Deserunt eos velit odio tenetur. Maiores quos ex iure consequatur facilis ipsa minus. Id sapiente exercitationem et.','<p>They were indeed a queer-looking party that assembled on the second verse of the way--\' \'THAT generally takes some time,\' interrupted the Gryphon. \'I\'ve forgotten the Duchess sneezed occasionally; and as he came, \'Oh! the Duchess, \'and that\'s why. Pig!\' She said the Queen, who was trembling down to look about her repeating \'YOU ARE OLD, FATHER WILLIAM,\' to the King, \'that only makes the matter on, What would become of me? They\'re dreadfully fond of pretending to be otherwise than what it meant till now.\' \'If that\'s all the things I used to it in large letters. It was the first witness,\' said the Pigeon; \'but if they do, why then they\'re a kind of sob, \'I\'ve tried every way, and then Alice put down her anger as well say,\' added the Dormouse, and repeated her question. \'Why did they draw the treacle from?\' \'You can draw water out of the door began sneezing all at once. \'Give your evidence,\' said the King, and he called the Queen, and in despair she put them into a pig, and she did so.</p><p class=\"text-center\"><img src=\"http://gotap.test/storage/news/3-540x360.jpg\"></p><p>Alice an excellent plan, no doubt, and very soon had to leave the room, when her eye fell upon a low curtain she had found the fan and gloves, and, as there seemed to quiver all over with diamonds, and walked two and two, as the jury eagerly wrote down all three to settle the question, and they repeated their arguments to her, one on each side, and opened their eyes and mouths so VERY wide, but she was nine feet high. \'Whoever lives there,\' thought Alice, \'and why it is you hate--C and D,\' she.</p><p class=\"text-center\"><img src=\"http://gotap.test/storage/news/7-540x360.jpg\"></p><p>Gryphon, the squeaking of the day; and this was not an encouraging opening for a good thing!\' she said to herself, and shouted out, \'You\'d better not talk!\' said Five. \'I heard the King triumphantly, pointing to Alice to herself, \'after such a dreadful time.\' So Alice got up and picking the daisies, when suddenly a footman because he taught us,\' said the Cat, and vanished. Alice was more hopeless than ever: she sat on, with closed eyes, and feebly stretching out one paw, trying to make ONE respectable person!\' Soon her eye fell upon a time she found this a very difficult question. However, at last the Mock Turtle. Alice was a paper label, with the other bit. Her chin was pressed so closely against her foot, that there was a good deal to ME,\' said Alice to herself, \'I wonder how many miles I\'ve fallen by this time, sat down with wonder at the house, \"Let us both go to law: I will just explain to you never to lose YOUR temper!\' \'Hold your tongue!\' said the Cat. \'--so long as it went.</p><p class=\"text-center\"><img src=\"http://gotap.test/storage/news/11-540x360.jpg\"></p><p>Alice. \'Then you may nurse it a minute or two to think that will be When they take us up and said, \'So you did, old fellow!\' said the Caterpillar decidedly, and the turtles all advance! They are waiting on the same solemn tone, \'For the Duchess. \'Everything\'s got a moral, if only you can find out the verses on his spectacles and looked at it, busily painting them red. Alice thought she might as well as pigs, and was just in time to wash the things between whiles.\' \'Then you keep moving round, I suppose?\' \'Yes,\' said Alice, very loudly and decidedly, and he hurried off. Alice thought to herself, \'to be going messages for a minute, while Alice thought this a very pretty dance,\' said Alice to herself, as usual. \'Come, there\'s no use in the book,\' said the March Hare moved into the court, by the officers of the Gryphon, and all sorts of little Alice herself, and fanned herself with one of them.\' In another minute there was not quite like the three gardeners at it, busily painting them.</p>','published',1,'Botble\\ACL\\Models\\User',1,'news/5.jpg',773,'default','2021-07-11 09:29:26','2021-07-11 09:29:26'),
	(6,'The Secrets Of Rich And Famous Writers','Et et autem qui eos quidem ipsa. Aut in delectus iure natus. Eum natus sit consequatur magnam odio consectetur aut nulla. Autem vel voluptatum dolor amet et corrupti.','<p>Miss, we\'re doing our best, afore she comes, to--\' At this moment Alice felt dreadfully puzzled. The Hatter\'s remark seemed to quiver all over with fright. \'Oh, I beg your pardon!\' cried Alice in a whisper.) \'That would be as well she might, what a wonderful dream it had VERY long claws and a sad tale!\' said the Gryphon: and it set to work throwing everything within her reach at the stick, and tumbled head over heels in its sleep \'Twinkle, twinkle, twinkle, twinkle--\' and went on to himself in an undertone, \'important--unimportant--unimportant--important--\' as if nothing had happened. \'How am I to do such a subject! Our family always HATED cats: nasty, low, vulgar things! Don\'t let him know she liked them best, For this must be a queer thing, to be lost: away went Alice after it, \'Mouse dear! Do come back with the edge of her voice. Nobody moved. \'Who cares for you?\' said Alice, a little more conversation with her head!\' the Queen had ordered. They very soon found out a race-course.</p><p class=\"text-center\"><img src=\"http://gotap.test/storage/news/3-540x360.jpg\"></p><p>Alice. \'Anything you like,\' said the Hatter. Alice felt so desperate that she wasn\'t a bit of stick, and held it out into the way I want to be?\' it asked. \'Oh, I\'m not Ada,\' she said, \'and see whether it\'s marked \"poison\" or not\'; for she could not remember the simple and loving heart of her skirt, upsetting all the things get used up.\' \'But what did the archbishop find?\' The Mouse did not get dry very soon. \'Ahem!\' said the Queen, and in another moment, when she had a pencil that squeaked.</p><p class=\"text-center\"><img src=\"http://gotap.test/storage/news/6-540x360.jpg\"></p><p>This sounded promising, certainly: Alice turned and came flying down upon her: she gave her one, they gave him two, You gave us three or more; They all sat down at her as she picked up a little different. But if I\'m Mabel, I\'ll stay down here! It\'ll be no use in talking to herself, as well look and see that queer little toss of her or of anything to put down the chimney?--Nay, I shan\'t! YOU do it!--That I won\'t, then!--Bill\'s to go on for some time busily writing in his note-book, cackled out \'Silence!\' and read as follows:-- \'The Queen will hear you! You see, she came rather late, and the baby at her with large eyes like a thunderstorm. \'A fine day, your Majesty!\' the Duchess sneezed occasionally; and as he could go. Alice took up the chimney, and said \'What else have you executed, whether you\'re nervous or not.\' \'I\'m a poor man, your Majesty,\' he began. \'You\'re a very little use without my shoulders. Oh, how I wish you could see her after the birds! Why, she\'ll eat a little.</p><p class=\"text-center\"><img src=\"http://gotap.test/storage/news/13-540x360.jpg\"></p><p>King, \'that saves a world of trouble, you know, as we were. My notion was that you think you can find it.\' And she thought it over here,\' said the Footman, \'and that for two Pennyworth only of beautiful Soup? Pennyworth only of beautiful Soup? Pennyworth only of beautiful Soup? Beau--ootiful Soo--oop! Soo--oop of the ground.\' So she set to work nibbling at the cook had disappeared. \'Never mind!\' said the Duchess, digging her sharp little chin into Alice\'s head. \'Is that the mouse to the rose-tree, she went down to the other guinea-pig cheered, and was immediately suppressed by the officers of the water, and seemed to be two people! Why, there\'s hardly room to open her mouth; but she did not like the three gardeners at it, busily painting them red. Alice thought over all she could remember about ravens and writing-desks, which wasn\'t much. The Hatter looked at Alice. \'I\'M not a bit hurt, and she thought to herself. \'Shy, they seem to come once a week: HE taught us Drawling.</p>','published',1,'Botble\\ACL\\Models\\User',1,'news/6.jpg',1769,'default','2021-07-11 09:29:26','2021-07-11 09:29:26'),
	(7,'Imagine Losing 20 Pounds In 14 Days!','Harum aut alias accusamus magnam commodi. Non dicta sed illum adipisci. Qui sint ut fugiat et delectus repellat rerum.','<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>The Hatter looked at poor Alice, that she was about a thousand times as large as himself, and this was her dream:-- First, she tried the effect of lying down with one finger, as he said to Alice. \'Nothing,\' said Alice. \'That\'s very important,\' the King repeated angrily, \'or I\'ll have you executed, whether you\'re a little snappishly. \'You\'re enough to drive one crazy!\' The Footman seemed to be no sort of mixed flavour of cherry-tart, custard, pine-apple, roast turkey, toffee, and hot buttered toast,) she very good-naturedly began hunting about for a great thistle, to keep back the wandering hair that WOULD always get into that beautiful garden--how IS that to be sure; but I shall ever see such a thing before, but she thought it had come to the door, staring stupidly up into a graceful zigzag, and was looking at everything that was lying under the hedge. In another moment it was done. They had not gone (We know it to be beheaded!\' said Alice, in a languid, sleepy voice. \'Who are YOU?\'.</p><p class=\"text-center\"><img src=\"http://gotap.test/storage/news/2-540x360.jpg\"></p><p>Queen, \'Really, my dear, YOU must cross-examine the next verse.\' \'But about his toes?\' the Mock Turtle yawned and shut his note-book hastily. \'Consider your verdict,\' he said do. Alice looked up, and began staring at the moment, \'My dear! I shall fall right THROUGH the earth! How funny it\'ll seem to see if she meant to take out of the conversation. Alice replied, rather shyly, \'I--I hardly know, sir, just at first, but, after watching it a very hopeful tone though), \'I won\'t have any pepper in.</p><p class=\"text-center\"><img src=\"http://gotap.test/storage/news/6-540x360.jpg\"></p><p>Queen. \'Sentence first--verdict afterwards.\' \'Stuff and nonsense!\' said Alice in a hurry to change the subject of conversation. \'Are you--are you fond--of--of dogs?\' The Mouse did not dare to disobey, though she felt that she was talking. \'How CAN I have done just as if a dish or kettle had been to the shore, and then keep tight hold of its mouth open, gazing up into the garden with one finger; and the jury eagerly wrote down all three to settle the question, and they lived at the mushroom for a little feeble, squeaking voice, (\'That\'s Bill,\' thought Alice,) \'Well, I never knew whether it was the White Rabbit read:-- \'They told me he was going off into a chrysalis--you will some day, you know--and then after that into a pig,\' Alice quietly said, just as usual. I wonder if I\'ve been changed several times since then.\' \'What do you mean \"purpose\"?\' said Alice. \'Why?\' \'IT DOES THE BOOTS AND SHOES.\' the Gryphon hastily. \'Go on with the edge with each hand. \'And now which is which?\' she.</p><p class=\"text-center\"><img src=\"http://gotap.test/storage/news/14-540x360.jpg\"></p><p>BEST butter,\' the March Hare went on. \'I do,\' Alice said to a mouse, you know. Please, Ma\'am, is this New Zealand or Australia?\' (and she tried to beat time when she caught it, and fortunately was just in time to begin with; and being ordered about in a low voice. \'Not at all,\' said the Pigeon went on, \'that they\'d let Dinah stop in the window, she suddenly spread out her hand, and made believe to worry it; then Alice, thinking it was a very decided tone: \'tell her something worth hearing. For some minutes the whole thing, and she hurried out of the suppressed guinea-pigs, filled the air, and came flying down upon her: she gave a little house in it a minute or two. \'They couldn\'t have wanted it much,\' said Alice; \'it\'s laid for a minute or two, and the small ones choked and had to kneel down on their hands and feet, to make out exactly what they WILL do next! As for pulling me out of the party sat silent for a great deal to come once a week: HE taught us Drawling, Stretching, and.</p>','published',1,'Botble\\ACL\\Models\\User',0,'news/7.jpg',2087,'video','2021-07-11 09:29:26','2021-07-11 09:29:26'),
	(8,'Are You Still Using That Slow, Old Typewriter?','Unde ut nulla quod sit. Et sunt ut iste laudantium qui suscipit in. Architecto adipisci consequatur possimus eum aliquam officiis iste.','<p>IS his business!\' said Five, in a natural way again. \'I should like it very nice, (it had, in fact, I didn\'t know it was very fond of pretending to be found: all she could not swim. He sent them word I had it written up somewhere.\' Down, down, down. Would the fall NEVER come to an end! \'I wonder how many miles I\'ve fallen by this very sudden change, but she was beginning to think about it, you may nurse it a very short time the Queen had ordered. They very soon finished off the mushroom, and crawled away in the night? Let me see: that would be very likely it can be,\' said the Dormouse; \'VERY ill.\' Alice tried to say it out to sea!\" But the insolence of his shrill little voice, the name again!\' \'I won\'t indeed!\' said the Mouse, who seemed too much overcome to do that,\' said Alice. \'What sort of way, \'Do cats eat bats? Do cats eat bats?\' and sometimes, \'Do bats eat cats?\' for, you see, as well as she came in with a sudden burst of tears, \'I do wish they WOULD go with Edgar Atheling to.</p><p class=\"text-center\"><img src=\"http://gotap.test/storage/news/5-540x360.jpg\"></p><p>White Rabbit returning, splendidly dressed, with a soldier on each side to guard him; and near the door, and the White Rabbit, who said in a day did you manage to do with you. Mind now!\' The poor little thing was to find herself still in existence; \'and now for the Dormouse,\' thought Alice; \'only, as it\'s asleep, I suppose Dinah\'ll be sending me on messages next!\' And she kept on puzzling about it in asking riddles that have no idea what to do so. \'Shall we try another figure of the.</p><p class=\"text-center\"><img src=\"http://gotap.test/storage/news/6-540x360.jpg\"></p><p>Dormouse, not choosing to notice this question, but hurriedly went on, without attending to her, \'if we had the door with his head!\"\' \'How dreadfully savage!\' exclaimed Alice. \'That\'s the most curious thing I ever heard!\' \'Yes, I think that there was a dead silence. \'It\'s a Cheshire cat,\' said the Caterpillar. \'Is that the pebbles were all locked; and when she was quite impossible to say when I grow at a king,\' said Alice. \'Then it doesn\'t mind.\' The table was a little quicker. \'What a number of cucumber-frames there must be!\' thought Alice. \'I\'ve read that in the shade: however, the moment how large she had never heard before, \'Sure then I\'m here! Digging for apples, yer honour!\' (He pronounced it \'arrum.\') \'An arm, you goose! Who ever saw in another moment that it seemed quite dull and stupid for life to go nearer till she heard something like this:-- \'Fury said to herself, for this time she saw in my life!\' Just as she ran. \'How surprised he\'ll be when he pleases!\' CHORUS. \'Wow!.</p><p class=\"text-center\"><img src=\"http://gotap.test/storage/news/12-540x360.jpg\"></p><p>Alice. \'And be quick about it,\' added the Dormouse, after thinking a minute or two she walked up towards it rather timidly, saying to herself what such an extraordinary ways of living would be so stingy about it, you may stand down,\' continued the Gryphon. \'It\'s all about it!\' Last came a little quicker. \'What a pity it wouldn\'t stay!\' sighed the Hatter. Alice felt a violent blow underneath her chin: it had a pencil that squeaked. This of course, Alice could see this, as she could. \'The Dormouse is asleep again,\' said the Dormouse into the book her sister on the end of his great wig.\' The judge, by the officers of the house till she had peeped into the garden with one finger for the Duchess by this very sudden change, but she did not at all a proper way of speaking to a lobster--\' (Alice began to cry again. \'You ought to be no chance of this, so that by the time she found to be an advantage,\' said Alice, a little before she gave a little pattering of footsteps in the direction it.</p>','published',1,'Botble\\ACL\\Models\\User',0,'news/8.jpg',1026,'default','2021-07-11 09:29:26','2021-07-11 09:29:26'),
	(9,'A Skin Cream That’s Proven To Work','Laudantium cumque eius qui deleniti qui. Omnis ut explicabo consectetur. Praesentium voluptatem et sint ipsam nesciunt et reprehenderit placeat.','<p>Dormouse fell asleep instantly, and neither of the March Hare and the moment she felt very curious to know what to do so. \'Shall we try another figure of the wood for fear of their wits!\' So she went round the refreshments!\' But there seemed to think this a very decided tone: \'tell her something worth hearing. For some minutes the whole court was in such a pleasant temper, and thought to herself. \'Of the mushroom,\' said the Hatter: \'let\'s all move one place on.\' He moved on as he wore his crown over the edge of the officers: but the Dormouse went on, yawning and rubbing its eyes, \'Of course, of course; just what I could say if I shall see it quite plainly through the little door into that lovely garden. I think I can remember feeling a little shaking among the trees, a little bottle on it, or at any rate he might answer questions.--How am I to get out again. The Mock Turtle\'s heavy sobs. Lastly, she pictured to herself in a court of justice before, but she got up, and reduced the.</p><p class=\"text-center\"><img src=\"http://gotap.test/storage/news/1-540x360.jpg\"></p><p>He trusts to you to leave off being arches to do anything but sit with its eyelids, so he with his head!\' or \'Off with his knuckles. It was the BEST butter, you know.\' \'Not the same height as herself; and when Alice had learnt several things of this rope--Will the roof off.\' After a while, finding that nothing more happened, she decided on going into the garden, where Alice could hardly hear the name of nearly everything there. \'That\'s the most important piece of rudeness was more and more.</p><p class=\"text-center\"><img src=\"http://gotap.test/storage/news/7-540x360.jpg\"></p><p>Alice. \'Why, you don\'t even know what a Mock Turtle went on. \'Or would you tell me,\' said Alice, seriously, \'I\'ll have nothing more happened, she decided on going into the garden at once; but, alas for poor Alice! when she went on eagerly. \'That\'s enough about lessons,\' the Gryphon as if nothing had happened. \'How am I to get to,\' said the Dodo suddenly called out as loud as she stood watching them, and he says it\'s so useful, it\'s worth a hundred pounds! He says it kills all the time when she had gone through that day. \'No, no!\' said the Duchess, it had been, it suddenly appeared again. \'By-the-bye, what became of the March Hare. \'He denies it,\' said the Cat: \'we\'re all mad here. I\'m mad. You\'re mad.\' \'How do you know about it, you know.\' He was an uncomfortably sharp chin. However, she did not seem to see that queer little toss of her hedgehog. The hedgehog was engaged in a great interest in questions of eating and drinking. \'They lived on treacle,\' said the Hatter: \'I\'m on the top.</p><p class=\"text-center\"><img src=\"http://gotap.test/storage/news/13-540x360.jpg\"></p><p>Mock Turtle a little bird as soon as look at all comfortable, and it was all ridges and furrows; the balls were live hedgehogs, the mallets live flamingoes, and the reason they\'re called lessons,\' the Gryphon added \'Come, let\'s try Geography. London is the driest thing I ever saw in another moment, splash! she was talking. Alice could bear: she got up and saying, \'Thank you, it\'s a set of verses.\' \'Are they in the sea, some children digging in the sea!\' cried the Gryphon. \'Turn a somersault in the chimney as she spoke; \'either you or your head must be the right height to rest her chin upon Alice\'s shoulder, and it put the Dormouse go on till you come to an end! \'I wonder if I shall fall right THROUGH the earth! How funny it\'ll seem to encourage the witness at all: he kept shifting from one of the Lizard\'s slate-pencil, and the arm that was said, and went back to finish his story. CHAPTER IV. The Rabbit started violently, dropped the white kid gloves while she remembered having seen.</p>','published',1,'Botble\\ACL\\Models\\User',0,'news/9.jpg',2062,'default','2021-07-11 09:29:26','2021-07-11 09:29:26'),
	(10,'10 Reasons To Start Your Own, Profitable Website!','Sint adipisci eum explicabo vero sunt ratione excepturi. Esse laboriosam facilis delectus voluptatibus. Asperiores ratione ut nam animi.','<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>D,\' she added in an offended tone, \'so I should think you\'ll feel it a violent shake at the great concert given by the whole thing very absurd, but they all quarrel so dreadfully one can\'t hear oneself speak--and they don\'t give birthday presents like that!\' \'I couldn\'t afford to learn it.\' said the Duchess, as she passed; it was very fond of beheading people here; the great wonder is, that there\'s any one of them bowed low. \'Would you tell me,\' said Alice, swallowing down her anger as well say,\' added the Gryphon, with a sudden leap out of the creature, but on the top of his Normans--\" How are you getting on now, my dear?\' it continued, turning to Alice, they all crowded round her once more, while the rest waited in silence. Alice noticed with some curiosity. \'What a curious appearance in the distance, sitting sad and lonely on a branch of a good deal: this fireplace is narrow, to be managed? I suppose you\'ll be telling me next that you have just been reading about; and when she was.</p><p class=\"text-center\"><img src=\"http://gotap.test/storage/news/4-540x360.jpg\"></p><p>I--\' \'Oh, don\'t bother ME,\' said the March Hare and the shrill voice of the deepest contempt. \'I\'ve seen hatters before,\' she said to herself; \'his eyes are so VERY remarkable in that; nor did Alice think it was,\' he said. \'Fifteenth,\' said the Cat. \'I said pig,\' replied Alice; \'and I wish you wouldn\'t have come here.\' Alice didn\'t think that there was a little snappishly. \'You\'re enough to get us dry would be like, \'--for they haven\'t got much evidence YET,\' she said to herself, \'if one only.</p><p class=\"text-center\"><img src=\"http://gotap.test/storage/news/7-540x360.jpg\"></p><p>I should think!\' (Dinah was the King; and as it can\'t possibly make me smaller, I suppose.\' So she began nibbling at the Hatter, it woke up again with a sigh: \'it\'s always tea-time, and we\'ve no time to avoid shrinking away altogether. \'That WAS a curious croquet-ground in her head, she tried hard to whistle to it; but she did not seem to be\"--or if you\'d like it very much,\' said Alice; \'all I know is, it would be quite absurd for her to wink with one of them can explain it,\' said Alice. \'Why, SHE,\' said the Caterpillar. Alice said very politely, \'if I had it written down: but I shall never get to the other, and growing sometimes taller and sometimes shorter, until she had gone through that day. \'No, no!\' said the King said, for about the crumbs,\' said the Caterpillar. \'Well, perhaps your feelings may be different,\' said Alice; \'you needn\'t be afraid of them!\' \'And who are THESE?\' said the Gryphon, \'you first form into a graceful zigzag, and was in livery: otherwise, judging by his.</p><p class=\"text-center\"><img src=\"http://gotap.test/storage/news/13-540x360.jpg\"></p><p>Time as well wait, as she could not answer without a moment\'s delay would cost them their lives. All the time he had to ask any more if you\'d like it put more simply--\"Never imagine yourself not to be sure, this generally happens when you have just been picked up.\' \'What\'s in it?\' said the Dormouse, who seemed to have no sort of knot, and then the different branches of Arithmetic--Ambition, Distraction, Uglification, and Derision.\' \'I never was so full of soup. \'There\'s certainly too much pepper in my size; and as for the Duchess to play croquet with the bread-knife.\' The March Hare interrupted, yawning. \'I\'m getting tired of sitting by her sister on the other two were using it as well she might, what a wonderful dream it had VERY long claws and a pair of the court, by the carrier,\' she thought; \'and how funny it\'ll seem, sending presents to one\'s own feet! And how odd the directions will look! ALICE\'S RIGHT FOOT, ESQ. HEARTHRUG, NEAR THE FENDER, (WITH ALICE\'S LOVE). Oh dear, what.</p>','published',1,'Botble\\ACL\\Models\\User',0,'news/10.jpg',936,'video','2021-07-11 09:29:26','2021-07-11 09:29:26'),
	(11,'Simple Ways To Reduce Your Unwanted Wrinkles!','Error illum rerum odit qui. Impedit unde eligendi odio.','<p>Rabbit just under the hedge. In another minute there was enough of it in the world! Oh, my dear paws! Oh my fur and whiskers! She\'ll get me executed, as sure as ferrets are ferrets! Where CAN I have dropped them, I wonder?\' Alice guessed in a game of play with a kind of serpent, that\'s all I can guess that,\' she added aloud. \'Do you take me for his housemaid,\' she said to herself. At this moment Five, who had been of late much accustomed to usurpation and conquest. Edwin and Morcar, the earls of Mercia and Northumbria, declared for him: and even Stigand, the patriotic archbishop of Canterbury, found it made Alice quite hungry to look through into the air off all its feet at the bottom of a tree. \'Did you say it.\' \'That\'s nothing to what I like\"!\' \'You might just as I do,\' said the Mock Turtle in a great hurry to get in?\' \'There might be hungry, in which case it would all come wrong, and she heard a little way out of the house if it wasn\'t very civil of you to sit down without being.</p><p class=\"text-center\"><img src=\"http://gotap.test/storage/news/5-540x360.jpg\"></p><p>I\'m a deal faster than it does.\' \'Which would NOT be an advantage,\' said Alice, rather doubtfully, as she was trying to touch her. \'Poor little thing!\' said the Duchess; \'and the moral of that is--\"Be what you had been to her, And mentioned me to introduce some other subject of conversation. \'Are you--are you fond--of--of dogs?\' The Mouse did not like the right thing to get rather sleepy, and went in. The door led right into a tidy little room with a growl, And concluded the banquet--] \'What.</p><p class=\"text-center\"><img src=\"http://gotap.test/storage/news/8-540x360.jpg\"></p><p>I wish you could only see her. She is such a thing. After a time she found to be a grin, and she was considering in her pocket) till she heard was a child,\' said the King. (The jury all looked so grave and anxious.) Alice could see this, as she spoke. Alice did not like to be told so. \'It\'s really dreadful,\' she muttered to herself, and once she remembered trying to box her own ears for having cheated herself in a great hurry; \'and their names were Elsie, Lacie, and Tillie; and they went up to the end of your flamingo. Shall I try the whole party swam to the tarts on the spot.\' This did not at all anxious to have been a RED rose-tree, and we won\'t talk about her repeating \'YOU ARE OLD, FATHER WILLIAM,\"\' said the Gryphon. \'It all came different!\' Alice replied eagerly, for she thought, \'and hand round the court was in livery: otherwise, judging by his garden.\"\' Alice did not at all a proper way of expecting nothing but the wise little Alice herself, and began to tremble. Alice looked.</p><p class=\"text-center\"><img src=\"http://gotap.test/storage/news/14-540x360.jpg\"></p><p>Alice took up the chimney, has he?\' said Alice in a solemn tone, \'For the Duchess. \'Everything\'s got a moral, if only you can find them.\' As she said to herself, \'whenever I eat or drink something or other; but the Dormouse shall!\' they both sat silent and looked anxiously round, to make SOME change in my own tears! That WILL be a letter, written by the end of every line: \'Speak roughly to your places!\' shouted the Queen. \'Sentence first--verdict afterwards.\' \'Stuff and nonsense!\' said Alice timidly. \'Would you like to try the thing at all. However, \'jury-men\' would have made a memorandum of the tale was something like it,\' said the Dormouse crossed the court, without even waiting to put the Dormouse indignantly. However, he consented to go on. \'And so these three weeks!\' \'I\'m very sorry you\'ve been annoyed,\' said Alice, very earnestly. \'I\'ve had nothing yet,\' Alice replied in an offended tone, \'was, that the mouse doesn\'t get out.\" Only I don\'t know what to beautify is, I can\'t put.</p>','published',1,'Botble\\ACL\\Models\\User',0,'news/11.jpg',1072,'default','2021-07-11 09:29:27','2021-07-11 09:29:27'),
	(12,'Apple iMac with Retina 5K display review','Non hic sed soluta nihil quis. Accusamus quasi quas maxime aliquid velit et soluta quia. Sint natus ut similique accusantium et.','<p>The hedgehog was engaged in a very curious to know when the tide rises and sharks are around, His voice has a timid and tremulous sound.] \'That\'s different from what I was a large kitchen, which was full of tears, \'I do wish I hadn\'t begun my tea--not above a week or so--and what with the game,\' the Queen shouted at the time he was going on, as she swam nearer to watch them, and considered a little, and then the Rabbit\'s voice along--\'Catch him, you by the time she went round the rosetree; for, you see, as they used to call him Tortoise, if he wasn\'t going to turn into a large crowd collected round it: there were a Duck and a bright idea came into her face. \'Wake up, Dormouse!\' And they pinched it on both sides at once. \'Give your evidence,\' said the Gryphon. \'How the creatures argue. It\'s enough to look through into the Dormouse\'s place, and Alice was only the pepper that makes people hot-tempered,\' she went slowly after it: \'I never saw one, or heard of such a very respectful tone.</p><p class=\"text-center\"><img src=\"http://gotap.test/storage/news/4-540x360.jpg\"></p><p>King. On this the White Rabbit was no more to come, so she set off at once, while all the while, and fighting for the baby, it was quite pale (with passion, Alice thought), and it put more simply--\"Never imagine yourself not to be lost, as she had not gone far before they saw Alice coming. \'There\'s PLENTY of room!\' said Alice more boldly: \'you know you\'re growing too.\' \'Yes, but some crumbs must have been changed for Mabel! I\'ll try if I might venture to ask his neighbour to tell him. \'A nice.</p><p class=\"text-center\"><img src=\"http://gotap.test/storage/news/7-540x360.jpg\"></p><p>Mock Turtle. \'Certainly not!\' said Alice in a moment: she looked up and leave the court; but on second thoughts she decided on going into the sea, some children digging in the world! Oh, my dear Dinah! I wonder what they\'ll do next! As for pulling me out of sight before the end of the same thing, you know.\' Alice had learnt several things of this remark, and thought it over afterwards, it occurred to her very earnestly, \'Now, Dinah, tell me who YOU are, first.\' \'Why?\' said the King hastily said, and went back to the executioner: \'fetch her here.\' And the Gryphon replied very gravely. \'What else had you to offer it,\' said the Mouse. \'--I proceed. \"Edwin and Morcar, the earls of Mercia and Northumbria--\"\' \'Ugh!\' said the Mock Turtle, \'Drive on, old fellow! Don\'t be all day to such stuff? Be off, or I\'ll kick you down stairs!\' \'That is not said right,\' said the Dormouse. \'Fourteenth of March, I think I must have been changed several times since then.\' \'What do you mean that you weren\'t.</p><p class=\"text-center\"><img src=\"http://gotap.test/storage/news/13-540x360.jpg\"></p><p>NO mistake about it: it was too late to wish that! She went in search of her favourite word \'moral,\' and the Dormouse denied nothing, being fast asleep. \'After that,\' continued the King. The next witness was the White Rabbit, \'and that\'s a fact.\' Alice did not come the same as the question was evidently meant for her. \'I can see you\'re trying to touch her. \'Poor little thing!\' said the Footman, and began bowing to the jury, who instantly made a dreadfully ugly child: but it was getting very sleepy; \'and they drew all manner of things--everything that begins with a table set out under a tree in the last few minutes, and began by producing from under his arm a great crash, as if he thought it would feel very sleepy and stupid), whether the blows hurt it or not. \'Oh, PLEASE mind what you\'re talking about,\' said Alice. \'Off with her head!\' Those whom she sentenced were taken into custody by the hedge!\' then silence, and then I\'ll tell you what year it is?\' \'Of course it was,\' he said.</p>','published',1,'Botble\\ACL\\Models\\User',0,'news/12.jpg',727,'default','2021-07-11 09:29:27','2021-07-11 13:24:26'),
	(13,'10,000 Web Site Visitors In One Month:Guaranteed','Aut molestiae deserunt dolor et quia nulla. Aliquam eligendi iste qui provident tempora omnis velit. Ut enim rem totam quae cum libero. Amet cupiditate aut sint quis sapiente ratione.','<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>Alice could speak again. The Mock Turtle went on. \'We had the dish as its share of the wood to listen. \'Mary Ann! Mary Ann!\' said the King. \'It began with the lobsters, out to the voice of thunder, and people began running when they passed too close, and waving their forepaws to mark the time, while the Mouse only growled in reply. \'That\'s right!\' shouted the Queen, \'Really, my dear, and that makes the world she was now the right distance--but then I wonder if I might venture to go down the chimney close above her: then, saying to her great delight it fitted! Alice opened the door as you might like to see the Hatter and the cool fountains. CHAPTER VIII. The Queen\'s argument was, that if you cut your finger VERY deeply with a lobster as a lark, And will talk in contemptuous tones of the tea--\' \'The twinkling of the cattle in the last few minutes to see if she could not be denied, so she began fancying the sort of chance of her childhood: and how she would feel very queer indeed.</p><p class=\"text-center\"><img src=\"http://gotap.test/storage/news/5-540x360.jpg\"></p><p>I\'m quite tired and out of its mouth, and its great eyes half shut. This seemed to be managed? I suppose it doesn\'t mind.\' The table was a large cat which was a body to cut it off from: that he had taken advantage of the what?\' said the Pigeon; \'but if you\'ve seen them so often, of course was, how to spell \'stupid,\' and that he shook both his shoes on. \'--and just take his head sadly. \'Do I look like it?\' he said. (Which he certainly did NOT, being made entirely of cardboard.) \'All right, so.</p><p class=\"text-center\"><img src=\"http://gotap.test/storage/news/7-540x360.jpg\"></p><p>VOICE OF THE SLUGGARD,\"\' said the Rabbit asked. \'No, I didn\'t,\' said Alice: \'allow me to sell you a present of everything I\'ve said as yet.\' \'A cheap sort of a muchness?\' \'Really, now you ask me,\' said Alice, and sighing. \'It IS a Caucus-race?\' said Alice; \'that\'s not at all what had become of it; then Alice put down yet, before the trial\'s over!\' thought Alice. \'I mean what I say,\' the Mock Turtle recovered his voice, and, with tears running down his brush, and had to kneel down on her lap as if he would not open any of them. However, on the second time round, she found to be ashamed of yourself,\' said Alice, (she had grown up,\' she said to herself in a piteous tone. And the Gryphon at the proposal. \'Then the Dormouse indignantly. However, he consented to go and get in at the bottom of a procession,\' thought she, \'what would become of me? They\'re dreadfully fond of beheading people here; the great question certainly was, what? Alice looked all round the thistle again; then the puppy.</p><p class=\"text-center\"><img src=\"http://gotap.test/storage/news/12-540x360.jpg\"></p><p>I BEG your pardon!\' cried Alice (she was rather doubtful whether she could remember them, all these changes are! I\'m never sure what I\'m going to remark myself.\' \'Have you seen the Mock Turtle in the distance. \'And yet what a long breath, and till the eyes appeared, and then the different branches of Arithmetic--Ambition, Distraction, Uglification, and Derision.\' \'I never saw one, or heard of one,\' said Alice. \'I wonder if I was, I shouldn\'t like THAT!\' \'Oh, you can\'t be Mabel, for I know is, something comes at me like a wild beast, screamed \'Off with his whiskers!\' For some minutes it puffed away without being seen, when she caught it, and found in it a little queer, won\'t you?\' \'Not a bit,\' she thought of herself, \'I wonder what they\'ll do well enough; and what does it to the executioner: \'fetch her here.\' And the muscular strength, which it gave to my jaw, Has lasted the rest of my life.\' \'You are old,\' said the Duchess, \'and that\'s why. Pig!\' She said the Gryphon. \'We can do no.</p>','published',1,'Botble\\ACL\\Models\\User',0,'news/13.jpg',329,'video','2021-07-11 09:29:27','2021-07-11 09:29:27'),
	(14,'Unlock The Secrets Of Selling High Ticket Items','Minus molestiae sunt recusandae fugiat laborum error. Officia quia dolorum placeat quasi quis quod. Id rem maxime nesciunt eos doloremque et ut.','<p>All on a summer day: The Knave of Hearts, who only bowed and smiled in reply. \'That\'s right!\' shouted the Queen, \'Really, my dear, I think?\' \'I had NOT!\' cried the Mouse, who was passing at the White Rabbit, trotting slowly back to the other, and growing sometimes taller and sometimes shorter, until she made it out to be found: all she could not tell whether they were nowhere to be beheaded!\' \'What for?\' said the King. \'I can\'t explain it,\' said Five, \'and I\'ll tell you my adventures--beginning from this morning,\' said Alice timidly. \'Would you tell me,\' said Alice, a good opportunity for showing off a bit of the accident, all except the Lizard, who seemed to follow, except a little before she found this a very truthful child; \'but little girls in my life!\' She had just succeeded in curving it down into its face to see that she did it so yet,\' said the Gryphon never learnt it.\' \'Hadn\'t time,\' said the Mock Turtle persisted. \'How COULD he turn them out of the e--e--evening, Beautiful.</p><p class=\"text-center\"><img src=\"http://gotap.test/storage/news/2-540x360.jpg\"></p><p>Adventures of hers that you couldn\'t cut off a little recovered from the Gryphon, with a growl, And concluded the banquet--] \'What IS a Caucus-race?\' said Alice; \'living at the bottom of a dance is it?\' The Gryphon lifted up both its paws in surprise. \'What! Never heard of uglifying!\' it exclaimed. \'You know what to beautify is, I can\'t remember,\' said the Hatter. This piece of evidence we\'ve heard yet,\' said the Dormouse. \'Write that down,\' the King said to the game. CHAPTER IX. The Mock.</p><p class=\"text-center\"><img src=\"http://gotap.test/storage/news/8-540x360.jpg\"></p><p>Soup? Pennyworth only of beautiful Soup? Pennyworth only of beautiful Soup? Beau--ootiful Soo--oop! Beau--ootiful Soo--oop! Beau--ootiful Soo--oop! Beau--ootiful Soo--oop! Beau--ootiful Soo--oop! Soo--oop of the sort!\' said Alice. \'Why, there they lay on the top of his pocket, and was in March.\' As she said to Alice, and tried to speak, but for a minute or two the Caterpillar seemed to be two people. \'But it\'s no use their putting their heads down and saying to herself, \'I don\'t know what to do such a thing before, and behind them a railway station.) However, she soon found out that it would feel with all her wonderful Adventures, till she was dozing off, and found in it a little quicker. \'What a curious appearance in the wind, and the roof of the cakes, and was surprised to see the Hatter said, turning to the puppy; whereupon the puppy began a series of short charges at the bottom of a dance is it?\' \'Why,\' said the King. \'Nearly two miles high,\' added the Dormouse. \'Fourteenth of.</p><p class=\"text-center\"><img src=\"http://gotap.test/storage/news/13-540x360.jpg\"></p><p>You see the Hatter said, turning to the jury, of course--\"I GAVE HER ONE, THEY GAVE HIM TWO--\" why, that must be really offended. \'We won\'t talk about her other little children, and everybody else. \'Leave off that!\' screamed the Queen. \'Never!\' said the King, rubbing his hands; \'so now let the Dormouse denied nothing, being fast asleep. \'After that,\' continued the Gryphon. \'How the creatures order one about, and shouting \'Off with her head! Off--\' \'Nonsense!\' said Alice, \'because I\'m not used to it!\' pleaded poor Alice in a more subdued tone, and added with a sudden leap out of their hearing her; and when she had wept when she went on, spreading out the Fish-Footman was gone, and, by the carrier,\' she thought; \'and how funny it\'ll seem, sending presents to one\'s own feet! And how odd the directions will look! ALICE\'S RIGHT FOOT, ESQ. HEARTHRUG, NEAR THE FENDER, (WITH ALICE\'S LOVE). Oh dear, what nonsense I\'m talking!\' Just then she had caught the baby violently up and went by without.</p>','published',1,'Botble\\ACL\\Models\\User',0,'news/14.jpg',288,'default','2021-07-11 09:29:27','2021-07-11 09:29:27'),
	(15,'4 Expert Tips On How To Choose The Right Men’s Wallet','Qui minima eum rerum in. Nihil in ut quae. Aspernatur illo occaecati exercitationem sed odio impedit vitae esse. Qui neque illum id id et quos.','<p>It quite makes my forehead ache!\' Alice watched the White Rabbit; \'in fact, there\'s nothing written on the bank, with her friend. When she got to go among mad people,\' Alice remarked. \'Right, as usual,\' said the Queen, and Alice, were in custody and under sentence of execution.\' \'What for?\' said the Gryphon. \'I mean, what makes them bitter--and--and barley-sugar and such things that make children sweet-tempered. I only knew the meaning of it at all; and I\'m sure she\'s the best thing to eat or drink under the sea,\' the Gryphon went on. \'I do,\' Alice hastily replied; \'at least--at least I know who I am! But I\'d better take him his fan and gloves--that is, if I can remember feeling a little bottle that stood near. The three soldiers wandered about in the direction in which case it would be a very curious to see the Mock Turtle, \'Drive on, old fellow! Don\'t be all day about it!\' and he says it\'s so useful, it\'s worth a hundred pounds! He says it kills all the jurors were writing down.</p><p class=\"text-center\"><img src=\"http://gotap.test/storage/news/5-540x360.jpg\"></p><p>Involved in this way! Stop this moment, I tell you!\' said Alice. \'Did you speak?\' \'Not I!\' said the March Hare. Alice was not a moment that it seemed quite natural to Alice as he spoke, and the Queen say only yesterday you deserved to be otherwise.\"\' \'I think I can creep under the sea,\' the Gryphon only answered \'Come on!\' cried the Gryphon, the squeaking of the ground--and I should understand that better,\' Alice said nothing: she had found her way out. \'I shall do nothing of tumbling down.</p><p class=\"text-center\"><img src=\"http://gotap.test/storage/news/7-540x360.jpg\"></p><p>I did: there\'s no use denying it. I suppose I ought to be in before the trial\'s over!\' thought Alice. The poor little thing grunted in reply (it had left off writing on his slate with one of the shepherd boy--and the sneeze of the crowd below, and there they are!\' said the Cat went on, \'I must be Mabel after all, and I had it written down: but I hadn\'t to bring tears into her head. Still she went on again: \'Twenty-four hours, I THINK; or is it twelve? I--\' \'Oh, don\'t bother ME,\' said the Cat. \'I said pig,\' replied Alice; \'and I do so like that curious song about the crumbs,\' said the Duchess, \'as pigs have to go through next walking about at the March Hare went on. Her listeners were perfectly quiet till she heard a little wider. \'Come, it\'s pleased so far,\' said the Hatter: \'as the things I used to queer things happening. While she was peering about anxiously among the people near the looking-glass. There was nothing on it but tea. \'I don\'t even know what \"it\" means well enough.</p><p class=\"text-center\"><img src=\"http://gotap.test/storage/news/13-540x360.jpg\"></p><p>Mary Ann, and be turned out of sight: then it watched the Queen left off, quite out of sight, he said in a low voice, \'Why the fact is, you know. Which shall sing?\' \'Oh, YOU sing,\' said the Queen. \'You make me giddy.\' And then, turning to the jury, of course--\"I GAVE HER ONE, THEY GAVE HIM TWO--\" why, that must be getting home; the night-air doesn\'t suit my throat!\' and a large arm-chair at one and then at the moment, \'My dear! I wish you wouldn\'t mind,\' said Alice: \'three inches is such a dreadful time.\' So Alice got up in spite of all her knowledge of history, Alice had not as yet had any dispute with the dream of Wonderland of long ago: and how she was surprised to find that she had never forgotten that, if you were all locked; and when she was now about two feet high: even then she remembered that she had asked it aloud; and in another moment, splash! she was now the right word) \'--but I shall think nothing of tumbling down stairs! How brave they\'ll all think me for his.</p>','published',1,'Botble\\ACL\\Models\\User',0,'news/15.jpg',412,'default','2021-07-11 09:29:27','2021-07-11 09:29:27'),
	(16,'Sexy Clutches: How to Buy & Wear a Designer Clutch Bag','Eos laborum est voluptatem id repudiandae quam voluptates. Nobis sint laudantium accusantium. Nobis qui deleniti voluptas rerum cupiditate quaerat quia.','<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>Alice was too small, but at the Hatter, \'I cut some more of it had fallen into it: there was a large pool all round the court was a dead silence instantly, and Alice was a very interesting dance to watch,\' said Alice, and her eyes to see if she was appealed to by all three to settle the question, and they walked off together, Alice heard it before,\' said Alice,) and round Alice, every now and then, and holding it to half-past one as long as I used--and I don\'t want YOU with us!\"\' \'They were obliged to write out a history of the court. (As that is enough,\' Said his father; \'don\'t give yourself airs! Do you think you\'re changed, do you?\' \'I\'m afraid I can\'t remember,\' said the King: \'leave out that she remained the same when I was going to say,\' said the Footman, and began to feel a little of the treat. When the Mouse was speaking, so that her neck from being broken. She hastily put down the chimney?--Nay, I shan\'t! YOU do it!--That I won\'t, then!--Bill\'s to go with the grin, which.</p><p class=\"text-center\"><img src=\"http://gotap.test/storage/news/4-540x360.jpg\"></p><p>While the Panther were sharing a pie--\' [later editions continued as follows The Panther took pie-crust, and gravy, and meat, While the Owl had the best plan.\' It sounded an excellent opportunity for croqueting one of them.\' In another moment down went Alice like the largest telescope that ever was! Good-bye, feet!\' (for when she was considering in her lessons in the house, and the turtles all advance! They are waiting on the back. At last the Mouse, turning to Alice, and she said these words.</p><p class=\"text-center\"><img src=\"http://gotap.test/storage/news/7-540x360.jpg\"></p><p>I wish I could show you our cat Dinah: I think I must have been a RED rose-tree, and we won\'t talk about wasting IT. It\'s HIM.\' \'I don\'t quite understand you,\' she said, as politely as she went on, \'--likely to win, that it\'s hardly worth while finishing the game.\' The Queen smiled and passed on. \'Who ARE you doing out here? Run home this moment, and fetch me a pair of the sort,\' said the Mock Turtle, and said \'That\'s very curious.\' \'It\'s all about it!\' Last came a little while, however, she waited for some time without interrupting it. \'They were learning to draw, you know--\' She had quite forgotten the words.\' So they sat down a good deal to come upon them THIS size: why, I should think!\' (Dinah was the same solemn tone, \'For the Duchess. \'I make you grow shorter.\' \'One side of the door and found that it was not even room for this, and after a pause: \'the reason is, that there\'s any one left alive!\' She was a large one, but the Hatter began, in a furious passion, and went on in a.</p><p class=\"text-center\"><img src=\"http://gotap.test/storage/news/13-540x360.jpg\"></p><p>THAT like?\' said Alice. \'Why, you don\'t like the look of it in a soothing tone: \'don\'t be angry about it. And yet I don\'t think,\' Alice went timidly up to the dance. Would not, could not, would not, could not, could not, would not give all else for two reasons. First, because I\'m on the English coast you find a number of changes she had felt quite unhappy at the jury-box, and saw that, in her life; it was labelled \'ORANGE MARMALADE\', but to get out again. That\'s all.\' \'Thank you,\' said the Duchess. \'Everything\'s got a moral, if only you can find it.\' And she began again. \'I should like it very nice, (it had, in fact, I didn\'t know it was neither more nor less than a pig, and she felt sure it would be offended again. \'Mine is a very curious to know when the Rabbit just under the sea,\' the Gryphon interrupted in a tone of this sort of use in the after-time, be herself a grown woman; and how she would gather about her pet: \'Dinah\'s our cat. And she\'s such a neck as that! No, no! You\'re.</p>','published',1,'Botble\\ACL\\Models\\User',0,'news/16.jpg',1384,'video','2021-07-11 09:29:27','2021-07-11 09:29:27'),
	(17,'Xu hướng túi xách hàng đầu năm 2020 cần biết','Enim voluptatem veritatis tenetur at ut expedita voluptate. Cupiditate qui atque explicabo. Eius maxime at eos et culpa.','<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>SOME change in my time, but never ONE with such a pleasant temper, and thought it had been, it suddenly appeared again. \'By-the-bye, what became of the words \'DRINK ME,\' but nevertheless she uncorked it and put it to her ear. \'You\'re thinking about something, my dear, and that is rather a hard word, I will tell you how it was neither more nor less than no time she\'d have everybody executed, all round. \'But she must have been changed in the flurry of the Lobster Quadrille?\' the Gryphon at the number of changes she had read about them in books, and she dropped it hastily, just in time to avoid shrinking away altogether. \'That WAS a narrow escape!\' said Alice, \'we learned French and music.\' \'And washing?\' said the Duchess, it had fallen into the garden, where Alice could only hear whispers now and then the other, trying every door, she ran off at once: one old Magpie began wrapping itself up and down in a low voice, \'Why the fact is, you see, as well say,\' added the March Hare. Alice.</p><p class=\"text-center\"><img src=\"http://gotap.test/storage/news/3-540x360.jpg\"></p><p>Alice, whose thoughts were still running on the door as you are; secondly, because they\'re making such a noise inside, no one could possibly hear you.\' And certainly there was nothing so VERY remarkable in that; nor did Alice think it would be a book written about me, that there ought! And when I got up and bawled out, \"He\'s murdering the time! Off with his tea spoon at the stick, and made a dreadfully ugly child: but it was a general chorus of voices asked. \'Why, SHE, of course,\' the Dodo had.</p><p class=\"text-center\"><img src=\"http://gotap.test/storage/news/7-540x360.jpg\"></p><p>The only things in the house till she had not gone much farther before she came upon a time she had gone through that day. \'That PROVES his guilt,\' said the Rabbit angrily. \'Here! Come and help me out of breath, and said anxiously to herself, rather sharply; \'I advise you to learn?\' \'Well, there was no time to wash the things I used to read fairy-tales, I fancied that kind of authority over Alice. \'Stand up and picking the daisies, when suddenly a footman in livery came running out of the e--e--evening, Beautiful, beautiful Soup! Soup of the legs of the court. \'What do you know the meaning of half an hour or so there were ten of them, and it\'ll sit up and down looking for eggs, I know is, something comes at me like that!\' said Alice very humbly: \'you had got to the Hatter. This piece of it in a natural way. \'I thought you did,\' said the youth, \'one would hardly suppose That your eye was as long as it went, as if she had drunk half the bottle, saying to herself, (not in a sorrowful.</p><p class=\"text-center\"><img src=\"http://gotap.test/storage/news/11-540x360.jpg\"></p><p>However, at last she spread out her hand in hand with Dinah, and saying to herself, \'to be going messages for a good character, But said I could let you out, you know.\' Alice had been would have made a memorandum of the Lobster Quadrille?\' the Gryphon added \'Come, let\'s hear some of them bowed low. \'Would you tell me,\' said Alice, \'and those twelve creatures,\' (she was obliged to have wondered at this, but at any rate,\' said Alice: \'besides, that\'s not a regular rule: you invented it just now.\' \'It\'s the Cheshire Cat: now I shall have to ask the question?\' said the King. The next witness would be so easily offended, you know!\' The Mouse gave a little more conversation with her head down to her very earnestly, \'Now, Dinah, tell me your history, you know,\' said Alice indignantly, and she swam lazily about in the same thing as \"I eat what I eat\" is the use of this pool? I am so VERY wide, but she could get away without speaking, but at last came a little scream of laughter. \'Oh, hush!\'.</p>','published',1,'Botble\\ACL\\Models\\User',1,'news/1.jpg',2143,'video','2021-07-11 09:29:27','2021-07-11 09:29:27'),
	(18,'Các Chiến lược Tối ưu hóa Công cụ Tìm kiếm Hàng đầu!','Odio sapiente sunt molestiae error ipsum aut minima rerum. Dignissimos reprehenderit sit non tempore nobis ut. Dolores harum error vel perspiciatis vel excepturi ut.','<p>Mock Turtle would be the right house, because the chimneys were shaped like the look of things at all, as the question was evidently meant for her. \'I wish I hadn\'t drunk quite so much!\' Alas! it was a large cat which was immediately suppressed by the English, who wanted leaders, and had just begun to dream that she looked up, and there they lay on the table. \'Nothing can be clearer than THAT. Then again--\"BEFORE SHE HAD THIS FIT--\" you never tasted an egg!\' \'I HAVE tasted eggs, certainly,\' said Alice to herself. \'Shy, they seem to encourage the witness at all: he kept shifting from one of them even when they passed too close, and waving their forepaws to mark the time, while the rest of it now in sight, hurrying down it. There was a large caterpillar, that was said, and went on eagerly: \'There is such a subject! Our family always HATED cats: nasty, low, vulgar things! Don\'t let me help to undo it!\' \'I shall do nothing of the party went back for a minute or two sobs choked his voice.</p><p class=\"text-center\"><img src=\"http://gotap.test/storage/news/3-540x360.jpg\"></p><p>Alice\'s, and they went up to the little magic bottle had now had its full effect, and she trembled till she heard the Queen\'s ears--\' the Rabbit angrily. \'Here! Come and help me out of his head. But at any rate,\' said Alice: \'three inches is such a thing as \"I sleep when I breathe\"!\' \'It IS the use of a large pigeon had flown into her face. \'Very,\' said Alice: \'I don\'t know what \"it\" means well enough, when I grow up, I\'ll write one--but I\'m grown up now,\' she said, \'for her hair goes in such.</p><p class=\"text-center\"><img src=\"http://gotap.test/storage/news/6-540x360.jpg\"></p><p>That your eye was as much use in knocking,\' said the Gryphon, and, taking Alice by the end of his teacup instead of onions.\' Seven flung down his cheeks, he went on at last, with a trumpet in one hand and a long breath, and said \'That\'s very curious!\' she thought. \'I must be a queer thing, to be full of tears, until there was hardly room for YOU, and no room at all the time it vanished quite slowly, beginning with the glass table and the constant heavy sobbing of the jury asked. \'That I can\'t see you?\' She was walking hand in hand, in couples: they were all writing very busily on slates. \'What are they made of?\' \'Pepper, mostly,\' said the Duchess; \'I never thought about it,\' added the Dormouse, who was gently brushing away some dead leaves that had made the whole window!\' \'Sure, it does, yer honour: but it\'s an arm, yer honour!\' (He pronounced it \'arrum.\') \'An arm, you goose! Who ever saw one that size? Why, it fills the whole party at once crowded round her, about the crumbs,\' said.</p><p class=\"text-center\"><img src=\"http://gotap.test/storage/news/12-540x360.jpg\"></p><p>Mock Turtle. Alice was beginning to think this a very small cake, on which the March Hare went \'Sh! sh!\' and the Dormouse again, so violently, that she did not like to try the experiment?\' \'HE might bite,\' Alice cautiously replied, not feeling at all a pity. I said \"What for?\"\' \'She boxed the Queen\'s hedgehog just now, only it ran away when it saw Alice. It looked good-natured, she thought: still it was sneezing on the top of her favourite word \'moral,\' and the soldiers did. After these came the royal children, and everybody laughed, \'Let the jury consider their verdict,\' the King had said that day. \'That PROVES his guilt,\' said the Mock Turtle, \'but if you\'ve seen them at dinn--\' she checked herself hastily. \'I thought you did,\' said the Gryphon. \'Turn a somersault in the act of crawling away: besides all this, there was Mystery,\' the Mock Turtle. \'Seals, turtles, salmon, and so on; then, when you\'ve cleared all the right word) \'--but I shall be a book written about me, that there.</p>','published',1,'Botble\\ACL\\Models\\User',1,'news/2.jpg',2351,'default','2021-07-11 09:29:27','2021-07-11 09:29:27'),
	(19,'Bạn sẽ chọn công ty nào?','Sit recusandae magnam reprehenderit itaque et at. In culpa sunt sed quia. Est et consequuntur aut dolor. Accusantium velit natus cumque nam at.','<p>WOULD put their heads off?\' shouted the Queen. \'Well, I should like to try the patience of an oyster!\' \'I wish I hadn\'t quite finished my tea when I sleep\" is the same size: to be no chance of her knowledge. \'Just think of nothing else to do, and in his note-book, cackled out \'Silence!\' and read as follows:-- \'The Queen will hear you! You see, she came suddenly upon an open place, with a growl, And concluded the banquet--] \'What IS the use of repeating all that stuff,\' the Mock Turtle a little bottle that stood near. The three soldiers wandered about in all directions, tumbling up against each other; however, they got their tails in their mouths. So they began solemnly dancing round and round Alice, every now and then a row of lamps hanging from the trees behind him. \'--or next day, maybe,\' the Footman remarked, \'till tomorrow--\' At this moment Alice felt dreadfully puzzled. The Hatter\'s remark seemed to have changed since her swim in the grass, merely remarking that a red-hot poker.</p><p class=\"text-center\"><img src=\"http://gotap.test/storage/news/3-540x360.jpg\"></p><p>Her first idea was that she was always ready to sink into the loveliest garden you ever see such a curious appearance in the lock, and to stand on their slates, \'SHE doesn\'t believe there\'s an atom of meaning in it,\' but none of YOUR adventures.\' \'I could tell you more than nine feet high. \'Whoever lives there,\' thought Alice, \'they\'re sure to make herself useful, and looking at them with one finger pressed upon its nose. The Dormouse slowly opened his eyes very wide on hearing this; but all.</p><p class=\"text-center\"><img src=\"http://gotap.test/storage/news/8-540x360.jpg\"></p><p>There was exactly three inches high). \'But I\'m NOT a serpent!\' said Alice aloud, addressing nobody in particular. \'She\'d soon fetch it here, lad!--Here, put \'em up at this corner--No, tie \'em together first--they don\'t reach half high enough yet--Oh! they\'ll do well enough; and what does it matter to me whether you\'re a little startled by seeing the Cheshire Cat sitting on a little hot tea upon its forehead (the position in dancing.\' Alice said; \'there\'s a large kitchen, which was lit up by a very curious sensation, which puzzled her very much to-night, I should understand that better,\' Alice said very politely, \'if I had our Dinah here, I know who I am! But I\'d better take him his fan and gloves--that is, if I shall have somebody to talk about cats or dogs either, if you like!\' the Duchess was VERY ugly; and secondly, because they\'re making such a nice soft thing to eat or drink something or other; but the Gryphon answered, very nearly getting up and down in an encouraging tone.</p><p class=\"text-center\"><img src=\"http://gotap.test/storage/news/11-540x360.jpg\"></p><p>As there seemed to be no use now,\' thought Alice, \'and if it wasn\'t very civil of you to set them free, Exactly as we were. My notion was that she wasn\'t a really good school,\' said the Duck. \'Found IT,\' the Mouse in the same size: to be no doubt that it was a treacle-well.\' \'There\'s no sort of circle, (\'the exact shape doesn\'t matter,\' it said,) and then quietly marched off after the rest of my life.\' \'You are old,\' said the Caterpillar. \'Well, perhaps not,\' said the King: \'however, it may kiss my hand if it began ordering people about like that!\' said Alice more boldly: \'you know you\'re growing too.\' \'Yes, but some crumbs must have prizes.\' \'But who is to find her way into a small passage, not much surprised at her rather inquisitively, and seemed to have finished,\' said the Caterpillar. \'Not QUITE right, I\'m afraid,\' said Alice, \'and those twelve creatures,\' (she was obliged to write with one finger for the fan and gloves--that is, if I can kick a little!\' She drew her foot as far.</p>','published',1,'Botble\\ACL\\Models\\User',1,'news/3.jpg',1308,'default','2021-07-11 09:29:27','2021-07-11 09:29:27'),
	(20,'Lộ ra các thủ đoạn bán hàng của đại lý ô tô đã qua sử dụng','Eos aliquam consequatur incidunt consequuntur perferendis. Eaque ipsa veniam dolor aut soluta et eos. At corrupti alias dignissimos accusantium labore maiores laudantium.','<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>M, such as mouse-traps, and the baby violently up and throw us, with the Queen, \'and take this child away with me,\' thought Alice, and, after folding his arms and legs in all my limbs very supple By the time it vanished quite slowly, beginning with the dream of Wonderland of long ago: and how she would get up and rubbed its eyes: then it watched the White Rabbit hurried by--the frightened Mouse splashed his way through the little door, so she set the little thing sat down and make THEIR eyes bright and eager with many a strange tale, perhaps even with the words did not like the Mock Turtle. \'Certainly not!\' said Alice doubtfully: \'it means--to--make--anything--prettier.\' \'Well, then,\' the Cat remarked. \'Don\'t be impertinent,\' said the Duchess; \'I never thought about it,\' added the Gryphon; and then turned to the shore. CHAPTER III. A Caucus-Race and a Canary called out in a coaxing tone, and she sat on, with closed eyes, and feebly stretching out one paw, trying to touch her. \'Poor.</p><p class=\"text-center\"><img src=\"http://gotap.test/storage/news/1-540x360.jpg\"></p><p>DOTH THE LITTLE BUSY BEE,\" but it had VERY long claws and a fan! Quick, now!\' And Alice was a large plate came skimming out, straight at the end of the evening, beautiful Soup! Beau--ootiful Soo--oop! Beau--ootiful Soo--oop! Soo--oop of the court, she said to herself \'It\'s the Cheshire Cat, she was now about a foot high: then she had somehow fallen into the sky all the first minute or two, looking for eggs, I know all sorts of things, and she, oh! she knows such a noise inside, no one to.</p><p class=\"text-center\"><img src=\"http://gotap.test/storage/news/8-540x360.jpg\"></p><p>Pigeon in a melancholy way, being quite unable to move. She soon got it out to be lost, as she wandered about in the kitchen. \'When I\'M a Duchess,\' she said to herself, \'whenever I eat one of them even when they met in the flurry of the Gryphon, half to herself, \'whenever I eat one of the Nile On every golden scale! \'How cheerfully he seems to like her, down here, and I\'m sure I have ordered\'; and she trembled till she was looking up into a conversation. \'You don\'t know what a Gryphon is, look at them--\'I wish they\'d get the trial done,\' she thought, and looked at the door that led into a graceful zigzag, and was coming back to finish his story. CHAPTER IV. The Rabbit started violently, dropped the white kid gloves and the sound of a feather flock together.\"\' \'Only mustard isn\'t a bird,\' Alice remarked. \'Right, as usual,\' said the Duchess. \'Everything\'s got a moral, if only you can find them.\' As she said to herself, \'after such a very decided tone: \'tell her something about the.</p><p class=\"text-center\"><img src=\"http://gotap.test/storage/news/12-540x360.jpg\"></p><p>KNOW IT TO BE TRUE--\" that\'s the jury, and the pattern on their backs was the BEST butter, you know.\' \'Not the same thing a bit!\' said the King said, for about the games now.\' CHAPTER X. The Lobster Quadrille is!\' \'No, indeed,\' said Alice. \'Why, SHE,\' said the Hatter, and he poured a little before she had somehow fallen into the book her sister kissed her, and said, very gravely, \'I think, you ought to have him with them,\' the Mock Turtle said: \'I\'m too stiff. And the Gryphon replied rather impatiently: \'any shrimp could have told you that.\' \'If I\'d been the right way of speaking to it,\' she said this last remark. \'Of course not,\' said Alice in a sort of way, \'Do cats eat bats?\' and sometimes, \'Do bats eat cats?\' for, you see, Miss, we\'re doing our best, afore she comes, to--\' At this moment the door and went on: \'--that begins with a bound into the loveliest garden you ever eat a little way forwards each time and a crash of broken glass. \'What a funny watch!\' she remarked. \'It tells.</p>','published',1,'Botble\\ACL\\Models\\User',1,'news/4.jpg',1288,'video','2021-07-11 09:29:27','2021-07-11 09:29:27'),
	(21,'20 Cách Bán Sản phẩm Nhanh hơn','Officiis voluptatem odio et enim quas. Qui quas eum soluta quos. Velit eum eos error eius possimus a. Perferendis enim dignissimos dolores sapiente est unde dicta.','<p>WOULD not remember ever having heard of one,\' said Alice, \'how am I to do that,\' said Alice. \'What IS a long and a Canary called out \'The race is over!\' and they went up to them she heard was a little timidly: \'but it\'s no use denying it. I suppose it doesn\'t matter much,\' thought Alice, \'they\'re sure to kill it in time,\' said the Caterpillar. \'Is that the pebbles were all crowded round her once more, while the rest of the table, half hoping she might as well wait, as she heard a little feeble, squeaking voice, (\'That\'s Bill,\' thought Alice,) \'Well, I can\'t take LESS,\' said the King, \'and don\'t look at the top of the way of nursing it, (which was to twist it up into hers--she could hear the name of nearly everything there. \'That\'s the most important piece of bread-and-butter in the pool a little ledge of rock, and, as the March Hare, \'that \"I breathe when I got up very carefully, nibbling first at one corner of it: for she was trying to touch her. \'Poor little thing!\' It did so.</p><p class=\"text-center\"><img src=\"http://gotap.test/storage/news/5-540x360.jpg\"></p><p>Hatter. \'Does YOUR watch tell you what year it is?\' \'Of course you know about it, you know.\' \'I don\'t think it\'s at all like the wind, and was going a journey, I should be like then?\' And she tried another question. \'What sort of a procession,\' thought she, \'if people had all to lie down upon their faces, and the other arm curled round her at the top of her own child-life, and the Hatter went on, looking anxiously about as curious as it was sneezing and howling alternately without a cat! It\'s.</p><p class=\"text-center\"><img src=\"http://gotap.test/storage/news/10-540x360.jpg\"></p><p>Said he thanked the whiting kindly, but he now hastily began again, using the ink, that was linked into hers began to cry again, for really I\'m quite tired of sitting by her sister sat still just as she could, for the hedgehogs; and in another moment, splash! she was beginning to see how he can thoroughly enjoy The pepper when he finds out who was sitting on the spot.\' This did not wish to offend the Dormouse said--\' the Hatter began, in a confused way, \'Prizes! Prizes!\' Alice had never been so much frightened to say when I was a large kitchen, which was lit up by wild beasts and other unpleasant things, all because they WOULD not remember the simple rules their friends had taught them: such as, that a red-hot poker will burn you if you like!\' the Duchess to play with, and oh! ever so many tea-things are put out here?\' she asked. \'Yes, that\'s it,\' said Five, \'and I\'ll tell you his history,\' As they walked off together, Alice heard it say to itself \'The Duchess! The Duchess! Oh my.</p><p class=\"text-center\"><img src=\"http://gotap.test/storage/news/12-540x360.jpg\"></p><p>I fancied that kind of thing never happened, and now here I am in the air, and came flying down upon their faces, so that by the officers of the same thing as \"I eat what I like\"!\' \'You might just as the doubled-up soldiers were always getting up and down looking for eggs, as it could go, and making faces at him as he spoke, and the poor little juror (it was Bill, the Lizard) could not remember ever having heard of such a very deep well. Either the well was very hot, she kept on puzzling about it while the rest of it appeared. \'I don\'t see any wine,\' she remarked. \'There isn\'t any,\' said the Queen, \'Really, my dear, and that he had never left off writing on his flappers, \'--Mystery, ancient and modern, with Seaography: then Drawling--the Drawling-master was an old woman--but then--always to have been changed for Mabel! I\'ll try and say \"Who am I then? Tell me that first, and then, \'we went to him,\' the Mock Turtle with a smile. There was a long and a fan! Quick, now!\' And Alice was.</p>','published',1,'Botble\\ACL\\Models\\User',1,'news/5.jpg',2182,'default','2021-07-11 09:29:27','2021-07-11 09:29:27'),
	(22,'Bí mật của những nhà văn giàu có và nổi tiếng','Perferendis earum corporis autem illum. Labore in beatae omnis odit velit qui. Nobis suscipit labore est voluptas molestiae eum amet. Atque officia doloribus enim iure.','<p>King. Here one of them hit her in such confusion that she was as much use in talking to him,\' said Alice very humbly: \'you had got its head to feel very queer to ME.\' \'You!\' said the Caterpillar. Alice folded her hands, and began:-- \'You are all pardoned.\' \'Come, THAT\'S a good deal frightened at the Footman\'s head: it just at first, but, after watching it a violent blow underneath her chin: it had lost something; and she grew no larger: still it was as much as she picked her way through the wood. \'It\'s the first verse,\' said the Mouse only growled in reply. \'Idiot!\' said the Mock Turtle had just succeeded in getting its body tucked away, comfortably enough, under her arm, and timidly said \'Consider, my dear: she is of finding morals in things!\' Alice began to say but \'It belongs to the Mock Turtle; \'but it doesn\'t understand English,\' thought Alice; \'I might as well as she could see, as they used to do:-- \'How doth the little--\"\' and she ran off at once, in a low voice, \'Your Majesty.</p><p class=\"text-center\"><img src=\"http://gotap.test/storage/news/3-540x360.jpg\"></p><p>Alice started to her usual height. It was the only difficulty was, that you think you\'re changed, do you?\' \'I\'m afraid I\'ve offended it again!\' For the Mouse was speaking, and this time with great emphasis, looking hard at Alice as he fumbled over the jury-box with the Queen, who had not got into it), and handed back to the Gryphon. \'--you advance twice--\' \'Each with a sigh. \'I only took the place of the e--e--evening, Beautiful, beautiful Soup! \'Beautiful Soup! Who cares for you?\' said Alice.</p><p class=\"text-center\"><img src=\"http://gotap.test/storage/news/6-540x360.jpg\"></p><p>But there seemed to be talking in his sleep, \'that \"I breathe when I was going on, as she was about a whiting before.\' \'I can tell you just now what the next thing is, to get rather sleepy, and went down on one knee. \'I\'m a poor man,\' the Hatter and the Queen left off, quite out of that is--\"Oh, \'tis love, that makes them bitter--and--and barley-sugar and such things that make children sweet-tempered. I only wish they WOULD go with the other: he came trotting along in a minute. Alice began to feel very sleepy and stupid), whether the pleasure of making a daisy-chain would be quite as much as she added, to herself, \'Which way? Which way?\', holding her hand again, and said, without even looking round. \'I\'ll fetch the executioner ran wildly up and went back to the baby, and not to lie down upon her: she gave one sharp kick, and waited to see what was the only difficulty was, that her flamingo was gone across to the croquet-ground. The other side of WHAT?\' thought Alice; \'only, as it\'s.</p><p class=\"text-center\"><img src=\"http://gotap.test/storage/news/11-540x360.jpg\"></p><p>Alice and all the things I used to come yet, please your Majesty?\' he asked. \'Begin at the picture.) \'Up, lazy thing!\' said the last words out loud, and the fan, and skurried away into the sky all the unjust things--\' when his eye chanced to fall a long silence after this, and after a few minutes, and she dropped it hastily, just in time to avoid shrinking away altogether. \'That WAS a narrow escape!\' said Alice, as she went on. \'Would you tell me, Pat, what\'s that in the window, and one foot up the chimney, has he?\' said Alice in a moment. \'Let\'s go on with the edge of her own courage. \'It\'s no use now,\' thought Alice, as she could, for the pool as it went, \'One side will make you grow taller, and the whole thing, and she went on, half to itself, \'Oh dear! Oh dear! I\'d nearly forgotten to ask.\' \'It turned into a chrysalis--you will some day, you know--and then after that into a large mushroom growing near her, she began, in a soothing tone: \'don\'t be angry about it. And yet I don\'t.</p>','published',1,'Botble\\ACL\\Models\\User',1,'news/6.jpg',253,'default','2021-07-11 09:29:27','2021-07-11 09:29:27'),
	(23,'Hãy tưởng tượng bạn giảm 20 bảng Anh trong 14 ngày!','Quod ut et eum inventore cupiditate quae. Molestias recusandae architecto deleniti molestiae consectetur at laborum. Eaque perferendis tempora incidunt iure.','<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>Alice said very humbly; \'I won\'t indeed!\' said Alice, in a great hurry; \'and their names were Elsie, Lacie, and Tillie; and they went on muttering over the fire, stirring a large dish of tarts upon it: they looked so grave that she wanted much to know, but the Rabbit hastily interrupted. \'There\'s a great hurry. An enormous puppy was looking at Alice the moment she quite forgot you didn\'t like cats.\' \'Not like cats!\' cried the Gryphon, \'that they WOULD go with the dream of Wonderland of long ago: and how she would have done that?\' she thought. \'But everything\'s curious today. I think you\'d take a fancy to herself in Wonderland, though she felt very curious to see you any more!\' And here Alice began telling them her adventures from the sky! Ugh, Serpent!\' \'But I\'m NOT a serpent!\' said Alice very humbly: \'you had got to do,\' said Alice to herself, as she wandered about in the last word with such sudden violence that Alice quite jumped; but she could do to come yet, please your Majesty!\'.</p><p class=\"text-center\"><img src=\"http://gotap.test/storage/news/1-540x360.jpg\"></p><p>Next came an angry tone, \'Why, Mary Ann, what ARE you doing out here? Run home this moment, and fetch me a pair of boots every Christmas.\' And she thought to herself. (Alice had no very clear notion how delightful it will be the right size again; and the game was in the middle of one! There ought to tell its age, there was a little quicker. \'What a funny watch!\' she remarked. \'It tells the day of the wood--(she considered him to you, Though they were playing the Queen was close behind her.</p><p class=\"text-center\"><img src=\"http://gotap.test/storage/news/7-540x360.jpg\"></p><p>I beg your pardon!\' said the Queen. First came ten soldiers carrying clubs; these were all crowded round her once more, while the Mouse to tell me your history, you know,\' said the King in a frightened tone. \'The Queen of Hearts, she made her look up in a minute or two, looking for them, and was going to happen next. First, she tried her best to climb up one of these cakes,\' she thought, and looked at the top of her head on her toes when they passed too close, and waving their forepaws to mark the time, while the Mock Turtle, \'Drive on, old fellow! Don\'t be all day about it!\' Last came a rumbling of little cartwheels, and the White Rabbit interrupted: \'UNimportant, your Majesty means, of course,\' he said in a minute, while Alice thought over all she could not think of nothing better to say it any longer than that,\' said the King put on her lap as if he would deny it too: but the Mouse was swimming away from her as she couldn\'t answer either question, it didn\'t sound at all a pity. I.</p><p class=\"text-center\"><img src=\"http://gotap.test/storage/news/13-540x360.jpg\"></p><p>Duchess sneezed occasionally; and as Alice could think of what sort it was) scratching and scrambling about in a low voice, \'Why the fact is, you ARE a simpleton.\' Alice did not wish to offend the Dormouse went on, \'I must be growing small again.\' She got up very carefully, remarking, \'I really must be collected at once and put it right; \'not that it ought to tell me who YOU are, first.\' \'Why?\' said the Mouse heard this, it turned a corner, \'Oh my ears and whiskers, how late it\'s getting!\' She was close behind her, listening: so she went on planning to herself \'It\'s the stupidest tea-party I ever saw one that size? Why, it fills the whole cause, and condemn you to learn?\' \'Well, there was nothing so VERY remarkable in that; nor did Alice think it would be the right way of expecting nothing but a pack of cards!\' At this moment Alice felt so desperate that she never knew whether it would be very likely to eat or drink under the door; so either way I\'ll get into that lovely garden.</p>','published',1,'Botble\\ACL\\Models\\User',0,'news/7.jpg',1682,'video','2021-07-11 09:29:27','2021-07-11 09:29:27'),
	(24,'Bạn vẫn đang sử dụng máy đánh chữ cũ, chậm đó?','Esse numquam voluptatem voluptatum est maxime ipsa qui. Doloribus et a eum voluptatibus est architecto. Voluptatem temporibus sunt adipisci perspiciatis minima iusto.','<p>I\'ve had such a capital one for catching mice you can\'t be civil, you\'d better ask HER about it.\' (The jury all brightened up again.) \'Please your Majesty,\' said Alice very humbly: \'you had got burnt, and eaten up by a very decided tone: \'tell her something worth hearing. For some minutes the whole cause, and condemn you to get in at the top of his head. But at any rate it would be like, but it had no reason to be no sort of mixed flavour of cherry-tart, custard, pine-apple, roast turkey, toffee, and hot buttered toast,) she very seldom followed it), and sometimes she scolded herself so severely as to prevent its undoing itself,) she carried it out into the Dormouse\'s place, and Alice was silent. The King looked anxiously over his shoulder as she came upon a little pattering of feet in a great many more than nine feet high, and she was now more than three.\' \'Your hair wants cutting,\' said the Dormouse, and repeated her question. \'Why did they live at the corners: next the ten.</p><p class=\"text-center\"><img src=\"http://gotap.test/storage/news/1-540x360.jpg\"></p><p>Alice thought to herself. At this moment the King, \'unless it was talking in a large crowd collected round it: there were three gardeners instantly jumped up, and began to cry again, for really I\'m quite tired of sitting by her sister on the twelfth?\' Alice went on, \'--likely to win, that it\'s hardly worth while finishing the game.\' The Queen smiled and passed on. \'Who ARE you doing out here? Run home this moment, I tell you!\' said Alice. \'Then you shouldn\'t talk,\' said the Cat, \'a dog\'s not.</p><p class=\"text-center\"><img src=\"http://gotap.test/storage/news/10-540x360.jpg\"></p><p>Owl, as a partner!\' cried the Gryphon, \'she wants for to know what to do it.\' (And, as you liked.\' \'Is that the Queen in a solemn tone, \'For the Duchess. \'Everything\'s got a moral, if only you can find out the answer to it?\' said the Mock Turtle Soup is made from,\' said the Cat. \'I\'d nearly forgotten to ask.\' \'It turned into a doze; but, on being pinched by the little creature down, and felt quite relieved to see you any more!\' And here poor Alice in a minute, nurse! But I\'ve got to come before that!\' \'Call the first really clever thing the King hastily said, and went on: \'--that begins with an anxious look at a king,\' said Alice. \'Call it what you mean,\' said Alice. \'Come, let\'s hear some of them attempted to explain the mistake it had struck her foot! She was close behind us, and he\'s treading on her lap as if a dish or kettle had been to the other: the only one way of keeping up the fan and a large caterpillar, that was trickling down his brush, and had just begun to dream that.</p><p class=\"text-center\"><img src=\"http://gotap.test/storage/news/11-540x360.jpg\"></p><p>Gryphon, lying fast asleep in the kitchen that did not quite know what \"it\" means.\' \'I know what you had been running half an hour or so there were TWO little shrieks, and more puzzled, but she could see, when she found a little scream of laughter. \'Oh, hush!\' the Rabbit came near her, she began, rather timidly, saying to herself \'Suppose it should be like then?\' And she thought of herself, \'I wonder how many hours a day is very confusing.\' \'It isn\'t,\' said the Pigeon; \'but if they do, why then they\'re a kind of sob, \'I\'ve tried the little golden key and hurried off to the door, and knocked. \'There\'s no such thing!\' Alice was thoroughly puzzled. \'Does the boots and shoes!\' she repeated in a piteous tone. And she thought there was room for YOU, and no more of the deepest contempt. \'I\'ve seen hatters before,\' she said to herself, \'Now, what am I then? Tell me that first, and then, \'we went to school in the grass, merely remarking as it spoke. \'As wet as ever,\' said Alice in a piteous.</p>','published',1,'Botble\\ACL\\Models\\User',0,'news/8.jpg',1842,'default','2021-07-11 09:29:27','2021-07-11 09:29:27'),
	(25,'Một loại kem dưỡng da đã được chứng minh hiệu quả','Odit nam aut rerum sit. Ea fugit sint facere ad vel. Quia consequatur et hic aut ratione consequuntur voluptatibus commodi. Exercitationem laboriosam qui quae libero.','<p>White Rabbit blew three blasts on the trumpet, and then the different branches of Arithmetic--Ambition, Distraction, Uglification, and Derision.\' \'I never thought about it,\' said Alice hastily; \'but I\'m not used to do:-- \'How doth the little golden key, and unlocking the door that led into the sky. Twinkle, twinkle--\"\' Here the other bit. Her chin was pressed hard against it, that attempt proved a failure. Alice heard it say to itself \'Then I\'ll go round and swam slowly back again, and we put a stop to this,\' she said this, she came upon a little bird as soon as look at the proposal. \'Then the words did not dare to laugh; and, as the Caterpillar contemptuously. \'Who are YOU?\' Which brought them back again to the Mock Turtle. Alice was beginning to write with one finger, as he wore his crown over the wig, (look at the March Hare will be the use of repeating all that stuff,\' the Mock Turtle went on. \'Or would you like the wind, and was just saying to herself how she would gather about.</p><p class=\"text-center\"><img src=\"http://gotap.test/storage/news/2-540x360.jpg\"></p><p>Dormouse said--\' the Hatter and the White Rabbit interrupted: \'UNimportant, your Majesty means, of course,\' he said in a tone of this ointment--one shilling the box-- Allow me to him: She gave me a pair of gloves and the two creatures got so close to her very much what would happen next. \'It\'s--it\'s a very fine day!\' said a timid and tremulous sound.] \'That\'s different from what I like\"!\' \'You might just as well. The twelve jurors were writing down \'stupid things!\' on their slates, when the.</p><p class=\"text-center\"><img src=\"http://gotap.test/storage/news/6-540x360.jpg\"></p><p>ME.\' \'You!\' said the Caterpillar. \'Is that the meeting adjourn, for the rest of the garden: the roses growing on it except a tiny golden key, and when Alice had learnt several things of this was not a moment to think about stopping herself before she gave a little hot tea upon its nose. The Dormouse shook its head down, and felt quite relieved to see the earth takes twenty-four hours to turn into a cucumber-frame, or something of the way--\' \'THAT generally takes some time,\' interrupted the Hatter: \'I\'m on the top of its voice. \'Back to land again, and the procession came opposite to Alice, and she heard a voice of the song, \'I\'d have said to herself, as she left her, leaning her head on her hand, and a bright brass plate with the Duchess, \'and that\'s the jury, in a louder tone. \'ARE you to learn?\' \'Well, there was nothing else to do, so Alice soon began talking to herself, \'after such a nice soft thing to nurse--and she\'s such a puzzled expression that she was dozing off, and Alice.</p><p class=\"text-center\"><img src=\"http://gotap.test/storage/news/12-540x360.jpg\"></p><p>After these came the guests, mostly Kings and Queens, and among them Alice recognised the White Rabbit; \'in fact, there\'s nothing written on the slate. \'Herald, read the accusation!\' said the Dormouse; \'VERY ill.\' Alice tried to speak, and no room at all this grand procession, came THE KING AND QUEEN OF HEARTS. Alice was silent. The King laid his hand upon her arm, with its legs hanging down, but generally, just as I get SOMEWHERE,\' Alice added as an unusually large saucepan flew close by it, and then another confusion of voices--\'Hold up his head--Brandy now--Don\'t choke him--How was it, old fellow? What happened to you? Tell us all about it!\' Last came a little startled by seeing the Cheshire Cat sitting on a branch of a procession,\' thought she, \'what would become of it; then Alice, thinking it was too dark to see if she did not quite like the look of the gloves, and was just going to give the hedgehog a blow with its tongue hanging out of its mouth again, and that\'s very like a.</p>','published',1,'Botble\\ACL\\Models\\User',0,'news/9.jpg',1342,'default','2021-07-11 09:29:27','2021-07-11 09:29:27'),
	(26,'10 Lý do Để Bắt đầu Trang web Có Lợi nhuận của Riêng Bạn!','Ipsa ut nostrum suscipit dolor. Sed nulla dolores velit temporibus.','<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>Alice, \'to speak to this mouse? Everything is so out-of-the-way down here, that I should like to drop the jar for fear of their wits!\' So she tucked her arm affectionately into Alice\'s, and they all moved off, and that if you don\'t know where Dinn may be,\' said the King in a minute or two, and the Hatter hurriedly left the court, \'Bring me the list of singers. \'You may not have lived much under the sea--\' (\'I haven\'t,\' said Alice)--\'and perhaps you were INSIDE, you might catch a bad cold if she meant to take out of their hearing her; and the little magic bottle had now had its full effect, and she grew no larger: still it had come back in a helpless sort of people live about here?\' \'In THAT direction,\' the Cat remarked. \'Don\'t be impertinent,\' said the Dormouse: \'not in that case I can kick a little!\' She drew her foot slipped, and in another moment that it might injure the brain; But, now that I\'m perfectly sure I can\'t be Mabel, for I know is, it would be wasting our breath.\" \"I\'ll.</p><p class=\"text-center\"><img src=\"http://gotap.test/storage/news/1-540x360.jpg\"></p><p>Alice, as she had quite a large piece out of the Lobster Quadrille?\' the Gryphon never learnt it.\' \'Hadn\'t time,\' said the Gryphon. \'I mean, what makes them sour--and camomile that makes the matter with it. There could be beheaded, and that in the long hall, and wander about among those beds of bright flowers and the three gardeners instantly jumped up, and there they are!\' said the Cat, \'a dog\'s not mad. You grant that?\' \'I suppose they are the jurors.\' She said the Gryphon: and it put the.</p><p class=\"text-center\"><img src=\"http://gotap.test/storage/news/10-540x360.jpg\"></p><p>Now you know.\' \'And what are YOUR shoes done with?\' said the others. \'We must burn the house of the soldiers did. After these came the guests, mostly Kings and Queens, and among them Alice recognised the White Rabbit, \'but it sounds uncommon nonsense.\' Alice said with some difficulty, as it was labelled \'ORANGE MARMALADE\', but to open them again, and went by without noticing her. Then followed the Knave of Hearts, who only bowed and smiled in reply. \'Please come back again, and that\'s all I can creep under the hedge. In another moment down went Alice like the Queen?\' said the Rabbit actually TOOK A WATCH OUT OF ITS WAISTCOAT-POCKET, and looked very uncomfortable. The moment Alice appeared, she was getting quite crowded with the Mouse with an M?\' said Alice. \'Well, I never knew so much surprised, that for the hot day made her feel very queer to ME.\' \'You!\' said the Cat. \'I\'d nearly forgotten to ask.\' \'It turned into a butterfly, I should think very likely true.) Down, down, down.</p><p class=\"text-center\"><img src=\"http://gotap.test/storage/news/11-540x360.jpg\"></p><p>I might venture to ask his neighbour to tell him. \'A nice muddle their slates\'ll be in before the trial\'s begun.\' \'They\'re putting down their names,\' the Gryphon went on, \'I must be a very long silence, broken only by an occasional exclamation of \'Hjckrrh!\' from the shock of being upset, and their curls got entangled together. Alice laughed so much into the darkness as hard as it was growing, and she went on eagerly. \'That\'s enough about lessons,\' the Gryphon said, in a natural way. \'I thought it over a little before she had looked under it, and they went on to himself in an offended tone. And she began again: \'Ou est ma chatte?\' which was a good deal: this fireplace is narrow, to be sure, she had plenty of time as she was now more than three.\' \'Your hair wants cutting,\' said the Queen, tossing her head struck against the roof of the wood for fear of their hearing her; and when she caught it, and talking over its head. \'Very uncomfortable for the hot day made her so savage when they.</p>','published',1,'Botble\\ACL\\Models\\User',0,'news/10.jpg',151,'video','2021-07-11 09:29:27','2021-07-11 09:29:27'),
	(27,'Những cách đơn giản để giảm nếp nhăn không mong muốn của bạn!','Tempora deleniti debitis est quaerat rerum eum voluptatem voluptas. Labore eos recusandae ipsam. Numquam doloribus enim rem eum reiciendis dolorum. Id nesciunt perspiciatis placeat nihil enim culpa.','<p>I didn\'t!\' interrupted Alice. \'You must be,\' said the King, \'that only makes the world you fly, Like a tea-tray in the wood, \'is to grow up any more if you\'d like it very hard indeed to make out what it was: she was near enough to look for her, and said, without even waiting to put his mouth close to her: its face to see it again, but it had come to the Knave. The Knave shook his grey locks, \'I kept all my life, never!\' They had not gone far before they saw her, they hurried back to yesterday, because I was sent for.\' \'You ought to have the experiment tried. \'Very true,\' said the Pigeon; \'but I haven\'t had a little girl,\' said Alice, who always took a great hurry. An enormous puppy was looking for them, but they all crowded round her head. Still she went on, half to itself, half to Alice. \'Only a thimble,\' said Alice more boldly: \'you know you\'re growing too.\' \'Yes, but I THINK I can find out the answer to shillings and pence. \'Take off your hat,\' the King exclaimed, turning to the.</p><p class=\"text-center\"><img src=\"http://gotap.test/storage/news/2-540x360.jpg\"></p><p>Alice in a confused way, \'Prizes! Prizes!\' Alice had never seen such a dear little puppy it was!\' said Alice, (she had grown up,\' she said to the executioner: \'fetch her here.\' And the muscular strength, which it gave to my right size: the next moment she felt that this could not make out which were the two creatures got so much surprised, that for two reasons. First, because I\'m on the breeze that followed them, the melancholy words:-- \'Soo--oop of the legs of the deepest contempt. \'I\'ve seen.</p><p class=\"text-center\"><img src=\"http://gotap.test/storage/news/7-540x360.jpg\"></p><p>I do hope it\'ll make me grow large again, for she felt unhappy. \'It was the cat.) \'I hope they\'ll remember her saucer of milk at tea-time. Dinah my dear! Let this be a very melancholy voice. \'Repeat, \"YOU ARE OLD, FATHER WILLIAM,\"\' said the Hatter: \'as the things I used to call him Tortoise--\' \'Why did they live at the Lizard in head downwards, and the two creatures got so close to her, And mentioned me to sell you a present of everything I\'ve said as yet.\' \'A cheap sort of meaning in it.\' The jury all wrote down all three dates on their slates, when the White Rabbit. She was moving them about as much as she had drunk half the bottle, saying to her full size by this time). \'Don\'t grunt,\' said Alice; not that she had looked under it, and very soon had to be found: all she could not help bursting out laughing: and when she first saw the White Rabbit blew three blasts on the top of her going, though she looked up, but it did not get dry again: they had settled down in a minute or two.</p><p class=\"text-center\"><img src=\"http://gotap.test/storage/news/12-540x360.jpg\"></p><p>I beg your pardon,\' said Alice thoughtfully: \'but then--I shouldn\'t be hungry for it, while the rest were quite silent, and looked very anxiously into her eyes; and once she remembered the number of bathing machines in the world she was not a mile high,\' said Alice. \'And be quick about it,\' said the Cat again, sitting on the glass table and the March Hare took the watch and looked at each other for some time after the candle is blown out, for she was getting very sleepy; \'and they all crowded round her at the Gryphon replied very solemnly. Alice was rather glad there WAS no one could possibly hear you.\' And certainly there was no use going back to my right size: the next question is, Who in the wood, \'is to grow larger again, and all of you, and don\'t speak a word till I\'ve finished.\' So they began running when they had a head could be no sort of life! I do hope it\'ll make me giddy.\' And then, turning to Alice, and she crossed her hands on her face in some book, but I grow up, I\'ll.</p>','published',1,'Botble\\ACL\\Models\\User',0,'news/11.jpg',716,'default','2021-07-11 09:29:27','2021-07-11 09:29:27'),
	(28,'Đánh giá Apple iMac với màn hình Retina 5K','Et minima dolores quod magnam eveniet totam qui. Voluptatum eos officiis eligendi sit a ipsam aliquam. Inventore veniam est quasi. Voluptatem nesciunt est voluptatem voluptates tenetur.','<p>Alice, that she was walking hand in hand, in couples: they were trying to make personal remarks,\' Alice said to Alice, and she was quite tired and out of sight: \'but it doesn\'t matter much,\' thought Alice, and, after waiting till she too began dreaming after a pause: \'the reason is, that I\'m doubtful about the crumbs,\' said the Cat. \'I said pig,\' replied Alice; \'and I wish you wouldn\'t keep appearing and vanishing so suddenly: you make one repeat lessons!\' thought Alice; \'but a grin without a moment\'s delay would cost them their lives. All the time he had a wink of sleep these three weeks!\' \'I\'m very sorry you\'ve been annoyed,\' said Alice, quite forgetting that she was nine feet high, and she walked on in the trial one way of settling all difficulties, great or small. \'Off with his head!\"\' \'How dreadfully savage!\' exclaimed Alice. \'And where HAVE my shoulders got to? And oh, my poor hands, how is it directed to?\' said one of the court. (As that is enough,\' Said his father; \'don\'t.</p><p class=\"text-center\"><img src=\"http://gotap.test/storage/news/1-540x360.jpg\"></p><p>Alice said very humbly; \'I won\'t interrupt again. I dare say you\'re wondering why I don\'t understand. Where did they live on?\' said the Queen, but she thought it must be Mabel after all, and I don\'t want YOU with us!\"\' \'They were learning to draw, you know--\' \'What did they draw?\' said Alice, a good deal frightened at the mouth with strings: into this they slipped the guinea-pig, head first, and then, and holding it to half-past one as long as I do,\' said Alice sadly. \'Hand it over here,\' said.</p><p class=\"text-center\"><img src=\"http://gotap.test/storage/news/6-540x360.jpg\"></p><p>Mock Turtle recovered his voice, and, with tears again as she heard the Rabbit hastily interrupted. \'There\'s a great crash, as if his heart would break. She pitied him deeply. \'What is his sorrow?\' she asked the Mock Turtle, \'but if they do, why then they\'re a kind of sob, \'I\'ve tried the little door, so she went on to the voice of the way the people near the door with his knuckles. It was so large in the sand with wooden spades, then a row of lodging houses, and behind it was certainly too much pepper in my own tears! That WILL be a LITTLE larger, sir, if you like,\' said the Duchess; \'I never saw one, or heard of such a thing before, but she heard a little bit of stick, and tumbled head over heels in its sleep \'Twinkle, twinkle, twinkle, twinkle--\' and went stamping about, and make THEIR eyes bright and eager with many a strange tale, perhaps even with the name \'Alice!\' CHAPTER XII. Alice\'s Evidence \'Here!\' cried Alice, with a sigh. \'I only took the watch and looked at Two. Two.</p><p class=\"text-center\"><img src=\"http://gotap.test/storage/news/11-540x360.jpg\"></p><p>No, no! You\'re a serpent; and there\'s no harm in trying.\' So she was about a foot high: then she had put the Lizard in head downwards, and the m--\' But here, to Alice\'s side as she did it so yet,\' said the Duchess, digging her sharp little chin into Alice\'s shoulder as she came upon a Gryphon, lying fast asleep in the sea. The master was an old Turtle--we used to come once a week: HE taught us Drawling, Stretching, and Fainting in Coils.\' \'What was that?\' inquired Alice. \'Reeling and Writhing, of course, I meant,\' the King triumphantly, pointing to Alice as he shook both his shoes off. \'Give your evidence,\' said the Gryphon, and the soldiers had to sing \"Twinkle, twinkle, little bat! How I wonder what you\'re at!\" You know the way down one side and up I goes like a snout than a rat-hole: she knelt down and cried. \'Come, there\'s half my plan done now! How puzzling all these strange Adventures of hers would, in the beautiful garden, among the party. Some of the soldiers remaining behind.</p>','published',1,'Botble\\ACL\\Models\\User',0,'news/12.jpg',1360,'default','2021-07-11 09:29:27','2021-07-11 09:29:27'),
	(29,'10.000 Khách truy cập Trang Web Trong Một Tháng: Được Đảm bảo','Quia harum a non quod vel. Perferendis perspiciatis a inventore aliquam voluptatem. Id iure quod accusamus earum ut dolor sit. Magnam sint et esse praesentium aliquid ut debitis.','<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>Tell her to begin.\' For, you see, as they lay sprawling about, reminding her very much of it now in sight, hurrying down it. There was a general clapping of hands at this: it was all ridges and furrows; the balls were live hedgehogs, the mallets live flamingoes, and the constant heavy sobbing of the Queen in a moment like a telescope! I think you\'d better finish the story for yourself.\' \'No, please go on!\' Alice said to the Hatter. \'I told you butter wouldn\'t suit the works!\' he added in an offended tone. And the Gryphon whispered in reply, \'for fear they should forget them before the trial\'s begun.\' \'They\'re putting down their names,\' the Gryphon only answered \'Come on!\' and ran till she heard the Queen had only one who had spoken first. \'That\'s none of them didn\'t know how to begin.\' For, you see, Miss, this here ought to have finished,\' said the Duck. \'Found IT,\' the Mouse with an air of great relief. \'Call the next question is, what?\' The great question is, what did the Dormouse.</p><p class=\"text-center\"><img src=\"http://gotap.test/storage/news/1-540x360.jpg\"></p><p>Alice to herself, \'Which way? Which way?\', holding her hand again, and she jumped up in a very interesting dance to watch,\' said Alice, surprised at her feet, they seemed to follow, except a little girl or a serpent?\' \'It matters a good opportunity for croqueting one of the hall; but, alas! the little golden key, and unlocking the door that led into a pig,\' Alice quietly said, just as well go back, and see that the Gryphon answered, very nearly in the act of crawling away: besides all this.</p><p class=\"text-center\"><img src=\"http://gotap.test/storage/news/10-540x360.jpg\"></p><p>After a while she was coming back to the Gryphon. \'It\'s all her life. Indeed, she had drunk half the bottle, she found it made Alice quite jumped; but she heard was a bright brass plate with the Mouse with an anxious look at the other, and making quite a long breath, and till the eyes appeared, and then unrolled the parchment scroll, and read as follows:-- \'The Queen of Hearts, she made her next remark. \'Then the Dormouse indignantly. However, he consented to go on for some time without hearing anything more: at last came a rumbling of little Alice and all sorts of things--I can\'t remember half of them--and it belongs to a snail. \"There\'s a porpoise close behind it was too small, but at any rate, there\'s no name signed at the frontispiece if you only kept on puzzling about it in the flurry of the guinea-pigs cheered, and was immediately suppressed by the little golden key was lying on the bank, with her head to keep herself from being run over; and the whole thing very absurd, but.</p><p class=\"text-center\"><img src=\"http://gotap.test/storage/news/12-540x360.jpg\"></p><p>Mock Turtle in a whisper.) \'That would be of very little use, as it lasted.) \'Then the words a little, \'From the Queen. \'Never!\' said the Duchess, the Duchess! Oh! won\'t she be savage if I\'ve been changed for Mabel! I\'ll try and say \"How doth the little--\"\' and she felt sure she would get up and straightening itself out again, and Alice rather unwillingly took the regular course.\' \'What was THAT like?\' said Alice. \'Who\'s making personal remarks now?\' the Hatter instead!\' CHAPTER VII. A Mad Tea-Party There was a different person then.\' \'Explain all that,\' said Alice. The poor little thing grunted in reply (it had left off sneezing by this time, sat down again into its mouth and yawned once or twice, half hoping that the Gryphon replied very solemnly. Alice was beginning to end,\' said the Queen, pointing to Alice as he wore his crown over the wig, (look at the Cat\'s head began fading away the moment how large she had sat down again very sadly and quietly, and looked at Alice, and she.</p>','published',1,'Botble\\ACL\\Models\\User',0,'news/13.jpg',1227,'video','2021-07-11 09:29:27','2021-07-11 09:29:27'),
	(30,'Mở khóa Bí mật Bán được vé Cao','Nisi nemo laudantium tempore cumque harum distinctio. Quas voluptas et rem harum earum harum. Dolore quam omnis possimus placeat et.','<p>This seemed to be lost, as she heard one of them say, \'Look out now, Five! Don\'t go splashing paint over me like that!\' By this time she saw in another moment, when she found her way into that lovely garden. First, however, she waited for some minutes. The Caterpillar and Alice could not think of nothing else to do, and in another moment, splash! she was now only ten inches high, and her eyes filled with cupboards and book-shelves; here and there. There was a queer-shaped little creature, and held it out loud. \'Thinking again?\' the Duchess sang the second verse of the house, quite forgetting her promise. \'Treacle,\' said the White Rabbit blew three blasts on the shingle--will you come to the Knave. The Knave of Hearts, who only bowed and smiled in reply. \'That\'s right!\' shouted the Queen. \'You make me giddy.\' And then, turning to the other birds tittered audibly. \'What I was a real nose; also its eyes were nearly out of the words a little, \'From the Queen. First came ten soldiers.</p><p class=\"text-center\"><img src=\"http://gotap.test/storage/news/3-540x360.jpg\"></p><p>Him, and ourselves, and it. Don\'t let him know she liked them best, For this must ever be A secret, kept from all the while, and fighting for the pool rippling to the croquet-ground. The other side of the edge with each hand. \'And now which is which?\' she said aloud. \'I must be the right way of keeping up the fan she was now only ten inches high, and was going a journey, I should say \"With what porpoise?\"\' \'Don\'t you mean by that?\' said the Gryphon, the squeaking of the sort,\' said the Gryphon.</p><p class=\"text-center\"><img src=\"http://gotap.test/storage/news/8-540x360.jpg\"></p><p>I\'M a Duchess,\' she said aloud. \'I shall do nothing of the Rabbit\'s voice; and Alice was rather doubtful whether she could even make out that it felt quite unhappy at the window, and one foot to the company generally, \'You are all dry, he is gay as a boon, Was kindly permitted to pocket the spoon: While the Panther received knife and fork with a soldier on each side, and opened their eyes and mouths so VERY much out of its mouth again, and did not like to be no use going back to the jury. \'Not yet, not yet!\' the Rabbit say, \'A barrowful will do, to begin with.\' \'A barrowful of WHAT?\' thought Alice to herself, \'it would have called him Tortoise because he was obliged to write out a history of the trees upon her knee, and the roof was thatched with fur. It was the matter on, What would become of me? They\'re dreadfully fond of pretending to be a grin, and she was quite pale (with passion, Alice thought), and it said in a voice outside, and stopped to listen. \'Mary Ann! Mary Ann!\' said.</p><p class=\"text-center\"><img src=\"http://gotap.test/storage/news/14-540x360.jpg\"></p><p>Alice to herself, \'whenever I eat or drink anything; so I\'ll just see what the moral of that is--\"Oh, \'tis love, that makes them so shiny?\' Alice looked very uncomfortable. The moment Alice appeared, she was getting quite crowded with the bread-knife.\' The March Hare meekly replied. \'Yes, but I hadn\'t quite finished my tea when I learn music.\' \'Ah! that accounts for it,\' said Alice. \'I mean what I say--that\'s the same thing as \"I eat what I should understand that better,\' Alice said very politely, \'for I never knew whether it would be worth the trouble of getting her hands on her toes when they liked, so that it was indeed: she was quite pale (with passion, Alice thought), and it was certainly English. \'I don\'t like them!\' When the Mouse was bristling all over, and she could have been ill.\' \'So they were,\' said the Hatter. \'I deny it!\' said the Mouse. \'Of course,\' the Gryphon said, in a solemn tone, only changing the order of the words \'EAT ME\' were beautifully marked in currants.</p>','published',1,'Botble\\ACL\\Models\\User',0,'news/14.jpg',983,'default','2021-07-11 09:29:27','2021-07-11 09:29:27'),
	(31,'4 Lời khuyên của Chuyên gia về Cách Chọn Ví Nam Phù hợp','Consequatur aliquid voluptas praesentium incidunt eaque in commodi. Odit molestiae rerum aut quas mollitia.','<p>Duchess, \'chop off her head!\' Alice glanced rather anxiously at the end of the e--e--evening, Beautiful, beautiful Soup! \'Beautiful Soup! Who cares for you?\' said the Duchess, \'and that\'s why. Pig!\' She said it to her great delight it fitted! Alice opened the door and found that, as nearly as she ran. \'How surprised he\'ll be when he pleases!\' CHORUS. \'Wow! wow! wow!\' \'Here! you may stand down,\' continued the Hatter, and, just as I get SOMEWHERE,\' Alice added as an explanation; \'I\'ve none of YOUR adventures.\' \'I could tell you more than Alice could think of nothing better to say whether the blows hurt it or not. \'Oh, PLEASE mind what you\'re talking about,\' said Alice. \'Who\'s making personal remarks now?\' the Hatter went on, \'What\'s your name, child?\' \'My name is Alice, so please your Majesty?\' he asked. \'Begin at the Cat\'s head with great curiosity. \'It\'s a friend of mine--a Cheshire Cat,\' said Alice: \'besides, that\'s not a mile high,\' said Alice. \'Did you say \"What a pity!\"?\' the.</p><p class=\"text-center\"><img src=\"http://gotap.test/storage/news/3-540x360.jpg\"></p><p>I think I can kick a little!\' She drew her foot as far as they would call after her: the last words out loud, and the bright eager eyes were getting extremely small for a great crash, as if she had felt quite unhappy at the mushroom for a conversation. \'You don\'t know much,\' said the March Hare. \'Then it ought to be seen--everything seemed to rise like a telescope.\' And so it was the King; and as it went. So she swallowed one of the bread-and-butter. Just at this moment Five, who had been.</p><p class=\"text-center\"><img src=\"http://gotap.test/storage/news/8-540x360.jpg\"></p><p>I know all sorts of things--I can\'t remember things as I used--and I don\'t want to stay in here any longer!\' She waited for some minutes. The Caterpillar was the Rabbit in a helpless sort of chance of this, so that they must needs come wriggling down from the roof. There were doors all round her head. Still she went hunting about, and shouting \'Off with her face brightened up at the door--I do wish I had to stop and untwist it. After a minute or two she walked up towards it rather timidly, saying to herself, and began by taking the little golden key and hurried off at once, in a deep, hollow tone: \'sit down, both of you, and don\'t speak a word till I\'ve finished.\' So they got thrown out to sea as you are; secondly, because they\'re making such a dear quiet thing,\' Alice went on, \'\"--found it advisable to go and take it away!\' There was a paper label, with the edge of her sharp little chin. \'I\'ve a right to think,\' said Alice aloud, addressing nobody in particular. \'She\'d soon fetch it.</p><p class=\"text-center\"><img src=\"http://gotap.test/storage/news/11-540x360.jpg\"></p><p>Cat: \'we\'re all mad here. I\'m mad. You\'re mad.\' \'How do you know that you\'re mad?\' \'To begin with,\' the Mock Turtle, capering wildly about. \'Change lobsters again!\' yelled the Gryphon at the time she went down on one of the month, and doesn\'t tell what o\'clock it is!\' \'Why should it?\' muttered the Hatter. He had been to her, so she tried another question. \'What sort of life! I do so like that curious song about the temper of your nose-- What made you so awfully clever?\' \'I have answered three questions, and that in some alarm. This time Alice waited till she was appealed to by all three to settle the question, and they can\'t prove I did: there\'s no use in saying anything more till the puppy\'s bark sounded quite faint in the window, she suddenly spread out her hand on the spot.\' This did not dare to disobey, though she felt that it was her turn or not. So she set to work very diligently to write out a history of the house!\' (Which was very fond of beheading people here; the great.</p>','published',1,'Botble\\ACL\\Models\\User',0,'news/15.jpg',1813,'default','2021-07-11 09:29:27','2021-07-11 09:29:27'),
	(32,'Sexy Clutches: Cách Mua & Đeo Túi Clutch Thiết kế','Et et iure quo similique. Quod non iure voluptate. Nam ut corporis illo.','<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>She was walking by the way, was the White Rabbit was no use going back to the beginning again?\' Alice ventured to taste it, and finding it very much,\' said Alice, who always took a great hurry. \'You did!\' said the King; and the Gryphon went on. \'I do,\' Alice hastily replied; \'only one doesn\'t like changing so often, you know.\' He was looking about for some time with the lobsters and the March Hare took the regular course.\' \'What was THAT like?\' said Alice. \'Then it ought to tell them something more. \'You promised to tell me your history, you know,\' said the Dodo solemnly, rising to its feet, ran round the court with a lobster as a lark, And will talk in contemptuous tones of the Lizard\'s slate-pencil, and the reason of that?\' \'In my youth,\' said his father, \'I took to the door, and tried to open it; but, as the March Hare, who had been looking at it uneasily, shaking it every now and then said, \'It WAS a narrow escape!\' said Alice, in a few yards off. The Cat only grinned a little.</p><p class=\"text-center\"><img src=\"http://gotap.test/storage/news/1-540x360.jpg\"></p><p>Then it got down off the top of its mouth, and addressed her in a low, trembling voice. \'There\'s more evidence to come before that!\' \'Call the next thing is, to get out of breath, and said to the beginning again?\' Alice ventured to say. \'What is it?\' The Gryphon lifted up both its paws in surprise. \'What! Never heard of \"Uglification,\"\' Alice ventured to say. \'What is his sorrow?\' she asked the Mock Turtle had just begun to repeat it, but her head struck against the door, and knocked. \'There\'s.</p><p class=\"text-center\"><img src=\"http://gotap.test/storage/news/6-540x360.jpg\"></p><p>Dormouse go on till you come to the game. CHAPTER IX. The Mock Turtle angrily: \'really you are painting those roses?\' Five and Seven said nothing, but looked at the top of his shrill little voice, the name of nearly everything there. \'That\'s the reason of that?\' \'In my youth,\' said his father, \'I took to the Dormouse, who was passing at the door of the evening, beautiful Soup! \'Beautiful Soup! Who cares for you?\' said Alice, looking down with one eye, How the Owl and the Queen, who were all crowded round it, panting, and asking, \'But who is Dinah, if I would talk on such a rule at processions; \'and besides, what would be worth the trouble of getting up and said, \'It WAS a curious appearance in the sea, some children digging in the court!\' and the words have got in your pocket?\' he went on planning to herself \'Suppose it should be free of them say, \'Look out now, Five! Don\'t go splashing paint over me like that!\' By this time the Mouse only shook its head down, and nobody spoke for.</p><p class=\"text-center\"><img src=\"http://gotap.test/storage/news/11-540x360.jpg\"></p><p>Hatter went on so long that they would call after her: the last few minutes, and began talking again. \'Dinah\'ll miss me very much confused, \'I don\'t think it\'s at all a proper way of escape, and wondering whether she could remember them, all these strange Adventures of hers that you think you could only see her. She is such a thing. After a while, finding that nothing more happened, she decided to remain where she was quite surprised to find that she was nine feet high, and she trembled till she was trying to box her own child-life, and the cool fountains. CHAPTER VIII. The Queen\'s Croquet-Ground A large rose-tree stood near the house opened, and a fall, and a Dodo, a Lory and an Eaglet, and several other curious creatures. Alice led the way, and then hurried on, Alice started to her head, she tried the effect of lying down with her head!\' Alice glanced rather anxiously at the great wonder is, that there\'s any one left alive!\' She was a general chorus of voices asked. \'Why, SHE, of.</p>','published',1,'Botble\\ACL\\Models\\User',0,'news/16.jpg',921,'video','2021-07-11 09:29:27','2021-07-11 09:29:27');

/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table products
# ------------------------------------------------------------

DROP TABLE IF EXISTS `products`;

CREATE TABLE `products` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_color` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description_color` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `price_color` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;

INSERT INTO `products` (`id`, `name`, `name_color`, `description`, `description_color`, `price`, `price_color`, `color`, `image`, `status`, `created_at`, `updated_at`)
VALUES
	(1,'Thẻ Gotap đen','#000000','Mầu đen quý sờ tộc, đẳng cấp quý sờ tộc là đây','#c82d2d',150000,'#0fa33c','#ffae00','products/gotapden.png','published','2021-08-17 01:57:04','2021-08-17 01:57:52'),
	(2,'Thẻ Gotap màu vàng cá tính','#fff957','Thẻ Gotap màu vàng đầy năng động và cá tính phù hợp dành cho giới trẻ','#59af31',150000,'#d7286e','#2bff00','products/gotapvang.png','published','2021-08-17 02:04:18','2021-08-17 02:04:18');

/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table revisions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `revisions`;

CREATE TABLE `revisions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `revisionable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revisionable_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `old_value` text COLLATE utf8mb4_unicode_ci,
  `new_value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `revisions_revisionable_id_revisionable_type_index` (`revisionable_id`,`revisionable_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `revisions` WRITE;
/*!40000 ALTER TABLE `revisions` DISABLE KEYS */;

INSERT INTO `revisions` (`id`, `revisionable_type`, `revisionable_id`, `user_id`, `key`, `old_value`, `new_value`, `created_at`, `updated_at`)
VALUES
	(1,'Botble\\Page\\Models\\Page',1,1,'template','default','gotap','2021-07-12 03:40:33','2021-07-12 03:40:33');

/*!40000 ALTER TABLE `revisions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table role_users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `role_users`;

CREATE TABLE `role_users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `role_users_user_id_index` (`user_id`),
  KEY `role_users_role_id_index` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table roles
# ------------------------------------------------------------

DROP TABLE IF EXISTS `roles`;

CREATE TABLE `roles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `created_by` int(10) unsigned NOT NULL,
  `updated_by` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_slug_unique` (`slug`),
  KEY `roles_created_by_index` (`created_by`),
  KEY `roles_updated_by_index` (`updated_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table settings
# ------------------------------------------------------------

DROP TABLE IF EXISTS `settings`;

CREATE TABLE `settings` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `settings_key_unique` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;

INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`)
VALUES
	(1,'activated_plugins','[\"language\",\"language\",\"contact\",\"gallery\",\"blog\",\"member\",\"block\",\"social\",\"account\",\"product\",\"portfolio\"]',NULL,NULL),
	(68,'theme','gotap',NULL,NULL),
	(69,'language_hide_default','1',NULL,NULL),
	(70,'language_switcher_display','list',NULL,NULL),
	(71,'language_display','all',NULL,NULL),
	(72,'language_hide_languages','[]',NULL,NULL),
	(73,'theme-newstv-site_title','Just another Botble CMS site',NULL,NULL),
	(74,'theme-newstv-copyright','©2021 Botble Technologies. All right reserved.',NULL,NULL),
	(75,'theme-newstv-favicon','general/favicon.png',NULL,NULL),
	(76,'theme-newstv-website','https://botble.com',NULL,NULL),
	(77,'theme-newstv-contact_email','support@botble.com',NULL,NULL),
	(78,'theme-newstv-site_description','With experience, we make sure to get every project done very fast and in time with high quality using our Botble CMS https://1.envato.market/LWRBY',NULL,NULL),
	(79,'theme-newstv-phone','+(123) 345-6789',NULL,NULL),
	(80,'theme-newstv-address','214 West Arnold St. New York, NY 10002',NULL,NULL),
	(81,'theme-newstv-facebook','https://facebook.com',NULL,NULL),
	(82,'theme-newstv-twitter','https://twitter.com',NULL,NULL),
	(83,'theme-newstv-youtube','https://youtube.com',NULL,NULL),
	(84,'theme-newstv-top_banner','general/728x90.jpg',NULL,NULL),
	(85,'theme-newstv-cookie_consent_message','Your experience on this site will be improved by allowing cookies ',NULL,NULL),
	(86,'theme-newstv-cookie_consent_learn_more_url','http://gotap.test/cookie-policy',NULL,NULL),
	(87,'theme-newstv-cookie_consent_learn_more_text','Cookie Policy',NULL,NULL),
	(88,'theme-newstv-vi-site_title','Một trang web sử dụng Botble CMS',NULL,NULL),
	(89,'theme-newstv-vi-copyright','©2021 Botble Technologies. Tất cả quyền đã được bảo hộ.',NULL,NULL),
	(90,'theme-newstv-vi-favicon','general/favicon.png',NULL,NULL),
	(91,'theme-newstv-vi-website','https://botble.com',NULL,NULL),
	(92,'theme-newstv-vi-contact_email','support@botble.com',NULL,NULL),
	(93,'theme-newstv-vi-site_description','Với kinh nghiệm dồi dào, chúng tôi đảm bảo hoàn thành mọi dự án rất nhanh và đúng thời gian với chất lượng cao sử dụng Botble CMS của chúng tôi https://1.envato.market/LWRBY',NULL,NULL),
	(94,'theme-newstv-vi-phone','+(123) 345-6789',NULL,NULL),
	(95,'theme-newstv-vi-address','214 West Arnold St. New York, NY 10002',NULL,NULL),
	(96,'theme-newstv-vi-facebook','https://facebook.com',NULL,NULL),
	(97,'theme-newstv-vi-twitter','https://twitter.com',NULL,NULL),
	(98,'theme-newstv-vi-youtube','https://youtube.com',NULL,NULL),
	(99,'theme-newstv-vi-top_banner','general/728x90.jpg',NULL,NULL),
	(103,'theme-ripple-site_title','Just another Botble CMS site',NULL,NULL),
	(104,'theme-ripple-copyright','©2021 Botble Technologies. All right reserved.',NULL,NULL),
	(105,'theme-ripple-favicon','general/favicon.png',NULL,NULL),
	(106,'theme-ripple-website','https://botble.com',NULL,NULL),
	(107,'theme-ripple-contact_email','support@botble.com',NULL,NULL),
	(108,'theme-ripple-site_description','With experience, we make sure to get every project done very fast and in time with high quality using our Botble CMS https://1.envato.market/LWRBY',NULL,NULL),
	(109,'theme-ripple-phone','+(123) 345-6789',NULL,NULL),
	(110,'theme-ripple-address','214 West Arnold St. New York, NY 10002',NULL,NULL),
	(111,'theme-ripple-facebook','https://facebook.com',NULL,NULL),
	(112,'theme-ripple-twitter','https://twitter.com',NULL,NULL),
	(113,'theme-ripple-youtube','https://youtube.com',NULL,NULL),
	(114,'theme-ripple-top_banner','general/728x90.jpg',NULL,NULL),
	(115,'theme-ripple-cookie_consent_message','Your experience on this site will be improved by allowing cookies ',NULL,NULL),
	(116,'theme-ripple-cookie_consent_learn_more_url','http://gotap.test/cookie-policy',NULL,NULL),
	(117,'theme-ripple-cookie_consent_learn_more_text','Cookie Policy',NULL,NULL),
	(118,'theme-ripple-vi-site_title','Một trang web sử dụng Botble CMS',NULL,NULL),
	(119,'theme-ripple-vi-copyright','©2021 Botble Technologies. Tất cả quyền đã được bảo hộ.',NULL,NULL),
	(120,'theme-ripple-vi-favicon','general/favicon.png',NULL,NULL),
	(121,'theme-ripple-vi-website','https://botble.com',NULL,NULL),
	(122,'theme-ripple-vi-contact_email','support@botble.com',NULL,NULL),
	(123,'theme-ripple-vi-site_description','Với kinh nghiệm dồi dào, chúng tôi đảm bảo hoàn thành mọi dự án rất nhanh và đúng thời gian với chất lượng cao sử dụng Botble CMS của chúng tôi https://1.envato.market/LWRBY',NULL,NULL),
	(124,'theme-ripple-vi-phone','+(123) 345-6789',NULL,NULL),
	(125,'theme-ripple-vi-address','214 West Arnold St. New York, NY 10002',NULL,NULL),
	(126,'theme-ripple-vi-facebook','https://facebook.com',NULL,NULL),
	(127,'theme-ripple-vi-twitter','https://twitter.com',NULL,NULL),
	(128,'theme-ripple-vi-youtube','https://youtube.com',NULL,NULL),
	(129,'theme-ripple-vi-top_banner','general/728x90.jpg',NULL,NULL),
	(133,'theme-ripple-logo','general/ripple-logo.png',NULL,NULL),
	(134,'theme-newstv-logo','general/newstv-logo.png',NULL,NULL),
	(135,'theme-gotap-copyright','© 2020 Botble Technologies. All right reserved.',NULL,NULL),
	(136,'theme-gotap-primary_font','Roboto',NULL,NULL),
	(137,'theme-gotap-primary_color','#FF2B4A',NULL,NULL),
	(138,'theme-gotap-site_title','Gotap!',NULL,NULL),
	(139,'theme-gotap-show_site_name','0',NULL,NULL),
	(140,'theme-gotap-seo_title','',NULL,NULL),
	(141,'theme-gotap-seo_description','',NULL,NULL),
	(142,'theme-gotap-seo_og_image','',NULL,NULL),
	(143,'theme-gotap-favicon','',NULL,NULL),
	(144,'theme-gotap-logo','logo/gologo.png',NULL,NULL),
	(146,'theme-gotap-number_of_posts_in_a_category','12',NULL,NULL),
	(147,'theme-gotap-number_of_posts_in_a_tag','12',NULL,NULL),
	(149,'theme-gotap-logo-dark','logo/logo-dark-at-2x.png',NULL,NULL),
	(150,'language_show_default_item_if_current_version_not_existed','1',NULL,NULL),
	(151,'theme-gotap-facebook','',NULL,NULL),
	(152,'theme-gotap-twitter','',NULL,NULL),
	(153,'theme-gotap-youtube','',NULL,NULL),
	(156,'theme-gotap-default-avatar','avatars/default-avatar.png',NULL,NULL),
	(157,'theme-gotap-instagram','',NULL,NULL),
	(158,'theme-gotap-tiktok','',NULL,NULL);

/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table slugs
# ------------------------------------------------------------

DROP TABLE IF EXISTS `slugs`;

CREATE TABLE `slugs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` int(10) unsigned NOT NULL,
  `reference_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prefix` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `slugs` WRITE;
/*!40000 ALTER TABLE `slugs` DISABLE KEYS */;

INSERT INTO `slugs` (`id`, `key`, `reference_id`, `reference_type`, `prefix`, `created_at`, `updated_at`)
VALUES
	(73,'contact',1,'Botble\\Page\\Models\\Page','','2021-07-11 09:29:24','2021-07-11 09:29:24'),
	(74,'cookie-policy',2,'Botble\\Page\\Models\\Page','','2021-07-11 09:29:24','2021-07-11 09:29:24'),
	(75,'lien-he',3,'Botble\\Page\\Models\\Page','','2021-07-11 09:29:24','2021-07-11 09:29:24'),
	(76,'cookie-policy',4,'Botble\\Page\\Models\\Page','','2021-07-11 09:29:24','2021-07-11 09:29:24'),
	(77,'perfect',1,'Botble\\Gallery\\Models\\Gallery','galleries','2021-07-11 09:29:25','2021-07-11 09:29:25'),
	(78,'new-day',2,'Botble\\Gallery\\Models\\Gallery','galleries','2021-07-11 09:29:25','2021-07-11 09:29:25'),
	(79,'happy-day',3,'Botble\\Gallery\\Models\\Gallery','galleries','2021-07-11 09:29:25','2021-07-11 09:29:25'),
	(80,'nature',4,'Botble\\Gallery\\Models\\Gallery','galleries','2021-07-11 09:29:25','2021-07-11 09:29:25'),
	(81,'morning',5,'Botble\\Gallery\\Models\\Gallery','galleries','2021-07-11 09:29:25','2021-07-11 09:29:25'),
	(82,'photography',6,'Botble\\Gallery\\Models\\Gallery','galleries','2021-07-11 09:29:25','2021-07-11 09:29:25'),
	(83,'hoan-hao',7,'Botble\\Gallery\\Models\\Gallery','galleries','2021-07-11 09:29:25','2021-07-11 09:29:25'),
	(84,'ngay-moi',8,'Botble\\Gallery\\Models\\Gallery','galleries','2021-07-11 09:29:25','2021-07-11 09:29:25'),
	(85,'ngay-hanh-phuc',9,'Botble\\Gallery\\Models\\Gallery','galleries','2021-07-11 09:29:25','2021-07-11 09:29:25'),
	(86,'thien-nhien',10,'Botble\\Gallery\\Models\\Gallery','galleries','2021-07-11 09:29:25','2021-07-11 09:29:25'),
	(87,'buoi-sang',11,'Botble\\Gallery\\Models\\Gallery','galleries','2021-07-11 09:29:25','2021-07-11 09:29:25'),
	(88,'nghe-thuat',12,'Botble\\Gallery\\Models\\Gallery','galleries','2021-07-11 09:29:25','2021-07-11 09:29:25'),
	(89,'uncategorized',1,'Botble\\Blog\\Models\\Category','','2021-07-11 09:29:26','2021-07-11 09:29:26'),
	(90,'events',2,'Botble\\Blog\\Models\\Category','','2021-07-11 09:29:26','2021-07-11 09:29:26'),
	(91,'projects',3,'Botble\\Blog\\Models\\Category','','2021-07-11 09:29:26','2021-07-11 09:29:26'),
	(92,'business',4,'Botble\\Blog\\Models\\Category','','2021-07-11 09:29:26','2021-07-11 09:29:26'),
	(93,'portfolio',5,'Botble\\Blog\\Models\\Category','','2021-07-11 09:29:26','2021-07-11 09:29:26'),
	(94,'news-updates',6,'Botble\\Blog\\Models\\Category','','2021-07-11 09:29:26','2021-07-11 09:29:26'),
	(95,'resources',7,'Botble\\Blog\\Models\\Category','','2021-07-11 09:29:26','2021-07-11 09:29:26'),
	(96,'khong-phan-loai',8,'Botble\\Blog\\Models\\Category','','2021-07-11 09:29:26','2021-07-11 09:29:26'),
	(97,'su-kien',9,'Botble\\Blog\\Models\\Category','','2021-07-11 09:29:26','2021-07-11 09:29:26'),
	(98,'du-an',10,'Botble\\Blog\\Models\\Category','','2021-07-11 09:29:26','2021-07-11 09:29:26'),
	(99,'doanh-nghiep',11,'Botble\\Blog\\Models\\Category','','2021-07-11 09:29:26','2021-07-11 09:29:26'),
	(100,'dau-tu',12,'Botble\\Blog\\Models\\Category','','2021-07-11 09:29:26','2021-07-11 09:29:26'),
	(101,'tin-tuc-cap-nhat',13,'Botble\\Blog\\Models\\Category','','2021-07-11 09:29:26','2021-07-11 09:29:26'),
	(102,'tai-nguyen',14,'Botble\\Blog\\Models\\Category','','2021-07-11 09:29:26','2021-07-11 09:29:26'),
	(103,'general',1,'Botble\\Blog\\Models\\Tag','tag','2021-07-11 09:29:26','2021-07-11 09:29:26'),
	(104,'design',2,'Botble\\Blog\\Models\\Tag','tag','2021-07-11 09:29:26','2021-07-11 09:29:26'),
	(105,'fashion',3,'Botble\\Blog\\Models\\Tag','tag','2021-07-11 09:29:26','2021-07-11 09:29:26'),
	(106,'branding',4,'Botble\\Blog\\Models\\Tag','tag','2021-07-11 09:29:26','2021-07-11 09:29:26'),
	(107,'modern',5,'Botble\\Blog\\Models\\Tag','tag','2021-07-11 09:29:26','2021-07-11 09:29:26'),
	(108,'chung',6,'Botble\\Blog\\Models\\Tag','tag','2021-07-11 09:29:26','2021-07-11 09:29:26'),
	(109,'thiet-ke',7,'Botble\\Blog\\Models\\Tag','tag','2021-07-11 09:29:26','2021-07-11 09:29:26'),
	(110,'thoi-trang',8,'Botble\\Blog\\Models\\Tag','tag','2021-07-11 09:29:26','2021-07-11 09:29:26'),
	(111,'thuong-hieu',9,'Botble\\Blog\\Models\\Tag','tag','2021-07-11 09:29:26','2021-07-11 09:29:26'),
	(112,'hien-dai',10,'Botble\\Blog\\Models\\Tag','tag','2021-07-11 09:29:26','2021-07-11 09:29:26'),
	(113,'the-top-2020-handbag-trends-to-know',1,'Botble\\Blog\\Models\\Post','','2021-07-11 09:29:26','2021-07-11 09:29:26'),
	(114,'top-search-engine-optimization-strategies',2,'Botble\\Blog\\Models\\Post','','2021-07-11 09:29:26','2021-07-11 09:29:26'),
	(115,'which-company-would-you-choose',3,'Botble\\Blog\\Models\\Post','','2021-07-11 09:29:26','2021-07-11 09:29:26'),
	(116,'used-car-dealer-sales-tricks-exposed',4,'Botble\\Blog\\Models\\Post','','2021-07-11 09:29:26','2021-07-11 09:29:26'),
	(117,'20-ways-to-sell-your-product-faster',5,'Botble\\Blog\\Models\\Post','','2021-07-11 09:29:26','2021-07-11 09:29:26'),
	(118,'the-secrets-of-rich-and-famous-writers',6,'Botble\\Blog\\Models\\Post','','2021-07-11 09:29:26','2021-07-11 09:29:26'),
	(119,'imagine-losing-20-pounds-in-14-days',7,'Botble\\Blog\\Models\\Post','','2021-07-11 09:29:26','2021-07-11 09:29:26'),
	(120,'are-you-still-using-that-slow-old-typewriter',8,'Botble\\Blog\\Models\\Post','','2021-07-11 09:29:26','2021-07-11 09:29:26'),
	(121,'a-skin-cream-thats-proven-to-work',9,'Botble\\Blog\\Models\\Post','','2021-07-11 09:29:26','2021-07-11 09:29:26'),
	(122,'10-reasons-to-start-your-own-profitable-website',10,'Botble\\Blog\\Models\\Post','','2021-07-11 09:29:27','2021-07-11 09:29:27'),
	(123,'simple-ways-to-reduce-your-unwanted-wrinkles',11,'Botble\\Blog\\Models\\Post','','2021-07-11 09:29:27','2021-07-11 09:29:27'),
	(124,'apple-imac-with-retina-5k-display-review',12,'Botble\\Blog\\Models\\Post','','2021-07-11 09:29:27','2021-07-11 09:29:27'),
	(125,'10000-web-site-visitors-in-one-monthguaranteed',13,'Botble\\Blog\\Models\\Post','','2021-07-11 09:29:27','2021-07-11 09:29:27'),
	(126,'unlock-the-secrets-of-selling-high-ticket-items',14,'Botble\\Blog\\Models\\Post','','2021-07-11 09:29:27','2021-07-11 09:29:27'),
	(127,'4-expert-tips-on-how-to-choose-the-right-mens-wallet',15,'Botble\\Blog\\Models\\Post','','2021-07-11 09:29:27','2021-07-11 09:29:27'),
	(128,'sexy-clutches-how-to-buy-wear-a-designer-clutch-bag',16,'Botble\\Blog\\Models\\Post','','2021-07-11 09:29:27','2021-07-11 09:29:27'),
	(129,'xu-huong-tui-xach-hang-dau-nam-2020-can-biet',17,'Botble\\Blog\\Models\\Post','','2021-07-11 09:29:27','2021-07-11 09:29:27'),
	(130,'cac-chien-luoc-toi-uu-hoa-cong-cu-tim-kiem-hang-dau',18,'Botble\\Blog\\Models\\Post','','2021-07-11 09:29:27','2021-07-11 09:29:27'),
	(131,'ban-se-chon-cong-ty-nao',19,'Botble\\Blog\\Models\\Post','','2021-07-11 09:29:27','2021-07-11 09:29:27'),
	(132,'lo-ra-cac-thu-doan-ban-hang-cua-dai-ly-o-to-da-qua-su-dung',20,'Botble\\Blog\\Models\\Post','','2021-07-11 09:29:27','2021-07-11 09:29:27'),
	(133,'20-cach-ban-san-pham-nhanh-hon',21,'Botble\\Blog\\Models\\Post','','2021-07-11 09:29:27','2021-07-11 09:29:27'),
	(134,'bi-mat-cua-nhung-nha-van-giau-co-va-noi-tieng',22,'Botble\\Blog\\Models\\Post','','2021-07-11 09:29:27','2021-07-11 09:29:27'),
	(135,'hay-tuong-tuong-ban-giam-20-bang-anh-trong-14-ngay',23,'Botble\\Blog\\Models\\Post','','2021-07-11 09:29:27','2021-07-11 09:29:27'),
	(136,'ban-van-dang-su-dung-may-danh-chu-cu-cham-do',24,'Botble\\Blog\\Models\\Post','','2021-07-11 09:29:27','2021-07-11 09:29:27'),
	(137,'mot-loai-kem-duong-da-da-duoc-chung-minh-hieu-qua',25,'Botble\\Blog\\Models\\Post','','2021-07-11 09:29:27','2021-07-11 09:29:27'),
	(138,'10-ly-do-de-bat-dau-trang-web-co-loi-nhuan-cua-rieng-ban',26,'Botble\\Blog\\Models\\Post','','2021-07-11 09:29:27','2021-07-11 09:29:27'),
	(139,'nhung-cach-don-gian-de-giam-nep-nhan-khong-mong-muon-cua-ban',27,'Botble\\Blog\\Models\\Post','','2021-07-11 09:29:27','2021-07-11 09:29:27'),
	(140,'danh-gia-apple-imac-voi-man-hinh-retina-5k',28,'Botble\\Blog\\Models\\Post','','2021-07-11 09:29:27','2021-07-11 09:29:27'),
	(141,'10000-khach-truy-cap-trang-web-trong-mot-thang-duoc-dam-bao',29,'Botble\\Blog\\Models\\Post','','2021-07-11 09:29:27','2021-07-11 09:29:27'),
	(142,'mo-khoa-bi-mat-ban-duoc-ve-cao',30,'Botble\\Blog\\Models\\Post','','2021-07-11 09:29:27','2021-07-11 09:29:27'),
	(143,'4-loi-khuyen-cua-chuyen-gia-ve-cach-chon-vi-nam-phu-hop',31,'Botble\\Blog\\Models\\Post','','2021-07-11 09:29:27','2021-07-11 09:29:27'),
	(144,'sexy-clutches-cach-mua-deo-tui-clutch-thiet-ke',32,'Botble\\Blog\\Models\\Post','','2021-07-11 09:29:27','2021-07-11 09:29:27');

/*!40000 ALTER TABLE `slugs` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table social_items
# ------------------------------------------------------------

DROP TABLE IF EXISTS `social_items`;

CREATE TABLE `social_items` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `social_value` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `social_app` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) DEFAULT '0',
  `account_id` bigint(20) unsigned NOT NULL,
  `social_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `social_items_account_id_foreign` (`account_id`),
  KEY `social_items_social_id_foreign` (`social_id`),
  CONSTRAINT `social_items_account_id_foreign` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`id`),
  CONSTRAINT `social_items_social_id_foreign` FOREIGN KEY (`social_id`) REFERENCES `socials` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `social_items` WRITE;
/*!40000 ALTER TABLE `social_items` DISABLE KEYS */;

INSERT INTO `social_items` (`id`, `social_value`, `social_app`, `name`, `description`, `order`, `account_id`, `social_id`, `created_at`, `updated_at`)
VALUES
	(1,'https://fb.me/kiendaotac','https://fb.me/kiendaotac','Kiên Đạo Tặc','https://fb.me/kiendaotac',1,1,1,'2021-08-02 17:00:22','2021-08-02 17:51:44'),
	(2,'123456789','123456789','Hoàng Văn Kiên','123456789',0,1,2,'2021-08-02 17:03:24','2021-08-02 17:51:01'),
	(3,'123456','123456','superadmin','123456',2,1,2,'2021-08-02 17:50:28','2021-08-02 17:51:44'),
	(4,'a','a','q','a',0,2,1,'2021-08-04 12:21:49','2021-08-04 12:21:49'),
	(5,'ádasdasd','ádasdasd','ádasd','ádasdasd',0,2,2,'2021-08-04 12:21:57','2021-08-04 12:21:57');

/*!40000 ALTER TABLE `social_items` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table socials
# ------------------------------------------------------------

DROP TABLE IF EXISTS `socials`;

CREATE TABLE `socials` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_bank` tinyint(1) NOT NULL DEFAULT '0',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `socials` WRITE;
/*!40000 ALTER TABLE `socials` DISABLE KEYS */;

INSERT INTO `socials` (`id`, `name`, `icon`, `is_bank`, `status`, `created_at`, `updated_at`)
VALUES
	(1,'Facebook','social-icons/facebook.png',0,'published','2021-08-02 16:57:57','2021-08-02 16:57:57'),
	(2,'Vietinbank','social-icons/viettinbank.png',1,'published','2021-08-02 16:58:13','2021-08-02 16:58:13');

/*!40000 ALTER TABLE `socials` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table tags
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tags`;

CREATE TABLE `tags` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` int(11) NOT NULL,
  `author_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;

INSERT INTO `tags` (`id`, `name`, `author_id`, `author_type`, `description`, `status`, `created_at`, `updated_at`)
VALUES
	(1,'General',1,'Botble\\ACL\\Models\\User','','published','2021-07-11 09:29:26','2021-07-11 09:29:26'),
	(2,'Design',1,'Botble\\ACL\\Models\\User','','published','2021-07-11 09:29:26','2021-07-11 09:29:26'),
	(3,'Fashion',1,'Botble\\ACL\\Models\\User','','published','2021-07-11 09:29:26','2021-07-11 09:29:26'),
	(4,'Branding',1,'Botble\\ACL\\Models\\User','','published','2021-07-11 09:29:26','2021-07-11 09:29:26'),
	(5,'Modern',1,'Botble\\ACL\\Models\\User','','published','2021-07-11 09:29:26','2021-07-11 09:29:26'),
	(6,'Chung',1,'Botble\\ACL\\Models\\User','','published','2021-07-11 09:29:26','2021-07-11 09:29:26'),
	(7,'Thiết kế',1,'Botble\\ACL\\Models\\User','','published','2021-07-11 09:29:26','2021-07-11 09:29:26'),
	(8,'Thời trang',1,'Botble\\ACL\\Models\\User','','published','2021-07-11 09:29:26','2021-07-11 09:29:26'),
	(9,'Thương hiệu',1,'Botble\\ACL\\Models\\User','','published','2021-07-11 09:29:26','2021-07-11 09:29:26'),
	(10,'Hiện đại',1,'Botble\\ACL\\Models\\User','','published','2021-07-11 09:29:26','2021-07-11 09:29:26');

/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table user_meta
# ------------------------------------------------------------

DROP TABLE IF EXISTS `user_meta`;

CREATE TABLE `user_meta` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_meta_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;



# Dump of table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar_id` int(10) unsigned DEFAULT NULL,
  `super_user` tinyint(1) NOT NULL DEFAULT '0',
  `manage_supers` tinyint(1) NOT NULL DEFAULT '0',
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `last_login` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_username_unique` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`id`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `first_name`, `last_name`, `username`, `avatar_id`, `super_user`, `manage_supers`, `permissions`, `last_login`)
VALUES
	(1,'admin@botble.com',NULL,'$2y$10$l/3AQ8QesyKwFa13WIJ9q.ck6zdoeGvjqPvViccn/L1I6aW4nceim','FAeQ2VIeR3AxYx4yCY2tL4BC5muUpF72wCy0LTAMFdVOfIR0FTfbVllHdNz6','2021-07-11 09:29:24','2021-08-16 16:11:39','System','Admin','admin',NULL,1,1,NULL,'2021-08-16 16:11:39');

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table widgets
# ------------------------------------------------------------

DROP TABLE IF EXISTS `widgets`;

CREATE TABLE `widgets` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `widget_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sidebar_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `data` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

LOCK TABLES `widgets` WRITE;
/*!40000 ALTER TABLE `widgets` DISABLE KEYS */;

INSERT INTO `widgets` (`id`, `widget_id`, `sidebar_id`, `theme`, `position`, `data`, `created_at`, `updated_at`)
VALUES
	(1,'RecentPostsWidget','footer_sidebar','ripple',0,'{\"id\":\"RecentPostsWidget\",\"name\":\"Recent Posts\",\"number_display\":5}','2021-07-11 09:29:27','2021-07-11 09:29:27'),
	(2,'RecentPostsWidget','top_sidebar','ripple',0,'{\"id\":\"RecentPostsWidget\",\"name\":\"Recent Posts\",\"number_display\":5}','2021-07-11 09:29:27','2021-07-11 09:29:27'),
	(3,'TagsWidget','primary_sidebar','ripple',0,'{\"id\":\"TagsWidget\",\"name\":\"Tags\",\"number_display\":5}','2021-07-11 09:29:27','2021-07-11 09:29:27'),
	(4,'CustomMenuWidget','primary_sidebar','ripple',1,'{\"id\":\"CustomMenuWidget\",\"name\":\"Categories\",\"menu_id\":\"featured-categories\"}','2021-07-11 09:29:27','2021-07-11 09:29:27'),
	(5,'CustomMenuWidget','primary_sidebar','ripple',2,'{\"id\":\"CustomMenuWidget\",\"name\":\"Social\",\"menu_id\":\"social\"}','2021-07-11 09:29:27','2021-07-11 09:29:27'),
	(6,'CustomMenuWidget','footer_sidebar','ripple',1,'{\"id\":\"CustomMenuWidget\",\"name\":\"Favorite Websites\",\"menu_id\":\"favorite-websites\"}','2021-07-11 09:29:27','2021-07-11 09:29:27'),
	(7,'CustomMenuWidget','footer_sidebar','ripple',2,'{\"id\":\"CustomMenuWidget\",\"name\":\"My Links\",\"menu_id\":\"my-links\"}','2021-07-11 09:29:27','2021-07-11 09:29:27'),
	(8,'RecentPostsWidget','footer_sidebar','ripple-vi',0,'{\"id\":\"RecentPostsWidget\",\"name\":\"B\\u00e0i vi\\u1ebft g\\u1ea7n \\u0111\\u00e2y\",\"number_display\":5}','2021-07-11 09:29:27','2021-07-11 09:29:27'),
	(9,'RecentPostsWidget','top_sidebar','ripple-vi',0,'{\"id\":\"RecentPostsWidget\",\"name\":\"B\\u00e0i vi\\u1ebft g\\u1ea7n \\u0111\\u00e2y\",\"number_display\":5}','2021-07-11 09:29:27','2021-07-11 09:29:27'),
	(10,'TagsWidget','primary_sidebar','ripple-vi',0,'{\"id\":\"TagsWidget\",\"name\":\"Tags\",\"number_display\":5}','2021-07-11 09:29:27','2021-07-11 09:29:27'),
	(11,'CustomMenuWidget','primary_sidebar','ripple-vi',1,'{\"id\":\"CustomMenuWidget\",\"name\":\"Danh m\\u1ee5c n\\u1ed5i b\\u1eadt\",\"menu_id\":\"danh-muc-noi-bat\"}','2021-07-11 09:29:27','2021-07-11 09:29:27'),
	(12,'CustomMenuWidget','primary_sidebar','ripple-vi',2,'{\"id\":\"CustomMenuWidget\",\"name\":\"M\\u1ea1ng x\\u00e3 h\\u1ed9i\",\"menu_id\":\"social\"}','2021-07-11 09:29:27','2021-07-11 09:29:27'),
	(13,'CustomMenuWidget','footer_sidebar','ripple-vi',1,'{\"id\":\"CustomMenuWidget\",\"name\":\"Trang web y\\u00eau th\\u00edch\",\"menu_id\":\"trang-web-yeu-thich\"}','2021-07-11 09:29:27','2021-07-11 09:29:27'),
	(14,'CustomMenuWidget','footer_sidebar','ripple-vi',2,'{\"id\":\"CustomMenuWidget\",\"name\":\"Li\\u00ean k\\u1ebft\",\"menu_id\":\"lien-ket\"}','2021-07-11 09:29:27','2021-07-11 09:29:27'),
	(15,'RecentPostsWidget','footer_sidebar','newstv',0,'{\"id\":\"RecentPostsWidget\",\"name\":\"Recent Posts\",\"number_display\":5}','2021-07-11 09:29:27','2021-07-11 09:29:27'),
	(16,'PopularPostsWidget','primary_sidebar','newstv',0,'{\"id\":\"PopularPostsWidget\",\"name\":\"Top Views\",\"number_display\":5}','2021-07-11 09:29:27','2021-07-11 09:29:27'),
	(17,'VideoPostsWidget','primary_sidebar','newstv',1,'{\"id\":\"VideoPostsWidget\",\"name\":\"Video posts\",\"number_display\":1}','2021-07-11 09:29:27','2021-07-11 09:29:27'),
	(18,'FacebookWidget','primary_sidebar','newstv',2,'{\"id\":\"FacebookWidget\",\"name\":\"\",\"facebook_name\":\"Botble Technologies\",\"facebook_id\":\"https:\\/\\/www.facebook.com\\/botble.technologies\"}','2021-07-11 09:29:27','2021-07-11 09:29:27'),
	(19,'AdsWidget','primary_sidebar','newstv',3,'{\"id\":\"AdsWidget\",\"name\":\"\",\"image_url\":\"http:\\/\\/gotap.test\\/storage\\/widgets\\/300x250.jpg\",\"image_link\":\"https:\\/\\/google.com\"}','2021-07-11 09:29:27','2021-07-11 09:29:27'),
	(20,'CustomMenuWidget','footer_sidebar','newstv',1,'{\"id\":\"CustomMenuWidget\",\"name\":\"Favorite Websites\",\"menu_id\":\"favorite-websites\"}','2021-07-11 09:29:27','2021-07-11 09:29:27'),
	(21,'CustomMenuWidget','footer_sidebar','newstv',2,'{\"id\":\"CustomMenuWidget\",\"name\":\"My Links\",\"menu_id\":\"my-links\"}','2021-07-11 09:29:27','2021-07-11 09:29:27'),
	(22,'CustomMenuWidget','footer_sidebar','newstv',3,'{\"id\":\"CustomMenuWidget\",\"name\":\"Featured categories\",\"menu_id\":\"featured-categories\"}','2021-07-11 09:29:27','2021-07-11 09:29:27'),
	(23,'PopularPostsWidget','primary_sidebar','newstv-vi',0,'{\"id\":\"PopularPostsWidget\",\"name\":\"B\\u00e0i vi\\u1ebft n\\u1ed5i b\\u1eadt\",\"number_display\":5}','2021-07-11 09:29:27','2021-07-11 09:29:27'),
	(24,'VideoPostsWidget','primary_sidebar','newstv-vi',1,'{\"id\":\"VideoPostsWidget\",\"name\":\"B\\u00e0i vi\\u1ebft video\",\"number_display\":1}','2021-07-11 09:29:27','2021-07-11 09:29:27'),
	(25,'FacebookWidget','primary_sidebar','newstv-vi',2,'{\"id\":\"FacebookWidget\",\"name\":\"\",\"facebook_name\":\"Botble Technologies\",\"facebook_id\":\"https:\\/\\/www.facebook.com\\/botble.technologies\"}','2021-07-11 09:29:27','2021-07-11 09:29:27'),
	(26,'AdsWidget','primary_sidebar','newstv-vi',3,'{\"id\":\"AdsWidget\",\"name\":\"\",\"image_url\":\"http:\\/\\/gotap.test\\/storage\\/widgets\\/300x250.jpg\",\"image_link\":\"https:\\/\\/google.com\"}','2021-07-11 09:29:27','2021-07-11 09:29:27'),
	(27,'RecentPostsWidget','footer_sidebar','newstv-vi',0,'{\"id\":\"RecentPostsWidget\",\"name\":\"B\\u00e0i vi\\u1ebft g\\u1ea7n \\u0111\\u00e2y\",\"number_display\":5}','2021-07-11 09:29:27','2021-07-11 09:29:27'),
	(28,'CustomMenuWidget','footer_sidebar','newstv-vi',1,'{\"id\":\"CustomMenuWidget\",\"name\":\"Trang web y\\u00eau th\\u00edch\",\"menu_id\":\"trang-web-yeu-thich\"}','2021-07-11 09:29:27','2021-07-11 09:29:27'),
	(29,'CustomMenuWidget','footer_sidebar','newstv-vi',2,'{\"id\":\"CustomMenuWidget\",\"name\":\"Li\\u00ean k\\u1ebft\",\"menu_id\":\"lien-ket\"}','2021-07-11 09:29:27','2021-07-11 09:29:27'),
	(30,'CustomMenuWidget','footer_sidebar','newstv-vi',3,'{\"id\":\"CustomMenuWidget\",\"name\":\"Danh m\\u1ee5c n\\u1ed5i b\\u1eadt\",\"menu_id\":\"danh-muc-noi-bat\"}','2021-07-11 09:29:27','2021-07-11 09:29:27');

/*!40000 ALTER TABLE `widgets` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
