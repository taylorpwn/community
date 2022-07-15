/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 80029
 Source Host           : localhost:3306
 Source Schema         : community

 Target Server Type    : MySQL
 Target Server Version : 80029
 File Encoding         : 65001

 Date: 15/07/2022 18:30:41
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for question
-- ----------------------------
DROP TABLE IF EXISTS `question`;
CREATE TABLE `question`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `gmt_create` bigint NULL DEFAULT NULL,
  `gmt_modified` bigint NULL DEFAULT NULL,
  `creator` int NULL DEFAULT NULL,
  `comment_count` int NOT NULL DEFAULT 0,
  `like_count` int NOT NULL DEFAULT 0,
  `view_count` int NOT NULL DEFAULT 0,
  `tag` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of question
-- ----------------------------
INSERT INTO `question` VALUES (1, '123', '213', 1657879628232, 1657879628232, 0, 0, 0, 0, '213');
INSERT INTO `question` VALUES (2, '123', '213', 1657879843885, 1657879843885, 0, 0, 0, 0, '213');
INSERT INTO `question` VALUES (3, '标题', '内容', 1657879865984, 1657879865984, 0, 0, 0, 0, '标签');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `account_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `token` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `gmt_create` bigint NULL DEFAULT NULL,
  `gmt_modified` bigint NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (2, 'Vikincer', '73332369', 'e63b7fcb-f92d-44fa-a103-40db630c65e9', 1657720314500, 1657720314500);
INSERT INTO `user` VALUES (3, 'Vikincer', '73332369', 'aac73414-266c-45c0-916a-f3b66fd3bf91', 1657722742624, 1657722742624);
INSERT INTO `user` VALUES (4, 'Vikincer', '73332369', 'd72e5662-adc9-4082-b10d-f2a4844ed332', 1657803434913, 1657803434913);
INSERT INTO `user` VALUES (5, 'Vikincer', '73332369', '214f1c25-0e38-42b2-baeb-ef76eb4b1a5b', 1657879520355, 1657879520355);

SET FOREIGN_KEY_CHECKS = 1;