/*
 Navicat Premium Data Transfer

 Source Server         : 本地连接
 Source Server Type    : MySQL
 Source Server Version : 50714
 Source Host           : 127.0.0.1:3306
 Source Schema         : zy_project

 Target Server Type    : MySQL
 Target Server Version : 50714
 File Encoding         : 65001

 Date: 06/11/2020 13:55:37
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for zy_chat
-- ----------------------------
DROP TABLE IF EXISTS `zy_chat`;
CREATE TABLE `zy_chat`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `chatName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '自己',
  `opposite` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '对方',
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '内容',
  `time` datetime(0) NULL DEFAULT NULL COMMENT '时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 27 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of zy_chat
-- ----------------------------
INSERT INTO `zy_chat` VALUES (26, 'abc123', 'cqe123', '<script>alert(1:tushe:)</script>', '2020-07-27 11:28:27');
INSERT INTO `zy_chat` VALUES (25, 'abc123', 'cqe123', '<script>alert(1)</script>', '2020-07-27 11:26:00');
INSERT INTO `zy_chat` VALUES (24, 'abc123', 'cqe123', '你好呀 篮球rap 我是你的fans', '2020-07-27 11:24:53');

-- ----------------------------
-- Table structure for zy_friends
-- ----------------------------
DROP TABLE IF EXISTS `zy_friends`;
CREATE TABLE `zy_friends`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `followUser` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '关注用户',
  `picture1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '关注用户头像信息',
  `follow` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '被关注用户',
  `picture2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '被关注用户头像信息',
  `time` datetime(0) NULL DEFAULT NULL COMMENT '关注时间',
  `state` int(4) NULL DEFAULT NULL COMMENT '关注状态：1.代表关注成功 2.代表申请中 3.代表拒绝',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of zy_friends
-- ----------------------------
INSERT INTO `zy_friends` VALUES (1, 'abc123', '../.././uploads/userPicture/74290e8a9e7bc982d9dd0ce929e6e6f4.jpg', '篮球rap', '../.././uploads/userPicture/3126a9d9a546945d2df65cabac94e19f.jpg', '2020-08-26 09:02:39', 1);
INSERT INTO `zy_friends` VALUES (2, '篮球rap', '../.././uploads/userPicture/3126a9d9a546945d2df65cabac94e19f.jpg', 'abc123', '../.././uploads/userPicture/74290e8a9e7bc982d9dd0ce929e6e6f4.jpg', '2020-08-26 09:02:39', 1);

-- ----------------------------
-- Table structure for zy_goods
-- ----------------------------
DROP TABLE IF EXISTS `zy_goods`;
CREATE TABLE `zy_goods`  (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id',
  `price` decimal(10, 2) NULL DEFAULT NULL COMMENT '价钱',
  `content` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '内容',
  `collect` int(11) NULL DEFAULT NULL COMMENT '收藏',
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片',
  `state` int(1) NULL DEFAULT NULL COMMENT '状态',
  `goodsname` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '商品名称',
  `time` datetime(0) NULL DEFAULT NULL COMMENT '上传时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 36 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of zy_goods
-- ----------------------------
INSERT INTO `zy_goods` VALUES (29, 23.00, '12312312', 0, '../.././uploads/goods/a9e57c1657a76d2ef1b8f96d2a66f57b.png', 1, '猪妈妈', '2020-07-21 20:59:20');
INSERT INTO `zy_goods` VALUES (28, 22.00, '猪弟弟', 0, '../.././uploads/goods/b33e57639a9d918ae0f44859c07a2802.png', 1, '小猪乔治', '2020-07-21 20:58:37');
INSERT INTO `zy_goods` VALUES (26, 28.00, '123321112357', 0, '../.././uploads/goods/9e709a142b877ee87c0c05e74241676c.png', 1, '路费', '2020-07-21 20:53:31');
INSERT INTO `zy_goods` VALUES (27, 22.00, '猪姐姐', 0, '../.././uploads/goods/a1ecabe8e8cfd64916444570afb7db1d.png', 1, '小猪佩奇', '2020-07-21 20:58:13');
INSERT INTO `zy_goods` VALUES (22, 15.00, '好吃不上火', NULL, '../.././uploads/goods/3fc863aec908520bd995014da50e97ee.png', NULL, '阿松大', '2020-07-20 10:35:38');
INSERT INTO `zy_goods` VALUES (23, 19.00, '因为我不知道下一辈子是否还爱着你', NULL, '../.././uploads/goods/b0a2293d01f93e790ba52edf183b12fd.png', NULL, '玩具鸭子', '2020-07-20 14:45:22');
INSERT INTO `zy_goods` VALUES (24, 19.00, '你说得对！', 0, '../.././uploads/goods/e292991f11d0bfe9c22f2bc5a9b210b0.png', 1, '王八羔子', '2020-07-21 20:50:33');
INSERT INTO `zy_goods` VALUES (30, 23.00, '阿萨的缴纳时间', 0, '../.././uploads/goods/b08c146f8fd499ab77e80a1e88732147.png', 1, '乔治的恐龙', '2020-07-21 20:59:46');
INSERT INTO `zy_goods` VALUES (31, 64.00, '将进酒杯莫停', 0, '../.././uploads/goods/980e13378ce7e577cc623960c24f22f6.png', 1, '李白的狼袜子', '2021-07-21 21:00:20');
INSERT INTO `zy_goods` VALUES (32, 31.00, 'who can tell me ', 0, '../.././uploads/goods/b493af2ef99208691bf22258b0392831.png', 1, '老子添加的好累阿', '2021-07-21 21:00:42');
INSERT INTO `zy_goods` VALUES (33, 12.00, '带你去疯狂', 0, '../.././uploads/goods/d380157cb655968c7e91a0b2df5ce94f.png', 1, '带你去流浪', '2021-07-21 21:01:12');
INSERT INTO `zy_goods` VALUES (34, 12.00, '斯马萨达', 0, '../.././uploads/goods/07402700bb9c39682bfac9391eb22941.png', 1, '牛逼克拉斯', '2021-07-21 21:01:33');
INSERT INTO `zy_goods` VALUES (35, 12.00, '百倍界王拳', 0, '../.././uploads/goods/ddf0ab6bab8c9d9e803abc45699c9572.png', 1, '无用功阿', '2021-07-21 21:01:50');

-- ----------------------------
-- Table structure for zy_node
-- ----------------------------
DROP TABLE IF EXISTS `zy_node`;
CREATE TABLE `zy_node`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nodename` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `parentid` int(11) NULL DEFAULT NULL,
  `module_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `control_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `action_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `is_menu` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 49 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of zy_node
-- ----------------------------
INSERT INTO `zy_node` VALUES (1, '主页', 0, 'admin', 'index', 'index', 2);
INSERT INTO `zy_node` VALUES (2, '组件', 0, 'a', 'a', 'a', 2);
INSERT INTO `zy_node` VALUES (3, '页面', 0, 'a', 'a', 'a', 2);
INSERT INTO `zy_node` VALUES (4, '应用', 0, 'a', 'a', 'a', 2);
INSERT INTO `zy_node` VALUES (5, '高级', 0, 'a', 'a', 'a', 2);
INSERT INTO `zy_node` VALUES (6, '用户', 0, 'a', 'a', 'a', 2);
INSERT INTO `zy_node` VALUES (7, '设置', 0, 'a', 'a', 'a', 2);
INSERT INTO `zy_node` VALUES (8, '授权', 0, 'a', 'a', 'a', 2);
INSERT INTO `zy_node` VALUES (9, '控制台', 1, 'admin', 'index', 'console', 2);
INSERT INTO `zy_node` VALUES (10, '主页1', 1, 'admin', 'index', 'homepage1', 2);
INSERT INTO `zy_node` VALUES (11, '主页2', 1, 'admin', 'index', 'homepage2', 2);
INSERT INTO `zy_node` VALUES (12, '个人主页', 3, 'admin', 'index', 'personalpage', 2);
INSERT INTO `zy_node` VALUES (13, '通讯录', 3, 'admin', 'index', 'addresslist', 2);
INSERT INTO `zy_node` VALUES (14, '客户列表', 3, 'admin', 'index', 'caller', 2);
INSERT INTO `zy_node` VALUES (15, '商品列表', 3, 'admin', 'index', 'goodslist', 2);
INSERT INTO `zy_node` VALUES (16, '留言板', 3, 'admin', 'index', 'msgboard', 2);
INSERT INTO `zy_node` VALUES (17, '搜索结果', 3, 'admin', 'index', 'search', 2);
INSERT INTO `zy_node` VALUES (18, '忘记密码', 3, 'admin', 'index', 'forget', 2);
INSERT INTO `zy_node` VALUES (19, '百度', 3, 'a', 'a', 'a', 2);
INSERT INTO `zy_node` VALUES (20, 'layui官网', 3, 'a', 'a', 'a', 2);
INSERT INTO `zy_node` VALUES (21, '网站用户', 6, 'admin', 'index', 'userlist', 2);
INSERT INTO `zy_node` VALUES (22, '后台管理者', 6, 'admin', 'index', 'Administrator', 2);
INSERT INTO `zy_node` VALUES (23, '角色管理', 6, 'admin', 'index', 'role', 2);
INSERT INTO `zy_node` VALUES (24, '系统设置', 7, '', '', '', 2);
INSERT INTO `zy_node` VALUES (26, '网站设置', 24, 'admin', 'index', 'website', 3);
INSERT INTO `zy_node` VALUES (25, '我的设置', 7, '', '', '', 2);
INSERT INTO `zy_node` VALUES (27, '邮件服务', 24, 'admin', 'index', 'email', 3);
INSERT INTO `zy_node` VALUES (28, '无权限跳转', -1, 'admin', 'index', 'wunode', 1);
INSERT INTO `zy_node` VALUES (29, '退出登录', -1, 'admin', 'login', 'loginout', 1);
INSERT INTO `zy_node` VALUES (30, '控制台设置页面', -1, 'admin', 'index', 'website', 1);
INSERT INTO `zy_node` VALUES (31, '头像上传', -1, 'admin', 'base', 'doupload', 1);
INSERT INTO `zy_node` VALUES (32, '修改用户资料', -1, 'admin', 'user', 'updateuser', 1);
INSERT INTO `zy_node` VALUES (33, '添加商品', 3, 'admin', 'index', 'addgoods', 2);
INSERT INTO `zy_node` VALUES (34, '发布动态页面', -1, 'admin', 'index', 'hairdynamic', 2);
INSERT INTO `zy_node` VALUES (35, '发动态时的图片上传', -1, 'admin', 'base', 'doupload2', 1);
INSERT INTO `zy_node` VALUES (36, '关注他人', -1, 'admin', 'user', 'userfollow', 1);
INSERT INTO `zy_node` VALUES (37, '消息中心', -1, 'admin', 'index', 'message', 2);
INSERT INTO `zy_node` VALUES (38, '好友通知消息栏', -1, 'admin', 'user', 'messagenotice', 1);
INSERT INTO `zy_node` VALUES (39, '消息详情页面', -1, 'admin', 'index', 'detail', 2);
INSERT INTO `zy_node` VALUES (40, '消息详情内容', -1, 'admin', 'user', 'messagedetail', 1);
INSERT INTO `zy_node` VALUES (41, '好友同意', -1, 'admin', 'user', 'agreefriends', 1);
INSERT INTO `zy_node` VALUES (43, '添加角色管理', -1, 'admin', 'index', 'role', 2);
INSERT INTO `zy_node` VALUES (44, '商品详细', -1, 'admin', 'index', 'proinfo', 2);
INSERT INTO `zy_node` VALUES (45, '编辑信息', -1, 'admin', 'index', 'editinfo', 2);
INSERT INTO `zy_node` VALUES (46, '评论', -1, 'admin', 'user', 'comment', 1);
INSERT INTO `zy_node` VALUES (47, '私信', -1, 'admin', 'index', 'chat', 2);

-- ----------------------------
-- Table structure for zy_reviewers
-- ----------------------------
DROP TABLE IF EXISTS `zy_reviewers`;
CREATE TABLE `zy_reviewers`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dynamicId` int(11) NULL DEFAULT NULL COMMENT '动态id',
  `reviewers` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '评论者',
  `comments` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '评论内容',
  `time` datetime(0) NULL DEFAULT NULL COMMENT '评论时间',
  `reviewersPicture` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '评论者头像信息',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of zy_reviewers
-- ----------------------------
INSERT INTO `zy_reviewers` VALUES (1, 8, '篮球rap', '哈哈哈:hehe::hehe:', '2020-07-27 18:54:38', '../.././uploads/userPicture/3126a9d9a546945d2df65cabac94e19f.jpg');

-- ----------------------------
-- Table structure for zy_role
-- ----------------------------
DROP TABLE IF EXISTS `zy_role`;
CREATE TABLE `zy_role`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `rolename` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `rule` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `describe` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of zy_role
-- ----------------------------
INSERT INTO `zy_role` VALUES (1, 'boss', '#', '拥有所有权限');
INSERT INTO `zy_role` VALUES (2, '总经理', '1,9,3,12', '你可别偷懒了');
INSERT INTO `zy_role` VALUES (3, '用户', '3,12,13,14,15,16,17,18,19,20,32,34,36,37,38,39,40,41,45,46,47', '啊啊');

-- ----------------------------
-- Table structure for zy_user
-- ----------------------------
DROP TABLE IF EXISTS `zy_user`;
CREATE TABLE `zy_user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '账号',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `typeid` int(11) NULL DEFAULT NULL COMMENT '角色id',
  `last_login_time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '上次登录时间',
  `last_login_ip` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '上次登录ip',
  `loginnum` int(11) NULL DEFAULT NULL COMMENT '登录次数',
  `real_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '真实姓名',
  `state` tinyint(4) NULL DEFAULT NULL COMMENT '管理员状态 0为禁用 1为不禁用',
  `register_time` datetime(0) NULL DEFAULT NULL COMMENT '注册时间',
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机号',
  `img` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '头像',
  `sex` int(3) NULL DEFAULT NULL COMMENT '性别 1.男 2.女',
  `email` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of zy_user
-- ----------------------------
INSERT INTO `zy_user` VALUES (11, 'admin', '4f3dc3e329241ebbb7316f046c5ca5f5', 1, '2020-10-13 11:02:51', '127.0.0.1', 19, '张三', 1, '2020-07-16 18:07:16', '13272362665', NULL, 1, NULL);
INSERT INTO `zy_user` VALUES (12, 'lisi1', '4f3dc3e329241ebbb7316f046c5ca5f5', 2, '2020-08-24 14:59:06', '127.0.0.1', 22, '李四', 1, '2020-07-16 20:30:06', '13272362664', NULL, 2, NULL);
INSERT INTO `zy_user` VALUES (13, 'abc123', '4f3dc3e329241ebbb7316f046c5ca5f5', 3, '2020-08-26 08:48:11', '127.0.0.1', 44, '易烊千玺', 1, '2020-07-17 14:58:01', '13272372998', '../.././uploads/userPicture/74290e8a9e7bc982d9dd0ce929e6e6f4.jpg', 1, '3535333969@qq.com');
INSERT INTO `zy_user` VALUES (14, '篮球rap', '4f3dc3e329241ebbb7316f046c5ca5f5', 3, '2020-08-26 09:06:43', '127.0.0.1', 25, '蔡徐坤', 1, '2020-07-17 20:54:34', '13272372785', '../.././uploads/userPicture/3126a9d9a546945d2df65cabac94e19f.jpg', 1, '3535333969@qq.com');
INSERT INTO `zy_user` VALUES (15, 'cqe123', '4f3dc3e329241ebbb7316f046c5ca5f5', 3, '2020-10-13 11:01:47', '127.0.0.1', 12, '陈乔恩', 1, '2020-07-21 18:58:15', '13272362667', NULL, 2, NULL);
INSERT INTO `zy_user` VALUES (17, '篮球火的秘密', '4f3dc3e329241ebbb7316f046c5ca5f5', 3, '2020-07-23 19:03:50', '127.0.0.1', 1, '实打实', 1, '2020-07-23 19:03:29', '18573747063', NULL, 1, NULL);

-- ----------------------------
-- Table structure for zy_userdynamic
-- ----------------------------
DROP TABLE IF EXISTS `zy_userdynamic`;
CREATE TABLE `zy_userdynamic`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `publisher` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '发布动态者',
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '动态内容',
  `img` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '动态图片',
  `numbercomments` int(11) NULL DEFAULT NULL COMMENT '评论数量',
  `numberlikes` int(11) NULL DEFAULT NULL COMMENT '点赞数',
  `time` datetime(0) NULL DEFAULT NULL COMMENT '发布时间',
  `userPicture` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户头像信息',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of zy_userdynamic
-- ----------------------------
INSERT INTO `zy_userdynamic` VALUES (1, 'abc123', '今天也是元气满满的一天', '../.././uploads/userPicture/551e3757f2c5a6e1d83d0a7c873c92a0.jpg', 12, 10, '2020-07-18 11:17:03', '../.././uploads/userPicture/74290e8a9e7bc982d9dd0ce929e6e6f4.jpg');
INSERT INTO `zy_userdynamic` VALUES (2, 'abc123', '故乡的花开了吗？', '../.././uploads/userdynamic/5398e04c5e39ea971d613ac50dce5e49.jpg', 0, 0, '2020-07-18 16:51:10', '../.././uploads/userPicture/74290e8a9e7bc982d9dd0ce929e6e6f4.jpg');
INSERT INTO `zy_userdynamic` VALUES (3, 'abc123', '这里太美了', '../.././uploads/userPicture/../.././uploads/userdynamic/28d57eebd8f541ed6e9e9122bdb71a4f.jpg', 0, 0, '2020-07-18 16:58:04', '../.././uploads/userPicture/74290e8a9e7bc982d9dd0ce929e6e6f4.jpg');
INSERT INTO `zy_userdynamic` VALUES (4, 'abc123', '高高在上', '../.././uploads/userdynamic/4e731e89b92b0f7b8ec6fe95e0d25e19.jpg', 0, 0, '2020-07-18 17:08:12', '../.././uploads/userPicture/74290e8a9e7bc982d9dd0ce929e6e6f4.jpg');
INSERT INTO `zy_userdynamic` VALUES (5, 'abc123', '今天天气真好', '', 0, 0, '2020-07-20 08:34:05', '../.././uploads/userPicture/74290e8a9e7bc982d9dd0ce929e6e6f4.jpg');
INSERT INTO `zy_userdynamic` VALUES (6, '篮球rap', '你看这朵花还挺漂亮的呀', '../.././uploads/userdynamic/1d2ec7cfd2c2c79af4b75153acb33ca2.jpg', 0, 0, '2020-07-20 20:11:26', '../.././uploads/userPicture/4025947a6064dc749923d7f6165d7e4a.jpg');
INSERT INTO `zy_userdynamic` VALUES (7, '篮球rap', '生活勇往直前', '', 0, 0, '2020-07-20 20:50:52', '../.././uploads/userPicture/3126a9d9a546945d2df65cabac94e19f.jpg');
INSERT INTO `zy_userdynamic` VALUES (8, '篮球rap', ':hehe::haha::a:', '', 0, 0, '2020-07-20 21:07:07', '../.././uploads/userPicture/3126a9d9a546945d2df65cabac94e19f.jpg');
INSERT INTO `zy_userdynamic` VALUES (9, 'cqe123', ':heixian::lei::lei:', '', 0, 0, '2020-07-21 18:59:00', NULL);
INSERT INTO `zy_userdynamic` VALUES (10, 'abc123', ':haha:', '', 0, 0, '2020-07-27 11:29:46', '../.././uploads/userPicture/74290e8a9e7bc982d9dd0ce929e6e6f4.jpg');
INSERT INTO `zy_userdynamic` VALUES (11, '篮球rap', ':tushe:', '../.././uploads/userdynamic/d6213c137d721b587e6da2e2a5313e08.jpg', 0, 0, '2020-07-28 23:40:40', '../.././uploads/userPicture/3126a9d9a546945d2df65cabac94e19f.jpg');

-- ----------------------------
-- Table structure for zy_userinfo
-- ----------------------------
DROP TABLE IF EXISTS `zy_userinfo`;
CREATE TABLE `zy_userinfo`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `typeid` int(11) NOT NULL COMMENT '这个是代表用户身份',
  `occupation` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '这个是职业',
  `city` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所在城市',
  `introduce` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '自我介绍',
  `hobby` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '爱好',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of zy_userinfo
-- ----------------------------
INSERT INTO `zy_userinfo` VALUES (1, 'abc123', 3, 'LOL职业选手', '重庆', '我打游戏老厉害', '游戏,游戏,游戏,还是游戏');
INSERT INTO `zy_userinfo` VALUES (2, '篮球火的秘密', 3, '', '', '', '');
INSERT INTO `zy_userinfo` VALUES (3, '篮球rap', 3, '美容师', '广东', '让老子来画画', NULL);
INSERT INTO `zy_userinfo` VALUES (4, 'cqe123', 3, '歌手', '西藏', '一展歌喉的时候到了 给爷闪开', NULL);

SET FOREIGN_KEY_CHECKS = 1;
