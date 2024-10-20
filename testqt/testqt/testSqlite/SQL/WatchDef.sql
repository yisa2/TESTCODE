/*
 Navicat Premium Data Transfer

 Source Server         : QSQLITE
 Source Server Type    : SQLite
 Source Server Version : 3021000
 Source Schema         : main

 Target Server Type    : SQLite
 Target Server Version : 3021000
 File Encoding         : 65001

 Date: 12/10/2024 14:00:48
*/

PRAGMA foreign_keys = false;

-- ----------------------------
-- Table structure for WatchDef
-- ----------------------------
DROP TABLE IF EXISTS "WatchDef";
CREATE TABLE "WatchDef" (
  "abbr" text NOT NULL,
  "name" text,
  "paraType" integer,
  "maxIndex" integer,
  "minIndex" integer,
  "intWordNum" integer,
  "wordNum" integer,
  "addr" integer
);

-- ----------------------------
-- Records of WatchDef
-- ----------------------------
INSERT INTO "WatchDef" VALUES ('PrfPos', '规划位置', 1, 20, 1, 2, 3, 0);
INSERT INTO "WatchDef" VALUES ('EncPos', '编码器位置', 1, 20, 1, 2, 2, 2);
INSERT INTO "WatchDef" VALUES ('PrfVel', '规划速度', 2, 20, 1, 1, 2, 1);
INSERT INTO "WatchDef" VALUES ('EncVel', '编码器速度', 2, 20, 1, 1, 2, 3);
INSERT INTO "WatchDef" VALUES ('AxisPrfPos', 'Axis规划位置', 1, 20, 1, 2, 3, 4);
INSERT INTO "WatchDef" VALUES ('AxisEncPos', 'Axis编码器位置', 1, 20, 1, 2, 3, 6);
INSERT INTO "WatchDef" VALUES ('AxisPrfVel', 'Axis规划速度', 2, 20, 1, 1, 2, 5);
INSERT INTO "WatchDef" VALUES ('AxisEncVel', 'Axis编码器速度', 2, 20, 1, 1, 2, 7);
INSERT INTO "WatchDef" VALUES ('CrdVel', '坐标系合成速度', 2, 2, 1, 1, 2, 19);
INSERT INTO "WatchDef" VALUES ('DAC', 'DAC输出值', 0, 20, 1, 1, 1, 8);
INSERT INTO "WatchDef" VALUES ('DACC', 'DAC补偿后输出值', 0, 16, 1, 1, 1, 39);
INSERT INTO "WatchDef" VALUES ('AD', 'ADC输入值', 0, 4, 1, 1, 1, 50);
INSERT INTO "WatchDef" VALUES ('FilterPrfPos', '滤波后规划位置', 1, 20, 1, 2, 3, 37);
INSERT INTO "WatchDef" VALUES ('FilterEncPos', '滤波后编码器位置', 1, 20, 1, 2, 3, 38);
INSERT INTO "WatchDef" VALUES ('ErrPos', '位置环跟随误差', 1, 20, 1, 2, 3, 21);

PRAGMA foreign_keys = true;
