-- Nama	: Alif Akbar Fane
-- Kelas: pti b (4)
-- NIM	: 24241072
-- Modul: 3

-- menggunakan databse
USE db_mart;

-- praktek 1
-- menggunakan statment SELECT untuk menampilkan nilai literal
SELECT 77;
SELECT 77 AS angka;

-- praktek 2
-- menggunakan 'SELECT' statment untuk menampilkan beberapa nilai literal dengan tipe data yang berbeda
SELECT 77 AS angka, true AS nilai_logika, 'pti' as teks; 

-- praktek 3 
-- menggunakan 'SELECT' statment untuk menampilkan 'null'
SELECT NULL AS kosong;

-- praktek 4
-- menggunakan SELECT statment untuk melakukan kalkulasi dengan ekspresi matematika
SELECT 5%2 AS sisa_bagi, 5/2 AS hasil_bagi1,5 DIV 2 AS hasil_bagi2;

-- latihan mandiri 1
-- hitung 4*2 (4 dikali 2)
SELECT 4*2;

-- hitung (4*8)%7
SELECT (4*8)%7 AS sisa_bagi;

-- hitung 4*8 mod 7
SELECT 4*8 mod 7 AS sisa_bagi_mod;

SELECT 4*2, (4*8)%7, 4*8 MOD 7 AS sisa_bagi_mod;

-- praktek 5
-- menggunakan 'SELECT' statment untuk melakukan kalkulasi *field* *table* dengan ekspresi matematika
SELECT qty*harga AS total_beli FROM penjualan;

-- praktek 6
-- menggunakan SELECT statment untuk melakukan operasi perbandingan.
SELECT 5=5, 5<>5, 5<>4, 5!=5, 5!=4, 5>4;

-- latihan mandiri 2
-- lakukan perbandingan 1 = true
SELECT 1 = true AS hasil;
-- lakukan perbandingan 1 = false
SELECT 1 = false AS hasil;
-- lakukan perbandingan 5>=5
SELECT 5>=5 AS hasil;
-- lakukan perbandingan 5.2=5.20000 
SELECT 5.2=5.20000 AS hasil;
-- lakukan perbandinga  NULL = 1
SELECT NULL = 1 AS hasil;
-- lakukan perbandingan NULL = NULL
SELECT NULL = NULL AS hasil;

-- gabunggkan seluruh soal
SELECT 1=TRUE as hasil, 1=FALSE as hasil, 5>=5, 5.2=5.20000 as hasil, NULL=1 as hasil, NULL=NULL AS hasil;

-- praktek 7 
-- melakukan operasi perbandingan pada field qty table penjualan
SELECT nama_produk, qty > 3 FROM penjualan;

-- praktek 8 
-- mencoba menggunakan beragam fungsi DATE dalam satu statment SELECT
SELECT POW(3,2), ROUND(3.14), ROUND(3.54), 
	ROUND(3.155, 1), ROUND(3.155, 2),
	FLOOR(4.28), FLOOR(4.78), 
	CEILING(4.39), CEILING(4.55);

-- praktek 9 
-- mencoba menggunakan beragam fungsi DATE dalam satu statment SELECT
SELECT NOW(), YEAR('2022-05-03'), DATEDIFF('2022-07-22', '2022-05-03'), DAY('2022-05-03');

-- latihan mandiri 3 
-- hitung selisih tanggal '2022-07-23'
SELECT DATEDIFF('2022-07-23', NOW()) AS tanggal_selisih;

-- ekstrak elemen tahun dari tanggal ini '2022-07-23'
SELECT YEAR('2022-07-23') AS tahun;

-- ekstrak elemen bulan dari tanggal ini '2022-07-23'
SELECT MONTH('2022-07-23') AS bulan;

-- ekstrak elemen hari dari tanggal ini '2022-07-23'
SELECT DAY('2022-07-23') AS hari;

-- ekstrak elemen tahun dari tanggal saat ini '2022-07-23'
SELECT YEAR(NOW()) AS sekarang;

-- praktek 10
-- Penggunaan fungsi tanggal pada kolom table
SELECT datediff(now(), tgl_transaksi ) from penjualan;

-- praktek 11
-- mengambil data nama_produk, dan qty dari tabel penjualan yang qty lebih dari 3
SELECT nama_produk, qty FROM penjualan WHERE qty>3;

-- praktek 12
-- mengambil data nama produk dan qty yang terjual pada dari tabel penjualan 
-- yang qty lebih dari 3 dan transaksinya terjadi pada bulan juni
SELECT nama_produk, qty, tgl_transaksi FROM penjualan WHERE qty>3 AND MONTH(tgl_transaksi)=6;

-- praktek 13
-- mengambil nama produk Mengambil nama produk, qty, dan tanggal transaksi 
-- untuk produk dengan nama 'Flashdisk 32 GB' dari tabel penjualan
SELECT nama_produk, qty, tgl_transaksi FROM penjualan WHERE nama_produk ='Flashdisk 32 GB';

-- praktek 14
-- mengambil nama produk dari tabel penjualan yang nama produknya memiliki huruf 'f' sebagai awal kata
SELECT nama_produk FROM penjualan WHERE nama_produk LIKE 'f%';

-- Latihan Mandiri 4
-- Ambil nama_produk yang memiliki karakter kedua ‘a’ pada table tr_penjualan
SELECT nama_produk FROM penjualan WHERE nama_produk LIKE '_a%';

-- Ambil kategori_produk yang mengandung huruf ‘t’ pada table ms_produk
SELECT kategori_produk FROM produk WHERE kategori_produk LIKE '%t%';

-- Ambil kategori_produk yang mengandung karakter ‘un’ pada table ms_produk
SELECT kategori_produk FROM produk WHERE kategori_produk LIKE '%un%';

-- Praktek 15
-- Mengambil nama produk dari table tr_penjualan yang
-- memiliki pola teks berawalan huruf F dan qty penjualan di atas 2
SELECT nama_produk, qty FROM penjualan WHERE nama_produk LIKE 'f%' AND qty >2;

-- praktek 16
SELECT nama_produk, qty FROM penjualan WHERE nama_produk LIKE 'f%' OR qty > 2;
