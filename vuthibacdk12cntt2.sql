-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th7 05, 2024 lúc 05:03 AM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `vuthibacdk12cntt2`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bill`
--

CREATE TABLE `bill` (
  `id` int(12) NOT NULL,
  `name` varchar(200) NOT NULL,
  `address` varchar(200) NOT NULL,
  `tel` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `total` int(12) NOT NULL,
  `pttt` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `bill`
--

INSERT INTO `bill` (`id`, `name`, `address`, `tel`, `email`, `total`, `pttt`) VALUES
(15, 'bac11', 'Pac Lol', '2131345612', 'danglong@gmail.com ', 260, 0),
(16, 'bac11', 'chí linh hải dương', '123213213213', 'danglong@gmail.com ', 95, 0),
(18, 'bac11', 'chí linh hải dương', '2323', 'danglong@gmail.com ', 263, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart`
--

CREATE TABLE `cart` (
  `id` int(12) NOT NULL,
  `tensp` varchar(100) NOT NULL,
  `img` varchar(100) NOT NULL,
  `dongia` int(12) NOT NULL DEFAULT 0,
  `soluong` int(3) NOT NULL DEFAULT 0,
  `thanhtien` int(12) NOT NULL DEFAULT 0,
  `idbill` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `cart`
--

INSERT INTO `cart` (`id`, `tensp`, `img`, `dongia`, `soluong`, `thanhtien`, `idbill`) VALUES
(3, 'Hoa Lan Hồ Điệp', 'anh27.jpg', 390, 1, 390000, 2),
(4, 'Hoa Hồng Kinh Đô   ', 'anh8x.jpg', 330, 1, 330000, 2),
(6, 'Thiên Xuân Hồi Lạc', 'u.jpg', 300, 2, 600000, 4),
(7, 'Chậu Thủy Cảnh', 'c.jpg', 300, 1, 300000, 4),
(8, 'Thiên Xuân Hồi Lạc', 'u.jpg', 300, 1, 300000, 5),
(9, 'Chậu Cảnh Vĩnh Hà ', 'q2.jpg', 200, 2, 400000, 5),
(12, 'bánh dâu', 'b3.jpg', 40, 2, 80000, 7),
(13, 'bánh mattcha', 'a4.jpg', 29, 1, 29000, 7),
(14, 'bánh hoa quả', 'a6.jpg', 54, 1, 54000, 8),
(15, 'bánh mattcha', 'a4.jpg', 29, 1, 29000, 8),
(20, 'bánh socola', 'b1.jpg', 29, 1, 29000, 11),
(21, 'bánh mátcha', 'a3.jpg', 38, 1, 38000, 11),
(24, 'bánh tét', 't2.png', 38, 1, 38000, 13),
(25, 'bánh da lợn', 't7.png', 321, 1, 321000, 13),
(26, 'bánh tiêu', 't5.png', 29, 1, 29000, 13),
(31, 'trà xoài', 'v4.png', 222, 1, 222000, 15),
(32, 'trà sữa khoai môn', 'a2.png', 38, 1, 38000, 15),
(33, 'trà sữa kem socola', 'a4.png', 31, 2, 62000, 16),
(34, 'trà sữa full topping', 'a10.png', 33, 1, 33000, 16),
(35, 'hồng trà sữa', 'a7.png', 232, 1, 232000, 18),
(36, 'trà sữa kem socola', 'a4.png', 31, 1, 31000, 18);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lienhe`
--

CREATE TABLE `lienhe` (
  `hoten` varchar(200) NOT NULL,
  `sdt` int(10) NOT NULL,
  `email` varchar(100) NOT NULL,
  `noidung` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `lienhe`
--

INSERT INTO `lienhe` (`hoten`, `sdt`, `email`, `noidung`) VALUES
('vũ thị bắc', 367456697, 'hung1@gmail.com', 'tôi muốn mua hoa với 1 số lượng lớn');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `login`
--

CREATE TABLE `login` (
  `tendangnhap` varchar(100) NOT NULL,
  `matkhau` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `masp` varchar(100) NOT NULL,
  `nhom_id` int(11) NOT NULL,
  `tensp` varchar(200) NOT NULL,
  `mota` text DEFAULT NULL,
  `dongia` int(11) NOT NULL,
  `img` varchar(200) DEFAULT NULL,
  `enable` tinyint(4) NOT NULL DEFAULT 1,
  `ghichu` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`masp`, `nhom_id`, `tensp`, `mota`, `dongia`, `img`, `enable`, `ghichu`) VALUES
('1231', 2367, 'Hoa Hồng Nhung', 'siêu nhiều màu ', 123, 'hoa6.jpg', 1, 'hoa hồng '),
('2342', 1213, 'Hoa cúc', '32e', 233, 'hoa2.jpg', 1, '232'),
('45435', 2342, 'Hoa cẩm tú cầu', 'dsad', 3243, 'hoa5.jpg', 1, 'sdsa'),
('32434', 2367, '35345  ', '34534  ', 435, 'take4.jpg', 1, ' ahihi '),
('54645', 46456, '6456', '654', 65, 'anh1.jpg', 1, '565'),
('56756', 2367, '7567 ', '5675 ', 75567, 'take4.jpg', 0, 'dfd '),
('232', 2367, '32432 ', '43 ', 343, 'product.jpg', 1, '345 '),
('111', 7567, 'Hoa Cẩm Tú Cầu', 'đẹp', 343, 'hoa3.png', 1, 'hay');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham1`
--

CREATE TABLE `sanpham1` (
  `masp` varchar(100) NOT NULL,
  `nhom_id` int(11) NOT NULL,
  `tensp` varchar(200) NOT NULL,
  `mota` text DEFAULT NULL,
  `dongiacu` int(11) NOT NULL,
  `dongiamoi` int(11) NOT NULL,
  `img1` varchar(200) NOT NULL,
  `img2` varchar(200) DEFAULT NULL,
  `img3` varchar(200) DEFAULT NULL,
  `img4` varchar(200) DEFAULT NULL,
  `enable` tinyint(4) NOT NULL DEFAULT 1,
  `ghichu` text DEFAULT NULL,
  `diemnoibat` text DEFAULT NULL,
  `dieukienchamsoc` text DEFAULT NULL,
  `cachchamsoc` text DEFAULT NULL,
  `xuatxu` varchar(255) DEFAULT NULL,
  `ngaydang` varchar(50) DEFAULT NULL,
  `kichthuoc` varchar(255) DEFAULT NULL,
  `nguoidang` varchar(50) DEFAULT NULL,
  `giongloai` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham1`
--

INSERT INTO `sanpham1` (`masp`, `nhom_id`, `tensp`, `mota`, `dongiacu`, `dongiamoi`, `img1`, `img2`, `img3`, `img4`, `enable`, `ghichu`, `diemnoibat`, `dieukienchamsoc`, `cachchamsoc`, `xuatxu`, `ngaydang`, `kichthuoc`, `nguoidang`, `giongloai`) VALUES
('245', 3242, 'mì xào trứng   ', 'Mặc dù lịch sử của bánh cupcake đã có từ rất lâu nhưng  Cupcake chỉ thật sử nổi lên như một trào lưu vào thế kỷ XXI. Cupcake thường được sử dụng như một món tráng miệng trong các buổi tiệc tùng hay gặp mặt. Với đặc điểm ngon và bắt mắt, Cupcake hiện đang được ưa chuộng bởi mọi lứa tuổi. Một chiếc bánh tuy nhìn sặc sỡ nhưng cách làm cũng không quá cầu kỳ, nếu có điều kiện bạn nên thử một lần làm chiếc bánh này tại nhà, không gì ngon bằng được thường thức những chiếc Chupcake nhỏ xinh do chính tay mình làm.\r\n\r\n       ', 45, 41, 'banh-trang-tron.jpg', 'chan-gio-chien-gion-mam-thai.jpeg', 'cha_oc_1_phan.jpeg', 'banh-trang-tron.jpg', 1, 'Mặc dù lịch sử của bánh cupcake đã có từ rất lâu nhưng  Cupcake chỉ thật sử nổi lên như một trào lưu vào thế kỷ XXI. Cupcake thường được sử dụng như một món tráng miệng trong các buổi tiệc tùng hay gặp mặt. Với đặc điểm ngon và bắt mắt, Cupcake hiện đang được ưa chuộng bởi mọi lứa tuổi. Một chiếc bánh tuy nhìn sặc sỡ nhưng cách làm cũng không quá cầu kỳ, nếu có điều kiện bạn nên thử một lần làm chiếc bánh này tại nhà, không gì ngon bằng được thường thức những chiếc Chupcake nhỏ xinh do chính tay mình làm.     ', 'Mặc dù lịch sử của bánh cupcake đã có từ rất lâu nhưng  Cupcake chỉ thật sử nổi lên như một trào lưu vào thế kỷ XXI. Cupcake thường được sử dụng như một món tráng miệng trong các buổi tiệc tùng hay gặp mặt. Với đặc điểm ngon và bắt mắt, Cupcake hiện đang được ưa chuộng bởi mọi lứa tuổi. Một chiếc bánh tuy nhìn sặc sỡ nhưng cách làm cũng không quá cầu kỳ, nếu có điều kiện bạn nên thử một lần làm chiếc bánh này tại nhà, không gì ngon bằng được thường thức những chiếc Chupcake nhỏ xinh do chính tay mình làm.\r\n\r\n       ', 'Mặc dù lịch sử của bánh cupcake đã có từ rất lâu nhưng  Cupcake chỉ thật sử nổi lên như một trào lưu vào thế kỷ XXI. Cupcake thường được sử dụng như một món tráng miệng trong các buổi tiệc tùng hay gặp mặt. Với đặc điểm ngon và bắt mắt, Cupcake hiện đang được ưa chuộng bởi mọi lứa tuổi. Một chiếc bánh tuy nhìn sặc sỡ nhưng cách làm cũng không quá cầu kỳ, nếu có điều kiện bạn nên thử một lần làm chiếc bánh này tại nhà, không gì ngon bằng được thường thức những chiếc Chupcake nhỏ xinh do chính tay mình làm.\r\n\r\n       ', 'Mặc dù lịch sử của bánh cupcake đã có từ rất lâu nhưng  Cupcake chỉ thật sử nổi lên như một trào lưu vào thế kỷ XXI. Cupcake thường được sử dụng như một món tráng miệng trong các buổi tiệc tùng hay gặp mặt. Với đặc điểm ngon và bắt mắt, Cupcake hiện đang được ưa chuộng bởi mọi lứa tuổi. Một chiếc bánh tuy nhìn sặc sỡ nhưng cách làm cũng không quá cầu kỳ, nếu có điều kiện bạn nên thử một lần làm chiếc bánh này tại nhà, không gì ngon bằng được thường thức những chiếc Chupcake nhỏ xinh do chính tay mình làm.\r\n\r\n       ', 'Đồng Thấp       ', '2/2/2022       ', '10- 30 cm        ', 'Nguyễn Minh Thiện       ', 'Hoa Hồng Nhập Khẩu       '),
('24235353', 235345, 'bánh bột chiên', 'Mặc dù lịch sử của bánh cupcake đã có từ rất lâu nhưng  Cupcake chỉ thật sử nổi lên như một trào lưu vào thế kỷ XXI. Cupcake thường được sử dụng như một món tráng miệng trong các buổi tiệc tùng hay gặp mặt. Với đặc điểm ngon và bắt mắt, Cupcake hiện đang được ưa chuộng bởi mọi lứa tuổi. Một chiếc bánh tuy nhìn sặc sỡ nhưng cách làm cũng không quá cầu kỳ, nếu có điều kiện bạn nên thử một lần làm chiếc bánh này tại nhà, không gì ngon bằng được thường thức những chiếc Chupcake nhỏ xinh do chính tay mình làm.\r\n\r\n        ', 44, 38, 'bot-chien.jpg', 'banh-chuoi-nuong.jpeg', 'banh_lava_pho_mai_nuong.jpeg', 'bot-chien.jpg', 1, 'Mặc dù lịch sử của bánh cupcake đã có từ rất lâu nhưng  Cupcake chỉ thật sử nổi lên như một trào lưu vào thế kỷ XXI. Cupcake thường được sử dụng như một món tráng miệng trong các buổi tiệc tùng hay gặp mặt. Với đặc điểm ngon và bắt mắt, Cupcake hiện đang được ưa chuộng bởi mọi lứa tuổi. Một chiếc bánh tuy nhìn sặc sỡ nhưng cách làm cũng không quá cầu kỳ, nếu có điều kiện bạn nên thử một lần làm chiếc bánh này tại nhà, không gì ngon bằng được thường thức những chiếc Chupcake nhỏ xinh do chính tay mình làm.      ', 'Mặc dù lịch sử của bánh cupcake đã có từ rất lâu nhưng  Cupcake chỉ thật sử nổi lên như một trào lưu vào thế kỷ XXI. Cupcake thường được sử dụng như một món tráng miệng trong các buổi tiệc tùng hay gặp mặt. Với đặc điểm ngon và bắt mắt, Cupcake hiện đang được ưa chuộng bởi mọi lứa tuổi. Một chiếc bánh tuy nhìn sặc sỡ nhưng cách làm cũng không quá cầu kỳ, nếu có điều kiện bạn nên thử một lần làm chiếc bánh này tại nhà, không gì ngon bằng được thường thức những chiếc Chupcake nhỏ xinh do chính tay mình làm.\r\n\r\n        ', 'Mặc dù lịch sử của bánh cupcake đã có từ rất lâu nhưng  Cupcake chỉ thật sử nổi lên như một trào lưu vào thế kỷ XXI. Cupcake thường được sử dụng như một món tráng miệng trong các buổi tiệc tùng hay gặp mặt. Với đặc điểm ngon và bắt mắt, Cupcake hiện đang được ưa chuộng bởi mọi lứa tuổi. Một chiếc bánh tuy nhìn sặc sỡ nhưng cách làm cũng không quá cầu kỳ, nếu có điều kiện bạn nên thử một lần làm chiếc bánh này tại nhà, không gì ngon bằng được thường thức những chiếc Chupcake nhỏ xinh do chính tay mình làm.\r\n\r\n        ', 'Mặc dù lịch sử của bánh cupcake đã có từ rất lâu nhưng  Cupcake chỉ thật sử nổi lên như một trào lưu vào thế kỷ XXI. Cupcake thường được sử dụng như một món tráng miệng trong các buổi tiệc tùng hay gặp mặt. Với đặc điểm ngon và bắt mắt, Cupcake hiện đang được ưa chuộng bởi mọi lứa tuổi. Một chiếc bánh tuy nhìn sặc sỡ nhưng cách làm cũng không quá cầu kỳ, nếu có điều kiện bạn nên thử một lần làm chiếc bánh này tại nhà, không gì ngon bằng được thường thức những chiếc Chupcake nhỏ xinh do chính tay mình làm.\r\n\r\n        ', 'Hải Dương          ', '2/11/2023        ', '10- 30 cm         ', 'Vũ Thị Bắc          ', 'hoa hồng cổ            '),
('23435345', 235345, 'Cơm cháy chà bông', 'Mặc dù lịch sử của bánh cupcake đã có từ rất lâu nhưng  Cupcake chỉ thật sử nổi lên như một trào lưu vào thế kỷ XXI. Cupcake thường được sử dụng như một món tráng miệng trong các buổi tiệc tùng hay gặp mặt. Với đặc điểm ngon và bắt mắt, Cupcake hiện đang được ưa chuộng bởi mọi lứa tuổi. Một chiếc bánh tuy nhìn sặc sỡ nhưng cách làm cũng không quá cầu kỳ, nếu có điều kiện bạn nên thử một lần làm chiếc bánh này tại nhà, không gì ngon bằng được thường thức những chiếc Chupcake nhỏ xinh do chính tay mình làm.\r\n\r\n        ', 77, 54, 'com-chay-cha-bong.jpg', 'banh-bong-lan-chanh-day.jpeg', 'banh-chuoi-nuong.jpeg', 'com-chay-cha-bong.jpg', 1, 'Mặc dù lịch sử của bánh cupcake đã có từ rất lâu nhưng  Cupcake chỉ thật sử nổi lên như một trào lưu vào thế kỷ XXI. Cupcake thường được sử dụng như một món tráng miệng trong các buổi tiệc tùng hay gặp mặt. Với đặc điểm ngon và bắt mắt, Cupcake hiện đang được ưa chuộng bởi mọi lứa tuổi. Một chiếc bánh tuy nhìn sặc sỡ nhưng cách làm cũng không quá cầu kỳ, nếu có điều kiện bạn nên thử một lần làm chiếc bánh này tại nhà, không gì ngon bằng được thường thức những chiếc Chupcake nhỏ xinh do chính tay mình làm.      ', 'Mặc dù lịch sử của bánh cupcake đã có từ rất lâu nhưng  Cupcake chỉ thật sử nổi lên như một trào lưu vào thế kỷ XXI. Cupcake thường được sử dụng như một món tráng miệng trong các buổi tiệc tùng hay gặp mặt. Với đặc điểm ngon và bắt mắt, Cupcake hiện đang được ưa chuộng bởi mọi lứa tuổi. Một chiếc bánh tuy nhìn sặc sỡ nhưng cách làm cũng không quá cầu kỳ, nếu có điều kiện bạn nên thử một lần làm chiếc bánh này tại nhà, không gì ngon bằng được thường thức những chiếc Chupcake nhỏ xinh do chính tay mình làm.\r\n\r\n        ', 'Mặc dù lịch sử của bánh cupcake đã có từ rất lâu nhưng  Cupcake chỉ thật sử nổi lên như một trào lưu vào thế kỷ XXI. Cupcake thường được sử dụng như một món tráng miệng trong các buổi tiệc tùng hay gặp mặt. Với đặc điểm ngon và bắt mắt, Cupcake hiện đang được ưa chuộng bởi mọi lứa tuổi. Một chiếc bánh tuy nhìn sặc sỡ nhưng cách làm cũng không quá cầu kỳ, nếu có điều kiện bạn nên thử một lần làm chiếc bánh này tại nhà, không gì ngon bằng được thường thức những chiếc Chupcake nhỏ xinh do chính tay mình làm.\r\n\r\n        ', 'Mặc dù lịch sử của bánh cupcake đã có từ rất lâu nhưng  Cupcake chỉ thật sử nổi lên như một trào lưu vào thế kỷ XXI. Cupcake thường được sử dụng như một món tráng miệng trong các buổi tiệc tùng hay gặp mặt. Với đặc điểm ngon và bắt mắt, Cupcake hiện đang được ưa chuộng bởi mọi lứa tuổi. Một chiếc bánh tuy nhìn sặc sỡ nhưng cách làm cũng không quá cầu kỳ, nếu có điều kiện bạn nên thử một lần làm chiếc bánh này tại nhà, không gì ngon bằng được thường thức những chiếc Chupcake nhỏ xinh do chính tay mình làm.\r\n\r\n        ', 'tuyên quang        ', '2/2/2022        ', '30cm- 70cm        ', 'hi        ', 'Hoa Lan        '),
('234345', 32424, 'Bún cá diêu hồng', 'Mặc dù lịch sử của bánh cupcake đã có từ rất lâu nhưng  Cupcake chỉ thật sử nổi lên như một trào lưu vào thế kỷ XXI. Cupcake thường được sử dụng như một món tráng miệng trong các buổi tiệc tùng hay gặp mặt. Với đặc điểm ngon và bắt mắt, Cupcake hiện đang được ưa chuộng bởi mọi lứa tuổi. Một chiếc bánh tuy nhìn sặc sỡ nhưng cách làm cũng không quá cầu kỳ, nếu có điều kiện bạn nên thử một lần làm chiếc bánh này tại nhà, không gì ngon bằng được thường thức những chiếc Chupcake nhỏ xinh do chính tay mình làm.\r\n\r\n        ', 34, 31, 'bun_ca_hanh_phi.jpeg', 'combo-vitquay-va-goivit.jpeg', 'dau-hu-xao-nam-chay.png', 'bun_ca_hanh_phi.jpeg', 1, 'Mặc dù lịch sử của bánh cupcake đã có từ rất lâu nhưng  Cupcake chỉ thật sử nổi lên như một trào lưu vào thế kỷ XXI. Cupcake thường được sử dụng như một món tráng miệng trong các buổi tiệc tùng hay gặp mặt. Với đặc điểm ngon và bắt mắt, Cupcake hiện đang được ưa chuộng bởi mọi lứa tuổi. Một chiếc bánh tuy nhìn sặc sỡ nhưng cách làm cũng không quá cầu kỳ, nếu có điều kiện bạn nên thử một lần làm chiếc bánh này tại nhà, không gì ngon bằng được thường thức những chiếc Chupcake nhỏ xinh do chính tay mình làm.      ', 'Mặc dù lịch sử của bánh cupcake đã có từ rất lâu nhưng  Cupcake chỉ thật sử nổi lên như một trào lưu vào thế kỷ XXI. Cupcake thường được sử dụng như một món tráng miệng trong các buổi tiệc tùng hay gặp mặt. Với đặc điểm ngon và bắt mắt, Cupcake hiện đang được ưa chuộng bởi mọi lứa tuổi. Một chiếc bánh tuy nhìn sặc sỡ nhưng cách làm cũng không quá cầu kỳ, nếu có điều kiện bạn nên thử một lần làm chiếc bánh này tại nhà, không gì ngon bằng được thường thức những chiếc Chupcake nhỏ xinh do chính tay mình làm.\r\n\r\n        ', 'Mặc dù lịch sử của bánh cupcake đã có từ rất lâu nhưng  Cupcake chỉ thật sử nổi lên như một trào lưu vào thế kỷ XXI. Cupcake thường được sử dụng như một món tráng miệng trong các buổi tiệc tùng hay gặp mặt. Với đặc điểm ngon và bắt mắt, Cupcake hiện đang được ưa chuộng bởi mọi lứa tuổi. Một chiếc bánh tuy nhìn sặc sỡ nhưng cách làm cũng không quá cầu kỳ, nếu có điều kiện bạn nên thử một lần làm chiếc bánh này tại nhà, không gì ngon bằng được thường thức những chiếc Chupcake nhỏ xinh do chính tay mình làm.\r\n\r\n        ', 'Mặc dù lịch sử của bánh cupcake đã có từ rất lâu nhưng  Cupcake chỉ thật sử nổi lên như một trào lưu vào thế kỷ XXI. Cupcake thường được sử dụng như một món tráng miệng trong các buổi tiệc tùng hay gặp mặt. Với đặc điểm ngon và bắt mắt, Cupcake hiện đang được ưa chuộng bởi mọi lứa tuổi. Một chiếc bánh tuy nhìn sặc sỡ nhưng cách làm cũng không quá cầu kỳ, nếu có điều kiện bạn nên thử một lần làm chiếc bánh này tại nhà, không gì ngon bằng được thường thức những chiếc Chupcake nhỏ xinh do chính tay mình làm.\r\n\r\n        ', 'tuyên quang        ', '2/2/2022        ', 'gfh        ', 'Vũ Thị Bắc        ', 'Cúc        '),
('3436547568', 3242, 'bò bitette', 'Mặc dù lịch sử của bánh cupcake đã có từ rất lâu nhưng  Cupcake chỉ thật sử nổi lên như một trào lưu vào thế kỷ XXI. Cupcake thường được sử dụng như một món tráng miệng trong các buổi tiệc tùng hay gặp mặt. Với đặc điểm ngon và bắt mắt, Cupcake hiện đang được ưa chuộng bởi mọi lứa tuổi. Một chiếc bánh tuy nhìn sặc sỡ nhưng cách làm cũng không quá cầu kỳ, nếu có điều kiện bạn nên thử một lần làm chiếc bánh này tại nhà, không gì ngon bằng được thường thức những chiếc Chupcake nhỏ xinh do chính tay mình làm.\r\n\r\n        ', 44, 29, 'combo-vitquay-va-goivit.jpeg', 'banh-chuoi-nuong.jpeg', 'banh_cookie_dua.jpeg', 'combo-vitquay-va-goivit.jpeg', 1, 'Mặc dù lịch sử của bánh cupcake đã có từ rất lâu nhưng  Cupcake chỉ thật sử nổi lên như một trào lưu vào thế kỷ XXI. Cupcake thường được sử dụng như một món tráng miệng trong các buổi tiệc tùng hay gặp mặt. Với đặc điểm ngon và bắt mắt, Cupcake hiện đang được ưa chuộng bởi mọi lứa tuổi. Một chiếc bánh tuy nhìn sặc sỡ nhưng cách làm cũng không quá cầu kỳ, nếu có điều kiện bạn nên thử một lần làm chiếc bánh này tại nhà, không gì ngon bằng được thường thức những chiếc Chupcake nhỏ xinh do chính tay mình làm.      ', 'Mặc dù lịch sử của bánh cupcake đã có từ rất lâu nhưng  Cupcake chỉ thật sử nổi lên như một trào lưu vào thế kỷ XXI. Cupcake thường được sử dụng như một món tráng miệng trong các buổi tiệc tùng hay gặp mặt. Với đặc điểm ngon và bắt mắt, Cupcake hiện đang được ưa chuộng bởi mọi lứa tuổi. Một chiếc bánh tuy nhìn sặc sỡ nhưng cách làm cũng không quá cầu kỳ, nếu có điều kiện bạn nên thử một lần làm chiếc bánh này tại nhà, không gì ngon bằng được thường thức những chiếc Chupcake nhỏ xinh do chính tay mình làm.\r\n\r\n        ', 'Mặc dù lịch sử của bánh cupcake đã có từ rất lâu nhưng  Cupcake chỉ thật sử nổi lên như một trào lưu vào thế kỷ XXI. Cupcake thường được sử dụng như một món tráng miệng trong các buổi tiệc tùng hay gặp mặt. Với đặc điểm ngon và bắt mắt, Cupcake hiện đang được ưa chuộng bởi mọi lứa tuổi. Một chiếc bánh tuy nhìn sặc sỡ nhưng cách làm cũng không quá cầu kỳ, nếu có điều kiện bạn nên thử một lần làm chiếc bánh này tại nhà, không gì ngon bằng được thường thức những chiếc Chupcake nhỏ xinh do chính tay mình làm.\r\n\r\n        ', 'Mặc dù lịch sử của bánh cupcake đã có từ rất lâu nhưng  Cupcake chỉ thật sử nổi lên như một trào lưu vào thế kỷ XXI. Cupcake thường được sử dụng như một món tráng miệng trong các buổi tiệc tùng hay gặp mặt. Với đặc điểm ngon và bắt mắt, Cupcake hiện đang được ưa chuộng bởi mọi lứa tuổi. Một chiếc bánh tuy nhìn sặc sỡ nhưng cách làm cũng không quá cầu kỳ, nếu có điều kiện bạn nên thử một lần làm chiếc bánh này tại nhà, không gì ngon bằng được thường thức những chiếc Chupcake nhỏ xinh do chính tay mình làm.\r\n\r\n        ', 'Tiên Quang        ', '2/11/2023        ', '10- 30 cm         ', 'Vũ Thị Bắc        ', 'Hoa Lan        '),
('47', 3242, 'thịt khâu nhục', 'Mặc dù lịch sử của bánh cupcake đã có từ rất lâu nhưng Cupcake chỉ thật sử nổi lên như một trào lưu vào thế kỷ XXI. Cupcake thường được sử dụng như một món tráng miệng trong các buổi tiệc tùng hay gặp mặt. Với đặc điểm ngon và bắt mắt, Cupcake hiện đang được ưa chuộng bởi mọi lứa tuổi. Một chiếc bánh tuy nhìn sặc sỡ nhưng cách làm cũng không quá cầu kỳ, nếu có điều kiện bạn nên thử một lần làm chiếc bánh này tại nhà, không gì ngon bằng được thường thức những chiếc Chupcake nhỏ xinh do chính tay mình làm.      ', 345, 232, 'khau-nhuc.jpeg', 'combo-vitquay-va-goivit.jpeg', 'banh-bong-lan-chanh-day.jpeg', 'khau-nhuc.jpeg', 1, 'Mặc dù lịch sử của bánh cupcake đã có từ rất lâu nhưng Cupcake chỉ thật sử nổi lên như một trào lưu vào thế kỷ XXI. Cupcake thường được sử dụng như một món tráng miệng trong các buổi tiệc tùng hay gặp mặt. Với đặc điểm ngon và bắt mắt, Cupcake hiện đang được ưa chuộng bởi mọi lứa tuổi. Một chiếc bánh tuy nhìn sặc sỡ nhưng cách làm cũng không quá cầu kỳ, nếu có điều kiện bạn nên thử một lần làm chiếc bánh này tại nhà, không gì ngon bằng được thường thức những chiếc Chupcake nhỏ xinh do chính tay mình làm.    ', 'Mặc dù lịch sử của bánh cupcake đã có từ rất lâu nhưng Cupcake chỉ thật sử nổi lên như một trào lưu vào thế kỷ XXI. Cupcake thường được sử dụng như một món tráng miệng trong các buổi tiệc tùng hay gặp mặt. Với đặc điểm ngon và bắt mắt, Cupcake hiện đang được ưa chuộng bởi mọi lứa tuổi. Một chiếc bánh tuy nhìn sặc sỡ nhưng cách làm cũng không quá cầu kỳ, nếu có điều kiện bạn nên thử một lần làm chiếc bánh này tại nhà, không gì ngon bằng được thường thức những chiếc Chupcake nhỏ xinh do chính tay mình làm.      ', 'Mặc dù lịch sử của bánh cupcake đã có từ rất lâu nhưng Cupcake chỉ thật sử nổi lên như một trào lưu vào thế kỷ XXI. Cupcake thường được sử dụng như một món tráng miệng trong các buổi tiệc tùng hay gặp mặt. Với đặc điểm ngon và bắt mắt, Cupcake hiện đang được ưa chuộng bởi mọi lứa tuổi. Một chiếc bánh tuy nhìn sặc sỡ nhưng cách làm cũng không quá cầu kỳ, nếu có điều kiện bạn nên thử một lần làm chiếc bánh này tại nhà, không gì ngon bằng được thường thức những chiếc Chupcake nhỏ xinh do chính tay mình làm.      ', 'Mặc dù lịch sử của bánh cupcake đã có từ rất lâu nhưng Cupcake chỉ thật sử nổi lên như một trào lưu vào thế kỷ XXI. Cupcake thường được sử dụng như một món tráng miệng trong các buổi tiệc tùng hay gặp mặt. Với đặc điểm ngon và bắt mắt, Cupcake hiện đang được ưa chuộng bởi mọi lứa tuổi. Một chiếc bánh tuy nhìn sặc sỡ nhưng cách làm cũng không quá cầu kỳ, nếu có điều kiện bạn nên thử một lần làm chiếc bánh này tại nhà, không gì ngon bằng được thường thức những chiếc Chupcake nhỏ xinh do chính tay mình làm.      ', 'tuyên quang      ', '11/2/2023      ', '10cm-30cm      ', 'Vũ Thị Bắc      ', 'Hoa Lan      '),
('4543', 3242, 'nọm bò cay', 'Mặc dù lịch sử của bánh cupcake đã có từ rất lâu nhưng Cupcake chỉ thật sử nổi lên như một trào lưu vào thế kỷ XXI. Cupcake thường được sử dụng như một món tráng miệng trong các buổi tiệc tùng hay gặp mặt. Với đặc điểm ngon và bắt mắt, Cupcake hiện đang được ưa chuộng bởi mọi lứa tuổi. Một chiếc bánh tuy nhìn sặc sỡ nhưng cách làm cũng không quá cầu kỳ, nếu có điều kiện bạn nên thử một lần làm chiếc bánh này tại nhà, không gì ngon bằng được thường thức những chiếc Chupcake nhỏ xinh do chính tay mình làm.      ', 333, 321, 'goi-bo-kho.jpg', 'bot-chien.jpg', 'bun_ca_hanh_phi.jpeg', 'goi-bo-kho.jpg', 1, 'Mặc dù lịch sử của bánh cupcake đã có từ rất lâu nhưng Cupcake chỉ thật sử nổi lên như một trào lưu vào thế kỷ XXI. Cupcake thường được sử dụng như một món tráng miệng trong các buổi tiệc tùng hay gặp mặt. Với đặc điểm ngon và bắt mắt, Cupcake hiện đang được ưa chuộng bởi mọi lứa tuổi. Một chiếc bánh tuy nhìn sặc sỡ nhưng cách làm cũng không quá cầu kỳ, nếu có điều kiện bạn nên thử một lần làm chiếc bánh này tại nhà, không gì ngon bằng được thường thức những chiếc Chupcake nhỏ xinh do chính tay mình làm.    ', 'Mặc dù lịch sử của bánh cupcake đã có từ rất lâu nhưng Cupcake chỉ thật sử nổi lên như một trào lưu vào thế kỷ XXI. Cupcake thường được sử dụng như một món tráng miệng trong các buổi tiệc tùng hay gặp mặt. Với đặc điểm ngon và bắt mắt, Cupcake hiện đang được ưa chuộng bởi mọi lứa tuổi. Một chiếc bánh tuy nhìn sặc sỡ nhưng cách làm cũng không quá cầu kỳ, nếu có điều kiện bạn nên thử một lần làm chiếc bánh này tại nhà, không gì ngon bằng được thường thức những chiếc Chupcake nhỏ xinh do chính tay mình làm.      ', 'Mặc dù lịch sử của bánh cupcake đã có từ rất lâu nhưng Cupcake chỉ thật sử nổi lên như một trào lưu vào thế kỷ XXI. Cupcake thường được sử dụng như một món tráng miệng trong các buổi tiệc tùng hay gặp mặt. Với đặc điểm ngon và bắt mắt, Cupcake hiện đang được ưa chuộng bởi mọi lứa tuổi. Một chiếc bánh tuy nhìn sặc sỡ nhưng cách làm cũng không quá cầu kỳ, nếu có điều kiện bạn nên thử một lần làm chiếc bánh này tại nhà, không gì ngon bằng được thường thức những chiếc Chupcake nhỏ xinh do chính tay mình làm.      ', 'Mặc dù lịch sử của bánh cupcake đã có từ rất lâu nhưng Cupcake chỉ thật sử nổi lên như một trào lưu vào thế kỷ XXI. Cupcake thường được sử dụng như một món tráng miệng trong các buổi tiệc tùng hay gặp mặt. Với đặc điểm ngon và bắt mắt, Cupcake hiện đang được ưa chuộng bởi mọi lứa tuổi. Một chiếc bánh tuy nhìn sặc sỡ nhưng cách làm cũng không quá cầu kỳ, nếu có điều kiện bạn nên thử một lần làm chiếc bánh này tại nhà, không gì ngon bằng được thường thức những chiếc Chupcake nhỏ xinh do chính tay mình làm.      ', 'Tiên Quang      ', '11/2/2023      ', '10cm-30cm      ', 'Vũ Thị Bắc      ', 'Hoa Hồng Nhập Khẩu      '),
('666', 235345, 'cơm chà bông', 'Mặc dù lịch sử của bánh cupcake đã có từ rất lâu nhưng Cupcake chỉ thật sử nổi lên như một trào lưu vào thế kỷ XXI. Cupcake thường được sử dụng như một món tráng miệng trong các buổi tiệc tùng hay gặp mặt. Với đặc điểm ngon và bắt mắt, Cupcake hiện đang được ưa chuộng bởi mọi lứa tuổi. Một chiếc bánh tuy nhìn sặc sỡ nhưng cách làm cũng không quá cầu kỳ, nếu có điều kiện bạn nên thử một lần làm chiếc bánh này tại nhà, không gì ngon bằng được thường thức những chiếc Chupcake nhỏ xinh do chính tay mình làm.       ', 321, 222, 'com_chien_cua.png', 'bot-chien.jpg', 'banh-chuoi-nuong.jpeg', 'com_chien_cua.png', 1, 'Mặc dù lịch sử của bánh cupcake đã có từ rất lâu nhưng Cupcake chỉ thật sử nổi lên như một trào lưu vào thế kỷ XXI. Cupcake thường được sử dụng như một món tráng miệng trong các buổi tiệc tùng hay gặp mặt. Với đặc điểm ngon và bắt mắt, Cupcake hiện đang được ưa chuộng bởi mọi lứa tuổi. Một chiếc bánh tuy nhìn sặc sỡ nhưng cách làm cũng không quá cầu kỳ, nếu có điều kiện bạn nên thử một lần làm chiếc bánh này tại nhà, không gì ngon bằng được thường thức những chiếc Chupcake nhỏ xinh do chính tay mình làm.     ', 'Mặc dù lịch sử của bánh cupcake đã có từ rất lâu nhưng Cupcake chỉ thật sử nổi lên như một trào lưu vào thế kỷ XXI. Cupcake thường được sử dụng như một món tráng miệng trong các buổi tiệc tùng hay gặp mặt. Với đặc điểm ngon và bắt mắt, Cupcake hiện đang được ưa chuộng bởi mọi lứa tuổi. Một chiếc bánh tuy nhìn sặc sỡ nhưng cách làm cũng không quá cầu kỳ, nếu có điều kiện bạn nên thử một lần làm chiếc bánh này tại nhà, không gì ngon bằng được thường thức những chiếc Chupcake nhỏ xinh do chính tay mình làm.       ', 'Mặc dù lịch sử của bánh cupcake đã có từ rất lâu nhưng Cupcake chỉ thật sử nổi lên như một trào lưu vào thế kỷ XXI. Cupcake thường được sử dụng như một món tráng miệng trong các buổi tiệc tùng hay gặp mặt. Với đặc điểm ngon và bắt mắt, Cupcake hiện đang được ưa chuộng bởi mọi lứa tuổi. Một chiếc bánh tuy nhìn sặc sỡ nhưng cách làm cũng không quá cầu kỳ, nếu có điều kiện bạn nên thử một lần làm chiếc bánh này tại nhà, không gì ngon bằng được thường thức những chiếc Chupcake nhỏ xinh do chính tay mình làm.       ', 'Mặc dù lịch sử của bánh cupcake đã có từ rất lâu nhưng Cupcake chỉ thật sử nổi lên như một trào lưu vào thế kỷ XXI. Cupcake thường được sử dụng như một món tráng miệng trong các buổi tiệc tùng hay gặp mặt. Với đặc điểm ngon và bắt mắt, Cupcake hiện đang được ưa chuộng bởi mọi lứa tuổi. Một chiếc bánh tuy nhìn sặc sỡ nhưng cách làm cũng không quá cầu kỳ, nếu có điều kiện bạn nên thử một lần làm chiếc bánh này tại nhà, không gì ngon bằng được thường thức những chiếc Chupcake nhỏ xinh do chính tay mình làm.       ', 'Đồng Thấp       ', '2/11/2023       ', '30cm- 70cm       ', 'Vũ Thị Bắc         ', 'Hoa Hồng Nhập Khẩu       '),
('87', 3242, 'sườn bò bbq', '	Mặc dù lịch sử của bánh cupcake đã có từ rất lâu nhưng Cupcake chỉ thật sử nổi lên như một trào lưu vào thế kỷ XXI. Cupcake thường được sử dụng như một món tráng miệng trong các buổi tiệc tùng hay gặp mặt. Với đặc điểm ngon và bắt mắt, Cupcake hiện đang được ưa chuộng bởi mọi lứa tuổi. Một chiếc bánh tuy nhìn sặc sỡ nhưng cách làm cũng không quá cầu kỳ, nếu có điều kiện bạn nên thử một lần làm chiếc bánh này tại nhà, không gì ngon bằng được thường thức những chiếc Chupcake nhỏ     ', 34, 33, 'banh-chuoi-nuong.jpeg', 'banh_lava_pho_mai_nuong.jpeg', 'cha-que-chay.png', 'banh-chuoi-nuong.jpeg', 1, '	Mặc dù lịch sử của bánh cupcake đã có từ rất lâu nhưng Cupcake chỉ thật sử nổi lên như một trào lưu vào thế kỷ XXI. Cupcake thường được sử dụng như một món tráng miệng trong các buổi tiệc tùng hay gặp mặt. Với đặc điểm ngon và bắt mắt, Cupcake hiện đang được ưa chuộng bởi mọi lứa tuổi. Một chiếc bánh tuy nhìn sặc sỡ nhưng cách làm cũng không quá cầu kỳ, nếu có điều kiện bạn nên thử một lần làm chiếc bánh này tại nhà, không gì ngon bằng được thường thức những chiếc Chupcake nhỏ xinh do chính tay mình làm.   ', '	Mặc dù lịch sử của bánh cupcake đã có từ rất lâu nhưng Cupcake chỉ thật sử nổi lên như một trào lưu vào thế kỷ XXI. Cupcake thường được sử dụng như một món tráng miệng trong các buổi tiệc tùng hay gặp mặt. Với đặc điểm ngon và bắt mắt, Cupcake hiện đang được ưa chuộng bởi mọi lứa tuổi. Một chiếc bánh tuy nhìn sặc sỡ nhưng cách làm cũng không quá cầu kỳ, nếu có điều kiện bạn nên thử một lần làm chiếc bánh này tại nhà, không gì ngon bằng được thường thức những chiếc Chupcake nhỏ xinh do chính tay mình làm.     ', '	Mặc dù lịch sử của bánh cupcake đã có từ rất lâu nhưng Cupcake chỉ thật sử nổi lên như một trào lưu vào thế kỷ XXI. Cupcake thường được sử dụng như một món tráng miệng trong các buổi tiệc tùng hay gặp mặt. Với đặc điểm ngon và bắt mắt, Cupcake hiện đang được ưa chuộng bởi mọi lứa tuổi. Một chiếc bánh tuy nhìn sặc sỡ nhưng cách làm cũng không quá cầu kỳ, nếu có điều kiện bạn nên thử một lần làm chiếc bánh này tại nhà, không gì ngon bằng được thường thức những chiếc Chupcake nhỏ xinh do chính tay mình làm.     ', '	Mặc dù lịch sử của bánh cupcake đã có từ rất lâu nhưng Cupcake chỉ thật sử nổi lên như một trào lưu vào thế kỷ XXI. Cupcake thường được sử dụng như một món tráng miệng trong các buổi tiệc tùng hay gặp mặt. Với đặc điểm ngon và bắt mắt, Cupcake hiện đang được ưa chuộng bởi mọi lứa tuổi. Một chiếc bánh tuy nhìn sặc sỡ nhưng cách làm cũng không quá cầu kỳ, nếu có điều kiện bạn nên thử một lần làm chiếc bánh này tại nhà, không gì ngon bằng được thường thức những chiếc Chupcake nhỏ xinh do chính tay mình làm.     ', 'Hải Dương       ', '11/2/2023     ', '10cm-30cm     ', 'Vũ Thị Bắc       ', 'hoa hồng cổ         '),
('45', 3242, 'chả cá chiên xù', '	Mặc dù lịch sử của bánh cupcake đã có từ rất lâu nhưng Cupcake chỉ thật sử nổi lên như một trào lưu vào thế kỷ XXI. Cupcake thường được sử dụng như một món tráng miệng trong các buổi tiệc tùng hay gặp mặt. Với đặc điểm ngon và bắt mắt, Cupcake hiện đang được ưa chuộng bởi mọi lứa tuổi. Một chiếc bánh tuy nhìn sặc sỡ nhưng cách làm cũng không quá cầu kỳ, nếu có điều kiện bạn nên thử một lần làm chiếc bánh này tại nhà, không gì ngon bằng được thường thức những chiếc Chupcake nhỏ xinh do chính tay mình làm.        ', 54, 33, 'pha-lau.jpg', 'banh-trang-nuong.jpg', 'com-chay-cha-bong.jpg', 'pha-lau.jpg', 1, '	Mặc dù lịch sử của bánh cupcake đã có từ rất lâu nhưng Cupcake chỉ thật sử nổi lên như một trào lưu vào thế kỷ XXI. Cupcake thường được sử dụng như một món tráng miệng trong các buổi tiệc tùng hay gặp mặt. Với đặc điểm ngon và bắt mắt, Cupcake hiện đang được ưa chuộng bởi mọi lứa tuổi. Một chiếc bánh tuy nhìn sặc sỡ nhưng cách làm cũng không quá cầu kỳ, nếu có điều kiện bạn nên thử một lần làm chiếc bánh này tại nhà, không gì ngon bằng được thường thức những chiếc Chupcake nhỏ xinh do chính tay mình làm.      ', '	Mặc dù lịch sử của bánh cupcake đã có từ rất lâu nhưng Cupcake chỉ thật sử nổi lên như một trào lưu vào thế kỷ XXI. Cupcake thường được sử dụng như một món tráng miệng trong các buổi tiệc tùng hay gặp mặt. Với đặc điểm ngon và bắt mắt, Cupcake hiện đang được ưa chuộng bởi mọi lứa tuổi. Một chiếc bánh tuy nhìn sặc sỡ nhưng cách làm cũng không quá cầu kỳ, nếu có điều kiện bạn nên thử một lần làm chiếc bánh này tại nhà, không gì ngon bằng được thường thức những chiếc Chupcake nhỏ xinh do chính tay mình làm.        ', '	Mặc dù lịch sử của bánh cupcake đã có từ rất lâu nhưng Cupcake chỉ thật sử nổi lên như một trào lưu vào thế kỷ XXI. Cupcake thường được sử dụng như một món tráng miệng trong các buổi tiệc tùng hay gặp mặt. Với đặc điểm ngon và bắt mắt, Cupcake hiện đang được ưa chuộng bởi mọi lứa tuổi. Một chiếc bánh tuy nhìn sặc sỡ nhưng cách làm cũng không quá cầu kỳ, nếu có điều kiện bạn nên thử một lần làm chiếc bánh này tại nhà, không gì ngon bằng được thường thức những chiếc Chupcake nhỏ xinh do chính tay mình làm.        ', '	Mặc dù lịch sử của bánh cupcake đã có từ rất lâu nhưng Cupcake chỉ thật sử nổi lên như một trào lưu vào thế kỷ XXI. Cupcake thường được sử dụng như một món tráng miệng trong các buổi tiệc tùng hay gặp mặt. Với đặc điểm ngon và bắt mắt, Cupcake hiện đang được ưa chuộng bởi mọi lứa tuổi. Một chiếc bánh tuy nhìn sặc sỡ nhưng cách làm cũng không quá cầu kỳ, nếu có điều kiện bạn nên thử một lần làm chiếc bánh này tại nhà, không gì ngon bằng được thường thức những chiếc Chupcake nhỏ xinh do chính tay mình làm.        ', 'Hải Dương          ', '11/2/2023        ', '10- 30 cm         ', 'Nguyễn Minh Thiện        ', 'Hoa Lan        ');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham_nhom`
--

CREATE TABLE `sanpham_nhom` (
  `id` int(11) NOT NULL,
  `tennhom` varchar(100) NOT NULL,
  `ghichu` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham_nhom`
--

INSERT INTO `sanpham_nhom` (`id`, `tennhom`, `ghichu`) VALUES
(3242, 'Món ăn mặn', '2      '),
(32424, 'Món ăn nước', '4234      '),
(235345, 'món chay', '234      ');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `taikhoan`
--

CREATE TABLE `taikhoan` (
  `tendangnhap` varchar(50) NOT NULL,
  `matkhau` varchar(50) NOT NULL,
  `hoten` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `enable` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `taikhoan`
--

INSERT INTO `taikhoan` (`tendangnhap`, `matkhau`, `hoten`, `email`, `enable`) VALUES
('bac11', '111', 'Vũ Thị Bắc', 'Vurio410@gmail.com', 1);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `bill`
--
ALTER TABLE `bill`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
