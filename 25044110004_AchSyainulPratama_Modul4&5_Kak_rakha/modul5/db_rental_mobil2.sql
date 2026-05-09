-- --------------------------------------------------------

--
-- Struktur untuk view `view_customer_lebih_dari_satu_transaksi`
--
DROP TABLE IF EXISTS `view_customer_lebih_dari_satu_transaksi`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_customer_lebih_dari_satu_transaksi`  AS SELECT `c`.`nama` AS `nama_customer`, COUNT(`dcs`.`id_sewa`) AS `jumlah_transaksi` FROM (`customer` `c` JOIN `detail_customer_sewa` `dcs` ON(`c`.`id_customer` = `dcs`.`id_customer`)) GROUP BY `c`.`id_customer`, `c`.`nama` HAVING COUNT(`dcs`.`id_sewa`) > 1 ;

-- --------------------------------------------------------

--
-- Struktur untuk view `view_jumlah_transaksi_customer`
--
DROP TABLE IF EXISTS `view_jumlah_transaksi_customer`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_jumlah_transaksi_customer`  AS SELECT `c`.`nama` AS `nama_customer`, COUNT(`dcs`.`id_sewa`) AS `jumlah_transaksi` FROM (`customer` `c` JOIN `detail_customer_sewa` `dcs` ON(`c`.`id_customer` = `dcs`.`id_customer`)) GROUP BY `c`.`id_customer`, `c`.`nama` ORDER BY COUNT(`dcs`.`id_sewa`) DESC ;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id_customer`);

--
-- Indeks untuk tabel `detail_customer_sewa`
--
ALTER TABLE `detail_customer_sewa`
  ADD PRIMARY KEY (`id_customer`,`id_sewa`),
  ADD KEY `id_sewa` (`id_sewa`);

--
-- Indeks untuk tabel `detail_karyawan_sewa`
--
ALTER TABLE `detail_karyawan_sewa`
  ADD PRIMARY KEY (`id_karyawan`,`id_sewa`),
  ADD KEY `id_sewa` (`id_sewa`);

--
-- Indeks untuk tabel `detail_mobil_sewa`
--
ALTER TABLE `detail_mobil_sewa`
  ADD PRIMARY KEY (`id_mobil`,`id_sewa`),
  ADD KEY `id_sewa` (`id_sewa`);

--
-- Indeks untuk tabel `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`id_karyawan`);

--
-- Indeks untuk tabel `mobil`
--
ALTER TABLE `mobil`
  ADD PRIMARY KEY (`id_mobil`);

--
-- Indeks untuk tabel `sewa`
--
ALTER TABLE `sewa`
  ADD PRIMARY KEY (`id_sewa`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `customer`
--
ALTER TABLE `customer`
  MODIFY `id_customer` INT(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `karyawan`
--
ALTER TABLE `karyawan`
  MODIFY `id_karyawan` INT(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `mobil`
--
ALTER TABLE `mobil`
  MODIFY `id_mobil` INT(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `sewa`
--
ALTER TABLE `sewa`
  MODIFY `id_sewa` INT(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `detail_customer_sewa`
--
ALTER TABLE `detail_customer_sewa`
  ADD CONSTRAINT `detail_customer_sewa_ibfk_1` FOREIGN KEY (`id_customer`) REFERENCES `customer` (`id_customer`),
  ADD CONSTRAINT `detail_customer_sewa_ibfk_2` FOREIGN KEY (`id_sewa`) REFERENCES `sewa` (`id_sewa`);

--
-- Ketidakleluasaan untuk tabel `detail_karyawan_sewa`
--
ALTER TABLE `detail_karyawan_sewa`
  ADD CONSTRAINT `detail_karyawan_sewa_ibfk_1` FOREIGN KEY (`id_karyawan`) REFERENCES `karyawan` (`id_karyawan`),
  ADD CONSTRAINT `detail_karyawan_sewa_ibfk_2` FOREIGN KEY (`id_sewa`) REFERENCES `sewa` (`id_sewa`);

--
-- Ketidakleluasaan untuk tabel `detail_mobil_sewa`
--
ALTER TABLE `detail_mobil_sewa`
  ADD CONSTRAINT `detail_mobil_sewa_ibfk_1` FOREIGN KEY (`id_mobil`) REFERENCES `mobil` (`id_mobil`),
  ADD CONSTRAINT `detail_mobil_sewa_ibfk_2` FOREIGN KEY (`id_sewa`) REFERENCES `sewa` (`id_sewa`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
