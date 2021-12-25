-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 04 Jan 2022 pada 14.00
-- Versi server: 10.4.19-MariaDB
-- Versi PHP: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_pengelolaan_krs`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `krs`
--

CREATE TABLE `krs` (
  `no` int(10) NOT NULL,
  `npm` varchar(20) NOT NULL,
  `nama` text NOT NULL,
  `id_mk` varchar(7) NOT NULL,
  `semester` int(2) NOT NULL,
  `kelas` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `krs`
--

INSERT INTO `krs` (`no`, `npm`, `nama`, `id_mk`, `semester`, `kelas`) VALUES
(1, '19630933', 'Dwi Ananda Fajarwati', 'MK236', 5, '5B non Reg'),
(2, '19630933', 'Dwi Ananda Fajarwati', 'MK0136', 5, '5B non Reg'),
(3, '19630933', 'Dwi Ananda Fajarwati', 'MK0156', 5, '5B non Reg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `npm` varchar(100) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `telp` varchar(100) NOT NULL,
  `email` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `mahasiswa`
--

INSERT INTO `mahasiswa` (`npm`, `nama`, `telp`, `email`) VALUES
('19630933', 'Dwi Ananda Fajarwati', '0877153214789', 'fajarwati@gmail.com');

-- --------------------------------------------------------

--
-- Struktur dari tabel `matakuliah`
--

CREATE TABLE `matakuliah` (
  `id_mk` varchar(7) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `sks` int(2) NOT NULL,
  `dosen` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `matakuliah`
--

INSERT INTO `matakuliah` (`id_mk`, `nama`, `sks`, `dosen`) VALUES
('MK236', 'Pemrogaman Web', 2, 'Abdi'),
('MK0136', 'Desain Grafis', 1, 'Gusti'),
('MK0156', 'Logika', 3, 'Putri'),
('MK0157', 'Jaringan', 2, 'Putri');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
