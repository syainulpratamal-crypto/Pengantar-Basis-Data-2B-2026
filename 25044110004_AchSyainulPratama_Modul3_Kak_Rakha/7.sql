SELECT *
FROM gudang
WHERE lokasi_rak LIKE 'B%'
  AND NOT (harga_satuan BETWEEN 1000000 AND 5000000)
  AND kategori <> 'Monitor';