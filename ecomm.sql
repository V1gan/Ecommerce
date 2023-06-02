-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 02, 2021 at 07:59 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecomm`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `cat_slug` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `cat_slug`) VALUES
(1, 'Equipment', 'laptops'),
(2, 'Phone Cases', 'desktop-pc'),
(3, 'Phone Chargers', 'tablets'),
(4, 'Smart Phones', '');

-- --------------------------------------------------------

--
-- Table structure for table `details`
--

CREATE TABLE `details` (
  `id` int(11) NOT NULL,
  `sales_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `details`
--

INSERT INTO `details` (`id`, `sales_id`, `product_id`, `quantity`) VALUES
(14, 9, 11, 2),
(15, 9, 13, 5),
(16, 9, 3, 2),
(17, 9, 1, 3),
(18, 10, 13, 3),
(19, 10, 2, 4),
(20, 10, 19, 5);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `slug` varchar(200) NOT NULL,
  `price` double NOT NULL,
  `photo` varchar(200) NOT NULL,
  `date_view` date NOT NULL,
  `counter` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `name`, `description`, `slug`, `price`, `photo`, `date_view`, `counter`) VALUES
(28, 4, 'Samsung Note 8', '<p>See the bigger picture and communicate in a whole new way. With the Galaxy Note8 in your hand, bigger things are just waiting to happen.&nbsp;&nbsp;</p>\r\n\r\n<p>More screen means more space to do great things. Go big with the Galaxy Note8&#39;s 6.3&quot; screen. It&#39;s the largest ever screen on a Note device and it still fits easily in your hand.</p>\r\n\r\n<p>*Infinity Display: a near bezel-less, full-frontal glass, edge-to-edge screen.</p>\r\n\r\n<p>*Screen measured diagonally as a full rectangle without accounting for the rounded corners.</p>\r\n\r\n<p>Use the S Pen to express yourself in ways that make a difference. Draw your own emojis to show how you feel or write a message on a photo and send it as a handwritten note. Do things that matter with the S Pen.</p>\r\n\r\n<p>*Image simulated for illustration purpose only.</p>\r\n', 'samsung-note-8', 829, 'samsung-note-8.jpg', '2021-01-31', 9),
(29, 4, 'Samsung Galaxy S9+', '<h2>&nbsp;</h2>\r\n\r\n<h3>Capture stunning pictures in bright daylight and super low light.</h3>\r\n\r\n<p>Our category-defining Dual Aperture lens adapts like the human eye. It&#39;s able to automatically switch between various lighting conditions with ease&mdash;making your photos look great whether it&#39;s bright or dark, day or night.</p>\r\n\r\n<p>*Dual Aperture supports F1.5 and F2.4 modes. Installed on the rear camera (Galaxy S9)/rear wide camera (Galaxy S9+).</p>\r\n\r\n<p>Super Slow-mo lets you see the things you could have missed in the blink of an eye. Set the video to music or turn it into a looping GIF, and share it with a tap. Then sit back and watch the reactions roll in.</p>\r\n', 'samsung-galaxy-s9', 890, 'samsung-galaxy-s9-128-gb.jpg', '2021-01-31', 7),
(30, 4, 'Iphone 12', '<p>The iPhone 12 has several new features and updates to push the device even further. A new design, new colors, better cameras, and a better processor. Apple positioned the latest lineup as &quot;iPhone for everyone&quot; with the biggest variation in screen size and color ever in the company&#39;s history.</p>\r\n\r\n<p>This is the first iPhone generation to include OLED in every model. The display uses Apple&rsquo;s Super Retina XDR technology with a 2 million-to-1 contrast ratio with better HDR and true blacks. This display comes in at 460ppi and can display up to 1200 nits of HDR content.</p>\r\n\r\n<p>Apple states this is the most durable iPhone display ever made. It has a new Ceramic Shield, which improves durability when dropped. The temperature crystallization process used to toughen the glass improves drop protection by up to 4x compared to older models.</p>\r\n', 'iphone-12', 1200, 'iphone-12.png', '2021-01-31', 5),
(31, 4, 'Iphone 11', '<p>The iPhone 11 succeeds the iPhone XR, and it features a 6.1-inch LCD display that Apple calls a &quot;Liquid Retina HD Display.&quot; It features a 1792 x 828 resolution at 326ppi, a 1400:1 contrast ratio, 625 nits max brightness, True Tone support for adjusting the white balance to the ambient lighting, and wide color support for true-to-life colors.</p>\r\n\r\n<p>Like the iPhone XR, the iPhone 11 does not include 3D Touch, instead using Haptic Touch. Haptic Touch is supported across iOS 13, but it lacks the pressure sensitivity of 3D Touch. The iPhone 11 and 11 Pro also support Haptic Touch, with Apple eliminating 3D Touch across the iPhone lineup.</p>\r\n\r\n<p>Design wise, the iPhone 11 features a glass body that comes in six different colors: White, Black, Yellow, (PRODUCT)RED, Purple, and Green. The latter two colors are both new in 2019.</p>\r\n', 'iphone-11', 500, 'iphone-11.jpg', '0000-00-00', 0),
(32, 4, 'Iphone X', '<p>iPhone X is the future of the smartphone. It is packed with incredible new technologies, like the innovative TrueDepth camera system, beautiful Super Retina display and super fast A11 Bionic chip with neural engine,&quot; said Philip Schiller, Apple&rsquo;s senior vice president of Worldwide Marketing. &ldquo;iPhone X enables fluid new user experiences &mdash; from unlocking your iPhone with Face ID, to playing immersive AR games, to sharing Animoji in Messages &mdash; it is the beginning of the next ten years for iPhone.</p>\r\n', 'iphone-x', 300, 'iphone-x.jpg', '2021-01-31', 2),
(33, 4, 'Huawei P20', '<p>The P20 is constructed with a metal chassis and glass backing, has a fingerprint reader on the front that can also be used for gesture navigation, and is available in various color finishes. Both the P20 and P20 Pro feature 1080p, 18.7:9 aspect ratio &quot;FullView&quot; displays with a &quot;notch&quot; tab at the top-centre, with the P20 having a 5.8-inch LCD panel and the P20 Pro a 6.1-inch AMOLED panel. Both models include a Kirin 970 system-on-chip and 128 GB of non-expandable internal storage, with 4 GB of RAM for the base model and 6 for the Pro. The models feature 3320 and 4000 mAh batteries respectively; the P20 line does not support wireless charging. Both models have a USB-C port and do not include a headphone jack.</p>\r\n', 'huawei-p20', 300, 'huawei-p20.jpg', '2021-01-31', 1),
(34, 4, 'Huawei P30 Pro', '<p>Their designs are similar to those of the P20. The P30 Pro has a curved screen, and replaces the traditional earpiece speaker with an &quot;electromagnetic levitation&quot; speaker that vibrates the top of the phone&#39;s screen, enabling a narrower bezel. The P30 has IP53 water and dustproofing, while the P30 Pro has IP68, but does not include a headphone jack. Both models utilise the Kirin 980 system-on-chip. The devices feature an in-screen optical fingerprint reader, stated to have improved performance over that of the Mate 20 Pro.</p>\r\n\r\n<p>In September 2019, Huawei unveiled new &quot;Mystic Blue&quot; and &quot;Misty Lavender&quot; color finishes for the P30 Pro, which carry a two-tone appearance using matte and glossy finishes. In May 2020, Huawei announced new 256 GB &quot;New Edition&quot; P30 Pro models for Germany, including a new silver color scheme.</p>\r\n', 'huawei-p30-pro', 450, 'huawei-p30-pro.jpg', '0000-00-00', 0),
(35, 4, 'Huawei P40 Pro', '<p>The P40 series is powered by the HiSilicon Kirin 990 5G processor, meaning that all models will have 5G connectivity standard. However, only &quot;sub-6&quot; 5G is available, meaning the P40 series is not compatible with ultra-fast millimeter-wave (mmWave) networks. The Kirin 990 5G is assisted by the Mali-G76 MP16 GPU. The P40 has 6 or 8 GB of LPDDR4X RAM, while the P40 Pro &amp; P40 Pro+ have 8 GB of LPDDR4X RAM. All models have UFS 3.0: the P40 has 128 or 256 GB, the P40 Pro has 128, 256 or 512 GB and the P40 Pro+ has 256 or 512 GB. Expansion is supported up to 256 GB via Huawei&#39;s proprietary Nano Memory card.</p>\r\n\r\n<p>The P40&#39;s display is carried over from the P30, a 6.1&quot; (154.94mm) 19.5:9 1080p (1080 &times; 2340) OLED with a 60 Hz refresh rate. The P40 Pro and P40 Pro+ use a larger 6.58&quot; (167.13mm) 19.8:9 1080p+ (1200 &times; 2640) OLED and a 90Hz refresh rate, as well as support for HDR10 and DCI-P3. In addition to the infrared face unlock system, all P40 models have an optical (under-screen) fingerprint sensor; Huawei claims the sensor is 30% larger and faster than the P30&#39;s.</p>\r\n\r\n<p>The P40 uses a 3800 mAh battery, while the P40 Pro and P40 Pro+ use a larger 4200 mAh battery. Fast charging is supported on all models, however the P40 does not support wireless charging. The P40 can charge wired up to 22.5 W while the P40 Pro and P40 Pro+ have a max rate of 40 W. Both the P40 Pro and P40 Pro+ are also capable of reverse wireless charging at 27 W, but the P40 Pro+ can charge faster wirelessly at 40 W whereas the P40 Pro can only charge wirelessly at 27 W.</p>\r\n', 'huawei-p40-pro', 550, 'huawei-p40-pro.jpg', '0000-00-00', 0),
(36, 4, 'Samsung A71', '<p>The A71 line consists of SM-A715F/DS, SM-A715F/DSN and SM-A715F/DSM. Key upgrades over the previous model, the Samsung Galaxy A70, include the Android 10 operating system, the Qualcomm Snapdragon 730 chipset, and the camera system. It was announced and released in December 2019.</p>\r\n\r\n<p>The phone has a Super AMOLED Plus FHD+ 6.7&quot; display, a 64 MP wide, 12 MP ultrawide, 5 MP depth, and 5 MP macro camera, a 4500 mAh battery, and an ultrasonic in-screen fingerprint sensor.</p>\r\n\r\n<p>A standard 5G variant of the phone was introduced in April 2020, as well as a 5G UW variant in July 2020.</p>\r\n', 'samsung-a71', 280, 'samsung-a71.jpg', '0000-00-00', 0),
(37, 4, 'Samsung A80', '<p>The Samsung Galaxy A80 has a 6.7-inch full-HD+ (1080x2400 pixels) Super AMOLED &quot;New Infinity Display&quot; with a 20:9 aspect ratio; it is the first Samsung phone featuring the &quot;New Infinity&quot; technology. The phone is powered by the newly unveiled Snapdragon 730G SoC, an octa-core processor with two cores clocked at 2.2 GHz and six cores clocked at 1.7 GHz. It also comes with 8GB of RAM and 128GB of onboard storage. Its storage cannot be expanded via a micro SD card. The phone measures 165.2x76.5x9.3mm. The phone also comes with a 3700 mAh battery and 25W Super Fast Charging technology.<br />\r\nThe Samsung Galaxy A80 is equipped with a triple-camera array consisting of a main 48-megapixel camera, flanked by an ultrawide 8-megapixel camera, and a ToF sensor. It also introduced a rotating camera; the back facing camera slides up and rotates forward automatically when put in selfie mode.</p>\r\n', 'samsung-a80', 400, 'samsung-a80.jpg', '0000-00-00', 0),
(38, 4, 'Redmi Note 9', '<p>The Note 9/10X 4G measures 162.3 mm &times; 72.2 mm &times; 8.9 mm (6.39 in &times; 2.84 in &times; 0.35 in) and weighs 199 grams (7.0 oz) which is heavier than usual for a 6.53 inch phone. The curved (slippery) back feels like glass, the front is made of Gorilla Glass 5, and the frame is made of plastic. The bottom half is heavier to prevent the device from tipping over and falling. The bezels and the camera bump are small.</p>\r\n\r\n<p>In addition to the 6.53 in (166 mm) touchscreen, it has a power button and a volume up/down button located on the right side, an IR blaster on the top, and a USB-C port, a downward-firing speaker, and a headphone jack on the bottom. It has a hole-punch in the left corner, and a fingerprint scanner in the rear.</p>\r\n\r\n<p>The Note 9/10X 4G has three color options: Forest Green, Midnight Grey, and Polar White.</p>\r\n', 'redmi-note-9', 150, 'redmi-note-9.png', '0000-00-00', 0),
(39, 2, 'Iphone X Case', '<p><strong>Nike Red Iphone X Case</strong></p>\r\n', 'iphone-x-case', 5, 'iphone-x-case.jpg', '2021-01-31', 4),
(40, 2, 'Iphone X Case 2', '<p><strong>Nike White Iphone X Case</strong></p>\r\n', 'iphone-x-case-2', 5, 'iphone-x-case-2.jpg', '2021-01-31', 1),
(41, 2, 'Iphone X Case 3', '<p><strong>Game Of Thrones Edition - Iphone X Case</strong></p>\r\n', 'iphone-x-case-3', 5, 'iphone-x-case-3.jpg', '0000-00-00', 0),
(42, 2, 'Samsung A71 Case', '<p><strong>Simple Transparent - Samsung A71 Case</strong></p>\r\n', 'samsung-a71-case', 4, 'samsung-a71-case.jpeg', '0000-00-00', 0),
(43, 2, 'Iphone 12 Case', '<p><strong>Army Gray - Iphone 12 Case</strong></p>\r\n', 'iphone-12-case', 10, 'iphone-12-case.jpg', '2021-01-31', 1),
(44, 3, 'Iphone Charger', '<p><strong>IPHONE CHARGER</strong></p>\r\n', 'iphone-charger', 20, 'iphone-charger.jpg', '2021-01-31', 2),
(45, 3, 'Iphone 11 Charger', '<p><strong>Iphone 11 Pro Max Charger</strong></p>\r\n', 'iphone-11-charger', 25, 'iphone-11-charger.jpg', '2021-01-31', 1),
(46, 3, 'MagSafe Charger', '<p><strong>Apple MagSafe Charger</strong></p>\r\n', 'magsafe-charger', 17, 'magsafe-charger.jpg', '0000-00-00', 0),
(47, 3, 'Adapter', '<p><strong>Travel Adapter</strong></p>\r\n', 'adapter', 10, 'adapter.jpg', '0000-00-00', 0),
(48, 1, 'FanTech Headphones', '<p><strong>FanTech Gaming Headphones</strong></p>\r\n', 'fantech-headphones', 25, 'fantech-headphones.jpg', '2021-01-31', 1),
(49, 1, 'Beats by DrDre', '<p><strong>Black Beats by DrDre</strong></p>\r\n', 'beats-drdre', 30, 'beats-drdre.jpg', '2021-01-31', 5),
(50, 1, 'Cable', '<p><strong>Horizontal Data Cable</strong></p>\r\n', 'cable', 7, 'cable.jpg', '0000-00-00', 0),
(51, 1, 'Ring Light', '<p><strong>Ring Light&nbsp;</strong></p>\r\n\r\n<p><strong>Mostly used for TikTok</strong></p>\r\n', 'ring-light', 35, 'ring-light.jpg', '0000-00-00', 0),
(52, 1, 'Car Charger', '<p><strong>Philips - Car Charger&nbsp;</strong></p>\r\n', 'car-charger', 10, 'car-charger.jpg', '2021-01-31', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `pay_id` varchar(50) NOT NULL,
  `sales_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `user_id`, `pay_id`, `sales_date`) VALUES
(9, 9, 'PAY-1RT494832H294925RLLZ7TZA', '2018-05-10'),
(10, 9, 'PAY-21700797GV667562HLLZ7ZVY', '2018-05-10');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(60) NOT NULL,
  `type` int(1) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `contact_info` varchar(100) NOT NULL,
  `photo` varchar(200) NOT NULL,
  `status` int(1) NOT NULL,
  `activate_code` varchar(15) NOT NULL,
  `reset_code` varchar(15) NOT NULL,
  `created_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `type`, `firstname`, `lastname`, `address`, `contact_info`, `photo`, `status`, `activate_code`, `reset_code`, `created_on`) VALUES
(1, 'cozy@admin.com', '$2y$10$0SHFfoWzz8WZpdu9Qw//E.tWamILbiNCX7bqhy3od0gvK5.kSJ8N2', 1, 'Cozy', 'Phones', '', '', 'cozyy.jpg', 1, '', '', '2021-01-31'),
(13, 'viganb@gmail.com', '$2y$10$E0uEu43M/7j8eakRyFo.AOmLFhlpOJ6idG7B/P9xNd0OI0HVuoYsm', 0, 'Vigan', 'Bajrami', 'B.M 23', '070-XXX-XXX', 'viganp.jpg', 1, '', '', '2021-01-31'),
(14, 'rilindsh@gmail.com', '$2y$10$7nZXbmW9aMev7eYjXHO.8.lF50ys.IlT.S9n.XmcxbJfQFBfhhqfm', 0, 'Rilind', 'Shabani', 'Ilindenska bb', '078-XXX-XXX', 'rilindp.jpg', 1, '', '', '2021-01-31'),
(21, 'betimsh@gmail.com', '$2y$10$gT5YR78g8ooTyEP6WmXG7u5J4/UquGt2QowphSG2BrjbSGSmH0CxG', 0, 'Betim', 'Sherifi', '', '', '', 0, 'C6LnKQDPEFpb', '', '2021-02-01'),
(22, 'dritons@gmail.com', '$2y$10$JHU/v5TRxRi51hdL5wbW2.VuPnTi.Mb2kE94T95fydJn.PoT.3TtW', 0, 'driton', 'sinani', '', '', '', 0, 'Dt8waQu7IxRi', '', '2021-02-01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `details`
--
ALTER TABLE `details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `details`
--
ALTER TABLE `details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
