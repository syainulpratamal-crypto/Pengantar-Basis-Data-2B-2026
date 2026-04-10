UPDATE pasien
SET no_telepon = '08999999999'
WHERE id_pasien = 1;
DESCRIBE pasien
UPDATE dokter
SET spesialisasi = 'Penyakit Dalam'
WHERE id_dokter = 1;
DESCRIBE dokter

DELETE FROM rekam_medis
WHERE id_rekam = 1;
DESCRIBE rekam_medis