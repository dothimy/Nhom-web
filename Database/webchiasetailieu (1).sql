-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th3 29, 2018 lúc 08:08 PM
-- Phiên bản máy phục vụ: 10.1.29-MariaDB
-- Phiên bản PHP: 7.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `webchiasetailieu`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chude`
--

CREATE TABLE `chude` (
  `idchude` int(11) NOT NULL,
  `tenchude` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `chude`
--

INSERT INTO `chude` (`idchude`, `tenchude`) VALUES
(1, 'Công nghệ thông tin'),
(2, 'Kinh tế'),
(3, 'Lịch Sử'),
(4, 'Khoa học\r\n');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nguoidung`
--

CREATE TABLE `nguoidung` (
  `idnguoidung` int(11) NOT NULL,
  `tennguoidung` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `pass` varchar(15) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nguoidung`
--

INSERT INTO `nguoidung` (`idnguoidung`, `tennguoidung`, `email`, `pass`) VALUES
(1, 'my', 'my@gmail.com', '7c4a8d09ca3762a'),
(2, 'thành', 'thanh@gmail.com', '7c4a8d09ca3762a'),
(3, 'my', 'my@gmail.com', '3d4f2bf07dc1be3'),
(4, 'thành', 'thanh@gmail.com', '7c4a8d09ca3762a');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tailieu`
--

CREATE TABLE `tailieu` (
  `idtailieu` int(11) NOT NULL,
  `tentailieu` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `idchude` int(11) NOT NULL,
  `tomtat` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `mota` varchar(1000) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `tailieu`
--

INSERT INTO `tailieu` (`idtailieu`, `tentailieu`, `idchude`, `tomtat`, `mota`) VALUES
(1, 'Chia sẻ để nhận ngay một khóa học trên internet', 1, 'Chia sẻ để nhận ngay một khóa học tại link này', '\r\nBài giảng Ngôn ngữ lập trình C/C++ gồm 8 chương:\r\n\r\nCÁC KHÁI NIỆM CƠ BẢN CỦA C++\r\nKIỂU DỮ LIỆU, BIỂU THỨC VÀ CÂU LỆNH\r\nCẤU TRÚC ĐIỀU KHIỂN VÀ DỮ LIỆU KIỂU MẢNG\r\nHÀM VÀ CHƯƠNG TRÌNH\r\nDỮ LIỆU KIỂU CẤU TRÚC VÀ HỢP\r\nĐỒ HỌA VÀ ÂM THANH\r\nLỚP VÀ ĐỐI TƯỢNG\r\nHÀM BẠN, ĐỊNH NGHĨA PHÉP TOÁN CHO LỚP'),
(2, 'KHÁM PHÁ - Tin tức khoa học công nghệ, bí ẩn vũ trụ', 4, 'KHAM PHA - Tin tức khoa học và công nghệ mới nhất. Khám phá thế giới, bí ẩn vũ trụ, thế giới tự nhiên, phát minh vĩ đại, sinh vật lạ, chuyện lạ ly kỳ.', 'Trông rùng rợn là thế nhưng ít ai ngờ loại búp bê này được coi là báu vật, thần may mắn của người Nhật Bản\r\n9 giờ trước\r\n\r\nTinh xảo, rực rỡ, ngộ nghĩnh và rùng rợn - cả bầu trời văn hóa Nhật Bản sẽ thu nhỏ lại trong một con… búp bê! Và tên của nó là Durama.'),
(5, '10 bài tập về thuật toán', 1, '\r\nBài số 01: Ma trận rương báu', 'Một lần dạo chơi ở Valoran, Lều có gặp và quen một người bạn đến từ Hư Không : Kassadin. Được Lều cứu mạng Kassadin cảm kích và chỉ cho Lều thuật “Hư vô bộ pháp”, và chỉ cho Lều đến kho báu xứ Valoran.\r\n\r\nKho báu xứ Valoran là một ma trận n hàng m cột đánh số từ 1, chia đều thành các phòng, mỗi phòng chứa một chiếc rương, mỗi chiếc rương được đánh dấu bởi 1 số nguyên dương trong khoảng từ 1đến p. Tuy nhiên, trong số n*m phòng đó chỉ có duy nhất một rương được đánh số p, cũng là số lớn nhất trong các số được đem đi đánh dấu … đó chính là chiếc rương duy nhất chứa kho báu.\r\n\r\nMuốn mở được một rương bất kỳ đánh số x, Lều phải có được chìa khóa từ rương đánh số (x-1) và mấu chốt để Lều lấy được kho báu chính là Lều đã được tặng chiếc chìa khóa số 0 ( mở được rương loại 1) , chiếc chìa khóa mà Kassadin lấy được từ chiếc rương HEXTECH cùi mía ở quê nhà.\r\n\r\nBan đầu Lều đứng ở phòng chỉ số (1;1) – hàng 1 , cột 1. Các phòng được ngăn cách với nhau và không có đường đi qua, và đây là lúc để Lều ');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `chude`
--
ALTER TABLE `chude`
  ADD PRIMARY KEY (`idchude`);

--
-- Chỉ mục cho bảng `nguoidung`
--
ALTER TABLE `nguoidung`
  ADD PRIMARY KEY (`idnguoidung`);

--
-- Chỉ mục cho bảng `tailieu`
--
ALTER TABLE `tailieu`
  ADD PRIMARY KEY (`idtailieu`),
  ADD KEY `idchude` (`idchude`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `chude`
--
ALTER TABLE `chude`
  MODIFY `idchude` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `nguoidung`
--
ALTER TABLE `nguoidung`
  MODIFY `idnguoidung` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `tailieu`
--
ALTER TABLE `tailieu`
  MODIFY `idtailieu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `tailieu`
--
ALTER TABLE `tailieu`
  ADD CONSTRAINT `tailieu_ibfk_1` FOREIGN KEY (`idchude`) REFERENCES `chude` (`idchude`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
