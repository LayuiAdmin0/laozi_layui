/*
 Navicat Premium Data Transfer

 Source Server         : 本地连接
 Source Server Type    : MySQL
 Source Server Version : 50714
 Source Host           : 127.0.0.1:3306
 Source Schema         : layui_laozi

 Target Server Type    : MySQL
 Target Server Version : 50714
 File Encoding         : 65001

 Date: 06/11/2020 14:27:11
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for laozi_user
-- ----------------------------
DROP TABLE IF EXISTS `laozi_user`;
CREATE TABLE `laozi_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `laozi_username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `laozi_password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 22 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of laozi_user
-- ----------------------------
INSERT INTO `laozi_user` VALUES (20, 'kkk', '123321');
INSERT INTO `laozi_user` VALUES (21, 'kkkk', '123321');
INSERT INTO `laozi_user` VALUES (19, 'asdad12', '123321');
INSERT INTO `laozi_user` VALUES (18, 'asdad1', '123321');
INSERT INTO `laozi_user` VALUES (17, 'asdad', '123321');
INSERT INTO `laozi_user` VALUES (15, '李四', '123321');
INSERT INTO `laozi_user` VALUES (14, '张三', '123321');
INSERT INTO `laozi_user` VALUES (16, '阿斯顿', '123321');

SET FOREIGN_KEY_CHECKS = 1;
