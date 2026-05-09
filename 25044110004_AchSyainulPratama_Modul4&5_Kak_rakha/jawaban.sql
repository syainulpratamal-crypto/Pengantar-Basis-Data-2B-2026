SELECT mk.nama_mk, mk.sks, d.nama_dosen
FROM mata_kuliah mk
JOIN dosen d
ON mk.id_dosen = d.id_dosen
WHERE bidang_keahlian IN ('pemrograman','basis data');

SELECT mhs.nama_mahasiswa, k.id_mata_kuliah
FROM mahasiswa mhs
LEFT JOIN krs k ON mhs.id_mahasiswa = k.id_mahasiswa
WHERE k.id_mata_kuliah IS NULL;

SELECT mhs.nama_mahasiswa, mk.nama_mk, k.semester_ambil
FROM krs k
JOIN mahasiswa mhs ON k.id_mahasiswa = mhs.id_mahasiswa
JOIN mata_kuliah mk ON k.id_mata_kuliah = mk.id_mata_kuliah
WHERE k.semester_ambil BETWEEN 3 AND 5
ORDER BY k.semester_ambil ASC;


SELECT mhs.nama_mahasiswa, mk.nama_mk, mk.sks
FROM krs k
JOIN mahasiswa mhs ON k.id_mahasiswa = mhs.id_mahasiswa
JOIN mata_kuliah mk ON k.id_mata_kuliah = mk.id_mata_kuliah
WHERE mhs.program_studi = 'Sistem Informasi'
  AND mk.sks > 2
ORDER BY mk.sks DESC, mhs.nama_mahasiswa ASC;

SELECT mhs.nama_mahasiswa, mhs.angkatan, mk.nama_mk, d.nama_dosen
FROM krs k
JOIN mahasiswa mhs ON k.id_mahasiswa = mhs.id_mahasiswa
JOIN mata_kuliah mk ON k.id_mata_kuliah = mk.id_mata_kuliah
JOIN Dosen d ON mk.id_dosen = d.id_dosen
WHERE mhs.angkatan BETWEEN 2023 AND 2025
  AND (d.nama_dosen = 'Dr. Budi' OR d.nama_dosen = 'Prof. Siti')
ORDER BY mhs.angkatan DESC;