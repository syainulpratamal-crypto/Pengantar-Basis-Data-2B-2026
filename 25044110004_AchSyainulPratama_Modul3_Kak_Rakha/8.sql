SELECT nama_barang, harga_satuan, status_qc
FROM gudang
WHERE kategori <> 'Furniture'
  AND status_qc = 'Lulus'
ORDER BY harga_satuan DESC
LIMIT 3;