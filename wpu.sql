-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 16 Nov 2022 pada 18.29
-- Versi server: 10.1.38-MariaDB
-- Versi PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wpu`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `image` varchar(128) NOT NULL,
  `password` varchar(128) NOT NULL,
  `role_id` int(11) NOT NULL,
  `is_active` int(11) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `image`, `password`, `role_id`, `is_active`, `date_created`) VALUES
(11, 'Hamzah Andy Zulkarnaen', 'hamzahhamah066@gmail.com', 'hazmah1.jpg', '$2y$10$AlyOOillo7SBBsvwrkvDseoqOIHiEj93WhJDdQr4p6Km4gA3/QOpW', 1, 1, 1667456430);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_access_menu`
--

CREATE TABLE `user_access_menu` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user_access_menu`
--

INSERT INTO `user_access_menu` (`id`, `role_id`, `menu_id`) VALUES
(1, 1, 1),
(3, 2, 2),
(13, 1, 3),
(23, 1, 2),
(24, 1, 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_menu`
--

CREATE TABLE `user_menu` (
  `id` int(11) NOT NULL,
  `menu` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user_menu`
--

INSERT INTO `user_menu` (`id`, `menu`) VALUES
(1, 'Admin'),
(2, 'User'),
(3, 'Menu'),
(5, 'Terserah');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_role`
--

CREATE TABLE `user_role` (
  `id` int(11) NOT NULL,
  `role` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user_role`
--

INSERT INTO `user_role` (`id`, `role`) VALUES
(1, 'Admininistrator'),
(2, 'User\r\n'),
(3, 'managerku');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_sub_menu`
--

CREATE TABLE `user_sub_menu` (
  `id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `url` varchar(128) NOT NULL,
  `icon` varchar(128) NOT NULL,
  `is_active` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user_sub_menu`
--

INSERT INTO `user_sub_menu` (`id`, `menu_id`, `title`, `url`, `icon`, `is_active`) VALUES
(1, 1, 'Dashboard', 'admin', 'fas fa-fw fa-tachometer-alt', 1),
(2, 2, 'My Profile', 'user', 'fas fa-fw fa-user', 1),
(3, 2, 'Edit Profile', 'user/edit', 'fas fa-fw fa-user-edit', 1),
(4, 3, 'Menu Management', 'menu', 'fas fa-fw fa-folder', 1),
(5, 3, 'Submenu Management', 'menu/submenu', 'fas fa-fw fa-folder-open', 1),
(10, 1, 'Role', 'admin/role', 'fas fas-fw fa-user-tie', 1),
(12, 2, 'Change Password', 'user/changepassword', 'fas fa-fw fa-key', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user_token`
--

CREATE TABLE `user_token` (
  `id` int(11) NOT NULL,
  `email` varchar(128) NOT NULL,
  `token` varchar(128) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user_token`
--

INSERT INTO `user_token` (`id`, `email`, `token`, `date_created`) VALUES
(1, 'abimanyu1234poa@gmail.com', 'NDQ3NzA2NzU4MTkyMTEwODM0NTk2MTEzNjAzNjMzODc=', 1666235768),
(2, 'abimanyu1234poa@gmail.com', 'NjI4Mjk5MDYyOTE3NDY4ODY4ODM1ODg0NDU2NjkyODE=', 1666235804),
(3, 'abimanyu1234poa@gmail.com', 'NDYxMDkzOTY0MTYwMTEwMDUxNTE3MzA0MzQ3MzU3NTc=', 1666235864),
(4, 'abimanyu1234poa@gmail.com', 'MzczNDQ1NTcyMzU2NjY4MDgwMjc1MTI3ODU5NjY4NzU=', 1666235963),
(5, 'abimanyu1234poa@gmail.com', 'MzExODg3OTY2OTY0NTM3NjQxMDEwMTg1MzUwNzAwODI=', 1666238171),
(6, 'abimanyu1234poa@gmail.com', 'Nzg4MjIwNDc0MDY2NTA0OTA3OTIyNDI0NTc0OTAwNjY=', 1666238178),
(7, 'ferdiansyh2005@gmail.com', 'NDg5Mjg1MzU3NzExMjcxODAxNzIwMzgyMDk2MzAxMDU=', 1666238535),
(8, 'ferdiansyh2005@gmail.com', 'NzY5NjU4NTUxNzk1NzQ2NDU2Mzc5MjAwODk2ODg5Mzk=', 1666238736),
(9, 'ferdiansyh2005@gmail.com', 'MjkyOTM3NjQ2OTY1NzA4ODUzODI4NTIyNTk2ODQyNTQ=', 1666238770),
(10, 'ferdiansyh2005@gmail.com', 'NDU4MDM2NjAwNzA1MjYyOTA0MDI5ODk4MTI3NzEyNjQ=', 1666238833),
(11, 'ferdiansyh2005@gmail.com', 'NzY4NjIyMzgwMzU5ODk3NzU3NjQ0ODMwNzc2OTg1ODg=', 1666238896),
(17, 'jiopyu8800@gmail.com', 'NzU3MTI1NzU1OTIyMzU4MDA4NTA0ODkwOTAxMjQzNzM=', 1667441837),
(18, 'jiopyu8800@gmail.com', 'NjYwMjYzMTIzNzg2OTIwNTk1MTM2Njg5NDU2OTQyMjI=', 1667441922),
(21, 'yahyasalamudin9@gmail.com', 'NTUxMzkyOTQ1NTU3MzE1Njc5MjA4NzQxOTUxODE5MzU=', 1667442424),
(22, 'yahyasalamudin9@gmail.com', 'NzQ4OTU4NzMxMjM3NDE2NTA2NTU3MzAxMTQyMTE0ODk=', 1667442565),
(24, 'hamzahhamah066@gmail.com', 'ybErX0iIBNEZzFsmUOawsQ1hNnSqpNieBpHfP3O1SS8=', 1667456680);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_access_menu`
--
ALTER TABLE `user_access_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_menu`
--
ALTER TABLE `user_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user_token`
--
ALTER TABLE `user_token`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `user_access_menu`
--
ALTER TABLE `user_access_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT untuk tabel `user_menu`
--
ALTER TABLE `user_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `user_token`
--
ALTER TABLE `user_token`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
