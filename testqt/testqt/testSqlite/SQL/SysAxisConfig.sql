/*
 Navicat Premium Data Transfer

 Source Server         : QSQLITE
 Source Server Type    : SQLite
 Source Server Version : 3021000
 Source Schema         : main

 Target Server Type    : SQLite
 Target Server Version : 3021000
 File Encoding         : 65001

 Date: 12/10/2024 14:00:29
*/

PRAGMA foreign_keys = false;

-- ----------------------------
-- Table structure for SysAxisConfig
-- ----------------------------
DROP TABLE IF EXISTS "SysAxisConfig";
CREATE TABLE "SysAxisConfig" (
  "Axis" text,
  "bAxisEnable" TEXT,
  "nAxisType" TEXT,
  "nAxisSubType" TEXT,
  "nSysIndex" TEXT,
  "ncAxisName" TEXT,
  "disAxisName" TEXT
);

-- ----------------------------
-- Records of SysAxisConfig
-- ----------------------------
INSERT INTO "SysAxisConfig" VALUES ('Axis1', 1, 1, 0, 0, 'X', 'X');
INSERT INTO "SysAxisConfig" VALUES ('Axis2', 1, 1, 0, 0, 'Y', 'Y');
INSERT INTO "SysAxisConfig" VALUES ('Axis3', 1, 1, 0, 0, 'Z', 'Z');
INSERT INTO "SysAxisConfig" VALUES ('Axis4', 1, 1, 0, 0, 'B', 'B');
INSERT INTO "SysAxisConfig" VALUES ('Axis5', 1, 1, 0, 0, 'C', 'C');
INSERT INTO "SysAxisConfig" VALUES ('Axis6', 1, 0, 0, 0, 'A', 'A');
INSERT INTO "SysAxisConfig" VALUES ('Axis7', 1, 3, 0, 0, 'S', 'S');
INSERT INTO "SysAxisConfig" VALUES ('Axis8', 0, 0, 0, 0, '', '');
INSERT INTO "SysAxisConfig" VALUES ('Axis9', 0, 0, 0, 0, '', '');
INSERT INTO "SysAxisConfig" VALUES ('Axis10', 0, 0, 0, 0, '', '');
INSERT INTO "SysAxisConfig" VALUES ('Axis11', 0, 0, 0, 0, '', '');
INSERT INTO "SysAxisConfig" VALUES ('Axis12', 0, 0, 0, 0, '', '');
INSERT INTO "SysAxisConfig" VALUES ('Axis13', 0, 0, 0, 0, '', '');
INSERT INTO "SysAxisConfig" VALUES ('Axis14', 0, 0, 0, 0, '', '');
INSERT INTO "SysAxisConfig" VALUES ('Axis15', 0, 0, 0, 0, '', '');
INSERT INTO "SysAxisConfig" VALUES ('Axis16', 0, 0, 0, 0, '', '');
INSERT INTO "SysAxisConfig" VALUES ('Axis17', 0, 0, 0, 0, '', '');
INSERT INTO "SysAxisConfig" VALUES ('Axis18', 0, 0, 0, 0, '', '');
INSERT INTO "SysAxisConfig" VALUES ('Axis19', 0, 0, 0, 0, '', '');
INSERT INTO "SysAxisConfig" VALUES ('Axis20', 0, 0, 0, 0, '', '');
INSERT INTO "SysAxisConfig" VALUES ('Axis21', 0, 0, 0, 0, '', '');
INSERT INTO "SysAxisConfig" VALUES ('Axis22', 0, 0, 0, 0, '', '');
INSERT INTO "SysAxisConfig" VALUES ('Axis23', 0, 0, 0, 0, '', '');
INSERT INTO "SysAxisConfig" VALUES ('Axis24', 0, 0, 0, 0, '', '');
INSERT INTO "SysAxisConfig" VALUES ('Axis25', 0, 0, 0, 0, '', '');
INSERT INTO "SysAxisConfig" VALUES ('Axis26', 0, 0, 0, 0, '', '');
INSERT INTO "SysAxisConfig" VALUES ('Axis27', 0, 0, 0, 0, '', '');
INSERT INTO "SysAxisConfig" VALUES ('Axis28', 0, 0, 0, 0, '', '');
INSERT INTO "SysAxisConfig" VALUES ('Axis29', 0, 0, 0, 0, '', '');
INSERT INTO "SysAxisConfig" VALUES ('Axis30', 0, 0, 0, 0, '', '');
INSERT INTO "SysAxisConfig" VALUES ('Axis31', 0, 0, 0, 0, '', '');
INSERT INTO "SysAxisConfig" VALUES ('Axis32', 0, 0, 0, 0, '', '');

PRAGMA foreign_keys = true;
