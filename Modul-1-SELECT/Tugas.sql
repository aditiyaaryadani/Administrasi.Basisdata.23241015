USE Toko_Bangunan;

-- SELECT 1 Kolom
-- 1. pelanggan
SELECT p.no_telpon AS telpon_pelanggan FROM pelanggan AS p;

-- 2. nama_pelanggan
SELECT np.nama AS nama_pembeli FROM nama_pelanggan AS np;

-- 3. barang
SELECT b.nama AS nama_barang FROM barang AS b;

-- 4. beli
SELECT bl.qty AS jumlah_beli FROM beli AS bl;

-- 5. kategori_barang
SELECT kb.kategori AS jenis_kategori FROM kategori_barang AS kb;

-- 6. karyawan
SELECT k.nama_karyawan AS nama_karyawan FROM karyawan AS k;

-- 7. karyawann
SELECT kw.nama_brgn AS nama_barang_dikelola FROM karyawann AS kw;

-- 8. supplier
SELECT s.nama AS nama_supplier FROM supplier AS s;

-- 9. memiliki
SELECT m.qty AS jumlah_barang FROM memiliki AS m;

-- 10. nama_supplier
SELECT ns.nama AS nama_supp FROM nama_supplier AS ns;


-- SELECT 2 Kolom
-- 1. pelanggan
SELECT p.no_telpon AS telpon, p.alamat AS alamat_pelanggan FROM pelanggan AS p;

-- 2. nama_pelanggan
SELECT np.nama AS nama, np.no_telpon AS telpon FROM nama_pelanggan AS np;

-- 3. barang
SELECT b.nama AS nama_barang, b.harga AS harga_barang FROM barang AS b;

-- 4. beli
SELECT bl.nama_barang AS barang_dibeli, bl.total_bayar AS total_bayar FROM beli AS bl;

-- 5. kategori_barang
SELECT kb.kategori AS kategori_barang, kb.nama_barang AS nama_barang FROM kategori_barang AS kb;

-- 6. karyawan
SELECT k.nama_karyawan AS nama_karyawan, k.no_telpon AS telpon_karyawan FROM karyawan AS k;

-- 7. karyawann
SELECT kw.nama_brgn AS barang, kw.no_telpon_kryn AS telpon_karyawan FROM karyawann AS kw;

-- 8. supplier
SELECT s.nama AS nama_supplier, s.jenis_barang AS jenis_barang FROM supplier AS s;

-- 9. memiliki
SELECT m.nama_barang AS nama_barang, m.total_bayar AS total_harga FROM memiliki AS m;

-- 10. nama_supplier
SELECT ns.nama AS nama_supplier, ns.no_kontak AS kontak_supplier FROM nama_supplier AS ns;
