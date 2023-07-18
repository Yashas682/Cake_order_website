-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 15, 2022 at 05:37 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `foodorder`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `Name` varchar(250) NOT NULL,
  `Email` varchar(250) NOT NULL,
  `Mobile` varchar(250) NOT NULL,
  `Subject` varchar(250) NOT NULL,
  `Message` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`Name`, `Email`, `Mobile`, `Subject`, `Message`) VALUES
('CHANDAN KUMAR', 'ckj40856@gmail.com', '9487810674', 'sa', ''),
('CHANDAN KUMAR', 'ckj40856@gmail.com', '9487810674', 'sa', ''),
('BIRJU KUMAR', 'ckj40856@gmail.com', '8903079750', 'asd', 'asdasdasd'),
('CHANDAN KUMAR', 'ckj40856@gmail.com', '9487810674', 'asd', 'hfgdsfsx'),
('yashu', 'yash123@gmail.com', '1234567890', 'cakes', 'it was the best cake');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `username` varchar(30) NOT NULL,
  `fullname` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`username`, `fullname`, `email`, `contact`, `address`, `password`) VALUES
('birju', 'BIRJU KUMAR', 'bkm123r@gmail.com', '8903079750', 'Pondicherry University, SRK HOSTEL ROOM NUMBER-59,', 'Birju123@'),
('ckumar', 'CHANDAN KUMAR', 'ckj40856@gmail.com', '9487810674', 'Pondicherry University, SRK HOSTEL ROOM NUMBER-59,', 'Ckumar123@'),
('kav', 'kav', 'kav@gmail.com', '9087654321', 'bengalore', '123456'),
('mani', 'mani', 'mani123@gmail.com', '1234567890', 'bengalore', '123456'),
('nidha', 'nidha', 'nidha@gmail.com', '998696572', 'Maharashtra', 'suhail'),
('pratheek083', 'Pratheek Shiri', 'pratheek@gmail.com', '8779546521', 'Hyderabad', 'pratheek'),
('rakshithk00', 'Rakshith Kotian', 'rakshith@gmail.com', '9547123658', 'Gujarath', 'rakshith'),
('yash', 'Yashas_s', 'yashas0505@gmail.com', '9739915858', 'anekal', 'yash');

-- --------------------------------------------------------

--
-- Table structure for table `food`
--

CREATE TABLE `food` (
  `F_ID` int(30) NOT NULL,
  `name` varchar(50) NOT NULL,
  `price` int(30) NOT NULL,
  `description` varchar(500) NOT NULL,
  `R_ID` int(30) NOT NULL,
  `images_path` varchar(200) NOT NULL,
  `options` varchar(10) NOT NULL DEFAULT 'ENABLE'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `food`
--

INSERT INTO `food` (`F_ID`, `name`, `price`, `description`, `R_ID`, `images_path`, `options`) VALUES
(58, 'Red Velvet Cheese Cake', 999, 'Signature red velvet sponge layered with velvety cream cheese and finished off with a touch of red cocoa butter. Cake fit for a sumptuous affair.', 7, 'images/Red Velvet.jpg', 'ENABLE'),
(59, 'Chocolate Truffle Cake', 725, 'Chocolate truffle torte is layered with rich moist chocolate sponge for a dazzling chocolate experience finished with 100% chocolate glaze. ', 7, 'images/chocolate tuffle cake.jpg', 'ENABLE'),
(60, 'Lite Chocolate Cake', 725, 'Light indulgence to feed your heart for the conscious connoisseur.', 7, 'images/Lite_Chocolate.jpg', 'ENABLE'),
(61, 'White Forest Cake', 550, 'Elegant, simple and delicious. This spin on the classic Black Forest cake takes the white chocolate experience to a whole new level.', 7, 'images/white-forest.jpg', 'ENABLE'),
(62, 'Black Forest Cake', 550, 'Rich chocolate sponge filled with American sour cherries & topped off with a generous amount of dark chocolate shavings.', 7, 'images/Black_forest.jpg', 'ENABLE'),
(63, 'Irish Coffee Cake', 725, 'Indulge in the best of both worlds and slake your desire for the perfect blend of Irish coffee cake.', 7, 'images/Irish Coffee Cake.jpg', 'ENABLE'),
(65, 'Butter Scotch Cake', 725, 'The unique caramel butterscotch themselves create a dream-like sensation to infuse euphoria. ', 7, 'images/Butter Scotch Cake.jpg', 'ENABLE'),
(66, 'Choco Hazelnut Cake', 1500, 'Our signature creation made with premium Belgian chocolate, complemented by crunch of California almonds & hazelnut praline. ', 7, 'images/Choco Hazelnut Cake .jpg', 'DISABLE'),
(68, 'Paneer', 85, 'it', 7, 'images/paneer pakora.jpg', 'DISABLE'),
(69, 'Blueberry Cake', 725, 'The velvety, deep-blue colors of luscious berries are primed to sooth blues of the heart.', 7, 'images/Blueberry Cake.jpg', 'ENABLE'),
(70, 'Red Velvet Choco Raspberry Cake', 1005, 'Signature red sponge with red cocoa for your sumptuous affair. Pure Belgian chocolate ganache with a hint of raspberry spread between layers of chocolate and red velvet sponges.', 7, 'images/Red Velvet Choco Raspberry Cake.jpg', 'ENABLE'),
(71, 'Strawberry Vanilla Chocolate Cake', 725, 'A signature flavor of strawberry vanilla and chocolate for a relishing experience for your palette.', 7, 'images/Strawberry Vanilla Chocolate Cake.jpg', 'ENABLE'),
(72, 'Chocolat-Pull Me Up Cake', 1500, 'The classic chocolate cake with a delightful twist of flowing belgian chocolate sauce!', 7, 'images/Chocolat-Pull Me Up Cake.jpg', 'ENABLE'),
(73, 'Apple Strawberry Cake', 725, 'The strawberry flavor is definitely pronounced to break walls around the green apple.', 7, 'images/Apple Strawberry Cake.jpg', 'ENABLE'),
(74, 'Pizza', 200, 'Good and Tasty ', 2, 'Pizza.jpg', 'DISABLE'),
(75, 'French Fries', 60, 'Pure Veg and Tasty.', 2, 'frenchfries.jpg', 'DISABLE'),
(76, 'Pakora', 35, 'Pure Vegetable and Tasty.', 2, 'images/Pakora.jpg', 'DISABLE'),
(77, 'Red Heart Piñata Cake', 1500, 'Break open the fun with our yummy Piñata Cakes.Feel like royalty as you break open the golden dark chocolate heart-shaped shell and reveal our soft red velvet cake and butterscotch pearls. ', 7, 'images/Red Heart Piñata Cake.jpg', 'ENABLE'),
(78, 'Royal Framboise Cake', 1500, 'Rich chocolate parfait with raspberry puree and chocolate sponge for your royal savour.', 7, 'images/Royal Framboise Cake.jpg', 'ENABLE'),
(79, 'Toffeelicious-Pull Me Up Cake', 1600, 'Butterscotch Pull me up Cake\r\nThe unique caramel butterscotch cake gets even more exciting with a dash of lip-smacking toffee sauce!', 7, 'images/Toffeelicious-Pull Me Up Cake.jpg', 'ENABLE'),
(81, 'Classic NEW YORK Caramel Baked Cheese Cake', 1300, 'A creamy dessert at the end of the meal is exactly what you need! Check out our Butterscotch Cheesecake crafted with a rich and creamy cream cheese layers topped with the buttery caramel sauce!', 7, 'images/Classic NEW YORK Caramel Baked Cheese Cake.jpg', 'ENABLE');

-- --------------------------------------------------------

--
-- Table structure for table `manager`
--

CREATE TABLE `manager` (
  `username` varchar(30) NOT NULL,
  `fullname` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `manager`
--

INSERT INTO `manager` (`username`, `fullname`, `email`, `contact`, `address`, `password`) VALUES
('aditi068', 'Aditi Naik', 'aditi@gmail.com', '8654751259', 'Goa', 'aditi'),
('aminnikhil073', 'Nikhil Amin', 'aminnikhil073@gmail.com', '9632587412', 'Karnataka', 'nikhil'),
('ckumar', 'Chandan Kumar', 'ckj40856@gmail.com', '9487810674', 'Pondicherry University, SRK HOSTEL ROOM NUMBER-59,', 'Ckumar123'),
('dhiraj', 'DHIRAJ kUMAR', 'dk123@gmail.com', '8903079750', 'Pondicherry. Le cafe', 'Dhiraj'),
('roshanraj07', 'Roshan Raj', 'roshan@gmail.com', '9541258761', 'Bihar', 'roshan'),
('yash', 'Yashas_s', 'yashas0505@gmail.com', '9739915858', 'anekal', 'yash');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_ID` int(30) NOT NULL,
  `F_ID` int(30) NOT NULL,
  `foodname` varchar(30) NOT NULL,
  `price` int(30) NOT NULL,
  `quantity` int(30) NOT NULL,
  `order_date` date NOT NULL,
  `username` varchar(30) NOT NULL,
  `R_ID` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_ID`, `F_ID`, `foodname`, `price`, `quantity`, `order_date`, `username`, `R_ID`) VALUES
(71, 59, 'Chocolate Truffle Cake', 500, 1, '2022-01-09', 'mani', 2),
(72, 60, 'Chocolate Hazelnut Truffle', 99, 1, '2022-01-09', 'mani', 3),
(73, 59, 'Chocolate Truffle Cake', 500, 1, '2022-01-09', 'mani', 2),
(74, 60, 'Chocolate Hazelnut Truffle', 99, 1, '2022-01-09', 'mani', 3),
(75, 59, 'Chocolate Truffle Cake', 500, 1, '2022-01-09', 'yash', 2),
(76, 58, 'Butterscotch Cake', 450, 1, '2022-01-09', 'yash', 1),
(77, 60, 'Lite Chocolate Cake', 725, 1, '2022-01-12', 'kav', 3),
(78, 72, 'Chocolat-Pull Me Up Cake', 1500, 1, '2022-01-12', 'kav', 2),
(79, 58, 'Red Velvet Cheese Cake', 999, 1, '2022-01-12', 'yash', 7),
(80, 59, 'Chocolate Truffle Cake', 725, 1, '2022-01-12', 'yash', 7),
(81, 79, 'Toffeelicious-Pull Me Up Cake', 1600, 1, '2022-01-12', 'yash', 7),
(82, 59, 'Chocolate Truffle Cake', 725, 1, '2022-01-12', 'yash', 7),
(83, 60, 'Lite Chocolate Cake', 725, 1, '2022-01-12', 'yash', 7),
(84, 61, 'White Forest Cake', 550, 1, '2022-01-12', 'yash', 7),
(85, 60, 'Lite Chocolate Cake', 725, 1, '2022-01-13', 'yash', 7),
(86, 61, 'White Forest Cake', 550, 1, '2022-01-13', 'yash', 7);

-- --------------------------------------------------------

--
-- Table structure for table `restaurants`
--

CREATE TABLE `restaurants` (
  `R_ID` int(30) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `contact` varchar(30) NOT NULL,
  `address` varchar(50) NOT NULL,
  `M_ID` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `restaurants`
--

INSERT INTO `restaurants` (`R_ID`, `name`, `email`, `contact`, `address`, `M_ID`) VALUES
(1, 'Nikhil\'s Restaurant', 'nikhil@restaurant.com', '7998562145', 'Karnataka', 'aminnikhil073'),
(2, 'Roshan\'s Restaurant', 'roshan@restaurant.com', '9887546821', 'Bihar', 'roshanraj07'),
(3, 'Aditi\'s Restaurant', 'aditi@restaurant.com', '7778564231', 'Goa', 'aditi068'),
(4, 'Food Exploria', 'ckj40856@gmail.com', '09487810674', 'C:\\xampp\\htdocs\\FoodExploria-master\\images/coffee.', 'ckumar'),
(6, 'Le Cafe', 'lecafepondi234@gmail.com', '9443369040', 'Pondicherry,rock beach Near,Le cafe', 'dhiraj'),
(7, 'Cake Shop', 'yashas0505@gmail.com', '9739915858', 'anekal', 'yash');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `food`
--
ALTER TABLE `food`
  ADD PRIMARY KEY (`F_ID`,`R_ID`),
  ADD KEY `R_ID` (`R_ID`);

--
-- Indexes for table `manager`
--
ALTER TABLE `manager`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_ID`),
  ADD KEY `F_ID` (`F_ID`),
  ADD KEY `username` (`username`),
  ADD KEY `R_ID` (`R_ID`);

--
-- Indexes for table `restaurants`
--
ALTER TABLE `restaurants`
  ADD PRIMARY KEY (`R_ID`),
  ADD UNIQUE KEY `M_ID_2` (`M_ID`),
  ADD KEY `M_ID` (`M_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `food`
--
ALTER TABLE `food`
  MODIFY `F_ID` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_ID` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `restaurants`
--
ALTER TABLE `restaurants`
  MODIFY `R_ID` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `food`
--
ALTER TABLE `food`
  ADD CONSTRAINT `food_ibfk_1` FOREIGN KEY (`R_ID`) REFERENCES `restaurants` (`R_ID`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`F_ID`) REFERENCES `food` (`F_ID`),
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`username`) REFERENCES `customer` (`username`),
  ADD CONSTRAINT `orders_ibfk_3` FOREIGN KEY (`R_ID`) REFERENCES `restaurants` (`R_ID`);

--
-- Constraints for table `restaurants`
--
ALTER TABLE `restaurants`
  ADD CONSTRAINT `restaurants_ibfk_1` FOREIGN KEY (`M_ID`) REFERENCES `manager` (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
