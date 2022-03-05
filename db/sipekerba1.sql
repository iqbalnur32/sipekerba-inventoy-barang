/*
 Navicat Premium Data Transfer

 Source Server         : 127.0.0.1
 Source Server Type    : MySQL
 Source Server Version : 100418
 Source Host           : localhost:3306
 Source Schema         : sipekerba

 Target Server Type    : MySQL
 Target Server Version : 100418
 File Encoding         : 65001

 Date: 04/03/2022 16:29:54
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for divisi
-- ----------------------------
DROP TABLE IF EXISTS `divisi`;
CREATE TABLE `divisi`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `kodedivisi` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `divisi` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 35 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of divisi
-- ----------------------------
INSERT INTO `divisi` VALUES (1, 'TI', 'Teknologi Informasi');
INSERT INTO `divisi` VALUES (2, 'PP', 'Pelayanan dan Pemeliharaan');
INSERT INTO `divisi` VALUES (3, 'SPI', 'Satuan Pengawasan Intern');
INSERT INTO `divisi` VALUES (4, 'MGT', 'Manajemen Gerbang Tol');
INSERT INTO `divisi` VALUES (5, 'UMUM', 'Umum');
INSERT INTO `divisi` VALUES (6, 'SDM', 'Sumber Daya Manusia');
INSERT INTO `divisi` VALUES (7, 'TQA', 'Teknik & Quality Assurance (QA)');
INSERT INTO `divisi` VALUES (8, 'KEU', 'Keuangan');
INSERT INTO `divisi` VALUES (9, 'HKM', 'Hukum');
INSERT INTO `divisi` VALUES (10, 'SEKPER', 'Sekretaris Perusahaan');
INSERT INTO `divisi` VALUES (11, 'AKT', 'Akuntansi dan Perpajakan');
INSERT INTO `divisi` VALUES (12, 'PU', 'Pengembangan Usaha');
INSERT INTO `divisi` VALUES (13, 'SIM & Anggaran', 'Sistem Informasi Manajemen dan Anggaran');
INSERT INTO `divisi` VALUES (14, 'PENGADAAN', 'Pengadaan');
INSERT INTO `divisi` VALUES (15, 'DIRKOM', 'Direksi & Komisaris');

-- ----------------------------
-- Table structure for kategori
-- ----------------------------
DROP TABLE IF EXISTS `kategori`;
CREATE TABLE `kategori`  (
  `idkategori` int NOT NULL AUTO_INCREMENT,
  `namakategori` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`idkategori`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of kategori
-- ----------------------------
INSERT INTO `kategori` VALUES (1, 'Motherboard');
INSERT INTO `kategori` VALUES (2, 'Processor');
INSERT INTO `kategori` VALUES (3, 'Hard Disk');
INSERT INTO `kategori` VALUES (4, 'Memory');

-- ----------------------------
-- Table structure for komponen
-- ----------------------------
DROP TABLE IF EXISTS `komponen`;
CREATE TABLE `komponen`  (
  `idkomponen` int NOT NULL AUTO_INCREMENT,
  `idkategori` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `idmerk` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `tipe` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `spesifikasi` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `keterangan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `stats` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`idkomponen`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of komponen
-- ----------------------------
INSERT INTO `komponen` VALUES (1, '1', '1', 'H81M', '-', '-', 'AKTIF');
INSERT INTO `komponen` VALUES (2, '2', '2', 'CORE I-5', '4570', '3.20 GHz', 'AKTIF');
INSERT INTO `komponen` VALUES (3, '3', '3', 'SATA', '1 TB', '-', 'AKTIF');
INSERT INTO `komponen` VALUES (4, '3', '3', 'SATA', '500 GB', '-', 'AKTIF');
INSERT INTO `komponen` VALUES (5, '3', '3', 'SSD', '256 GB', '-', 'AKTIF');
INSERT INTO `komponen` VALUES (6, '4', '4', 'DDR3', '8 GB', '-', 'AKTIF');

-- ----------------------------
-- Table structure for merk
-- ----------------------------
DROP TABLE IF EXISTS `merk`;
CREATE TABLE `merk`  (
  `idmerk` int NOT NULL AUTO_INCREMENT,
  `namamerk` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`idmerk`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of merk
-- ----------------------------
INSERT INTO `merk` VALUES (1, 'ASUS');
INSERT INTO `merk` VALUES (2, 'INTEL');
INSERT INTO `merk` VALUES (3, 'SEAGATE');
INSERT INTO `merk` VALUES (4, 'V-GEN');

-- ----------------------------
-- Table structure for pc
-- ----------------------------
DROP TABLE IF EXISTS `pc`;
CREATE TABLE `pc`  (
  `idpc` int NOT NULL AUTO_INCREMENT,
  `idpengguna` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `namapc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ipaddress` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `internet` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `catatan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`idpc`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of pc
-- ----------------------------
INSERT INTO `pc` VALUES (1, '1', 'ti-ay', '172.16.0.0', 'YA', 'test');
INSERT INTO `pc` VALUES (2, '2', 'ti-ay', '172.16.0.0', 'YA', 'test');
INSERT INTO `pc` VALUES (3, '4', 'ti-ay', '172.16.0.0', 'TIDAK', 'test');

-- ----------------------------
-- Table structure for pengaduan
-- ----------------------------
DROP TABLE IF EXISTS `pengaduan`;
CREATE TABLE `pengaduan`  (
  `id` varchar(9) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `n_pelapor` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `j_pelapor` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `d_pelapor` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `n_barang` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ket` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `status` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ket_petugas` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `tgl_lapor` date NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of pengaduan
-- ----------------------------
INSERT INTO `pengaduan` VALUES ('LKTI-0001', 'Marta', 'Staf', 'SDM', 'Aplikasi Ruang Rapat', 'Tidak bisa digunakan', 'Selesai diproses', 'Server cek oke\r\nRestart PC \r\nTest Aplikasi oke', '2022-01-04');
INSERT INTO `pengaduan` VALUES ('LKTI-0002', 'Rifai', 'Staf', 'Umum', 'Aplikasi Arsip', 'Tidak bisa diakses', 'Selesai diproses', 'Gangguan dari active directory', '2022-01-04');
INSERT INTO `pengaduan` VALUES ('LKTI-0003', 'Kalistus', 'Manajer', 'Akuntansi', 'Aplikasi Cash Management', 'Tidak bisa diakses', 'Selesai diproses', 'Cek aplikasi oke\r\nCek koneksi jaringan laptop disabled\r\nEnabled jaringan aplikasi oke', '2022-01-04');
INSERT INTO `pengaduan` VALUES ('LKTI-0004', 'Andi Yudi', 'STAFF', 'Teknologi Informasi', 'Aplikasi Help Desk', 'Belum Dicoba', 'Sedang diproses', 'Dicek dulu', '2022-02-07');

-- ----------------------------
-- Table structure for pengguna
-- ----------------------------
DROP TABLE IF EXISTS `pengguna`;
CREATE TABLE `pengguna`  (
  `idkary` int NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `jabatan` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `unitkerja` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `statkary` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`idkary`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of pengguna
-- ----------------------------
INSERT INTO `pengguna` VALUES (4, 'Andi Yudi', 'STAFF', '1', 'AKTIF');
INSERT INTO `pengguna` VALUES (5, 'Samsul', 'STAFF', '1', 'AKTIF');

-- ----------------------------
-- Table structure for rakitan
-- ----------------------------
DROP TABLE IF EXISTS `rakitan`;
CREATE TABLE `rakitan`  (
  `idrakitan` int NOT NULL AUTO_INCREMENT,
  `idpc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `idkomponen` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `barcode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `jumlah` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`idrakitan`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of rakitan
-- ----------------------------
INSERT INTO `rakitan` VALUES (1, '1', '1', '16442', '1');
INSERT INTO `rakitan` VALUES (2, '1', '2', '16442', '1');
INSERT INTO `rakitan` VALUES (3, '1', '5', '16442', '1');
INSERT INTO `rakitan` VALUES (4, '1', '3', '16442', '1');
INSERT INTO `rakitan` VALUES (5, '1', '4', '16442', '1');
INSERT INTO `rakitan` VALUES (6, '1', '6', '16442', '2');
INSERT INTO `rakitan` VALUES (7, '2', '1', '16442', '1');
INSERT INTO `rakitan` VALUES (8, '2', '2', '16442', '1');
INSERT INTO `rakitan` VALUES (9, '2', '5', '16442', '1');
INSERT INTO `rakitan` VALUES (10, '2', '3', '16442', '1');
INSERT INTO `rakitan` VALUES (11, '2', '6', '16442', '2');
INSERT INTO `rakitan` VALUES (12, '3', '1', '16442', '1');
INSERT INTO `rakitan` VALUES (13, '3', '2', '16442', '1');
INSERT INTO `rakitan` VALUES (14, '3', '3', '16442', '1');
INSERT INTO `rakitan` VALUES (15, '3', '4', '16442', '1');
INSERT INTO `rakitan` VALUES (16, '3', '5', '16442', '1');
INSERT INTO `rakitan` VALUES (17, '3', '6', '16442', '2');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `user_id` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `username` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `img` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `status` tinyint NOT NULL,
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('M0701001', 'admin', '$2y$10$QfxGHsJgmrvZnAppgFsXke1Esq5K58yzahUZgyiEc1/wzGonU7QpS', 'Administrator', '1384905078_443466844_default.jpg', 1);
INSERT INTO `user` VALUES ('M2007069', 'andiyudi', '$2y$10$peMZ99nv7KMhpJArw2jWCewpOWEGpWm5jMlJVywsOcnMaWf.eWD5O', 'Andi Yudi Rahmat Rusli', 'default.jpg', 1);

SET FOREIGN_KEY_CHECKS = 1;
