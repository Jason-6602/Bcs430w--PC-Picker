-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
--
-- Host: localhost
-- Generation Time: Sep 26, 2023 at 11:36 PM
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
  `url` varchar(250) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Dumping data for table 'desktop'
--

-- --------------------------------------------------------
INSERT INTO desktop (`desktop_ID`, `make`, `name`, `price`, `partList_ID`, `category`, `url`) VALUES
(1, 'Dell', 'Inspiron 3020 Desktop', 769.99, 1, 'Desktop', 'https://www.dell.com/en-us/shop/desktop-computers/inspiron-desktop/spd/inspiron-3020-desktop'),
(2, 'HP', 'Pavilion Desktop TP01-3025t', 699.99, 2, 'Desktop', 'https://www.hp.com/us-en/shop/pdp/hp-pavilion-desktop-tp01-3025t-bundle-pc'),
(3, 'Alienware', 'Aurora R16 Gaming Desktop', 1299.99, 3, 'Desktop', 'https://www.dell.com/en-us/shop/desktop-computers/alienware-aurora-r16-gaming-desktop/spd/alienware-aurora-r16-desktop'),
(4, 'Lenovo', 'ThinkStation P620 Workstation', 1619.00, 4, 'Desktop', 'https://www.lenovo.com/us/en/p/workstations/thinkstation-p-series/thinkstation-p620/wmd00000429'),
(5, 'Acer', 'Aspire XC-840-UB11 Desktop', 399.99, 5, 'Desktop', 'https://www.acer.com/us-en/desktops-and-all-in-ones/aspire-classic-desktops/aspire-xc/pdp/DT.BJEAA.001'),
(6, 'ASUS', 'ASUS ExpertCenterD5 SFF', 799.99, 6, 'Desktop', 'https://www.asus.com/us/displays-desktops/tower-pcs/expertcenter/expertcenter-d5-sff-d500sd'),
(7, 'Acer', 'Aspire C27-1700 All-in-One', 899.99, 7, 'Desktop', 'https://www.acer.com/us-en/desktops-and-all-in-ones/aspire-all-in-ones/aspire-c27/pdp/DQ.BK3AA.001'),
(8, 'Lenovo', 'IdeaCentre 5i Desktop', 759.99, 8, 'Desktop', 'https://www.lenovo.com/us/en/p/desktops/ideacentre/500-series/ideacentre-5i-gen-8-(14l-intel)/len102d0029'),
(9, 'MSI', 'Trident 3 SFF', 1329.99, 9, 'Desktop', 'https://www.msi.com/Desktop/MPG-Trident-3-12th'),
(10, 'HP', 'Z2 Tower G9 Workstation', 1299.99, 10, 'Desktop', 'https://www.hp.com/us-en/workstations/z2-tower-configure.html'),
(11, 'Dell', 'XPS Pro', 1609.99, 11, 'Desktop', 'https://www.dell.com/en-us/shop/desktop-computers/new-xps-desktop/spd/xps-8960-desktop/usexpstpcto8960rpl04'),
(12, 'ASUS', 'ExpertCenter D500SA', 499.99, 12, 'Desktop', 'https://www.asus.com/us/commercial-desktop/expertcenter-d5-sff-d500sa/'),
(13, 'CyberPowerPC', 'Gamer Xtreme VR Gaming PC', 1785.00, 13, 'Desktop', 'https://www.cyberpowerpc.com/system/Gaming-PC-Xtreme-XT'),
(14, 'Zotac', 'ZBOX edge MI 668', 299.99, 14, 'Desktop', 'https://www.zotac.com/product/mini_pcs/zbox-edge-mi668-barebone'),
(15, 'Acer', 'Aspire XC-1780-UR11', 499.99, 15, 'Desktop', 'https://www.acer.com/us-en/desktops-and-all-in-ones/aspire-classic-desktops/aspire-xc/pdp/DT.BKAAA.001'),
(16, 'Lenovo', 'Legion Tower 7i Gen 8', 1819.99, 16, 'Desktop', 'https://www.lenovo.com/us/en/p/desktops/legion-desktops/legion-t-series-towers/legion-tower-7i-gen-8-(34l-intel)/len102g0007'),
(17, 'Alienware', 'Aurora Ryzen Edition R15', 1549.99, 17, 'Desktop', 'https://www.dell.com/en-us/shop/desktop-computers/alienware-aurora-r15-gaming-desktop/spd/alienware-aurora-r15-amd-desktop/wdr15amd20h'),
(18, 'Lenovo', 'ThinkStation P3 Ultra', 1159.00, 18, 'Desktop', 'https://www.lenovo.com/us/en/p/workstations/thinkstation-p-series/thinkstation-p3-ultra-workstation/len102s0014'),
(19, 'HP', 'EliteOne 870 G9', 1499.00, 'PD0021', 19, 'Desktop', 'https://www.hp.com/us-en/shop/pdp/hp-eliteone-870-g9-all-in-one-pc-wolf-pro-security-edition-p-89p61ua-aba-1'),
(20, 'Dell', 'Inspiron Small Desktop', 549.99, 20, 'Desktop', 'https://www.dell.com/en-us/shop/desktop-computers/inspiron-small-desktop/spd/inspiron-3020-small-desktop/useishbts3020gcrg');

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
(11, 'Intel® Core™ i7-13700', 'NVIDIA GeForce RTX 4060TI', '16B DDR5', '512TB NVMe SSD', 'Mid Tower'),
(12, 'Intel Core i5-10400', 'Intel UHD Graphics 630', '8GB DDR4', '512GB SSD', 'Mid Tower'),
(13, 'Intel Core i7-13700K', 'NVIDIA GeForce RTX 4060TI', '32GB DDR5', '2TB NVMe SSD', 'Full Tower'),
(14, 'Intel Core i7-1360P', 'Intel Iris Xe Graphics', '8GB DDR4', '512GB SSD', 'Small Form Factor'),
(15, 'Intel Core i3-13100', 'Intel UHD Graphics 730', '8GB DDR4', '512GB SSD', 'Mid Tower'),
(16, 'Intel® Core™ i7-13700KF', 'NVIDIA GeForce RTX 4070TI', '16GB DDR5', '1TB NVMe SSD', 'Mid Tower'),
(17, 'AMD Ryzen 7 7700', 'NVIDIA GeForce RTX 3060', '16GB DDR4', '512GB SSD', 'Small Form Factor'),
(18, 'Intel Core i5-13600', 'Intel UHD Graphics 770', '16GB DDR5', '512GB SSD', 'Small Form Factor'),
(19, 'Intel Core™i7-13700', 'Intel UHD Graphics 770', '16GB DDR4', '512GB SSD', 'All-in-One'),
(20, 'Intel Core i5-13400', 'Intel UHD Graphics 730', '8GB DDR4', '512GB SSD', 'Small Form Factor');

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
(1, 'MSI', 'GF63 Thin 11UCX-1424 15.6', 700.00, 1, 'Gaming Laptop', 'https://us-store.msi.com/Laptops/Gaming-Series/GF63-Thin11UCX-1424?sort=p.price&order=ASC'),
(2, 'MSI', 'Katana GF76 12UE-037 17.3', 1500.00, 2, 'Gaming Laptop', 'https://us-store.msi.com/Laptops/Gaming-Series/Katana-GF76-12UE-037?filter=6&sort=p.price&order=ASC'),
(3, 'MSI', 'Katana GF66 11UE-1002 15.6', 1250.00, 3, 'Gaming Laptop', 'https://us-store.msi.com/Laptops/Gaming-Series/Katana-GF66-11UE-1002?filter=27%2C23%2C4&sort=p.price&order=ASC'),
(4, 'MSI', 'Stealth GS77 12UE-046 17.3', 1450.00, 4, 'Gaming Laptop', 'https://us-store.msi.com/Laptops/Gaming-Series/Stealth-GS77-12UE-046?filter=27%2C23%2C6&sort=p.price&order=ASC'),
(5, 'MSI', 'Pulse 15 B13VFK-1263 15.6', 1500.00, 5, 'Gaming Laptop', 'https://us-store.msi.com/Laptops/Gaming-Series/Pulse-15-B13VFK-1263?filter=112%2C4&sort=p.price&order=ASC'),
(6, 'MSI', 'Raider GE78HX 13VH-438 17.3', 2600.00, 6, 'Gaming Laptop', 'https://us-store.msi.com/Laptops/Gaming-Series/Raider-GE78HX-13VH-438?filter=112%2C6'),
(7, 'MSI', 'Raider GE78HX 13VI-079 17.3', 3800.00, 7, 'Gaming Laptop', 'https://us-store.msi.com/Laptops/Gaming-Series/Raider-GE78-HX-13VI-079US?filter=112%2C6'),
(8, 'HP', 'Pavilion Aero', 580.00, 8, 'Student Laptop', 'https://www.amazon.com/HP-Pavilion-Laptop-Display-Windows/dp/B09RGHDK1F?source=ps-sl-shoppingads-lpcontext&ref_=fplfs&psc=1&smid=A3QR4864ATM9Z9'),
(9, 'HP', 'ENVY x360 2-in-1 Laptop 15t-fe000', 800.00, 9, 'Student Laptop', 'https://www.hp.com/us-en/shop/pdp/hp-envy-x360-2-in-1-laptop-15t-fe000-156-77x87av-1'),
(10, 'HP', 'Envy Laptop 17t', 900.00, 10, 'Student Laptop', 'https://www.hp.com/us-en/shop/pdp/hp-envy-laptop-17t-cw000-173-761z2av-1'),
(11, 'HP', 'Spectre x360 2-in-1 Laptop 14t-ef200', 1000.00, 11, 'Student Laptop', 'https://www.hp.com/us-en/shop/pdp/hp-spectre-x360-2-in-1-laptop-14t-ef200-135-771x5av-1'),
(12, 'HP', 'Envy x360 2-in-1 Laptop 15-ew1047nr', 1150.00, 12, 'Student Laptop', 'https://www.hp.com/us-en/shop/pdp/hp-envy-x360-2-in-1-laptop-15-ew1047nr'),
(13, 'HP', 'Envy Laptop 17-cr1087nr', 1250.00, 13, 'Student Laptop', 'https://www.hp.com/us-en/shop/pdp/hp-envy-laptop-17-cr1087n'),
(14, 'HP', 'Pro x360 435 G10 Notebook PC', 1691.00, 14, 'Student Laptop', 'https://www.hp.com/us-en/shop/pdp/hp-pro-x360-435-g10-notebook-pc-customizable-71c19av-mb#techSpecs'),
(15, 'Dell', ' XPS 15 i9, 2799.00', 2799.00, 15, 'Student Laptop', 'https://www.dell.com/en-us/shop/dell-laptops/xps-15-laptop/spd/xps-15-9530-laptop/usexchbts9530ggqh'),
(16, 'ASUS', 'ROG Zephyrus G14', 2500.00, 16, 'Streaming/VR Laptop', 'https://rog.asus.com/us/laptops/rog-zephyrus/rog-zephyrus-g14-2023-series/spec/'),
(17, 'ASUS', 'ROG Zephyrus Duo 16', 3499.00, 17, 'Streaming/VR Laptop', 'https://rog.asus.com/us/laptops/rog-zephyrus/rog-zephyrus-duo-16-2023-series/spec/'),
(18, 'ASUS', 'ROG Strix SCAR 18', 3900.00, 18, 'Streaming/VR Laptop', 'https://rog.asus.com/us/laptops/rog-strix/rog-strix-scar-18-2023-series/spec/'),
(19, 'Acer', 'Chromebook 315', 250.00, 19, 'Chromebook', 'https://store.acer.com/en-us/acer-chromebook-315-cb315-4h-c2e4'),
(20, 'Asus', 'Chromebook Flip CX5', 700.00, 20, 'Chromebook', 'https://shop.asus.com/us/asus-chromebook-flip-cx5-cx5400.html');

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
(3, 'Intel Core i7 - 11800H 2.4GHz', 'NVIDIA GeForce RTX 3060 6G GDDR6', '16GB DDR4 ', '1TB SSD', '15in'),
(4, 'Intel Core i7 - 12700H 1.7GHz', 'NVIDIA GeForce RTX 3060 6GB GDDR6', '16GB DDR4', '1TB SSD', '17in'),
(5, 'Intel Core i7 - 13620H 2.4GHz', 'NVIDIA GeForce RTX 4060 8G GDDR6', '32GB DDR4', '1T SSD', '15in'),
(6, 'Intel Core i9 - 13980HX 2.2 - 5.6GHz', 'NVIDIA GeForcee RTX 4080 GDDR6', '32GB DDR4', '1TB SSD', '17in'),
(7, 'Intel Core i9 - 13980HX 2.2 - 5.6GHz', 'NVIDIA GeForce RTX 4090 GDDR6', '32GB DDR5', '2TB SSD', '17in'),
(8, 'AMD Ryzen 5 7535U', 'AMD Radeon Graphics', '16GB DDR5', '256GB SSD', '13in'),
(9, 'Intel Core i7-1355U', 'Intel Iris Xe Graphics', '16GB DDR4', '512GB SSD', '15in'),
(10, 'Intel Core i7-13700H', 'Intel Iris Xe Graphics', '16GB DDR4', '512GB SSD', '17in'),
(11, 'Intel Core i5-1335U', 'Intel Iris XE Graphics', '16GB DDR4', '512GB SSD', '13in'),
(12, 'Intel Core i5-1335U', 'Intel Iris X Graphics', '16GB DDR4', '1TB SSD', '15in'),
(13, 'Intel Core i7-13700H', 'Intel Iris X Graphics', '16GB DDR4', '512GB SSD', '17in'),
(14, 'AMD Ryzen 3 7330U', 'Radeon 71C19AV', '8GB DDR4', '512GB SSD', '13in'),
(15, 'Intel Core i9-13900H', 'NVIDIA GeForce RTX 4060 8GB GDDR6', '32GB DDR5', '1TB SSD', '15in'),
(16, 'AMD Ryzen 9 7940HS', 'NVIDIA GeForce RTX 4080 12G GDDR6', '16GB DDR5', '1TB SSD', '14in'),
(17, 'AMD Ryzen 9 7945HX', 'NVIDIA GeForce RTX 4080 12GB GDDR6', '16GB DDR5', '1TB SSD', '16in'),
(18, 'Intel Core i9-13980HX', 'NVIDIA GeForce RTX 4090 16GB GDDR6', '32GB DDR5', '1TB + 1TB SSD', '18in'),
(19, 'Intel Celeron N4500 Dual Core', 'Intel UHD Graphics', '4GB', '64GB Flash Memory', '15in'),
(20, 'Intel Core i3-1115G4', 'Intel UHD Graphics', '8GB', '128GB  SSD', '14in');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_ID` int NOT NULL,
  `first_name` char(50) COLLATE utf8mb4_general_ci NOT NULL,
  `last_name` int NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `user_name` varchar(100) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `desktop`
--
ALTER TABLE `desktop`
  ADD PRIMARY KEY (`desktop_id`),
  ADD KEY `desktop_pl_id` (`desktop_pl_id`);

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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `desktop`
--
ALTER TABLE `desktop`
  MODIFY `desktop_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `desktop_partlist`
--
ALTER TABLE `desktop_partlist`
  MODIFY `desktop_pl_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `laptop`
--
ALTER TABLE `laptop`
  MODIFY `laptop_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `laptop_partlist`
--
ALTER TABLE `laptop_partlist`
  MODIFY `laptop_pl_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_ID` int NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `desktop`
--
ALTER TABLE `desktop`
  ADD CONSTRAINT `desktop_ibfk_1` FOREIGN KEY (`desktop_pl_id`) REFERENCES `desktop_partlist` (`desktop_pl_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `desktop_partlist`
--
ALTER TABLE `desktop_partlist`
  ADD CONSTRAINT `desktop_partlist_ibfk_1` FOREIGN KEY (`desktop_pl_id`) REFERENCES `desktop` (`desktop_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `laptop`
--
ALTER TABLE `laptop`
  ADD CONSTRAINT `laptop_ibfk_1` FOREIGN KEY (`laptop_pl_id`) REFERENCES `laptop_partlist` (`laptop_pl_id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;