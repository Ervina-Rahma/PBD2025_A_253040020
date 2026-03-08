USE TokoBuku;

-- Soal No.1 --
SELECT b.*, k.nama_kategori
FROM buku b
JOIN kategori AS k ON b.id_kategori = k.id_kategori;

--- Soal No.2  --

-- versi 1 --
SELECT * 
FROM pelanggan 
WHERE email is NOT NULL
ORDER BY nama_pelanggan ASC;

-- versi kedua --
SELECT id_pelanggan, nama_pelanggan, email
FROM pelanggan 
ORDER BY nama_pelanggan ASC; -- ASC buat kecil kebesar --

-- Soal No.3 --
SELECT judul, harga
FROM buku
WHERE harga < = 90000
ORDER BY harga DESC;  -- DESC buat besar ke kecil --

-- Soal No.4 --
SELECT k.nama_kategori, COUNT(b.id_buku) AS jumlah_buku
FROM kategori k
JOIN buku b ON k.id_kategori = b.id_kategori
GROUP BY k.nama_kategori;

-- Soal No.5 --
SELECT p.id_penjualan, pl.nama_pelanggan, p.tanggal
FROM penjualan p
JOIN pelanggan pl ON p.id_pelanggan = pl.id_pelanggan
WHERE p.tanggal = '2025-12-01';

-- Soal No.6 --
SELECT b.id_buku, b.judul, SUM(dp.jumlah) AS total_penjualan
FROM detail_penjualan dp
JOIN buku b ON dp.id_buku = b.id_buku
GROUP BY b.id_buku, b.judul;

-- Soal No.7 --
DROP TABLE supplier;

CREATE TABLE supplier (
    id_supplier INT IDENTITY(1,1) PRIMARY KEY,
    nama_supplier VARCHAR(50) NOT NULL,
    telepon VARCHAR(20)
);

-- Soal No.8 --
INSERT INTO supplier (nama_supplier, telepon) VALUES
('Toko Bunga', '081234532'),
('Toko Baju', '089754361'),
('Toko Sepatu', '082312322');

-- Soal No.9 --
UPDATE buku
SET harga = 45000
WHERE judul = 'Naruto Vol. 1';

--hasil--
SELECT judul, harga
FROM buku
WHERE judul = 'Naruto Vol. 1';

-- Soal No.10 --
DELETE FROM detail_penjualan;
DELETE FROM penjualan;
DELETE FROM pelanggan WHERE nama_pelanggan = 'Budi';

SELECT *
FROM pelanggan
WHERE nama_pelanggan = 'Budi';