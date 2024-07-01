/*
 Navicat Premium Data Transfer

 Source Server         : 本机MySQL
 Source Server Type    : MySQL
 Source Server Version : 80036
 Source Host           : localhost:3306
 Source Schema         : xiongpao

 Target Server Type    : MySQL
 Target Server Version : 80036
 File Encoding         : 65001

 Date: 01/07/2024 17:00:15
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for team
-- ----------------------------
DROP TABLE IF EXISTS `team`;
CREATE TABLE `team`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'id',
  `name` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '队伍名称',
  `description` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '描述',
  `maxNum` int NOT NULL DEFAULT 1 COMMENT '最大人数',
  `expireTime` datetime NULL DEFAULT NULL COMMENT '过期时间',
  `userId` bigint NULL DEFAULT NULL COMMENT '用户id（队长 id）',
  `status` int NOT NULL DEFAULT 0 COMMENT '0 - 公开，1 - 私有，2 - 加密',
  `password` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '密码',
  `createTime` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updateTime` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `isDelete` tinyint NOT NULL DEFAULT 0 COMMENT '是否删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '队伍' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of team
-- ----------------------------
INSERT INTO `team` VALUES (1, '雄雄小队已更新', '测试描述已更新', 10, '2024-07-13 00:00:00', 1, 0, '', '2024-07-01 09:55:29', '2024-07-01 13:50:06', 0);
INSERT INTO `team` VALUES (2, '雄雄小队', '测试描述', 10, '2024-07-10 09:54:30', 1, 0, '', '2024-07-01 09:55:38', '2024-07-01 09:55:38', 0);
INSERT INTO `team` VALUES (3, '雄雄小队', '测试描述', 10, '2024-07-10 09:54:30', 1, 0, '', '2024-07-01 09:55:39', '2024-07-01 09:55:39', 0);
INSERT INTO `team` VALUES (4, '雄雄小队', '测试描述', 10, '2024-07-10 09:54:30', 1, 0, '', '2024-07-01 09:55:40', '2024-07-01 09:55:40', 0);
INSERT INTO `team` VALUES (5, '更新小队', '更新描述', 10, '2024-07-10 09:54:30', 1, 2, '1234', '2024-07-01 09:55:41', '2024-07-01 15:16:16', 0);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `username` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '用户昵称',
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'id',
  `userAccount` varchar(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '账号',
  `userPassword` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '密码',
  `avatarUrl` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '用户头像',
  `gender` tinyint NULL DEFAULT NULL COMMENT '性别',
  `profile` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '个人简介',
  `phone` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '电话',
  `email` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '邮箱',
  `userStatus` int NOT NULL DEFAULT 0 COMMENT '状态 0 - 正常',
  `createTime` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updateTime` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `isDelete` tinyint NOT NULL DEFAULT 0 COMMENT '是否删除',
  `userRole` int NOT NULL DEFAULT 0 COMMENT '用户角色 0 - 普通用户 1 - 管理员',
  `planetCode` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '星球编号',
  `tags` varchar(1024) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '标签 json 列表',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1001011 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '用户' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('dingding', 1, 'dingjiaxiong', '36c8e9015dc8fa1a07f91947b602e18b', 'https://avatars.githubusercontent.com/u/61930795?v=4', 0, '风轻轻拂过半山', '1234567810999', 'dingjiaxiong@qq.com', 0, '2024-06-29 12:10:44', '2024-06-30 11:07:54', 0, 1, '19969', '[\"男\", \"java\", \"vue\", \"python\"]');
INSERT INTO `user` VALUES ('海绵宝宝', 2, 'haimianbaobao', '36c8e9015dc8fa1a07f91947b602e18b', 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fc-ssl.duitang.com%2Fuploads%2Fitem%2F202008%2F03%2F20200803194454_fxzce.jpg&refer=http%3A%2F%2Fc-ssl.duitang.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1722130919&t=6ff3a41a1ca45915606d186ff3256331', 1, NULL, '123', 'haimian@baobao.com', 0, '2024-06-29 12:11:29', '2024-06-30 11:10:42', 0, 0, '1', '[\"男\", \"c#\"]');
INSERT INTO `user` VALUES ('派大星', 3, 'paidaxing', '36c8e9015dc8fa1a07f91947b602e18b', 'https://b0.bdstatic.com/a1588b60ed782b418ac46cc77d76d756.jpg@h_1280', 0, NULL, NULL, NULL, 0, '2024-06-29 12:11:36', '2024-06-30 11:35:01', 0, 0, '2', '[\"男\" ,\"java\", \"python\", \"c++\"]');
INSERT INTO `user` VALUES ('章鱼哥', 4, 'zhangyuge', '36c8e9015dc8fa1a07f91947b602e18b', 'https://img1.baidu.com/it/u=1523844190,2818655112&fm=253&fmt=auto&app=138&f=JPEG?w=400&h=406', 0, NULL, NULL, NULL, 0, '2024-06-29 12:11:43', '2024-06-30 11:35:01', 0, 0, '3', '[\"女\", \"golang\"]');
INSERT INTO `user` VALUES ('哪吒', 5, 'nezha', '36c8e9015dc8fa1a07f91947b602e18b', 'https://img0.baidu.com/it/u=1979267524,1091384040&fm=253&fmt=auto&app=138&f=JPEG?w=621&h=500', 0, NULL, NULL, NULL, 0, '2024-06-30 11:31:29', '2024-06-30 11:36:33', 0, 0, '4', '[\"男\", \"C\", \"大数据\"]');
INSERT INTO `user` VALUES ('孙悟空', 6, 'wukong', '36c8e9015dc8fa1a07f91947b602e18b', 'https://nimg.ws.126.net/?url=http%3A%2F%2Fdingyue.ws.126.net%2F2024%2F0516%2Fe98216b5j00sdk5z2000td000hs00bsg.jpg&thumbnail=660x2147483647&quality=80&type=jpg', 0, NULL, NULL, NULL, 0, '2024-06-30 11:31:41', '2024-06-30 11:36:33', 0, 0, '5', '[\"男\", \"人工智能\", \"深度学习\"]');
INSERT INTO `user` VALUES ('猪八戒', 7, 'bajie', '36c8e9015dc8fa1a07f91947b602e18b', 'https://q5.itc.cn/images01/20240510/100a18edce50471987f4cefecd89a4c3.jpeg', 0, NULL, NULL, NULL, 0, '2024-06-30 11:31:49', '2024-06-30 11:36:33', 0, 0, '6', '[\"男\", \"工作中\", \"java\"]');
INSERT INTO `user` VALUES ('唐僧', 8, 'tangseng', '36c8e9015dc8fa1a07f91947b602e18b', 'https://img0.baidu.com/it/u=2147404547,3845942083&fm=253&fmt=auto&app=138&f=JPEG?w=640&h=427', 0, NULL, NULL, NULL, 0, '2024-06-30 11:31:57', '2024-06-30 11:36:33', 0, 0, '7', '[\"男\", \"失业中\"]');
INSERT INTO `user` VALUES ('沙悟净', 9, 'wujing', '36c8e9015dc8fa1a07f91947b602e18b', 'https://img2.baidu.com/it/u=4293719795,107877824&fm=253&fmt=auto&app=120&f=JPEG?w=888&h=600', 0, NULL, NULL, NULL, 0, '2024-06-30 11:32:03', '2024-06-30 11:36:33', 0, 0, '8', '[\"男\", \"后端\"]');
INSERT INTO `user` VALUES ('伽罗', 10, 'jialuo', '36c8e9015dc8fa1a07f91947b602e18b', 'https://img1.baidu.com/it/u=1074398411,3388809492&fm=253&fmt=auto&app=138&f=JPG?w=640&h=480', 1, NULL, NULL, NULL, 0, '2024-06-30 11:32:08', '2024-06-30 11:36:33', 0, 0, '9', '[\"女\", \"前端\"]');

-- ----------------------------
-- Table structure for user_team
-- ----------------------------
DROP TABLE IF EXISTS `user_team`;
CREATE TABLE `user_team`  (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT 'id',
  `userId` bigint NULL DEFAULT NULL COMMENT '用户id',
  `teamId` bigint NULL DEFAULT NULL COMMENT '队伍id',
  `joinTime` datetime NULL DEFAULT NULL COMMENT '加入时间',
  `createTime` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `updateTime` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `isDelete` tinyint NOT NULL DEFAULT 0 COMMENT '是否删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '用户队伍关系' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user_team
-- ----------------------------
INSERT INTO `user_team` VALUES (1, 1, 1, '2024-07-01 09:55:29', '2024-07-01 09:55:29', '2024-07-01 13:50:00', 0);
INSERT INTO `user_team` VALUES (2, 1, 2, '2024-07-01 09:55:39', '2024-07-01 09:55:38', '2024-07-01 09:55:38', 0);
INSERT INTO `user_team` VALUES (3, 1, 3, '2024-07-01 09:55:40', '2024-07-01 09:55:39', '2024-07-01 09:55:39', 0);
INSERT INTO `user_team` VALUES (4, 1, 4, '2024-07-01 09:55:40', '2024-07-01 09:55:40', '2024-07-01 09:55:40', 0);
INSERT INTO `user_team` VALUES (5, 1, 5, '2024-07-01 09:55:41', '2024-07-01 09:55:41', '2024-07-01 13:50:00', 0);
INSERT INTO `user_team` VALUES (6, 2, 1, '2024-07-01 12:31:47', '2024-07-01 12:31:46', '2024-07-01 13:50:00', 0);
INSERT INTO `user_team` VALUES (7, 2, 5, '2024-07-01 15:33:07', '2024-07-01 15:33:06', '2024-07-01 15:33:06', 0);

SET FOREIGN_KEY_CHECKS = 1;
