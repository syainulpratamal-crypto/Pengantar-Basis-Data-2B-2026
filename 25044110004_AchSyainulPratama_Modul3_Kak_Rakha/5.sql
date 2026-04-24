SELECT DISTINCT kategori
FROM gudang
WHERE kode_sku LIKE '%ELEC%X'
  AND harga_satuan > 5000000;
