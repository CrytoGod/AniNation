-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 14, 2025 at 05:38 PM
-- Server version: 8.3.0
-- PHP Version: 8.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: ani-nation
--

-- --------------------------------------------------------

--
-- Table structure for table comments
--

CREATE TABLE comments (
  id int NOT NULL,
  comment_name varchar(50) NOT NULL,
  comment_brief varchar(1500) NOT NULL,
  created_at timestamp NOT NULL,
  updated_at timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table comments
--

INSERT INTO comments (id, comment_name, comment_brief, created_at, updated_at) VALUES
(1, 'KaijuSpree', 'Ubel Blatt is an absolute masterpiece! The intense revenge-driven plot, the deep character development, and those insane battles—this series is a rollercoaster of emotions! Every twist hits hard, and the world-building is top-tier. If you haven\'t seen it yet, you’re seriously missing out!', '2025-04-08 23:36:20', '2025-04-08 23:36:20'),
(2, 'Nikki Mato', 'Okay, Attack on Titan is on another level! The pacing, the plot twists, the emotional rollercoaster—it’s mind-blowing! From the first episode, you’re hooked, and every season just gets better. The stakes are insane, and don’t even get me started on the characters—Levi, Mikasa, and Eren’s journey is just legendary. Must-watch, 10/10!', '2025-04-09 00:21:11', '2025-04-09 00:21:11');

-- --------------------------------------------------------

--
-- Table structure for table movies
--

CREATE TABLE movies (
  mov_id int NOT NULL,
  mov_name varchar(800) COLLATE utf8mb4_general_ci NOT NULL,
  mov_poster varchar(800) COLLATE utf8mb4_general_ci NOT NULL,
  mov_brief varchar(800) COLLATE utf8mb4_general_ci NOT NULL,
  created_at timestamp NOT NULL,
  updated_at timestamp NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table movies
--

INSERT INTO movies (mov_id, mov_name, mov_poster, mov_brief, created_at, updated_at) VALUES
(1, 'ameku-md-doctor', 'ameku-md-doctor.png', 'In a remote village, Ameku, a passionate young doctor, challenges deep-rooted traditions and corruption to introduce modern medicine, heal the sick, and inspire change in a divided community.', '2025-04-08 23:19:08', '2025-04-08 23:19:08'),
(2, 'ave-mujica', 'ave-mujica.png', 'Ave Mujica, a fearless war correspondent, risks her life to expose hidden truths, navigating danger, betrayal, and survival while uncovering a conspiracy that could change the course of history forever.', '2025-04-08 23:27:24', '2025-04-08 23:27:24'),
(3, 'dbz-daima', 'dbz-daima.png', 'In DBZ: Daima, Goku and friends are mysteriously turned into kids, embarking on a new adventure across realms to uncover the cause and protect the universe from an ancient, hidden threat.', '2025-04-08 23:27:24', '2025-04-08 23:27:24'),
(4, 'dr-stone', 'dr-stone.png', 'After a mysterious phenomenon petrifies humanity, genius teen Senku awakens thousands of years later and uses science to rebuild civilization from scratch in a world reclaimed by nature.', '2025-04-08 23:27:24', '2025-04-08 23:27:24'),
(5, 'farmagica', 'farmagica.png', 'In Farmagica, a young herbalist discovers a hidden world where farming meets magic, cultivating enchanted crops to heal lands, battle dark forces, and uncover her family\'s mystical legacy.', '2025-04-08 23:27:24', '2025-04-08 23:27:24'),
(6, 'from-bureaucrat', 'from-bureaucrat.png', 'In From Bureaucrat, a burnt-out office worker is reincarnated in a fantasy realm—using admin skills and red tape mastery to reform kingdoms, outwit nobles, and bring order to chaos.', '2025-04-08 23:27:24', '2025-04-08 23:27:24'),
(7, 'honey-lemon-soda', 'honey-lemon-soda.png', 'In Honey Lemon Soda, shy and self-conscious Uka meets bubbly, rebellious Kai, whose zest for life helps her break free from her shell and discover confidence, friendship, and first love.', '2025-04-08 23:27:24', '2025-04-08 23:27:24'),
(8, 'i-may-be-a-guild', 'i-may-be-a-guild.png', 'In I May Be a Guild Receptionist, But I\'ll Solo Any Boss, Alina hides her elite skills behind a desk job—until danger forces her to reveal her true, overpowered strength.', '2025-04-08 23:27:24', '2025-04-08 23:27:24'),
(9, 'ishura', 'ishura.png', 'In Ishura, the Demon King\'s death sparks a fierce battle among powerful warriors, each vying to become the next true hero in a world teetering on chaos and legend.', '2025-04-08 23:27:24', '2025-04-08 23:27:24'),
(10, 'my-marriage', 'my-marriage.png', 'In My Marriage, a young couple faces unexpected trials and growth as they navigate the complexities of love, career, and personal identity, discovering what it truly means to build a life together.', '2025-04-08 23:27:24', '2025-04-08 23:27:24'),
(11, 'one-peice 1', 'one-peice 1.png', 'In One Piece, aspiring pirate Monkey D. Luffy embarks on an epic journey with his crew to find the legendary treasure, the One Piece, and become the King of Pirates.', '2025-04-08 23:27:24', '2025-04-08 23:27:24'),
(12, 'sakomoto', 'sakomoto.png', 'In Sakamoto Days, former legendary assassin Taro Sakamoto retires to live a peaceful life as a convenience store owner, but his past catches up, forcing him to protect his family and friends.', '2025-04-08 23:27:24', '2025-04-08 23:27:24'),
(13, 'solo-leveling', 'solo-leveling.png', 'In Solo Leveling, weak hunter Sung Jin-Woo gains the ability to level up alone after a near-death encounter, becoming the world’s strongest hunter while uncovering dark secrets behind the dungeons.', '2025-04-08 23:27:24', '2025-04-08 23:27:24'),
(14, 'the-apothecary', 'the-apothecary.png', 'In The Apothecary, a skilled young healer in a medieval kingdom must use her knowledge of rare herbs and potions to uncover a deadly conspiracy, save her village, and protect her secret past.', '2025-04-08 23:27:24', '2025-04-08 23:27:24'),
(15, 'the-box', 'the-box.png', 'In The Box, a group of strangers receives a mysterious, unopenable box that promises to fulfill their deepest desires—but unlocking its secret could come at a dangerous, life-altering cost.', '2025-04-08 23:33:55', '2025-04-08 23:33:55'),
(16, 'the-daily-life-of-a', 'the-daily-life-of-a.png', 'In The Daily Life of a high school student, ordinary tasks like studying, making friends, and navigating relationships take unexpected turns as the protagonist discovers hidden talents and faces quirky challenges.', '2025-04-08 23:33:55', '2025-04-08 23:33:55'),
(17, 'touha', 'touha.png', 'In Touha, a young warrior with mysterious powers embarks on a quest to uncover the truth behind her heritage, facing fierce enemies and forming unlikely alliances in a world on the brink of war.', '2025-04-08 23:33:55', '2025-04-08 23:33:55'),
(18, 'trillion-game', 'trillion-game.png', 'In Trillion Game, two ambitious individuals with different goals team up to conquer the business world, facing ruthless competitors, strategic challenges, and personal growth, all while building an empire from scratch.', '2025-04-08 23:33:55', '2025-04-08 23:33:55'),
(19, 'Ubel Blatt', 'ubel-blatt.png', 'In Ubel Blatt, a vengeful warrior, once betrayed by his comrades, returns to seek revenge and uncover the truth behind a treacherous plot, navigating a world filled with corruption, dark magic, and intense battles.', '2025-04-08 23:33:55', '2025-04-08 23:33:55');

--
-- Indexes for dumped tables
--

--
-- Indexes for table comments
--
ALTER TABLE comments
  ADD PRIMARY KEY (id);

--
-- Indexes for table movies
--
ALTER TABLE movies
  ADD PRIMARY KEY (mov_id);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table comments
--
ALTER TABLE comments
  MODIFY id int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table movies
--
ALTER TABLE movies
  MODIFY mov_id int NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
