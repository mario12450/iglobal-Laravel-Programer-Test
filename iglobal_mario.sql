-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 29 Des 2020 pada 09.41
-- Versi server: 10.4.6-MariaDB
-- Versi PHP: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `iglobal_mario`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `anggota`
--

CREATE TABLE `anggota` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `anggota`
--

INSERT INTO `anggota` (`id`, `nama`, `created_at`, `updated_at`) VALUES
(1, 'Sari Tania Puspita', NULL, NULL),
(2, 'Mario', NULL, NULL),
(3, 'Luluh Sinaga', NULL, NULL),
(4, 'Lamar Putra', NULL, NULL),
(5, 'Banawi Kuswoyo', NULL, NULL),
(6, 'Ratih Wijayanti', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `anggota_hadiah`
--

CREATE TABLE `anggota_hadiah` (
  `id` int(10) UNSIGNED NOT NULL,
  `anggota_id` int(11) NOT NULL,
  `hadiah_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `anggota_hadiah`
--

INSERT INTO `anggota_hadiah` (`id`, `anggota_id`, `hadiah_id`, `created_at`, `updated_at`) VALUES
(1, 6, 6, NULL, NULL),
(2, 2, 5, NULL, NULL),
(3, 6, 10, NULL, NULL),
(4, 3, 4, NULL, NULL),
(5, 3, 6, NULL, NULL),
(6, 1, 4, NULL, NULL),
(7, 4, 11, NULL, NULL),
(8, 5, 5, NULL, NULL),
(9, 2, 9, NULL, NULL),
(10, 6, 6, NULL, NULL),
(11, 3, 2, NULL, NULL),
(12, 2, 3, NULL, NULL),
(13, 1, 8, NULL, NULL),
(14, 6, 8, NULL, NULL),
(15, 3, 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `articles`
--

CREATE TABLE `articles` (
  `id` int(10) UNSIGNED NOT NULL,
  `judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `articles`
--

INSERT INTO `articles` (`id`, `judul`, `created_at`, `updated_at`) VALUES
(1, 'Placeat saepe ea possimus provident quos est molestiae reiciendis.', '2020-12-28 17:00:00', '2020-12-28 17:00:00'),
(2, 'Totam laudantium molestiae similique sit.', NULL, NULL),
(3, 'Aut consequatur ducimus ut non voluptatem voluptas.', NULL, NULL),
(4, 'Ad sit voluptatem qui ut dolorem.', NULL, NULL),
(7, 'Indonesia Mencari Bakat edit', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `hadiah`
--

CREATE TABLE `hadiah` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama_hadiah` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `hadiah`
--

INSERT INTO `hadiah` (`id`, `nama_hadiah`, `created_at`, `updated_at`) VALUES
(1, 'Kulkas', NULL, NULL),
(2, 'Lemari', NULL, NULL),
(3, 'Rumah', NULL, NULL),
(4, 'Mobil', NULL, NULL),
(5, 'Sepeda Motor', NULL, NULL),
(6, 'Pulpen', NULL, NULL),
(7, 'Tas', NULL, NULL),
(8, 'Sepatu', NULL, NULL),
(9, 'Voucher', NULL, NULL),
(10, 'Mouse', NULL, NULL),
(11, 'Laptop', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2020_12_28_110805_pengguna', 1),
(4, '2020_12_28_143412_telepon', 2),
(5, '2020_12_28_183111_articles', 3),
(6, '2020_12_28_183341_tags', 4),
(7, '2020_12_28_190155_anggota', 5),
(8, '2020_12_28_190418_anggota_hadiah', 6),
(9, '2020_12_28_190947_anggota_hadiah', 7),
(10, '2020_12_28_191102_hadiah', 8);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengguna`
--

CREATE TABLE `pengguna` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `pengguna`
--

INSERT INTO `pengguna` (`id`, `nama`, `created_at`, `updated_at`) VALUES
(1, 'Mario', '2020-12-14 17:00:00', '2020-12-14 17:00:00'),
(2, 'admin', NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tags`
--

CREATE TABLE `tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `tag` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `article_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tags`
--

INSERT INTO `tags` (`id`, `tag`, `article_id`, `created_at`, `updated_at`) VALUES
(1, 'dolores', 2, '2020-12-21 17:00:00', '2020-12-29 17:00:44'),
(2, 'culpa', 3, NULL, NULL),
(3, 'sit', 4, NULL, NULL),
(4, 'quasi', 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `telepon`
--

CREATE TABLE `telepon` (
  `id` int(10) UNSIGNED NOT NULL,
  `nomor_telepon` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pengguna_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `telepon`
--

INSERT INTO `telepon` (`id`, `nomor_telepon`, `pengguna_id`, `created_at`, `updated_at`) VALUES
(1, '(+62) 878 0989 834', 1, NULL, NULL),
(2, '02131311231', 2, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@admin.com', NULL, 'secret', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `anggota`
--
ALTER TABLE `anggota`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `anggota_hadiah`
--
ALTER TABLE `anggota_hadiah`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `hadiah`
--
ALTER TABLE `hadiah`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `telepon`
--
ALTER TABLE `telepon`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `anggota`
--
ALTER TABLE `anggota`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `anggota_hadiah`
--
ALTER TABLE `anggota_hadiah`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `hadiah`
--
ALTER TABLE `hadiah`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `telepon`
--
ALTER TABLE `telepon`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
