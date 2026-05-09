CREATE DATABASE db_rental_mobil;

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_rental_mobil`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `customer`
--

CREATE TABLE `customer` (
  `id_customer` INT(11) NOT NULL,
  `nama` VARCHAR(45) DEFAULT NULL,
  `no_telp` VARCHAR(15) DEFAULT NULL,
  `jenis_kelamin` ENUM('L','P') DEFAULT NULL,
  `alamat` VARCHAR(45) DEFAULT NULL
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `customer`
--

INSERT INTO `customer` (`id_customer`, `nama`, `no_telp`, `jenis_kelamin`, `alamat`) VALUES
(1, 'Ahmad Yusuf', '0817000001', 'L', 'Surabaya'),
(2, 'Bella Fitri', '0817000002', 'P', 'Malang'),
(3, 'Candra Wijaya', '0817000003', 'L', 'Sidoarjo'),
(4, 'Diana Kusuma', '0817000004', 'P', 'Gresik'),
(5, 'Evan Prakoso', '0817000005', 'L', 'Kediri'),
(6, 'Farah Nadia', '0817000006', 'P', 'Blitar'),
(7, 'Gilang Pratama', '0817000007', 'L', 'Jember'),
(8, 'Hesti Ayu', '0817000008', 'P', 'Banyuwangi'),
(9, 'Irfan Saputra', '0817000009', 'L', 'Lamongan'),
(10, 'Jihan Nabila', '0817000010', 'P', 'Tuban'),
(11, 'Kevin Hartono', '0817000011', 'L', 'Bojonegoro'),
(12, 'Laila Ramadhani', '0817000012', 'P', 'Pasuruan'),
(13, 'Miko Adriansyah', '0817000013', 'L', 'Probolinggo'),
(14, 'Nadya Salsabila', '0817000014', 'P', 'Madiun'),
(15, 'Oscar Putra', '0817000015', 'L', 'Mojokerto');

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_customer_sewa`
--

CREATE TABLE `detail_customer_sewa` (
  `id_customer` INT(11) NOT NULL,
  `id_sewa` INT(11) NOT NULL
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `detail_customer_sewa`
--

INSERT INTO `detail_customer_sewa` (`id_customer`, `id_sewa`) VALUES
(1, 1),
(2, 2),
(3, 3),
(3, 16),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(7, 17),
(8, 8),
(9, 9),
(10, 10),
(11, 11),
(12, 12),
(12, 18),
(13, 13),
(14, 14),
(15, 15);

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_karyawan_sewa`
--

CREATE TABLE `detail_karyawan_sewa` (
  `id_karyawan` INT(11) NOT NULL,
  `id_sewa` INT(11) NOT NULL
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `detail_karyawan_sewa`
--

INSERT INTO `detail_karyawan_sewa` (`id_karyawan`, `id_sewa`) VALUES
(1, 1),
(1, 16),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(5, 17),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(9, 18),
(10, 10),
(11, 11),
(12, 12),
(13, 13),
(14, 14),
(15, 15);

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_mobil_sewa`
--

CREATE TABLE `detail_mobil_sewa` (
  `id_mobil` INT(11) NOT NULL,
  `id_sewa` INT(11) NOT NULL
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `detail_mobil_sewa`
--

INSERT INTO `detail_mobil_sewa` (`id_mobil`, `id_sewa`) VALUES
(1, 1),
(1, 10),
(2, 2),
(2, 12),
(3, 3),
(3, 11),
(4, 4),
(4, 13),
(5, 5),
(6, 6),
(6, 15),
(7, 7),
(8, 8),
(8, 14),
(9, 9),
(12, 16),
(14, 17),
(15, 18);

-- --------------------------------------------------------

--
-- Struktur dari tabel `karyawan`
--

CREATE TABLE `karyawan` (
  `id_karyawan` INT(11) NOT NULL,
  `nama` VARCHAR(45) DEFAULT NULL,
  `no_telp` VARCHAR(15) DEFAULT NULL,
  `jenis_kelamin` ENUM('L','P') DEFAULT NULL,
  `alamat` VARCHAR(45) DEFAULT NULL
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `karyawan`
--

INSERT INTO `karyawan` (`id_karyawan`, `nama`, `no_telp`, `jenis_kelamin`, `alamat`) VALUES
(1, 'Andi Setiawan', '081234567890', 'L', 'Surabaya'),
(2, 'Budi Santoso', '081234567891', 'L', 'Malang'),
(3, 'Citra Lestari', '081234567892', 'P', 'Sidoarjo'),
(4, 'Dedi Pratama', '081234567893', 'L', 'Gresik'),
(5, 'Eka Susanti', '081234567894', 'P', 'Kediri'),
(6, 'Fajar Nugraha', '081234567895', 'L', 'Blitar'),
(7, 'Gina Permata', '081234567896', 'P', 'Jember'),
(8, 'Hadi Purnomo', '081234567897', 'L', 'Banyuwangi'),
(9, 'Ira Kurnia', '081234567898', 'P', 'Lamongan'),
(10, 'Joko Widodo', '081234567899', 'L', 'Tuban'),
(11, 'Kiki Rahma', '081234567900', 'P', 'Bojonegoro'),
(12, 'Lina Wulandari', '081234567901', 'P', 'Pasuruan'),
(13, 'Made Surya', '081234567902', 'L', 'Probolinggo'),
(14, 'Nina Kartika', '081234567903', 'P', 'Madiun'),
(15, 'Omar Fadhil', '081234567904', 'L', 'Mojokerto');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mobil`
--

CREATE TABLE `mobil` (
  `id_mobil` INT(11) NOT NULL,
  `no_plat` VARCHAR(15) DEFAULT NULL,
  `tahun_buat` INT(11) DEFAULT NULL,
  `jenis` VARCHAR(45) DEFAULT NULL,
  `warna` VARCHAR(45) DEFAULT NULL,
  `merek` VARCHAR(45) DEFAULT NULL,
  `status` ENUM('Tersedia','Disewa') DEFAULT NULL,
  `tarif_perhari` INT(11) DEFAULT NULL
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `mobil`
--

INSERT INTO `mobil` (`id_mobil`, `no_plat`, `tahun_buat`, `jenis`, `warna`, `merek`, `status`, `tarif_perhari`) VALUES
(1, 'N1234AA', 2018, 'SUV', 'Hitam', 'Toyota Rush', 'Disewa', 400000),
(2, 'N1235AB', 2020, 'Sedan', 'Putih', 'Honda Civic', 'Disewa', 500000),
(3, 'N1236AC', 2021, 'MPV', 'Silver', 'Toyota Avanza', 'Disewa', 350000),
(4, 'N1237AD', 2019, 'SUV', 'Merah', 'Mitsubishi Xpander', 'Disewa', 400000),
(5, 'N1238AE', 2022, 'Hatchback', 'Biru', 'Honda Jazz', 'Disewa', 300000),
(6, 'N1239AF', 2023, 'SUV', 'Abu-abu', 'Hyundai Creta', 'Disewa', 450000),
(7, 'N1240AG', 2017, 'Sedan', 'Hitam', 'Toyota Vios', 'Disewa', 350000),
(8, 'N1241AH', 2020, 'MPV', 'Putih', 'Suzuki Ertiga', 'Disewa', 320000),
(9, 'N1242AI', 2021, 'SUV', 'Silver', 'Daihatsu Terios', 'Disewa', 400000),
(10, 'N1243AJ', 2022, 'Sedan', 'Biru', 'Honda City', 'Tersedia', 400000),
(11, 'N1244AK', 2023, 'SUV', 'Hitam', 'Mazda CX5', 'Tersedia', 600000),
(12, 'N1245AL', 2018, 'Hatchback', 'Merah', 'Toyota Yaris', 'Tersedia', 300000),
(13, 'N1246AM', 2020, 'MPV', 'Silver', 'Wuling Confero', 'Tersedia', 280000),
(14, 'N1247AN', 2019, 'SUV', 'Putih', 'Nissan Xtrail', 'Tersedia', 420000),
(15, 'N1248AO', 2021, 'Sedan', 'Abu-abu', 'Toyota Camry', 'Tersedia', 550000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `sewa`
--

CREATE TABLE `sewa` (
  `id_sewa` INT(11) NOT NULL,
  `item` VARCHAR(45) DEFAULT NULL,
  `tgl_sewa` DATE DEFAULT NULL,
  `tgl_kembali` DATE DEFAULT NULL,
  `total_bayar` INT(11) DEFAULT NULL,
  `denda` INT(11) DEFAULT NULL
) ENGINE=INNODB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `sewa`
--

INSERT INTO `sewa` (`id_sewa`, `item`, `tgl_sewa`, `tgl_kembali`, `total_bayar`, `denda`) VALUES
(1, 'Sewa Rush', '2025-10-15', '2025-10-18', 1200000, 0),
(2, 'Sewa Civic', '2025-10-16', '2025-10-19', 1500000, 0),
(3, 'Sewa Avanza', '2025-10-17', '2025-10-20', 1050000, 0),
(4, 'Sewa Xpander', '2025-10-18', '2025-10-22', 1600000, 0),
(5, 'Sewa Jazz', '2025-10-19', '2025-10-22', 900000, 0),
(6, 'Sewa Creta', '2025-10-20', '2025-10-25', 2250000, 0),
(7, 'Sewa Vios', '2025-10-21', '2025-10-23', 700000, 0),
(8, 'Sewa Ertiga', '2025-10-22', '2025-10-26', 1280000, 0),
(9, 'Sewa Terios', '2025-10-23', '2025-10-27', 1600000, 0),
(10, 'Sewa Rush', '2025-10-24', '2025-10-29', 2000000, 0),
(11, 'Sewa Avanza', '2025-10-25', '2025-10-28', 1050000, 0),
(12, 'Sewa Civic', '2025-10-27', '2025-10-30', 1500000, 0),
(13, 'Sewa Xpander', '2025-11-01', '2025-11-05', 1600000, 0),
(14, 'Sewa Ertiga', '2025-11-05', '2025-11-10', 1600000, 0),
(15, 'Sewa Creta', '2025-11-10', '2025-11-15', 2250000, 0),
(16, 'Sewa Yaris', '2025-10-10', '2025-10-15', 1500000, 100000),
(17, 'Sewa Xtrail', '2025-10-12', '2025-10-18', 2100000, 150000),
(18, 'Sewa Camry', '2025-10-14', '2025-10-20', 3300000, 200000);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `view_customer_lebih_dari_satu_transaksi`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `view_customer_lebih_dari_satu_transaksi` (
`nama_customer` VARCHAR(45)
,`jumlah_transaksi` BIGINT(21)
);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `view_jumlah_transaksi_customer`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `view_jumlah_transaksi_customer` (
`nama_customer` VARCHAR(45)
,`jumlah_transaksi` BIGINT(21)
);

