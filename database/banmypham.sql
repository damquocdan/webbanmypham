-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 08, 2023 at 05:18 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `banmypham`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `ID` int(11) NOT NULL,
  `HOTEN` varchar(255) NOT NULL,
  `TENTAIKHOAN` varchar(255) NOT NULL,
  `MATKHAU` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`ID`, `HOTEN`, `TENTAIKHOAN`, `MATKHAU`) VALUES
(4, 'Đàm Quốc Dân', 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `chitiethoadon`
--

CREATE TABLE `chitiethoadon` (
  `ID_CTHOADON` int(11) NOT NULL,
  `ID_HOADON` int(11) NOT NULL,
  `ID_SP` int(11) NOT NULL,
  `SOLUONG` int(11) NOT NULL,
  `DONGIA` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `giohang`
--

CREATE TABLE `giohang` (
  `ID` int(11) NOT NULL,
  `ID_SP` int(11) NOT NULL,
  `ID_NGUOIDUNG` int(11) NOT NULL,
  `SOLUONG` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hoadon`
--

CREATE TABLE `hoadon` (
  `ID_HOADON` int(11) NOT NULL,
  `ID_NGUOIDUNG` int(11) NOT NULL,
  `NGAYLAP` date DEFAULT NULL,
  `NGAYGIAO` date DEFAULT NULL,
  `NGUOINHAN` varchar(255) NOT NULL,
  `SDT` varchar(255) NOT NULL,
  `DIACHI` varchar(255) NOT NULL,
  `PHUONGTHUCTT` varchar(255) NOT NULL,
  `TONGTIEN` int(11) NOT NULL,
  `TRANGTHAI` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hoadon`
--

INSERT INTO `hoadon` (`ID_HOADON`, `ID_NGUOIDUNG`, `NGAYLAP`, `NGAYGIAO`, `NGUOINHAN`, `SDT`, `DIACHI`, `PHUONGTHUCTT`, `TONGTIEN`, `TRANGTHAI`) VALUES
(32, 11, '2023-10-06', NULL, 'Đàm Quốc Dân', '0368966992', 'Từ Sơn - Bắc Ninh', 'Online', 18500000, 'Đang xử lý');

-- --------------------------------------------------------

--
-- Table structure for table `nguoidung`
--

CREATE TABLE `nguoidung` (
  `ID` int(11) NOT NULL,
  `HOTEN` varchar(255) NOT NULL,
  `EMAIL` varchar(255) NOT NULL,
  `DIENTHOAI` varchar(11) NOT NULL,
  `DIACHI` varchar(255) NOT NULL,
  `NGAYSINH` date NOT NULL,
  `HINHANH` varchar(255) NOT NULL,
  `TENDANGNHAP` varchar(255) NOT NULL,
  `MATKHAU` varchar(255) NOT NULL,
  `TRANGTHAI` bit(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nguoidung`
--

INSERT INTO `nguoidung` (`ID`, `HOTEN`, `EMAIL`, `DIENTHOAI`, `DIACHI`, `NGAYSINH`, `HINHANH`, `TENDANGNHAP`, `MATKHAU`, `TRANGTHAI`) VALUES
(11, 'Đàm Quốc Dân', 'damquocdan@gmail.com', '0368966992', 'Từ Sơn - Bắc Ninh', '2003-09-02', './assets/img/users/1.jpg', 'damquocdan', '666666', b'1');

-- --------------------------------------------------------

--
-- Table structure for table `nsx`
--

CREATE TABLE `nsx` (
  `ID` int(11) NOT NULL,
  `TENNSX` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nsx`
--

INSERT INTO `nsx` (`ID`, `TENNSX`) VALUES
(1, 'Dầu gội'),
(2, 'Kem'),
(3, 'Mặt nạ'),
(4, 'Phấn'),
(5, 'Son');

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

CREATE TABLE `sanpham` (
  `ID` int(11) NOT NULL,
  `TEN` varchar(255) NOT NULL,
  `GIA` int(11) NOT NULL,
  `HINHANH` varchar(255) NOT NULL,
  `ID_NSX` int(11) NOT NULL,
  `MOTA` text NOT NULL,
  `DANHGIA` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`ID`, `TEN`, `GIA`, `HINHANH`, `ID_NSX`, `MOTA`, `DANHGIA`) VALUES
(16, 'Son Kem Loreal Paris Rouge Signature', 2650000, './assets/img/products/son1.jpeg', 5, 'Dạng Lì Nhẹ Môi', 4),
(17, 'Phấn Má 3CE Face Blush Soft', 1000000, './assets/img/products/phan1.jpeg', 4, 'Salmon', 4.6),
(18, 'Mặt Nạ Banobagi Vita Genic Jelly', 1200000, './assets/img/products/matna1.jpeg', 3, 'Mark', 4.6),
(19, 'Kem Nền Loreal True Match', 1500000, './assets/img/products/kem1.jpeg', 2, 'Kem', 4.3),
(20, 'Dầu Gội Kerasys', 2000000, './assets/img/products/goidau1.jpeg', 1, ' Chăm Sóc Tóc Cao Cấp Đỏ', 4.5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD PRIMARY KEY (`ID_CTHOADON`),
  ADD KEY `ID_SP` (`ID_SP`),
  ADD KEY `ID_HOADON` (`ID_HOADON`);

--
-- Indexes for table `giohang`
--
ALTER TABLE `giohang`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID_SP` (`ID_SP`),
  ADD KEY `ID_NGUOIDUNG` (`ID_NGUOIDUNG`);

--
-- Indexes for table `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`ID_HOADON`),
  ADD KEY `ID_NGUOIDUNG` (`ID_NGUOIDUNG`);

--
-- Indexes for table `nguoidung`
--
ALTER TABLE `nguoidung`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `nsx`
--
ALTER TABLE `nsx`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID_NSX` (`ID_NSX`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  MODIFY `ID_CTHOADON` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `giohang`
--
ALTER TABLE `giohang`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `hoadon`
--
ALTER TABLE `hoadon`
  MODIFY `ID_HOADON` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `nguoidung`
--
ALTER TABLE `nguoidung`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `nsx`
--
ALTER TABLE `nsx`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD CONSTRAINT `chitiethoadon_ibfk_1` FOREIGN KEY (`ID_SP`) REFERENCES `sanpham` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `chitiethoadon_ibfk_2` FOREIGN KEY (`ID_HOADON`) REFERENCES `hoadon` (`ID_HOADON`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `giohang`
--
ALTER TABLE `giohang`
  ADD CONSTRAINT `giohang_ibfk_1` FOREIGN KEY (`ID_SP`) REFERENCES `sanpham` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `giohang_ibfk_2` FOREIGN KEY (`ID_NGUOIDUNG`) REFERENCES `nguoidung` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `hoadon`
--
ALTER TABLE `hoadon`
  ADD CONSTRAINT `hoadon_ibfk_1` FOREIGN KEY (`ID_NGUOIDUNG`) REFERENCES `nguoidung` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `sanpham_ibfk_1` FOREIGN KEY (`ID_NSX`) REFERENCES `nsx` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
