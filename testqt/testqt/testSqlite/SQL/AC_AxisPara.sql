/*
 Navicat Premium Data Transfer

 Source Server         : QSQLITE
 Source Server Type    : SQLite
 Source Server Version : 3021000
 Source Schema         : main

 Target Server Type    : SQLite
 Target Server Version : 3021000
 File Encoding         : 65001

 Date: 12/10/2024 15:12:04
*/

PRAGMA foreign_keys = false;

-- ----------------------------
-- Table structure for AC_AxisPara
-- ----------------------------
DROP TABLE IF EXISTS "AC_AxisPara";
CREATE TABLE "AC_AxisPara" (
  "id" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
  "Para" TEXT,
  "Name" TEXT,
  "Type" TEXT,
  "VarPrompt" TEXT,
  "Flag" TEXT,
  "Order" TEXT DEFAULT 1
);

-- ----------------------------
-- Records of AC_AxisPara
-- ----------------------------
INSERT INTO "AC_AxisPara" VALUES (1, 'm_axisID', '轴ID', 'edit', '说明: 轴ID, 只读, 重启有效从1开始递增的正整数（根据实际的“轴配置”设置）存储当前轴对应控制器上的端口号，从1开始，并且插补轴必须排在前面，辅助轴（如单轴、龙门从轴等）排在后面', '轴参数', 1);
INSERT INTO "AC_AxisPara" VALUES (2, 'm_axisType', '轴类型', '直线轴,旋转轴1,旋转轴2', '说明: 轴类型, 复位生效0:表示直线轴,1:表示旋转轴1(G0最短路径、加工完成位置复位到[0,360)、有行程限制，适用于多圈绝对值编码器),2:表示转轴2(适用于单圈绝对值编码器)', '轴参数', 1);
INSERT INTO "AC_AxisPara" VALUES (3, 'm_nCtrlMode', '控制方式', '脉冲+方向,模拟量,正负脉冲', '说明:控制方式, 重启有效建议默认值：0, 控制器控制轴的方式：0：脉冲（脉冲 + 方向）,1：模拟量，2：正负脉冲范围,0:脉冲 + 方向,1 : 模拟量,2 : 正负脉冲', '轴参数', 1);
INSERT INTO "AC_AxisPara" VALUES (4, 'm_bEnable', '伺服有效', 'btn', '说明: 伺服有效, 重启有效0：表示不启用"--",1：表示启用"◆"', '轴参数', 1);
INSERT INTO "AC_AxisPara" VALUES (5, 'm_bEnAlarm', '伺服报警有效', 'btn', '说明: 伺服报警有效, 复位有效0：表示不启用"--",1：表示启用"◆"', '轴参数', 1);
INSERT INTO "AC_AxisPara" VALUES (6, 'm_bEnLmtPosi', '正硬限位有效', 'btn', '说明: 正硬限位有效, 复位有效0：表示不启用"--",1：表示启用"◆"', '轴参数', 1);
INSERT INTO "AC_AxisPara" VALUES (7, 'm_bEnLmtNega', '负硬限位有效', 'btn', '说明: 负硬限位有效, 复位有效0：表示不启用"--",1：表示启用"◆"', '轴参数', 1);
INSERT INTO "AC_AxisPara" VALUES (8, 'm_bEnLmtSoft', '软限位有效', 'btn', '说明: 软限位有效, 复位有效0：表示不启用"--",1：表示启用"◆"', '轴参数', 1);
INSERT INTO "AC_AxisPara" VALUES (9, 'm_bEnScrewComp', '螺距补偿功能有效', 'btn', '说明: 螺距补偿功能有效，重启有效', '位置补偿', 1);
INSERT INTO "AC_AxisPara" VALUES (10, 'm_bEnBacklash', '反向间隙功能有效', 'edit', '说明: 反向间隙功能有效，重启有效建议默认值：false', '位置补偿', 1);
INSERT INTO "AC_AxisPara" VALUES (11, 'm_bEnBand', '到位识差带检浏', 'btn', '说明: 到位误差带检测,重启有效,建议默认值：false,设置轴到位误差带。规划器静止，规划位置和实际位置的误差小于设定误差带,并且在误差带内保持设定时间后，置起到位标志。配合32位轴参数m_bandTime和64位轴参数m_Band使用', '轴参数', 1);
INSERT INTO "AC_AxisPara" VALUES (12, 'm_bEnInputShaping', '使能震动抑制功能', 'btn', '说明: 使能震动抑制功能，备用参数0：表示不启用"--",1：表示启用"◆"', '其他参数', 1);
INSERT INTO "AC_AxisPara" VALUES (13, 'm_bEnPrfPosFilter', '使能低通滤波功能', 'btn', '说明: 使能低通滤波功能,备用参数0：表示不启用"--",1：表示启用"◆"', '其他参数', 1);
INSERT INTO "AC_AxisPara" VALUES (14, 'm_bEnPrfVelFilter', '使能规划滤波功能', 'btn', '说明: 使能规划滤波功能,备用参数0：表示不启用"--",1：表示启用"◆",备用：m_filterNumExp=0就无效', '其他参数', 1);
INSERT INTO "AC_AxisPara" VALUES (15, 'm_bEnWheelCtrl', '使能手轮控制功能', 'btn', '说明: 使能手轮控制功能,备用参数0：表示不启用"--",1：表示启用"◆",备用：m_filterNumExp=0就无效', '其他参数', 1);
INSERT INTO "AC_AxisPara" VALUES (16, 'm_bLaMaxVelLmt', '最大速度限制有效', 'btn', '说明: 最大速度限制有效,备用建议默认值：false', '轴参数', 1);
INSERT INTO "AC_AxisPara" VALUES (17, 'm_bLaMaxAccLmt', '最大加速度限制有效', 'btn', '说明: 最大加速度限制有效,备用建议默认值：false', '轴参数', 1);
INSERT INTO "AC_AxisPara" VALUES (18, 'm_bLaMaxDVLmt', '最大速度变量限制有效', 'btn', '说明: 最大速度变量限制有效,备用建议默认值：false', '轴参数', 1);
INSERT INTO "AC_AxisPara" VALUES (19, 'm_bPosiLmtSns', '正限位极性', '常闭,常开', '说明: 正限位极性, 复位有效建议默认值：根据开关电气特性选择,触发的有效电平，0：常闭；1：常开范围,0:常闭,1 : 常开', '轴参数', 1);
INSERT INTO "AC_AxisPara" VALUES (20, 'm_bNegaLmtSns', '负限位极性', '常闭,常开', '说明: 负限位极性, 复位有效建议默认值：根据开关电气特性选择,触发的有效电平，0：常闭；1：常开范围,0:常闭,1 : 常开', '轴参数', 1);
INSERT INTO "AC_AxisPara" VALUES (21, 'm_bHomeSns', 'HOME极性', '常闭,常开', '说明: HOME极性, 复位生效建议默认值：根据开关电气特性选择触发的有效电平，0：常闭；1：常开范围,0:常闭,1 : 常开', '回零参数', 1);
INSERT INTO "AC_AxisPara" VALUES (22, 'm_bEncoderSns', '编码器极性', '正常,取反', '说明: 编码器极性,复位有效建议默认值：false，编码器反馈方向，false：正常；true：取反范围,0:正常,1 : 取反', '轴参数', 1);
INSERT INTO "AC_AxisPara" VALUES (23, 'm_nEncoderType', '编码器类型', '绝对式,增量式,脉冲计数器,ECATABS', '说明: 编码器类型,范围:0~3范围,0:绝对式,1:增量式,2:脉冲计数器,3:ECATABS', '编码器参数', 1);
INSERT INTO "AC_AxisPara" VALUES (24, 'm_nAxisPrfIndex', '轴规划输出通道', 'edit', '说明: 轴规划输出通道, 范围:1~20,重启有效默认值为轴号（轴ID）,范围1~20，实际有效的输入值与控制器相关。', '轴参数', 1);
INSERT INTO "AC_AxisPara" VALUES (25, 'm_nAxisEncIndex', '轴编码器反馈通道', 'edit', '说明: 轴编码器反馈通道, 范围:1~20,重启有效默认值为轴号（轴ID）,范围1~20，实际有效的输入值与控制器相关。', '轴参数', 1);
INSERT INTO "AC_AxisPara" VALUES (26, 'm_nAxisStepIndex', '轴规划脉冲输出通道', 'edit', '说明: 轴规划脉冲输出通道, 重启有效取值1 - 20，默认为轴号（轴ID）', '轴参数', 1);
INSERT INTO "AC_AxisPara" VALUES (27, 'm_homeType', '回零方式', 'HOME,HOME+INDEX,INDEX,LIMIT+INDEX,LIMIT,ABS,DI,DI+INDEX,立即回零', '说明: 回零方式,复位有效范围,0:HOME,1 : HOME + INDEX,2 : INDEX,3 : LIMIT + INDEX,4 : LIMIT,5 : ABS,6 : DI,7 : DI + INDEX,8 : 立即回零', '回零参数', 1);
INSERT INTO "AC_AxisPara" VALUES (28, 'm_homeDir', '寻参方向', '正方向,负方向', '说明: 寻参方向,复位生效0：表示负方向,1：表示正方向范围,0:负方向,1 : 正方向', '回零参数', 1);
INSERT INTO "AC_AxisPara" VALUES (29, 'm_homeTrig', 'Home捕获触发沿', '下降沿,上升沿', '说明: Home捕获触发沿,复位有效0：表示下降沿,1：表示上升沿范围,0:下降沿,1 : 上升沿', '回零参数', 1);
INSERT INTO "AC_AxisPara" VALUES (30, 'm_indexTrig', 'Index捕获触发沿', '下降沿,上升沿', '说明: Index捕获触发沿,复位有效建议默认值：1, 0：下降沿；1：上升沿范围,0:下降沿,1 : 上升沿', '回零参数', 1);
INSERT INTO "AC_AxisPara" VALUES (31, 'm_nGPIHomeIndex', '通用I0回零端口号', 'edit', '说明: 通用IO回零端口号,范围:0~15, 重启有效', '回零参数', 1);
INSERT INTO "AC_AxisPara" VALUES (32, 'm_bSynEncoderToPrf', '编码器位罝同步到规划位罝', 'btn', '说明: 编码器位置同步到规划位置，复位有效建议默认值：true,仅供无编码器，或者无法将编码器信号连接到控制器上的情况使用一般情况下，系统从急停恢复时，会将编码器位置同步到规划位置上', '轴参数', 1);
INSERT INTO "AC_AxisPara" VALUES (33, 'm_nAbsEncDataType', '绝对值编码器返回数据类型', '原始脉冲信号,转换后脉冲数', '说明: 绝对值编码器返回数据类型,范围:0~1范围,0:原始脉冲信号,1:转换后脉冲数', '编码器参数', 1);
INSERT INTO "AC_AxisPara" VALUES (34, 'm_nCycleScrewComp', '螺距补偿模式', '单次补偿,循环补偿', '说明: 螺距补偿模式,范围:0~1范围,0:单次补偿,1:循环补偿', '位置补偿', 1);
INSERT INTO "AC_AxisPara" VALUES (35, 'm_nAxisPrfIndexEx', '', '', '', '', 1);
INSERT INTO "AC_AxisPara" VALUES (36, 'm_nPosiLmtType', '正限位类型', '正限位,负限位,驱动报警,Home,GPI', '说明: 正限位类型, 复位有效范围,0:正限位,1 : 负限位,2 : 驱动报警,3 : Home,4 : GPI', '轴参数', 1);
INSERT INTO "AC_AxisPara" VALUES (37, 'm_nNegaLmtType', '负限位类型', '正限位,负限位,驱动报警,Home,GPI', '说明: 负限位类型, 复位有效范围,0:正限位,1 : 负限位,2 : 驱动报警,3 : Home,4 : GPI', '轴参数', 1);
INSERT INTO "AC_AxisPara" VALUES (38, 'm_nPosiLmtIndex', '正限位序号', 'edit', '说明: 正限位序号, 复位有效从0开始,在调用GT指令前 + 1,使用时好理解', '轴参数', 1);
INSERT INTO "AC_AxisPara" VALUES (39, 'm_nNegaLmtIndex', '负限位序号', 'edit', '说明: 负限位序号, 复位有效从0开始,在调用GT指令前 + 1,使用时好理解', '轴参数', 1);
INSERT INTO "AC_AxisPara" VALUES (40, 'm_GSDir', '刚性攻丝方向', '正方向,负方向', '说明: 刚性攻丝方向', '其他参数', 1);
INSERT INTO "AC_AxisPara" VALUES (41, 'm_nCrossCompMode', '交叉补偿启动模式', 'edit', '说明: 交叉补偿启动模式0:关闭,1 : G代码启动,空闲时自动关闭或者G代码关闭,2 : 回零成功后,自动启动,全程不关闭', '其他参数', 1);
INSERT INTO "AC_AxisPara" VALUES (42, 'm_nCrossMasterId', '交叉补偿ID', 'edit', '说明: 交叉补偿ID交叉补偿模式为1时使用', '其他参数', 1);
INSERT INTO "AC_AxisPara" VALUES (43, 'm_iSysIndex', '', '', '', '', 1);
INSERT INTO "AC_AxisPara" VALUES (44, 'm_nWheelAxis', '手轮轴号', 'edit', '说明: 手轮轴号,重启有效当系统参数m_nWheelAxis &lt; = 0时，启用此参数，表示轴跟随的是这个编号的手轮', '其他参数', 1);
INSERT INTO "AC_AxisPara" VALUES (45, 'm_bMpgDir', '手轮方向', 'edit', '说明: 手轮方向,复位有效当系统参数m_nWheelAxis &lt; = 0时，启用此参数', '其他参数', 1);
INSERT INTO "AC_AxisPara" VALUES (46, 'm_n5DimensionAxisID', '五轴坐标系轴序号', 'edit', '说明: 五轴坐标系轴序号从1开始递增的正整数', '五轴参数', 1);
INSERT INTO "AC_AxisPara" VALUES (47, 'm_reverseLimitMode', '运动反向速度约束模式', 'edit', '说明: 运动反向速度约束模式，R688专用参数，运动反向速度约束模式，在前瞻使能时生效0:当轴反向时,终点速度根据dvMax进行约束,1:当轴反向时,终点速度减速到0', '轴参数', 1);
INSERT INTO "AC_AxisPara" VALUES (48, 'm_n2DCompMode', '', '', '', '', 1);
INSERT INTO "AC_AxisPara" VALUES (49, 'm_nAuAbsEncoderIndex', '', '', '', '', 1);
INSERT INTO "AC_AxisPara" VALUES (50, 'm_bEnCompleteSynEncToPrf', '', '', '', '', 1);
INSERT INTO "AC_AxisPara" VALUES (51, 'm_nSpindleType', '主轴类型', '0不能作为主轴,车削主轴,铣削主轴,车铣复用主轴', '说明: 主轴类型, 复位生效0:表示不能作为主轴,1 : 表示车削主轴,2 : 表示铣削主轴,3 : 表示车铣复用主轴范围,0 : 0不能作为主轴,1 : 车削主轴,2 : 铣削主轴,3 : 车铣复用主轴', '其他参数', 1);
INSERT INTO "AC_AxisPara" VALUES (52, 'm_nSpindleCtrlType', '主轴控制类型', 'Com,Ext-Dac,Axis-Dac,Axis-Dac-OnOFF,Glink-Mode5,Glink-Mode3,Glink-Servo', '', '其他参数', 1);
INSERT INTO "AC_AxisPara" VALUES (53, 'm_n5RotateAxisType', '旋转轴类型', '刀具侧旋转轴,工件侧旋转轴', '说明: 旋转轴类型，复位有效0:刀具侧旋转轴,摆头，PCS-G54坐标系偏移无效, 1:工件侧旋转轴,工作台，PCS-G54坐标系偏移有效', '其他参数', 1);
INSERT INTO "AC_AxisPara" VALUES (54, 'm_bCheckGlinkServoSts', 'Glink伺服网络状态检查', '0关闭,1开启', '说明:Glink伺服网络状态检查，复位有效0:关闭，1开启', '其他参数', 1);
INSERT INTO "AC_AxisPara" VALUES (55, 'm_iAxisScaleUpdateMode', '脉冲当量参数生效模式', '0重启生效,1复位生效', '说明:脉冲当量参数生效模式，0重启生效(默认)，1复位生效(需在系统空闲时，先修改内存中的值，再复位，然后才可以运动)', '其他参数', 1);
INSERT INTO "AC_AxisPara" VALUES (56, 'm_bTSpindleDir', '车削主轴旋转方向', '0正常,1取反', '说明:车削主轴旋转方向，复位有效0:正常，1取反', '其他参数', 1);
INSERT INTO "AC_AxisPara" VALUES (57, 'm_homeOrder', '回零顺序', 'edit', '说明: 回零顺序,复位生效', '回零参数', 1);
INSERT INTO "AC_AxisPara" VALUES (58, 'm_wheelDir', '跟随手轮方式', 'edit', '说明: 跟随手轮方式,重启有效,跟随手轮方式(备用)', '其他参数', 1);
INSERT INTO "AC_AxisPara" VALUES (59, 'm_lowpassOrder', '低通滤波器阶数', 'edit', '说明: 低通滤波器阶数,重启有效,低通滤波器阶数(备用)', '其他参数', 1);
INSERT INTO "AC_AxisPara" VALUES (60, 'm_inputShapingCnt', '抑制震动系数', 'edit', '说明: 抑制震动系数,重启有效,抑制震动系数(备用)', '其他参数', 1);
INSERT INTO "AC_AxisPara" VALUES (61, 'm_filterNumExp', '规划速度滤波', 'edit', '说明: 规划速度滤波,范围:0~512,复位有效建议默认值：80, 单位：ms,范围：（0,512）', '位置补偿', 1);
INSERT INTO "AC_AxisPara" VALUES (62, 'm_screwPointNum', '螺距补偿点数', 'edit', '说明: 螺距补偿点数,重启有效', '位置补偿', 1);
INSERT INTO "AC_AxisPara" VALUES (63, 'm_encoderBits', '绝对编码器位数', 'edit', '说明: 绝对编码器位数,范围:0~64,重启有效', '编码器参数', 1);
INSERT INTO "AC_AxisPara" VALUES (64, 'm_cmdDir', '指令方向', '取反,正常', '说明: 指令方向,重启有效0：表示取反,1：表示正常范围,0:取反,1 : 正常', '轴参数', 1);
INSERT INTO "AC_AxisPara" VALUES (65, 'm_BacklashTimes', '反向间隙补偿系数', 'edit', '说明: 反向间隙补偿系数，重启有效建议默认值：1，范围≥1,反向间隙补偿的变化速度，单位：ms', '位置补偿', 1);
INSERT INTO "AC_AxisPara" VALUES (66, 'm_nCompDir', '反向间隙补偿方向', '负方向,正方向', '', '位置补偿', 1);
INSERT INTO "AC_AxisPara" VALUES (67, 'm_nAbsoluteEncDir', '绝对编码器方向', '正方向,负方向', '说明: 绝对编码器方向,范围:0~1范围,0:正方向,1:负方向', '编码器参数', 1);
INSERT INTO "AC_AxisPara" VALUES (68, 'm_maxEncoderPulses', '', '', '', '', 1);
INSERT INTO "AC_AxisPara" VALUES (69, 'm_minEncoderPulses', '', '', '', '', 1);
INSERT INTO "AC_AxisPara" VALUES (70, 'm_prfAlpha', '规划当量变换系数Alpha', 'edit', '说明: 规划当量变换系数Alpha,范围:1~32767,重启有效范围：[1, 32767],默认1', '其他参数', 1);
INSERT INTO "AC_AxisPara" VALUES (71, 'm_prfBeta', '规划当量变换系数Beta', 'edit', '说明: 规划当量变换系数Beta,范围:1~32767,重启有效范围：[1, 32767],默认1', '其他参数', 1);
INSERT INTO "AC_AxisPara" VALUES (72, 'm_encAlpha', '编码器当量变换系数Alpha', 'edit', '说明: 编码器当量变换系数Alpha,范围:1~32767,重启有效范围：[1, 32767],默认1', '其他参数', 1);
INSERT INTO "AC_AxisPara" VALUES (73, 'm_encBeta', '编码器当量变换系数Beta', 'edit', '说明: 编码器当量变换系数Beta,范围:1~32767,重启有效范围：[1, 32767],默认1', '其他参数', 1);
INSERT INTO "AC_AxisPara" VALUES (74, 'm_MotorBrand', '品牌', 'edit', '说明: 品牌,0=测试,1=安川,2=汇川,3=台达A2,4=合川,5=埃斯顿,6=富士康,7=赛孚德17,8=固高gthd,9=赛孚德23, 10=台达A3,11=松下A6,12=三菱,13=西门子,14=glink2,15=entercat,重启有效', '编码器参数', 1);
INSERT INTO "AC_AxisPara" VALUES (75, 'm_port', '串口号', 'edit', '说明: 串口号,范围:0~19,重启有效', '编码器参数', 1);
INSERT INTO "AC_AxisPara" VALUES (76, 'm_baud', '波特率', 'edit', '说明: 波特率，重启有效', '编码器参数', 1);
INSERT INTO "AC_AxisPara" VALUES (77, 'm_dataBit', '数据位', 'edit', '说明: 数据位,范围:1~10,重启有效', '编码器参数', 1);
INSERT INTO "AC_AxisPara" VALUES (78, 'm_parity', '奇偶校验', 'edit', '说明: 奇偶校验,重启有效', '编码器参数', 1);
INSERT INTO "AC_AxisPara" VALUES (79, 'm_stopbit', '停止位', 'edit', '说明: 停止位,范围:0~2,重启有效', '编码器参数', 1);
INSERT INTO "AC_AxisPara" VALUES (80, 'm_AbsoluteEncID', '链路ID', 'edit', '说明: 链路ID,范围:0~32,重启有效对应驱动器的伺服轴地址', '编码器参数', 1);
INSERT INTO "AC_AxisPara" VALUES (81, 'm_PrfVelSmoothType', '高速高精等级', 'edit', '说明: 高速高精等级,范围:-1~4,复位生效&lt; -1表示关闭此滤波功能，并且需要重启生效；正常值0~4', '其他参数', 1);
INSERT INTO "AC_AxisPara" VALUES (82, 'm_PrfVelSmoothK', '高速高精参数', 'edit', '说明: 高速高精参数,范围:0~128,复位生效', '其他参数', 1);
INSERT INTO "AC_AxisPara" VALUES (83, 'm_bandTime', '误差带保特时间 (250us)', 'edit', '说明: 误差带保持时间(250us),范围1~512,单位: 250us, 重启有效设置轴到位误差带。规划器静止，规划位置和实际位置的误差小于设定误差带，并且在误差带内保持设定时间后置起到位标志。配合8位轴参数m_bEnBand和64位轴参数m_Band使用', '轴参数', 1);
INSERT INTO "AC_AxisPara" VALUES (84, 'm_homeLastWaitTime', '回零到位延时', 'edit', '说明: 回零到位延时, 复位生效建议默认值：1000,单位：ms,范围：[0,∞）设置回零动作最终移动到INDEX捕获位置后，系统等待一定的时间后，再进行位置同步、位置设定、补偿开启等功能', '回零参数', 1);
INSERT INTO "AC_AxisPara" VALUES (85, 'm_MaxOutput', '主轴最高转速', 'edit', '说明: 主轴最高转速,复位有效', '其他参数', 1);
INSERT INTO "AC_AxisPara" VALUES (86, 'm_MinOutput', '主轴最低转速', 'edit', '说明: 主轴最低转速,复位有效', '其他参数', 1);
INSERT INTO "AC_AxisPara" VALUES (87, 'm_ulCrossPointNum', '交叉补偿点数', 'edit', '说明: 交叉补偿点数,最大100个,重启有效', '其他参数', 1);
INSERT INTO "AC_AxisPara" VALUES (88, 'm_TorqueLatchType', '', '', '', '', 1);
INSERT INTO "AC_AxisPara" VALUES (89, 'm_TorqueProbeType', '', '', '', '', 1);
INSERT INTO "AC_AxisPara" VALUES (90, 'm_TorqueCurrentValue', '', '', '', '', 1);
INSERT INTO "AC_AxisPara" VALUES (91, 'm_TorqueContinueTime', '', '', '', '', 1);
INSERT INTO "AC_AxisPara" VALUES (92, 'm_TorqueWindowOnly', '', '', '', '', 1);
INSERT INTO "AC_AxisPara" VALUES (93, 'm_TorqueFirstPosition', '', '', '', '', 1);
INSERT INTO "AC_AxisPara" VALUES (94, 'm_TorqueLastPosition', '', '', '', '', 1);
INSERT INTO "AC_AxisPara" VALUES (95, 'm_2DCompTableIndex', '', '', '', '', 1);
INSERT INTO "AC_AxisPara" VALUES (96, 'm_2DCompAxisType_0', '', '', '', '', 1);
INSERT INTO "AC_AxisPara" VALUES (97, 'm_2DCompAxisType_1', '', '', '', '', 1);
INSERT INTO "AC_AxisPara" VALUES (98, 'm_2DCompAxisIndex_0', '', '', '', '', 1);
INSERT INTO "AC_AxisPara" VALUES (99, 'm_2DCompAxisIndex_1', '', '', '', '', 1);
INSERT INTO "AC_AxisPara" VALUES (100, 'm_2DCompCount_0', '', '', '', '', 1);
INSERT INTO "AC_AxisPara" VALUES (101, 'm_2DCompCount_1', '', '', '', '', 1);
INSERT INTO "AC_AxisPara" VALUES (102, 'm_kp', '比例增益kp', 'edit', '说明: 比例增益kp,复位生效默认值:2, 位置环比例增益,轴控方式为模拟量时生效', '模拟量控制', 1);
INSERT INTO "AC_AxisPara" VALUES (103, 'm_ki', '积分增益ki', 'edit', '说明: 积分增益ki,模拟量下复位生效积分作用可以消除余差，值越大，积分作用越强，但过大会引起振荡。', '模拟量控制', 1);
INSERT INTO "AC_AxisPara" VALUES (104, 'm_kd', '微分增益kd', 'edit', '说明: 微分增益kd,模拟量下复位生效默认值：0，微分增益可以减小超调，提高响应速度，改善动态性能。', '模拟量控制', 1);
INSERT INTO "AC_AxisPara" VALUES (105, 'm_kvff', '速度前馈', 'edit', '说明: 速度前馈,模拟量下复位生效默认值：0，速度前馈增益可以提高响应速度，减小动态跟随误差。', '模拟量控制', 1);
INSERT INTO "AC_AxisPara" VALUES (106, 'm_kaff', '加速度前馈', 'edit', '说明: 加速度前馈,模拟量下复位生效', '模拟量控制', 1);
INSERT INTO "AC_AxisPara" VALUES (107, 'm_gantryKp', '龙门同步比例增益kp', 'edit', '说明: 龙门同步比例增益kp,范围:-10~10,复位有效建议默认值：主轴 - 0.5，从轴0.5,当前轴为模拟量模式,并且为龙门轴时生效', '模拟量控制', 1);
INSERT INTO "AC_AxisPara" VALUES (108, 'm_mtrBias', '电机静差', 'edit', '说明: 电机静差,范围:-32767~32767,复位生效建议默认值:0,设置模拟量输出通道的零漂电压补偿值,轴控方式为模拟量时生效', '模拟量控制', 1);
INSERT INTO "AC_AxisPara" VALUES (109, 'm_iLimt', '积分饱和限', 'edit', '说明: 积分饱和限,备用参数', '模拟量控制', 1);
INSERT INTO "AC_AxisPara" VALUES (110, 'm_outCmdLmt', '输出指令限制 (1~10v)', 'edit', '说明: 输出指令限制(1~10v),范围:0~10, 复位生效轴通道模拟量输出最大值，用于模拟量控制方式下的轴通道最大输出电压', '模拟量控制', 1);
INSERT INTO "AC_AxisPara" VALUES (111, 'm_nPulse', '电机每转脉冲数', 'edit', '说明: 电机每转脉冲数, 重启有效建议默认值：无, 单位：pulse, 范围：(1, int_max), 正整数，和驱动器配合设置，通常为驱动器反馈脉冲数的4倍频', '轴参数', 1);
INSERT INTO "AC_AxisPara" VALUES (112, 'm_nPitch', '电机每转位移量', 'edit', '建议默认值：无, 单位：mm, 范围：(0, double_max), 根据实际机床参数设置', '轴参数', 1);
INSERT INTO "AC_AxisPara" VALUES (113, 'm_backlash', '反向间隙量 (mm)', 'edit', '说明: 反向间隙量(mm),复位有效', '位置补偿', 1);
INSERT INTO "AC_AxisPara" VALUES (114, 'm_mapCount', '轴位罝偏移', 'edit', '说明: 轴位置偏移,备用参数', '模拟量控制', 1);
INSERT INTO "AC_AxisPara" VALUES (115, 'm_minPos', '最小行程', 'edit', '说明: 最小行程，复位生效建议默认值：无,单位：mm,范围：（m_minPos， double_max),轴负软限位，即当前轴的负向最大行程，根据实际机床参数设置', '轴参数', 1);
INSERT INTO "AC_AxisPara" VALUES (116, 'm_maxPos', '最大行程', 'edit', '说明: 最大行程,复位生效建议默认值：无,单位：mm,范围：（m_minPos， double_max),轴正软限位，即当前轴的正向最大行程,根据实际机床参数设置', '轴参数', 1);
INSERT INTO "AC_AxisPara" VALUES (117, 'm_lScrewReverseVel', '螺距补偿切换补偿表的速度', 'edit', '说明: 螺距补偿切换补偿表的速度，复位有效建议默认值：20,单位：pulse / 每控制周期,范围：[1，10000],用于控制器进行螺距误差补偿算法计算的系数，启用螺距误差补偿功能后生效', '位置补偿', 1);
INSERT INTO "AC_AxisPara" VALUES (118, 'm_FlowerrMax', '跟随误差极限', 'edit', '说明: 跟随误差极限,复位生效建议默认值：1, 单位：mm, 范围：[0，m_FlowerrMax * m_scale &lt; 32767), 轴运动时，系统允许轴的实际位置与规划位置的差值; ', '轴参数', 1);
INSERT INTO "AC_AxisPara" VALUES (119, 'm_maxAcc', '最大加速度', 'edit', '说明: 最大加速度, 复位生效单位：mm / min ^ 2,范围：(0, double_max) 当为插补轴时，插补坐标系的最大加速度将设为所有插补轴里最大的那个值', '运动参数', 1);
INSERT INTO "AC_AxisPara" VALUES (120, 'm_maxVel', '最大速度', 'edit', '说明: 最大速度, 复位生效建议默认值：10000,单位:mm / min,范围：(0,double_max)当为插补轴时，插补坐标系的最大速度将设为所有插补轴里最大的那个值', '运动参数', 1);
INSERT INTO "AC_AxisPara" VALUES (121, 'm_maxDVel', '最大速度变化量', 'edit', '说明: 最大速度变化量,备用', '运动参数', 1);
INSERT INTO "AC_AxisPara" VALUES (122, 'm_StopDec', '平滑停止减速度', 'edit', '说明: 平滑停止减速度,复位生效单位：mm / min ^ 2,范围：(0, double_max),点位、JOG使用', '运动参数', 1);
INSERT INTO "AC_AxisPara" VALUES (123, 'm_EStopDec', '急停减速度', 'edit', '说明: 急停减速度,复位生效单位：mm / min ^ 2,范围：(0, double_max),点位、JOG使用，建议为轴参数中加速度类参数的最大值', '运动参数', 1);
INSERT INTO "AC_AxisPara" VALUES (124, 'm_jogfeed', '手动速度', 'edit', '说明: 手动速度,复位生效建议默认值：5000,单位：mm / min,范围(0, double_max),点位、JOG使用', '运动参数', 1);
INSERT INTO "AC_AxisPara" VALUES (125, 'm_jogacc', '手动加速度', 'edit', '说明: 手动加速度,复位生效单位：mm / min ^ 2,范围：(0, double_max),点位、JOG使用', '运动参数', 1);
INSERT INTO "AC_AxisPara" VALUES (126, 'm_jogdec', '手动减速度', 'edit', '说明: 手动减速度,复位生效单位：mm / min ^ 2,范围：(0, double_max),点位、JOG使用', '运动参数', 1);
INSERT INTO "AC_AxisPara" VALUES (127, 'm_jogsmooth', '手动平滑时间', 'edit', '说明: 手动平滑时间,范围:0~50,复位生效默认值: 5, 单位 : ms，正整数，数值越大，加减速过程越平稳，复位生效', '运动参数', 1);
INSERT INTO "AC_AxisPara" VALUES (128, 'm_bufMovefeed', '加工速度', 'edit', '说明: 加工速度,复位生效默认值: 5000, 单位 : mm / min，当前轴为点位运动时使用，复位生效', '运动参数', 1);
INSERT INTO "AC_AxisPara" VALUES (129, 'm_bufMoveacc', '加工加速度', 'edit', '说明: 加工加速度,复位生效单位: mm / min ^ 2，当前轴为点位运动时使用', '运动参数', 1);
INSERT INTO "AC_AxisPara" VALUES (130, 'm_bufMovedec', '加工减速度', 'edit', '说明: 加工减速度,范围:0~50,复位生效单位：mm / min ^ 2,范围：(0, double_max),GT_BufMove使用，即当前轴为点位轴时，执行加工G指令时使用', '运动参数', 1);
INSERT INTO "AC_AxisPara" VALUES (131, 'm_bufMovesmooth', '加工平滑时间', 'edit', '说明: 加工平滑时间,范围:0~50,复位生效建议默认值：5,单位：ms,范围：[0, 50],正整数,GT_BufMove使用,即当前轴为点位轴时，执行加工G指令时使用，数值越大，加减速过程越平稳', '运动参数', 1);
INSERT INTO "AC_AxisPara" VALUES (132, 'm_HomeVel', 'Home速度', 'edit', '说明: Home速度,复位生效建议默认值：2000,单位：mm / min,范围：(0, double_max),轴回零的快移速度轴以m_HomeVel快速往回零方向移动，直到碰到传感器为止,EtherCAT版本：搜索开关速度，对应6099H - 1，具体单位由驱动器决定', '回零参数', 1);
INSERT INTO "AC_AxisPara" VALUES (133, 'm_HomeLowVel', 'Home低速度', 'edit', '说明: Home低速度,复位生效建议默认值：100,单位：mm / min,范围：(0, double_max)轴回零慢速搜索速度，轴先以m_HomeVel快速往回零方向移动，直到碰到传感器后，将切换为m_HomeLowVel继续完成剩余步骤。EtherCAT版本:搜索index标识速度,对应6099H - 2,具体单位由驱动器决定', '回零参数', 1);
INSERT INTO "AC_AxisPara" VALUES (134, 'm_NegOffset', '初始反向运动距离', 'edit', '说明: 初始反向运动距离,复位生效建议默认值：5,单位：mm,范围：(0, double_max)轴以m_HomeVel快速往回零方向移动，直到碰到传感器后，将反向移动m_NegOffset距离', '回零参数', 1);
INSERT INTO "AC_AxisPara" VALUES (135, 'm_SchIndexOffSet', '搜索Index信号的距离', 'edit', '说明: 搜索Index信号的距离,复位生效建议默认值:20,单位 : mm, 轴以回零慢速，从上一步Home捕获位置（仅Index回零时以当前位置）开始，反向搜索Index信号时移动最大距离', '回零参数', 1);
INSERT INTO "AC_AxisPara" VALUES (136, 'm_HomeOffset', '', '', '', '', 1);
INSERT INTO "AC_AxisPara" VALUES (137, 'm_IndexOffset', '参考点距插获点的偏移距离', 'edit', '说明: 参考点距捕获点的偏移距离,复位生效建议默认值：0，单位：mm, Index捕获值叠加这个值作为回零最终停止的位置,建议默认值为0,EtherCAT版本:原点偏移,对应607CH - 0，具体单位由驱动器决定', '回零参数', 1);
INSERT INTO "AC_AxisPara" VALUES (138, 'm_refPos', '参考点值', 'edit', '说明: 参考点值,复位生效建议默认值：0,单位：mm,范围：(double_min, double_max),当前轴回零成后，将零点编码器位置和规划位置均设为此值', '回零参数', 1);
INSERT INTO "AC_AxisPara" VALUES (139, 'm_Band', '到位误差节', 'edit', '说明: 到位误差带,复位生效建议默认值：0.05,单位：mm,范围：(double_min, double_max),设置轴到位误差带,规划器静止规划位置和实际位置的误差小于设定误差带，并且在误差带内保持设定时间后，置起到位标志。配合8位轴参数m_bEnBand和32位轴参数', '轴参数', 1);
INSERT INTO "AC_AxisPara" VALUES (140, 'm_accurateBand', '', '', '', '', 1);
INSERT INTO "AC_AxisPara" VALUES (141, 'm_roughStopBand', '', '', '', '', 1);
INSERT INTO "AC_AxisPara" VALUES (142, 'm_wheelScale', '手轮传动比', 'edit', '说明: 手轮传动比,手轮传动比(备用),复位有效', '其他参数', 1);
INSERT INTO "AC_AxisPara" VALUES (143, 'm_WheelSlope', '手轮高合区位移', 'edit', '说明: 手轮离合区位移,手轮离合区位移(备用),复位有效', '其他参数', 1);
INSERT INTO "AC_AxisPara" VALUES (144, 'm_rPreV', '每伏对应的电机转数', 'edit', '说明: 每伏对应的电机转数,备用参数', '模拟量控制', 1);
INSERT INTO "AC_AxisPara" VALUES (145, 'm_BackCompValue', '摩擦力DAC补偿值', 'edit', '说明: 摩擦力DAC补偿值,范围:-32767~32767,复位生效整数，模拟量控制方式生效，非0时启用， - 32768对应 - 10V， 32767对应 + 10V', '模拟量控制', 1);
INSERT INTO "AC_AxisPara" VALUES (146, 'm_BackCompLowPassTimeK', '摩擦力DAC补偿时间(ms)', 'edit', '建议默认值:10,复位生效取值为0.25ms整数倍,模拟量控制方式生效，设置摩檫力补偿的补偿时间', '模拟量控制', 1);
INSERT INTO "AC_AxisPara" VALUES (147, 'm_BackCompDecTime', 'DAC补偿减速时间', 'edit', '说明: DAC补偿减速时间,复位有效', '模拟量控制', 1);
INSERT INTO "AC_AxisPara" VALUES (148, 'm_SmoothTime', '轴平滑时间', 'edit', '说明: 轴平滑时间,单位：ms，取值范围[0,60]', '其他参数', 1);
INSERT INTO "AC_AxisPara" VALUES (149, 'm_SmoothK', '平滑系数', 'edit', '说明: 平滑系数,取值范围[0, 1000]', '其他参数', 1);
INSERT INTO "AC_AxisPara" VALUES (150, 'm_MaxJerk', '轴最大加加速度', 'edit', '说明: 轴最大加加速度,单位：mm/s^3', '其他参数', 1);
INSERT INTO "AC_AxisPara" VALUES (151, 'm_SpindleDelay', '主轴启动延时', 'edit', '说明: 主轴启动延时,复位有效', '其他参数', 1);
INSERT INTO "AC_AxisPara" VALUES (152, 'm_AbsoluteEncZero', '绝对编码器零位', 'edit', '说明: 绝对编码器零位,重启有效', '编码器参数', 1);
INSERT INTO "AC_AxisPara" VALUES (153, 'm_scale', '', '', '', '', 1);
INSERT INTO "AC_AxisPara" VALUES (154, 'm_velScale', '', '', '', '', 1);
INSERT INTO "AC_AxisPara" VALUES (155, 'm_accScale', '', '', '', '', 1);
INSERT INTO "AC_AxisPara" VALUES (156, 'm_shortVel', '短距离速度', 'edit', '说明: 短距离速度,复位生效适用于短距离点位运动（绝对运动、相对运动、bufMove）', '运动参数', 1);
INSERT INTO "AC_AxisPara" VALUES (157, 'm_shortAcc', '短距离加速度', 'edit', '说明: 短距离加速度,单位:mm/min^2,复位生效适用于短距离点位运动（绝对运动、相对运动、bufMove）', '运动参数', 1);
INSERT INTO "AC_AxisPara" VALUES (158, 'm_shortDec', '短距离减速度', 'edit', '说明: 短距离减速度,单位:mm/min^2,复位生效适用于短距离点位运动（绝对运动、相对运动、bufMove）', '运动参数', 1);
INSERT INTO "AC_AxisPara" VALUES (159, 'm_shortSmoothtime', '短距平滑时间', 'edit', '说明: 短距离平滑时间,复位生效', '运动参数', 1);
INSERT INTO "AC_AxisPara" VALUES (160, 'm_shortDistance', '短距离限制值', 'edit', '说明: 短距离限制值,复位有效', '运动参数', 1);
INSERT INTO "AC_AxisPara" VALUES (161, 'm_GantryErrLmt', '龙门平行度允差(m)', 'edit', '说明: 龙门平行度允差(mm),复位生效', '模拟量控制', 1);
INSERT INTO "AC_AxisPara" VALUES (162, 'm_HomeIndexMinErr', 'HomeIndex捕获最小允差', 'edit', '说明: HomeIndex捕获最小允差, 复位生效建议默认值：0.25螺距,当Home捕获值与Index捕获值的差值小于m_HomeIndexMinErr时放弃该次Index捕获，启动下一个Index捕获的值作为参考。', '回零参数', 1);
INSERT INTO "AC_AxisPara" VALUES (163, 'm_dAdjustmentAccuracy', '整定精度', 'edit', '说明: 整定精度, 复位生效用于回零完成后，最终坐标整定，建议默认0.001um', '回零参数', 1);
INSERT INTO "AC_AxisPara" VALUES (164, 'm_GantryAdjVel', '龙门调偏速度', 'edit', '说明: 龙门调偏速度,龙门从轴进行位置偏差调整时使用，龙门主轴一般不使用该变量,复位生效', '模拟量控制', 1);
INSERT INTO "AC_AxisPara" VALUES (165, 'm_HomeLmtLeaveDis', 'Home回零触发硬限反向距离', 'edit', '说明: Home回零触发硬限反向距离, 复位生效建议默认:20,单位：mm,范围：[0,∞）Home或Home + Index回零时，初始位置在Home与回零方向的硬限位之间，第一次Home捕获会失败，如果触发硬限位，会反向运动此距离回到Home之前重新开始回零', '回零参数', 1);
INSERT INTO "AC_AxisPara" VALUES (166, 'm_EcatHomeAcc', 'EtherCAr回零加速度', 'edit', '说明: EtherCAT回零加速度,（对应609AH-0，具体单位由驱动器决定）,重启有效', '回零参数', 1);
INSERT INTO "AC_AxisPara" VALUES (167, 'm_AbsEncoderPulse', '绝对编码器单圈脉冲数', 'edit', '说明: 绝对编码器单圈脉冲数,重启有效', '编码器参数', 1);
INSERT INTO "AC_AxisPara" VALUES (168, 'm_2DCompPosBegin_0', '', '', '', '', 1);
INSERT INTO "AC_AxisPara" VALUES (169, 'm_2DCompPosBegin_1', '', '', '', '', 1);
INSERT INTO "AC_AxisPara" VALUES (170, 'm_2DCompStep_0', '', '', '', '', 1);
INSERT INTO "AC_AxisPara" VALUES (171, 'm_2DCompStep_1', '', '', '', '', 1);
INSERT INTO "AC_AxisPara" VALUES (172, 'm_2DCompAngle', '', '', '', '', 1);
INSERT INTO "AC_AxisPara" VALUES (173, 'm_EnCompleteVelBand', '', '', '', '', 1);
INSERT INTO "AC_AxisPara" VALUES (174, 'm_minPos2', '第2软限位最小位置值', 'edit', '说明: 第2软限位最小位置值,重启有效', '其他参数', 1);
INSERT INTO "AC_AxisPara" VALUES (175, 'm_maxPos2', '第2软限位最大位置值', 'edit', '说明: 第2软限位最大位置值,重启有效', '其他参数', 1);
INSERT INTO "AC_AxisPara" VALUES (176, 'm_bSpPosErrCheck', '是否检查跟随误位置差', '0关闭,1开启', '说明:作为主轴是否检查跟随误位置差：0关闭  1开启，复位有效', '其他参数', 1);
INSERT INTO "AC_AxisPara" VALUES (177, 'm_EncDataScale', '电机编码器原始分辨率', 'edit', '说明: 用于计算电机实际跟随误差等,重启有效', '其他参数', 1);

-- ----------------------------
-- Auto increment value for AC_AxisPara
-- ----------------------------
UPDATE "sqlite_sequence" SET seq = 177 WHERE name = 'AC_AxisPara';

PRAGMA foreign_keys = true;
