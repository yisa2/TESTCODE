/*
 Navicat Premium Data Transfer

 Source Server         : QSQLITE
 Source Server Type    : SQLite
 Source Server Version : 3021000
 Source Schema         : main

 Target Server Type    : SQLite
 Target Server Version : 3021000
 File Encoding         : 65001

 Date: 12/10/2024 13:59:43
*/

PRAGMA foreign_keys = false;

-- ----------------------------
-- Table structure for GCodePara_0
-- ----------------------------
DROP TABLE IF EXISTS "GCodePara_0";
CREATE TABLE "GCodePara_0" (
  "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
  "Para" TEXT,
  "Name" TEXT,
  "Type" TEXT,
  "Value" text,
  "VarPrompt" TEXT,
  "Flag" TEXT,
  "Order" TEXT DEFAULT 1
);

-- ----------------------------
-- Records of GCodePara_0
-- ----------------------------
INSERT INTO "GCodePara_0" VALUES (1, 'iInitGroupSet_1', '01组G指令初始模态', 'G00,G01', 0, '', '默认参数', 1);
INSERT INTO "GCodePara_0" VALUES (2, 'iInitGroupSet_2', '02组G指令初始模态', 'G17,G18,G19', 0, '', '默认参数', 1);
INSERT INTO "GCodePara_0" VALUES (3, 'iInitGroupSet_3', '03组G指令初始模态', 'G90,G91', 0, '', '默认参数', 1);
INSERT INTO "GCodePara_0" VALUES (4, 'iInitGroupSet_5', '05组G指令初始模态', 'G94,G95', 0, '', '默认参数', 1);
INSERT INTO "GCodePara_0" VALUES (5, 'iInitGroupSet_6', '06组G指令初始模态', 'G21,G20', 0, '', '默认参数', 1);
INSERT INTO "GCodePara_0" VALUES (6, 'iInitGroupG10_9', 'G10.9半径/直径编程初始模态', '0半径,1直径', 0, '', '默认参数', 1);
INSERT INTO "GCodePara_0" VALUES (7, 'iScrewAccLenSet', '螺纹加工加减速距离选择', '自动计算,参数设定', 0, '', '车削/螺纹参数', 1);
INSERT INTO "GCodePara_0" VALUES (8, 'iCAxisDirG1_1', 'G01.1插补螺纹C轴旋转方向', '正转,反转', 0, '', '车削/螺纹参数', 1);
INSERT INTO "GCodePara_0" VALUES (9, 'G276_Pm', 'G276加工重复次数(1~99)', '', 0, '', '车削/螺纹参数', 1);
INSERT INTO "GCodePara_0" VALUES (10, 'iTmSpindleStopType', 'M205车削主轴停止方式', '自动停止,定向停止', 0, '', '车削/螺纹参数', 1);
INSERT INTO "GCodePara_0" VALUES (11, 'G75_IsRetract', '主轴定向后的是否需要退刀', '需要,不需要', 0, '', '铣削参数', 1);
INSERT INTO "GCodePara_0" VALUES (12, 'G75_RetractDir', '主轴定向后的退刀方向', '正向,负向', 0, '', '铣削参数', 1);
INSERT INTO "GCodePara_0" VALUES (13, 'M00_IsStopTSpindle', 'M00暂停时，停止车削主轴选择', '停止,不停止', 0, '', '铣削参数', 1);
INSERT INTO "GCodePara_0" VALUES (14, 'bG43_4PosCoordType', 'G43.4编程坐标系选择(F85.2)', '工作台坐标系,工件坐标系', 0, '', '铣削参数', 1);
INSERT INTO "GCodePara_0" VALUES (15, 'M30_IsStopMSpindle', '自动加工模式M30程序结束时,停止铣削主轴', '停止,不停止', 0, '', '铣削参数', 1);
INSERT INTO "GCodePara_0" VALUES (16, 'M19_IsPlcMotion', 'M19 定向运动选择', 'NC,PLC', 0, '', '铣削参数', 1);
INSERT INTO "GCodePara_0" VALUES (17, 'iMSpindleStopType', '铣主轴停转(M05)时,停止位置选择', '自动停止,M19定向停止', 1, '', '铣削参数', 1);
INSERT INTO "GCodePara_0" VALUES (18, 'bG43_4_G68_2_RotateAxisPosType', '倾斜面RTCP代码中旋转轴位置类型', '姿态值,位置值', 0, '', '铣削参数', 1);
INSERT INTO "GCodePara_0" VALUES (19, 'G07_1_RotateAxisPosType', 'G07.1圆柱插补旋转轴位置类型', '直角坐标,旋转角度', 0, '', '铣削参数', 1);
INSERT INTO "GCodePara_0" VALUES (20, 'bG43_4RotateAxisZeroType', '刀具尖端点控制中的工作台旋转轴基准位置', '控制开始的工件位置,旋转轴0°的位置', 1, '', '铣削参数', 1);
INSERT INTO "GCodePara_0" VALUES (21, 'bG43_4UpPcsZOffset', '刀具尖端点控制中单独起动时补偿量移动选择', '移动补偿量距离,不移动', 1, '', '铣削参数', 1);
INSERT INTO "GCodePara_0" VALUES (22, 'bG49UpPcsZOffset', '刀具尖端点控制中G49指令补偿量移动选择', '移动补偿量距离: H对应补偿值,不移动（默认', 1, '', '铣削参数', 1);
INSERT INTO "GCodePara_0" VALUES (23, 'G28_refPos_1_1', '第1参考点坐标-X', 0.000, 0.000000, '', '参考点', 1);
INSERT INTO "GCodePara_0" VALUES (24, 'G28_refPos_1_2', '第1参考点坐标-Y', 0.000, 0.000000, '', '参考点', 1);
INSERT INTO "GCodePara_0" VALUES (25, 'G28_refPos_1_3', '第1参考点坐标-Z', 0.000, 0.000000, '', '参考点', 1);
INSERT INTO "GCodePara_0" VALUES (26, 'G28_refPos_1_4', '第1参考点坐标-B', 0.000, 0.000000, '', '参考点', 1);
INSERT INTO "GCodePara_0" VALUES (27, 'G28_refPos_1_5', '第1参考点坐标-C', 0.000, 0.000000, '', '参考点', 1);
INSERT INTO "GCodePara_0" VALUES (28, 'G28_refPos_1_6', '第1参考点坐标-A', 0.000, 0.000000, '', '参考点', 1);
INSERT INTO "GCodePara_0" VALUES (29, 'G28_refPos_1_7', '第1参考点坐标-U', 0.000, 0.000000, '', '参考点', 1);
INSERT INTO "GCodePara_0" VALUES (30, 'G28_refPos_1_8', '第1参考点坐标-', 0.000, 0.000000, '', '参考点', 1);
INSERT INTO "GCodePara_0" VALUES (31, 'G28_refPos_1_9', '第1参考点坐标-', 0.000, 0.000000, '', '参考点', 1);
INSERT INTO "GCodePara_0" VALUES (32, 'G28_refPos_1_10', '第1参考点坐标-', 0.000, 0.000000, '', '参考点', 1);
INSERT INTO "GCodePara_0" VALUES (33, 'G28_refPos_1_11', '第1参考点坐标-', 0.000, 0.000000, '', '参考点', 1);
INSERT INTO "GCodePara_0" VALUES (34, 'G28_refPos_1_12', '第1参考点坐标-', 0.000, 0.000000, '', '参考点', 1);
INSERT INTO "GCodePara_0" VALUES (35, 'G28_refPos_1_13', '第1参考点坐标-', 0.000, 0.000000, '', '参考点', 1);
INSERT INTO "GCodePara_0" VALUES (36, 'G28_refPos_1_14', '第1参考点坐标-', 0.000, 0.000000, '', '参考点', 1);
INSERT INTO "GCodePara_0" VALUES (37, 'G28_refPos_1_15', '第1参考点坐标-', 0.000, 0.000000, '', '参考点', 1);
INSERT INTO "GCodePara_0" VALUES (38, 'G28_refPos_1_16', '第1参考点坐标-', 0.000, 0.000000, '', '参考点', 1);
INSERT INTO "GCodePara_0" VALUES (39, 'G28_refPos_1_17', '第1参考点坐标-', 0.000, 0.000000, '', '参考点', 1);
INSERT INTO "GCodePara_0" VALUES (40, 'G28_refPos_1_18', '第1参考点坐标-', 0.000, 0.000000, '', '参考点', 1);
INSERT INTO "GCodePara_0" VALUES (41, 'G28_refPos_1_19', '第1参考点坐标-', 0.000, 0.000000, '', '参考点', 1);
INSERT INTO "GCodePara_0" VALUES (42, 'G28_refPos_1_20', '第1参考点坐标-', 0.000, 0.000000, '', '参考点', 1);
INSERT INTO "GCodePara_0" VALUES (43, 'G28_refPos_1_21', '第1参考点坐标-', 0.000, 0.000000, '', '参考点', 1);
INSERT INTO "GCodePara_0" VALUES (44, 'G28_refPos_1_22', '第1参考点坐标-', 0.000, 0.000000, '', '参考点', 1);
INSERT INTO "GCodePara_0" VALUES (45, 'G28_refPos_1_23', '第1参考点坐标-', 0.000, 0.000000, '', '参考点', 1);
INSERT INTO "GCodePara_0" VALUES (46, 'G28_refPos_1_24', '第1参考点坐标-', 0.000, 0.000000, '', '参考点', 1);
INSERT INTO "GCodePara_0" VALUES (47, 'G28_refPos_1_25', '第1参考点坐标-', 0.000, 0.000000, '', '参考点', 1);
INSERT INTO "GCodePara_0" VALUES (48, 'G28_refPos_1_26', '第1参考点坐标-', 0.000, 0.000000, '', '参考点', 1);
INSERT INTO "GCodePara_0" VALUES (49, 'G28_refPos_1_27', '第1参考点坐标-', 0.000, 0.000000, '', '参考点', 1);
INSERT INTO "GCodePara_0" VALUES (50, 'G28_refPos_1_28', '第1参考点坐标-', 0.000, 0.000000, '', '参考点', 1);
INSERT INTO "GCodePara_0" VALUES (51, 'G28_refPos_1_29', '第1参考点坐标-', 0.000, 0.000000, '', '参考点', 1);
INSERT INTO "GCodePara_0" VALUES (52, 'G28_refPos_1_30', '第1参考点坐标-', 0.000, 0.000000, '', '参考点', 1);
INSERT INTO "GCodePara_0" VALUES (53, 'G28_refPos_1_31', '第1参考点坐标-', 0.000, 0.000000, '', '参考点', 1);
INSERT INTO "GCodePara_0" VALUES (54, 'G28_refPos_1_32', '第1参考点坐标-', 0.000, 0.000000, '', '参考点', 1);
INSERT INTO "GCodePara_0" VALUES (55, 'G28_refPos_2_1', '第2参考点坐标-X', 0.000, 0.000000, '', '参考点', 1);
INSERT INTO "GCodePara_0" VALUES (56, 'G28_refPos_2_2', '第2参考点坐标-Y', 0.000, 0.000000, '', '参考点', 1);
INSERT INTO "GCodePara_0" VALUES (57, 'G28_refPos_2_3', '第2参考点坐标-Z', 0.000, 0.000000, '', '参考点', 1);
INSERT INTO "GCodePara_0" VALUES (58, 'G28_refPos_2_4', '第2参考点坐标-B', 0.000, 0.000000, '', '参考点', 1);
INSERT INTO "GCodePara_0" VALUES (59, 'G28_refPos_2_5', '第2参考点坐标-C', 0.000, 0.000000, '', '参考点', 1);
INSERT INTO "GCodePara_0" VALUES (60, 'G28_refPos_2_6', '第2参考点坐标-A', 0.000, 0.000000, '', '参考点', 1);
INSERT INTO "GCodePara_0" VALUES (61, 'G28_refPos_2_7', '第2参考点坐标-U', 0.000, 0.000000, '', '参考点', 1);
INSERT INTO "GCodePara_0" VALUES (62, 'G28_refPos_2_8', '第2参考点坐标-', 0.000, 0.000000, '', '参考点', 1);
INSERT INTO "GCodePara_0" VALUES (63, 'G28_refPos_2_9', '第2参考点坐标-', 0.000, 0.000000, '', '参考点', 1);
INSERT INTO "GCodePara_0" VALUES (64, 'G28_refPos_2_10', '第2参考点坐标-', 0.000, 0.000000, '', '参考点', 1);
INSERT INTO "GCodePara_0" VALUES (65, 'G28_refPos_2_11', '第2参考点坐标-', 0.000, 0.000000, '', '参考点', 1);
INSERT INTO "GCodePara_0" VALUES (66, 'G28_refPos_2_12', '第2参考点坐标-', 0.000, 0.000000, '', '参考点', 1);
INSERT INTO "GCodePara_0" VALUES (67, 'G28_refPos_2_13', '第2参考点坐标-', 0.000, 0.000000, '', '参考点', 1);
INSERT INTO "GCodePara_0" VALUES (68, 'G28_refPos_2_14', '第2参考点坐标-', 0.000, 0.000000, '', '参考点', 1);
INSERT INTO "GCodePara_0" VALUES (69, 'G28_refPos_2_15', '第2参考点坐标-', 0.000, 0.000000, '', '参考点', 1);
INSERT INTO "GCodePara_0" VALUES (70, 'G28_refPos_2_16', '第2参考点坐标-', 0.000, 0.000000, '', '参考点', 1);
INSERT INTO "GCodePara_0" VALUES (71, 'G28_refPos_2_17', '第2参考点坐标-', 0.000, 0.000000, '', '参考点', 1);
INSERT INTO "GCodePara_0" VALUES (72, 'G28_refPos_2_18', '第2参考点坐标-', 0.000, 0.000000, '', '参考点', 1);
INSERT INTO "GCodePara_0" VALUES (73, 'G28_refPos_2_19', '第2参考点坐标-', 0.000, 0.000000, '', '参考点', 1);
INSERT INTO "GCodePara_0" VALUES (74, 'G28_refPos_2_20', '第2参考点坐标-', 0.000, 0.000000, '', '参考点', 1);
INSERT INTO "GCodePara_0" VALUES (75, 'G28_refPos_2_21', '第2参考点坐标-', 0.000, 0.000000, '', '参考点', 1);
INSERT INTO "GCodePara_0" VALUES (76, 'G28_refPos_2_22', '第2参考点坐标-', 0.000, 0.000000, '', '参考点', 1);
INSERT INTO "GCodePara_0" VALUES (77, 'G28_refPos_2_23', '第2参考点坐标-', 0.000, 0.000000, '', '参考点', 1);
INSERT INTO "GCodePara_0" VALUES (78, 'G28_refPos_2_24', '第2参考点坐标-', 0.000, 0.000000, '', '参考点', 1);
INSERT INTO "GCodePara_0" VALUES (79, 'G28_refPos_2_25', '第2参考点坐标-', 0.000, 0.000000, '', '参考点', 1);
INSERT INTO "GCodePara_0" VALUES (80, 'G28_refPos_2_26', '第2参考点坐标-', 0.000, 0.000000, '', '参考点', 1);
INSERT INTO "GCodePara_0" VALUES (81, 'G28_refPos_2_27', '第2参考点坐标-', 0.000, 0.000000, '', '参考点', 1);
INSERT INTO "GCodePara_0" VALUES (82, 'G28_refPos_2_28', '第2参考点坐标-', 0.000, 0.000000, '', '参考点', 1);
INSERT INTO "GCodePara_0" VALUES (83, 'G28_refPos_2_29', '第2参考点坐标-', 0.000, 0.000000, '', '参考点', 1);
INSERT INTO "GCodePara_0" VALUES (84, 'G28_refPos_2_30', '第2参考点坐标-', 0.000, 0.000000, '', '参考点', 1);
INSERT INTO "GCodePara_0" VALUES (85, 'G28_refPos_2_31', '第2参考点坐标-', 0.000, 0.000000, '', '参考点', 1);
INSERT INTO "GCodePara_0" VALUES (86, 'G28_refPos_2_32', '第2参考点坐标-', 0.000, 0.000000, '', '参考点', 1);
INSERT INTO "GCodePara_0" VALUES (87, 'G28_refPos_3_1', '第3参考点坐标-X', 0.000, 0.000000, '', '参考点', 1);
INSERT INTO "GCodePara_0" VALUES (88, 'G28_refPos_3_2', '第3参考点坐标-Y', 0.000, 0.000000, '', '参考点', 1);
INSERT INTO "GCodePara_0" VALUES (89, 'G28_refPos_3_3', '第3参考点坐标-Z', 0.000, 0.000000, '', '参考点', 1);
INSERT INTO "GCodePara_0" VALUES (90, 'G28_refPos_3_4', '第3参考点坐标-B', 0.000, 0.000000, '', '参考点', 1);
INSERT INTO "GCodePara_0" VALUES (91, 'G28_refPos_3_5', '第3参考点坐标-C', 0.000, 0.000000, '', '参考点', 1);
INSERT INTO "GCodePara_0" VALUES (92, 'G28_refPos_3_6', '第3参考点坐标-A', 0.000, 0.000000, '', '参考点', 1);
INSERT INTO "GCodePara_0" VALUES (93, 'G28_refPos_3_7', '第3参考点坐标-U', 0.000, 0.000000, '', '参考点', 1);
INSERT INTO "GCodePara_0" VALUES (94, 'G28_refPos_3_8', '第3参考点坐标-', 0.000, 0.000000, '', '参考点', 1);
INSERT INTO "GCodePara_0" VALUES (95, 'G28_refPos_3_9', '第3参考点坐标-', 0.000, 0.000000, '', '参考点', 1);
INSERT INTO "GCodePara_0" VALUES (96, 'G28_refPos_3_10', '第3参考点坐标-', 0.000, 0.000000, '', '参考点', 1);
INSERT INTO "GCodePara_0" VALUES (97, 'G28_refPos_3_11', '第3参考点坐标-', 0.000, 0.000000, '', '参考点', 1);
INSERT INTO "GCodePara_0" VALUES (98, 'G28_refPos_3_12', '第3参考点坐标-', 0.000, 0.000000, '', '参考点', 1);
INSERT INTO "GCodePara_0" VALUES (99, 'G28_refPos_3_13', '第3参考点坐标-', 0.000, 0.000000, '', '参考点', 1);
INSERT INTO "GCodePara_0" VALUES (100, 'G28_refPos_3_14', '第3参考点坐标-', 0.000, 0.000000, '', '参考点', 1);
INSERT INTO "GCodePara_0" VALUES (101, 'G28_refPos_3_15', '第3参考点坐标-', 0.000, 0.000000, '', '参考点', 1);
INSERT INTO "GCodePara_0" VALUES (102, 'G28_refPos_3_16', '第3参考点坐标-', 0.000, 0.000000, '', '参考点', 1);
INSERT INTO "GCodePara_0" VALUES (103, 'G28_refPos_3_17', '第3参考点坐标-', 0.000, 0.000000, '', '参考点', 1);
INSERT INTO "GCodePara_0" VALUES (104, 'G28_refPos_3_18', '第3参考点坐标-', 0.000, 0.000000, '', '参考点', 1);
INSERT INTO "GCodePara_0" VALUES (105, 'G28_refPos_3_19', '第3参考点坐标-', 0.000, 0.000000, '', '参考点', 1);
INSERT INTO "GCodePara_0" VALUES (106, 'G28_refPos_3_20', '第3参考点坐标-', 0.000, 0.000000, '', '参考点', 1);
INSERT INTO "GCodePara_0" VALUES (107, 'G28_refPos_3_21', '第3参考点坐标-', 0.000, 0.000000, '', '参考点', 1);
INSERT INTO "GCodePara_0" VALUES (108, 'G28_refPos_3_22', '第3参考点坐标-', 0.000, 0.000000, '', '参考点', 1);
INSERT INTO "GCodePara_0" VALUES (109, 'G28_refPos_3_23', '第3参考点坐标-', 0.000, 0.000000, '', '参考点', 1);
INSERT INTO "GCodePara_0" VALUES (110, 'G28_refPos_3_24', '第3参考点坐标-', 0.000, 0.000000, '', '参考点', 1);
INSERT INTO "GCodePara_0" VALUES (111, 'G28_refPos_3_25', '第3参考点坐标-', 0.000, 0.000000, '', '参考点', 1);
INSERT INTO "GCodePara_0" VALUES (112, 'G28_refPos_3_26', '第3参考点坐标-', 0.000, 0.000000, '', '参考点', 1);
INSERT INTO "GCodePara_0" VALUES (113, 'G28_refPos_3_27', '第3参考点坐标-', 0.000, 0.000000, '', '参考点', 1);
INSERT INTO "GCodePara_0" VALUES (114, 'G28_refPos_3_28', '第3参考点坐标-', 0.000, 0.000000, '', '参考点', 1);
INSERT INTO "GCodePara_0" VALUES (115, 'G28_refPos_3_29', '第3参考点坐标-', 0.000, 0.000000, '', '参考点', 1);
INSERT INTO "GCodePara_0" VALUES (116, 'G28_refPos_3_30', '第3参考点坐标-', 0.000, 0.000000, '', '参考点', 1);
INSERT INTO "GCodePara_0" VALUES (117, 'G28_refPos_3_31', '第3参考点坐标-', 0.000, 0.000000, '', '参考点', 1);
INSERT INTO "GCodePara_0" VALUES (118, 'G28_refPos_3_32', '第3参考点坐标-', 0.000, 0.000000, '', '参考点', 1);
INSERT INTO "GCodePara_0" VALUES (119, 'G28_refPos_4_1', '第4参考点坐标-X', 0.000, 0.000000, '', '参考点', 1);
INSERT INTO "GCodePara_0" VALUES (120, 'G28_refPos_4_2', '第4参考点坐标-Y', 0.000, 0.000000, '', '参考点', 1);
INSERT INTO "GCodePara_0" VALUES (121, 'G28_refPos_4_3', '第4参考点坐标-Z', 0.000, 0.000000, '', '参考点', 1);
INSERT INTO "GCodePara_0" VALUES (122, 'G28_refPos_4_4', '第4参考点坐标-B', 0.000, 0.000000, '', '参考点', 1);
INSERT INTO "GCodePara_0" VALUES (123, 'G28_refPos_4_5', '第4参考点坐标-C', 0.000, 8.000000, '', '参考点', 1);
INSERT INTO "GCodePara_0" VALUES (124, 'G28_refPos_4_6', '第4参考点坐标-A', 0.000, 0.000000, '', '参考点', 1);
INSERT INTO "GCodePara_0" VALUES (125, 'G28_refPos_4_7', '第4参考点坐标-U', 0.000, 0.000000, '', '参考点', 1);
INSERT INTO "GCodePara_0" VALUES (126, 'G28_refPos_4_8', '第4参考点坐标-', 0.000, 0.000000, '', '参考点', 1);
INSERT INTO "GCodePara_0" VALUES (127, 'G28_refPos_4_9', '第4参考点坐标-', 0.000, 0.000000, '', '参考点', 1);
INSERT INTO "GCodePara_0" VALUES (128, 'G28_refPos_4_10', '第4参考点坐标-', 0.000, 0.000000, '', '参考点', 1);
INSERT INTO "GCodePara_0" VALUES (129, 'G28_refPos_4_11', '第4参考点坐标-', 0.000, 0.000000, '', '参考点', 1);
INSERT INTO "GCodePara_0" VALUES (130, 'G28_refPos_4_12', '第4参考点坐标-', 0.000, 0.000000, '', '参考点', 1);
INSERT INTO "GCodePara_0" VALUES (131, 'G28_refPos_4_13', '第4参考点坐标-', 0.000, 0.000000, '', '参考点', 1);
INSERT INTO "GCodePara_0" VALUES (132, 'G28_refPos_4_14', '第4参考点坐标-', 0.000, 0.000000, '', '参考点', 1);
INSERT INTO "GCodePara_0" VALUES (133, 'G28_refPos_4_15', '第4参考点坐标-', 0.000, 0.000000, '', '参考点', 1);
INSERT INTO "GCodePara_0" VALUES (134, 'G28_refPos_4_16', '第4参考点坐标-', 0.000, 0.000000, '', '参考点', 1);
INSERT INTO "GCodePara_0" VALUES (135, 'G28_refPos_4_17', '第4参考点坐标-', 0.000, 0.000000, '', '参考点', 1);
INSERT INTO "GCodePara_0" VALUES (136, 'G28_refPos_4_18', '第4参考点坐标-', 0.000, 0.000000, '', '参考点', 1);
INSERT INTO "GCodePara_0" VALUES (137, 'G28_refPos_4_19', '第4参考点坐标-', 0.000, 0.000000, '', '参考点', 1);
INSERT INTO "GCodePara_0" VALUES (138, 'G28_refPos_4_20', '第4参考点坐标-', 0.000, 0.000000, '', '参考点', 1);
INSERT INTO "GCodePara_0" VALUES (139, 'G28_refPos_4_21', '第4参考点坐标-', 0.000, 0.000000, '', '参考点', 1);
INSERT INTO "GCodePara_0" VALUES (140, 'G28_refPos_4_22', '第4参考点坐标-', 0.000, 0.000000, '', '参考点', 1);
INSERT INTO "GCodePara_0" VALUES (141, 'G28_refPos_4_23', '第4参考点坐标-', 0.000, 0.000000, '', '参考点', 1);
INSERT INTO "GCodePara_0" VALUES (142, 'G28_refPos_4_24', '第4参考点坐标-', 0.000, 0.000000, '', '参考点', 1);
INSERT INTO "GCodePara_0" VALUES (143, 'G28_refPos_4_25', '第4参考点坐标-', 0.000, 0.000000, '', '参考点', 1);
INSERT INTO "GCodePara_0" VALUES (144, 'G28_refPos_4_26', '第4参考点坐标-', 0.000, 0.000000, '', '参考点', 1);
INSERT INTO "GCodePara_0" VALUES (145, 'G28_refPos_4_27', '第4参考点坐标-', 0.000, 0.000000, '', '参考点', 1);
INSERT INTO "GCodePara_0" VALUES (146, 'G28_refPos_4_28', '第4参考点坐标-', 0.000, 0.000000, '', '参考点', 1);
INSERT INTO "GCodePara_0" VALUES (147, 'G28_refPos_4_29', '第4参考点坐标-', 0.000, 0.000000, '', '参考点', 1);
INSERT INTO "GCodePara_0" VALUES (148, 'G28_refPos_4_30', '第4参考点坐标-', 0.000, 0.000000, '', '参考点', 1);
INSERT INTO "GCodePara_0" VALUES (149, 'G28_refPos_4_31', '第4参考点坐标-', 0.000, 0.000000, '', '参考点', 1);
INSERT INTO "GCodePara_0" VALUES (150, 'G28_refPos_4_32', '第4参考点坐标-', 0.000, 0.000000, '', '参考点', 1);
INSERT INTO "GCodePara_0" VALUES (151, 'G53_3_ForwardVel', '刀轴方向进刀速度(mm/min)', 0.000, 0.000000, '', '五轴参数', 1);
INSERT INTO "GCodePara_0" VALUES (152, 'G53_3_BackwardVel', '刀轴方向退刀速度(mm/min)', 0.000, 0.000000, '', '五轴参数', 1);
INSERT INTO "GCodePara_0" VALUES (153, 'screwAccLen', '螺纹加工加速距离(mm)', '', 2.000000, '', '车削/螺纹参数', 1);
INSERT INTO "GCodePara_0" VALUES (154, 'screwDecLen', '螺纹加工减速距离(mm)', '', 2.000000, '', '车削/螺纹参数', 1);
INSERT INTO "GCodePara_0" VALUES (155, 'G292_chamferLen', 'G292/G276螺纹倒角量(单位0.1导程)', '', 0.000000, '', '车削/螺纹参数', 1);
INSERT INTO "GCodePara_0" VALUES (156, 'G292_chamferAngle', '', '', 0.000000, '', '', 1);
INSERT INTO "GCodePara_0" VALUES (157, 'G276_Pa', 'G276刀尖角度', '', 0.000000, '', '车削/螺纹参数', 1);
INSERT INTO "GCodePara_0" VALUES (158, 'G276_Rd', 'G276加工余量', '', 0.000000, '', '车削/螺纹参数', 1);
INSERT INTO "GCodePara_0" VALUES (159, 'G276_Mind', 'G276最小切削量', '', 0.000000, '', '车削/螺纹参数', 1);
INSERT INTO "GCodePara_0" VALUES (160, 'dTmSpindleStopPos', 'M219车削主轴定向停止角度0~360°', '', 0.000000, '', '车削/螺纹参数', 1);
INSERT INTO "GCodePara_0" VALUES (161, 'M19_SpindleStopPos', 'M19铣削主轴定向停止角度0~360°', '', 0.000000, '', '铣削参数', 1);
INSERT INTO "GCodePara_0" VALUES (162, 'M202_Vir5AxisID', 'M202车削模式虚拟(C轴)第2旋转轴ID', 0, 1, '', '五轴参数', 1);
INSERT INTO "GCodePara_0" VALUES (163, 'axisVelZeroValue', '电机零速信号阈值(mm/min)', 0.000, 1.000000, '', '五轴参数', 1);
INSERT INTO "GCodePara_0" VALUES (164, 'axisVelArriveValue', '电机速度到达阈值(mm/min)', 0.000, 1.000000, '', '五轴参数', 1);
INSERT INTO "GCodePara_0" VALUES (165, 'iCaptureStopSignalType_0', '第1组探测/跳转信号类型', 'GPI,Home', 0, '', '五轴参数', 1);
INSERT INTO "GCodePara_0" VALUES (166, 'iCaptureStopSignalType_1', '第2组探测/跳转信号类型', 'GPI,Home', 0, '', '五轴参数', 1);
INSERT INTO "GCodePara_0" VALUES (167, 'iCaptureStopSignalType_2', '第3组探测/跳转信号类型', 'GPI,Home', 0, '', '五轴参数', 1);
INSERT INTO "GCodePara_0" VALUES (168, 'iCaptureStopSignalType_3', '第4组探测/跳转信号类型', 'GPI,Home', 0, '', '五轴参数', 1);
INSERT INTO "GCodePara_0" VALUES (169, 'iCaptureStopSignalType_4', '第5组探测/跳转信号类型', 'GPI,Home', 0, '', '五轴参数', 1);
INSERT INTO "GCodePara_0" VALUES (170, 'iCaptureStopSignalType_5', '第6组探测/跳转信号类型', 'GPI,Home', 0, '', '五轴参数', 1);
INSERT INTO "GCodePara_0" VALUES (171, 'iCaptureStopSignalType_6', '第7组探测/跳转信号类型', 'GPI,Home', 0, '', '五轴参数', 1);
INSERT INTO "GCodePara_0" VALUES (172, 'iCaptureStopSignalType_7', '第8组探测/跳转信号类型', 'GPI,Home', 0, '', '五轴参数', 1);
INSERT INTO "GCodePara_0" VALUES (173, 'iCaptureStopSignalIndex_0', '第1组探测/跳转信号索引', 0.0, 0, '', '五轴参数', 1);
INSERT INTO "GCodePara_0" VALUES (174, 'iCaptureStopSignalIndex_1', '第2组探测/跳转信号索引', 0.0, 0, '', '五轴参数', 1);
INSERT INTO "GCodePara_0" VALUES (175, 'iCaptureStopSignalIndex_2', '第3组探测/跳转信号索引', 0.0, 0, '', '五轴参数', 1);
INSERT INTO "GCodePara_0" VALUES (176, 'iCaptureStopSignalIndex_3', '第4组探测/跳转信号索引', 0.0, 0, '', '五轴参数', 1);
INSERT INTO "GCodePara_0" VALUES (177, 'iCaptureStopSignalIndex_4', '第5组探测/跳转信号索引', 0.0, 0, '', '五轴参数', 1);
INSERT INTO "GCodePara_0" VALUES (178, 'iCaptureStopSignalIndex_5', '第6组探测/跳转信号索引', 0.0, 0, '', '五轴参数', 1);
INSERT INTO "GCodePara_0" VALUES (179, 'iCaptureStopSignalIndex_6', '第7组探测/跳转信号索引', 0.0, 0, '', '五轴参数', 1);
INSERT INTO "GCodePara_0" VALUES (180, 'iCaptureStopSignalIndex_7', '第8组探测/跳转信号索引', 0.0, 0, '', '五轴参数', 1);
INSERT INTO "GCodePara_0" VALUES (181, 'iCaptureStopSignalValue_0', '第1组探测/跳转信号触发值', 0.0, 0, '', '五轴参数', 1);
INSERT INTO "GCodePara_0" VALUES (182, 'iCaptureStopSignalValue_1', '第2组探测/跳转信号触发值', 0.0, 0, '', '五轴参数', 1);
INSERT INTO "GCodePara_0" VALUES (183, 'iCaptureStopSignalValue_2', '第3组探测/跳转信号触发值', 0.0, 0, '', '五轴参数', 1);
INSERT INTO "GCodePara_0" VALUES (184, 'iCaptureStopSignalValue_3', '第4组探测/跳转信号触发值', 0.0, 0, '', '五轴参数', 1);
INSERT INTO "GCodePara_0" VALUES (185, 'iCaptureStopSignalValue_4', '第5组探测/跳转信号触发值', 0.0, 0, '', '五轴参数', 1);
INSERT INTO "GCodePara_0" VALUES (186, 'iCaptureStopSignalValue_5', '第6组探测/跳转信号触发值', 0.0, 0, '', '五轴参数', 1);
INSERT INTO "GCodePara_0" VALUES (187, 'iCaptureStopSignalValue_6', '第7组探测/跳转信号触发值', 0.0, 0, '', '五轴参数', 1);
INSERT INTO "GCodePara_0" VALUES (188, 'iCaptureStopSignalValue_7', '第8组探测/跳转信号触发值', 0.0, 0, '', '五轴参数', 1);
INSERT INTO "GCodePara_0" VALUES (189, 'iCaptureStopSignalCondition_0', '第1组探测/跳转信号比较条件', 0.0, 0, '', '五轴参数', 1);
INSERT INTO "GCodePara_0" VALUES (190, 'iCaptureStopSignalCondition_1', '第2组探测/跳转信号比较条件', 0.0, 0, '', '五轴参数', 1);
INSERT INTO "GCodePara_0" VALUES (191, 'iCaptureStopSignalCondition_2', '第3组探测/跳转信号比较条件', 0.0, 0, '', '五轴参数', 1);
INSERT INTO "GCodePara_0" VALUES (192, 'iCaptureStopSignalCondition_3', '第4组探测/跳转信号比较条件', 0.0, 0, '', '五轴参数', 1);
INSERT INTO "GCodePara_0" VALUES (193, 'iCaptureStopSignalCondition_4', '第5组探测/跳转信号比较条件', 0.0, 0, '', '五轴参数', 1);
INSERT INTO "GCodePara_0" VALUES (194, 'iCaptureStopSignalCondition_5', '第6组探测/跳转信号比较条件', 0.0, 0, '', '五轴参数', 1);
INSERT INTO "GCodePara_0" VALUES (195, 'iCaptureStopSignalCondition_6', '第7组探测/跳转信号比较条件', 0.0, 0, '', '五轴参数', 1);
INSERT INTO "GCodePara_0" VALUES (196, 'iCaptureStopSignalCondition_7', '第8组探测/跳转信号比较条件', 0.0, 0, '', '五轴参数', 1);
INSERT INTO "GCodePara_0" VALUES (197, 'G31_SignalSel_0', 'G31.0跳转信号组合选择', 0.0, 0, '', '五轴参数', 1);
INSERT INTO "GCodePara_0" VALUES (198, 'G31_SignalSel_1', 'G31.1跳转信号组合选择', 0.0, 0, '', '五轴参数', 1);
INSERT INTO "GCodePara_0" VALUES (199, 'G31_SignalSel_2', 'G31.2跳转信号组合选择', 0.0, 0, '', '五轴参数', 1);
INSERT INTO "GCodePara_0" VALUES (200, 'G31_SignalSel_3', 'G31.3跳转信号组合选择', 0.0, 0, '', '五轴参数', 1);
INSERT INTO "GCodePara_0" VALUES (201, 'G31_SignalSel_4', 'G31.4跳转信号组合选择', 0.0, 0, '', '五轴参数', 1);
INSERT INTO "GCodePara_0" VALUES (202, 'G31_SignalSel_5', 'G31.5跳转信号组合选择', 0.0, 0, '', '五轴参数', 1);
INSERT INTO "GCodePara_0" VALUES (203, 'G31_SignalSel_6', 'G31.6跳转信号组合选择', 0.0, 0, '', '五轴参数', 1);
INSERT INTO "GCodePara_0" VALUES (204, 'G31_SignalSel_7', 'G31.7跳转信号组合选择', 0.0, 0, '', '五轴参数', 1);
INSERT INTO "GCodePara_0" VALUES (205, 'G31_SignalLogic_0', 'G31.0跳转信号组合逻辑', '0（逻辑与）,1（逻辑或）', 0, '', '五轴参数', 1);
INSERT INTO "GCodePara_0" VALUES (206, 'G31_SignalLogic_1', 'G31.1跳转信号组合逻辑', '0（逻辑与）,1（逻辑或）', 0, '', '五轴参数', 1);
INSERT INTO "GCodePara_0" VALUES (207, 'G31_SignalLogic_2', 'G31.2跳转信号组合逻辑', '0（逻辑与）,1（逻辑或）', 0, '', '五轴参数', 1);
INSERT INTO "GCodePara_0" VALUES (208, 'G31_SignalLogic_3', 'G31.3跳转信号组合逻辑', '0（逻辑与）,1（逻辑或）', 0, '', '五轴参数', 1);
INSERT INTO "GCodePara_0" VALUES (209, 'G31_SignalLogic_4', 'G31.4跳转信号组合逻辑', '0（逻辑与）,1（逻辑或）', 0, '', '五轴参数', 1);
INSERT INTO "GCodePara_0" VALUES (210, 'G31_SignalLogic_5', 'G31.5跳转信号组合逻辑', '0（逻辑与）,1（逻辑或）', 0, '', '五轴参数', 1);
INSERT INTO "GCodePara_0" VALUES (211, 'G31_SignalLogic_6', 'G31.6跳转信号组合逻辑', '0（逻辑与）,1（逻辑或）', 0, '', '五轴参数', 1);
INSERT INTO "GCodePara_0" VALUES (212, 'G31_SignalLogic_7', 'G31.7跳转信号组合逻辑', '0（逻辑与）,1（逻辑或）', 0, '', '五轴参数', 1);
INSERT INTO "GCodePara_0" VALUES (213, 'iCaptureStopPosType', '跳转捕获位置类型', '编码器位置,规划位置', 0, '', '铣削参数', 1);
INSERT INTO "GCodePara_0" VALUES (214, 'M19_AutoServoOn', 'M19定位前是否自动上使能', '否,是', 0, '', '铣削参数', 1);
INSERT INTO "GCodePara_0" VALUES (215, 'G0_AxisMotionConstraintMode', 'G00轴速度约束模式', '否,是', 1, '', '铣削参数', 1);
INSERT INTO "GCodePara_0" VALUES (216, 'iTSpindleControlType', '车削主轴控制类型', '0NC,1PLC', 1, '', '铣削参数', 1);
INSERT INTO "GCodePara_0" VALUES (217, 'iG271PathCompType', 'G271/272开粗轮廓补偿类型', '0总体平移,1半径补偿', 0, '', '铣削参数', 1);
INSERT INTO "GCodePara_0" VALUES (218, 'iG53MotionType', 'G53指令运动类型', '', 1, '', '铣削参数', 1);
INSERT INTO "GCodePara_0" VALUES (219, 'TID_DigitsNum', '刀具识别码位数', '', 1, '', '铣削参数', 1);
INSERT INTO "GCodePara_0" VALUES (220, 'TComp_DigitsNum', '刀具补偿号位数', '', 1, '', '铣削参数', 1);
INSERT INTO "GCodePara_0" VALUES (221, 'iTSpindleMotionMode', '车削主轴运控模式', '0CSP周期同步位置模式（默认）,1PV轮廓速度模式', 1, '', '铣削参数', 1);
INSERT INTO "GCodePara_0" VALUES (222, 'iGLoopJBPara', '固定循环程序中J/B自变量选择', '0使用B,1使用J', 1, '', '铣削参数', 1);
INSERT INTO "GCodePara_0" VALUES (223, 'iG75RtnDir', 'G75等镗孔退刀方向', '0 X+,1 X-,2 Y+,3 Y-', 1, '', '铣削参数', 1);
INSERT INTO "GCodePara_0" VALUES (224, 'iG74Mode', 'G74/G84深孔攻丝模式', '0深孔攻丝,1高速深孔攻丝', 1, '', '铣削参数', 1);
INSERT INTO "GCodePara_0" VALUES (225, 'G31_CaptureStopMoveFeed_0', 'G31.0探测/跳转G01运动默认速度', 0.0, 0.000, '', '五轴参数', 1);
INSERT INTO "GCodePara_0" VALUES (226, 'G31_CaptureStopMoveFeed_1', 'G31.1探测/跳转G01运动默认速度', 0.0, 0.000, '', '五轴参数', 1);
INSERT INTO "GCodePara_0" VALUES (227, 'G31_CaptureStopMoveFeed_2', 'G31.2探测/跳转G01运动默认速度', 0.0, 0.000, '', '五轴参数', 1);
INSERT INTO "GCodePara_0" VALUES (228, 'G31_CaptureStopMoveFeed_3', 'G31.3探测/跳转G01运动默认速度', 0.0, 0.000, '', '五轴参数', 1);
INSERT INTO "GCodePara_0" VALUES (229, 'G31_CaptureStopMoveFeed_4', 'G31.4探测/跳转G01运动默认速度', 0.0, 0.000, '', '五轴参数', 1);
INSERT INTO "GCodePara_0" VALUES (230, 'G31_CaptureStopMoveFeed_5', 'G31.5探测/跳转G01运动默认速度', 0.0, 0.000, '', '五轴参数', 1);
INSERT INTO "GCodePara_0" VALUES (231, 'G31_CaptureStopMoveFeed_6', 'G31.6探测/跳转G01运动默认速度', 0.0, 0.000, '', '五轴参数', 1);
INSERT INTO "GCodePara_0" VALUES (232, 'G31_CaptureStopMoveFeed_7', 'G31.7探测/跳转G01运动默认速度', 0.0, 0.000, '', '五轴参数', 1);
INSERT INTO "GCodePara_0" VALUES (233, 'G271_Ud', 'G271/G272切入量', 1, 1.000000, '', '五轴参数', 1);
INSERT INTO "GCodePara_0" VALUES (234, 'G271_Re', 'G271/G272退刀距离', 1, 1.000000, '', '五轴参数', 1);
INSERT INTO "GCodePara_0" VALUES (235, 'G273_Ui', 'X轴向的退刀距离（半径值）', 1, 1.000000, '', '五轴参数', 1);
INSERT INTO "GCodePara_0" VALUES (236, 'G273_Wk', 'Z轴向的退刀距离（半径值）', 1, 1.000000, '', '五轴参数', 1);
INSERT INTO "GCodePara_0" VALUES (237, 'G273_Rd', '分割次数', 1, 1.000000, '', '五轴参数', 1);
INSERT INTO "GCodePara_0" VALUES (238, 'G274_Re', 'G274/G275退刀距离', 1, 0.000000, '', '五轴参数', 1);
INSERT INTO "GCodePara_0" VALUES (239, 'G73_D', 'G73高速深钻孔回程', 0.5, 2.500000, '', '五轴参数', 1);
INSERT INTO "GCodePara_0" VALUES (240, 'G83_D', 'G83/G283/G287深钻孔快速进给停止余量', 0.5, 0.500000, '', '五轴参数', 1);
INSERT INTO "GCodePara_0" VALUES (241, 'G74_D', 'G74高速深孔攻丝循环的啄式加工的回退量', 0.5, 0.500000, '', '五轴参数', 1);
INSERT INTO "GCodePara_0" VALUES (242, 'G84_2RtnRadio', 'G84.2/G84.3同步攻丝回程倍率', 100, 100.000000, '', '五轴参数', 1);

-- ----------------------------
-- Auto increment value for GCodePara_0
-- ----------------------------
UPDATE "sqlite_sequence" SET seq = 242 WHERE name = 'GCodePara_0';

PRAGMA foreign_keys = true;
