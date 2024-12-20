/*
 Navicat Premium Data Transfer

 Source Server         : QSQLITE
 Source Server Type    : SQLite
 Source Server Version : 3021000
 Source Schema         : main

 Target Server Type    : SQLite
 Target Server Version : 3021000
 File Encoding         : 65001

 Date: 12/10/2024 13:58:37
*/

PRAGMA foreign_keys = false;

-- ----------------------------
-- Table structure for AxisPara
-- ----------------------------
DROP TABLE IF EXISTS "AxisPara";
CREATE TABLE "AxisPara" (
  "m_axisID",
  "m_axisType",
  "m_nCtrlMode",
  "m_bEnable",
  "m_bEnAlarm",
  "m_bEnLmtPosi",
  "m_bEnLmtNega",
  "m_bEnLmtSoft",
  "m_bEnScrewComp",
  "m_bEnBacklash",
  "m_bEnBand",
  "m_bEnInputShaping",
  "m_bEnPrfPosFilter",
  "m_bEnPrfVelFilter",
  "m_bEnWheelCtrl",
  "m_bLaMaxVelLmt",
  "m_bLaMaxAccLmt",
  "m_bLaMaxDVLmt",
  "m_bPosiLmtSns",
  "m_bNegaLmtSns",
  "m_bHomeSns",
  "m_bEncoderSns",
  "m_nEncoderType",
  "m_nAxisPrfIndex",
  "m_nAxisEncIndex",
  "m_nAxisStepIndex",
  "m_homeType",
  "m_homeDir",
  "m_homeTrig",
  "m_indexTrig",
  "m_nGPIHomeIndex",
  "m_bSynEncoderToPrf",
  "m_nAbsEncDataType",
  "m_nCycleScrewComp",
  "m_nAxisPrfIndexEx",
  "m_nPosiLmtType",
  "m_nNegaLmtType",
  "m_nPosiLmtIndex",
  "m_nNegaLmtIndex",
  "m_GSDir",
  "m_nCrossCompMode",
  "m_nCrossMasterId",
  "m_iSysIndex",
  "m_nWheelAxis",
  "m_bMpgDir",
  "m_n5DimensionAxisID",
  "m_reverseLimitMode",
  "m_n2DCompMode",
  "m_nAuAbsEncoderIndex",
  "m_bEnCompleteSynEncToPrf",
  "m_nSpindleType",
  "m_nSpindleCtrlType",
  "m_n5RotateAxisType",
  "m_bCheckGlinkServoSts",
  "m_iAxisScaleUpdateMode",
  "m_bTSpindleDir",
  "m_homeOrder",
  "m_wheelDir",
  "m_lowpassOrder",
  "m_inputShapingCnt",
  "m_filterNumExp",
  "m_screwPointNum",
  "m_encoderBits",
  "m_cmdDir",
  "m_BacklashTimes",
  "m_nCompDir",
  "m_nAbsoluteEncDir",
  "m_maxEncoderPulses",
  "m_minEncoderPulses",
  "m_prfAlpha",
  "m_prfBeta",
  "m_encAlpha",
  "m_encBeta",
  "m_MotorBrand",
  "m_port",
  "m_baud",
  "m_dataBit",
  "m_parity",
  "m_stopbit",
  "m_AbsoluteEncID",
  "m_PrfVelSmoothType",
  "m_PrfVelSmoothK",
  "m_bandTime",
  "m_homeLastWaitTime",
  "m_MaxOutput",
  "m_MinOutput",
  "m_ulCrossPointNum",
  "m_TorqueLatchType",
  "m_TorqueProbeType",
  "m_TorqueCurrentValue",
  "m_TorqueContinueTime",
  "m_TorqueWindowOnly",
  "m_TorqueFirstPosition",
  "m_TorqueLastPosition",
  "m_2DCompTableIndex",
  "m_2DCompAxisType_0",
  "m_2DCompAxisType_1",
  "m_2DCompAxisIndex_0",
  "m_2DCompAxisIndex_1",
  "m_2DCompCount_0",
  "m_2DCompCount_1",
  "m_kp",
  "m_ki",
  "m_kd",
  "m_kvff",
  "m_kaff",
  "m_gantryKp",
  "m_mtrBias",
  "m_iLimt",
  "m_outCmdLmt",
  "m_nPulse",
  "m_nPitch",
  "m_backlash",
  "m_mapCount",
  "m_minPos",
  "m_maxPos",
  "m_lScrewReverseVel",
  "m_FlowerrMax",
  "m_maxAcc",
  "m_maxVel",
  "m_maxDVel",
  "m_StopDec",
  "m_EStopDec",
  "m_jogfeed",
  "m_jogacc",
  "m_jogdec",
  "m_jogsmooth",
  "m_bufMovefeed",
  "m_bufMoveacc",
  "m_bufMovedec",
  "m_bufMovesmooth",
  "m_HomeVel",
  "m_HomeLowVel",
  "m_NegOffset",
  "m_SchIndexOffSet",
  "m_HomeOffset",
  "m_IndexOffset",
  "m_refPos",
  "m_Band",
  "m_accurateBand",
  "m_roughStopBand",
  "m_wheelScale",
  "m_WheelSlope",
  "m_rPreV",
  "m_BackCompValue",
  "m_BackCompLowPassTimeK",
  "m_BackCompDecTime",
  "m_SmoothTime",
  "m_SmoothK",
  "m_MaxJerk",
  "m_SpindleDelay",
  "m_AbsoluteEncZero",
  "m_scale",
  "m_velScale",
  "m_accScale",
  "m_shortVel",
  "m_shortAcc",
  "m_shortDec",
  "m_shortSmoothtime",
  "m_shortDistance",
  "m_GantryErrLmt",
  "m_HomeIndexMinErr",
  "m_dAdjustmentAccuracy",
  "m_GantryAdjVel",
  "m_HomeLmtLeaveDis",
  "m_EcatHomeAcc",
  "m_AbsEncoderPulse",
  "m_2DCompPosBegin_0",
  "m_2DCompPosBegin_1",
  "m_2DCompStep_0",
  "m_2DCompStep_1",
  "m_2DCompAngle",
  "m_EnCompleteVelBand",
  "m_minPos2",
  "m_maxPos2",
  "m_bSpPosErrCheck",
  "m_EncDataScale"
);

-- ----------------------------
-- Records of AxisPara
-- ----------------------------
INSERT INTO "AxisPara" VALUES (1, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 7, 7, 7, 5, 1, 1, 1, 0, 1, 1, 0, 0, 0, 1, 6, 6, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 2, 0, 80, 15, 32, 0, 10, 1, 0, 22000, -482000, 1, 1, 1, 1, 14, 0, 0, 0, 0, 0, 0, -1, 0, 10, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10.0, 10.0, 1.0, 0.0, 0.0, 0.0, 0.0, 0.0, 10.0, 10000.0, 10.0, -0.002, 0.0, -482.0, 22.0, 7.0, 1.0, 15000000.0, 3500, 3000.0, 12000000.0, 15000000.0, 5000.0, 15000000.0, 15000000.0, 5.0, 5000.0, 2000000.0, 2000000.0, 5.0, 2000.0, 100.0, 10.0, 20.0, 0.0, 10.0, 0.0, 0.05, 0.001, 0.01, 0.01, 0.0, 1000.0, 0.0, 0.0, 10.0, 80.0, 12.0, 1000.0, 0.0, 605577.0, 1000.0, 0.01667, 0.0, 2000.0, 1000000.0, 1000000.0, 5.0, 0.05, 1000.0, 1.0, 0.001, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1, 10000.0);
INSERT INTO "AxisPara" VALUES (2, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 8, 8, 8, 5, 1, 1, 1, 0, 1, 1, 0, 0, 0, 1, 7, 7, 0, 0, 0, 0, 0, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 2, 0, 80, 21, 32, 1, 1, 0, 1, 202500, -2500, 1, 1, 1, 1, 14, 0, 0, 0, 0, 0, 0, -1, 0, 10, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10.0, 10.0, 1.0, 0.0, 0.0, 0.0, 0.0, 0.0, 10.0, 10000.0, 10.0, 0.0, 0.0, -2.5, 202.5, 7.0, 1.0, 15000000.0, 35000.0, 3000.0, 12000000.0, 15000000.0, 5000.0, 15000000.0, 15000000.0, 5.0, 5000.0, 2000000.0, 2000000.0, 5.0, 2000.0, 100.0, 5.0, 20.0, 0.0, 10.0, 0.0, 0.05, 0.001, 0.01, 0.01, 0.0, 1000.0, 0.0, 0.0, 10.0, 80.0, 12.0, 1000.0, 0.0, -223513.0, 1000.0, 0.01667, 0.0, 2000.0, 1000000.0, 1000000.0, 5.0, 0.05, 1000.0, 1.0, 0.001, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1, 10000.0);
INSERT INTO "AxisPara" VALUES (3, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 9, 9, 9, 5, 1, 1, 1, 0, 1, 1, 0, 0, 0, 1, 8, 8, 1, 0, 0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 0, 80, 21, 32, 0, 1, 0, 0, 30000, -802500, 1, 1, 1, 1, 14, 0, 0, 0, 0, 0, 0, -1, 0, 10, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10.0, 10.0, 1.0, 0.0, 0.0, 0.0, 0.0, 0.0, 10.0, 10000.0, 10.0, 0.0, 0.0, -802.5, 30.0, 7.0, 1.0, 15000000.0, 40000.0, 3000.0, 12000000.0, 15000000.0, 5000.0, 15000000.0, 15000000.0, 5.0, 5000.0, 12000000.0, 12000000.0, 5.0, 2000.0, 100.0, 5.0, 20.0, 0.0, 10.0, 0.0, 0.05, 0.001, 0.01, 0.01, 0.0, 1000.0, 0.0, 0.0, 10.0, 80.0, 12.0, 1000.0, 0.0, 869103.0, 1000.0, 0.01667, 0.0, 2000.0, 1000000.0, 1000000.0, 5.0, 0.05, 1000.0, 1.0, 0.001, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0, 10000.0);
INSERT INTO "AxisPara" VALUES (4, 0, 0, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 10, 10, 10, 5, 0, 1, 1, 0, 1, 1, 0, 0, 0, 0, 9, 9, 0, 0, 0, 0, 0, 0, 4, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 2, 0, 80, 34, 27, 0, 1, 0, 0, 210000, -30000, 1, 1, 1, 1, 14, 0, 0, 0, 0, 0, 0, -1, 0, 10, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10.0, 10.0, 1.0, 0.0, 0.0, 0.0, 0.0, 0.0, 10.0, 360000.0, 360.0, 0.0, 0.0, -30.0, 210.0, 7.0, 1.0, 10000000.0, 10800.0, 108000.0, 3000000.0, 5000000.0, 5000.0, 10000000.0, 10000000.0, 5.0, 10800.0, 10000000.0, 10000000.0, 5.0, 2000.0, 100.0, 5.0, 20.0, 0.0, 0.0, 0.0, 0.05, 0.001, 0.01, 0.01, 0.0, 1000.0, 0.0, 0.0, 10.0, 80.0, 12.0, 1000.0, 0.0, 79456.0, 1000.0, 0.01667, 0.0, 2000.0, 1000000.0, 1000000.0, 5.0, 0.05, 1000.0, 1.0, 0.01, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0, 10000.0);
INSERT INTO "AxisPara" VALUES (5, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 12, 12, 12, 2, 1, 1, 1, 0, 1, 1, 0, 0, 0, 0, 10, 10, 0, 0, 0, 0, 0, 0, 5, 0, 0, 0, 0, 1, 0, 1, 1, 0, 1, 0, 0, 2, 0, 80, 37, 17, 0, 1, 0, 0, 1000000, -1000000, 1, 1, 1, 1, 14, 0, 0, 0, 0, 0, 0, -1, 0, 10, 1000, 3000, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10.0, 10.0, 1.0, 0.0, 0.0, 0.0, 0.0, 0.0, 10.0, 360000.0, 360.0, 0.0, 0.0, -1000.0, 1000.0, 7.0, 1.0, 12000000.0, 3600000.0, 108000.0, 7000000.0, 8000000.0, 5000.0, 10000000.0, 10000000.0, 5.0, 5000.0, 2000000.0, 2000000.0, 5.0, 2000.0, 100.0, 10.0, 362.0, 0.0, 0.0, 0.0, 0.05, 0.001, 0.01, 0.01, 0.0, 1000.0, 0.0, 0.0, 10.0, 80.0, 12.0, 1000.0, 0.0, 0.0, 1000.0, 0.01667, 0.0, 2000.0, 1000000.0, 1000000.0, 5.0, 0.05, 1000.0, 1.0, 0.001, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0, 10000.0);
INSERT INTO "AxisPara" VALUES (6, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 11, 11, 11, 5, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 5, 5, 0, 0, 0, 0, 0, 0, 6, 0, 0, 0, 0, 0, 5, 0, 1, 0, 0, 0, 0, 2, 0, 80, 10, 19, 1, 1, 0, 1, 33333333, -3333, 1, 1, 1, 1, 14, 0, 57600, 8, 0, 0, 1, -1, 0, 10, 1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10.0, 10.0, 1.0, 0.0, 0.0, 0.0, 0.0, 0.0, 10.0, 10000.0, 3.0, 0.0, 0.0, -1.0, 10000.0, 7.0, 1.0, 3000000.0, 10000.0, 3000.0, 3000000.0, 5000000.0, 5000.0, 3000000.0, 3000000.0, 5.0, 5000.0, 2000000.0, 2000000.0, 5.0, 2000.0, 100.0, 5.0, 20.0, 0.0, 0.0, 0.0, 0.05, 0.001, 0.01, 0.01, 0.0, 1000.0, 0.0, 0.0, 10.0, 0.0, 0.0, 0.95, 0.0, 171330.0, 3333.33333, 0.05556, 0.0, 2000.0, 1000000.0, 1000000.0, 5.0, 0.05, 1000.0, 1.0, 0.001, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0, 10000.0);
INSERT INTO "AxisPara" VALUES (7, 1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 1, 13, 13, 13, 2, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 11, 11, 0, 0, 0, 0, 0, 0, 11, 0, 0, 0, 0, 2, 5, 0, 1, 0, 0, 0, 0, 2, 0, 80, 171, 19, 1, 1, 0, 0, 1000, -1000, 1, 1, 1, 1, 14, 0, 0, 0, 0, 0, 0, -1, 0, 10, 1000, 12000, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 10.0, 10.0, 1.0, 0.0, 0.0, 0.0, 0.0, 0.0, 10.0, 360000.0, 360.0, 0.0, 0.0, -1.0, 1.0, 7.0, 1.0, 120000000.0, 3240000.0, 10000.0, 80000000.0, 100000000.0, 60000.0, 100000000.0, 80000000.0, 10.0, 12000.0, 80000000.0, 80000000.0, 10.0, 1000.0, 100.0, 5.0, 362.0, 0.0, 0.0, -20.0, 0.05, 0.001, 0.01, 0.01, 0.0, 1000.0, 0.0, 0.0, 10.0, 0.0, 0.0, 0.95, 1000000.0, 0.0, 1000.0, 0.01667, 0.0, 2000.0, 1000000.0, 1000000.0, 5.0, 0.0, 1000.0, 1.0, 0.001, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0, 10000.0);
INSERT INTO "AxisPara" VALUES (8, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 8, 8, 8, 1, 1, 1, 1, 0, 1, 0, 0, 0, 0, 1, 7, 7, 0, 0, 1, 0, 1, 1, 8, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 2, 0, 80, 0, 0, 1, 1, 0, 1, 0, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, -1, 0, 10, 1000, 1000, 1000, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1000.0, 10.0, 10000.0, 10.0, 0.0, 0.0, -1.0, 1.0, 7.0, 1.0, 3000000.0, 10000.0, 3000.0, 3000000.0, 5000000.0, 5000.0, 3000000.0, 3000000.0, 5.0, 5000.0, 2000000.0, 2000000.0, 5.0, 2000.0, 100.0, 5.0, 20.0, 0.0, 0.0, 0.0, 0.05, 0.001, 0.01, 0.01, 0.0, 1000.0, 0.0, 10.0, 10.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 2000.0, 1000000.0, 1000000.0, 5.0, 0.05, 2.0, 1.0, 0.001, 50.0, 10.0, 10000.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.01, 0.0, 0.0, 0, NULL);
INSERT INTO "AxisPara" VALUES (9, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 9, 9, 9, 1, 1, 1, 1, 0, 1, 0, 0, 0, 0, 1, 8, 8, 0, 0, 1, 0, 1, 1, 9, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 2, 0, 80, 0, 0, 1, 1, 0, 1, 0, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, -1, 0, 10, 1000, 1000, 1000, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1000.0, 10.0, 10000.0, 10.0, 0.0, 0.0, -1.0, 1.0, 7.0, 1.0, 3000000.0, 10000.0, 3000.0, 3000000.0, 5000000.0, 5000.0, 3000000.0, 3000000.0, 5.0, 5000.0, 2000000.0, 2000000.0, 5.0, 2000.0, 100.0, 5.0, 20.0, 0.0, 0.0, 0.0, 0.05, 0.001, 0.01, 0.01, 0.0, 1000.0, 0.0, 10.0, 10.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 2000.0, 1000000.0, 1000000.0, 5.0, 0.05, 2.0, 1.0, 0.001, 50.0, 10.0, 10000.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.01, 0.0, 0.0, 0, NULL);
INSERT INTO "AxisPara" VALUES (10, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 10, 10, 10, 1, 1, 1, 1, 0, 1, 0, 0, 0, 0, 1, 9, 9, 0, 0, 1, 0, 1, 1, 10, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 2, 0, 80, 0, 0, 1, 1, 0, 1, 0, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, -1, 0, 10, 1000, 1000, 1000, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1000.0, 10.0, 10000.0, 10.0, 0.0, 0.0, -1.0, 1.0, 7.0, 1.0, 3000000.0, 10000.0, 3000.0, 3000000.0, 5000000.0, 5000.0, 3000000.0, 3000000.0, 5.0, 5000.0, 2000000.0, 2000000.0, 5.0, 2000.0, 100.0, 5.0, 20.0, 0.0, 0.0, 0.0, 0.05, 0.001, 0.01, 0.01, 0.0, 1000.0, 0.0, 10.0, 10.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 2000.0, 1000000.0, 1000000.0, 5.0, 0.05, 2.0, 1.0, 0.001, 50.0, 10.0, 10000.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.01, 0.0, 0.0, 0, NULL);
INSERT INTO "AxisPara" VALUES (11, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 11, 11, 11, 1, 1, 1, 1, 0, 1, 0, 0, 0, 0, 1, 10, 10, 0, 0, 1, 0, 1, 1, 11, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 2, 0, 80, 0, 0, 1, 1, 0, 1, 0, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, -1, 0, 10, 1000, 1000, 1000, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1000.0, 10.0, 10000.0, 10.0, 0.0, 0.0, -1.0, 1.0, 7.0, 1.0, 3000000.0, 10000.0, 3000.0, 3000000.0, 5000000.0, 5000.0, 3000000.0, 3000000.0, 5.0, 5000.0, 2000000.0, 2000000.0, 5.0, 2000.0, 100.0, 5.0, 20.0, 0.0, 0.0, 0.0, 0.05, 0.001, 0.01, 0.01, 0.0, 1000.0, 0.0, 10.0, 10.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 2000.0, 1000000.0, 1000000.0, 5.0, 0.05, 2.0, 1.0, 0.001, 50.0, 10.0, 10000.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.01, 0.0, 0.0, 0, NULL);
INSERT INTO "AxisPara" VALUES (12, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 12, 12, 12, 1, 1, 1, 1, 0, 1, 0, 0, 0, 0, 1, 11, 11, 0, 0, 1, 0, 1, 1, 12, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 2, 0, 80, 0, 0, 1, 1, 0, 1, 0, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, -1, 0, 10, 1000, 1000, 1000, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1000.0, 10.0, 10000.0, 10.0, 0.0, 0.0, -1.0, 1.0, 7.0, 1.0, 3000000.0, 10000.0, 3000.0, 3000000.0, 5000000.0, 5000.0, 3000000.0, 3000000.0, 5.0, 5000.0, 2000000.0, 2000000.0, 5.0, 2000.0, 100.0, 5.0, 20.0, 0.0, 0.0, 0.0, 0.05, 0.001, 0.01, 0.01, 0.0, 1000.0, 0.0, 10.0, 10.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 2000.0, 1000000.0, 1000000.0, 5.0, 0.05, 2.0, 1.0, 0.001, 50.0, 10.0, 10000.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.01, 0.0, 0.0, 0, NULL);
INSERT INTO "AxisPara" VALUES (13, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 13, 13, 13, 1, 1, 1, 1, 0, 1, 0, 0, 0, 0, 1, 12, 12, 0, 0, 1, 0, 1, 1, 13, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 2, 0, 80, 0, 0, 1, 1, 0, 1, 0, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, -1, 0, 10, 1000, 1000, 1000, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1000.0, 10.0, 10000.0, 10.0, 0.0, 0.0, -1.0, 1.0, 7.0, 1.0, 3000000.0, 10000.0, 3000.0, 3000000.0, 5000000.0, 5000.0, 3000000.0, 3000000.0, 5.0, 5000.0, 2000000.0, 2000000.0, 5.0, 2000.0, 100.0, 5.0, 20.0, 0.0, 0.0, 0.0, 0.05, 0.001, 0.01, 0.01, 0.0, 1000.0, 0.0, 10.0, 10.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 2000.0, 1000000.0, 1000000.0, 5.0, 0.05, 2.0, 1.0, 0.001, 50.0, 10.0, 10000.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.01, 0.0, 0.0, 0, NULL);
INSERT INTO "AxisPara" VALUES (14, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 14, 14, 14, 1, 1, 1, 1, 0, 1, 0, 0, 0, 0, 1, 13, 13, 0, 0, 1, 0, 1, 1, 14, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 2, 0, 80, 0, 0, 1, 1, 0, 1, 0, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, -1, 0, 10, 1000, 1000, 1000, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1000.0, 10.0, 10000.0, 10.0, 0.0, 0.0, -1.0, 1.0, 7.0, 1.0, 3000000.0, 10000.0, 3000.0, 3000000.0, 5000000.0, 5000.0, 3000000.0, 3000000.0, 5.0, 5000.0, 2000000.0, 2000000.0, 5.0, 2000.0, 100.0, 5.0, 20.0, 0.0, 0.0, 0.0, 0.05, 0.001, 0.01, 0.01, 0.0, 1000.0, 0.0, 10.0, 10.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 2000.0, 1000000.0, 1000000.0, 5.0, 0.05, 2.0, 1.0, 0.001, 50.0, 10.0, 10000.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.01, 0.0, 0.0, 0, NULL);
INSERT INTO "AxisPara" VALUES (15, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 15, 15, 15, 1, 1, 1, 1, 0, 1, 0, 0, 0, 0, 1, 14, 14, 0, 0, 1, 0, 1, 1, 15, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 2, 0, 80, 0, 0, 1, 1, 0, 1, 0, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, -1, 0, 10, 1000, 1000, 1000, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1000.0, 10.0, 10000.0, 10.0, 0.0, 0.0, -1.0, 1.0, 7.0, 1.0, 3000000.0, 10000.0, 3000.0, 3000000.0, 5000000.0, 5000.0, 3000000.0, 3000000.0, 5.0, 5000.0, 2000000.0, 2000000.0, 5.0, 2000.0, 100.0, 5.0, 20.0, 0.0, 0.0, 0.0, 0.05, 0.001, 0.01, 0.01, 0.0, 1000.0, 0.0, 10.0, 10.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 2000.0, 1000000.0, 1000000.0, 5.0, 0.05, 2.0, 1.0, 0.001, 50.0, 10.0, 10000.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.01, 0.0, 0.0, 0, NULL);
INSERT INTO "AxisPara" VALUES (16, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 16, 16, 16, 1, 1, 1, 1, 0, 1, 0, 0, 0, 0, 1, 15, 15, 0, 0, 1, 0, 1, 1, 16, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 2, 0, 80, 0, 0, 1, 1, 0, 1, 0, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, -1, 0, 10, 1000, 1000, 1000, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1000.0, 10.0, 10000.0, 10.0, 0.0, 0.0, -1.0, 1.0, 7.0, 1.0, 3000000.0, 10000.0, 3000.0, 3000000.0, 5000000.0, 5000.0, 3000000.0, 3000000.0, 5.0, 5000.0, 2000000.0, 2000000.0, 5.0, 2000.0, 100.0, 5.0, 20.0, 0.0, 0.0, 0.0, 0.05, 0.001, 0.01, 0.01, 0.0, 1000.0, 0.0, 10.0, 10.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 2000.0, 1000000.0, 1000000.0, 5.0, 0.05, 2.0, 1.0, 0.001, 50.0, 10.0, 10000.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.01, 0.0, 0.0, 0, NULL);
INSERT INTO "AxisPara" VALUES (17, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 17, 17, 17, 1, 1, 1, 1, 0, 1, 0, 0, 0, 0, 1, 16, 16, 0, 0, 1, 0, 1, 1, 17, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 2, 0, 80, 0, 0, 1, 1, 0, 1, 0, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, -1, 0, 10, 1000, 1000, 1000, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1000.0, 10.0, 10000.0, 10.0, 0.0, 0.0, -1.0, 1.0, 7.0, 1.0, 3000000.0, 10000.0, 3000.0, 3000000.0, 5000000.0, 5000.0, 3000000.0, 3000000.0, 5.0, 5000.0, 2000000.0, 2000000.0, 5.0, 2000.0, 100.0, 5.0, 20.0, 0.0, 0.0, 0.0, 0.05, 0.001, 0.01, 0.01, 0.0, 1000.0, 0.0, 10.0, 10.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 2000.0, 1000000.0, 1000000.0, 5.0, 0.05, 2.0, 1.0, 0.001, 50.0, 10.0, 10000.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.01, 0.0, 0.0, 0, NULL);
INSERT INTO "AxisPara" VALUES (18, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 18, 18, 18, 1, 1, 1, 1, 0, 1, 0, 0, 0, 0, 1, 17, 17, 0, 0, 1, 0, 1, 1, 18, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 2, 0, 80, 0, 0, 1, 1, 0, 1, 0, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, -1, 0, 10, 1000, 1000, 1000, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1000.0, 10.0, 10000.0, 10.0, 0.0, 0.0, -1.0, 1.0, 7.0, 1.0, 3000000.0, 10000.0, 3000.0, 3000000.0, 5000000.0, 5000.0, 3000000.0, 3000000.0, 5.0, 5000.0, 2000000.0, 2000000.0, 5.0, 2000.0, 100.0, 5.0, 20.0, 0.0, 0.0, 0.0, 0.05, 0.001, 0.01, 0.01, 0.0, 1000.0, 0.0, 10.0, 10.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 2000.0, 1000000.0, 1000000.0, 5.0, 0.05, 2.0, 1.0, 0.001, 50.0, 10.0, 10000.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.01, 0.0, 0.0, 0, NULL);
INSERT INTO "AxisPara" VALUES (19, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 19, 19, 19, 1, 1, 1, 1, 0, 1, 0, 0, 0, 0, 1, 18, 18, 0, 0, 1, 0, 1, 1, 19, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 2, 0, 80, 0, 0, 1, 1, 0, 1, 0, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, -1, 0, 10, 1000, 1000, 1000, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1000.0, 10.0, 10000.0, 10.0, 0.0, 0.0, -1.0, 1.0, 7.0, 1.0, 3000000.0, 10000.0, 3000.0, 3000000.0, 5000000.0, 5000.0, 3000000.0, 3000000.0, 5.0, 5000.0, 2000000.0, 2000000.0, 5.0, 2000.0, 100.0, 5.0, 20.0, 0.0, 0.0, 0.0, 0.05, 0.001, 0.01, 0.01, 0.0, 1000.0, 0.0, 10.0, 10.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 2000.0, 1000000.0, 1000000.0, 5.0, 0.05, 2.0, 1.0, 0.001, 50.0, 10.0, 10000.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.01, 0.0, 0.0, 0, NULL);
INSERT INTO "AxisPara" VALUES (20, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 20, 20, 20, 1, 1, 1, 1, 0, 1, 0, 0, 0, 0, 1, 19, 19, 0, 0, 1, 0, 1, 1, 20, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 2, 0, 80, 0, 0, 1, 1, 0, 1, 0, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, -1, 0, 10, 1000, 1000, 1000, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1000.0, 10.0, 10000.0, 10.0, 0.0, 0.0, -1.0, 1.0, 7.0, 1.0, 3000000.0, 10000.0, 3000.0, 3000000.0, 5000000.0, 5000.0, 3000000.0, 3000000.0, 5.0, 5000.0, 2000000.0, 2000000.0, 5.0, 2000.0, 100.0, 5.0, 20.0, 0.0, 0.0, 0.0, 0.05, 0.001, 0.01, 0.01, 0.0, 1000.0, 0.0, 10.0, 10.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 2000.0, 1000000.0, 1000000.0, 5.0, 0.05, 2.0, 1.0, 0.001, 50.0, 10.0, 10000.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.01, 0.0, 0.0, 0, NULL);
INSERT INTO "AxisPara" VALUES (21, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 21, 21, 21, 1, 1, 1, 1, 0, 1, 0, 0, 0, 0, 1, 20, 20, 0, 0, 1, 0, 1, 1, 21, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 2, 0, 80, 0, 0, 1, 1, 0, 1, 0, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, -1, 0, 10, 1000, 1000, 1000, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1000.0, 10.0, 10000.0, 10.0, 0.0, 0.0, -1.0, 1.0, 7.0, 1.0, 3000000.0, 10000.0, 3000.0, 3000000.0, 5000000.0, 5000.0, 3000000.0, 3000000.0, 5.0, 5000.0, 2000000.0, 2000000.0, 5.0, 2000.0, 100.0, 5.0, 20.0, 0.0, 0.0, 0.0, 0.05, 0.001, 0.01, 0.01, 0.0, 1000.0, 0.0, 10.0, 10.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 2000.0, 1000000.0, 1000000.0, 5.0, 0.05, 2.0, 1.0, 0.001, 50.0, 10.0, 10000.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.01, 0.0, 0.0, 0, NULL);
INSERT INTO "AxisPara" VALUES (22, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 22, 22, 22, 1, 1, 1, 1, 0, 1, 0, 0, 0, 0, 1, 21, 21, 0, 0, 1, 0, 1, 1, 22, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 2, 0, 80, 0, 0, 1, 1, 0, 1, 0, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, -1, 0, 10, 1000, 1000, 1000, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1000.0, 10.0, 10000.0, 10.0, 0.0, 0.0, -1.0, 1.0, 7.0, 1.0, 3000000.0, 10000.0, 3000.0, 3000000.0, 5000000.0, 5000.0, 3000000.0, 3000000.0, 5.0, 5000.0, 2000000.0, 2000000.0, 5.0, 2000.0, 100.0, 5.0, 20.0, 0.0, 0.0, 0.0, 0.05, 0.001, 0.01, 0.01, 0.0, 1000.0, 0.0, 10.0, 10.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 2000.0, 1000000.0, 1000000.0, 5.0, 0.05, 2.0, 1.0, 0.001, 50.0, 10.0, 10000.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.01, 0.0, 0.0, 0, NULL);
INSERT INTO "AxisPara" VALUES (23, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 23, 23, 23, 1, 1, 1, 1, 0, 1, 0, 0, 0, 0, 1, 22, 22, 0, 0, 1, 0, 1, 1, 23, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 2, 0, 80, 0, 0, 1, 1, 0, 1, 0, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, -1, 0, 10, 1000, 1000, 1000, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1000.0, 10.0, 10000.0, 10.0, 0.0, 0.0, -1.0, 1.0, 7.0, 1.0, 3000000.0, 10000.0, 3000.0, 3000000.0, 5000000.0, 5000.0, 3000000.0, 3000000.0, 5.0, 5000.0, 2000000.0, 2000000.0, 5.0, 2000.0, 100.0, 5.0, 20.0, 0.0, 0.0, 0.0, 0.05, 0.001, 0.01, 0.01, 0.0, 1000.0, 0.0, 10.0, 10.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 2000.0, 1000000.0, 1000000.0, 5.0, 0.05, 2.0, 1.0, 0.001, 50.0, 10.0, 10000.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.01, 0.0, 0.0, 0, NULL);
INSERT INTO "AxisPara" VALUES (24, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 24, 24, 24, 1, 1, 1, 1, 0, 1, 0, 0, 0, 0, 1, 23, 23, 0, 0, 1, 0, 1, 1, 24, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 2, 0, 80, 0, 0, 1, 1, 0, 1, 0, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, -1, 0, 10, 1000, 1000, 1000, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1000.0, 10.0, 10000.0, 10.0, 0.0, 0.0, -1.0, 1.0, 7.0, 1.0, 3000000.0, 10000.0, 3000.0, 3000000.0, 5000000.0, 5000.0, 3000000.0, 3000000.0, 5.0, 5000.0, 2000000.0, 2000000.0, 5.0, 2000.0, 100.0, 5.0, 20.0, 0.0, 0.0, 0.0, 0.05, 0.001, 0.01, 0.01, 0.0, 1000.0, 0.0, 10.0, 10.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 2000.0, 1000000.0, 1000000.0, 5.0, 0.05, 2.0, 1.0, 0.001, 50.0, 10.0, 10000.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.01, 0.0, 0.0, 0, NULL);
INSERT INTO "AxisPara" VALUES (25, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 25, 25, 25, 1, 1, 1, 1, 0, 1, 0, 0, 0, 0, 1, 24, 24, 0, 0, 1, 0, 1, 1, 25, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 2, 0, 80, 0, 0, 1, 1, 0, 1, 0, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, -1, 0, 10, 1000, 1000, 1000, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1000.0, 10.0, 10000.0, 10.0, 0.0, 0.0, -1.0, 1.0, 7.0, 1.0, 3000000.0, 10000.0, 3000.0, 3000000.0, 5000000.0, 5000.0, 3000000.0, 3000000.0, 5.0, 5000.0, 2000000.0, 2000000.0, 5.0, 2000.0, 100.0, 5.0, 20.0, 0.0, 0.0, 0.0, 0.05, 0.001, 0.01, 0.01, 0.0, 1000.0, 0.0, 10.0, 10.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 2000.0, 1000000.0, 1000000.0, 5.0, 0.05, 2.0, 1.0, 0.001, 50.0, 10.0, 10000.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.01, 0.0, 0.0, 0, NULL);
INSERT INTO "AxisPara" VALUES (26, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 26, 26, 26, 1, 1, 1, 1, 0, 1, 0, 0, 0, 0, 1, 25, 25, 0, 0, 1, 0, 1, 1, 26, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 2, 0, 80, 0, 0, 1, 1, 0, 1, 0, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, -1, 0, 10, 1000, 1000, 1000, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1000.0, 10.0, 10000.0, 10.0, 0.0, 0.0, -1.0, 1.0, 7.0, 1.0, 3000000.0, 10000.0, 3000.0, 3000000.0, 5000000.0, 5000.0, 3000000.0, 3000000.0, 5.0, 5000.0, 2000000.0, 2000000.0, 5.0, 2000.0, 100.0, 5.0, 20.0, 0.0, 0.0, 0.0, 0.05, 0.001, 0.01, 0.01, 0.0, 1000.0, 0.0, 10.0, 10.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 2000.0, 1000000.0, 1000000.0, 5.0, 0.05, 2.0, 1.0, 0.001, 50.0, 10.0, 10000.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.01, 0.0, 0.0, 0, NULL);
INSERT INTO "AxisPara" VALUES (27, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 27, 27, 27, 1, 1, 1, 1, 0, 1, 0, 0, 0, 0, 1, 26, 26, 0, 0, 1, 0, 1, 1, 27, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 2, 0, 80, 0, 0, 1, 1, 0, 1, 0, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, -1, 0, 10, 1000, 1000, 1000, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1000.0, 10.0, 10000.0, 10.0, 0.0, 0.0, -1.0, 1.0, 7.0, 1.0, 3000000.0, 10000.0, 3000.0, 3000000.0, 5000000.0, 5000.0, 3000000.0, 3000000.0, 5.0, 5000.0, 2000000.0, 2000000.0, 5.0, 2000.0, 100.0, 5.0, 20.0, 0.0, 0.0, 0.0, 0.05, 0.001, 0.01, 0.01, 0.0, 1000.0, 0.0, 10.0, 10.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 2000.0, 1000000.0, 1000000.0, 5.0, 0.05, 2.0, 1.0, 0.001, 50.0, 10.0, 10000.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.01, 0.0, 0.0, 0, NULL);
INSERT INTO "AxisPara" VALUES (28, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 28, 28, 28, 1, 1, 1, 1, 0, 1, 0, 0, 0, 0, 1, 27, 27, 0, 0, 1, 0, 1, 1, 28, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 2, 0, 80, 0, 0, 1, 1, 0, 1, 0, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, -1, 0, 10, 1000, 1000, 1000, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1000.0, 10.0, 10000.0, 10.0, 0.0, 0.0, -1.0, 1.0, 7.0, 1.0, 3000000.0, 10000.0, 3000.0, 3000000.0, 5000000.0, 5000.0, 3000000.0, 3000000.0, 5.0, 5000.0, 2000000.0, 2000000.0, 5.0, 2000.0, 100.0, 5.0, 20.0, 0.0, 0.0, 0.0, 0.05, 0.001, 0.01, 0.01, 0.0, 1000.0, 0.0, 10.0, 10.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 2000.0, 1000000.0, 1000000.0, 5.0, 0.05, 2.0, 1.0, 0.001, 50.0, 10.0, 10000.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.01, 0.0, 0.0, 0, NULL);
INSERT INTO "AxisPara" VALUES (29, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 29, 29, 29, 1, 1, 1, 1, 0, 1, 0, 0, 0, 0, 1, 28, 28, 0, 0, 1, 0, 1, 1, 29, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 2, 0, 80, 0, 0, 1, 1, 0, 1, 0, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, -1, 0, 10, 1000, 1000, 1000, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1000.0, 10.0, 10000.0, 10.0, 0.0, 0.0, -1.0, 1.0, 7.0, 1.0, 3000000.0, 10000.0, 3000.0, 3000000.0, 5000000.0, 5000.0, 3000000.0, 3000000.0, 5.0, 5000.0, 2000000.0, 2000000.0, 5.0, 2000.0, 100.0, 5.0, 20.0, 0.0, 0.0, 0.0, 0.05, 0.001, 0.01, 0.01, 0.0, 1000.0, 0.0, 10.0, 10.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 2000.0, 1000000.0, 1000000.0, 5.0, 0.05, 2.0, 1.0, 0.001, 50.0, 10.0, 10000.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.01, 0.0, 0.0, 0, NULL);
INSERT INTO "AxisPara" VALUES (30, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 30, 30, 30, 1, 1, 1, 1, 0, 1, 0, 0, 0, 0, 1, 29, 29, 0, 0, 1, 0, 1, 1, 30, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 2, 0, 80, 0, 0, 1, 1, 0, 1, 0, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, -1, 0, 10, 1000, 1000, 1000, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1000.0, 10.0, 10000.0, 10.0, 0.0, 0.0, -1.0, 1.0, 7.0, 1.0, 3000000.0, 10000.0, 3000.0, 3000000.0, 5000000.0, 5000.0, 3000000.0, 3000000.0, 5.0, 5000.0, 2000000.0, 2000000.0, 5.0, 2000.0, 100.0, 5.0, 20.0, 0.0, 0.0, 0.0, 0.05, 0.001, 0.01, 0.01, 0.0, 1000.0, 0.0, 10.0, 10.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 2000.0, 1000000.0, 1000000.0, 5.0, 0.05, 2.0, 1.0, 0.001, 50.0, 10.0, 10000.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.01, 0.0, 0.0, 0, NULL);
INSERT INTO "AxisPara" VALUES (31, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 31, 31, 31, 1, 1, 1, 1, 0, 1, 0, 0, 0, 0, 1, 30, 30, 0, 0, 1, 0, 1, 1, 31, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 2, 0, 80, 0, 0, 1, 1, 0, 1, 0, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, -1, 0, 10, 1000, 1000, 1000, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1000.0, 10.0, 10000.0, 10.0, 0.0, 0.0, -1.0, 1.0, 7.0, 1.0, 3000000.0, 10000.0, 3000.0, 3000000.0, 5000000.0, 5000.0, 3000000.0, 3000000.0, 5.0, 5000.0, 2000000.0, 2000000.0, 5.0, 2000.0, 100.0, 5.0, 20.0, 0.0, 0.0, 0.0, 0.05, 0.001, 0.01, 0.01, 0.0, 1000.0, 0.0, 10.0, 10.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 2000.0, 1000000.0, 1000000.0, 5.0, 0.05, 2.0, 1.0, 0.001, 50.0, 10.0, 10000.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.01, 0.0, 0.0, 0, NULL);
INSERT INTO "AxisPara" VALUES (32, 0, 0, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 32, 32, 32, 1, 1, 1, 1, 0, 1, 0, 0, 0, 0, 1, 31, 31, 0, 0, 1, 0, 1, 1, 32, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 2, 0, 80, 0, 0, 1, 1, 0, 1, 0, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, -1, 0, 10, 1000, 1000, 1000, 10, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 1000.0, 10.0, 10000.0, 10.0, 0.0, 0.0, -1.0, 1.0, 7.0, 1.0, 3000000.0, 10000.0, 3000.0, 3000000.0, 5000000.0, 5000.0, 3000000.0, 3000000.0, 5.0, 5000.0, 2000000.0, 2000000.0, 5.0, 2000.0, 100.0, 5.0, 20.0, 0.0, 0.0, 0.0, 0.05, 0.001, 0.01, 0.01, 0.0, 1000.0, 0.0, 10.0, 10.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 2000.0, 1000000.0, 1000000.0, 5.0, 0.05, 2.0, 1.0, 0.001, 50.0, 10.0, 10000.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.01, 0.0, 0.0, 0, NULL);

PRAGMA foreign_keys = true;
