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

SET FOREIGN_KEY_CHECKS = 1;
