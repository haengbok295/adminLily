-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 25 Bulan Mei 2019 pada 11.39
-- Versi server: 10.1.35-MariaDB
-- Versi PHP: 7.1.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bunganew`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `bunga`
--

CREATE TABLE `bunga` (
  `id` int(11) NOT NULL,
  `nama_bunga` varchar(191) NOT NULL,
  `harga` varchar(191) NOT NULL,
  `deskripsi` text NOT NULL,
  `jumlah` int(11) NOT NULL,
  `gambar` varchar(191) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `bunga`
--

INSERT INTO `bunga` (`id`, `nama_bunga`, `harga`, `deskripsi`, `jumlah`, `gambar`) VALUES
(1, 'Sweet Jade', '379000', '9 red roses complemented by sweet Baby Breath (Gypsophila) make sweet Jade a true stunner among our arrangements. Elegantly wrapped this bouquet is often given for romantic occasions, birthdays and anniversary.', 200, 'https://cdn.shopify.com/s/files/1/1789/5809/products/Jade_9_stalk_white_1-800x800_140_1024x1024.jpg?v=1547194181'),
(2, 'Jade', '489000', '12 red rose stalks equipped with fresh baby breath make Jade our best interest to impress someone. Elegantly wrapped, this bouquet is often given for romantic occasions, birthdays, and anniversaries. Add some chocolate to make it even sweeter!', 20, 'https://cdn.shopify.com/s/files/1/1789/5809/products/Jade_12_stalk_black_1-800x800_507_1024x1024.jpg?v=1547186921'),
(3, 'Just For You', '449000', 'A beautiful and fresh set of soft, colorful roses. With luxury wrapping, this flower is guaranteed to make the recipient smile broadly. Suitable for any kind of event like birthday, romantic event, graduation, or wedding. One of our best products of all time!', 190, 'https://cdn.shopify.com/s/files/1/1789/5809/products/Just_For_You_1-800x800_234_1024x1024.jpg?v=1547192916'),
(4, 'Bloomy Days', '319000', 'Three wonderful, large sunflowers that boast with energy are a great way to lighten up any moment of the day.\r\nTheir open face of the sunflower symbolizes the sun itself, conveying both warmth and happiness, but also longevity adoration.\r\nPick your preferred delivery date in the shopping cart and let us deliver your personal message!\r\n', 90, 'https://cdn.shopify.com/s/files/1/1789/5809/products/Bloomy_Days_1_401_1024x1024.jpg?v=1547188482'),
(5, 'Pink Blush', '329000', 'Warm her heart with shades of pink, and a burst of red to represent your undying devotion.', 100, 'https://cdn.shopify.com/s/files/1/1789/5809/products/pink-blush-2529961345137_1024x1024_787_1024x1024.jpg?v=1547190160');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_05_25_085001_create_bunga_table', 0),
(2, '2019_05_25_085001_create_transaksi_table', 0),
(3, '2019_05_25_085002_add_foreign_keys_to_transaksi_table', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `id` int(11) NOT NULL,
  `jumlah_beli` int(11) NOT NULL,
  `kode_bunga` int(11) NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`id`, `jumlah_beli`, `kode_bunga`, `total`) VALUES
(1, 10, 1, 2000000);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `bunga`
--
ALTER TABLE `bunga`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `fk_bunga` (`kode_bunga`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `bunga`
--
ALTER TABLE `bunga`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `transaksi_ibfk_1` FOREIGN KEY (`kode_bunga`) REFERENCES `bunga` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
