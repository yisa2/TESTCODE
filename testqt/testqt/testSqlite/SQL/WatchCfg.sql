/*
 Navicat Premium Data Transfer

 Source Server         : QSQLITE
 Source Server Type    : SQLite
 Source Server Version : 3021000
 Source Schema         : main

 Target Server Type    : SQLite
 Target Server Version : 3021000
 File Encoding         : 65001

 Date: 12/10/2024 14:00:43
*/

PRAGMA foreign_keys = false;

-- ----------------------------
-- Table structure for WatchCfg
-- ----------------------------
DROP TABLE IF EXISTS "WatchCfg";
CREATE TABLE "WatchCfg" (
  "Para" TEXT,
  "Value" real
);

-- ----------------------------
-- Records of WatchCfg
-- ----------------------------
INSERT INTO "WatchCfg" VALUES ('WatchMode', 0.0);
INSERT INTO "WatchCfg" VALUES ('WatchFreq', 100.0);
INSERT INTO "WatchCfg" VALUES ('WatchTime', 3.0);
INSERT INTO "WatchCfg" VALUES ('StartType', 0.0);
INSERT INTO "WatchCfg" VALUES ('ParamNum', 10.0);
INSERT INTO "WatchCfg" VALUES ('HoldPtCnt', 100.0);
INSERT INTO "WatchCfg" VALUES ('ScopePtCnt', 100.0);
INSERT INTO "WatchCfg" VALUES ('Type1', 1.0);
INSERT INTO "WatchCfg" VALUES ('Index1', 7.0);
INSERT INTO "WatchCfg" VALUES ('Type2', 0.0);
INSERT INTO "WatchCfg" VALUES ('Index2', 1.0);
INSERT INTO "WatchCfg" VALUES ('Type3', 0.0);
INSERT INTO "WatchCfg" VALUES ('Index3', 1.0);
INSERT INTO "WatchCfg" VALUES ('Type4', 0.0);
INSERT INTO "WatchCfg" VALUES ('Index4', 1.0);
INSERT INTO "WatchCfg" VALUES ('Type5', 0.0);
INSERT INTO "WatchCfg" VALUES ('Index5', 1.0);
INSERT INTO "WatchCfg" VALUES ('Type6', 0.0);
INSERT INTO "WatchCfg" VALUES ('Index6', 1.0);
INSERT INTO "WatchCfg" VALUES ('Type7', 0.0);
INSERT INTO "WatchCfg" VALUES ('Index7', 1.0);
INSERT INTO "WatchCfg" VALUES ('Type8', 0.0);
INSERT INTO "WatchCfg" VALUES ('Index8', 1.0);
INSERT INTO "WatchCfg" VALUES ('Type9', 0.0);
INSERT INTO "WatchCfg" VALUES ('Index9', 1.0);
INSERT INTO "WatchCfg" VALUES ('Type10', 0.0);
INSERT INTO "WatchCfg" VALUES ('Index10', 1.0);

PRAGMA foreign_keys = true;
