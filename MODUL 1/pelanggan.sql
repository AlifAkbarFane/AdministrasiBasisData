-- NAMA	: 	Alif Akbar Fane
-- Kelas: 	B
-- NIM	:	24241072
-- Modul: 	1

-- menampilkan list database 
SHOW DATABASES;

DROP DATABASE IF EXISTS db_mart;

CREATE DATABASE db_mart;

-- menggunakan database yang dibuat
USE db_mart;

-- cek tabel dalam database
SHOW TABLES;

-- cara membuat tabel 
CREATE TABLE pelanggan (
kode_pelanggan VARCHAR (10) PRIMARY KEY,
no_urut INT,
nama_pelanggan VARCHAR (30),
alamat VARCHAR (100)
);

-- mengisi data di tabel
INSERT INTO pelanggan (
kode_pelanggan,
no_urut,
nama_pelanggan,
alamat)
VALUES
("cust01", 1, "	Eva Novianti, S.H.", " Vila Sempilan, No. 67 - Kota B "),
("cust02", 2,	" Heidi Goh	", "Vila Sempilan No. 11 - Kota B "),
("cust03", 3,	"Unang Handoko",	"Vila Sempilan, No. 1 - Kota B"),
("cust05", 5, "	Tommy Sinaga ","	Vila Permata Intan Berkilau, Blok A1/2 "),
("cust06",	6, "	Irwan Setianto", "	Vila Gunung Seribu, Blok O1 - No. 1 - Kota C "),
("cust07", 	7, "	Agus Cahyono ", "	Vila Gunung Seribu, Blok F4 - No. 8 "),
("cust08", 	8,	"Maria Sirait	","Vila Bukit Sagitarius, Gang. Sawit No. 3 "),
("cust09",	9,	"Ir. Ita Nugraha",	"Vila Bukit Sagitarius, Gang Kelapa No. 6"),
("cust10",	10,	"Djoko Wardoyo, Drs.", "	Vila Bukit Sagitarius, Blok A1 No. 1"); 

SELECT * FROM pelanggan;

