-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 11, 2023 at 11:17 PM
-- Server version: 8.0.31
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pc_picker`
--

-- --------------------------------------------------------

--
-- Table structure for table `desktop`
--

CREATE TABLE `desktop` (
  `desktop_id` int NOT NULL,
  `make` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `desktop_pl_id` int NOT NULL,
  `category` char(50) COLLATE utf8mb4_general_ci NOT NULL,
  `url` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `desktop`
--

INSERT INTO `desktop` (`desktop_id`, `make`, `name`, `price`, `desktop_pl_id`, `category`, `url`) VALUES
(1, 'Dell', 'Inspiron 3020 Desktop', 769.99, 1, 'Student Desktop', 'https://www.dell.com/en-us/shop/desktop-computers/inspiron-desktop/spd/inspiron-3020-desktop'),
(2, 'HP', 'Pavilion Desktop TP01-3025t', 699.99, 2, 'Student Desktop', 'https://www.hp.com/us-en/shop/pdp/hp-pavilion-desktop-tp01-3025t-bundle-pc'),
(3, 'Alienware', 'Aurora R16 Gaming Desktop', 1299.99, 3, 'Gaming Desktop', 'https://www.dell.com/en-us/shop/desktop-computers/alienware-aurora-r16-gaming-desktop/spd/alienware-aurora-r16-desktop'),
(4, 'Lenovo', 'ThinkStation P620 Workstation', 1619.00, 4, 'Workstation', 'https://www.lenovo.com/us/en/p/workstations/thinkstation-p-series/thinkstation-p620/wmd00000429'),
(5, 'Acer', 'Aspire XC-840-UB11 Desktop', 399.99, 5, 'Student Desktop', 'https://www.acer.com/us-en/desktops-and-all-in-ones/aspire-classic-desktops/aspire-xc/pdp/DT.BJEAA.001'),
(6, 'ASUS', 'ASUS ExpertCenterD5 SFF', 799.99, 6, 'Workstation', 'https://www.asus.com/us/displays-desktops/tower-pcs/expertcenter/expertcenter-d5-sff-d500sd'),
(7, 'Acer', 'Aspire C27-1700 All-in-One', 899.99, 7, 'All-In-One Desktop', 'https://www.acer.com/us-en/desktops-and-all-in-ones/aspire-all-in-ones/aspire-c27/pdp/DQ.BK3AA.001'),
(8, 'Lenovo', 'IdeaCentre 5i Desktop', 759.99, 8, 'Student Desktop', 'https://www.lenovo.com/us/en/p/desktops/ideacentre/500-series/ideacentre-5i-gen-8-(14l-intel)/len102d0029'),
(9, 'MSI', 'Trident 3 SFF', 1329.99, 9, 'Gaming Desktop', 'https://www.msi.com/Desktop/MPG-Trident-3-12th'),
(10, 'HP', 'Z2 Tower G9 Workstation', 1299.99, 10, 'Workstation', 'https://www.hp.com/us-en/workstations/z2-tower-configure.html'),
(11, 'Dell', 'XPS Pro', 1609.99, 11, 'Gaming Desktop', 'https://www.dell.com/en-us/shop/desktop-computers/new-xps-desktop/spd/xps-8960-desktop/usexpstpcto8960rpl04'),
(12, 'ASUS', 'ExpertCenter D500SA', 499.99, 12, 'Workstation', 'https://www.asus.com/us/commercial-desktop/expertcenter-d5-sff-d500sa/'),
(13, 'CyberPowerPC', 'Gamer Xtreme VR Gaming PC', 1785.00, 13, 'Gaming Desktop', 'https://www.cyberpowerpc.com/system/Gaming-PC-Xtreme-XT'),
(14, 'Zotac', 'ZBOX edge MI 668', 299.99, 14, 'Small Form Factor Desktop', 'https://www.zotac.com/product/mini_pcs/zbox-edge-mi668-barebone'),
(15, 'Acer', 'Aspire XC-1780-UR11', 499.99, 15, 'Student Desktop', 'https://www.acer.com/us-en/desktops-and-all-in-ones/aspire-classic-desktops/aspire-xc/pdp/DT.BKAAA.001'),
(16, 'Lenovo', 'Legion Tower 7i Gen 8', 1819.99, 16, 'Gaming Desktop', 'https://www.lenovo.com/us/en/p/desktops/legion-desktops/legion-t-series-towers/legion-tower-7i-gen-8-(34l-intel)/len102g0007'),
(17, 'Alienware', 'Aurora Ryzen Edition R15', 1549.99, 17, 'Gaming Desktop', 'https://www.dell.com/en-us/shop/gaming-and-games/alienware-aurora-r15-gaming-desktop/spd/alienware-aurora-r15-amd-desktop/wdr15amd50h),\r\n
(18, Lenovo, ThinkStation P3 Ultra, 1159.00, 18, Desktop, https://www.lenovo.com/us/en/p/workstations/thinkstation-p-series/thinkstation-p3-ultra-workstation/len102s0014'),
(19, 'HP', 'EliteOne 870 G9', 1499.00, 19, 'All-In-One Desktop', 'https://www.hp.com/us-en/shop/pdp/hp-eliteone-870-g9-all-in-one-pc-wolf-pro-security-edition-p-89p61ua-aba-1'),
(20, 'Dell', 'Inspiron Small Desktop', 549.99, 20, 'Small Form Factor Desktop', 'https://www.dell.com/en-us/shop/desktop-computers/inspiron-small-desktop/spd/inspiron-3020-small-desktop/useishbts3020gcrg'),
(21, 'Alienware', 'URORA R15 GAMING DESKTOP', 4959.99, 21, 'Gaming Desktop', 'https://www.dell.com/en-us/shop/desktop-computers/alienware-aurora-r15-gaming-desktop/spd/alienware-aurora-r15-desktop/useahctomaurorar15rpl03?view=configurations&configurationid=6a3d7b7f-c076-4aba-a3ca-ca258f1ae109'),
(22, 'ASUS', 'ProArt Station PD5', 2699.99, 22, 'Workstation', 'https://shop.asus.com/us/90pf0491-m00f80-asus-proart-station-pd5-pd500te.html');

-- --------------------------------------------------------

--
-- Table structure for table `desktop_partlist`
--

CREATE TABLE `desktop_partlist` (
  `desktop_pl_id` int NOT NULL,
  `cpu` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  `gpu` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  `ram` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `storage` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `size` char(50) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `desktop_partlist`
--

INSERT INTO `desktop_partlist` (`desktop_pl_id`, `cpu`, `gpu`, `ram`, `storage`, `size`) VALUES
(1, 'Intel Core i5-13700', 'Intel UHD Graphics 770', '16GB DDR4', '512GB NVMe SSD', 'Mid Tower'),
(2, 'Intel Core i5-10400', 'Intel UHD Graphics 730', '8GB DDR4', '1TB HDD + 512GB SSD', 'Mid Tower'),
(3, 'Intel Core i7-13700F', 'NVIDIA GeForce RTX 4060', '16GB DDR4', '1TB NVMe SSD', 'Mid Tower'),
(4, 'AMD Ryzen Threadripper PRO 5945WX', 'NVIDIA T1000', '32GB DDR4', '1TB NVMe SSD', 'Full Tower'),
(5, 'Intel Celeron N4505', 'Intel UHD Graphics 630', '8GB DDR4', '512GB SSD', 'Mid Tower'),
(6, 'Intel Core i5-12400', 'Intel Core i5-12400', '8GB DDR4', '512GB SSD', 'Small Form Factor'),
(7, 'Intel Core i5-1235U', 'Iris Xe Graphics', '16GB DDR4', '512GB SSD', 'All-in-One'),
(8, 'Intel Core i7-13700', 'Intel UHD Graphics 770', '16GB DDR4', '512GB SSD', 'Small Form Factor'),
(9, 'Intel Core i7-12700', 'NVIDIA GeForce RTX 3060', '32GB DDR4', '2TB NVMe SSD', 'Small Form Factor'),
(10, 'Intel Core i7 13700', 'Intel UHD Graphics 770', '16GB DDR5', '512GB SSD', 'Mid Tower'),
(11, 'Intel Core i7-13700', 'NVIDIA GeForce RTX 4060TI', '16B DDR5', '512TB NVMe SSD', 'Mid Tower'),
(12, 'Intel Core i5-10400', 'Intel UHD Graphics 630', '8GB DDR4', '512GB SSD', 'Mid Tower'),
(13, 'Intel Core i7-13700K', 'NVIDIA GeForce RTX 4060TI', '32GB DDR5', '2TB NVMe SSD', 'Full Tower'),
(14, 'Intel Core i7-1360P', 'Intel Iris Xe Graphics', '8GB DDR4', '512GB SSD', 'Small Form Factor'),
(15, 'Intel Core i3-13100', 'Intel UHD Graphics 730', '8GB DDR4', '512GB SSD', 'Mid Tower'),
(16, 'Intel Core i7-13700KF', 'NVIDIA GeForce RTX 4070TI', '16GB DDR5', '1TB NVMe SSD', 'Mid Tower'),
(17, 'AMD Ryzen 7 7700', 'NVIDIA GeForce RTX 3060', '16GB DDR4', '512GB SSD', 'Small Form Factor'),
(18, 'Intel Core i5-13600', 'Intel UHD Graphics 770', '16GB DDR5', '512GB SSD', 'Small Form Factor'),
(19, 'Intel Core i7-13700', 'Intel UHD Graphics 770', '16GB DDR4', '512GB SSD', 'All-in-One'),
(20, 'Intel Core i5-13400', 'Intel UHD Graphics 730', '8GB DDR4', '512GB SSD', 'Small Form Factor'),
(21, 'Intel Core i9', 'NVIDIA® GeForce RTX™ 4090', '64 GB DDR5', '4 TB SSD ', 'Full Tower'),
(22, 'Intel Core i9', ' NVIDIA® RTX A4000', '16GB DDR4', '2TB SSD', 'Mid Tower');

-- --------------------------------------------------------

--
-- Table structure for table `laptop`
--

CREATE TABLE `laptop` (
  `laptop_id` int NOT NULL,
  `make` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `name` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `laptop_pl_id` int NOT NULL,
  `category` char(50) COLLATE utf8mb4_general_ci NOT NULL,
  `url` varchar(250) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `laptop`
--

INSERT INTO `laptop` (`laptop_id`, `make`, `name`, `price`, `laptop_pl_id`, `category`, `url`) VALUES
(1, 'MSI', 'GF63 Thin 11UCX-1424 15.6', 699.99, 1, 'Gaming Laptop', 'https://us-store.msi.com/Laptops/Gaming-Series/GF63-Thin11UCX-1424?sort=p.price&order=ASC'),
(2, 'MSI', 'Katana GF76 12UE-037 17.3', 999.99, 2, 'Gaming Laptop', 'https://us-store.msi.com/Laptops/Gaming-Series/Katana-GF76-12UE-037?filter=6&sort=p.price&order=ASC'),
(3, 'MSI', 'Katana GF66 11UE-1002 15.6', 1249.99, 3, 'Gaming Laptop', 'https://us-store.msi.com/Laptops/Gaming-Series/Katana-GF66-11UE-1002?filter=27%2C23%2C4&sort=p.price&order=ASC'),
(4, 'MSI', 'Stealth GS77 12UE-046 17.3', 1449.99, 4, 'Gaming Laptop', 'https://us-store.msi.com/Laptops/Gaming-Series/Stealth-GS77-12UE-046?filter=27%2C23%2C6&sort=p.price&order=ASC'),
(5, 'MSI', 'Pulse 15 B13VFK-1263 15.6', 1499.99, 5, 'Gaming Laptop', 'https://us-store.msi.com/Laptops/Gaming-Series/Pulse-15-B13VFK-1263?filter=112%2C4&sort=p.price&order=ASC'),
(6, 'MSI', 'Raider GE78HX 13VH-438 17.3', 2599.99, 6, 'Gaming Laptop', 'https://us-store.msi.com/Laptops/Gaming-Series/Raider-GE78HX-13VH-438?filter=112%2C6https://us-store.msi.com/Laptops/Gaming-Series/Stealth-GS77-12UE-046?filter=27%2C23%2C6&sort=p.price&order=ASC'),
(7, 'MSI', 'Raider GE78HX 13VI-079 17.3', 3799.99, 7, 'Gaming Laptop', 'https://us-store.msi.com/Laptops/Gaming-Series/Raider-GE78-HX-13VI-079US?filter=112%2C6'),
(8, 'HP', 'Pavilion Aero 13z-be200', 499.99, 8, 'Student Laptop', 'https://www.hp.com/us-en/shop/pdp/hp-pavilion-aero-laptop-13-be2047nr#techSpecs'),
(9, 'HP', 'ENVY x360 2-in-1 Laptop 15t-fe000', 1099.99, 9, 'Student Laptop', 'https://www.hp.com/us-en/shop/pdp/hp-envy-x360-2-in-1-laptop-15t-fe000-156-77x87av-1'),
(10, 'HP', 'Envy Laptop 17t', 849.99, 10, 'Work Laptop', 'https://www.hp.com/us-en/shop/pdp/hp-envy-laptop-17t-cw000-173-761z2av-1'),
(11, 'HP', 'Spectre x360 2-in-1 Laptop 14t-ef200', 949.99, 11, 'Student Laptop', 'https://www.hp.com/us-en/shop/pdp/hp-spectre-x360-2-in-1-laptop-14t-ef200-135-771x5av-1'),
(12, 'HP', 'Envy x360 2-in-1 Laptop 15-ew1047nr', 1149.99, 12, 'Student Laptop', 'https://www.hp.com/us-en/shop/pdp/hp-envy-x360-2-in-1-laptop-15-ew1047nr'),
(13, 'HP', 'Envy Laptop 17-cr1087nr', 899.99, 13, 'Work Laprop', 'https://www.hp.com/us-en/shop/pdp/hp-envy-laptop-17-cr1087nr'),
(14, 'HP', 'Pro x360 435 G10 Notebook PC', 930.05, 14, 'Student Laptop', 'https://www.hp.com/us-en/shop/pdp/hp-pro-x360-435-g10-notebook-pc-customizable-71c19av-mb#techSpecs'),
(15, 'Dell', ' XPS 15 i9, 2799.00', 2799.00, 15, 'Work Laptop', 'https://www.dell.com/en-us/shop/dell-laptops/xps-15-laptop/spd/xps-15-9530-laptop/usexchbts9530ggqh'),
(16, 'ASUS', 'ROG Zephyrus G14', 2499.00, 16, 'Gaming Laptop', 'https://rog.asus.com/us/laptops/rog-zephyrus/rog-zephyrus-g14-2023-series/spec/'),
(17, 'ASUS', 'ROG Zephyrus Duo 16', 3499.00, 17, 'Gaming Laptop', 'https://rog.asus.com/us/laptops/rog-zephyrus/rog-zephyrus-duo-16-2023-series/spec/'),
(18, 'ASUS', 'ROG Strix SCAR 18', 3899.99, 18, 'Streaming/VR Laptop', 'https://rog.asus.com/us/laptops/rog-strix/rog-strix-scar-18-2023-series/spec/'),
(19, 'Acer', 'Chromebook 315', 249.99, 19, 'Chromebook', 'https://store.acer.com/en-us/acer-chromebook-315-cb315-4h-c2e4'),
(20, 'ASUS', 'Chromebook Flip CX5', 699.99, 20, 'Chromebook', 'https://shop.asus.com/us/asus-chromebook-flip-cx5-cx5400.html'),
(21, 'HP', 'HP Dragonfly Pro', 1399.99, 21, 'Multipurpose Laptop', 'https://www.hp.com/us-en/shop/pdp/hp-dragonfly-pro-16gb-512gb-wh#techSpecs'),
(22, 'Dell', 'XPS 17 Laptop', 2199.00, 22, 'Multipurpose Laptop', 'https://www.dell.com/en-us/shop/dell-laptops/xps-17-laptop/spd/xps-17-9730-laptop#tech-specs-anchor'),
(23, 'Dell', 'XPS 13 Plus Laptop', 1249.00, 23, 'Work Laptop', 'https://www.dell.com/en-us/shop/laptops/xps-13-plus/spd/xps-13-9320-laptop#tech-specs-anchor'),
(24, 'Dell', 'Inspiron 15 Laptop\r\n', 649.99, 24, 'Work Laptop', 'https://www.dell.com/en-us/shop/dell-laptops/inspiron-15-laptop/spd/inspiron-15-3525-laptop/nn3525ghhvs#tech-specs-anchor'),
(25, 'HP', 'OMEN by HP Gaming Laptop 16z-xd000', 849.99, 25, 'Multipurpose Laptop', 'https://www.hp.com/us-en/shop/ConfigureView?langId=-1&storeId=10151&catalogId=10051&catEntryId=3074457345620865820&urlLangId=&quantity=1&jumpid=ma_omen-gaming_product-tile_laptops_15_77a93av-1_omen-by-hp-gaming-la'),
(26, 'ASUS', 'ProArt Studiobook 16', 1999.99, 26, 'Student Laptop', 'https://shop.asus.com/us/h7604ji.html'),
(27, 'MSI', 'Summit E13FlipEvo  2-in-1', 699.99, 27, 'Work Laptop', 'https://us-store.msi.com/Laptops/business-productivity/summit-series/Summit-E13FlipEvo-A11MT-095');

-- --------------------------------------------------------

--
-- Table structure for table `laptop_partlist`
--

CREATE TABLE `laptop_partlist` (
  `laptop_pl_id` int NOT NULL,
  `cpu` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  `gpu` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  `ram` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `storage` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `size` varchar(50) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `laptop_partlist`
--

INSERT INTO `laptop_partlist` (`laptop_pl_id`, `cpu`, `gpu`, `ram`, `storage`, `size`) VALUES
(1, 'Intel Core i5 - 1140H 2.7GHz', 'NVIDIA GeForce RTX 2050 4GB GDDR6', '8GB DDR4 ', '512BG SSD', '15.6in'),
(2, 'Intel Core i7 - 12700H 1.7GHz', 'NVIDIA GeForce RTX 3060 6BG GDDR6', '16GB DDR4', '512GB SSD', '15.6in'),
(3, 'Intel Core i7 - 11800H 2.4GHz', 'NVIDIA GeForce RTX 3060 6G GDDR6', '16GB DDR4 ', '1TB SSD', '15.6in'),
(4, 'Intel Core i7 - 12700H 1.7GHz', 'NVIDIA GeForce RTX 3060 6GB GDDR6', '16GB DDR4', '1TB SSD', '17.3in'),
(5, 'Intel Core i7 - 13620H 2.4GHz', 'NVIDIA GeForce RTX 4060 8G GDDR6', '32GB DDR4', '1T SSD', '15.6in'),
(6, 'Intel Core i9 - 13980HX 2.2 - 5.6GHz', 'NVIDIA GeForcee RTX 4080 GDDR6', '32GB DDR4', '1TB SSD', '17.3in'),
(7, 'Intel Core i9 - 13980HX 2.2 - 5.6GHz', 'NVIDIA GeForce RTX 4090 GDDR6', '32GB DDR5', '2TB SSD', '17.3in'),
(8, 'AMD Ryzen 5 7535U', 'AMD Radeon Graphics', '8GB DDR5', '256GB SSD', '13.3in'),
(9, 'Intel Core i7-1355U', 'Intel Iris Xe Graphics', '16GB DDR4', '512GB SSD', '15.6in'),
(10, 'Intel Core i7-13700H', 'Intel Iris Xe Graphics', '16GB DDR4', '512GB SSD', '17.3in'),
(11, 'Intel Core i5-1335U', 'Intel Iris XE Graphics', '16GB DDR4', '512GB SSD', '13.5in'),
(12, 'Intel Core i5-1335U', 'Intel Iris X Graphics', '16GB DDR4', '1TB SSD', '15.6in'),
(13, 'Intel Core i7-13700H', 'Intel Iris X Graphics', '16GB DDR4', '512GB SSD', '17.3in'),
(14, 'AMD Ryzen 3 7330U', 'Radeon 71C19AV', '8GB DDR4', '512GB SSD', '13.3in'),
(15, 'Intel Core i9-13900H', 'NVIDIA GeForce RTX 4060 8GB GDDR6', '32GB DDR5', '1TB SSD', '15.6in'),
(16, 'AMD Ryzen 9 7940HS', 'NVIDIA GeForce RTX 4080 12G GDDR6', '16GB DDR5', '1TB SSD', '14in'),
(17, 'AMD Ryzen 9 7945HX', 'NVIDIA GeForce RTX 4080 12GB GDDR6', '16GB DDR5', '1TB SSD', '16in'),
(18, 'Intel Core i9-13980HX', 'NVIDIA GeForce RTX 4090 16GB GDDR6', '32GB DDR5', '1TB + 1TB SSD', '18in'),
(19, 'Intel Celeron N4500 Dual Core', 'Intel UHD Graphics', '4GB', '64GB Flash Memory', '15.6in'),
(20, 'Intel Core i3-1115G4', 'Intel UHD Graphics', '8GB', '128GB  SSD', '14in'),
(21, 'AMD Ryzen 7', 'AMD Radeon™ Graphics', '16 GB LPDDR5', '512 GB', '14in'),
(22, 'Intel® Core™ i7-13700H', 'NVIDIA® GeForce RTX™ 4050', '16 GB DDR5', '512 GB SSD', '17.3in'),
(23, 'Intel® Core™ i7', 'Intel® Iris® Xe Graphics', '16 GB LPDDR5', '512 GB SSD', '13.4in'),
(24, 'AMD Ryzen™ 7', 'AMD Radeon™ Graphics', '16 GB DDR4', '1 TB SSD', '15.6in'),
(25, 'AMD Ryzen™ 5', 'NVIDIA® GeForce RTX™ 4050', '16 GB DDR4', '512 GB SSD', '16.1in'),
(26, 'Intel® Core™ i9', 'NVIDIA® GeForce RTX™ 4070', '32GB DDR5', '1TB SSD', '16in'),
(27, 'Intel Core™ i5', 'Intel® Iris® Xe graphics', '16GB LPDDR4X', '512GB SSD', '13.4in');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_ID` int NOT NULL,
  `first_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `last_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `user_name` varchar(100) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_ID`, `first_name`, `last_name`, `email`, `password`, `user_name`) VALUES
(1, '', '', 'j.smith@mail.com', 'johnsmith123!', 'ImJohnSmith');

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `review_ID` int NOT NULL,
  `first_name` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `last_name` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `rating` int COLLATE utf8mb4_general_ci NOT NULL,
  `comments` text COLLATE utf8mb4_general_ci NOT NULL,
  `submission_date` TIMESTAMP DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `reviews` (`reviews_ID`, `first_name`, `last_name`, `email`, `rating`, `comment`) VALUES
(1, 'John', 'Smith', 'j.smith@mail.com', '4', 'Great app for those who are not good with computers!');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `desktop`
--
ALTER TABLE `desktop`
  ADD PRIMARY KEY (`desktop_id`),
  ADD KEY `desktop_pl_id_fk` (`desktop_pl_id`) USING BTREE;

--
-- Indexes for table `desktop_partlist`
--
ALTER TABLE `desktop_partlist`
  ADD PRIMARY KEY (`desktop_pl_id`);

--
-- Indexes for table `laptop`
--
ALTER TABLE `laptop`
  ADD PRIMARY KEY (`laptop_id`),
  ADD KEY `part_list_id_fk` (`laptop_pl_id`);

--
-- Indexes for table `laptop_partlist`
--
ALTER TABLE `laptop_partlist`
  ADD PRIMARY KEY (`laptop_pl_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_ID`);
  
--
-- Indexes for table `reviews`
--

ALTER TABLE `reviews`
  ADD PRIMARY KEY (`review_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `desktop`
--
ALTER TABLE `desktop`
  MODIFY `desktop_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `desktop_partlist`
--
ALTER TABLE `desktop_partlist`
  MODIFY `desktop_pl_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `laptop`
--
ALTER TABLE `laptop`
  MODIFY `laptop_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `laptop_partlist`
--
ALTER TABLE `laptop_partlist`
  MODIFY `laptop_pl_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
  
--
-- AUTO_INCREMENT for table `reviews`
--

ALTER TABLE `reviews`
  MODIFY `review_ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `desktop`
--
ALTER TABLE `desktop`
  ADD CONSTRAINT `desktop_ibfk_1` FOREIGN KEY (`desktop_pl_id`) REFERENCES `desktop_partlist` (`desktop_pl_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `laptop`
--
ALTER TABLE `laptop`
  ADD CONSTRAINT `laptop_ibfk_1` FOREIGN KEY (`laptop_pl_id`) REFERENCES `laptop_partlist` (`laptop_pl_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

--
-- Adding image_path column for desktop table
--

ALTER TABLE `desktop` ADD COLUMN `image_path` VARCHAR(250) COLLATE utf8mb4_general_ci;

--
-- Adding image_path column for laptop table
--

ALTER TABLE `laptop` ADD COLUMN `image_path` VARCHAR(250) COLLATE utf8mb4_general_ci;

--
-- Update statements for desktop images
--

UPDATE `desktop` SET `image_path` = 'images/desktops/desktop1.png' WHERE `desktop_id` = 1;
UPDATE `desktop` SET `image_path` = 'images/desktops/desktop2.png' WHERE `desktop_id` = 2;
UPDATE `desktop` SET `image_path` = 'images/desktops/desktop3.png' WHERE `desktop_id` = 3;
UPDATE `desktop` SET `image_path` = 'images/desktops/desktop4.png' WHERE `desktop_id` = 4;
UPDATE `desktop` SET `image_path` = 'images/desktops/desktop5.png' WHERE `desktop_id` = 5;
UPDATE `desktop` SET `image_path` = 'images/desktops/desktop6.png' WHERE `desktop_id` = 6;
UPDATE `desktop` SET `image_path` = 'images/desktops/desktop7.png' WHERE `desktop_id` = 7;
UPDATE `desktop` SET `image_path` = 'images/desktops/desktop8.png' WHERE `desktop_id` = 8;
UPDATE `desktop` SET `image_path` = 'images/desktops/desktop9.png' WHERE `desktop_id` = 9;
UPDATE `desktop` SET `image_path` = 'images/desktops/desktop10.png' WHERE `desktop_id` = 10;
UPDATE `desktop` SET `image_path` = 'images/desktops/desktop11.png' WHERE `desktop_id` = 11;
UPDATE `desktop` SET `image_path` = 'images/desktops/desktop12.png' WHERE `desktop_id` = 12;
UPDATE `desktop` SET `image_path` = 'images/desktops/desktop13.png' WHERE `desktop_id` = 13;
UPDATE `desktop` SET `image_path` = 'images/desktops/desktop14.png' WHERE `desktop_id` = 14;
UPDATE `desktop` SET `image_path` = 'images/desktops/desktop15.png' WHERE `desktop_id` = 15;
UPDATE `desktop` SET `image_path` = 'images/desktops/desktop16.png' WHERE `desktop_id` = 16;
UPDATE `desktop` SET `image_path` = 'images/desktops/desktop17.png' WHERE `desktop_id` = 17;
UPDATE `desktop` SET `image_path` = 'images/desktops/desktop18.png' WHERE `desktop_id` = 18;
UPDATE `desktop` SET `image_path` = 'images/desktops/desktop19.png' WHERE `desktop_id` = 19;
UPDATE `desktop` SET `image_path` = 'images/desktops/desktop20.png' WHERE `desktop_id` = 20;
UPDATE `desktop` SET `image_path` = 'images/desktops/desktop21.png' WHERE `desktop_id` = 21;
UPDATE `desktop` SET `image_path` = 'images/desktops/desktop21.png' WHERE `desktop_id` = 22;

--
-- Update statements for laptop images
--

UPDATE `laptop` SET `image_path` = 'images/laptops/laptop1.png' WHERE `laptop_id` = 1;
UPDATE `laptop` SET `image_path` = 'images/laptops/laptop2.png' WHERE `laptop_id` = 2;
UPDATE `laptop` SET `image_path` = 'images/laptops/laptop3.png' WHERE `laptop_id` = 3;
UPDATE `laptop` SET `image_path` = 'images/laptops/laptop4.png' WHERE `laptop_id` = 4;
UPDATE `laptop` SET `image_path` = 'images/laptops/laptop5.png' WHERE `laptop_id` = 5;
UPDATE `laptop` SET `image_path` = 'images/laptops/laptop6.png' WHERE `laptop_id` = 6;
UPDATE `laptop` SET `image_path` = 'images/laptops/laptop7.png' WHERE `laptop_id` = 7;
UPDATE `laptop` SET `image_path` = 'images/laptops/laptop8.png' WHERE `laptop_id` = 8;
UPDATE `laptop` SET `image_path` = 'images/laptops/laptop9.png' WHERE `laptop_id` = 9;
UPDATE `laptop` SET `image_path` = 'images/laptops/laptop10.png' WHERE `laptop_id` = 10;
UPDATE `laptop` SET `image_path` = 'images/laptops/laptop11.png' WHERE `laptop_id` = 11;
UPDATE `laptop` SET `image_path` = 'images/laptops/laptop12.png' WHERE `laptop_id` = 12;
UPDATE `laptop` SET `image_path` = 'images/laptops/laptop13.png' WHERE `laptop_id` = 13;
UPDATE `laptop` SET `image_path` = 'images/laptops/laptop14.png' WHERE `laptop_id` = 14;
UPDATE `laptop` SET `image_path` = 'images/laptops/laptop15.png' WHERE `laptop_id` = 15;
UPDATE `laptop` SET `image_path` = 'images/laptops/laptop16.png' WHERE `laptop_id` = 16;
UPDATE `laptop` SET `image_path` = 'images/laptops/laptop17.png' WHERE `laptop_id` = 17;
UPDATE `laptop` SET `image_path` = 'images/laptops/laptop18.png' WHERE `laptop_id` = 18;
UPDATE `laptop` SET `image_path` = 'images/laptops/laptop19.png' WHERE `laptop_id` = 19;
UPDATE `laptop` SET `image_path` = 'images/laptops/laptop20.png' WHERE `laptop_id` = 20;
UPDATE `laptop` SET `image_path` = 'images/laptops/laptop21.png' WHERE `laptop_id` = 21;
UPDATE `laptop` SET `image_path` = 'images/laptops/laptop22.png' WHERE `laptop_id` = 22;
UPDATE `laptop` SET `image_path` = 'images/laptops/laptop23.png' WHERE `laptop_id` = 23;
UPDATE `laptop` SET `image_path` = 'images/laptops/laptop24.png' WHERE `laptop_id` = 24;
UPDATE `laptop` SET `image_path` = 'images/laptops/laptop25.png' WHERE `laptop_id` = 25;
UPDATE `laptop` SET `image_path` = 'images/laptops/laptop26.png' WHERE `laptop_id` = 26;
UPDATE `laptop` SET `image_path` = 'images/laptops/laptop27.png' WHERE `laptop_id` = 27;


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
