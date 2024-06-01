-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 01 Jun 2024 pada 05.41
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_shroomscan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `jamur`
--

CREATE TABLE `jamur` (
  `id` int(4) NOT NULL,
  `nama` varchar(256) NOT NULL,
  `jenis` varchar(256) NOT NULL,
  `gambar` varchar(256) NOT NULL,
  `introduction` varchar(256) NOT NULL,
  `planting_media` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `jamur`
--

INSERT INTO `jamur` (`id`, `nama`, `jenis`, `gambar`, `introduction`, `planting_media`) VALUES
(1, 'Jamur kancing (Agaricus bisporus)', 'Jamur Kancing Putih', 'https://upload.wikimedia.org/wikipedia/commons/0/01/ChampignonMushroom.jpg', 'Jenis jamur yang paling banyak dibudidayakan di dunia, sekitar 38% dari total produksi jamur dunia. Biasa dipakai sebagai topping pizza.', 'Campuran serbuk gergaji dan dedak'),
(2, 'Jamur tiram (Pleurotus sp)', 'Jamur Kayu', 'https://upload.wikimedia.org/wikipedia/commons/9/94/Oyster_mushoom_fells.jpg', 'Sekitar 25% dari total produksi jamur dunia berupa jamur tiram. Tiongkok merupakan produsen jamur tiram yang utama. Jamur tiram terdiri dari beberapa varietas yaitu, jamur tiram putih (Pleurotus ostreatus), jamur tiram abu-abu (Pleurotus cystidius), jamur ', 'Media baglog dengan bahan utama ialah serbuk kayu'),
(3, 'Jamur merang (Volvariella volvaceae)', 'Jamur kompos', 'https://faperta.unisma.ac.id/wp-content/uploads/2020/05/Volvariella-volvaceae.jpg', 'Spesies jamur pangan yang biasa tumbuh di Asia Timur dan Tenggara yang beriklim tropis atau subtropis. Istilah jamur berasal dari bahasa Tionghoa cǎogū (Hanzi:草菇). Budi daya jamur merang memiliki peluang yang cukup besar untuk menghasilkan keuntungan. Jamu', 'Kumung, tumbuh baik pada jerami busuk dan substrat jerami. Budi daya jamur juga tumbuh subur pada kompos kertas, tandan kosong kelapa sawit, batang pisang'),
(4, 'Jamur berangan  (Lentinula edodes)', 'Basidiomycetes', 'https://upload.wikimedia.org/wikipedia/commons/6/65/Lentinula_edodes.jpg', 'Jamur pangan asal Asia Timur yang terkenal di seluruh dunia dengan nama aslinya dalam bahasa Jepang yaitu shitake (椎茸). Jamur shitake secara harafiah berarti jamur dari pohon shii (Castanopsis cuspidata) karena batang pohonnya yang sudah lapuk merupakan te', 'Serbuk gergajian dari jenis kayu keras seperti Jati atau bisa juga berupa campuran serbuk gergajian jati dan albasiah dengan komposisi 50:50'),
(5, 'Jamur kuping (Auricularia auricula)', 'Jamur edible', 'https://upload.wikimedia.org/wikipedia/commons/6/65/Lentinula_edodes.jpg', 'Jamur yang banyak dipakai untuk masakan Tionghoa, terdiri dari jamur kuping putih (Tremella fuciformis), jamur kuping hitam (Auricularia polytricha) dan jamur kuping merah (Auricularia auricula-judae). Tetapi mayoritas masyarakat menggunakan jamur kuping h', 'Serbuk gergaji kayu'),
(6, 'Jamur enokitake (Flammulina velutipes)', 'Jamur edible', 'https://upload.wikimedia.org/wikipedia/commons/6/65/Lentinula_edodes.jpg', 'Jamur enoki atau Flammulina velutipes merupakan salah satu jamur yang sudah lama digunakan sebagai obat tradisional di Tiongkok. Bentuk jamur yang menyerupai tauge dan berwarna putih kekuningan ini diyakini dapat membantu menurukan kadar gula darah dan tek', 'Campuran serbuk kayu, sekam padi, dan kapur'),
(7, 'Jamur maitake (Grifola frondosa)', 'Jamur edible', 'https://upload.wikimedia.org/wikipedia/commons/6/65/Lentinula_edodes.jpg', 'Maitake atau jamur kepala domba (Grifola frondosa) diambil dari bahasa jepang, adalah sebuah jenis jamur yang dikenal sebagai baik sayur maupun obat herbal. Jamur ini dinamai demikian karena orang-orang yang menemukan jamur ini dipedalaman pegunungan akan ', 'Tumbuh besar membentuk bola di tanah, di dasar sisa pohon, atau tunggul'),
(8, 'Jamur truffle (Tuber magnatum, Tuber aestivum, Tuber melanosporum, dan Tuber brumale)', 'Ectomycorrhizal', 'https://upload.wikimedia.org/wikipedia/commons/6/65/Lentinula_edodes.jpg', 'Jamur langka yang sulit ditemukan, sehingga menemukannya butuh bantuan anjing dan babi yang memiliki penciuman tajam. Jamur truffle adalah jamur termahal di dunia. Truffle adalah salah satu jenis jamur yang bisa dimakan. Truffle tumbuh di bawah tanah di an', 'Tanah di antara akar pohon tertentu.');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
