-- Nama		: Alif Akbar Fane
-- Kelas	: PTI.B / 4
-- NIM 		: 24241072
-- Matkul	: Administrasi Basis Data

-- menggunakan data base mart
USE db_mart;

-- praktek 1
-- ORDER BY dengan 1 kolom, mengambil kolom nama_produk dan qty dari 
-- table tr_penjualan_dqlab, dengan pengurutan berdasarkan qty
SELECT nama_produk, qty FROM penjualan ORDER BY qty;

-- praktek 2 
-- ORDER BY, dengan 2 kolom, mengambil kolom nama_produk dan qty dari table 
-- penjualan, dengan pengurutan berdasarkan qty diikuti nama_produk
SELECT nama_produk, qty FROM penjualan ORDER BY qty, nama_produk;

-- Latihan Mandiri 1
-- 1.tampilkan semua kolom dari table penjualan dengan mengurutkan berdasarkan qty dan tgl_transaksi.
SELECT * FROM penjualan ORDER BY qty, tgl_transaksi;

-- 2.tampilkan semua kolom dari table ms_pelanggan dengan mengurutkan berdasarkan nama_pelanggan.
SELECT * FROM pelanggan ORDER BY nama_pelanggan;

-- 3.tampilkan semua kolom dari table ms_pelanggan dengan mengurutkan berdasarkan alamat.
SELECT * FROM pelanggan ORDER BY alamat;

-- praktek 3
-- menggunakan DESC pada ORDER BY
-- mengambil kolom nama_produk dan qty dari table penjualan_dqlab, 
-- dengan pengurutan berdasarkan qty dari nilai terbesar ke terkecil
SELECT nama_produk, qty FROM penjualan ORDER BY qty DESC;

-- praktek 4
-- Menggunakan ASC dan DESC pada Dua Kolom
-- mengambil kolom nama_produk dan qty dari table penjualan,
-- dengan pengurutan berdasarkan qty dari nilai terbesar ke terkecil, dan nama_produk dari nilai terkecil ke terbesar
SELECT nama_produk, qty FROM penjualan ORDER BY qty DESC, nama_produk ASC;

-- latihan mandiri 2
-- 1.tampilkan semua kolom dari table penjualan dengan mengurutkan berdasarkan tgl_transaksi secara descending dan qty secara ascending.
SELECT * FROM penjualan ORDER BY tgl_transaksi DESC, qty ASC;

-- 2.tampilkan semua kolom dari table pelanggan dengan mengurutkan berdasarkan nama_pelanggan secara descending.
SELECT * FROM pelanggan ORDER BY nama_pelanggan DESC;

-- 3.tampilkan semua kolom dari table pelanggan dengan mengurutkan berdasarkan alamat secara descending.
SELECT * FROM pelanggan ORDER BY alamat DESC;

-- praktek 5
-- ORDER BY tidak hanya bisa menggunakan nama field tapi juga bisa menggunakan 
-- hasil perhitungan dari nama field, baik dengan operator maupun fungsi. 
-- menampilkan nama produk, jumlah, harga dan hasil total harga dari perhitungan jumlah dikalikan harga, 
-- diurutkan dari nilai terbesar ke terkecil dari total harga tersebut
SELECT nama_produk, qty, harga ,qty*harga  AS total FROM penjualan ORDER BY harga*qty  DESC;

-- latihan mandiri 3
-- Cobalah pengurutan dengan ekspresi total harga menggunakan 
-- rumusan jumlah barang dikali harga barang dikurangi diskon.
SELECT nama_produk, harga, (qty*harga-diskon_persen) AS diskon_persen FROM penjualan ORDER BY harga*qty-diskon_persen;

-- praktek 6
-- menggunakan WHERE pada ORDER BY
-- ORDER BY bisa digabungkan dengan keyword WHERE untuk melakukan pengurutan dari hasil filtering data. 
-- mengambil kolom nama produk (nama_produk) dan jumlah pembelian (qty) 
-- dari table penjualan dengan nama produk yang berawalan karakter ‘F’ dan diurutkan berdasarkan kuantitas terbanyak
SELECT nama_produk, qty FROM penjualan WHERE nama_produk LIKE 'F%' ORDER BY qty DESC;

-- latihan mandiri 4
-- 1.tampilkan semua kolom dari transaksi penjualan yang memiliki diskon dan diurutkan berdasarkan harga tertinggi.
SELECT * FROM penjualan WHERE diskon_persen > 0 ORDER BY harga DESC;

-- 2.tampilkan kolom nama produk, kuantitas pembelian dan harga dari transaksi penjualan yang memiliki 
-- harga minimal seratus ribu rupiah dan diurutkan berdasarkan harga tertinggi.
SELECT nama_produk, qty, harga FROM penjualan WHERE harga >= 100000 ORDER BY harga DESC;

-- 3.tampilkan kolom nama produk, kuantitas pembelian dan harga dari transaksi 
-- penjualan yang memiliki harga minimal seratus ribu rupiah atau nama produk 
-- berawalan karakter ‘T’ dan diurutkan berdasarkan diskon tertinggi.
SELECT nama_produk, qty, harga FROM penjualan WHERE harga >= 100000 OR nama_produk LIKE 'T%'ORDER BY diskon_persen DESC;

-- praktek 7
-- Menggunakan Fungsi Agregasi SUM
SELECT SUM(qty) FROM penjualan;

-- praktek 8
-- Menggunakan Fungsi Agregasi COUNT
SELECT COUNT(*) FROM penjualan;

-- praktek 9
-- Menggunakan SUM dan COUNT berbarengan
-- menghitung penjumlahan nilai qty dan menghitung jumlah row keseluruhan dari 
SELECT SUM(qty), COUNT(*) FROM penjualan;

-- praktek 10
-- Menggunakan Fungsi AVG, MAX dan MIN
-- menghitung nilai rata-rata, minimum, dan maksimum dari keseluruhan nilai kuantitas barang dari data transaksi penjualan 
SELECT AVG(qty), MAX(qty), MIN(qty) FROM penjualan;

-- praktek 11
-- Menggunakan COUNT(DISTINCT) menghitung jumlah nilai unik dari nama produk pada table transaksi penjualan 
SELECT COUNT(DISTINCT nama_produk) FROM penjualan;

-- praktek 12
-- COUNT(*) dan COUNT(DISTINCT) menampilkan jumlah seluruh row dan jumlah unik dari nama produk pada table transaksi penjualan 
SELECT COUNT(*), COUNT(DISTINCT nama_produk) FROM penjualan;

-- praktel 13
-- Penggunaan Field Lain + Fungsi Agregasi
-- menarik field nama produk dan fungsi agregasi untuk nilai qty pada table transaksi penjualan
SELECT nama_produk, MAX(qty) FROM penjualan;

-- praktek 14
-- Penggunaan GROUP BY Satu Kolom
SELECT nama_produk FROM penjualan GROUP BY nama_produk;

-- praktek 15
-- Penggunaan GROUP BY Dua Kolom
-- mengambil grouping dari kolom nama produk dan qty terhadap tabel transaksi penjualan
SELECT nama_produk, qty FROM penjualan GROUP BY nama_produk, qty;

-- praktek 16
-- mengambil jumlah qty dari grouping nama produk terhadap seluruh row tabel transaksi penjualan
SELECT nama_produk, SUM(qty) FROM penjualan GROUP BY nama_produk;

-- praktek 17
-- mengambil jumlah qty dari grouping nama produk terhadap seluruh row tabel transaksi penjualan, 
-- diurutkan berdasarkan jumlah qty terbesar
SELECT nama_produk, sum(qty) FROM penjualan GROUP BY nama_produk ORDER BY sum(qty) desc;

-- praktek 18
-- penggunaan HAVING, untuk mengambil jumlah qty di atas nilai 2 dari grouping nama produk 
-- terhadap seluruh row tabel transaksi penjualan
SELECT nama_produk, sum(qty) FROM penjualan GROUP BY nama_produk HAVING sum(qty) > 2;

-- Latihan Mandiri 
-- 1.Melihat daftar nama produk yang total jumlah produk terjual per kelompok nama produk adalah di atas nilai 4. 
SELECT nama_produk, sum(qty) FROM penjualan GROUP BY nama_produk HAVING sum(qty) > 4;

-- 2.Melihat daftar nama produk yang total jumlah produk terjual per kelompok nama produk sama dengan 9. 
SELECT nama_produk, sum(qty) FROM penjualan GROUP BY nama_produk HAVING sum(qty) > 9;

-- 3. Melihat daftar kelompok nama produk dan total nilai penjualan (harga dikalikan jumlah dikurangi diskon) 
-- dengan dan urutan berdasarkan nilai penjualan terbesar. 
SELECT nama_produk, SUM((harga * qty) - diskon_persen) AS total_nilai_penjualan
FROM penjualan GROUP BY nama_produk ORDER BY total_nilai_penjualan DESC;


