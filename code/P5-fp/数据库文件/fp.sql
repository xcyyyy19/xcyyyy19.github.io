/*
 Navicat MySQL Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80015
 Source Host           : localhost:3306
 Source Schema         : fp

 Target Server Type    : MySQL
 Target Server Version : 80015
 File Encoding         : 65001

 Date: 19/02/2022 20:55:52
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for auth_group
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Table structure for auth_group_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Table structure for auth_permission
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
BEGIN;
INSERT INTO `auth_permission` VALUES (1, 'Can add log entry', 1, 'add_logentry');
INSERT INTO `auth_permission` VALUES (2, 'Can change log entry', 1, 'change_logentry');
INSERT INTO `auth_permission` VALUES (3, 'Can delete log entry', 1, 'delete_logentry');
INSERT INTO `auth_permission` VALUES (4, 'Can view log entry', 1, 'view_logentry');
INSERT INTO `auth_permission` VALUES (5, 'Can add permission', 2, 'add_permission');
INSERT INTO `auth_permission` VALUES (6, 'Can change permission', 2, 'change_permission');
INSERT INTO `auth_permission` VALUES (7, 'Can delete permission', 2, 'delete_permission');
INSERT INTO `auth_permission` VALUES (8, 'Can view permission', 2, 'view_permission');
INSERT INTO `auth_permission` VALUES (9, 'Can add group', 3, 'add_group');
INSERT INTO `auth_permission` VALUES (10, 'Can change group', 3, 'change_group');
INSERT INTO `auth_permission` VALUES (11, 'Can delete group', 3, 'delete_group');
INSERT INTO `auth_permission` VALUES (12, 'Can view group', 3, 'view_group');
INSERT INTO `auth_permission` VALUES (13, 'Can add user', 4, 'add_user');
INSERT INTO `auth_permission` VALUES (14, 'Can change user', 4, 'change_user');
INSERT INTO `auth_permission` VALUES (15, 'Can delete user', 4, 'delete_user');
INSERT INTO `auth_permission` VALUES (16, 'Can view user', 4, 'view_user');
INSERT INTO `auth_permission` VALUES (17, 'Can add content type', 5, 'add_contenttype');
INSERT INTO `auth_permission` VALUES (18, 'Can change content type', 5, 'change_contenttype');
INSERT INTO `auth_permission` VALUES (19, 'Can delete content type', 5, 'delete_contenttype');
INSERT INTO `auth_permission` VALUES (20, 'Can view content type', 5, 'view_contenttype');
INSERT INTO `auth_permission` VALUES (21, 'Can add session', 6, 'add_session');
INSERT INTO `auth_permission` VALUES (22, 'Can change session', 6, 'change_session');
INSERT INTO `auth_permission` VALUES (23, 'Can delete session', 6, 'delete_session');
INSERT INTO `auth_permission` VALUES (24, 'Can view session', 6, 'view_session');
INSERT INTO `auth_permission` VALUES (25, 'Can add 用户管理', 7, 'add_user');
INSERT INTO `auth_permission` VALUES (26, 'Can change 用户管理', 7, 'change_user');
INSERT INTO `auth_permission` VALUES (27, 'Can delete 用户管理', 7, 'delete_user');
INSERT INTO `auth_permission` VALUES (28, 'Can view 用户管理', 7, 'view_user');
INSERT INTO `auth_permission` VALUES (29, 'Can add 废品分类', 8, 'add_type');
INSERT INTO `auth_permission` VALUES (30, 'Can change 废品分类', 8, 'change_type');
INSERT INTO `auth_permission` VALUES (31, 'Can delete 废品分类', 8, 'delete_type');
INSERT INTO `auth_permission` VALUES (32, 'Can view 废品分类', 8, 'view_type');
INSERT INTO `auth_permission` VALUES (33, 'Can add 状态', 9, 'add_status');
INSERT INTO `auth_permission` VALUES (34, 'Can change 状态', 9, 'change_status');
INSERT INTO `auth_permission` VALUES (35, 'Can delete 状态', 9, 'delete_status');
INSERT INTO `auth_permission` VALUES (36, 'Can view 状态', 9, 'view_status');
INSERT INTO `auth_permission` VALUES (37, 'Can add 订单管理', 10, 'add_order');
INSERT INTO `auth_permission` VALUES (38, 'Can change 订单管理', 10, 'change_order');
INSERT INTO `auth_permission` VALUES (39, 'Can delete 订单管理', 10, 'delete_order');
INSERT INTO `auth_permission` VALUES (40, 'Can view 订单管理', 10, 'view_order');
INSERT INTO `auth_permission` VALUES (41, 'Can add 商户管理', 11, 'add_business');
INSERT INTO `auth_permission` VALUES (42, 'Can change 商户管理', 11, 'change_business');
INSERT INTO `auth_permission` VALUES (43, 'Can delete 商户管理', 11, 'delete_business');
INSERT INTO `auth_permission` VALUES (44, 'Can view 商户管理', 11, 'view_business');
INSERT INTO `auth_permission` VALUES (45, 'Can add 商户接单', 12, 'add_businessorder');
INSERT INTO `auth_permission` VALUES (46, 'Can change 商户接单', 12, 'change_businessorder');
INSERT INTO `auth_permission` VALUES (47, 'Can delete 商户接单', 12, 'delete_businessorder');
INSERT INTO `auth_permission` VALUES (48, 'Can view 商户接单', 12, 'view_businessorder');
INSERT INTO `auth_permission` VALUES (49, 'Can add 取货员管理', 13, 'add_delivery');
INSERT INTO `auth_permission` VALUES (50, 'Can change 取货员管理', 13, 'change_delivery');
INSERT INTO `auth_permission` VALUES (51, 'Can delete 取货员管理', 13, 'delete_delivery');
INSERT INTO `auth_permission` VALUES (52, 'Can view 取货员管理', 13, 'view_delivery');
INSERT INTO `auth_permission` VALUES (53, 'Can add 取货员接单', 14, 'add_deliveryorder');
INSERT INTO `auth_permission` VALUES (54, 'Can change 取货员接单', 14, 'change_deliveryorder');
INSERT INTO `auth_permission` VALUES (55, 'Can delete 取货员接单', 14, 'delete_deliveryorder');
INSERT INTO `auth_permission` VALUES (56, 'Can view 取货员接单', 14, 'view_deliveryorder');
COMMIT;

-- ----------------------------
-- Table structure for auth_user
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of auth_user
-- ----------------------------
BEGIN;
INSERT INTO `auth_user` VALUES (1, 'pbkdf2_sha256$260000$e18SkXeLeThdLC5har9jYZ$YFZLu3i3+4V7dL9hqY8hfRCLOtW7xa1SiD4Dy6Y78m8=', '2022-02-19 20:35:41.260366', 1, 'admin', '', '', '', 1, 1, '2022-02-20 19:35:01.594737');
COMMIT;

-- ----------------------------
-- Table structure for auth_user_groups
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Table structure for auth_user_user_permissions
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Table structure for business
-- ----------------------------
DROP TABLE IF EXISTS `business`;
CREATE TABLE `business` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `addr` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of business
-- ----------------------------
BEGIN;
INSERT INTO `business` VALUES (1, '废品回收中心', '111', '废品回收中心', '13145263786', '北京朝阳');
INSERT INTO `business` VALUES (2, '衣物回收', '111', '衣物回收', '13145263786', '北京朝阳');
COMMIT;

-- ----------------------------
-- Table structure for business_order
-- ----------------------------
DROP TABLE IF EXISTS `business_order`;
CREATE TABLE `business_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create` datetime(6) NOT NULL,
  `confirm` datetime(6) DEFAULT NULL,
  `delivery` tinyint(1) NOT NULL,
  `business_id` int(11) NOT NULL,
  `order_id` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `business_order_business_id_9463b850_fk_business_id` (`business_id`),
  KEY `business_order_order_id_f7ae8c03_fk_order_id` (`order_id`),
  CONSTRAINT `business_order_business_id_9463b850_fk_business_id` FOREIGN KEY (`business_id`) REFERENCES `business` (`id`),
  CONSTRAINT `business_order_order_id_f7ae8c03_fk_order_id` FOREIGN KEY (`order_id`) REFERENCES `order` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of business_order
-- ----------------------------
BEGIN;
INSERT INTO `business_order` VALUES (1, '2022-02-19 19:41:20.783014', '2022-02-19 19:45:22.644071', 1, 1, '20220219193858');
INSERT INTO `business_order` VALUES (2, '2022-02-19 20:30:20.301396', '2022-02-19 20:33:42.117154', 1, 2, '20220219202648');
COMMIT;

-- ----------------------------
-- Table structure for delivery
-- ----------------------------
DROP TABLE IF EXISTS `delivery`;
CREATE TABLE `delivery` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of delivery
-- ----------------------------
BEGIN;
INSERT INTO `delivery` VALUES (1, '李明', '111', '李明', '13145263786');
INSERT INTO `delivery` VALUES (2, '王武', '111', '王武', '13145263786');
COMMIT;

-- ----------------------------
-- Table structure for delivery_order
-- ----------------------------
DROP TABLE IF EXISTS `delivery_order`;
CREATE TABLE `delivery_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `create` datetime(6) NOT NULL,
  `confirm` datetime(6) DEFAULT NULL,
  `delivery_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `delivery_order_delivery_id_61b49dd0_fk_delivery_id` (`delivery_id`),
  KEY `delivery_order_order_id_02d283d9_fk_business_order_id` (`order_id`),
  CONSTRAINT `delivery_order_delivery_id_61b49dd0_fk_delivery_id` FOREIGN KEY (`delivery_id`) REFERENCES `delivery` (`id`),
  CONSTRAINT `delivery_order_order_id_02d283d9_fk_business_order_id` FOREIGN KEY (`order_id`) REFERENCES `business_order` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of delivery_order
-- ----------------------------
BEGIN;
INSERT INTO `delivery_order` VALUES (1, '2022-02-19 19:43:37.070794', '2022-02-19 19:45:08.659333', 1, 1);
INSERT INTO `delivery_order` VALUES (2, '2022-02-19 20:31:49.737266', '2022-02-19 20:33:18.137839', 2, 2);
COMMIT;

-- ----------------------------
-- Table structure for django_admin_log
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------
BEGIN;
INSERT INTO `django_admin_log` VALUES (1, '2022-02-19 19:36:45.013963', '1', '图书报刊', 1, '[{\"added\": {}}]', 8, 1);
INSERT INTO `django_admin_log` VALUES (2, '2022-02-19 19:37:09.475451', '2', '衣物鞋包', 1, '[{\"added\": {}}]', 8, 1);
INSERT INTO `django_admin_log` VALUES (3, '2022-02-19 19:37:24.795517', '3', '塑料制品', 1, '[{\"added\": {}}]', 8, 1);
INSERT INTO `django_admin_log` VALUES (4, '2022-02-19 20:36:28.671990', '4', '电子产品', 1, '[{\"added\": {}}]', 8, 1);
INSERT INTO `django_admin_log` VALUES (5, '2022-02-19 20:36:44.393023', '2', '里斯', 2, '[{\"changed\": {\"fields\": [\"\\u8054\\u7cfb\\u7535\\u8bdd\"]}}]', 7, 1);
COMMIT;

-- ----------------------------
-- Table structure for django_content_type
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
BEGIN;
INSERT INTO `django_content_type` VALUES (1, 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES (3, 'auth', 'group');
INSERT INTO `django_content_type` VALUES (2, 'auth', 'permission');
INSERT INTO `django_content_type` VALUES (4, 'auth', 'user');
INSERT INTO `django_content_type` VALUES (11, 'business', 'business');
INSERT INTO `django_content_type` VALUES (12, 'business', 'businessorder');
INSERT INTO `django_content_type` VALUES (5, 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES (13, 'delivery', 'delivery');
INSERT INTO `django_content_type` VALUES (14, 'delivery', 'deliveryorder');
INSERT INTO `django_content_type` VALUES (6, 'sessions', 'session');
INSERT INTO `django_content_type` VALUES (10, 'user', 'order');
INSERT INTO `django_content_type` VALUES (9, 'user', 'status');
INSERT INTO `django_content_type` VALUES (8, 'user', 'type');
INSERT INTO `django_content_type` VALUES (7, 'user', 'user');
COMMIT;

-- ----------------------------
-- Table structure for django_migrations
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
BEGIN;
INSERT INTO `django_migrations` VALUES (1, 'contenttypes', '0001_initial', '2022-02-20 19:32:30.489416');
INSERT INTO `django_migrations` VALUES (2, 'auth', '0001_initial', '2022-02-20 19:32:30.827814');
INSERT INTO `django_migrations` VALUES (3, 'admin', '0001_initial', '2022-02-20 19:32:30.916963');
INSERT INTO `django_migrations` VALUES (4, 'admin', '0002_logentry_remove_auto_add', '2022-02-20 19:32:30.927381');
INSERT INTO `django_migrations` VALUES (5, 'admin', '0003_logentry_add_action_flag_choices', '2022-02-20 19:32:30.937489');
INSERT INTO `django_migrations` VALUES (6, 'contenttypes', '0002_remove_content_type_name', '2022-02-20 19:32:31.015835');
INSERT INTO `django_migrations` VALUES (7, 'auth', '0002_alter_permission_name_max_length', '2022-02-20 19:32:31.053023');
INSERT INTO `django_migrations` VALUES (8, 'auth', '0003_alter_user_email_max_length', '2022-02-20 19:32:31.082709');
INSERT INTO `django_migrations` VALUES (9, 'auth', '0004_alter_user_username_opts', '2022-02-20 19:32:31.092553');
INSERT INTO `django_migrations` VALUES (10, 'auth', '0005_alter_user_last_login_null', '2022-02-20 19:32:31.130061');
INSERT INTO `django_migrations` VALUES (11, 'auth', '0006_require_contenttypes_0002', '2022-02-20 19:32:31.132772');
INSERT INTO `django_migrations` VALUES (12, 'auth', '0007_alter_validators_add_error_messages', '2022-02-20 19:32:31.141557');
INSERT INTO `django_migrations` VALUES (13, 'auth', '0008_alter_user_username_max_length', '2022-02-20 19:32:31.185037');
INSERT INTO `django_migrations` VALUES (14, 'auth', '0009_alter_user_last_name_max_length', '2022-02-20 19:32:31.226486');
INSERT INTO `django_migrations` VALUES (15, 'sessions', '0001_initial', '2022-02-20 19:32:31.259610');
INSERT INTO `django_migrations` VALUES (16, 'user', '0001_initial', '2022-02-20 19:33:01.843421');
INSERT INTO `django_migrations` VALUES (17, 'business', '0001_initial', '2022-02-20 19:33:01.921917');
INSERT INTO `django_migrations` VALUES (18, 'delivery', '0001_initial', '2022-02-20 19:33:01.994056');
INSERT INTO `django_migrations` VALUES (19, 'user', '0002_auto_20220219_2032', '2022-02-19 20:32:24.626981');
COMMIT;

-- ----------------------------
-- Table structure for django_session
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Table structure for order
-- ----------------------------
DROP TABLE IF EXISTS `order`;
CREATE TABLE `order` (
  `id` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `addr` varchar(256) NOT NULL,
  `date` date NOT NULL,
  `time` time(6) NOT NULL,
  `heavy` int(11) NOT NULL,
  `create` datetime(6) NOT NULL,
  `detail` varchar(500) DEFAULT NULL,
  `price` decimal(6,2) NOT NULL,
  `comment_d` varchar(500) DEFAULT NULL,
  `comment_b` varchar(500) DEFAULT NULL,
  `status` varchar(20) NOT NULL,
  `type_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `order_type_id_b709f669_fk_type_id` (`type_id`),
  KEY `order_user_id_e323497c_fk_user_id` (`user_id`),
  CONSTRAINT `order_type_id_b709f669_fk_type_id` FOREIGN KEY (`type_id`) REFERENCES `type` (`id`),
  CONSTRAINT `order_user_id_e323497c_fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of order
-- ----------------------------
BEGIN;
INSERT INTO `order` VALUES ('20220219193858', 'milk lee', '13145263786', '北京朝阳', '2022-02-19', '20:00:00.000000', 1, '2022-02-19 19:38:58.225712', '11', 100.00, '很好效率很高', '服务很好', '已完成', 1, 1);
INSERT INTO `order` VALUES ('20220219202648', '里斯', '13145263786', '北京朝阳', '2022-02-19', '22:30:00.000000', 2, '2022-02-19 20:26:48.408231', '', 200.00, NULL, NULL, '已完成', 2, 2);
COMMIT;

-- ----------------------------
-- Table structure for status
-- ----------------------------
DROP TABLE IF EXISTS `status`;
CREATE TABLE `status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `create` datetime(6) NOT NULL,
  `order_id` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `status_order_id_c7e91cf2_fk_order_id` (`order_id`),
  CONSTRAINT `status_order_id_c7e91cf2_fk_order_id` FOREIGN KEY (`order_id`) REFERENCES `order` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of status
-- ----------------------------
BEGIN;
INSERT INTO `status` VALUES (1, '您的订单开始处理', '2022-02-19 19:38:58.236784', '20220219193858');
INSERT INTO `status` VALUES (2, '商家[废品回收中心]已接单', '2022-02-19 19:41:20.787239', '20220219193858');
INSERT INTO `status` VALUES (3, '取货员 李明[None] 已接单', '2022-02-19 19:43:37.073255', '20220219193858');
INSERT INTO `status` VALUES (4, '取货员 李明[None] 正赶往取货地点', '2022-02-19 19:43:37.075096', '20220219193858');
INSERT INTO `status` VALUES (5, '取货员李明[None] 已到达', '2022-02-19 19:44:50.212719', '20220219193858');
INSERT INTO `status` VALUES (6, '取货员已取货', '2022-02-19 19:44:51.952372', '20220219193858');
INSERT INTO `status` VALUES (7, '取货员李明[None] 正赶往送货地点', '2022-02-19 19:44:51.958392', '20220219193858');
INSERT INTO `status` VALUES (8, '取货员已送达', '2022-02-19 19:45:08.667671', '20220219193858');
INSERT INTO `status` VALUES (9, '商家已付款', '2022-02-19 19:45:22.647051', '20220219193858');
INSERT INTO `status` VALUES (10, '订单已完成', '2022-02-19 19:45:22.649250', '20220219193858');
INSERT INTO `status` VALUES (11, '您的订单开始处理', '2022-02-19 20:26:48.412689', '20220219202648');
INSERT INTO `status` VALUES (12, '商家[衣物回收]已接单', '2022-02-19 20:30:20.305037', '20220219202648');
INSERT INTO `status` VALUES (13, '取货员 王武[13145263786] 已接单', '2022-02-19 20:32:27.526485', '20220219202648');
INSERT INTO `status` VALUES (14, '取货员 王武[13145263786] 正赶往取货地点', '2022-02-19 20:32:27.529890', '20220219202648');
INSERT INTO `status` VALUES (15, '取货员王武[13145263786] 已到达', '2022-02-19 20:32:57.636841', '20220219202648');
INSERT INTO `status` VALUES (16, '取货员已取货', '2022-02-19 20:33:06.327228', '20220219202648');
INSERT INTO `status` VALUES (17, '取货员王武[13145263786] 正赶往送货地点', '2022-02-19 20:33:06.332729', '20220219202648');
INSERT INTO `status` VALUES (18, '取货员已送达', '2022-02-19 20:33:18.146592', '20220219202648');
INSERT INTO `status` VALUES (19, '商家已付款', '2022-02-19 20:33:42.122089', '20220219202648');
INSERT INTO `status` VALUES (20, '订单已完成', '2022-02-19 20:33:42.124751', '20220219202648');
COMMIT;

-- ----------------------------
-- Table structure for type
-- ----------------------------
DROP TABLE IF EXISTS `type`;
CREATE TABLE `type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of type
-- ----------------------------
BEGIN;
INSERT INTO `type` VALUES (1, '图书报刊');
INSERT INTO `type` VALUES (2, '衣物鞋包');
INSERT INTO `type` VALUES (3, '塑料制品');
INSERT INTO `type` VALUES (4, '电子产品');
COMMIT;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `phone` varchar(11) DEFAULT NULL,
  `addr` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of user
-- ----------------------------
BEGIN;
INSERT INTO `user` VALUES (1, '张三', '111', 'milk lee', '13145263786', '北京朝阳');
INSERT INTO `user` VALUES (2, '里斯', '1', '里斯', '13145263666', '北京朝阳');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
