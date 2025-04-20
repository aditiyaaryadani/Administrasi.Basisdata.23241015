-- Tabel pelanggan
CREATE TABLE pelanggan (
    no_telpon INT PRIMARY KEY,
    alamat VARCHAR(255),
    tanggal_pembelian INT
);

-- Tabel nama_pelanggan
CREATE TABLE nama_pelanggan (
    nama VARCHAR(255),
    no_telpon INT,
    FOREIGN KEY (no_telpon) REFERENCES pelanggan(no_telpon)
);

-- Tabel barang
CREATE TABLE barang (
    nama VARCHAR(255) PRIMARY KEY,
    harga INT,
    ukuran INT,
    tanggal_pembelian DATETIME
);

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

-- Tabel kategori_barang
CREATE TABLE kategori_barang (
    kategori VARCHAR(255),
    nama_barang VARCHAR(255),
    FOREIGN KEY (nama_barang) REFERENCES barang(nama)
);

-- Tabel karyawan
CREATE TABLE karyawan (
    nama_karyawan VARCHAR(255),
    no_telpon INT PRIMARY KEY,
    alamat VARCHAR(255)
);

-- Tabel karyawann (relasi barang dan karyawan)
CREATE TABLE karyawann (
    nama_brgn VARCHAR(255),
    no_telpon_kryn INT,
    alamat VARCHAR(255),
    FOREIGN KEY (nama_brgn) REFERENCES barang(nama),
    FOREIGN KEY (no_telpon_kryn) REFERENCES karyawan(no_telpon)
);

-- Tabel supplier
CREATE TABLE supplier (
    no_kontak INT PRIMARY KEY,
    alamat VARCHAR(255),
    nama VARCHAR(255),
    jenis_barang VARCHAR(255),
    kualitas VARCHAR(255),
    ketersediaan_harga INT
);

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

-- Tabel nama_supplier
CREATE TABLE nama_supplier (
    nama VARCHAR(255),
    no_kontak INT,
    FOREIGN KEY (no_kontak) REFERENCES supplier(no_kontak)
);

-- Tabel nama_barang (redundan, opsional jika sudah ada di barang)
CREATE TABLE nama_barang (
    nama VARCHAR(255) PRIMARY KEY
);
