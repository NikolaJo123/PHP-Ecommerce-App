-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 24, 2019 at 12:37 PM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
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

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `product_id`, `quantity`) VALUES
(1, 13, 33, 1),
(2, 17, 75, 13),
(3, 17, 44, 1),
(4, 17, 40, 1);

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
(8, 'Electronics', 'desktop-pc'),
(9, 'Household Appliances', 'tablets'),
(10, 'Women\'s Fashion', 'wfashion'),
(11, 'Men\'s Fashion', 'mfashion'),
(12, 'Luggage & Travel', 'luggage'),
(14, 'Men\'s Shoes', 'mshoes'),
(15, 'Women\'s Shoes', 'wshoes'),
(16, 'Boy\'s Fashion', 'bfashion'),
(17, 'Girl\'s Fashion', 'gfashion'),
(18, 'Sports and Outdoors', 'sport and outdoor'),
(19, 'Baby Store', 'baby'),
(20, 'Books', 'book'),
(21, 'Boy\'s Shoes', 'bshoes'),
(22, 'Girl\'s Shoes', 'gshoes'),
(23, 'Beauty and Personal Care', 'beauty'),
(25, 'Pet Supplies', 'pets'),
(26, 'Toys and Games', 'toys and games');

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
(31, 26, 'CS GO', '', 'cs-go', 500, 'cs-go_1547664622.jpg', '2019-01-12', 1),
(33, 18, 'FAN\"S KIT CHAMPIONS LEAGUE 13 TITLE WINER', '<ul>\r\n	<li>THIS T-SHIRT IS ONLY FOR THE REAL FANS OF REAL MADRID AND THE HATERS FROM BARCA :D ...</li>\r\n</ul>\r\n', 'fan-s-kit-champions-league-13-title-winer', 1200.99, 'fan-s-kit-champions-league-13-title-winer.jpg', '2019-01-12', 1),
(34, 9, 'Cuisinart CPT-180 Metal Classic 4-Slice Toaster, Brushed Stainless', '<ul>\r\n	<li>Dual control panels make this two toasters in one with smooth brushed stainless housing</li>\r\n	<li>Custom control: 6-setting browning dials, dual reheat, defrost and bagel buttons with LED indicators</li>\r\n	<li>1-1/2 inch - wide toasting slots, extra-lift carriage lever, slide-out crumb tray</li>\r\n	<li>Instruction book included. BPA free</li>\r\n	<li>Product Built to North American Electrical Standards</li>\r\n	<li>UC Cubic Feet- 0.65, MC Cubic Feet- 1.58</li>\r\n</ul>\r\n', 'cuisinart-cpt-180-metal-classic-4-slice-toaster-brushed-stainless', 50, 'cuisinart-cpt-180-metal-classic-4-slice-toaster-brushed-stainless.jpg', '2019-01-21', 11),
(35, 9, 'Toshiba EM131A5C-BS Microwave Oven with Smart Sensor', '<p><em><strong>Toshiba EM131A5C-BS Microwave Oven with Smart Sensor, Easy Clean Interior, ECO Mode and Sound On/Off, 1.2 Cu.ft, 1100W, Black Stainless Stee&nbsp;</strong></em></p>\r\n\r\n<ul>\r\n	<li>Pre-programmed sensor menu for optimum heating of popular foods like pizza, potatoes, veggies and more</li>\r\n	<li>Black Stainless Steel exterior, 20.5 x 17.1 x 12.8 inch(W*D*H), large 1.2 cubic feet capacity, cavity 13.07*15*9.5 inch(W*D*H), turn table 12.4 inch(Diameter)</li>\r\n	<li>1100 watts with 10 power settings, clock, and kitchen timer. Rated Voltage: 120V~ 60Hz</li>\r\n	<li>Large digital display, easy-to-read control panel, glass turntable</li>\r\n	<li>One touch start popcorn and two defrost settings - custom or one-pound auto defrost. Turntable Diameter: 12.4 inches</li>\r\n	<li>Large digital display, easy-to-read control panel, power saving mode, sound on/off option , glass turntable. Rated Input Power(Microwave) : 1550 Watt</li>\r\n	<li>If you wish to mute the buzzer of the microwave, pleas long press on the button &quot;8&quot; for 3-5 seconds. The buzzer is automatically switched off after a long beep.</li>\r\n	<li>The keypad was covered by a protection film during the shipment. Please peel it off before your first use.<br />\r\n	&nbsp;</li>\r\n</ul>\r\n', 'toshiba-em131a5c-bs-microwave-oven-smart-sensor', 112, 'toshiba-em131a5c-bs-microwave-oven-smart-sensor_1547663987.jpg', '2019-01-21', 9),
(36, 9, 'COSORI 1.7L Electric Kettle', '<p><em><strong>COSORI 1.7L Electric Kettle(BPA-Free),Cordless Glass Boiler Hot Water &amp; Tea Heater with LED Indicator Light,Auto Shut-Off &amp; Boil-Dry Protection,100% Stainless Steel Inner Lid &amp; Bottom, 2-Year Warranty&nbsp;&nbsp;</strong></em></p>\r\n\r\n<ul>\r\n	<li>100% BPA-FREE: The Cosori kettle use food-grade 304 stainless steel for both the inner lid and inner pot. 100% BPA Free and will not contaminate liquids, unlike other kettles use plastic for inner lid</li>\r\n	<li>SAFE TECH &amp; AUTO SHUT-Off: Made with the finest quality Borosilicate Glass which resists scratching and scuffing. Features British Strix thermostat technology; auto shut-off and boil-dry (dry-run) safety protection</li>\r\n	<li>BLUE LED INDICATOR: Know that your kettle is in the process of boiling when the light is on. Auto shut-off mechanism activates within 30 seconds after the water is fully boiling. Light ring concealed inside the glass is safe and durable</li>\r\n	<li>A GREAT ADDITION TO YOUR KITCHEN: Simple design looks lovely on your countertop while the blue led light is on, a great choice to replace your microwave, stove or your old kettle. The kettle rotates 360&ordm; for precise measuring of water and lifts off base for convenient pouring and serving</li>\r\n	<li>WIDE MOUTH &amp; EASY TO CLEAN: A wide mouth on the kettle means it&#39;s easy to clean, refer the descale instruction in our video tutorials under the &quot;related video shorts&quot; section named &quot;How to Descale Your Cosori Electric Kettle&quot;</li>\r\n	<li>PERFECT MATCH FOR COFFEE &amp; TEA: 1.8 Quart (1.7 Liter) capacity enables you to enjoy 7.2 cups of hot water ready to go per &quot;full&quot; boil. The minimum per boil is 2.1 cups (0.5 liters), idea to use for coffee, tea, oatmeal, pasta and much more</li>\r\n	<li>2-YEAR WARRANTY FOR FREE: FDA/ETL/CETL approved, 120V, 60Hz. 90-day money-back guarantee, also 2-year purchase warranty and lifetime support</li>\r\n</ul>\r\n', 'cosori-1-7l-electric-kettle', 39.99, 'cosori-1-7l-electric-kettle.jpg', '2019-01-12', 1),
(37, 10, 'NEARKIN Unisex Pullover High Collar Kangaroo Pocket Fleece Zip Up Hoodie', '<ul>\r\n	<li>### NKWNKHD710 : 50% Cotton, 50% Polyester/ Machine washable (Hand wash recommended)</li>\r\n	<li>Pull On &amp; Zipper closure</li>\r\n	<li>MODEL : 5&#39; 10&#39;&#39; (176 cm) and 114 lbs (52kg), Fitting Size : US XS (Tag size S)</li>\r\n	<li>Zipup Turtleneck and Hoodie T-Shirt, Front kangaroo style pocket, Long sleeve, Fleece, Pullover, Long sleeve</li>\r\n	<li>Nearkin prime concern is customers satisfaction. We strive to provide the best customer service we can.</li>\r\n	<li>Please note that body builds vary by person, therefore, detailed size information should be reviewed below on the product description.</li>\r\n	<li>When You Wash Colored Clothes, Please Wash Separately To Prevent The Discoloration.</li>\r\n</ul>\r\n', 'nearkin-unisex-pullover-high-collar-kangaroo-pocket-fleece-zip-up-hoodie', 25.5, 'nearkin-unisex-pullover-high-collar-kangaroo-pocket-fleece-zip-up-hoodie_1547664136.jpg', '2019-01-21', 3),
(39, 10, 'Alfani Tummy-Control Pull-On Capri Pants, Created for The Merchant', '<ul>\r\n	<li>Tummy control panel slenderizes mid-section and retains shape</li>\r\n	<li>Comfy mid-weight stretch woven fabric</li>\r\n	<li>Mid rise: waistband sits below natural waist</li>\r\n	<li>Web ID: 817261</li>\r\n</ul>\r\n', 'alfani-tummy-control-pull-capri-pants-created-merchant', 34.99, 'alfani-tummy-control-pull-capri-pants-created-merchant_1547664099.jpg', '2019-01-21', 4),
(40, 10, 'Plunging Illusion Velvet Gown', '<ul>\r\n	<li>Approx. 55-1/2&quot; long from center back to hem. Length is based on size 6 and varies 1/4&quot; between sizes.</li>\r\n	<li>Hidden back zipper with hook-and-eye closure</li>\r\n	<li>Illusion boat neckline, deep V at bust; A-line silhouette</li>\r\n	<li>Allover velvet; V-back</li>\r\n	<li>Front slit</li>\r\n	<li>Polyester/spandex</li>\r\n	<li>Dry clean</li>\r\n	<li>Made in USA of imported materials</li>\r\n	<li>Web ID: 3030427</li>\r\n</ul>\r\n', 'plunging-illusion-velvet-gown', 1230.9, 'plunging-illusion-velvet-gown_1547664156.jpg', '2019-01-21', 5),
(41, 11, 'Alfani, Men\'s Stretch Performance Solid Slim-Fit Pants', '<ul>\r\n	<li>Approx. model height: 6&#39;1&quot; and he is wearing a size 32</li>\r\n	<li>Slim fit pants sit slightly below the waist with a slim fit though hips and thighs and straight or narrow leg opening</li>\r\n	<li>Flat front; finished hem; partially lined</li>\r\n	<li>French fly and button closure</li>\r\n	<li>Quarter top pockets</li>\r\n	<li>Matching jacket sold separately</li>\r\n	<li>Get tips on how to buy a suit. Click &amp; play our video in the photo today!</li>\r\n	<li>Created for Macy&#39;s</li>\r\n	<li>Polyester/rayon/Lycra&Acirc;&reg; spandex; lining: polyester</li>\r\n	<li>Dry clean</li>\r\n	<li>Imported</li>\r\n</ul>\r\n', 'alfani-men-s-stretch-performance-solid-slim-fit-pants', 135, 'alfani-men-s-stretch-performance-solid-slim-fit-pants_1547664189.jpg', '2019-01-21', 2),
(42, 11, 'Perry Ellis Men\'s Slim-Fit Stretch Navy Shawl-Collar Tuxedo', '<ul>\r\n	<li>Slim fit: cut with a narrower point-to-point measurement; higher armholes and trimmer through the chest and waist; slim trousers with a tapered leg</li>\r\n	<li>Suit includes: fully lined jacket and flat front, unlined pants with unfinished hem</li>\r\n	<li>Height recommendation: Short (S) = 5&#39;7&quot; and under; Regular (R) = 5&#39;8&quot;-5&#39;11&quot;; Long (L) = 6&#39; and over</li>\r\n	<li>This suit has a 6&quot; drop which is the difference between the size of jacket &amp; pants. For example: a 40R jacket includes a 34W pant</li>\r\n	<li>Click on our size chart above for more sizes and details</li>\r\n	<li>Shell: rayon/polyester/spandex; lining: polyester</li>\r\n	<li>Dry clean</li>\r\n	<li>Imported</li>\r\n</ul>\r\n', 'perry-ellis-men-s-slim-fit-stretch-navy-shawl-collar-tuxedo', 450.5, 'perry-ellis-men-s-slim-fit-stretch-navy-shawl-collar-tuxedo_1547664213.jpg', '2019-01-21', 2),
(43, 11, 'London Fog Signature Wool-Blend Overcoat', '<ul>\r\n	<li>London Fog men&#39;s overcoat</li>\r\n	<li>Notched lapel; three-button placket</li>\r\n	<li>Side pockets</li>\r\n	<li>Four-button cuff</li>\r\n	<li>Interior pockets</li>\r\n	<li>Center vent</li>\r\n	<li>42 inches length</li>\r\n	<li>Medium weight</li>\r\n	<li>Wool/polyester/rayon; Body and Sleeve lining: polyester</li>\r\n	<li>Dry clean</li>\r\n	<li>Imported</li>\r\n</ul>\r\n', 'london-fog-signature-wool-blend-overcoat', 350, 'london-fog-signature-wool-blend-overcoat.jpg', '0000-00-00', 0),
(44, 26, 'Yu-Gi-Oh! Trading Card Game- Yugioh Legendary Dragon Decks Box', '<ul>\r\n	<li>Two 40-card Decks with 11-card Extra Decks!</li>\r\n	<li>One 41-card Deck with a 10-card Extra Deck.</li>\r\n	<li>ariant art of Odd-Eyes Pendulum Dragon, Dark Rebellion Xyz Dragon, Clear Wing Synchro Dragon, and Starving Venom Fusion Dragon</li>\r\n	<li>Each Deck has 5 foil cards</li>\r\n</ul>\r\n', 'yu-gi-oh-trading-card-game-yugioh-legendary-dragon-decks-box', 99.99, 'yu-gi-oh-trading-card-game-yugioh-legendary-dragon-decks-box_1547664321.jpg', '2019-01-21', 5),
(45, 26, 'Yu-Gi-Oh! CCG: Kaiba\'s Collector Box', '<ul>\r\n	<li>Yu-Gi-Oh! CCG: Kaiba&#39;s Collector Box</li>\r\n</ul>\r\n', 'yu-gi-oh-ccg-kaiba-s-collector-box', 99.99, 'yu-gi-oh-ccg-kaiba-s-collector-box.jpg', '2019-01-21', 1),
(46, 26, 'Funko POP Television Sandy Vinyl Figure', '<ul>\r\n	<li>A Nickelodeon Favorite</li>\r\n	<li>SpongeBob Square pants</li>\r\n	<li>Collect them all<br />\r\n	&nbsp;</li>\r\n</ul>\r\n', 'funko-pop-television-sandy-vinyl-figure', 360, 'funko-pop-television-sandy-vinyl-figure_1547664344.jpg', '2019-01-12', 1),
(47, 26, 'LEGO Star Wars Poes X-Wing Fighter 75102 Building Kit', '<ul>\r\n	<li>Build Poe Dameron&rsquo;s signature X-Wing Fighter, featuring four spring-loaded shooters and opening wings</li>\r\n	<li>Featured in Star Wars: Episode VII The Force Awakens</li>\r\n	<li>Includes Poe Dameron, Resistance ground crew, Resistance X-Wing pilot and a BB-8 Astromech Droid</li>\r\n	<li>LEGO Star Wars building toys are compatible with all LEGO construction sets for creative building</li>\r\n	<li>Measures over 4&quot; high, 14&quot; long and 12&quot; wide with wings open, and over 3&quot; high with wings closed</li>\r\n	<li>717 pieces &ndash; For boys and girls between the ages of 8 and 14 years old</li>\r\n</ul>\r\n', 'lego-star-wars-poes-x-wing-fighter-75102-building-kit', 104.5, 'lego-star-wars-poes-x-wing-fighter-75102-building-kit_1547664265.jpg', '2019-01-21', 1),
(48, 20, 'Learning PHP, MySQL & JavaScript With jQuerry, CSS & HTML5', '<p><em><strong>Learning PHP, MySQL &amp; JavaScript With jQuerry, CSS &amp; HTML5 (Learning PHP, MYSQL, Javascript, CSS &amp; HTML5) 5th Edition</strong></em></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Build interactive, data-driven websites with the potent combination of open source technologies and web standards, even if you have only basic HTML knowledge. In this update to this popular hands-on guide, you&rsquo;ll tackle dynamic web programming with the latest versions of today&rsquo;s core technologies: PHP, MySQL, JavaScript, CSS, HTML5, and key jQuery libraries.</p>\r\n\r\n<p>Web designers will learn how to use these technologies together and pick up valuable web programming practices along the way&mdash;including how to optimize websites for mobile devices. At the end of the book, you&rsquo;ll put everything together to build a fully functional social networking site suitable for both desktop and mobile browsers.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>Explore MySQL, from database structure to complex queries</li>\r\n	<li>Use the MySQLi extension, PHP&rsquo;s improved MySQL interface</li>\r\n	<li>Create dynamic PHP web pages that tailor themselves to the user</li>\r\n	<li>Manage cookies and sessions and maintain a high level of security</li>\r\n	<li>Enhance the JavaScript language with jQuery and jQuery mobile libraries</li>\r\n	<li>Use Ajax calls for background browser-server communication</li>\r\n	<li>Style your web pages by acquiring CSS2 and CSS3 skills</li>\r\n	<li>Implement HTML5 features, including geolocation, audio, video, and the canvas element</li>\r\n	<li>Reformat your websites into mobile web apps</li>\r\n</ul>\r\n', 'learning-php-mysql-javascript-jquerry-css-html5', 310, '', '2019-01-16', 2),
(74, 8, 'Acer Aspire E 15, 15.6\" Full HD, 8th Gen Intel Core i3-8130U, 6GB RAM Memory, 1TB HDD, 8X DVD, E5-576-392H', '<ul>\r\n	<li>8th Generation Intel Core i3-8130U Processor (Up to 3.4GHz)</li>\r\n	<li>15.6&quot; Full HD (1920 x 1080) widescreen LED-lit Display</li>\r\n	<li>6GB Dual Channel Memory, 1TB HDD &amp; 8X DVD</li>\r\n	<li>Up to 13.5-hours of battery life</li>\r\n	<li>Windows 10 Home</li>\r\n</ul>\r\n', 'acer-aspire-e-15-15-6-full-hd-8th-gen-intel-core-i3-8130u-6gb-ram-memory-1tb-hdd-8x-dvd-e5-576-392h', 409.99, 'acer-aspire-e-15-15-6-full-hd-8th-gen-intel-core-i3-8130u-6gb-ram-memory-1tb-hdd-8x-dvd-e5-576-392h.jpg', '2019-01-21', 9),
(75, 8, 'GE 4 Device Universal Remote', '<ul>\r\n	<li>Trusted Brand &ndash; GE is the leading brand in universal remote controls</li>\r\n	<li>Multi-device control - Operate up to 4 different Audio and video components such as TVs, Blu-ray/DVD players, cable/satellite receivers, streaming media players, Sound bars and more</li>\r\n	<li>Best remote Code library &ndash; This universal remote works with all major brands and Supports thousands of the latest audio/video equipment. Does not work with Roku streaming stick or Amazon fire TV/stick.</li>\r\n	<li>Simple setup &ndash; includes an easy to follow online setup video and the auto Scan technology provides trouble-free setup</li>\r\n	<li>Master volume control &ndash; allows you to control the volume no matter what device you are operating</li>\r\n</ul>\r\n', 'ge-4-device-universal-remote', 8, 'ge-4-device-universal-remote.jpg', '2019-01-21', 10),
(76, 8, 'Roku Express | Easy High Definition (HD) Streaming Media Player', '<ul>\r\n	<li>Simple setup with an included High Speed HDMI Cable</li>\r\n	<li>Easy-to-use remote, intuitive navigation</li>\r\n	<li>500,000+&nbsp;movies&nbsp;and TV episodes, with&nbsp;voice&nbsp;search across 1,000+ top channels. Plus, catch hit movies, popular shows and more with no subscription or fees on The Roku Channel</li>\r\n	<li>Tons of&nbsp;streaming services&nbsp;available. From movies and series on&nbsp;Netflix,&nbsp;Prime Video, HBO NOW and SHOWTIME&nbsp;to cable alternatives like&nbsp;Sling TV&nbsp;or&nbsp;YouTube TV&nbsp;to live sports and news on&nbsp;CBS News,&nbsp;ABC News&nbsp;and&nbsp;ESPN</li>\r\n	<li>Free Roku mobile app for private listening, voice search and more</li>\r\n</ul>\r\n', 'roku-express-easy-high-definition-hd-streaming-media-player', 30, 'roku-express-easy-high-definition-hd-streaming-media-player.jpg', '0000-00-00', 0),
(77, 8, 'Fire TV Stick with all-new Alexa Voice Remote', '<ul>\r\n	<li>Our best-selling Fire TV Stick, now with the all-new Alexa Voice Remote. Use the dedicated power, volume, and mute buttons to control your TV, soundbar, and receiver.</li>\r\n	<li>Launch and control content with the all-new Alexa Voice Remote. Watch favorites from Netflix, Prime Video, Hulu, STARZ, SHOWTIME, or CBS All Access, plus stream for free with Pluto TV, IMDb Freedive, and others.</li>\r\n	<li>Fire TV Stick devices have more storage for apps and games than any other streaming media stick.</li>\r\n	<li>Experience tens of thousands of channels, apps, and Alexa skills, plus browse millions of websites like YouTube, Facebook, and Reddit using Firefox or Silk.</li>\r\n	<li>Alexa on Fire TV provides the most comprehensive voice experience of any streaming media player&mdash;view live camera feeds, check the weather, dim the lights, and stream music.</li>\r\n	<li>Amazon Prime members get unlimited access to thousands of movies and TV episodes, plus ad-free listening to millions of songs with Prime Music.</li>\r\n	<li>No cable or satellite? No problem. Watch live TV and sports with subscriptions to Hulu, PlayStation Vue, and others.</li>\r\n</ul>\r\n', 'fire-tv-stick-all-new-alexa-voice-remote', 40, 'fire-tv-stick-all-new-alexa-voice-remote.jpg', '0000-00-00', 0),
(78, 8, '4000 Lumens Projector HD LCD Multimedia Video Projector 1080P ', '<ul>\r\n	<li>ã€High Brightness &amp; High Resolutionã€‘: Delivering 4000 lumens of advanced high brightness, supported 1920 x 1080 utra high resolution, creating stunning image quality as you expected, this full HD movie projector is ideal for Home theater, Business Presentation, Education, Engineering and more.</li>\r\n	<li>â—‘ã€Large Screen Home Theaterã€‘: Enjoy your favorite movie on a screen sized between 45 - 200 inches with a projection distance of 1.5 to 5.5m. Broaden your view in a small room, varies from kids cartoon program to high-tech spy film, it&rsquo;s a holy vision feast in your joyful weekends. (60-150&quot; is the perfect projection size)</li>\r\n	<li>â—‘ã€Surround - sound Systemã€‘: With advanced surround-sound technique, the theater projector is able to create a sensation of sound coming from any horizontal direction 360&deg;around you. Extra 10% higher voice than other projectors without stereo sound effect.--------------------â¤ Warmly Note: This projector does not support Dolby Sound. â¤-------------</li>\r\n	<li>â—‘ã€Low Noise and Energy Efficiencyã€‘: Low noise and durable home theater projector due to brilliant fan cooling technology. Lamp life up to 20000hours. Moreover, the advanced bulb design is highly energy efficient, using less energy to enjoy more entertainment.</li>\r\n	<li>â—‘ã€Warmly Customer Serviceã€‘: We&rsquo;re able to offer you a 1-year money back guarantee and lifetime customer service as well as professional technical support. To reach your satisfaction is our ultimate goal. â€ Kindly read the instruction carefully before using the projector. â€ Please don&rsquo;t hesitate to contact us if you have any question about this product.</li>\r\n</ul>\r\n', '4000-lumens-projector-hd-lcd-multimedia-video-projector-1080p', 200, '4000-lumens-projector-hd-lcd-multimedia-video-projector-1080p.jpg', '0000-00-00', 0),
(79, 8, 'AbergBest 21 Mega Pixels 2.7\" LCD Rechargeable HD Digital Camera', '<ul>\r\n	<li>Newest software is updated! The applicable uses for this digital camera: digital still images, web Cam, play back, video record, voice reord and so on.</li>\r\n	<li>2.7&quot; Tft LCD display show you vivid video, 550mAh lithium Ion (li-ion) rechargeable battery can Support camera works more than 60 minutes.</li>\r\n	<li>21 Mega pixels resolution for good capture, HD 720P resolution for recording, create your HD masterpiece! Support external-memory max 64G SD card. ( not included )</li>\r\n	<li>Anti-shake, face detect, smile capture, continue shot, self timer, 8x digital zoom, photags express software for photo editing, printing, and sharing with e-mails, etc.</li>\r\n	<li>Satisfaction , you&#39;ll love this video camera digital or you&#39;ll get your money back!</li>\r\n</ul>\r\n', 'abergbest-21-mega-pixels-2-7-lcd-rechargeable-hd-digital-camera', 40, 'abergbest-21-mega-pixels-2-7-lcd-rechargeable-hd-digital-camera.jpg', '0000-00-00', 0),
(80, 8, 'Projector, GooDee Video Projector Outdoor Movie Projector,', '<ul>\r\n	<li>EXCELLENT IN BRIGHTNESS: Compared to other small projectors on the market, we have an absolute advantage in both brightness and clarity. Adding 80% better brightness than other projectors (2200 lux), which can provide a brighter &amp; wider viewing even in slight light especially in the outdoor place such as backyard, garage.</li>\r\n	<li>HIGH RESOLUTIONE &amp; 1080P SUPPORTED: Experiencing the home cinematic theater with GooDee new upgraded YG600 projector 1280*768P (normally projector is 480P), which could offer a ultra accurate &amp; vivid video quality. Ideal for projecting movie, games, presentations and graphics.</li>\r\n	<li>ENJOY BIG SCREEN with LCD TECHNOLOGY LIGHT SOURCE &mdash;Projection size: 44-200 inches with distance 4.9-18 feet, the shortest distance to focus is 4.9 feet, and the best viewing distance is 10 feet with 98 inch; GooDee home projector utilizes LED light source and LCD display technology, this ensures lower energy than conventional bulbs and also longer life.</li>\r\n	<li>LOW FAN SOUND &amp; UPDATED HIFI LEVEL STEREO AUDIO &mdash;GooDee video projector comes with a powerful cooling system that provides AWESOME HEAT DISPERSION and LOWER NOISE due to an improved fan design and the application of innovative materials. Complete your home entertainment experience with 2 powerful built-in 3W speaker. This speaker provides powerful, crystal clear sound quality without the need for costly external speakers.</li>\r\n	<li>FACTORY LEADING WARRANTY &mdash;GooDee provides 3 year warranty for the projector. If you&#39;re not completely satisfied with the order, please let us know and you&#39;ll be offered a refund or replacement alternatively within the first 2 months. Absolutely RISK -FREE purchase for you.</li>\r\n</ul>\r\n', 'projector-goodee-video-projector-outdoor-movie-projector', 200, 'projector-goodee-video-projector-outdoor-movie-projector.jpg', '0000-00-00', 0),
(81, 8, 'Portable Projector -12000 lumens WiFi 1080p', '<ul>\r\n	<li>Bright Video Projector: GAOAG has upgraded our projector again in 2018, 12000 lumens led light utilization efficiency (LED MAX), 200w high power lamp, Higher level 5.8 &quot;TFI panel ,native 1280x800 support 1080p full hd, The upgraded projector More accurate, vivid color, even in day &mdash; No impact watch movies directly.</li>\r\n	<li>TOP-NOTCH VIEWING EXPERIENCE: Offering a 60&rdquo;-500&quot; display size at a distance of between 2-10m, this projector provides you with a superior home-viewing experience. By placing the projector at an optimum distance of about 4 to 6m, it will display a super-clear and bright 120&rdquo;-250&rdquo; image.</li>\r\n	<li>Multiple Connections: Interfaces-VGA/USB/HDMI/RJ45/AV/3.5mm Audio. Video led projector connect perfectly to PC / laptop / Set top box/ / DVD/ PS3 / PS4/ Xbox/ via HDMI input; connect headphone/outer speaker via Audio port; connect U-disk/ hard disk device via USB port; connect wifi signal directly.</li>\r\n	<li>LOW NOISE &amp; ENERGY EFFICIENT: The projector is lower in noise and more durable than previous models thanks to advanced fan cooling technology. Moreover, the advanced bulb design is highly energy efficient, thereby using less energy.</li>\r\n	<li>100% Satisfaction Guarantee - GAOAG team offers every customer 100% satisfaction guarantee. You can order it without any risks. If you meet any operation difficulties or quality issues, you can contact our professional technical team for help. Please rest assured.</li>\r\n</ul>\r\n', 'portable-projector-12000-lumens-wifi-1080p', 250, 'portable-projector-12000-lumens-wifi-1080p.jpg', '0000-00-00', 0),
(82, 8, 'Marshall Major II Bluetooth On-Ear Headphones', '<ul>\r\n	<li>Bluetooth aptX gives you the freedom and convenience of a wireless headphone combined with over 50 years of tried and true Marshall performance.</li>\r\n	<li>The Major II Bluetooth keeps the music going strong with over 30 hours of play time on a single charge. This is above the industry standard. Time to full recharge: 6 Hours</li>\r\n	<li>With the analogue control knob you can play, pause, shuffle and adjust the volume. Phone functionality is also included so you can answer, reject or end a call with a few simple clicks.</li>\r\n	<li>40mm dynamic drivers are custom tuned for excellent bass response, smooth mids and screaming highs.</li>\r\n	<li>The Major II is the perfect travel companion. Its collapsible design makes it easy to store when not in use. A detachable 3.5mm cord and USB charging cable comes with the Major II Bluetooth. In case you find yourself low on power, just plug in the USB cable to recharge.</li>\r\n</ul>\r\n', 'marshall-major-ii-bluetooth-ear-headphones', 150, 'marshall-major-ii-bluetooth-ear-headphones.jpg', '0000-00-00', 0);

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
  `status` int(1) NOT NULL DEFAULT '1',
  `activate_code` varchar(15) NOT NULL,
  `reset_code` varchar(15) NOT NULL,
  `created_on` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `type`, `firstname`, `lastname`, `address`, `contact_info`, `photo`, `status`, `activate_code`, `reset_code`, `created_on`) VALUES
(1, 'admin@admin.com', '$2y$10$0SHFfoWzz8WZpdu9Qw//E.tWamILbiNCX7bqhy3od0gvK5.kSJ8N2', 1, 'Admin', 'The Merchant', '', '', 'merchant1.png', 1, '', '', '2018-05-01'),
(13, 'barca_losers@yahoo.com', '$2y$10$9L3hL0RyxncHecSCvrbtfeeTvWqKzpLGC2mkeXhsKvbffhLtCck/m', 0, 'Daniel', 'Realmadrid', '', '', '', 1, 'Vc8fMgjnFlQC', '', '2019-01-12'),
(14, 'real_kings@yahoo.com', '$2y$10$.vo0RjWlBkIg10dW.VHDuelFRBV4cLR..CKaG1Y9RDkP8lBdaY.0C', 0, 'Nikola', 'RealMadrid', '', '', '', 1, 'Nuz652IVE8WF', '', '2019-01-12'),
(15, 'jack_bauer@hotmail.com', '$2y$10$N/sQ1fzjF1eTvhc28QMS0OQXBSBtYjzIVAxVLmc5qc4YcjVJdlUWe', 0, 'jack', 'bauer', '', '', '', 1, 'N125FSVWfwIC', '', '2019-01-12'),
(16, 'real_madrid@yahoo.com', '$2y$10$Hb9buDgiaNy3FoUpmjehIOS7egWdyXAjiGfVMwRiPAXD1j2.u5SbO', 0, 'kiko', 'casilla', '', '', '', 1, 'jGt2mTRys7AM', '', '2019-01-16'),
(17, 'fikomk46@gmail.com', '$2y$10$oQiu/r1KarJTYNXLmz4c8OXcEdMsCf65PW/cFkEF4xyIpwWXcwkNC', 0, 'Filip', 'Nekoj', '', '', '', 1, 'KvlIOkVtLwjB', '', '2019-01-21');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `details`
--
ALTER TABLE `details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
