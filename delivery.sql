/*
Navicat MySQL Data Transfer

Source Server         : MySQL
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : delivery

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2022-01-27 15:59:07
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for cart_details
-- ----------------------------
DROP TABLE IF EXISTS `cart_details`;
CREATE TABLE `cart_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `cart_token` varchar(255) DEFAULT NULL,
  `restaurant` varchar(255) DEFAULT NULL,
  `subtotal` varchar(255) DEFAULT NULL,
  `deliver` varchar(255) DEFAULT NULL,
  `total` varchar(255) DEFAULT NULL,
  `date` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cart_details
-- ----------------------------
INSERT INTO `cart_details` VALUES ('14', '1', '9f1b1288a2c5a737c2a5ffda50b60ff0', 'McDonald`s', '145.50', '7.99', '153.49', '2022-01-24 11:59:59');
INSERT INTO `cart_details` VALUES ('15', '1', '242ed78828794b16c6c2f49713d1668c', 'Domino`s Pizza', '52.00', '7.99', '59.99', '2022-01-24 12:12:19');
INSERT INTO `cart_details` VALUES ('16', '1', '0db7d20e3c927b64b1da6b37f78f957c', 'McDonald`s', '50.20', '7.99', '58.19', '2022-01-24 12:36:41');
INSERT INTO `cart_details` VALUES ('17', '1', '7c5e00f73a4f0a8fbe07d1bc3b48b4ed', 'McDonald`s', '39.90', '7.99', '47.89', '2022-01-24 12:37:33');
INSERT INTO `cart_details` VALUES ('18', '1', 'c62e26b5827dddfa7c822e9d4dc4ad17', 'McDonald`s', '13.20', '7.99', '21.19', '2022-01-24 15:25:33');
INSERT INTO `cart_details` VALUES ('19', '1', '472c019160968f44ffaa16b1aa6a7d6c', 'McDonald`s', '22.80', '7.99', '30.79', '2022-01-24 15:36:45');
INSERT INTO `cart_details` VALUES ('20', '1', '283a2b72b1cf9df1a7bf0cecdb95dd11', 'McDonald`s', '14.00', '7.99', '21.99', '2022-01-24 20:35:41');
INSERT INTO `cart_details` VALUES ('21', '1', '31251915eb554e150955b89e7c949207', 'McDonald`s', '60.00', '7.99', '67.99', '2022-01-27 00:01:45');
INSERT INTO `cart_details` VALUES ('22', '1', 'b54a8ffcb83b5bf99a970a89690d53e4', 'McDonald`s', '60.00', '7.99', '67.99', '2022-01-27 00:02:01');
INSERT INTO `cart_details` VALUES ('23', '1', '3e64d7069a1d51629b389206071afd3f', 'McDonald`s', '60.00', '7.99', '67.99', '2022-01-27 00:02:14');
INSERT INTO `cart_details` VALUES ('24', '1', 'eda1613ca6279e5fda5ff2ecf1782c05', 'Jerry`s Pizza', '49.50', '7.99', '57.49', '2022-01-27 00:02:46');
INSERT INTO `cart_details` VALUES ('25', '1', 'debe1e43c1ebeb729473c9f65be63588', 'Presto Pizza', '110.00', '7.99', '117.99', '2022-01-27 00:05:34');
INSERT INTO `cart_details` VALUES ('26', '1', '3d9f5e1830379a46fab368b14298981c', 'Subway', '65.40', '7.99', '73.39', '2022-01-27 00:07:27');
INSERT INTO `cart_details` VALUES ('27', '1', 'b4e4dda18e567d48b5aea1a060f5beb0', 'Taco Bell', '56.50', '7.99', '64.49', '2022-01-27 00:12:02');
INSERT INTO `cart_details` VALUES ('28', '1', 'a7b0e7ec7ab8bde740a61b2ec33a2e98', 'Salad Box', '28.99', '7.99', '36.98', '2022-01-27 00:14:04');
INSERT INTO `cart_details` VALUES ('29', '1', '687087de318dddb3221a2299189f2383', 'Chopstix', '41.56', '7.99', '49.55', '2022-01-27 00:17:30');
INSERT INTO `cart_details` VALUES ('30', '1', 'd8d1f44132f8457d83a2f0f65f0c5123', 'Calif', '94.97', '7.99', '102.96', '2022-01-27 00:19:14');
INSERT INTO `cart_details` VALUES ('31', '1', '46f1a5fa75f664dc0b0de7209d8c3dde', 'KFC', '164.50', '7.99', '172.49', '2022-01-27 00:22:22');
INSERT INTO `cart_details` VALUES ('32', '1', '851b271978c9c439fbfb61571122a453', 'Taksim', '62.98', '7.99', '70.97', '2022-01-27 00:29:47');
INSERT INTO `cart_details` VALUES ('33', '1', '6d919b812688e2b4a3f1ce6f1788beb4', 'Burger King', '51.90', '7.99', '59.89', '2022-01-27 00:31:39');
INSERT INTO `cart_details` VALUES ('34', '1', '1c38fe9580d7625b4fb4e37992adff65', 'Dristor Kebab', '104.00', '7.99', '111.99', '2022-01-27 00:34:35');

-- ----------------------------
-- Table structure for cart_items
-- ----------------------------
DROP TABLE IF EXISTS `cart_items`;
CREATE TABLE `cart_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `cart_token` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `cant` int(11) DEFAULT NULL,
  `price` decimal(10,0) DEFAULT NULL,
  `id_prod` int(11) DEFAULT NULL,
  `id_rest` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cart_items
-- ----------------------------
INSERT INTO `cart_items` VALUES ('15', '1', '9f1b1288a2c5a737c2a5ffda50b60ff0', 'img/restaurante/mcdonalds/prod0.webp', 'Home Menu', '1', '60', '1', '1');
INSERT INTO `cart_items` VALUES ('16', '1', '9f1b1288a2c5a737c2a5ffda50b60ff0', 'img/restaurante/mcdonalds/prod1.webp', 'MAXI SUPREME CHICKEN TENDERS', '2', '23', '2', '1');
INSERT INTO `cart_items` VALUES ('17', '1', '9f1b1288a2c5a737c2a5ffda50b60ff0', 'img/restaurante/mcdonalds/prod12.webp', 'McChicken', '1', '11', '14', '1');
INSERT INTO `cart_items` VALUES ('18', '1', '9f1b1288a2c5a737c2a5ffda50b60ff0', 'img/restaurante/mcdonalds/prod14.webp', 'Salata Caesar', '1', '16', '16', '1');
INSERT INTO `cart_items` VALUES ('19', '1', '9f1b1288a2c5a737c2a5ffda50b60ff0', 'img/restaurante/mcdonalds/prod9.webp', 'Chicken Grill', '1', '13', '11', '1');
INSERT INTO `cart_items` VALUES ('20', '1', '242ed78828794b16c6c2f49713d1668c', 'img/restaurante/dominos/prod4.webp', 'Domino`s Classic', '1', '23', '47', '2');
INSERT INTO `cart_items` VALUES ('21', '1', '242ed78828794b16c6c2f49713d1668c', 'img/restaurante/dominos/prod7.webp', 'Fresh Pizza', '1', '29', '50', '2');
INSERT INTO `cart_items` VALUES ('22', '1', '0db7d20e3c927b64b1da6b37f78f957c', 'img/restaurante/mcdonalds/prod3.webp', 'Meniu Maxi Big Mac', '1', '21', '4', '1');
INSERT INTO `cart_items` VALUES ('23', '1', '0db7d20e3c927b64b1da6b37f78f957c', 'img/restaurante/mcdonalds/prod7.webp', 'Meniu Maxi Sandvis cu porc si sos de hrean', '1', '21', '9', '1');
INSERT INTO `cart_items` VALUES ('24', '1', '0db7d20e3c927b64b1da6b37f78f957c', 'img/restaurante/mcdonalds/prod25.webp', 'Cartofi prajiți Twister', '1', '8', '27', '1');
INSERT INTO `cart_items` VALUES ('25', '1', '7c5e00f73a4f0a8fbe07d1bc3b48b4ed', 'img/restaurante/mcdonalds/prod14.webp', 'Salata Caesar', '1', '16', '16', '1');
INSERT INTO `cart_items` VALUES ('26', '1', '7c5e00f73a4f0a8fbe07d1bc3b48b4ed', 'img/restaurante/mcdonalds/prod11.webp', 'Big Mac', '1', '11', '13', '1');
INSERT INTO `cart_items` VALUES ('27', '1', '7c5e00f73a4f0a8fbe07d1bc3b48b4ed', 'img/restaurante/mcdonalds/prod8.webp', 'Fresh Deluxe', '1', '13', '10', '1');
INSERT INTO `cart_items` VALUES ('28', '1', 'c62e26b5827dddfa7c822e9d4dc4ad17', 'img/restaurante/mcdonalds/prod34.webp', 'Coca-Cola', '2', '7', '36', '1');
INSERT INTO `cart_items` VALUES ('29', '1', '472c019160968f44ffaa16b1aa6a7d6c', 'img/restaurante/mcdonalds/prod1.webp', 'MAXI SUPREME CHICKEN TENDERS', '1', '23', '2', '1');
INSERT INTO `cart_items` VALUES ('30', '1', '283a2b72b1cf9df1a7bf0cecdb95dd11', 'img/restaurante/mcdonalds/prod19.webp', 'Butter Croissant', '4', '4', '21', '1');
INSERT INTO `cart_items` VALUES ('31', '1', '3e64d7069a1d51629b389206071afd3f', 'img/restaurante/mcdonalds/prod0.webp', 'Home Menu', '1', '60', '1', '1');
INSERT INTO `cart_items` VALUES ('32', '1', 'eda1613ca6279e5fda5ff2ecf1782c05', 'img/restaurante/jerryspizza/prod0.webp', 'Pizza Carnivor', '1', '24', '365', '3');
INSERT INTO `cart_items` VALUES ('33', '1', 'eda1613ca6279e5fda5ff2ecf1782c05', 'img/restaurante/jerryspizza/prod6.webp', 'Paste Bolognese', '1', '26', '371', '3');
INSERT INTO `cart_items` VALUES ('34', '1', 'debe1e43c1ebeb729473c9f65be63588', 'img/restaurante/prestopizza/prod2.webp', 'Pizza Diavollo', '1', '40', '374', '4');
INSERT INTO `cart_items` VALUES ('35', '1', 'debe1e43c1ebeb729473c9f65be63588', 'img/restaurante/prestopizza/prod1.webp', 'Pizza Quattro Stagioni', '1', '39', '378', '4');
INSERT INTO `cart_items` VALUES ('36', '1', 'debe1e43c1ebeb729473c9f65be63588', 'img/restaurante/prestopizza/prod6.webp', 'Penne Deliciosa', '1', '31', '373', '4');
INSERT INTO `cart_items` VALUES ('37', '1', '3d9f5e1830379a46fab368b14298981c', 'img/restaurante/subway/prod0.webp', 'SUB pui teriyaki', '1', '16', '381', '5');
INSERT INTO `cart_items` VALUES ('38', '1', '3d9f5e1830379a46fab368b14298981c', 'img/restaurante/subway/prod4.webp', 'SUB pui bbq', '1', '15', '385', '5');
INSERT INTO `cart_items` VALUES ('39', '1', '3d9f5e1830379a46fab368b14298981c', 'img/restaurante/subway/prod5.webp', 'Salată cu pui bbq', '1', '20', '386', '5');
INSERT INTO `cart_items` VALUES ('40', '1', '3d9f5e1830379a46fab368b14298981c', 'img/restaurante/subway/prod6.webp', 'SUB big beef melt', '1', '14', '387', '5');
INSERT INTO `cart_items` VALUES ('41', '1', 'b4e4dda18e567d48b5aea1a060f5beb0', 'img/restaurante/tacobell/prod0.webp', 'Meniu Quesadilla', '1', '25', '397', '6');
INSERT INTO `cart_items` VALUES ('42', '1', 'b4e4dda18e567d48b5aea1a060f5beb0', 'img/restaurante/tacobell/prod5.webp', 'Meniu 2 Chalupas', '1', '32', '402', '6');
INSERT INTO `cart_items` VALUES ('43', '1', 'a7b0e7ec7ab8bde740a61b2ec33a2e98', 'img/restaurante/saladbox/prod1.webp', 'Salată Caesar', '1', '29', '406', '7');
INSERT INTO `cart_items` VALUES ('44', '1', '687087de318dddb3221a2299189f2383', 'img/restaurante/chopstix/prod2.webp', 'Noodles pui', '1', '12', '415', '8');
INSERT INTO `cart_items` VALUES ('45', '1', '687087de318dddb3221a2299189f2383', 'img/restaurante/chopstix/prod3.webp', 'Noodles legume', '1', '11', '416', '8');
INSERT INTO `cart_items` VALUES ('46', '1', '687087de318dddb3221a2299189f2383', 'img/restaurante/chopstix/prod1.webp', 'Pui Shanghai', '1', '10', '414', '8');
INSERT INTO `cart_items` VALUES ('47', '1', '687087de318dddb3221a2299189f2383', 'img/restaurante/chopstix/prod0.webp', 'Pachețele de primăvară', '1', '8', '413', '8');
INSERT INTO `cart_items` VALUES ('48', '1', 'd8d1f44132f8457d83a2f0f65f0c5123', 'img/restaurante/calif/prod0.webp', 'Dil kebab de pui', '1', '24', '421', '9');
INSERT INTO `cart_items` VALUES ('49', '1', 'd8d1f44132f8457d83a2f0f65f0c5123', 'img/restaurante/calif/prod1.webp', 'Dil kebab de vită și curcan', '1', '26', '422', '9');
INSERT INTO `cart_items` VALUES ('50', '1', 'd8d1f44132f8457d83a2f0f65f0c5123', 'img/restaurante/calif/prod4.webp', 'Kebab clasic de vită și curcan cu salate la farfurie', '1', '45', '425', '9');
INSERT INTO `cart_items` VALUES ('51', '1', '46f1a5fa75f664dc0b0de7209d8c3dde', 'img/restaurante/kfc/prod3.webp', 'American Bucket', '1', '54', '432', '10');
INSERT INTO `cart_items` VALUES ('52', '1', '46f1a5fa75f664dc0b0de7209d8c3dde', 'img/restaurante/kfc/prod6.webp', 'Twister® Box Classic', '1', '33', '435', '10');
INSERT INTO `cart_items` VALUES ('53', '1', '46f1a5fa75f664dc0b0de7209d8c3dde', 'img/restaurante/kfc/prod4.webp', 'Variety Bucket', '1', '54', '433', '10');
INSERT INTO `cart_items` VALUES ('54', '1', '46f1a5fa75f664dc0b0de7209d8c3dde', 'img/restaurante/kfc/prod1.webp', 'Smart Menu Extra', '1', '25', '430', '10');
INSERT INTO `cart_items` VALUES ('55', '1', '851b271978c9c439fbfb61571122a453', 'img/restaurante/taksim/prod0.webp', 'Adana kebab de vită la farfurie', '1', '31', '437', '11');
INSERT INTO `cart_items` VALUES ('56', '1', '851b271978c9c439fbfb61571122a453', 'img/restaurante/taksim/prod7.webp', 'Shaorma la farfurie de pui', '1', '32', '444', '11');
INSERT INTO `cart_items` VALUES ('57', '1', '6d919b812688e2b4a3f1ce6f1788beb4', 'img/restaurante/burgerking/prod0.webp', 'King Menu', '1', '29', '445', '12');
INSERT INTO `cart_items` VALUES ('58', '1', '6d919b812688e2b4a3f1ce6f1788beb4', 'img/restaurante/burgerking/prod5.webp', 'Meniu Plant-Based 6 Nuggets', '1', '23', '450', '12');
INSERT INTO `cart_items` VALUES ('59', '1', '1c38fe9580d7625b4fb4e37992adff65', 'img/restaurante/dristorkebab/prod4.webp', 'Lipie pui', '1', '30', '457', '13');
INSERT INTO `cart_items` VALUES ('60', '1', '1c38fe9580d7625b4fb4e37992adff65', 'img/restaurante/dristorkebab/prod7.webp', 'Baghetă pui', '1', '25', '460', '13');
INSERT INTO `cart_items` VALUES ('61', '1', '1c38fe9580d7625b4fb4e37992adff65', 'img/restaurante/dristorkebab/prod0.webp', 'Cartofi prăjiți', '1', '12', '453', '13');
INSERT INTO `cart_items` VALUES ('62', '1', '1c38fe9580d7625b4fb4e37992adff65', 'img/restaurante/dristorkebab/prod2.webp', 'Kebab farfurie pui mică', '1', '37', '455', '13');

-- ----------------------------
-- Table structure for city_lists
-- ----------------------------
DROP TABLE IF EXISTS `city_lists`;
CREATE TABLE `city_lists` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT '',
  `img` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=sjis ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of city_lists
-- ----------------------------
INSERT INTO `city_lists` VALUES ('1', 'București', 'bucuresti');
INSERT INTO `city_lists` VALUES ('2', 'Cluj Napoca', 'cluj');
INSERT INTO `city_lists` VALUES ('3', 'Timișoara', 'timisoara');
INSERT INTO `city_lists` VALUES ('4', 'Iași', 'iasi');
INSERT INTO `city_lists` VALUES ('5', 'Brașov', 'brasov');
INSERT INTO `city_lists` VALUES ('6', 'Oradea', 'oradea');
INSERT INTO `city_lists` VALUES ('7', 'Constanța', 'constanta');
INSERT INTO `city_lists` VALUES ('8', 'Arad', 'arad');
INSERT INTO `city_lists` VALUES ('9', 'Sibiu', 'sibiu');
INSERT INTO `city_lists` VALUES ('10', 'Alba-Iulia', 'alba');

-- ----------------------------
-- Table structure for contacts
-- ----------------------------
DROP TABLE IF EXISTS `contacts`;
CREATE TABLE `contacts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT '',
  `phone` varchar(255) DEFAULT NULL,
  `mail` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of contacts
-- ----------------------------
INSERT INTO `contacts` VALUES ('1', 'București, Str Centrală nr 1', '0123456789', 'contact@mail.com');

-- ----------------------------
-- Table structure for links
-- ----------------------------
DROP TABLE IF EXISTS `links`;
CREATE TABLE `links` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf16_romanian_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf16_romanian_ci DEFAULT NULL,
  `type` enum('social','download') COLLATE utf16_romanian_ci DEFAULT NULL,
  `icon` varchar(255) COLLATE utf16_romanian_ci DEFAULT NULL,
  `class` varchar(255) COLLATE utf16_romanian_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf16 COLLATE=utf16_romanian_ci;

-- ----------------------------
-- Records of links
-- ----------------------------
INSERT INTO `links` VALUES ('1', 'App Store', '#apple', 'download', 'fab fa-apple', 'apple');
INSERT INTO `links` VALUES ('2', 'Google Play', '#android', 'download', 'fab fa-google-play', 'android');
INSERT INTO `links` VALUES ('3', 'facebook', 'https://facebook.com', 'social', 'fab fa-facebook-f', null);
INSERT INTO `links` VALUES ('4', 'twitter', 'https://twitter.com/', 'social', 'fab fa-twitter', null);
INSERT INTO `links` VALUES ('5', 'instagram', 'https://instagram.com', 'social', 'fab fa-instagram', null);
INSERT INTO `links` VALUES ('6', 'pinterest', 'https://pinterest.com', 'social', 'fab fa-pinterest-p', null);

-- ----------------------------
-- Table structure for payment_methods
-- ----------------------------
DROP TABLE IF EXISTS `payment_methods`;
CREATE TABLE `payment_methods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `method` enum('card','cash') DEFAULT 'card',
  `card_number` decimal(65,0) DEFAULT NULL,
  `exp_month` int(50) DEFAULT NULL,
  `exp_year` year(4) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of payment_methods
-- ----------------------------
INSERT INTO `payment_methods` VALUES ('1', '1', 'card', '54564489', '5', '2023', null);
INSERT INTO `payment_methods` VALUES ('6', '1', 'card', '43664564356534', '2', '2002', '2022-01-24 18:31:22');

-- ----------------------------
-- Table structure for restaurants
-- ----------------------------
DROP TABLE IF EXISTS `restaurants`;
CREATE TABLE `restaurants` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `owner_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of restaurants
-- ----------------------------
INSERT INTO `restaurants` VALUES ('1', '1', 'McDonald`s', 'mcdonalds', null);
INSERT INTO `restaurants` VALUES ('2', '2', 'Domino`s Pizza', 'dominos', null);
INSERT INTO `restaurants` VALUES ('3', '2', 'Jerry`s Pizza', 'jerryspizza', null);
INSERT INTO `restaurants` VALUES ('4', '2', 'Presto Pizza', 'prestopizza', null);
INSERT INTO `restaurants` VALUES ('5', '2', 'Subway', 'subway', null);
INSERT INTO `restaurants` VALUES ('6', '2', 'Taco Bell', 'tacobell', null);
INSERT INTO `restaurants` VALUES ('7', '2', 'Salad Box', 'saladbox', null);
INSERT INTO `restaurants` VALUES ('8', '2', 'Chopstix', 'chopstix', null);
INSERT INTO `restaurants` VALUES ('9', '1', 'Calif', 'calif', null);
INSERT INTO `restaurants` VALUES ('10', '1', 'KFC', 'kfc', null);
INSERT INTO `restaurants` VALUES ('11', '2', 'Taksim', 'taksim', null);
INSERT INTO `restaurants` VALUES ('12', '2', 'Burger King', 'burgerking', null);
INSERT INTO `restaurants` VALUES ('13', '1', 'Dristor Kebab', 'dristorkebab', null);

-- ----------------------------
-- Table structure for restaurant_categories
-- ----------------------------
DROP TABLE IF EXISTS `restaurant_categories`;
CREATE TABLE `restaurant_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rest_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of restaurant_categories
-- ----------------------------
INSERT INTO `restaurant_categories` VALUES ('1', '1', 'Meniu Maxi', null);
INSERT INTO `restaurant_categories` VALUES ('2', '1', 'Sandvisuri', null);
INSERT INTO `restaurant_categories` VALUES ('3', '1', 'Salate', null);
INSERT INTO `restaurant_categories` VALUES ('4', '1', 'McCAFÉ', null);
INSERT INTO `restaurant_categories` VALUES ('5', '1', 'Cartofi și sosuri', null);
INSERT INTO `restaurant_categories` VALUES ('6', '1', 'Deserturi', null);
INSERT INTO `restaurant_categories` VALUES ('7', '1', 'Băuturi', null);
INSERT INTO `restaurant_categories` VALUES ('8', '1', 'Shake', null);
INSERT INTO `restaurant_categories` VALUES ('9', '7', 'Salate', null);
INSERT INTO `restaurant_categories` VALUES ('10', '7', 'Salate personalizate', null);
INSERT INTO `restaurant_categories` VALUES ('11', '8', 'Noodles', null);
INSERT INTO `restaurant_categories` VALUES ('12', '8', 'Aperitive', null);
INSERT INTO `restaurant_categories` VALUES ('13', '13', 'Lipii', null);
INSERT INTO `restaurant_categories` VALUES ('14', '13', 'Baghete', null);
INSERT INTO `restaurant_categories` VALUES ('15', '3', 'Pizza', null);
INSERT INTO `restaurant_categories` VALUES ('16', '3', 'Paste', null);
INSERT INTO `restaurant_categories` VALUES ('17', '2', 'Classic', null);
INSERT INTO `restaurant_categories` VALUES ('18', '2', 'Premium', null);
INSERT INTO `restaurant_categories` VALUES ('19', '11', 'Grill', null);
INSERT INTO `restaurant_categories` VALUES ('20', '11', 'Shaorma', null);
INSERT INTO `restaurant_categories` VALUES ('21', '5', 'Pui', null);
INSERT INTO `restaurant_categories` VALUES ('22', '5', 'Vită', null);
INSERT INTO `restaurant_categories` VALUES ('23', '10', 'Buckets', null);
INSERT INTO `restaurant_categories` VALUES ('24', '10', 'Boxes', null);
INSERT INTO `restaurant_categories` VALUES ('25', '4', 'Pizza', null);
INSERT INTO `restaurant_categories` VALUES ('26', '4', 'Paste', null);
INSERT INTO `restaurant_categories` VALUES ('27', '12', 'Meals', null);
INSERT INTO `restaurant_categories` VALUES ('28', '12', 'We love bacon', null);
INSERT INTO `restaurant_categories` VALUES ('29', '9', 'Our famous', null);
INSERT INTO `restaurant_categories` VALUES ('30', '9', 'Kebab așa cum vrei!', null);
INSERT INTO `restaurant_categories` VALUES ('31', '6', 'Meniuri', null);
INSERT INTO `restaurant_categories` VALUES ('32', '6', 'Bune sa le împarți cu alții', null);
INSERT INTO `restaurant_categories` VALUES ('37', '13', 'Cartofi prăjiți', null);
INSERT INTO `restaurant_categories` VALUES ('38', '13', 'Kebab farfurie', null);

-- ----------------------------
-- Table structure for restaurant_cities
-- ----------------------------
DROP TABLE IF EXISTS `restaurant_cities`;
CREATE TABLE `restaurant_cities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rest_id` int(11) NOT NULL,
  `city_id` int(11) NOT NULL,
  `coords` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=138 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of restaurant_cities
-- ----------------------------
INSERT INTO `restaurant_cities` VALUES ('1', '13', '1', '44.478573, 26.157943');
INSERT INTO `restaurant_cities` VALUES ('2', '1', '1', '44.428910, 26.104283');
INSERT INTO `restaurant_cities` VALUES ('3', '3', '1', '44.440647, 26.116710');
INSERT INTO `restaurant_cities` VALUES ('4', '4', '1', '44.440425, 26.132872');
INSERT INTO `restaurant_cities` VALUES ('5', '5', '1', '44.429094, 26.131227');
INSERT INTO `restaurant_cities` VALUES ('6', '6', '1', '44.372915, 26.095956');
INSERT INTO `restaurant_cities` VALUES ('7', '7', '1', '44.449538, 26.110149');
INSERT INTO `restaurant_cities` VALUES ('8', '8', '1', '44.424462, 26.129459');
INSERT INTO `restaurant_cities` VALUES ('9', '9', '1', '44.420410, 26.115965');
INSERT INTO `restaurant_cities` VALUES ('10', '10', '1', '44.372490, 26.095960');
INSERT INTO `restaurant_cities` VALUES ('11', '11', '1', '44.422709, 26.096995');
INSERT INTO `restaurant_cities` VALUES ('12', '12', '1', '44.421054, 26.110150');
INSERT INTO `restaurant_cities` VALUES ('13', '2', '1', '44.434138, 26.107755');
INSERT INTO `restaurant_cities` VALUES ('16', '1', '1', '44.372490, 26.095950');
INSERT INTO `restaurant_cities` VALUES ('21', '1', '2', '1,2');
INSERT INTO `restaurant_cities` VALUES ('22', '2', '2', '1,2');
INSERT INTO `restaurant_cities` VALUES ('23', '3', '2', '1,2');
INSERT INTO `restaurant_cities` VALUES ('24', '4', '2', '1,2');
INSERT INTO `restaurant_cities` VALUES ('25', '5', '2', '1,2');
INSERT INTO `restaurant_cities` VALUES ('27', '7', '2', '1,2');
INSERT INTO `restaurant_cities` VALUES ('28', '8', '2', '1,2');
INSERT INTO `restaurant_cities` VALUES ('29', '9', '2', '1,2');
INSERT INTO `restaurant_cities` VALUES ('30', '10', '2', '1,2');
INSERT INTO `restaurant_cities` VALUES ('31', '11', '2', '1,2');
INSERT INTO `restaurant_cities` VALUES ('33', '13', '2', '1,2');
INSERT INTO `restaurant_cities` VALUES ('34', '1', '3', '1,2');
INSERT INTO `restaurant_cities` VALUES ('35', '2', '3', '1,2');
INSERT INTO `restaurant_cities` VALUES ('36', '3', '3', '1,2');
INSERT INTO `restaurant_cities` VALUES ('37', '4', '3', '1,2');
INSERT INTO `restaurant_cities` VALUES ('38', '5', '3', '1,2');
INSERT INTO `restaurant_cities` VALUES ('39', '6', '3', '1,2');
INSERT INTO `restaurant_cities` VALUES ('41', '8', '3', '1,2');
INSERT INTO `restaurant_cities` VALUES ('42', '9', '3', '1,2');
INSERT INTO `restaurant_cities` VALUES ('43', '10', '3', '1,2');
INSERT INTO `restaurant_cities` VALUES ('44', '11', '3', '1,2');
INSERT INTO `restaurant_cities` VALUES ('45', '12', '3', '1,2');
INSERT INTO `restaurant_cities` VALUES ('46', '13', '3', '1,2');
INSERT INTO `restaurant_cities` VALUES ('47', '1', '4', '1,2');
INSERT INTO `restaurant_cities` VALUES ('48', '2', '4', '1,2');
INSERT INTO `restaurant_cities` VALUES ('49', '3', '4', '1,2');
INSERT INTO `restaurant_cities` VALUES ('50', '4', '4', '1,2');
INSERT INTO `restaurant_cities` VALUES ('51', '5', '4', '1,2');
INSERT INTO `restaurant_cities` VALUES ('52', '6', '4', '1,2');
INSERT INTO `restaurant_cities` VALUES ('53', '7', '4', '1,2');
INSERT INTO `restaurant_cities` VALUES ('54', '8', '4', '1,2');
INSERT INTO `restaurant_cities` VALUES ('55', '9', '4', '1,2');
INSERT INTO `restaurant_cities` VALUES ('59', '13', '4', '1,2');
INSERT INTO `restaurant_cities` VALUES ('60', '1', '5', '1,2');
INSERT INTO `restaurant_cities` VALUES ('61', '2', '5', '1,2');
INSERT INTO `restaurant_cities` VALUES ('62', '3', '5', '1,2');
INSERT INTO `restaurant_cities` VALUES ('63', '4', '5', '1,2');
INSERT INTO `restaurant_cities` VALUES ('64', '5', '5', '1,2');
INSERT INTO `restaurant_cities` VALUES ('65', '6', '5', '1,2');
INSERT INTO `restaurant_cities` VALUES ('66', '7', '5', '1,2');
INSERT INTO `restaurant_cities` VALUES ('67', '8', '5', '1,2');
INSERT INTO `restaurant_cities` VALUES ('68', '9', '5', '1,2');
INSERT INTO `restaurant_cities` VALUES ('69', '10', '5', '1,2');
INSERT INTO `restaurant_cities` VALUES ('70', '11', '5', '1,2');
INSERT INTO `restaurant_cities` VALUES ('73', '1', '6', '1,2');
INSERT INTO `restaurant_cities` VALUES ('74', '2', '6', '1,2');
INSERT INTO `restaurant_cities` VALUES ('75', '3', '6', '1,2');
INSERT INTO `restaurant_cities` VALUES ('76', '4', '6', '1,2');
INSERT INTO `restaurant_cities` VALUES ('77', '5', '6', '1,2');
INSERT INTO `restaurant_cities` VALUES ('78', '6', '6', '1,2');
INSERT INTO `restaurant_cities` VALUES ('79', '7', '6', '1,2');
INSERT INTO `restaurant_cities` VALUES ('80', '8', '6', '1,2');
INSERT INTO `restaurant_cities` VALUES ('85', '13', '6', '1,2');
INSERT INTO `restaurant_cities` VALUES ('86', '1', '7', '1,2');
INSERT INTO `restaurant_cities` VALUES ('87', '2', '7', '1,2');
INSERT INTO `restaurant_cities` VALUES ('88', '3', '7', '1,2');
INSERT INTO `restaurant_cities` VALUES ('89', '4', '7', '1,2');
INSERT INTO `restaurant_cities` VALUES ('90', '5', '7', '1,2');
INSERT INTO `restaurant_cities` VALUES ('91', '6', '7', '1,2');
INSERT INTO `restaurant_cities` VALUES ('94', '9', '7', '1,2');
INSERT INTO `restaurant_cities` VALUES ('95', '10', '7', '1,2');
INSERT INTO `restaurant_cities` VALUES ('99', '1', '8', '1,2');
INSERT INTO `restaurant_cities` VALUES ('100', '2', '8', '1,2');
INSERT INTO `restaurant_cities` VALUES ('101', '3', '8', '1,2');
INSERT INTO `restaurant_cities` VALUES ('102', '4', '8', '1,2');
INSERT INTO `restaurant_cities` VALUES ('103', '5', '8', '1,2');
INSERT INTO `restaurant_cities` VALUES ('104', '6', '8', '1,2');
INSERT INTO `restaurant_cities` VALUES ('105', '7', '8', '1,2');
INSERT INTO `restaurant_cities` VALUES ('106', '8', '8', '1,2');
INSERT INTO `restaurant_cities` VALUES ('107', '9', '8', '1,2');
INSERT INTO `restaurant_cities` VALUES ('108', '10', '8', '1,2');
INSERT INTO `restaurant_cities` VALUES ('109', '11', '8', '1,2');
INSERT INTO `restaurant_cities` VALUES ('110', '12', '8', '1,2');
INSERT INTO `restaurant_cities` VALUES ('112', '1', '9', '1,2');
INSERT INTO `restaurant_cities` VALUES ('113', '2', '9', '1,2');
INSERT INTO `restaurant_cities` VALUES ('114', '3', '9', '1,2');
INSERT INTO `restaurant_cities` VALUES ('115', '4', '9', '1,2');
INSERT INTO `restaurant_cities` VALUES ('116', '5', '9', '1,2');
INSERT INTO `restaurant_cities` VALUES ('120', '9', '9', '1,2');
INSERT INTO `restaurant_cities` VALUES ('121', '10', '9', '1,2');
INSERT INTO `restaurant_cities` VALUES ('122', '11', '9', '1,2');
INSERT INTO `restaurant_cities` VALUES ('123', '12', '9', '1,2');
INSERT INTO `restaurant_cities` VALUES ('124', '13', '9', '1,2');
INSERT INTO `restaurant_cities` VALUES ('125', '1', '10', '1,2');
INSERT INTO `restaurant_cities` VALUES ('126', '2', '10', '1,2');
INSERT INTO `restaurant_cities` VALUES ('127', '3', '10', '1,2');
INSERT INTO `restaurant_cities` VALUES ('128', '4', '10', '1,2');
INSERT INTO `restaurant_cities` VALUES ('129', '5', '10', '1,2');
INSERT INTO `restaurant_cities` VALUES ('130', '6', '10', '1,2');
INSERT INTO `restaurant_cities` VALUES ('131', '7', '10', '1,2');
INSERT INTO `restaurant_cities` VALUES ('132', '8', '10', '1,2');
INSERT INTO `restaurant_cities` VALUES ('133', '9', '10', '1,2');
INSERT INTO `restaurant_cities` VALUES ('136', '12', '10', '1,2');
INSERT INTO `restaurant_cities` VALUES ('137', '13', '10', '1,2');

-- ----------------------------
-- Table structure for restaurant_products
-- ----------------------------
DROP TABLE IF EXISTS `restaurant_products`;
CREATE TABLE `restaurant_products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rest_id` int(11) NOT NULL,
  `cat_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` varchar(65) DEFAULT '',
  `text` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=461 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of restaurant_products
-- ----------------------------
INSERT INTO `restaurant_products` VALUES ('1', '1', '1', 'Home Menu', '60', 'Home Menu este compus din 2 meniuri medii Big Mac, 1 meniu mediu McChicken, 1 Cheeseburger, 1 McPuișor și 3 plăcinte de vișine.', 'prod0', null);
INSERT INTO `restaurant_products` VALUES ('2', '1', '1', 'MAXI SUPREME CHICKEN TENDERS', '22.8', 'Bucăți gustoase din piept de pui fraged,cu un învelis auriu și bine asezonat,făcute din pui 100% românesc', 'prod1', null);
INSERT INTO `restaurant_products` VALUES ('3', '1', '1', 'MENIU MARE CHICKEN MCNUGGETS 9 BUCATI', '22.8', 'Bucăți gustoase din piept de pui fraged,cu un învelis auriu și bine asezonat,făcute din pui 100% românesc', 'prod2', null);
INSERT INTO `restaurant_products` VALUES ('4', '1', '1', 'Meniu Maxi Big Mac', '21.2', 'Meniul contine un sandvis BigMac, o portie mare de cartofi si, la alegere, o bautura racoritoare, apa sau cafea.', 'prod3', null);
INSERT INTO `restaurant_products` VALUES ('5', '1', '1', 'MENIU FRESH DELUXE MARE', '24.4', '', 'prod4', null);
INSERT INTO `restaurant_products` VALUES ('7', '1', '1', 'Meniu Maxi Chicken Grill', '24.4', 'Meniul contine un sandvis Chicken Grill, o portie mare de cartofi si, la alegere, o bautura racoritoare, apa sau cafea.', 'prod5', null);
INSERT INTO `restaurant_products` VALUES ('8', '1', '1', 'Meniu Maxi Big Tasty', '25.4', 'Meniul contine un sandvis Big Tasty, o portie mare de cartofi si, la alegere, o bautura racoritoare, apa sau cafea.', 'prod6', null);
INSERT INTO `restaurant_products` VALUES ('9', '1', '1', 'Meniu Maxi Sandvis cu porc si sos de hrean', '21.2', 'Meniul contine un sandvis cu porc si sos de hrean, o portie mare de cartofi si, la alegere, o bautura, apa sau cafea.', 'prod7', null);
INSERT INTO `restaurant_products` VALUES ('10', '1', '2', 'Fresh Deluxe', '13.4', 'Carne vita tocata, sos McChicken, ceapa alba proaspata, castraveti proaspeti, rosii si branza Cheddar', 'prod8', null);
INSERT INTO `restaurant_products` VALUES ('11', '1', '2', 'Chicken Grill', '13.4', 'Piept de pui, salata Eisberg, rosie, ceapa alba, sos de mustar cu miere, chifla delicioasa cu seminte de susan.', 'prod9', null);
INSERT INTO `restaurant_products` VALUES ('12', '1', '2', 'Big Tasty', '17.9', 'Carne de vita, sos Big Tasty si 3 felii de branza Emmentaler, salata, rosie, ceapa, chifla Big Tasty cu susan.', 'prod10', null);
INSERT INTO `restaurant_products` VALUES ('13', '1', '2', 'Big Mac', '10.6', '2 x carne vita tocata, sos Big Mac si branza Cheddar, salata, ceapa, felii de castraveti murati, chifla Big Mac cu susan.', 'prod11', null);
INSERT INTO `restaurant_products` VALUES ('14', '1', '2', 'McChicken', '10.6', 'Piept de pui dezosat, pesmet, prajita timp de 3 minute in ulei vegetal, salata verde, sos McChicken, chifla cu susan.', 'prod12', null);
INSERT INTO `restaurant_products` VALUES ('15', '1', '2', 'Dublu Cheeseburger', '9.7', '2 x carne vita, 2 x felii de branza Cheddar, sos, castraveti, ceapa, chifla proaspata caramelizata', 'prod13', null);
INSERT INTO `restaurant_products` VALUES ('16', '1', '3', 'Salata Caesar', '15.9', 'Salata Premium Mix cu piept de pui, branza, ardei gras, rosii cherry, crutoane, sos inclus.', 'prod14', null);
INSERT INTO `restaurant_products` VALUES ('17', '1', '3', 'SALATA CAESAR GRILL CHICKEN', '15.9', 'Salată Premium Mix (salată Iceberg, Romain, Radicchio, Frisee, Morcov)', 'prod15', null);
INSERT INTO `restaurant_products` VALUES ('18', '1', '3', 'Felii de Mar', '3.9', '', 'prod16', null);
INSERT INTO `restaurant_products` VALUES ('19', '1', '4', 'Chocolate Fudge', '6', 'Prajitura cu glazura de ciocolata - 116g', 'prod17', null);
INSERT INTO `restaurant_products` VALUES ('20', '1', '4', 'Choco&Cherry Cake', '12', 'Prăjitură cu cireșe și vișine și fulgi crocanți de ciocolată', 'prod18', null);
INSERT INTO `restaurant_products` VALUES ('21', '1', '4', 'Butter Croissant', '3.5', 'Un croissant cu unt care să-ţi completeze cafeaua de la mic-dejun.', 'prod19', null);
INSERT INTO `restaurant_products` VALUES ('22', '1', '4', 'Cocoa Croissant', '4.9', 'Croissant cu cremă delicioasă de cacao şi alune de pădure pentru pauza ta dulce.', 'prod20', null);
INSERT INTO `restaurant_products` VALUES ('23', '1', '4', 'Espresso', '5.5', 'Cafea boabe, proaspăt măcinată - 30ml.', 'prod21', null);
INSERT INTO `restaurant_products` VALUES ('24', '1', '4', 'Ciocolata calda cu lapte', '10', 'Cacao, lapte fierbinte.', 'prod22', null);
INSERT INTO `restaurant_products` VALUES ('25', '1', '4', 'Espresso Macchiato', '6.5', 'Espresso cu spuma fina de lapte - 30 ml', 'prod23', null);
INSERT INTO `restaurant_products` VALUES ('26', '1', '4', 'Latte Macchiato Grande', '11', 'Lapte, espresso si spuma fina de lapte - 440 ml', 'prod24', null);
INSERT INTO `restaurant_products` VALUES ('27', '1', '5', 'Cartofi prajiți Twister', '7.8', '', 'prod25', null);
INSERT INTO `restaurant_products` VALUES ('28', '1', '5', 'Cartofi prajiți porție mica', '4.2', 'Cartofi preparaţi în ulei vegetal, săraţi manual înainte de a fi serviţi.', 'prod27', null);
INSERT INTO `restaurant_products` VALUES ('29', '1', '5', 'Cartofi prajiți porție medie', '6.3', 'Cartofi preparaţi în ulei vegetal, săraţi manual înainte de a fi serviţi.', 'prod26', null);
INSERT INTO `restaurant_products` VALUES ('30', '1', '5', 'Cartofi prajiți porție mare', '7.8', 'Cartofi preparaţi în ulei vegetal, săraţi manual înainte de a fi serviţi.', 'prod28', null);
INSERT INTO `restaurant_products` VALUES ('31', '1', '5', 'Sos usturoi', '2.5', '', 'prod29', null);
INSERT INTO `restaurant_products` VALUES ('32', '1', '5', 'Ketchup', '2.5', '', 'prod30', null);
INSERT INTO `restaurant_products` VALUES ('33', '1', '6', 'Placinta mere', '5.9', 'Un desert fierbinte şi deosebit cu mere, învelit într-o crustă de foietaj.', 'prod31', null);
INSERT INTO `restaurant_products` VALUES ('34', '1', '6', 'Placinta vișine', '5.9', 'Un desert fierbinte şi deosebit cu vişine, învelit într-o crustă de foietaj.', 'prod32', null);
INSERT INTO `restaurant_products` VALUES ('35', '1', '6', 'CHEESECAKE BITES', '9.9', 'Alege un desert care te va face să zâmbești! Triunghiuri de brânză dulce învelite într-un strat crocant de biscuiți, numai bune pentru momentul dulce al zilei.', 'prod33', null);
INSERT INTO `restaurant_products` VALUES ('36', '1', '7', 'Coca-Cola', '6.6', '', 'prod34', null);
INSERT INTO `restaurant_products` VALUES ('37', '1', '7', 'Coca-Cola Zero', '6.6', '', 'prod35', null);
INSERT INTO `restaurant_products` VALUES ('38', '1', '7', 'Fanta', '6.6', '', 'prod36', null);
INSERT INTO `restaurant_products` VALUES ('39', '1', '7', 'Sprite', '6.6', '', 'prod37', null);
INSERT INTO `restaurant_products` VALUES ('40', '1', '8', 'Shake Ciocolata', '6.3', 'Shake cu sirop cu aroma cu ciocolata si o textura usoara.', 'prod38', null);
INSERT INTO `restaurant_products` VALUES ('41', '1', '8', 'Shake Vanilie', '6.3', 'Shake cu sirop cu aroma de vanilie si o textura usoara.', 'prod39', null);
INSERT INTO `restaurant_products` VALUES ('42', '1', '8', 'Shake Capsuni', '6.3', 'Shake cu sirop cu aroma de capsuni si o textura usoara.', 'prod40', null);
INSERT INTO `restaurant_products` VALUES ('43', '2', '18', 'Domino`s Special', '27', 'Sos de pizza și mozzarella 100% naturală, șuncă, bacon, ciuperci, ardei verde și ceapă', 'prod0', null);
INSERT INTO `restaurant_products` VALUES ('44', '2', '17', 'Quattro Stagioni', '27', 'Sos de pizza și mozzarella 100% naturală, șuncă, bacon, chorizo, ardei verde și ciuperci', 'prod1', null);
INSERT INTO `restaurant_products` VALUES ('45', '2', '1', 'Cheddar Melt', '27', 'Sos de pizza și mozzarella 100% naturală, cheddar, extra cheddar, ciuperci și bacon', 'prod2', null);
INSERT INTO `restaurant_products` VALUES ('46', '2', '1', 'Margherita', '17', 'Sos de pizza și mozzarella 100% naturală', 'prod3', null);
INSERT INTO `restaurant_products` VALUES ('47', '2', '17', 'Domino`s Classic', '23', 'Sos de pizza și mozzarella 100% naturală, șuncă, măsline și ciuperci', 'prod4', null);
INSERT INTO `restaurant_products` VALUES ('48', '2', '17', 'Spicy Hawaiiană', '23', 'Sos de pizza și mozzarella 100% naturală, ananas, șuncă și jalapeno', 'prod5', null);
INSERT INTO `restaurant_products` VALUES ('49', '2', '18', 'Carbonara', '29', 'Sos cremos vegetal, mozzarella 100% naturală, blue cheese, extra blue cheese, bacon și parmezan', 'prod6', null);
INSERT INTO `restaurant_products` VALUES ('50', '2', '18', 'Fresh Pizza', '29', 'Sos cremos vegetal, mozzarella 100% naturală, pui, porumb, frunze de spanac, brânză cheddar, roșii și busuioc', 'prod7', null);
INSERT INTO `restaurant_products` VALUES ('365', '3', '15', 'Pizza Carnivor', '23.75', 'Pizza de bază, șuncă, bacon, pepperoni', 'prod0', null);
INSERT INTO `restaurant_products` VALUES ('366', '3', '15', 'Pizza Clasic', '23.75', 'Pizza de bază, șuncă ciuperci, măsline', 'prod1', null);
INSERT INTO `restaurant_products` VALUES ('367', '3', '16', 'Paste Carbonara', '25.75', 'Penne, sos bechamel cu nucșoară, bacon rumenit, parmezan, piper', 'prod2', null);
INSERT INTO `restaurant_products` VALUES ('368', '3', '15', 'Pizza All Cheese', '21.75', 'Pizza de bază, cheddar, telemea, oregano', 'prod3', null);
INSERT INTO `restaurant_products` VALUES ('370', '3', '15', 'Pizza Aloha', '26.75', 'Pizza de bază, șuncă, ananas, porumb, ceapă', 'prod5', null);
INSERT INTO `restaurant_products` VALUES ('371', '3', '16', 'Paste Bolognese', '25.75', 'Penne, roșii pulpă, vită, ulei de măsline, busuioc, usturoi proaspăt, ceapă', 'prod6', null);
INSERT INTO `restaurant_products` VALUES ('372', '3', '16', 'Paste Quattro formaggi', '25.75', 'Penne, sos bechamel cu nucșoară, blue cheese, mozzarella, parmezan, gorgonzola', 'prod7', null);
INSERT INTO `restaurant_products` VALUES ('373', '4', '26', 'Penne Deliciosa', '31', 'Paste, sos Napoli, roșii proaspete, busuioc, carne de vită, ciuperci, parmezan', 'prod6', null);
INSERT INTO `restaurant_products` VALUES ('374', '4', '25', 'Pizza Diavollo', '40', 'Sos roșii, mozzarella, salam chorizo, peperoncino', 'prod2', null);
INSERT INTO `restaurant_products` VALUES ('375', '4', '25', 'Pizza Mexicana', '39', 'Sos roșii, mozzarella, chorizo, ardei gras, porumb, roșii proaspete, chili, ceapă', 'prod5', null);
INSERT INTO `restaurant_products` VALUES ('376', '4', '25', 'Pizza Prosciutto', '35', 'Sos roșii, mozzarella, șuncă', 'prod3', null);
INSERT INTO `restaurant_products` VALUES ('377', '4', '25', 'Pizza Prosciutto e Funghi', '37', 'Sos roșii, mozzarella, șuncă, ciuperci', 'prod0', null);
INSERT INTO `restaurant_products` VALUES ('378', '4', '25', 'Pizza Quattro Stagioni', '39', 'Sos roșii, mozzarella, șuncă, ciuperci, cârnăciori, măsline', 'prod1', null);
INSERT INTO `restaurant_products` VALUES ('379', '4', '25', 'Pizza Rhodos', '37', '', 'prod4', null);
INSERT INTO `restaurant_products` VALUES ('380', '4', '26', 'Spaghetti Carbonara', '34', 'Paste, bacon, smântână, ou, parmezan, ulei de măsline', 'prod7', null);
INSERT INTO `restaurant_products` VALUES ('381', '5', '21', 'SUB pui teriyaki', '16.1', 'Pui teriyaki și legume după cum dorești (6 grame de grăsime sau chiar mai puțin)', 'prod0', null);
INSERT INTO `restaurant_products` VALUES ('382', '5', '21', 'Wrap pui teriyaki', '16.1', 'Pui teriyaki și legume după cum dorești (6 grame de grăsime sau chiar mai puțin)', 'prod1', null);
INSERT INTO `restaurant_products` VALUES ('383', '5', '22', 'SUB vită și brânză', '17.1', '', 'prod2', null);
INSERT INTO `restaurant_products` VALUES ('384', '5', '21', 'SUB bucăți de pui', '13.9', 'Piept de pui la grătar și legume după cum dorești (6 grame de grăsime sau chiar mai puțin)', 'prod3', null);
INSERT INTO `restaurant_products` VALUES ('385', '5', '21', 'SUB pui bbq', '15.4', '', 'prod4', null);
INSERT INTO `restaurant_products` VALUES ('386', '5', '21', 'Salată cu pui bbq', '20.4', '', 'prod5', null);
INSERT INTO `restaurant_products` VALUES ('387', '5', '22', 'SUB big beef melt', '13.5', 'Vită și legume după cum dorești', 'prod6', null);
INSERT INTO `restaurant_products` VALUES ('388', '5', '22', 'SUB vită și brânză', '17.1', '', 'prod7', null);
INSERT INTO `restaurant_products` VALUES ('397', '6', '31', 'Meniu Quesadilla', '25', 'Quesadilla 200g, o porție mare de cartofi prăjiți 130g/Nachos 75g, o băutură (răcoritoare/apă 500ml)', 'prod0', null);
INSERT INTO `restaurant_products` VALUES ('398', '6', '31', 'Box Quesadilla', '28', 'Quesadilla 200g, un taco (Crunchy 200g/Soft 150g), o porție mare de cartofi prăjiți (100g)/Nachos (75g), o răcoritoare/apă 0,5L', 'prod1', null);
INSERT INTO `restaurant_products` VALUES ('399', '6', '31', 'Meniu Cheesy Bacon Fries Burrito', '30.5', 'Cheesy Bacon Fries Burrito 220g, o porție mare de cartofi prăjiți 130g/Nachos 75g, o băutură (răcoritoare/apă 500ml)', 'prod2', null);
INSERT INTO `restaurant_products` VALUES ('400', '6', '31', 'Meniu Fajita Burrito', '27', 'Fajita Burrito 210g, o porție mare de cartofi prăjiți 130g/Nachos 75g, o băutură (răcoritoare/apă 500ml)', 'prod3', '2022-01-26 22:11:30');
INSERT INTO `restaurant_products` VALUES ('401', '6', '32', 'Meniu Crunchwrap Supreme', '30', 'Crunchwrap Supreme 230g, o porție mare de cartofi prăjiți 130g/Nachos 75g, o băutură (răcoritoare/apă 500ml)', 'prod4', null);
INSERT INTO `restaurant_products` VALUES ('402', '6', '32', 'Meniu 2 Chalupas', '31.5', '2 Chalupas Supreme 280g, o porție mare de cartofi prăjiți 130g/Nachos 75g, o băutură (răcoritoare/apă 500ml)', 'prod5', null);
INSERT INTO `restaurant_products` VALUES ('403', '6', '32', 'Yummy Fries', '21.5', 'Cartofi prăjiți, carne (la alegere), sos Nacho Cheese, Pico de Gallo, smântână - 400g', 'prod6', null);
INSERT INTO `restaurant_products` VALUES ('404', '6', '32', 'Nachos Supreme', '19', 'Nachos, Guacamole, sos Nacho Cheese, Pico de Gallo, smântână - 250g', 'prod7', '2022-01-26 22:11:13');
INSERT INTO `restaurant_products` VALUES ('405', '7', '9', 'Salată Green Box', '28.99', 'Pui, salată verde, măr, țelină, morcov, porumb, ananas, brânză tip feta, dressing - 420g', 'prod0', null);
INSERT INTO `restaurant_products` VALUES ('406', '7', '9', 'Salată Caesar', '28.99', 'Pui, salată verde, ou, castravete verde, mozzarella, crutoane, dressing - 420g', 'prod1', null);
INSERT INTO `restaurant_products` VALUES ('407', '7', '10', 'Salată 5 ingrediente fără carne', '26.99', '', 'prod2', null);
INSERT INTO `restaurant_products` VALUES ('408', '7', '9', 'Salată Tuna', '28.49', 'Ton, salată verde, ceapă roșie, porumb, morcov, măsline negre, lămâie, dressing - 420g', 'prod3', null);
INSERT INTO `restaurant_products` VALUES ('409', '7', '9', 'Salată Dakota ciuperci crude', '29.99', 'Vită, salată verde, castravete, ciuperci crude, ardei copt, ananas, brânză tip feta - 420g', 'prod4', null);
INSERT INTO `restaurant_products` VALUES ('410', '7', '10', 'Salată Athena', '25.49', 'Salată verde, castravete, măsline negre, ceapă roșie, roșii, brânză tip feta, dressing - 420g', 'prod5', null);
INSERT INTO `restaurant_products` VALUES ('411', '7', '10', 'Salată 5 ingrediente cu somon', '30.99', '', 'prod6', null);
INSERT INTO `restaurant_products` VALUES ('412', '7', '10', 'Salată 5 ingrediente cu vită', '30.99', '', 'prod7', null);
INSERT INTO `restaurant_products` VALUES ('413', '8', '12', 'Pachețele de primăvară', '7.99', 'Făină, varză, morcov, ciuperci, fasole verde, păstăi fasole, proteine din soia, sare, ceapă, ghimbir, usturoi, zahăr, ulei vegetal, ulei de palmier (din produs congelat)', 'prod0', null);
INSERT INTO `restaurant_products` VALUES ('414', '8', '12', 'Pui Shanghai', '10.39', 'Piept de pui, făină, sare, piper, amidon, ulei de floarea soarelui, condimente chinezeșt', 'prod1', null);
INSERT INTO `restaurant_products` VALUES ('415', '8', '11', 'Noodles pui', '11.99', 'Paste de orez, pui, ouă, legume, ceapă verde, sare, amidon, sos soia, ulei de floarea soarelui, condimente chinezești', 'prod2', null);
INSERT INTO `restaurant_products` VALUES ('416', '8', '11', 'Noodles legume', '11.19', 'Paste de orez, ciuperci, legume chinezești, sare, sos de soia, ulei floarea soarelui, condimente chinezești', 'prod3', null);
INSERT INTO `restaurant_products` VALUES ('417', '8', '11', 'Noodles curry', '15.19', 'Paste de orez, legume, ulei, condimente chinezești - 300g', 'prod4', null);
INSERT INTO `restaurant_products` VALUES ('418', '8', '11', 'Noodles picant', '16.79', 'Noodles picant de pui, ouă, ceapă, morcov, varză, urechi de lemn, pastă de ardei iute, sare, condimente chinezești - 300g', 'prod5', null);
INSERT INTO `restaurant_products` VALUES ('419', '8', '12', 'Pui crocant', '14.39', 'Piept de pui, ouă, pesmet, făină, lămâie, condimente chinezești - 200g', 'prod6', null);
INSERT INTO `restaurant_products` VALUES ('420', '8', '12', 'Mix aperitive', '18.39', '3xPachetele de primăvar, 3xcreveti in cuib de cartof, 3x creveți torpedo, 3xpui shanghai. Realizate din produse congelate.', 'prod7', null);
INSERT INTO `restaurant_products` VALUES ('421', '9', '29', 'Dil kebab de pui', '23.99', 'Sosuri făcute în casă, carne marinată, cartofi cubulețe, castraveciori murați, mix de legume prăjite, cașcaval, toate puse într-o lipie proaspăt coaptă și introduse la grill, pentru a da naștere faimosului dil prin gustul unic de cașcaval topit', 'prod0', null);
INSERT INTO `restaurant_products` VALUES ('422', '9', '29', 'Dil kebab de vită și curcan', '25.99', 'Sosuri făcute în casă, carne marinată, cartofi cubulețe, castraveciori murați, mix de legume prăjite, cașcaval, toate puse într-o lipie proaspăt coaptă și introduse la grill, pentru a da naștere faimosului maxi dil prin gustul unic de cașcaval topit', 'prod1', null);
INSERT INTO `restaurant_products` VALUES ('423', '9', '29', 'Veggie dil kebab', '19.99', 'Sosuri făcute în casă, cartofi cubulețe, castraveciori murați, mix de legume prăjite, cașcaval, toate puse într-o lipie proaspăt coaptă și introduse la grill, pentru a da naștere faimosului veggie dil prin gustul unic de cașcaval topit', 'prod2', null);
INSERT INTO `restaurant_products` VALUES ('424', '9', '30', 'Kebab clasic de pui cu salate în lipie', '31.99', 'Lipie și sosuri făcute în casă, carne marinată și 7 tipuri de salate proaspete la alegere pentru a îți face kebabul gusturilor tale', 'prod3', null);
INSERT INTO `restaurant_products` VALUES ('425', '9', '30', 'Kebab clasic de vită și curcan cu salate la farfurie', '44.99', 'Lipie și sosuri făcute în casă, carne marinată și 7 tipuri de salate proaspete la alegere pentru a îți face kebabul gusturilor tale', 'prod4', null);
INSERT INTO `restaurant_products` VALUES ('426', '9', '30', 'Kebab de pui cu hummus și salate la farfurie', '37.99', 'Specialitate cu hummus derivată din kebabul clasic. Lipie și sosuri făcute in casă, hummus proaspat, carne marinată și 8 tipuri de salate fresh la alegere pentru a îți face kebabul gusturilor tale - 560g', 'prod5', null);
INSERT INTO `restaurant_products` VALUES ('427', '9', '30', 'Kebab clasic de pui cu salate în lipie', '31.99', 'Lipie și sosuri făcute în casă, carne marinată și 7 tipuri de salate proaspete la alegere pentru a îți face kebabul gusturilor tale', 'prod6', null);
INSERT INTO `restaurant_products` VALUES ('428', '9', '30', 'Kebab clasic de vită și curcan cu salate la farfurie', '44.99', 'Lipie și sosuri făcute în casă, carne marinată și 7 tipuri de salate proaspete la alegere pentru a îți face kebabul gusturilor tale', 'prod7', null);
INSERT INTO `restaurant_products` VALUES ('429', '10', '24', 'Meniu 8 Crispy Strips®', '38.5', '8 Crispy Strips® 240 g, o porție mare de cartofi prăjiți 120 g, o băutură 0.5 L (răcoritoare / apă) și un sos la alegere', 'prod0', '2022-01-26 22:21:07');
INSERT INTO `restaurant_products` VALUES ('430', '10', '24', 'Smart Menu Extra', '24.5', '2 Crispy Strips® 60g, 3 Hot Wings® 60g, o porție medie de cartofi prăjiți 90g, o băutură 0.4 L, sos la alegere', 'prod1', '2022-01-26 22:21:14');
INSERT INTO `restaurant_products` VALUES ('431', '10', '24', 'Meniu 5 Crispy Strips®', '33', '5 Crispy Strips® 150 g, o porție mare de cartofi prăjiți 120 g, o băutură 0.5 L (răcoritoare / apă) și un sos la alegere', 'prod2', '2022-01-26 22:21:19');
INSERT INTO `restaurant_products` VALUES ('432', '10', '23', 'American Bucket', '53.5', '11 Crispy Strips® 330 g, 11 Hot Wings® 220 g', 'prod3', '2022-01-26 22:21:23');
INSERT INTO `restaurant_products` VALUES ('433', '10', '23', 'Variety Bucket', '53.5', '4 copane de pui Kentucky® 240 g, 6 Crispy Strips® 180 g, 6 Hot Wings® 120 g', 'prod4', '2022-01-26 22:21:27');
INSERT INTO `restaurant_products` VALUES ('434', '10', '23', 'X Bucket', '50', '10 Fillet Bites® 175 g, 10 Hot Wings® 200 g, 2 copane Kentucky® 120 g', 'prod5', '2022-01-26 22:21:31');
INSERT INTO `restaurant_products` VALUES ('435', '10', '24', 'Twister® Box Classic', '33', '1 Twister® Classic 185g, 5 Hot Wings® 100g, o porție mare de cartofi prăjiți 120g, o băutură 0.5L (răcoritoare/apă)', 'prod6', '2022-01-26 22:21:38');
INSERT INTO `restaurant_products` VALUES ('436', '10', '24', 'Box For One', '31', '4 Hot Wings® 80 g, 3 Crispy Strips® 90 g, o porție mare de cartofi prăjiți 120 g, o băutură 0.5 L (răcoritoare / apă)', 'prod7', '2022-01-26 22:21:43');
INSERT INTO `restaurant_products` VALUES ('437', '11', '19', 'Adana kebab de vită la farfurie', '30.99', 'Adana din carne tocată de vită cu garnitură de orez sau cartofi prăjiți, salate la alegere și sosuri - 550g', 'prod0', null);
INSERT INTO `restaurant_products` VALUES ('438', '11', '19', 'Chiftele turcești la farfurie', '26.99', 'Chiftele din carne tocată de vită, cu bulgur sau cartofi prăjiți, salate la alegere şi sosuri - 550g', 'prod1', null);
INSERT INTO `restaurant_products` VALUES ('439', '11', '20', 'Doner box de pui', '29.99', 'Shaorma din carne de pui, cu cartofi prăjiți, salate la alegere și sosuri - 400g', 'prod2', null);
INSERT INTO `restaurant_products` VALUES ('440', '11', '20', 'Cheesy adana roll vită', '19.99', 'Adana din carne tocată de vită în lipie cu salată turcească, sos iskender, mozzarella, cheddar. Produs cu rețetă standard - 220g', 'prod3', null);
INSERT INTO `restaurant_products` VALUES ('441', '11', '19', 'Piept de pui la grătar', '29.99', 'Piept de pui cu garnitură de orez sau cartofi prăjiți, salate la alegere și sosuri - 550g', 'prod4', null);
INSERT INTO `restaurant_products` VALUES ('442', '11', '19', 'Frigărui de pui', '29.99', 'Frigărui de pui cu garnitură de orez sau cartofi prăjiți, salate la alegere și sosuri - 550g', 'prod5', null);
INSERT INTO `restaurant_products` VALUES ('443', '11', '20', 'Shaorma în lipie mică de pui', '23.99', 'Shaorma din carne de pui în lipie mică, cartofi prăjiți, salate la alegere și sosuri - 350g', 'prod6', null);
INSERT INTO `restaurant_products` VALUES ('444', '11', '20', 'Shaorma la farfurie de pui', '31.99', 'Shaorma din carne de pui la farfurie, cartofi prăjiți, salate la alegere și sosuri - 550g', 'prod7', null);
INSERT INTO `restaurant_products` VALUES ('445', '12', '27', 'King Menu', '29', 'Încearcă noul meniu King Menu! Bucură-te de un burger Big King, 6buc. Chili Cheese Nuggets, o porție medie de cartofi prăjiți și Pepsi (330ml). Meniu disponibil doar pe Food Delivery.', 'prod0', null);
INSERT INTO `restaurant_products` VALUES ('446', '12', '27', 'Combo-ul zilei', '6.9', 'Încearcă un combo perfect cu pui: Chicken Burger, cartofi prăjiți porție mică!', 'prod1', null);
INSERT INTO `restaurant_products` VALUES ('447', '12', '27', 'Crispy Chicken', '10.9', 'Piept de pui pane, roșie și salată proaspătă. Totul asezonat cu maioneză', 'prod2', null);
INSERT INTO `restaurant_products` VALUES ('448', '12', '27', 'Meniu Family', '59', 'Încearcă noul meniu Family: whopper, big King, crispy chicken, cartofi prăjiți XXL, chilli cheese nuggets (6buc.), Pepsi (3x330ml)', 'prod3', null);
INSERT INTO `restaurant_products` VALUES ('449', '12', '27', 'Meniu Bacon King', '29.9', 'Încearcă noul Meniu Bacon King!', 'prod4', null);
INSERT INTO `restaurant_products` VALUES ('450', '12', '27', 'Meniu Plant-Based 6 Nuggets', '22.9', 'Încearcă noul Meniu Plant-Based 6 Nuggets! 0% carne, 100% gust!', 'prod5', null);
INSERT INTO `restaurant_products` VALUES ('451', '12', '28', 'Bacon & Cheese Fries', '9.9', 'Încearcă noii cartofi prajiti BK - Bacon & Cheese Fries', 'prod6', null);
INSERT INTO `restaurant_products` VALUES ('452', '12', '28', 'Meniu Dublu Bacon & Cheese Whopper', '34.5', 'Imaginați-vă un burger clasic de vită 100% la grătar, roșii suculente, ceapă proaspătă și castraveți murați. Totul asezonat cu maioneză și ketchup. Meniul include o porție medie de cartofi prăjiți și o răcoritoare la alegere (330ml)', 'prod7', null);
INSERT INTO `restaurant_products` VALUES ('453', '13', '37', 'Cartofi prăjiți', '12', 'Produs congelat', 'prod0', '2022-01-26 22:33:20');
INSERT INTO `restaurant_products` VALUES ('454', '13', '38', 'Kebab farfurie pui mare', '41', null, 'prod1', '2022-01-26 22:33:39');
INSERT INTO `restaurant_products` VALUES ('455', '13', '38', 'Kebab farfurie pui mică', '37', null, 'prod2', '2022-01-26 22:33:44');
INSERT INTO `restaurant_products` VALUES ('456', '13', '38', 'Kebab farfurie amestec', '45', null, 'prod3', '2022-01-26 22:33:49');
INSERT INTO `restaurant_products` VALUES ('457', '13', '13', 'Lipie pui', '30', '', 'prod4', null);
INSERT INTO `restaurant_products` VALUES ('458', '13', '13', 'Lipie vită', '37', '', 'prod5', null);
INSERT INTO `restaurant_products` VALUES ('459', '13', '13', 'Lipie amestec', '33', '', 'prod6', null);
INSERT INTO `restaurant_products` VALUES ('460', '13', '14', 'Baghetă pui', '25', '', 'prod7', null);

-- ----------------------------
-- Table structure for reviews
-- ----------------------------
DROP TABLE IF EXISTS `reviews`;
CREATE TABLE `reviews` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rest_id` int(11) NOT NULL,
  `star` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT '',
  `text` longtext DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `restaurant_id` (`rest_id`),
  KEY `user_id` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=135 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of reviews
-- ----------------------------
INSERT INTO `reviews` VALUES ('1', '1', '5', 'Andrei', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus et ultrices nunc, eu mollis velit. Maecenas quis ullamcorper neque. Etiam quis luctus lectus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla massa diam, rutrum ut lacinia non, facilisis sed tortor. Vestibulum finibus, libero in rutrum sollicitudin, mauris.');
INSERT INTO `reviews` VALUES ('2', '1', '5', 'Vasile', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus et ultrices nunc, eu mollis velit. Maecenas quis ullamcorper neque. Etiam quis luctus lectus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla massa diam, rutrum ut lacinia non, facilisis sed tortor. Vestibulum finibus, libero in rutrum sollicitudin, mauris.');
INSERT INTO `reviews` VALUES ('3', '1', '5', 'Adrian', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus et ultrices nunc, eu mollis velit. Maecenas quis ullamcorper neque. Etiam quis luctus lectus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla massa diam, rutrum ut lacinia non, facilisis sed tortor. Vestibulum finibus, libero in rutrum sollicitudin, mauris.');
INSERT INTO `reviews` VALUES ('4', '1', '4', 'Marius', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus et ultrices nunc, eu mollis velit. Maecenas quis ullamcorper neque. Etiam quis luctus lectus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla massa diam, rutrum ut lacinia non, facilisis sed tortor. Vestibulum finibus, libero in rutrum sollicitudin, mauris.');
INSERT INTO `reviews` VALUES ('5', '1', '5', 'Cristi', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus et ultrices nunc, eu mollis velit. Maecenas quis ullamcorper neque. Etiam quis luctus lectus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla massa diam, rutrum ut lacinia non, facilisis sed tortor. Vestibulum finibus, libero in rutrum sollicitudin, mauris.');
INSERT INTO `reviews` VALUES ('6', '1', '5', 'Daniel', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus et ultrices nunc, eu mollis velit. Maecenas quis ullamcorper neque. Etiam quis luctus lectus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla massa diam, rutrum ut lacinia non, facilisis sed tortor. Vestibulum finibus, libero in rutrum sollicitudin, mauris.');
INSERT INTO `reviews` VALUES ('7', '1', '5', 'Andreea', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus et ultrices nunc, eu mollis velit. Maecenas quis ullamcorper neque. Etiam quis luctus lectus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla massa diam, rutrum ut lacinia non, facilisis sed tortor. Vestibulum finibus, libero in rutrum sollicitudin, mauris.');
INSERT INTO `reviews` VALUES ('8', '1', '5', 'Cristina', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus et ultrices nunc, eu mollis velit. Maecenas quis ullamcorper neque. Etiam quis luctus lectus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla massa diam, rutrum ut lacinia non, facilisis sed tortor. Vestibulum finibus, libero in rutrum sollicitudin, mauris.');
INSERT INTO `reviews` VALUES ('9', '1', '5', 'Maria', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus et ultrices nunc, eu mollis velit. Maecenas quis ullamcorper neque. Etiam quis luctus lectus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla massa diam, rutrum ut lacinia non, facilisis sed tortor. Vestibulum finibus, libero in rutrum sollicitudin, mauris.');
INSERT INTO `reviews` VALUES ('10', '1', '3', 'Alina', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus et ultrices nunc, eu mollis velit. Maecenas quis ullamcorper neque. Etiam quis luctus lectus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla massa diam, rutrum ut lacinia non, facilisis sed tortor. Vestibulum finibus, libero in rutrum sollicitudin, mauris.');
INSERT INTO `reviews` VALUES ('11', '2', '2', 'Daniela', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus et ultrices nunc, eu mollis velit. Maecenas quis ullamcorper neque. Etiam quis luctus lectus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla massa diam, rutrum ut lacinia non, facilisis sed tortor. Vestibulum finibus, libero in rutrum sollicitudin, mauris.');
INSERT INTO `reviews` VALUES ('12', '2', '2', 'Marian', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus et ultrices nunc, eu mollis velit. Maecenas quis ullamcorper neque. Etiam quis luctus lectus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla massa diam, rutrum ut lacinia non, facilisis sed tortor. Vestibulum finibus, libero in rutrum sollicitudin, mauris.');
INSERT INTO `reviews` VALUES ('13', '2', '3', 'Andrei', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus et ultrices nunc, eu mollis velit. Maecenas quis ullamcorper neque. Etiam quis luctus lectus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla massa diam, rutrum ut lacinia non, facilisis sed tortor. Vestibulum finibus, libero in rutrum sollicitudin, mauris.');
INSERT INTO `reviews` VALUES ('14', '2', '4', 'Stefan', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus et ultrices nunc, eu mollis velit. Maecenas quis ullamcorper neque. Etiam quis luctus lectus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla massa diam, rutrum ut lacinia non, facilisis sed tortor. Vestibulum finibus, libero in rutrum sollicitudin, mauris.');
INSERT INTO `reviews` VALUES ('15', '2', '5', 'Alex', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus et ultrices nunc, eu mollis velit. Maecenas quis ullamcorper neque. Etiam quis luctus lectus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla massa diam, rutrum ut lacinia non, facilisis sed tortor. Vestibulum finibus, libero in rutrum sollicitudin, mauris.');
INSERT INTO `reviews` VALUES ('16', '2', '1', 'Radu', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus et ultrices nunc, eu mollis velit. Maecenas quis ullamcorper neque. Etiam quis luctus lectus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla massa diam, rutrum ut lacinia non, facilisis sed tortor. Vestibulum finibus, libero in rutrum sollicitudin, mauris.');
INSERT INTO `reviews` VALUES ('17', '2', '2', 'Bogdan', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus et ultrices nunc, eu mollis velit. Maecenas quis ullamcorper neque. Etiam quis luctus lectus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla massa diam, rutrum ut lacinia non, facilisis sed tortor. Vestibulum finibus, libero in rutrum sollicitudin, mauris.');
INSERT INTO `reviews` VALUES ('18', '2', '3', 'Robert', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus et ultrices nunc, eu mollis velit. Maecenas quis ullamcorper neque. Etiam quis luctus lectus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla massa diam, rutrum ut lacinia non, facilisis sed tortor. Vestibulum finibus, libero in rutrum sollicitudin, mauris.');
INSERT INTO `reviews` VALUES ('19', '2', '4', 'Alexandru', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus et ultrices nunc, eu mollis velit. Maecenas quis ullamcorper neque. Etiam quis luctus lectus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla massa diam, rutrum ut lacinia non, facilisis sed tortor. Vestibulum finibus, libero in rutrum  sollicitudin, mauris.');
INSERT INTO `reviews` VALUES ('20', '2', '5', 'Adriana', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus et ultrices nunc, eu mollis velit. Maecenas quis ullamcorper neque. Etiam quis luctus lectus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla massa diam, rutrum ut lacinia non, facilisis sed tortor. Vestibulum finibus, libero in rutrum sollicitudin, mauris.');
INSERT INTO `reviews` VALUES ('21', '3', '3', 'Ioana', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus et ultrices nunc, eu mollis velit. Maecenas quis ullamcorper neque. Etiam quis luctus lectus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla massa diam, rutrum ut lacinia non, facilisis sed tortor. Vestibulum finibus, libero in rutrum sollicitudin, mauris.');
INSERT INTO `reviews` VALUES ('22', '3', '1', 'Mirela', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus et ultrices nunc, eu mollis velit. Maecenas quis ullamcorper neque. Etiam quis luctus lectus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla massa diam, rutrum ut lacinia non, facilisis sed tortor. Vestibulum finibus, libero in rutrum sollicitudin, mauris.');
INSERT INTO `reviews` VALUES ('23', '3', '3', 'George', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus et ultrices nunc, eu mollis velit. Maecenas quis ullamcorper neque. Etiam quis luctus lectus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla massa diam, rutrum ut lacinia non, facilisis sed tortor. Vestibulum finibus, libero in rutrum sollicitudin, mauris.');
INSERT INTO `reviews` VALUES ('24', '3', '3', 'Andrei', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus et ultrices nunc, eu mollis velit. Maecenas quis ullamcorper neque. Etiam quis luctus lectus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla massa diam, rutrum ut lacinia non, facilisis sed tortor. Vestibulum finibus, libero in rutrum sollicitudin, mauris.');
INSERT INTO `reviews` VALUES ('25', '3', '4', 'George', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus et ultrices nunc, eu mollis velit. Maecenas quis ullamcorper neque. Etiam quis luctus lectus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla massa diam, rutrum ut lacinia non, facilisis sed tortor. Vestibulum finibus, libero in rutrum sollicitudin, mauris.');
INSERT INTO `reviews` VALUES ('26', '3', '3', 'Ioana', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus et ultrices nunc, eu mollis velit. Maecenas quis ullamcorper neque. Etiam quis luctus lectus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla massa diam, rutrum ut lacinia non, facilisis sed tortor. Vestibulum finibus, libero in rutrum sollicitudin, mauris.');
INSERT INTO `reviews` VALUES ('27', '3', '4', 'Adrian', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus et ultrices nunc, eu mollis velit. Maecenas quis ullamcorper neque. Etiam quis luctus lectus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla massa diam, rutrum ut lacinia non, facilisis sed tortor. Vestibulum finibus, libero in rutrum sollicitudin, mauris.');
INSERT INTO `reviews` VALUES ('28', '3', '5', 'Vasile', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus et ultrices nunc, eu mollis velit. Maecenas quis ullamcorper neque. Etiam quis luctus lectus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla massa diam, rutrum ut lacinia non, facilisis sed tortor. Vestibulum finibus, libero in rutrum sollicitudin, mauris.');
INSERT INTO `reviews` VALUES ('29', '3', '3', 'Radu', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus et ultrices nunc, eu mollis velit. Maecenas quis ullamcorper neque. Etiam quis luctus lectus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla massa diam, rutrum ut lacinia non, facilisis sed tortor. Vestibulum finibus, libero in rutrum sollicitudin, mauris.');
INSERT INTO `reviews` VALUES ('30', '3', '5', 'Alex', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus et ultrices nunc, eu mollis velit. Maecenas quis ullamcorper neque. Etiam quis luctus lectus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla massa diam, rutrum ut lacinia non, facilisis sed tortor. Vestibulum finibus, libero in rutrum sollicitudin, mauris.');
INSERT INTO `reviews` VALUES ('31', '4', '2', 'Bogdan', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus et ultrices nunc, eu mollis velit. Maecenas quis ullamcorper neque. Etiam quis luctus lectus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla massa diam, rutrum ut lacinia non, facilisis sed tortor. Vestibulum finibus, libero in rutrum sollicitudin, mauris.');
INSERT INTO `reviews` VALUES ('32', '4', '4', 'Razvan', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus et ultrices nunc, eu mollis velit. Maecenas quis ullamcorper neque. Etiam quis luctus lectus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla massa diam, rutrum ut lacinia non, facilisis sed tortor. Vestibulum finibus, libero in rutrum sollicitudin, mauris.');
INSERT INTO `reviews` VALUES ('33', '4', '4', 'Cristi', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus et ultrices nunc, eu mollis velit. Maecenas quis ullamcorper neque. Etiam quis luctus lectus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla massa diam, rutrum ut lacinia non, facilisis sed tortor. Vestibulum finibus, libero in rutrum sollicitudin, mauris.');
INSERT INTO `reviews` VALUES ('34', '4', '4', 'Laurentiu', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus et ultrices nunc, eu mollis velit. Maecenas quis ullamcorper neque. Etiam quis luctus lectus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla massa diam, rutrum ut lacinia non, facilisis sed tortor. Vestibulum finibus, libero in rutrum sollicitudin, mauris.');
INSERT INTO `reviews` VALUES ('35', '4', '1', 'cristi', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus et ultrices nunc, eu mollis velit. Maecenas quis ullamcorper neque. Etiam quis luctus lectus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla massa diam, rutrum ut lacinia non, facilisis sed tortor. Vestibulum finibus, libero in rutrum sollicitudin, mauris.');
INSERT INTO `reviews` VALUES ('36', '4', '5', 'Andrei', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus et ultrices nunc, eu mollis velit. Maecenas quis ullamcorper neque. Etiam quis luctus lectus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla massa diam, rutrum ut lacinia non, facilisis sed tortor. Vestibulum finibus, libero in rutrum sollicitudin, mauris.');
INSERT INTO `reviews` VALUES ('37', '4', '2', 'Vasile', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus et ultrices nunc, eu mollis velit. Maecenas quis ullamcorper neque. Etiam quis luctus lectus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla massa diam, rutrum ut lacinia non, facilisis sed tortor. Vestibulum finibus, libero in rutrum sollicitudin, mauris.');
INSERT INTO `reviews` VALUES ('38', '4', '2', 'Adrian', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus et ultrices nunc, eu mollis velit. Maecenas quis ullamcorper neque. Etiam quis luctus lectus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla massa diam, rutrum ut lacinia non, facilisis sed tortor. Vestibulum finibus, libero in rutrum sollicitudin, mauris.');
INSERT INTO `reviews` VALUES ('39', '4', '2', 'Marius', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus et ultrices nunc, eu mollis velit. Maecenas quis ullamcorper neque. Etiam quis luctus lectus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla massa diam, rutrum ut lacinia non, facilisis sed tortor. Vestibulum finibus, libero in rutrum sollicitudin, mauris.');
INSERT INTO `reviews` VALUES ('40', '4', '3', 'Cristi', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus et ultrices nunc, eu mollis velit. Maecenas quis ullamcorper neque. Etiam quis luctus lectus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla massa diam, rutrum ut lacinia non, facilisis sed tortor. Vestibulum finibus, libero in rutrum sollicitudin, mauris.');
INSERT INTO `reviews` VALUES ('41', '5', '5', 'Daniel', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus et ultrices nunc, eu mollis velit. Maecenas quis ullamcorper neque. Etiam quis luctus lectus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla massa diam, rutrum ut lacinia non, facilisis sed tortor. Vestibulum finibus, libero in rutrum sollicitudin, mauris.');
INSERT INTO `reviews` VALUES ('42', '5', '5', 'Andreea', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus et ultrices nunc, eu mollis velit. Maecenas quis ullamcorper neque. Etiam quis luctus lectus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla massa diam, rutrum ut lacinia non, facilisis sed tortor. Vestibulum finibus, libero in rutrum sollicitudin, mauris.');
INSERT INTO `reviews` VALUES ('43', '5', '5', 'Cristina', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus et ultrices nunc, eu mollis velit. Maecenas quis ullamcorper neque. Etiam quis luctus lectus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla massa diam, rutrum ut lacinia non, facilisis sed tortor. Vestibulum finibus, libero in rutrum sollicitudin, mauris.');
INSERT INTO `reviews` VALUES ('44', '5', '2', 'Maria', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus et ultrices nunc, eu mollis velit. Maecenas quis ullamcorper neque. Etiam quis luctus lectus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla massa diam, rutrum ut lacinia non, facilisis sed tortor. Vestibulum finibus, libero in rutrum sollicitudin, mauris.');
INSERT INTO `reviews` VALUES ('45', '5', '4', 'Alina', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus et ultrices nunc, eu mollis velit. Maecenas quis ullamcorper neque. Etiam quis luctus lectus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla massa diam, rutrum ut lacinia non, facilisis sed tortor. Vestibulum finibus, libero in rutrum sollicitudin, mauris.');
INSERT INTO `reviews` VALUES ('46', '5', '3', 'Daniela', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus et ultrices nunc, eu mollis velit. Maecenas quis ullamcorper neque. Etiam quis luctus lectus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla massa diam, rutrum ut lacinia non, facilisis sed tortor. Vestibulum finibus, libero in rutrum sollicitudin, mauris.');
INSERT INTO `reviews` VALUES ('47', '5', '1', 'Marian', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus et ultrices nunc, eu mollis velit. Maecenas quis ullamcorper neque. Etiam quis luctus lectus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla massa diam, rutrum ut lacinia non, facilisis sed tortor. Vestibulum finibus, libero in rutrum sollicitudin, mauris.');
INSERT INTO `reviews` VALUES ('48', '5', '5', 'Andrei', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus et ultrices nunc, eu mollis velit. Maecenas quis ullamcorper neque. Etiam quis luctus lectus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla massa diam, rutrum ut lacinia non, facilisis sed tortor. Vestibulum finibus, libero in rutrum sollicitudin, mauris.');
INSERT INTO `reviews` VALUES ('49', '5', '5', 'Stefan', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus et ultrices nunc, eu mollis velit. Maecenas quis ullamcorper neque. Etiam quis luctus lectus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla massa diam, rutrum ut lacinia non, facilisis sed tortor. Vestibulum finibus, libero in rutrum sollicitudin, mauris.');
INSERT INTO `reviews` VALUES ('50', '5', '3', 'Alex', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus et ultrices nunc, eu mollis velit. Maecenas quis ullamcorper neque. Etiam quis luctus lectus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla massa diam, rutrum ut lacinia non, facilisis sed tortor. Vestibulum finibus, libero in rutrum sollicitudin, mauris.');
INSERT INTO `reviews` VALUES ('51', '6', '4', 'Radu', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus et ultrices nunc, eu mollis velit. Maecenas quis ullamcorper neque. Etiam quis luctus lectus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla massa diam, rutrum ut lacinia non, facilisis sed tortor. Vestibulum finibus, libero in rutrum sollicitudin, mauris.');
INSERT INTO `reviews` VALUES ('52', '6', '4', 'Bogdan', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus et ultrices nunc, eu mollis velit. Maecenas quis ullamcorper neque. Etiam quis luctus lectus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla massa diam, rutrum ut lacinia non, facilisis sed tortor. Vestibulum finibus, libero in rutrum sollicitudin, mauris.');
INSERT INTO `reviews` VALUES ('53', '6', '5', 'Robert', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus et ultrices nunc, eu mollis velit. Maecenas quis ullamcorper neque. Etiam quis luctus lectus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla massa diam, rutrum ut lacinia non, facilisis sed tortor. Vestibulum finibus, libero in rutrum sollicitudin, mauris.');
INSERT INTO `reviews` VALUES ('54', '6', '2', 'Alexandru', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus et ultrices nunc, eu mollis velit. Maecenas quis ullamcorper neque. Etiam quis luctus lectus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla massa diam, rutrum ut lacinia non, facilisis sed tortor. Vestibulum finibus, libero in rutrum sollicitudin, mauris.');
INSERT INTO `reviews` VALUES ('55', '6', '3', 'Adriana', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus et ultrices nunc, eu mollis velit. Maecenas quis ullamcorper neque. Etiam quis luctus lectus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla massa diam, rutrum ut lacinia non, facilisis sed tortor. Vestibulum finibus, libero in rutrum sollicitudin, mauris.');
INSERT INTO `reviews` VALUES ('56', '6', '2', 'Ioana', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus et ultrices nunc, eu mollis velit. Maecenas quis ullamcorper neque. Etiam quis luctus lectus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla massa diam, rutrum ut lacinia non, facilisis sed tortor. Vestibulum finibus, libero in rutrum sollicitudin, mauris.');
INSERT INTO `reviews` VALUES ('57', '6', '5', 'Mirela', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus et ultrices nunc, eu mollis velit. Maecenas quis ullamcorper neque. Etiam quis luctus lectus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla massa diam, rutrum ut lacinia non, facilisis sed tortor. Vestibulum finibus, libero in rutrum sollicitudin, mauris.');
INSERT INTO `reviews` VALUES ('58', '6', '2', 'George', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus et ultrices nunc, eu mollis velit. Maecenas quis ullamcorper neque. Etiam quis luctus lectus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla massa diam, rutrum ut lacinia non, facilisis sed tortor. Vestibulum finibus, libero in rutrum sollicitudin, mauris.');
INSERT INTO `reviews` VALUES ('59', '6', '5', 'Andrei', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus et ultrices nunc, eu mollis velit. Maecenas quis ullamcorper neque. Etiam quis luctus lectus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla massa diam, rutrum ut lacinia non, facilisis sed tortor. Vestibulum finibus, libero in rutrum sollicitudin, mauris.');
INSERT INTO `reviews` VALUES ('60', '6', '4', 'George', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus et ultrices nunc, eu mollis velit. Maecenas quis ullamcorper neque. Etiam quis luctus lectus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla massa diam, rutrum ut lacinia non, facilisis sed tortor. Vestibulum finibus, libero in rutrum sollicitudin, mauris.');
INSERT INTO `reviews` VALUES ('61', '7', '2', 'Ioana', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus et ultrices nunc, eu mollis velit. Maecenas quis ullamcorper neque. Etiam quis luctus lectus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla massa diam, rutrum ut lacinia non, facilisis sed tortor. Vestibulum finibus, libero in rutrum sollicitudin, mauris.');
INSERT INTO `reviews` VALUES ('62', '7', '3', 'Adrian', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus et ultrices nunc, eu mollis velit. Maecenas quis ullamcorper neque. Etiam quis luctus lectus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla massa diam, rutrum ut lacinia non, facilisis sed tortor. Vestibulum finibus, libero in rutrum sollicitudin, mauris.');
INSERT INTO `reviews` VALUES ('63', '7', '5', 'Vasile', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus et ultrices nunc, eu mollis velit. Maecenas quis ullamcorper neque. Etiam quis luctus lectus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla massa diam, rutrum ut lacinia non, facilisis sed tortor. Vestibulum finibus, libero in rutrum sollicitudin, mauris.');
INSERT INTO `reviews` VALUES ('64', '7', '2', 'Radu', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus et ultrices nunc, eu mollis velit. Maecenas quis ullamcorper neque. Etiam quis luctus lectus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla massa diam, rutrum ut lacinia non, facilisis sed tortor. Vestibulum finibus, libero in rutrum sollicitudin, mauris.');
INSERT INTO `reviews` VALUES ('65', '7', '1', 'Alex', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus et ultrices nunc, eu mollis velit. Maecenas quis ullamcorper neque. Etiam quis luctus lectus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla massa diam, rutrum ut lacinia non, facilisis sed tortor. Vestibulum finibus, libero in rutrum sollicitudin, mauris.');
INSERT INTO `reviews` VALUES ('66', '7', '2', 'Bogdan', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus et ultrices nunc, eu mollis velit. Maecenas quis ullamcorper neque. Etiam quis luctus lectus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla massa diam, rutrum ut lacinia non, facilisis sed tortor. Vestibulum finibus, libero in rutrum sollicitudin, mauris.');
INSERT INTO `reviews` VALUES ('67', '7', '2', 'Razvan', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus et ultrices nunc, eu mollis velit. Maecenas quis ullamcorper neque. Etiam quis luctus lectus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla massa diam, rutrum ut lacinia non, facilisis sed tortor. Vestibulum finibus, libero in rutrum sollicitudin, mauris.');
INSERT INTO `reviews` VALUES ('68', '7', '3', 'Cristi', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus et ultrices nunc, eu mollis velit. Maecenas quis ullamcorper neque. Etiam quis luctus lectus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla massa diam, rutrum ut lacinia non, facilisis sed tortor. Vestibulum finibus, libero in rutrum sollicitudin, mauris.');
INSERT INTO `reviews` VALUES ('69', '7', '2', 'Laurentiu', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus et ultrices nunc, eu mollis velit. Maecenas quis ullamcorper neque. Etiam quis luctus lectus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla massa diam, rutrum ut lacinia non, facilisis sed tortor. Vestibulum finibus, libero in rutrum sollicitudin, mauris.');
INSERT INTO `reviews` VALUES ('70', '7', '2', 'cristi', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus et ultrices nunc, eu mollis velit. Maecenas quis ullamcorper neque. Etiam quis luctus lectus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla massa diam, rutrum ut lacinia non, facilisis sed tortor. Vestibulum finibus, libero in rutrum sollicitudin, mauris.');
INSERT INTO `reviews` VALUES ('71', '8', '4', 'Andrei', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus et ultrices nunc, eu mollis velit. Maecenas quis ullamcorper neque. Etiam quis luctus lectus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla massa diam, rutrum ut lacinia non, facilisis sed tortor. Vestibulum finibus, libero in rutrum sollicitudin, mauris.');
INSERT INTO `reviews` VALUES ('72', '8', '2', 'Vasile', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus et ultrices nunc, eu mollis velit. Maecenas quis ullamcorper neque. Etiam quis luctus lectus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla massa diam, rutrum ut lacinia non, facilisis sed tortor. Vestibulum finibus, libero in rutrum sollicitudin, mauris.');
INSERT INTO `reviews` VALUES ('73', '8', '5', 'Adrian', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus et ultrices nunc, eu mollis velit. Maecenas quis ullamcorper neque. Etiam quis luctus lectus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla massa diam, rutrum ut lacinia non, facilisis sed tortor. Vestibulum finibus, libero in rutrum sollicitudin, mauris.');
INSERT INTO `reviews` VALUES ('74', '8', '1', 'Marius', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus et ultrices nunc, eu mollis velit. Maecenas quis ullamcorper neque. Etiam quis luctus lectus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla massa diam, rutrum ut lacinia non, facilisis sed tortor. Vestibulum finibus, libero in rutrum sollicitudin, mauris.');
INSERT INTO `reviews` VALUES ('75', '8', '5', 'Cristi', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus et ultrices nunc, eu mollis velit. Maecenas quis ullamcorper neque. Etiam quis luctus lectus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla massa diam, rutrum ut lacinia non, facilisis sed tortor. Vestibulum finibus, libero in rutrum sollicitudin, mauris.');
INSERT INTO `reviews` VALUES ('76', '8', '5', 'Daniel', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus et ultrices nunc, eu mollis velit. Maecenas quis ullamcorper neque. Etiam quis luctus lectus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla massa diam, rutrum ut lacinia non, facilisis sed tortor. Vestibulum finibus, libero in rutrum sollicitudin, mauris.');
INSERT INTO `reviews` VALUES ('77', '8', '2', 'Andreea', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus et ultrices nunc, eu mollis velit. Maecenas quis ullamcorper neque. Etiam quis luctus lectus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla massa diam, rutrum ut lacinia non, facilisis sed tortor. Vestibulum finibus, libero in rutrum sollicitudin, mauris.');
INSERT INTO `reviews` VALUES ('78', '8', '5', 'Cristina', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus et ultrices nunc, eu mollis velit. Maecenas quis ullamcorper neque. Etiam quis luctus lectus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla massa diam, rutrum ut lacinia non, facilisis sed tortor. Vestibulum finibus, libero in rutrum sollicitudin, mauris.');
INSERT INTO `reviews` VALUES ('79', '8', '5', 'Maria', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus et ultrices nunc, eu mollis velit. Maecenas quis ullamcorper neque. Etiam quis luctus lectus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla massa diam, rutrum ut lacinia non, facilisis sed tortor. Vestibulum finibus, libero in rutrum sollicitudin, mauris.');
INSERT INTO `reviews` VALUES ('80', '8', '5', 'Alina', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus et ultrices nunc, eu mollis velit. Maecenas quis ullamcorper neque. Etiam quis luctus lectus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla massa diam, rutrum ut lacinia non, facilisis sed tortor. Vestibulum finibus, libero in rutrum sollicitudin, mauris.');
INSERT INTO `reviews` VALUES ('81', '9', '3', 'Daniela', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus et ultrices nunc, eu mollis velit. Maecenas quis ullamcorper neque. Etiam quis luctus lectus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla massa diam, rutrum ut lacinia non, facilisis sed tortor. Vestibulum finibus, libero in rutrum sollicitudin, mauris.');
INSERT INTO `reviews` VALUES ('82', '9', '3', 'Marian', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus et ultrices nunc, eu mollis velit. Maecenas quis ullamcorper neque. Etiam quis luctus lectus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla massa diam, rutrum ut lacinia non, facilisis sed tortor. Vestibulum finibus, libero in rutrum sollicitudin, mauris.');
INSERT INTO `reviews` VALUES ('83', '9', '4', 'Andrei', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus et ultrices nunc, eu mollis velit. Maecenas quis ullamcorper neque. Etiam quis luctus lectus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla massa diam, rutrum ut lacinia non, facilisis sed tortor. Vestibulum finibus, libero in rutrum sollicitudin, mauris.');
INSERT INTO `reviews` VALUES ('84', '9', '2', 'Stefan', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus et ultrices nunc, eu mollis velit. Maecenas quis ullamcorper neque. Etiam quis luctus lectus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla massa diam, rutrum ut lacinia non, facilisis sed tortor. Vestibulum finibus, libero in rutrum sollicitudin, mauris.');
INSERT INTO `reviews` VALUES ('85', '9', '1', 'Alex', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus et ultrices nunc, eu mollis velit. Maecenas quis ullamcorper neque. Etiam quis luctus lectus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla massa diam, rutrum ut lacinia non, facilisis sed tortor. Vestibulum finibus, libero in rutrum sollicitudin, mauris.');
INSERT INTO `reviews` VALUES ('86', '9', '3', 'Radu', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus et ultrices nunc, eu mollis velit. Maecenas quis ullamcorper neque. Etiam quis luctus lectus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla massa diam, rutrum ut lacinia non, facilisis sed tortor. Vestibulum finibus, libero in rutrum sollicitudin, mauris.');
INSERT INTO `reviews` VALUES ('87', '9', '3', 'Bogdan', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus et ultrices nunc, eu mollis velit. Maecenas quis ullamcorper neque. Etiam quis luctus lectus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla massa diam, rutrum ut lacinia non, facilisis sed tortor. Vestibulum finibus, libero in rutrum sollicitudin, mauris.');
INSERT INTO `reviews` VALUES ('88', '9', '4', 'Robert', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus et ultrices nunc, eu mollis velit. Maecenas quis ullamcorper neque. Etiam quis luctus lectus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla massa diam, rutrum ut lacinia non, facilisis sed tortor. Vestibulum finibus, libero in rutrum sollicitudin, mauris.');
INSERT INTO `reviews` VALUES ('89', '9', '4', 'Alexandru', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus et ultrices nunc, eu mollis velit. Maecenas quis ullamcorper neque. Etiam quis luctus lectus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla massa diam, rutrum ut lacinia non, facilisis sed tortor. Vestibulum finibus, libero in rutrum sollicitudin, mauris.');
INSERT INTO `reviews` VALUES ('90', '9', '2', 'Adriana', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus et ultrices nunc, eu mollis velit. Maecenas quis ullamcorper neque. Etiam quis luctus lectus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla massa diam, rutrum ut lacinia non, facilisis sed tortor. Vestibulum finibus, libero in rutrum sollicitudin, mauris.');
INSERT INTO `reviews` VALUES ('91', '10', '4', 'Ioana', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus et ultrices nunc, eu mollis velit. Maecenas quis ullamcorper neque. Etiam quis luctus lectus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla massa diam, rutrum ut lacinia non, facilisis sed tortor. Vestibulum finibus, libero in rutrum sollicitudin, mauris.');
INSERT INTO `reviews` VALUES ('92', '10', '2', 'Mirela', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus et ultrices nunc, eu mollis velit. Maecenas quis ullamcorper neque. Etiam quis luctus lectus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla massa diam, rutrum ut lacinia non, facilisis sed tortor. Vestibulum finibus, libero in rutrum sollicitudin, mauris.');
INSERT INTO `reviews` VALUES ('93', '10', '3', 'George', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus et ultrices nunc, eu mollis velit. Maecenas quis ullamcorper neque. Etiam quis luctus lectus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla massa diam, rutrum ut lacinia non, facilisis sed tortor. Vestibulum finibus, libero in rutrum sollicitudin, mauris.');
INSERT INTO `reviews` VALUES ('94', '10', '3', 'Andrei', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus et ultrices nunc, eu mollis velit. Maecenas quis ullamcorper neque. Etiam quis luctus lectus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla massa diam, rutrum ut lacinia non, facilisis sed tortor. Vestibulum finibus, libero in rutrum sollicitudin, mauris.');
INSERT INTO `reviews` VALUES ('95', '10', '1', 'George', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus et ultrices nunc, eu mollis velit. Maecenas quis ullamcorper neque. Etiam quis luctus lectus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla massa diam, rutrum ut lacinia non, facilisis sed tortor. Vestibulum finibus, libero in rutrum sollicitudin, mauris.');
INSERT INTO `reviews` VALUES ('96', '10', '4', 'Ioana', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus et ultrices nunc, eu mollis velit. Maecenas quis ullamcorper neque. Etiam quis luctus lectus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla massa diam, rutrum ut lacinia non, facilisis sed tortor. Vestibulum finibus, libero in rutrum sollicitudin, mauris.');
INSERT INTO `reviews` VALUES ('97', '10', '3', 'Adrian', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus et ultrices nunc, eu mollis velit. Maecenas quis ullamcorper neque. Etiam quis luctus lectus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla massa diam, rutrum ut lacinia non, facilisis sed tortor. Vestibulum finibus, libero in rutrum sollicitudin, mauris.');
INSERT INTO `reviews` VALUES ('98', '10', '5', 'Vasile', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus et ultrices nunc, eu mollis velit. Maecenas quis ullamcorper neque. Etiam quis luctus lectus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla massa diam, rutrum ut lacinia non, facilisis sed tortor. Vestibulum finibus, libero in rutrum sollicitudin, mauris.');
INSERT INTO `reviews` VALUES ('99', '10', '4', 'Radu', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus et ultrices nunc, eu mollis velit. Maecenas quis ullamcorper neque. Etiam quis luctus lectus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla massa diam, rutrum ut lacinia non, facilisis sed tortor. Vestibulum finibus, libero in rutrum sollicitudin, mauris.');
INSERT INTO `reviews` VALUES ('100', '10', '3', 'Alex', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus et ultrices nunc, eu mollis velit. Maecenas quis ullamcorper neque. Etiam quis luctus lectus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla massa diam, rutrum ut lacinia non, facilisis sed tortor. Vestibulum finibus, libero in rutrum sollicitudin, mauris.');
INSERT INTO `reviews` VALUES ('101', '11', '2', 'Bogdan', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus et ultrices nunc, eu mollis velit. Maecenas quis ullamcorper neque. Etiam quis luctus lectus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla massa diam, rutrum ut lacinia non, facilisis sed tortor. Vestibulum finibus, libero in rutrum sollicitudin, mauris.');
INSERT INTO `reviews` VALUES ('102', '11', '5', 'Razvan', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus et ultrices nunc, eu mollis velit. Maecenas quis ullamcorper neque. Etiam quis luctus lectus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla massa diam, rutrum ut lacinia non, facilisis sed tortor. Vestibulum finibus, libero in rutrum sollicitudin, mauris.');
INSERT INTO `reviews` VALUES ('103', '11', '1', 'Cristi', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus et ultrices nunc, eu mollis velit. Maecenas quis ullamcorper neque. Etiam quis luctus lectus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla massa diam, rutrum ut lacinia non, facilisis sed tortor. Vestibulum finibus, libero in rutrum sollicitudin, mauris.');
INSERT INTO `reviews` VALUES ('104', '11', '2', 'Laurentiu', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus et ultrices nunc, eu mollis velit. Maecenas quis ullamcorper neque. Etiam quis luctus lectus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla massa diam, rutrum ut lacinia non, facilisis sed tortor. Vestibulum finibus, libero in rutrum sollicitudin, mauris.');
INSERT INTO `reviews` VALUES ('105', '11', '5', 'cristi', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus et ultrices nunc, eu mollis velit. Maecenas quis ullamcorper neque. Etiam quis luctus lectus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla massa diam, rutrum ut lacinia non, facilisis sed tortor. Vestibulum finibus, libero in rutrum sollicitudin, mauris.');
INSERT INTO `reviews` VALUES ('106', '11', '5', 'Andrei', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus et ultrices nunc, eu mollis velit. Maecenas quis ullamcorper neque. Etiam quis luctus lectus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla massa diam, rutrum ut lacinia non, facilisis sed tortor. Vestibulum finibus, libero in rutrum sollicitudin, mauris.');
INSERT INTO `reviews` VALUES ('107', '11', '2', 'Vasile', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus et ultrices nunc, eu mollis velit. Maecenas quis ullamcorper neque. Etiam quis luctus lectus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla massa diam, rutrum ut lacinia non, facilisis sed tortor. Vestibulum finibus, libero in rutrum sollicitudin, mauris.');
INSERT INTO `reviews` VALUES ('108', '11', '4', 'Adrian', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus et ultrices nunc, eu mollis velit. Maecenas quis ullamcorper neque. Etiam quis luctus lectus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla massa diam, rutrum ut lacinia non, facilisis sed tortor. Vestibulum finibus, libero in rutrum sollicitudin, mauris.');
INSERT INTO `reviews` VALUES ('109', '11', '4', 'Marius', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus et ultrices nunc, eu mollis velit. Maecenas quis ullamcorper neque. Etiam quis luctus lectus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla massa diam, rutrum ut lacinia non, facilisis sed tortor. Vestibulum finibus, libero in rutrum sollicitudin, mauris.');
INSERT INTO `reviews` VALUES ('110', '11', '1', 'Cristi', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus et ultrices nunc, eu mollis velit. Maecenas quis ullamcorper neque. Etiam quis luctus lectus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla massa diam, rutrum ut lacinia non, facilisis sed tortor. Vestibulum finibus, libero in rutrum sollicitudin, mauris.');
INSERT INTO `reviews` VALUES ('111', '12', '2', 'Daniel', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus et ultrices nunc, eu mollis velit. Maecenas quis ullamcorper neque. Etiam quis luctus lectus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla massa diam, rutrum ut lacinia non, facilisis sed tortor. Vestibulum finibus, libero in rutrum sollicitudin, mauris.');
INSERT INTO `reviews` VALUES ('112', '12', '4', 'Andreea', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus et ultrices nunc, eu mollis velit. Maecenas quis ullamcorper neque. Etiam quis luctus lectus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla massa diam, rutrum ut lacinia non, facilisis sed tortor. Vestibulum finibus, libero in rutrum sollicitudin, mauris.');
INSERT INTO `reviews` VALUES ('113', '12', '3', 'Cristina', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus et ultrices nunc, eu mollis velit. Maecenas quis ullamcorper neque. Etiam quis luctus lectus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla massa diam, rutrum ut lacinia non, facilisis sed tortor. Vestibulum finibus, libero in rutrum sollicitudin, mauris.');
INSERT INTO `reviews` VALUES ('114', '12', '5', 'Maria', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus et ultrices nunc, eu mollis velit. Maecenas quis ullamcorper neque. Etiam quis luctus lectus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla massa diam, rutrum ut lacinia non, facilisis sed tortor. Vestibulum finibus, libero in rutrum sollicitudin, mauris.');
INSERT INTO `reviews` VALUES ('115', '12', '5', 'Alina', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus et ultrices nunc, eu mollis velit. Maecenas quis ullamcorper neque. Etiam quis luctus lectus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla massa diam, rutrum ut lacinia non, facilisis sed tortor. Vestibulum finibus, libero in rutrum sollicitudin, mauris.');
INSERT INTO `reviews` VALUES ('116', '12', '1', 'Daniela', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus et ultrices nunc, eu mollis velit. Maecenas quis ullamcorper neque. Etiam quis luctus lectus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla massa diam, rutrum ut lacinia non, facilisis sed tortor. Vestibulum finibus, libero in rutrum sollicitudin, mauris.');
INSERT INTO `reviews` VALUES ('117', '12', '1', 'Marian', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus et ultrices nunc, eu mollis velit. Maecenas quis ullamcorper neque. Etiam quis luctus lectus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla massa diam, rutrum ut lacinia non, facilisis sed tortor. Vestibulum finibus, libero in rutrum sollicitudin, mauris.');
INSERT INTO `reviews` VALUES ('118', '12', '3', 'Andrei', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus et ultrices nunc, eu mollis velit. Maecenas quis ullamcorper neque. Etiam quis luctus lectus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla massa diam, rutrum ut lacinia non, facilisis sed tortor. Vestibulum finibus, libero in rutrum sollicitudin, mauris.');
INSERT INTO `reviews` VALUES ('119', '12', '3', 'Stefan', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus et ultrices nunc, eu mollis velit. Maecenas quis ullamcorper neque. Etiam quis luctus lectus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla massa diam, rutrum ut lacinia non, facilisis sed tortor. Vestibulum finibus, libero in rutrum sollicitudin, mauris.');
INSERT INTO `reviews` VALUES ('120', '12', '1', 'Alex', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus et ultrices nunc, eu mollis velit. Maecenas quis ullamcorper neque. Etiam quis luctus lectus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla massa diam, rutrum ut lacinia non, facilisis sed tortor. Vestibulum finibus, libero in rutrum sollicitudin, mauris.');
INSERT INTO `reviews` VALUES ('121', '13', '1', 'Radu', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus et ultrices nunc, eu mollis velit. Maecenas quis ullamcorper neque. Etiam quis luctus lectus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla massa diam, rutrum ut lacinia non, facilisis sed tortor. Vestibulum finibus, libero in rutrum sollicitudin, mauris.');
INSERT INTO `reviews` VALUES ('122', '13', '5', 'Bogdan', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus et ultrices nunc, eu mollis velit. Maecenas quis ullamcorper neque. Etiam quis luctus lectus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla massa diam, rutrum ut lacinia non, facilisis sed tortor. Vestibulum finibus, libero in rutrum sollicitudin, mauris.');
INSERT INTO `reviews` VALUES ('123', '13', '1', 'Robert', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus et ultrices nunc, eu mollis velit. Maecenas quis ullamcorper neque. Etiam quis luctus lectus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla massa diam, rutrum ut lacinia non, facilisis sed tortor. Vestibulum finibus, libero in rutrum sollicitudin, mauris.');
INSERT INTO `reviews` VALUES ('124', '13', '5', 'Alexandru', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus et ultrices nunc, eu mollis velit. Maecenas quis ullamcorper neque. Etiam quis luctus lectus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla massa diam, rutrum ut lacinia non, facilisis sed tortor. Vestibulum finibus, libero in rutrum sollicitudin, mauris.');
INSERT INTO `reviews` VALUES ('125', '13', '4', 'Adriana', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus et ultrices nunc, eu mollis velit. Maecenas quis ullamcorper neque. Etiam quis luctus lectus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla massa diam, rutrum ut lacinia non, facilisis sed tortor. Vestibulum finibus, libero in rutrum sollicitudin, mauris.');
INSERT INTO `reviews` VALUES ('126', '13', '3', 'Ioana', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus et ultrices nunc, eu mollis velit. Maecenas quis ullamcorper neque. Etiam quis luctus lectus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla massa diam, rutrum ut lacinia non, facilisis sed tortor. Vestibulum finibus, libero in rutrum sollicitudin, mauris.');
INSERT INTO `reviews` VALUES ('127', '13', '3', 'Mirela', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus et ultrices nunc, eu mollis velit. Maecenas quis ullamcorper neque. Etiam quis luctus lectus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla massa diam, rutrum ut lacinia non, facilisis sed tortor. Vestibulum finibus, libero in rutrum sollicitudin, mauris.');
INSERT INTO `reviews` VALUES ('128', '13', '3', 'George', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus et ultrices nunc, eu mollis velit. Maecenas quis ullamcorper neque. Etiam quis luctus lectus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla massa diam, rutrum ut lacinia non, facilisis sed tortor. Vestibulum finibus, libero in rutrum sollicitudin, mauris.');
INSERT INTO `reviews` VALUES ('129', '13', '5', 'Andrei', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus et ultrices nunc, eu mollis velit. Maecenas quis ullamcorper neque. Etiam quis luctus lectus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla massa diam, rutrum ut lacinia non, facilisis sed tortor. Vestibulum finibus, libero in rutrum sollicitudin, mauris.');
INSERT INTO `reviews` VALUES ('130', '13', '3', 'George', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus et ultrices nunc, eu mollis velit. Maecenas quis ullamcorper neque. Etiam quis luctus lectus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla massa diam, rutrum ut lacinia non, facilisis sed tortor. Vestibulum finibus, libero in rutrum sollicitudin, mauris.');
INSERT INTO `reviews` VALUES ('132', '1', '5', 'Marius Chivu', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus et ultrices nunc, eu mollis velit. Maecenas quis ullamcorper neque. Etiam quis luctus lectus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla massa diam, rutrum ut lacinia non, facilisis sed tortor. Vestibulum finibus, libero in rutrum sollicitudin, mauris.');
INSERT INTO `reviews` VALUES ('133', '1', '4', 'Marius Chivu', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus et ultrices nunc, eu mollis velit. Maecenas quis ullamcorper neque. Etiam quis luctus lectus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla massa diam, rutrum ut lacinia non, facilisis sed tortor. Vestibulum finibus, libero in rutrum sollicitudin, mauris.');
INSERT INTO `reviews` VALUES ('134', '1', '3', 'Marius Chivu', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus et ultrices nunc, eu mollis velit. Maecenas quis ullamcorper neque. Etiam quis luctus lectus. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nulla massa diam, rutrum ut lacinia non, facilisis sed tortor. Vestibulum finibus, libero in rutrum sollicitudin, mauris.');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `mail` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `admin` int(255) DEFAULT 0,
  `type` enum('owner','client') DEFAULT 'client',
  `register` datetime(6) DEFAULT current_timestamp(6),
  `invite` varchar(255) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE KEY `mail` (`mail`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'Marius Chivu', 'marius.chivu95@yahoo.com', '$2y$10$8B0eoQUVzPZDv30R4n1dg.lFnKxlaj7TYYW7mSU9u611tQZqxzJBq', '1234567890', '1', 'owner', '2021-10-29 13:47:36.928642', '242ed78828794b16c6c2f49713d1668c', '2022-01-24 11:35:56');
INSERT INTO `users` VALUES ('3', 'Marius Catalin Chivu', 'marius@mail', '$2y$10$pk.nfIxz0Le6V5RxxcXutOGspaddteODZhZ6zoY42BUlbXH8S7AAG', '1234567890', '0', 'client', '2022-01-19 22:58:10.473469', '9f1b1288a2c5a737c2a5ffda50b60ff0', null);
