SELECT angkatan, COUNT(*) AS Total_Mahasiswa
FROM mahasiswa
GROUP BY angkatan
HAVING COUNT(*) > 1
ORDER BY Total_Mahasiswa DESC;

SELECT 
    MIN(sks) AS SKS_Minimal,
    MAX(sks) AS SKS_Maksimal,
    AVG(sks) AS Rata_Rata_SKS,
    COUNT(*) AS Total_Mata_Kuliah
FROM mata_kuliah;

SELECT mhs.nim, mhs.nama, SUM(mk.sks) AS Total_SKS
FROM mahasiswa mhs
JOIN krs k ON mhs.nim = k.nim
JOIN mata_kuliah mk ON k.kode_mk = mk.kode_mk
WHERE k.semester IN (1, 3)
GROUP BY mhs.nim, mhs.nama;


SELECT k.nim, SUM(mk.sks) AS Total_SKS
FROM krs k
JOIN mata_kuliah mk ON k.kode_mk = mk.kode_mk
GROUP BY k.nim
HAVING SUM(mk.sks) > 5;



SELECT sks, COUNT(*) AS Total_MK, SUM(sks) AS Total_Akumulasi_SKS
FROM mata_kuliah
GROUP BY sks
HAVING COUNT(*) > 1;