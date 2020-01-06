-- phpMyAdmin SQL Dump
-- version 5.0.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jan 06, 2020 at 04:35 PM
-- Server version: 8.0.18
-- PHP Version: 7.2.24-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopshoe`
--

-- --------------------------------------------------------

--
-- Table structure for table `adminUsers`
--

CREATE TABLE `adminUsers` (
  `id` int(11) NOT NULL,
  `name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `password` text NOT NULL,
  `email` text NOT NULL,
  `tel` char(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `stt` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `adminUsers`
--

INSERT INTO `adminUsers` (`id`, `name`, `password`, `email`, `tel`, `stt`) VALUES
(1, 'S-Admin', '$2a$10$R/vzcsNBmxi6uM6zL8Hvj.GIXsxek3JaMmJQluND8omci5BSB6NCW', 'nodejsacc1@gmail.com', '868459091', NULL),
(4, 'Vinh', '$2a$10$Ihj2Ntwt09YNozWMgedoIuKPpkw2Vm63VjIUJDso/UEjCX2RAM4nC', 'nodejsacc2@gmail.com', '868459091', NULL),
(5, 'adminVY', '$2a$10$Mgnrmzg3Rl4EUkSdXgjkg.pNuuGJR6ETYsd/.qa9D9KFzsWY6AAJO', 'adminVY@gmail.com', '123456789', NULL),
(6, 'acc nodejs3', '$2a$10$LCYkcxHEBCVj4TgL2Xr4YO2S3DaOcMvoiYP4SYPbVTK8HynCGOE/q', 'nodejsacc3@gmail.com', '0868459091', NULL),
(7, 'acc nodejs5', '$2a$10$TwkKc4MAaqeHHobjbKHFu.XuHFw8tuM./StOIrXL6mQrccae.7L7K', 'nodejsacc5@gmail.com', '0868459091', 0),
(8, 'a1', '$2a$10$uieKi2tE1QqCscFtICgyB.AwVdYEOG2/Q0S36r4UReY7KL.qDEDkK', 'a1@a.com', '', NULL),
(9, 'acc nodejs 100000', '$2a$10$pAIpSIAElnvuBgV.dos9PuG64TeWRNFQI9uRcsDKROaFL0FRgs2iS', 'nodejsacc100000@gmail.com', '0868459091', NULL),
(10, 'acc nodejs10', '$2a$10$PlOEytWX8PMQlVk/lnjqnu/Od4hVsHnKYpFFZmOxGqEKXSPtbTztq', 'nodejsacc10@gmail.com', '0868459091', 0),
(11, 'acc nodejs100', '$2a$10$qoph/xCbldtAIBVBT/daCu.wq5Um2w3H4zCZiKwHxIz9bRnHbS9pm', 'nodejsacc100@gmail.com', '', NULL),
(12, 'acc nodejs1000', '$2a$10$kKP4XAxSwlg5aXKstm/W/eE0WLeShtZb8kb8KwaLCrnbO6dMs17r6', 'nodejsacc1000@gmail.com', '', NULL),
(13, 'acc nodejs13', '$2a$10$B1dvBQsL1kK54irsZewlT.jQRqHTTWl3DjPUxKEYEEGSxJuaJ9JPq', 'nodejsacc13@gmail.com', '0123456789', NULL),
(14, 'acc nodejs14', '$2a$10$9jX7rGy1RWGv8W.NxlhBR.wBooTi64ZCslgFsW3m.RWjQ5ZS5Nhka', 'nodejsacc14@gmail.com', '01937571236', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `binhluan`
--

CREATE TABLE `binhluan` (
  `magiay` int(11) NOT NULL,
  `mabinhluan` int(11) NOT NULL,
  `ten` varchar(30) NOT NULL,
  `binhluan` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `avatar` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `binhluan`
--

INSERT INTO `binhluan` (`magiay`, `mabinhluan`, `ten`, `binhluan`, `avatar`) VALUES
(1, 1, 'Trấn Thành', 'Dui dữ!!!', 'upload/no-avatar.png'),
(1, 2, 'Xuân Dinh', 'Chời má ơi, Đẹppp!!!', 'upload/no-avatar.png'),
(1, 3, 'Trúc Nhân', 'Gìay gì ngon dữ', 'upload/no-avatar.png'),
(1, 4, 'Chí Dinh', 'Là lá la, con bướm xinh quá nè!', 'upload/no-avatar.png'),
(1, 5, 'Văn Mai Hương', 'Đừng ăn thịt chó nha quý dị!', 'upload/no-avatar.png'),
(1, 6, 'Trường Giang', 'Tiki!   Bấm là có!!', 'upload/no-avatar.png'),
(1, 7, 'Trúc Nhân', 'Lại là Nhân đây hihi!!', 'upload/no-avatar.png');

-- --------------------------------------------------------

--
-- Table structure for table `binhluan.mabinhluan`
--

CREATE TABLE `binhluan.mabinhluan` (
  `magiay` int(11) NOT NULL,
  `mabinhluan` int(11) NOT NULL,
  `ten` varchar(30) NOT NULL,
  `binhluan` text NOT NULL,
  `avatar` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `binhluan.mabinhluan`
--

INSERT INTO `binhluan.mabinhluan` (`magiay`, `mabinhluan`, `ten`, `binhluan`, `avatar`) VALUES
(1, 1, 'Alex Phantom', 'Sản phẩm thật là hấp dẫn', 'upload/no-avatar.png'),
(1, 2, 'Trúc Nhân', 'Sản phẩn kì cục quá hà', 'upload/no-avatar.png'),
(1, 3, 'Trấn Thành', 'Thiệt là thú dị', 'upload/no-avatar.png'),
(1, 4, 'Trường giang', 'Tiki, bấm là có', 'upload/no-avatar.png'),
(1, 5, 'Văn Mai Hương', 'Đừng ăn thịt chó nha', 'upload/no-avatar.png'),
(1, 6, 'Đặng Xuân Vinh', 'Mang giày này tôi thành gay luôn', 'upload/no-avatar.png'),
(1, 7, 'Osad', 'Thức tới 3h sáng để mua giày', 'upload/no-avatar.png'),
(1, 8, 'Trúc Nhân', 'Lại là Nhân đây, hahaha', 'upload/no-avatar.png');

-- --------------------------------------------------------

--
-- Table structure for table `giaodich`
--

CREATE TABLE `giaodich` (
  `magiaodich` int(11) NOT NULL,
  `magiay` int(11) NOT NULL,
  `soluong` varchar(15) DEFAULT NULL,
  `mahoadon` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hoadon`
--

CREATE TABLE `hoadon` (
  `mahoadon` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `thanhtien` int(64) DEFAULT NULL,
  `ngaythanhtoan` datetime DEFAULT NULL,
  `tinhtranggiao` int(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shoe`
--

CREATE TABLE `shoe` (
  `magiay` int(11) NOT NULL,
  `anh` varchar(15) DEFAULT NULL,
  `tengiay` varchar(255) DEFAULT NULL,
  `soluong` varchar(15) DEFAULT NULL,
  `nhanhieu` varchar(15) DEFAULT NULL,
  `mau` varchar(15) DEFAULT NULL,
  `giacu` int(11) DEFAULT NULL,
  `giamoi` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `shoe`
--

INSERT INTO `shoe` (`magiay`, `anh`, `tengiay`, `soluong`, `nhanhieu`, `mau`, `giacu`, `giamoi`) VALUES
(1, 'p1', 'NIKE NEW KING', '10', 'NIKE', 'XAM', 250000, 149000),
(2, 'p2', 'ADIDAS NEW QUEEN', '12', 'ADIDAS', 'XAM', 250000, 2000000),
(3, 'p3', 'NIKE NEW LORD', '8', 'NIKE', 'DEN', 250000, 149000),
(4, 'p4', 'ADIDAS NEW CYBER', '50', 'ADIDAS', 'NAU', 250000, 149000),
(5, 'p5', 'BITIS NEW PHANTOM', '6', 'BITIS', 'XAM', 250000, 149000),
(6, 'p6', 'VANS NEW LION', '7', 'VANS', 'DO', 250000, 149000),
(7, 'p7', 'ADIDAS NEW DRAGON', '4', 'ADIDAS', 'XAM', 250000, 149000),
(8, 'p8', 'SNEAKER NEW TIGER', '3', 'SNEAKER', 'XAM', 250000, 149000),
(9, 'p9', 'AIR FORCE 1 SHADOW PALE IVORY', '5', 'NIKE', 'XAM', 1490000, 1290000),
(10, 'p10', 'AIR FORCE 1 X PARA-NOISE', '9', 'NIKE', 'DEN', 1600000, 1500000),
(11, 'p11', 'AIR FORCE 1 LX WHITE', '15', 'NIKE', 'TRANG', 1600000, 1290000),
(12, 'p12', 'AIR FORCE 1 LOW', '20', 'NIKE', 'TRANG', 1500000, 1290000),
(13, 'p13', 'AIR FORCE 1 LOW (LIMITED)', '21', 'NIKE', 'DEN', 1700000, 1590000),
(14, 'p14', 'AIR FORCE 1 (KOREA EXCLUSIVE)', '20', 'NIKE', 'DEN', 1700000, 1590000),
(15, 'p15', 'AIR FORCE 1 SHADOW PHANTOM', '6', 'NIKE', 'TRANG', 1500000, 1290000);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `password` text NOT NULL,
  `name` text,
  `tel` char(12) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `stt` int(11) DEFAULT NULL,
  `avatar` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `name`, `tel`, `stt`, `avatar`) VALUES
(1, 'nodejsacc3@gmail.com', '$2a$10$CFzE0H4WBOogvtnZnf5aQuZ7mV5Pb9oFbPOvKrN1Hjc.e4sTFI8W.', 'Thay giao 3', '1234567981', NULL, ''),
(2, 'user1@gmail.com', '$2a$10$3c9Ltd18Y3BMxmU/eSOBKO1zyEP9cWDQ0r/x2rHIphrBqTJBfB.aO', 'Đặng Vinh', '915797703', NULL, 'upload/myImage-1578322577668.jpg'),
(3, 'truongvy@gmail.com', '$2a$10$QV4zpWYhAt0yGe9CAwlSBu5bTZuN70oi6pE6goXPzXOeSisg27O32', 'vy dep chai', '012', NULL, ''),
(4, 'nodejsacc2@gmail.com', '$2a$10$vIoeK.dLxELZNTt0YDQlp.no2FArfVjqPbpeSG/PSvZ9Xxj7NN0xi', 'Chàng Trai Mua Giày', '01234565675', NULL, ''),
(5, 'truongvy99413@gmail.com', '$2a$10$ADPVKnnHkmHekbXyzZ85mehh9l2UcsqraR/v3NROFXADLPGh5Bz.u', 'Vỹ', '123456789', NULL, 'upload/vy.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adminUsers`
--
ALTER TABLE `adminUsers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `binhluan`
--
ALTER TABLE `binhluan`
  ADD PRIMARY KEY (`mabinhluan`);

--
-- Indexes for table `binhluan.mabinhluan`
--
ALTER TABLE `binhluan.mabinhluan`
  ADD PRIMARY KEY (`mabinhluan`);

--
-- Indexes for table `giaodich`
--
ALTER TABLE `giaodich`
  ADD PRIMARY KEY (`magiaodich`),
  ADD KEY `giaodich_shoe` (`magiay`),
  ADD KEY `giaodich_hoadon` (`mahoadon`);

--
-- Indexes for table `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`mahoadon`),
  ADD KEY `hoadon_user` (`id`);

--
-- Indexes for table `shoe`
--
ALTER TABLE `shoe`
  ADD PRIMARY KEY (`magiay`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adminUsers`
--
ALTER TABLE `adminUsers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `binhluan`
--
ALTER TABLE `binhluan`
  MODIFY `mabinhluan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `giaodich`
--
ALTER TABLE `giaodich`
  MODIFY `magiaodich` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=200;

--
-- AUTO_INCREMENT for table `hoadon`
--
ALTER TABLE `hoadon`
  MODIFY `mahoadon` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1000;

--
-- AUTO_INCREMENT for table `shoe`
--
ALTER TABLE `shoe`
  MODIFY `magiay` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `giaodich`
--
ALTER TABLE `giaodich`
  ADD CONSTRAINT `giaodich_hoadon` FOREIGN KEY (`mahoadon`) REFERENCES `hoadon` (`mahoadon`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `giaodich_shoe` FOREIGN KEY (`magiay`) REFERENCES `shoe` (`magiay`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `hoadon`
--
ALTER TABLE `hoadon`
  ADD CONSTRAINT `hoadon_user` FOREIGN KEY (`id`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

