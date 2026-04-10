USE RumahSakit ;
CREATE TABLE Dokter (
    id_dokter INT PRIMARY KEY,
    nama_dokter VARCHAR(100),
    spesialisasi VARCHAR(100)
); DESCRIBE dokter
CREATE TABLE pasien (
    id_pasien INT PRIMARY KEY,
    nama_Pasien VARCHAR(100),
    tanggal_lahir DATE,
    no_telepon VARCHAR(15)
);
DESCRIBE pasien
CREATE TABLE rekam_medis (
    id_rekam INT PRIMARY KEY,
    id_pasien INT,
    id_dokter INT,
    tanggal_periksa DATE,
    diagnosis TEXT,
    FOREIGN KEY (id_pasien) REFERENCES pasien(id_pasien) ON DELETE RESTRICT,
    FOREIGN KEY (id_dokter) REFERENCES dokter(id_dokter) ON DELETE RESTRICT
);
DESCRIBE rekam_medis