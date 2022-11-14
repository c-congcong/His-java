/*
 Navicat Premium Data Transfer

 Source Server         : his
 Source Server Type    : MySQL
 Source Server Version : 80022
 Source Host           : 114.115.155.80:3306
 Source Schema         : his

 Target Server Type    : MySQL
 Target Server Version : 80022
 File Encoding         : 65001

 Date: 03/11/2021 11:47:42
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for QRTZ_BLOB_TRIGGERS
-- ----------------------------
DROP TABLE IF EXISTS `QRTZ_BLOB_TRIGGERS`;
CREATE TABLE `QRTZ_BLOB_TRIGGERS`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `blob_data` blob NULL,
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `QRTZ_BLOB_TRIGGERS_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `QRTZ_TRIGGERS` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of QRTZ_BLOB_TRIGGERS
-- ----------------------------

-- ----------------------------
-- Table structure for QRTZ_CALENDARS
-- ----------------------------
DROP TABLE IF EXISTS `QRTZ_CALENDARS`;
CREATE TABLE `QRTZ_CALENDARS`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `calendar_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `calendar` blob NOT NULL,
  PRIMARY KEY (`sched_name`, `calendar_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of QRTZ_CALENDARS
-- ----------------------------

-- ----------------------------
-- Table structure for QRTZ_CRON_TRIGGERS
-- ----------------------------
DROP TABLE IF EXISTS `QRTZ_CRON_TRIGGERS`;
CREATE TABLE `QRTZ_CRON_TRIGGERS`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `cron_expression` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `time_zone_id` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `QRTZ_CRON_TRIGGERS_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `QRTZ_TRIGGERS` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of QRTZ_CRON_TRIGGERS
-- ----------------------------
INSERT INTO `QRTZ_CRON_TRIGGERS` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', '0/10 * * * * ?', 'Asia/Shanghai');
INSERT INTO `QRTZ_CRON_TRIGGERS` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', '0/15 * * * * ?', 'Asia/Shanghai');
INSERT INTO `QRTZ_CRON_TRIGGERS` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', '0/20 * * * * ?', 'Asia/Shanghai');

-- ----------------------------
-- Table structure for QRTZ_FIRED_TRIGGERS
-- ----------------------------
DROP TABLE IF EXISTS `QRTZ_FIRED_TRIGGERS`;
CREATE TABLE `QRTZ_FIRED_TRIGGERS`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `entry_id` varchar(95) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `instance_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `fired_time` bigint NOT NULL,
  `sched_time` bigint NOT NULL,
  `priority` int NOT NULL,
  `state` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `job_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `job_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `is_nonconcurrent` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `requests_recovery` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`sched_name`, `entry_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of QRTZ_FIRED_TRIGGERS
-- ----------------------------

-- ----------------------------
-- Table structure for QRTZ_JOB_DETAILS
-- ----------------------------
DROP TABLE IF EXISTS `QRTZ_JOB_DETAILS`;
CREATE TABLE `QRTZ_JOB_DETAILS`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `job_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `job_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `description` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `job_class_name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `is_durable` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `is_nonconcurrent` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `is_update_data` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `requests_recovery` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `job_data` blob NULL,
  PRIMARY KEY (`sched_name`, `job_name`, `job_group`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of QRTZ_JOB_DETAILS
-- ----------------------------
INSERT INTO `QRTZ_JOB_DETAILS` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', NULL, 'com.ruoyi.common.utils.job.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F5045525449455373720027636F6D2E72756F79692E70726F6A6563742E6D6F6E69746F722E646F6D61696E2E5379734A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E000978720029636F6D2E72756F79692E6672616D65776F726B2E7765622E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B597419030000787077080000017CCE73F79878707400007070707400013174000E302F3130202A202A202A202A203F74001172795461736B2E72794E6F506172616D7374000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000001740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E697A0E58F82EFBC8974000133740001317800);
INSERT INTO `QRTZ_JOB_DETAILS` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', NULL, 'com.ruoyi.common.utils.job.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F5045525449455373720027636F6D2E72756F79692E70726F6A6563742E6D6F6E69746F722E646F6D61696E2E5379734A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E000978720029636F6D2E72756F79692E6672616D65776F726B2E7765622E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B597419030000787077080000017CCE73F79878707400007070707400013174000E302F3135202A202A202A202A203F74001572795461736B2E7279506172616D7328277279272974000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000002740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E69C89E58F82EFBC8974000133740001317800);
INSERT INTO `QRTZ_JOB_DETAILS` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', NULL, 'com.ruoyi.common.utils.job.QuartzDisallowConcurrentExecution', '0', '1', '0', '0', 0xACED0005737200156F72672E71756172747A2E4A6F62446174614D61709FB083E8BFA9B0CB020000787200266F72672E71756172747A2E7574696C732E537472696E674B65794469727479466C61674D61708208E8C3FBC55D280200015A0013616C6C6F77735472616E7369656E74446174617872001D6F72672E71756172747A2E7574696C732E4469727479466C61674D617013E62EAD28760ACE0200025A000564697274794C00036D617074000F4C6A6176612F7574696C2F4D61703B787001737200116A6176612E7574696C2E486173684D61700507DAC1C31660D103000246000A6C6F6164466163746F724900097468726573686F6C6478703F4000000000000C7708000000100000000174000F5441534B5F50524F5045525449455373720027636F6D2E72756F79692E70726F6A6563742E6D6F6E69746F722E646F6D61696E2E5379734A6F6200000000000000010200084C000A636F6E63757272656E747400124C6A6176612F6C616E672F537472696E673B4C000E63726F6E45787072657373696F6E71007E00094C000C696E766F6B6554617267657471007E00094C00086A6F6247726F757071007E00094C00056A6F6249647400104C6A6176612F6C616E672F4C6F6E673B4C00076A6F624E616D6571007E00094C000D6D697366697265506F6C69637971007E00094C000673746174757371007E000978720029636F6D2E72756F79692E6672616D65776F726B2E7765622E646F6D61696E2E42617365456E7469747900000000000000010200074C0008637265617465427971007E00094C000A63726561746554696D657400104C6A6176612F7574696C2F446174653B4C0006706172616D7371007E00034C000672656D61726B71007E00094C000B73656172636856616C756571007E00094C0008757064617465427971007E00094C000A75706461746554696D6571007E000C787074000561646D696E7372000E6A6176612E7574696C2E44617465686A81014B597419030000787077080000017CCE73F79878707400007070707400013174000E302F3230202A202A202A202A203F74003872795461736B2E72794D756C7469706C65506172616D7328277279272C20747275652C20323030304C2C203331362E3530442C203130302974000744454641554C547372000E6A6176612E6C616E672E4C6F6E673B8BE490CC8F23DF0200014A000576616C7565787200106A6176612E6C616E672E4E756D62657286AC951D0B94E08B02000078700000000000000003740018E7B3BBE7BB9FE9BB98E8AEA4EFBC88E5A49AE58F82EFBC8974000133740001317800);

-- ----------------------------
-- Table structure for QRTZ_LOCKS
-- ----------------------------
DROP TABLE IF EXISTS `QRTZ_LOCKS`;
CREATE TABLE `QRTZ_LOCKS`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `lock_name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`sched_name`, `lock_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of QRTZ_LOCKS
-- ----------------------------
INSERT INTO `QRTZ_LOCKS` VALUES ('RuoyiScheduler', 'STATE_ACCESS');
INSERT INTO `QRTZ_LOCKS` VALUES ('RuoyiScheduler', 'TRIGGER_ACCESS');

-- ----------------------------
-- Table structure for QRTZ_PAUSED_TRIGGER_GRPS
-- ----------------------------
DROP TABLE IF EXISTS `QRTZ_PAUSED_TRIGGER_GRPS`;
CREATE TABLE `QRTZ_PAUSED_TRIGGER_GRPS`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`sched_name`, `trigger_group`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of QRTZ_PAUSED_TRIGGER_GRPS
-- ----------------------------

-- ----------------------------
-- Table structure for QRTZ_SCHEDULER_STATE
-- ----------------------------
DROP TABLE IF EXISTS `QRTZ_SCHEDULER_STATE`;
CREATE TABLE `QRTZ_SCHEDULER_STATE`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `instance_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `last_checkin_time` bigint NOT NULL,
  `checkin_interval` bigint NOT NULL,
  PRIMARY KEY (`sched_name`, `instance_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of QRTZ_SCHEDULER_STATE
-- ----------------------------
INSERT INTO `QRTZ_SCHEDULER_STATE` VALUES ('RuoyiScheduler', 'DESKTOP-S3CEVA51635903065024', 1635911256809, 15000);
INSERT INTO `QRTZ_SCHEDULER_STATE` VALUES ('RuoyiScheduler', 'LAPTOP-2FAFRLMH1635908660787', 1635911263798, 15000);
INSERT INTO `QRTZ_SCHEDULER_STATE` VALUES ('RuoyiScheduler', 'LEGION-LAISI1635910616187', 1635911252318, 15000);

-- ----------------------------
-- Table structure for QRTZ_SIMPLE_TRIGGERS
-- ----------------------------
DROP TABLE IF EXISTS `QRTZ_SIMPLE_TRIGGERS`;
CREATE TABLE `QRTZ_SIMPLE_TRIGGERS`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `repeat_count` bigint NOT NULL,
  `repeat_interval` bigint NOT NULL,
  `times_triggered` bigint NOT NULL,
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `QRTZ_SIMPLE_TRIGGERS_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `QRTZ_TRIGGERS` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of QRTZ_SIMPLE_TRIGGERS
-- ----------------------------

-- ----------------------------
-- Table structure for QRTZ_SIMPROP_TRIGGERS
-- ----------------------------
DROP TABLE IF EXISTS `QRTZ_SIMPROP_TRIGGERS`;
CREATE TABLE `QRTZ_SIMPROP_TRIGGERS`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `str_prop_1` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `str_prop_2` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `str_prop_3` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `int_prop_1` int NULL DEFAULT NULL,
  `int_prop_2` int NULL DEFAULT NULL,
  `long_prop_1` bigint NULL DEFAULT NULL,
  `long_prop_2` bigint NULL DEFAULT NULL,
  `dec_prop_1` decimal(13, 4) NULL DEFAULT NULL,
  `dec_prop_2` decimal(13, 4) NULL DEFAULT NULL,
  `bool_prop_1` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `bool_prop_2` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `QRTZ_SIMPROP_TRIGGERS_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `QRTZ_TRIGGERS` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of QRTZ_SIMPROP_TRIGGERS
-- ----------------------------

-- ----------------------------
-- Table structure for QRTZ_TRIGGERS
-- ----------------------------
DROP TABLE IF EXISTS `QRTZ_TRIGGERS`;
CREATE TABLE `QRTZ_TRIGGERS`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `job_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `job_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `description` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `next_fire_time` bigint NULL DEFAULT NULL,
  `prev_fire_time` bigint NULL DEFAULT NULL,
  `priority` int NULL DEFAULT NULL,
  `trigger_state` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `trigger_type` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `start_time` bigint NOT NULL,
  `end_time` bigint NULL DEFAULT NULL,
  `calendar_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL,
  `misfire_instr` smallint NULL DEFAULT NULL,
  `job_data` blob NULL,
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  INDEX `sched_name`(`sched_name`, `job_name`, `job_group`) USING BTREE,
  CONSTRAINT `QRTZ_TRIGGERS_ibfk_1` FOREIGN KEY (`sched_name`, `job_name`, `job_group`) REFERENCES `QRTZ_JOB_DETAILS` (`sched_name`, `job_name`, `job_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of QRTZ_TRIGGERS
-- ----------------------------
INSERT INTO `QRTZ_TRIGGERS` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME1', 'DEFAULT', 'TASK_CLASS_NAME1', 'DEFAULT', NULL, 1635910620000, -1, 5, 'PAUSED', 'CRON', 1635910616000, 0, NULL, 2, '');
INSERT INTO `QRTZ_TRIGGERS` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME2', 'DEFAULT', 'TASK_CLASS_NAME2', 'DEFAULT', NULL, 1635910620000, -1, 5, 'PAUSED', 'CRON', 1635910616000, 0, NULL, 2, '');
INSERT INTO `QRTZ_TRIGGERS` VALUES ('RuoyiScheduler', 'TASK_CLASS_NAME3', 'DEFAULT', 'TASK_CLASS_NAME3', 'DEFAULT', NULL, 1635910620000, -1, 5, 'PAUSED', 'CRON', 1635910617000, 0, NULL, 2, '');

-- ----------------------------
-- Table structure for charge_charge
-- ----------------------------
DROP TABLE IF EXISTS `charge_charge`;
CREATE TABLE `charge_charge`  (
  `charge_id` int NOT NULL AUTO_INCREMENT COMMENT '收费的id',
  `charge_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '收费编号',
  `charge_register_id` int NULL DEFAULT NULL COMMENT '挂号id（外键）',
  `charge_sum` int NULL DEFAULT NULL COMMENT '根据挂号id查出病例，再查出所有收费的总额',
  `charge_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '支付类型（支付宝，微信，现金）',
  `charge_status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '订单状态（0未支付,1已支付）',
  `create_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`charge_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of charge_charge
-- ----------------------------
INSERT INTO `charge_charge` VALUES (1, '123456', 1, NULL, '支付宝', '1', 'admin', '2021-10-04 13:49:31', 'admin', '2021-10-06 13:49:42', NULL);
INSERT INTO `charge_charge` VALUES (2, '123457', 2, NULL, '现金', '0', 'admin', '2021-10-05 13:49:31', 'admin', '2021-10-07 13:49:42', NULL);

-- ----------------------------
-- Table structure for charge_refund
-- ----------------------------
DROP TABLE IF EXISTS `charge_refund`;
CREATE TABLE `charge_refund`  (
  `refund_id` int NOT NULL AUTO_INCREMENT COMMENT '退费id',
  `refund_charge_id` int NULL DEFAULT NULL COMMENT '收费单号id（外键）',
  `refund_register_id` int NULL DEFAULT NULL COMMENT '挂号单号id（外键）',
  `refund_money` int NULL DEFAULT NULL COMMENT '退费金额',
  `refund_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '退费方式',
  `refund_status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '订单状态（0已退费）',
  `create_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`refund_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of charge_refund
-- ----------------------------

-- ----------------------------
-- Table structure for doctor_dept
-- ----------------------------
DROP TABLE IF EXISTS `doctor_dept`;
CREATE TABLE `doctor_dept`  (
  `dept_id` int NOT NULL AUTO_INCREMENT COMMENT '科室ID',
  `dept_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '科室名称',
  `dept_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '科室编码',
  `dept_num` bigint NULL DEFAULT 0 COMMENT '当前挂号量',
  `dept_leader` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '负责人',
  `dept_phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '手机号码',
  `status` char(1) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dept_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 14 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '科室表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of doctor_dept
-- ----------------------------
INSERT INTO `doctor_dept` VALUES (1, '内科', 'HIS-NK', 16, '赵帅飞', '18612345678', '0', 'admin', '2021-07-12 18:48:55', 'admin', '2021-10-27 15:07:26', '');
INSERT INTO `doctor_dept` VALUES (2, '外科', 'HIS-WK', 1, '路飞', '18612345678', '0', 'admin', '2021-07-12 18:48:55', 'admin', '2021-07-12 18:48:55', '');
INSERT INTO `doctor_dept` VALUES (3, '骨科', 'HIS-GK', 14, '路飞', '18612345678', '0', 'admin', '2021-07-12 18:48:55', 'admin', '2021-07-12 18:48:55', '');
INSERT INTO `doctor_dept` VALUES (4, '儿科', 'HIS-EK', 4, '路飞', '18612345678', '0', 'admin', '2021-07-12 18:48:55', 'admin', '2021-07-12 18:48:55', '');
INSERT INTO `doctor_dept` VALUES (5, '妇科', 'HIS-FK', 14, '索隆', '18612345678', '0', 'admin', '2021-07-12 18:48:55', 'admin', '2021-07-15 08:48:23', '');
INSERT INTO `doctor_dept` VALUES (6, '泌尿外科', 'HIS-NK', 3, '路飞', '18612345678', '0', 'admin', '2021-07-12 18:48:55', 'admin', '2021-07-12 18:48:55', '');
INSERT INTO `doctor_dept` VALUES (7, '心内科', 'HIS-XK', 1, '路飞', '18612345678', '1', 'admin', '2021-07-12 18:48:55', 'admin', '2021-11-04 15:07:29', '');
INSERT INTO `doctor_dept` VALUES (8, '血液科', 'HIS-XYK', 6, '路飞', '18612345678', '0', 'admin', '2021-07-12 18:48:55', 'admin', '2021-07-12 18:48:55', '');
INSERT INTO `doctor_dept` VALUES (9, '放射科', 'HIS-FSK', 2, '路飞', '18612345678', '1', 'admin', '2021-07-12 18:48:55', 'admin', '2021-11-24 15:07:33', '');
INSERT INTO `doctor_dept` VALUES (10, '化验科', 'HIS-HSK', 8, '路飞', '18612345678', '0', 'admin', '2021-07-12 18:48:55', 'admin', '2021-07-12 18:48:55', '');
INSERT INTO `doctor_dept` VALUES (11, '精神科', 'HIS-JSK', 3, '路飞', '18612345678', '0', 'admin', '2021-07-12 18:48:55', 'admin', '2021-07-12 18:48:55', '');

-- ----------------------------
-- Table structure for doctor_docters
-- ----------------------------
DROP TABLE IF EXISTS `doctor_docters`;
CREATE TABLE `doctor_docters`  (
  `d_id` int NOT NULL AUTO_INCREMENT COMMENT '医生编号 dId',
  `d_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '医生姓名 dName',
  `d_password` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '医生密码 dPassword',
  `depts_id` int NULL DEFAULT NULL COMMENT '所属部门 deptId',
  `d_phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '医生手机号 dPhone',
  `d_sex` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '医生性别    dSex',
  `d_age` int NULL DEFAULT NULL COMMENT '医生年龄    dAge',
  `d_level` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '医生级别   dLevel',
  `orderwork` int NULL DEFAULT NULL COMMENT '是否排班 1、是  2 、否  orderWork',
  `d_education_bg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '学历背景   dEducationBg',
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`d_id`) USING BTREE,
  INDEX `deptid`(`depts_id`) USING BTREE,
  CONSTRAINT `deptid` FOREIGN KEY (`depts_id`) REFERENCES `doctor_dept` (`dept_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 12 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of doctor_docters
-- ----------------------------
INSERT INTO `doctor_docters` VALUES (1, '扁鹊', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', 1, '14212345678', '1', 20, '医师', 1, '专科', 'admin', '2021-10-30 05:46:20', 'admin', '2021-10-30 05:46:20', '医生');
INSERT INTO `doctor_docters` VALUES (2, '张仲景', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', 2, '14212345678', '1', 20, '医师', 1, '专科', 'admin', '2021-10-30 05:46:20', 'admin', '2021-10-30 05:46:20', '医生');
INSERT INTO `doctor_docters` VALUES (3, '华佗', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', 3, '14212345678', '1', 20, '医师', 1, '专科', 'admin', '2021-10-30 05:46:20', 'admin', '2021-10-30 05:46:20', '医生');
INSERT INTO `doctor_docters` VALUES (4, '华佗2', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', 4, '14212345678', '1', 20, '医师', 1, '专科', 'admin', '2021-10-30 05:46:20', 'admin', '2021-10-30 05:46:20', '医生');
INSERT INTO `doctor_docters` VALUES (5, '华佗3', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', 5, '14212345678', '1', 20, '医师', 1, '专科', 'admin', '2021-10-30 05:46:20', 'admin', '2021-10-30 05:46:20', '医生');
INSERT INTO `doctor_docters` VALUES (6, '钟南山', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', 6, '14212345678', '1', 20, '医师', 1, '本科', 'admin', '2021-10-30 05:46:20', 'admin', '2021-10-30 05:46:20', '医生');
INSERT INTO `doctor_docters` VALUES (7, '华罗庚', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', 7, '14212345678', '1', 20, '医师', 1, '专科', 'admin', '2021-10-30 05:46:20', 'admin', '2021-10-30 05:46:20', '医生');
INSERT INTO `doctor_docters` VALUES (8, '爱因斯坦', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', 8, '14212345678', '1', 20, '医师', 1, '专科', 'admin', '2021-10-30 05:46:20', 'admin', '2021-10-30 05:46:20', '医生');
INSERT INTO `doctor_docters` VALUES (9, '唐尼', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', 9, '14212345678', '1', 20, '医师', 1, '专科', 'admin', '2021-10-30 05:46:20', 'admin', '2021-10-30 05:46:20', '医生');
INSERT INTO `doctor_docters` VALUES (10, '扁鹊7', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', 10, '14212345678', '1', 20, '医师', 1, '专科', 'admin', '2021-10-30 05:46:20', 'admin', '2021-10-30 05:46:20', '医生');

-- ----------------------------
-- Table structure for doctor_exam_cost
-- ----------------------------
DROP TABLE IF EXISTS `doctor_exam_cost`;
CREATE TABLE `doctor_exam_cost`  (
  `exam_id` int NOT NULL AUTO_INCREMENT COMMENT '项目费用ID---examId',
  `exam_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '项目名称------examName',
  `exam_key` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '项目关键字----examKey',
  `exam_one_price` double(10, 2) NOT NULL COMMENT '项目单价------examOnePrice',
  `exam_cost` double(10, 2) NOT NULL COMMENT '项目成本------examCost',
  `exam_unit` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '单位 examUnit',
  `exam_type` int NOT NULL COMMENT '类别 examType 1、化验类  2、拍片类',
  `status` int NOT NULL COMMENT '状态 status',
  `create_by` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建者---createBy',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间--createTime',
  `update_by` varbinary(255) NULL DEFAULT NULL COMMENT '更新者----updateBy',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间--updateTime',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注------remark',
  PRIMARY KEY (`exam_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of doctor_exam_cost
-- ----------------------------
INSERT INTO `doctor_exam_cost` VALUES (5, '乙肝五项', 'YGWX', 30.00, 10.00, '次', 1, 1, 'admin', '2021-10-30 05:46:20', 0x61646D696E, '2021-10-30 05:46:20', '乙肝五项检查');
INSERT INTO `doctor_exam_cost` VALUES (6, '血常规', 'XCG', 5.00, 1.00, '次', 1, 1, 'admin', '2021-10-30 05:46:20', 0x61646D696E, '2021-10-30 05:46:20', '血液化验');
INSERT INTO `doctor_exam_cost` VALUES (7, 'CT', 'CT', 50.00, 10.00, '次', 2, 1, 'admin', '2021-10-30 05:46:20', 0x61646D696E, '2021-10-30 05:46:20', '乙肝五项检查');
INSERT INTO `doctor_exam_cost` VALUES (8, 'X光', 'XG', 20.00, 5.00, '次', 2, 1, 'admin', '2021-10-30 05:46:20', 0x61646D696E, '2021-10-30 05:46:20', '乙肝五项检查');

-- ----------------------------
-- Table structure for doctor_patient
-- ----------------------------
DROP TABLE IF EXISTS `doctor_patient`;
CREATE TABLE `doctor_patient`  (
  `patient_id` int NOT NULL AUTO_INCREMENT COMMENT '患者id',
  `patient_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '患者姓名',
  `patient_card` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '身份证号',
  `patient_sex` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '性别(0是男,1是女，2未知)',
  `patient_age` int NULL DEFAULT NULL COMMENT '年龄',
  `patient_phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '患者的手机号',
  `patient_birth` date NULL DEFAULT NULL COMMENT '患者的生日',
  `patient_status` int NULL DEFAULT 1 COMMENT '(0未完善,1完善)',
  `patient_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '患者地址信息',
  `patient_history` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '过敏史',
  `create_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`patient_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of doctor_patient
-- ----------------------------
INSERT INTO `doctor_patient` VALUES (1, '刘子杰', '130523199807130810', '女', 23, '15731955172', '1998-07-13', 1, '河北省邢台市内丘县', '无', 'admin', '2021-07-13 15:01:13', 'admin', '2021-07-13 15:01:20', NULL);
INSERT INTO `doctor_patient` VALUES (2, '张朝阳', '130637199611142717', '男', 24, '18731215760', '1996-11-14', 0, '河北省保定市', '无', 'admin', '2021-07-13 15:02:58', 'admin', '2021-07-13 15:03:05', NULL);
INSERT INTO `doctor_patient` VALUES (3, '王思聪', '423423412', '男', 23, '1231241231', '2020-09-09', 1, '北京', '无', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `doctor_patient` VALUES (4, '王思聪', '641234123', '男', 33, '1231231', '2021-10-31', 1, '北京', '无', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `doctor_patient` VALUES (5, '王思聪', '423423412', '男', 23, '1231241231', '2020-09-09', 1, '北京', '无', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `doctor_patient` VALUES (6, '王思聪', '423423412', '男', 23, '1231241231', '2020-09-09', 1, '大连', '无', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `doctor_patient` VALUES (8, '刘子杰', '32424232', '女', 23, '15731955172', '1998-07-13', 1, '河北省邢台市内丘县', '无', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `doctor_patient` VALUES (9, '刘子杰', '32424234', '女', 23, '15731955172', '1998-07-13', 1, '河北省邢台市内丘县', '无', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `doctor_patient` VALUES (10, '刘哈哈', '3242423', '男', 32, '2131231', '2021-11-02', 2, '西安市', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `doctor_patient` VALUES (11, '吴彦祖', '132131', '男', 23, '312312', '2021-11-24', 2, '洛杉矶', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `doctor_patient` VALUES (12, '张无忌', '3423423', '男', 45, '3213123', '2021-11-24', 2, '上海', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `doctor_patient` VALUES (13, '法外狂徒', '4345345', '男', 77, '124312', '2021-11-15', 3, '南京市', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `doctor_patient` VALUES (14, '张三', '34234234', '男', 33, '13423234', '2021-11-10', 3, '武汉市', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `doctor_patient` VALUES (15, '赵四', '48324234', '男', 56, '423424', '2021-11-10', 3, '铁岭', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `doctor_patient` VALUES (16, '张无忌', '422423423', '女', 43, '141323123', '2021-11-17', 0, '阳明山', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `doctor_patient` VALUES (17, '刘国华', '342342', '男', 34, '3213123', '2021-11-09', 2, '长白山', NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for doctor_patient_history
-- ----------------------------
DROP TABLE IF EXISTS `doctor_patient_history`;
CREATE TABLE `doctor_patient_history`  (
  `history_id` int NOT NULL AUTO_INCREMENT COMMENT '病例id',
  `history_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '病例编号',
  `history_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '接诊类型（0,初诊,1复诊）',
  `history_discribe` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '病人描述',
  `history_date` datetime NULL DEFAULT NULL COMMENT '发病日期',
  `history_diagnosis` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '诊断信息',
  `history_contagion` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否是传染病(0,不传染,1传染)',
  `history_proposal` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '医生建议',
  `history_remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '医生加的备注',
  `history_patient_id` int NULL DEFAULT NULL COMMENT '患者id（外键）',
  `create_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`history_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of doctor_patient_history
-- ----------------------------
INSERT INTO `doctor_patient_history` VALUES (1, 'BL4486293686912427259', '0', '主诉1', '2021-07-14 20:51:55', '诊断信息', '0', '医生建议1111', '医生备注', 1, 'admin', '2021-07-14 21:02:08', 'admin', '2021-07-14 21:02:08', NULL);
INSERT INTO `doctor_patient_history` VALUES (2, 'BL9577769211195269992', '0', '主诉2', '2021-07-19 14:02:22', '的萨芬', '0', '医生建议2222', 'f阿发 ', 2, 'admin', '2021-07-19 14:02:30', 'admin', '2021-07-19 14:02:30', NULL);
INSERT INTO `doctor_patient_history` VALUES (3, 'sd1231445155', '0', 'zhusu3', '2021-11-02 16:26:24', 'sdfsdf', '0', 'dfsdds', 'dfsdf', 3, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `doctor_patient_history` VALUES (4, 'sd1231445155', '0', 'zhusu3', '2021-11-02 16:32:14', 'sdfsdf', '0', 'dfsdds', 'dfsdf', 4, 'ss', '2021-11-02 16:32:14', 'ss', '2021-11-02 16:32:14', NULL);
INSERT INTO `doctor_patient_history` VALUES (9, NULL, '1', '好好好', '2021-11-09 00:00:00', '好', '1', '好手法', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `doctor_patient_history` VALUES (10, 'BL1635852022131', '1', '很难受', '2021-11-10 00:00:00', '无法查明', '0', '吃点好的', '再见', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `doctor_patient_history` VALUES (11, 'BL1635852821087', '1', '撒大声地', '2021-11-10 00:00:00', '奥迪爱思', '1', ' 爱思大', ' 奥迪', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `doctor_patient_history` VALUES (12, 'BL1635856022632', '1', '好难受', '2021-11-02 00:00:00', '没救了', '1', '吃点好的', '再见', 13, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `doctor_patient_history` VALUES (13, 'BL1635909447317', '1', '一直头痛', '2021-11-08 00:00:00', '重度感冒', '0', '输液', '输液后观察', 13, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for doctor_project_fee
-- ----------------------------
DROP TABLE IF EXISTS `doctor_project_fee`;
CREATE TABLE `doctor_project_fee`  (
  `project_id` int NOT NULL AUTO_INCREMENT COMMENT '检查项目ID',
  `project_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '项目名称',
  `keyword` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '关键字',
  `project_unitprice` double(10, 2) NOT NULL COMMENT '项目费用',
  `project_cost` double(10, 2) NOT NULL COMMENT '项目成本',
  `project_times` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '项目单位',
  `project_type` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '项目类型',
  `project_dept_id` int NULL DEFAULT NULL COMMENT '所属部门的id（外键）',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `ext_01` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '扩展字段1',
  `ext_02` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '扩展字段2',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`project_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of doctor_project_fee
-- ----------------------------
INSERT INTO `doctor_project_fee` VALUES (1, '乙肝五项', 'ygwx', 100.00, 501.00, '次', '化验类', NULL, '0', '', '', '', '2021-07-13 19:11:19', '', '2021-07-15 10:58:52', NULL);
INSERT INTO `doctor_project_fee` VALUES (2, '血常规', 'xcg', 500.00, 250.00, '次', '化验类', NULL, '0', '', '', '', '2021-07-13 19:13:29', '', NULL, NULL);
INSERT INTO `doctor_project_fee` VALUES (3, 'CT', 'ct', 5000.00, 2500.00, '次', '拍片类', NULL, '0', '', '', '', '2021-07-13 21:16:42', '', NULL, NULL);
INSERT INTO `doctor_project_fee` VALUES (7, '神经检查', 'sjjc', 1000.00, 800.00, '次', '拍片类', NULL, '0', '', '', 'admin', '2021-10-31 14:10:17', 'admin', '2021-11-01 10:07:26', NULL);

-- ----------------------------
-- Table structure for doctor_register
-- ----------------------------
DROP TABLE IF EXISTS `doctor_register`;
CREATE TABLE `doctor_register`  (
  `register_id` int NOT NULL AUTO_INCREMENT COMMENT '挂号id',
  `register_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '挂号编号',
  `register_patient_id` int NULL DEFAULT NULL COMMENT '患者id（外键）',
  `register_system_registra_fee_id` int NULL DEFAULT NULL COMMENT '挂号费ID（外键）',
  `register_history_id` int NULL DEFAULT NULL COMMENT '病例id（外键）',
  `register_user_id` int NULL DEFAULT NULL COMMENT '部门id（外键） 修改为科室id',
  `register_date` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '就诊日期',
  `register_status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '状态（0未收费,1代就诊，2正在就诊，3就诊完成）',
  `register_time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '挂号时段（上午，下午，晚上）',
  `create_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`register_id`) USING BTREE,
  INDEX `register_user_id`(`register_user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of doctor_register
-- ----------------------------
INSERT INTO `doctor_register` VALUES (1, 'CH121', 1, 1, 1, 1, '2021-11-02 11:14:49', '3', '上午', 'admin', '2021-07-14 10:09:10', 'admin', '2021-07-14 10:09:17', '');
INSERT INTO `doctor_register` VALUES (2, 'CH122', 2, 1, 2, 2, '2021-11-03 01:40:31', '3', '下午', 'admin', '2021-07-14 16:17:50', 'admin', '2021-07-14 16:17:55', NULL);
INSERT INTO `doctor_register` VALUES (3, 'GH1635770251820', 3, NULL, NULL, NULL, '2021-11-02 05:47:38', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `doctor_register` VALUES (8, 'GH1635770828177', 4, NULL, NULL, NULL, '2021-11-02 00:32:43', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `doctor_register` VALUES (9, 'GH1635771352742', 5, 4, 1, 11, '2021-11-03 01:40:49', '1', '上午', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `doctor_register` VALUES (10, 'GH1635771548382', 6, 4, 1, 10, '2021-11-03 01:40:45', '1', '下午', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `doctor_register` VALUES (11, 'GH1635771934205', 7, 4, 1, 1, '2021-11-02 00:32:46', '1', '下午', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `doctor_register` VALUES (12, 'GH1635772432760', 8, 4, 1, 6, '2021-11-03 01:31:05', '1', '上午', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `doctor_register` VALUES (13, 'GH1635772532380', 9, 4, 1, 8, '2021-11-03 01:40:38', '1', '下午', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `doctor_register` VALUES (14, 'GH1635773008554', 10, 3, 1, 1, '2021-11-02 00:32:52', '1', '下午', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `doctor_register` VALUES (15, 'GH1635773082750', 13, 4, 1, 5, '2021-11-03 01:31:00', '1', '下午', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `doctor_register` VALUES (16, 'GH1635773157276', 17, 4, 1, 1, '2021-11-01 13:25:57', '1', '下午', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `doctor_register` VALUES (17, 'GH1635774066457', 11, 4, 1, 9, '2021-11-03 01:40:42', '1', '下午', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `doctor_register` VALUES (18, 'GH1635774412489', 15, 3, 1, 1, '2021-11-01 13:46:53', '1', '下午', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `doctor_register` VALUES (19, 'GH1635774551106', 10, 4, 1, 7, '2021-11-03 01:40:35', '1', '上午', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `doctor_register` VALUES (20, 'GH1635774661857', 15, 3, 1, 1, '2021-11-01 13:51:02', '1', '上午', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `doctor_register` VALUES (21, 'GH1635775598491', 12, 4, 1, 4, '2021-11-03 01:30:52', '1', '下午', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `doctor_register` VALUES (22, 'GH1635859976989', 2, 3, 1, 3, '2021-11-03 01:20:41', '1', '上午', NULL, NULL, NULL, NULL, NULL);
INSERT INTO `doctor_register` VALUES (23, 'GH1635903109821', 2, 3, 1, 3, '2021-11-03 01:31:49', '1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `doctor_register` VALUES (24, 'GH1635905724720', 1, 4, 1, 6, '2021-11-03 02:15:24', '1', NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `doctor_register` VALUES (25, 'GH1635908863095', 1, 3, 1, 3, '2021-11-03 03:07:42', '1', NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for doctor_registra_fee
-- ----------------------------
DROP TABLE IF EXISTS `doctor_registra_fee`;
CREATE TABLE `doctor_registra_fee`  (
  `registra_id` int NOT NULL AUTO_INCREMENT COMMENT '挂号费ID',
  `registra_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '挂号费名称',
  `registra_unitprice` double(10, 2) NOT NULL COMMENT '挂号费',
  `status` int NULL DEFAULT 1 COMMENT '执行状态（0正常 1失败）',
  `ext_01` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '扩展字段1',
  `ext_02` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '扩展字段2',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`registra_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of doctor_registra_fee
-- ----------------------------
INSERT INTO `doctor_registra_fee` VALUES (1, '门诊', 5.00, 0, '', '', 'admin', '2021-07-14 10:58:27', 'admin', '2021-07-14 10:58:33', '');
INSERT INTO `doctor_registra_fee` VALUES (2, '门诊+病历本', 6.00, 0, '', '', 'admin', '2021-07-14 10:59:00', 'admin', '2021-07-14 10:59:05', NULL);
INSERT INTO `doctor_registra_fee` VALUES (3, '急诊', 7.00, 0, '', '', 'admin', '2021-07-14 10:59:20', 'admin', '2021-07-14 10:59:25', NULL);
INSERT INTO `doctor_registra_fee` VALUES (4, '急诊456', 8.00, 0, '', '', 'admin', '2021-07-14 10:59:47', 'admin', '2021-07-19 14:00:19', NULL);
INSERT INTO `doctor_registra_fee` VALUES (9, '住院', 21.00, 0, '', '', 'admin', '2021-11-01 06:51:34', 'admin', '2021-11-01 15:49:42', NULL);

-- ----------------------------
-- Table structure for drugs_durg
-- ----------------------------
DROP TABLE IF EXISTS `drugs_durg`;
CREATE TABLE `drugs_durg`  (
  `durg_id` int NOT NULL AUTO_INCREMENT COMMENT '药品ID',
  `durg_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '药品名称',
  `durg_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '药品编码',
  `durg_producer` int NULL DEFAULT NULL COMMENT '生产厂家（外键ID）',
  `durg_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '药品类型',
  `durg_otc_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '处方类型',
  `durg_unit` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '单位g',
  `durg_otc_price` int NULL DEFAULT NULL COMMENT '处方价格',
  `durg_number` int NULL DEFAULT NULL COMMENT '库存量',
  `durg_number_min` int NULL DEFAULT NULL COMMENT '预警值（超过这个值变红）',
  `durg_convert` int NULL DEFAULT NULL COMMENT '换算量',
  `durg_status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '状态（0正常,1警告）',
  `create_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`durg_id`) USING BTREE,
  INDEX `pro`(`durg_producer`) USING BTREE,
  CONSTRAINT `pro` FOREIGN KEY (`durg_producer`) REFERENCES `drugs_producer` (`pro_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of drugs_durg
-- ----------------------------
INSERT INTO `drugs_durg` VALUES (1, '阿胶珠', 'sxt001', 1, '中药材', '法定处方', 'g', 2, 350, 100, 1, '0', NULL, '2021-09-28 19:21:29', NULL, NULL, NULL);
INSERT INTO `drugs_durg` VALUES (2, '醋艾炭', 'sxt002', 2, '中药饮片', '协定处方', 'g', 3, 100, 100, 1, '0', NULL, '2021-10-13 20:00:32', NULL, NULL, NULL);
INSERT INTO `drugs_durg` VALUES (3, '秋水仙碱片', 'sxt003', 1, '化学原料药及其制剂', '医师处方', 't', 4, 400, 100, 1, '0', NULL, '2021-10-05 20:00:35', NULL, NULL, NULL);
INSERT INTO `drugs_durg` VALUES (4, '黄芪', 'sxt004', 2, '抗生素', '医师处方', 'g', 5, 100, 100, 1, '0', NULL, '2021-10-04 20:00:38', NULL, NULL, NULL);
INSERT INTO `drugs_durg` VALUES (5, '防风草', 'sxt005', 3, '疫苗', '协定处方', 'g', 6, 100, 100, 1, '0', NULL, '2021-09-27 20:00:41', 'admin', NULL, NULL);
INSERT INTO `drugs_durg` VALUES (6, '何首乌', 'sxt005', 4, '中药材', '法定处方', 'g', 7, 100, 100, 1, '0', NULL, '2021-10-05 20:00:43', 'admin', NULL, NULL);

-- ----------------------------
-- Table structure for drugs_order
-- ----------------------------
DROP TABLE IF EXISTS `drugs_order`;
CREATE TABLE `drugs_order`  (
  `order_id` int NOT NULL AUTO_INCREMENT COMMENT '单据ID（CG开头的19位数字）',
  `order_sup_id` int NULL DEFAULT NULL COMMENT '供应商（外键）参考drugs_support 供应商名字',
  `order_total` double(10, 2) NULL DEFAULT NULL COMMENT '药品总计多少钱',
  `order_man` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '申请人（外键）参考system_user 名字字段',
  `create_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`order_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of drugs_order
-- ----------------------------
INSERT INTO `drugs_order` VALUES (45, 1, NULL, 'tt', NULL, '2021-11-03 00:00:00', NULL, NULL, NULL);

-- ----------------------------
-- Table structure for drugs_order_detail
-- ----------------------------
DROP TABLE IF EXISTS `drugs_order_detail`;
CREATE TABLE `drugs_order_detail`  (
  `detail_id` int NOT NULL AUTO_INCREMENT COMMENT '订单明细id',
  `detail_operator` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '入库操作人',
  `detail_date` timestamp NULL DEFAULT NULL COMMENT '入库时间',
  `detail_status` int NULL DEFAULT NULL COMMENT '状态  0 申请状态  \r\n   1代审核\r\n   2审核失败\r\n3审核成功\r\n4已入库\r\n5作废',
  `detail_drugid` int NULL DEFAULT NULL COMMENT '药品id',
  `order_id` int NULL DEFAULT NULL COMMENT '外键  订单id',
  `detail_drug_num` double NULL DEFAULT NULL COMMENT '药品批发数量',
  `detail_drug_price` double NULL DEFAULT NULL COMMENT '药品批发单价',
  `detail_bath_num` int NULL DEFAULT NULL COMMENT '批次号',
  `detail_total_price` double NULL DEFAULT NULL COMMENT '总批发额',
  `detail_remarks` varchar(999) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  `detail_norms` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '1g / 1t /..',
  PRIMARY KEY (`detail_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 52 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of drugs_order_detail
-- ----------------------------
INSERT INTO `drugs_order_detail` VALUES (142, 'tt', '2021-11-03 11:43:44', 4, 1, 45, 100, 0, 1, 0, '请修改', '1g');

-- ----------------------------
-- Table structure for drugs_pro_sup
-- ----------------------------
DROP TABLE IF EXISTS `drugs_pro_sup`;
CREATE TABLE `drugs_pro_sup`  (
  `producer_id` int NULL DEFAULT NULL,
  `support_id` int NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of drugs_pro_sup
-- ----------------------------
INSERT INTO `drugs_pro_sup` VALUES (1, 1);
INSERT INTO `drugs_pro_sup` VALUES (2, 1);
INSERT INTO `drugs_pro_sup` VALUES (3, 1);
INSERT INTO `drugs_pro_sup` VALUES (4, 1);
INSERT INTO `drugs_pro_sup` VALUES (1, 2);
INSERT INTO `drugs_pro_sup` VALUES (2, 2);
INSERT INTO `drugs_pro_sup` VALUES (3, 2);
INSERT INTO `drugs_pro_sup` VALUES (3, 3);
INSERT INTO `drugs_pro_sup` VALUES (4, 3);
INSERT INTO `drugs_pro_sup` VALUES (5, 3);
INSERT INTO `drugs_pro_sup` VALUES (1, 4);
INSERT INTO `drugs_pro_sup` VALUES (2, 4);
INSERT INTO `drugs_pro_sup` VALUES (3, 4);
INSERT INTO `drugs_pro_sup` VALUES (4, 4);
INSERT INTO `drugs_pro_sup` VALUES (5, 4);

-- ----------------------------
-- Table structure for drugs_producer
-- ----------------------------
DROP TABLE IF EXISTS `drugs_producer`;
CREATE TABLE `drugs_producer`  (
  `pro_id` int NOT NULL AUTO_INCREMENT COMMENT '厂家id',
  `pro_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '厂家名称',
  `pro_code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '厂家编码',
  `pro_boss` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '联系人',
  `pro_phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '手机号',
  `pro_keywords` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '关键字',
  `pro_status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '状态（0正常,1禁用）',
  `create_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  `pro_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '厂家地址',
  PRIMARY KEY (`pro_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of drugs_producer
-- ----------------------------
INSERT INTO `drugs_producer` VALUES (1, '云南白药', '123451', '雷军', '123456', 'ynby', '0', 'admin', '2021-07-07 20:21:40', 'admin', '2021-07-15 20:21:49', 'admin', '云南昆明');
INSERT INTO `drugs_producer` VALUES (2, '上海医药', '123452', '马云', '654321', 'shyy', '1', 'admin', '2021-07-07 20:22:15', 'admin', '2021-07-15 20:22:20', 'admin', '上海虹桥');
INSERT INTO `drugs_producer` VALUES (3, '中医药集团', '123453', '马化腾', '458979', 'zyyjt', '1', 'admin', '2021-07-07 20:22:15', 'admin', '2021-07-15 20:22:20', 'admin', '北京大兴');
INSERT INTO `drugs_producer` VALUES (4, '厂商A', '111222', '韩非子', '111222', 'hfz', '1', 'admin', NULL, NULL, NULL, NULL, '赵国');
INSERT INTO `drugs_producer` VALUES (5, '厂商B', '111333', '鬼谷子', '111333', 'ggz', '1', 'admin', NULL, NULL, NULL, NULL, '秦国');

-- ----------------------------
-- Table structure for drugs_stock
-- ----------------------------
DROP TABLE IF EXISTS `drugs_stock`;
CREATE TABLE `drugs_stock`  (
  `stock_id` int NOT NULL COMMENT '库存id',
  `stock_order_id` int NULL DEFAULT NULL COMMENT '根据订单ID获取药品ID可以获取相关属性',
  `stock_stock` int NULL DEFAULT NULL COMMENT '库存量',
  `stock_stock_min` int NULL DEFAULT NULL COMMENT '最少的库存量',
  `create_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`stock_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of drugs_stock
-- ----------------------------

-- ----------------------------
-- Table structure for drugs_support
-- ----------------------------
DROP TABLE IF EXISTS `drugs_support`;
CREATE TABLE `drugs_support`  (
  `support_id` int NOT NULL AUTO_INCREMENT COMMENT '供应商ID',
  `support_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '供应商名称',
  `support_boss` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '供应商联系人',
  `support_phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '供应商联系人电话',
  `support_card` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '银行账号',
  `support_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '地址',
  `support_status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '状态（0正常，1禁用）',
  `create_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`support_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 111 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of drugs_support
-- ----------------------------
INSERT INTO `drugs_support` VALUES (1, '腾讯', '张良', '18537215356', '6317884652231559777', 'M78星云AA省', '0', NULL, '2021-10-20 17:01:36', 'admin', NULL, NULL);
INSERT INTO `drugs_support` VALUES (2, '阿里', '项燕', '18537215357', '6317884652231559778', 'M78星云BB省', '0', NULL, '2021-10-12 17:02:08', 'admin', NULL, NULL);
INSERT INTO `drugs_support` VALUES (3, '百度', '盖聂', '18537215358', '6317884652231559779', 'M78星云CC省', '0', NULL, '2021-08-10 17:02:14', 'admin', NULL, NULL);
INSERT INTO `drugs_support` VALUES (4, '微软', '墨子', '18537215359', '6317884652231559780', 'M78星云DD省', '0', NULL, '2021-09-15 17:02:10', 'admin', NULL, NULL);

-- ----------------------------
-- Table structure for gen_table
-- ----------------------------
DROP TABLE IF EXISTS `gen_table`;
CREATE TABLE `gen_table`  (
  `table_id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '表描述',
  `sub_table_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '关联子表的表名',
  `sub_table_fk_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '子表关联的外键名',
  `class_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作）',
  `package_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '生成功能作者',
  `gen_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '生成代码方式（0zip压缩包 1自定义路径）',
  `gen_path` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '/' COMMENT '生成路径（不填默认项目路径）',
  `options` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '代码生成业务表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gen_table
-- ----------------------------
INSERT INTO `gen_table` VALUES (12, 'drugs_order', '', NULL, NULL, 'DrugsOrder', 'crud', 'com.ruoyi.project.system', 'system', 'order', NULL, 'ruoyi', '0', '/', NULL, 'admin', '2021-11-01 02:42:36', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (14, 'doctor_registra_fee', '', NULL, NULL, 'DoctorRegistraFee', 'crud', 'com.ruoyi.project.system', 'system', 'fee', NULL, 'ruoyi', '0', '/', NULL, 'admin', '2021-11-01 02:51:46', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (15, 'drugs_durg', '', NULL, NULL, 'DrugsDurg', 'crud', 'com.ruoyi.project.system', 'system', 'durg', NULL, 'ruoyi', '0', '/', NULL, 'admin', '2021-11-01 12:51:12', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (16, 'drugs_order_detail', '', NULL, NULL, 'DrugsOrderDetail', 'crud', 'com.ruoyi.project.system', 'system', 'detail', NULL, 'ruoyi', '0', '/', NULL, 'admin', '2021-11-02 00:54:36', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (17, 'register_durg', '', NULL, NULL, 'RegisterDurg', 'crud', 'com.ruoyi.project.system', 'system', 'durg', NULL, 'ruoyi', '0', '/', NULL, 'admin', '2021-11-02 01:22:16', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (18, 'doctor_patient', '', NULL, NULL, 'DoctorPatient', 'crud', 'com.ruoyi.project.system', 'system', 'patient', NULL, 'ruoyi', '0', '/', NULL, 'admin', '2021-11-02 01:42:13', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (19, 'charge_charge', '', NULL, NULL, 'ChargeCharge', 'crud', 'com.ruoyi.project.system', 'system', 'charge', NULL, 'ruoyi', '0', '/', NULL, 'admin', '2021-11-02 05:56:20', '', NULL, NULL);
INSERT INTO `gen_table` VALUES (20, 'doctor_patient_history', '', NULL, NULL, 'DoctorPatientHistory', 'crud', 'com.ruoyi.project.system', 'system', 'history', NULL, 'ruoyi', '0', '/', NULL, 'admin', '2021-11-02 07:28:37', '', NULL, NULL);

-- ----------------------------
-- Table structure for gen_table_column
-- ----------------------------
DROP TABLE IF EXISTS `gen_table_column`;
CREATE TABLE `gen_table_column`  (
  `column_id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '字典类型',
  `sort` int NULL DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 228 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '代码生成业务表字段' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gen_table_column
-- ----------------------------
INSERT INTO `gen_table_column` VALUES (121, '12', 'order_id', '单据ID（CG开头的19位数字）', 'int', 'Long', 'orderId', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2021-11-01 02:42:36', '', NULL);
INSERT INTO `gen_table_column` VALUES (122, '12', 'order_sup_id', '供应商（外键）参考drugs_support 供应商名字', 'int', 'Long', 'orderSupId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2021-11-01 02:42:36', '', NULL);
INSERT INTO `gen_table_column` VALUES (123, '12', 'order_total', '药品总计多少钱', 'double(10,2)', 'BigDecimal', 'orderTotal', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2021-11-01 02:42:36', '', NULL);
INSERT INTO `gen_table_column` VALUES (124, '12', 'order_man', '申请人（外键）参考system_user 名字字段', 'varchar(255)', 'String', 'orderMan', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2021-11-01 02:42:36', '', NULL);
INSERT INTO `gen_table_column` VALUES (125, '12', 'create_by', '创建者', 'varchar(255)', 'String', 'createBy', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 5, 'admin', '2021-11-01 02:42:36', '', NULL);
INSERT INTO `gen_table_column` VALUES (126, '12', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 6, 'admin', '2021-11-01 02:42:36', '', NULL);
INSERT INTO `gen_table_column` VALUES (127, '12', 'update_by', '更新者', 'varchar(255)', 'String', 'updateBy', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'input', '', 7, 'admin', '2021-11-01 02:42:36', '', NULL);
INSERT INTO `gen_table_column` VALUES (128, '12', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 8, 'admin', '2021-11-01 02:42:36', '', NULL);
INSERT INTO `gen_table_column` VALUES (129, '12', 'remark', '备注', 'varchar(255)', 'String', 'remark', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'input', '', 9, 'admin', '2021-11-01 02:42:36', '', NULL);
INSERT INTO `gen_table_column` VALUES (142, '14', 'registra_id', '挂号费ID', 'int', 'Long', 'registraId', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2021-11-01 02:51:46', '', NULL);
INSERT INTO `gen_table_column` VALUES (143, '14', 'registra_name', '挂号费名称', 'varchar(64)', 'String', 'registraName', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2021-11-01 02:51:46', '', NULL);
INSERT INTO `gen_table_column` VALUES (144, '14', 'registra_unitprice', '挂号费', 'double(10,2)', 'BigDecimal', 'registraUnitprice', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2021-11-01 02:51:46', '', NULL);
INSERT INTO `gen_table_column` VALUES (145, '14', 'status', '执行状态（0正常 1失败）', 'int', 'Long', 'status', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', '', 4, 'admin', '2021-11-01 02:51:46', '', NULL);
INSERT INTO `gen_table_column` VALUES (146, '14', 'ext_01', '扩展字段1', 'varchar(64)', 'String', 'ext01', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2021-11-01 02:51:46', '', NULL);
INSERT INTO `gen_table_column` VALUES (147, '14', 'ext_02', '扩展字段2', 'varchar(64)', 'String', 'ext02', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2021-11-01 02:51:46', '', NULL);
INSERT INTO `gen_table_column` VALUES (148, '14', 'create_by', '创建者', 'varchar(64)', 'String', 'createBy', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 7, 'admin', '2021-11-01 02:51:46', '', NULL);
INSERT INTO `gen_table_column` VALUES (149, '14', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 8, 'admin', '2021-11-01 02:51:46', '', NULL);
INSERT INTO `gen_table_column` VALUES (150, '14', 'update_by', '更新者', 'varchar(64)', 'String', 'updateBy', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'input', '', 9, 'admin', '2021-11-01 02:51:46', '', NULL);
INSERT INTO `gen_table_column` VALUES (151, '14', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 10, 'admin', '2021-11-01 02:51:46', '', NULL);
INSERT INTO `gen_table_column` VALUES (152, '14', 'remark', '备注', 'varchar(500)', 'String', 'remark', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'textarea', '', 11, 'admin', '2021-11-01 02:51:46', '', NULL);
INSERT INTO `gen_table_column` VALUES (153, '15', 'durg_id', '药品ID', 'int', 'Long', 'durgId', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2021-11-01 12:51:12', '', NULL);
INSERT INTO `gen_table_column` VALUES (154, '15', 'durg_name', '药品名称', 'varchar(255)', 'String', 'durgName', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2021-11-01 12:51:12', '', NULL);
INSERT INTO `gen_table_column` VALUES (155, '15', 'durg_code', '药品编码', 'varchar(255)', 'String', 'durgCode', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2021-11-01 12:51:12', '', NULL);
INSERT INTO `gen_table_column` VALUES (156, '15', 'durg_producer', '生产厂家（外键ID）', 'int', 'Long', 'durgProducer', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2021-11-01 12:51:12', '', NULL);
INSERT INTO `gen_table_column` VALUES (157, '15', 'durg_type', '药品类型', 'varchar(255)', 'String', 'durgType', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', '', 5, 'admin', '2021-11-01 12:51:12', '', NULL);
INSERT INTO `gen_table_column` VALUES (158, '15', 'durg_otc_type', '处方类型', 'varchar(255)', 'String', 'durgOtcType', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', '', 6, 'admin', '2021-11-01 12:51:12', '', NULL);
INSERT INTO `gen_table_column` VALUES (159, '15', 'durg_unit', '单位g', 'varchar(255)', 'String', 'durgUnit', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2021-11-01 12:51:12', '', NULL);
INSERT INTO `gen_table_column` VALUES (160, '15', 'durg_otc_price', '处方价格', 'int', 'Long', 'durgOtcPrice', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2021-11-01 12:51:13', '', NULL);
INSERT INTO `gen_table_column` VALUES (161, '15', 'durg_number', '库存量', 'int', 'Long', 'durgNumber', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 9, 'admin', '2021-11-01 12:51:13', '', NULL);
INSERT INTO `gen_table_column` VALUES (162, '15', 'durg_number_min', '预警值（超过这个值变红）', 'int', 'Long', 'durgNumberMin', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 10, 'admin', '2021-11-01 12:51:13', '', NULL);
INSERT INTO `gen_table_column` VALUES (163, '15', 'durg_convert', '换算量', 'int', 'Long', 'durgConvert', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 11, 'admin', '2021-11-01 12:51:13', '', NULL);
INSERT INTO `gen_table_column` VALUES (164, '15', 'durg_status', '状态（0正常,1警告）', 'char(1)', 'String', 'durgStatus', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', '', 12, 'admin', '2021-11-01 12:51:13', '', NULL);
INSERT INTO `gen_table_column` VALUES (165, '15', 'create_by', '创建者', 'varchar(255)', 'String', 'createBy', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 13, 'admin', '2021-11-01 12:51:13', '', NULL);
INSERT INTO `gen_table_column` VALUES (166, '15', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 14, 'admin', '2021-11-01 12:51:13', '', NULL);
INSERT INTO `gen_table_column` VALUES (167, '15', 'update_by', '更新者', 'varchar(255)', 'String', 'updateBy', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'input', '', 15, 'admin', '2021-11-01 12:51:13', '', NULL);
INSERT INTO `gen_table_column` VALUES (168, '15', 'update_time', '创建时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 16, 'admin', '2021-11-01 12:51:13', '', NULL);
INSERT INTO `gen_table_column` VALUES (169, '15', 'remark', '备注', 'varchar(255)', 'String', 'remark', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'input', '', 17, 'admin', '2021-11-01 12:51:13', '', NULL);
INSERT INTO `gen_table_column` VALUES (170, '16', 'detail_id', '订单明细id', 'int', 'Long', 'detailId', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2021-11-02 00:54:36', '', NULL);
INSERT INTO `gen_table_column` VALUES (171, '16', 'detail_operator', '入库操作人', 'varchar(255)', 'String', 'detailOperator', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2021-11-02 00:54:36', '', NULL);
INSERT INTO `gen_table_column` VALUES (172, '16', 'detail_date', '入库时间', 'timestamp', 'Date', 'detailDate', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 3, 'admin', '2021-11-02 00:54:36', '', NULL);
INSERT INTO `gen_table_column` VALUES (173, '16', 'detail_status', '状态  0 申请状态  \r\n   1代审核\r\n   2审核失败\r\n3审核成功\r\n4已入库\r\n5作废', 'int', 'Long', 'detailStatus', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', '', 4, 'admin', '2021-11-02 00:54:36', '', NULL);
INSERT INTO `gen_table_column` VALUES (174, '16', 'detail_drugid', '药品id', 'int', 'Long', 'detailDrugid', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2021-11-02 00:54:36', '', NULL);
INSERT INTO `gen_table_column` VALUES (175, '16', 'order_id', '外键  订单id', 'int', 'Long', 'orderId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2021-11-02 00:54:36', '', NULL);
INSERT INTO `gen_table_column` VALUES (176, '16', 'detail_drug_num', '药品批发数量', 'double', 'Long', 'detailDrugNum', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2021-11-02 00:54:36', '', NULL);
INSERT INTO `gen_table_column` VALUES (177, '16', 'detail_drug_price', '药品批发单价', 'double', 'Long', 'detailDrugPrice', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2021-11-02 00:54:36', '', NULL);
INSERT INTO `gen_table_column` VALUES (178, '16', 'detail_bath_num', '批次号', 'int', 'Long', 'detailBathNum', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 9, 'admin', '2021-11-02 00:54:36', '', NULL);
INSERT INTO `gen_table_column` VALUES (179, '16', 'detail_total_price', '总批发额', 'double', 'Long', 'detailTotalPrice', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 10, 'admin', '2021-11-02 00:54:36', '', NULL);
INSERT INTO `gen_table_column` VALUES (180, '16', 'detail_remarks', '备注', 'varchar(999)', 'String', 'detailRemarks', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'textarea', '', 11, 'admin', '2021-11-02 00:54:36', '', NULL);
INSERT INTO `gen_table_column` VALUES (181, '16', 'detail_norms', '1g / 1t /..', 'varchar(20)', 'String', 'detailNorms', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 12, 'admin', '2021-11-02 00:54:36', '', NULL);
INSERT INTO `gen_table_column` VALUES (182, '17', 'register_id', '挂号id(关联挂号表)', 'int', 'Long', 'registerId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 1, 'admin', '2021-11-02 01:22:16', '', NULL);
INSERT INTO `gen_table_column` VALUES (183, '17', 'durg_type_id', '开药的类型（外键）durg_durg', 'int', 'Long', 'durgTypeId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2021-11-02 01:22:16', '', NULL);
INSERT INTO `gen_table_column` VALUES (184, '17', 'durg_count', '开药的数量', 'int', 'Long', 'durgCount', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2021-11-02 01:22:16', '', NULL);
INSERT INTO `gen_table_column` VALUES (185, '17', 'durg_exam', '检查的类型（外键）exam_cost', 'int', 'Long', 'durgExam', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2021-11-02 01:22:16', '', NULL);
INSERT INTO `gen_table_column` VALUES (186, '17', 'drug_remark', '服用备注', 'varchar(255)', 'String', 'drugRemark', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2021-11-02 01:22:16', '', NULL);
INSERT INTO `gen_table_column` VALUES (187, '18', 'patient_id', '患者id', 'int', 'Long', 'patientId', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2021-11-02 01:42:13', '', NULL);
INSERT INTO `gen_table_column` VALUES (188, '18', 'patient_name', '患者姓名', 'varchar(255)', 'String', 'patientName', '0', '0', '1', '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2021-11-02 01:42:13', '', NULL);
INSERT INTO `gen_table_column` VALUES (189, '18', 'patient_card', '身份证号', 'varchar(255)', 'String', 'patientCard', '0', '0', '1', '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2021-11-02 01:42:13', '', NULL);
INSERT INTO `gen_table_column` VALUES (190, '18', 'patient_sex', '性别(0是男,1是女，2未知)', 'varchar(1)', 'String', 'patientSex', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', '', 4, 'admin', '2021-11-02 01:42:14', '', NULL);
INSERT INTO `gen_table_column` VALUES (191, '18', 'patient_age', '年龄', 'int', 'Long', 'patientAge', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2021-11-02 01:42:14', '', NULL);
INSERT INTO `gen_table_column` VALUES (192, '18', 'patient_phone', '患者的手机号', 'varchar(255)', 'String', 'patientPhone', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2021-11-02 01:42:14', '', NULL);
INSERT INTO `gen_table_column` VALUES (193, '18', 'patient_birth', '患者的生日', 'date', 'Date', 'patientBirth', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 7, 'admin', '2021-11-02 01:42:14', '', NULL);
INSERT INTO `gen_table_column` VALUES (194, '18', 'patient_status', '(0未完善,1完善)', 'int', 'Long', 'patientStatus', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', '', 8, 'admin', '2021-11-02 01:42:14', '', NULL);
INSERT INTO `gen_table_column` VALUES (195, '18', 'patient_address', '患者地址信息', 'varchar(255)', 'String', 'patientAddress', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 9, 'admin', '2021-11-02 01:42:14', '', NULL);
INSERT INTO `gen_table_column` VALUES (196, '18', 'patient_history', '过敏史', 'varchar(255)', 'String', 'patientHistory', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 10, 'admin', '2021-11-02 01:42:14', '', NULL);
INSERT INTO `gen_table_column` VALUES (197, '18', 'create_by', '创建者', 'varchar(255)', 'String', 'createBy', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 11, 'admin', '2021-11-02 01:42:14', '', NULL);
INSERT INTO `gen_table_column` VALUES (198, '18', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 12, 'admin', '2021-11-02 01:42:14', '', NULL);
INSERT INTO `gen_table_column` VALUES (199, '18', 'update_by', '更新者', 'varchar(255)', 'String', 'updateBy', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'input', '', 13, 'admin', '2021-11-02 01:42:14', '', NULL);
INSERT INTO `gen_table_column` VALUES (200, '18', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 14, 'admin', '2021-11-02 01:42:14', '', NULL);
INSERT INTO `gen_table_column` VALUES (201, '18', 'remark', '备注', 'varchar(255)', 'String', 'remark', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'input', '', 15, 'admin', '2021-11-02 01:42:14', '', NULL);
INSERT INTO `gen_table_column` VALUES (202, '19', 'charge_id', '收费的id', 'int', 'Long', 'chargeId', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2021-11-02 05:56:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (203, '19', 'charge_number', '收费编号', 'varchar(255)', 'String', 'chargeNumber', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2021-11-02 05:56:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (204, '19', 'charge_register_id', '挂号id（外键）', 'int', 'Long', 'chargeRegisterId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2021-11-02 05:56:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (205, '19', 'charge_sum', '根据挂号id查出病例，再查出所有收费的总额', 'int', 'Long', 'chargeSum', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2021-11-02 05:56:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (206, '19', 'charge_type', '支付类型（支付宝，微信，现金）', 'varchar(255)', 'String', 'chargeType', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', '', 5, 'admin', '2021-11-02 05:56:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (207, '19', 'charge_status', '订单状态（0未支付,1已支付）', 'char(1)', 'String', 'chargeStatus', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'radio', '', 6, 'admin', '2021-11-02 05:56:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (208, '19', 'create_by', '创建者', 'varchar(255)', 'String', 'createBy', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 7, 'admin', '2021-11-02 05:56:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (209, '19', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 8, 'admin', '2021-11-02 05:56:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (210, '19', 'update_by', '更新者', 'varchar(255)', 'String', 'updateBy', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'input', '', 9, 'admin', '2021-11-02 05:56:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (211, '19', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 10, 'admin', '2021-11-02 05:56:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (212, '19', 'remark', '备注', 'varchar(255)', 'String', 'remark', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'input', '', 11, 'admin', '2021-11-02 05:56:20', '', NULL);
INSERT INTO `gen_table_column` VALUES (213, '20', 'history_id', '病例id', 'int', 'Long', 'historyId', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2021-11-02 07:28:37', '', NULL);
INSERT INTO `gen_table_column` VALUES (214, '20', 'history_number', '病例编号', 'varchar(255)', 'String', 'historyNumber', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2021-11-02 07:28:37', '', NULL);
INSERT INTO `gen_table_column` VALUES (215, '20', 'history_type', '接诊类型（0,初诊,1复诊）', 'char(1)', 'String', 'historyType', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', '', 3, 'admin', '2021-11-02 07:28:37', '', NULL);
INSERT INTO `gen_table_column` VALUES (216, '20', 'history_discribe', '病人描述', 'varchar(255)', 'String', 'historyDiscribe', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2021-11-02 07:28:37', '', NULL);
INSERT INTO `gen_table_column` VALUES (217, '20', 'history_date', '发病日期', 'datetime', 'Date', 'historyDate', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 5, 'admin', '2021-11-02 07:28:37', '', NULL);
INSERT INTO `gen_table_column` VALUES (218, '20', 'history_diagnosis', '诊断信息', 'varchar(255)', 'String', 'historyDiagnosis', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2021-11-02 07:28:37', '', NULL);
INSERT INTO `gen_table_column` VALUES (219, '20', 'history_contagion', '是否是传染病(0,不传染,1传染)', 'char(1)', 'String', 'historyContagion', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2021-11-02 07:28:37', '', NULL);
INSERT INTO `gen_table_column` VALUES (220, '20', 'history_proposal', '医生建议', 'varchar(255)', 'String', 'historyProposal', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 8, 'admin', '2021-11-02 07:28:37', '', NULL);
INSERT INTO `gen_table_column` VALUES (221, '20', 'history_remark', '医生加的备注', 'varchar(255)', 'String', 'historyRemark', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 9, 'admin', '2021-11-02 07:28:37', '', NULL);
INSERT INTO `gen_table_column` VALUES (222, '20', 'history_patient_id', '患者id（外键）', 'int', 'Long', 'historyPatientId', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 10, 'admin', '2021-11-02 07:28:37', '', NULL);
INSERT INTO `gen_table_column` VALUES (223, '20', 'create_by', '创建者', 'varchar(255)', 'String', 'createBy', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 11, 'admin', '2021-11-02 07:28:37', '', NULL);
INSERT INTO `gen_table_column` VALUES (224, '20', 'create_time', '创建时间', 'datetime', 'Date', 'createTime', '0', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'datetime', '', 12, 'admin', '2021-11-02 07:28:38', '', NULL);
INSERT INTO `gen_table_column` VALUES (225, '20', 'update_by', '更新者', 'varchar(255)', 'String', 'updateBy', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'input', '', 13, 'admin', '2021-11-02 07:28:38', '', NULL);
INSERT INTO `gen_table_column` VALUES (226, '20', 'update_time', '更新时间', 'datetime', 'Date', 'updateTime', '0', '0', NULL, '1', '1', NULL, NULL, 'EQ', 'datetime', '', 14, 'admin', '2021-11-02 07:28:38', '', NULL);
INSERT INTO `gen_table_column` VALUES (227, '20', 'remark', '备注', 'varchar(255)', 'String', 'remark', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'input', '', 15, 'admin', '2021-11-02 07:28:38', '', NULL);

-- ----------------------------
-- Table structure for register_durg
-- ----------------------------
DROP TABLE IF EXISTS `register_durg`;
CREATE TABLE `register_durg`  (
  `register_id` int NOT NULL AUTO_INCREMENT COMMENT '挂号id(关联挂号表)',
  `durg_type_id` int NULL DEFAULT NULL COMMENT '开药的类型（外键）durg_durg',
  `durg_count` int NULL DEFAULT NULL COMMENT '开药的数量',
  `durg_exam` int NULL DEFAULT NULL COMMENT '检查的类型（外键）exam_cost',
  `drug_remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '药物的服用备注',
  `drug_price` double(10, 2) NULL DEFAULT 0.00 COMMENT '药物的价格',
  `check_price` double(10, 2) NULL DEFAULT 0.00 COMMENT '检查的价格',
  `check_remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '检查的备注',
  PRIMARY KEY (`register_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of register_durg
-- ----------------------------
INSERT INTO `register_durg` VALUES (1, 1, 11, 6, '一天三次？？？这是啥？', 2.00, 1.00, '胜多负少');
INSERT INTO `register_durg` VALUES (2, 2, 22, 5, '一天两次？俺不懂', 3.00, 2.00, '似懂非懂');
INSERT INTO `register_durg` VALUES (3, NULL, NULL, 1, NULL, 0.00, 12.10, '');
INSERT INTO `register_durg` VALUES (4, NULL, NULL, 2, NULL, 0.00, 12.20, 'ddd');
INSERT INTO `register_durg` VALUES (5, NULL, NULL, 3, NULL, 0.00, 12.30, '');

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config`  (
  `config_id` int NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '参数配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES (1, '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-blue', 'Y', 'admin', '2021-10-30 07:47:59', '', NULL, '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow');
INSERT INTO `sys_config` VALUES (2, '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', 'admin', '2021-10-30 07:47:59', '', NULL, '初始化密码 123456');
INSERT INTO `sys_config` VALUES (3, '主框架页-侧边栏主题', 'sys.index.sideTheme', 'theme-dark', 'Y', 'admin', '2021-10-30 07:47:59', '', NULL, '深色主题theme-dark，浅色主题theme-light');

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept`  (
  `dept_id` bigint NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint NULL DEFAULT 0 COMMENT '父部门id',
  `ancestors` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '部门名称',
  `order_num` int NULL DEFAULT 0 COMMENT '显示顺序',
  `leader` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '邮箱',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 200 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '部门表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES (100, 0, '0', '若依科技', 0, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2021-10-30 07:47:58', '', NULL);
INSERT INTO `sys_dept` VALUES (101, 100, '0,100', '深圳总公司', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2021-10-30 07:47:58', '', NULL);
INSERT INTO `sys_dept` VALUES (102, 100, '0,100', '长沙分公司', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2021-10-30 07:47:58', '', NULL);
INSERT INTO `sys_dept` VALUES (103, 101, '0,100,101', '研发部门', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2021-10-30 07:47:58', '', NULL);
INSERT INTO `sys_dept` VALUES (104, 101, '0,100,101', '市场部门', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2021-10-30 07:47:58', '', NULL);
INSERT INTO `sys_dept` VALUES (105, 101, '0,100,101', '测试部门', 3, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2021-10-30 07:47:58', '', NULL);
INSERT INTO `sys_dept` VALUES (106, 101, '0,100,101', '财务部门', 4, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2021-10-30 07:47:58', '', NULL);
INSERT INTO `sys_dept` VALUES (107, 101, '0,100,101', '运维部门', 5, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2021-10-30 07:47:58', '', NULL);
INSERT INTO `sys_dept` VALUES (108, 102, '0,100,102', '市场部门', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2021-10-30 07:47:58', '', NULL);
INSERT INTO `sys_dept` VALUES (109, 102, '0,100,102', '财务部门', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2021-10-30 07:47:58', '', NULL);

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data`  (
  `dict_code` bigint NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int NULL DEFAULT 0 COMMENT '字典排序',
  `dict_label` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 129 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '字典数据表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
INSERT INTO `sys_dict_data` VALUES (1, 1, '男', '0', 'sys_user_sex', '', '', 'Y', '0', 'admin', '2021-10-30 07:47:59', '', NULL, '性别男');
INSERT INTO `sys_dict_data` VALUES (2, 2, '女', '1', 'sys_user_sex', '', '', 'N', '0', 'admin', '2021-10-30 07:47:59', '', NULL, '性别女');
INSERT INTO `sys_dict_data` VALUES (3, 3, '未知', '2', 'sys_user_sex', '', '', 'N', '0', 'admin', '2021-10-30 07:47:59', '', NULL, '性别未知');
INSERT INTO `sys_dict_data` VALUES (4, 1, '显示', '0', 'sys_show_hide', '', 'primary', 'Y', '0', 'admin', '2021-10-30 07:47:59', '', NULL, '显示菜单');
INSERT INTO `sys_dict_data` VALUES (5, 2, '隐藏', '1', 'sys_show_hide', '', 'danger', 'N', '0', 'admin', '2021-10-30 07:47:59', '', NULL, '隐藏菜单');
INSERT INTO `sys_dict_data` VALUES (6, 1, '正常', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', 'admin', '2021-10-30 07:47:59', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (7, 2, '停用', '1', 'sys_normal_disable', '', 'danger', 'N', '0', 'admin', '2021-10-30 07:47:59', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (8, 1, '正常', '0', 'sys_job_status', '', 'primary', 'Y', '0', 'admin', '2021-10-30 07:47:59', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (9, 2, '暂停', '1', 'sys_job_status', '', 'danger', 'N', '0', 'admin', '2021-10-30 07:47:59', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (10, 1, '默认', 'DEFAULT', 'sys_job_group', '', '', 'Y', '0', 'admin', '2021-10-30 07:47:59', '', NULL, '默认分组');
INSERT INTO `sys_dict_data` VALUES (11, 2, '系统', 'SYSTEM', 'sys_job_group', '', '', 'N', '0', 'admin', '2021-10-30 07:47:59', '', NULL, '系统分组');
INSERT INTO `sys_dict_data` VALUES (12, 1, '是', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', 'admin', '2021-10-30 07:47:59', '', NULL, '系统默认是');
INSERT INTO `sys_dict_data` VALUES (13, 2, '否', 'N', 'sys_yes_no', '', 'danger', 'N', '0', 'admin', '2021-10-30 07:47:59', '', NULL, '系统默认否');
INSERT INTO `sys_dict_data` VALUES (14, 1, '通知', '1', 'sys_notice_type', '', 'warning', 'Y', '0', 'admin', '2021-10-30 07:47:59', '', NULL, '通知');
INSERT INTO `sys_dict_data` VALUES (15, 2, '公告', '2', 'sys_notice_type', '', 'success', 'N', '0', 'admin', '2021-10-30 07:47:59', '', NULL, '公告');
INSERT INTO `sys_dict_data` VALUES (16, 1, '正常', '0', 'sys_notice_status', '', 'primary', 'Y', '0', 'admin', '2021-10-30 07:47:59', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (17, 2, '关闭', '1', 'sys_notice_status', '', 'danger', 'N', '0', 'admin', '2021-10-30 07:47:59', '', NULL, '关闭状态');
INSERT INTO `sys_dict_data` VALUES (18, 1, '新增', '1', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2021-10-30 07:47:59', '', NULL, '新增操作');
INSERT INTO `sys_dict_data` VALUES (19, 2, '修改', '2', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2021-10-30 07:47:59', '', NULL, '修改操作');
INSERT INTO `sys_dict_data` VALUES (20, 3, '删除', '3', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2021-10-30 07:47:59', '', NULL, '删除操作');
INSERT INTO `sys_dict_data` VALUES (21, 4, '授权', '4', 'sys_oper_type', '', 'primary', 'N', '0', 'admin', '2021-10-30 07:47:59', '', NULL, '授权操作');
INSERT INTO `sys_dict_data` VALUES (22, 5, '导出', '5', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2021-10-30 07:47:59', '', NULL, '导出操作');
INSERT INTO `sys_dict_data` VALUES (23, 6, '导入', '6', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2021-10-30 07:47:59', '', NULL, '导入操作');
INSERT INTO `sys_dict_data` VALUES (24, 7, '强退', '7', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2021-10-30 07:47:59', '', NULL, '强退操作');
INSERT INTO `sys_dict_data` VALUES (25, 8, '生成代码', '8', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2021-10-30 07:47:59', '', NULL, '生成操作');
INSERT INTO `sys_dict_data` VALUES (26, 9, '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2021-10-30 07:47:59', '', NULL, '清空操作');
INSERT INTO `sys_dict_data` VALUES (27, 1, '成功', '0', 'sys_common_status', '', 'primary', 'N', '0', 'admin', '2021-10-30 07:47:59', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (28, 2, '失败', '1', 'sys_common_status', '', 'danger', 'N', '0', 'admin', '2021-10-30 07:47:59', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (29, 1, '化验类', '化验类', 'sys_normal_types', NULL, NULL, 'N', '0', 'admin', '2021-10-31 17:03:57', '', NULL, '化验类');
INSERT INTO `sys_dict_data` VALUES (30, 2, '拍片类', '拍片类', 'sys_normal_types', NULL, NULL, 'N', '0', 'admin', '2021-10-31 17:04:50', '', NULL, '拍片类');
INSERT INTO `sys_dict_data` VALUES (100, 1, '申请状态', '0', 'order_detail_status', NULL, NULL, 'N', '0', 'admin', '2021-10-31 09:36:50', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (101, 2, '待审状态', '1', 'order_detail_status', NULL, NULL, 'N', '0', 'admin', '2021-10-31 09:37:04', 'admin', '2021-11-02 01:53:27', NULL);
INSERT INTO `sys_dict_data` VALUES (102, 3, '审核失败', '2', 'order_detail_status', NULL, NULL, 'N', '0', 'admin', '2021-10-31 09:37:57', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (103, 4, '审核成功', '3', 'order_detail_status', NULL, NULL, 'N', '0', 'admin', '2021-10-31 09:38:27', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (104, 5, '入库成功', '4', 'order_detail_status', NULL, NULL, 'N', '0', 'admin', '2021-10-31 09:38:36', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (105, 6, '作废状态', '5', 'order_detail_status', NULL, NULL, 'N', '0', 'admin', '2021-10-31 09:38:59', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (109, 0, '上午', '上午', 'doctor_register_time', NULL, NULL, 'N', '0', 'admin', '2021-11-01 02:27:01', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (110, 1, '下午', '下午', 'doctor_register_time', NULL, NULL, 'N', '0', 'admin', '2021-11-01 02:27:14', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (111, 2, '晚上', '晚上', 'doctor_register_time', NULL, NULL, 'N', '0', 'admin', '2021-11-01 02:27:26', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (112, 0, '未收费', '0', 'register_statusa', NULL, NULL, 'N', '0', 'admin', '2021-11-01 02:33:46', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (113, 1, '待就诊', '1', 'register_statusa', NULL, NULL, 'N', '0', 'admin', '2021-11-01 02:34:02', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (114, 2, '正在就诊', '2', 'register_statusa', NULL, NULL, 'N', '0', 'admin', '2021-11-01 02:34:18', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (115, 3, '就诊完成', '3', 'register_statusa', NULL, NULL, 'N', '0', 'admin', '2021-11-01 02:34:31', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (116, 1, '中药材', '中药材', 'order_drug_type', NULL, NULL, 'N', '0', 'admin', '2021-11-01 03:37:45', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (117, 2, '中药饮片', '中药饮片', 'order_drug_type', NULL, NULL, 'N', '0', 'admin', '2021-11-01 03:37:58', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (118, 3, '化学原料药及其制剂', '化学原料药及其制剂', 'order_drug_type', NULL, NULL, 'N', '0', 'admin', '2021-11-01 03:38:15', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (119, 4, '抗生素', '抗生素', 'order_drug_type', NULL, NULL, 'N', '0', 'admin', '2021-11-01 03:38:21', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (120, 5, '疫苗', '疫苗', 'order_drug_type', NULL, NULL, 'N', '0', 'admin', '2021-11-01 03:38:37', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (121, 1, '法定处方', '法定处方', 'order_otc_type', NULL, NULL, 'N', '0', 'admin', '2021-11-01 03:41:17', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (122, 2, '协定处方', '协定处方', 'order_otc_type', NULL, NULL, 'N', '0', 'admin', '2021-11-01 03:41:24', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (123, 3, '医师处方', '医师处方', 'order_otc_type', NULL, NULL, 'N', '0', 'admin', '2021-11-01 03:41:29', '', NULL, NULL);
INSERT INTO `sys_dict_data` VALUES (124, 1, '腾讯', '1', 'drug_support_name', NULL, NULL, 'N', '0', 'admin', '2021-11-01 04:51:59', 'admin', '2021-11-03 02:45:28', NULL);
INSERT INTO `sys_dict_data` VALUES (125, 2, '阿里', '2', 'drug_support_name', NULL, NULL, 'N', '0', 'admin', '2021-11-01 04:52:14', 'admin', '2021-11-03 02:45:33', NULL);
INSERT INTO `sys_dict_data` VALUES (126, 3, '百度', '3', 'drug_support_name', NULL, NULL, 'N', '0', 'admin', '2021-11-01 04:52:26', 'admin', '2021-11-03 02:45:37', NULL);
INSERT INTO `sys_dict_data` VALUES (127, 4, '微软', '4', 'drug_support_name', NULL, NULL, 'N', '0', 'admin', '2021-11-01 04:53:01', 'admin', '2021-11-03 02:45:44', NULL);

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type`  (
  `dict_id` bigint NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '字典类型',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`) USING BTREE,
  UNIQUE INDEX `dict_type`(`dict_type`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 106 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '字典类型表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO `sys_dict_type` VALUES (1, '用户性别', 'sys_user_sex', '0', 'admin', '2021-10-30 07:47:59', '', NULL, '用户性别列表');
INSERT INTO `sys_dict_type` VALUES (2, '菜单状态', 'sys_show_hide', '0', 'admin', '2021-10-30 07:47:59', '', NULL, '菜单状态列表');
INSERT INTO `sys_dict_type` VALUES (3, '系统开关', 'sys_normal_disable', '0', 'admin', '2021-10-30 07:47:59', '', NULL, '系统开关列表');
INSERT INTO `sys_dict_type` VALUES (4, '任务状态', 'sys_job_status', '0', 'admin', '2021-10-30 07:47:59', '', NULL, '任务状态列表');
INSERT INTO `sys_dict_type` VALUES (5, '任务分组', 'sys_job_group', '0', 'admin', '2021-10-30 07:47:59', '', NULL, '任务分组列表');
INSERT INTO `sys_dict_type` VALUES (6, '系统是否', 'sys_yes_no', '0', 'admin', '2021-10-30 07:47:59', '', NULL, '系统是否列表');
INSERT INTO `sys_dict_type` VALUES (7, '通知类型', 'sys_notice_type', '0', 'admin', '2021-10-30 07:47:59', '', NULL, '通知类型列表');
INSERT INTO `sys_dict_type` VALUES (8, '通知状态', 'sys_notice_status', '0', 'admin', '2021-10-30 07:47:59', '', NULL, '通知状态列表');
INSERT INTO `sys_dict_type` VALUES (9, '操作类型', 'sys_oper_type', '0', 'admin', '2021-10-30 07:47:59', '', NULL, '操作类型列表');
INSERT INTO `sys_dict_type` VALUES (10, '系统状态', 'sys_common_status', '0', 'admin', '2021-10-30 07:47:59', '', NULL, '登录状态列表');
INSERT INTO `sys_dict_type` VALUES (100, '订单明细状态', 'order_detail_status', '0', 'admin', '2021-10-31 09:35:02', '', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (101, '挂号时段', 'doctor_register_time', '0', 'admin', '2021-11-01 02:24:56', '', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (102, '挂号状态', 'register_statusa', '0', 'admin', '2021-11-01 02:33:20', 'admin', '2021-11-01 04:26:38', NULL);
INSERT INTO `sys_dict_type` VALUES (103, '药品类型', 'order_drug_type', '0', 'admin', '2021-11-01 03:36:22', '', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (104, '处方类型', 'order_otc_type', '0', 'admin', '2021-11-01 03:40:50', '', NULL, NULL);
INSERT INTO `sys_dict_type` VALUES (105, '供应商名称', 'drug_support_name', '0', 'admin', '2021-11-01 04:51:33', '', NULL, NULL);

-- ----------------------------
-- Table structure for sys_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_job`;
CREATE TABLE `sys_job`  (
  `job_id` bigint NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`, `job_name`, `job_group`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '定时任务调度表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_job
-- ----------------------------
INSERT INTO `sys_job` VALUES (1, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '0/10 * * * * ?', '3', '1', '1', 'admin', '2021-10-30 07:47:59', '', NULL, '');
INSERT INTO `sys_job` VALUES (2, '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '0/15 * * * * ?', '3', '1', '1', 'admin', '2021-10-30 07:47:59', '', NULL, '');
INSERT INTO `sys_job` VALUES (3, '系统默认（多参）', 'DEFAULT', 'ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)', '0/20 * * * * ?', '3', '1', '1', 'admin', '2021-10-30 07:47:59', '', NULL, '');

-- ----------------------------
-- Table structure for sys_job_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_job_log`;
CREATE TABLE `sys_job_log`  (
  `job_log_id` bigint NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '日志信息',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '异常信息',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 33 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '定时任务调度日志表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_job_log
-- ----------------------------
INSERT INTO `sys_job_log` VALUES (1, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：10毫秒', '0', '', '2021-10-31 08:29:52');
INSERT INTO `sys_job_log` VALUES (2, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-10-31 08:30:00');
INSERT INTO `sys_job_log` VALUES (3, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：2毫秒', '0', '', '2021-10-31 08:30:10');
INSERT INTO `sys_job_log` VALUES (4, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-10-31 08:30:20');
INSERT INTO `sys_job_log` VALUES (5, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-10-31 08:30:30');
INSERT INTO `sys_job_log` VALUES (6, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-10-31 08:30:40');
INSERT INTO `sys_job_log` VALUES (7, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-10-31 08:30:50');
INSERT INTO `sys_job_log` VALUES (8, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-10-31 08:31:00');
INSERT INTO `sys_job_log` VALUES (9, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-10-31 08:31:10');
INSERT INTO `sys_job_log` VALUES (10, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-10-31 08:31:20');
INSERT INTO `sys_job_log` VALUES (11, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-10-31 08:31:30');
INSERT INTO `sys_job_log` VALUES (12, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-10-31 08:31:40');
INSERT INTO `sys_job_log` VALUES (13, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-10-31 08:31:50');
INSERT INTO `sys_job_log` VALUES (14, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-10-31 08:32:00');
INSERT INTO `sys_job_log` VALUES (15, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：1毫秒', '0', '', '2021-10-31 08:32:10');
INSERT INTO `sys_job_log` VALUES (16, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：0毫秒', '0', '', '2021-10-31 08:32:20');
INSERT INTO `sys_job_log` VALUES (17, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '系统默认（无参） 总共耗时：1毫秒', '0', '', '2021-10-31 08:32:31');
INSERT INTO `sys_job_log` VALUES (18, '系统默认（多参）', 'DEFAULT', 'ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)', '系统默认（多参） 总共耗时：1毫秒', '0', '', '2021-10-31 08:32:41');
INSERT INTO `sys_job_log` VALUES (19, '系统默认（多参）', 'DEFAULT', 'ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)', '系统默认（多参） 总共耗时：1毫秒', '0', '', '2021-10-31 08:33:01');
INSERT INTO `sys_job_log` VALUES (20, '系统默认（多参）', 'DEFAULT', 'ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)', '系统默认（多参） 总共耗时：0毫秒', '0', '', '2021-10-31 08:33:21');
INSERT INTO `sys_job_log` VALUES (21, '系统默认（多参）', 'DEFAULT', 'ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)', '系统默认（多参） 总共耗时：0毫秒', '0', '', '2021-10-31 08:33:41');
INSERT INTO `sys_job_log` VALUES (22, '系统默认（多参）', 'DEFAULT', 'ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)', '系统默认（多参） 总共耗时：0毫秒', '0', '', '2021-10-31 08:34:01');
INSERT INTO `sys_job_log` VALUES (23, '系统默认（多参）', 'DEFAULT', 'ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)', '系统默认（多参） 总共耗时：0毫秒', '0', '', '2021-10-31 08:34:21');
INSERT INTO `sys_job_log` VALUES (24, '系统默认（多参）', 'DEFAULT', 'ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)', '系统默认（多参） 总共耗时：1毫秒', '0', '', '2021-10-31 08:34:41');
INSERT INTO `sys_job_log` VALUES (25, '系统默认（多参）', 'DEFAULT', 'ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)', '系统默认（多参） 总共耗时：0毫秒', '0', '', '2021-10-31 08:35:01');
INSERT INTO `sys_job_log` VALUES (26, '系统默认（多参）', 'DEFAULT', 'ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)', '系统默认（多参） 总共耗时：0毫秒', '0', '', '2021-10-31 08:35:21');
INSERT INTO `sys_job_log` VALUES (27, '系统默认（多参）', 'DEFAULT', 'ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)', '系统默认（多参） 总共耗时：0毫秒', '0', '', '2021-10-31 08:35:41');
INSERT INTO `sys_job_log` VALUES (28, '系统默认（多参）', 'DEFAULT', 'ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)', '系统默认（多参） 总共耗时：0毫秒', '0', '', '2021-10-31 08:36:01');
INSERT INTO `sys_job_log` VALUES (29, '系统默认（多参）', 'DEFAULT', 'ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)', '系统默认（多参） 总共耗时：1毫秒', '0', '', '2021-10-31 08:36:21');
INSERT INTO `sys_job_log` VALUES (30, '系统默认（多参）', 'DEFAULT', 'ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)', '系统默认（多参） 总共耗时：0毫秒', '0', '', '2021-10-31 08:36:41');
INSERT INTO `sys_job_log` VALUES (31, '系统默认（多参）', 'DEFAULT', 'ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)', '系统默认（多参） 总共耗时：1毫秒', '0', '', '2021-11-01 06:50:40');
INSERT INTO `sys_job_log` VALUES (32, '系统默认（多参）', 'DEFAULT', 'ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)', '系统默认（多参） 总共耗时：0毫秒', '0', '', '2021-11-01 06:51:00');

-- ----------------------------
-- Table structure for sys_logininfor
-- ----------------------------
DROP TABLE IF EXISTS `sys_logininfor`;
CREATE TABLE `sys_logininfor`  (
  `info_id` bigint NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `user_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '用户账号',
  `ipaddr` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '操作系统',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '提示消息',
  `login_time` datetime NULL DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 413 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '系统访问记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_logininfor
-- ----------------------------
INSERT INTO `sys_logininfor` VALUES (100, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-10-30 08:04:04');
INSERT INTO `sys_logininfor` VALUES (101, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-10-30 08:31:31');
INSERT INTO `sys_logininfor` VALUES (102, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-10-30 08:31:34');
INSERT INTO `sys_logininfor` VALUES (103, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-10-30 08:56:57');
INSERT INTO `sys_logininfor` VALUES (104, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '1', '验证码已失效', '2021-10-30 08:59:58');
INSERT INTO `sys_logininfor` VALUES (105, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-10-30 09:00:05');
INSERT INTO `sys_logininfor` VALUES (106, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-10-30 11:18:10');
INSERT INTO `sys_logininfor` VALUES (107, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-10-30 12:06:04');
INSERT INTO `sys_logininfor` VALUES (108, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-10-30 12:40:36');
INSERT INTO `sys_logininfor` VALUES (109, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-10-30 12:40:52');
INSERT INTO `sys_logininfor` VALUES (110, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-10-30 13:38:40');
INSERT INTO `sys_logininfor` VALUES (111, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-10-30 13:42:23');
INSERT INTO `sys_logininfor` VALUES (112, 'tom', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '1', '用户不存在/密码错误', '2021-10-30 13:42:34');
INSERT INTO `sys_logininfor` VALUES (113, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-10-30 13:42:39');
INSERT INTO `sys_logininfor` VALUES (114, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-10-30 13:44:25');
INSERT INTO `sys_logininfor` VALUES (115, '库存管理员', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '1', '用户不存在/密码错误', '2021-10-30 13:44:33');
INSERT INTO `sys_logininfor` VALUES (116, '库存管理员', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '1', '用户不存在/密码错误', '2021-10-30 13:44:36');
INSERT INTO `sys_logininfor` VALUES (117, '库存管理员', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '1', '验证码错误', '2021-10-30 13:44:39');
INSERT INTO `sys_logininfor` VALUES (118, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-10-30 13:44:58');
INSERT INTO `sys_logininfor` VALUES (119, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-10-30 13:53:11');
INSERT INTO `sys_logininfor` VALUES (120, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-10-30 13:53:15');
INSERT INTO `sys_logininfor` VALUES (121, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-10-31 01:10:59');
INSERT INTO `sys_logininfor` VALUES (122, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-10-31 02:14:42');
INSERT INTO `sys_logininfor` VALUES (123, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-10-31 02:14:45');
INSERT INTO `sys_logininfor` VALUES (124, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-10-31 02:26:35');
INSERT INTO `sys_logininfor` VALUES (125, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-10-31 02:26:41');
INSERT INTO `sys_logininfor` VALUES (126, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-10-31 02:28:54');
INSERT INTO `sys_logininfor` VALUES (127, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-10-31 02:33:14');
INSERT INTO `sys_logininfor` VALUES (128, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-10-31 03:05:14');
INSERT INTO `sys_logininfor` VALUES (129, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-10-31 03:05:36');
INSERT INTO `sys_logininfor` VALUES (130, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-10-31 03:25:41');
INSERT INTO `sys_logininfor` VALUES (131, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-10-31 03:45:36');
INSERT INTO `sys_logininfor` VALUES (132, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-10-31 03:46:51');
INSERT INTO `sys_logininfor` VALUES (133, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-10-31 03:47:24');
INSERT INTO `sys_logininfor` VALUES (134, 'tom', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-10-31 03:47:31');
INSERT INTO `sys_logininfor` VALUES (135, 'tom', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-10-31 03:47:41');
INSERT INTO `sys_logininfor` VALUES (136, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-10-31 03:47:47');
INSERT INTO `sys_logininfor` VALUES (137, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-10-31 03:53:23');
INSERT INTO `sys_logininfor` VALUES (138, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-10-31 03:53:35');
INSERT INTO `sys_logininfor` VALUES (139, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '1', '验证码错误', '2021-10-31 04:15:03');
INSERT INTO `sys_logininfor` VALUES (140, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-10-31 04:15:08');
INSERT INTO `sys_logininfor` VALUES (141, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-10-31 04:38:01');
INSERT INTO `sys_logininfor` VALUES (142, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-10-31 04:41:30');
INSERT INTO `sys_logininfor` VALUES (143, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-10-31 04:50:25');
INSERT INTO `sys_logininfor` VALUES (144, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-10-31 04:50:29');
INSERT INTO `sys_logininfor` VALUES (145, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-10-31 05:27:33');
INSERT INTO `sys_logininfor` VALUES (146, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-10-31 05:33:17');
INSERT INTO `sys_logininfor` VALUES (147, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-10-31 05:44:56');
INSERT INTO `sys_logininfor` VALUES (148, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-10-31 05:57:43');
INSERT INTO `sys_logininfor` VALUES (149, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-10-31 06:25:20');
INSERT INTO `sys_logininfor` VALUES (150, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-10-31 06:42:08');
INSERT INTO `sys_logininfor` VALUES (151, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-10-31 07:10:49');
INSERT INTO `sys_logininfor` VALUES (152, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-10-31 07:15:49');
INSERT INTO `sys_logininfor` VALUES (153, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-10-31 07:16:13');
INSERT INTO `sys_logininfor` VALUES (154, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-10-31 07:17:47');
INSERT INTO `sys_logininfor` VALUES (155, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-10-31 07:21:18');
INSERT INTO `sys_logininfor` VALUES (156, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-10-31 07:21:27');
INSERT INTO `sys_logininfor` VALUES (157, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-10-31 07:22:20');
INSERT INTO `sys_logininfor` VALUES (158, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '1', '验证码已失效', '2021-10-31 07:38:50');
INSERT INTO `sys_logininfor` VALUES (159, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-10-31 07:38:54');
INSERT INTO `sys_logininfor` VALUES (160, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-10-31 07:43:52');
INSERT INTO `sys_logininfor` VALUES (161, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-10-31 07:43:56');
INSERT INTO `sys_logininfor` VALUES (162, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-10-31 07:45:16');
INSERT INTO `sys_logininfor` VALUES (163, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-10-31 08:07:21');
INSERT INTO `sys_logininfor` VALUES (164, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-10-31 08:16:42');
INSERT INTO `sys_logininfor` VALUES (165, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-10-31 08:38:22');
INSERT INTO `sys_logininfor` VALUES (166, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-10-31 08:43:41');
INSERT INTO `sys_logininfor` VALUES (167, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-10-31 08:44:26');
INSERT INTO `sys_logininfor` VALUES (168, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-10-31 08:44:41');
INSERT INTO `sys_logininfor` VALUES (169, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-10-31 08:44:59');
INSERT INTO `sys_logininfor` VALUES (170, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-10-31 08:53:18');
INSERT INTO `sys_logininfor` VALUES (171, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-10-31 08:54:44');
INSERT INTO `sys_logininfor` VALUES (172, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-10-31 08:56:43');
INSERT INTO `sys_logininfor` VALUES (173, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-10-31 09:02:39');
INSERT INTO `sys_logininfor` VALUES (174, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-10-31 09:33:50');
INSERT INTO `sys_logininfor` VALUES (175, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-10-31 09:33:51');
INSERT INTO `sys_logininfor` VALUES (176, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-10-31 09:33:55');
INSERT INTO `sys_logininfor` VALUES (177, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-10-31 09:33:55');
INSERT INTO `sys_logininfor` VALUES (178, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-10-31 09:56:06');
INSERT INTO `sys_logininfor` VALUES (179, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '1', '验证码错误', '2021-10-31 09:57:01');
INSERT INTO `sys_logininfor` VALUES (180, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-10-31 09:57:05');
INSERT INTO `sys_logininfor` VALUES (181, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-10-31 10:22:20');
INSERT INTO `sys_logininfor` VALUES (182, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-10-31 10:22:32');
INSERT INTO `sys_logininfor` VALUES (183, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-10-31 10:35:31');
INSERT INTO `sys_logininfor` VALUES (184, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-10-31 10:44:20');
INSERT INTO `sys_logininfor` VALUES (185, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-10-31 10:45:46');
INSERT INTO `sys_logininfor` VALUES (186, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-10-31 10:45:51');
INSERT INTO `sys_logininfor` VALUES (187, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-10-31 11:03:53');
INSERT INTO `sys_logininfor` VALUES (188, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-10-31 11:09:30');
INSERT INTO `sys_logininfor` VALUES (189, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-10-31 11:16:05');
INSERT INTO `sys_logininfor` VALUES (190, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-10-31 11:24:38');
INSERT INTO `sys_logininfor` VALUES (191, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-10-31 11:24:42');
INSERT INTO `sys_logininfor` VALUES (192, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-10-31 11:40:37');
INSERT INTO `sys_logininfor` VALUES (193, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-10-31 11:58:58');
INSERT INTO `sys_logininfor` VALUES (194, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-10-31 11:59:48');
INSERT INTO `sys_logininfor` VALUES (195, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '1', '验证码错误', '2021-10-31 11:59:48');
INSERT INTO `sys_logininfor` VALUES (196, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-10-31 11:59:53');
INSERT INTO `sys_logininfor` VALUES (197, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-10-31 12:01:47');
INSERT INTO `sys_logininfor` VALUES (198, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-10-31 12:02:43');
INSERT INTO `sys_logininfor` VALUES (199, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-10-31 12:02:43');
INSERT INTO `sys_logininfor` VALUES (200, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-10-31 12:02:44');
INSERT INTO `sys_logininfor` VALUES (201, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-10-31 12:02:49');
INSERT INTO `sys_logininfor` VALUES (202, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-10-31 12:09:11');
INSERT INTO `sys_logininfor` VALUES (203, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-10-31 12:12:24');
INSERT INTO `sys_logininfor` VALUES (204, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-10-31 12:12:28');
INSERT INTO `sys_logininfor` VALUES (205, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-10-31 12:23:41');
INSERT INTO `sys_logininfor` VALUES (206, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-10-31 12:23:46');
INSERT INTO `sys_logininfor` VALUES (207, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-10-31 12:37:18');
INSERT INTO `sys_logininfor` VALUES (208, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-10-31 12:41:39');
INSERT INTO `sys_logininfor` VALUES (209, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-10-31 12:47:34');
INSERT INTO `sys_logininfor` VALUES (210, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-10-31 12:53:05');
INSERT INTO `sys_logininfor` VALUES (211, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-10-31 13:01:26');
INSERT INTO `sys_logininfor` VALUES (212, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-10-31 13:05:16');
INSERT INTO `sys_logininfor` VALUES (213, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-10-31 13:06:31');
INSERT INTO `sys_logininfor` VALUES (214, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-10-31 13:07:53');
INSERT INTO `sys_logininfor` VALUES (215, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-10-31 13:29:06');
INSERT INTO `sys_logininfor` VALUES (216, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-10-31 13:30:16');
INSERT INTO `sys_logininfor` VALUES (217, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-10-31 13:39:02');
INSERT INTO `sys_logininfor` VALUES (218, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-10-31 13:39:03');
INSERT INTO `sys_logininfor` VALUES (219, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-10-31 13:39:03');
INSERT INTO `sys_logininfor` VALUES (220, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-10-31 13:39:09');
INSERT INTO `sys_logininfor` VALUES (221, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-10-31 13:53:24');
INSERT INTO `sys_logininfor` VALUES (222, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-10-31 13:53:29');
INSERT INTO `sys_logininfor` VALUES (223, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-10-31 14:00:05');
INSERT INTO `sys_logininfor` VALUES (224, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-10-31 14:00:09');
INSERT INTO `sys_logininfor` VALUES (225, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-10-31 14:01:50');
INSERT INTO `sys_logininfor` VALUES (226, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-10-31 14:16:54');
INSERT INTO `sys_logininfor` VALUES (227, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-10-31 14:17:02');
INSERT INTO `sys_logininfor` VALUES (228, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-10-31 14:34:00');
INSERT INTO `sys_logininfor` VALUES (229, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-10-31 14:34:05');
INSERT INTO `sys_logininfor` VALUES (230, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-10-31 14:41:38');
INSERT INTO `sys_logininfor` VALUES (231, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-01 00:40:51');
INSERT INTO `sys_logininfor` VALUES (232, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-01 00:53:16');
INSERT INTO `sys_logininfor` VALUES (233, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-01 00:53:18');
INSERT INTO `sys_logininfor` VALUES (234, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-01 00:54:54');
INSERT INTO `sys_logininfor` VALUES (235, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-11-01 01:05:10');
INSERT INTO `sys_logininfor` VALUES (236, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-01 01:05:17');
INSERT INTO `sys_logininfor` VALUES (237, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-01 01:13:27');
INSERT INTO `sys_logininfor` VALUES (238, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-01 01:14:56');
INSERT INTO `sys_logininfor` VALUES (239, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-11-01 01:29:08');
INSERT INTO `sys_logininfor` VALUES (240, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-01 01:29:12');
INSERT INTO `sys_logininfor` VALUES (241, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-01 01:39:28');
INSERT INTO `sys_logininfor` VALUES (242, 'zhangzhen', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-01 01:43:14');
INSERT INTO `sys_logininfor` VALUES (243, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-01 01:44:05');
INSERT INTO `sys_logininfor` VALUES (244, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-01 01:57:42');
INSERT INTO `sys_logininfor` VALUES (245, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-01 01:59:22');
INSERT INTO `sys_logininfor` VALUES (246, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-01 02:05:03');
INSERT INTO `sys_logininfor` VALUES (247, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-01 02:07:42');
INSERT INTO `sys_logininfor` VALUES (248, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-11-01 02:14:29');
INSERT INTO `sys_logininfor` VALUES (249, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '1', '验证码已失效', '2021-11-01 02:27:26');
INSERT INTO `sys_logininfor` VALUES (250, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-01 02:27:32');
INSERT INTO `sys_logininfor` VALUES (251, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-11-01 02:40:34');
INSERT INTO `sys_logininfor` VALUES (252, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-01 02:40:40');
INSERT INTO `sys_logininfor` VALUES (253, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-01 02:42:13');
INSERT INTO `sys_logininfor` VALUES (254, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-11-01 02:50:27');
INSERT INTO `sys_logininfor` VALUES (255, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-01 02:50:33');
INSERT INTO `sys_logininfor` VALUES (256, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-11-01 03:01:40');
INSERT INTO `sys_logininfor` VALUES (257, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-01 03:01:47');
INSERT INTO `sys_logininfor` VALUES (258, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-01 03:10:16');
INSERT INTO `sys_logininfor` VALUES (259, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-11-01 03:11:56');
INSERT INTO `sys_logininfor` VALUES (260, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-11-01 03:11:57');
INSERT INTO `sys_logininfor` VALUES (261, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-11-01 03:11:57');
INSERT INTO `sys_logininfor` VALUES (262, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-01 03:12:06');
INSERT INTO `sys_logininfor` VALUES (263, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-01 03:23:18');
INSERT INTO `sys_logininfor` VALUES (264, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '1', '验证码错误', '2021-11-01 04:24:41');
INSERT INTO `sys_logininfor` VALUES (265, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-01 04:24:44');
INSERT INTO `sys_logininfor` VALUES (266, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-01 05:09:30');
INSERT INTO `sys_logininfor` VALUES (267, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-01 05:10:21');
INSERT INTO `sys_logininfor` VALUES (268, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-01 05:13:11');
INSERT INTO `sys_logininfor` VALUES (269, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-01 05:28:54');
INSERT INTO `sys_logininfor` VALUES (270, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-01 06:06:12');
INSERT INTO `sys_logininfor` VALUES (271, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-01 06:06:59');
INSERT INTO `sys_logininfor` VALUES (272, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-11-01 06:14:37');
INSERT INTO `sys_logininfor` VALUES (273, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-01 06:14:41');
INSERT INTO `sys_logininfor` VALUES (274, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-01 06:16:16');
INSERT INTO `sys_logininfor` VALUES (275, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-01 06:20:32');
INSERT INTO `sys_logininfor` VALUES (276, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-11-01 06:22:56');
INSERT INTO `sys_logininfor` VALUES (277, 'admin', '192.168.58.50', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-01 06:23:03');
INSERT INTO `sys_logininfor` VALUES (278, 'admin', '192.168.58.50', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-01 06:58:29');
INSERT INTO `sys_logininfor` VALUES (279, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-11-01 07:03:00');
INSERT INTO `sys_logininfor` VALUES (280, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-11-01 07:06:28');
INSERT INTO `sys_logininfor` VALUES (281, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-01 07:06:36');
INSERT INTO `sys_logininfor` VALUES (282, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-01 07:09:03');
INSERT INTO `sys_logininfor` VALUES (283, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-11-01 07:14:11');
INSERT INTO `sys_logininfor` VALUES (284, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-01 07:14:16');
INSERT INTO `sys_logininfor` VALUES (285, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-11-01 07:21:41');
INSERT INTO `sys_logininfor` VALUES (286, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-01 07:21:45');
INSERT INTO `sys_logininfor` VALUES (287, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-11-01 07:32:25');
INSERT INTO `sys_logininfor` VALUES (288, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-01 07:33:26');
INSERT INTO `sys_logininfor` VALUES (289, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-01 07:38:32');
INSERT INTO `sys_logininfor` VALUES (290, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '1', '验证码错误', '2021-11-01 07:43:50');
INSERT INTO `sys_logininfor` VALUES (291, 'admin', '192.168.58.50', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-01 07:52:58');
INSERT INTO `sys_logininfor` VALUES (292, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-01 07:55:16');
INSERT INTO `sys_logininfor` VALUES (293, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-11-01 07:56:11');
INSERT INTO `sys_logininfor` VALUES (294, 'zhangzhen', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '1', '用户不存在/密码错误', '2021-11-01 07:56:22');
INSERT INTO `sys_logininfor` VALUES (295, 'zhangzhen', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-01 07:56:32');
INSERT INTO `sys_logininfor` VALUES (296, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-11-01 08:00:33');
INSERT INTO `sys_logininfor` VALUES (297, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-01 08:00:40');
INSERT INTO `sys_logininfor` VALUES (298, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-11-01 08:26:34');
INSERT INTO `sys_logininfor` VALUES (299, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-01 08:27:04');
INSERT INTO `sys_logininfor` VALUES (300, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-01 08:36:16');
INSERT INTO `sys_logininfor` VALUES (301, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-01 08:46:14');
INSERT INTO `sys_logininfor` VALUES (302, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-11-01 08:47:01');
INSERT INTO `sys_logininfor` VALUES (303, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-11-01 08:50:53');
INSERT INTO `sys_logininfor` VALUES (304, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-01 08:51:09');
INSERT INTO `sys_logininfor` VALUES (305, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-11-01 08:57:06');
INSERT INTO `sys_logininfor` VALUES (306, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-01 08:58:13');
INSERT INTO `sys_logininfor` VALUES (307, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '1', '验证码已失效', '2021-11-01 08:59:58');
INSERT INTO `sys_logininfor` VALUES (308, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '1', '验证码错误', '2021-11-01 09:00:07');
INSERT INTO `sys_logininfor` VALUES (309, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-01 09:00:11');
INSERT INTO `sys_logininfor` VALUES (310, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-11-01 09:21:54');
INSERT INTO `sys_logininfor` VALUES (311, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-01 09:22:00');
INSERT INTO `sys_logininfor` VALUES (312, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-01 10:03:50');
INSERT INTO `sys_logininfor` VALUES (313, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-01 10:07:03');
INSERT INTO `sys_logininfor` VALUES (314, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-01 10:30:02');
INSERT INTO `sys_logininfor` VALUES (315, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-01 10:42:13');
INSERT INTO `sys_logininfor` VALUES (316, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-11-01 11:03:23');
INSERT INTO `sys_logininfor` VALUES (317, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-01 11:03:29');
INSERT INTO `sys_logininfor` VALUES (318, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-01 11:12:00');
INSERT INTO `sys_logininfor` VALUES (319, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-11-01 11:22:02');
INSERT INTO `sys_logininfor` VALUES (320, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-01 11:22:12');
INSERT INTO `sys_logininfor` VALUES (321, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-01 11:38:02');
INSERT INTO `sys_logininfor` VALUES (322, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-01 11:54:29');
INSERT INTO `sys_logininfor` VALUES (323, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-01 12:31:13');
INSERT INTO `sys_logininfor` VALUES (324, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-01 12:50:49');
INSERT INTO `sys_logininfor` VALUES (325, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-11-01 13:04:50');
INSERT INTO `sys_logininfor` VALUES (326, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-01 13:04:59');
INSERT INTO `sys_logininfor` VALUES (327, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-01 13:05:03');
INSERT INTO `sys_logininfor` VALUES (328, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-01 13:19:01');
INSERT INTO `sys_logininfor` VALUES (329, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-01 13:26:13');
INSERT INTO `sys_logininfor` VALUES (330, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-11-01 13:31:31');
INSERT INTO `sys_logininfor` VALUES (331, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-01 13:31:34');
INSERT INTO `sys_logininfor` VALUES (332, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-11-01 13:41:00');
INSERT INTO `sys_logininfor` VALUES (333, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-01 13:41:05');
INSERT INTO `sys_logininfor` VALUES (334, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-02 00:30:43');
INSERT INTO `sys_logininfor` VALUES (335, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-02 00:34:30');
INSERT INTO `sys_logininfor` VALUES (336, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-02 00:35:46');
INSERT INTO `sys_logininfor` VALUES (337, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-02 00:50:57');
INSERT INTO `sys_logininfor` VALUES (338, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-11-02 00:53:54');
INSERT INTO `sys_logininfor` VALUES (339, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-02 01:03:30');
INSERT INTO `sys_logininfor` VALUES (340, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-02 01:21:44');
INSERT INTO `sys_logininfor` VALUES (341, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-02 01:22:03');
INSERT INTO `sys_logininfor` VALUES (342, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-11-02 01:28:54');
INSERT INTO `sys_logininfor` VALUES (343, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-02 01:28:58');
INSERT INTO `sys_logininfor` VALUES (344, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-11-02 01:37:29');
INSERT INTO `sys_logininfor` VALUES (345, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-02 01:37:35');
INSERT INTO `sys_logininfor` VALUES (346, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-02 01:42:05');
INSERT INTO `sys_logininfor` VALUES (347, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-02 01:46:30');
INSERT INTO `sys_logininfor` VALUES (348, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-02 01:47:23');
INSERT INTO `sys_logininfor` VALUES (349, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-11-02 02:04:14');
INSERT INTO `sys_logininfor` VALUES (350, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-02 02:04:24');
INSERT INTO `sys_logininfor` VALUES (351, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-02 02:11:58');
INSERT INTO `sys_logininfor` VALUES (352, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-02 02:29:20');
INSERT INTO `sys_logininfor` VALUES (353, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-02 02:34:05');
INSERT INTO `sys_logininfor` VALUES (354, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-02 02:34:11');
INSERT INTO `sys_logininfor` VALUES (355, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-11-02 02:38:30');
INSERT INTO `sys_logininfor` VALUES (356, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-02 02:41:07');
INSERT INTO `sys_logininfor` VALUES (357, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-11-02 02:51:05');
INSERT INTO `sys_logininfor` VALUES (358, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-02 02:53:54');
INSERT INTO `sys_logininfor` VALUES (359, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-02 02:58:28');
INSERT INTO `sys_logininfor` VALUES (360, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-02 03:03:11');
INSERT INTO `sys_logininfor` VALUES (361, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-11-02 03:04:31');
INSERT INTO `sys_logininfor` VALUES (362, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-02 03:08:25');
INSERT INTO `sys_logininfor` VALUES (363, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-02 03:13:36');
INSERT INTO `sys_logininfor` VALUES (364, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '1', '验证码已失效', '2021-11-02 03:14:01');
INSERT INTO `sys_logininfor` VALUES (365, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-02 03:14:04');
INSERT INTO `sys_logininfor` VALUES (366, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-11-02 03:16:48');
INSERT INTO `sys_logininfor` VALUES (367, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-02 03:17:18');
INSERT INTO `sys_logininfor` VALUES (368, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-02 04:26:40');
INSERT INTO `sys_logininfor` VALUES (369, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-11-02 04:39:52');
INSERT INTO `sys_logininfor` VALUES (370, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-02 04:39:57');
INSERT INTO `sys_logininfor` VALUES (371, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-11-02 04:47:21');
INSERT INTO `sys_logininfor` VALUES (372, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-02 04:47:28');
INSERT INTO `sys_logininfor` VALUES (373, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-02 04:55:49');
INSERT INTO `sys_logininfor` VALUES (374, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-02 04:58:21');
INSERT INTO `sys_logininfor` VALUES (375, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-02 05:36:56');
INSERT INTO `sys_logininfor` VALUES (376, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-02 05:38:10');
INSERT INTO `sys_logininfor` VALUES (377, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-02 05:56:09');
INSERT INTO `sys_logininfor` VALUES (378, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-02 05:59:25');
INSERT INTO `sys_logininfor` VALUES (379, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-02 06:24:37');
INSERT INTO `sys_logininfor` VALUES (380, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-11-02 06:32:44');
INSERT INTO `sys_logininfor` VALUES (381, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-02 06:43:23');
INSERT INTO `sys_logininfor` VALUES (382, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-11-02 06:55:10');
INSERT INTO `sys_logininfor` VALUES (383, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-02 06:55:40');
INSERT INTO `sys_logininfor` VALUES (384, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-11-02 07:03:31');
INSERT INTO `sys_logininfor` VALUES (385, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-02 07:03:34');
INSERT INTO `sys_logininfor` VALUES (386, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-11-02 07:15:58');
INSERT INTO `sys_logininfor` VALUES (387, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-02 07:18:09');
INSERT INTO `sys_logininfor` VALUES (388, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-02 07:22:23');
INSERT INTO `sys_logininfor` VALUES (389, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-02 07:32:01');
INSERT INTO `sys_logininfor` VALUES (390, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-11-02 08:00:45');
INSERT INTO `sys_logininfor` VALUES (391, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-02 08:00:52');
INSERT INTO `sys_logininfor` VALUES (392, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-11-02 08:02:55');
INSERT INTO `sys_logininfor` VALUES (393, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-11-02 08:02:56');
INSERT INTO `sys_logininfor` VALUES (394, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-02 08:04:39');
INSERT INTO `sys_logininfor` VALUES (395, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-02 08:18:10');
INSERT INTO `sys_logininfor` VALUES (396, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-11-02 08:23:33');
INSERT INTO `sys_logininfor` VALUES (397, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-02 08:24:14');
INSERT INTO `sys_logininfor` VALUES (398, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-11-02 08:56:52');
INSERT INTO `sys_logininfor` VALUES (399, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '1', '验证码已失效', '2021-11-02 08:59:42');
INSERT INTO `sys_logininfor` VALUES (400, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-02 08:59:46');
INSERT INTO `sys_logininfor` VALUES (401, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-02 09:03:38');
INSERT INTO `sys_logininfor` VALUES (402, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-02 09:18:12');
INSERT INTO `sys_logininfor` VALUES (403, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-11-02 09:43:10');
INSERT INTO `sys_logininfor` VALUES (404, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '1', '验证码错误', '2021-11-02 09:43:15');
INSERT INTO `sys_logininfor` VALUES (405, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-02 09:43:19');
INSERT INTO `sys_logininfor` VALUES (406, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-02 09:49:45');
INSERT INTO `sys_logininfor` VALUES (407, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-11-02 10:26:09');
INSERT INTO `sys_logininfor` VALUES (408, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-02 10:27:20');
INSERT INTO `sys_logininfor` VALUES (409, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-11-02 10:34:43');
INSERT INTO `sys_logininfor` VALUES (410, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-02 10:34:47');
INSERT INTO `sys_logininfor` VALUES (411, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-02 10:43:42');
INSERT INTO `sys_logininfor` VALUES (412, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-02 10:44:10');
INSERT INTO `sys_logininfor` VALUES (413, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-11-02 10:54:54');
INSERT INTO `sys_logininfor` VALUES (414, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-02 11:08:08');
INSERT INTO `sys_logininfor` VALUES (415, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-11-02 11:16:47');
INSERT INTO `sys_logininfor` VALUES (416, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-02 11:16:55');
INSERT INTO `sys_logininfor` VALUES (417, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-02 11:25:37');
INSERT INTO `sys_logininfor` VALUES (418, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-11-02 11:26:27');
INSERT INTO `sys_logininfor` VALUES (419, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-02 11:26:32');
INSERT INTO `sys_logininfor` VALUES (420, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-02 12:59:02');
INSERT INTO `sys_logininfor` VALUES (421, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-11-02 13:30:06');
INSERT INTO `sys_logininfor` VALUES (422, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-02 13:30:10');
INSERT INTO `sys_logininfor` VALUES (423, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-02 13:30:57');
INSERT INTO `sys_logininfor` VALUES (424, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-02 14:29:55');
INSERT INTO `sys_logininfor` VALUES (425, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-11-02 15:17:53');
INSERT INTO `sys_logininfor` VALUES (426, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-02 16:35:21');
INSERT INTO `sys_logininfor` VALUES (427, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-03 00:35:09');
INSERT INTO `sys_logininfor` VALUES (428, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-03 00:37:02');
INSERT INTO `sys_logininfor` VALUES (429, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-03 00:54:22');
INSERT INTO `sys_logininfor` VALUES (430, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-03 01:02:52');
INSERT INTO `sys_logininfor` VALUES (431, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-03 01:04:01');
INSERT INTO `sys_logininfor` VALUES (432, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-11-03 01:10:55');
INSERT INTO `sys_logininfor` VALUES (433, 'xiaowang', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-03 01:11:05');
INSERT INTO `sys_logininfor` VALUES (434, 'xiaowang', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-11-03 01:11:21');
INSERT INTO `sys_logininfor` VALUES (435, 'zhangzhen', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-03 01:11:37');
INSERT INTO `sys_logininfor` VALUES (436, 'zhangzhen', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-11-03 01:12:05');
INSERT INTO `sys_logininfor` VALUES (437, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-03 01:12:12');
INSERT INTO `sys_logininfor` VALUES (438, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-11-03 01:12:59');
INSERT INTO `sys_logininfor` VALUES (439, 'xiaoli', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-03 01:13:10');
INSERT INTO `sys_logininfor` VALUES (440, 'xiaoli', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-11-03 01:14:38');
INSERT INTO `sys_logininfor` VALUES (441, 'xiaowang', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-03 01:14:49');
INSERT INTO `sys_logininfor` VALUES (442, 'admin', '192.168.58.153', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-03 01:31:19');
INSERT INTO `sys_logininfor` VALUES (443, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-11-03 01:37:34');
INSERT INTO `sys_logininfor` VALUES (444, 'tom', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-03 01:37:41');
INSERT INTO `sys_logininfor` VALUES (445, 'xiaowang', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-11-03 01:38:04');
INSERT INTO `sys_logininfor` VALUES (446, 'tom', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-11-03 01:40:09');
INSERT INTO `sys_logininfor` VALUES (447, 'jak', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-03 01:40:16');
INSERT INTO `sys_logininfor` VALUES (448, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '1', '验证码已失效', '2021-11-03 01:40:57');
INSERT INTO `sys_logininfor` VALUES (449, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-03 01:41:00');
INSERT INTO `sys_logininfor` VALUES (450, 'jak', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-11-03 01:41:43');
INSERT INTO `sys_logininfor` VALUES (451, 'tom', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-03 01:41:48');
INSERT INTO `sys_logininfor` VALUES (452, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-03 01:43:03');
INSERT INTO `sys_logininfor` VALUES (453, 'tom', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-11-03 01:44:11');
INSERT INTO `sys_logininfor` VALUES (454, 'jak', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-03 01:44:16');
INSERT INTO `sys_logininfor` VALUES (455, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '1', '验证码错误', '2021-11-03 01:50:09');
INSERT INTO `sys_logininfor` VALUES (456, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-03 01:50:12');
INSERT INTO `sys_logininfor` VALUES (457, 'jak', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-11-03 01:58:56');
INSERT INTO `sys_logininfor` VALUES (458, 'tom', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-03 01:59:02');
INSERT INTO `sys_logininfor` VALUES (459, 'tom', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-11-03 02:03:38');
INSERT INTO `sys_logininfor` VALUES (460, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-03 02:03:53');
INSERT INTO `sys_logininfor` VALUES (461, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-03 02:31:57');
INSERT INTO `sys_logininfor` VALUES (462, 'admin', '192.168.58.153', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-03 02:32:26');
INSERT INTO `sys_logininfor` VALUES (463, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-11-03 02:40:55');
INSERT INTO `sys_logininfor` VALUES (464, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-03 02:41:04');
INSERT INTO `sys_logininfor` VALUES (465, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-03 03:04:46');
INSERT INTO `sys_logininfor` VALUES (466, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-03 03:04:59');
INSERT INTO `sys_logininfor` VALUES (467, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '退出成功', '2021-11-03 03:25:06');
INSERT INTO `sys_logininfor` VALUES (468, 'admin', '127.0.0.1', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-03 03:25:15');
INSERT INTO `sys_logininfor` VALUES (469, 'admin', '192.168.58.153', '内网IP', 'Chrome 9', 'Windows 10', '0', '登录成功', '2021-11-03 03:42:22');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `menu_id` bigint NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '菜单名称',
  `parent_id` bigint NULL DEFAULT 0 COMMENT '父菜单ID',
  `order_num` int NULL DEFAULT 0 COMMENT '显示顺序',
  `path` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '路由地址',
  `component` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '组件路径',
  `is_frame` int NULL DEFAULT 1 COMMENT '是否为外链（0是 1否）',
  `is_cache` int NULL DEFAULT 0 COMMENT '是否缓存（0缓存 1不缓存）',
  `menu_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '菜单状态（0正常 1停用）',
  `perms` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2031 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '菜单权限表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (1, '系统管理', 0, 1, 'system', NULL, 1, 0, 'M', '0', '0', '', 'system', 'admin', '2021-10-30 07:47:59', '', NULL, '系统管理目录');
INSERT INTO `sys_menu` VALUES (2, '系统监控', 0, 2, 'monitor', NULL, 1, 0, 'M', '0', '0', '', 'monitor', 'admin', '2021-10-30 07:47:59', '', NULL, '系统监控目录');
INSERT INTO `sys_menu` VALUES (3, '系统工具', 0, 3, 'tool', NULL, 1, 0, 'M', '0', '0', '', 'tool', 'admin', '2021-10-30 07:47:59', '', NULL, '系统工具目录');
INSERT INTO `sys_menu` VALUES (4, '若依官网', 0, 4, 'http://ruoyi.vip', NULL, 0, 0, 'M', '0', '0', '', 'guide', 'admin', '2021-10-30 07:47:59', '', NULL, '若依官网地址');
INSERT INTO `sys_menu` VALUES (100, '用户管理', 1, 1, 'user', 'system/user/index', 1, 0, 'C', '0', '0', 'system:user:list', 'user', 'admin', '2021-10-30 07:47:59', '', NULL, '用户管理菜单');
INSERT INTO `sys_menu` VALUES (101, '角色管理', 1, 2, 'role', 'system/role/index', 1, 0, 'C', '0', '0', 'system:role:list', 'peoples', 'admin', '2021-10-30 07:47:59', '', NULL, '角色管理菜单');
INSERT INTO `sys_menu` VALUES (102, '菜单管理', 1, 3, 'menu', 'system/menu/index', 1, 0, 'C', '0', '0', 'system:menu:list', 'tree-table', 'admin', '2021-10-30 07:47:59', '', NULL, '菜单管理菜单');
INSERT INTO `sys_menu` VALUES (103, '部门管理', 1, 4, 'dept', 'system/dept/index', 1, 0, 'C', '0', '0', 'system:dept:list', 'tree', 'admin', '2021-10-30 07:47:59', '', NULL, '部门管理菜单');
INSERT INTO `sys_menu` VALUES (104, '岗位管理', 1, 5, 'post', 'system/post/index', 1, 0, 'C', '0', '0', 'system:post:list', 'post', 'admin', '2021-10-30 07:47:59', '', NULL, '岗位管理菜单');
INSERT INTO `sys_menu` VALUES (105, '字典管理', 1, 6, 'dict', 'system/dict/index', 1, 0, 'C', '0', '0', 'system:dict:list', 'dict', 'admin', '2021-10-30 07:47:59', '', NULL, '字典管理菜单');
INSERT INTO `sys_menu` VALUES (106, '参数设置', 1, 7, 'config', 'system/config/index', 1, 0, 'C', '0', '0', 'system:config:list', 'edit', 'admin', '2021-10-30 07:47:59', '', NULL, '参数设置菜单');
INSERT INTO `sys_menu` VALUES (107, '通知公告', 1, 8, 'notice', 'system/notice/index', 1, 0, 'C', '0', '0', 'system:notice:list', 'message', 'admin', '2021-10-30 07:47:59', '', NULL, '通知公告菜单');
INSERT INTO `sys_menu` VALUES (108, '日志管理', 1, 9, 'log', '', 1, 0, 'M', '0', '0', '', 'log', 'admin', '2021-10-30 07:47:59', '', NULL, '日志管理菜单');
INSERT INTO `sys_menu` VALUES (109, '在线用户', 2, 1, 'online', 'monitor/online/index', 1, 0, 'C', '0', '0', 'monitor:online:list', 'online', 'admin', '2021-10-30 07:47:59', '', NULL, '在线用户菜单');
INSERT INTO `sys_menu` VALUES (110, '定时任务', 2, 2, 'job', 'monitor/job/index', 1, 0, 'C', '0', '0', 'monitor:job:list', 'job', 'admin', '2021-10-30 07:47:59', '', NULL, '定时任务菜单');
INSERT INTO `sys_menu` VALUES (111, '数据监控', 2, 3, 'druid', 'monitor/druid/index', 1, 0, 'C', '0', '0', 'monitor:druid:list', 'druid', 'admin', '2021-10-30 07:47:59', '', NULL, '数据监控菜单');
INSERT INTO `sys_menu` VALUES (112, '服务监控', 2, 4, 'server', 'monitor/server/index', 1, 0, 'C', '0', '0', 'monitor:server:list', 'server', 'admin', '2021-10-30 07:47:59', '', NULL, '服务监控菜单');
INSERT INTO `sys_menu` VALUES (113, '缓存监控', 2, 5, 'cache', 'monitor/cache/index', 1, 0, 'C', '0', '0', 'monitor:cache:list', 'redis', 'admin', '2021-10-30 07:47:59', '', NULL, '缓存监控菜单');
INSERT INTO `sys_menu` VALUES (114, '表单构建', 3, 1, 'build', 'tool/build/index', 1, 0, 'C', '0', '0', 'tool:build:list', 'build', 'admin', '2021-10-30 07:47:59', '', NULL, '表单构建菜单');
INSERT INTO `sys_menu` VALUES (115, '代码生成', 3, 2, 'gen', 'tool/gen/index', 1, 0, 'C', '0', '0', 'tool:gen:list', 'code', 'admin', '2021-10-30 07:47:59', '', NULL, '代码生成菜单');
INSERT INTO `sys_menu` VALUES (116, '系统接口', 3, 3, 'swagger', 'tool/swagger/index', 1, 0, 'C', '0', '0', 'tool:swagger:list', 'swagger', 'admin', '2021-10-30 07:47:59', '', NULL, '系统接口菜单');
INSERT INTO `sys_menu` VALUES (500, '操作日志', 108, 1, 'operlog', 'monitor/operlog/index', 1, 0, 'C', '0', '0', 'monitor:operlog:list', 'form', 'admin', '2021-10-30 07:47:59', '', NULL, '操作日志菜单');
INSERT INTO `sys_menu` VALUES (501, '登录日志', 108, 2, 'logininfor', 'monitor/logininfor/index', 1, 0, 'C', '0', '0', 'monitor:logininfor:list', 'logininfor', 'admin', '2021-10-30 07:47:59', '', NULL, '登录日志菜单');
INSERT INTO `sys_menu` VALUES (1001, '用户查询', 100, 1, '', '', 1, 0, 'F', '0', '0', 'system:user:query', '#', 'admin', '2021-10-30 07:47:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1002, '用户新增', 100, 2, '', '', 1, 0, 'F', '0', '0', 'system:user:add', '#', 'admin', '2021-10-30 07:47:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1003, '用户修改', 100, 3, '', '', 1, 0, 'F', '0', '0', 'system:user:edit', '#', 'admin', '2021-10-30 07:47:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1004, '用户删除', 100, 4, '', '', 1, 0, 'F', '0', '0', 'system:user:remove', '#', 'admin', '2021-10-30 07:47:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1005, '用户导出', 100, 5, '', '', 1, 0, 'F', '0', '0', 'system:user:export', '#', 'admin', '2021-10-30 07:47:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1006, '用户导入', 100, 6, '', '', 1, 0, 'F', '0', '0', 'system:user:import', '#', 'admin', '2021-10-30 07:47:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1007, '重置密码', 100, 7, '', '', 1, 0, 'F', '0', '0', 'system:user:resetPwd', '#', 'admin', '2021-10-30 07:47:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1008, '角色查询', 101, 1, '', '', 1, 0, 'F', '0', '0', 'system:role:query', '#', 'admin', '2021-10-30 07:47:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1009, '角色新增', 101, 2, '', '', 1, 0, 'F', '0', '0', 'system:role:add', '#', 'admin', '2021-10-30 07:47:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1010, '角色修改', 101, 3, '', '', 1, 0, 'F', '0', '0', 'system:role:edit', '#', 'admin', '2021-10-30 07:47:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1011, '角色删除', 101, 4, '', '', 1, 0, 'F', '0', '0', 'system:role:remove', '#', 'admin', '2021-10-30 07:47:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1012, '角色导出', 101, 5, '', '', 1, 0, 'F', '0', '0', 'system:role:export', '#', 'admin', '2021-10-30 07:47:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1013, '菜单查询', 102, 1, '', '', 1, 0, 'F', '0', '0', 'system:menu:query', '#', 'admin', '2021-10-30 07:47:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1014, '菜单新增', 102, 2, '', '', 1, 0, 'F', '0', '0', 'system:menu:add', '#', 'admin', '2021-10-30 07:47:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1015, '菜单修改', 102, 3, '', '', 1, 0, 'F', '0', '0', 'system:menu:edit', '#', 'admin', '2021-10-30 07:47:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1016, '菜单删除', 102, 4, '', '', 1, 0, 'F', '0', '0', 'system:menu:remove', '#', 'admin', '2021-10-30 07:47:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1017, '部门查询', 103, 1, '', '', 1, 0, 'F', '0', '0', 'system:dept:query', '#', 'admin', '2021-10-30 07:47:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1018, '部门新增', 103, 2, '', '', 1, 0, 'F', '0', '0', 'system:dept:add', '#', 'admin', '2021-10-30 07:47:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1019, '部门修改', 103, 3, '', '', 1, 0, 'F', '0', '0', 'system:dept:edit', '#', 'admin', '2021-10-30 07:47:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1020, '部门删除', 103, 4, '', '', 1, 0, 'F', '0', '0', 'system:dept:remove', '#', 'admin', '2021-10-30 07:47:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1021, '岗位查询', 104, 1, '', '', 1, 0, 'F', '0', '0', 'system:post:query', '#', 'admin', '2021-10-30 07:47:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1022, '岗位新增', 104, 2, '', '', 1, 0, 'F', '0', '0', 'system:post:add', '#', 'admin', '2021-10-30 07:47:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1023, '岗位修改', 104, 3, '', '', 1, 0, 'F', '0', '0', 'system:post:edit', '#', 'admin', '2021-10-30 07:47:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1024, '岗位删除', 104, 4, '', '', 1, 0, 'F', '0', '0', 'system:post:remove', '#', 'admin', '2021-10-30 07:47:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1025, '岗位导出', 104, 5, '', '', 1, 0, 'F', '0', '0', 'system:post:export', '#', 'admin', '2021-10-30 07:47:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1026, '字典查询', 105, 1, '#', '', 1, 0, 'F', '0', '0', 'system:dict:query', '#', 'admin', '2021-10-30 07:47:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1027, '字典新增', 105, 2, '#', '', 1, 0, 'F', '0', '0', 'system:dict:add', '#', 'admin', '2021-10-30 07:47:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1028, '字典修改', 105, 3, '#', '', 1, 0, 'F', '0', '0', 'system:dict:edit', '#', 'admin', '2021-10-30 07:47:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1029, '字典删除', 105, 4, '#', '', 1, 0, 'F', '0', '0', 'system:dict:remove', '#', 'admin', '2021-10-30 07:47:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1030, '字典导出', 105, 5, '#', '', 1, 0, 'F', '0', '0', 'system:dict:export', '#', 'admin', '2021-10-30 07:47:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1031, '参数查询', 106, 1, '#', '', 1, 0, 'F', '0', '0', 'system:config:query', '#', 'admin', '2021-10-30 07:47:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1032, '参数新增', 106, 2, '#', '', 1, 0, 'F', '0', '0', 'system:config:add', '#', 'admin', '2021-10-30 07:47:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1033, '参数修改', 106, 3, '#', '', 1, 0, 'F', '0', '0', 'system:config:edit', '#', 'admin', '2021-10-30 07:47:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1034, '参数删除', 106, 4, '#', '', 1, 0, 'F', '0', '0', 'system:config:remove', '#', 'admin', '2021-10-30 07:47:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1035, '参数导出', 106, 5, '#', '', 1, 0, 'F', '0', '0', 'system:config:export', '#', 'admin', '2021-10-30 07:47:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1036, '公告查询', 107, 1, '#', '', 1, 0, 'F', '0', '0', 'system:notice:query', '#', 'admin', '2021-10-30 07:47:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1037, '公告新增', 107, 2, '#', '', 1, 0, 'F', '0', '0', 'system:notice:add', '#', 'admin', '2021-10-30 07:47:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1038, '公告修改', 107, 3, '#', '', 1, 0, 'F', '0', '0', 'system:notice:edit', '#', 'admin', '2021-10-30 07:47:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1039, '公告删除', 107, 4, '#', '', 1, 0, 'F', '0', '0', 'system:notice:remove', '#', 'admin', '2021-10-30 07:47:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1040, '操作查询', 500, 1, '#', '', 1, 0, 'F', '0', '0', 'monitor:operlog:query', '#', 'admin', '2021-10-30 07:47:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1041, '操作删除', 500, 2, '#', '', 1, 0, 'F', '0', '0', 'monitor:operlog:remove', '#', 'admin', '2021-10-30 07:47:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1042, '日志导出', 500, 4, '#', '', 1, 0, 'F', '0', '0', 'monitor:operlog:export', '#', 'admin', '2021-10-30 07:47:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1043, '登录查询', 501, 1, '#', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:query', '#', 'admin', '2021-10-30 07:47:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1044, '登录删除', 501, 2, '#', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:remove', '#', 'admin', '2021-10-30 07:47:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1045, '日志导出', 501, 3, '#', '', 1, 0, 'F', '0', '0', 'monitor:logininfor:export', '#', 'admin', '2021-10-30 07:47:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1046, '在线查询', 109, 1, '#', '', 1, 0, 'F', '0', '0', 'monitor:online:query', '#', 'admin', '2021-10-30 07:47:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1047, '批量强退', 109, 2, '#', '', 1, 0, 'F', '0', '0', 'monitor:online:batchLogout', '#', 'admin', '2021-10-30 07:47:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1048, '单条强退', 109, 3, '#', '', 1, 0, 'F', '0', '0', 'monitor:online:forceLogout', '#', 'admin', '2021-10-30 07:47:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1049, '任务查询', 110, 1, '#', '', 1, 0, 'F', '0', '0', 'monitor:job:query', '#', 'admin', '2021-10-30 07:47:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1050, '任务新增', 110, 2, '#', '', 1, 0, 'F', '0', '0', 'monitor:job:add', '#', 'admin', '2021-10-30 07:47:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1051, '任务修改', 110, 3, '#', '', 1, 0, 'F', '0', '0', 'monitor:job:edit', '#', 'admin', '2021-10-30 07:47:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1052, '任务删除', 110, 4, '#', '', 1, 0, 'F', '0', '0', 'monitor:job:remove', '#', 'admin', '2021-10-30 07:47:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1053, '状态修改', 110, 5, '#', '', 1, 0, 'F', '0', '0', 'monitor:job:changeStatus', '#', 'admin', '2021-10-30 07:47:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1054, '任务导出', 110, 7, '#', '', 1, 0, 'F', '0', '0', 'monitor:job:export', '#', 'admin', '2021-10-30 07:47:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1055, '生成查询', 115, 1, '#', '', 1, 0, 'F', '0', '0', 'tool:gen:query', '#', 'admin', '2021-10-30 07:47:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1056, '生成修改', 115, 2, '#', '', 1, 0, 'F', '0', '0', 'tool:gen:edit', '#', 'admin', '2021-10-30 07:47:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1057, '生成删除', 115, 3, '#', '', 1, 0, 'F', '0', '0', 'tool:gen:remove', '#', 'admin', '2021-10-30 07:47:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1058, '导入代码', 115, 2, '#', '', 1, 0, 'F', '0', '0', 'tool:gen:import', '#', 'admin', '2021-10-30 07:47:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1059, '预览代码', 115, 4, '#', '', 1, 0, 'F', '0', '0', 'tool:gen:preview', '#', 'admin', '2021-10-30 07:47:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1060, '生成代码', 115, 5, '#', '', 1, 0, 'F', '0', '0', 'tool:gen:code', '#', 'admin', '2021-10-30 07:47:59', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2000, '系统设置', 0, 5, 'his/sys', NULL, 1, 0, 'M', '0', '0', '', 'system', 'admin', '2021-10-30 08:07:19', 'admin', '2021-10-31 06:00:05', '');
INSERT INTO `sys_menu` VALUES (2001, '药品进销存', 0, 6, 'his/drug', NULL, 1, 0, 'M', '0', '0', '', 'shopping', 'admin', '2021-10-30 08:08:50', 'admin', '2021-10-30 08:40:54', '');
INSERT INTO `sys_menu` VALUES (2002, '看病就诊', 0, 7, 'his/doctor', NULL, 1, 0, 'M', '0', '0', '', 'eye-open', 'admin', '2021-10-30 08:10:29', 'admin', '2021-10-31 06:00:16', '');
INSERT INTO `sys_menu` VALUES (2003, '门诊挂号', 2002, 1, 'register', 'his/doctor/register/index', 1, 0, 'C', '0', '0', '', 'list', 'admin', '2021-10-30 08:14:14', 'admin', '2021-10-31 05:54:13', '');
INSERT INTO `sys_menu` VALUES (2004, '挂号列表', 2002, 2, 'registerList', 'his/doctor/registerList/index', 1, 0, 'C', '0', '0', '', 'list', 'admin', '2021-10-30 08:16:16', 'admin', '2021-10-31 08:39:14', '');
INSERT INTO `sys_menu` VALUES (2005, '新开就诊', 2002, 3, 'goDocker', 'his/doctor/goDocker/index', 1, 0, 'C', '0', '0', '', 'list', 'admin', '2021-10-30 08:17:59', 'admin', '2021-10-31 05:54:28', '');
INSERT INTO `sys_menu` VALUES (2006, '生产厂家维护', 2001, 1, 'producer', 'his/drug/producer/index', 1, 0, 'C', '0', '0', '', 'list', 'admin', '2021-10-30 08:19:18', 'admin', '2021-10-30 08:41:05', '');
INSERT INTO `sys_menu` VALUES (2007, '药品信息维护', 2001, 2, 'drugs', 'his/drug/drugs/index', 1, 0, 'C', '0', '0', '', 'list', 'admin', '2021-10-30 08:20:02', 'admin', '2021-10-30 08:41:13', '');
INSERT INTO `sys_menu` VALUES (2008, '供应商维护', 2001, 3, 'supplier', 'his/drug/supplier/index', 1, 0, 'C', '0', '0', '', 'list', 'admin', '2021-10-30 08:20:54', 'admin', '2021-10-30 08:41:21', '');
INSERT INTO `sys_menu` VALUES (2009, '采购入库列表', 2001, 4, 'purchaseAndPutIn', 'his/drug/purchaseAndPutIn/index', 1, 0, 'C', '0', '0', '', 'list', 'admin', '2021-10-30 08:22:22', 'admin', '2021-10-30 08:41:30', '');
INSERT INTO `sys_menu` VALUES (2010, '入库审核', 2001, 5, 'stockExamine', 'his/drug/stockExamine/index', 1, 0, 'C', '0', '0', '', 'list', 'admin', '2021-10-30 08:23:40', 'admin', '2021-10-30 08:53:47', '');
INSERT INTO `sys_menu` VALUES (2011, '库存查询', 2001, 6, 'queryStock', 'his/drug/queryStock/index', 1, 0, 'C', '0', '0', '', 'list', 'admin', '2021-10-30 08:24:31', 'admin', '2021-11-01 11:05:02', '');
INSERT INTO `sys_menu` VALUES (2012, '科室管理', 2000, 1, 'depts', 'his/depts/index', 1, 0, 'C', '0', '0', '', 'list', 'admin', '2021-10-30 08:33:17', 'admin', '2021-10-30 09:17:20', '');
INSERT INTO `sys_menu` VALUES (2013, '检查费用管理', 2000, 2, 'checkCost', 'his/sys/checkCost/index', 1, 0, 'C', '0', '0', 'his:projectFee:list', 'list', 'admin', '2021-10-30 08:34:25', 'admin', '2021-11-01 01:33:14', '');
INSERT INTO `sys_menu` VALUES (2014, '挂号费用管理', 2000, 3, 'registerCost', 'his/sys/registerCost/index', 1, 0, 'C', '0', '0', 'his:RegistraFee:list', 'list', 'admin', '2021-10-30 08:35:22', 'admin', '2021-11-01 07:52:34', '');
INSERT INTO `sys_menu` VALUES (2015, '保存病例', 2002, 4, 'saveill', 'his/doctor/saveill/index', 1, 0, 'C', '0', '0', '', 'color', 'admin', '2021-10-31 03:35:34', 'admin', '2021-10-31 05:54:32', '');
INSERT INTO `sys_menu` VALUES (2016, '添加更新订单', 2001, 5, 'addOrder', 'his/drug/addOrder/index', 1, 0, 'C', '1', '0', '', 'list', 'admin', '2021-10-31 13:15:42', 'admin', '2021-11-02 02:30:02', '');
INSERT INTO `sys_menu` VALUES (2017, '添加', 2013, 1, '', NULL, 1, 0, 'F', '0', '0', 'his:projectFee:add', '#', 'admin', '2021-11-01 01:37:23', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2018, '修改', 2013, 2, '', NULL, 1, 0, 'F', '0', '0', 'his:projectFee:edit', '#', 'admin', '2021-11-01 01:37:49', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2019, '删除', 2013, 3, '', NULL, 1, 0, 'F', '0', '0', 'his:projectFee:remove', '#', 'admin', '2021-11-01 01:38:31', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2020, '收费管理', 0, 9, 'his/charge', NULL, 1, 0, 'M', '0', '0', NULL, 'dict', 'admin', '2021-11-01 06:08:01', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2021, '处方收费', 2020, 1, 'charge', 'his/charge/charge1/index', 1, 0, 'C', '0', '0', '', 'button', 'admin', '2021-11-01 06:15:53', 'admin', '2021-11-02 06:04:12', '');
INSERT INTO `sys_menu` VALUES (2022, '添加', 2014, 1, '', NULL, 1, 0, 'F', '0', '0', 'his:RegistraFee:add', '#', 'admin', '2021-11-01 07:53:04', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2023, '修改', 2014, 2, '', NULL, 1, 0, 'F', '0', '0', 'his:RegistraFee:edit', '#', 'admin', '2021-11-01 07:53:30', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2024, '删除', 2014, 3, '', NULL, 1, 0, 'F', '0', '0', 'his:RegistraFee:remove', '#', 'admin', '2021-11-01 07:54:07', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2027, '检查管理', 0, 10, 'his/exm', NULL, 1, 0, 'M', '0', '0', '', 'log', 'admin', '2021-11-01 11:05:33', 'admin', '2021-11-01 11:05:54', '');
INSERT INTO `sys_menu` VALUES (2028, '新开检查', 2027, 1, 'hisexam', 'his/exam/index', 1, 0, 'C', '0', '0', NULL, 'druid', 'admin', '2021-11-01 11:07:39', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2029, '患者库', 2002, 5, 'registerback', 'his/doctor/registerback/index', 1, 0, 'C', '0', '0', '', 'checkbox', 'admin', '2021-11-02 01:33:41', 'admin', '2021-11-02 01:34:22', '');
INSERT INTO `sys_menu` VALUES (2030, '收费查询', 2020, 2, 'charge1', 'his/charge/charge2/index', 1, 0, 'C', '0', '0', '', 'cascader', 'admin', '2021-11-02 06:00:28', 'admin', '2021-11-02 06:04:32', '');

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice`  (
  `notice_id` int NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '公告标题',
  `notice_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` longblob NULL COMMENT '公告内容',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '通知公告表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
INSERT INTO `sys_notice` VALUES (1, '温馨提醒：2018-07-01 若依新版本发布啦', '2', 0xE696B0E78988E69CACE58685E5AEB9, '0', 'admin', '2021-10-30 07:47:59', '', NULL, '管理员');
INSERT INTO `sys_notice` VALUES (2, '维护通知：2018-07-01 若依系统凌晨维护', '1', 0xE7BBB4E68AA4E58685E5AEB9, '0', 'admin', '2021-10-30 07:47:59', '', NULL, '管理员');

-- ----------------------------
-- Table structure for sys_oper_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_oper_log`;
CREATE TABLE `sys_oper_log`  (
  `oper_id` bigint NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '模块标题',
  `business_type` int NULL DEFAULT 0 COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '请求方式',
  `operator_type` int NULL DEFAULT 0 COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '返回参数',
  `status` int NULL DEFAULT 0 COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime NULL DEFAULT NULL COMMENT '操作时间',
  PRIMARY KEY (`oper_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 319 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '操作日志记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------
INSERT INTO `sys_oper_log` VALUES (100, '菜单管理', 1, 'com.ruoyi.project.system.controller.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"system\",\"orderNum\":\"5\",\"menuName\":\"系统设置\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"sys\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"M\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-10-30 08:07:19');
INSERT INTO `sys_oper_log` VALUES (101, '菜单管理', 1, 'com.ruoyi.project.system.controller.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"shopping\",\"orderNum\":\"6\",\"menuName\":\"药品进销存\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"drug\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"M\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-10-30 08:08:50');
INSERT INTO `sys_oper_log` VALUES (102, '菜单管理', 1, 'com.ruoyi.project.system.controller.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"eye-open\",\"orderNum\":\"7\",\"menuName\":\"看病就诊\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"docker\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"M\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-10-30 08:10:29');
INSERT INTO `sys_oper_log` VALUES (103, '菜单管理', 1, 'com.ruoyi.project.system.controller.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"list\",\"orderNum\":\"1\",\"menuName\":\"门诊挂号\",\"params\":{},\"parentId\":2002,\"isCache\":\"0\",\"path\":\"register\",\"component\":\"docker/register/index\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"C\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-10-30 08:14:14');
INSERT INTO `sys_oper_log` VALUES (104, '菜单管理', 1, 'com.ruoyi.project.system.controller.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"list\",\"orderNum\":\"2\",\"menuName\":\"挂号列表\",\"params\":{},\"parentId\":2002,\"isCache\":\"0\",\"path\":\"registerList\",\"component\":\"docker/registerList/index\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"C\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-10-30 08:16:16');
INSERT INTO `sys_oper_log` VALUES (105, '菜单管理', 1, 'com.ruoyi.project.system.controller.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"list\",\"orderNum\":\"3\",\"menuName\":\"新开就诊\",\"params\":{},\"parentId\":2002,\"isCache\":\"0\",\"path\":\"goDocker\",\"component\":\"docker/goDocker/index\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"C\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-10-30 08:17:59');
INSERT INTO `sys_oper_log` VALUES (106, '菜单管理', 1, 'com.ruoyi.project.system.controller.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"list\",\"orderNum\":\"1\",\"menuName\":\"生产厂家维护\",\"params\":{},\"parentId\":2001,\"isCache\":\"0\",\"path\":\"producer\",\"component\":\"drug/producer\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"C\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-10-30 08:19:18');
INSERT INTO `sys_oper_log` VALUES (107, '菜单管理', 1, 'com.ruoyi.project.system.controller.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"list\",\"orderNum\":\"2\",\"menuName\":\"药品信息维护\",\"params\":{},\"parentId\":2001,\"isCache\":\"0\",\"path\":\"drugs\",\"component\":\"drug/drugs/index\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"C\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-10-30 08:20:02');
INSERT INTO `sys_oper_log` VALUES (108, '菜单管理', 2, 'com.ruoyi.project.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"list\",\"orderNum\":\"1\",\"menuName\":\"生产厂家维护\",\"params\":{},\"parentId\":2001,\"isCache\":\"0\",\"path\":\"producer\",\"component\":\"drug/producer/index\",\"children\":[],\"createTime\":1635553158000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2006,\"menuType\":\"C\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-10-30 08:20:10');
INSERT INTO `sys_oper_log` VALUES (109, '菜单管理', 1, 'com.ruoyi.project.system.controller.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"list\",\"orderNum\":\"3\",\"menuName\":\"供应商维护\",\"params\":{},\"parentId\":2001,\"isCache\":\"0\",\"path\":\"supplier\",\"component\":\"drug/supplier/index\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"C\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-10-30 08:20:54');
INSERT INTO `sys_oper_log` VALUES (110, '菜单管理', 1, 'com.ruoyi.project.system.controller.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"list\",\"orderNum\":\"4\",\"menuName\":\"采购入库列表\",\"params\":{},\"parentId\":2001,\"isCache\":\"0\",\"path\":\"purchaseAndPutIn\",\"component\":\"drug/purchaseAndPutIn/index\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"C\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-10-30 08:22:22');
INSERT INTO `sys_oper_log` VALUES (111, '菜单管理', 1, 'com.ruoyi.project.system.controller.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"list\",\"orderNum\":\"5\",\"menuName\":\"入库审核\",\"params\":{},\"parentId\":2001,\"isCache\":\"0\",\"path\":\" storageExamine\",\"component\":\"drug/ storageExamine/index\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"C\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-10-30 08:23:40');
INSERT INTO `sys_oper_log` VALUES (112, '菜单管理', 1, 'com.ruoyi.project.system.controller.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"list\",\"orderNum\":\"6\",\"menuName\":\"库存查询\",\"params\":{},\"parentId\":2001,\"isCache\":\"0\",\"path\":\"queryStock\",\"component\":\"drug/queryStock/index\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"C\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-10-30 08:24:31');
INSERT INTO `sys_oper_log` VALUES (113, '菜单管理', 2, 'com.ruoyi.project.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"list\",\"orderNum\":\"5\",\"menuName\":\"入库审核\",\"params\":{},\"parentId\":2001,\"isCache\":\"0\",\"path\":\"stockExamine\",\"component\":\"drug/ stockExamine/index\",\"children\":[],\"createTime\":1635553420000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2010,\"menuType\":\"C\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-10-30 08:24:52');
INSERT INTO `sys_oper_log` VALUES (114, '菜单管理', 1, 'com.ruoyi.project.system.controller.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"list\",\"orderNum\":\"1\",\"menuName\":\"科室管理\",\"params\":{},\"parentId\":2000,\"isCache\":\"0\",\"path\":\"depts\",\"component\":\"sys/depts/index\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"C\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-10-30 08:33:17');
INSERT INTO `sys_oper_log` VALUES (115, '菜单管理', 1, 'com.ruoyi.project.system.controller.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"list\",\"orderNum\":\"2\",\"menuName\":\"检查费用管理\",\"params\":{},\"parentId\":2000,\"isCache\":\"0\",\"path\":\"checkCost\",\"component\":\"sys/checkCost/index\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"C\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-10-30 08:34:25');
INSERT INTO `sys_oper_log` VALUES (116, '菜单管理', 1, 'com.ruoyi.project.system.controller.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"list\",\"orderNum\":\"3\",\"menuName\":\"挂号费用管理\",\"params\":{},\"parentId\":2000,\"isCache\":\"0\",\"path\":\"registerCost\",\"component\":\"sys/registerCost/index\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"C\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-10-30 08:35:22');
INSERT INTO `sys_oper_log` VALUES (117, '菜单管理', 2, 'com.ruoyi.project.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"system\",\"orderNum\":\"5\",\"menuName\":\"系统设置\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"his/sys\",\"children\":[],\"createTime\":1635552439000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2000,\"menuType\":\"M\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-10-30 08:40:02');
INSERT INTO `sys_oper_log` VALUES (118, '菜单管理', 2, 'com.ruoyi.project.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"list\",\"orderNum\":\"1\",\"menuName\":\"科室管理\",\"params\":{},\"parentId\":2000,\"isCache\":\"0\",\"path\":\"depts\",\"component\":\"his/sys/depts/index\",\"children\":[],\"createTime\":1635553997000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2012,\"menuType\":\"C\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-10-30 08:40:29');
INSERT INTO `sys_oper_log` VALUES (119, '菜单管理', 2, 'com.ruoyi.project.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"list\",\"orderNum\":\"2\",\"menuName\":\"检查费用管理\",\"params\":{},\"parentId\":2000,\"isCache\":\"0\",\"path\":\"checkCost\",\"component\":\"his/sys/checkCost/index\",\"children\":[],\"createTime\":1635554065000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2013,\"menuType\":\"C\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-10-30 08:40:36');
INSERT INTO `sys_oper_log` VALUES (120, '菜单管理', 2, 'com.ruoyi.project.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"list\",\"orderNum\":\"3\",\"menuName\":\"挂号费用管理\",\"params\":{},\"parentId\":2000,\"isCache\":\"0\",\"path\":\"registerCost\",\"component\":\"his/sys/registerCost/index\",\"children\":[],\"createTime\":1635554122000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2014,\"menuType\":\"C\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-10-30 08:40:42');
INSERT INTO `sys_oper_log` VALUES (121, '菜单管理', 2, 'com.ruoyi.project.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"shopping\",\"orderNum\":\"6\",\"menuName\":\"药品进销存\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"his/drug\",\"children\":[],\"createTime\":1635552530000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2001,\"menuType\":\"M\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-10-30 08:40:54');
INSERT INTO `sys_oper_log` VALUES (122, '菜单管理', 2, 'com.ruoyi.project.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"list\",\"orderNum\":\"1\",\"menuName\":\"生产厂家维护\",\"params\":{},\"parentId\":2001,\"isCache\":\"0\",\"path\":\"producer\",\"component\":\"his/drug/producer/index\",\"children\":[],\"createTime\":1635553158000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2006,\"menuType\":\"C\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-10-30 08:41:05');
INSERT INTO `sys_oper_log` VALUES (123, '菜单管理', 2, 'com.ruoyi.project.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"list\",\"orderNum\":\"2\",\"menuName\":\"药品信息维护\",\"params\":{},\"parentId\":2001,\"isCache\":\"0\",\"path\":\"drugs\",\"component\":\"his/drug/drugs/index\",\"children\":[],\"createTime\":1635553202000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2007,\"menuType\":\"C\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-10-30 08:41:13');
INSERT INTO `sys_oper_log` VALUES (124, '菜单管理', 2, 'com.ruoyi.project.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"list\",\"orderNum\":\"3\",\"menuName\":\"供应商维护\",\"params\":{},\"parentId\":2001,\"isCache\":\"0\",\"path\":\"supplier\",\"component\":\"his/drug/supplier/index\",\"children\":[],\"createTime\":1635553254000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2008,\"menuType\":\"C\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-10-30 08:41:21');
INSERT INTO `sys_oper_log` VALUES (125, '菜单管理', 2, 'com.ruoyi.project.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"list\",\"orderNum\":\"4\",\"menuName\":\"采购入库列表\",\"params\":{},\"parentId\":2001,\"isCache\":\"0\",\"path\":\"purchaseAndPutIn\",\"component\":\"his/drug/purchaseAndPutIn/index\",\"children\":[],\"createTime\":1635553342000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2009,\"menuType\":\"C\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-10-30 08:41:30');
INSERT INTO `sys_oper_log` VALUES (126, '菜单管理', 2, 'com.ruoyi.project.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"list\",\"orderNum\":\"5\",\"menuName\":\"入库审核\",\"params\":{},\"parentId\":2001,\"isCache\":\"0\",\"path\":\"stockExamine\",\"component\":\"his/drug/ stockExamine/index\",\"children\":[],\"createTime\":1635553420000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2010,\"menuType\":\"C\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-10-30 08:41:42');
INSERT INTO `sys_oper_log` VALUES (127, '菜单管理', 2, 'com.ruoyi.project.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"list\",\"orderNum\":\"6\",\"menuName\":\"库存查询\",\"params\":{},\"parentId\":2001,\"isCache\":\"0\",\"path\":\"queryStock\",\"component\":\"his/drug/queryStock/index\",\"children\":[],\"createTime\":1635553471000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2011,\"menuType\":\"C\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-10-30 08:41:50');
INSERT INTO `sys_oper_log` VALUES (128, '菜单管理', 2, 'com.ruoyi.project.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"list\",\"orderNum\":\"1\",\"menuName\":\"门诊挂号\",\"params\":{},\"parentId\":2002,\"isCache\":\"0\",\"path\":\"register\",\"component\":\"his/docker/register/index\",\"children\":[],\"createTime\":1635552854000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2003,\"menuType\":\"C\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-10-30 08:42:02');
INSERT INTO `sys_oper_log` VALUES (129, '菜单管理', 2, 'com.ruoyi.project.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"eye-open\",\"orderNum\":\"7\",\"menuName\":\"看病就诊\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"his/docker\",\"children\":[],\"createTime\":1635552629000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2002,\"menuType\":\"M\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-10-30 08:42:17');
INSERT INTO `sys_oper_log` VALUES (130, '菜单管理', 2, 'com.ruoyi.project.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"list\",\"orderNum\":\"2\",\"menuName\":\"挂号列表\",\"params\":{},\"parentId\":2002,\"isCache\":\"0\",\"path\":\"registerList\",\"component\":\"his/docker/registerList/index\",\"children\":[],\"createTime\":1635552976000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2004,\"menuType\":\"C\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-10-30 08:42:26');
INSERT INTO `sys_oper_log` VALUES (131, '菜单管理', 2, 'com.ruoyi.project.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"list\",\"orderNum\":\"3\",\"menuName\":\"新开就诊\",\"params\":{},\"parentId\":2002,\"isCache\":\"0\",\"path\":\"goDocker\",\"component\":\"his/docker/goDocker/index\",\"children\":[],\"createTime\":1635553079000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2005,\"menuType\":\"C\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-10-30 08:42:32');
INSERT INTO `sys_oper_log` VALUES (132, '菜单管理', 2, 'com.ruoyi.project.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"list\",\"orderNum\":\"5\",\"menuName\":\"入库审核\",\"params\":{},\"parentId\":2001,\"isCache\":\"0\",\"path\":\"stockExamine\",\"component\":\"his/drug/ stockExamine/index\",\"children\":[],\"createTime\":1635553420000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2010,\"menuType\":\"C\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-10-30 08:51:44');
INSERT INTO `sys_oper_log` VALUES (133, '菜单管理', 2, 'com.ruoyi.project.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"list\",\"orderNum\":\"5\",\"menuName\":\"入库审核\",\"params\":{},\"parentId\":2001,\"isCache\":\"0\",\"path\":\"stockExamine\",\"component\":\"his/drug/stockExamine/index\",\"children\":[],\"createTime\":1635553420000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2010,\"menuType\":\"C\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-10-30 08:53:47');
INSERT INTO `sys_oper_log` VALUES (134, '菜单管理', 2, 'com.ruoyi.project.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"list\",\"orderNum\":\"1\",\"menuName\":\"科室管理\",\"params\":{},\"parentId\":2000,\"isCache\":\"0\",\"path\":\"depts\",\"component\":\"his/depts/index\",\"children\":[],\"createTime\":1635553997000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2012,\"menuType\":\"C\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-10-30 09:17:20');
INSERT INTO `sys_oper_log` VALUES (135, '菜单管理', 2, 'com.ruoyi.project.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"list\",\"orderNum\":\"2\",\"menuName\":\"检查费用管理\",\"params\":{},\"parentId\":2000,\"isCache\":\"0\",\"path\":\"checkCost\",\"component\":\"his/checkCost/index\",\"children\":[],\"createTime\":1635554065000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2013,\"menuType\":\"C\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-10-30 09:17:54');
INSERT INTO `sys_oper_log` VALUES (136, '代码生成', 6, 'com.ruoyi.project.tool.gen.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'docker_project_fee', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-10-30 09:24:51');
INSERT INTO `sys_oper_log` VALUES (137, '角色管理', 1, 'com.ruoyi.project.system.controller.SysRoleController.add()', 'POST', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":100,\"admin\":false,\"params\":{},\"roleSort\":\"3\",\"deptCheckStrictly\":true,\"createBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"drug:stock:edit\",\"roleName\":\"库存管理员\",\"deptIds\":[],\"menuIds\":[2001,2009,2010,2011],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-10-30 13:41:07');
INSERT INTO `sys_oper_log` VALUES (138, '用户管理', 1, 'com.ruoyi.project.system.controller.SysUserController.add()', 'POST', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"phonenumber\":\"13561158465\",\"admin\":false,\"remark\":\"库存\",\"password\":\"$2a$10$gx8edH5Tw0IrMF7mYHYbZO.bNiuPIv.NmDB3wR7UP8CIQmHKaslti\",\"postIds\":[3],\"email\":\"1961469106@qq.com\",\"nickName\":\"tom\",\"sex\":\"0\",\"deptId\":100,\"params\":{},\"userName\":\"库存管理员\",\"userId\":100,\"createBy\":\"admin\",\"roleIds\":[100],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-10-30 13:42:16');
INSERT INTO `sys_oper_log` VALUES (139, '用户管理', 3, 'com.ruoyi.project.system.controller.SysUserController.remove()', 'DELETE', 1, 'admin', NULL, '/system/user/100', '127.0.0.1', '内网IP', '{userIds=100}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-10-30 13:53:32');
INSERT INTO `sys_oper_log` VALUES (140, '用户管理', 1, 'com.ruoyi.project.system.controller.SysUserController.add()', 'POST', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"phonenumber\":\"18537215356\",\"admin\":false,\"remark\":\"kuc\",\"password\":\"123\",\"postIds\":[2],\"email\":\"1961469106@qq.com\",\"nickName\":\"库存管理员\",\"sex\":\"0\",\"deptId\":100,\"params\":{},\"userName\":\"tom\",\"roleIds\":[100],\"status\":\"0\"}', '{\"msg\":\"新增用户\'tom\'失败，邮箱账号已存在\",\"code\":500}', 0, NULL, '2021-10-30 13:54:08');
INSERT INTO `sys_oper_log` VALUES (141, '用户管理', 1, 'com.ruoyi.project.system.controller.SysUserController.add()', 'POST', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"phonenumber\":\"18537215356\",\"admin\":false,\"remark\":\"kuc\",\"password\":\"123\",\"postIds\":[2],\"email\":\"1961469106@qq.com\",\"nickName\":\"库存管理员\",\"sex\":\"0\",\"deptId\":100,\"params\":{},\"userName\":\"jak\",\"roleIds\":[100],\"status\":\"0\"}', '{\"msg\":\"新增用户\'jak\'失败，邮箱账号已存在\",\"code\":500}', 0, NULL, '2021-10-30 13:54:18');
INSERT INTO `sys_oper_log` VALUES (142, '用户管理', 1, 'com.ruoyi.project.system.controller.SysUserController.add()', 'POST', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"phonenumber\":\"18537215356\",\"admin\":false,\"remark\":\"kuc\",\"password\":\"$2a$10$zH1TqtOc5PQCnCOogs8yvOuss6pDG89mv8qeqZZgULBqSTvXlOJna\",\"postIds\":[2],\"email\":\"1961469106a@qq.com\",\"nickName\":\"库存管理员\",\"sex\":\"0\",\"deptId\":100,\"params\":{},\"userName\":\"tom\",\"userId\":101,\"createBy\":\"admin\",\"roleIds\":[100],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-10-30 13:54:32');
INSERT INTO `sys_oper_log` VALUES (143, '菜单管理', 2, 'com.ruoyi.project.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"system\",\"orderNum\":\"5\",\"menuName\":\"系统设置\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"his/projectFee\",\"children\":[],\"createTime\":1635552439000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2000,\"menuType\":\"M\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-10-31 02:59:38');
INSERT INTO `sys_oper_log` VALUES (144, '菜单管理', 2, 'com.ruoyi.project.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"list\",\"orderNum\":\"2\",\"menuName\":\"检查费用管理\",\"params\":{},\"parentId\":2000,\"isCache\":\"0\",\"path\":\"checkCost\",\"component\":\"docker/projectFee/index\",\"children\":[],\"createTime\":1635554065000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2013,\"menuType\":\"C\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-10-31 03:06:08');
INSERT INTO `sys_oper_log` VALUES (145, '菜单管理', 1, 'com.ruoyi.project.system.controller.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"color\",\"orderNum\":\"4\",\"menuName\":\"保存病例\",\"params\":{},\"parentId\":2002,\"isCache\":\"0\",\"path\":\"saveill\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"M\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-10-31 03:35:34');
INSERT INTO `sys_oper_log` VALUES (146, '菜单管理', 2, 'com.ruoyi.project.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"color\",\"orderNum\":\"4\",\"menuName\":\"保存病例\",\"params\":{},\"parentId\":2002,\"isCache\":\"0\",\"path\":\"saveill\",\"component\":\"his/docker/saveill/index.vue\",\"children\":[],\"createTime\":1635622534000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2015,\"menuType\":\"C\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-10-31 03:37:08');
INSERT INTO `sys_oper_log` VALUES (147, '菜单管理', 2, 'com.ruoyi.project.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"color\",\"orderNum\":\"4\",\"menuName\":\"保存病例\",\"params\":{},\"parentId\":2002,\"isCache\":\"0\",\"path\":\"saveill\",\"component\":\"his/docker/saveill/index\",\"children\":[],\"createTime\":1635622534000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2015,\"menuType\":\"C\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-10-31 03:37:34');
INSERT INTO `sys_oper_log` VALUES (148, '菜单管理', 2, 'com.ruoyi.project.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"color\",\"orderNum\":\"4\",\"menuName\":\"保存病例\",\"params\":{},\"parentId\":2002,\"isCache\":\"0\",\"path\":\"saveill\",\"component\":\"his/docker/saveill/index\",\"children\":[],\"createTime\":1635622534000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2015,\"menuType\":\"C\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-10-31 03:38:14');
INSERT INTO `sys_oper_log` VALUES (149, '代码生成', 3, 'com.ruoyi.project.tool.gen.controller.GenController.remove()', 'DELETE', 1, 'admin', NULL, '/tool/gen/1', '127.0.0.1', '内网IP', '{tableIds=1}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-10-31 05:27:38');
INSERT INTO `sys_oper_log` VALUES (150, '代码生成', 6, 'com.ruoyi.project.tool.gen.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'doctor_project_fee', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-10-31 05:28:00');
INSERT INTO `sys_oper_log` VALUES (151, '菜单管理', 2, 'com.ruoyi.project.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"list\",\"orderNum\":\"1\",\"menuName\":\"门诊挂号\",\"params\":{},\"parentId\":2002,\"isCache\":\"0\",\"path\":\"register\",\"component\":\"his/doctor/register/index\",\"children\":[],\"createTime\":1635552854000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2003,\"menuType\":\"C\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-10-31 05:54:13');
INSERT INTO `sys_oper_log` VALUES (152, '菜单管理', 2, 'com.ruoyi.project.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"list\",\"orderNum\":\"2\",\"menuName\":\"挂号列表\",\"params\":{},\"parentId\":2002,\"isCache\":\"0\",\"path\":\"registerList\",\"component\":\"his/doctor/registerList/index\",\"children\":[],\"createTime\":1635552976000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2004,\"menuType\":\"C\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-10-31 05:54:22');
INSERT INTO `sys_oper_log` VALUES (153, '菜单管理', 2, 'com.ruoyi.project.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"list\",\"orderNum\":\"3\",\"menuName\":\"新开就诊\",\"params\":{},\"parentId\":2002,\"isCache\":\"0\",\"path\":\"goDocker\",\"component\":\"his/doctor/goDocker/index\",\"children\":[],\"createTime\":1635553079000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2005,\"menuType\":\"C\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-10-31 05:54:28');
INSERT INTO `sys_oper_log` VALUES (154, '菜单管理', 2, 'com.ruoyi.project.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"color\",\"orderNum\":\"4\",\"menuName\":\"保存病例\",\"params\":{},\"parentId\":2002,\"isCache\":\"0\",\"path\":\"saveill\",\"component\":\"his/doctor/saveill/index\",\"children\":[],\"createTime\":1635622534000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2015,\"menuType\":\"C\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-10-31 05:54:32');
INSERT INTO `sys_oper_log` VALUES (155, '菜单管理', 2, 'com.ruoyi.project.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"list\",\"orderNum\":\"2\",\"menuName\":\"检查费用管理\",\"params\":{},\"parentId\":2000,\"isCache\":\"0\",\"path\":\"checkCost\",\"component\":\"doctor/projectFee/index\",\"children\":[],\"createTime\":1635554065000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2013,\"menuType\":\"C\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-10-31 05:54:42');
INSERT INTO `sys_oper_log` VALUES (156, '菜单管理', 2, 'com.ruoyi.project.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"list\",\"orderNum\":\"2\",\"menuName\":\"检查费用管理\",\"params\":{},\"parentId\":2000,\"isCache\":\"0\",\"path\":\"checkCost\",\"component\":\"his/doctor/projectFee/index\",\"children\":[],\"createTime\":1635554065000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2013,\"menuType\":\"C\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-10-31 05:57:10');
INSERT INTO `sys_oper_log` VALUES (157, '菜单管理', 2, 'com.ruoyi.project.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"list\",\"orderNum\":\"2\",\"menuName\":\"检查费用管理\",\"params\":{},\"parentId\":2000,\"isCache\":\"0\",\"path\":\"checkCost\",\"component\":\"his/sys/checkCost/index\",\"children\":[],\"createTime\":1635554065000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2013,\"menuType\":\"C\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-10-31 05:57:52');
INSERT INTO `sys_oper_log` VALUES (158, '菜单管理', 2, 'com.ruoyi.project.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"list\",\"orderNum\":\"2\",\"menuName\":\"检查费用管理\",\"params\":{},\"parentId\":2000,\"isCache\":\"0\",\"path\":\"checkCost\",\"component\":\"his/sys/checkCost/index\",\"children\":[],\"createTime\":1635554065000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2013,\"menuType\":\"C\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-10-31 05:58:46');
INSERT INTO `sys_oper_log` VALUES (159, '菜单管理', 2, 'com.ruoyi.project.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"system\",\"orderNum\":\"5\",\"menuName\":\"系统设置\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"his/sys\",\"children\":[],\"createTime\":1635552439000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2000,\"menuType\":\"M\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-10-31 06:00:05');
INSERT INTO `sys_oper_log` VALUES (160, '菜单管理', 2, 'com.ruoyi.project.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"eye-open\",\"orderNum\":\"7\",\"menuName\":\"看病就诊\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"his/doctor\",\"children\":[],\"createTime\":1635552629000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2002,\"menuType\":\"M\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-10-31 06:00:16');
INSERT INTO `sys_oper_log` VALUES (161, '代码生成', 6, 'com.ruoyi.project.tool.gen.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'drugs_order,drugs_order_batch,drugs_order_detail,drugs_pro_sup,drugs_producer,drugs_stock,drugs_support', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-10-31 06:26:19');
INSERT INTO `sys_oper_log` VALUES (162, '菜单管理', 2, 'com.ruoyi.project.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"list\",\"orderNum\":\"2\",\"menuName\":\"挂号列表\",\"params\":{},\"parentId\":2002,\"isCache\":\"0\",\"path\":\"registerList\",\"component\":\"his/dockor/register/index\",\"children\":[],\"createTime\":1635552976000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2004,\"menuType\":\"C\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-10-31 06:47:38');
INSERT INTO `sys_oper_log` VALUES (163, '菜单管理', 2, 'com.ruoyi.project.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"list\",\"orderNum\":\"2\",\"menuName\":\"挂号列表\",\"params\":{},\"parentId\":2002,\"isCache\":\"0\",\"path\":\"registerList\",\"component\":\"his/docker/register/index\",\"children\":[],\"createTime\":1635552976000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2004,\"menuType\":\"C\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-10-31 06:48:45');
INSERT INTO `sys_oper_log` VALUES (164, '菜单管理', 2, 'com.ruoyi.project.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"list\",\"orderNum\":\"2\",\"menuName\":\"挂号列表\",\"params\":{},\"parentId\":2002,\"isCache\":\"0\",\"path\":\"registerList\",\"component\":\"his/docker/registerList/index\",\"children\":[],\"createTime\":1635552976000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2004,\"menuType\":\"C\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-10-31 06:51:27');
INSERT INTO `sys_oper_log` VALUES (165, '厂家管理', 1, 'com.ruoyi.project.his.controller.DrugsProducerController.add()', 'POST', 1, 'admin', NULL, '/his/producer', '127.0.0.1', '内网IP', '{\"proKeywords\":\"nc\",\"proStatus\":\"0\",\"proBoss\":\"ll\",\"proCode\":\"123568\",\"proAddress\":\"南京\",\"params\":{},\"proPhone\":\"15935826475\",\"createBy\":\"admin\",\"proName\":\"南厂\"}', 'null', 1, 'nested exception is org.apache.ibatis.reflection.ReflectionException: There is no getter for property named \'pro_address\' in \'class com.ruoyi.project.his.domain.DrugsProducer\'', '2021-10-31 06:54:29');
INSERT INTO `sys_oper_log` VALUES (166, '厂家管理', 1, 'com.ruoyi.project.his.controller.DrugsProducerController.add()', 'POST', 1, 'admin', NULL, '/his/producer', '127.0.0.1', '内网IP', '{\"proKeywords\":\"hylc\",\"proStatus\":\"0\",\"proBoss\":\"哈哈\",\"proCode\":\"125468\",\"proAddress\":\"哈尔滨\",\"params\":{},\"proPhone\":\"13598675214\",\"createBy\":\"admin\",\"proId\":6,\"proName\":\"哈药六厂\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-10-31 06:57:34');
INSERT INTO `sys_oper_log` VALUES (167, '厂家管理', 1, 'com.ruoyi.project.his.controller.DrugsProducerController.add()', 'POST', 1, 'admin', NULL, '/his/producer', '127.0.0.1', '内网IP', '{\"proKeywords\":\"hylcc\",\"proStatus\":\"0\",\"proBoss\":\"哈哈哈\",\"proCode\":\"154785\",\"proAddress\":\"哈尔滨\",\"params\":{},\"proPhone\":\"16257842145\",\"createBy\":\"admin\",\"proId\":7,\"proName\":\"哈药六厂厂\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-10-31 06:58:33');
INSERT INTO `sys_oper_log` VALUES (168, '部门管理', 3, 'com.ruoyi.project.system.controller.SysDeptController.remove()', 'DELETE', 1, 'admin', NULL, '/system/dept/7', '127.0.0.1', '内网IP', '{deptId=7}', '{\"msg\":\"操作失败\",\"code\":500}', 0, NULL, '2021-10-31 07:03:35');
INSERT INTO `sys_oper_log` VALUES (169, '岗位管理', 3, 'com.ruoyi.project.his.controller.DrugsProducerController.remove()', 'DELETE', 1, 'admin', NULL, '/his/producer/7', '127.0.0.1', '内网IP', '{postIds=7}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-10-31 07:10:06');
INSERT INTO `sys_oper_log` VALUES (170, '岗位管理', 3, 'com.ruoyi.project.his.controller.DrugsProducerController.remove()', 'DELETE', 1, 'admin', NULL, '/his/producer/6', '127.0.0.1', '内网IP', '{postIds=6}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-10-31 07:32:14');
INSERT INTO `sys_oper_log` VALUES (171, '厂家管理', 1, 'com.ruoyi.project.his.controller.DrugsProducerController.add()', 'POST', 1, 'admin', NULL, '/his/producer', '127.0.0.1', '内网IP', '{\"proKeywords\":\"wqe\",\"proStatus\":\"0\",\"proBoss\":\"sad\",\"proCode\":\"wqe\",\"proAddress\":\"ewq\",\"params\":{},\"proPhone\":\"18431111111\",\"createBy\":\"admin\",\"proId\":8,\"proName\":\"sad \"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-10-31 07:32:47');
INSERT INTO `sys_oper_log` VALUES (172, '费用查询设置', 3, 'com.ruoyi.project.his.sys.controller.ProjectFeeController.remove()', 'DELETE', 1, 'admin', NULL, '/his/projectFee/4', '127.0.0.1', '内网IP', '{postIds=4}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-10-31 08:06:02');
INSERT INTO `sys_oper_log` VALUES (173, '厂家管理', 2, 'com.ruoyi.project.his.controller.DrugsProducerController.edit()', 'PUT', 1, 'admin', NULL, '/his/producer', '127.0.0.1', '内网IP', '{\"proKeywords\":\"111111\",\"proStatus\":\"0\",\"proBoss\":\"sad\",\"proCode\":\"wqe\",\"proAddress\":\"ewq\",\"params\":{},\"proPhone\":\"18431111111\",\"createBy\":\"admin\",\"updateBy\":\"admin\",\"proId\":8,\"proName\":\"sad \"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-10-31 08:15:59');
INSERT INTO `sys_oper_log` VALUES (174, '代码生成', 8, 'com.ruoyi.project.tool.gen.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', 'null', 0, NULL, '2021-10-31 08:20:47');
INSERT INTO `sys_oper_log` VALUES (175, '菜单管理', 2, 'com.ruoyi.project.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"list\",\"orderNum\":\"2\",\"menuName\":\"挂号列表\",\"params\":{},\"parentId\":2002,\"isCache\":\"0\",\"path\":\"registerList\",\"component\":\"his/doctor/registerList/index\",\"children\":[],\"createTime\":1635552976000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2004,\"menuType\":\"C\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-10-31 08:39:14');
INSERT INTO `sys_oper_log` VALUES (176, '代码生成', 6, 'com.ruoyi.project.tool.gen.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'doctor_register', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-10-31 09:07:08');
INSERT INTO `sys_oper_log` VALUES (177, '厂家管理', 1, 'com.ruoyi.project.his.controller.DrugsSupportController.add()', 'POST', 1, 'admin', NULL, '/his/support', '127.0.0.1', '内网IP', '{\"supportCard\":\"4798491564987846513\",\"supportBoss\":\"123\",\"supportPhone\":\"1231849878\",\"params\":{},\"supportAddress\":\"魏国\",\"createBy\":\"admin\",\"supportStatus\":\"1\",\"supportId\":110,\"supportName\":\"供应商E\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-10-31 09:14:47');
INSERT INTO `sys_oper_log` VALUES (178, '厂家管理', 3, 'com.ruoyi.project.his.controller.DrugsSupportController.remove()', 'DELETE', 1, 'admin', NULL, '/his/support/110', '127.0.0.1', '内网IP', '{postIds=110}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-10-31 09:16:09');
INSERT INTO `sys_oper_log` VALUES (179, '厂家管理', 2, 'com.ruoyi.project.his.controller.DrugsSupportController.edit()', 'PUT', 1, 'admin', NULL, '/his/support', '127.0.0.1', '内网IP', '{\"supportCard\":\"6317884652231559780\",\"supportBoss\":\"卫庄\",\"supportPhone\":\"18537215359\",\"params\":{},\"supportAddress\":\"M78星云DD省\",\"supportStatus\":\"0\",\"createTime\":1631696530000,\"updateBy\":\"admin\",\"supportId\":4,\"supportName\":\"供应商DD\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-10-31 09:17:47');
INSERT INTO `sys_oper_log` VALUES (180, '代码生成', 6, 'com.ruoyi.project.tool.gen.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'drugs_durg', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-10-31 09:21:22');
INSERT INTO `sys_oper_log` VALUES (181, '代码生成', 8, 'com.ruoyi.project.tool.gen.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', 'null', 0, NULL, '2021-10-31 09:21:24');
INSERT INTO `sys_oper_log` VALUES (182, '字典类型', 1, 'com.ruoyi.project.system.controller.SysDictTypeController.add()', 'POST', 1, 'admin', NULL, '/system/dict/type', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"dictName\":\"订单明细状态\",\"params\":{},\"dictType\":\"order_detail_status\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-10-31 09:35:02');
INSERT INTO `sys_oper_log` VALUES (183, '字典数据', 1, 'com.ruoyi.project.system.controller.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"dictValue\":\"0\",\"dictSort\":1,\"params\":{},\"dictType\":\"order_detail_status\",\"dictLabel\":\"申请状态\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-10-31 09:36:50');
INSERT INTO `sys_oper_log` VALUES (184, '字典数据', 1, 'com.ruoyi.project.system.controller.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"dictValue\":\"1\",\"dictSort\":2,\"params\":{},\"dictType\":\"order_detail_status\",\"dictLabel\":\"审核状态\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-10-31 09:37:04');
INSERT INTO `sys_oper_log` VALUES (185, '字典数据', 2, 'com.ruoyi.project.system.controller.SysDictDataController.edit()', 'PUT', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"dictValue\":\"1\",\"dictSort\":2,\"params\":{},\"dictType\":\"order_detail_status\",\"dictLabel\":\"待审状态\",\"createBy\":\"admin\",\"default\":false,\"isDefault\":\"N\",\"createTime\":1635644224000,\"dictCode\":101,\"updateBy\":\"admin\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-10-31 09:37:37');
INSERT INTO `sys_oper_log` VALUES (186, '字典数据', 1, 'com.ruoyi.project.system.controller.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"dictValue\":\"2\",\"dictSort\":3,\"params\":{},\"dictType\":\"order_detail_status\",\"dictLabel\":\"审核失败\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-10-31 09:37:57');
INSERT INTO `sys_oper_log` VALUES (187, '字典数据', 1, 'com.ruoyi.project.system.controller.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"dictValue\":\"3\",\"dictSort\":4,\"params\":{},\"dictType\":\"order_detail_status\",\"dictLabel\":\"审核成功\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-10-31 09:38:27');
INSERT INTO `sys_oper_log` VALUES (188, '字典数据', 1, 'com.ruoyi.project.system.controller.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"dictValue\":\"4\",\"dictSort\":5,\"params\":{},\"dictType\":\"order_detail_status\",\"dictLabel\":\"入库成功\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-10-31 09:38:36');
INSERT INTO `sys_oper_log` VALUES (189, '字典数据', 1, 'com.ruoyi.project.system.controller.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"dictValue\":\"5\",\"dictSort\":6,\"params\":{},\"dictType\":\"order_detail_status\",\"dictLabel\":\"作废状态\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-10-31 09:38:59');
INSERT INTO `sys_oper_log` VALUES (190, '岗位管理', 1, 'com.ruoyi.project.his.sys.controller.ProjectFeeController.add()', 'POST', 1, 'admin', NULL, '/his/projectFee', '127.0.0.1', '内网IP', '{\"params\":{},\"projectTimes\":\"次\",\"createBy\":\"admin\",\"projectCost\":20,\"projectUnitprice\":100,\"keyword\":\"cxzcz\",\"projectName\":\"dsadas\",\"status\":\"0\"}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'project_type\' doesn\'t have a default value\r\n### The error may exist in file [D:\\yunyiliao\\his-server\\RuoYi-Vue-fast-master\\target\\classes\\mybatis\\his\\sys\\ProjectfeeMapper.xml]\r\n### The error may involve com.ruoyi.project.his.sys.mapper.ProjectFeeMapper.insertPojectFee-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into doctor_project_fee          ( project_name,             keyword,             project_unitprice,             project_cost,             project_times,                                       status,                                       create_by )           values ( ?,             ?,             ?,             ?,             ?,                                       ?,                                       ? )\r\n### Cause: java.sql.SQLException: Field \'project_type\' doesn\'t have a default value\n; Field \'project_type\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'project_type\' doesn\'t have a default value', '2021-10-31 12:48:05');
INSERT INTO `sys_oper_log` VALUES (191, '岗位管理', 1, 'com.ruoyi.project.his.sys.controller.ProjectFeeController.add()', 'POST', 1, 'admin', NULL, '/his/projectFee', '127.0.0.1', '内网IP', '{\"params\":{},\"projectTimes\":\"次\",\"createBy\":\"admin\",\"projectCost\":20,\"projectUnitprice\":100,\"keyword\":\"cxzcz\",\"projectName\":\"dsadas\",\"status\":\"0\"}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'project_type\' doesn\'t have a default value\r\n### The error may exist in file [D:\\yunyiliao\\his-server\\RuoYi-Vue-fast-master\\target\\classes\\mybatis\\his\\sys\\ProjectfeeMapper.xml]\r\n### The error may involve com.ruoyi.project.his.sys.mapper.ProjectFeeMapper.insertPojectFee-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into doctor_project_fee          ( project_name,             keyword,             project_unitprice,             project_cost,             project_times,                                       status,                                       create_by )           values ( ?,             ?,             ?,             ?,             ?,                                       ?,                                       ? )\r\n### Cause: java.sql.SQLException: Field \'project_type\' doesn\'t have a default value\n; Field \'project_type\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'project_type\' doesn\'t have a default value', '2021-10-31 12:49:10');
INSERT INTO `sys_oper_log` VALUES (192, '岗位管理', 1, 'com.ruoyi.project.his.sys.controller.ProjectFeeController.add()', 'POST', 1, 'admin', NULL, '/his/projectFee', '127.0.0.1', '内网IP', '{\"params\":{},\"projectTimes\":\"大\",\"createBy\":\"admin\",\"projectCost\":123,\"projectUnitprice\":1231,\"keyword\":\"阿森松岛\",\"projectName\":\"打算\",\"status\":\"0\"}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'project_type\' doesn\'t have a default value\r\n### The error may exist in file [D:\\yunyiliao\\his-server\\RuoYi-Vue-fast-master\\target\\classes\\mybatis\\his\\sys\\ProjectfeeMapper.xml]\r\n### The error may involve com.ruoyi.project.his.sys.mapper.ProjectFeeMapper.insertPojectFee-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into doctor_project_fee          ( project_name,             keyword,             project_unitprice,             project_cost,             project_times,                                       status,                                       create_by )           values ( ?,             ?,             ?,             ?,             ?,                                       ?,                                       ? )\r\n### Cause: java.sql.SQLException: Field \'project_type\' doesn\'t have a default value\n; Field \'project_type\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'project_type\' doesn\'t have a default value', '2021-10-31 13:03:27');
INSERT INTO `sys_oper_log` VALUES (193, '岗位管理', 1, 'com.ruoyi.project.his.sys.controller.ProjectFeeController.add()', 'POST', 1, 'admin', NULL, '/his/projectFee', '127.0.0.1', '内网IP', '{\"params\":{},\"projectTimes\":\"大\",\"createBy\":\"admin\",\"projectCost\":123,\"projectUnitprice\":1231,\"keyword\":\"阿森松岛\",\"projectName\":\"打算\",\"status\":\"0\"}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'project_type\' doesn\'t have a default value\r\n### The error may exist in file [D:\\yunyiliao\\his-server\\RuoYi-Vue-fast-master\\target\\classes\\mybatis\\his\\sys\\ProjectfeeMapper.xml]\r\n### The error may involve com.ruoyi.project.his.sys.mapper.ProjectFeeMapper.insertPojectFee-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into doctor_project_fee          ( project_name,             keyword,             project_unitprice,             project_cost,             project_times,                                       status,                                       create_by )           values ( ?,             ?,             ?,             ?,             ?,                                       ?,                                       ? )\r\n### Cause: java.sql.SQLException: Field \'project_type\' doesn\'t have a default value\n; Field \'project_type\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'project_type\' doesn\'t have a default value', '2021-10-31 13:04:42');
INSERT INTO `sys_oper_log` VALUES (194, '岗位管理', 1, 'com.ruoyi.project.his.sys.controller.ProjectFeeController.add()', 'POST', 1, 'admin', NULL, '/his/projectFee', '127.0.0.1', '内网IP', '{\"params\":{},\"projectTimes\":\"释放锁\",\"createBy\":\"admin\",\"projectCost\":123,\"projectUnitprice\":123,\"keyword\":\"请求\",\"projectName\":\"ad\",\"status\":\"0\"}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'project_type\' doesn\'t have a default value\r\n### The error may exist in file [D:\\yunyiliao\\his-server\\RuoYi-Vue-fast-master\\target\\classes\\mybatis\\his\\sys\\ProjectfeeMapper.xml]\r\n### The error may involve com.ruoyi.project.his.sys.mapper.ProjectFeeMapper.insertPojectFee-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into doctor_project_fee          ( project_name,             keyword,             project_unitprice,             project_cost,             project_times,                                       status,                                       create_by )           values ( ?,             ?,             ?,             ?,             ?,                                       ?,                                       ? )\r\n### Cause: java.sql.SQLException: Field \'project_type\' doesn\'t have a default value\n; Field \'project_type\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'project_type\' doesn\'t have a default value', '2021-10-31 13:07:54');
INSERT INTO `sys_oper_log` VALUES (195, '岗位管理', 1, 'com.ruoyi.project.his.sys.controller.ProjectFeeController.add()', 'POST', 1, 'admin', NULL, '/his/projectFee', '127.0.0.1', '内网IP', '{\"params\":{},\"projectTimes\":\"1111\",\"createBy\":\"admin\",\"projectCost\":111,\"projectUnitprice\":111,\"keyword\":\"111\",\"projectName\":\"去去去\",\"status\":\"0\"}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'project_type\' doesn\'t have a default value\r\n### The error may exist in file [D:\\yunyiliao\\his-server\\RuoYi-Vue-fast-master\\target\\classes\\mybatis\\his\\sys\\ProjectfeeMapper.xml]\r\n### The error may involve com.ruoyi.project.his.sys.mapper.ProjectFeeMapper.insertPojectFee-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into doctor_project_fee          ( project_name,             keyword,             project_unitprice,             project_cost,             project_times,                                       status,                                       create_by )           values ( ?,             ?,             ?,             ?,             ?,                                       ?,                                       ? )\r\n### Cause: java.sql.SQLException: Field \'project_type\' doesn\'t have a default value\n; Field \'project_type\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'project_type\' doesn\'t have a default value', '2021-10-31 13:09:30');
INSERT INTO `sys_oper_log` VALUES (196, '岗位管理', 1, 'com.ruoyi.project.his.sys.controller.ProjectFeeController.add()', 'POST', 1, 'admin', NULL, '/his/projectFee', '127.0.0.1', '内网IP', '{\"params\":{},\"projectTimes\":\"111\",\"createBy\":\"admin\",\"projectCost\":111,\"projectUnitprice\":1111,\"keyword\":\"1111\",\"projectName\":\"1111\",\"status\":\"0\"}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'project_type\' doesn\'t have a default value\r\n### The error may exist in file [D:\\yunyiliao\\his-server\\RuoYi-Vue-fast-master\\target\\classes\\mybatis\\his\\sys\\ProjectfeeMapper.xml]\r\n### The error may involve com.ruoyi.project.his.sys.mapper.ProjectFeeMapper.insertPojectFee-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into doctor_project_fee          ( project_name,             keyword,             project_unitprice,             project_cost,             project_times,                                       status,                                       create_by )           values ( ?,             ?,             ?,             ?,             ?,                                       ?,                                       ? )\r\n### Cause: java.sql.SQLException: Field \'project_type\' doesn\'t have a default value\n; Field \'project_type\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'project_type\' doesn\'t have a default value', '2021-10-31 13:10:54');
INSERT INTO `sys_oper_log` VALUES (197, '菜单管理', 1, 'com.ruoyi.project.system.controller.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"list\",\"orderNum\":\"5\",\"menuName\":\"添加更新订单\",\"params\":{},\"parentId\":2001,\"isCache\":\"0\",\"path\":\"addOrder\",\"component\":\"his/drug/addOrder/index\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"C\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-10-31 13:15:42');
INSERT INTO `sys_oper_log` VALUES (198, '岗位管理', 1, 'com.ruoyi.project.his.sys.controller.ProjectFeeController.add()', 'POST', 1, 'admin', NULL, '/his/projectFee', '127.0.0.1', '内网IP', '{\"params\":{},\"projectTimes\":\"1111\",\"createBy\":\"admin\",\"projectCost\":111,\"projectUnitprice\":111,\"keyword\":\"1111\",\"projectName\":\"111\",\"status\":\"0\"}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'project_type\' doesn\'t have a default value\r\n### The error may exist in file [D:\\yunyiliao\\his-server\\RuoYi-Vue-fast-master\\target\\classes\\mybatis\\his\\sys\\ProjectfeeMapper.xml]\r\n### The error may involve com.ruoyi.project.his.sys.mapper.ProjectFeeMapper.insertPojectFee-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into doctor_project_fee          ( project_name,             keyword,             project_unitprice,             project_cost,             project_times,                                       status,                                       create_by )           values ( ?,             ?,             ?,             ?,             ?,                                       ?,                                       ? )\r\n### Cause: java.sql.SQLException: Field \'project_type\' doesn\'t have a default value\n; Field \'project_type\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'project_type\' doesn\'t have a default value', '2021-10-31 13:26:30');
INSERT INTO `sys_oper_log` VALUES (199, '岗位管理', 1, 'com.ruoyi.project.his.sys.controller.ProjectFeeController.add()', 'POST', 1, 'admin', NULL, '/his/projectFee', '127.0.0.1', '内网IP', '{\"params\":{},\"projectTimes\":\"1111\",\"createBy\":\"admin\",\"projectCost\":111,\"projectUnitprice\":111,\"keyword\":\"111\",\"projectName\":\"1111\",\"status\":\"0\"}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'project_type\' doesn\'t have a default value\r\n### The error may exist in file [D:\\yunyiliao\\his-server\\RuoYi-Vue-fast-master\\target\\classes\\mybatis\\his\\sys\\ProjectfeeMapper.xml]\r\n### The error may involve com.ruoyi.project.his.sys.mapper.ProjectFeeMapper.insertPojectFee-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into doctor_project_fee          ( project_name,             keyword,             project_unitprice,             project_cost,             project_times,                                       status,                                       create_by )           values ( ?,             ?,             ?,             ?,             ?,                                       ?,                                       ? )\r\n### Cause: java.sql.SQLException: Field \'project_type\' doesn\'t have a default value\n; Field \'project_type\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'project_type\' doesn\'t have a default value', '2021-10-31 13:28:21');
INSERT INTO `sys_oper_log` VALUES (200, '岗位管理', 1, 'com.ruoyi.project.his.sys.controller.ProjectFeeController.add()', 'POST', 1, 'admin', NULL, '/his/projectFee', '127.0.0.1', '内网IP', '{\"params\":{},\"projectTimes\":\"1111\",\"createBy\":\"admin\",\"projectCost\":111,\"projectUnitprice\":111,\"keyword\":\"1111\",\"projectName\":\"111\",\"status\":\"0\"}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'project_type\' doesn\'t have a default value\r\n### The error may exist in file [D:\\yunyiliao\\his-server\\RuoYi-Vue-fast-master\\target\\classes\\mybatis\\his\\sys\\ProjectfeeMapper.xml]\r\n### The error may involve com.ruoyi.project.his.sys.mapper.ProjectFeeMapper.insertPojectFee-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into doctor_project_fee          ( project_name,             keyword,             project_unitprice,             project_cost,             project_times,                                       status,                                       create_by )           values ( ?,             ?,             ?,             ?,             ?,                                       ?,                                       ? )\r\n### Cause: java.sql.SQLException: Field \'project_type\' doesn\'t have a default value\n; Field \'project_type\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'project_type\' doesn\'t have a default value', '2021-10-31 13:29:33');
INSERT INTO `sys_oper_log` VALUES (201, '岗位管理', 1, 'com.ruoyi.project.his.sys.controller.ProjectFeeController.add()', 'POST', 1, 'admin', NULL, '/his/projectFee', '127.0.0.1', '内网IP', '{\"params\":{},\"projectTimes\":\"111\",\"createBy\":\"admin\",\"projectCost\":11111,\"projectUnitprice\":11,\"keyword\":\"111\",\"projectName\":\"111\",\"status\":\"1\"}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'project_type\' doesn\'t have a default value\r\n### The error may exist in file [D:\\yunyiliao\\his-server\\RuoYi-Vue-fast-master\\target\\classes\\mybatis\\his\\sys\\ProjectfeeMapper.xml]\r\n### The error may involve com.ruoyi.project.his.sys.mapper.ProjectFeeMapper.insertPojectFee-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into doctor_project_fee          ( project_name,             keyword,             project_unitprice,             project_cost,             project_times,                                       status,                                       create_by )           values ( ?,             ?,             ?,             ?,             ?,                                       ?,                                       ? )\r\n### Cause: java.sql.SQLException: Field \'project_type\' doesn\'t have a default value\n; Field \'project_type\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'project_type\' doesn\'t have a default value', '2021-10-31 13:30:49');
INSERT INTO `sys_oper_log` VALUES (202, '岗位管理', 1, 'com.ruoyi.project.his.sys.controller.ProjectFeeController.add()', 'POST', 1, 'admin', NULL, '/his/projectFee', '127.0.0.1', '内网IP', '{\"params\":{},\"projectTimes\":\"111\",\"createBy\":\"admin\",\"projectCost\":11111,\"projectUnitprice\":11,\"keyword\":\"111\",\"projectName\":\"111\",\"status\":\"1\"}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'project_type\' doesn\'t have a default value\r\n### The error may exist in file [D:\\yunyiliao\\his-server\\RuoYi-Vue-fast-master\\target\\classes\\mybatis\\his\\sys\\ProjectfeeMapper.xml]\r\n### The error may involve com.ruoyi.project.his.sys.mapper.ProjectFeeMapper.insertPojectFee-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into doctor_project_fee          ( project_name,             keyword,             project_unitprice,             project_cost,             project_times,                                       status,                                       create_by )           values ( ?,             ?,             ?,             ?,             ?,                                       ?,                                       ? )\r\n### Cause: java.sql.SQLException: Field \'project_type\' doesn\'t have a default value\n; Field \'project_type\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'project_type\' doesn\'t have a default value', '2021-10-31 13:32:19');
INSERT INTO `sys_oper_log` VALUES (203, '岗位管理', 1, 'com.ruoyi.project.his.sys.controller.ProjectFeeController.add()', 'POST', 1, 'admin', NULL, '/his/projectFee', '127.0.0.1', '内网IP', '{\"params\":{},\"projectTimes\":\"111\",\"createBy\":\"admin\",\"projectCost\":1111,\"projectUnitprice\":11,\"keyword\":\"111\",\"projectName\":\"11\",\"status\":\"0\"}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'project_type\' doesn\'t have a default value\r\n### The error may exist in file [D:\\yunyiliao\\his-server\\RuoYi-Vue-fast-master\\target\\classes\\mybatis\\his\\sys\\ProjectfeeMapper.xml]\r\n### The error may involve com.ruoyi.project.his.sys.mapper.ProjectFeeMapper.insertPojectFee-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into doctor_project_fee          ( project_name,             keyword,             project_unitprice,             project_cost,             project_times,                                       status,                                       create_by )           values ( ?,             ?,             ?,             ?,             ?,                                       ?,                                       ? )\r\n### Cause: java.sql.SQLException: Field \'project_type\' doesn\'t have a default value\n; Field \'project_type\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'project_type\' doesn\'t have a default value', '2021-10-31 13:32:32');
INSERT INTO `sys_oper_log` VALUES (204, '岗位管理', 1, 'com.ruoyi.project.his.sys.controller.ProjectFeeController.add()', 'POST', 1, 'admin', NULL, '/his/projectFee', '127.0.0.1', '内网IP', '{\"params\":{},\"projectTimes\":\"111\",\"createBy\":\"admin\",\"projectCost\":111,\"projectUnitprice\":111,\"keyword\":\"1111\",\"projectName\":\"111\",\"status\":\"0\"}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'project_type\' doesn\'t have a default value\r\n### The error may exist in file [D:\\yunyiliao\\his-server\\RuoYi-Vue-fast-master\\target\\classes\\mybatis\\his\\sys\\ProjectfeeMapper.xml]\r\n### The error may involve com.ruoyi.project.his.sys.mapper.ProjectFeeMapper.insertPojectFee-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into doctor_project_fee          ( project_name,             keyword,             project_unitprice,             project_cost,             project_times,                                       status,                                       create_by )           values ( ?,             ?,             ?,             ?,             ?,                                       ?,                                       ? )\r\n### Cause: java.sql.SQLException: Field \'project_type\' doesn\'t have a default value\n; Field \'project_type\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'project_type\' doesn\'t have a default value', '2021-10-31 13:34:37');
INSERT INTO `sys_oper_log` VALUES (205, '岗位管理', 1, 'com.ruoyi.project.his.sys.controller.ProjectFeeController.add()', 'POST', 1, 'admin', NULL, '/his/projectFee', '127.0.0.1', '内网IP', '{\"params\":{},\"projectTimes\":\"111\",\"createBy\":\"admin\",\"projectCost\":1111,\"projectUnitprice\":111,\"keyword\":\"111\",\"projectName\":\"1111\",\"status\":\"0\"}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'project_type\' doesn\'t have a default value\r\n### The error may exist in file [D:\\yunyiliao\\his-server\\RuoYi-Vue-fast-master\\target\\classes\\mybatis\\his\\sys\\ProjectfeeMapper.xml]\r\n### The error may involve com.ruoyi.project.his.sys.mapper.ProjectFeeMapper.insertPojectFee-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into doctor_project_fee          ( project_name,             keyword,             project_unitprice,             project_cost,             project_times,                                       status,                                       create_by )           values ( ?,             ?,             ?,             ?,             ?,                                       ?,                                       ? )\r\n### Cause: java.sql.SQLException: Field \'project_type\' doesn\'t have a default value\n; Field \'project_type\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'project_type\' doesn\'t have a default value', '2021-10-31 13:40:20');
INSERT INTO `sys_oper_log` VALUES (206, '岗位管理', 1, 'com.ruoyi.project.his.sys.controller.ProjectFeeController.add()', 'POST', 1, 'admin', NULL, '/his/projectFee', '127.0.0.1', '内网IP', '{\"params\":{},\"projectTimes\":\"111\",\"createBy\":\"admin\",\"projectCost\":1111,\"projectUnitprice\":111,\"keyword\":\"111\",\"projectName\":\"1111\",\"status\":\"0\"}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'project_type\' doesn\'t have a default value\r\n### The error may exist in file [D:\\yunyiliao\\his-server\\RuoYi-Vue-fast-master\\target\\classes\\mybatis\\his\\sys\\ProjectfeeMapper.xml]\r\n### The error may involve com.ruoyi.project.his.sys.mapper.ProjectFeeMapper.insertPojectFee-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into doctor_project_fee          ( project_name,             keyword,             project_unitprice,             project_cost,             project_times,                                       status,                                       create_by )           values ( ?,             ?,             ?,             ?,             ?,                                       ?,                                       ? )\r\n### Cause: java.sql.SQLException: Field \'project_type\' doesn\'t have a default value\n; Field \'project_type\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'project_type\' doesn\'t have a default value', '2021-10-31 13:40:26');
INSERT INTO `sys_oper_log` VALUES (207, '岗位管理', 1, 'com.ruoyi.project.his.sys.controller.ProjectFeeController.add()', 'POST', 1, 'admin', NULL, '/his/projectFee', '127.0.0.1', '内网IP', '{\"params\":{},\"projectTimes\":\"11\",\"createBy\":\"admin\",\"projectCost\":111,\"projectUnitprice\":111,\"keyword\":\"1111\",\"projectName\":\"11\",\"status\":\"0\"}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'project_type\' doesn\'t have a default value\r\n### The error may exist in file [D:\\yunyiliao\\his-server\\RuoYi-Vue-fast-master\\target\\classes\\mybatis\\his\\sys\\ProjectfeeMapper.xml]\r\n### The error may involve com.ruoyi.project.his.sys.mapper.ProjectFeeMapper.insertPojectFee-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into doctor_project_fee          ( project_name,             keyword,             project_unitprice,             project_cost,             project_times,                                       status,                                       create_by )           values ( ?,             ?,             ?,             ?,             ?,                                       ?,                                       ? )\r\n### Cause: java.sql.SQLException: Field \'project_type\' doesn\'t have a default value\n; Field \'project_type\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'project_type\' doesn\'t have a default value', '2021-10-31 13:43:36');
INSERT INTO `sys_oper_log` VALUES (208, '岗位管理', 1, 'com.ruoyi.project.his.sys.controller.ProjectFeeController.add()', 'POST', 1, 'admin', NULL, '/his/projectFee', '127.0.0.1', '内网IP', '{\"params\":{},\"projectTimes\":\"111\",\"createBy\":\"admin\",\"projectCost\":1111,\"projectUnitprice\":111,\"keyword\":\"111\",\"projectName\":\"啊啊啊啊\",\"status\":\"0\"}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'project_type\' doesn\'t have a default value\r\n### The error may exist in file [D:\\yunyiliao\\his-server\\RuoYi-Vue-fast-master\\target\\classes\\mybatis\\his\\sys\\ProjectfeeMapper.xml]\r\n### The error may involve com.ruoyi.project.his.sys.mapper.ProjectFeeMapper.insertPojectFee-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into doctor_project_fee          ( project_name,             keyword,             project_unitprice,             project_cost,             project_times,                                       status,                                       create_by )           values ( ?,             ?,             ?,             ?,             ?,                                       ?,                                       ? )\r\n### Cause: java.sql.SQLException: Field \'project_type\' doesn\'t have a default value\n; Field \'project_type\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'project_type\' doesn\'t have a default value', '2021-10-31 13:55:06');
INSERT INTO `sys_oper_log` VALUES (209, '岗位管理', 1, 'com.ruoyi.project.his.sys.controller.ProjectFeeController.add()', 'POST', 1, 'admin', NULL, '/his/projectFee', '127.0.0.1', '内网IP', '{\"params\":{},\"projectTimes\":\"111\",\"createBy\":\"admin\",\"projectCost\":1,\"projectUnitprice\":111,\"keyword\":\"111\",\"projectName\":\"AA\",\"status\":\"0\"}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'project_type\' doesn\'t have a default value\r\n### The error may exist in file [D:\\yunyiliao\\his-server\\RuoYi-Vue-fast-master\\target\\classes\\mybatis\\his\\sys\\ProjectfeeMapper.xml]\r\n### The error may involve com.ruoyi.project.his.sys.mapper.ProjectFeeMapper.insertPojectFee-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into doctor_project_fee          ( project_name,             keyword,             project_unitprice,             project_cost,             project_times,                                       status,                                       create_by )           values ( ?,             ?,             ?,             ?,             ?,                                       ?,                                       ? )\r\n### Cause: java.sql.SQLException: Field \'project_type\' doesn\'t have a default value\n; Field \'project_type\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'project_type\' doesn\'t have a default value', '2021-10-31 13:58:48');
INSERT INTO `sys_oper_log` VALUES (210, '岗位管理', 1, 'com.ruoyi.project.his.sys.controller.ProjectFeeController.add()', 'POST', 1, 'admin', NULL, '/his/projectFee', '127.0.0.1', '内网IP', '{\"params\":{},\"projectTimes\":\"111\",\"createBy\":\"admin\",\"projectCost\":11,\"projectUnitprice\":1111,\"keyword\":\"111\",\"projectName\":\"111\",\"status\":\"0\"}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'project_type\' doesn\'t have a default value\r\n### The error may exist in file [D:\\yunyiliao\\his-server\\RuoYi-Vue-fast-master\\target\\classes\\mybatis\\his\\sys\\ProjectfeeMapper.xml]\r\n### The error may involve com.ruoyi.project.his.sys.mapper.ProjectFeeMapper.insertPojectFee-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into doctor_project_fee          ( project_name,             keyword,             project_unitprice,             project_cost,             project_times,                                       status,                                       create_by )           values ( ?,             ?,             ?,             ?,             ?,                                       ?,                                       ? )\r\n### Cause: java.sql.SQLException: Field \'project_type\' doesn\'t have a default value\n; Field \'project_type\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'project_type\' doesn\'t have a default value', '2021-10-31 13:59:44');
INSERT INTO `sys_oper_log` VALUES (211, '岗位管理', 1, 'com.ruoyi.project.his.sys.controller.ProjectFeeController.add()', 'POST', 1, 'admin', NULL, '/his/projectFee', '127.0.0.1', '内网IP', '{\"params\":{},\"projectTimes\":\"1111\",\"createBy\":\"admin\",\"projectCost\":11,\"projectUnitprice\":11111,\"keyword\":\"1111\",\"projectName\":\"111\",\"status\":\"0\"}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'project_type\' doesn\'t have a default value\r\n### The error may exist in file [D:\\yunyiliao\\his-server\\RuoYi-Vue-fast-master\\target\\classes\\mybatis\\his\\sys\\ProjectfeeMapper.xml]\r\n### The error may involve com.ruoyi.project.his.sys.mapper.ProjectFeeMapper.insertPojectFee-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into doctor_project_fee          ( project_name,             keyword,             project_unitprice,             project_cost,             project_times,                                       status,                                       create_by )           values ( ?,             ?,             ?,             ?,             ?,                                       ?,                                       ? )\r\n### Cause: java.sql.SQLException: Field \'project_type\' doesn\'t have a default value\n; Field \'project_type\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'project_type\' doesn\'t have a default value', '2021-10-31 14:00:53');
INSERT INTO `sys_oper_log` VALUES (212, '岗位管理', 1, 'com.ruoyi.project.his.sys.controller.ProjectFeeController.add()', 'POST', 1, 'admin', NULL, '/his/projectFee', '127.0.0.1', '内网IP', '{\"params\":{},\"projectTimes\":\"1111\",\"createBy\":\"admin\",\"projectCost\":11111,\"projectUnitprice\":1111,\"keyword\":\"111\",\"projectName\":\"111\",\"status\":\"0\"}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'project_type\' doesn\'t have a default value\r\n### The error may exist in file [D:\\yunyiliao\\his-server\\RuoYi-Vue-fast-master\\target\\classes\\mybatis\\his\\sys\\ProjectfeeMapper.xml]\r\n### The error may involve com.ruoyi.project.his.sys.mapper.ProjectFeeMapper.insertPojectFee-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into doctor_project_fee          ( project_name,             keyword,             project_unitprice,             project_cost,             project_times,                                       status,                                       create_by )           values ( ?,             ?,             ?,             ?,             ?,                                       ?,                                       ? )\r\n### Cause: java.sql.SQLException: Field \'project_type\' doesn\'t have a default value\n; Field \'project_type\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'project_type\' doesn\'t have a default value', '2021-10-31 14:01:36');
INSERT INTO `sys_oper_log` VALUES (213, '岗位管理', 1, 'com.ruoyi.project.his.sys.controller.ProjectFeeController.add()', 'POST', 1, 'admin', NULL, '/his/projectFee', '127.0.0.1', '内网IP', '{\"params\":{},\"projectTimes\":\"11\",\"createBy\":\"admin\",\"projectCost\":11,\"projectUnitprice\":111,\"keyword\":\"111\",\"projectName\":\"1111\",\"status\":\"0\"}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'project_type\' doesn\'t have a default value\r\n### The error may exist in file [D:\\yunyiliao\\his-server\\RuoYi-Vue-fast-master\\target\\classes\\mybatis\\his\\sys\\ProjectfeeMapper.xml]\r\n### The error may involve com.ruoyi.project.his.sys.mapper.ProjectFeeMapper.insertPojectFee-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into doctor_project_fee          ( project_name,             keyword,             project_unitprice,             project_cost,             project_times,                                       status,                                       create_by )           values ( ?,             ?,             ?,             ?,             ?,                                       ?,                                       ? )\r\n### Cause: java.sql.SQLException: Field \'project_type\' doesn\'t have a default value\n; Field \'project_type\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'project_type\' doesn\'t have a default value', '2021-10-31 14:05:18');
INSERT INTO `sys_oper_log` VALUES (214, '岗位管理', 1, 'com.ruoyi.project.his.sys.controller.ProjectFeeController.add()', 'POST', 1, 'admin', NULL, '/his/projectFee', '127.0.0.1', '内网IP', '{\"params\":{},\"projectTimes\":\"111\",\"createBy\":\"admin\",\"projectCost\":111,\"projectUnitprice\":11111,\"keyword\":\"11\",\"projectName\":\"111\",\"status\":\"0\"}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'project_type\' doesn\'t have a default value\r\n### The error may exist in file [D:\\yunyiliao\\his-server\\RuoYi-Vue-fast-master\\target\\classes\\mybatis\\his\\sys\\ProjectfeeMapper.xml]\r\n### The error may involve com.ruoyi.project.his.sys.mapper.ProjectFeeMapper.insertPojectFee-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into doctor_project_fee          ( project_name,             keyword,             project_unitprice,             project_cost,             project_times,                                       status,                                       create_by )           values ( ?,             ?,             ?,             ?,             ?,                                       ?,                                       ? )\r\n### Cause: java.sql.SQLException: Field \'project_type\' doesn\'t have a default value\n; Field \'project_type\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'project_type\' doesn\'t have a default value', '2021-10-31 14:06:43');
INSERT INTO `sys_oper_log` VALUES (215, '岗位管理', 1, 'com.ruoyi.project.his.sys.controller.ProjectFeeController.add()', 'POST', 1, 'admin', NULL, '/his/projectFee', '127.0.0.1', '内网IP', '{\"projectType\":\"拍片类\",\"params\":{},\"projectTimes\":\"11\",\"createBy\":\"admin\",\"projectCost\":111,\"projectUnitprice\":11,\"keyword\":\"111\",\"projectName\":\"11\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-10-31 14:07:48');
INSERT INTO `sys_oper_log` VALUES (216, '费用查询设置', 3, 'com.ruoyi.project.his.sys.controller.ProjectFeeController.remove()', 'DELETE', 1, 'admin', NULL, '/his/projectFee/6', '127.0.0.1', '内网IP', '{postIds=6}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-10-31 14:09:14');
INSERT INTO `sys_oper_log` VALUES (217, '岗位管理', 1, 'com.ruoyi.project.his.sys.controller.ProjectFeeController.add()', 'POST', 1, 'admin', NULL, '/his/projectFee', '127.0.0.1', '内网IP', '{\"projectType\":\"化验类\",\"params\":{},\"projectTimes\":\"次\",\"createBy\":\"admin\",\"projectCost\":800,\"projectUnitprice\":1000,\"keyword\":\"sj\",\"projectName\":\"神经\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-10-31 14:10:17');
INSERT INTO `sys_oper_log` VALUES (218, '科室管理', 2, 'com.ruoyi.project.his.sys.controller.ProjectFeeController.edit()', 'PUT', 1, 'admin', NULL, '/his/projectFee', '127.0.0.1', '内网IP', '{\"ext02\":\"\",\"ext01\":\"\",\"projectType\":\"化验类\",\"updateTime\":1635729315492,\"params\":{},\"projectTimes\":\"次\",\"createBy\":\"admin\",\"createTime\":1635660617000,\"projectCost\":800,\"updateBy\":\"admin\",\"projectUnitprice\":1000,\"keyword\":\"sjk\",\"projectName\":\"神经检查\",\"projectId\":7,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-11-01 01:15:14');
INSERT INTO `sys_oper_log` VALUES (219, '菜单管理', 2, 'com.ruoyi.project.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"list\",\"orderNum\":\"2\",\"menuName\":\"检查费用管理\",\"params\":{},\"parentId\":2000,\"isCache\":\"0\",\"path\":\"checkCost\",\"component\":\"his/sys/checkCost/index\",\"children\":[],\"createTime\":1635554065000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2013,\"menuType\":\"C\",\"perms\":\"his:projectFee:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-11-01 01:33:14');
INSERT INTO `sys_oper_log` VALUES (220, '菜单管理', 1, 'com.ruoyi.project.system.controller.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"orderNum\":\"1\",\"menuName\":\"添加\",\"params\":{},\"parentId\":2013,\"isCache\":\"0\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"F\",\"perms\":\"his:projectFee:add\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-11-01 01:37:23');
INSERT INTO `sys_oper_log` VALUES (221, '菜单管理', 1, 'com.ruoyi.project.system.controller.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"orderNum\":\"2\",\"menuName\":\"修改\",\"params\":{},\"parentId\":2013,\"isCache\":\"0\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"F\",\"perms\":\"his:projectFee:edit\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-11-01 01:37:49');
INSERT INTO `sys_oper_log` VALUES (222, '菜单管理', 1, 'com.ruoyi.project.system.controller.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"orderNum\":\"3\",\"menuName\":\"删除\",\"params\":{},\"parentId\":2013,\"isCache\":\"0\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"F\",\"perms\":\"his:projectFee:remove\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-11-01 01:38:32');
INSERT INTO `sys_oper_log` VALUES (223, '角色管理', 1, 'com.ruoyi.project.system.controller.SysRoleController.add()', 'POST', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":101,\"admin\":false,\"params\":{},\"roleSort\":\"10\",\"deptCheckStrictly\":true,\"createBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"syl:admin\",\"roleName\":\"尚医疗管理员\",\"deptIds\":[],\"menuIds\":[2000,2012,2013,2017,2018,2019,2014],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-11-01 01:41:04');
INSERT INTO `sys_oper_log` VALUES (224, '厂家管理', 2, 'com.ruoyi.project.his.controller.DrugsDrugController.edit()', 'PUT', 1, 'admin', NULL, '/his/drug', '127.0.0.1', '内网IP', '{\"durgOtcType\":\"中药处方\",\"durgUnit\":\"g\",\"drugsProducer\":{\"params\":{},\"proId\":3,\"proName\":\"中医药集团\"},\"durgStatus\":\"0\",\"durgType\":\"中草药\",\"durgId\":5,\"params\":{},\"durgNumberMin\":100,\"durgCode\":\"sxt005\",\"durgOtcPrice\":6,\"durgNumber\":220,\"createTime\":1632744041000,\"durgProducer\":3,\"updateBy\":\"admin\",\"durgName\":\"防风草\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-11-01 01:41:33');
INSERT INTO `sys_oper_log` VALUES (225, '厂家管理', 2, 'com.ruoyi.project.his.controller.DrugsDrugController.edit()', 'PUT', 1, 'admin', NULL, '/his/drug', '127.0.0.1', '内网IP', '{\"durgOtcType\":\"中药处方\",\"durgUnit\":\"gg\",\"durgConvert\":1,\"drugsProducer\":{\"params\":{},\"proId\":4,\"proName\":\"厂商A\"},\"durgStatus\":\"0\",\"durgType\":\"中草药\",\"durgId\":6,\"params\":{},\"durgNumberMin\":100,\"durgCode\":\"sxt005\",\"durgOtcPrice\":7,\"durgNumber\":220,\"createTime\":1633435243000,\"durgProducer\":4,\"updateBy\":\"admin\",\"durgName\":\"何首乌\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-11-01 01:41:52');
INSERT INTO `sys_oper_log` VALUES (226, '用户管理', 1, 'com.ruoyi.project.system.controller.SysUserController.add()', 'POST', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"phonenumber\":\"15222533572\",\"admin\":false,\"password\":\"$2a$10$jvWe1Nk.YG/hnkpZR2XzvOPQb5bPB6axo/Gp1SEstsi7h86E7O9gq\",\"postIds\":[3],\"nickName\":\"张震\",\"sex\":\"1\",\"deptId\":103,\"params\":{},\"userName\":\"zhangzhen\",\"userId\":102,\"createBy\":\"admin\",\"roleIds\":[101],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-11-01 01:42:42');
INSERT INTO `sys_oper_log` VALUES (227, '厂家管理', 3, 'com.ruoyi.project.his.controller.DrugsDrugController.remove()', 'DELETE', 1, 'admin', NULL, '/his/drug/7', '127.0.0.1', '内网IP', '{postIds=7}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-11-01 01:43:09');
INSERT INTO `sys_oper_log` VALUES (228, '科室管理', 2, 'com.ruoyi.project.his.sys.controller.ProjectFeeController.edit()', 'PUT', 1, 'zhangzhen', NULL, '/his/projectFee', '127.0.0.1', '内网IP', '{\"ext02\":\"\",\"ext01\":\"\",\"projectType\":\"拍片类\",\"updateTime\":1635731482156,\"params\":{},\"projectTimes\":\"次\",\"createBy\":\"admin\",\"createTime\":1635660617000,\"projectCost\":800,\"updateBy\":\"zhangzhen\",\"projectUnitprice\":1000,\"keyword\":\"sjk\",\"projectName\":\"神经检查\",\"projectId\":7,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-11-01 01:51:21');
INSERT INTO `sys_oper_log` VALUES (229, '科室管理', 2, 'com.ruoyi.project.his.sys.controller.ProjectFeeController.edit()', 'PUT', 1, 'admin', NULL, '/his/projectFee', '127.0.0.1', '内网IP', '{\"ext02\":\"\",\"ext01\":\"\",\"projectType\":\"拍片类\",\"updateTime\":1635732445994,\"params\":{},\"projectTimes\":\"次\",\"createBy\":\"admin\",\"createTime\":1635660617000,\"projectCost\":800,\"updateBy\":\"admin\",\"projectUnitprice\":1000,\"keyword\":\"sjjc\",\"projectName\":\"神经检查\",\"projectId\":7,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-11-01 02:07:25');
INSERT INTO `sys_oper_log` VALUES (230, '字典类型', 1, 'com.ruoyi.project.system.controller.SysDictTypeController.add()', 'POST', 1, 'admin', NULL, '/system/dict/type', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"dictName\":\"挂号时段\",\"params\":{},\"dictType\":\"doctor_register_time\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-11-01 02:24:56');
INSERT INTO `sys_oper_log` VALUES (231, '字典类型', 3, 'com.ruoyi.project.system.controller.SysDictDataController.remove()', 'DELETE', 1, 'admin', NULL, '/system/dict/data/108', '127.0.0.1', '内网IP', '{dictCodes=108}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-11-01 02:26:43');
INSERT INTO `sys_oper_log` VALUES (232, '字典类型', 3, 'com.ruoyi.project.system.controller.SysDictDataController.remove()', 'DELETE', 1, 'admin', NULL, '/system/dict/data/107', '127.0.0.1', '内网IP', '{dictCodes=107}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-11-01 02:26:46');
INSERT INTO `sys_oper_log` VALUES (233, '字典类型', 3, 'com.ruoyi.project.system.controller.SysDictDataController.remove()', 'DELETE', 1, 'admin', NULL, '/system/dict/data/106', '127.0.0.1', '内网IP', '{dictCodes=106}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-11-01 02:26:48');
INSERT INTO `sys_oper_log` VALUES (234, '字典数据', 1, 'com.ruoyi.project.system.controller.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"dictValue\":\"上午\",\"dictSort\":0,\"params\":{},\"dictType\":\"doctor_register_time\",\"dictLabel\":\"上午\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-11-01 02:27:01');
INSERT INTO `sys_oper_log` VALUES (235, '字典数据', 1, 'com.ruoyi.project.system.controller.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"dictValue\":\"下午\",\"dictSort\":1,\"params\":{},\"dictType\":\"doctor_register_time\",\"dictLabel\":\"下午\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-11-01 02:27:14');
INSERT INTO `sys_oper_log` VALUES (236, '字典数据', 1, 'com.ruoyi.project.system.controller.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"dictValue\":\"晚上\",\"dictSort\":2,\"params\":{},\"dictType\":\"doctor_register_time\",\"dictLabel\":\"晚上\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-11-01 02:27:26');
INSERT INTO `sys_oper_log` VALUES (237, '字典类型', 1, 'com.ruoyi.project.system.controller.SysDictTypeController.add()', 'POST', 1, 'admin', NULL, '/system/dict/type', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"dictName\":\"挂号状态\",\"params\":{},\"dictType\":\"register_status\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-11-01 02:33:20');
INSERT INTO `sys_oper_log` VALUES (238, '字典数据', 1, 'com.ruoyi.project.system.controller.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"dictValue\":\"0\",\"dictSort\":0,\"params\":{},\"dictType\":\"register_status\",\"dictLabel\":\"未收费\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-11-01 02:33:46');
INSERT INTO `sys_oper_log` VALUES (239, '字典数据', 1, 'com.ruoyi.project.system.controller.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"dictValue\":\"1\",\"dictSort\":1,\"params\":{},\"dictType\":\"register_status\",\"dictLabel\":\"待就诊\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-11-01 02:34:02');
INSERT INTO `sys_oper_log` VALUES (240, '字典数据', 1, 'com.ruoyi.project.system.controller.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"dictValue\":\"2\",\"dictSort\":2,\"params\":{},\"dictType\":\"register_status\",\"dictLabel\":\"正在就诊\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-11-01 02:34:18');
INSERT INTO `sys_oper_log` VALUES (241, '字典数据', 1, 'com.ruoyi.project.system.controller.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"dictValue\":\"3\",\"dictSort\":3,\"params\":{},\"dictType\":\"register_status\",\"dictLabel\":\"就诊完成\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-11-01 02:34:31');
INSERT INTO `sys_oper_log` VALUES (242, '代码生成', 3, 'com.ruoyi.project.tool.gen.controller.GenController.remove()', 'DELETE', 1, 'admin', NULL, '/tool/gen/2,3,4,5,6,7,8,9,10,11', '127.0.0.1', '内网IP', '{tableIds=2,3,4,5,6,7,8,9,10,11}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-11-01 02:42:22');
INSERT INTO `sys_oper_log` VALUES (243, '代码生成', 6, 'com.ruoyi.project.tool.gen.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'drugs_order,drugs_order_detail', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-11-01 02:42:36');
INSERT INTO `sys_oper_log` VALUES (244, '代码生成', 6, 'com.ruoyi.project.tool.gen.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'doctor_registra_fee', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-11-01 02:51:46');
INSERT INTO `sys_oper_log` VALUES (245, '字典类型', 1, 'com.ruoyi.project.system.controller.SysDictTypeController.add()', 'POST', 1, 'admin', NULL, '/system/dict/type', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"dictName\":\"药品类型\",\"params\":{},\"dictType\":\"order_drug_type\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-11-01 03:36:22');
INSERT INTO `sys_oper_log` VALUES (246, '字典数据', 1, 'com.ruoyi.project.system.controller.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"dictValue\":\"中药材\",\"dictSort\":1,\"params\":{},\"dictType\":\"order_drug_type\",\"dictLabel\":\"中药材\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-11-01 03:37:45');
INSERT INTO `sys_oper_log` VALUES (247, '字典数据', 1, 'com.ruoyi.project.system.controller.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"dictValue\":\"中药饮片\",\"dictSort\":2,\"params\":{},\"dictType\":\"order_drug_type\",\"dictLabel\":\"中药饮片\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-11-01 03:37:58');
INSERT INTO `sys_oper_log` VALUES (248, '字典数据', 1, 'com.ruoyi.project.system.controller.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"dictValue\":\"化学原料药及其制剂\",\"dictSort\":3,\"params\":{},\"dictType\":\"order_drug_type\",\"dictLabel\":\"化学原料药及其制剂\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-11-01 03:38:15');
INSERT INTO `sys_oper_log` VALUES (249, '字典数据', 1, 'com.ruoyi.project.system.controller.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"dictValue\":\"抗生素\",\"dictSort\":4,\"params\":{},\"dictType\":\"order_drug_type\",\"dictLabel\":\"抗生素\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-11-01 03:38:21');
INSERT INTO `sys_oper_log` VALUES (250, '字典数据', 1, 'com.ruoyi.project.system.controller.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"dictValue\":\"疫苗\",\"dictSort\":5,\"params\":{},\"dictType\":\"order_drug_type\",\"dictLabel\":\"疫苗\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-11-01 03:38:37');
INSERT INTO `sys_oper_log` VALUES (251, '字典类型', 1, 'com.ruoyi.project.system.controller.SysDictTypeController.add()', 'POST', 1, 'admin', NULL, '/system/dict/type', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"dictName\":\"处方类型\",\"params\":{},\"dictType\":\"order_otc_type\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-11-01 03:40:50');
INSERT INTO `sys_oper_log` VALUES (252, '字典数据', 1, 'com.ruoyi.project.system.controller.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"dictValue\":\"法定处方\",\"dictSort\":1,\"params\":{},\"dictType\":\"order_otc_type\",\"dictLabel\":\"法定处方\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-11-01 03:41:17');
INSERT INTO `sys_oper_log` VALUES (253, '字典数据', 1, 'com.ruoyi.project.system.controller.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"dictValue\":\"协定处方\",\"dictSort\":2,\"params\":{},\"dictType\":\"order_otc_type\",\"dictLabel\":\"协定处方\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-11-01 03:41:24');
INSERT INTO `sys_oper_log` VALUES (254, '字典数据', 1, 'com.ruoyi.project.system.controller.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"dictValue\":\"医师处方\",\"dictSort\":3,\"params\":{},\"dictType\":\"order_otc_type\",\"dictLabel\":\"医师处方\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-11-01 03:41:29');
INSERT INTO `sys_oper_log` VALUES (255, '字典类型', 2, 'com.ruoyi.project.system.controller.SysDictTypeController.edit()', 'PUT', 1, 'admin', NULL, '/system/dict/type', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"createTime\":1635705200000,\"updateBy\":\"admin\",\"dictName\":\"挂号状态\",\"dictId\":102,\"params\":{},\"dictType\":\"register_statusa\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-11-01 04:26:38');
INSERT INTO `sys_oper_log` VALUES (256, '字典类型', 1, 'com.ruoyi.project.system.controller.SysDictTypeController.add()', 'POST', 1, 'admin', NULL, '/system/dict/type', '127.0.0.1', '内网IP', '{\"createBy\":\"admin\",\"dictName\":\"供应商名称\",\"params\":{},\"dictType\":\"drug_support_name\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-11-01 04:51:33');
INSERT INTO `sys_oper_log` VALUES (257, '字典数据', 1, 'com.ruoyi.project.system.controller.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"dictValue\":\"1\",\"dictSort\":1,\"params\":{},\"dictType\":\"drug_support_name\",\"dictLabel\":\"战国韩国\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-11-01 04:51:59');
INSERT INTO `sys_oper_log` VALUES (258, '字典数据', 1, 'com.ruoyi.project.system.controller.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"dictValue\":\"2\",\"dictSort\":2,\"params\":{},\"dictType\":\"drug_support_name\",\"dictLabel\":\"战国楚国\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-11-01 04:52:14');
INSERT INTO `sys_oper_log` VALUES (259, '字典数据', 1, 'com.ruoyi.project.system.controller.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"dictValue\":\"战国秦国\",\"dictSort\":3,\"params\":{},\"dictType\":\"drug_support_name\",\"dictLabel\":\"战国秦国\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-11-01 04:52:26');
INSERT INTO `sys_oper_log` VALUES (260, '字典数据', 2, 'com.ruoyi.project.system.controller.SysDictDataController.edit()', 'PUT', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"dictValue\":\"3\",\"dictSort\":3,\"params\":{},\"dictType\":\"drug_support_name\",\"dictLabel\":\"战国秦国\",\"createBy\":\"admin\",\"default\":false,\"isDefault\":\"N\",\"createTime\":1635713546000,\"dictCode\":126,\"updateBy\":\"admin\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-11-01 04:52:37');
INSERT INTO `sys_oper_log` VALUES (261, '字典数据', 1, 'com.ruoyi.project.system.controller.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"dictValue\":\"4\",\"dictSort\":4,\"params\":{},\"dictType\":\"drug_support_name\",\"dictLabel\":\"战国燕国\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-11-01 04:53:01');
INSERT INTO `sys_oper_log` VALUES (262, '菜单管理', 1, 'com.ruoyi.project.system.controller.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"dict\",\"orderNum\":\"9\",\"menuName\":\"收费管理\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"his/charge\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"M\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-11-01 06:08:02');
INSERT INTO `sys_oper_log` VALUES (263, '费用查询设置', 3, 'com.ruoyi.project.his.sys.controller.RegistraFeeController.remove()', 'DELETE', 1, 'admin', NULL, '/his/RegistraFee/6', '127.0.0.1', '内网IP', '{postId=6}', 'null', 1, 'Invalid bound statement (not found): com.ruoyi.project.his.sys.mapper.RegistraFeeMapper.deleteFee', '2021-11-01 06:09:43');
INSERT INTO `sys_oper_log` VALUES (264, '菜单管理', 1, 'com.ruoyi.project.system.controller.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"button\",\"orderNum\":\"1\",\"menuName\":\"处方收费\",\"params\":{},\"parentId\":2020,\"isCache\":\"0\",\"path\":\"his/charge/index\",\"component\":\"his/charge/index\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"C\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-11-01 06:15:53');
INSERT INTO `sys_oper_log` VALUES (265, '菜单管理', 2, 'com.ruoyi.project.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"button\",\"orderNum\":\"1\",\"menuName\":\"处方收费\",\"params\":{},\"parentId\":2020,\"isCache\":\"0\",\"path\":\"charge\",\"component\":\"his/charge/index\",\"children\":[],\"createTime\":1635718553000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2021,\"menuType\":\"C\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-11-01 06:16:54');
INSERT INTO `sys_oper_log` VALUES (266, '费用查询设置', 3, 'com.ruoyi.project.his.sys.controller.RegistraFeeController.remove()', 'DELETE', 1, 'admin', NULL, '/his/RegistraFee/6', '127.0.0.1', '内网IP', '{postId=6}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-11-01 06:20:03');
INSERT INTO `sys_oper_log` VALUES (267, '岗位管理', 1, 'com.ruoyi.project.his.sys.controller.RegistraFeeController.add()', 'POST', 1, 'admin', NULL, '/his/RegistraFee/', '127.0.0.1', '内网IP', '{\"params\":{},\"createBy\":\"admin\",\"status\":\"0\"}', 'null', 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'registra_name\' doesn\'t have a default value\r\n### The error may exist in file [D:\\yunyiliao\\his-server\\RuoYi-Vue-fast-master\\target\\classes\\mybatis\\his\\sys\\RegistraFeeMapper.xml]\r\n### The error may involve com.ruoyi.project.his.sys.mapper.RegistraFeeMapper.insertRegistraFee-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into doctor_registra_fee          ( status,                                       create_by )           values ( ?,                                       ? )\r\n### Cause: java.sql.SQLException: Field \'registra_name\' doesn\'t have a default value\n; Field \'registra_name\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'registra_name\' doesn\'t have a default value', '2021-11-01 06:46:50');
INSERT INTO `sys_oper_log` VALUES (268, '岗位管理', 1, 'com.ruoyi.project.his.sys.controller.RegistraFeeController.add()', 'POST', 1, 'admin', NULL, '/his/RegistraFee/', '127.0.0.1', '内网IP', '{\"registraName\":\"住院\",\"params\":{},\"registraUnitprice\":20.0,\"createBy\":\"admin\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-11-01 06:47:59');
INSERT INTO `sys_oper_log` VALUES (269, '岗位管理', 1, 'com.ruoyi.project.his.sys.controller.RegistraFeeController.add()', 'POST', 1, 'admin', NULL, '/his/RegistraFee/', '127.0.0.1', '内网IP', '{\"registraName\":\"咨询\",\"params\":{},\"registraUnitprice\":15.0,\"createBy\":\"admin\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-11-01 06:48:44');
INSERT INTO `sys_oper_log` VALUES (270, '费用查询设置', 3, 'com.ruoyi.project.his.sys.controller.RegistraFeeController.remove()', 'DELETE', 1, 'admin', NULL, '/his/RegistraFee/8', '127.0.0.1', '内网IP', '{postId=8}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-11-01 06:50:47');
INSERT INTO `sys_oper_log` VALUES (271, '费用查询设置', 3, 'com.ruoyi.project.his.sys.controller.RegistraFeeController.remove()', 'DELETE', 1, 'admin', NULL, '/his/RegistraFee/7', '127.0.0.1', '内网IP', '{postId=7}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-11-01 06:50:49');
INSERT INTO `sys_oper_log` VALUES (272, '岗位管理', 1, 'com.ruoyi.project.his.sys.controller.RegistraFeeController.add()', 'POST', 1, 'admin', NULL, '/his/RegistraFee/', '127.0.0.1', '内网IP', '{\"registraName\":\"住院\",\"params\":{},\"registraUnitprice\":20.0,\"createBy\":\"admin\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-11-01 06:51:34');
INSERT INTO `sys_oper_log` VALUES (273, '科室管理', 2, 'com.ruoyi.project.his.sys.controller.RegistraFeeController.edit()', 'PUT', 1, 'admin', NULL, '/his/RegistraFee', '127.0.0.1', '内网IP', '{\"registraName\":\"住院\",\"ext02\":\"\",\"ext01\":\"\",\"updateTime\":1635752982334,\"params\":{},\"registraId\":9,\"registraUnitprice\":21.0,\"createBy\":\"admin\",\"createTime\":1635720694000,\"updateBy\":\"admin\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-11-01 07:49:41');
INSERT INTO `sys_oper_log` VALUES (274, '菜单管理', 2, 'com.ruoyi.project.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"list\",\"orderNum\":\"3\",\"menuName\":\"挂号费用管理\",\"params\":{},\"parentId\":2000,\"isCache\":\"0\",\"path\":\"registerCost\",\"component\":\"his/sys/registerCost/index\",\"children\":[],\"createTime\":1635554122000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2014,\"menuType\":\"C\",\"perms\":\"his:RegistraFee:list\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-11-01 07:52:34');
INSERT INTO `sys_oper_log` VALUES (275, '菜单管理', 1, 'com.ruoyi.project.system.controller.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"orderNum\":\"1\",\"menuName\":\"添加\",\"params\":{},\"parentId\":2014,\"isCache\":\"0\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"F\",\"perms\":\"his:RegistraFee:add\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-11-01 07:53:04');
INSERT INTO `sys_oper_log` VALUES (276, '菜单管理', 1, 'com.ruoyi.project.system.controller.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"orderNum\":\"2\",\"menuName\":\"修改\",\"params\":{},\"parentId\":2014,\"isCache\":\"0\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"F\",\"perms\":\"his:RegistraFee:edit\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-11-01 07:53:30');
INSERT INTO `sys_oper_log` VALUES (277, '菜单管理', 1, 'com.ruoyi.project.system.controller.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"orderNum\":\"3\",\"menuName\":\"删除\",\"params\":{},\"parentId\":2014,\"isCache\":\"0\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"F\",\"perms\":\"his:RegistraFee:remove\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-11-01 07:54:07');
INSERT INTO `sys_oper_log` VALUES (278, '角色管理', 2, 'com.ruoyi.project.system.controller.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":101,\"admin\":false,\"dataScope\":\"1\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"10\",\"deptCheckStrictly\":true,\"createTime\":1635702064000,\"updateBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"syl:admin\",\"roleName\":\"尚医疗管理员\",\"menuIds\":[2000,2012,2013,2017,2018,2019,2014,2022,2023,2024],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-11-01 07:56:00');
INSERT INTO `sys_oper_log` VALUES (279, '菜单管理', 1, 'com.ruoyi.project.system.controller.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"size\",\"orderNum\":\"20\",\"menuName\":\"检查管理\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"xxx\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"M\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-11-01 09:40:17');
INSERT INTO `sys_oper_log` VALUES (280, '菜单管理', 1, 'com.ruoyi.project.system.controller.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"user\",\"orderNum\":\"1\",\"menuName\":\"新开检查\",\"params\":{},\"parentId\":2025,\"isCache\":\"0\",\"path\":\"xxx\",\"component\":\"xxx\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"C\",\"perms\":\"xxx\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-11-01 09:41:29');
INSERT INTO `sys_oper_log` VALUES (281, '菜单管理', 3, 'com.ruoyi.project.system.controller.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2025', '127.0.0.1', '内网IP', '{menuId=2025}', '{\"msg\":\"存在子菜单,不允许删除\",\"code\":500}', 0, NULL, '2021-11-01 10:07:12');
INSERT INTO `sys_oper_log` VALUES (282, '菜单管理', 3, 'com.ruoyi.project.system.controller.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2026', '127.0.0.1', '内网IP', '{menuId=2026}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-11-01 10:07:19');
INSERT INTO `sys_oper_log` VALUES (283, '菜单管理', 3, 'com.ruoyi.project.system.controller.SysMenuController.remove()', 'DELETE', 1, 'admin', NULL, '/system/menu/2025', '127.0.0.1', '内网IP', '{menuId=2025}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-11-01 10:07:22');
INSERT INTO `sys_oper_log` VALUES (284, '菜单管理', 2, 'com.ruoyi.project.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"list\",\"orderNum\":\"6\",\"menuName\":\"库存查询\",\"params\":{},\"parentId\":2001,\"isCache\":\"0\",\"path\":\"queryStock\",\"component\":\"his/drug/index\",\"children\":[],\"createTime\":1635553471000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2011,\"menuType\":\"C\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-11-01 11:02:13');
INSERT INTO `sys_oper_log` VALUES (285, '菜单管理', 2, 'com.ruoyi.project.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"list\",\"orderNum\":\"6\",\"menuName\":\"库存查询\",\"params\":{},\"parentId\":2001,\"isCache\":\"0\",\"path\":\"queryStock\",\"component\":\"his/durg/index\",\"children\":[],\"createTime\":1635553471000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2011,\"menuType\":\"C\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-11-01 11:03:26');
INSERT INTO `sys_oper_log` VALUES (286, '菜单管理', 2, 'com.ruoyi.project.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"list\",\"orderNum\":\"6\",\"menuName\":\"库存查询\",\"params\":{},\"parentId\":2001,\"isCache\":\"0\",\"path\":\"queryStock\",\"component\":\"his/durg/queryStock/index\",\"children\":[],\"createTime\":1635553471000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2011,\"menuType\":\"C\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-11-01 11:04:47');
INSERT INTO `sys_oper_log` VALUES (287, '菜单管理', 2, 'com.ruoyi.project.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"list\",\"orderNum\":\"6\",\"menuName\":\"库存查询\",\"params\":{},\"parentId\":2001,\"isCache\":\"0\",\"path\":\"queryStock\",\"component\":\"his/drug/queryStock/index\",\"children\":[],\"createTime\":1635553471000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2011,\"menuType\":\"C\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-11-01 11:05:02');
INSERT INTO `sys_oper_log` VALUES (288, '菜单管理', 1, 'com.ruoyi.project.system.controller.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"log\",\"orderNum\":\"10\",\"menuName\":\"检查管理\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"his/exm/index\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"M\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-11-01 11:05:33');
INSERT INTO `sys_oper_log` VALUES (289, '菜单管理', 2, 'com.ruoyi.project.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"log\",\"orderNum\":\"10\",\"menuName\":\"检查管理\",\"params\":{},\"parentId\":0,\"isCache\":\"0\",\"path\":\"his/exm\",\"children\":[],\"createTime\":1635735933000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2027,\"menuType\":\"M\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-11-01 11:05:54');
INSERT INTO `sys_oper_log` VALUES (290, '菜单管理', 1, 'com.ruoyi.project.system.controller.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"druid\",\"orderNum\":\"1\",\"menuName\":\"新开检查\",\"params\":{},\"parentId\":2027,\"isCache\":\"0\",\"path\":\"hisexam\",\"component\":\"his/exam/index\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"C\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-11-01 11:07:39');
INSERT INTO `sys_oper_log` VALUES (291, '厂家管理', 3, 'com.ruoyi.project.his.drug.controller.DrugsProducerController.remove()', 'DELETE', 1, 'admin', NULL, '/his/producer/6', '127.0.0.1', '内网IP', '{postIds=6}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-11-01 11:54:55');
INSERT INTO `sys_oper_log` VALUES (292, '代码生成', 6, 'com.ruoyi.project.tool.gen.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'drugs_durg', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-11-01 12:51:13');
INSERT INTO `sys_oper_log` VALUES (293, '岗位管理', 1, 'com.ruoyi.project.his.drug.controller.DrugsOrderController.add()', 'POST', 1, 'admin', NULL, '/his/drug/order', '127.0.0.1', '内网IP', '{\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-11-01 14:06:44');
INSERT INTO `sys_oper_log` VALUES (294, '岗位管理', 1, 'com.ruoyi.project.his.drug.controller.DrugsOrderController.add()', 'POST', 1, 'admin', NULL, '/his/drug/order', '127.0.0.1', '内网IP', '{\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-11-01 14:07:59');
INSERT INTO `sys_oper_log` VALUES (295, '岗位管理', 1, 'com.ruoyi.project.his.drug.controller.DrugsOrderController.add()', 'POST', 1, 'admin', NULL, '/his/drug/order', '127.0.0.1', '内网IP', '{\"applyMan\":\"qr\",\"tableData\":[{\"drugTotalPrice\":12.0,\"remark\":\"请修改\",\"params\":{},\"rowId\":0,\"drugPrice\":12.0,\"drugUtil\":\"g\",\"drugName\":\"阿胶珠\",\"prodName\":\"云南白药\",\"drugBatchNum\":1,\"drugId\":1,\"drugSpecs\":\"1g\",\"drugNum\":1}],\"supportId\":2,\"applyTime\":1637078400000,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-11-01 14:09:22');
INSERT INTO `sys_oper_log` VALUES (296, '岗位管理', 1, 'com.ruoyi.project.his.drug.controller.DrugsOrderController.add()', 'POST', 1, 'admin', NULL, '/his/drug/order', '127.0.0.1', '内网IP', '{\"applyMan\":\"t\",\"tableData\":[{\"drugTotalPrice\":12.0,\"remark\":\"请修改\",\"params\":{},\"rowId\":0,\"drugPrice\":12.0,\"drugUtil\":\"t\",\"drugName\":\"秋水仙碱片\",\"prodName\":\"云南白药\",\"drugBatchNum\":1,\"drugId\":3,\"drugSpecs\":\"1t\",\"drugNum\":1}],\"supportId\":1,\"applyTime\":1635955200000,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-11-01 14:11:04');
INSERT INTO `sys_oper_log` VALUES (297, '岗位管理', 1, 'com.ruoyi.project.his.drug.controller.DrugsOrderController.add()', 'POST', 1, 'admin', NULL, '/his/drug/order', '127.0.0.1', '内网IP', '{\"totalMonet\":44.0,\"applyMan\":\"tom\",\"tableData\":[{\"drugTotalPrice\":32.0,\"remark\":\"请修改\",\"params\":{},\"rowId\":0,\"drugPrice\":32.0,\"drugUtil\":\"g\",\"drugName\":\"阿胶珠\",\"prodName\":\"云南白药\",\"drugBatchNum\":1,\"drugId\":1,\"drugSpecs\":\"1g\",\"drugNum\":1},{\"drugTotalPrice\":12.0,\"remark\":\"请修改\",\"params\":{},\"rowId\":2,\"drugPrice\":12.0,\"drugUtil\":\"t\",\"drugName\":\"秋水仙碱片\",\"prodName\":\"云南白药\",\"drugBatchNum\":1,\"drugId\":3,\"drugSpecs\":\"1t\",\"drugNum\":1}],\"supportId\":1,\"applyTime\":1636992000000,\"params\":{}}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-11-01 14:21:53');
INSERT INTO `sys_oper_log` VALUES (298, '岗位管理', 1, 'com.ruoyi.project.his.drug.controller.DrugsOrderController.add()', 'POST', 1, 'admin', NULL, '/his/drug/order', '127.0.0.1', '内网IP', '{\"totalMoney\":9.0,\"tableData\":[{\"drugTotalPrice\":6.0,\"remark\":\"1\",\"params\":{},\"rowId\":2,\"drugPrice\":3.0,\"drugUtil\":\"g\",\"drugName\":\"阿胶珠\",\"prodName\":\"云南白药\",\"drugBatchNum\":1,\"drugId\":1,\"drugSpecs\":\"1g\",\"drugNum\":2},{\"drugTotalPrice\":3.0,\"remark\":\"2\",\"params\":{},\"rowId\":3,\"drugPrice\":1.0,\"drugUtil\":\"g\",\"drugName\":\"阿胶珠\",\"prodName\":\"云南白药\",\"drugBatchNum\":2,\"drugId\":1,\"drugSpecs\":\"1g\",\"drugNum\":3}],\"params\":{},\"drugStatus\":0,\"applyMan\":\"张三三三\",\"supportId\":1,\"applyTime\":1636387200000}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-11-01 14:30:45');
INSERT INTO `sys_oper_log` VALUES (299, '代码生成', 3, 'com.ruoyi.project.tool.gen.controller.GenController.remove()', 'DELETE', 1, 'admin', NULL, '/tool/gen/13', '127.0.0.1', '内网IP', '{tableIds=13}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-11-02 00:54:24');
INSERT INTO `sys_oper_log` VALUES (300, '代码生成', 6, 'com.ruoyi.project.tool.gen.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'drugs_order_detail', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-11-02 00:54:36');
INSERT INTO `sys_oper_log` VALUES (301, '代码生成', 6, 'com.ruoyi.project.tool.gen.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'register_durg', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-11-02 01:22:16');
INSERT INTO `sys_oper_log` VALUES (302, '代码生成', 8, 'com.ruoyi.project.tool.gen.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', 'null', 0, NULL, '2021-11-02 01:22:31');
INSERT INTO `sys_oper_log` VALUES (303, '菜单管理', 1, 'com.ruoyi.project.system.controller.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"checkbox\",\"orderNum\":\"5\",\"menuName\":\"患者库\",\"params\":{},\"parentId\":2002,\"isCache\":\"0\",\"path\":\"ssss\",\"component\":\"sssss\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"C\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-11-02 01:33:41');
INSERT INTO `sys_oper_log` VALUES (304, '菜单管理', 2, 'com.ruoyi.project.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"checkbox\",\"orderNum\":\"5\",\"menuName\":\"患者库\",\"params\":{},\"parentId\":2002,\"isCache\":\"0\",\"path\":\"registerback\",\"component\":\"his/doctor/registerback/index\",\"children\":[],\"createTime\":1635788021000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2029,\"menuType\":\"C\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-11-02 01:34:22');
INSERT INTO `sys_oper_log` VALUES (305, '代码生成', 6, 'com.ruoyi.project.tool.gen.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'doctor_patient', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-11-02 01:42:14');
INSERT INTO `sys_oper_log` VALUES (306, '代码生成', 8, 'com.ruoyi.project.tool.gen.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', 'null', 0, NULL, '2021-11-02 01:46:36');
INSERT INTO `sys_oper_log` VALUES (307, '字典数据', 1, 'com.ruoyi.project.system.controller.SysDictDataController.add()', 'POST', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"dictValue\":\"6\",\"dictSort\":7,\"params\":{},\"dictType\":\"order_detail_status\",\"dictLabel\":\"审核中\",\"createBy\":\"admin\",\"default\":false,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-11-02 01:48:51');
INSERT INTO `sys_oper_log` VALUES (308, '字典类型', 3, 'com.ruoyi.project.system.controller.SysDictDataController.remove()', 'DELETE', 1, 'admin', NULL, '/system/dict/data/128', '127.0.0.1', '内网IP', '{dictCodes=128}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-11-02 01:50:11');
INSERT INTO `sys_oper_log` VALUES (309, '字典数据', 2, 'com.ruoyi.project.system.controller.SysDictDataController.edit()', 'PUT', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"dictValue\":\"1\",\"dictSort\":2,\"params\":{},\"dictType\":\"order_detail_status\",\"dictLabel\":\"审核中\",\"createBy\":\"admin\",\"default\":false,\"isDefault\":\"N\",\"createTime\":1635644224000,\"dictCode\":101,\"updateBy\":\"admin\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-11-02 01:50:43');
INSERT INTO `sys_oper_log` VALUES (310, '字典数据', 2, 'com.ruoyi.project.system.controller.SysDictDataController.edit()', 'PUT', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"dictValue\":\"1\",\"dictSort\":2,\"params\":{},\"dictType\":\"order_detail_status\",\"dictLabel\":\"待审状态\",\"createBy\":\"admin\",\"default\":false,\"isDefault\":\"N\",\"createTime\":1635644224000,\"dictCode\":101,\"updateBy\":\"admin\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-11-02 01:53:27');
INSERT INTO `sys_oper_log` VALUES (311, '菜单管理', 2, 'com.ruoyi.project.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"1\",\"icon\":\"list\",\"orderNum\":\"5\",\"menuName\":\"添加更新订单\",\"params\":{},\"parentId\":2001,\"isCache\":\"0\",\"path\":\"addOrder\",\"component\":\"his/drug/addOrder/index\",\"children\":[],\"createTime\":1635657342000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2016,\"menuType\":\"C\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-11-02 02:30:02');
INSERT INTO `sys_oper_log` VALUES (312, '代码生成', 6, 'com.ruoyi.project.tool.gen.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'charge_charge', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-11-02 05:56:21');
INSERT INTO `sys_oper_log` VALUES (313, '代码生成', 8, 'com.ruoyi.project.tool.gen.controller.GenController.batchGenCode()', 'GET', 1, 'admin', NULL, '/tool/gen/batchGenCode', '127.0.0.1', '内网IP', '{}', 'null', 0, NULL, '2021-11-02 05:56:23');
INSERT INTO `sys_oper_log` VALUES (314, '菜单管理', 1, 'com.ruoyi.project.system.controller.SysMenuController.add()', 'POST', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"cascader\",\"orderNum\":\"2\",\"menuName\":\"收费查询\",\"params\":{},\"parentId\":2020,\"isCache\":\"0\",\"path\":\"his/charge/index\",\"component\":\"his/charge1/index\",\"createBy\":\"admin\",\"children\":[],\"isFrame\":\"1\",\"menuType\":\"C\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-11-02 06:00:28');
INSERT INTO `sys_oper_log` VALUES (315, '菜单管理', 2, 'com.ruoyi.project.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"cascader\",\"orderNum\":\"2\",\"menuName\":\"收费查询\",\"params\":{},\"parentId\":2020,\"isCache\":\"0\",\"path\":\"charge1\",\"component\":\"his/charge1/index\",\"children\":[],\"createTime\":1635804028000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2030,\"menuType\":\"C\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-11-02 06:00:40');
INSERT INTO `sys_oper_log` VALUES (316, '菜单管理', 2, 'com.ruoyi.project.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"button\",\"orderNum\":\"1\",\"menuName\":\"处方收费\",\"params\":{},\"parentId\":2020,\"isCache\":\"0\",\"path\":\"charge\",\"component\":\"his/charge/charge1/index\",\"children\":[],\"createTime\":1635718553000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2021,\"menuType\":\"C\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-11-02 06:04:12');
INSERT INTO `sys_oper_log` VALUES (317, '菜单管理', 2, 'com.ruoyi.project.system.controller.SysMenuController.edit()', 'PUT', 1, 'admin', NULL, '/system/menu', '127.0.0.1', '内网IP', '{\"visible\":\"0\",\"icon\":\"cascader\",\"orderNum\":\"2\",\"menuName\":\"收费查询\",\"params\":{},\"parentId\":2020,\"isCache\":\"0\",\"path\":\"charge1\",\"component\":\"his/charge/charge2/index\",\"children\":[],\"createTime\":1635804028000,\"updateBy\":\"admin\",\"isFrame\":\"1\",\"menuId\":2030,\"menuType\":\"C\",\"perms\":\"\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-11-02 06:04:32');
INSERT INTO `sys_oper_log` VALUES (318, '代码生成', 6, 'com.ruoyi.project.tool.gen.controller.GenController.importTableSave()', 'POST', 1, 'admin', NULL, '/tool/gen/importTable', '127.0.0.1', '内网IP', 'doctor_patient_history', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-11-02 07:28:38');
INSERT INTO `sys_oper_log` VALUES (319, '角色管理', 1, 'com.ruoyi.project.system.controller.SysRoleController.add()', 'POST', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":102,\"admin\":false,\"remark\":\"挂号前台的角色\",\"params\":{},\"roleSort\":\"5\",\"deptCheckStrictly\":true,\"createBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"qiantai\",\"roleName\":\"门诊前台\",\"deptIds\":[],\"menuIds\":[2002,2003,2004],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-11-03 01:08:12');
INSERT INTO `sys_oper_log` VALUES (320, '角色管理', 1, 'com.ruoyi.project.system.controller.SysRoleController.add()', 'POST', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":103,\"admin\":false,\"remark\":\"医生角色\",\"params\":{},\"roleSort\":\"6\",\"deptCheckStrictly\":true,\"createBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"doctor\",\"roleName\":\"医生\",\"deptIds\":[],\"menuIds\":[2002,2005,2015,2029],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-11-03 01:09:00');
INSERT INTO `sys_oper_log` VALUES (321, '用户管理', 1, 'com.ruoyi.project.system.controller.SysUserController.add()', 'POST', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"password\":\"$2a$10$cQI0fPjgQvKs9g.jiRpb8OkhxTb4znGqzaqxf./wr1RR4D/CqtA3u\",\"postIds\":[4],\"nickName\":\"王小姐\",\"sex\":\"1\",\"deptId\":100,\"params\":{},\"userName\":\"xiaowang\",\"userId\":103,\"createBy\":\"admin\",\"roleIds\":[102],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-11-03 01:10:46');
INSERT INTO `sys_oper_log` VALUES (322, '用户管理', 1, 'com.ruoyi.project.system.controller.SysUserController.add()', 'POST', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"admin\":false,\"password\":\"$2a$10$K8.wzf.4tE2j29Z9p.GU1eApFj0YqE1s0LNY9e0uaGrDKwDAY8CzC\",\"postIds\":[4],\"nickName\":\"李时珍\",\"sex\":\"0\",\"params\":{},\"userName\":\"xiaoli\",\"userId\":104,\"createBy\":\"admin\",\"roleIds\":[103],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-11-03 01:12:51');
INSERT INTO `sys_oper_log` VALUES (323, '角色管理', 2, 'com.ruoyi.project.system.controller.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":100,\"admin\":false,\"dataScope\":\"1\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"3\",\"deptCheckStrictly\":true,\"createTime\":1635572467000,\"updateBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"drug:stock:edit\",\"roleName\":\"库存管理员\",\"menuIds\":[2001,2007,2009,2010],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-11-03 01:33:55');
INSERT INTO `sys_oper_log` VALUES (324, '角色管理', 2, 'com.ruoyi.project.system.controller.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":101,\"admin\":false,\"dataScope\":\"1\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"10\",\"deptCheckStrictly\":true,\"createTime\":1635702064000,\"updateBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"syl:admin\",\"roleName\":\"尚医疗管理员\",\"menuIds\":[2000,2012,2013,2017,2018,2019,2014,2022,2023,2024,2001,2006,2007,2008,2009,2010,2016,2011,2002,2003,2004,2005,2015,2029,2020,2021,2030,2027,2028],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-11-03 01:34:12');
INSERT INTO `sys_oper_log` VALUES (325, '角色管理', 2, 'com.ruoyi.project.system.controller.SysRoleController.edit()', 'PUT', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":100,\"admin\":false,\"dataScope\":\"1\",\"delFlag\":\"0\",\"params\":{},\"roleSort\":\"3\",\"deptCheckStrictly\":true,\"createTime\":1635572467000,\"updateBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"drug:stock:edit\",\"roleName\":\"库存管理员\",\"menuIds\":[2001,2007,2009,2016],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-11-03 01:34:46');
INSERT INTO `sys_oper_log` VALUES (326, '角色管理', 1, 'com.ruoyi.project.system.controller.SysRoleController.add()', 'POST', 1, 'admin', NULL, '/system/role', '127.0.0.1', '内网IP', '{\"flag\":false,\"roleId\":104,\"admin\":false,\"params\":{},\"roleSort\":\"4\",\"deptCheckStrictly\":true,\"createBy\":\"admin\",\"menuCheckStrictly\":true,\"roleKey\":\"durg:stock:examin\",\"roleName\":\"审核员\",\"deptIds\":[],\"menuIds\":[2001,2010],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-11-03 01:35:32');
INSERT INTO `sys_oper_log` VALUES (327, '用户管理', 2, 'com.ruoyi.project.system.controller.SysUserController.edit()', 'PUT', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"roles\":[{\"flag\":false,\"roleId\":100,\"admin\":false,\"dataScope\":\"1\",\"params\":{},\"roleSort\":\"3\",\"deptCheckStrictly\":false,\"menuCheckStrictly\":false,\"roleKey\":\"drug:stock:edit\",\"roleName\":\"库存管理员\",\"status\":\"0\"}],\"phonenumber\":\"18537215356\",\"admin\":false,\"remark\":\"kuc\",\"delFlag\":\"0\",\"password\":\"\",\"updateBy\":\"admin\",\"postIds\":[2],\"loginIp\":\"\",\"email\":\"1961469106a@qq.com\",\"nickName\":\"库存管理员tom\",\"sex\":\"0\",\"deptId\":100,\"avatar\":\"\",\"dept\":{\"deptName\":\"若依科技\",\"leader\":\"若依\",\"deptId\":100,\"orderNum\":\"0\",\"params\":{},\"parentId\":0,\"children\":[],\"status\":\"0\"},\"params\":{},\"userName\":\"tom\",\"userId\":101,\"createBy\":\"admin\",\"roleIds\":[100],\"createTime\":1635573272000,\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-11-03 01:36:40');
INSERT INTO `sys_oper_log` VALUES (328, '用户管理', 1, 'com.ruoyi.project.system.controller.SysUserController.add()', 'POST', 1, 'admin', NULL, '/system/user', '127.0.0.1', '内网IP', '{\"phonenumber\":\"18537215355\",\"admin\":false,\"password\":\"$2a$10$ntEkbMk7lEZW.Mj4VBnkROlWZySnYg51100p1A3Et.XyN4riH6CjK\",\"postIds\":[2],\"email\":\"1961469426@qq.com\",\"nickName\":\"审核员jak\",\"sex\":\"0\",\"deptId\":100,\"params\":{},\"userName\":\"jak\",\"userId\":105,\"createBy\":\"admin\",\"roleIds\":[104],\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-11-03 01:37:24');
INSERT INTO `sys_oper_log` VALUES (329, '厂家管理', 2, 'com.ruoyi.project.his.drug.controller.DrugsSupportController.edit()', 'PUT', 1, 'admin', NULL, '/his/support', '127.0.0.1', '内网IP', '{\"supportCard\":\"6317884652231559780\",\"supportBoss\":\"墨子\",\"supportPhone\":\"18537215359\",\"params\":{},\"supportAddress\":\"M78星云DD省\",\"supportStatus\":\"1\",\"createTime\":1631696530000,\"updateBy\":\"admin\",\"supportId\":4,\"supportName\":\"战国燕国\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-11-03 01:51:59');
INSERT INTO `sys_oper_log` VALUES (330, '厂家管理', 2, 'com.ruoyi.project.his.drug.controller.DrugsSupportController.edit()', 'PUT', 1, 'admin', NULL, '/his/support', '127.0.0.1', '内网IP', '{\"supportCard\":\"6317884652231559780\",\"supportBoss\":\"墨子\",\"supportPhone\":\"18537215359\",\"params\":{},\"supportAddress\":\"M78星云DD省\",\"supportStatus\":\"0\",\"createTime\":1631696530000,\"updateBy\":\"admin\",\"supportId\":4,\"supportName\":\"战国燕国\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-11-03 01:52:02');
INSERT INTO `sys_oper_log` VALUES (331, '厂家管理', 2, 'com.ruoyi.project.his.drug.controller.DrugsSupportController.edit()', 'PUT', 1, 'admin', NULL, '/his/support', '127.0.0.1', '内网IP', '{\"supportCard\":\"6317884652231559777\",\"supportBoss\":\"张良\",\"supportPhone\":\"18537215356\",\"params\":{},\"supportAddress\":\"M78星云AA省\",\"supportStatus\":\"0\",\"createTime\":1634720496000,\"updateBy\":\"admin\",\"supportId\":1,\"supportName\":\"腾讯\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-11-03 02:42:33');
INSERT INTO `sys_oper_log` VALUES (332, '厂家管理', 2, 'com.ruoyi.project.his.drug.controller.DrugsSupportController.edit()', 'PUT', 1, 'admin', NULL, '/his/support', '127.0.0.1', '内网IP', '{\"supportCard\":\"6317884652231559778\",\"supportBoss\":\"项燕\",\"supportPhone\":\"18537215357\",\"params\":{},\"supportAddress\":\"M78星云BB省\",\"supportStatus\":\"0\",\"createTime\":1634029328000,\"updateBy\":\"admin\",\"supportId\":2,\"supportName\":\"阿里\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-11-03 02:42:38');
INSERT INTO `sys_oper_log` VALUES (333, '厂家管理', 2, 'com.ruoyi.project.his.drug.controller.DrugsSupportController.edit()', 'PUT', 1, 'admin', NULL, '/his/support', '127.0.0.1', '内网IP', '{\"supportCard\":\"6317884652231559779\",\"supportBoss\":\"盖聂\",\"supportPhone\":\"18537215358\",\"params\":{},\"supportAddress\":\"M78星云CC省\",\"supportStatus\":\"0\",\"createTime\":1628586134000,\"updateBy\":\"admin\",\"supportId\":3,\"supportName\":\"百度\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-11-03 02:42:43');
INSERT INTO `sys_oper_log` VALUES (334, '厂家管理', 2, 'com.ruoyi.project.his.drug.controller.DrugsSupportController.edit()', 'PUT', 1, 'admin', NULL, '/his/support', '127.0.0.1', '内网IP', '{\"supportCard\":\"6317884652231559780\",\"supportBoss\":\"墨子\",\"supportPhone\":\"18537215359\",\"params\":{},\"supportAddress\":\"M78星云DD省\",\"supportStatus\":\"0\",\"createTime\":1631696530000,\"updateBy\":\"admin\",\"supportId\":4,\"supportName\":\"微软\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-11-03 02:42:49');
INSERT INTO `sys_oper_log` VALUES (335, '字典数据', 2, 'com.ruoyi.project.system.controller.SysDictDataController.edit()', 'PUT', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"dictValue\":\"1\",\"dictSort\":1,\"params\":{},\"dictType\":\"drug_support_name\",\"dictLabel\":\"腾讯\",\"createBy\":\"admin\",\"default\":false,\"isDefault\":\"N\",\"createTime\":1635713519000,\"dictCode\":124,\"updateBy\":\"admin\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-11-03 02:45:28');
INSERT INTO `sys_oper_log` VALUES (336, '字典数据', 2, 'com.ruoyi.project.system.controller.SysDictDataController.edit()', 'PUT', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"dictValue\":\"2\",\"dictSort\":2,\"params\":{},\"dictType\":\"drug_support_name\",\"dictLabel\":\"阿里\",\"createBy\":\"admin\",\"default\":false,\"isDefault\":\"N\",\"createTime\":1635713534000,\"dictCode\":125,\"updateBy\":\"admin\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-11-03 02:45:33');
INSERT INTO `sys_oper_log` VALUES (337, '字典数据', 2, 'com.ruoyi.project.system.controller.SysDictDataController.edit()', 'PUT', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"dictValue\":\"3\",\"dictSort\":3,\"params\":{},\"dictType\":\"drug_support_name\",\"dictLabel\":\"百度\",\"createBy\":\"admin\",\"default\":false,\"isDefault\":\"N\",\"createTime\":1635713546000,\"dictCode\":126,\"updateBy\":\"admin\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-11-03 02:45:37');
INSERT INTO `sys_oper_log` VALUES (338, '字典数据', 2, 'com.ruoyi.project.system.controller.SysDictDataController.edit()', 'PUT', 1, 'admin', NULL, '/system/dict/data', '127.0.0.1', '内网IP', '{\"dictValue\":\"4\",\"dictSort\":4,\"params\":{},\"dictType\":\"drug_support_name\",\"dictLabel\":\"微软\",\"createBy\":\"admin\",\"default\":false,\"isDefault\":\"N\",\"createTime\":1635713581000,\"dictCode\":127,\"updateBy\":\"admin\",\"status\":\"0\"}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-11-03 02:45:44');
INSERT INTO `sys_oper_log` VALUES (339, '岗位管理', 1, 'com.ruoyi.project.his.drug.controller.DrugsOrderController.add()', 'POST', 1, 'admin', NULL, '/his/drug/order', '127.0.0.1', '内网IP', '{\"totalMoney\":14,\"tableData\":[{\"drugTotalPrice\":2.0,\"remark\":\"请修改\",\"params\":{},\"rowId\":0,\"drugPrice\":1.0,\"drugUtil\":\"g\",\"drugName\":\"阿胶珠\",\"prodName\":\"云南白药\",\"drugBatchNum\":1,\"drugId\":1,\"drugSpecs\":\"1g\",\"drugNum\":2},{\"drugTotalPrice\":12.0,\"remark\":\"请修改\",\"params\":{},\"rowId\":1,\"drugPrice\":1.0,\"drugUtil\":\"g\",\"drugName\":\"阿胶珠\",\"prodName\":\"云南白药\",\"drugBatchNum\":2,\"drugId\":1,\"drugSpecs\":\"1g\",\"drugNum\":12}],\"params\":{},\"drugStatus\":1,\"applyMan\":\"admin\",\"supportId\":1,\"applyTime\":1635868800000}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-11-03 03:30:16');
INSERT INTO `sys_oper_log` VALUES (340, '岗位管理', 1, 'com.ruoyi.project.his.drug.controller.DrugsOrderController.add()', 'POST', 1, 'admin', NULL, '/his/drug/order', '127.0.0.1', '内网IP', '{\"totalMoney\":14,\"tableData\":[{\"drugTotalPrice\":2.0,\"remark\":\"请修改\",\"params\":{},\"rowId\":0,\"drugPrice\":1.0,\"drugUtil\":\"g\",\"drugName\":\"阿胶珠\",\"prodName\":\"云南白药\",\"drugBatchNum\":1,\"drugId\":1,\"drugSpecs\":\"1g\",\"drugNum\":2},{\"drugTotalPrice\":12.0,\"remark\":\"请修改\",\"params\":{},\"rowId\":1,\"drugPrice\":1.0,\"drugUtil\":\"g\",\"drugName\":\"阿胶珠\",\"prodName\":\"云南白药\",\"drugBatchNum\":2,\"drugId\":1,\"drugSpecs\":\"1g\",\"drugNum\":12}],\"params\":{},\"drugStatus\":1,\"applyMan\":\"admin\",\"supportId\":1,\"applyTime\":1635868800000}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-11-03 03:30:23');
INSERT INTO `sys_oper_log` VALUES (341, '岗位管理', 1, 'com.ruoyi.project.his.drug.controller.DrugsOrderController.add()', 'POST', 1, 'admin', NULL, '/his/drug/order', '127.0.0.1', '内网IP', '{\"totalMoney\":14,\"tableData\":[{\"drugTotalPrice\":2.0,\"remark\":\"请修改\",\"params\":{},\"rowId\":0,\"drugPrice\":1.0,\"drugUtil\":\"g\",\"drugName\":\"阿胶珠\",\"prodName\":\"云南白药\",\"drugBatchNum\":1,\"drugId\":1,\"drugSpecs\":\"1g\",\"drugNum\":2},{\"drugTotalPrice\":12.0,\"remark\":\"请修改\",\"params\":{},\"rowId\":1,\"drugPrice\":1.0,\"drugUtil\":\"g\",\"drugName\":\"阿胶珠\",\"prodName\":\"云南白药\",\"drugBatchNum\":2,\"drugId\":1,\"drugSpecs\":\"1g\",\"drugNum\":12}],\"params\":{},\"drugStatus\":0,\"applyMan\":\"admin\",\"supportId\":1,\"applyTime\":1635868800000}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-11-03 03:30:24');
INSERT INTO `sys_oper_log` VALUES (342, '岗位管理', 1, 'com.ruoyi.project.his.drug.controller.DrugsOrderController.add()', 'POST', 1, 'admin', NULL, '/his/drug/order', '127.0.0.1', '内网IP', '{\"totalMoney\":14,\"tableData\":[{\"drugTotalPrice\":2.0,\"remark\":\"请修改\",\"params\":{},\"rowId\":0,\"drugPrice\":1.0,\"drugUtil\":\"g\",\"drugName\":\"阿胶珠\",\"prodName\":\"云南白药\",\"drugBatchNum\":1,\"drugId\":1,\"drugSpecs\":\"1g\",\"drugNum\":2},{\"drugTotalPrice\":12.0,\"remark\":\"请修改\",\"params\":{},\"rowId\":1,\"drugPrice\":1.0,\"drugUtil\":\"g\",\"drugName\":\"阿胶珠\",\"prodName\":\"云南白药\",\"drugBatchNum\":2,\"drugId\":1,\"drugSpecs\":\"1g\",\"drugNum\":12}],\"params\":{},\"drugStatus\":1,\"applyMan\":\"admin\",\"supportId\":1,\"applyTime\":1635868800000}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-11-03 03:30:43');
INSERT INTO `sys_oper_log` VALUES (343, '岗位管理', 1, 'com.ruoyi.project.his.drug.controller.DrugsOrderController.add()', 'POST', 1, 'admin', NULL, '/his/drug/order', '127.0.0.1', '内网IP', '{\"totalMoney\":14,\"tableData\":[{\"drugTotalPrice\":2.0,\"remark\":\"请修改\",\"params\":{},\"rowId\":0,\"drugPrice\":1.0,\"drugUtil\":\"g\",\"drugName\":\"阿胶珠\",\"prodName\":\"云南白药\",\"drugBatchNum\":1,\"drugId\":1,\"drugSpecs\":\"1g\",\"drugNum\":2},{\"drugTotalPrice\":12.0,\"remark\":\"请修改\",\"params\":{},\"rowId\":1,\"drugPrice\":1.0,\"drugUtil\":\"g\",\"drugName\":\"阿胶珠\",\"prodName\":\"云南白药\",\"drugBatchNum\":2,\"drugId\":1,\"drugSpecs\":\"1g\",\"drugNum\":12}],\"params\":{},\"drugStatus\":1,\"applyMan\":\"admin\",\"supportId\":1,\"applyTime\":1635868800000}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-11-03 03:30:46');
INSERT INTO `sys_oper_log` VALUES (344, '岗位管理', 1, 'com.ruoyi.project.his.drug.controller.DrugsOrderController.add()', 'POST', 1, 'admin', NULL, '/his/drug/order', '127.0.0.1', '内网IP', '{\"totalMoney\":0,\"tableData\":[{\"drugTotalPrice\":0.0,\"remark\":\"请修改\",\"params\":{},\"rowId\":0,\"drugPrice\":0.0,\"drugUtil\":\"g\",\"drugName\":\"阿胶珠\",\"prodName\":\"云南白药\",\"drugBatchNum\":0,\"drugId\":1,\"drugSpecs\":\"1g\",\"drugNum\":0},{\"drugTotalPrice\":0.0,\"remark\":\"请修改\",\"params\":{},\"rowId\":1,\"drugPrice\":0.0,\"drugUtil\":\"g\",\"drugName\":\"阿胶珠\",\"prodName\":\"云南白药\",\"drugBatchNum\":0,\"drugId\":1,\"drugSpecs\":\"1g\",\"drugNum\":0},{\"drugTotalPrice\":0.0,\"remark\":\"请修改\",\"params\":{},\"rowId\":2,\"drugPrice\":0.0,\"drugUtil\":\"t\",\"drugName\":\"秋水仙碱片\",\"prodName\":\"云南白药\",\"drugBatchNum\":0,\"drugId\":3,\"drugSpecs\":\"1t\",\"drugNum\":0}],\"params\":{},\"drugStatus\":0,\"applyMan\":\"tt\",\"supportId\":1,\"applyTime\":1635782400000}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-11-03 03:35:21');
INSERT INTO `sys_oper_log` VALUES (345, '岗位管理', 1, 'com.ruoyi.project.his.drug.controller.DrugsOrderController.add()', 'POST', 1, 'admin', NULL, '/his/drug/order', '127.0.0.1', '内网IP', '{\"totalMoney\":0,\"tableData\":[{\"drugTotalPrice\":0.0,\"remark\":\"请修改\",\"params\":{},\"rowId\":0,\"drugPrice\":0.0,\"drugUtil\":\"g\",\"drugName\":\"阿胶珠\",\"prodName\":\"云南白药\",\"drugBatchNum\":0,\"drugId\":1,\"drugSpecs\":\"1g\",\"drugNum\":0},{\"drugTotalPrice\":0.0,\"remark\":\"请修改\",\"params\":{},\"rowId\":1,\"drugPrice\":0.0,\"drugUtil\":\"g\",\"drugName\":\"阿胶珠\",\"prodName\":\"云南白药\",\"drugBatchNum\":0,\"drugId\":1,\"drugSpecs\":\"1g\",\"drugNum\":0},{\"drugTotalPrice\":0.0,\"remark\":\"请修改\",\"params\":{},\"rowId\":2,\"drugPrice\":0.0,\"drugUtil\":\"t\",\"drugName\":\"秋水仙碱片\",\"prodName\":\"云南白药\",\"drugBatchNum\":0,\"drugId\":3,\"drugSpecs\":\"1t\",\"drugNum\":0}],\"params\":{},\"drugStatus\":1,\"applyMan\":\"tt\",\"supportId\":1,\"applyTime\":1635782400000}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-11-03 03:35:24');
INSERT INTO `sys_oper_log` VALUES (346, '岗位管理', 1, 'com.ruoyi.project.his.drug.controller.DrugsOrderController.add()', 'POST', 1, 'admin', NULL, '/his/drug/order', '127.0.0.1', '内网IP', '{\"totalMoney\":0,\"tableData\":[{\"drugTotalPrice\":0.0,\"remark\":\"请修改\",\"params\":{},\"rowId\":0,\"drugPrice\":0.0,\"drugUtil\":\"g\",\"drugName\":\"阿胶珠\",\"prodName\":\"云南白药\",\"drugBatchNum\":0,\"drugId\":1,\"drugSpecs\":\"1g\",\"drugNum\":0},{\"drugTotalPrice\":0.0,\"remark\":\"请修改\",\"params\":{},\"rowId\":1,\"drugPrice\":0.0,\"drugUtil\":\"g\",\"drugName\":\"阿胶珠\",\"prodName\":\"云南白药\",\"drugBatchNum\":0,\"drugId\":1,\"drugSpecs\":\"1g\",\"drugNum\":0},{\"drugTotalPrice\":0.0,\"remark\":\"请修改\",\"params\":{},\"rowId\":2,\"drugPrice\":0.0,\"drugUtil\":\"t\",\"drugName\":\"秋水仙碱片\",\"prodName\":\"云南白药\",\"drugBatchNum\":0,\"drugId\":3,\"drugSpecs\":\"1t\",\"drugNum\":0}],\"params\":{},\"drugStatus\":1,\"applyMan\":\"tt\",\"supportId\":1,\"applyTime\":1635782400000}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-11-03 03:35:25');
INSERT INTO `sys_oper_log` VALUES (347, '岗位管理', 1, 'com.ruoyi.project.his.drug.controller.DrugsOrderController.add()', 'POST', 1, 'admin', NULL, '/his/drug/order', '127.0.0.1', '内网IP', '{\"totalMoney\":0,\"tableData\":[{\"drugTotalPrice\":0.0,\"remark\":\"请修改\",\"params\":{},\"rowId\":0,\"drugPrice\":0.0,\"drugUtil\":\"g\",\"drugName\":\"阿胶珠\",\"prodName\":\"云南白药\",\"drugBatchNum\":0,\"drugId\":1,\"drugSpecs\":\"1g\",\"drugNum\":0},{\"drugTotalPrice\":0.0,\"remark\":\"请修改\",\"params\":{},\"rowId\":1,\"drugPrice\":0.0,\"drugUtil\":\"g\",\"drugName\":\"阿胶珠\",\"prodName\":\"云南白药\",\"drugBatchNum\":0,\"drugId\":1,\"drugSpecs\":\"1g\",\"drugNum\":0},{\"drugTotalPrice\":0.0,\"remark\":\"请修改\",\"params\":{},\"rowId\":2,\"drugPrice\":0.0,\"drugUtil\":\"t\",\"drugName\":\"秋水仙碱片\",\"prodName\":\"云南白药\",\"drugBatchNum\":0,\"drugId\":3,\"drugSpecs\":\"1t\",\"drugNum\":0}],\"params\":{},\"drugStatus\":1,\"applyMan\":\"tt\",\"supportId\":1,\"applyTime\":1635782400000}', '{\"msg\":\"操作成功\",\"code\":200}', 0, NULL, '2021-11-03 03:35:25');

-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post`  (
  `post_id` bigint NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '岗位名称',
  `post_sort` int NOT NULL COMMENT '显示顺序',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '岗位信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_post
-- ----------------------------
INSERT INTO `sys_post` VALUES (1, 'ceo', '董事长', 1, '0', 'admin', '2021-10-30 07:47:58', '', NULL, '');
INSERT INTO `sys_post` VALUES (2, 'se', '项目经理', 2, '0', 'admin', '2021-10-30 07:47:58', '', NULL, '');
INSERT INTO `sys_post` VALUES (3, 'hr', '人力资源', 3, '0', 'admin', '2021-10-30 07:47:58', '', NULL, '');
INSERT INTO `sys_post` VALUES (4, 'user', '普通员工', 4, '0', 'admin', '2021-10-30 07:47:58', '', NULL, '');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `role_id` bigint NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '角色权限字符串',
  `role_sort` int NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `menu_check_strictly` tinyint(1) NULL DEFAULT 1 COMMENT '菜单树选择项是否关联显示',
  `dept_check_strictly` tinyint(1) NULL DEFAULT 1 COMMENT '部门树选择项是否关联显示',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 102 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '角色信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, '超级管理员', 'admin', 1, '1', 1, 1, '0', '0', 'admin', '2021-10-30 07:47:59', '', NULL, '超级管理员');
INSERT INTO `sys_role` VALUES (2, '普通角色', 'common', 2, '2', 1, 1, '0', '0', 'admin', '2021-10-30 07:47:59', '', NULL, '普通角色');
INSERT INTO `sys_role` VALUES (100, '库存管理员', 'drug:stock:edit', 3, '1', 1, 1, '0', '0', 'admin', '2021-10-30 13:41:07', 'admin', '2021-11-03 01:34:46', NULL);
INSERT INTO `sys_role` VALUES (101, '尚医疗管理员', 'syl:admin', 10, '1', 1, 1, '0', '0', 'admin', '2021-11-01 01:41:04', 'admin', '2021-11-03 01:34:12', NULL);
INSERT INTO `sys_role` VALUES (102, '门诊前台', 'qiantai', 5, '1', 1, 1, '0', '0', 'admin', '2021-11-03 01:08:12', '', NULL, '挂号前台的角色');
INSERT INTO `sys_role` VALUES (103, '医生', 'doctor', 6, '1', 1, 1, '0', '0', 'admin', '2021-11-03 01:08:59', '', NULL, '医生角色');
INSERT INTO `sys_role` VALUES (104, '审核员', 'durg:stock:examin', 4, '1', 1, 1, '0', '0', 'admin', '2021-11-03 01:35:32', '', NULL, NULL);

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept`  (
  `role_id` bigint NOT NULL COMMENT '角色ID',
  `dept_id` bigint NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`, `dept_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '角色和部门关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------
INSERT INTO `sys_role_dept` VALUES (2, 100);
INSERT INTO `sys_role_dept` VALUES (2, 101);
INSERT INTO `sys_role_dept` VALUES (2, 105);

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`  (
  `role_id` bigint NOT NULL COMMENT '角色ID',
  `menu_id` bigint NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`, `menu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '角色和菜单关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES (2, 1);
INSERT INTO `sys_role_menu` VALUES (2, 2);
INSERT INTO `sys_role_menu` VALUES (2, 3);
INSERT INTO `sys_role_menu` VALUES (2, 4);
INSERT INTO `sys_role_menu` VALUES (2, 100);
INSERT INTO `sys_role_menu` VALUES (2, 101);
INSERT INTO `sys_role_menu` VALUES (2, 102);
INSERT INTO `sys_role_menu` VALUES (2, 103);
INSERT INTO `sys_role_menu` VALUES (2, 104);
INSERT INTO `sys_role_menu` VALUES (2, 105);
INSERT INTO `sys_role_menu` VALUES (2, 106);
INSERT INTO `sys_role_menu` VALUES (2, 107);
INSERT INTO `sys_role_menu` VALUES (2, 108);
INSERT INTO `sys_role_menu` VALUES (2, 109);
INSERT INTO `sys_role_menu` VALUES (2, 110);
INSERT INTO `sys_role_menu` VALUES (2, 111);
INSERT INTO `sys_role_menu` VALUES (2, 112);
INSERT INTO `sys_role_menu` VALUES (2, 113);
INSERT INTO `sys_role_menu` VALUES (2, 114);
INSERT INTO `sys_role_menu` VALUES (2, 115);
INSERT INTO `sys_role_menu` VALUES (2, 116);
INSERT INTO `sys_role_menu` VALUES (2, 500);
INSERT INTO `sys_role_menu` VALUES (2, 501);
INSERT INTO `sys_role_menu` VALUES (2, 1000);
INSERT INTO `sys_role_menu` VALUES (2, 1001);
INSERT INTO `sys_role_menu` VALUES (2, 1002);
INSERT INTO `sys_role_menu` VALUES (2, 1003);
INSERT INTO `sys_role_menu` VALUES (2, 1004);
INSERT INTO `sys_role_menu` VALUES (2, 1005);
INSERT INTO `sys_role_menu` VALUES (2, 1006);
INSERT INTO `sys_role_menu` VALUES (2, 1007);
INSERT INTO `sys_role_menu` VALUES (2, 1008);
INSERT INTO `sys_role_menu` VALUES (2, 1009);
INSERT INTO `sys_role_menu` VALUES (2, 1010);
INSERT INTO `sys_role_menu` VALUES (2, 1011);
INSERT INTO `sys_role_menu` VALUES (2, 1012);
INSERT INTO `sys_role_menu` VALUES (2, 1013);
INSERT INTO `sys_role_menu` VALUES (2, 1014);
INSERT INTO `sys_role_menu` VALUES (2, 1015);
INSERT INTO `sys_role_menu` VALUES (2, 1016);
INSERT INTO `sys_role_menu` VALUES (2, 1017);
INSERT INTO `sys_role_menu` VALUES (2, 1018);
INSERT INTO `sys_role_menu` VALUES (2, 1019);
INSERT INTO `sys_role_menu` VALUES (2, 1020);
INSERT INTO `sys_role_menu` VALUES (2, 1021);
INSERT INTO `sys_role_menu` VALUES (2, 1022);
INSERT INTO `sys_role_menu` VALUES (2, 1023);
INSERT INTO `sys_role_menu` VALUES (2, 1024);
INSERT INTO `sys_role_menu` VALUES (2, 1025);
INSERT INTO `sys_role_menu` VALUES (2, 1026);
INSERT INTO `sys_role_menu` VALUES (2, 1027);
INSERT INTO `sys_role_menu` VALUES (2, 1028);
INSERT INTO `sys_role_menu` VALUES (2, 1029);
INSERT INTO `sys_role_menu` VALUES (2, 1030);
INSERT INTO `sys_role_menu` VALUES (2, 1031);
INSERT INTO `sys_role_menu` VALUES (2, 1032);
INSERT INTO `sys_role_menu` VALUES (2, 1033);
INSERT INTO `sys_role_menu` VALUES (2, 1034);
INSERT INTO `sys_role_menu` VALUES (2, 1035);
INSERT INTO `sys_role_menu` VALUES (2, 1036);
INSERT INTO `sys_role_menu` VALUES (2, 1037);
INSERT INTO `sys_role_menu` VALUES (2, 1038);
INSERT INTO `sys_role_menu` VALUES (2, 1039);
INSERT INTO `sys_role_menu` VALUES (2, 1040);
INSERT INTO `sys_role_menu` VALUES (2, 1041);
INSERT INTO `sys_role_menu` VALUES (2, 1042);
INSERT INTO `sys_role_menu` VALUES (2, 1043);
INSERT INTO `sys_role_menu` VALUES (2, 1044);
INSERT INTO `sys_role_menu` VALUES (2, 1045);
INSERT INTO `sys_role_menu` VALUES (2, 1046);
INSERT INTO `sys_role_menu` VALUES (2, 1047);
INSERT INTO `sys_role_menu` VALUES (2, 1048);
INSERT INTO `sys_role_menu` VALUES (2, 1049);
INSERT INTO `sys_role_menu` VALUES (2, 1050);
INSERT INTO `sys_role_menu` VALUES (2, 1051);
INSERT INTO `sys_role_menu` VALUES (2, 1052);
INSERT INTO `sys_role_menu` VALUES (2, 1053);
INSERT INTO `sys_role_menu` VALUES (2, 1054);
INSERT INTO `sys_role_menu` VALUES (2, 1055);
INSERT INTO `sys_role_menu` VALUES (2, 1056);
INSERT INTO `sys_role_menu` VALUES (2, 1057);
INSERT INTO `sys_role_menu` VALUES (2, 1058);
INSERT INTO `sys_role_menu` VALUES (2, 1059);
INSERT INTO `sys_role_menu` VALUES (2, 1060);
INSERT INTO `sys_role_menu` VALUES (100, 2001);
INSERT INTO `sys_role_menu` VALUES (100, 2007);
INSERT INTO `sys_role_menu` VALUES (100, 2009);
INSERT INTO `sys_role_menu` VALUES (100, 2016);
INSERT INTO `sys_role_menu` VALUES (101, 2000);
INSERT INTO `sys_role_menu` VALUES (101, 2001);
INSERT INTO `sys_role_menu` VALUES (101, 2002);
INSERT INTO `sys_role_menu` VALUES (101, 2003);
INSERT INTO `sys_role_menu` VALUES (101, 2004);
INSERT INTO `sys_role_menu` VALUES (101, 2005);
INSERT INTO `sys_role_menu` VALUES (101, 2006);
INSERT INTO `sys_role_menu` VALUES (101, 2007);
INSERT INTO `sys_role_menu` VALUES (101, 2008);
INSERT INTO `sys_role_menu` VALUES (101, 2009);
INSERT INTO `sys_role_menu` VALUES (101, 2010);
INSERT INTO `sys_role_menu` VALUES (101, 2011);
INSERT INTO `sys_role_menu` VALUES (101, 2012);
INSERT INTO `sys_role_menu` VALUES (101, 2013);
INSERT INTO `sys_role_menu` VALUES (101, 2014);
INSERT INTO `sys_role_menu` VALUES (101, 2015);
INSERT INTO `sys_role_menu` VALUES (101, 2016);
INSERT INTO `sys_role_menu` VALUES (101, 2017);
INSERT INTO `sys_role_menu` VALUES (101, 2018);
INSERT INTO `sys_role_menu` VALUES (101, 2019);
INSERT INTO `sys_role_menu` VALUES (101, 2020);
INSERT INTO `sys_role_menu` VALUES (101, 2021);
INSERT INTO `sys_role_menu` VALUES (101, 2022);
INSERT INTO `sys_role_menu` VALUES (101, 2023);
INSERT INTO `sys_role_menu` VALUES (101, 2024);
INSERT INTO `sys_role_menu` VALUES (101, 2027);
INSERT INTO `sys_role_menu` VALUES (101, 2028);
INSERT INTO `sys_role_menu` VALUES (101, 2029);
INSERT INTO `sys_role_menu` VALUES (101, 2030);
INSERT INTO `sys_role_menu` VALUES (102, 2002);
INSERT INTO `sys_role_menu` VALUES (102, 2003);
INSERT INTO `sys_role_menu` VALUES (102, 2004);
INSERT INTO `sys_role_menu` VALUES (103, 2002);
INSERT INTO `sys_role_menu` VALUES (103, 2005);
INSERT INTO `sys_role_menu` VALUES (103, 2015);
INSERT INTO `sys_role_menu` VALUES (103, 2029);
INSERT INTO `sys_role_menu` VALUES (104, 2001);
INSERT INTO `sys_role_menu` VALUES (104, 2010);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `user_id` bigint NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint NULL DEFAULT NULL COMMENT '部门ID',
  `user_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户账号',
  `nick_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '用户昵称',
  `user_type` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '00' COMMENT '用户类型（00系统用户）',
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '手机号码',
  `sex` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '头像地址',
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '密码',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '最后登录IP',
  `login_date` datetime NULL DEFAULT NULL COMMENT '最后登录时间',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 103 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '用户信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 103, 'admin', '若依', '00', 'ry@163.com', '15888888888', '1', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '127.0.0.1', '2021-10-30 07:47:58', 'admin', '2021-10-30 07:47:58', '', NULL, '管理员');
INSERT INTO `sys_user` VALUES (2, 105, 'ry', '若依', '00', 'ry@qq.com', '15666666666', '1', '', '$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2', '0', '0', '127.0.0.1', '2021-10-30 07:47:58', 'admin', '2021-10-30 07:47:58', '', NULL, '测试员');
INSERT INTO `sys_user` VALUES (100, 100, '库存管理员', 'tom', '00', '1961469106@qq.com', '13561158465', '0', '', '$2a$10$gx8edH5Tw0IrMF7mYHYbZO.bNiuPIv.NmDB3wR7UP8CIQmHKaslti', '0', '2', '', NULL, 'admin', '2021-10-30 13:42:16', '', NULL, '库存');
INSERT INTO `sys_user` VALUES (101, 100, 'tom', '库存管理员tom', '00', '1961469106a@qq.com', '18537215356', '0', '', '$2a$10$zH1TqtOc5PQCnCOogs8yvOuss6pDG89mv8qeqZZgULBqSTvXlOJna', '0', '0', '', NULL, 'admin', '2021-10-30 13:54:32', 'admin', '2021-11-03 01:36:40', 'kuc');
INSERT INTO `sys_user` VALUES (102, 103, 'zhangzhen', '张震', '00', '', '15222533572', '1', '', '$2a$10$jvWe1Nk.YG/hnkpZR2XzvOPQb5bPB6axo/Gp1SEstsi7h86E7O9gq', '0', '0', '', NULL, 'admin', '2021-11-01 01:42:42', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (103, 100, 'xiaowang', '王小姐', '00', '', '', '1', '', '$2a$10$cQI0fPjgQvKs9g.jiRpb8OkhxTb4znGqzaqxf./wr1RR4D/CqtA3u', '0', '0', '', NULL, 'admin', '2021-11-03 01:10:46', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (104, NULL, 'xiaoli', '李时珍', '00', '', '', '0', '', '$2a$10$K8.wzf.4tE2j29Z9p.GU1eApFj0YqE1s0LNY9e0uaGrDKwDAY8CzC', '0', '0', '', NULL, 'admin', '2021-11-03 01:12:51', '', NULL, NULL);
INSERT INTO `sys_user` VALUES (105, 100, 'jak', '审核员jak', '00', '1961469426@qq.com', '18537215355', '0', '', '$2a$10$ntEkbMk7lEZW.Mj4VBnkROlWZySnYg51100p1A3Et.XyN4riH6CjK', '0', '0', '', NULL, 'admin', '2021-11-03 01:37:24', '', NULL, NULL);

-- ----------------------------
-- Table structure for sys_user_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_post`;
CREATE TABLE `sys_user_post`  (
  `user_id` bigint NOT NULL COMMENT '用户ID',
  `post_id` bigint NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`, `post_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '用户与岗位关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_post
-- ----------------------------
INSERT INTO `sys_user_post` VALUES (1, 1);
INSERT INTO `sys_user_post` VALUES (2, 2);
INSERT INTO `sys_user_post` VALUES (101, 2);
INSERT INTO `sys_user_post` VALUES (102, 3);
INSERT INTO `sys_user_post` VALUES (103, 4);
INSERT INTO `sys_user_post` VALUES (104, 4);
INSERT INTO `sys_user_post` VALUES (105, 2);

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `user_id` bigint NOT NULL COMMENT '用户ID',
  `role_id` bigint NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`, `role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '用户和角色关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES (1, 1);
INSERT INTO `sys_user_role` VALUES (2, 2);
INSERT INTO `sys_user_role` VALUES (101, 100);
INSERT INTO `sys_user_role` VALUES (102, 101);
INSERT INTO `sys_user_role` VALUES (103, 102);
INSERT INTO `sys_user_role` VALUES (104, 103);
INSERT INTO `sys_user_role` VALUES (105, 104);

SET FOREIGN_KEY_CHECKS = 1;
