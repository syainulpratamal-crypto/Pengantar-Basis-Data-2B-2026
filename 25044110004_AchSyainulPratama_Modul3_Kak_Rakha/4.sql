SELECT nama_barang, kategori, kode_sku, lokasi_rak, status_qc
FROM gudang
WHERE lokasi_rak IS NULL 
  AND stok > 0 
  AND status_qc = 'Lulus';