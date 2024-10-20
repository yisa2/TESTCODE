/*
 Navicat Premium Data Transfer

 Source Server         : QSQLITE
 Source Server Type    : SQLite
 Source Server Version : 3021000
 Source Schema         : main

 Target Server Type    : SQLite
 Target Server Version : 3021000
 File Encoding         : 65001

 Date: 12/10/2024 13:59:54
*/

PRAGMA foreign_keys = false;

-- ----------------------------
-- Table structure for MotionPara_0
-- ----------------------------
DROP TABLE IF EXISTS "MotionPara_0";
CREATE TABLE "MotionPara_0" (
  "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
  "Para" TEXT,
  "Type" TEXT,
  "Name" TEXT,
  "Value" real,
  "VarPrompt" TEXT,
  "Flag" TEXT,
  "Order" TEXT DEFAULT 1
);

-- ----------------------------
-- Records of MotionPara_0
-- ----------------------------
INSERT INTO "MotionPara_0" VALUES (1, 'm_nMachineType', 'CNC,Punch', '机床类型', 0.0, '', '默认参数', 1);
INSERT INTO "MotionPara_0" VALUES (2, 'm_bCNCGlass', '否,是', 'CNC是否玻璃机', 0.0, '', '默认参数', 1);
INSERT INTO "MotionPara_0" VALUES (3, 'm_bUpZAxis', '否,是', '加工前是否提起z轴', 0.0, '', ' ★插补运动参数★', 1);
INSERT INTO "MotionPara_0" VALUES (4, 'm_bExtendSubFile', '否,是', '是否展开子文件', 1.0, '', '默认参数', 1);
INSERT INTO "MotionPara_0" VALUES (5, 'm_bEnSCure', '否,是', '使用S型速度规划', 0.0, '', '★加工运动参数★', 1);
INSERT INTO "MotionPara_0" VALUES (6, 'm_UsePathOpt', '否,是', '开启轨迹优化', 1.0, '', '★轨迹优化设置★', 1);
INSERT INTO "MotionPara_0" VALUES (7, 'm_bDiscreteCircle', '否,是', '是否离散圆弧', 1.0, '', '★轨迹优化设置★', 1);
INSERT INTO "MotionPara_0" VALUES (8, 'm_bUseToolLen', '否,是', '是否使用刀具长度及半径', 1.0, '', '★轨迹优化设置★', 1);
INSERT INTO "MotionPara_0" VALUES (9, 'm_bCrdG00', '插补,点位', 'G00插补运动模式', 0.0, '', '默认参数', 1);
INSERT INTO "MotionPara_0" VALUES (10, 'm_bUseOptToolComp', '否,是', '是否使用优化库里的刀补', 0.0, '', '★轨迹优化设置★', 1);
INSERT INTO "MotionPara_0" VALUES (11, 'm_bDisperseHelix', '否,是', '是否离散螺旋线', 0.0, '', '★轨迹优化设置★', 1);
INSERT INTO "MotionPara_0" VALUES (12, 'm_bNolinearErrorAdjust', '关闭,打开', '五轴非线性误差矫正', 0.0, '', '★五轴运动参数★', 1);
INSERT INTO "MotionPara_0" VALUES (13, 'm_bServoCtlType', 'NC控制,PLC控制', '伺服启停控制方式', 0.0, '', ' ★插补运动参数★', 1);
INSERT INTO "MotionPara_0" VALUES (14, 'm_bEnOutlineComp', '关闭,打开', '轮廓误差补偿', 0.0, '', ' ★插补运动参数★', 1);
INSERT INTO "MotionPara_0" VALUES (15, 'm_bUsePathOptLookAhead', '关闭,打开', '使用优化库预处理', 0.0, '', '★轨迹优化设置★', 1);
INSERT INTO "MotionPara_0" VALUES (16, 'm_bReCalCircle', '关闭,打开', '磨损补偿--圆弧起点时重算圆弧', 0.0, '', '★轨迹优化设置★', 1);
INSERT INTO "MotionPara_0" VALUES (17, 'm_bEnGantryAdjust', '关闭,打开', '龙门回零自动调平使能', 0.0, '', '★加工运动参数★', 1);
INSERT INTO "MotionPara_0" VALUES (18, 'm_bOptVelVerify', '关闭,打开', '速度前瞻修调功能', 0.0, '', '★轨迹优化设置★', 1);
INSERT INTO "MotionPara_0" VALUES (19, 'm_bEnCrdCorrAngle', '否,是', '启用坐标系角度校正功能', 0.0, '', '★★坐标系角度校正功能★★', 1);
INSERT INTO "MotionPara_0" VALUES (20, 'm_nToolLenSel', 'T值对应的刀长,H值对应的刀长', '刀具长度补偿选择', 1.0, '', ' ★插补运动参数★', 1);
INSERT INTO "MotionPara_0" VALUES (21, 'm_nMutiZVelOptiMode', '', '多Z速度优化模式', 0.0, '', ' ★插补运动参数★', 1);
INSERT INTO "MotionPara_0" VALUES (22, 'm_bOptiG53', '否,是', 'G53是否参与优化库运算', 0.0, '', '★轨迹优化设置★', 1);
INSERT INTO "MotionPara_0" VALUES (23, 'm_bOpenMPGGuide', '关闭,开启', '启用自动加工手轮引导前进回退功能', 0.0, '', ' ★插补运动参数★', 1);
INSERT INTO "MotionPara_0" VALUES (24, 'm_bPrintLa', '否,是', '打印前瞻设置信息', 0.0, '', '默认参数', 1);
INSERT INTO "MotionPara_0" VALUES (25, 'm_bHelixNoOverride', '否,是', '螺旋线恒倍率控制', 0.0, '', '★轨迹优化设置★', 1);
INSERT INTO "MotionPara_0" VALUES (26, 'm_b5AxesXDir', '正常,取反', 'X轴方向', 0.0, '', '★五轴运动参数★', 1);
INSERT INTO "MotionPara_0" VALUES (27, 'm_b5AxesYDir', '正常,取反', 'Y轴方向', 0.0, '', '★五轴运动参数★', 1);
INSERT INTO "MotionPara_0" VALUES (28, 'm_b5AxesZDir', '正常,取反', 'Z轴方向', 0.0, '', '★五轴运动参数★', 1);
INSERT INTO "MotionPara_0" VALUES (29, 'm_b5AxesPDir', '正常,取反', 'P轴方向', 0.0, '', '★五轴运动参数★', 1);
INSERT INTO "MotionPara_0" VALUES (30, 'm_b5AxesSDir', '正常,取反', 'S轴方向', 0.0, '', '★五轴运动参数★', 1);
INSERT INTO "MotionPara_0" VALUES (31, 'm_bCmdHomeCapture', '', '', 0.0, '', '', 1);
INSERT INTO "MotionPara_0" VALUES (32, 'm_bCmdIndexCapture', '', '', 0.0, '', '', 1);
INSERT INTO "MotionPara_0" VALUES (33, 'm_bCmdProbeCapture', '', '', 0.0, '', '', 1);
INSERT INTO "MotionPara_0" VALUES (34, 'm_bEnManualFeed', '', '', 0.0, '', '', 1);
INSERT INTO "MotionPara_0" VALUES (35, 'm_bEnManualSpeed', '', '', 0.0, '', '', 1);
INSERT INTO "MotionPara_0" VALUES (36, 'm_bEnDMA', '关闭,开启', '高速DMA功能', 1.0, '', '★R688专用参数★', 1);
INSERT INTO "MotionPara_0" VALUES (37, 'm_n5AxesDirMode', '正反方向描述,向量描述方式', '五轴机台轴线方向描述方式', 0.0, '', '★五轴运动参数★', 1);
INSERT INTO "MotionPara_0" VALUES (38, 'm_bEnCompleteModalCode', '否,是', '开启全程自定义G模态功能', 0.0, '', ' ★插补运动参数★', 1);
INSERT INTO "MotionPara_0" VALUES (39, 'm_nG18ShiftPlane', '否,是', 'G18/19刀补是否切换平面', 1.0, '', '★轨迹优化设置★', 1);
INSERT INTO "MotionPara_0" VALUES (40, 'm_bDisableG49Group', '否,是', '是否屏蔽长度补偿功能', 0.0, '', '★轨迹优化设置★', 1);
INSERT INTO "MotionPara_0" VALUES (41, 'm_b5AxesEnSpaceLinearInter', '屏蔽,使能', '保证空间的直线插补轨迹', 0.0, '', '★五轴运动参数★', 1);
INSERT INTO "MotionPara_0" VALUES (42, 'm_bEnHeightCtrl', '', '', 0.0, '', '', 1);
INSERT INTO "MotionPara_0" VALUES (43, 'm_nToolSkipType', '', '', 0.0, '', '', 1);
INSERT INTO "MotionPara_0" VALUES (44, 'm_bEnPSO', '', '', 0.0, '', '', 1);
INSERT INTO "MotionPara_0" VALUES (45, 'm_bG00_01BufMoveVelUseFCmd', '', '', 0.0, '', '', 1);
INSERT INTO "MotionPara_0" VALUES (46, 'm_nHCompNoTSel', '0:使用标准刀长,1:报警:H补偿时,T模态异常', 'H补偿的刀具长度选择', 0.0, '', ' ★插补运动参数★', 1);
INSERT INTO "MotionPara_0" VALUES (47, 'm_nVelRatioIndexG00', '', '手动进给倍率索引', 2.0, '', ' ★插补运动参数★', 1);
INSERT INTO "MotionPara_0" VALUES (48, 'm_nVelRatioIndexG01', '', '切削进给倍率索引', 1.0, '', ' ★插补运动参数★', 1);
INSERT INTO "MotionPara_0" VALUES (49, 'm_nVelRatioIndexSP', '', '车削主轴倍率索引', 11.0, '', ' ★插补运动参数★', 1);
INSERT INTO "MotionPara_0" VALUES (50, 'm_nG37ProbeIo', '', 'G37检测输入', 0.0, '', ' ★插补运动参数★', 1);
INSERT INTO "MotionPara_0" VALUES (51, 'm_nTCodeType', '0:T备刀号,1:T加工刀号+T备刀号,T加工刀号', 'T代码类型', 0.0, '', ' ★插补运动参数★', 1);
INSERT INTO "MotionPara_0" VALUES (52, 'm_nJumpStartMacroPrgSel', '0:跳段前,T/M 宏不译码，其它宏程序都译码,1:跳段前,T宏和M06宏跳过不译码，其他程序都译码,2:跳段前,G宏程序译码，其它宏程序都跳过不译码,3:跳段前,所有的宏程序都译码,4:跳段前,所有的宏程序都跳过不译码', '自动跳段前宏程序编译选择', 0.0, '', ' ★插补运动参数★', 1);
INSERT INTO "MotionPara_0" VALUES (53, 'm_lookparaSelect', '', '前瞻算法参数选择', 1.0, '', ' ★插补前瞻参数★', 1);
INSERT INTO "MotionPara_0" VALUES (54, 'm_PathOptBlendingMode', '关闭曲线优化,Blending,圆弧拟合,三次样条,B样条', '轨迹优化加工模式', 0.0, '', '★轨迹优化设置★', 1);
INSERT INTO "MotionPara_0" VALUES (55, 'm_OutlineCompNumAddr', '', '轮廓补偿点数的地址', 10002.0, '', ' ★插补运动参数★', 1);
INSERT INTO "MotionPara_0" VALUES (56, 'm_OutlineCompTableAddr', '', '轮廓补偿表格的地址', 10003.0, '', ' ★插补运动参数★', 1);
INSERT INTO "MotionPara_0" VALUES (57, 'm_5AxesMachineType', 'BC双转台,AB双转台,BA双转台,AC双转台,AB双摆头,BA双摆头,CA双摆头,CB双摆头,A摆头B转台,B摆头A转台,A摆头C转台,B摆头C转台,B(45°)C双转台,A(45°)C双转台,B(45°)摆头C转台,A(45°)摆头C转台,BC(45°)双摆头,CB(45°)双摆头,CA(45°)双摆头,C(45°)B双摆头', '五轴机床机械结构模型', 11.0, '', '★五轴运动参数★', 1);
INSERT INTO "MotionPara_0" VALUES (58, 'm_5AxesVelSettingDef', 'NORMAL_DEF_VEL,NUM_DEF_VEL,CUT_DEF_VEL', '五轴速度定义', 0.0, '', '★五轴运动参数★', 1);
INSERT INTO "MotionPara_0" VALUES (59, 'm_VelSmoothModeLa', '', '前瞻速度平滑模式', 2.0, '', ' ★插补前瞻参数★', 1);
INSERT INTO "MotionPara_0" VALUES (60, 'm_AxisGCodeType', '', '5轴机床G代码模型', 1.0, '', '默认参数', 1);
INSERT INTO "MotionPara_0" VALUES (61, 'm_ncCodeType', '通用,每次必须N开头,冲床定制,机器人测试,机器人测试,机器人测试,针刺,弯管,车铣复合,双车主轴', 'NC代码格式', 8.0, '', '默认参数', 1);
INSERT INTO "MotionPara_0" VALUES (62, 'm_ControlAxisNum', '', '系统控制轴数', 6.0, '', '默认参数', 1);
INSERT INTO "MotionPara_0" VALUES (63, 'm_crdDimension', '', '前瞻插补轴数', 5.0, '', '默认参数', 1);
INSERT INTO "MotionPara_0" VALUES (64, 'm_crdAxisNum', '', '插补运动轴数', 5.0, '', '默认参数', 1);
INSERT INTO "MotionPara_0" VALUES (65, 'm_LaCmdVelLmtPara_0', '', '', 0.0, '', '', 1);
INSERT INTO "MotionPara_0" VALUES (66, 'm_LaCmdVelLmtPara_1', '', '', 0.0, '', '', 1);
INSERT INTO "MotionPara_0" VALUES (67, 'm_LaCmdVelLmtPara_2', '', '', 0.0, '', '', 1);
INSERT INTO "MotionPara_0" VALUES (68, 'm_LaCmdVelLmtPara_3', '', '', 0.0, '', '', 1);
INSERT INTO "MotionPara_0" VALUES (69, 'm_synVel', '', '加工速度', 6000.0, '', ' ★插补运动参数★', 1);
INSERT INTO "MotionPara_0" VALUES (70, 'm_g0Vel', '', '快移速度', 12000.0, '', ' ★插补运动参数★', 1);
INSERT INTO "MotionPara_0" VALUES (71, 'm_TMGVel', '', '换刀速度', 2000.0, '', ' ★插补运动参数★', 1);
INSERT INTO "MotionPara_0" VALUES (72, 'm_G0MaxVel', '', '快移最大速度', 30000.0, '', ' ★插补运动参数★', 1);
INSERT INTO "MotionPara_0" VALUES (73, 'm_G0Acc', '', '快移加速度', 15000000.0, '', ' ★插补运动参数★', 1);
INSERT INTO "MotionPara_0" VALUES (74, 'm_synMaxVel', '', '切削最大速度', 10000.0, '', ' ★插补运动参数★', 1);
INSERT INTO "MotionPara_0" VALUES (75, 'm_synAcc', '', '加工加速度', 15000000.0, '', ' ★插补运动参数★', 1);
INSERT INTO "MotionPara_0" VALUES (76, 'm_stpAcc', '', '停止加速度', 12000000.0, '', ' ★插补运动参数★', 1);
INSERT INTO "MotionPara_0" VALUES (77, 'm_EvenTime', '', '最小匀速时间', 50.0, '', ' ★插补运动参数★', 1);
INSERT INTO "MotionPara_0" VALUES (78, 'm_JerkMax', '', '坐标系下最大加加速度', 10000.0, '', '★R688专用参数★', 1);
INSERT INTO "MotionPara_0" VALUES (79, 'm_EStopAcc', '', '急停加速度', 15000000.0, '', ' ★插补运动参数★', 1);
INSERT INTO "MotionPara_0" VALUES (80, 'm_PathTolerance', '', '轨迹优化精度', 0.005, '', '★轨迹优化设置★', 1);
INSERT INTO "MotionPara_0" VALUES (81, 'm_LookaheadRatio', '', '速度前瞻倍率', 1.0, '', ' ★插补前瞻参数★', 1);
INSERT INTO "MotionPara_0" VALUES (82, 'm_blendingMinError', '', 'Blending最小允许误差', 0.005, '', '★轨迹优化设置★', 1);
INSERT INTO "MotionPara_0" VALUES (83, 'm_blendingMaxAngle', '', 'Blending最大角度限制', 150.0, '', '★轨迹优化设置★', 1);
INSERT INTO "MotionPara_0" VALUES (84, 'm_ZUpPos', '', 'Z轴抬起位置', 0.0, '', ' ★插补运动参数★', 1);
INSERT INTO "MotionPara_0" VALUES (85, 'm_5mmArcVel', '', '半径5mm圆弧切削参考速度', 3000.0, '', ' ★插补运动参数★', 1);
INSERT INTO "MotionPara_0" VALUES (86, 'm_arcRMinErr', '', '圆弧起点终点半径最小允差', 0.003, '', '★轨迹优化设置★', 1);
INSERT INTO "MotionPara_0" VALUES (87, 'm_arcRMaxErr', '', '圆弧起点终点半径最大允差', 0.01, '', '★轨迹优化设置★', 1);
INSERT INTO "MotionPara_0" VALUES (88, 'm_MinDccAngle', '', '最小减速到零的角度', 150.0, '', ' ★插补前瞻参数★', 1);
INSERT INTO "MotionPara_0" VALUES (89, 'm_ManualFeed', '', '', 1000.0, '', '', 1);
INSERT INTO "MotionPara_0" VALUES (90, 'm_ManualSpeed', '', '', 3000.0, '', '', 1);
INSERT INTO "MotionPara_0" VALUES (91, 'm_VelVerifyMaxR', '', '最大修调半径', 5.0, '', '★轨迹优化设置★', 1);
INSERT INTO "MotionPara_0" VALUES (92, 'm_VelVerifyMinR', '', '最小修调半径', 1.0, '', '★轨迹优化设置★', 1);
INSERT INTO "MotionPara_0" VALUES (93, 'm_VelVerifyVref', '', '速度前瞻修调参考速度', 1000.0, '', '★轨迹优化设置★', 1);
INSERT INTO "MotionPara_0" VALUES (94, 'm_MaxOverrideLa', '', '前瞻最大倍率值', 1.5, '', ' ★插补前瞻参数★', 1);
INSERT INTO "MotionPara_0" VALUES (95, 'm_crdCorrAngle_0', '', 'X轴与理论轴角度(°)', 0.0, '', '★★坐标系角度校正功能★★', 1);
INSERT INTO "MotionPara_0" VALUES (96, 'm_crdCorrAngle_1', '', 'Y轴与理论轴角度(°)', 0.0, '', '★★坐标系角度校正功能★★', 1);
INSERT INTO "MotionPara_0" VALUES (97, 'm_crdCorrAngle_2', '', 'Z轴与理论轴角度(°)', 0.0, '', '★★坐标系角度校正功能★★', 1);
INSERT INTO "MotionPara_0" VALUES (98, 'm_crdCorrAngle_3', '', 'Z轴在XY平面的投影与理论X轴的夹角(°)', 0.0, '', '★★坐标系角度校正功能★★', 1);
INSERT INTO "MotionPara_0" VALUES (99, 'm_lookparaAcc_0', '', '前瞻加速度', 0.01, '', ' ★插补前瞻参数★', 1);
INSERT INTO "MotionPara_0" VALUES (100, 'm_lookparaAcc_1', '', '前瞻加速度', 0.01, '', ' ★插补前瞻参数★', 1);
INSERT INTO "MotionPara_0" VALUES (101, 'm_lookparaAcc_2', '', '前瞻加速度', 0.01, '', ' ★插补前瞻参数★', 1);
INSERT INTO "MotionPara_0" VALUES (102, 'm_lookparaAcc_3', '', '前瞻加速度', 0.01, '', ' ★插补前瞻参数★', 1);
INSERT INTO "MotionPara_0" VALUES (103, 'm_lookparaAcc_4', '', '前瞻加速度', 0.01, '', ' ★插补前瞻参数★', 1);
INSERT INTO "MotionPara_0" VALUES (104, 'm_lookparaAcc_5', '', '前瞻加速度', 0.01, '', ' ★插补前瞻参数★', 1);
INSERT INTO "MotionPara_0" VALUES (105, 'm_lookparaAcc_6', '', '前瞻加速度', 0.01, '', ' ★插补前瞻参数★', 1);
INSERT INTO "MotionPara_0" VALUES (106, 'm_lookparaAcc_7', '', '前瞻加速度', 0.01, '', ' ★插补前瞻参数★', 1);
INSERT INTO "MotionPara_0" VALUES (107, 'm_lookparaAcc_8', '', '前瞻加速度', 0.01, '', ' ★插补前瞻参数★', 1);
INSERT INTO "MotionPara_0" VALUES (108, 'm_lookparaAcc_9', '', '前瞻加速度', 0.01, '', ' ★插补前瞻参数★', 1);
INSERT INTO "MotionPara_0" VALUES (109, 'm_lookparaAcc_10', '', '前瞻加速度', 0.01, '', ' ★插补前瞻参数★', 1);
INSERT INTO "MotionPara_0" VALUES (110, 'm_lookparaAcc_11', '', '前瞻加速度', 0.01, '', ' ★插补前瞻参数★', 1);
INSERT INTO "MotionPara_0" VALUES (111, 'm_lookparaAcc_12', '', '前瞻加速度', 0.01, '', ' ★插补前瞻参数★', 1);
INSERT INTO "MotionPara_0" VALUES (112, 'm_lookparaAcc_13', '', '前瞻加速度', 0.01, '', ' ★插补前瞻参数★', 1);
INSERT INTO "MotionPara_0" VALUES (113, 'm_lookparaAcc_14', '', '前瞻加速度', 0.01, '', ' ★插补前瞻参数★', 1);
INSERT INTO "MotionPara_0" VALUES (114, 'm_lookparaAcc_15', '', '前瞻加速度', 0.01, '', ' ★插补前瞻参数★', 1);
INSERT INTO "MotionPara_0" VALUES (115, 'm_lookparaAcc_16', '', '前瞻加速度', 0.01, '', ' ★插补前瞻参数★', 1);
INSERT INTO "MotionPara_0" VALUES (116, 'm_lookparaAcc_17', '', '前瞻加速度', 0.01, '', ' ★插补前瞻参数★', 1);
INSERT INTO "MotionPara_0" VALUES (117, 'm_lookparaAcc_18', '', '前瞻加速度', 0.01, '', ' ★插补前瞻参数★', 1);
INSERT INTO "MotionPara_0" VALUES (118, 'm_lookparaAcc_19', '', '前瞻加速度', 0.01, '', ' ★插补前瞻参数★', 1);
INSERT INTO "MotionPara_0" VALUES (119, 'm_lookparaT_0', '', '拐弯时间0', 1.0, '', ' ★插补前瞻参数★', 1);
INSERT INTO "MotionPara_0" VALUES (120, 'm_lookparaT_1', '', '拐弯时间0', 0.1, '', ' ★插补前瞻参数★', 1);
INSERT INTO "MotionPara_0" VALUES (121, 'm_lookparaT_2', '', '拐弯时间0', 0.1, '', ' ★插补前瞻参数★', 1);
INSERT INTO "MotionPara_0" VALUES (122, 'm_lookparaT_3', '', '拐弯时间0', 0.1, '', ' ★插补前瞻参数★', 1);
INSERT INTO "MotionPara_0" VALUES (123, 'm_lookparaT_4', '', '拐弯时间0', 0.1, '', ' ★插补前瞻参数★', 1);
INSERT INTO "MotionPara_0" VALUES (124, 'm_lookparaT_5', '', '拐弯时间0', 0.1, '', ' ★插补前瞻参数★', 1);
INSERT INTO "MotionPara_0" VALUES (125, 'm_lookparaT_6', '', '拐弯时间0', 0.1, '', ' ★插补前瞻参数★', 1);
INSERT INTO "MotionPara_0" VALUES (126, 'm_lookparaT_7', '', '拐弯时间0', 0.1, '', ' ★插补前瞻参数★', 1);
INSERT INTO "MotionPara_0" VALUES (127, 'm_lookparaT_8', '', '拐弯时间0', 0.1, '', ' ★插补前瞻参数★', 1);
INSERT INTO "MotionPara_0" VALUES (128, 'm_lookparaT_9', '', '拐弯时间0', 0.1, '', ' ★插补前瞻参数★', 1);
INSERT INTO "MotionPara_0" VALUES (129, 'm_lookparaT_10', '', '拐弯时间0', 0.1, '', ' ★插补前瞻参数★', 1);
INSERT INTO "MotionPara_0" VALUES (130, 'm_lookparaT_11', '', '拐弯时间0', 0.1, '', ' ★插补前瞻参数★', 1);
INSERT INTO "MotionPara_0" VALUES (131, 'm_lookparaT_12', '', '拐弯时间0', 0.1, '', ' ★插补前瞻参数★', 1);
INSERT INTO "MotionPara_0" VALUES (132, 'm_lookparaT_13', '', '拐弯时间0', 0.1, '', ' ★插补前瞻参数★', 1);
INSERT INTO "MotionPara_0" VALUES (133, 'm_lookparaT_14', '', '拐弯时间0', 0.1, '', ' ★插补前瞻参数★', 1);
INSERT INTO "MotionPara_0" VALUES (134, 'm_lookparaT_15', '', '拐弯时间0', 0.1, '', ' ★插补前瞻参数★', 1);
INSERT INTO "MotionPara_0" VALUES (135, 'm_lookparaT_16', '', '拐弯时间0', 0.1, '', ' ★插补前瞻参数★', 1);
INSERT INTO "MotionPara_0" VALUES (136, 'm_lookparaT_17', '', '拐弯时间0', 0.1, '', ' ★插补前瞻参数★', 1);
INSERT INTO "MotionPara_0" VALUES (137, 'm_lookparaT_18', '', '拐弯时间0', 0.1, '', ' ★插补前瞻参数★', 1);
INSERT INTO "MotionPara_0" VALUES (138, 'm_lookparaT_19', '', '拐弯时间0', 0.1, '', ' ★插补前瞻参数★', 1);
INSERT INTO "MotionPara_0" VALUES (139, 'm_dArcDisptolerance', '', '圆弧离散公差', 0.005, '', '★轨迹优化设置★', 1);
INSERT INTO "MotionPara_0" VALUES (140, 'm_dNolinearError', '', '五轴优化非线性矫正允许误差', 0.1, '', '★五轴运动参数★', 1);
INSERT INTO "MotionPara_0" VALUES (141, 'm_5AxesPrimaryAxisPoint_0', '', '第一旋转轴中心坐标X', 0.0, '', '★五轴运动参数★', 1);
INSERT INTO "MotionPara_0" VALUES (142, 'm_5AxesPrimaryAxisPoint_1', '', '第一旋转轴中心坐标Y', 0.0, '', '★五轴运动参数★', 1);
INSERT INTO "MotionPara_0" VALUES (143, 'm_5AxesPrimaryAxisPoint_2', '', '第一旋转轴中心坐标Z', 0.0, '', '★五轴运动参数★', 1);
INSERT INTO "MotionPara_0" VALUES (144, 'm_5AxesSlaveAxisPoint_0', '', '第二旋转轴中心坐标X', 0.0, '', '★五轴运动参数★', 1);
INSERT INTO "MotionPara_0" VALUES (145, 'm_5AxesSlaveAxisPoint_1', '', '第二旋转轴中心坐标Y', 0.0, '', '★五轴运动参数★', 1);
INSERT INTO "MotionPara_0" VALUES (146, 'm_5AxesSlaveAxisPoint_2', '', '第二旋转轴中心坐标Z', 0.0, '', '★五轴运动参数★', 1);
INSERT INTO "MotionPara_0" VALUES (147, 'm_5AxesToolCoordPoint_0', '', '刀具中心坐标X', 0.0, '', '★五轴运动参数★', 1);
INSERT INTO "MotionPara_0" VALUES (148, 'm_5AxesToolCoordPoint_1', '', '刀具中心坐标Y', 0.0, '', '★五轴运动参数★', 1);
INSERT INTO "MotionPara_0" VALUES (149, 'm_5AxesToolCoordPoint_2', '', '刀具中心坐标Z', 0.0, '', '★五轴运动参数★', 1);
INSERT INTO "MotionPara_0" VALUES (150, 'm_5AxesWorkCoordCenter_0', '', '工什坐标系偏置-X', 0.0, '', '★五轴运动参数★', 1);
INSERT INTO "MotionPara_0" VALUES (151, 'm_5AxesWorkCoordCenter_1', '', '工件坐标系偏置-Y', 0.0, '', '★五轴运动参数★', 1);
INSERT INTO "MotionPara_0" VALUES (152, 'm_5AxesWorkCoordCenter_2', '', '工件坐标系偏置-Z', 0.0, '', '★五轴运动参数★', 1);
INSERT INTO "MotionPara_0" VALUES (153, 'm_GrpPrfMode', '', '坐标系速度规划模式', 41.0, '', '★R688专用参数★', 1);
INSERT INTO "MotionPara_0" VALUES (154, 'm_GrpPrfAccTime', '', '加速度变化时间', 50.0, '', '★R688专用参数★', 1);
INSERT INTO "MotionPara_0" VALUES (155, 'm_GrpPrfK', '', '形态系数', 0.0, '', '★R688专用参数★', 1);
INSERT INTO "MotionPara_0" VALUES (156, 'm_GrpPrfValue', '', '加加速度', 1000.0, '', '★R688专用参数★', 1);
INSERT INTO "MotionPara_0" VALUES (157, 'm_GrpPrfBegPercent', '', '起始加速度百分比', 10.0, '', '★R688专用参数★', 1);
INSERT INTO "MotionPara_0" VALUES (158, 'm_GrpPrfEndPercent', '', '终止加速度百分比', 10.0, '', '★R688专用参数★', 1);
INSERT INTO "MotionPara_0" VALUES (159, 'm_5AxesDirVector_0', '', '', 0.0, '', '', 1);
INSERT INTO "MotionPara_0" VALUES (160, 'm_5AxesDirVector_1', '', '', 0.0, '', '', 1);
INSERT INTO "MotionPara_0" VALUES (161, 'm_5AxesDirVector_2', '', '', 0.0, '', '', 1);
INSERT INTO "MotionPara_0" VALUES (162, 'm_5AxesDirVector_3', '', '', 0.0, '', '', 1);
INSERT INTO "MotionPara_0" VALUES (163, 'm_5AxesDirVector_4', '', '', 0.0, '', '', 1);
INSERT INTO "MotionPara_0" VALUES (164, 'm_5AxesDirVector_5', '', '', 0.0, '', '', 1);
INSERT INTO "MotionPara_0" VALUES (165, 'm_5AxesDirVector_6', '', '', 0.0, '', '', 1);
INSERT INTO "MotionPara_0" VALUES (166, 'm_5AxesDirVector_7', '', '', 0.0, '', '', 1);
INSERT INTO "MotionPara_0" VALUES (167, 'm_5AxesDirVector_8', '', '', 0.0, '', '', 1);
INSERT INTO "MotionPara_0" VALUES (168, 'm_5AxesDirVector_9', '', '', 0.0, '', '', 1);
INSERT INTO "MotionPara_0" VALUES (169, 'm_5AxesDirVector_10', '', '', 0.0, '', '', 1);
INSERT INTO "MotionPara_0" VALUES (170, 'm_5AxesDirVector_11', '', '', 0.0, '', '', 1);
INSERT INTO "MotionPara_0" VALUES (171, 'm_5AxesDirVector_12', '', '', 0.0, '', '', 1);
INSERT INTO "MotionPara_0" VALUES (172, 'm_5AxesDirVector_13', '', '', 0.0, '', '', 1);
INSERT INTO "MotionPara_0" VALUES (173, 'm_5AxesDirVector_14', '', '', 0.0, '', '', 1);
INSERT INTO "MotionPara_0" VALUES (174, 'm_5AxesStandartToolLength', '', '五轴标准刀的长度', 171.478, '', '★五轴运动参数★', 1);
INSERT INTO "MotionPara_0" VALUES (175, 'm_ToolBaseLength', '', '刀具基座长度', 175.3, '', '★五轴运动参数★', 1);
INSERT INTO "MotionPara_0" VALUES (176, 'm_G37BaseValue', '', 'G37 的基准值', 0.0, '', '★五轴运动参数★', 1);
INSERT INTO "MotionPara_0" VALUES (177, 'm_nRotaryAxisG53Mode', '0:最短路径,1:绝对位置', '旋转轴最短路径', 0.0, '', '★五轴运动参数★', 1);
INSERT INTO "MotionPara_0" VALUES (178, 'm_nTmUVW', '0:关闭,1:开启', '车铣复合：是否开启XYZ轴的UVW相对编程', 0.0, '', '★五轴运动参数★', 1);
INSERT INTO "MotionPara_0" VALUES (179, 'm_TmHD2AxisDir', '正向,负向', 'HD2旋转轴方向（正负）', 0.0, '', '★五轴运动参数★', 1);
INSERT INTO "MotionPara_0" VALUES (180, 'm_lookAheadNum', '', '前瞻段数', 300.0, '', '★五轴运动参数★', 1);
INSERT INTO "MotionPara_0" VALUES (181, 'm_startPushBufCmdNum', '', '启动前缓冲区连续压入段数', 30.0, '', '★五轴运动参数★', 1);
INSERT INTO "MotionPara_0" VALUES (182, 'm_runPushBufCmdNum', '', '加工中缓冲区连续压入段数', 60.0, '', '★五轴运动参数★', 1);
INSERT INTO "MotionPara_0" VALUES (183, 'm_nGSCommandMode', '0:规划来自等环网网络,1:规划来自驱动器', '攻丝模式驱动器指令来源', 0.0, '', '★五轴运动参数★', 1);
INSERT INTO "MotionPara_0" VALUES (184, 'm_bServoGSDynamicSetFilter', '0:不设置,1:动态设置', '动态设置驱动器攻丝滤波', 0.0, '', '★五轴运动参数★', 1);
INSERT INTO "MotionPara_0" VALUES (185, 'm_nDvMaxLmtType', '0:老约束模式,1:新约束模式', 'DvMax约束模式', 1.0, '', '★五轴运动参数★', 1);
INSERT INTO "MotionPara_0" VALUES (186, 'm_nDvMaxLmtOption', '0:终点速度约束,1:终点及目标速度约束', 'DvMax约束选择', 1.0, '', '★五轴运动参数★', 1);
INSERT INTO "MotionPara_0" VALUES (187, 'm_nOriMotionMode', '0:线性插补模式,1:大圆插补模式', '姿态插补模式', 0.0, '', '★五轴运动参数★', 1);
INSERT INTO "MotionPara_0" VALUES (188, 'm_TmHD2AxisPoint_0', '', 'HD2旋转轴中心在MCS的坐标X', 0.0, '', '★五轴运动参数★', 1);
INSERT INTO "MotionPara_0" VALUES (189, 'm_TmHD2AxisPoint_1', '', 'HD2旋转轴中心在MCS的坐标Y', 0.0, '', '★五轴运动参数★', 1);
INSERT INTO "MotionPara_0" VALUES (190, 'm_TmHD2AxisPoint_2', '', 'HD2旋转轴中心在MCS的坐标Z', 0.0, '', '★五轴运动参数★', 1);
INSERT INTO "MotionPara_0" VALUES (191, 'm_TmHD2AxisDirVector_0', '', 'HD2旋转轴方向（向量）X', 0.0, '', '★五轴运动参数★', 1);
INSERT INTO "MotionPara_0" VALUES (192, 'm_TmHD2AxisDirVector_1', '', 'HD2旋转轴方向（向量）Y', 0.0, '', '★五轴运动参数★', 1);
INSERT INTO "MotionPara_0" VALUES (193, 'm_TmHD2AxisDirVector_2', '', 'HD2旋转轴方向（向量）Z', 0.0, '', '★五轴运动参数★', 1);
INSERT INTO "MotionPara_0" VALUES (194, 'm_dPowerOffAxisMoveBack', '', '异常断电轴抬升量', 0.0, '', '★五轴运动参数★', 1);
INSERT INTO "MotionPara_0" VALUES (195, 'm_nServoGSSlaveStationID', '', '', 4.0, '', '', 1);
INSERT INTO "MotionPara_0" VALUES (196, 'm_nG0EndVelMode', '0:无效(不减速),1:减速到零,2:指定的终点速度', 'G00终点速度模式', 1.0, '', '★五轴运动参数★', 1);

-- ----------------------------
-- Auto increment value for MotionPara_0
-- ----------------------------
UPDATE "sqlite_sequence" SET seq = 196 WHERE name = 'MotionPara_0';

PRAGMA foreign_keys = true;
