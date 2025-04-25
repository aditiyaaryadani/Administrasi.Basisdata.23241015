CREATE DATABASE Toko_Bangunan;
USE Toko_Bangunan;

-- Tabel pelanggan
CREATE TABLE pelanggan (
    no_telpon INT PRIMARY KEY,
    alamat VARCHAR(255),
    tanggal_pembelian INT
);
INSERT INTO pelanggan VALUES 
(628123456789, 'Jl. Merdeka No. 1', 20230401),
(628987654321, 'Jl. Sudirman No. 5', 20230402),
(628112233445, 'Jl. Diponegoro No. 10', 20230403);

-- Tabel nama_pelanggan
CREATE TABLE nama_pelanggan (
    nama VARCHAR(255),
    no_telpon INT,
    FOREIGN KEY (no_telpon) REFERENCES pelanggan(no_telpon)
);
INSERT INTO nama_pelanggan VALUES 
('Andi', 628123456789),
('Budi', 628987654321),
('Citra', 628112233445);

-- Tabel barang
CREATE TABLE barang (
    nama VARCHAR(255) PRIMARY KEY,
    harga INT,
    ukuran INT,
    tanggal_pembelian DATETIME
);
INSERT INTO barang VALUES 
('Laptop', 10000000, 14, '2023-04-01 10:00:00'),
('Smartphone', 5000000, 6, '2023-04-02 11:30:00'),
('Headset', 250000, 1, '2023-04-03 14:00:00');

-- Tabel beli
CREATE TABLE beli (
    no_telpon INT,
    nama_barang VARCHAR(255),
    qty INT,
    total_bayar INT,
    tanggal_pembelian INT,
    FOREIGN KEY (no_telpon) REFERENCES pelanggan(no_telpon),
    FOREIGN KEY (nama_barang) REFERENCES barang(nama)
);
INSERT INTO beli VALUES 
(628123456789, 'Laptop', 1, 10000000, 20230401),
(628987654321, 'Smartphone', 2, 10000000, 20230402),
(628112233445, 'Headset', 3, 750000, 20230403);

-- Tabel kategori_barang
CREATE TABLE kategori_barang (
    kategori VARCHAR(255),
    nama_barang VARCHAR(255),
    FOREIGN KEY (nama_barang) REFERENCES barang(nama)
);
INSERT INTO kategori_barang VALUES 
('Elektronik', 'Laptop'),
('Elektronik', 'Smartphone'),
('Aksesoris', 'Headset');

-- Tabel karyawan
CREATE TABLE karyawan (
    nama_karyawan VARCHAR(255),
    no_telpon INT PRIMARY KEY,
    alamat VARCHAR(255)
);
INSERT INTO karyawan VALUES 
('Rina', 628223344556, 'Jl. Mawar No. 1'),
('Doni', 628334455667, 'Jl. Melati No. 2');

-- Tabel karyawann (relasi barang dan karyawan)
CREATE TABLE karyawann (
    nama_brgn VARCHAR(255),
    no_telpon_kryn INT,
    alamat VARCHAR(255),
    FOREIGN KEY (nama_brgn) REFERENCES barang(nama),
    FOREIGN KEY (no_telpon_kryn) REFERENCES karyawan(no_telpon)
);
INSERT INTO karyawann VALUES 
('Laptop', 628223344556, 'Gudang A'),
('Smartphone', 628334455667, 'Gudang B'),
('Headset', 628223344556, 'Gudang A');

-- Tabel supplier
CREATE TABLE supplier (
    no_kontak INT PRIMARY KEY,
    alamat VARCHAR(255),
    nama VARCHAR(255),
    jenis_barang VARCHAR(255),
    kualitas VARCHAR(255),
    ketersediaan_harga INT
);
INSERT INTO supplier VALUES 
(6201111222333, 'Jl. Industri No. 100', 'PT Sumber Teknologi', 'Elektronik', 'A', 9500000),
(6202222333444, 'Jl. Dagang No. 20', 'CV Mitra Elektrik', 'Aksesoris', 'B', 230000);

-- Tabel memiliki (relasi supplier dan barang)
CREATE TABLE memiliki (
    nama_barang VARCHAR(255),
    no_kontak INT,
    tanggal_pembelian INT,
    total_bayar FLOAT,
    qty INT,
    FOREIGN KEY (nama_barang) REFERENCES barang(nama),
    FOREIGN KEY (no_kontak) REFERENCES supplier(no_kontak)
);
INSERT INTO memiliki VALUES 
('Laptop', 6201111222333, 20230401, 9500000, 10),
('Headset', 6202222333444, 20230403, 230000, 50);

-- Tabel nama_supplier
CREATE TABLE nama_supplier (
    nama VARCHAR(255),
    no_kontak INT,
    FOREIGN KEY (no_kontak) REFERENCES supplier(no_kontak)
);
INSERT INTO nama_supplier VALUES 
('PT Sumber Teknologi', 6201111222333),
('CV Mitra Elektrik', 6202222333444);

-- Tabel nama_barang (redundan, opsional jika sudah ada di barang)
CREATE TABLE nama_barang (
    nama VARCHAR(255) PRIMARY KEY
);
INSERT INTO nama_barang VALUES 
('Laptop'),
('Smartphone'),
('Headset');
