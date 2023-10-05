SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

CREATE TABLE `tb_absen` (
  `id` int(11) NOT NULL,
  `id_karyawan` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `waktu` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `tb_absen` (`id`, `id_karyawan`, `nama`, `waktu`) VALUES
(16, '1920392912', 'Budi Sanjaya', 'Thursday, 10-09-2020 07:52:25 am'),
(17, '192', 'Sarah Mutia', 'Thursday, 10-09-2020 07:54:45 am'),
(18, '9', 'Abdul Muhlisin Sudirman', 'Sunday, 20-09-2020 01:31:05 pm');

CREATE TABLE `tb_daftar` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `tb_daftar` (`id`, `username`, `password`) VALUES
(2, 'admin', 'admin'),
(5, 'admin2', 'admin2');

CREATE TABLE `tb_jabatan` (
  `id` int(11) NOT NULL,
  `jabatan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `tb_jabatan` (`id`, `jabatan`) VALUES
(3, 'CEO'),
(4, 'CTO'),
(5, 'CFO'),
(6, 'WP Pemasaran'),
(7, 'CMO'),
(8, 'COO'),
(9, 'Office Boy');

CREATE TABLE `tb_karyawan` (
  `id_karyawan` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `tmp_tgl_lahir` varchar(255) NOT NULL,
  `jenkel` varchar(255) NOT NULL,
  `agama` varchar(255) NOT NULL,
  `alamat` text NOT NULL,
  `no_tel` varchar(18) NOT NULL,
  `jabatan` varchar(255) NOT NULL,
  `foto` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `tb_karyawan` (`id_karyawan`, `username`, `password`, `nama`, `tmp_tgl_lahir`, `jenkel`, `agama`, `alamat`, `no_tel`, `jabatan`, `foto`) VALUES
(9, 'Abdul', 'd41d8cd98f00b204e9800998ecf8427e', 'Abdul Muhlisin Sudirman', 'Klaten / 19-09-1994', 'Laki-laki', 'Islam', 'China', '0895635721923', 'CEO', '21092020072509employee1.png'),
(192, 'sarah', '9e9d7a08e048e9d604b79460b54969c3', 'Sarah Mutia', 'Cianjur / 10-12-1992', 'Perempuan', 'Islam', '', '08128384848', 'CEO', '10092020025112employee3.png'),
(999999999, 'bagas', 'ee776a18253721efe8a62e4abd29dc47', 'bagas a', 'Jakarta / 10-01-1990', 'Laki-laki', 'Islam', 'Jakarta', '0895628383333', 'Office Boy', '10092020024120employee3.png'),
(1920392912, 'user', 'ee11cbb19052e40b07aac0ca060c23ee', 'Budi Sanjaya', 'Bekasi / 10-12-1980', 'Laki-laki', 'Kristen', '', '0895254859994', 'CEO', '10092020023942employee1.png');

CREATE TABLE `tb_keterangan` (
  `id` int(11) NOT NULL,
  `id_karyawan` varchar(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `alasan` text NOT NULL,
  `waktu` varchar(255) NOT NULL,
  `bukti` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `tb_keterangan` (`id`, `id_karyawan`, `nama`, `keterangan`, `alasan`, `waktu`, `bukti`) VALUES
(51, '9', 'Abdul Muhlisin', 'Sakit', 'Saya Sakit Pak', 'Thursday, 10-09-2020 07:53:23 am', '10092020025339suratket1.png'),
(52, '999999999', 'bagas a', 'Izin', 'Mohon maaf bapak / ibu, untuk hari ini saya tidak bisa hadir, dikarenakan saya izin.', 'Thursday, 10-09-2020 07:55:20 am', '10092020025619suratket2.jpg');

ALTER TABLE `tb_absen`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `tb_daftar`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `tb_jabatan`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `tb_karyawan`
  ADD PRIMARY KEY (`id_karyawan`);

ALTER TABLE `tb_keterangan`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `tb_absen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

ALTER TABLE `tb_daftar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

ALTER TABLE `tb_jabatan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

ALTER TABLE `tb_keterangan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
COMMIT;