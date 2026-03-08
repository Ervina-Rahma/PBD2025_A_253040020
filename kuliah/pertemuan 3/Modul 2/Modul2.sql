USE TokoRetailDB;

INSERT INTO Pelanggan (NamaDepan, NamaBelakang, 
Email, NoTelepon)
VALUES 
('Ervina', 'Rahma', 'errviinn@gmail.com', '082128808769'),
('Jasmine', 'Haruka', 'jasmin@gmail.com', NULL);

--Masukin Kategoori
INSERT INTO KategoriProduk (NamaKategori)
VALUES
('Elektronik'),
('Pakaian'),
('Buku');

--Cara Melihat
SELECT * FROM Pelanggan;

SELECT NamaDepan, NamaBelakang, 
Email From Pelanggan;

SELECT * FROM KategoriProduk;

--Masukkan data Produk yang merujuk ke KategoriID
INSERT INTO Produk (SKU, NamaProduk, Harga, Stok, KategoriID)
VALUES
('ELEC-001', 'Laptop Pro 14 inch', 15000000.00, 50, 1),
('PAK-001', 'Kaos Polos Putih', 75000.00, 200, 2),
('BUK-001', 'Dasar-Dasar SQL', 120000.00, 100, 3);

SELECT P.*, K.NamaKategori
FROM Produk AS P
JOIN KategoriProduk AS K ON P.KategoriID = K.KategoriID;