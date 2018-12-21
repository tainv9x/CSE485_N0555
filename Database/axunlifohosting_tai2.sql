-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost:3306
-- Thời gian đã tạo: Th12 20, 2018 lúc 06:35 PM
-- Phiên bản máy phục vụ: 10.1.36-MariaDB-cll-lve
-- Phiên bản PHP: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `axunlifohosting_tai2`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `1phut_7929766`
--

CREATE TABLE `1phut_7929766` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bthdate` date DEFAULT NULL,
  `userName` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sodu` int(11) NOT NULL,
  `cre` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `active` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `1phut_7929766`
--

INSERT INTO `1phut_7929766` (`id`, `name`, `gender`, `bthdate`, `userName`, `password`, `email`, `sodu`, `cre`, `level`, `active`) VALUES
(11, 'Bác Tài', 'Nam', '1998-07-10', 'admin', 'taikuteyh', 'tainv62@wru.vn', 0, 'Bác Tài', 2, 1),
(12, 'Nam Dương', 'Nam', '2003-12-24', 'Rey', 'tuananh', 'tuana8685@gmail.com', 0, 'Rey', 1, 1),
(13, 'Hồng Gấm', 'Nữ', '2009-06-19', 'iamdzucute', 'bestngu', 'honggamdoraemon@gmail.com', 0, 'Dzú', 2, 1),
(14, 'Trần minh phương', 'Nữ', '2004-09-22', 'minhphuong', 'mumcute', 'ngotrangvms@gmail.com', 0, 'mũm', 1, 1),
(15, 'Lê Võ Kim Linh', 'Nữ', '2017-10-08', 'Heochimtee810', 'heochimtee810', 'kimlinh2k19@gmail.com', 0, 'Hêo', 1, 1),
(17, 'Nguyễn Thị Thanh Hường', 'Nữ', '2003-06-28', 'Huong', 'huong2003', 'nguyenthithanhhuong022@gmail.com', 0, 'NTTH', 1, 1),
(19, 'Đoàn Trung Kiên', 'Nam', '2004-09-26', 'kiendoan123', 'kiendoan123', 'kiendoan656@gmail.com', 0, 'Pin Docle', 1, 0),
(20, 'Nguyễn thanh tùng', 'Nam', '2003-07-17', 'Tungdz2003', '0944571818', 'Tungminecarft@gmail.com', 0, 'Tủn', 1, 0),
(21, 'Bảo Mon Nhoi', 'Nam', '2005-10-14', 'baomon', 'bao205', 'baomon@gmail.com', 0, 'MON', 1, 0),
(22, 'Nam Bùi', 'Nam', '2018-05-08', 'Namdz', '2004', 'namly8951@gmail.com', 0, '♡Không~Cảm~Xúc♡', 1, 0),
(23, 'Đặng Anh Khoa', 'Nam', '2007-01-12', 'AnhKhoa', 'khoakhoa', 'danganhkhoahotboy321@gmail.com', 0, 'Nhây man', 1, 0),
(24, 'Ngoi Văn Thắng', 'Nữ', '2006-11-10', 'Ngovanthang', 'ngolinhchi', 'ngocnguyen27489@gmail.com', 0, 'Thắng', 1, 0),
(25, 'Nguyễn văn quảng', 'Nam', '2004-07-09', 'quanghppn', '01213617968', 'qv09815@gmail.com', 0, 'Yêu đi đừng ngại', 1, 0),
(26, 'Lò Văn Hoàng', 'Nam', '2000-01-14', 'HoangG', 'subin141', 'mrhoangvlog141@gmail.com', 0, 'Subin', 1, 0),
(27, 'ngô thj thu uyên', 'Nữ', '2004-10-18', 'ngothithuuyen', 'ngothithuuyen', 'ngouyen18102004@gmail.com', 0, 'bún', 1, 0),
(28, 'Hoài Thương', 'Nữ', '2005-03-17', 'HOAITHUONG1703', '17032005', 'thuanthipham1965@gmail.com', 0, 'HT', 1, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `Alone_1054436`
--

CREATE TABLE `Alone_1054436` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bthdate` date DEFAULT NULL,
  `userName` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sodu` int(11) NOT NULL,
  `cre` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `active` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `Alone_1054436`
--

INSERT INTO `Alone_1054436` (`id`, `name`, `gender`, `bthdate`, `userName`, `password`, `email`, `sodu`, `cre`, `level`, `active`) VALUES
(11, 'Phạm Ngọc Nhi', 'Nữ', '2003-05-02', 'Ngocnhi', '02052003', 'Ngocnhi02052003@gmail.com', 0, 'Mũn', 2, 1),
(12, 'Đặng Anh Khoa', 'Nam', '2007-01-12', 'AnhKhoa', 'khoakhoa', 'danganhkhoahotboy321@gmail.com', 0, 'Nhây man', 1, 0),
(13, 'Trịnh Hà Linh', 'Nữ', '2007-11-12', 'Trinhlinh', 'linh', 'Trinhlinh@gmail.com', 0, 'Linh cute', 1, 0),
(14, 'Ngoi Văn Thắng', 'Nữ', '2006-11-10', 'Ngovanthang', 'ngolinhchi', 'ngocnguyen27489@gmail.com', 0, 'Thắng', 1, 0),
(15, 'Nguyễn văn quảng', 'Nam', '2004-07-09', 'quanghppn', '01213617968', 'qv09815@gmail.com', 0, 'Yêu đi đừng ngại', 1, 0),
(16, 'Haibui', 'Nam', '2018-05-08', 'Haizo2345', 'haizo123', 'quan00321@gmail.com', 0, 'Haizo', 1, 0),
(17, 'ngô thj thu uyên', 'Nữ', '2004-10-18', 'ngothithuuyen', 'ngothithuuyen', 'ngouyen18102004@gmail.com', 0, 'bún', 1, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `blogcuaban`
--

CREATE TABLE `blogcuaban` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bthdate` date DEFAULT NULL,
  `userName` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sodu` int(11) NOT NULL,
  `cre` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `active` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `blogcuaban`
--

INSERT INTO `blogcuaban` (`id`, `name`, `gender`, `bthdate`, `userName`, `password`, `email`, `sodu`, `cre`, `level`, `active`) VALUES
(11, 'Bác Tài', 'Nam', '1998-07-10', 'admin', 'taikuteyh', 'tainv62@wru.vn', 0, 'Bác Tài', 2, 1),
(21, 'Nguyễn Thị Trà My', 'Nữ', '2002-02-10', 'tramyamy', 'my408799', 'mykary1102@gmail.com', 0, '#Amy', 1, 1),
(22, 'Nguyễn Thị Thu Hà', 'Nữ', '2003-06-02', 'nhymdz102', 'thuha2603', 'nhimha80@gmail.com', 0, 'Nhým', 1, 1),
(27, 'Huỳnh Trà My', 'Nữ', '2003-10-24', 'huynhtramy', '01253627859', 'nguyenhongphuong.tgdddt@gmail.com', 0, 'Mii', 1, 1),
(32, 'Ngô Vương Tường Vy', 'Nữ', '2003-09-25', 'tuongvy', 'ngovuongtuongvy', 'tuongvy250903@gmail.com', 0, 'na', 2, 1),
(35, 'Nguyễn Thị Ngọc Ánh', 'Nữ', '2001-04-20', 'Anna2612', 'ngocanh', 'ngocanhsociu20042001@gmail.com', 0, 'Thỏ', 1, 1),
(37, 'Hoàng Hồng Huệ', 'Nữ', '2003-01-14', 'Chiuchiu', '123456', 'Hoanghonghue141@gmail.com', 0, 'chiu', 1, 1),
(38, 'Hà Hà', 'Nữ', '2003-06-02', 'Thuha2602', 'thuha2603', 'Nhimha80@gmail.com', 0, 'Nhým', 1, 1),
(41, 'Huỳnh Lê Giao Linh', 'Nữ', '2004-12-22', 'Berin', 'giaolinh123', 'giaolinh22122004@gmail.com', 0, 'Berin', 1, 1),
(42, 'Nguyễn Thị Thu Hương', 'Nữ', '2003-12-27', 'Huonglyna', 'huonglyna2712', 'Lynahuongnguyen@gmail.com', 0, '', 1, 1),
(43, 'Huỳnh Thanh Sang', 'Nam', '2002-10-19', 'thanhsang1503', 'tuongvy1503', 'huynhthanhsang333@gmail.com', 0, 'Night', 1, 1),
(45, 'Thảo Anh', 'Nữ', '2005-07-24', 'miee247', 'anhnt24070811*', 'nguyenthaoanh2k5@gmail.com', 0, 'Mie', 1, 1),
(46, 'Đoàn Thị Thanh Hiền', 'Nữ', '2004-09-17', 'hienmun1709', 'hienmun17', 'hienmun1709@gmail.com', 0, 'Mun', 1, 1),
(47, 'Nguyễn Thị Thanh Hường', 'Nữ', '2003-06-28', 'Huong', 'huong2003', 'nguyenthithanhhuong022@gmail.com', 0, 'NTTH', 1, 1),
(48, 'Đặng Anh Khoa', 'Nam', '2007-01-12', 'AnhKhoa', 'khoakhoa', 'danganhkhoahotboy321@gmail.com', 0, 'Nhây man', 1, 0),
(49, 'Ngoi Văn Thắng', 'Nữ', '2006-11-10', 'Ngovanthang', 'ngolinhchi', 'ngocnguyen27489@gmail.com', 0, 'Thắng', 1, 0),
(50, 'Nguyễn văn quảng', 'Nam', '2004-07-09', 'quanghppn', '01213617968', 'qv09815@gmail.com', 0, 'Yêu đi đừng ngại', 1, 0),
(53, 'Nguyễn Văn Cao', 'Nam', '2004-11-05', 'Kubin.Karin.04', 'magickaito2015', 'streamcao04@gmail.com', 0, 'Cow-Sleep', 1, 0),
(54, 'vu phuong thanh', 'Nữ', '2003-12-08', 'phuongthanh', 'vutruonghuy', 'anhmai@gmail.com', 0, 'thanh phuong', 1, 0),
(55, 'nguyễn ngọc nhật linh', 'Nữ', '1999-07-07', '10072007', 'matkhauladay', 'nguyenngocnhatlinh1@gmail.com', 0, 'cherry linh', 1, 0),
(56, 'ngô thj thu uyên', 'Nữ', '2004-10-18', 'ngothithuuyen', 'ngothithuuyen', 'ngouyen18102004@gmail.com', 0, 'bún', 1, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `buonvl`
--

CREATE TABLE `buonvl` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bthdate` date DEFAULT NULL,
  `userName` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sodu` int(11) NOT NULL,
  `cre` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `active` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `buonvl`
--

INSERT INTO `buonvl` (`id`, `name`, `gender`, `bthdate`, `userName`, `password`, `email`, `sodu`, `cre`, `level`, `active`) VALUES
(11, 'Bác Tài', 'Nam', '1998-07-10', 'admin', 'taikuteyh', 'tainv62@wru.vn', 0, 'Bác Tài', 2, 1),
(12, 'Bùi Ngọc Minh Châu', 'Nữ', '2000-12-28', 'minhchau2812', '181216', 'bui.luyen.tqt@gmail.com', 0, 'Bò', 2, 1),
(14, 'Bùi Thanh Hoa', 'Nữ', '2001-12-28', 'hoa7604', 'hoa7604', 'mituotkute28@gmail.com', 0, 'Thiên thần', 1, 1),
(16, 'Lê Thị Hiền', 'Nữ', '2002-07-30', 'LeHien', '30072002', 'lehien300702@gmail.com', 0, 'Nấm', 1, 1),
(17, 'Nguyễn Thị Thanh Hường', 'Nữ', '2003-06-28', 'Huong', 'huong2003', 'nguyenthithanhhuong022@gmail.com', 0, 'NTTH', 2, 1),
(21, 'Võ Nguyễn Trúc Quỳnh', 'Nữ', '2002-03-06', 'NYuuWindy', 'loveyoun', 'bequynh6633@gmail.com', 0, '#Yuu', 1, 1),
(25, 'Nguyễn Thị Ngọc', 'Nữ', '2002-03-19', 'Mitcute', 'Ngoccute', 'Ngocmit002@gmail.com', 0, 'Mít', 1, 1),
(26, 'Thu Hoài Thị Nguyễn', 'Nữ', '2004-06-16', 'Hoai123', 'hoaicute', 'Ryycute1606@gmail.com', 0, 'Ryy', 1, 1),
(31, 'Vũ Nguyễn Ngọc Trâm', 'Nữ', '1995-03-15', 'Shiincv', 'namham153', 'dongtuyet153@gmail.com', 0, 'Snes', 1, 1),
(32, 'Minh', 'Nam', '2003-03-23', 'minh2003', 'minh2003', 'phuminh2303@gmail.com', 0, 'HY', 1, 1),
(33, 'Nguyễn Thùy Vy', 'Nữ', '1998-05-25', 'Nguyenthithuyvy', 'Nguyenthithuyvy', 'Nguyenthithuyvy8417@gmail.com', 0, 'Zu', 1, 1),
(37, 'Nguyễn Nhân', 'Nam', '2001-07-02', 'Nhan0207arb', 'nhan0207ag27', 'Nhan0207arb@gmail.com', 0, 'Nhânn', 1, 1),
(38, 'Lê Thị Cẩm Dân', 'Nữ', '2001-06-10', 'ngocminh', 'ngocminh', 'danle01012001@gmail.com', 0, 'Ú', 1, 1),
(39, 'Ngoi Văn Thắng', 'Nữ', '2006-11-10', 'Ngovanthang', 'ngolinhchi', 'ngocnguyen27489@gmail.com', 0, 'Thắng', 1, 0),
(40, 'Văñ Đôñg', 'Nam', '1999-12-16', 'cnaing', 'kamejoko', 'bsfbyh@gmail.com', 0, 'Bé Bựa', 1, 0),
(41, 'Lò Văn Hoàng', 'Nam', '2000-01-14', 'HoangG', 'subin141', 'mrhoangvlog141@gmail.com', 0, 'Subin', 1, 0),
(42, 'ngô thj thu uyên', 'Nữ', '2004-10-18', 'ngothithuuyen', 'ngothithuuyen', 'ngouyen18102004@gmail.com', 0, 'bún', 1, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `CanhCutCorp_8313069`
--

CREATE TABLE `CanhCutCorp_8313069` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bthdate` date DEFAULT NULL,
  `userName` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sodu` int(11) NOT NULL,
  `cre` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `active` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `CanhCutCorp_8313069`
--

INSERT INTO `CanhCutCorp_8313069` (`id`, `name`, `gender`, `bthdate`, `userName`, `password`, `email`, `sodu`, `cre`, `level`, `active`) VALUES
(11, 'Truong Van Dang', 'Khác', '2013-02-05', 'himofficial.infoceo', '01887855217Reg', 'himofficial.infoceo@gmail.com', 0, 'kensieudz', 2, 1),
(12, 'Thanh Kim', 'Nữ', '1945-06-15', 'haidang2323', '1234561', 'nhutminh4242@gmail.com', 0, 'Kim', 1, 0),
(13, 'Đặng Anh Khoa', 'Nam', '2007-01-12', 'AnhKhoa', 'khoakhoa', 'danganhkhoahotboy321@gmail.com', 0, 'Nhây man', 1, 0),
(14, 'ngô thj thu uyên', 'Nữ', '2004-10-18', 'ngothithuuyen', 'ngothithuuyen', 'ngouyen18102004@gmail.com', 0, 'bún', 1, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cho_rut`
--

CREATE TABLE `cho_rut` (
  `userName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sotien` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ghichu` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ma_gd` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `so_tk` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `so_in_tren_the` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ten` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ngan_hang` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `chi_nhanh` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `DeepCrush_1249406`
--

CREATE TABLE `DeepCrush_1249406` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bthdate` date DEFAULT NULL,
  `userName` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sodu` int(11) NOT NULL,
  `cre` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `active` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `DeepCrush_1249406`
--

INSERT INTO `DeepCrush_1249406` (`id`, `name`, `gender`, `bthdate`, `userName`, `password`, `email`, `sodu`, `cre`, `level`, `active`) VALUES
(11, 'Truong Van Dang', 'Khác', '2013-02-05', 'himofficial.infoceo', '01887855217Reg', 'himofficial.infoceo@gmail.com', 0, 'kensieudz', 2, 1),
(12, 'Thanh Kim', 'Nữ', '1945-06-15', 'haidang2323', '1234561', 'nhutminh4242@gmail.com', 0, 'Kim', 1, 0),
(13, 'Vũ Khánh Vân', 'Nữ', '2015-10-09', 'Vukhanhvan', '1234', 'Vukhanhvan041208@gmail.com', 0, 'Chó đốm', 1, 0),
(14, 'Nam Bùi', 'Nam', '2018-05-08', 'Namdz', '2004', 'namly8951@gmail.com', 0, '♡Không~Cảm~Xúc♡', 1, 0),
(15, 'Nguyễn Hoàng Ân Hy', 'Nữ', '2004-07-28', 'Tieuhy', 'goccuaru', 'Christina242112@yahoo.com', 0, 'Tiểu Hy', 1, 0),
(16, 'Đặng Anh Khoa', 'Nam', '2007-01-12', 'AnhKhoa', 'khoakhoa', 'danganhkhoahotboy321@gmail.com', 0, 'Nhây man', 1, 0),
(17, 'ngô thj thu uyên', 'Nữ', '2004-10-18', 'ngothithuuyen', 'ngothithuuyen', 'ngouyen18102004@gmail.com', 0, 'bún', 1, 0),
(18, 'Nguyễn Thị Thanh Hường', 'Nữ', '2003-06-28', 'Huong', 'huong2003', 'nguyenthithanhhuong022@gmail.com', 0, 'NTTH', 1, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `deeplove_1683934`
--

CREATE TABLE `deeplove_1683934` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bthdate` date DEFAULT NULL,
  `userName` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sodu` int(11) NOT NULL,
  `cre` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `active` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `deeplove_1683934`
--

INSERT INTO `deeplove_1683934` (`id`, `name`, `gender`, `bthdate`, `userName`, `password`, `email`, `sodu`, `cre`, `level`, `active`) VALUES
(11, 'Bác Tài', 'Nam', '1998-07-10', 'admin', 'taikuteyh', 'tainv62@wru.vn', 0, 'Bác Tài', 2, 1),
(12, 'Nguyễn Thị Thanh Hường', 'Nữ', '2003-06-28', 'Huong', 'huong2003', 'nguyenthithanhhuong022@gmail.com', 0, 'NTTH', 2, 1),
(13, 'Vũ Nguyễn Ngọc Trâm', 'Nữ', '1995-03-15', 'Shiincv', 'namham153', 'dongtuyet153@gmail.com', 0, 'Snes', 1, 1),
(14, 'Lê Thị Cẩm Dân', 'Nữ', '2001-06-10', 'ngocminh', 'ngocminh', 'danle01012001@gmail.com', 0, 'Ú', 1, 1),
(15, 'Trương Gia Huy', 'Nam', '2004-04-27', 'huytr159', '06092004', 'huytr274@gmail.com', 0, 'hyy', 1, 1),
(16, 'ngô thj thu uyên', 'Nữ', '2004-10-18', 'ngothithuuyen', 'ngothithuuyen', 'ngouyen18102004@gmail.com', 0, 'bún', 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `droll_2659058`
--

CREATE TABLE `droll_2659058` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bthdate` date DEFAULT NULL,
  `userName` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sodu` int(11) NOT NULL,
  `cre` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `active` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `droll_2659058`
--

INSERT INTO `droll_2659058` (`id`, `name`, `gender`, `bthdate`, `userName`, `password`, `email`, `sodu`, `cre`, `level`, `active`) VALUES
(11, 'Bác Tài', 'Nam', '1998-07-10', 'admin', 'taikuteyh', 'tainv62@wru.vn', 0, 'Bác Tài', 2, 1),
(12, 'Thảo Thảo', 'Nữ', '2005-10-14', 'suricute', 'suricute', 'fanpagefakeloves@gmail.com', 0, 'Suri', 1, 0),
(13, 'Nguyễn Thị Thanh Hường', 'Nữ', '2003-06-28', 'Huong', 'huong2003', 'nguyenthithanhhuong022@gmail.com', 0, 'NTTH', 1, 0),
(14, 'Đặng Anh Khoa', 'Nam', '2007-01-12', 'AnhKhoa', 'khoakhoa', 'danganhkhoahotboy321@gmail.com', 0, 'Nhây man', 1, 0),
(15, 'Lê Võ Kim Linh', 'Nữ', '2017-10-08', 'Heochimtee810', 'heochimtee810', 'kimlinh2k19@gmail.com', 0, 'Hêo', 1, 0),
(16, 'Đức Mạnh Vlogs', 'Nam', '2018-05-02', '01293066809', 'ducmanhvlogs', 'manhnyn@gmail.com', 0, 'Đức Mạnh Vlogs', 1, 0),
(17, 'ngô thj thu uyên', 'Nữ', '2004-10-18', 'ngothithuuyen', 'ngothithuuyen', 'ngouyen18102004@gmail.com', 0, 'bún', 1, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dsdky_dv`
--

CREATE TABLE `dsdky_dv` (
  `userthue` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tenpage` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tenpage2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `linkad` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `goi` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ngaydky` datetime DEFAULT NULL,
  `ngayhet` datetime DEFAULT NULL,
  `note` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tien` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `dsdky_dv`
--

INSERT INTO `dsdky_dv` (`userthue`, `tenpage`, `tenpage2`, `linkad`, `goi`, `ngaydky`, `ngayhet`, `note`, `tien`, `id`) VALUES
('admin', 'Yêu +', 'yeu', 'Hồng Gấm', 'Dùng thử', '2018-07-20 19:23:50', '2018-07-30 19:23:50', 'XONG', '0', 47),
('admin', 'Mưa+', 'mua', 'Ngô Yến Như', 'Dùng thử', '2018-07-20 19:23:58', '2018-07-30 19:23:58', 'XONG', '0', 48),
('admin', 'Sad Love', 'sadlove', 'Nam Dương', 'Dùng thử', '2018-07-20 19:24:24', '2018-07-30 19:24:24', 'XONG', '0', 49),
('admin', 'Blog Của Bạn', 'blogcuaban', 'Ngô Yến Như', 'Dùng thử', '2018-07-20 19:24:38', '2018-07-30 19:24:38', 'XONG', '0', 50),
('admin', 'Ê, Thanh Xuân', 'ethanhxuan', 'Jen Chan', 'Dùng thử', '2018-07-20 19:25:00', '2018-07-30 19:25:00', 'XONG', '0', 51),
('admin', 'Buồn VL', 'buonvl', 'Ngọc Minh Châu', 'Dùng thử', '2018-07-20 19:25:26', '2018-07-30 19:25:26', 'XONG', '0', 52),
('admin', 'Say.', 'say', 'Jen Chan', 'Dùng thử', '2018-07-20 20:11:14', '2018-07-30 20:11:14', 'XONG', '0', 55),
('admin', 'Thả Thính', 'thathinh', 'Tường Vy', 'Dùng thử', '2018-07-20 20:22:00', '2018-07-30 20:22:00', 'XONG', '0', 56),
('admin', 'Quote Mẫn Hyy', 'quotemanhyy', 'Chưa có', 'Dùng thử', '2018-07-20 21:18:06', '2018-07-30 21:18:06', 'XONG', '0', 58),
('admin', 'SAO HÀN QUỐC', 'saohanquoc', 'Chưa có', 'Dùng thử', '2018-07-20 21:33:51', '2018-07-30 21:33:51', 'XONG', '0', 59),
('himofficial.infoceo', 'Him ,', 'Him_1212386', 'Truong Van Dang', 'Dùng thử', '2018-07-23 16:00:06', '2018-08-02 16:00:06', 'XONG', '0', 66),
('himofficial.infoceo', 'D e e p C r u s h', 'DeepCrush_1249406', 'Truong Van Dang', 'Dùng thử', '2018-07-23 16:08:39', '2018-08-02 16:08:39', 'XONG', '0', 67),
('himofficial.infoceo', 'Trash .', 'Trash_3730792', 'Truong Van Dang', 'Dùng thử', '2018-07-23 16:08:56', '2018-08-02 16:08:56', 'XONG', '0', 68),
('himofficial.infoceo', 'Stay High.', 'StayHigh_8605376', 'Truong Van Dang', 'Dùng thử', '2018-07-23 16:09:06', '2018-08-02 16:09:06', 'XONG', '0', 69),
('himofficial.infoceo', 'Canh Cut Corp', 'CanhCutCorp_8313069', 'Truong Van Dang', 'Dùng thử', '2018-07-23 16:09:21', '2018-08-02 16:09:21', 'XONG', '0', 70),
('admin', '1 Phút', '1phut_7929766', 'Hồng Gấm', 'Dùng thử', '2018-07-28 22:07:15', '2018-08-07 22:07:15', 'XONG', '0', 72),
('admin', 'Viết', 'viet_9758669', 'Chưa có', 'Dùng thử', '2018-07-28 22:07:58', '2018-08-07 22:07:58', 'XONG', '0', 73),
('BeooCuTe2018', 'Mộc Lan', 'Moclan_5743338', 'Ngô Yến Như', 'Dùng thử', '2018-07-31 10:40:51', '2018-08-10 10:40:51', 'XONG', '0', 74),
('BeooCuTe2018', 'Stt Ngắn', 'Sttngan_1120958', 'Ngô Yến Như', 'Dùng thử', '2018-07-31 10:41:12', '2018-08-10 10:41:12', 'XONG', '0', 75),
('Wind', 'Yêu +', 'yeu_4135287', 'Hiền Hoàng', 'Dùng thử', '2018-07-31 15:08:42', '2018-08-10 15:08:42', 'XONG', '0', 76),
('admin', 'Droll.', 'droll_2659058', 'Chưa có', 'Dùng thử', '2018-08-01 17:05:16', '2018-08-11 17:05:16', 'XONG', '0', 79),
('lynnlynn', 'Im Fine', 'imfine_855939', 'Chu Dương', 'Dùng thử', '2018-08-02 16:23:27', '2018-08-12 16:23:27', 'XONG', '0', 87),
('Ngocnhi', 'ALONE', 'Alone_1054436', 'Phạm Ngọc Nhi', 'Dùng thử', '2018-08-03 12:49:35', '2018-08-13 12:49:35', 'XONG', '0', 88),
('admin', 'Xàm Xí', 'xamxi_6062147', 'Jen Chan', 'Gói 2', '2018-08-07 22:25:10', '2018-10-06 22:25:10', 'XONG', '100000', 89),
('admin', 'Tớ Thích Cậu', 'tothichcau_5432446', 'Nguyễn Hoàng Ngân Hà', 'Gói 1', '2018-08-08 13:54:29', '2018-09-07 13:54:29', 'XONG', '50000', 90),
('quanghppn', 'Vui 24', 'Vui24_278960', 'Quang nguyenvan', 'Dùng thử', '2018-08-12 11:20:59', '2018-08-22 11:20:59', 'XONG', '0', 92),
('admin', 'King Quotes', 'kingquotes_590064', 'Jen Chan', 'Gói 1', '2018-08-19 10:31:40', '2018-09-18 10:31:40', 'XONG', '50000', 93),
('admin', 'Deep Love', 'deeplove_1683934', 'Hường', 'Gói 1', '2018-08-19 10:33:24', '2018-09-18 10:33:24', 'XONG', '50000', 94);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ds_nap`
--

CREATE TABLE `ds_nap` (
  `id` int(11) NOT NULL,
  `userchuyen` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `nhnhan` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `sotien` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `hthuc` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `nhchuyen` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `tenchuyen` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `stkchuyen` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL,
  `time` date DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `magd` varchar(255) COLLATE utf8_vietnamese_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ethanhxuan`
--

CREATE TABLE `ethanhxuan` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bthdate` date DEFAULT NULL,
  `userName` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sodu` int(11) NOT NULL,
  `cre` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `active` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `ethanhxuan`
--

INSERT INTO `ethanhxuan` (`id`, `name`, `gender`, `bthdate`, `userName`, `password`, `email`, `sodu`, `cre`, `level`, `active`) VALUES
(11, 'Bác Tài', 'Nam', '1998-07-10', 'admin', 'taikuteyh', 'tainv62@wru.vn', 0, 'Bác Tài', 2, 1),
(13, 'Nguyễn Thảo Anh', 'Nữ', '2005-07-24', 'miee247', 'anhnt24070811*', 'nguyenthaoanh2k5@gmail.com', 0, 'Mie', 1, 1),
(14, 'Trần Thanh Xuân', 'Nữ', '2001-05-04', 'JenJen', 'cuoilennao0405', 'tranquyxuanphat@gmail.com', 0, 'Jen', 1, 1),
(15, 'Trương Gia Huy', 'Nam', '2004-04-27', 'huytr159', '06092004', 'huytr274@gmail.com', 0, 'hyy', 1, 1),
(18, 'Nguyễn Thị Ngọc', 'Nữ', '2002-03-19', 'Mitcute', 'Ngocmit', 'Ngocmit002@gmail.com', 0, 'Mít', 1, 1),
(20, 'Hau Tieu My', 'Nữ', '2004-01-20', 'Sun', 'hautieumy', 'Hautieumy@gmail.com', 0, 'Sun', 1, 1),
(21, 'Lê Thị Cẩm Dân', 'Nữ', '2001-06-10', 'ngocminh', 'ngocminh', 'danle01012001@gmail.com', 0, 'Ú', 1, 1),
(22, 'Bùi Thị Hải Yến', 'Nữ', '2000-12-25', 'yenemm', 'yencoi', 'yeuanhvaicut@gmail.com', 0, 'Lõm', 1, 1),
(23, 'Vũ Nguyễn Ngọc Trâm', 'Nữ', '1995-03-15', 'Shiincv', 'namyeutinh', 'dongtuyet153@gmail.com', 0, 'Snes', 1, 1),
(24, 'Trần Xuân Lộc', 'Nam', '2000-06-08', 'ken.ken.az123', 'tranxuanloc862000', 'kantranloc123@gmail.com', 0, 'Ken', 1, 1),
(28, 'Huỳnh Thanh Sang', 'Nam', '2002-10-19', 'thanhsang1503', 'tuongvy1503', 'huynhthanhsang333@gmail.com', 0, 'Night', 1, 1),
(29, 'Huỳnh Thanh Sang', 'Nam', '2002-10-19', 'thanhsang1503', 'tuongvy1503', 'huynhthanhsang333@gmail.com', 0, 'Night', 1, 1),
(30, 'Phương Thùy', 'Nữ', '2003-04-29', 'imphuongthuy', 'imthienhy123', 'Phuongthuy7723@gmail.com', 0, 'Hyy', 1, 1),
(32, 'Kiều Thị Hoài Linh', 'Nữ', '2002-08-28', 'kieuthihoailinh', 'minn', 'kieuthihoailinh2309@gmail.com', 0, 'Minn', 1, 1),
(33, 'Nguyễn Trần Phương Thanh', 'Nữ', '2005-02-21', 'Hi2102', '123456789', 'xuan08783@gmail.com', 0, 'Hí', 1, 1),
(34, 'Ngô Vương Tường Vy', 'Nữ', '2003-09-25', 'tuongvy', 'ngovuongtuongvy', 'tuongvy250903@gmail.com', 0, 'na', 1, 1),
(40, 'Nguyễn Hoàng Ân Hy', 'Nữ', '2004-07-28', 'Tieuhy', 'goccuaru', 'Christina242112@yahoo.com', 0, 'Tiểu Hy', 1, 0),
(41, 'ngô thj thu uyên', 'Nữ', '2004-10-18', 'ngothithuuyen', 'ngothithuuyen', 'ngouyen18102004@gmail.com', 0, 'bún', 1, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hangdoi`
--

CREATE TABLE `hangdoi` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bthdate` date DEFAULT NULL,
  `userName` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sodu` int(11) NOT NULL,
  `cre` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `page` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `Him_1212386`
--

CREATE TABLE `Him_1212386` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bthdate` date DEFAULT NULL,
  `userName` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sodu` int(11) NOT NULL,
  `cre` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `active` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `Him_1212386`
--

INSERT INTO `Him_1212386` (`id`, `name`, `gender`, `bthdate`, `userName`, `password`, `email`, `sodu`, `cre`, `level`, `active`) VALUES
(13, 'Truong Van Dang', 'Khác', '2013-02-05', 'himofficial.infoceo', '01887855217Reg', 'himofficial.infoceo@gmail.com', 0, 'kensieudz', 2, 1),
(14, 'ngô thj thu uyên', 'Nữ', '2004-10-18', 'ngothithuuyen', 'ngothithuuyen', 'ngouyen18102004@gmail.com', 0, 'bún', 1, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `imfine_855939`
--

CREATE TABLE `imfine_855939` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bthdate` date DEFAULT NULL,
  `userName` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sodu` int(11) NOT NULL,
  `cre` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `active` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `imfine_855939`
--

INSERT INTO `imfine_855939` (`id`, `name`, `gender`, `bthdate`, `userName`, `password`, `email`, `sodu`, `cre`, `level`, `active`) VALUES
(11, 'Chu Dương', 'Nữ', '2005-06-25', 'lynnlynn', 'begzbooe2562005', 'makinotukushi1234@gmail.com', 0, 'Lynn', 2, 1),
(12, 'ngô thj thu uyên', 'Nữ', '2004-10-18', 'ngothithuuyen', 'ngothithuuyen', 'ngouyen18102004@gmail.com', 0, 'bún', 1, 0),
(13, 'thuong', 'Nam', '2003-05-05', 'thuong', '01676433050', 'lop9.1thuongnguyenba@gmail.com', 0, 'chất', 1, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `kingquotes_590064`
--

CREATE TABLE `kingquotes_590064` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bthdate` date DEFAULT NULL,
  `userName` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sodu` int(11) NOT NULL,
  `cre` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `active` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `kingquotes_590064`
--

INSERT INTO `kingquotes_590064` (`id`, `name`, `gender`, `bthdate`, `userName`, `password`, `email`, `sodu`, `cre`, `level`, `active`) VALUES
(11, 'Bác Tài', 'Nam', '1998-07-10', 'admin', 'taikuteyh', 'tainv62@wru.vn', 0, 'Bác Tài', 2, 1),
(14, 'Trần Thanh Xuân', 'Nữ', '2001-05-04', 'JenJen', 'cuoilennao0405', 'tranquyxuanphat@gmail.com', 0, 'Jen', 2, 1),
(15, 'Trần Xuân Lộc', 'Nam', '2000-06-08', 'ken.ken.az123', 'tranxuanloc862000', 'kantranloc123@gmail.com', 0, 'Ken', 1, 1),
(16, 'Vũ Nguyễn Ngọc Trâm', 'Nữ', '1995-03-15', 'Shiincv', 'namham153', 'dongtuyet153@gmail.com', 0, 'Snes', 1, 1),
(17, 'Trương Gia Huy', 'Nam', '2004-04-27', 'huytr159', '06092004', 'huytr274@gmail.com', 0, 'hyy', 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lichsu_gd`
--

CREATE TABLE `lichsu_gd` (
  `id` int(11) NOT NULL,
  `userName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `menhgia` float DEFAULT NULL,
  `hinhthuc` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_nhan` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `noidung` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `lichsu_gd`
--

INSERT INTO `lichsu_gd` (`id`, `userName`, `menhgia`, `hinhthuc`, `user_nhan`, `time`, `noidung`) VALUES
(31, 'admin', 5000, 'chuyển tiền', 'kiuchoibe', '2018-07-22 16:28:58', 'okammmmmmmmaaaaaaaaaaaaaaaaaaaa'),
(32, 'Rey', 5650, 'chuyển tiền', 'Min2803', '2018-07-23 22:02:37', 'Rey cute cho :v '),
(33, 'admin', 200000, 'chuyển tiền', 'khangbacho1', '2018-07-26 22:47:38', 'Đm bội thu nhé -.-'),
(34, 'admin', 5000, 'chuyển tiền', 'kiuchoibe', '2018-07-27 00:34:13', 'ok'),
(35, 'admin', 40000, 'chuyển tiền', 'Rey', '2018-07-28 15:44:08', NULL),
(36, 'admin', 40000, 'chuyển tiền', 'iamdzucute', '2018-07-28 15:44:08', NULL),
(37, 'admin', 40000, 'chuyển tiền', 'Huong', '2018-07-28 15:44:08', NULL),
(38, 'admin', 40000, 'chuyển tiền', 'Heochimtee810', '2018-07-28 15:44:08', NULL),
(39, 'admin', 30000, 'chuyển tiền', 'minhphuong', '2018-07-29 20:48:33', NULL),
(40, 'admin', 1100000, 'chuyển tiền', 'yenemm', '2018-07-30 10:52:34', 'A Tai mua page'),
(41, 'kiuchoibe', 90000, 'chuyển tiền', 'Rey', '2018-07-30 22:31:19', 'Trả thưởng Sad Lovư'),
(42, 'kiuchoibe', 195000, 'chuyển tiền', 'iamdzucute', '2018-07-30 22:32:23', 'Thưởng Yêu +'),
(43, 'iamdzucute', 20000, 'chuyển tiền', 'kiuchoibe', '2018-07-30 22:35:37', 'Gửi lại bác Tài tiền thưởng của Sơn.'),
(44, 'kiuchoibe', 220000, 'chuyển tiền', 'JenJen', '2018-07-30 22:35:38', 'Quotes Buồn + , và Ê,Thanh Xuân'),
(45, 'kiuchoibe', 127000, 'chuyển tiền', 'JenJen', '2018-07-30 22:36:02', 'Thưởng Love Stranger'),
(46, 'kiuchoibe', 116000, 'chuyển tiền', 'JenJen', '2018-07-30 22:36:16', 'Thưởng Say.'),
(47, 'kiuchoibe', 90000, 'chuyển tiền', 'tuongvy', '2018-07-30 22:39:46', 'Thưởng Blog Của Bạn'),
(48, 'iamdzucute', 35000, 'chuyển tiền', 'Rey', '2018-07-30 22:40:06', NULL),
(49, 'iamdzucute', 75000, 'chuyển tiền', 'JenJen', '2018-07-30 22:40:06', NULL),
(50, 'iamdzucute', 15000, 'chuyển tiền', 'Huong', '2018-07-30 22:40:06', NULL),
(51, 'iamdzucute', 40000, 'chuyển tiền', 'tuongvy', '2018-07-30 22:40:06', NULL),
(52, 'iamdzucute', 5000, 'chuyển tiền', 'Anna2612', '2018-07-30 22:40:06', NULL),
(53, 'kiuchoibe', 58000, 'chuyển tiền', 'Rey', '2018-07-30 22:40:28', 'Thưởng Mưa+'),
(54, 'kiuchoibe', 16000, 'chuyển tiền', 'minhchau2812', '2018-07-30 22:41:02', 'Thưởng Buồn VL 1đ=2k'),
(55, 'Rey', 10000, 'chuyển tiền', 'miee247', '2018-07-30 22:44:37', NULL),
(56, 'Rey', 10000, 'chuyển tiền', 'Min2803', '2018-07-30 22:44:37', NULL),
(57, 'Rey', 10000, 'chuyển tiền', 'camdung0806', '2018-07-30 22:44:37', NULL),
(58, 'Rey', 10000, 'chuyển tiền', 'LeHien', '2018-07-30 22:44:37', NULL),
(59, 'Rey', 10000, 'chuyển tiền', 'camgiang07', '2018-07-30 22:44:37', NULL),
(60, 'Rey', 10000, 'chuyển tiền', 'Nhahy1409', '2018-07-30 22:44:37', NULL),
(61, 'Rey', 10000, 'chuyển tiền', 'Hyanbic140404', '2018-07-30 22:44:37', NULL),
(62, 'Rey', 10000, 'chuyển tiền', 'cao2606', '2018-07-30 22:44:37', NULL),
(63, 'Rey', 10000, 'chuyển tiền', 'Rush', '2018-07-30 22:44:37', NULL),
(64, 'Rey', 21000, 'chuyển tiền', 'tramyamy', '2018-07-30 22:58:11', NULL),
(65, 'Rey', 7000, 'chuyển tiền', 'Rey', '2018-07-30 22:58:11', NULL),
(66, 'Rey', 3000, 'chuyển tiền', 'Huonglyna', '2018-07-30 22:58:11', NULL),
(67, 'kiuchoibe', 227000, 'chuyển tiền', 'Huong', '2018-07-30 22:59:17', 'Trả thưởng page Thả Thính'),
(68, 'kiuchoibe', 200000, 'chuyển tiền', 'iamdzucute', '2018-07-30 23:07:27', 'BOSS Yêu +'),
(69, 'kiuchoibe', 50000, 'chuyển tiền', 'Rey', '2018-07-30 23:08:56', 'Thưởng Sad Love '),
(70, 'kiuchoibe', 100000, 'chuyển tiền', 'JenJen', '2018-07-30 23:09:51', 'Ld Yêu +'),
(71, 'kiuchoibe', 100000, 'chuyển tiền', 'Wind', '2018-07-30 23:10:01', 'LD Yêu +'),
(72, 'kiuchoibe', 50000, 'chuyển tiền', 'minhchau2812', '2018-07-30 23:11:14', 'Boss Buồn Vl'),
(73, 'kiuchoibe', 50000, 'chuyển tiền', 'Huong', '2018-07-30 23:11:29', 'Ld Buồn VL'),
(74, 'kiuchoibe', 70000, 'chuyển tiền', 'Chiuchiu', '2018-07-30 23:12:28', 'Ld Thả Thính'),
(75, 'kiuchoibe', 120000, 'chuyển tiền', 'tuongvy', '2018-07-30 23:13:09', 'Boss Thả Thính'),
(76, 'kiuchoibe', 200000, 'chuyển tiền', 'JenJen', '2018-07-30 23:14:56', 'Boss Say. vs LoveStranger,Trai Công Sở'),
(77, 'kiuchoibe', 35000, 'chuyển tiền', 'iamdzucute', '2018-07-30 23:19:55', 'x2 cho Rey Yêu +'),
(78, 'kiuchoibe', 15000, 'chuyển tiền', 'Huong', '2018-07-30 23:20:55', 'x2 Yêu +'),
(79, 'JenJen', 5000, 'chuyển tiền', 'minh2003', '2018-07-30 23:29:56', NULL),
(80, 'JenJen', 14000, 'chuyển tiền', 'Sun', '2018-07-30 23:29:56', NULL),
(81, 'JenJen', 8000, 'chuyển tiền', 'Daixinhgai', '2018-07-30 23:29:56', NULL),
(82, 'JenJen', 22000, 'chuyển tiền', 'Dinhquynhlien', '2018-07-30 23:29:56', NULL),
(83, 'JenJen', 2000, 'chuyển tiền', 'Heochimtee810', '2018-07-30 23:29:56', NULL),
(84, 'JenJen', 8000, 'chuyển tiền', 'Deocute06042003', '2018-07-30 23:29:56', NULL),
(85, 'JenJen', 22000, 'chuyển tiền', 'minhchau2812', '2018-07-30 23:29:56', NULL),
(86, 'JenJen', 17000, 'chuyển tiền', 'huynhtramy', '2018-07-30 23:29:56', NULL),
(87, 'JenJen', 11000, 'chuyển tiền', 'tuoiteen05', '2018-07-30 23:29:56', NULL),
(88, 'JenJen', 6000, 'chuyển tiền', 'huyenloan1503', '2018-07-30 23:29:56', NULL),
(89, 'JenJen', 10000, 'chuyển tiền', 'xekodzl', '2018-07-30 23:29:56', NULL),
(90, 'admin', 150000, 'chuyển tiền', 'hienthuctrieu', '2018-07-30 23:30:03', 'LD Mưa vs Blog'),
(91, 'iamdzucute', 35000, 'chuyển tiền', 'Rey', '2018-07-30 23:30:58', NULL),
(92, 'JenJen', 7000, 'chuyển tiền', 'imphuongthuy', '2018-07-30 23:38:44', NULL),
(93, 'JenJen', 18000, 'chuyển tiền', 'Hotrungthanhdz', '2018-07-30 23:44:59', NULL),
(94, 'Huong', 277000, 'chuyển tiền', 'kiuchoibe', '2018-07-30 23:49:47', ''),
(95, 'kiuchoibe', 49999, 'chuyển tiền', 'Huong', '2018-07-30 23:52:30', 'Back tiền thừa'),
(96, 'JenJen', 50000, 'chuyển tiền', 'miee247', '2018-07-31 00:06:19', NULL),
(97, 'JenJen', 35000, 'chuyển tiền', 'huytr159', '2018-07-31 00:06:19', NULL),
(98, 'JenJen', 5000, 'chuyển tiền', 'Mitcute', '2018-07-31 00:06:19', NULL),
(99, 'JenJen', 24000, 'chuyển tiền', 'Sun', '2018-07-31 00:06:19', NULL),
(100, 'JenJen', 17000, 'chuyển tiền', 'ngocminh', '2018-07-31 00:06:19', NULL),
(101, 'JenJen', 52000, 'chuyển tiền', 'yenemm', '2018-07-31 00:06:19', NULL),
(102, 'JenJen', 22000, 'chuyển tiền', 'Shiincv', '2018-07-31 00:06:19', NULL),
(103, 'JenJen', 23000, 'chuyển tiền', 'ken.ken.az123', '2018-07-31 00:06:19', NULL),
(104, 'JenJen', 20000, 'chuyển tiền', 'Loanpii', '2018-07-31 00:06:19', NULL),
(105, 'JenJen', 8000, 'chuyển tiền', 'Camthanthien', '2018-07-31 00:06:19', NULL),
(106, 'JenJen', 26000, 'chuyển tiền', 'thanhsang1503', '2018-07-31 00:06:19', NULL),
(107, 'JenJen', 5000, 'chuyển tiền', 'kieuthihoailinh', '2018-07-31 00:06:19', NULL),
(108, 'JenJen', 3000, 'chuyển tiền', 'tuongvy', '2018-07-31 00:06:19', NULL),
(109, 'kiuchoibe', 248000, 'chuyển tiền', 'tuongvy', '2018-07-31 07:52:49', 'Trả thưởng Thả Thính'),
(110, 'tuongvy', 18000, 'chuyển tiền', 'Loanpii', '2018-07-31 08:44:33', NULL),
(111, 'tuongvy', 28000, 'chuyển tiền', 'Shiincv', '2018-07-31 08:52:42', NULL),
(112, 'tuongvy', 14000, 'chuyển tiền', 'tramyamy', '2018-07-31 09:03:27', NULL),
(113, 'tuongvy', 15000, 'chuyển tiền', 'Huong', '2018-07-31 09:31:16', NULL),
(114, 'tuongvy', 33000, 'chuyển tiền', 'Chiuchiu', '2018-07-31 09:31:16', NULL),
(115, 'tuongvy', 48000, 'chuyển tiền', 'Lananh_2309', '2018-07-31 09:31:16', NULL),
(116, 'tuongvy', 13000, 'chuyển tiền', 'huynhtramy', '2018-07-31 09:31:16', NULL),
(117, 'tuongvy', 3000, 'chuyển tiền', 'thuhien2003', '2018-07-31 09:31:16', NULL),
(118, 'tuongvy', 27000, 'chuyển tiền', 'Berin', '2018-07-31 09:31:16', NULL),
(119, 'tuongvy', 6000, 'chuyển tiền', 'hienthuctrieu', '2018-07-31 09:45:09', NULL),
(120, 'tuongvy', 7000, 'chuyển tiền', 'Anh_Cerly', '2018-07-31 09:45:09', NULL),
(121, 'tuongvy', 29000, 'chuyển tiền', 'tramyamy', '2018-07-31 09:45:09', NULL),
(122, 'tuongvy', 38000, 'chuyển tiền', 'Lananh_2309', '2018-07-31 09:45:09', NULL),
(123, 'tuongvy', 2000, 'chuyển tiền', 'Thuha2602', '2018-07-31 09:45:09', NULL),
(124, 'tuongvy', 3000, 'chuyển tiền', 'Berin', '2018-07-31 09:45:09', NULL),
(125, 'tuongvy', 1000, 'chuyển tiền', 'Huonglyna', '2018-07-31 09:45:09', NULL),
(126, 'kiuchoibe', 7500, 'chuyển tiền', 'iamdzucute', '2018-07-31 10:18:34', 'Hỗ trợ 50% cho Dzú vì tội báo thiếu'),
(127, 'admin', 100000, 'chuyển tiền', 'BeooCuTe2018', '2018-07-31 10:22:15', 'Tặng Bèo mua đồ.'),
(128, 'JenJen', 9000, 'chuyển tiền', 'buiphuongthao', '2018-07-31 10:36:06', NULL),
(129, 'thanhsang1503', 30000, 'chuyển tiền', 'tuongvy', '2018-07-31 18:31:36', ':)))))))'),
(130, 'kiuchoibe', 70000, 'chuyển tiền', 'thanhsang1503', '2018-07-31 20:44:16', 'Ld Thả Thính'),
(131, 'kiuchoibe', 70000, 'chuyển tiền', 'thanhsang1503', '2018-07-31 20:44:32', 'Ld Thả Thính'),
(132, 'kiuchoibe', 70000, 'chuyển tiền', 'thanhsang1503', '2018-07-31 20:44:45', 'Ld Thả Thính'),
(133, 'minhchau2812', 1, 'chuyển tiền', 'hoa7604', '2018-07-31 20:59:53', NULL),
(134, 'minhchau2812', 3, 'chuyển tiền', 'Huong', '2018-07-31 20:59:53', NULL),
(135, 'minhchau2812', 1000, 'chuyển tiền', 'hoa7604', '2018-07-31 21:00:24', NULL),
(136, 'minhchau2812', 3000, 'chuyển tiền', 'Huong', '2018-07-31 21:00:24', NULL),
(137, 'tuongvy', 30000, 'chuyển tiền', 'thanhsang1503', '2018-07-31 22:11:41', NULL),
(138, 'thanhsang1503', 240000, 'chuyển tiền', 'tuongvy', '2018-07-31 22:15:54', 'Lấy tiền mà mua đồ ăn đi tháng này anh về sớm nhất có thể <3'),
(139, 'admin', 5000, 'chuyển tiền', 'admin', '2018-08-01 08:12:09', ''),
(140, 'thanhsang1503', 140000, 'chuyển tiền', 'hethong24h.net', '2018-08-01 16:08:07', 'Hoàn tiền do hệ thống 24H chuyển dư !'),
(141, 'iamdzucute', 15000, 'chuyển tiền', 'Chiuchiu', '2018-08-02 21:44:59', 'Gửi em 15k tiền thưởng bên Yêu +.'),
(142, 'hethong24h.net', 10000, 'chuyển tiền', 'miee247', '2018-08-03 22:48:21', NULL),
(143, 'hethong24h.net', 10000, 'chuyển tiền', 'JenJen', '2018-08-03 22:48:21', NULL),
(144, 'hethong24h.net', 10000, 'chuyển tiền', 'huytr159', '2018-08-03 22:48:21', NULL),
(145, 'hethong24h.net', 10000, 'chuyển tiền', 'Mitcute', '2018-08-03 22:48:21', NULL),
(146, 'hethong24h.net', 10000, 'chuyển tiền', 'Sun', '2018-08-03 22:48:21', NULL),
(147, 'hethong24h.net', 10000, 'chuyển tiền', 'ngocminh', '2018-08-03 22:48:21', NULL),
(148, 'hethong24h.net', 10000, 'chuyển tiền', 'yenemm', '2018-08-03 22:48:21', NULL),
(149, 'hethong24h.net', 10000, 'chuyển tiền', 'Shiincv', '2018-08-03 22:48:21', NULL),
(150, 'hethong24h.net', 10000, 'chuyển tiền', 'ken.ken.az123', '2018-08-03 22:48:21', NULL),
(151, 'hethong24h.net', 10000, 'chuyển tiền', 'thanhsang1503', '2018-08-03 22:48:21', NULL),
(152, 'hethong24h.net', 10000, 'chuyển tiền', 'imphuongthuy', '2018-08-03 22:48:21', NULL),
(153, 'hethong24h.net', 10000, 'chuyển tiền', 'kieuthihoailinh', '2018-08-03 22:48:21', NULL),
(154, 'hethong24h.net', 10000, 'chuyển tiền', 'Hi2102', '2018-08-03 22:48:21', NULL),
(155, 'hethong24h.net', 10000, 'chuyển tiền', 'tuongvy', '2018-08-03 22:48:21', NULL),
(156, 'hethong24h.net', 10000, 'chuyển tiền', 'kimdannxjnhdep', '2018-08-03 22:48:21', NULL),
(157, 'hethong24h.net', 10000, 'chuyển tiền', 'Wind', '2018-08-03 22:48:21', NULL),
(158, 'hethong24h.net', 10000, 'chuyển tiền', 'hethong24h.net', '2018-08-03 22:48:21', NULL),
(159, 'hethong24h.net', 20000, 'chuyển tiền', 'JenJen', '2018-08-03 22:52:16', 'Tiền cho Pii và Liên'),
(160, 'JenJen', 10000, 'chuyển tiền', 'Loanpii', '2018-08-03 23:10:40', NULL),
(161, 'JenJen', 10000, 'chuyển tiền', 'Dinhquynhlien', '2018-08-03 23:10:40', NULL),
(162, 'Hi2102', 10000, 'chuyển tiền', 'JenJen', '2018-08-03 23:18:55', NULL),
(163, 'hethong24h.net', 40000, 'chuyển tiền', 'Sun', '2018-08-04 15:30:27', NULL),
(164, 'hethong24h.net', 10000, 'chuyển tiền', 'Heochimtee810', '2018-08-04 15:30:27', NULL),
(165, 'hethong24h.net', 10000, 'chuyển tiền', 'suricute', '2018-08-04 15:30:27', NULL),
(166, 'hethong24h.net', 10000, 'chuyển tiền', 'Thihuyenntran9', '2018-08-04 15:30:27', NULL),
(167, 'hethong24h.net', 10000, 'chuyển tiền', 'hethong24h.net', '2018-08-04 15:30:27', NULL),
(168, 'hethong24h.net', 10000, 'chuyển tiền', 'Heochimtee810', '2018-08-04 15:30:57', NULL),
(169, 'admin', 5000, 'chuyển tiền', 'admin', '2018-08-05 09:45:29', 'ok'),
(170, 'admin', 5000, 'chuyển tiền', 'admin', '2018-08-05 09:47:07', ''),
(171, 'admin', 5000, 'chuyển tiền', 'admin', '2018-08-05 09:47:31', ''),
(172, 'admin', 5000, 'chuyển tiền', 'admin', '2018-08-05 09:48:25', ''),
(173, 'admin', 5000, 'chuyển tiền', 'admin', '2018-08-05 09:48:42', ''),
(174, 'admin', 5000, 'chuyển tiền', 'admin', '2018-08-05 09:49:11', ''),
(175, 'admin', 5000, 'chuyển tiền', 'admin', '2018-08-05 09:50:03', ''),
(176, 'admin', 5000, 'chuyển tiền', 'admin', '2018-08-05 09:51:17', ''),
(177, 'admin', 5000, 'chuyển tiền', 'admin', '2018-08-05 09:51:24', ''),
(178, 'admin', 5000, 'chuyển tiền', 'admin', '2018-08-05 09:52:40', ''),
(179, 'admin', 5000, 'chuyển tiền', 'admin', '2018-08-05 09:53:14', ''),
(180, 'admin', 5000, 'chuyển tiền', 'admin', '2018-08-05 09:54:16', ''),
(181, 'admin', 5000, 'chuyển tiền', 'admin', '2018-08-05 09:55:34', ''),
(182, 'admin', 5000, 'chuyển tiền', 'admin', '2018-08-05 09:57:36', ''),
(183, 'admin', 5000, 'chuyển tiền', 'admin', '2018-08-05 09:58:07', ''),
(184, 'admin', 5000, 'chuyển tiền', 'admin', '2018-08-05 09:58:47', ''),
(185, 'admin', 5000, 'chuyển tiền', 'admin', '2018-08-05 10:01:02', ''),
(186, 'admin', 5000, 'chuyển tiền', 'admin', '2018-08-05 10:02:01', ''),
(187, 'admin', 5000, 'chuyển tiền', 'admin', '2018-08-05 10:02:39', ''),
(188, 'admin', 5000, 'chuyển tiền', 'admin', '2018-08-05 10:03:14', ''),
(189, 'admin', 5000, 'chuyển tiền', 'admin', '2018-08-05 10:03:47', ''),
(190, 'admin', 5000, 'chuyển tiền', 'admin', '2018-08-05 10:05:11', ''),
(191, 'admin', 5000, 'chuyển tiền', 'admin', '2018-08-05 10:05:41', ''),
(192, 'admin', 5000, 'chuyển tiền', 'admin', '2018-08-05 10:06:02', ''),
(193, 'admin', 5000, 'chuyển tiền', 'admin', '2018-08-05 10:07:03', ''),
(194, 'hethong24h.net', 50000, 'chuyển tiền', 'QuyetLe', '2018-08-05 12:27:33', 'Tài bank'),
(195, 'hethong24h.net', 20000, 'chuyển tiền', 'QuyetLe', '2018-08-05 12:30:08', 'Tài bank'),
(196, 'hethong24h.net', 5000, 'chuyển tiền', 'admin', '2018-08-05 12:32:54', ''),
(197, 'hethong24h.net', 5000, 'chuyển tiền', 'admin', '2018-08-05 12:34:10', ''),
(198, 'hethong24h.net', 5000, 'chuyển tiền', 'admin', '2018-08-05 12:34:33', ''),
(199, 'hethong24h.net', 180000, 'chuyển tiền', 'Mimxtp', '2018-08-05 18:05:29', '+ 10k all cho admin Viết'),
(200, 'hethong24h.net', 20000, 'chuyển tiền', 'Mimxtp', '2018-08-05 18:06:12', 'Boss'),
(201, 'hethong24h.net', 5000, 'chuyển tiền', 'admin', '2018-08-05 18:11:28', ''),
(202, 'Mimxtp', 10000, 'chuyển tiền', 'Phuongthuy', '2018-08-05 18:13:22', NULL),
(203, 'Mimxtp', 15000, 'chuyển tiền', 'Kit16', '2018-08-05 18:13:22', NULL),
(204, 'Mimxtp', 10000, 'chuyển tiền', 'miee247', '2018-08-05 18:13:22', NULL),
(205, 'Mimxtp', 10000, 'chuyển tiền', 'Anna2612', '2018-08-05 18:13:22', NULL),
(206, 'Mimxtp', 10000, 'chuyển tiền', 'Huyencute0910', '2018-08-05 18:13:22', NULL),
(207, 'Mimxtp', 10000, 'chuyển tiền', 'Shiincv', '2018-08-05 18:13:22', NULL),
(208, 'Mimxtp', 10000, 'chuyển tiền', 'Skyuyen', '2018-08-05 18:13:22', NULL),
(209, 'Mimxtp', 10000, 'chuyển tiền', 'hoanghavan', '2018-08-05 18:13:22', NULL),
(210, 'Mimxtp', 10000, 'chuyển tiền', 'Camthanthien', '2018-08-05 18:13:22', NULL),
(211, 'Mimxtp', 10000, 'chuyển tiền', 'nlhthuong7501', '2018-08-05 18:13:22', NULL),
(212, 'Mimxtp', 10000, 'chuyển tiền', 'Jinlion', '2018-08-05 18:13:22', NULL),
(213, 'Mimxtp', 10000, 'chuyển tiền', 'Nhien1709', '2018-08-05 18:13:22', NULL),
(214, 'Mimxtp', 10000, 'chuyển tiền', 'himheo', '2018-08-05 18:13:22', NULL),
(215, 'Mimxtp', 10000, 'chuyển tiền', 'goblin', '2018-08-05 18:13:22', NULL),
(216, 'hethong24h.net', 30000, 'chuyển tiền', 'Mimxtp', '2018-08-05 18:24:23', '3 admin mới vô Viết'),
(217, 'Mimxtp', 10000, 'chuyển tiền', 'nguyenha', '2018-08-05 18:28:34', NULL),
(218, 'Mimxtp', 10000, 'chuyển tiền', 'hoa7604', '2018-08-05 18:28:34', NULL),
(219, 'tramyamy', 50000, 'chuyển tiền', 'hienthuctrieu', '2018-08-05 22:14:37', 'Trả nợ'),
(220, 'hethong24h.net', 50000, 'chuyển tiền', 'Binhdeptrai1906', '2018-08-07 20:44:34', 'Nạp 50.000 vào tài khoản.'),
(221, 'admin', 50000, 'chuyển tiền', 'iamdzucute', '2018-08-08 23:35:53', 'Thưởng auto + chăm chỉ'),
(222, 'hethong24h.net', 140000, 'chuyển tiền', 'iamdzucute', '2018-08-10 20:17:45', 'Page 1 Phút'),
(223, 'hethong24h.net', 140000, 'chuyển tiền', 'iamdzucute', '2018-08-10 20:20:07', 'Page 1 Phút'),
(224, 'hethong24h.net', 20000, 'chuyển tiền', 'Huong', '2018-08-10 20:23:39', 'Droll'),
(225, 'hethong24h.net', 20000, 'chuyển tiền', 'Heochimtee810', '2018-08-10 20:24:18', 'Droll'),
(226, 'iamdzucute', 140000, 'chuyển tiền', 'hethong24h.net', '2018-08-10 20:27:41', 'Gửi lại bác Tài 140k ạ.'),
(227, 'iamdzucute', 20000, 'chuyển tiền', 'Rey', '2018-08-10 20:34:15', NULL),
(228, 'iamdzucute', 20000, 'chuyển tiền', 'minhphuong', '2018-08-10 20:34:15', NULL),
(229, 'iamdzucute', 20000, 'chuyển tiền', 'Heochimtee810', '2018-08-10 20:34:15', NULL),
(230, 'iamdzucute', 40000, 'chuyển tiền', 'Huong', '2018-08-10 20:34:15', NULL),
(231, 'hethong24h.net', 120000, 'chuyển tiền', 'JenJen', '2018-08-10 22:17:50', 'Xàm xí page'),
(232, 'JenJen', 10000, 'chuyển tiền', 'admin', '2018-08-10 22:23:37', NULL),
(233, 'JenJen', 10000, 'chuyển tiền', 'huytr159', '2018-08-10 22:28:34', NULL),
(234, 'JenJen', 10000, 'chuyển tiền', 'Mitcute', '2018-08-10 22:28:34', NULL),
(235, 'JenJen', 10000, 'chuyển tiền', 'Sun', '2018-08-10 22:28:34', NULL),
(236, 'JenJen', 10000, 'chuyển tiền', 'ngocminh', '2018-08-10 22:28:34', NULL),
(237, 'JenJen', 10000, 'chuyển tiền', 'Shiincv', '2018-08-10 22:28:34', NULL),
(238, 'JenJen', 10000, 'chuyển tiền', 'ken.ken.az123', '2018-08-10 22:28:34', NULL),
(239, 'JenJen', 10000, 'chuyển tiền', 'thanhsang1503', '2018-08-10 22:28:34', NULL),
(240, 'JenJen', 10000, 'chuyển tiền', 'kimdannxjnhdep', '2018-08-10 22:28:34', NULL),
(241, 'hethong24h.net', 180000, 'chuyển tiền', 'Mimxtp', '2018-08-16 19:51:39', 'Tớ Thích Cậu page thưởng'),
(242, 'kiuchoibe', 70000, 'chuyển tiền', 'JenJen', '2018-08-16 19:56:10', 'Trai Công Sở'),
(243, 'Mimxtp', 15000, 'chuyển tiền', 'Shiincv', '2018-08-16 20:55:45', NULL),
(244, 'Mimxtp', 15000, 'chuyển tiền', 'nlhthuong7501', '2018-08-16 20:55:45', NULL),
(245, 'Mimxtp', 15000, 'chuyển tiền', 'himheo', '2018-08-16 20:55:45', NULL),
(246, 'Mimxtp', 15000, 'chuyển tiền', 'hoa7604', '2018-08-16 20:55:45', NULL),
(247, 'Mimxtp', 15000, 'chuyển tiền', 'Jinlion', '2018-08-16 20:55:45', NULL),
(248, 'Mimxtp', 15000, 'chuyển tiền', 'Skyuyen', '2018-08-16 20:55:45', NULL),
(249, 'Mimxtp', 15000, 'chuyển tiền', 'Anna2612', '2018-08-16 20:55:45', NULL),
(250, 'Mimxtp', 15000, 'chuyển tiền', 'goblin', '2018-08-16 20:55:45', NULL),
(251, 'Mimxtp', 15000, 'chuyển tiền', 'Huyencute0910', '2018-08-16 20:55:45', NULL),
(252, 'Mimxtp', 15000, 'chuyển tiền', 'hoanghavan', '2018-08-16 20:55:45', NULL),
(253, 'Mimxtp', 15000, 'chuyển tiền', 'dongminhan', '2018-08-16 20:55:45', NULL),
(254, 'Mimxtp', 15000, 'chuyển tiền', 'Kit16', '2018-08-16 20:55:45', NULL),
(255, 'JenJen', 50000, 'chuyển tiền', 'Loanpii', '2018-08-17 08:48:08', NULL),
(256, 'JenJen', 15000, 'chuyển tiền', 'Wind', '2018-08-17 08:48:08', NULL),
(257, 'hethong24h.net', 45000, 'chuyển tiền', 'Thu16', '2018-08-17 20:25:28', 'Đổi 4 card 20k Viettel'),
(258, 'admin', 20000, 'chuyển tiền', 'huytr159', '2018-08-30 08:46:33', 'Deep Love'),
(259, 'admin', 20000, 'chuyển tiền', 'ngocminh', '2018-08-30 08:48:51', 'Deep Love'),
(260, 'admin', 500000, 'chuyển tiền', 'hethong24h.net', '2018-08-30 09:56:05', ''),
(261, 'hethong24h.net', 20000, 'chuyển tiền', 'Huong', '2018-08-30 09:56:33', ''),
(262, 'hethong24h.net', 20000, 'chuyển tiền', 'Shiincv', '2018-08-30 09:56:44', ''),
(263, 'hethong24h.net', 150000, 'chuyển tiền', 'JenJen', '2018-08-30 18:07:54', ''),
(264, 'hethong24h.net', 50000, 'chuyển tiền', 'JenJen', '2018-08-30 18:08:10', ''),
(265, 'JenJen', 10000, 'chuyển tiền', 'minh2003', '2018-08-30 19:35:13', NULL),
(266, 'JenJen', 15000, 'chuyển tiền', 'Sun', '2018-08-30 19:35:13', NULL),
(267, 'JenJen', 40000, 'chuyển tiền', 'Loanpii', '2018-08-30 19:35:13', NULL),
(268, 'JenJen', 12000, 'chuyển tiền', 'Dinhquynhlien', '2018-08-30 19:35:13', NULL),
(269, 'JenJen', 15000, 'chuyển tiền', 'Deocute06042003', '2018-08-30 19:35:13', NULL),
(270, 'JenJen', 16000, 'chuyển tiền', 'minhchau2812', '2018-08-30 19:35:13', NULL),
(271, 'JenJen', 18000, 'chuyển tiền', 'huynhtramy', '2018-08-30 19:35:13', NULL),
(272, 'JenJen', 10000, 'chuyển tiền', 'tuoiteen05', '2018-08-30 19:35:13', NULL),
(273, 'JenJen', 12000, 'chuyển tiền', 'huyenloan1503', '2018-08-30 19:35:13', NULL),
(274, 'JenJen', 22000, 'chuyển tiền', 'buiphuongthao', '2018-08-30 19:35:13', NULL),
(275, 'admin', 1000000, 'chuyển tiền', 'hethong24h.net', '2018-08-31 21:04:20', ''),
(276, 'hethong24h.net', 49000, 'chuyển tiền', 'minhchau2812', '2018-08-31 21:06:19', 'Buồn Vl'),
(277, 'hethong24h.net', 254000, 'chuyển tiền', 'Rey', '2018-08-31 21:10:03', 'Page Mưa + 100k BOSS'),
(278, 'hethong24h.net', 29000, 'chuyển tiền', 'Huong', '2018-08-31 21:12:23', ''),
(279, 'Huong', 10000, 'chuyển tiền', 'NYuuWindy', '2018-08-31 21:18:06', ''),
(280, 'hethong24h.net', 150000, 'chuyển tiền', 'JenJen', '2018-08-31 21:26:59', 'YÊU + thưởng'),
(281, 'minhchau2812', 4000, 'chuyển tiền', 'hoa7604', '2018-08-31 21:39:28', NULL),
(282, 'minhchau2812', 5000, 'chuyển tiền', 'Nguyenthithuyvy', '2018-08-31 21:39:28', NULL),
(283, 'minhchau2812', 4000, 'chuyển tiền', 'Nhan0207arb', '2018-08-31 21:39:28', NULL),
(284, 'minhchau2812', 10000, 'chuyển tiền', 'ngocminh', '2018-08-31 21:39:28', NULL),
(285, 'Rey', 27000, 'chuyển tiền', 'JenJen', '2018-08-31 21:50:15', NULL),
(286, 'Rey', 2000, 'chuyển tiền', 'Anna2612', '2018-08-31 21:50:15', NULL),
(287, 'Rey', 9000, 'chuyển tiền', 'ken.ken.az123', '2018-08-31 21:50:15', NULL),
(288, 'Rey', 16000, 'chuyển tiền', 'Huonglyna', '2018-08-31 21:50:15', NULL),
(289, 'Rey', 2000, 'chuyển tiền', 'minhchau2812', '2018-08-31 21:50:15', NULL),
(290, 'Rey', 1000, 'chuyển tiền', 'Huong', '2018-08-31 21:50:15', NULL),
(291, 'hethong24h.net', 660000, 'chuyển tiền', 'iamdzucute', '2018-08-31 21:50:37', ''),
(292, 'Rey', 29000, 'chuyển tiền', 'miee247', '2018-08-31 21:56:59', 'Thưởng 2/9 cho quản lý HT'),
(293, 'Rey', 15000, 'chuyển tiền', 'miee247', '2018-08-31 21:57:32', 'Trả thưởng TT bài'),
(294, 'hethong24h.net', 29000, 'chuyển tiền', 'JenJen', '2018-08-31 22:00:25', ''),
(295, 'JenJen', 29000, 'chuyển tiền', 'Loanpii', '2018-08-31 22:03:34', NULL),
(296, 'JenJen', 5000, 'chuyển tiền', 'huytr159', '2018-09-01 01:11:20', NULL),
(297, 'JenJen', 1000, 'chuyển tiền', 'Sun', '2018-09-01 01:11:20', NULL),
(298, 'iamdzucute', 70000, 'chuyển tiền', 'Rey', '2018-09-01 11:59:01', NULL),
(299, 'iamdzucute', 80000, 'chuyển tiền', 'JenJen', '2018-09-01 11:59:01', NULL),
(300, 'iamdzucute', 15000, 'chuyển tiền', 'Loanpii', '2018-09-01 11:59:01', NULL),
(301, 'iamdzucute', 5000, 'chuyển tiền', 'Huong', '2018-09-01 11:59:01', NULL),
(302, 'iamdzucute', 15000, 'chuyển tiền', 'Shiincv', '2018-09-01 11:59:01', NULL),
(303, 'iamdzucute', 10000, 'chuyển tiền', 'minhchau2812', '2018-09-01 11:59:01', NULL),
(304, 'iamdzucute', 5000, 'chuyển tiền', 'tuongvy', '2018-09-01 11:59:01', NULL),
(305, 'iamdzucute', 20000, 'chuyển tiền', 'Huongmay123', '2018-09-01 11:59:01', NULL),
(306, 'iamdzucute', 15000, 'chuyển tiền', 'miee247', '2018-09-01 11:59:01', NULL),
(307, 'iamdzucute', 35000, 'chuyển tiền', 'Nguyenthihaithanh', '2018-09-01 11:59:01', NULL),
(308, 'iamdzucute', 30000, 'chuyển tiền', 'Khanhxuan0201', '2018-09-01 11:59:01', NULL),
(309, 'minhchau2812', 10000, 'chuyển tiền', 'Shiincv', '2018-09-01 20:37:46', NULL),
(310, 'iamdzucute', 50000, 'chuyển tiền', 'neil.hendyruan', '2018-09-02 09:26:16', NULL),
(311, 'iamdzucute', 20000, 'chuyển tiền', 'neil.hendyruan', '2018-09-02 10:51:37', NULL),
(312, 'hethong24h.net', 610000, 'chuyển tiền', 'tuongvy', '2018-09-03 09:24:44', 'Ld TT 79k. Còn lại Bos 229k và ad.'),
(313, 'tuongvy', 109000, 'chuyển tiền', 'Chiuchiu', '2018-09-03 10:37:14', NULL),
(314, 'tuongvy', 17000, 'chuyển tiền', 'Kaly2003', '2018-09-03 10:38:36', NULL),
(315, 'tuongvy', 53000, 'chuyển tiền', 'Berin', '2018-09-03 10:38:36', NULL),
(316, 'tuongvy', 6000, 'chuyển tiền', 'Huonglyna', '2018-09-03 10:55:04', NULL),
(317, 'tuongvy', 20000, 'chuyển tiền', 'Huong', '2018-09-03 10:58:34', NULL),
(318, 'tuongvy', 15000, 'chuyển tiền', 'thuhien2003', '2018-09-03 10:58:34', NULL),
(319, 'tuongvy', 25000, 'chuyển tiền', 'Shiincv', '2018-09-03 11:58:22', NULL),
(320, 'hethong24h.net', 64500, 'chuyển tiền', 'Thu16', '2018-09-03 19:37:56', 'Nạp tiền thông qua Fanpage '),
(321, 'tuongvy', 26000, 'chuyển tiền', 'tramyamy', '2018-09-04 15:47:01', NULL),
(322, 'tuongvy', 30000, 'chuyển tiền', 'Hoanghuongmo', '2018-09-04 15:47:01', NULL),
(323, 'tuongvy', 12000, 'chuyển tiền', 'lethithaovy', '2018-09-04 15:48:10', NULL),
(324, 'tuongvy', 44000, 'chuyển tiền', 'Loanpii', '2018-09-04 15:52:36', NULL),
(325, 'admin', 90000, 'chuyển tiền', 'Rey', '2018-10-03 20:16:20', 'Thưởng ad Page Mưa +'),
(326, 'admin', 50000, 'chuyển tiền', 'Rey', '2018-10-03 20:18:02', 'Thưởng ld Mưa +'),
(327, 'admin', 100000, 'chuyển tiền', 'Rey', '2018-10-03 20:18:34', 'Boss Mưa +'),
(328, 'Rey', 28002, 'chuyển tiền', 'JenJen', '2018-10-03 20:51:18', NULL),
(329, 'Rey', 25000, 'chuyển tiền', 'miee247', '2018-10-03 20:51:18', NULL),
(330, 'Rey', 6000, 'chuyển tiền', 'ken.ken.az123', '2018-10-03 20:51:18', NULL),
(331, 'Rey', 3000, 'chuyển tiền', 'minhchau2812', '2018-10-03 20:51:18', NULL),
(332, 'Rey', 2001, 'chuyển tiền', 'nguyenthuydung', '2018-10-03 20:51:18', NULL),
(333, 'Rey', 1000, 'chuyển tiền', 'ThanhThao.59', '2018-10-03 20:51:18', NULL),
(334, 'Rey', 5000, 'chuyển tiền', 'HoangMinh', '2018-10-03 20:51:18', NULL),
(335, 'Rey', 10000, 'chuyển tiền', 'HOAITHUONG1703', '2018-10-03 20:51:18', NULL),
(336, 'Rey', 50000, 'chuyển tiền', 'miee247', '2018-10-03 20:54:47', 'Thuong ld Mua+'),
(337, 'admin', 502000, 'chuyển tiền', 'iamdzucute', '2018-10-03 22:52:20', 'Thưởng ad Page Yêu +'),
(338, 'admin', 200000, 'chuyển tiền', 'iamdzucute', '2018-10-03 22:52:56', 'Boss '),
(339, 'admin', 100000, 'chuyển tiền', 'JenJen', '2018-10-03 22:53:42', 'Ld Yêu +'),
(340, 'iamdzucute', 55000, 'chuyển tiền', 'Rey', '2018-10-04 22:51:34', NULL),
(341, 'iamdzucute', 270000, 'chuyển tiền', 'JenJen', '2018-10-04 22:51:34', NULL),
(342, 'iamdzucute', 15000, 'chuyển tiền', 'Loanpii', '2018-10-04 22:51:34', NULL),
(343, 'iamdzucute', 40000, 'chuyển tiền', 'Shiincv', '2018-10-04 22:51:34', NULL),
(344, 'iamdzucute', 15000, 'chuyển tiền', 'Chiuchiu', '2018-10-04 22:51:34', NULL),
(345, 'iamdzucute', 5000, 'chuyển tiền', 'miee247', '2018-10-04 22:51:34', NULL),
(346, 'iamdzucute', 15000, 'chuyển tiền', 'Khanhxuan0201', '2018-10-04 22:51:34', NULL),
(347, 'iamdzucute', 5000, 'chuyển tiền', 'Bexiu', '2018-10-04 22:51:34', NULL),
(348, 'iamdzucute', 37000, 'chuyển tiền', 'lethithaovy', '2018-10-04 22:51:34', NULL),
(349, 'iamdzucute', 30000, 'chuyển tiền', 'hienmun1709', '2018-10-11 11:49:12', NULL),
(350, 'admin', 20000, 'chuyển tiền', 'BeooCuTe2018', '2018-10-21 20:39:15', 'hihi'),
(351, 'admin', 203000, 'chuyển tiền', 'Rey', '2018-11-05 20:03:41', 'Thưởng ad Page Mưa +'),
(352, 'Rey', 60000, 'chuyển tiền', 'miee247', '2018-11-05 20:49:49', NULL),
(353, 'Rey', 8000, 'chuyển tiền', 'nguyenthuydung', '2018-11-05 20:49:49', NULL),
(354, 'Rey', 17000, 'chuyển tiền', 'HoangMinh', '2018-11-05 20:49:49', NULL),
(355, 'Rey', 22000, 'chuyển tiền', 'HOAITHUONG1703', '2018-11-05 20:49:49', NULL),
(356, 'Rey', 20000, 'chuyển tiền', 'PhuongNy69', '2018-11-05 20:53:22', NULL),
(357, 'Rey', 18000, 'chuyển tiền', 'Hoangthai1402', '2018-11-05 21:03:14', NULL),
(358, 'admin', 564000, 'chuyển tiền', 'iamdzucute', '2018-11-09 16:51:44', 'Tiền thưởng ad Yêu +'),
(359, 'iamdzucute', 459000, 'chuyển tiền', 'JenJen', '2018-11-11 11:27:17', NULL),
(360, 'iamdzucute', 35000, 'chuyển tiền', 'Bexiu', '2018-11-11 11:27:17', NULL),
(361, 'iamdzucute', 25000, 'chuyển tiền', 'Hoangthai2005', '2018-11-11 11:27:17', NULL),
(362, 'admin', 100000, 'chuyển tiền', 'JenJen', '2018-11-12 18:54:42', 'Ld Yêu +'),
(363, 'admin', 200000, 'chuyển tiền', 'iamdzucute', '2018-11-12 18:54:56', 'Boss yêu +'),
(364, 'admin', 150000, 'chuyển tiền', 'Rey', '2018-11-12 18:58:27', 'Boss Mưa +'),
(365, 'admin', 75000, 'chuyển tiền', 'miee247', '2018-11-12 19:47:03', 'Ld Mưa +'),
(366, 'iamdzucute', 25000, 'chuyển tiền', 'HOAITHUONG1703', '2018-11-18 19:27:36', 'Tiền thưởng tháng 10.'),
(367, 'admin', 5000, 'chuyển tiền', 'admin', '2018-12-03 16:26:43', 'taikute'),
(368, 'admin', 97000, 'chuyển tiền', 'Rey', '2018-12-06 17:08:03', 'Thưởng ad Page Mưa +'),
(369, 'admin', 100000, 'chuyển tiền', 'Rey', '2018-12-06 17:09:02', 'Boss Mưa +'),
(370, 'admin', 70000, 'chuyển tiền', 'Mailan', '2018-12-06 17:12:13', 'Ld Mưa +'),
(371, 'Rey', 11000, 'chuyển tiền', 'minhchau2812', '2018-12-06 19:48:56', NULL),
(372, 'Rey', 9000, 'chuyển tiền', 'nguyenthuydung', '2018-12-06 19:48:56', NULL),
(373, 'Rey', 1000, 'chuyển tiền', 'HOAITHUONG1703', '2018-12-06 19:48:56', NULL),
(374, 'Rey', 23000, 'chuyển tiền', 'Mailan', '2018-12-06 19:48:56', NULL),
(375, 'Rey', 8000, 'chuyển tiền', 'Hoangthai1402', '2018-12-06 19:48:56', NULL),
(376, 'admin', 405000, 'chuyển tiền', 'JenJen', '2018-12-11 11:16:26', 'Ld Yêu + và thưởng Yêu +'),
(377, 'admin', 5000, 'chuyển tiền', 'tramyamy', '2018-12-11 11:16:56', ''),
(378, 'admin', 20000, 'chuyển tiền', 'minhchau2812', '2018-12-11 11:17:16', ''),
(379, 'admin', 200000, 'chuyển tiền', 'iamdzucute', '2018-12-11 11:17:49', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ls_dky_dvu`
--

CREATE TABLE `ls_dky_dvu` (
  `userName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `goi` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tien` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `ngaydky` datetime DEFAULT NULL,
  `ngayhet` datetime DEFAULT NULL,
  `page` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `ls_dky_dvu`
--

INSERT INTO `ls_dky_dvu` (`userName`, `goi`, `tien`, `ngaydky`, `ngayhet`, `page`) VALUES
('admin', 'Dùng thử', '0', '2018-07-20 19:23:50', '2018-07-30 19:23:50', 'Yêu +'),
('admin', 'Dùng thử', '0', '2018-07-20 19:23:58', '2018-07-30 19:23:58', 'Mưa+'),
('admin', 'Dùng thử', '0', '2018-07-20 19:24:24', '2018-07-30 19:24:24', 'Sad Love'),
('admin', 'Dùng thử', '0', '2018-07-20 19:24:38', '2018-07-30 19:24:38', 'Blog Của Bạn'),
('admin', 'Dùng thử', '0', '2018-07-20 19:25:00', '2018-07-30 19:25:00', 'Ê, Thanh Xuân'),
('admin', 'Dùng thử', '0', '2018-07-20 19:25:26', '2018-07-30 19:25:26', 'Buồn VL'),
('admin', 'Dùng thử', '0', '2018-07-20 20:22:00', '2018-07-30 20:22:00', 'Thả Thính'),
('admin', 'Dùng thử', '0', '2018-07-20 21:18:06', '2018-07-30 21:18:06', 'Quote Mẫn Hyy'),
('admin', 'Dùng thử', '0', '2018-07-20 21:33:51', '2018-07-30 21:33:51', 'SAO HÀN QUỐC'),
('admin', 'Dùng thử', '0', '2018-07-20 20:11:14', '2018-07-30 20:11:14', 'Say.'),
('himofficial.infoceo', 'Dùng thử', '0', '2018-07-23 16:00:06', '2018-08-02 16:00:06', 'Him ,'),
('himofficial.infoceo', 'Dùng thử', '0', '2018-07-23 16:08:39', '2018-08-02 16:08:39', 'D e e p C r u s h'),
('himofficial.infoceo', 'Dùng thử', '0', '2018-07-23 16:08:56', '2018-08-02 16:08:56', 'Trash .'),
('himofficial.infoceo', 'Dùng thử', '0', '2018-07-23 16:09:06', '2018-08-02 16:09:06', 'Stay High.'),
('himofficial.infoceo', 'Dùng thử', '0', '2018-07-23 16:09:21', '2018-08-02 16:09:21', 'Canh Cut Corp'),
('admin', 'Dùng thử', '0', '2018-07-28 22:07:15', '2018-08-07 22:07:15', '1 Phút'),
('admin', 'Dùng thử', '0', '2018-07-28 22:07:58', '2018-08-07 22:07:58', 'Viết'),
('BeooCuTe2018', 'Dùng thử', '0', '2018-07-31 10:40:51', '2018-08-10 10:40:51', 'Mộc Lan'),
('BeooCuTe2018', 'Dùng thử', '0', '2018-07-31 10:40:51', '2018-08-10 10:40:51', 'Stt Ngắn'),
('Wind', 'Dùng thử', '0', '2018-07-31 15:08:42', '2018-08-10 15:08:42', 'Yêu +'),
('admin', 'Dùng thử', '0', '2018-08-01 17:05:16', '2018-08-11 17:05:16', 'Droll.'),
('lynnlynn', 'Dùng thử', '0', '2018-08-02 16:23:27', '2018-08-12 16:23:27', 'Im Fine'),
('Ngocnhi', 'Dùng thử', '0', '2018-08-03 12:49:35', '2018-08-13 12:49:35', 'ALONE'),
('admin', 'Gói 2', '100000', '2018-08-07 22:25:10', '2018-10-06 22:25:10', 'Xàm Xí'),
('admin', 'Gói 1', '50000', '2018-08-08 13:54:29', '2018-09-07 13:54:29', 'Tớ Thích Cậu'),
('Nguyenvan', 'Dùng thử', '0', '2018-08-12 07:57:59', '2018-08-22 07:57:59', 'Vy Trần'),
('quanghppn', 'Dùng thử', '0', '2018-08-12 11:20:59', '2018-08-22 11:20:59', 'Vui 24'),
('admin', 'Gói 1', '50000', '2018-08-19 10:31:40', '2018-09-18 10:31:40', 'King Quotes'),
('admin', 'Gói 1', '50000', '2018-08-19 10:33:24', '2018-09-18 10:33:24', 'Deep Love'),
('HoangMinh', 'Dùng thử', '0', '2018-10-04 09:25:09', '2018-10-14 09:25:09', 'T h e T i r e d'),
('trinhthiyennhi', 'Dùng thử', '0', '2018-10-17 21:31:58', '2018-10-27 21:31:58', 'Tôi'),
('', 'Dùng thử', '0', '2018-10-17 21:49:32', '2018-10-27 21:49:32', 'Tôi');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ls_mua_the`
--

CREATE TABLE `ls_mua_the` (
  `userName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `menhgia` int(11) DEFAULT NULL,
  `loaithe` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mathe` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `serial` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `ls_mua_the`
--

INSERT INTO `ls_mua_the` (`userName`, `menhgia`, `loaithe`, `mathe`, `serial`, `time`) VALUES
('popo', 10000, 'Viettel', '414363381013024', '10000477710514', '2018-07-13 14:01:39'),
('popo', 10000, 'Viettel', '518035110015852', '10000994815947', '2018-07-13 14:01:39'),
('tramyamy', 10000, 'Mobiphone', '853048519102', '071661000001140', '2018-07-19 18:10:40'),
('hienthuctrieu', 50000, 'Viettel', '517305633370775', '10000936103156', '2018-07-25 18:30:34'),
('Lananh_2309', 50000, 'Vinaphone', '52113948610036', '59550003354739', '2018-07-25 21:43:35'),
('Lananh_2309', 10000, 'Mobiphone', '229998521391', '071571000006108', '2018-07-29 21:06:45'),
('Lananh_2309', 20000, 'Viettel', '115232629155219', '10001002549216', '2018-07-30 21:10:37'),
('Hyanbic140404', 10000, 'Viettel', '216983447938280', '10000994447877', '2018-07-30 23:11:35'),
('huytr159', 10000, 'Vinaphone', '89510055424272', '59000000978816', '2018-07-31 08:48:09'),
('huytr159', 10000, 'Viettel', '719851105629326', '10000477336645', '2018-07-31 08:49:54'),
('huytr159', 10000, 'Vinaphone', '89514597084179', '59000000978817', '2018-07-31 08:50:25'),
('Min2803', 10000, 'Viettel', '714653146838850', '10000477937794', '2018-07-31 13:30:10'),
('LeHien', 10000, 'Viettel', '910697755344489', '10000477714734', '2018-07-31 15:25:59'),
('Huonglyna', 20000, 'Garena', '8436007056069298', '84380270', '2018-07-31 17:47:10'),
('Huonglyna', 10000, 'FPT Gate', '5085423474', 'CA00399739', '2018-07-31 20:10:02'),
('trthdea123', 10000, 'Viettel', '613943264248790', '10000477834790', '2018-07-31 21:21:23'),
('trthdea123', 10000, 'Mobiphone', '247710356519', '071571000006386', '2018-07-31 21:24:50'),
('trthdea123', 10000, 'Viettel', '313917572815179', '10000478006997', '2018-07-31 21:26:51'),
('tramyamy', 10000, 'Vinaphone', '19009591895966', '59000000978819', '2018-08-01 09:59:20'),
('Lananh_2309', 20000, 'Viettel', '517933632358970', '10001003131687', '2018-08-03 13:48:51'),
('huytr159', 10000, 'Vcoin VTC', '197687094702', 'ID0353561999', '2018-08-04 14:28:48'),
('kimdannxjnhdep', 10000, 'FPT Gate', '4176045510', 'CA00399891', '2018-08-04 14:42:09'),
('Thihuyenntran9', 10000, 'Viettel', '814745543520435', '10000477220694', '2018-08-04 21:45:46'),
('BeooCuTe2018', 100000, 'Mobiphone', '093731662637', '073123000003223', '2018-08-05 10:34:47'),
('BeooCuTe2018', 50000, 'Viettel', '511668177736627', '10001203249459', '2018-08-05 10:37:58'),
('BeooCuTe2018', 50000, 'Viettel', '118183425286434', '10001203249458', '2018-08-05 10:37:58'),
('QuyetLe', 50000, 'Viettel', '018713377494920', '10001203249493', '2018-08-05 12:28:24'),
('QuyetLe', 20000, 'Vinaphone', '67136964867616', '59200001306555', '2018-08-05 12:30:54'),
('Phuongthuy', 10000, 'Viettel', '715431019059436', '10000994441275', '2018-08-05 18:23:17'),
('Kit16', 10000, 'Viettel', '117427142224659', '10000995238524', '2018-08-05 18:29:57'),
('Mimxtp', 10000, 'Vinaphone', '48021677966508', '59000000978834', '2018-08-05 18:31:53'),
('Mimxtp', 10000, 'Viettel', '511023192053894', '10000995429410', '2018-08-05 19:56:41'),
('Mimxtp', 10000, 'Viettel', '419191384277512', '10000994448889', '2018-08-05 19:56:41'),
('nguyenha', 10000, 'Viettel', '111612239215869', '10000995249734', '2018-08-05 20:26:53'),
('Lananh_2309', 20000, 'Mobiphone', '336692896957', '072921000003946', '2018-08-06 19:48:52'),
('Lananh_2309', 20000, 'Mobiphone', '437668704544', '072921000003954', '2018-08-06 19:50:26'),
('Mimxtp', 20000, 'Viettel', '416810264283698', '10001047613512', '2018-08-06 20:56:24'),
('Sun', 10000, 'Mobiphone', '608611505890', '071571000006819', '2018-08-07 10:18:12'),
('Sun', 20000, 'Mobiphone', '107282123085', '073031000000589', '2018-08-07 10:20:05'),
('minhchau2812', 10000, 'Mobiphone', '151222019275', '071571000006781', '2018-08-07 14:29:34'),
('minhchau2812', 10000, 'Mobiphone', '672366164752', '071571000006776', '2018-08-07 14:31:01'),
('buiphuongthao', 10000, 'Viettel', '611477059775149', '10000477711305', '2018-08-07 20:28:01'),
('buiphuongthao', 20000, 'Viettel', '113873104151981', '10001047613535', '2018-08-07 20:29:22'),
('Binhdeptrai1906', 50000, 'Viettel', '916937353072352', '10001188500838', '2018-08-07 20:45:41'),
('Nhien1709', 10000, 'Viettel', '017973247448510', '10000477717425', '2018-08-08 07:07:02'),
('minhchau2812', 50000, 'Mobiphone', '525185745024', '073164000003278', '2018-08-08 14:12:09'),
('tuongvy', 20000, 'Viettel', '014983396566824', '10001047613561', '2018-08-09 01:46:13'),
('tuongvy', 10000, 'Viettel', '714465950770315', '10000995238525', '2018-08-09 01:55:57'),
('kimdannxjnhdep', 10000, 'ZING', 'JK76RXK2L', 'BB0053336733', '2018-08-10 22:38:55'),
('hienthuctrieu', 50000, 'Vinaphone', '95693372206903', '59550004162575', '2018-08-11 13:41:46'),
('huytr159', 10000, 'Viettel', '216525867535062', '10000994900629', '2018-08-13 09:34:44'),
('Heochimtee810', 10000, 'Viettel', '912573360823614', '10000478112212', '2018-08-13 21:10:50'),
('Heochimtee810', 10000, 'Viettel', '211347157564659', '10000477711239', '2018-08-13 21:12:58'),
('Heochimtee810', 20000, 'Viettel', '918795178270405', '10001002320307', '2018-08-13 21:15:02'),
('Heochimtee810', 50000, 'Mobiphone', '693074698889', '073284000000577', '2018-08-13 21:16:12'),
('Heochimtee810', 10000, 'Viettel', '818547975924709', '10000477832002', '2018-08-13 21:17:47'),
('Rey', 20000, 'Viettel', '113825912190815', '10001002515001', '2018-08-13 22:47:08'),
('kiuchoibe', 50000, 'Garena', '5583252521405988', '85542991', '2018-08-14 19:01:11'),
('ken.ken.az123', 20000, 'Viettel', '216343876871911', '10001047613740', '2018-08-15 19:50:06'),
('thanhsang1503', 10000, 'Mobiphone', '520104390305', '071571000005859', '2018-08-16 09:17:55'),
('dongminhan', 10000, 'Mobiphone', '580618140622', '071571000006101', '2018-08-16 21:01:44'),
('Kit16', 10000, 'Viettel', '719511852457112', '10000995541589', '2018-08-16 21:03:10'),
('hienthuctrieu', 20000, 'Vinaphone', '02718131798086', '59200001306632', '2018-08-17 11:11:03'),
('hienthuctrieu', 20000, 'Vinaphone', '52418929829489', '59200001304896', '2018-08-22 18:46:55'),
('ngocminh', 10000, 'Viettel', '813921971287152', '10000995429391', '2018-08-23 18:13:14'),
('Lananh_2309', 10000, 'Viettel', '012731406567032', '10000995423668', '2018-08-23 21:44:52'),
('admin', 20000, 'Viettel', '212585588070925', '10001003729453', '2018-08-25 16:09:13'),
('admin', 50000, 'Viettel', '017873129156914', '10001250449020', '2018-08-25 16:09:36'),
('Chiuchiu', 50000, 'Viettel', '614915927042584', '10001250449133', '2018-08-25 20:14:38'),
('huytr159', 20000, 'Viettel', '011887068584889', '10001002645987', '2018-08-30 10:04:25'),
('Dinhquynhlien', 10000, 'Viettel', '519137963145619', '10000994523029', '2018-08-30 19:32:08'),
('Dinhquynhlien', 20000, 'Viettel', '115431202069836', '10001003316797', '2018-08-30 19:33:09'),
('Lananh_2309', 20000, 'Viettel', '010465173435652', '10001003728734', '2018-08-31 17:49:12'),
('hoa7604', 20000, 'Viettel', '517317147536757', '10001786506918', '2018-08-31 19:47:28'),
('NYuuWindy', 10000, 'Viettel', '711511663267072', '10000477836814', '2018-08-31 21:25:19'),
('minhchau2812', 20000, 'Mobiphone', '104088352370', '073572000003872', '2018-09-01 06:20:31'),
('hienthuctrieu', 10000, 'Vinaphone', '60580549629884', '59000000978880', '2018-09-01 19:31:50'),
('hienthuctrieu', 10000, 'Vinaphone', '63390722936629', '59000000978881', '2018-09-01 19:33:21'),
('hienthuctrieu', 20000, 'Vinaphone', '49166053867457', '59200001304957', '2018-09-01 19:33:37'),
('huytr159', 10000, 'Viettel', '212545919470565', '10000995245795', '2018-09-02 10:57:01'),
('Kaly2003', 20000, 'Garena', '6668870074547167', '87169224', '2018-09-03 10:51:26'),
('tuongvy', 20000, 'Vinaphone', '63236152442086', '59200001304964', '2018-09-03 11:07:08'),
('tuongvy', 20000, 'Vinaphone', '42860259367791', '59200001304967', '2018-09-03 11:07:08'),
('hethong24h.net', 200000, 'Garena', '1447941194271935', '87742988', '2018-09-03 19:48:22'),
('Loanpii', 20000, 'Garena', '7962310410400754', '87169226', '2018-09-04 12:07:23'),
('Loanpii', 20000, 'FPT Gate', '6877084460', 'CB02410064', '2018-09-05 11:53:33'),
('Huonglyna', 20000, 'Viettel', '214891533169286', '10001002002803', '2018-09-05 14:31:53'),
('tuongvy', 20000, 'Viettel', '212913411198640', '10001004025991', '2018-09-05 16:52:07'),
('Loanpii', 20000, 'FPT Gate', '2886567738', 'CB02410066', '2018-09-05 17:43:19'),
('Loanpii', 20000, 'Garena', '0485975261201870', '87169228', '2018-09-06 12:09:46'),
('hienthuctrieu', 10000, 'Vinaphone', '90326108884703', '59000000978888', '2018-09-07 16:36:14'),
('nlhthuong7501', 20000, 'Viettel', '812587575456447', '10001455826969', '2018-09-08 15:52:23'),
('buiphuongthao', 20000, 'Viettel', '714900955553898', '10001455826982', '2018-09-08 19:42:25'),
('tuongvy', 20000, 'Garena', '6029204752869762', '87377230', '2018-09-11 09:26:23'),
('hienthuctrieu', 20000, 'Garena', '0732022337874197', '87749720', '2018-09-14 12:22:07'),
('tuongvy', 50000, 'FPT Gate', '8678668610', 'CE01601373', '2018-09-16 16:10:48'),
('tuongvy', 50000, 'Garena', '0662570635730701', '78814193', '2018-09-16 17:27:50'),
('tuongvy', 20000, 'Garena', '4736935566820450', '88238279', '2018-09-16 17:58:21'),
('ken.ken.az123', 10000, 'Viettel', '011967260684589', '10000146229004', '2018-09-19 01:33:25'),
('Thu16', 10000, 'Viettel', '616937681995999', '10000145917721', '2018-09-19 15:45:33'),
('Thu16', 10000, 'Viettel', '717402605175999', '10000996246223', '2018-09-19 15:46:49'),
('hienthuctrieu', 20000, 'Viettel', '719373461846294', '10001455826214', '2018-09-20 19:07:29'),
('Sun', 10000, 'Vinaphone', '05966247261696', '59000000978994', '2018-09-22 11:20:31'),
('Sun', 50000, 'Vinaphone', '92240001970329', '59550003862225', '2018-09-22 11:21:23'),
('Sun', 20000, 'Vinaphone', '57697382783193', '59200001305262', '2018-09-22 11:24:20'),
('tramyamy', 10000, 'Vinaphone', '23929176179603', '59000000978996', '2018-09-23 10:42:03'),
('admin', 50000, 'Garena', '7067129138727426', '78820882', '2018-09-25 22:48:14'),
('Thu16', 20000, 'Viettel', '815754242551025', '10001455826126', '2018-09-27 20:14:30'),
('Loanpii', 20000, 'Viettel', '510444011717136', '10001455826186', '2018-09-29 18:35:56'),
('Loanpii', 20000, 'Viettel', '014504536261765', '10001455826185', '2018-09-29 18:35:56'),
('Thu16', 20000, 'Viettel', '510417280346707', '10001455826168', '2018-09-29 19:40:00'),
('Thu16', 20000, 'Viettel', '814705087282094', '10001455826191', '2018-09-29 19:40:00'),
('Thu16', 20000, 'Viettel', '411365902669311', '10001455826192', '2018-09-29 19:41:24'),
('ngocminh', 10000, 'Viettel', '910904363911095', '10001783917263', '2018-10-01 14:30:36'),
('Thu16', 10000, 'Viettel', '919100397973468', '10001784315338', '2018-10-03 20:16:38'),
('ngocminh', 20000, 'Viettel', '817033867866774', '10001787149600', '2018-10-07 11:50:26'),
('hienthuctrieu', 50000, 'Viettel', '316974016067576', '10001317635046', '2018-10-12 11:28:27'),
('Nguyenthihaithanh', 10000, 'Viettel', '213533671118570', '10000146517150', '2018-10-12 12:35:29'),
('Nguyenthihaithanh', 10000, 'Viettel', '216302649185999', '10000147106530', '2018-10-12 12:37:32'),
('Nguyenthihaithanh', 10000, 'Viettel', '219192402985879', '10000146528288', '2018-10-12 12:37:32'),
('tramyamy', 20000, 'Viettel', '916077930562492', '10001482634657', '2018-10-12 14:49:36'),
('lethithaovy', 10000, 'Viettel', '618867793922172', '10001784122884', '2018-10-15 17:44:55'),
('lethithaovy', 10000, 'Viettel', '119155653859191', '10001784123378', '2018-10-15 19:50:15'),
('Loanpii', 10000, 'Viettel', '913157640552082', '10001784121866', '2018-10-19 12:56:04'),
('Loanpii', 20000, 'Viettel', '718579622957018', '10000482209712', '2018-10-19 12:57:39'),
('Loanpii', 20000, 'Viettel', '719475578435992', '10000483028826', '2018-10-20 07:05:41'),
('lethithaovy', 10000, 'Vinaphone', '05968716390172', '59000000979060', '2018-10-20 11:56:25'),
('Loanpii', 20000, 'Viettel', '514493495733604', '10000484001837', '2018-10-20 19:59:24'),
('Chiuchiu', 20000, 'Garena', '7183087585352893', '93486013', '2018-10-22 21:36:46'),
('lethithaovy', 10000, 'Mobiphone', '902092024269', '071571000007414', '2018-10-23 10:02:26'),
('Mitcute', 20000, 'Viettel', '512289587957678', '10000483316837', '2018-10-31 13:24:45'),
('BeooCuTe2018', 20000, 'Viettel', '719031586887842', '10000483028358', '2018-11-01 12:44:41'),
('admin', 100000, 'Garena', '7039537248996733', '96189555', '2018-11-01 14:24:31'),
('Loanpii', 20000, 'Viettel', '718795372375732', '10000482029251', '2018-11-05 12:08:33'),
('Loanpii', 20000, 'Viettel', '411552166545399', '10000482105832', '2018-11-05 12:18:55'),
('hienthuctrieu', 10000, 'Vinaphone', '71019568362767', '59000000979092', '2018-11-07 16:40:16'),
('hienmun1709', 10000, 'Viettel', '017044438641195', '10002095917956', '2018-11-22 13:26:02'),
('hienmun1709', 10000, 'Viettel', '019323576411511', '10002095942366', '2018-11-22 13:27:16'),
('Bexiu', 10000, 'Viettel', '414787140496007', '10002095944124', '2018-11-22 14:50:43'),
('Bexiu', 10000, 'Viettel', '714567795832392', '10002095917246', '2018-11-22 15:18:58'),
('iamdzucute', 10000, 'Mobiphone', '285362062674', '075341000013509', '2018-11-23 19:30:58'),
('hienthuctrieu', 10000, 'Viettel', '617387674612042', '10002095923316', '2018-11-25 20:03:50'),
('hienthuctrieu', 10000, 'Viettel', '018380616813648', '10002095923318', '2018-11-25 20:04:56'),
('Kit16', 10000, 'Viettel', '618257509472112', '10002095923659', '2018-11-25 21:34:39'),
('admin', 50000, 'Viettel', '413053033556744', '10001700400086', '2018-12-02 11:12:07'),
('admin', 20000, 'Viettel', '715404610911705', '10001509508173', '2018-12-02 11:12:25'),
('minhchau2812', 20000, 'Viettel', '713627183112252', '10001530210521', '2018-12-13 22:28:54'),
('minhchau2812', 20000, 'Viettel', '018314280167316', '10001530211511', '2018-12-13 22:28:54'),
('JenJen', 50000, 'Mobiphone', '773779192098', '076453000001639', '2018-12-16 07:59:02'),
('JenJen', 20000, 'Mobiphone', '166832375841', '076332000004670', '2018-12-16 08:00:23');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ls_nap_sdt`
--

CREATE TABLE `ls_nap_sdt` (
  `userName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `menhgia` int(11) DEFAULT NULL,
  `loaithe` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sdt` varchar(11) COLLATE utf8_unicode_ci DEFAULT NULL,
  `trangthai` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `ls_nap_sdt`
--

INSERT INTO `ls_nap_sdt` (`userName`, `menhgia`, `loaithe`, `sdt`, `trangthai`, `time`) VALUES
('thanhsang1503', 10000, 'Mobiphone', '902314480', 'Thành công', '2018-07-21 06:13:50'),
('admin', 10000, 'Viettel', '09888888888', 'Thất bại', '2018-07-22 16:31:36'),
('Huong', 20000, 'Viettel', '1696811434', 'Thành công', '2018-07-27 20:37:24'),
('Wind', 50000, 'Viettel', '1659630774', 'Thành công', '2018-07-31 21:22:33'),
('Wind', 10000, 'Viettel', '1659630774', 'Thành công', '2018-08-01 10:30:09'),
('admin', 10000, 'Vinaphone', '16655558850', 'Thất bại', '2018-08-01 18:23:47'),
('Wind', 20000, 'Viettel', '1634044140', 'Thành công', '2018-08-04 19:29:56'),
('himheo', 10000, 'Viettel', '1649621957', 'Thành công', '2018-08-06 11:23:46'),
('Mimxtp', 10000, 'Viettel', '1674803573', 'Thành công', '2018-08-06 20:54:00'),
('Wind', 10000, 'Viettel', '1653763435', 'Thành công', '2018-08-10 07:39:22'),
('Wind', 10000, 'Viettel', '1653763435', 'Thành công', '2018-08-10 07:39:35'),
('Wind', 10000, 'Viettel', '1653763435', 'Thành công', '2018-08-10 07:39:38'),
('admin', 10000, 'Viettel', '1687261177', 'Thành công', '2018-08-16 15:15:12'),
('thanhsang1503', 10000, 'Mobiphone', '932658021', 'Thành công', '2018-08-18 16:39:29'),
('himheo', 10000, 'Viettel', '1649621957', 'Thành công', '2018-08-19 19:43:08'),
('Anna2612', 20000, 'Vinaphone', '943943106', 'Thành công', '2018-08-19 22:36:01'),
('Anna2612', 10000, 'Vinaphone', '943943106', 'Thành công', '2018-08-20 21:24:40'),
('ngocminh', 20000, 'Viettel', '1636572188', 'Thành công', '2018-08-23 18:21:40'),
('minhchau2812', 20000, 'Mobiphone', '1263884927', 'Thành công', '2018-08-25 20:48:05'),
('Chiuchiu', 50000, 'Viettel', '966391666', 'Thành công', '2018-08-26 10:48:22'),
('Huong', 20000, 'Viettel', '1656262766', 'Thành công', '2018-08-29 08:45:54'),
('Deocute06042003', 20000, 'Mobiphone', '1289822604', 'Thành công', '2018-08-31 00:21:10'),
('ken.ken.az123', 20000, 'Viettel', '1683114175', 'Thành công', '2018-08-31 14:03:28'),
('hethong24h.net', 50000, 'Viettel', '1673449752', 'Thành công', '2018-08-31 22:31:36'),
('hethong24h.net', 50000, 'Viettel', '1659647728', 'Thành công', '2018-08-31 22:37:14'),
('hethong24h.net', 50000, 'Viettel', '1682700342', 'Thành công', '2018-08-31 22:37:47'),
('Rey', 20000, 'Viettel', '975287114', 'Thành công', '2018-09-01 11:05:07'),
('minhchau2812', 20000, 'Mobiphone', '908702084', 'Thành công', '2018-09-01 20:41:15'),
('neil.hendyruan', 50000, 'Mobiphone', '909533543', 'Thành công', '2018-09-02 10:57:22'),
('neil.hendyruan', 20000, 'Mobiphone', '909533543', 'Thành công', '2018-09-02 10:58:52'),
('Huong', 20000, 'Viettel', '1695630954', 'Thành công', '2018-09-03 20:46:18'),
('Wind', 10000, 'Viettel', '1675777116', 'Thành công', '2018-09-04 13:49:49'),
('tuongvy', 10000, 'Viettel', '1638412522', 'Thành công', '2018-09-05 19:14:53'),
('hethong24h.net', 20000, 'Viettel', '1627126622', 'Thành công', '2018-09-07 20:30:55'),
('tuongvy', 50000, 'Viettel', '1638412522', 'Thành công', '2018-09-18 09:07:08'),
('Shiincv', 50000, 'Viettel', '986817450', 'Thành công', '2018-10-27 22:30:20'),
('Shiincv', 50000, 'Viettel', '986817450', 'Thành công', '2018-10-27 22:30:37'),
('PhuongNy69', 20000, 'Viettel', '964210326', 'Thành công', '2018-11-05 21:02:32'),
('admin', 50000, 'Viettel', '1647370707', 'Thành công', '2018-11-09 22:16:03'),
('admin', 20000, 'Mobiphone', '795844321', 'Thành công', '2018-11-15 20:16:25'),
('iamdzucute', 10000, 'Mobiphone', '076765324', 'Thất bại', '2018-11-23 19:30:17'),
('hienthuctrieu', 10000, 'Viettel', '988012608', 'Thành công', '2018-11-25 20:07:15'),
('Shiincv', 100000, 'Viettel', '986817450', 'Thành công', '2018-11-29 11:10:24'),
('hienmun1709', 20000, 'Viettel', '1654509537', 'Thành công', '2018-11-29 14:26:22');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ls_rut_tien`
--

CREATE TABLE `ls_rut_tien` (
  `userName` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ma_gd` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sotien` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `trangthai` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nganhang` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `ls_rut_tien`
--

INSERT INTO `ls_rut_tien` (`userName`, `ma_gd`, `sotien`, `time`, `trangthai`, `nganhang`) VALUES
('khangbacho1', '871015145', '194500', '2018-07-27 00:02:57', 'Thành công', 'Vietcombank'),
('JenJen', '57197257', '300000', '2018-07-27 10:51:35', 'Thành công', 'Agribank'),
('iamdzucute', '526145867', '295000', '2018-07-28 17:37:15', 'Thành công', 'Ngân hàng TMCP An Bình - Abbank'),
('yenemm', '304064635', '1100000', '2018-07-30 17:43:11', 'Thất bại', 'Vietcombank '),
('yenemm', '160393730', '1100000', '2018-07-30 17:47:28', 'Thất bại', 'Vietcombank '),
('yenemm', '725928332', '1100000', '2018-07-30 18:23:58', 'Thành công', 'Vietcombank '),
('JenJen', '619719123', '400000', '2018-07-31 09:28:58', 'Thành công', 'Agribank'),
('Rey', '695229636', '180000', '2018-07-31 13:10:29', 'Thành công', 'Đông Á Bank'),
('tuongvy', '616661591', '325150', '2018-08-01 15:04:43', 'Thất bại', ''),
('tuongvy', '26921829', '300000', '2018-08-02 19:22:02', 'Thành công', 'Vietcombank'),
('admin', '617378539', '50000', '2018-08-05 09:10:00', 'Thành công', 'Vietcombank'),
('admin', '419765850', '50000', '2018-08-05 09:10:56', 'Thành công', 'Vietcombank'),
('admin', '978895809', '50000', '2018-08-05 09:18:40', 'Thành công', 'Vietcombank'),
('admin', '131924942', '50000', '2018-08-05 09:21:13', 'Thành công', 'Vietcombank'),
('admin', '615762755', '50000', '2018-08-05 09:24:53', 'Thành công', 'Vietcombank'),
('admin', '270159188', '55555', '2018-08-05 09:27:10', 'Thành công', 'Vietcombank'),
('admin', '842259982', '40000', '2018-08-05 09:28:08', 'Thành công', 'Vietcombank'),
('admin', '389553758', '50000', '2018-08-05 09:28:59', 'Thành công', 'Vietcombank'),
('admin', '578835867', '50000', '2018-08-05 09:29:43', 'Thành công', 'Vietcombank'),
('admin', '889799810', '50000', '2018-08-05 10:13:20', 'Thành công', 'Vietcombank'),
('admin', '176316329', '50000', '2018-08-05 10:15:47', 'Thành công', 'Vietcombank'),
('admin', '614683823', '50000', '2018-08-05 10:16:11', 'Thành công', 'Vietcombank'),
('admin', '490294810', '50000', '2018-08-05 10:16:55', 'Thành công', 'Vietcombank'),
('admin', '174550087', '50000', '2018-08-05 10:18:13', 'Thành công', 'Vietcombank'),
('huynhtramy', '753543330', '95000', '2018-08-05 10:35:31', 'Thành công', 'Sacombank'),
('hethong24h.net', '187956816', '50000', '2018-08-05 18:25:49', 'Thất bại', ''),
('admin', '403837995', '50000', '2018-08-05 18:26:15', 'Thất bại', 'Vietcombank'),
('hethong24h.net', '768344079', '50000', '2018-08-06 12:46:00', 'Thất bại', ''),
('hethong24h.net', '586851259', '50000', '2018-08-06 12:47:01', 'Thất bại', 'Techcombank'),
('yenemm', '940557389', '62000', '2018-08-08 01:18:03', 'Thành công', 'Vietcombank '),
('Hotrungthanhdz', '112961569', '12500', '2018-08-11 11:11:51', 'Thất bại', ''),
('hethong24h.net', '724180015', '10000', '2018-08-12 10:02:30', 'Thất bại', 'Techcombank'),
('hethong24h.net', '302073995', '10000', '2018-08-12 10:05:13', 'Thất bại', 'Techcombank'),
('JenJen', '597220327', '320000', '2018-09-01 12:25:49', 'Thành công', 'Agribank'),
('Rey', '844672171', '204500', '2018-09-01 14:50:56', 'Thành công', 'Đông Á Bank'),
('Chiuchiu', '61201661', '100000', '2018-09-03 12:47:16', 'Thành công', 'Agribank'),
('Rey', '435582448', '150000', '2018-10-06 17:26:24', 'Thành công', 'Đông Á Bank'),
('JenJen', '616718108', '350002', '2018-10-07 17:51:59', 'Thành công', 'Agribank'),
('Huong', '865668359', '239000', '2018-10-20 05:48:33', 'Thành công', 'BIDV'),
('miee247', '901547161', '273500', '2018-11-10 21:46:00', 'Thành công', 'Vietinbank'),
('HOAITHUONG1703', '747399454', '26500', '2018-11-10 22:29:59', 'Thành công', 'Vietinbank'),
('JenJen', '456726706', '450000', '2018-11-12 08:19:44', 'Thất bại', 'Agribank'),
('Rey', '886529899', '210000', '2018-11-12 21:53:32', 'Thành công', 'VP Bank'),
('JenJen', '555578775', '500000', '2018-11-15 20:09:34', 'Thành công', 'Ngoại thương Vietcombank'),
('HOAITHUONG1703', '596868148', '19500', '2018-11-18 19:35:08', 'Thành công', 'Vietinbank'),
('iamdzucute', '514718557', '850000', '2018-11-28 16:34:21', 'Thành công', 'Vietinbank'),
('Rey', '720960067', '140000', '2018-12-06 19:49:30', 'Thành công', 'VP Bank'),
('miee247', '939213226', '69500', '2018-12-14 10:36:16', 'Thành công', 'Vietinbank'),
('JenJen', '504526913', '400000', '2018-12-14 16:06:18', 'Thành công', 'Ngoại thương Vietcombank');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `Moclan_5743338`
--

CREATE TABLE `Moclan_5743338` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bthdate` date DEFAULT NULL,
  `userName` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sodu` int(11) NOT NULL,
  `cre` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `active` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `Moclan_5743338`
--

INSERT INTO `Moclan_5743338` (`id`, `name`, `gender`, `bthdate`, `userName`, `password`, `email`, `sodu`, `cre`, `level`, `active`) VALUES
(12, 'Ngô Yến Như', 'Nữ', '2001-01-17', 'BeooCuTe2018', 'BanhBeoNhu2001', 'nguyenbaoduy67762@gmail.com', 0, 'Bèoo', 2, 1),
(13, 'Phương Thùy', 'Nữ', '2003-04-29', 'imphuongthuy', 'imthienhy123', 'Phuongthuy7723@gmail.com', 0, 'Hyy', 1, 0),
(14, 'Sky Uyên', 'Nữ', '2000-02-28', 'Skyuyen', 'myuyen2820', 'skyuyen1994@gmail.com', 0, 'Sky', 1, 0),
(15, 'Kiều Thị Hoài Linh', 'Nữ', '2002-08-28', 'kieuthihoailinh', 'minn', 'kieuthihoailinh2309@gmail.com', 0, 'Minn', 1, 0),
(16, 'Triệu Hiền Thục', 'Nữ', '2004-07-04', 'hienthuctrieu', '0988012608', 'trieuhienthucdkcb@gmail.com', 0, 'Me', 1, 0),
(17, 'ngô thj thu uyên', 'Nữ', '2004-10-18', 'ngothithuuyen', 'ngothithuuyen', 'ngouyen18102004@gmail.com', 0, 'bún', 1, 0),
(18, 'Võ Khánh Huyền', 'Nữ', '2001-10-15', 'CunEm', 'cunemxq1410', 'khanhhuyen1510kt@gmail.com', 0, 'Cún', 1, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `mua`
--

CREATE TABLE `mua` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bthdate` date DEFAULT NULL,
  `userName` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sodu` int(11) NOT NULL,
  `cre` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `active` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `mua`
--

INSERT INTO `mua` (`id`, `name`, `gender`, `bthdate`, `userName`, `password`, `email`, `sodu`, `cre`, `level`, `active`) VALUES
(11, 'Bác Tài', 'Nam', '1998-07-10', 'admin', 'taikuteyh', 'tainv62@wru.vn', 0, 'Bác Tài', 2, 1),
(23, 'Nam Dương', 'Nam', '2003-12-24', 'Rey', 'tuananh', 'tuana8685@gmail.com', 0, 'Rey', 2, 1),
(25, 'Quyền dzai', 'Nam', '2018-05-02', 'test', '9', 'test@gmail.com', 0, 'Ahihi', 1, 1),
(27, 'Thảo Anh', 'Nữ', '2005-07-24', 'miee247', 'anhnt24070811*', 'nguyenthaoanh2k5@gmail.com', 0, '#Mie', 1, 1),
(38, 'Bùi Ngọc Minh Châu', 'Khác', '2000-12-28', 'minhchau2812', '181216', 'bui.luyen.tqt@gmail.com', 0, 'Bò', 1, 1),
(45, 'Nguyễn Thùy Dung', 'Nữ', '2002-10-10', 'nguyenthuydung', 'nguyenthuydung307tcm1010', 'nguyenbaody10@gmail.com', 0, 'Chuột', 1, 1),
(48, 'Đàm Phương Thảo', 'Nữ', '1999-10-09', 'PhuongNy69', '09102004', 'Piitatoo0910@gmail.com', 0, 'Phương Ny', 1, 1),
(49, 'Nguyễn Hoàng Minh', 'Nam', '2005-11-03', 'HoangMinh', 'iamkynn', 'hoangminhh920@gmail.comc', 0, 'Kynn', 1, 1),
(50, 'Hoài Thương', 'Nữ', '2005-03-17', 'HOAITHUONG1703', '17032005', 'thuanthipham1965@gmail.com', 0, 'Thương', 1, 1),
(52, 'Mai Lan', 'Nữ', '2002-12-05', 'Mailan', '05122002', 'Lanham012@gmail.com', 0, 'Mây', 1, 1),
(53, 'Thái Hoàng', 'Nam', '2005-02-14', 'Hoangthai1402', '95175363171996', 'congthucchinhmau1402@gmail.com', 0, 'Buyn', 1, 1),
(54, 'Đinh Công Vang', 'Nam', '2002-07-05', 'Nasnafil', 'NasNafil', 'duongthantoan@gmail.com', 0, 'Nafil', 1, 0),
(55, 'Linh Nhi', 'Nữ', '2002-10-31', 'LinhNhi', '10051978', 'tongkhanhlinh10b2@gmai.com', 0, 'KLinh', 1, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `quotemanhyy`
--

CREATE TABLE `quotemanhyy` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bthdate` date DEFAULT NULL,
  `userName` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sodu` int(11) NOT NULL,
  `cre` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `active` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `quotemanhyy`
--

INSERT INTO `quotemanhyy` (`id`, `name`, `gender`, `bthdate`, `userName`, `password`, `email`, `sodu`, `cre`, `level`, `active`) VALUES
(11, 'Bác Tài', 'Nam', '1998-07-10', 'admin', 'taikuteyh', 'tainv62@wru.vn', 0, 'Bác Tài', 2, 1),
(12, 'Nam Dương', 'Nam', '2003-12-24', 'Rey', 'tuananh', 'tuana8685@gmail.com', 0, 'Rey', 1, 1),
(13, 'Hồng Gấm', 'Nữ', '2009-06-19', 'iamdzucute', 'bestngu', 'honggamdoraemon@gmail.com', 0, 'Dzú', 2, 1),
(14, 'Nguyễn Thị Thanh Hường', 'Nữ', '2003-06-28', 'Huong', 'huong2003', 'nguyenthithanhhuong022@gmail.com', 0, 'NTTH', 1, 1),
(16, 'Nguyễn Thị Thanh Hường', 'Nữ', '2003-06-28', 'Huong', 'huong2003', 'nguyenthithanhhuong022@gmail.com', 0, 'NTTH', 1, 1),
(18, 'ngô thj thu uyên', 'Nữ', '2004-10-18', 'ngothithuuyen', 'ngothithuuyen', 'ngouyen18102004@gmail.com', 0, 'bún', 1, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sadlove`
--

CREATE TABLE `sadlove` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bthdate` date DEFAULT NULL,
  `userName` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sodu` int(11) NOT NULL,
  `cre` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `active` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sadlove`
--

INSERT INTO `sadlove` (`id`, `name`, `gender`, `bthdate`, `userName`, `password`, `email`, `sodu`, `cre`, `level`, `active`) VALUES
(11, 'Bác Tài', 'Nam', '1998-07-10', 'admin', 'taikuteyh', 'tainv62@wru.vn', 0, 'Bác Tài', 2, 1),
(12, 'Nam Dương', 'Nam', '2003-12-24', 'Rey', 'tuananh', 'tuana8685@gmail.com', 0, 'Rey', 2, 1),
(14, 'Nguyễn Thảo Anh', 'Nữ', '2005-07-24', 'miee247', 'anhnt24070811*', 'nguyenthaoanh2k5@gmail.com', 0, 'Mie', 1, 1),
(17, 'Bạch Dương', 'Nữ', '2003-03-28', 'Min2803', 'hatuanh2003', 'Nguyenhatu@gmail.com', 0, 'Min', 1, 1),
(19, 'Nguyễn Thị Cẩm Dung', 'Nữ', '2003-06-08', 'camdung0806', 'camdung1100', 'ntcamtu@gmail.com', 0, 'Vani', 1, 1),
(20, 'Lê Thị Hiền', 'Nữ', '2002-07-30', 'LeHien', '30072002', 'lehien300702@gmail.com', 0, 'Nấm', 1, 1),
(21, 'Nguyễn Thị Cẩm Giang', 'Nữ', '2002-07-10', 'camgiang07', '0943138700', 'gianganh418@gmail.com', 0, 'Tuệ', 1, 1),
(23, 'Khả Hy', 'Nữ', '2002-09-14', 'Nhahy1409', '01219572353', 'Kieuanhao8080@gmail.com', 0, 'Hy or Na', 1, 1),
(25, 'Hy An', 'Nữ', '2018-04-14', 'Hyanbic140404', 'hyanbic14042004', 'Hyanbic14@gmail.com', 0, 'Bíc', 1, 1),
(26, 'Lê Thảo Uyên', 'Nữ', '2004-06-26', 'cao2606', 'cao260604', 'manleloi123@gmail.com', 0, 'Cáo', 1, 1),
(27, 'Trần Tín Tâm', 'Nữ', '2002-04-19', 'Rush', 'miupun123456', 'miupun83@gmail.com', 0, 'Rush', 1, 1),
(28, 'Nguyễn Hoàng Bảo Nhiên', 'Nữ', '2003-09-17', 'Nhien1709', 'quangtrang17092003@gmail.com', 'quangtrang17092003@gmail.com', 0, 'Yuna', 1, 1),
(29, 'Nguyễn Hoàng Ân Hy', 'Nữ', '2004-07-28', 'Tieuhy', 'goccuaru', 'Christina242112@yahoo.com', 0, 'Tiểu Hy', 1, 0),
(30, 'ngô thj thu uyên', 'Nữ', '2004-10-18', 'ngothithuuyen', 'ngothithuuyen', 'ngouyen18102004@gmail.com', 0, 'bún', 1, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `saohanquoc`
--

CREATE TABLE `saohanquoc` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bthdate` date DEFAULT NULL,
  `userName` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sodu` int(11) NOT NULL,
  `cre` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `active` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `saohanquoc`
--

INSERT INTO `saohanquoc` (`id`, `name`, `gender`, `bthdate`, `userName`, `password`, `email`, `sodu`, `cre`, `level`, `active`) VALUES
(11, 'Trần Thị Huyền', 'Nữ', '2003-08-09', 'admin', 'taikuteyh', 'thihuyennt983@gmail.com', 0, 'Muối 1', 1, 0),
(14, 'Thảo Thảo', 'Nữ', '2005-10-14', 'Sun', 'hautieumy', 'fanpagefakeloves@gmail.com', 0, 'ok sửa', 1, 0),
(15, 'Lê Võ Kim Linh', 'Nữ', '2017-10-08', 'Heochimtee810', 'heochimtee810', 'kimlinh2k19@gmail.com', 0, 'Suri', 1, 0),
(16, 'Bác Tài', 'Nam', '1998-07-10', 'suricute', 'suricute', 'tainv62@wru.vn', 0, 'Bác Tài 1', 2, 0),
(17, 'Hau Tieu My', 'Nữ', '2004-01-20', 'Thihuyenntran9', '2804', 'Hautieumy@gmail.com', 0, 'Sun 2', 1, 0),
(19, 'ngô thj thu uyên', 'Nữ', '2004-10-18', 'ngothithuuyen', 'ngothithuuyen', 'ngouyen18102004@gmail.com', 0, 'bún', 1, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `say`
--

CREATE TABLE `say` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bthdate` date DEFAULT NULL,
  `userName` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sodu` int(11) NOT NULL,
  `cre` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `active` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `say`
--

INSERT INTO `say` (`id`, `name`, `gender`, `bthdate`, `userName`, `password`, `email`, `sodu`, `cre`, `level`, `active`) VALUES
(11, 'Bác Tài', 'Nam', '1998-07-10', 'admin', 'taikuteyh', 'tainv62@wru.vn', 0, 'Bác Tài', 2, 1),
(12, 'Trần Thanh Xuân', 'Nữ', '2001-05-04', 'JenJen', 'cuoilennao0405', 'tranquyxuanphat@gmail.com', 0, 'Jen', 2, 1),
(13, 'Minh', 'Nam', '2003-03-23', 'minh2003', 'minh2003', 'phuminh2303@gmail.com', 0, 'HY', 1, 1),
(15, 'Hau Tieu My', 'Nữ', '2004-01-20', 'Sun', 'hautieumy', 'Hautieumy@gmail.com', 0, 'Sun', 1, 1),
(17, 'Nguyễn Thanh Loan', 'Nữ', '2002-10-08', 'Loanpii', 'quenmatkhau', 'Quynhanhpc8102002@gmail.com', 0, 'Pii', 1, 1),
(18, 'Đinh Quỳnh Liên', 'Nữ', '2018-05-02', 'Dinhquynhlien', '1234567890', 'Dinhquynhlien0209@gmail.com', 0, 'Liên', 1, 1),
(19, 'Lê Võ Kim Linh', 'Nữ', '2017-10-08', 'Heochimtee810', 'heochimtee810', 'kimlinh2k19@gmail.com', 0, 'Hêo', 1, 1),
(20, 'Trực', 'Nam', '2003-04-06', 'Deocute06042003', 'vothanhtruc', 'Lop910khanhvan.ntk@gmail.com', 0, 'Dẹo ', 1, 1),
(21, 'Bùi Ngọc Minh Châu', 'Khác', '2000-12-28', 'minhchau2812', '181216', 'bui.luyen.tqt@gmail.com', 0, 'Bò', 1, 1),
(22, 'Hoàng Kiều Trang', 'Nữ', '1999-12-26', 'Changxinhgai12', 'trangtrang12', 'tt6344950@gmail.com', 0, 'Chang', 1, 1),
(23, 'Huỳnh Trà My', 'Nữ', '2003-10-24', 'huynhtramy', '01253627859', 'nguyenhongphuong.tgdddt@gmail.com', 0, 'Mii ', 1, 1),
(24, 'Van Hieu', 'Nam', '1970-01-01', 'tuoiteen05', 'vanhieuvh2001', 'thentrumquangnam@gmail.com', 0, 'V_H', 1, 1),
(25, 'Huyền Loan', 'Nữ', '2003-03-15', 'huyenloan1503', 'huyenloan1503', 'huyenloan15003@gmail.com', 0, 'Caps', 1, 1),
(26, 'Trần Cao Khả Linh', 'Nữ', '2001-03-10', 'Camthanthien', 'chamcham1234', 'Babylovecat9@gmail.com', 0, 'Carrot', 1, 1),
(27, 'Bùi Phương Thảo', 'Nữ', '2001-05-02', 'buiphuongthao', 'buiphuongthao', 'buiphuongthaonqc@gmail.com', 0, 'Cún', 1, 1),
(28, 'Nguyễn Văn Tuấn Vũ', 'Nam', '2001-11-19', 'xekodzl', 'tuanvu098', 'namle2k1namle@gmail.com', 0, 'Vũ', 1, 1),
(29, 'Nguyễn Thị Ngọc', 'Nữ', '2002-03-19', 'Mitcute', 'Ngoccute', 'Ngocmit002@gmail.com', 0, 'Mít', 1, 1),
(30, 'ngô thj thu uyên', 'Nữ', '2004-10-18', 'ngothithuuyen', 'ngothithuuyen', 'ngouyen18102004@gmail.com', 0, 'bún', 1, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `stats`
--

CREATE TABLE `stats` (
  `id` int(11) UNSIGNED NOT NULL,
  `s_time` int(10) NOT NULL,
  `s_id` varchar(40) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Đang đổ dữ liệu cho bảng `stats`
--

INSERT INTO `stats` (`id`, `s_time`, `s_id`) VALUES
(41766, 1545305184, 'f3a425790a082b1f9dbf25bf9c1cf504');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `StayHigh_8605376`
--

CREATE TABLE `StayHigh_8605376` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bthdate` date DEFAULT NULL,
  `userName` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sodu` int(11) NOT NULL,
  `cre` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `active` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `StayHigh_8605376`
--

INSERT INTO `StayHigh_8605376` (`id`, `name`, `gender`, `bthdate`, `userName`, `password`, `email`, `sodu`, `cre`, `level`, `active`) VALUES
(11, 'Truong Van Dang', 'Khác', '2013-02-05', 'himofficial.infoceo', '01887855217Reg', 'himofficial.infoceo@gmail.com', 0, 'kensieudz', 2, 1),
(12, 'ngô thj thu uyên', 'Nữ', '2004-10-18', 'ngothithuuyen', 'ngothithuuyen', 'ngouyen18102004@gmail.com', 0, 'bún', 1, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `Sttngan_1120958`
--

CREATE TABLE `Sttngan_1120958` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bthdate` date DEFAULT NULL,
  `userName` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sodu` int(11) NOT NULL,
  `cre` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `active` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `Sttngan_1120958`
--

INSERT INTO `Sttngan_1120958` (`id`, `name`, `gender`, `bthdate`, `userName`, `password`, `email`, `sodu`, `cre`, `level`, `active`) VALUES
(12, 'Ngô Yến Như', 'Nữ', '2001-01-17', 'BeooCuTe2018', 'BanhBeoNhu2001', 'nguyenbaoduy67762@gmail.com', 0, 'Bèoo', 2, 1),
(13, 'Triệu Hiền Thục', 'Nữ', '2004-07-04', 'hienthuctrieu', '0988012608', 'trieuhienthucdkcb@gmail.com', 0, 'Me', 1, 0),
(14, 'ngô thj thu uyên', 'Nữ', '2004-10-18', 'ngothithuuyen', 'ngothithuuyen', 'ngouyen18102004@gmail.com', 0, 'bún', 1, 0),
(15, 'Thảo Anh', 'Nữ', '2005-07-24', 'miee247', 'anhnt24070811*', 'nguyenthaoanh2k5@gmail.com', 0, 'Mie', 1, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `thathinh`
--

CREATE TABLE `thathinh` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bthdate` date DEFAULT NULL,
  `userName` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sodu` int(11) NOT NULL,
  `cre` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `active` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `thathinh`
--

INSERT INTO `thathinh` (`id`, `name`, `gender`, `bthdate`, `userName`, `password`, `email`, `sodu`, `cre`, `level`, `active`) VALUES
(11, 'Bác Tài', 'Nam', '1998-07-10', 'admin', 'taikuteyh', 'tainv62@wru.vn', 0, 'Bác Tài', 2, 1),
(12, 'Nguyễn Thanh Loan', 'Nữ', '2002-10-08', 'Loanpii', 'quenmatkhau', 'Quynhanhpc8102002@gmail.com', 0, 'Pii', 1, 1),
(13, 'Tường Vy', 'Nữ', '2003-09-25', 'tuongvy', 'ngovuongtuongvy', 'tuongvy250903@gmail.com', 0, 'Na', 2, 1),
(14, 'Nguyễn Thị Thanh Hường', 'Nữ', '2003-06-28', 'Huong', 'huong2003', 'nguyenthithanhhuong022@gmail.com', 0, 'NTTH', 1, 1),
(15, 'Vũ Nguyễn Ngọc Trâm', 'Nữ', '1995-03-15', 'Shiincv', 'namyeutinh', 'dongtuyet153@gmail.com', 0, 'Snes', 1, 1),
(16, 'Nguyễn Thị Trà My', 'Nữ', '2002-02-10', 'tramyamy', 'my408799', 'mykary1102@gmail.com', 0, '#Amy', 1, 1),
(17, 'Hoàng Hồng Huệ', 'Nữ', '2003-01-14', 'Chiuchiu', '123456', 'Hoanghonghue141@gmail.com', 0, 'chiu', 2, 1),
(18, 'Lan Anh Đinh', 'Nữ', '2002-09-23', 'Lananh_2309', '23092002', 'dinhlananh60@gmail.com', 0, '#Lananh', 1, 1),
(19, 'Huỳnh Trà My', 'Nữ', '2003-10-24', 'huynhtramy', '01253627859', 'nguyenhongphuong.tgdddt@gmail.com', 0, 'Mii', 1, 1),
(21, 'Đặnh Thị Khánh Ly', 'Nữ', '2003-09-15', 'Kaly2003', 'Chuot2003', 'khanhlydang325@gmail.com', 0, 'Kaly', 1, 1),
(22, 'Đặng Thu Hiền', 'Nữ', '2003-04-03', 'thuhien2003', '28041996', 'dangthithuhien2003@gmail.com', 0, 'Mun', 1, 1),
(24, 'Huỳnh Lê Giao Linh', 'Nữ', '2004-12-22', 'Berin', 'giaolinh123', 'giaolinh22122004@gmail.com', 0, 'Berin', 1, 1),
(25, 'Huỳnh Thanh Sang', 'Nam', '2002-10-19', 'thanhsang1503', 'tuongvy1503', 'huynhthanhsang333@gmail.com', 0, 'Night', 1, 1),
(27, 'Diễm Hương', 'Nữ', '2018-03-24', 'Huongg', 'sahaha', 'huongnguyen243@gmail.com', 0, 'Uln', 1, 1),
(28, 'Hoàng Hương Mơ', 'Nữ', '2003-05-08', 'Hoanghuongmo', '18092003', 'huongmoh54@gmail.com', 0, 'Vic', 1, 1),
(29, 'Đoàn Thị Thanh Hiền', 'Nữ', '2004-09-17', 'hienmun1709', 'hienmun17', 'hienmun1709@gmail.com', 0, 'Mun', 1, 1),
(30, 'Xin Chào', 'Nam', '2005-04-30', '0911337174', 'anhkiet80', 'trananhkiet400@gmail.com', 0, 'Trần Kiệt', 1, 0),
(31, 'Ngoi Văn Thắng', 'Nữ', '2006-11-10', 'Ngovanthang', 'ngolinhchi', 'ngocnguyen27489@gmail.com', 0, 'Thắng', 1, 0),
(32, 'Nguyễn Quỳnh Như', 'Nữ', '2006-01-19', 'quynhnhufankpop', 'nguyenquynhnhu1901', 'dreamteam24052017@Gmail.com', 0, 'Army lai Wannable', 1, 0),
(33, 'Thanh Tùng', 'Nam', '1989-07-19', 'Thanhtung', 'thanhtung1920', 'Thanhtungk655@gmail.com', 0, 'Kaid', 1, 0),
(34, 'ngô thj thu uyên', 'Nữ', '2004-10-18', 'ngothithuuyen', 'ngothithuuyen', 'ngouyen18102004@gmail.com', 0, 'bún', 1, 0),
(35, 'Nguyễn Thị Thu Hương', 'Nữ', '2003-12-27', 'Huonglyna', 'huonglyna2712', 'Lynahuongnguyen@gmail.com', 0, 'Lyna', 1, 1),
(36, 'Lê Thị Thảo Vy', 'Nữ', '2005-02-23', 'lethithaovy', '23220052322005', 'lequytpt@gmail.com', 0, 'Bae', 1, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tothichcau_5432446`
--

CREATE TABLE `tothichcau_5432446` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bthdate` date DEFAULT NULL,
  `userName` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sodu` int(11) NOT NULL,
  `cre` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `active` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tothichcau_5432446`
--

INSERT INTO `tothichcau_5432446` (`id`, `name`, `gender`, `bthdate`, `userName`, `password`, `email`, `sodu`, `cre`, `level`, `active`) VALUES
(11, 'Bác Tài', 'Nam', '1998-07-10', 'admin', 'taikuteyh', 'tainv62@wru.vn', 0, 'Bác Tài', 2, 1),
(12, 'Vũ Nguyễn Ngọc Trâm', 'Nữ', '1995-03-15', 'Shiincv', 'namham153', 'dongtuyet153@gmail.com', 0, 'Snes', 1, 1),
(13, 'Nguyễn Lê Hoài Thương', 'Nữ', '2001-05-07', 'nlhthuong7501', 'hoaithuong', 'thuongnguyen7501@gmail.com', 0, 'Thương', 1, 1),
(14, 'Đỗ Phượng', 'Nữ', '2002-10-15', 'himheo', '123456789', 'phuongdo151002@gmail.com', 0, 'Hỉm', 1, 1),
(15, 'Bùi Thanh Hoa', 'Nữ', '2001-12-28', 'hoa7604', 'hoa7604', 'mituotkute28@gmail.com', 0, 'Thiên thần', 1, 1),
(16, 'Thư Thái Hoàng', 'Nữ', '2001-05-20', 'Jinlion', 'hoangthai', 'jinlion2052001@gmail.com', 0, 'Jin', 1, 1),
(17, 'Sky Uyên', 'Nữ', '2000-02-28', 'Skyuyen', 'myuyen2820', 'skyuyen1994@gmail.com', 0, 'Sky', 1, 1),
(18, 'Nguyễn Thị Ngọc Ánh', 'Nữ', '2001-04-20', 'Anna2612', 'ngocanh', 'ngocanhsociu20042001@gmail.com', 0, 'Thỏ', 1, 1),
(19, 'nguyen thi phuong linh', 'Nữ', '2002-12-27', 'goblin', 'linh4102', 'linh90465@gmail.com', 0, 'Goblin', 1, 1),
(20, 'Nguyễn Thu Huyền', 'Nữ', '2003-10-09', 'Huyencute0910', 'nguyenthuhuyen', 'nguyenthuhuyen537@gmail.com', 0, 'Huỳn', 1, 1),
(21, 'Hoàng Hạ Vân', 'Nữ', '2001-12-28', 'hoanghavan', '0946455297.', 'hoangthithem861@gmail.com', 0, 'Hĩm', 1, 1),
(22, 'Nguyễn Hoàng Ngân Hà', 'Nữ', '2001-09-11', 'Mimxtp', 'qtp117', 'Hanthienbang0608@gmail.com', 0, 'Mĩm', 2, 1),
(23, 'Minh Ann', 'Nữ', '2004-06-07', 'dongminhan', 'sontungmtp', 'Dongminhan576@gmail.com', 0, '#An', 1, 1),
(24, 'Lê Tuấn Kiệt', 'Nam', '2002-11-18', 'Kit16', '2011', 'letuankiet2k2@gmail.com', 0, 'Kịt', 1, 1),
(25, 'Thanh Tùng', 'Nam', '1989-07-19', 'Thanhtung', 'thanhtung1920', 'Thanhtungk655@gmail.com', 0, 'Kaid', 1, 0),
(26, 'ngô thj thu uyên', 'Nữ', '2004-10-18', 'ngothithuuyen', 'ngothithuuyen', 'ngouyen18102004@gmail.com', 0, 'bún', 1, 0),
(27, 'Đặng Nguyễn Hoàng Minh', 'Nam', '1999-10-10', 'Minhtruong', 'truong', 'minhminhdang1999@gmail.com', 0, 'Kay', 1, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `Trash_3730792`
--

CREATE TABLE `Trash_3730792` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bthdate` date DEFAULT NULL,
  `userName` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sodu` int(11) NOT NULL,
  `cre` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `active` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `Trash_3730792`
--

INSERT INTO `Trash_3730792` (`id`, `name`, `gender`, `bthdate`, `userName`, `password`, `email`, `sodu`, `cre`, `level`, `active`) VALUES
(11, 'Truong Van Dang', 'Khác', '2013-02-05', 'himofficial.infoceo', '01887855217Reg', 'himofficial.infoceo@gmail.com', 0, 'kensieudz', 2, 1),
(12, 'ngô thj thu uyên', 'Nữ', '2004-10-18', 'ngothithuuyen', 'ngothithuuyen', 'ngouyen18102004@gmail.com', 0, 'bún', 1, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bthdate` date DEFAULT NULL,
  `userName` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mk2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sodu` int(11) DEFAULT NULL,
  `cre` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `page` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `so_tk` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `so_in_tren_the` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ten` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ngan_hang` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `chi_nhanh` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `name`, `gender`, `bthdate`, `userName`, `password`, `mk2`, `email`, `sodu`, `cre`, `page`, `level`, `so_tk`, `so_in_tren_the`, `ten`, `ngan_hang`, `chi_nhanh`) VALUES
(18, 'Bác Tài', 'Nam', '1998-07-10', 'admin', 'taikuteyh', '824444', 'tainv62@wru.vn', 663450, 'Bác Tài', 'deeplove_1683934,kingquotes_590064,tothichcau_5432446,xamxi_6062147,droll_2659058,viet_9758669,1phut_7929766,yeu,mua,sadlove,blogcuaban,ethanhxuan,buonvl,say,thathinh,quotemanhyy,saohanquoc', 3, '0451000388383', '9704366811924625011', 'Nguyễn Văn Tài', 'Vietcombank', 'Thành Công - Hà Nội'),
(21, 'Quyền dzai vc', 'Nam', '2018-05-02', 'test', '1', '123456', 'quyenta62@wru.vn', 0, 'Quyền', 'mua', 3, NULL, NULL, NULL, NULL, NULL),
(25, 'Thái Linh', 'Nữ', '2003-12-24', 'Thailinh241203', 'Trucanh241203@gmail.com', NULL, 'Trucanh241203@gmail.com', 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(26, 'Huỳnh Thanh Sang', 'Nam', '2002-10-19', 'thanhsang1503', 'tuongvy1503', '1503', 'huynhthanhsang333@gmail.com', 1950, 'Night', 'blogcuaban,thathinh,ethanhxuan,ethanhxuan', NULL, NULL, NULL, NULL, NULL, NULL),
(27, 'Nguyễn Thị Trà My', 'Nữ', '2002-02-10', 'tramyamy', 'my408799', '408799', 'mykary1102@gmail.com', 13250, '#Amy', 'blogcuaban,thathinh', NULL, NULL, NULL, NULL, NULL, NULL),
(28, 'Hồ Quang Tùng', 'Nam', '2018-05-06', 'Hotung.999', 'hotung.999', '123456', 'qtung999@gmail.com', 4000, 'Cool', '', NULL, NULL, NULL, NULL, NULL, NULL),
(29, 'Thuỳ', 'Nữ', '2003-10-27', 'Kaby310', 'bichthuy2710', NULL, 'Kaby310@gmail.com', 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(30, 'Trịnh Thu Hằng', 'Nữ', '2000-11-08', 'Hanghoi0811', 'hanghoi0811', NULL, 'trinhthuhang054@gmail.com', 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(31, 'Triệu Hiền Thục', 'Nữ', '2004-07-04', 'hienthuctrieu', '0988012608', '21072018', 'trieuhienthucdkcb@gmail.com', 9700, 'Me', 'Moclan_5743338,Sttngan_1120958', NULL, NULL, NULL, NULL, NULL, NULL),
(32, 'Nam Dương', 'Nam', '2003-12-24', 'Rey', 'tuananh', '241203', 'tuana8685@gmail.com', 1697, 'Rey', '1phut_7929766,mua,sadlove,quotemanhyy', NULL, '159209814', '9704328617635318', 'Bùi Hải Yến', 'VP Bank', 'Hiệp Hoà - Bắc Giang'),
(33, 'Hoàng Hồng Huệ', 'Nữ', '2003-01-14', 'Chiuchiu', 'Hoanghonghue03@gmail.com', '0123456', 'Hoanghonghue03@gmail.com', 7100, 'chiu', 'blogcuaban,thathinh', NULL, '2716205011057', '0', 'Pham Hong Dung', 'Agribank', 'Ngọc lập- yên lập- phú thọ'),
(34, 'Nguyễn Hoàng Bảo Nhiên', 'Nữ', '2003-09-17', 'Nhien1709', 'quangtrang17092003@gmail.com', '0969488746', 'quangtrang17092003@gmail.com', 7050, 'Yuna', 'sadlove,viet_9758669', NULL, NULL, NULL, NULL, NULL, NULL),
(35, 'Thúy', 'Khác', '2001-06-27', 'Buithuy', 'Thuy2804', NULL, 'Thuytruong2804@gmail.com', 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(36, 'Nguyễn Thị Cẩm Dung', 'Nữ', '2004-06-08', 'Nguyenthicamdung', 'camdungdung11', NULL, 'Nguyenthicamdung0608@gmail.com', 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(38, 'Huỳnh Trà My', 'Nữ', '2003-10-24', 'huynhtramy', '01253627859', '0917503560', 'nguyenhongphuong.tgdddt@gmail.com', 18000, 'Mii ', 'blogcuaban,thathinh,say', NULL, '050054526102', '0', 'Nguyễn Hồng Phương ', 'Sacombank', 'Bến Cát '),
(39, 'Bùi Ngọc Minh Châu', 'Khác', '2000-12-28', 'minhchau2812', '181216', '28122000', 'bui.luyen.tqt@gmail.com', 1196, 'Bò', 'mua,say,yeu,buonvl', NULL, '5915205107982', '9740050704144919', 'Bùi Ngọc Thu Hiền', 'Agribank', 'Thống Nhất - Đồng Nai'),
(40, 'Nguyễn Thị Diễm My', 'Nữ', '2003-11-20', 'Myydiamond', 'myydiamond', NULL, 'camhong6361@icloud.com', 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(41, 'Đặnh Thị Khánh Ly', 'Nữ', '2003-09-15', 'Kaly2003', 'Chuot2003', '15092003', 'khanhlydang325@gmail.com', 2100, 'Kaly', 'thathinh', NULL, NULL, NULL, NULL, NULL, NULL),
(42, 'Wind Đẹp Trai', 'Khác', '2000-07-15', 'Wind', 'haphong', '14062000', 'magihienhoang@gmail.com', 9950, '#wind', 'kingquotes_590064,deeplove_1683934', NULL, '3606205343666', '0', 'Hoàng Đình Thắng', 'Agribank', 'Yên Thành - Nghệ An'),
(45, 'Lê Thảo Uyên', 'Nữ', '2004-06-26', 'cao2606', 'cao260604', '26062004', 'manleloi123@gmail.com', 12000, 'Cáo', 'sadlove', NULL, NULL, NULL, NULL, NULL, NULL),
(46, 'Nguyễn Thị Thu Hương', 'Nữ', '2003-12-27', 'Huonglyna', 'huonglyna2712', '27122003', 'Lynahuongnguyen@gmail.com', 8250, 'Lyna', 'thathinh,blogcuaban', NULL, NULL, NULL, NULL, NULL, NULL),
(47, 'Lâm Quỳnh Đan', 'Nữ', '2001-06-27', '01637957609', '01678970086huynhnhu1303', NULL, 'Quynhnhu13033455556@gmail.com', 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(48, 'Nguyễn Thị Cẩm Giang', 'Nữ', '2002-07-10', 'camgiang07', '0943138700', NULL, 'gianganh418@gmail.com', 12000, 'Tuệ', 'sadlove', NULL, NULL, NULL, NULL, NULL, NULL),
(49, 'Vũ Nguyễn Ngọc Trâm', 'Nữ', '1995-03-15', 'Shiincv', 'namham153', '0986817450', 'dongtuyet153@gmail.com', 22000, 'Snes', 'deeplove_1683934,kingquotes_590064,tothichcau_5432446,xamxi_6062147,buonvl,viet_9758669,ethanhxuan,thathinh', NULL, '100003800192', '9704155248945836', 'Vũ Nguyễn Ngọc Trâm ', 'VietinBank', 'Hà Khẩu - Hạ Long - Tỉnh Quảng Ninh '),
(51, 'Nguyễn Thị Cẩm Dung', 'Nữ', '2004-06-08', 'Camdung', 'camdung0806', NULL, 'Nguyenthicamdung08062004@gmail.com', 5000, 'Vani', '', NULL, NULL, NULL, NULL, NULL, NULL),
(52, 'Ngô Yến Như', 'Nữ', '2001-01-17', 'BeooCuTe2018', 'BanhBeoNhu2001', '123321', 'nguyenbaoduy67762@gmail.com', 21100, 'Bèoo', 'Moclan_5743338,Sttngan_1120958', NULL, NULL, NULL, NULL, NULL, NULL),
(53, 'Nguyễn Thu Hiền', 'Khác', '2003-01-31', 'Ryryry', 'ryryryryry', NULL, 'rycute1235@gmail.com', 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(54, 'Hồng Gấm', 'Nữ', '2009-06-19', 'iamdzucute', 'honggamdoraemon@gmail.com', '719066765324', 'honggamdoraemon@gmail.com', 344950, 'Dzú', '1phut_7929766,yeu,quotemanhyy', NULL, '109000835040', '0', 'Nguyễn Thị Thảo', 'Vietinbank', '02 TP Hồ Chí Minh'),
(55, 'Lan Anh Đinh', 'Nữ', '2002-09-23', 'Lananh_2309', '23092002', '01699207165', 'dinhlananh60@gmail.com', 5850, '#Lananh', 'thathinh', NULL, NULL, NULL, NULL, NULL, NULL),
(56, 'Nguyễn Hoàng Kiều Vy', 'Nữ', '2003-08-08', 'kieuvy2811', '20021128', NULL, 'nguyettieuvy1709@gmail.com', 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(57, 'Minh phương', 'Nữ', '2004-09-22', 'Minhphuong', 'phuong2004', '22092004', 'Mumcute255@gmail.com', 50000, '', '1phut_7929766,yeu', NULL, NULL, NULL, NULL, NULL, NULL),
(58, 'Đặng Thị Thùy Dung', 'Nữ', '2003-03-06', 'Dangthithuydung', 'dangthithuydung.632003...', NULL, 'Nguyenngocdoankhanh632003@gmail.com', 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(59, 'Nguyễn Hoàng Sơn', 'Nam', '2002-07-17', 'neil.hendyruan', 'son1772002', '0994203723', 'thienhoangcao1111@gmail.com', 350, '#Sơn', 'yeu', NULL, NULL, NULL, NULL, NULL, NULL),
(60, 'Khả Hy', 'Nữ', '2002-09-14', 'Nhahy1409', '01219572353', '14092002', 'Kieuanhao8080@gmail.com', 10050, 'Hy or Na', 'sadlove', NULL, NULL, NULL, NULL, NULL, NULL),
(61, 'Huỳnh Lê Giao Linh', 'Nữ', '2004-12-22', 'Berin', 'giaolinh123', '01639569319', 'giaolinh22122004@gmail.com', 97000, 'Berin', 'blogcuaban,thathinh', NULL, NULL, NULL, NULL, NULL, NULL),
(62, 'Như Quỳnh', 'Nữ', '2004-08-06', 'quinquin68', 'oncetwice2010', NULL, 'nhuquynhquotes68@gmail.com', 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(63, 'Ngô Vương Tường Vy', 'Nữ', '2003-09-25', 'tuongvy', 'ngovuongtuongvy', '25092003', 'tuongvy250903@gmail.com', 1300, 'na', 'ethanhxuan,blogcuaban,thathinh', NULL, '0281000488290', '0', 'Nguyễn Thị Kim Anh', 'Vietcombank', 'Thành Phố Hồ Chí Minh'),
(64, 'Đặng Thị Thùy Dung', 'Nữ', '2003-03-06', 'Poon', 'dangthithuydung.632003...', NULL, 'Nguyenngocdoankhanh632003@gmail.com', 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(66, 'Nguyễn Thị Cẩm Dung', 'Nữ', '2004-06-08', 'NguyenTcamdung', 'camdungdung12', NULL, 'Nguyenthicamdung2004@gmail.com', 10000, '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(67, 'Hoàng Thái', 'Nam', '2005-02-14', 'thaihoang.mee', 'Hoangthai2005', NULL, 'thaihoang.mee@gmail.com', 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(68, 'Trịnh Phương Thảo', 'Nữ', '2003-07-06', 'BiCute', 'bicute0607', NULL, 'dangtruong060703@gmail.com', 4000, '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(69, 'Trần Tín Tâm', 'Nữ', '2002-04-19', 'Rush', 'miupun123456', NULL, 'miupun83@gmail.com', 10000, 'Rush', 'sadlove', NULL, NULL, NULL, NULL, NULL, NULL),
(70, 'Nguyễn Thị Lệ Huyền', 'Nữ', '2001-11-05', 'Nguyenhuyen', 'parkchanyeolhuyen', NULL, 'nkh16012007@gmail.com', 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(71, 'Nguyễn Minh Thảo', 'Nữ', '1970-01-01', 'baejinn15.05', 'trantrungthanhthaolon30102004', NULL, 'thaocute1505@gmail.com', 3000, '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(72, 'Nguyễn Trường Long', 'Khác', '2000-09-10', 'Daixinhgai', 'Long10092000', '0869063013', 'Thi.echb9@gmail.com', 8000, 'Dái', '', NULL, NULL, NULL, NULL, NULL, NULL),
(73, 'Hồ Thị Thu Huệ', 'Nữ', '2003-03-16', 'thuhue', 'hue10121996', NULL, 'huyenhospt12@gmail.com', 0, '#Ran', '', NULL, NULL, NULL, NULL, NULL, NULL),
(74, 'Linh', 'Nữ', '2002-08-24', 'Linh', 'linh2002', NULL, 'Linh2002@gmail.com', 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(75, 'Nguyễn Thị Thùy', 'Nữ', '2003-07-09', 'Nguyenthithuy09', '09072309nguyenbaoanh', NULL, 'thuyno0907@gmail.com', 3000, '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(76, 'Nguyễn Mai Chi', 'Nữ', '2004-08-17', 'justie1708', '9240doanquangminh', NULL, 'justie1708@gmail.com', 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(77, 'Nguyễn Thanh Loan', 'Nữ', '2002-10-08', 'Loanpii', 'quenmatkhau', '1052001', 'Quynhanhpc8102002@gmail.com', 35150, 'Pii', 'say,thathinh,yeu', NULL, NULL, NULL, NULL, NULL, NULL),
(78, 'Tuấn Anh', 'Nam', '2004-10-29', 'Spey', 'tuananh', NULL, 'tuananhdangyeu2004@gmail.com', 1000, '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(79, 'Bạch Dương', 'Nữ', '2000-03-28', 'Min', '1123456789', NULL, 'Bachduong667@gmail.com', 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(80, 'Bùi Phương Thảo', 'Nữ', '2001-05-02', 'buiphuongthao', 'buiphuongthao', '252001', 'buiphuongthaonqc@gmail.com', 4250, 'Cún', 'say', NULL, NULL, NULL, NULL, NULL, NULL),
(82, 'Nguyễn Định', 'Nữ', '1966-08-24', 'nguyendinh1965', 'nguyendinh1965', NULL, 'huongtamtung1993@gmail.com', 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(83, 'Trần Thanh Xuân', 'Nữ', '2001-05-04', 'JenJen', 'cuoilennao0405', '01646687260', 'tranquyxuanphat@gmail.com', 129850, 'Jen', 'kingquotes_590064,yeu,ethanhxuan,say', NULL, '0441003759484', '0', 'Trịnh Hoàng Lê Cường', 'Ngoại thương Vietcombank', 'Tân Phú'),
(84, 'Van Hieu', 'Nam', '1970-01-01', 'tuoiteen05', 'vanhieuvh2001', NULL, 'thentrumquangnam@gmail.com', 27000, 'V_H', 'say', NULL, NULL, NULL, NULL, NULL, NULL),
(86, 'Hoàng Thảo Linh', 'Nữ', '2002-08-24', 'Hoangthaolinh2002', 'linh1234', NULL, 'Linh2002@gmail.com', 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(87, 'Minh', 'Nam', '2003-03-23', 'minh2003', 'minh2003', '0981036335', 'phuminh2303@gmail.com', 15000, 'CÒ', 'xamxi_6062147,buonvl,say', NULL, NULL, NULL, NULL, NULL, NULL),
(88, 'Nguyễn Thị Hồng Ánh', 'Nữ', '2003-07-29', 'hanang', 'Honganh1109', NULL, 'nguyenthihonganha1@gmail.com', 1000, '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(89, 'Huyền Loan', 'Nữ', '2003-03-15', 'huyenloan1503', 'huyenloan1503', '0905535762', 'huyenloan15003@gmail.com', 25000, 'Caps', 'say', NULL, NULL, NULL, NULL, NULL, NULL),
(91, 'Nguyễn Thị Thuỳ Dương', 'Nữ', '2002-06-08', 'Thuyduong', 'chuthithuy', NULL, 'Thuychu704@gmail.com', 3000, '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(92, 'Trương Gia Kiệt', 'Nam', '2003-06-20', 'kaixinkxink222', 'Giakiet2003', NULL, 'noname2017gk@gmail.com', 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(93, 'Nguyễn Thị Thanh Hường', 'Nữ', '2003-06-28', 'Huong', 'huong2003', '28062003', 'nguyenthithanhhuong022@gmail.com', 52, 'NTTH', 'DeepCrush_1249406,deeplove_1683934,blogcuaban,droll_2659058,1phut_7929766,quotemanhyy,yeu,thathinh,buonvl', NULL, '62610000591815', '9704180074344110', 'Nguyễn Thành Huy', 'BIDV', 'Ngân hàng BDIV Ayunpa - Chi nhánh Phố Núi'),
(95, 'Minh Đức', 'Nam', '2001-03-23', 'dinhducbg123', 'duchayhat123', NULL, 'dinhducbg2@gmail.com', 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(96, 'Nguyễn Thị Thu Hiền', 'Nữ', '2002-10-24', 'thuhien200222', 'thuhien2002', NULL, 'thuhien200222@gmail.com', 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(97, 'Trần Thị Huyền', 'Nữ', '2003-08-09', 'Thihuyenntran', 'hoangmocthyxinh03@gmail.com', NULL, 'hoangmocthyxinh03@gmail.com', 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(98, 'Trần Thị Kim Ngân', 'Nữ', '2003-07-31', 'kimngan3107', '31072003..', NULL, 'kimngan3107@gmail.com', 4300, '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(99, 'Đoàn Thị Thanh Hiền', 'Nữ', '2004-09-17', 'hienmun1709', 'hienmun17', '13062003', 'hienmun1709@gmail.com', 5200, 'Mun', 'blogcuaban,thathinh', NULL, NULL, NULL, NULL, NULL, NULL),
(100, 'Vi Thị Ngọc Ánh', 'Nữ', '2003-10-11', 'Anh_Cerly', 'Nelbie', '01686080238', 'nhngc39@gmail.com', 8000, '#Cerly', '', NULL, NULL, NULL, NULL, NULL, NULL),
(101, 'Phan Thị Nhật Lệ', 'Nữ', '2003-07-31', 'Shinndz', '31072003', NULL, 'Phanle31072003@gmail.com', 1000, '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(102, 'Nguyễn Thị Lan Anh', 'Nữ', '2002-08-25', 'Lanh', '25082002', NULL, 'lanh25082002@gmail.com', 10000, '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(103, 'Hau Tieu My', 'Nữ', '2004-01-20', 'Sun', 'hautieumy', '1362013', 'Hautieumy@gmail.com', 9550, 'Sun', 'yeu_4135287,ethanhxuan,say,saohanquoc', NULL, NULL, NULL, NULL, NULL, NULL),
(104, 'Hà Thanh Duyên', 'Nữ', '2002-11-03', 'Anglelovecute', '2603112002', NULL, 'bocapbachduonh679@gmail.com', 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(106, 'Mỹ Hạnh', 'Nữ', '2002-08-10', 'Hanhsarah', '10082002', NULL, 'Hanhdang913@gmail.com', 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(107, 'Trần Lan Anh', 'Nữ', '2005-01-06', 'Lanhcute0601', 'seyoonbaekyeonbts06012005', '06012005', 'duan.lanh6105@gmail.com', 17000, '#Lanh', '', NULL, NULL, NULL, NULL, NULL, NULL),
(108, 'Nguyễn Văn khánh', 'Nam', '2003-08-31', 'nguyenvankhanh.ceo', '01652434053333', NULL, 'khanhhy200@gmail.com', 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(109, 'Nguyễn Ngọc Thúy', 'Nữ', '2004-02-20', 'ngocthuy187', 'ngocthuy187', NULL, 'condidien1003@gmail.com', 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(110, 'Lê Thị Hiền', 'Nữ', '2002-07-30', 'LeHien', '30072002', '30072002', 'lehien300702@gmail.com', 50, 'Nấm', 'buonvl,sadlove', NULL, NULL, NULL, NULL, NULL, NULL),
(111, 'Đinh Quỳnh Liên', 'Nữ', '2018-05-02', 'Dinhquynhlien', '1234567890', '1234567891', 'Dinhquynhlien0209@gmail.com', 17150, 'Liên', 'say', NULL, NULL, NULL, NULL, NULL, NULL),
(114, 'Phan Thị Kiều Mơ', 'Nữ', '2004-05-06', 'phankieumo', '06052004phanthikieumo', '1627964652', 'kieumo147@gmail.com', 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(122, 'Nguyễn Ngọc Linh', 'Nữ', '2003-09-21', 'benyxingdep', 'Benyxingdep2109', NULL, 'ngoclinh.ntnln@gmail.com', 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(123, 'Trần Hà Anh', 'Nữ', '1999-11-01', 'Tranhaanhh', 'haanhh', NULL, 'tranhongthai260178@gmail.com', 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(124, 'Lê Võ Kim Linh', 'Nữ', '2017-10-08', 'Heochimtee810', 'heochimtee810', '0907327247', 'kimlinh2k19@gmail.com', 7500, 'Hêo', '1phut_7929766,yeu', NULL, '6400205531319', '0', 'Lê Đình Hùng', 'Agribank', 'Gia Định - TPHCM'),
(125, 'Võ Ngọc Minh Thư', 'Nữ', '2000-08-17', 'Thu', 'conchimnon3333', NULL, 'thuminhvo@icloud.com', 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(126, 'Nguyễn Việt Anh', 'Nam', '1970-01-01', 'ngvanh', 'vietanh1205', NULL, 'ngvanh2003@gmail.com', 1000, '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(130, 'Trần An Hạ', 'Nữ', '2004-12-10', 'trananha', '151020042k4', NULL, 'banhbeovodung15102004@gmail.com', 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(131, 'Đỗ Phương Thảo', 'Nữ', '2001-12-19', 'trthdea123', 'thanhhyundai08@gmail.com', '01020300', 'thanhhyundai08@gmail.com', 150, 'Nem', '', NULL, NULL, NULL, NULL, NULL, NULL),
(132, 'nguyễn phương an', 'Nữ', '1970-01-01', 'phuongan', '20012003', NULL, 'land20975@gmail.com', 5000, '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(134, 'Ánh Nguyệt', 'Nữ', '2003-10-15', 'Nguyetpii', '20092003', NULL, 'Anhnguyet15102003@gmail.com', 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(135, 'Nguyễn Lê Kim Ngân', 'Nữ', '2017-03-17', 'bechuoi.99', 'kimnganhoquangtung', NULL, 'chuoicute.2k17@gmail.com', 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(138, 'Hà Ánh', 'Nữ', '1999-01-09', 'hanh692002', 'ha anh', NULL, 'hanh692002@gmail.com', 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(139, 'Nguyễn Hoàng Khương', 'Nam', '1993-09-13', 'Hoangkun93', 'khuongkyo93@@', NULL, 'kunnguyen193@gmail.com', 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(141, 'Nguyễn Tân Thành', 'Nam', '2000-02-26', 'iimbynn', 'ngtthanh2000k', NULL, 'Mishupconneq@gmail.com', 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(142, 'Thảo Anh', 'Nữ', '2005-07-24', 'miee247', 'anhnt24070811*', '24070811', 'nguyenthaoanh2k5@gmail.com', 0, 'Mie', 'Sttngan_1120958,blogcuaban,viet_9758669,mua,ethanhxuan,sadlove', NULL, '104000888275', '9704151522799379', 'Nguyễn Tuyết Hoa', 'Vietinbank', 'Pleiku - Gia Lai'),
(143, 'Phùng Hải Anh', 'Nam', '2001-05-14', 'Haianh2k1', 'Anhlaso3', NULL, 'Abcanhlam@gmail.com', 100, '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(144, 'Lê Trương Thành', 'Nam', '2004-05-03', 'rinnrinn22', 'bienbienbien', NULL, 'letruongthanh030504@icloud.com', 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(147, 'Trương Gia Huy', 'Nam', '2004-04-27', 'huytr159', '06092004', '06092004', 'huytr274@gmail.com', 400, 'Yu', 'kingquotes_590064,deeplove_1683934,ethanhxuan', NULL, NULL, NULL, NULL, NULL, NULL),
(148, 'Nguyễn Dương', 'Nam', '1970-01-01', 'nguyentruong3b', 'Nguyentruong7a5', NULL, 'nguyentruong3b@gmail.com', 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(149, 'Phạm Thúy Vy', 'Nữ', '2005-08-13', 'minpor.', 'mmgtcttb97', NULL, 'haothientop2648@gmail.com', 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(150, 'Nguyễn Kim Ngân', 'Nữ', '2003-12-27', 'kimngan03ys', 'kimngan123', NULL, 'kimngan03yn@gmail.com', 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(151, 'Mai Thị Mai Anh', 'Nữ', '2002-10-16', 'maianh2002', '16102002', NULL, 'vuthily1610200@gmail.com', 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(152, 'Nguyễn Phạm Quốc Đạt', 'Nam', '1991-08-02', 'kingringdragon', 'Kingring', NULL, 'nhokken02082005@gmail.com', 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(153, 'Hồ Trung Thành', 'Nam', '2002-12-15', 'Marcus', 'thanhdezet', NULL, 'Clone123@gmail.com', 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(154, 'Thái Lê Thu Ngân', 'Nữ', '1998-12-26', 'ngan2612', 'bestrong', NULL, 'nganthai447@gmail.com', 0, 'Py', '', NULL, NULL, NULL, NULL, NULL, NULL),
(155, 'Đức', 'Nam', '2018-05-08', 'Duc4399', 'duckhanhk7tt', NULL, 'Duc03072003@gmail.com', 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(156, 'Nguyễn Văn Tuấn Vũ', 'Nam', '2001-11-19', 'xekodzl', 'tuanvu098', '2508', 'namle2k1namle@gmail.com', 10000, 'Vũ', 'say', NULL, NULL, NULL, NULL, NULL, NULL),
(158, 'Trực', 'Nam', '2003-04-06', 'Deocute06042003', 'vothanhtruc', '01289822604', 'Lop910khanhvan.ntk@gmail.com', 3100, 'Dẹo', 'say', NULL, NULL, NULL, NULL, NULL, NULL),
(159, 'Khương Y Như', 'Nữ', '2004-06-17', 'kyn176', '18062207', NULL, 'babycute2407@gmail.com', 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(162, 'Hoàng Kiều Trang', 'Nữ', '1999-12-26', 'Changxinhgai12', 'tt6344950@gmail.com', NULL, 'tt6344950@gmail.com', 0, 'Chang', 'say', NULL, NULL, NULL, NULL, NULL, NULL),
(188, 'Nguyễn Khánh Thư', 'Nữ', '2004-07-08', 'nguyenkhanhthu', 'crushdangyeu', NULL, 'nguyenkhanhthu2004@gmail.com', 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(189, 'Nguyễn Văn Tài', 'Nam', '1998-07-10', 'kiuchoibe', 'taikuteyh', '824444', 'kiuchoibe@gmail.com', 0, 'Bác Tài', '', NULL, NULL, NULL, NULL, NULL, NULL),
(190, 'Thảo', 'Nữ', '2004-10-14', 'thao1410', 'thaocute', NULL, 'thaodthw14101208@gmail.com', 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(191, 'Nguyễn Khánh Linh', 'Nữ', '2004-04-07', 'tglinh2174', '20102004', NULL, 'klinht14@gmail.com', 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(192, 'Hy An', 'Nữ', '2018-05-08', 'Hyan1404', 'hyanbic140404', NULL, 'Bicbicc@gmail.com', 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(193, 'Bùi Thị Hải Yến', 'Nữ', '2000-12-25', 'yenemm', 'yencoi', '25122000', 'yeuanhvaicut@gmail.com', 0, 'Lõm', 'ethanhxuan', NULL, '0341006833579', '9704366807178068015', 'BUI VAN HAI', 'Vietcombank ', 'Hải Dương '),
(194, 'Nguyễn Minh Thu', 'Nữ', '2004-03-05', 'eyall', '008009', NULL, 'thunguyenminh352004@gmail.com', 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL),
(198, 'Mai Thu Trà', 'Nữ', '2002-12-17', 'mtt17122002', 'mtt1712', '17122002', 'thutra1712@gmail.com', 0, 'Nắng', '', 1, NULL, NULL, NULL, NULL, NULL),
(199, 'Hồ Trung Thành', 'Nam', '2002-12-15', 'Hotrungthanhdz', '15122002a', '1512', 'hotrungthanh02@gmail.com', 14700, 'Marcus', '', 1, '5223205129908', '0', 'HO TRUNG THANH', 'Agribank', 'Ea Knop - Dak Lak'),
(200, 'Nguyễn Thị Cẩm Dung', 'Nữ', '2003-06-08', 'Camdungdung', 'Nguyenthicamdung06082004@gmail.com', '08062004', 'Nguyenthicamdung06082004@gmail.com', 0, 'Vani', '', 1, NULL, NULL, NULL, NULL, NULL),
(201, 'Bạch Dương', 'Nữ', '2003-03-28', 'Min2803', '12345678900', '2930', 'Nguyenhatu@gmail.com', 5700, 'Min', 'sadlove', 1, NULL, NULL, NULL, NULL, NULL),
(202, 'Nguyễn Thị Cẩm Dung', 'Nữ', '2003-06-08', 'camdung0806', 'camdung1100', '08062000', 'ntcamtu@gmail.com', 10000, 'Vani', 'sadlove', 1, NULL, NULL, NULL, NULL, NULL),
(203, 'Bùi Thanh Hoa', 'Nữ', '2001-12-28', 'hoa7604', 'hoa7604', '7604', 'mituotkute28@gmail.com', 10101, 'Thiên thần', 'tothichcau_5432446,viet_9758669,buonvl', 1, '19028999697669', '9704078878329560', 'Bùi Thế Truyền', 'Techcombank', 'Nhổn -Hà Nội'),
(204, 'Nguyễn Thị Ngọc', 'Nữ', '2002-03-19', 'Mitcute', 'Ngoccute', '19032002', 'Ngocmit002@gmail.com', 5100, 'Mít', 'xamxi_6062147,say,buonvl,ethanhxuan', 1, NULL, NULL, NULL, NULL, NULL),
(208, 'Trần Cao Khả Linh', 'Nữ', '2001-03-10', 'Camthanthien', 'chamcham1234', '2003', 'Babylovecat9@gmail.com', 18000, 'Carrot', 'viet_9758669,say', 1, NULL, NULL, NULL, NULL, NULL),
(210, 'Lê Thị Cẩm Dân', 'Nữ', '2001-06-10', 'ngocminh', 'ngocminh', '10062001', 'danle01012001@gmail.com', 7300, 'Ú', 'deeplove_1683934,buonvl,ethanhxuan', 1, '108867815936', '9704151511738115', 'Lê Thị Cẩm Dân', 'Vietinbank', 'Tây Hoà - Phú Yên'),
(211, 'Truong Ngoc Uyen Nhi', 'Nữ', '2002-04-15', 'imhanby', '0973173826', '01647265227', 'tungunhi1504@gmail.com', 0, '#Hanby', '', 1, NULL, NULL, NULL, NULL, NULL),
(212, 'Hoàng Thái', 'Nam', '2005-02-14', 'Hoangthai2005', '95175363171996', '95175363171996', 'thaiphap.paris@gmail.com', 25000, 'Binn', 'yeu', 1, NULL, NULL, NULL, NULL, NULL),
(213, 'Nguyễn Thị ánh Ngọc', 'Nữ', '2005-01-01', 'Anhngoc', '112005', '123456789', 'mykim487@gmail.com', 0, 'Mun', '', 1, NULL, NULL, NULL, NULL, NULL),
(214, 'Võ Nguyễn Trúc Quỳnh', 'Nữ', '2002-03-06', 'NYuuWindy', 'loveyoun', '6633', 'bequynh6633@gmail.com', 50, '#Yuu', 'buonvl', 1, NULL, NULL, NULL, NULL, NULL),
(215, 'Thái Linh', 'Nữ', '2003-12-24', 'Thailinhcute', 'trucanh241203', '01686543054', 'Nguoitaotaikhoan147@gmail.com', 0, 'Boon', '', 1, NULL, NULL, NULL, NULL, NULL),
(216, 'Trần Xuân Lộc', 'Nam', '2000-06-08', 'ken.ken.az123', 'tranxuanloc862000', '01683114175', 'kantranloc123@gmail.com', 8250, 'Ken', 'kingquotes_590064,ethanhxuan', 1, '0110867302', '0', 'Trần Xuân Lộc', 'DONGABank', 'Lê Văn Việt- Hồ Chí Minh'),
(217, 'Hà Hà', 'Nữ', '2003-06-02', 'nhymdz102', 'thuha2603', '1', 'nhimha80@gmail.com', 0, 'Nhým', 'blogcuaban', 1, NULL, NULL, NULL, NULL, NULL),
(218, 'Nguyễn Trung Đức', 'Nam', '1992-09-05', 'nongdan9x', 'trungduc@123', '050992', 'chplaycard@gmail.com', 0, 'Fine', '', 1, NULL, NULL, NULL, NULL, NULL),
(220, 'Truong Van Dang', 'Khác', '2013-02-05', 'himofficial.infoceo', '01887855217Reg', '01887855217', 'himofficial.infoceo@gmail.com', 0, 'kensieudz', 'Him_1212386,CanhCutCorp_8313069,StayHigh_8605376,Trash_3730792,DeepCrush_1249406', 1, NULL, NULL, NULL, NULL, NULL),
(221, 'Nguyễn Ngọc Thư', 'Nữ', '2004-08-05', 'Chinchimte', '0165', '01655458276', 'Ngocthoi0508@gmail.com', 0, 'Chin', '', 1, NULL, NULL, NULL, NULL, NULL),
(222, 'Nguyễn Ngọc Thư', 'Nữ', '2004-08-05', 'Chinchimteo', 'chin', '01655458276', 'Comnguoi58@gmail.com', 0, 'Chin', '', 1, NULL, NULL, NULL, NULL, NULL),
(223, 'Tran Minh Tien', 'Khác', '1995-12-01', 'social8', 'tien@social8.asia', '123456', 'tien@social8.asia', 0, 'Mup', '', 1, NULL, NULL, NULL, NULL, NULL),
(224, 'éo biết', 'Nam', '1999-11-11', 'JapanAntiVirus', '1234', '123456', 'abc@gmail.com', 0, 'xxx', '', 1, NULL, NULL, NULL, NULL, NULL),
(225, 'Hannguyen', 'Nam', '2018-05-08', 'Troanh1990', '10121990', '111111', 'Trotro11223344@gmail.com', 0, 'Hannguyen', '', 1, NULL, NULL, NULL, NULL, NULL),
(226, 'Nguyễn Kim Ngân', 'Nữ', '2003-12-27', 'kimngan123', 'kimngan123', '123456789', 'ngkngan03@gmail.com', 0, 'Nie', '', 1, NULL, NULL, NULL, NULL, NULL),
(227, 'Phương Thùy', 'Nữ', '2003-04-29', 'imphuongthuy', 'imthienhy123', '0972025161', 'Phuongthuy7723@gmail.com', 17000, 'Hyy', 'Moclan_5743338,ethanhxuan', 1, NULL, NULL, NULL, NULL, NULL),
(228, 'Phạm Ngọc Nhi', 'Khác', '2003-05-02', 'Phamngocnhi', 'Phamngocnhii9802@gmail.com', '01228180064', 'Phamngocnhii9802@gmail.com', 0, 'Mũn', '', 1, NULL, NULL, NULL, NULL, NULL),
(229, 'hương mây', 'Nữ', '2004-03-04', 'huongmay', 'Vothixuanmai0403@gmail.com', '432005', 'vothixuanmai0403@gmail.com', 0, 'mây', '', 1, NULL, NULL, NULL, NULL, NULL),
(230, 'Trần minh phương', 'Nữ', '2004-09-22', 'minhphuong', 'mumcute', '22092004', 'ngotrangvms@gmail.com', 50000, 'mũm', '1phut_7929766,yeu', 1, NULL, NULL, NULL, NULL, NULL),
(232, 'Thanh Kim', 'Nữ', '1945-06-15', 'haidang2323', '1234561', '1234562', 'nhutminh4242@gmail.com', 0, 'Kim', 'CanhCutCorp_8313069,DeepCrush_1249406', 1, NULL, NULL, NULL, NULL, NULL),
(233, 'Maii Anhh', 'Nữ', '2004-05-07', 'maianhq', 'maianh', '12345678', 'quachmaianh757@icloud.com', 0, 'Yukii', '', 1, NULL, NULL, NULL, NULL, NULL),
(234, 'Huong mây', 'Nữ', '2004-03-04', 'Huongmay', 'Vothixuanmai0403@gmail.com', '432005', 'Vothixuanmai0403@gmail.com', 0, 'Mây', '', 1, NULL, NULL, NULL, NULL, NULL),
(235, 'LÊ ĐÌNH TRƯỜNG', 'Nam', '2001-08-24', 'abucute123', '24082001abc', '24082001', 'to04lop10a2@gmail.com', 6150, 'Abu', '', 1, NULL, NULL, NULL, NULL, NULL),
(236, 'Lê Tuấn Khang', 'Nam', '2018-02-03', 'khangbacho1', '123456.1', '347348', 'khangbacho4@gmail.com', 3300, 'Khang Ba Chó', '', 1, '0491000125175', '0', 'Dinh Nguyen Ha', 'Vietcombank', 'Hồ Chí Minh'),
(237, 'Phan Hoài Linh', 'Nam', '2000-06-02', 'Linhkenlly', 'linhheo1', '020620', 'Hoailinhmd2@gmail.com', 0, 'Slay', '', 1, NULL, NULL, NULL, NULL, NULL),
(238, 'Huong mây', 'Nữ', '2004-03-04', 'Huongmay123', 'vothixuanmai', '432005', 'Dothixuanlan1111975@gmail.com', 20000, 'Mây', '_4135287', 1, NULL, NULL, NULL, NULL, NULL),
(239, 'Đặng Thu Hiền', 'Nữ', '2003-04-03', 'thuhien2003', '28041996', '03042003', 'dangthithuhien2003@gmail.com', 18000, 'Mun', 'thathinh', 1, NULL, NULL, NULL, NULL, NULL),
(240, 'Thu Hoài Thị Nguyễn', 'Nữ', '2004-06-16', 'Ryycute', 'thuhoaithinguyen', '16062004', 'Thuhoaithinguyen6@gmail.com', 0, 'Ryy', '', 1, NULL, NULL, NULL, NULL, NULL),
(241, 'Thu Hoài Thị Nguyễn', 'Nữ', '2004-06-16', 'Hoai123', 'hoaicute', '16062004', 'Ryycute1606@gmail.com', 0, 'Ryy', 'buonvl', 1, NULL, NULL, NULL, NULL, NULL),
(242, 'Bùi Mai Phương', 'Nữ', '2005-08-31', 'buimaiphuong', 'buimaiphuong318', '123456', 'thienbinhcute49@gmail.com', 0, 'Nắng', '', 1, NULL, NULL, NULL, NULL, NULL),
(243, 'Diệp Khánh Xuân', 'Nữ', '2002-01-02', 'Manman123', '123456789', '02012002', 'Hoangnutuquyen@gmail.com', 0, 'Mẫn', '', 1, NULL, NULL, NULL, NULL, NULL),
(244, 'Nguyễn Thị Ngọc Ánh', 'Nữ', '2001-04-20', 'Anna2612', 'ngocanh', '261201', 'ngocanhsociu20042001@gmail.com', 2150, 'Thỏ', '_4135287,tothichcau_5432446,viet_9758669,blogcuaban', 1, NULL, NULL, NULL, NULL, NULL),
(245, 'Ann Meo', 'Nữ', '2003-11-03', 'AnnMeo69.vn', 'meo999', '88889999', 'gov05337@lakqs.com', 0, 'Mây', '', 1, NULL, NULL, NULL, NULL, NULL),
(246, 'Chiếm Đức', 'Nam', '1998-11-27', 'chiemduc26', 'DJchiemduc2001', '123123', 'chiemduc26@gmail.com', 0, 'Chiếm Đức', '', 1, NULL, NULL, NULL, NULL, NULL),
(247, 'Bảo Châu', 'Khác', '2003-10-20', 'Boiboi2010', 'Lololo123', '0922023812', 'Lobe1459@gmail.com', 0, 'Bối', '', 1, NULL, NULL, NULL, NULL, NULL),
(249, 'Thu Phương', 'Nam', '1994-11-16', 'thuphuong16111994', 'thuphuong16111994', '16111994', 'thuphuong16111994@gmail.com', 0, 'thuphuong16111994', '', 1, NULL, NULL, NULL, NULL, NULL),
(250, 'Nguyễn Hồng Quân', 'Nam', '2003-01-21', 'quanhong3113', '12345678', '12345678', 'mai.nguyenngoc.2112003@gmail.com', 0, 'Quan Nguyen', '', 1, NULL, NULL, NULL, NULL, NULL),
(251, 'Hà Hà', 'Nữ', '2003-06-02', 'Thuha2602', 'thuha2603', '020603', 'Nhimha80@gmail.com', 2000, 'Nhým', 'blogcuaban', 1, NULL, NULL, NULL, NULL, NULL),
(252, 'Thủy Nguyễn', 'Nữ', '2001-10-22', 'ThuySibunny', 'thuy2001', '22102001', 'thuysibunny@gmail.com', 0, 'Choi', '', 1, NULL, NULL, NULL, NULL, NULL),
(253, 'Hy An', 'Nữ', '2018-04-04', 'Hyanbic', 'hyanbic140404', '14042004', 'Hyanbic@gmail.com', 0, 'Bíc', '', 1, NULL, NULL, NULL, NULL, NULL),
(254, 'Kiều Thị Hoài Linh', 'Nữ', '2002-08-28', 'kieuthihoailinh', 'minn', '280802', 'kieuthihoailinh2309@gmail.com', 15000, 'Minn', 'Moclan_5743338,ethanhxuan', 1, NULL, NULL, NULL, NULL, NULL),
(255, 'Hy An', 'Nữ', '2018-04-14', 'Hyanbic140404', 'hyanbic14042004', '14042004', 'Hyanbic14@gmail.com', 50, 'Bíc', 'sadlove', 1, NULL, NULL, NULL, NULL, NULL),
(256, 'Nguyễn Trần Phương Thanh', 'Nữ', '2005-02-21', 'Hi2102', '123456789', '062865479', 'xuan08783@gmail.com', 0, 'Hí', 'ethanhxuan', 1, NULL, NULL, NULL, NULL, NULL),
(257, 'Phạm Đồng', 'Nam', '2006-01-18', 'Crisdevil', 'trangiu2602', '26022006', 'lovetrangiu2602@gmail.com', 0, 'Nhok Trùm', '', 1, NULL, NULL, NULL, NULL, NULL),
(258, 'Phương Thùy', 'Nữ', '2000-09-20', 'Phuongthuy', 'anhthieuuy', '200920', 'Dlmthuy2092000vvk@gmail.com', 50, 'Thùy', 'viet_9758669', 1, NULL, NULL, NULL, NULL, NULL),
(259, 'Lê Tuấn Kiệt', 'Nam', '2002-11-18', 'Kit16', '2011', '021118', 'letuankiet2k2@gmail.com', 150, 'Kịt', 'tothichcau_5432446,viet_9758669', 1, NULL, NULL, NULL, NULL, NULL),
(260, 'Nguyễn Hoàng Ngân Hà', 'Nữ', '2001-09-11', 'Mimxtp', 'qtp117', '117119', 'Hanthienbang0608@gmail.com', 5300, 'Mĩm', 'tothichcau_5432446,viet_9758669', 1, NULL, NULL, NULL, NULL, NULL),
(261, 'Trần Thị Huyền', 'Nữ', '2003-08-09', 'thihuyentran', '09082003', '0989162171', 'trthihuyen983@gmail.com', 0, 'Muối', '', 1, NULL, NULL, NULL, NULL, NULL),
(262, 'Trần Bích Tâm', 'Nữ', '1997-09-21', 'Bichtam21', 'dnhd08', '08042002', 'Tammoon045@gmail.com', 0, 'Moon', '', 1, NULL, NULL, NULL, NULL, NULL),
(263, 'Ann Meo', 'Nữ', '2018-04-22', 'Maymay', 'sdsd444', '88889999', 'nah04369@cjpeg.com', 0, 'Mây', '', 1, NULL, NULL, NULL, NULL, NULL),
(264, 'Ann Meo', 'Nữ', '2018-04-29', 'Annann', 'sdsd444', '458923', 'mmb01791@lakqs.com', 0, 'Mây', '', 1, NULL, NULL, NULL, NULL, NULL),
(265, 'Sky Uyên', 'Nữ', '2000-02-28', 'skyuyen', 'myuyen2820', '280200', 'myuyen2820@gmail.com', 25000, 'Sky', 'tothichcau_5432446,Moclan_5743338,viet_9758669', 1, '6905205063481', '9704050767964625', 'Nguyễn Huỳnh Mỹ Uyên', 'Agribank', 'Gò Công Tây-Tiền Giang'),
(266, 'Nguyễn Thu Huyền', 'Nữ', '2003-10-09', 'Huyencute0910', 'nguyenthuhuyen', '09102003', 'nguyenthuhuyen537@gmail.com', 25000, 'Huỳn', 'tothichcau_5432446,viet_9758669', 1, NULL, NULL, NULL, NULL, NULL),
(267, 'Nguyễn Thị Huyền Trang', 'Nữ', '2018-05-08', 'Xucute', 'ntht1510', '1234567', 'trangdien911@gmail.com', 0, 'Xù', '', 1, NULL, NULL, NULL, NULL, NULL),
(268, 'Ann Meo', 'Nữ', '2018-05-08', 'Kimkim', 'sdsd444', '123456', 'gva10356@molms.com', 0, 'Mây', '', 1, NULL, NULL, NULL, NULL, NULL),
(269, 'Ann Meo', 'Nữ', '2018-05-08', 'Muoimuoi', 'sdsd444', '123456', 'cey81969@molms.com', 0, 'Mây', '', 1, NULL, NULL, NULL, NULL, NULL),
(270, 'Sky Uyên', 'Nữ', '2000-02-28', 'Skyuyen', 'myuyen2820', '280200', 'skyuyen1994@gmail.com', 25000, 'Sky', 'tothichcau_5432446,Moclan_5743338,viet_9758669', 1, '6905205063481', '9704050767964625', 'Nguyễn Huỳnh Mỹ Uyên', 'Agribank', 'Gò Công Tây-Tiền Giang'),
(271, 'Nguyễn Thị Huyền Trang', 'Nữ', '2003-10-15', 'trangcute', 'trang1510', '15102003', 'trangxucute1510@gmail.com', 0, 'Xù', '', 1, NULL, NULL, NULL, NULL, NULL),
(272, 'Hương Mai', 'Nữ', '2000-11-04', '01636763093', 'chenhvenh', '04112000', 'huongmaihd12d@gmail.com', 0, 'MK', '', 1, NULL, NULL, NULL, NULL, NULL),
(273, 'Hoàng Hạ Vân', 'Nữ', '2001-12-28', 'hoanghavan', '0946455297.', '123456', 'hoangthithem861@gmail.com', 25000, 'Hĩm', 'tothichcau_5432446,viet_9758669', 1, NULL, NULL, NULL, NULL, NULL),
(274, 'My Vũ', 'Nữ', '2005-05-08', 'May2005', 'chamcahm', '123456', 'Kimthu6a@gmail.com', 0, 'May', '', 1, NULL, NULL, NULL, NULL, NULL),
(275, 'Nguyễn Lê Hoài Thương', 'Nữ', '2001-05-07', 'nlhthuong7501', 'hoaithuong', '07052001', 'thuongnguyen7501@gmail.com', 5100, 'Thương', 'tothichcau_5432446,viet_9758669', 1, NULL, NULL, NULL, NULL, NULL),
(276, 'Thư Thái Hoàng', 'Nữ', '2001-05-20', 'Jinlion', 'hoangthai', '2052001', 'jinlion2052001@gmail.com', 25000, 'Jin', 'tothichcau_5432446,viet_9758669', 1, '6311000063862', '9704180088520515', 'Hoàng Thị Thư Thái', 'BIDV', 'Buôn mê thuột'),
(277, 'TRẦN VIỆT HOÀNG', 'Nam', '1999-02-28', 'KIUOFFICIAL', '28022006', '28022006', 'hoangofficial@cars2.club', 0, 'MED', '', 1, NULL, NULL, NULL, NULL, NULL),
(278, 'Lê Tômm', 'Nữ', '2002-10-23', 'letomm02', 'letomm02', '23102002', 'samthimaile568@gmail.com', 0, 'Tômm', '', 1, NULL, NULL, NULL, NULL, NULL),
(279, 'Đoàn Văn Hai', 'Nam', '2018-05-08', 'Doanvanhai', 'Haidz1999', '121199', 'Doanhaidz1999@gmail.com', 0, 'Hai', '', 1, NULL, NULL, NULL, NULL, NULL),
(280, 'Nguyễn Thị Lan Anh', 'Nữ', '1998-12-27', 'Besau2712', '2712', '271204', 'anhkhongconyeuem444@gmail.com', 0, 'Sâu', '', 1, NULL, NULL, NULL, NULL, NULL),
(281, 'Hoàng Na', 'Nữ', '2001-09-13', 'Hoangna139', 'hoangthianhduong', '13092004', 'Sunshine139ad@gmail.com', 0, 'Hoàng Na', '', 1, NULL, NULL, NULL, NULL, NULL),
(282, 'nguyen thi phuong linh', 'Nữ', '2002-12-27', 'goblin', 'linh4102', '4012001', 'linh90465@gmail.com', 25000, 'Goblin', 'tothichcau_5432446,viet_9758669', 1, NULL, NULL, NULL, NULL, NULL),
(283, 'Ho Hoang Ha Tien', 'Nữ', '2004-01-29', 'HaTien', 'htien29', '342004', 'hatien29@outlook.com.vn', 0, 'Mập', '', 1, NULL, NULL, NULL, NULL, NULL),
(284, 'Kim Đann', 'Nữ', '2004-05-02', 'kimdannxjnhdep', '01698370546', '12012004', 'minhthuchimteo@gmail.com', 100, 'Mapdjt', 'kingquotes_590064,deeplove_1683934', 1, NULL, NULL, NULL, NULL, NULL),
(285, 'Nguyễn Ngọc Hà', 'Nữ', '2001-06-21', 'nguyenha', 'nguyenha', '27071975', 'julcongtu@gmail.com', 50, 'Meo', 'viet_9758669', 1, NULL, NULL, NULL, NULL, NULL),
(286, 'Hệ Thống 24H', 'Khác', '2018-05-01', 'hethong24h.net', 'taikuteyh', '824444', 'Admin@hethong24h.net', 286600, '24H NET', '', 3, '19032874617016', '0', 'Nguyễn Văn Tài', 'Techcombank', 'Hà Tây - Hà Nội'),
(287, 'Đỗ Phượng', 'Nữ', '2002-10-15', 'himheo', '123456789', '15102002', 'phuongdo151002@gmail.com', 5100, 'Hỉm', 'tothichcau_5432446,viet_9758669', 1, NULL, NULL, NULL, NULL, NULL),
(288, 'Nguyễn Thùy Vy', 'Nữ', '1998-05-25', 'Nguyenthithuyvy', 'Nguyenthithuyvy', '25051410', 'Nguyenthithuyvy8417@gmail.com', 5000, 'Zu', 'buonvl', 1, NULL, NULL, NULL, NULL, NULL),
(289, 'Quyền', 'Nam', '2017-10-11', 'popo', '1', '1', 'aquyen23@gmail.com', 0, 'no', '', 1, '69696969696969', '96969696969696', 'Quyền đzai vl', 'Viettinbank', 'Sao hỏa'),
(290, 'Lê Thị Khánh Ly', 'Nữ', '2002-04-05', 'Khanhly', '12345679', '12345679', 'lkhanhly1507@gmail.com', 0, 'Tẹt', '', 1, NULL, NULL, NULL, NULL, NULL),
(291, 'Vui', 'Nữ', '2001-05-08', 'Lethinhuy', 'nguyendongho1', '01654651453', 'Lethinhuy097@gmail.com', 0, 'Chiều', '', 1, NULL, NULL, NULL, NULL, NULL),
(292, 'Lê Xuân Hải', 'Nam', '1986-09-25', 'Huyetle1986', 'DanThan86', '389250', 'Logicvatchat@gmail.com', 0, 'Hải bạc', '', 1, NULL, NULL, NULL, NULL, NULL),
(293, 'duy', 'Nam', '2008-01-18', 'duy_2008', '1812008', '26101996', 'hoanxe12357@gmail.com', 0, 'tui', '', 1, NULL, NULL, NULL, NULL, NULL),
(294, 'Chu Dương', 'Nữ', '2005-06-25', 'lynnlynn', 'begzbooe2562005', '2562005', 'makinotukushi1234@gmail.com', 0, 'Lynn', 'imfine_855939', 1, NULL, NULL, NULL, NULL, NULL),
(295, 'Cao Thị Phương Anh', 'Nữ', '2002-06-13', 'caophuonganh_93', 'Suga090390', '01659478856', 'thientiphuonganh@gmail.com', 0, 'Phanh', '', 1, NULL, NULL, NULL, NULL, NULL),
(296, 'Liêu Mạn', 'Nữ', '1997-06-09', 'LieuMan', 'ngocnam155', '969812742', 'Lengoc090697@gmail.com', 0, 'Mạn tỷ', '', 1, NULL, NULL, NULL, NULL, NULL),
(297, 'Lê Văn Chí Linh', 'Nam', '2001-12-22', 'Linhle', '2001', '122001', 'linhle5200@gmail.com', 0, 'Linh Xe Ôm', '', 1, NULL, NULL, NULL, NULL, NULL),
(298, 'Phạm Ngọc Nhi', 'Nữ', '2003-05-02', 'Ngocnhi', '02052003', '14112004', 'Ngocnhi02052003@gmail.com', 0, 'Mũn', 'Alone_1054436', 1, NULL, NULL, NULL, NULL, NULL),
(299, 'Thảo Thảo', 'Nữ', '2005-10-14', 'suricute', 'suricute', '141005', 'fanpagefakeloves@gmail.com', 10000, 'Suri', 'droll_2659058,saohanquoc', 1, NULL, NULL, NULL, NULL, NULL),
(300, 'Nỗi lòng con trai', 'Nam', '2002-01-16', 'Tuanlove3379a', 'nhuthao123123zz', '01222647661', 'junpham20082004@gmail.com', 0, 'Nỗi lòng con trai', '', 1, NULL, NULL, NULL, NULL, NULL),
(301, 'Vũ Khánh Vân', 'Nữ', '2015-10-09', 'Vukhanhvan', '1234', '123456', 'Vukhanhvan041208@gmail.com', 0, 'Chó đốm', 'DeepCrush_1249406', 1, NULL, NULL, NULL, NULL, NULL),
(302, 'Trần Thị Huyền', 'Nữ', '2003-08-09', 'Thihuyenntran9', '2804', '09082003', 'thihuyennt983@gmail.com', 50, 'Muối', 'saohanquoc', 1, NULL, NULL, NULL, NULL, NULL),
(303, 'Diệu Tử Yên', 'Nữ', '2004-12-25', 'Dieu_Tu_Yen', 'sherlockholmes', '25122004', 'Dieutuyen2512@gmail.com', 0, 'YêN', '', 1, NULL, NULL, NULL, NULL, NULL),
(304, 'Đoàn Trung Kiên', 'Nam', '2004-09-26', 'kiendoan123', 'kiendoan123', '123456', 'kiendoan656@gmail.com', 0, 'Pin Docle', '1phut_7929766', 1, NULL, NULL, NULL, NULL, NULL),
(305, 'Nguyễn Lê Quý', 'Nam', '2001-01-01', 'SayLove24h', 'yeulam', '1667562541', 'trickermegi@gmail.com', 0, 'Khói', '', 1, NULL, NULL, NULL, NULL, NULL),
(306, 'Kiều Trinh', 'Nữ', '2005-05-10', 'Trinh', 'abcd', '1052005', 'lantrinhv3@gmail.com', 0, 'Trinh', '', 1, NULL, NULL, NULL, NULL, NULL),
(307, 'Diễm Hương', 'Nữ', '2018-03-24', 'Huongg', 'sahaha', '564893', 'huongnguyen243@gmail.com', 0, 'Uln', 'thathinh', 1, NULL, NULL, NULL, NULL, NULL),
(308, 'Hoàng Hương Mơ', 'Nữ', '2003-05-08', 'Hoanghuongmo', '18092003', '0978549074', 'huongmoh54@gmail.com', 30000, 'Vic', 'thathinh', 1, NULL, NULL, NULL, NULL, NULL),
(309, 'Nguyễn Nhân', 'Nam', '2001-07-02', 'Nhan0207arb', 'nhan0207ag27', '159236', 'Nhan0207arb@gmail.com', 4000, 'Nhânn', 'buonvl', 1, NULL, NULL, NULL, NULL, NULL),
(310, 'Phạm Vy Vy', 'Nữ', '1997-02-12', 'Bubu.', '1234567h', '123456', 'Ht475334@gmail.com', 0, 'Bu', '', 1, NULL, NULL, NULL, NULL, NULL),
(311, 'Phạm Đắc Điệp', 'Nam', '2000-12-20', 'Anhdiep', '2212', '0869399585', 'Phamdiep101217@gmail.com', 0, 'Phạm Đắc Điệp', '', 1, NULL, NULL, NULL, NULL, NULL),
(312, 'Nguyễn thanh tùng', 'Nam', '2003-07-17', 'Tungdz2003', '0944571818', '0915637498', 'Tungminecarft@gmail.com', 0, 'Tủn', '1phut_7929766', 1, NULL, NULL, NULL, NULL, NULL),
(313, 'Ni Nguyễn', 'Nữ', '2004-10-12', 'nicuto', 'nicuto', '000000', 'quangtho205@gmail.com', 0, 'Nicuto', '', 1, NULL, NULL, NULL, NULL, NULL),
(314, 'Lê Quyết', 'Nam', '2018-05-08', 'QuyetLe', '10071997', '10071997', 'Quyetleviet@gmail.com', 350, 'Best thính :v', '', 1, NULL, NULL, NULL, NULL, NULL),
(315, 'tôi .là ai', 'Nam', '2018-05-02', 'nguyennhung', 'thangvsnhung', '135247', 'phamdoquynhhuong06@email.com', 0, 'foreve you and i', '', 1, NULL, NULL, NULL, NULL, NULL),
(316, 'Hương Bống', 'Nữ', '2018-05-08', 'Nguyenthihuong', '1234567890huong', '123456', 'Nguyenhuongthu@gmail.com', 0, 'Lương Tĩnh Khang', '', 1, NULL, NULL, NULL, NULL, NULL),
(317, 'Hoài Nam', 'Nam', '2002-10-06', 'Nguyennamiyy', 'Nam123456789', '101215', 'Nguyennamiyy30@gmail.Com', 0, 'Nam', '', 1, NULL, NULL, NULL, NULL, NULL),
(318, 'Thanh -thảo', 'Nữ', '2017-09-25', '2591005', 'thao123', '012345', 'Nhuthanhthao123@gmail.com', 0, 'Midu', '', 1, NULL, NULL, NULL, NULL, NULL),
(319, 'Bảo Mon Nhoi', 'Nam', '2005-10-14', 'baomon', 'bao205', '14102005', 'baomon@gmail.com', 0, 'MON', '1phut_7929766', 1, NULL, NULL, NULL, NULL, NULL),
(320, 'Nam Bùi', 'Nam', '2018-05-08', 'Namdz', '2004', '24012004', 'namly8951@gmail.com', 0, '♡Không~Cảm~Xúc♡', '1phut_7929766,DeepCrush_1249406', 1, NULL, NULL, NULL, NULL, NULL),
(321, 'Trịnh Hoài Nam', 'Nam', '2003-11-20', 'Nhocsua2011', 'namnamnam123.', '0918327023', 'namhoaixcvz@gmail.com', 0, 'Shin (Sữa)', '_4135287', 1, NULL, NULL, NULL, NULL, NULL),
(322, 'Tran Suel Bi', 'Nữ', '2004-07-28', 'Suelbi', 'goccuaru', '242112', 'anhy242112@gmail.com', 0, 'Bi', '', 1, NULL, NULL, NULL, NULL, NULL),
(323, 'Nguyễn Hoàng Ân Hy', 'Nữ', '2004-07-28', 'Tieuhy', 'goccuaru', '242112', 'Christina242112@yahoo.com', 0, 'Tiểu Hy', 'DeepCrush_1249406,ethanhxuan,sadlove', 1, NULL, NULL, NULL, NULL, NULL),
(324, 'Nhi NgỐ', 'Nữ', '2000-10-31', 'Nguyenthihanhnhi', 'HanhNhii', '01644524513', 'nhi760695@gmail.com', 0, 'Lúm', '', 1, NULL, NULL, NULL, NULL, NULL),
(325, 'Nguyễn Văn Bình', 'Nam', '2000-05-07', 'Binhdeptrai1906', 'maitoan1906', '19062000', 'nguyenbinhhhc12c5@gmail.com', 250, 'Đẹp Trai :v', '', 1, NULL, NULL, NULL, NULL, NULL),
(326, 'Đặng Anh Khoa', 'Nam', '2007-01-12', 'AnhKhoa', 'khoakhoa', '12012007', 'danganhkhoahotboy321@gmail.com', 0, 'Nhây man', '1phut_7929766,Alone_1054436,blogcuaban,CanhCutCorp_8313069,DeepCrush_1249406,droll_2659058', 1, NULL, NULL, NULL, NULL, NULL),
(327, 'Bùi Đức An', 'Nam', '2000-08-25', 'annhlnn', 'anbui123456789', '200719841986', 'tamquancmbk@gmail.com', 0, 'phải chăm chỉ', 'yeu_4135287', 1, NULL, NULL, NULL, NULL, NULL),
(328, 'mùa xuân khoe sắc', 'Nữ', '2006-09-08', 'sakura', 'anna', '123456', 'hobuudeptrai@gmail.com', 0, 'trâm anh', '', 1, NULL, NULL, NULL, NULL, NULL),
(329, 'Trịnh Hà Linh', 'Nữ', '2007-11-12', 'Trinhlinh', 'linh', '123456', 'Trinhlinh@gmail.com', 0, 'Linh cute', 'Alone_1054436', 1, NULL, NULL, NULL, NULL, NULL),
(330, 'Vũ Đặng Cao Anh', 'Nam', '1998-01-16', 'vudangcaoanh98', 'anhpro113', '160198', 'vudangcaoanh98@yahoo.com', 0, 'chú chó scooby doo', '', 1, NULL, NULL, NULL, NULL, NULL),
(331, 'Nguyễn AnhTuấn', 'Nam', '2005-12-16', 'MaiVanVu', '123456789aA', '123456789', 'NguyenVuMai456@gmail.com', 0, 'Vura Mai', '', 1, NULL, NULL, NULL, NULL, NULL),
(332, 'Nguyễn Tuấn Dũng', 'Nam', '2006-10-28', 'dungnt2006', 'BongBi0603', '28102006', 'dungnt@bibongnet.com', 0, 'Dungnt', '', 1, NULL, NULL, NULL, NULL, NULL),
(333, 'Trần Duy Hưng', 'Nam', '0000-00-00', 'datchamlqd', 'hung123456789', 'hungdepgai876', 'phuongbui.28011981@gmail.com', 0, 'Hưng Công Tử', '', 1, NULL, NULL, NULL, NULL, NULL),
(334, 'Dương Khánh Tùng', 'Nam', '2004-02-27', 'Tung2004', 'thathinh', '272004', 'duongkhanhtunghg@gmail.com', 0, 'Tùng/Anh', '', 1, NULL, NULL, NULL, NULL, NULL),
(335, 'Xin Chào', 'Nam', '2005-04-30', '0911337174', 'anhkiet80', '30042005', 'trananhkiet400@gmail.com', 0, 'Trần Kiệt', 'thathinh', 1, NULL, NULL, NULL, NULL, NULL),
(336, 'Phạm Ngọc Tuấn', 'Khác', '1998-09-22', 'tuantiensinh', 'phamthuan2407', '016627320522', 'Phamngoctuan022@gmail.com', 0, 'Dịch Vụ Facebook', '', 1, NULL, NULL, NULL, NULL, NULL),
(337, 'maiduyhiep', 'Nam', '2002-02-17', 'maiduyhiep', 'hiepmai17', '17022002', 'hiepmai17@gmai.com', 0, 'hiepmai', '', 1, NULL, NULL, NULL, NULL, NULL),
(338, 'My Nguyễn', 'Nữ', '2004-02-08', 'Lana_M', 'hieumypy1812004', '01652552183', 'hieumy08022004@gmail.com', 0, 'Lana', '', 1, NULL, NULL, NULL, NULL, NULL),
(339, 'Princess My', 'Nữ', '2007-03-21', 'Princess', 'khongcomatkhau', '213207', 'trinhly25091984@gmail.com', 0, 'My', '', 1, NULL, NULL, NULL, NULL, NULL),
(340, 'Nhật Minh Stellars', 'Nam', '2002-05-19', 'minhstellars2', '01216557475', '19052002', 'enn298k4@gmail.com', 0, ':P', '', 1, NULL, NULL, NULL, NULL, NULL),
(341, 'Lương Đức Thuận', 'Nam', '2003-06-25', 'Luongducthuam', 'thuan2562003', '25062003', 'Luongducthuam@gmail.com', 0, 'Thuận Lương Đức', '', 1, NULL, NULL, NULL, NULL, NULL),
(342, 'sisu ka', 'Nam', '1998-04-17', 'tranquangkhai', 'qqqkkk', '147258', 'khaitrandzahihi@gmail.com', 0, 'no six', '', 1, NULL, NULL, NULL, NULL, NULL),
(343, 'Ngoi Văn Thắng', 'Nữ', '2006-11-10', 'Ngovanthang', 'ngolinhchi', '10112006', 'ngocnguyen27489@gmail.com', 0, 'Thắng', '1phut_7929766,Alone_1054436,blogcuaban,buonvl,thathinh', 1, NULL, NULL, NULL, NULL, NULL),
(344, 'Trần Vy', 'Nữ', '2005-01-11', 'VyTran', 'Van1', '114689', 'Vancam@gmail.com', 0, 'Lâm', '', 1, NULL, NULL, NULL, NULL, NULL),
(345, 'Nguyễn Thị Thanh Trúc', 'Nữ', '1995-09-05', 'trucham0509', 'nguyenthithanhtruc', '06102000', 'trucham0509@gmail.com', 0, 'Trúc Hâm', '', 1, NULL, NULL, NULL, NULL, NULL),
(346, 'Vy Trần', 'Nữ', '2002-01-11', 'Tranvy', 'tranvy', '114689', 'Vanngu__@gmail.com', 0, 'Lâm', '', 1, NULL, NULL, NULL, NULL, NULL),
(347, 'Vy Trần', 'Nữ', '2002-01-11', 'Camvan', 'tranvy', '114689', 'Vannguy__@gmail.com', 0, 'Lâm', '', 1, NULL, NULL, NULL, NULL, NULL),
(348, 'Vy Trần', 'Nữ', '2002-01-11', 'Vannguyen', 'tranvy', '114689', 'Vancam1234@gmail.com', 0, 'Lâm', '', 1, NULL, NULL, NULL, NULL, NULL),
(349, 'Dũng Như Vũ', 'Nam', '2002-11-07', 'Vunhudung', 'dung', '07112002', 'Mylovethao01@gmail.com', 0, 'Trùm xe ôm', '', 1, NULL, NULL, NULL, NULL, NULL),
(350, 'Nguyễn Cẩm Ly', 'Nữ', '2000-10-21', '12345', 'nguyenly', '123456', 'nguyencamly2110207@gmail.com', 0, 'Lùn', '', 1, NULL, NULL, NULL, NULL, NULL),
(351, 'Từ Thiện Nhân', 'Nam', '2003-12-05', 'Tuthiennhan', 'tuthiennhan05122003', '051203', 'Tuthiennhan05122003@gmail.com', 0, 'Bánh ú', '', 1, NULL, NULL, NULL, NULL, NULL),
(352, 'nguyễn hiếy', 'Nam', '1995-06-20', 'hieu3s777', 'cocubu223', '20062003', 'nhieu01475@gmail.com', 0, 'cò', '', 1, NULL, NULL, NULL, NULL, NULL),
(353, 'Hà Thái Sơn', 'Nam', '1994-02-04', 'Hetthatroi', 'thanhnhan16', '17371994', 'Hathaison@gmail.com', 0, 'Sơn Sẹo', '', 1, NULL, NULL, NULL, NULL, NULL),
(354, 'Nguyễn văn quảng', 'Nam', '2004-07-09', 'quanghppn', '01213617968', '01633176292', 'qv09815@gmail.com', 0, 'Yêu đi đừng ngại', 'Vui24_278960,1phut_7929766,Alone_1054436,blogcuaban', 1, NULL, NULL, NULL, NULL, NULL),
(355, 'Vy Trần', 'Nữ', '2005-01-11', 'Nguyenvan', 'camvan', '114689', 'Nguyenvan123@gmail.com', 0, 'Lâm', '', 1, NULL, NULL, NULL, NULL, NULL),
(356, 'Nguyễn Thu Nguyệt', 'Nữ', '2003-09-02', 'sunvender', '02092003', '0209200302092003', 'thunguyetnguyen129@gmail.com', 0, 'Shii', '', 1, NULL, NULL, NULL, NULL, NULL),
(357, 'Phạm Thị Mai Anh', 'Nữ', '2005-10-28', 'napham', 'bameiu', '0995556721', 'quynhanhnguyendl2009@gmail.com', 0, 'Ế', '', 1, NULL, NULL, NULL, NULL, NULL),
(358, 'vinh nguyễn T', 'Nam', '2002-05-22', 'vinhpmh147741', '21082002', '123456', 'hieunguyenpmh@gmail.com', 0, 'vinhdz nQv', '', 1, NULL, NULL, NULL, NULL, NULL),
(359, 'HoàngAnh trần', 'Nam', '2001-12-22', 'vanhoang', 'vanhoang', '221802', 'tranhoangvb9999@gmail.com', 0, 'hoàng trọc', '', 1, NULL, NULL, NULL, NULL, NULL),
(360, 'Văñ Đôñg', 'Nam', '1999-12-16', 'cnaing', 'kamejoko', '12345678', 'bsfbyh@gmail.com', 0, 'Bé Bựa', 'buonvl', 1, NULL, NULL, NULL, NULL, NULL),
(361, 'NGUYỄN ĐỨC VINH', 'Nam', '2003-08-18', 'vinh11831', 'vinh11831', '17082003', 'vinh11831@gmail.com', 0, 'vin', '', 1, NULL, NULL, NULL, NULL, NULL),
(362, 'NGUYỄN ĐỨC VINH', 'Nam', '2003-08-18', 'cutybaby', 'vinh11831', '17082003', 'vinh1817082003@gmail.com', 0, 'vin', '', 1, NULL, NULL, NULL, NULL, NULL),
(363, 'trần hoàng thương', 'Nữ', '2000-02-07', 'thuongcs5', 'thuongcs5', '01252979755', 'thuonngcs5@gmail.com', 0, 'ko bt nữa', '', 1, NULL, NULL, NULL, NULL, NULL),
(364, 'Quyên Trần', 'Nữ', '1997-07-13', 'tranlequyen', '13072005', '123456', 'vothixuan20111976@gmail.com', 0, 'Heo', '', 1, NULL, NULL, NULL, NULL, NULL),
(365, 'Rika Kurashi', 'Nữ', '2005-10-12', 'Kirin12', 'quynhanh', '12102008', 'kurashinakirika@gmail.com', 0, 'Kirin', '', 1, NULL, NULL, NULL, NULL, NULL),
(366, 'Hàn Băng Nhi', 'Nữ', '2003-04-16', 'HanBangNhi', 'hanbangnhi', '16042008', 'maikhavy1604@gmail.com', 0, 'Si', '', 1, NULL, NULL, NULL, NULL, NULL),
(367, 'Haibui', 'Nam', '2018-05-08', 'Haizo2345', 'haizo123', '000008', 'quan00321@gmail.com', 0, 'Haizo', 'Alone_1054436', 1, NULL, NULL, NULL, NULL, NULL),
(368, 'nam', 'Nam', '2005-12-14', 'lynhi', 'anloznhe00', '123456', 'nguhoc98hn@gmail.com', 0, 'nhock ngáo', '', 1, NULL, NULL, NULL, NULL, NULL),
(369, 'Nguyễn hl', 'Nam', '2005-11-18', 'Nguyenlong', '135246long', '135246', 'nguyenlongnetcom@gmail.com', 0, 'Dragon flame', '', 1, NULL, NULL, NULL, NULL, NULL),
(370, '赵薇', 'Nữ', '2004-12-18', 'beheo', '0010012008', '0010012008', 'trieuvy008@gmail.com', 0, 'Bé Heo', '', 1, NULL, NULL, NULL, NULL, NULL),
(371, 'Nguyen Hoang', 'Nữ', '2000-12-10', 'Nguyenhoang', '0909489242', '0902489242', 'Binh0909489242@gmail.com', 0, 'Nguyen Hoang', '', 1, NULL, NULL, NULL, NULL, NULL),
(372, 'Nguyễn Văn Cao', 'Nam', '2004-11-05', 'Kubin.Karin.04', 'magickaito2015', '12699305', 'streamcao04@gmail.com', 0, 'Cow-Sleep', 'blogcuaban', 1, NULL, NULL, NULL, NULL, NULL),
(373, 'Bùi Nguyễn Anh Phương', 'Nữ', '2007-11-24', 'anhphuongbaohan', 'anhphuongbaohan', '260824112007', 'anhphuong@gmail.com', 0, 'Phương Bùi', 'Vui24_278960', 1, NULL, NULL, NULL, NULL, NULL),
(374, 'Lq hoàng', 'Nam', '2000-07-21', 'hoangquocle', '1234567890', '01234567890', 'hoangquoc12le@gmail.com', 0, 'money', '', 1, NULL, NULL, NULL, NULL, NULL),
(375, 'đức thiện', 'Nam', '2001-01-27', 'thien', '01695457848', '15052003', 'thiendaklu@gmail.com', 0, 'chuột', '', 1, NULL, NULL, NULL, NULL, NULL),
(376, 'Minh Ann', 'Nữ', '2004-06-07', 'dongminhan', 'sontungmtp', '05050706', 'Dongminhan576@gmail.com', 5050, '#An', 'tothichcau_5432446', 1, NULL, NULL, NULL, NULL, NULL),
(377, 'Đức Mạnh Vlogs', 'Nam', '2018-05-02', '01293066809', 'ducmanhvlogs', '0985714243', 'manhnyn@gmail.com', 0, 'Đức Mạnh Vlogs', 'droll_2659058', 1, NULL, NULL, NULL, NULL, NULL),
(378, 'Dương Trần Thảo Ngân', 'Nữ', '2002-11-01', 'Thao123', '1234thao', '123456', 'Thaonganduongtran@gmail.com', 0, 'Ngân Ú', 'yeu_4135287', 1, NULL, NULL, NULL, NULL, NULL),
(379, 'nguyễn phúc', 'Nam', '2006-12-21', 'tomcangdu', 'Phucmala06', '123456', 'duvannguyen79@gml.com', 0, 'nhphs', '_4135287', 1, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `users` (`id`, `name`, `gender`, `bthdate`, `userName`, `password`, `mk2`, `email`, `sodu`, `cre`, `page`, `level`, `so_tk`, `so_in_tren_the`, `ten`, `ngan_hang`, `chi_nhanh`) VALUES
(380, 'kirigaya kazuto', 'Nữ', '2006-06-14', 'asuna2006', '14062006', '14062006', 'jenny1406@gmail.com', 0, 'kirito', '', 1, NULL, NULL, NULL, NULL, NULL),
(381, 'vu phuong thanh', 'Nữ', '2003-12-08', 'phuongthanh', 'vutruonghuy', '1234567890', 'anhmai@gmail.com', 0, 'thanh phuong', 'blogcuaban', 1, NULL, NULL, NULL, NULL, NULL),
(382, 'Kún Kang', 'Nữ', '2007-12-14', 'wannable', 'thuyduong', '14122007', 'duongthuy15122007@gmail.com', 0, 'moon', '', 1, NULL, NULL, NULL, NULL, NULL),
(383, 'Nguyễn Quỳnh Như', 'Nữ', '2006-01-19', 'quynhnhufankpop', 'nguyenquynhnhu1901', '19012006', 'dreamteam24052017@Gmail.com', 0, 'Army lai Wannable', 'thathinh,xamxi_6062147', 1, NULL, NULL, NULL, NULL, NULL),
(384, 'Lò Văn Hoàng', 'Nam', '2000-01-14', 'HoangG', 'subin141', '1412005', 'mrhoangvlog141@gmail.com', 0, 'Subin', '1phut_7929766,buonvl,_4135287', 1, NULL, NULL, NULL, NULL, NULL),
(385, 'Nguyễn Bình', 'Nam', '2002-01-13', 'Gatheki', '0981714534', '0981714534', 'Gatheki2002@gmail.com', 0, 'Cu binn', '', 1, NULL, NULL, NULL, NULL, NULL),
(386, 'Phan Thị Quỳnh Thư', 'Nữ', '2005-02-16', 'Thu16', '16022005', '01646165296', 'ngaykhongvui16022005@gmail.com', 50, 'Quỳnh Thư', '', 1, NULL, NULL, NULL, NULL, NULL),
(387, 'Phan Lý Trang Hân', 'Nữ', '2005-10-03', 'hanphan', 'phanlytranghan031020050931801425', '03102005', 'tranghan0310@gmail.com.vn', 0, 'Su Béo', '', 1, NULL, NULL, NULL, NULL, NULL),
(388, 'Thanh Tùng', 'Nam', '1989-07-19', 'Thanhtung', 'thanhtung1920', '190720', 'Thanhtungk655@gmail.com', 0, 'Kaid', 'thathinh,tothichcau_5432446,viet_9758669,_4135287', 1, NULL, NULL, NULL, NULL, NULL),
(389, 'Thuần Huỳnh', 'Nam', '2007-09-19', 'VipPokiwar2007', 'AnhEm', '192007', 'huynhtrunhthinhthuan.vinhlong@gmail.com', 0, 'Thuần Huỳnh', '', 1, NULL, NULL, NULL, NULL, NULL),
(390, 'Hung nguyen', 'Nam', '2003-12-01', 'Hung1', '0935361294', '0935217430', 'adsw4658111@gmail.com', 0, 'Hùng', '', 1, NULL, NULL, NULL, NULL, NULL),
(391, 'Nguyễn Đức Thắng', 'Nam', '2004-12-25', 'Vddoan1997', 'sasakils2004', '25122004', 'Rin.lx00@gmail.com', 0, 'Nemo', '', 1, NULL, NULL, NULL, NULL, NULL),
(392, 'Nguyễn Trọng Hào', 'Nam', '2018-05-08', 'Tronghao1509', 'hao15092004', '15092004', 'Thuhien1303@gmail.com', 0, 'Vui vui vui', '', 1, NULL, NULL, NULL, NULL, NULL),
(393, 'ngô thj thu uyên', 'Nữ', '2004-10-18', 'ngothithuuyen', 'ngothithuuyen', '18102004', 'ngouyen18102004@gmail.com', 0, 'bún', '1phut_7929766,blogcuaban,CanhCutCorp_8313069,droll_2659058,deeplove_1683934,imfine_855939,ethanhxuan,Moclan_5743338,quotemanhyy,say,sadlove,saohanquoc,StayHigh_8605376,Sttngan_1120958,Trash_3730792,thathinh,tothichcau_5432446,viet_97', 1, NULL, NULL, NULL, NULL, NULL),
(394, 'nguyễn ngọc nhật linh', 'Nữ', '1999-07-07', '10072007', 'matkhauladay', '172737', 'nguyenngocnhatlinh1@gmail.com', 0, 'cherry linh', 'blogcuaban', 1, NULL, NULL, NULL, NULL, NULL),
(395, 'Trần Xuân Trí', 'Nam', '2003-06-02', 'tranxuantribk', 'tribk123', '123456', 'tranxuantribk@gmail.com', 0, 'Vàng nè', '', 1, NULL, NULL, NULL, NULL, NULL),
(396, 'lÊ NGUYỄN', 'Nam', '2004-02-03', '123ae123', '12357890', '1234567890', 'pn7533839@gmail.com', 0, 'hEO', '', 1, NULL, NULL, NULL, NULL, NULL),
(397, 'No Emotion', 'Nữ', '2006-07-16', '16072006', '16072006', '16072006', 'hoangthitham10287@gmail.com', 0, 'Feel Your Heart', 'yeu_4135287', 1, NULL, NULL, NULL, NULL, NULL),
(398, 'Nguyễn Thị Phương Thúy', 'Nữ', '2000-02-07', 'Cu_don', 'taohanmay', '01646367637', 'Nguyenthihuongnd1979@gmail.com', 0, 'Pii_đz', '', 1, NULL, NULL, NULL, NULL, NULL),
(399, 'Chíp Fan AD', 'Nam', '2005-09-19', 'Giaitrivui123', '19092005cuong', '123456', 'Dangcuong1909@gmail.com', 0, 'Giải trí-Giao lưu-Chém gió', '', 1, NULL, NULL, NULL, NULL, NULL),
(400, 'Chíp Fan ADM', 'Nam', '2005-09-19', 'Giaitrivui124', '19092005cuong', '123456', 'Dangcuong19092k5@gmail.com', 0, 'Giải trí-Giao lưu-Chém gió', 'Vui24_278960', 1, NULL, NULL, NULL, NULL, NULL),
(401, 'Chíp Fan ADMin', 'Nam', '2002-09-19', 'Giaitrichemgio123', 'cuongdangdz', '19092005', 'Dangcuong19092k5c@gmail.com', 0, 'Giải trí-Giao lưu-Chém gió-Thả Thính', 'yeu_4135287', 1, NULL, NULL, NULL, NULL, NULL),
(402, 'Phạm Thanh Hông', 'Nữ', '2004-12-15', 'hong123', 'thanhhong23', '15122004', 'winddyhong@gmail.com', 0, 'Tẹt', '', 1, NULL, NULL, NULL, NULL, NULL),
(403, 'Sơn Quang Vũ', 'Nam', '2003-09-08', 'Sonquangvu', '08092003', '08092003', 'Quangvuhihi89@gmail.com', 0, 'Rain', '', 1, NULL, NULL, NULL, NULL, NULL),
(404, 'Nguyễn Thùy Dung', 'Nữ', '2002-10-10', 'nguyenthuydung', 'nguyenthuydung307tcm1010', '10102002', 'nguyenbaody10@gmail.com', 19001, 'Chuột', 'mua', 1, NULL, NULL, NULL, NULL, NULL),
(405, 'Trần Bích Liên', 'Nữ', '2004-09-28', 'lie2809', '19982004', '24101998', 'tranbichlien2809@gmail.com', 0, 'Lie', '', 1, NULL, NULL, NULL, NULL, NULL),
(406, 'Nguyễn Thị Hải Thanh', 'Nữ', '2002-03-24', 'Nguyenthihaithanh', 'haithanh2403', '24032002', 'nguyenthihaithanhtttt@gmail.com', 5150, 'Thanh', '', 1, NULL, NULL, NULL, NULL, NULL),
(407, 'Khánh xuân', 'Nữ', '2002-01-02', 'Khanhxuan0201', 'khanhxuan', '02012002', 'Hothithanhxuan0201@gmail.com', 45000, 'Kx', '', 1, NULL, NULL, NULL, NULL, NULL),
(408, 'Đàm Phương Thảo', 'Nữ', '1999-10-09', 'ThanhThao.59', '09102004', '522000', 'Dam.phuong.thao.2017@gmail.com', 1000, 'Phương Ny', '', 1, NULL, NULL, NULL, NULL, NULL),
(409, 'Đặng Văn Thái', 'Nam', '2000-11-25', 'anhthai123zz', 'vanthai123', '123456', 'anhthai25112000@gmail.com', 0, 'Bò', '', 1, NULL, NULL, NULL, NULL, NULL),
(410, 'Trần Minh Nguyệt', 'Nữ', '2005-08-22', '01689232978', 'hongthinh', '220805', 'Tranminhnguyet121@gmail.com', 0, 'Nie', '', 1, NULL, NULL, NULL, NULL, NULL),
(411, 'Lê Thị Thảo Vy', 'Nữ', '2005-02-23', 'lethithaovy', '23220052322005', '2322005', 'lequytpt@gmail.com', 9200, 'Bae', 'thathinh', 1, NULL, NULL, NULL, NULL, NULL),
(412, 'Dương Hoàng Mẫn Nghi', 'Nữ', '2004-10-03', 'thaonghipk', '10032004', '29072009', 'thaonghi58@gmail.com', 0, 'BuBu', '', 1, NULL, NULL, NULL, NULL, NULL),
(413, 'Văn Hoàng', 'Nam', '2003-01-26', '01696065467', 'fairytailOND', '260131', 'Cuuviho318@gmail.com', 0, 'Tử Vi', '', 1, NULL, NULL, NULL, NULL, NULL),
(414, 'Đàm Phương Thảo', 'Nữ', '1999-10-09', 'PhuongNy69', '09102004', '09102004', 'Piitatoo0910@gmail.com', 100, 'Phương Ny', 'mua', 1, '5209205026236', '9704050716161406', 'Trịnh Thị Phương ', 'Agribank', 'Krông Năng - Đắk Lắk'),
(415, 'Nguyễn Gia Minh', 'Nam', '2005-11-03', 'HoangMinh', 'iamkynn', '71981264', 'hoangminhh920@gmail.com', 22000, 'Dope', 'mua', 1, NULL, NULL, NULL, NULL, NULL),
(416, 'Hoài Thương', 'Nữ', '2005-03-17', 'HOAITHUONG1703', '17032005', '17032005', 'thuanthipham1965@gmail.com', 1000, 'HT', 'yeu,1phut_7929766,mua', 1, '104000888275', '9704151522799379', 'Nguyễn Tuyết Hoa', 'Vietinbank', ' Pleiku - Gia Lai'),
(417, 'Tường vy', 'Nữ', '2018-05-08', 'tuongvy172002', 'tuongvy', '172002', 'Vyvypun@gmail.com', 0, 'Nấm', '', 1, NULL, NULL, NULL, NULL, NULL),
(418, 'Phuong Anh Le', 'Nữ', '2002-04-26', 'Bexiu', 'bexiu260402', '260402', 'Anhphuong260402@gmail.com', 20100, 'Xĩu', 'yeu', 1, NULL, NULL, NULL, NULL, NULL),
(419, 'Thanh Tuyền', 'Nữ', '1999-02-03', 'heoli2000', 'heoli2000', '0948342462', 'heoli28101999@gmail.com', 0, 'heo lì', '', 1, NULL, NULL, NULL, NULL, NULL),
(420, 'Đặng Nguyễn Hoàng Minh', 'Nam', '1998-10-10', 'Hoangminhtruong', 'truong', '762003', 'danghoangminh101999@gmail.com', 0, 'Kay', '', 1, NULL, NULL, NULL, NULL, NULL),
(421, 'Đặng Nguyễn Hoàng Minh', 'Nam', '1999-10-10', 'Minhtruong', 'truong', '762003', 'minhminhdang1999@gmail.com', 0, 'Kay', 'tothichcau_5432446', 1, NULL, NULL, NULL, NULL, NULL),
(422, 'Dương Đăng Quỳnh', 'Nam', '2003-01-27', 'duongdangquynh', 'duongdangquynhkhoaito', '27012003', 'Duongdangquynhkhoaito@gmail.com', 0, 'Còii', '', 1, NULL, NULL, NULL, NULL, NULL),
(423, 'Dương Đăng Quỳnh', 'Nam', '2003-01-27', 'Duongdangquynh2003', '27012003', '27012003', 'Duongdangquynh2003@gnail.com', 0, 'Còii', '', 1, NULL, NULL, NULL, NULL, NULL),
(424, 'Dương Đăng Quỳnh', 'Nam', '2003-01-27', 'Duongdangquynh27012003', '27012003', '27012003', 'Duongdangquynh01662352318@gmail.com', 0, 'Còii', '', 1, NULL, NULL, NULL, NULL, NULL),
(425, 'Trịnh Thị Yến Nhi', 'Nữ', '2005-11-04', 'trinhthiyennhi11', 'zxcvbnm', '12345678', 'nhi205772@gmail.com', 0, 'YN', '', 1, NULL, NULL, NULL, NULL, NULL),
(426, 'Trịnh Thị Yến Nhi', 'Nữ', '2005-11-04', 'trinhthiyennhi', 'zxcvbnm', '12345678', 'nhi2057@gmail.com', 0, 'YN', '', 1, NULL, NULL, NULL, NULL, NULL),
(427, 'Dinh Nha Tran', 'Nam', '1994-06-19', 'dinhnhatran.365', '874952361', '874952361', 'dinhnhatran.365@gmail.com', 0, 'Minh Nhã', '', 1, NULL, NULL, NULL, NULL, NULL),
(428, 'thuong', 'Nam', '2003-05-05', 'thuong', '01676433050', '01676433050', 'lop9.1thuongnguyenba@gmail.com', 0, 'chất', 'imfine_855939', 1, NULL, NULL, NULL, NULL, NULL),
(429, 'Mai Lan', 'Nữ', '2002-12-05', 'Mailan', 'Lanham012@gmail.com', '05122002', 'Lanham012@gmail.com', 93000, 'Mây', 'mua', 1, NULL, NULL, NULL, NULL, NULL),
(430, 'Thái Hoàng', 'Nam', '2005-02-14', 'Hoangthai1402', '95175363171996', '14022005', 'congthucchinhmau1402@gmail.com', 26000, 'Buyn', 'mua', 1, NULL, NULL, NULL, NULL, NULL),
(431, 'Đinh Công Vang', 'Nam', '2002-07-05', 'Nasnafil', 'NasNafil', '103139', 'duongthantoan@gmail.com', 0, 'Nafil', 'mua', 1, NULL, NULL, NULL, NULL, NULL),
(432, 'Le khanh', 'Nam', '2018-05-02', 'Khanhhong86', 'khanhhong86', '999999', 'Khanhhonghuy86@gmail.com', 0, 'Khanh', '', 1, NULL, NULL, NULL, NULL, NULL),
(433, 'Dung Nhỏ', 'Nữ', '1988-08-03', 'dungnho123', '1234567890', '0987654321', 'nguyenthidung@gmail.com', 0, 'Nhỏ', '', 1, NULL, NULL, NULL, NULL, NULL),
(434, 'Linh Nhi', 'Nữ', '2002-10-31', 'LinhNhi', '10051978', '10051978', 'tongkhanhlinh10b2@gmai.com', 0, 'KLinh', 'mua', 1, NULL, NULL, NULL, NULL, NULL),
(435, 'Võ Khánh Huyền', 'Nữ', '2001-10-15', 'CunEm', 'cunemxq1410', '15102001', 'khanhhuyen1510kt@gmail.com', 0, 'Cún', 'Moclan_5743338', 1, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `viet_9758669`
--

CREATE TABLE `viet_9758669` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bthdate` date DEFAULT NULL,
  `userName` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sodu` int(11) NOT NULL,
  `cre` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `active` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `viet_9758669`
--

INSERT INTO `viet_9758669` (`id`, `name`, `gender`, `bthdate`, `userName`, `password`, `email`, `sodu`, `cre`, `level`, `active`) VALUES
(11, 'Bác Tài', 'Nam', '1998-07-10', 'admin', 'taikuteyh', 'tainv62@wru.vn', 0, 'Bác Tài', 2, 1),
(12, 'Phương Thùy', 'Nữ', '2000-09-20', 'Phuongthuy', 'anhthieuuy', 'Dlmthuy2092000vvk@gmail.com', 0, 'Thùy', 1, 1),
(13, 'Lê Tuấn Kiệt', 'Nam', '2002-11-18', 'Kit16', '2011', 'letuankiet2k2@gmail.com', 0, 'Kịt', 1, 1),
(14, 'Nguyễn Hoàng Ngân Hà', 'Nữ', '2001-09-11', 'Mimxtp', 'qtp117', 'Hanthienbang0608@gmail.com', 0, 'Mĩm', 2, 1),
(15, 'Thảo Anh', 'Nữ', '2005-07-24', 'miee247', 'anhnt24070811*', 'nguyenthaoanh2k5@gmail.com', 0, 'Mie', 1, 1),
(16, 'Nguyễn Thị Ngọc Ánh', 'Nữ', '2001-04-20', 'Anna2612', 'ngocanh', 'Ngocanhsociu20042001@gmail.com', 0, 'Thỏ', 1, 1),
(19, 'Nguyễn Thu Huyền', 'Nữ', '2003-10-09', 'Huyencute0910', 'nguyenthuhuyen', 'nguyenthuhuyen537@gmail.com', 0, 'Huỳn', 1, 1),
(21, 'Vũ Nguyễn Ngọc Trâm', 'Nữ', '1995-03-15', 'Shiincv', 'namyeutinh', 'dongtuyet153@gmail.com', 0, 'Snes', 1, 1),
(22, 'Sky Uyên', 'Nữ', '2000-02-28', 'Skyuyen', 'myuyen2820', 'skyuyen1994@gmail.com', 0, 'Sky', 1, 1),
(25, 'Hoàng Hạ Vân', 'Nữ', '2001-12-28', 'hoanghavan', '1234567890', 'hoangthithem861@gmail.com', 0, 'Hĩm', 1, 1),
(26, 'Trần Cao Khả Linh', 'Nữ', '2001-03-10', 'Camthanthien', 'chamcham1234', 'Babylovecat9@gmail.com', 0, 'Carrot', 1, 1),
(28, 'Nguyễn Lê Hoài Thương', 'Nữ', '2001-05-07', 'nlhthuong7501', 'hoaithuong', 'thuongnguyen7501@gmail.com', 0, 'Thương', 1, 1),
(30, 'Thư Thái Hoàng', 'Nữ', '2001-05-20', 'Jinlion', 'hoangthai', 'jinlion2052001@gmail.com', 0, 'Jin', 1, 1),
(31, 'Nguyễn Hoàng Bảo Nhiên', 'Nữ', '2003-09-17', 'Nhien1709', 'quangtrang17092003@gmail.com', 'quangtrang17092003@gmail.com', 0, 'Yuna', 1, 1),
(32, 'Nguyễn Ngọc Hà', 'Nữ', '2001-06-21', 'nguyenha', 'nguyenha', 'julcongtu@gmail.com', 0, 'Meo', 1, 1),
(33, 'Đỗ Phượng', 'Nữ', '2002-10-15', 'himheo', '123456789', 'phuongdo151002@gmail.com', 0, 'Hỉm', 1, 1),
(34, 'Bùi Thanh Hoa', 'Nữ', '2001-12-28', 'hoa7604', 'hoa7604', 'mituotkute28@gmail.com', 0, 'Thiên thần', 1, 1),
(35, 'nguyen thi phuong linh', 'Nữ', '2002-01-04', 'goblin', 'linh4102', 'linh90465@gmail.com', 0, 'lyr', 1, 1),
(36, 'Thanh Tùng', 'Nam', '1989-07-19', 'Thanhtung', 'thanhtung1920', 'Thanhtungk655@gmail.com', 0, 'Kaid', 1, 0),
(37, 'ngô thj thu uyên', 'Nữ', '2004-10-18', 'ngothithuuyen', 'ngothithuuyen', 'ngouyen18102004@gmail.com', 0, 'bún', 1, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `Vui24_278960`
--

CREATE TABLE `Vui24_278960` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bthdate` date DEFAULT NULL,
  `userName` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sodu` int(11) NOT NULL,
  `cre` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `active` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `Vui24_278960`
--

INSERT INTO `Vui24_278960` (`id`, `name`, `gender`, `bthdate`, `userName`, `password`, `email`, `sodu`, `cre`, `level`, `active`) VALUES
(11, 'Nguyễn văn quảng', 'Nam', '2004-07-09', 'quanghppn', '01213617968', 'qv09815@gmail.com', 0, 'Yêu đi đừng ngại', 2, 1),
(12, 'Bùi Nguyễn Anh Phương', 'Nữ', '2007-11-24', 'anhphuongbaohan', 'anhphuongbaohan', 'anhphuong@gmail.com', 0, 'Phương Bùi', 1, 1),
(13, 'ngô thj thu uyên', 'Nữ', '2004-10-18', 'ngothithuuyen', 'ngothithuuyen', 'ngouyen18102004@gmail.com', 0, 'bún', 1, 0),
(14, 'Chíp Fan ADM', 'Nam', '2005-09-19', 'Giaitrivui124', '19092005cuong', 'Dangcuong19092k5@gmail.com', 0, 'Giải trí-Giao lưu-Chém gió', 1, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `Vytran_3380056`
--

CREATE TABLE `Vytran_3380056` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bthdate` date DEFAULT NULL,
  `userName` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sodu` int(11) NOT NULL,
  `cre` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `active` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `Vytran_3380056`
--

INSERT INTO `Vytran_3380056` (`id`, `name`, `gender`, `bthdate`, `userName`, `password`, `email`, `sodu`, `cre`, `level`, `active`) VALUES
(11, 'Vy Trần', 'Nữ', '2005-01-11', 'Nguyenvan', 'camvan', 'Nguyenvan123@gmail.com', 0, 'Lâm', 2, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `xamxi_6062147`
--

CREATE TABLE `xamxi_6062147` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bthdate` date DEFAULT NULL,
  `userName` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sodu` int(11) NOT NULL,
  `cre` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `active` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `xamxi_6062147`
--

INSERT INTO `xamxi_6062147` (`id`, `name`, `gender`, `bthdate`, `userName`, `password`, `email`, `sodu`, `cre`, `level`, `active`) VALUES
(11, 'Bác Tài', 'Nam', '1998-07-10', 'admin', 'taikuteyh', 'tainv62@wru.vn', 0, 'Bác Tài', 2, 1),
(12, 'Nguyễn Thị Ngọc', 'Nữ', '2002-03-19', 'Mitcute', 'Ngoccute', 'Ngocmit002@gmail.com', 0, 'Mít', 1, 1),
(13, 'Vũ Nguyễn Ngọc Trâm', 'Nữ', '1995-03-15', 'Shiincv', 'namham153', 'dongtuyet153@gmail.com', 0, 'Snes', 1, 1),
(14, 'Minh', 'Nam', '2003-03-23', 'minh2003', 'minh2003', 'phuminh2303@gmail.com', 0, 'CÒ', 1, 1),
(16, 'Nguyễn Quỳnh Như', 'Nữ', '2006-01-19', 'quynhnhufankpop', 'nguyenquynhnhu1901', 'dreamteam24052017@Gmail.com', 0, 'Army lai Wannable', 1, 0),
(17, 'ngô thj thu uyên', 'Nữ', '2004-10-18', 'ngothithuuyen', 'ngothithuuyen', 'ngouyen18102004@gmail.com', 0, 'bún', 1, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `yeu`
--

CREATE TABLE `yeu` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bthdate` date DEFAULT NULL,
  `userName` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sodu` int(11) NOT NULL,
  `cre` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `active` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `yeu`
--

INSERT INTO `yeu` (`id`, `name`, `gender`, `bthdate`, `userName`, `password`, `email`, `sodu`, `cre`, `level`, `active`) VALUES
(11, 'Bác Tài', 'Nam', '1998-07-10', 'admin', 'taikuteyh', 'tainv62@wru.vn', 0, 'Bác Tài', 2, 1),
(13, 'Trần Thanh Xuân', 'Nữ', '2001-05-04', 'JenJen', 'cuoilennao0405', 'tranquyxuanphat@gmail.com', 0, 'Jen', 2, 1),
(14, 'Nguyễn Thanh Loan', 'Nữ', '2002-10-08', 'Loanpii', 'quenmatkhau', 'Quynhanhpc8102002@gmail.com', 0, 'Pii', 1, 1),
(15, 'Hồng Gấm', 'Nữ', '2009-06-19', 'iamdzucute', 'bestngu', 'honggamdoraemon@gmail.com', 0, 'Dzú', 2, 1),
(16, 'Nguyễn Thị Thanh Hường', 'Nữ', '2003-06-28', 'Huong', 'huong2003', 'nguyenthithanhhuong022@gmail.com', 0, 'NTTH', 1, 1),
(26, 'Bùi Ngọc Minh Châu', 'Khác', '2000-12-28', 'minhchau2812', '181216', 'bui.luyen.tqt@gmail.com', 0, 'Bò', 1, 1),
(38, 'Wind Đẹp Trai', 'Khác', '2000-07-15', 'Wind', 'haphong', 'magihienhoang@gmail.com', 0, 'Wind', 1, 1),
(51, 'Nguyễn Hoàng Sơn', 'Nam', '2002-07-17', 'neil.hendyruan', 'son1772002', 'thienhoangcao1111@gmail.com', 0, '#Sơn', 1, 1),
(52, 'Phuong Anh Le', 'Nữ', '2002-04-26', 'Bexiu', 'bexiu260402', 'Anhphuong260402@gmail.com', 0, 'Xĩu', 1, 1),
(53, 'Hoàng Thái', 'Nam', '2005-02-14', 'Hoangthai2005', '95175363171996', 'thaiphap.paris@gmail.com', 0, 'Binn', 1, 1),
(57, 'Hoài Thương', 'Nữ', '2005-03-17', 'HOAITHUONG1703', '17032005', 'thuanthipham1965@gmail.com', 0, 'HT', 1, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `yeu_4135287`
--

CREATE TABLE `yeu_4135287` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bthdate` date DEFAULT NULL,
  `userName` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sodu` int(11) NOT NULL,
  `cre` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `active` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `yeu_4135287`
--

INSERT INTO `yeu_4135287` (`id`, `name`, `gender`, `bthdate`, `userName`, `password`, `email`, `sodu`, `cre`, `level`, `active`) VALUES
(11, 'Wind Đẹp Trai', 'Khác', '2000-07-15', 'Wind', 'haphong', 'magihienhoang@gmail.com', 0, '#wind', 2, 1),
(12, 'Huong mây', 'Nữ', '2004-03-04', 'Huongmay123', 'vothixuanmai', 'Dothixuanlan1111975@gmail.com', 0, 'Mây', 1, 1),
(13, 'Hau Tieu My', 'Nữ', '2004-01-20', 'Sun', 'hautieumy', 'Hautieumy@gmail.com', 0, 'Sun', 1, 1),
(14, 'Trịnh Hoài Nam', 'Nam', '2003-11-20', 'Nhocsua2011', 'namnamnam123.', 'namhoaixcvz@gmail.com', 0, 'Shin (Sữa)', 1, 1),
(15, 'Bùi Đức An', 'Nam', '2000-08-25', 'annhlnn', 'anbui123456789', 'tamquancmbk@gmail.com', 0, 'phải chăm chỉ', 1, 1),
(16, 'Vy Trần', 'Nữ', '2005-01-11', 'Nguyenvan', 'camvan', 'Nguyenvan123@gmail.com', 0, 'Lâm', 1, 1),
(17, 'Dương Trần Thảo Ngân', 'Nữ', '2002-11-01', 'Thao123', '1234thao', 'Thaonganduongtran@gmail.com', 0, 'Ngân Ú', 1, 0),
(18, 'nguyễn phúc', 'Nam', '2006-12-21', 'tomcangdu', 'Phucmala06', 'duvannguyen79@gml.com', 0, 'nhphs', 1, 0),
(19, 'Lò Văn Hoàng', 'Nam', '2000-01-14', 'HoangG', 'subin141', 'mrhoangvlog141@gmail.com', 0, 'Subin', 1, 0),
(20, 'Thanh Tùng', 'Nam', '1989-07-19', 'Thanhtung', 'thanhtung1920', 'Thanhtungk655@gmail.com', 0, 'Kaid', 1, 0),
(21, 'No Emotion', 'Nữ', '2006-07-16', '16072006', '16072006', 'hoangthitham10287@gmail.com', 0, 'Feel Your Heart', 1, 0),
(22, 'ngô thj thu uyên', 'Nữ', '2004-10-18', 'ngothithuuyen', 'ngothithuuyen', 'ngouyen18102004@gmail.com', 0, 'bún', 1, 0),
(23, 'Chíp Fan ADMin', 'Nam', '2002-09-19', 'Giaitrichemgio123', 'cuongdangdz', 'Dangcuong19092k5c@gmail.com', 0, 'Giải trí-Giao lưu-Chém gió-Thả Thính', 1, 0),
(24, 'Nguyễn Thị Ngọc Ánh', 'Nữ', '2001-04-20', 'Anna2612', 'ngocanh', 'ngocanhsociu20042001@gmail.com', 0, 'Thỏ', 1, 0);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `1phut_7929766`
--
ALTER TABLE `1phut_7929766`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `Alone_1054436`
--
ALTER TABLE `Alone_1054436`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `blogcuaban`
--
ALTER TABLE `blogcuaban`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `buonvl`
--
ALTER TABLE `buonvl`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `CanhCutCorp_8313069`
--
ALTER TABLE `CanhCutCorp_8313069`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `DeepCrush_1249406`
--
ALTER TABLE `DeepCrush_1249406`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `deeplove_1683934`
--
ALTER TABLE `deeplove_1683934`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `droll_2659058`
--
ALTER TABLE `droll_2659058`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `dsdky_dv`
--
ALTER TABLE `dsdky_dv`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `ds_nap`
--
ALTER TABLE `ds_nap`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `ethanhxuan`
--
ALTER TABLE `ethanhxuan`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `hangdoi`
--
ALTER TABLE `hangdoi`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `Him_1212386`
--
ALTER TABLE `Him_1212386`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `imfine_855939`
--
ALTER TABLE `imfine_855939`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `kingquotes_590064`
--
ALTER TABLE `kingquotes_590064`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `lichsu_gd`
--
ALTER TABLE `lichsu_gd`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `Moclan_5743338`
--
ALTER TABLE `Moclan_5743338`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `mua`
--
ALTER TABLE `mua`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `quotemanhyy`
--
ALTER TABLE `quotemanhyy`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sadlove`
--
ALTER TABLE `sadlove`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `saohanquoc`
--
ALTER TABLE `saohanquoc`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `say`
--
ALTER TABLE `say`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `stats`
--
ALTER TABLE `stats`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `StayHigh_8605376`
--
ALTER TABLE `StayHigh_8605376`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `Sttngan_1120958`
--
ALTER TABLE `Sttngan_1120958`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `thathinh`
--
ALTER TABLE `thathinh`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tothichcau_5432446`
--
ALTER TABLE `tothichcau_5432446`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `Trash_3730792`
--
ALTER TABLE `Trash_3730792`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `viet_9758669`
--
ALTER TABLE `viet_9758669`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `Vui24_278960`
--
ALTER TABLE `Vui24_278960`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `Vytran_3380056`
--
ALTER TABLE `Vytran_3380056`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `xamxi_6062147`
--
ALTER TABLE `xamxi_6062147`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `yeu`
--
ALTER TABLE `yeu`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `yeu_4135287`
--
ALTER TABLE `yeu_4135287`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `1phut_7929766`
--
ALTER TABLE `1phut_7929766`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT cho bảng `Alone_1054436`
--
ALTER TABLE `Alone_1054436`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `blogcuaban`
--
ALTER TABLE `blogcuaban`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT cho bảng `buonvl`
--
ALTER TABLE `buonvl`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT cho bảng `CanhCutCorp_8313069`
--
ALTER TABLE `CanhCutCorp_8313069`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `DeepCrush_1249406`
--
ALTER TABLE `DeepCrush_1249406`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `deeplove_1683934`
--
ALTER TABLE `deeplove_1683934`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT cho bảng `droll_2659058`
--
ALTER TABLE `droll_2659058`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `dsdky_dv`
--
ALTER TABLE `dsdky_dv`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT cho bảng `ds_nap`
--
ALTER TABLE `ds_nap`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `ethanhxuan`
--
ALTER TABLE `ethanhxuan`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT cho bảng `hangdoi`
--
ALTER TABLE `hangdoi`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `Him_1212386`
--
ALTER TABLE `Him_1212386`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `imfine_855939`
--
ALTER TABLE `imfine_855939`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `kingquotes_590064`
--
ALTER TABLE `kingquotes_590064`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `lichsu_gd`
--
ALTER TABLE `lichsu_gd`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=380;

--
-- AUTO_INCREMENT cho bảng `Moclan_5743338`
--
ALTER TABLE `Moclan_5743338`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `mua`
--
ALTER TABLE `mua`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT cho bảng `quotemanhyy`
--
ALTER TABLE `quotemanhyy`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `sadlove`
--
ALTER TABLE `sadlove`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `saohanquoc`
--
ALTER TABLE `saohanquoc`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `say`
--
ALTER TABLE `say`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `stats`
--
ALTER TABLE `stats`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41767;

--
-- AUTO_INCREMENT cho bảng `StayHigh_8605376`
--
ALTER TABLE `StayHigh_8605376`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `Sttngan_1120958`
--
ALTER TABLE `Sttngan_1120958`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `thathinh`
--
ALTER TABLE `thathinh`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT cho bảng `tothichcau_5432446`
--
ALTER TABLE `tothichcau_5432446`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT cho bảng `Trash_3730792`
--
ALTER TABLE `Trash_3730792`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=436;

--
-- AUTO_INCREMENT cho bảng `viet_9758669`
--
ALTER TABLE `viet_9758669`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT cho bảng `Vui24_278960`
--
ALTER TABLE `Vui24_278960`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `Vytran_3380056`
--
ALTER TABLE `Vytran_3380056`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT cho bảng `xamxi_6062147`
--
ALTER TABLE `xamxi_6062147`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT cho bảng `yeu`
--
ALTER TABLE `yeu`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT cho bảng `yeu_4135287`
--
ALTER TABLE `yeu_4135287`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
