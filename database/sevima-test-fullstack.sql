/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80030
 Source Host           : localhost:3306
 Source Schema         : sevima-test-fullstack

 Target Server Type    : MySQL
 Target Server Version : 80030
 File Encoding         : 65001

 Date: 07/03/2023 07:52:46
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for m_user
-- ----------------------------
DROP TABLE IF EXISTS `m_user`;
CREATE TABLE `m_user`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `role` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `akses` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `last_login` datetime NULL DEFAULT NULL,
  `created_at` int NULL DEFAULT NULL,
  `created_by` int NULL DEFAULT NULL,
  `updated_at` int NULL DEFAULT NULL,
  `updated_by` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 28 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of m_user
-- ----------------------------
INSERT INTO `m_user` VALUES (1, 'admin', 'admin@gmail.com', '482c811da5d5b4bc6d497ffa98491e38', 'admin', '{\"comment\":\"true\",\"like\":\"true\",\"posting\":\"true\"}', '2022-09-10 14:09:40', NULL, NULL, 1, 1662811780);
INSERT INTO `m_user` VALUES (22, 'rizky', 'rizky@gmail.com', '482c811da5d5b4bc6d497ffa98491e38', 'user', '{\"comment\":\"true\",\"like\":\"true\",\"posting\":\"true\"}', '2022-09-10 14:14:47', 1662741309, NULL, 22, 1662812087);
INSERT INTO `m_user` VALUES (23, 'alamsyah', 'alamsyah@gmail.com', '482c811da5d5b4bc6d497ffa98491e38', 'user', '{\"comment\":\"true\",\"like\":\"true\",\"posting\":\"true\"}', '2022-09-10 14:24:30', 1662741380, NULL, 23, 1662812670);
INSERT INTO `m_user` VALUES (24, 'derry', 'derry@gmail.com', '0bd1772b1f26b34d46a3fcaac56fbf6c', 'user', '{\"comment\":\"true\",\"like\":\"true\",\"posting\":\"true\"}', '2022-09-10 14:08:07', 1662741424, NULL, 24, 1662811687);
INSERT INTO `m_user` VALUES (25, 'lala', 'lala@gmail.com', '7e51eea5fa101ed4dade9ad3a7a072bb', 'user', '{\"comment\":\"true\",\"posting\":\"true\"}', '2022-09-10 06:12:21', 1662741489, NULL, 1, 1662804318);
INSERT INTO `m_user` VALUES (27, 'santi', 'santi@gmail.com', '482c811da5d5b4bc6d497ffa98491e38', 'user', '{\"like\":false,\"posting\":false,\"comment\":false}', '2022-09-10 14:09:55', 1662811560, NULL, 27, 1662811795);
INSERT INTO `m_user` VALUES (28, 'bambang', 'bambang@gmail.com', '357c5eaefeda3bf103d525b58d3fef73', 'user', '{\"like\":true,\"posting\":true,\"comment\":true}', NULL, 1678120669, NULL, NULL, NULL);
INSERT INTO `m_user` VALUES (29, 'takuya', 'takuya@gmail.com', '69777e58be0c184f2f90398659b9be4b', 'user', '{\"like\":true,\"posting\":true,\"comment\":true}', NULL, 1678120696, NULL, NULL, NULL);
INSERT INTO `m_user` VALUES (30, 'agus', 'agus@gmail.com', '01c3c766ce47082b1b130daedd347ffd', 'user', '{\"like\":true,\"posting\":true,\"comment\":true}', '2023-03-07 00:20:05', 1678147336, NULL, 30, 1678148405);
INSERT INTO `m_user` VALUES (31, 'Agus2', 'agus@gmail.com', '01c3c766ce47082b1b130daedd347ffd', 'user', '{\"like\":true,\"posting\":true,\"comment\":true}', NULL, 1678147543, NULL, NULL, NULL);
INSERT INTO `m_user` VALUES (32, 'maul', 'maul@gmail.com', 'b5e4eae83cc3c4d7a4bf956ce0fc3016', 'user', '{\"like\":true,\"posting\":true,\"comment\":true}', '2023-03-07 00:33:56', 1678149225, NULL, 32, 1678149236);
INSERT INTO `m_user` VALUES (33, 'gilang', 'gilang@gmail.com', '482c811da5d5b4bc6d497ffa98491e38', 'user', '{\"like\":true,\"posting\":true,\"comment\":true}', NULL, 1678150286, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for t_komentar
-- ----------------------------
DROP TABLE IF EXISTS `t_komentar`;
CREATE TABLE `t_komentar`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `posting_id` int NULL DEFAULT NULL,
  `komentar` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `created_at` int NULL DEFAULT NULL,
  `created_by` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_komentar
-- ----------------------------
INSERT INTO `t_komentar` VALUES (1, 1, 'Postingan bermanfaat', 1662811662, 27);
INSERT INTO `t_komentar` VALUES (2, 1, 'Up gan', 1662811669, 27);
INSERT INTO `t_komentar` VALUES (3, 1, 'Mantabss', 1662811702, 24);
INSERT INTO `t_komentar` VALUES (4, 2, 'Sangat memotivasi', 1678147582, 30);
INSERT INTO `t_komentar` VALUES (5, 1, 'thanks infonya', 1678150100, 32);
INSERT INTO `t_komentar` VALUES (6, 2, 'setuju bro enak banget', 1678150212, 32);
INSERT INTO `t_komentar` VALUES (7, 3, 'cieee', 1678150230, 32);

-- ----------------------------
-- Table structure for t_like
-- ----------------------------
DROP TABLE IF EXISTS `t_like`;
CREATE TABLE `t_like`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `posting_id` int NULL DEFAULT NULL,
  `created_at` int NULL DEFAULT NULL,
  `created_by` int NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_like
-- ----------------------------
INSERT INTO `t_like` VALUES (1, 1, 1662811647, 27);
INSERT INTO `t_like` VALUES (2, 1, 1662811704, 24);
INSERT INTO `t_like` VALUES (3, 3, 1662812647, 22);
INSERT INTO `t_like` VALUES (4, 1, 1662812651, 22);
INSERT INTO `t_like` VALUES (5, 1, 1662812684, 23);
INSERT INTO `t_like` VALUES (6, 2, 1678147570, 30);
INSERT INTO `t_like` VALUES (7, 1, 1678148575, 30);
INSERT INTO `t_like` VALUES (8, 3, 1678150232, 32);

-- ----------------------------
-- Table structure for t_posting
-- ----------------------------
DROP TABLE IF EXISTS `t_posting`;
CREATE TABLE `t_posting`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `caption` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `gambar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `created_at` int NULL DEFAULT NULL,
  `created_by` int NULL DEFAULT NULL,
  `likes` int NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of t_posting
-- ----------------------------
INSERT INTO `t_posting` VALUES (1, '<p>Node.js is a cross-platform, open-source server environment that can run on Windows, Linux, Unix, macOS, and more. Node.js is a back-end JavaScript runtime environment, runs on the V8 JavaScript Engine, and executes JavaScript code outside a web browser.</p>', 'node.jpg', 1662811633, 27, 0);
INSERT INTO `t_posting` VALUES (2, '<p>Hujan hujan paling enak makan indomie</p>', 'indomie.png', 1662812139, 22, 0);
INSERT INTO `t_posting` VALUES (3, '<p><strong>My trip my advanture</strong></p>', 'trip.jpg', 1662812370, 22, 0);
INSERT INTO `t_posting` VALUES (4, '<p>Jogger edisi ulang tahun yang ke-8,dengan logo samping yang bisa diganti dan dikreasikan warnanya.</p>', 'piero_jogger_blue.jpg', 1678149306, 32, 0);

SET FOREIGN_KEY_CHECKS = 1;
