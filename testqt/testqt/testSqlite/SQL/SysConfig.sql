/*
 Navicat Premium Data Transfer

 Source Server         : QSQLITE
 Source Server Type    : SQLite
 Source Server Version : 3021000
 Source Schema         : main

 Target Server Type    : SQLite
 Target Server Version : 3021000
 File Encoding         : 65001

 Date: 12/10/2024 14:00:34
*/

PRAGMA foreign_keys = false;

-- ----------------------------
-- Table structure for SysConfig
-- ----------------------------
DROP TABLE IF EXISTS "SysConfig";
CREATE TABLE "SysConfig" (
  "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
  "Para" TEXT,
  "Value" text,
  "Type" TEXT,
  "Name" TEXT,
  "VarPrompt" TEXT,
  "Flag" TEXT,
  "Order" TEXT DEFAULT 1
);

-- ----------------------------
-- Records of SysConfig
-- ----------------------------
INSERT INTO "SysConfig" VALUES (1, 'm_nLangType', 0, '中文,英文', '语言类型', '', '默认参数', 1);
INSERT INTO "SysConfig" VALUES (2, 'm_nLengthUnit', 1, '英制,公制', '长度单位', '', '默认参数', 1);
INSERT INTO "SysConfig" VALUES (3, 'm_nPressureUnit', 0, 'Ton,kN', '压力单位', '', '默认参数', 1);
INSERT INTO "SysConfig" VALUES (4, 'm_nAngleUnit', 0, '', '角度单位', '', '默认参数', 1);
INSERT INTO "SysConfig" VALUES (5, 'm_nDecimalNum', 3, '', '参数输入精度', '', '默认参数', 1);
INSERT INTO "SysConfig" VALUES (6, 'm_nDisDecimalNum', 3, '', '参数显示精度', '', '默认参数', 1);
INSERT INTO "SysConfig" VALUES (7, 'm_nLogSaveDate', 3, '', '', '', '', 1);
INSERT INTO "SysConfig" VALUES (8, 'm_bLogDubug', 1, '否,是', '是否记录调试信息', '', '默认参数', 1);
INSERT INTO "SysConfig" VALUES (9, 'm_bLogTip', 1, '否,是', '是否记录提示信息', '', '默认参数', 1);
INSERT INTO "SysConfig" VALUES (10, 'm_bAutoFileChanged', 0, '', '', '', '', 1);
INSERT INTO "SysConfig" VALUES (11, 'm_bProgrammDebug', 1, '否,是', '是否打开程序调试功能', '', '默认参数', 1);
INSERT INTO "SysConfig" VALUES (12, 'm_bMpgDir', 0, '取反,正常', '手脉方向', '', '系统配置', 1);
INSERT INTO "SysConfig" VALUES (13, 'm_bProbeSns', 1, '上升沿,下降沿', '探针有效电平', '', '系统配置', 1);
INSERT INTO "SysConfig" VALUES (14, 'm_nExtIOType', 0, 'NULL,ExtIO_300,GUS', '扩展IO模块类型', '', '通信IO配置', 1);
INSERT INTO "SysConfig" VALUES (15, 'm_nRobotCommType', 0, '不通讯,本机服务器,本机客户端', '机器人通讯方式', '', '通信IO配置', 1);
INSERT INTO "SysConfig" VALUES (16, 'm_nServerLan', 0, 'LAN1,LAN2', '本地服务器网口选择', '', '通信IO配置', 1);
INSERT INTO "SysConfig" VALUES (17, 'm_bProtectUserMacroInSim', 1, '是,否', '预览模式是否保护用户宏变量不改变', '', '系统配置', 1);
INSERT INTO "SysConfig" VALUES (18, 'm_bEnMultSysPosSync', 0, '关闭,开启', '多机位置同步功能', '', '多机配置', 1);
INSERT INTO "SysConfig" VALUES (19, 'm_nMultSysPosSyncIO', 1, '', '多机位置同步功能控制IO', '', '多机配置', 1);
INSERT INTO "SysConfig" VALUES (20, 'm_nMultSysPosSyncIOlevel', 1, '低电平,高电平', '多机位置同步功能IO触发电平', '', '多机配置', 1);
INSERT INTO "SysConfig" VALUES (21, 'm_nMultSysPosSyncOvertime', 0, '', '多机位置同步功能最大等待时间', '', '多机配置', 1);
INSERT INTO "SysConfig" VALUES (22, 'm_nCloudLoadType', 0, '禁用,手动,自动', '云平台启用方式', '', '云平台', 1);
INSERT INTO "SysConfig" VALUES (23, 'm_nDisAxisPosType', 1, '默认通道,轴配置通道', '轴位置显示通道选择', '', '多机配置', 1);
INSERT INTO "SysConfig" VALUES (24, 'm_bUpdataAbsPosAfterEmg', 0, '否,是', '急停恢复后重新设置绝对编码器零位', '', '默认参数', 1);
INSERT INTO "SysConfig" VALUES (25, 'm_nM98FilePathType', 0, '', '', '', '', 1);
INSERT INTO "SysConfig" VALUES (26, 'm_nCardType', 4, '', '板卡类型', '', '默认参数', 1);
INSERT INTO "SysConfig" VALUES (27, 'm_bContiueStartBufCmd', 1, '否,是', '跑空后再次启动缓冲区运动', '', '默认参数', 1);
INSERT INTO "SysConfig" VALUES (28, 'm_bEnableRemoteComm', 0, '否,是', '开启远程网络功能', '', '通信IO配置', 1);
INSERT INTO "SysConfig" VALUES (29, 'm_bEnableRemoteRead', 0, '否,是', '开启远程数据查询功能', '', '通信IO配置', 1);
INSERT INTO "SysConfig" VALUES (30, 'm_bEnableRemoteWrite', 0, '否,是', '开启远程数据参数设置功能', '', '通信IO配置', 1);
INSERT INTO "SysConfig" VALUES (31, 'm_nDelayMode', 0, '0-G4.1,1-G4', '默认延时模式（粗延时）', '', '通信IO配置', 1);
INSERT INTO "SysConfig" VALUES (32, 'm_bSGUseErrCheck', 0, '否,是', '脉冲模式下是否使用跟随误差超限检测', '', '默认参数', 1);
INSERT INTO "SysConfig" VALUES (33, 'm_bDisableGantrol', 1, '开启龙门功能,关闭龙门功能', '是否关闭龙门功能', '', '系统配置', 1);
INSERT INTO "SysConfig" VALUES (34, 'm_n401Index', 0, '', '401模块序号', '', '默认参数', 1);
INSERT INTO "SysConfig" VALUES (35, 'm_nPressControlType', 0, '', '力控模型', '', '默认参数', 1);
INSERT INTO "SysConfig" VALUES (36, 'm_bDebugWatch', 0, '否,是', '是否启用WATCH功能', '', '默认参数', 1);
INSERT INTO "SysConfig" VALUES (37, 'm_bEnFollow', 0, '关闭,开启', 'Follow使能', '', '★Follow配置★', 1);
INSERT INTO "SysConfig" VALUES (38, 'm_nFollowTableCount', 0, '', 'Follow表格的数量', '', '★Follow配置★', 1);
INSERT INTO "SysConfig" VALUES (39, 'm_nGantryMode', 0, '板卡开环控制,GLINK2驱动器模式,板卡闭环(备用)', '龙门控制模式', '', '系统配置', 1);
INSERT INTO "SysConfig" VALUES (40, 'm_nStartLineMode', 0, '', '跳段启动模式', '', '系统配置', 1);
INSERT INTO "SysConfig" VALUES (41, 'm_bEnHsReadCmd', 0, '', '', '', '', 1);
INSERT INTO "SysConfig" VALUES (42, 'm_sRemoteIP', '', '', 'Remote IP', '', '通信IO配置', 1);
INSERT INTO "SysConfig" VALUES (43, 'm_sIP1', '192.168.0.2', '', 'IP1', '', '通信IO配置', 1);
INSERT INTO "SysConfig" VALUES (44, 'm_sIP2', '0.0.0.0', '', 'IP2', '', '通信IO配置', 1);
INSERT INTO "SysConfig" VALUES (45, 'm_sAutoNcFileName', '', '', '', '', '', 1);
INSERT INTO "SysConfig" VALUES (46, 'm_sEditNcFileName', '', '', '', '', '', 1);
INSERT INTO "SysConfig" VALUES (47, 'm_SysAxisNum', 6, '', '系统轴数', '', '系统配置', 1);
INSERT INTO "SysConfig" VALUES (48, 'm_SysChannelNum', 1, '', '系统通道数', '', '系统配置', 1);
INSERT INTO "SysConfig" VALUES (49, 'm_SysDacNum', 0, '', '模拟量输出端口数', '', '系统配置', 1);
INSERT INTO "SysConfig" VALUES (50, 'm_SysAdcNum', 0, '', '模拟量输入端口数', '', '系统配置', 1);
INSERT INTO "SysConfig" VALUES (51, 'm_SysStartRunTime', 0, '', '', '', '', 1);
INSERT INTO "SysConfig" VALUES (52, 'm_SysTotalRunTime', 0, '', '', '', '', 1);
INSERT INTO "SysConfig" VALUES (53, 'm_ncCodeMaxLine', 5000000, '', 'NC代码允许最大行数', '', '系统配置', 1);
INSERT INTO "SysConfig" VALUES (54, 'm_ncCodeMaxObjNum', 400000, '', '图形显示允许处理的最大指令段数', '', '系统配置', 1);
INSERT INTO "SysConfig" VALUES (55, 'm_SysSpindleNum', 1, '', '系统主轴数', '', '系统配置', 1);
INSERT INTO "SysConfig" VALUES (56, 'm_nCloudDINum', 0, '', 'DI参数传输个数', '', '云平台', 1);
INSERT INTO "SysConfig" VALUES (57, 'm_nCloudDONum', 0, '', 'DO参数传输个数', '', '云平台', 1);
INSERT INTO "SysConfig" VALUES (58, 'm_nClounLongDataNum', 0, '', 'ULONG整数个数', '', '云平台', 1);
INSERT INTO "SysConfig" VALUES (59, 'm_nCloudDoubleDataNum', 0, '', 'DOUBLE型参数传输个数', '', '云平台', 1);
INSERT INTO "SysConfig" VALUES (60, 'm_nServoPort', 50001, '', '本地服务器端口号', '', '通信IO配置', 1);
INSERT INTO "SysConfig" VALUES (61, 'm_nClientPort', 50002, '', '本地客户端端口号', '', '通信IO配置', 1);
INSERT INTO "SysConfig" VALUES (62, 'm_nMpgFilterTime', 10, '', '手脉滤波时间', '', '系统配置', 1);
INSERT INTO "SysConfig" VALUES (63, 'm_nWheelAxis', 1, '', '手轮轴号', '', '系统配置', 1);
INSERT INTO "SysConfig" VALUES (64, 'm_AutoMpgMEven', 1, '', '主动轴齿轮数', '', '系统配置', 1);
INSERT INTO "SysConfig" VALUES (65, 'm_AutoMpgSEven', 40, '', '从动轴齿轮数', '', '系统配置', 1);
INSERT INTO "SysConfig" VALUES (66, 'm_AutoMpgFilterTime', 40, '', '主动轴编码器滤波时间常数', '', '系统配置', 1);
INSERT INTO "SysConfig" VALUES (67, 'm_AutoMpgMode', 2, '', '引导模式', '', '系统配置', 1);
INSERT INTO "SysConfig" VALUES (68, 'm_nUserVarShareMinNo', 500, '', '通道共享最小变量号', '', '★用户宏变量#500~#29999配置★', 1);
INSERT INTO "SysConfig" VALUES (69, 'm_nUserVarShareMaxNo', 999, '', '通道共享最大变量号', '', '★用户宏变量#500~#29999配置★', 1);
INSERT INTO "SysConfig" VALUES (70, 'm_nUserVarReadOnlyMinNo', 1000, '', '仅允许界面修改的最小变量号', '', '★用户宏变量#500~#29999配置★', 1);
INSERT INTO "SysConfig" VALUES (71, 'm_nUserVarReadOnlyMaxNo', 1099, '', '仅允许界面修改的最大变量号', '', '★用户宏变量#500~#29999配置★', 1);
INSERT INTO "SysConfig" VALUES (72, 'm_nUserVarAutoSaveMinNo', 0, '', '修改后自动保存的最小变量号', '', '★用户宏变量#500~#29999配置★', 1);
INSERT INTO "SysConfig" VALUES (73, 'm_nUserVarAutoSaveMaxNo', 0, '', '修改后自动保存的最大变量号', '', '★用户宏变量#500~#29999配置★', 1);
INSERT INTO "SysConfig" VALUES (74, 'm_nUserVarHmiSaveMinNo', 1000, '', '由界面修改保存的最小变量号', '', '★用户宏变量#500~#29999配置★', 1);
INSERT INTO "SysConfig" VALUES (75, 'm_nUserVarHmiSaveMaxNo', 2000, '', '由界面修改保存的最大变量号', '', '★用户宏变量#500~#29999配置★', 1);
INSERT INTO "SysConfig" VALUES (76, 'm_SysID', 0, '', '(远程通讯)系统ID', '', '通信IO配置', 1);
INSERT INTO "SysConfig" VALUES (77, 'm_nFollowTableSize', 0, '', 'Follow的表格大小', '', '★Follow配置★', 1);
INSERT INTO "SysConfig" VALUES (78, 'm_nAxisPosErrSource', 1, '控制器,GSHD驱动器', '轴跟随误差值来源', '', '★Follow配置★', 1);
INSERT INTO "SysConfig" VALUES (79, 'm_bCheckPowerOff', 0, '关闭,GSHD开启', '异常断电检测开关', '', '★Follow配置★', 1);
INSERT INTO "SysConfig" VALUES (80, 'm_bRingletMode', 0, '正常开卡,网络配置文件开卡', '网络开卡模式', '', '★Follow配置★', 1);
INSERT INTO "SysConfig" VALUES (81, 'm_nVelRatioIndexManual', 1, '', '手动/回零速度倍率索引', '', '★Follow配置★', 1);
INSERT INTO "SysConfig" VALUES (82, 'm_nToolRParaMode', 1, '半径模式,直径模式', '刀具半径参数模式', '', '★Follow配置★', 1);

-- ----------------------------
-- Auto increment value for SysConfig
-- ----------------------------
UPDATE "sqlite_sequence" SET seq = 82 WHERE name = 'SysConfig';

PRAGMA foreign_keys = true;
