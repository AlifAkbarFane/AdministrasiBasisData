-- Nama	: Alif Akbar Fane
-- Kelas: PTIB(4)
-- NIM	: 24241072
-- Modul: 2

-- gunakan databse
USE db_mart;

-- cek deskripsi tabel
describe pelanggan; 

-- statment SELECT 
-- mengambil satu kolom dalam tabel
SELECT nama_produk FROM produk;

-- mengambil data lebih dari satu kolom
SELECT nama_produk, harga FROM produk;

-- mengambil semua kolom pada tabel
SELECT * FROM produk;

SELECT kode_produk, nama_produk FROM produk;
SELECT * FROM penjualan;

-- PREFIX dan ALIAS
-- PREFIX, adalah bagian dari objek database yang jirarki lebih tinggi
-- nama_produk = column,
-- produk = tabel
-- db_mart = database 
SELECT  produk. nama_produk FROM produk;
-- kolom ke tabel ke database 
SELECT db_mart.produk.nama_produk FROM produk;

-- Alias, nama sementara dari objek database
-- menggunakan kata kunci 'as'
-- alias pada objek (column)
SELECT nama_produk as np FROM produk;

-- alias pada objek tabel
SELECT nama_produk FROM produk as pr;

-- penggunaan prefix dan alias dalam satu querry
SELECT pr.nama_produk FROM produk as pr;

-- LATIHAN MANDIRI 
-- case 1
SELECT nama_pelanggan as costumer, alamat FROM pelanggan;

-- case 2
SELECT nama_produk, harga FROM produk;