USE KEPENDUDUKAN2
GO

DELETE FROM [PERUBAHAN_STATUSWN];
DELETE FROM [PERUBAHAN_NAMA];
DELETE FROM [KEMATIAN];
DELETE FROM [PERPINDAHAN];
DELETE FROM [PERCERAIAN];
DELETE FROM [PERISTIWA_PENTING];
DELETE FROM [PENYAKIT];
DELETE FROM [KESEHATAN];
DELETE FROM [MEMILIKI_PEKERJAAN];
DELETE FROM [PEKERJAAN];
DELETE FROM [BARANG_MEWAH];
DELETE FROM [INVESTASI];
DELETE FROM [KENDARAAN];
DELETE FROM [PROPERTI];
DELETE FROM [KEKAYAAN];
DELETE FROM [BPJS];
DELETE FROM [PENDIDIKAN];
DELETE FROM [PENDUDUK];
DELETE FROM [KARTU_KELUARGA];

INSERT INTO [KARTU_KELUARGA] ([NoKK], [StatusAnggota], [Nama_Ayah], [Nama_Ibu]) VALUES
('123456789012', 'Kepala Keluarga', 'Lukman Simanjuntak', 'Lina Indah'),
('123456789012', 'Anak Kandung 1', 'Ivan Pratama', 'Raisa Fakhira'),
('123456789012', 'Isteri 1', 'Ahmad Hasan', 'Lina Sari');

INSERT INTO [PENDUDUK] ([NIK], [NamaLengkap], [Tempat_Lahir], [Tanggal_Lahir], [NoKK], [StatusAnggota],
[Alamat_Jalan], [Alamat_RTRW], [Alamat_Desa], [Alamat_Kecamatan], [Alamat_Kabupaten],
[Alamat_Provinsi], [Alamat_KodePos], [JenisKelamin], [GolDarah], [Kewarganegaraan],
[StatusPernikahan]) VALUES
('3173011503900003', 'Ivan Pratama', 'Jakarta', '1990-03-15', '123456789012', 'Kepala Keluarga',
'Jl. Cendrawasih No. 1', 'RT008/RW012', 'Serdang', 'Kemayoran', 'Jakarta Pusat', 'DKI Jakarta', '12345', 'Laki-laki', 'O', 'WNI', 'Menikah'),
('3173011807900005', 'Raisa Fakhira', 'Jakarta', '1990-07-18', '123456789012', 'Isteri 1',
'Jl. Cendrawasih No. 1', 'RT008/RW012', 'Serdang', 'Kemayoran', 'Jakarta Pusat', 'DKI Jakarta', '12345', 'Laki-laki', 'A', 'WNI', 'Menikah'),
('3173010105150006', 'Muhammad Alfarizi', 'Jakarta', '2015-05-01', '123456789012', 'Anak Kandung 1',
'Jl. Cendrawasih No. 1', 'RT008/RW012', 'Serdang', 'Kemayoran', 'Jakarta Pusat', 'DKI Jakarta', '12345', 'Laki-laki', 'O', 'WNI', 'Belum Menikah');

INSERT INTO PENDIDIKAN (NIK, PendidikanTerakhir_NamaInstansi, PendidikanTerakhir_Lokasi, PendidikanTerakhir_TahunLulus, PendidikanSekarang_NamaInstansi, PendidikanSekarang_Lokasi)
VALUES 
('3173011503900003', 'UI', 'Depok', 2012, '', ''),
('3173011807900005', 'UB', 'Malang', 2011, '', ''),
('3173010105150006', 'TK Mesra', 'Jakarta Pusat', 2021, '', '');

INSERT INTO BPJS (NoPeserta, NIK, Kelas)
VALUES 
('NOBPJS1503900003', '3173011503900003', 'Kelas 2'),
('NOBPJS1807900005', '3173011503900003', 'Kelas 2'),
('NOBPJS0105150006', '3173011503900003', 'Kelas 2');
-- ('NOBPJS', '3173011503900003', 'Kelas 2'); ini formatnya

INSERT INTO WARGA_ASING (NoPaspor, NIK, TglKedatangan, TglKepulangan, Tujuan)
VALUES 
('P123456789', '1234567890123456', '2022-01-01', '2023-01-01', 'Wisata'); --masih random

-- Buat semua kekayaan kosongin dulu ajaa --
INSERT INTO KEKAYAAN (ID, NIK, PendapatanPerTahun)
VALUES 
(1, '3173011503900003', 400000000), -- masih random juga
(2, '3173011807900005', 50000000);

INSERT INTO PROPERTI (KekayaanID, Jenis, Luas, Lokasi, Harga)
VALUES 
(1, 'Rumah', 200, 'Jakarta Pusat', 500000000),
(1, 'Apartemen', 30, 'Jakarta Pusat', 50000000);

INSERT INTO KENDARAAN (KekayaanID, Jenis_Nama, Jenis_Tipe, Jenis_CC, Jenis_BB, NJKB, Tahun)
VALUES 
(1, 'Honda Civic RS', 'Mobil Sedan', 1800, 'Bensin', 180000000, 2022),
(1, 'Honda Beat', 'Motor Skuter', 112, 'Bensin', 20000000, 2020);

INSERT INTO INVESTASI (KekayaanID, Jenis, Dividen)
VALUES 
(1, 'Saham', 50000000);

INSERT INTO BARANG_MEWAH (KekayaanID, Jenis, Nilai)
VALUES 
(1, 'Jam Tangan Rolex', 100000000);

INSERT INTO PEKERJAAN (NIK, KekayaanID, NamaPekerjaan, Jenis, GajiPerTahun, Alamat_Jalan, Alamat_RTRW, Alamat_Desa, Alamat_Kecamatan, Alamat_Kabupaten, Alamat_Provinsi, Alamat_KodePos, Perusahaan)
VALUES 
('3173011503900003', 1, 'Software Developer', 'Swasta', 300000000, 'Jl. Cisuba No. 1', 'RT001/RW002', 'Taman Sari', 'Cikidang', 'Bukit Algoritma', 'Jawa Barat', '12101', 'Tokopaedi');

INSERT INTO MEMILIKI_PEKERJAAN (NIK, PekerjaanID, WaktuPerjalanan, JamKerjaPerMinggu)
VALUES 
('3173011503900003', 1, 60, 40);

INSERT INTO KESEHATAN (NIK, Alergi, Vaksinasi, Turunan, Fisik_Disabilitas, Fisik_Tinggi, Fisik_BeratBadan)
VALUES 
('3173011503900003', 'Kacang', 'Booster', 'Miopi', 'Tidak', 175, 67);

INSERT INTO PENYAKIT (KesehatanID, TanggalDiagnosa, Status, TanggalSembuh)
VALUES 
(1, '2021-07-12', 'Sembuh', '2021-07-30');

INSERT INTO PERISTIWA_PENTING (NIK, TanggalTerjadi, NamaPeristiwa)
VALUES 
('3173011503900003', '1990-03-15', 'Kelahiran');

INSERT INTO PERCERAIAN (PeristiwaID, StatusGugatan, Alasan)
VALUES 
(1, 'Selesai', 'Kesepakatan bersama');

INSERT INTO PERPINDAHAN (PeristiwaID, Asal, Tujuan)
VALUES 
(1, 'Jakarta', 'Medan');

INSERT INTO KEMATIAN (PeristiwaID, Alamat_Jalan, Alamat_RTRW, Alamat_Desa, Alamat_Kecamatan, Alamat_Kabupaten, Alamat_Provinsi, Alamat_KodePos, Alasan)
VALUES 
(1, 'Jl. Kesehatan No. 10', '02/01', 'Sehat Desa', 'Medis Kecamatan', 'Healthy Kabupaten', 'Medis Provinsi', '54321', 'Sakit parah');

INSERT INTO PERUBAHAN_NAMA (PeristiwaID, NamaLama, Alasan)
VALUES 
(1, 'Budi Santoso', 'Pernikahan');

INSERT INTO PERUBAHAN_STATUSWN (PeristiwaID, StatusLama, Alasan)
VALUES 
(1, 'Warga Negara Indonesia', 'Naturalisasi');

INSERT INTO PENGANGKATAN_ANAK (PeristiwaID, Alasan, NoKK, StatusAnggota)
VALUES 
(1, 'Kedua orang tua meninggal', '1234-5678-9012', 'Anak');

INSERT INTO KELAHIRAN (PeristiwaID, Berat, Kondisi, Alamat_Jalan, Alamat_RTRW, Alamat_Desa, Alamat_Kecamatan, Alamat_Kabupaten, Alamat_Provinsi, Alamat_KodePos, NamaAyah, NamaIbu, Pengesahan)
VALUES 
(1, 3, 'Sehat', 'Jl. Kelahiran No. 20', 'RT003/RW004', 'Desa Sehat', 'Medis Kecamatan', 'Kabupaten Sehat', 'Medis Provinsi', '54321', 'Lukman Simanjuntak', 'Lina Indah', 'Sudah');

SELECT *
FROM PERISTIWA_PENTING

INSERT INTO [KARTU_KELUARGA] ([NoKK], [StatusAnggota], [Nama_Ayah], [Nama_Ibu])
VALUES
('123456789012', 'Kepala Keluarga', 'Rafi Sanjaya', 'Naya Wahyani'),
('123456789012', 'Isteri 1', 'Muhammad Rafi Ahmad', 'Nagita Aoka Floridina'),
('123456789012', 'Anak Kandung 1', 'Dani', 'Rana'),
('358123012391', 'Kepala Keluarga', 'Novi', 'Toti'),
('358123012391', 'Isteri 1', 'Rindi', 'Keisya'),
('358123012391', 'Anak Kandung 1', 'Rusli Marusli', 'Septina Rahmawati'),
('358123012391', 'Anak Kandung 2', 'Rusli Marusli', 'Septina Rahmawati');

INSERT INTO [PENDUDUK] ([NIK], [NamaLengkap], [Tempat_Lahir], [Tanggal_Lahir], [NoKK], [StatusAnggota],
[Alamat_Jalan], [Alamat_RTRW], [Alamat_Desa], [Alamat_Kecamatan], [Alamat_Kabupaten],
[Alamat_Provinsi], [Alamat_KodePos], [JenisKelamin], [GolDarah], [Kewarganegaraan],
[StatusPernikahan]) 
VALUES
('3173011503900003', 'Ivan Pratama', 'Jakarta', '1990-03-15', '123456789012', 'Kepala Keluarga', 'Jl. Cendrawasih No. 1', 'RT008/RW012', 'Serdang', 'Kemayoran', 'Jakarta Pusat', 'DKI Jakarta', '12345', 'Laki-laki', 'O', 'WNI', 'Menikah'),
('3173011807900005', 'Raisa Fakhira', 'Jakarta', '1990-07-18', '123456789012', 'Isteri 1', 'Jl. Cendrawasih No. 1', 'RT008/RW012', 'Serdang', 'Kemayoran', 'Jakarta Pusat', 'DKI Jakarta', '12345', 'Perempuan', 'A', 'WNI', 'Menikah'),
('3173010105150006', 'Muhammad Alfarizi', 'Jakarta', '2015-05-01', '123456789012', 'Anak Kandung 1', 'Jl. Cendrawasih No. 1', 'RT008/RW012', 'Serdang', 'Kemayoran', 'Jakarta Pusat', 'DKI Jakarta', '12345', 'Laki-laki', 'O', 'WNI', 'Belum Menikah'),
('1203281261230002', 'Rusli Marusli', 'Bandung', '1970-02-07', '358123012391', 'Kepala Keluarga', 'Jl. Diponegoro No. 18', 'RT018/RW002', 'Marpoyan', 'Tangkerang Selatan', 'Pekanbaru', 'Riau', '45678', 'Laki-laki', 'A', 'WNI', 'Menikah'),
('1203231261230012', 'Septina Rahmawati', 'Pekanbaru', '1973-09-11', '358123012391', 'Isteri 1', 'Jl. Diponegoro No. 18', 'RT018/RW002', 'Marpoyan', 'Tangkerang Selatan', 'Pekanbaru', 'Riau', '45678', 'Perempuan', 'O', 'WNI', 'Menikah'),
('1203281311230009', 'Alvin Pratama', 'Pekanbaru', '2003-12-27', '358123012391', 'Anak Kandung 1', 'Jl. Diponegoro No. 18', 'RT018/RW002', 'Marpoyan', 'Tangkerang Selatan', 'Pekanbaru', 'Riau', '45678', 'Laki-laki', 'O', 'WNI', 'Belum Menikah'),
('1203281321230021', 'Atikah Risni', 'Pekanbaru', '2005-06-29', '358123012391', 'Anak Kandung 2', 'Jl. Diponegoro No. 18', 'RT018/RW002', 'Marpoyan', 'Tangkerang Selatan', 'Pekanbaru', 'Riau', '45678', 'Perempuan', 'A', 'WNI', 'Belum Menikah');

INSERT INTO [KARTU_KELUARGA] ([NoKK], [StatusAnggota], [Nama_Ayah], [Nama_Ibu])
VALUES
('123456789012', 'Suami', 'Rafi Sanjaya', 'Naya Wahyani'),
('123456789012', 'Isteri', 'Muhammad Rafi Ahmad', 'Nagita Aoka Floridina'),
('123456789012', 'Anak 1', 'Dani', 'Rana'),
('358123012391', 'Suami', 'Novi', 'Toti'),
('358123012391', 'Isteri', 'Rindi', 'Keisya'),
('358123012391', 'Anak 1', 'Rusli Marusli', 'Septina Rahmawati'),
('358123012391', 'Anak 2', 'Rusli Marusli', 'Septina Rahmawati'),
('458125062291', 'Suami', 'Ferdinan Utama', 'Chelsy Achelsya'),
('458125062291', 'Isteri', 'Ibrahim Firdaus', 'Cahya Wacahya'),
('321125062212', 'Kepala Kel', 'Budiman', 'Selena Nur'),
('121125054211', 'Suami', 'Fahrul Utama', 'Sri Wahyuni'),
('121125054211', 'Isteri', 'Rolly Venda', 'Desti'),
('321425054112', 'Kepala Kel', 'Sutridjo', 'Wati Malawati'),
('321425054112', 'Anak 1', 'Budiman Wahudi', 'Yanti Taranti'),
('458125087692', 'Kepala Kel', 'Yanto', 'Susi Sumianti'),
('458125087692', 'Anak 1', 'Yanuar', 'Yuni Shara'),
('458125087692', 'Anak 2', 'Yanuar', 'Yuni Shara');

-- Insert data into PENDUDUK table
INSERT INTO [PENDUDUK] (
    [NIK], [NamaLengkap], [Tempat_Lahir], [Tanggal_Lahir], [NoKK], [StatusAnggota],
    [Alamat_Jalan], [Alamat_RTRW], [Alamat_Desa], [Alamat_Kecamatan], [Alamat_Kabupaten],
    [Alamat_Provinsi], [Alamat_KodePos], [JenisKelamin], [GolDarah], [Kewarganegaraan],
    [StatusPernikahan], [Usia]
) VALUES
('3173011503900003', 'Ivan Pratama', 'Jakarta', '1990-03-15', 
 (SELECT [NoKK] FROM [KARTU_KELUARGA] WHERE [NoKK] = '123456789012' AND [StatusAnggota] = 'Suami'),
 'Suami', 'Jl. Cendrawasih No. 1', 'RT008/RW012', 'Serdang', 'Kemayoran', 'Jakarta Pusat', 'DKI Jakarta', '12345', 'Laki-laki', 'O', 'WNI', 'Menikah', 32),
('3173011807900005', 'Raisa Fakhira', 'Jakarta', '1990-07-18',
 (SELECT [NoKK] FROM [KARTU_KELUARGA] WHERE [NoKK] = '123456789012' AND [StatusAnggota] = 'Isteri'),
 'Isteri', 'Jl. Cendrawasih No. 1', 'RT008/RW012', 'Serdang', 'Kemayoran', 'Jakarta Pusat', 'DKI Jakarta', '12345', 'Perempuan', 'A', 'WNI', 'Menikah', 31),
('3173010105150006', 'Muhammad Alfarizi', 'Jakarta', '2015-05-01',
 (SELECT [NoKK] FROM [KARTU_KELUARGA] WHERE [NoKK] = '123456789012' AND [StatusAnggota] = 'Anak 1'),
 'Anak 1', 'Jl. Cendrawasih No. 1', 'RT008/RW012', 'Serdang', 'Kemayoran', 'Jakarta Pusat', 'DKI Jakarta', '12345', 'Laki-laki', 'O', 'WNI', 'Belum Menikah', 7),
('1203281261230002', 'Rusli Marusli', 'Bandung', '1970-02-07', 
 (SELECT [NoKK] FROM [KARTU_KELUARGA] WHERE [NoKK] = '358123012391' AND [StatusAnggota] = 'Suami'),
 'Suami', 'Jl. Diponegoro No. 18', 'RT018/RW002', 'Marpoyan', 'Tangkerang Selatan', 'Pekanbaru', 'Riau', '45678', 'Laki-laki', 'A', 'WNI', 'Menikah', 52),
('1203231261230012', 'Septina Rahmawati', 'Pekanbaru', '1973-09-11',
 (SELECT [NoKK] FROM [KARTU_KELUARGA] WHERE [NoKK] = '358123012391' AND [StatusAnggota] = 'Isteri'),
 'Isteri', 'Jl. Diponegoro No. 18', 'RT018/RW002', 'Marpoyan', 'Tangkerang Selatan', 'Pekanbaru', 'Riau', '45678', 'Perempuan', 'O', 'WNI', 'Menikah', 48),
('1203281311230009', 'Alvin Pratama', 'Pekanbaru', '2003-12-27',
 (SELECT [NoKK] FROM [KARTU_KELUARGA] WHERE [NoKK] = '358123012391' AND [StatusAnggota] = 'Anak 1'),
 'Anak 1', 'Jl. Diponegoro No. 18', 'RT018/RW002', 'Marpoyan', 'Tangkerang Selatan', 'Pekanbaru', 'Riau', '45678', 'Laki-laki', 'O', 'WNI', 'Belum Menikah', 18),
('1203281321230021', 'Atikah Risni', 'Pekanbaru', '2005-06-29',
 (SELECT [NoKK] FROM [KARTU_KELUARGA] WHERE [NoKK] = '358123012391' AND [StatusAnggota] = 'Anak 2'),
 'Anak 2', 'Jl. Diponegoro No. 18', 'RT018/RW002', 'Marpoyan', 'Tangkerang Selatan', 'Pekanbaru', 'Riau', '45678', 'Perempuan', 'A', 'WNI', 'Belum Menikah', 16),
('3298236131234524', 'Wahyudi Riski', 'Surakarta', '1995-09-29',
 (SELECT [NoKK] FROM [KARTU_KELUARGA] WHERE [NoKK] = '458125062291' AND [StatusAnggota] = 'Suami'),
 'Suami', 'Jl. Pedaringan No. 9', 'RT008/RW012', 'Pedaringan', 'Jebres', 'Surakarta', 'Jawa Tengah', '34618', 'Laki-laki', 'O', 'WNI', 'Menikah', 28),
('329823345673124', 'Atikah Risni', 'Pekanbaru', '1996-01-01',
 (SELECT [NoKK] FROM [KARTU_KELUARGA] WHERE [NoKK] = '458125062291' AND [StatusAnggota] = 'Isteri'),
 'Isteri', 'Jl. Pedaringan No. 9', 'RT008/RW012', 'Pedaringan', 'Jebres', 'Surakarta', 'Jawa Tengah', '34618', 'Perempuan', 'O', 'WNI', 'Menikah', 27),
('229884716673148', 'Budi Berbakti', 'Boyolali', '2000-11-12',
 (SELECT [NoKK] FROM [KARTU_KELUARGA] WHERE [NoKK] = '321125062212' AND [StatusAnggota] = 'Kepala Kel'),
 'Kepala Kel', 'Jl. Mojosongo No. 13', 'RT012/RW012', 'Teras', 'Mojosongo', 'Boyolali', 'Jawa Tengah', '34612', 'Laki-Laki', 'AB', 'WNI', 'Belum Menikah', 24),
('129884716412166', 'Fauzan Andika', 'Bekasi', '1980-12-26',
 (SELECT [NoKK] FROM [KARTU_KELUARGA] WHERE [NoKK] = '121125054211' AND [StatusAnggota] = 'Suami'),
 'Suami', 'Jl. Cendana No. 123', 'RT007/RW009', 'Karangsatria', 'Tambun Utara', 'Bekasi', 'Jawa Barat', '42453', 'Laki-Laki', 'O', 'WNI', 'Menikah', 43),
('238984716673132', 'Hanindya Aisyah', 'Bekasi', '1985-11-23',
 (SELECT [NoKK] FROM [KARTU_KELUARGA] WHERE [NoKK] = '121125054211' AND [StatusAnggota] = 'Isteri'),
 'Isteri', 'Jl. Cendana No. 123', 'RT007/RW009', 'Karangsatria', 'Tambun Utara', 'Bekasi', 'Jawa Barat', '42453', 'Perempuan', 'O', 'WNI', 'Menikah', 38),
('429888726534231', 'Budiman Wahudi', 'Yogyakarta', '1960-03-11',
 (SELECT [NoKK] FROM [KARTU_KELUARGA] WHERE [NoKK] = '321425054112' AND [StatusAnggota] = 'Kepala Kel'),
 'Kepala Kel', 'Jl. Palagan', 'RT007/RW009', 'Palagan', 'Sleman', 'Yogyakarta', 'DIY Yogyakarta', '31243', 'Laki-Laki', 'O', 'WNI', 'Duda', 63),
('429884716634221', 'Alma Bintang', 'Mojokerto', '1990-09-21',
 (SELECT [NoKK] FROM [KARTU_KELUARGA] WHERE [NoKK] = '321425054112' AND [StatusAnggota] = 'Anak 1'),
 'Anak 1', 'Jl. Palagan', 'RT007/RW009', 'Palagan', 'Sleman', 'Yogyakarta', 'DIY Yogyakarta', '31243', 'Perempuan', 'AB', 'WNI', 'Belum Menikah', 33),
('512616634345123', 'Yuni Shara', 'Surakarta', '1985-04-01',
 (SELECT [NoKK] FROM [KARTU_KELUARGA] WHERE [NoKK] = '458125087692' AND [StatusAnggota] = 'Kepala Kel'),
 'Kepala Kel', 'Jl. Ronggowarsito', 'RT017/RW001', 'Pedaringan', 'Jebres', 'Surakarta', 'Jawa Tengah', '34617', 'Perempuan', 'O', 'WNI', 'Janda', 38),
('512612351245321', 'Raka Ardhinato', 'Boyolali', '2005-09-29',
 (SELECT [NoKK] FROM [KARTU_KELUARGA] WHERE [NoKK] = '321425054112' AND [StatusAnggota] = 'Anak 1'),
 'Anak 1', 'Jl. Ronggowarsito', 'RT017/RW001', 'Pedaringan', 'Jebres', 'Surakarta', 'Jawa Tengah', '34617', 'Laki-Laki', 'O', 'WNI', 'Anak 1', 18),
('512616574516418', 'Kavindra Bintang', 'Surakarta', '2009-08-11',
 (SELECT [NoKK] FROM [KARTU_KELUARGA] WHERE [NoKK] = '321425054112' AND [StatusAnggota] = 'Anak 2'),
 'Anak 2', 'Jl. Ronggowarsito', 'RT017/RW001', 'Pedaringan', 'Jebres', 'Surakarta', 'Jawa Tengah', '34617', 'Laki-Laki', 'AB', 'WNI', 'Anak 2', 14);

SELECT *
FROM PENDUDUK

SELECT *
FROM PENDIDIKAN

SELECT  DISTINCT p.NamaLengkap, pr.Jenis, v.Jenis_Nama
FROM PENDUDUK p
JOIN KEKAYAAN k ON p.NIK = k.NIK
JOIN PROPERTI pr ON pr.KekayaanID = k.ID 
JOIN KENDARAAN v ON v.KekayaanID = pr.KekayaanID
WHERE k.NIK = '3173011503900003'
GROUP BY p.NamaLengkap, pr.Jenis, v.Jenis_Nama;

SELECT *
FROM KEKAYAAN k
--JOIN PROPERTI p ON p.KekayaanID = k.ID 
JOIN KENDARAAN v ON v.KekayaanID = k.ID
WHERE k.NIK = '3173011807900005'
GROUP BY k.NIK;

SELECT p.NamaLengkap, v.Jenis_Nama, v.Jenis_CC
FROM PENDUDUK JOIN KEKAYAAN k ON p.NIK = k.NIK
JOIN KENDARAAN v ON k.KekayaanID

SELECT NIK, ISNULL(PropertiHarga, 0) + ISNULL(KendaraanNJKB, 0) + ISNULL(InvestasiDividen, 0) + ISNULL(BarangMewahNilai, 0) AS TotalKekayaan
FROM KEKAYAAN
LEFT JOIN (SELECT KekayaanID, SUM(Harga) AS PropertiHarga FROM PROPERTI GROUP BY KekayaanID) Properti ON KEKAYAAN.ID = Properti.KekayaanID
LEFT JOIN (SELECT KekayaanID, SUM(NJKB) AS KendaraanNJKB FROM KENDARAAN GROUP BY KekayaanID) Kendaraan ON KEKAYAAN.ID = Kendaraan.KekayaanID
LEFT JOIN (SELECT KekayaanID, SUM(Dividen) AS InvestasiDividen FROM INVESTASI GROUP BY KekayaanID) Investasi ON KEKAYAAN.ID = Investasi.KekayaanID
LEFT JOIN (SELECT KekayaanID, SUM(Nilai) AS BarangMewahNilai FROM BARANG_MEWAH GROUP BY KekayaanID) BarangMewah ON KEKAYAAN.ID = BarangMewah.KekayaanID
WHERE NIK = '3173011503900003';
