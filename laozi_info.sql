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

 Date: 06/11/2020 14:27:17
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for laozi_info
-- ----------------------------
DROP TABLE IF EXISTS `laozi_info`;
CREATE TABLE `laozi_info`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `laozi_ip` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `laozi_logintime` datetime(0) NULL DEFAULT NULL,
  `laozi_phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `laozi_email` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `laozi_nickname` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `laozi_sex` int(1) NULL DEFAULT NULL,
  `laozi_userid` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 22 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of laozi_info
-- ----------------------------
INSERT INTO `laozi_info` VALUES (1, '127.0.0.1', '2020-10-26 09:55:29', '13762505913', '2446102551@qq.com', '张三', 1, 20);
INSERT INTO `laozi_info` VALUES (2, '127.0.0.1', '2020-10-26 09:58:02', '13762505912', '3535333969@qq.com', '李四', 1, 21);
INSERT INTO `laozi_info` VALUES (3, '127.0.0.1', '2020-10-26 09:55:07', '18573747092', '3096019577@qq.com', '选五', 1, 19);

SET FOREIGN_KEY_CHECKS = 1;
