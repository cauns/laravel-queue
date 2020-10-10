/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 100411
 Source Host           : localhost:3306
 Source Schema         : q1

 Target Server Type    : MySQL
 Target Server Version : 100411
 File Encoding         : 65001

 Date: 10/10/2020 08:10:16
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp(0) NOT NULL DEFAULT current_timestamp(0),
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `failed_jobs_uuid_unique`(`uuid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------
INSERT INTO `failed_jobs` VALUES (1, 'a45b6e82-dab6-41a2-9ced-4bb6173225b2', 'database', 'default', '{\"uuid\":\"a45b6e82-dab6-41a2-9ced-4bb6173225b2\",\"displayName\":\"App\\\\Jobs\\\\SendWelcomeEmail\",\"job\":\"Illuminate\\\\Queue\\\\CallQueuedHandler@call\",\"maxTries\":null,\"maxExceptions\":null,\"backoff\":null,\"timeout\":null,\"retryUntil\":null,\"data\":{\"commandName\":\"App\\\\Jobs\\\\SendWelcomeEmail\",\"command\":\"O:25:\\\"App\\\\Jobs\\\\SendWelcomeEmail\\\":9:{s:3:\\\"job\\\";N;s:10:\\\"connection\\\";N;s:5:\\\"queue\\\";N;s:15:\\\"chainConnection\\\";N;s:10:\\\"chainQueue\\\";N;s:19:\\\"chainCatchCallbacks\\\";N;s:5:\\\"delay\\\";N;s:10:\\\"middleware\\\";a:0:{}s:7:\\\"chained\\\";a:0:{}}\"}}', 'InvalidArgumentException: View [view.name] not found. in D:\\xampp\\htdocs\\q1\\vendor\\laravel\\framework\\src\\Illuminate\\View\\FileViewFinder.php:137\nStack trace:\n#0 D:\\xampp\\htdocs\\q1\\vendor\\laravel\\framework\\src\\Illuminate\\View\\FileViewFinder.php(79): Illuminate\\View\\FileViewFinder->findInPaths(\'view.name\', Array)\n#1 D:\\xampp\\htdocs\\q1\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Factory.php(138): Illuminate\\View\\FileViewFinder->find(\'view.name\')\n#2 D:\\xampp\\htdocs\\q1\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(382): Illuminate\\View\\Factory->make(\'view.name\', Array)\n#3 D:\\xampp\\htdocs\\q1\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(355): Illuminate\\Mail\\Mailer->renderView(\'view.name\', Array)\n#4 D:\\xampp\\htdocs\\q1\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(273): Illuminate\\Mail\\Mailer->addContent(Object(Illuminate\\Mail\\Message), \'view.name\', NULL, NULL, Array)\n#5 D:\\xampp\\htdocs\\q1\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(177): Illuminate\\Mail\\Mailer->send(\'view.name\', Array, Object(Closure))\n#6 D:\\xampp\\htdocs\\q1\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Traits\\Localizable.php(19): Illuminate\\Mail\\Mailable->Illuminate\\Mail\\{closure}()\n#7 D:\\xampp\\htdocs\\q1\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailable.php(178): Illuminate\\Mail\\Mailable->withLocale(NULL, Object(Closure))\n#8 D:\\xampp\\htdocs\\q1\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(304): Illuminate\\Mail\\Mailable->send(Object(Illuminate\\Mail\\Mailer))\n#9 D:\\xampp\\htdocs\\q1\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\Mailer.php(258): Illuminate\\Mail\\Mailer->sendMailable(Object(App\\Mail\\WelcomeEmail))\n#10 D:\\xampp\\htdocs\\q1\\vendor\\laravel\\framework\\src\\Illuminate\\Mail\\PendingMail.php(122): Illuminate\\Mail\\Mailer->send(Object(App\\Mail\\WelcomeEmail))\n#11 D:\\xampp\\htdocs\\q1\\app\\Jobs\\SendWelcomeEmail.php(35): Illuminate\\Mail\\PendingMail->send(Object(App\\Mail\\WelcomeEmail))\n#12 [internal function]: App\\Jobs\\SendWelcomeEmail->handle()\n#13 D:\\xampp\\htdocs\\q1\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): call_user_func_array(Array, Array)\n#14 D:\\xampp\\htdocs\\q1\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#15 D:\\xampp\\htdocs\\q1\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(95): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#16 D:\\xampp\\htdocs\\q1\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(39): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#17 D:\\xampp\\htdocs\\q1\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(596): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#18 D:\\xampp\\htdocs\\q1\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(128): Illuminate\\Container\\Container->call(Array)\n#19 D:\\xampp\\htdocs\\q1\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Bus\\Dispatcher->Illuminate\\Bus\\{closure}(Object(App\\Jobs\\SendWelcomeEmail))\n#20 D:\\xampp\\htdocs\\q1\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\SendWelcomeEmail))\n#21 D:\\xampp\\htdocs\\q1\\vendor\\laravel\\framework\\src\\Illuminate\\Bus\\Dispatcher.php(132): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#22 D:\\xampp\\htdocs\\q1\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(85): Illuminate\\Bus\\Dispatcher->dispatchNow(Object(App\\Jobs\\SendWelcomeEmail), false)\n#23 D:\\xampp\\htdocs\\q1\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(128): Illuminate\\Queue\\CallQueuedHandler->Illuminate\\Queue\\{closure}(Object(App\\Jobs\\SendWelcomeEmail))\n#24 D:\\xampp\\htdocs\\q1\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(103): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(App\\Jobs\\SendWelcomeEmail))\n#25 D:\\xampp\\htdocs\\q1\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(87): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#26 D:\\xampp\\htdocs\\q1\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\CallQueuedHandler.php(60): Illuminate\\Queue\\CallQueuedHandler->dispatchThroughMiddleware(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(App\\Jobs\\SendWelcomeEmail))\n#27 D:\\xampp\\htdocs\\q1\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Jobs\\Job.php(98): Illuminate\\Queue\\CallQueuedHandler->call(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Array)\n#28 D:\\xampp\\htdocs\\q1\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(406): Illuminate\\Queue\\Jobs\\Job->fire()\n#29 D:\\xampp\\htdocs\\q1\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(356): Illuminate\\Queue\\Worker->process(\'database\', Object(Illuminate\\Queue\\Jobs\\DatabaseJob), Object(Illuminate\\Queue\\WorkerOptions))\n#30 D:\\xampp\\htdocs\\q1\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Worker.php(158): Illuminate\\Queue\\Worker->runJob(Object(Illuminate\\Queue\\Jobs\\DatabaseJob), \'database\', Object(Illuminate\\Queue\\WorkerOptions))\n#31 D:\\xampp\\htdocs\\q1\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(116): Illuminate\\Queue\\Worker->daemon(\'database\', \'default\', Object(Illuminate\\Queue\\WorkerOptions))\n#32 D:\\xampp\\htdocs\\q1\\vendor\\laravel\\framework\\src\\Illuminate\\Queue\\Console\\WorkCommand.php(100): Illuminate\\Queue\\Console\\WorkCommand->runWorker(\'database\', \'default\')\n#33 [internal function]: Illuminate\\Queue\\Console\\WorkCommand->handle()\n#34 D:\\xampp\\htdocs\\q1\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(37): call_user_func_array(Array, Array)\n#35 D:\\xampp\\htdocs\\q1\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Util.php(40): Illuminate\\Container\\BoundMethod::Illuminate\\Container\\{closure}()\n#36 D:\\xampp\\htdocs\\q1\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(95): Illuminate\\Container\\Util::unwrapIfClosure(Object(Closure))\n#37 D:\\xampp\\htdocs\\q1\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\BoundMethod.php(39): Illuminate\\Container\\BoundMethod::callBoundMethod(Object(Illuminate\\Foundation\\Application), Array, Object(Closure))\n#38 D:\\xampp\\htdocs\\q1\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(596): Illuminate\\Container\\BoundMethod::call(Object(Illuminate\\Foundation\\Application), Array, Array, NULL)\n#39 D:\\xampp\\htdocs\\q1\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(136): Illuminate\\Container\\Container->call(Array)\n#40 D:\\xampp\\htdocs\\q1\\vendor\\symfony\\console\\Command\\Command.php(258): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#41 D:\\xampp\\htdocs\\q1\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Command.php(121): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Illuminate\\Console\\OutputStyle))\n#42 D:\\xampp\\htdocs\\q1\\vendor\\symfony\\console\\Application.php(920): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#43 D:\\xampp\\htdocs\\q1\\vendor\\symfony\\console\\Application.php(266): Symfony\\Component\\Console\\Application->doRunCommand(Object(Illuminate\\Queue\\Console\\WorkCommand), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#44 D:\\xampp\\htdocs\\q1\\vendor\\symfony\\console\\Application.php(142): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#45 D:\\xampp\\htdocs\\q1\\vendor\\laravel\\framework\\src\\Illuminate\\Console\\Application.php(93): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#46 D:\\xampp\\htdocs\\q1\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(129): Illuminate\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#47 D:\\xampp\\htdocs\\q1\\artisan(37): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#48 {main}', '2020-10-09 13:54:26');

-- ----------------------------
-- Table structure for jobs
-- ----------------------------
DROP TABLE IF EXISTS `jobs`;
CREATE TABLE `jobs`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED NULL DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `jobs_queue_index`(`queue`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of jobs
-- ----------------------------

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` VALUES (3, '2019_08_19_000000_create_failed_jobs_table', 1);
INSERT INTO `migrations` VALUES (4, '2020_10_09_020146_create_jobs_table', 1);

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets`  (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `password_resets_email_index`(`email`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp(0) NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
