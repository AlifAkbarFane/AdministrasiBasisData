CREATE DATABASE db_rumah_sakit;

USE db_rumah_sakit;

CREATE TABLE `DOKTER` (
  `id_dokter` int PRIMARY KEY,
  `nama` varchar(255),
  `sp` varchar(255),
  `no_telpon` varchar(255),
  `kode_poli` int
);

CREATE TABLE `POLIKLINIK` (
  `kode_poli` int PRIMARY KEY,
  `nama_poli` varchar(255)
);

CREATE TABLE `PASIEN` (
  `NIK` int PRIMARY KEY,
  `nama` varchar(30),
  `alamat` varchar(50),
  `BOD` datetime
);

CREATE TABLE `DAFTAR` (
  `no_antrian` int PRIMARY KEY,
  `tanggal_daftar` datetime,
  `NIK` int,
  `kode_poli` int
);

CREATE TABLE `REKAM_MEDIS` (
  `no_RM` int PRIMARY KEY,
  `NIK` int,
  `kode_obat` int
);

CREATE TABLE `OBAT` (
  `kode_obat` int PRIMARY KEY,
  `nama_obat` varchar(255),
  `harga` int
);

ALTER TABLE `POLIKLINIK` ADD FOREIGN KEY (`kode_poli`) REFERENCES `DOKTER` (`kode_poli`);

ALTER TABLE `PASIEN` ADD FOREIGN KEY (`NIK`) REFERENCES `DAFTAR` (`NIK`);

ALTER TABLE `POLIKLINIK` ADD FOREIGN KEY (`kode_poli`) REFERENCES `DAFTAR` (`kode_poli`);

ALTER TABLE `DAFTAR` ADD FOREIGN KEY (`NIK`) REFERENCES `REKAM_MEDIS` (`NIK`);

ALTER TABLE `REKAM_MEDIS` ADD FOREIGN KEY (`kode_obat`) REFERENCES `OBAT` (`kode_obat`);
