-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 22, 2022 at 10:29 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.28

create database db_shop;
use db_shop;

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `db_category`
--

CREATE TABLE `db_category` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `link` varchar(255) CHARACTER SET utf8 NOT NULL,
  `level` int(2) NOT NULL,
  `parentid` int(11) NOT NULL,
  `orders` varchar(5) CHARACTER SET utf8 DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `created_by` varchar(255) CHARACTER SET utf8 NOT NULL,
  `updated_at` datetime NOT NULL,
  `updated_by` varchar(255) CHARACTER SET utf8 NOT NULL,
  `trash` tinyint(1) NOT NULL DEFAULT 1,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_category`
--

INSERT INTO `db_category` (`id`, `name`, `link`, `level`, `parentid`, `orders`, `created_at`, `created_by`, `updated_at`, `updated_by`, `trash`, `status`) VALUES
(1, 'Sony', 'sony', 2, 3, '0', '2022-03-22 16:15:39', '4', '2022-03-22 22:37:23', '1', 1, 1),
(2, 'Samsung', 'samsung', 2, 3, '0', '2022-03-22 16:13:24', '4', '2022-03-22 22:37:28', '1', 1, 1),
(3, 'Tivi', 'tivi', 1, 0, '0', '2022-03-22 16:09:41', '4', '2022-03-22 16:09:41', '4', 1, 1),
(4, 'Tủ lạnh', 'laptop', 1, 0, '1', '2022-03-23 21:33:25', '1', '2022-03-23 21:33:25', '1', 1, 1),
(5, 'Panasonic', 'panasonic', 2, 4, '0', '2022-03-23 21:33:41', '1', '2022-03-23 21:33:41', '1', 1, 1),
(6, 'Tosiba', 'tosiba', 2, 4, '1', '2022-03-23 21:38:28', '1', '2022-03-23 21:38:28', '1', 1, 1),
(7, 'LG', 'LG', 2, 3, '1', '2022-03-23 21:39:01', '1', '2022-03-23 21:39:01', '1', 1, 1),
(8, 'TCL', 'TCL', 2, 3, '2', '2022-03-23 21:39:48', '1', '2022-03-23 23:41:32', '4', 1, 1),
(9, 'Sharp', 'sharp', 2, 4, '0', '2022-03-23 21:40:38', '1', '2022-03-23 23:40:35', '4', 1, 1),
(10, 'Máy giặt', 'maygiat', 1, 0, '2', '2022-03-23 22:19:53', '1', '2022-03-23 22:19:53', '1', 1, 1),
(11, 'Hitachi', 'hitachi', 2, 4, '1', '2022-03-23 22:37:59', '1', '2022-03-23 23:31:02', '4', 1, 1),
(12, 'Test', 'test', 3, 5, '', '2022-03-23 23:02:48', '4', '2022-03-23 23:02:48', '4', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `db_config`
--

CREATE TABLE `db_config` (
  `id` int(11) NOT NULL,
  `mail_smtp` varchar(68) CHARACTER SET utf8 NOT NULL,
  `mail_smtp_password` varchar(100) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Password mail shop',
  `mail_noreply` varchar(68) CHARACTER SET utf8 NOT NULL,
  `priceShip` mediumtext CHARACTER SET utf8 NOT NULL,
  `title` varchar(100) CHARACTER SET utf8 NOT NULL,
  `description` text CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_config`
--

INSERT INTO `db_config` (`id`, `mail_smtp`, `mail_smtp_password`, `mail_noreply`, `priceShip`, `title`, `description`) VALUES
(1, 'sale.smart.store.2022@gmail.com', '123456', 'dinhthanh@gmail.com', '30000', 'Web site bán hàng Demo', '');

-- --------------------------------------------------------

--
-- Table structure for table `db_contact`
--

CREATE TABLE `db_contact` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` text COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `trash` int(11) NOT NULL DEFAULT 1,
  `fullname` varchar(80) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_contact`
--

INSERT INTO `db_contact` (`id`, `title`, `phone`, `email`, `content`, `created_at`, `status`, `trash`, `fullname`) VALUES
(1, 'Hay', '981643651', 'messi@gmail.com', 'Hay', '2022/3/23', 1, 1, 'Messi'),
(2, 'Shop', '981643651', 'messi@gmail.com', 'Shop 12 21', '2022/3/23', 1, 1, 'Messi'),
(4, 'Câu hỏi', '090305078', 'dinhthanh@gmail.com', 'Thời giàn giao hang trong Quận 10 là bào nhiêu', '2022/3/23', 1, 1, 'Thành'),
(5, 'Câu hỏi', '090305078', 'dinhthanh@gmail.com', 'Thời giàn giao hang trong Quận 10 là bào nhiêu', '2022/3/23', 1, 0, 'Thành'),
(6, 'Yêu cầu', '90305078', 'dinhthanh@gmail.com', 'Chào shop', '2022/3/23', 1, 0, 'Thành'),
(7, 'Chào shop', '90305078', 'dinhthanh@gmail.com', '2', '2022/3/23', 0, 0, 'Thành'),
(9, 'Câu hỏi', '0981643651', 'tri@gmail.com', ' Giá ship quận gò vấp bao nhiêu', '2022/3/23', 0, 1, 'Trí'),
(10, 'Câu hỏi', '0981643651', 'tri@gmail.com', ' Giá ship quận gò vấp bao nhiêu', '2022/3/23', 1, 1, 'Trí');

-- --------------------------------------------------------

--
-- Table structure for table `db_content`
--

CREATE TABLE `db_content` (
  `id` int(11) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 NOT NULL,
  `introtext` mediumtext CHARACTER SET utf8 NOT NULL,
  `fulltext` mediumtext CHARACTER SET utf8 NOT NULL,
  `img` varchar(255) CHARACTER SET utf8 NOT NULL,
  `created` datetime NOT NULL,
  `created_by` varchar(50) CHARACTER SET utf8 NOT NULL,
  `modified` datetime NOT NULL,
  `modified_by` varchar(50) CHARACTER SET utf8 NOT NULL,
  `trash` int(1) NOT NULL DEFAULT 1,
  `status` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_content`
--

INSERT INTO `db_content` (`id`, `title`, `alias`, `introtext`, `fulltext`, `img`, `created`, `created_by`, `modified`, `modified_by`, `trash`, `status`) VALUES
(4, 'Khám phá 5 hãng tủ lạnh có công nghệ bảo quản thực phẩm hiện đại nhất', 'kham-pha-hang-tu-lanh-co-cong-nghe-bao-quan-thuc-p-1421541', 'Các hãng tủ lạnh hiện nay ngày càng đầu tư trang bị nhiều công nghệ hiện đại hỗ trợ tốt việc bảo quản thực phẩm. Cùng Điện máy XANH khám phá 5 hãng tủ lạnh có công nghệ bảo quản thực phẩm hiện đại nhất nhé!', '\r\n<p>\r\n    <strong>Công nghệ bảo quản thực phẩm trên tủ lạnh Samsung</strong>\r\n\r\n\r\n    <p>Samsung là thương hiệu đến từ Hàn Quốc, được thành lập từ năm 1938. Samsung đã khẳng định vị thế của mình trong những năm 1990 khi trở thành tập đoàn kinh doanh hàng đầu của Hàn Quốc và mở rộng hoạt động ra toàn cầu. Thương hiệu Samsung đã nổi tiếng ở hầu hết các quốc gia trên thế giới, trong đó có Việt Nam - nơi đặt nhà máy sản xuất lớn thứ hai thế giới của Samsung. Các sản phẩm của Samsung được người tiêu dùng Việt Nam ưa chuộng: điện thoại, máy tính bảng, loa thanh, máy lạnh, máy giặt,...  </p> \r\n\r\n\r\n    <img alt=\"\" src=\"https://cdn.tgdd.vn/Files/2022/03/21/1421541/kham-pha-hang-tu-lanh-co-cong-nghe-bao-quan-thuc-p.jpg\" style=\"height:600px; width:950px\" />\r\n\r\n\r\n    <strong>Công nghệ bảo quản thực phẩm trên tủ lạnh Panasonic</strong>\r\n\r\n\r\n    <p>Tiền thân của Panasonic là công ty Panasonic Electric Industrial Co., Ltd., được thành lập vào năm 1918 và có trụ sở chính tại tỉnh Osaka, Nhật Bản, chuyên kinh doanh các sản phẩm công nghệ điện tử. Thương hiệu đến từ Nhật Bản này luôn giữ được chỗ đứng nhất định trong lòng người tiêu dùng Việt Nam với các sản phẩm như: tủ lạnh, máy giặt, máy lạnh, nồi cơm điện, lò vi sóng, máy xay sinh tố...</p>\r\n    <img alt=\"\" src=\"https://cdn.tgdd.vn/Products/Images/1943/209334/Slider/-primefresh+-2-ngan.jpg\" style=\"height:600px; width:950px\" />\r\n\r\n\r\n    <strong>Công nghệ bảo quản thực phẩm trên tủ lạnh Toshiba</strong>\r\n\r\n\r\n    <p>Tập đoàn Toshiba được thành lập năm 1873 và có trụ sở chính tại Tokyo, Nhật Bản. Đây là một trong những thương hiệu hàng đầu thế giới về các sản phẩm điện và điện tử gia dụng. Thương hiệu Toshiba đang ngày càng tạo dựng được niềm tin mạnh mẽ về thương hiệu Toshiba trong lòng khách hàng Việt Nam thông qua hàng loạt sản phẩm gia dụng mang công nghệ tiên tiến như dòng sản phẩm: tủ lạnh, máy giặt, điều hòa,...</p>\r\n    <img alt=\"\" src=\"https://cdn.tgdd.vn/Files/2022/03/21/1421541/kham-pha-hang-tu-lanh-co-cong-nghe-bao-quan-thuc-p.png\" style=\"height:600px; width:950px\" />\r\n\r\n\r\n    <strong>Công nghệ bảo quản thực phẩm trên tủ lạnh Aqua</strong>\r\n\r\n\r\n    <p>Aqua là thương hiệu của Sanyo, một công ty điện lạnh nổi tiếng của Nhật Bản được thành lập vào năm 1905. Năm 1996, nhà máy đầu tiên của Sanyo tại Việt Nam được thành lập. Năm 2012, Tập đoàn Haier Trung Quốc mua lại Sanyo. Ngoài dòng sản phẩm tủ lạnh Aqua đình đám, Aqua còn có các sản phẩm máy giặt, tủ lạnh, máy lạnh,... nổi tiếng không kém, đều được sản xuất tại Việt Nam với công nghệ Nhật Bản.</p>\r\n    <img alt=\"\" src=\"https://cdn.tgdd.vn/Files/2022/03/21/1421541/kham-pha-hang-tu-lanh-co-cong-nghe-bao-quan-thuc-p-1.jpg\" style=\"height:600px; width:950px\" />\r\n\r\n\r\n    <strong>Công nghệ bảo quản thực phẩm trên tủ lạnh LG</strong>\r\n\r\n\r\n    <p>LG Electronics Corporation là một thương hiệu của Hàn Quốc được thành lập vào năm 1958. Có thể nói đây là tập đoàn tiên phong trong lĩnh vực công nghệ. Sự nỗ lực và phát triển không ngừng của LG đã cho ra đời nhiều sản phẩm hiện đại nổi tiếng như: điều hòa, máy giặt, laptop, tivi và các sản phẩm âm thanh khác.</p>\r\n    <img alt=\"\" src=\"https://cdn.tgdd.vn/Products/Images/1943/271982/lg-inverter-635-lit-gr-d257wb-220322-123459.png\" style=\"height:600px; width:950px\" />\r\n\r\n\r\n    \r\n</p>\r\n', 'kham-pha-hang-tu-lanh-co-cong-nghe-bao-quan-thuc-p-2-318x154.jpg', '2022-03-23 23:18:02', '1', '2022-03-24 18:03:27', '1', 1, 1),
(5, 'Mừng hè cực đã – Nhận quà cực to: Mua máy lạnh Midea có cơ hội trúng xe hơi, xe máy cực giá trị', 'mung-he-cuc-da-nhan-qua-cuc-to-1424704', 'Bạn đã sẵn sàng đốt cháy mùa hè cùng Midea chưa? Một chương trình khuyến mãi hoành tráng \"Mừng hè cực đã – Nhận quà cực to\" với giải thưởng lên đến 1 tỷ đồng khi mua máy lạnh Midea và tham gia chương trình quay số trúng thưởng. Tham gia ngay vận may sẽ tới!', '\r\n<p>\r\n    <img alt=\"\" src=\"https://cdn.tgdd.vn/Files/2022/04/08/1424704/mung-he-cuc-da-nhan-qua-cuc-to-1.jpg\" style=\"height:600px; width:950px\" />\r\n\r\n\r\n    <strong>1. Thời gian khuyến mãi: 08/04 - 30/07/2022</strong>\r\n\r\n\r\n    <strong>2. Nội dung chương trình</strong>\r\n\r\n\r\n    <p>Trong thời gian khuyến mãi, khách hàng mua sản phẩm điều hòa/máy lạnh treo tường Midea bất kì tại Điện máy XANH sẽ được tham gia chương trình quay số trúng thưởng với tổng trị giá đến 1 tỷ đồng..</p>     \r\n</p>\r\n', 'mung-he-cuc-da-nhan-qua-cuc-to-1-318x154.jpg', '2022-03-23 23:18:02', '1', '2022-03-24 18:03:27', '1', 1, 1),
(6, 'Mừng Giỗ Tổ - Xe đạp năng nổ: Giảm SỐC 25% cùng quà cực XỊN. Mua ngay!', 'xe-dap-giam-soc-den-25-them-qua-hot-mung-gio-to-1424574', 'Khuyến mãi tưng bừng - Mừng ngày Giỗ Tổ, Điện máy XANH mở bán ưu đãi cực “hời” cho Xe đạp đến 25% cùng quà tặng siêu xịn khi mua kèm. Cơ hội cực hấp dẫn để sở hữu xe đạp chất lượng với giá cả phải chăng. Nhanh tay đặt mua ngay bạn nhé!', '\r\n<p>\r\n    <img alt=\"\" src=\"https://cdn.tgdd.vn/Files/2022/04/07/1424574/xe-dap-giam-soc-den-25-them-qua-hot-mung-gio-to.png\" style=\"height:600px; width:950px\" />\r\n\r\n\r\n    <strong>1. Thời gian khuyến mãi: Từ 08/04 - 10/04/2022</strong>\r\n\r\n\r\n    <strong>2. Nội dung chương trình</strong>\r\n\r\n\r\n    <p>- Trong thời gian khuyến mãi, nhiều thương hiệu xe đạp hàng đầu như Totem, Pacific, Merida, Phoenix, Twitter, Stitch, Gammax, Txed,... được giảm đến 25% tại Điện máy XANH. (theo danh sách bên dưới hoặc chi tiết TẠI ĐÂY!)\r\n- Áp dụng trả góp 0%.\r\n\r\n- Đặc biệt, khi mua online bạn sẽ được tặng thêm Nón bảo hiểm (khi mua xe người lớn) hoặc đồng hồ trẻ em (khi mua xe trẻ em) mẫu ngẫu nhiên cực xịn.\r\n\r\n- Ngoài ra còn được giảm đến 30% khi mua kèm các sản phẩm điện máy từ 3 triệu trở lên. Xem chi tiết TẠI ĐÂY!</p>     \r\n</p>\r\n', 'xe-dap-giam-soc-den-25-them-qua-hot-mung-gio-to-318x154.png', '2022-03-23 23:18:02', '1', '2022-03-24 18:03:27', '1', 1, 1),
(7, 'SĂN SALE CUỐI TUẦN - Nhận ngay mã giảm từ 50 NGÀN ĐẾN 200 NGÀN', 'san-sale-cuoi-tuan-nhan-ngay-ma-giam-tu-50-ngan-1424570', 'Nhân dịp cuối tuần, Điện máy XANH tổ chức chương trình mini game săn sale để bạn có cơ hội nhận mã giảm từ 50 ngàn đến 200 ngàn cực hấp dẫn để mua hàng online tại Điện máy XANH và Thế giới Di Động. Tham gia ngay, nhận quà liền tay.', '\r\n<p>\r\n    <img alt=\"\" src=\"https://cdn.tgdd.vn/Files/2022/04/07/1424570/san-sale-cuoi-tuan-nhan-ngay-ma-giam-tu-50-ngan.png\" style=\"height:600px; width:950px\" />\r\n\r\n\r\n    <strong>1. Thời gian chương trình: 08 - 10/04/2022</strong>\r\n\r\n\r\n    <strong>2. Nội dung chương trình</strong>\r\n\r\n\r\n    <p>Trong thời gian diễn ra chương trình \"Săn sale cuối tuần\" khách hàng sẽ có cơ hội nhận mã giảm ngẫu nhiên từ 200 ngàn đến 500 ngàn cực hấp dẫn khi tham gia chơi mini game tại Điện máy XANH và Thế Giới Di Động.</p>     \r\n</p>\r\n', 'san-sale-cuoi-tuan-nhan-ngay-ma-giam-tu-50-ngan-318x154.png', '2022-03-23 23:18:02', '1', '2022-03-24 18:03:27', '1', 1, 1),
(8, 'Tư vấn chọn mua đồng hồ cho người cổ tay nhỏ phù hợp, sang trọng nhất', 'xe-dap-giam-soc-den-25-them-qua-hot-mung-gio-to-1424574', 'Khuyến mãi tưng bừng - Mừng ngày Giỗ Tổ, Điện máy XANH mở bán ưu đãi cực “hời” cho Xe đạp đến 25% cùng quà tặng siêu xịn khi mua kèm. Cơ hội cực hấp dẫn để sở hữu xe đạp chất lượng với giá cả phải chăng. Nhanh tay đặt mua ngay bạn nhé!', '\r\n<p>\r\n    <img alt=\"\" src=\"https://cdn.tgdd.vn/Files/2019/07/09/1178467/dongho-318x154.jpg\" style=\"height:600px; width:950px\" />\r\n\r\n\r\n    <strong>1. Thời gian khuyến mãi: Từ 08/04 - 10/04/2022</strong>\r\n\r\n\r\n    <strong>2. Nội dung chương trình</strong>\r\n\r\n\r\n    <p>- Trong thời gian khuyến mãi, nhiều thương hiệu xe đạp hàng đầu như Totem, Pacific, Merida, Phoenix, Twitter, Stitch, Gammax, Txed,... được giảm đến 25% tại Điện máy XANH. (theo danh sách bên dưới hoặc chi tiết TẠI ĐÂY!)\r\n- Áp dụng trả góp 0%.\r\n\r\n- Đặc biệt, khi mua online bạn sẽ được tặng thêm Nón bảo hiểm (khi mua xe người lớn) hoặc đồng hồ trẻ em (khi mua xe trẻ em) mẫu ngẫu nhiên cực xịn.\r\n\r\n- Ngoài ra còn được giảm đến 30% khi mua kèm các sản phẩm điện máy từ 3 triệu trở lên. Xem chi tiết TẠI ĐÂY!</p>     \r\n</p>\r\n', 'dongho-318x154.jpg', '2022-03-23 23:18:02', '1', '2022-03-24 18:03:27', '1', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_customer`
--

CREATE TABLE `db_customer` (
  `id` int(11) NOT NULL,
  `fullname` varchar(100) CHARACTER SET utf8 NOT NULL,
  `username` varchar(100) CHARACTER SET utf8 NOT NULL,
  `password` varchar(32) CHARACTER SET utf8 NOT NULL,
  `address` varchar(100) CHARACTER SET utf8 NOT NULL,
  `phone` varchar(13) CHARACTER SET utf8 NOT NULL,
  `email` varchar(50) CHARACTER SET utf8 NOT NULL,
  `created` datetime NOT NULL,
  `trash` int(1) NOT NULL DEFAULT 1,
  `status` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_customer`
--

INSERT INTO `db_customer` (`id`, `fullname`, `username`, `password`, `address`, `phone`, `email`, `created`, `trash`, `status`) VALUES
(2, 'Thành', 'dinhthanh', 'e10adc3949ba59abbe56e057f20f883e', '', '0981643651', 'dinhthanh@gmail.com', '2022-03-24 22:10:08', 1, 1),
(9, 'Trí', 'tri', 'e10adc3949ba59abbe56e057f20f883e', '', '090932323', 'toan@gmail.com', '2022-03-24 17:15:12', 1, 1),
(39, 'Messi', '', '', '', '052244141', 'messi@gmail.com', '2022-03-24 23:19:45', 1, 1),
(46, 'Ronaldo', '', '', '', '0908030405', '', '2022-03-22 23:11:42', 1, 1),
(47, 'Neymar', '', '', '', '090305146', '', '2022-03-22 23:16:45', 1, 1),
(48, 'Quyền', '', '', '', '090640316', '', '2022-03-25 22:52:27', 1, 1),
(49, 'Xavi', '', '', '', '0913164136', '', '2022-03-25 22:58:22', 1, 1),
(50, 'Thetan', '', '', '', '096323646', '', '2022-03-25 23:09:57', 1, 1),
(51, 'Bitcoin', '', '', '', '0357646765', '', '2022-03-26 13:17:30', 1, 1),
(52, 'Thành', '', '', '', '076613166', '', '2022-03-26 16:26:19', 1, 1),
(53, 'Tuấn Anh', '', '', '', '0903121564', '', '2022-03-28 15:57:50', 0, 1),
(54, 'Thành', '', '', '', '033564616', '', '2022-03-28 22:17:44', 0, 1),
(55, 'Ethereum', '', '', '', '03056451', '', '2022-03-29 15:02:46', 1, 1),
(56, 'Binance', '', '', '', '0305464844', '', '2022-03-29 15:09:06', 0, 1),
(57, 'Huobi', '', '', '', '032133234', '', '2022-03-26 23:01:51', 1, 1),
(66, 'Thành 2022', 'dinhthanh', 'e10adc3949ba59abbe56e057f20f883e', '', '0306444854', 'dinhthanh@gmail.com', '2022-03-26 00:00:00', 1, 1),
(67, 'lol', '', '', '', '03745686554', 'lol@gmail.com', '2022-04-22 14:31:47', 1, 1),
(68, 'lol', '', '', '', '12123123132', '', '2022-04-22 14:32:15', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_discount`
--

CREATE TABLE `db_discount` (
  `id` int(11) NOT NULL COMMENT 'ID',
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Mã giảm giá',
  `discount` int(11) NOT NULL COMMENT 'Số tiền',
  `limit_number` int(11) NOT NULL COMMENT 'giới hạn lượt mua',
  `number_used` int(11) NOT NULL COMMENT 'Số lượng đã nhập',
  `expiration_date` date NOT NULL COMMENT 'Ngày hết hạn',
  `payment_limit` int(11) NOT NULL COMMENT 'giới hạn đơn hàng tối thiểu',
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT 'Mô tả',
  `created` date NOT NULL,
  `orders` int(11) NOT NULL,
  `trash` int(1) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_discount`
--

INSERT INTO `db_discount` (`id`, `code`, `discount`, `limit_number`, `number_used`, `expiration_date`, `payment_limit`, `description`, `created`, `orders`, `trash`, `status`) VALUES
(1, 'MAHETLUOT', 100000, 30, 30, '2022-09-29', 500000, 'Giam 100000', '2022-03-23', 1, 1, 1),
(2, 'MESSI', 200000, 20, 3, '2022-06-12', 500000, 'Giam 200k', '2022-03-23', 1, 0, 1),
(3, 'RO123', 200000, 300, 103, '2022-07-20', 300000, 'giảm 200k', '2022-03-26', 1, 1, 1),
(4, 'MAHETHAN', 150000, 68, 23, '2022-06-30', 500000, 'giảm 300k', '2022-03-26', 1, 1, 1),
(11, 'GBHVDU47CRQK', 100000, 1, 0, '2022-08-06', 0, 'Mã giảm giá 100.000 đ tự động khi đăng ký thành công', '2022-03-26', 0, 1, 1),
(12, 'C8MNIAKEILSS', 100000, 1, 0, '2022-08-06', 0, 'Mã giảm giá 100.000 đ tự động khi đăng ký thành công', '2022-03-26', 0, 1, 1),
(13, 'BNB', 150000, 200, 0, '2022-07-26', 100000, 'Giảm 150k', '2022-03-26', 1, 1, 1),
(14, 'RRHVDU47CRSO', 100000, 1, 0, '2022-08-06', 0, 'Mã giảm giá 100.000 đ tự động khi đăng ký thành công', '2022-03-26', 0, 1, 1),
(15, '9WOXIAKEILSS', 100000, 1, 0, '2022-08-06', 0, 'Mã giảm giá 100.000 đ tự động khi đăng ký thành công', '2022-03-26', 0, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_district`
--

CREATE TABLE `db_district` (
  `id` int(5) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `type` varchar(30) CHARACTER SET utf8 NOT NULL,
  `provinceid` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_district`
--

INSERT INTO `db_district` (`id`, `name`, `type`, `provinceid`) VALUES
(1, 'Quận Ba Đình', 'Quận', 1),
(2, 'Quận Hoàn Kiếm', 'Quận', 1),
(3, 'Quận Tây Hồ', 'Quận', 1),
(4, 'Quận Long Biên', 'Quận', 1),
(5, 'Quận Cầu Giấy', 'Quận', 1),
(6, 'Quận Đống Đa', 'Quận', 1),
(7, 'Quận Hai Bà Trưng', 'Quận', 1),
(8, 'Quận Hoàng Mai', 'Quận', 1),
(9, 'Quận Thanh Xuân', 'Quận', 1),
(10, 'Huyện Sóc Sơn', 'Huyện', 1),
(11, 'Huyện Đông Anh', 'Huyện', 1),
(18, 'Huyện Gia Lâm', 'Huyện', 1),
(19, 'Quận Nam Từ Liêm', 'Quận', 1),
(20, 'Huyện Thanh Trì', 'Huyện', 1),
(21, 'Quận Bắc Từ Liêm', 'Quận', 1),
(24, 'Thành phố Hà Giang', 'Thành phố', 2),
(26, 'Huyện Đồng Văn', 'Huyện', 2),
(27, 'Huyện Mèo Vạc', 'Huyện', 2),
(28, 'Huyện Yên Minh', 'Huyện', 2),
(29, 'Huyện Quản Bạ', 'Huyện', 2),
(30, 'Huyện Vị Xuyên', 'Huyện', 2),
(31, 'Huyện Bắc Mê', 'Huyện', 2),
(32, 'Huyện Hoàng Su Phì', 'Huyện', 2),
(33, 'Huyện Xín Mần', 'Huyện', 2),
(34, 'Huyện Bắc Quang', 'Huyện', 2),
(35, 'Huyện Quang Bình', 'Huyện', 2),
(40, 'Thành phố Cao Bằng', 'Thành phố', 4),
(42, 'Huyện Bảo Lâm', 'Huyện', 4),
(43, 'Huyện Bảo Lạc', 'Huyện', 4),
(44, 'Huyện Thông Nông', 'Huyện', 4),
(45, 'Huyện Hà Quảng', 'Huyện', 4),
(46, 'Huyện Trà Lĩnh', 'Huyện', 4),
(47, 'Huyện Trùng Khánh', 'Huyện', 4),
(48, 'Huyện Hạ Lang', 'Huyện', 4),
(49, 'Huyện Quảng Uyên', 'Huyện', 4),
(50, 'Huyện Phục Hoà', 'Huyện', 4),
(51, 'Huyện Hoà An', 'Huyện', 4),
(52, 'Huyện Nguyên Bình', 'Huyện', 4),
(53, 'Huyện Thạch An', 'Huyện', 4),
(58, 'Thành Phố Bắc Kạn', 'Thành phố', 6),
(60, 'Huyện Pác Nặm', 'Huyện', 6),
(61, 'Huyện Ba Bể', 'Huyện', 6),
(62, 'Huyện Ngân Sơn', 'Huyện', 6),
(63, 'Huyện Bạch Thông', 'Huyện', 6),
(64, 'Huyện Chợ Đồn', 'Huyện', 6),
(65, 'Huyện Chợ Mới', 'Huyện', 6),
(66, 'Huyện Na Rì', 'Huyện', 6),
(70, 'Thành phố Tuyên Quang', 'Thành phố', 8),
(71, 'Huyện Lâm Bình', 'Huyện', 8),
(72, 'Huyện Nà Hang', 'Huyện', 8),
(73, 'Huyện Chiêm Hóa', 'Huyện', 8),
(74, 'Huyện Hàm Yên', 'Huyện', 8),
(75, 'Huyện Yên Sơn', 'Huyện', 8),
(76, 'Huyện Sơn Dương', 'Huyện', 8),
(80, 'Thành phố Lào Cai', 'Thành phố', 10),
(82, 'Huyện Bát Xát', 'Huyện', 10),
(83, 'Huyện Mường Khương', 'Huyện', 10),
(84, 'Huyện Si Ma Cai', 'Huyện', 10),
(85, 'Huyện Bắc Hà', 'Huyện', 10),
(86, 'Huyện Bảo Thắng', 'Huyện', 10),
(87, 'Huyện Bảo Yên', 'Huyện', 10),
(88, 'Huyện Sa Pa', 'Huyện', 10),
(89, 'Huyện Văn Bàn', 'Huyện', 10),
(94, 'Thành phố Điện Biên Phủ', 'Thành phố', 11),
(95, 'Thị Xã Mường Lay', 'Thị xã', 11),
(96, 'Huyện Mường Nhé', 'Huyện', 11),
(97, 'Huyện Mường Chà', 'Huyện', 11),
(98, 'Huyện Tủa Chùa', 'Huyện', 11),
(99, 'Huyện Tuần Giáo', 'Huyện', 11),
(100, 'Huyện Điện Biên', 'Huyện', 11),
(101, 'Huyện Điện Biên Đông', 'Huyện', 11),
(102, 'Huyện Mường Ảng', 'Huyện', 11),
(103, 'Huyện Nậm Pồ', 'Huyện', 11),
(105, 'Thành phố Lai Châu', 'Thành phố', 12),
(106, 'Huyện Tam Đường', 'Huyện', 12),
(107, 'Huyện Mường Tè', 'Huyện', 12),
(108, 'Huyện Sìn Hồ', 'Huyện', 12),
(109, 'Huyện Phong Thổ', 'Huyện', 12),
(110, 'Huyện Than Uyên', 'Huyện', 12),
(111, 'Huyện Tân Uyên', 'Huyện', 12),
(112, 'Huyện Nậm Nhùn', 'Huyện', 12),
(116, 'Thành phố Sơn La', 'Thành phố', 14),
(118, 'Huyện Quỳnh Nhai', 'Huyện', 14),
(119, 'Huyện Thuận Châu', 'Huyện', 14),
(120, 'Huyện Mường La', 'Huyện', 14),
(121, 'Huyện Bắc Yên', 'Huyện', 14),
(122, 'Huyện Phù Yên', 'Huyện', 14),
(123, 'Huyện Mộc Châu', 'Huyện', 14),
(124, 'Huyện Yên Châu', 'Huyện', 14),
(125, 'Huyện Mai Sơn', 'Huyện', 14),
(126, 'Huyện Sông Mã', 'Huyện', 14),
(127, 'Huyện Sốp Cộp', 'Huyện', 14),
(128, 'Huyện Vân Hồ', 'Huyện', 14),
(132, 'Thành phố Yên Bái', 'Thành phố', 15),
(133, 'Thị xã Nghĩa Lộ', 'Thị xã', 15),
(135, 'Huyện Lục Yên', 'Huyện', 15),
(136, 'Huyện Văn Yên', 'Huyện', 15),
(137, 'Huyện Mù Căng Chải', 'Huyện', 15),
(138, 'Huyện Trấn Yên', 'Huyện', 15),
(139, 'Huyện Trạm Tấu', 'Huyện', 15),
(140, 'Huyện Văn Chấn', 'Huyện', 15),
(141, 'Huyện Yên Bình', 'Huyện', 15),
(148, 'Thành phố Hòa Bình', 'Thành phố', 17),
(150, 'Huyện Đà Bắc', 'Huyện', 17),
(151, 'Huyện Kỳ Sơn', 'Huyện', 17),
(152, 'Huyện Lương Sơn', 'Huyện', 17),
(153, 'Huyện Kim Bôi', 'Huyện', 17),
(154, 'Huyện Cao Phong', 'Huyện', 17),
(155, 'Huyện Tân Lạc', 'Huyện', 17),
(156, 'Huyện Mai Châu', 'Huyện', 17),
(157, 'Huyện Lạc Sơn', 'Huyện', 17),
(158, 'Huyện Yên Thủy', 'Huyện', 17),
(159, 'Huyện Lạc Thủy', 'Huyện', 17),
(164, 'Thành phố Thái Nguyên', 'Thành phố', 19),
(165, 'Thành phố Sông Công', 'Thành phố', 19),
(167, 'Huyện Định Hóa', 'Huyện', 19),
(168, 'Huyện Phú Lương', 'Huyện', 19),
(169, 'Huyện Đồng Hỷ', 'Huyện', 19),
(170, 'Huyện Võ Nhai', 'Huyện', 19),
(171, 'Huyện Đại Từ', 'Huyện', 19),
(172, 'Thị xã Phổ Yên', 'Thị xã', 19),
(173, 'Huyện Phú Bình', 'Huyện', 19),
(178, 'Thành phố Lạng Sơn', 'Thành phố', 20),
(180, 'Huyện Tràng Định', 'Huyện', 20),
(181, 'Huyện Bình Gia', 'Huyện', 20),
(182, 'Huyện Văn Lãng', 'Huyện', 20),
(183, 'Huyện Cao Lộc', 'Huyện', 20),
(184, 'Huyện Văn Quan', 'Huyện', 20),
(185, 'Huyện Bắc Sơn', 'Huyện', 20),
(186, 'Huyện Hữu Lũng', 'Huyện', 20),
(187, 'Huyện Chi Lăng', 'Huyện', 20),
(188, 'Huyện Lộc Bình', 'Huyện', 20),
(189, 'Huyện Đình Lập', 'Huyện', 20),
(193, 'Thành phố Hạ Long', 'Thành phố', 22),
(194, 'Thành phố Móng Cái', 'Thành phố', 22),
(195, 'Thành phố Cẩm Phả', 'Thành phố', 22),
(196, 'Thành phố Uông Bí', 'Thành phố', 22),
(198, 'Huyện Bình Liêu', 'Huyện', 22),
(199, 'Huyện Tiên Yên', 'Huyện', 22),
(200, 'Huyện Đầm Hà', 'Huyện', 22),
(201, 'Huyện Hải Hà', 'Huyện', 22),
(202, 'Huyện Ba Chẽ', 'Huyện', 22),
(203, 'Huyện Vân Đồn', 'Huyện', 22),
(204, 'Huyện Hoành Bồ', 'Huyện', 22),
(205, 'Thị xã Đông Triều', 'Thị xã', 22),
(206, 'Thị xã Quảng Yên', 'Thị xã', 22),
(207, 'Huyện Cô Tô', 'Huyện', 22),
(213, 'Thành phố Bắc Giang', 'Thành phố', 24),
(215, 'Huyện Yên Thế', 'Huyện', 24),
(216, 'Huyện Tân Yên', 'Huyện', 24),
(217, 'Huyện Lạng Giang', 'Huyện', 24),
(218, 'Huyện Lục Nam', 'Huyện', 24),
(219, 'Huyện Lục Ngạn', 'Huyện', 24),
(220, 'Huyện Sơn Động', 'Huyện', 24),
(221, 'Huyện Yên Dũng', 'Huyện', 24),
(222, 'Huyện Việt Yên', 'Huyện', 24),
(223, 'Huyện Hiệp Hòa', 'Huyện', 24),
(227, 'Thành phố Việt Trì', 'Thành phố', 25),
(228, 'Thị xã Phú Thọ', 'Thị xã', 25),
(230, 'Huyện Đoan Hùng', 'Huyện', 25),
(231, 'Huyện Hạ Hoà', 'Huyện', 25),
(232, 'Huyện Thanh Ba', 'Huyện', 25),
(233, 'Huyện Phù Ninh', 'Huyện', 25),
(234, 'Huyện Yên Lập', 'Huyện', 25),
(235, 'Huyện Cẩm Khê', 'Huyện', 25),
(236, 'Huyện Tam Nông', 'Huyện', 25),
(237, 'Huyện Lâm Thao', 'Huyện', 25),
(238, 'Huyện Thanh Sơn', 'Huyện', 25),
(239, 'Huyện Thanh Thuỷ', 'Huyện', 25),
(240, 'Huyện Tân Sơn', 'Huyện', 25),
(243, 'Thành phố Vĩnh Yên', 'Thành phố', 26),
(244, 'Thị xã Phúc Yên', 'Thị xã', 26),
(246, 'Huyện Lập Thạch', 'Huyện', 26),
(247, 'Huyện Tam Dương', 'Huyện', 26),
(248, 'Huyện Tam Đảo', 'Huyện', 26),
(249, 'Huyện Bình Xuyên', 'Huyện', 26),
(250, 'Huyện Mê Linh', 'Huyện', 1),
(251, 'Huyện Yên Lạc', 'Huyện', 26),
(252, 'Huyện Vĩnh Tường', 'Huyện', 26),
(253, 'Huyện Sông Lô', 'Huyện', 26),
(256, 'Thành phố Bắc Ninh', 'Thành phố', 27),
(258, 'Huyện Yên Phong', 'Huyện', 27),
(259, 'Huyện Quế Võ', 'Huyện', 27),
(260, 'Huyện Tiên Du', 'Huyện', 27),
(261, 'Thị xã Từ Sơn', 'Thị xã', 27),
(262, 'Huyện Thuận Thành', 'Huyện', 27),
(263, 'Huyện Gia Bình', 'Huyện', 27),
(264, 'Huyện Lương Tài', 'Huyện', 27),
(268, 'Quận Hà Đông', 'Quận', 1),
(269, 'Thị xã Sơn Tây', 'Thị xã', 1),
(271, 'Huyện Ba Vì', 'Huyện', 1),
(272, 'Huyện Phúc Thọ', 'Huyện', 1),
(273, 'Huyện Đan Phượng', 'Huyện', 1),
(274, 'Huyện Hoài Đức', 'Huyện', 1),
(275, 'Huyện Quốc Oai', 'Huyện', 1),
(276, 'Huyện Thạch Thất', 'Huyện', 1),
(277, 'Huyện Chương Mỹ', 'Huyện', 1),
(278, 'Huyện Thanh Oai', 'Huyện', 1),
(279, 'Huyện Thường Tín', 'Huyện', 1),
(280, 'Huyện Phú Xuyên', 'Huyện', 1),
(281, 'Huyện Ứng Hòa', 'Huyện', 1),
(282, 'Huyện Mỹ Đức', 'Huyện', 1),
(288, 'Thành phố Hải Dương', 'Thành phố', 30),
(290, 'Thị xã Chí Linh', 'Thị xã', 30),
(291, 'Huyện Nam Sách', 'Huyện', 30),
(292, 'Huyện Kinh Môn', 'Huyện', 30),
(293, 'Huyện Kim Thành', 'Huyện', 30),
(294, 'Huyện Thanh Hà', 'Huyện', 30),
(295, 'Huyện Cẩm Giàng', 'Huyện', 30),
(296, 'Huyện Bình Giang', 'Huyện', 30),
(297, 'Huyện Gia Lộc', 'Huyện', 30),
(298, 'Huyện Tứ Kỳ', 'Huyện', 30),
(299, 'Huyện Ninh Giang', 'Huyện', 30),
(300, 'Huyện Thanh Miện', 'Huyện', 30),
(303, 'Quận Hồng Bàng', 'Quận', 31),
(304, 'Quận Ngô Quyền', 'Quận', 31),
(305, 'Quận Lê Chân', 'Quận', 31),
(306, 'Quận Hải An', 'Quận', 31),
(307, 'Quận Kiến An', 'Quận', 31),
(308, 'Quận Đồ Sơn', 'Quận', 31),
(309, 'Quận Dương Kinh', 'Quận', 31),
(311, 'Huyện Thuỷ Nguyên', 'Huyện', 31),
(312, 'Huyện An Dương', 'Huyện', 31),
(313, 'Huyện An Lão', 'Huyện', 31),
(314, 'Huyện Kiến Thuỵ', 'Huyện', 31),
(315, 'Huyện Tiên Lãng', 'Huyện', 31),
(316, 'Huyện Vĩnh Bảo', 'Huyện', 31),
(317, 'Huyện Cát Hải', 'Huyện', 31),
(318, 'Huyện Bạch Long Vĩ', 'Huyện', 31),
(323, 'Thành phố Hưng Yên', 'Thành phố', 33),
(325, 'Huyện Văn Lâm', 'Huyện', 33),
(326, 'Huyện Văn Giang', 'Huyện', 33),
(327, 'Huyện Yên Mỹ', 'Huyện', 33),
(328, 'Huyện Mỹ Hào', 'Huyện', 33),
(329, 'Huyện Ân Thi', 'Huyện', 33),
(330, 'Huyện Khoái Châu', 'Huyện', 33),
(331, 'Huyện Kim Động', 'Huyện', 33),
(332, 'Huyện Tiên Lữ', 'Huyện', 33),
(333, 'Huyện Phù Cừ', 'Huyện', 33),
(336, 'Thành phố Thái Bình', 'Thành phố', 34),
(338, 'Huyện Quỳnh Phụ', 'Huyện', 34),
(339, 'Huyện Hưng Hà', 'Huyện', 34),
(340, 'Huyện Đông Hưng', 'Huyện', 34),
(341, 'Huyện Thái Thụy', 'Huyện', 34),
(342, 'Huyện Tiền Hải', 'Huyện', 34),
(343, 'Huyện Kiến Xương', 'Huyện', 34),
(344, 'Huyện Vũ Thư', 'Huyện', 34),
(347, 'Thành phố Phủ Lý', 'Thành phố', 35),
(349, 'Huyện Duy Tiên', 'Huyện', 35),
(350, 'Huyện Kim Bảng', 'Huyện', 35),
(351, 'Huyện Thanh Liêm', 'Huyện', 35),
(352, 'Huyện Bình Lục', 'Huyện', 35),
(353, 'Huyện Lý Nhân', 'Huyện', 35),
(356, 'Thành phố Nam Định', 'Thành phố', 36),
(358, 'Huyện Mỹ Lộc', 'Huyện', 36),
(359, 'Huyện Vụ Bản', 'Huyện', 36),
(360, 'Huyện Ý Yên', 'Huyện', 36),
(361, 'Huyện Nghĩa Hưng', 'Huyện', 36),
(362, 'Huyện Nam Trực', 'Huyện', 36),
(363, 'Huyện Trực Ninh', 'Huyện', 36),
(364, 'Huyện Xuân Trường', 'Huyện', 36),
(365, 'Huyện Giao Thủy', 'Huyện', 36),
(366, 'Huyện Hải Hậu', 'Huyện', 36),
(369, 'Thành phố Ninh Bình', 'Thành phố', 37),
(370, 'Thành phố Tam Điệp', 'Thành phố', 37),
(372, 'Huyện Nho Quan', 'Huyện', 37),
(373, 'Huyện Gia Viễn', 'Huyện', 37),
(374, 'Huyện Hoa Lư', 'Huyện', 37),
(375, 'Huyện Yên Khánh', 'Huyện', 37),
(376, 'Huyện Kim Sơn', 'Huyện', 37),
(377, 'Huyện Yên Mô', 'Huyện', 37),
(380, 'Thành phố Thanh Hóa', 'Thành phố', 38),
(381, 'Thị xã Bỉm Sơn', 'Thị xã', 38),
(382, 'Thị xã Sầm Sơn', 'Thị xã', 38),
(384, 'Huyện Mường Lát', 'Huyện', 38),
(385, 'Huyện Quan Hóa', 'Huyện', 38),
(386, 'Huyện Bá Thước', 'Huyện', 38),
(387, 'Huyện Quan Sơn', 'Huyện', 38),
(388, 'Huyện Lang Chánh', 'Huyện', 38),
(389, 'Huyện Ngọc Lặc', 'Huyện', 38),
(390, 'Huyện Cẩm Thủy', 'Huyện', 38),
(391, 'Huyện Thạch Thành', 'Huyện', 38),
(392, 'Huyện Hà Trung', 'Huyện', 38),
(393, 'Huyện Vĩnh Lộc', 'Huyện', 38),
(394, 'Huyện Yên Định', 'Huyện', 38),
(395, 'Huyện Thọ Xuân', 'Huyện', 38),
(396, 'Huyện Thường Xuân', 'Huyện', 38),
(397, 'Huyện Triệu Sơn', 'Huyện', 38),
(398, 'Huyện Thiệu Hóa', 'Huyện', 38),
(399, 'Huyện Hoằng Hóa', 'Huyện', 38),
(400, 'Huyện Hậu Lộc', 'Huyện', 38),
(401, 'Huyện Nga Sơn', 'Huyện', 38),
(402, 'Huyện Như Xuân', 'Huyện', 38),
(403, 'Huyện Như Thanh', 'Huyện', 38),
(404, 'Huyện Nông Cống', 'Huyện', 38),
(405, 'Huyện Đông Sơn', 'Huyện', 38),
(406, 'Huyện Quảng Xương', 'Huyện', 38),
(407, 'Huyện Tĩnh Gia', 'Huyện', 38),
(412, 'Thành phố Vinh', 'Thành phố', 40),
(413, 'Thị xã Cửa Lò', 'Thị xã', 40),
(414, 'Thị xã Thái Hoà', 'Thị xã', 40),
(415, 'Huyện Quế Phong', 'Huyện', 40),
(416, 'Huyện Quỳ Châu', 'Huyện', 40),
(417, 'Huyện Kỳ Sơn', 'Huyện', 40),
(418, 'Huyện Tương Dương', 'Huyện', 40),
(419, 'Huyện Nghĩa Đàn', 'Huyện', 40),
(420, 'Huyện Quỳ Hợp', 'Huyện', 40),
(421, 'Huyện Quỳnh Lưu', 'Huyện', 40),
(422, 'Huyện Con Cuông', 'Huyện', 40),
(423, 'Huyện Tân Kỳ', 'Huyện', 40),
(424, 'Huyện Anh Sơn', 'Huyện', 40),
(425, 'Huyện Diễn Châu', 'Huyện', 40),
(426, 'Huyện Yên Thành', 'Huyện', 40),
(427, 'Huyện Đô Lương', 'Huyện', 40),
(428, 'Huyện Thanh Chương', 'Huyện', 40),
(429, 'Huyện Nghi Lộc', 'Huyện', 40),
(430, 'Huyện Nam Đàn', 'Huyện', 40),
(431, 'Huyện Hưng Nguyên', 'Huyện', 40),
(432, 'Thị xã Hoàng Mai', 'Thị xã', 40),
(436, 'Thành phố Hà Tĩnh', 'Thành phố', 42),
(437, 'Thị xã Hồng Lĩnh', 'Thị xã', 42),
(439, 'Huyện Hương Sơn', 'Huyện', 42),
(440, 'Huyện Đức Thọ', 'Huyện', 42),
(441, 'Huyện Vũ Quang', 'Huyện', 42),
(442, 'Huyện Nghi Xuân', 'Huyện', 42),
(443, 'Huyện Can Lộc', 'Huyện', 42),
(444, 'Huyện Hương Khê', 'Huyện', 42),
(445, 'Huyện Thạch Hà', 'Huyện', 42),
(446, 'Huyện Cẩm Xuyên', 'Huyện', 42),
(447, 'Huyện Kỳ Anh', 'Huyện', 42),
(448, 'Huyện Lộc Hà', 'Huyện', 42),
(449, 'Thị xã Kỳ Anh', 'Thị xã', 42),
(450, 'Thành Phố Đồng Hới', 'Thành phố', 44),
(452, 'Huyện Minh Hóa', 'Huyện', 44),
(453, 'Huyện Tuyên Hóa', 'Huyện', 44),
(454, 'Huyện Quảng Trạch', 'Thị xã', 44),
(455, 'Huyện Bố Trạch', 'Huyện', 44),
(456, 'Huyện Quảng Ninh', 'Huyện', 44),
(457, 'Huyện Lệ Thủy', 'Huyện', 44),
(458, 'Thị xã Ba Đồn', 'Huyện', 44),
(461, 'Thành phố Đông Hà', 'Thành phố', 45),
(462, 'Thị xã Quảng Trị', 'Thị xã', 45),
(464, 'Huyện Vĩnh Linh', 'Huyện', 45),
(465, 'Huyện Hướng Hóa', 'Huyện', 45),
(466, 'Huyện Gio Linh', 'Huyện', 45),
(467, 'Huyện Đa Krông', 'Huyện', 45),
(468, 'Huyện Cam Lộ', 'Huyện', 45),
(469, 'Huyện Triệu Phong', 'Huyện', 45),
(470, 'Huyện Hải Lăng', 'Huyện', 45),
(471, 'Huyện Cồn Cỏ', 'Huyện', 45),
(474, 'Thành phố Huế', 'Thành phố', 46),
(476, 'Huyện Phong Điền', 'Huyện', 46),
(477, 'Huyện Quảng Điền', 'Huyện', 46),
(478, 'Huyện Phú Vang', 'Huyện', 46),
(479, 'Thị xã Hương Thủy', 'Thị xã', 46),
(480, 'Thị xã Hương Trà', 'Thị xã', 46),
(481, 'Huyện A Lưới', 'Huyện', 46),
(482, 'Huyện Phú Lộc', 'Huyện', 46),
(483, 'Huyện Nam Đông', 'Huyện', 46),
(490, 'Quận Liên Chiểu', 'Quận', 48),
(491, 'Quận Thanh Khê', 'Quận', 48),
(492, 'Quận Hải Châu', 'Quận', 48),
(493, 'Quận Sơn Trà', 'Quận', 48),
(494, 'Quận Ngũ Hành Sơn', 'Quận', 48),
(495, 'Quận Cẩm Lệ', 'Quận', 48),
(497, 'Huyện Hòa Vang', 'Huyện', 48),
(498, 'Huyện Hoàng Sa', 'Huyện', 48),
(502, 'Thành phố Tam Kỳ', 'Thành phố', 49),
(503, 'Thành phố Hội An', 'Thành phố', 49),
(504, 'Huyện Tây Giang', 'Huyện', 49),
(505, 'Huyện Đông Giang', 'Huyện', 49),
(506, 'Huyện Đại Lộc', 'Huyện', 49),
(507, 'Thị xã Điện Bàn', 'Thị xã', 49),
(508, 'Huyện Duy Xuyên', 'Huyện', 49),
(509, 'Huyện Quế Sơn', 'Huyện', 49),
(510, 'Huyện Nam Giang', 'Huyện', 49),
(511, 'Huyện Phước Sơn', 'Huyện', 49),
(512, 'Huyện Hiệp Đức', 'Huyện', 49),
(513, 'Huyện Thăng Bình', 'Huyện', 49),
(514, 'Huyện Tiên Phước', 'Huyện', 49),
(515, 'Huyện Bắc Trà My', 'Huyện', 49),
(516, 'Huyện Nam Trà My', 'Huyện', 49),
(517, 'Huyện Núi Thành', 'Huyện', 49),
(518, 'Huyện Phú Ninh', 'Huyện', 49),
(519, 'Huyện Nông Sơn', 'Huyện', 49),
(522, 'Thành phố Quảng Ngãi', 'Thành phố', 51),
(524, 'Huyện Bình Sơn', 'Huyện', 51),
(525, 'Huyện Trà Bồng', 'Huyện', 51),
(526, 'Huyện Tây Trà', 'Huyện', 51),
(527, 'Huyện Sơn Tịnh', 'Huyện', 51),
(528, 'Huyện Tư Nghĩa', 'Huyện', 51),
(529, 'Huyện Sơn Hà', 'Huyện', 51),
(530, 'Huyện Sơn Tây', 'Huyện', 51),
(531, 'Huyện Minh Long', 'Huyện', 51),
(532, 'Huyện Nghĩa Hành', 'Huyện', 51),
(533, 'Huyện Mộ Đức', 'Huyện', 51),
(534, 'Huyện Đức Phổ', 'Huyện', 51),
(535, 'Huyện Ba Tơ', 'Huyện', 51),
(536, 'Huyện Lý Sơn', 'Huyện', 51),
(540, 'Thành phố Qui Nhơn', 'Thành phố', 52),
(542, 'Huyện An Lão', 'Huyện', 52),
(543, 'Huyện Hoài Nhơn', 'Huyện', 52),
(544, 'Huyện Hoài Ân', 'Huyện', 52),
(545, 'Huyện Phù Mỹ', 'Huyện', 52),
(546, 'Huyện Vĩnh Thạnh', 'Huyện', 52),
(547, 'Huyện Tây Sơn', 'Huyện', 52),
(548, 'Huyện Phù Cát', 'Huyện', 52),
(549, 'Thị xã An Nhơn', 'Thị xã', 52),
(550, 'Huyện Tuy Phước', 'Huyện', 52),
(551, 'Huyện Vân Canh', 'Huyện', 52),
(555, 'Thành phố Tuy Hoà', 'Thành phố', 54),
(557, 'Thị xã Sông Cầu', 'Thị xã', 54),
(558, 'Huyện Đồng Xuân', 'Huyện', 54),
(559, 'Huyện Tuy An', 'Huyện', 54),
(560, 'Huyện Sơn Hòa', 'Huyện', 54),
(561, 'Huyện Sông Hinh', 'Huyện', 54),
(562, 'Huyện Tây Hoà', 'Huyện', 54),
(563, 'Huyện Phú Hoà', 'Huyện', 54),
(564, 'Huyện Đông Hòa', 'Huyện', 54),
(568, 'Thành phố Nha Trang', 'Thành phố', 56),
(569, 'Thành phố Cam Ranh', 'Thành phố', 56),
(570, 'Huyện Cam Lâm', 'Huyện', 56),
(571, 'Huyện Vạn Ninh', 'Huyện', 56),
(572, 'Thị xã Ninh Hòa', 'Thị xã', 56),
(573, 'Huyện Khánh Vĩnh', 'Huyện', 56),
(574, 'Huyện Diên Khánh', 'Huyện', 56),
(575, 'Huyện Khánh Sơn', 'Huyện', 56),
(576, 'Huyện Trường Sa', 'Huyện', 56),
(582, 'Thành phố Phan Rang-Tháp Chàm', 'Thành phố', 58),
(584, 'Huyện Bác Ái', 'Huyện', 58),
(585, 'Huyện Ninh Sơn', 'Huyện', 58),
(586, 'Huyện Ninh Hải', 'Huyện', 58),
(587, 'Huyện Ninh Phước', 'Huyện', 58),
(588, 'Huyện Thuận Bắc', 'Huyện', 58),
(589, 'Huyện Thuận Nam', 'Huyện', 58),
(593, 'Thành phố Phan Thiết', 'Thành phố', 60),
(594, 'Thị xã La Gi', 'Thị xã', 60),
(595, 'Huyện Tuy Phong', 'Huyện', 60),
(596, 'Huyện Bắc Bình', 'Huyện', 60),
(597, 'Huyện Hàm Thuận Bắc', 'Huyện', 60),
(598, 'Huyện Hàm Thuận Nam', 'Huyện', 60),
(599, 'Huyện Tánh Linh', 'Huyện', 60),
(600, 'Huyện Đức Linh', 'Huyện', 60),
(601, 'Huyện Hàm Tân', 'Huyện', 60),
(602, 'Huyện Phú Quí', 'Huyện', 60),
(608, 'Thành phố Kon Tum', 'Thành phố', 62),
(610, 'Huyện Đắk Glei', 'Huyện', 62),
(611, 'Huyện Ngọc Hồi', 'Huyện', 62),
(612, 'Huyện Đắk Tô', 'Huyện', 62),
(613, 'Huyện Kon Plông', 'Huyện', 62),
(614, 'Huyện Kon Rẫy', 'Huyện', 62),
(615, 'Huyện Đắk Hà', 'Huyện', 62),
(616, 'Huyện Sa Thầy', 'Huyện', 62),
(617, 'Huyện Tu Mơ Rông', 'Huyện', 62),
(618, 'Huyện Ia H\' Drai', 'Huyện', 62),
(622, 'Thành phố Pleiku', 'Thành phố', 64),
(623, 'Thị xã An Khê', 'Thị xã', 64),
(624, 'Thị xã Ayun Pa', 'Thị xã', 64),
(625, 'Huyện KBang', 'Huyện', 64),
(626, 'Huyện Đăk Đoa', 'Huyện', 64),
(627, 'Huyện Chư Păh', 'Huyện', 64),
(628, 'Huyện Ia Grai', 'Huyện', 64),
(629, 'Huyện Mang Yang', 'Huyện', 64),
(630, 'Huyện Kông Chro', 'Huyện', 64),
(631, 'Huyện Đức Cơ', 'Huyện', 64),
(632, 'Huyện Chư Prông', 'Huyện', 64),
(633, 'Huyện Chư Sê', 'Huyện', 64),
(634, 'Huyện Đăk Pơ', 'Huyện', 64),
(635, 'Huyện Ia Pa', 'Huyện', 64),
(637, 'Huyện Krông Pa', 'Huyện', 64),
(638, 'Huyện Phú Thiện', 'Huyện', 64),
(639, 'Huyện Chư Pưh', 'Huyện', 64),
(643, 'Thành phố Buôn Ma Thuột', 'Thành phố', 66),
(644, 'Thị Xã Buôn Hồ', 'Thị xã', 66),
(645, 'Huyện Ea H\'leo', 'Huyện', 66),
(646, 'Huyện Ea Súp', 'Huyện', 66),
(647, 'Huyện Buôn Đôn', 'Huyện', 66),
(648, 'Huyện Cư M\'gar', 'Huyện', 66),
(649, 'Huyện Krông Búk', 'Huyện', 66),
(650, 'Huyện Krông Năng', 'Huyện', 66),
(651, 'Huyện Ea Kar', 'Huyện', 66),
(652, 'Huyện M\'Đrắk', 'Huyện', 66),
(653, 'Huyện Krông Bông', 'Huyện', 66),
(654, 'Huyện Krông Pắc', 'Huyện', 66),
(655, 'Huyện Krông A Na', 'Huyện', 66),
(656, 'Huyện Lắk', 'Huyện', 66),
(657, 'Huyện Cư Kuin', 'Huyện', 66),
(660, 'Thị xã Gia Nghĩa', 'Thị xã', 67),
(661, 'Huyện Đăk Glong', 'Huyện', 67),
(662, 'Huyện Cư Jút', 'Huyện', 67),
(663, 'Huyện Đắk Mil', 'Huyện', 67),
(664, 'Huyện Krông Nô', 'Huyện', 67),
(665, 'Huyện Đắk Song', 'Huyện', 67),
(666, 'Huyện Đắk R Lấp', 'Huyện', 67),
(667, 'Huyện Tuy Đức', 'Huyện', 67),
(672, 'Thành phố Đà Lạt', 'Thành phố', 68),
(673, 'Thành phố Bảo Lộc', 'Thành phố', 68),
(674, 'Huyện Đam Rông', 'Huyện', 68),
(675, 'Huyện Lạc Dương', 'Huyện', 68),
(676, 'Huyện Lâm Hà', 'Huyện', 68),
(677, 'Huyện Đơn Dương', 'Huyện', 68),
(678, 'Huyện Đức Trọng', 'Huyện', 68),
(679, 'Huyện Di Linh', 'Huyện', 68),
(680, 'Huyện Bảo Lâm', 'Huyện', 68),
(681, 'Huyện Đạ Huoai', 'Huyện', 68),
(682, 'Huyện Đạ Tẻh', 'Huyện', 68),
(683, 'Huyện Cát Tiên', 'Huyện', 68),
(688, 'Thị xã Phước Long', 'Thị xã', 70),
(689, 'Thị xã Đồng Xoài', 'Thị xã', 70),
(690, 'Thị xã Bình Long', 'Thị xã', 70),
(691, 'Huyện Bù Gia Mập', 'Huyện', 70),
(692, 'Huyện Lộc Ninh', 'Huyện', 70),
(693, 'Huyện Bù Đốp', 'Huyện', 70),
(694, 'Huyện Hớn Quản', 'Huyện', 70),
(695, 'Huyện Đồng Phú', 'Huyện', 70),
(696, 'Huyện Bù Đăng', 'Huyện', 70),
(697, 'Huyện Chơn Thành', 'Huyện', 70),
(698, 'Huyện Phú Riềng', 'Huyện', 70),
(703, 'Thành phố Tây Ninh', 'Thành phố', 72),
(705, 'Huyện Tân Biên', 'Huyện', 72),
(706, 'Huyện Tân Châu', 'Huyện', 72),
(707, 'Huyện Dương Minh Châu', 'Huyện', 72),
(708, 'Huyện Châu Thành', 'Huyện', 72),
(709, 'Huyện Hòa Thành', 'Huyện', 72),
(710, 'Huyện Gò Dầu', 'Huyện', 72),
(711, 'Huyện Bến Cầu', 'Huyện', 72),
(712, 'Huyện Trảng Bàng', 'Huyện', 72),
(718, 'Thành phố Thủ Dầu Một', 'Thành phố', 74),
(719, 'Huyện Bàu Bàng', 'Huyện', 74),
(720, 'Huyện Dầu Tiếng', 'Huyện', 74),
(721, 'Thị xã Bến Cát', 'Thị xã', 74),
(722, 'Huyện Phú Giáo', 'Huyện', 74),
(723, 'Thị xã Tân Uyên', 'Thị xã', 74),
(724, 'Thị xã Dĩ An', 'Thị xã', 74),
(725, 'Thị xã Thuận An', 'Thị xã', 74),
(726, 'Huyện Bắc Tân Uyên', 'Huyện', 74),
(731, 'Thành phố Biên Hòa', 'Thành phố', 75),
(732, 'Thị xã Long Khánh', 'Thị xã', 75),
(734, 'Huyện Tân Phú', 'Huyện', 75),
(735, 'Huyện Vĩnh Cửu', 'Huyện', 75),
(736, 'Huyện Định Quán', 'Huyện', 75),
(737, 'Huyện Trảng Bom', 'Huyện', 75),
(738, 'Huyện Thống Nhất', 'Huyện', 75),
(739, 'Huyện Cẩm Mỹ', 'Huyện', 75),
(740, 'Huyện Long Thành', 'Huyện', 75),
(741, 'Huyện Xuân Lộc', 'Huyện', 75),
(742, 'Huyện Nhơn Trạch', 'Huyện', 75),
(747, 'Thành phố Vũng Tàu', 'Thành phố', 77),
(748, 'Thành phố Bà Rịa', 'Thành phố', 77),
(750, 'Huyện Châu Đức', 'Huyện', 77),
(751, 'Huyện Xuyên Mộc', 'Huyện', 77),
(752, 'Huyện Long Điền', 'Huyện', 77),
(753, 'Huyện Đất Đỏ', 'Huyện', 77),
(754, 'Huyện Tân Thành', 'Huyện', 77),
(755, 'Huyện Côn Đảo', 'Huyện', 77),
(760, 'Quận 1', 'Quận', 79),
(761, 'Quận 12', 'Quận', 79),
(762, 'Quận Thủ Đức', 'Quận', 79),
(763, 'Quận 9', 'Quận', 79),
(764, 'Quận Gò Vấp', 'Quận', 79),
(765, 'Quận Bình Thạnh', 'Quận', 79),
(766, 'Quận Tân Bình', 'Quận', 79),
(767, 'Quận Tân Phú', 'Quận', 79),
(768, 'Quận Phú Nhuận', 'Quận', 79),
(769, 'Quận 2', 'Quận', 79),
(770, 'Quận 3', 'Quận', 79),
(771, 'Quận 10', 'Quận', 79),
(772, 'Quận 11', 'Quận', 79),
(773, 'Quận 4', 'Quận', 79),
(774, 'Quận 5', 'Quận', 79),
(775, 'Quận 6', 'Quận', 79),
(776, 'Quận 8', 'Quận', 79),
(777, 'Quận Bình Tân', 'Quận', 79),
(778, 'Quận 7', 'Quận', 79),
(783, 'Huyện Củ Chi', 'Huyện', 79),
(784, 'Huyện Hóc Môn', 'Huyện', 79),
(785, 'Huyện Bình Chánh', 'Huyện', 79),
(786, 'Huyện Nhà Bè', 'Huyện', 79),
(787, 'Huyện Cần Giờ', 'Huyện', 79),
(794, 'Thành phố Tân An', 'Thành phố', 80),
(795, 'Thị xã Kiến Tường', 'Thị xã', 80),
(796, 'Huyện Tân Hưng', 'Huyện', 80),
(797, 'Huyện Vĩnh Hưng', 'Huyện', 80),
(798, 'Huyện Mộc Hóa', 'Huyện', 80),
(799, 'Huyện Tân Thạnh', 'Huyện', 80),
(800, 'Huyện Thạnh Hóa', 'Huyện', 80),
(801, 'Huyện Đức Huệ', 'Huyện', 80),
(802, 'Huyện Đức Hòa', 'Huyện', 80),
(803, 'Huyện Bến Lức', 'Huyện', 80),
(804, 'Huyện Thủ Thừa', 'Huyện', 80),
(805, 'Huyện Tân Trụ', 'Huyện', 80),
(806, 'Huyện Cần Đước', 'Huyện', 80),
(807, 'Huyện Cần Giuộc', 'Huyện', 80),
(808, 'Huyện Châu Thành', 'Huyện', 80),
(815, 'Thành phố Mỹ Tho', 'Thành phố', 82),
(816, 'Thị xã Gò Công', 'Thị xã', 82),
(817, 'Thị xã Cai Lậy', 'Huyện', 82),
(818, 'Huyện Tân Phước', 'Huyện', 82),
(819, 'Huyện Cái Bè', 'Huyện', 82),
(820, 'Huyện Cai Lậy', 'Thị xã', 82),
(821, 'Huyện Châu Thành', 'Huyện', 82),
(822, 'Huyện Chợ Gạo', 'Huyện', 82),
(823, 'Huyện Gò Công Tây', 'Huyện', 82),
(824, 'Huyện Gò Công Đông', 'Huyện', 82),
(825, 'Huyện Tân Phú Đông', 'Huyện', 82),
(829, 'Thành phố Bến Tre', 'Thành phố', 83),
(831, 'Huyện Châu Thành', 'Huyện', 83),
(832, 'Huyện Chợ Lách', 'Huyện', 83),
(833, 'Huyện Mỏ Cày Nam', 'Huyện', 83),
(834, 'Huyện Giồng Trôm', 'Huyện', 83),
(835, 'Huyện Bình Đại', 'Huyện', 83),
(836, 'Huyện Ba Tri', 'Huyện', 83),
(837, 'Huyện Thạnh Phú', 'Huyện', 83),
(838, 'Huyện Mỏ Cày Bắc', 'Huyện', 83),
(842, 'Thành phố Trà Vinh', 'Thành phố', 84),
(844, 'Huyện Càng Long', 'Huyện', 84),
(845, 'Huyện Cầu Kè', 'Huyện', 84),
(846, 'Huyện Tiểu Cần', 'Huyện', 84),
(847, 'Huyện Châu Thành', 'Huyện', 84),
(848, 'Huyện Cầu Ngang', 'Huyện', 84),
(849, 'Huyện Trà Cú', 'Huyện', 84),
(850, 'Huyện Duyên Hải', 'Huyện', 84),
(851, 'Thị xã Duyên Hải', 'Thị xã', 84),
(855, 'Thành phố Vĩnh Long', 'Thành phố', 86),
(857, 'Huyện Long Hồ', 'Huyện', 86),
(858, 'Huyện Mang Thít', 'Huyện', 86),
(859, 'Huyện  Vũng Liêm', 'Huyện', 86),
(860, 'Huyện Tam Bình', 'Huyện', 86),
(861, 'Thị xã Bình Minh', 'Thị xã', 86),
(862, 'Huyện Trà Ôn', 'Huyện', 86),
(863, 'Huyện Bình Tân', 'Huyện', 86),
(866, 'Thành phố Cao Lãnh', 'Thành phố', 87),
(867, 'Thành phố Sa Đéc', 'Thành phố', 87),
(868, 'Thị xã Hồng Ngự', 'Thị xã', 87),
(869, 'Huyện Tân Hồng', 'Huyện', 87),
(870, 'Huyện Hồng Ngự', 'Huyện', 87),
(871, 'Huyện Tam Nông', 'Huyện', 87),
(872, 'Huyện Tháp Mười', 'Huyện', 87),
(873, 'Huyện Cao Lãnh', 'Huyện', 87),
(874, 'Huyện Thanh Bình', 'Huyện', 87),
(875, 'Huyện Lấp Vò', 'Huyện', 87),
(876, 'Huyện Lai Vung', 'Huyện', 87),
(877, 'Huyện Châu Thành', 'Huyện', 87),
(883, 'Thành phố Long Xuyên', 'Thành phố', 89),
(884, 'Thành phố Châu Đốc', 'Thành phố', 89),
(886, 'Huyện An Phú', 'Huyện', 89),
(887, 'Thị xã Tân Châu', 'Thị xã', 89),
(888, 'Huyện Phú Tân', 'Huyện', 89),
(889, 'Huyện Châu Phú', 'Huyện', 89),
(890, 'Huyện Tịnh Biên', 'Huyện', 89),
(891, 'Huyện Tri Tôn', 'Huyện', 89),
(892, 'Huyện Châu Thành', 'Huyện', 89),
(893, 'Huyện Chợ Mới', 'Huyện', 89),
(894, 'Huyện Thoại Sơn', 'Huyện', 89),
(899, 'Thành phố Rạch Giá', 'Thành phố', 91),
(900, 'Thị xã Hà Tiên', 'Thị xã', 91),
(902, 'Huyện Kiên Lương', 'Huyện', 91),
(903, 'Huyện Hòn Đất', 'Huyện', 91),
(904, 'Huyện Tân Hiệp', 'Huyện', 91),
(905, 'Huyện Châu Thành', 'Huyện', 91),
(906, 'Huyện Giồng Riềng', 'Huyện', 91),
(907, 'Huyện Gò Quao', 'Huyện', 91),
(908, 'Huyện An Biên', 'Huyện', 91),
(909, 'Huyện An Minh', 'Huyện', 91),
(910, 'Huyện Vĩnh Thuận', 'Huyện', 91),
(911, 'Huyện Phú Quốc', 'Huyện', 91),
(912, 'Huyện Kiên Hải', 'Huyện', 91),
(913, 'Huyện U Minh Thượng', 'Huyện', 91),
(914, 'Huyện Giang Thành', 'Huyện', 91),
(916, 'Quận Ninh Kiều', 'Quận', 92),
(917, 'Quận Ô Môn', 'Quận', 92),
(918, 'Quận Bình Thuỷ', 'Quận', 92),
(919, 'Quận Cái Răng', 'Quận', 92),
(923, 'Quận Thốt Nốt', 'Quận', 92),
(924, 'Huyện Vĩnh Thạnh', 'Huyện', 92),
(925, 'Huyện Cờ Đỏ', 'Huyện', 92),
(926, 'Huyện Phong Điền', 'Huyện', 92),
(927, 'Huyện Thới Lai', 'Huyện', 92),
(930, 'Thành phố Vị Thanh', 'Thành phố', 93),
(931, 'Thị xã Ngã Bảy', 'Thị xã', 93),
(932, 'Huyện Châu Thành A', 'Huyện', 93),
(933, 'Huyện Châu Thành', 'Huyện', 93),
(934, 'Huyện Phụng Hiệp', 'Huyện', 93),
(935, 'Huyện Vị Thuỷ', 'Huyện', 93),
(936, 'Huyện Long Mỹ', 'Huyện', 93),
(937, 'Thị xã Long Mỹ', 'Thị xã', 93),
(941, 'Thành phố Sóc Trăng', 'Thành phố', 94),
(942, 'Huyện Châu Thành', 'Huyện', 94),
(943, 'Huyện Kế Sách', 'Huyện', 94),
(944, 'Huyện Mỹ Tú', 'Huyện', 94),
(945, 'Huyện Cù Lao Dung', 'Huyện', 94),
(946, 'Huyện Long Phú', 'Huyện', 94),
(947, 'Huyện Mỹ Xuyên', 'Huyện', 94),
(948, 'Thị xã Ngã Năm', 'Thị xã', 94),
(949, 'Huyện Thạnh Trị', 'Huyện', 94),
(950, 'Thị xã Vĩnh Châu', 'Thị xã', 94),
(951, 'Huyện Trần Đề', 'Huyện', 94),
(954, 'Thành phố Bạc Liêu', 'Thành phố', 95),
(956, 'Huyện Hồng Dân', 'Huyện', 95),
(957, 'Huyện Phước Long', 'Huyện', 95),
(958, 'Huyện Vĩnh Lợi', 'Huyện', 95),
(959, 'Thị xã Giá Rai', 'Thị xã', 95),
(960, 'Huyện Đông Hải', 'Huyện', 95),
(961, 'Huyện Hoà Bình', 'Huyện', 95),
(964, 'Thành phố Cà Mau', 'Thành phố', 96),
(966, 'Huyện U Minh', 'Huyện', 96),
(967, 'Huyện Thới Bình', 'Huyện', 96),
(968, 'Huyện Trần Văn Thời', 'Huyện', 96),
(969, 'Huyện Cái Nước', 'Huyện', 96),
(970, 'Huyện Đầm Dơi', 'Huyện', 96),
(971, 'Huyện Năm Căn', 'Huyện', 96),
(972, 'Huyện Phú Tân', 'Huyện', 96),
(973, 'Huyện Ngọc Hiển', 'Huyện', 96);

-- --------------------------------------------------------

--
-- Table structure for table `db_order`
--

CREATE TABLE `db_order` (
  `id` int(11) NOT NULL,
  `orderCode` varchar(8) CHARACTER SET utf8 NOT NULL,
  `customerid` int(11) NOT NULL,
  `orderdate` datetime NOT NULL,
  `fullname` varchar(100) CHARACTER SET utf8 NOT NULL,
  `phone` varchar(100) CHARACTER SET utf8 NOT NULL,
  `money` int(12) NOT NULL,
  `price_ship` int(11) NOT NULL,
  `coupon` int(11) NOT NULL,
  `province` int(5) NOT NULL,
  `district` int(5) NOT NULL,
  `address` varchar(255) CHARACTER SET utf8 NOT NULL,
  `trash` int(1) NOT NULL DEFAULT 1,
  `status` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_order`
--

INSERT INTO `db_order` (`id`, `orderCode`, `customerid`, `orderdate`, `fullname`, `phone`, `money`, `price_ship`, `coupon`, `province`, `district`, `address`, `trash`, `status`) VALUES
(7, '9Xa0wWsx', 39, '2022-04-15 22:10:25', 'Hoàng Đình Thành test', '981643651', 73190000, 30000, 0, 79, 761, 'Lê đức thọ', 1, 2),
(8, 'kBbR02fq', 2, '2022-04-15 22:16:37', 'Hoàng Đình Thành', '0981643651', 22520000, 30000, 0, 60, 597, 'so nha 23', 1, 1),
(9, 'ynPqQjPX', 9, '2022-04-15 21:38:46', 'Hoàng Đình Thành', '0981643651', 30610000, 30000, 0, 74, 721, 'so nha 23', 1, 0),
(10, '9PKJZdES', 9, '2022-04-15 00:17:31', 'Hoàng Đình Thành', '981643651', 68280000, 30000, 0, 79, 764, 'Hẻm 493, Lê đức thọ, Phường 16', 1, 1),
(11, 'fdasdasd', 2, '2022-01-08 22:16:37', 'Hoàng Đình Thành', '0981643651', 22520000, 30000, 0, 60, 597, 'so nha 23', 1, 2),
(12, 'v124asd1', 2, '2022-01-08 22:16:37', 'Hoàng Đình Thành', '0981643651', 22520000, 30000, 0, 60, 597, 'so nha 23', 1, 2),
(13, 'dav12r1f', 2, '2022-01-08 22:16:37', 'Hoàng Đình Thành', '0981643651', 22520000, 30000, 0, 60, 597, 'so nha 23', 1, 2),
(14, 'acae1234', 2, '2022-01-08 22:16:37', 'Hoàng Đình Thành', '0981643651', 22520000, 30000, 0, 60, 597, 'so nha 23', 1, 2),
(15, 'msdf1fdd', 2, '2022-01-08 22:16:37', 'Hoàng Đình Thành', '0981643651', 22520000, 30000, 0, 60, 597, 'so nha 23', 1, 2),
(16, 'a2gvdsvv', 2, '2022-01-08 22:16:37', 'Hoàng Đình Thành', '0981643651', 22520000, 30000, 0, 60, 597, 'so nha 23', 1, 2),
(17, 'vcvdsbq1', 2, '2022-01-08 22:16:37', 'Hoàng Đình Thành', '0981643651', 22520000, 30000, 0, 60, 597, 'so nha 23', 1, 2),
(18, '124hbsdv', 2, '2022-01-08 22:16:37', 'Hoàng Đình Thành', '0981643651', 22520000, 30000, 0, 60, 597, 'so nha 23', 1, 2),
(19, 'va1d2rfa', 2, '2022-01-08 22:16:37', 'Hoàng Đình Thành', '0981643651', 22520000, 30000, 0, 60, 597, 'so nha 23', 1, 2),
(20, 'vv13ffvs', 2, '2022-01-08 22:16:37', 'Hoàng Đình Thành', '0981643651', 22520000, 30000, 0, 60, 597, 'so nha 23', 1, 2),
(21, '123gdssv', 2, '2022-01-08 22:16:37', 'Hoàng Đình Thành', '0981643651', 22520000, 30000, 0, 60, 597, 'so nha 23', 1, 2),
(22, 'asdasdas', 2, '2022-01-08 22:16:37', 'Hoàng Đình Thành', '0981643651', 22520000, 30000, 0, 60, 597, 'so nha 23', 1, 2),
(23, '21cadcaa', 2, '2022-01-08 22:16:37', 'Hoàng Đình Thành', '0981643651', 22520000, 30000, 0, 60, 597, 'so nha 23', 1, 2),
(24, 'k21rfada', 2, '2022-01-08 22:16:37', 'Hoàng Đình Thành', '0981643651', 22520000, 30000, 0, 60, 597, 'so nha 23', 1, 2),
(25, 'k21efadc', 2, '2022-02-08 22:16:37', 'Hoàng Đình Thành', '0981643651', 22520000, 30000, 0, 60, 597, 'so nha 23', 1, 2),
(26, 'bscasc12', 2, '2022-02-08 22:16:37', 'Hoàng Đình Thành', '0981643651', 22520000, 30000, 0, 60, 597, 'so nha 23', 1, 2),
(27, 'vd12edaa', 2, '2022-02-08 22:16:37', 'Hoàng Đình Thành', '0981643651', 22520000, 30000, 0, 60, 597, 'so nha 23', 1, 2),
(28, '2vzcaasa', 2, '2022-02-08 22:16:37', 'Hoàng Đình Thành', '0981643651', 22520000, 30000, 0, 60, 597, 'so nha 23', 1, 2),
(29, '21bsddsf', 2, '2022-02-08 22:16:37', 'Hoàng Đình Thành', '0981643651', 22520000, 30000, 0, 60, 597, 'so nha 23', 1, 2),
(30, 'iasdasd1', 2, '2022-02-08 22:16:37', 'Hoàng Đình Thành', '0981643651', 22520000, 30000, 0, 60, 597, 'so nha 23', 1, 2),
(31, '4gsfdfsd', 2, '2022-02-08 22:16:37', 'Hoàng Đình Thành', '0981643651', 22520000, 30000, 0, 60, 597, 'so nha 23', 1, 2),
(32, 'v123edas', 2, '2022-02-08 22:16:37', 'Hoàng Đình Thành', '0981643651', 22520000, 30000, 0, 60, 597, 'so nha 23', 1, 2),
(33, 'h243qee1', 2, '2022-02-08 22:16:37', 'Hoàng Đình Thành', '0981643651', 22520000, 30000, 0, 60, 597, 'so nha 23', 1, 2),
(34, 'dsf34123', 2, '2022-02-08 22:16:37', 'Hoàng Đình Thành', '0981643651', 22520000, 30000, 0, 60, 597, 'so nha 23', 1, 2),
(35, 't1342321', 2, '2022-02-08 22:16:37', 'Hoàng Đình Thành', '0981643651', 22520000, 30000, 0, 60, 597, 'so nha 23', 1, 2),
(36, '9effsdfd', 2, '2022-02-08 22:16:37', 'Hoàng Đình Thành', '0981643651', 22520000, 30000, 0, 60, 597, 'so nha 23', 1, 2),
(37, '7qwdasda', 2, '2022-02-08 22:16:37', 'Hoàng Đình Thành', '0981643651', 22520000, 30000, 0, 60, 597, 'so nha 23', 1, 2),
(38, 'gg213123', 2, '2022-02-08 22:16:37', 'Hoàng Đình Thành', '0981643651', 22520000, 30000, 0, 60, 597, 'so nha 23', 1, 2),
(39, 'vasdsd12', 2, '2022-02-08 22:16:37', 'Hoàng Đình Thành', '0981643651', 22520000, 30000, 0, 60, 597, 'so nha 23', 1, 2),
(40, 'asdsad12', 2, '2022-02-08 22:16:37', 'Hoàng Đình Thành', '0981643651', 22520000, 30000, 0, 60, 597, 'so nha 23', 1, 2),
(41, 'vad2123t', 2, '2022-02-08 22:16:37', 'Hoàng Đình Thành', '0981643651', 22520000, 30000, 0, 60, 597, 'so nha 23', 1, 2),
(42, 'addds123', 2, '2022-02-08 22:16:37', 'Hoàng Đình Thành', '0981643651', 22520000, 30000, 0, 60, 597, 'so nha 23', 1, 2),
(43, 'vade2131', 2, '2022-03-08 22:16:37', 'Hoàng Đình Thành', '0981643651', 22520000, 30000, 0, 60, 597, 'so nha 23', 1, 2),
(44, 'va2qwe21', 2, '2022-03-08 22:16:37', 'Hoàng Đình Thành', '0981643651', 22520000, 30000, 0, 60, 597, 'so nha 23', 1, 2),
(45, 'dffh3424', 2, '2022-03-08 22:16:37', 'Hoàng Đình Thành', '0981643651', 22520000, 30000, 0, 60, 597, 'so nha 23', 1, 2),
(46, 'bwer2341', 2, '2022-03-08 22:16:37', 'Hoàng Đình Thành', '0981643651', 22520000, 30000, 0, 60, 597, 'so nha 23', 1, 2),
(47, 'n3rfwdfs', 2, '2022-03-08 22:16:37', 'Hoàng Đình Thành', '0981643651', 22520000, 30000, 0, 60, 597, 'so nha 23', 1, 2),
(48, '23fsdfdf', 2, '2022-03-08 22:16:37', 'Hoàng Đình Thành', '0981643651', 22520000, 30000, 0, 60, 597, 'so nha 23', 1, 2),
(49, '234bsfss', 2, '2022-03-08 22:16:37', 'Hoàng Đình Thành', '0981643651', 22520000, 30000, 0, 60, 597, 'so nha 23', 1, 2),
(50, 'nbwefsdf', 2, '2022-03-08 22:16:37', 'Hoàng Đình Thành', '0981643651', 22520000, 30000, 0, 60, 597, 'so nha 23', 1, 2),
(51, '24rfdfsf', 2, '2022-03-08 22:16:37', 'Hoàng Đình Thành', '0981643651', 22520000, 30000, 0, 60, 597, 'so nha 23', 1, 2),
(52, 'ffd34123', 2, '2022-03-08 22:16:37', 'Hoàng Đình Thành', '0981643651', 22520000, 30000, 0, 60, 597, 'so nha 23', 1, 2),
(53, 'scsrgsvb', 2, '2022-03-08 22:16:37', 'Hoàng Đình Thành', '0981643651', 22520000, 30000, 0, 60, 597, 'so nha 23', 1, 2),
(54, 'vmsjngn2', 2, '2022-03-08 22:16:37', 'Hoàng Đình Thành', '0981643651', 22520000, 30000, 0, 60, 597, 'so nha 23', 1, 2),
(55, 'hfsgfhdf', 2, '2022-03-08 22:16:37', 'Hoàng Đình Thành', '0981643651', 22520000, 30000, 0, 60, 597, 'so nha 23', 1, 2),
(56, 'ndhgnner', 2, '2022-03-08 22:16:37', 'Hoàng Đình Thành', '0981643651', 22520000, 30000, 0, 60, 597, 'so nha 23', 1, 2),
(57, 'ndgerfge', 2, '2022-03-08 22:16:37', 'Hoàng Đình Thành', '0981643651', 22520000, 30000, 0, 60, 597, 'so nha 23', 1, 2),
(58, 'bdgregfb', 2, '2022-03-08 22:16:37', 'Hoàng Đình Thành', '0981643651', 22520000, 30000, 0, 60, 597, 'so nha 23', 1, 2),
(59, 'cbcvgerg', 2, '2022-03-08 22:16:37', 'Hoàng Đình Thành', '0981643651', 22520000, 30000, 0, 60, 597, 'so nha 23', 1, 2),
(60, 'bret4hgf', 2, '2022-03-08 22:16:37', 'Hoàng Đình Thành', '0981643651', 22520000, 30000, 0, 60, 597, 'so nha 23', 1, 2),
(61, 'kyfyerdj', 2, '2022-03-08 22:16:37', 'Hoàng Đình Thành', '0981643651', 22520000, 30000, 0, 60, 597, 'so nha 23', 1, 2),
(62, 'w34tyhfd', 2, '2022-03-08 22:16:37', 'Hoàng Đình Thành', '0981643651', 22520000, 30000, 0, 60, 597, 'so nha 23', 1, 2),
(63, 'he5ydgdf', 2, '2022-03-08 22:16:37', 'Hoàng Đình Thành', '0981643651', 22520000, 30000, 0, 60, 597, 'so nha 23', 1, 2),
(64, '6y45dhdb', 2, '2022-03-08 22:16:37', 'Hoàng Đình Thành', '0981643651', 22520000, 30000, 0, 60, 597, 'so nha 23', 1, 2),
(65, 'fg44yhdd', 2, '2022-03-08 22:16:37', 'Hoàng Đình Thành', '0981643651', 22520000, 30000, 0, 60, 597, 'so nha 23', 1, 2),
(66, 'jrtgdfge', 2, '2022-03-08 22:16:37', 'Hoàng Đình Thành', '0981643651', 22520000, 30000, 0, 60, 597, 'so nha 23', 1, 2),
(67, 'j56hdfhf', 2, '2022-03-08 22:16:37', 'Hoàng Đình Thành', '0981643651', 22520000, 30000, 0, 60, 597, 'so nha 23', 1, 2),
(68, 'g24ewgdb', 2, '2022-03-08 22:16:37', 'Hoàng Đình Thành', '0981643651', 22520000, 30000, 0, 60, 597, 'so nha 23', 1, 2),
(69, 'sdv43yhk', 2, '2022-03-08 22:16:37', 'Hoàng Đình Thành', '0981643651', 22520000, 30000, 0, 60, 597, 'so nha 23', 1, 2),
(70, 'wetgfbxx', 2, '2022-03-08 22:16:37', 'Hoàng Đình Thành', '0981643651', 22520000, 30000, 0, 60, 597, 'so nha 23', 1, 2),
(71, 'nfg4wgvx', 2, '2022-03-08 22:16:37', 'Hoàng Đình Thành', '0981643651', 22520000, 30000, 0, 60, 597, 'so nha 23', 1, 2),
(72, 'wegfdhe5', 2, '2022-03-08 22:16:37', 'Hoàng Đình Thành', '0981643651', 22520000, 30000, 0, 60, 597, 'so nha 23', 1, 2),
(73, 'dsf23rra', 2, '2022-03-08 22:16:37', 'Hoàng Đình Thành', '0981643651', 22520000, 30000, 0, 60, 597, 'so nha 23', 1, 2),
(74, '12rfadfa', 2, '2022-03-08 22:16:37', 'Hoàng Đình Thành', '0981643651', 22520000, 30000, 0, 60, 597, 'so nha 23', 1, 2),
(75, '13rgsdvv', 2, '2022-03-08 22:16:37', 'Hoàng Đình Thành', '0981643651', 22520000, 30000, 0, 60, 597, 'so nha 23', 1, 2),
(76, '12rafvvq', 2, '2022-03-08 22:16:37', 'Hoàng Đình Thành', '0981643651', 22520000, 30000, 0, 60, 597, 'so nha 23', 1, 2),
(77, 'ghdfbdfh', 2, '2022-03-08 22:16:37', 'Hoàng Đình Thành', '0981643651', 22520000, 30000, 0, 60, 597, 'so nha 23', 1, 2),
(78, 'jfjegsdg', 2, '2022-03-08 22:16:37', 'Hoàng Đình Thành', '0981643651', 22520000, 30000, 0, 60, 597, 'so nha 23', 1, 2),
(79, '5udgdgrd', 2, '2022-03-08 22:16:37', 'Hoàng Đình Thành', '0981643651', 22520000, 30000, 0, 60, 597, 'so nha 23', 1, 2),
(80, 'xcbwgvbd', 2, '2022-04-08 22:16:37', 'Hoàng Đình Thành', '0981643651', 22520000, 30000, 0, 60, 597, 'so nha 23', 1, 2),
(81, 'eryhdfhd', 2, '2022-04-08 22:16:37', 'Hoàng Đình Thành', '0981643651', 22520000, 30000, 0, 60, 597, 'so nha 23', 1, 2),
(82, 'wgfmdsga', 2, '2022-04-08 22:16:37', 'Hoàng Đình Thành', '0981643651', 22520000, 30000, 0, 60, 597, 'so nha 23', 1, 2),
(83, '4ygfdbfh', 2, '2022-04-08 22:16:37', 'Hoàng Đình Thành', '0981643651', 22520000, 30000, 0, 60, 597, 'so nha 23', 1, 2),
(84, 'kredfgbj', 2, '2022-04-08 22:16:37', 'Hoàng Đình Thành', '0981643651', 22520000, 30000, 0, 60, 597, 'so nha 23', 1, 2),
(85, 'wgfhebcb', 2, '2022-04-08 22:16:37', 'Hoàng Đình Thành', '0981643651', 22520000, 30000, 0, 60, 597, 'so nha 23', 1, 2),
(86, 'qefgfnhd', 2, '2022-04-08 22:16:37', 'Hoàng Đình Thành', '0981643651', 22520000, 30000, 0, 60, 597, 'so nha 23', 1, 2),
(87, 'erhdfgxc', 2, '2022-04-08 22:16:37', 'Hoàng Đình Thành', '0981643651', 22520000, 30000, 0, 60, 597, 'so nha 23', 1, 2),
(88, 'sgfbhew1', 2, '2022-04-08 22:16:37', 'Hoàng Đình Thành', '0981643651', 22520000, 30000, 0, 60, 597, 'so nha 23', 1, 2),
(89, 'sdgvfjke', 2, '2022-04-08 22:16:37', 'Hoàng Đình Thành', '0981643651', 22520000, 30000, 0, 60, 597, 'so nha 23', 1, 2),
(90, 'erhbssbb', 2, '2022-04-08 22:16:37', 'Hoàng Đình Thành', '0981643651', 22520000, 30000, 0, 60, 597, 'so nha 23', 1, 2),
(91, '45yhdgfg', 2, '2022-04-08 22:16:37', 'Hoàng Đình Thành', '0981643651', 22520000, 30000, 0, 60, 597, 'so nha 23', 1, 2),
(92, '323wyerh', 2, '2022-04-08 22:16:37', 'Hoàng Đình Thành', '0981643651', 22520000, 30000, 0, 60, 597, 'so nha 23', 1, 2),
(93, 'kjhaedgw', 2, '2022-04-08 22:16:37', 'Hoàng Đình Thành', '0981643651', 22520000, 30000, 0, 60, 597, 'so nha 23', 1, 2),
(94, 'egdsbdke', 2, '2022-04-08 22:16:37', 'Hoàng Đình Thành', '0981643651', 22520000, 30000, 0, 60, 597, 'so nha 23', 1, 2),
(95, 'agwyhedb', 2, '2022-04-08 22:16:37', 'Hoàng Đình Thành', '0981643651', 22520000, 30000, 0, 60, 597, 'so nha 23', 1, 2),
(96, '23weyhxn', 2, '2022-04-08 22:16:37', 'Hoàng Đình Thành', '0981643651', 22520000, 30000, 0, 60, 597, 'so nha 23', 1, 2),
(97, '4erjkjsd', 2, '2022-04-08 22:16:37', 'Hoàng Đình Thành', '0981643651', 22520000, 30000, 0, 60, 597, 'so nha 23', 1, 2),
(98, 'qwsujxhf', 2, '2022-04-08 22:16:37', 'Hoàng Đình Thành', '0981643651', 22520000, 30000, 0, 60, 597, 'so nha 23', 1, 2),
(99, 'kjwshdcn', 2, '2022-04-08 22:16:37', 'Hoàng Đình Thành', '0981643651', 22520000, 30000, 0, 60, 597, 'so nha 23', 1, 2),
(100, 'shdfjkti', 2, '2022-04-08 22:16:37', 'Hoàng Đình Thành', '0981643651', 22520000, 30000, 0, 60, 597, 'so nha 23', 1, 2),
(101, 'DekAiwbd', 67, '2022-04-22 14:31:47', 'lol', '03745686554', 12621000, 30000, 0, 2, 34, 'ok', 1, 0),
(102, 'Ac4ZWlyU', 68, '2022-04-22 14:32:15', 'lol', '12123123132', 12621000, 30000, 0, 64, 622, 'ok', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `db_orderdetail`
--

CREATE TABLE `db_orderdetail` (
  `id` int(11) NOT NULL,
  `orderid` int(11) NOT NULL,
  `productid` int(11) NOT NULL,
  `count` int(10) NOT NULL,
  `price` int(11) NOT NULL,
  `trash` tinyint(1) NOT NULL DEFAULT 1,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_orderdetail`
--

INSERT INTO `db_orderdetail` (`id`, `orderid`, `productid`, `count`, `price`, `trash`, `status`) VALUES
(7, 7, 1, 4, 29390000, 1, 1),
(8, 8, 1, 3, 29390000, 1, 1),
(9, 9, 1, 3, 29390000, 1, 1),
(10, 10, 1, 3, 29390000, 1, 1),
(101, 101, 17, 1, 12591000, 1, 1),
(102, 102, 17, 1, 12591000, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_producer`
--

CREATE TABLE `db_producer` (
  `id` int(10) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `keyword` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified` datetime NOT NULL,
  `modified_by` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `trash` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_producer`
--

INSERT INTO `db_producer` (`id`, `name`, `code`, `keyword`, `created_at`, `created_by`, `modified`, `modified_by`, `status`, `trash`) VALUES
(1, 'Samsung', 'SAMSUNG', 'Tivi, Tủ lạnh, Máy giặt', '2022-03-22 16:08:31', 4, '2022-03-22 16:08:31', 4, 1, 1),
(2, 'Dienmayxanh', 'DIENMAYXANH', ' Tivi, Tủ lạnh, Máy giặt', '2022-03-12 23:30:37', 1, '2022-03-05 10:52:13', 1, 1, 1),
(3, 'NguyenKim', 'NGUYENKIM', 'Tivi, Tủ lạnh, Máy giặt', '2022-03-22 16:06:31', 4, '2022-03-12 23:40:22', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_product`
--

CREATE TABLE `db_product` (
  `id` int(11) NOT NULL,
  `catid` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `alias` varchar(255) CHARACTER SET utf8 NOT NULL,
  `avatar` varchar(255) CHARACTER SET utf8 NOT NULL,
  `img` varchar(255) CHARACTER SET utf8 NOT NULL,
  `sortDesc` text CHARACTER SET utf8 NOT NULL,
  `detail` text CHARACTER SET utf8 NOT NULL,
  `producer` int(11) NOT NULL,
  `number` int(11) NOT NULL,
  `number_buy` int(11) NOT NULL,
  `sale` int(3) DEFAULT NULL,
  `pre_sale` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `price_sale` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `created_by` varchar(100) CHARACTER SET utf8 NOT NULL DEFAULT 'HDL',
  `modified` datetime NOT NULL,
  `modified_by` varchar(100) CHARACTER SET utf8 NOT NULL DEFAULT 'HDL',
  `trash` int(1) NOT NULL DEFAULT 1,
  `status` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_product`
--

INSERT INTO `db_product` (`id`, `catid`, `name`, `alias`, `avatar`, `img`, `sortDesc`, `detail`, `producer`, `number`, `number_buy`, `sale`, `pre_sale`, `price`, `price_sale`, `created`, `created_by`, `modified`, `modified_by`, `trash`, `status`) VALUES
(1, 1, 'Smart Tivi Sony 50 inch KDL-50W660G', 'sony-kdl-50w660g', 'sony-kdl-50w660g_0.jpg', 'sony-kdl-50w660g_0.jpg#sony-kdl-50w660g_1.jpg#sony-kdl-50w660g_2.jpg', 'Thiết kế hiện đại, đẹp mắt phù hợp với phong họp, phòng khách', '\r\n<p>\r\n    <strong>Thiết kế đẹp mắt, hiện đại</strong>\r\n\r\n \r\n    <p>Smart Tivi Sony 50 inch 50W660G mang thiết kế tinh tế, dáng vẻ hiện đại, tạo thêm nét sang trọng cho không gian phòng nhà bạn. Chiếc tivi 50 inch phù hợp với nhiều không gian như: phòng khách, phòng họp... Ngoài ra, tivi có chân đế kim loại chữ V giúp đứng vững trên mọi bề mặt phẳng.</p>\r\n\r\n\r\n    <img alt=\"\" src=\"https://cdn.tgdd.vn/Products/Images/1942/200520/sony-kdl-50w660g-10.jpg\" style=\"height:600px; width:950px\" />\r\n\r\n \r\n    <strong>Hình ảnh rõ nét với độ phân giải Full HD</strong>\r\n\r\n \r\n    <img alt=\"\" src=\"https://cdn.tgdd.vn/Products/Images/1942/200520/sony-kdl-50w660g-9.jpg\" style=\"height:600px; width:950px\" />\r\n\r\n\r\n    <strong>Công nghệ X-Reality™ PRO hiện đại</strong>\r\n\r\n \r\n    <p>Công nghệ này cho phép chiếc tivi Sony nhà bạn thể hiện hình ảnh sắc nét hơn, giảm nhiễu và nâng cấp chất lượng hình ảnh vượt trội.</p> \r\n\r\n \r\n    <img alt=\"\" src=\"https://cdn.tgdd.vn/Products/Images/1942/200520/sony-kdl-50w660g-7.jpg\" style=\"height:600px; width:950px\" />\r\n\r\n\r\n    <strong>Hình ảnh được nâng cao độ sáng, vùng sáng một cách hiệu quả với công nghệ Dynamic Contrast Enhancer</strong>\r\n\r\n \r\n    <img alt=\"\" src=\"https://cdn.tgdd.vn/Products/Images/1942/200520/sony-kdl-50w660g-8.jpg\" style=\"height:600px; width:950px\" />\r\n\r\n\r\n    <strong>Hình ảnh chân thật, tăng cường độ tương phản với công nghệ HDR10</strong>\r\n\r\n \r\n    <img alt=\"\" src=\"https://cdn.tgdd.vn/Products/Images/1942/200520/sony-kdl-50w660g-5.jpg\" style=\"height:600px; width:950px\" />\r\n\r\n  \r\n    <strong>Hình ảnh chân thật, tăng cường độ tương phản với công nghệ HDR10</strong>\r\n\r\n \r\n    <img alt=\"\" src=\"https://cdn.tgdd.vn/Products/Images/1942/200520/sony-kdl-50w660g-5.jpg\" style=\"height:600px; width:950px\" />\r\n\r\n \r\n    <strong>Những cảnh thể thao hay chuyển động nhanh giờ đây không còn tình trạng mờ hình với công nghệ Motionflow™ XR 200 Hz</strong>\r\n\r\n \r\n    <img alt=\"\" src=\"https://cdn.tgdd.vn/Products/Images/1942/200520/sony-kdl-50w660g-6.jpg\" style=\"height:600px; width:950px\" />\r\n\r\n \r\n</p>\r\n', 1, 320, 60, 10, 8000000, 14400000, 12960000, '2022-03-23 16:22:43', '4', '2022-03-23 17:11:20', '1', 1, 1),
(2, 2, 'Smart Tivi Samsung 4K Crystal UHD 60 inch UA60AU8100', 'led-4k-samsung-ua60au8100', 'led-4k-samsung-ua60au8100_0.jpg', 'led-4k-samsung-ua60au8100_0.jpg#led-4k-samsung-ua60au8100_1.jpg#led-4k-samsung-ua60au8100_2.jpg', 'Thiết kế độc đáo tiện lợi, khẳng định đẳng cấp', '\r\n<p>\r\n    <strong>Thanh mảnh, tinh tế, dùng đẹp cho không gian hiện đại</strong>\r\n\r\n \r\n    <p>Smart Tivi Samsung 4K 60 inch UA60AU8100 thiết kế Airslim màn hình không viền 3 cạnh sang trọng, cộng thêm nét tinh tế cho không gian sử dụng. Kích thước màn hình tivi Samsung 60 inch phù hợp sử dụng cho phòng khách gia đình, phòng ngủ, phòng họp nhỏ…</p>\r\n\r\n\r\n    <img alt=\"\" src=\"https://cdn.tgdd.vn/Products/Images/1942/235793/Slider/led-4k-samsung-ua60au8100-190321-0233101.jpg\" style=\"height:600px; width:950px\" />\r\n\r\n \r\n    <p>Từng chi tiết được hiển thị thật rõ ràng, sắc nét, mang đến trải nghiệm xem đầy thích thú và thỏa mãn khi xem của người dùng.</p>\r\n\r\n \r\n    <img alt=\"\" src=\"https://cdn.tgdd.vn/Products/Images/1942/235793/Slider/led-4k-samsung-ua60au8100-190321-0233112.jpg\" style=\"height:600px; width:950px\" />\r\n\r\n\r\n    <p>Smart tivi với bộ xử lý Crystal 4K cho khả năng tái tạo chi tiết một cách hoàn hảo, mô phỏng màu sắc chính xác giúp các hình ảnh đầu vào được nâng cấp trở nên sắc nét hơn, trong trẻo tự nhiên hơn, chất lượng gần chuẩn 4K cuốn hút người dùng hơn.</p> \r\n\r\n \r\n    <img alt=\"\" src=\"https://cdn.tgdd.vn/Products/Images/1942/235793/Slider/led-4k-samsung-ua60au8100-190321-0233133.jpg\" style=\"height:600px; width:950px\" />\r\n\r\n\r\n    <p>Dynamic Crystal Color với hơn 1 tỷ màu tái hiện chân thực sắc màu cuộc sống trên khung hình của Smart Tivi Samsung.</p> \r\n\r\n \r\n    <img alt=\"\" src=\"https://cdn.tgdd.vn/Products/Images/1942/235793/Slider/led-4k-samsung-ua60au8100-190321-0233144.jpg\" style=\"height:600px; width:950px\" />\r\n\r\n\r\n    <strong>Tăng cường độ tương phản, cho hình ảnh có chiều sâu hơn với HDR10+ và Contrast Enhancer</strong>\r\n\r\n \r\n    <p>Công nghệ HDR10+ của tivi Samsung 4K giúp tăng cường độ sâu và độ chi tiết của chúng giúp khung hình thêm sắc nét, chân thực theo từng nội dung mô tả.</p> \r\n\r\n\r\n    <img alt=\"\" src=\"https://cdn.tgdd.vn/Products/Images/1942/235793/Slider/led-4k-samsung-ua60au8100-190321-0233165.jpg\" style=\"height:600px; width:950px\" />\r\n\r\n\r\n    <p>Các khung hình tối rõ ràng, lôi cuốn hơn với vùng tối tối hơn, vùng sáng sáng hơn, tương phản tốt, chi tiết rõ ràng nhất.</p> \r\n\r\n\r\n    <img alt=\"\" src=\"https://cdn.tgdd.vn/Products/Images/1942/235793/Slider/led-4k-samsung-ua60au8100-190321-0233176.jpg\" style=\"height:600px; width:950px\" />\r\n\r\n\r\n    <strong>Âm thanh sống động, mạnh mẽ và chi tiết với công nghệ Q-Symphony và Adaptive Sound</strong>\r\n\r\n \r\n    <p>Q-Symphony đồng bộ hoàn hảo loa TV Samsung với các loa thanh và loa trần, kiến tạo âm thanh đa chiều đỉnh cao. Adaptive Sound nhận biết, phân tích nội dung và điều chỉnh âm thanh phù hợp cho từng nội dung hiển thị. Nhờ đó hình ảnh và âm thanh được gắn kết hoàn hảo để tạo nên trải nghiệm xem phim, chơi game hay nghe nhạc… cực đã.</p> \r\n\r\n\r\n    <img alt=\"\" src=\"https://cdn.tgdd.vn/Products/Images/1942/235793/Slider/led-4k-samsung-ua60au8100-190321-0233197.jpg\" style=\"height:600px; width:950px\" />\r\n\r\n   \r\n</p>\r\n', 1, 20, 16, 20, 15600000, 24990000, 19992000, '2022-03-23 23:28:34', '1', '2022-03-23 17:08:04', '1', 1, 1),
(3, 2, 'Smart Tivi Samsung 4K 55 inch UA55TU6900', 'smart-samsung-4k-55-inch-55tu6900', 'smart-samsung-4k-55-inch-55tu6900_0.jpg', 'smart-samsung-4k-55-inch-55tu6900_0.jpg#smart-samsung-4k-55-inch-55tu6900_1.jpg#smart-samsung-4k-55-inch-55tu6900_2.jpg', 'Thiết kế độc đáo tiện lợi, khẳng định đẳng cấp', '\r\n<p>\r\n    <strong>Thiết kế không viền 3 cạnh tinh tế</strong>\r\n\r\n \r\n    <p>Smart Tivi Samsung 4K 55 inch 55TU6900 được thiết kế màn hình không viền 3 cạnh tinh tế, màu đen thanh lịch. Kiểu dáng thanh mảnh, hứa hẹn sẽ làm nổi bật không gian nội thất nhà bạn.</p>\r\n\r\n\r\n    <img alt=\"\" src=\"https://cdn.tgdd.vn/Products/Images/1942/242539/thietke.jpg\" style=\"height:600px; width:950px\" />\r\n\r\n \r\n    <p>Hiển thị hình ảnh sắc nét gấp 4 lần Full HD nhờ độ phân giải 4K</p>\r\n\r\n \r\n    <img alt=\"\" src=\"https://cdn.tgdd.vn/Products/Images/1942/242539/4k.jpg\" style=\"height:600px; width:950px\" />\r\n\r\n\r\n    <p>Với khả năng tự động tối ưu tỷ lệ tương phản, điều chỉnh màu sắc và dải màu động của Bộ xử lý Crystal 4K, bạn có thể xem được những hình ảnh có chất lượng tuyệt đẹp và sắc nét.</p> \r\n\r\n \r\n    <img alt=\"\" src=\"https://cdn.tgdd.vn/Products/Images/2/1942/242539/samsungcrystal4k.mp4\" style=\"height:600px; width:950px\" />\r\n\r\n\r\n    <p>Công nghệ Dynamic Crystal Color có dải màu rộng hơn 1 tỷ màu sắc, cùng khả năng tập trung tái hiện các dải màu như: Đỏ, xanh lá, xanh dương, lục, lam, vàng tím,... của công nghệ PurColor. Giúp những hình ảnh hiển thị trên tivi Samsung 4K này có màu sắc rực rỡ, tự nhiên, sống động.</p> \r\n\r\n \r\n    <img alt=\"\" src=\"https://cdn.tgdd.vn/Products/Images/2/1942/242539/samsungdynamiccrystalcolor.mp4\" style=\"height:600px; width:950px\" />\r\n\r\n\r\n    <strong>Hình ảnh được tăng cường độ sâu, độ chi tiết nhờ công nghệ Contrast Enhancer</strong>\r\n\r\n \r\n    <p>Khả năng tăng cường độ tương phản tối đa, phủ nhiều lớp sáng tối trên toàn bộ khung hình của công nghệ Contrast Enhancer, giúp từng khung hình hiển thị trên Smart tivi này đều trở nên lôi cuốn và hấp dẫn. </p> \r\n\r\n\r\n    <img alt=\"\" src=\"https://cdn.tgdd.vn/Products/Images/1942/242539/hdr.jpg\" style=\"height:600px; width:950px\" />\r\n\r\n\r\n    <p>Cảnh chuyển động mượt mà, giảm thiểu độ mờ nhờ công nghệ Motion Xcelerator </p> \r\n\r\n\r\n    <img alt=\"\" src=\"https://cdn.tgdd.vn/Products/Images/1942/242539/smart-samsung-4k-55-inch-55tu6900.jpg\" style=\"height:600px; width:950px\" />\r\n\r\n\r\n    <strong>Tự động tinh chỉnh âm thanh phù hợp với nội dung giải trí nhờ công nghệ Adaptive Sound</strong>\r\n\r\n \r\n    <p>Công nghệ Adaptive Sound cho phép bạn thưởng thưởng thức âm thanh được tinh chỉnh phù hợp với từng nội dung xem. Cùng với tổng công suất loa 20W, bạn có thể trải nghiệm mạng lưới âm thanh sống động và bùng nổ trong chính ngôi nhà của mình.</p> \r\n\r\n\r\n    <img alt=\"\" src=\"https://cdn.tgdd.vn/Products/Images/1942/242539/amthanh.jpg\" style=\"height:600px; width:950px\" />\r\n\r\n   \r\n</p>\r\n', 2, 400, 44, 10, 13000000, 17990000, 16191000, '2022-03-23 21:45:31', '1', '2022-03-23 17:12:15', '1', 1, 1),
(4, 2, 'Smart Tivi Samsung 4K Crystal UHD 55 inch UA55AU8100', 'led-4k-samsung-ua55au8100', 'led-4k-samsung-ua55au8100_0.jpg', 'led-4k-samsung-ua55au8100_0.jpg#led-4k-samsung-ua55au8100_1.jpg#led-4k-samsung-ua55au8100_2.jpg', 'Thiết kế độc đáo tiện lợi, khẳng định đẳng cấp', '\r\n<p>\r\n    <strong>Trải nghiệm xem thêm nhập vai với màn hình 55 inch không viền 3 cạnh</strong>\r\n\r\n \r\n    <p>Smart Tivi Samsung 4K 55 inch UA55AU8100 thiết kế theo phong cách AirSlim tối giản với các cạnh viền siêu mỏng tạo cảm giác màn hình không hề bị giới hạn. Tivi có 2 chân đế hình chữ V úp ngược giúp trụ vững trên tất cả mặt phẳng, bạn cũng có thể treo tivi lên tường để tiết kiệm không gian.</p>\r\n\r\n\r\n    <img alt=\"\" src=\"https://cdn.tgdd.vn/Products/Images/1942/235792/Slider/led-4k-samsung-ua55au8100-310321-0441231.jpg\" style=\"height:600px; width:950px\" />\r\n\r\n \r\n    <p>Độ phân giải 4K với hơn 8 triệu điểm ảnh sắc nét gấp 4 lần độ phân giải Full HD, cho hình ảnh rõ ràng, chi tiết.</p>\r\n\r\n \r\n    <img alt=\"\" src=\"https://cdn.tgdd.vn/Products/Images/1942/235792/Slider/led-4k-samsung-ua55au8100-310321-0441252.jpg\" style=\"height:600px; width:950px\" />\r\n\r\n\r\n    <p>Công nghệ Dynamic Crystal Color với dải màu hơn một tỷ màu sắc sẽ tái tạo hình ảnh có chất màu gần với tự nhiên nhất, tạo hiệu ứng sống động trong từng khung hình. Mở ra thế giới muôn màu muôn vẻ ngay trước mắt bạn với chiếc Smart tivi này.</p> \r\n\r\n \r\n    <img alt=\"\" src=\"https://cdn.tgdd.vn/Products/Images/1942/235792/Slider/led-4k-samsung-ua55au8100-310321-0441273.jpg\" style=\"height:600px; width:950px\" />\r\n\r\n\r\n    <p>Contrast Enhancer sẽ phủ lên toàn bộ khung hình những lớp sáng tối khác nhau, giúp từng khu vực, vật thể trong khung hình trở nên sống động y như thật.</p> \r\n\r\n \r\n    <img alt=\"\" src=\"https://cdn.tgdd.vn/Products/Images/1942/235792/Slider/led-4k-samsung-ua55au8100-310321-0441315.jpg\" style=\"height:600px; width:950px\" />\r\n\r\n\r\n    <strong>Hiển thị các sắc độ màu sắc chính xác hơn qua bộ xử lý Crystal 4K</strong>\r\n\r\n \r\n    <p>Bộ xử lý mạnh mẽ trên Smart Tivi Samsung cho khả năng tự động điều chỉnh màu sắc, tỷ lệ độ tương phản, dải màu động, nâng cấp hiển thị hình ảnh vượt trội, cho bạn trải nghiệm xem chưa từng thấy.</p> \r\n\r\n\r\n    <img alt=\"\" src=\"https://cdn.tgdd.vn/Products/Images/1942/235792/Slider/led-4k-samsung-ua55au8100-310321-0441336.jpg\" style=\"height:600px; width:950px\" />\r\n\r\n\r\n    <p>UHD Dimming sẽ chia khung hình thành từng phần nhỏ, sau đó sẽ dùng thuật toán để căn chỉnh màu sắc, độ cân bằng màu, chi tiết của hình ảnh để đem cho bạn những thước phim có màu sắc tuyệt hảo.</p> \r\n\r\n\r\n    <img alt=\"\" src=\"https://cdn.tgdd.vn/Products/Images/1942/235792/Slider/led-4k-samsung-ua55au8100-310321-0441357.jpg\" style=\"height:600px; width:950px\" />\r\n\r\n\r\n    <strong>Cảnh chuyển động mượt mà, rõ nét nhờ công nghệ Motion Xcelerator</strong>\r\n\r\n \r\n    <p>Công nghệ Motion Xcelerator giúp giảm mờ, tránh tình trạng rung lắc, người dùng có thể dễ dàng thưởng thức những cảnh phim hành động vô cùng mượt mà và rõ nét trên chiếc tivi Samsung 4K này.</p> \r\n\r\n\r\n    <img alt=\"\" src=\"https://cdn.tgdd.vn/Products/Images/1942/235792/Slider/led-4k-samsung-ua55au8100-280721-0500300.png\" style=\"height:600px; width:950px\" />\r\n\r\n   \r\n</p>\r\n', 2, 368, 11, 10, 18000000, 24990000, 22491000, '2022-03-23 21:49:23', '1', '2022-03-23 17:04:43', '1', 1, 1),
(5, 8, 'Android Tivi TCL 4K 50 inch 50P615', 'tcl-50p615', 'tcl-50p615_0.jpg', 'tcl-50p615_0.jpg#tcl-50p615_1.jpg#tcl-50p615_2.jpg', 'Thiết kế độc đáo tiện lợi, khẳng định đẳng cấp', '\r\n<p>\r\n    <strong>Kiểu dáng gọn gàng, sang trọng</strong>\r\n\r\n \r\n    <p>Android Tivi TCL 4K 50 inch 50P615 có thiết kế kiểu dáng hiện đại, sang trọng và màu đen lịch lãm với chân đế hình chữ V úp ngược chắc chắn, có thể đứng vững ở mọi mặt phẳng.</p>\r\n\r\n\r\n    <img alt=\"\" src=\"https://cdn.tgdd.vn/Products/Images/1942/225954/tcl-50p615-152520-062532.jpg\" style=\"height:600px; width:950px\" />\r\n\r\n \r\n    <p>Hình ảnh hiển thị sắc nét gấp 4 lần Full HD nhờ độ phân giải Ultra HD 4K</p>\r\n\r\n \r\n    <img alt=\"\" src=\"https://cdn.tgdd.vn/Products/Images/1942/225954/tcl-50p615-152520-062527.jpg\" style=\"height:600px; width:950px\" />\r\n\r\n\r\n    <p>Hình ảnh trở nên chân thực và có độ tương phản cao hơn nhờ công nghệ HDR10</p> \r\n\r\n \r\n    <img alt=\"\" src=\"https://cdn.tgdd.vn/Products/Images/1942/225954/tcl-50p615-152520-062521.jpg\" style=\"height:600px; width:950px\" />\r\n\r\n\r\n    <p>Hình ảnh được tối ưu hóa và nâng cấp lên gần chuẩn 4K nhờ công nghệ 4K AI Upscaling</p> \r\n\r\n \r\n    <img alt=\"\" src=\"https://cdn.tgdd.vn/Products/Images/1942/225954/tcl-50p615-053420-113421.jpg\" style=\"height:600px; width:950px\" />\r\n\r\n\r\n    <strong>Các cảnh chuyển động mượt mà hơn nhờ công nghệ Auto Motion Plus</strong>\r\n\r\n \r\n    <p>Công nghệ này giúp các cảnh chuyển động chậm được cải thiện hơn, giảm mờ và nhòe. Giúp cảnh chuyển động trên màn hình tivi 50 inch này trở nên lôi cuốn, mượt mà và rõ nét hơn.</p> \r\n\r\n\r\n    <img alt=\"\" src=\"https://cdn.tgdd.vn/Products/Images/1942/225954/tcl-50p615-152520-062512.jpg\" style=\"height:600px; width:950px\" />\r\n\r\n\r\n    <p>Thưởng thức âm thanh cực kỳ chân thực và mạnh mẽ với công nghệ âm thanh Dolby MS12D/Y (Dolby Audio)</p> \r\n\r\n\r\n    <img alt=\"\" src=\"https://cdn.tgdd.vn/Products/Images/1942/225954/tcl-50p615-152520-062507.jpg\" style=\"height:600px; width:950px\" />\r\n\r\n\r\n    <strong>Kho ứng dụng vô cùng phong phú với hệ điều hành Android 9.0 thế hệ mới</strong>\r\n\r\n \r\n    <p>Hệ điều hành Android 9.0 là phiên bản mới nhất hiện nay dành cho các dòng Android TV. Giao diện trực quan dễ sử dụng cùng kho ứng dụng đa dạng và phong phú như: YouTube, FPT Play, Netflix, Clip TV,... cho người dùng đa dạng các trải nghiệm tuyệt vời hơn với tivi TCL này.</p> \r\n\r\n\r\n    <img alt=\"\" src=\"https://cdn.tgdd.vn/Products/Images/1942/225954/tcl-50p615-152520-062504.jpg\" style=\"height:600px; width:950px\" />\r\n\r\n   \r\n</p>\r\n', 1, 420, 10, 10, 8000000, 12990000, 11691000, '2022-03-23 21:54:51', '1', '2022-03-23 16:59:20', '1', 1, 1),
(6, 1, 'Android Tivi Sony 4K 43 inch KD-43X75', 'led-sony-kd-43x75', 'led-sony-kd-43x75_0.jpg', 'led-sony-kd-43x75_0.jpg#led-sony-kd-43x75_1.jpg#led-sony-kd-43x75_2.jpg', 'Thiết kế độc đáo tiện lợi, khẳng định đẳng cấp', '\r\n<p>\r\n    <strong>Thiết kế gọn gàng, sang trọng</strong>\r\n\r\n \r\n    <p>Tivi LED Sony KD-43X75 là tivi màn hình phẳng, cạnh viền được làm mỏng tinh tế cho bạn hoàn toàn đắm chìm vào nội dung đang được trình chiếu trên tivi. </p>\r\n\r\n\r\n    <img alt=\"\" src=\"https://cdn.tgdd.vn/Products/Images/1942/238695/untitled-1.jpg\" style=\"height:600px; width:950px\" />\r\n\r\n \r\n    <p>Độ phân giải 4K với hơn 8.3 triệu điểm ảnh, khung hình hiển thị sắc nét, chi tiết</p>\r\n\r\n \r\n    <img alt=\"\" src=\"https://cdn.tgdd.vn/Products/Images/1942/238695/1-1.jpg\" style=\"height:600px; width:950px\" />\r\n\r\n\r\n    <p>4K X-Reality PRO nâng cấp nội dung nguồn từ chuẩn 2K, Full HD lên gần với độ phân giải 4K nhất nhờ dùng hệ thống cơ sở dữ liệu 4K riêng biệt.  </p> \r\n\r\n \r\n    <img alt=\"\" src=\"https://cdn.tgdd.vn/Products/Images/1942/238695/4k-x.jpg\" style=\"height:600px; width:950px\" />\r\n\r\n\r\n    <p>Đi cùng công nghệ này còn có HLG, HDR10 nâng cao độ sáng, độ tương phản, màu sắc cho từng chi tiết ảnh để tạo nên khung hình ảnh tuyệt đẹp cho bạn trải nghiệm xem chân thực và chuẩn điện ảnh tại gia.</p> \r\n\r\n \r\n    <img alt=\"\" src=\"https://cdn.tgdd.vn/Products/Images/1942/238695/dolby.jpg\" style=\"height:600px; width:950px\" />\r\n\r\n\r\n    <strong>Chất âm đa chiều đầy cuốn hút cùng Dolby Audio, S-Force Front Surround và DTS Digital Surrounde</strong>\r\n\r\n \r\n    <p>Công nghệ Dolby Audio và S-Force Front Surround đảm nhiệm phần tái tạo âm thanh vòm đa chiều với khả năng lọc âm thanh, cải thiện chi tiết và tinh chỉnh âm thanh thông minh.</p> \r\n\r\n\r\n    <img alt=\"\" src=\"https://cdn.tgdd.vn/Products/Images/1942/238695/3-1.jpg\" style=\"height:600px; width:950px\" />\r\n\r\n\r\n    <p>Giao diện của Android 10 khá là thông minh với vị trí sắp xếp ứng dụng khoa học, dễ nhìn, dễ tùy chỉnh. Thư viện ứng dụng có đến hơn 5000 ứng dụng hỗ trợ tiếng Việt và tiếng Anh với các ứng dụng cài sẵn Youtube, Netflix, FPT Play, Clip TV, Galaxy Play, các ứng dụng có thể tải thêm VieON, NCT, Zing,... cho bạn thoải mái tùy chỉnh và giải trí theo cách mình muốn. </p> \r\n\r\n\r\n    <img alt=\"\" src=\"https://cdn.tgdd.vn/Products/Images/1942/238695/4-1.jpg\" style=\"height:600px; width:950px\" />\r\n\r\n\r\n    <strong>Dễ dàng điều khiển, tìm kiếm bằng giọng nói có hỗ trợ Tiếng Việt qua Remote thông minh và Google Assistant</strong>\r\n\r\n \r\n    <img alt=\"\" src=\"https://cdn.tgdd.vn/Products/Images/1942/238695/5-1.jpg\" style=\"height:600px; width:950px\" />\r\n\r\n   \r\n</p>\r\n', 2, 190, 20, 0, 12000000, 13400000, 13400000, '2022-03-23 22:04:43', '1', '2022-03-23 16:57:33', '1', 1, 1),
(7, 1, 'Android Tivi Sony 4K 55 inch KD-55X80J', 'led-sony-kd-55x80j', 'led-sony-kd-55x80j_0.jpg', 'led-sony-kd-55x80j_0.jpg#led-sony-kd-55x80j_1.jpg#led-sony-kd-55x80j_2.jpg', 'Thiết kế độc đáo tiện lợi, khẳng định đẳng cấp', '\r\n<p>\r\n    <strong>Thiết kế hiện đại, sang trọng</strong>\r\n\r\n \r\n    <p>Android Tivi Sony 4K 55 inch KD-55X80AJ sở hữu thiết kế tinh tế, sang trọng, phù hợp với không gian sống hiện đại. Màn hình tràn viền 4 cạnh giúp khung hình của tivi được mở rộng, mang đến trải nghiệm xem thoải mái và tập trung vào từng khung hình.</p>\r\n\r\n\r\n    <img alt=\"\" src=\"https://cdn.tgdd.vn/Products/Images/1942/247850/android-sony-4k-55-inch-kd-55x80aj1.jpg\" style=\"height:600px; width:950px\" />\r\n\r\n \r\n    <p>Độ phân giải 4K, chi tiết gấp 4 lần so với tivi Full HD</p>\r\n\r\n \r\n    <img alt=\"\" src=\"https://cdn.tgdd.vn/Products/Images/1942/247850/android-sony-4k-55-inch-kd-55x80aj2.jpg\" style=\"height:600px; width:950px\" />\r\n\r\n\r\n    <p>Công nghệ HDR 10 giúp màu trắng sẽ trắng hơn, màu đen sẽ đen hơn, hình ảnh hiển thị trên tivi Sony có chiều sâu vượt trội so với những sản phẩm khác.</p> \r\n\r\n \r\n    <img alt=\"\" src=\"https://cdn.tgdd.vn/Products/Images/1942/247850/android-sony-4k-55-inch-kd-55x80aj3.jpg\" style=\"height:600px; width:950px\" />\r\n\r\n\r\n    <p>Công nghệ Triluminos PRO độc đáo có thể phát hiện màu sắc từ độ bão hòa, sắc độ và độ sáng để tái tạo sắc thái tự nhiên trong từng chi tiết. Bạn sẽ được tận hưởng những màu sắc chân thực gần với thực tế hơn với chiếc tivi Sony 4K này. </p> \r\n\r\n \r\n    <img alt=\"\" src=\"https://cdn.tgdd.vn/Products/Images/1942/247850/android-sony-4k-55-inch-kd-55x80aj4fix.jpg\" style=\"height:600px; width:950px\" />\r\n\r\n\r\n    <strong>Chip xử lý X1 4K HDR và công nghệ 4K X-Reality PRO cho hình ảnh trung thực, sắc nét</strong>\r\n\r\n \r\n    <p>Bộ xử lý X1 4K Processor dùng các thuật toán để giảm nhiễu, giảm mờ và tăng độ chi tiết. Với bộ xử lý này, mọi thứ bạn xem đều sẽ đạt gần chuẩn độ phân giải 4K, tràn ngập màu sắc và độ tương phản sống động như thật.</p> \r\n\r\n\r\n    <img alt=\"\" src=\"https://cdn.tgdd.vn/Products/Images/1942/247850/android-sony-4k-55-inch-kd-55x80aj5fix.jpg\" style=\"height:600px; width:950px\" />\r\n\r\n\r\n    <p>Công nghệ Motionflow XR 100 giúp tạo ra và chèn thêm khung hình vào giữa các khung hình ban đầu. Công nghệ này so sánh các yếu tố trực quan chính trên các khung hình liên tiếp rồi tính toán từng khoảnh khắc hành động trong các cảnh phim. Nhờ vậy, người xem có thể tận hưởng các chi tiết mượt mà và sắc nét ngay cả trong các cảnh chuyển động nhanh.</p> \r\n\r\n\r\n    <img alt=\"\" src=\"https://cdn.tgdd.vn/Products/Images/1942/247850/android-sony-4k-55-inch-kd-55x80aj-101121-062131.jpg\" style=\"height:600px; width:950px\" />\r\n\r\n\r\n    <strong>Tận hưởng âm thanh vòm chất lượng cao với công nghệ Dolby Atmos và S-Force Front Surround và thiết kế loa bất đối xứng X-Balanced Speaker</strong>\r\n\r\n \r\n    <p>Công nghệ tạo hiệu ứng âm thanh đa chiều Dolby Atmos và S-Force Front Surround đưa bạn vào không gian âm thanh vòm sống động, mạnh mẽ, cho bạn cảm giác sống động như thật, giúp bạn có thể có trải nghiệm điện ảnh ngay tại nhà thực sự với Android tivi Sony.</p> \r\n\r\n\r\n    <img alt=\"\" src=\"https://cdn.tgdd.vn/Products/Images/1942/247850/android-sony-4k-55-inch-kd-55x80aj7.jpg\" style=\"height:600px; width:950px\" />\r\n\r\n   \r\n</p>\r\n', 2, 160, 30, 0, 16000000, 18400000, 18400000, '2022-03-23 22:08:30', '1', '2022-03-23 16:55:46', '1', 1, 1),
(8, 7, 'Smart Tivi LG 4K 55 inch 55UP7750PTB', 'led-lg-55up7750ptb', 'led-lg-55up7750ptb_0.jpg', 'led-lg-55up7750ptb_0.jpg#led-lg-55up7750ptb_1.jpg', 'Thông tin giá bán, cấu hình chi tiết, quà tặng khủng', '\r\n<p>\r\n    <strong>Thiết kế trang nhã, chắc chắn, hòa hợp trong mọi không gian</strong>\r\n\r\n \r\n    <p>Smart Tivi LG 4K 55 inch 55UP7750PTB được thiết kế màu đen thanh lịch, trang nhã, màn hình tivi siêu mỏng cho trải nghiệm xem tuyệt vời nhất. Bên cạnh đó, tivi còn sở hữu giá đỡ chữ V úp ngược chắc chắn giúp tivi luôn đứng vững.</p>\r\n\r\n\r\n    <img alt=\"\" src=\"https://cdn.tgdd.vn/Products/Images/1942/236888/led-lg-55up7750ptb1-1.jpg\" style=\"height:600px; width:950px\" />\r\n\r\n \r\n    <p>Độ phân giải 4K cho hình ảnh hiển thị sắc nét gấp 4 lần Full HD</p>\r\n\r\n \r\n    <img alt=\"\" src=\"https://cdn.tgdd.vn/Products/Images/1942/236888/led-lg-55up7750ptb2.jpg\" style=\"height:600px; width:950px\" />\r\n\r\n\r\n    <p>Với công nghệ 4K Upscaling hình ảnh được cải thiện độ tương phản màu, ánh sáng để hiển thị chi tiết rõ ràng hơn, có chiều sâu và độ chân thực hơn, đạt chất lượng gần chuẩn 4K.</p> \r\n\r\n \r\n    <img alt=\"\" src=\"https://cdn.tgdd.vn/Products/Images/1942/236888/untitled-1.jpg\" style=\"height:600px; width:950px\" />\r\n\r\n\r\n    <p>Tivi được hỗ trợ các định dạng HDR như HDR10 Pro, HDR Dynamic Tone Mapping, HLG và Active HDR giúp cải thiện chiều sâu, độ rõ nét chi tiết, màu sắc tự nhiên của hình ảnh mà không làm thay đổi các đặc tính nguyên bản. Nhờ đó, khung hình trở nên sống động hơn, chân thực đến từng chi tiết.</p> \r\n\r\n \r\n    <img alt=\"\" src=\"https://cdn.tgdd.vn/Products/Images/1942/236888/led-lg-55up7750ptb4.jpg\" style=\"height:600px; width:950px\" />\r\n\r\n\r\n    <strong>Thưởng thức từng thước phim mượt mà qua chế độ Filmmaker Mode</strong>\r\n\r\n \r\n    <p>Filmmaker Mode tắt tính năng làm mịn các chuyển động mà vẫn duy trì tỷ lệ, tốc độ, màu sắc khung hình gốc cho người xem cảm nhận trọn vẹn ý đồ nghệ thuật mà nhà làm phim muốn truyền tải, thưởng thức phim ảnh như đang ở rạp chiếu phim thực sự. </p> \r\n\r\n\r\n    <img alt=\"\" src=\"https://cdn.tgdd.vn/Products/Images/1942/236888/led-lg-55up7750ptb5.jpg\" style=\"height:600px; width:950px\" />\r\n\r\n\r\n    <p>Công nghệ AI Sound được tối ưu chất âm thanh theo nội dung cụ thể, từ giọng nói, hiệu ứng đến tần số âm để người dùng cảm nhận rõ ràng nhất thông tin đang trải nghiệm trên Tivi LG.</p> \r\n\r\n\r\n    <img alt=\"\" src=\"https://cdn.tgdd.vn/Products/Images/1942/236888/led-lg-55up7750ptb6.jpg\" style=\"height:600px; width:950px\" />\r\n\r\n\r\n    <strong>Giao diện thân thiện, dễ dùng của hệ điều hành WebOS 6.0</strong>\r\n\r\n \r\n    <p>Tivi chạy hệ điều hành WebOS 6.0 các thẻ ứng dụng được sắp xếp hợp lý, rõ ràng, cho người dùng thuận tiện trong từng thao tác. Kho ứng dụng Smart tivi đa dạng với các ứng dụng sẵn có gồm Youtube, Netflix, trình duyệt web, LG Content Store, bạn cũng có thể tải thêm nhiều ứng dụng khác như FPT Play, MyTV, Clip TV, Nhaccuatui, Spotify, Zing TV,...</p> \r\n\r\n\r\n    <img alt=\"\" src=\"https://cdn.tgdd.vn/Products/Images/1942/236888/led-lg-55up7750ptb-210322-095739.jpg\" style=\"height:600px; width:950px\" />\r\n\r\n   \r\n</p>\r\n', 2, 220, 30, 10, 11000000, 12990000, 12990000, '2022-03-23 22:14:17', '1', '2022-03-23 17:14:06', '1', 1, 1),
(9, 7, 'Smart Tivi NanoCell LG 4K 43 inch 43NANO75TPA', 'nanocell-lg-43nano75tpa', 'nanocell-lg-43nano75tpa_0.jpg', 'nanocell-lg-43nano75tpa_0.jpg#nanocell-lg-43nano75tpa_1.jpg', 'Thiết kế độc đáo tiện lợi, khẳng định đẳng cấp', '\r\n<p>\r\n    <strong>Kiểu dáng tối giản, thanh lịch</strong>\r\n\r\n \r\n    <p>Smart Tivi NanoCell LG 4K 43 inch 43NANO75TPA được thiết kế với đường nét sắc sảo, đơn giản mà sang trọng, tôn vinh mọi không gian nội thất. </p>\r\n\r\n\r\n    <img alt=\"\" src=\"https://cdn.tgdd.vn/Products/Images/1942/236893/nanocell-lg-43nano75tpa-1.jpg\" style=\"height:600px; width:950px\" />\r\n\r\n \r\n    <p>Hình ảnh có độ nét cao gấp 4 lần Full HD qua độ phân giải 4K</p>\r\n\r\n \r\n    <img alt=\"\" src=\"https://cdn.tgdd.vn/Products/Images/1942/236893/nanocell-lg-43nano75tpa-2.jpg\" style=\"height:600px; width:950px\" />\r\n\r\n\r\n    <p>Công nghệ này sử dụng các hạt tinh thể nano kích cỡ siêu nhỏ lọc và tinh chỉnh sắc màu, loại bỏ những tín hiệu gây nhiễu khỏi các bước sóng RGB, tái tạo màu sắc chính xác và tinh tế vượt trội, tăng độ chi tiết, cho hình ảnh đẹp và cuốn hút hơn.</p> \r\n\r\n \r\n    <img alt=\"\" src=\"https://cdn.tgdd.vn/Products/Images/1942/236893/nanocell-lg-43nano75tpa-3.jpg\" style=\"height:600px; width:950px\" />\r\n\r\n\r\n    <p>Smart tivi tích hợp 4K Upscaler và Image Enhancing giúp nâng cấp các video đầu vào có chất lượng thấp lên gần đạt chuẩn 4K, trong khi 4K Upscaler thực hiện nâng cấp qua 6 bước thì Image Enhancing xử lý bằng các thuật toán chuyên sâu kết hợp trí tuệ nhân tạo để tối ưu các yếu tố, cho các thước phim hiển thị sống động, chân thực trong từng phút giây. </p> \r\n\r\n \r\n    <img alt=\"\" src=\"https://cdn.tgdd.vn/Products/Images/1942/236893/nanocell-lg-43nano75tpa-4.jpg\" style=\"height:600px; width:950px\" />\r\n\r\n\r\n    <strong>Thưởng thức bộ phim theo góc nhìn của nhà làm phim qua chế độ Filmmaker Mode</strong>\r\n\r\n \r\n    <p>Ngoài Filmmaker Mode, còn có 8 chế độ hình ảnh khác như rạp chiếu phim, trò chơi, thể thao, tiêu chuẩn, để bạn tùy chỉnh linh hoạt theo từng thể loại, đắm chìm trong nội dung đang thưởng thức tối ưu. </p> \r\n\r\n\r\n    <img alt=\"\" src=\"https://cdn.tgdd.vn/Products/Images/1942/236893/nanocell-lg-43nano75tpa-5.jpg\" style=\"height:600px; width:950px\" />\r\n\r\n\r\n    <p>Công nghệ này sử dụng siêu dữ liệu metadata, tự động tối ưu đèn nền, các điểm ảnh, màu sắc theo khung hình đang trình chiếu, cải thiện đồng thời khai thác tối ưu độ tương phản để mang đến các cảnh quay tươi tắn, đẹp mắt.</p> \r\n\r\n\r\n    <img alt=\"\" src=\"https://cdn.tgdd.vn/Products/Images/1942/236893/nanocell-lg-43nano75tpa-6.jpg\" style=\"height:600px; width:950px\" />\r\n\r\n\r\n    <strong>Tận hưởng âm thanh trung thực theo từng nội dung cùng công nghệ Al Sound</strong>\r\n\r\n \r\n    <p>Al Sound tự xác nhận giọng nói, các tần số, hiệu ứng âm thanh, công suất loa tivi LG 4K 20 W tái tạo âm thanh phù hợp với từng thể loại giải trí mà bạn lựa chọn, cho người nghe cảm nhận rõ hơn giai điệu êm ái của bản nhạc tình, sự hồi hộp, gay cấn của cảnh phim hành động, chương trình thể thao. </p> \r\n\r\n\r\n    <img alt=\"\" src=\"https://cdn.tgdd.vn/Products/Images/1942/236893/nanocell-lg-43nano75tpa-8.jpg\" style=\"height:600px; width:950px\" />\r\n\r\n   \r\n</p>\r\n\r\n', 2, 310, 41, 0, 15000000, 16900000, 16900000, '2022-03-23 22:18:49', '1', '2022-03-23 17:15:05', '1', 1, 1),
(10, 10, 'Máy giặt Samsung Inverter 9 Kg WW90TP54DSH/SV', 'samsung-ww90tp54dsh-sv', 'samsung-ww90tp54dsh-sv_0.jpg', 'samsung-ww90tp54dsh-sv_0.jpg#samsung-ww90tp54dsh-sv_1.jpg#samsung-ww90tp54dsh-sv_2.jpg', 'Thiết kế độc đáo tiện lợi, khẳng định đẳng cấp', '\r\n<p>\r\n    <strong>Ghi nhớ và đề xuất chế độ giặt với bảng điều khiển thông minh AI Control</strong>\r\n\r\n \r\n    <p>Với bảng điều khiển này, máy giặt sẽ ghi nhớ những chế độ giặt mà bạn đã sử dụng sau đó phân tích thói quen và sở thích từ đó tự động đề xuất chế độ giặt và cài đặt yêu thích (sau lần giặt thứ 10 máy sẽ đề xuất). Điều này giúp cho việc giặt giũ của bạn trở nên dễ dàng hơn, không cần thiết lập quá nhiều thông số khi chuẩn bị giặt.</p>\r\n\r\n\r\n    <img alt=\"\" src=\"https://cdn.tgdd.vn/Products/Images/1944/236123/aicontrol.jpg\" style=\"height:600px; width:950px\" />\r\n\r\n \r\n    <p>Nhờ có công nghệ EcoBubble làm cho bột giặt nhanh chóng thấm sâu vào quần áo kết hợp với vòi xịt siêu tốc và lồng giặt xoay nhanh giúp cho quy trình giặt sẽ hoàn thành chỉ trong 39 phút.</p>\r\n\r\n \r\n    <img alt=\"\" src=\"https://cdn.tgdd.vn/Products/Images/1944/236123/quicldrive.jpg\" style=\"height:600px; width:950px\" />\r\n\r\n\r\n    <p>Công nghệ VRT Plus giúp lồng giặt được giữ cân bằng tuyệt đối ngay cả ở tốc độ quay cao và khối lượng giặt lớn trong suốt chu trình giặt.</p> \r\n\r\n \r\n    <img alt=\"\" src=\"https://cdn.tgdd.vn/Products/Images/1944/236123/vrtplus1.jpg\" style=\"height:600px; width:950px\" />\r\n\r\n\r\n    <p>Nếu là người hay quên, gom đồ đi giặt hay bị sót, thì bạn sẽ phải hài lòng với chiếc máy giặt cửa trước này vì nó được trang bị cửa phụ Add Wash, một điểm nổi bật của máy giặt Samsung. Với cửa phụ này bạn có thể thêm đồ sót, nước giặt, nước xả vào bất cứ khi nào.</p> \r\n\r\n \r\n    <img alt=\"\" src=\"https://cdn.tgdd.vn/Products/Images/1944/236123/addwash1.jpg\" style=\"height:600px; width:950px\" />\r\n\r\n\r\n    <strong>Tiết kiệm năng lượng và hoạt động bền bỉ với động cơ Digital Inverter</strong>\r\n\r\n \r\n    <p>Động cơ Digital Inverter cho khả năng hoạt động bền bỉ, mạnh mẽ, chống rung, giảm thiểu tiếng ồn hiệu quả nhờ sử dụng nam châm vĩnh cửu giúp giảm thiểu ma sát khi vận hành. Hơn nữa, động cơ này còn giúp tiết kiệm điện đáng kể.</p> \r\n\r\n\r\n    <img alt=\"\" src=\"https://cdn.tgdd.vn/Products/Images/1944/236123/digitalinverter.jpg\" style=\"height:600px; width:950px\" />\r\n\r\n\r\n    <p>Máy giặt Samsung Inverter WW90TP54DSH/SV có thiết kế hiện đại và tinh tế. Máy được trang bị bảng điều khiển tiếng Việt giúp cho các bà nội trợ dễ dàng sử dụng và tìm hiểu hơn.</p> \r\n\r\n\r\n    <img alt=\"\" src=\"https://cdn.tgdd.vn/Products/Images/1944/236123/thietke.jpg\" style=\"height:600px; width:950px\" />\r\n\r\n\r\n    <strong>23 chương trình giặt được tích hợp sẵn, đáp ứng tốt nhu cầu giặt giũ của của gia đình</strong>\r\n\r\n \r\n    <p>Máy giặt Samsung Inverter 9 Kg WW90TP54DSH/SV có 8 chương trình giặt nổi bật thường dùng: giặt nhanh 15 phút, giặt hơi nước, đồ len, giặt siêu êm, đồ trẻ em, sạch siêu tốc, cotton, vệ sinh lồng giặt và 15 chương trình tiện lợi khác (xem chi tiết tại bảng thông số kỹ thuật). Nhờ việc giúp tiết kiệm được thời gian giặt giũ quần áo một cách hiệu quả nên chương trình giặt nhanh 15 phút được người tiêu dùng ưa chuộng sử dụng.</p> \r\n\r\n\r\n    <img alt=\"\" src=\"https://cdn.tgdd.vn/Products/Images/1944/236123/samsung-ww90tp54dsh-sv-251021-082030.jpg\" style=\"height:600px; width:950px\" />\r\n\r\n   \r\n</p>\r\n', 2, 605, 27, 10, 11000000, 14200000, 12780000, '2022-03-23 22:21:22', '1', '2022-03-23 22:21:22', '1', 1, 1),
(11, 8, 'Android Tivi TCL 43 inch L43S5200', 'led-tcl-l43s5200', 'led-tcl-l43s5200_0.jpg', 'led-tcl-l43s5200_0.jpg#led-tcl-l43s5200_1.jpg#led-tcl-l43s5200_2.jpg', 'Thiết kế độc đáo tiện lợi, khẳng định đẳng cấp', '\r\n<p>\r\n    <strong>Thiết kế sang trọng, chân đế chắc chắn</strong>\r\n\r\n \r\n    <p>Android Tivi TCL 43 inch L43S5200 có thiết kế hiện đại, gọn gàng, khung viền được làm mỏng cho màn hình phủ trọn tầm nhìn của bạn, mang đến trải nghiệm tuyệt vời, không bị giới hạn.</p>\r\n\r\n\r\n    <img alt=\"\" src=\"https://cdn.tgdd.vn/Products/Images/1942/238554/tk.jpg\" style=\"height:600px; width:950px\" />\r\n\r\n \r\n    <p>Hình ảnh hiển thị sắc nét sống động với độ phân giải Full HD </p>\r\n\r\n \r\n    <img alt=\"\" src=\"https://cdn.tgdd.vn/Products/Images/1942/238554/fullhd.jpg\" style=\"height:600px; width:950px\" />\r\n\r\n\r\n    <p>Hình ảnh trở nên chân thực và có độ tương phản cao hơn nhờ công nghệ HDR10</p> \r\n\r\n \r\n    <img alt=\"\" src=\"https://cdn.tgdd.vn/Products/Images/1942/238554/hdr10.jpg\" style=\"height:600px; width:950px\" />\r\n\r\n\r\n    <p>Công nghệ này có khả năng phân nội dung video thành hàng trăm khu vực, để tự điều chỉnh độ sáng và độ tối chi tiết phù hợp cho từng khu vực hình ảnh. Bên cạnh đó còn có khả năng phân tích nội dung video giúp hình ảnh hiển thị được tối ưu và chân thực hơn.</p> \r\n\r\n \r\n    <img alt=\"\" src=\"https://cdn.tgdd.vn/Products/Images/1942/238554/micro.jpg\" style=\"height:600px; width:950px\" />\r\n\r\n\r\n    <strong>Tăng cường độ chi tiết, màu sắc của hình ảnh nhờ chip xử lý hình ảnh Mali 470x2</strong>\r\n\r\n \r\n    <p>Mali 470x2 trên Smart tivi TCL sẽ tiếp nhận thông tin nội dung đầu vào, tiến hành phân tích và nâng cấp hình ảnh mang đến cho bạn những thước phim đẹp nhất.</p> \r\n\r\n\r\n    <img alt=\"\" src=\"https://cdn.tgdd.vn/Products/Images/1942/238554/mali.jpg\" style=\"height:600px; width:950px\" />\r\n\r\n\r\n    <p>Thưởng thức âm thanh cực kỳ sống động, vang dội với loa có tổng công suất 16W kết hợp cùng công nghệ Dolby MS12. Công nghệ âm thanh này sẽ cho bạn trải nghiệm các thước phim, những chương trình bóng đá với lời thoại cực kỳ chân thật và sắc nét với khả năng tinh chỉnh âm thanh tối ưu cho tiếng động chân thật, lời thoại rõ ràng, bản nhạc đa âm sắc sống động, cho bạn hoàn toàn chìm đắng vào thế giới giải trí.</p> \r\n\r\n\r\n    <img alt=\"\" src=\"https://cdn.tgdd.vn/Products/Images/1942/238554/amthanh.jpg\" style=\"height:600px; width:950px\" />\r\n\r\n\r\n    <strong>Hệ điều hành Android 8.0 hiện đại với kho ứng dụng đa dạng</strong>\r\n\r\n \r\n    <p>Giao diện trực quan, dễ dùng, thư viện ứng dụng phong phú, có sẵn các ứng dụng gồm YouTube, Netflix, Zing TV, FPT Play, Clip TV. Ngoài ra, bạn còn có thể cài thêm các ứng dụng khác cho tivi TCL này như: Galaxy Play, VTVCab ON,...</p> \r\n\r\n\r\n    <img alt=\"\" src=\"https://cdn.tgdd.vn/Products/Images/1942/238554/hdh.jpg\" style=\"height:600px; width:950px\" />\r\n\r\n   \r\n</p>\r\n', 1, 220, 4, 0, 5000000, 7090000, 7090000, '2022-03-23 22:27:35', '1', '2022-03-23 16:42:14', '1', 1, 1),
(12, 8, 'Android Tivi TCL 32 inch L32S66A', 'tcl-l32s66a', 'tcl-l32s66a_0.jpg', 'tcl-l32s66a_1.jpg#tcl-l32s66a_2.jpg', 'Thiết kế độc đáo tiện lợi, khẳng định đẳng cấp', '\r\n<p>\r\n    <strong>Thiết kế thanh mảnh, tinh tế</strong>\r\n\r\n \r\n    <p>Android Tivi TCL 32 inch L32S66A sở hữu thiết kế thanh mảnh với viền mỏng 0,3 cm đi kèm với chân đế hình chữ V úp ngược không chỉ mang lại vẻ đẹp về thẩm mỹ mà còn giúp tivi đứng vững trên nhiều dạng bề mặt khác nhau.</p>\r\n\r\n\r\n    <img alt=\"\" src=\"https://cdn.tgdd.vn/Products/Images/1942/220573/tivi.jpg\" style=\"height:600px; width:950px\" />\r\n\r\n \r\n    <p>Tivi TCL HD kết hợp với công nghệ HDR10 có khả năng tăng độ tương phản cho hình ảnh bằng cách làm sáng hoặc tối cho một khu vực riêng biệt trên màn hình, bên cạnh đó công nghệ này cũng cho độ sáng cao hơn những màn hình khác giúp hình ảnh hiển thị được chân thật hơn.</p>\r\n\r\n \r\n    <img alt=\"\" src=\"https://cdn.tgdd.vn/Products/Images/1942/220573/do-tuong-phan.gif\" style=\"height:600px; width:950px\" />\r\n\r\n\r\n    <p>Tivi TCL sở hữu công nghệ âm thanh Dolby MS12 cùng tổng công suất loa đạt 10 W cho âm thanh mạnh mẽ và sống động, đem lại cho bạn những trải nghiệm chân thật như hòa vào từng giai điệu của bài hát hay bộ phim mà bạn yêu thích.</p> \r\n\r\n \r\n    <img alt=\"\" src=\"https://cdn.tgdd.vn/Products/Images/1942/220573/tcl-l32s66a-261021-033028.jpg\" style=\"height:600px; width:950px\" />\r\n\r\n\r\n    <p>Android Tivi có hệ điều hành Android 8.0 sở hữu giao diện trực quan dễ sử dụng, giúp bạn có thể nhanh chóng làm quen khi sử dụng tivi mà không gặp bất kì khó khăn nào.</p> \r\n\r\n \r\n    <img alt=\"\" src=\"https://cdn.tgdd.vn/Products/Images/1942/220573/tcl-l32s66a-211420-021425.jpg\" style=\"height:600px; width:950px\" />\r\n\r\n\r\n    <strong>Tìm kiếm bằng giọng nói, hỗ trợ tiếng Việt</strong>\r\n\r\n \r\n    <p>Tivi TCL sở hữu remote thông minh có khả năng tìm kiếm giọng nói bằng tiếng Việt giúp bạn thỏa sức tìm kiếm nội dung mà mình yêu thích mà không cần phải di chuyển chọn từng kí tự trên màn hình nữa.</p> \r\n\r\n\r\n    <img alt=\"\" src=\"https://cdn.tgdd.vn/Products/Images/1942/220573/6-remote.jpg\" style=\"height:600px; width:950px\" />\r\n\r\n\r\n    <strong>Chiếu màn hình điện thoại lên tivi qua tính năng Screen Mirroring</strong>\r\n\r\n \r\n    <img alt=\"\" src=\"https://cdn.tgdd.vn/Products/Images/1942/220573/12-chieu-man-hinh-dien-thoai-2.jpg\" style=\"height:600px; width:950px\" />\r\n\r\n   \r\n</p>\r\n\r\n', 2, 260, 16, 0, 6000000, 6490000, 6490000, '2022-03-23 22:30:05', '1', '2022-03-23 16:40:11', '1', 1, 1),
(13, 10, 'Máy giặt Toshiba Inverter 9.5 Kg TW-BK105S3V(SK)', 'toshiba-tw-bk105s3v-sk', 'toshiba-tw-bk105s3v-sk_0.jpg', 'toshiba-tw-bk105s3v-sk_0.jpg#toshiba-tw-bk105s3v-sk_1.jpg#toshiba-tw-bk105s3v-sk_2.jpg', 'Thiết kế độc đáo tiện lợi, khẳng định đẳng cấp', '\r\n<p>\r\n    <strong>Tiết kiệm điện và nước nhờ công nghệ Inverter</strong>\r\n\r\n \r\n    <p>Máy giặt Toshiba 9.5 Kg TW-BK105S3V(SK) sử dụng công nghệ Inverter nên có khả năng điều chỉnh vòng quay của động cơ, giúp lồng giặt hoạt động hiệu quả với việc dùng điện và nước sao cho tiết kiệm nhất mà vẫn đạt được khả năng giặt tẩy sạch quần áo tối ưu. </p>\r\n\r\n\r\n    <img alt=\"\" src=\"https://cdn.tgdd.vn/Products/Images/1944/223670/p.jpg\" style=\"height:600px; width:950px\" />\r\n\r\n \r\n    <p>Chiếc máy giặt Toshiba Inverter TW-BK105S3V(SK) sở hữu kiểu thiết kế lồng ngang - mang phong cách châu Âu, kèm với bảng điều khiển song ngữ Anh - Việt dễ sử dụng với thao tác nút xoay lẫn nút nhấn tiện lợi.</p>\r\n\r\n \r\n    <img alt=\"\" src=\"https://cdn.tgdd.vn/Products/Images/1944/223670/e.jpg\" style=\"height:600px; width:950px\" />\r\n\r\n\r\n    <p>Máy giặt Toshiba TW-BK105S3V(SK) là lựa chọn phù hợp cho những hộ gia đình có nhiều thành viên (5 - 7 người) hoặc có nhu cầu giặt giũ quần áo với số lượng nhiều đến tận 9.5 kg trong mỗi lần giặt. </p> \r\n\r\n \r\n    <img alt=\"\" src=\"https://cdn.tgdd.vn/Products/Images/1944/223670/w.jpg\" style=\"height:600px; width:950px\" />\r\n\r\n\r\n    <p>Máy giặt Toshiba Inverter 9.5 Kg TW-BK105S3V(SK) được thiết kế với bảng điều khiển song ngữ Anh - Việt có nút xoay, nút nhấn và màn hình hiển thị dễ dàng thao tác. 8 chương trình giặt nổi bật như: Giặt nhanh 15 phút, không phai màu, đồ len, đồ hỗn hợp, đồ giặt em bé, đồ Cotton, giặt tiết kiệm Cotton và 8 chương trình khác (Xem thêm chi tiết tại bảng thông số kĩ thuật).</p> \r\n\r\n \r\n    <img alt=\"\" src=\"https://cdn.tgdd.vn/Products/Images/1944/223670/vi-vn-toshiba-tw-bk105s3v-sk-199.jpg\" style=\"height:600px; width:950px\" />\r\n\r\n\r\n    <strong>Giặt sạch vết bẩn cứng đầu, diệt khuẩn hiệu quả nhờ công nghệ nước nóng</strong>\r\n\r\n \r\n    <p>Công nghệ nước nóng sẽ góp phần giặt sạch các vết bẩn cứng đầu dễ dàng hơn, đồng thời hỗ trợ diệt khuẩn hiệu quả nhằm mang lại sự an toàn và an tâm cho người sử dụng, nhất là trẻ nhỏ và người lớn tuổi có làn da nhạy cảm. </p> \r\n\r\n\r\n    <img alt=\"\" src=\"https://cdn.tgdd.vn/Products/Images/1944/223670/u.jpg\" style=\"height:600px; width:950px\" />\r\n\r\n\r\n    <p>Chiếc máy giặt Inverter TW-BK105S3V(SK) còn đạt tốc độ vắt 1200 vòng/phút, với chức năng vắt cực khô, quần áo của bạn sẽ khô nhanh sau khi phơi, nhất là tiện lợi cho những ngày trời mưa, ẩm ướt. </p> \r\n\r\n\r\n    <img alt=\"\" src=\"https://cdn.tgdd.vn/Products/Images/1944/223670/toshiba-tw-bk105s3v-sk-090921-095045.jpg\" style=\"height:600px; width:950px\" />\r\n\r\n\r\n    <strong>Tránh sự nghịch phá của trẻ, an tâm cho người lớn bởi chức năng khóa trẻ em</strong>\r\n\r\n \r\n    <p>Với chức năng khóa trẻ em, máy giặt sẽ tránh được sự nghịch phá của trẻ nhỏ khi máy đang trong quá trình hoạt động, mang lại sự an tâm cho người lớn khi không có mặt ở đó.</p> \r\n\r\n\r\n    <img alt=\"\" src=\"https://cdn.tgdd.vn/Products/Images/1944/223670/q.jpg\" style=\"height:600px; width:950px\" />\r\n\r\n   \r\n</p>\r\n\r\n', 1, 731, 110, 0, 10000000, 11790000, 11790000, '2022-03-23 22:33:51', '1', '2022-03-23 17:54:59', '1', 1, 1),
(14, 6, 'Tủ lạnh Toshiba Inverter 513 lít GR-RS682WE-PMV', 'toshiba-gr-rs682we-pmv-06-mg', 'toshiba-gr-rs682we-pmv-06-mg_0.jpg', 'toshiba-gr-rs682we-pmv-06-mg_0.jpg#toshiba-gr-rs682we-pmv-06-mg_1.jpg#toshiba-gr-rs682we-pmv-06-mg_2.jpg', 'Thiết kế độc đáo tiện lợi, khẳng định đẳng cấp', '\r\n<p>\r\n    <strong>Thiết kế sang trọng, bảng điều khiển cảm ứng hiện đại bên ngoài </strong>\r\n\r\n \r\n    <p>Toshiba Inverter 513 lít GR-RS682WE-PMV(06)-MG thuộc mẫu tủ lạnh side by side, gam màu đen tinh tế, cùng với bảng điều khiển cảm ứng hiện đại được thiết kế bên ngoài, ắt hẳn sẽ trở thành nội thất sang trọng cho không gian nhà bạn. </p>\r\n\r\n\r\n    <img alt=\"\" src=\"https://cdn.tgdd.vn/Products/Images/1943/221082/toshiba-gr-rs682we-pmv-06-mgthie%CC%82%CC%81t-ke%CC%82%CC%81.jpg\" style=\"height:600px; width:950px\" />\r\n\r\n \r\n    <p>Nhờ có công nghệ Origin Inverter, tủ lạnh Toshiba này mang lại hiệu quả tiết kiệm điện tối ưu khi có khả năng sử dụng đồng thời máy nén Inverter lẫn quạt Inverter, nhằm duy trì được hơi lạnh lý tưởng, phù hợp với khối lượng thực phẩm bên trong tủ lạnh. </p>\r\n\r\n \r\n    <img alt=\"\" src=\"https://cdn.tgdd.vn/Products/Images/1943/221082/Slider/-vi-vn-inverter.jpg\" style=\"height:600px; width:950px\" />\r\n\r\n\r\n    <p>Chiếc tủ lạnh Toshiba Inverter GR-RS682WE-PMV(06)-MG còn sở hữu công nghệ làm lạnh vòng cung, giúp luồng khí được lan tỏa mọi ngóc ngách bên trong tủ, làm cho hơi lạnh bao quanh toàn diện thực phẩm, nhằm giữ được độ tươi ngon và kéo dài thời gian bảo quản thực phẩm lâu hơn. </p> \r\n\r\n \r\n    <img alt=\"\" src=\"https://cdn.tgdd.vn/Products/Images/1943/221082/toshiba-gr-rs682we-pmv-06-mg-241121-092623.jpg\" style=\"height:600px; width:950px\" />\r\n\r\n\r\n    <p>Khả năng lưu trữ thực phẩm nhiều với dung tích lên đến 513 lít, trong đó ngăn đá chiếm 175 lít và ngăn lạnh chiếm 338 lít, tủ lạnh Toshiba GR-RS682WE-PMV(06)-MG là một trong những lựa chọn phù hợp cho những hộ gia đình có trên 5 thành viên, hoặc ít hơn nhưng lại có nhu cầu bảo quản thực phẩm nhiều mỗi ngày. </p> \r\n\r\n \r\n    <img alt=\"\" src=\"https://cdn.tgdd.vn/Products/Images/1943/221082/toshiba-gr-rs682we-pmv-06-mgdung-ti%CC%81ch.jpg\" style=\"height:600px; width:950px\" />\r\n\r\n\r\n    <strong>Tiện lợi khi lấy nước bên ngoài nhanh chóng</strong>\r\n\r\n \r\n    <p>Không cần phải mở cửa gây mất thời gian, bạn có thể lấy nước lạnh ngay phía bên ngoài một cách nhanh chóng. </p> \r\n\r\n\r\n    <img alt=\"\" src=\"https://cdn.tgdd.vn/Products/Images/1943/221082/toshiba-gr-rs682we-pmv-06-mglay-nuoc-ngoai.jpg\" style=\"height:600px; width:950px\" />\r\n\r\n\r\n    <p>Chiếc tủ lạnh này sẽ phát ra tiếng chuông nhờ chức năng chuông báo mở cửa, giúp cho bạn kiểm soát được thời gian mở cửa tủ lạnh quá lâu, tránh thất thoát hơi lạnh làm tiêu hao điện năng. </p> \r\n\r\n\r\n    <img alt=\"\" src=\"https://cdn.tgdd.vn/Products/Images/1943/221082/toshiba-gr-rs682we-pmv-06-mgchuo%CC%82ng.jpg\" style=\"height:600px; width:950px\" />\r\n\r\n\r\n</p>\r\n\r\n', 2, 120, 6, 0, 23000000, 26490000, 26490000, '2022-03-23 22:36:43', '1', '2022-03-23 17:54:37', '1', 1, 1),
(15, 11, 'Tủ lạnh Hitachi Inverter 509 lít R-FW650PGV8 GBK', 'hitachi-inverter-509-lit-r-fw650pgv8', 'hitachi-inverter-509-lit-r-fw650pgv8_0.jpg', 'hitachi-inverter-509-lit-r-fw650pgv8_0.jpg#hitachi-inverter-509-lit-r-fw650pgv8_1.jpg#hitachi-inverter-509-lit-r-fw650pgv8_2.jpg', 'Thiết kế độc đáo tiện lợi, khẳng định đẳng cấp', '\r\n<p>\r\n    <strong>Tủ lạnh Hitachi Inverter 509 lít R-FW650PGV8 với thiết kế Multi Door độc đáo, sang trọng, đi kèm công nghệ tiết kiệm điện Inverter kết hợp cùng cảm biến nhiệt Eco cho hiệu quả tiết kiệm điện tối ưu. Cùng nhiều tiện ích đi kèm như khay đá xoay linh hoạt, bảng điều khiển bên ngoài, chuông cảnh báo mở cửa,...</strong>\r\n\r\n \r\n    <img alt=\"\" src=\"https://cdn.tgdd.vn/Products/Images/1943/273309/hitachi-inverter-509-lit-r-fw650pgv8-270322-103336.jpg\" style=\"height:600px; width:950px\" />\r\n\r\n \r\n    <p>Ngăn trữ chuyển đổi: cho phép tùy chỉnh nhiệt độ bên trong ngăn bằng cách chuyển đổi giữa chế độ trữ rau quả (khoảng 5°C) và chế độ trữ sữa/thịt (khoảng 1°C)</p>\r\n\r\n \r\n    <img alt=\"\" src=\"https://cdn.tgdd.vn/Products/Images/1943/273309/hitachi-inverter-509-lit-r-fw650pgv8-270322-100545.jpg\" style=\"height:600px; width:950px\" />\r\n\r\n\r\n    <p>Các ngăn trong tủ được thiết kế rộng rãi, thuận tiện cho việc lưu trữ các thực phẩm có kích thước lớn.</p> \r\n\r\n \r\n    <img alt=\"\" src=\"https://cdn.tgdd.vn/Products/Images/1943/273309/hitachi-inverter-509-lit-r-fw650pgv8-270322-103338.jpg\" style=\"height:600px; width:950px\" />\r\n\r\n\r\n    <p>Công nghệ Inverter: máy nén vận hành êm ái, mang lại hiệu suất làm lạnh ổn định, hạn chế đóng tuyết, tiết kiệm hiệu quả điện năng tiêu thụ.</p> \r\n\r\n \r\n    <img alt=\"\" src=\"https://cdn.tgdd.vn/Products/Images/1943/273309/hitachi-inverter-509-lit-r-fw650pgv8-270322-104042.jpg\" style=\"height:600px; width:950px\" />\r\n\r\n\r\n    <strong>Công nghệ làm lạnh - bảo quản thực phẩm</strong>\r\n\r\n \r\n    <p>Hệ thống quạt kép: cung cấp khí lạnh cho ngăn đá và ngăn mát một cách riêng biệt, tránh lẫn mùi thực phẩm giữa các ngăn với nhau. Kết hợp giữa quạt làm lạnh và động cơ Inverter đem đến hiệu quả làm lạnh tối ưu đồng thời hạn chế sự lãng phí năng lượng.</p> \r\n\r\n\r\n    <img alt=\"\" src=\"https://cdn.tgdd.vn/Products/Images/1943/273309/hitachi-inverter-509-lit-r-fw650pgv8-270322-104754.jpg\" style=\"height:600px; width:950px\" />\r\n\r\n\r\n    <p>Công nghệ Nano Titanium giúp tiêu diệt vi khuẩn hiệu quả, lọc sạch nấm mốc, mùi hôi nhờ sử dụng chất xúc tác TiO2, mang lại không gian trong lành, bảo quản thực phẩm luôn tươi ngon.</p> \r\n\r\n\r\n    <img alt=\"\" src=\"https://cdn.tgdd.vn/Products/Images/1943/273309/hitachi-inverter-509-lit-r-fw650pgv8-270322-100543.jpg\" style=\"height:600px; width:950px\" />\r\n\r\n\r\n    <strong>Tiện ích</strong>\r\n\r\n \r\n    <p>Chuông cảnh báo mở cửa: tủ lạnh sẽ phát ra âm thanh cảnh báo khi thời gian mở cửa quá lâu, từ đó hạn chế được lượng điện năng hao phí khi quên không đóng cửa.</p> \r\n\r\n\r\n    <img alt=\"\" src=\"https://cdn.tgdd.vn/Products/Images/1943/273309/hitachi-inverter-509-lit-r-fw650pgv8-270322-110712.jpg\" style=\"height:600px; width:950px\" />\r\n\r\n   \r\n</p>\r\n\r\n', 2, 61, 4, 0, 20000000, 24900000, 24900000, '2022-03-23 22:40:49', '1', '2022-03-23 17:54:42', '1', 1, 1);
INSERT INTO `db_product` (`id`, `catid`, `name`, `alias`, `avatar`, `img`, `sortDesc`, `detail`, `producer`, `number`, `number_buy`, `sale`, `pre_sale`, `price`, `price_sale`, `created`, `created_by`, `modified`, `modified_by`, `trash`, `status`) VALUES
(16, 11, 'Tủ lạnh Hitachi Inverter 339 lít R-FVX450PGV9 GBK', 'hitachi-inverter-406-lit-r-fvx450pgv9', 'hitachi-inverter-406-lit-r-fvx450pgv9_0.jpg', 'hitachi-inverter-406-lit-r-fvx450pgv9_0.jpg#hitachi-inverter-406-lit-r-fvx450pgv9_1.jpg#hitachi-inverter-406-lit-r-fvx450pgv9_2.jpg', 'Thiết kế độc đáo tiện lợi, khẳng định đẳng cấp', '\r\n<p>\r\n    <strong>Tổng quan thiết kế</strong>\r\n\r\n \r\n    <p>Tủ lạnh Hitachi Inverter 339 lít R-FVX450PGV9 là dòng tủ lạnh bình dân với thiết kế ngăn đá trên quen thuộc, chất liệu cửa tủ bàng kính có độ bóng cao tạo sự thẩm mỹ cho gian bếp. Tủ lạnh có nhiều tính năng như cảm biến nhiệt Eco, Inverter, hệ thống làm lạnh quạt kép và bộ lọc khử mùi 3 lớp Triple Power.</p>\r\n\r\n\r\n    <img alt=\"\" src=\"https://cdn.tgdd.vn/Products/Images/1943/273313/hitachi-inverter-406-lit-r-fvx450pgv9-230322-112243.jpg\" style=\"height:600px; width:950px\" />\r\n\r\n \r\n    <p>Có thiết kế các ngăn kệ bên trong và trên cánh tủ để phân loại và sắp xếp thực phẩm theo nhu cầu.</p>\r\n\r\n \r\n    <img alt=\"\" src=\"https://cdn.tgdd.vn/Products/Images/1943/273313/hitachi-inverter-406-lit-r-fvx450pgv9-230322-112503.jpg\" style=\"height:600px; width:950px\" />\r\n\r\n\r\n    <p>Dung tích: 101 lít. Có ngăn kệ bên trong và trên cánh tủ để tăng không gian lưu trữ thực phẩm tươi sống</p> \r\n\r\n \r\n    <img alt=\"\" src=\"https://cdn.tgdd.vn/Products/Images/1943/273313/hitachi-inverter-406-lit-r-fvx450pgv9-230322-112237.jpg\" style=\"height:600px; width:950px\" />\r\n\r\n\r\n    <p>Bộ lọc khử mùi 3 lớp Triple Power được trang bị bên trong tủ để loại bỏ các mùi khó chịu sinh ra từ thực phẩm, vi khuẩn độc hại, mang đến không gian tủ trong lành và an toàn.</p> \r\n\r\n \r\n    <img alt=\"\" src=\"https://cdn.tgdd.vn/Products/Images/1943/273313/hitachi-inverter-406-lit-r-fvx450pgv9-230322-113542.jpg\" style=\"height:600px; width:950px\" />\r\n\r\n\r\n    <strong>Công nghệ tiết kiệm điện</strong>\r\n\r\n \r\n    <p>Tủ lạnh Hitachi có trang bị hai cảm biến Eco ở ngăn đá và ngăn lạnh để nhận biết sự thay đổi nhiệt độ ở từng ngăn và duy trì nhiệt độ lý tưởng tại mọi thời điểm.</p> \r\n\r\n\r\n    <img alt=\"\" src=\"https://cdn.tgdd.vn/Products/Images/1943/273313/hitachi-inverter-406-lit-r-fvx450pgv9-230322-112239.jpg\" style=\"height:600px; width:950px\" />\r\n\r\n\r\n    <p>Hệ thống làm lạnh quạt kép sẽ làm lạnh hiệu quả và độc lập ở hai ngăn, giúp tiết kiệm điện cũng như làm lạnh nhanh hơn, góp phần bảo quản thực phẩm tươi ngon lâu dài.</p> \r\n\r\n\r\n    <img alt=\"\" src=\"https://cdn.tgdd.vn/Products/Images/1943/273313/hitachi-inverter-406-lit-r-fvx450pgv9-230322-113723.jpg\" style=\"height:600px; width:950px\" />\r\n\r\n\r\n</p>\r\n', 2, 90, 8, 0, 11000000, 14100000, 14100000, '2022-03-23 23:24:20', '1', '2022-03-23 17:54:33', '1', 1, 1),
(17, 6, 'Tủ lạnh Toshiba Inverter 311 lít GR-RT395WE-PMV', 'toshiba-gr-rt395we-pmv-06-mg', 'toshiba-gr-rt395we-pmv-06-mg_0.jpg', 'toshiba-gr-rt395we-pmv-06-mg_0.jpg#toshiba-gr-rt395we-pmv-06-mg_1.jpg#toshiba-gr-rt395we-pmv-06-mg_2.jpg', 'Thiết kế độc đáo tiện lợi, khẳng định đẳng cấp', '\r\n<p>\r\n    <strong>Lấy nước bên ngoài tiện lợi tránh thất thoát hơi lạnh </strong>\r\n\r\n \r\n    <p>Bạn có thể lấy nước phía bên ngoài cửa tủ lạnh Toshiba GR-RT395WE-PMV(06)-MG, thao tác tiện lợi mà không cần phải mở cửa, giúp bạn thưởng thức được ngay ly nước lọc mát lạnh trong những ngày trời oi bức. Bình chứa nước làm từ chất liệu nhựa an toàn HIPS theo tiêu chuẩn của châu Âu.</p>\r\n\r\n\r\n    <img alt=\"\" src=\"https://cdn.tgdd.vn/Products/Images/1943/239277/toshiba-gr-rt395we-pmv-06-mg8.png\" style=\"height:600px; width:950px\" />\r\n\r\n \r\n    <p>Công nghệ Air Fall Cooling sẽ tỏa ra 2 luồng khí lạnh như thác đổ, luồng khí trước sẽ kết hợp với luồng khí phía sau để làm lạnh thực phẩm nhanh chóng tại bất kì vị trí nào bên trong ngăn tủ, nhờ đó giảm thiểu được tình trạng hỏng thực phẩm do không đủ hơi lạnh.</p>\r\n\r\n \r\n    <img alt=\"\" src=\"https://cdn.tgdd.vn/Products/Images/1943/239277/vi-vn-toshiba-gr-rt395we-pmv-06-mg6-min.png\" style=\"height:600px; width:950px\" />\r\n\r\n\r\n    <p>Tủ lạnh Toshiba 311 lít này còn được trang bị công nghệ Origin Inverter có khả năng giúp máy nén Inverter và động cơ quạt Inverter hoạt động cùng một lúc, nhằm tỏa đều hơi lạnh để duy trì nhiệt độ ổn định bên trong tủ nhằm tăng hiệu quả làm lạnh, tiết kiệm điện.</p> \r\n\r\n \r\n    <img alt=\"\" src=\"https://cdn.tgdd.vn/Products/Images/1943/239277/vi-vn-toshiba-gr-rt395we-pmv-06-mg3-min.png\" style=\"height:600px; width:950px\" />\r\n\r\n\r\n    <p>Công nghệ PureBio giúp diệt khuẩn và khử mùi hiệu quả bên trong tủ lạnh Toshiba nhờ bộ lọc Ceramic nhúng tinh thể bạc kết hợp với than hoạt tính, từ đó góp phần kéo dài thời gian bảo quản thực phẩm cũng như tạo cảm giác tươi mát mỗi khi người dùng mở cửa tủ lạnh.</p> \r\n\r\n \r\n    <img alt=\"\" src=\"https://cdn.tgdd.vn/Products/Images/1943/239277/vi-vn-toshiba-gr-rt395we-pmv-06-mg5-min.png\" style=\"height:600px; width:950px\" />\r\n\r\n\r\n    <strong>Chống bám vân tay với bề mặt cửa tủ hoàn thiện 10 lớp</strong>\r\n\r\n \r\n    <p>Chất liệu cửa tủ được cấu tạo bởi 10 lớp đặc biệt, tạo nên vân kim loại tinh tế trên bề mặt, kết hợp với lớp phủ sơn tĩnh điện chống bám vân tay, hạn chế trầy xước trong thời gian sử dụng.</p> \r\n\r\n\r\n    <img alt=\"\" src=\"https://cdn.tgdd.vn/Products/Images/1943/239277/toshiba-gr-rt395we-pmv-06-mg-5.jpg\" style=\"height:600px; width:950px\" />\r\n\r\n\r\n    <p>Ngăn lạnh nhanh Cooling Zone có thể giúp thực phẩm tươi sống như thịt cá giữ được chất dinh dưỡng trọn vẹn và chống ôi thiu từ 1 - 2 ngày, đáp ứng nhu cầu chế biến thực phẩm ngay lập tức mà không cần phải rã đông.</p> \r\n\r\n\r\n    <img alt=\"\" src=\"https://cdn.tgdd.vn/Products/Images/1943/239277/vi-vn-toshiba-gr-rt395we-pmv-06-mg4-min.png\" style=\"height:600px; width:950px\" />\r\n\r\n\r\n    <strong>Cân bằng độ ẩm các loại rau củ quả trong ngăn Origin Fresh, kéo dài thời gian bảo quản</strong>\r\n\r\n \r\n    <p>Các loại rau củ quả khi chứa trong ngăn Origin Fresh sẽ có thời gian bảo quản lâu hơn, vì tránh được tình trạng úng hoặc héo do cân bằng được độ ẩm bên trong ngăn với nút tùy chỉnh độ ẩm mà bạn có thể điều chỉnh được.</p> \r\n\r\n\r\n    <img alt=\"\" src=\"https://cdn.tgdd.vn/Products/Images/1943/239277/vi-vn-toshiba-gr-rt395we-pmv-06-mg7-min.png\" style=\"height:600px; width:950px\" />\r\n\r\n   \r\n</p>\r\n', 2, 180, 13, 10, 10000000, 13990000, 12591000, '2022-03-23 23:28:14', '1', '2022-03-23 17:54:25', '1', 1, 1),
(18, 9, 'Tủ lạnh Sharp Inverter 150 lít SJ-X176E-SL', 'sharp-sj-x176e-sl', 'sharp-sj-x176e-sl_0.jpg', 'sharp-sj-x176e-sl_0.jpg#sharp-sj-x176e-sl_1.jpg#sharp-sj-x176e-sl_.jpg', 'Thiết kế độc đáo tiện lợi, khẳng định đẳng cấp', '\r\n<p>\r\n    <strong>Thiết kế nhỏ gọn, tinh tế</strong>\r\n\r\n \r\n    <p>Tủ lạnh Sharp Inverter 150 lít SJ-X176E-SL với thiết kế màu bạc tinh tế, kích thước nhỏ gọn sẽ dễ dàng kết hợp với bất kì kiểu không gian nội thất nào của gia đình, đồng thời bạn cũng sẽ không phải lo lắng tủ chiếm quá nhiều diện tích.</p>\r\n\r\n\r\n    <img alt=\"\" src=\"https://cdn.tgdd.vn/Products/Images/1943/145456/sharp-sj-x176e-sl-220921-104816.jpg\" style=\"height:600px; width:950px\" />\r\n\r\n \r\n    <p>Được trang bị công nghệ J-Tech Inverter, chiếc tủ lạnh 2 cửa này không chỉ mang đến khả năng vận hành êm ái, làm lạnh ổn định với 36 cấp độ làm lạnh mà nó còn giúp bạn không còn phải quá lo lắng về chi phí điện năng hàng tháng.</p>\r\n\r\n \r\n    <img alt=\"\" src=\"https://cdn.tgdd.vn/Products/Images/1943/145456/sharp-sj-x176e-sl-220921-104957.jpg\" style=\"height:600px; width:950px\" />\r\n\r\n\r\n    <p>Với bộ khử mùi phân tử bạc Nano Ag+, tủ lạnh sẽ sử dụng các phân tử bạc có kích thước siêu nhỏ để tiêu diệt vi khuẩn và tác nhân gây mùi hôi khó chịu phát sinh trong tủ lạnh. Giờ đây, bạn không còn bị ám ảnh về mùi hôi thực phẩm mỗi lần mở tủ lạnh nữa.</p> \r\n\r\n \r\n    <img alt=\"\" src=\"https://cdn.tgdd.vn/Products/Images/1943/145456/sharp-sj-x176e-sl-220921-105135.jpg\" style=\"height:600px; width:950px\" />\r\n\r\n\r\n    <p>Tính năng làm đá nhanh của tủ lạnh Sharp Inverter mang đến cho bạn những viên đá mát lạnh</p> \r\n\r\n \r\n    <img alt=\"\" src=\"https://cdn.tgdd.vn/Products/Images/1943/145456/sharp-sj-x176e-sl-220921-105303.jpg\" style=\"height:600px; width:950px\" />\r\n\r\n\r\n    <strong>Thoải mái bảo quản nhiều thực phẩm với kệ kính chịu lực hiện đại</strong>\r\n\r\n \r\n    <p>Sử dụng chất liệu kính chịu lực cho kệ chứa, tủ lạnh Sharp giúp bạn thoải mái chứa nhiều thực phẩm bảo quản lên kệ với khối lượng lên đến 100 kg mà không lo kệ bị hư hỏng, nứt, vỡ.</p> \r\n\r\n\r\n    <img alt=\"\" src=\"https://cdn.tgdd.vn/Products/Images/1943/145456/sharp-sj-x176e-sl-220921-105606.jpg\" style=\"height:600px; width:950px\" />\r\n\r\n\r\n</p>\r\n', 2, 140, 22, 10, 50000000, 59890000, 53901000, '2022-03-23 23:30:36', '1', '2022-03-23 17:54:19', '1', 1, 1),
(19, 5, 'Tủ lạnh Panasonic Inverter 322 lít NR-BC360QKVN', 'panasonic-nr-bc360qkvn', 'panasonic-nr-bc360qkvn_0.jpg', 'panasonic-nr-bc360qkvn_0.jpg#panasonic-nr-bc360qkvn_1.jpg#panasonic-nr-bc360qkvn_2.jpg', 'Thiết kế độc đáo tiện lợi, khẳng định đẳng cấp', '\r\n<p>\r\n    <strong>Tủ lạnh Panasonic ngăn cấp đông mềm thế hệ mới Prime Fresh+ bảo quản thực phẩm không cần rã đông</strong>\r\n\r\n \r\n    <p>Tủ lạnh Panasonic Inverter 322 lít NR-BC360QKVN trang bị ngăn đông mềm thế hệ mới Prime Fresh+ với mức nhiệt độ ở -3 độ C giúp thực phẩm tươi sống được làm đông nhanh mà không bị đông đá và tươi mới lên đến 7 ngày. Do đó, thực phẩm giữ được các chất dinh dưỡng, độ thơm ngon và bạn không phải tốn thêm nhiều thời gian để rã đông trước khi chế biến.</p>\r\n\r\n\r\n    <img alt=\"\" src=\"https://cdn.tgdd.vn/Products/Images/1943/209334/Slider/-primefresh+-2-ngan.jpg\" style=\"height:600px; width:950px\" />\r\n\r\n \r\n    <p>Tủ lạnh này trang bị công nghệ Inverter giúp tiết kiệm điện hiệu quả trong quá trình vận hành nhưng không làm mất đi khả năng hoạt động êm ái, duy trì độ lạnh ổn định.</p>\r\n\r\n \r\n    <img alt=\"\" src=\"https://cdn.tgdd.vn/Products/Images/1943/209334/panasonic-nr-bc360qkvn-25.jpg\" style=\"height:600px; width:950px\" />\r\n\r\n\r\n    <p>Cảm biến nhiệt độ bên ngoài: Khi nhiệt độ bên ngoài thay đổi, tủ lạnh sẽ tự động điều chỉnh nhiệt độ bên trong sao cho phù hợp.</p> \r\n\r\n \r\n    <img alt=\"\" src=\"https://cdn.tgdd.vn/Products/Images/1943/209334/panasonic-nr-bc360qkvn-24.jpg\" style=\"height:600px; width:950px\" />\r\n\r\n\r\n    <p>Ngăn rau quả giữ ẩm giúp duy trì nhiệt độ ổn định và độ ẩm lý tưởng đến toàn bộ không gian, không để độ ẩm thất thoát ra ngoài giúp thực phẩm luôn tươi và ngon.</p> \r\n\r\n \r\n    <img alt=\"\" src=\"https://cdn.tgdd.vn/Products/Images/1943/179593/Slider/vi-vn-panasonic-nr-bv288gkv2-9.jpg\" style=\"height:600px; width:950px\" />\r\n\r\n\r\n    <strong>Kiểu dáng hiện đại, thanh lịch với ngăn đá dưới tiện lợi</strong>\r\n\r\n \r\n    <p>Tủ lạnh Panasonic NR-BC360QKVN này mang gam màu đen bóng sang trọng, thanh lịch. Thiết kế ngăn đá bên dưới không chỉ mang lại vẻ đẹp mới mẻ, hiện đại cho không gian nội thất mà nó còn mang lại sự tiện lợi, giúp người sử dụng có thể dễ dàng lấy thực phẩm ở ngăn mát mà không phải khom cúi nhiều lần.</p> \r\n\r\n\r\n    <img alt=\"\" src=\"https://cdn.tgdd.vn/Products/Images/1943/209334/panasonic-nr-bc360qkvn-16.jpg\" style=\"height:600px; width:950px\" />\r\n\r\n\r\n    <p>Tủ lạnh Panasonic 322 lít này đảm bảo phục vụ tốt nhu cầu sử dụng cho gia đình từ 3 - 4 người cho phép bạn dự trữ khối lượng lớn thực phẩm tươi ngon để gia đình sử dụng trong nhiều ngày mà không cần phải đi chợ nhiều lần.</p> \r\n\r\n\r\n    <img alt=\"\" src=\"https://cdn.tgdd.vn/Products/Images/1943/209334/panasonic-nr-bc360qkvn-26.jpg\" style=\"height:600px; width:950px\" />\r\n\r\n\r\n    <strong>Mang hơi lạnh tỏa đều mọi vị trí trong tủ với công nghệ làm lạnh Panorama</strong>\r\n\r\n \r\n    <p>Công nghệ Panorama là một công nghệ làm lạnh đa chiều độc quyền đến từ Panasonic, có thể mang hơi lạnh đến mọi ngóc ngách của tủ lạnh giúp thực phẩm sẽ luôn nhận được đầy đủ hơi lạnh thích hợp và luôn tươi ngon.</p> \r\n\r\n\r\n    <img alt=\"\" src=\"https://cdn.tgdd.vn/Products/Images/1943/209334/panasonic-nr-bc360qkvn-21.jpg\" style=\"height:600px; width:950px\" />\r\n\r\n   \r\n</p>\r\n', 1, 300, 26, 10, 12000000, 16790000, 15111000, '2022-03-23 23:33:43', '1', '2022-03-23 23:33:43', '1', 1, 1),
(20, 1, 'Android Tivi Sony 4K 50 inch KD-50X75', 'led-sony-kd-50x75', 'led-sony-kd-50x75_0.jpg', 'led-sony-kd-50x75_0.jpg#led-sony-kd-50x75_1.jpg#led-sony-kd-50x75_2.jpg', ' Thiết kế độc đáo tiện lợi, khẳng định đẳng cấp', '\r\n<p>\r\n    <strong>Thiết kế tinh tế, thanh lịch</strong>\r\n\r\n \r\n    <p>Android Tivi Sony 4K 50 inch KD-50X75 sở hữu thiết kế màn hình phẳng, tràn viền cho trải nghiệm xem tivi đắm chìm.</p>\r\n\r\n\r\n    <img alt=\"\" src=\"https://cdn.tgdd.vn/Products/Images/1942/238721/111w1w1.jpg\" style=\"height:600px; width:950px\" />\r\n\r\n \r\n    <p>Hình ảnh hiển thị sắc nét gấp 4 lần Full HD với độ phân giải 4K</p>\r\n\r\n \r\n    <img alt=\"\" src=\"https://cdn.tgdd.vn/Products/Images/1942/224404/sony-kd-43x8500h-s-230220-020231.jpg\" style=\"height:600px; width:950px\" />\r\n\r\n\r\n    <p>Cùng 4K X-Reality PRO nâng cấp chất lượng từng điểm ảnh cho độ rõ nét vượt trội. Các điểm ảnh trên nhiều khung hình được phân tích, đồng thời hình ảnh được tinh chỉnh và làm sắc nét theo thời gian thực. Android tivi Sony luôn mang đến hình ảnh sắc nét, rõ ràng và sống động như thật.</p> \r\n\r\n \r\n    <img alt=\"\" src=\"https://cdn.tgdd.vn/Products/Images/1942/238721/23.jpg\" style=\"height:600px; width:950px\" />\r\n\r\n\r\n    <p>Tivi được trang bị công nghệ đèn nền Direct LED Frame Dimming với khả năng làm giảm độ sáng các đèn LED được bố trí dọc cạnh màn hình, nhằm tăng độ tương phản cho hình ảnh hiển thị.</p> \r\n\r\n \r\n    <img alt=\"\" src=\"https://cdn.tgdd.vn/Products/Images/1942/238721/fgdfg-2.jpg\" style=\"height:600px; width:950px\" />\r\n\r\n\r\n    <strong>Chuyển động mượt mà rõ nét, không mờ nhòe với công nghệ Motionflow XR 200 Hz và Auto Mode</strong>\r\n\r\n \r\n    <img alt=\"\" src=\"https://cdn.tgdd.vn/Products/Images/1942/238721/3-1.jpg\" style=\"height:600px; width:950px\" />\r\n\r\n\r\n    <p>Với Dolby Audio, S-Force Front Surround bạn có thể thưởng thức âm thanh vòm 360° sống động chân thực. Bên cạnh đó, tivi tích công nghệ DTS Digital Surround có thể mã hóa 6 kênh 20-bit audio riêng biệt giúp âm thanh vòm và lan tỏa hơn.</p> \r\n\r\n\r\n    <img alt=\"\" src=\"https://cdn.tgdd.vn/Products/Images/1942/238791/led-sony-kd-75x80j-7.jpg\" style=\"height:600px; width:950px\" />\r\n\r\n\r\n    <strong>Hệ điều hành Android 10 dễ sử dụng, kho ứng dụng giải trí đa dạng</strong>\r\n\r\n \r\n    <p>Kho ứng dụng sẵn có trên tivi đa dạng như: YouTube, Google Play, Netflix, Trình duyệt web. Ngoài ra tùy theo nhu cầu và sở thích mà bạn có thể tải thêm nhiều ứng dụng khác như: Spotify, VTVCab ON, FPT Play,...</p> \r\n\r\n\r\n    <img alt=\"\" src=\"https://cdn.tgdd.vn/Products/Images/1942/238885/4-1.jpg\" style=\"height:600px; width:950px\" />\r\n\r\n   \r\n</p>\r\n', 2, 240, 17, 10, 11000000, 16500000, 14850000, '2022-03-23 00:03:02', '1', '2022-03-23 00:03:02', '2', 0, 1),
(21, 10, 'Máy giặt Samsung Addwash Inverter 8.5kg WW85T554DAW/SV', 'samsung-addwash-ww85t554daw-sv', 'samsung-addwash-ww85t554daw-sv_0.jpg', 'samsung-addwash-ww85t554daw-sv_0.jpg#samsung-addwash-ww85t554daw-sv_1.jpg', 'Thiết kế độc đáo tiện lợi, khẳng định đẳng cấp', '\r\n<p>\r\n    <strong>Ghi nhớ và đề xuất chế độ giặt ưa thích với bảng điều khiển thông minh AI Control</strong>\r\n\r\n \r\n    <p>Bảng điều khiển thông minh AI Control này sẽ tự động ghi nhớ các chế độ giặt giũ mà bạn thường sử dụng, từ đó sẽ tiến hành đề xuất chế độ giặt phù hợp với loại đồ theo thói quen sử dụng. Màn hình hiển thị quy trình giặt dễ hiểu, hướng dẫn thông minh bất kỳ ai trong gia đình đều có thể sử dụng dễ dàng.</p>\r\n\r\n\r\n    <img alt=\"\" src=\"https://cdn.tgdd.vn/Products/Images/1944/236161/Slider/samsung-addwash-ww85t554daw-sv-060421-0849530.jpg\" style=\"height:600px; width:950px\" />\r\n\r\n \r\n    <p>Công nghệ này sẽ đánh tan bột/nước giặt với sự kết hợp giữa khí và nước tạo thành những bong bóng siêu mịn dễ dàng thẩm thấu sâu vào từng sợi vải nhanh gấp 40 lần, đánh bật các vết bẩn cứng đầu nhanh hơn 24%.</p>\r\n\r\n \r\n    <img alt=\"\" src=\"https://cdn.tgdd.vn/Products/Images/1944/236161/Slider/samsung-addwash-ww85t554daw-sv-060421-0816424.jpg\" style=\"height:600px; width:950px\" />\r\n\r\n\r\n    <p>Hygiene Steam sử dụng hơi nước thoát ra từ nước được đun ở nhiệt độ cao để làm sạch quần áo của bạn, hơi nước dễ dàng loại bỏ bụi bẩn và diệt 99.9% vi khuẩn, các tác nhân gây dị ứng  trong từng kẽ vải bảo vệ sức khỏe cả nhà.</p> \r\n\r\n \r\n    <img alt=\"\" src=\"https://cdn.tgdd.vn/Products/Images/1944/236161/Slider/samsung-addwash-ww85t554daw-sv-060421-0816413.jpg\" style=\"height:600px; width:950px\" />\r\n\r\n\r\n    <p>Máy giặt Samsung với công nghệ VRT Plus™, thiết kế khung máy giặt có độ ổn định cao kết hợp với bộ cảm biến độ rung ồn sẽ giúp cho việc giặt giũ trở nên êm ái, giảm tiếng ồn tạo ra khi giặt đến 30%, kể cả khi máy đang vắt với tốc độ cao hoặc được nhét đầy quần áo.</p> \r\n\r\n \r\n    <img alt=\"\" src=\"https://cdn.tgdd.vn/Products/Images/1944/236161/samsung-addwash-ww85t554daw-sv-141021-112406.jpg\" style=\"height:600px; width:950px\" />\r\n\r\n\r\n    <strong>Dễ dàng thêm quần áo trong quá trình giặt với cửa phụ Add Door </strong>\r\n\r\n \r\n    <p>Với cửa phụ Add Door được tích hợp ngay trên cửa chính bạn có thể thêm đồ vào máy giặt bất cứ khi nào mà không cần phải tạm dừng và mở nắp máy như trước đây. Ngoài ra bạn cũng có thể thêm nước giặt, xả vào khi máy đang hoạt động thông qua của phụ này.</p> \r\n\r\n\r\n    <img alt=\"\" src=\"https://cdn.tgdd.vn/Products/Images/1944/236161/samsung-addwash-ww85t554daw-sv-121021-102516.jpg\" style=\"height:600px; width:950px\" />\r\n\r\n\r\n    <p>Nhờ ứng dụng SmartThings bạn có thể dàng kích hoạt máy giặt ở mọi nơi mọi lúc thông qua điện thoại vô cùng tiện lợi. Trước khi đi làm bạn có thể để quần áo bẩn và chất giặt tẩy vào máy giặt trước, để khi sắp tan làm bạn có thể bật và chọn chế độ giặt từ xa khi về đến nhà bạn chỉ cần đem đi phơi thôi, tiết kiệm thời gian đáng kể.</p> \r\n\r\n\r\n    <img alt=\"\" src=\"https://cdn.tgdd.vn/Products/Images/1944/236161/Slider/samsung-addwash-ww85t554daw-sv-060421-0816435.jpg\" style=\"height:600px; width:950px\" />\r\n\r\n\r\n    <strong>Tiết kiệm điện năng tối đa, vận hành êm ái bền bỉ với động cơ Digital Inverter</strong>\r\n\r\n \r\n    <p>Động cơ Digital Inverter sử dụng nam châm vĩnh cửu giúp làm giảm sự ma sát khi máy giặt vận hành, kết hợp cùng khả năng điều chỉnh vòng quay đưa lồng giặt vào trạng thái hoạt động phù hợp từ đó giúp bạn tiết kiệm điện hiệu quả hơn máy không có Inverter. </p> \r\n\r\n\r\n    <img alt=\"\" src=\"https://cdn.tgdd.vn/Products/Images/1944/236161/digital-inverter-1-1.jpg\" style=\"height:600px; width:950px\" />\r\n\r\n   \r\n</p>\r\n', 2, 720, 161, 0, 10000000, 12400000, 12400000, '2022-03-23 00:04:42', '1', '2022-03-23 17:54:03', '1', 1, 1),
(22, 5, 'Tủ lạnh Panasonic Inverter 550 lít NR-DZ601VGKV', 'panasonic-inverter-550-lit-nr-dz601vgkv', 'panasonic-inverter-550-lit-nr-dz601vgkv_0.jpg', 'panasonic-inverter-550-lit-nr-dz601vgkv_0.jpg#panasonic-inverter-550-lit-nr-dz601vgkv_1.jpg#panasonic-inverter-550-lit-nr-dz601vgkv_2.jpg', 'Thiết kế độc đáo tiện lợi, khẳng định đẳng cấp', '\r\n<p>\r\n    <strong>Bảo quản thực phẩm tươi sống không cần rã đông với ngăn Prime Fresh+ Blue Ag+ </strong>\r\n\r\n \r\n    <p>Tủ lạnh Panasonic 550 lít NR-DZ601VGKV có ngăn đông mềm với nhiệt độ -3°C, phù hợp để bảo quản thực phẩm tươi sống mà không làm đông đá. Được thiết kế dạng ngăn kéo riêng biệt và công nghệ Blue Ag+ nên có thể tránh lẫn mùi với thực phẩm khác. Nhờ vậy, giữ trọn hương vị và độ tươi ngon, bạn có thể lấy ra nấu ăn ngay mà không cần tốn thời gian rã đông.</p>\r\n\r\n\r\n    <img alt=\"\" src=\"https://cdn.tgdd.vn/Products/Images/1943/240703/panasonic-inverter-550-lit-nr-dz601vgkv-18.jpg\" style=\"height:600px; width:950px\" />\r\n\r\n \r\n    <p>Tủ lạnh của bạn sẽ được giữ tươi mát, sạch vi khuẩn vì công nghệ Blue Ag+ sử dụng ánh sáng xanh đi qua tấm lọc tích hợp tinh thể bạc và được đặt ngay tại lỗ thoát khí hơi lạnh, giúp luồng khí đi qua bộ lọc nhanh chóng lan tỏa khắp tủ để kháng khuẩn, khử mùi và đảm bảo an toàn thực phẩm cho người sử dụng.</p>\r\n\r\n \r\n    <img alt=\"\" src=\"https://cdn.tgdd.vn/Products/Images/1943/240703/panasonic-inverter-550-lit-nr-dz601vgkv1-1.jpg\" style=\"height:600px; width:950px\" />\r\n\r\n\r\n    <p>Công nghệ diệt khuẩn Blue Ag+ có thể diệt được khuẩn E.coli và khuẩn tụ cầu vàng Staphylococcus aureus, nguyên nhân gây bệnh đường ruột và kích ứng da, đã được cấp chứng nhận bởi Sudsachsen Wasser (Đức).</p> \r\n\r\n \r\n    <img alt=\"\" src=\"https://cdn.tgdd.vn/Files/2020/07/26/1273851/cac-tinh-nang-diet-khuan-bao-ve-suc-khoe-nao-dang--2.jpg\" style=\"height:600px; width:950px\" />\r\n\r\n\r\n    <p>Tủ lạnh Panasonic có ngăn rau củ được thiết kế dạng kéo riêng biệt, ngăn hơi ẩm thoát ra ngoài và không khí lạnh không thổi trực tiếp lên rau củ. Ngoài ra còn có bộ điều khiển cho phép bạn tự động điều chỉnh nhiệt độ phù hợp với lượng rau củ bảo quản.</p> \r\n\r\n \r\n    <img alt=\"\" src=\"https://cdn.tgdd.vn/Products/Images/1943/240703/panasonic-inverter-550-lit-nr-dz601vgkv2-1.jpg\" style=\"height:600px; width:950px\" />\r\n\r\n\r\n    <strong>Thiết kế 4 cánh thanh lịch, mặt kính sang trọng</strong>\r\n\r\n \r\n    <p>Thiết kế 4 cánh cửa, tủ mặt kính cao cấp, phù hợp với phong cách hiện đại. Tay cầm cong duyên dáng kết hợp với mặt kính phẳng không viền mang lại sự tinh tế cho căn bếp.</p> \r\n\r\n\r\n    <img alt=\"\" src=\"https://cdn.tgdd.vn/Products/Images/1943/240703/panasonic-inverter-550-lit-nr-dz601vgkv3-1.jpg\" style=\"height:600px; width:950px\" />\r\n\r\n\r\n    <p>Công nghệ này có khả năng làm lạnh đa chiều và đưa các luồng khí lạnh thổi nhanh và đồng đều khắp các ngóc ngách trong tủ. Vì vậy, khi để đầy thực phẩm trong các ngăn vẫn đảm bảo thực phẩm được bảo quản tốt và giữ chúng tươi ngon lâu dài.</p> \r\n\r\n\r\n    <img alt=\"\" src=\"https://cdn.tgdd.vn/Products/Images/1943/240703/panasonic-inverter-550-lit-nr-dz601vgkv4-1.jpg\" style=\"height:600px; width:950px\" />\r\n\r\n\r\n    <strong>Ngăn lẫn mùi thực phẩm với ngăn trữ đông tinh thể bạc Ag Hygiene Zone</strong>\r\n\r\n \r\n    <p>Đây là ngăn được thiết kế dạng kéo riêng biệt ở trong ngăn đá, có các tinh thể bạc để loại bỏ các mùi hôi khó chịu từ các loại thực phẩm tươi sống có mùi tanh, mùi hôi, tránh lẫn mùi với các thực phẩm khác trong tủ, đảm bảo vệ sinh hơn.</p> \r\n\r\n\r\n    <img alt=\"\" src=\"https://cdn.tgdd.vn/Products/Images/1943/240703/panasonic-inverter-550-lit-nr-dz601vgkv5-1.jpg\" style=\"height:600px; width:950px\" />\r\n\r\n   \r\n</p>\r\n', 2, 250, 3, 0, 35000000, 40900000, 40900000, '2022-03-23 00:10:34', '1', '2022-03-23 17:53:43', '1', 1, 1),
(23, 10, 'Máy giặt LG Inverter 10 kg FV1410S4P', 'lg-inverter-10-kg-fv1410s4p', 'lg-inverter-10-kg-fv1410s4p_0.jpg', 'lg-inverter-10-kg-fv1410s4p_0.jpg#lg-inverter-10-kg-fv1410s4p_1.jpg', 'Thiết kế độc đáo tiện lợi, khẳng định đẳng cấp', '\r\n<p>\r\n    <strong>Thiết kế hiện đại, nhỏ gọn với gam màu tinh tế</strong>\r\n\r\n \r\n    <p>Máy giặt LG Inverter 10 kg FV1410S4P có kiểu dáng nhỏ gọn cùng tông màu trắng tinh tế phù hợp với mọi không gian nội thất của gia đình Việt. </p>\r\n\r\n\r\n    <img alt=\"\" src=\"https://cdn.tgdd.vn/Products/Images/1944/255492/lg-inverter-10-kg-fv1410s4p-210322-034423.jpg\" style=\"height:600px; width:950px\" />\r\n\r\n \r\n    <p>Chiếc máy giặt LG cửa trước này được tích hợp 14 chương trình giặt khác nhau (xem chi tiết tại bảng thông số kỹ thuật), bao gồm: chu trình tải về, giặt chăn ga, giặt hơi nước đồ trẻ em, giặt ngừa dị ứng, giặt nhanh 30 phút, giặt nhẹ, giặt tay + đồ len, giặt tiết kiệm cotton, và 6 chương trình giặt khác. </p>\r\n\r\n \r\n    <img alt=\"\" src=\"https://cdn.tgdd.vn/Products/Images/1944/255492/lg-inverter-10-kg-fv1410s4p-210322-034427.jpg\" style=\"height:600px; width:950px\" />\r\n\r\n\r\n    <p>Nếu bạn có nhu cầu lựa chọn máy giặt cho gia đình từ 5 - 7 thành viên hoặc khối lượng đồ giặt hàng ngày nhiều thì máy giặt LG này với khối lượng giặt 10 kg sẽ là một lựa chọn đáng cân nhắc. </p> \r\n\r\n \r\n    <img alt=\"\" src=\"https://cdn.tgdd.vn/Products/Images/1944/255492/lg-inverter-10-kg-fv1410s4p-210322-034420.jpg\" style=\"height:600px; width:950px\" />\r\n\r\n\r\n    <p>Chiếc máy giặt LG Inverter này còn được trang bị ứng dụng trí tuệ nhân tạo AI không những phát hiện chính xác khối lượng đồ giặt mà còn cảm nhận được độ mềm của sợi vải. Từ đó tối ưu chương trình giặt cho phù hợp. </p> \r\n\r\n \r\n    <img alt=\"\" src=\"https://cdn.tgdd.vn/Products/Images/1944/255492/may-giat-lg-inverter-10-kg-fv1410s4p-sp08.jpg\" style=\"height:600px; width:950px\" />\r\n\r\n\r\n    <strong>Giặt nhanh hơn và sạch hơn với công nghệ TurboWash</strong>\r\n\r\n \r\n    <p>Điểm nổi bật ở chiếc máy giặt này là công nghệ TurboWash cho hiệu quả giặt sạch trong thời gian ngắn. Công nghệ Turbo Wash sử dụng vòi xả nước mạnh từ các phía trong lồng giặt với tốc độ cao giúp các vết bẩn trên quần áo được loại bỏ nhanh hơn. </p> \r\n\r\n\r\n    <img alt=\"\" src=\"https://cdn.tgdd.vn/Products/Images/1944/255492/lg-inverter-10-kg-fv1410s4p-210322-034437.jpg\" style=\"height:600px; width:950px\" />\r\n\r\n\r\n    <p>Nhờ công nghệ giặt hơi nước, máy giặt LG có khả năng diệt khuẩn tối ưu đến 99.99%, loại bỏ các tác nhân dị ứng trên quần áo bằng hơi nước nóng, giúp bảo vệ làn da và sức khỏe của người dùng. Bên cạnh đó, công nghệ này còn giúp giảm nhăn quần áo và hạn chế phai màu sợi vải.</p> \r\n\r\n\r\n    <img alt=\"\" src=\"https://cdn.tgdd.vn/Products/Images/1944/255492/lg-inverter-10-kg-fv1410s4p-210322-034439.jpg\" style=\"height:600px; width:950px\" />\r\n\r\n\r\n    <strong>Giảm thiểu hư tổn, chăm sóc sợi vải thông minh nhờ công nghệ 6 Motion DD</strong>\r\n\r\n \r\n    <p>Bằng cách mô phỏng theo các bước giặt bằng tay như đập, nén, đảo, nhào trộn, quay và chà xát, công nghệ giặt 6 chuyển động giúp quần áo vừa sạch sâu mà không bị xoắn rối, giảm thiểu nguy cơ sờn rách sợi vải, đảm bảo quần áo của gia đình được bền đẹp lâu hơn.</p> \r\n\r\n\r\n    <img alt=\"\" src=\"https://cdn.tgdd.vn/Products/Images/1944/255492/may-giat-lg-inverter-10-kg-fv1410s4p-sp03.jpg\" style=\"height:600px; width:950px\" />\r\n\r\n   \r\n</p>\r\n', 2, 560, 0, 10, 10000000, 13900000, 12510000, '2022-03-23 17:32:25', '1', '2022-03-23 17:32:25', '1', 1, 0),
(30, 5, 'TIvi', 'tivi', '36da9aa21153408471d294f8f36c56f9.png', 'e10a3c470635c67d6bc32cf2efe6ed36.png', 'ok', 'ok', 1, 1, 0, 0, 8000000, 1000000, 1000000, '2022-04-19 11:08:56', '1', '2022-04-19 11:13:47', '1', 0, 1),
(32, 2, 'ads', 'ads', '', '', 'ads', 'add', 3, 1, 0, 10, 0, 50000, 40000, '2022-04-22 14:53:58', '1', '2022-04-22 14:55:42', '1', 0, 1),
(33, 1, 'áda', 'ada', '', '', 'a', 'a', 3, 1, 0, 0, 50000, 40000, 30000, '2022-04-22 15:06:09', '1', '2022-04-22 15:06:09', '1', 0, 1),
(34, 5, 'aa', 'aa', '', '', 'a', 'a', 3, 1, 0, 0, 50000, 60000, 50000, '2022-04-22 15:11:11', '1', '2022-04-22 15:11:11', '1', 0, 1),
(35, 2, 'a', 'a', '', '', 'a', 'a', 2, 1, 0, 0, 50000, 60000, 60000, '2022-04-22 15:14:22', '1', '2022-04-22 15:14:37', '1', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_province`
--

CREATE TABLE `db_province` (
  `id` int(5) NOT NULL,
  `name` varchar(100) CHARACTER SET utf8 NOT NULL,
  `type` varchar(30) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `db_province`
--

INSERT INTO `db_province` (`id`, `name`, `type`) VALUES
(1, 'Thành phố Hà Nội', 'Thành phố Trung ương'),
(2, 'Tỉnh Hà Giang', 'Tỉnh'),
(4, 'Tỉnh Cao Bằng', 'Tỉnh'),
(6, 'Tỉnh Bắc Kạn', 'Tỉnh'),
(8, 'Tỉnh Tuyên Quang', 'Tỉnh'),
(10, 'Tỉnh Lào Cai', 'Tỉnh'),
(11, 'Tỉnh Điện Biên', 'Tỉnh'),
(12, 'Tỉnh Lai Châu', 'Tỉnh'),
(14, 'Tỉnh Sơn La', 'Tỉnh'),
(15, 'Tỉnh Yên Bái', 'Tỉnh'),
(17, 'Tỉnh Hoà Bình', 'Tỉnh'),
(19, 'Tỉnh Thái Nguyên', 'Tỉnh'),
(20, 'Tỉnh Lạng Sơn', 'Tỉnh'),
(22, 'Tỉnh Quảng Ninh', 'Tỉnh'),
(24, 'Tỉnh Bắc Giang', 'Tỉnh'),
(25, 'Tỉnh Phú Thọ', 'Tỉnh'),
(26, 'Tỉnh Vĩnh Phúc', 'Tỉnh'),
(27, 'Tỉnh Bắc Ninh', 'Tỉnh'),
(30, 'Tỉnh Hải Dương', 'Tỉnh'),
(31, 'Thành phố Hải Phòng', 'Thành phố Trung ương'),
(33, 'Tỉnh Hưng Yên', 'Tỉnh'),
(34, 'Tỉnh Thái Bình', 'Tỉnh'),
(35, 'Tỉnh Hà Nam', 'Tỉnh'),
(36, 'Tỉnh Nam Định', 'Tỉnh'),
(37, 'Tỉnh Ninh Bình', 'Tỉnh'),
(38, 'Tỉnh Thanh Hóa', 'Tỉnh'),
(40, 'Tỉnh Nghệ An', 'Tỉnh'),
(42, 'Tỉnh Hà Tĩnh', 'Tỉnh'),
(44, 'Tỉnh Quảng Bình', 'Tỉnh'),
(45, 'Tỉnh Quảng Trị', 'Tỉnh'),
(46, 'Tỉnh Thừa Thiên Huế', 'Tỉnh'),
(48, 'Thành phố Đà Nẵng', 'Thành phố Trung ương'),
(49, 'Tỉnh Quảng Nam', 'Tỉnh'),
(51, 'Tỉnh Quảng Ngãi', 'Tỉnh'),
(52, 'Tỉnh Bình Định', 'Tỉnh'),
(54, 'Tỉnh Phú Yên', 'Tỉnh'),
(56, 'Tỉnh Khánh Hòa', 'Tỉnh'),
(58, 'Tỉnh Ninh Thuận', 'Tỉnh'),
(60, 'Tỉnh Bình Thuận', 'Tỉnh'),
(62, 'Tỉnh Kon Tum', 'Tỉnh'),
(64, 'Tỉnh Gia Lai', 'Tỉnh'),
(66, 'Tỉnh Đắk Lắk', 'Tỉnh'),
(67, 'Tỉnh Đắk Nông', 'Tỉnh'),
(68, 'Tỉnh Lâm Đồng', 'Tỉnh'),
(70, 'Tỉnh Bình Phước', 'Tỉnh'),
(72, 'Tỉnh Tây Ninh', 'Tỉnh'),
(74, 'Tỉnh Bình Dương', 'Tỉnh'),
(75, 'Tỉnh Đồng Nai', 'Tỉnh'),
(77, 'Tỉnh Bà Rịa - Vũng Tàu', 'Tỉnh'),
(79, 'Thành phố Hồ Chí Minh', 'Thành phố Trung ương'),
(80, 'Tỉnh Long An', 'Tỉnh'),
(82, 'Tỉnh Tiền Giang', 'Tỉnh'),
(83, 'Tỉnh Bến Tre', 'Tỉnh'),
(84, 'Tỉnh Trà Vinh', 'Tỉnh'),
(86, 'Tỉnh Vĩnh Long', 'Tỉnh'),
(87, 'Tỉnh Đồng Tháp', 'Tỉnh'),
(89, 'Tỉnh An Giang', 'Tỉnh'),
(91, 'Tỉnh Kiên Giang', 'Tỉnh'),
(92, 'Thành phố Cần Thơ', 'Thành phố Trung ương'),
(93, 'Tỉnh Hậu Giang', 'Tỉnh'),
(94, 'Tỉnh Sóc Trăng', 'Tỉnh'),
(95, 'Tỉnh Bạc Liêu', 'Tỉnh'),
(96, 'Tỉnh Cà Mau', 'Tỉnh');

-- --------------------------------------------------------

--
-- Table structure for table `db_slider`
--

CREATE TABLE `db_slider` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `link` varchar(255) CHARACTER SET utf8 NOT NULL,
  `img` varchar(100) CHARACTER SET utf8 NOT NULL,
  `created` datetime NOT NULL,
  `created_by` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT 'Supper Admin',
  `modified` datetime NOT NULL,
  `modified_by` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT 'Supper Admin',
  `trash` tinyint(1) NOT NULL DEFAULT 1,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_slider`
--

INSERT INTO `db_slider` (`id`, `name`, `link`, `img`, `created`, `created_by`, `modified`, `modified_by`, `trash`, `status`) VALUES
(1, 'Banner1', 'banner-1', '2.jpg', '2022-03-23 21:27:24', '1', '2022-03-23 23:42:42', '', 0, 1),
(2, 'Banner 2', 'Banner-2', 'default.png', '2022-03-23 23:45:04', '1', '2022-03-23 23:45:44', '', 0, 1),
(3, 'trang chu 1', 'trang-chu', 'default.png', '2022-03-23 17:05:52', '1', '2022-03-23 17:07:18', '', 1, 1),
(4, 'slider trang chu 2', 'slider-trang-chu-2', 'iphone-banner.jpg', '2022-03-23 17:06:38', '1', '2022-03-23 17:06:38', '1', 1, 1),
(5, 'slider trang chu 3', 'slider-trang-chu-3', 'xsmaxbanner.png', '2022-03-23 17:06:58', '1', '2022-03-23 17:06:58', '1', 1, 1),
(6, 'ss', 'ss', 'icon_142e7.png', '2022-03-23 17:08:07', '1', '2022-03-23 17:08:07', '1', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_user`
--

CREATE TABLE `db_user` (
  `id` int(11) NOT NULL,
  `fullname` varchar(255) CHARACTER SET utf8 NOT NULL,
  `username` varchar(225) CHARACTER SET utf8 NOT NULL,
  `password` varchar(64) CHARACTER SET utf8 NOT NULL,
  `role` int(11) NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 NOT NULL,
  `gender` int(1) NOT NULL,
  `phone` varchar(15) CHARACTER SET utf8 NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `img` varchar(255) CHARACTER SET utf8 NOT NULL,
  `created` datetime NOT NULL,
  `trash` int(1) NOT NULL DEFAULT 1,
  `status` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_user`
--

INSERT INTO `db_user` (`id`, `fullname`, `username`, `password`, `role`, `email`, `gender`, `phone`, `address`, `img`, `created`, `trash`, `status`) VALUES
(1, 'ADMIN', 'admin', '7c4a8d09ca3762af61e59520943dc26494f8941b', 1, 'admin@gmail.com', 1, '0167892615', 'Gò vấp', 'user-group.png', '2022-03-23 09:16:16', 1, 1),
(2, 'Quản lý', 'quanly', '7c4a8d09ca3762af61e59520943dc26494f8941b', 1, 'quanly@gmail.com', 1, '0985657410', 'Gò vấp', 'bc0d4c186522764fc9457b7bacb635e4.png', '2022-03-25 22:08:18', 1, 1),
(3, 'Nhân viên', 'nhanvien', '7c4a8d09ca3762af61e59520943dc26494f8941b', 2, 'nv@gmail.com', 1, '09990990', 'Gò vấp', 'b78af1dc3e1098f71e7cd607c49f5d51.png', '2022-03-23 09:20:41', 1, 1),
(4, 'Nguyễn Văn A', 'nhanviena', '7c4a8d09ca3762af61e59520943dc26494f8941b', 2, 'nv@gmail.com', 1, '0985657410', 'Gò vấp 1', '403ceb0ed6fdb72494bbd2ac39182b04.png', '2022-03-25 22:08:18', 1, 1),
(6, 'Nguyễn Văn B', 'nhanvienb', '7c4a8d09ca3762af61e59520943dc26494f8941b', 2, 'nv@gmail.com', 0, '09876543532', 'Gò vấp', 'user.png', '2022-03-23 09:18:18', 1, 1),
(7, 'Messi', 'messi', '7c4a8d09ca3762af61e59520943dc26494f8941b', 2, 'messi@gmail.com', 0, '23523523423', 'Gò vấp', '5eab74ad301795ffdfaa82f52579f71d.png', '2022-03-23 22:15:15', 0, 1),
(8, 'Ronaldo', 'ronaldo1998', '7c4a8d09ca3762af61e59520943dc26494f8941b', 2, 'ronaldo@gmail.com', 0, '981643651', 'Gò vấp', 'default.png', '2022-03-23 22:30:03', 0, 1),
(9, 'Ronaldo test 22223', '', 'f7c3bc1d808e04732adf679965ccc34ca7ae3441', 2, '', 0, '', 'Lê đức thọ 2', 'default.png', '2022-03-23 22:59:14', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `db_usergroup`
--

CREATE TABLE `db_usergroup` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `created` datetime NOT NULL,
  `created_by` int(11) NOT NULL,
  `modified` datetime NOT NULL,
  `modified_by` int(11) NOT NULL,
  `trash` tinyint(1) NOT NULL DEFAULT 1,
  `access` tinyint(1) NOT NULL DEFAULT 1,
  `status` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `db_usergroup`
--

INSERT INTO `db_usergroup` (`id`, `name`, `created`, `created_by`, `modified`, `modified_by`, `trash`, `access`, `status`) VALUES
(1, 'admin1', '2022-03-23 23:29:15', 1, '2022-03-23 23:29:15', 4, 1, 1, 1),
(2, 'Nhân viên', '2022-03-23 23:29:21', 1, '2022-03-23 23:29:21', 4, 1, 1, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `db_category`
--
ALTER TABLE `db_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_config`
--
ALTER TABLE `db_config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_contact`
--
ALTER TABLE `db_contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_content`
--
ALTER TABLE `db_content`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_customer`
--
ALTER TABLE `db_customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_discount`
--
ALTER TABLE `db_discount`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_district`
--
ALTER TABLE `db_district`
  ADD PRIMARY KEY (`id`),
  ADD KEY `matp` (`provinceid`);

--
-- Indexes for table `db_order`
--
ALTER TABLE `db_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customerid` (`customerid`),
  ADD KEY `province` (`province`),
  ADD KEY `district` (`district`),
  ADD KEY `province_2` (`province`),
  ADD KEY `district_2` (`district`),
  ADD KEY `province_3` (`province`),
  ADD KEY `district_3` (`district`);

--
-- Indexes for table `db_orderdetail`
--
ALTER TABLE `db_orderdetail`
  ADD PRIMARY KEY (`id`),
  ADD KEY `productid` (`productid`),
  ADD KEY `orderid` (`orderid`);

--
-- Indexes for table `db_producer`
--
ALTER TABLE `db_producer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_product`
--
ALTER TABLE `db_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `producer` (`producer`),
  ADD KEY `catid` (`catid`);

--
-- Indexes for table `db_province`
--
ALTER TABLE `db_province`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_slider`
--
ALTER TABLE `db_slider`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `db_user`
--
ALTER TABLE `db_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `role` (`role`);

--
-- Indexes for table `db_usergroup`
--
ALTER TABLE `db_usergroup`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `db_category`
--
ALTER TABLE `db_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `db_config`
--
ALTER TABLE `db_config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `db_contact`
--
ALTER TABLE `db_contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `db_content`
--
ALTER TABLE `db_content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `db_customer`
--
ALTER TABLE `db_customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `db_discount`
--
ALTER TABLE `db_discount`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'ID', AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `db_order`
--
ALTER TABLE `db_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `db_orderdetail`
--
ALTER TABLE `db_orderdetail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `db_producer`
--
ALTER TABLE `db_producer`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `db_product`
--
ALTER TABLE `db_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `db_slider`
--
ALTER TABLE `db_slider`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `db_user`
--
ALTER TABLE `db_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `db_usergroup`
--
ALTER TABLE `db_usergroup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `db_district`
--
ALTER TABLE `db_district`
  ADD CONSTRAINT `db_district_ibfk_1` FOREIGN KEY (`provinceid`) REFERENCES `db_province` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `db_order`
--
ALTER TABLE `db_order`
  ADD CONSTRAINT `db_order_ibfk_2` FOREIGN KEY (`province`) REFERENCES `db_province` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `db_order_ibfk_3` FOREIGN KEY (`district`) REFERENCES `db_district` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `db_order_ibfk_4` FOREIGN KEY (`customerid`) REFERENCES `db_customer` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `db_orderdetail`
--
ALTER TABLE `db_orderdetail`
  ADD CONSTRAINT `db_orderdetail_ibfk_2` FOREIGN KEY (`productid`) REFERENCES `db_product` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `db_orderdetail_ibfk_3` FOREIGN KEY (`orderid`) REFERENCES `db_order` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `db_product`
--
ALTER TABLE `db_product`
  ADD CONSTRAINT `db_product_ibfk_1` FOREIGN KEY (`catid`) REFERENCES `db_category` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `db_product_ibfk_2` FOREIGN KEY (`producer`) REFERENCES `db_producer` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `db_user`
--
ALTER TABLE `db_user`
  ADD CONSTRAINT `db_user_ibfk_1` FOREIGN KEY (`role`) REFERENCES `db_usergroup` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
