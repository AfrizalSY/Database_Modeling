-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 22 Jan 2021 pada 13.38
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
-- Database: `akademik`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `dosen`
--

CREATE TABLE `dosen` (
  `nid` varchar(45) NOT NULL,
  `jabatan_fungsional` varchar(45) NOT NULL,
  `tahun_masuk` int(11) NOT NULL,
  `User_username` varchar(255) NOT NULL,
  `Perkuliahan_id` int(11) NOT NULL,
  `terdaftar` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `dosen`
--

INSERT INTO `dosen` (`nid`, `jabatan_fungsional`, `tahun_masuk`, `User_username`, `Perkuliahan_id`, `terdaftar`) VALUES
('0198800143', 'NJFA', 2001, 'FEBRIAL198800143', 30, 20101),
('0405066802', 'Lektor', 2002, 'DADAN680024', 315, 57402),
('0405109401', 'NJFA', 2004, 'AJENG20940032', 38, 55201),
('0405127701', 'Lektor', 2001, 'DUDI10770063', 320, 62201),
('0407128701', 'Lektor', 2001, 'HANI14870092', 35, 26201),
('0408036701', 'Lektor', 2005, 'DODIE93670009', 319, 61201),
('0409095403', 'Lektor', 2003, 'GADANG7540007', 31, 20201),
('0410127903', 'Lektor', 2004, 'DEWA147900541', 318, 61101),
('0411014301', 'Guru Besar', 2006, 'HIRO6430001', 33, 20402),
('0416089204', 'Asisten Ahli', 2006, 'ARDAN19920021', 310, 55401),
('0416106201', 'Asisten Ahli', 2001, 'BRADY2620020', 313, 57201),
('0419056705', 'Asisten Ahli', 2002, 'ARIF13670015', 311, 56202),
('0420015903', 'Lektor', 2000, 'ACHMAD14590001', 36, 30201),
('0422037604', 'Lektor', 2003, 'DEDEN760013', 316, 59201),
('0424078005', 'Lektor', 2003, 'ASTRI14800037', 312, 56402),
('0426017302', 'Asisten Ahli', 2000, 'ADHI10730006', 37, 55101),
('0426088502', 'Lektor', 2004, 'DEDIK760013', 317, 59202),
('0426098901', 'Asisten Ahli', 2006, 'DINDA13890067', 322, 63315),
('0426107801', 'Lektor', 2002, 'DAMAYANTI10780055', 314, 57401),
('0427097105', 'Lektor', 2005, 'ANDRY13710043', 39, 55203),
('0428065501', 'Lektor', 2001, 'HERRY14550007', 32, 20202),
('0430037303', 'Lektor', 2003, 'HERRY6730013', 34, 26101),
('08832123419', 'NJFA', 2007, 'EDI19720003', 321, 63211);

-- --------------------------------------------------------

--
-- Struktur dari tabel `fakultas`
--

CREATE TABLE `fakultas` (
  `kode_fakultas` varchar(255) NOT NULL,
  `nama_fakultas` varchar(45) NOT NULL,
  `Dosen_nid` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `fakultas`
--

INSERT INTO `fakultas` (`kode_fakultas`, `nama_fakultas`, `Dosen_nid`) VALUES
('FEB', 'Ekonomi dan Bisnis', '0409095403'),
('FIF', 'Informatika', '0428065501'),
('FIK', 'Industri Kreatif', '0411014301'),
('FIT', 'Ilmu Terapan', '0430037303'),
('FKB', 'Komunikasi dan Bisnis', '0407128701'),
('FRI', 'Rekayasa Industri', '0420015903'),
('FTE', 'Teknik Elektro', '0427097105');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `nim` varchar(45) NOT NULL,
  `status_masuk` varchar(45) DEFAULT NULL,
  `User_username` varchar(255) NOT NULL,
  `Wali_Orang_Tua_User_username` varchar(255) NOT NULL,
  `Program_Studi_kode_prodi` int(5) NOT NULL,
  `Dosen_nid` varchar(45) DEFAULT NULL,
  `Dosen_User_username` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `mahasiswa`
--

INSERT INTO `mahasiswa` (`nim`, `status_masuk`, `User_username`, `Wali_Orang_Tua_User_username`, `Program_Studi_kode_prodi`, `Dosen_nid`, `Dosen_User_username`) VALUES
('1301190090', 'JPA 1', 'HANVITO0090', 'Purnomo3292', 20101, '0198800143', 'FEBRIAL198800143'),
('1301190188', 'USM 1', 'MANSEL0188', 'Alfiansyah3292', 20201, '0409095403', 'GADANG7540007'),
('1301190318', 'UTG 2', 'IQBAL0018', 'Annisa3293', 20202, '0428065501', 'HERRY14550007'),
('1301190345', 'USM 1', 'AHMAD0095', 'Ayudia3294', 20402, '0411014301', 'HIRO6430001'),
('1301190385', 'UTG 2', 'FIRDAUS0085', 'Asyari3423', 26101, '0430037303', 'HERRY6730013'),
('1301190424', 'UTG 1', 'CLAUDIA0929', 'Ayudia3295', 26201, '0407128701', 'HANI14870092'),
('1301190442', 'JPA 2', 'PRIYAN0992', 'Chelsea3296', 30201, '0420015903', 'ACHMAD14590001'),
('1301193303', 'UTG 2', 'GUIDO0000', 'Fadjri3298', 55101, '0426017302', 'ADHI10730006'),
('1301194012', 'USM 1', 'RIZKI9012', 'Imel3299', 55201, '0405109401', 'AJENG20940032'),
('1301194024', 'JPA 1', 'KURNIADI9029', 'Ivan3300', 55203, '0427097105', 'ANDRY13710043'),
('1301194040', 'UTG 2', 'VENA9090', 'Laila3301', 55401, '0416089204', 'ARDAN19920021'),
('1301194042', 'PJJ 1', 'RIZKY9092', 'Mohammad3302', 56202, '0419056705', 'ARIF13670015'),
('1301194056', 'JPA 1', 'MICHAEL9051', 'Muhammad3303', 56402, '0424078005', 'ASTRI14800037'),
('1301194073', 'JPA 1', 'NAUFAL9070', 'Nurcahya3304', 57201, '0416106201', 'BRADY2620020'),
('1301194089', 'PJJ 1', 'LIVIA9089', 'Rahmanisa3305', 57401, '0426107801', 'DAMAYANTI10780055'),
('1301194107', 'JPA 2', 'NANDA9107', 'Raihandika3306', 57402, '0405066802', 'DADAN680024'),
('1301194138', 'USM 2', 'IGNASIUS9108', 'Revand3307', 59201, '0422037604', 'DEDEN760013'),
('1301194141', 'USM 2', 'NI9191', 'Reyhan3315', 59202, '0426088502', 'DEDIK760013'),
('1301194228', 'UTG 2', 'YOGI9228', 'Salwa3308', 61101, '0410127903', 'DEWA147900541'),
('1301194258', 'JPA 2', 'FADHLURRAHMAN9258', 'Salwa3370', 61201, '0408036701', 'DODIE93670009'),
('1301194288', 'UTG 1', 'AFRIZAL9288', 'Satriyo3309', 62201, '0405127701', 'DUDI10770063'),
('1301194397', 'UTG 1', 'KASYFI9097', 'Sultoni3311', 63211, '08832123419', 'EDI19720003'),
('1301194427', 'UTG 1', 'MUHAMMAD9927', 'Syalman3310', 63315, '0426098901', 'DINDA13890067');

-- --------------------------------------------------------

--
-- Struktur dari tabel `mata_kuliah`
--

CREATE TABLE `mata_kuliah` (
  `kode_mata_kuliah` varchar(45) NOT NULL,
  `nama_mata_kuliah` varchar(45) NOT NULL,
  `SKS` int(11) NOT NULL,
  `semester` varchar(45) NOT NULL,
  `kurikulum` varchar(45) NOT NULL,
  `Perkuliahan_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `mata_kuliah`
--

INSERT INTO `mata_kuliah` (`kode_mata_kuliah`, `nama_mata_kuliah`, `SKS`, `semester`, `kurikulum`, `Perkuliahan_id`) VALUES
('BAH1A3', 'EKONOMI BISNIS', 3, '1', '2020', 311),
('BAH1B3', 'PENGANTAR ILMU ADMINISTRASI BISNIS', 3, '1', '2020', 312),
('BAH1C2', 'BAHASA INGGRIS BISNIS', 2, '2', '2020', 317),
('BAH1D3', 'TEORI ORGANISASI', 3, '2', '2020', 318),
('BAH1E3', 'MATEMATIKA BISNIS', 3, '2', '2020', 319),
('BAH1F4', 'PRINSIP – PRINSIP AKUNTANSI', 4, '2', '2020', 320),
('BAH1G3', 'HUKUM BISNIS', 3, '2', '2020', 321),
('BAH1H2', 'FILSAFAT BISNIS', 2, '2', '2020', 322),
('CBH1C3', 'DASAR LOGIKA', 3, '1', '2020', 313),
('CII1C2', 'STATISTIKA', 2, '3', '2020', 32),
('CII1I3', 'SISTEM DIGITAL', 3, '3', '2020', 30),
('CII1J3', 'PEMODELAN BASIS DATA', 2, '3', '2020', 35),
('CII2A3', 'ORGANISASI DAN ARSITEKTUR KOMPUTER', 3, '3', '2020', 38),
('CII2C2', 'ANALISIS KOMPLEKSITAS ALGORITMA', 2, '3', '2020', 33),
('CII2E2', 'RLP : ANALISIS KEBUTUHAN', 2, '3', '2020', 37),
('CII2G3', 'TEORI PELUANG', 2, '3', '2020', 34),
('CII2I2', 'WAWASAN GLOBAL TIK', 2, '3', '2020', 31),
('DUH1A2', 'LITERASI TIK', 2, '1', '2020', 315),
('HUH1A2', 'PENDIDIKAN AGAMA DAN ETIKA', 2, '1', '2020', 39),
('HUH1G3', 'PANCASILA DAN KEWARGANEGARAAN', 3, '1', '2020', 310),
('LUH1A2', 'BAHASA INDONESIA', 2, '2', '2020', 316),
('LUH1B2', 'BAHASA INGGRIS', 2, '1', '2020', 314),
('UWI3A2', 'KEWIRAUSAHAAN', 2, '3', '2020', 36);

-- --------------------------------------------------------

--
-- Struktur dari tabel `perkuliahan`
--

CREATE TABLE `perkuliahan` (
  `id` int(11) NOT NULL,
  `ruangan` varchar(45) NOT NULL,
  `hari` varchar(45) NOT NULL,
  `jam` time NOT NULL,
  `kode_prs` varchar(45) NOT NULL,
  `tahun_ajar` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `perkuliahan`
--

INSERT INTO `perkuliahan` (`id`, `ruangan`, `hari`, `jam`, `kode_prs`, `tahun_ajar`) VALUES
(30, 'KU1.03.01', 'Rabu', '07:30:00', '20', '2020/2021'),
(31, 'KU1.03.02', 'Selasa', '13:45:00', '21', '2020/2021'),
(32, 'KU1.03.03', 'Kamis', '15:30:00', '22', '2020/2021'),
(33, 'KU1.03.04', 'Jumat', '07:30:00', '23', '2020/2021'),
(34, 'KU1.03.05', 'Senin', '07:30:00', '24', '2020/2021'),
(35, 'KU1.03.11', 'Kamis', '13:45:00', '25', '2020/2021'),
(36, 'KU1.03.06', 'Senin', '07:30:00', '26', '2020/2021'),
(37, 'KU1.03.17', 'Rabu', '07:30:00', '27', '2020/2021'),
(38, 'KU1.03.11', 'Kamis', '15:30:00', '28', '2020/2021'),
(39, 'KU1.03.10', 'Jumat', '07:30:00', '29', '2020/2021'),
(310, 'KU3.02.14', 'Kamis', '13:45:00', '210', '2020/2021'),
(311, 'KU3.02.13', 'Selasa', '10:00:00', '211', '2020/2021'),
(312, 'KU1.02.07', 'Rabu', '07:30:00', '212', '2020/2021'),
(313, 'KU1.02.05', 'Rabu', '10:00:00', '213', '2020/2021'),
(314, 'KU1.02.07', 'Jumat', '15:30:00', '214', '2020/2021'),
(315, 'KU3.02.14', 'Kamis', '13:45:00', '215', '2020/2021'),
(316, 'KU3.02.13', 'Selasa', '10:00:00', '216', '2020/2021'),
(317, 'KU1.02.07', 'Rabu', '07:30:00', '217', '2020/2021'),
(318, 'KU1.02.05', 'Rabu', '10:00:00', '218', '2020/2021'),
(319, 'KU1.02.07', 'Jumat', '15:30:00', '219', '2020/2021'),
(320, 'KU1.02.05', 'Rabu', '10:00:00', '220', '2020/2021'),
(321, 'KU1.02.07', 'Jumat', '15:30:00', '221', '2020/2021'),
(322, 'KU3.02.13', 'Selasa', '10:00:00', '222', '2020/2021');

-- --------------------------------------------------------

--
-- Struktur dari tabel `perwalian`
--

CREATE TABLE `perwalian` (
  `kode_prs` varchar(45) NOT NULL,
  `semester` int(11) NOT NULL,
  `tahun_ajar` varchar(45) NOT NULL,
  `jumlah_sks` int(11) NOT NULL,
  `status` varchar(45) NOT NULL,
  `tanggal_diajukan` varchar(45) NOT NULL,
  `tanggal_disetujui` varchar(45) NOT NULL,
  `Dosen_nid` varchar(45) DEFAULT NULL,
  `Mahasiswa_nim` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `perwalian`
--

INSERT INTO `perwalian` (`kode_prs`, `semester`, `tahun_ajar`, `jumlah_sks`, `status`, `tanggal_diajukan`, `tanggal_disetujui`, `Dosen_nid`, `Mahasiswa_nim`) VALUES
('20', 1, '2020/2021', 22, 'ACC', '2020-04-18', '2020-04-26', '0198800143', '1301190090'),
('21', 2, '2020/2021', 21, 'ACC', '2021-04-05', '2021-04-26', '0409095403', '1301190188'),
('210', 1, '2020/2021', 23, 'ACC', '2020-04-19', '2020-04-26', '0428065501', '1301190318'),
('211', 1, '2020/2021', 19, 'ACC', '2020-04-04', '2020-04-26', '0411014301', '1301190345'),
('212', 1, '2020/2021', 23, 'ACC', '2020-04-15', '2020-04-26', '0430037303', '1301190385'),
('213', 1, '2020/2021', 22, 'ACC', '2020-04-16', '2020-04-26', '0407128701', '1301190424'),
('214', 1, '2020/2021', 22, 'ACC', '2018-04-17', '2018-04-26', '0420015903', '1301190442'),
('215', 1, '2020/2021', 22, 'ACC', '2020-04-20', '2020-04-26', '0426017302', '1301193303'),
('216', 1, '2020/2021', 19, 'ACC', '2020-04-15', '2020-04-26', '0405109401', '1301194012'),
('217', 1, '2020/2021', 21, 'ACC', '2020-04-10', '2020-04-26', '0427097105', '1301194024'),
('218', 1, '2020/2021', 23, 'ACC', '2020-04-04', '2020-04-26', '0416089204', '1301194040'),
('219', 1, '2020/2021', 19, 'ACC', '2018-04-04', '2018-04-26', '0419056705', '1301194042'),
('22', 1, '2020/2021', 22, 'ACC', '2020-04-13', '2020-04-26', '0424078005', '1301194056'),
('220', 1, '2020/2021', 19, 'ACC', '2020-04-07', '2020-04-26', '0416106201', '1301194073'),
('221', 1, '2020/2021', 19, 'ACC', '2020-04-20', '2020-04-26', '0426107801', '1301194089'),
('222', 1, '2020/2021', 23, 'ACC', '2018-04-20', '2018-04-26', '0405066802', '1301194107'),
('23', 2, '2020/2021', 19, 'ACC', '2021-04-13', '2021-04-26', '0422037604', '1301194138'),
('24', 2, '2020/2021', 21, 'ACC', '2021-04-22', '2021-04-26', '0426088502', '1301194141'),
('25', 1, '2020/2021', 23, 'ACC', '2020-04-04', '2020-04-26', '0410127903', '1301194228'),
('26', 1, '2020/2021', 23, 'ACC', '2018-04-16', '2018-04-26', '0408036701', '1301194258'),
('27', 1, '2020/2021', 23, 'ACC', '2020-04-03', '2020-04-26', '0405127701', '1301194288'),
('28', 1, '2020/2021', 19, 'ACC', '2020-04-03', '2020-04-26', '08832123419', '1301194397'),
('29', 1, '2020/2021', 22, 'ACC', '2020-04-18', '2020-04-26', '0426098901', '1301194427');

-- --------------------------------------------------------

--
-- Struktur dari tabel `program_studi`
--

CREATE TABLE `program_studi` (
  `kode_prodi` int(5) NOT NULL,
  `nama_prodi` varchar(45) NOT NULL,
  `Fakultas_kode_fakultas` varchar(255) NOT NULL,
  `Dosen_nid` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `program_studi`
--

INSERT INTO `program_studi` (`kode_prodi`, `nama_prodi`, `Fakultas_kode_fakultas`, `Dosen_nid`) VALUES
(20101, 'S2 Teknik Elektro', 'FTE', '0198800143'),
(20201, 'S1 Teknik Elektro', 'FTE', '0409095403'),
(20202, 'S1 Teknik Telekomunikasi', 'FTE', '0428065501'),
(20402, 'D3 Teknologi Telekomunikasi', 'FTE', '0411014301'),
(26101, 'S2 Teknik Industri', 'FRI', '0430037303'),
(26201, 'S1 Teknik Industri', 'FRI', '0407128701'),
(30201, 'S1 Teknik Fisika', 'FTE', '0420015903'),
(55101, 'S2 Informatika', 'FIF', '0426017302'),
(55201, 'S1 Informatika', 'FIF', '0405109401'),
(55203, 'S1 PJJ Informatika', 'FIF', '0427097105'),
(55401, 'D3 Rekayasa Perangkat Lunak Aplikasi', 'FIF', '0416089204'),
(56202, 'S1 Teknik Komputer', 'FTE', '0419056705'),
(56402, 'D3 Teknologi Komputer', 'FIT', '0424078005'),
(57201, 'S1 Sistem Informasi', 'FRI', '0416106201'),
(57401, 'D3 Sistem Informasi', 'FIT', '0426107801'),
(57402, 'D3 Sistem Informasi Akuntansi', 'FIT', '0405066802'),
(59201, 'S1 Teknologi Informasi', 'FIF', '0422037604'),
(59202, 'S1 Rekayasa Perangkat Lunak', 'FRI', '0426088502'),
(61101, 'S2 Manajemen', 'FEB', '0410127903'),
(61201, 'S1 Manajemen', 'FEB', '0408036701'),
(62201, 'S1 Akuntansi', 'FEB', '0405127701'),
(63211, 'S1 Administrasi Bisnis', 'FKB', '08832123419'),
(63315, 'S1 Teknik Logistik', 'FRI', '0426098901');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `username` varchar(255) NOT NULL,
  `password` varchar(45) NOT NULL,
  `nama_depan` varchar(45) NOT NULL,
  `nama_belakang` varchar(45) NOT NULL,
  `jenis_kelamin` varchar(45) NOT NULL,
  `tempat_lahir` varchar(45) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `alamat` longtext NOT NULL,
  `telp` varchar(20) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`username`, `password`, `nama_depan`, `nama_belakang`, `jenis_kelamin`, `tempat_lahir`, `tanggal_lahir`, `alamat`, `telp`, `email`) VALUES
('ACHMAD14590001', '14590001ACHMAD', 'ACHMAD', 'MANSHUR ALI SUYANTO', 'Laki - laki', 'Metro', '1970-12-01', 'midtown 1 nomor 189', '082214590001', 'achmadmanshuralisuyanto@telu.ac.id'),
('ADHI10730006', '10730006ADHI', 'ADHI', 'PRASETIO', 'Laki - laki', 'Jember', '1970-12-01', 'midtown 1 nomor 192', '082210730006', 'adhiprasetio@telu.ac.id'),
('AFRIZAL9288', '9288AFRIZAL', 'AFRIZAL', 'SYAHRULUDDIN YUSUF', 'Laki - laki', 'Ponorogo', '1999-08-01', 'mujaer 0 nomor 80', '082209899288', 'afrizalsyahruluddin_yusuf@student.telkomuniversity.ac.id'),
('AHMAD0095', '0095AHMAD', 'AHMAD', 'JULIUS TARIGAN', 'Laki - laki', 'Lebak', '1999-08-01', 'gurame 1 nomor 192', '082209890095', 'ahmadjulius_tarigan@student.telkomuniversity.ac.id'),
('AJENG20940032', '20940032AJENG', 'AJENG', 'LUTHFIYATUL FARIDA', 'Perempuan', 'Tanjung Jabung Timur', '1970-12-01', 'downtown 1 nomor 121', '082220940032', 'ajengluthfiyatulfarida@telu.ac.id'),
('Alfiansyah3292', '3292Alfiansyah', 'Alfiansyah', 'Umar Dani', 'Perempuan', 'Jember', '1960-01-31', 'sokearno-hatta 1 nomor 192', '082209893292', 'AlfiansyahUmarDani@gmail.com'),
('ANDRY13710043', '13710043ANDRY', 'ANDRY', 'ALAMSYAH', 'Laki - laki', 'Tolikara', '1970-12-01', 'luxville 9 nomor 195', '082213710043', 'andryalamsyah@telu.ac.id'),
('Annisa3293', '3293Annisa', 'Annisa', 'Ratu Dewi', 'Laki - laki', 'Tanjung Jabung Timur', '1960-01-31', 'teuku umar 1 nomor 121', '082209893293', 'AnnisaRatuDewi@gmail.com'),
('ARDAN19920021', '19920021ARDAN', 'ARDAN', 'GANI ASALAM', 'Laki - laki', 'Aceh Jaya', '1970-12-01', 'luxville 0 nomor 171', '082219920021', 'ardanganiasalam@telu.ac.id'),
('ARIF13670015', '13670015ARIF', 'ARIF', 'PARTONO PRASETIO', 'Laki - laki', 'Magelang', '1970-12-01', 'downtown 9 nomor 57', '082213670015', 'arifpartonoprasetio@telu.ac.id'),
('ASTRI14800037', '14800037ASTRI', 'ASTRI', 'GHINA', 'Perempuan', 'Sukabumi', '1970-12-01', 'sandstrom 2 nomor 102', '082214800037', 'astrighina@telu.ac.id'),
('Asyari3423', '3423Asyari', 'Asyari', 'Muhammad Hariyanto', 'Laki - laki', 'Aceh Jaya', '1960-01-31', 'kh moch kholil 0 nomor 171', '082209893423', 'AsyariMuhammadHariyanto@gmail.com'),
('Ayudia3294', '3294Ayudia', 'AAyudia', 'Dwi Putra Wardana', 'Laki - laki', 'Tolikara', '1960-01-31', 'kh moch kholil 9 nomor 195', '082209893294', 'AyudiaDwiPutraWardana@gmail.com'),
('Ayudia3295', '3295Ayudia', 'Ayudia', 'Putri Langsa', 'Laki - laki', 'Magelang', '1960-01-31', 'teuku umar 9 nomor 57', '082209893295', 'AyudiahPutriLangsa@gmail.com'),
('BRADY2620020', '2620020BRADY', 'BRADY', 'RIKUMAHU', 'Laki - laki', 'Sawah Lunto', '1970-12-01', 'luxville 9 nomor 101', '08222620020', 'bradyrikumahu@telu.ac.id'),
('Chelsea3296', '3296Chelsea', 'Chelsea', 'Putri Amelia Mukti', 'Perempuan', 'Sukabumi', '1960-01-31', 'demangan 2 nomor 102', '082209893296', 'ChelseaPutriAmeliaMukti@gmail.com'),
('CLAUDIA0929', '0929CLAUDIA', 'CLAUDIA', 'MEI SERIN SITIO', 'Perempuan', 'Lembata', '1999-08-01', 'lele 9 nomor 157', '082209890929', 'claudiamei_serinsitio@student.telkomuniversity.ac.id'),
('DADAN680024', '680024DADAN', 'DADAN', 'RAHADIAN', 'Laki - laki', 'Kutai Kartanegara', '1970-12-01', 'downtown 9 nomor 125', '0822680024', 'dadanrahadian@telu.ac.id'),
('DAMAYANTI10780055', '10780055DAMAYANTI', 'DAMAYANTI', 'OCTAVIA', 'Perempuan', 'Pekalongan', '1970-12-01', 'luxville 1 nomor 101', '082210780055', 'damayantioctavia@telu.ac.id'),
('DEDEN760013', '760013DEDEN', 'DEDEN', 'SYARIF HIDAYATULLOH', 'Laki - laki', 'Bantul', '1970-12-01', 'provence 9 nomor 87', '0822760013', 'dedensyarifhidayatulloh@telu.ac.id'),
('DEDIK760013', '760013DEDIK', 'DEDIK', 'NUR TRIYANTO', 'Laki - laki', 'Gorontalo', '1970-12-01', 'midtown 1 nomor 72', '0822760013', 'dediknurtriyanto@telu.ac.id'),
('DEWA147900541', '147900541DEWA', 'DEWA', 'PUTRA KRISHNA MAHARDIKA', 'Laki - laki', 'Lebak', '1970-12-01', 'downtown 1 nomor 192', '0822147900541', 'dewaputrakrishnamahardika@telu.ac.id'),
('DINDA13890067', '13890067DINDA', 'DINDA', 'AMANDA ZULIESTIANA', 'Perempuan', 'Lembata', '1970-12-01', 'midtown 9 nomor 157', '082213890067', 'dindaamandazuliestiana@telu.ac.id'),
('DODIE93670009', '93670009DODIE', 'DODIE', 'TRICAHYONO', 'Laki - laki', 'Cilacap', '1970-12-01', 'midtown 0 nomor 110', '082293670009', 'dodietricahyono@telu.ac.id'),
('DUDI10770063', '10770063DUDI', 'DUDI', 'PRATOMO', 'Laki - laki', 'Cilacap', '1970-12-01', 'stormtube 5 nomor 192', '082210770063', 'dudipratomo@telu.ac.id'),
('EDI19720003', '19720003EDI', 'EDI', 'WITJARA', 'Laki - laki', 'Kudus', '1970-12-01', 'stormtube 2 nomor 91', '082219720003', 'ediwitjara@telu.ac.id'),
('FADHLURRAHMAN9258', '9258FADHLURRAHMAN', 'FADHLURRAHMAN', 'AKBAR NASUTION', 'Laki - laki', 'Kepulauan Mentawai', '1999-08-01', 'lele 1 nomor 80', '082209899258', 'fadhlurrahmanakbar_nasution@student.telkomuniversity.ac.id'),
('Fadjri3298', '3298Fadjri', 'Fadjri', 'Annisa LEE', 'Laki - laki', 'Sawah Lunto', '1960-01-31', 'kh moch kholil 9 nomor 101', '082209893298', 'FadjriHerfandaIrawan@gmail.com'),
('FEBRIAL198800143', '198800143FEBRIAL', 'FEBRIAL', 'PRATAMA', 'Laki - laki', 'Ponorogo', '1970-12-01', 'sandstrom 0 nomor 80', '0822198800143', 'febrialpratama@telu.ac.id'),
('FIRDAUS0085', '0085FIRDAUS', 'FIRDAUS', 'PUTRA KURNIYANTO', 'Laki - laki', 'Cilacap', '1999-08-01', 'lele 0 nomor 110', '082209890085', 'firdausputra_kurniyanto@student.telkomuniversity.ac.id'),
('GADANG7540007', '7540007GADANG', 'GADANG', 'RAMANTOKO', 'Laki - laki', 'Rokan Hulu', '1970-12-01', 'downtown 0 nomor 108', '08227540007', 'gadangramantoko@telu.ac.id'),
('GUIDO0000', '0000GUIDO', 'GUIDO', 'TAMARA', 'Laki - laki', 'Gorontalo', '1999-08-01', 'lele 1 nomor 72', '082209890000', 'guidotamara@student.telkomuniversity.ac.id'),
('HANI14870092', '14870092HANI', 'HANI', 'GITA AYUNINGTIAS', 'Perempuan', 'Ngawi', '1970-12-01', 'provence 2 nomor 90', '082214870092', 'hanigitaayuningtias@telu.ac.id'),
('HANVITO0090', '0090HANVITO', 'HANVITO', 'MICHAEL LEE', 'Laki - laki', 'Sawah Lunto', '1999-08-01', 'piranha 9 nomor 101', '082209890090', 'hanvitomichael_lee@student.telkomuniversity.ac.id'),
('HERRY14550007', '14550007HERRY', 'HERRY', 'KUSAERY', 'Laki - laki', 'Makassar', '1970-12-01', 'downtown 9 nomor 100', '082214550007', 'herrykusaery@telu.ac.id'),
('HERRY6730013', '6730013HERRY', 'HERRY', 'IRAWAN', 'Laki - laki', 'Kepulauan Mentawai', '1970-12-01', 'midtown 1 nomor 80', '08226730013', 'herryirawan@telu.ac.id'),
('HIRO6430001', '6430001HIRO', 'HIRO', 'TUGIMAN', 'Laki - laki', 'Tanjung Jabung Barat', '1970-12-01', 'downtown 0 nomor 195', '08226430001', 'hirotugiman@telu.ac.id'),
('IGNASIUS9108', '9108IGNASIUS', 'IGNASIUS', 'NINDRA KARISMA FORESTYANTO', 'Laki - laki', 'Cilacap', '1999-08-01', 'hiu 5 nomor 192', '082209899108', 'ignasiusnindrakarisma_forestyanto@student.telkomuniversity.ac.id'),
('Imel3299', '3299Imel', 'Imel', 'Putri Fatoni', 'Perempuan', 'Pekalongan', '1960-01-31', 'kh moch kholil 1 nomor 101', '082209893299', 'ImelPutriFatoni@gmail.com'),
('IQBAL0018', '0018IQBAL', 'IQBAL', 'SAVIOLA SYAH BILLHAQ', 'Laki - laki', 'Kutai Kartanegara', '1999-08-01', 'gurame 9 nomor 125', '082209890018', 'iqbalsaviolasyah_billhaq@student.telkomuniversity.ac.id'),
('Ivan3300', '3300Ivan', 'Ivan', 'Nurcahya', 'Laki - laki', 'Kutai Kartanegara', '1960-01-31', 'teuku umar 9 nomor 125', '082209893300', 'IvanNurcahya@gmail.com'),
('KASYFI9097', '9097KASYFI', 'KASYFI', 'ZULKAISI AUFAR', 'Laki - laki', 'Rokan Hulu', '1999-08-01', 'gurame 0 nomor 108', '082209899097', 'kasyfizulkaisi_aufar@student.telkomuniversity.ac.id'),
('KURNIADI9029', '9029KURNIADI', 'KURNIADI', 'AHMAD WIJAYA', 'Laki - laki', 'Metro', '1999-08-01', 'lele 1 nomor 189', '082209899029', 'kurniadiahmad_wijaya@student.telkomuniversity.ac.id'),
('Laila3301', '3301Laila', 'Laila', 'Gustiyandini Prisila', 'Laki - laki', 'Bantul', '1960-01-31', 'pejagan 9 nomor 87', '082209893301', 'LailaGustiyandiniPrisila@gmail.com'),
('LIVIA9089', '9089LIVIA', 'LIVIA', 'NAURA AQILLA', 'Perempuan', 'Sukabumi', '1999-08-01', 'mujaer 2 nomor 102', '082209899089', 'livianaura_aqilla@student.telkomuniversity.ac.id'),
('MANSEL0188', '0188MANSEL', 'MANSEL', 'LORENZO NUGRAHA', 'Laki - laki', 'Kudus', '1999-08-01', 'hiu 2 nomor 91', '082209890188', 'mansellorenzo_nugraha@student.telkomuniversity.ac.id'),
('MICHAEL9051', '9051MICHAEL', 'MICHAEL', 'PUTERA WARDANA', 'Laki - laki', 'Tanjung Jabung Timur', '1999-08-01', 'gurame 1 nomor 121', '082209899051', 'michaelputera_wardana@student.telkomuniversity.ac.id'),
('Mohammad3302', '3302Mohammad', 'Mohammad', 'Zidan', 'Laki - laki', 'Gorontalo', '1960-01-31', 'sokearno-hatta 1 nomor 72', '082209893302', 'MohammadZidan@gmail.com'),
('Muhammad3303', '3303Muhammad', 'Muhammad', 'Syaifullah Ali Putra', 'Laki - laki', 'Lebak', '1960-01-31', 'teuku umar 1 nomor 192', '082209893303', 'MuhammadSyaifullahAliPutra@gmail.com'),
('MUHAMMAD9927', '9927MUHAMMAD', 'MUHAMMAD', 'ARYUSKA PRADANA', 'Laki - laki', 'Makassar', '1999-08-01', 'gurame 9 nomor 100', '082209899927', 'muhammadaryuska_pradana@student.telkomuniversity.ac.id'),
('NANDA9107', '9107NANDA', 'NANDA', 'IHWANI SAPUTRI', 'Perempuan', 'Ngawi', '1999-08-01', 'pindang 2 nomor 90', '082209899107', 'nandaihwani_saputri@student.telkomuniversity.ac.id'),
('NAUFAL9070', '9070NAUFAL', 'NAUFAL', 'HARITSAH LUTHFI', 'Laki - laki', 'Tolikara', '1999-08-01', 'piranha 9 nomor 195', '082209899070', 'naufalharitsah_luthfi@student.telkomuniversity.ac.id'),
('NI9191', '9191NI', 'NI', 'MADE DWIPADINI PUSPITARINI', 'Perempuan', 'Pekalongan', '1999-08-01', 'piranha 1 nomor 101', '082209899191', 'nimadedwipadini_puspitarini@student.telkomuniversity.ac.id'),
('Nurcahya3304', '3304Nurcahya', 'Nurcahya', 'Putra ASatriyoto', 'Laki - laki', 'Cilacap', '1960-01-31', 'sokearno-hatta 0 nomor 110', '082209893304', 'NurcahyaPutraASatriyoto@gmail.com'),
('PRIYAN0992', '0992PRIYAN', 'PRIYAN', 'FADHIL SUPRIYADI', 'Laki - laki', 'Tanjung Jabung Barat', '1999-08-01', 'gurame 0 nomor 195', '082209890992', 'priyanfadhil_supriyadi@student.telkomuniversity.ac.id'),
('Purnomo3292', '3292Purnomo', 'Purnomo', 'Adi', 'Laki - laki', 'Metro', '1960-01-31', 'sokearno-hatta 1 nomor 189', '082209893292', 'Purnomoadi@gmail.com'),
('Rahmanisa3305', '3305Rahmanisa', 'Rahmanisa', 'Eka Nindyasari', 'Laki - laki', 'Cilacap', '1960-01-31', 'hiu 5 nomor 192', '082209893305', 'RahmanisaEkaNindyasario@gmail.com'),
('Raihandika3306', '3306Raihandika', 'Raihandika', 'Wira Prayoga', 'Laki - laki', 'Kudus', '1960-01-31', 'hiu 2 nomor 91', '082209893306', 'RaihandikaWiraPrayoga@gmail.com'),
('Revand3307', '3307Revand', 'Revand', 'Rizky Hidayat', 'Perempuan', 'Lembata', '1960-01-31', 'sokearno-hatta 9 nomor 157', '082209832959', 'RevandRizkyHidayat@gmail.com'),
('Reyhan3315', '3315Reyhan', 'Reyhan', 'Aprilio Adiputra', 'Laki - laki', 'Ponorogo', '1960-01-31', 'demangan 0 nomor 80', '082209893315', 'ReyhanAprilioAdiputra@gmail.com'),
('RIZKI9012', '9012RIZKI', 'RIZKI', 'TRI SETIAWAN', 'Laki - laki', 'Aceh Jaya', '1999-08-01', 'piranha 0 nomor 171', '082209899012', 'rizkitri_setiawan@student.telkomuniversity.ac.id'),
('RIZKY9092', '9092RIZKY', 'RIZKY', 'HAFFIYAN ROSENO', 'Laki - laki', 'Magelang', '1999-08-01', 'gurame 9 nomor 57', '082209899092', 'rizkyhaffiyan_roseno@student.telkomuniversity.ac.id'),
('Salwa3308', '3308Salwa', 'Salwa', 'Arum Ragafatmi', 'Laki - laki', 'Rokan Hulu', '1960-01-31', 'teuku umar 0 nomor 108', '082209893308', 'SalwaArumRagafatmi@gmail.com'),
('Salwa3370', '3370Salwa', 'Salwa', 'Nabila Sahda', 'Laki - laki', 'Makassar', '1960-01-31', 'teuku umar 9 nomor 100', '082209893370', 'SalwaNabilaSahda@gmail.com'),
('Satriyo3309', '3309Satriyo', 'Satriyo', 'Dwi Andhika', 'Laki - laki', 'Tanjung Jabung Barat', '1960-01-31', 'teuku umar 0 nomor 195', '082209893309', 'SatriyoDwiAndhika@gmail.com'),
('Sultoni3311', '3311Sultoni', 'Sultoni', 'Habiburrahman', 'Laki - laki', 'Kepulauan Mentawai', '1960-01-31', 'sokearno-hatta 1 nomor 80', '082209893311', 'SultoniHabiburrahman@gmail.com'),
('Syalman3310', '3310Syalman', 'Syalman', 'Fariz', 'Perempuan', 'Ngawi', '1960-01-31', 'pejagan 2 nomor 90', '082209893310', 'SyalmanFariz@gmail.com'),
('VENA9090', '9090VENA', 'VENA', 'ERLA CANDRIKA', 'Perempuan', 'Jember', '1999-08-01', 'lele 1 nomor 192', '082209899090', 'venaerla_candrika@student.telkomuniversity.ac.id'),
('YOGI9228', '9228YOGI', 'YOGI', 'FIRGIAWAN', 'Laki - laki', 'Bantul', '1999-08-01', 'pindang 9 nomor 87', '082209899228', 'yogifirgiawan@student.telkomuniversity.ac.id');

-- --------------------------------------------------------

--
-- Struktur dari tabel `wali_orang_tua`
--

CREATE TABLE `wali_orang_tua` (
  `status_wali` varchar(45) NOT NULL,
  `pekerjaan` varchar(45) NOT NULL,
  `User_username` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `wali_orang_tua`
--

INSERT INTO `wali_orang_tua` (`status_wali`, `pekerjaan`, `User_username`) VALUES
('orang tua', 'pns', 'Alfiansyah3292'),
('orang tua', 'wiraswasta', 'Annisa3293'),
('orang tua', 'tni', 'Asyari3423'),
('orang tua', 'polri', 'Ayudia3294'),
('orang tua', 'pns', 'Ayudia3295'),
('orang tua', 'pns', 'Chelsea3296'),
('orang tua', 'pns', 'Fadjri3298'),
('orang tua', 'wiraswasta', 'Imel3299'),
('orang tua', 'polri', 'Ivan3300'),
('orang tua', 'tni', 'Laila3301'),
('orang tua', 'wiraswasta', 'Mohammad3302'),
('orang tua', 'polri', 'Muhammad3303'),
('orang tua', 'wiraswasta', 'Nurcahya3304'),
('orang tua', 'pns', 'Purnomo3292'),
('orang tua', 'polri', 'Rahmanisa3305'),
('orang tua', 'pns', 'Raihandika3306'),
('orang tua', 'pns', 'Revand3307'),
('orang tua', 'polri', 'Reyhan3315'),
('orang tua', 'tni', 'Salwa3308'),
('orang tua', 'pns', 'Salwa3370'),
('orang tua', 'pns', 'Satriyo3309'),
('orang tua', 'tni', 'Sultoni3311'),
('orang tua', 'polri', 'Syalman3310');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`nid`,`User_username`),
  ADD KEY `fk_Dosen_User1_idx` (`User_username`),
  ADD KEY `fk_Dosen_Perkuliahan1_idx` (`Perkuliahan_id`),
  ADD KEY `fk_Dosen_Program_Studi1_idx` (`terdaftar`);

--
-- Indeks untuk tabel `fakultas`
--
ALTER TABLE `fakultas`
  ADD PRIMARY KEY (`kode_fakultas`),
  ADD KEY `fk_Fakultas_Dosen1_idx` (`Dosen_nid`);

--
-- Indeks untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`nim`,`User_username`),
  ADD KEY `fk_Mahasiswa_User1_idx` (`User_username`),
  ADD KEY `fk_Mahasiswa_Wali_Orang_Tua1_idx` (`Wali_Orang_Tua_User_username`),
  ADD KEY `fk_Mahasiswa_Program_Studi1_idx` (`Program_Studi_kode_prodi`),
  ADD KEY `fk_Mahasiswa_Dosen1_idx` (`Dosen_nid`,`Dosen_User_username`),
  ADD KEY `Dosen_User_username` (`Dosen_User_username`);

--
-- Indeks untuk tabel `mata_kuliah`
--
ALTER TABLE `mata_kuliah`
  ADD PRIMARY KEY (`kode_mata_kuliah`),
  ADD KEY `fk_Mata_Kuliah_Perkuliahan1_idx` (`Perkuliahan_id`);

--
-- Indeks untuk tabel `perkuliahan`
--
ALTER TABLE `perkuliahan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_perwalian_idx` (`kode_prs`,`tahun_ajar`),
  ADD KEY `fk_perwalian` (`tahun_ajar`,`kode_prs`);

--
-- Indeks untuk tabel `perwalian`
--
ALTER TABLE `perwalian`
  ADD PRIMARY KEY (`kode_prs`),
  ADD KEY `fk_Perwalian_Dosen1_idx` (`Dosen_nid`),
  ADD KEY `fk_index` (`tahun_ajar`),
  ADD KEY `fk_Perwalian_Mahasiswa1_idx` (`Mahasiswa_nim`);

--
-- Indeks untuk tabel `program_studi`
--
ALTER TABLE `program_studi`
  ADD PRIMARY KEY (`kode_prodi`),
  ADD KEY `fk_Program_Studi_Fakultas1_idx` (`Fakultas_kode_fakultas`),
  ADD KEY `Dosen_nid` (`Dosen_nid`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`username`);

--
-- Indeks untuk tabel `wali_orang_tua`
--
ALTER TABLE `wali_orang_tua`
  ADD PRIMARY KEY (`User_username`);

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `dosen`
--
ALTER TABLE `dosen`
  ADD CONSTRAINT `dosen_ibfk_1` FOREIGN KEY (`User_username`) REFERENCES `user` (`username`),
  ADD CONSTRAINT `dosen_ibfk_2` FOREIGN KEY (`Perkuliahan_id`) REFERENCES `perkuliahan` (`id`);

--
-- Ketidakleluasaan untuk tabel `fakultas`
--
ALTER TABLE `fakultas`
  ADD CONSTRAINT `fakultas_ibfk_1` FOREIGN KEY (`Dosen_nid`) REFERENCES `dosen` (`nid`);

--
-- Ketidakleluasaan untuk tabel `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD CONSTRAINT `mahasiswa_ibfk_1` FOREIGN KEY (`User_username`) REFERENCES `user` (`username`),
  ADD CONSTRAINT `mahasiswa_ibfk_2` FOREIGN KEY (`Dosen_nid`) REFERENCES `dosen` (`nid`),
  ADD CONSTRAINT `mahasiswa_ibfk_3` FOREIGN KEY (`Dosen_User_username`) REFERENCES `dosen` (`User_username`),
  ADD CONSTRAINT `mahasiswa_ibfk_4` FOREIGN KEY (`Program_Studi_kode_prodi`) REFERENCES `program_studi` (`kode_prodi`),
  ADD CONSTRAINT `mahasiswa_ibfk_5` FOREIGN KEY (`Wali_Orang_Tua_User_username`) REFERENCES `wali_orang_tua` (`User_username`);

--
-- Ketidakleluasaan untuk tabel `mata_kuliah`
--
ALTER TABLE `mata_kuliah`
  ADD CONSTRAINT `mata_kuliah_ibfk_1` FOREIGN KEY (`Perkuliahan_id`) REFERENCES `perkuliahan` (`id`);

--
-- Ketidakleluasaan untuk tabel `perkuliahan`
--
ALTER TABLE `perkuliahan`
  ADD CONSTRAINT `perkuliahan_ibfk_1` FOREIGN KEY (`kode_prs`) REFERENCES `perwalian` (`kode_prs`);

--
-- Ketidakleluasaan untuk tabel `perwalian`
--
ALTER TABLE `perwalian`
  ADD CONSTRAINT `perwalian_ibfk_1` FOREIGN KEY (`Mahasiswa_nim`) REFERENCES `mahasiswa` (`nim`),
  ADD CONSTRAINT `perwalian_ibfk_2` FOREIGN KEY (`Dosen_nid`) REFERENCES `dosen` (`nid`);

--
-- Ketidakleluasaan untuk tabel `program_studi`
--
ALTER TABLE `program_studi`
  ADD CONSTRAINT `program_studi_ibfk_1` FOREIGN KEY (`Dosen_nid`) REFERENCES `dosen` (`nid`),
  ADD CONSTRAINT `program_studi_ibfk_2` FOREIGN KEY (`Fakultas_kode_fakultas`) REFERENCES `fakultas` (`kode_fakultas`);

--
-- Ketidakleluasaan untuk tabel `wali_orang_tua`
--
ALTER TABLE `wali_orang_tua`
  ADD CONSTRAINT `wali_orang_tua_ibfk_1` FOREIGN KEY (`User_username`) REFERENCES `user` (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
