-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 04, 2024 at 04:36 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fire_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

CREATE TABLE `admin_login` (
  `admin_id` int(10) NOT NULL,
  `admin_nane` varchar(20) NOT NULL,
  `admin_email` varchar(20) NOT NULL,
  `admin_password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin_login`
--

INSERT INTO `admin_login` (`admin_id`, `admin_nane`, `admin_email`, `admin_password`) VALUES
(1, 'admin', 'admin@gmail.com', 'admin123');

-- --------------------------------------------------------

--
-- Table structure for table `cart_master`
--

CREATE TABLE `cart_master` (
  `cart_id` int(50) NOT NULL,
  `user_id` int(50) NOT NULL,
  `prod_id` int(150) NOT NULL,
  `order_qty` int(50) NOT NULL,
  `total_price` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart_master`
--

INSERT INTO `cart_master` (`cart_id`, `user_id`, `prod_id`, `order_qty`, `total_price`) VALUES
(2, 1, 1, 5, 50),
(3, 1, 1, 5, 50);

-- --------------------------------------------------------

--
-- Table structure for table `category_master`
--

CREATE TABLE `category_master` (
  `cat_id` int(15) NOT NULL,
  `cat_name` varchar(50) NOT NULL,
  `cat_description` varchar(2000) NOT NULL,
  `cat_photo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category_master`
--

INSERT INTO `category_master` (`cat_id`, `cat_name`, `cat_description`, `cat_photo`) VALUES
(1, 'Firefighter Gloves', 'Firefighter gloves are a crucial piece of personal protective equipment (PPE) designed to provide protection, grip, and dexterity for firefighters in various emergency situations. Made from heavy-duty materials like leather, Kevlar, or Nomex, these gloves offer heat resistance, cut protection, and insulation against extreme temperatures.', 'cat_image/firefighter gloves.jpg'),
(2, 'Fire Suit', 'Suit designed to provide the fire- fighter with protection from radiated heat and from injuries arising from impact or abrasion during operational activities. A suit should consist of hood with visor, a sit in jacket and trouser combination boot and gloves.\r\n', 'cat_image/suit.jpg'),
(3, 'Fire Pump', 'A fire pump usually refers to a pressure-increasing component of the water supply for fixed-place fire suppression systems such as fire sprinklers, standpipes, and foam systems.\r\n', 'cat_image/fire pump.jpg'),
(4, 'Fire Bucket', 'A Fire Bucket is filled with sand or water and is used to extinguish fires. Sand is often used where there is a risk of spilled flammable liquid which might ignite and spread by flowing across the ground. The sand is deployed to act as a barrier to the flowing liquid.\r\n', 'cat_image/fire buckets.webp'),
(5, 'Smoke Detector', 'Smoke alarms detect fires by sensing small particles in the air. Once they detect those particles above a certain level, they signal the alarm to sound so that you and your family can get to safety and call 911. Smoke alarms save lives.', 'cat_image/smoke detector.jpg'),
(6, 'Fire Extinguishers', 'Fire extinguishers apply an agent that will cool burning heat, smother fuel or remove oxygen so the fire cannot continue to burn. A portable fire extinguisher can quickly control a small fire if applied by an individual properly trained. Fire extinguishers are located throughout every building. \r\n\r\n', 'cat_image/extinguishers.jpg'),
(7, 'Fire Alram', 'A fire alarm system is a building system designed to detect, alert occupants, and alert emergency forces of the presence of fire, smoke, carbon monoxide, or other fire-related emergencies. Fire alarm systems are required in most commercial buildings.\r\n', 'cat_image/alram.jpg'),
(8, 'Fire Door', 'A fire door is a door with a fire-resistance rating (sometimes referred to as a fire protection rating for closures) used as part of a passive fire protection system to reduce the spread of fire and smoke between separate compartments of a structure and to enable safe egress from a building or structure.\r\n', 'cat_image/fire doors.webp'),
(9, 'Fire First Aid-Kit', 'A complete burns First aid kit has everything needed to treat any burn severity immediately - before seeking medical advice. Our medium burns first aid kit includes blotting sachets, hydrogel, dressings, scissors, gloves, eyewash pods, bandages, tape and wall brackets. This is the perfect precaution.\r\n', 'cat_image/fire first aid kit.jpg'),
(10, 'Fire & Welding Blanket', 'Designed to keep welding spatter and sparks contained, these essential safety products are crafted from flame-resistant materials that can withstand the intense heat generated by welding equipment.\r\n', 'cat_image/blanket.jpg'),
(11, 'Fire Sprinklers', 'Fire sprinklers is a necessary firefighting equipment that should be kept in the buildings for the safety purposes.  Firefighter sprinklers are very efficient in extinguishing the fire, moreover they are easy to use after their installation. Fire sprinklers have a temperature sensitivity their senso.\r\n', 'cat_image/Fire sprinklers.jpg'),
(12, 'Fire Hoses', 'In the above section, we have had a thorough discussion about fire hoses. They are long pipes that conduct water from the water source to the fire scene to extinguish the fire. there are divided into suction hoses and delivery hoses, according to their function.\r\n', 'cat_image/fire hoses.webp');

-- --------------------------------------------------------

--
-- Table structure for table `company_master`
--

CREATE TABLE `company_master` (
  `cm_id` int(15) NOT NULL,
  `cm_name` varchar(50) NOT NULL,
  `cm_description` varchar(2000) NOT NULL,
  `cm_address` varchar(150) NOT NULL,
  `cm_city` varchar(50) NOT NULL,
  `cm_contact_no` varchar(30) NOT NULL,
  `cm_logo` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `company_master`
--

INSERT INTO `company_master` (`cm_id`, `cm_name`, `cm_description`, `cm_address`, `cm_city`, `cm_contact_no`, `cm_logo`) VALUES
(1, 'Safex ', 'Safex DCP Dry Powder Trolley Mounted Fire Extinguisher Higher Capacity 25 KG 50 KG 75 KG. Suitable for B, C fire classes such as flammable liquids, gases fire.', '2ND FLOOR, 202, \r\nDHANRAJ INDUSTRIAL ESTATE, \r\nSITARAM JADHAV MARG LOWER PAREL WEST, \r\nMumbai - 400013 Maharashtra, India', 'Mumbai', '91 70390 12639', 'cm_logo/safex.png'),
(2, 'Unicare ', 'Unicare is producing & Supplying large numbers of Fire Extinguishers in different capacities of 1kg, 2kg,4kg, 5kg, 6kg 9 kg & 10kg under its Brand “UFS” UFS has an automated manufacturing facility for manufacture of complete Fire Extinguishers at Noida, Delhi NCR including Modern testing Laboratory.\r\n', 'A-7, Neemrana, \r\nGhamriya Mohalla, \r\nRIICO IA, Ghilot, \r\nPratappur Chak No. 1,\r\nRajasthan 301705', 'Rajasthan', '+91 09818683042', 'cm_logo/unicare.jpg'),
(3, 'Safemax ', 'SafeMax Fire & Safety LLC, an ISO 14001 9001-2015 accredited company formed in 2007 and has quickly grown to become an independenlty recognised and highly regardded fire protection cmpany. Our core business is fire engineering. We provide comprehensive, reliable and cost-effective solutionsspecifica.\r\n', 'Room #10, Mezzanine Floor,\r\n Dar Al Safiya Building - Dubai - United Arab Emirates', 'Dubai', '+971 4 266 3288', 'cm_logo/safemax.jpg'),
(4, 'Ceasefire Industries ', 'Ceasefire today is the most trusted fire safety brand in India and a fast emerging global conglomerate. With its globally certified, holistically integrated range of fire fighting solutions, the company is amongst the rarest in the world to have such a diverse product portfolio as part of one eco-sy.\r\n', 'B1/H1, Mohan Cooperative Estate,\r\n Mathura Road, New Delhi', 'New Delhi', '9540 666 666', 'cm_logo/unicare.jpg'),
(5, 'NAFFCO', 'NAFFCO Flow Control promotes safety and security to protect life and property across major industries, by offering extensive products range, namely residential and commercial facilities, industries, airports and aviation, health care and education, military and police, hospitality and leisure.\r\n\r\n', 'World Headquarters,\r\njebel Ali Free Zone Dubai,\r\nU.A.E.P.O.Box:262169\r\n	\r\n', 'Dubai', '+971 4 815 1111	', 'cm_logo/NAFFO.png'),
(6, 'G Tech Fire', 'Incepted in the year of 2010, we, G Tech Fire Engineers Pvt. Ltd., are a foremost organization involved in manufacturing, supplying and trading a broad array of Fire System Solutions. Products array provided by us includes Fire Fighting Products, Road Safety Products and Head Fall Protection.\r\n', 'G Tech Fire:\r\nF-321,Sector-63, \r\nOpposite Fortis Hospital,\r\n Near Police Choki,Noida,\r\n Uttar Pradesh,201301,india\r\n', 'Uttar Pradesh', '+918047643088', 'cm_logo/G TECH.png');

-- --------------------------------------------------------

--
-- Table structure for table `feedback_master`
--

CREATE TABLE `feedback_master` (
  `feedback_id` int(15) NOT NULL,
  `feedback_message` varchar(150) NOT NULL,
  `user_id` int(15) NOT NULL,
  `feedback_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `order_master`
--

CREATE TABLE `order_master` (
  `order_id` int(15) NOT NULL,
  `user_id` int(15) NOT NULL,
  `prod_id` int(15) NOT NULL,
  `order_qty` varchar(50) NOT NULL,
  `total_price` int(15) NOT NULL,
  `order_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `product_master`
--

CREATE TABLE `product_master` (
  `prod_id` int(15) NOT NULL,
  `prod_name` varchar(50) NOT NULL,
  `prod_description` varchar(2000) NOT NULL,
  `prod_price` varchar(50) NOT NULL,
  `cat_id` int(15) NOT NULL,
  `cm_id` int(15) NOT NULL,
  `prod_mfg_date` date NOT NULL,
  `prod_warrenty` varchar(50) NOT NULL,
  `prod_photo` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_master`
--

INSERT INTO `product_master` (`prod_id`, `prod_name`, `prod_description`, `prod_price`, `cat_id`, `cm_id`, `prod_mfg_date`, `prod_warrenty`, `prod_photo`) VALUES
(1, 'Structural Firefighter Gloves', '\r\n Designed for fighting fires in buildings, these gloves provide heat resistance, cut protection, and grip for handling tools and equipment.\r\n', '10000', 1, 2, '2010-07-23', '5 Year', 'prod_image/Structural Firefighter Gloves.jpg'),
(2, 'Technical Rescue Gloves', '\r\nFor complex rescue situations, these gloves provide grip, dexterity, and protection from cuts and abrasions, as well as insulation for working with ropes and other equipment.\r\n', '9800', 1, 6, '2015-07-23', '2 Year', 'prod_image/Technical Rescue Gloves.jpg'),
(3, ' Extrication Gloves', '\r\n For vehicle extrications, these gloves provide grip, dexterity, and protection from cuts and abrasions, as well as insulation for working with metal and glass.', '7600', 1, 1, '2006-09-08', '2 Year', 'prod_image/Extrication Gloves.jpg'),
(4, 'Airport Firefighter Gloves', '\r\n Designed for airport firefighting, these gloves offer heat resistance, cut protection, and grip, as well as insulation for working with aircraft and fuel.', '8800', 1, 5, '2012-11-12', '1 Year', 'prod_image/Airport Firefighter Gloves.jpg'),
(5, 'Structural Firefighting Suits', ' Designed for interior firefighting, provide thermal protection and durability.', '100000', 2, 4, '2008-05-23', '6 Month', 'prod_image/Structural Firefighting Suits.jpg'),
(6, 'Proximity Suits', 'Used for high-heat applications like aircraft rescue and industrial fires.\r\n', '145000', 2, 2, '2017-01-07', '7 Year', 'prod_image/fire Proximity Suits pic.jpg'),
(7, 'Wildland Firefighting Suits', ' Lightweight, breathable suits for wildland firefighting.', '111000', 2, 6, '2014-10-20', '5 Year', 'prod_image/Wildland Firefighting Suits .jpg'),
(8, 'Hazmat Suits', 'Chemical-resistant suits for hazardous materials response.', '138000', 2, 4, '2008-10-26', '8 Year', 'prod_image/Hazmat Suits.jpg'),
(9, 'Centrifugal Pumps', 'Most common type, using centrifugal force to increase water pressure.\r\n', '150000', 3, 5, '2005-08-21', '9 Month', 'prod_image/Centrifugal Pumps.jpg'),
(10, 'Positive Displacement Pumps', ' Move water by trapping and displacing fixed amounts, often used for foam or chemical injection.\r\n', '110000', 3, 6, '2005-09-17', '5 Year', 'prod_image/Positive Displacement Pumps.jpg'),
(11, 'Vertical Turbine Pumps', 'Multi-stage centrifugal pumps for high-pressure applications.', '135000', 3, 1, '2004-12-05', '3 Year', 'prod_image/vertical turbine pump.jpg'),
(12, 'Horizontal Split Case Pumps', '  Centrifugal pumps with a split case design for easy maintenance.\r\n', '90000', 3, 3, '2015-04-30', '1 Year', 'prod_image/Horizontal Split Case Pumps.jpg'),
(13, 'Standard Fire Bucket', ' A basic, red-painted bucket made of metal or plastic, filled with sand or water for extinguishing small fires.\r\n', '95500', 4, 2, '2003-05-21', '6 Year', 'prod_image/Standard Fire Bucket.jpg'),
(14, 'Collapsible Fire Bucket', ' A lightweight, portable bucket that can be easily stored and transported.\r\n', '160000', 4, 1, '2013-12-18', '4 Year', 'prod_image/Collapsible Fire Bucket1.jpg'),
(15, 'Insulated Fire Bucket', ' A bucket with thermal insulation to keep water or fire extinguishing agents cool in high-temperature environments.\r\n', '190000', 4, 5, '2017-08-23', '6 Year', 'prod_image/Insulated Fire Bucket.jpg'),
(16, 'Galvanized Fire Bucket', 'A durable, rust-resistant bucket made of galvanized metal for outdoor use.\r\n', '170000', 4, 2, '2006-07-05', '5 Year', 'prod_image/Galvanized fire bucket.jpg'),
(17, 'Ionization Smoke Detectors', ' Detect smoke particles using ionization technology, sensitive to small particles.', '80900', 5, 4, '2009-08-07', '10 Month', 'prod_image/Ionization Smoke Detectors.jpg'),
(18, 'Photoelectric Smoke Detectors', ' Use light to detect smoke particles, more sensitive to larger particles.\r\n', '99000', 5, 1, '2014-06-09', '6 Year', 'prod_image/Photoelectric Smoke Detectors.jpg'),
(19, 'Dual-Sensor Smoke Detectors', ' Combine ionization and photoelectric technologies for improved accuracy.\r\n', '88900', 5, 6, '2006-05-04', '10 Year', 'prod_image/Dual-Sensor Smoke Detectors.jpg'),
(20, 'Beam Smoke Detectors', ' Use infrared beams to detect smoke, ideal for large areas.', '92800', 5, 3, '0012-11-10', '4 Year', 'prod_image/Beam Smoke Detectors.jpg'),
(21, 'Water Extinguishers', ' Effective against ordinary combustibles like paper, wood, and cloth.', '175000', 6, 2, '2002-04-03', '9 Month', 'prod_image/Water Extinguishers.jpg'),
(22, 'Carbon Dioxide (CO2) Extinguishers ', ' Suitable for flammable liquids and electrical fires.', '155500', 6, 4, '2007-05-18', '2 Year', 'prod_image/Carbon Dioxide (CO2) Extinguishers.jpg'),
(23, 'Foam Extinguishers', ' Effective against flammable liquids and greases.\r\n', '200000', 6, 2, '2020-10-30', '9 Month', 'prod_image/Foam Extinguishers .jpg'),
(24, 'Dry Chemical Extinguishers ', ' Multipurpose extinguishers for flammable liquids and electrical fires.', '199999', 6, 1, '2008-03-19', '3 Year', 'prod_image/Dry Chemical Extinguishers pic.jpg'),
(25, 'Conventional Fire Alarm', ' A basic fire alarm system that triggers an audible and visual alert when smoke or heat is detected.\r\n', '140000', 7, 6, '2003-02-01', '5 Year', 'prod_image/convers alram.jpg'),
(26, 'Addressable Fire Alarm', ' An advanced system that identifies the exact location of a fire, ideal for larger buildings.', '133300', 7, 5, '2010-09-10', '8 Year', 'prod_image/Addressable Fire Alarm.jpg'),
(27, 'Wireless Fire Alarm', 'A system that uses wireless sensors and detectors for easy installation and minimal damage.\r\n', '149505', 7, 2, '2007-06-05', '9 Year', 'prod_image/Wireless Fire Alarm.jpg'),
(28, 'Smart Fire Alarm', ' A high-tech system that can detect fires, alert authorities, and provide real-time monitoring through a mobile app.\r\n', '125599', 7, 1, '2001-08-23', '4 Year', 'prod_image/Smart Fire Alarm .jpg'),
(29, 'Timber Fire Doors', ' Made from wood, often used in residential and commercial buildings.\r\n', '500000', 8, 6, '2011-11-11', '5 Year', 'prod_image/Timber Fire Doors.jpg'),
(30, 'Steel Fire Doors', ' Made from steel, offering high fire resistance and durability.', '444949', 8, 3, '2002-09-25', '10 Month', 'prod_image/Steel Fire Doors.jpg'),
(31, 'Composite Fire Doors', ' Combine materials like wood and steel for enhanced performance.\r\n', '333333', 8, 4, '2013-09-20', '7 Year', 'prod_image/Composite Fire Doors.jpg'),
(32, 'Fire-Resistant Glazed Doors', 'Feature fire-resistant glass and frames for visibility and safety.\r\n\r\n', '250000', 8, 2, '2002-03-01', '8 Month', 'prod_image/Fire-Resistant Glazed Doors.jpg'),
(33, 'Basic Fire First Aid Kit', ' A starter kit containing essential supplies like burn cream, gauze, and medical tape.\r\n', '9999', 9, 1, '2008-12-06', '9 Year', 'prod_image/basic first aid kit.jpg'),
(34, 'Deluxe Fire First Aid Kit', ' A comprehensive kit with additional supplies like burn gel, eye wash, and a first aid manual.\r\n', '6599', 9, 6, '2014-09-04', '4 Year', 'prod_image/deluxe aid kit.jpg'),
(35, 'Burn Care First Aid Kit', ' A specialized kit focused on treating burns, with supplies like burn blankets and hydrogel dressings.\r\n', '7800', 9, 3, '2010-08-27', '1 Year', 'prod_image/burn care first aid kit.jpg'),
(36, 'Firefighter First Aid Kit', ' A heavy-duty kit designed for professional firefighters, with advanced supplies like tourniquets and trauma dressings.\r\n', '8999', 9, 5, '2019-06-02', '2 Year', 'prod_image/firefighter first aid kit.jpg'),
(37, 'Fiberglass Welding Blanket', ' A popular choice for welding, cutting, and grinding. It is heat-resistant, durable, and affordable.\r\n', '55555', 10, 1, '2000-09-28', '7 Year', 'prod_image/Fiberglass Welding Blanket .jpg'),
(38, 'Ceramic Welding Blanket', ' Offers higher heat resistance than fiberglass, making it ideal for intense welding and cutting applications.\r\n', '50459', 10, 5, '2012-12-05', '3 Year', 'prod_image/Ceramic Welding Blanket.jpg'),
(39, 'Silicone-Coated Welding Blanket', ' Provides excellent heat resistance, flexibility, and water resistance, making it suitable for various industrial applications.\r\n', '47700', 10, 2, '2008-07-21', '6 Month', 'prod_image/Silicone-Coated Welding Blanket.jpg'),
(40, 'Vermiculite-Coated Welding Blanket', 'Offers high heat resistance and is often used in marine and offshore welding applications.\r\n', '39900', 10, 4, '2004-10-03', '5 Year', 'prod_image/Vermiculite-Coated Welding Blanket.jpg'),
(41, 'Standard Response Sprinklers', 'Most common type, discharging water at a predetermined temperature (usually 135-155°F).', '179000', 11, 3, '2019-03-28', '8 Year', 'prod_image/Standard Response Sprinklers.jpg'),
(42, 'Quick Response Sprinklers', 'More sensitive, discharging water at a lower temperature (usually 105-120°F) for faster fire suppression.\r\n', '162800', 11, 6, '2006-04-13', '1 Year', 'prod_image/Quick Response Sprinklers.jpg'),
(43, 'Extended Coverage Sprinklers', 'Cover larger areas, often used in warehouses, factories, and commercial spaces.', '127700', 11, 3, '2007-01-21', '9 Year', 'prod_image/Extended Coverage Sprinklers.jpg'),
(44, 'Early Suppression Fast Response (ESFR) Sprinklers', 'Designed for high-hazard areas, discharging large amounts of water quickly to suppress fires.', '113979', 11, 2, '2004-06-29', '4 Year', 'prod_image/Early Suppression Fast Response (ESFR) Sprinklers.jpg'),
(45, 'Attack Hoses', 'A heavy-duty hose used for attacking fires directly. It is typically made of rubber or synthetic materials and comes in various diameters.', '109800', 12, 1, '2006-12-08', '10 Year', 'prod_image/attack hoses.jpg'),
(46, 'Supply Hose', ' A larger-diameter hose used to supply water to attack hoses. It is often used for longer distances and higher water pressure.\r\n', '117990', 12, 4, '2021-03-16', '2 Year', 'prod_image/supply hose.jpg'),
(47, 'Booster Hose', 'A smaller-diameter hose used for smaller fires or in areas where space is limited. It is often used for indoor fires.\r\n', '136350', 12, 6, '2004-10-25', '6 Year', 'prod_image/booster hose.jpg'),
(48, 'Foam Hose', ' A specialized hose used for foam firefighting agents. It is designed to handle the unique properties of foam.\r\n', '128299', 12, 5, '2016-08-12', '4 Year', 'prod_image/foam hose.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user_master`
--

CREATE TABLE `user_master` (
  `user_id` int(15) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `user_address` varchar(150) NOT NULL,
  `user_city` varchar(50) NOT NULL,
  `user_mobileno` varchar(25) NOT NULL,
  `user_pincode` int(10) NOT NULL,
  `user_email` varchar(50) NOT NULL,
  `user_password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_master`
--

INSERT INTO `user_master` (`user_id`, `user_name`, `user_address`, `user_city`, `user_mobileno`, `user_pincode`, `user_email`, `user_password`) VALUES
(1, 'Manasi', 'Manpur', 'Dhrangadhra', '9409732364', 363310, 'manasu466@gmail.com', 'manasu466'),
(2, 'Ankita', 'Hadala', 'Dhandhuka', '4589363450', 363533, 'anki@gmail.com', 'ankipatel'),
(3, 'Sakshi', 'Gujaravadi', 'Dhrangadhra', '2558931563', 33333, 'sakshi@gmail.com', 'sakshi');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_login`
--
ALTER TABLE `admin_login`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `cart_master`
--
ALTER TABLE `cart_master`
  ADD PRIMARY KEY (`cart_id`);

--
-- Indexes for table `category_master`
--
ALTER TABLE `category_master`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `company_master`
--
ALTER TABLE `company_master`
  ADD PRIMARY KEY (`cm_id`);

--
-- Indexes for table `feedback_master`
--
ALTER TABLE `feedback_master`
  ADD PRIMARY KEY (`feedback_id`);

--
-- Indexes for table `order_master`
--
ALTER TABLE `order_master`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `product_master`
--
ALTER TABLE `product_master`
  ADD PRIMARY KEY (`prod_id`);

--
-- Indexes for table `user_master`
--
ALTER TABLE `user_master`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_login`
--
ALTER TABLE `admin_login`
  MODIFY `admin_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cart_master`
--
ALTER TABLE `cart_master`
  MODIFY `cart_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `category_master`
--
ALTER TABLE `category_master`
  MODIFY `cat_id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `company_master`
--
ALTER TABLE `company_master`
  MODIFY `cm_id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `feedback_master`
--
ALTER TABLE `feedback_master`
  MODIFY `feedback_id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `order_master`
--
ALTER TABLE `order_master`
  MODIFY `order_id` int(15) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_master`
--
ALTER TABLE `product_master`
  MODIFY `prod_id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `user_master`
--
ALTER TABLE `user_master`
  MODIFY `user_id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
