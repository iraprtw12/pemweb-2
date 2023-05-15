-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 14 Bulan Mei 2023 pada 16.58
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbira`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_barang`
--

CREATE TABLE `tbl_barang` (
  `id_barang` int(100) NOT NULL,
  `deskripsi` varchar(100) NOT NULL,
  `harga` int(20) NOT NULL,
  `stok` int(5) NOT NULL,
  `created` date NOT NULL,
  `nama_image` varchar(50) NOT NULL,
  `type_image` varchar(50) NOT NULL,
  `size_image` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tbl_barang`
--

INSERT INTO `tbl_barang` (`id_barang`, `deskripsi`, `harga`, `stok`, `created`, `nama_image`, `type_image`, `size_image`) VALUES
(1, 'flatshoes cantik', 145000, 100, '2022-12-09', 'flatshoes 1.jpg', 'image/jpg', 106168),
(2, 'Gladiator Shoes', 135000, 50, '2022-12-09', 'gladiator.jpg', 'image/jpg', 85919),
(3, 'Heels Simple', 120000, 50, '2022-12-09', 'heels.jpg', 'image/jpg', 86296),
(4, 'Sandal Andu', 135000, 100, '2022-12-09', 'sendal.jpg', 'image/jpg', 92477),
(5, 'SlinkBack Shoes', 130000, 50, '2022-12-09', 'slinkback.jpg', 'image/jpg', 93559),
(6, 'Sneakers Good', 145000, 100, '2022-12-09', 'sneakers.jpg', 'image/jpg', 98904),
(7, 'Stiletto Shoes', 130000, 50, '2022-12-09', 'stiletto.png', 'image/png', 99855),
(8, 'Wedges Keren', 135000, 50, '2022-12-09', 'wedges.jpg', 'image/jpg', 135955);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_keranjang`
--

CREATE TABLE `tbl_keranjang` (
  `id` int(100) NOT NULL,
  `id_user` int(100) NOT NULL,
  `id_barang` int(100) NOT NULL,
  `ukuran` varchar(5) NOT NULL,
  `qty` int(50) NOT NULL,
  `kurir` varchar(15) NOT NULL,
  `date_in` date NOT NULL,
  `total` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pesanan`
--

CREATE TABLE `tbl_pesanan` (
  `id_pesanan` int(100) NOT NULL,
  `id_user` int(100) NOT NULL,
  `id_barang` int(100) NOT NULL,
  `ukuran` varchar(5) NOT NULL,
  `qty` int(50) NOT NULL,
  `kurir` varchar(15) NOT NULL,
  `date_in` date NOT NULL,
  `total` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tbl_pesanan`
--

INSERT INTO `tbl_pesanan` (`id_pesanan`, `id_user`, `id_barang`, `ukuran`, `qty`, `kurir`, `date_in`, `total`) VALUES
(16, 4, 5, '37', 1, 'JNE', '2018-01-01', 130000),
(17, 4, 6, '38', 1, 'TIKI', '2018-01-01', 145000),
(19, 2, 9, '39', 2, 'JNE', '2018-01-01', 270000),
(20, 3, 7, '40', 2, 'KILAT', '2018-01-02', 260000),
(21, 5, 7, '41', 3, 'JNE', '2018-01-02', 390000),
(22, 5, 2, '42', 2, 'SICEPAT', '2018-01-02', 270000),
(23, 7, 1, 'L', 3, 'TIKI', '2023-05-12', 435000),
(24, 8, 2, '38', 5, 'JNE', '2023-05-12', 675000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_users`
--

CREATE TABLE `tbl_users` (
  `id_user` int(100) NOT NULL,
  `nama_lengkap` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `username` varchar(6) NOT NULL,
  `password` varchar(6) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `no_hp` text NOT NULL,
  `title` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `tbl_users`
--

INSERT INTO `tbl_users` (`id_user`, `nama_lengkap`, `email`, `username`, `password`, `alamat`, `no_hp`, `title`) VALUES
(1, 'Muhammad Iriansyah', 'pace@gmail.com', 'pace', 'pace', 'Jl. H Junib Jakarta Barat', '082248080870', 'admin'),
(2, 'Abdul Malik', 'malik@gmail.com', 'malik', 'malik', 'Jl. H Mali Jakarta Barat', '081344460967', 'user'),
(3, 'Thufail Erlangga', 'erlangga@gmail.com', 'angga', 'angga', 'Jl. H Junib Jakarta Barat', '088008800880', 'user'),
(4, 'Firman Giri', 'firman@gmail.com', 'firman', 'firman', 'Jl. H Muchtar Jakarta Barat', '085244746050', 'user'),
(5, 'M Umar Ramadhana', 'umar@gmail.com', 'umar', 'umar', 'Jl. H Mandra Jakarta Selatan', '085244746050', 'user'),
(6, 'Sri Fajar Riantri Alvani', 'riantri@gmail.com', 'rian27', 'rian3', 'Jl. Albarkah Jakarta Barat', '083344556677', 'user'),
(7, 'chika', 'chika@gmail.com', 'chika', 'chika', 'bogor', '0999989', 'user'),
(8, 'ira', 'Irapratiwi12345@gmail.com', 'ira', 'ira', 'bogor', '08989580870', 'user'),
(9, 'ira', 'irapratiwi@gmail.com', 'admin', 'admiin', 'bogor', '0999989', 'user');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_barang`
--
ALTER TABLE `tbl_barang`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indeks untuk tabel `tbl_keranjang`
--
ALTER TABLE `tbl_keranjang`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tbl_pesanan`
--
ALTER TABLE `tbl_pesanan`
  ADD PRIMARY KEY (`id_pesanan`);

--
-- Indeks untuk tabel `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbl_barang`
--
ALTER TABLE `tbl_barang`
  MODIFY `id_barang` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `tbl_keranjang`
--
ALTER TABLE `tbl_keranjang`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tbl_pesanan`
--
ALTER TABLE `tbl_pesanan`
  MODIFY `id_pesanan` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT untuk tabel `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `id_user` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
