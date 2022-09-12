-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost
-- Thời gian đã tạo: Th9 12, 2022 lúc 02:02 AM
-- Phiên bản máy phục vụ: 10.4.21-MariaDB
-- Phiên bản PHP: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `gotap_gotap`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `accounts`
--

CREATE TABLE `accounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fullname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'avatars/default-avatar.png',
  `cover` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uuid` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `view` int(11) DEFAULT 0,
  `tap` int(11) DEFAULT 0,
  `click` int(11) DEFAULT 0,
  `member_id` bigint(20) UNSIGNED DEFAULT NULL,
  `theme_id` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `accounts`
--

INSERT INTO `accounts` (`id`, `fullname`, `username`, `description`, `avatar`, `cover`, `address`, `uuid`, `code`, `view`, `tap`, `click`, `member_id`, `theme_id`, `status`, `created_at`, `updated_at`) VALUES
(2, NULL, NULL, NULL, 'avatars/default-avatar.png', '', NULL, '2b879f0b-a542-43cf-9657-89e139539117', 'K95M', 0, 0, 0, NULL, 1, 'pending', '2021-09-28 15:14:52', '2021-10-25 07:17:01'),
(3, 'HOANG DUC HIEP', 'Hoang nam', 'Hà Nội', 'avatars/default-avatar.png', NULL, 'Nam', 'ea0278f2-8e76-4d3f-a850-1436b21de1de', 'RAZF', 3, 1, 2, 2, 1, 'pending', '2021-09-28 15:36:57', '2022-01-20 20:26:12'),
(4, 'HOANG DUC HIEP', 'Hoang Hiep', 'VIP PRO', 'avatars/avatar-1633882360878.png', 'covers/ccf6a539-a062-4980-a542-7d44e3b6af7e.jpeg', 'Hà Nội', 'bfd027cc-a630-42a2-9e86-b1338ae4a040', 'SCPM', 0, 0, 0, 3, 1, 'pending', '2021-09-29 04:22:19', '2022-01-20 20:25:31'),
(5, 'Hoàng Đức Hiệp', 'Hoang Duc Hiep', 'VIP Pro', 'avatars/avatar-1633883991908.png', 'covers/276b59c1-8709-4b33-971a-3c8101f6beda.jpeg', 'Hà Nội', '91df6b44-a37d-492b-a574-ee088110b2a1', 'MJBF', 21, 0, 21, 5, 2, 'pending', '2021-10-10 16:05:28', '2022-01-20 20:25:07'),
(6, 'Kiên Đạo Tặc', 'kdt', 'a', 'avatars/default-avatar.png', 'covers/default-cover.jpeg', 'a', '910abfcf-e35b-41a1-aab5-ba6680f0a1cf', 'DBOJ', 29, 6, 26, 1, 1, 'published', '2021-10-10 16:15:33', '2021-11-30 08:47:42'),
(8, NULL, NULL, NULL, NULL, NULL, NULL, '573c1441-ae9a-493c-aa21-9dbad0544e82', 'ZXWF', 0, 0, 0, NULL, 1, 'pending', '2021-10-12 10:02:24', '2021-10-12 10:02:24'),
(9, 'Gotap', 'Gotap', 'Vào trang này đăng kí bạn nhé', 'icon-pink-2/icon-social-den/kho-sticker-shop/logo-1.jpg', NULL, 'vào trang này tìm thông tin bạn nhé', '4fe1ba78-3b3c-4355-9097-2d4ba8c1c791', 'DCLB', 0, 0, 0, NULL, 1, 'pending', '2021-10-16 15:26:04', '2021-10-16 15:26:04'),
(15, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'abcd40eb-7682-4b6e-8fdc-5b24b1859c48', 'CNO5', 0, 0, 0, NULL, 1, 'pending', '2021-10-20 01:58:24', '2021-10-20 01:58:24'),
(16, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'cb45c63c-d6b8-41ee-9abe-82750db75c71', 'W1Y2', 0, 0, 0, NULL, 1, 'pending', '2021-10-20 01:58:25', '2021-10-20 01:58:25'),
(17, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'a5da1642-247b-43e6-9b72-0c92d2ea3478', 'ZUTA', 0, 0, 0, NULL, 1, 'pending', '2021-10-20 01:58:26', '2021-10-20 01:58:26'),
(18, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '4c593b1f-ccc6-4f7d-8cf1-f8d2bd6407a7', 'GH3N', 0, 0, 0, NULL, 1, 'pending', '2021-10-20 01:58:26', '2021-10-20 01:58:26'),
(19, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '2b7a94d2-9a32-439e-9f49-c3315dd7262b', 'HVGV', 0, 0, 0, NULL, 1, 'pending', '2021-10-20 01:58:27', '2021-10-20 01:58:27'),
(20, 'Nguyễn Thị Ngọc Trâm', 'Ngọc Trâm', 'Công chúa❤️', 'avatars/avatar-1651831307264.png', '33.jpg', '.', '93d8750f-6454-424c-9fd9-04f5f3d1ffed', 'AXXM', 56, 23, 33, 112, 2, 'published', '2021-10-20 01:58:28', '2022-09-04 06:01:19'),
(21, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '5306be16-da07-4f5c-9e5b-7da86d9ebcaa', 'TUSG', 0, 0, 0, NULL, 1, 'pending', '2021-10-20 01:58:28', '2021-10-20 01:58:28'),
(22, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '2dca1041-425f-4c9c-b585-3b13e97f619c', 'ZUVU', 0, 0, 0, NULL, 1, 'pending', '2021-10-20 01:58:29', '2021-10-20 01:58:29'),
(23, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'c4d55ba8-bc40-4ee5-a382-b1aea9de67e4', '7TAH', 0, 0, 0, NULL, 1, 'pending', '2021-10-20 01:58:29', '2021-10-20 01:58:29'),
(24, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '860b97fd-48c3-4c85-be7a-ca2e0fdb0927', 'N2MM', 0, 0, 0, NULL, 1, 'pending', '2021-10-20 01:58:30', '2021-10-20 01:58:30'),
(25, 'Mạc thị thuỳ dung', 'Dung beautycenter mi-nail', 'Chuyên tim filler botox. Nail-mi', 'avatars/avatar-1648978042709.png', 'logo-1/untitled-1.jpg', '44 hoàng văn thụ \r\nThị trấn chư sê\r\nHuyện chư sê\r\nTỉnh gia lai', '43ea34bf-1025-4bce-83e7-1c2d9dbc1cca', 'DQMC', 19, 5, 14, 91, 1, 'published', '2021-10-20 01:58:30', '2022-08-20 09:25:20'),
(26, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '9e5817ac-7503-4bf1-b174-17b6d515b5b2', 'M3MW', 0, 0, 0, NULL, 1, 'pending', '2021-10-20 01:58:31', '2021-10-20 01:58:31'),
(27, 'Hoang Duc Hiep', 'Gotap1688', 'Founder Card Visit Thông Minh 4.O GOTAP✨', 'avatars/avatar-1638407203574.png', 'covers/8d9e7bb8-5c00-4d76-aefe-80ac4dd1028b.jpeg', '121 Thai Ha Street, Dong Da district, Ha Noi', 'c9d6aa45-74ca-46fb-ac3e-181fe8f8eedf', 'QPKE', 922, 295, 633, 6, 9, 'published', '2021-10-20 01:58:32', '2022-01-06 19:58:17'),
(28, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '834f512d-cb3f-4e58-902e-69cb7067a033', '993M', 0, 0, 0, NULL, 1, 'pending', '2021-10-20 01:58:32', '2021-10-20 01:58:32'),
(29, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '9d4ae207-fd1a-4acb-b91f-c078795b94c9', 'IUTJ', 0, 0, 0, NULL, 1, 'pending', '2021-10-20 01:58:33', '2021-10-20 01:58:33'),
(30, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'aa603925-a12b-4cd8-8da5-5be383cd3b70', 'RQBH', 0, 0, 0, NULL, 1, 'pending', '2021-10-20 01:58:34', '2021-10-20 01:58:34'),
(31, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'ce8900a2-ccd3-46d5-aa12-f0ab8ede1a61', 'J7GZ', 0, 0, 0, NULL, 1, 'pending', '2021-10-20 01:58:34', '2021-10-20 01:58:34'),
(32, 'Đinh Khánh Dương', 'Dương.kawaii', 'Khánh Dương nèeee', 'avatars/avatar-1647925119494.png', 'logo-1/untitled-1.jpg', 'Tân Hiệp Kiên Giang', '45ab7ef0-d216-4fc8-b48b-9682840fbb8a', 'DWVW', 9, 4, 5, 84, 1, 'published', '2021-10-20 01:58:35', '2022-06-12 06:15:06'),
(33, 'Lê Phương Quỳnh', 'Lê Phương Quỳnh', '2005', 'avatars/avatar-1651905139480.png', '33.jpg', 'Đồng Tháp', '50bcadf3-6816-456b-ae10-50547c081b12', 'IJDZ', 22, 16, 6, 114, 1, 'published', '2021-10-20 01:58:36', '2022-05-11 19:45:54'),
(34, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'ef480ad2-757f-483a-9f08-206f2e04d767', 'NURX', 0, 0, 0, NULL, 1, 'pending', '2021-10-20 01:58:36', '2021-10-20 01:58:36'),
(35, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '26efdc5f-36e5-426e-b355-7e5703a1d3de', 'S2NX', 0, 0, 0, NULL, 1, 'pending', '2021-10-20 01:58:37', '2021-10-20 01:58:37'),
(36, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '4622141b-0b1d-47eb-8e5f-c65e96ffa9c6', 'DTXE', 0, 0, 0, NULL, 1, 'pending', '2021-10-20 01:58:37', '2021-10-20 01:58:37'),
(37, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'e7e443fc-a085-4395-bbb9-ce94eb243daa', 'GVIK', 0, 0, 0, NULL, 1, 'pending', '2021-10-20 01:58:38', '2021-10-20 01:58:38'),
(38, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '247ba6e9-0369-439e-8168-0c58073bdade', 'JWH6', 0, 0, 0, NULL, 1, 'pending', '2021-10-20 01:58:39', '2021-10-20 01:58:39'),
(39, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'ee1350d6-aa68-4857-a88d-00bcdd99edcb', 'DDHW', 0, 0, 0, NULL, 1, 'pending', '2021-10-20 01:58:39', '2021-10-20 01:58:39'),
(40, 'Nguyễn Hiệp', 'Nguyễn Hiệp', 'Boss 414 Tây Sơn Đống Đa', 'avatars/avatar-1638011961903.png', 'covers/6c5c918c-0860-4926-95a0-312eed1d768a.jpeg', '414 Tây Sơn Đống Đa', 'be4514b9-33bb-4468-9f43-47e2eed79731', 'Y3FI', 252, 50, 202, 20, 2, 'published', '2021-10-20 01:58:40', '2022-08-15 05:33:39'),
(41, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '1d966885-0323-4833-a505-721b586281b9', '01NX', 0, 0, 0, NULL, 1, 'pending', '2021-10-20 01:58:40', '2021-10-20 01:58:40'),
(42, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'adc9ae86-87c3-491d-9b60-864230ccadcf', 'O80Z', 0, 0, 0, NULL, 1, 'pending', '2021-10-20 01:58:41', '2021-10-20 01:58:41'),
(43, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '6903a72a-2bab-4a05-8828-e7ce3c66336d', 'PMDE', 0, 0, 0, NULL, 1, 'pending', '2021-10-20 01:58:42', '2021-10-20 01:58:42'),
(44, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'b5ad6b42-61cc-47d0-bbf7-6ef88e770b3d', 'OC7R', 0, 0, 0, NULL, 1, 'pending', '2021-10-20 01:58:42', '2021-10-20 01:58:42'),
(45, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '7e47f6ed-940e-4ecd-8327-6a5a53696d21', 'S2KE', 0, 0, 0, NULL, 1, 'pending', '2021-10-20 01:58:43', '2021-10-20 01:58:43'),
(46, 'Nguyễn Văn Hạnh', 'Văn Hạnh', '(Màu Thời Trang)\r\nQuản lý kĩ thuật màu thời trang tại KangNam\r\nKẻ nắm giữ bí quyết nhuộm màu', 'avatars/avatar-1638679250799.png', 'covers/ff27370b-96e0-48f1-a48b-6e8f4d706ddc.jpeg', '414 tây sơn đống đa', 'b5fd1f18-4c41-4a53-ad96-e7ec3f170b18', 'BPXM', 312, 115, 197, 24, 9, 'published', '2021-10-20 01:58:43', '2022-09-08 03:30:20'),
(47, 'Nguyễn Tuấn Nam', 'Nam', 'Liên hệ công việc: 0832468000', 'avatars/default-avatar.png', 'bia-phong-bi-to.jpg', 'Hà Nội', '231a6cea-b59d-408f-891a-0991c2566b27', 'GBX9', 0, 0, 0, 59, 1, 'published', '2021-10-20 01:58:44', '2022-01-05 02:58:19'),
(48, 'Lê Sơn Tùng', 'TungLee', 'Sơn Tùng Music\r\nĐào Tạo Piano Chuyên Nghiệp Từ Cơ Bản Đến Nâng Cao\r\nLuyện Thi Vào Các Trường Nghệ Thuật\r\nThu Âm - Làm Nhạc - Edit Video\r\nTổ Chức Sự Kiện - Âm Thanh Ánh Sáng\r\nPhân Phối Các Loại Nhạc Cụ - Lên Dây Sửa Chữa Piano', 'avatars/avatar-1659169466727.png', 'covers/screenshot-20220719-210050-photos-2.jpg', 'Đào Cam Mộc - Đông Anh - HN', 'f8d87763-d54d-4505-bddb-d61d7ad5c742', 'DXZJ', 14, 7, 7, 154, 1, 'published', '2021-10-20 01:58:44', '2022-08-02 23:43:58'),
(49, 'Trần Thị Hoài Nhi', 'hoainhi_01', 'dncute', 'avatars/avatar-1654412486070.png', '33.jpg', 'Số nhà 07 - Hẻm 3 - Nghách 35 - Ngõ 458 , Đa Hội - Châu Khê - Từ Sơn - Bắc Ninh', '180f17e2-16d4-4ec1-8855-1ce1685a0b41', 'IDBV', 50, 22, 28, 132, 1, 'published', '2021-10-20 01:58:45', '2022-08-30 20:24:13'),
(50, 'Đoàn Khánh Diệu', 'Mayneee', 'yêu màu hồng ghét giả dối :))) yêu chó mèo', 'avatars/avatar-1637571628965.png', 'covers/566bcd0b-98df-4921-8e01-380d2790860f.jpeg', 'Mây này sương này long và lanh , đố anh đoán được em đang nơi nào', '74ba51f3-e32f-4425-92ec-94c359d37722', 'UN9Q', 22, 9, 13, 12, 2, 'published', '2021-10-20 01:58:46', '2021-12-09 22:34:16'),
(51, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '529cfbfb-5f14-4ad2-b937-07177876b54f', 'U5GK', 0, 0, 0, NULL, 1, 'pending', '2021-10-20 01:58:46', '2021-10-20 01:58:46'),
(52, 'Kiều Ngọc Anh', 'Kiều Ngọc Anh', 'Otis', 'avatars/avatar-1655088102298.png', '33.jpg', 'Hà Nội', '84f98373-d8ae-4eed-bc87-e1729cb025da', 'QKXW', 37, 17, 20, 135, 2, 'published', '2021-10-20 01:58:47', '2022-06-24 17:08:07'),
(53, 'Phạm Huyền My', 'My Phạm', 'Kho Bóng 🔱Nhà Phân Phối POD🔱 Độc Quyền 3 Miền \r\n🚨Tuyển cộng tác viên🚨\r\n     Hỗ Trợ ĐẠI LÝ/SỈ/LẺ \r\n📞0585676982 - Hà Nội', 'avatars/avatar-1657023117016.png', 'covers/de326ee0-1713-4286-a8b4-62a8aaaca965.jpeg', '108 Nguyễn Trãi - Kingpalce', '9f2ed4d3-3022-4e52-a6a6-3963e5111da7', 'DZQ7', 22, 15, 7, 149, 1, 'published', '2021-10-20 01:58:47', '2022-07-25 12:45:34'),
(54, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '4d0af5fd-dc80-4c92-b4f0-0e3cfd4df7ad', 'ZM70', 0, 0, 0, NULL, 1, 'pending', '2021-10-20 01:58:48', '2021-10-20 01:58:48'),
(55, 'Joe', 'Joe', 'Marketing, Fundraising, Incubator, Networking Global, Advisor, Global Kol\'s Vc\'s Partners', 'avatars/avatar-1650528566164.png', 'logo-1/untitled-1.jpg', 'Hanoi', '059eaef9-4d3c-4b3a-b02f-2f081ac1283a', 'I9RV', 118, 43, 75, 98, 9, 'published', '2021-10-20 01:58:48', '2022-05-22 03:08:13'),
(56, 'Hoang Duc Hiep', 'Tên Của Bạn', 'Không Đi Dép Trái - Trời Mưa Biết Chạy Vào Nhà 🤪', 'avatars/avatar-1647572231731.png', 'logo-1/untitled-1.jpg', 'Hà Nội', '499c7454-7d3a-45b2-ac23-99fd868e61b7', 'OV6M', 13, 10, 3, 9, 8, 'published', '2021-10-20 01:58:49', '2022-03-31 01:47:48'),
(57, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'a70a73e2-2a78-4e1c-a855-c19b4e5d8e0d', 'FEQI', 0, 0, 0, NULL, 1, 'pending', '2021-10-20 01:58:49', '2021-10-20 01:58:49'),
(58, 'Đặng Khánh Linh', 'DangkhanhLinh', 'Nhặt Lá Đá Ống Bơ 🏂', 'avatars/avatar-1638952875058.png', 'covers/6d0e6e9d-bdc2-4eca-aa60-cb91f3a5bd23.jpeg', 'Hanoi Vietnam', '6b170be3-0f15-48f7-9dcd-7038a9f3e9b8', 'V9LC', 5, 2, 3, 35, 9, 'pending', '2021-10-20 01:58:50', '2022-01-05 20:23:48'),
(59, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '23dc4898-6388-4ca3-abdc-9f7fc41bf024', 'KMXG', 0, 0, 0, NULL, 1, 'pending', '2021-10-20 01:58:50', '2021-10-20 01:58:50'),
(60, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'fda4ce87-f3d2-4599-b86a-cb0dbc81cad9', 'Z7XJ', 0, 0, 0, NULL, 1, 'pending', '2021-10-20 01:58:51', '2021-10-20 01:58:51'),
(61, 'Trần Quốc Khánh', 'tranquockhanh', 'Tiktoker _ Kols _ Diễn Viên', 'avatars/avatar-1637767313776.png', 'covers/7be6df42-6e08-46b5-9edf-67b71f6f2f2e.jpeg', '63 Trần Quốc Vượng _ Dịch Vọng Hậu _ Cầu Giấy _ Hà Nội', '48f9446f-fe4c-4fc3-81bc-e8373a6541c2', 'QGDH', 23, 2, 21, 17, 2, 'published', '2021-10-20 01:58:51', '2022-04-02 13:01:56'),
(62, 'NGUYỄN THANH THUỶ', 'Nguyễn Thanh Thuỷ', 'Ford Long Biên Số 3 Nguyễn Văn Linh', 'avatars/avatar-1640678056801.png', 'covers/21a7a528-39c6-486a-8ca1-9283cba8c36c.png', 'Long Biên Hà Nội', '3463a105-44ee-4b33-9ecc-6b929758203e', 'EIBL', 20, 8, 12, 32, 9, 'published', '2021-10-20 01:58:52', '2022-01-05 22:51:29'),
(63, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '531d0abe-4571-4d5f-920a-d3b9c536770f', 'PETM', 0, 0, 0, NULL, 1, 'pending', '2021-10-20 01:58:53', '2021-10-20 01:58:53'),
(64, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '4a26e829-8778-4d27-afee-7f22f92e57ab', 'XRVA', 0, 0, 0, NULL, 1, 'pending', '2021-10-20 01:58:53', '2021-10-20 01:58:53'),
(65, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '0ae9f18c-1793-4a2a-8988-fd9c8935a16d', 'NJFU', 0, 0, 0, NULL, 1, 'pending', '2021-10-20 01:58:54', '2021-10-20 01:58:54'),
(66, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'ed6e42ff-e2bd-4cfe-9924-955901395cda', 'GUQ7', 0, 0, 0, NULL, 1, 'pending', '2021-10-20 01:58:54', '2021-10-20 01:58:54'),
(67, 'Vi Thùy Linh', 'VTL', '...', 'avatars/avatar-1637665580566.png', 'covers/10e4dd35-8034-4c5c-b272-84e444a69b4f.jpeg', 'Cốc Chủ - Ngọc Đào - Hà Quảng - Cao Bằng', 'b9ca5971-3163-47a7-875e-57431c06b896', 'QWIF', 28, 9, 19, 13, 2, 'published', '2021-10-20 01:58:55', '2022-02-21 03:55:38'),
(68, 'Phan Hồng Anh', 'Kẹoneeee', 'Hin ckao😗', 'avatars/avatar-1651214419360.png', 'logo-1/untitled-1.jpg', 'Thôn đông vịnh-xã cẩm vịnh-h. Cẩm xuyên', '38ea44c8-f8f0-428d-b9c5-a7215890bd53', 'YVBC', 51, 20, 31, 103, 1, 'published', '2021-10-20 01:58:56', '2022-07-23 10:08:09'),
(69, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '0076a864-e9b0-441c-bda8-842e474fe2b5', 'K2I2', 0, 0, 0, NULL, 1, 'pending', '2021-10-20 01:58:56', '2021-10-20 01:58:56'),
(70, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'f4545fe3-92c9-4f5f-977d-155e64ef1695', 'KS5U', 0, 0, 0, NULL, 1, 'pending', '2021-10-20 01:58:57', '2021-10-20 01:58:57'),
(71, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'b06d86f5-11b8-4324-976b-ac122f682958', 'MZZQ', 0, 0, 0, NULL, 1, 'pending', '2021-10-20 01:58:57', '2021-10-20 01:58:57'),
(72, 'Đinh Trọng Nghĩa', 'Đinh Trọng Nghĩa', 'Ok', 'avatars/avatar-1638372505844.png', 'bia-phong-bi-to.jpg', 'Trùm Triều Khúc', 'bd7508f6-579a-4d20-a77f-fa01011192d4', 'L9WV', 19, 7, 12, 31, 1, 'published', '2021-10-20 01:58:58', '2021-12-13 02:34:02'),
(73, 'Nhật Khang', 'Nhatkhang', 'Hello 🤍', 'avatars/avatar-1651481236953.png', 'covers/fd7c891d-0354-47dd-9bc4-6c3494cadc7c.jpeg', 'Bà Rịa', '1895cdb3-1d0b-43d6-9211-83fa39ba8752', 'EMPZ', 86, 42, 44, 107, 1, 'published', '2021-10-20 01:58:59', '2022-07-29 06:29:42'),
(74, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'a720981f-6d9d-42c7-972f-e3bf83357969', 'CEFZ', 0, 0, 0, NULL, 1, 'pending', '2021-10-20 01:58:59', '2021-10-20 01:58:59'),
(75, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '1215340f-102c-4144-bfd3-888eaf698dc5', 'T1OY', 0, 0, 0, NULL, 1, 'pending', '2021-10-20 01:59:00', '2021-10-20 01:59:00'),
(76, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '7c298efd-6616-4f6e-9968-4a9263b8fc8e', '2YOV', 0, 0, 0, NULL, 1, 'pending', '2021-10-20 01:59:00', '2021-10-20 01:59:00'),
(77, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '889fd404-fb67-4ec1-91d2-36f5029cce51', '7A7C', 0, 0, 0, NULL, 1, 'pending', '2021-10-20 01:59:01', '2021-10-20 01:59:01'),
(78, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'a890894e-2637-4da3-9341-6e064152d23e', 'U9I7', 0, 0, 0, NULL, 1, 'pending', '2021-10-20 01:59:02', '2021-10-20 01:59:02'),
(79, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'f72a27c7-0960-47af-8b7a-44447ed19b49', 'NL7J', 0, 0, 0, NULL, 1, 'pending', '2021-10-20 01:59:02', '2021-10-20 01:59:02'),
(80, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '6c3bac24-267f-4c04-b54b-4eb20b6add74', 'LVJY', 38, 38, 0, 87, 1, 'published', '2021-10-20 01:59:03', '2022-09-03 22:44:40'),
(81, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '3af30d0f-3a54-469e-b313-9d7eca71493e', 'IBAH', 0, 0, 0, NULL, 1, 'pending', '2021-10-20 01:59:03', '2021-10-20 01:59:03'),
(82, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '0ecf5dde-b342-41ad-87ec-01bbab8ed3a6', 'A8PM', 0, 0, 0, NULL, 1, 'pending', '2021-10-20 01:59:04', '2021-10-20 01:59:04'),
(83, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '342bf4f4-dee5-4db2-bde7-120a12877969', 'LESX', 0, 0, 0, NULL, 1, 'pending', '2021-10-20 01:59:05', '2021-10-20 01:59:05'),
(84, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '0fb20ac6-4835-40c7-bdfe-bf8b518a1f68', 'POYI', 0, 0, 0, NULL, 1, 'pending', '2021-10-20 01:59:05', '2021-10-20 01:59:05'),
(85, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '47de8d90-0d99-4a63-976a-723ad9529cfa', 'F6DE', 0, 0, 0, NULL, 1, 'pending', '2021-10-20 01:59:06', '2021-10-20 01:59:06'),
(86, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '0c04a92d-f94b-4a0b-a3a7-3d669b7cb880', 'ZXGW', 0, 0, 0, NULL, 1, 'pending', '2021-10-20 01:59:06', '2021-10-20 01:59:06'),
(87, 'Nguyễn ngọc hải', 'Hải diểu', 'A thợ làm tóc đáng iu❤️', 'avatars/avatar-1638016841558.png', 'covers/89de1c3f-cea1-4bfd-9723-17a4376c5de2.jpeg', '414 tây sơn ngã tư sở', 'c6eaea55-c85e-4af5-85ac-53ee9ef3183b', 'QBYI', 48, 3, 45, 21, 2, 'published', '2021-10-20 01:59:07', '2022-07-16 11:20:00'),
(88, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '5ead9d26-6e0c-4ba3-8c71-d74d944520a3', 'DVNZ', 0, 0, 0, NULL, 1, 'pending', '2021-10-20 01:59:07', '2021-10-20 01:59:07'),
(89, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'e83674e8-be83-4648-94c5-169454e6994a', 'GD8X', 0, 0, 0, NULL, 1, 'pending', '2021-10-20 01:59:08', '2021-10-20 01:59:08'),
(90, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '2581a575-1c12-4e95-b4c4-74cbd330014c', 'O2T5', 0, 0, 0, NULL, 1, 'pending', '2021-10-20 01:59:08', '2021-10-20 01:59:08'),
(91, 'Hoang Duc Hiep', 'Hoanghiep', 'Kẻ Huỷ Diệt Sự Cô Đơn🥷🏻', 'avatars/avatar-1637570740928.png', 'covers/9fd9003d-59e1-4737-88f4-4a968ffdaafc.jpeg', 'Ha Noi Viet Nam', 'ac8132b0-ef8e-465d-a1f8-cda01b695ef6', '4MYC', 20, 5, 15, 11, 9, 'published', '2021-10-20 01:59:09', '2021-12-23 21:59:43'),
(92, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '0405843c-8be8-496c-b1d9-20115c25dd84', 'ABUZ', 0, 0, 0, NULL, 1, 'pending', '2021-10-20 01:59:09', '2021-10-20 01:59:09'),
(93, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'f1870404-c9d6-4db9-b621-f319c5b3b55a', 'U3XO', 0, 0, 0, NULL, 1, 'pending', '2021-10-20 01:59:10', '2021-10-20 01:59:10'),
(94, 'Nguyễn Phú Thành', 'Nguyễn Phú Thành', 'Dhjdhd', 'avatars/avatar-1638359670447.png', 'covers/816bab9f-bee0-401b-a3ce-aa9f04a21fdb.jpeg', '452 đường láng', 'b8758644-aa95-4daa-bd6e-ca99163ac41d', '1NQV', 108, 41, 67, 29, 9, 'published', '2021-10-20 01:59:10', '2022-02-03 06:35:40'),
(95, 'Kayla trần', 'Kayla trần', 'Vui', 'avatars/avatar-1652355329144.png', '33.jpg', 'Bắc Giang', '91def789-b0b1-4636-9496-08fceb0fb709', 'LVHT', 16, 12, 4, 119, 1, 'published', '2021-10-20 01:59:11', '2022-06-28 22:43:39'),
(96, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '0bf00a4d-1e44-43dd-a134-1a352bae88b7', 'R1BP', 0, 0, 0, NULL, 1, 'pending', '2021-10-20 01:59:11', '2021-10-20 01:59:11'),
(97, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'cf66f488-c9e3-4402-903f-592263aaea8f', 'VFYZ', 0, 0, 0, NULL, 1, 'pending', '2021-10-20 01:59:12', '2021-10-20 01:59:12'),
(98, 'Nguyễn thị ly na', 'Lina', '🤍', 'avatars/avatar-1655180864153.png', '33.jpg', 'Nghệ an', '5e203a1e-bbb4-4d77-b2ec-daea0bc2d7ee', '0WK9', 17, 8, 9, 136, 2, 'published', '2021-10-20 01:59:13', '2022-06-24 13:49:00'),
(99, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'b4cb5216-d31c-44a8-b808-3d878612dcbb', 'LL94', 0, 0, 0, NULL, 1, 'pending', '2021-10-20 01:59:13', '2021-10-20 01:59:13'),
(100, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '37be44e3-76e2-41b2-b346-da07b556eee4', 'KNY9', 0, 0, 0, NULL, 1, 'pending', '2021-10-20 01:59:14', '2021-10-20 01:59:14'),
(101, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '79a490cf-4b32-4a86-9c2d-c450f2de21d0', 'MSKV', 0, 0, 0, NULL, 1, 'pending', '2021-10-20 01:59:14', '2021-10-20 01:59:14'),
(102, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '777c44cd-c801-410f-a812-7f7bc73696f1', 'FHQE', 0, 0, 0, NULL, 1, 'pending', '2021-10-20 01:59:15', '2021-10-20 01:59:15'),
(103, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '20243ac5-3d28-428c-84d5-fdb4a84d708b', 'R5XZ', 0, 0, 0, NULL, 1, 'pending', '2021-10-20 01:59:15', '2021-10-20 01:59:15'),
(104, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '0b36f72a-0297-4b21-a95b-ab5fa5f20477', 'NH7X', 0, 0, 0, NULL, 1, 'pending', '2021-10-20 01:59:16', '2021-10-20 01:59:16'),
(105, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '1bcc155c-528d-4e27-8fc0-5f67769342be', 'XGJQ', 0, 0, 0, NULL, 1, 'pending', '2021-10-20 01:59:16', '2021-10-20 01:59:16'),
(106, 'Phạm Ngọc Mai', 'mai.sua.165', '0345215851', 'avatars/avatar-1653041009050.png', '33.jpg', 'Cẩm Phả - Quảng Ninh', '5c00d485-f3cf-4207-800f-2c2e73fcd4b8', 'UEQB', 78, 37, 43, 123, 1, 'published', '2021-10-20 01:59:17', '2022-06-22 06:34:27'),
(107, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '6735bd1a-1a3e-41b4-8955-1028b720edc5', 'NNW3', 0, 0, 0, NULL, 1, 'pending', '2021-10-20 01:59:17', '2021-10-20 01:59:17'),
(108, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'e1e6679f-9e2b-4ad9-9be6-f6f43d090030', 'KRO3', 0, 0, 0, NULL, 1, 'pending', '2021-10-20 01:59:18', '2021-10-20 01:59:18'),
(109, 'Hoà Minzie', 'hoa.minzie', 'Hellooo 🖤', 'avatars/avatar-1644402272930.png', 'covers/37ee8159-68aa-410b-83a4-8c9fbadb4e49.jpeg', 'Ho Chi Minh city', '127a156c-a1b9-4e94-963e-f80d1c6bef22', '4FJP', 44, 10, 34, 73, 2, 'published', '2021-10-20 01:59:18', '2022-05-10 18:09:16'),
(110, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '2115e5b7-8555-4b7b-93c2-52536a052b36', 'XT4W', 0, 0, 0, NULL, 1, 'pending', '2021-10-20 01:59:19', '2021-10-20 01:59:19'),
(111, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '2f4eaeae-99bf-4ef1-a9cb-d0fc82fa0082', 'HYKL', 0, 0, 0, NULL, 1, 'pending', '2021-10-20 01:59:19', '2021-10-20 01:59:19'),
(112, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '2f8de01e-e76c-4119-a6f2-c6ee85f83b09', 'PLBZ', 0, 0, 0, NULL, 1, 'pending', '2021-10-20 01:59:20', '2021-10-20 01:59:20'),
(113, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '67b3bc1a-dd90-4499-a2b0-b5fbd4c29663', 'IYW2', 0, 0, 0, NULL, 1, 'pending', '2021-10-20 01:59:20', '2021-10-20 01:59:20'),
(114, 'Thiên Tâm Phạm', 'Tam1995', 'Đào Tạo Chuyên Nghiệp, Maketing Tư Duy , Truyền Lửa , Chiến Lược Hệ Thống ☎️Hotline: 0965038833', 'avatars/avatar-1638019588408.png', 'covers/e43b615a-b6a4-4efa-932b-87861750aece.jpeg', '414 Tây Sơn - Đống Đa - Hanoi', 'b7c8c8a6-1b86-4a8a-a506-c90b7ce259cd', '8DOU', 101, 45, 56, 22, 9, 'published', '2021-10-20 01:59:21', '2022-07-16 11:16:42'),
(115, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '70c94e4f-3ebf-4fdd-a54f-ef0aa63b8570', '54CA', 0, 0, 0, NULL, 1, 'pending', '2021-10-20 22:48:41', '2021-10-20 22:48:41'),
(116, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'c6656eb1-28fc-4a3b-bde8-1d8ec5832369', 'C08T', 0, 0, 0, NULL, 1, 'pending', '2021-10-20 22:48:42', '2021-10-20 22:48:42'),
(117, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '25dbe1f9-26bc-411e-8eb1-b4e6eaa1caae', 'BYHL', 0, 0, 0, NULL, 1, 'pending', '2021-10-20 22:48:43', '2021-10-20 22:48:43'),
(118, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '13dc59ca-2103-4246-9561-1e59cc0c9a8b', 'ACIN', 0, 0, 0, NULL, 1, 'pending', '2021-10-20 22:48:43', '2021-10-20 22:48:43'),
(119, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '69e406af-4613-4994-bbb9-10aa84becaa9', 'FI0A', 0, 0, 0, NULL, 1, 'pending', '2021-10-20 22:48:44', '2021-10-20 22:48:44'),
(120, 'Đỗ Thị Lan Chinh', 'LanChinh', 'Nữ Game❤️', 'avatars/avatar-1637681908835.png', 'covers/1c77a94b-e6c3-4ee2-a128-c0577d80c260.jpeg', 'Vĩnh Phúc', 'bf005d0e-dd9e-4a46-8999-1d33b59d04bb', 'YNVP', 64, 22, 42, 14, 1, 'published', '2021-10-20 22:48:44', '2022-02-11 08:15:39'),
(121, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '6139178f-679f-4dc7-b75e-c5ec7571af0e', 'ROS0', 0, 0, 0, NULL, 1, 'pending', '2021-10-20 22:48:45', '2021-10-20 22:48:45'),
(122, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '1519feea-2ce8-4815-b69a-421ab7905c64', 'QBJG', 0, 0, 0, NULL, 1, 'pending', '2021-10-20 22:48:45', '2021-10-20 22:48:45'),
(123, 'Bùi T Mỹ Hồng', 'Bùi T Mỹ Hồng', '- Nếu bạn là người muốn tìm 1 ny có thể uống hộ trên bàn nhậu…. Call me 😉😉', 'avatars/avatar-1637838155424.png', 'covers/79f9f9ff-e19f-42bb-9ba0-5d4f115ae383.jpeg', 'Hà Nội', 'b7e37b57-97de-4908-acf3-7fd895484cb4', 'BTUL', 51, 11, 40, 19, 2, 'published', '2021-10-20 22:48:46', '2022-08-12 20:31:57'),
(124, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '62a1fae6-8ada-463f-a816-b8acbc76bbd1', 'GTGX', 0, 0, 0, NULL, 1, 'pending', '2021-10-20 22:48:46', '2021-10-20 22:48:46'),
(125, 'Nguyễn Viết Cương', 'Nguyễn viết cương', 'Alo cho tôi khi bạn cần !!!', 'avatars/avatar-1639730235948.png', 'covers/screenshot-2021-12-17-13-32-50-728-comfacebookkatana.jpg', 'Hà Nội', 'b36d5d27-3862-452b-9986-7ae83792157e', 'KTDW', 124, 59, 65, 36, 9, 'published', '2021-10-20 22:48:47', '2022-08-19 19:44:02'),
(126, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '9ea03e6a-fcee-4a5a-ace8-6c10be5f3310', 'MQMF', 0, 0, 0, NULL, 1, 'pending', '2021-10-20 22:48:47', '2021-10-20 22:48:47'),
(127, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '1e90b3a9-37e0-45d4-adee-0919043b7219', 'BTI2', 0, 0, 0, NULL, 1, 'pending', '2021-10-20 22:48:48', '2021-10-20 22:48:48'),
(128, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '6b6d151a-7db3-4bc9-be8d-1958d0c3753c', 'ZORN', 0, 0, 0, NULL, 1, 'pending', '2021-10-20 22:48:48', '2021-10-20 22:48:48'),
(129, 'Phạm Anh Tài', 'Phạm Anh Tài', 'Trên Con Đường Thành Công Không Bao Giờ Có Dấu Chân Của Kẻ Lười Biếng', 'avatars/avatar-1640060407548.png', 'covers/e51dda86-e5c9-45e8-888b-e7a0ce06bd10.jpeg', 'Giao Thuỷ - Nam Định', 'b5355bf8-dda4-4914-b98a-3a656230dcb8', 'JKXM', 59, 14, 45, 39, 1, 'published', '2021-10-20 22:48:48', '2022-06-16 02:17:06'),
(130, 'Phạm mạnh chiều', 'Phạm Mạnh Chiều', 'Thợ tóc thiết kế', 'avatars/avatar-1638272584681.png', 'covers/a79ee0df-7626-44b0-9e3c-48192bda6ec3.jpeg', '414 tây sơn', 'e1b8ef8f-160f-455c-9723-0f7a91323b13', 'E6F2', 119, 51, 68, 25, 9, 'published', '2021-10-20 22:48:49', '2022-08-01 09:28:03'),
(131, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '819011ec-889c-4f3f-b45e-9c342fb8bed6', 'MYCJ', 0, 0, 0, NULL, 1, 'pending', '2021-10-20 22:48:49', '2021-10-20 22:48:49'),
(132, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'ec78cc3c-baf8-44f6-8fd6-cfaaaa062a77', 'T0T0', 0, 0, 0, NULL, 1, 'pending', '2021-10-20 22:48:50', '2021-10-20 22:48:50'),
(133, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '003937ba-a143-41e0-b6bc-67bd4fa11149', 'U589', 0, 0, 0, NULL, 1, 'pending', '2021-10-20 22:48:50', '2021-10-20 22:48:50'),
(134, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '15006f5d-6749-4562-99b2-968696bd6941', '19EX', 0, 0, 0, NULL, 1, 'pending', '2021-10-20 22:48:51', '2021-10-20 22:48:51'),
(135, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '16807b7b-d24d-4276-bcb9-b5157178a1e0', '3CYR', 0, 0, 0, NULL, 1, 'pending', '2021-10-20 22:48:51', '2021-10-20 22:48:51'),
(136, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'db810da6-5454-4fe5-bf2d-b8637ea3dca5', 'IGQ3', 0, 0, 0, NULL, 1, 'pending', '2021-10-20 22:48:52', '2021-10-20 22:48:52'),
(137, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '95e95395-236a-4d35-bf5a-77d152a05024', 'MQGA', 0, 0, 0, NULL, 1, 'pending', '2021-10-20 22:48:52', '2021-10-20 22:48:52'),
(138, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'aaf390c2-f7fc-43d5-9a48-a431ac75d34f', '7115', 0, 0, 0, NULL, 1, 'pending', '2021-10-20 22:48:53', '2021-10-20 22:48:53'),
(139, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '7b2721d1-3eca-4764-a058-7e5a562c75ff', 'BEGO', 0, 0, 0, NULL, 1, 'pending', '2021-10-20 22:48:54', '2021-10-20 22:48:54'),
(140, 'Vũ Thế Hải', 'Vũ Thế Hải', 'Vinaconex ITC', 'avatars/avatar-1638294158849.png', 'covers/125065eb-2835-4f6d-b346-90d0b898eb51.jpeg', '34 Láng Hạ - Đống Đa - Hà Nội.', '328bacda-ee7c-4387-8e05-c7507facad52', 'NMXK', 48, 13, 35, 27, 9, 'published', '2021-10-20 22:48:54', '2022-05-12 06:53:40'),
(141, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '5f471e0e-41a9-4bdc-8366-c2ef5df46d87', 'PBLV', 0, 0, 0, NULL, 1, 'pending', '2021-10-20 22:48:55', '2021-10-20 22:48:55'),
(142, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '8034c044-72fc-46a5-9743-b5b8d0085e17', 'VGXK', 0, 0, 0, NULL, 1, 'pending', '2021-10-20 22:48:55', '2021-10-20 22:48:55'),
(143, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'ae71a393-71ef-4493-9d4f-37028c8c95e6', 'VFYR', 0, 0, 0, NULL, 1, 'pending', '2021-10-20 22:48:56', '2021-10-20 22:48:56'),
(144, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '47a04542-ec4f-4889-8eb9-0380a9379749', 'W49Z', 0, 0, 0, NULL, 1, 'pending', '2021-10-20 22:48:56', '2021-10-20 22:48:56'),
(145, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'a4aed61b-ca3f-4e3c-94c4-275825d97458', '2MS8', 0, 0, 0, NULL, 1, 'pending', '2021-10-20 22:48:57', '2021-10-20 22:48:57'),
(146, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '7b34e3ad-f828-49aa-85f6-29d263a4182d', 'OUOZ', 0, 0, 0, NULL, 1, 'pending', '2021-10-20 22:48:57', '2021-10-20 22:48:57'),
(147, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'e108f099-267a-4f63-a96c-357390ab9025', 'POVZ', 0, 0, 0, NULL, 1, 'pending', '2021-10-20 22:48:58', '2021-10-20 22:48:58'),
(148, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '47abcd5b-0a72-4f0d-969c-7c82dcbbc392', 'AQHD', 0, 0, 0, NULL, 1, 'pending', '2021-10-20 22:48:58', '2021-10-20 22:48:58'),
(149, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'a40c1035-e0b0-4b68-83ad-35d82678e1ae', 'JB1Q', 0, 0, 0, NULL, 1, 'pending', '2021-10-20 22:48:59', '2021-10-20 22:48:59'),
(150, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '2a69b14c-07a7-4465-9356-a8d721e7dd51', 'L9YK', 0, 0, 0, NULL, 1, 'pending', '2021-10-20 22:48:59', '2021-10-20 22:48:59'),
(151, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '7ea60ee0-03d3-445c-a885-60f74a170de4', 'QZ0A', 0, 0, 0, NULL, 1, 'pending', '2021-10-20 22:49:00', '2021-10-20 22:49:00'),
(152, 'Cáp Văn Nam', 'capvannam', 'đang buồn đang chán ai tán yêu luôn', 'avatars/avatar-1640801696644.png', 'covers/4aeddfb0-7354-4ce6-b2b9-6e5597a1eeb6.jpeg', 'Hanoi vietnam', 'dd5054e2-fe9f-428e-8466-8a9226c9d8d8', 'S0ND', 75, 7, 68, 16, 9, 'published', '2021-10-20 22:49:00', '2022-06-11 13:51:47'),
(153, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '23c8653d-a531-4493-adb4-37a87622ddc8', 'CDKT', 0, 0, 0, NULL, 1, 'pending', '2021-10-20 22:49:01', '2021-10-20 22:49:01'),
(154, 'Trinh Nhật Minh Đuc', 'Đuc Min', 'Người làm nghệ thuật 👌👌👌', 'avatars/avatar-1638276625381.png', 'covers/9ed9838d-f69d-4bde-94cf-08c4bcbe38aa.jpeg', '414 Tây Sơn - Đống Đa - Ha Nôi', 'bc3a7f21-94bd-46ae-a8e0-96f07ac76fe1', 'RCJG', 19, 7, 12, 26, 9, 'published', '2021-10-20 22:49:01', '2022-01-07 01:50:33'),
(155, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'a76bc4b8-9dfa-4bec-b5fa-ba910dd016d2', 'SBYK', 0, 0, 0, NULL, 1, 'pending', '2021-10-20 22:49:02', '2021-10-20 22:49:02'),
(156, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'f45dc9a3-948f-444d-a31d-dea7bac9a0f8', 'DKWG', 0, 0, 0, NULL, 1, 'pending', '2021-10-20 22:49:02', '2021-10-20 22:49:02'),
(157, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '482217a0-8b9b-476e-9fed-7e7da5bbb016', 'DFWT', 0, 0, 0, NULL, 1, 'pending', '2021-10-20 22:49:03', '2021-10-20 22:49:03'),
(158, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'ce8a46f9-ebe0-4963-be1c-ef0812a28b3e', 'TA4W', 28, 28, 0, 23, 9, 'published', '2021-10-20 22:49:03', '2022-07-16 11:20:00'),
(159, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '73f93a5d-e0b2-4a5e-b0f9-a0d46c45ee94', 'HIYD', 0, 0, 0, NULL, 1, 'pending', '2021-10-20 22:49:04', '2021-10-20 22:49:04'),
(160, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '0efb41fe-1929-4497-b87a-296e4dcff760', 'HJNV', 0, 0, 0, NULL, 1, 'pending', '2021-10-20 22:49:04', '2021-10-20 22:49:04'),
(161, 'Vân Hair Salon', 'Nguyễn Thị Vân', 'Chuyên gia về Tóc', 'avatars/avatar-1638526539434.png', 'covers/33a667af-7b65-4d93-b68c-277af89c862f.jpeg', '75 ngách 2 ngõ 111 Yên lãng', 'cd75aed8-69fa-432b-b12f-4c9eca011382', 'HOB0', 567, 233, 334, 33, 9, 'published', '2021-10-20 22:49:05', '2022-09-11 11:23:34'),
(162, 'Vũ Mạnh Dũng', 'Wumengyong1998', '豪杰', 'avatars/avatar-1637383141611.png', 'covers/b83f2b75-fec8-41ff-9bb6-805c6582e332.jpeg', 'Hà Nội', 'cde3ebe8-8c70-4364-b10e-2429f030c894', 'F0XA', 25, 11, 14, 10, 9, 'published', '2021-10-20 22:49:05', '2022-08-27 10:10:11'),
(163, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'a4bfa4d8-6d54-4b03-ae93-1d7c36fa8907', 'QREC', 0, 0, 0, NULL, 1, 'pending', '2021-10-20 22:49:06', '2021-10-20 22:49:06'),
(164, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '68e0d63c-3a56-42c3-9554-181cac77232f', 'CVT3', 0, 0, 0, NULL, 1, 'pending', '2021-10-20 22:49:06', '2021-10-20 22:49:06'),
(165, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '8778d8a9-5da9-4ebb-9c52-0358c98528b5', '3PSM', 0, 0, 0, NULL, 1, 'pending', '2021-10-20 22:49:07', '2021-10-20 22:49:07'),
(166, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '5e8d27d0-97c5-4b30-a4a7-eb5d9978c84c', 'IHFC', 0, 0, 0, NULL, 1, 'pending', '2021-10-20 22:49:07', '2021-10-20 22:49:07'),
(167, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '1d2a9872-e5b8-4187-a172-0b2aca33e960', 'LVIH', 0, 0, 0, NULL, 1, 'pending', '2021-10-20 22:49:08', '2021-10-20 22:49:08'),
(168, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '569729fc-47b0-4965-b89f-2c50ab800848', 'H6RD', 0, 0, 0, NULL, 1, 'pending', '2021-10-20 22:49:09', '2021-10-20 22:49:09'),
(169, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '81729095-8992-4798-afd1-803bc2960457', '3USP', 0, 0, 0, NULL, 1, 'pending', '2021-10-20 22:49:09', '2021-10-20 22:49:09'),
(170, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '21ddeb6c-e95d-4027-aaf4-9f7df1f5bb31', 'Q40Y', 0, 0, 0, NULL, 1, 'pending', '2021-10-20 22:49:10', '2021-10-20 22:49:10'),
(171, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'e43dca56-0c6d-4835-923a-9d3d390b853b', 'MQPE', 0, 0, 0, NULL, 1, 'pending', '2021-10-20 22:49:10', '2021-10-20 22:49:10'),
(172, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'fa026eee-5821-42c5-94ec-4dc30b78f204', 'ND4Y', 0, 0, 0, NULL, 1, 'pending', '2021-10-20 22:49:11', '2021-10-20 22:49:11'),
(173, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '6f7150d3-bf76-4239-8b07-4cdef958ef47', 'WA9K', 0, 0, 0, NULL, 1, 'pending', '2021-10-20 22:49:11', '2021-10-20 22:49:11'),
(174, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'c974b650-4417-4d94-be03-866548f6fafd', 'CKBL', 0, 0, 0, NULL, 1, 'pending', '2021-10-20 22:49:12', '2021-10-20 22:49:12'),
(175, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '1baa5bd4-c014-491e-9ff1-54b0540002c3', 'A8SY', 0, 0, 0, NULL, 1, 'pending', '2021-10-20 22:49:12', '2021-10-20 22:49:12'),
(176, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '21fb188a-dffe-4682-998e-7c125a3cdd64', 'XEY9', 0, 0, 0, NULL, 1, 'pending', '2021-10-20 22:49:13', '2021-10-20 22:49:13'),
(177, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '09430757-969c-482d-9a49-cbe721c53be9', 'LOCU', 0, 0, 0, NULL, 1, 'pending', '2021-10-20 22:49:13', '2021-10-20 22:49:13'),
(178, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '1fcb14dd-ac2c-4200-a6ad-2901fc0c49ff', 'A7JC', 0, 0, 0, NULL, 1, 'pending', '2021-10-20 22:49:14', '2021-10-20 22:49:14'),
(179, 'Vũ Đinh', 'Vũ Đinh', 'Ceo vũ đinh yto hair salon', 'avatars/avatar-1638361314572.png', 'covers/a5379d0e-aff9-43be-97d4-fa664f0dbc83.jpeg', '452 đường láng', 'dbd49e84-aa7c-4018-ba23-b52287c61c80', 'YUEC', 62, 18, 44, 30, 9, 'published', '2021-10-20 22:49:14', '2022-07-13 11:10:52'),
(180, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '935eeeec-83ce-4801-ad4b-66cefdd7a62f', 'QZV7', 0, 0, 0, NULL, 1, 'pending', '2021-10-20 22:49:15', '2021-10-20 22:49:15'),
(181, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '5162ae90-e588-40ed-95f4-460ad98697f1', 'ZEZ3', 0, 0, 0, NULL, 1, 'pending', '2021-10-20 22:49:15', '2021-10-20 22:49:15'),
(182, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '6a4fa64d-0ec3-4b9b-9bd0-abde2c203765', 'MON5', 0, 0, 0, NULL, 1, 'pending', '2021-10-20 22:49:16', '2021-10-20 22:49:16'),
(183, 'Hằng Cosi', 'Cosi', '♥️♥️♥️', 'avatars/avatar-1639732593693.png', 'covers/picsart-12-04-034723.jpg', 'Hà Nội', 'b386dec4-132e-4421-aa10-88111e0a3716', 'MYOG', 74, 33, 42, 37, 2, 'published', '2021-10-20 22:49:16', '2022-01-19 01:18:38'),
(184, 'Nguyễn Tiến Anh', 'Thụt TV', 'Thụt TV', 'avatars/avatar-1639824581743.png', 'covers/6f65ebea-acdb-49dd-8362-cf9f32ccb85b.jpeg', 'Hà Nội', 'beeda989-0d9f-4016-8772-8ad0678c27ec', 'GTLI', 11, 4, 7, 38, 9, 'published', '2021-10-20 22:49:17', '2021-12-20 00:55:23'),
(185, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '9ff2c21d-011f-415a-b338-b000710ad051', 'UY1P', 0, 0, 0, NULL, 1, 'pending', '2021-10-20 22:49:17', '2021-10-20 22:49:17'),
(186, 'Trần Thảo', 'Mít', 'Đố anh bắt được emmm', 'avatars/avatar-1637835174004.png', 'covers/cbbda291-cc57-4d2e-848e-798efeff5832.jpeg', 'Ở chuồng trâu đi sâu một tý', 'd5cadda2-2700-4377-9a4c-f7a802559254', 'ZIEP', 32, 17, 15, 18, 9, 'published', '2021-10-20 22:49:18', '2021-11-27 21:42:06'),
(187, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '2b258547-490c-4a4f-a8d9-27d5184854ed', 'KRAJ', 0, 0, 0, NULL, 1, 'pending', '2021-10-20 22:49:18', '2021-10-20 22:49:18'),
(188, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '577a02bc-c821-4f20-8331-7aef5808c6a1', 'BQAE', 0, 0, 0, NULL, 1, 'pending', '2021-10-20 22:49:19', '2021-10-20 22:49:19'),
(189, 'Lê Quốc Tuấn', 'Lê Quốc Tuấn', 'Hair Artist', 'avatars/avatar-1638355788460.png', 'covers/5da7d194-347c-49aa-b445-956c4b71503e.jpeg', '283 Tây Sơn, Đống Đa, Hà Nội', 'e7a146c6-72df-4f70-bd56-0b16a84be1a1', 'MEEA', 78, 34, 44, 28, 9, 'published', '2021-10-20 22:49:19', '2022-05-14 09:29:12'),
(190, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '77b75ce5-5fcc-474a-940a-d9a99c8e4a4e', 'GESS', 0, 0, 0, NULL, 1, 'pending', '2021-10-20 22:49:20', '2021-10-20 22:49:20'),
(191, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '40f4c066-830f-47dc-82cc-f7c583202ed5', 'OYX8', 0, 0, 0, NULL, 1, 'pending', '2021-10-20 22:49:20', '2021-10-20 22:49:20'),
(192, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '1763ead4-f05e-46cf-b90a-fcc2b07f364e', 'APLM', 0, 0, 0, NULL, 1, 'pending', '2021-10-20 22:49:21', '2021-10-20 22:49:21'),
(193, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '12199af0-0e23-4c1e-83fc-671d8396f0d7', 'RSVI', 0, 0, 0, NULL, 1, 'pending', '2021-10-20 22:49:21', '2021-10-20 22:49:21'),
(194, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '37561b44-4111-435e-b417-78a7f0e7c815', 'DUPW', 0, 0, 0, NULL, 1, 'pending', '2021-10-20 22:49:22', '2021-10-20 22:49:22'),
(195, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'ed35a1a6-3ff6-4973-8385-246aa11ae56f', 'GLK3', 0, 0, 0, NULL, 1, 'pending', '2021-10-20 22:49:22', '2021-10-20 22:49:22'),
(196, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'fcd7f0ca-0f30-4cfa-a05c-fdd3c954a78a', 'F2EA', 0, 0, 0, NULL, 1, 'pending', '2021-10-20 22:49:23', '2021-10-20 22:49:23'),
(197, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '61c675da-0e1e-412b-b364-f5356caef28a', 'S3WK', 0, 0, 0, NULL, 1, 'pending', '2021-10-20 22:49:23', '2021-10-20 22:49:23'),
(198, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '93a02b76-a7aa-4329-90d1-e1d372cc98fb', 'VZEE', 4, 4, 0, 138, 1, 'published', '2021-10-20 22:49:24', '2022-08-23 05:53:10'),
(199, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '88cc6d67-ee3b-493b-9505-48f9867761a2', 'KN3Y', 0, 0, 0, NULL, 1, 'pending', '2021-10-20 22:49:24', '2021-10-20 22:49:24'),
(200, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'df95e8f2-3535-41d8-b199-f2f5a28a5899', 'Q8HH', 0, 0, 0, NULL, 1, 'pending', '2021-10-20 22:49:25', '2021-10-20 22:49:25'),
(201, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '26ee7d9e-2328-48c1-a2e5-f9e72ad0a302', 'NVTH', 0, 0, 0, NULL, 1, 'pending', '2021-10-20 22:49:25', '2021-10-20 22:49:25'),
(202, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '723a2816-44bf-439a-8030-842778857f60', 'RXSU', 0, 0, 0, NULL, 1, 'pending', '2021-10-20 22:49:26', '2021-10-20 22:49:26'),
(203, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '7b326a1d-b091-4e8f-a58b-6fa8f32bc877', 'PRRD', 0, 0, 0, NULL, 1, 'pending', '2021-10-20 22:49:26', '2021-10-20 22:49:26'),
(204, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '38d0115f-ec1f-4ff7-ba68-0d523fcaaf5f', 'GZEH', 0, 0, 0, NULL, 1, 'pending', '2021-10-20 22:49:27', '2021-10-20 22:49:27'),
(205, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '49307208-524e-4bc1-9973-0135613adaf2', '8TP0', 0, 0, 0, NULL, 1, 'pending', '2021-10-20 22:49:27', '2021-10-20 22:49:27'),
(206, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '94762665-c26f-489e-87a5-eaebe8121d39', 'DQCP', 0, 0, 0, NULL, 1, 'pending', '2021-10-20 22:49:28', '2021-10-20 22:49:28'),
(207, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'ab87a0e4-5784-4e04-b168-aa348cc6cf28', 'AVLY', 0, 0, 0, NULL, 1, 'pending', '2021-10-20 22:49:28', '2021-10-20 22:49:28'),
(208, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'ae27e419-e99a-4c64-a847-67883709408f', 'MX5I', 0, 0, 0, NULL, 1, 'pending', '2021-10-20 22:49:29', '2021-10-20 22:49:29'),
(209, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '79d8a490-6e5c-4aed-91a5-844f7ee77dd4', 'ZCZZ', 0, 0, 0, NULL, 1, 'pending', '2021-10-20 22:49:29', '2021-10-20 22:49:29'),
(210, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'fb9535a1-bcbf-4fb7-a6da-98ea8dc8d471', 'EHJN', 0, 0, 0, NULL, 1, 'pending', '2021-10-20 22:49:30', '2021-10-20 22:49:30'),
(211, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'b2f5f676-3acb-4c36-911c-d72f38b09388', 'P81G', 0, 0, 0, NULL, 1, 'pending', '2021-10-20 22:49:30', '2021-10-20 22:49:30'),
(212, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'ceec74e0-7dc5-4c38-a011-8784aa32aeb9', 'VU7L', 0, 0, 0, NULL, 1, 'pending', '2021-10-20 22:49:31', '2021-10-20 22:49:31'),
(213, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '49dc4d35-8dee-4331-8373-1f2a7b50ab88', 'CENM', 0, 0, 0, NULL, 1, 'pending', '2021-10-20 22:49:31', '2021-10-20 22:49:31'),
(214, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'a265fadd-fc88-4713-82be-df433f5081c3', '4OSL', 0, 0, 0, NULL, 1, 'pending', '2021-10-20 22:49:32', '2021-10-20 22:49:32'),
(215, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '3dcc3555-c359-4be9-ad7f-49e7813a9ab4', 'OZLW', 0, 0, 0, NULL, 1, 'pending', '2021-11-23 08:46:41', '2021-11-23 08:46:41'),
(216, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '17a31560-b22c-4557-a72c-e3401e4c9ac9', 'GJLQ', 0, 0, 0, NULL, 1, 'pending', '2021-11-23 08:46:43', '2021-11-23 08:46:43'),
(217, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '95fdbde1-3896-40fb-8f7b-72e68b5596eb', 'IOU5', 0, 0, 0, NULL, 1, 'pending', '2021-11-23 08:46:43', '2021-11-23 08:46:43'),
(218, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '370ab425-4149-407b-8441-41d040802e35', 'RGMW', 0, 0, 0, NULL, 1, 'pending', '2021-11-23 08:46:44', '2021-11-23 08:46:44'),
(219, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '888fdfc8-af77-4496-a680-1fd0c25c8ea0', '0U9E', 0, 0, 0, NULL, 1, 'pending', '2021-11-23 08:46:44', '2021-11-23 08:46:44'),
(220, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '40fa7fbf-6157-4b2c-bb1c-a7b18cf61ae8', '1C1A', 0, 0, 0, NULL, 1, 'pending', '2021-11-23 08:46:45', '2021-11-23 08:46:45'),
(221, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'cee4e0e2-9cf8-40ff-a852-6772f15e5251', 'KF7H', 0, 0, 0, NULL, 1, 'pending', '2021-11-23 08:46:46', '2021-11-23 08:46:46'),
(222, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'b67aec15-ac9e-43d8-a121-fd139bc86d5a', 'IKJS', 0, 0, 0, NULL, 1, 'pending', '2021-11-23 08:46:46', '2021-11-23 08:46:46'),
(223, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '1fb519e0-5544-43a1-83ab-de75177e7d5f', 'BAAC', 0, 0, 0, NULL, 1, 'pending', '2021-11-23 08:46:47', '2021-11-23 08:46:47'),
(224, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '2645b200-8441-49a6-954f-043295e19560', 'P9SI', 0, 0, 0, NULL, 1, 'pending', '2021-11-23 08:46:47', '2021-11-23 08:46:47'),
(225, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'a5c0b822-e2ad-4906-b1d6-b24f04ef262b', 'KBWR', 0, 0, 0, NULL, 1, 'pending', '2021-11-23 08:46:48', '2021-11-23 08:46:48'),
(226, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '0100517c-be9d-4d51-9e69-7176ffd3e4de', 'EJMI', 0, 0, 0, NULL, 1, 'pending', '2021-11-23 08:46:48', '2021-11-23 08:46:48'),
(227, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'ad7b5821-7cf7-4528-851f-0ae808e843e0', '4HTC', 0, 0, 0, NULL, 1, 'pending', '2021-11-23 08:46:49', '2021-11-23 08:46:49'),
(228, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'fda4a44d-2673-4bfa-a7b5-bba03c95e238', 'F9YS', 0, 0, 0, NULL, 1, 'pending', '2021-11-23 08:46:49', '2021-11-23 08:46:49'),
(229, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '3bf739ed-4760-4a60-9f85-7144ed8ce0f1', 'AZD2', 0, 0, 0, NULL, 1, 'pending', '2021-11-23 08:46:50', '2021-11-23 08:46:50'),
(230, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '0de19f15-d603-414d-abb6-3c6586344d41', 'PS27', 0, 0, 0, NULL, 1, 'pending', '2021-11-23 08:46:50', '2021-11-23 08:46:50'),
(231, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'f426096d-aed1-470e-afd8-f02d298d3205', '0XY6', 0, 0, 0, NULL, 1, 'pending', '2021-11-23 08:46:51', '2021-11-23 08:46:51'),
(232, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '3890e946-5c9f-443a-a706-a5073a57d2e6', 'WXLA', 0, 0, 0, NULL, 1, 'pending', '2021-11-23 08:46:51', '2021-11-23 08:46:51'),
(233, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'f20e132b-e900-472d-9c60-991547431292', 'XMPY', 0, 0, 0, NULL, 1, 'pending', '2021-11-23 08:46:52', '2021-11-23 08:46:52'),
(234, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '968a1bc0-3176-4539-a5e0-ea671db733d3', 'R7GX', 0, 0, 0, NULL, 1, 'pending', '2021-11-23 08:46:52', '2021-11-23 08:46:52'),
(235, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '19d3bd03-b291-49ec-ab48-1b20d206ec3d', 'NZR7', 0, 0, 0, NULL, 1, 'pending', '2021-11-23 08:46:53', '2021-11-23 08:46:53'),
(236, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'f4db8e2b-b916-4885-a634-5e37d3d13d02', '4XQA', 0, 0, 0, NULL, 1, 'pending', '2021-11-23 08:46:53', '2021-11-23 08:46:53'),
(237, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '3459768a-af94-413e-b9ca-ca1cb3d566ce', 'IQN2', 0, 0, 0, NULL, 1, 'pending', '2021-11-23 08:46:54', '2021-11-23 08:46:54'),
(238, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '837c7649-26ca-487b-bb99-a2610c65c4ad', 'EFPI', 0, 0, 0, NULL, 1, 'pending', '2021-11-23 08:46:55', '2021-11-23 08:46:55'),
(239, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '0e506f44-6248-4c93-8529-858ce876d5eb', 'X21Q', 0, 0, 0, NULL, 1, 'pending', '2021-11-23 08:46:55', '2021-11-23 08:46:55'),
(240, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'acd9ae91-d256-4a9d-a930-4980d33a82a4', 'AVHX', 0, 0, 0, NULL, 1, 'pending', '2021-11-23 08:46:56', '2021-11-23 08:46:56'),
(241, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '9d057402-b6ac-4c02-94a8-370e700610cd', 'KUA0', 0, 0, 0, NULL, 1, 'pending', '2021-11-23 08:46:56', '2021-11-23 08:46:56'),
(242, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'dc461311-c8cc-4c51-8c7d-4adff75cada9', '3FFC', 0, 0, 0, NULL, 1, 'pending', '2021-11-23 08:46:57', '2021-11-23 08:46:57'),
(243, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '071d37a3-bde6-44c9-a438-8d1833445850', 'VBSH', 0, 0, 0, NULL, 1, 'pending', '2021-11-23 08:46:57', '2021-11-23 08:46:57');
INSERT INTO `accounts` (`id`, `fullname`, `username`, `description`, `avatar`, `cover`, `address`, `uuid`, `code`, `view`, `tap`, `click`, `member_id`, `theme_id`, `status`, `created_at`, `updated_at`) VALUES
(244, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '6c9de083-f791-4bf3-98b4-d749b55c9969', 'TORC', 0, 0, 0, NULL, 1, 'pending', '2021-11-23 08:46:58', '2021-11-23 08:46:58'),
(245, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '92e80b6b-e18d-49f6-bf1d-355ae2da1eba', 'NWHF', 0, 0, 0, NULL, 1, 'pending', '2021-11-23 08:46:58', '2021-11-23 08:46:58'),
(246, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '183f5013-8090-4815-a112-8f93ab441868', 'P6TA', 0, 0, 0, NULL, 1, 'pending', '2021-11-23 08:46:59', '2021-11-23 08:46:59'),
(247, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'b169ef75-773d-46a5-b71b-29e8f90c1af9', 'FFE4', 0, 0, 0, NULL, 1, 'pending', '2021-11-23 08:47:00', '2021-11-23 08:47:00'),
(248, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'd263350b-ab63-46b8-bdb9-2db427aa05f8', 'MNZD', 0, 0, 0, NULL, 1, 'pending', '2021-11-23 08:47:00', '2021-11-23 08:47:00'),
(249, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'f395739a-3d52-48dd-9d1a-3b3c8cd2d852', 'HICW', 0, 0, 0, NULL, 1, 'pending', '2021-11-23 08:47:01', '2021-11-23 08:47:01'),
(250, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'f895b1f1-47c3-41fb-a17b-b3531834d796', 'KLDE', 0, 0, 0, NULL, 1, 'pending', '2021-11-23 08:47:01', '2021-11-23 08:47:01'),
(251, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'fada535e-08a5-4889-8a96-d2922358f36e', '2MSX', 0, 0, 0, NULL, 1, 'pending', '2021-11-23 08:47:02', '2021-11-23 08:47:02'),
(252, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '0af74ae5-b970-4183-83f1-1b9c5be17a45', 'FURF', 0, 0, 0, NULL, 1, 'pending', '2021-11-23 08:47:02', '2021-11-23 08:47:02'),
(253, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'd8af179a-635f-4533-b91d-966d07cbc3cd', 'NQEJ', 0, 0, 0, NULL, 1, 'pending', '2021-11-23 08:47:03', '2021-11-23 08:47:03'),
(254, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'd2bfc9d7-ced1-4639-a8e6-a8a6a74ff758', '5ABE', 0, 0, 0, NULL, 1, 'pending', '2021-11-23 08:47:04', '2021-11-23 08:47:04'),
(255, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'ee9a7a2f-8d3d-4391-8a22-3b827711eb91', '4JKX', 0, 0, 0, NULL, 1, 'pending', '2021-11-23 08:47:04', '2021-11-23 08:47:04'),
(256, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '6ba32c8e-d7b1-4d27-b810-16b48cd8a33b', 'KGFC', 0, 0, 0, NULL, 1, 'pending', '2021-11-23 08:47:05', '2021-11-23 08:47:05'),
(257, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '0ade0c57-35c1-46f3-8635-a929aa2299ad', 'VTZM', 0, 0, 0, NULL, 1, 'pending', '2021-11-23 08:47:05', '2021-11-23 08:47:05'),
(258, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '51f53411-9ebf-4872-8c39-21b323f27d9d', 'DNU9', 0, 0, 0, NULL, 1, 'pending', '2021-11-23 08:47:07', '2021-11-23 08:47:07'),
(259, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '0ef41629-6a73-45e7-870e-428f1e193bd0', 'UCYA', 0, 0, 0, NULL, 1, 'pending', '2021-11-23 08:47:08', '2021-11-23 08:47:08'),
(260, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '5f4aed4a-3faf-42db-9294-1566f7e6e247', 'TVOM', 0, 0, 0, NULL, 1, 'pending', '2021-11-23 08:47:09', '2021-11-23 08:47:09'),
(261, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'c2d7a98f-3db2-415d-9aee-5d7724566b65', 'Q22Q', 0, 0, 0, NULL, 1, 'pending', '2021-11-23 08:47:09', '2021-11-23 08:47:09'),
(262, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '3f662cd3-ec09-4ffc-94a2-35b0b867e669', 'YR1P', 0, 0, 0, NULL, 1, 'pending', '2021-11-23 08:47:10', '2021-11-23 08:47:10'),
(263, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '057e8897-a36c-4745-a9e6-4f04a55c4324', '0PUW', 0, 0, 0, NULL, 1, 'pending', '2021-11-23 08:47:10', '2021-11-23 08:47:10'),
(264, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'c3711deb-436e-4d84-9450-1e08f78750b2', 'IUJP', 0, 0, 0, NULL, 1, 'pending', '2021-11-23 08:47:11', '2021-11-23 08:47:11'),
(265, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '0dbe4366-446e-4ecc-b60e-82fed5da2f06', 'NJ1G', 0, 0, 0, NULL, 1, 'pending', '2021-11-23 08:47:11', '2021-11-23 08:47:11'),
(266, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '10871c3a-04cb-4cd7-8716-77396b5fca6f', 'UYTC', 0, 0, 0, NULL, 1, 'pending', '2021-11-23 08:47:12', '2021-11-23 08:47:12'),
(267, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'a351a323-728f-459e-ae61-0e8fe8fe9dfa', 'L7KB', 0, 0, 0, NULL, 1, 'pending', '2021-11-23 08:47:12', '2021-11-23 08:47:12'),
(268, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '912c37ef-8fb9-47a4-b100-f88c29a877c3', '9DK7', 0, 0, 0, NULL, 1, 'pending', '2021-11-23 08:47:13', '2021-11-23 08:47:13'),
(269, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '92315ffb-6c17-487a-bdbd-cadbf87ee538', 'VAYB', 0, 0, 0, NULL, 1, 'pending', '2021-11-23 08:47:14', '2021-11-23 08:47:14'),
(270, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'd0f2c21d-1eb5-48e6-b0b7-ffaff97738d6', 'ZZE3', 0, 0, 0, NULL, 1, 'pending', '2021-11-23 08:47:14', '2021-11-23 08:47:14'),
(271, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'c44ebcc7-ed2e-4b03-b026-775dfac3b193', 'BZID', 0, 0, 0, NULL, 1, 'pending', '2021-11-23 08:47:15', '2021-11-23 08:47:15'),
(272, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '16ea1481-00dd-4131-87bf-57a2a0882099', 'CJKI', 0, 0, 0, NULL, 1, 'pending', '2021-11-23 08:47:15', '2021-11-23 08:47:15'),
(273, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'a063eb8f-d38a-464e-9a00-79f1ce31edaa', 'HLYR', 0, 0, 0, NULL, 1, 'pending', '2021-11-23 08:47:16', '2021-11-23 08:47:16'),
(274, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'bc1a4583-9cb8-497a-b031-9bdeb1fc3b74', 'VKH9', 0, 0, 0, NULL, 1, 'pending', '2021-11-23 08:47:17', '2021-11-23 08:47:17'),
(275, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'c5bd92a3-65ff-4563-93cc-e5dbc9108845', '94DA', 0, 0, 0, NULL, 1, 'pending', '2021-11-23 08:47:17', '2021-11-23 08:47:17'),
(276, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '852f3f90-bcd6-45d5-801c-b56d696927df', 'EDQW', 0, 0, 0, NULL, 1, 'pending', '2021-11-23 08:47:18', '2021-11-23 08:47:18'),
(277, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '46887871-3d5f-4c49-b2df-707b971474e6', 'W2NL', 0, 0, 0, NULL, 1, 'pending', '2021-11-23 08:47:19', '2021-11-23 08:47:19'),
(278, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '646fa114-28a4-4a92-8427-b8cf1d95395c', 'CLYH', 0, 0, 0, NULL, 1, 'pending', '2021-11-23 08:47:19', '2021-11-23 08:47:19'),
(279, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '94ddeb83-7ba4-4b03-9984-1e91890666c4', '6PGG', 0, 0, 0, NULL, 1, 'pending', '2021-11-23 08:47:20', '2021-11-23 08:47:20'),
(280, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'bb5d30f8-f72f-46ed-8150-6c60d1c072e7', 'FIH8', 0, 0, 0, NULL, 1, 'pending', '2021-11-23 08:47:20', '2021-11-23 08:47:20'),
(281, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'ad92f2ab-3b73-4d22-8768-7d4048ce6e5d', 'EP6G', 0, 0, 0, NULL, 1, 'pending', '2021-11-23 08:47:21', '2021-11-23 08:47:21'),
(282, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'f9b90c72-b85a-4163-abf8-6092a36543cd', '5QU0', 0, 0, 0, NULL, 1, 'pending', '2021-11-23 08:47:22', '2021-11-23 08:47:22'),
(283, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '6c32da92-2634-440a-8be3-d2353481fcf4', '4YL7', 0, 0, 0, NULL, 1, 'pending', '2021-11-23 08:47:22', '2021-11-23 08:47:22'),
(284, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'b660cac2-6fbc-4e10-8143-dc4e7fb06f62', 'LJWW', 0, 0, 0, NULL, 1, 'pending', '2021-11-23 08:47:23', '2021-11-23 08:47:23'),
(285, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'aca43419-63af-45ab-b678-e836b40faa27', 'LN5M', 0, 0, 0, NULL, 1, 'pending', '2021-11-23 08:47:23', '2021-11-23 08:47:23'),
(286, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '06381346-cb6e-4809-b493-3bd75d15a0fb', 'IZFC', 0, 0, 0, NULL, 1, 'pending', '2021-11-23 08:47:24', '2021-11-23 08:47:24'),
(287, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '7f77f5da-71a0-475e-95de-2ac94d4ecc3f', '4EIC', 0, 0, 0, NULL, 1, 'pending', '2021-11-23 08:47:25', '2021-11-23 08:47:25'),
(288, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '616c214f-de4b-4123-bd9f-61f57c01b777', 'YYSD', 0, 0, 0, NULL, 1, 'pending', '2021-11-23 08:47:26', '2021-11-23 08:47:26'),
(289, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'babff0db-044d-401c-9714-4a6e4f7e4663', 'NPE2', 0, 0, 0, NULL, 1, 'pending', '2021-11-23 08:47:26', '2021-11-23 08:47:26'),
(290, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'aec95f53-cd22-4754-9a0b-c3fba02c707e', '2GPG', 0, 0, 0, NULL, 1, 'pending', '2021-11-23 08:47:27', '2021-11-23 08:47:27'),
(291, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '5a3eb45e-fea4-4d45-ab93-c0e472396fcf', 'MV2L', 0, 0, 0, NULL, 1, 'pending', '2021-11-23 08:47:27', '2021-11-23 08:47:27'),
(292, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'f7b0af8f-5c57-4795-ad60-309355bd2d5b', 'RPIH', 0, 0, 0, NULL, 1, 'pending', '2021-11-23 08:47:28', '2021-11-23 08:47:28'),
(293, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'edebaaca-67c5-4a16-baa8-5d19059b5f7a', 'II1S', 0, 0, 0, NULL, 1, 'pending', '2021-11-23 08:47:29', '2021-11-23 08:47:29'),
(294, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '96e658cf-1681-447e-aa2f-c6615d932d5c', 'KF4L', 0, 0, 0, NULL, 1, 'pending', '2021-11-23 08:47:29', '2021-11-23 08:47:29'),
(295, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '2292ca85-3077-4ac5-8434-4e599b8dd440', 'EOLA', 0, 0, 0, NULL, 1, 'pending', '2021-11-23 08:47:30', '2021-11-23 08:47:30'),
(296, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '2ec587aa-1157-4e59-9c04-6f7198ca7da7', 'EHOG', 0, 0, 0, NULL, 1, 'pending', '2021-11-23 08:47:30', '2021-11-23 08:47:30'),
(297, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'c9792fad-340b-4807-b588-32cb4818f5b9', '4Q7Y', 0, 0, 0, NULL, 1, 'pending', '2021-11-23 08:47:31', '2021-11-23 08:47:31'),
(298, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '47775324-05ea-46ef-b1ed-ba2b331c5213', 'EY8O', 0, 0, 0, NULL, 1, 'pending', '2021-11-23 08:47:31', '2021-11-23 08:47:31'),
(299, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '07315c2b-871d-445e-9d2e-452eccfde8fc', 'BZOG', 0, 0, 0, NULL, 1, 'pending', '2021-11-23 08:47:32', '2021-11-23 08:47:32'),
(300, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'c20bf995-6c87-4319-a2ac-25e6f52db4ef', 'QNOK', 0, 0, 0, NULL, 1, 'pending', '2021-11-23 08:47:32', '2021-11-23 08:47:32'),
(301, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '3e1153ad-cd2f-4bf7-a67b-6d45e71f42fe', 'ER7J', 0, 0, 0, NULL, 1, 'pending', '2021-11-23 08:47:33', '2021-11-23 08:47:33'),
(302, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '519f7908-9951-445a-85a9-b6f7c68d76d4', 'VRER', 0, 0, 0, NULL, 1, 'pending', '2021-11-23 08:47:34', '2021-11-23 08:47:34'),
(303, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '0fa6c2cf-ac8e-4cb3-8213-b2372e8d5fd5', 'KDFV', 0, 0, 0, NULL, 1, 'pending', '2021-11-23 08:47:34', '2021-11-23 08:47:34'),
(304, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '06d5c44b-fe78-4900-b6ec-d398324bc3f3', 'U1BE', 0, 0, 0, NULL, 1, 'pending', '2021-11-23 08:47:34', '2021-11-23 08:47:34'),
(305, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'eaa7d655-ac16-4861-bfbd-049c51cc0848', 'WZCG', 0, 0, 0, NULL, 1, 'pending', '2021-11-23 08:47:35', '2021-11-23 08:47:35'),
(306, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '491934de-e027-4c6e-b189-3a0e6f67c4a3', 'YIUB', 0, 0, 0, NULL, 1, 'pending', '2021-11-23 08:47:36', '2021-11-23 08:47:36'),
(307, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '59db1abc-0da9-4ad2-aa64-3d00716960d9', 'GIBE', 0, 0, 0, NULL, 1, 'pending', '2021-11-23 08:47:36', '2021-11-23 08:47:36'),
(308, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'db74e203-f676-40fe-aa0d-f684fde4678c', 'YKQD', 0, 0, 0, NULL, 1, 'pending', '2021-11-23 08:47:36', '2021-11-23 08:47:36'),
(309, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'c9f11cec-8ca7-41e3-b76b-85bcf88ea7f0', '5Y0W', 0, 0, 0, NULL, 1, 'pending', '2021-11-23 08:47:37', '2021-11-23 08:47:37'),
(310, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '08a3875e-3f00-4a7d-bb4b-fd940ccfbce2', 'QWRB', 0, 0, 0, NULL, 1, 'pending', '2021-11-23 08:47:38', '2021-11-23 08:47:38'),
(311, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'b740ae41-d462-4376-895a-41b6b9a90ad6', 'DHMV', 0, 0, 0, NULL, 1, 'pending', '2021-11-23 08:47:38', '2021-11-23 08:47:38'),
(312, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'af57fbef-9378-4dc3-8820-8cba47bf3255', 'PDIG', 0, 0, 0, NULL, 1, 'pending', '2021-11-23 08:47:39', '2021-11-23 08:47:39'),
(313, 'Hoang Duc Hiep', 'Hoanghiep86', 'Chuyên Gia Chống Ế🥷🏻', 'avatars/avatar-1637731047173.png', 'covers/1a7e6f6b-a236-4f72-97d5-e5b58ccf9366.jpeg', 'Hanoi Vietnam', '0add6f92-0711-450a-97de-b340809164cf', 'F455', 9, 3, 6, 15, 8, 'pending', '2021-11-23 08:47:39', '2022-03-17 19:54:05'),
(314, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'c1375b5f-543f-48e9-93f3-eab886866523', 'N356', 0, 0, 0, NULL, 1, 'pending', '2021-11-23 08:47:40', '2021-11-23 08:47:40'),
(315, 'Nguyễn Quang Trung', 'Nguyễn Quang Trung', 'CTHĐQT H3T AUTO', 'avatars/avatar-1640680586609.png', 'covers/72158e06-297a-49e5-992f-d5cd54a419e1.jpeg', 'H3T Auto Số 3-5 Nguyễn Văn Linh, Long Biên, Hà Nội', '15910980-0d8a-4da7-a470-7ec1396082cb', 'X6F0', 60, 23, 37, 44, 9, 'published', '2021-12-19 00:13:16', '2022-05-02 07:56:52'),
(316, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '5d60c476-f8e7-4fbd-877a-755f133cc7cb', '1UHP', 0, 0, 0, NULL, 1, 'pending', '2021-12-19 00:13:18', '2021-12-19 00:13:18'),
(317, 'Hoàng Văn Phú', 'Hoàng Văn Phú', 'Ông hoàng chịch dạo :))', 'avatars/avatar-1649558092947.png', 'covers/d72dac63-e877-4fe0-a35f-353f46567171.jpeg', 'Hà Nội', '1a5b1b5d-8b04-4d7f-be08-5992f4b0ecf1', 'IH5H', 33, 12, 21, 93, 1, 'published', '2021-12-19 00:13:19', '2022-05-11 07:19:07'),
(318, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'e70e59c0-711b-4d3c-ad44-cf64e8c723e1', 'B0SS', 0, 0, 0, NULL, 1, 'pending', '2021-12-19 00:13:19', '2021-12-19 00:13:19'),
(319, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '4fa629ec-be9c-4b45-97e4-6c7e109dbb97', 'EFZY', 0, 0, 0, NULL, 1, 'pending', '2021-12-19 00:13:20', '2021-12-19 00:13:20'),
(320, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'fa34d40c-7f61-46df-be6e-dabfe1cf2ee5', 'TAIW', 0, 0, 0, NULL, 1, 'pending', '2021-12-19 00:13:21', '2021-12-19 00:13:21'),
(321, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'e0625a63-a663-4633-a9ab-975ac9c7bd7f', 'IYJ8', 0, 0, 0, NULL, 1, 'pending', '2021-12-19 00:13:21', '2021-12-19 00:13:21'),
(322, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '4f44f5e3-1ea7-48ca-8925-429b64ef1ee1', 'OVKO', 0, 0, 0, NULL, 1, 'pending', '2021-12-19 00:13:22', '2021-12-19 00:13:22'),
(323, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '7881920a-8a78-41f1-b65b-ffe00af4f8e6', 'AFIC', 0, 0, 0, NULL, 1, 'pending', '2021-12-19 00:13:23', '2021-12-19 00:13:23'),
(324, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '32508bda-8562-46b6-810a-61a47b719fcd', 'QBHI', 0, 0, 0, NULL, 1, 'pending', '2021-12-19 00:13:23', '2021-12-19 00:13:23'),
(325, 'Đào Anh Linh', 'Linhkaoo', '🐻', 'avatars/avatar-1657447026144.png', 'covers/4d416797-d22a-46e8-aa85-cdd76023a082.jpeg', 'Hà Nội', '95ef5e59-fcb5-403e-81b4-bbf5e0d29def', 'NZVK', 53, 21, 32, 151, 8, 'published', '2021-12-19 00:13:24', '2022-09-05 04:24:26'),
(326, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '5960ec7f-6473-4224-bee5-9f1240acc523', 'EKLP', 0, 0, 0, NULL, 1, 'pending', '2021-12-19 00:13:25', '2021-12-19 00:13:25'),
(327, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'eee59e8c-7d94-40c7-9ab4-87c34580fc1e', 'QXIO', 0, 0, 0, NULL, 1, 'pending', '2021-12-19 00:13:26', '2021-12-19 00:13:26'),
(328, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'cb0fa051-52d5-4221-8cde-269a25c05d9b', 'RNDQ', 0, 0, 0, NULL, 1, 'pending', '2021-12-19 00:13:26', '2021-12-19 00:13:26'),
(329, 'Khải Lốc Xoáy🌪', 'Khải lốc xoáy', 'Diễn Viên Tự Do', 'avatars/avatar-1641372794268.png', 'covers/d86b7614-e2ab-4740-8825-f93c37470b86.jpeg', 'Ha Noi', '722cb9f7-580d-49d5-b16c-2fd619be753e', 'AXZ9', 37, 16, 21, 58, 9, 'published', '2021-12-19 00:13:27', '2022-06-18 13:43:58'),
(330, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'b7174182-6991-4d86-beeb-805e74c29b2c', '9HTF', 0, 0, 0, NULL, 1, 'pending', '2021-12-19 00:13:28', '2021-12-19 00:13:28'),
(331, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '5e923a8e-df21-4a94-8a70-e91c98c24959', '4ONJ', 0, 0, 0, NULL, 1, 'pending', '2021-12-19 00:13:28', '2021-12-19 00:13:28'),
(332, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '3317a44f-d576-4273-a6a5-459576fcc9c6', 'EIS1', 0, 0, 0, NULL, 1, 'pending', '2021-12-19 00:13:29', '2021-12-19 00:13:29'),
(333, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'c52c4fab-6c92-46fa-949a-d54be0cec891', 'T7WE', 0, 0, 0, NULL, 1, 'pending', '2021-12-19 00:13:29', '2021-12-19 00:13:29'),
(334, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '99599c00-7cc4-46fd-b03d-6d89da857ecd', '6TV2', 0, 0, 0, NULL, 1, 'pending', '2021-12-19 00:13:30', '2021-12-19 00:13:30'),
(335, 'Tô Thùy Anh', 'Angela Ott', 'Dreams don\'t work until you do.', 'avatars/avatar-1650531459802.png', 'logo-1/untitled-1.jpg', 'Long Biên, Hà Nội', 'a9588e36-eca7-4fab-8979-6e4ada361e55', 'JHU6', 86, 31, 55, 99, 9, 'published', '2021-12-19 00:13:30', '2022-07-24 00:33:03'),
(336, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'ba1a1d4e-4022-4046-b21d-d7adc6d53128', 'ULPP', 0, 0, 0, NULL, 1, 'pending', '2021-12-19 00:13:31', '2021-12-19 00:13:31'),
(337, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '8fe12baf-143a-495b-ad57-a344627e462e', '8VXM', 0, 0, 0, NULL, 1, 'pending', '2021-12-19 00:13:31', '2021-12-19 00:13:31'),
(338, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'cf68d51e-208b-4c1b-b95a-21d6cac37b10', 'RURV', 0, 0, 0, NULL, 1, 'pending', '2021-12-19 00:13:32', '2021-12-19 00:13:32'),
(339, 'Nguyễn Tú Anh', 'Nguyễn Tú Anh', 'Sống bằng cả trái tym ❤ \r\nVới 200% năng lượng', 'avatars/avatar-1653448587097.png', '33.jpg', 'R2 Royal City', 'aba8d0f5-7b57-41b5-81fe-467d3888eb77', 'AAFI', 77, 30, 47, 127, 1, 'published', '2021-12-19 00:13:32', '2022-09-09 08:24:00'),
(340, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '5899f5d6-ef7b-4e67-a725-107ce670a3b3', 'UXBR', 0, 0, 0, NULL, 1, 'pending', '2021-12-19 00:13:33', '2021-12-19 00:13:33'),
(341, 'Nguyễn thanh hiếu', 'Hieucacanh', 'Chào bạn nha ^^Thêm bạn thêm niềm vui...có cần gì thì mạnh dạn liên hệ thông tin mình nha...', 'avatars/avatar-1648879201660.png', 'logo-1/untitled-1.jpg', 'Cầu rạch tra,ấp 3 xã,đông thạnh,huyện hóc môn,Tphcm.', '86739799-d3ae-4677-913e-8a55c61d79f7', 'NZ1U', 99, 13, 86, 90, 9, 'published', '2021-12-19 00:13:34', '2022-05-30 03:25:22'),
(342, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '07eeda01-e6f1-41de-96ba-b007b383bfec', 'WMYJ', 0, 0, 0, NULL, 1, 'pending', '2021-12-19 00:13:34', '2021-12-19 00:13:34'),
(343, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '00b5ddad-225b-4f97-9f42-e00fb048c7da', 'IBGX', 0, 0, 0, NULL, 1, 'pending', '2021-12-19 00:13:35', '2021-12-19 00:13:35'),
(344, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '91d0bdf4-b9eb-4925-90bf-874cfa9146d8', 'JDEW', 0, 0, 0, NULL, 1, 'pending', '2021-12-19 00:13:35', '2021-12-19 00:13:35'),
(345, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '1d3b93d0-7930-43d6-9f6c-58ccb41ab79b', '2TBA', 0, 0, 0, NULL, 1, 'pending', '2021-12-19 00:13:36', '2021-12-19 00:13:36'),
(346, 'Kim Mạnh Quyền', 'Kim Mạnh Quyền', 'Xin chào mọi người mình là Quyền', 'avatars/avatar-1647324097820.png', 'logo-1/untitled-1.jpg', 'Hà Nội', '7b94db6f-aacf-4706-a210-bc6e7951b3f4', 'XREZ', 56, 20, 36, 79, 1, 'published', '2021-12-19 00:13:36', '2022-07-29 02:38:56'),
(347, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'fafa040e-2d11-4560-ad6d-590fdebce3a3', 'BV4C', 0, 0, 0, NULL, 1, 'pending', '2021-12-19 00:13:37', '2021-12-19 00:13:37'),
(348, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '3a33ad0e-fb78-455c-b08f-d49dc8936c7e', 'SCMW', 7, 7, 0, 117, 1, 'published', '2021-12-19 00:13:37', '2022-06-07 04:07:02'),
(349, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'c0e9db59-8f11-4ba4-8792-f8111dad6050', 'TKKD', 0, 0, 0, NULL, 1, 'pending', '2021-12-19 00:13:38', '2021-12-19 00:13:38'),
(350, 'Nông Ngọc Hưởng', 'ngochuongadr', 'Thông tin cá nhân', 'avatars/avatar-1648177051527.png', 'logo-1/untitled-1.jpg', 'Xã Cường Lợi, huyện Na Rì, tỉnh Bắc Kạn', '67b066d7-d60c-467c-afa9-ae12bc1a0f61', 'PTLA', 210, 96, 114, 88, 1, 'published', '2021-12-19 00:13:39', '2022-09-10 09:02:02'),
(351, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '06acb92f-5200-4b38-a85b-9a9ca1ea935d', '1VE9', 0, 0, 0, NULL, 1, 'pending', '2021-12-19 00:13:39', '2021-12-19 00:13:39'),
(352, 'Nguyễn Thanh Hào', '0984843537', 'Sdt liên hệ 0984843537', 'avatars/avatar-1651120121634.png', 'logo-1/untitled-1.jpg', 'Toà nhà Hải Linh đông hải 1 hải an hải phòng', '84236690-0a29-40e1-a0ba-8823b6161aba', 'FZJH', 44, 20, 24, 100, 1, 'published', '2021-12-19 00:13:40', '2022-07-12 02:12:42'),
(353, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'd4626ca5-826f-454f-b558-e78cb8efd9c8', 'WIC5', 0, 0, 0, NULL, 1, 'pending', '2021-12-19 00:13:40', '2021-12-19 00:13:40'),
(354, 'Nguyễn Nhật Hào', 'lil wa^y.ne`', 'chikichitamela', 'avatars/avatar-1654407764256.png', 'covers/9f56dbbf-0455-452e-ad70-4e2544122261.jpeg', 'HCM', 'ac321dc0-a06b-45cb-9b23-e75468c267cd', 'QNIA', 90, 45, 45, 131, 1, 'published', '2021-12-19 00:13:41', '2022-09-07 23:17:25'),
(355, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'b6579a0e-2f7f-4dbb-a58f-d823fac6a739', 'YOOG', 0, 0, 0, NULL, 1, 'pending', '2021-12-19 00:13:41', '2021-12-19 00:13:41'),
(356, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '1b367dae-4f26-4b3b-ad5c-c60b7cf2befc', '5LNT', 0, 0, 0, NULL, 1, 'pending', '2021-12-19 00:13:42', '2021-12-19 00:13:42'),
(357, 'Hà Bar', 'Hà Bar', 'Đặt bàn Đẹp ☎️:0962.030.772', 'avatars/avatar-1651209329835.png', 'logo-1/untitled-1.jpg', '46 mã mây - hoàn kiếm - Hà Nội', '75b4fcec-b99e-4bf5-b46c-945e4b83a8c7', 'DW1M', 110, 44, 66, 102, 1, 'published', '2021-12-19 00:13:42', '2022-06-26 09:49:00'),
(358, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '022dfcc4-9c4e-40b0-9b1d-e6f2973111a0', 'QNRC', 0, 0, 0, NULL, 1, 'pending', '2021-12-19 00:13:43', '2021-12-19 00:13:43'),
(359, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'c3aa00a0-293a-4344-949b-32d670991e0d', 'YAIY', 0, 0, 0, NULL, 1, 'pending', '2021-12-19 00:13:43', '2021-12-19 00:13:43'),
(360, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'e32655be-8831-48fc-96d5-a9d0b4bb9d3a', 'DXQN', 0, 0, 0, NULL, 1, 'pending', '2021-12-19 00:13:44', '2021-12-19 00:13:44'),
(361, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '399c5c55-8c09-4882-9b8d-f736c7a3346e', 'B4NR', 0, 0, 0, NULL, 1, 'pending', '2021-12-19 00:13:44', '2021-12-19 00:13:44'),
(362, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '1702a83f-f28c-49be-8a5a-a23d3719dbea', 'R5OW', 0, 0, 0, NULL, 1, 'pending', '2021-12-19 00:13:45', '2021-12-19 00:13:45'),
(363, 'Nguyễn Thanh Lương', 'Thanh Lương', 'Lương milo', 'avatars/avatar-1650001172260.png', 'logo-1/untitled-1.jpg', 'Bắc giang', '8cd21cde-d2b4-4799-a8b4-cc078e097ced', 'ZBN3', 83, 36, 47, 96, 1, 'published', '2021-12-19 00:13:45', '2022-08-28 19:09:17'),
(364, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'c7263f32-e7eb-42b3-b39e-7eb5673ae364', 'YXAW', 0, 0, 0, NULL, 1, 'pending', '2021-12-19 00:13:46', '2021-12-19 00:13:46'),
(365, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'cd4ffab5-b6c0-4005-b600-4ebcde4f05d5', 'ZINH', 0, 0, 0, NULL, 1, 'pending', '2021-12-19 00:13:47', '2021-12-19 00:13:47'),
(366, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '5b338ff5-f326-4392-880e-2a92a62b4487', 'P1LQ', 0, 0, 0, NULL, 1, 'pending', '2021-12-19 00:13:47', '2021-12-19 00:13:47'),
(367, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'cdd19347-2736-48b5-ab04-e078a0e99a94', 'V4VT', 0, 0, 0, NULL, 1, 'pending', '2021-12-19 00:13:48', '2021-12-19 00:13:48'),
(368, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'f540decc-e590-48c7-a7d2-e486170724f6', 'IWX3', 0, 0, 0, NULL, 1, 'pending', '2021-12-19 00:13:48', '2021-12-19 00:13:48'),
(369, 'Nguyễn Trường Giang', 'Giang BĐS', 'Chuyên tư vấn các dòng sản phẩm bđs cao cấp biệt thự, shophouse nghỉ dưỡng', 'avatars/avatar-1660019640256.png', 'covers/67376270-57bb-4cb6-b684-170e63b9ca5f.jpeg', '25-27 Lê Lợi, TP Thanh Hoá', '6dace8ba-74a6-4cfd-8911-8a4a82bb6331', '6ARV', 66, 25, 41, 157, 1, 'published', '2021-12-19 00:13:49', '2022-08-20 05:16:05'),
(370, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'cc3845a0-c488-442f-8c7a-3539e7b9c137', 'PO2U', 0, 0, 0, NULL, 1, 'pending', '2021-12-19 00:13:49', '2021-12-19 00:13:49'),
(371, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'df178507-099d-4ba2-bae1-f9b6289d8e81', 'BQBA', 0, 0, 0, NULL, 1, 'pending', '2021-12-19 00:13:50', '2021-12-19 00:13:50'),
(372, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '2127392b-58b3-4b42-8225-ed19107f7ac7', 'JVIP', 0, 0, 0, NULL, 1, 'pending', '2021-12-19 00:13:50', '2021-12-19 00:13:50'),
(373, 'Lý Xuân Phúc', 'Lx Phúc', 'Ưa nhìn', 'avatars/avatar-1649054184602.png', 'logo-1/untitled-1.jpg', 'Dương Nội Hà Đông', '7528ab7c-84a8-44b2-9373-eab268c5de3f', '34AX', 22, 9, 13, 92, 1, 'published', '2021-12-19 00:13:51', '2022-04-20 12:32:18'),
(374, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '510ca52b-de4a-4b58-92b0-30d2d2b56b7d', 'DBJ2', 6, 6, 0, 111, 1, 'published', '2021-12-19 00:13:51', '2022-05-06 06:03:08'),
(375, 'Lê Ngọc Bách', 'Lê Ngọc Bách', 'Chào mừng bạn đến với profile của Bách', 'avatars/avatar-1647313845445.png', 'logo-1/untitled-1.jpg', 'Hà Đông, Hà Nội.', '7b42a082-3227-4cbf-9c06-2f8d00e29691', 'HV5H', 35, 12, 23, 80, 9, 'published', '2021-12-19 00:13:52', '2022-05-25 05:53:19'),
(376, 'Lê Đăng', 'Đăng SNIFF 46 Mã Mây - Hoàn Kiếm', 'Book Bar - Clup', 'avatars/avatar-1654087148881.png', 'covers/7d4868c0-ffbb-48ac-9e3c-acedcb19c950.jpeg', 'SNIFF 46 Mã Mây Hoàn Kiếm Hà Nội', '47b1d106-97d7-4bf8-aec5-3db6962944a9', 'GJWO', 98, 37, 61, 130, 1, 'published', '2021-12-19 00:13:53', '2022-09-06 00:10:56'),
(377, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '37c8ec47-1df9-4515-a58e-6c64c17435b9', 'KHC7', 0, 0, 0, NULL, 1, 'pending', '2021-12-19 00:13:53', '2021-12-19 00:13:53'),
(378, 'Trần Phương Anh', 'Phương Anh Trần', 'Car & Coral', 'avatars/avatar-1650385386604.png', 'logo-1/untitled-1.jpg', 'D13/ B2, KP5, Tân Hiệp, Biên Hoà, Đồng Nai', '78a680cb-5534-4571-af06-02b7dd964231', 'BEJW', 13, 6, 7, 97, 1, 'published', '2021-12-19 00:13:54', '2022-08-18 01:47:50'),
(379, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '728f2ba1-9dfb-4a0b-a68e-aefceb1c3c71', 'I6GO', 0, 0, 0, NULL, 1, 'pending', '2021-12-19 00:13:54', '2021-12-19 00:13:54'),
(380, 'Minh Dũng', 'Minhdungzdc9', 'Bảo vệ tại https://www.facebook.com/ZDCchuyeniPhone', 'avatars/avatar-1647182215753.png', 'logo-1/untitled-1.jpg', '25 ấu triệu hàng trống hoàn kiếm hà nội', '51843472-ab70-4ad3-830d-d51c2e660ffd', 'EFDL', 77, 33, 44, 78, 1, 'published', '2021-12-19 00:13:55', '2022-04-17 02:38:51'),
(381, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'e63e581a-9de6-4921-b7e8-2b349daceb74', 'WYOZ', 0, 0, 0, NULL, 1, 'pending', '2021-12-19 00:13:55', '2021-12-19 00:13:55'),
(382, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'f7b2ad78-3367-40dc-af46-ba6fced391ea', 'DUKO', 0, 0, 0, NULL, 1, 'pending', '2021-12-19 00:13:56', '2021-12-19 00:13:56'),
(383, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'de5c8ca8-e372-460f-b19e-8d856937d2ad', 'GUI8', 0, 0, 0, NULL, 1, 'pending', '2021-12-19 00:13:56', '2021-12-19 00:13:56'),
(384, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '35afd9b5-6720-4808-b918-93eb79fa396f', '9VTR', 0, 0, 0, NULL, 1, 'pending', '2021-12-19 00:13:57', '2021-12-19 00:13:57'),
(385, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'df9df38d-aaa0-40fe-8cdf-16bee5f179e4', 'O2TF', 0, 0, 0, NULL, 1, 'pending', '2021-12-19 00:13:57', '2021-12-19 00:13:57'),
(386, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'aea0bd0b-05cf-4bca-bc20-35027fc2f2c5', 'QLU0', 0, 0, 0, NULL, 1, 'pending', '2021-12-19 00:13:58', '2021-12-19 00:13:58'),
(387, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'fb5bca0c-ab35-4703-b4e3-54f8164d2abf', '8XQA', 0, 0, 0, NULL, 1, 'pending', '2021-12-19 00:13:58', '2021-12-19 00:13:58'),
(388, 'Dương Xuân Trường', 'duongxuantruong', 'Muốn Lấy Vợ', 'avatars/avatar-1644465552629.png', 'bia-phong-bi-to.jpg', 'Hà Nội Việt Nam', '052ec2e2-f680-4373-bb42-fb8ebec2c4c1', '2DNJ', 19, 8, 11, 74, 1, 'published', '2021-12-19 00:13:59', '2022-06-12 01:15:02'),
(389, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '2f2aeac8-6d3c-42cf-b06d-cd1b672648e7', 'YEQL', 0, 0, 0, NULL, 1, 'pending', '2021-12-19 00:14:00', '2021-12-19 00:14:00'),
(390, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'ca6c09ef-76ad-44ca-a384-d24c1c354549', '7RTK', 0, 0, 0, NULL, 1, 'pending', '2021-12-19 00:14:00', '2021-12-19 00:14:00'),
(391, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '3670f8ff-5181-4986-a47f-49f17557ce50', 'M9WF', 0, 0, 0, NULL, 1, 'pending', '2021-12-19 00:14:01', '2021-12-19 00:14:01'),
(392, 'Diệu Bé 🙆', 'Hoangthuydieu', 'Bịp 🙈', 'avatars/avatar-1652354956693.png', 'covers/screenshot-20220216-222402-1.jpg', 'Chi lăng - Lạng Sơn', '7ba1234c-148d-4296-9366-37a40b11f28a', 'OC1G', 17, 8, 9, 120, 1, 'published', '2021-12-19 00:14:01', '2022-07-16 18:30:23'),
(393, 'Nguyễn Ngọc Mai', 'Nguyễn Ngọc Mai', 'Độc Thân', 'avatars/avatar-1652413179790.png', 'covers/d67fe28c-2f6b-417b-81e1-7cdcd4b5c897.jpeg', 'Thanh Hoá Việt Nam', '6abe9ba9-a1ad-41be-a389-1c57cde7ce1a', 'UMTH', 34, 15, 19, 121, 1, 'published', '2021-12-19 00:14:02', '2022-08-25 21:25:25'),
(394, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'd8810789-dd7e-4939-8426-2369c6ff2948', 'IWGT', 0, 0, 0, NULL, 1, 'pending', '2021-12-19 00:14:02', '2021-12-19 00:14:02'),
(395, 'Phạm Văn nhân', 'Nhân', 'Kẻ hủy diệt sự cô đơn', 'avatars/default-avatar.png', '33.jpg', 'Sài gòn vietnam', 'a7bbff93-2b15-47e7-9a5e-ad9a69ef2212', 'BE56', 10, 5, 5, 139, 1, 'published', '2021-12-19 00:14:03', '2022-06-19 04:15:13'),
(396, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '277e674f-8149-49e2-8978-24e3061872e6', 'YTFG', 0, 0, 0, NULL, 1, 'pending', '2021-12-19 00:14:04', '2021-12-19 00:14:04'),
(397, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'b8bc0f82-f354-4987-994c-7555c37a5465', 'K2SK', 0, 0, 0, NULL, 1, 'pending', '2021-12-19 00:14:04', '2021-12-19 00:14:04'),
(398, 'Trịnh Minh Tâm', 'Trịnh Minh Tâm', '💛💛💛', 'avatars/avatar-1640169975630.png', 'covers/7291bb29-81c6-4c87-aeec-8552530208c3.jpeg', 'Hà Nội', '052e4a0f-87b0-4d98-a9af-4dffcb0a92cb', 'QQEJ', 30, 12, 18, 41, 2, 'published', '2021-12-19 00:14:05', '2022-07-26 23:52:09'),
(399, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '5f154bc8-2879-4e28-b94f-d2ddad9ab8c7', 'QY5E', 0, 0, 0, NULL, 1, 'pending', '2021-12-19 00:14:05', '2021-12-19 00:14:05'),
(400, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '2a8960c4-fa22-4d6f-94bc-44b37c1d6444', 'XBPT', 0, 0, 0, NULL, 1, 'pending', '2021-12-19 00:14:06', '2021-12-19 00:14:06'),
(401, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '9e821752-e00b-4984-851a-d13c9700d471', 'SZ2W', 0, 0, 0, NULL, 1, 'pending', '2021-12-19 00:14:06', '2021-12-19 00:14:06'),
(402, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '33d6259b-ac8f-48d8-a36c-41b0f43fe424', 'CTNN', 0, 0, 0, NULL, 1, 'pending', '2021-12-19 00:14:07', '2021-12-19 00:14:07'),
(403, 'Nguyễn Quỳnh', 'quynh284', '💋', 'avatars/avatar-1651302555540.png', 'logo-1/untitled-1.jpg', '1/26 Nguyễn Văn Hoài, kp7, Tân Phong, Biên Hoà, Đồng Nai', '843055b3-2b6a-4978-bc27-ec04d8789b4c', 'YJ2V', 33, 11, 22, 105, 2, 'published', '2021-12-19 00:14:07', '2022-07-10 23:39:06'),
(404, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '40028904-2491-4566-aab7-9b63c0a276ce', 'M3ZX', 0, 0, 0, NULL, 1, 'pending', '2021-12-19 00:14:08', '2021-12-19 00:14:08'),
(405, 'Nhung chanh', 'Nhung', 'Béo', 'avatars/avatar-1653042967107.png', 'covers/8519db4c-825c-4a4f-a816-01b0a2fa8aca.jpeg', 'Nam từ liêm- hà nội', '6a58518f-eb4e-41fd-a80f-45027df41043', 'OF3B', 12, 6, 6, 124, 1, 'published', '2021-12-19 00:14:08', '2022-05-20 03:48:45'),
(406, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '4f2e2175-5d91-4acb-9068-bb7a4065c3f7', 'CNEE', 0, 0, 0, NULL, 1, 'pending', '2021-12-19 00:14:09', '2021-12-19 00:14:09'),
(407, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'a04d7a70-7bcd-4640-b831-bd026beb6803', '6XHZ', 17, 17, 0, 118, 1, 'published', '2021-12-19 00:14:09', '2022-06-22 01:02:00'),
(408, 'Vũ Kim Anh', 'Vũ Kim Anh', '“ Mỗi người sinh ra đều có riêng một sứ mệnh “', 'avatars/avatar-1657447503622.png', 'covers/821d03a2-149b-4180-8534-9d117b4c2fda.jpeg', 'Hà Nội', '66739310-4abb-413c-a4df-7f8f8c06350d', 'OCIV', 48, 17, 31, 150, 8, 'published', '2021-12-19 00:14:10', '2022-09-06 02:51:39'),
(409, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'bf816e64-ef6b-4936-afd0-ad1fd4db1dee', 'RCBJ', 0, 0, 0, NULL, 1, 'pending', '2021-12-19 00:14:10', '2021-12-19 00:14:10'),
(410, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '51edc7b1-cadc-4cd8-9cc7-171de2d77c3e', '6QMA', 0, 0, 0, NULL, 1, 'pending', '2021-12-19 00:14:11', '2021-12-19 00:14:11'),
(411, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '91aeaafe-7992-423c-b25e-8e57d65285d4', 'NSMQ', 0, 0, 0, NULL, 1, 'pending', '2021-12-19 00:14:12', '2021-12-19 00:14:12'),
(412, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'eaccb8eb-089c-47e4-8067-06b093966655', 'EFRS', 0, 0, 0, NULL, 1, 'pending', '2021-12-19 00:14:12', '2021-12-19 00:14:12'),
(413, 'Phạm Thiên Tâm', 'Thiên Tâm Phạm', 'Boss : Kangnam Hair Korea\r\n☎️ Hotline: 0965038833', 'avatars/avatar-1640176477607.png', 'covers/78da4240-8e75-4b61-8830-f862d534956c.jpeg', '414 Tây Sơn - Đống Đa - Hanoi.', '0c62564d-4bec-4eee-8734-1280237defbe', '9VQM', 26, 10, 16, 42, 1, 'published', '2021-12-19 00:14:13', '2022-02-03 21:16:17'),
(414, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'fc16adea-450a-497b-92db-4add8f29b8f3', 'IJ0J', 0, 0, 0, NULL, 1, 'pending', '2021-12-19 00:14:13', '2021-12-19 00:14:13'),
(415, 'Đặng Hồng Sơn', 'Đặng Hồng Sơn', 'Buôn Bán, Kinh Doanh Hàng Nội Địa Nhật ☎️ 0977.977.251', 'avatars/avatar-1656937955571.png', 'covers/78985af6-a10f-43d6-9856-d93247b0d0e3.jpeg', 'Vũ Lạc, thành phố Thái Bình', '63ef73c0-560c-468c-acd0-49cd164481b9', 'OPCO', 33, 16, 17, 148, 1, 'published', '2021-12-19 00:14:14', '2022-07-19 21:15:58'),
(416, 'Nguyễn việt Anh', 'Mygovn', 'Tbg', 'avatars/avatar-1640169876911.png', 'covers/126eba04-ea3c-4db5-9172-7116ab55112f.jpeg', 'Hà Nội', '05e18c40-b8bc-4f87-9bad-6e3e46aaabee', 'JLOP', 19, 0, 19, 40, 9, 'published', '2021-12-19 00:14:14', '2022-04-29 02:50:37'),
(417, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'b370f58f-0dd5-441a-8507-adcabb287419', 'WOG8', 0, 0, 0, NULL, 1, 'pending', '2021-12-19 00:14:14', '2021-12-19 00:14:14'),
(418, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'f7271472-549e-481e-b8bd-1fa8f5c56819', 'JLGZ', 0, 0, 0, NULL, 1, 'pending', '2021-12-19 00:14:15', '2021-12-19 00:14:15'),
(419, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '2ea44333-e9a8-4f93-84e9-8d98d772b158', 'MPDE', 0, 0, 0, NULL, 1, 'pending', '2021-12-19 00:14:16', '2021-12-19 00:14:16'),
(420, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'febf5d30-d2b3-4536-abe9-b8e754dab861', '7BHF', 0, 0, 0, NULL, 1, 'pending', '2021-12-19 00:14:16', '2021-12-19 00:14:16'),
(421, 'Hà Tuyết Như', 'Hanhu', '🤭', 'avatars/avatar-1652079355624.png', 'covers/5a504eaa-9b8e-4e3a-84a3-d3fd91e528c9.jpeg', 'Nha Trang Khanh Hoa', '8872972a-40ff-4843-bd26-526e8db30798', 'E5CG', 6, 2, 4, 116, 2, 'published', '2021-12-19 00:14:17', '2022-06-11 09:40:36'),
(422, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '54d794b4-e653-4a4d-b13f-6ed972caafff', 'YXB9', 0, 0, 0, NULL, 1, 'pending', '2021-12-19 00:14:17', '2021-12-19 00:14:17'),
(423, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'c761d066-1d0c-4576-99f5-f3830cf902da', 'BM08', 0, 0, 0, NULL, 1, 'pending', '2021-12-19 00:14:18', '2021-12-19 00:14:18'),
(424, 'Vũ Thị Nhung', 'Bon', 'Tài khoản của bạn đã bị khóa!', 'avatars/avatar-1649822395302.png', 'logo-1/untitled-1.jpg', 'Hà Nội', '4930c14d-0bb0-4929-8afa-50f82b16f09d', 'R6E1', 72, 51, 21, 94, 2, 'pending', '2021-12-19 00:14:18', '2022-04-27 06:24:43'),
(425, 'Le Thi Linh', 'Linh Le Te', 'Cô chủ spa &salon tiktok ker', 'avatars/avatar-1649645036594.png', 'logo-1/untitled-1.jpg', '17 yên hạnh thị trấn nga sơn thanh hoá', '494afc32-c7ca-4af4-85a3-1487d65bde69', '6C9V', 30, 13, 17, 95, 1, 'published', '2021-12-19 00:14:19', '2022-09-11 07:22:06'),
(426, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'f857a9d8-cb61-4bad-85b6-6f00ea4bc0ee', 'B8IH', 0, 0, 0, NULL, 1, 'pending', '2021-12-19 00:14:19', '2021-12-19 00:14:19'),
(427, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'aea5f491-a389-4326-8654-2754bcc0e271', 'Y9KA', 0, 0, 0, NULL, 1, 'pending', '2021-12-19 00:14:20', '2021-12-19 00:14:20'),
(428, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'c842b008-6ec6-4181-b669-f7b70b85a5f2', 'FTLF', 0, 0, 0, NULL, 1, 'pending', '2021-12-19 00:14:21', '2021-12-19 00:14:21'),
(429, 'Đặng Thị Minh Tâm', 'Đặng Thị Minh Tâm', '😉😉', 'avatars/avatar-1641541177620.png', 'covers/e0391116-b65e-4a5f-9371-d16b4c6c0af5.jpeg', 'Vũ Trọng Phụng - Thanh Xuân Trung - Thanh Xuân - Hà Nội', '3e42cfaf-46a4-455c-ac55-2541a6fe6af1', 'ZGYX', 58, 24, 34, 60, 2, 'published', '2021-12-19 00:14:21', '2022-08-13 04:30:07'),
(430, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'f753d82c-253e-43e6-ac3f-eb93f420b7db', 'ELM0', 0, 0, 0, NULL, 1, 'pending', '2021-12-19 00:14:22', '2021-12-19 00:14:22'),
(431, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '825692b0-2a3b-4abd-b358-2e032f2a1ccd', 'NCXB', 0, 0, 0, NULL, 1, 'pending', '2021-12-19 00:14:23', '2021-12-19 00:14:23'),
(432, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '4431bf0a-f38b-4d93-990f-44e96536abee', 'HTDT', 0, 0, 0, NULL, 1, 'pending', '2021-12-19 00:14:23', '2021-12-19 00:14:23'),
(433, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'be3698d2-a00d-451c-92de-e475e45d10c8', 'QEPK', 0, 0, 0, NULL, 1, 'pending', '2021-12-19 00:14:24', '2021-12-19 00:14:24'),
(434, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '69337b38-c04d-4c2d-aa45-3c4d3eb6283d', 'OFID', 0, 0, 0, NULL, 1, 'pending', '2021-12-19 00:14:24', '2021-12-19 00:14:24'),
(435, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'e856a1cb-c7e5-4b29-96a9-202eb669841a', 'CPGO', 0, 0, 0, NULL, 1, 'pending', '2021-12-19 00:14:25', '2021-12-19 00:14:25'),
(436, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'b6af78d4-51c0-41a7-b975-77a53e004c8b', 'CWWB', 0, 0, 0, NULL, 1, 'pending', '2021-12-19 00:14:26', '2021-12-19 00:14:26'),
(437, 'Phan Thanh Trường', 'Thanh Trường', 'Độc thân', 'avatars/avatar-1655181430151.png', '33.jpg', 'Củ chi vietnam', '8ac97655-5163-4963-ad0b-ec8bf35f998b', 'AIGI', 32, 13, 19, 137, 1, 'published', '2021-12-19 00:14:26', '2022-07-21 05:21:54'),
(438, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '1f55c3bb-817c-444c-9fcb-b326704397ec', 'KNXT', 0, 0, 0, NULL, 1, 'pending', '2021-12-19 00:14:27', '2021-12-19 00:14:27'),
(439, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '242ef016-0caf-4320-bcb7-cadf4b0d20ad', 'YQDD', 0, 0, 0, NULL, 1, 'pending', '2021-12-19 00:14:27', '2021-12-19 00:14:27'),
(440, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '01323544-79e0-402b-ba95-43b36113220c', 'UFU4', 0, 0, 0, NULL, 1, 'pending', '2021-12-19 00:14:28', '2021-12-19 00:14:28'),
(441, 'Tùng Dương', 'T Dương', 'CAR PLUS LUXURY \r\nXE ĐƯA ĐÓN CÁC TỈNH, XE ĐÓN DÂU 24/7\r\nHà Nội - Hải Phòng\r\nZalo : 0969502999 - 0365345817', 'avatars/avatar-1654767027788.png', 'logo-1/untitled-1.jpg', 'Khach cần Book Xe đã có em Dương Đón 🥰🥰\r\n- Không Đi Dép Trái - Trời Mưa biết chạy vào nhà 😃', '4a2fee56-aeb4-44cc-8cbf-087697c18c5d', 'S5F2', 70, 26, 44, 85, 1, 'published', '2021-12-19 00:14:29', '2022-07-15 09:25:26'),
(442, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'db9cadba-2d72-4b66-9fb8-50bcd31b47f1', 'YMQD', 0, 0, 0, NULL, 1, 'pending', '2021-12-19 00:14:30', '2021-12-19 00:14:30'),
(443, 'Dung Kẹo', 'Dung Kẹo', 'Booking full map Hà Nội', 'avatars/avatar-1654442805958.png', 'covers/25afe0de-c8a5-43b8-b8bf-c68cb2508216.jpeg', 'Sniff 46 Mã Mây - Hoàn Kiếm - Hà Nội', '6d547f4c-053d-4e37-8182-e4e8b61c8e19', 'OB5F', 21, 10, 11, 133, 1, 'published', '2021-12-19 00:14:31', '2022-06-26 11:16:15'),
(444, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '2a84b35a-65d9-43c3-8a6a-4538134c7ee9', 'DMCS', 0, 0, 0, NULL, 1, 'pending', '2021-12-19 00:14:32', '2021-12-19 00:14:32'),
(445, 'Bùi Hải Dương', '3na.bui', 'Hiii', 'avatars/avatar-1653056379917.png', 'covers/efe887b0-4720-47da-a1b1-32bfbf9edca2.jpeg', 'Đường 10, khu phố 3, Linh Xuân, Thủ Đức', '8db29cfb-50da-4fcc-9e51-39a36301cddd', 'QOLB', 117, 47, 70, 125, 9, 'published', '2021-12-19 00:14:32', '2022-08-07 20:35:02'),
(446, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '5ae70d3d-25d2-488d-adb5-61fc5a835362', 'QGNZ', 0, 0, 0, NULL, 1, 'pending', '2021-12-19 00:14:33', '2021-12-19 00:14:33'),
(447, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'c1528da9-e285-43e2-926b-e7dac1dbd16d', 'PNHG', 0, 0, 0, NULL, 1, 'pending', '2021-12-19 00:14:33', '2021-12-19 00:14:33'),
(448, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '8d59da7f-e7f0-4038-94f5-f60f9e8debdd', '6Q8V', 30, 30, 0, 101, 1, 'published', '2021-12-19 00:14:34', '2022-09-10 07:55:42'),
(449, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'f4eeec5b-9d3c-4472-b02e-f0f9d9a9326a', 'D33O', 0, 0, 0, NULL, 1, 'pending', '2021-12-19 00:14:34', '2021-12-19 00:14:34'),
(450, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '9e15f604-d953-46ef-b734-f6cec65def13', 'YNSW', 0, 0, 0, NULL, 1, 'pending', '2021-12-19 00:14:35', '2021-12-19 00:14:35'),
(451, 'Nguyễn Quang', 'Toản', 'Founder Coinres', 'avatars/avatar-1640333597547.png', 'covers/51d66b0a-c4fd-4bad-b650-97dd08b5dca0.jpeg', 'Thanh Xuân - Hà Nội', '3cdcf185-9a8c-4033-88b6-22194aa1793f', 'RM7F', 25, 2, 23, 43, 9, 'published', '2021-12-19 00:14:35', '2022-08-09 07:49:58'),
(452, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'bc29b5b7-196b-4d5d-ac18-445ec53cfe57', 'UDKP', 0, 0, 0, NULL, 1, 'pending', '2021-12-19 00:14:36', '2021-12-19 00:14:36'),
(453, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '3a525ed4-36a0-4800-93af-6b458f1decbf', 'CCYR', 0, 0, 0, NULL, 1, 'pending', '2021-12-19 00:14:37', '2021-12-19 00:14:37'),
(454, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '0c48fa3a-db3c-4514-9432-da54313c7462', 'UYO7', 0, 0, 0, NULL, 1, 'pending', '2021-12-19 00:14:37', '2021-12-19 00:14:37'),
(455, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '0e650e67-2966-4d1c-9a80-c01d6e7ffb51', 'A1LB', 0, 0, 0, NULL, 1, 'pending', '2021-12-19 00:14:37', '2021-12-19 00:14:37'),
(456, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '07958654-b146-4a9e-94ac-a9e9202bfa12', 'GJFC', 0, 0, 0, NULL, 1, 'pending', '2021-12-19 00:14:38', '2021-12-19 00:14:38'),
(457, 'Khánh Nguyễn', 'khanhuet', 'Don\'t Care', 'avatars/avatar-1653452278050.png', 'covers/ab3783b4-c774-45f7-803a-ecd132ce2eb7.jpeg', '0x18B952659Edf001bD70DeEA5A57164bd4ee588aA', '7e12e70b-22b3-4cf5-a2e4-d5625c1f8e1c', 'AY8C', 8, 3, 5, 128, 1, 'published', '2021-12-19 00:14:39', '2022-06-21 09:08:35'),
(458, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'fa263069-1164-4709-9cc8-9cb2c82a48cc', 'BULD', 0, 0, 0, NULL, 1, 'pending', '2021-12-19 00:14:39', '2021-12-19 00:14:39'),
(459, 'Vi Trung Kiên', 'Trung kiên', 'Never Giver Up ❤️', 'avatars/avatar-1651237930245.png', 'logo-1/untitled-1.jpg', 'Bắc Giang', '9de45a2d-8406-45c2-b9de-5e0d8396821f', 'GV74', 29, 9, 20, 104, 1, 'published', '2021-12-19 00:14:40', '2022-07-21 21:53:27'),
(460, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'b0925d34-ed9d-43e2-a251-cbedea65c25b', 'HGJ6', 0, 0, 0, NULL, 1, 'pending', '2021-12-19 00:14:40', '2021-12-19 00:14:40'),
(461, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '89b6a4c7-1bee-419e-ade7-971e4546a180', 'UMCL', 7, 7, 0, 134, 1, 'published', '2021-12-19 00:14:41', '2022-06-12 06:55:46'),
(462, 'Mít Nie', 'mitemisme', '🏳️‍🌈', 'avatars/avatar-1655818648248.png', 'covers/2e93579a-90c0-440b-9927-e795b9edc61a.jpeg', 'Praha, Czech', 'a8b67df4-b135-4621-ba8b-1dacdaad4e45', 'YGYL', 86, 33, 53, 140, 2, 'published', '2021-12-19 00:14:41', '2022-08-07 12:37:26'),
(463, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'dd110044-f04f-482b-9428-2b8656575f3b', 'UMNO', 0, 0, 0, NULL, 1, 'pending', '2021-12-19 00:14:42', '2021-12-19 00:14:42'),
(464, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '4cedba72-0269-4518-8e0d-c87d0b3d5adf', 'VZHS', 0, 0, 0, NULL, 1, 'pending', '2021-12-19 00:14:42', '2021-12-19 00:14:42'),
(465, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '63139aa6-28b5-4b8b-80c2-4219a03ad5cf', 'VI0P', 0, 0, 0, NULL, 1, 'pending', '2021-12-29 03:06:31', '2021-12-29 03:06:31'),
(466, 'Hà Kiều Linh', 'Hà Kiều Linh', 'Vài từ ngữ ngắn không miêu tả được hết một con người\r\nMuốn biết điều gì hãy tự tìm hiểu', 'avatars/avatar-1657441989598.png', 'covers/dc71d7a7-2416-46da-b21c-6acdd098b776.png', 'Vô gia cư', '8d38ffb4-797e-48d1-9a34-c7e32477f93f', 'VFGJ', 32, 10, 22, 146, 1, 'published', '2021-12-29 03:06:32', '2022-09-09 19:20:47'),
(467, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '6d250e9b-3376-4a23-b5cf-a06599ec7ba4', 'KZPB', 0, 0, 0, NULL, 1, 'pending', '2021-12-29 03:06:32', '2021-12-29 03:06:32'),
(468, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '1fa71b21-12d1-4983-a417-ff2db3aa65ef', '3BIM', 0, 0, 0, NULL, 1, 'pending', '2021-12-29 03:06:33', '2021-12-29 03:06:33'),
(469, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '276bd3f9-508a-4142-bc76-7031b2290e96', 'FMOW', 0, 0, 0, NULL, 1, 'pending', '2021-12-29 03:06:33', '2021-12-29 03:06:33'),
(470, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '55048aa3-ad41-43ea-af02-3649865f8a49', 'ATNF', 0, 0, 0, NULL, 1, 'pending', '2021-12-29 03:06:34', '2021-12-29 03:06:34'),
(471, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '9cfe7ae6-3ccb-46c9-b15d-194da33f1de7', 'IP5S', 0, 0, 0, NULL, 1, 'pending', '2021-12-29 03:06:34', '2021-12-29 03:06:34'),
(472, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '38232e6c-8986-4920-a94f-5d4fd14942aa', '1CGL', 0, 0, 0, NULL, 1, 'pending', '2021-12-29 03:06:35', '2021-12-29 03:06:35'),
(473, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '1d01191b-5456-4f29-8c9f-f744b41fbe59', 'QSS4', 0, 0, 0, NULL, 1, 'pending', '2021-12-29 03:06:36', '2021-12-29 03:06:36'),
(474, 'Hoàng Linh Chi', 'Linh Chi', 'Chưa có người yêu', 'avatars/avatar-1651765757627.png', 'covers/59085482-65fc-4cf9-bc99-572d76e69f51.jpeg', 'Tầng 2 \r\n46 Mã Mây', '14b68bf0-bdab-46d0-97aa-53c14a4815ea', 'WMZ7', 86, 31, 55, 110, 1, 'published', '2021-12-29 03:06:36', '2022-09-10 04:26:57'),
(475, 'Nhật Lệ', 'Hiệp Gà', 'Kit Kat hay Kiss em😉💋', 'avatars/avatar-1652639215280.png', 'covers/b45acabe-bbbb-45a3-a3c8-6898cd04559a.jpeg', 'Ở đâu còn lâu mới nói😌', 'f8887ece-384b-48ac-85f9-543c7e545e44', 'ENLQ', 318, 123, 196, 45, 9, 'published', '2021-12-29 03:06:37', '2022-07-21 09:55:01'),
(476, 'Lê Đăng Trung', 'Ledangtrung', 'ChungAuto.vn', 'avatars/avatar-1645173591296.png', 'covers/2a43f850-eee8-4c2c-aa64-fe188ac5cf78.jpeg', '10/87 Thiên Hiền - Mỹ Đình', 'fe6fa95a-2f6e-49c7-82f9-a350ca2851ca', 'IVO8', 292, 109, 183, 76, 9, 'published', '2021-12-29 03:06:37', '2022-09-03 02:59:05'),
(477, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '290e66a0-9adb-49ee-afc9-4d13b7744a96', 'NJ6Q', 0, 0, 0, NULL, 1, 'pending', '2021-12-29 03:06:38', '2021-12-29 03:06:38'),
(478, 'Trần Quang Lộc', 'Lộc.Đubai', 'Hi', 'avatars/avatar-1659544016304.png', 'covers/inbound3157567574642199454.jpg', '365 Quán – Five Star (Bò Sốt Phô Mai) : 17, Quốc lộ 14, thị trấn Chơn Thành, huyện Chơn Thành, Bình Phước (Đối diên: 24/24)', '7d07cde7-5e06-4793-8ec3-1f18d800ae78', 'QSUW', 47, 35, 12, 156, 8, 'published', '2021-12-29 03:06:38', '2022-09-10 19:38:54'),
(479, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '221bbfc4-6102-424a-926b-42e96cdf5b57', 'QLRM', 0, 0, 0, NULL, 1, 'pending', '2021-12-29 03:06:39', '2021-12-29 03:06:39'),
(480, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '52e0c33b-956b-490d-a950-96aa48af7fa2', 'ZQO0', 0, 0, 0, NULL, 1, 'pending', '2021-12-29 03:06:39', '2021-12-29 03:06:39');
INSERT INTO `accounts` (`id`, `fullname`, `username`, `description`, `avatar`, `cover`, `address`, `uuid`, `code`, `view`, `tap`, `click`, `member_id`, `theme_id`, `status`, `created_at`, `updated_at`) VALUES
(481, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '837017c6-3320-4e90-91f3-7af45ff9df8c', 'CE7U', 0, 0, 0, NULL, 1, 'pending', '2021-12-29 03:06:40', '2021-12-29 03:06:40'),
(482, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'b44275ba-c2ca-4e1f-a095-9b985918db97', 'C5PL', 0, 0, 0, NULL, 1, 'pending', '2021-12-29 03:06:40', '2021-12-29 03:06:40'),
(483, 'Đinh công tùng', 'Đinh Công Tùng', 'Mua bán siêu xe\r\nÔ tô SonTung:0922665588-0975699057', 'avatars/avatar-1642653831224.png', 'covers/29d16de7-d791-4a3c-9ce5-e8e1281b1f35.jpeg', 'Số2 tôn thất thuyết', 'ac70e710-477b-421d-99cc-665adda12390', '9LBN', 57, 23, 34, 70, 1, 'published', '2021-12-29 03:06:41', '2022-06-22 08:53:14'),
(484, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'a72de6e5-136c-4715-8a75-1f8ccce5c7ea', 'OGYC', 0, 0, 0, NULL, 1, 'pending', '2021-12-29 03:06:41', '2021-12-29 03:06:41'),
(485, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '56184456-a305-4354-ac03-463cf58c679d', 'BHQF', 0, 0, 0, NULL, 1, 'pending', '2021-12-29 03:06:42', '2021-12-29 03:06:42'),
(486, 'Thu Trang', 'Thu Trang', 'Thu Trang\r\nTrường phòng kinh doanh  - Sơn Tùng Auto\r\nHotline: 0915603333 - 0912201666', 'avatars/avatar-1642580581243.png', 'covers/846d998f-8178-4a08-8588-31b9b6363717.jpeg', 'Số 2 Tôn Thất Thuyết, phường Mỹ Đình 2, quận Nam Từ Liêm, Hà Nội', 'c5e4bee5-073f-4926-bccc-aac46a0c346b', 'FFMT', 26, 12, 14, 61, 9, 'published', '2021-12-29 03:06:42', '2022-07-21 09:55:14'),
(487, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '8fb4ad24-ba95-4e80-bfa7-a2a8d4e523cc', 'JRQ9', 0, 0, 0, NULL, 1, 'pending', '2021-12-29 03:06:43', '2021-12-29 03:06:43'),
(488, 'Lưu Nga', 'Lưu Nga', 'ATTA - Sự Bình An Đến Từ Trong Tâm', 'avatars/avatar-1642599519053.png', 'covers/ca28347e-5d7f-4a37-a5d4-e4b8e4ff5b1a.jpeg', 'Số 08 - N01A Khu Biệt Thự Sài Đồng - Long Biên - Hà Nội', 'b80835c5-7108-4ab4-aa43-85f469779e3c', 'QZ9L', 6, 2, 4, 68, 1, 'published', '2021-12-29 03:06:43', '2022-03-13 05:56:23'),
(489, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '14bcab32-3fab-4810-a5f5-fa7917ddc963', 'HWEY', 0, 0, 0, NULL, 1, 'pending', '2021-12-29 03:06:44', '2021-12-29 03:06:44'),
(490, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'e9c1bb66-760f-4daa-ba0e-4beca538af10', '91TE', 0, 0, 0, NULL, 1, 'pending', '2021-12-29 03:06:44', '2021-12-29 03:06:44'),
(491, 'Văn Bướng', 'Văn Bướng', 'Liên hệ công việc 0849862789', 'avatars/avatar-1651835922558.png', 'covers/df6f7c10-2e70-42f1-8376-608498b1c871.jpeg', 'Phượng Sơn Lục Ngạn Bắc Giang', '9dc30cbe-1712-4934-9c27-efc0b1f66519', 'EJHL', 71, 28, 43, 113, 1, 'published', '2021-12-29 03:06:45', '2022-07-08 02:33:13'),
(492, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '4d1030e9-498b-48ce-a652-3b8c21b1a736', 'HSQL', 0, 0, 0, NULL, 1, 'pending', '2021-12-29 03:06:46', '2021-12-29 03:06:46'),
(493, 'Hoàng Ánh Dương', 'Tên Của Bạn 1', 'Kit Kat Hay Kiss Em 😉❤️', 'avatars/avatar-1651343299439.png', 'logo-1/untitled-1.jpg', 'Hà Nội', 'af04de01-3ed3-4105-9236-9377020c262b', 'NTHK', 29, 14, 15, 106, 9, 'published', '2021-12-29 03:06:46', '2022-05-05 20:50:06'),
(494, 'Vũ Lê Hùng', 'Vũ Lê Hùng', 'Leader Sales Consultant', 'avatars/avatar-1641197780018.png', 'covers/851034f3-5454-4b3d-ae63-4aed230101ae.jpeg', 'H3T Auto - 3 Nguyễn Văn Linh. Long Biên. Hà Nội', 'dfa4363f-1241-4b7a-bc76-154c7b73f614', 'KPO8', 83, 31, 52, 50, 9, 'published', '2021-12-29 03:06:47', '2022-09-09 16:12:15'),
(495, 'Lương Đức Thành', 'Đức thành', 'Happy boy', 'avatars/avatar-1656424994199.png', 'covers/8307ea42-bc6b-41c4-8391-e09911f4f902.jpeg', '77 xuân la tây hồ', '7d2f370a-de9b-46f7-aafa-ef36aeb0ad57', 'XOWT', 48, 21, 27, 144, 1, 'published', '2021-12-29 03:06:47', '2022-09-03 20:53:04'),
(496, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '48aa92b6-9412-4196-837e-4b0ba032012d', 'RTJ9', 0, 0, 0, NULL, 1, 'pending', '2021-12-29 03:06:48', '2021-12-29 03:06:48'),
(497, 'Nguyễn Quang Trọng', 'Quang Trọng', '0985908888', 'avatars/default-avatar.png', 'bia-phong-bi-to.jpg', 'Số 2 Tôn Thất Thuyết, Mỹ Đình 2, Nam Từ Liêm, Hà Nội', 'c25a00cf-e931-4a41-81b6-643f13d0518e', 'AIDX', 19, 8, 11, 63, 1, 'published', '2021-12-29 03:06:48', '2022-05-03 23:18:58'),
(498, 'Bùi Mạnh Hiếu', 'Hiếu H3T Auto', 'CEO H3T Auto', 'avatars/avatar-1641266520690.png', 'covers/a0fd712b-286c-4ce3-bf4c-b2544504d0a0.jpeg', '3-5 Nguyễn Văn Linh - Long Biên - Hà Nội', 'dedd84b9-c296-4982-93c9-dafc88161312', 'NGQP', 44, 18, 26, 53, 9, 'published', '2021-12-29 03:06:49', '2022-09-04 19:28:20'),
(499, 'Vũ Trà My', 'HoangHiep05', 'Không Đi Dép Trái - Trời Mưa Biết Chạy Vào Nhà💜', 'avatars/avatar-1647680583611.png', 'covers/3c29c1e9-c57d-4006-b834-bedba7a87ed1.jpeg', 'Đống Đa-Hà Nội', 'cee169c3-8b8c-4898-9f16-9c11040a58ff', 'BDTY', 64, 27, 37, 81, 1, 'published', '2021-12-29 03:06:49', '2022-03-22 08:57:59'),
(500, 'Vũ Phương Thanh', 'San MMO', 'Ceo & Founder PhuongThanhmedia.com', 'avatars/avatar-1647602018964.png', 'logo-1/untitled-1.jpg', '136 Hồ Tùng Mậu, Phú Diễn, Bắc Từ Liêm, Hà Nội', 'd80f5a74-5d9e-4c31-bd11-283e631e0a17', 'VIVU', 38, 14, 24, 82, 1, 'published', '2021-12-29 03:06:50', '2022-07-08 06:47:09'),
(501, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'ad0e8e60-070c-4b02-93cc-098200a81558', 'QMWG', 0, 0, 0, 71, 1, 'published', '2021-12-29 03:06:50', '2022-01-19 23:49:01'),
(502, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '52eb5c70-392c-40ff-9263-ce5a0b5ab688', 'RCMA', 0, 0, 0, NULL, 1, 'pending', '2021-12-29 03:06:51', '2021-12-29 03:06:51'),
(503, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '3e069f17-d9ab-48bf-bc8a-1087c04aaf8b', '0SKU', 0, 0, 0, NULL, 1, 'pending', '2021-12-29 03:06:51', '2021-12-29 03:06:51'),
(504, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '7344ddc8-fe28-4cf4-905b-82b45dedc220', 'PG0O', 0, 0, 0, NULL, 1, 'pending', '2021-12-29 03:06:52', '2021-12-29 03:06:52'),
(505, 'Hằng Thu', 'Hằng Thu', 'Booking bar Sniff _ alo setup bàn đẹp 0393401864🔥🔥🔥🔥🔥🔥', 'avatars/avatar-1651925557911.png', 'covers/30c3dec2-b89e-415a-a7b6-86d16efca83a.jpeg', '46 mã mây tầng 2', '9df348be-f216-40d5-9043-917394052005', 'TAPT', 77, 28, 49, 115, 2, 'published', '2021-12-29 03:06:52', '2022-09-06 22:26:50'),
(506, 'Nguyễn Công Thắng', 'Nguyễn Công Thắng', 'Nguyễn Thắng H3T Đỉnh Cao Xe Lướt', 'avatars/avatar-1641266879031.png', 'covers/b830dbcb-e1ae-44fb-bae6-bfae31652676.jpeg', 'Số 3-5 Nguyễn Văn Linh Long Biên HÀ Nội', 'e213b6dd-24a8-40fa-8e91-8498763f298b', 'M1IA', 51, 20, 31, 56, 9, 'published', '2021-12-29 03:06:53', '2022-07-18 05:07:08'),
(507, 'Nguyễn Quang Trung', 'Trung H3T', 'CTHĐQT H3T AUTO VIỆT NAM', 'avatars/avatar-1641268562886.png', 'covers/64b832a1-4a1a-4942-9b50-4da924cc5d29.jpeg', 'H3T Auto Số 3-5 Nguyễn Văn Linh, Long Biên, Hà Nội', 'fac8917f-be52-4bca-b61d-4321dba238a1', 'U8KW', 30, 11, 19, 54, 9, 'published', '2021-12-29 03:06:53', '2022-03-10 22:24:42'),
(508, 'Phương Anh', 'Phanh Phanh', 'Chưa ai iuuu 🤪🤪🤪', 'avatars/avatar-1651765922086.png', 'covers/b992bb99-a699-4317-ba9e-2ddb7d75f89b.jpeg', 'Tầng 2, 46 Mã Mây', '10fd0f0d-0f3f-4a82-b441-d8ffc329f1e5', 'DRD9', 23, 10, 13, 109, 1, 'published', '2021-12-29 03:06:54', '2022-06-12 12:37:56'),
(509, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '17b7612c-b8e7-4818-a3c2-c445ec3fee6a', 'OAWA', 0, 0, 0, NULL, 1, 'pending', '2021-12-29 03:06:54', '2021-12-29 03:06:54'),
(510, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'd43171e0-9176-4c6e-9022-6b559f8d9a23', 'XWTJ', 17, 17, 0, 161, 1, 'published', '2021-12-29 03:06:55', '2022-09-10 00:28:19'),
(511, 'Nguyễn Quang Huy', 'Nguyễn Quang Huy', 'Huy H3T', 'avatars/avatar-1641266540303.png', 'covers/e4025583-da03-427e-9bbd-6a8970cdafb0.jpeg', 'Số 5 Nguyễn Văn Linh, Long Biên, Hà Nội', 'e444c55c-e01d-4965-bf8f-79a287de504a', 'GQIQ', 4, 2, 2, 55, 9, 'published', '2021-12-29 03:06:55', '2022-01-04 06:57:22'),
(512, 'Nguyễn Đức Hoàng', 'Nguyễn Đức Hoàng', 'H3T Auto - Đỉnh Cao Xe Lướt\r\n0707.15.6666 - 0707.25.66666', 'avatars/avatar-1641198256155.png', 'covers/1a39eabf-6a49-412c-9612-773740324ce6.jpeg', 'Số 3-5 Nguyễn Văn Linh- Long Biên- Hà Nội', 'e9f22a37-705a-4bac-a1f4-e51c315f3664', 'XC4L', 18, 8, 10, 51, 9, 'published', '2021-12-29 03:06:56', '2022-05-12 04:39:31'),
(513, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '20d9c052-feb7-49ad-86e9-538343dc88c5', 'ONZS', 0, 0, 0, NULL, 1, 'pending', '2021-12-29 03:06:57', '2021-12-29 03:06:57'),
(514, 'Hán Duy Mỹ', 'Vua Bảo Hiểm', 'Chào mừng bạn đến với thương hiệu \"VUA BẢO HIỂM\"... Là đơn vị hàng đầu trong việc cung ứng các sản phẩm Bảo Hiểm về CON NGƯỜI, Bảo Hiểm XE CƠ GIỚI, Bảo Hiểm HÀNG HÓA, Bảo Hiểm TÀI SẢN thịnh hành và uy tín tại thị trường Việt Nam.', 'avatars/avatar-1647834930784.png', 'logo-1/untitled-1.jpg', 'BT1I - 21 Làng Việt Kiều Châu Âu, Khu Đô Thị Mới Mỗ Lao, Phường Mộ Lao, Quận Hà Đông, Thành Phố Hà Nội', 'e657854c-822f-4b29-91d7-7f6572f60e57', 'JKYV', 5, 2, 3, 83, 1, 'published', '2021-12-29 03:06:57', '2022-04-05 05:24:16'),
(515, 'Nguyễn Đức Duy', 'Nguyễn Duy', 'Duy Sơn Tùng Auto chuyên xe sang nhập khẩu\r\n0849092222', 'avatars/avatar-1642587460196.png', 'covers/9303e5f3-87ae-46d0-b96c-51e160854387.jpeg', 'Số 2 Tôn Thất Thuyết', 'ae5638d8-3aa3-400e-91d8-2807b66cc4b7', 'WOW3', 16, 7, 9, 67, 8, 'published', '2021-12-29 03:06:58', '2022-07-21 09:53:45'),
(516, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '99e8bcad-86ab-47c9-9d3c-7aaf63fae1a5', 'YQ2H', 0, 0, 0, NULL, 1, 'pending', '2021-12-29 03:06:58', '2021-12-29 03:06:58'),
(517, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '0ef249ba-f9c8-47e6-94c8-50ce7bfe2544', 'P9TO', 0, 0, 0, 126, 1, 'published', '2021-12-29 03:06:59', '2022-05-22 21:20:37'),
(518, 'Thảo Mộc', 'Thảo Mộc', 'Seller', 'avatars/avatar-1641264843614.png', 'covers/d8c956de-344a-4168-9c4c-173f623cba16.jpeg', 'Số 3-5 Nguyễn Văn Linh, Long Biên, HN', 'e172ed2b-7b9a-4bbe-9399-3509c131744b', 'VQKC', 26, 11, 15, 52, 1, 'published', '2021-12-29 03:06:59', '2022-03-26 02:34:46'),
(519, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '6e5f9f23-81f6-47bb-a874-8457cd7c4d58', 'FSGS', 0, 0, 0, NULL, 1, 'pending', '2021-12-29 03:07:00', '2021-12-29 03:07:00'),
(520, 'Trịnh Tuấn Anh', 'Trịnh Tuấn Anh', 'Chuyên Nội Thất Ô tô Đồ Chơi Ô Tô\r\nSim Số Đẹp', 'avatars/avatar-1645177301758.png', 'covers/53448150-a84c-46b1-b72c-d6eb7bcf1ffa.jpeg', '87 Thiên Hiền Mỹ Đình', 'f787515d-66f1-4e5a-9b44-cba2f2b48a2a', 'FJPX', 118, 42, 76, 75, 9, 'published', '2021-12-29 03:07:00', '2022-08-26 01:47:24'),
(521, 'Phạm Quỳnh Anh', 'Quỳnh Phạm', 'm52', 'avatars/avatar-1659247078435.png', '33.jpg', 'ở trái tym bạn', '4c30f654-fe97-412b-9cd7-0fc0966bd0ea', 'JLB2', 5, 2, 3, 155, 1, 'published', '2021-12-29 03:07:01', '2022-08-02 21:15:42'),
(522, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '334d2c86-0a73-44a2-be8d-219063d71a66', 'KOMJ', 0, 0, 0, NULL, 1, 'pending', '2021-12-29 03:07:01', '2021-12-29 03:07:01'),
(523, 'Tống Đức Độ', 'Tống Đức Độ', 'Trưởng Phòng Kinh Doanh Sơn Tùng Auto', 'avatars/avatar-1642580293586.png', 'covers/ed3b7073-0c1c-4897-8ef0-317f9d53834c.jpeg', 'Số 2 - Tôn Thất Thuyết - P.Mỹ Đình 2 - Q.Nam Từ Liêm - Hà Nội', 'c63f499f-3599-422f-9e86-cc086f3b52e4', 'OCYK', 41, 14, 27, 62, 1, 'published', '2021-12-29 03:07:02', '2022-08-01 19:22:40'),
(524, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '4c1db27b-ce1c-4414-a960-401ad4e01853', 'JBTP', 0, 0, 0, NULL, 1, 'pending', '2021-12-29 03:07:02', '2021-12-29 03:07:02'),
(525, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '66b5437e-a616-41a9-97f0-4449420d2225', 'SZF5', 0, 0, 0, NULL, 1, 'pending', '2021-12-29 03:07:03', '2021-12-29 03:07:03'),
(526, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '7d9d08d2-ce46-40e2-898f-bbae3737173f', 'JOLI', 0, 0, 0, NULL, 1, 'pending', '2021-12-29 03:07:03', '2021-12-29 03:07:03'),
(527, 'Bùi Đức Thiện', 'ducthien.h3t', 'H3T Auto là đơn vị uy tín hàng đầu về kinh doanh xe Đức đã qua sử dụng. Chúng tôi chuyên mua và bán những mẫu xe mới nhất của Mercedes-Benz, BMW, Audi và Porsche.', 'avatars/avatar-1641266791681.png', 'covers/08ba0843-6bb0-42c5-94a9-7d5712d0d9d2.jpeg', 'Số 3-5 Nguyễn Văn Linh, Gia Thuỵ, Long Biên, Hà Nội.', 'fc45ac5d-b9ee-4d57-9e73-1c1c4a283f36', 'RPNE', 62, 20, 42, 57, 9, 'published', '2021-12-29 03:07:04', '2022-08-10 08:50:08'),
(528, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '28697a54-b01f-423e-adc6-592ffc6ce16c', 'V21J', 0, 0, 0, NULL, 1, 'pending', '2021-12-29 03:07:05', '2021-12-29 03:07:05'),
(529, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '6445e8e6-746a-4e70-a008-ad0d4d026cf7', 'CUEB', 0, 0, 0, NULL, 1, 'pending', '2021-12-29 03:07:05', '2021-12-29 03:07:05'),
(530, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '55f03ada-9848-4a50-95ff-1711205b7acf', 'EL3X', 0, 0, 0, NULL, 1, 'pending', '2021-12-29 03:07:06', '2021-12-29 03:07:06'),
(531, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'c1ded2f1-ab82-4118-8229-45c4808d557c', 'B6BJ', 26, 26, 0, 65, 1, 'published', '2021-12-29 03:07:06', '2022-05-02 07:56:30'),
(532, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'a69db58e-a791-4f7e-a74b-134c52e27107', 'VVVQ', 0, 0, 0, NULL, 1, 'pending', '2021-12-29 03:07:06', '2021-12-29 03:07:06'),
(533, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'a7b37531-d9a7-43f8-a302-6fad21e27321', 'SMGD', 0, 0, 0, NULL, 1, 'pending', '2021-12-29 03:07:07', '2021-12-29 03:07:07'),
(534, 'Nguyễn Đức An', 'Annguyen', 'Chuyên viên tư vấn bán hàng', 'avatars/default-avatar.png', 'bia-phong-bi-to.jpg', '87- thiên hiền - Mỹ đình- Hà Nội', 'fd2f8f60-f9f7-4e0c-8fe6-509233aa2e29', 'NX7B', 56, 24, 33, 77, 1, 'published', '2021-12-29 03:07:07', '2022-09-01 05:50:19'),
(535, 'Phùng Hữu Đức', 'Phùng Hữu Đức', '…', 'avatars/avatar-1642583355559.png', 'covers/648dd9fe-2aa0-4d9e-8c96-e28e645e70f1.jpeg', '16 Lê Đức Thọ - Mỹ Đình 2 - Nam Từ Liêm - Hà Nội', 'aac089be-725b-411a-9a60-eeac3d6a473c', 'OZAF', 66, 27, 39, 66, 9, 'published', '2021-12-29 03:07:08', '2022-05-20 01:30:12'),
(536, 'Minh Huệ', 'Acc Chính', 'Yêu em hay để em yêu 😉❤️', 'avatars/avatar-1660489006007.png', 'covers/fad98f78-77df-4c77-b593-82a0ab9130ac.jpeg', 'Đống Đa - Hà Nội', 'c0db9ddc-4398-4a9d-98df-1a2609ccb461', 'A0H7', 877, 278, 599, 72, 9, 'published', '2021-12-29 03:07:09', '2022-09-09 11:27:21'),
(537, 'Trương Phi Hùng', 'Trương Phi Hùng', 'Độc thân dui tinh🤔🤔🤔', 'avatars/avatar-1651723138350.png', '33.jpg', 'Dak lak viet nam', 'c05ff8fe-bf70-4c3b-9144-cc34a0606b84', 'ZKOC', 20, 17, 3, 108, 1, 'published', '2021-12-29 03:07:09', '2022-05-10 04:17:07'),
(538, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '00016d21-e7e0-46cf-8b8e-078a2abaefa6', 'IFU6', 0, 0, 0, NULL, 1, 'pending', '2021-12-29 03:07:10', '2021-12-29 03:07:10'),
(539, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '84f074e3-8279-4dd4-836c-2b5fa1464a0b', 'LY6Q', 0, 0, 0, NULL, 1, 'pending', '2021-12-29 03:07:10', '2021-12-29 03:07:10'),
(540, 'Vũ Trí Sơn', 'Trí Sơn', 'Sơn Tùng AuTo', 'avatars/avatar-1642580590339.png', 'covers/01b106d3-bc4c-4a75-a265-367056cf12ea.jpeg', 'Số 2 Tôn Thất Thuyết, Hà Nội', 'c32c3404-5825-4786-9d47-c41dac97586e', 'HVJG', 42, 16, 26, 64, 9, 'published', '2021-12-29 03:07:11', '2022-03-13 05:56:20'),
(541, 'Nguyễn Hữu Phú', 'Nguyễn Hữu Phú', 'Sales Manager H3T Auto', 'avatars/avatar-1641207863275.png', 'covers/a00cd6de-7d3e-467c-a65c-1567f8cfc46f.jpeg', 'Số 3-5 Nguyễn Văn Linh, Long Biên, Hà Nội', 'e4a78bb1-ee64-438f-a873-717b503569ed', 'VUQJ', 66, 22, 44, 47, 9, 'published', '2021-12-29 03:07:11', '2022-01-30 23:30:51'),
(542, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '72ef706f-7c35-4c0e-a59d-52c691fc1cc8', 'FXMF', 0, 0, 0, NULL, 1, 'pending', '2021-12-29 03:07:12', '2021-12-29 03:07:12'),
(543, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '05059a30-8941-492d-9e05-56a5e2865c92', 'SVVX', 0, 0, 0, NULL, 1, 'pending', '2021-12-29 03:07:12', '2021-12-29 03:07:12'),
(544, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '0550ae3b-972f-4e1c-8d0a-2b85610b4ab5', 'POHZ', 0, 0, 0, NULL, 1, 'pending', '2021-12-29 03:07:13', '2021-12-29 03:07:13'),
(545, 'Dương Mạnh Hùng', 'Shin dep trai', 'Qua Hybra', 'avatars/avatar-1656965039622.png', 'covers/31cdf3f1-ce09-4f20-8b2f-42708d6af06c.jpeg', '32 Mã Mây Chơi Nghe Chưa', '5aa09f19-03dd-43d4-a32d-071647fcc5e8', 'AZUP', 117, 52, 65, 141, 9, 'published', '2021-12-29 03:07:13', '2022-09-08 15:18:45'),
(546, 'Sầm Huệ Minh', 'Huệ Minh Sontung Auto', 'Chủ tịch HĐQT', 'avatars/default-avatar.png', 'bia-phong-bi-to.jpg', 'Số 2, Tôn Thất Thuyết, Mỹ Đình 2, Nam Từ Liêm, Hà Nội', 'd9382334-6ed8-4efd-ac8f-9af162e55ee3', '20ZZ', 33, 12, 21, 69, 1, 'published', '2021-12-29 03:07:14', '2022-05-03 23:18:58'),
(547, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'f11cab21-cb5f-44c3-9e4c-f7bc712963b6', 'WRJ2', 0, 0, 0, NULL, 1, 'pending', '2021-12-29 03:07:15', '2021-12-29 03:07:15'),
(548, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '0192a2de-bc02-4b5d-9756-e0a3ae257cc3', 'TGBN', 0, 0, 0, NULL, 1, 'pending', '2021-12-29 03:07:15', '2021-12-29 03:07:15'),
(549, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'e37980fc-4b34-438a-8428-3ba4446e567e', 'RZ4R', 0, 0, 0, NULL, 1, 'pending', '2021-12-29 03:07:16', '2021-12-29 03:07:16'),
(550, 'Tùng Phạm', 'Tùng Phạm', 'KOL', 'avatars/avatar-1648423809520.png', 'logo-1/untitled-1.jpg', 'Hà Nội', 'aefe409d-a683-4ef8-a944-2b4b345b4372', 'OWHX', 677, 249, 428, 89, 1, 'published', '2021-12-29 03:07:16', '2022-09-11 05:34:19'),
(551, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '8ca9b736-da64-499a-a03d-5644f76fda60', 'VW2Z', 0, 0, 0, NULL, 1, 'pending', '2021-12-29 03:07:17', '2021-12-29 03:07:17'),
(552, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '14d1a3a9-0edb-453a-a723-7fe4b1a5c0de', 'GPSF', 0, 0, 0, NULL, 1, 'pending', '2021-12-29 03:07:17', '2021-12-29 03:07:17'),
(553, 'Trần Minh Quyết', 'tranminhquyet', 'Đỉnh Cao Xe Lướt', 'avatars/avatar-1641197053649.png', 'covers/609da67e-eca9-4300-802e-4bf876bedbd5.jpeg', 'Hà Nội', 'fc470185-e565-4689-93dd-a647ab44bece', 'NKHU', 45, 14, 31, 48, 9, 'published', '2021-12-29 03:07:18', '2022-08-29 09:11:46'),
(554, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '36c3dc8b-59a5-44c3-8e96-f78954afac08', 'WHM3', 0, 0, 0, NULL, 1, 'pending', '2021-12-29 03:07:18', '2021-12-29 03:07:18'),
(555, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '89fec9b1-e8d6-4968-acf2-c88e42e9bd8f', 'YTKQ', 0, 0, 0, NULL, 1, 'pending', '2021-12-29 03:07:19', '2021-12-29 03:07:19'),
(556, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'fd0b9d18-3916-4945-b928-6d68bd0fddad', 'YDZK', 17, 17, 0, 46, 1, 'published', '2021-12-29 03:07:19', '2022-02-13 23:55:16'),
(557, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '82f0b55b-2595-4f71-896b-3e2215ffaf0b', '9JT3', 0, 0, 0, NULL, 1, 'pending', '2021-12-29 03:07:20', '2021-12-29 03:07:20'),
(558, 'Bùi Chiến', 'Bùi Chiến', 'Saller', 'avatars/avatar-1641216209926.png', 'covers/2f60a6c7-0705-4bea-9214-6bd800559b94.jpeg', 'Số 3-5 nguyễn Văn Linh, Long Biên, HN', 'da7cadca-9e74-49a1-89fd-db1b61d8cae1', 'XZQZ', 23, 10, 13, 49, 9, 'published', '2021-12-29 03:07:20', '2022-07-15 03:41:57'),
(559, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '85e92ce8-5de2-452d-a447-449fdfef1956', 'ASBQ', 0, 0, 0, NULL, 1, 'pending', '2021-12-29 03:07:21', '2021-12-29 03:07:21'),
(560, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '860ecd08-51fe-4b86-a480-90e3d7f1efde', '0DAY', 0, 0, 0, NULL, 1, 'pending', '2021-12-29 03:07:21', '2021-12-29 03:07:21'),
(561, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '8322b269-7918-4859-a298-7a20b0354580', '7JGG', 0, 0, 0, NULL, 1, 'pending', '2021-12-29 03:07:22', '2021-12-29 03:07:22'),
(562, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'bba17859-2e4e-45f7-a954-4c82fa0aabec', 'MD3I', 1, 1, 0, 86, 1, 'published', '2021-12-29 03:07:22', '2022-05-02 07:57:07'),
(563, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '0611653b-8516-4f55-97a0-992cb323253c', 'EQMR', 0, 0, 0, NULL, 1, 'pending', '2021-12-29 03:07:23', '2021-12-29 03:07:23'),
(564, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'b7e989d7-d133-4e73-a959-9e0d5f3f202b', 'AMY8', 0, 0, 0, NULL, 1, 'pending', '2021-12-29 03:07:24', '2021-12-29 03:07:24'),
(565, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '548cbfe9-74ca-444b-bd4a-502189a8df92', 'RUVA', 0, 0, 0, NULL, 1, 'pending', '2022-05-04 00:32:15', '2022-05-04 00:32:15'),
(566, 'Lương Thanh Hiếu', 'Hiếu90', 'Không nói hai lời .\r\nKhông sống hai mặt .', 'avatars/avatar-1661064939741.png', 'covers/received-708034730321067.jpeg', 'Nam định', 'b7c8f4ec-08a6-478c-b79e-641bc787de91', 'STPJ', 19, 9, 10, 160, 1, 'published', '2022-05-04 00:32:17', '2022-08-21 00:47:59'),
(567, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'e45a5dd1-c059-41aa-b60f-e033c7ca4415', 'OUZN', 0, 0, 0, NULL, 1, 'pending', '2022-05-04 00:32:18', '2022-05-04 00:32:18'),
(568, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '58ece91c-a773-44a8-ab55-290bfc66f702', 'IZT6', 13, 13, 0, 152, 1, 'published', '2022-05-04 00:32:18', '2022-08-19 06:48:50'),
(569, 'Nguyễn Duy Khánh', 'Flour', 'Hello Hottie 🥵', 'avatars/avatar-1656425297322.png', 'covers/screenshot-2022-03-04-01-12-59-24-965bbf4d18d205f782c6b8409c5773a4.jpg', 'Hanoian', '12f99b59-d630-443b-9550-c20da66e8c06', '3KZS', 54, 22, 32, 145, 1, 'published', '2022-05-04 00:32:19', '2022-09-07 22:07:10'),
(570, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'c58328ab-80b0-41b9-8cc0-b7c544298f51', 'WNF2', 0, 0, 0, NULL, 1, 'pending', '2022-05-04 00:32:19', '2022-05-04 00:32:19'),
(571, 'Trần Thế Hoàng', 'Hoanghope_', 'Quét Rồi Click Liền 🤤🤤', 'avatars/avatar-1652779451002.png', 'covers/4db44fcd-2520-41aa-84b6-270c4b5492e1.jpeg', 'Hà Nội', '71bf07cb-bcba-446d-b8b2-319a53543c0a', 'QTJT', 48, 21, 27, 122, 9, 'published', '2022-05-04 00:32:20', '2022-06-30 21:14:37'),
(572, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'cf57d548-8c1d-41de-b467-3349b1338f8f', 'G6SO', 4, 4, 0, 158, 1, 'published', '2022-05-04 00:32:21', '2022-09-03 22:37:32'),
(573, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'bdc5c937-d576-4bec-a4c2-4ab391ef5e7e', 'D4MT', 0, 0, 0, NULL, 1, 'pending', '2022-05-04 00:32:21', '2022-05-04 00:32:21'),
(574, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '1e2c4d26-655e-47ee-b266-b524f5aa11e8', 'CDJK', 13, 13, 0, 147, 1, 'published', '2022-05-04 00:32:22', '2022-09-05 04:38:43'),
(575, 'My', 'ttm.myan', 'Yeww😍', 'avatars/avatar-1654077732290.png', 'covers/3afecac7-94e5-421a-99c6-a79d9c83490a.jpeg', 'Vinh - Nghe An', '93146fdb-6c13-40be-a53a-88bffb0163ab', 'ALXL', 60, 25, 35, 129, 1, 'published', '2022-05-04 00:32:23', '2022-08-09 04:41:38'),
(576, 'Thanh Dat', 'Thanh Dat', 'Xin chao ≠))‽', 'avatars/avatar-1661060518485.png', 'covers/osman-rana-gxezuwo5m4i-unsplash.jpg', 'Dong Nai , Viet Nam', 'e9bb19db-d60f-4d5a-b82b-fa763331d2a7', 'XKHD', 9, 2, 7, 159, 1, 'published', '2022-05-04 00:32:24', '2022-09-08 00:22:35'),
(577, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'ce4d3a8c-7730-4e1f-954a-aa923bbb5aa3', '4FLR', 0, 0, 0, NULL, 1, 'pending', '2022-05-04 00:32:24', '2022-05-04 00:32:24'),
(578, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'c267291b-7ca8-4f1f-b386-9ada1c7e7dd9', 'UHPI', 0, 0, 0, NULL, 1, 'pending', '2022-05-04 00:32:25', '2022-05-04 00:32:25'),
(579, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'b1fd6f1b-faa9-4a30-a40d-edc78e7bfd09', 'GGAN', 0, 0, 0, NULL, 1, 'pending', '2022-05-04 00:32:26', '2022-05-04 00:32:26'),
(580, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '36e51698-4f5a-447c-b10c-d47ee68af8af', 'JOCD', 3, 3, 0, 142, 1, 'published', '2022-05-04 00:32:26', '2022-06-30 22:13:58'),
(581, 'Đông Dương', 'Đông Dương', 'Bae đừng lướt qua chớ🙄🙄', 'avatars/avatar-1656426522902.png', 'covers/a10b5b01-1722-4c53-8d8d-a7c77d653347.jpeg', 'Hanoi', 'fdd491ef-780f-4d61-a78c-410251e80d83', 'OLOA', 38, 23, 15, 143, 9, 'published', '2022-05-04 00:32:27', '2022-08-12 21:45:01'),
(582, 'Viết Thiên', 'Viết Thiên', 'Dễ nói chuyện, thoải mái, hay cười', 'avatars/avatar-1658890161047.png', 'covers/774268c6-ff8f-4c8d-889f-2f03c25941f6.jpeg', 'Cổ Nhuế 2', '8575c1b7-e2b7-4ef0-b3c4-71134a2de2e4', '14FC', 16, 6, 10, 153, 9, 'published', '2022-05-04 00:32:28', '2022-08-22 09:37:55'),
(583, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '3238564a-ac2e-4c2b-84c8-a5e67a50d528', 'P61D', 0, 0, 0, NULL, 1, 'pending', '2022-05-04 00:32:28', '2022-05-04 00:32:28'),
(584, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '38497667-99af-4492-9d7e-a10a2706b979', 'VKLB', 0, 0, 0, NULL, 1, 'pending', '2022-05-04 00:32:29', '2022-05-04 00:32:29'),
(585, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'aaee0728-8957-48ab-a727-54c3a677e022', 'RHDA', 0, 0, 0, NULL, 1, 'pending', '2022-05-16 02:21:49', '2022-05-16 02:21:49'),
(586, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '3343cb16-7961-4271-babd-da6bea97df4b', '5DNV', 0, 0, 0, NULL, 1, 'pending', '2022-05-16 02:21:50', '2022-05-16 02:21:50'),
(587, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '72b020e7-2022-43b7-917e-1a0824e97f66', 'H3DI', 0, 0, 0, NULL, 1, 'pending', '2022-05-16 02:21:51', '2022-05-16 02:21:51'),
(588, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '7ce4e429-7136-46dc-89b4-8b958ded8e83', '8GVW', 0, 0, 0, NULL, 1, 'pending', '2022-05-16 02:21:52', '2022-05-16 02:21:52'),
(589, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '46e832f0-2a2b-4035-851d-d8c2b1589fb5', 'QND5', 0, 0, 0, NULL, 1, 'pending', '2022-05-16 02:21:53', '2022-05-16 02:21:53'),
(590, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '7bbd1a5a-666d-41e7-924f-52423a8ce1b3', '1UWB', 0, 0, 0, NULL, 1, 'pending', '2022-05-16 02:21:53', '2022-05-16 02:21:53'),
(591, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'a0f9a2ec-58a8-4ff4-9d6e-124c78976d0f', 'UYYO', 0, 0, 0, NULL, 1, 'pending', '2022-05-16 02:21:54', '2022-05-16 02:21:54'),
(592, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '7ed1b0c9-9e3d-4320-a765-2f60d307fdcb', 'Q8NM', 0, 0, 0, NULL, 1, 'pending', '2022-05-16 02:21:55', '2022-05-16 02:21:55'),
(593, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '78640168-844a-45fa-8221-0a3570e9d04b', 'GWRG', 0, 0, 0, NULL, 1, 'pending', '2022-05-16 02:21:55', '2022-05-16 02:21:55'),
(594, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '04d20dfc-3f2e-4b58-a9bf-e50c10c0b52e', 'FJ5B', 0, 0, 0, NULL, 1, 'pending', '2022-05-16 02:21:56', '2022-05-16 02:21:56'),
(595, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'af8a0203-2fa9-4649-99a0-4720a37dd81b', 'D7KI', 0, 0, 0, NULL, 1, 'pending', '2022-05-16 02:21:57', '2022-05-16 02:21:57'),
(596, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '47ac60c5-fa08-4e52-a2b2-3c0700aba52e', 'OSO5', 0, 0, 0, NULL, 1, 'pending', '2022-05-16 02:21:58', '2022-05-16 02:21:58'),
(597, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '9e2a885f-5df5-4c57-97c4-dd7802d1e721', 'ROGQ', 0, 0, 0, NULL, 1, 'pending', '2022-05-16 02:21:59', '2022-05-16 02:21:59'),
(598, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '33b145c5-4013-40b9-b5b6-284a95aef6e4', 'ISOU', 0, 0, 0, NULL, 1, 'pending', '2022-05-16 02:22:00', '2022-05-16 02:22:00'),
(599, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '7c93927b-f5a3-4bca-ae01-6588e7ee5378', 'GSY7', 0, 0, 0, NULL, 1, 'pending', '2022-05-16 02:22:00', '2022-05-16 02:22:00'),
(600, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'd107af36-4faa-4a5a-8624-832e235f115a', 'RFER', 0, 0, 0, NULL, 1, 'pending', '2022-05-16 02:22:01', '2022-05-16 02:22:01'),
(601, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'e9891394-67b1-42db-9ad5-ea8c2b2be68a', 'V3HG', 0, 0, 0, NULL, 1, 'pending', '2022-05-16 02:22:02', '2022-05-16 02:22:02'),
(602, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '78c040f6-9661-4c3e-a3dd-4431c0ac48e2', '9HAI', 0, 0, 0, NULL, 1, 'pending', '2022-05-16 02:22:03', '2022-05-16 02:22:03'),
(603, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '46b07ee2-0c3a-484c-b7e0-79373c874e02', 'XW2K', 0, 0, 0, NULL, 1, 'pending', '2022-05-16 02:22:04', '2022-05-16 02:22:04'),
(604, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '2c8c6446-a77b-4232-ae1f-ad03e5bd0bbc', 'F7FG', 0, 0, 0, NULL, 1, 'pending', '2022-05-16 02:22:05', '2022-05-16 02:22:05'),
(605, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'e32a85a7-5622-4500-80c6-21e18fcf20ca', 'MKQA', 0, 0, 0, NULL, 1, 'pending', '2022-05-16 02:22:05', '2022-05-16 02:22:05'),
(606, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '0e4bd661-b1fc-4847-9fa0-b7998a1234f3', 'A8BK', 0, 0, 0, NULL, 1, 'pending', '2022-05-16 02:22:06', '2022-05-16 02:22:06'),
(607, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'a4d274ac-bd09-46cf-8290-88ba2aa5cf96', 'AJC1', 0, 0, 0, NULL, 1, 'pending', '2022-05-16 02:22:07', '2022-05-16 02:22:07'),
(608, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '6044e1ab-4e8f-4364-af23-2a91aeb4bb17', 'H8MN', 0, 0, 0, NULL, 1, 'pending', '2022-05-16 02:22:07', '2022-05-16 02:22:07'),
(609, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'f6c005ea-fe5d-457c-9a34-79698ad3b5ff', 'W82O', 0, 0, 0, NULL, 1, 'pending', '2022-05-16 02:22:08', '2022-05-16 02:22:08'),
(610, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '4608c9db-db21-4964-9cfe-a9ee890c7be5', 'VMEW', 0, 0, 0, NULL, 1, 'pending', '2022-05-16 02:22:09', '2022-05-16 02:22:09'),
(611, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '8fd073b6-08f8-4bc3-ae25-8b39f8c0c5ee', '6KYV', 0, 0, 0, NULL, 1, 'pending', '2022-05-16 02:22:10', '2022-05-16 02:22:10'),
(612, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '861c1cc0-487e-42ca-a645-0daae6000bd3', 'UOLD', 0, 0, 0, NULL, 1, 'pending', '2022-05-16 02:22:11', '2022-05-16 02:22:11'),
(613, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'a6f148bc-4add-405c-b40e-5de643e2612f', 'W8EC', 0, 0, 0, NULL, 1, 'pending', '2022-05-16 02:22:11', '2022-05-16 02:22:11'),
(614, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '6f64c96e-e2f9-4643-88f2-90beaf4fbf2e', 'TKA0', 0, 0, 0, NULL, 1, 'pending', '2022-05-16 02:22:12', '2022-05-16 02:22:12'),
(615, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '8012d2fd-36d6-46a4-9a5e-4ed6194a7ff2', '8WP2', 0, 0, 0, NULL, 1, 'pending', '2022-05-16 02:22:13', '2022-05-16 02:22:13'),
(616, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'c267c104-6484-41c3-b724-17310c3529ca', 'CTRH', 0, 0, 0, NULL, 1, 'pending', '2022-05-16 02:22:13', '2022-05-16 02:22:13'),
(617, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'e216c720-e70e-4dee-9971-2e842e1ebba5', 'HCPJ', 0, 0, 0, NULL, 1, 'pending', '2022-05-16 02:22:14', '2022-05-16 02:22:14'),
(618, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'd1838238-b78f-4251-9725-945f33313de1', 'S8OR', 0, 0, 0, NULL, 1, 'pending', '2022-05-16 02:22:15', '2022-05-16 02:22:15'),
(619, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '1b212203-6b4d-4f08-88bb-ad126276d77b', 'QX4G', 0, 0, 0, NULL, 1, 'pending', '2022-05-16 02:22:16', '2022-05-16 02:22:16'),
(620, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '5bc9f0e2-f220-444d-b4ff-a31e9d733ea2', 'VNZZ', 0, 0, 0, NULL, 1, 'pending', '2022-05-16 02:22:16', '2022-05-16 02:22:16'),
(621, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '4eef21d5-4e01-4dda-86a5-15ea867919e6', 'ENZI', 0, 0, 0, NULL, 1, 'pending', '2022-05-16 02:22:17', '2022-05-16 02:22:17'),
(622, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '9ffd9a1a-abab-4463-be34-f8edb40a7ba8', 'COCP', 0, 0, 0, NULL, 1, 'pending', '2022-05-16 02:22:18', '2022-05-16 02:22:18'),
(623, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'a0fbfe03-918c-4e47-a3cb-aebb9e9de431', 'HBPC', 0, 0, 0, NULL, 1, 'pending', '2022-05-16 02:22:19', '2022-05-16 02:22:19'),
(624, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '61a7cae9-73ca-4555-b372-59901834c9c5', '7U4L', 0, 0, 0, NULL, 1, 'pending', '2022-05-16 02:22:19', '2022-05-16 02:22:19'),
(625, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'c6c2b6bf-6133-491c-a9c3-6a26d7ea8605', 'DOIU', 0, 0, 0, NULL, 1, 'pending', '2022-08-16 06:04:38', '2022-08-16 06:04:38'),
(626, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '07c3b4fe-63fe-4c4f-87cb-bb0d829d1ce5', '9YZV', 0, 0, 0, NULL, 1, 'pending', '2022-08-16 06:04:40', '2022-08-16 06:04:40'),
(627, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'cacae29e-787f-4a8b-9c5d-736cee3aae52', 'ZAYN', 0, 0, 0, NULL, 1, 'pending', '2022-08-16 06:04:41', '2022-08-16 06:04:41'),
(628, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'f4c9be75-0647-489a-9ce6-4477dceeaf56', 'JLY6', 0, 0, 0, NULL, 1, 'pending', '2022-08-16 06:04:42', '2022-08-16 06:04:42'),
(629, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '36fdc849-2ed7-4ec3-a51e-a29cdef7470f', '7RGU', 0, 0, 0, NULL, 1, 'pending', '2022-08-16 06:04:43', '2022-08-16 06:04:43'),
(630, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'c144975e-4de0-4360-85bd-491a4e9d6743', 'DNJM', 0, 0, 0, NULL, 1, 'pending', '2022-08-16 06:04:44', '2022-08-16 06:04:44'),
(631, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '42ab6a97-bada-4273-8010-9953869fef5e', 'TBPU', 0, 0, 0, NULL, 1, 'pending', '2022-08-16 06:04:45', '2022-08-16 06:04:45'),
(632, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '3d30c9bc-0285-4c1f-bac9-317bb1e84b65', 'OSZP', 0, 0, 0, NULL, 1, 'pending', '2022-08-16 06:04:45', '2022-08-16 06:04:45'),
(633, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '1332d06d-725a-471b-af06-cfa7f0d16f57', 'TV41', 0, 0, 0, NULL, 1, 'pending', '2022-08-16 06:04:47', '2022-08-16 06:04:47'),
(634, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '9a700f45-5de8-44ce-8008-f90f2b7850aa', '8WXO', 0, 0, 0, NULL, 1, 'pending', '2022-08-16 06:04:47', '2022-08-16 06:04:47'),
(635, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '74be76bc-e156-48aa-88fd-a2d56210d694', '0REK', 0, 0, 0, NULL, 1, 'pending', '2022-08-16 06:04:48', '2022-08-16 06:04:48'),
(636, 'Trần Quang Hiệu', '🥰 Hiệu Trần 🥰', '🥰 Do What You Like🥰\r\n🥰Love What You Do 😍', 'avatars/avatar-1662915772949.png', '33.jpg', 'Giao Thuỷ - Nam Định', '2fe10eae-ac6a-4a42-9ab1-a31c6af71092', 'HIBG', 12, 8, 4, 162, 1, 'published', '2022-08-16 06:04:49', '2022-09-11 10:39:40'),
(637, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '2c6ac4da-5b40-4ab2-97d5-07839975a377', '7W6D', 0, 0, 0, NULL, 1, 'pending', '2022-08-16 06:04:50', '2022-08-16 06:04:50'),
(638, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'bc453410-8924-4791-bfea-5d5bcddba374', 'IPQ8', 0, 0, 0, NULL, 1, 'pending', '2022-08-16 06:04:52', '2022-08-16 06:04:52'),
(639, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '159821be-f913-4114-a8f0-72dd7ac42d20', 'VYPN', 0, 0, 0, NULL, 1, 'pending', '2022-08-16 06:04:53', '2022-08-16 06:04:53'),
(640, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'f98c62d4-776a-432c-9242-fc869a032953', 'B2VC', 0, 0, 0, NULL, 1, 'pending', '2022-08-16 06:04:53', '2022-08-16 06:04:53'),
(641, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '2486250d-d20e-4d09-8dc8-06f9c79aa5f1', 'L5CO', 0, 0, 0, NULL, 1, 'pending', '2022-08-16 06:04:54', '2022-08-16 06:04:54'),
(642, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '3dcb0945-49e2-4692-9d25-66e892aa1a48', 'FWF1', 0, 0, 0, NULL, 1, 'pending', '2022-08-16 06:04:55', '2022-08-16 06:04:55'),
(643, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '550360ca-39d5-46dc-a4ad-7c210289ffbb', 'TZ1A', 0, 0, 0, NULL, 1, 'pending', '2022-08-16 06:04:55', '2022-08-16 06:04:55'),
(644, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '92d7604b-9b33-4467-adb8-fbacdd94860c', 'KVLS', 0, 0, 0, NULL, 1, 'pending', '2022-08-16 06:04:56', '2022-08-16 06:04:56'),
(645, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '93d6ba01-9620-42da-a6f0-8caa7a930ca1', '8REQ', 0, 0, 0, NULL, 1, 'pending', '2022-08-16 06:04:57', '2022-08-16 06:04:57'),
(646, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'ed872d8e-4cd5-4b3b-9097-9775d52c1a21', 'OMQH', 0, 0, 0, NULL, 1, 'pending', '2022-08-16 06:04:57', '2022-08-16 06:04:57'),
(647, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '45b7d364-011d-466d-bba1-9074fea63d1d', 'LCNO', 0, 0, 0, NULL, 1, 'pending', '2022-08-16 06:04:58', '2022-08-16 06:04:58'),
(648, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '96b1929d-5404-4cfa-bd3b-2e020f8abddc', 'RTQ9', 0, 0, 0, NULL, 1, 'pending', '2022-08-16 06:04:59', '2022-08-16 06:04:59'),
(649, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '938844ea-9fe5-4029-9188-97c6785f5d0d', '2NV7', 0, 0, 0, NULL, 1, 'pending', '2022-08-16 06:05:00', '2022-08-16 06:05:00'),
(650, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '1fbfd6e8-6ef8-4e64-ae74-f305dfee18f8', 'AERK', 0, 0, 0, NULL, 1, 'pending', '2022-08-16 06:05:01', '2022-08-16 06:05:01'),
(651, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'c8ea098e-e3fd-443c-bd60-29f2b8c6fbec', 'EDUU', 0, 0, 0, NULL, 1, 'pending', '2022-08-16 06:05:03', '2022-08-16 06:05:03'),
(652, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '07404c9b-c19a-4be2-ad2d-8d4a27c185fc', 'DGMW', 0, 0, 0, NULL, 1, 'pending', '2022-08-16 06:05:04', '2022-08-16 06:05:04'),
(653, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '85053716-b2a2-498e-93bf-f3d57f2dbf06', 'L4TO', 0, 0, 0, NULL, 1, 'pending', '2022-08-16 06:05:05', '2022-08-16 06:05:05'),
(654, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '0402ed0a-75ef-4be1-aae6-7252eafaebd6', '0OLR', 0, 0, 0, NULL, 1, 'pending', '2022-08-16 06:05:07', '2022-08-16 06:05:07'),
(655, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'be850f24-2047-4892-a78a-c81064a5b188', 'TIJY', 0, 0, 0, NULL, 1, 'pending', '2022-08-16 06:05:07', '2022-08-16 06:05:07'),
(656, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '554ab481-fe14-4e80-863f-b1b5453e89dd', 'KZNL', 0, 0, 0, NULL, 1, 'pending', '2022-08-16 06:05:08', '2022-08-16 06:05:08'),
(657, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '0f10777e-ef55-40fd-b26f-5dd0baf8b0a4', '5SBM', 0, 0, 0, NULL, 1, 'pending', '2022-08-16 06:05:10', '2022-08-16 06:05:10'),
(658, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, '328a65da-a0df-4077-a9ef-3cf9825a67ff', 'XVKR', 0, 0, 0, NULL, 1, 'pending', '2022-08-16 06:05:10', '2022-08-16 06:05:10'),
(659, NULL, NULL, NULL, 'avatars/default-avatar.png', NULL, NULL, 'ae38da4b-1e18-4261-84d6-24a27683ef36', 'NCXJ', 0, 0, 0, NULL, 1, 'pending', '2022-08-16 06:05:11', '2022-08-16 06:05:11');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `activations`
--

CREATE TABLE `activations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `code` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT 0,
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `activations`
--

INSERT INTO `activations` (`id`, `user_id`, `code`, `completed`, `completed_at`, `created_at`, `updated_at`) VALUES
(1, 1, '9Ge1fFBpySpaYijFCorxDcd7CpFXen0R', 1, '2021-09-06 20:52:59', '2021-09-06 20:52:59', '2021-09-06 20:52:59');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unread',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `phone`, `address`, `subject`, `content`, `status`, `created_at`, `updated_at`) VALUES
(1, 'DavidPew', 'no-replyAntenty@gmail.com', '86357778894', NULL, 'Do you want cheap and innovative advertising for little money?', 'Hello!  gotap.com.vn \r\n \r\nWe put up of the sale \r\n \r\nSending your commercial proposal through the Contact us form which can be found on the sites in the contact partition. Feedback forms are filled in by our software and the captcha is solved. The profit of this method is that messages sent through feedback forms are whitelisted. This method raise the chances that your message will be read. \r\n \r\nOur database contains more than 27 million sites around the world to which we can send your message. \r\n \r\nThe cost of one million messages 49 USD \r\n \r\nFREE TEST mailing Up to 50,000 messages. \r\n \r\n \r\nThis message is created automatically.  Use our contacts for communication. \r\n \r\nContact us. \r\nTelegram - @FeedbackMessages \r\nSkype  live:contactform_18 \r\nWhatsApp - +375259112693 \r\nWe only use chat.', 'unread', '2021-10-10 14:39:18', '2021-10-10 14:39:18'),
(2, 'h', 'Bigdaddybeta07@gmail.com', '0912238975', NULL, 'mua sim', 'qsasaS', 'unread', '2021-10-12 15:18:53', '2021-10-12 15:18:53'),
(3, 'Hoàng Văn Kiên', 'hoangkien151092@gmail.com', '0985108032', NULL, 'Mua thẻ', 'Thẻ gotap', 'unread', '2021-10-15 04:00:18', '2021-10-15 04:00:18'),
(4, 'Hoàng Văn Kiên', 'hoangkien151092@gmail.com', '0985108032', 'Thái Nguyên\r\nThái Nguyên', 'Mua thẻ', 'Sản phẩm: STICKER Black Pink', 'unread', '2021-10-15 04:25:58', '2021-10-15 04:25:58'),
(5, 'Hoàng Văn Kiên', 'hoangkien151092@gmail.com', '0985108032', 'Thái Nguyên\r\nThái Nguyên', 'Mua thẻ', 'Mã sản phẩm: 8\r\n                                    Tên Sản phẩm: STICKER Black Pink\r\n                                    Giá: 189000', 'unread', '2021-10-15 04:30:34', '2021-10-15 04:30:34'),
(6, 'Hoàng Văn Kiên', 'hoangkien151092@gmail.com', '0985108032', 'Thái Nguyên\r\nThái Nguyên', 'Mua thẻ', 'Mã sản phẩm: 8\r\n                                    Tên Sản phẩm: STICKER Black Pink\r\n                                    Giá: 189000', 'unread', '2021-10-15 04:32:50', '2021-10-15 04:32:50');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contact_replies`
--

CREATE TABLE `contact_replies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dashboard_widgets`
--

CREATE TABLE `dashboard_widgets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `dashboard_widgets`
--

INSERT INTO `dashboard_widgets` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'widget_total_themes', '2021-09-06 20:53:17', '2021-09-06 20:53:17'),
(2, 'widget_total_users', '2021-09-06 20:53:17', '2021-09-06 20:53:17'),
(3, 'widget_total_pages', '2021-09-06 20:53:17', '2021-09-06 20:53:17'),
(4, 'widget_total_plugins', '2021-09-06 20:53:17', '2021-09-06 20:53:17');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `dashboard_widget_settings`
--

CREATE TABLE `dashboard_widget_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `widget_id` int(10) UNSIGNED NOT NULL,
  `order` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `icons`
--

CREATE TABLE `icons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme_id` bigint(20) UNSIGNED NOT NULL,
  `social_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `icons`
--

INSERT INTO `icons` (`id`, `name`, `image`, `theme_id`, `social_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Facebook', 'social-icons/1/facebook.png', 1, 1, 'published', '2021-10-10 16:07:50', '2021-10-10 16:07:50'),
(2, 'Instagram', 'social-icons/1/instagram.png', 1, 2, 'published', '2021-10-10 16:07:50', '2021-10-10 16:07:50'),
(3, 'Github', 'social-icons/1/github.png', 1, 3, 'published', '2021-10-10 16:07:50', '2021-10-10 16:07:50'),
(4, 'Youtube', 'social-icons/1/youtube.png', 1, 4, 'published', '2021-10-10 16:07:50', '2021-10-10 16:07:50'),
(5, 'Tiktok', 'social-icons/1/tiktok.png', 1, 5, 'published', '2021-10-10 16:07:50', '2021-10-10 16:07:50'),
(6, 'Pinterest', 'social-icons/1/pinterest.png', 1, 6, 'published', '2021-10-10 16:07:50', '2021-10-10 16:07:50'),
(7, 'LinkedIn', 'social-icons/1/linkedin.png', 1, 7, 'published', '2021-10-10 16:07:50', '2021-10-10 16:07:50'),
(8, 'Twitter', 'social-icons/1/twitter.png', 1, 8, 'published', '2021-10-10 16:07:50', '2021-10-10 16:07:50'),
(9, 'Snapchat', 'social-icons/1/snapchat.png', 1, 9, 'published', '2021-10-10 16:07:50', '2021-10-10 16:07:50'),
(10, 'Soundcloud', 'social-icons/1/soundcloud.png', 1, 10, 'published', '2021-10-10 16:07:50', '2021-10-10 16:07:50'),
(11, 'Skype', 'social-icons/1/skype.png', 1, 11, 'published', '2021-10-10 16:07:50', '2021-10-10 16:07:50'),
(12, 'Telegram', 'social-icons/1/telegram.png', 1, 12, 'published', '2021-10-10 16:07:50', '2021-10-10 16:07:50'),
(13, 'Whatsapp', 'social-icons/1/whatsapp.png', 1, 13, 'published', '2021-10-10 16:07:50', '2021-10-10 16:07:50'),
(14, 'MoMo', 'social-icons/1/momo.png', 1, 14, 'published', '2021-10-10 16:07:50', '2021-10-10 16:07:50'),
(15, 'Zalo', 'social-icons/1/zalo.png', 1, 15, 'published', '2021-10-10 16:07:50', '2021-10-10 16:07:50'),
(16, 'Gapo', 'social-icons/1/gapo.png', 1, 16, 'published', '2021-10-10 16:07:50', '2021-10-10 16:07:50'),
(17, 'Lotus', 'social-icons/1/lotus.png', 1, 17, 'published', '2021-10-10 16:07:50', '2021-10-10 16:07:50'),
(18, 'Link', 'social-icons/1/link.png', 1, 18, 'published', '2021-10-10 16:07:50', '2021-10-10 16:07:50'),
(19, 'Phone', 'social-icons/1/phone.png', 1, 19, 'published', '2021-10-10 16:07:50', '2021-10-10 16:07:50'),
(20, 'SMS', 'social-icons/1/sms.png', 1, 20, 'published', '2021-10-10 16:07:50', '2021-10-10 16:07:50'),
(21, 'Email', 'social-icons/1/email.png', 1, 21, 'published', '2021-10-10 16:07:50', '2021-10-10 16:07:50'),
(22, 'Agribank', 'social-icons/1/agribank.png', 1, 22, 'published', '2021-10-10 16:07:50', '2021-10-10 16:07:50'),
(23, 'BIDV', 'social-icons/1/bidv.png', 1, 23, 'published', '2021-10-10 16:07:50', '2021-10-10 16:07:50'),
(24, 'MB Bank', 'social-icons/1/mbbank.png', 1, 24, 'published', '2021-10-10 16:07:50', '2021-10-10 16:07:50'),
(25, 'VP Bank', 'social-icons/1/vpbank.png', 1, 25, 'published', '2021-10-10 16:07:50', '2021-10-10 16:07:50'),
(26, 'TP Bank', 'social-icons/1/tpbank.png', 1, 26, 'published', '2021-10-10 16:07:50', '2021-10-10 16:07:50'),
(27, 'MSB Bank', 'social-icons/1/msbbank.png', 1, 27, 'published', '2021-10-10 16:07:50', '2021-10-10 16:07:50'),
(28, 'ACB Bank', 'social-icons/1/acbbank.png', 1, 28, 'published', '2021-10-10 16:07:50', '2021-10-10 16:07:50'),
(29, 'VIB Bank', 'social-icons/1/vibbank.png', 1, 29, 'published', '2021-10-10 16:07:50', '2021-10-10 16:07:50'),
(30, 'Techcombank', 'social-icons/1/techcombank.png', 1, 30, 'published', '2021-10-10 16:07:50', '2021-10-10 16:07:50'),
(31, 'Vietcombank', 'social-icons/1/vietcombank.png', 1, 31, 'published', '2021-10-10 16:07:50', '2021-10-10 16:07:50'),
(32, 'Vietinbank', 'social-icons/1/vietinbank.png', 1, 32, 'published', '2021-10-10 16:07:50', '2021-10-10 16:07:50'),
(33, 'Seabank', 'social-icons/1/seabank.png', 1, 33, 'published', '2021-10-10 16:07:50', '2021-10-10 16:07:50'),
(47, 'Facebook', 'icon-pink-2/1.png', 2, 1, 'published', '2021-10-16 03:13:10', '2021-10-16 03:13:10'),
(48, 'Telegram', 'icon-pink-2/26.png', 2, 12, 'published', '2021-10-16 03:33:52', '2021-10-16 03:33:52'),
(49, 'SMS', 'icon-pink-2/25.png', 2, 20, 'published', '2021-10-16 03:34:25', '2021-10-16 03:34:25'),
(50, 'Zalo', 'icon-pink-2/22.png', 2, 15, 'published', '2021-10-16 03:34:50', '2021-10-16 03:34:50'),
(51, 'Momo', 'icon-pink-2/23.png', 2, 14, 'published', '2021-10-16 03:37:10', '2021-10-16 03:37:10'),
(52, 'Link', 'icon-pink-2/24.png', 2, 18, 'published', '2021-10-16 03:38:29', '2021-10-16 03:38:29'),
(53, 'Tiktok', 'icon-pink-2/20.png', 2, 5, 'published', '2021-10-16 03:38:52', '2021-10-16 03:38:52'),
(54, 'Phone', 'icon-pink-2/21.png', 2, 19, 'published', '2021-10-16 03:39:21', '2021-10-16 03:39:21'),
(55, 'Email', 'icon-pink-2/17.png', 2, 21, 'published', '2021-10-16 03:40:17', '2021-10-16 03:40:17'),
(56, 'Soundcloud', 'icon-pink-2/18.png', 2, 10, 'published', '2021-10-16 03:40:43', '2021-10-16 03:40:43'),
(57, 'Github', 'icon-pink-2/19.png', 2, 3, 'published', '2021-10-16 03:41:08', '2021-10-16 03:41:08'),
(58, 'Instargram', 'icon-pink-2/13.png', 2, 2, 'published', '2021-10-16 03:41:39', '2021-10-16 03:41:39'),
(59, 'Twitter', 'icon-pink-2/15.png', 2, 8, 'published', '2021-10-16 03:43:04', '2021-10-16 03:43:16'),
(60, 'Skype', 'icon-pink-2/10.png', 2, 11, 'published', '2021-10-16 03:43:38', '2021-10-16 03:43:38'),
(61, 'Linkedln', 'icon-pink-2/11.png', 2, 7, 'published', '2021-10-16 03:44:28', '2021-10-16 03:44:28'),
(62, 'Whatsapp', 'icon-pink-2/7.png', 2, 13, 'published', '2021-10-16 03:45:33', '2021-10-16 03:45:33'),
(63, 'Pinterest', 'icon-pink-2/3.png', 2, 6, 'published', '2021-10-16 03:46:38', '2021-10-16 03:46:38'),
(64, 'Youtube', 'icon-pink-2/9.png', 2, 4, 'published', '2021-10-16 03:47:24', '2021-10-26 07:05:58'),
(93, 'Facebook', 'shop-card/black-icon/1.png', 7, 1, 'published', '2021-10-30 04:06:53', '2021-10-30 04:06:53'),
(94, 'Github', 'shop-card/black-icon/25.png', 7, 3, 'published', '2021-10-30 04:07:24', '2021-10-30 04:07:24'),
(95, 'Momo', 'shop-card/black-icon/26.png', 7, 14, 'published', '2021-10-30 04:07:54', '2021-10-30 04:07:54'),
(96, 'Phone', 'shop-card/black-icon/23.png', 7, 19, 'published', '2021-10-30 04:08:24', '2021-10-30 04:08:24'),
(97, 'Email', 'shop-card/black-icon/24.png', 7, 21, 'published', '2021-10-30 04:08:44', '2021-10-30 04:08:44'),
(98, 'Telegram', 'shop-card/black-icon/19.png', 7, 12, 'published', '2021-10-30 04:09:21', '2021-10-30 04:09:21'),
(99, 'Tinder', 'shop-card/black-icon/15.png', 7, 34, 'published', '2021-10-30 04:10:20', '2021-10-30 04:10:20'),
(100, 'Soundcloud', 'shop-card/black-icon/13.png', 7, 10, 'published', '2021-10-30 04:10:43', '2021-10-30 04:10:43'),
(101, 'Tiktok', 'shop-card/black-icon/14.png', 7, 5, 'published', '2021-10-30 04:11:02', '2021-10-30 04:11:02'),
(102, 'Skype', 'shop-card/black-icon/12.png', 7, 11, 'published', '2021-10-30 04:11:22', '2021-10-30 04:11:22'),
(104, 'Twitter', 'shop-card/black-icon/6.png', 7, 8, 'published', '2021-10-30 04:12:20', '2021-10-30 04:12:20'),
(105, 'Pinterest', 'shop-card/black-icon/2.png', 7, 6, 'published', '2021-10-30 04:12:47', '2021-10-30 04:12:47'),
(106, 'Youtube', 'shop-card/black-icon/7.png', 7, 4, 'published', '2021-10-30 04:13:07', '2021-10-30 04:13:07'),
(108, 'Snapchat', 'shop-card/black-icon/8.png', 7, 13, 'published', '2021-10-30 04:14:27', '2021-10-30 04:15:17'),
(109, 'Whatsapp', 'shop-card/black-icon/3.png', 7, 13, 'published', '2021-10-30 04:14:56', '2021-10-30 04:14:56'),
(110, 'Zalo', 'shop-card/black-icon/27.png', 7, 15, 'published', '2021-10-30 04:15:49', '2021-10-30 04:15:49'),
(111, 'Link', 'shop-card/black-icon/29.png', 7, 18, 'published', '2021-10-30 04:16:09', '2021-10-30 04:16:09'),
(112, 'SMS', 'shop-card/black-icon/28.png', 7, 20, 'published', '2021-10-30 04:16:32', '2021-10-30 04:16:32'),
(113, 'Messenger', 'shop-card/black-icon/10.png', 7, 35, 'published', '2021-10-30 04:27:20', '2021-10-30 04:27:20'),
(114, 'Instagram', 'shop-card/black-icon/5.png', 7, 2, 'published', '2021-10-30 04:28:18', '2021-10-30 04:28:18'),
(115, 'Linkedln', 'shop-card/black-icon/4.png', 7, 7, 'published', '2021-10-30 04:28:38', '2021-10-30 04:28:38'),
(116, 'Facebook', 'shop-card/black-icon/icon-den-2/10.png', 8, 1, 'published', '2021-11-10 07:25:08', '2021-11-10 07:25:08'),
(117, 'Instagram', 'shop-card/black-icon/icon-den-2/26.png', 8, 2, 'published', '2021-11-10 07:25:30', '2021-11-10 07:25:38'),
(118, 'SMS', 'shop-card/black-icon/icon-den-2/34.png', 8, 20, 'published', '2021-11-10 07:25:57', '2021-11-10 07:26:05'),
(119, 'Tiktok', 'shop-card/black-icon/icon-den-2/7.png', 8, 5, 'published', '2021-11-10 07:28:36', '2021-11-10 07:28:43'),
(120, 'Phone', 'shop-card/black-icon/icon-den-2/33.png', 8, 19, 'published', '2021-11-10 07:29:03', '2021-11-10 07:29:03'),
(121, 'Github', 'shop-card/black-icon/icon-den-2/23.png', 8, 3, 'published', '2021-11-10 07:29:32', '2021-11-10 07:29:49'),
(122, 'Youtube', 'shop-card/black-icon/icon-den-2/25.png', 8, 4, 'published', '2021-11-10 07:30:12', '2021-11-10 07:32:47'),
(123, 'Pinterest', 'shop-card/black-icon/icon-den-2/12.png', 8, 6, 'published', '2021-11-10 07:32:05', '2021-11-10 07:32:05'),
(124, 'Twitter', 'shop-card/black-icon/icon-den-2/21.png', 8, 8, 'published', '2021-11-10 07:32:28', '2021-11-10 07:33:03'),
(125, 'Snapchat', 'shop-card/black-icon/icon-den-2/16.png', 8, 9, 'published', '2021-11-10 07:33:55', '2021-11-10 07:33:55'),
(126, 'Soundcloud', 'shop-card/black-icon/icon-den-2/19.png', 8, 10, 'published', '2021-11-10 07:59:42', '2021-11-10 07:59:42'),
(127, 'Skype', 'shop-card/black-icon/icon-den-2/11.png', 8, 11, 'published', '2021-11-10 08:00:09', '2021-11-10 08:00:09'),
(128, 'Telegram', 'shop-card/black-icon/icon-den-2/9.png', 8, 12, 'published', '2021-11-10 08:00:53', '2021-11-10 08:00:53'),
(129, 'Momo', 'shop-card/black-icon/icon-den-2/30.png', 8, 14, 'published', '2021-11-10 08:01:25', '2021-11-10 08:01:25'),
(130, 'Zalo', 'shop-card/black-icon/icon-den-2/28.png', 8, 15, 'published', '2021-11-10 08:01:48', '2021-11-10 08:01:48'),
(131, 'Link', 'shop-card/black-icon/icon-den-2/31.png', 8, 18, 'published', '2021-11-10 08:02:21', '2021-11-10 08:02:21'),
(132, 'Email', 'shop-card/black-icon/icon-den-2/29.png', 8, 21, 'published', '2021-11-10 08:02:52', '2021-11-10 08:02:52'),
(133, 'Messenger', 'shop-card/black-icon/icon-den-2/1.png', 8, 35, 'published', '2021-11-10 08:03:20', '2021-11-10 08:03:20'),
(134, 'Tinder', 'shop-card/black-icon/icon-den-2/6.png', 8, 34, 'published', '2021-11-10 08:03:44', '2021-11-10 08:03:44'),
(135, 'Facebook', 'icon-mac-dinh-2/03.png', 9, 1, 'published', '2021-11-11 09:04:08', '2021-11-11 09:04:08'),
(136, 'Youtube', 'icon-mac-dinh-2/11.png', 9, 4, 'published', '2021-11-11 09:04:34', '2021-11-11 09:04:34'),
(137, 'Instagram', 'icon-mac-dinh-2/2.png', 9, 2, 'published', '2021-11-11 09:04:55', '2021-11-11 09:04:55'),
(138, 'Github', 'icon-mac-dinh-2/111.png', 9, 3, 'published', '2021-11-11 09:10:33', '2021-11-11 09:10:33'),
(139, 'Tiktok', 'icon-mac-dinh-2/10.png', 9, 5, 'published', '2021-11-11 09:10:56', '2021-11-11 09:10:56'),
(140, 'Pinterest', 'icon-mac-dinh-2/2112.png', 9, 6, 'published', '2021-11-11 09:16:02', '2021-11-11 09:16:02'),
(141, 'Linkedln', 'icon-mac-dinh-2/12.png', 9, 7, 'published', '2021-11-11 09:16:32', '2021-11-11 09:16:32'),
(142, 'Twitter', 'icon-mac-dinh-2/9.png', 9, 8, 'published', '2021-11-11 09:16:54', '2021-11-11 09:16:54'),
(143, 'Snapchat', 'icon-mac-dinh-2/6.png', 9, 9, 'published', '2021-11-11 09:17:23', '2021-11-11 09:17:23'),
(144, 'Soundcloud', 'icon-mac-dinh-2/21.png', 9, 10, 'published', '2021-11-11 09:17:47', '2021-11-11 09:17:47'),
(145, 'Skype', 'icon-mac-dinh-2/19.png', 9, 11, 'published', '2021-11-11 09:18:12', '2021-11-11 09:18:12'),
(146, 'Telegram', 'icon-mac-dinh-2/20.png', 9, 12, 'published', '2021-11-11 09:18:38', '2021-11-11 09:18:47'),
(147, 'Whatsapp', 'icon-mac-dinh-2/6.png', 9, 13, 'published', '2021-11-11 09:19:09', '2021-11-11 09:19:09'),
(148, 'Momo', 'icon-mac-dinh-2/1.png', 9, 14, 'published', '2021-11-11 09:19:31', '2021-11-11 09:19:31'),
(149, 'Zalo', 'icon-mac-dinh-2/zalo.png', 9, 15, 'published', '2021-11-11 09:19:52', '2021-11-11 09:19:52'),
(150, 'Link', 'icon-mac-dinh-2/24.png', 9, 18, 'published', '2021-11-11 09:20:17', '2021-11-11 09:20:17'),
(151, 'Phone', 'icon-mac-dinh-2/7.png', 9, 19, 'published', '2021-11-11 09:20:37', '2021-11-11 09:20:37'),
(152, 'SMS', 'icon-mac-dinh-2/8.png', 9, 20, 'published', '2021-11-11 09:21:02', '2021-11-11 09:21:02'),
(153, 'Email', 'icon-mac-dinh-2/23.png', 9, 21, 'published', '2021-11-11 09:21:32', '2021-11-11 09:21:32'),
(154, 'Tinder', 'icon-mac-dinh-2/13.png', 9, 34, 'published', '2021-11-11 09:21:55', '2021-11-11 09:21:55'),
(155, 'Messenger', 'icon-mac-dinh-2/icon.png', 9, 35, 'published', '2021-11-11 09:22:19', '2021-11-11 09:22:19'),
(156, 'Agribank', 'icon-mac-dinh-2/10-1.png', 9, 22, 'published', '2021-11-12 03:43:50', '2021-11-12 03:43:50'),
(157, 'BIDV', 'icon-mac-dinh-2/11-1.png', 9, 23, 'published', '2021-11-12 04:11:31', '2021-11-12 04:11:31'),
(158, 'MB Bank', 'icon-mac-dinh-2/8-1.png', 9, 24, 'published', '2021-11-12 04:12:04', '2021-11-12 04:12:04'),
(159, 'VP Bank', 'icon-mac-dinh-2/20-1.png', 9, 25, 'published', '2021-11-12 04:12:36', '2021-11-12 04:12:36'),
(160, 'TP Bank', 'icon-mac-dinh-2/16-1.png', 9, 26, 'published', '2021-11-12 04:13:01', '2021-11-12 04:13:01'),
(161, 'MSB Bank', 'icon-mac-dinh-2/15-1.png', 9, 27, 'published', '2021-11-12 04:13:29', '2021-11-12 04:13:29'),
(162, 'ACB Bank', 'icon-mac-dinh-2/14-1.png', 9, 28, 'published', '2021-11-12 04:13:52', '2021-11-12 04:14:01'),
(163, 'VIB Bank', 'icon-mac-dinh-2/7-1.png', 9, 29, 'published', '2021-11-12 04:14:26', '2021-11-12 04:14:26'),
(164, 'Techcombank', 'icon-mac-dinh-2/1-1.png', 9, 30, 'published', '2021-11-12 04:14:49', '2021-11-12 04:14:49'),
(165, 'Vietcombank', 'icon-mac-dinh-2/18-1.png', 9, 31, 'published', '2021-11-12 04:15:13', '2021-11-12 04:15:13'),
(166, 'Vietinbank', 'icon-mac-dinh-2/2-1.png', 9, 32, 'published', '2021-11-12 04:15:42', '2021-11-12 04:15:42'),
(167, 'Seabank', 'icon-mac-dinh-2/3.png', 9, 33, 'published', '2021-11-12 04:16:12', '2021-11-12 04:16:12'),
(168, 'Sacombank', 'icon-mac-dinh-2/5.png', 9, 37, 'published', '2021-11-12 04:23:01', '2021-11-12 04:23:01'),
(169, 'Eximbank', 'icon-mac-dinh-2/6-1.png', 9, 38, 'published', '2021-11-12 04:23:25', '2021-11-12 04:23:25'),
(170, 'Ocean Bank', 'icon-mac-dinh-2/19-1.png', 9, 39, 'published', '2021-11-12 04:23:40', '2021-11-12 04:23:40'),
(171, 'DongA Bank', 'icon-mac-dinh-2/12-1.png', 9, 40, 'published', '2021-11-12 04:23:57', '2021-11-12 04:23:57'),
(172, 'Lienviet PostBank', 'icon-mac-dinh-2/13-1.png', 9, 41, 'published', '2021-11-12 04:24:27', '2021-11-12 04:24:27'),
(173, 'PVcom Bank', 'icon-mac-dinh-2/9-1.png', 9, 42, 'published', '2021-11-12 04:24:51', '2021-11-12 04:24:51'),
(174, 'Tinder', 'icon-pink-2/1-1.png', 2, 34, 'published', '2021-11-14 18:17:17', '2021-11-14 18:17:17'),
(175, 'Messenger', 'icon-pink-2/2-1.png', 2, 35, 'published', '2021-11-14 18:17:51', '2021-11-14 18:17:51'),
(177, 'Agribank', 'icon-pink-2/36.png', 2, 22, 'published', '2022-01-01 05:19:08', '2022-01-01 05:19:08'),
(178, 'BIDV', 'icon-pink-2/37.png', 2, 23, 'published', '2022-01-01 05:19:57', '2022-01-01 05:19:57'),
(179, 'MB Bank', 'icon-pink-2/33.png', 2, 24, 'published', '2022-01-01 05:20:59', '2022-01-01 05:20:59'),
(180, 'VP Bank', 'icon-pink-2/45.png', 2, 25, 'published', '2022-01-01 05:21:25', '2022-01-01 05:21:25'),
(181, 'TP Bank', 'icon-pink-2/41.png', 2, 26, 'published', '2022-01-01 05:22:26', '2022-01-01 05:22:26'),
(182, 'MSB Bank', 'icon-pink-2/40.png', 2, 27, 'published', '2022-01-01 05:23:01', '2022-01-01 05:23:01'),
(183, 'ACB Bank', 'icon-pink-2/34.png', 2, 28, 'published', '2022-01-01 05:23:27', '2022-01-01 05:23:27'),
(184, 'VIB Bank', 'icon-pink-2/46.png', 2, 29, 'published', '2022-01-01 05:25:43', '2022-01-01 05:25:43'),
(185, 'Techcombank', 'icon-pink-2/30.png', 2, 30, 'published', '2022-01-01 05:26:18', '2022-01-01 05:26:18'),
(186, 'Vietcombank', 'icon-pink-2/43.png', 2, 31, 'published', '2022-01-01 05:26:43', '2022-01-01 05:26:43'),
(187, 'Vietinbank', 'icon-pink-2/27.png', 2, 32, 'published', '2022-01-01 05:27:08', '2022-01-01 05:27:19'),
(188, 'Seabank', 'icon-pink-2/28.png', 2, 33, 'published', '2022-01-01 05:27:52', '2022-01-01 05:27:52'),
(189, 'SHB Bank', 'icon-pink-2/29.png', 2, 36, 'published', '2022-01-01 05:28:17', '2022-01-01 05:28:17'),
(190, 'Sacombank', 'icon-pink-2/31.png', 2, 37, 'published', '2022-01-01 05:28:42', '2022-01-01 05:28:42'),
(191, 'Eximbank', 'icon-pink-2/32.png', 2, 38, 'published', '2022-01-01 05:29:07', '2022-01-01 05:29:07'),
(192, 'Ocean Bank', 'icon-pink-2/44.png', 2, 39, 'published', '2022-01-01 05:29:34', '2022-01-01 05:29:34'),
(193, 'DongA Bank', 'icon-pink-2/38.png', 2, 40, 'published', '2022-01-01 05:29:56', '2022-01-01 05:29:56'),
(194, 'Lienviet PostBank', 'icon-pink-2/39.png', 2, 41, 'published', '2022-01-01 05:30:22', '2022-01-01 05:30:22'),
(195, 'PVcom Bank', 'icon-pink-2/35.png', 2, 42, 'published', '2022-01-01 05:30:44', '2022-01-01 05:30:44');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `introductions`
--

CREATE TABLE `introductions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_title` tinyint(1) NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `languages`
--

CREATE TABLE `languages` (
  `lang_id` int(10) UNSIGNED NOT NULL,
  `lang_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_locale` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_code` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_flag` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `lang_order` int(11) NOT NULL DEFAULT 0,
  `lang_is_rtl` tinyint(3) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `languages`
--

INSERT INTO `languages` (`lang_id`, `lang_name`, `lang_locale`, `lang_code`, `lang_flag`, `lang_is_default`, `lang_order`, `lang_is_rtl`) VALUES
(1, 'English', 'en', 'en_US', 'us', 0, 0, 0),
(2, 'Tiếng Việt', 'vi', 'vi', 'vn', 1, 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `language_meta`
--

CREATE TABLE `language_meta` (
  `lang_meta_id` int(10) UNSIGNED NOT NULL,
  `lang_meta_code` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_meta_origin` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` int(10) UNSIGNED NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `language_meta`
--

INSERT INTO `language_meta` (`lang_meta_id`, `lang_meta_code`, `lang_meta_origin`, `reference_id`, `reference_type`) VALUES
(1, 'en_US', '475679456090f5071eb895cff25e970a', 1, 'Botble\\Menu\\Models\\Menu'),
(2, 'en_US', 'bd1fb8e332fb5a8914acc4c7ec5aa2da', 1, 'Botble\\Menu\\Models\\MenuLocation'),
(3, 'en_US', '0370cc6b66f46ce2892002b92f5e1232', 1, 'Botble\\Product\\Models\\Product'),
(4, 'en_US', 'e5263d0e4c9c449351963a8911786eba', 2, 'Botble\\Product\\Models\\Product'),
(5, 'en_US', '22477750da1860357856262d732cb573', 3, 'Botble\\Product\\Models\\Product'),
(6, 'en_US', 'd079cdffb9aa7ca7264d8842f58bb1cc', 1, 'Botble\\Portfolio\\Models\\Portfolio'),
(7, 'en_US', 'e69ec86c776f4723df1a28dea994fc4d', 2, 'Botble\\Portfolio\\Models\\Portfolio'),
(8, 'en_US', '08a44b231f55baf6846455bc9211d900', 3, 'Botble\\Portfolio\\Models\\Portfolio'),
(9, 'en_US', '15573a870bca680bb1e89f763e878303', 4, 'Botble\\Portfolio\\Models\\Portfolio'),
(10, 'en_US', '7d36707a2a018d5a9ad947781cb6ee1c', 5, 'Botble\\Portfolio\\Models\\Portfolio'),
(11, 'en_US', '0f76995d8f9950fd274edfef8b66a449', 6, 'Botble\\Portfolio\\Models\\Portfolio'),
(12, 'en_US', '7916a5e89c8cbd45183308fd28a08071', 7, 'Botble\\Portfolio\\Models\\Portfolio'),
(13, 'en_US', '212fc7f18d54834aa79711c1268763ad', 8, 'Botble\\Portfolio\\Models\\Portfolio'),
(14, 'en_US', '246ba4bec4f707a0c478bf04b0f646a3', 2, 'Botble\\Account\\Models\\Account'),
(23, 'vi', '338b5a5039dfd2b44048d76779c02912', 1, 'Botble\\Section\\Models\\Section'),
(24, 'vi', '8cbed5d6557d7a29d92767313c35b89a', 2, 'Botble\\Section\\Models\\Section'),
(30, 'vi', '4e0cc0eced73c4ce9d48d172c9ef09ed', 3, 'Botble\\Section\\Models\\Section'),
(31, 'vi', '3f30744d4ccdb18eeb4803549c7187bd', 4, 'Botble\\Section\\Models\\Section'),
(35, 'vi', '819c48185042fa0e8ec73fb73d5521c0', 8, 'Botble\\Section\\Models\\Section'),
(36, 'vi', '2437f28b4efeefcea72364a5b8dc3d89', 1, 'Botble\\ProductCard\\Models\\ProductCard'),
(37, 'vi', '7f78fd910b2b58ae1a32ded418a5952e', 2, 'Botble\\ProductCard\\Models\\ProductCard'),
(38, 'vi', 'a5670e3ebfc193fc2ed8c119b9a5467b', 3, 'Botble\\ProductCard\\Models\\ProductCard'),
(39, 'vi', '6b7d24a89b0f1032f4b91ab059aa3683', 4, 'Botble\\ProductCard\\Models\\ProductCard'),
(40, 'vi', '70b024e79d3d6b11b2ed2487427aabf0', 5, 'Botble\\ProductCard\\Models\\ProductCard'),
(41, 'vi', 'a1220785b64dd03917c8445e20a957a2', 1, 'Botble\\Question\\Models\\Question'),
(42, 'vi', '99044319e38d139340005faca15bbf82', 2, 'Botble\\Question\\Models\\Question'),
(43, 'vi', 'a4efbf27e1943345ebc6d8a8fab64bdd', 3, 'Botble\\Question\\Models\\Question'),
(44, 'vi', '0c9367de8a3194a8453b5a0070e58131', 4, 'Botble\\Question\\Models\\Question'),
(46, 'vi', '562417dfd300c588e5c37641afb82def', 6, 'Botble\\ProductCard\\Models\\ProductCard'),
(47, 'vi', '73bf6b2c174a05cf7fd9a367d1e0e772', 7, 'Botble\\ProductCard\\Models\\ProductCard'),
(48, 'vi', 'bd949f2be13d845be680db5172fa7f27', 8, 'Botble\\ProductCard\\Models\\ProductCard'),
(50, 'vi', '05a4880e0fc9b869f4a3a0a0ab8396aa', 10, 'Botble\\ProductCard\\Models\\ProductCard'),
(51, 'vi', 'bc8d2802315ee9f7ac2ab3fd555e94cc', 11, 'Botble\\ProductCard\\Models\\ProductCard'),
(52, 'vi', '41ea6e0597815151f02c2c3d5853eb00', 12, 'Botble\\ProductCard\\Models\\ProductCard'),
(53, 'vi', '02654960485a1837387bd5c497ebcca4', 13, 'Botble\\ProductCard\\Models\\ProductCard'),
(54, 'vi', '2dda4e3a27f31efda6417f8eb4c51757', 14, 'Botble\\ProductCard\\Models\\ProductCard'),
(55, 'vi', '0ba999f22b229fd124eff5e2cf336ca5', 15, 'Botble\\ProductCard\\Models\\ProductCard'),
(56, 'vi', '3033c0f78a3d092d6274edca346a5dfe', 16, 'Botble\\ProductCard\\Models\\ProductCard'),
(57, 'vi', 'f65260978c26718c55ce9c44947b6259', 17, 'Botble\\ProductCard\\Models\\ProductCard'),
(58, 'vi', '62657f6558befc51c5e3751f02a39bc6', 18, 'Botble\\ProductCard\\Models\\ProductCard'),
(59, 'vi', '6388d6c165594a3c024b2854de328e7f', 5, 'Botble\\Question\\Models\\Question'),
(60, 'vi', 'c6232185b5cfd0c4e5bf93102ddcc323', 19, 'Botble\\ProductCard\\Models\\ProductCard');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `media_files`
--

CREATE TABLE `media_files` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `folder_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `mime_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int(11) NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `media_files`
--

INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`) VALUES
(30, 1, 'vietinbank', 2, 'image/png', 3657, 'social-icon/vietinbank.png', '[]', '2021-09-06 21:16:52', '2021-11-15 18:28:34', '2021-11-15 18:28:34'),
(31, 1, 'vietcombank', 2, 'image/png', 6389, 'social-icon/vietcombank.png', '[]', '2021-09-06 21:16:52', '2021-11-15 18:28:34', '2021-11-15 18:28:34'),
(32, 1, 'techcombank', 2, 'image/png', 2936, 'social-icon/techcombank.png', '[]', '2021-09-06 21:16:52', '2021-11-15 18:28:34', '2021-11-15 18:28:34'),
(33, 1, 'vibbank', 2, 'image/png', 4460, 'social-icon/vibbank.png', '[]', '2021-09-06 21:16:53', '2021-11-15 18:28:34', '2021-11-15 18:28:34'),
(34, 1, 'acbbank', 2, 'image/png', 4218, 'social-icon/acbbank.png', '[]', '2021-09-06 21:16:53', '2021-11-15 18:28:34', '2021-11-15 18:28:34'),
(35, 1, 'msbbank', 2, 'image/png', 6912, 'social-icon/msbbank.png', '[]', '2021-09-06 21:16:53', '2021-11-15 18:28:34', '2021-11-15 18:28:34'),
(36, 1, 'tpbank', 2, 'image/png', 5714, 'social-icon/tpbank.png', '[]', '2021-09-06 21:16:54', '2021-11-15 18:28:34', '2021-11-15 18:28:34'),
(37, 1, 'vpbank', 2, 'image/png', 3557, 'social-icon/vpbank.png', '[]', '2021-09-06 21:16:54', '2021-11-15 18:28:34', '2021-11-15 18:28:34'),
(38, 1, 'mbbank', 2, 'image/png', 4706, 'social-icon/mbbank.png', '[]', '2021-09-06 21:16:54', '2021-11-15 18:28:34', '2021-11-15 18:28:34'),
(39, 1, 'bidv', 2, 'image/png', 3364, 'social-icon/bidv.png', '[]', '2021-09-06 21:16:55', '2021-11-15 18:28:34', '2021-11-15 18:28:34'),
(40, 1, 'agribank', 2, 'image/png', 4905, 'social-icon/agribank.png', '[]', '2021-09-06 21:16:55', '2021-11-15 18:28:34', '2021-11-15 18:28:34'),
(41, 1, 'url', 2, 'image/png', 3812, 'social-icon/url.png', '[]', '2021-09-06 21:16:55', '2021-11-15 18:28:34', '2021-11-15 18:28:34'),
(42, 1, 'momo', 2, 'image/png', 4103, 'social-icon/momo.png', '[]', '2021-09-06 21:16:56', '2021-11-15 18:28:34', '2021-11-15 18:28:34'),
(43, 1, 'skype', 2, 'image/png', 4318, 'social-icon/skype.png', '[]', '2021-09-06 21:16:56', '2021-11-15 18:28:34', '2021-11-15 18:28:34'),
(44, 1, 'whatsapp', 2, 'image/png', 4452, 'social-icon/whatsapp.png', '[]', '2021-09-06 21:16:56', '2021-11-15 18:28:34', '2021-11-15 18:28:34'),
(45, 1, 'telegram', 2, 'image/png', 3364, 'social-icon/telegram.png', '[]', '2021-09-06 21:16:56', '2021-11-15 18:28:34', '2021-11-15 18:28:34'),
(46, 1, 'soundcloud', 2, 'image/png', 3644, 'social-icon/soundcloud.png', '[]', '2021-09-06 21:16:57', '2021-11-15 18:28:34', '2021-11-15 18:28:34'),
(47, 1, 'email', 2, 'image/png', 2781, 'social-icon/email.png', '[]', '2021-09-06 21:16:57', '2021-11-15 18:28:34', '2021-11-15 18:28:34'),
(48, 1, 'sms', 2, 'image/png', 3404, 'social-icon/sms.png', '[]', '2021-09-06 21:16:57', '2021-11-15 18:28:34', '2021-11-15 18:28:34'),
(49, 1, 'phone', 2, 'image/png', 3970, 'social-icon/phone.png', '[]', '2021-09-06 21:16:58', '2021-11-15 18:28:34', '2021-11-15 18:28:34'),
(50, 1, 'zalo', 2, 'image/png', 3840, 'social-icon/zalo.png', '[]', '2021-09-06 21:16:58', '2021-11-15 18:28:34', '2021-11-15 18:28:34'),
(51, 1, 'snapchat', 2, 'image/png', 4393, 'social-icon/snapchat.png', '[]', '2021-09-06 21:16:58', '2021-11-15 18:28:34', '2021-11-15 18:28:34'),
(52, 1, 'twitter', 2, 'image/png', 3643, 'social-icon/twitter.png', '[]', '2021-09-06 21:16:59', '2021-11-15 18:28:34', '2021-11-15 18:28:34'),
(53, 1, 'linkedin', 2, 'image/png', 2742, 'social-icon/linkedin.png', '[]', '2021-09-06 21:16:59', '2021-11-15 18:28:34', '2021-11-15 18:28:34'),
(54, 1, 'pinterest', 2, 'image/png', 3895, 'social-icon/pinterest.png', '[]', '2021-09-06 21:16:59', '2021-11-15 18:28:34', '2021-11-15 18:28:34'),
(55, 1, 'tiktok', 2, 'image/png', 5104, 'social-icon/tiktok.png', '[]', '2021-09-06 21:17:00', '2021-11-15 18:28:34', '2021-11-15 18:28:34'),
(56, 1, 'youtube', 2, 'image/png', 2930, 'social-icon/youtube.png', '[]', '2021-09-06 21:17:00', '2021-11-15 18:28:34', '2021-11-15 18:28:34'),
(57, 1, 'instagram', 2, 'image/png', 5854, 'social-icon/instagram.png', '[]', '2021-09-06 21:17:00', '2021-11-15 18:28:34', '2021-11-15 18:28:34'),
(58, 1, 'facebook', 2, 'image/png', 2449, 'social-icon/facebook.png', '[]', '2021-09-06 21:17:01', '2021-11-15 18:28:34', '2021-11-15 18:28:34'),
(59, 1, 'default-avatar', 3, 'image/png', 22917, 'avatars/default-avatar.png', '[]', '2021-09-07 01:06:53', '2021-09-07 01:06:53', NULL),
(60, 1, 'github', 2, 'image/png', 8478, 'social-icon/github.png', '[]', '2021-09-07 04:14:35', '2021-11-15 18:28:34', '2021-11-15 18:28:34'),
(61, 1, 'seabank', 2, 'image/png', 15745, 'social-icon/seabank.png', '[]', '2021-09-07 05:12:43', '2021-11-15 18:28:34', '2021-11-15 18:28:34'),
(62, 1, 'GOLogo', 4, 'image/png', 15012, 'logo/gologo.png', '[]', '2021-09-07 05:19:31', '2021-11-15 18:28:03', '2021-11-15 18:28:03'),
(63, 1, 'product1', 5, 'image/png', 675448, 'products/product1.png', '[]', '2021-09-07 05:38:57', '2021-11-15 21:03:31', '2021-11-15 21:03:31'),
(64, 1, 'product2', 5, 'image/png', 735765, 'products/product2.png', '[]', '2021-09-07 05:49:49', '2021-11-15 21:03:31', '2021-11-15 21:03:31'),
(65, 1, 'product3', 5, 'image/png', 713636, 'products/product3.png', '[]', '2021-09-07 05:54:12', '2021-11-15 21:03:31', '2021-11-15 21:03:31'),
(66, 1, '7', 6, 'image/jpeg', 11117, 'portfolios/7.jpeg', '[]', '2021-09-07 06:09:05', '2021-11-15 18:27:51', '2021-11-15 18:27:51'),
(67, 1, '6', 6, 'image/jpeg', 10869, 'portfolios/6.jpeg', '[]', '2021-09-07 06:09:06', '2021-11-15 18:27:51', '2021-11-15 18:27:51'),
(68, 1, '5', 6, 'image/jpeg', 35914, 'portfolios/5.jpeg', '[]', '2021-09-07 06:09:06', '2021-11-15 18:27:51', '2021-11-15 18:27:51'),
(69, 1, '4', 6, 'image/jpeg', 30424, 'portfolios/4.jpeg', '[]', '2021-09-07 06:09:06', '2021-11-15 18:27:51', '2021-11-15 18:27:51'),
(70, 1, '3', 6, 'image/jpeg', 17464, 'portfolios/3.jpeg', '[]', '2021-09-07 06:09:06', '2021-11-15 18:27:51', '2021-11-15 18:27:51'),
(71, 1, '2', 6, 'image/jpeg', 5290, 'portfolios/2.jpeg', '[]', '2021-09-07 06:09:07', '2021-11-15 18:27:51', '2021-11-15 18:27:51'),
(72, 1, '1', 6, 'image/jpeg', 52392, 'portfolios/1.jpeg', '[]', '2021-09-07 06:09:07', '2021-11-15 18:27:51', '2021-11-15 18:27:51'),
(73, 1, '8', 6, 'image/jpeg', 147098, 'portfolios/8.jpeg', '[]', '2021-09-07 06:09:07', '2021-11-15 18:27:51', '2021-11-15 18:27:51'),
(74, 1, 'theme-default', 7, 'image/png', 388471, 'themes/theme-default.png', '[]', '2021-09-28 15:14:36', '2021-12-04 19:47:05', '2021-12-04 19:47:05'),
(106, 1, 'default-cover', 9, 'image/jpeg', 13185, 'covers/default-cover.jpeg', '[]', '2021-10-10 15:27:07', '2021-10-10 15:27:07', NULL),
(107, 1, 'biomart.test_single-product.html', 9, 'image/png', 1424398, 'covers/biomarttest-single-producthtml.png', '[]', '2021-10-10 15:35:06', '2021-11-14 17:49:09', '2021-11-14 17:49:09'),
(240, 0, 'CCF6A539-A062-4980-A542-7D44E3B6AF7E', 9, 'image/jpeg', 242695, 'covers/ccf6a539-a062-4980-a542-7d44e3b6af7e.jpeg', '[]', '2021-10-10 16:04:18', '2021-11-14 17:49:09', '2021-11-14 17:49:09'),
(241, 0, 'avatar 1633881879929', 3, 'image/png', 92541, 'avatars/avatar-1633881879929.png', '[]', '2021-10-10 16:04:40', '2021-10-10 16:04:40', NULL),
(242, 0, 'avatar 1633882021749', 3, 'image/png', 94429, 'avatars/avatar-1633882021749.png', '[]', '2021-10-10 16:07:02', '2021-10-10 16:07:02', NULL),
(243, 0, 'acbbank', 48, 'image/png', 4218, 'social-icons/1/acbbank.png', '[]', '2021-10-10 16:07:48', '2021-10-10 16:07:48', NULL),
(244, 0, 'agribank', 48, 'image/png', 4905, 'social-icons/1/agribank.png', '[]', '2021-10-10 16:07:48', '2021-10-10 16:07:48', NULL),
(245, 0, 'bidv', 48, 'image/png', 3364, 'social-icons/1/bidv.png', '[]', '2021-10-10 16:07:48', '2021-10-10 16:07:48', NULL),
(246, 0, 'email', 48, 'image/png', 2781, 'social-icons/1/email.png', '[]', '2021-10-10 16:07:49', '2021-10-10 16:07:49', NULL),
(247, 0, 'facebook', 48, 'image/png', 2449, 'social-icons/1/facebook.png', '[]', '2021-10-10 16:07:49', '2021-10-10 16:07:49', NULL),
(248, 0, 'gapo', 48, 'image/png', 26808, 'social-icons/1/gapo.png', '[]', '2021-10-10 16:07:49', '2021-10-10 16:07:49', NULL),
(249, 0, 'github', 48, 'image/png', 8478, 'social-icons/1/github.png', '[]', '2021-10-10 16:07:49', '2021-10-10 16:07:49', NULL),
(250, 0, 'instagram', 48, 'image/png', 5854, 'social-icons/1/instagram.png', '[]', '2021-10-10 16:07:49', '2021-10-10 16:07:49', NULL),
(251, 0, 'link', 48, 'image/png', 3812, 'social-icons/1/link.png', '[]', '2021-10-10 16:07:49', '2021-10-10 16:07:49', NULL),
(252, 0, 'linkedin', 48, 'image/png', 2742, 'social-icons/1/linkedin.png', '[]', '2021-10-10 16:07:49', '2021-10-10 16:07:49', NULL),
(253, 0, 'lotus', 48, 'image/png', 1360, 'social-icons/1/lotus.png', '[]', '2021-10-10 16:07:49', '2021-10-10 16:07:49', NULL),
(254, 0, 'mbbank', 48, 'image/png', 4706, 'social-icons/1/mbbank.png', '[]', '2021-10-10 16:07:49', '2021-10-10 16:07:49', NULL),
(255, 0, 'momo', 48, 'image/png', 4103, 'social-icons/1/momo.png', '[]', '2021-10-10 16:07:49', '2021-10-10 16:07:49', NULL),
(256, 0, 'msbbank', 48, 'image/png', 6912, 'social-icons/1/msbbank.png', '[]', '2021-10-10 16:07:49', '2021-10-10 16:07:49', NULL),
(257, 0, 'phone', 48, 'image/png', 3970, 'social-icons/1/phone.png', '[]', '2021-10-10 16:07:49', '2021-10-10 16:07:49', NULL),
(258, 0, 'pinterest', 48, 'image/png', 3895, 'social-icons/1/pinterest.png', '[]', '2021-10-10 16:07:49', '2021-10-10 16:07:49', NULL),
(259, 0, 'seabank', 48, 'image/png', 15745, 'social-icons/1/seabank.png', '[]', '2021-10-10 16:07:49', '2021-10-10 16:07:49', NULL),
(260, 0, 'skype', 48, 'image/png', 4318, 'social-icons/1/skype.png', '[]', '2021-10-10 16:07:49', '2021-10-10 16:07:49', NULL),
(261, 0, 'sms', 48, 'image/png', 3404, 'social-icons/1/sms.png', '[]', '2021-10-10 16:07:49', '2021-10-10 16:07:49', NULL),
(262, 0, 'snapchat', 48, 'image/png', 4393, 'social-icons/1/snapchat.png', '[]', '2021-10-10 16:07:49', '2021-10-10 16:07:49', NULL),
(263, 0, 'soundcloud', 48, 'image/png', 3644, 'social-icons/1/soundcloud.png', '[]', '2021-10-10 16:07:49', '2021-10-10 16:07:49', NULL),
(264, 0, 'techcombank', 48, 'image/png', 2936, 'social-icons/1/techcombank.png', '[]', '2021-10-10 16:07:49', '2021-10-10 16:07:49', NULL),
(265, 0, 'telegram', 48, 'image/png', 3364, 'social-icons/1/telegram.png', '[]', '2021-10-10 16:07:49', '2021-10-10 16:07:49', NULL),
(266, 0, 'tiktok', 48, 'image/png', 5104, 'social-icons/1/tiktok.png', '[]', '2021-10-10 16:07:49', '2021-10-10 16:07:49', NULL),
(267, 0, 'tpbank', 48, 'image/png', 5714, 'social-icons/1/tpbank.png', '[]', '2021-10-10 16:07:50', '2021-10-10 16:07:50', NULL),
(268, 0, 'twitter', 48, 'image/png', 3643, 'social-icons/1/twitter.png', '[]', '2021-10-10 16:07:50', '2021-10-10 16:07:50', NULL),
(269, 0, 'url', 48, 'image/png', 3812, 'social-icons/1/url.png', '[]', '2021-10-10 16:07:50', '2021-10-10 16:07:50', NULL),
(270, 0, 'vibbank', 48, 'image/png', 4460, 'social-icons/1/vibbank.png', '[]', '2021-10-10 16:07:50', '2021-10-10 16:07:50', NULL),
(271, 0, 'vietcombank', 48, 'image/png', 6389, 'social-icons/1/vietcombank.png', '[]', '2021-10-10 16:07:50', '2021-10-10 16:07:50', NULL),
(272, 0, 'vietinbank', 48, 'image/png', 3657, 'social-icons/1/vietinbank.png', '[]', '2021-10-10 16:07:50', '2021-10-10 16:07:50', NULL),
(273, 0, 'vpbank', 48, 'image/png', 3557, 'social-icons/1/vpbank.png', '[]', '2021-10-10 16:07:50', '2021-10-10 16:07:50', NULL),
(274, 0, 'whatsapp', 48, 'image/png', 4452, 'social-icons/1/whatsapp.png', '[]', '2021-10-10 16:07:50', '2021-10-10 16:07:50', NULL),
(275, 0, 'youtube', 48, 'image/png', 2930, 'social-icons/1/youtube.png', '[]', '2021-10-10 16:07:50', '2021-10-10 16:07:50', NULL),
(276, 0, 'zalo', 48, 'image/png', 3840, 'social-icons/1/zalo.png', '[]', '2021-10-10 16:07:50', '2021-10-10 16:07:50', NULL),
(277, 0, 'avatar 1633882360878', 3, 'image/png', 111291, 'avatars/avatar-1633882360878.png', '[]', '2021-10-10 16:12:41', '2021-10-10 16:12:41', NULL),
(278, 0, 'avatar 1633883991908', 3, 'image/png', 73397, 'avatars/avatar-1633883991908.png', '[]', '2021-10-10 16:39:52', '2021-10-10 16:39:52', NULL),
(279, 0, '276B59C1-8709-4B33-971A-3C8101F6BEDA', 9, 'image/jpeg', 242695, 'covers/276b59c1-8709-4b33-971a-3c8101f6beda.jpeg', '[]', '2021-10-10 16:39:59', '2021-10-10 16:39:59', NULL),
(280, 1, 'BAN EDITION', 0, 'image/jpeg', 58061, 'ban-edition.jpg', '[]', '2021-10-10 17:59:39', '2021-10-11 02:32:59', '2021-10-11 02:32:59'),
(281, 1, 'LOGO GOTAP', 0, 'image/jpeg', 23720, 'logo-gotap.jpg', '[]', '2021-10-11 02:32:48', '2022-02-28 00:14:08', '2022-02-28 00:14:08'),
(282, 1, 'LOGO GOTAP-1', 0, 'image/jpeg', 32016, 'logo-gotap-1.jpg', '[]', '2021-10-11 02:40:17', '2022-02-28 00:14:15', '2022-02-28 00:14:15'),
(283, 1, '244369190_1075132913226553_1379126362996471416_n', 0, 'image/jpeg', 146451, '244369190-1075132913226553-1379126362996471416-n.jpg', '[]', '2021-10-11 02:42:43', '2021-12-04 19:45:05', '2021-12-04 19:45:05'),
(284, 1, 'BÌA PHONG BÌ TO', 0, 'image/jpeg', 87767, 'bia-phong-bi-to.jpg', '[]', '2021-10-11 03:07:06', '2021-10-11 03:07:06', NULL),
(285, 1, 'MD1,5', 0, 'image/jpeg', 431911, 'md15.jpg', '[]', '2021-10-11 03:29:38', '2021-10-11 03:29:38', NULL),
(286, 1, 'MD2', 0, 'image/jpeg', 485401, 'md2.jpg', '[]', '2021-10-11 03:29:53', '2021-11-14 17:40:26', '2021-11-14 17:40:26'),
(287, 1, '11', 0, 'image/jpeg', 114197, '11.jpg', '[]', '2021-10-11 04:08:57', '2021-10-11 04:11:28', '2021-10-11 04:11:28'),
(288, 1, '22', 0, 'image/jpeg', 109057, '22.jpg', '[]', '2021-10-11 04:09:00', '2021-10-11 04:11:28', '2021-10-11 04:11:28'),
(289, 1, 'BÌA PHONG BÌ TO-1', 0, 'image/jpeg', 87767, 'bia-phong-bi-to-1.jpg', '[]', '2021-10-11 04:09:00', '2021-10-11 04:11:28', '2021-10-11 04:11:28'),
(290, 1, 'TRANG 1', 0, 'image/jpeg', 415132, 'trang-1.jpg', '[]', '2021-10-11 05:59:55', '2021-10-11 05:59:55', NULL),
(291, 1, 'TRANG 2', 0, 'image/jpeg', 478537, 'trang-2.jpg', '[]', '2021-10-11 05:59:55', '2021-11-14 17:41:19', '2021-11-14 17:41:19'),
(292, 1, 'h1', 0, 'image/jpeg', 420705, 'h1.jpg', '[]', '2021-10-11 06:11:01', '2021-10-11 06:11:01', NULL),
(293, 1, 'GỖ 1', 0, 'image/jpeg', 159490, 'go-1.jpg', '[]', '2021-10-11 06:33:08', '2022-03-01 00:39:11', '2022-03-01 00:39:11'),
(294, 1, 'GỖ 2', 0, 'image/jpeg', 216783, 'go-2.jpg', '[]', '2021-10-11 06:33:08', '2021-11-14 17:41:14', '2021-11-14 17:41:14'),
(295, 1, 'VIP 1', 0, 'image/jpeg', 652750, 'vip-1.jpg', '[]', '2021-10-11 06:48:17', '2021-10-11 06:48:17', NULL),
(296, 1, 'vip 2', 0, 'image/jpeg', 698205, 'vip-2.jpg', '[]', '2021-10-11 06:48:18', '2021-11-14 17:41:04', '2021-11-14 17:41:04'),
(297, 1, 'camo 2', 0, 'image/jpeg', 153339, 'camo-2.jpg', '[]', '2021-10-11 07:59:21', '2021-10-11 07:59:21', NULL),
(298, 1, 'Inkedset-up-the-ca-nhan-thong-minh-tappi', 0, 'video/mp4', 3952890, 'inkedset-up-the-ca-nhan-thong-minh-tappi.mp4', '[]', '2021-10-11 08:01:14', '2021-10-11 08:02:31', '2021-10-11 08:02:31'),
(299, 1, '33a06797817950db4bdb25603799b4dd', 0, 'image/png', 525568, '33a06797817950db4bdb25603799b4dd.png', '[]', '2021-10-11 10:37:05', '2021-10-11 10:37:18', '2021-10-11 10:37:18'),
(300, 1, 'pngtree_5520730', 49, 'application/x-gzip', 803692, 'icon-pink/pngtree-5520730.zip', '[]', '2021-10-11 10:38:34', '2021-10-16 03:11:33', '2021-10-16 03:11:33'),
(301, 1, 'af9ee2fec9340c9a9923d4887bc3dc2e', 49, 'image/jpeg', 47189, 'icon-pink/af9ee2fec9340c9a9923d4887bc3dc2e.jpg', '[]', '2021-10-11 10:40:13', '2021-10-16 03:11:33', '2021-10-16 03:11:33'),
(302, 1, '11-1', 0, 'image/jpeg', 114197, '11-1.jpg', '[]', '2021-10-12 03:45:50', '2021-10-12 03:45:50', NULL),
(303, 1, 'set-up-the-ca-nhan-thong-minh-tappi', 0, 'video/mp4', 3202038, 'set-up-the-ca-nhan-thong-minh-tappi.mp4', '[]', '2021-10-12 04:06:40', '2021-10-12 04:06:40', NULL),
(304, 1, '1610459637107838854', 0, 'video/mp4', 6023406, '1610459637107838854.mp4', '[]', '2021-10-12 04:25:04', '2021-10-12 04:25:04', NULL),
(305, 1, 'LOGO', 0, 'image/jpeg', 39796, 'logo.jpg', '[]', '2021-10-12 09:54:43', '2021-10-12 09:54:43', NULL),
(306, 1, 'Untitled-1', 0, 'image/jpeg', 300180, 'untitled-1.jpg', '[]', '2021-10-12 13:01:15', '2021-10-25 15:33:57', '2021-10-25 15:33:57'),
(307, 1, 'fun-ban-full-hinh-nen-2400x1350_50', 0, 'image/jpeg', 252718, 'fun-ban-full-hinh-nen-2400x1350-50.jpg', '[]', '2021-10-12 14:45:10', '2021-10-25 15:34:05', '2021-10-25 15:34:05'),
(308, 1, 'Untitled-2', 0, 'image/jpeg', 158192, 'untitled-2.jpg', '[]', '2021-10-12 14:52:46', '2021-11-12 02:26:47', '2021-11-12 02:26:47'),
(309, 1, 'Untitled-2-1', 0, 'image/jpeg', 76366, 'untitled-2-1.jpg', '[]', '2021-10-12 14:54:46', '2021-11-12 02:26:47', '2021-11-12 02:26:47'),
(310, 1, 'aaa', 0, 'image/jpeg', 76944, 'aaa.jpg', '[]', '2021-10-12 15:07:12', '2021-11-12 02:26:47', '2021-11-12 02:26:47'),
(311, 1, 'Untitled-1-1', 0, 'image/jpeg', 84903, 'untitled-1-1.jpg', '[]', '2021-10-13 04:07:36', '2021-11-12 02:26:47', '2021-11-12 02:26:47'),
(312, 1, 'Untitled-1-2', 0, 'image/jpeg', 85916, 'untitled-1-2.jpg', '[]', '2021-10-13 04:11:08', '2021-11-12 02:26:47', '2021-11-12 02:26:47'),
(313, 1, 'Untitled-1-3', 0, 'image/jpeg', 85916, 'untitled-1-3.jpg', '[]', '2021-10-13 04:16:23', '2021-11-12 02:26:47', '2021-11-12 02:26:47'),
(314, 1, 'MD1,5-1', 0, 'image/jpeg', 431911, 'md15-1.jpg', '[]', '2021-10-13 07:51:26', '2021-10-13 07:51:26', NULL),
(315, 1, 'MD2-1', 0, 'image/jpeg', 485401, 'md2-1.jpg', '[]', '2021-10-13 07:51:27', '2021-11-14 17:40:33', '2021-11-14 17:40:33'),
(316, 1, 'TRANG 1-1', 0, 'image/jpeg', 415132, 'trang-1-1.jpg', '[]', '2021-10-13 07:54:40', '2021-10-13 07:54:40', NULL),
(317, 1, 'TRANG 2-1', 0, 'image/jpeg', 478537, 'trang-2-1.jpg', '[]', '2021-10-13 07:54:56', '2021-11-14 17:40:39', '2021-11-14 17:40:39'),
(318, 1, 'H2', 0, 'image/jpeg', 427073, 'h2.jpg', '[]', '2021-10-13 07:57:23', '2021-11-14 17:40:49', '2021-11-14 17:40:49'),
(319, 1, 'MG1', 0, 'image/jpeg', 657645, 'mg1.jpg', '[]', '2021-10-13 07:59:16', '2021-10-13 07:59:16', NULL),
(320, 1, 'MG2', 0, 'image/jpeg', 701186, 'mg2.jpg', '[]', '2021-10-13 07:59:24', '2021-11-14 17:40:44', '2021-11-14 17:40:44'),
(321, 1, 'MC PINK 1', 0, 'image/jpeg', 435095, 'mc-pink-1.jpg', '[]', '2021-10-13 09:30:44', '2021-10-13 09:30:44', NULL),
(322, 1, 'MCUP PINK 2', 0, 'image/jpeg', 496825, 'mcup-pink-2.jpg', '[]', '2021-10-13 09:30:59', '2021-11-14 17:40:54', '2021-11-14 17:40:54'),
(323, 1, 'MC GO 1', 0, 'image/jpeg', 664185, 'mc-go-1.jpg', '[]', '2021-10-13 09:33:41', '2021-10-13 09:33:41', NULL),
(324, 1, 'MC TRANG 1', 0, 'image/jpeg', 422620, 'mc-trang-1.jpg', '[]', '2021-10-13 09:36:30', '2021-10-13 09:36:30', NULL),
(325, 1, '202332658_362431925237015_3871847530696850254_n', 0, 'image/jpeg', 668971, '202332658-362431925237015-3871847530696850254-n.jpg', '[]', '2021-10-13 10:30:37', '2021-11-12 18:25:31', '2021-11-12 18:25:31'),
(326, 1, '202332658_362431925237015_3871847ds530696850254_n', 0, 'image/jpeg', 485012, '202332658-362431925237015-3871847ds530696850254-n.jpg', '[]', '2021-10-13 10:42:57', '2021-11-12 18:25:31', '2021-11-12 18:25:31'),
(327, 1, 'Untitled-2-2', 0, 'image/jpeg', 729425, 'untitled-2-2.jpg', '[]', '2021-10-13 10:58:01', '2021-10-26 09:11:50', '2021-10-26 09:11:50'),
(328, 1, 'video-background', 50, 'video/mp4', 806204, 'videos/video-background.mp4', '[]', '2021-10-14 04:54:49', '2021-10-14 04:54:49', NULL),
(329, 1, 'camo', 0, 'image/jpeg', 141532, 'camo.jpg', '[]', '2021-10-15 02:53:48', '2021-10-16 14:15:01', '2021-10-16 14:15:01'),
(330, 1, '11-2', 0, 'image/jpeg', 114197, '11-2.jpg', '[]', '2021-10-15 02:57:10', '2021-10-16 14:15:01', '2021-10-16 14:15:01'),
(331, 1, '22-1', 0, 'image/jpeg', 109057, '22-1.jpg', '[]', '2021-10-15 02:57:14', '2021-10-16 14:15:01', '2021-10-16 14:15:01'),
(332, 1, 'dfsdsdsdsd', 0, 'image/jpeg', 80011, 'dfsdsdsdsd.jpg', '[]', '2021-10-15 03:22:54', '2021-10-16 14:15:01', '2021-10-16 14:15:01'),
(333, 1, 'HỒNG 2', 0, 'image/jpeg', 105165, 'hong-2.jpg', '[]', '2021-10-15 03:39:41', '2021-10-16 14:15:01', '2021-10-16 14:15:01'),
(334, 1, 'FDSFDSF', 0, 'image/jpeg', 78404, 'fdsfdsf.jpg', '[]', '2021-10-15 03:39:51', '2021-10-16 14:15:01', '2021-10-16 14:15:01'),
(335, 1, 'FDFSĐ', 0, 'image/jpeg', 86723, 'fdfsd.jpg', '[]', '2021-10-15 06:45:28', '2021-10-16 14:15:01', '2021-10-16 14:15:01'),
(336, 1, 'MOCKUP STICK 1', 0, 'image/jpeg', 100316, 'mockup-stick-1.jpg', '[]', '2021-10-15 06:47:24', '2021-10-16 14:15:01', '2021-10-16 14:15:01'),
(337, 1, 'TRANGG', 0, 'image/jpeg', 126218, 'trangg.jpg', '[]', '2021-10-15 06:48:36', '2021-10-16 14:15:01', '2021-10-16 14:15:01'),
(338, 1, 'RTRTRE', 0, 'image/jpeg', 83494, 'rtrtre.jpg', '[]', '2021-10-15 06:56:12', '2021-10-16 14:15:01', '2021-10-16 14:15:01'),
(339, 1, 'gỗ stick', 0, 'image/jpeg', 148771, 'go-stick.jpg', '[]', '2021-10-15 07:09:47', '2021-10-16 14:15:01', '2021-10-16 14:15:01'),
(340, 1, 'ỂWREW', 0, 'image/jpeg', 82614, 'ewrew.jpg', '[]', '2021-10-15 07:12:53', '2021-10-16 14:15:01', '2021-10-16 14:15:01'),
(341, 1, 'xanh chamm', 0, 'image/jpeg', 116627, 'xanh-chamm.jpg', '[]', '2021-10-15 09:20:17', '2021-10-16 14:15:01', '2021-10-16 14:15:01'),
(342, 1, 'ỂWR', 0, 'image/jpeg', 82532, 'ewr.jpg', '[]', '2021-10-15 09:22:35', '2021-10-16 14:15:01', '2021-10-16 14:15:01'),
(343, 1, 'MC STICK CAU VONG', 0, 'image/jpeg', 109468, 'mc-stick-cau-vong.jpg', '[]', '2021-10-15 09:23:20', '2021-10-16 14:15:01', '2021-10-16 14:15:01'),
(344, 1, 'xanh cham', 0, 'image/jpeg', 433148, 'xanh-cham.jpg', '[]', '2021-10-15 09:29:45', '2021-10-15 09:29:45', NULL),
(345, 1, 'xanh cham 2', 0, 'image/jpeg', 504718, 'xanh-cham-2.jpg', '[]', '2021-10-15 09:29:58', '2021-11-14 17:40:59', '2021-11-14 17:40:59'),
(346, 1, 'MCPINK 5', 0, 'image/jpeg', 107729, 'mcpink-5.jpg', '[]', '2021-10-15 16:13:27', '2021-10-16 14:15:11', '2021-10-16 14:15:11'),
(347, 1, 'GFGFDGGFD', 0, 'image/jpeg', 80796, 'gfgfdggfd.jpg', '[]', '2021-10-15 16:13:46', '2021-10-16 14:15:11', '2021-10-16 14:15:11'),
(348, 1, 'youtube', 51, 'image/jpeg', 15649, 'social-icons/2/youtube.jpg', '[]', '2021-10-15 16:26:41', '2021-11-15 18:27:06', '2021-11-15 18:27:06'),
(349, 1, 'facebook', 51, 'image/jpeg', 14895, 'social-icons/2/facebook.jpg', '[]', '2021-10-15 16:26:41', '2021-11-15 18:27:06', '2021-11-15 18:27:06'),
(350, 1, 'instagram', 51, 'image/jpeg', 18338, 'social-icons/2/instagram.jpg', '[]', '2021-10-15 16:26:42', '2021-11-15 18:27:06', '2021-11-15 18:27:06'),
(351, 1, 'phone', 51, 'image/jpeg', 17558, 'social-icons/2/phone.jpg', '[]', '2021-10-15 16:26:42', '2021-11-15 18:27:06', '2021-11-15 18:27:06'),
(352, 1, 'pinterest', 51, 'image/jpeg', 16791, 'social-icons/2/pinterest.jpg', '[]', '2021-10-15 16:26:42', '2021-11-15 18:27:06', '2021-11-15 18:27:06'),
(353, 1, 'skype', 51, 'image/jpeg', 17650, 'social-icons/2/skype.jpg', '[]', '2021-10-15 16:26:43', '2021-11-15 18:27:06', '2021-11-15 18:27:06'),
(354, 1, 'sms', 51, 'image/jpeg', 16891, 'social-icons/2/sms.jpg', '[]', '2021-10-15 16:26:43', '2021-11-15 18:27:06', '2021-11-15 18:27:06'),
(355, 1, 'snapchat', 51, 'image/jpeg', 15755, 'social-icons/2/snapchat.jpg', '[]', '2021-10-15 16:26:44', '2021-11-15 18:27:06', '2021-11-15 18:27:06'),
(356, 1, 'tiktok', 51, 'image/jpeg', 15366, 'social-icons/2/tiktok.jpg', '[]', '2021-10-15 16:26:44', '2021-11-15 18:27:06', '2021-11-15 18:27:06'),
(357, 1, 'twitter', 51, 'image/jpeg', 15590, 'social-icons/2/twitter.jpg', '[]', '2021-10-15 16:26:45', '2021-11-15 18:27:06', '2021-11-15 18:27:06'),
(358, 1, '3', 52, 'image/png', 30343, 'icon-pink-1/3.png', '[]', '2021-10-16 02:03:05', '2021-10-16 03:11:15', '2021-10-16 03:11:15'),
(359, 1, '4', 52, 'image/png', 26552, 'icon-pink-1/4.png', '[]', '2021-10-16 02:03:05', '2021-10-16 03:11:15', '2021-10-16 03:11:15'),
(360, 1, '5', 52, 'image/png', 33634, 'icon-pink-1/5.png', '[]', '2021-10-16 02:03:06', '2021-10-16 03:11:15', '2021-10-16 03:11:15'),
(361, 1, '6', 52, 'image/png', 33355, 'icon-pink-1/6.png', '[]', '2021-10-16 02:03:06', '2021-10-16 03:11:15', '2021-10-16 03:11:15'),
(362, 1, '7', 52, 'image/png', 23252, 'icon-pink-1/7.png', '[]', '2021-10-16 02:03:06', '2021-10-16 03:11:15', '2021-10-16 03:11:15'),
(363, 1, '8', 52, 'image/png', 28055, 'icon-pink-1/8.png', '[]', '2021-10-16 02:03:07', '2021-10-16 03:11:15', '2021-10-16 03:11:15'),
(364, 1, '9', 52, 'image/png', 28244, 'icon-pink-1/9.png', '[]', '2021-10-16 02:03:07', '2021-10-16 03:11:15', '2021-10-16 03:11:15'),
(365, 1, '10', 52, 'image/png', 25391, 'icon-pink-1/10.png', '[]', '2021-10-16 02:03:07', '2021-10-16 03:11:15', '2021-10-16 03:11:15'),
(366, 1, '11', 52, 'image/png', 36954, 'icon-pink-1/11.png', '[]', '2021-10-16 02:03:07', '2021-10-16 03:11:15', '2021-10-16 03:11:15'),
(367, 1, '12', 52, 'image/png', 32203, 'icon-pink-1/12.png', '[]', '2021-10-16 02:03:08', '2021-10-16 03:11:15', '2021-10-16 03:11:15'),
(368, 1, '13', 52, 'image/png', 34041, 'icon-pink-1/13.png', '[]', '2021-10-16 02:03:08', '2021-10-16 03:11:15', '2021-10-16 03:11:15'),
(369, 1, '14', 52, 'image/png', 25895, 'icon-pink-1/14.png', '[]', '2021-10-16 02:03:09', '2021-10-16 03:11:15', '2021-10-16 03:11:15'),
(370, 1, '15', 52, 'image/png', 30527, 'icon-pink-1/15.png', '[]', '2021-10-16 02:03:09', '2021-10-16 03:11:15', '2021-10-16 03:11:15'),
(371, 1, '16', 52, 'image/png', 33049, 'icon-pink-1/16.png', '[]', '2021-10-16 02:03:09', '2021-10-16 03:11:15', '2021-10-16 03:11:15'),
(372, 1, '17', 52, 'image/png', 28189, 'icon-pink-1/17.png', '[]', '2021-10-16 02:03:09', '2021-10-16 03:11:15', '2021-10-16 03:11:15'),
(373, 1, '18', 52, 'image/png', 33439, 'icon-pink-1/18.png', '[]', '2021-10-16 02:03:10', '2021-10-16 03:11:15', '2021-10-16 03:11:15'),
(374, 1, '19', 52, 'image/png', 29374, 'icon-pink-1/19.png', '[]', '2021-10-16 02:03:10', '2021-10-16 03:11:15', '2021-10-16 03:11:15'),
(375, 1, '20', 52, 'image/png', 35026, 'icon-pink-1/20.png', '[]', '2021-10-16 02:03:10', '2021-10-16 03:11:15', '2021-10-16 03:11:15'),
(376, 1, '21', 52, 'image/png', 31885, 'icon-pink-1/21.png', '[]', '2021-10-16 02:03:11', '2021-10-16 03:11:15', '2021-10-16 03:11:15'),
(377, 1, '22', 52, 'image/png', 30735, 'icon-pink-1/22.png', '[]', '2021-10-16 02:03:11', '2021-10-16 03:11:15', '2021-10-16 03:11:15'),
(378, 1, '23', 52, 'image/png', 33367, 'icon-pink-1/23.png', '[]', '2021-10-16 02:03:11', '2021-10-16 03:11:15', '2021-10-16 03:11:15'),
(379, 1, '24', 52, 'image/png', 31632, 'icon-pink-1/24.png', '[]', '2021-10-16 02:03:12', '2021-10-16 03:11:15', '2021-10-16 03:11:15'),
(380, 1, '25', 52, 'image/png', 13789, 'icon-pink-1/25.png', '[]', '2021-10-16 02:03:12', '2021-10-16 03:11:15', '2021-10-16 03:11:15'),
(381, 1, '26', 52, 'image/png', 16313, 'icon-pink-1/26.png', '[]', '2021-10-16 02:03:12', '2021-10-16 03:11:15', '2021-10-16 03:11:15'),
(382, 1, '27', 52, 'image/png', 14978, 'icon-pink-1/27.png', '[]', '2021-10-16 02:03:13', '2021-10-16 03:11:15', '2021-10-16 03:11:15'),
(383, 1, 'FB PINK', 52, 'image/png', 21920, 'icon-pink-1/fb-pink.png', '[]', '2021-10-16 02:03:13', '2021-10-16 03:11:15', '2021-10-16 03:11:15'),
(384, 1, 'TWITTER', 52, 'image/png', 26638, 'icon-pink-1/twitter.png', '[]', '2021-10-16 02:03:13', '2021-10-16 03:11:15', '2021-10-16 03:11:15'),
(385, 1, '1 ', 53, 'image/png', 10230, 'icon-pink-2/1.png', '[]', '2021-10-16 03:12:26', '2021-10-16 03:12:26', NULL),
(386, 1, '2', 53, 'image/png', 13353, 'icon-pink-2/2.png', '[]', '2021-10-16 03:12:27', '2021-10-16 03:12:27', NULL),
(387, 1, '3', 53, 'image/png', 13251, 'icon-pink-2/3.png', '[]', '2021-10-16 03:12:27', '2021-10-16 03:12:27', NULL),
(388, 1, '4', 53, 'image/png', 14225, 'icon-pink-2/4.png', '[]', '2021-10-16 03:12:27', '2021-10-16 03:12:27', NULL),
(389, 1, '5', 53, 'image/png', 11010, 'icon-pink-2/5.png', '[]', '2021-10-16 03:12:28', '2021-10-16 03:12:28', NULL),
(390, 1, '6', 53, 'image/png', 13226, 'icon-pink-2/6.png', '[]', '2021-10-16 03:12:28', '2021-10-16 03:12:28', NULL),
(391, 1, '7', 53, 'image/png', 15004, 'icon-pink-2/7.png', '[]', '2021-10-16 03:12:29', '2021-10-16 03:12:29', NULL),
(392, 1, '8', 53, 'image/png', 15420, 'icon-pink-2/8.png', '[]', '2021-10-16 03:12:29', '2021-10-16 03:12:29', NULL),
(393, 1, '9', 53, 'image/png', 12085, 'icon-pink-2/9.png', '[]', '2021-10-16 03:12:29', '2021-10-16 03:12:29', NULL),
(394, 1, '10', 53, 'image/png', 14322, 'icon-pink-2/10.png', '[]', '2021-10-16 03:12:30', '2021-10-16 03:12:30', NULL),
(395, 1, '11', 53, 'image/png', 11377, 'icon-pink-2/11.png', '[]', '2021-10-16 03:12:30', '2021-10-16 03:12:30', NULL),
(396, 1, '12', 53, 'image/png', 13060, 'icon-pink-2/12.png', '[]', '2021-10-16 03:12:30', '2021-10-16 03:12:30', NULL),
(397, 1, '13', 53, 'image/png', 13702, 'icon-pink-2/13.png', '[]', '2021-10-16 03:12:31', '2021-10-16 03:12:31', NULL),
(398, 1, '14', 53, 'image/png', 12709, 'icon-pink-2/14.png', '[]', '2021-10-16 03:12:31', '2021-10-16 03:12:31', NULL),
(399, 1, '15', 53, 'image/png', 12267, 'icon-pink-2/15.png', '[]', '2021-10-16 03:12:31', '2021-10-16 03:12:31', NULL),
(400, 1, '16', 53, 'image/png', 14081, 'icon-pink-2/16.png', '[]', '2021-10-16 03:12:32', '2021-10-16 03:12:32', NULL),
(401, 1, '17', 53, 'image/png', 16816, 'icon-pink-2/17.png', '[]', '2021-10-16 03:12:32', '2021-10-16 03:12:32', NULL),
(402, 1, '18', 53, 'image/png', 14435, 'icon-pink-2/18.png', '[]', '2021-10-16 03:12:32', '2021-10-16 03:12:32', NULL),
(403, 1, '19', 53, 'image/png', 14653, 'icon-pink-2/19.png', '[]', '2021-10-16 03:12:32', '2021-10-16 03:12:32', NULL),
(404, 1, '20', 53, 'image/png', 13165, 'icon-pink-2/20.png', '[]', '2021-10-16 03:12:33', '2021-10-16 03:12:33', NULL),
(405, 1, '21', 53, 'image/png', 16220, 'icon-pink-2/21.png', '[]', '2021-10-16 03:12:33', '2021-10-16 03:12:33', NULL),
(406, 1, '22', 53, 'image/png', 13884, 'icon-pink-2/22.png', '[]', '2021-10-16 03:12:34', '2021-10-16 03:12:34', NULL),
(407, 1, '23', 53, 'image/png', 13908, 'icon-pink-2/23.png', '[]', '2021-10-16 03:12:34', '2021-10-16 03:12:34', NULL),
(408, 1, '24', 53, 'image/png', 14571, 'icon-pink-2/24.png', '[]', '2021-10-16 03:12:34', '2021-10-16 03:12:34', NULL),
(409, 1, '25', 53, 'image/png', 13875, 'icon-pink-2/25.png', '[]', '2021-10-16 03:12:35', '2021-10-16 03:12:35', NULL),
(410, 1, '26', 53, 'image/png', 13283, 'icon-pink-2/26.png', '[]', '2021-10-16 03:12:36', '2021-10-16 03:12:36', NULL),
(411, 1, 'LOGO XÓA NỀN', 53, 'image/png', 13552, 'icon-pink-2/logo-xoa-nen.png', '[]', '2021-10-16 03:55:29', '2021-11-14 17:51:21', '2021-11-14 17:51:21'),
(412, 1, 'LOGO XÓA NỀN 1', 53, 'image/png', 15196, 'icon-pink-2/logo-xoa-nen-1.png', '[]', '2021-10-16 04:00:42', '2021-11-14 17:51:17', '2021-11-14 17:51:17'),
(413, 1, 'D1', 53, 'image/png', 11904, 'icon-pink-2/d1.png', '[]', '2021-10-16 05:21:43', '2021-11-14 17:51:13', '2021-11-14 17:51:13'),
(414, 1, '2', 54, 'image/png', 8789, 'icon-pink-2/icon-social-den/2.png', '[]', '2021-10-16 08:03:45', '2021-11-14 17:51:08', '2021-11-14 17:51:08'),
(415, 1, '3', 54, 'image/png', 9976, 'icon-pink-2/icon-social-den/3.png', '[]', '2021-10-16 08:03:45', '2021-11-14 17:51:08', '2021-11-14 17:51:08'),
(416, 1, '4', 54, 'image/png', 11594, 'icon-pink-2/icon-social-den/4.png', '[]', '2021-10-16 08:03:45', '2021-11-14 17:51:08', '2021-11-14 17:51:08'),
(417, 1, '5', 54, 'image/png', 5615, 'icon-pink-2/icon-social-den/5.png', '[]', '2021-10-16 08:03:46', '2021-11-14 17:51:08', '2021-11-14 17:51:08'),
(418, 1, '6', 54, 'image/png', 8463, 'icon-pink-2/icon-social-den/6.png', '[]', '2021-10-16 08:03:46', '2021-11-14 17:51:08', '2021-11-14 17:51:08'),
(419, 1, '7', 54, 'image/png', 12681, 'icon-pink-2/icon-social-den/7.png', '[]', '2021-10-16 08:03:46', '2021-11-14 17:51:08', '2021-11-14 17:51:08'),
(420, 1, '9', 54, 'image/png', 7474, 'icon-pink-2/icon-social-den/9.png', '[]', '2021-10-16 08:03:47', '2021-11-14 17:51:08', '2021-11-14 17:51:08'),
(421, 1, '10', 54, 'image/png', 12268, 'icon-pink-2/icon-social-den/10.png', '[]', '2021-10-16 08:03:47', '2021-11-14 17:51:08', '2021-11-14 17:51:08'),
(422, 1, '12', 54, 'image/png', 8821, 'icon-pink-2/icon-social-den/12.png', '[]', '2021-10-16 08:03:48', '2021-11-14 17:51:08', '2021-11-14 17:51:08'),
(423, 1, '13', 54, 'image/png', 12048, 'icon-pink-2/icon-social-den/13.png', '[]', '2021-10-16 08:03:48', '2021-11-14 17:51:08', '2021-11-14 17:51:08'),
(424, 1, '14', 54, 'image/png', 8827, 'icon-pink-2/icon-social-den/14.png', '[]', '2021-10-16 08:03:48', '2021-11-14 17:51:08', '2021-11-14 17:51:08'),
(425, 1, '15', 54, 'image/png', 7477, 'icon-pink-2/icon-social-den/15.png', '[]', '2021-10-16 08:03:48', '2021-11-14 17:51:08', '2021-11-14 17:51:08'),
(426, 1, '16', 54, 'image/png', 12554, 'icon-pink-2/icon-social-den/16.png', '[]', '2021-10-16 08:03:49', '2021-11-14 17:51:08', '2021-11-14 17:51:08'),
(427, 1, '17', 54, 'image/png', 5792, 'icon-pink-2/icon-social-den/17.png', '[]', '2021-10-16 08:03:49', '2021-11-14 17:51:08', '2021-11-14 17:51:08'),
(428, 1, 'D1', 54, 'image/png', 4447, 'icon-pink-2/icon-social-den/d1.png', '[]', '2021-10-16 08:03:49', '2021-11-14 17:51:08', '2021-11-14 17:51:08'),
(429, 1, '18', 54, 'image/png', 12049, 'icon-pink-2/icon-social-den/18.png', '[]', '2021-10-16 08:07:36', '2021-11-14 17:51:08', '2021-11-14 17:51:08'),
(430, 1, 'DT10', 55, 'image/jpeg', 80163, 'icon-pink-2/icon-social-den/kho-sticker-shop/dt10.jpg', '[]', '2021-10-16 11:59:54', '2021-11-14 17:51:08', '2021-11-14 17:51:08'),
(431, 1, 'DT9', 55, 'image/jpeg', 82126, 'icon-pink-2/icon-social-den/kho-sticker-shop/dt9.jpg', '[]', '2021-10-16 11:59:55', '2021-11-14 17:51:08', '2021-11-14 17:51:08'),
(432, 1, 'DT8', 55, 'image/jpeg', 84371, 'icon-pink-2/icon-social-den/kho-sticker-shop/dt8.jpg', '[]', '2021-10-16 11:59:55', '2021-11-14 17:51:08', '2021-11-14 17:51:08'),
(433, 1, 'DT7', 55, 'image/jpeg', 87699, 'icon-pink-2/icon-social-den/kho-sticker-shop/dt7.jpg', '[]', '2021-10-16 11:59:55', '2021-11-14 17:51:08', '2021-11-14 17:51:08'),
(434, 1, 'DT6', 55, 'image/jpeg', 80253, 'icon-pink-2/icon-social-den/kho-sticker-shop/dt6.jpg', '[]', '2021-10-16 11:59:56', '2021-11-14 17:51:08', '2021-11-14 17:51:08'),
(435, 1, 'DT5', 55, 'image/jpeg', 83050, 'icon-pink-2/icon-social-den/kho-sticker-shop/dt5.jpg', '[]', '2021-10-16 11:59:56', '2021-11-14 17:51:08', '2021-11-14 17:51:08'),
(436, 1, 'DIEN THOAT 1', 55, 'image/png', 251986, 'icon-pink-2/icon-social-den/kho-sticker-shop/dien-thoat-1.png', '[]', '2021-10-16 11:59:56', '2021-11-14 17:51:08', '2021-11-14 17:51:08'),
(437, 1, 'DT2', 55, 'image/jpeg', 80059, 'icon-pink-2/icon-social-den/kho-sticker-shop/dt2.jpg', '[]', '2021-10-16 12:00:10', '2021-11-14 17:51:08', '2021-11-14 17:51:08'),
(438, 1, 'DT3', 55, 'image/jpeg', 81583, 'icon-pink-2/icon-social-den/kho-sticker-shop/dt3.jpg', '[]', '2021-10-16 12:00:10', '2021-11-14 17:51:08', '2021-11-14 17:51:08'),
(439, 1, 'DT1', 55, 'image/jpeg', 79945, 'icon-pink-2/icon-social-den/kho-sticker-shop/dt1.jpg', '[]', '2021-10-16 12:00:11', '2021-11-14 17:51:08', '2021-11-14 17:51:08'),
(440, 1, '22', 55, 'image/jpeg', 109057, 'icon-pink-2/icon-social-den/kho-sticker-shop/22.jpg', '[]', '2021-10-16 12:01:52', '2021-11-14 17:51:08', '2021-11-14 17:51:08'),
(441, 1, 'camo 4', 55, 'image/jpeg', 144023, 'icon-pink-2/icon-social-den/kho-sticker-shop/camo-4.jpg', '[]', '2021-10-16 12:01:53', '2021-11-14 17:51:08', '2021-11-14 17:51:08'),
(442, 1, 'CAMO 5', 55, 'image/jpeg', 196524, 'icon-pink-2/icon-social-den/kho-sticker-shop/camo-5.jpg', '[]', '2021-10-16 12:01:53', '2021-11-14 17:51:08', '2021-11-14 17:51:08'),
(443, 1, 'gỗ stick', 55, 'image/jpeg', 148624, 'icon-pink-2/icon-social-den/kho-sticker-shop/go-stick.jpg', '[]', '2021-10-16 12:01:54', '2021-11-14 17:51:08', '2021-11-14 17:51:08'),
(444, 1, 'HỒNG 1', 55, 'image/jpeg', 108729, 'icon-pink-2/icon-social-den/kho-sticker-shop/hong-1.jpg', '[]', '2021-10-16 12:01:54', '2021-11-14 17:51:08', '2021-11-14 17:51:08'),
(445, 1, 'HỒNG 2', 55, 'image/jpeg', 105076, 'icon-pink-2/icon-social-den/kho-sticker-shop/hong-2.jpg', '[]', '2021-10-16 12:01:54', '2021-11-14 17:51:08', '2021-11-14 17:51:08'),
(446, 1, 'MCPINK 5', 55, 'image/jpeg', 107688, 'icon-pink-2/icon-social-den/kho-sticker-shop/mcpink-5.jpg', '[]', '2021-10-16 12:01:55', '2021-11-14 17:51:08', '2021-11-14 17:51:08'),
(447, 1, 'mockup cau vong', 55, 'image/jpeg', 109309, 'icon-pink-2/icon-social-den/kho-sticker-shop/mockup-cau-vong.jpg', '[]', '2021-10-16 12:01:55', '2021-11-14 17:51:08', '2021-11-14 17:51:08'),
(448, 1, 'MOCKUP STICK 1', 55, 'image/jpeg', 100185, 'icon-pink-2/icon-social-den/kho-sticker-shop/mockup-stick-1.jpg', '[]', '2021-10-16 12:01:55', '2021-11-14 17:51:08', '2021-11-14 17:51:08'),
(449, 1, '11', 55, 'image/jpeg', 114069, 'icon-pink-2/icon-social-den/kho-sticker-shop/11.jpg', '[]', '2021-10-16 12:01:56', '2021-11-14 17:51:08', '2021-11-14 17:51:08'),
(450, 1, 'DT11', 55, 'image/jpeg', 79873, 'icon-pink-2/icon-social-den/kho-sticker-shop/dt11.jpg', '[]', '2021-10-16 12:06:28', '2021-11-14 17:51:08', '2021-11-14 17:51:08'),
(451, 1, 'xanh chamm', 55, 'image/jpeg', 116440, 'icon-pink-2/icon-social-den/kho-sticker-shop/xanh-chamm.jpg', '[]', '2021-10-16 12:16:00', '2021-11-14 17:51:08', '2021-11-14 17:51:08'),
(452, 1, 'R10', 56, 'image/jpeg', 80918, 'stick-shop/r10.jpg', '[]', '2021-10-16 14:16:57', '2021-10-16 14:16:57', NULL),
(453, 1, 'xanh chamm', 56, 'image/jpeg', 117045, 'stick-shop/xanh-chamm.jpg', '[]', '2021-10-16 14:16:58', '2021-10-16 14:16:58', NULL),
(454, 1, '11', 56, 'image/jpeg', 114527, 'stick-shop/11.jpg', '[]', '2021-10-16 14:16:58', '2021-10-16 14:16:58', NULL),
(455, 1, 'CAMO 5', 56, 'image/jpeg', 196390, 'stick-shop/camo-5.jpg', '[]', '2021-10-16 14:16:58', '2021-10-16 14:16:58', NULL),
(456, 1, 'gỗ stick', 56, 'image/jpeg', 148874, 'stick-shop/go-stick.jpg', '[]', '2021-10-16 14:16:59', '2021-10-16 14:16:59', NULL),
(457, 1, 'HỒNG 2', 56, 'image/jpeg', 105178, 'stick-shop/hong-2.jpg', '[]', '2021-10-16 14:16:59', '2021-10-16 14:16:59', NULL),
(458, 1, 'MC T3', 56, 'image/jpeg', 98128, 'stick-shop/mc-t3.jpg', '[]', '2021-10-16 14:16:59', '2021-10-16 14:16:59', NULL),
(459, 1, 'MCPINK 5', 56, 'image/jpeg', 107819, 'stick-shop/mcpink-5.jpg', '[]', '2021-10-16 14:17:00', '2021-10-16 14:17:00', NULL),
(460, 1, 'mockup cau vong', 56, 'image/jpeg', 109590, 'stick-shop/mockup-cau-vong.jpg', '[]', '2021-10-16 14:17:00', '2021-10-16 14:17:00', NULL),
(461, 1, 'MOCKUP STICK 1', 56, 'image/jpeg', 144338, 'stick-shop/mockup-stick-1.jpg', '[]', '2021-10-16 14:17:00', '2021-10-16 14:17:00', NULL),
(462, 1, 'R1', 56, 'image/jpeg', 84542, 'stick-shop/r1.jpg', '[]', '2021-10-16 14:17:01', '2021-10-16 14:17:01', NULL),
(463, 1, 'R3', 56, 'image/jpeg', 79992, 'stick-shop/r3.jpg', '[]', '2021-10-16 14:17:01', '2021-10-16 14:17:01', NULL),
(464, 1, 'r4', 56, 'image/jpeg', 82052, 'stick-shop/r4.jpg', '[]', '2021-10-16 14:17:02', '2021-10-16 14:17:02', NULL),
(465, 1, 'R5', 56, 'image/jpeg', 83403, 'stick-shop/r5.jpg', '[]', '2021-10-16 14:17:02', '2021-10-16 14:17:02', NULL),
(466, 1, 'R7', 56, 'image/jpeg', 87939, 'stick-shop/r7.jpg', '[]', '2021-10-16 14:17:03', '2021-10-16 14:17:03', NULL),
(467, 1, 'R8', 56, 'image/jpeg', 82706, 'stick-shop/r8.jpg', '[]', '2021-10-16 14:17:03', '2021-10-16 14:17:03', NULL),
(468, 1, 'r9', 56, 'image/jpeg', 81300, 'stick-shop/r9.jpg', '[]', '2021-10-16 14:17:03', '2021-10-16 14:17:03', NULL),
(469, 1, 'LOGO', 55, 'image/jpeg', 40061, 'icon-pink-2/icon-social-den/kho-sticker-shop/logo.jpg', '[]', '2021-10-16 15:00:28', '2021-11-14 17:51:08', '2021-11-14 17:51:08'),
(470, 1, 'LOGO-1', 55, 'image/jpeg', 40003, 'icon-pink-2/icon-social-den/kho-sticker-shop/logo-1.jpg', '[]', '2021-10-16 15:08:50', '2021-11-14 17:51:08', '2021-11-14 17:51:08'),
(471, 1, 'MC XANH CHÀM 2', 57, 'image/jpeg', 526627, 'icon-pink-2/icon-social-den/kho-sticker-shop/shop-card/mc-xanh-cham-2.jpg', '[]', '2021-10-17 03:30:47', '2021-11-14 17:51:08', '2021-11-14 17:51:08'),
(472, 1, 'ĐEN 1 K TÊN', 57, 'image/jpeg', 425606, 'icon-pink-2/icon-social-den/kho-sticker-shop/shop-card/den-1-k-ten.jpg', '[]', '2021-10-17 03:30:49', '2021-11-14 17:51:08', '2021-11-14 17:51:08'),
(473, 1, 'đen 2', 57, 'image/jpeg', 140303, 'icon-pink-2/icon-social-den/kho-sticker-shop/shop-card/den-2.jpg', '[]', '2021-10-17 03:30:50', '2021-11-14 17:51:08', '2021-11-14 17:51:08'),
(474, 1, 'MC ĐEN 2', 57, 'image/jpeg', 509698, 'icon-pink-2/icon-social-den/kho-sticker-shop/shop-card/mc-den-2.jpg', '[]', '2021-10-17 03:30:51', '2021-11-14 17:51:08', '2021-11-14 17:51:08'),
(475, 1, 'MC ĐEN CÓ TÊN', 57, 'image/jpeg', 432586, 'icon-pink-2/icon-social-den/kho-sticker-shop/shop-card/mc-den-co-ten.jpg', '[]', '2021-10-17 03:30:52', '2021-11-14 17:51:08', '2021-11-14 17:51:08'),
(476, 1, 'MC GO2', 57, 'image/jpeg', 722296, 'icon-pink-2/icon-social-den/kho-sticker-shop/shop-card/mc-go2.jpg', '[]', '2021-10-17 03:30:54', '2021-11-14 17:51:08', '2021-11-14 17:51:08'),
(477, 1, 'MC GỖ 1 K TÊN', 57, 'image/jpeg', 661703, 'icon-pink-2/icon-social-den/kho-sticker-shop/shop-card/mc-go-1-k-ten.jpg', '[]', '2021-10-17 03:30:55', '2021-11-14 17:51:08', '2021-11-14 17:51:08'),
(478, 1, 'MC HỒNG 22', 57, 'image/jpeg', 516462, 'icon-pink-2/icon-social-den/kho-sticker-shop/shop-card/mc-hong-22.jpg', '[]', '2021-10-17 03:30:57', '2021-11-14 17:51:08', '2021-11-14 17:51:08'),
(479, 1, 'mc t2', 57, 'image/jpeg', 504384, 'icon-pink-2/icon-social-den/kho-sticker-shop/shop-card/mc-t2.jpg', '[]', '2021-10-17 03:30:59', '2021-11-14 17:51:08', '2021-11-14 17:51:08'),
(480, 1, 'MC TRANG 1 K TÊN', 57, 'image/jpeg', 415134, 'icon-pink-2/icon-social-den/kho-sticker-shop/shop-card/mc-trang-1-k-ten.jpg', '[]', '2021-10-17 03:31:01', '2021-11-14 17:51:08', '2021-11-14 17:51:08'),
(481, 1, 'MC VÀNG 1 K TÊN', 57, 'image/jpeg', 663163, 'icon-pink-2/icon-social-den/kho-sticker-shop/shop-card/mc-vang-1-k-ten.jpg', '[]', '2021-10-17 03:31:01', '2021-11-14 17:51:08', '2021-11-14 17:51:08'),
(482, 1, 'MC VANG 2', 57, 'image/jpeg', 724757, 'icon-pink-2/icon-social-den/kho-sticker-shop/shop-card/mc-vang-2.jpg', '[]', '2021-10-17 03:31:03', '2021-11-14 17:51:08', '2021-11-14 17:51:08'),
(483, 1, 'MC XANH CHÀM 1', 57, 'image/jpeg', 432669, 'icon-pink-2/icon-social-den/kho-sticker-shop/shop-card/mc-xanh-cham-1.jpg', '[]', '2021-10-17 03:31:03', '2021-11-14 17:51:08', '2021-11-14 17:51:08'),
(484, 1, 'MC HỒNG 11', 57, 'image/jpeg', 427530, 'icon-pink-2/icon-social-den/kho-sticker-shop/shop-card/mc-hong-11.jpg', '[]', '2021-10-17 03:35:04', '2021-11-14 17:51:08', '2021-11-14 17:51:08'),
(485, 1, 'MC VANG 1', 57, 'image/jpeg', 667899, 'icon-pink-2/icon-social-den/kho-sticker-shop/shop-card/mc-vang-1.jpg', '[]', '2021-10-17 05:26:13', '2021-11-14 17:51:08', '2021-11-14 17:51:08'),
(486, 1, 'MC TRẮNG 1 CÓ TÊN', 57, 'image/jpeg', 422314, 'icon-pink-2/icon-social-den/kho-sticker-shop/shop-card/mc-trang-1-co-ten.jpg', '[]', '2021-10-17 05:26:13', '2021-11-14 17:51:08', '2021-11-14 17:51:08'),
(487, 1, 'MC VÀNG 1 K TÊN', 58, 'image/jpeg', 663163, 'shop-card/mc-vang-1-k-ten.jpg', '[]', '2021-10-17 13:22:27', '2021-10-17 13:22:27', NULL),
(488, 1, 'MC VANG 1', 58, 'image/jpeg', 667899, 'shop-card/mc-vang-1.jpg', '[]', '2021-10-17 13:22:28', '2021-10-17 13:22:28', NULL),
(489, 1, 'MC VANG 2', 58, 'image/jpeg', 730268, 'shop-card/mc-vang-2.jpg', '[]', '2021-10-17 13:22:29', '2021-10-28 08:55:40', '2021-10-28 08:55:40'),
(490, 1, 'MC XANH CHÀM 1', 58, 'image/jpeg', 432669, 'shop-card/mc-xanh-cham-1.jpg', '[]', '2021-10-17 13:22:29', '2021-10-17 13:22:29', NULL),
(491, 1, 'MC XANH CHÀM 2', 58, 'image/jpeg', 522915, 'shop-card/mc-xanh-cham-2.jpg', '[]', '2021-10-17 13:22:30', '2021-10-28 08:55:40', '2021-10-28 08:55:40'),
(492, 1, 'ĐEN 1 K TÊN', 58, 'image/jpeg', 425606, 'shop-card/den-1-k-ten.jpg', '[]', '2021-10-17 13:22:31', '2021-10-17 13:22:31', NULL),
(493, 1, 'đen 2', 58, 'image/jpeg', 506412, 'shop-card/den-2.jpg', '[]', '2021-10-17 13:22:31', '2021-10-28 08:55:40', '2021-10-28 08:55:40'),
(494, 1, 'MC ĐEN 2', 58, 'image/jpeg', 506023, 'shop-card/mc-den-2.jpg', '[]', '2021-10-17 13:22:32', '2021-10-28 08:55:40', '2021-10-28 08:55:40'),
(495, 1, 'MC ĐEN CÓ TÊN', 58, 'image/jpeg', 432586, 'shop-card/mc-den-co-ten.jpg', '[]', '2021-10-17 13:22:32', '2021-10-17 13:22:32', NULL),
(496, 1, 'MC GO2', 58, 'image/jpeg', 724427, 'shop-card/mc-go2.jpg', '[]', '2021-10-17 13:22:33', '2021-10-28 08:55:40', '2021-10-28 08:55:40'),
(497, 1, 'MC GỖ 1 K TÊN', 58, 'image/jpeg', 661703, 'shop-card/mc-go-1-k-ten.jpg', '[]', '2021-10-17 13:22:34', '2021-10-17 13:22:34', NULL),
(498, 1, 'MC HỒNG 2', 58, 'image/jpeg', 516553, 'shop-card/mc-hong-2.jpg', '[]', '2021-10-17 13:22:34', '2021-10-28 08:55:40', '2021-10-28 08:55:40'),
(499, 1, 'MC HỒNG 11', 58, 'image/jpeg', 427530, 'shop-card/mc-hong-11.jpg', '[]', '2021-10-17 13:22:35', '2021-10-17 13:22:35', NULL),
(500, 1, 'mc t2', 58, 'image/jpeg', 498818, 'shop-card/mc-t2.jpg', '[]', '2021-10-17 13:22:35', '2021-10-28 08:55:40', '2021-10-28 08:55:40'),
(501, 1, 'MC TRANG 1 K TÊN', 58, 'image/jpeg', 415134, 'shop-card/mc-trang-1-k-ten.jpg', '[]', '2021-10-17 13:22:36', '2021-10-17 13:22:36', NULL),
(502, 1, 'MC TRẮNG 1 CÓ TÊN', 58, 'image/jpeg', 422314, 'shop-card/mc-trang-1-co-ten.jpg', '[]', '2021-10-17 13:22:37', '2021-10-17 13:22:37', NULL),
(503, 1, '69131655_1359921010848790_8930295030627696640_n', 58, 'image/jpeg', 236403, 'shop-card/69131655-1359921010848790-8930295030627696640-n.jpg', '[]', '2021-10-19 03:44:33', '2021-10-28 08:55:40', '2021-10-28 08:55:40'),
(504, 1, 'avatar 1634995245880', 3, 'image/png', 118277, 'avatars/avatar-1634995245880.png', '[]', '2021-10-23 13:20:46', '2021-10-23 13:20:46', NULL),
(505, 1, 'E4448055-62B9-4E68-A20E-AE852B23B3DC', 9, 'image/jpeg', 312384, 'covers/e4448055-62b9-4e68-a20e-ae852b23b3dc.jpeg', '[]', '2021-10-23 13:21:17', '2021-10-23 13:21:17', NULL),
(506, 1, 'avatar 1634995572662', 3, 'image/png', 73431, 'avatars/avatar-1634995572662.png', '[]', '2021-10-23 13:26:13', '2021-10-23 13:26:13', NULL),
(507, 1, '18', 60, 'image/jpeg', 92748, 'icon-mac-dinh/18.jpg', '[]', '2021-10-25 15:36:23', '2021-10-26 07:06:44', '2021-10-26 07:06:44'),
(508, 1, '20', 60, 'image/jpeg', 111413, 'icon-mac-dinh/20.jpg', '[]', '2021-10-25 15:36:24', '2021-10-26 07:06:44', '2021-10-26 07:06:44'),
(509, 1, '21', 60, 'image/jpeg', 138884, 'icon-mac-dinh/21.jpg', '[]', '2021-10-25 15:36:24', '2021-10-26 07:06:44', '2021-10-26 07:06:44'),
(510, 1, '22', 60, 'image/jpeg', 120360, 'icon-mac-dinh/22.jpg', '[]', '2021-10-25 15:36:24', '2021-10-26 07:06:44', '2021-10-26 07:06:44'),
(511, 1, '23', 60, 'image/jpeg', 131855, 'icon-mac-dinh/23.jpg', '[]', '2021-10-25 15:36:25', '2021-10-26 07:06:44', '2021-10-26 07:06:44'),
(512, 1, '24', 60, 'image/jpeg', 117098, 'icon-mac-dinh/24.jpg', '[]', '2021-10-25 15:36:25', '2021-10-26 07:06:44', '2021-10-26 07:06:44'),
(513, 1, '25', 60, 'image/jpeg', 64398, 'icon-mac-dinh/25.jpg', '[]', '2021-10-25 15:36:25', '2021-10-26 07:06:44', '2021-10-26 07:06:44'),
(514, 1, '26', 60, 'image/jpeg', 79336, 'icon-mac-dinh/26.jpg', '[]', '2021-10-25 15:36:26', '2021-10-26 07:06:44', '2021-10-26 07:06:44'),
(515, 1, '27', 60, 'image/jpeg', 125687, 'icon-mac-dinh/27.jpg', '[]', '2021-10-25 15:36:26', '2021-10-26 07:06:44', '2021-10-26 07:06:44'),
(516, 1, '28', 60, 'image/jpeg', 101400, 'icon-mac-dinh/28.jpg', '[]', '2021-10-25 15:36:27', '2021-10-26 07:06:44', '2021-10-26 07:06:44'),
(517, 1, '29', 60, 'image/jpeg', 142013, 'icon-mac-dinh/29.jpg', '[]', '2021-10-25 15:36:27', '2021-10-26 07:06:44', '2021-10-26 07:06:44'),
(518, 1, 'ICON FB', 60, 'image/jpeg', 90524, 'icon-mac-dinh/icon-fb.jpg', '[]', '2021-10-25 15:36:27', '2021-10-26 07:06:44', '2021-10-26 07:06:44'),
(519, 1, '2', 60, 'image/jpeg', 132562, 'icon-mac-dinh/2.jpg', '[]', '2021-10-25 15:36:28', '2021-10-26 07:06:44', '2021-10-26 07:06:44'),
(520, 1, '3', 60, 'image/jpeg', 157199, 'icon-mac-dinh/3.jpg', '[]', '2021-10-25 15:36:28', '2021-10-26 07:06:44', '2021-10-26 07:06:44'),
(521, 1, '4', 60, 'image/jpeg', 113419, 'icon-mac-dinh/4.jpg', '[]', '2021-10-25 15:36:28', '2021-10-26 07:06:44', '2021-10-26 07:06:44'),
(522, 1, '5', 60, 'image/jpeg', 229443, 'icon-mac-dinh/5.jpg', '[]', '2021-10-25 15:36:29', '2021-10-26 07:06:44', '2021-10-26 07:06:44'),
(523, 1, '6', 60, 'image/jpeg', 125677, 'icon-mac-dinh/6.jpg', '[]', '2021-10-25 15:36:29', '2021-10-26 07:06:44', '2021-10-26 07:06:44'),
(524, 1, '7', 60, 'image/jpeg', 107373, 'icon-mac-dinh/7.jpg', '[]', '2021-10-25 15:36:30', '2021-10-26 07:06:44', '2021-10-26 07:06:44'),
(525, 1, '8', 60, 'image/jpeg', 100041, 'icon-mac-dinh/8.jpg', '[]', '2021-10-25 15:36:30', '2021-10-26 07:06:44', '2021-10-26 07:06:44'),
(526, 1, '9', 60, 'image/jpeg', 85212, 'icon-mac-dinh/9.jpg', '[]', '2021-10-25 15:36:31', '2021-10-26 07:06:44', '2021-10-26 07:06:44'),
(527, 1, '10', 60, 'image/jpeg', 141246, 'icon-mac-dinh/10.jpg', '[]', '2021-10-25 15:36:31', '2021-10-26 07:06:44', '2021-10-26 07:06:44'),
(528, 1, '11', 60, 'image/jpeg', 113052, 'icon-mac-dinh/11.jpg', '[]', '2021-10-25 15:36:32', '2021-10-26 07:06:44', '2021-10-26 07:06:44'),
(529, 1, '12', 60, 'image/jpeg', 185274, 'icon-mac-dinh/12.jpg', '[]', '2021-10-25 15:36:32', '2021-10-26 07:06:44', '2021-10-26 07:06:44'),
(530, 1, '13', 60, 'image/jpeg', 69297, 'icon-mac-dinh/13.jpg', '[]', '2021-10-25 15:36:32', '2021-10-26 07:06:44', '2021-10-26 07:06:44'),
(531, 1, '14', 60, 'image/jpeg', 136003, 'icon-mac-dinh/14.jpg', '[]', '2021-10-25 15:36:33', '2021-10-26 07:06:44', '2021-10-26 07:06:44'),
(532, 1, '15', 60, 'image/jpeg', 166471, 'icon-mac-dinh/15.jpg', '[]', '2021-10-25 15:36:33', '2021-10-26 07:06:44', '2021-10-26 07:06:44'),
(533, 1, '16', 60, 'image/jpeg', 92254, 'icon-mac-dinh/16.jpg', '[]', '2021-10-25 15:36:34', '2021-10-26 07:06:44', '2021-10-26 07:06:44'),
(534, 1, '17', 60, 'image/jpeg', 84240, 'icon-mac-dinh/17.jpg', '[]', '2021-10-25 15:36:34', '2021-10-26 07:06:44', '2021-10-26 07:06:44'),
(535, 1, '22', 61, 'image/png', 111307, 'icon-mac-dinh-1/22.png', '[]', '2021-10-26 07:17:41', '2021-11-11 09:00:48', '2021-11-11 09:00:48'),
(536, 1, '23', 61, 'image/png', 103209, 'icon-mac-dinh-1/23.png', '[]', '2021-10-26 07:17:42', '2021-11-11 09:00:49', '2021-11-11 09:00:49'),
(537, 1, '24', 61, 'image/png', 119000, 'icon-mac-dinh-1/24.png', '[]', '2021-10-26 07:17:42', '2021-11-11 09:00:49', '2021-11-11 09:00:49'),
(538, 1, '25', 61, 'image/png', 40567, 'icon-mac-dinh-1/25.png', '[]', '2021-10-26 07:17:43', '2021-11-11 09:00:49', '2021-11-11 09:00:49'),
(539, 1, '26', 61, 'image/png', 98419, 'icon-mac-dinh-1/26.png', '[]', '2021-10-26 07:17:43', '2021-11-11 09:00:49', '2021-11-11 09:00:49'),
(540, 1, '27', 61, 'image/png', 108748, 'icon-mac-dinh-1/27.png', '[]', '2021-10-26 07:17:44', '2021-11-11 09:00:49', '2021-11-11 09:00:49');
INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`) VALUES
(541, 1, '28', 61, 'image/png', 96869, 'icon-mac-dinh-1/28.png', '[]', '2021-10-26 07:17:44', '2021-11-11 09:00:49', '2021-11-11 09:00:49'),
(542, 1, '29', 61, 'image/png', 121245, 'icon-mac-dinh-1/29.png', '[]', '2021-10-26 07:17:45', '2021-11-11 09:00:49', '2021-11-11 09:00:49'),
(543, 1, '30', 61, 'image/png', 27498, 'icon-mac-dinh-1/30.png', '[]', '2021-10-26 07:17:46', '2021-11-11 09:00:49', '2021-11-11 09:00:49'),
(544, 1, '31', 61, 'image/png', 28751, 'icon-mac-dinh-1/31.png', '[]', '2021-10-26 07:17:46', '2021-11-11 09:00:49', '2021-11-11 09:00:49'),
(545, 1, '32', 61, 'image/png', 571992, 'icon-mac-dinh-1/32.png', '[]', '2021-10-26 07:17:47', '2021-11-11 09:00:49', '2021-11-11 09:00:49'),
(546, 1, '33', 61, 'image/png', 18959, 'icon-mac-dinh-1/33.png', '[]', '2021-10-26 07:17:47', '2021-11-11 09:00:49', '2021-11-11 09:00:49'),
(547, 1, '34', 61, 'image/png', 35983, 'icon-mac-dinh-1/34.png', '[]', '2021-10-26 07:17:48', '2021-11-11 09:00:49', '2021-11-11 09:00:49'),
(548, 1, 'ICON FB', 61, 'image/png', 75406, 'icon-mac-dinh-1/icon-fb.png', '[]', '2021-10-26 07:17:48', '2021-11-11 09:00:49', '2021-11-11 09:00:49'),
(549, 1, 'ICON', 61, 'image/png', 37063, 'icon-mac-dinh-1/icon.png', '[]', '2021-10-26 07:17:49', '2021-11-11 09:00:49', '2021-11-11 09:00:49'),
(550, 1, '2', 61, 'image/png', 119865, 'icon-mac-dinh-1/2.png', '[]', '2021-10-26 07:17:49', '2021-11-11 09:00:49', '2021-11-11 09:00:49'),
(551, 1, '3', 61, 'image/png', 154469, 'icon-mac-dinh-1/3.png', '[]', '2021-10-26 07:17:50', '2021-11-11 09:00:49', '2021-11-11 09:00:49'),
(552, 1, '4', 61, 'image/png', 94521, 'icon-mac-dinh-1/4.png', '[]', '2021-10-26 07:17:50', '2021-11-11 09:00:49', '2021-11-11 09:00:49'),
(553, 1, '5', 61, 'image/png', 398780, 'icon-mac-dinh-1/5.png', '[]', '2021-10-26 07:17:51', '2021-11-11 09:00:49', '2021-11-11 09:00:49'),
(554, 1, '6', 61, 'image/png', 110987, 'icon-mac-dinh-1/6.png', '[]', '2021-10-26 07:17:51', '2021-11-11 09:00:49', '2021-11-11 09:00:49'),
(555, 1, '7', 61, 'image/png', 82628, 'icon-mac-dinh-1/7.png', '[]', '2021-10-26 07:17:52', '2021-11-11 09:00:49', '2021-11-11 09:00:49'),
(556, 1, '8', 61, 'image/png', 87568, 'icon-mac-dinh-1/8.png', '[]', '2021-10-26 07:17:52', '2021-11-11 09:00:49', '2021-11-11 09:00:49'),
(557, 1, '9', 61, 'image/png', 75693, 'icon-mac-dinh-1/9.png', '[]', '2021-10-26 07:17:53', '2021-11-11 09:00:49', '2021-11-11 09:00:49'),
(558, 1, '10', 61, 'image/png', 119215, 'icon-mac-dinh-1/10.png', '[]', '2021-10-26 07:17:53', '2021-11-11 09:00:49', '2021-11-11 09:00:49'),
(559, 1, '11', 61, 'image/png', 91924, 'icon-mac-dinh-1/11.png', '[]', '2021-10-26 07:17:54', '2021-11-11 09:00:49', '2021-11-11 09:00:49'),
(560, 1, '12', 61, 'image/png', 183631, 'icon-mac-dinh-1/12.png', '[]', '2021-10-26 07:17:54', '2021-11-11 09:00:49', '2021-11-11 09:00:49'),
(561, 1, '13', 61, 'image/png', 53358, 'icon-mac-dinh-1/13.png', '[]', '2021-10-26 07:17:55', '2021-11-11 09:00:49', '2021-11-11 09:00:49'),
(562, 1, '14', 61, 'image/png', 125248, 'icon-mac-dinh-1/14.png', '[]', '2021-10-26 07:17:55', '2021-11-11 09:00:49', '2021-11-11 09:00:49'),
(563, 1, '15', 61, 'image/png', 164933, 'icon-mac-dinh-1/15.png', '[]', '2021-10-26 07:17:56', '2021-11-11 09:00:49', '2021-11-11 09:00:49'),
(564, 1, '18', 61, 'image/png', 81801, 'icon-mac-dinh-1/18.png', '[]', '2021-10-26 07:17:56', '2021-11-11 09:00:49', '2021-11-11 09:00:49'),
(565, 1, '20', 61, 'image/png', 103086, 'icon-mac-dinh-1/20.png', '[]', '2021-10-26 07:17:57', '2021-11-11 09:00:49', '2021-11-11 09:00:49'),
(566, 1, '21', 61, 'image/png', 140679, 'icon-mac-dinh-1/21.png', '[]', '2021-10-26 07:17:57', '2021-11-11 09:00:49', '2021-11-11 09:00:49'),
(567, 1, 'Credit Card Mockup', 58, 'image/jpeg', 1137830, 'shop-card/credit-card-mockup.jpg', '[]', '2021-10-28 08:56:07', '2021-10-28 08:56:07', NULL),
(568, 1, '4 4', 58, 'image/jpeg', 2288618, 'shop-card/4-4.jpg', '[]', '2021-10-28 08:56:08', '2021-10-28 08:56:08', NULL),
(569, 1, '33', 58, 'image/jpeg', 1202990, 'shop-card/33.jpg', '[]', '2021-10-28 08:56:09', '2021-10-28 08:56:09', NULL),
(570, 1, '55', 58, 'image/jpeg', 1250643, 'shop-card/55.jpg', '[]', '2021-10-28 08:56:09', '2021-10-28 08:56:09', NULL),
(571, 1, '66', 58, 'image/jpeg', 1147843, 'shop-card/66.jpg', '[]', '2021-10-28 08:56:10', '2021-10-28 08:56:10', NULL),
(572, 1, '77', 58, 'image/jpeg', 1215271, 'shop-card/77.jpg', '[]', '2021-10-28 08:56:10', '2021-10-28 08:56:10', NULL),
(573, 1, '22', 58, 'image/jpeg', 2098878, 'shop-card/22.jpg', '[]', '2021-10-28 08:57:09', '2021-10-28 08:57:09', NULL),
(574, 1, '27', 62, 'image/png', 19299, 'shop-card/black-icon/27.png', '[]', '2021-10-30 04:05:29', '2021-10-30 04:05:29', NULL),
(575, 1, '28', 62, 'image/png', 24947, 'shop-card/black-icon/28.png', '[]', '2021-10-30 04:05:30', '2021-10-30 04:05:30', NULL),
(576, 1, '29', 62, 'image/png', 36727, 'shop-card/black-icon/29.png', '[]', '2021-10-30 04:05:30', '2021-10-30 04:05:30', NULL),
(577, 1, '1', 62, 'image/png', 12646, 'shop-card/black-icon/1.png', '[]', '2021-10-30 04:05:31', '2021-10-30 04:05:31', NULL),
(578, 1, '2', 62, 'image/png', 22276, 'shop-card/black-icon/2.png', '[]', '2021-10-30 04:05:32', '2021-10-30 04:05:32', NULL),
(579, 1, '3', 62, 'image/png', 25671, 'shop-card/black-icon/3.png', '[]', '2021-10-30 04:05:32', '2021-10-30 04:05:32', NULL),
(580, 1, '4', 62, 'image/png', 15138, 'shop-card/black-icon/4.png', '[]', '2021-10-30 04:05:33', '2021-10-30 04:05:33', NULL),
(581, 1, '5', 62, 'image/png', 25008, 'shop-card/black-icon/5.png', '[]', '2021-10-30 04:05:33', '2021-10-30 04:05:33', NULL),
(582, 1, '6', 62, 'image/png', 19391, 'shop-card/black-icon/6.png', '[]', '2021-10-30 04:05:34', '2021-10-30 04:05:34', NULL),
(583, 1, '7', 62, 'image/png', 16113, 'shop-card/black-icon/7.png', '[]', '2021-10-30 04:05:34', '2021-10-30 04:05:34', NULL),
(584, 1, '8', 62, 'image/png', 17854, 'shop-card/black-icon/8.png', '[]', '2021-10-30 04:05:35', '2021-10-30 04:05:35', NULL),
(585, 1, '9', 62, 'image/png', 13627, 'shop-card/black-icon/9.png', '[]', '2021-10-30 04:05:35', '2021-10-30 04:05:35', NULL),
(586, 1, '10', 62, 'image/png', 21048, 'shop-card/black-icon/10.png', '[]', '2021-10-30 04:05:35', '2021-10-30 04:05:35', NULL),
(587, 1, '11', 62, 'image/png', 15935, 'shop-card/black-icon/11.png', '[]', '2021-10-30 04:05:36', '2021-10-30 04:05:36', NULL),
(588, 1, '12', 62, 'image/png', 31108, 'shop-card/black-icon/12.png', '[]', '2021-10-30 04:05:36', '2021-10-30 04:05:36', NULL),
(589, 1, '13', 62, 'image/png', 21931, 'shop-card/black-icon/13.png', '[]', '2021-10-30 04:05:37', '2021-10-30 04:05:37', NULL),
(590, 1, '14', 62, 'image/png', 25875, 'shop-card/black-icon/14.png', '[]', '2021-10-30 04:05:37', '2021-10-30 04:05:37', NULL),
(591, 1, '15', 62, 'image/png', 17597, 'shop-card/black-icon/15.png', '[]', '2021-10-30 04:05:38', '2021-10-30 04:05:38', NULL),
(592, 1, '16', 62, 'image/png', 19726, 'shop-card/black-icon/16.png', '[]', '2021-10-30 04:05:38', '2021-10-30 04:05:38', NULL),
(593, 1, '17', 62, 'image/png', 20823, 'shop-card/black-icon/17.png', '[]', '2021-10-30 04:05:39', '2021-10-30 04:05:39', NULL),
(594, 1, '18', 62, 'image/png', 19360, 'shop-card/black-icon/18.png', '[]', '2021-10-30 04:05:39', '2021-10-30 04:05:39', NULL),
(595, 1, '19', 62, 'image/png', 23200, 'shop-card/black-icon/19.png', '[]', '2021-10-30 04:05:40', '2021-10-30 04:05:40', NULL),
(596, 1, '20', 62, 'image/png', 22411, 'shop-card/black-icon/20.png', '[]', '2021-10-30 04:05:40', '2021-10-30 04:05:40', NULL),
(597, 1, '21', 62, 'image/png', 22288, 'shop-card/black-icon/21.png', '[]', '2021-10-30 04:05:41', '2021-10-30 04:05:41', NULL),
(598, 1, '22', 62, 'image/png', 18941, 'shop-card/black-icon/22.png', '[]', '2021-10-30 04:05:41', '2021-10-30 04:05:41', NULL),
(599, 1, '23', 62, 'image/png', 18852, 'shop-card/black-icon/23.png', '[]', '2021-10-30 04:05:42', '2021-10-30 04:05:42', NULL),
(600, 1, '24', 62, 'image/png', 31351, 'shop-card/black-icon/24.png', '[]', '2021-10-30 04:05:42', '2021-10-30 04:05:42', NULL),
(601, 1, '25', 62, 'image/png', 40255, 'shop-card/black-icon/25.png', '[]', '2021-10-30 04:05:43', '2021-10-30 04:05:43', NULL),
(602, 1, '26', 62, 'image/png', 30987, 'shop-card/black-icon/26.png', '[]', '2021-10-30 04:05:43', '2021-10-30 04:05:43', NULL),
(603, 1, 'r12', 56, 'image/jpeg', 233334, 'stick-shop/r12.jpg', '[]', '2021-11-08 06:58:33', '2021-11-08 06:58:33', NULL),
(604, 1, 'mc11', 56, 'image/jpeg', 793624, 'stick-shop/mc11.jpg', '[]', '2021-11-08 06:58:33', '2021-11-08 06:58:33', NULL),
(605, 1, '308608FE-35AA-4796-A35F-E710E8EA9847', 9, 'image/jpeg', 3462372, 'covers/308608fe-35aa-4796-a35f-e710e8ea9847.jpeg', '[]', '2021-11-09 10:04:23', '2021-11-14 17:49:09', '2021-11-14 17:49:09'),
(606, 1, '90E9EB64-772E-4416-89C1-37FE44D3B050', 9, 'image/jpeg', 76391, 'covers/90e9eb64-772e-4416-89c1-37fe44d3b050.jpeg', '[]', '2021-11-09 10:07:09', '2021-11-09 10:07:09', NULL),
(607, 1, '151ED94B-5579-4497-9B38-69AC3F98CC39', 9, 'image/jpeg', 3462372, 'covers/151ed94b-5579-4497-9b38-69ac3f98cc39.jpeg', '[]', '2021-11-09 10:36:17', '2021-11-14 17:49:09', '2021-11-14 17:49:09'),
(608, 1, '0CA9A903-1DA8-4D32-8274-8B53F8FB5F1E', 9, 'image/jpeg', 2474428, 'covers/0ca9a903-1da8-4d32-8274-8b53f8fb5f1e.jpeg', '[]', '2021-11-09 14:25:17', '2021-11-09 14:25:17', NULL),
(609, 1, 'B15EE8CA-B5BF-4FBC-9E04-474E3BF10526', 9, 'image/jpeg', 3079480, 'covers/b15ee8ca-b5bf-4fbc-9e04-474e3bf10526.jpeg', '[]', '2021-11-09 14:50:54', '2021-11-09 14:50:54', NULL),
(610, 1, 'BC9C78C8-1D52-4E0B-8593-BA82D4E3F9D0', 9, 'image/jpeg', 3462372, 'covers/bc9c78c8-1d52-4e0b-8593-ba82d4e3f9d0.jpeg', '[]', '2021-11-09 15:02:19', '2021-11-09 15:02:19', NULL),
(611, 1, '7A27D09C-7A81-40D8-985C-404872E3265E', 9, 'image/jpeg', 188060, 'covers/7a27d09c-7a81-40d8-985c-404872e3265e.jpeg', '[]', '2021-11-10 07:12:55', '2021-11-10 07:12:55', NULL),
(612, 1, '1', 63, 'image/png', 78147, 'shop-card/black-icon/icon-den-2/1.png', '[]', '2021-11-10 07:24:08', '2021-11-14 17:50:41', '2021-11-14 17:50:41'),
(613, 1, '2', 63, 'image/png', 76323, 'shop-card/black-icon/icon-den-2/2.png', '[]', '2021-11-10 07:24:08', '2021-11-14 17:50:41', '2021-11-14 17:50:41'),
(614, 1, '3', 63, 'image/png', 79084, 'shop-card/black-icon/icon-den-2/3.png', '[]', '2021-11-10 07:24:09', '2021-11-14 17:50:41', '2021-11-14 17:50:41'),
(615, 1, '4', 63, 'image/png', 79682, 'shop-card/black-icon/icon-den-2/4.png', '[]', '2021-11-10 07:24:09', '2021-11-14 17:50:41', '2021-11-14 17:50:41'),
(616, 1, '5', 63, 'image/png', 75036, 'shop-card/black-icon/icon-den-2/5.png', '[]', '2021-11-10 07:24:10', '2021-11-14 17:50:41', '2021-11-14 17:50:41'),
(617, 1, '6', 63, 'image/png', 75497, 'shop-card/black-icon/icon-den-2/6.png', '[]', '2021-11-10 07:24:10', '2021-11-14 17:50:41', '2021-11-14 17:50:41'),
(618, 1, '7', 63, 'image/png', 75636, 'shop-card/black-icon/icon-den-2/7.png', '[]', '2021-11-10 07:24:11', '2021-11-14 17:50:41', '2021-11-14 17:50:41'),
(619, 1, '8', 63, 'image/png', 73749, 'shop-card/black-icon/icon-den-2/8.png', '[]', '2021-11-10 07:24:11', '2021-11-14 17:50:41', '2021-11-14 17:50:41'),
(620, 1, '9', 63, 'image/png', 75164, 'shop-card/black-icon/icon-den-2/9.png', '[]', '2021-11-10 07:24:12', '2021-11-14 17:50:41', '2021-11-14 17:50:41'),
(621, 1, '10', 63, 'image/png', 46186, 'shop-card/black-icon/icon-den-2/10.png', '[]', '2021-11-10 07:24:12', '2021-11-14 17:50:41', '2021-11-14 17:50:41'),
(622, 1, '11', 63, 'image/png', 68144, 'shop-card/black-icon/icon-den-2/11.png', '[]', '2021-11-10 07:24:13', '2021-11-14 17:50:41', '2021-11-14 17:50:41'),
(623, 1, '12', 63, 'image/png', 63426, 'shop-card/black-icon/icon-den-2/12.png', '[]', '2021-11-10 07:24:13', '2021-11-14 17:50:41', '2021-11-14 17:50:41'),
(624, 1, '13', 63, 'image/png', 59492, 'shop-card/black-icon/icon-den-2/13.png', '[]', '2021-11-10 07:24:14', '2021-11-14 17:50:41', '2021-11-14 17:50:41'),
(625, 1, '14', 63, 'image/png', 66036, 'shop-card/black-icon/icon-den-2/14.png', '[]', '2021-11-10 07:24:14', '2021-11-14 17:50:41', '2021-11-14 17:50:41'),
(626, 1, '15', 63, 'image/png', 60919, 'shop-card/black-icon/icon-den-2/15.png', '[]', '2021-11-10 07:24:15', '2021-11-14 17:50:41', '2021-11-14 17:50:41'),
(627, 1, '16', 63, 'image/png', 70821, 'shop-card/black-icon/icon-den-2/16.png', '[]', '2021-11-10 07:24:15', '2021-11-14 17:50:41', '2021-11-14 17:50:41'),
(628, 1, '17', 63, 'image/png', 57050, 'shop-card/black-icon/icon-den-2/17.png', '[]', '2021-11-10 07:24:16', '2021-11-14 17:50:41', '2021-11-14 17:50:41'),
(629, 1, '18', 63, 'image/png', 55432, 'shop-card/black-icon/icon-den-2/18.png', '[]', '2021-11-10 07:24:16', '2021-11-14 17:50:41', '2021-11-14 17:50:41'),
(630, 1, '19', 63, 'image/png', 62524, 'shop-card/black-icon/icon-den-2/19.png', '[]', '2021-11-10 07:24:17', '2021-11-14 17:50:41', '2021-11-14 17:50:41'),
(631, 1, '20', 63, 'image/png', 49281, 'shop-card/black-icon/icon-den-2/20.png', '[]', '2021-11-10 07:24:17', '2021-11-14 17:50:41', '2021-11-14 17:50:41'),
(632, 1, '21', 63, 'image/png', 58611, 'shop-card/black-icon/icon-den-2/21.png', '[]', '2021-11-10 07:24:18', '2021-11-14 17:50:41', '2021-11-14 17:50:41'),
(633, 1, '22', 63, 'image/png', 53515, 'shop-card/black-icon/icon-den-2/22.png', '[]', '2021-11-10 07:24:18', '2021-11-14 17:50:41', '2021-11-14 17:50:41'),
(634, 1, '23', 63, 'image/png', 56308, 'shop-card/black-icon/icon-den-2/23.png', '[]', '2021-11-10 07:24:19', '2021-11-14 17:50:41', '2021-11-14 17:50:41'),
(635, 1, '25', 63, 'image/png', 60245, 'shop-card/black-icon/icon-den-2/25.png', '[]', '2021-11-10 07:24:19', '2021-11-14 17:50:41', '2021-11-14 17:50:41'),
(636, 1, '26', 63, 'image/png', 67400, 'shop-card/black-icon/icon-den-2/26.png', '[]', '2021-11-10 07:24:20', '2021-11-14 17:50:41', '2021-11-14 17:50:41'),
(637, 1, '27', 63, 'image/png', 77716, 'shop-card/black-icon/icon-den-2/27.png', '[]', '2021-11-10 07:24:20', '2021-11-14 17:50:41', '2021-11-14 17:50:41'),
(638, 1, '28', 63, 'image/png', 78406, 'shop-card/black-icon/icon-den-2/28.png', '[]', '2021-11-10 07:24:21', '2021-11-14 17:50:41', '2021-11-14 17:50:41'),
(639, 1, '29', 63, 'image/png', 74348, 'shop-card/black-icon/icon-den-2/29.png', '[]', '2021-11-10 07:24:21', '2021-11-14 17:50:41', '2021-11-14 17:50:41'),
(640, 1, '30', 63, 'image/png', 77852, 'shop-card/black-icon/icon-den-2/30.png', '[]', '2021-11-10 07:24:22', '2021-11-14 17:50:41', '2021-11-14 17:50:41'),
(641, 1, '31', 63, 'image/png', 74155, 'shop-card/black-icon/icon-den-2/31.png', '[]', '2021-11-10 07:24:22', '2021-11-14 17:50:41', '2021-11-14 17:50:41'),
(642, 1, '32', 63, 'image/png', 73568, 'shop-card/black-icon/icon-den-2/32.png', '[]', '2021-11-10 07:24:23', '2021-11-14 17:50:41', '2021-11-14 17:50:41'),
(643, 1, '33', 63, 'image/png', 75837, 'shop-card/black-icon/icon-den-2/33.png', '[]', '2021-11-10 07:24:23', '2021-11-14 17:50:41', '2021-11-14 17:50:41'),
(644, 1, '34', 63, 'image/png', 78367, 'shop-card/black-icon/icon-den-2/34.png', '[]', '2021-11-10 07:24:24', '2021-11-14 17:50:41', '2021-11-14 17:50:41'),
(645, 1, '18', 64, 'image/png', 31283, 'icon-mac-dinh-2/18.png', '[]', '2021-11-11 09:01:21', '2021-11-11 09:01:21', NULL),
(646, 1, '19', 64, 'image/png', 60917, 'icon-mac-dinh-2/19.png', '[]', '2021-11-11 09:01:22', '2021-11-11 09:01:22', NULL),
(647, 1, '20', 64, 'image/png', 30407, 'icon-mac-dinh-2/20.png', '[]', '2021-11-11 09:01:22', '2021-11-11 09:01:22', NULL),
(648, 1, '21', 64, 'image/png', 31221, 'icon-mac-dinh-2/21.png', '[]', '2021-11-11 09:01:23', '2021-11-11 09:01:23', NULL),
(649, 1, '22', 64, 'image/png', 29262, 'icon-mac-dinh-2/22.png', '[]', '2021-11-11 09:01:23', '2021-11-11 09:01:23', NULL),
(650, 1, '23', 64, 'image/png', 18903, 'icon-mac-dinh-2/23.png', '[]', '2021-11-11 09:01:24', '2021-11-11 09:01:24', NULL),
(651, 1, '24', 64, 'image/png', 37833, 'icon-mac-dinh-2/24.png', '[]', '2021-11-11 09:01:25', '2021-11-11 09:01:25', NULL),
(652, 1, 'ICON', 64, 'image/png', 28983, 'icon-mac-dinh-2/icon.png', '[]', '2021-11-11 09:01:26', '2021-11-11 09:01:26', NULL),
(653, 1, 'ZALO', 64, 'image/png', 28083, 'icon-mac-dinh-2/zalo.png', '[]', '2021-11-11 09:01:26', '2021-11-11 09:01:26', NULL),
(654, 1, '1', 64, 'image/png', 37063, 'icon-mac-dinh-2/1.png', '[]', '2021-11-11 09:01:27', '2021-11-11 09:01:27', NULL),
(655, 1, '2', 64, 'image/png', 217202, 'icon-mac-dinh-2/2.png', '[]', '2021-11-11 09:01:28', '2021-11-11 09:01:28', NULL),
(656, 1, '03', 64, 'image/png', 20270, 'icon-mac-dinh-2/03.png', '[]', '2021-11-11 09:01:28', '2021-11-11 09:01:28', NULL),
(657, 1, '04', 64, 'image/png', 28832, 'icon-mac-dinh-2/04.png', '[]', '2021-11-11 09:01:29', '2021-11-11 09:01:29', NULL),
(658, 1, '6', 64, 'image/png', 34189, 'icon-mac-dinh-2/6.png', '[]', '2021-11-11 09:01:30', '2021-11-11 09:01:30', NULL),
(659, 1, '7', 64, 'image/png', 27280, 'icon-mac-dinh-2/7.png', '[]', '2021-11-11 09:01:30', '2021-11-11 09:01:30', NULL),
(660, 1, '8', 64, 'image/png', 29049, 'icon-mac-dinh-2/8.png', '[]', '2021-11-11 09:01:31', '2021-11-11 09:01:31', NULL),
(661, 1, '9', 64, 'image/png', 29248, 'icon-mac-dinh-2/9.png', '[]', '2021-11-11 09:01:32', '2021-11-11 09:01:32', NULL),
(662, 1, '10', 64, 'image/png', 28468, 'icon-mac-dinh-2/10.png', '[]', '2021-11-11 09:01:32', '2021-11-11 09:01:32', NULL),
(663, 1, '11', 64, 'image/png', 23934, 'icon-mac-dinh-2/11.png', '[]', '2021-11-11 09:01:33', '2021-11-11 09:01:33', NULL),
(664, 1, '12', 64, 'image/png', 22856, 'icon-mac-dinh-2/12.png', '[]', '2021-11-11 09:01:33', '2021-11-11 09:01:33', NULL),
(665, 1, '13', 64, 'image/png', 24892, 'icon-mac-dinh-2/13.png', '[]', '2021-11-11 09:01:34', '2021-11-11 09:01:34', NULL),
(666, 1, '14', 64, 'image/png', 28953, 'icon-mac-dinh-2/14.png', '[]', '2021-11-11 09:01:34', '2021-11-11 09:01:34', NULL),
(667, 1, '15', 64, 'image/png', 30120, 'icon-mac-dinh-2/15.png', '[]', '2021-11-11 09:01:35', '2021-11-11 09:01:35', NULL),
(668, 1, '16', 64, 'image/png', 27685, 'icon-mac-dinh-2/16.png', '[]', '2021-11-11 09:01:36', '2021-11-11 09:01:36', NULL),
(669, 1, '111', 64, 'image/png', 25257, 'icon-mac-dinh-2/111.png', '[]', '2021-11-11 09:10:20', '2021-11-11 09:10:20', NULL),
(670, 1, '2112', 64, 'image/png', 29562, 'icon-mac-dinh-2/2112.png', '[]', '2021-11-11 09:15:49', '2021-11-11 09:15:49', NULL),
(671, 1, '22', 2, 'image/jpeg', 162177, 'social-icon/22.jpg', '[]', '2021-11-12 02:25:39', '2021-11-15 18:28:34', '2021-11-15 18:28:34'),
(672, 1, '11', 2, 'image/jpeg', 162339, 'social-icon/11.jpg', '[]', '2021-11-12 02:25:40', '2021-11-15 18:28:34', '2021-11-15 18:28:34'),
(673, 1, '11-3', 0, 'image/jpeg', 162339, '11-3.jpg', '[]', '2021-11-12 02:27:11', '2021-11-12 02:27:11', NULL),
(674, 1, '22-2', 0, 'image/jpeg', 162177, '22-2.jpg', '[]', '2021-11-12 02:27:12', '2021-11-12 02:27:12', NULL),
(675, 1, '44', 0, 'image/jpeg', 163028, '44.jpg', '[]', '2021-11-12 02:33:56', '2021-11-12 02:33:56', NULL),
(676, 1, '33', 0, 'image/jpeg', 162323, '33.jpg', '[]', '2021-11-12 02:33:56', '2021-11-12 02:33:56', NULL),
(677, 1, 'avatar 1636703788208', 3, 'image/png', 43882, 'avatars/avatar-1636703788208.png', '[]', '2021-11-12 00:56:29', '2021-11-12 00:56:29', NULL),
(678, 1, 'avatar 1636703856220', 3, 'image/png', 11640, 'avatars/avatar-1636703856220.png', '[]', '2021-11-12 00:57:37', '2021-11-12 00:57:37', NULL),
(679, 1, 'avatar 1636703950624', 3, 'image/png', 30992, 'avatars/avatar-1636703950624.png', '[]', '2021-11-12 00:59:11', '2021-11-12 00:59:11', NULL),
(680, 1, 'avatar 1636704014474', 3, 'image/png', 59688, 'avatars/avatar-1636704014474.png', '[]', '2021-11-12 01:00:15', '2021-11-12 01:00:15', NULL),
(681, 1, 'F25D96AA-50DA-4C80-98C3-5D255F73BEB7', 9, 'image/jpeg', 422462, 'covers/f25d96aa-50da-4c80-98c3-5d255f73beb7.jpeg', '[]', '2021-11-12 01:00:30', '2021-11-12 01:00:30', NULL),
(682, 1, 'F0E269FA-2B98-41C0-B0A1-8AFCCEDE11AF', 9, 'image/jpeg', 231919, 'covers/f0e269fa-2b98-41c0-b0a1-8afccede11af.jpeg', '[]', '2021-11-12 01:01:57', '2021-11-12 01:01:57', NULL),
(683, 1, '5DD7D23F-FE6C-4715-AFEA-7BDB95B114AB', 9, 'image/jpeg', 202279, 'covers/5dd7d23f-fe6c-4715-afea-7bdb95b114ab.jpeg', '[]', '2021-11-12 01:02:26', '2021-11-12 01:02:26', NULL),
(684, 1, '3DF92E01-D58C-4BA6-BAD1-6EB085321AC7', 9, 'image/jpeg', 127181, 'covers/3df92e01-d58c-4ba6-bad1-6eb085321ac7.jpeg', '[]', '2021-11-12 01:03:13', '2021-11-12 01:03:13', NULL),
(685, 1, 'D7918641-AD63-40BF-ACA0-B4CD8CDC1EBD', 9, 'image/jpeg', 112322, 'covers/d7918641-ad63-40bf-aca0-b4cd8cdc1ebd.jpeg', '[]', '2021-11-12 01:05:41', '2021-11-12 01:05:41', NULL),
(686, 1, 'BE337249-9A77-458D-AAC5-0DC6981D7360', 9, 'image/jpeg', 252927, 'covers/be337249-9a77-458d-aac5-0dc6981d7360.jpeg', '[]', '2021-11-12 01:06:14', '2021-11-12 01:06:14', NULL),
(687, 1, '6ADE5694-E6F3-4393-B30F-CE9E5A8EC204', 9, 'image/jpeg', 178008, 'covers/6ade5694-e6f3-4393-b30f-ce9e5a8ec204.jpeg', '[]', '2021-11-12 01:08:58', '2021-11-12 01:08:58', NULL),
(688, 1, '5E9E317B-A48B-418B-9E28-3FD20DEBE4ED', 9, 'image/jpeg', 492195, 'covers/5e9e317b-a48b-418b-9e28-3fd20debe4ed.jpeg', '[]', '2021-11-12 01:09:21', '2021-11-12 01:09:21', NULL),
(689, 1, 'avatar 1636704677733', 3, 'image/png', 43305, 'avatars/avatar-1636704677733.png', '[]', '2021-11-12 01:11:18', '2021-11-12 01:11:18', NULL),
(690, 1, 'avatar 1636708232985', 3, 'image/png', 133628, 'avatars/avatar-1636708232985.png', '[]', '2021-11-12 02:10:38', '2021-11-12 02:10:38', NULL),
(691, 1, 'avatar 1636708238027', 3, 'image/png', 133628, 'avatars/avatar-1636708238027.png', '[]', '2021-11-12 02:10:38', '2021-11-12 02:10:38', NULL),
(692, 1, 'avatar 1636708279494', 3, 'image/png', 11361, 'avatars/avatar-1636708279494.png', '[]', '2021-11-12 02:11:25', '2021-11-12 02:11:25', NULL),
(693, 0, 'avatar 1636708640899', 3, 'image/png', 7310, 'avatars/avatar-1636708640899.png', '[]', '2021-11-12 02:17:24', '2021-11-12 02:17:24', NULL),
(694, 1, '7-1', 64, 'image/png', 40377, 'icon-mac-dinh-2/7-1.png', '[]', '2021-11-12 03:42:53', '2021-11-12 03:42:53', NULL),
(695, 1, '8-1', 64, 'image/png', 38071, 'icon-mac-dinh-2/8-1.png', '[]', '2021-11-12 03:42:53', '2021-11-12 03:42:53', NULL),
(696, 1, '9-1', 64, 'image/png', 41548, 'icon-mac-dinh-2/9-1.png', '[]', '2021-11-12 03:42:54', '2021-11-12 03:42:54', NULL),
(697, 1, '10-1', 64, 'image/png', 33025, 'icon-mac-dinh-2/10-1.png', '[]', '2021-11-12 03:42:54', '2021-11-12 03:42:54', NULL),
(698, 1, '11-1', 64, 'image/png', 25031, 'icon-mac-dinh-2/11-1.png', '[]', '2021-11-12 03:42:55', '2021-11-12 03:42:55', NULL),
(699, 1, '12-1', 64, 'image/png', 50928, 'icon-mac-dinh-2/12-1.png', '[]', '2021-11-12 03:42:55', '2021-11-12 03:42:55', NULL),
(700, 1, '13-1', 64, 'image/png', 32706, 'icon-mac-dinh-2/13-1.png', '[]', '2021-11-12 03:42:55', '2021-11-12 03:42:55', NULL),
(701, 1, '14-1', 64, 'image/png', 30391, 'icon-mac-dinh-2/14-1.png', '[]', '2021-11-12 03:42:55', '2021-11-12 03:42:55', NULL),
(702, 1, '15-1', 64, 'image/png', 47416, 'icon-mac-dinh-2/15-1.png', '[]', '2021-11-12 03:42:55', '2021-11-12 03:42:55', NULL),
(703, 1, '16-1', 64, 'image/png', 39321, 'icon-mac-dinh-2/16-1.png', '[]', '2021-11-12 03:42:56', '2021-11-12 03:42:56', NULL),
(704, 1, '17', 64, 'image/png', 37067, 'icon-mac-dinh-2/17.png', '[]', '2021-11-12 03:42:56', '2021-11-12 03:42:56', NULL),
(705, 1, '18-1', 64, 'image/png', 42994, 'icon-mac-dinh-2/18-1.png', '[]', '2021-11-12 03:42:56', '2021-11-12 03:42:56', NULL),
(706, 1, '19-1', 64, 'image/png', 32947, 'icon-mac-dinh-2/19-1.png', '[]', '2021-11-12 03:42:57', '2021-11-12 03:42:57', NULL),
(707, 1, '20-1', 64, 'image/png', 37907, 'icon-mac-dinh-2/20-1.png', '[]', '2021-11-12 03:42:57', '2021-11-12 03:42:57', NULL),
(708, 1, '1-1', 64, 'image/png', 22636, 'icon-mac-dinh-2/1-1.png', '[]', '2021-11-12 03:42:57', '2021-11-12 03:42:57', NULL),
(709, 1, '2-1', 64, 'image/png', 31203, 'icon-mac-dinh-2/2-1.png', '[]', '2021-11-12 03:42:58', '2021-11-12 03:42:58', NULL),
(710, 1, '3', 64, 'image/png', 32551, 'icon-mac-dinh-2/3.png', '[]', '2021-11-12 03:42:58', '2021-11-12 03:42:58', NULL),
(711, 1, '4', 64, 'image/png', 37360, 'icon-mac-dinh-2/4.png', '[]', '2021-11-12 03:42:59', '2021-11-12 03:42:59', NULL),
(712, 1, '5', 64, 'image/png', 26072, 'icon-mac-dinh-2/5.png', '[]', '2021-11-12 03:42:59', '2021-11-12 03:42:59', NULL),
(713, 1, '6-1', 64, 'image/png', 34338, 'icon-mac-dinh-2/6-1.png', '[]', '2021-11-12 03:42:59', '2021-11-12 03:42:59', NULL),
(714, 1, 'avatar 1636768134237', 3, 'image/png', 43524, 'avatars/avatar-1636768134237.png', '[]', '2021-11-12 18:48:56', '2021-11-12 18:48:56', NULL),
(715, 1, 'avatar 1636768210288', 3, 'image/png', 67414, 'avatars/avatar-1636768210288.png', '[]', '2021-11-12 18:50:10', '2021-11-12 18:50:10', NULL),
(716, 1, 'avatar 1636768426446', 3, 'image/png', 117708, 'avatars/avatar-1636768426446.png', '[]', '2021-11-12 18:53:48', '2021-11-12 18:53:48', NULL),
(717, 1, 'avatar 1636781284975', 3, 'image/png', 134128, 'avatars/avatar-1636781284975.png', '[]', '2021-11-12 22:28:06', '2021-11-12 22:28:06', NULL),
(718, 1, 'logo gotap-2', 0, 'image/png', 40111, 'logo-gotap-2.png', '[]', '2021-11-13 19:09:56', '2021-11-13 19:12:43', '2021-11-13 19:12:43'),
(719, 1, 'logo gotap3', 0, 'image/png', 35563, 'logo-gotap3.png', '[]', '2021-11-13 19:12:28', '2021-11-13 19:12:43', '2021-11-13 19:12:43'),
(720, 1, 'logo gotap', 65, 'image/png', 40111, 'logo-1/logo-gotap.png', '[]', '2021-11-13 19:13:02', '2021-11-13 19:14:01', '2021-11-13 19:14:01'),
(721, 1, 'logo gotap3', 65, 'image/png', 35563, 'logo-1/logo-gotap3.png', '[]', '2021-11-13 19:13:03', '2021-11-13 19:14:01', '2021-11-13 19:14:01'),
(722, 1, 'logo gotap2', 65, 'image/png', 37617, 'logo-1/logo-gotap2.png', '[]', '2021-11-13 19:13:04', '2021-11-13 19:14:01', '2021-11-13 19:14:01'),
(723, 1, '10069', 65, 'image/jpeg', 3139163, 'logo-1/10069.jpg', '[]', '2021-11-13 19:13:04', '2021-11-13 19:14:01', '2021-11-13 19:14:01'),
(724, 1, '10069-1', 65, 'image/png', 3857496, 'logo-1/10069-1.png', '[]', '2021-11-13 19:13:05', '2021-11-13 19:14:01', '2021-11-13 19:14:01'),
(725, 1, '11', 65, 'image/jpeg', 1402773, 'logo-1/11.jpg', '[]', '2021-11-13 19:13:06', '2021-11-13 19:14:01', '2021-11-13 19:14:01'),
(726, 1, 'abstract-hologram-gradient-background', 65, 'application/x-gzip', 374751, 'logo-1/abstract-hologram-gradient-background.zip', '[]', '2021-11-13 19:13:06', '2021-11-13 19:14:01', '2021-11-13 19:14:01'),
(727, 1, 'CAMO TACH NEN', 65, 'image/png', 2314867, 'logo-1/camo-tach-nen.png', '[]', '2021-11-13 19:13:07', '2021-11-13 19:14:01', '2021-11-13 19:14:01'),
(728, 1, 'CAMO', 65, 'image/jpeg', 1467100, 'logo-1/camo.jpg', '[]', '2021-11-13 19:13:07', '2021-11-13 19:14:01', '2021-11-13 19:14:01'),
(729, 1, 'CAMO-1', 65, 'application/pdf', 449138, 'logo-1/camo-1.pdf', '[]', '2021-11-13 19:13:08', '2021-11-13 19:14:01', '2021-11-13 19:14:01'),
(730, 1, 'FILE IN STICKER 100C', 65, 'application/pdf', 401263488, 'logo-1/file-in-sticker-100c.pdf', '[]', '2021-11-13 19:13:56', '2021-11-13 19:14:21', '2021-11-13 19:14:21'),
(731, 1, 'file in sticker', 65, 'application/pdf', 422057494, 'logo-1/file-in-sticker.pdf', '[]', '2021-11-13 19:15:30', '2021-11-13 19:23:37', '2021-11-13 19:23:37'),
(732, 1, 'GO TACH NEN', 65, 'image/png', 15132454, 'logo-1/go-tach-nen.png', '[]', '2021-11-13 19:15:33', '2021-11-13 19:23:37', '2021-11-13 19:23:37'),
(733, 1, 'HỒNG BLACK PINK', 65, 'application/pdf', 3793713, 'logo-1/hong-black-pink.pdf', '[]', '2021-11-13 19:15:34', '2021-11-13 19:23:37', '2021-11-13 19:23:37'),
(734, 1, 'HỒNG BLACK PINK1', 65, 'image/jpeg', 192209, 'logo-1/hong-black-pink1.jpg', '[]', '2021-11-13 19:15:35', '2021-11-13 19:23:37', '2021-11-13 19:23:37'),
(735, 1, 'icon-wifi', 65, 'image/jpeg', 31441, 'logo-1/icon-wifi.jpg', '[]', '2021-11-13 19:15:35', '2021-11-13 19:23:37', '2021-11-13 19:23:37'),
(736, 1, 'LAP LANH TACH NEN', 65, 'image/png', 21858789, 'logo-1/lap-lanh-tach-nen.png', '[]', '2021-11-13 19:15:38', '2021-11-13 19:23:37', '2021-11-13 19:23:37'),
(737, 1, 'pink-blue-pastel-shimmery-dreamy-pattern-wallpaper', 65, 'application/x-gzip', 42114414, 'logo-1/pink-blue-pastel-shimmery-dreamy-pattern-wallpaper.zip', '[]', '2021-11-13 19:15:42', '2021-11-13 19:23:37', '2021-11-13 19:23:37'),
(738, 1, 'rm301-beer-01', 65, 'image/jpeg', 21881598, 'logo-1/rm301-beer-01.jpg', '[]', '2021-11-13 19:15:45', '2021-11-13 19:23:37', '2021-11-13 19:23:37'),
(739, 1, 'ST CAMO', 65, 'application/pdf', 635885, 'logo-1/st-camo.pdf', '[]', '2021-11-13 19:15:46', '2021-11-13 19:23:37', '2021-11-13 19:23:37'),
(740, 1, 'ST DEN', 65, 'application/pdf', 164705, 'logo-1/st-den.pdf', '[]', '2021-11-13 19:15:46', '2021-11-13 19:23:37', '2021-11-13 19:23:37'),
(741, 1, 'ST DEN-1', 65, 'image/png', 11795, 'logo-1/st-den-1.png', '[]', '2021-11-13 19:15:47', '2021-11-13 19:23:37', '2021-11-13 19:23:37'),
(742, 1, 'ST GỖ', 65, 'application/pdf', 3793730, 'logo-1/st-go.pdf', '[]', '2021-11-13 19:15:47', '2021-11-13 19:23:37', '2021-11-13 19:23:37'),
(743, 1, 'ST HONG', 65, 'application/pdf', 161006, 'logo-1/st-hong.pdf', '[]', '2021-11-13 19:15:48', '2021-11-13 19:23:37', '2021-11-13 19:23:37'),
(744, 1, 'ST TRANG', 65, 'application/pdf', 157785, 'logo-1/st-trang.pdf', '[]', '2021-11-13 19:15:48', '2021-11-13 19:23:37', '2021-11-13 19:23:37'),
(745, 1, 'ST XANH', 65, 'application/pdf', 164851, 'logo-1/st-xanh.pdf', '[]', '2021-11-13 19:15:49', '2021-11-13 19:23:37', '2021-11-13 19:23:37'),
(746, 1, 'unique-army-pattern-background', 65, 'application/x-gzip', 2439520, 'logo-1/unique-army-pattern-background.zip', '[]', '2021-11-13 19:15:50', '2021-11-13 19:23:37', '2021-11-13 19:23:37'),
(747, 1, 'logo gotap-1', 65, 'image/png', 40111, 'logo-1/logo-gotap-1.png', '[]', '2021-11-13 19:15:50', '2021-11-13 19:23:37', '2021-11-13 19:23:37'),
(748, 1, 'logo gotap3-1', 65, 'image/png', 35563, 'logo-1/logo-gotap3-1.png', '[]', '2021-11-13 19:15:51', '2021-11-13 19:23:37', '2021-11-13 19:23:37'),
(749, 1, 'logo gotap2-1', 65, 'image/png', 37617, 'logo-1/logo-gotap2-1.png', '[]', '2021-11-13 19:15:51', '2021-11-13 19:23:37', '2021-11-13 19:23:37'),
(750, 1, 'logo gotap-2', 65, 'image/png', 40111, 'logo-1/logo-gotap-2.png', '[]', '2021-11-13 19:15:52', '2021-11-13 19:23:37', '2021-11-13 19:23:37'),
(751, 1, 'logo gotap3-2', 65, 'image/png', 35563, 'logo-1/logo-gotap3-2.png', '[]', '2021-11-13 19:15:52', '2021-11-13 19:23:37', '2021-11-13 19:23:37'),
(752, 1, 'logo gotap2-2', 65, 'image/png', 37617, 'logo-1/logo-gotap2-2.png', '[]', '2021-11-13 19:15:53', '2021-11-13 19:23:37', '2021-11-13 19:23:37'),
(753, 1, 'logo gotap3-3', 65, 'image/png', 35563, 'logo-1/logo-gotap3-3.png', '[]', '2021-11-13 19:15:53', '2021-11-13 19:23:37', '2021-11-13 19:23:37'),
(754, 1, 'logo gotap2-3', 65, 'image/png', 37617, 'logo-1/logo-gotap2-3.png', '[]', '2021-11-13 19:15:53', '2021-11-13 19:23:37', '2021-11-13 19:23:37'),
(755, 1, 'logo gotap-3', 65, 'image/png', 40111, 'logo-1/logo-gotap-3.png', '[]', '2021-11-13 19:15:54', '2021-11-13 19:23:37', '2021-11-13 19:23:37'),
(756, 1, 'logo gotap-4', 65, 'image/png', 40111, 'logo-1/logo-gotap-4.png', '[]', '2021-11-13 19:15:54', '2021-11-13 19:23:37', '2021-11-13 19:23:37'),
(757, 1, 'logo gotap3-4', 65, 'image/png', 35563, 'logo-1/logo-gotap3-4.png', '[]', '2021-11-13 19:15:55', '2021-11-13 19:23:37', '2021-11-13 19:23:37'),
(758, 1, 'logo gotap2-4', 65, 'image/png', 37617, 'logo-1/logo-gotap2-4.png', '[]', '2021-11-13 19:15:55', '2021-11-13 19:23:37', '2021-11-13 19:23:37'),
(759, 1, 'logo gotap3-5', 65, 'image/png', 35563, 'logo-1/logo-gotap3-5.png', '[]', '2021-11-13 19:15:55', '2021-11-13 19:23:37', '2021-11-13 19:23:37'),
(760, 1, 'logo gotap2-5', 65, 'image/png', 37617, 'logo-1/logo-gotap2-5.png', '[]', '2021-11-13 19:15:56', '2021-11-13 19:23:37', '2021-11-13 19:23:37'),
(761, 1, 'logo gotap-5', 65, 'image/png', 40111, 'logo-1/logo-gotap-5.png', '[]', '2021-11-13 19:15:56', '2021-11-13 19:23:37', '2021-11-13 19:23:37'),
(762, 1, 'logo gotap3-6', 65, 'image/png', 35563, 'logo-1/logo-gotap3-6.png', '[]', '2021-11-13 19:15:57', '2021-11-13 19:23:37', '2021-11-13 19:23:37'),
(763, 1, 'logo gotap2-6', 65, 'image/png', 37617, 'logo-1/logo-gotap2-6.png', '[]', '2021-11-13 19:15:57', '2021-11-13 19:23:37', '2021-11-13 19:23:37'),
(764, 1, 'logo gotap-6', 65, 'image/png', 40111, 'logo-1/logo-gotap-6.png', '[]', '2021-11-13 19:15:57', '2021-11-13 19:23:37', '2021-11-13 19:23:37'),
(765, 1, 'logo gotap3-7', 65, 'image/png', 35563, 'logo-1/logo-gotap3-7.png', '[]', '2021-11-13 19:23:50', '2021-11-13 19:23:50', NULL),
(766, 1, 'logo gotap2-7', 65, 'image/png', 37617, 'logo-1/logo-gotap2-7.png', '[]', '2021-11-13 19:24:12', '2021-11-13 19:24:12', NULL),
(767, 1, 'logo gotap-7', 65, 'image/png', 40111, 'logo-1/logo-gotap-7.png', '[]', '2021-11-13 19:24:18', '2021-11-13 19:24:18', NULL),
(768, 1, 'logo 4', 65, 'image/png', 36574, 'logo-1/logo-4.png', '[]', '2021-11-13 19:26:23', '2021-11-13 19:26:23', NULL),
(769, 1, 'avatar 1636857956116', 3, 'image/png', 11640, 'avatars/avatar-1636857956116.png', '[]', '2021-11-13 19:45:56', '2021-11-13 19:45:56', NULL),
(770, 1, 'avatar 1636858980047', 3, 'image/png', 38277, 'avatars/avatar-1636858980047.png', '[]', '2021-11-13 20:03:00', '2021-11-13 20:03:00', NULL),
(771, 1, 'avatar 1636859141600', 3, 'image/png', 43154, 'avatars/avatar-1636859141600.png', '[]', '2021-11-13 20:05:42', '2021-11-13 20:05:42', NULL),
(772, 1, 'pink 1', 53, 'image/png', 31174, 'icon-pink-2/pink-1.png', '[]', '2021-11-14 18:02:37', '2021-11-14 18:03:02', '2021-11-14 18:03:02'),
(773, 1, 'pink 2', 53, 'image/png', 34909, 'icon-pink-2/pink-2.png', '[]', '2021-11-14 18:02:38', '2021-11-14 18:03:02', '2021-11-14 18:03:02'),
(774, 1, 'pink 2-1', 53, 'image/png', 33759, 'icon-pink-2/pink-2-1.png', '[]', '2021-11-14 18:11:12', '2021-11-14 18:11:45', '2021-11-14 18:11:45'),
(775, 1, 'pink 1-1', 53, 'image/png', 30095, 'icon-pink-2/pink-1-1.png', '[]', '2021-11-14 18:11:12', '2021-11-14 18:11:45', '2021-11-14 18:11:45'),
(776, 1, '2-1', 53, 'image/png', 12803, 'icon-pink-2/2-1.png', '[]', '2021-11-14 18:16:21', '2021-11-14 18:16:21', NULL),
(777, 1, '1 -1', 53, 'image/png', 11860, 'icon-pink-2/1-1.png', '[]', '2021-11-14 18:16:22', '2021-11-14 18:16:22', NULL),
(778, 1, 'z2935045546811_9a4fab561f5a2157f7fbf3b9f25cf1ae', 65, 'image/jpeg', 450561, 'logo-1/z2935045546811-9a4fab561f5a2157f7fbf3b9f25cf1ae.jpg', '[]', '2021-11-14 18:21:41', '2021-11-14 18:21:41', NULL),
(779, 1, 'z2935045557100_90f5750138d387d06e876d8b44dc0d47', 65, 'image/jpeg', 462216, 'logo-1/z2935045557100-90f5750138d387d06e876d8b44dc0d47.jpg', '[]', '2021-11-14 18:21:42', '2021-11-14 18:21:42', NULL),
(780, 1, 'z2935045554515_e9b4c1bf3c288745c4df122b533c8296', 65, 'image/jpeg', 464892, 'logo-1/z2935045554515-e9b4c1bf3c288745c4df122b533c8296.jpg', '[]', '2021-11-14 18:21:42', '2021-11-14 18:21:42', NULL),
(781, 1, 'z2935045569514_ab3ede6bce0024a6cbcb8fa7e3116244', 65, 'image/jpeg', 501226, 'logo-1/z2935045569514-ab3ede6bce0024a6cbcb8fa7e3116244.jpg', '[]', '2021-11-14 18:21:43', '2021-11-14 18:21:43', NULL),
(782, 1, 'z2935045569283_f66c8a89069d5c9715c1cb65406b1bbe', 65, 'image/jpeg', 448744, 'logo-1/z2935045569283-f66c8a89069d5c9715c1cb65406b1bbe.jpg', '[]', '2021-11-14 18:21:43', '2021-11-14 18:21:43', NULL),
(783, 1, 'avatar 1637163426976', 3, 'image/png', 111012, 'avatars/avatar-1637163426976.png', '[]', '2021-11-17 08:37:07', '2021-11-17 08:37:07', NULL),
(784, 1, '6488870379945157995', 50, 'video/mp4', 4206920, 'videos/6488870379945157995.mp4', '[]', '2021-11-18 00:08:41', '2021-11-18 00:08:41', NULL),
(785, 0, 'avatar 1637382624882', 3, 'image/png', 109132, 'avatars/avatar-1637382624882.png', '[]', '2021-11-19 21:30:25', '2021-11-19 21:30:25', NULL),
(786, 0, 'avatar 1637382655428', 3, 'image/png', 106430, 'avatars/avatar-1637382655428.png', '[]', '2021-11-19 21:30:56', '2021-11-19 21:30:56', NULL),
(787, 0, '430EC836-FBD3-401C-84CB-C18291F37086', 9, 'image/jpeg', 5568332, 'covers/430ec836-fbd3-401c-84cb-c18291f37086.jpeg', '[]', '2021-11-19 21:31:25', '2021-11-19 21:31:25', NULL),
(788, 0, 'B83F2B75-FEC8-41FF-9BB6-805C6582E332', 9, 'image/jpeg', 3514296, 'covers/b83f2b75-fec8-41ff-9bb6-805c6582e332.jpeg', '[]', '2021-11-19 21:31:54', '2021-11-19 21:31:54', NULL),
(789, 0, 'avatar 1637383141611', 3, 'image/png', 141893, 'avatars/avatar-1637383141611.png', '[]', '2021-11-19 21:39:04', '2021-11-19 21:39:04', NULL),
(790, 0, 'avatar 1637383144123', 3, 'image/png', 141893, 'avatars/avatar-1637383144123.png', '[]', '2021-11-19 21:39:04', '2021-11-19 21:39:04', NULL),
(791, 1, 'avatar 1637492874268', 3, 'image/png', 114612, 'avatars/avatar-1637492874268.png', '[]', '2021-11-21 04:07:54', '2021-11-21 04:07:54', NULL),
(792, 1, '9E86EABF-61B1-4D60-84DC-A94CF588F8FC', 9, 'image/jpeg', 562077, 'covers/9e86eabf-61b1-4d60-84dc-a94cf588f8fc.jpeg', '[]', '2021-11-21 04:11:34', '2021-11-21 04:11:34', NULL),
(793, 1, 'FB2E9B0C-86B1-4BDF-8735-016391388906', 9, 'image/jpeg', 168193, 'covers/fb2e9b0c-86b1-4bdf-8735-016391388906.jpeg', '[]', '2021-11-21 04:12:41', '2021-11-21 04:12:41', NULL),
(794, 1, '38D0E7D1-83D3-43FD-909D-BDAE64D93BCE', 9, 'image/jpeg', 156546, 'covers/38d0e7d1-83d3-43fd-909d-bdae64d93bce.jpeg', '[]', '2021-11-21 04:13:35', '2021-11-21 04:13:35', NULL),
(795, 1, '6208E944-0180-498E-AA76-3E26DB2C77CE', 9, 'image/jpeg', 395792, 'covers/6208e944-0180-498e-aa76-3e26db2c77ce.jpeg', '[]', '2021-11-21 04:13:54', '2021-11-21 04:13:54', NULL),
(796, 1, 'BB5D0BFA-5450-411C-81E4-D84713E07C88', 9, 'image/jpeg', 1106538, 'covers/bb5d0bfa-5450-411c-81e4-d84713e07c88.jpeg', '[]', '2021-11-21 04:14:21', '2021-11-21 04:14:21', NULL),
(797, 1, 'avatar 1637570740928', 3, 'image/png', 114612, 'avatars/avatar-1637570740928.png', '[]', '2021-11-22 01:45:41', '2021-11-22 01:45:41', NULL),
(798, 1, '9FD9003D-59E1-4737-88F4-4A968FFDAAFC', 9, 'image/jpeg', 127181, 'covers/9fd9003d-59e1-4737-88f4-4a968ffdaafc.jpeg', '[]', '2021-11-22 01:46:00', '2021-11-22 01:46:00', NULL),
(799, 0, 'avatar 1637571628965', 3, 'image/png', 135109, 'avatars/avatar-1637571628965.png', '[]', '2021-11-22 02:00:29', '2021-11-22 02:00:29', NULL),
(800, 0, '0815A0DF-A28F-4270-9CD5-09850552437F', 9, 'image/jpeg', 4831695, 'covers/0815a0df-a28f-4270-9cd5-09850552437f.jpeg', '[]', '2021-11-22 03:22:53', '2021-11-22 03:22:53', NULL),
(801, 0, '6F4B0C72-7DD6-4B67-B1A3-4FED34C9E78C', 9, 'image/jpeg', 2202451, 'covers/6f4b0c72-7dd6-4b67-b1a3-4fed34c9e78c.jpeg', '[]', '2021-11-22 03:23:15', '2021-11-22 03:23:15', NULL),
(802, 0, '566BCD0B-98DF-4921-8E01-380D2790860F', 9, 'image/jpeg', 157798, 'covers/566bcd0b-98df-4921-8e01-380d2790860f.jpeg', '[]', '2021-11-22 03:23:50', '2021-11-22 03:23:50', NULL),
(803, 0, 'avatar 1637665443856', 3, 'image/png', 111675, 'avatars/avatar-1637665443856.png', '[]', '2021-11-23 04:04:05', '2021-11-23 04:04:05', NULL),
(804, 0, 'E8FD66BF-9D85-4462-9BEF-85D594F48D4B', 9, 'image/jpeg', 3990266, 'covers/e8fd66bf-9d85-4462-9bef-85d594f48d4b.jpeg', '[]', '2021-11-23 04:04:42', '2021-11-23 04:04:42', NULL),
(805, 0, 'avatar 1637665580566', 3, 'image/png', 111675, 'avatars/avatar-1637665580566.png', '[]', '2021-11-23 04:06:21', '2021-11-23 04:06:21', NULL),
(806, 0, '10E4DD35-8034-4C5C-B272-84E444A69B4F', 9, 'image/jpeg', 1430280, 'covers/10e4dd35-8034-4c5c-b272-84e444a69b4f.jpeg', '[]', '2021-11-23 04:06:50', '2021-11-23 04:06:50', NULL),
(807, 0, 'avatar 1637681908835', 3, 'image/png', 112597, 'avatars/avatar-1637681908835.png', '[]', '2021-11-23 08:38:29', '2021-11-23 08:38:29', NULL),
(808, 0, '71A83A87-E2DB-444B-B926-5AE72FA8A2D1', 9, 'image/jpeg', 1395538, 'covers/71a83a87-e2db-444b-b926-5ae72fa8a2d1.jpeg', '[]', '2021-11-23 08:38:55', '2021-11-23 08:38:55', NULL),
(809, 0, '9CCFC702-91DF-46CA-9115-204D27B01B5C', 9, 'image/jpeg', 360943, 'covers/9ccfc702-91df-46ca-9115-204d27b01b5c.jpeg', '[]', '2021-11-23 08:39:07', '2021-11-23 08:39:07', NULL),
(810, 0, '02DD9483-EA9B-4EDC-A465-D2379B69CA3A', 9, 'image/jpeg', 1872814, 'covers/02dd9483-ea9b-4edc-a465-d2379b69ca3a.jpeg', '[]', '2021-11-23 08:39:27', '2021-11-23 08:39:27', NULL),
(811, 0, '1C77A94B-E6C3-4EE2-A128-C0577D80C260', 9, 'image/jpeg', 2928011, 'covers/1c77a94b-e6c3-4ee2-a128-c0577d80c260.jpeg', '[]', '2021-11-23 08:39:46', '2021-11-23 08:39:46', NULL),
(812, 0, 'avatar 1637730727516', 3, 'image/png', 114612, 'avatars/avatar-1637730727516.png', '[]', '2021-11-23 22:12:07', '2021-11-23 22:12:07', NULL),
(813, 0, '4745290D-4C0F-4A2D-895E-149C7950E229', 9, 'image/jpeg', 191809, 'covers/4745290d-4c0f-4a2d-895e-149c7950e229.jpeg', '[]', '2021-11-23 22:12:26', '2021-12-04 19:32:42', '2021-12-04 19:32:42'),
(814, 1, 'avatar 1637730929299', 3, 'image/png', 114612, 'avatars/avatar-1637730929299.png', '[]', '2021-11-23 22:15:29', '2021-11-23 22:15:29', NULL),
(815, 1, '3C4B983C-0A6F-465F-8F54-EE5E8ACF61B8', 9, 'image/jpeg', 191809, 'covers/3c4b983c-0a6f-465f-8f54-ee5e8acf61b8.jpeg', '[]', '2021-11-23 22:15:40', '2021-12-04 19:32:42', '2021-12-04 19:32:42'),
(816, 1, '1A7E6F6B-A236-4F72-97D5-E5B58CCF9366', 9, 'image/jpeg', 191809, 'covers/1a7e6f6b-a236-4f72-97d5-e5b58ccf9366.jpeg', '[]', '2021-11-23 22:17:17', '2021-12-04 19:32:42', '2021-12-04 19:32:42'),
(817, 1, 'avatar 1637731047173', 3, 'image/png', 114345, 'avatars/avatar-1637731047173.png', '[]', '2021-11-23 22:17:27', '2021-11-23 22:17:27', NULL),
(818, 0, 'avatar 1637765716788', 3, 'image/png', 110904, 'avatars/avatar-1637765716788.png', '[]', '2021-11-24 07:55:17', '2021-11-24 07:55:17', NULL),
(819, 0, '0A88AD02-DAC9-415C-856F-D72897FC98B2', 9, 'image/jpeg', 8976981, 'covers/0a88ad02-dac9-415c-856f-d72897fc98b2.jpeg', '[]', '2021-11-24 07:56:23', '2021-11-24 07:56:23', NULL),
(820, 0, 'avatar 1637767313776', 3, 'image/png', 113736, 'avatars/avatar-1637767313776.png', '[]', '2021-11-24 08:21:54', '2021-11-24 08:21:54', NULL),
(821, 0, '73C01BB4-3122-4647-9DFC-5EC764E11678', 9, 'image/jpeg', 1757724, 'covers/73c01bb4-3122-4647-9dfc-5ec764e11678.jpeg', '[]', '2021-11-24 08:28:09', '2021-11-24 08:28:09', NULL),
(822, 0, '7BE6DF42-6E08-46B5-9EDF-67B71F6F2F2E', 9, 'image/jpeg', 1757724, 'covers/7be6df42-6e08-46b5-9edf-67b71f6f2f2e.jpeg', '[]', '2021-11-24 08:28:47', '2021-11-24 08:28:47', NULL),
(823, 0, 'avatar 1637835174004', 3, 'image/png', 110051, 'avatars/avatar-1637835174004.png', '[]', '2021-11-25 03:12:54', '2021-11-25 03:12:54', NULL),
(824, 0, 'CBBDA291-CC57-4D2E-848E-798EFEFF5832', 9, 'image/jpeg', 1413476, 'covers/cbbda291-cc57-4d2e-848e-798efeff5832.jpeg', '[]', '2021-11-25 03:13:38', '2021-11-25 03:13:38', NULL),
(825, 0, 'avatar 1637838155424', 3, 'image/png', 140146, 'avatars/avatar-1637838155424.png', '[]', '2021-11-25 04:02:36', '2021-11-25 04:02:36', NULL),
(826, 0, '79F9F9FF-E19F-42BB-9BA0-5D4F115AE383', 9, 'image/jpeg', 182219, 'covers/79f9f9ff-e19f-42bb-9ba0-5d4f115ae383.jpeg', '[]', '2021-11-25 04:03:32', '2021-11-25 04:03:32', NULL),
(827, 0, 'avatar 1638011792768', 3, 'image/png', 127366, 'avatars/avatar-1638011792768.png', '[]', '2021-11-27 04:16:33', '2021-11-27 04:16:33', NULL),
(828, 0, '989366F3-A413-4C43-BA15-3D7A9C7E2C44', 9, 'image/jpeg', 561355, 'covers/989366f3-a413-4c43-ba15-3d7a9c7e2c44.jpeg', '[]', '2021-11-27 04:17:34', '2021-11-27 04:17:34', NULL),
(829, 0, 'avatar 1638011961903', 3, 'image/png', 128085, 'avatars/avatar-1638011961903.png', '[]', '2021-11-27 04:19:22', '2021-11-27 04:19:22', NULL),
(830, 0, '6C5C918C-0860-4926-95A0-312EED1D768A', 9, 'image/jpeg', 438944, 'covers/6c5c918c-0860-4926-95a0-312eed1d768a.jpeg', '[]', '2021-11-27 04:20:16', '2021-11-27 04:20:16', NULL),
(831, 0, 'avatar 1638016841558', 3, 'image/png', 137049, 'avatars/avatar-1638016841558.png', '[]', '2021-11-27 05:40:42', '2021-11-27 05:40:42', NULL),
(832, 0, '89DE1C3F-CEA1-4BFD-9723-17A4376C5DE2', 9, 'image/jpeg', 1937813, 'covers/89de1c3f-cea1-4bfd-9723-17a4376c5de2.jpeg', '[]', '2021-11-27 05:41:12', '2021-11-27 05:41:12', NULL),
(833, 0, 'avatar 1638019588408', 3, 'image/png', 112123, 'avatars/avatar-1638019588408.png', '[]', '2021-11-27 06:26:29', '2021-11-27 06:26:29', NULL),
(834, 0, 'E43B615A-B6A4-4EFA-932B-87861750AECE', 9, 'image/jpeg', 329858, 'covers/e43b615a-b6a4-4efa-932b-87861750aece.jpeg', '[]', '2021-11-27 06:27:03', '2021-11-27 06:27:03', NULL),
(835, 1, 'F09FEB40-F8DA-4415-AD75-60A03113CFD6', 9, 'image/jpeg', 231919, 'covers/f09feb40-f8da-4415-ad75-60a03113cfd6.jpeg', '[]', '2021-11-29 07:53:44', '2021-11-29 07:53:44', NULL),
(836, 1, '544B8498-58B2-48D4-BF8D-A8B0204EC1C3', 9, 'image/jpeg', 202279, 'covers/544b8498-58b2-48d4-bf8d-a8b0204ec1c3.jpeg', '[]', '2021-11-29 07:54:27', '2021-11-29 07:54:27', NULL),
(837, 0, '4915CA7E-92A8-47BD-8040-05E4190118E2', 9, 'image/jpeg', 4401790, 'covers/4915ca7e-92a8-47bd-8040-05e4190118e2.jpeg', '[]', '2021-11-29 20:46:40', '2021-11-29 20:46:40', NULL),
(838, 0, '6209FAAF-364F-4C03-B26D-07CC327A49F4', 9, 'image/jpeg', 184036, 'covers/6209faaf-364f-4c03-b26d-07cc327a49f4.jpeg', '[]', '2021-11-29 20:47:23', '2021-11-29 20:47:23', NULL),
(839, 0, 'avatar 1638271630384', 3, 'image/png', 137230, 'avatars/avatar-1638271630384.png', '[]', '2021-11-30 04:27:11', '2021-11-30 04:27:11', NULL),
(840, 0, '1F456BA8-21EF-40E6-A682-B55C1D6FEEDD', 9, 'image/jpeg', 3156150, 'covers/1f456ba8-21ef-40e6-a682-b55c1d6feedd.jpeg', '[]', '2021-11-30 04:27:29', '2021-11-30 04:27:29', NULL),
(841, 0, 'avatar 1638271783780', 3, 'image/png', 134936, 'avatars/avatar-1638271783780.png', '[]', '2021-11-30 04:29:45', '2021-11-30 04:29:45', NULL),
(842, 0, 'avatar 1638272553672', 3, 'image/png', 124752, 'avatars/avatar-1638272553672.png', '[]', '2021-11-30 04:42:34', '2021-11-30 04:42:34', NULL),
(843, 0, 'avatar 1638272584681', 3, 'image/png', 127352, 'avatars/avatar-1638272584681.png', '[]', '2021-11-30 04:43:05', '2021-11-30 04:43:05', NULL),
(844, 0, 'A79EE0DF-7626-44B0-9E3C-48192BDA6EC3', 9, 'image/jpeg', 828506, 'covers/a79ee0df-7626-44b0-9e3c-48192bda6ec3.jpeg', '[]', '2021-11-30 04:43:26', '2021-11-30 04:43:26', NULL),
(845, 0, 'avatar 1638273376528', 3, 'image/png', 121792, 'avatars/avatar-1638273376528.png', '[]', '2021-11-30 04:56:17', '2021-11-30 04:56:17', NULL),
(846, 0, '8A6B31F9-111B-48E4-884F-D927A5C3972D', 9, 'image/jpeg', 8295119, 'covers/8a6b31f9-111b-48e4-884f-d927a5c3972d.jpeg', '[]', '2021-11-30 05:06:06', '2021-11-30 05:06:06', NULL),
(847, 0, '558E3AE4-9266-4E66-A145-6DE4BD4637A7', 9, 'image/jpeg', 3805448, 'covers/558e3ae4-9266-4e66-a145-6de4bd4637a7.jpeg', '[]', '2021-11-30 05:06:15', '2021-11-30 05:06:15', NULL),
(848, 0, 'F8967D6C-D629-493D-8E3C-1D0DF5E80A7E', 9, 'image/jpeg', 8295119, 'covers/f8967d6c-d629-493d-8e3c-1d0df5e80a7e.jpeg', '[]', '2021-11-30 05:07:09', '2021-11-30 05:07:09', NULL),
(849, 0, 'FF27370B-96E0-48F1-A48B-6E8F4D706DDC', 9, 'image/jpeg', 2198671, 'covers/ff27370b-96e0-48f1-a48b-6e8f4d706ddc.jpeg', '[]', '2021-11-30 05:10:32', '2021-11-30 05:10:32', NULL),
(850, 0, 'avatar 1638276625381', 3, 'image/png', 145523, 'avatars/avatar-1638276625381.png', '[]', '2021-11-30 05:50:26', '2021-11-30 05:50:26', NULL),
(851, 0, '9ED9838D-F69D-4BDE-94CF-08C4BCBE38AA', 9, 'image/jpeg', 1959870, 'covers/9ed9838d-f69d-4bde-94cf-08c4bcbe38aa.jpeg', '[]', '2021-11-30 05:50:33', '2021-11-30 05:50:33', NULL),
(852, 0, 'avatar 1638280482078', 3, 'image/png', 135623, 'avatars/avatar-1638280482078.png', '[]', '2021-11-30 06:54:43', '2021-11-30 06:54:43', NULL),
(853, 0, 'B4222B3D-36C4-468D-BD49-9BEAA61A1B37', 9, 'image/png', 4276545, 'covers/b4222b3d-36c4-468d-bd49-9beaa61a1b37.png', '[]', '2021-11-30 06:54:49', '2021-11-30 06:54:49', NULL),
(854, 0, '3D2B5B29-32F8-426B-8407-657D49D83D83', 9, 'image/jpeg', 1436355, 'covers/3d2b5b29-32f8-426b-8407-657d49d83d83.jpeg', '[]', '2021-11-30 08:57:26', '2021-11-30 08:57:26', NULL),
(855, 0, 'EDB418A8-8AD9-4FDE-AF2D-F2144D8B76D0', 9, 'image/jpeg', 362789, 'covers/edb418a8-8ad9-4fde-af2d-f2144d8b76d0.jpeg', '[]', '2021-11-30 08:57:44', '2021-11-30 08:57:44', NULL),
(856, 0, 'avatar 1638287895869', 3, 'image/png', 146647, 'avatars/avatar-1638287895869.png', '[]', '2021-11-30 08:58:16', '2021-11-30 08:58:16', NULL),
(857, 0, 'DB827563-54E2-4679-9A64-15EE7D9C6C5B', 9, 'image/jpeg', 38901, 'covers/db827563-54e2-4679-9a64-15ee7d9c6c5b.jpeg', '[]', '2021-11-30 10:41:23', '2021-11-30 10:41:23', NULL),
(858, 0, 'avatar 1638294118843', 3, 'image/png', 128393, 'avatars/avatar-1638294118843.png', '[]', '2021-11-30 10:41:59', '2021-11-30 10:41:59', NULL),
(859, 0, 'avatar 1638294158849', 3, 'image/png', 136846, 'avatars/avatar-1638294158849.png', '[]', '2021-11-30 10:42:40', '2021-11-30 10:42:40', NULL),
(860, 0, '9EEF44F7-8817-4ED7-B179-7C369E6802F9', 9, 'image/jpeg', 711638, 'covers/9eef44f7-8817-4ed7-b179-7c369e6802f9.jpeg', '[]', '2021-11-30 10:43:53', '2021-11-30 10:43:53', NULL),
(861, 0, '942E55D0-AAD4-4C7E-A331-06C3D9001C50', 9, 'image/jpeg', 34789, 'covers/942e55d0-aad4-4c7e-a331-06c3d9001c50.jpeg', '[]', '2021-11-30 10:45:50', '2021-11-30 10:45:50', NULL),
(862, 0, '125065EB-2835-4F6D-B346-90D0B898EB51', 9, 'image/jpeg', 711638, 'covers/125065eb-2835-4f6d-b346-90d0b898eb51.jpeg', '[]', '2021-11-30 10:46:21', '2021-11-30 10:46:21', NULL),
(863, 1, 'avatar 1638326691591', 3, 'image/png', 38179, 'avatars/avatar-1638326691591.png', '[]', '2021-11-30 19:44:52', '2021-11-30 19:44:52', NULL),
(864, 1, '027E841C-025B-414E-984B-F8147E1F5664', 9, 'image/jpeg', 3026487, 'covers/027e841c-025b-414e-984b-f8147e1f5664.jpeg', '[]', '2021-11-30 19:45:05', '2021-11-30 19:45:05', NULL),
(865, 1, 'avatar 1638326802294', 3, 'image/png', 38180, 'avatars/avatar-1638326802294.png', '[]', '2021-11-30 19:46:42', '2021-11-30 19:46:42', NULL),
(866, 1, 'A1BB4FDE-0F4C-4BF0-B2BB-B6279A64B19C', 9, 'image/jpeg', 3026487, 'covers/a1bb4fde-0f4c-4bf0-b2bb-b6279a64b19c.jpeg', '[]', '2021-11-30 19:46:52', '2021-11-30 19:46:52', NULL),
(867, 1, 'avatar 1638326908756', 3, 'image/png', 38266, 'avatars/avatar-1638326908756.png', '[]', '2021-11-30 19:48:29', '2021-11-30 19:48:29', NULL),
(868, 1, 'E726A7D5-29AE-49AA-9620-2296BAD6B7CA', 9, 'image/jpeg', 3026487, 'covers/e726a7d5-29ae-49aa-9620-2296bad6b7ca.jpeg', '[]', '2021-11-30 19:48:41', '2021-11-30 19:48:41', NULL),
(869, 1, 'avatar 1638327010689', 3, 'image/png', 38232, 'avatars/avatar-1638327010689.png', '[]', '2021-11-30 19:50:11', '2021-11-30 19:50:11', NULL),
(870, 1, '858DDF66-53FC-4ABB-B2E7-E389601A2B99', 9, 'image/jpeg', 3026487, 'covers/858ddf66-53fc-4abb-b2e7-e389601a2b99.jpeg', '[]', '2021-11-30 19:50:19', '2021-11-30 19:50:19', NULL),
(871, 0, 'avatar 1638355788460', 3, 'image/png', 118698, 'avatars/avatar-1638355788460.png', '[]', '2021-12-01 03:49:49', '2021-12-01 03:49:49', NULL);
INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`) VALUES
(872, 1, 'avatar 1638355817843', 3, 'image/png', 138819, 'avatars/avatar-1638355817843.png', '[]', '2021-12-01 03:50:18', '2021-12-01 03:50:18', NULL),
(873, 0, '75268DAD-855C-437A-AA16-9A01BB3611F3', 9, 'image/jpeg', 149524, 'covers/75268dad-855c-437a-aa16-9a01bb3611f3.jpeg', '[]', '2021-12-01 03:51:00', '2021-12-01 03:51:00', NULL),
(874, 0, '5DA7D194-347C-49AA-B445-956C4B71503E', 9, 'image/jpeg', 149524, 'covers/5da7d194-347c-49aa-b445-956c4b71503e.jpeg', '[]', '2021-12-01 03:51:33', '2021-12-01 03:51:33', NULL),
(875, 0, 'avatar 1638359590869', 3, 'image/png', 103886, 'avatars/avatar-1638359590869.png', '[]', '2021-12-01 04:53:11', '2021-12-01 04:53:11', NULL),
(876, 0, '97F47740-38A5-4883-9FA5-F6CAD9550CA3', 9, 'image/jpeg', 610074, 'covers/97f47740-38a5-4883-9fa5-f6cad9550ca3.jpeg', '[]', '2021-12-01 04:53:33', '2021-12-01 04:53:33', NULL),
(877, 0, 'avatar 1638359670447', 3, 'image/png', 141797, 'avatars/avatar-1638359670447.png', '[]', '2021-12-01 04:54:31', '2021-12-01 04:54:31', NULL),
(878, 0, '816BAB9F-BEE0-401B-A3CE-AA9F04A21FDB', 9, 'image/jpeg', 406621, 'covers/816bab9f-bee0-401b-a3ce-aa9f04a21fdb.jpeg', '[]', '2021-12-01 04:54:40', '2021-12-01 04:54:40', NULL),
(879, 0, 'avatar 1638361314572', 3, 'image/png', 130284, 'avatars/avatar-1638361314572.png', '[]', '2021-12-01 05:21:55', '2021-12-01 05:21:55', NULL),
(880, 0, 'A5379D0E-AFF9-43BE-97D4-FA664F0DBC83', 9, 'image/jpeg', 2567994, 'covers/a5379d0e-aff9-43be-97d4-fa664f0dbc83.jpeg', '[]', '2021-12-01 05:22:31', '2021-12-01 05:22:31', NULL),
(881, 0, 'avatar 1638372311848', 3, 'image/png', 122041, 'avatars/avatar-1638372311848.png', '[]', '2021-12-01 08:25:12', '2021-12-01 08:25:12', NULL),
(882, 0, 'avatar 1638372505844', 3, 'image/png', 121334, 'avatars/avatar-1638372505844.png', '[]', '2021-12-01 08:28:26', '2021-12-01 08:28:26', NULL),
(883, 1, 'ok111', 50, 'video/mp4', 1952542, 'videos/ok111.mp4', '[]', '2021-12-01 18:00:09', '2021-12-01 18:00:09', NULL),
(884, 1, 'avatar 1638407203574', 3, 'image/png', 43154, 'avatars/avatar-1638407203574.png', '[]', '2021-12-01 18:06:57', '2021-12-01 18:06:57', NULL),
(885, 1, 'avatar 1638407208720', 3, 'image/png', 43154, 'avatars/avatar-1638407208720.png', '[]', '2021-12-01 18:06:59', '2021-12-01 18:06:59', NULL),
(886, 1, 'avatar 1638407206804', 3, 'image/png', 43154, 'avatars/avatar-1638407206804.png', '[]', '2021-12-01 18:06:59', '2021-12-01 18:06:59', NULL),
(887, 1, 'avatar 1638407215742', 3, 'image/png', 43154, 'avatars/avatar-1638407215742.png', '[]', '2021-12-01 18:07:03', '2021-12-01 18:07:03', NULL),
(888, 1, 'avatar 1638407214023', 3, 'image/png', 43154, 'avatars/avatar-1638407214023.png', '[]', '2021-12-01 18:07:03', '2021-12-01 18:07:03', NULL),
(889, 1, 'avatar 1638407215028', 3, 'image/png', 43154, 'avatars/avatar-1638407215028.png', '[]', '2021-12-01 18:07:03', '2021-12-01 18:07:03', NULL),
(890, 1, 'avatar 1638407211570', 3, 'image/png', 43154, 'avatars/avatar-1638407211570.png', '[]', '2021-12-01 18:07:03', '2021-12-01 18:07:03', NULL),
(891, 1, 'avatar 1638407215529', 3, 'image/png', 43154, 'avatars/avatar-1638407215529.png', '[]', '2021-12-01 18:07:03', '2021-12-01 18:07:03', NULL),
(892, 1, 'avatar 1638407216792', 3, 'image/png', 43154, 'avatars/avatar-1638407216792.png', '[]', '2021-12-01 18:07:04', '2021-12-01 18:07:04', NULL),
(893, 1, '64A20053-A8CD-479D-9E94-7FF88F94A6B4', 9, 'image/jpeg', 2517502, 'covers/64a20053-a8cd-479d-9e94-7ff88f94a6b4.jpeg', '[]', '2021-12-01 18:07:14', '2021-12-01 18:07:14', NULL),
(894, 1, '8D9E7BB8-5C00-4D76-AEFE-80AC4DD1028B', 9, 'image/jpeg', 188060, 'covers/8d9e7bb8-5c00-4d76-aefe-80ac4dd1028b.jpeg', '[]', '2021-12-01 18:08:19', '2021-12-01 18:08:19', NULL),
(895, 1, 'DIEN THOAI MOCKUP', 0, 'image/jpeg', 2339527, 'dien-thoai-mockup.jpg', '[]', '2021-12-01 18:49:54', '2022-02-25 01:13:45', '2022-02-25 01:13:45'),
(896, 1, 'MC IP', 0, 'image/jpeg', 2155706, 'mc-ip.jpg', '[]', '2021-12-02 01:29:28', '2022-02-25 01:13:33', '2022-02-25 01:13:33'),
(897, 0, 'avatar 1638525711520', 3, 'image/png', 136641, 'avatars/avatar-1638525711520.png', '[]', '2021-12-03 03:01:59', '2021-12-03 03:01:59', NULL),
(898, 0, 'avatar 1638525719048', 3, 'image/png', 136641, 'avatars/avatar-1638525719048.png', '[]', '2021-12-03 03:02:03', '2021-12-03 03:02:03', NULL),
(899, 0, '5600E259-AC72-4929-B462-211B02FBD476', 9, 'image/jpeg', 77146, 'covers/5600e259-ac72-4929-b462-211b02fbd476.jpeg', '[]', '2021-12-03 03:02:49', '2021-12-03 03:02:49', NULL),
(900, 0, '33A667AF-7B65-4D93-B68C-277AF89C862F', 9, 'image/jpeg', 575469, 'covers/33a667af-7b65-4d93-b68c-277af89c862f.jpeg', '[]', '2021-12-03 03:14:29', '2021-12-03 03:14:29', NULL),
(901, 0, 'avatar 1638526539434', 3, 'image/png', 128751, 'avatars/avatar-1638526539434.png', '[]', '2021-12-03 03:15:40', '2021-12-03 03:15:40', NULL),
(902, 0, 'avatar 1638679250799', 3, 'image/png', 119032, 'avatars/avatar-1638679250799.png', '[]', '2021-12-04 21:40:51', '2021-12-04 21:40:51', NULL),
(903, 1, 'avatar 1638952844717', 3, 'image/png', 142873, 'avatars/avatar-1638952844717.png', '[]', '2021-12-08 01:40:45', '2021-12-08 01:40:45', NULL),
(904, 1, '6D0E6E9D-BDC2-4ECA-AA60-CB91F3A5BD23', 9, 'image/jpeg', 426434, 'covers/6d0e6e9d-bdc2-4eca-aa60-cb91f3a5bd23.jpeg', '[]', '2021-12-08 01:40:51', '2021-12-08 01:40:51', NULL),
(905, 1, 'avatar 1638952875058', 3, 'image/png', 109001, 'avatars/avatar-1638952875058.png', '[]', '2021-12-08 01:41:15', '2021-12-08 01:41:15', NULL),
(906, 0, 'avatar 1639730235948', 3, 'image/png', 133024, 'avatars/avatar-1639730235948.png', '[]', '2021-12-17 01:37:17', '2021-12-17 01:37:17', NULL),
(907, 0, 'Screenshot_2021-12-17-13-32-50-728_com.facebook.katana', 9, 'image/jpeg', 650519, 'covers/screenshot-2021-12-17-13-32-50-728-comfacebookkatana.jpg', '[]', '2021-12-17 01:37:29', '2021-12-17 01:37:29', NULL),
(908, 0, 'avatar 1639732593693', 3, 'image/png', 48152, 'avatars/avatar-1639732593693.png', '[]', '2021-12-17 02:16:35', '2021-12-17 02:16:35', NULL),
(909, 0, 'PicsArt_12-04-03.47.23', 9, 'image/jpeg', 4071138, 'covers/picsart-12-04-034723.jpg', '[]', '2021-12-17 02:16:58', '2021-12-17 02:16:58', NULL),
(910, 0, 'avatar 1639824554446', 3, 'image/png', 122658, 'avatars/avatar-1639824554446.png', '[]', '2021-12-18 03:49:15', '2021-12-18 03:49:15', NULL),
(911, 0, 'avatar 1639824581743', 3, 'image/png', 124138, 'avatars/avatar-1639824581743.png', '[]', '2021-12-18 03:49:42', '2021-12-18 03:49:42', NULL),
(912, 0, '6F65EBEA-ACDB-49DD-8362-CF9F32CCB85B', 9, 'image/jpeg', 423402, 'covers/6f65ebea-acdb-49dd-8362-cf9f32ccb85b.jpeg', '[]', '2021-12-18 03:57:35', '2021-12-18 03:57:35', NULL),
(913, 1, 'chiase', 0, 'image/jpeg', 600259, 'chiase.jpg', '[]', '2021-12-18 09:43:10', '2022-02-25 01:13:41', '2022-02-25 01:13:41'),
(914, 1, 'QUETQR', 50, 'video/mp4', 8583192, 'videos/quetqr.mp4', '[]', '2021-12-18 09:53:28', '2021-12-18 09:53:28', NULL),
(915, 1, '1CHAM', 50, 'video/mp4', 3609289, 'videos/1cham.mp4', '[]', '2021-12-18 09:53:29', '2021-12-18 09:53:29', NULL),
(916, 1, 'beauty_1637840719205 (1)', 66, 'image/jpeg', 1148065, 'videos-1/beauty-1637840719205-1.JPEG', '[]', '2021-12-20 00:09:19', '2021-12-20 00:09:19', NULL),
(917, 1, 'ảnh', 0, 'image/jpeg', 2742842, 'anh.jpg', '[]', '2021-12-20 01:20:51', '2021-12-20 01:20:51', NULL),
(918, 1, 'PNG ', 0, 'image/png', 666256, 'png.png', '[]', '2021-12-20 01:36:23', '2021-12-20 01:36:23', NULL),
(919, 1, 'bank_card_2', 0, 'image/png', 142010, 'bank-card-2.png', '[]', '2021-12-20 01:53:38', '2021-12-20 01:53:38', NULL),
(920, 1, 'PNG -1', 0, 'image/png', 395622, 'png-1.png', '[]', '2021-12-20 02:00:06', '2021-12-20 02:00:06', NULL),
(921, 1, 'PNG1', 0, 'image/png', 201189, 'png1.png', '[]', '2021-12-20 02:02:15', '2021-12-20 02:02:15', NULL),
(922, 1, '6016208', 0, 'image/jpeg', 3676049, '6016208.jpg', '[]', '2021-12-20 07:44:42', '2021-12-20 07:44:42', NULL),
(923, 1, '9', 0, 'image/png', 225744, '9.png', '[]', '2021-12-20 20:41:19', '2021-12-20 20:41:19', NULL),
(924, 1, '9-1', 0, 'image/png', 862863, '9-1.png', '[]', '2021-12-20 20:43:53', '2021-12-20 20:43:53', NULL),
(925, 0, 'avatar 1640059482111', 3, 'image/png', 127624, 'avatars/avatar-1640059482111.png', '[]', '2021-12-20 21:04:43', '2021-12-20 21:04:43', NULL),
(926, 0, 'avatar 1640059483765', 3, 'image/png', 127624, 'avatars/avatar-1640059483765.png', '[]', '2021-12-20 21:04:45', '2021-12-20 21:04:45', NULL),
(927, 0, 'avatar 1640060261148', 3, 'image/png', 152207, 'avatars/avatar-1640060261148.png', '[]', '2021-12-20 21:17:42', '2021-12-20 21:17:42', NULL),
(928, 0, '6CA2CD63-33E6-4938-9D3F-AA2932AA2759', 9, 'image/jpeg', 729242, 'covers/6ca2cd63-33e6-4938-9d3f-aa2932aa2759.jpeg', '[]', '2021-12-20 21:18:10', '2021-12-20 21:18:10', NULL),
(929, 0, '73284D51-1650-4990-AA2E-61796040BBD0', 9, 'image/jpeg', 5466890, 'covers/73284d51-1650-4990-aa2e-61796040bbd0.jpeg', '[]', '2021-12-20 21:19:04', '2021-12-20 21:19:04', NULL),
(930, 0, 'avatar 1640060407548', 3, 'image/png', 152617, 'avatars/avatar-1640060407548.png', '[]', '2021-12-20 21:20:08', '2021-12-20 21:20:08', NULL),
(931, 0, 'DB054E68-1CEE-4D4D-BEBB-BBABB7A8D43A', 9, 'image/jpeg', 807518, 'covers/db054e68-1cee-4d4d-bebb-bbabb7a8d43a.jpeg', '[]', '2021-12-20 21:20:30', '2021-12-20 21:20:30', NULL),
(932, 0, 'E51DDA86-E5C9-45E8-888B-E7A0CE06BD10', 9, 'image/jpeg', 138938, 'covers/e51dda86-e5c9-45e8-888b-e7a0ce06bd10.jpeg', '[]', '2021-12-20 21:21:00', '2021-12-20 21:21:00', NULL),
(933, 0, 'avatar 1640169876911', 3, 'image/png', 135858, 'avatars/avatar-1640169876911.png', '[]', '2021-12-22 03:44:38', '2021-12-22 03:44:38', NULL),
(934, 0, 'avatar 1640169975630', 3, 'image/png', 115716, 'avatars/avatar-1640169975630.png', '[]', '2021-12-22 03:46:16', '2021-12-22 03:46:16', NULL),
(935, 0, 'EFFE3B97-5FEB-49A9-91DA-D11AC2F60ADE', 9, 'image/jpeg', 190963, 'covers/effe3b97-5feb-49a9-91da-d11ac2f60ade.jpeg', '[]', '2021-12-22 03:47:18', '2021-12-22 03:47:18', NULL),
(936, 0, '7291BB29-81C6-4C87-AEEC-8552530208C3', 9, 'image/jpeg', 2153634, 'covers/7291bb29-81c6-4c87-aeec-8552530208c3.jpeg', '[]', '2021-12-22 03:52:20', '2021-12-22 03:52:20', NULL),
(937, 0, '126EBA04-EA3C-4DB5-9172-7116AB55112F', 9, 'image/jpeg', 3102861, 'covers/126eba04-ea3c-4db5-9172-7116ab55112f.jpeg', '[]', '2021-12-22 03:54:53', '2021-12-22 03:54:53', NULL),
(938, 0, 'avatar 1640176318532', 3, 'image/png', 120616, 'avatars/avatar-1640176318532.png', '[]', '2021-12-22 05:31:58', '2021-12-22 05:31:58', NULL),
(939, 0, '9267980A-75DA-4604-8315-6B43CF9D36AB', 9, 'image/jpeg', 492991, 'covers/9267980a-75da-4604-8315-6b43cf9d36ab.jpeg', '[]', '2021-12-22 05:32:09', '2021-12-22 05:32:09', NULL),
(940, 0, 'EE4E73FE-08D2-44EC-B9D2-DF0C7E6992B5', 9, 'image/jpeg', 492991, 'covers/ee4e73fe-08d2-44ec-b9d2-df0c7e6992b5.jpeg', '[]', '2021-12-22 05:32:25', '2021-12-22 05:32:25', NULL),
(941, 0, 'avatar 1640176477607', 3, 'image/png', 119889, 'avatars/avatar-1640176477607.png', '[]', '2021-12-22 05:34:38', '2021-12-22 05:34:38', NULL),
(942, 0, '78DA4240-8E75-4B61-8830-F862D534956C', 9, 'image/jpeg', 492991, 'covers/78da4240-8e75-4b61-8830-f862d534956c.jpeg', '[]', '2021-12-22 05:34:49', '2021-12-22 05:34:49', NULL),
(943, 1, '9239e6408f6f45311c7e', 0, 'image/jpeg', 905109, '9239e6408f6f45311c7e.jpg', '[]', '2021-12-22 07:05:36', '2021-12-22 07:05:36', NULL),
(944, 1, 'IMG_2741_2', 0, 'video/mp4', 49393589, 'img-2741-2.mp4', '[]', '2021-12-22 21:07:00', '2021-12-22 21:07:00', NULL),
(945, 1, 'IMG_2741', 0, 'video/mp4', 47775661, 'img-2741.mp4', '[]', '2021-12-22 21:30:20', '2021-12-22 21:30:20', NULL),
(946, 1, 'beauty_1637840719205 (1)', 67, 'image/jpeg', 1148065, 'anh-web/beauty-1637840719205-1.JPEG', '[]', '2021-12-22 22:02:31', '2021-12-22 22:02:31', NULL),
(947, 1, '67e311fd92d7588901c6', 67, 'image/jpeg', 896877, 'anh-web/67e311fd92d7588901c6.jpg', '[]', '2021-12-22 22:02:57', '2021-12-22 22:02:57', NULL),
(948, 0, 'avatar 1640333597547', 3, 'image/png', 93546, 'avatars/avatar-1640333597547.png', '[]', '2021-12-24 01:13:18', '2021-12-24 01:13:18', NULL),
(949, 0, '51D66B0A-C4FD-4BAD-B650-97DD08B5DCA0', 9, 'image/jpeg', 1626304, 'covers/51d66b0a-c4fd-4bad-b650-97dd08b5dca0.jpeg', '[]', '2021-12-24 01:14:40', '2021-12-24 01:14:40', NULL),
(950, 1, 'Untitled-1', 67, 'image/jpeg', 8671936, 'anh-web/untitled-1.jpg', '[]', '2021-12-26 02:16:30', '2021-12-26 02:16:30', NULL),
(951, 1, 'Untitled-1-1', 67, 'image/jpeg', 9235116, 'anh-web/untitled-1-1.jpg', '[]', '2021-12-26 02:18:11', '2021-12-26 02:18:11', NULL),
(952, 0, 'avatar 1640678056801', 3, 'image/png', 139780, 'avatars/avatar-1640678056801.png', '[]', '2021-12-28 00:54:17', '2021-12-28 00:54:17', NULL),
(953, 0, '21A7A528-39C6-486A-8CA1-9283CBA8C36C', 9, 'image/png', 6756835, 'covers/21a7a528-39c6-486a-8ca1-9283cba8c36c.png', '[]', '2021-12-28 00:54:32', '2021-12-28 00:54:32', NULL),
(954, 0, 'avatar 1640678901322', 3, 'image/png', 128332, 'avatars/avatar-1640678901322.png', '[]', '2021-12-28 01:08:22', '2021-12-28 01:08:22', NULL),
(955, 0, '4EB8BFFF-FC32-4DF6-B028-B74E7AD2C3A3', 9, 'image/jpeg', 463415, 'covers/4eb8bfff-fc32-4df6-b028-b74e7ad2c3a3.jpeg', '[]', '2021-12-28 01:09:53', '2021-12-28 01:09:53', NULL),
(956, 0, '457904A1-08BE-4DB1-8954-0F2804AE4E17', 9, 'image/jpeg', 3410796, 'covers/457904a1-08be-4db1-8954-0f2804ae4e17.jpeg', '[]', '2021-12-28 01:31:31', '2021-12-28 01:31:31', NULL),
(957, 0, '72158E06-297A-49E5-992F-D5CD54A419E1', 9, 'image/jpeg', 2189230, 'covers/72158e06-297a-49e5-992f-d5cd54a419e1.jpeg', '[]', '2021-12-28 01:33:29', '2021-12-28 01:33:29', NULL),
(958, 0, 'avatar 1640680586609', 3, 'image/png', 118599, 'avatars/avatar-1640680586609.png', '[]', '2021-12-28 01:36:27', '2021-12-28 01:36:27', NULL),
(959, 0, 'avatar 1640801696644', 3, 'image/png', 126595, 'avatars/avatar-1640801696644.png', '[]', '2021-12-29 11:14:57', '2021-12-29 11:14:57', NULL),
(960, 0, 'B2A28EBC-9331-4DE5-86C1-2AEB28CCBE86', 9, 'image/jpeg', 1217385, 'covers/b2a28ebc-9331-4de5-86c1-2aeb28ccbe86.jpeg', '[]', '2021-12-29 11:16:39', '2021-12-29 11:16:39', NULL),
(961, 0, '6C366414-C31F-4E81-B3E0-B886FFCCA6DF', 9, 'image/jpeg', 715266, 'covers/6c366414-c31f-4e81-b3e0-b886ffcca6df.jpeg', '[]', '2021-12-29 11:17:09', '2021-12-29 11:17:09', NULL),
(962, 0, 'CC5EA1AF-501D-426D-8C34-B8D9EDBCA757', 9, 'image/png', 4218520, 'covers/cc5ea1af-501d-426d-8c34-b8d9edbca757.png', '[]', '2021-12-29 11:17:25', '2021-12-29 11:17:25', NULL),
(963, 0, '4BE44429-9787-44A1-9B27-405BE6D2FC84', 9, 'image/png', 8381602, 'covers/4be44429-9787-44a1-9b27-405be6d2fc84.png', '[]', '2021-12-29 11:17:39', '2021-12-29 11:17:39', NULL),
(964, 0, '07CD5C52-3987-4807-97FF-6E4C13E55171', 9, 'image/jpeg', 2396842, 'covers/07cd5c52-3987-4807-97ff-6e4c13e55171.jpeg', '[]', '2021-12-29 11:18:04', '2021-12-29 11:18:04', NULL),
(965, 0, '4AEDDFB0-7354-4CE6-B2B9-6E5597A1EEB6', 9, 'image/jpeg', 1217385, 'covers/4aeddfb0-7354-4ce6-b2b9-6e5597a1eeb6.jpeg', '[]', '2021-12-29 11:23:02', '2021-12-29 11:23:02', NULL),
(966, 1, '78E04C26-4A94-4B6C-9A0C-14E20DDC87A3', 9, 'image/jpeg', 1585361, 'covers/78e04c26-4a94-4b6c-9a0c-14e20ddc87a3.jpeg', '[]', '2021-12-31 20:36:27', '2021-12-31 20:36:27', NULL),
(967, 1, '9093978F-04AD-4313-B3E3-E9F19C9A5941', 9, 'image/jpeg', 1585361, 'covers/9093978f-04ad-4313-b3e3-e9f19c9a5941.jpeg', '[]', '2021-12-31 20:38:21', '2021-12-31 20:38:21', NULL),
(968, 1, 'D64DE536-7492-4323-8C1A-846C0C3B6DE5', 9, 'image/jpeg', 1585361, 'covers/d64de536-7492-4323-8c1a-846c0c3b6de5.jpeg', '[]', '2021-12-31 20:40:14', '2021-12-31 20:40:14', NULL),
(969, 1, 'avatar 1641008472828', 3, 'image/png', 41979, 'avatars/avatar-1641008472828.png', '[]', '2021-12-31 20:41:13', '2021-12-31 20:41:13', NULL),
(970, 1, '7F5A6AA5-456C-4FC3-AB6A-9D471EFFCF30', 9, 'image/jpeg', 188060, 'covers/7f5a6aa5-456c-4fc3-ab6a-9d471effcf30.jpeg', '[]', '2021-12-31 20:42:12', '2021-12-31 20:42:12', NULL),
(971, 1, 'avatar 1641008617023', 3, 'image/png', 43169, 'avatars/avatar-1641008617023.png', '[]', '2021-12-31 20:43:37', '2021-12-31 20:43:37', NULL),
(972, 1, '27', 53, 'image/png', 10461, 'icon-pink-2/27.png', '[]', '2022-01-01 04:16:38', '2022-01-01 04:16:38', NULL),
(973, 1, '28', 53, 'image/png', 10327, 'icon-pink-2/28.png', '[]', '2022-01-01 04:16:39', '2022-01-01 04:16:39', NULL),
(974, 1, '29', 53, 'image/png', 11665, 'icon-pink-2/29.png', '[]', '2022-01-01 04:16:39', '2022-01-01 04:16:39', NULL),
(975, 1, '30', 53, 'image/png', 9098, 'icon-pink-2/30.png', '[]', '2022-01-01 04:16:40', '2022-01-01 04:16:40', NULL),
(976, 1, '31', 53, 'image/png', 9365, 'icon-pink-2/31.png', '[]', '2022-01-01 04:16:40', '2022-01-01 04:16:40', NULL),
(977, 1, '32', 53, 'image/png', 10253, 'icon-pink-2/32.png', '[]', '2022-01-01 04:16:40', '2022-01-01 04:16:40', NULL),
(978, 1, '33', 53, 'image/png', 11795, 'icon-pink-2/33.png', '[]', '2022-01-01 04:16:41', '2022-01-01 04:16:41', NULL),
(979, 1, '34', 53, 'image/png', 9883, 'icon-pink-2/34.png', '[]', '2022-01-01 04:16:41', '2022-01-01 04:16:41', NULL),
(980, 1, '35', 53, 'image/png', 11610, 'icon-pink-2/35.png', '[]', '2022-01-01 04:16:42', '2022-01-01 04:16:42', NULL),
(981, 1, '36', 53, 'image/png', 9501, 'icon-pink-2/36.png', '[]', '2022-01-01 04:16:42', '2022-01-01 04:16:42', NULL),
(982, 1, '37', 53, 'image/png', 9405, 'icon-pink-2/37.png', '[]', '2022-01-01 04:16:43', '2022-01-01 04:16:43', NULL),
(983, 1, '38', 53, 'image/png', 11335, 'icon-pink-2/38.png', '[]', '2022-01-01 04:16:43', '2022-01-01 04:16:43', NULL),
(984, 1, '39', 53, 'image/png', 11553, 'icon-pink-2/39.png', '[]', '2022-01-01 04:16:44', '2022-01-01 04:16:44', NULL),
(985, 1, '40', 53, 'image/png', 12154, 'icon-pink-2/40.png', '[]', '2022-01-01 04:16:44', '2022-01-01 04:16:44', NULL),
(986, 1, '41', 53, 'image/png', 11768, 'icon-pink-2/41.png', '[]', '2022-01-01 04:16:44', '2022-01-01 04:16:44', NULL),
(987, 1, '42', 53, 'image/png', 11330, 'icon-pink-2/42.png', '[]', '2022-01-01 04:16:45', '2022-01-01 04:16:45', NULL),
(988, 1, '43', 53, 'image/png', 11989, 'icon-pink-2/43.png', '[]', '2022-01-01 04:16:45', '2022-01-01 04:16:45', NULL),
(989, 1, '44', 53, 'image/png', 10820, 'icon-pink-2/44.png', '[]', '2022-01-01 04:16:46', '2022-01-01 04:16:46', NULL),
(990, 1, '45', 53, 'image/png', 11632, 'icon-pink-2/45.png', '[]', '2022-01-01 04:16:46', '2022-01-01 04:16:46', NULL),
(991, 1, '46', 53, 'image/png', 11975, 'icon-pink-2/46.png', '[]', '2022-01-01 04:16:47', '2022-01-01 04:16:47', NULL),
(992, 0, 'avatar 1641197053649', 3, 'image/png', 74361, 'avatars/avatar-1641197053649.png', '[]', '2022-01-03 01:04:14', '2022-01-03 01:04:14', NULL),
(993, 0, 'CD2FA3F8-9211-4EDF-9BB3-BBBCBA8F37F6', 9, 'image/jpeg', 102476, 'covers/cd2fa3f8-9211-4edf-9bb3-bbbcba8f37f6.jpeg', '[]', '2022-01-03 01:04:42', '2022-01-03 01:04:42', NULL),
(994, 0, '609DA67E-ECA9-4300-802E-4BF876BEDBD5', 9, 'image/jpeg', 132137, 'covers/609da67e-eca9-4300-802e-4bf876bedbd5.jpeg', '[]', '2022-01-03 01:05:06', '2022-01-03 01:05:06', NULL),
(995, 0, '59B31F24-AB97-4B06-9A26-198BA3DE2399', 9, 'image/jpeg', 856776, 'covers/59b31f24-ab97-4b06-9a26-198ba3de2399.jpeg', '[]', '2022-01-03 01:05:37', '2022-01-03 01:05:37', NULL),
(996, 0, 'avatar 1641197186113', 3, 'image/png', 106396, 'avatars/avatar-1641197186113.png', '[]', '2022-01-03 01:06:26', '2022-01-03 01:06:26', NULL),
(997, 0, 'avatar 1641197664129', 3, 'image/png', 130891, 'avatars/avatar-1641197664129.png', '[]', '2022-01-03 01:14:25', '2022-01-03 01:14:25', NULL),
(998, 0, 'avatar 1641197710766', 3, 'image/png', 125217, 'avatars/avatar-1641197710766.png', '[]', '2022-01-03 01:15:11', '2022-01-03 01:15:11', NULL),
(999, 0, '09627149-5D78-4027-8994-2C9412CBEBC9', 9, 'image/jpeg', 477566, 'covers/09627149-5d78-4027-8994-2c9412cbebc9.jpeg', '[]', '2022-01-03 01:15:41', '2022-01-03 01:15:41', NULL),
(1000, 0, 'avatar 1641197780018', 3, 'image/png', 125676, 'avatars/avatar-1641197780018.png', '[]', '2022-01-03 01:16:20', '2022-01-03 01:16:20', NULL),
(1001, 0, '9A046B7D-12FB-49C0-AB8E-01DB8E78DF72', 9, 'image/jpeg', 477566, 'covers/9a046b7d-12fb-49c0-ab8e-01db8e78df72.jpeg', '[]', '2022-01-03 01:16:38', '2022-01-03 01:16:38', NULL),
(1002, 0, 'avatar 1641198192378', 3, 'image/png', 95703, 'avatars/avatar-1641198192378.png', '[]', '2022-01-03 01:23:16', '2022-01-03 01:23:16', NULL),
(1003, 0, 'avatar 1641198195120', 3, 'image/png', 95703, 'avatars/avatar-1641198195120.png', '[]', '2022-01-03 01:23:16', '2022-01-03 01:23:16', NULL),
(1004, 0, 'avatar 1641198256155', 3, 'image/png', 91390, 'avatars/avatar-1641198256155.png', '[]', '2022-01-03 01:24:18', '2022-01-03 01:24:18', NULL),
(1005, 0, '1A39EABF-6A49-412C-9612-773740324CE6', 9, 'image/jpeg', 246836, 'covers/1a39eabf-6a49-412c-9612-773740324ce6.jpeg', '[]', '2022-01-03 01:26:36', '2022-01-03 01:26:36', NULL),
(1006, 0, '851034F3-5454-4B3D-AE63-4AED230101AE', 9, 'image/jpeg', 361684, 'covers/851034f3-5454-4b3d-ae63-4aed230101ae.jpeg', '[]', '2022-01-03 01:37:00', '2022-01-03 01:37:00', NULL),
(1007, 0, '05A3171B-01D4-42FB-B7D7-EEF3861FD519', 9, 'image/jpeg', 690842, 'covers/05a3171b-01d4-42fb-b7d7-eef3861fd519.jpeg', '[]', '2022-01-03 01:39:46', '2022-01-03 01:39:46', NULL),
(1008, 0, '5FA38742-957F-476B-B2AC-CB6F719CDF46', 9, 'image/jpeg', 653944, 'covers/5fa38742-957f-476b-b2ac-cb6f719cdf46.jpeg', '[]', '2022-01-03 02:26:02', '2022-01-03 02:26:02', NULL),
(1009, 0, '773CBF96-4DE2-430C-98CF-BF2BEA84FDB4', 9, 'image/jpeg', 540617, 'covers/773cbf96-4de2-430c-98cf-bf2bea84fdb4.jpeg', '[]', '2022-01-03 04:02:37', '2022-01-03 04:02:37', NULL),
(1010, 0, 'avatar 1641207863275', 3, 'image/png', 110416, 'avatars/avatar-1641207863275.png', '[]', '2022-01-03 04:04:23', '2022-01-03 04:04:23', NULL),
(1011, 0, '987E8A81-3C67-4D0B-AE75-3873365F0222', 9, 'image/jpeg', 2096680, 'covers/987e8a81-3c67-4d0b-ae75-3873365f0222.jpeg', '[]', '2022-01-03 04:04:53', '2022-01-03 04:04:53', NULL),
(1012, 0, 'E66257EF-9452-45EA-88E1-8D7E68C77AA0', 9, 'image/jpeg', 510198, 'covers/e66257ef-9452-45ea-88e1-8d7e68c77aa0.jpeg', '[]', '2022-01-03 04:05:23', '2022-01-03 04:05:23', NULL),
(1013, 0, 'A00CD6DE-7D3E-467C-A65C-1567F8CFC46F', 9, 'image/jpeg', 177929, 'covers/a00cd6de-7d3e-467c-a65c-1567f8cfc46f.jpeg', '[]', '2022-01-03 04:05:44', '2022-01-03 04:05:44', NULL),
(1014, 0, 'avatar 1641216209926', 3, 'image/png', 102491, 'avatars/avatar-1641216209926.png', '[]', '2022-01-03 06:23:30', '2022-01-03 06:23:30', NULL),
(1015, 0, '2F60A6C7-0705-4BEA-9214-6BD800559B94', 9, 'image/jpeg', 3249526, 'covers/2f60a6c7-0705-4bea-9214-6bd800559b94.jpeg', '[]', '2022-01-03 06:24:36', '2022-01-03 06:24:36', NULL),
(1016, 0, 'avatar 1641259151593', 3, 'image/png', 112127, 'avatars/avatar-1641259151593.png', '[]', '2022-01-03 18:19:12', '2022-01-03 18:19:12', NULL),
(1017, 0, 'avatar 1641264843614', 3, 'image/png', 120103, 'avatars/avatar-1641264843614.png', '[]', '2022-01-03 19:54:04', '2022-01-03 19:54:04', NULL),
(1018, 0, 'D8C956DE-344A-4168-9C4C-173F623CBA16', 9, 'image/jpeg', 95624, 'covers/d8c956de-344a-4168-9c4c-173f623cba16.jpeg', '[]', '2022-01-03 19:55:30', '2022-01-03 19:55:30', NULL),
(1019, 0, 'avatar 1641266335662', 3, 'image/png', 149176, 'avatars/avatar-1641266335662.png', '[]', '2022-01-03 20:18:56', '2022-01-03 20:18:56', NULL),
(1020, 0, '0B799DF9-25A3-46AB-9758-DC9C0C654339', 9, 'image/jpeg', 1621356, 'covers/0b799df9-25a3-46ab-9758-dc9c0c654339.jpeg', '[]', '2022-01-03 20:19:10', '2022-01-03 20:19:10', NULL),
(1021, 0, 'avatar 1641266520690', 3, 'image/png', 127174, 'avatars/avatar-1641266520690.png', '[]', '2022-01-03 20:22:04', '2022-01-03 20:22:04', NULL),
(1022, 0, 'avatar 1641266523567', 3, 'image/png', 127174, 'avatars/avatar-1641266523567.png', '[]', '2022-01-03 20:22:04', '2022-01-03 20:22:04', NULL),
(1023, 0, 'avatar 1641266524398', 3, 'image/png', 127174, 'avatars/avatar-1641266524398.png', '[]', '2022-01-03 20:22:05', '2022-01-03 20:22:05', NULL),
(1024, 0, 'avatar 1641266540303', 3, 'image/png', 118698, 'avatars/avatar-1641266540303.png', '[]', '2022-01-03 20:22:21', '2022-01-03 20:22:21', NULL),
(1025, 0, 'avatar 1641266537148', 3, 'image/png', 118698, 'avatars/avatar-1641266537148.png', '[]', '2022-01-03 20:22:21', '2022-01-03 20:22:21', NULL),
(1026, 0, '5B8373B2-7614-47D7-8E6A-544447F97DB7', 9, 'image/jpeg', 1067777, 'covers/5b8373b2-7614-47d7-8e6a-544447f97db7.jpeg', '[]', '2022-01-03 20:22:45', '2022-01-03 20:22:45', NULL),
(1027, 0, 'E4025583-DA03-427E-9BBD-6A8970CDAFB0', 9, 'image/jpeg', 671156, 'covers/e4025583-da03-427e-9bbd-6a8970cdafb0.jpeg', '[]', '2022-01-03 20:22:47', '2022-01-03 20:22:47', NULL),
(1028, 0, 'avatar 1641266700591', 3, 'image/png', 93342, 'avatars/avatar-1641266700591.png', '[]', '2022-01-03 20:25:04', '2022-01-03 20:25:04', NULL),
(1029, 0, 'avatar 1641266703819', 3, 'image/png', 93342, 'avatars/avatar-1641266703819.png', '[]', '2022-01-03 20:25:04', '2022-01-03 20:25:04', NULL),
(1030, 0, '1047D73E-C01F-4801-9C77-6D8498534072', 9, 'image/png', 10672340, 'covers/1047d73e-c01f-4801-9c77-6d8498534072.png', '[]', '2022-01-03 20:25:13', '2022-01-03 20:25:13', NULL),
(1031, 0, '26B2F555-C719-4586-B4C7-EC5917B2DE96', 9, 'image/png', 10672340, 'covers/26b2f555-c719-4586-b4c7-ec5917b2de96.png', '[]', '2022-01-03 20:25:25', '2022-01-03 20:25:25', NULL),
(1032, 0, 'avatar 1641266791681', 3, 'image/png', 141020, 'avatars/avatar-1641266791681.png', '[]', '2022-01-03 20:26:32', '2022-01-03 20:26:32', NULL),
(1033, 0, 'avatar 1641266879031', 3, 'image/png', 97629, 'avatars/avatar-1641266879031.png', '[]', '2022-01-03 20:27:59', '2022-01-03 20:27:59', NULL),
(1034, 0, 'A0291D3F-3D0D-4BAC-B903-5BCE046241E3', 9, 'image/jpeg', 1198636, 'covers/a0291d3f-3d0d-4bac-b903-5bce046241e3.jpeg', '[]', '2022-01-03 20:37:57', '2022-01-03 20:37:57', NULL),
(1035, 0, 'B830DBCB-E1AE-44FB-BAE6-BFAE31652676', 9, 'image/jpeg', 311359, 'covers/b830dbcb-e1ae-44fb-bae6-bfae31652676.jpeg', '[]', '2022-01-03 20:45:08', '2022-01-03 20:45:08', NULL),
(1036, 0, '4B7AF0BB-767E-44ED-843A-1DA2CB173A20', 9, 'image/jpeg', 62381, 'covers/4b7af0bb-767e-44ed-843a-1da2cb173a20.jpeg', '[]', '2022-01-03 20:48:43', '2022-01-03 20:48:43', NULL),
(1037, 0, '08BA0843-6BB0-42C5-94A9-7D5712D0D9D2', 9, 'image/jpeg', 774753, 'covers/08ba0843-6bb0-42c5-94a9-7d5712d0d9d2.jpeg', '[]', '2022-01-03 20:51:17', '2022-01-03 20:51:17', NULL),
(1038, 0, 'avatar 1641268562886', 3, 'image/png', 115810, 'avatars/avatar-1641268562886.png', '[]', '2022-01-03 20:56:06', '2022-01-03 20:56:06', NULL),
(1039, 0, 'A0FD712B-286C-4CE3-BF4C-B2544504D0A0', 9, 'image/jpeg', 1138460, 'covers/a0fd712b-286c-4ce3-bf4c-b2544504d0a0.jpeg', '[]', '2022-01-03 20:57:34', '2022-01-03 20:57:34', NULL),
(1040, 0, 'F89C306F-FE65-4151-BA54-467994BC53E2', 9, 'image/jpeg', 2131278, 'covers/f89c306f-fe65-4151-ba54-467994bc53e2.jpeg', '[]', '2022-01-03 20:57:45', '2022-01-03 20:57:45', NULL),
(1041, 0, '5C2444C3-E2D3-46A5-8D40-BBD1DA29E544', 9, 'image/jpeg', 5449805, 'covers/5c2444c3-e2d3-46a5-8d40-bbd1da29e544.jpeg', '[]', '2022-01-03 21:00:40', '2022-01-03 21:00:40', NULL),
(1042, 0, '64B832A1-4A1A-4942-9B50-4DA924CC5D29', 9, 'image/jpeg', 2007552, 'covers/64b832a1-4a1a-4942-9b50-4da924cc5d29.jpeg', '[]', '2022-01-03 21:03:08', '2022-01-03 21:03:08', NULL),
(1043, 1, 'avatar 1641372794268', 3, 'image/png', 126315, 'avatars/avatar-1641372794268.png', '[]', '2022-01-05 01:53:15', '2022-01-05 01:53:15', NULL),
(1044, 1, 'D86B7614-E2AB-4740-8825-F93C37470B86', 9, 'image/jpeg', 393859, 'covers/d86b7614-e2ab-4740-8825-f93c37470b86.jpeg', '[]', '2022-01-05 01:53:20', '2022-01-05 01:53:20', NULL),
(1045, 1, '3-1', 53, 'image/png', 7878353, 'icon-pink-2/3-1.png', '[]', '2022-01-05 19:54:24', '2022-01-05 19:54:24', NULL),
(1046, 1, '4-1', 53, 'image/png', 8592859, 'icon-pink-2/4-1.png', '[]', '2022-01-05 19:54:49', '2022-01-05 19:54:49', NULL),
(1047, 1, '2-2', 53, 'image/png', 8671897, 'icon-pink-2/2-2.png', '[]', '2022-01-05 19:55:09', '2022-01-05 19:55:09', NULL),
(1048, 1, '1 -2', 53, 'image/png', 7746351, 'icon-pink-2/1-2.png', '[]', '2022-01-05 19:55:26', '2022-01-05 19:55:26', NULL),
(1049, 0, 'avatar 1641541177620', 3, 'image/png', 128543, 'avatars/avatar-1641541177620.png', '[]', '2022-01-07 00:39:39', '2022-01-07 00:39:39', NULL),
(1050, 0, '93DFD050-5716-4775-A1A5-75D374D2F747', 9, 'image/jpeg', 2307739, 'covers/93dfd050-5716-4775-a1a5-75d374d2f747.jpeg', '[]', '2022-01-07 00:40:10', '2022-01-07 00:40:10', NULL),
(1051, 0, '61BFFF08-9775-4ED5-8F3B-3E1E58524693', 9, 'image/jpeg', 2003853, 'covers/61bfff08-9775-4ed5-8f3b-3e1e58524693.jpeg', '[]', '2022-01-07 01:54:50', '2022-01-07 01:54:50', NULL),
(1052, 0, '2508643D-25BD-4195-87AF-7E3C6C33F0A9', 9, 'image/jpeg', 2003853, 'covers/2508643d-25bd-4195-87af-7e3c6c33f0a9.jpeg', '[]', '2022-01-07 02:00:39', '2022-01-07 02:00:39', NULL),
(1053, 0, '0E6D129F-A9E8-4077-88B7-8BBADCB3175F', 9, 'image/jpeg', 2210618, 'covers/0e6d129f-a9e8-4077-88b7-8bbadcb3175f.jpeg', '[]', '2022-01-07 02:14:19', '2022-01-07 02:14:19', NULL),
(1054, 0, 'C2BC67CD-C77E-4870-A319-C0D98D948015', 9, 'image/jpeg', 3865442, 'covers/c2bc67cd-c77e-4870-a319-c0d98d948015.jpeg', '[]', '2022-01-07 02:15:16', '2022-01-07 02:15:16', NULL),
(1055, 0, '3045057C-7762-41F0-A1BB-9FF5B09F79FD', 9, 'image/jpeg', 3865442, 'covers/3045057c-7762-41f0-a1bb-9ff5b09f79fd.jpeg', '[]', '2022-01-07 02:15:28', '2022-01-07 02:15:28', NULL),
(1056, 0, '0B6FA4AC-A85B-4A87-B2DE-55FAF908BD46', 9, 'image/jpeg', 4217300, 'covers/0b6fa4ac-a85b-4a87-b2de-55faf908bd46.jpeg', '[]', '2022-01-07 02:15:48', '2022-01-07 02:15:48', NULL),
(1057, 0, 'E0391116-B65E-4A5F-9371-D16B4C6C0AF5', 9, 'image/jpeg', 1816450, 'covers/e0391116-b65e-4a5f-9371-d16b4c6c0af5.jpeg', '[]', '2022-01-07 02:18:03', '2022-01-07 02:18:03', NULL),
(1058, 0, '3FADED03-FFD1-4C4C-AA83-2A970CD48FF3', 9, 'image/jpeg', 1306148, 'covers/3faded03-ffd1-4c4c-aa83-2a970cd48ff3.jpeg', '[]', '2022-01-07 02:19:39', '2022-01-07 02:19:39', NULL),
(1059, 1, 'be1ecd02045fc901904e', 53, 'image/jpeg', 810449, 'icon-pink-2/be1ecd02045fc901904e.jpg', '[]', '2022-01-08 20:43:33', '2022-01-08 20:43:33', NULL),
(1060, 1, '3f97137d34aafef4a7bb', 0, 'image/jpeg', 595783, '3f97137d34aafef4a7bb.jpg', '[]', '2022-01-08 20:44:14', '2022-01-08 20:44:14', NULL),
(1061, 1, '799', 0, 'image/jpeg', 1185500, '799.jpg', '[]', '2022-01-08 20:44:49', '2022-01-08 20:44:49', NULL),
(1062, 1, '769', 0, 'image/jpeg', 1182284, '769.jpg', '[]', '2022-01-08 20:45:00', '2022-01-08 20:45:00', NULL),
(1063, 0, 'avatar 1642579659378', 3, 'image/png', 1178, 'avatars/avatar-1642579659378.png', '[]', '2022-01-19 01:07:39', '2022-01-19 01:07:39', NULL),
(1064, 0, 'B75DF718-4490-4730-8D61-2323D316BE6A', 9, 'image/jpeg', 573592, 'covers/b75df718-4490-4730-8d61-2323d316be6a.jpeg', '[]', '2022-01-19 01:08:05', '2022-01-19 01:08:05', NULL),
(1065, 0, 'avatar 1642579706212', 3, 'image/png', 1178, 'avatars/avatar-1642579706212.png', '[]', '2022-01-19 01:08:26', '2022-01-19 01:08:26', NULL),
(1066, 0, 'avatar 1642580293586', 3, 'image/png', 139340, 'avatars/avatar-1642580293586.png', '[]', '2022-01-19 01:18:14', '2022-01-19 01:18:14', NULL),
(1067, 0, 'ED3B7073-0C1C-4897-8EF0-317F9D53834C', 9, 'image/jpeg', 726859, 'covers/ed3b7073-0c1c-4897-8ef0-317f9d53834c.jpeg', '[]', '2022-01-19 01:22:40', '2022-01-19 01:22:40', NULL),
(1068, 0, 'avatar 1642580581243', 3, 'image/png', 141530, 'avatars/avatar-1642580581243.png', '[]', '2022-01-19 01:23:01', '2022-01-19 01:23:01', NULL),
(1069, 0, 'avatar 1642580590339', 3, 'image/png', 117712, 'avatars/avatar-1642580590339.png', '[]', '2022-01-19 01:23:10', '2022-01-19 01:23:10', NULL),
(1070, 0, '6DA0FDEB-D237-4A1F-9631-B8159EC91C31', 9, 'image/jpeg', 7251073, 'covers/6da0fdeb-d237-4a1f-9631-b8159ec91c31.jpeg', '[]', '2022-01-19 01:23:14', '2022-01-19 01:23:14', NULL),
(1071, 0, '01B106D3-BC4C-4A75-A265-367056CF12EA', 9, 'image/jpeg', 895860, 'covers/01b106d3-bc4c-4a75-a265-367056cf12ea.jpeg', '[]', '2022-01-19 01:23:39', '2022-01-19 01:23:39', NULL),
(1072, 0, '846D998F-8178-4A08-8588-31B9B6363717', 9, 'image/jpeg', 205885, 'covers/846d998f-8178-4a08-8588-31b9b6363717.jpeg', '[]', '2022-01-19 01:41:24', '2022-01-19 01:41:24', NULL),
(1073, 0, 'avatar 1642583355559', 3, 'image/png', 146598, 'avatars/avatar-1642583355559.png', '[]', '2022-01-19 02:09:16', '2022-01-19 02:09:16', NULL),
(1074, 0, '648DD9FE-2AA0-4D9E-8C96-E28E645E70F1', 9, 'image/jpeg', 6739949, 'covers/648dd9fe-2aa0-4d9e-8c96-e28e645e70f1.jpeg', '[]', '2022-01-19 02:10:35', '2022-01-19 02:10:35', NULL),
(1075, 0, 'avatar 1642587460196', 3, 'image/png', 145982, 'avatars/avatar-1642587460196.png', '[]', '2022-01-19 03:17:40', '2022-01-19 03:17:40', NULL),
(1076, 0, '9303E5F3-87AE-46D0-B96C-51E160854387', 9, 'image/jpeg', 3154410, 'covers/9303e5f3-87ae-46d0-b96c-51e160854387.jpeg', '[]', '2022-01-19 03:18:19', '2022-01-19 03:18:19', NULL),
(1077, 0, 'avatar 1642599261652', 3, 'image/png', 140336, 'avatars/avatar-1642599261652.png', '[]', '2022-01-19 06:34:22', '2022-01-19 06:34:22', NULL),
(1078, 0, 'FE966A0E-ECF4-4351-A890-339563BF02C2', 9, 'image/jpeg', 28118, 'covers/fe966a0e-ecf4-4351-a890-339563bf02c2.jpeg', '[]', '2022-01-19 06:36:05', '2022-01-19 06:36:05', NULL),
(1079, 0, 'avatar 1642599433523', 3, 'image/png', 153535, 'avatars/avatar-1642599433523.png', '[]', '2022-01-19 06:37:13', '2022-01-19 06:37:13', NULL),
(1080, 0, 'CA28347E-5D7F-4A37-A5D4-E4B8E4FF5B1A', 9, 'image/jpeg', 4590857, 'covers/ca28347e-5d7f-4a37-a5d4-e4b8e4ff5b1a.jpeg', '[]', '2022-01-19 06:37:23', '2022-01-19 06:37:23', NULL),
(1081, 0, 'avatar 1642599519053', 3, 'image/png', 169957, 'avatars/avatar-1642599519053.png', '[]', '2022-01-19 06:38:39', '2022-01-19 06:38:39', NULL),
(1082, 0, 'avatar 1642652741558', 3, 'image/png', 1178, 'avatars/avatar-1642652741558.png', '[]', '2022-01-19 21:25:42', '2022-01-19 21:25:42', NULL),
(1083, 0, '32283F0F-0A67-444D-94FD-AE0B95FA9F7C', 9, 'image/jpeg', 755503, 'covers/32283f0f-0a67-444d-94fd-ae0b95fa9f7c.jpeg', '[]', '2022-01-19 21:30:58', '2022-01-19 21:30:58', NULL),
(1084, 0, 'avatar 1642653121592', 3, 'image/png', 1178, 'avatars/avatar-1642653121592.png', '[]', '2022-01-19 21:32:01', '2022-01-19 21:32:01', NULL),
(1085, 0, 'avatar 1642653704943', 3, 'image/png', 1178, 'avatars/avatar-1642653704943.png', '[]', '2022-01-19 21:41:45', '2022-01-19 21:41:45', NULL),
(1086, 0, 'avatar 1642653831224', 3, 'image/png', 98931, 'avatars/avatar-1642653831224.png', '[]', '2022-01-19 21:43:51', '2022-01-19 21:43:51', NULL),
(1087, 0, 'D46CAC68-B02D-407E-83A9-8EFB5895A194', 9, 'image/jpeg', 154107, 'covers/d46cac68-b02d-407e-83a9-8efb5895a194.jpeg', '[]', '2022-01-19 21:49:10', '2022-01-19 21:49:10', NULL),
(1088, 0, 'DDE87FBB-BB40-42B2-83A5-2D19A8D6FDAB', 9, 'image/jpeg', 57101, 'covers/dde87fbb-bb40-42b2-83a5-2d19a8d6fdab.jpeg', '[]', '2022-01-19 21:49:36', '2022-01-19 21:49:36', NULL),
(1089, 0, '29D16DE7-D791-4A3C-9CE5-E8E1281B1F35', 9, 'image/jpeg', 2242259, 'covers/29d16de7-d791-4a3c-9ce5-e8e1281b1f35.jpeg', '[]', '2022-01-19 21:50:09', '2022-01-19 21:50:09', NULL),
(1090, 1, 'avatar 1642735824983', 3, 'image/png', 142684, 'avatars/avatar-1642735824983.png', '[]', '2022-01-20 20:30:25', '2022-01-20 20:30:25', NULL),
(1091, 1, 'avatar 1642735839344', 3, 'image/png', 114612, 'avatars/avatar-1642735839344.png', '[]', '2022-01-20 20:30:39', '2022-01-20 20:30:39', NULL),
(1092, 1, '26DDBBFC-08C7-4BA8-A97C-19E9AADF02B6', 9, 'image/jpeg', 188060, 'covers/26ddbbfc-08c7-4ba8-a97c-19e9aadf02b6.jpeg', '[]', '2022-01-20 20:31:21', '2022-01-20 20:31:21', NULL),
(1093, 1, 'avatar 1642736304766', 3, 'image/png', 114612, 'avatars/avatar-1642736304766.png', '[]', '2022-01-20 20:38:25', '2022-01-20 20:38:25', NULL),
(1094, 1, '98D83014-5BA4-40C6-804D-76F8B9280FBE', 9, 'image/jpeg', 188060, 'covers/98d83014-5ba4-40c6-804d-76f8b9280fbe.jpeg', '[]', '2022-01-20 20:38:55', '2022-01-20 20:38:55', NULL),
(1095, 0, 'avatar 1644401399985', 3, 'image/png', 1178, 'avatars/avatar-1644401399985.png', '[]', '2022-02-09 03:10:00', '2022-02-09 03:10:00', NULL),
(1096, 0, '7AFD9CDB-2205-41F7-AC0D-4D0B529F3DE4', 9, 'image/jpeg', 553169, 'covers/7afd9cdb-2205-41f7-ac0d-4d0b529f3de4.jpeg', '[]', '2022-02-09 03:11:42', '2022-02-09 03:11:42', NULL),
(1097, 0, 'avatar 1644401600924', 3, 'image/png', 115643, 'avatars/avatar-1644401600924.png', '[]', '2022-02-09 03:13:21', '2022-02-09 03:13:21', NULL),
(1098, 0, '5191E3A2-665F-4ED3-901D-B951DB587EE7', 9, 'image/jpeg', 9896214, 'covers/5191e3a2-665f-4ed3-901d-b951db587ee7.jpeg', '[]', '2022-02-09 03:13:55', '2022-02-09 03:13:55', NULL),
(1099, 0, 'avatar 1644402272930', 3, 'image/png', 115644, 'avatars/avatar-1644402272930.png', '[]', '2022-02-09 03:24:33', '2022-02-09 03:24:33', NULL),
(1100, 0, '37EE8159-68AA-410B-83A4-8C9FBADB4E49', 9, 'image/jpeg', 553169, 'covers/37ee8159-68aa-410b-83a4-8c9fbadb4e49.jpeg', '[]', '2022-02-09 03:25:14', '2022-02-09 03:25:14', NULL),
(1101, 0, 'avatar 1644465552629', 3, 'image/png', 125912, 'avatars/avatar-1644465552629.png', '[]', '2022-02-09 20:59:15', '2022-02-09 20:59:15', NULL),
(1102, 0, 'avatar 1644465554432', 3, 'image/png', 125912, 'avatars/avatar-1644465554432.png', '[]', '2022-02-09 20:59:15', '2022-02-09 20:59:15', NULL),
(1103, 0, 'avatar 1644465555390', 3, 'image/png', 125912, 'avatars/avatar-1644465555390.png', '[]', '2022-02-09 20:59:16', '2022-02-09 20:59:16', NULL),
(1104, 0, 'avatar 1644465555606', 3, 'image/png', 125912, 'avatars/avatar-1644465555606.png', '[]', '2022-02-09 20:59:16', '2022-02-09 20:59:16', NULL),
(1105, 0, 'avatar 1645172007006', 3, 'image/png', 118860, 'avatars/avatar-1645172007006.png', '[]', '2022-02-18 01:13:27', '2022-02-18 01:13:27', NULL),
(1106, 0, '60B170F2-29EB-448D-9F54-243802C03487', 9, 'image/jpeg', 4447711, 'covers/60b170f2-29eb-448d-9f54-243802c03487.jpeg', '[]', '2022-02-18 01:13:56', '2022-02-18 01:13:56', NULL),
(1107, 0, 'E04DD025-505D-46EC-91AE-E1A80E9B4AD6', 9, 'image/jpeg', 3392572, 'covers/e04dd025-505d-46ec-91ae-e1a80e9b4ad6.jpeg', '[]', '2022-02-18 01:38:00', '2022-02-18 01:38:00', NULL),
(1108, 0, 'avatar 1645173536073', 3, 'image/png', 140216, 'avatars/avatar-1645173536073.png', '[]', '2022-02-18 01:38:57', '2022-02-18 01:38:57', NULL),
(1109, 0, 'avatar 1645173591296', 3, 'image/png', 132613, 'avatars/avatar-1645173591296.png', '[]', '2022-02-18 01:39:51', '2022-02-18 01:39:51', NULL),
(1110, 0, '2A43F850-EEE8-4C2C-AA64-FE188AC5CF78', 9, 'image/jpeg', 13296, 'covers/2a43f850-eee8-4c2c-aa64-fe188ac5cf78.jpeg', '[]', '2022-02-18 01:49:44', '2022-02-18 01:49:44', NULL),
(1111, 0, 'avatar 1645177301758', 3, 'image/png', 126460, 'avatars/avatar-1645177301758.png', '[]', '2022-02-18 02:41:42', '2022-02-18 02:41:42', NULL),
(1112, 0, '53448150-A84C-46B1-B72C-D6EB7BCF1FFA', 9, 'image/jpeg', 3471163, 'covers/53448150-a84c-46b1-b72c-d6eb7bcf1ffa.jpeg', '[]', '2022-02-18 02:52:20', '2022-02-18 02:52:20', NULL),
(1113, 1, 'Untitled-1', 65, 'image/jpeg', 275036, 'logo-1/untitled-1.jpg', '[]', '2022-02-25 00:23:29', '2022-02-25 00:23:29', NULL),
(1114, 1, 'Thiết kế không tên (3)', 0, 'image/png', 14092112, 'thiet-ke-khong-ten-3.png', '[]', '2022-02-25 00:53:44', '2022-02-25 01:14:03', '2022-02-25 01:14:03'),
(1115, 1, 'Thiết kế không tên (4)', 0, 'image/png', 3829934, 'thiet-ke-khong-ten-4.png', '[]', '2022-02-25 01:10:16', '2022-02-25 01:10:16', NULL),
(1116, 1, 'Mặt trước', 58, 'application/x-gzip', 6793034, 'shop-card/mat-truoc.zip', '[]', '2022-02-25 01:38:35', '2022-02-25 01:38:40', '2022-02-25 01:38:40'),
(1117, 1, '2', 58, 'image/png', 399292, 'shop-card/2.png', '[]', '2022-02-25 01:39:05', '2022-02-25 01:39:05', NULL),
(1118, 1, '12', 58, 'image/png', 209218, 'shop-card/12.png', '[]', '2022-02-25 01:39:06', '2022-02-25 01:39:06', NULL),
(1119, 1, '13', 58, 'image/png', 194119, 'shop-card/13.png', '[]', '2022-02-25 01:39:06', '2022-02-25 01:39:06', NULL),
(1120, 1, '10', 58, 'image/png', 1320379, 'shop-card/10.png', '[]', '2022-02-25 01:39:06', '2022-02-25 01:39:06', NULL),
(1121, 1, '11', 58, 'image/png', 1304237, 'shop-card/11.png', '[]', '2022-02-25 01:39:07', '2022-02-25 01:39:07', NULL),
(1122, 1, '8', 58, 'image/png', 977033, 'shop-card/8.png', '[]', '2022-02-25 01:39:07', '2022-02-25 01:39:07', NULL),
(1123, 1, '9', 58, 'image/png', 1403856, 'shop-card/9.png', '[]', '2022-02-25 01:39:08', '2022-02-25 01:39:08', NULL),
(1124, 1, '5', 58, 'image/png', 94120, 'shop-card/5.png', '[]', '2022-02-25 01:39:08', '2022-02-25 01:39:08', NULL),
(1125, 1, '6', 58, 'image/png', 67127, 'shop-card/6.png', '[]', '2022-02-25 01:39:08', '2022-02-25 01:39:08', NULL),
(1126, 1, '7', 58, 'image/png', 229647, 'shop-card/7.png', '[]', '2022-02-25 01:39:09', '2022-02-25 01:39:09', NULL),
(1127, 1, '3', 58, 'image/png', 173427, 'shop-card/3.png', '[]', '2022-02-25 01:39:09', '2022-02-25 01:39:09', NULL),
(1128, 1, '4', 58, 'image/png', 130291, 'shop-card/4.png', '[]', '2022-02-25 01:39:09', '2022-02-25 01:39:09', NULL),
(1129, 1, '1', 58, 'image/png', 288464, 'shop-card/1.png', '[]', '2022-02-25 01:39:10', '2022-02-25 01:39:10', NULL),
(1130, 1, 'Thiết kế không tên (5)', 0, 'image/png', 3289855, 'thiet-ke-khong-ten-5.png', '[]', '2022-02-26 01:59:09', '2022-02-26 01:59:09', NULL),
(1131, 1, 'Thiết kế không tên (5)-1', 0, 'image/png', 3289855, 'thiet-ke-khong-ten-5-1.png', '[]', '2022-02-26 02:02:05', '2022-02-26 02:02:05', NULL),
(1132, 1, 'Thiết kế không tên (7)', 65, 'image/png', 23312, 'logo-1/thiet-ke-khong-ten-7.png', '[]', '2022-02-28 00:16:32', '2022-02-28 00:16:32', NULL),
(1133, 1, 'Thiết kế không tên (8)', 65, 'image/png', 142812, 'logo-1/thiet-ke-khong-ten-8.png', '[]', '2022-02-28 00:25:47', '2022-02-28 00:25:47', NULL),
(1134, 1, 'Thiết kế không tên (9)', 65, 'image/png', 205596, 'logo-1/thiet-ke-khong-ten-9.png', '[]', '2022-02-28 00:30:06', '2022-02-28 00:30:06', NULL),
(1135, 1, 'Thiết kế không tên (10)', 65, 'image/png', 294118, 'logo-1/thiet-ke-khong-ten-10.png', '[]', '2022-02-28 00:36:08', '2022-02-28 00:36:08', NULL),
(1136, 1, 'Thiết kế không tên (11)', 65, 'image/png', 32567, 'logo-1/thiet-ke-khong-ten-11.png', '[]', '2022-02-28 00:41:50', '2022-02-28 00:41:50', NULL),
(1137, 1, 'Thiết kế không tên (12)', 65, 'image/png', 5294, 'logo-1/thiet-ke-khong-ten-12.png', '[]', '2022-02-28 00:42:42', '2022-02-28 00:42:42', NULL),
(1138, 1, '97', 58, 'image/png', 221838, 'shop-card/97.png', '[]', '2022-03-01 01:09:25', '2022-03-01 01:09:25', NULL),
(1139, 1, '9-1', 58, 'image/png', 236446, 'shop-card/9-1.png', '[]', '2022-03-01 01:09:25', '2022-03-01 01:09:25', NULL),
(1140, 1, '1', 0, 'image/png', 153316, '1.png', '[]', '2022-03-01 01:41:06', '2022-03-01 01:54:05', '2022-03-01 01:54:05'),
(1141, 1, '1-1', 0, 'image/png', 153316, '1-1.png', '[]', '2022-03-01 01:41:43', '2022-03-01 01:54:05', '2022-03-01 01:54:05'),
(1142, 1, 'GOTAP.COM.VN (4)', 0, 'image/png', 195369, 'gotapcomvn-4.png', '[]', '2022-03-01 01:45:01', '2022-03-01 01:54:05', '2022-03-01 01:54:05'),
(1143, 1, 'Untitled-1-4', 0, 'image/png', 51807, 'untitled-1-4.png', '[]', '2022-03-01 01:47:00', '2022-03-01 01:54:05', '2022-03-01 01:54:05'),
(1144, 1, 'GOTAP.COM.VN (5)', 0, 'image/png', 210252, 'gotapcomvn-5.png', '[]', '2022-03-01 01:52:06', '2022-03-01 01:52:06', NULL),
(1145, 1, 'avatar 1646900732085', 3, 'image/png', 120432, 'avatars/avatar-1646900732085.png', '[]', '2022-03-10 01:25:32', '2022-03-10 01:25:32', NULL),
(1146, 1, '78EB988F-6EDA-434C-98CA-705E18D61294', 9, 'image/jpeg', 477145, 'covers/78eb988f-6eda-434c-98ca-705e18d61294.jpeg', '[]', '2022-03-10 01:30:48', '2022-03-10 01:30:48', NULL),
(1147, 1, 'F64EE289-2C3F-4064-BA5B-32993888DE3D', 9, 'image/jpeg', 465118, 'covers/f64ee289-2c3f-4064-ba5b-32993888de3d.jpeg', '[]', '2022-03-10 01:31:39', '2022-03-10 01:31:39', NULL),
(1148, 1, '38FFF3A3-7518-4F8A-927D-995B6A14B11E', 9, 'image/jpeg', 1116955, 'covers/38fff3a3-7518-4f8a-927d-995b6a14b11e.jpeg', '[]', '2022-03-10 01:32:46', '2022-03-10 01:32:46', NULL),
(1149, 1, '58EE3AD8-F249-4530-A560-4ED5B50A58DA', 9, 'image/jpeg', 469100, 'covers/58ee3ad8-f249-4530-a560-4ed5b50a58da.jpeg', '[]', '2022-03-10 01:33:09', '2022-03-10 01:33:09', NULL),
(1150, 1, 'avatar 1646907577693', 3, 'image/png', 127759, 'avatars/avatar-1646907577693.png', '[]', '2022-03-10 03:19:38', '2022-03-10 03:19:38', NULL),
(1151, 1, '069B9728-5BFF-4DB1-B943-1BFCE386342E', 9, 'image/jpeg', 339788, 'covers/069b9728-5bff-4db1-b943-1bfce386342e.jpeg', '[]', '2022-03-10 03:19:43', '2022-03-10 03:19:43', NULL),
(1152, 1, 'avatar 1647178285348', 3, 'image/png', 114255, 'avatars/avatar-1647178285348.png', '[]', '2022-03-13 06:31:26', '2022-03-13 06:31:26', NULL),
(1153, 1, '41F77CC5-B800-4D49-B97F-E5855150D7A0', 9, 'image/jpeg', 188060, 'covers/41f77cc5-b800-4d49-b97f-e5855150d7a0.jpeg', '[]', '2022-03-13 06:33:08', '2022-03-13 06:33:08', NULL),
(1154, 0, 'avatar 1647182195146', 3, 'image/png', 105780, 'avatars/avatar-1647182195146.png', '[]', '2022-03-13 07:36:35', '2022-03-13 07:36:35', NULL),
(1155, 0, 'avatar 1647182215753', 3, 'image/png', 105908, 'avatars/avatar-1647182215753.png', '[]', '2022-03-13 07:36:56', '2022-03-13 07:36:56', NULL),
(1156, 0, 'avatar 1647252710222', 3, 'image/png', 1178, 'avatars/avatar-1647252710222.png', '[]', '2022-03-14 03:11:50', '2022-03-14 03:11:50', NULL),
(1157, 0, 'avatar 1647252794494', 3, 'image/png', 1178, 'avatars/avatar-1647252794494.png', '[]', '2022-03-14 03:13:15', '2022-03-14 03:13:15', NULL),
(1158, 0, 'avatar 1647313772948', 3, 'image/png', 136562, 'avatars/avatar-1647313772948.png', '[]', '2022-03-14 20:09:33', '2022-03-14 20:09:33', NULL),
(1159, 0, 'avatar 1647313845445', 3, 'image/png', 122147, 'avatars/avatar-1647313845445.png', '[]', '2022-03-14 20:10:46', '2022-03-14 20:10:46', NULL),
(1160, 0, 'avatar 1647324097820', 3, 'image/png', 1178, 'avatars/avatar-1647324097820.png', '[]', '2022-03-14 23:01:38', '2022-03-14 23:01:38', NULL),
(1161, 0, 'avatar 1647572231731', 3, 'image/png', 121903, 'avatars/avatar-1647572231731.png', '[]', '2022-03-17 19:57:12', '2022-03-17 19:57:12', NULL),
(1162, 0, 'avatar 1647599798386', 3, 'image/png', 122124, 'avatars/avatar-1647599798386.png', '[]', '2022-03-18 03:36:39', '2022-03-18 03:36:39', NULL),
(1163, 0, 'avatar 1647602018964', 3, 'image/png', 123239, 'avatars/avatar-1647602018964.png', '[]', '2022-03-18 04:13:39', '2022-03-18 04:13:39', NULL),
(1164, 0, 'avatar 1647680583611', 3, 'image/png', 78614, 'avatars/avatar-1647680583611.png', '[]', '2022-03-19 02:03:04', '2022-03-19 02:03:04', NULL),
(1165, 0, '3C29C1E9-C57D-4006-B834-BEDBA7A87ED1', 9, 'image/jpeg', 105138, 'covers/3c29c1e9-c57d-4006-b834-bedba7a87ed1.jpeg', '[]', '2022-03-19 02:03:55', '2022-03-19 02:03:55', NULL),
(1166, 0, 'avatar 1647834930784', 3, 'image/png', 35608, 'avatars/avatar-1647834930784.png', '[]', '2022-03-20 20:55:30', '2022-03-20 20:55:30', NULL),
(1167, 0, 'avatar 1647925119494', 3, 'image/png', 100501, 'avatars/avatar-1647925119494.png', '[]', '2022-03-21 21:58:40', '2022-03-21 21:58:40', NULL),
(1168, 0, 'avatar 1647943048567', 3, 'image/png', 121038, 'avatars/avatar-1647943048567.png', '[]', '2022-03-22 02:57:29', '2022-03-22 02:57:29', NULL),
(1169, 0, 'avatar 1648176929716', 3, 'image/png', 115185, 'avatars/avatar-1648176929716.png', '[]', '2022-03-24 19:55:30', '2022-03-24 19:55:30', NULL),
(1170, 0, 'avatar 1648177051527', 3, 'image/png', 120330, 'avatars/avatar-1648177051527.png', '[]', '2022-03-24 19:57:32', '2022-03-24 19:57:32', NULL),
(1171, 0, 'avatar 1648423755842', 3, 'image/png', 153728, 'avatars/avatar-1648423755842.png', '[]', '2022-03-27 16:29:16', '2022-03-27 16:29:16', NULL),
(1172, 0, 'avatar 1648423809520', 3, 'image/png', 154665, 'avatars/avatar-1648423809520.png', '[]', '2022-03-27 16:30:10', '2022-03-27 16:30:10', NULL),
(1173, 1, 'avatar 1648716737732', 3, 'image/png', 108742, 'avatars/avatar-1648716737732.png', '[]', '2022-03-31 01:52:18', '2022-03-31 01:52:18', NULL),
(1174, 1, 'ED19C4BB-68ED-4638-8C7D-1516D80A2684', 9, 'image/jpeg', 138362, 'covers/ed19c4bb-68ed-4638-8c7d-1516d80a2684.jpeg', '[]', '2022-03-31 01:52:27', '2022-03-31 01:52:27', NULL),
(1175, 1, 'E127D68C-F15B-4D9D-9BCF-5DC0D9F08AA3', 9, 'image/jpeg', 389543, 'covers/e127d68c-f15b-4d9d-9bcf-5dc0d9f08aa3.jpeg', '[]', '2022-03-31 01:53:10', '2022-03-31 01:53:10', NULL),
(1176, 0, 'avatar 1648877947752', 3, 'image/png', 118769, 'avatars/avatar-1648877947752.png', '[]', '2022-04-01 22:39:08', '2022-04-01 22:39:08', NULL),
(1177, 0, 'avatar 1648879201660', 3, 'image/png', 119000, 'avatars/avatar-1648879201660.png', '[]', '2022-04-01 23:00:02', '2022-04-01 23:00:02', NULL),
(1178, 1, 'avatar 1648906211122', 3, 'image/png', 114612, 'avatars/avatar-1648906211122.png', '[]', '2022-04-02 06:30:11', '2022-04-02 06:30:11', NULL),
(1179, 0, 'avatar 1648978042709', 3, 'image/png', 144187, 'avatars/avatar-1648978042709.png', '[]', '2022-04-03 02:27:23', '2022-04-03 02:27:23', NULL),
(1180, 1, 'avatar 1648998438533', 3, 'image/png', 112363, 'avatars/avatar-1648998438533.png', '[]', '2022-04-03 08:07:19', '2022-04-03 08:07:19', NULL),
(1181, 1, 'avatar 1649000608925', 3, 'image/png', 89089, 'avatars/avatar-1649000608925.png', '[]', '2022-04-03 08:43:29', '2022-04-03 08:43:29', NULL),
(1182, 0, 'avatar 1649054184602', 3, 'image/png', 146397, 'avatars/avatar-1649054184602.png', '[]', '2022-04-03 23:36:25', '2022-04-03 23:36:25', NULL),
(1183, 1, 'avatar 1649393642533', 3, 'image/png', 114612, 'avatars/avatar-1649393642533.png', '[]', '2022-04-07 21:54:03', '2022-04-07 21:54:03', NULL),
(1184, 1, 'F377B8A8-710A-44AB-8370-BBCE63F212E1', 9, 'image/jpeg', 188060, 'covers/f377b8a8-710a-44ab-8370-bbce63f212e1.jpeg', '[]', '2022-04-07 21:56:13', '2022-04-07 21:56:13', NULL),
(1185, 1, 'avatar 1649393931247', 3, 'image/png', 43709, 'avatars/avatar-1649393931247.png', '[]', '2022-04-07 21:58:51', '2022-04-07 21:58:51', NULL),
(1186, 0, 'avatar 1649558092947', 3, 'image/png', 126976, 'avatars/avatar-1649558092947.png', '[]', '2022-04-09 19:34:53', '2022-04-09 19:34:53', NULL),
(1187, 0, 'D72DAC63-E877-4FE0-A35F-353F46567171', 9, 'image/jpeg', 1306654, 'covers/d72dac63-e877-4fe0-a35f-353f46567171.jpeg', '[]', '2022-04-09 19:35:47', '2022-04-09 19:35:47', NULL),
(1188, 0, 'avatar 1649645036594', 3, 'image/png', 120014, 'avatars/avatar-1649645036594.png', '[]', '2022-04-10 19:43:57', '2022-04-10 19:43:57', NULL),
(1189, 0, 'avatar 1649822395302', 3, 'image/png', 134584, 'avatars/avatar-1649822395302.png', '[]', '2022-04-12 20:59:55', '2022-04-12 20:59:55', NULL),
(1190, 0, 'avatar 1649999263025', 3, 'image/png', 159306, 'avatars/avatar-1649999263025.png', '[]', '2022-04-14 22:07:44', '2022-04-14 22:07:44', NULL);
INSERT INTO `media_files` (`id`, `user_id`, `name`, `folder_id`, `mime_type`, `size`, `url`, `options`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1191, 0, 'avatar 1650001172260', 3, 'image/png', 125970, 'avatars/avatar-1650001172260.png', '[]', '2022-04-14 22:39:32', '2022-04-14 22:39:32', NULL),
(1192, 0, 'avatar 1650385218796', 3, 'image/png', 106461, 'avatars/avatar-1650385218796.png', '[]', '2022-04-19 09:20:19', '2022-04-19 09:20:19', NULL),
(1193, 0, 'avatar 1650385386604', 3, 'image/png', 107392, 'avatars/avatar-1650385386604.png', '[]', '2022-04-19 09:23:07', '2022-04-19 09:23:07', NULL),
(1194, 0, 'avatar 1650528566164', 3, 'image/png', 94241, 'avatars/avatar-1650528566164.png', '[]', '2022-04-21 01:09:28', '2022-04-21 01:09:28', NULL),
(1195, 0, 'avatar 1650531459802', 3, 'image/png', 113841, 'avatars/avatar-1650531459802.png', '[]', '2022-04-21 01:58:08', '2022-04-21 01:58:08', NULL),
(1196, 1, 'avatar 1650737408322', 3, 'image/png', 90673, 'avatars/avatar-1650737408322.png', '[]', '2022-04-23 11:10:09', '2022-04-23 11:10:09', NULL),
(1197, 1, '94ED0A55-4EE7-4F7B-ADBF-BEAE8137EED8', 9, 'image/jpeg', 287522, 'covers/94ed0a55-4ee7-4f7b-adbf-beae8137eed8.jpeg', '[]', '2022-04-23 11:10:14', '2022-04-23 11:10:14', NULL),
(1198, 1, '88D83D08-CF6A-4F26-AF54-70A66A156DB4', 9, 'image/jpeg', 467918, 'covers/88d83d08-cf6a-4f26-af54-70a66a156db4.jpeg', '[]', '2022-04-23 11:11:23', '2022-04-23 11:11:23', NULL),
(1199, 1, 'D714B0F4-4FB5-40D2-AE7C-8D7A71E3F7D1', 9, 'image/jpeg', 87072, 'covers/d714b0f4-4fb5-40d2-ae7c-8d7a71e3f7d1.jpeg', '[]', '2022-04-23 12:02:49', '2022-04-23 12:02:49', NULL),
(1200, 1, 'avatar 1650740607214', 3, 'image/png', 86403, 'avatars/avatar-1650740607214.png', '[]', '2022-04-23 12:03:28', '2022-04-23 12:03:28', NULL),
(1201, 1, 'avatar 1650740621473', 3, 'image/png', 106577, 'avatars/avatar-1650740621473.png', '[]', '2022-04-23 12:03:42', '2022-04-23 12:03:42', NULL),
(1202, 1, 'avatar 1650741820794', 3, 'image/png', 164379, 'avatars/avatar-1650741820794.png', '[]', '2022-04-23 12:23:41', '2022-04-23 12:23:41', NULL),
(1203, 1, '41B01EBF-34E1-4738-87A1-996CDEB64D23', 9, 'image/jpeg', 4001030, 'covers/41b01ebf-34e1-4738-87a1-996cdeb64d23.jpeg', '[]', '2022-04-23 12:23:48', '2022-04-23 12:23:48', NULL),
(1204, 1, '873C49D3-C760-4782-8990-051224E1FCF7', 9, 'image/jpeg', 1513374, 'covers/873c49d3-c760-4782-8990-051224e1fcf7.jpeg', '[]', '2022-04-23 13:34:22', '2022-04-23 13:34:22', NULL),
(1205, 1, 'avatar 1650746074981', 3, 'image/png', 134263, 'avatars/avatar-1650746074981.png', '[]', '2022-04-23 13:34:35', '2022-04-23 13:34:35', NULL),
(1206, 1, '132D6015-9258-4018-A5A9-B9E67C50A66E', 9, 'image/jpeg', 1078991, 'covers/132d6015-9258-4018-a5a9-b9e67c50a66e.jpeg', '[]', '2022-04-23 13:34:55', '2022-04-23 13:34:55', NULL),
(1207, 0, 'avatar 1651120121634', 3, 'image/png', 106799, 'avatars/avatar-1651120121634.png', '[]', '2022-04-27 21:28:42', '2022-04-27 21:28:42', NULL),
(1208, 0, 'avatar 1651208962858', 3, 'image/png', 82584, 'avatars/avatar-1651208962858.png', '[]', '2022-04-28 22:09:23', '2022-04-28 22:09:23', NULL),
(1209, 0, 'avatar 1651209329835', 3, 'image/png', 84479, 'avatars/avatar-1651209329835.png', '[]', '2022-04-28 22:15:30', '2022-04-28 22:15:30', NULL),
(1210, 0, 'avatar 1651214353891', 3, 'image/png', 173907, 'avatars/avatar-1651214353891.png', '[]', '2022-04-28 23:39:14', '2022-04-28 23:39:14', NULL),
(1211, 0, 'avatar 1651214419360', 3, 'image/png', 175277, 'avatars/avatar-1651214419360.png', '[]', '2022-04-28 23:40:19', '2022-04-28 23:40:19', NULL),
(1212, 0, 'avatar 1651237930245', 3, 'image/png', 109311, 'avatars/avatar-1651237930245.png', '[]', '2022-04-29 06:12:12', '2022-04-29 06:12:12', NULL),
(1213, 0, 'avatar 1651237932620', 3, 'image/png', 109311, 'avatars/avatar-1651237932620.png', '[]', '2022-04-29 06:12:13', '2022-04-29 06:12:13', NULL),
(1214, 0, 'avatar 1651302379453', 3, 'image/png', 112575, 'avatars/avatar-1651302379453.png', '[]', '2022-04-30 00:06:20', '2022-04-30 00:06:20', NULL),
(1215, 0, 'avatar 1651302555540', 3, 'image/png', 114346, 'avatars/avatar-1651302555540.png', '[]', '2022-04-30 00:09:16', '2022-04-30 00:09:16', NULL),
(1216, 1, 'avatar 1651317045976', 3, 'image/png', 151478, 'avatars/avatar-1651317045976.png', '[]', '2022-04-30 04:10:46', '2022-04-30 04:10:46', NULL),
(1217, 1, 'E064287D-1E99-42D6-9CA2-A6A838BB206A', 9, 'image/jpeg', 188060, 'covers/e064287d-1e99-42d6-9ca2-a6a838bb206a.jpeg', '[]', '2022-04-30 04:11:04', '2022-04-30 04:11:04', NULL),
(1218, 0, 'avatar 1651317993699', 3, 'image/png', 126107, 'avatars/avatar-1651317993699.png', '[]', '2022-04-30 04:26:34', '2022-04-30 04:26:34', NULL),
(1219, 0, 'avatar 1651318064481', 3, 'image/png', 118724, 'avatars/avatar-1651318064481.png', '[]', '2022-04-30 04:27:45', '2022-04-30 04:27:45', NULL),
(1220, 0, 'avatar 1651318120551', 3, 'image/png', 151724, 'avatars/avatar-1651318120551.png', '[]', '2022-04-30 04:28:41', '2022-04-30 04:28:41', NULL),
(1221, 0, 'avatar 1651343299439', 3, 'image/png', 130491, 'avatars/avatar-1651343299439.png', '[]', '2022-04-30 11:28:20', '2022-04-30 11:28:20', NULL),
(1222, 0, 'avatar 1651480229550', 3, 'image/png', 105602, 'avatars/avatar-1651480229550.png', '[]', '2022-05-02 01:30:30', '2022-05-02 01:30:30', NULL),
(1223, 0, 'avatar 1651480697492', 3, 'image/png', 107648, 'avatars/avatar-1651480697492.png', '[]', '2022-05-02 01:38:18', '2022-05-02 01:38:18', NULL),
(1224, 0, 'avatar 1651480757501', 3, 'image/png', 106185, 'avatars/avatar-1651480757501.png', '[]', '2022-05-02 01:39:18', '2022-05-02 01:39:18', NULL),
(1225, 0, 'D29555C4-89C1-401B-BD29-673A348514F3', 9, 'image/jpeg', 152687, 'covers/d29555c4-89c1-401b-bd29-673a348514f3.jpeg', '[]', '2022-05-02 01:46:44', '2022-05-02 01:46:44', NULL),
(1226, 0, 'avatar 1651481236953', 3, 'image/png', 125011, 'avatars/avatar-1651481236953.png', '[]', '2022-05-02 01:47:17', '2022-05-02 01:47:17', NULL),
(1227, 0, 'EA4C6302-B2D6-4297-B608-536D8D0A118A', 9, 'image/jpeg', 152687, 'covers/ea4c6302-b2d6-4297-b608-536d8d0a118a.jpeg', '[]', '2022-05-02 01:53:39', '2022-05-02 01:53:39', NULL),
(1228, 0, 'avatar 1651722769890', 3, 'image/png', 144508, 'avatars/avatar-1651722769890.png', '[]', '2022-05-04 20:52:50', '2022-05-04 20:52:50', NULL),
(1229, 0, 'avatar 1651723138350', 3, 'image/png', 133587, 'avatars/avatar-1651723138350.png', '[]', '2022-05-04 20:58:59', '2022-05-04 20:58:59', NULL),
(1230, 0, '13CDE39E-2787-4093-A38C-F1CCAAE167BA', 9, 'image/jpeg', 99815, 'covers/13cde39e-2787-4093-a38c-f1ccaae167ba.jpeg', '[]', '2022-05-05 04:46:18', '2022-05-05 04:46:18', NULL),
(1231, 0, 'E8377A1C-ACFB-4AAC-8668-ED018B0308D9', 9, 'image/jpeg', 162786, 'covers/e8377a1c-acfb-4aac-8668-ed018b0308d9.jpeg', '[]', '2022-05-05 04:48:02', '2022-05-05 04:48:02', NULL),
(1232, 0, 'FD7C891D-0354-47DD-9BC4-6C3494CADC7C', 9, 'image/jpeg', 833800, 'covers/fd7c891d-0354-47dd-9bc4-6c3494cadc7c.jpeg', '[]', '2022-05-05 04:48:29', '2022-05-05 04:48:29', NULL),
(1233, 0, 'avatar 1651765637857', 3, 'image/png', 105394, 'avatars/avatar-1651765637857.png', '[]', '2022-05-05 08:47:21', '2022-05-05 08:47:21', NULL),
(1234, 0, 'avatar 1651765640753', 3, 'image/png', 105394, 'avatars/avatar-1651765640753.png', '[]', '2022-05-05 08:47:22', '2022-05-05 08:47:22', NULL),
(1235, 0, 'B6FB6FB2-DFB5-40A6-954B-2D0A9A509D1A', 9, 'image/jpeg', 2183836, 'covers/b6fb6fb2-dfb5-40a6-954b-2d0a9a509d1a.jpeg', '[]', '2022-05-05 08:48:56', '2022-05-05 08:48:56', NULL),
(1236, 0, 'avatar 1651765757627', 3, 'image/png', 138889, 'avatars/avatar-1651765757627.png', '[]', '2022-05-05 08:49:18', '2022-05-05 08:49:18', NULL),
(1237, 0, '67F7B2C8-975F-4152-BC8A-8BFC2484170E', 9, 'image/jpeg', 122251, 'covers/67f7b2c8-975f-4152-bc8a-8bfc2484170e.jpeg', '[]', '2022-05-05 08:49:38', '2022-05-05 08:49:38', NULL),
(1238, 0, '7814B512-E536-43E8-8DE7-4B66C488579F', 9, 'image/jpeg', 3881275, 'covers/7814b512-e536-43e8-8de7-4b66c488579f.jpeg', '[]', '2022-05-05 08:50:22', '2022-05-05 08:50:22', NULL),
(1239, 0, 'B992BB99-A699-4317-BA9E-2DDB7D75F89B', 9, 'image/jpeg', 3881275, 'covers/b992bb99-a699-4317-ba9e-2ddb7d75f89b.jpeg', '[]', '2022-05-05 08:51:16', '2022-05-05 08:51:16', NULL),
(1240, 0, 'avatar 1651765922086', 3, 'image/png', 105770, 'avatars/avatar-1651765922086.png', '[]', '2022-05-05 08:52:06', '2022-05-05 08:52:06', NULL),
(1241, 0, '59085482-65FC-4CF9-BC99-572D76E69F51', 9, 'image/jpeg', 1706102, 'covers/59085482-65fc-4cf9-bc99-572d76e69f51.jpeg', '[]', '2022-05-05 09:03:30', '2022-05-05 09:03:30', NULL),
(1242, 0, 'avatar 1651815903062', 3, 'image/png', 116142, 'avatars/avatar-1651815903062.png', '[]', '2022-05-05 22:45:03', '2022-05-05 22:45:03', NULL),
(1243, 0, '92888C9B-94E7-4DC5-8877-5688F135C201', 9, 'image/jpeg', 359959, 'covers/92888c9b-94e7-4dc5-8877-5688f135c201.jpeg', '[]', '2022-05-05 22:45:20', '2022-05-05 22:45:20', NULL),
(1244, 0, 'avatar 1651830056245', 3, 'image/png', 79673, 'avatars/avatar-1651830056245.png', '[]', '2022-05-06 02:40:57', '2022-05-06 02:40:57', NULL),
(1245, 0, '7A2BD0E4-904D-4FCA-8913-398BBC826B3B', 9, 'image/jpeg', 336652, 'covers/7a2bd0e4-904d-4fca-8913-398bbc826b3b.jpeg', '[]', '2022-05-06 02:41:32', '2022-05-06 02:41:32', NULL),
(1246, 0, '6B934CA8-DE98-4B55-B99D-3D177D580B39', 9, 'image/jpeg', 2918641, 'covers/6b934ca8-de98-4b55-b99d-3d177d580b39.jpeg', '[]', '2022-05-06 02:41:44', '2022-05-06 02:41:44', NULL),
(1247, 0, '60B0B65C-FDBB-4B80-8A42-8D968A6EFBB3', 9, 'image/jpeg', 1005440, 'covers/60b0b65c-fdbb-4b80-8a42-8d968a6efbb3.jpeg', '[]', '2022-05-06 02:42:00', '2022-05-06 02:42:00', NULL),
(1248, 0, '969B7D84-D432-48BE-B873-5CDC7352FB70', 9, 'image/jpeg', 135839, 'covers/969b7d84-d432-48be-b873-5cdc7352fb70.jpeg', '[]', '2022-05-06 02:42:36', '2022-05-06 02:42:36', NULL),
(1249, 0, 'avatar 1651830238700', 3, 'image/png', 78196, 'avatars/avatar-1651830238700.png', '[]', '2022-05-06 02:43:59', '2022-05-06 02:43:59', NULL),
(1250, 0, 'avatar 1651831307264', 3, 'image/png', 68342, 'avatars/avatar-1651831307264.png', '[]', '2022-05-06 03:01:47', '2022-05-06 03:01:47', NULL),
(1251, 0, 'avatar 1651835922558', 3, 'image/png', 103371, 'avatars/avatar-1651835922558.png', '[]', '2022-05-06 04:18:43', '2022-05-06 04:18:43', NULL),
(1252, 0, 'DF6F7C10-2E70-42F1-8376-608498B1C871', 9, 'image/jpeg', 675534, 'covers/df6f7c10-2e70-42f1-8376-608498b1c871.jpeg', '[]', '2022-05-06 04:19:00', '2022-05-06 04:19:00', NULL),
(1253, 0, 'avatar 1651905139480', 3, 'image/png', 115156, 'avatars/avatar-1651905139480.png', '[]', '2022-05-06 23:32:20', '2022-05-06 23:32:20', NULL),
(1254, 0, 'avatar 1651925557911', 3, 'image/png', 126394, 'avatars/avatar-1651925557911.png', '[]', '2022-05-07 05:12:38', '2022-05-07 05:12:38', NULL),
(1255, 0, '30C3DEC2-B89E-415A-A7B6-86D16EFCA83A', 9, 'image/jpeg', 490224, 'covers/30c3dec2-b89e-415a-a7b6-86d16efca83a.jpeg', '[]', '2022-05-07 05:13:29', '2022-05-07 05:13:29', NULL),
(1256, 0, 'avatar 1652079355624', 3, 'image/png', 99003, 'avatars/avatar-1652079355624.png', '[]', '2022-05-08 23:55:56', '2022-05-08 23:55:56', NULL),
(1257, 0, '5A504EAA-9B8E-4E3A-84A3-D3FD91E528C9', 9, 'image/jpeg', 639828, 'covers/5a504eaa-9b8e-4e3a-84a3-d3fd91e528c9.jpeg', '[]', '2022-05-08 23:57:49', '2022-05-08 23:57:49', NULL),
(1258, 0, 'avatar 1652095785937', 3, 'image/png', 153912, 'avatars/avatar-1652095785937.png', '[]', '2022-05-09 04:29:47', '2022-05-09 04:29:47', NULL),
(1259, 0, 'avatar 1652248495865', 3, 'image/png', 98291, 'avatars/avatar-1652248495865.png', '[]', '2022-05-10 22:54:56', '2022-05-10 22:54:56', NULL),
(1260, 0, 'IMG_20220502_122836', 9, 'image/jpeg', 601123, 'covers/img-20220502-122836.jpg', '[]', '2022-05-12 04:07:30', '2022-05-12 04:07:30', NULL),
(1261, 0, 'Screenshot_20220216_222402', 9, 'image/jpeg', 152905, 'covers/screenshot-20220216-222402.jpg', '[]', '2022-05-12 04:08:03', '2022-05-12 04:08:03', NULL),
(1262, 0, 'Screenshot_20220216_222402-1', 9, 'image/jpeg', 152905, 'covers/screenshot-20220216-222402-1.jpg', '[]', '2022-05-12 04:10:37', '2022-05-12 04:10:37', NULL),
(1263, 0, 'avatar 1652353897090', 3, 'image/png', 142508, 'avatars/avatar-1652353897090.png', '[]', '2022-05-12 04:11:38', '2022-05-12 04:11:38', NULL),
(1264, 0, 'avatar 1652354956693', 3, 'image/png', 129237, 'avatars/avatar-1652354956693.png', '[]', '2022-05-12 04:29:18', '2022-05-12 04:29:18', NULL),
(1265, 0, 'avatar 1652355222966', 3, 'image/png', 118697, 'avatars/avatar-1652355222966.png', '[]', '2022-05-12 04:33:44', '2022-05-12 04:33:44', NULL),
(1266, 0, 'avatar 1652355275999', 3, 'image/png', 117536, 'avatars/avatar-1652355275999.png', '[]', '2022-05-12 04:34:36', '2022-05-12 04:34:36', NULL),
(1267, 0, 'avatar 1652355329144', 3, 'image/png', 115644, 'avatars/avatar-1652355329144.png', '[]', '2022-05-12 04:35:30', '2022-05-12 04:35:30', NULL),
(1268, 0, 'avatar 1652413179790', 3, 'image/png', 129369, 'avatars/avatar-1652413179790.png', '[]', '2022-05-12 20:39:40', '2022-05-12 20:39:40', NULL),
(1269, 0, 'D67FE28C-2F6B-417B-81E1-7CDCD4B5C897', 9, 'image/jpeg', 1813360, 'covers/d67fe28c-2f6b-417b-81e1-7cdcd4b5c897.jpeg', '[]', '2022-05-12 20:40:17', '2022-05-12 20:40:17', NULL),
(1270, 1, 'avatar 1652639215280', 3, 'image/png', 118562, 'avatars/avatar-1652639215280.png', '[]', '2022-05-15 11:26:55', '2022-05-15 11:26:55', NULL),
(1271, 1, 'B45ACABE-BBBB-45A3-A3C8-6898CD04559A', 9, 'image/jpeg', 337885, 'covers/b45acabe-bbbb-45a3-a3c8-6898cd04559a.jpeg', '[]', '2022-05-15 11:27:00', '2022-05-15 11:27:00', NULL),
(1272, 0, 'avatar 1652779093692', 3, 'image/png', 127567, 'avatars/avatar-1652779093692.png', '[]', '2022-05-17 02:18:14', '2022-05-17 02:18:14', NULL),
(1273, 0, 'DF1BB38B-7BFB-4664-90C0-55075AC67B17', 9, 'image/jpeg', 2513961, 'covers/df1bb38b-7bfb-4664-90c0-55075ac67b17.jpeg', '[]', '2022-05-17 02:19:49', '2022-05-17 02:19:49', NULL),
(1274, 0, '57FA7661-7B7E-496B-928C-B308E7B7AA07', 9, 'image/jpeg', 2513961, 'covers/57fa7661-7b7e-496b-928c-b308e7b7aa07.jpeg', '[]', '2022-05-17 02:20:03', '2022-05-17 02:20:03', NULL),
(1275, 0, 'A11600E5-1744-4213-B277-B3DE2F126FFA', 9, 'image/jpeg', 25283, 'covers/a11600e5-1744-4213-b277-b3de2f126ffa.jpeg', '[]', '2022-05-17 02:20:10', '2022-05-17 02:20:10', NULL),
(1276, 0, '432A02E2-215B-4DB3-85D7-A3CDADB9C942', 9, 'image/jpeg', 1891656, 'covers/432a02e2-215b-4db3-85d7-a3cdadb9c942.jpeg', '[]', '2022-05-17 02:20:29', '2022-05-17 02:20:29', NULL),
(1277, 0, '088194AD-73F4-4E80-8B9E-D0B1688EBB38', 9, 'image/jpeg', 105940, 'covers/088194ad-73f4-4e80-8b9e-d0b1688ebb38.jpeg', '[]', '2022-05-17 02:21:32', '2022-05-17 02:21:32', NULL),
(1278, 0, 'avatar 1652779451002', 3, 'image/png', 124871, 'avatars/avatar-1652779451002.png', '[]', '2022-05-17 02:24:11', '2022-05-17 02:24:11', NULL),
(1279, 0, 'EE402836-4C5D-4D79-B5AF-832EABAD03DF', 9, 'image/jpeg', 105940, 'covers/ee402836-4c5d-4d79-b5af-832eabad03df.jpeg', '[]', '2022-05-17 02:24:15', '2022-05-17 02:24:15', NULL),
(1280, 0, 'CC3BC7B7-FC74-43A8-8B8D-B2E9DAD92557', 9, 'image/jpeg', 40711, 'covers/cc3bc7b7-fc74-43a8-8b8d-b2e9dad92557.jpeg', '[]', '2022-05-17 02:24:25', '2022-05-17 02:24:25', NULL),
(1281, 0, '5A39D55E-6EF4-457E-BC65-3AB194E7F441', 9, 'image/jpeg', 105940, 'covers/5a39d55e-6ef4-457e-bc65-3ab194e7f441.jpeg', '[]', '2022-05-17 02:24:31', '2022-05-17 02:24:31', NULL),
(1282, 0, '4DB44FCD-2520-41AA-84B6-270C4B5492E1', 9, 'image/jpeg', 4697575, 'covers/4db44fcd-2520-41aa-84b6-270c4b5492e1.jpeg', '[]', '2022-05-17 02:41:28', '2022-05-17 02:41:28', NULL),
(1283, 0, 'avatar 1653040873201', 3, 'image/png', 115477, 'avatars/avatar-1653040873201.png', '[]', '2022-05-20 03:01:03', '2022-05-20 03:01:03', NULL),
(1284, 0, 'avatar 1653041009050', 3, 'image/png', 116148, 'avatars/avatar-1653041009050.png', '[]', '2022-05-20 03:03:19', '2022-05-20 03:03:19', NULL),
(1285, 0, 'avatar 1653042355133', 3, 'image/png', 131534, 'avatars/avatar-1653042355133.png', '[]', '2022-05-20 03:25:55', '2022-05-20 03:25:55', NULL),
(1286, 0, '5BD09482-0C5D-486E-A237-536B69D064AC', 9, 'image/jpeg', 2001285, 'covers/5bd09482-0c5d-486e-a237-536b69d064ac.jpeg', '[]', '2022-05-20 03:26:08', '2022-05-20 03:26:08', NULL),
(1287, 0, 'avatar 1653042967107', 3, 'image/png', 132071, 'avatars/avatar-1653042967107.png', '[]', '2022-05-20 03:36:08', '2022-05-20 03:36:08', NULL),
(1288, 0, '8519DB4C-825C-4A4F-A816-01B0A2FA8ACA', 9, 'image/jpeg', 550135, 'covers/8519db4c-825c-4a4f-a816-01b0a2fa8aca.jpeg', '[]', '2022-05-20 03:42:53', '2022-05-20 03:42:53', NULL),
(1289, 0, 'avatar 1653056379917', 3, 'image/png', 57230, 'avatars/avatar-1653056379917.png', '[]', '2022-05-20 07:19:40', '2022-05-20 07:19:40', NULL),
(1290, 0, 'EFE887B0-4720-47DA-A1B1-32BFBF9EDCA2', 9, 'image/jpeg', 3066708, 'covers/efe887b0-4720-47da-a1b1-32bfbf9edca2.jpeg', '[]', '2022-05-20 07:19:54', '2022-05-20 07:19:54', NULL),
(1291, 0, 'avatar 1653448587097', 3, 'image/png', 120792, 'avatars/avatar-1653448587097.png', '[]', '2022-05-24 20:16:27', '2022-05-24 20:16:27', NULL),
(1292, 0, 'avatar 1653451712477', 3, 'image/png', 113346, 'avatars/avatar-1653451712477.png', '[]', '2022-05-24 21:08:33', '2022-05-24 21:08:33', NULL),
(1293, 0, 'F8F85DC1-4EC6-4BA4-BCF3-943714EB0708', 9, 'image/jpeg', 989427, 'covers/f8f85dc1-4ec6-4ba4-bcf3-943714eb0708.jpeg', '[]', '2022-05-24 21:08:48', '2022-05-24 21:08:48', NULL),
(1294, 0, 'avatar 1653452278050', 3, 'image/png', 111883, 'avatars/avatar-1653452278050.png', '[]', '2022-05-24 21:17:58', '2022-05-24 21:17:58', NULL),
(1295, 0, 'AB3783B4-C774-45F7-803A-ECD132CE2EB7', 9, 'image/jpeg', 989427, 'covers/ab3783b4-c774-45f7-803a-ecd132ce2eb7.jpeg', '[]', '2022-05-24 21:18:13', '2022-05-24 21:18:13', NULL),
(1296, 0, 'avatar 1654069575408', 3, 'image/png', 114198, 'avatars/avatar-1654069575408.png', '[]', '2022-06-01 00:46:15', '2022-06-01 00:46:15', NULL),
(1297, 0, 'avatar 1654069593943', 3, 'image/png', 136159, 'avatars/avatar-1654069593943.png', '[]', '2022-06-01 00:46:34', '2022-06-01 00:46:34', NULL),
(1298, 0, 'E2B71C66-DB90-46BE-85AE-C20221E137B5', 9, 'image/jpeg', 4159231, 'covers/e2b71c66-db90-46be-85ae-c20221e137b5.jpeg', '[]', '2022-06-01 00:46:45', '2022-06-01 00:46:45', NULL),
(1299, 0, 'A9F4E88D-DBF2-46C7-806A-0278A61C52D8', 9, 'image/jpeg', 4159231, 'covers/a9f4e88d-dbf2-46c7-806a-0278a61c52d8.jpeg', '[]', '2022-06-01 00:47:03', '2022-06-01 00:47:03', NULL),
(1300, 0, 'C04C28DE-9BA5-4B3E-9567-F600E36CA2C1', 9, 'image/jpeg', 4159231, 'covers/c04c28de-9ba5-4b3e-9567-f600e36ca2c1.jpeg', '[]', '2022-06-01 00:51:18', '2022-06-01 00:51:18', NULL),
(1301, 0, 'avatar 1654069896291', 3, 'image/png', 135910, 'avatars/avatar-1654069896291.png', '[]', '2022-06-01 00:51:36', '2022-06-01 00:51:36', NULL),
(1302, 0, 'avatar 1654070243133', 3, 'image/png', 136267, 'avatars/avatar-1654070243133.png', '[]', '2022-06-01 00:57:23', '2022-06-01 00:57:23', NULL),
(1303, 0, '97F1F1E7-9133-4397-B75B-8E3E6A42115A', 9, 'image/jpeg', 4159231, 'covers/97f1f1e7-9133-4397-b75b-8e3e6a42115a.jpeg', '[]', '2022-06-01 00:57:33', '2022-06-01 00:57:33', NULL),
(1304, 0, 'avatar 1654077202272', 3, 'image/png', 111716, 'avatars/avatar-1654077202272.png', '[]', '2022-06-01 02:53:22', '2022-06-01 02:53:22', NULL),
(1305, 0, '8E9D8DFB-A22E-4D21-A8DD-131ADDD3578A', 9, 'image/jpeg', 313666, 'covers/8e9d8dfb-a22e-4d21-a8dd-131addd3578a.jpeg', '[]', '2022-06-01 02:53:42', '2022-06-01 02:53:42', NULL),
(1306, 0, '12087D99-0CB0-4C19-AC5F-1B5967D36F6F', 9, 'image/jpeg', 492925, 'covers/12087d99-0cb0-4c19-ac5f-1b5967d36f6f.jpeg', '[]', '2022-06-01 02:54:25', '2022-06-01 02:54:25', NULL),
(1307, 0, 'avatar 1654077289088', 3, 'image/png', 134039, 'avatars/avatar-1654077289088.png', '[]', '2022-06-01 02:54:49', '2022-06-01 02:54:49', NULL),
(1308, 0, 'avatar 1654077332271', 3, 'image/png', 147205, 'avatars/avatar-1654077332271.png', '[]', '2022-06-01 02:55:32', '2022-06-01 02:55:32', NULL),
(1309, 0, 'avatar 1654077378262', 3, 'image/png', 112079, 'avatars/avatar-1654077378262.png', '[]', '2022-06-01 02:56:18', '2022-06-01 02:56:18', NULL),
(1310, 0, 'avatar 1654077448392', 3, 'image/png', 147250, 'avatars/avatar-1654077448392.png', '[]', '2022-06-01 02:57:28', '2022-06-01 02:57:28', NULL),
(1311, 0, 'BD6677A8-473C-490D-963B-A9A2D3B23EB5', 9, 'image/png', 17129280, 'covers/bd6677a8-473c-490d-963b-a9a2d3b23eb5.png', '[]', '2022-06-01 02:57:42', '2022-06-01 02:57:42', NULL),
(1312, 0, '3AFECAC7-94E5-421A-99C6-A79D9C83490A', 9, 'image/jpeg', 807079, 'covers/3afecac7-94e5-421a-99c6-a79d9c83490a.jpeg', '[]', '2022-06-01 02:58:43', '2022-06-01 02:58:43', NULL),
(1313, 0, 'avatar 1654077572644', 3, 'image/png', 140128, 'avatars/avatar-1654077572644.png', '[]', '2022-06-01 02:59:33', '2022-06-01 02:59:33', NULL),
(1314, 0, 'avatar 1654077617343', 3, 'image/png', 157190, 'avatars/avatar-1654077617343.png', '[]', '2022-06-01 03:00:17', '2022-06-01 03:00:17', NULL),
(1315, 0, 'avatar 1654077732290', 3, 'image/png', 146875, 'avatars/avatar-1654077732290.png', '[]', '2022-06-01 03:02:12', '2022-06-01 03:02:12', NULL),
(1316, 0, 'avatar 1654087148881', 3, 'image/png', 156549, 'avatars/avatar-1654087148881.png', '[]', '2022-06-01 05:39:09', '2022-06-01 05:39:09', NULL),
(1317, 0, '5763885A-F447-4BE7-85F3-36CACFD5FB53', 9, 'image/jpeg', 4940498, 'covers/5763885a-f447-4be7-85f3-36cacfd5fb53.jpeg', '[]', '2022-06-01 05:39:39', '2022-06-01 05:39:39', NULL),
(1318, 0, '0C50C0E0-EBBF-48A6-AC25-F545EBDB9150', 9, 'image/jpeg', 2086378, 'covers/0c50c0e0-ebbf-48a6-ac25-f545ebdb9150.jpeg', '[]', '2022-06-01 05:39:52', '2022-06-01 05:39:52', NULL),
(1319, 0, '7D4868C0-FFBB-48AC-9E3C-ACEDCB19C950', 9, 'image/jpeg', 170301, 'covers/7d4868c0-ffbb-48ac-9e3c-acedcb19c950.jpeg', '[]', '2022-06-01 05:40:23', '2022-06-01 05:40:23', NULL),
(1320, 0, 'avatar 1654335347707', 3, 'image/png', 128616, 'avatars/avatar-1654335347707.png', '[]', '2022-06-04 02:35:48', '2022-06-04 02:35:48', NULL),
(1321, 0, 'BCC5D21C-65B4-49CC-8CA4-727586C2CC4D', 9, 'image/jpeg', 1735154, 'covers/bcc5d21c-65b4-49cc-8ca4-727586c2cc4d.jpeg', '[]', '2022-06-04 02:36:43', '2022-06-04 02:36:43', NULL),
(1322, 0, 'avatar 1654407641639', 3, 'image/png', 128731, 'avatars/avatar-1654407641639.png', '[]', '2022-06-04 22:40:42', '2022-06-04 22:40:42', NULL),
(1323, 0, '28A1D245-DAE9-4E99-9629-1286F1610822', 9, 'image/jpeg', 1735154, 'covers/28a1d245-dae9-4e99-9629-1286f1610822.jpeg', '[]', '2022-06-04 22:41:05', '2022-06-04 22:41:05', NULL),
(1324, 0, 'avatar 1654407764256', 3, 'image/png', 120562, 'avatars/avatar-1654407764256.png', '[]', '2022-06-04 22:42:44', '2022-06-04 22:42:44', NULL),
(1325, 0, '9F56DBBF-0455-452E-AD70-4E2544122261', 9, 'image/jpeg', 1735154, 'covers/9f56dbbf-0455-452e-ad70-4e2544122261.jpeg', '[]', '2022-06-04 22:42:58', '2022-06-04 22:42:58', NULL),
(1326, 0, 'avatar 1654412486070', 3, 'image/png', 137358, 'avatars/avatar-1654412486070.png', '[]', '2022-06-05 00:01:26', '2022-06-05 00:01:26', NULL),
(1327, 0, 'avatar 1654442805958', 3, 'image/png', 95474, 'avatars/avatar-1654442805958.png', '[]', '2022-06-05 08:26:47', '2022-06-05 08:26:47', NULL),
(1328, 0, '25AFE0DE-C8A5-43B8-B8BF-C68CB2508216', 9, 'image/jpeg', 3653376, 'covers/25afe0de-c8a5-43b8-b8bf-c68cb2508216.jpeg', '[]', '2022-06-05 08:27:22', '2022-06-05 08:27:22', NULL),
(1329, 0, 'avatar 1654473118522', 3, 'image/png', 153476, 'avatars/avatar-1654473118522.png', '[]', '2022-06-05 16:52:00', '2022-06-05 16:52:00', NULL),
(1330, 0, 'avatar 1654767027788', 3, 'image/png', 128681, 'avatars/avatar-1654767027788.png', '[]', '2022-06-09 02:30:28', '2022-06-09 02:30:28', NULL),
(1331, 0, 'avatar 1655088102298', 3, 'image/png', 121243, 'avatars/avatar-1655088102298.png', '[]', '2022-06-12 19:41:42', '2022-06-12 19:41:42', NULL),
(1332, 0, 'avatar 1655180864153', 3, 'image/png', 135099, 'avatars/avatar-1655180864153.png', '[]', '2022-06-13 21:27:44', '2022-06-13 21:27:44', NULL),
(1333, 0, 'avatar 1655181375275', 3, 'image/png', 135299, 'avatars/avatar-1655181375275.png', '[]', '2022-06-13 21:36:15', '2022-06-13 21:36:15', NULL),
(1334, 0, 'avatar 1655181430151', 3, 'image/png', 136287, 'avatars/avatar-1655181430151.png', '[]', '2022-06-13 21:37:10', '2022-06-13 21:37:10', NULL),
(1335, 0, 'avatar 1655818522330', 3, 'image/png', 116797, 'avatars/avatar-1655818522330.png', '[]', '2022-06-21 06:35:24', '2022-06-21 06:35:24', NULL),
(1336, 0, '06811493-5BF6-4A91-B2A3-56BBEA93A074', 9, 'image/jpeg', 499321, 'covers/06811493-5bf6-4a91-b2a3-56bbea93a074.jpeg', '[]', '2022-06-21 06:35:49', '2022-06-21 06:35:49', NULL),
(1337, 0, '7A421EBC-60E3-4168-963A-21CE9AEE6A59', 9, 'image/png', 126128, 'covers/7a421ebc-60e3-4168-963a-21ce9aee6a59.png', '[]', '2022-06-21 06:36:20', '2022-06-21 06:36:20', NULL),
(1338, 0, 'avatar 1655818648248', 3, 'image/png', 117163, 'avatars/avatar-1655818648248.png', '[]', '2022-06-21 06:37:30', '2022-06-21 06:37:30', NULL),
(1339, 0, '2E93579A-90C0-440B-9927-E795B9EDC61A', 9, 'image/jpeg', 6054, 'covers/2e93579a-90c0-440b-9927-e795b9edc61a.jpeg', '[]', '2022-06-21 06:37:36', '2022-06-21 06:37:36', NULL),
(1340, 0, 'avatar 1655929710314', 3, 'image/png', 112969, 'avatars/avatar-1655929710314.png', '[]', '2022-06-22 13:28:30', '2022-06-22 13:28:30', NULL),
(1341, 0, '21EEA916-9897-4D63-B698-695C7EE75981', 9, 'image/jpeg', 2047204, 'covers/21eea916-9897-4d63-b698-695c7ee75981.jpeg', '[]', '2022-06-22 13:28:54', '2022-06-22 13:28:54', NULL),
(1342, 0, 'A3422495-3CDB-4415-9521-D50B6637C593', 9, 'image/jpeg', 1545728, 'covers/a3422495-3cdb-4415-9521-d50b6637c593.jpeg', '[]', '2022-06-22 13:29:07', '2022-06-22 13:29:07', NULL),
(1343, 0, 'avatar 1656423690542', 3, 'image/png', 139153, 'avatars/avatar-1656423690542.png', '[]', '2022-06-28 06:41:30', '2022-06-28 06:41:30', NULL),
(1344, 0, 'avatar 1656424639013', 3, 'image/png', 97480, 'avatars/avatar-1656424639013.png', '[]', '2022-06-28 06:57:18', '2022-06-28 06:57:18', NULL),
(1345, 0, '6850BBD1-291E-409F-A633-9C944E16C4F9', 9, 'image/jpeg', 160358, 'covers/6850bbd1-291e-409f-a633-9c944e16c4f9.jpeg', '[]', '2022-06-28 06:57:34', '2022-06-28 06:57:34', NULL),
(1346, 0, 'B48FC944-62E9-46CD-84A7-BD247FBC10EB', 9, 'image/jpeg', 160358, 'covers/b48fc944-62e9-46cd-84a7-bd247fbc10eb.jpeg', '[]', '2022-06-28 06:57:47', '2022-06-28 06:57:47', NULL),
(1347, 0, 'avatar 1656424670622', 3, 'image/png', 77781, 'avatars/avatar-1656424670622.png', '[]', '2022-06-28 06:57:51', '2022-06-28 06:57:51', NULL),
(1348, 0, 'IMG_1741', 9, 'image/jpeg', 4308200, 'covers/img-1741.jpg', '[]', '2022-06-28 06:58:41', '2022-06-28 06:58:41', NULL),
(1349, 0, 'Screenshot_2022-03-19-17-39-59-75', 9, 'image/jpeg', 48863, 'covers/screenshot-2022-03-19-17-39-59-75.jpg', '[]', '2022-06-28 06:59:04', '2022-06-28 06:59:04', NULL),
(1350, 0, 'avatar 1656424994199', 3, 'image/png', 108527, 'avatars/avatar-1656424994199.png', '[]', '2022-06-28 07:03:13', '2022-06-28 07:03:13', NULL),
(1351, 0, '8307EA42-BC6B-41C4-8391-E09911F4F902', 9, 'image/jpeg', 1193720, 'covers/8307ea42-bc6b-41c4-8391-e09911f4f902.jpeg', '[]', '2022-06-28 07:03:38', '2022-06-28 07:03:38', NULL),
(1352, 0, 'avatar 1656425297322', 3, 'image/png', 73584, 'avatars/avatar-1656425297322.png', '[]', '2022-06-28 07:08:18', '2022-06-28 07:08:18', NULL),
(1353, 0, 'Screenshot_2022-03-04-01-12-59-24_965bbf4d18d205f782c6b8409c5773a4', 9, 'image/jpeg', 436554, 'covers/screenshot-2022-03-04-01-12-59-24-965bbf4d18d205f782c6b8409c5773a4.jpg', '[]', '2022-06-28 07:12:01', '2022-06-28 07:12:01', NULL),
(1354, 0, 'avatar 1656425935093', 3, 'image/png', 140774, 'avatars/avatar-1656425935093.png', '[]', '2022-06-28 07:18:59', '2022-06-28 07:18:59', NULL),
(1355, 0, 'avatar 1656425939385', 3, 'image/png', 140774, 'avatars/avatar-1656425939385.png', '[]', '2022-06-28 07:18:59', '2022-06-28 07:18:59', NULL),
(1356, 0, 'avatar 1656426397475', 3, 'image/png', 137415, 'avatars/avatar-1656426397475.png', '[]', '2022-06-28 07:26:37', '2022-06-28 07:26:37', NULL),
(1357, 0, 'ADEAFAFE-0BCC-49EF-BB2C-394C0F54ADE7', 9, 'image/jpeg', 2283879, 'covers/adeafafe-0bcc-49ef-bb2c-394c0f54ade7.jpeg', '[]', '2022-06-28 07:27:04', '2022-06-28 07:27:04', NULL),
(1358, 0, 'E1E5DFF1-71EC-4211-8A59-D1EDBC7B23F4', 9, 'image/jpeg', 704723, 'covers/e1e5dff1-71ec-4211-8a59-d1edbc7b23f4.jpeg', '[]', '2022-06-28 07:27:37', '2022-06-28 07:27:37', NULL),
(1359, 0, '8069C434-3048-4AF8-8CC8-51405F84BFB4', 9, 'image/jpeg', 704723, 'covers/8069c434-3048-4af8-8cc8-51405f84bfb4.jpeg', '[]', '2022-06-28 07:27:46', '2022-06-28 07:27:46', NULL),
(1360, 0, 'avatar 1656426522902', 3, 'image/png', 135883, 'avatars/avatar-1656426522902.png', '[]', '2022-06-28 07:28:42', '2022-06-28 07:28:42', NULL),
(1361, 0, 'A10B5B01-1722-4C53-8D8D-A7C77D653347', 9, 'image/jpeg', 704723, 'covers/a10b5b01-1722-4c53-8d8d-a7c77d653347.jpeg', '[]', '2022-06-28 07:28:48', '2022-06-28 07:28:48', NULL),
(1362, 0, 'avatar 1656649425742', 3, 'image/png', 97819, 'avatars/avatar-1656649425742.png', '[]', '2022-06-30 21:23:47', '2022-06-30 21:23:47', NULL),
(1363, 0, 'avatar 1656649522087', 3, 'image/png', 97238, 'avatars/avatar-1656649522087.png', '[]', '2022-06-30 21:25:23', '2022-06-30 21:25:23', NULL),
(1364, 0, '615BB373-23C8-40D4-9BE5-C6EF60BB21EB', 9, 'image/png', 1639620, 'covers/615bb373-23c8-40d4-9be5-c6ef60bb21eb.png', '[]', '2022-06-30 21:25:58', '2022-06-30 21:25:58', NULL),
(1365, 0, 'DC71D7A7-2416-46DA-B21C-6ACDD098B776', 9, 'image/png', 109, 'covers/dc71d7a7-2416-46da-b21c-6acdd098b776.png', '[]', '2022-06-30 21:54:43', '2022-06-30 21:54:43', NULL),
(1366, 0, 'avatar 1656866459497', 3, 'image/png', 121280, 'avatars/avatar-1656866459497.png', '[]', '2022-07-03 09:41:00', '2022-07-03 09:41:00', NULL),
(1367, 0, 'avatar 1656866499830', 3, 'image/png', 125431, 'avatars/avatar-1656866499830.png', '[]', '2022-07-03 09:41:40', '2022-07-03 09:41:40', NULL),
(1368, 0, 'avatar 1656937901407', 3, 'image/png', 120650, 'avatars/avatar-1656937901407.png', '[]', '2022-07-04 05:31:42', '2022-07-04 05:31:42', NULL),
(1369, 0, 'avatar 1656937929058', 3, 'image/png', 155141, 'avatars/avatar-1656937929058.png', '[]', '2022-07-04 05:32:09', '2022-07-04 05:32:09', NULL),
(1370, 0, 'avatar 1656937955571', 3, 'image/png', 170032, 'avatars/avatar-1656937955571.png', '[]', '2022-07-04 05:32:36', '2022-07-04 05:32:36', NULL),
(1371, 0, '97F0904D-293B-4FBA-BD8B-2595592FCF65', 9, 'image/jpeg', 3114057, 'covers/97f0904d-293b-4fba-bd8b-2595592fcf65.jpeg', '[]', '2022-07-04 05:34:01', '2022-07-04 05:34:01', NULL),
(1372, 0, '78985AF6-A10F-43D6-9856-D93247B0D0E3', 9, 'image/jpeg', 3114057, 'covers/78985af6-a10f-43d6-9856-d93247b0d0e3.jpeg', '[]', '2022-07-04 05:34:34', '2022-07-04 05:34:34', NULL),
(1373, 0, 'avatar 1656945195473', 3, 'image/png', 142656, 'avatars/avatar-1656945195473.png', '[]', '2022-07-04 07:33:16', '2022-07-04 07:33:16', NULL),
(1374, 0, 'avatar 1656965039622', 3, 'image/png', 105410, 'avatars/avatar-1656965039622.png', '[]', '2022-07-04 13:04:00', '2022-07-04 13:04:00', NULL),
(1375, 0, '31CDF3F1-CE09-4F20-8B2F-42708D6AF06C', 9, 'image/jpeg', 487196, 'covers/31cdf3f1-ce09-4f20-8b2f-42708d6af06c.jpeg', '[]', '2022-07-04 13:04:26', '2022-07-04 13:04:26', NULL),
(1376, 0, 'avatar 1657021938126', 3, 'image/png', 108705, 'avatars/avatar-1657021938126.png', '[]', '2022-07-05 04:52:19', '2022-07-05 04:52:19', NULL),
(1377, 0, '0D8B9499-DB18-428C-A1A6-3EEC0C150131', 9, 'image/jpeg', 507355, 'covers/0d8b9499-db18-428c-a1a6-3eec0c150131.jpeg', '[]', '2022-07-05 04:52:24', '2022-07-05 04:52:24', NULL),
(1378, 0, '2E68990B-3F9E-4684-8969-A5886ABC5007', 9, 'image/jpeg', 507355, 'covers/2e68990b-3f9e-4684-8969-a5886abc5007.jpeg', '[]', '2022-07-05 04:52:38', '2022-07-05 04:52:38', NULL),
(1379, 0, '594C7D0E-ADDE-4DB4-BEA9-67AE78E3A87D', 9, 'image/jpeg', 335119, 'covers/594c7d0e-adde-4db4-bea9-67ae78e3a87d.jpeg', '[]', '2022-07-05 04:52:55', '2022-07-05 04:52:55', NULL),
(1380, 0, 'avatar 1657022687152', 3, 'image/png', 113053, 'avatars/avatar-1657022687152.png', '[]', '2022-07-05 05:04:47', '2022-07-05 05:04:47', NULL),
(1381, 0, '7C4EA605-23A0-4B46-A333-392A00B28095', 9, 'image/jpeg', 30848, 'covers/7c4ea605-23a0-4b46-a333-392a00b28095.jpeg', '[]', '2022-07-05 05:09:03', '2022-07-05 05:09:03', NULL),
(1382, 0, 'AFBEA0A8-BBA7-463E-9088-BEABC792EEE5', 9, 'image/jpeg', 345192, 'covers/afbea0a8-bba7-463e-9088-beabc792eee5.jpeg', '[]', '2022-07-05 05:09:24', '2022-07-05 05:09:24', NULL),
(1383, 0, '424C7D8E-05C5-4B0C-B6FA-A0CA2D5883DD', 9, 'image/jpeg', 345192, 'covers/424c7d8e-05c5-4b0c-b6fa-a0ca2d5883dd.jpeg', '[]', '2022-07-05 05:09:52', '2022-07-05 05:09:52', NULL),
(1384, 0, 'avatar 1657023004595', 3, 'image/png', 113705, 'avatars/avatar-1657023004595.png', '[]', '2022-07-05 05:10:05', '2022-07-05 05:10:05', NULL),
(1385, 0, 'avatar 1657023117016', 3, 'image/png', 114619, 'avatars/avatar-1657023117016.png', '[]', '2022-07-05 05:11:57', '2022-07-05 05:11:57', NULL),
(1386, 0, '50D2DBFB-714F-44CB-9711-994513473132', 9, 'image/jpeg', 345192, 'covers/50d2dbfb-714f-44cb-9711-994513473132.jpeg', '[]', '2022-07-05 05:12:02', '2022-07-05 05:12:02', NULL),
(1387, 0, 'DE326EE0-1713-4286-A8B4-62A8AAACA965', 9, 'image/jpeg', 2511606, 'covers/de326ee0-1713-4286-a8b4-62a8aaaca965.jpeg', '[]', '2022-07-05 05:14:07', '2022-07-05 05:14:07', NULL),
(1388, 1, 'avatar 1657253420666', 3, 'image/png', 1178, 'avatars/avatar-1657253420666.png', '[]', '2022-07-07 21:10:21', '2022-07-07 21:10:21', NULL),
(1389, 1, '311DB627-D052-4A75-A121-77D796E4B170', 9, 'image/jpeg', 16171416, 'covers/311db627-d052-4a75-a121-77d796e4b170.jpeg', '[]', '2022-07-07 21:10:38', '2022-07-07 21:10:38', NULL),
(1390, 1, 'avatar 1657253555204', 3, 'image/png', 43384, 'avatars/avatar-1657253555204.png', '[]', '2022-07-07 21:12:35', '2022-07-07 21:12:35', NULL),
(1391, 1, 'avatar 1657253621915', 3, 'image/png', 1178, 'avatars/avatar-1657253621915.png', '[]', '2022-07-07 21:13:42', '2022-07-07 21:13:42', NULL),
(1392, 1, 'avatar 1657253689116', 3, 'image/png', 1178, 'avatars/avatar-1657253689116.png', '[]', '2022-07-07 21:14:49', '2022-07-07 21:14:49', NULL),
(1393, 1, 'avatar 1657253950749', 3, 'image/png', 1178, 'avatars/avatar-1657253950749.png', '[]', '2022-07-07 21:19:11', '2022-07-07 21:19:11', NULL),
(1394, 1, 'avatar 1657254010716', 3, 'image/png', 138711, 'avatars/avatar-1657254010716.png', '[]', '2022-07-07 21:20:11', '2022-07-07 21:20:11', NULL),
(1395, 1, 'D2DA6427-C39E-4369-A9A3-FB01A00EDDDE', 9, 'image/jpeg', 16171416, 'covers/d2da6427-c39e-4369-a9a3-fb01a00eddde.jpeg', '[]', '2022-07-07 21:22:22', '2022-07-07 21:22:22', NULL),
(1396, 1, 'avatar 1657254150290', 3, 'image/png', 1178, 'avatars/avatar-1657254150290.png', '[]', '2022-07-07 21:22:30', '2022-07-07 21:22:30', NULL),
(1397, 0, 'avatar 1657441989598', 3, 'image/png', 140825, 'avatars/avatar-1657441989598.png', '[]', '2022-07-10 01:33:10', '2022-07-10 01:33:10', NULL),
(1398, 0, 'avatar 1657445579431', 3, 'image/png', 131111, 'avatars/avatar-1657445579431.png', '[]', '2022-07-10 02:34:18', '2022-07-10 02:34:18', NULL),
(1399, 0, 'avatar 1657445694023', 3, 'image/png', 130056, 'avatars/avatar-1657445694023.png', '[]', '2022-07-10 02:34:59', '2022-07-10 02:34:59', NULL),
(1400, 0, 'avatar 1657445696060', 3, 'image/png', 130056, 'avatars/avatar-1657445696060.png', '[]', '2022-07-10 02:35:08', '2022-07-10 02:35:08', NULL),
(1401, 0, 'avatar 1657445698310', 3, 'image/png', 130056, 'avatars/avatar-1657445698310.png', '[]', '2022-07-10 02:35:09', '2022-07-10 02:35:09', NULL),
(1402, 0, '4D416797-D22A-46E8-AA85-CDD76023A082', 9, 'image/jpeg', 722232, 'covers/4d416797-d22a-46e8-aa85-cdd76023a082.jpeg', '[]', '2022-07-10 02:39:10', '2022-07-10 02:39:10', NULL),
(1403, 0, 'avatar 1657445953321', 3, 'image/png', 130556, 'avatars/avatar-1657445953321.png', '[]', '2022-07-10 02:39:51', '2022-07-10 02:39:51', NULL),
(1404, 0, 'avatar 1657445993652', 3, 'image/png', 128854, 'avatars/avatar-1657445993652.png', '[]', '2022-07-10 02:39:54', '2022-07-10 02:39:54', NULL),
(1405, 0, 'avatar 1657446080322', 3, 'image/png', 102228, 'avatars/avatar-1657446080322.png', '[]', '2022-07-10 02:41:22', '2022-07-10 02:41:22', NULL),
(1406, 0, 'avatar 1657446717022', 3, 'image/png', 138241, 'avatars/avatar-1657446717022.png', '[]', '2022-07-10 02:51:59', '2022-07-10 02:51:59', NULL),
(1407, 0, 'avatar 1657446719015', 3, 'image/png', 138241, 'avatars/avatar-1657446719015.png', '[]', '2022-07-10 02:52:04', '2022-07-10 02:52:04', NULL),
(1408, 0, 'avatar 1657447026144', 3, 'image/png', 158266, 'avatars/avatar-1657447026144.png', '[]', '2022-07-10 02:57:23', '2022-07-10 02:57:23', NULL),
(1409, 0, 'avatar 1657447303578', 3, 'image/png', 139588, 'avatars/avatar-1657447303578.png', '[]', '2022-07-10 03:03:54', '2022-07-10 03:03:54', NULL),
(1410, 0, 'avatar 1657447304286', 3, 'image/png', 139588, 'avatars/avatar-1657447304286.png', '[]', '2022-07-10 03:03:54', '2022-07-10 03:03:54', NULL),
(1411, 0, 'avatar 1657447300917', 3, 'image/png', 139588, 'avatars/avatar-1657447300917.png', '[]', '2022-07-10 03:03:54', '2022-07-10 03:03:54', NULL),
(1412, 0, 'avatar 1657447304655', 3, 'image/png', 139588, 'avatars/avatar-1657447304655.png', '[]', '2022-07-10 03:03:54', '2022-07-10 03:03:54', NULL),
(1413, 0, 'avatar 1657447294810', 3, 'image/png', 139588, 'avatars/avatar-1657447294810.png', '[]', '2022-07-10 03:03:54', '2022-07-10 03:03:54', NULL),
(1414, 0, 'avatar 1657447305414', 3, 'image/png', 139588, 'avatars/avatar-1657447305414.png', '[]', '2022-07-10 03:03:54', '2022-07-10 03:03:54', NULL),
(1415, 0, 'avatar 1657447305243', 3, 'image/png', 139588, 'avatars/avatar-1657447305243.png', '[]', '2022-07-10 03:03:54', '2022-07-10 03:03:54', NULL),
(1416, 0, 'avatar 1657447304926', 3, 'image/png', 139588, 'avatars/avatar-1657447304926.png', '[]', '2022-07-10 03:03:54', '2022-07-10 03:03:54', NULL),
(1417, 0, 'avatar 1657447305066', 3, 'image/png', 139588, 'avatars/avatar-1657447305066.png', '[]', '2022-07-10 03:03:54', '2022-07-10 03:03:54', NULL),
(1418, 0, 'avatar 1657447503622', 3, 'image/png', 101562, 'avatars/avatar-1657447503622.png', '[]', '2022-07-10 03:05:12', '2022-07-10 03:05:12', NULL),
(1419, 0, '821D03A2-149B-4180-8534-9D117B4C2FDA', 9, 'image/jpeg', 335347, 'covers/821d03a2-149b-4180-8534-9d117b4c2fda.jpeg', '[]', '2022-07-10 03:11:06', '2022-07-10 03:11:06', NULL),
(1420, 1, '76FC9699-281A-4287-A4FC-A6413D30D87F', 9, 'image/jpeg', 304249, 'covers/76fc9699-281a-4287-a4fc-a6413d30d87f.jpeg', '[]', '2022-07-24 07:55:54', '2022-07-24 07:55:54', NULL),
(1421, 1, 'C03802C1-99E3-4ACB-B264-A6F3E060C6F1', 9, 'image/jpeg', 408295, 'covers/c03802c1-99e3-4acb-b264-a6f3e060c6f1.jpeg', '[]', '2022-07-24 07:57:29', '2022-07-24 07:57:29', NULL),
(1422, 1, 'AD443F5F-FF71-455C-8513-7AF27F9117F9', 9, 'image/jpeg', 86318, 'covers/ad443f5f-ff71-455c-8513-7af27f9117f9.jpeg', '[]', '2022-07-24 08:24:18', '2022-07-24 08:24:18', NULL),
(1423, 1, 'EBBBCB9A-29E1-413A-8FA1-6F7C2A7842BB', 9, 'image/jpeg', 518205, 'covers/ebbbcb9a-29e1-413a-8fa1-6f7c2a7842bb.jpeg', '[]', '2022-07-24 08:28:06', '2022-07-24 08:28:06', NULL),
(1424, 1, 'F14A5725-AB60-48E1-9522-FC466FBB268A', 9, 'image/jpeg', 330824, 'covers/f14a5725-ab60-48e1-9522-fc466fbb268a.jpeg', '[]', '2022-07-24 08:58:49', '2022-07-24 08:58:49', NULL),
(1425, 0, 'avatar 1658889547142', 3, 'image/png', 118029, 'avatars/avatar-1658889547142.png', '[]', '2022-07-26 19:39:08', '2022-07-26 19:39:08', NULL),
(1426, 0, '81713DEF-175D-490D-993A-E2472F686F46', 9, 'image/jpeg', 90667, 'covers/81713def-175d-490d-993a-e2472f686f46.jpeg', '[]', '2022-07-26 19:40:12', '2022-07-26 19:40:12', NULL),
(1427, 0, 'avatar 1658890161047', 3, 'image/png', 112949, 'avatars/avatar-1658890161047.png', '[]', '2022-07-26 19:49:21', '2022-07-26 19:49:21', NULL),
(1428, 0, '774268C6-FF8F-4C8D-889F-2F03C25941F6', 9, 'image/jpeg', 2011178, 'covers/774268c6-ff8f-4c8d-889f-2f03c25941f6.jpeg', '[]', '2022-07-26 19:49:56', '2022-07-26 19:49:56', NULL),
(1429, 0, 'avatar 1659169308159', 3, 'image/png', 152811, 'avatars/avatar-1659169308159.png', '[]', '2022-07-30 01:21:49', '2022-07-30 01:21:49', NULL),
(1430, 0, 'Screenshot_20220719-210050_Photos', 9, 'image/jpeg', 596845, 'covers/screenshot-20220719-210050-photos.jpg', '[]', '2022-07-30 01:22:03', '2022-07-30 01:22:03', NULL),
(1431, 0, 'avatar 1659169341825', 3, 'image/png', 154557, 'avatars/avatar-1659169341825.png', '[]', '2022-07-30 01:22:22', '2022-07-30 01:22:22', NULL),
(1432, 0, 'avatar 1659169358322', 3, 'image/png', 154861, 'avatars/avatar-1659169358322.png', '[]', '2022-07-30 01:22:39', '2022-07-30 01:22:39', NULL),
(1433, 0, 'Screenshot_20220719-210050_Photos-1', 9, 'image/jpeg', 596845, 'covers/screenshot-20220719-210050-photos-1.jpg', '[]', '2022-07-30 01:22:46', '2022-07-30 01:22:46', NULL),
(1434, 0, 'avatar 1659169466727', 3, 'image/png', 154798, 'avatars/avatar-1659169466727.png', '[]', '2022-07-30 01:24:27', '2022-07-30 01:24:27', NULL),
(1435, 0, 'Screenshot_20220719-210050_Photos-2', 9, 'image/jpeg', 596845, 'covers/screenshot-20220719-210050-photos-2.jpg', '[]', '2022-07-30 01:24:35', '2022-07-30 01:24:35', NULL),
(1436, 0, 'avatar 1659246991658', 3, 'image/png', 118124, 'avatars/avatar-1659246991658.png', '[]', '2022-07-30 22:56:33', '2022-07-30 22:56:33', NULL),
(1437, 0, '1C1BE97F-30AE-439B-8757-CBA36F291327', 9, 'image/jpeg', 371128, 'covers/1c1be97f-30ae-439b-8757-cba36f291327.jpeg', '[]', '2022-07-30 22:57:27', '2022-07-30 22:57:27', NULL),
(1438, 0, 'avatar 1659247078435', 3, 'image/png', 125731, 'avatars/avatar-1659247078435.png', '[]', '2022-07-30 22:58:00', '2022-07-30 22:58:00', NULL),
(1439, 1, 'FAD98F78-77DF-4C77-B593-82A0AB9130AC', 9, 'image/jpeg', 430989, 'covers/fad98f78-77df-4c77-b593-82a0ab9130ac.jpeg', '[]', '2022-07-31 09:31:30', '2022-07-31 09:31:30', NULL),
(1440, 0, 'avatar 1659522339957', 3, 'image/png', 136239, 'avatars/avatar-1659522339957.png', '[]', '2022-08-03 03:25:42', '2022-08-03 03:25:42', NULL),
(1441, 0, '20220803_172626_491', 9, 'image/jpeg', 745100, 'covers/20220803-172626-491.jpg', '[]', '2022-08-03 03:26:40', '2022-08-03 03:26:40', NULL),
(1442, 0, 'avatar 1659543932720', 3, 'image/png', 141520, 'avatars/avatar-1659543932720.png', '[]', '2022-08-03 09:25:35', '2022-08-03 09:25:35', NULL),
(1443, 0, 'inbound2291503270188266990', 9, 'image/jpeg', 745100, 'covers/inbound2291503270188266990.jpg', '[]', '2022-08-03 09:26:11', '2022-08-03 09:26:11', NULL),
(1444, 0, 'avatar 1659544016304', 3, 'image/png', 136661, 'avatars/avatar-1659544016304.png', '[]', '2022-08-03 09:26:59', '2022-08-03 09:26:59', NULL),
(1445, 0, 'inbound8852843013747152817', 9, 'image/jpeg', 745100, 'covers/inbound8852843013747152817.jpg', '[]', '2022-08-03 09:27:03', '2022-08-03 09:27:03', NULL),
(1446, 0, 'inbound3157567574642199454', 9, 'image/jpeg', 6050279, 'covers/inbound3157567574642199454.jpg', '[]', '2022-08-03 09:43:47', '2022-08-03 09:43:47', NULL),
(1447, 0, 'avatar 1660019640256', 3, 'image/png', 120625, 'avatars/avatar-1660019640256.png', '[]', '2022-08-08 21:34:01', '2022-08-08 21:34:01', NULL),
(1448, 0, 'C2D4B67C-1F12-4886-B315-A05B75140D8B', 9, 'image/jpeg', 529619, 'covers/c2d4b67c-1f12-4886-b315-a05b75140d8b.jpeg', '[]', '2022-08-08 21:47:23', '2022-08-08 21:47:23', NULL),
(1449, 0, '67376270-57BB-4CB6-B684-170E63B9CA5F', 9, 'image/jpeg', 357194, 'covers/67376270-57bb-4cb6-b684-170e63b9ca5f.jpeg', '[]', '2022-08-09 02:29:47', '2022-08-09 02:29:47', NULL),
(1450, 1, 'avatar 1660489006007', 3, 'image/png', 96115, 'avatars/avatar-1660489006007.png', '[]', '2022-08-14 07:56:46', '2022-08-14 07:56:46', NULL),
(1451, 0, 'avatar 1661060232254', 3, 'image/png', 82148, 'avatars/avatar-1661060232254.png', '[]', '2022-08-20 22:37:14', '2022-08-20 22:37:14', NULL),
(1452, 0, 'photo-1636953056323-9c09fdd74fa6', 9, 'image/jpeg', 44851, 'covers/photo-1636953056323-9c09fdd74fa6.jpeg', '[]', '2022-08-20 22:37:18', '2022-08-20 22:37:18', NULL),
(1453, 0, 'avatar 1661060518485', 3, 'image/png', 82148, 'avatars/avatar-1661060518485.png', '[]', '2022-08-20 22:42:00', '2022-08-20 22:42:00', NULL),
(1454, 0, 'osman-rana-GXEZuWo5m4I-unsplash', 9, 'image/jpeg', 3168747, 'covers/osman-rana-gxezuwo5m4i-unsplash.jpg', '[]', '2022-08-20 22:43:11', '2022-08-20 22:43:11', NULL),
(1455, 0, 'avatar 1661064939741', 3, 'image/png', 110325, 'avatars/avatar-1661064939741.png', '[]', '2022-08-20 23:55:38', '2022-08-20 23:55:38', NULL),
(1456, 0, 'received_708034730321067', 9, 'image/jpeg', 88729, 'covers/received-708034730321067.jpeg', '[]', '2022-08-20 23:55:54', '2022-08-20 23:55:54', NULL),
(1457, 0, 'avatar 1662915772949', 3, 'image/png', 145932, 'avatars/avatar-1662915772949.png', '[]', '2022-09-11 10:02:53', '2022-09-11 10:02:53', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `media_folders`
--

CREATE TABLE `media_folders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `media_folders`
--

INSERT INTO `media_folders` (`id`, `user_id`, `name`, `slug`, `parent_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(2, 1, 'social icon', 'social-icon', 0, '2021-09-06 21:16:44', '2021-11-15 18:28:34', '2021-11-15 18:28:34'),
(3, 1, 'avatars', 'avatars', 0, '2021-09-07 01:06:36', '2021-09-07 01:06:36', NULL),
(4, 1, 'logo', 'logo', 0, '2021-09-07 05:19:14', '2021-11-15 18:28:03', '2021-11-15 18:28:03'),
(5, 1, 'products', 'products', 0, '2021-09-07 05:21:45', '2021-09-07 05:21:45', NULL),
(6, 1, 'portfolios', 'portfolios', 0, '2021-09-07 06:05:24', '2021-11-15 18:27:51', '2021-11-15 18:27:51'),
(7, 1, 'themes', 'themes', 0, '2021-09-28 15:13:06', '2021-09-28 15:13:06', NULL),
(9, 1, 'covers', 'covers', 0, '2021-10-10 15:26:24', '2021-10-10 15:26:24', NULL),
(46, 0, '1', '1', 45, '2021-10-10 15:55:49', '2021-10-10 15:55:49', NULL),
(47, 0, 'social-icons', 'social-icons', 0, '2021-10-10 16:07:48', '2021-10-10 16:07:48', NULL),
(48, 0, '1', '1', 47, '2021-10-10 16:07:48', '2021-10-10 16:07:48', NULL),
(49, 1, 'ICON PINK', 'icon-pink', 0, '2021-10-11 10:38:20', '2021-10-16 03:11:33', '2021-10-16 03:11:33'),
(50, 1, 'videos', 'videos', 0, '2021-10-14 04:49:48', '2021-10-14 04:49:48', NULL),
(51, 1, '2', '2', 47, '2021-10-15 16:26:13', '2021-11-15 18:27:06', '2021-11-15 18:27:06'),
(52, 1, 'ICON PINK-1', 'icon-pink-1', 0, '2021-10-16 02:02:27', '2021-10-16 03:11:15', '2021-10-16 03:11:15'),
(53, 1, 'ICON PINK-2', 'icon-pink-2', 0, '2021-10-16 03:11:27', '2021-10-16 03:11:27', NULL),
(54, 1, 'ICON SOCIAL ĐEN', 'icon-social-den', 53, '2021-10-16 08:03:31', '2021-11-14 17:51:08', '2021-11-14 17:51:08'),
(55, 1, 'KHO STICKER SHOP', 'kho-sticker-shop', 54, '2021-10-16 11:59:33', '2021-11-14 17:51:08', '2021-11-14 17:51:08'),
(56, 1, 'STICK SHOP', 'stick-shop', 0, '2021-10-16 14:16:03', '2021-10-16 14:16:03', NULL),
(57, 1, 'SHOP CARD', 'shop-card', 55, '2021-10-17 03:29:28', '2021-11-14 17:51:08', '2021-11-14 17:51:08'),
(58, 1, 'SHOP CARD', 'shop-card', 0, '2021-10-17 13:21:06', '2021-10-17 13:21:06', NULL),
(59, 1, 'ICON MẶC ĐỊNH', 'icon-mac-dinh', 58, '2021-10-25 15:32:31', '2021-11-14 17:50:24', '2021-11-14 17:50:24'),
(60, 1, 'ICON MẶC ĐỊNH', 'icon-mac-dinh', 0, '2021-10-25 15:35:45', '2021-10-26 07:06:44', '2021-10-26 07:06:44'),
(61, 1, 'ICON MẶC ĐỊNH-1', 'icon-mac-dinh-1', 0, '2021-10-26 07:16:05', '2021-11-11 09:00:49', '2021-11-11 09:00:49'),
(62, 1, 'Black Icon', 'black-icon', 58, '2021-10-30 04:05:12', '2021-10-30 04:05:12', NULL),
(63, 1, 'ICON ĐEN 2', 'icon-den-2', 62, '2021-11-10 07:23:56', '2021-11-14 17:50:41', '2021-11-14 17:50:41'),
(64, 1, 'Icon Mặc Định-2', 'icon-mac-dinh-2', 0, '2021-11-11 09:01:05', '2021-11-11 09:01:05', NULL),
(65, 1, 'LOGO-1', 'logo-1', 0, '2021-11-13 19:12:52', '2021-11-13 19:12:52', NULL),
(66, 1, 'videos-1', 'videos-1', 0, '2021-12-18 09:51:46', '2021-12-18 09:51:46', NULL),
(67, 1, 'Ảnh Web', 'anh-web', 0, '2021-12-22 22:02:16', '2021-12-22 22:02:16', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `media_settings`
--

CREATE TABLE `media_settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `media_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `members`
--

CREATE TABLE `members` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar_id` int(10) UNSIGNED DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `phone` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `confirmed_at` datetime DEFAULT NULL,
  `email_verify_token` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `members`
--

INSERT INTO `members` (`id`, `first_name`, `last_name`, `description`, `gender`, `email`, `password`, `avatar_id`, `dob`, `phone`, `confirmed_at`, `email_verify_token`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Hoàng', 'Kiên', NULL, NULL, 'hoangkien151092@gmail.com', '$2y$10$HwBNTbGduX8WIYXzQKbYZ.l3zJWryuas/wBJ7HlvNiR8k5dgqVtem', NULL, NULL, NULL, '2021-09-28 22:24:12', NULL, 'dlc9ffYH3WJFqFuHRazftknJPx0nkbCi01H3EUE5zncX6C5LWvU0I19s7j0q', '2021-09-28 15:24:12', '2021-11-28 09:58:33'),
(2, 'Hoang', 'Khoa', NULL, NULL, 'Bigdaddybeta03@gmail.com', '$2y$10$3mqPq/uGVmm9kMbPX92i1edaXsmT1j83E5l10OU7Xgm6DzCRywPSu', NULL, NULL, NULL, '2021-09-28 23:48:00', NULL, NULL, '2021-09-28 16:48:00', '2021-09-28 16:48:00'),
(3, 'Hoang', 'Vui', NULL, NULL, 'Bigdaddybeta05@gmail.com', '$2y$10$hIgyAE39DixXsxCXOzM/XexMd2A5P/8SCKTMR93G8VBKf9lGGPQDK', NULL, NULL, NULL, '2021-09-29 11:24:18', NULL, NULL, '2021-09-29 04:24:18', '2021-09-29 04:24:18'),
(4, 'Hoàng', 'Kiên', NULL, NULL, 'hoangkien15109212@gmail.com', '$2y$10$KvNQC5mYkGIfZOmCWi891ekUOKxwNceG0pxcEI5oLSKvqwb4o1CyW', NULL, NULL, NULL, '2021-10-10 23:16:43', NULL, NULL, '2021-10-10 16:16:43', '2021-10-10 16:16:43'),
(5, 'Hoàng', 'Hiệp', NULL, NULL, 'Bigdaddybeta07@gmail.com', '$2y$10$1czUwkMhcC7bD.s4VQwvBeZo.nVkRfOLfh4gyFAy5jbEe4YZRhQ4q', NULL, NULL, NULL, '2021-10-10 23:39:19', NULL, 'M0wdlZosetBs5Tk6x1B4SchkVFpVQZ11n9lTKwW2G2mNN6trifTRw6TLMZmo', '2021-10-10 16:39:19', '2021-10-10 16:39:19'),
(6, 'Hoang', 'Hiep', NULL, NULL, 'contact.gotap1688@gmail.com', '$2y$10$n4He9MG4LBVWafK7PrkJq.rdvZ4izyOMzgQAZFWttdMo1jjkaB.Sy', NULL, NULL, NULL, '2021-10-23 19:08:02', NULL, '4j5fXJWkO5R6McsV6iwQ1mB0AdJAxX3IQq8l6b34XiAGM75dw8aEmVSHd1c4', '2021-10-23 12:08:02', '2021-10-23 12:08:02'),
(9, 'Hoang', 'Hiep', NULL, NULL, 'Tuyendungvieclam97@gmail.com', '$2y$10$BBlB.Ph3oUV.ZS1F6Cmc9.y6.a8fSi4TvBi86wEi8.hKiksZk/DTi', NULL, NULL, NULL, '2021-11-11 18:24:03', NULL, 'v1V4rG3CIP6U1kcZYeWlSA5qgbgWKjiJzhV7DU6xxhlHIDCePLdmnbBsZT9b', '2021-11-11 11:24:03', '2021-11-11 11:24:03'),
(10, 'Vũ Mạnh', 'Dũng', NULL, NULL, 'manhdung261198@gmail.com', '$2y$10$cds69V5hK9FlGJOz9Uv/nuvCt033eWln3tsx.Oz5/KFes.GA6mZ0C', NULL, NULL, NULL, '2021-11-20 04:13:12', NULL, NULL, '2021-11-19 21:13:12', '2021-11-19 21:13:12'),
(11, 'Hoang', 'Hiep', NULL, NULL, 'hoangduchiep19x@gmail.com', '$2y$10$XFxKyagdwuSOjjDvfr5UieqeHxmLZh7nfMoX9Lev8nyFN/3wA7ZUa', NULL, NULL, NULL, '2021-11-22 08:44:46', NULL, NULL, '2021-11-22 01:44:46', '2021-11-22 01:44:46'),
(12, 'Đoàn Khánh', 'Diệu', NULL, NULL, 'dieudoan269@gmail.com', '$2y$10$iV1Ie7kBe/wL5QrBlu8PaeOI5qiGoEn9Ht5yY40iPcC.skrrOYk2.', NULL, NULL, NULL, '2021-11-22 08:55:26', NULL, NULL, '2021-11-22 01:55:26', '2021-11-22 01:55:26'),
(13, 'Vi Thùy', 'Linh', NULL, NULL, 'vilinhcocchu@gmail.com', '$2y$10$2kluzAnKCYSWiwufAppzHu0S4oU0j5dB.VDtDnhci1knJXcDqafx6', NULL, NULL, NULL, '2021-11-23 11:02:28', NULL, NULL, '2021-11-23 04:02:28', '2021-11-23 04:02:28'),
(14, 'Đỗ Thị Lan', 'Chinh', NULL, NULL, 'dothilanchinh25022002@gmail.com', '$2y$10$EqyOg4dR9i1eFwNRRxRHpeanyN2Q7PS.15oeRtzQbCapxLZ53nr2e', NULL, NULL, NULL, '2021-11-23 15:37:17', NULL, NULL, '2021-11-23 08:37:17', '2021-11-23 08:37:17'),
(15, 'Hoang', 'Hiep', NULL, NULL, 'Gochannelsp@gmail.com', '$2y$10$3W/iRpHOE3iT27Mo6Vb3AOGsLBPtkcRxy73/uwBIyyHLYub3fKXl2', NULL, NULL, NULL, '2021-11-24 05:11:41', NULL, 'OuyF1iylcDnISSeF5YHjngHOeAdJxO68UCX09D0MdPR4MVXH3HB3JB4p4r7N', '2021-11-23 22:11:41', '2021-11-23 22:11:41'),
(16, 'cap', 'nam', NULL, NULL, 'capvannam2004@gmail.com', '$2y$10$ZLwfZ7.lZYCzkb1qtGB3muWRnWu7/ZBsMdYW2uh9k1arOhzE.Lk.K', NULL, NULL, NULL, '2021-11-24 14:53:47', NULL, 'MVZdzqoKokiI9QRuZh2AGBE0lR407GPynKrz5nEjwleDkfjsufN0KnmKBvpi', '2021-11-24 07:53:47', '2021-11-24 07:53:47'),
(17, 'Trần', 'Quốc Khánh', NULL, NULL, 'tranquockhanh1704@gmail.com', '$2y$10$jWjVsiXdWGzEvPg7DAq75eTpklbZdOR3A61vi96W7FlsDnXthse2u', NULL, NULL, NULL, '2021-11-24 15:21:01', NULL, NULL, '2021-11-24 08:21:01', '2021-11-24 08:21:01'),
(18, 'Trần', 'Thảo', NULL, NULL, 'Tranphuongthao240799@gmail.com', '$2y$10$Gwla1SIW..tNPsbY7T.F1eZT9oZ9ywlkSkJkjMKrotPZucJc.jZzq', NULL, NULL, NULL, '2021-11-25 10:09:46', NULL, 'kFnx4dCpS6oRZs9rn3djuaIWOCJrTCbBidTJms17hN8aF54ojIiRnkfXDMML', '2021-11-25 03:09:45', '2021-11-25 03:09:46'),
(19, 'Bùi', 'Hồng', NULL, NULL, 'buithimyhong196@gmail.com', '$2y$10$fkpuC/1H2YBAToLt3ZNwzucljAElF.mshrbdPIgMDX5e/v8FgJ5s.', NULL, NULL, NULL, '2021-11-25 11:01:23', NULL, '5Wdro6HvOytytN7LOxhgKjpJgmAQFWhjNTiqNwHCDdmAkLaY3MA124tGHiYJ', '2021-11-25 04:01:23', '2021-11-25 04:01:23'),
(20, 'Nguyễn', 'Hiệp', NULL, NULL, 'hiephaohoa@gmail.com', '$2y$10$glv6KDxApm8IBRxmUUj7qeNAgsHHF7e.XMb589I2TE/WQ1cUv90ti', NULL, NULL, NULL, '2021-11-27 11:15:43', NULL, NULL, '2021-11-27 04:15:43', '2021-11-27 04:15:43'),
(21, 'Nguyễn', 'Hải', NULL, NULL, 'haidieusalon@gmail.com', '$2y$10$P7VbhGp/X8Nx4ILGJvcmJ.2trGbQkSeRSgyrGoxNXLWmxGw4uNiw2', NULL, NULL, NULL, '2021-11-27 12:39:33', NULL, NULL, '2021-11-27 05:39:33', '2021-11-27 05:39:33'),
(22, 'Phạm Thiên', 'Tâm', NULL, NULL, 'phamthientam1995@gmail.com', '$2y$10$sFGhzAl0H8EEXgA8GgrSY.ISi.GqZtQ4eEkHnuQ77vfDUzq9PDLM6', NULL, NULL, NULL, '2021-11-27 13:21:38', NULL, 'YIyLJA1HqAXsQ3Sh097TgXmzsO1t2aJe4KTlvhQ3K7KNBro0nQ9FHffKAg3I', '2021-11-27 06:21:37', '2021-11-27 06:21:38'),
(23, 'Nguyễn Thanh', 'Hải', NULL, NULL, 'octorber291994@gmail.com', '$2y$10$Fr4kzMA8dXl50oUT5oUAa.vZ3vYHlIRGFfn0Ry5KM8ORyQB.2vCQe', NULL, NULL, NULL, '2021-11-29 09:18:51', NULL, 'bAZ6tMbYNVcCyGn3xC6FpmWCpY2kHhLyQYhfzrEq4xmytG1jjnhK6qhnMlcG', '2021-11-29 02:18:51', '2021-11-29 02:18:51'),
(24, 'Nguyễn văn', 'Hạnh', NULL, NULL, 'hanh0966481224@gmail.com', '$2y$10$SlDqpdU1qCuNXwq0sx2HduzU8kaW4yqqcL3bj9NLBhOKmNN/f.Vm6', NULL, NULL, NULL, '2021-11-30 11:20:44', NULL, NULL, '2021-11-30 04:20:44', '2021-11-30 04:20:44'),
(25, 'Phạm mạnh', 'Chiều', NULL, NULL, 'phammanhchieu191003@gmail.com', '$2y$10$G4474Wo.6By957Gkv.Gc6.5bmb.ZW9Y25qhr7cZSxncL/uaTcHtu.', NULL, NULL, NULL, '2021-11-30 11:40:38', NULL, 'K3b8bJ2Y4qPFjEH1qO3dvwNx86o17rQ84i5G9NHW53jtrMFYWAH0UAgDatRd', '2021-11-30 04:40:38', '2021-12-03 04:04:44'),
(26, 'Trinh Nhật  Minh', 'Đức', NULL, NULL, 'trinhduc491995@gmail.com', '$2y$10$9cILW0sRvw254YlUYKBqYeMiDDpe8Pa1mp5npUZKR7cRmfwJt.7Qu', NULL, NULL, NULL, '2021-11-30 12:47:20', NULL, NULL, '2021-11-30 05:47:20', '2021-11-30 05:47:20'),
(27, 'Vũ Thế', 'Hải', NULL, NULL, 'thehai48@gmail.com', '$2y$10$XLo0p/XeuKd4hSId0HkaSOZvNd/dt5IfDf1.lKfFVZB.mefVd/1JO', NULL, NULL, NULL, '2021-11-30 13:51:10', NULL, 'EYZfTVEuB7RdMeTW2kyHPBd97Cj7iKu5QdJOS6CP7tLrXZfdVwjlXP3So0AC', '2021-11-30 06:51:10', '2021-11-30 06:51:10'),
(28, 'Lê', 'Tuấn', NULL, NULL, 'letuan22091995@gmail.com', '$2y$10$hQDWD29gBaTEjMh5Q7OzRea15oXmeXdGIAtIDOdZy45ju7dZKSMte', NULL, NULL, NULL, '2021-12-01 10:48:19', NULL, NULL, '2021-12-01 03:48:19', '2021-12-01 03:48:19'),
(29, 'Nguyễn', 'Thành', NULL, NULL, 'nichchinhphuthanh@gmail.com', '$2y$10$P53ckFikqU.CIYkIxgtRCOAE6epAUtPouhJKbV7LX47hncMYlWwNO', NULL, NULL, NULL, '2021-12-01 11:51:27', NULL, NULL, '2021-12-01 04:51:27', '2021-12-01 04:51:27'),
(30, 'Đinh', 'Vũ', NULL, NULL, 'dinhvanvu175@gmail.com', '$2y$10$h1yTOrG8OSVDLMDLQLAPdO/4dg0yWf3g3K2f14YrrE9NDshJjDEUK', NULL, NULL, NULL, '2021-12-01 12:19:26', NULL, NULL, '2021-12-01 05:19:26', '2021-12-01 05:19:26'),
(31, 'Đinh Trọng', 'Nghĩa', NULL, NULL, 'dinhtrongnghia2509@gmail.com', '$2y$10$vv9RZLJYRmjYM7kMcxpPxOe9ubEoe7i2c/141a4ITMxFu/Y232avS', NULL, NULL, NULL, '2021-12-01 15:20:49', NULL, NULL, '2021-12-01 08:20:49', '2021-12-01 08:20:49'),
(32, 'Nguyễn', 'Thanh Thuỷ', NULL, NULL, 'nst1194@gmail.com', '$2y$10$Hg7IaZoJDaIQeNR67oJBG.4rNpzqD3Trp83YXM3C4M5i/D.0I9nsW', NULL, NULL, NULL, '2021-12-02 02:33:44', NULL, NULL, '2021-12-01 19:33:44', '2021-12-01 19:33:44'),
(33, 'Nguyễn thị', 'Vân', NULL, NULL, 'ms.dieuhuong0104@gmail.com', '$2y$10$4VWRG2sL2AqVewcf24YwfOYzx1p4Z2PWuU9VzTrdkjNQcy9tiOek6', NULL, NULL, NULL, '2021-12-03 09:57:15', NULL, 'ylT1AVrwRSZ3iJ9R0xcAVk11e9BhSSVenspCADi5EaHClzTHwn7CewRPzh02', '2021-12-03 02:57:15', '2021-12-03 02:57:15'),
(35, 'Dang Khanh', 'Linh', NULL, NULL, 'dangkhanhlinh.tn12@gmail.com', '$2y$10$qH547aEGmfYfKDlUUFJthOdey71vEVevyqv.0xuBbGoSTgYnSS3Zy', NULL, NULL, NULL, '2021-12-08 08:38:07', NULL, NULL, '2021-12-08 01:38:06', '2021-12-08 01:38:07'),
(36, 'Nguyễn viết', 'Cương', NULL, NULL, 'nguyenvietcuong120681@gmail.com', '$2y$10$Ntjt6d2bCybE.oeXB4jhM.zY/yE3YLODFluBg1A3uSeHeX8p8N4zm', NULL, NULL, NULL, '2021-12-17 08:36:08', NULL, NULL, '2021-12-17 01:36:08', '2021-12-17 01:36:08'),
(37, 'Nguyễn', 'Hằng', NULL, NULL, 'hangcosi96@gmail.com', '$2y$10$Ch4sRt2.KG.S06X/.D5RPuUXKO6lhPiHU3Zim9k/sxwIGrUu3BpV.', NULL, NULL, NULL, '2021-12-17 09:12:40', NULL, NULL, '2021-12-17 02:12:40', '2021-12-17 02:12:40'),
(38, 'Nguyễn', 'Tiến Anh', NULL, NULL, 'thutquy@gmail.com', '$2y$10$eR0ONgmCDXEcN5uk3wfbguCIdLb9aCzZsxfGwfQDZKKswX3pPfzf2', NULL, NULL, NULL, '2021-12-18 10:48:00', NULL, NULL, '2021-12-18 03:48:00', '2021-12-18 03:48:00'),
(39, 'Phạm', 'Anh Tài', NULL, NULL, 'phamtaigt16031999@gmail.com', '$2y$10$PFItlvKzmp/SNs1rL737i.f2F3VVtWRGT0aBsS/KB.6qtR5PbrEbS', NULL, NULL, NULL, '2021-12-21 04:03:47', NULL, NULL, '2021-12-20 21:03:47', '2021-12-20 21:03:47'),
(40, 'Nguyen', 'Viet', NULL, NULL, 'mygovn14@gmail.com', '$2y$10$SO1P9SwkluSa5dKKAhfp9OVS2P.f0dRsKwYX/1BGLaMs4Ze/OheWe', NULL, NULL, NULL, '2021-12-22 10:43:07', NULL, NULL, '2021-12-22 03:43:06', '2021-12-22 03:43:07'),
(41, 'Trịnh', 'Tâm', NULL, NULL, 'trinhminhtam0910@gmail.com', '$2y$10$M6nXffASIU9QQlcucqZNLOOQMp99fI5UHfVoKExdp2O0YozoNEFZm', NULL, NULL, NULL, '2021-12-22 10:45:11', NULL, '8BsAt01xDP8zilxTwNjKCRtcy2EkmVfZVTUMz0Em7hjRdzqsBSVtBfrSWheU', '2021-12-22 03:45:11', '2021-12-22 03:45:11'),
(42, 'Pham Thiên', 'Tâm', NULL, NULL, 'Phamthientam_1995@gmail.com', '$2y$10$adl9rcxjnKU7bUT3GPwHdeigLJCBaJApxJr0o/LCOfppAGJ6FgSdK', NULL, NULL, NULL, '2021-12-22 12:31:33', NULL, NULL, '2021-12-22 05:31:33', '2021-12-22 05:31:33'),
(43, 'Nguyễn Quang', 'Toản', NULL, NULL, 'qtoan106@gmail.com', '$2y$10$kdPDhj8xYW7BQz7rTSuZee5GAYBe/7zzI.eQfZ8LIysYvGqwJitFS', NULL, NULL, NULL, '2021-12-24 08:11:34', NULL, NULL, '2021-12-24 01:11:34', '2021-12-24 01:11:34'),
(44, 'Nguyễn Quang', 'Trung', NULL, NULL, 'trungnqbmw@gmail.com', '$2y$10$vn3Qq7VBRbkAHkPlw4Xzbujg9.hKYHoiLFgzbMnXRXj7RK5ZUjBES', NULL, NULL, NULL, '2021-12-28 08:07:23', NULL, NULL, '2021-12-28 01:07:23', '2021-12-28 01:07:23'),
(45, 'Hoang Duc', 'Hiep', NULL, NULL, 'gotap.com.vn@gmail.com', '$2y$10$DA1QgGIoRDqCks0nXhsFbewUthG4Eof1PxeE5FBFV5fiIUwjj/SHa', NULL, NULL, NULL, '2022-01-01 03:35:06', NULL, 'qbzHq2zg1ef88rbQvMbDIm5lhFmjRnHAIbE0jSaytWPbmPQ7XDC8ygjcYK02', '2021-12-31 20:35:06', '2022-05-15 06:01:55'),
(46, 'Hoàng', 'Dương', NULL, NULL, 'Duongh2301@gmail.com', '$2y$10$gUCs.Maz3dts7KliZZrS0OeGO/3TnmD4LggyWTORhc.WCflDhnH0a', NULL, NULL, NULL, '2022-01-03 07:55:05', NULL, NULL, '2022-01-03 00:55:05', '2022-01-03 00:55:05'),
(47, 'Nguyễn', 'Hữu Phú', NULL, NULL, 'PhuNguyenH3Tauto@gmail.com', '$2y$10$8r8hSVxEogP9usG2LgVP5uiLQd/zGEYC6sjaSzeosPbB4JmV.OXnu', NULL, NULL, NULL, '2022-01-03 07:55:32', NULL, NULL, '2022-01-03 00:55:32', '2022-01-03 00:55:32'),
(48, 'Trần Minh', 'Quyết', NULL, NULL, 'quyetcar@gmail.com', '$2y$10$s/Q6tNfnKx0xt7PSHhJBOuGgPLWvJUeCFGyrnmtmaW2AuFAzEgu1y', NULL, NULL, NULL, '2022-01-03 07:58:41', NULL, 'dSdEg43cvWRlq92R6CBBgxTJGteKdkGkILqoyRBx3eb2v3nMMcIKl10XYhV4', '2022-01-03 00:58:41', '2022-01-03 00:58:41'),
(49, 'Bùi', 'Chiến', NULL, NULL, 'chienbv.1991@gmail.com', '$2y$10$lVFo0hoqJ4qzavKGuGlMiOg7VUFPNSf2.J7jGnqwkgnIvLJNCm1Z2', NULL, NULL, NULL, '2022-01-03 07:58:48', NULL, '7PXJziFqMHVLTB115X7oJL4R9m04T195BwDXBgtF3T085sFAl3lAGVZx4HJN', '2022-01-03 00:58:48', '2022-01-03 00:58:48'),
(50, 'Vũ Lê', 'Hùng', NULL, NULL, 'vulehung1986@gmail.com', '$2y$10$v.Ba/qp8dA..s0O3fhJH1uKszPdOjTYyrqJT8rcQoTqCKThTFAH4q', NULL, NULL, NULL, '2022-01-03 08:07:00', NULL, 'pwDJtdbaSHHo7GV41bG4AVkabVkl9T6OXFIje1mEEqW78OV1iH9tUcT6I8Im', '2022-01-03 01:07:00', '2022-01-03 01:07:00'),
(51, 'Nguyễn', 'Hoàng', NULL, NULL, 'hoangnd71290@gmail.com', '$2y$10$uRYIBQ2Ji9Esj7tMr8bWBeJSZ4jSKtUCJ/su4CwZLuX9YpgYFvJ72', NULL, NULL, NULL, '2022-01-03 08:20:11', NULL, NULL, '2022-01-03 01:20:11', '2022-01-03 01:20:11'),
(52, 'Nguyễn', 'Thảo', NULL, NULL, 'thaohvqlgd@gmail.com', '$2y$10$7eZUC/snUJPW7TMrIXmEAO056qHKxkzRtMTqvnjdIp6fjgqMT0BCO', NULL, NULL, NULL, '2022-01-04 01:16:59', NULL, 'vf8kAYD1PSLG2v9MxMCmUfDduhE2Y5jtURqThTIQz92MyuJPrA3IK0dKAsOl', '2022-01-03 18:16:59', '2022-01-03 18:16:59'),
(53, 'Bùi Mạnh', 'Hiếu', NULL, NULL, 'hieu.buimanh1988@gmail.com', '$2y$10$CX97Op9Gie5gzQFNn8172uAYoZ6AxzZ41rjT8yz0cHFcTtb3JxLuW', NULL, NULL, NULL, '2022-01-04 03:17:03', NULL, NULL, '2022-01-03 20:17:03', '2022-01-03 20:17:03'),
(54, 'Nguyễn Quang', 'Trung', NULL, NULL, 'autoh3t@gmail.com', '$2y$10$x0r6YKQMV/xuc6AIgjReT.ehta/uDYZ4IZ/rGcHY5bP6iloLDnS02', NULL, NULL, NULL, '2022-01-04 03:17:59', NULL, NULL, '2022-01-03 20:17:59', '2022-01-03 20:17:59'),
(55, 'Nguyễn Quang', 'Huy', NULL, NULL, 'huymercedesbenz@gmail.com', '$2y$10$s5WyWXo9BC.A7JRVHcSbXeyQEmEBqTd/JPiDCPHLxKXgQXQA2H/2C', NULL, NULL, NULL, '2022-01-04 03:19:54', NULL, NULL, '2022-01-03 20:19:54', '2022-01-03 20:19:54'),
(56, 'Nguyễn Công', 'Thắng', NULL, NULL, 'congthangh3tauto@gmail.com', '$2y$10$RbVHBEbn5VARgJk8E8EDO.9KtF8BocLTGxucdMc/Efb.ZUN4Qtyq6', NULL, NULL, NULL, '2022-01-04 03:20:01', NULL, NULL, '2022-01-03 20:20:01', '2022-01-03 20:20:01'),
(57, 'Bùi Đức', 'Thiện', NULL, NULL, 'ducthien.h3tauto@gmail.com', '$2y$10$ajDhtKA3jBY5AnbZH38WJuEI9ddOPFDM.rA2Y9v2ZCrShuIZ3yvz2', NULL, NULL, NULL, '2022-01-04 03:24:09', NULL, NULL, '2022-01-03 20:24:09', '2022-01-03 20:24:09'),
(58, 'Khải', 'Lốc Xoáy', NULL, NULL, 'khaibeo890@gmail.com', '$2y$10$8o9I4RkgkVRP5LMBcGQSC.sf0Qq0FQBPf92vzi8QP7Uq7Oxc6Ns46', NULL, NULL, NULL, '2022-01-05 08:51:14', NULL, NULL, '2022-01-05 01:51:14', '2022-01-05 01:51:14'),
(59, 'Nguyễn', 'Nam', NULL, NULL, 'forwork@nguyentuannam.com', '$2y$10$KJOtTY77kaCVJ.mzWfOZ6OdNP0eyswepzdFAE00p4x78lynfSJQai', NULL, NULL, NULL, '2022-01-05 09:56:25', NULL, NULL, '2022-01-05 02:56:25', '2022-01-05 02:56:25'),
(60, 'Đặng Thị Minh', 'Tâm', NULL, NULL, 'dangtam25012002@gmail.com', '$2y$10$mBa0EYNlxLWUiRfzOGo09OgR7j/qtIFDkBWgBFZ8muM9iVBMd9yxa', NULL, NULL, NULL, '2022-01-07 07:38:23', NULL, NULL, '2022-01-07 00:38:22', '2022-01-07 00:38:23'),
(61, 'Trần', 'Thu Trang', NULL, NULL, 'trang.sontungauto@gmail.com', '$2y$10$UDpPjRa2R.luLTmezweIqO5.bSswmGKUwa8JvS1FT7TR0M18ejXEC', NULL, NULL, NULL, '2022-01-19 08:05:53', NULL, NULL, '2022-01-19 01:05:53', '2022-01-19 01:05:53'),
(62, 'Tống', 'Đức Đôn', NULL, NULL, 'ducdo0907@gmail.com', '$2y$10$ChJOK6RUzROAz.efsmH8P.RW5XQg757QSXhNTwqoOJC9EqiZ0G1/e', NULL, NULL, NULL, '2022-01-19 08:15:40', NULL, NULL, '2022-01-19 01:15:40', '2022-01-19 01:15:40'),
(63, 'Nguyễn Quang', 'Trọng', NULL, NULL, 'sontungauto1@gmail.com', '$2y$10$AdPxn6TR7kzQmrbzQIQdi.DM46WYFi4d4TY94kp6hO4VC1AdBayu6', NULL, NULL, NULL, '2022-01-19 08:16:28', NULL, NULL, '2022-01-19 01:16:28', '2022-01-19 01:16:28'),
(64, 'Trí', 'Sơn', NULL, NULL, 'vutrisonnn@gmail.com', '$2y$10$EhGGa7FiEhesUC1Mxuq/KejnW4BU/5gSqOypV0Fls0PEnoYlBB0yO', NULL, NULL, NULL, '2022-01-19 08:20:25', NULL, 'js4VhldLFDnkF6xpdumDJ2wlOEcfICkamQ6Js3jviDHi1U4NgbwWUdi96iTv', '2022-01-19 01:20:25', '2022-01-19 01:20:25'),
(65, 'Quách', 'Xuân Hải', NULL, NULL, '2601supercar@gmail.com', '$2y$10$1S74wSjpcfGYfsf1KThy5.QoE8PmKPVu2FYtBKDVcN0Xq.s1xaoEq', NULL, NULL, NULL, '2022-01-19 08:49:30', NULL, NULL, '2022-01-19 01:49:30', '2022-01-19 01:49:30'),
(66, 'Phùng Hữu', 'Đức', NULL, NULL, 'phunghuuduc279@gmail.com', '$2y$10$Is2iRYAJJoKF9gSn16eUBujRe22V0I3XjiNGDx5binDCUxdh0pdGi', NULL, NULL, NULL, '2022-01-19 09:07:31', NULL, 'fUtCZVJzMzPPg1iFyZqoTBjoenyIR5Ex3QicBG69qaxlQXrGsWROhoMZh3wb', '2022-01-19 02:07:31', '2022-01-19 02:07:31'),
(67, 'Nguyễn Đức', 'Duy', NULL, NULL, 'duyducnguyenn@gmail.com', '$2y$10$mZwvy8AiKg17sqzwtgQmpuJ.U69uRfBylaRpB4iNQl5e8Bj9MliTu', NULL, NULL, NULL, '2022-01-19 10:17:14', NULL, NULL, '2022-01-19 03:17:14', '2022-01-19 03:17:14'),
(68, 'Luu', 'Nga', NULL, NULL, 'luunga.ylb@gmail.com', '$2y$10$yMdjlTU0jRo7ahT8ZnO90.uEu.GoLPgrrUJdsPAbPGq.8rqCjQc.W', NULL, NULL, NULL, '2022-01-19 13:32:33', NULL, NULL, '2022-01-19 06:32:32', '2022-01-19 06:32:33'),
(69, 'Sầm', 'Huệ Minh', NULL, NULL, 'hueminh2510@gmail.com', '$2y$10$e0HDIrebHSy3XjuyhBX11.3pjK9vPes2WXK.cSWkI5AMeAWWrW5kq', NULL, NULL, NULL, '2022-01-20 04:15:04', NULL, NULL, '2022-01-19 21:15:04', '2022-01-19 21:15:04'),
(70, 'Đinh công', 'Tùng', NULL, NULL, 'dinhtung0289@gmail.com', '$2y$10$yEe4LOwCRdXrzpT.VeQctOXQKYNO4cs75NnzQKh8oj8ZDjj3hxqEu', NULL, NULL, NULL, '2022-01-20 04:24:24', NULL, NULL, '2022-01-19 21:24:24', '2022-01-19 21:24:24'),
(71, 'bùi ngọc', 'huy', NULL, NULL, 'buihuycnvt@icloud.com', '$2y$10$L9Vf4OzPHhOAWYTTjSSz7eNOVGus0O7kmY/D1UReAf0XmjKUefTPS', NULL, NULL, NULL, '2022-01-20 06:49:01', NULL, NULL, '2022-01-19 23:49:01', '2022-01-19 23:49:01'),
(72, 'Hoang duc', 'Hiep', NULL, NULL, 'hoangduchiep9x@gmail.com', '$2y$10$T8yv194mELMTDTiVajA7F.7XJBkWSkNyt0tvdVNpV30lHjAB6qtt2', NULL, NULL, NULL, '2022-01-21 03:29:47', NULL, 'Cm8CCKivpvc6uvpbgFp5lyQbEzj9Da4NOC8bBdPJ5SV0zFK4jjV0waYjEFt3', '2022-01-20 20:29:47', '2022-01-20 20:29:47'),
(73, 'Hoà', 'Minzie', NULL, NULL, 'xuanhoale.205@gmail.com', '$2y$10$..s7i4LY0haGS6MWpFCGCOSVBPcsaBLo.49AI1GyjzCioqT8xHKdG', NULL, NULL, NULL, '2022-02-09 10:08:12', NULL, NULL, '2022-02-09 03:08:12', '2022-02-09 03:08:12'),
(74, 'Dương', 'Trường', NULL, NULL, 'td12121996@gmail.com', '$2y$10$4U0btIleHrKB1Xf5bCy5geSvy89gsLtY4ODB4h2uhpwTV8HU2vfcK', NULL, NULL, NULL, '2022-02-10 03:58:22', NULL, NULL, '2022-02-09 20:58:22', '2022-02-09 20:58:22'),
(75, 'Trịnh', 'Tuấn Anh', NULL, NULL, 'Quanhoa94@gmail.com', '$2y$10$PLu/2Voq6Q6pty.H.z7F4utjhlAv.7RmSkjviLpFSyIPTIpmaQA3y', NULL, NULL, NULL, '2022-02-18 08:11:43', NULL, '0GTaNwxOxHV0itiN7Qv4bgms0pWvEVwDvlb4Yy5SjPlDU6oB6x8QxSNJoCs5', '2022-02-18 01:11:43', '2022-02-18 01:11:43'),
(76, 'Lê Đăng', 'Trung', NULL, NULL, 'ledangtrung09@gmail.com', '$2y$10$sA/9de4Ajijh8IKU69HwN.UsJnhzZOExC8NnUqRuqV32KCJ5BQ7D6', NULL, NULL, NULL, '2022-02-18 08:36:15', NULL, NULL, '2022-02-18 01:36:15', '2022-02-18 01:36:15'),
(77, 'Nguyễn Đức', 'An', NULL, NULL, 'nguyenducanpro06@gmail.com', '$2y$10$Mj510O5iNUlK94OCroxi2.0d7rG1UF8BAui1lUlTiqvchMLITwvpe', NULL, NULL, NULL, '2022-02-24 01:45:16', NULL, 'ljRCRzRFPAYDURxpGOGeeYvnsPt2aj063WoAro2MvyM3AVxKquTFxA1f3uTP', '2022-02-23 18:45:16', '2022-02-23 18:45:16'),
(78, 'Phạm', 'Dũng', NULL, NULL, 'minhdungzdc9@gmail.com', '$2y$10$dcrmxiAw49z7wLYmfboDo.Ekoq3OVXoXqKnRee4l47EWqOdXzh7yC', NULL, NULL, NULL, '2022-03-13 14:14:17', NULL, NULL, '2022-03-13 07:14:17', '2022-03-13 07:14:17'),
(79, 'Kim Mạnh', 'Quyền', NULL, NULL, 'kimmanhquyen@gmail.com', '$2y$10$.iaVyMVvJjlLaKXBmBLJ6OsSsMuat8NRcmzsmk6bL7AOAaH7rNj3W', NULL, NULL, NULL, '2022-03-14 10:11:12', NULL, NULL, '2022-03-14 03:11:12', '2022-03-14 03:11:12'),
(80, 'Lê', 'Ngọc Bách', NULL, NULL, 'mrbach222@gmail.com', '$2y$10$3/bJrxlHlujR6cTpCPPvDuWJYpUCHxixqpXyDXyKkIvm/YsPKHC9C', NULL, NULL, NULL, '2022-03-15 03:06:45', NULL, NULL, '2022-03-14 20:06:45', '2022-03-14 20:06:45'),
(81, 'Hoang', 'Hiep', NULL, NULL, 'Hackeraoxam@gmail.com', '$2y$10$3dD7Sf0F/P50Fco4xcFAQ.bF/WRza00yaquS2okCnvFK.20SZZDX2', NULL, NULL, NULL, '2022-03-18 10:35:16', NULL, NULL, '2022-03-18 03:35:16', '2022-03-18 03:35:16'),
(82, 'Vũ', 'Thanh', NULL, NULL, 'sandangiu2x@gmail.com', '$2y$10$.PSW8h0ULlusbsjO7hUPJuK8QL2swLXmXtZGNxoGtp3tOwr95I9Jy', NULL, NULL, NULL, '2022-03-18 11:10:59', NULL, NULL, '2022-03-18 04:10:59', '2022-03-18 04:10:59'),
(83, 'Vua', 'Bảo Hiểm', NULL, NULL, 'myhanduy@gmail.com', '$2y$10$STvteoF7vuqVNW7.Gm57nOLX3Cxl1alrkMjd6BwU47M12OW6A5yoK', NULL, NULL, NULL, '2022-03-21 03:42:41', NULL, 'k9pchfaZFG7ctttEoVeqsj9JkkryWlux5vTmvoU4Dl3NV2VQAEq1r61hZby3', '2022-03-20 20:42:41', '2022-03-20 20:42:41'),
(84, 'Đinh Khánh', 'Dương', NULL, NULL, 'khanhduongdethuong10@gmail.com', '$2y$10$SVvQt4PjP64T/TFf9TRLk.b/VQen2FcstCY2JgRUDvvGvMymoPIwu', NULL, NULL, NULL, '2022-03-22 04:56:58', NULL, NULL, '2022-03-21 21:56:58', '2022-03-21 21:56:58'),
(85, 'Hà Tùng', 'Dương', NULL, NULL, 'tungduongfx55@gmail.com', '$2y$10$ogkg9J0aeOLi7uqKj/mRh.WcnpIHMpHcOtUOAY1RcN0oCHOZXhuxi', NULL, NULL, NULL, '2022-03-22 09:56:46', NULL, NULL, '2022-03-22 02:56:46', '2022-03-22 02:56:46'),
(86, 'Hồ', 'Hiếu', NULL, NULL, 'Xuanhieuqx2@gmail.com', '$2y$10$ua6yOjo4NTlz6wlryXBnGuuu1HrBoUBo0r8WbEgqIF3eWpVV5Co2G', NULL, NULL, NULL, '2022-03-24 06:57:24', NULL, NULL, '2022-03-23 23:57:24', '2022-03-23 23:57:24'),
(87, 'Nguyễn Thị Thanh', 'Huyền', NULL, NULL, 'thanhhuyenkt0710@gmail.com', '$2y$10$onpZdUpUtpSWnpL3I72zP.jgPk3jV2DSJSCJk2GO7QnXGMYh3a/ni', NULL, NULL, NULL, '2022-03-24 17:01:24', NULL, '3izpwIbYVL9nNc2O5tNwjh8JDiVFywGoF85SvNjbpwR8OSbFAOcoS4bdmjrH', '2022-03-24 10:01:24', '2022-05-19 07:56:41'),
(88, 'Ngọc', 'Hưởng', NULL, NULL, 'ngochuongadr@gmail.com', '$2y$10$Kl4QiYqNyKRT4y6UlJ0e4uI.gm9sbGE9OPDNykMyZjEmcvFandzS2', NULL, NULL, NULL, '2022-03-25 02:55:01', NULL, 'DxH9r6pkXj5ud8O7jYdVAA4NbepLuicIJBW444peseJpIFevz1vcKwVczuGy', '2022-03-24 19:55:01', '2022-03-24 19:55:01'),
(89, 'Tùng', 'Phạm', NULL, NULL, 'Tunggucci@gmail.com', '$2y$10$nPlPCf4UajjTcHZm6.SAK.PU/pcMHlTG0J/642KegnXjb0CdSy5Ym', NULL, NULL, NULL, '2022-03-27 13:09:12', NULL, 'UE6s4EfZCXBuWD72aN769HH3fbZLtO4hynYIvHyG1hx9vAFP2oVZOEJU7Sbk', '2022-03-27 06:09:12', '2022-03-27 06:09:12'),
(90, 'Nguyễn', 'Hiếu', NULL, NULL, 'hieusasuke1995@gmail.com', '$2y$10$90XBKX1QrfQckjkxE/zuR.qAOdThW1sfD60tpqn7lJvSykQyGQ0v6', NULL, NULL, NULL, '2022-04-02 05:36:12', NULL, 'L3E4oPUVzd0oXILcoSHLFqJxWswIdjJzKsXBrge8Q2by7mV1vybRRgLvKQ8R', '2022-04-01 22:36:12', '2022-04-01 22:57:46'),
(91, 'Thuỳ', 'Dung', NULL, NULL, 'hmcdragon1995@gmail.com', '$2y$10$LkS1Xij6en08BvSj4KpN1uwrqdWuEquyeD.IIwoc6mguRfqK.l5N2', NULL, NULL, NULL, '2022-04-03 09:25:50', NULL, NULL, '2022-04-03 02:25:50', '2022-04-03 02:25:50'),
(92, 'Lý', 'Xuân Phúc', NULL, NULL, 'phucly160720@gmail.com', '$2y$10$okvmYtUamnOrLnTO20TI8u9VmBFKX71qwUOuhIKfTgySuwTDZVy2q', NULL, NULL, NULL, '2022-04-04 06:33:32', NULL, NULL, '2022-04-03 23:33:32', '2022-04-03 23:33:32'),
(93, 'Hoàng', 'Phú', NULL, NULL, 'hoangvanphu19052003@gmail.com', '$2y$10$eM.m4RGHofhF/9nqpXRBZ.6JZcra7gqnALyoJWLrJkT6rmanBEfxG', NULL, NULL, NULL, '2022-04-10 02:33:16', NULL, NULL, '2022-04-09 19:33:16', '2022-04-09 19:33:16'),
(94, 'Vũ', 'Thị Nhung', NULL, NULL, 'bontomboytiktok@gmail.com', '$2y$10$pW5xiRoL18F.CMwWNzfXhuRgzabTeIveqdUoj.wTpS9zQAKeUghrW', NULL, NULL, NULL, '2022-04-10 06:07:23', NULL, 'YhJi6QnyaqYIRRd7Ux4EeSTNw1t3aCgAq2Uqu6XWofgs8roCkUsABD9kTU3f', '2022-04-09 23:07:23', '2022-04-09 23:07:23'),
(95, 'Linh', 'Le Te', NULL, NULL, 'Ngocly998899@gmail.com', '$2y$10$tuJN2AA3T3ShPKMJev7VC.9KA0l.O3H7LTSMvAMIWwllc.qkVSLYC', NULL, NULL, NULL, '2022-04-11 02:42:23', NULL, NULL, '2022-04-10 19:42:23', '2022-04-10 19:42:23'),
(96, 'Thanh', 'Lương', NULL, NULL, 'luonggaming54@gmail.com', '$2y$10$43hJSA/lJ.Njc28nh0tmseCN0aZops2qCzrBvbNFewUPxhTmLK.0C', NULL, NULL, NULL, '2022-04-15 05:06:18', NULL, 'HSKWXUriqPgLlsQGr3NLnhCTzKJnIQ9iWL0157qMPXJ0VqdYTzsnB2H3PfsW', '2022-04-14 22:06:18', '2022-04-14 22:06:18'),
(97, 'Trần', 'Phương Anh', NULL, NULL, 'bachlongtran64@gmail.com', '$2y$10$Hv83d.ZrPTcDnE5UkFPB2edtDXfyRXWHK365Hd2bF62CV00LCt6lC', NULL, NULL, NULL, '2022-04-18 17:31:18', NULL, NULL, '2022-04-18 10:31:18', '2022-04-18 10:31:18'),
(98, 'Lucas', 'Frank', NULL, NULL, 'franklucascrypto@gmail.com', '$2y$10$A/Aib51KIl10bpZVyz5j5uPTt/WFMDJWSxGQ4CGM7TENMOfjTbn8O', NULL, NULL, NULL, '2022-04-21 08:08:37', NULL, 'JkZ5adr5zLexAC0yrDWyWFSrygEyHvdOKPFAUQOhYXzPAZfHGTqRFOcDc1Hr', '2022-04-21 01:08:37', '2022-04-21 01:08:37'),
(99, 'Tô', 'Thùy Anh', NULL, NULL, 'tothuyanh@gmail.com', '$2y$10$94u9l31Fz.SziQ1i9R/hv.xTfa4n1TvMJl7i3lprAVibSIGrkaIj.', NULL, NULL, NULL, '2022-04-21 08:55:14', NULL, 'Mr1MXDXUICfaXmqGAciJpWW22InzroVvDmZnQvWwvlWbLETYoGXmXAuhQfvq', '2022-04-21 01:55:14', '2022-04-21 08:55:41'),
(100, 'Nguyễn', 'Thanh Hào', NULL, NULL, 'Pinkieu991999@gmail.com', '$2y$10$JJMcOEGCBwLpvhMKcKRtheUa8GWoatji/a8xUQGqagmjF5jC6p/VK', NULL, NULL, NULL, '2022-04-28 04:27:08', NULL, NULL, '2022-04-27 21:27:08', '2022-04-27 21:27:08'),
(101, 'Đỗ', 'Minh Dương', NULL, NULL, 'minhduong31100@gmail.com', '$2y$10$kGMw7kQvIi7XsVQMQx0Qv.ZAB5RaK0BNteKurhjO0y/Db.4GF1fFG', NULL, NULL, NULL, '2022-04-28 10:36:13', NULL, NULL, '2022-04-28 03:36:13', '2022-04-28 03:36:13'),
(102, 'Bar', 'Hà', NULL, NULL, 'ngochayb3@gmail.com', '$2y$10$eNb81l1bWWOEaCDIl1eHTusqTxG7ooALOaMeCD1lXf4E7dsU49Wz6', NULL, NULL, NULL, '2022-04-29 05:07:09', NULL, NULL, '2022-04-28 22:07:09', '2022-04-28 22:07:09'),
(103, 'Phan', 'Hồng Anh', NULL, NULL, 'phanhonganh203@gmail.com', '$2y$10$M3MgW0jY/2Vh7Db.lWuKnehzKsUnjSW3Ai1Kv5Mj9lIfqPYKDKyfy', NULL, NULL, NULL, '2022-04-29 06:37:03', NULL, NULL, '2022-04-28 23:37:03', '2022-04-28 23:37:03'),
(104, 'Trung', 'Kiên', NULL, NULL, 'kienvi202@gmail.com', '$2y$10$pa9hwUUBFJ8h8lWPaMOoKuofIZcWwS91.iRJYJx/h6ExhbKLuY3rW', NULL, NULL, NULL, '2022-04-29 13:10:05', NULL, NULL, '2022-04-29 06:10:05', '2022-04-29 06:10:05'),
(105, 'Nguyễn', 'Quỳnh', NULL, NULL, 'minguyen280496@gmail.com', '$2y$10$Zo2mI2X8XjsW8tPZUZ2.qOo.S6aR/df67tgx/MM6nTG/XCqtQ.KTG', NULL, NULL, NULL, '2022-04-30 07:05:19', NULL, NULL, '2022-04-30 00:05:19', '2022-04-30 00:05:19'),
(106, 'Dang', 'Linh', NULL, NULL, 'Dangkhanhlinh410@gmail.com', '$2y$10$8ELP/jC6hfNskEQ/uQWXw.k7b2DSgzXRGBM4foZvagigLod2szklu', NULL, NULL, NULL, '2022-04-30 11:26:18', NULL, NULL, '2022-04-30 04:26:18', '2022-04-30 04:26:18'),
(107, 'Lê', 'Khang', NULL, NULL, 'khangdthvcl@gmail.com', '$2y$10$e0SRk1sf2yKlEgLbxQUgsejlvK6ERlmQ3CNCfqImYzev8guQVKFyy', NULL, NULL, NULL, '2022-05-02 08:29:56', NULL, NULL, '2022-05-02 01:29:56', '2022-05-02 01:29:56'),
(108, 'Trương', 'Phi hùng', NULL, NULL, 'hungheo0503@icloud.com', '$2y$10$u7QGXPxUd4asDnnh7Ke9yOCKWbMhr3KrWbRkanu9tsoekVnLw7Htq', NULL, NULL, NULL, '2022-05-05 03:17:12', NULL, 'oaJZoPB6chrVw6CHW0zWblcduWpd5VT6aQf4U4Om9VCsXhpUBtoVpdIbP5qM', '2022-05-04 20:17:12', '2022-05-04 20:47:22'),
(109, 'Đàm', 'Phương Anh', NULL, NULL, 'phuonganh01hp@gmail.com', '$2y$10$9AtHJTpGpN8XRhBtljsJfOgz2DVyni5UnjOINIfpbruhCMY/vxmii', NULL, NULL, NULL, '2022-05-05 15:45:56', NULL, NULL, '2022-05-05 08:45:55', '2022-05-05 08:45:56'),
(110, 'Hoàng', 'Linh Chi', NULL, NULL, 'h.linhchi202@gmail.com', '$2y$10$M18QecqJnwvDHJWDfly2L.FKZwmP4Fw52tQRBntxYN/C5yfIGtbZy', NULL, NULL, NULL, '2022-05-05 15:46:53', NULL, 'kVPSWsu8FAStaSmbe0a0TTmjbLvFyZmneQsygsV7V8ild6iYXgSQmX6Qb5o0', '2022-05-05 08:46:53', '2022-05-05 08:46:53'),
(111, 'Trần', 'Hiếu', NULL, NULL, 'duchieudzck07@gmail.com', '$2y$10$0nlu..VT0kfNBkiVyYcXiu4hvBsu2o99et3gUxs91bVaooi539Lpa', NULL, NULL, NULL, '2022-05-06 05:32:51', NULL, NULL, '2022-05-05 22:32:51', '2022-05-05 22:32:51'),
(112, 'Nguyễn Thị', 'Ngọc Trâm', NULL, NULL, 'ngoctram29082002@icloud.com', '$2y$10$d1toE4SvoBWUolWerqyGE.zg7Zn6zvqH.pwFtmGCZYKTzzfjGnzqu', NULL, NULL, NULL, '2022-05-06 09:39:26', NULL, 'WlFvK8arfd2hY6Q74ZvqcrRjB0jU4oCCROMlWIFCForYcz4DGyjq13jNLAqT', '2022-05-06 02:39:26', '2022-05-06 02:39:26'),
(113, 'Nguyễn', 'Văn', NULL, NULL, 'nguyenvan203199@gma.com', '$2y$10$w.ODN7Pf5oijzethWW7FcewR6ke5uMkqN8sfC2mSXYfMPOhLYDjfC', NULL, NULL, NULL, '2022-05-06 10:55:59', NULL, NULL, '2022-05-06 03:55:59', '2022-05-06 03:55:59'),
(114, 'Lê', 'Phương Quỳnh', NULL, NULL, 'lephuongquynh2906@gmail.com', '$2y$10$MrQGSIU/CQnFk99DFMDqR.VbyVHeTi0Dl6/V4gsXa5UFeZjz4D6s.', NULL, NULL, NULL, '2022-05-07 06:02:43', NULL, 'Tf7Oi83yFuyBJGRFs4fmghzvLbLCaqGYw8HYO5muMcupSdb8tRW7YPkJTmtq', '2022-05-06 23:02:43', '2022-05-06 23:02:43'),
(115, 'HẰNG', 'THU', NULL, NULL, 'thuhangtran2804@gmail.com', '$2y$10$RLOU4KsyQvzxuxOnep7Epeg4f/qjv5jge1W4/K0u3fjOHL8GXV6JC', NULL, NULL, NULL, '2022-05-07 12:08:37', NULL, NULL, '2022-05-07 05:08:37', '2022-05-07 05:08:37'),
(116, 'Hà', 'Tuyết Như', NULL, NULL, 'hatuyetnhuonline@gmail.com', '$2y$10$Kr6hnkmPy0rLnpMp4njvoeDZRwoHG26hyogjBM8xIzX2H9p.xuhd.', NULL, NULL, NULL, '2022-05-09 06:54:39', NULL, NULL, '2022-05-08 23:54:39', '2022-05-08 23:54:39'),
(117, 'Nguyễn', 'Văn Sỹ', NULL, NULL, 'syt8bg2.khoahoccoban@gmail.com', '$2y$10$WPFZReD5YA3UQJaS9FJJcOIr2.8T7w/GvQ31.GT6s0iV1YGHjnCpy', NULL, NULL, NULL, '2022-05-09 11:21:43', NULL, NULL, '2022-05-09 04:21:43', '2022-05-09 04:21:43'),
(118, 'Nguyễn Lê', 'Nam', NULL, NULL, 'giaoquantieu@gmail.com', '$2y$10$FReUYnc3WmUfEjtpO5RLYO6c1dxohVd6iapnB55.QCFF0byQKYebi', NULL, NULL, NULL, '2022-05-11 05:54:19', NULL, NULL, '2022-05-10 22:54:19', '2022-05-10 22:54:19'),
(119, 'Trần', 'Kayla', NULL, NULL, 'kaylabtran@gmail.com', '$2y$10$X/RLVHkVaIYMtGSfjLFTPeES1aThCFCvuaSpmr1lXASQu4zE96jlS', NULL, NULL, NULL, '2022-05-12 09:05:30', NULL, NULL, '2022-05-12 02:05:30', '2022-05-12 02:05:30'),
(120, 'Hoàng', 'Diệu', NULL, NULL, 'hoangthithuydieu@gmail.com', '$2y$10$0Mv47kUMFHPVgBAAPbC.ruPfWsNrsBOV5rYQ7ImdHA9pa7zHNwX.G', NULL, NULL, NULL, '2022-05-12 11:01:54', NULL, NULL, '2022-05-12 04:01:54', '2022-05-12 04:01:54'),
(121, 'Nguyễn', 'Ngọc Mai', NULL, NULL, 'main79576@gmail.com', '$2y$10$FBViyrGL1nODV76.HpmcGevyZZREVu9wAwmlfClhE.//1SsfTSMVO', NULL, NULL, NULL, '2022-05-13 03:37:09', NULL, NULL, '2022-05-12 20:37:09', '2022-05-12 20:37:09'),
(122, 'Trần Thế', 'Hoàng', NULL, NULL, 'tranhoang13572468@gmail.com', '$2y$10$lCeLglWSm4hv6MrPTJ9Oo.7qlCCP7JbAtkslhk6OSXBe2aHMqkafG', NULL, NULL, NULL, '2022-05-17 09:17:26', NULL, NULL, '2022-05-17 02:17:26', '2022-05-17 02:17:26'),
(123, 'Phạm Ngọc', 'Mai', NULL, NULL, 'pmai24592@Gmail.com', '$2y$10$8mJ2V.hS8jsKK1JiXxjBqORDpTIO/mMxEBmr5pIhqVLWy12Q.ZdPS', NULL, NULL, NULL, '2022-05-20 10:00:27', NULL, NULL, '2022-05-20 03:00:27', '2022-05-20 03:00:27'),
(124, 'Nhung', 'Chanh', NULL, NULL, 'trannhung18122001@gmail.com', '$2y$10$tqLz412od3.4hmhn2WiDaeyy9DegAER2STqUD5mnXu/180hzAZWCK', NULL, NULL, NULL, '2022-05-20 10:13:46', NULL, NULL, '2022-05-20 03:13:46', '2022-05-20 03:13:46'),
(125, 'Bùi', 'Hải Dương', NULL, NULL, 'duong3nana203@gmail.com', '$2y$10$ylIhuC4GChNC66hlIh6rQ.5QiERSpwcGAOdZmKjfLkzYBSiM6hUfC', NULL, NULL, NULL, '2022-05-20 14:18:08', NULL, '6zvoIaEwxKZR6GE44W7gPzcDoFF8nT0adFhp654AIbltg3Pl7dWJUaQbsrlf', '2022-05-20 07:18:08', '2022-05-20 07:18:08'),
(126, 'Vũ', 'Mạnh Thắng', NULL, NULL, 'thangthuynga@gmail.com', '$2y$10$RnONjAMV5es/Tcjuk/mvleYMrPZqiAkdA0mJ7ANOPq11ctKH4cWtW', NULL, NULL, NULL, '2022-05-23 04:20:37', NULL, NULL, '2022-05-22 21:20:37', '2022-05-22 21:20:37'),
(127, 'Nguyễn', 'Tú Anh', NULL, NULL, 'nguyentuanhneu2021@gmail.com', '$2y$10$QWdsc3QFkH9obVJySJCAIeOGWP9z.TDDCKgBXspYAfon7o4q.toha', NULL, NULL, NULL, '2022-05-25 03:12:25', NULL, 'riiBlUot4RRTIMSw1rPbURyRvqBJ3iXb2pTOUVwBLoo4N68AikXZjEuPAro2', '2022-05-24 20:12:25', '2022-05-24 20:12:25'),
(128, 'Nguyễn', 'Khánh', NULL, NULL, 'khanhuet1997@gmail.com', '$2y$10$zsd/zJ6Nrb4Lni4UnSQVR..OFagxflLAg7ZmfI0oPRPYMTspQ25U2', NULL, NULL, NULL, '2022-05-25 04:07:44', NULL, NULL, '2022-05-24 21:07:44', '2022-05-24 21:07:44'),
(129, 'Myan', 'Trần', NULL, NULL, 'tranthiminhhang01022008@gmail.com', '$2y$10$rd5jD0nmm9ZhyHSeH1003u.eQrbgmhbeYKzHPEP8roKnSG.1RIwFS', NULL, NULL, NULL, '2022-06-01 07:45:44', NULL, NULL, '2022-06-01 00:45:44', '2022-06-01 00:45:44'),
(130, 'Lê', 'Đăng', NULL, NULL, 'dangdolce00@gmail.com', '$2y$10$lVHITy0joxubZVJPO6A/EO.d/X.BuiPfVezqdQkpSAyGjdxjVu8VW', NULL, NULL, NULL, '2022-06-01 10:32:31', NULL, NULL, '2022-06-01 03:32:31', '2022-06-01 03:32:31'),
(131, 'Nguyễn Nhật', 'Hào', NULL, NULL, 'nhathao189203@gmail.com', '$2y$10$wPwAseyIEzKQPntOuJMtUuijqkPaNykF5FwbzIKM4vrfZrMO4fRnW', NULL, NULL, NULL, '2022-06-04 09:09:59', NULL, NULL, '2022-06-04 02:09:59', '2022-06-04 02:09:59'),
(132, 'Trần Thị Hoài', 'Nhi', NULL, NULL, 'tranthihoainhi2311@gmail.com', '$2y$10$Qq0skhipQTxO3TlmWU80Z.Gjbk.v8BKG78RdmOeVQ/EqeT45KhYZ2', NULL, NULL, NULL, '2022-06-05 06:38:12', NULL, NULL, '2022-06-04 23:38:12', '2022-06-04 23:38:12'),
(133, 'Kiều', 'Dung', NULL, NULL, 'kieudungthcs@yahoo.com', '$2y$10$r9vceApKuXadliw1.czoAeM6eTcD5XWqCoDgnHlZmcPk3hIXWevRG', NULL, NULL, NULL, '2022-06-05 15:18:51', NULL, NULL, '2022-06-05 08:18:51', '2022-06-05 08:18:51'),
(134, 'Ngọc', 'Lương', NULL, NULL, 'ngocluongyuyu1507@gmail.com', '$2y$10$0zpCDUYc8rAGYDSPmb19PORo7nlbguVnb6iqzYAfYM3NiXZ0DBPAS', NULL, NULL, NULL, '2022-06-05 23:51:03', NULL, NULL, '2022-06-05 16:51:03', '2022-06-05 16:51:03'),
(135, 'Kiều', 'Ngọc Anh', NULL, NULL, 'kieungocanh5603@gmail.com', '$2y$10$jelElC53CTS7ootTN1pcYe3oy5fcLnuse3uvoBct0OozQoVqQ02hy', NULL, NULL, NULL, '2022-06-13 02:40:48', NULL, NULL, '2022-06-12 19:40:48', '2022-06-12 19:40:48'),
(136, 'Nguyễn thị', 'Ly na', NULL, NULL, 'bena02108386@gmail.com', '$2y$10$zsZz3peBt9HuXlrGIHff9uqZeS6FfnvtCTmxWwIe.yVWUaPKZsI8K', NULL, NULL, NULL, '2022-06-14 04:22:31', NULL, NULL, '2022-06-13 21:22:31', '2022-06-13 21:22:31'),
(137, 'Thanh', 'Trường', NULL, NULL, 'phanthanhtruong25042006@gmail.com', '$2y$10$f/GrbMVu9jFA.pkfg.zPrOiLTMLX75dBm60kA7ruiwvAoHXIKvjJa', NULL, NULL, NULL, '2022-06-14 04:31:12', NULL, NULL, '2022-06-13 21:31:12', '2022-06-13 21:31:12'),
(138, 'Nguyễn Thị', 'Bình', NULL, NULL, 'nguyenthiban.160382@gmail.com', '$2y$10$ITew9jv53iPTutzUgIbSCOQtTMLb5X1bDUjWCZ7ijIgh5BMu8aF82', NULL, NULL, NULL, '2022-06-16 06:35:02', NULL, NULL, '2022-06-15 23:35:02', '2022-06-15 23:35:02'),
(139, 'Phạm', 'Văn nhân', NULL, NULL, 'vannhan5417@gmail.com', '$2y$10$brHK8XUMgNgH8GHxHS2LTuewoiq0vUPRXWZp3H4k.Vcvn9EqjHVd2', NULL, NULL, NULL, '2022-06-18 16:20:27', NULL, NULL, '2022-06-18 09:20:27', '2022-06-18 09:20:27'),
(140, 'Mít', 'Nie', NULL, NULL, 'mitmit28072004@gmail.com', '$2y$10$5xdm7R2d5DtOWq4ONGOSEuBq8OKq6xHAeik3m5LcMIWBMk2XIHaU6', NULL, NULL, NULL, '2022-06-21 10:56:45', NULL, NULL, '2022-06-21 03:56:45', '2022-06-21 03:56:45'),
(141, 'Đỗ', 'Phương Anh', NULL, NULL, 'Dophuonganhtn02@gmail.com', '$2y$10$5OZiLGvm.rkQou4zNChCUuThrUYOZSVFSfpQPc2ah0tYeZhRSurfy', NULL, NULL, NULL, '2022-06-22 20:15:53', NULL, 'cVND96jy3TsCgpLi8n762GVgxBaNgUpU3NfztBoC6dz14Rt7aJguqhuSRAS8', '2022-06-22 13:15:53', '2022-06-22 13:15:53'),
(142, 'Nguyễn', 'Lâm Anh', NULL, NULL, 'ladzai154@gmail.com', '$2y$10$L6JyrQspkAwSLfIO2QmgGuoL/zkC6KY6JRVoLhoEoWpPrpmGH3gWO', NULL, NULL, NULL, '2022-06-28 13:38:38', NULL, NULL, '2022-06-28 06:38:38', '2022-06-28 06:38:38'),
(143, 'Vũ Đông', 'Dương', NULL, NULL, '20a45010084@students.hou.edu.vn', '$2y$10$2MOxCyuPppOFtRxQ0Kin9u.AyMa8fdV.dMbJn1U6KeU7J33WJJ8ty', NULL, NULL, NULL, '2022-06-28 13:54:01', NULL, NULL, '2022-06-28 06:54:01', '2022-06-28 06:54:01'),
(144, 'Lương', 'Đức Thành', NULL, NULL, 'thanh4s.com@gmail.com', '$2y$10$QN4k0WexWx1DoaWRKYJGU.hsXFeXRGlW1NXDd9OOYx5v2a9qJ1IO6', NULL, NULL, NULL, '2022-06-28 13:56:51', NULL, NULL, '2022-06-28 06:56:51', '2022-06-28 06:56:51'),
(145, 'Nguyễn', 'Duy Khánh', NULL, NULL, 'nguyenkhanh123157@gmail.com', '$2y$10$whR2oTHU5cUVI2Si7p/VnODO8YXhBlgJcD8qg4apcR957h37wei1q', NULL, NULL, NULL, '2022-06-28 13:56:57', NULL, NULL, '2022-06-28 06:56:57', '2022-06-28 06:56:57'),
(146, 'Hà', 'Kiều Linh', NULL, NULL, 'llunh773@gmail.com', '$2y$10$KHNLwJqNFvgd2vxKsZ0GvejxQBk5bMumTkQLHcwqm1yR0ZTMM.wyS', NULL, NULL, NULL, '2022-07-01 04:22:30', NULL, NULL, '2022-06-30 21:22:30', '2022-06-30 21:22:30'),
(147, 'Thế', 'Ba', NULL, NULL, 'babanh3388@gmail.com', '$2y$10$aTVk2y6i6xI1G3cQhAU9A.mT3LqEwzThGuLmNBrBqqtTBPry0GTYW', NULL, NULL, NULL, '2022-07-01 19:39:21', NULL, NULL, '2022-07-01 12:39:21', '2022-07-01 12:39:21'),
(148, 'Đặng Hồng', 'Sơn', NULL, NULL, 'sonndtb1@gmail.com', '$2y$10$CIGmj82ryjr1DSFL231Mjum4owUN5RMH58YdZifz1JY.fLGBNx0QG', NULL, NULL, NULL, '2022-07-04 12:30:40', NULL, NULL, '2022-07-04 05:30:40', '2022-07-04 05:30:40'),
(149, 'Phạm', 'Huyền My', NULL, NULL, 'hieupi17112k@gmail.com', '$2y$10$drXpwbIW5cp1jZnSJh4Fc.CWW8CSiHKkxiGuu0GnWZpm02pM82K02', NULL, NULL, NULL, '2022-07-05 11:32:10', NULL, 'Jx1y4FSG7zd7DCem6kGmoXOXVXZmuPoX83h182wAmyBJT7y1XySVVJkF40Um', '2022-07-05 04:32:10', '2022-07-05 04:32:10'),
(150, 'Vũ', 'Kim Anh', NULL, NULL, 'Minhngocpham1504@gmail.com', '$2y$10$xxnwq6OzInoU2wQ5ghRAA.qYJebk3ax.FxHq6lxS5/oQFyY0e2b3i', NULL, NULL, NULL, '2022-07-10 09:30:58', NULL, NULL, '2022-07-10 02:30:58', '2022-07-10 02:30:58'),
(151, 'Đào', 'Anh Linh', NULL, NULL, 'linhlinhkao96@gmail.com', '$2y$10$Mk0nN1VH6693kgdDrI6UH.EWGK1JAwyAYftqEtuWoXRYlHcsYlOhq', NULL, NULL, NULL, '2022-07-10 09:31:39', NULL, NULL, '2022-07-10 02:31:39', '2022-07-10 02:31:39'),
(152, 'Hà', 'Thu Phượng', NULL, NULL, 'ttu33508@gmail.com', '$2y$10$Ha0C4KUm7orda9KgRm9DjuS3PIqnBGQN0Ij322YAns2U1/Kpmqk5m', NULL, NULL, NULL, '2022-07-13 06:27:18', NULL, NULL, '2022-07-12 23:27:18', '2022-07-12 23:27:18'),
(153, 'Trịnh', 'Viết Thiên', NULL, NULL, 'trinhthien25111@gmail.com', '$2y$10$Z/DfYbhGqghgLUEI0PAxWexe4K67gUI6OTf9JskMkP39dbE3FC1NC', NULL, NULL, NULL, '2022-07-27 02:37:40', NULL, NULL, '2022-07-26 19:37:40', '2022-07-26 19:37:40'),
(154, 'Lê Sơn', 'Tùng', NULL, NULL, 'sontungstudio.pro@gmail.com', '$2y$10$po05wU.A0Ga78i4aJBpx7OBTV7LSuIh4YNqpqimuxQ2KfaKwBut16', NULL, NULL, NULL, '2022-07-30 08:20:51', NULL, NULL, '2022-07-30 01:20:51', '2022-07-30 01:20:51'),
(155, 'phạm', 'quỳnh anh', NULL, NULL, 'dominhhieu07122001@gmail.com', '$2y$10$u5GSAeeIuHNPYm/vW4sc2O5zABwGUbQt5nT38QWaokhn5Cv2kZ04q', NULL, NULL, NULL, '2022-07-31 05:55:01', NULL, NULL, '2022-07-30 22:55:01', '2022-07-30 22:55:01'),
(156, 'Trần', 'Quang Lộc', NULL, NULL, 'tranloc0110loc@gmail.com', '$2y$10$v877s64LXXhHhE7up9EhX.Bi8.nGP0kQeVu6WrJ4t9d1JYYtwkqUm', NULL, NULL, NULL, '2022-08-03 10:18:06', NULL, NULL, '2022-08-03 03:18:05', '2022-08-03 03:18:06'),
(157, 'Mr Giang', 'GDCN Vhomes Thanh Hoá', NULL, NULL, 'giangnt.tpkdvhomes6@gmai.com', '$2y$10$R6JNu1juB7s5klpW65/7OOtbQXcAoldrXmSx1i6Z1M3Gf.yMN3mqm', NULL, NULL, NULL, '2022-08-09 04:33:21', NULL, NULL, '2022-08-08 21:33:21', '2022-08-08 21:33:21'),
(158, 'Đinh Thị', 'Gia Tổng', NULL, NULL, 'Kime150623@gmail.com', '$2y$10$Bd3baBPbgdJ9f5Rt882o/e1bRQ/vkRn1v7XFQE9jbXMsm5OsSKXG6', NULL, NULL, NULL, '2022-08-16 06:23:32', NULL, NULL, '2022-08-15 23:23:32', '2022-08-15 23:23:32'),
(159, 'Võ', 'Thành Đạt', NULL, NULL, 'vodat7976@gmail.com', '$2y$10$emDiHVbVYL9pmxar.EK4o.8AGRvALLAxNJpJdeve9/fdn3HPLnzES', NULL, NULL, NULL, '2022-08-21 05:36:24', NULL, NULL, '2022-08-20 22:36:24', '2022-08-20 22:36:24'),
(160, 'Lương', 'Hiếu', NULL, NULL, 'luonghieu7590@gmail.com', '$2y$10$eBoW39u99Z43m5aG2w3oWuo9AksilU6hx75JKkrxn634OOiDJfP4m', NULL, NULL, NULL, '2022-08-21 06:52:41', NULL, 'D17JhI9ibaFH2qsn2UD71FBBOZlXnQYPP5TLKVo7cMWiuM4ALZjM9hv3e0Ip', '2022-08-20 23:52:41', '2022-08-20 23:52:41'),
(161, 'Đỗ Anh', 'Tuấn', NULL, NULL, 'anhtuanshopone@gmail.com', '$2y$10$za61ETFNaaGkHfp.7UGzTu90fk5awnIioNBBmfgaPaPHWlwu632sG', NULL, NULL, NULL, '2022-09-07 17:54:20', NULL, NULL, '2022-09-07 10:54:20', '2022-09-07 10:54:20'),
(162, 'Trần', 'Hiệu', NULL, NULL, 'hieutran.092001@gmail.com', '$2y$10$Lfp8vS1e/3nyxeieDyKGbeYsEIOubJSLzdlxeV0zw6SmhnF15bN3i', NULL, NULL, NULL, '2022-09-11 15:55:14', NULL, NULL, '2022-09-11 08:55:14', '2022-09-11 08:55:14');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `member_activity_logs`
--

CREATE TABLE `member_activity_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `action` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip_address` varchar(39) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `member_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `member_password_resets`
--

CREATE TABLE `member_password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `member_password_resets`
--

INSERT INTO `member_password_resets` (`email`, `token`, `created_at`) VALUES
('buithimyhong196@gmail.com', '$2y$10$ojBsqrPqHBDBXvTWBlG1nenCyO/ImYjO7YuNw8iD3eJkyF/BzRGYy', '2021-12-04 21:59:29'),
('dinhvanvu175@gmail.com', '$2y$10$9eXPpYIhe/A40KJ6dFQeXunv4VZDmPJqKT1hJfat5gvh52IchqAT6', '2022-01-03 03:29:40'),
('congthangh3tauto@gmail.com', '$2y$10$8E3CTma1wdDlvZBPa/E3R.gCg98eqWrDDLRWQVSxqk0GbinYqoNK.', '2022-01-14 19:06:53'),
('PhuNguyenH3Tauto@gmail.com', '$2y$10$CD..ypBsdbuFEsYTtq3WiORjAKM9cvVsB/9bhG3xf45GtmeufBd5S', '2022-01-21 19:26:23'),
('thanhhuyenkt0710@gmail.com', '$2y$10$JdP8SLlhk7LnomhV3r/j2eNXwdst.rccep734meKGY30piL3nPnZK', '2022-04-01 04:50:17'),
('luonggaming54@gmail.com', '$2y$10$XzUt/x3hhngpF7c81voGXOJwefc2o7XsevuumjKYlBovGzAcIZRh2', '2022-04-26 07:47:27'),
('bontomboytiktok@gmail.com', '$2y$10$XSawRYjDJm5UA9p4rIDcqOhrmouLsk.IwlEhtYotYYloQMshDtD4u', '2022-04-27 06:27:33'),
('kienvi202@gmail.com', '$2y$10$rKAkWS1wx0aHFAd/SjYpoOhmDHS9FfztGPqanKYSpbcKqCcwlodg2', '2022-05-04 23:40:20'),
('babanh3388@gmail.com', '$2y$10$jfKDDnYC4gpfkSQE0kG77OJbur04qANRnLDP1xMor3CVL1t0ZGIDi', '2022-07-01 22:21:03'),
('luonghieu7590@gmail.com', '$2y$10$TgbiC1xfH8HdnQ4O/AO8t.IQXzKhiWCkFo7Gz3eJf8aB.rfb.Ifr.', '2022-08-21 00:17:06');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menus`
--

INSERT INTO `menus` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Main menu', 'main-menu', 'published', '2021-09-07 06:00:54', '2021-09-07 06:00:54');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menu_locations`
--

CREATE TABLE `menu_locations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED NOT NULL,
  `location` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menu_locations`
--

INSERT INTO `menu_locations` (`id`, `menu_id`, `location`, `created_at`, `updated_at`) VALUES
(1, 1, 'main-menu-home-page', '2021-09-07 06:03:34', '2021-09-07 06:03:34');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `menu_nodes`
--

CREATE TABLE `menu_nodes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `reference_id` int(10) UNSIGNED DEFAULT NULL,
  `reference_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_font` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `title` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `css_class` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `has_child` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `menu_nodes`
--

INSERT INTO `menu_nodes` (`id`, `menu_id`, `parent_id`, `reference_id`, `reference_type`, `url`, `icon_font`, `position`, `title`, `css_class`, `target`, `has_child`, `created_at`, `updated_at`) VALUES
(1, 1, 0, 0, NULL, '/', '', 0, 'Home', '#slider', '_self', 0, '2021-09-07 06:03:34', '2021-09-07 06:03:34'),
(2, 1, 0, 0, NULL, '/', '', 1, 'About', '#section-about', '_self', 0, '2021-09-07 06:03:34', '2021-09-07 06:03:34'),
(3, 1, 0, 0, NULL, '/', '', 2, 'Connect', '#section-connect', '_self', 0, '2021-09-07 06:03:34', '2021-09-07 06:03:34'),
(4, 1, 0, 0, NULL, '/', '', 3, 'Profile', '#section-profile', '_self', 0, '2021-09-07 06:03:34', '2021-09-07 06:03:34'),
(5, 1, 0, 0, NULL, '/', '', 4, 'Work', '#section-works', '_self', 0, '2021-09-07 06:03:34', '2021-09-07 06:03:34'),
(6, 1, 0, 0, NULL, '/', '', 5, 'Contact', '#section-contact', '_self', 0, '2021-09-07 06:03:34', '2021-09-07 06:03:34');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `meta_boxes`
--

CREATE TABLE `meta_boxes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_id` int(10) UNSIGNED NOT NULL,
  `reference_type` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2013_04_09_032329_create_base_tables', 1),
(2, '2013_04_09_062329_create_revisions_table', 1),
(3, '2014_10_12_000000_create_users_table', 1),
(4, '2014_10_12_100000_create_password_resets_table', 1),
(5, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(6, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(7, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(8, '2016_06_01_000004_create_oauth_clients_table', 1),
(9, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(10, '2016_06_10_230148_create_acl_tables', 1),
(11, '2016_06_14_230857_create_menus_table', 1),
(12, '2016_06_28_221418_create_pages_table', 1),
(13, '2016_10_05_074239_create_setting_table', 1),
(14, '2016_11_28_032840_create_dashboard_widget_tables', 1),
(15, '2016_12_16_084601_create_widgets_table', 1),
(16, '2017_05_09_070343_create_media_tables', 1),
(17, '2017_11_03_070450_create_slug_table', 1),
(18, '2019_01_05_053554_create_jobs_table', 1),
(19, '2019_08_19_000000_create_failed_jobs_table', 1),
(20, '2021_08_16_031544_product_create_product_table', 1),
(21, '2021_08_17_031936_portfolio_create_portfolio_table', 1),
(22, '2016_06_17_091537_create_contacts_table', 4),
(27, '2021_07_26_044337_social_create_social_table', 5),
(28, '2021_09_15_164643_social_theme_create_social_theme_table', 6),
(29, '2021_09_15_093024_icon_create_icon_table', 7),
(30, '2017_10_04_140938_create_member_table', 8),
(31, '2020_10_18_134839_fix_member_activity_logs_table', 8),
(32, '2021_07_26_044341_account_create_account_table', 9),
(33, '2016_10_03_032336_create_languages_table', 10),
(34, '2021_10_11_111230_introduction_create_introduction_table', 11),
(35, '2021_10_11_120242_section_create_section_table', 12),
(36, '2021_10_13_101408_product_card_create_product_card_table', 13),
(37, '2021_10_13_164528_question_create_question_table', 14),
(38, '2021_10_25_193433_order_create_order_table', 15),
(39, '2021_12_19_161819_review_create_review_table', 16);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'cod',
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `name`, `email`, `phone`, `address`, `payment_method`, `note`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Hoàng Văn Kiên', 'hoangkien151092@gmail.com', '0985108032', 'Thái Nguyên', 'cod', 'a', 'published', '2021-10-26 04:08:47', '2021-10-26 04:08:47'),
(3, 'Facebook', 'Bigdaddybeta07@gmail.com', '0912238975', 'fdf', 'cod', 'fdasds', 'draft', '2021-10-26 07:55:50', '2021-10-26 08:32:32'),
(4, 'Hoàng Văn Kiên', 'hoangkien151092@gmail.com', '0985108032', 'Thái Nguyên', 'cod', 'Thêm nhiều trân châu đen', 'published', '2021-10-26 09:26:29', '2021-10-26 09:26:29'),
(5, 'Hoàng Văn Kiên', 'hoangkien151092@gmail.com', '0985108032', 'Thái Nguyên', 'cod', '123', 'published', '2021-10-26 09:27:41', '2021-10-26 09:27:41'),
(6, 'nguyen minh', 'ngminh@gmail.com', '0396854477', '87 tan thanh', 'cod', NULL, 'published', '2021-12-30 20:31:41', '2021-12-30 20:31:41'),
(7, 'Hoàng Minh Long', 'pazenbali@gmail.com', '096619914', '27 Trần Hưng Đạo, quận 1', 'cod', NULL, 'published', '2022-01-01 02:30:22', '2022-01-01 02:30:22');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_products`
--

CREATE TABLE `order_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `qty` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `order_products`
--

INSERT INTO `order_products` (`id`, `product_id`, `order_id`, `qty`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 4, '2021-10-26 04:08:47', '2021-10-26 04:08:47'),
(2, 15, 2, 1, '2021-10-26 04:08:47', '2021-10-26 04:08:47'),
(3, 2, 3, 1, '2021-10-26 07:55:51', '2021-10-26 07:55:51'),
(4, 1, 4, 4, '2021-10-26 09:26:29', '2021-10-26 09:26:29'),
(5, 15, 4, 1, '2021-10-26 09:26:29', '2021-10-26 09:26:29'),
(6, 1, 5, 1, '2021-10-26 09:27:41', '2021-10-26 09:27:41'),
(7, 15, 5, 1, '2021-10-26 09:27:41', '2021-10-26 09:27:41'),
(8, 7, 6, 1, '2021-12-30 20:31:41', '2021-12-30 20:31:41'),
(9, 2, 7, 1, '2022-01-01 02:30:23', '2022-01-01 02:30:23');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint(4) NOT NULL DEFAULT 0,
  `description` varchar(400) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `portfolios`
--

CREATE TABLE `portfolios` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_wide` tinyint(1) NOT NULL DEFAULT 0,
  `order` tinyint(4) NOT NULL DEFAULT 0,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_color` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description_color` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `price_color` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `name_color`, `description`, `description_color`, `price`, `price_color`, `color`, `image`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Màu Đen', '#f2f2f2', '<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', '#d6acf2', 150000, '#f2f2f2', '#68328c', 'shop-card/9-1.png', 'published', '2021-09-07 05:49:55', '2022-03-01 01:09:31'),
(11, 'Màu Trắng', NULL, '<h1>&nbsp;</h1>\r\n\r\n<p>&nbsp;</p>', NULL, NULL, NULL, NULL, 'shop-card/97.png', 'published', '2021-12-20 08:06:41', '2022-03-01 01:09:44'),
(12, 'Màu Hồng', NULL, '<h1>&nbsp;</h1>\r\n\r\n<p>&nbsp;</p>', NULL, NULL, NULL, NULL, '9-1.png', 'published', '2021-12-20 20:21:05', '2022-02-26 02:08:33'),
(14, 'ĐEN K TÊN', NULL, '<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', NULL, NULL, NULL, NULL, 'png-1.png', 'published', '2022-03-01 01:10:25', '2022-03-01 01:10:25'),
(15, 'TRẮNG K TÊN', NULL, '<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', NULL, NULL, NULL, NULL, 'png1.png', 'published', '2022-03-01 01:10:48', '2022-03-01 01:10:48');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_cards`
--

CREATE TABLE `product_cards` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `bio` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `star` int(11) NOT NULL DEFAULT 0,
  `price` int(11) NOT NULL DEFAULT 0,
  `old_price` int(11) DEFAULT 0,
  `image1` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image2` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image3` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image4` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image5` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_card` tinyint(1) DEFAULT 1,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `product_cards`
--

INSERT INTO `product_cards` (`id`, `name`, `description`, `bio`, `star`, `price`, `old_price`, `image1`, `image2`, `image3`, `image4`, `image5`, `link`, `is_card`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Card Visit Thông Minh Gotap - White Classic', 'Trước đây mỗi lần đối tác, bạn bè của bạn xin liên lạc thông tin, bạn phải loay hoay đọc Sdt, tìm Facebook, Zalo, Instagram ... gấp rất nhiều lần mà nhiều lúc không tìm được. Thấu hiểu được như cầu đó, Gotap mang đến cho khách hàng 1 sản phẩm nghệ thuật cao cấp, đẳng cấp mà vô cùng tiện lợi giúp chia sẻ thông tin của bạn 1 cách nhanh chóng và tiết kiệm chi phí.\r\n\r\nVới Card Visit Thông Minh Gotap , việc chia sẻ liên lạc thông tin cho đối tác trở nên nhanh chóng và dễ dàng chỉ bằng  “1 LẦN  CHẠM” hoặc “Quét QR CODE” chưa đến 2 giây.\r\nNgoài ra, bạn sở hữu 1 chiếc Card Visit Thông Minh Gotap, hãy tạo cho bạn sự khác biệt trước đám đông, giúp nâng tầm đẳng cấp của bạn.', 'Card Visit Thông Minh Gotap phiên bản White Classic. Được thiết kế đơn giản nhưng không kém phần sang trọng và lịch lãm, màu trắng biểu tượng của sự trong trắng, tinh khiết, thánh thiện và trinh nguyên. Màu trắng còn có ý nghĩa sự đơn giản và an toàn.', 694, 199000, 250000, 'icon-pink-2/icon-social-den/kho-sticker-shop/shop-card/mc-trang-1-k-ten.jpg', 'shop-card/credit-card-mockup.jpg', NULL, NULL, NULL, 'https://shopee.vn/Card-Visit-Th%C3%B4ng-Minh-4.0-GOTAP-Chia-S%E1%BA%BB-Th%C3%B4ng-Tin-Ch%E1%BB%89-V%E1%BB%9Bi-1-Ch%E1%BA%A1m.-i.570344032.10069749328', 1, 'published', '2021-10-13 03:36:45', '2022-09-09 17:12:29'),
(2, 'Card Visit Thông Minh Gotap - Black Classic', 'Trước đây mỗi lần đối tác, bạn bè của bạn xin liên lạc thông tin, bạn phải loay hoay đọc Sdt, tìm Facebook, Zalo, Instagram ... gấp rất nhiều lần mà nhiều lúc không tìm được. Thấu hiểu được như cầu đó, Gotap mang đến cho khách hàng 1 sản phẩm nghệ thuật cao cấp, đẳng cấp mà vô cùng tiện lợi giúp chia sẻ thông tin của bạn 1 cách nhanh chóng và tiết kiệm chi phí.\r\n\r\nVới Card Visit Thông Minh Gotap , việc chia sẻ liên lạc thông tin cho đối tác trở nên nhanh chóng và dễ dàng chỉ bằng  “1 LẦN  CHẠM” hoặc “Quét QR CODE” chưa đến 2 giây.\r\nNgoài ra, bạn sở hữu 1 chiếc Card Visit Thông Minh Gotap, hãy tạo cho bạn sự khác biệt trước đám đông, giúp nâng tầm đẳng cấp của bạn.', '- Card Visit Thông Minh Gotap phiên bản Black Card. Thiết kế đơn giản nhưng không kém phần sang trọng, lịch thiệp và đầy bí ẩn (lỗ đen vũ trụ). Được lấy cảm hứng từ chiếc \"Thẻ Đen\" quyền lực của các ngân hàng. Đây cũng là lý do tại sao các loại xe cao cấp (Mercedes, BMW, AUDI...) đều có màu đen.', 775, 199000, 250000, 'icon-pink-2/icon-social-den/kho-sticker-shop/shop-card/den-1-k-ten.jpg', 'shop-card/13.png', 'shop-card/11.png', NULL, NULL, 'https://shopee.vn/Card-Visit-Th%C3%B4ng-Minh-4.0-GOTAP-Chia-S%E1%BA%BB-Th%C3%B4ng-Tin-Ch%E1%BB%89-V%E1%BB%9Bi-1-Ch%E1%BA%A1m.-i.570344032.10069749328', 1, 'published', '2021-10-13 04:43:32', '2022-09-10 15:02:08'),
(3, 'Card Visit Thông Minh Gotap - Black Pink', 'Trước đây mỗi lần đối tác, bạn bè của bạn xin liên lạc thông tin, bạn phải loay hoay đọc Sdt, tìm Facebook, Zalo, Instagram ... gấp rất nhiều lần mà nhiều lúc không tìm được. Thấu hiểu được như cầu đó, Gotap mang đến cho khách hàng 1 sản phẩm nghệ thuật cao cấp, đẳng cấp mà vô cùng tiện lợi giúp chia sẻ thông tin của bạn 1 cách nhanh chóng và tiết kiệm chi phí.\r\n\r\nVới Card Visit Thông Minh Gotap, việc chia sẻ liên lạc thông tin cho đối tác trở nên nhanh chóng và dễ dàng chỉ bằng  “1 LẦN  CHẠM” hoặc “Quét QR CODE” chưa đến 2 giây.\r\nNgoài ra, bạn sở hữu 1 chiếc Card Visit Thông Minh Gotap, hãy tạo cho bạn sự khác biệt trước đám đông, giúp nâng tầm đẳng cấp của bạn.', '- Card Visit Thông Minh Gotap phiên bản Black Pink. Màu hồng tượng trưng cho tình yêu và cuộc sống, nó dành cho những cô gái yêu thích sự lãng mạn và ngọt ngào pha chút ngây thơ. Ngoài ra vì rất thích các cô gái của nhóm nhạc Black Pink Hàn Quốc nên mình đã tạo ra sản phẩm này ^^', 780, 199000, 250000, 'icon-pink-2/icon-social-den/kho-sticker-shop/shop-card/mc-hong-11.jpg', 'shop-card/33.jpg', NULL, NULL, NULL, 'https://shopee.vn/Card-Visit-Th%C3%B4ng-Minh-4.0-GOTAP-Chia-S%E1%BA%BB-Th%C3%B4ng-Tin-Ch%E1%BB%89-V%E1%BB%9Bi-1-Ch%E1%BA%A1m.-i.570344032.10069749328', 1, 'published', '2021-10-13 07:57:27', '2022-09-10 09:02:09'),
(4, 'Card Visit Thông Minh Gotap - Bamboo Wooden', 'Trước đây mỗi lần đối tác, bạn bè của bạn xin liên lạc thông tin, bạn phải loay hoay đọc Sdt, tìm Facebook, Zalo, Instagram ... gấp rất nhiều lần mà nhiều lúc không tìm được. Thấu hiểu được như cầu đó, Gotap mang đến cho khách hàng 1 sản phẩm nghệ thuật cao cấp, đẳng cấp mà vô cùng tiện lợi giúp chia sẻ thông tin của bạn 1 cách nhanh chóng và tiết kiệm chi phí.\r\n\r\nVới Card Visit Thông Minh Gotap, việc chia sẻ liên lạc thông tin cho đối tác trở nên nhanh chóng và dễ dàng chỉ bằng  “1 LẦN  CHẠM” hoặc “Quét QR CODE” chưa đến 2 giây.\r\nNgoài ra, bạn sở hữu 1 chiếc Card Visit Thông Minh Gotap, hãy tạo cho bạn sự khác biệt trước đám đông, giúp nâng tầm đẳng cấp của bạn.', '- Card Visit Thông Minh Gotap phiên bản Bamboo Wooden. Thiết kế đơn giản nhưng không kém phần sang trọng và nổi bật giống hệt 1 tấm thẻ Tre. Tre còn có ý nghĩa \"thu tài hút lộc\" trong phong thủy, xua đuổi ma quỷ, giúp đem lại sự may mắn cho gia chủ.', 557, 150000, 200000, 'icon-pink-2/icon-social-den/kho-sticker-shop/shop-card/mc-go-1-k-ten.jpg', 'shop-card/4-4.jpg', NULL, NULL, NULL, 'https://shopee.vn/Card-Visit-Th%C3%B4ng-Minh-4.0-GOTAP-Chia-S%E1%BA%BB-Th%C3%B4ng-Tin-Ch%E1%BB%89-V%E1%BB%9Bi-1-Ch%E1%BA%A1m.-i.570344032.10069749328', 1, 'published', '2021-10-13 07:59:57', '2022-09-10 18:02:09'),
(5, 'Card Visit Thông Minh Gotap - GOLD', 'Trước đây mỗi lần đối tác, bạn bè của bạn xin liên lạc thông tin, bạn phải loay hoay đọc Sdt, tìm Facebook, Zalo, Instagram ... gấp rất nhiều lần mà nhiều lúc không tìm được. Thấu hiểu được như cầu đó, Gotap mang đến cho khách hàng 1 sản phẩm nghệ thuật cao cấp, đẳng cấp mà vô cùng tiện lợi giúp chia sẻ thông tin của bạn 1 cách nhanh chóng và tiết kiệm chi phí.\r\n\r\nVới Card Visit Thông Minh Gotap, việc chia sẻ liên lạc thông tin cho đối tác trở nên nhanh chóng và dễ dàng chỉ bằng  “1 LẦN  CHẠM” hoặc “Quét QR CODE” chưa đến 2 giây.\r\nNgoài ra, bạn sở hữu 1 chiếc Card Visit Thông Minh Gotap, hãy tạo cho bạn sự khác biệt trước đám đông, giúp nâng tầm đẳng cấp của bạn.', 'Card Visit Thông Minh Gotap phiên bản GOLD. Thiết kế sang trọng, lịch lãm tinh tế được lấy cảm hứng từ những chiếc thẻ VIP trong các nhà hàng, quán bar, karaoke dành những khách hàng giàu có, sang trọng.', 1248, 150000, 200000, 'vip-1.jpg', 'shop-card/22.jpg', NULL, NULL, NULL, 'https://shopee.vnhttps://shopee.vn/Card-Visit-Th%C3%B4ng-Minh-4.0-GOTAP-Chia-S%E1%BA%BB-Th%C3%B4ng-Tin-Ch%E1%BB%89-V%E1%BB%9Bi-1-Ch%E1%BA%A1m.-i.570344032.10069749328', 1, 'published', '2021-10-13 08:01:08', '2022-09-11 11:50:12'),
(6, 'Sticker Thông Minh Gotap - White Classic', 'Cách sử dụng thì vô dùng đơn giản, bạn chỉ việc chạm nhẹ Sticker Thông Minh Gotap vào mặt lưng của điện thoại đối tác, bạn bè là có thể chia sẻ thông tin ngay lập tức.\r\n\r\nTương thích với tất cả các dòng điện thoại Androi, IOS có hỗ trợ NFC phổ biến nhất hiện nay.\r\n\r\n Chỉ cần chạm nhẹ, không cần qua ứng dụng, bạn có thể chia sẻ thông tin của bạn ngay lập tức với bất kì ai bạn muốn.\r\n\r\n An toàn, bảo mật, không yêu cầu cung cấp mật khẩu các trang mạng xã hội.\r\n\r\n Không thu phí dịch vụ hàng tháng, tuổi thọ lên đến 10 năm.\r\n\r\nGây ấn tượng, tạo sự khác biệt với đám đông.', '- Sticker Thông Minh Gotap là 1 sản phẩm vô cùng nhỏ gọn và tiện lợi có mặt trước được in logo Gotap chìm tạo cảm giác có chiều sâu và không bám bẩn, mặt sau được phủ 1 lớp keo 3M, có thể bóc ra dán lên bất kì món đồ nào bạn thích và sử dụng thường xuyên như Điện Thoại, Máy Tính Bảng, Laptop, Aripod... giúp bạn có thể chia sẻ thông tin của mình cho đối tác mọi lúc, mọi nơi vô cùng tiện lợi.', 486, 150000, 200000, 'stick-shop/mc-t3.jpg', 'stick-shop/r1.jpg', NULL, NULL, NULL, 'https://shopee.vn/Sticker-Th%C3%B4ng-Minh-4.0-Card-Visit-Th%C3%B4ng-Minh-4.0-D%E1%BA%A1ng-Mi%E1%BA%BFng-D%C3%A1n-%C4%90i%E1%BB%87n-Tho%E1%BA%A1i-Sticker-GOTAP.-i.570344032.12448185607', 0, 'published', '2021-10-15 02:54:43', '2022-09-10 11:43:23'),
(7, 'Sticker Thông Minh Gotap - Black Classic', '- Sticker Thông Minh Gotap là 1 sản phẩm vô cùng nhỏ gọn và tiện lợi có mặt trước được in logo Gotap chìm tạo cảm giác có chiều sâu và không bám bẩn, mặt sau được phủ 1 lớp keo 3M, có thể bóc ra dán lên bất kì món đồ nào bạn thích và sử dụng thường xuyên như Điện Thoại, Máy Tính Bảng, Laptop, Aripod... giúp bạn có thể chia sẻ thông tin của mình cho đối tác mọi lúc, mọi nơi vô cùng tiện lợi.', 'Cách sử dụng thì vô dùng đơn giản, bạn chỉ việc chạm nhẹ Sticker Thông Minh Gotap vào mặt lưng của điện thoại đối tác, bạn bè là có thể chia sẻ thông tin ngay lập tức. Tương thích với tất cả các dòng điện thoại Androi, IOS có hỗ trợ NFC phổ biến nhất hiện nay. Chỉ cần chạm nhẹ, không cần qua ứng dụng, bạn có thể chia sẻ thông tin của bạn ngay lập tức với bất kì ai bạn muốn. An toàn, bảo mật, không yêu cầu cung cấp mật khẩu các trang mạng xã hội. Không thu phí dịch vụ hàng tháng, tuổi thọ lên đến 10 năm. Gây ấn tượng, tạo sự khác biệt với đám đông.', 532, 150000, 200000, 'stick-shop/11.jpg', 'stick-shop/r4.jpg', NULL, NULL, NULL, 'https://shopee.vn/Sticker-Th%C3%B4ng-Minh-4.0-Card-Visit-Th%C3%B4ng-Minh-4.0-D%E1%BA%A1ng-Mi%E1%BA%BFng-D%C3%A1n-%C4%90i%E1%BB%87n-Tho%E1%BA%A1i-Sticker-GOTAP.-i.570344032.12448185607', 0, 'published', '2021-10-15 02:57:34', '2022-09-10 00:14:13'),
(8, 'Sticker Thông Minh Gotap - Black Pink', '- Sticker Thông Minh Gotap là 1 sản phẩm vô cùng nhỏ gọn và tiện lợi có mặt trước được in logo Gotap chìm tạo cảm giác có chiều sâu và không bám bẩn, mặt sau được phủ 1 lớp keo 3M, có thể bóc ra dán lên bất kì món đồ nào bạn thích và sử dụng thường xuyên như Điện Thoại, Máy Tính Bảng, Laptop, Aripod... giúp bạn có thể chia sẻ thông tin của mình cho đối tác mọi lúc, mọi nơi vô cùng tiện lợi.', 'Cách sử dụng thì vô dùng đơn giản, bạn chỉ việc chạm nhẹ Sticker Thông Minh Gotap vào mặt lưng của điện thoại đối tác, bạn bè là có thể chia sẻ thông tin ngay lập tức. Tương thích với tất cả các dòng điện thoại Androi, IOS có hỗ trợ NFC phổ biến nhất hiện nay. Chỉ cần chạm nhẹ, không cần qua ứng dụng, bạn có thể chia sẻ thông tin của bạn ngay lập tức với bất kì ai bạn muốn. An toàn, bảo mật, không yêu cầu cung cấp mật khẩu các trang mạng xã hội. Không thu phí dịch vụ hàng tháng, tuổi thọ lên đến 10 năm. Gây ấn tượng, tạo sự khác biệt với đám đông.', 549, 189000, 250000, 'stick-shop/hong-2.jpg', 'stick-shop/r3.jpg', NULL, NULL, NULL, 'https://shopee.vn/Sticker-Th%C3%B4ng-Minh-4.0-Card-Visit-Th%C3%B4ng-Minh-4.0-D%E1%BA%A1ng-Mi%E1%BA%BFng-D%C3%A1n-%C4%90i%E1%BB%87n-Tho%E1%BA%A1i-Sticker-GOTAP.-i.570344032.12448185607', 0, 'published', '2021-10-15 03:40:04', '2022-09-10 19:32:09'),
(10, 'Sticker Thông Minh Gotap - Bamboo Wooden', '- Sticker Thông Minh Gotap là 1 sản phẩm vô cùng nhỏ gọn và tiện lợi có mặt trước được in logo Gotap chìm tạo cảm giác có chiều sâu và không bám bẩn, mặt sau được phủ 1 lớp keo 3M, có thể bóc ra dán lên bất kì món đồ nào bạn thích và sử dụng thường xuyên như Điện Thoại, Máy Tính Bảng, Laptop, Aripod... giúp bạn có thể chia sẻ thông tin của mình cho đối tác mọi lúc, mọi nơi vô cùng tiện lợi.\r\nCách sử dụng thì vô dùng đơn giản, bạn chỉ việc chạm nhẹ Sticker Thông Minh Gotap vào mặt lưng của điện thoại đối tác, bạn bè là có thể chia sẻ thông tin ngay lập tức.\r\nTương thích với tất cả các dòng điện thoại Androi, IOS có hỗ trợ NFC phổ biến nhất hiện nay.', NULL, 636, 139000, 200000, 'stick-shop/go-stick.jpg', 'stick-shop/r5.jpg', NULL, NULL, NULL, 'https://shopee.vn/Sticker-Th%C3%B4ng-Minh-4.0-Card-Visit-Th%C3%B4ng-Minh-4.0-D%E1%BA%A1ng-Mi%E1%BA%BFng-D%C3%A1n-%C4%90i%E1%BB%87n-Tho%E1%BA%A1i-Sticker-GOTAP.-i.570344032.12448185607', 0, 'published', '2021-10-15 07:12:58', '2022-09-10 22:28:08'),
(11, 'Sticker Thông Minh Gotap - Green', '- Sticker Thông Minh Gotap là 1 sản phẩm vô cùng nhỏ gọn và tiện lợi có mặt trước được in logo Gotap chìm tạo cảm giác có chiều sâu và không bám bẩn, mặt sau được phủ 1 lớp keo 3M, có thể bóc ra dán lên bất kì món đồ nào bạn thích và sử dụng thường xuyên như Điện Thoại, Máy Tính Bảng, Laptop, Aripod... giúp bạn có thể chia sẻ thông tin của mình cho đối tác mọi lúc, mọi nơi vô cùng tiện lợi.', 'Cách sử dụng thì vô dùng đơn giản, bạn chỉ việc chạm nhẹ Sticker Thông Minh Gotap vào mặt lưng của điện thoại đối tác, bạn bè là có thể chia sẻ thông tin ngay lập tức. Tương thích với tất cả các dòng điện thoại Androi, IOS có hỗ trợ NFC phổ biến nhất hiện nay. Chỉ cần chạm nhẹ, không cần qua ứng dụng, bạn có thể chia sẻ thông tin của bạn ngay lập tức với bất kì ai bạn muốn. An toàn, bảo mật, không yêu cầu cung cấp mật khẩu các trang mạng xã hội. Không thu phí dịch vụ hàng tháng, tuổi thọ lên đến 10 năm. Gây ấn tượng, tạo sự khác biệt với đám đông.', 507, 139000, 200000, 'stick-shop/xanh-chamm.jpg', 'stick-shop/r8.jpg', NULL, NULL, NULL, 'https://shopee.vn/Sticker-Th%C3%B4ng-Minh-4.0-Card-Visit-Th%C3%B4ng-Minh-4.0-D%E1%BA%A1ng-Mi%E1%BA%BFng-D%C3%A1n-%C4%90i%E1%BB%87n-Tho%E1%BA%A1i-Sticker-GOTAP.-i.570344032.12448185607', 0, 'published', '2021-10-15 09:20:33', '2022-09-10 19:51:46'),
(12, 'Sticker Thông Minh Gotap - Rainbow', '- Sticker Thông Minh Gotap là 1 sản phẩm vô cùng nhỏ gọn và tiện lợi có mặt trước được in logo Gotap chìm tạo cảm giác có chiều sâu và không bám bẩn, mặt sau được phủ 1 lớp keo 3M, có thể bóc ra dán lên bất kì món đồ nào bạn thích và sử dụng thường xuyên như Điện Thoại, Máy Tính Bảng, Laptop, Aripod... giúp bạn có thể chia sẻ thông tin của mình cho đối tác mọi lúc, mọi nơi vô cùng tiện lợi.', 'Cách sử dụng thì vô dùng đơn giản, bạn chỉ việc chạm nhẹ Sticker Thông Minh Gotap vào mặt lưng của điện thoại đối tác, bạn bè là có thể chia sẻ thông tin ngay lập tức. Tương thích với tất cả các dòng điện thoại Androi, IOS có hỗ trợ NFC phổ biến nhất hiện nay. Chỉ cần chạm nhẹ, không cần qua ứng dụng, bạn có thể chia sẻ thông tin của bạn ngay lập tức với bất kì ai bạn muốn. An toàn, bảo mật, không yêu cầu cung cấp mật khẩu các trang mạng xã hội. Không thu phí dịch vụ hàng tháng, tuổi thọ lên đến 10 năm. Gây ấn tượng, tạo sự khác biệt với đám đông.', 373, 189000, 250000, 'stick-shop/mockup-cau-vong.jpg', 'stick-shop/r9.jpg', NULL, NULL, NULL, 'https://shopee.vn/Sticker-Th%C3%B4ng-Minh-4.0-Card-Visit-Th%C3%B4ng-Minh-4.0-D%E1%BA%A1ng-Mi%E1%BA%BFng-D%C3%A1n-%C4%90i%E1%BB%87n-Tho%E1%BA%A1i-Sticker-GOTAP.-i.570344032.12448185607', 0, 'published', '2021-10-15 09:23:30', '2022-09-08 10:53:27'),
(13, 'Card Visit Thông Minh Gotap - Green', 'Card Visit Thông Minh Gotap phiên bản Green. Thiết kế đơn giản nhưng không kém phần sang trọng và nổi bật với màu xanh Poli.ce đặc trưng làm cho chiếc thẻ trở nên đầy quyền lực.\r\n\r\nTrước đây mỗi lần đối tác, bạn bè của bạn xin liên lạc thông tin, bạn phải loay hoay đọc Sdt, tìm Facebook, Zalo, Instagram ... gấp rất nhiều lần mà nhiều lúc không tìm được. Thấu hiểu được như cầu đó, Gotap mang đến cho khách hàng 1 sản phẩm nghệ thuật cao cấp, đẳng cấp mà vô cùng tiện lợi giúp chia sẻ thông tin của bạn 1 cách nhanh chóng và tiết kiệm chi phí.\r\n\r\nVới Card Visit Thông Minh Gotap , việc chia sẻ liên lạc thông tin cho đối tác trở nên nhanh chóng và dễ dàng chỉ bằng  “1 LẦN  CHẠM” hoặc “Quét QR CODE” chưa đến 2 giây.\r\nNgoài ra, bạn sở hữu 1 chiếc Card Visit Thông Minh Gotap, hãy tạo cho bạn sự khác biệt trước đám đông, giúp nâng tầm đẳng cấp của bạn.', NULL, 320, 150000, 200000, 'xanh-cham.jpg', 'shop-card/77.jpg', NULL, NULL, NULL, 'https://shopee.vn/Card-Visit-Th%C3%B4ng-Minh-4.0-GOTAP-Chia-S%E1%BA%BB-Th%C3%B4ng-Tin-Ch%E1%BB%89-V%E1%BB%9Bi-1-Ch%E1%BA%A1m.-i.570344032.10069749328', 1, 'published', '2021-10-15 09:30:21', '2022-09-10 18:25:37'),
(14, 'Sticker Thông Minh Gotap - Sakura', '- Sticker Thông Minh Gotap là 1 sản phẩm vô cùng nhỏ gọn và tiện lợi có mặt trước được in logo Gotap chìm tạo cảm giác có chiều sâu và không bám bẩn, mặt sau được phủ 1 lớp keo 3M, có thể bóc ra dán lên bất kì món đồ nào bạn thích và sử dụng thường xuyên như Điện Thoại, Máy Tính Bảng, Laptop, Aripod... giúp bạn có thể chia sẻ thông tin của mình cho đối tác mọi lúc, mọi nơi vô cùng tiện lợi.', 'Cách sử dụng thì vô dùng đơn giản, bạn chỉ việc chạm nhẹ Sticker Thông Minh Gotap vào mặt lưng của điện thoại đối tác, bạn bè là có thể chia sẻ thông tin ngay lập tức. Tương thích với tất cả các dòng điện thoại Androi, IOS có hỗ trợ NFC phổ biến nhất hiện nay. Chỉ cần chạm nhẹ, không cần qua ứng dụng, bạn có thể chia sẻ thông tin của bạn ngay lập tức với bất kì ai bạn muốn. An toàn, bảo mật, không yêu cầu cung cấp mật khẩu các trang mạng xã hội. Không thu phí dịch vụ hàng tháng, tuổi thọ lên đến 10 năm. Gây ấn tượng, tạo sự khác biệt với đám đông.', 477, 149000, 200000, 'stick-shop/mcpink-5.jpg', 'stick-shop/r10.jpg', NULL, NULL, NULL, 'https://shopee.vn/Sticker-Th%C3%B4ng-Minh-4.0-Card-Visit-Th%C3%B4ng-Minh-4.0-D%E1%BA%A1ng-Mi%E1%BA%BFng-D%C3%A1n-%C4%90i%E1%BB%87n-Tho%E1%BA%A1i-Sticker-GOTAP.-i.570344032.12448185607', 0, 'published', '2021-10-15 16:13:54', '2022-09-08 07:56:02'),
(15, 'Card Visit Thông Minh Gotap - CUSTOM, PERSONALIZED', 'Card Visit Thông Minh Gotap - Black, White, Black Pink... CUSTOM, PERSONALIZED là phiên bản Đặc Biệt dành cho những khách hàng, doanh nghiệp, cá nhân... muốn đặt tên riêng, hình ảnh, hay bất cứ thứ gì bạn thích... và cá nhân hóa lên chiếc thẻ của mình. Vì loại thẻ này phải đặt thiết kế và in riêng nên thời gian nhận hàng sẽ từ 1-2 tuần.', 'Trước đây mỗi lần đối tác, bạn bè của bạn xin liên lạc thông tin, bạn phải loay hoay đọc Sdt, tìm Facebook, Zalo, Instagram ... gấp rất nhiều lần mà nhiều lúc không tìm được. Thấu hiểu được như cầu đó, Gotap mang đến cho khách hàng 1 sản phẩm nghệ thuật cao cấp, đẳng cấp mà vô cùng tiện lợi giúp chia sẻ thông tin của bạn 1 cách nhanh chóng và tiết kiệm chi phí.\r\n\r\nVới Card Visit Thông Minh Gotap, việc chia sẻ liên lạc thông tin cho đối tác trở nên nhanh chóng và dễ dàng chỉ bằng  “1 LẦN  CHẠM” hoặc “Quét QR CODE” chưa đến 2 giây.\r\nNgoài ra, bạn sở hữu 1 chiếc Card Visit Thông Minh Gotap, hãy tạo cho bạn sự khác biệt trước đám đông, giúp nâng tầm đẳng cấp của bạn.', 558, 299000, 400000, 'shop-card/3.png', 'shop-card/1.png', 'shop-card/2.png', 'shop-card/10.png', 'shop-card/12.png', 'https://shopee.vn/Card-Visit-Th%C3%B4ng-Minh-4.0-GOTAP-Chia-S%E1%BA%BB-Th%C3%B4ng-Tin-Ch%E1%BB%89-V%E1%BB%9Bi-1-Ch%E1%BA%A1m.-i.570344032.10069749328', 1, 'published', '2021-10-17 05:26:44', '2022-09-11 02:17:48'),
(16, 'Sticker Thông Minh Gotap - CAMO', '- Sticker Thông Minh Gotap là 1 sản phẩm vô cùng nhỏ gọn và tiện lợi có mặt trước được in logo Gotap chìm tạo cảm giác có chiều sâu và không bám bẩn, mặt sau được phủ 1 lớp keo 3M, có thể bóc ra dán lên bất kì món đồ nào bạn thích và sử dụng thường xuyên như Điện Thoại, Máy Tính Bảng, Laptop, Aripod... giúp bạn có thể chia sẻ thông tin của mình cho đối tác mọi lúc, mọi nơi vô cùng tiện lợi.', 'Cách sử dụng thì vô dùng đơn giản, bạn chỉ việc chạm nhẹ Sticker Thông Minh Gotap vào mặt lưng của điện thoại đối tác, bạn bè là có thể chia sẻ thông tin ngay lập tức. Tương thích với tất cả các dòng điện thoại Androi, IOS có hỗ trợ NFC phổ biến nhất hiện nay. Chỉ cần chạm nhẹ, không cần qua ứng dụng, bạn có thể chia sẻ thông tin của bạn ngay lập tức với bất kì ai bạn muốn. An toàn, bảo mật, không yêu cầu cung cấp mật khẩu các trang mạng xã hội. Không thu phí dịch vụ hàng tháng, tuổi thọ lên đến 10 năm. Gây ấn tượng, tạo sự khác biệt với đám đông.', 598, 150000, 200000, 'stick-shop/mockup-stick-1.jpg', 'stick-shop/r7.jpg', NULL, NULL, NULL, 'https://shopee.vnhttps://shopee.vn/Sticker-Th%C3%B4ng-Minh-4.0-Card-Visit-Th%C3%B4ng-Minh-4.0-D%E1%BA%A1ng-Mi%E1%BA%BFng-D%C3%A1n-%C4%90i%E1%BB%87n-Tho%E1%BA%A1i-Sticker-GOTAP.-i.570344032.12448185607', 0, 'published', '2021-11-08 06:57:32', '2022-09-10 11:25:17'),
(17, 'Sticker Thông Minh Gotap - GALAXY', '- Sticker Thông Minh Gotap là 1 sản phẩm vô cùng nhỏ gọn và tiện lợi có mặt trước được in logo Gotap chìm tạo cảm giác có chiều sâu và không bám bẩn, mặt sau được phủ 1 lớp keo 3M, có thể bóc ra dán lên bất kì món đồ nào bạn thích và sử dụng thường xuyên như Điện Thoại, Máy Tính Bảng, Laptop, Aripod... giúp bạn có thể chia sẻ thông tin của mình cho đối tác mọi lúc, mọi nơi vô cùng tiện lợi.', 'Cách sử dụng thì vô dùng đơn giản, bạn chỉ việc chạm nhẹ Sticker Thông Minh Gotap vào mặt lưng của điện thoại đối tác, bạn bè là có thể chia sẻ thông tin ngay lập tức. Tương thích với tất cả các dòng điện thoại Androi, IOS có hỗ trợ NFC phổ biến nhất hiện nay. Chỉ cần chạm nhẹ, không cần qua ứng dụng, bạn có thể chia sẻ thông tin của bạn ngay lập tức với bất kì ai bạn muốn. An toàn, bảo mật, không yêu cầu cung cấp mật khẩu các trang mạng xã hội. Không thu phí dịch vụ hàng tháng, tuổi thọ lên đến 10 năm. Gây ấn tượng, tạo sự khác biệt với đám đông.', 523, 150000, 200000, 'stick-shop/mc11.jpg', 'stick-shop/r12.jpg', NULL, NULL, NULL, 'https://shopee.vn/Sticker-Th%C3%B4ng-Minh-4.0-Card-Visit-Th%C3%B4ng-Minh-4.0-D%E1%BA%A1ng-Mi%E1%BA%BFng-D%C3%A1n-%C4%90i%E1%BB%87n-Tho%E1%BA%A1i-Sticker-GOTAP.-i.570344032.12448185607', 0, 'published', '2021-11-08 06:59:30', '2022-09-10 03:02:08'),
(18, 'Sticker Thông Minh Gotap - CUSTOM', 'Sticker Thông Minh Gotap - Black, White, Black Pink... CUSTOM, PERSONALIZED là phiên bản Đặc Biệt dành cho những khách hàng, doanh nghiệp, cá nhân muốn đặt tên riêng, hình ảnh, hay bất cứ thứ gì bạn thích... và cá nhân hóa lên chiếc thẻ của mình. Vì loại thẻ này phải đặt thiết kế và in riêng nên thời gian nhận hàng sẽ từ 1-2 tuần.', 'Cách sử dụng thì vô dùng đơn giản, bạn chỉ việc chạm nhẹ Sticker Thông Minh Gotap vào mặt lưng của điện thoại đối tác, bạn bè là có thể chia sẻ thông tin ngay lập tức. Tương thích với tất cả các dòng điện thoại Androi, IOS có hỗ trợ NFC phổ biến nhất hiện nay. Chỉ cần chạm nhẹ, không cần qua ứng dụng, bạn có thể chia sẻ thông tin của bạn ngay lập tức với bất kì ai bạn muốn. An toàn, bảo mật, không yêu cầu cung cấp mật khẩu các trang mạng xã hội. Không thu phí dịch vụ hàng tháng, tuổi thọ lên đến 10 năm. Gây ấn tượng, tạo sự khác biệt với đám đông.', 364, 250000, 350000, 'stick-shop/camo-5.jpg', 'stick-shop/mockup-cau-vong.jpg', 'stick-shop/mcpink-5.jpg', 'stick-shop/mc-t3.jpg', 'stick-shop/r3.jpg', 'https://shopee.vn/Sticker-Th%C3%B4ng-Minh-4.0-Card-Visit-Th%C3%B4ng-Minh-4.0-D%E1%BA%A1ng-Mi%E1%BA%BFng-D%C3%A1n-%C4%90i%E1%BB%87n-Tho%E1%BA%A1i-Sticker-GOTAP.-i.570344032.12448185607', 0, 'published', '2021-11-15 21:02:23', '2022-09-11 02:23:05'),
(19, '[ IN TÊN ]- Card Visit Thông Minh 4.O GOTAP Phiên Bản Black.', 'Trước đây mỗi lần đối tác, bạn bè của bạn xin liên lạc thông tin, bạn phải loay hoay đọc Sdt, tìm Facebook, Zalo, Instagram ... gấp rất nhiều lần mà nhiều lúc không tìm được. Thấu hiểu được như cầu đó, Gotap mang đến cho khách hàng 1 sản phẩm nghệ thuật cao cấp, đẳng cấp mà vô cùng tiện lợi giúp chia sẻ thông tin của bạn 1 cách nhanh chóng và tiết kiệm chi phí. \r\nVới Card Visit Thông Minh Gotap , việc chia sẻ liên lạc thông tin cho đối tác trở nên nhanh chóng và dễ dàng chỉ bằng  “1 LẦN  CHẠM” hoặc “Quét QR CODE” chưa đến 2 giây. Ngoài ra, bạn sở hữu 1 chiếc Card Visit Thông Minh Gotap, hãy tạo cho bạn sự khác biệt trước đám đông, giúp nâng tầm đẳng cấp của bạn.', '[IN TÊN, CUSTOM NAME] \r\n[ Các bạn nhắn tin cho shop tên các bạn muốn in nhé, Thời gian chờ 1-2 tuần nha ]\r\n\r\n- Card Visit Thông Minh Gotap phiên bản Black Card. Thiết kế đơn giản nhưng không kém phần sang trọng, lịch thiệp và đầy bí ẩn (lỗ đen vũ trụ). Được lấy cảm hứng từ chiếc \"Thẻ Đen\" quyền lực của các ngân hàng. Đây cũng là lý do tại sao các loại xe cao cấp (Mercedes, BMW, AUDI...) đều có màu đen.', 491, 215000, 300000, 'shop-card/5.png', 'shop-card/12.png', 'shop-card/10.png', NULL, NULL, 'https://shopee.vn/-IN-T%C3%8AN-Th%E1%BA%BB-Th%C3%B4ng-Minh-GOTAP-Card-Visit-%C4%90i%E1%BB%87n-T%E1%BB%AD-Chia-S%E1%BA%BB-Th%C3%B4ng-Tin-Ch%E1%BB%89-V%E1%BB%9Bi-1-Ch%E1%BA%A1m.-i.570344032.12658420841', 1, 'published', '2022-02-26 02:14:01', '2022-09-07 20:23:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `questions`
--

CREATE TABLE `questions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` tinyint(4) NOT NULL DEFAULT 10,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `questions`
--

INSERT INTO `questions` (`id`, `question`, `answer`, `position`, `status`, `created_at`, `updated_at`) VALUES
(1, '🔰 Dùng thẻ này có bị mất tài khoản Facebook, Instagram,Zalo,... không?', '<p><span style=\"font-family:Arial,Helvetica,sans-serif;\"><span style=\"font-size:22px;\">- Chắc chắn l&agrave; <strong>&ldquo;KH&Ocirc;NG&rdquo;</strong> nh&eacute; c&aacute;c bạn. C&aacute;c trang mạng x&atilde; hội bạn chia sẻ l&agrave; c&aacute;c link li&ecirc;n kết đến trang đ&oacute;. Gotap kh&ocirc;ng y&ecirc;u cầu kh&aacute;ch h&agrave;ng đăng nhập mật khẩu, hay cấp quyền truy cập v&agrave;o ứng dụng Facebook, Youtube, Instagram&hellip; hay bất k&igrave; t&agrave;i khoản c&aacute; nh&acirc;n n&agrave;o của bạn. N&ecirc;n việc <strong>mất t&agrave;i khoản l&agrave; điều kh&ocirc;ng thể sảy ra</strong>.</span></span></p>', 10, 'published', '2021-10-13 09:58:57', '2021-10-13 15:20:39'),
(2, '🔰 Tôi có thể thêm bớt thông tin theo ý muốn?', '<p style=\"text-align: justify;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><span style=\"font-size:22px;\">- Được chứ, bạn c&oacute; thể th&ecirc;m, x&oacute;a, chỉnh sửa... c&aacute;c th&ocirc;ng tin c&aacute; nh&acirc;n v&agrave; c&aacute;c trang mạng x&atilde; hội m&agrave; kh&ocirc;ng bị giới hạn.</span></span></p>', 10, 'published', '2021-10-13 09:59:50', '2021-10-13 15:20:23'),
(3, '🔰 Khi bị đánh rơi thẻ, người khác có thể sửa thông tin của tôi không?', '<p style=\"text-align: justify;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><span style=\"font-size:22px;\">-<strong> &ldquo;KH&Ocirc;NG&rdquo;</strong>&nbsp;bạn nh&eacute;. Mỗi thẻ Gotap l&agrave; 1 t&agrave;i khoản ri&ecirc;ng, được bảo mật bởi mật khẩu do ch&iacute;nh bạn sử dụng. Chỉ ri&ecirc;ng bạn c&oacute; thể đăng nhập v&agrave;o t&agrave;i khoản Gotap để thay đổi th&ocirc;ng tin c&aacute; nh&acirc;n th&ocirc;i. Do vậy người kh&aacute;c sẽ kh&ocirc;ng thể thay đổi, chỉnh sửa th&ocirc;ng tin của bạn, m&agrave; chỉ c&oacute; ri&ecirc;ng bạn mới c&oacute; quyền đ&oacute;.</span></span></p>', 10, 'published', '2021-10-13 10:25:31', '2021-10-13 15:15:52'),
(4, '🔰 Tôi có thể làm lại thẻ khi bị mất không?', '<p style=\"text-align: justify;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><span style=\"font-size:22px;\">- Được bạn nh&eacute;, khi bị mất thẻ h&atilde;y li&ecirc;n hệ ngay với đội ngũ hỗ trợ của Gotap, bạn sẽ được hướng dẫn cấp lại thẻ m&agrave; kh&ocirc;ng cần phải thay đổi lại th&ocirc;ng tin.</span></span></p>', 10, 'published', '2021-10-13 10:28:10', '2021-10-13 15:19:59'),
(5, '🔰 Điện thoại nào dùng được thẻ GOTAP?', '<p><span style=\"color:#ff0000;\"><span style=\"font-size:28px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><strong><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">CẢNH B&Aacute;O:</font></font></strong></span></span></span>&nbsp;<span style=\"color:#ff0000;\"><span style=\"font-size:22px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"> &quot;Thẻ n&agrave;y ai cũng d&ugrave;ng được&nbsp;nha&quot;.</font></font></span></span></span></p>\r\n\r\n<p><span style=\"font-size:22px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Nhưng c&aacute;c m&aacute;y d&ograve;ng c&oacute; NFC sẽ sử dụng được 1 điểm t&iacute;nh năng, c&ograve;n c&aacute;c m&aacute;y d&ograve;ng kh&ocirc;ng c&oacute; NFC th&igrave; c&oacute; thể bật M&aacute;y ảnh, Qu&eacute;t để quẹt c&aacute;i QR sau thẻ l&agrave; b&igrave;nh thường nha.</font></font></span></span></p>\r\n\r\n<p><span style=\"font-family:Arial,Helvetica,sans-serif;\"><span style=\"font-size:22px;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Danh s&aacute;ch c&aacute;c d&ograve;ng điện thoại:<font color=\"#ff0000\">&nbsp;Đ&Acirc;Y</font></font></font></span></span></p>', 10, 'published', '2021-12-20 05:44:50', '2021-12-26 02:06:26');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `review` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `reviews`
--

INSERT INTO `reviews` (`id`, `name`, `review`, `image`, `status`, `created_at`, `updated_at`) VALUES
(3, 'Việt CG', '<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong><span style=\"font-size:26px;\">NGUYỄN VIỆT ANH (VIỆT CG)</span></strong></p>\r\n\r\n<p><span style=\"font-size:26px;\">&quot; Trời ơi, Thời buổi n&agrave;o rồi c&ograve;n g&otilde; g&otilde; t&igrave;m t&ecirc;n fb, ins, tiktok...nữa? chỉ chạm nhẹ chiếc thẻ @GOTAP n&agrave;y v&agrave;o điện thoại l&agrave; c&oacute; thể t&igrave;m thấy nhau rồi!!!&nbsp;&quot;&nbsp;</span></p>\r\n\r\n<p><span style=\"font-size:26px;\">@vietcgig</span></p>\r\n\r\n<p>&nbsp;</p>', 'anh-web/67e311fd92d7588901c6.jpg', 'published', '2021-12-22 22:10:50', '2021-12-24 05:27:12'),
(4, 'Trần Thảo', '<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong><span style=\"font-size:26px;\">THẢO TRẦN<span style=\"font-weight: bold;\">&nbsp;</span></span></strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:26px;\">&quot; Ulatroi, gi&aacute; như biết đến thẻ @GOTAP n&agrave;y sớm hơn mỗi lần xin infor đ&atilde; kh&ocirc;ng phải chật vật t&igrave;m t&igrave;m g&otilde; g&otilde; nữa. ny c&oacute; thể ko c&oacute; nhưng thẻ n&agrave;y phải c&oacute; 1c nha. &quot;</span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size: 26px;\">@Thảo Trần(M&iacute;t)</span></p>', 'anh-web/beauty-1637840719205-1.JPEG', 'published', '2021-12-24 05:30:43', '2021-12-24 05:31:31');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `revisions`
--

CREATE TABLE `revisions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `revisionable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revisionable_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `old_value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `new_value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `created_by` int(10) UNSIGNED NOT NULL,
  `updated_by` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `role_users`
--

CREATE TABLE `role_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sections`
--

CREATE TABLE `sections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` tinyint(4) DEFAULT 0,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sections`
--

INSERT INTO `sections` (`id`, `name`, `content`, `position`, `status`, `created_at`, `updated_at`) VALUES
(1, 'THÔNG MINH GOTAP  Card Visit Thông Minh - Phụ Kiện Công Nghệ', '<div class=\"page-section pt-0\" id=\"section-connect\">\r\n<div class=\"container clearfix\">\r\n<div class=\"row align-items-stretch\">\r\n<div class=\"col-lg-4 d-none d-md-block\">\r\n<div class=\"video-container\">\r\n<video autoplay=\"\" loop=\"\" muted=\"\"><source src=\"https://gotap.com.vn/storage/videos/6488870379945157995.mp4\" type=\"video/mp4\" /></video>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-lg-8\">\r\n<p align=\"center\" style=\"margin-top:0cm; text-align:center\"><span style=\"font-size:36px;\"><b><span style=\"background:white\"><span arial=\"\"><span style=\"color:#e74c3c\">CARD VISIT ĐIỆN TỬ&nbsp;GOTAP</span></span></span></b></span></p>\r\n\r\n<p align=\"center\" style=\"margin-top:0cm; text-align:center\"><span style=\"font-size:26px;\"><strong><span style=\"background:white\"><span arial=\"\"><span style=\"color:#3498db\">Card Visit Điện Tử&nbsp;- Phụ Kiện C&ocirc;ng Nghệ</span></span></span></strong></span></p>\r\n\r\n<p style=\"margin-left:36.0pt\"><i><span lang=\"VI\" style=\"font-size:20.0pt\"><span style=\"font-family:Wingdings\">F</span></span></i><i>&nbsp;&nbsp;</i><span style=\"font-family:Arial,Helvetica,sans-serif;\"><span style=\"font-size:22px;\"><span style=\"background:white\"><span style=\"color:#555555\">Chỉ cần</span><span style=\"color:#4e5f70;\"> </span>&quot;1 chạm&quot;, kh&ocirc;ng cần tải ứng dụng,<span style=\"color:#555555\"> bạn c&oacute; thể chia sẻ th&ocirc;ng tin của bạn ngay lập tức với bất k&igrave; ai bạn muốn.</span></span></span></span></p>\r\n\r\n<p style=\"margin-left: 36pt;\"><i><span lang=\"VI\" style=\"font-size:20.0pt\"><span style=\"font-family:Wingdings\">F</span></span></i><i>&nbsp; &nbsp;</i><span style=\"font-size:16.5pt\"><span style=\"color:#555555\">Tương th&iacute;ch với tất cả c&aacute;c d&ograve;ng điện thoại Androi, IOS hỗ trợ NFC phổ biến nhất hiện nay.</span></span></p>\r\n\r\n<p style=\"margin-left:36.0pt\"><i><span lang=\"VI\" style=\"font-size:20.0pt\"><span style=\"font-family:Wingdings\">F</span></span>&nbsp;&nbsp;</i><span style=\"font-size:16.5pt\"><span arial=\"\" style=\"font-family:\">An to&agrave;n, bảo mật, kh&ocirc;ng y&ecirc;u cầu&nbsp;cung cấp mật khẩu c&aacute;c trang mạng x&atilde; hội.</span></span></p>\r\n\r\n<p style=\"margin-left:36.0pt\"><i><span lang=\"VI\" style=\"font-size:20.0pt\"><span style=\"font-family:Wingdings\">F</span></span></i><i>&nbsp;&nbsp;</i><span style=\"font-size:16.5pt\">Kh&ocirc;ng thu ph&iacute; dịch vụ h&agrave;ng th&aacute;ng, tuổi thọ l&ecirc;n đến 10 năm.</span></p>\r\n\r\n<p style=\"margin-left:36.0pt\"><i><span lang=\"VI\" style=\"font-size:20.0pt\"><span style=\"font-family:Wingdings\">F</span></span></i><i>&nbsp; </i><span style=\"font-family:Arial,Helvetica,sans-serif;\"><span style=\"font-size:22px;\">G&acirc;y ấ</span></span><span style=\"font-size:16.5pt\"><span arial=\"\" style=\"font-family:\">n tượng, tạo sự kh&aacute;c biệt với đ&aacute;m đ&ocirc;ng.</span></span></p>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 0, 'published', '2021-10-11 05:20:48', '2022-02-25 02:24:05'),
(2, 'GOTAP GIÚP BẠN CHIA SẺ NHỮNG GÌ?', '<div class=\"page-section pt-0\" id=\"section-profile\">\r\n<div class=\"container clearfix\">\r\n<div class=\"row align-items-stretch\">\r\n<div class=\"col-lg-8\">\r\n<p style=\"margin-left: 90pt;\"><span style=\"font-size:36px;\"><b><span arial=\"\"><span style=\"color:#e74c3c\">GOTAP GI&Uacute;P BẠN CHIA SẺ NHỮNG G&Igrave;?</span></span></b></span></p>\r\n\r\n<p align=\"center\" style=\"margin-left:90.0pt; text-align:center\">&nbsp;</p>\r\n\r\n<p><span style=\"color:#2c3e50;\"><span style=\"font-size:18.0pt\"><span style=\"background:white\"><span emoji=\"\" segoe=\"\" ui=\"\">⛔</span></span></span><span style=\"font-size:18.0pt\"><span style=\"background:white\"><span helvetica=\"\">️</span></span></span><i>&nbsp;&nbsp;</i><span style=\"font-size:16.5pt\"><span arial=\"\">Chia sẻ tất cả c&aacute;c nền tảng mạng x&atilde; hội phổ biến nhất hiện nay như: Facebook, Zalo, Youtube, Tiktok&hellip; chỉ với &quot;1 Chạm&quot;.</span></span></span></p>\r\n\r\n<p><span style=\"color:#2c3e50;\"><span style=\"font-size:18.0pt\"><span style=\"background:white\"><span emoji=\"\" segoe=\"\" ui=\"\">⛔&nbsp;</span><span helvetica=\"\">️</span></span></span> <span style=\"font-size:16.5pt\"><span arial=\"\">Giới thiệu c&aacute;c trang li&ecirc;n kết&nbsp;của bạn&nbsp;như: Shopee, Website, Fanpage&hellip; tới kh&aacute;ch h&agrave;ng 1 c&aacute;ch nhanh ch&oacute;ng.</span></span></span></p>\r\n\r\n<p><span style=\"color:#2c3e50;\"><span style=\"font-size:18.0pt\"><span style=\"background:white\"><span emoji=\"\" segoe=\"\" ui=\"\">⛔&nbsp;</span><span helvetica=\"\">️</span></span></span><span style=\"font-size:16.5pt\"><span arial=\"\">Lưu danh bạ&nbsp;chỉ với&nbsp;&ldquo;1 Chạm&rdquo;.</span></span></span></p>\r\n\r\n<p><span style=\"color:#2c3e50;\"><span style=\"font-size:18.0pt\"><span style=\"background:white\"><span emoji=\"\" segoe=\"\" ui=\"\">⛔&nbsp;</span><span helvetica=\"\">️Gọi điện</span></span></span><span style=\"font-size:16.5pt\"><span arial=\"\">&nbsp;chỉ với&nbsp;&ldquo;1 Chạm&rdquo;.</span></span></span></p>\r\n\r\n<p><span style=\"color:#2c3e50;\"><span style=\"font-size:18.0pt\"><span style=\"background:white\"><span emoji=\"\" segoe=\"\" ui=\"\">⛔</span><span helvetica=\"\">️&nbsp;</span></span></span>&nbsp;<span style=\"font-size: 22px; letter-spacing: 0.266667px;\">Chuyển tiền Ng&acirc;n h&agrave;ng, MMO chỉ với &quot;1 Chạm&quot;.</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<div class=\"col-lg-4 d-none d-md-block\">\r\n<div class=\"video-container\"><img alt=\"\" src=\"https://gotap.com.vn/storage/thiet-ke-khong-ten-4.png\" /></div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<div id=\"gtx-trans\" style=\"position: absolute; left: 141px; top: 69.8px;\">\r\n<div class=\"gtx-trans-icon\">&nbsp;</div>\r\n</div>', 0, 'published', '2021-10-11 05:21:11', '2022-03-01 05:46:32'),
(3, 'CÁCH SỬ DỤNG THẺ THÔNG MINH GOTAP', '<div class=\"page-section pt-0\" id=\"section-connect\">\r\n<div class=\"container clearfix\">\r\n<p align=\"center\" style=\"margin-top:0cm; text-align:center\"><span style=\"font-size:36px;\"><strong><span style=\"color:#e74c3c;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">C&Aacute;CH SỬ DỤNG THẺ TH&Ocirc;NG MINH GOTAP</span></span></strong></span></p>\r\n\r\n<div class=\"row align-items-stretch\">\r\n<div class=\"col-lg-6 col-md-12 pt-10 pb-10\">\r\n<p style=\"margin-top: 0cm; text-align: center;\"><span style=\"font-size:26px;\"><strong><big>​​​NFC</big></strong></span></p>\r\n\r\n<p class=\"MsoNoSpacing\"><span style=\"font-size:22px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Chạm&nbsp;thẻ Gotap v&agrave;o&nbsp;smartphone l&agrave; bạn c&oacute; thể lập tức chia sẻ những th&ocirc;ng tin m&igrave;nh muốn cho bạn b&egrave;, đối t&aacute;c, kh&aacute;ch h&agrave;ng...</span></span></p>\r\n\r\n<div class=\"mx-auto\" dir=\"rtl\" style=\"width: 60%;\r\n    height: 70%;\r\n    object-fit: cover;\r\n    z-index: 0;\r\n    border-radius: 5px!important;\">\r\n<video autoplay=\"\" loop=\"\" muted=\"\" style=\"border-radius: 5px\"><source src=\"https://gotap.com.vn/storage/videos/1cham.mp4\" type=\"video/mp4\" /></video>\r\n</div>\r\n</div>\r\n\r\n<div class=\"col-lg-6 col-md-12 pt-10 pb-10\">\r\n<p style=\"margin-top: 0cm; text-align: center;\"><span style=\"font-size:26px;\"><strong>QU&Eacute;T M&Atilde; QR</strong></span></p>\r\n\r\n<p class=\"MsoNoSpacing\"><span style=\"font-size:22px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Sử dụng camera sau (hoặc bật scan)&nbsp;smartphone để qu&eacute;t m&atilde; QR ở sau tấm thẻ.&nbsp;</span></span></p>\r\n\r\n<p class=\"MsoNoSpacing\">&nbsp;</p>\r\n\r\n<p class=\"MsoNoSpacing\">&nbsp;</p>\r\n\r\n<div class=\"mx-auto\" style=\"width: 60%;\r\n    height: 70%;\r\n    object-fit: cover;\r\n    z-index: 0;\r\n    border-radius: 5px!important;\">\r\n<video autoplay=\"\" loop=\"\" muted=\"\" style=\"border-radius: 5px\"><source src=\"https://gotap.com.vn/storage/videos/quetqr.mp4\" type=\"video/mp4\" /></video>\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 0, 'published', '2021-10-11 07:58:49', '2022-03-01 01:36:45'),
(4, 'BẠN CÓ THỂ THAY ĐỔI GÌ VỚI THẺ CỦA MÌNH?', '<div class=\"page-section pt-0\" id=\"section-profile\">\r\n<div class=\"container clearfix\">\r\n<div class=\"row align-items-stretch\">\r\n<div class=\"col-lg-8\">\r\n<p style=\"text-align: center;\"><span style=\"font-size:36px;\"><span style=\"color:#e74c3c;\"><strong><span style=\"font-family:Arial,Helvetica,sans-serif;\"><span style=\"line-height:normal\">BẠN C&Oacute; THỂ THAY ĐỔI G&Igrave; VỚI THẺ CỦA M&Igrave;NH?</span></span></strong></span></span></p>\r\n\r\n<p style=\"text-align: center;\">&nbsp;</p>\r\n\r\n<p style=\"margin-bottom:0cm\"><span style=\"line-height:normal\"><span style=\"font-size:22.0pt\"><span style=\"font-family:Wingdings\">F</span></span><span style=\"font-size:22.0pt\"><span new=\"\" roman=\"\" style=\"font-family:\" times=\"\"> <span style=\"color:#2980b9;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><span style=\"font-size:22px;\">Khi đặt mua thẻ, Gotap sẽ cung cấp cho bạn 1 t&agrave;i khoản v&agrave; chỉ c&oacute; bạn mới c&oacute; thể chỉnh sửa th&ocirc;ng tin tr&ecirc;n chiếc thẻ của m&igrave;nh, k&egrave;m hướng dẫn sử dụng.</span></span></span></span></span></span></p>\r\n\r\n<p style=\"margin-bottom:0cm\">&nbsp;</p>\r\n\r\n<p style=\"margin-bottom:0cm\">&nbsp;</p>\r\n\r\n<p style=\"margin-bottom: 0cm; text-align: justify;\"><span style=\"line-height:normal\"><span style=\"font-size:22.0pt\"><span style=\"font-family:Wingdings\">&thorn;</span></span><span style=\"font-size:22.0pt\"><span new=\"\" roman=\"\" style=\"font-family:\" times=\"\">&nbsp; <span style=\"font-size:22px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Thay đổi avatar, ảnh b&igrave;a, giao diện, social icons, th&ocirc;ng tin c&aacute; nh&acirc;n..</span></span></span></span></span></p>\r\n\r\n<p style=\"margin-bottom: 0cm; text-align: justify;\">&nbsp;</p>\r\n\r\n<p style=\"margin-bottom:0cm\"><span style=\"line-height:normal\"><span style=\"font-size:22.0pt\"><span style=\"font-family:Wingdings\">&thorn;</span></span><span style=\"font-size:22.0pt\"><span new=\"\" roman=\"\" style=\"font-family:\" times=\"\">&nbsp; <span style=\"font-size:22px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Th&ecirc;m, x&oacute;a c&aacute;c li&ecirc;n kết m&agrave; bạn muốn chia sẻ: (Faecbook, Zalo, Youtube...)</span></span></span></span></span></p>\r\n\r\n<p style=\"margin-bottom:0cm\">&nbsp;</p>\r\n\r\n<p style=\"margin-bottom:0cm\"><span style=\"line-height:normal\"><span style=\"font-size:22.0pt\"><span style=\"font-family:Wingdings\">&thorn;</span></span><span style=\"font-size:22.0pt\"><span new=\"\" roman=\"\" style=\"font-family:\" times=\"\">&nbsp; <span style=\"font-size:22px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Thay đổi vị tr&iacute; c&aacute;c li&ecirc;n kết dễ d&agrave;ng.</span></span></span></span></span></p>\r\n\r\n<p style=\"margin-bottom:0cm\">&nbsp;</p>\r\n\r\n<p style=\"margin-bottom: 0cm; text-align: justify;\"><span style=\"line-height:normal\"><span style=\"font-size:22.0pt\"><span style=\"font-family:Wingdings\">&thorn;</span><span new=\"\" roman=\"\" style=\"font-family:\" times=\"\">&nbsp; <span style=\"font-size:22px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Dễ d&agrave;ng theo d&otilde;i, kiểm so&aacute;t số lượt chạm thẻ, lượt view profile v&agrave; b&aacute;o c&aacute;o chi tiết tỉ lệ click&nbsp;link c&aacute;c trang&nbsp;mạng x&atilde; hội.</span></span></span></span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n</div>\r\n\r\n<div class=\"col-lg-4 d-none d-md-block\"><img alt=\"\" src=\"https://gotap.com.vn/storage/thiet-ke-khong-ten-5-1.png\" /></div>\r\n</div>\r\n</div>\r\n</div>', 0, 'published', '2021-10-11 09:59:28', '2022-03-01 01:37:21'),
(8, 'GIỚI THIỆU VỀ THẺ CÁ NHÂN THÔNG MINH GOTAP', '<div class=\"center page-section\" id=\"section-about\">\r\n<div class=\"container\">\r\n<div class=\"w-100 text-center\">\r\n<h6 style=\"text-align: center;\"><span style=\"color:#e74c3c;\"><strong><span style=\"font-family:Arial,Helvetica,sans-serif;\"><span style=\"font-size:36px;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">GIỚI THIỆU VỀ CH&Uacute;NG T&Ocirc;I?</font></font></font></font></font></font></span></span></strong></span></h6>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style=\"text-align: justify;\"><strong><span style=\"color:#2980b9;\"><span style=\"font-size:22px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">GOTAP</font></font></font></font></font></font></span></span></span><em><span style=\"color:#2980b9;\"><span style=\"font-size:22px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"> </font></font></font></font></font></font></span></span></span></em></strong><span style=\"color:#2980b9;\"><span style=\"font-size:22px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">l&agrave; sản phẩm c&ocirc;ng nghệ h&agrave;ng đầu&nbsp;Việt Nam&nbsp;gi&uacute;p chia sẻ th&ocirc;ng tin li&ecirc;n lạc, mạng x&atilde; hội,...với đối t&aacute;c, bạn b&egrave;&nbsp;chỉ bằng&nbsp;&quot;1 Chạm&quot;.</font></font></font></font></font></font></span></span></span></p>\r\n\r\n<p style=\"text-align: justify;\"><span style=\"color:#2980b9;\"><span style=\"font-size:22px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\"><font style=\"vertical-align: inherit;\">Trước đ&acirc;y mỗi lần đối t&aacute;c, bạn b&egrave;&nbsp;xin th&ocirc;ng tin li&ecirc;n lạc, bạn phải loay hoay đọc Sdt, t&igrave;m Facebook, Zalo, Instagram,... mất&nbsp;rất nhiều thời gian&nbsp;m&agrave; nhiều l&uacute;c kh&ocirc;ng t&igrave;m được. Thấu hiểu được nhu&nbsp;cầu đ&oacute;, <strong>Gotap</strong> mang đến cho kh&aacute;ch h&agrave;ng 1 sản phẩm c&ocirc;ng nghệ thời thượng, đẳng cấp m&agrave; v&ocirc; c&ugrave;ng tiện lợi gi&uacute;p chia sẻ th&ocirc;ng tin của bạn 1 c&aacute;ch nhanh ch&oacute;ng, hiện đại v&agrave; tiết kiệm chi ph&iacute;.</font></font></font></font></font></font></span></span></span></p>\r\n\r\n<p style=\"text-align: justify;\"><font color=\"#2980b9\" face=\"Arial, Helvetica, sans-serif\"><span style=\"font-size: 22px;\">Chỉ cần chạm&nbsp;thẻ Gotap v&agrave;o điện thoại, kh&ocirc;ng cần tải ứng dụng, l&agrave; bạn c&oacute; thể chia sẻ th&ocirc;ng tin li&ecirc;n lạc&nbsp;với đối t&aacute;c,&nbsp;</span></font><font color=\"#2980b9\"><font face=\"Arial, Helvetica, sans-serif\"><span style=\"font-size:22px\">bạn b&egrave;.</span></font></font></p>\r\n\r\n<p style=\"text-align: justify;\"><font color=\"#2980b9\" face=\"Arial, Helvetica, sans-serif\"><span style=\"font-size: 22px;\">Với nhiều năm kinh nghiệm ch&uacute;ng t&ocirc;i lu&ocirc;n cam kết mang&nbsp;đến cho kh&aacute;ch h&agrave;ng th&aacute;i độ phục vụ v&agrave; dịch vụ tr&acirc;n th&agrave;nh nhất.</span></font></p>\r\n\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n\r\n<p style=\"text-align: justify;\">&nbsp;</p>\r\n</div>\r\n</div>\r\n\r\n<div class=\"container clearfix\" style=\"text-align: justify;\">&nbsp;</div>\r\n</div>', -1, 'published', '2021-10-13 02:19:45', '2022-03-01 01:18:38');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `settings`
--

INSERT INTO `settings` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(2, 'membership_authorization_at', '2022-09-01 09:23:54', NULL, NULL),
(3, 'activated_plugins', '[\"language\",\"product\",\"portfolio\",\"contact\",\"social\",\"social-theme\",\"icon\",\"member\",\"account\",\"introduction\",\"section\",\"product-card\",\"question\",\"order\",\"review\"]', NULL, NULL),
(4, 'theme--copyright', 'Copyright © 2020 Gotap! All right reserved.', NULL, NULL),
(5, 'theme--primary_font', 'Roboto', NULL, NULL),
(6, 'theme--primary_color', '#FF2B4A', NULL, NULL),
(7, 'theme--site_title', 'Gotap.com.vn', NULL, NULL),
(8, 'theme--show_site_name', '0', NULL, NULL),
(9, 'theme--seo_title', 'Card Visit Thông Minh 4.0 Gotap®', NULL, NULL),
(10, 'theme--seo_description', '#gotap #thecanhangotap #thecanhanthongminhgotap #cardvisitgotap #gotap.com.vn #cardvisit4.0gotap #cardvisit4.0 #phukien4.0 #thegotap #gotapcard #gotap.com #gotap.vn #cardgotap #cardvisitdientu #cardvisitdientugotap #cardgotap.com.vn', NULL, NULL),
(11, 'theme--seo_og_image', '11-1.jpg', NULL, NULL),
(12, 'theme--default-avatar', '11-1.jpg', NULL, NULL),
(13, 'theme--facebook', 'https://www.facebook.com/gotap.com.vn', NULL, NULL),
(14, 'theme--twitter', '', NULL, NULL),
(15, 'theme--youtube', 'https://www.youtube.com/channel/UCG96qHEpRlor7O6JzzOT74A', NULL, NULL),
(16, 'theme--instagram', 'https://www.instagram.com/gotapcard/', NULL, NULL),
(17, 'theme--tiktok', 'https://vt.tiktok.com/ZSe2LFNgh/', NULL, NULL),
(18, 'theme--address', '62 Nguyen Chi Thanh street, Dong Da district, Ha Noi', NULL, NULL),
(19, 'theme--phone', '0866.864.814', NULL, NULL),
(20, 'theme--email', 'Contact.gotap1688@gmail.com', NULL, NULL),
(21, 'theme--logo-dark', 'icon-pink-2/icon-social-den/kho-sticker-shop/logo-1.jpg', NULL, NULL),
(22, 'theme--favicon', 'gotapcomvn-5.png', NULL, NULL),
(23, 'theme--logo', 'gotapcomvn-5.png', NULL, NULL),
(27, 'language_hide_default', '1', NULL, NULL),
(28, 'language_display', 'flag', NULL, NULL),
(29, 'language_switcher_display', 'list', NULL, NULL),
(30, 'language_hide_languages', '[]', NULL, NULL),
(31, 'language_show_default_item_if_current_version_not_existed', '1', NULL, NULL),
(32, 'theme--default-cover', '33.jpg', NULL, NULL),
(41, 'theme--login-background', '33.jpg', NULL, NULL),
(48, 'theme--video-background', 'videos/video-background.mp4', NULL, NULL),
(53, 'theme--logo-qr', 'icon-pink-2/icon-social-den/kho-sticker-shop/logo-1.jpg', NULL, NULL),
(59, 'theme--bank-info', '<h1 style=\"margin-left:40px;text-align:justify;\"><span style=\"font-size:20px;\"><strong><span style=\"font-family:Arial, Helvetica, sans-serif;\"><font color=\"#e74c3c\"><font style=\"vertical-align:inherit;\"><font style=\"vertical-align:inherit;\">TECHCOMBANK</font></font></font></span></strong></span></h1>\n\n<h1 style=\"margin-left:40px;\"><span style=\"font-family:Arial, Helvetica, sans-serif;\"><font style=\"vertical-align:inherit;\"><font style=\"vertical-align:inherit;\"><span style=\"font-size:16px;\"><span style=\"color:rgb(0,0,0);\"><font style=\"vertical-align:inherit;\"><font style=\"vertical-align:inherit;\">Chi nhánh: </font></font></span></span><font color=\"#f39c12\"> </font></font></font><span style=\"font-size:20px;\"><span style=\"color:#000000;\"><font style=\"vertical-align:inherit;\"><font style=\"vertical-align:inherit;\"><font style=\"vertical-align:inherit;\"><font style=\"vertical-align:inherit;\">Tràng An</font></font></font></font></span></span></span></h1>\n\n<h1 style=\"margin-left:40px;\"><span style=\"font-family:Arial, Helvetica, sans-serif;\"><span style=\"font-size:16px;\"><span style=\"color:#000000;\"><font style=\"vertical-align:inherit;\"><font style=\"vertical-align:inherit;\"><font style=\"vertical-align:inherit;\"><font style=\"vertical-align:inherit;\">STK:</font></font></font></font></span></span><span style=\"color:#f39c12;\"><font style=\"vertical-align:inherit;\"><font style=\"vertical-align:inherit;\"> </font></font></span></span><span style=\"font-size:20px;\"><span style=\"color:#2ecc71;\"><font style=\"vertical-align:inherit;\"><font style=\"vertical-align:inherit;\"> 19035848710015</font></font></span></span></h1>\n\n<h1 style=\"margin-left:40px;\"><span style=\"color:#000000;\"><span style=\"font-size:16px;\"><font style=\"vertical-align:inherit;\"><font style=\"vertical-align:inherit;\">Account name: </font></font></span><span style=\"font-size:20px;\"> </span></span><span style=\"font-size:20px;\"><span style=\"color:#2ecc71;\"><font style=\"vertical-align:inherit;\"><font style=\"vertical-align:inherit;\">Hoang Duc Hiep</font></font></span></span></h1>\n\n<p><span style=\"color:#000000;\"><span style=\"font-size:20px;\">       </span><span style=\"font-size:16px;\"><font style=\"vertical-align:inherit;\"><font style=\"vertical-align:inherit;\">N </font></font></span><span style=\"font-size:18px;\"><span style=\"font-size:16px;\"><font style=\"vertical-align:inherit;\"><font style=\"vertical-align:inherit;\">ội dung chuyển khoản:</font></font></span> </span><span style=\"font-size:20px;\"><font style=\"vertical-align:inherit;\"><font style=\"vertical-align:inherit;\"> Mã giao dịch + Họ tên + SDT</font></font></span></span></p>', NULL, NULL),
(61, 'theme--shopee', 'https://shopee.vn/gogostore39', NULL, NULL),
(66, 'time_zone', 'UTC', NULL, NULL),
(67, 'locale', 'en', NULL, NULL),
(68, 'locale_direction', 'ltr', NULL, NULL),
(69, 'enable_send_error_reporting_via_email', '0', NULL, NULL),
(72, 'admin_title', 'Gotap!', NULL, NULL),
(73, 'rich_editor', 'ckeditor', NULL, NULL),
(74, 'default_admin_theme', 'default', NULL, NULL),
(75, 'enable_change_admin_theme', '0', NULL, NULL),
(76, 'enable_multi_language_in_admin', '0', NULL, NULL),
(77, 'enable_cache', '0', NULL, NULL),
(78, 'cache_time', '10', NULL, NULL),
(79, 'cache_admin_menu_enable', '0', NULL, NULL),
(80, 'optimize_page_speed_enable', '0', NULL, NULL),
(82, 'cache_time_site_map', '3600', NULL, NULL),
(83, 'show_admin_bar', '0', NULL, NULL),
(84, 'verify_account_email', '0', NULL, NULL),
(98, 'media_driver', 'public', NULL, NULL),
(109, 'media_do_spaces_cdn_enabled', '0', NULL, NULL),
(111, 'media_chunk_enabled', '0', NULL, NULL),
(112, 'media_chunk_size', '1048576', NULL, NULL),
(113, 'media_max_file_size', '1048576', NULL, NULL),
(114, 'media_watermark_enabled', '0', NULL, NULL),
(116, 'media_watermark_size', '10', NULL, NULL),
(117, 'watermark_opacity', '70', NULL, NULL),
(118, 'media_watermark_position', 'bottom-right', NULL, NULL),
(119, 'watermark_position_x', '10', NULL, NULL),
(120, 'watermark_position_y', '10', NULL, NULL),
(126, 'email_driver', 'smtp', NULL, NULL),
(127, 'email_port', '587', NULL, NULL),
(128, 'email_host', 'smtp.gmail.com', NULL, NULL),
(129, 'email_username', 'gotap.com.vn@gmail.com', NULL, NULL),
(130, 'email_password', 'Hiep12345', NULL, NULL),
(131, 'email_encryption', 'tls', NULL, NULL),
(134, 'email_mail_gun_endpoint', 'api.mailgun.net', NULL, NULL),
(137, 'email_ses_region', 'us-east-1', NULL, NULL),
(139, 'email_sendmail_path', '/usr/sbin/sendmail -bs', NULL, NULL),
(141, 'email_from_name', 'Gotap.com.vn', NULL, NULL),
(142, 'email_from_address', 'gotap.com.vn@gmail.com', NULL, NULL),
(143, 'using_queue_to_send_mail', '0', NULL, NULL),
(144, 'plugins_member_new-pending-post_status', '1', NULL, NULL),
(145, 'plugins_contact_notice_status', '1', NULL, NULL),
(159, 'admin_logo', 'logo-1/logo-gotap-7.png', NULL, NULL),
(160, 'admin_favicon', 'logo-1/logo-gotap3-7.png', NULL, NULL),
(164, 'theme--video-header', 'img-2741.mp4', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `slugs`
--

CREATE TABLE `slugs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` int(10) UNSIGNED NOT NULL,
  `reference_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prefix` varchar(120) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `socials`
--

CREATE TABLE `socials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hint` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_bank` tinyint(1) NOT NULL DEFAULT 0,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `socials`
--

INSERT INTO `socials` (`id`, `name`, `type`, `hint`, `is_bank`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Facebook', 'facebook', 'https://www.facebook.com/kiendaotac', 0, 'published', '2021-10-10 16:07:50', '2021-10-10 16:07:50'),
(2, 'Instagram', 'instagram', 'https://www.instagram.com/kiendaotac', 0, 'published', '2021-10-10 16:07:50', '2021-10-10 16:07:50'),
(3, 'Github', 'github', 'https://github.com/kiendaotac', 0, 'published', '2021-10-10 16:07:50', '2021-10-10 16:07:50'),
(4, 'Youtube', 'youtube', 'https://www.youtube.com/channel/UC_XPKXLZLSnQ8Mh26OKQphA', 0, 'published', '2021-10-10 16:07:50', '2021-10-10 16:07:50'),
(5, 'Tiktok', 'tiktok', 'https://www.tiktok.com/@kiendaotac', 0, 'published', '2021-10-10 16:07:50', '2021-10-10 16:07:50'),
(6, 'Pinterest', 'pinterest', 'https://www.pinterest.com/hoangkien151092', 0, 'published', '2021-10-10 16:07:50', '2021-10-10 16:07:50'),
(7, 'LinkedIn', 'linkedin', 'https://www.linkedin.com/in/kiendaotac', 0, 'published', '2021-10-10 16:07:50', '2021-10-10 16:07:50'),
(8, 'Twitter', 'twitter', 'https://twitter.com/kiendaotac', 0, 'published', '2021-10-10 16:07:50', '2021-10-10 16:07:50'),
(9, 'Snapchat', 'snapchat', 'https://snapchat.com/add/kiendaotac', 0, 'published', '2021-10-10 16:07:50', '2021-10-10 16:07:50'),
(10, 'Soundcloud', 'soundcloud', 'https://soundcloud.com/kiendaotac', 0, 'published', '2021-10-10 16:07:50', '2021-10-10 16:07:50'),
(11, 'Skype', 'skype', 'live:kiendaotac', 0, 'published', '2021-10-10 16:07:50', '2021-10-10 16:07:50'),
(12, 'Telegram', 'telegram', 'https://t.me/kiendaotac', 0, 'published', '2021-10-10 16:07:50', '2021-10-10 16:07:50'),
(13, 'Whatsapp', 'whatsapp', 'https://wa.me/kiendaotac', 0, 'published', '2021-10-10 16:07:50', '2021-10-10 16:07:50'),
(14, 'MoMo', 'momo', 'https://nhantien.momo.vn/0985108032', 0, 'published', '2021-10-10 16:07:50', '2021-10-10 16:07:50'),
(15, 'Zalo', 'zalo', 'https://zalo.me/0985108032', 0, 'published', '2021-10-10 16:07:50', '2021-10-10 16:07:50'),
(16, 'Gapo', 'gapo', 'https://www.gapo.vn/176702037', 0, 'published', '2021-10-10 16:07:50', '2021-10-10 16:07:50'),
(17, 'Lotus', 'lotus', 'https://lotus.vn/w/profile/86827842448398099.htm', 0, 'published', '2021-10-10 16:07:50', '2021-10-10 16:07:50'),
(18, 'Link', 'link', 'https://example.com', 0, 'published', '2021-10-10 16:07:50', '2021-10-10 16:07:50'),
(19, 'Phone', 'phone', '0985108032', 0, 'published', '2021-10-10 16:07:50', '2021-10-10 16:07:50'),
(20, 'SMS', 'sms', '0985108032', 0, 'published', '2021-10-10 16:07:50', '2021-10-10 16:07:50'),
(21, 'Email', 'email', 'example@gmail.com', 0, 'published', '2021-10-10 16:07:50', '2021-11-26 20:32:27'),
(22, 'Agribank', 'agribank', '000001103280', 1, 'published', '2021-10-10 16:07:50', '2021-10-10 16:07:50'),
(23, 'BIDV', 'bidv', '000001103280', 1, 'published', '2021-10-10 16:07:50', '2021-10-10 16:07:50'),
(24, 'MB Bank', 'mbbank', '000001103280', 1, 'published', '2021-10-10 16:07:50', '2021-10-10 16:07:50'),
(25, 'VP Bank', 'vpbank', '000001103280', 1, 'published', '2021-10-10 16:07:50', '2021-10-10 16:07:50'),
(26, 'TP Bank', 'tpbank', '000001103280', 1, 'published', '2021-10-10 16:07:50', '2021-10-10 16:07:50'),
(27, 'MSB Bank', 'msbbank', '000001103280', 1, 'published', '2021-10-10 16:07:50', '2021-10-10 16:07:50'),
(28, 'ACB Bank', 'acbbank', '000001103280', 1, 'published', '2021-10-10 16:07:50', '2021-10-10 16:07:50'),
(29, 'VIB Bank', 'vibbank', '000001103280', 1, 'published', '2021-10-10 16:07:50', '2021-10-10 16:07:50'),
(30, 'Techcombank', 'techcombank', '000001103280', 1, 'published', '2021-10-10 16:07:50', '2021-10-10 16:07:50'),
(31, 'Vietcombank', 'vietcombank', '000001103280', 1, 'published', '2021-10-10 16:07:50', '2021-10-10 16:07:50'),
(32, 'Vietinbank', 'vietinbank', '000001103280', 1, 'published', '2021-10-10 16:07:50', '2021-10-10 16:07:50'),
(33, 'Seabank', 'seabank', '000001103280', 1, 'published', '2021-10-10 16:07:50', '2021-10-10 16:07:50'),
(34, 'Tinder', 'https://tinder.com/app/profile', 'https://tinder.com/app/profile', 0, 'published', '2021-10-26 08:08:50', '2021-10-26 08:08:50'),
(35, 'Messenger', 'http://m.me/Thecanhanthongminhgotap/', 'http://m.me/Thecanhanthongminhgotap/', 0, 'published', '2021-10-30 04:26:34', '2021-11-12 01:59:51'),
(36, 'SHB Bank', '190010000011', '190010000011', 1, 'published', '2021-11-12 04:18:04', '2021-11-12 04:18:04'),
(37, 'Sacombank', '000001103280', '000001103280', 1, 'published', '2021-11-12 04:18:38', '2021-11-12 04:19:28'),
(38, 'Eximbank', '000001103280', '000001103280', 1, 'published', '2021-11-12 04:18:59', '2021-11-12 04:19:36'),
(39, 'Ocean Bank', '000001103280', '000001103280', 1, 'published', '2021-11-12 04:20:10', '2021-11-12 04:20:10'),
(40, 'DongA Bank', '000001103280', '000001103280', 1, 'published', '2021-11-12 04:21:08', '2021-11-12 04:21:08'),
(41, 'Lienviet PostBank', '000001103280', '000001103280', 1, 'published', '2021-11-12 04:21:51', '2021-11-12 04:21:51'),
(42, 'PVcom Bank', '000001103280', '000001103280', 1, 'published', '2021-11-12 04:22:21', '2021-11-12 04:22:21');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `social_items`
--

CREATE TABLE `social_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `social_value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `social_app` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) DEFAULT 0,
  `account_id` bigint(20) UNSIGNED NOT NULL,
  `social_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `social_items`
--

INSERT INTO `social_items` (`id`, `name`, `description`, `social_value`, `social_app`, `order`, `account_id`, `social_id`, `created_at`, `updated_at`) VALUES
(2, 'SDT', '0912238975', '0912238975', '0912238975', 0, 3, 16, '2021-09-28 16:54:35', '2021-09-28 16:55:24'),
(3, 'Zalo', 'https://zalo.me/0912238975', 'https://zalo.me/0912238975', '0912238975', 2, 3, 15, '2021-09-28 16:59:35', '2021-09-28 17:07:18'),
(4, 'Instagram', 'https://www.instagram.com/hoangduchiep9x', 'https://www.instagram.com/hoangduchiep9x', 'hoangduchiep9x', 1, 3, 2, '2021-09-28 17:07:12', '2021-09-28 17:07:18'),
(5, 'LinkedIn', 'https://www.linkedin.com/in/kiendaotac', 'https://www.linkedin.com/in/kiendaotac', 'kiendaotac', 5, 4, 7, '2021-09-29 04:30:45', '2021-10-14 09:15:00'),
(6, 'Facebook', 'https://www.facebook.com/hoangduchiepgochannel', 'https://www.facebook.com/hoangduchiepgochannel', 'hoangduchiepgochannel', 6, 4, 1, '2021-09-29 06:58:06', '2021-10-14 09:15:01'),
(7, 'Youtube', 'https://www.youtube.com/channel/UCmMPJOdTXxycvJHnszC4FeQ', 'https://www.youtube.com/channel/UCmMPJOdTXxycvJHnszC4FeQ', 'UCmMPJOdTXxycvJHnszC4FeQ', 1, 4, 4, '2021-09-29 07:04:33', '2021-10-14 09:15:00'),
(11, 'Facebook', 'https://www.facebook.com/kiendaotac', 'https://www.facebook.com/kiendaotac', 'kiendaotac', 0, 4, 1, '2021-09-30 08:44:57', '2021-09-30 08:44:57'),
(13, 'Telegram', 'https://t.me/kiendaotac', 'https://t.me/kiendaotac', 'kiendaotac', 4, 4, 12, '2021-10-10 16:09:13', '2021-10-14 09:15:00'),
(15, 'Instagram', 'https://www.instagram.com/kiendaotac', 'https://www.instagram.com/kiendaotac', 'kiendaotac', 3, 4, 2, '2021-10-10 16:19:59', '2021-10-14 09:15:00'),
(16, 'Facebook', 'https://www.facebook.com/hoangduchiepgochannel', 'https://www.facebook.com/hoangduchiepgochannel', 'hoangduchiepgochannel', 0, 5, 1, '2021-10-10 16:41:04', '2021-10-10 16:41:04'),
(17, 'Instagram', 'https://www.instagram.com/hoangduchiep9x/', 'https://www.instagram.com/hoangduchiep9x/', 'hoangduchiep9x', 4, 5, 2, '2021-10-10 16:42:27', '2021-10-14 04:15:17'),
(18, 'Youtube', 'https://www.youtube.com/channel/UCmMPJOdTXxycvJHnszC4FeQ', 'https://www.youtube.com/channel/UCmMPJOdTXxycvJHnszC4FeQ', 'UCmMPJOdTXxycvJHnszC4FeQ', 3, 5, 4, '2021-10-10 16:53:08', '2021-10-14 04:15:17'),
(19, 'Tiktok', 'https://vt.tiktok.com/ZSe8tgbjx/', 'https://vt.tiktok.com/ZSe8tgbjx/', 'https://vt.tiktok.com/ZSe8tgbjx/', 2, 5, 5, '2021-10-10 16:55:18', '2021-10-14 04:15:17'),
(20, 'Facebook', 'https://www.facebook.com/kiendaotac', 'https://www.facebook.com/kiendaotac', 'kiendaotac', 1, 5, 1, '2021-10-10 17:12:30', '2021-10-14 04:15:16'),
(21, 'Soundcloud', 'https://soundcloud.com/kiendaotac', 'https://soundcloud.com/kiendaotac', 'kiendaotac', 2, 4, 10, '2021-10-14 09:14:51', '2021-10-14 09:15:00'),
(34, 'Facebook', 'https://www.facebook.com/kiendaotac', 'https://www.facebook.com/kiendaotac', 'kiendaotac', 0, 6, 1, '2021-11-09 09:33:35', '2021-11-09 09:33:35'),
(35, 'Instagram', 'https://www.instagram.com/kiendaotac', 'https://www.instagram.com/kiendaotac', 'kiendaotac', 4, 6, 2, '2021-11-09 09:39:02', '2021-11-30 08:47:23'),
(36, 'https://www.youtube.com/channel/UC_XPKXLZLSnQ8Mh26OKQphA', 'https://www.youtube.com/channel/UC_XPKXLZLSnQ8Mh26OKQphA', 'https://www.youtube.com/channel/UC_XPKXLZLSnQ8Mh26OKQphA', 'UC_XPKXLZLSnQ8Mh26OKQphA', 5, 6, 4, '2021-11-09 09:39:10', '2022-01-04 01:51:26'),
(45, 'Phone', '0912238975', '0912238975', '0912238975', 0, 56, 19, '2021-11-11 11:44:19', '2021-11-11 11:44:19'),
(46, 'Messenger', 'https://m.me/vantaymedia', 'https://m.me/vantaymedia', NULL, 2, 6, 35, '2021-11-11 16:07:56', '2021-11-30 08:47:23'),
(56, 'Hoang Duc Hiep', '19035848710015', '19035848710015', NULL, 8, 27, 30, '2021-11-14 21:24:48', '2021-12-11 01:04:23'),
(57, 'Hoang Duc Hiep', '0821000001654', '0821000001654', NULL, 9, 27, 31, '2021-11-15 01:24:18', '2021-12-11 01:04:23'),
(58, 'Youtube', 'https://www.youtube.com/channel/UCG96qHEpRlor7O6JzzOT74A', 'https://www.youtube.com/channel/UCG96qHEpRlor7O6JzzOT74A', 'UCG96qHEpRlor7O6JzzOT74A', 2, 27, 4, '2021-11-15 01:24:43', '2021-12-14 03:56:43'),
(59, 'Tiktok', 'https://vt.tiktok.com/gotap.com.vn', 'https://vt.tiktok.com/gotap.com.vn', 'https://vt.tiktok.com/gotap.com.vn', 3, 27, 5, '2021-11-15 01:25:35', '2021-12-14 03:56:43'),
(60, 'Zalo', 'https://zalo.me/0912238975', 'https://zalo.me/0912238975', '0912238975', 4, 27, 15, '2021-11-15 01:26:09', '2021-12-14 03:56:43'),
(61, 'Phone', '0912238975', '0912238975', '0912238975', 6, 27, 19, '2021-11-15 01:26:29', '2021-12-14 03:56:35'),
(62, 'SMS', '0912238975', '0912238975', '0912238975', 7, 27, 20, '2021-11-15 01:26:43', '2021-12-14 03:56:35'),
(63, 'Email', 'Contact.gotap1688@gmail.com', 'Contact.gotap1688@gmail.com', 'Contact.gotap1688@gmail.com', 5, 27, 21, '2021-11-15 01:27:12', '2021-12-14 03:56:35'),
(68, 'Instagram', 'https://www.instagram.com/kiendaotac', 'https://www.instagram.com/kiendaotac', 'kiendaotac', 1, 27, 2, '2021-11-17 22:49:36', '2021-12-14 03:56:43'),
(69, 'Facebook', 'https://www.facebook.com/hoangduchiepgochannel', 'https://www.facebook.com/hoangduchiepgochannel', 'hoangduchiepgochannel', 0, 27, 1, '2021-11-17 22:50:48', '2021-12-01 03:51:03'),
(70, 'Facebook', 'https://www.facebook.com/dung.vumanh.2611', 'https://www.facebook.com/dung.vumanh.2611', 'dung', 0, 162, 1, '2021-11-19 21:32:59', '2021-11-19 21:32:59'),
(71, 'Instagram', 'https://www.instagram.com/wumengyong1998', 'https://www.instagram.com/wumengyong1998', 'wumengyong1998', 1, 162, 2, '2021-11-19 21:33:33', '2021-11-19 21:34:41'),
(72, 'Zalo', 'https://zalo.me/0392111155', 'https://zalo.me/0392111155', '0392111155', 2, 162, 15, '2021-11-19 21:33:55', '2021-11-19 21:34:41'),
(73, 'Phone', '0392111155', '0392111155', '0392111155', 3, 162, 19, '2021-11-19 21:34:12', '2021-11-19 21:34:41'),
(74, 'Vũ Mạnh Dũng', '19033594476014', '19033594476014', NULL, 4, 162, 30, '2021-11-19 21:34:36', '2021-11-19 21:34:41'),
(75, 'Facebook', 'https://www.facebook.com/hoangduchiepgochannel', 'https://www.facebook.com/hoangduchiepgochannel', 'hoangduchiepgochannel', 0, 91, 1, '2021-11-22 01:46:43', '2021-11-22 01:46:43'),
(76, 'Facebook', 'https://www.facebook.com/dieu.khanh.397948', 'https://www.facebook.com/dieu.khanh.397948', 'dieu', 1, 50, 1, '2021-11-22 01:56:07', '2021-11-22 01:59:52'),
(77, 'Instagram', 'http://www.instagram.com/mia_neyyy', 'http://www.instagram.com/mia_neyyy', 'mia_neyyy', 0, 50, 2, '2021-11-22 01:58:14', '2021-11-22 01:58:14'),
(78, 'Tiktok', 'www.tiktok.com/@mayxinhneee', 'www.tiktok.com/@mayxinhneee', 'www.tiktok.com/@mayxinhneee', 3, 50, 5, '2021-11-22 01:58:51', '2021-12-09 03:41:08'),
(79, 'Zalo', 'https://zalo.me/0975614803', 'https://zalo.me/0975614803', '0975614803', 2, 50, 15, '2021-11-22 01:59:11', '2021-12-09 03:41:08'),
(80, 'Phone', '0975614803', '0975614803', '0975614803', 4, 50, 19, '2021-11-22 01:59:37', '2021-11-22 01:59:52'),
(81, 'Facebook', 'https://www.facebook.com/kiendaotac', 'https://www.facebook.com/kiendaotac', 'kiendaotac', 5, 50, 1, '2021-11-22 01:59:45', '2021-11-22 01:59:52'),
(82, 'Facebook', 'https://www.facebook.com/profile.php?id=100006071832852', 'https://www.facebook.com/profile.php?id=100006071832852', '100006071832852', 0, 67, 1, '2021-11-23 04:08:03', '2021-11-23 04:08:03'),
(83, 'Instagram', 'https://www.instagram.com/vtl.01', 'https://www.instagram.com/vtl.01', 'vtl.01', 1, 67, 2, '2021-11-23 04:09:36', '2021-11-23 04:21:14'),
(84, 'MoMo', 'https://me.momo.vn/aMI2TPsns9UBfeUxTqUDTn', 'https://me.momo.vn/aMI2TPsns9UBfeUxTqUDTn', NULL, 2, 67, 14, '2021-11-23 04:11:17', '2021-11-23 04:14:43'),
(85, 'Zalo', 'https://zalo.me/01234137423', 'https://zalo.me/01234137423', '01234137423', 3, 67, 15, '2021-11-23 04:11:38', '2021-11-23 04:14:43'),
(86, 'Phone', '0363431317', '0363431317', '0363431317', 4, 67, 19, '2021-11-23 04:12:04', '2021-11-23 04:14:43'),
(87, 'Email', 'Vilinhcocchu@gmail.com', 'Vilinhcocchu@gmail.com', 'Vilinhcocchu@gmail.com', 5, 67, 21, '2021-11-23 04:12:28', '2021-11-23 04:14:43'),
(88, 'Vi Thuy Linh', '19036971836011', '19036971836011', NULL, 6, 67, 30, '2021-11-23 04:13:27', '2021-11-23 04:14:43'),
(89, 'Vi Thuy Linh', 'VITHUYLINH / 109870638673', 'VITHUYLINH / 109870638673', NULL, 7, 67, 32, '2021-11-23 04:14:15', '2021-11-23 04:14:43'),
(90, 'Facebook', 'https://www.facebook.com/profile.php?id=100011326172936', 'https://www.facebook.com/profile.php?id=100011326172936', '100011326172936', 0, 120, 1, '2021-11-23 08:41:51', '2021-11-23 08:41:51'),
(93, 'Đỗ Thị Lan Chinh', '8000106566886', '8000106566886', NULL, 5, 120, 24, '2021-11-23 08:47:23', '2021-11-23 19:18:58'),
(95, 'Phone', '0967304652', '0967304652', '0967304652', 6, 120, 19, '2021-11-23 08:49:58', '2021-11-23 19:18:58'),
(98, 'Zalo', 'https://zalo.me/0967304652', 'https://zalo.me/0967304652', '0967304652', 2, 120, 15, '2021-11-23 19:13:11', '2021-11-23 19:18:58'),
(99, 'Tiktok', 'https://www.tiktok.com/@lanchinh0202', 'https://www.tiktok.com/@lanchinh0202', 'https://www.tiktok.com/@lanchinh0202', 3, 120, 5, '2021-11-23 19:14:31', '2021-11-23 19:18:58'),
(100, 'Đỗ Thị Lan Chinh', '42510001792847', '42510001792847', NULL, 4, 120, 23, '2021-11-23 19:16:21', '2021-11-23 19:18:58'),
(104, 'Instagram', 'https://www.instargram.com/dolanchinh25', 'https://www.instargram.com/dolanchinh25', NULL, 1, 120, 2, '2021-11-23 19:47:47', '2021-11-23 19:47:50'),
(105, 'Phone', '0866864814', '0866864814', '0866864814', 0, 313, 19, '2021-11-23 22:18:43', '2021-11-23 22:18:43'),
(107, 'Phone', '0569903389', '0569903389', '0569903389', 5, 152, 19, '2021-11-24 07:57:47', '2021-11-29 20:40:43'),
(108, 'Instagram', 'https://www.instagram.com/cap_van_nam', 'https://www.instagram.com/cap_van_nam', 'cap_van_nam', 3, 152, 2, '2021-11-24 08:01:01', '2021-11-29 20:40:43'),
(109, 'Facebook', 'https://www.facebook.com/Tran.QuocKhanh.1704', 'https://www.facebook.com/Tran.QuocKhanh.1704', 'Tran', 0, 61, 1, '2021-11-24 08:24:05', '2021-11-24 08:24:05'),
(110, 'Tiktok', 'www.tiktok.com/@_tranquockhanh_', 'www.tiktok.com/@_tranquockhanh_', 'www.tiktok.com/@_tranquockhanh_', 1, 61, 5, '2021-11-24 08:25:52', '2021-11-24 08:27:24'),
(111, 'Zalo', 'https://zalo.me/0866546774', 'https://zalo.me/0866546774', '0866546774', 2, 61, 15, '2021-11-24 08:27:21', '2021-11-24 08:27:24'),
(112, 'Facebook', 'https://www.facebook.com/profile.php?id=100056860521491', 'https://www.facebook.com/profile.php?id=100056860521491', '100056860521491', 0, 186, 1, '2021-11-25 03:17:30', '2021-11-25 03:17:30'),
(113, 'Tiktok', 'https://www.tiktok.com/@thaobi2407', 'https://www.tiktok.com/@thaobi2407', 'https://www.tiktok.com/@thaobi2407', 2, 186, 5, '2021-11-25 03:19:58', '2021-11-25 03:24:22'),
(114, 'Trần Thuý Hạnh', '19034571354015', '19034571354015', NULL, 1, 186, 30, '2021-11-25 03:23:46', '2021-11-25 03:24:22'),
(115, 'Facebook', 'https://www.facebook.com/myhong.myhong.7', 'https://www.facebook.com/myhong.myhong.7', 'myhong', 0, 123, 1, '2021-11-25 04:06:23', '2021-11-25 04:06:23'),
(116, 'Tiktok', 'https://vt.tiktok.com/ZSeSxE5Xy/', 'https://vt.tiktok.com/ZSeSxE5Xy/', 'https://vt.tiktok.com/ZSeSxE5Xy/', 2, 123, 5, '2021-11-25 04:07:11', '2021-11-25 04:10:33'),
(117, 'Zalo', 'https://zalo.me/0978219926', 'https://zalo.me/0978219926', '0978219926', 3, 123, 15, '2021-11-25 04:08:49', '2021-11-25 04:10:33'),
(118, 'Instagram', 'https://www.instagram.com/soi_xinh', 'https://www.instagram.com/soi_xinh', 'soi_xinh', 1, 123, 2, '2021-11-25 04:09:34', '2021-11-25 04:10:33'),
(119, 'BUI MY HONG', '19910000210764', '19910000210764', NULL, 4, 123, 23, '2021-11-25 04:10:27', '2021-11-25 04:10:33'),
(120, 'Facebook', 'https://www.facebook.com/hiephaohoa90', 'https://www.facebook.com/hiephaohoa90', 'hiephaohoa90', 0, 40, 1, '2021-11-27 04:22:04', '2021-11-27 04:22:04'),
(122, 'Tiktok', 'https://vt.tiktok.com/ZSeANT3N8/', 'https://vt.tiktok.com/ZSeANT3N8/', 'https://vt.tiktok.com/ZSeANT3N8/', 1, 40, 5, '2021-11-27 04:23:22', '2021-11-27 04:25:23'),
(123, 'Zalo', 'https://zalo.me/0988532990', 'https://zalo.me/0988532990', '0988532990', 2, 40, 15, '2021-11-27 04:23:42', '2021-11-27 04:25:23'),
(124, 'Phone', '0988532990', '0988532990', '0988532990', 3, 40, 19, '2021-11-27 04:24:21', '2021-11-27 04:25:23'),
(125, 'SMS', '0988532990', '0988532990', '0988532990', 4, 40, 20, '2021-11-27 04:24:35', '2021-11-27 04:25:23'),
(126, 'NGUYEN DAC HIEP', '19036680655011', '19036680655011', NULL, 5, 40, 30, '2021-11-27 04:25:19', '2021-11-27 04:25:23'),
(127, 'Instagram', 'https://www.instagram.com/haidieu_1010', 'https://www.instagram.com/haidieu_1010', 'haidieu_1010', 0, 87, 2, '2021-11-27 05:42:35', '2021-11-27 05:44:16'),
(129, 'Instagram', 'https://www.instagram.com/kangnam.hair.studio', 'https://www.instagram.com/kangnam.hair.studio', 'kangnam.hair.studio', 2, 114, 2, '2021-11-27 06:29:42', '2021-11-29 04:44:36'),
(130, 'PHAM VAN BINH', '19030644095026', '19030644095026', NULL, 3, 114, 30, '2021-11-27 06:30:34', '2021-11-29 04:44:36'),
(137, 'Facebook', 'https://www.facebook.com/tam.phamthien.562', 'https://www.facebook.com/tam.phamthien.562', 'tam', 0, 114, 1, '2021-11-27 06:41:40', '2021-11-27 06:46:13'),
(138, 'Tiktok', 'www.tiktok.com/@cap_van_nam2034', 'www.tiktok.com/@cap_van_nam2034', 'www.tiktok.com/@cap_van_nam2034', 1, 152, 5, '2021-11-28 01:01:31', '2022-04-04 02:25:23'),
(139, 'Youtube', 'https://youtube.com/channel/UCG96qHEpRlor7O6JzzOT74A', 'https://youtube.com/channel/UCG96qHEpRlor7O6JzzOT74A', 'UCG96qHEpRlor7O6JzzOT74A', 4, 152, 4, '2021-11-28 01:02:21', '2021-11-29 20:40:43'),
(140, 'Cap Van Nam', '19036888138019', '19036888138019', NULL, 2, 152, 30, '2021-11-28 01:03:53', '2021-11-29 20:40:43'),
(141, 'Facebook', 'https://www.facebook.com/octorber29', 'https://www.facebook.com/octorber29', 'octorber29', 0, 158, 1, '2021-11-29 02:20:37', '2021-11-29 02:20:37'),
(142, 'Zalo', 'https://zalo.me/0963026137', 'https://zalo.me/0963026137', '0963026137', 1, 158, 15, '2021-11-29 02:21:50', '2021-11-29 02:22:06'),
(143, 'Facebook', 'https://www.facebook.com/profile.php?id=100013031507477', 'https://www.facebook.com/profile.php?id=100013031507477', '100013031507477', 1, 114, 1, '2021-11-29 04:44:26', '2021-11-29 04:44:36'),
(144, 'Facebook', 'https://www.facebook.com/namcapvan', 'https://www.facebook.com/namcapvan', 'namcapvan', 0, 152, 1, '2021-11-29 20:40:40', '2021-11-29 20:45:25'),
(145, 'Facebook', 'https://www.facebook.com/profile.php?id=100033106442851', 'https://www.facebook.com/profile.php?id=100033106442851', '100033106442851', 0, 46, 1, '2021-11-30 04:31:07', '2021-11-30 04:31:07'),
(146, 'Tiktok', 'https://vt.tiktok.com/ZSeD1uWXA/', 'https://vt.tiktok.com/ZSeD1uWXA/', 'https://vt.tiktok.com/ZSeD1uWXA/', 3, 46, 5, '2021-11-30 04:31:41', '2021-12-06 03:16:07'),
(147, 'Facebook', 'https://www.facebook.com/chieu.phammanh.7', 'https://www.facebook.com/chieu.phammanh.7', 'chieu.phammanh.7', 0, 130, 1, '2021-11-30 04:44:25', '2021-12-03 04:05:34'),
(148, 'Pham manh chieu', '19036726197011', '19036726197011', NULL, 1, 130, 30, '2021-11-30 04:45:06', '2021-11-30 04:45:52'),
(149, 'Zalo', 'https://zalo.me/0967470812', 'https://zalo.me/0967470812', '0967470812', 2, 130, 15, '2021-11-30 04:45:38', '2021-11-30 04:45:52'),
(150, 'Instagram', 'https://www.instagram.com/van_hanh.201', 'https://www.instagram.com/van_hanh.201', 'van_hanh.201', 2, 46, 2, '2021-11-30 04:55:42', '2021-12-06 03:16:07'),
(151, 'Zalo', 'https://zalo.me/0396226617', 'https://zalo.me/0396226617', '0396226617', 0, 154, 15, '2021-11-30 05:51:56', '2021-11-30 05:51:56'),
(152, 'Facebook', 'https://www.facebook.com/hoang.smokert', 'https://www.facebook.com/hoang.smokert', 'hoang', 1, 154, 1, '2021-11-30 05:52:43', '2021-11-30 05:53:28'),
(153, 'Instagram', 'https://www.instagram.com/kiendaotac', 'https://www.instagram.com/kiendaotac', 'kiendaotac', 2, 154, 2, '2021-11-30 05:53:21', '2021-11-30 05:53:28'),
(155, 'VU THE HAI', '0050128481987', '0050128481987', NULL, 0, 140, 24, '2021-11-30 07:00:59', '2021-11-30 20:08:18'),
(156, 'Test', 'https://www.facebook.com/tam.phamthien.562', 'https://www.facebook.com/tam.phamthien.562', 'tam', 3, 6, 1, '2021-11-30 07:46:45', '2021-11-30 08:47:23'),
(157, 'Test1', 'https://www.facebook.com/tam.phamthien.562', 'https://www.facebook.com/tam.phamthien.562', 'tam.phamthien.562', 1, 6, 1, '2021-11-30 08:47:20', '2021-11-30 08:47:23'),
(158, 'Instagram', 'https://www.instagram.com/thehai4887', 'https://www.instagram.com/thehai4887', 'thehai4887', 8, 140, 2, '2021-11-30 10:19:43', '2021-12-02 10:12:28'),
(159, 'Telegram', 'https://t.me/VuHai87', 'https://t.me/VuHai87', NULL, 6, 140, 12, '2021-11-30 10:23:56', '2021-12-02 10:12:28'),
(160, 'Zalo', 'https://zalo.me/0986514888', 'https://zalo.me/0986514888', '0986514888', 5, 140, 15, '2021-11-30 10:25:21', '2021-12-02 10:12:28'),
(161, 'Phone', '0986514887', '0986514887', '0986514887', 7, 140, 19, '2021-11-30 10:26:38', '2021-12-02 10:12:28'),
(163, 'Email', 'Thehai48@gmail.com', 'Thehai48@gmail.com', 'Thehai48@gmail.com', 3, 140, 21, '2021-11-30 10:27:44', '2021-12-02 10:12:28'),
(164, 'MoMo', 'https://nhantien.momo.vn/0986514887', 'https://nhantien.momo.vn/0986514887', '0986514887', 4, 140, 14, '2021-11-30 10:29:24', '2021-12-02 10:12:28'),
(165, 'VU THE HAI', '22210004199615', '22210004199615', NULL, 2, 140, 23, '2021-11-30 18:35:13', '2021-12-02 10:12:28'),
(166, 'Facebook', 'https://www.facebook.com/song.thattha', 'https://www.facebook.com/song.thattha', 'song.thattha', 0, 189, 1, '2021-12-01 03:52:37', '2021-12-01 03:52:37'),
(167, 'Instagram', 'https://www.instagram.com/tuan.color_', 'https://www.instagram.com/tuan.color_', 'tuan.color_', 1, 189, 2, '2021-12-01 03:53:21', '2021-12-01 03:55:26'),
(168, 'Tiktok', 'https://www.tiktok.com/@lequoctuan1221', 'https://www.tiktok.com/@lequoctuan1221', 'https://www.tiktok.com/@lequoctuan1221', 2, 189, 5, '2021-12-01 03:53:47', '2021-12-01 03:55:26'),
(169, 'LE QUOC TUAN', '0220995888888', '0220995888888', NULL, 3, 189, 24, '2021-12-01 03:54:48', '2021-12-01 03:55:26'),
(171, 'Phone', '0963866683', '0963866683', '0963866683', 0, 189, 19, '2021-12-01 04:07:48', '2021-12-01 04:07:48'),
(172, 'Facebook', 'https://www.facebook.com/nguyenphuthanh1993', 'https://www.facebook.com/nguyenphuthanh1993', 'nguyenphuthanh1993', 0, 94, 1, '2021-12-01 04:55:57', '2021-12-01 04:55:57'),
(173, 'Nguyen Phu Thanh', '19034172327012', '19034172327012', NULL, 1, 94, 30, '2021-12-01 04:57:40', '2021-12-01 04:57:47'),
(174, 'Facebook', 'https://www.facebook.com/vanvu175', 'https://www.facebook.com/vanvu175', 'vanvu175', 0, 179, 1, '2021-12-01 05:23:59', '2021-12-01 05:23:59'),
(176, 'Instagram', 'https://www.instagram.com/vuding3618', 'https://www.instagram.com/vuding3618', 'vuding3618', 2, 179, 2, '2021-12-01 05:25:41', '2021-12-01 05:31:52'),
(177, 'Tiktok', 'https://vt.tiktok.com/ZSeDktjcH/', 'https://vt.tiktok.com/ZSeDktjcH/', 'https://vt.tiktok.com/ZSeDktjcH/', 1, 179, 5, '2021-12-01 05:26:22', '2021-12-01 05:31:52'),
(178, 'Phone', '0372169231', '0372169231', '0372169231', 4, 179, 19, '2021-12-01 05:26:42', '2021-12-01 05:31:52'),
(179, 'SMS', '0372169231', '0372169231', '0372169231', 5, 179, 20, '2021-12-01 05:27:04', '2021-12-01 05:31:52'),
(180, 'Zalo', 'https://zalo.me/0372169231', 'https://zalo.me/0372169231', '0372169231', 3, 179, 15, '2021-12-01 05:27:53', '2021-12-01 05:31:52'),
(181, 'Đinh Mi Vu', '0011004406557', '0011004406557', NULL, 6, 179, 31, '2021-12-01 05:30:50', '2021-12-01 05:31:52'),
(183, 'Facebook', 'https://www.facebook.com/nghia.nghiangu', 'https://www.facebook.com/nghia.nghiangu', 'nghia.nghiangu', 0, 72, 1, '2021-12-01 08:21:34', '2021-12-01 08:21:34'),
(185, 'Instagram', 'https://www.instagram.com/nghia.2509', 'https://www.instagram.com/nghia.2509', 'nghia.2509', 4, 72, 2, '2021-12-01 08:22:48', '2021-12-01 18:56:11'),
(187, 'Dinh trong nghia', '13001015884555', '13001015884555', NULL, 5, 72, 27, '2021-12-01 08:24:21', '2021-12-01 18:56:11'),
(188, 'Đinh Trọng Nghĩa', '5025092002', '5025092002', NULL, 2, 72, 24, '2021-12-01 18:54:45', '2021-12-01 18:56:11'),
(190, 'Zalo', 'https://zalo.me/0376634904', 'https://zalo.me/0376634904', '0376634904', 3, 72, 15, '2021-12-01 18:55:28', '2021-12-01 18:56:11'),
(191, 'MoMo', 'https://nhantien.momo.vn/0376634904', 'https://nhantien.momo.vn/0376634904', '0376634904', 1, 72, 14, '2021-12-01 18:56:08', '2021-12-01 18:56:11'),
(193, 'Facebook', 'https://www.facebook.com/profile.php?id=100008412137216', 'https://www.facebook.com/profile.php?id=100008412137216', '100008412137216', 0, 62, 1, '2021-12-01 19:35:31', '2021-12-28 00:52:17'),
(194, 'Zalo', 'https://zalo.me/0943198198', 'https://zalo.me/0943198198', '0943198198', 1, 62, 15, '2021-12-01 19:36:43', '2021-12-28 00:52:17'),
(195, 'Facebook', 'https://www.facebook.com/vuthehai87', 'https://www.facebook.com/vuthehai87', 'vuthehai87', 1, 140, 1, '2021-12-02 10:12:25', '2021-12-02 10:12:28'),
(196, 'Facebook', 'https://www.facebook.com/dieuhuong.dang', 'https://www.facebook.com/dieuhuong.dang', 'dieuhuong.dang', 0, 161, 1, '2021-12-03 03:04:26', '2021-12-03 03:04:26'),
(197, 'Zalo', 'https://zalo.me/0983669607', 'https://zalo.me/0983669607', '0983669607', 2, 161, 15, '2021-12-03 03:05:07', '2021-12-03 03:12:46'),
(198, 'Phone', '0983669607', '0983669607', '0983669607', 3, 161, 19, '2021-12-03 03:05:30', '2021-12-03 03:12:46'),
(199, 'SMS', '0983669607', '0983669607', '0983669607', 4, 161, 20, '2021-12-03 03:05:48', '2021-12-03 03:12:46'),
(200, 'NGUYỄN THỊ VAN', '12510000014268', '12510000014268', NULL, 5, 161, 23, '2021-12-03 03:06:30', '2021-12-03 03:12:46'),
(201, 'Tiktok', 'https://vt.tiktok.com/ZSeD7FYop/', 'https://vt.tiktok.com/ZSeD7FYop/', 'https://vt.tiktok.com/ZSeD7FYop/', 1, 161, 5, '2021-12-03 03:07:20', '2021-12-03 03:12:46'),
(204, 'NGUYEN VAN HANH', '19035915294013', '19035915294013', NULL, 1, 46, 30, '2021-12-06 03:16:03', '2021-12-06 03:16:07'),
(205, 'Facebook', 'https://www.facebook.com/profile.php?id=100008794361276', 'https://www.facebook.com/profile.php?id=100008794361276', '100008794361276', 0, 58, 1, '2021-12-08 01:42:05', '2021-12-08 01:42:05'),
(206, 'Instagram', 'https://www.instagram.com/_linhdk_', 'https://www.instagram.com/_linhdk_', '_linhdk_', 1, 58, 2, '2021-12-08 01:42:50', '2021-12-08 01:43:55'),
(207, 'Phone', '0975370885', '0975370885', '0975370885', 3, 58, 19, '2021-12-08 01:43:07', '2021-12-08 01:43:55'),
(208, 'SMS', '0975370885', '0975370885', '0975370885', 4, 58, 20, '2021-12-08 01:43:29', '2021-12-08 01:43:55'),
(209, 'Zalo', 'https://zalo.me/0975370885', 'https://zalo.me/0975370885', '0975370885', 2, 58, 15, '2021-12-08 01:43:46', '2021-12-08 01:43:55'),
(210, 'DANG KHANH LINH', '103869290180', '103869290180', NULL, 5, 58, 32, '2021-12-08 01:49:07', '2021-12-08 01:49:19'),
(211, 'Facebook', 'https://www.facebook.com/vietcuong.nguyen.378199', 'https://www.facebook.com/vietcuong.nguyen.378199', 'vietcuong.nguyen.378199', 0, 125, 1, '2021-12-17 01:39:58', '2021-12-17 01:39:58'),
(212, 'Zalo', 'https://zalo.me/0973365155', 'https://zalo.me/0973365155', '0973365155', 1, 125, 15, '2021-12-17 01:40:28', '2021-12-17 01:43:48'),
(213, 'Phone', '0973365155', '0973365155', '0973365155', 2, 125, 19, '2021-12-17 01:41:02', '2021-12-17 01:43:48'),
(214, 'NGUYEN VIET CUONG', '19033142557017', '19033142557017', NULL, 3, 125, 30, '2021-12-17 01:42:27', '2021-12-17 01:43:48'),
(215, 'NGUYEN VIET CUONG', '8101205384657', '8101205384657', NULL, 4, 125, 22, '2021-12-17 01:43:41', '2021-12-17 01:43:48'),
(216, 'Facebook', 'https://www.facebook.com/hang.coci.2296', 'https://www.facebook.com/hang.coci.2296', 'hang.coci.2296', 0, 183, 1, '2021-12-17 02:18:09', '2021-12-17 02:18:09'),
(217, 'SMS', '0868666331', '0868666331', '0868666331', 1, 183, 20, '2021-12-17 02:19:12', '2021-12-17 02:19:48'),
(219, 'Youtube', 'https://youtube.com/channel/UC5Keom5MWOHQ01FIsv9vVow', 'https://youtube.com/channel/UC5Keom5MWOHQ01FIsv9vVow', 'UC5Keom5MWOHQ01FIsv9vVow', 1, 184, 4, '2021-12-18 03:53:24', '2021-12-18 03:58:59'),
(220, 'Tiktok', 'https://vt.tiktok.com/ZSe583KTx/', 'https://vt.tiktok.com/ZSe583KTx/', 'https://vt.tiktok.com/ZSe583KTx/', 2, 184, 5, '2021-12-18 03:53:59', '2021-12-18 03:58:59'),
(221, 'Nguyen Tien Anh', '9393888888888', '9393888888888', NULL, 3, 184, 24, '2021-12-18 03:54:44', '2021-12-18 03:58:59'),
(222, 'Facebook', 'https://www.facebook.com/daodinhthut', 'https://www.facebook.com/daodinhthut', 'daodinhthut', 0, 184, 1, '2021-12-18 03:55:44', '2021-12-18 03:58:59'),
(223, 'Facebook', 'https://www.facebook.com/anhtai.pham.92167', 'https://www.facebook.com/anhtai.pham.92167', 'anhtai.pham.92167', 1, 129, 1, '2021-12-20 21:26:17', '2021-12-20 21:47:02'),
(224, 'Tiktok', 'https://vt.tiktok.com/ZSe5TyxjS/', 'https://vt.tiktok.com/ZSe5TyxjS/', 'https://vt.tiktok.com/ZSe5TyxjS/', 3, 129, 5, '2021-12-20 21:27:12', '2021-12-20 21:47:02'),
(225, 'Phone', '0982776458', '0982776458', '0982776458', 0, 129, 19, '2021-12-20 21:40:52', '2021-12-20 21:40:52'),
(226, 'Zalo', 'https://zalo.me/0982776458', 'https://zalo.me/0982776458', '0982776458', 2, 129, 15, '2021-12-20 21:44:12', '2021-12-20 21:47:02'),
(227, 'Phạm Anh Tài', '19036474133015', '19036474133015', NULL, 5, 129, 30, '2021-12-20 21:45:56', '2021-12-20 21:47:02'),
(228, 'Youtube', 'https://youtube.com/channel/UCDHzQybOxw9eH2VjDHzqJ8g', 'https://youtube.com/channel/UCDHzQybOxw9eH2VjDHzqJ8g', 'UCDHzQybOxw9eH2VjDHzqJ8g', 4, 129, 4, '2021-12-20 21:46:47', '2021-12-20 21:47:02'),
(229, 'Facebook', 'https://www.facebook.com/vietanhvevo', 'https://www.facebook.com/vietanhvevo', 'vietanhvevo', 0, 416, 1, '2021-12-22 03:45:52', '2021-12-22 03:45:52'),
(230, 'Instagram', 'https://www.instagram.com/vietvevo', 'https://www.instagram.com/vietvevo', 'vietvevo', 1, 416, 2, '2021-12-22 03:46:03', '2021-12-22 03:47:03'),
(231, 'Vietcg4', 'https://www.tiktok.com/@vietcg4', 'https://www.tiktok.com/@vietcg4', 'https://www.tiktok.com/@vietcg4', 2, 416, 5, '2021-12-22 03:46:56', '2021-12-22 03:47:03'),
(237, 'Facebook', 'https://www.facebook.com/trinhminhtam910', 'https://www.facebook.com/trinhminhtam910', 'trinhminhtam910', 0, 398, 1, '2021-12-22 03:49:39', '2021-12-22 03:49:39'),
(238, 'Instagram', 'https://www.instagram.com/_m.tam', 'https://www.instagram.com/_m.tam', '_m.tam', 1, 398, 2, '2021-12-22 03:50:11', '2021-12-22 03:50:15'),
(239, 'Facebook', 'https://www.facebook.com/tam.phamthien.562', 'https://www.facebook.com/tam.phamthien.562', 'tam.phamthien.562', 0, 413, 1, '2021-12-22 05:37:47', '2021-12-22 05:37:47'),
(240, 'Instagram', 'https://www.instagram.com/kangnam.hair.studio', 'https://www.instagram.com/kangnam.hair.studio', 'kangnam.hair.studio', 0, 413, 2, '2021-12-22 05:38:36', '2021-12-22 05:38:36'),
(241, 'Facebook', 'https://www.facebook.com/Toran88', 'https://www.facebook.com/Toran88', 'Toran88', 0, 451, 1, '2021-12-24 01:15:36', '2021-12-24 01:15:36'),
(242, 'NGUYEN THANH THUY', '0011004395510', '0011004395510', NULL, 2, 62, 31, '2021-12-28 00:49:03', '2021-12-28 00:52:17'),
(243, 'NGUYEN THANH THUY', '666198999', '666198999', NULL, 3, 62, 25, '2021-12-28 00:50:16', '2021-12-28 00:52:17'),
(245, 'Phone', '0943198198', '0943198198', '0943198198', 4, 62, 19, '2021-12-28 00:51:38', '2021-12-28 00:52:17'),
(246, 'SMS', '0943198198', '0943198198', '0943198198', 5, 62, 20, '2021-12-28 00:52:00', '2021-12-28 00:52:17'),
(247, 'Facebook', 'https://www.facebook.com/quangtrung.nguyen.7505', 'https://www.facebook.com/quangtrung.nguyen.7505', 'quangtrung.nguyen.7505', 0, 315, 1, '2021-12-28 01:12:25', '2021-12-28 01:12:25'),
(248, 'Tiktok', 'https://vt.tiktok.com/ZSeu8FM2G/', 'https://vt.tiktok.com/ZSeu8FM2G/', 'https://vt.tiktok.com/ZSeu8FM2G/', 3, 315, 5, '2021-12-28 01:13:22', '2021-12-28 03:17:51'),
(249, 'Zalo', 'https://zalo.me/0964429999', 'https://zalo.me/0964429999', '0964429999', 4, 315, 15, '2021-12-28 01:13:52', '2021-12-28 03:17:51'),
(250, 'Youtube', 'https://youtube.com/channel/UC9qSuvXdkwqZcEwTve-4N3g', 'https://youtube.com/channel/UC9qSuvXdkwqZcEwTve-4N3g', 'UC9qSuvXdkwqZcEwTve-4N3g', 2, 315, 4, '2021-12-28 01:14:53', '2021-12-28 03:17:51'),
(251, 'Phone', '0964429999', '0964429999', '0964429999', 5, 315, 19, '2021-12-28 01:15:19', '2021-12-28 03:17:51'),
(252, 'Nguyen Quang Trung', '19188822999999', '19188822999999', NULL, 6, 315, 30, '2021-12-28 01:16:08', '2021-12-28 03:17:51'),
(253, 'Nguyen Quang Trung', '0691008399999', '0691008399999', NULL, 7, 315, 31, '2021-12-28 01:16:50', '2021-12-28 03:17:51'),
(254, 'Fan page', 'https://www.facebook.com/H3TAuto/', 'https://www.facebook.com/H3TAuto/', 'H3TAuto', 1, 315, 1, '2021-12-28 03:17:40', '2021-12-28 03:19:02'),
(255, 'Facebook', 'https://www.facebook.com/hoangduchiepgochannel', 'https://www.facebook.com/hoangduchiepgochannel', 'hoangduchiepgochannel', 0, 475, 1, '2021-12-31 20:46:11', '2022-01-04 01:27:56'),
(256, 'Youtube', 'https://youtube.com/channel/UCG96qHEpRlor7O6JzzOT74A', 'https://youtube.com/channel/UCG96qHEpRlor7O6JzzOT74A', 'UCG96qHEpRlor7O6JzzOT74A', 1, 475, 4, '2021-12-31 20:46:51', '2022-01-04 01:27:56'),
(257, 'Tiktok', 'https://vt.tiktok.com/ZSeHSrDHH/', 'https://vt.tiktok.com/ZSeHSrDHH/', 'https://vt.tiktok.com/ZSeHSrDHH/', 2, 475, 5, '2021-12-31 20:47:45', '2022-01-04 01:27:56'),
(260, 'Zalo', 'https://zalo.me/0866864814', 'https://zalo.me/0866864814', '0866864814', 3, 475, 15, '2021-12-31 20:49:58', '2022-01-10 19:37:41'),
(261, 'Email', 'Contact.gotap1688@gmail.com', 'Contact.gotap1688@gmail.com', 'Contact.gotap1688@gmail.com', 4, 475, 21, '2021-12-31 20:50:24', '2022-01-05 19:47:21'),
(262, 'Phone', '0912238975', '0912238975', '0912238975', 6, 475, 19, '2021-12-31 20:50:45', '2022-01-05 19:47:21'),
(263, 'SMS', '0912238975', '0912238975', '0912238975', 5, 475, 20, '2021-12-31 20:51:02', '2022-01-05 19:47:21'),
(265, 'Facebook', 'https://www.facebook.com/chieens.wiki', 'https://www.facebook.com/chieens.wiki', 'chieens.wiki', 0, 558, 1, '2022-01-03 01:04:07', '2022-01-03 01:04:07'),
(266, 'Zalo', 'https://zalo.me/0967434319', 'https://zalo.me/0967434319', '0967434319', 1, 558, 15, '2022-01-03 01:05:31', '2022-01-03 01:05:44'),
(269, 'Facebook', 'https://www.facebook.com/quyetcar', 'https://www.facebook.com/quyetcar', 'quyetcar', 0, 553, 1, '2022-01-03 01:05:56', '2022-01-03 01:05:56'),
(270, 'Phone', '0974175555', '0974175555', '0974175555', 5, 553, 19, '2022-01-03 01:09:17', '2022-01-03 20:59:39'),
(272, 'Facebook', 'https://www.facebook.com/HungVuLe1986', 'https://www.facebook.com/HungVuLe1986', 'HungVuLe1986', 0, 494, 1, '2022-01-03 01:09:38', '2022-01-03 01:09:38'),
(273, 'Zalo', 'https://zalo.me/0766653333', 'https://zalo.me/0766653333', '0766653333', 3, 494, 15, '2022-01-03 01:10:34', '2022-01-03 22:26:11'),
(274, 'Facebook', 'https://www.facebook.com/phu.zack', 'https://www.facebook.com/phu.zack', 'phu.zack', 2, 541, 1, '2022-01-03 01:10:59', '2022-01-03 01:17:30'),
(275, 'Instagram', 'https://www.instagram.com/hungvu_86', 'https://www.instagram.com/hungvu_86', 'hungvu_86', 4, 494, 2, '2022-01-03 01:11:26', '2022-01-03 22:26:11'),
(276, 'Zalo', 'https://zalo.me/0975844444', 'https://zalo.me/0975844444', '0975844444', 1, 541, 15, '2022-01-03 01:11:43', '2022-01-03 01:14:16'),
(277, 'Tiktok', 'https://vt.tiktok.com/ZSeHEfxAf/', 'https://vt.tiktok.com/ZSeHEfxAf/', 'https://vt.tiktok.com/ZSeHEfxAf/', 5, 494, 5, '2022-01-03 01:12:45', '2022-01-03 22:26:11'),
(278, 'Tiktok', 'https://vt.tiktok.com/ZSeHEyHhu/', 'https://vt.tiktok.com/ZSeHEyHhu/', 'https://vt.tiktok.com/ZSeHEyHhu/', 5, 541, 5, '2022-01-03 01:13:05', '2022-01-03 01:17:30'),
(279, 'Youtube', 'https://youtube.com/channel/UCjX9W4y-D4UN1E4r6LOaeBg', 'https://youtube.com/channel/UCjX9W4y-D4UN1E4r6LOaeBg', 'UCjX9W4y-D4UN1E4r6LOaeBg', 6, 541, 4, '2022-01-03 01:14:10', '2022-01-03 01:17:30'),
(280, 'Phone', '0975844444', '0975844444', '0975844444', 0, 541, 19, '2022-01-03 01:14:45', '2022-01-03 01:14:45'),
(281, 'Nguyen Huu Phu', '999689399999', '999689399999', NULL, 3, 541, 24, '2022-01-03 01:15:32', '2022-01-03 01:17:30'),
(282, 'Nguyen Huu Phu', '19033460326016', '19033460326016', NULL, 4, 541, 30, '2022-01-03 01:16:08', '2022-01-03 01:17:30'),
(283, 'Vu Le Hung', '0810138789999', '0810138789999', NULL, 2, 494, 24, '2022-01-03 01:26:39', '2022-01-03 22:26:11'),
(284, 'Facebook', 'https://www.facebook.com/profile.php?id=100075668206216', 'https://www.facebook.com/profile.php?id=100075668206216', '100075668206216', 0, 512, 1, '2022-01-03 01:28:54', '2022-01-03 01:28:54'),
(285, 'Zalo', 'https://zalo.me/0707156666', 'https://zalo.me/0707156666', '0707156666', 1, 512, 15, '2022-01-03 01:29:23', '2022-01-03 01:31:20'),
(286, 'Nguyễn Đức Hoàng', '8889666666', '8889666666', NULL, 2, 512, 24, '2022-01-03 01:30:09', '2022-01-03 01:31:20'),
(287, 'Phone', '0707156666', '0707156666', '0707156666', 3, 512, 19, '2022-01-03 01:30:57', '2022-01-03 01:31:20'),
(288, 'Bùi văn chiến', '3030198898888', '3030198898888', NULL, 3, 558, 24, '2022-01-03 06:19:57', '2022-01-03 06:22:10'),
(289, 'Bùi Chiến', '0967434319', '0967434319', '0967434319', 2, 558, 19, '2022-01-03 06:20:55', '2022-01-03 06:22:10'),
(290, 'Facebook', 'https://www.facebook.com/thaomoc.kute', 'https://www.facebook.com/thaomoc.kute', 'thaomoc.kute', 0, 518, 1, '2022-01-03 19:56:51', '2022-01-03 19:56:51'),
(291, 'Zalo', 'https://zalo.me/0962309922', 'https://zalo.me/0962309922', '0962309922', 1, 518, 15, '2022-01-03 19:57:43', '2022-01-03 19:59:13'),
(292, 'Phone', '0962309922', '0962309922', '0962309922', 2, 518, 19, '2022-01-03 19:58:12', '2022-01-03 19:59:13'),
(293, 'SMS', '0962309922', '0962309922', '0962309922', 3, 518, 20, '2022-01-03 19:58:33', '2022-01-03 19:59:13'),
(294, 'Nguyễn Thị Thảo', '19031556988998', '19031556988998', NULL, 4, 518, 30, '2022-01-03 19:59:10', '2022-01-03 19:59:13'),
(295, 'Facebook', 'https://www.facebook.com/quangtrung.nguyen.7505', 'https://www.facebook.com/quangtrung.nguyen.7505', 'quangtrung.nguyen.7505', 0, 507, 1, '2022-01-03 20:21:55', '2022-01-03 20:21:55'),
(296, 'Youtube', 'https://youtube.com/channel/UC9qSuvXdkwqZcEwTve-4N3g', 'https://youtube.com/channel/UC9qSuvXdkwqZcEwTve-4N3g', 'UC9qSuvXdkwqZcEwTve-4N3g', 2, 507, 4, '2022-01-03 20:22:37', '2022-01-03 20:34:21'),
(297, 'Tiktok', 'https://vt.tiktok.com/ZSe9jQCSQ/', 'https://vt.tiktok.com/ZSe9jQCSQ/', 'https://vt.tiktok.com/ZSe9jQCSQ/', 3, 507, 5, '2022-01-03 20:23:39', '2022-01-03 20:34:21'),
(298, 'Facebook', 'https://www.facebook.com/nguyen.quanghuy1', 'https://www.facebook.com/nguyen.quanghuy1', 'nguyen.quanghuy1', 0, 511, 1, '2022-01-03 20:23:47', '2022-01-03 20:24:28'),
(299, 'Facebook', 'https://www.facebook.com/kaka.hieu.9', 'https://www.facebook.com/kaka.hieu.9', 'kaka.hieu.9', 1, 498, 1, '2022-01-03 20:24:43', '2022-01-03 20:34:29'),
(300, 'Zalo', 'https://zalo.me/0964429999', 'https://zalo.me/0964429999', '0964429999', 5, 507, 15, '2022-01-03 20:25:06', '2022-01-03 20:53:30'),
(301, 'Zalo', 'https://zalo.me/0967178888', 'https://zalo.me/0967178888', '0967178888', 2, 498, 15, '2022-01-03 20:25:19', '2022-01-03 20:34:30'),
(302, 'Zalo', 'https://zalo.me/0912157777', 'https://zalo.me/0912157777', '0912157777', 2, 511, 15, '2022-01-03 20:25:22', '2022-01-03 20:35:28'),
(303, 'Phone', '0964429999', '0964429999', '0964429999', 4, 507, 19, '2022-01-03 20:25:42', '2022-01-03 20:53:30'),
(304, 'Nguyen Quang Trung', '19188822999999', '19188822999999', NULL, 6, 507, 30, '2022-01-03 20:26:51', '2022-01-03 20:34:21'),
(305, 'Nguyen Quang Huy', '066704067777777', '066704067777777', NULL, 5, 511, 29, '2022-01-03 20:27:10', '2022-01-03 20:35:28'),
(306, 'Telegram', 'https://t.me/@CR7', 'https://t.me/@CR7', NULL, 3, 498, 12, '2022-01-03 20:28:29', '2022-01-03 20:34:30'),
(307, 'Nguyen Quang Trung', '0691008399999', '0691008399999', NULL, 7, 507, 31, '2022-01-03 20:28:33', '2022-01-03 20:34:21'),
(308, 'Bui Manh Hieu', '19026804790888', '19026804790888', NULL, 4, 498, 30, '2022-01-03 20:30:18', '2022-01-03 20:34:30'),
(309, 'Email', 'hieu.buimanh1988@gmail.com', 'hieu.buimanh1988@gmail.com', 'hieu.buimanh1988@gmail.com', 5, 498, 21, '2022-01-03 20:31:14', '2022-01-03 20:34:30'),
(311, 'Facebook', 'https://www.facebook.com/profile.php?id=100014041664831', 'https://www.facebook.com/profile.php?id=100014041664831', '100014041664831', 1, 506, 1, '2022-01-03 20:31:33', '2022-01-03 20:42:44'),
(312, 'Facebook', 'https://www.facebook.com/thien.bim', 'https://www.facebook.com/thien.bim', 'thien.bim', 1, 527, 1, '2022-01-03 20:31:59', '2022-01-03 20:36:09'),
(313, 'Bui Manh Hieu', '0691003988888', '0691003988888', NULL, 7, 498, 31, '2022-01-03 20:32:07', '2022-01-03 20:34:30'),
(314, 'Zalo', 'https://zalo.me/0962912222', 'https://zalo.me/0962912222', '0962912222', 2, 506, 15, '2022-01-03 20:32:51', '2022-01-03 20:42:44'),
(315, 'Bui Manh Hieu', '106886733888', '106886733888', NULL, 6, 498, 32, '2022-01-03 20:33:18', '2022-01-03 20:34:30'),
(316, 'Phone', '0912157777', '0912157777', '0912157777', 1, 511, 19, '2022-01-03 20:33:20', '2022-01-03 20:35:28'),
(317, 'Bùi Đức Thiện', '19029389700011', '19029389700011', NULL, 5, 527, 30, '2022-01-03 20:33:38', '2022-01-03 20:41:50'),
(318, 'Tiktok', 'https://vt.tiktok.com/ZSe9jnHsb/', 'https://vt.tiktok.com/ZSe9jnHsb/', 'https://vt.tiktok.com/ZSe9jnHsb/', 3, 506, 5, '2022-01-03 20:33:46', '2022-01-03 20:42:44'),
(319, 'Nguyen Quang Huy', '19055777777777', '19055777777777', NULL, 3, 511, 30, '2022-01-03 20:34:10', '2022-01-03 20:35:28'),
(320, 'Email', 'trungnqbmw@gmail.com', 'trungnqbmw@gmail.com', 'trungnqbmw@gmail.com', 1, 507, 21, '2022-01-03 20:34:16', '2022-01-03 20:34:21'),
(321, 'Phone', '0967178888', '0967178888', '0967178888', 0, 498, 19, '2022-01-03 20:34:19', '2022-01-03 20:34:19'),
(322, 'Phone', '0915085678', '0915085678', '0915085678', 0, 527, 19, '2022-01-03 20:34:27', '2022-01-03 20:34:27'),
(323, 'Zalo', 'https://zalo.me/0915085678', 'https://zalo.me/0915085678', '0915085678', 2, 527, 15, '2022-01-03 20:34:50', '2022-01-03 20:36:09'),
(324, 'Nguyen Quang Huy', '1155777777', '1155777777', NULL, 4, 511, 31, '2022-01-03 20:35:08', '2022-01-03 20:35:28'),
(325, 'Bùi Đức Thiện', '366796666', '366796666', NULL, 6, 527, 29, '2022-01-03 20:35:50', '2022-01-03 20:41:50'),
(326, 'Youtube', 'https://youtube.com/channel/UC96cwlab81_kX0ef_VEjllQ', 'https://youtube.com/channel/UC96cwlab81_kX0ef_VEjllQ', 'UC96cwlab81_kX0ef_VEjllQ', 4, 506, 4, '2022-01-03 20:36:32', '2022-01-03 20:42:44'),
(327, 'Nguyen Cong Thang', '19011222222225', '19011222222225', NULL, 5, 506, 30, '2022-01-03 20:37:26', '2022-01-03 20:42:44'),
(328, 'Phone', '0962912222', '0962912222', '0962912222', 0, 506, 19, '2022-01-03 20:38:18', '2022-01-03 20:42:44'),
(329, 'Tiktok', 'https://vt.tiktok.com/ZSe96np86/', 'https://vt.tiktok.com/ZSe96np86/', 'https://vt.tiktok.com/ZSe96np86/', 4, 527, 5, '2022-01-03 20:39:48', '2022-01-03 22:05:56'),
(331, 'Trần Minh Quyết', '19030173695011', '19030173695011', NULL, 3, 553, 30, '2022-01-03 20:50:21', '2022-01-03 20:59:39'),
(332, 'Trần Minh Quyết', '025889999', '025889999', NULL, 4, 553, 29, '2022-01-03 20:50:46', '2022-01-03 20:59:39'),
(335, 'Tiktok', 'https://www.tiktok.com/@quyeth3tauto', 'https://www.tiktok.com/@quyeth3tauto', 'https://www.tiktok.com/@quyeth3tauto', 2, 553, 5, '2022-01-03 20:58:46', '2022-01-03 20:59:39'),
(336, 'Zalo', 'https://zalo.me/0974175555', 'https://zalo.me/0974175555', '0974175555', 1, 553, 15, '2022-01-03 20:59:30', '2022-01-03 20:59:39'),
(337, 'Phone', '0766653333', '0766653333', '0766653333', 1, 494, 19, '2022-01-03 22:26:06', '2022-01-03 22:26:11'),
(338, 'Website', 'http://h3tauto.vn/', 'http://h3tauto.vn/', NULL, 3, 527, 18, '2022-01-03 22:55:52', '2022-01-03 22:56:05'),
(340, 'Facebook', 'https://www.facebook.com/khailocxoay2003', 'https://www.facebook.com/khailocxoay2003', 'khailocxoay2003', 0, 329, 1, '2022-01-05 01:54:32', '2022-01-05 01:54:32'),
(341, 'Tiktok', 'https://vt.tiktok.com/ZSe9CDdQb/', 'https://vt.tiktok.com/ZSe9CDdQb/', 'https://vt.tiktok.com/ZSe9CDdQb/', 1, 329, 5, '2022-01-05 01:55:11', '2022-01-05 01:56:25'),
(342, 'Instagram', 'https://www.instagram.com/klx_2003', 'https://www.instagram.com/klx_2003', 'klx_2003', 2, 329, 2, '2022-01-05 01:56:01', '2022-01-05 01:56:25'),
(343, 'Zalo', 'https://zalo.me/0383268550', 'https://zalo.me/0383268550', '0383268550', 3, 329, 15, '2022-01-05 01:56:22', '2022-01-05 01:56:25'),
(344, 'Facebook', 'https://www.facebook.com/kiendaotac', 'https://www.facebook.com/kiendaotac', 'kiendaotac', 0, 47, 1, '2022-01-05 02:58:28', '2022-01-05 02:58:28'),
(345, 'Facebook', 'https://www.facebook.com/nguyentuannamcom', 'https://www.facebook.com/nguyentuannamcom', 'nguyentuannamcom', 0, 47, 1, '2022-01-05 02:59:51', '2022-01-05 02:59:51'),
(346, 'Techcombank', '19035848710015', '19035848710015', NULL, 7, 475, 30, '2022-01-05 19:58:10', '2022-05-15 06:08:43'),
(347, 'Vietcombank', '0821000001654', '0821000001654', NULL, 8, 475, 31, '2022-01-05 19:58:50', '2022-05-15 06:08:55'),
(348, 'Facebook', 'https://www.facebook.com/minhtam2501', 'https://www.facebook.com/minhtam2501', 'minhtam2501', 1, 429, 1, '2022-01-07 00:41:05', '2022-01-07 02:12:21'),
(349, 'Instagram', 'http://www.instagram.com/be_teng_princess2501', 'http://www.instagram.com/be_teng_princess2501', 'be_teng_princess2501', 3, 429, 2, '2022-01-07 02:05:44', '2022-01-07 02:12:21'),
(350, 'Tiktok', 'https://www.tiktok.com/@Be_TâmTâm', 'https://www.tiktok.com/@Be_TâmTâm', 'https://www.tiktok.com/@Be_TâmTâm', 4, 429, 5, '2022-01-07 02:06:54', '2022-01-07 02:12:21'),
(351, 'Zalo', 'https://zalo.me/0879382918', 'https://zalo.me/0879382918', '0879382918', 2, 429, 15, '2022-01-07 02:07:26', '2022-01-07 02:12:21'),
(352, 'DANG THI MINH TAM', '19036712007015', '19036712007015', NULL, 5, 429, 30, '2022-01-07 02:09:11', '2022-01-07 02:12:21'),
(353, 'Phone', '0879382918', '0879382918', '0879382918', 0, 429, 19, '2022-01-07 02:10:53', '2022-01-07 02:10:53'),
(354, 'DANG THI MINH TAM', '03201010645196', '03201010645196', NULL, 6, 429, 27, '2022-01-07 02:11:51', '2022-01-07 02:12:21'),
(355, 'Facebook', 'https://www.facebook.com/hana.car222', 'https://www.facebook.com/hana.car222', 'hana.car222', 0, 486, 1, '2022-01-19 01:14:24', '2022-01-19 01:14:24'),
(356, 'Zalo', 'https://zalo.me/0912201666', 'https://zalo.me/0912201666', '0912201666', 2, 486, 15, '2022-01-19 01:15:02', '2022-01-19 01:22:04'),
(357, 'Telegram', 'https://t.me/thutrangst', 'https://t.me/thutrangst', 'thutrangst', 4, 486, 12, '2022-01-19 01:17:26', '2022-01-19 04:58:53'),
(358, 'Quang Trọng (Sontungauto)', 'https://www.facebook.com/quangtrongauto', 'https://www.facebook.com/quangtrongauto', 'quangtrongauto', 0, 497, 1, '2022-01-19 01:19:55', '2022-01-19 01:19:55'),
(359, 'Trọng Sontung Auto', 'https://zalo.me/0985908888', 'https://zalo.me/0985908888', '0985908888', 6, 497, 15, '2022-01-19 01:20:44', '2022-01-19 01:23:16'),
(360, 'Nguyễn Quang Trọng', '20982', '20982', NULL, 2, 497, 25, '2022-01-19 01:21:42', '2022-01-19 01:23:16'),
(361, 'Nguyễn Quang Trọng', '20982', '20982', NULL, 6, 486, 25, '2022-01-19 01:21:45', '2022-01-19 04:58:53'),
(363, 'Nguyễn Quang Trọng', '397788888888', '397788888888', NULL, 3, 497, 25, '2022-01-19 01:22:08', '2022-01-19 01:23:16'),
(364, 'Nguyễn Quang Trọng', '361668888', '361668888', NULL, 1, 497, 28, '2022-01-19 01:22:40', '2022-01-19 01:23:16'),
(365, 'Facebook', 'https://www.facebook.com/kiendaotac', 'https://www.facebook.com/kiendaotac', 'kiendaotac', 4, 497, 1, '2022-01-19 01:23:11', '2022-01-19 01:23:16'),
(366, 'Facebook', 'https://www.facebook.com/kiendaotac', 'https://www.facebook.com/kiendaotac', 'kiendaotac', 5, 497, 1, '2022-01-19 01:23:12', '2022-01-19 01:23:16'),
(367, 'Facebook', 'https://www.facebook.com/thitga.luoc.54', 'https://www.facebook.com/thitga.luoc.54', 'thitga.luoc.54', 2, 523, 1, '2022-01-19 01:23:25', '2022-01-19 02:03:21'),
(368, 'Zalo', 'https://zalo.me/0911888128', 'https://zalo.me/0911888128', '0911888128', 4, 523, 15, '2022-01-19 01:24:42', '2022-01-19 02:04:29'),
(369, 'Zalo', 'https://zalo.me/0926615555', 'https://zalo.me/0926615555', '0926615555', 3, 523, 15, '2022-01-19 01:24:59', '2022-01-19 02:04:29'),
(370, 'Facebook', 'https://www.facebook.com/tieulitu1', 'https://www.facebook.com/tieulitu1', 'tieulitu1', 2, 540, 1, '2022-01-19 01:26:45', '2022-01-19 01:41:03'),
(371, 'Zalo', 'https://zalo.me/0877973333', 'https://zalo.me/0877973333', '0877973333', 1, 540, 15, '2022-01-19 01:27:51', '2022-01-19 01:29:29'),
(373, 'Phone', '0877973333', '0877973333', '0877973333', 0, 540, 19, '2022-01-19 01:40:55', '2022-01-19 01:40:55'),
(374, 'Zalo', 'https://zalo.me/0915603333', 'https://zalo.me/0915603333', '0915603333', 1, 486, 15, '2022-01-19 01:44:29', '2022-01-19 04:58:53'),
(375, 'Instagram', 'https://www.instagram.com/odcud93', 'https://www.instagram.com/odcud93', 'odcud93', 7, 523, 2, '2022-01-19 01:46:21', '2022-01-19 02:04:29'),
(376, 'Phone', '09111888128', '09111888128', '09111888128', 0, 523, 19, '2022-01-19 01:47:06', '2022-01-19 02:02:31'),
(377, 'Nguyễn Quang Trọng', '397788888888', '397788888888', NULL, 5, 523, 25, '2022-01-19 01:48:11', '2022-01-19 02:04:29'),
(378, 'Sầm Thị Huệ', '166866666666', '166866666666', NULL, 6, 523, 25, '2022-01-19 01:48:54', '2022-01-19 02:04:29'),
(379, 'SonTungAuto', 'https://sontungauto.vn/', 'https://sontungauto.vn/', NULL, 8, 523, 18, '2022-01-19 02:00:58', '2022-01-19 02:04:29'),
(380, 'Phone', '0926615555', '0926615555', '0926615555', 1, 523, 19, '2022-01-19 02:03:02', '2022-01-19 02:03:21'),
(381, 'Facebook', 'https://www.facebook.com/profile.php?id=100000715612427', 'https://www.facebook.com/profile.php?id=100000715612427', '100000715612427', 0, 535, 1, '2022-01-19 02:11:31', '2022-01-19 02:11:31'),
(382, 'Tiktok', 'https://vt.tiktok.com/ZSe48DqYo/', 'https://vt.tiktok.com/ZSe48DqYo/', 'https://vt.tiktok.com/ZSe48DqYo/', 2, 535, 5, '2022-01-19 02:13:31', '2022-01-19 02:17:53'),
(383, 'Phùng Hữu Đức', '19032561517886', '19032561517886', NULL, 1, 535, 30, '2022-01-19 02:17:48', '2022-01-19 02:17:53'),
(385, 'Instagram', 'https://www.instagram.com/kiendaotac', 'https://www.instagram.com/kiendaotac', 'kiendaotac', 1, 515, 2, '2022-01-19 03:20:30', '2022-01-19 03:22:22'),
(386, 'Zalo', 'https://zalo.me/0985108032', 'https://zalo.me/0985108032', '0985108032', 2, 515, 15, '2022-01-19 03:20:40', '2022-01-19 03:22:22'),
(387, 'Tiktok', 'https://www.tiktok.com/@kiendaotac', 'https://www.tiktok.com/@kiendaotac', 'https://www.tiktok.com/@kiendaotac', 3, 515, 5, '2022-01-19 03:21:06', '2022-01-19 03:22:22'),
(388, 'Tiktok', 'https://www.tiktok.com/@kiendaotac', 'https://www.tiktok.com/@kiendaotac', 'https://www.tiktok.com/@kiendaotac', 4, 515, 5, '2022-01-19 03:21:44', '2022-01-19 03:22:22'),
(389, 'Whatsapp', 'https://wa.me/0912201666', 'https://wa.me/0912201666', '0912201666', 3, 486, 13, '2022-01-19 04:57:52', '2022-01-19 04:58:53'),
(390, 'Sầm Thị Huệ', '1018686686', '1018686686', NULL, 5, 486, 31, '2022-01-19 04:58:44', '2022-01-19 04:58:53'),
(392, 'Zalo', 'https://zalo.me/0869696618', 'https://zalo.me/0869696618', '0869696618', 2, 488, 15, '2022-01-19 06:43:59', '2022-01-19 06:53:13'),
(393, 'Lưu Nga', '0869696618', '0869696618', '0869696618', 0, 488, 19, '2022-01-19 06:45:14', '2022-01-19 06:53:13'),
(394, 'Lưu Thị Quỳnh Nga', '19036961855018', '19036961855018', NULL, 3, 488, 30, '2022-01-19 06:46:27', '2022-01-19 06:46:35'),
(396, 'Facebook', 'https://www.facebook.com/luungaatta', 'https://www.facebook.com/luungaatta', 'luungaatta', 1, 488, 1, '2022-01-19 06:52:34', '2022-01-19 06:53:13'),
(397, 'Facebook', 'https://www.facebook.com/profile.php?id=100011642950577', 'https://www.facebook.com/profile.php?id=100011642950577', '100011642950577', 0, 515, 1, '2022-01-19 21:13:31', '2022-01-19 21:13:31'),
(398, 'Sầm Huệ Minh', 'https://www.facebook.com/hueminhauto', 'https://www.facebook.com/hueminhauto', 'hueminhauto', 0, 546, 1, '2022-01-19 21:17:50', '2022-01-19 21:17:50'),
(399, 'Telegram', 'https://t.me/0935646666', 'https://t.me/0935646666', '0935646666', 1, 546, 12, '2022-01-19 21:18:36', '2022-01-19 21:22:44'),
(400, 'Zalo', 'https://zalo.me/0961656666', 'https://zalo.me/0961656666', '0961656666', 2, 546, 15, '2022-01-19 21:18:57', '2022-01-19 21:22:44'),
(401, 'Whatsapp', 'https://wa.me/0961656666', 'https://wa.me/0961656666', '0961656666', 3, 546, 13, '2022-01-19 21:20:01', '2022-01-19 21:22:44'),
(402, 'Sầm Thị Huệ', '1018686686', '1018686686', NULL, 4, 546, 31, '2022-01-19 21:20:26', '2022-01-19 21:22:44'),
(404, 'Sầm Thị Huệ', '166866666666', '166866666666', NULL, 5, 546, 25, '2022-01-19 21:21:23', '2022-01-19 21:22:44'),
(405, 'Sầm Thị Huệ', '166866666666', '166866666666', NULL, 6, 546, 30, '2022-01-19 21:22:07', '2022-01-19 21:22:44'),
(406, 'Sầm Thị Huệ', '15110000492555', '15110000492555', NULL, 7, 546, 23, '2022-01-19 21:22:41', '2022-01-19 21:22:44'),
(407, 'Facebook', 'https://www.facebook.com/tungdinh1092001', 'https://www.facebook.com/tungdinh1092001', 'tungdinh1092001', 0, 483, 1, '2022-01-19 21:37:27', '2022-01-19 21:37:27'),
(408, 'Tiktok', 'www.tiktok.com/@dinhtung_109', 'www.tiktok.com/@dinhtung_109', 'www.tiktok.com/@dinhtung_109', 4, 483, 5, '2022-01-19 21:39:01', '2022-01-19 21:46:30'),
(409, 'Zalo', '0922665588', '0922665588', NULL, 5, 483, 15, '2022-01-19 21:40:34', '2022-01-19 21:46:30'),
(410, 'SMS', '0922665588', '0922665588', '0922665588', 1, 483, 20, '2022-01-19 21:44:45', '2022-01-19 21:46:30'),
(411, 'Phone', '0922665588', '0922665588', '0922665588', 2, 483, 19, '2022-01-19 21:45:12', '2022-01-19 21:46:30'),
(412, 'NGUYEN QUANG TRONG', '20982', '20982', NULL, 3, 483, 25, '2022-01-19 21:46:27', '2022-01-19 21:46:30'),
(413, 'Zalo', 'https://zalo.me/0969933779', 'https://zalo.me/0969933779', '0969933779', 0, 535, 15, '2022-01-19 23:41:00', '2022-01-19 23:41:00'),
(414, 'Facebook', 'https://www.facebook.com/hoangduchiepgochannel', 'https://www.facebook.com/hoangduchiepgochannel', 'hoangduchiepgochannel', 0, 536, 1, '2022-01-20 22:12:14', '2022-04-07 22:58:03'),
(415, 'Youtube', 'https://youtube.com/channel/UCG96qHEpRlor7O6JzzOT74A', 'https://youtube.com/channel/UCG96qHEpRlor7O6JzzOT74A', 'UCG96qHEpRlor7O6JzzOT74A', 2, 536, 4, '2022-01-20 22:12:49', '2022-04-07 22:04:22'),
(416, 'Tiktok', 'https://vt.tiktok.com/ZSdMQmyKn/', 'https://vt.tiktok.com/ZSdMQmyKn/', 'https://vt.tiktok.com/ZSdMQmyKn/', 3, 536, 5, '2022-01-20 22:14:15', '2022-04-07 22:04:22'),
(417, 'Instagram', 'https://www.instagram.com/xuanhoalee.205', 'https://www.instagram.com/xuanhoalee.205', 'xuanhoalee.205', 4, 536, 2, '2022-01-20 22:14:51', '2022-04-07 22:04:22'),
(418, 'Zalo', 'https://zalo.me/0866864814', 'https://zalo.me/0866864814', '0866864814', 5, 536, 15, '2022-01-20 22:15:14', '2022-04-07 22:04:22'),
(419, 'Email', 'Contact.gotap1688@gmail.com', 'Contact.gotap1688@gmail.com', 'Contact.gotap1688@gmail.com', 6, 536, 21, '2022-01-20 22:15:40', '2022-04-07 22:04:22');
INSERT INTO `social_items` (`id`, `name`, `description`, `social_value`, `social_app`, `order`, `account_id`, `social_id`, `created_at`, `updated_at`) VALUES
(420, 'Phone', '0866864814', '0866864814', '0866864814', 7, 536, 19, '2022-01-20 22:16:06', '2022-04-07 22:04:22'),
(421, 'SMS', '0866864814', '0866864814', '0866864814', 8, 536, 20, '2022-01-20 22:16:29', '2022-04-07 22:04:22'),
(422, 'Techcombank', '19035848710015', '19035848710015', NULL, 10, 536, 30, '2022-01-20 22:17:01', '2022-04-07 22:04:22'),
(423, 'Vietcombank', '0821000001654', '0821000001654', NULL, 11, 536, 31, '2022-01-20 22:17:40', '2022-04-07 22:04:22'),
(424, 'Facebook', 'https://www.facebook.com/xuanhoa.lee.205', 'https://www.facebook.com/xuanhoa.lee.205', 'xuanhoa.lee.205', 0, 109, 1, '2022-02-09 03:26:49', '2022-02-09 03:26:49'),
(425, 'Tiktok', 'https://vt.tiktok.com/ZSeGc4qBv/', 'https://vt.tiktok.com/ZSeGc4qBv/', 'https://vt.tiktok.com/ZSeGc4qBv/', 1, 109, 5, '2022-02-09 03:30:03', '2022-02-09 03:30:12'),
(426, 'Phone', '0962103908', '0962103908', '0962103908', 0, 109, 19, '2022-02-09 03:31:22', '2022-02-09 03:31:22'),
(427, 'Zalo', 'https://zalo.me/0365733158', 'https://zalo.me/0365733158', '0365733158', 0, 109, 15, '2022-02-09 03:31:59', '2022-02-09 03:31:59'),
(428, 'Facebook', 'https://www.facebook.com/duong.xuantruong.998', 'https://www.facebook.com/duong.xuantruong.998', 'duong.xuantruong.998', 0, 388, 1, '2022-02-09 21:00:58', '2022-02-09 21:00:58'),
(432, 'Tiktok', 'https://www.tiktok.com/@duongxuantruong29', 'https://www.tiktok.com/@duongxuantruong29', 'https://www.tiktok.com/@duongxuantruong29', 1, 388, 5, '2022-02-09 21:11:46', '2022-02-09 21:11:51'),
(433, 'Facebook', 'https://www.facebook.com/trinhtuananh95', 'https://www.facebook.com/trinhtuananh95', 'trinhtuananh95', 0, 520, 1, '2022-02-18 01:15:31', '2022-02-18 01:18:58'),
(434, 'Trịnh Tuấn Anh', '19035478658019', '19035478658019', NULL, 3, 520, 30, '2022-02-18 01:16:19', '2022-03-06 23:17:07'),
(435, 'Youtube', 'https://youtube.com/c/CHUNGAUTOVN', 'https://youtube.com/c/CHUNGAUTOVN', NULL, 3, 476, 4, '2022-02-18 01:41:57', '2022-02-18 02:03:01'),
(436, 'Tiktok', 'https://vt.tiktok.com/ZSe7CHxU8/', 'https://vt.tiktok.com/ZSe7CHxU8/', 'https://vt.tiktok.com/ZSe7CHxU8/', 0, 476, 5, '2022-02-18 01:42:46', '2022-02-18 01:54:29'),
(437, 'Zalo', 'https://zalo.me/0927626888', 'https://zalo.me/0927626888', '0927626888', 4, 476, 15, '2022-02-18 01:44:06', '2022-02-18 02:03:01'),
(438, 'Facebook', 'https://www.facebook.com/DVDoto', 'https://www.facebook.com/DVDoto', 'DVDoto', 5, 476, 1, '2022-02-18 01:44:39', '2022-02-18 02:03:01'),
(439, 'Lê đăng trung', '0451000248176', '0451000248176', NULL, 8, 476, 31, '2022-02-18 01:45:12', '2022-02-18 02:03:01'),
(440, 'Page', 'https://www.facebook.com/ChungAuto.vncom/', 'https://www.facebook.com/ChungAuto.vncom/', 'ChungAuto.vncom', 2, 476, 1, '2022-02-18 01:52:23', '2022-02-18 02:03:01'),
(441, 'Phone', '0927626888', '0927626888', '0927626888', 1, 476, 19, '2022-02-18 02:01:22', '2022-02-18 02:03:01'),
(442, 'Email', 'Ledangtrung09@gmail.com', 'Ledangtrung09@gmail.com', 'Ledangtrung09@gmail.com', 7, 476, 21, '2022-02-18 02:02:06', '2022-02-18 02:03:01'),
(443, 'SMS', '0927626888', '0927626888', '0927626888', 6, 476, 20, '2022-02-18 02:02:39', '2022-02-18 02:03:01'),
(444, 'Zalo', 'https://zalo.me/0583969999', 'https://zalo.me/0583969999', '0583969999', 2, 520, 15, '2022-02-18 02:47:35', '2022-03-06 23:17:07'),
(445, 'MoMo', 'https://nhantien.momo.vn/0365733158', 'https://nhantien.momo.vn/0365733158', '0365733158', 9, 536, 14, '2022-02-23 02:38:52', '2022-04-07 22:04:22'),
(446, 'Facebook', 'https://www.facebook.com/kiendaotac', 'https://www.facebook.com/kiendaotac', 'kiendaotac', 0, 534, 1, '2022-02-23 19:18:53', '2022-02-23 19:18:53'),
(447, 'Zalo', 'https://zalo.me/0985108032', 'https://zalo.me/0985108032', '0985108032', 1, 534, 15, '2022-02-23 19:19:11', '2022-02-23 19:19:41'),
(448, 'Facebook', 'https://www.facebook.com/kiendaotac', 'https://www.facebook.com/kiendaotac', 'kiendaotac', 2, 534, 1, '2022-02-23 19:19:37', '2022-02-23 19:19:41'),
(449, 'Tuấn Anh', '0583969999', '0583969999', '0583969999', 1, 520, 19, '2022-03-06 23:16:58', '2022-03-06 23:17:07'),
(450, 'Facebook', 'https://www.facebook.com/profile.php?id=100011473222834', 'https://www.facebook.com/profile.php?id=100011473222834', '100011473222834', 0, 380, 1, '2022-03-13 07:30:26', '2022-03-13 07:30:26'),
(451, 'Tiktok', 'zdciphone', 'zdciphone', 'zdciphone', 1, 380, 5, '2022-03-13 07:33:16', '2022-03-13 07:33:19'),
(454, 'Zalo', 'https://zalo.me/0988227278', 'https://zalo.me/0988227278', '0988227278', 0, 380, 15, '2022-03-13 07:48:14', '2022-03-13 07:48:14'),
(455, 'Pham Gia Dung', '001091004645', '001091004645', NULL, 0, 380, 24, '2022-03-13 07:49:06', '2022-03-13 07:49:06'),
(456, 'Facebook', 'https://www.facebook.com/kmquyen2002', 'https://www.facebook.com/kmquyen2002', 'kmquyen2002', 4, 346, 1, '2022-03-14 03:13:44', '2022-03-14 23:08:28'),
(457, 'Instagram', 'https://www.instagram.com/kimmanhquyen', 'https://www.instagram.com/kimmanhquyen', 'kimmanhquyen', 1, 346, 2, '2022-03-14 03:14:03', '2022-03-14 23:08:28'),
(458, 'Tiktok', 'https://www.tiktok.com/@kmquyen2002', 'https://www.tiktok.com/@kmquyen2002', 'https://www.tiktok.com/@kmquyen2002', 2, 346, 5, '2022-03-14 03:14:27', '2022-03-14 23:08:28'),
(460, 'Facebook', 'https://www.facebook.com/bach.nichi', 'https://www.facebook.com/bach.nichi', 'bach.nichi', 2, 375, 1, '2022-03-14 20:11:57', '2022-03-14 20:18:03'),
(461, 'MoMo', 'https://nhantien.momo.vn/0962024281', 'https://nhantien.momo.vn/0962024281', '0962024281', 3, 375, 14, '2022-03-14 20:12:26', '2022-03-14 20:18:03'),
(462, 'Zalo', 'https://zalo.me/0962024281', 'https://zalo.me/0962024281', '0962024281', 4, 375, 15, '2022-03-14 20:13:09', '2022-03-14 20:18:03'),
(463, 'LE NGOC BACH', '01886319101', '01886319101', NULL, 0, 375, 26, '2022-03-14 20:13:50', '2022-03-14 20:13:50'),
(464, 'LE NGOC BACH', '213615653', '213615653', NULL, 1, 375, 25, '2022-03-14 20:16:26', '2022-03-14 20:18:03'),
(465, 'Phone', '0962024281', '0962024281', '0962024281', 5, 375, 19, '2022-03-14 20:17:45', '2022-03-14 20:18:03'),
(467, 'NGUYEN KIM MANH QUYEN', 'kimmanhquyen', 'kimmanhquyen', NULL, 3, 346, 26, '2022-03-14 22:57:48', '2022-03-14 23:08:28'),
(468, 'Phone', '0888436983', '0888436983', '0888436983', 0, 346, 19, '2022-03-14 22:58:44', '2022-03-14 23:02:20'),
(469, 'Messenger', 'http://m.me/kmquyen2002/', 'http://m.me/kmquyen2002/', NULL, 5, 346, 35, '2022-03-14 22:59:46', '2022-03-14 23:09:19'),
(470, 'Fanpage', 'https://www.facebook.com/kimmanhquyenofficial', 'https://www.facebook.com/kimmanhquyenofficial', 'kimmanhquyenofficial', 6, 346, 1, '2022-03-14 23:05:37', '2022-03-14 23:09:38'),
(472, 'Facebook', 'https://www.facebook.com/vutramie.2k', 'https://www.facebook.com/vutramie.2k', 'vutramie.2k', 0, 499, 1, '2022-03-18 03:39:54', '2022-03-19 02:05:26'),
(473, 'Tiktok', 'https://vt.tiktok.com/ZSdRVGG66/', 'https://vt.tiktok.com/ZSdRVGG66/', 'https://vt.tiktok.com/ZSdRVGG66/', 1, 499, 5, '2022-03-18 03:40:01', '2022-03-19 02:51:38'),
(474, 'Youtube', 'https://www.youtube.com/channel/UC_XPKXLZLSnQ8Mh26OKQphA', 'https://www.youtube.com/channel/UC_XPKXLZLSnQ8Mh26OKQphA', 'UC_XPKXLZLSnQ8Mh26OKQphA', 2, 499, 4, '2022-03-18 03:40:08', '2022-03-18 03:46:31'),
(475, 'Instagram', 'https://www.instagram.com/myvu_02', 'https://www.instagram.com/myvu_02', 'myvu_02', 3, 499, 2, '2022-03-18 03:40:15', '2022-03-19 03:10:22'),
(476, 'Zalo', 'https://zalo.me/0985108032', 'https://zalo.me/0985108032', '0985108032', 4, 499, 15, '2022-03-18 03:45:41', '2022-03-18 03:46:31'),
(477, 'Techcombank', '19035848710015', '19035848710015', NULL, 5, 499, 30, '2022-03-18 03:46:28', '2022-03-19 02:04:53'),
(478, 'Facebook', 'https://www.facebook.com/VuPhuongThanh.QM', 'https://www.facebook.com/VuPhuongThanh.QM', 'VuPhuongThanh.QM', 0, 500, 1, '2022-03-18 04:14:44', '2022-03-18 04:14:44'),
(479, 'Instagram', 'https://instagram.com/san.301020?igshid=14vol8hmyevzd', 'https://instagram.com/san.301020?igshid=14vol8hmyevzd', 'san.301020', 0, 500, 2, '2022-03-18 04:18:04', '2022-03-18 04:18:04'),
(480, 'Tiktok', 'https://vt.tiktok.com/ZSdRMc5tN/', 'https://vt.tiktok.com/ZSdRMc5tN/', 'https://vt.tiktok.com/ZSdRMc5tN/', 0, 500, 5, '2022-03-18 04:18:55', '2022-03-18 04:18:55'),
(481, 'Zalo', 'https://zalo.me/0796336050', 'https://zalo.me/0796336050', '0796336050', 0, 500, 15, '2022-03-18 04:19:37', '2022-03-18 04:19:37'),
(482, 'MoMo', 'https://nhantien.momo.vn/0796336050', 'https://nhantien.momo.vn/0796336050', '0796336050', 0, 500, 14, '2022-03-18 04:20:41', '2022-03-18 04:20:41'),
(483, 'Phone', '0786599959', '0786599959', '0786599959', 0, 500, 19, '2022-03-18 04:21:17', '2022-03-18 04:21:17'),
(484, 'VU PHUONG THANH', '4221498666242418', '4221498666242418', NULL, 0, 500, 30, '2022-03-18 04:22:24', '2022-03-18 04:22:24'),
(485, 'Fanpager', 'https://www.facebook.com/vuabaohiem.com.vn/?ref=pages_you_manage', 'https://www.facebook.com/vuabaohiem.com.vn/?ref=pages_you_manage', 'vuabaohiem.com.vn', 0, 514, 1, '2022-03-20 20:57:16', '2022-03-20 20:57:16'),
(486, 'Youtube', 'https://www.youtube.com/c/VuaB%E1%BA%A3oHi%E1%BB%83m/videos', 'https://www.youtube.com/c/VuaB%E1%BA%A3oHi%E1%BB%83m/videos', NULL, 5, 514, 4, '2022-03-20 20:57:48', '2022-03-20 21:08:50'),
(487, 'Instagram', 'https://www.instagram.com/vua_bao_hiem/?hl=vi', 'https://www.instagram.com/vua_bao_hiem/?hl=vi', 'vua_bao_hiem', 6, 514, 2, '2022-03-20 20:58:17', '2022-03-20 21:08:50'),
(488, 'Zalo', 'https://zalo.me/0978321586', 'https://zalo.me/0978321586', '0978321586', 7, 514, 15, '2022-03-20 20:58:54', '2022-03-20 21:08:50'),
(489, 'Hotline', '0978321586', '0978321586', '0978321586', 4, 514, 19, '2022-03-20 21:03:19', '2022-03-20 21:08:50'),
(490, 'Hán Duy Mỹ', '19035751234014', '19035751234014', NULL, 1, 514, 30, '2022-03-20 21:05:20', '2022-03-20 21:08:50'),
(491, 'Facebook Cá Nhân', 'https://www.facebook.com/Han.Duy.My.VBH/', 'https://www.facebook.com/Han.Duy.My.VBH/', 'Han.Duy.My.VBH', 2, 514, 1, '2022-03-20 21:07:09', '2022-03-20 21:08:50'),
(492, 'Website', 'https://vualongtieng.vn/', 'https://vualongtieng.vn/', NULL, 3, 514, 18, '2022-03-20 21:08:43', '2022-03-20 21:08:50'),
(493, 'Facebook', 'https://www.facebook.com/duongdethuonghi', 'https://www.facebook.com/duongdethuonghi', 'duongdethuonghi', 0, 32, 1, '2022-03-21 21:59:34', '2022-03-21 21:59:34'),
(494, 'Instagram', 'http://www.instagram.com/wjdrkddodrkd', 'http://www.instagram.com/wjdrkddodrkd', 'wjdrkddodrkd', 1, 32, 2, '2022-03-21 22:04:23', '2022-03-21 22:11:01'),
(495, 'MoMo', 'https://me.momo.vn/x3IbTQsgFVUzFbFbCnCxTy', 'https://me.momo.vn/x3IbTQsgFVUzFbFbCnCxTy', NULL, 2, 32, 14, '2022-03-21 22:05:23', '2022-03-21 22:11:01'),
(496, 'Zalo', 'https://zalo.me/0325560473', 'https://zalo.me/0325560473', '0325560473', 3, 32, 15, '2022-03-21 22:09:20', '2022-03-21 22:12:33'),
(497, 'Phone', '0325560437', '0325560437', '0325560437', 4, 32, 19, '2022-03-21 22:09:47', '2022-03-21 22:12:33'),
(498, 'Dinh Quoc Hai', '7707215019778', '7707215019778', NULL, 5, 32, 22, '2022-03-21 22:10:42', '2022-03-21 22:12:33'),
(500, 'Tùng Dương', 'https://www.facebook.com/tungduongfx', 'https://www.facebook.com/tungduongfx', 'tungduongfx', 0, 441, 1, '2022-03-22 03:00:11', '2022-03-22 03:00:11'),
(501, 'T Dương', 'https://zalo.me/0969502999', 'https://zalo.me/0969502999', '0969502999', 1, 441, 15, '2022-03-22 03:01:17', '2022-03-22 03:05:11'),
(502, 'Số Liên Lạc Của Tớ: 🤒', '0969502999', '0969502999', '0969502999', 2, 441, 19, '2022-03-22 03:01:50', '2022-03-22 03:03:02'),
(503, 'Số này cũng của tớ 🤧', '0365345817', '0365345817', '0365345817', 3, 441, 19, '2022-03-22 03:02:11', '2022-03-22 03:03:02'),
(504, 'Hà Tùng Dương', '19034308557017', '19034308557017', NULL, 4, 441, 30, '2022-03-22 03:02:33', '2022-03-22 03:03:02'),
(505, 'Facebook', 'https://www.facebook.com/hockem.gjo', 'https://www.facebook.com/hockem.gjo', 'hockem.gjo', 0, 562, 1, '2022-03-23 23:58:07', '2022-03-23 23:58:07'),
(506, 'Facebook', 'https://www.facebook.com/NHDJI.technology/', 'https://www.facebook.com/NHDJI.technology/', 'NHDJI.technology', 1, 350, 1, '2022-03-24 20:01:30', '2022-03-25 22:17:05'),
(507, 'Ngọc Hưởng', '0866081193', '0866081193', '0866081193', 0, 350, 19, '2022-03-24 20:07:00', '2022-03-25 22:17:05'),
(508, 'Youtube', 'https://www.youtube.com/channel/UCtSzTdL_D3VjNvfEKb1iuBg', 'https://www.youtube.com/channel/UCtSzTdL_D3VjNvfEKb1iuBg', 'UCtSzTdL_D3VjNvfEKb1iuBg', 8, 350, 4, '2022-03-24 20:09:02', '2022-03-25 22:17:05'),
(509, 'Nong Ngoc Huong', '0866081193', '0866081193', NULL, 4, 350, 24, '2022-03-24 20:09:39', '2022-03-25 22:17:05'),
(510, 'Nong Ngoc Huong', '19034453213016', '19034453213016', NULL, 6, 350, 30, '2022-03-24 20:10:03', '2022-03-25 22:17:05'),
(511, 'Zalo', 'https://zalo.me/0866081193', 'https://zalo.me/0866081193', '0866081193', 3, 350, 15, '2022-03-24 20:10:23', '2022-03-25 22:17:05'),
(512, 'Email', 'Ngochuongadr@gmail.com', 'Ngochuongadr@gmail.com', 'Ngochuongadr@gmail.com', 2, 350, 21, '2022-03-24 20:10:52', '2022-03-25 22:17:05'),
(513, 'Nong Ngoc Huong', '8603566656666', '8603566656666', NULL, 5, 350, 22, '2022-03-24 20:11:32', '2022-03-25 22:17:05'),
(514, 'Nong ngoc huong', '006144440001', '006144440001', NULL, 7, 350, 41, '2022-03-25 22:16:36', '2022-03-25 22:17:05'),
(516, 'Facebook', 'https://www.facebook.com/gucci.tung.589', 'https://www.facebook.com/gucci.tung.589', 'gucci.tung.589', 1, 550, 1, '2022-03-27 06:10:15', '2022-03-27 16:35:55'),
(517, 'Tiktok', 'https://vt.tiktok.com/ZSdFfo8V7/', 'https://vt.tiktok.com/ZSdFfo8V7/', 'https://vt.tiktok.com/ZSdFfo8V7/', 0, 550, 5, '2022-03-27 06:11:50', '2022-03-27 06:11:50'),
(518, 'Instagram', 'https://instagram.com/_phamtunganh?r=nametag', 'https://instagram.com/_phamtunganh?r=nametag', '_phamtunganh', 2, 550, 2, '2022-03-27 06:14:07', '2022-03-27 16:35:55'),
(520, 'Youtube', 'https://youtube.com/channel/UC_ci_DL88-gf5DElQQIZaZg', 'https://youtube.com/channel/UC_ci_DL88-gf5DElQQIZaZg', 'UC_ci_DL88-gf5DElQQIZaZg', 3, 550, 4, '2022-03-27 16:33:00', '2022-03-28 20:47:56'),
(521, 'MoMo', 'https://me.momo.vn/1MIVTntqCEuqtvt1TVC8Cq', 'https://me.momo.vn/1MIVTntqCEuqtvt1TVC8Cq', NULL, 4, 550, 14, '2022-03-27 16:33:25', '2022-03-28 20:47:56'),
(522, 'Tung Đinh', '1250116969999', '1250116969999', NULL, 5, 550, 24, '2022-03-27 16:35:04', '2022-03-28 20:47:56'),
(523, 'Phone', '0859221555', '0859221555', '0859221555', 6, 550, 19, '2022-03-28 20:44:55', '2022-03-28 20:47:56'),
(527, 'kênh:Hiếu cá cảnh', 'https://youtube.com/channel/UChsvZ-qoO9B3NmdgdZcQMFg', 'https://youtube.com/channel/UChsvZ-qoO9B3NmdgdZcQMFg', 'UChsvZ-qoO9B3NmdgdZcQMFg', 1, 341, 4, '2022-04-01 23:02:34', '2022-04-02 08:38:08'),
(528, 'Bấm vào đây.^^!', 'https://www.facebook.com/profile.php?id=100048560310448', 'https://www.facebook.com/profile.php?id=100048560310448', '100048560310448', 0, 341, 1, '2022-04-01 23:08:24', '2022-04-02 08:37:42'),
(529, 'Tiktok của hiếu', 'https://www.tiktok.com/@hieupm7', 'https://www.tiktok.com/@hieupm7', 'https://www.tiktok.com/@hieupm7', 4, 341, 5, '2022-04-02 08:32:23', '2022-04-02 08:36:45'),
(530, 'phone của tôi', '0972107313', '0972107313', '0972107313', 2, 341, 19, '2022-04-02 08:33:06', '2022-04-02 08:34:34'),
(531, 'Gọi zalo thì bấm vào đây', 'https://zalo.me/0972107313', 'https://zalo.me/0972107313', '0972107313', 3, 341, 15, '2022-04-02 08:34:18', '2022-04-02 08:34:34'),
(532, 'Facebook', 'https://www.facebook.com/Phuc1672', 'https://www.facebook.com/Phuc1672', 'Phuc1672', 0, 373, 1, '2022-04-03 23:38:44', '2022-04-03 23:38:44'),
(533, 'Fanpage', 'https://www.facebook.com/gotap.com.vn/', 'https://www.facebook.com/gotap.com.vn/', 'gotap.com.vn', 1, 536, 1, '2022-04-07 22:02:15', '2022-04-07 22:58:03'),
(534, 'Facebook', 'https://www.facebook.com/hoangvan.phu.142', 'https://www.facebook.com/hoangvan.phu.142', 'hoangvan.phu.142', 0, 317, 1, '2022-04-09 19:36:33', '2022-04-09 19:36:33'),
(535, 'Youtube', 'https://youtube.com/c/Ho%C3%A0ngPh%C3%BA', 'https://youtube.com/c/Ho%C3%A0ngPh%C3%BA', NULL, 1, 317, 4, '2022-04-09 19:37:01', '2022-04-09 19:39:35'),
(536, 'Instagram', 'https://www.instagram.com/hoangvanphu2003', 'https://www.instagram.com/hoangvanphu2003', 'hoangvanphu2003', 2, 317, 2, '2022-04-09 19:37:41', '2022-04-09 19:39:35'),
(537, 'Tiktok', 'https://vt.tiktok.com/ZSdrPqT5J/', 'https://vt.tiktok.com/ZSdrPqT5J/', 'https://vt.tiktok.com/ZSdrPqT5J/', 3, 317, 5, '2022-04-09 19:38:18', '2022-04-09 19:39:35'),
(538, 'HOANG VAN PHU', '3200388888888', '3200388888888', NULL, 4, 317, 24, '2022-04-09 19:38:52', '2022-04-09 19:39:35'),
(539, 'Vũ Thị Nhung', 'https://www.facebook.com/bontiktoker', 'https://www.facebook.com/bontiktoker', 'bontiktoker', 0, 424, 1, '2022-04-09 23:07:54', '2022-04-09 23:07:54'),
(540, 'Bon TomBoy🐝', 'https://www.tiktok.com/@bontomboy2k2', 'https://www.tiktok.com/@bontomboy2k2', 'https://www.tiktok.com/@bontomboy2k2', 1, 424, 5, '2022-04-09 23:08:32', '2022-04-12 21:05:59'),
(541, 'Bon🐼', 'https://www.tiktok.com/@bonnemn', 'https://www.tiktok.com/@bonnemn', 'https://www.tiktok.com/@bonnemn', 2, 424, 5, '2022-04-09 23:08:32', '2022-04-12 21:05:59'),
(542, 'Vũ Thị Nhung', 'https://www.instagram.com/bontomboy', 'https://www.instagram.com/bontomboy', 'bontomboy', 3, 424, 2, '2022-04-09 23:09:06', '2022-04-12 21:06:00'),
(543, 'Bon', 'https://zalo.me/0898942444', 'https://zalo.me/0898942444', '0898942444', 4, 424, 15, '2022-04-09 23:09:34', '2022-04-12 21:06:00'),
(545, 'Vũ Thị Nhung', '0898942444', '0898942444', '0898942444', 6, 424, 20, '2022-04-09 23:10:01', '2022-04-27 06:24:24'),
(546, 'Facebook', 'https://www.facebook.com/linh.lete.9', 'https://www.facebook.com/linh.lete.9', 'linh.lete.9', 0, 425, 1, '2022-04-10 19:46:47', '2022-04-10 19:46:47'),
(547, 'Tiktok', 'https://vt.tiktok.com/ZSdr3A868/', 'https://vt.tiktok.com/ZSdr3A868/', 'https://vt.tiktok.com/ZSdr3A868/', 1, 425, 5, '2022-04-10 19:48:20', '2022-04-10 19:50:10'),
(548, 'Instagram', 'https://www.instagram.com/p/CbWKRGTvDZ0/?igshid=YmMyMTA2M2Y=', 'https://www.instagram.com/p/CbWKRGTvDZ0/?igshid=YmMyMTA2M2Y=', 'p', 2, 425, 2, '2022-04-10 19:49:27', '2022-04-10 19:50:10'),
(549, 'Youtube', 'https://youtube.com/shorts/B-_62pusRTw?feature=share', 'https://youtube.com/shorts/B-_62pusRTw?feature=share', NULL, 0, 425, 4, '2022-04-10 20:02:59', '2022-04-10 20:02:59'),
(550, 'Zalo', 'https://zalo.me/0964209973', 'https://zalo.me/0964209973', '0964209973', 0, 425, 15, '2022-04-10 20:11:36', '2022-04-10 20:11:36'),
(551, 'MoMo', 'https://me.momo.vn/bondepzai', 'https://me.momo.vn/bondepzai', NULL, 5, 424, 14, '2022-04-12 21:03:42', '2022-04-27 06:24:24'),
(552, 'Vũ Thị Nhung', '0990150939999', '0990150939999', NULL, 7, 424, 24, '2022-04-12 21:04:26', '2022-04-12 21:06:00'),
(553, 'Vũ Thị Nhung', '25610001221303', '25610001221303', NULL, 8, 424, 23, '2022-04-12 21:05:01', '2022-04-12 21:06:00'),
(555, 'Facebook', 'https://www.facebook.com/nabi.tho.75', 'https://www.facebook.com/nabi.tho.75', 'nabi.tho.75', 0, 363, 1, '2022-04-14 22:40:14', '2022-04-14 22:40:14'),
(558, 'Tiktok', 'https://vt.tiktok.com/ZSdksu9da/', 'https://vt.tiktok.com/ZSdksu9da/', 'https://vt.tiktok.com/ZSdksu9da/', 1, 363, 5, '2022-04-14 22:40:57', '2022-04-14 22:43:46'),
(559, 'Nguyen Thi Duong', '15013767', '15013767', NULL, 2, 363, 28, '2022-04-14 22:41:51', '2022-04-14 22:43:46'),
(560, 'Nguyen Thi Duong', '9129123688888', '9129123688888', NULL, 3, 363, 24, '2022-04-14 22:43:31', '2022-04-14 22:43:46'),
(562, 'Youtube', 'https://youtube.com/channel/UCZ4r2KsRMcLtlbzXQ5uqCkQ', 'https://youtube.com/channel/UCZ4r2KsRMcLtlbzXQ5uqCkQ', 'UCZ4r2KsRMcLtlbzXQ5uqCkQ', 0, 363, 4, '2022-04-14 22:48:53', '2022-04-14 22:48:53'),
(563, 'Facebook', 'https://www.facebook.com/bachlong.1996', 'https://www.facebook.com/bachlong.1996', 'bachlong.1996', 0, 378, 1, '2022-04-18 10:32:10', '2022-04-18 10:32:10'),
(564, 'Instagram', 'https://www.instagram.com/p.a_scopion', 'https://www.instagram.com/p.a_scopion', 'p.a_scopion', 0, 378, 2, '2022-04-19 09:14:51', '2022-04-19 09:14:51'),
(565, 'Tiktok', 'https://www.tiktok.com/@patscopions', 'https://www.tiktok.com/@patscopions', 'https://www.tiktok.com/@patscopions', 0, 378, 5, '2022-04-19 09:15:54', '2022-04-19 09:15:54'),
(566, 'Trần Phương Anh', '0121000843818', '0121000843818', NULL, 0, 378, 31, '2022-04-19 09:16:55', '2022-04-19 09:16:55'),
(567, 'Zalo', 'https://zalo.me/0833910091', 'https://zalo.me/0833910091', '0833910091', 0, 378, 15, '2022-04-19 09:17:54', '2022-04-19 09:17:54'),
(568, 'Phone', '0833910091', '0833910091', '0833910091', 0, 378, 19, '2022-04-19 09:19:02', '2022-04-19 09:19:02'),
(569, 'Facebook', 'https://www.facebook.com/johannes.ott.7', 'https://www.facebook.com/johannes.ott.7', 'johannes.ott.7', 3, 55, 1, '2022-04-21 01:11:07', '2022-04-21 09:04:08'),
(570, 'Instagram', 'https://www.instagram.com/vietducgains', 'https://www.instagram.com/vietducgains', 'vietducgains', 4, 55, 2, '2022-04-21 01:16:36', '2022-04-21 08:47:57'),
(571, 'Tiktok', 'https://vt.tiktok.com/ZSdAXgmLw/', 'https://vt.tiktok.com/ZSdAXgmLw/', 'https://vt.tiktok.com/ZSdAXgmLw/', 5, 55, 5, '2022-04-21 01:18:26', '2022-04-21 01:22:28'),
(572, 'Telegram', 'https://t.me/Joe_VN_Germany', 'https://t.me/Joe_VN_Germany', NULL, 2, 55, 12, '2022-04-21 01:19:56', '2022-04-21 09:04:08'),
(573, 'Phone', '0934422630', '0934422630', '0934422630', 0, 55, 19, '2022-04-21 01:20:34', '2022-04-21 09:04:08'),
(574, 'Email', 'johannesottvn@gmail.com', 'johannesottvn@gmail.com', 'johannesottvn@gmail.com', 1, 55, 21, '2022-04-21 01:21:10', '2022-04-21 09:04:08'),
(575, 'Facebook', 'https://www.facebook.com/thuyanh.to', 'https://www.facebook.com/thuyanh.to', 'thuyanh.to', 2, 335, 1, '2022-04-21 01:59:09', '2022-04-21 09:16:39'),
(576, 'Facebook', 'https://www.facebook.com/Jobs-in-Hanoi-626235230743263/', 'https://www.facebook.com/Jobs-in-Hanoi-626235230743263/', 'Jobs', 9, 335, 1, '2022-04-21 02:00:26', '2022-04-21 09:16:39'),
(577, 'Facebook', 'https://www.facebook.com/Dark-and-decadent-102367854859660/', 'https://www.facebook.com/Dark-and-decadent-102367854859660/', 'Dark', 10, 335, 1, '2022-04-21 02:02:00', '2022-04-21 09:16:39'),
(578, 'LinkedIn', 'https://www.linkedin.com/in/thuy-anh-to-4a9625229', 'https://www.linkedin.com/in/thuy-anh-to-4a9625229', 'thuy-anh-to-4a9625229', 4, 335, 7, '2022-04-21 02:11:30', '2022-04-21 09:16:39'),
(579, 'MoMo', 'https://nhantien.momo.vn/0795389292', 'https://nhantien.momo.vn/0795389292', '0795389292', 6, 335, 14, '2022-04-21 02:14:48', '2022-04-21 09:16:39'),
(580, 'TO THUY ANH', '9704368603567544015', '9704368603567544015', NULL, 7, 335, 31, '2022-04-21 02:16:11', '2022-04-21 09:16:39'),
(581, 'TO THUY ANH', '9704416850012979948', '9704416850012979948', NULL, 8, 335, 29, '2022-04-21 02:16:58', '2022-04-21 09:16:39'),
(582, 'Whatsapp', 'https://wa.me/+84795389292', 'https://wa.me/+84795389292', NULL, 3, 335, 13, '2022-04-21 02:18:58', '2022-04-21 09:16:39'),
(583, 'Telegram', 'https://t.me/tothuyanh', 'https://t.me/tothuyanh', 'tothuyanh', 1, 335, 12, '2022-04-21 02:20:27', '2022-04-21 09:16:39'),
(584, 'Phone', '0795389292', '0795389292', '0795389292', 0, 335, 19, '2022-04-21 09:13:12', '2022-04-21 09:13:12'),
(585, 'Email', 'tothuyanh23@gmail.com', 'tothuyanh23@gmail.com', 'tothuyanh23@gmail.com', 5, 335, 21, '2022-04-21 09:16:00', '2022-04-21 09:16:39'),
(586, 'Facebook', 'https://www.facebook.com/profile.php?id=100080273109644', 'https://www.facebook.com/profile.php?id=100080273109644', '100080273109644', 0, 352, 1, '2022-04-27 21:29:57', '2022-04-27 21:29:57'),
(588, 'Zalo', 'https://zalo.me/0984843537', 'https://zalo.me/0984843537', '0984843537', 3, 352, 15, '2022-04-27 21:33:23', '2022-04-27 21:36:32'),
(589, 'MoMo', 'https://nhantien.momo.vn/0984843537', 'https://nhantien.momo.vn/0984843537', '0984843537', 1, 352, 14, '2022-04-27 21:35:18', '2022-04-27 21:36:32'),
(591, 'Nguyễn Thanh Hào', '17258727', '17258727', NULL, 2, 352, 28, '2022-04-27 21:36:30', '2022-04-27 21:36:32'),
(592, 'Facebook', 'https://www.facebook.com/minhduong.do.505', 'https://www.facebook.com/minhduong.do.505', 'minhduong.do.505', 0, 448, 1, '2022-04-28 03:36:51', '2022-04-28 03:36:51'),
(593, 'Zalo', 'https://zalo.me/0924680403', 'https://zalo.me/0924680403', '0924680403', 3, 448, 15, '2022-04-28 03:40:04', '2022-04-28 03:43:13'),
(594, 'MoMo', 'https://nhantien.momo.vn/0924680403', 'https://nhantien.momo.vn/0924680403', '0924680403', 5, 448, 14, '2022-04-28 03:40:26', '2022-04-28 03:43:13'),
(595, 'Instagram', 'https://www.instagram.com/mh.duong', 'https://www.instagram.com/mh.duong', 'mh.duong', 1, 448, 2, '2022-04-28 03:40:49', '2022-04-28 03:43:13'),
(596, 'Tiktok', 'https://www.tiktok.com/@minhhduonggg', 'https://www.tiktok.com/@minhhduonggg', 'https://www.tiktok.com/@minhhduonggg', 4, 448, 5, '2022-04-28 03:41:25', '2022-04-28 03:43:13'),
(597, 'Phone', '0924680403', '0924680403', '0924680403', 2, 448, 19, '2022-04-28 03:41:53', '2022-04-28 03:43:13'),
(598, 'Đỗ Minh Dương', '0021000464338', '0021000464338', NULL, 6, 448, 31, '2022-04-28 03:42:42', '2022-04-28 03:43:13'),
(599, 'Facebook', 'https://www.facebook.com/profile.php?id=100028382351364', 'https://www.facebook.com/profile.php?id=100028382351364', '100028382351364', 1, 357, 1, '2022-04-28 22:08:27', '2022-04-28 22:31:43'),
(600, 'Instagram', 'https://www.instagram.com/_habarr', 'https://www.instagram.com/_habarr', '_habarr', 2, 357, 2, '2022-04-28 22:11:59', '2022-04-28 22:31:43'),
(601, 'Zalo', 'https://zalo.me/0971070166', 'https://zalo.me/0971070166', '0971070166', 3, 357, 15, '2022-04-28 22:22:38', '2022-04-28 22:31:43'),
(602, 'Phone', '0962030772', '0962030772', '0962030772', 0, 357, 19, '2022-04-28 22:23:32', '2022-04-28 22:31:43'),
(603, 'Email', 'Ngochayb3@gmail.com', 'Ngochayb3@gmail.com', 'Ngochayb3@gmail.com', 5, 357, 21, '2022-04-28 22:24:12', '2022-04-28 22:31:43'),
(605, 'NGUYEN NGOC HA', '2626920028888', '2626920028888', NULL, 4, 357, 24, '2022-04-28 22:26:40', '2022-04-28 22:31:43'),
(606, 'Facebook', 'https://www.facebook.com/honganh.phan.397948', 'https://www.facebook.com/honganh.phan.397948', 'honganh.phan.397948', 0, 68, 1, '2022-04-28 23:41:45', '2022-04-28 23:41:45'),
(607, 'Instagram', 'http://www.instagram.com/_imhanh_203', 'http://www.instagram.com/_imhanh_203', '_imhanh_203', 1, 68, 2, '2022-04-28 23:45:52', '2022-04-28 23:46:32'),
(608, 'Zalo', 'https://zalo.me/0378451203', 'https://zalo.me/0378451203', '0378451203', 2, 68, 15, '2022-04-28 23:46:29', '2022-04-28 23:46:32'),
(609, 'Facebook', 'https://www.facebook.com/profile.php?id=100028052802091', 'https://www.facebook.com/profile.php?id=100028052802091', '100028052802091', 0, 459, 1, '2022-04-29 06:14:58', '2022-05-04 23:47:17'),
(612, 'Nguyễn Quỳnh', 'https://www.facebook.com/profile.php?id=100028213283668', 'https://www.facebook.com/profile.php?id=100028213283668', '100028213283668', 0, 403, 1, '2022-04-30 00:10:44', '2022-04-30 00:10:44'),
(613, 'Quỳnh❤️', 'https://instagram.com/nq.taurus?igshid=YmMyMTA2M2Y=', 'https://instagram.com/nq.taurus?igshid=YmMyMTA2M2Y=', 'nq.taurus', 4, 403, 2, '2022-04-30 00:12:34', '2022-04-30 00:20:25'),
(614, 'NGUYỄN THỊ NHƯ QUỲNH', '19032157145010', '19032157145010', NULL, 1, 403, 30, '2022-04-30 00:19:31', '2022-04-30 00:20:25'),
(615, 'Quỳnh❤️', '0945138562', '0945138562', '0945138562', 2, 403, 19, '2022-04-30 00:19:56', '2022-04-30 00:20:25'),
(616, 'NGUYỄN THỊ NHƯ QUỲNH', '5555969796789', '5555969796789', NULL, 3, 403, 24, '2022-04-30 00:20:21', '2022-04-30 00:20:25'),
(617, 'Facebook', 'https://www.facebook.com/kiendaotac', 'https://www.facebook.com/kiendaotac', 'kiendaotac', 0, 493, 1, '2022-04-30 04:29:00', '2022-04-30 04:29:00'),
(618, 'Youtube', 'https://www.youtube.com/channel/UC_XPKXLZLSnQ8Mh26OKQphA', 'https://www.youtube.com/channel/UC_XPKXLZLSnQ8Mh26OKQphA', 'UC_XPKXLZLSnQ8Mh26OKQphA', 1, 493, 4, '2022-04-30 04:29:05', '2022-04-30 04:30:42'),
(619, 'Tiktok', 'https://www.tiktok.com/@kiendaotac', 'https://www.tiktok.com/@kiendaotac', 'https://www.tiktok.com/@kiendaotac', 2, 493, 5, '2022-04-30 04:29:11', '2022-04-30 04:30:42'),
(620, 'Zalo', 'https://zalo.me/0985108032', 'https://zalo.me/0985108032', '0985108032', 3, 493, 15, '2022-04-30 04:29:23', '2022-04-30 04:30:42'),
(621, 'MoMo', 'https://nhantien.momo.vn/0985108032', 'https://nhantien.momo.vn/0985108032', '0985108032', 4, 493, 14, '2022-04-30 04:29:31', '2022-04-30 04:30:42'),
(622, 'Techcombank', '00000000000', '00000000000', NULL, 5, 493, 30, '2022-04-30 04:30:00', '2022-04-30 04:30:42'),
(623, 'Vietcombank', '0101010203', '0101010203', NULL, 6, 493, 31, '2022-04-30 04:30:27', '2022-04-30 04:30:42'),
(624, 'Facebook', 'https://www.facebook.com/embe2302', 'https://www.facebook.com/embe2302', 'embe2302', 0, 73, 1, '2022-05-02 01:31:01', '2022-05-09 08:40:00'),
(625, 'Zalo', 'https://zalo.me/0398777536', 'https://zalo.me/0398777536', '0398777536', 2, 73, 15, '2022-05-02 01:35:43', '2022-05-05 04:45:29'),
(626, 'Instagram', 'https://www.instagram.com/_nkhang.02', 'https://www.instagram.com/_nkhang.02', '_nkhang.02', 1, 73, 2, '2022-05-02 01:37:53', '2022-05-05 04:45:29'),
(628, 'Tiktok', 'https://www.tiktok.com/@_.nhatkhang', 'https://www.tiktok.com/@_.nhatkhang', 'https://www.tiktok.com/@_.nhatkhang', 3, 73, 5, '2022-05-02 01:41:30', '2022-05-05 04:44:58'),
(629, 'Techcombank', '19038166461012', '19038166461012', NULL, 4, 73, 30, '2022-05-02 01:42:38', '2022-05-02 05:18:33'),
(630, 'MB Bank', '9999230256789', '9999230256789', NULL, 6, 73, 24, '2022-05-02 01:45:17', '2022-05-02 05:19:10'),
(631, 'Vietcombank', '1027939534', '1027939534', NULL, 5, 73, 31, '2022-05-02 05:17:49', '2022-05-02 05:19:10'),
(632, 'Facebook', 'https://www.facebook.com/profile.php?id=100037416558998', 'https://www.facebook.com/profile.php?id=100037416558998', '100037416558998', 0, 537, 1, '2022-05-04 20:59:36', '2022-05-04 20:59:36'),
(633, 'Instagram', 'https://www.instagram.com/kientrung222', 'https://www.instagram.com/kientrung222', 'kientrung222', 1, 459, 2, '2022-05-04 23:55:22', '2022-05-04 23:55:45'),
(634, 'Facebook', 'https://www.facebook.com/hoanglinhchi202', 'https://www.facebook.com/hoanglinhchi202', 'hoanglinhchi202', 0, 474, 1, '2022-05-05 08:50:31', '2022-05-05 08:50:31'),
(636, 'Linh Chi booking 46 Mã Mây', '0987186283', '0987186283', '0987186283', 2, 474, 19, '2022-05-05 08:52:55', '2022-05-05 09:00:30'),
(637, 'Facebook', 'https://www.facebook.com/PhuongAnh.281101', 'https://www.facebook.com/PhuongAnh.281101', 'PhuongAnh.281101', 1, 508, 1, '2022-05-05 08:54:00', '2022-05-05 08:58:11'),
(638, 'Zalo', 'https://zalo.me/0357304514', 'https://zalo.me/0357304514', '0357304514', 0, 508, 15, '2022-05-05 08:54:42', '2022-05-05 08:54:42'),
(639, 'Zalo', 'https://zalo.me/0987186283', 'https://zalo.me/0987186283', '0987186283', 1, 474, 15, '2022-05-05 08:54:58', '2022-05-05 08:55:03'),
(640, 'Instagram', 'https://www.instagram.com/_dp.anh2811', 'https://www.instagram.com/_dp.anh2811', '_dp.anh2811', 2, 508, 2, '2022-05-05 08:56:27', '2022-05-05 08:58:11'),
(641, 'Tiktok', 'https://www.tiktok.com/@pa2811', 'https://www.tiktok.com/@pa2811', 'https://www.tiktok.com/@pa2811', 3, 508, 5, '2022-05-05 08:57:25', '2022-05-05 08:58:11'),
(643, 'Phương Anh Booking Sniff 46 Mã Mây', '0357304514', '0357304514', '0357304514', 4, 508, 19, '2022-05-05 08:58:39', '2022-05-05 09:05:52'),
(644, 'Zalo', 'https://zalo.me/0985108032', 'https://zalo.me/0985108032', '0985108032', 1, 537, 15, '2022-05-05 11:59:16', '2022-05-05 12:00:49'),
(645, 'Tiktok', 'www.tiktok.com/@hungruoi47', 'www.tiktok.com/@hungruoi47', 'www.tiktok.com/@hungruoi47', 2, 537, 5, '2022-05-05 12:00:45', '2022-05-05 12:00:49'),
(646, 'Facebook', 'https://www.facebook.com/profile.php?id=100023972082493', 'https://www.facebook.com/profile.php?id=100023972082493', '100023972082493', 0, 374, 1, '2022-05-05 22:37:45', '2022-05-05 22:38:44'),
(647, 'Instagram', 'https://www.instagram.com/duchieu781', 'https://www.instagram.com/duchieu781', 'duchieu781', 2, 374, 2, '2022-05-05 22:39:18', '2022-05-05 23:21:20'),
(648, 'Zalo', 'https://zalo.me/0386091548', 'https://zalo.me/0386091548', '0386091548', 1, 374, 15, '2022-05-05 23:21:18', '2022-05-05 23:21:20'),
(649, 'Facebook', 'https://www.facebook.com/profile.php?id=100071503930758', 'https://www.facebook.com/profile.php?id=100071503930758', '100071503930758', 1, 20, 1, '2022-05-06 02:52:48', '2022-05-06 03:00:52'),
(650, 'Zalo', 'https://zalo.me/0367056374', 'https://zalo.me/0367056374', '0367056374', 0, 20, 15, '2022-05-06 02:59:23', '2022-05-06 02:59:41'),
(652, 'Facebook', 'https://www.facebook.com/van203199', 'https://www.facebook.com/van203199', 'van203199', 0, 491, 1, '2022-05-06 03:57:38', '2022-05-06 03:57:38'),
(653, 'Tiktok', 'https://vt.tiktok.com/ZSdaqjHgS/', 'https://vt.tiktok.com/ZSdaqjHgS/', 'https://vt.tiktok.com/ZSdaqjHgS/', 0, 491, 5, '2022-05-06 03:58:35', '2022-05-06 03:58:35'),
(654, 'Zalo', 'https://zalo.me/0849862789', 'https://zalo.me/0849862789', '0849862789', 0, 491, 15, '2022-05-06 04:05:53', '2022-05-06 04:05:53'),
(655, 'NGUYEN VAN VAN', '369252003', '369252003', NULL, 0, 491, 25, '2022-05-06 04:09:06', '2022-05-06 04:10:55'),
(656, 'MoMo', 'https://nhantien.momo.vn/0849862789', 'https://nhantien.momo.vn/0849862789', '0849862789', 0, 491, 14, '2022-05-06 04:10:00', '2022-05-06 04:10:00'),
(657, 'Phương Quỳnh', 'https://www.facebook.com/profile.php?id=100031266098609', 'https://www.facebook.com/profile.php?id=100031266098609', '100031266098609', 0, 33, 1, '2022-05-06 23:35:21', '2022-05-06 23:35:21'),
(658, 'lpquynh__', 'http://www.instagram.com/lpquynh__', 'http://www.instagram.com/lpquynh__', 'lpquynh__', 0, 33, 2, '2022-05-06 23:42:37', '2022-05-06 23:42:37'),
(659, '@quynhq', 'https://vt.tiktok.com/ZSdmeX6YE/', 'https://vt.tiktok.com/ZSdmeX6YE/', 'https://vt.tiktok.com/ZSdmeX6YE/', 0, 33, 5, '2022-05-06 23:45:58', '2022-05-06 23:45:58'),
(660, 'Lê Phương Quỳnh', 'https://zalo.me/0939951126', 'https://zalo.me/0939951126', '0939951126', 0, 33, 15, '2022-05-06 23:47:50', '2022-05-06 23:47:50'),
(661, 'PQuỳnh', '0939951126', '0939951126', '0939951126', 0, 33, 19, '2022-05-06 23:48:34', '2022-05-06 23:48:34'),
(662, 'Facebook', 'https://www.facebook.com/hangthudayyyyy', 'https://www.facebook.com/hangthudayyyyy', 'hangthudayyyyy', 0, 505, 1, '2022-05-07 05:09:12', '2022-05-07 05:09:12'),
(663, 'Zalo', 'https://zalo.me/0393401864', 'https://zalo.me/0393401864', '0393401864', 1, 505, 15, '2022-05-07 05:10:09', '2022-05-07 05:12:07'),
(664, 'Instagram', 'https://www.instagram.com/suonchuangot_01', 'https://www.instagram.com/suonchuangot_01', 'suonchuangot_01', 2, 505, 2, '2022-05-07 05:11:02', '2022-05-07 05:12:07'),
(665, 'Hang Thu', 'https://www.tiktok.com/@hangthu2841', 'https://www.tiktok.com/@hangthu2841', 'https://www.tiktok.com/@hangthu2841', 3, 505, 5, '2022-05-07 05:12:04', '2022-05-07 05:12:07'),
(666, 'Facebook', 'https://www.facebook.com/baodi.chungoc.5', 'https://www.facebook.com/baodi.chungoc.5', 'baodi.chungoc.5', 0, 421, 1, '2022-05-08 23:59:35', '2022-05-08 23:59:35'),
(667, 'Instagram', 'https://www.instagram.com/baodi.chungoc.510', 'https://www.instagram.com/baodi.chungoc.510', 'baodi.chungoc.510', 3, 421, 2, '2022-05-09 00:09:04', '2022-05-09 00:16:47'),
(668, 'Tiktok', 'www.tiktok.com/@tuyetnhu_0811', 'www.tiktok.com/@tuyetnhu_0811', 'www.tiktok.com/@tuyetnhu_0811', 5, 421, 5, '2022-05-09 00:09:39', '2022-05-09 00:16:47'),
(669, 'Zalo', 'http://zaloapp.com/qr/p/35emcgv5crn6', 'http://zaloapp.com/qr/p/35emcgv5crn6', NULL, 4, 421, 15, '2022-05-09 00:14:39', '2022-05-09 00:16:47'),
(670, 'HA TUYET NHU', '108875061223', '108875061223', NULL, 1, 421, 32, '2022-05-09 00:16:03', '2022-05-09 00:16:47'),
(671, 'Tuyết Như', '0344642222', '0344642222', '0344642222', 2, 421, 19, '2022-05-09 00:16:43', '2022-05-09 00:16:47'),
(672, 'Tiktok', 'https://www.tiktok.com/@kiendaotac', 'https://www.tiktok.com/@kiendaotac', 'https://www.tiktok.com/@kiendaotac', 0, 348, 5, '2022-05-09 04:22:13', '2022-05-09 04:22:13'),
(673, 'Facebook', 'https://www.facebook.com/kiendaotac', 'https://www.facebook.com/kiendaotac', 'kiendaotac', 0, 348, 1, '2022-05-09 04:22:58', '2022-05-09 04:22:58'),
(674, 'MoMo', 'https://nhantien.momo.vn/0985108032', 'https://nhantien.momo.vn/0985108032', '0985108032', 0, 348, 14, '2022-05-09 04:23:46', '2022-05-09 04:23:46'),
(675, 'Zalo', 'https://zalo.me/0985108032', 'https://zalo.me/0985108032', '0985108032', 0, 348, 15, '2022-05-09 04:23:54', '2022-05-09 04:23:54'),
(676, 'Phone', '0985108032', '0985108032', '0985108032', 0, 348, 19, '2022-05-09 04:24:03', '2022-05-09 04:24:03'),
(677, 'Nguyễn Văn Sỹ', '002132626', '002132626', NULL, 0, 348, 29, '2022-05-09 04:24:41', '2022-05-09 04:24:41'),
(678, 'Email', 'syt8bg2.khoahoccoban@gmail.com', 'syt8bg2.khoahoccoban@gmail.com', 'syt8bg2.khoahoccoban@gmail.com', 0, 348, 21, '2022-05-09 04:25:15', '2022-05-09 04:25:15'),
(679, 'Facebook', 'https://www.facebook.com/kiendaotac', 'https://www.facebook.com/kiendaotac', 'kiendaotac', 0, 348, 1, '2022-05-09 04:25:50', '2022-05-09 04:25:50'),
(680, 'Lê Nam', 'https://www.facebook.com/profile.php?id=100024951518180', 'https://www.facebook.com/profile.php?id=100024951518180', '100024951518180', 0, 407, 1, '2022-05-10 23:00:30', '2022-05-10 23:00:30'),
(682, 'HOANG LINH CHI', '475668669', '475668669', NULL, 0, 474, 25, '2022-05-11 14:42:08', '2022-05-11 14:42:08'),
(683, 'Facebook', 'https://www.facebook.com/profile.php?id=100056531721303', 'https://www.facebook.com/profile.php?id=100056531721303', '100056531721303', 0, 392, 1, '2022-05-12 04:03:08', '2022-05-12 04:03:08'),
(684, 'Zalo', '0364700622', '0364700622', NULL, 3, 392, 15, '2022-05-12 04:05:18', '2022-05-12 09:04:11'),
(685, 'Tiktok', 'tiktok.com/@meocon___203', 'tiktok.com/@meocon___203', 'tiktok.com/@meocon___203', 4, 392, 5, '2022-05-12 04:06:00', '2022-05-12 09:04:11'),
(687, 'Phone', '0364700622', '0364700622', '0364700622', 1, 392, 19, '2022-05-12 04:15:43', '2022-05-12 09:04:11'),
(688, 'Hoang thi thuy dieu', '105875557055', '105875557055', NULL, 2, 392, 32, '2022-05-12 04:16:25', '2022-05-12 09:04:11'),
(689, 'Facebook', 'https://www.facebook.com/tay.pe.507', 'https://www.facebook.com/tay.pe.507', 'tay.pe.507', 0, 95, 1, '2022-05-12 04:29:58', '2022-05-12 04:29:58'),
(690, 'Zalo', 'https://zalo.me/0386683228', 'https://zalo.me/0386683228', '0386683228', 1, 95, 15, '2022-05-12 04:31:17', '2022-05-12 04:32:35'),
(691, 'Kayla trần', 'tiktok.com/@binkkayla', 'tiktok.com/@binkkayla', 'tiktok.com/@binkkayla', 2, 95, 5, '2022-05-12 04:32:26', '2022-05-12 04:32:35'),
(693, 'Facebook', 'https://www.facebook.com/profile.php?id=100049417357790', 'https://www.facebook.com/profile.php?id=100049417357790', '100049417357790', 0, 393, 1, '2022-05-12 20:42:29', '2022-05-12 20:42:29'),
(694, 'Instagram', 'https://www.instargram.com/profile.php?id=100049417357790', 'https://www.instargram.com/profile.php?id=100049417357790', NULL, 1, 393, 2, '2022-05-12 20:46:36', '2022-05-12 20:57:37'),
(695, 'Tiktok', 'https://vt.tiktok.com/ZSdHn7Jne/', 'https://vt.tiktok.com/ZSdHn7Jne/', 'https://vt.tiktok.com/ZSdHn7Jne/', 2, 393, 5, '2022-05-12 20:48:44', '2022-05-12 20:57:37'),
(696, 'Zalo', 'http://zaloapp.com/qr/p/tlhwexeqsb2s', 'http://zaloapp.com/qr/p/tlhwexeqsb2s', NULL, 3, 393, 15, '2022-05-12 20:53:23', '2022-05-12 20:57:37'),
(697, 'SMS', '0337801027', '0337801027', '0337801027', 4, 393, 20, '2022-05-12 20:54:18', '2022-05-12 20:57:37'),
(698, 'Phone', '0337801027', '0337801027', '0337801027', 5, 393, 19, '2022-05-12 20:54:45', '2022-05-12 20:57:37'),
(699, 'Email', 'main79576@gmail.com', 'main79576@gmail.com', 'main79576@gmail.com', 6, 393, 21, '2022-05-12 20:55:17', '2022-05-12 20:57:37'),
(700, 'NGUYEN NGOC MAI', '0337801027', '0337801027', NULL, 7, 393, 24, '2022-05-12 20:56:13', '2022-05-12 20:57:37'),
(701, 'Văn Bướng', '0849862789', '0849862789', '0849862789', 0, 491, 19, '2022-05-14 18:10:52', '2022-05-14 18:10:52'),
(702, 'Facebook', 'https://www.facebook.com/hoanghope03', 'https://www.facebook.com/hoanghope03', 'hoanghope03', 1, 571, 1, '2022-05-17 02:24:56', '2022-05-17 02:42:30'),
(703, 'Tiktok', 'https://www.tiktok.com/@hoanghope', 'https://www.tiktok.com/@hoanghope', 'https://www.tiktok.com/@hoanghope', 0, 571, 5, '2022-05-17 02:25:18', '2022-05-17 02:42:30'),
(704, 'Instagram', 'https://www.instagram.com/hoanghope_', 'https://www.instagram.com/hoanghope_', 'hoanghope_', 3, 571, 2, '2022-05-17 02:25:33', '2022-05-17 02:42:30'),
(705, 'TRAN THE HOANG', '6822122003', '6822122003', NULL, 4, 571, 24, '2022-05-17 02:26:20', '2022-05-17 02:42:30'),
(706, 'MoMo', 'https://nhantien.momo.vn/0888466453', 'https://nhantien.momo.vn/0888466453', '0888466453', 5, 571, 14, '2022-05-17 02:26:39', '2022-05-17 02:42:30'),
(707, 'Zalo', 'https://zalo.me/0888466453', 'https://zalo.me/0888466453', '0888466453', 6, 571, 15, '2022-05-17 02:26:56', '2022-05-17 02:42:30'),
(708, 'Phone', '0888466453', '0888466453', '0888466453', 7, 571, 19, '2022-05-17 02:27:31', '2022-05-17 02:42:30'),
(710, 'Messenger', 'http://m.me/hoanghope03/', 'http://m.me/hoanghope03/', NULL, 2, 571, 35, '2022-05-17 02:42:23', '2022-05-17 02:42:30'),
(711, 'Facebook', 'https://www.facebook.com/kiendaotac', 'https://www.facebook.com/kiendaotac', 'kiendaotac', 0, 106, 1, '2022-05-20 03:03:59', '2022-05-20 03:03:59'),
(712, 'Nguyen Thi Hoai', '48082001892', '48082001892', NULL, 1, 106, 26, '2022-05-20 03:05:06', '2022-05-20 03:12:54'),
(713, 'pmai', '_pmai510_', '_pmai510_', NULL, 2, 106, 2, '2022-05-20 03:07:10', '2022-05-20 03:12:54'),
(714, 'Phạm Ngọc Mai', 'https://www.facebook.com/mai.sua.165', 'https://www.facebook.com/mai.sua.165', 'mai.sua.165', 3, 106, 1, '2022-05-20 03:10:08', '2022-05-20 03:12:54'),
(715, 'Ngọc Mai', 'https://zalo.me/0345215851', 'https://zalo.me/0345215851', '0345215851', 4, 106, 15, '2022-05-20 03:12:01', '2022-05-20 03:12:54'),
(716, 'Meixinhgai', '0345215851', '0345215851', '0345215851', 5, 106, 19, '2022-05-20 03:12:34', '2022-05-20 03:12:54'),
(717, 'Facebook', 'https://www.facebook.com/nhungchanh.tranthi.1', 'https://www.facebook.com/nhungchanh.tranthi.1', 'nhungchanh.tranthi.1', 5, 405, 1, '2022-05-20 03:14:42', '2022-05-20 03:25:36'),
(718, 'Instagram', 'https://www.instagram.com/nchanh01', 'https://www.instagram.com/nchanh01', 'nchanh01', 0, 405, 2, '2022-05-20 03:15:24', '2022-05-20 03:17:17'),
(719, 'Tiktok', 'https://www.tiktok.com/@chanhh.18', 'https://www.tiktok.com/@chanhh.18', 'https://www.tiktok.com/@chanhh.18', 1, 405, 5, '2022-05-20 03:17:54', '2022-05-20 03:25:36'),
(720, 'Tran thi nhung', '19035661171013', '19035661171013', NULL, 3, 405, 30, '2022-05-20 03:18:58', '2022-05-20 03:25:36'),
(721, 'Zalo', 'https://zalo.me/0355181467', 'https://zalo.me/0355181467', '0355181467', 2, 405, 15, '2022-05-20 03:20:17', '2022-05-20 03:25:36'),
(722, 'Telegram', 'https://t.me/ttn182', 'https://t.me/ttn182', 'ttn182', 4, 405, 12, '2022-05-20 03:20:51', '2022-05-20 03:25:36'),
(724, 'Instagram', 'https://www.instagram.com/3na.bui', 'https://www.instagram.com/3na.bui', '3na.bui', 0, 445, 2, '2022-05-20 07:23:15', '2022-05-23 00:58:00'),
(726, 'Phone', '0827577752', '0827577752', '0827577752', 3, 445, 19, '2022-05-20 07:24:04', '2022-05-23 22:15:47'),
(727, 'Tiktok', 'https://www.tiktok.com/@3nanax', 'https://www.tiktok.com/@3nanax', 'https://www.tiktok.com/@3nanax', 5, 445, 5, '2022-05-20 07:24:38', '2022-05-23 22:15:47'),
(733, 'Facebook', 'https://www.facebook.com/manmum.mim.5', 'https://www.facebook.com/manmum.mim.5', 'manmum.mim.5', 0, 80, 1, '2022-05-21 03:52:03', '2022-05-21 03:52:03'),
(735, 'BUI HAI DUONG', '100872653916', '100872653916', NULL, 4, 445, 32, '2022-05-23 22:12:32', '2022-05-23 22:15:47'),
(736, 'Messenger', 'http://m.me/3nanax/', 'http://m.me/3nanax/', NULL, 1, 445, 35, '2022-05-23 22:13:08', '2022-05-23 22:15:47'),
(737, 'MoMo', 'https://nhantien.momo.vn/0827577752', 'https://nhantien.momo.vn/0827577752', '0827577752', 2, 445, 14, '2022-05-23 22:14:51', '2022-05-23 22:15:47'),
(738, 'Facebook', 'https://www.facebook.com/profile.php?id=100006770294268&sk=about', 'https://www.facebook.com/profile.php?id=100006770294268&sk=about', '100006770294268', 1, 339, 1, '2022-05-24 20:19:56', '2022-06-09 22:16:38'),
(739, 'Zalo', 'https://zalo.me/0777680123', 'https://zalo.me/0777680123', '0777680123', 2, 339, 15, '2022-05-24 20:22:57', '2022-06-09 22:16:38'),
(740, 'Instagram', 'https://www.instagram.com/tunguyen172/', 'https://www.instagram.com/tunguyen172/', 'tunguyen172', 3, 339, 2, '2022-05-24 20:24:21', '2022-06-09 22:16:38'),
(741, 'Tiktok', 'https://www.tiktok.com/@tunguyen_172', 'https://www.tiktok.com/@tunguyen_172', 'https://www.tiktok.com/@tunguyen_172', 4, 339, 5, '2022-05-24 20:25:22', '2022-06-09 22:16:38'),
(742, 'Telegram', 'https://t.me/Lopezjennifer1', 'https://t.me/Lopezjennifer1', NULL, 5, 339, 12, '2022-05-24 20:28:13', '2022-06-09 22:16:38'),
(744, 'Khánh Nguyễn', 'https://www.facebook.com/khanhuet', 'https://www.facebook.com/khanhuet', 'khanhuet', 0, 457, 1, '2022-05-24 21:10:21', '2022-05-24 21:10:21'),
(745, 'Khánh Nguyễn', 'https://twitter.com/khanh_uet', 'https://twitter.com/khanh_uet', 'khanh_uet', 1, 457, 8, '2022-05-24 21:10:52', '2022-05-24 21:16:51'),
(746, 'Khánh Nguyễn', 'https://www.tiktok.com/@khanhuet', 'https://www.tiktok.com/@khanhuet', 'https://www.tiktok.com/@khanhuet', 2, 457, 5, '2022-05-24 21:11:30', '2022-05-24 21:16:51'),
(747, 'Khánh Nguyễn', 'https://www.instagram.com/khanhuet', 'https://www.instagram.com/khanhuet', 'khanhuet', 4, 457, 2, '2022-05-24 21:11:57', '2022-05-24 21:16:51'),
(748, 'Telegram', 'https://t.me/khanhuet', 'https://t.me/khanhuet', 'khanhuet', 6, 457, 12, '2022-05-24 21:12:45', '2022-05-24 21:16:51'),
(749, 'NGUYEN VAN KHANH', '19035079522014', '19035079522014', NULL, 7, 457, 30, '2022-05-24 21:13:48', '2022-05-24 21:16:51'),
(750, 'Khánh Nguyễn', 'https://zalo.me/0963334703', 'https://zalo.me/0963334703', '0963334703', 5, 457, 15, '2022-05-24 21:14:28', '2022-05-24 21:16:51'),
(751, 'MoMo', 'https://nhantien.momo.vn/0963334703', 'https://nhantien.momo.vn/0963334703', '0963334703', 8, 457, 14, '2022-05-24 21:15:10', '2022-05-24 21:16:51'),
(752, 'Phone', '09633347030', '09633347030', '09633347030', 3, 457, 19, '2022-05-24 21:15:41', '2022-05-24 21:16:51'),
(753, 'CVN Ventures', 'https://cvn.ventures', 'https://cvn.ventures', NULL, 9, 457, 18, '2022-05-24 21:16:20', '2022-05-24 21:16:51'),
(754, 'Facebook', 'https://www.facebook.com/profile.php?id=100049820131791', 'https://www.facebook.com/profile.php?id=100049820131791', '100049820131791', 0, 575, 1, '2022-06-01 00:49:53', '2022-06-01 00:49:53'),
(755, 'Instagram', 'https://www.instagram.com/trm.myan', 'https://www.instagram.com/trm.myan', 'trm.myan', 1, 575, 2, '2022-06-01 01:08:00', '2022-06-01 01:11:29'),
(756, 'Email', 'tranthiminhhang01022008@gmail.com', 'tranthiminhhang01022008@gmail.com', 'tranthiminhhang01022008@gmail.com', 2, 575, 21, '2022-06-01 01:10:10', '2022-06-01 01:11:29'),
(757, 'Tiktok', 'https://www.tiktok.com/@ttm.myan', 'https://www.tiktok.com/@ttm.myan', 'https://www.tiktok.com/@ttm.myan', 3, 575, 5, '2022-06-01 01:10:38', '2022-06-01 01:11:29'),
(758, 'Zalo', 'https://zalo.me/0946662428', 'https://zalo.me/0946662428', '0946662428', 4, 575, 15, '2022-06-01 01:10:59', '2022-06-01 01:11:29'),
(759, 'MoMo', 'https://nhantien.momo.vn/0946662428', 'https://nhantien.momo.vn/0946662428', '0946662428', 5, 575, 14, '2022-06-01 01:11:26', '2022-06-01 01:11:29'),
(760, 'Facebook', 'https://www.facebook.com/profile.php?id=100050099980125', 'https://www.facebook.com/profile.php?id=100050099980125', '100050099980125', 0, 376, 1, '2022-06-01 03:36:08', '2022-06-01 03:36:08'),
(761, 'Phone', '0333479450', '0333479450', '0333479450', 2, 376, 19, '2022-06-01 03:36:30', '2022-06-01 03:39:06'),
(762, 'LE QUY DANG', '1201686899999', '1201686899999', NULL, 4, 376, 24, '2022-06-01 03:36:54', '2022-06-01 03:39:06'),
(763, 'Lê Đăng', 'dangdolce00@gmail.com', 'dangdolce00@gmail.com', 'dangdolce00@gmail.com', 3, 376, 21, '2022-06-01 03:37:36', '2022-06-01 03:39:06'),
(764, 'Lê Đăng', 'https://zalo.me/0333479450', 'https://zalo.me/0333479450', '0333479450', 1, 376, 15, '2022-06-01 03:39:03', '2022-06-01 03:39:06'),
(765, 'Facebook', 'https://www.facebook.com/MinhLaSunPond', 'https://www.facebook.com/MinhLaSunPond', 'MinhLaSunPond', 0, 354, 1, '2022-06-04 02:10:56', '2022-06-04 02:10:56'),
(766, 'Instagram', 'https://www.instagram.com/ngxnhhao', 'https://www.instagram.com/ngxnhhao', 'ngxnhhao', 0, 354, 2, '2022-06-04 02:11:53', '2022-06-04 02:11:53'),
(767, 'MoMo', 'https://nhantien.momo.vn/0337248801', 'https://nhantien.momo.vn/0337248801', '0337248801', 0, 354, 14, '2022-06-04 02:12:28', '2022-06-04 02:12:28'),
(768, 'Nguyen Nhat Hao', '070125660841', '070125660841', NULL, 0, 354, 37, '2022-06-04 02:13:12', '2022-06-04 02:32:57'),
(769, 'Zalo', 'https://zalo.me/0337248801', 'https://zalo.me/0337248801', '0337248801', 0, 354, 15, '2022-06-04 02:13:33', '2022-06-04 02:13:33'),
(770, 'Facebook', 'https://www.facebook.com/i.am.Nhiiiiii', 'https://www.facebook.com/i.am.Nhiiiiii', 'i.am.Nhiiiiii', 0, 49, 1, '2022-06-04 23:39:11', '2022-06-04 23:39:11'),
(772, 'Instagram', 'https://www.instagram.com/_hoafi.nhiye_/', 'https://www.instagram.com/_hoafi.nhiye_/', '_hoafi.nhiye_', 1, 49, 2, '2022-06-04 23:41:58', '2022-06-04 23:55:33'),
(773, 'Tiktok', 'https://vt.tiktok.com/ZSdp4wBuG/', 'https://vt.tiktok.com/ZSdp4wBuG/', 'https://vt.tiktok.com/ZSdp4wBuG/', 2, 49, 5, '2022-06-04 23:45:51', '2022-06-04 23:55:33'),
(774, 'Youtube', 'https://youtube.com/channel/UCone1TLCb4Jxc565isNRt7w', 'https://youtube.com/channel/UCone1TLCb4Jxc565isNRt7w', 'UCone1TLCb4Jxc565isNRt7w', 3, 49, 4, '2022-06-04 23:48:41', '2022-06-04 23:55:33'),
(775, 'MoMo', 'https://nhantien.momo.vn/0971595309', 'https://nhantien.momo.vn/0971595309', '0971595309', 4, 49, 14, '2022-06-04 23:54:46', '2022-06-04 23:55:33'),
(776, 'Zalo', 'https://zalo.me/0971595309', 'https://zalo.me/0971595309', '0971595309', 5, 49, 15, '2022-06-04 23:55:08', '2022-06-04 23:55:33'),
(777, 'Dung Kẹo', 'https://www.facebook.com/kiendaotac', 'https://www.facebook.com/kiendaotac', 'kiendaotac', 0, 443, 1, '2022-06-05 08:19:15', '2022-06-05 08:28:04'),
(778, 'Dung Kẹo', '0961818145', '0961818145', '0961818145', 0, 443, 19, '2022-06-05 08:21:08', '2022-06-05 08:21:08'),
(779, 'KIEU THUY DUNG', '1015474092', '1015474092', NULL, 0, 443, 31, '2022-06-05 08:22:04', '2022-06-05 08:22:04'),
(780, 'Zalo', 'https://zalo.me/0961818145', 'https://zalo.me/0961818145', '0961818145', 0, 443, 15, '2022-06-05 08:22:31', '2022-06-05 08:22:31');
INSERT INTO `social_items` (`id`, `name`, `description`, `social_value`, `social_app`, `order`, `account_id`, `social_id`, `created_at`, `updated_at`) VALUES
(781, 'Instagram', 'https://www.instagram.com/dungkeo_', 'https://www.instagram.com/dungkeo_', 'dungkeo_', 0, 443, 2, '2022-06-05 08:23:06', '2022-06-05 08:23:06'),
(782, 'KIEU THUY DUNG', '41310000141883', '41310000141883', NULL, 0, 443, 23, '2022-06-05 08:24:24', '2022-06-05 08:24:24'),
(784, 'LinkedIn', 'https://www.linkedin.com/in/tu-anh-nguyen-neu/', 'https://www.linkedin.com/in/tu-anh-nguyen-neu/', 'tu-anh-nguyen-neu', 0, 339, 7, '2022-06-09 22:16:31', '2022-06-09 22:16:31'),
(785, 'Facebook', 'https://www.facebook.com/kieu.ngocanh.9237', 'https://www.facebook.com/kieu.ngocanh.9237', 'kieu.ngocanh.9237', 0, 52, 1, '2022-06-12 19:44:17', '2022-06-12 19:44:17'),
(786, 'Instagram', 'http://www.instagram.com/kieuanh5603', 'http://www.instagram.com/kieuanh5603', 'kieuanh5603', 1, 52, 2, '2022-06-12 19:47:01', '2022-06-12 19:54:12'),
(787, 'Tiktok', 'https://vt.tiktok.com/ZSdnmnB4Q/', 'https://vt.tiktok.com/ZSdnmnB4Q/', 'https://vt.tiktok.com/ZSdnmnB4Q/', 2, 52, 5, '2022-06-12 19:47:55', '2022-06-12 19:56:27'),
(788, 'Kieu Ngoc Anh', '0558615253333', '0558615253333', NULL, 4, 52, 24, '2022-06-12 19:48:48', '2022-06-12 19:54:31'),
(789, 'Kieu Ngoc Anh', '28886365', '28886365', NULL, 5, 52, 25, '2022-06-12 19:49:25', '2022-06-12 19:54:31'),
(790, 'Zalo', 'https://zalo.me/0869328583', 'https://zalo.me/0869328583', '0869328583', 3, 52, 15, '2022-06-12 19:51:26', '2022-06-12 19:58:13'),
(791, 'Facebook', 'https://www.facebook.com/nguyenthilyna333', 'https://www.facebook.com/nguyenthilyna333', 'nguyenthilyna333', 0, 98, 1, '2022-06-13 21:23:39', '2022-06-13 21:23:39'),
(792, 'Instagram', 'https://www.instagram.com/nguyenlyna02', 'https://www.instagram.com/nguyenlyna02', 'nguyenlyna02', 1, 98, 2, '2022-06-13 21:31:04', '2022-06-13 21:34:53'),
(793, 'Tiktok', 'https://vt.tiktok.com/ZSdWRAEGo/', 'https://vt.tiktok.com/ZSdWRAEGo/', 'https://vt.tiktok.com/ZSdWRAEGo/', 2, 98, 5, '2022-06-13 21:31:44', '2022-06-13 21:33:26'),
(794, 'NGUYEN THI LY NA', '16783633', '16783633', NULL, 3, 98, 25, '2022-06-13 21:33:18', '2022-06-13 21:33:26'),
(795, 'Facebook', 'https://www.facebook.com/thanhtruong.phan.758737', 'https://www.facebook.com/thanhtruong.phan.758737', 'thanhtruong.phan.758737', 0, 437, 1, '2022-06-13 21:39:21', '2022-06-13 21:39:21'),
(796, 'Facebook', 'https://www.facebook.com/vannhan.pham.31924', 'https://www.facebook.com/vannhan.pham.31924', 'vannhan.pham.31924', 0, 395, 1, '2022-06-18 09:28:11', '2022-06-18 09:28:11'),
(797, 'Mít Nie', 'https://www.facebook.com/mitmit2807', 'https://www.facebook.com/mitmit2807', 'mitmit2807', 0, 462, 1, '2022-06-21 03:57:31', '2022-06-21 04:10:52'),
(799, 'mitemisme', 'https://instagram.com/mitemisme?igshid=NWRhNmQxMjQ=', 'https://instagram.com/mitemisme?igshid=NWRhNmQxMjQ=', 'mitemisme', 1, 462, 2, '2022-06-21 04:08:57', '2022-06-21 06:45:39'),
(800, 'mitemisme', 'https://vm.tiktok.com/ZMN2x2nvj/', 'https://vm.tiktok.com/ZMN2x2nvj/', 'https://vm.tiktok.com/ZMN2x2nvj/', 3, 462, 5, '2022-06-21 04:10:12', '2022-06-21 06:32:13'),
(801, 'mitemisme', 'https://soundcloud.app.goo.gl/XD7KpeDgsZqcA5z77', 'https://soundcloud.app.goo.gl/XD7KpeDgsZqcA5z77', NULL, 2, 462, 10, '2022-06-21 06:31:10', '2022-06-21 06:45:39'),
(802, 'Mít Nie', '+420 774 560 042', '+420 774 560 042', '+420 774 560 042', 5, 462, 19, '2022-06-21 06:43:43', '2022-06-21 06:45:39'),
(803, 'Mít Nie', 'mitmit28072004@gmail.com', 'mitmit28072004@gmail.com', 'mitmit28072004@gmail.com', 4, 462, 21, '2022-06-21 06:45:27', '2022-06-21 06:45:39'),
(804, 'Facebook nè', 'https://www.facebook.com/shinn.1z', 'https://www.facebook.com/shinn.1z', 'shinn.1z', 0, 545, 1, '2022-06-22 13:16:45', '2022-07-04 13:05:12'),
(811, 'Facebook', 'https://www.facebook.com/profile.php?id=100053808034346', 'https://www.facebook.com/profile.php?id=100053808034346', '100053808034346', 0, 580, 1, '2022-06-28 06:39:18', '2022-06-28 06:39:18'),
(812, 'Tiktok', 'www.tiktok.com/@lamanh1504', 'www.tiktok.com/@lamanh1504', 'www.tiktok.com/@lamanh1504', 0, 580, 5, '2022-06-28 06:39:54', '2022-06-28 06:39:54'),
(816, 'Facebook', 'https://www.facebook.com/profile.php?id=100070738305021', 'https://www.facebook.com/profile.php?id=100070738305021', '100070738305021', 0, 495, 1, '2022-06-28 07:00:47', '2022-06-28 07:00:47'),
(817, 'Zalo', 'https://zalo.me/0917507179', 'https://zalo.me/0917507179', '0917507179', 0, 569, 15, '2022-06-28 07:01:45', '2022-06-28 07:01:45'),
(818, 'Instagram', 'https://www.instagram.com/duwcthanh.1710/', 'https://www.instagram.com/duwcthanh.1710/', 'duwcthanh.1710', 1, 495, 2, '2022-06-28 07:02:03', '2022-06-28 07:10:52'),
(819, 'Phone', '0912615225', '0912615225', '0912615225', 2, 495, 19, '2022-06-28 07:02:45', '2022-06-28 07:02:49'),
(820, 'Instagram', 'https://www.instagram.com/Callme.Flour', 'https://www.instagram.com/Callme.Flour', 'Callme.Flour', 4, 569, 2, '2022-06-28 07:02:51', '2022-06-28 07:07:16'),
(821, 'Instagram', 'https://www.instagram.com/Callme.Flour', 'https://www.instagram.com/Callme.Flour', 'Callme.Flour', 5, 569, 2, '2022-06-28 07:02:51', '2022-06-28 07:07:16'),
(822, 'NGUYEN DUY KHANH', '9275262003', '9275262003', NULL, 3, 569, 24, '2022-06-28 07:03:36', '2022-06-28 07:03:57'),
(823, 'Facebook', 'https://www.facebook.com/Flour260403', 'https://www.facebook.com/Flour260403', 'Flour260403', 1, 569, 1, '2022-06-28 07:05:49', '2022-06-28 07:07:16'),
(824, 'Alu Alu', '0917507179', '0917507179', '0917507179', 2, 569, 19, '2022-06-28 07:07:05', '2022-06-28 07:07:16'),
(826, 'Facebook', 'https://www.facebook.com/dduong1609', 'https://www.facebook.com/dduong1609', 'dduong1609', 0, 581, 1, '2022-06-28 07:17:51', '2022-06-28 12:52:44'),
(827, 'Instagram', 'https://www.instagram.com/dongduong.1609', 'https://www.instagram.com/dongduong.1609', 'dongduong.1609', 4, 581, 2, '2022-06-28 07:21:46', '2022-06-28 07:57:18'),
(829, 'Phone', '0859786936', '0859786936', '0859786936', 1, 581, 19, '2022-06-28 07:22:44', '2022-06-28 07:57:18'),
(830, 'Zalo', 'https://zalo.me/0859786936', 'https://zalo.me/0859786936', '0859786936', 2, 581, 15, '2022-06-28 07:31:59', '2022-06-28 07:57:18'),
(832, 'Vũ Đông Dương', '5119570487773102', '5119570487773102', NULL, 3, 581, 23, '2022-06-28 07:33:30', '2022-06-28 07:57:18'),
(833, 'Facebook', 'https://www.facebook.com/lep.chi.18007', 'https://www.facebook.com/lep.chi.18007', 'lep.chi.18007', 0, 466, 1, '2022-06-30 21:29:06', '2022-06-30 21:29:06'),
(834, 'Phone', '0889608546', '0889608546', '0889608546', 1, 466, 19, '2022-06-30 21:30:36', '2022-06-30 21:31:18'),
(835, 'Facebook', 'https://www.facebook.com/xeo.ba.75', 'https://www.facebook.com/xeo.ba.75', 'xeo.ba.75', 0, 574, 1, '2022-07-01 12:39:59', '2022-07-01 12:39:59'),
(836, 'Facebook', 'https://www.facebook.com/tenthuongoilason', 'https://www.facebook.com/tenthuongoilason', 'tenthuongoilason', 0, 415, 1, '2022-07-04 05:36:26', '2022-07-04 05:36:26'),
(837, 'Zalo', 'https://zalo.me/0977977251', 'https://zalo.me/0977977251', '0977977251', 2, 415, 15, '2022-07-04 05:37:00', '2022-07-04 06:09:49'),
(838, 'Tiktok', 'https://vt.tiktok.com/ZSdoVCovb/', 'https://vt.tiktok.com/ZSdoVCovb/', 'https://vt.tiktok.com/ZSdoVCovb/', 1, 415, 5, '2022-07-04 06:09:46', '2022-07-04 06:09:49'),
(839, 'Tiktok', 'https://vt.tiktok.com/ZSdowfbBo/', 'https://vt.tiktok.com/ZSdowfbBo/', 'https://vt.tiktok.com/ZSdowfbBo/', 1, 545, 5, '2022-07-04 23:04:31', '2022-07-04 23:08:47'),
(840, 'Instagram', 'Mình đang dùng Instagram với tên shinn.1. Hãy cài đặt ứng dụng này để xem ảnh và video của mình nhé. https://www.instagram.com/invites/contact/?i=1a0nbds2qn4fc&utm_content=36r2smt', 'Mình đang dùng Instagram với tên shinn.1. Hãy cài đặt ứng dụng này để xem ảnh và video của mình nhé. https://www.instagram.com/invites/contact/?i=1a0nbds2qn4fc&utm_content=36r2smt', 'invites', 2, 545, 2, '2022-07-04 23:05:07', '2022-07-04 23:08:47'),
(841, 'Zalo', '0868954612', '0868954612', NULL, 3, 545, 15, '2022-07-04 23:06:56', '2022-07-04 23:08:47'),
(842, 'Phone', '0868954612', '0868954612', '0868954612', 4, 545, 19, '2022-07-04 23:07:31', '2022-07-04 23:08:47'),
(843, 'My Phạm', 'https://www.facebook.com/mybea.acb', 'https://www.facebook.com/mybea.acb', 'mybea.acb', 0, 53, 1, '2022-07-05 05:11:26', '2022-07-05 05:11:26'),
(844, 'Facebook', 'https://www.facebook.com/linhlinh.kao', 'https://www.facebook.com/linhlinh.kao', 'linhlinh.kao', 0, 325, 1, '2022-07-10 02:45:50', '2022-07-10 02:45:50'),
(846, 'Instagram', 'https://www.instagram.com/linhkaoo', 'https://www.instagram.com/linhkaoo', 'linhkaoo', 1, 325, 2, '2022-07-10 02:48:41', '2022-07-10 02:51:47'),
(847, 'Tiktok', 'https://www.tiktok.com/@linhkaoo', 'https://www.tiktok.com/@linhkaoo', 'https://www.tiktok.com/@linhkaoo', 3, 325, 5, '2022-07-10 02:50:20', '2022-07-10 03:02:32'),
(848, 'Zalo', 'https://zalo.me/0982285196', 'https://zalo.me/0982285196', '0982285196', 2, 325, 15, '2022-07-10 02:50:54', '2022-07-10 03:02:32'),
(849, 'Phone', '0982285196', '0982285196', '0982285196', 0, 325, 19, '2022-07-10 02:59:21', '2022-07-10 02:59:21'),
(850, 'SMS', '0982285196', '0982285196', '0982285196', 0, 325, 20, '2022-07-10 02:59:47', '2022-07-10 02:59:47'),
(851, 'Email', 'linhlinhkao96@gmail.com', 'linhlinhkao96@gmail.com', 'linhlinhkao96@gmail.com', 0, 325, 21, '2022-07-10 03:01:06', '2022-07-10 03:01:06'),
(852, 'Facebook', 'https://www.facebook.com/profile.php?id=100069299313944', 'https://www.facebook.com/profile.php?id=100069299313944', '100069299313944', 0, 408, 1, '2022-07-10 03:12:40', '2022-07-10 03:12:40'),
(853, 'Instagram', 'https://www.instagram.com/kkengg_22', 'https://www.instagram.com/kkengg_22', 'kkengg_22', 1, 408, 2, '2022-07-10 03:22:52', '2022-07-10 03:26:13'),
(854, 'Zalo', 'https://zalo.me/0924252811', 'https://zalo.me/0924252811', '0924252811', 2, 408, 15, '2022-07-10 03:24:47', '2022-07-10 03:26:13'),
(855, 'Phone', '0924252811', '0924252811', '0924252811', 3, 408, 19, '2022-07-10 03:25:15', '2022-07-10 03:26:13'),
(856, 'SMS', '0924252811', '0924252811', '0924252811', 4, 408, 20, '2022-07-10 03:26:09', '2022-07-10 03:26:13'),
(857, 'Facebook của tui', 'https://www.facebook.com/Special.allday/', 'https://www.facebook.com/Special.allday/', 'Special.allday', 0, 582, 1, '2022-07-26 19:42:12', '2022-07-26 20:10:06'),
(858, 'Zalo', 'https://zalo.me/0327374111', 'https://zalo.me/0327374111', '0327374111', 4, 582, 15, '2022-07-26 19:43:52', '2022-07-26 20:10:52'),
(859, 'Telegram', 'https://t.me/thien25111', 'https://t.me/thien25111', 'thien25111', 1, 582, 12, '2022-07-26 20:05:39', '2022-07-26 20:10:52'),
(860, 'TRINH VIET THIEN', '86897899999', '86897899999', NULL, 2, 582, 24, '2022-07-26 20:06:36', '2022-07-26 20:10:52'),
(861, 'Messenger', 'http://m.me/Special.allday/', 'http://m.me/Special.allday/', NULL, 3, 582, 35, '2022-07-26 20:09:48', '2022-07-26 20:10:52'),
(862, 'Facebook', 'https://www.facebook.com/TungLee181', 'https://www.facebook.com/TungLee181', 'TungLee181', 0, 48, 1, '2022-07-30 01:26:04', '2022-07-30 01:26:04'),
(863, 'Youtube', 'https://youtube.com/playlist?list=PLu4A2VmtQ-Or2Xa3LGzeH8AHBJhXYg5An', 'https://youtube.com/playlist?list=PLu4A2VmtQ-Or2Xa3LGzeH8AHBJhXYg5An', NULL, 3, 48, 4, '2022-07-30 01:26:56', '2022-07-30 01:30:33'),
(864, 'Zalo', 'https://zalo.me/0926883599', 'https://zalo.me/0926883599', '0926883599', 1, 48, 15, '2022-07-30 01:28:49', '2022-07-30 01:30:33'),
(865, 'Phone', '0926883599', '0926883599', '0926883599', 2, 48, 19, '2022-07-30 01:29:13', '2022-07-30 01:30:33'),
(866, 'Email', 'sontungstudio.pro@gmail.com', 'sontungstudio.pro@gmail.com', 'sontungstudio.pro@gmail.com', 4, 48, 21, '2022-07-30 01:30:22', '2022-07-30 01:30:33'),
(867, 'Facebook', 'https://www.facebook.com/qyynhh.phamm', 'https://www.facebook.com/qyynhh.phamm', 'qyynhh.phamm', 0, 521, 1, '2022-07-30 22:59:40', '2022-07-30 22:59:40'),
(868, 'Instagram', 'khunglong10220', 'khunglong10220', NULL, 1, 521, 2, '2022-07-30 23:02:38', '2022-07-30 23:05:25'),
(869, 'Zalo', '0889025010', '0889025010', NULL, 2, 521, 15, '2022-07-30 23:03:49', '2022-07-30 23:05:25'),
(870, 'Phạm Quỳnh Anh', '54610122003', '54610122003', NULL, 3, 521, 25, '2022-07-30 23:04:39', '2022-07-30 23:05:25'),
(871, 'số mình nè ❤️', '034 2092030', '034 2092030', '034 2092030', 4, 521, 19, '2022-07-30 23:05:22', '2022-07-30 23:05:25'),
(872, 'Facebook', 'https://www.facebook.com/Tranquangloc109', 'https://www.facebook.com/Tranquangloc109', 'Tranquangloc109', 0, 478, 1, '2022-08-03 03:19:12', '2022-08-03 03:19:12'),
(873, 'Zalo', 'https://zalo.me/0917450859', 'https://zalo.me/0917450859', '0917450859', 1, 478, 15, '2022-08-03 03:20:23', '2022-08-03 03:22:27'),
(874, 'Instagram', 'https://www.instagram.com/pirem.nfeen', 'https://www.instagram.com/pirem.nfeen', 'pirem.nfeen', 2, 478, 2, '2022-08-03 03:22:22', '2022-08-03 03:22:27'),
(875, 'Phone', '0829029021', '0829029021', '0829029021', 3, 478, 19, '2022-08-03 09:27:59', '2022-08-03 09:29:02'),
(876, 'Email', 'tranloc0110loc@gmail.com', 'tranloc0110loc@gmail.com', 'tranloc0110loc@gmail.com', 4, 478, 21, '2022-08-03 09:28:38', '2022-08-03 09:29:02'),
(877, 'Tiktok', 'https://www.tiktok.com/@johnnguyenbds', 'https://www.tiktok.com/@johnnguyenbds', 'https://www.tiktok.com/@johnnguyenbds', 3, 369, 5, '2022-08-08 21:41:12', '2022-08-08 21:47:53'),
(878, 'Zalo', 'https://zalo.me/0928090888', 'https://zalo.me/0928090888', '0928090888', 1, 369, 15, '2022-08-08 21:42:39', '2022-08-08 21:44:38'),
(879, 'Facebook', 'https://www.facebook.com/lanh.huyet.14/', 'https://www.facebook.com/lanh.huyet.14/', 'lanh.huyet.14', 2, 369, 1, '2022-08-08 21:43:07', '2022-08-08 21:44:38'),
(880, 'Contact', '0928090888', '0928090888', '0928090888', 0, 369, 19, '2022-08-08 21:43:39', '2022-08-08 21:47:53'),
(881, 'Nguyễn Trường Giang', '3266688888', '3266688888', NULL, 4, 369, 24, '2022-08-08 21:44:11', '2022-08-08 21:44:38'),
(882, 'Nguyễn Trường Giang', '19030908234666', '19030908234666', NULL, 5, 369, 30, '2022-08-08 21:44:31', '2022-08-08 21:44:38'),
(885, 'Instagram', 'in.n_fxi', 'in.n_fxi', NULL, 2, 576, 2, '2022-08-20 22:40:18', '2022-08-21 04:43:41'),
(887, 'Call me ‽', '0767020334', '0767020334', '0767020334', 0, 576, 19, '2022-08-20 22:47:03', '2022-08-21 04:43:33'),
(888, 'Vo Thanh Dat', '1030061388', '1030061388', NULL, 3, 576, 31, '2022-08-20 22:48:42', '2022-08-21 04:43:41'),
(889, 'Email', 'Vodat7976@gmail.com', 'Vodat7976@gmail.com', 'Vodat7976@gmail.com', 4, 576, 21, '2022-08-20 22:53:49', '2022-08-21 04:43:41'),
(890, 'Thanh Dat', 'https://www.facebook.com/innfxi.in999', 'https://www.facebook.com/innfxi.in999', 'innfxi.in999', 1, 576, 1, '2022-08-20 22:55:07', '2022-09-04 23:55:25'),
(894, 'Zalo', 'https://zalo.me/0948863638', 'https://zalo.me/0948863638', '0948863638', 1, 566, 15, '2022-08-20 23:56:57', '2022-08-21 00:30:05'),
(895, 'Facebook', 'https://www.facebook.com/profile.php?id=100071426179202', 'https://www.facebook.com/profile.php?id=100071426179202', '100071426179202', 0, 566, 1, '2022-08-21 00:23:12', '2022-08-21 00:23:12'),
(896, 'Tiktok', 'https://www.tiktok.com/@luonghieu277', 'https://www.tiktok.com/@luonghieu277', 'https://www.tiktok.com/@luonghieu277', 0, 566, 5, '2022-08-21 00:47:49', '2022-08-21 00:47:49'),
(897, 'Facebook', 'https://www.facebook.com/doanhtuan0707', 'https://www.facebook.com/doanhtuan0707', 'doanhtuan0707', 0, 510, 1, '2022-09-07 10:54:50', '2022-09-07 10:54:50'),
(898, 'Do Anh Tuan', '8788686686686', '8788686686686', NULL, 1, 510, 24, '2022-09-07 10:59:34', '2022-09-07 14:52:47'),
(899, '0339952467', '0339952467', '0339952467', NULL, 0, 510, 15, '2022-09-07 11:01:45', '2022-09-07 13:09:40'),
(900, 'SDT', '0886868860', '0886868860', '0886868860', 0, 510, 19, '2022-09-07 14:42:50', '2022-09-07 14:43:16'),
(901, 'Email', 'anhtuanshopone@gmail.com', 'anhtuanshopone@gmail.com', 'anhtuanshopone@gmail.com', 0, 510, 21, '2022-09-07 14:43:48', '2022-09-07 14:43:48'),
(902, 'Đỗ Anh Tuấn', '188502032', '188502032', NULL, 0, 510, 25, '2022-09-07 14:49:17', '2022-09-07 14:53:05'),
(903, 'Facebook', 'https://www.facebook.com/profile.php?id=100043821946228', 'https://www.facebook.com/profile.php?id=100043821946228', '100043821946228', 0, 636, 1, '2022-09-11 10:04:38', '2022-09-11 10:04:38'),
(904, 'Zalo', 'https://zalo.me/0345706232', 'https://zalo.me/0345706232', '0345706232', 0, 636, 15, '2022-09-11 10:31:56', '2022-09-11 10:31:56'),
(905, 'Phone 📞', '0345706232', '0345706232', '0345706232', 0, 636, 19, '2022-09-11 10:35:55', '2022-09-11 10:35:55'),
(906, 'Trần Quang Hiệu', '193112021', '193112021', NULL, 0, 636, 25, '2022-09-11 10:36:53', '2022-09-11 10:36:53'),
(907, 'MoMo', 'https://nhantien.momo.vn/0345706232', 'https://nhantien.momo.vn/0345706232', '0345706232', 0, 636, 14, '2022-09-11 10:37:23', '2022-09-11 10:37:23'),
(908, 'Facebook', 'https://www.facebook.com/kiendaotac', 'https://www.facebook.com/kiendaotac', 'kiendaotac', 0, 636, 1, '2022-09-11 10:37:56', '2022-09-11 10:37:56');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `social_themes`
--

CREATE TABLE `social_themes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `social_themes`
--

INSERT INTO `social_themes` (`id`, `name`, `description`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Default', 'Default', 'icon-pink-2/1-2.png', 'published', '2021-10-10 16:07:50', '2022-01-05 19:55:31'),
(2, 'Pink Pink', 'Pink', 'icon-pink-2/2-2.png', 'published', '2021-10-15 16:09:46', '2022-01-05 19:55:14'),
(7, 'Black', 'Black Classic', 'shop-card/black-icon/18.png', 'pending', '2021-10-30 04:05:55', '2022-01-04 02:20:34'),
(8, 'Black Red', 'Black Red', 'icon-pink-2/4-1.png', 'published', '2021-11-10 07:24:31', '2022-01-05 19:54:54'),
(9, 'Default 2', 'Default 2', 'icon-pink-2/3-1.png', 'published', '2021-11-11 09:01:54', '2022-01-05 20:00:48');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar_id` int(10) UNSIGNED DEFAULT NULL,
  `super_user` tinyint(1) NOT NULL DEFAULT 0,
  `manage_supers` tinyint(1) NOT NULL DEFAULT 0,
  `permissions` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_login` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `first_name`, `last_name`, `username`, `avatar_id`, `super_user`, `manage_supers`, `permissions`, `last_login`) VALUES
(1, 'admin@admin.com', NULL, '$2y$10$yMfKDT04NzeaYDIF70eueu9hVY.fK0FrcMt8rs0OlZdtRtSRoAcA6', 'bT1J79qCdW7Adw9BDx2Hh1kxvWSqJmQaRd5voeqoeCBk7WX3EPYStxcARfiq', '2021-09-06 20:52:59', '2022-08-08 06:17:48', 'Supper', 'Admin', 'admin', NULL, 1, 1, NULL, '2022-08-08 06:17:48');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user_meta`
--

CREATE TABLE `user_meta` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `widgets`
--

CREATE TABLE `widgets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `widget_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sidebar_id` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme` varchar(120) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `data` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `accounts_uuid_unique` (`uuid`),
  ADD UNIQUE KEY `accounts_username_unique` (`username`),
  ADD KEY `accounts_member_id_foreign` (`member_id`),
  ADD KEY `accounts_theme_id_foreign` (`theme_id`);

--
-- Chỉ mục cho bảng `activations`
--
ALTER TABLE `activations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activations_user_id_index` (`user_id`);

--
-- Chỉ mục cho bảng `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `contact_replies`
--
ALTER TABLE `contact_replies`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `dashboard_widgets`
--
ALTER TABLE `dashboard_widgets`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `dashboard_widget_settings`
--
ALTER TABLE `dashboard_widget_settings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dashboard_widget_settings_user_id_index` (`user_id`),
  ADD KEY `dashboard_widget_settings_widget_id_index` (`widget_id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `icons`
--
ALTER TABLE `icons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `icons_theme_id_foreign` (`theme_id`),
  ADD KEY `icons_social_id_foreign` (`social_id`);

--
-- Chỉ mục cho bảng `introductions`
--
ALTER TABLE `introductions`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Chỉ mục cho bảng `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`lang_id`);

--
-- Chỉ mục cho bảng `language_meta`
--
ALTER TABLE `language_meta`
  ADD PRIMARY KEY (`lang_meta_id`),
  ADD KEY `language_meta_reference_id_index` (`reference_id`);

--
-- Chỉ mục cho bảng `media_files`
--
ALTER TABLE `media_files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_files_user_id_index` (`user_id`);

--
-- Chỉ mục cho bảng `media_folders`
--
ALTER TABLE `media_folders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_folders_user_id_index` (`user_id`);

--
-- Chỉ mục cho bảng `media_settings`
--
ALTER TABLE `media_settings`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `members_email_unique` (`email`);

--
-- Chỉ mục cho bảng `member_activity_logs`
--
ALTER TABLE `member_activity_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `member_activity_logs_member_id_index` (`member_id`);

--
-- Chỉ mục cho bảng `member_password_resets`
--
ALTER TABLE `member_password_resets`
  ADD KEY `member_password_resets_email_index` (`email`),
  ADD KEY `member_password_resets_token_index` (`token`);

--
-- Chỉ mục cho bảng `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_slug_unique` (`slug`);

--
-- Chỉ mục cho bảng `menu_locations`
--
ALTER TABLE `menu_locations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `menu_nodes`
--
ALTER TABLE `menu_nodes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_nodes_menu_id_index` (`menu_id`),
  ADD KEY `menu_nodes_parent_id_index` (`parent_id`);

--
-- Chỉ mục cho bảng `meta_boxes`
--
ALTER TABLE `meta_boxes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `meta_boxes_reference_id_index` (`reference_id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Chỉ mục cho bảng `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Chỉ mục cho bảng `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Chỉ mục cho bảng `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `order_products`
--
ALTER TABLE `order_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_products_product_id_foreign` (`product_id`),
  ADD KEY `order_products_order_id_foreign` (`order_id`);

--
-- Chỉ mục cho bảng `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Chỉ mục cho bảng `portfolios`
--
ALTER TABLE `portfolios`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `product_cards`
--
ALTER TABLE `product_cards`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `revisions`
--
ALTER TABLE `revisions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `revisions_revisionable_id_revisionable_type_index` (`revisionable_id`,`revisionable_type`);

--
-- Chỉ mục cho bảng `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_slug_unique` (`slug`),
  ADD KEY `roles_created_by_index` (`created_by`),
  ADD KEY `roles_updated_by_index` (`updated_by`);

--
-- Chỉ mục cho bảng `role_users`
--
ALTER TABLE `role_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role_users_user_id_index` (`user_id`),
  ADD KEY `role_users_role_id_index` (`role_id`);

--
-- Chỉ mục cho bảng `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Chỉ mục cho bảng `slugs`
--
ALTER TABLE `slugs`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `socials`
--
ALTER TABLE `socials`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `social_items`
--
ALTER TABLE `social_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `social_items_account_id_foreign` (`account_id`),
  ADD KEY `social_items_social_id_foreign` (`social_id`);

--
-- Chỉ mục cho bảng `social_themes`
--
ALTER TABLE `social_themes`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- Chỉ mục cho bảng `user_meta`
--
ALTER TABLE `user_meta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_meta_user_id_index` (`user_id`);

--
-- Chỉ mục cho bảng `widgets`
--
ALTER TABLE `widgets`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=660;

--
-- AUTO_INCREMENT cho bảng `activations`
--
ALTER TABLE `activations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `contact_replies`
--
ALTER TABLE `contact_replies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `dashboard_widgets`
--
ALTER TABLE `dashboard_widgets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `dashboard_widget_settings`
--
ALTER TABLE `dashboard_widget_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `icons`
--
ALTER TABLE `icons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=196;

--
-- AUTO_INCREMENT cho bảng `introductions`
--
ALTER TABLE `introductions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `languages`
--
ALTER TABLE `languages`
  MODIFY `lang_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `language_meta`
--
ALTER TABLE `language_meta`
  MODIFY `lang_meta_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT cho bảng `media_files`
--
ALTER TABLE `media_files`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1458;

--
-- AUTO_INCREMENT cho bảng `media_folders`
--
ALTER TABLE `media_folders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT cho bảng `media_settings`
--
ALTER TABLE `media_settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `members`
--
ALTER TABLE `members`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=163;

--
-- AUTO_INCREMENT cho bảng `member_activity_logs`
--
ALTER TABLE `member_activity_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `menu_locations`
--
ALTER TABLE `menu_locations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `menu_nodes`
--
ALTER TABLE `menu_nodes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `meta_boxes`
--
ALTER TABLE `meta_boxes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT cho bảng `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT cho bảng `order_products`
--
ALTER TABLE `order_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `portfolios`
--
ALTER TABLE `portfolios`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT cho bảng `product_cards`
--
ALTER TABLE `product_cards`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `questions`
--
ALTER TABLE `questions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `revisions`
--
ALTER TABLE `revisions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `role_users`
--
ALTER TABLE `role_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `sections`
--
ALTER TABLE `sections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=179;

--
-- AUTO_INCREMENT cho bảng `slugs`
--
ALTER TABLE `slugs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `socials`
--
ALTER TABLE `socials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT cho bảng `social_items`
--
ALTER TABLE `social_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=909;

--
-- AUTO_INCREMENT cho bảng `social_themes`
--
ALTER TABLE `social_themes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `user_meta`
--
ALTER TABLE `user_meta`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `widgets`
--
ALTER TABLE `widgets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `accounts`
--
ALTER TABLE `accounts`
  ADD CONSTRAINT `accounts_member_id_foreign` FOREIGN KEY (`member_id`) REFERENCES `members` (`id`),
  ADD CONSTRAINT `accounts_theme_id_foreign` FOREIGN KEY (`theme_id`) REFERENCES `social_themes` (`id`);

--
-- Các ràng buộc cho bảng `icons`
--
ALTER TABLE `icons`
  ADD CONSTRAINT `icons_social_id_foreign` FOREIGN KEY (`social_id`) REFERENCES `socials` (`id`),
  ADD CONSTRAINT `icons_theme_id_foreign` FOREIGN KEY (`theme_id`) REFERENCES `social_themes` (`id`);

--
-- Các ràng buộc cho bảng `order_products`
--
ALTER TABLE `order_products`
  ADD CONSTRAINT `order_products_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `order_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `product_cards` (`id`);

--
-- Các ràng buộc cho bảng `social_items`
--
ALTER TABLE `social_items`
  ADD CONSTRAINT `social_items_account_id_foreign` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`id`),
  ADD CONSTRAINT `social_items_social_id_foreign` FOREIGN KEY (`social_id`) REFERENCES `socials` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
