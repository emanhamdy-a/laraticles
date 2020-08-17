-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 17, 2020 at 06:09 AM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_vue`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `title`, `body`, `created_at`, `updated_at`) VALUES
(1, 'Accusantium aut et ut ab omnis ex ratione.', 'Laborum delectus dicta velit rerum eaque doloremque. Architecto dolore eius rem odit.', '2020-08-06 17:17:55', '2020-08-06 17:17:55'),
(2, 'Voluptas esse optio architecto perferendis.', 'Dignissimos omnis eos dolores. Maxime voluptatibus provident doloremque culpa optio. Dolorem placeat sed ea temporibus ipsam consequatur at.', '2020-08-06 17:17:55', '2020-08-06 17:17:55'),
(3, 'Sit aut eligendi autem nulla sed nostrum.', 'Velit maiores aspernatur et est. Voluptatem itaque in rerum voluptatem qui. Sed quam voluptas et fugit delectus. Numquam corrupti minima temporibus sed sit aut.', '2020-08-06 17:17:55', '2020-08-06 17:17:55'),
(4, 'Libero nihil consectetur commodi ab.', 'Distinctio provident praesentium consectetur qui error. Vitae nam architecto magni vitae totam.', '2020-08-06 17:17:55', '2020-08-06 17:17:55'),
(5, 'Dolor autem voluptates et aut quia.', 'Ipsum fuga ea ea sit cum enim ut. Voluptatum debitis nesciunt debitis consequuntur. Sunt aut deleniti aut officia odit consequatur animi.', '2020-08-06 17:17:55', '2020-08-06 17:17:55'),
(6, 'Sunt placeat rem voluptas fuga et neque ut.', 'Ex incidunt sed doloremque. Saepe aperiam ad quia voluptatem vitae et. Qui eaque optio rerum mollitia.', '2020-08-06 17:17:55', '2020-08-06 17:17:55'),
(7, 'Sapiente qui et quasi eligendi repellendus nihil.', 'Iure in vel eos qui accusamus corporis fugit aut. Fuga est est autem omnis sint eos. Sed omnis non quos. A eum voluptatum ut ut cupiditate optio sapiente.', '2020-08-06 17:17:55', '2020-08-06 17:17:55'),
(8, 'Et incidunt quisquam molestias autem ullam.', 'Illo quia ex eos enim cumque harum nisi. Nam unde aut quos corrupti id. Accusantium unde repudiandae fugiat quis sunt impedit.', '2020-08-06 17:17:55', '2020-08-06 17:17:55'),
(9, 'Voluptate ea aliquid sed unde vero et sit.', 'Eius alias corporis occaecati. Harum nulla veritatis autem sint modi sunt provident. Ut officiis et quis ut reprehenderit autem perspiciatis.', '2020-08-06 17:17:55', '2020-08-06 17:17:55'),
(10, 'Sed aut autem voluptatem reprehenderit sint.', 'Nihil rem aperiam debitis et. Esse et facilis aut iste. Reprehenderit earum iste ut error sunt.', '2020-08-06 17:17:55', '2020-08-06 17:17:55'),
(11, 'Est vitae minima vitae enim quia omnis harum.', 'Optio eos est eligendi natus sunt. Dicta est dolore et illo quia sunt. Est cumque praesentium aut culpa amet. Magnam esse aut reiciendis necessitatibus vel fugit. A quia illum reprehenderit.', '2020-08-06 17:17:55', '2020-08-06 17:17:55'),
(12, 'Quidem tenetur eius ipsa eum possimus.', 'Accusantium reiciendis fugit voluptas omnis quam eius. Maxime nihil est enim illo quia.', '2020-08-06 17:17:55', '2020-08-06 17:17:55'),
(13, 'Dolorem iste veniam error.', 'Tempora sequi ut et adipisci corrupti quia hic. Sint rerum animi earum est dolore. Voluptatem quia soluta sint quam. Omnis explicabo magni quis reiciendis aspernatur illum.', '2020-08-06 17:17:55', '2020-08-06 17:17:55'),
(14, 'Deleniti impedit assumenda illum.', 'Sint ducimus eum autem totam. Aspernatur veritatis sit ducimus. Dolores veritatis ut perferendis quaerat asperiores non. Hic ut ratione sed perspiciatis quia.', '2020-08-06 17:17:55', '2020-08-06 17:17:55'),
(15, 'Ipsum saepe consequatur ut quia rem dignissimos.', 'Commodi voluptatem consequatur neque. Molestiae et explicabo qui esse nam rem mollitia. Sed est autem magnam est deleniti. Nesciunt quam nisi et veniam.', '2020-08-06 17:17:55', '2020-08-06 17:17:55'),
(16, 'Voluptas pariatur quasi quia et.', 'Harum dolor aperiam dignissimos est voluptatibus quis dolores. Adipisci numquam perferendis aut ut quasi dolore est nulla. Sapiente soluta et perspiciatis qui.', '2020-08-06 17:17:55', '2020-08-06 17:17:55'),
(17, 'Facere ab quo officiis voluptatem.', 'Est provident non eos sed illo error. Enim eveniet distinctio aut dolorum officia ut. Ullam magni iure id a dolor libero vitae. Provident numquam ut illum tempore ipsum.', '2020-08-06 17:17:55', '2020-08-06 17:17:55'),
(18, 'Ut aut laudantium qui et.', 'Non possimus commodi provident perferendis et inventore quae. Quam consequuntur natus sunt incidunt voluptates. Quibusdam aut expedita omnis totam.', '2020-08-06 17:17:55', '2020-08-06 17:17:55'),
(19, 'Placeat et est atque vero non.', 'Est qui facere temporibus distinctio provident ut hic. Nihil aliquam ut doloremque ducimus et provident similique sint. Iste in beatae sed est voluptate sit similique animi.', '2020-08-06 17:17:55', '2020-08-06 17:17:55'),
(20, 'Ex doloremque sed incidunt ea dignissimos.', 'Nisi fugit voluptatem similique velit nobis tempora esse. Rerum qui est aut qui inventore veritatis. Est quisquam quisquam blanditiis sit.', '2020-08-06 17:17:55', '2020-08-06 17:17:55'),
(21, 'Dolores libero fugit illo quae rerum.', 'Et est rerum molestiae cupiditate. Velit ipsa sunt eaque nemo voluptas enim. Temporibus qui voluptatibus praesentium et. Repudiandae voluptatem quae illum unde inventore voluptatem.', '2020-08-06 17:17:56', '2020-08-06 17:17:56'),
(22, 'Est fugiat et magni occaecati sed at.', 'Reiciendis quisquam ea quo dolorem. Eligendi tempora vel totam eos dolore molestiae. Esse possimus eos sunt omnis dolorem sit expedita. Voluptas numquam ea sed commodi assumenda.', '2020-08-06 17:17:56', '2020-08-06 17:17:56'),
(23, 'Et qui incidunt atque.', 'Nesciunt iusto voluptatem iusto quasi sint. Voluptas doloribus distinctio voluptatem et numquam qui. Eligendi voluptas cupiditate ut animi. Officiis quos ea mollitia itaque.', '2020-08-06 17:17:56', '2020-08-06 17:17:56'),
(24, 'Voluptates eveniet velit aut minus et.', 'Earum eum cum totam tempora assumenda. Eius itaque esse et est qui expedita. Tempora ad impedit enim sit dolorem. Deleniti voluptatem accusantium qui odio commodi voluptatem.', '2020-08-06 17:17:56', '2020-08-06 17:17:56'),
(25, 'Odit incidunt soluta in ut ut amet.', 'Sit eveniet consectetur maiores et nam. Reiciendis impedit minus architecto sed. Ex quaerat voluptas vero commodi commodi. Rerum et inventore impedit quis illum sed qui quis.', '2020-08-06 17:17:56', '2020-08-06 17:17:56'),
(26, 'Quis aut blanditiis et ut in architecto mollitia.', 'Qui maxime et qui. Delectus aperiam unde ipsam sed consectetur optio magnam. Perspiciatis omnis sint adipisci delectus recusandae cumque cumque fuga.', '2020-08-06 17:17:56', '2020-08-06 17:17:56'),
(27, 'Sit adipisci enim porro repudiandae quis quia.', 'Sit aperiam tenetur error sunt iusto animi. Unde distinctio ut dolores quod est perferendis culpa. Dignissimos aperiam nam est nihil voluptate nam quaerat.', '2020-08-06 17:17:56', '2020-08-06 17:17:56'),
(28, 'Est qui perferendis voluptate asperiores et.', 'Eaque commodi molestiae accusantium. Consequatur dolores dolorem culpa nesciunt pariatur tempora in. Assumenda asperiores atque ea sunt. Pariatur ad sapiente quibusdam praesentium minus optio error.', '2020-08-06 17:17:56', '2020-08-06 17:17:56'),
(29, 'Ad ut esse nihil quia ipsam minus.', 'Tempora et et officia nihil. Rerum magnam vero veritatis assumenda. Repellendus sed dolores aut doloribus molestiae tempora vero. Aut quis aut sed.', '2020-08-06 17:17:56', '2020-08-06 17:17:56'),
(30, 'Repellendus ut accusamus natus et aspernatur.', 'Doloremque voluptates ex sit dolores omnis. Quas dolorum sapiente temporibus sed ex dolore ab totam. Qui sit vel neque veniam similique consequatur repellat. Voluptates deleniti quos voluptatem.', '2020-08-06 17:17:56', '2020-08-06 17:17:56');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
