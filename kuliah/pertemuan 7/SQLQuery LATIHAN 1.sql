--MEMBUAT VARIABLEL--

--CARA PERTAMA
DECLARE @Nilai INT = 100;
PRINT @Nilai;

--CARA KEDUA
DECLARE @Nama CHAR(255);
SET @Nama = 'ERVINA';
PRINT @Nama;

--MEMBUAT IF ELSE
--SAYA PENGEN JIKA NILAINYA DIATAS 70 DAIA LULUS
--JIKA TIDAK GA LULUS 

-- > 70 
DECLARE @Nilai INT = 100;
IF @Nilai > 70 
	PRINT 'LULUS'
ELSE 
	PRINT 'TIDAK LULUS'

--BUATKAN KONDISI JIKA HARGA BARANG LEBIH DARI 100.000 MAKA TAMPILKAN 'MAHAL'
--JIKA TIDAK, MAKA TAMPILKAN 'BELI'

--CARA 1
DECLARE @Harga INT = 150000
IF  @Harga > 100000
	PRINT 'MAHAL'
ELSE 
	PRINT 'BELI'

--CARA 2
DECLARE @Harga INT = 50000
IF  @Harga >= 100000
	PRINT 'MAHAL'
ELSE 
	PRINT 'BELI'

--VIEW
use KampusDB;
CREATE OR ALTER VIEW vw_Ruangan
AS
SELECT 
	KodeRuangan,
	Gedung,
	Kapasitas
FROM Ruangan;

SELECT *
FROM vw_Ruangan;

--buatkan view yang dimana 
--ketika dipanggil itu menampilkan nama mahasiswa dan juga semester yang diambil

CREATE OR ALTER VIEW vw_Mahasiswa
AS 
SELECT
M.NamaMahasiswa,
K.Semester
FROM Mahasiswa M
JOIN KRS K
ON M.MahasiswaID = K.MahasiswaID;

SELECT *



USE KampusDB;
CREATE OR ALTER VIEW vw_Mahasiswa
AS
SELECT
	NamaMahasiswa,
	Semester
FROM Mahasiswa, KRS;

SELECT *
FROM vw_Mahasiswa;