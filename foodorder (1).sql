-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 24, 2022 at 09:31 AM
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
  `id` int(11) NOT NULL,
  `Name` varchar(250) NOT NULL,
  `Email` varchar(250) NOT NULL,
  `Mobile` varchar(250) NOT NULL,
  `Subject` varchar(250) NOT NULL,
  `Message` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `Name`, `Email`, `Mobile`, `Subject`, `Message`) VALUES
(1, 'yash', 'yash123@gmail.com', '9000098765', 'cakes', 'hi the cake was awesome');

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
('lishika', 'Lishika_K', 'lishika123@gmail.com', '1234567891', 'bengalore', '123456'),
('lohit', 'lohit', 'lohit123@gmail', '1234567891', 'bengalore', '123456'),
('summi', 'sumith', 'sumith@gmail.com', '1234567894', 'svauy', 'summi'),
('yash', 'Yashas_s', 'yashas0505@gmail.com', '9739915858', 'anekal', 'yash'),
('yashas', 'yasu', 'yash123@gmail', '1234567897', 'anekal', '123456');

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
(1, 'Red Velvet Cheese Cake', 999, 'Signature red velvet sponge layered with velvety cream cheese and finished off with a touch of red cocoa butter. Cake fit for a sumptuous affair.', 1, 'images/Red Velvet.jpg', 'ENABLE'),
(2, 'Chocolate Truffle Cake', 725, 'Chocolate truffle torte is layered with rich moist chocolate sponge for a dazzling chocolate experience finished with 100% chocolate glaze. ', 1, 'images/chocolate tuffle cake.jpg', 'ENABLE'),
(3, 'Lite Chocolate Cake', 725, 'Light indulgence to feed your heart for the conscious connoisseur.', 1, 'images/Lite_Chocolate.jpg', 'ENABLE'),
(4, 'White Forest Cake', 550, 'Elegant, simple and delicious. This spin on the classic Black Forest cake takes the white chocolate experience to a whole new level.', 1, 'images/white-forest.jpg', 'ENABLE'),
(5, 'Black Forest Cake', 550, 'Rich chocolate sponge filled with American sour cherries & topped off with a generous amount of dark chocolate shavings.', 1, 'images/Black_forest.jpg', 'ENABLE'),
(6, 'Irish Coffee Cake', 725, 'Indulge in the best of both worlds and slake your desire for the perfect blend of Irish coffee cake.', 1, 'images/Irish Coffee Cake.jpg', 'ENABLE'),
(7, 'Butter Scotch Cake', 725, 'The unique caramel butterscotch themselves create a dream-like sensation to infuse euphoria. ', 1, 'images/Butter Scotch Cake.jpg', 'ENABLE'),
(8, 'Choco Hazelnut Cake', 1500, 'Our signature creation made with premium Belgian chocolate, complemented by crunch of California almonds & hazelnut praline. ', 1, 'images/Choco Hazelnut Cake .jpg', 'DISABLE'),
(9, 'Paneer123', 85, 'ggvkcwevkcuwav', 1, 'images/paneer pakora.jpg', 'DISABLE'),
(10, 'Blueberry Cake', 725, 'The velvety, deep-blue colors of luscious berries are primed to sooth blues of the heart.', 1, 'images/Blueberry Cake.jpg', 'ENABLE'),
(11, 'Red Velvet Choco Raspberry Cake', 1005, 'Signature red sponge with red cocoa for your sumptuous affair. Pure Belgian chocolate ganache with a hint of raspberry spread between layers of chocolate and red velvet sponges.', 1, 'images/Red Velvet Choco Raspberry Cake.jpg', 'ENABLE'),
(12, 'Strawberry Vanilla Chocolate Cake', 725, 'A signature flavor of strawberry vanilla and chocolate for a relishing experience for your palette.', 1, 'images/Strawberry Vanilla Chocolate Cake.jpg', 'ENABLE'),
(13, 'Chocolat-Pull Me Up Cake', 1500, 'The classic chocolate cake with a delightful twist of flowing belgian chocolate sauce!', 1, 'images/Chocolat-Pull Me Up Cake.jpg', 'ENABLE'),
(14, 'Apple Strawberry Cake', 725, 'The strawberry flavor is definitely pronounced to break walls around the green apple.', 1, 'images/Apple Strawberry Cake.jpg', 'ENABLE'),
(15, 'Pizza', 200, 'Good and Tasty ', 1, 'Pizza.jpg', 'DISABLE'),
(16, 'French Fries', 60, 'Pure Veg and Tasty.', 1, 'frenchfries.jpg', 'DISABLE'),
(17, 'Pakora', 35, 'Pure Vegetable and Tasty.', 1, 'images/Pakora.jpg', 'DISABLE'),
(18, 'Red Heart Piñata Cake', 1500, 'Break open the fun with our yummy Piñata Cakes.Feel like royalty as you break open the golden dark chocolate heart-shaped shell and reveal our soft red velvet cake and butterscotch pearls. ', 1, 'images/Red Heart Piñata Cake.jpg', 'ENABLE'),
(19, 'Royal Framboise Cake', 1500, 'Rich chocolate parfait with raspberry puree and chocolate sponge for your royal savour.', 1, 'images/Royal Framboise Cake.jpg', 'ENABLE'),
(20, 'Toffeelicious-Pull Me Up Cake', 1600, 'Butterscotch Pull me up Cake\r\nThe unique caramel butterscotch cake gets even more exciting with a dash of lip-smacking toffee sauce!', 1, 'images/Toffeelicious-Pull Me Up Cake.jpg', 'ENABLE'),
(21, 'Classic NEW YORK Caramel Baked Cheese Cake', 1300, 'A creamy dessert at the end of the meal is exactly what you need! Check out our Butterscotch Cheesecake crafted with a rich and creamy cream cheese layers topped with the buttery caramel sauce!', 1, 'images/Classic NEW YORK Caramel Baked Cheese Cake.jpg', 'ENABLE'),
(22, 'Assorted Doughnuts (Box Of 6)', 570, 'Sink your teeth in our soft and sinful doughnuts with our Assorted Doughnuts Box! We are ready to tempt you with flavours like creamy chocolate, Blueberry & White Chocolate, Milk Chocolate & Praline, Honey Cinnamon, Strawberry & Chocolate and lastly the classic White Chocolate with sprinkles! ', 1, 'images/Assorted Doughnuts (Box Of 6).jpg', 'ENABLE'),
(23, 'Assorted Brownies Pack Of 6 ', 900, 'The Classic  Brownies are ultra-rich, moist, chewy, chocolaty and guess what it\'s completely EGGLESS.\r\n\r\nWalnut Fudgy Brownie | Belgian Fudgy Brownie | Hazelnut Fudgy Brownie | Lemon Raspberry Streusel Brownie | Peanut Butter Brownie | Red Velvet Brownie', 1, 'images/Assorted Brownies Pack Of 6.jpg', 'ENABLE'),
(24, 'Assorted Cupcakes (Box Of 12)', 999, 'Assorted Chocolate Cupcakes Box :\r\n\r\n2 Choco Oreo + 2 Choco KitKat + 1 Choco Strawberry + 1 Choco Hazelnut\r\n\r\nAssorted Berry\'s Cupcakes Box :\r\n\r\n2 Strawberry + 2 Blueberry + 2 Key Lime Raspberry\r\n\r\nAssorted Special Cupcakes Box :\r\n\r\n1 Choco Oreo + 1 Choco Kitkat + 1 Choco Hazelnut + 1 Banana Caramel + 1 Blueberry + 1 KeyLime Raspberry', 1, 'images/Assorted Cupcakes (Box Of 12).jpg', 'ENABLE'),
(25, 'Chocolate Macarons (Pack Of 6)', 330, 'Chocolate Macarons(contains egg)', 1, 'images/Chocolate Macarons.jpg', 'ENABLE');

--
-- Triggers `food`
--
DELIMITER $$
CREATE TRIGGER `food_Update` BEFORE UPDATE ON `food` FOR EACH ROW INSERT INTO logs SET F_ID = OLD.F_ID, action = 'UPDATED'
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `food_delete` BEFORE DELETE ON `food` FOR EACH ROW INSERT INTO logs SET F_ID = OLD.F_ID, action = 'DELETED'
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `id` int(11) NOT NULL,
  `F_ID` int(11) NOT NULL,
  `action` varchar(20) NOT NULL,
  `cdate` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `logs`
--

INSERT INTO `logs` (`id`, `F_ID`, `action`, `cdate`) VALUES
(1, 30, 'DELETED', '2022-01-19 14:15:32'),
(2, 9, 'UPDATED', '2022-01-19 14:25:11');

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
(1, 1, 'Red Velvet Cheese Cake', 999, 1, '2022-01-15', 'yash', 1),
(2, 2, 'Chocolate Truffle Cake', 725, 1, '2022-01-15', 'yash', 1),
(3, 3, 'Lite Chocolate Cake', 725, 1, '2022-01-15', 'yash', 1),
(4, 3, 'Lite Chocolate Cake', 725, 1, '2022-01-15', 'yash', 1),
(5, 1, 'Red Velvet Cheese Cake', 999, 1, '2022-01-16', 'yash', 1),
(6, 1, 'Red Velvet Cheese Cake', 999, 1, '2022-01-18', 'yash', 1),
(7, 2, 'Chocolate Truffle Cake', 725, 1, '2022-01-18', 'yash', 1);

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
(1, 'Cake Shop', 'yashas0505@gmail.com', '9739915858', 'anekal', 'yash');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `food`
--
ALTER TABLE `food`
  MODIFY `F_ID` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_ID` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `restaurants`
--
ALTER TABLE `restaurants`
  MODIFY `R_ID` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
