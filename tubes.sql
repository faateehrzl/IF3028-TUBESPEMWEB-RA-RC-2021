

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


CREATE TABLE `keluhan` (
  `id` int(11) NOT NULL,
  `username` varchar(128) NOT NULL,
  `lapor` varchar(10000) NOT NULL,
  `aspek` varchar(99) NOT NULL,
  `gambar` varchar(99) NOT NULL,
  `waktu` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `keluhan` (`id`, `username`, `lapor`, `aspek`, `gambar`, `waktu`) VALUES
(37, 'Fatih', 'Mulai hari ini, Senin (17/5/2021), vaksinasi Gotong Royong dimulai, Vaksinasi Gotong Royong adalah pelaksanaan vaksinasi kepada karyawan/karyawati, keluarga dan individu lain dalam keluarga yang pendanaannya dibebankan pada badan hukum atau badan usaha', 'Mahasiswa', '49242162_2025783400876303_2718695933087842304_o.jpg', '2020-12-25 08:02:40'),
(38, 'Billy', 'Hasil panen padi petani di Kabupaten Subang dilaporkan mengalami kenaikan hingga 40 persen setelah mengikuti Program Makmur, Salah satunya para petandi di Desa Ciasem baru, Kecamatan Ciasem. Saat ini, para petani di wilayah pantura Subang itu sedang panen raya. Di hamparan sawah, padi sudah menguning, lambai menjuntai dan ramai dituai.
', 'Mahasiswa', '197579.jpg', '2020-12-25 10:30:19'),
(40, 'Fatih', 'Polres Pacitan mengungkap tindak pidana pembuatan uang palsu. Puluhan juta mata uang rupiah tiruan diamankan dari dua tersangka.', 'Staff', 'HH.jpg', '2020-12-25 09:33:00'),
(41, 'Thomi', 'Hujan yang mengguyur Jakarta pada Kamis sore menimbulkan genangan banjir di Jalan Ciledug Raya, Pesanggrahan, Jakarta Selatan. Ketinggian air dilaporkan mencapai 40 sentimeter, surut dalam kurun 2,5 jam.', 'Mahasiswa', '1973641.jpg', '2020-12-25 12:22:21');


CREATE TABLE `user` (
  `username` varchar(128) NOT NULL,
  `password` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


INSERT INTO `user` (`username`, `password`) VALUES
('galih', 'galih'),
('manarul', 'manarul'),
('putri', 'ayu123');


ALTER TABLE `keluhan`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `user`
  ADD PRIMARY KEY (`username`);


ALTER TABLE `keluhan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
COMMIT;

