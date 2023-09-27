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