-- nama		: alif akbar fane
-- kelas	: PTI.B / 4
-- NIM		: 24241072
-- Modul	: 2


USE db_mart;

-- SELECT statement
-- praktek 1
-- ambil kolom nama produk dari tabel produk
SELECT nama_produk FROM produk;

-- praktek 2
-- ambil kolom nama produk dan harga dari tabel produk
SELECT nama_produk, harga FROM produk;

-- praktek 3
-- ambil seluruh kolom menggunakan * 
SELECT * FROM ms_produk;

-- praktek 4
-- ambil kolom kode_produk, nama_produk dari tabel produk
SELECT kode_produk, nama_produk FROM produk;

-- ambil seluruh kolom dari tabel penjualan
SELECT * FROM penjualan;

-- PREFIX dan ALIAS
-- prefix
-- praktek 5
-- ambil nama produk dari tabel produk dan gunakan tabel sebagai prefix sebagai identitas bahwa nama produk punya produk
SELECT produk.nama_produk  FROM produk;

-- praktek 6
-- ambil nama produk dari tabel produk, gunakan tabel dan database sebagai prefix
SELECT db_mart.produk.nama_produk FROM produk;

-- alias = nama sementara pengganti nama objek database
-- praktek 7
-- ambil kolom nama produk dari tabel produk asliaskan nama produk dengan np
SELECT nama_produk AS barang FROM produk;
SELECT nama_produk np FROM produk;

-- praktek 8
-- alias tanpa keywoard as
SELECT p.nama_produk, p.harga FROM produk p;

-- praktek 9
-- menggunakan alias dan prefix bersamaan
-- ambil nama produk dari tabel produk, aliaskan tabel produk dengan msp dan jadikan prefix untuk kolom
SELECT msp.nama_produk FROM produk AS msp;

-- case 1
-- ambil nama pelanggan dan alamat dari tabel pelanggan
SELECT nama_pelanggan, alamat FROM pelanggan;

-- case 2
-- ambil nama produk dan harga dari tabael produk
SELECT nama_produk, harga FROM produk;

