-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 06, 2020 at 11:28 PM
-- Server version: 10.2.32-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `first`
--

-- --------------------------------------------------------

--
-- Table structure for table `feedbacks`
--

CREATE TABLE `feedbacks` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_solved` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `feedbacks`
--

INSERT INTO `feedbacks` (`id`, `name`, `email`, `message`, `is_solved`, `created_at`, `updated_at`) VALUES
(3, 'Abdullah', 'abdul@host.com', 'Hi, how can I visit ?', 1, '2020-04-03 08:18:56', '2020-04-09 17:42:01'),
(4, 'Hossain', 'abdul@host.com', 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).', 1, '2020-04-03 08:25:36', '2020-04-14 21:09:29'),
(6, 'Master', 'master@aliexposhop.com', 'How is the business going?', 1, '2020-04-03 20:16:43', '2020-04-14 21:09:26'),
(7, 'আব্দুল মালেক', 'malek@domain.com', 'How are you managing deliveries in current situation? আমি কি এখন অর্ডার দিলে প্রোডাক্ট পাবো?', 1, '2020-04-04 11:46:35', '2020-04-07 19:11:17');

-- --------------------------------------------------------

--
-- Table structure for table `geotrack`
--

CREATE TABLE `geotrack` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `addr` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `continent` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `org` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isp` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `timezone` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_login` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `geotrack`
--

INSERT INTO `geotrack` (`id`, `addr`, `continent`, `country`, `org`, `isp`, `lang`, `currency`, `timezone`, `last_login`, `created_at`, `updated_at`) VALUES
(1, '103.136.200.16', 'Asia (AS)', 'Bangladesh (BD)', 'Polly IT', 'Polly IT', 'bn-BD,en', 'Bangladeshi Taka', 'Asia/Dhaka', 1583255347, NULL, NULL),
(2, '42.0.4.251', 'Asia (AS)', 'Bangladesh (BD)', 'Axiata (Bangladesh) Limited', 'AXIATA', 'bn-BD,en', 'Bangladeshi Taka', 'Asia/Dhaka', 1579791630, NULL, NULL),
(5, '66.220.149.48', 'North America (NA)', 'United States (US)', 'Facebook, Inc.', 'Facebook, Inc.', 'en-US,es-US,haw,fr', 'US Dollar', 'America/New_York', 1579794663, NULL, NULL),
(6, '66.220.149.10', 'North America (NA)', 'United States (US)', 'Facebook, Inc.', 'Facebook, Inc.', 'en-US,es-US,haw,fr', 'US Dollar', 'America/New_York', 1579794663, NULL, NULL),
(7, '37.111.199.66', 'Asia (AS)', 'Bangladesh (BD)', 'grameenphone limited', 'Grameenphone Ltd', 'bn-BD,en', 'Bangladeshi Taka', 'Asia/Dhaka', 1579797499, NULL, NULL),
(8, '122.163.82.186', 'Asia (AS)', 'India (IN)', 'Bharti Airtel Limited', 'BHARTI', 'en-IN,hi,bn,te,mr,ta,ur,gu,kn,ml,or,pa,a', 'Indian Rupee', 'Asia/Kolkata', 1579809765, NULL, NULL),
(9, '69.172.78.21', 'Asia (AS)', 'Hong Kong (HK)', 'PCCW IMS Ltd (PCCW Business Internet Access)', 'SkyExchange Internet Access, 27/F, PCCW Tower, Tai', 'zh-HK,yue,zh,en', 'Hong Kong Dollar', 'Asia/Hong_Kong', 1579818989, NULL, NULL),
(10, '196.196.85.196', 'North America (NA)', 'United States (US)', 'Inter Connects Inc', 'ATLANTA', 'en-US,es-US,haw,fr', 'US Dollar', 'America/Los_Angeles', 1579834804, NULL, NULL),
(11, '138.197.170.220', 'North America (NA)', 'Canada (CA)', 'ASN block not managed by the RIPE NCC', 'DigitalOcean, LLC', 'en-CA,fr-CA,iu', 'Canadian Dollar', 'America/Toronto', 1579836874, NULL, NULL),
(12, '159.203.37.156', 'North America (NA)', 'Canada (CA)', 'ASN block not managed by the RIPE NCC', 'DigitalOcean, LLC', 'en-CA,fr-CA,iu', 'Canadian Dollar', 'America/Toronto', 1579836874, NULL, NULL),
(13, '138.197.140.187', 'North America (NA)', 'Canada (CA)', 'ASN block not managed by the RIPE NCC', 'DigitalOcean, LLC', 'en-CA,fr-CA,iu', 'Canadian Dollar', 'America/Toronto', 1579836875, NULL, NULL),
(14, '159.203.24.155', 'North America (NA)', 'Canada (CA)', 'ASN block not managed by the RIPE NCC', 'DigitalOcean, LLC', 'en-CA,fr-CA,iu', 'Canadian Dollar', 'America/Toronto', 1579836875, NULL, NULL),
(15, '159.69.150.252', 'Europe (EU)', 'Germany (DE)', 'Hetzner Online GmbH', 'Hetzner Online GmbH', 'de', 'Euro', 'Europe/Berlin', 1579842129, NULL, NULL),
(16, '103.15.167.82', 'Asia (AS)', 'Bangladesh (BD)', 'Delta Infocom Limited', 'Delta', 'bn-BD,en', 'Bangladeshi Taka', 'Asia/Dhaka', 1579855352, NULL, NULL),
(17, '119.30.32.90', 'Asia (AS)', 'Bangladesh (BD)', 'grameenphone limited', 'Grameen Phone', 'bn-BD,en', 'Bangladeshi Taka', 'Asia/Dhaka', 1579855755, NULL, NULL),
(18, '66.249.75.131', 'North America (NA)', 'United States (US)', 'Google LLC', 'Google LLC', 'en-US,es-US,haw,fr', 'US Dollar', 'America/New_York', 1579863886, NULL, NULL),
(19, '66.249.75.129', 'North America (NA)', 'United States (US)', 'Google LLC', 'Google LLC', 'en-US,es-US,haw,fr', 'US Dollar', 'America/New_York', 1579872506, NULL, NULL),
(20, '66.249.75.159', 'North America (NA)', 'United States (US)', 'Google LLC', 'Google LLC', 'en-US,es-US,haw,fr', 'US Dollar', 'America/New_York', 1579877342, NULL, NULL),
(21, '103.136.200.17', 'Asia (AS)', 'Bangladesh (BD)', 'Polly IT', 'Polly IT', 'bn-BD,en', 'Bangladeshi Taka', 'Asia/Dhaka', 1581964675, NULL, NULL),
(22, '103.136.200.18', 'Asia (AS)', 'Bangladesh (BD)', 'Polly IT', 'Polly IT', 'bn-BD,en', 'Bangladeshi Taka', 'Asia/Dhaka', 1582745499, NULL, NULL),
(23, '144.48.112.42', 'Asia (AS)', 'Bangladesh (BD)', 'Fissa Communication', 'FISSACOM', 'bn-BD,en', 'Bangladeshi Taka', 'Asia/Dhaka', 1579899994, NULL, NULL),
(24, '178.62.82.141', 'Europe (EU)', 'United Kingdom (GB)', 'ASN block not managed by the RIPE NCC', 'DigitalOcean, LLC', 'en-GB,cy-GB,gd', 'Pound Sterling', 'Europe/London', 1588736098, NULL, '2020-05-06 03:34:58'),
(25, '84.93.52.3', 'Europe (EU)', 'United Kingdom (GB)', 'British Telecommunications PLC', 'PlusNet plc.', 'en-GB,cy-GB,gd', 'Pound Sterling', 'Europe/London', 1579906865, NULL, NULL),
(26, '212.92.117.5', 'Europe (EU)', 'Netherlands (NL)', 'NForce Entertainment B.V.', 'NForce Entertainment B.V.', 'nl-NL,fy-NL', 'Euro', 'Europe/Amsterdam', 1579906865, NULL, NULL),
(27, '185.220.70.152', 'Europe (EU)', 'Germany (DE)', 'M247 Ltd.', 'M247 Ltd.', 'de', 'Euro', 'Europe/Berlin', 1579906865, NULL, NULL),
(28, '178.32.59.160', 'Europe (EU)', 'United Kingdom (GB)', 'OVH SAS', 'OVH ISP', 'en-GB,cy-GB,gd', 'Pound Sterling', 'Europe/London', 1579906865, NULL, NULL),
(29, '217.170.205.107', 'Europe (EU)', 'Norway (NO)', 'ServeTheWorld AS', 'SERVETHEWORLD', 'no,nb,nn,se,fi', 'Norwegian Krone', 'Europe/Oslo', 1579906865, NULL, NULL),
(30, '119.30.38.3', 'Asia (AS)', 'Bangladesh (BD)', 'grameenphone limited', 'Grameen Phone', 'bn-BD,en', 'Bangladeshi Taka', 'Asia/Dhaka', 1579945869, NULL, NULL),
(31, '223.25.252.10', 'Asia (AS)', 'Bangladesh (BD)', 'Maya Cyber World', 'Mizanur Rahman t/a Maya Cyber World', 'bn-BD,en', 'Bangladeshi Taka', 'Asia/Dhaka', 1580047305, NULL, NULL),
(32, '202.168.72.109', 'Asia (AS)', 'Malaysia (MY)', 'ALLO TECHNOLOGY SDN. BHD.', 'Setia Haruman Technology Sdn Bhd', 'ms-MY,en,zh,ta,te,ml,pa,th', 'Malaysian Ringgit', 'Asia/Kuala_Lumpur', 1579969562, NULL, NULL),
(33, '51.158.126.165', 'Europe (EU)', 'France (FR)', 'ONLINE S.A.S.', 'ONLINE', 'fr-FR,frp,br,co,ca,eu,oc', 'Euro', 'Europe/Paris', 1580016852, NULL, NULL),
(34, '104.161.39.34', 'North America (NA)', 'United States (US)', 'Input Output Flood LLC', 'Input Output Flood LLC', 'en-US,es-US,haw,fr', 'US Dollar', 'America/Phoenix', 1580019412, NULL, NULL),
(35, '54.69.43.116', 'North America (NA)', 'United States (US)', 'ASN block not managed by the RIPE NCC', 'Amazon.com, Inc.', 'en-US,es-US,haw,fr', 'US Dollar', 'America/Los_Angeles', 1580095663, NULL, NULL),
(36, '144.217.81.100', 'North America (NA)', 'Canada (CA)', 'OVH SAS', 'OVH SAS', 'en-CA,fr-CA,iu', 'Canadian Dollar', 'America/Toronto', 1580041274, NULL, NULL),
(37, '45.40.127.108', 'North America (NA)', 'United States (US)', 'KVCHOSTING.COM LLC', 'My247webhosting LLC', 'en-US,es-US,haw,fr', 'US Dollar', 'America/Los_Angeles', 1580042616, NULL, NULL),
(38, '181.215.50.197', 'North America (NA)', 'United States (US)', 'Digital Energy Technologies Ltd.', 'Digital Energy Technologies Limited', 'en-US,es-US,haw,fr', 'US Dollar', 'America/Chicago', 1580042619, NULL, NULL),
(39, '205.237.94.177', 'North America (NA)', 'United States (US)', 'RIPE Network Coordination Centre', 'Grand Web Solutions', 'en-US,es-US,haw,fr', 'US Dollar', 'America/New_York', 1580042680, NULL, NULL),
(40, '181.214.201.143', 'North America (NA)', 'United States (US)', 'Digital Energy Technologies Ltd.', 'Digital Energy Technologies Limited', 'en-US,es-US,haw,fr', 'US Dollar', 'America/Chicago', 1580042749, NULL, NULL),
(41, '45.40.121.103', 'North America (NA)', 'United States (US)', 'KVCHOSTING.COM LLC', 'My247webhosting LLC', 'en-US,es-US,haw,fr', 'US Dollar', 'America/Los_Angeles', 1580042899, NULL, NULL),
(42, '191.96.80.161', 'North America (NA)', 'United States (US)', 'Digital Energy Technologies Ltd.', 'Digital Energy Technologies Limited', 'en-US,es-US,haw,fr', 'US Dollar', 'America/Chicago', 1580042983, NULL, NULL),
(43, '181.214.181.117', 'North America (NA)', 'United States (US)', 'Digital Energy Technologies Ltd.', 'Digital Energy Technologies Limited', 'en-US,es-US,haw,fr', 'US Dollar', 'America/Chicago', 1580043284, NULL, NULL),
(44, '181.214.188.102', 'North America (NA)', 'United States (US)', 'Digital Energy Technologies Ltd.', 'Digital Energy Technologies Limited', 'en-US,es-US,haw,fr', 'US Dollar', 'America/Chicago', 1580043775, NULL, NULL),
(45, '38.145.98.248', 'North America (NA)', 'United States (US)', 'KVCHOSTING.COM LLC', 'Cogent Communications', 'en-US,es-US,haw,fr', 'US Dollar', 'America/Chicago', 1580043856, NULL, NULL),
(46, '115.164.219.97', 'Asia (AS)', 'Malaysia (MY)', 'Asia Pacific Network Information Centre', 'DiGi Telecommunications Sdn Bhd., Digi Internet Ex', 'ms-MY,en,zh,ta,te,ml,pa,th', 'Malaysian Ringgit', 'Asia/Kuala_Lumpur', 1580045107, NULL, NULL),
(47, '40.76.35.32', 'North America (NA)', 'United States (US)', 'Microsoft Corporation', 'Microsoft Corporation', 'en-US,es-US,haw,fr', 'US Dollar', 'America/New_York', 1580080527, NULL, NULL),
(48, '210.187.216.130', 'Asia (AS)', 'Malaysia (MY)', 'Tmnet, Telekom Malaysia Bhd.', 'ADSL Streamyx Telekom Malaysia', 'ms-MY,en,zh,ta,te,ml,pa,th', 'Malaysian Ringgit', 'Asia/Kuala_Lumpur', 1580103148, NULL, NULL),
(49, '120.20.175.130', 'Oceania (OC)', 'Australia (AU)', 'Vodafone Australia Pty Ltd', 'Vodafone Australia Pty Ltd', 'en-AU', 'Australian Dollar', 'Australia/Adelaide', 1580121475, NULL, NULL),
(50, '198.186.192.103', 'North America (NA)', 'United States (US)', 'Providers Internet Exchange', 'Prescient Software', 'en-US,es-US,haw,fr', 'US Dollar', 'America/Los_Angeles', 1580133481, NULL, NULL),
(51, '83.34.29.120', 'Europe (EU)', 'Spain (ES)', 'TELEFONICA DE ESPANA', 'RIMA (Red IP Multi Acceso)', 'es-ES,ca,gl,eu,oc', 'Euro', 'Europe/Madrid', 1580168235, NULL, NULL),
(52, '54.190.32.223', 'North America (NA)', 'United States (US)', 'ASN block not managed by the RIPE NCC', 'Amazon Technologies Inc.', 'en-US,es-US,haw,fr', 'US Dollar', 'America/Los_Angeles', 1580186323, NULL, NULL),
(53, '54.191.17.146', 'North America (NA)', 'United States (US)', 'ASN block not managed by the RIPE NCC', 'Amazon Technologies Inc.', 'en-US,es-US,haw,fr', 'US Dollar', 'America/Los_Angeles', 1580186327, NULL, NULL),
(54, '137.226.113.26', 'Europe (EU)', 'Germany (DE)', 'RWTH Aachen University', 'RWTH Aachen University', 'de', 'Euro', 'Europe/Berlin', 1590426863, NULL, '2020-05-25 17:14:23'),
(55, '37.111.204.139', 'Asia (AS)', 'Bangladesh (BD)', '', 'Grameenphone Ltd', 'bn-BD,en', 'Bangladeshi Taka', 'Asia/Dhaka', 1580198779, NULL, NULL),
(56, '42.0.5.238', 'Asia (AS)', 'Bangladesh (BD)', 'Axiata (Bangladesh) Limited', 'AXIATA', 'bn-BD,en', 'Bangladeshi Taka', 'Asia/Dhaka', 1580201141, NULL, NULL),
(57, '137.226.113.28', 'Europe (EU)', 'Germany (DE)', 'RWTH Aachen University', 'RWTH Aachen University', 'de', 'Euro', 'Europe/Berlin', 1587994658, NULL, '2020-04-27 13:37:38'),
(58, '89.187.178.219', 'North America (NA)', 'United States (US)', 'Datacamp Limited', 'Cdn77 NYC', 'en-US,es-US,haw,fr', 'US Dollar', 'America/New_York', 1580285727, NULL, NULL),
(59, '137.226.113.34', 'Europe (EU)', 'Germany (DE)', 'RWTH Aachen University', 'RWTH Aachen University', 'de', 'Euro', 'Europe/Berlin', 1587717072, NULL, '2020-04-24 08:31:13'),
(60, '34.222.184.45', 'North America (NA)', 'United States (US)', 'Amazon.com, Inc.', 'Amazon.com, Inc.', 'en-US,es-US,haw,fr', 'US Dollar', 'America/Los_Angeles', 1580358267, NULL, NULL),
(61, '118.209.123.97', 'Oceania (OC)', 'Australia (AU)', 'iiNet Limited', 'Internode', 'en-AU', 'Australian Dollar', 'Australia/Brisbane', 1580378445, NULL, NULL),
(62, '120.20.235.149', 'Oceania (OC)', 'Australia (AU)', 'Vodafone Australia Pty Ltd', 'Vodafone Australia Pty Ltd', 'en-AU', 'Australian Dollar', 'Australia/Sydney', 1580474119, NULL, NULL),
(63, '89.187.168.148', 'Europe (EU)', 'Austria (AT)', 'Datacamp Limited', 'Datacamp Limited', 'de-AT,hr,hu,sl', 'Euro', 'Europe/Vienna', 1580491689, NULL, NULL),
(64, '35.163.155.73', 'North America (NA)', 'United States (US)', 'Amazon.com, Inc.', 'Amazon Technologies Inc.', 'en-US,es-US,haw,fr', 'US Dollar', 'America/Los_Angeles', 1580533713, NULL, NULL),
(65, '89.108.99.6', 'Europe (EU)', 'Russia (RU)', 'Domain names registrar REG.RU, Ltd', 'Reg.Ru', 'ru,tt,xal,cau,ady,kv,ce,tyv,cv,udm,tut,m', 'Russian Ruble', 'Europe/Moscow', 1580559052, NULL, NULL),
(66, '89.36.122.194', 'Europe (EU)', 'United Kingdom (GB)', 'Community Fibre Limited', 'Community Fibre Limited', 'en-GB,cy-GB,gd', 'Pound Sterling', 'Europe/London', 1580598070, NULL, NULL),
(67, '87.112.150.43', 'Europe (EU)', 'United Kingdom (GB)', 'British Telecommunications PLC', 'PlusNet plc.', 'en-GB,cy-GB,gd', 'Pound Sterling', 'Europe/London', 1580598070, NULL, NULL),
(68, '188.166.63.71', 'Europe (EU)', 'Netherlands (NL)', 'ASN block not managed by the RIPE NCC', 'DigitalOcean, LLC', 'nl-NL,fy-NL', 'Euro', 'Europe/Amsterdam', 1580598070, NULL, NULL),
(69, '195.181.175.113', 'Europe (EU)', 'Germany (DE)', 'Datacamp Limited', 'CDN77 - Frankfurt POP', 'de', 'Euro', 'Europe/Berlin', 1580598070, NULL, NULL),
(70, '196.251.250.151', 'Africa (AF)', 'South Africa (ZA)', 'Digital Energy Technologies Ltd.', 'NetStack Ltd', 'zu,xh,af,nso,en-ZA,tn,st,ts,ss,ve,nr', 'Rand', 'Africa/Johannesburg', 1580598071, NULL, NULL),
(71, '89.187.178.233', 'North America (NA)', 'United States (US)', 'Datacamp Limited', 'Cdn77 NYC', 'en-US,es-US,haw,fr', 'US Dollar', 'America/New_York', 1580722288, NULL, NULL),
(72, '58.30.141.60', 'Asia (AS)', 'China (CN)', 'srit corp.,beijing.', 'SANXIN', 'zh-CN,yue,wuu,dta,ug,za', 'Yuan Renminbi', 'Asia/Shanghai', 1580728920, NULL, NULL),
(73, '66.249.72.21', 'North America (NA)', 'United States (US)', 'Google LLC', 'Google LLC', 'en-US,es-US,haw,fr', 'US Dollar', 'America/New_York', 1580771513, NULL, NULL),
(74, '207.46.13.175', 'North America (NA)', 'United States (US)', 'Microsoft Corporation', 'Microsoft Corporation', 'en-US,es-US,haw,fr', 'US Dollar', 'America/Los_Angeles', 1580807821, NULL, NULL),
(75, '107.174.235.147', 'North America (NA)', 'United States (US)', 'ASN block not managed by the RIPE NCC', 'ColoCrossing', 'en-US,es-US,haw,fr', 'US Dollar', 'America/New_York', 1580809963, NULL, NULL),
(76, '113.35.251.98', 'Asia (AS)', 'Japan (JP)', 'UCOM Corp.', 'UCOM Corp.', 'ja', 'Yen', 'Asia/Tokyo', 1580813884, NULL, NULL),
(77, '103.99.180.235', 'Asia (AS)', 'Bangladesh (BD)', 'Unicom Multi System', 'Unicom Multi System', 'bn-BD,en', 'Bangladeshi Taka', 'Asia/Dhaka', 1580819505, NULL, NULL),
(78, '198.46.193.213', 'North America (NA)', 'United States (US)', 'ColoCrossing', 'ColoCrossing', 'en-US,es-US,haw,fr', 'US Dollar', 'America/New_York', 1580828642, NULL, NULL),
(79, '64.246.165.160', 'North America (NA)', 'United States (US)', 'Green House Data, Inc.', 'Green House Data, Inc.', 'en-US,es-US,haw,fr', 'US Dollar', 'America/Los_Angeles', 1580837137, NULL, NULL),
(80, '54.233.168.120', 'South America (SA)', 'Brazil (BR)', 'ASN block not managed by the RIPE NCC', 'Amazon.com, Inc.', 'pt-BR,es,en,fr', 'Brazilian Real', 'America/Sao_Paulo', 1580852632, NULL, NULL),
(81, '54.185.203.241', 'North America (NA)', 'United States (US)', 'ASN block not managed by the RIPE NCC', 'Amazon Technologies Inc.', 'en-US,es-US,haw,fr', 'US Dollar', 'America/Los_Angeles', 1580875430, NULL, NULL),
(82, '174.91.60.231', 'North America (NA)', 'Canada (CA)', 'Bell Canada', 'Bell Canada', 'en-CA,fr-CA,iu', 'Canadian Dollar', 'America/Toronto', 1580929875, NULL, NULL),
(83, '138.246.253.5', 'Europe (EU)', 'Germany (DE)', 'Leibniz-Rechenzentrum', 'Leibniz-Rechenzentrum', 'de', 'Euro', 'Europe/Berlin', 1580936911, NULL, NULL),
(84, '52.26.28.237', 'North America (NA)', 'United States (US)', 'ASN block not managed by the RIPE NCC', 'Amazon.com, Inc.', 'en-US,es-US,haw,fr', 'US Dollar', 'America/Los_Angeles', 1580957560, NULL, NULL),
(85, '51.39.167.71', 'Asia (AS)', 'Saudi Arabia (SA)', 'MTC KSA', 'Zain KSA', 'ar-SA', 'Saudi Riyal', 'Asia/Riyadh', 1580971179, NULL, NULL),
(86, '192.3.17.52', 'North America (NA)', 'United States (US)', 'ColoCrossing', 'ColoCrossing', 'en-US,es-US,haw,fr', 'US Dollar', 'America/New_York', 1580974436, NULL, NULL),
(87, '173.212.233.72', 'Europe (EU)', 'Germany (DE)', 'Contabo GmbH', 'Contabo GmbH', 'de', 'Euro', 'Europe/Berlin', 1580996107, NULL, NULL),
(88, '159.69.74.243', 'Europe (EU)', 'Germany (DE)', 'Hetzner Online GmbH', 'Hetzner Online GmbH', 'de', 'Euro', 'Europe/Berlin', 1581004454, NULL, NULL),
(89, '104.245.145.125', 'North America (NA)', 'Canada (CA)', 'Amanah Tech Inc.', 'Amanah Tech Inc.', 'en-CA,fr-CA,iu', 'Canadian Dollar', 'America/Toronto', 1581040610, NULL, NULL),
(90, '89.22.101.69', 'Europe (EU)', 'Germany (DE)', 'dogado GmbH', 'dogado GmbH', 'de', 'Euro', 'Europe/Berlin', 1581083490, NULL, NULL),
(91, '37.111.230.224', 'Asia (AS)', 'Bangladesh (BD)', 'grameenphone limited', 'Grameenphone', 'bn-BD,en', 'Bangladeshi Taka', 'Asia/Dhaka', 1581101522, NULL, NULL),
(92, '198.27.85.233', 'North America (NA)', 'Canada (CA)', 'OVH SAS', 'OVH Hosting', 'en-CA,fr-CA,iu', 'Canadian Dollar', 'America/Toronto', 1581138974, NULL, NULL),
(93, '207.46.13.136', 'North America (NA)', 'United States (US)', 'Microsoft Corporation', 'Microsoft Corporation', 'en-US,es-US,haw,fr', 'US Dollar', 'America/Los_Angeles', 1581149756, NULL, NULL),
(94, '207.46.13.151', 'North America (NA)', 'United States (US)', 'Microsoft Corporation', 'Microsoft Corporation', 'en-US,es-US,haw,fr', 'US Dollar', 'America/Los_Angeles', 1581158871, NULL, NULL),
(95, '92.63.111.27', 'Europe (EU)', 'Russia (RU)', '', 'CLOUD Serverius', 'ru,tt,xal,cau,ady,kv,ce,tyv,cv,udm,tut,m', 'Russian Ruble', 'Asia/Irkutsk', 1586172875, NULL, '2020-04-06 11:34:35'),
(96, '13.89.231.103', 'North America (NA)', 'United States (US)', 'Microsoft Corporation', 'Microsoft Corporation', 'en-US,es-US,haw,fr', 'US Dollar', 'America/Chicago', 1581185059, NULL, NULL),
(97, '157.245.12.129', 'North America (NA)', 'United States (US)', '', 'DigitalOcean, LLC', 'en-US,es-US,haw,fr', 'US Dollar', 'America/New_York', 1581278114, NULL, NULL),
(98, '103.98.156.252', 'Asia (AS)', 'India (IN)', 'Ookla Telecom Pvt.ltd', 'Ookla Telecom Pvt.ltd', 'en-IN,hi,bn,te,mr,ta,ur,gu,kn,ml,or,pa,a', 'Indian Rupee', 'Asia/Kolkata', 1581326169, NULL, NULL),
(99, '194.127.179.181', 'Europe (EU)', 'Netherlands (NL)', '', 'RIPE Network Coordination Centre', 'nl-NL,fy-NL', 'Euro', 'Europe/Amsterdam', 1581330030, NULL, NULL),
(100, '207.246.106.133', 'North America (NA)', 'United States (US)', 'Choopa, LLC', 'Choopa', 'en-US,es-US,haw,fr', 'US Dollar', 'America/Los_Angeles', 1581354145, NULL, NULL),
(101, '34.220.26.35', 'North America (NA)', 'United States (US)', 'Amazon.com, Inc.', 'Amazon.com, Inc.', 'en-US,es-US,haw,fr', 'US Dollar', 'America/Los_Angeles', 1581397479, NULL, NULL),
(102, '185.77.248.7', 'Asia (AS)', 'Israel (IL)', 'NETSTYLE A. LTD', 'Net-style Atarim LTD', 'he,ar-IL,en-IL,', 'New Israeli Sheqel', 'Asia/Jerusalem', 1581402623, NULL, NULL),
(103, '108.177.213.247', 'North America (NA)', 'United States (US)', 'Nobis Technology Group, LLC', 'Nobis Technology Group', 'en-US,es-US,haw,fr', 'US Dollar', 'America/Chicago', 1581432464, NULL, NULL),
(104, '18.237.38.206', 'North America (NA)', 'United States (US)', 'Amazon.com, Inc.', 'Amazon Technologies Inc.', 'en-US,es-US,haw,fr', 'US Dollar', 'America/Los_Angeles', 1581479987, NULL, NULL),
(105, '157.55.39.62', 'North America (NA)', 'United States (US)', 'Microsoft Corporation', 'Microsoft Corporation', 'en-US,es-US,haw,fr', 'US Dollar', 'America/Los_Angeles', 1581490279, NULL, NULL),
(106, '185.242.6.26', 'Europe (EU)', 'Czech Republic (CZ)', 'M247 Ltd.', 'M247 Ltd.', 'cs,sk', 'Czech Koruna', 'Europe/Prague', 1581492866, NULL, NULL),
(107, '167.71.154.251', 'North America (NA)', 'United States (US)', 'DigitalOcean, LLC', 'DigitalOcean, LLC', 'en-US,es-US,haw,fr', 'US Dollar', 'America/New_York', 1581517514, NULL, NULL),
(108, '103.123.84.79', 'North America (NA)', 'United States (US)', 'Kath Codex Pvt. Ltd.', 'Kath Codex Pvt. Ltd.', 'en-US,es-US,haw,fr', 'US Dollar', 'America/Los_Angeles', 1581517514, NULL, NULL),
(109, '66.165.227.138', 'North America (NA)', 'United States (US)', 'HIVELOCITY, Inc.', 'NOC4Hosts Inc', 'en-US,es-US,haw,fr', 'US Dollar', 'America/Los_Angeles', 1581517519, NULL, NULL),
(110, '218.241.108.76', 'Asia (AS)', 'China (CN)', 'China Internet Network Infomation Center', 'China Internet Network Information Center', 'zh-CN,yue,wuu,dta,ug,za', 'Yuan Renminbi', 'Asia/Shanghai', 1581535743, NULL, NULL),
(111, '34.217.13.247', 'North America (NA)', 'United States (US)', 'Amazon.com, Inc.', 'Amazon.com, Inc.', 'en-US,es-US,haw,fr', 'US Dollar', 'America/Los_Angeles', 1581567176, NULL, NULL),
(112, '209.239.122.185', 'North America (NA)', 'United States (US)', 'HEG US Inc.', 'HEG US Inc.', 'en-US,es-US,haw,fr', 'US Dollar', 'America/Chicago', 1581587712, NULL, NULL),
(113, '103.98.157.247', 'Asia (AS)', 'India (IN)', 'Ookla Telecom Pvt.ltd', 'Ookla Telecom Pvt.ltd', 'en-IN,hi,bn,te,mr,ta,ur,gu,kn,ml,or,pa,a', 'Indian Rupee', 'Asia/Kolkata', 1581594512, NULL, NULL),
(114, '34.223.82.82', 'North America (NA)', 'United States (US)', 'Amazon.com, Inc.', 'Amazon.com, Inc.', 'en-US,es-US,haw,fr', 'US Dollar', 'America/Los_Angeles', 1581653152, NULL, NULL),
(115, '209.17.96.138', 'North America (NA)', 'United States (US)', 'Cogent Communications', 'Cogent Communications', 'en-US,es-US,haw,fr', 'US Dollar', 'America/New_York', 1581654780, NULL, NULL),
(116, '51.68.50.3', 'Europe (EU)', 'France (FR)', 'OVH SAS', 'OVH SAS', 'fr-FR,frp,br,co,ca,eu,oc', 'Euro', 'Europe/Paris', 1581664655, NULL, NULL),
(117, '209.17.97.98', 'North America (NA)', 'United States (US)', 'Cogent Communications', 'Cogent Communications', 'en-US,es-US,haw,fr', 'US Dollar', 'America/New_York', 1589348568, NULL, '2020-05-13 05:42:48'),
(118, '42.83.147.202', 'Asia (AS)', 'China (CN)', 'China Internet Network Infomation Center', 'CNNIC-CRITICAL', 'zh-CN,yue,wuu,dta,ug,za', 'Yuan Renminbi', 'Asia/Shanghai', 1581676597, NULL, NULL),
(119, '209.17.96.114', 'North America (NA)', 'United States (US)', 'Cogent Communications', 'Cogent Communications', 'en-US,es-US,haw,fr', 'US Dollar', 'America/New_York', 1591062874, NULL, '2020-06-02 01:54:35'),
(120, '157.55.39.95', 'North America (NA)', 'United States (US)', 'Microsoft Corporation', 'Microsoft Corporation', 'en-US,es-US,haw,fr', 'US Dollar', 'America/Los_Angeles', 1581698473, NULL, NULL),
(121, '101.112.31.98', 'Oceania (OC)', 'Australia (AU)', 'Vodafone Australia Pty Ltd', 'Vodafone Australia Pty Ltd', 'en-AU', 'Australian Dollar', 'Australia/Sydney', 1581732290, NULL, NULL),
(122, '101.112.197.165', 'Oceania (OC)', 'Australia (AU)', 'Vodafone Australia Pty Ltd', 'Vodafone Australia Pty Ltd', 'en-AU', 'Australian Dollar', 'Australia/Sydney', 1581755820, NULL, NULL),
(123, '69.58.178.59', 'North America (NA)', 'United States (US)', 'VeriSign Infrastructure & Operations', 'Verisign', 'en-US,es-US,haw,fr', 'US Dollar', 'America/New_York', 1581819041, NULL, NULL),
(124, '157.55.39.179', 'North America (NA)', 'United States (US)', 'Microsoft Corporation', 'Microsoft Corporation', 'en-US,es-US,haw,fr', 'US Dollar', 'America/Los_Angeles', 1581821880, NULL, NULL),
(125, '5.255.174.141', 'Europe (EU)', 'Ukraine (UA)', 'MAXNET TELECOM, LTD', 'Maxnet LLC', 'uk,ru-UA,rom,pl,hu', 'Hryvnia', 'Europe/Kiev', 1581840038, NULL, NULL),
(126, '173.212.199.138', 'Europe (EU)', 'Germany (DE)', 'Contabo GmbH', 'Contabo GmbH', 'de', 'Euro', 'Europe/Berlin', 1581861573, NULL, NULL),
(127, '34.235.233.220', 'North America (NA)', 'United States (US)', 'Amazon.com, Inc.', 'Amazon.com, Inc.', 'en-US,es-US,haw,fr', 'US Dollar', 'America/New_York', 1589686248, NULL, '2020-05-17 03:30:48'),
(128, '34.223.114.140', 'North America (NA)', 'United States (US)', 'Amazon.com, Inc.', 'Amazon.com, Inc.', 'en-US,es-US,haw,fr', 'US Dollar', 'America/Los_Angeles', 1581912240, NULL, NULL),
(129, '66.249.75.51', 'North America (NA)', 'United States (US)', 'Google LLC', 'Google LLC', 'en-US,es-US,haw,fr', 'US Dollar', 'America/New_York', 1581924141, NULL, NULL),
(130, '40.77.167.139', 'North America (NA)', 'United States (US)', 'Microsoft Corporation', 'Microsoft Corporation', 'en-US,es-US,haw,fr', 'US Dollar', 'America/New_York', 1581943621, NULL, NULL),
(131, '213.159.213.236', 'Europe (EU)', 'Russia (RU)', 'JSC The First', 'TheServer', 'ru,tt,xal,cau,ady,kv,ce,tyv,cv,udm,tut,m', 'Russian Ruble', 'Asia/Irkutsk', 1581948170, NULL, NULL),
(132, '209.97.134.190', 'Europe (EU)', 'United Kingdom (GB)', 'ASN block not managed by the RIPE NCC', 'DigitalOcean, LLC', 'en-GB,cy-GB,gd', 'Pound Sterling', 'Europe/London', 1581950751, NULL, NULL),
(133, '34.223.109.224', 'North America (NA)', 'United States (US)', 'Amazon Technologies Inc.', 'Amazon Technologies Inc. (EC2)', 'en-US,es-US,haw,fr', 'US Dollar', 'America/Los_Angeles', 1581999064, NULL, NULL),
(134, '209.17.96.162', 'North America (NA)', 'United States (US)', 'Cogent Communications', 'Cogent Communications', 'en-US,es-US,haw,fr', 'US Dollar', 'America/New_York', 1591097072, NULL, '2020-06-02 11:24:33'),
(135, '89.187.178.137', 'North America (NA)', 'United States (US)', 'Datacamp Limited', 'Cdn77 NYC', 'en-US,es-US,haw,fr', 'US Dollar', 'America/New_York', 1582004357, NULL, NULL),
(136, '65.154.226.100', 'North America (NA)', 'United States (US)', 'PALO ALTO NETWORKS', 'CenturyLink Communications', 'en-US,es-US,haw,fr', 'US Dollar', 'America/Los_Angeles', 1582025539, NULL, NULL),
(137, '65.154.226.220', 'North America (NA)', 'United States (US)', 'PALO ALTO NETWORKS', 'CenturyLink Communications', 'en-US,es-US,haw,fr', 'US Dollar', 'America/Los_Angeles', 1582025670, NULL, NULL),
(138, '40.77.167.69', 'North America (NA)', 'United States (US)', 'Microsoft Corporation', 'Microsoft Corporation', 'en-US,es-US,haw,fr', 'US Dollar', 'America/New_York', 1582034332, NULL, NULL),
(139, '209.17.96.26', 'North America (NA)', 'United States (US)', 'Cogent Communications', 'Cogent Communications', 'en-US,es-US,haw,fr', 'US Dollar', 'America/New_York', 1590485887, NULL, '2020-05-26 09:38:08'),
(140, '40.77.167.204', 'North America (NA)', 'United States (US)', 'Microsoft Corporation', 'Microsoft Corporation', 'en-US,es-US,haw,fr', 'US Dollar', 'America/New_York', 1582167358, NULL, NULL),
(141, '34.209.159.167', 'North America (NA)', 'United States (US)', 'Amazon Technologies Inc.', 'Amazon Technologies Inc. (EC2)', 'en-US,es-US,haw,fr', 'US Dollar', 'America/Los_Angeles', 1582172304, NULL, NULL),
(142, '196.52.43.82', 'North America (NA)', 'United States (US)', 'LeaseWeb Netherlands B.V.', 'LeaseWeb Netherlands B.V.', 'en-US,es-US,haw,fr', 'US Dollar', 'America/New_York', 1582183868, NULL, NULL),
(143, '196.52.43.67', 'North America (NA)', 'United States (US)', 'LeaseWeb Netherlands B.V.', 'LeaseWeb Netherlands B.V.', 'en-US,es-US,haw,fr', 'US Dollar', 'America/New_York', 1582190742, NULL, NULL),
(144, '103.49.171.5', 'Asia (AS)', 'Bangladesh (BD)', 'Exord Online Ltd', 'EXORDONLINE', 'bn-BD,en', 'Bangladeshi Taka', 'Asia/Dhaka', 1582209069, NULL, NULL),
(145, '209.17.97.26', 'North America (NA)', 'United States (US)', 'Cogent Communications', 'Cogent Communications', 'en-US,es-US,haw,fr', 'US Dollar', 'America/New_York', 1589993868, NULL, '2020-05-20 16:57:49'),
(146, '207.46.13.19', 'North America (NA)', 'United States (US)', 'Microsoft Corporation', 'Microsoft Corporation', 'en-US,es-US,haw,fr', 'US Dollar', 'America/Los_Angeles', 1582262738, NULL, NULL),
(147, '196.52.43.72', 'North America (NA)', 'United States (US)', 'LeaseWeb Netherlands B.V.', 'LeaseWeb Netherlands B.V.', 'en-US,es-US,haw,fr', 'US Dollar', 'America/New_York', 1582270243, NULL, NULL),
(148, '209.17.96.202', 'North America (NA)', 'United States (US)', 'Cogent Communications', 'Cogent Communications', 'en-US,es-US,haw,fr', 'US Dollar', 'America/New_York', 1591175821, NULL, '2020-06-03 09:17:02'),
(149, '196.52.43.80', 'North America (NA)', 'United States (US)', 'LeaseWeb Netherlands B.V.', 'LeaseWeb Netherlands B.V.', 'en-US,es-US,haw,fr', 'US Dollar', 'America/New_York', 1582278356, NULL, NULL),
(150, '209.17.96.98', 'North America (NA)', 'United States (US)', 'Cogent Communications', 'Cogent Communications', 'en-US,es-US,haw,fr', 'US Dollar', 'America/New_York', 1586594077, NULL, '2020-04-11 08:34:37'),
(151, '54.38.235.1', 'Europe (EU)', 'France (FR)', 'OVH SAS', 'OVH SAS', 'fr-FR,frp,br,co,ca,eu,oc', 'Euro', 'Europe/Paris', 1582321037, NULL, NULL),
(152, '52.33.47.146', 'North America (NA)', 'United States (US)', 'Amazon Technologies Inc.', 'Amazon Technologies Inc. (EC2)', 'en-US,es-US,haw,fr', 'US Dollar', 'America/Los_Angeles', 1582324640, NULL, NULL),
(153, '5.196.76.206', 'Europe (EU)', 'France (FR)', 'OVH SAS', 'OVH SAS', 'fr-FR,frp,br,co,ca,eu,oc', 'Euro', 'Europe/Paris', 1582339514, NULL, NULL),
(154, '209.17.96.210', 'North America (NA)', 'United States (US)', 'Cogent Communications', 'Cogent Communications', 'en-US,es-US,haw,fr', 'US Dollar', 'America/New_York', 1591343588, NULL, '2020-06-05 07:53:08'),
(155, '40.77.167.78', 'North America (NA)', 'United States (US)', 'Microsoft Corporation', 'Microsoft Corporation', 'en-US,es-US,haw,fr', 'US Dollar', 'America/New_York', 1582351485, NULL, NULL),
(156, '75.149.221.170', 'North America (NA)', 'United States (US)', 'Comcast Cable Communications, LLC', 'Comcast Cable Communications, LLC', 'en-US,es-US,haw,fr', 'US Dollar', 'America/Chicago', 1582365931, NULL, NULL),
(157, '207.46.13.218', 'North America (NA)', 'United States (US)', 'Microsoft Corporation', 'Microsoft Corporation', 'en-US,es-US,haw,fr', 'US Dollar', 'America/Los_Angeles', 1582399493, NULL, NULL),
(158, '213.159.213.137', 'Europe (EU)', 'Russia (RU)', 'JSC The First', 'TheServer', 'ru,tt,xal,cau,ady,kv,ce,tyv,cv,udm,tut,m', 'Russian Ruble', 'Asia/Irkutsk', 1590178442, NULL, '2020-05-22 20:14:02'),
(159, '37.120.156.20', 'Europe (EU)', 'Poland (PL)', 'M247 Ltd.', 'M247 Ltd.', 'pl', 'Zloty', 'Europe/Warsaw', 1582531725, NULL, NULL),
(160, '120.18.162.248', 'Oceania (OC)', 'Australia (AU)', 'Vodafone Australia Pty Ltd', 'Vodafone', 'en-AU', 'Australian Dollar', 'Australia/Sydney', 1582553136, NULL, NULL),
(161, '209.17.96.226', 'North America (NA)', 'United States (US)', 'Cogent Communications', 'Cogent Communications', 'en-US,es-US,haw,fr', 'US Dollar', 'America/New_York', 1582586100, NULL, NULL),
(162, '209.17.96.130', 'North America (NA)', 'United States (US)', 'Cogent Communications', 'Cogent Communications', 'en-US,es-US,haw,fr', 'US Dollar', 'America/New_York', 1590164557, NULL, '2020-05-22 16:22:38'),
(163, '34.223.106.62', 'North America (NA)', 'United States (US)', 'Amazon Technologies Inc.', 'Amazon Technologies Inc. (EC2)', 'en-US,es-US,haw,fr', 'US Dollar', 'America/Los_Angeles', 1582654781, NULL, NULL),
(164, '207.46.13.152', 'North America (NA)', 'United States (US)', 'Microsoft Corporation', 'Microsoft Corporation', 'en-US,es-US,haw,fr', 'US Dollar', 'America/Los_Angeles', 1582683502, NULL, NULL),
(165, '209.58.157.179', 'North America (NA)', 'United States (US)', 'Leaseweb USA, Inc.', 'Leaseweb USA, Inc.', 'en-US,es-US,haw,fr', 'US Dollar', 'America/Chicago', 1582725952, NULL, NULL),
(166, '89.187.178.204', 'North America (NA)', 'United States (US)', 'Datacamp Limited', 'Cdn77 NYC', 'en-US,es-US,haw,fr', 'US Dollar', 'America/New_York', 1582741067, NULL, NULL),
(167, '185.195.24.52', 'Europe (EU)', 'Russia (RU)', 'NTX Technologies s.r.o.', 'MediaServicePlus LLC', 'ru,tt,xal,cau,ady,kv,ce,tyv,cv,udm,tut,m', 'Russian Ruble', 'Europe/Moscow', 1582813764, NULL, NULL),
(168, '128.199.204.120', 'Asia (AS)', 'Singapore (SG)', 'ASN block not managed by the RIPE NCC', 'DigitalOcean, LLC', 'cmn,en-SG,ms-SG,ta-SG,zh-SG', 'Singapore Dollar', 'Asia/Singapore', 1583348276, NULL, NULL),
(169, '64.246.165.150', 'North America (NA)', 'United States (US)', 'Green House Data, Inc.', 'Green House Data, Inc.', 'en-US,es-US,haw,fr', 'US Dollar', 'America/Los_Angeles', 1582826701, NULL, NULL),
(170, '54.199.181.77', 'Asia (AS)', 'Japan (JP)', 'Amazon.com, Inc.', 'Amazon Technologies Inc. (EC2)', 'ja', 'Yen', 'Asia/Tokyo', 1582842960, NULL, NULL),
(171, '66.249.75.53', 'North America (NA)', 'United States (US)', 'Google LLC', 'Google LLC', 'en-US,es-US,haw,fr', 'US Dollar', 'America/New_York', 1582850327, NULL, NULL),
(172, '34.211.55.214', 'North America (NA)', 'United States (US)', 'Amazon Technologies Inc.', 'Amazon Technologies Inc. (EC2)', 'en-US,es-US,haw,fr', 'US Dollar', 'America/Los_Angeles', 1582863250, NULL, NULL),
(173, '199.244.88.131', 'North America (NA)', 'United States (US)', 'Sundance International LLC', 'Sundance International LLC', 'en-US,es-US,haw,fr', 'US Dollar', 'America/Chicago', 1582864173, NULL, NULL),
(174, '209.17.96.234', 'North America (NA)', 'United States (US)', 'Cogent Communications', 'Cogent Communications', 'en-US,es-US,haw,fr', 'US Dollar', 'America/New_York', 1589646268, NULL, '2020-05-16 16:24:28'),
(175, '34.221.202.232', 'North America (NA)', 'United States (US)', 'Amazon Technologies Inc.', 'Amazon Technologies Inc. (EC2)', 'en-US,es-US,haw,fr', 'US Dollar', 'America/Los_Angeles', 1582951256, NULL, NULL),
(176, '209.17.96.58', 'North America (NA)', 'United States (US)', 'Cogent Communications', 'Cogent Communications', 'en-US,es-US,haw,fr', 'US Dollar', 'America/New_York', 1589345617, NULL, '2020-05-13 04:53:38'),
(177, '13.91.201.3', 'North America (NA)', 'United States (US)', 'Microsoft Corporation', 'Microsoft Corporation', 'en-US,es-US,haw,fr', 'US Dollar', 'America/Los_Angeles', 1583145046, NULL, NULL),
(178, '179.61.184.242', 'Europe (EU)', 'Germany (DE)', 'Digital Energy Technologies Ltd.', 'Digital Energy Technologies Limited', 'de', 'Euro', 'Europe/Berlin', 1583178575, NULL, NULL),
(179, '209.17.97.90', 'North America (NA)', 'United States (US)', 'Cogent Communications', 'Cogent Communications', 'en-US,es-US,haw,fr', 'US Dollar', 'America/New_York', 1583211694, NULL, NULL),
(180, '137.226.113.27', 'Europe (EU)', 'Germany (DE)', 'RWTH Aachen University', 'RWTH Aachen University', 'de', 'Euro', 'Europe/Berlin', 1591020063, NULL, '2020-06-01 14:01:03'),
(181, '209.17.96.66', 'North America (NA)', 'United States (US)', 'Cogent Communications', 'Cogent Communications', 'en-US,es-US,haw,fr', 'US Dollar', 'America/New_York', 1583248622, NULL, NULL),
(182, '104.46.55.57', 'Europe (EU)', 'Netherlands (NL)', 'Microsoft Corporation', 'Microsoft Corporation', 'nl-NL,fy-NL', 'Euro', 'Europe/Amsterdam', 1583287796, NULL, NULL),
(183, '44.226.199.131', 'North America (NA)', 'United States (US)', 'Amazon Technologies Inc.', 'Amazon Technologies Inc. (EC2)', 'en-US,es-US,haw,fr', 'US Dollar', 'America/Los_Angeles', 1583295129, NULL, NULL),
(184, '209.17.97.18', 'North America (NA)', 'United States (US)', 'Cogent Communications', 'Cogent Communications', 'en-US,es-US,haw,fr', 'US Dollar', 'America/New_York', 1590774120, NULL, '2020-05-29 17:42:00'),
(185, '23.108.47.106', 'North America (NA)', 'United States (US)', 'Leaseweb USA, Inc.', 'Nobis Technology Group', 'en-US,es-US,haw,fr', 'US Dollar', 'America/New_York', 1583330686, NULL, NULL),
(186, '51.158.113.35', 'Europe (EU)', 'France (FR)', 'ONLINE S.A.S.', 'ONLINE', 'fr-FR,frp,br,co,ca,eu,oc', 'Euro', 'Europe/Paris', 1583381624, NULL, NULL),
(187, '118.179.155.82', 'Asia (AS)', 'Bangladesh (BD)', 'Dhakacom Limited', 'AmberIT Limited', 'bn-BD,en', 'Bangladeshi Taka', 'Asia/Dhaka', 1583406369, NULL, NULL),
(188, '120.50.2.238', 'Asia (AS)', 'Bangladesh (BD)', 'Telnet Communication Limited', 'Telnet Communication Limited', 'bn-BD,en', 'Bangladeshi Taka', 'Asia/Dhaka', 1583406368, NULL, NULL),
(189, '13.231.144.214', 'Asia (AS)', 'Japan (JP)', 'Amazon Technologies Inc.', 'Amazon Technologies Inc. (EC2)', 'ja', 'Yen', 'Asia/Tokyo', 1583422790, NULL, NULL),
(191, '103.136.200.2', 'Asia (AS)', 'Bangladesh (BD)', 'Polly IT', 'Polly IT', 'bn-BD,en', 'Bangladeshi Taka', 'Asia/Dhaka', 1586101184, '2020-04-03 19:52:45', '2020-04-05 15:39:44'),
(192, '209.17.97.74', 'North America (NA)', 'United States (US)', 'Cogent Communications', 'Cogent Communications', 'en-US,es-US,haw,fr', 'US Dollar', 'America/New_York', 1585948511, '2020-04-03 21:15:11', '2020-04-03 21:17:12'),
(193, '207.46.13.91', 'North America (NA)', 'United States (US)', 'Microsoft Corporation', 'Microsoft Corporation', 'en-US,es-US,haw,fr', 'US Dollar', 'America/Los_Angeles', 1585959669, '2020-04-04 00:21:10', '2020-04-04 06:23:18'),
(194, '209.17.96.90', 'North America (NA)', 'United States (US)', 'Cogent Communications', 'Cogent Communications', 'en-US,es-US,haw,fr', 'US Dollar', 'America/New_York', 1590148415, '2020-04-04 04:43:24', '2020-05-22 11:53:36'),
(195, '165.227.78.123', 'North America (NA)', 'United States (US)', 'ASN block not managed by the RIPE NCC', 'DigitalOcean, LLC', 'en-US,es-US,haw,fr', 'US Dollar', 'America/New_York', 1585981540, '2020-04-04 06:25:40', '2020-04-04 10:45:15'),
(196, '165.227.125.86', 'North America (NA)', 'United States (US)', 'ASN block not managed by the RIPE NCC', 'DigitalOcean, LLC', 'en-US,es-US,haw,fr', 'US Dollar', 'America/New_York', 1585983279, '2020-04-04 06:54:40', '2020-04-04 10:45:15'),
(197, '157.55.39.4', 'North America (NA)', 'United States (US)', 'Microsoft Corporation', 'Microsoft Corporation', 'en-US,es-US,haw,fr', 'US Dollar', 'America/Los_Angeles', 1586003357, '2020-04-04 12:29:18', '2020-04-04 15:07:40'),
(198, '40.77.167.99', 'North America (NA)', 'United States (US)', 'Microsoft Corporation', 'Microsoft Corporation', 'en-US,es-US,haw,fr', 'US Dollar', 'America/New_York', 1586006391, '2020-04-04 13:19:52', '2020-04-04 15:07:41'),
(199, '34.216.201.175', 'North America (NA)', 'United States (US)', 'Amazon Technologies Inc.', 'Amazon Technologies Inc. (EC2)', 'en-US,es-US,haw,fr', 'US Dollar', 'America/Los_Angeles', 1586059462, '2020-04-05 04:04:23', '2020-04-05 15:55:26'),
(200, '51.15.124.33', 'Europe (EU)', 'Netherlands (NL)', 'ONLINE S.A.S.', 'Online S.A.S.', 'nl-NL,fy-NL', 'Euro', 'Europe/Amsterdam', 1586059818, '2020-04-05 04:10:18', '2020-04-05 15:55:26'),
(201, '192.71.38.71', 'Europe (EU)', 'Sweden (SE)', 'GleSYS AB', 'InternetVikings', 'sv-SE,se,sma,fi-SE', 'Swedish Krona', 'Europe/Stockholm', 1591072943, '2020-04-05 07:07:37', '2020-06-02 04:42:24'),
(202, '66.249.75.35', 'North America (NA)', 'United States (US)', 'Google LLC', 'Google LLC', 'en-US,es-US,haw,fr', 'US Dollar', 'America/Chicago', 1590360131, '2020-04-05 07:37:41', '2020-05-24 22:42:11'),
(203, '66.249.75.39', 'North America (NA)', 'United States (US)', 'Google LLC', 'Google LLC', 'en-US,es-US,haw,fr', 'US Dollar', 'America/Chicago', 1586390391, '2020-04-05 07:42:34', '2020-04-08 23:59:51'),
(204, '138.246.253.15', 'Europe (EU)', 'Germany (DE)', 'Leibniz-Rechenzentrum', 'Leibniz-Rechenzentrum', 'de', 'Euro', 'Europe/Berlin', 1589206968, '2020-04-06 03:32:02', '2020-05-11 14:22:48'),
(205, '52.37.100.203', 'North America (NA)', 'United States (US)', 'Amazon Technologies Inc.', 'Amazon Technologies Inc. (EC2)', 'en-US,es-US,haw,fr', 'US Dollar', 'America/Los_Angeles', 1586145983, '2020-04-06 04:06:23', '2020-04-06 08:12:10'),
(206, '104.140.188.50', 'Europe (EU)', 'Germany (DE)', 'RIPE Network Coordination Centre', 'Eonix Corporation', 'de', 'Euro', 'Europe/Berlin', 1586240566, '2020-04-07 06:22:46', '2020-04-07 19:10:42'),
(207, '104.140.188.14', 'Europe (EU)', 'Germany (DE)', 'RIPE Network Coordination Centre', 'Eonix Corporation', 'de', 'Euro', 'Europe/Berlin', 1586244077, '2020-04-07 07:21:18', '2020-04-07 19:10:42'),
(208, '170.130.187.46', 'North America (NA)', 'Mexico (MX)', 'Eonix Corporation', 'Eonix Corporation', 'es-MX', 'Mexican Peso', 'America/Mexico_City', 1586247525, '2020-04-07 08:18:45', '2020-04-07 19:10:43'),
(209, '103.136.200.6', 'Asia (AS)', 'Bangladesh (BD)', 'Polly IT', 'Polly IT', 'bn-BD,en', 'Bangladeshi Taka', 'Asia/Dhaka', 1586592252, '2020-04-07 09:55:51', '2020-04-11 08:04:12'),
(210, '209.17.96.106', 'North America (NA)', 'United States (US)', 'Cogent Communications', 'Cogent Communications', 'en-US,es-US,haw,fr', 'US Dollar', 'America/New_York', 1589962569, '2020-04-07 12:17:42', '2020-05-20 08:16:10'),
(211, '65.155.30.101', 'North America (NA)', 'United States (US)', 'Palo Alto Networks, Inc', 'Palo Alto Networks, Inc', 'en-US,es-US,haw,fr', 'US Dollar', 'America/Los_Angeles', 1586262030, '2020-04-07 12:20:30', '2020-04-07 19:10:43'),
(212, '209.17.96.170', 'North America (NA)', 'United States (US)', 'Cogent Communications', 'Cogent Communications', 'en-US,es-US,haw,fr', 'US Dollar', 'America/New_York', 1590776960, '2020-04-07 12:46:45', '2020-05-29 18:29:20'),
(213, '104.206.128.22', 'North America (NA)', 'United States (US)', 'Eonix Corporation', 'Eonix Corporation', 'en-US,es-US,haw,fr', 'US Dollar', 'America/Los_Angeles', 1586264701, '2020-04-07 13:05:01', '2020-04-07 19:10:43'),
(214, '170.130.187.6', 'North America (NA)', 'Mexico (MX)', 'Eonix Corporation', 'Eonix Corporation', 'es-MX', 'Mexican Peso', 'America/Mexico_City', 1586284507, '2020-04-07 18:35:08', '2020-04-07 19:10:43'),
(215, '103.136.200.3', 'Asia (AS)', 'Bangladesh (BD)', 'Polly IT', 'Polly IT', 'bn-BD,en', 'Bangladeshi Taka', 'Asia/Dhaka', 1587059682, '2020-04-07 19:10:03', '2020-04-16 17:54:43'),
(216, '72.13.62.25', 'North America (NA)', 'United States (US)', 'VeriSign Infrastructure & Operations', 'VeriSign Infrastructure & Operations', 'en-US,es-US,haw,fr', 'US Dollar', 'America/New_York', 1586288173, '2020-04-07 19:36:10', '2020-04-09 17:42:51'),
(217, '158.69.27.222', 'North America (NA)', 'Canada (CA)', 'OVH SAS', 'OVH SAS', 'en-CA,fr-CA,iu', 'Canadian Dollar', 'America/Toronto', 1586290137, '2020-04-07 20:08:57', '2020-04-09 17:42:51'),
(218, '37.111.224.4', 'Asia (AS)', 'Bangladesh (BD)', 'grameenphone limited', 'Grameenphone', 'bn-BD,en', 'Bangladeshi Taka', 'Asia/Dhaka', 1586359129, '2020-04-08 15:18:49', '2020-04-09 17:42:51'),
(219, '209.17.97.34', 'North America (NA)', 'United States (US)', 'Cogent Communications', 'Cogent Communications', 'en-US,es-US,haw,fr', 'US Dollar', 'America/New_York', 1589968437, '2020-04-09 00:19:59', '2020-05-20 09:53:58'),
(220, '157.55.39.98', 'North America (NA)', 'United States (US)', 'Microsoft Corporation', 'Microsoft Corporation', 'en-US,es-US,haw,fr', 'US Dollar', 'America/Los_Angeles', 1586394351, '2020-04-09 01:05:51', '2020-04-09 17:42:51'),
(221, '209.17.97.82', 'North America (NA)', 'United States (US)', 'Cogent Communications', 'Cogent Communications', 'en-US,es-US,haw,fr', 'US Dollar', 'America/New_York', 1590089017, '2020-04-09 01:25:19', '2020-05-21 19:23:38'),
(222, '44.234.26.175', 'North America (NA)', 'United States (US)', 'Amazon Technologies Inc.', 'Amazon Technologies Inc. (EC2)', 'en-US,es-US,haw,fr', 'US Dollar', 'America/Los_Angeles', 1586410929, '2020-04-09 05:42:09', '2020-04-09 17:42:51'),
(223, '34.222.237.229', 'North America (NA)', 'United States (US)', 'Amazon Technologies Inc.', 'Amazon Technologies Inc. (EC2)', 'en-US,es-US,haw,fr', 'US Dollar', 'America/Los_Angeles', 1586410938, '2020-04-09 05:42:18', '2020-04-09 17:42:51'),
(224, '49.12.40.26', 'Europe (EU)', 'Germany (DE)', '', 'Hetzner Online GmbH', 'de', 'Euro', 'Europe/Berlin', 1586412103, '2020-04-09 06:01:44', '2020-04-09 17:42:52'),
(225, '195.154.207.112', 'Europe (EU)', 'France (FR)', 'ONLINE S.A.S.', 'Online S.A.S.', 'fr-FR,frp,br,co,ca,eu,oc', 'Euro', 'Europe/Paris', 1586453221, '2020-04-09 17:27:01', '2020-04-09 17:42:52'),
(226, '209.17.96.154', 'North America (NA)', 'United States (US)', 'Cogent Communications', 'Cogent Communications', 'en-US,es-US,haw,fr', 'US Dollar', 'America/New_York', 1590767824, '2020-04-10 00:06:55', '2020-05-29 15:57:05'),
(227, '121.79.135.147', 'Asia (AS)', 'China (CN)', 'LONGTEL NETWORKS & TECHNOLOGIES LTD.', 'LTEL', 'zh-CN,yue,wuu,dta,ug,za', 'Yuan Renminbi', 'Asia/Shanghai', 1586489142, '2020-04-10 03:25:42', '2020-04-10 09:03:03'),
(228, '216.19.195.128', 'North America (NA)', 'United States (US)', 'Getnet International', 'Getnet International', 'en-US,es-US,haw,fr', 'US Dollar', 'America/Phoenix', 1586520218, '2020-04-10 12:03:39', '2020-04-16 17:55:41'),
(229, '216.19.195.128', 'North America (NA)', 'United States (US)', 'Getnet International', 'Getnet International', 'en-US,es-US,haw,fr', 'US Dollar', 'America/Phoenix', 1586520218, '2020-04-10 12:03:39', '2020-04-16 17:55:41'),
(230, '216.19.195.128', 'North America (NA)', 'United States (US)', 'Getnet International', 'Getnet International', 'en-US,es-US,haw,fr', 'US Dollar', 'America/Phoenix', 1586520218, '2020-04-10 12:03:39', '2020-04-16 17:55:41'),
(231, '157.55.39.123', 'North America (NA)', 'United States (US)', 'Microsoft Corporation', 'Microsoft Corporation', 'en-US,es-US,haw,fr', 'US Dollar', 'America/Los_Angeles', 1589793511, '2020-04-11 00:48:15', '2020-05-18 09:18:31'),
(232, '46.4.33.48', 'Europe (EU)', 'Germany (DE)', 'Hetzner Online GmbH', 'Hetzner', 'de', 'Euro', 'Europe/Berlin', 1586579624, '2020-04-11 04:33:45', '2020-04-16 17:55:41'),
(233, '209.17.97.106', 'North America (NA)', 'United States (US)', 'Cogent Communications', 'Cogent Communications', 'en-US,es-US,haw,fr', 'US Dollar', 'America/New_York', 1590331213, '2020-04-11 11:54:14', '2020-05-24 14:40:14'),
(234, '167.114.252.180', 'Europe (EU)', 'France (FR)', 'OVH SAS', 'OVH Hosting', 'fr-FR,frp,br,co,ca,eu,oc', 'Euro', 'Europe/Paris', 1586606501, '2020-04-11 12:01:41', '2020-04-16 17:55:41'),
(235, '207.46.13.35', 'North America (NA)', 'United States (US)', 'Microsoft Corporation', 'Microsoft Corporation', 'en-US,es-US,haw,fr', 'US Dollar', 'America/Los_Angeles', 1586651534, '2020-04-12 00:32:14', '2020-04-16 17:55:41'),
(236, '91.132.138.62', 'Europe (EU)', 'Sweden (SE)', 'M247 Ltd.', 'M247 Ltd.', 'sv-SE,se,sma,fi-SE', 'Swedish Krona', 'Europe/Stockholm', 1586730293, '2020-04-12 22:24:53', '2020-04-16 17:55:41'),
(237, '89.248.174.46', 'Europe (EU)', 'Netherlands (NL)', 'IP Volume inc', 'Quasi Networks LTD.', 'nl-NL,fy-NL', 'Euro', 'Europe/Amsterdam', 1586744330, '2020-04-13 02:18:51', '2020-04-16 17:55:41'),
(238, '44.234.35.247', 'North America (NA)', 'United States (US)', 'Amazon Technologies Inc.', 'Amazon Technologies Inc. (EC2)', 'en-US,es-US,haw,fr', 'US Dollar', 'America/Los_Angeles', 1586755112, '2020-04-13 05:18:32', '2020-04-16 17:55:41'),
(239, '44.234.61.72', 'North America (NA)', 'United States (US)', 'Amazon Technologies Inc.', 'Amazon Technologies Inc. (EC2)', 'en-US,es-US,haw,fr', 'US Dollar', 'America/Los_Angeles', 1586755112, '2020-04-13 05:18:32', '2020-04-16 17:55:42'),
(240, '23.108.47.101', 'North America (NA)', 'United States (US)', 'Leaseweb USA, Inc.', 'Nobis Technology Group', 'en-US,es-US,haw,fr', 'US Dollar', 'America/New_York', 1586761311, '2020-04-13 07:01:44', '2020-04-16 17:55:42'),
(241, '137.97.250.198', 'Asia (AS)', 'India (IN)', 'Reliance Jio Infocomm Limited', 'Reliance Jio Infocomm Ltd', 'en-IN,hi,bn,te,mr,ta,ur,gu,kn,ml,or,pa,as,bh,sat,ks,ne,sd,kok,doi,mni,sit,sa,fr,lus,inc', 'Indian Rupee', 'Asia/Kolkata', 1586771099, '2020-04-13 09:45:00', '2020-05-05 10:36:39'),
(242, '157.55.39.56', 'North America (NA)', 'United States (US)', 'Microsoft Corporation', 'Microsoft Corporation', 'en-US,es-US,haw,fr', 'US Dollar', 'America/Los_Angeles', 1586781551, '2020-04-13 12:39:12', '2020-05-05 10:36:39'),
(243, '103.9.112.132', 'Asia (AS)', 'Bangladesh (BD)', 'Aamra technologies limited', 'Aamra technologies limited', 'bn-BD,en', 'Bangladeshi Taka', 'Asia/Dhaka', 1586872913, '2020-04-14 14:01:53', '2020-05-05 10:36:39'),
(244, '66.249.69.39', 'North America (NA)', 'United States (US)', 'Google LLC', 'Google LLC', 'en-US,es-US,haw,fr', 'US Dollar', 'America/New_York', 1588090820, '2020-04-14 16:12:41', '2020-05-05 10:36:39'),
(245, '66.249.69.35', 'North America (NA)', 'United States (US)', 'Google LLC', 'Google LLC', 'en-US,es-US,haw,fr', 'US Dollar', 'America/New_York', 1587776584, '2020-04-14 16:20:04', '2020-05-05 10:36:39'),
(246, '5.188.62.25', 'Europe (EU)', 'Russia (RU)', 'Petersburg Internet Network ltd.', 'cust8863', 'ru,tt,xal,cau,ady,kv,ce,tyv,cv,udm,tut,mns,bua,myv,mdf,chm,ba,inh,tut,kbd,krc,av,sah,nog', 'Russian Ruble', 'Asia/Vladivostok', 1586885569, '2020-04-14 17:32:50', '2020-05-05 10:36:39'),
(247, '168.91.42.38', 'North America (NA)', 'Canada (CA)', 'Sprious LLC', 'Sprious LLC', 'en-CA,fr-CA,iu', 'Canadian Dollar', 'America/Toronto', 1586895146, '2020-04-14 20:12:26', '2020-05-05 10:36:39'),
(248, '168.81.92.209', 'Europe (EU)', 'United Kingdom (GB)', 'M247 Ltd', 'M247 Ltd', 'en-GB,cy-GB,gd', 'Pound Sterling', 'Europe/London', 1586895146, '2020-04-14 20:12:26', '2020-05-05 10:36:39'),
(249, '66.146.237.253', 'North America (NA)', 'United States (US)', 'Sprious LLC', 'Affiniti, LLC', 'en-US,es-US,haw,fr', 'US Dollar', 'America/New_York', 1586895146, '2020-04-14 20:12:26', '2020-05-05 10:36:39'),
(250, '216.145.11.94', 'North America (NA)', 'United States (US)', 'Green House Data, Inc.', 'Green House Data, Inc.', 'en-US,es-US,haw,fr', 'US Dollar', 'America/Denver', 1586895595, '2020-04-14 20:19:56', '2020-05-05 10:36:40'),
(251, '54.208.102.37', 'North America (NA)', 'United States (US)', 'Amazon Technologies Inc.', 'Amazon Technologies Inc. (EC2)', 'en-US,es-US,haw,fr', 'US Dollar', 'America/New_York', 1586903329, '2020-04-14 22:28:49', '2020-05-05 10:36:40'),
(252, '107.21.1.8', 'North America (NA)', 'United States (US)', 'Amazon.com, Inc.', 'Amazon Technologies Inc. (EC2)', 'en-US,es-US,haw,fr', 'US Dollar', 'America/New_York', 1586903329, '2020-04-14 22:28:49', '2020-05-05 10:36:40'),
(253, '51.77.249.198', 'Europe (EU)', 'France (FR)', 'OVH SAS', 'OVH SAS', 'fr-FR,frp,br,co,ca,eu,oc', 'Euro', 'Europe/Paris', 1586946643, '2020-04-15 10:30:44', '2020-05-05 10:36:40'),
(254, '37.111.239.226', 'Asia (AS)', 'Bangladesh (BD)', 'grameenphone limited', 'Grameenphone Ltd', 'bn-BD,en', 'Bangladeshi Taka', 'Asia/Dhaka', 1586965654, '2020-04-15 15:47:12', '2020-05-05 10:36:40'),
(255, '197.237.231.49', 'Africa (AF)', 'Kenya (KE)', 'Wananchi Group (Kenya) Limited', 'Wananchi Group (K) LTD', 'en-KE,sw-KE', 'Kenyan Shilling', 'Africa/Nairobi', 1586969841, '2020-04-15 16:56:16', '2020-05-05 10:36:40'),
(256, '168.81.93.114', 'Europe (EU)', 'United Kingdom (GB)', 'M247 Ltd', 'M247 Ltd', 'en-GB,cy-GB,gd', 'Pound Sterling', 'Europe/London', 1586993619, '2020-04-15 23:33:32', '2020-05-05 10:36:40'),
(257, '192.71.103.173', 'Europe (EU)', 'Germany (DE)', 'GleSYS AB', 'InternetVikings', 'de', 'Euro', 'Europe/Berlin', 1586993667, '2020-04-15 23:34:27', '2020-05-05 10:36:40'),
(258, '103.216.223.11', 'Asia (AS)', 'Singapore (SG)', 'Host Universal Pty Ltd', 'Host Universal Pty Ltd', 'cmn,en-SG,ms-SG,ta-SG,zh-SG', 'Singapore Dollar', 'Asia/Singapore', 1587029197, '2020-04-16 09:26:38', '2020-05-05 10:36:40');
INSERT INTO `geotrack` (`id`, `addr`, `continent`, `country`, `org`, `isp`, `lang`, `currency`, `timezone`, `last_login`, `created_at`, `updated_at`) VALUES
(259, '114.115.190.21', 'Asia (AS)', 'China (CN)', 'China Unicom Beijing Province Network', 'HWCSNET', 'zh-CN,yue,wuu,dta,ug,za', 'Yuan Renminbi', 'Asia/Shanghai', 1587039453, '2020-04-16 12:17:34', '2020-05-05 10:36:41'),
(260, '34.220.149.120', 'North America (NA)', 'United States (US)', 'Amazon Technologies Inc.', 'Amazon Technologies Inc. (EC2)', 'en-US,es-US,haw,fr', 'US Dollar', 'America/Los_Angeles', 1587072257, '2020-04-16 21:24:18', '2020-05-05 10:36:41'),
(261, '54.148.138.129', 'North America (NA)', 'United States (US)', 'Amazon Technologies Inc.', 'Amazon Technologies Inc. (EC2)', 'en-US,es-US,haw,fr', 'US Dollar', 'America/Los_Angeles', 1587072257, '2020-04-16 21:24:18', '2020-05-05 10:36:41'),
(262, '162.246.22.20', 'North America (NA)', 'United States (US)', 'Interserver, Inc', 'Interserver', 'en-US,es-US,haw,fr', 'US Dollar', 'America/New_York', 1587074103, '2020-04-16 21:55:02', '2020-05-05 10:36:41'),
(263, '52.160.71.48', 'North America (NA)', 'United States (US)', 'Microsoft Corporation', 'Microsoft Corporation', 'en-US,es-US,haw,fr', 'US Dollar', 'America/Los_Angeles', 1587091249, '2020-04-17 02:40:50', '2020-05-05 10:36:41'),
(264, '209.17.97.50', 'North America (NA)', 'United States (US)', 'Cogent Communications', 'Cogent Communications', 'en-US,es-US,haw,fr', 'US Dollar', 'America/New_York', 1589992044, '2020-04-17 07:32:01', '2020-05-20 16:27:24'),
(265, '207.46.13.13', 'North America (NA)', 'United States (US)', 'Microsoft Corporation', 'Microsoft Corporation', 'en-US,es-US,haw,fr', 'US Dollar', 'America/Los_Angeles', 1587124069, '2020-04-17 11:47:50', '2020-05-05 10:36:41'),
(266, '207.46.13.132', 'North America (NA)', 'United States (US)', 'Microsoft Corporation', 'Microsoft Corporation', 'en-US,es-US,haw,fr', 'US Dollar', 'America/Los_Angeles', 1587316619, '2020-04-19 01:40:32', '2020-05-05 10:36:41'),
(267, '52.250.115.42', 'North America (NA)', 'United States (US)', 'Microsoft Corporation', 'Microsoft Corporation', 'en-US,es-US,haw,fr', 'US Dollar', 'America/Los_Angeles', 1587269093, '2020-04-19 04:04:54', '2020-05-05 10:36:41'),
(268, '188.72.82.132', 'Europe (EU)', 'Netherlands (NL)', 'Voxility LLP', 'PureVPN', 'nl-NL,fy-NL', 'Euro', 'Europe/Amsterdam', 1587285064, '2020-04-19 08:31:04', '2020-05-05 10:36:41'),
(269, '51.144.40.83', 'Europe (EU)', 'Netherlands (NL)', 'Microsoft Corporation', 'Microsoft Corporation', 'nl-NL,fy-NL', 'Euro', 'Europe/Amsterdam', 1587322228, '2020-04-19 18:50:28', '2020-05-05 10:36:42'),
(270, '23.101.65.173', 'Europe (EU)', 'Netherlands (NL)', 'Microsoft Corporation', 'Microsoft Corporation', 'nl-NL,fy-NL', 'Euro', 'Europe/Amsterdam', 1587322401, '2020-04-19 18:53:21', '2020-05-05 10:36:42'),
(271, '13.80.157.159', 'Europe (EU)', 'Netherlands (NL)', 'Microsoft Corporation', 'Microsoft Corporation', 'nl-NL,fy-NL', 'Euro', 'Europe/Amsterdam', 1587322597, '2020-04-19 18:56:37', '2020-05-05 10:36:42'),
(272, '104.211.39.128', 'North America (NA)', 'United States (US)', 'Microsoft Corporation', 'Microsoft Corporation', 'en-US,es-US,haw,fr', 'US Dollar', 'America/Los_Angeles', 1587626736, '2020-04-20 00:54:17', '2020-05-05 10:36:42'),
(273, '185.129.148.31', 'Europe (EU)', 'Latvia (LV)', '', 'IT_SERVICES', 'lv,ru,lt', 'Euro', 'Europe/Riga', 1587355074, '2020-04-20 03:57:54', '2020-05-05 10:36:42'),
(274, '192.71.42.108', 'Europe (EU)', 'Sweden (SE)', 'GleSYS AB', 'InternetVikings', 'sv-SE,se,sma,fi-SE', 'Swedish Krona', 'Europe/Stockholm', 1587370404, '2020-04-20 08:13:24', '2020-05-05 10:36:42'),
(275, '194.67.93.10', 'Europe (EU)', 'Russia (RU)', '', 'TRINITI2', 'ru,tt,xal,cau,ady,kv,ce,tyv,cv,udm,tut,mns,bua,myv,mdf,chm,ba,inh,tut,kbd,krc,av,sah,nog', 'Russian Ruble', 'Europe/Moscow', 1587390941, '2020-04-20 13:55:42', '2020-05-05 10:36:42'),
(276, '93.169.199.101', 'Asia (AS)', 'Saudi Arabia (SA)', '', 'SaudiNet', 'ar-SA', 'Saudi Riyal', 'Asia/Riyadh', 1587407869, '2020-04-20 18:35:42', '2020-05-05 10:36:42'),
(277, '209.17.96.250', 'North America (NA)', 'United States (US)', 'Cogent Communications', 'Cogent Communications', 'en-US,es-US,haw,fr', 'US Dollar', 'America/New_York', 1587423755, '2020-04-20 23:02:35', '2020-05-05 10:36:42'),
(278, '209.17.96.34', 'North America (NA)', 'United States (US)', 'Cogent Communications', 'Cogent Communications', 'en-US,es-US,haw,fr', 'US Dollar', 'America/New_York', 1587751238, '2020-04-21 00:52:19', '2020-05-05 10:36:43'),
(279, '219.222.79.86', 'Asia (AS)', 'China (CN)', 'CERNET2 IX at South China University of Technology', 'SCAUB', 'zh-CN,yue,wuu,dta,ug,za', 'Yuan Renminbi', 'Asia/Shanghai', 1587431608, '2020-04-21 01:13:25', '2020-05-05 10:36:43'),
(280, '54.68.98.63', 'North America (NA)', 'United States (US)', 'Amazon Technologies Inc.', 'Amazon Technologies Inc. (EC2)', 'en-US,es-US,haw,fr', 'US Dollar', 'America/Los_Angeles', 1587471636, '2020-04-21 12:20:37', '2020-05-05 10:36:43'),
(281, '209.17.96.178', 'North America (NA)', 'United States (US)', 'Cogent Communications', 'Cogent Communications', 'en-US,es-US,haw,fr', 'US Dollar', 'America/New_York', 1590481361, '2020-04-21 13:06:05', '2020-05-26 08:22:41'),
(282, '23.97.155.253', 'Europe (EU)', 'Netherlands (NL)', 'Microsoft Corporation', 'Microsoft Corporation', 'nl-NL,fy-NL', 'Euro', 'Europe/Amsterdam', 1587621632, '2020-04-23 06:00:17', '2020-05-05 10:36:43'),
(283, '185.254.70.34', 'Europe (EU)', 'Netherlands (NL)', 'ASN block not managed by the RIPE NCC', 'Total Server Solutions L.L.C.', 'nl-NL,fy-NL', 'Euro', 'Europe/Amsterdam', 1587753982, '2020-04-24 18:46:23', '2020-05-05 10:36:43'),
(284, '52.246.189.115', 'Asia (AS)', 'Japan (JP)', 'Microsoft Corporation', 'Microsoft Corporation', 'ja', 'Yen', 'Asia/Tokyo', 1587781282, '2020-04-25 02:21:22', '2020-05-05 10:36:43'),
(285, '209.17.96.146', 'North America (NA)', 'United States (US)', 'Cogent Communications', 'Cogent Communications', 'en-US,es-US,haw,fr', 'US Dollar', 'America/New_York', 1587781689, '2020-04-25 02:28:09', '2020-05-05 10:36:43'),
(286, '34.217.144.187', 'North America (NA)', 'United States (US)', 'Amazon Technologies Inc.', 'Amazon Technologies Inc. (EC2)', 'en-US,es-US,haw,fr', 'US Dollar', 'America/Los_Angeles', 1587829144, '2020-04-25 15:39:05', '2020-05-05 10:36:43'),
(287, '37.187.67.243', 'Europe (EU)', 'France (FR)', 'RIPE Network Coordination Centre', 'OVH SAS', 'fr-FR,frp,br,co,ca,eu,oc', 'Euro', 'Europe/Paris', 1587831595, '2020-04-25 16:19:54', '2020-05-05 10:36:43'),
(288, '157.55.170.90', 'North America (NA)', 'United States (US)', 'Microsoft Corporation', 'Microsoft Corporation', 'en-US,es-US,haw,fr', 'US Dollar', 'America/Chicago', 1587868983, '2020-04-26 02:42:58', '2020-05-05 10:36:44'),
(289, '129.208.133.141', 'Asia (AS)', 'Saudi Arabia (SA)', 'Saudi Telecom Company JSC', 'Saudi Arabia backbone and local registry / STC', 'ar-SA', 'Saudi Riyal', 'Asia/Riyadh', 1587887046, '2020-04-26 07:44:07', '2020-05-05 10:36:44'),
(290, '51.39.106.192', 'Asia (AS)', 'Saudi Arabia (SA)', 'MTC KSA', 'Zain KSA', 'ar-SA', 'Saudi Riyal', 'Asia/Riyadh', 1587918024, '2020-04-26 16:20:24', '2020-05-05 10:36:44'),
(291, '176.45.213.124', 'Asia (AS)', 'Saudi Arabia (SA)', 'Saudi Telecom Company JSC', 'Saudinet', 'ar-SA', 'Saudi Riyal', 'Asia/Riyadh', 1587919254, '2020-04-26 16:37:46', '2020-05-05 10:36:44'),
(292, '178.162.203.197', 'Europe (EU)', 'Germany (DE)', 'Leaseweb Deutschland GmbH', 'Leaseweb Deutschland GmbH', 'de', 'Euro', 'Europe/Berlin', 1587928258, '2020-04-26 19:10:53', '2020-05-05 10:36:44'),
(293, '65.52.16.39', 'North America (NA)', 'United States (US)', 'Microsoft Corporation', 'Microsoft Corporation', 'en-US,es-US,haw,fr', 'US Dollar', 'America/Chicago', 1589933179, '2020-04-27 04:09:23', '2020-05-20 00:06:19'),
(294, '47.114.143.7', 'Asia (AS)', 'China (CN)', '', 'ALISOFT', 'zh-CN,yue,wuu,dta,ug,za', 'Yuan Renminbi', 'Asia/Shanghai', 1587964008, '2020-04-27 05:06:48', '2020-05-05 10:36:44'),
(295, '34.219.74.216', 'North America (NA)', 'United States (US)', 'Amazon Technologies Inc.', 'Amazon Technologies Inc. (EC2)', 'en-US,es-US,haw,fr', 'US Dollar', 'America/Los_Angeles', 1587988954, '2020-04-27 12:02:35', '2020-05-05 10:36:44'),
(296, '109.169.64.234', 'Europe (EU)', 'United Kingdom (GB)', 'IOMART CLOUD SERVICES LIMITED', 'Iomart Cloud Services Limited', 'en-GB,cy-GB,gd', 'Pound Sterling', 'Europe/London', 1587992872, '2020-04-27 13:07:01', '2020-05-05 10:36:44'),
(297, '51.39.90.97', 'Asia (AS)', 'Saudi Arabia (SA)', 'MTC KSA', 'Zain KSA', 'ar-SA', 'Saudi Riyal', 'Asia/Riyadh', 1588022704, '2020-04-27 21:25:05', '2020-05-05 10:36:45'),
(298, '47.113.187.38', 'Asia (AS)', 'China (CN)', 'Hangzhou Alibaba Advertising Co.,Ltd.', 'Hangzhou Alibaba Advertising Co., Ltd.', 'zh-CN,yue,wuu,dta,ug,za', 'Yuan Renminbi', 'Asia/Shanghai', 1588029758, '2020-04-27 23:22:39', '2020-05-05 10:36:45'),
(299, '51.89.201.8', 'Europe (EU)', 'France (FR)', 'OVH SAS', 'OVH', 'fr-FR,frp,br,co,ca,eu,oc', 'Euro', 'Europe/Paris', 1588057360, '2020-04-28 07:02:41', '2020-05-05 10:36:45'),
(300, '157.55.39.198', 'North America (NA)', 'United States (US)', 'Microsoft Corporation', 'Microsoft Corporation', 'en-US,es-US,haw,fr', 'US Dollar', 'America/Los_Angeles', 1588112883, '2020-04-28 22:28:04', '2020-05-05 10:36:45'),
(301, '45.77.18.104', 'Asia (AS)', 'Japan (JP)', 'Choopa, LLC', 'Choopa', 'ja', 'Yen', 'Asia/Tokyo', 1588126719, '2020-04-29 02:18:39', '2020-05-05 10:36:45'),
(302, '209.17.97.66', 'North America (NA)', 'United States (US)', 'Cogent Communications', 'Cogent Communications', 'en-US,es-US,haw,fr', 'US Dollar', 'America/New_York', 1588950205, '2020-04-29 10:54:38', '2020-05-08 15:03:26'),
(303, '66.249.69.32', 'North America (NA)', 'United States (US)', 'Google LLC', 'Google LLC', 'en-US,es-US,haw,fr', 'US Dollar', 'America/New_York', 1588183047, '2020-04-29 17:57:28', '2020-05-05 10:36:45'),
(304, '192.36.52.37', 'Europe (EU)', 'Sweden (SE)', 'Internet Vikings International AB', 'InternetBolaget Sweden AB', 'sv-SE,se,sma,fi-SE', 'Swedish Krona', 'Europe/Stockholm', 1590418926, '2020-05-01 03:00:45', '2020-05-25 15:02:06'),
(305, '209.17.96.186', 'North America (NA)', 'United States (US)', 'Cogent Communications', 'Cogent Communications', 'en-US,es-US,haw,fr', 'US Dollar', 'America/New_York', 1588312486, '2020-05-01 05:54:46', '2020-05-05 10:36:45'),
(306, '209.17.97.58', 'North America (NA)', 'United States (US)', 'Cogent Communications', 'Cogent Communications', 'en-US,es-US,haw,fr', 'US Dollar', 'America/New_York', 1588321395, '2020-05-01 08:23:15', '2020-05-05 10:36:45'),
(307, '94.21.92.239', 'Europe (EU)', 'Hungary (HU)', 'DIGI Tavkozlesi es Szolgaltato Kft.', 'HDSNET', 'hu-HU', 'Forint', 'Europe/Budapest', 1588342320, '2020-05-01 11:57:30', '2020-05-05 10:36:46'),
(308, '51.15.4.97', 'Europe (EU)', 'Netherlands (NL)', 'ONLINE S.A.S.', 'Online S.A.S.', 'nl-NL,fy-NL', 'Euro', 'Europe/Amsterdam', 1588347910, '2020-05-01 15:45:11', '2020-05-05 10:36:46'),
(309, '45.77.134.191', 'Asia (AS)', 'Japan (JP)', 'Choopa, LLC', 'Choopa', 'ja', 'Yen', 'Asia/Tokyo', 1588366694, '2020-05-01 20:58:14', '2020-05-05 10:36:46'),
(310, '69.50.235.211', 'North America (NA)', 'United States (US)', '', 'Hype Enterprises', 'en-US,es-US,haw,fr', 'US Dollar', 'America/New_York', 1588404234, '2020-05-02 07:23:54', '2020-05-05 10:36:46'),
(311, '54.184.129.97', 'North America (NA)', 'United States (US)', 'Amazon Technologies Inc.', 'Amazon Technologies Inc. (EC2)', 'en-US,es-US,haw,fr', 'US Dollar', 'America/Los_Angeles', 1588421757, '2020-05-02 12:15:58', '2020-05-05 10:36:46'),
(312, '45.77.226.127', 'Europe (EU)', 'United Kingdom (GB)', 'Choopa, LLC', 'Choopa', 'en-GB,cy-GB,gd', 'Pound Sterling', 'Europe/London', 1588504989, '2020-05-03 11:23:10', '2020-05-05 10:36:46'),
(313, '34.222.198.185', 'North America (NA)', 'United States (US)', 'Amazon Technologies Inc.', 'Amazon Technologies Inc. (EC2)', 'en-US,es-US,haw,fr', 'US Dollar', 'America/Los_Angeles', 1588508457, '2020-05-03 12:20:57', '2020-05-05 10:36:46'),
(314, '52.39.44.99', 'North America (NA)', 'United States (US)', 'Amazon Technologies Inc.', 'Amazon Technologies Inc. (EC2)', 'en-US,es-US,haw,fr', 'US Dollar', 'America/Los_Angeles', 1588508458, '2020-05-03 12:20:58', '2020-05-05 10:36:46'),
(315, '211.56.145.140', 'Asia (AS)', 'South Korea (KR)', 'DREAMLINE CO.', 'DREAMX', 'ko-KR,en', 'Won', 'Asia/Seoul', 1588510048, '2020-05-03 12:47:16', '2020-05-05 10:36:46'),
(316, '95.179.255.228', 'Europe (EU)', 'France (FR)', 'ASN block not managed by the RIPE NCC', 'Choopa', 'fr-FR,frp,br,co,ca,eu,oc', 'Euro', 'Europe/Paris', 1588562833, '2020-05-04 03:27:14', '2020-05-05 10:36:46'),
(317, '54.87.84.78', 'North America (NA)', 'United States (US)', 'Amazon.com, Inc.', 'Amazon Technologies Inc. (EC2)', 'en-US,es-US,haw,fr', 'US Dollar', 'America/New_York', 1588577830, '2020-05-04 07:37:11', '2020-05-05 10:36:47'),
(318, '197.221.211.5', 'Africa (AF)', 'Tanzania (TZ)', 'Zanzibar Telecom(Zantel)', 'Zantel', 'sw-TZ,en,ar', 'Tanzanian Shilling', 'Africa/Dar_es_Salaam', 1588578674, '2020-05-04 07:51:14', '2020-05-05 10:36:47'),
(319, '18.185.0.202', 'Europe (EU)', 'Germany (DE)', 'Amazon Technologies Inc.', 'Amazon Technologies Inc. (EC2)', 'de', 'Euro', 'Europe/Berlin', 1588617327, '2020-05-04 18:35:28', '2020-05-05 10:36:47'),
(320, '40.77.167.205', 'North America (NA)', 'United States (US)', 'Microsoft Corporation', 'Microsoft Corporation', 'en-US,es-US,haw,fr', 'US Dollar', 'America/New_York', 1588630866, '2020-05-04 22:21:07', '2020-05-05 10:36:47'),
(321, '142.93.190.110', 'North America (NA)', 'United States (US)', 'ASN block not managed by the RIPE NCC', 'DigitalOcean, LLC', 'en-US,es-US,haw,fr', 'US Dollar', 'America/New_York', 1588656880, '2020-05-05 05:34:41', '2020-05-05 10:36:47'),
(322, '103.136.200.0', 'Asia (AS)', 'Bangladesh (BD)', 'Polly IT', 'Polly IT', 'bn-BD,en', 'Bangladeshi Taka', 'Asia/Dhaka', 1588674273, '2020-05-05 10:20:30', '2020-05-05 10:36:47'),
(323, '40.77.167.135', 'North America (NA)', 'United States (US)', 'Microsoft Corporation', 'Microsoft Corporation', 'en-US,es-US,haw,fr', 'US Dollar', 'America/New_York', 1588674140, '2020-05-05 10:22:20', '2020-05-05 10:36:47'),
(324, '202.168.72.105', 'Asia (AS)', 'Malaysia (MY)', 'ALLO TECHNOLOGY SDN. BHD.', 'Setia Haruman Technology Sdn Bhd', 'ms-MY,en,zh,ta,te,ml,pa,th', 'Malaysian Ringgit', 'Asia/Kuala_Lumpur', 1588680414, '2020-05-05 12:06:55', '2020-05-22 20:30:10'),
(325, '95.216.113.229', 'Europe (EU)', 'Finland (FI)', 'Hetzner Online GmbH', 'HETZNER-DC', 'fi-FI,sv-FI,smn', 'Euro', 'Europe/Helsinki', 1589827464, '2020-05-05 13:38:32', '2020-05-22 20:30:10'),
(326, '209.17.96.194', 'North America (NA)', 'United States (US)', 'Cogent Communications', 'Cogent Communications', 'en-US,es-US,haw,fr', 'US Dollar', 'America/New_York', 1590836136, '2020-05-05 14:46:06', '2020-05-30 10:55:37'),
(327, '64.225.18.209', 'North America (NA)', 'United States (US)', 'Cogeco Peer 1', 'Cogeco Peer 1', 'en-US,es-US,haw,fr', 'US Dollar', 'America/New_York', 1588695887, '2020-05-05 16:24:48', '2020-05-22 20:30:10'),
(328, '136.244.111.95', 'North America (NA)', 'United States (US)', 'Choopa, LLC', 'TACHUS INFRASTRUCTURE LLC', 'en-US,es-US,haw,fr', 'US Dollar', 'America/Chicago', 1589057401, '2020-05-06 07:35:21', '2020-05-22 20:30:10'),
(329, '209.17.96.242', 'North America (NA)', 'United States (US)', 'Cogent Communications', 'Cogent Communications', 'en-US,es-US,haw,fr', 'US Dollar', 'America/New_York', 1588954788, '2020-05-08 08:06:47', '2020-05-22 20:30:10'),
(330, '47.101.189.169', 'Asia (AS)', 'China (CN)', 'Hangzhou Alibaba Advertising Co.,Ltd.', 'Addresses CNNIC', 'zh-CN,yue,wuu,dta,ug,za', 'Yuan Renminbi', 'Asia/Shanghai', 1588962482, '2020-05-08 18:28:02', '2020-05-22 20:30:10'),
(331, '40.77.167.174', 'North America (NA)', 'United States (US)', 'Microsoft Corporation', 'Microsoft Corporation', 'en-US,es-US,haw,fr', 'US Dollar', 'America/New_York', 1588964801, '2020-05-08 19:06:42', '2020-05-22 20:30:10'),
(332, '47.254.88.2', 'North America (NA)', 'United States (US)', 'Asia Pacific Network Information Centre', 'Alibaba.com LLC', 'en-US,es-US,haw,fr', 'US Dollar', 'America/Los_Angeles', 1588970017, '2020-05-08 20:33:38', '2020-05-22 20:30:10'),
(333, '51.89.201.9', 'Europe (EU)', 'France (FR)', 'OVH SAS', 'OVH', 'fr-FR,frp,br,co,ca,eu,oc', 'Euro', 'Europe/Paris', 1591118265, '2020-05-08 23:39:18', '2020-06-02 17:17:46'),
(334, '66.249.69.159', 'North America (NA)', 'United States (US)', 'Google LLC', 'Google LLC', 'en-US,es-US,haw,fr', 'US Dollar', 'America/New_York', 1591004779, '2020-05-09 04:58:15', '2020-06-01 09:46:20'),
(335, '192.71.224.240', 'Europe (EU)', 'Sweden (SE)', 'Internet Vikings International AB', 'Internetbolaget', 'sv-SE,se,sma,fi-SE', 'Swedish Krona', 'Europe/Stockholm', 1589012011, '2020-05-09 08:13:32', '2020-05-22 20:30:11'),
(336, '115.164.50.232', 'Asia (AS)', 'Malaysia (MY)', 'Asia Pacific Network Information Centre', 'DiGi Telecommunications Sdn. Bhd.', 'ms-MY,en,zh,ta,te,ml,pa,th', 'Malaysian Ringgit', 'Asia/Kuala_Lumpur', 1589020545, '2020-05-09 10:32:31', '2020-05-22 20:30:11'),
(337, '52.40.241.61', 'North America (NA)', 'United States (US)', 'Amazon Technologies Inc.', 'Amazon Technologies Inc. (EC2)', 'en-US,es-US,haw,fr', 'US Dollar', 'America/Los_Angeles', 1589025708, '2020-05-09 12:01:49', '2020-05-22 20:30:11'),
(338, '64.246.165.170', 'North America (NA)', 'United States (US)', 'Green House Data, Inc.', 'Green House Data, Inc.', 'en-US,es-US,haw,fr', 'US Dollar', 'America/Los_Angeles', 1589060378, '2020-05-09 21:39:38', '2020-05-22 20:30:11'),
(339, '66.249.69.157', 'North America (NA)', 'United States (US)', 'Google LLC', 'Google LLC', 'en-US,es-US,haw,fr', 'US Dollar', 'America/New_York', 1591290345, '2020-05-09 21:55:09', '2020-06-04 17:05:46'),
(340, '46.45.185.164', 'Asia (AS)', 'Turkey (TR)', 'Radore Veri Merkezi Hizmetleri A.S.', 'RADORE', 'tr-TR,ku,diq,az,av', 'Turkish Lira', 'Europe/Istanbul', 1589096918, '2020-05-10 07:48:39', '2020-05-22 20:30:11'),
(341, '115.164.57.160', 'Asia (AS)', 'Malaysia (MY)', 'Asia Pacific Network Information Centre', 'DiGi Telecommunications Sdn. Bhd.', 'ms-MY,en,zh,ta,te,ml,pa,th', 'Malaysian Ringgit', 'Asia/Kuala_Lumpur', 1589105985, '2020-05-10 10:06:07', '2020-05-22 20:30:11'),
(342, '104.210.83.132', 'Oceania (OC)', 'Australia (AU)', 'Microsoft Corporation', 'Microsoft Corporation', 'en-AU', 'Australian Dollar', 'Australia/Sydney', 1589115622, '2020-05-10 13:00:23', '2020-05-22 20:30:11'),
(343, '45.56.76.224', 'North America (NA)', 'United States (US)', 'Internet Assigned Numbers Authority', 'Linode, LLC', 'en-US,es-US,haw,fr', 'US Dollar', 'America/Chicago', 1589131087, '2020-05-10 17:18:08', '2020-05-22 20:30:12'),
(344, '34.223.63.63', 'North America (NA)', 'United States (US)', 'Amazon Technologies Inc.', 'Amazon Technologies Inc. (EC2)', 'en-US,es-US,haw,fr', 'US Dollar', 'America/Los_Angeles', 1589199521, '2020-05-11 12:18:42', '2020-05-22 20:30:12'),
(345, '66.249.69.103', 'North America (NA)', 'United States (US)', 'Google LLC', 'Google LLC', 'en-US,es-US,haw,fr', 'US Dollar', 'America/New_York', 1589206714, '2020-05-11 14:18:34', '2020-05-22 20:30:12'),
(346, '207.46.13.72', 'North America (NA)', 'United States (US)', 'Microsoft Corporation', 'Microsoft Corporation', 'en-US,es-US,haw,fr', 'US Dollar', 'America/Los_Angeles', 1589209184, '2020-05-11 14:59:44', '2020-05-22 20:30:12'),
(347, '69.160.160.55', 'North America (NA)', 'United States (US)', 'NetSource Communications, Inc.', 'NetSource Communications, Inc.', 'en-US,es-US,haw,fr', 'US Dollar', 'America/Chicago', 1589254857, '2020-05-12 03:40:45', '2020-05-22 20:30:12'),
(348, '69.195.128.186', 'North America (NA)', 'United States (US)', 'Joe\'s Datacenter, LLC', 'Joe\'s Datacenter, LLC', 'en-US,es-US,haw,fr', 'US Dollar', 'America/Chicago', 1589255540, '2020-05-12 03:52:15', '2020-05-22 20:30:12'),
(349, '173.44.164.127', 'North America (NA)', 'United States (US)', 'RIPE Network Coordination Centre', 'Eonix Corporation', 'en-US,es-US,haw,fr', 'US Dollar', 'America/Phoenix', 1589255541, '2020-05-12 03:52:21', '2020-05-22 20:30:12'),
(350, '185.225.36.61', 'Asia (AS)', 'Turkey (TR)', 'Radore Veri Merkezi Hizmetleri A.S.', 'Obje', 'tr-TR,ku,diq,az,av', 'Turkish Lira', 'Europe/Istanbul', 1589269325, '2020-05-12 07:42:06', '2020-05-22 20:30:12'),
(351, '185.225.36.61', 'Asia (AS)', 'Turkey (TR)', 'Radore Veri Merkezi Hizmetleri A.S.', 'Obje', 'tr-TR,ku,diq,az,av', 'Turkish Lira', 'Europe/Istanbul', 1589269325, '2020-05-12 07:42:06', '2020-05-22 20:30:12'),
(352, '52.185.132.126', 'Asia (AS)', 'Japan (JP)', 'Microsoft Corporation', 'Microsoft Corporation', 'ja', 'Yen', 'Asia/Tokyo', 1589289011, '2020-05-12 13:10:14', '2020-05-22 20:30:13'),
(353, '84.236.19.82', 'Europe (EU)', 'Hungary (HU)', 'DIGI Tavkozlesi es Szolgaltato Kft.', 'DIGI Tavkozlesi es Szolgaltato Kft.', 'hu-HU', 'Forint', 'Europe/Budapest', 1589309287, '2020-05-12 18:48:08', '2020-05-22 20:30:13'),
(354, '44.234.19.192', 'North America (NA)', 'United States (US)', 'Amazon Technologies Inc.', 'Amazon Technologies Inc. (EC2)', 'en-US,es-US,haw,fr', 'US Dollar', 'America/Los_Angeles', 1589372404, '2020-05-13 12:20:05', '2020-05-22 20:30:13'),
(355, '92.38.136.69', 'Europe (EU)', 'Russia (RU)', 'G-Core Labs S.A.', 'G-Core Labs S.A.', 'ru,tt,xal,cau,ady,kv,ce,tyv,cv,udm,tut,mns,bua,myv,mdf,chm,ba,inh,tut,kbd,krc,av,sah,nog', 'Russian Ruble', 'Europe/Moscow', 1589444199, '2020-05-14 08:16:38', '2020-05-22 20:30:13'),
(356, '116.233.112.231', 'Asia (AS)', 'China (CN)', 'China Telecom (Group)', 'China Telecom (Group)', 'zh-CN,yue,wuu,dta,ug,za', 'Yuan Renminbi', 'Asia/Shanghai', 1589448337, '2020-05-14 09:25:37', '2020-05-22 20:30:13'),
(357, '207.46.13.107', 'North America (NA)', 'United States (US)', 'Microsoft Corporation', 'Microsoft Corporation', 'en-US,es-US,haw,fr', 'US Dollar', 'America/Los_Angeles', 1589450745, '2020-05-14 10:05:46', '2020-05-22 20:30:13'),
(358, '77.234.65.170', 'Europe (EU)', 'Hungary (HU)', 'DIGI Tavkozlesi es Szolgaltato Kft.', 'DIGI Tavkozlesi es Szolgaltato Kft.', 'hu-HU', 'Forint', 'Europe/Budapest', 1589779007, '2020-05-14 13:45:53', '2020-05-22 20:30:13'),
(359, '194.177.219.164', 'Europe (EU)', 'Greece (GR)', 'Greek Research and Technology Network S.A', 'Greek Research and Technology Network S.A', 'el-GR,en,fr', 'Euro', 'Europe/Athens', 1589497315, '2020-05-14 23:01:56', '2020-05-22 20:30:13'),
(360, '34.192.8.69', 'North America (NA)', 'United States (US)', 'Amazon Technologies Inc.', 'Amazon Technologies Inc. (EC2)', 'en-US,es-US,haw,fr', 'US Dollar', 'America/New_York', 1589505467, '2020-05-15 01:17:47', '2020-05-22 20:30:13'),
(361, '209.17.96.218', 'North America (NA)', 'United States (US)', 'Cogent Communications', 'Cogent Communications', 'en-US,es-US,haw,fr', 'US Dollar', 'America/New_York', 1589541454, '2020-05-15 11:17:34', '2020-05-22 20:30:13'),
(362, '209.17.97.122', 'North America (NA)', 'United States (US)', 'Cogent Communications', 'Cogent Communications', 'en-US,es-US,haw,fr', 'US Dollar', 'America/New_York', 1589565334, '2020-05-15 17:55:34', '2020-05-22 20:30:13'),
(363, '209.17.97.42', 'North America (NA)', 'United States (US)', 'Cogent Communications', 'Cogent Communications', 'en-US,es-US,haw,fr', 'US Dollar', 'America/New_York', 1589612905, '2020-05-16 07:08:26', '2020-05-22 20:30:14'),
(364, '104.41.176.245', 'Asia (AS)', 'Japan (JP)', 'Microsoft Corporation', 'Microsoft Corporation', 'ja', 'Yen', 'Asia/Tokyo', 1589617906, '2020-05-16 08:31:30', '2020-05-22 20:30:14'),
(365, '200.14.55.198', 'North America (NA)', 'Cuba (CU)', 'Empresa de Telecomunicaciones de Cuba, S.A.', 'Empresa de Telecomunicaciones de Cuba, S.A.', 'es-CU', 'Cuban Peso', 'America/Havana', 1589652225, '2020-05-16 18:03:45', '2020-05-22 20:30:14'),
(366, '40.77.167.87', 'North America (NA)', 'United States (US)', 'Microsoft Corporation', 'Microsoft Corporation', 'en-US,es-US,haw,fr', 'US Dollar', 'America/New_York', 1589658953, '2020-05-16 19:55:54', '2020-05-22 20:30:14'),
(367, '206.41.174.95', 'North America (NA)', 'United States (US)', 'RIPE Network Coordination Centre', 'ThoughtPort Networking Svcs', 'en-US,es-US,haw,fr', 'US Dollar', 'America/New_York', 1589659546, '2020-05-16 20:05:47', '2020-05-22 20:30:14'),
(368, '192.71.10.105', 'Europe (EU)', 'Sweden (SE)', 'GleSYS AB', 'InternetVikings', 'sv-SE,se,sma,fi-SE', 'Swedish Krona', 'Europe/Stockholm', 1589738298, '2020-05-17 17:58:18', '2020-05-22 20:30:14'),
(369, '130.61.36.89', 'North America (NA)', 'United States (US)', 'Oracle Corporation', 'Oracle Corporation', 'en-US,es-US,haw,fr', 'US Dollar', 'America/Los_Angeles', 1589741756, '2020-05-17 18:55:56', '2020-05-22 20:30:14'),
(370, '107.183.7.120', 'North America (NA)', 'United States (US)', 'Enzu Inc', 'Enzu Inc', 'en-US,es-US,haw,fr', 'US Dollar', 'America/Los_Angeles', 1589776822, '2020-05-18 04:40:20', '2020-05-22 20:30:15'),
(371, '140.238.42.16', 'North America (NA)', 'United States (US)', '', 'Oracle Corporation', 'en-US,es-US,haw,fr', 'US Dollar', 'America/Los_Angeles', 1589793336, '2020-05-18 09:15:37', '2020-05-22 20:30:15'),
(372, '40.77.167.43', 'North America (NA)', 'United States (US)', 'Microsoft Corporation', 'Microsoft Corporation', 'en-US,es-US,haw,fr', 'US Dollar', 'America/New_York', 1589864629, '2020-05-19 05:03:49', '2020-05-22 20:30:15'),
(373, '173.213.85.186', 'North America (NA)', 'United States (US)', 'Eonix Corporation', 'Eonix Corporation', 'en-US,es-US,haw,fr', 'US Dollar', 'America/New_York', 1589879917, '2020-05-19 09:18:36', '2020-05-22 20:30:15'),
(374, '130.61.236.64', 'North America (NA)', 'United States (US)', 'Oracle Corporation', 'Oracle Corporation', 'en-US,es-US,haw,fr', 'US Dollar', 'America/Los_Angeles', 1589906166, '2020-05-19 16:36:06', '2020-05-22 20:30:15'),
(375, '207.46.13.82', 'North America (NA)', 'United States (US)', 'Microsoft Corporation', 'Microsoft Corporation', 'en-US,es-US,haw,fr', 'US Dollar', 'America/Los_Angeles', 1589909913, '2020-05-19 17:38:34', '2020-05-22 20:30:15'),
(376, '66.249.72.32', 'North America (NA)', 'United States (US)', 'Google LLC', 'Google LLC', 'en-US,es-US,haw,fr', 'US Dollar', 'America/New_York', 1589911453, '2020-05-19 18:04:13', '2020-05-22 20:30:15'),
(377, '209.17.96.2', 'North America (NA)', 'United States (US)', 'Cogent Communications', 'Cogent Communications', 'en-US,es-US,haw,fr', 'US Dollar', 'America/New_York', 1589912431, '2020-05-19 18:20:31', '2020-05-22 20:30:15'),
(378, '40.77.167.120', 'North America (NA)', 'United States (US)', 'Microsoft Corporation', 'Microsoft Corporation', 'en-US,es-US,haw,fr', 'US Dollar', 'America/New_York', 1589999853, '2020-05-20 18:37:33', '2020-05-22 20:30:15'),
(379, '62.165.226.145', 'Europe (EU)', 'Hungary (HU)', 'DIGI Tavkozlesi es Szolgaltato Kft.', 'DIGI', 'hu-HU', 'Forint', 'Europe/Budapest', 1590018012, '2020-05-20 23:40:13', '2020-05-22 20:30:16'),
(380, '161.35.14.68', 'North America (NA)', 'United States (US)', '', 'Racal-Redac', 'en-US,es-US,haw,fr', 'US Dollar', 'America/New_York', 1590111256, '2020-05-22 01:34:16', '2020-05-22 20:30:16'),
(381, '34.76.220.170', 'North America (NA)', 'United States (US)', 'Google LLC', 'Google LLC', 'en-US,es-US,haw,fr', 'US Dollar', 'America/New_York', 1590143895, '2020-05-22 10:38:15', '2020-05-22 20:30:16'),
(382, '209.17.96.50', 'North America (NA)', 'United States (US)', 'Cogent Communications', 'Cogent Communications', 'en-US,es-US,haw,fr', 'US Dollar', 'America/New_York', 1590159865, '2020-05-22 15:04:26', '2020-05-22 20:30:16'),
(383, '62.210.83.78', 'Europe (EU)', 'France (FR)', 'ONLINE S.A.S.', 'Online SAS', 'fr-FR,frp,br,co,ca,eu,oc', 'Euro', 'Europe/Paris', 1590170502, '2020-05-22 18:01:42', '2020-05-22 20:30:16'),
(384, '54.200.2.127', 'North America (NA)', 'United States (US)', 'Amazon Technologies Inc.', 'Amazon Technologies Inc. (EC2)', 'en-US,es-US,haw,fr', 'US Dollar', 'America/Los_Angeles', 1590209473, '2020-05-23 04:51:14', '2020-05-27 21:55:43'),
(385, '54.194.73.207', 'Europe (EU)', 'Ireland (IE)', 'Amazon Technologies Inc.', 'Amazon Technologies Inc. (EC2)', 'en-IE,ga-IE', 'Euro', 'Europe/Dublin', 1590250243, '2020-05-23 16:10:44', '2020-05-27 21:55:43'),
(386, '94.21.145.78', 'Europe (EU)', 'Hungary (HU)', 'DIGI Tavkozlesi es Szolgaltato Kft.', 'HDSNET', 'hu-HU', 'Forint', 'Europe/Budapest', 1590480326, '2020-05-23 17:45:12', '2020-05-27 21:55:43'),
(387, '89.248.168.241', 'Europe (EU)', 'Netherlands (NL)', 'IP Volume inc', 'Quasi Networks LTD.', 'nl-NL,fy-NL', 'Euro', 'Europe/Amsterdam', 1590286391, '2020-05-24 02:13:11', '2020-05-27 21:55:43'),
(388, '44.230.198.127', 'North America (NA)', 'United States (US)', 'Amazon Technologies Inc.', 'Amazon Technologies Inc. (EC2)', 'en-US,es-US,haw,fr', 'US Dollar', 'America/Los_Angeles', 1590319509, '2020-05-24 11:25:10', '2020-05-27 21:55:43'),
(389, '209.17.96.42', 'North America (NA)', 'United States (US)', 'Cogent Communications', 'Cogent Communications', 'en-US,es-US,haw,fr', 'US Dollar', 'America/New_York', 1591131482, '2020-05-24 16:17:33', '2020-06-02 20:58:03'),
(390, '103.136.200.1', 'Asia (AS)', 'Bangladesh (BD)', 'Polly IT', 'Polly IT', 'bn-BD,en', 'Bangladeshi Taka', 'Asia/Dhaka', 1590353132, '2020-05-24 20:45:32', '2020-05-27 21:55:43'),
(391, '66.249.75.199', 'North America (NA)', 'United States (US)', 'Google LLC', 'Google LLC', 'en-US,es-US,haw,fr', 'US Dollar', 'America/New_York', 1590358757, '2020-05-24 22:19:17', '2020-05-27 21:55:43'),
(392, '185.195.27.20', 'Europe (EU)', 'Russia (RU)', 'NTX Technologies s.r.o.', 'MediaServicePlus LLC', 'ru,tt,xal,cau,ady,kv,ce,tyv,cv,udm,tut,mns,bua,myv,mdf,chm,ba,inh,tut,kbd,krc,av,sah,nog', 'Russian Ruble', 'Europe/Moscow', 1590389563, '2020-05-25 06:52:44', '2020-05-27 21:55:44'),
(393, '52.24.8.89', 'North America (NA)', 'United States (US)', 'Amazon Technologies Inc.', 'Amazon Technologies Inc. (EC2)', 'en-US,es-US,haw,fr', 'US Dollar', 'America/Los_Angeles', 1590407808, '2020-05-25 11:56:48', '2020-05-27 21:55:44'),
(394, '34.78.74.189', 'North America (NA)', 'United States (US)', 'Google LLC', 'Google LLC', 'en-US,es-US,haw,fr', 'US Dollar', 'America/New_York', 1590408755, '2020-05-25 12:12:35', '2020-05-27 21:55:44'),
(395, '34.222.172.63', 'North America (NA)', 'United States (US)', 'Amazon Technologies Inc.', 'Amazon Technologies Inc. (EC2)', 'en-US,es-US,haw,fr', 'US Dollar', 'America/Los_Angeles', 1590409153, '2020-05-25 12:19:13', '2020-05-27 21:55:44'),
(396, '45.62.236.140', 'North America (NA)', 'Canada (CA)', 'DataCity', 'KW Datacenter', 'en-CA,fr-CA,iu', 'Canadian Dollar', 'America/Toronto', 1590418966, '2020-05-25 15:02:46', '2020-05-27 21:55:44'),
(397, '18.236.111.104', 'North America (NA)', 'United States (US)', 'Amazon Technologies Inc.', 'Amazon Technologies Inc. (EC2)', 'en-US,es-US,haw,fr', 'US Dollar', 'America/Los_Angeles', 1590425202, '2020-05-25 16:46:43', '2020-05-27 21:55:44'),
(398, '78.47.38.219', 'Europe (EU)', 'Germany (DE)', 'Hetzner Online GmbH', 'Hetzner Online GmbH', 'de', 'Euro', 'Europe/Berlin', 1590432934, '2020-05-25 18:55:35', '2020-05-27 21:55:44'),
(399, '209.17.97.10', 'North America (NA)', 'United States (US)', 'Cogent Communications', 'Cogent Communications', 'en-US,es-US,haw,fr', 'US Dollar', 'America/New_York', 1590436879, '2020-05-25 20:01:19', '2020-05-27 21:55:44'),
(400, '5.196.126.164', 'Europe (EU)', 'United Kingdom (GB)', 'OVH SAS', 'OVH SAS', 'en-GB,cy-GB,gd', 'Pound Sterling', 'Europe/London', 1590488234, '2020-05-26 10:17:15', '2020-05-27 21:55:44'),
(401, '34.212.49.63', 'North America (NA)', 'United States (US)', 'Amazon Technologies Inc.', 'Amazon Technologies Inc. (EC2)', 'en-US,es-US,haw,fr', 'US Dollar', 'America/Los_Angeles', 1590490740, '2020-05-26 10:59:01', '2020-05-27 21:55:45'),
(402, '157.55.39.208', 'North America (NA)', 'United States (US)', 'Microsoft Corporation', 'Microsoft Corporation', 'en-US,es-US,haw,fr', 'US Dollar', 'America/Los_Angeles', 1590507264, '2020-05-26 15:34:25', '2020-05-27 21:55:45'),
(403, '40.85.174.158', 'North America (NA)', 'United States (US)', 'Microsoft Corporation', 'Microsoft Corporation', 'en-US,es-US,haw,fr', 'US Dollar', 'America/Los_Angeles', 1590532718, '2020-05-26 22:38:37', '2020-05-27 21:55:45'),
(404, '183.136.225.46', 'Asia (AS)', 'China (CN)', 'No.288,Fu-chun Road', 'LEON-SHIP-NETWORK', 'zh-CN,yue,wuu,dta,ug,za', 'Yuan Renminbi', 'Asia/Shanghai', 1590925286, '2020-05-27 12:21:43', '2020-05-31 11:41:26'),
(405, '159.89.115.29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1590641360, '2020-05-28 04:49:21', '2020-05-28 04:49:21'),
(406, '159.89.115.29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1590641360, '2020-05-28 04:49:21', '2020-05-28 04:49:21'),
(407, '138.197.141.201', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1590641361, '2020-05-28 04:49:21', '2020-05-28 04:49:21'),
(408, '138.197.152.122', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1590641361, '2020-05-28 04:49:21', '2020-05-28 04:49:21'),
(409, '142.93.145.9', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1590641362, '2020-05-28 04:49:22', '2020-05-28 04:49:22'),
(410, '72.79.58.112', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1590664211, '2020-05-28 11:07:45', '2020-05-28 11:10:11'),
(411, '52.38.34.199', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1590667312, '2020-05-28 12:01:53', '2020-05-28 12:01:53'),
(412, '51.158.190.214', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1590697690, '2020-05-28 20:28:10', '2020-05-28 20:28:10'),
(413, '52.37.57.118', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1590754419, '2020-05-29 12:13:39', '2020-05-29 12:13:39'),
(414, '44.234.65.238', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1590840317, '2020-05-30 12:05:17', '2020-05-30 12:05:17'),
(415, '202.80.215.39', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1590914869, '2020-05-31 08:47:49', '2020-05-31 08:47:49'),
(416, '173.252.87.5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1590921598, '2020-05-31 10:39:58', '2020-05-31 10:39:58'),
(417, '173.252.87.9', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1590921599, '2020-05-31 10:39:59', '2020-05-31 10:39:59'),
(418, '37.111.205.131', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1590925787, '2020-05-31 10:40:39', '2020-05-31 11:49:47'),
(419, '44.234.72.178', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1590928013, '2020-05-31 12:26:54', '2020-05-31 12:26:54'),
(420, '40.77.167.234', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1590976316, '2020-06-01 01:51:56', '2020-06-01 01:51:56'),
(421, '155.94.180.172', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1590982285, '2020-06-01 03:31:21', '2020-06-01 03:31:25'),
(422, '95.217.217.27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1590996650, '2020-06-01 07:30:50', '2020-06-01 07:30:50'),
(423, '167.172.255.183', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1591049046, '2020-06-01 22:04:06', '2020-06-01 22:04:06'),
(424, '178.32.218.211', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1591052463, '2020-06-01 23:01:01', '2020-06-01 23:01:03'),
(425, '157.245.242.118', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1591071077, '2020-06-02 04:11:18', '2020-06-02 04:11:18'),
(426, '216.19.195.96', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1591078216, '2020-06-02 06:10:17', '2020-06-02 06:10:17'),
(427, '216.19.195.96', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1591078216, '2020-06-02 06:10:17', '2020-06-02 06:10:17'),
(428, '216.19.195.96', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1591078216, '2020-06-02 06:10:17', '2020-06-02 06:10:17'),
(429, '54.149.149.226', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1591100249, '2020-06-02 12:17:29', '2020-06-02 12:17:29'),
(430, '44.234.87.158', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1591100254, '2020-06-02 12:17:34', '2020-06-02 12:17:34'),
(431, '209.17.97.114', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1591107953, '2020-06-02 14:25:53', '2020-06-02 14:25:53'),
(432, '157.55.39.157', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1591132955, '2020-06-02 21:22:36', '2020-06-02 21:22:36'),
(433, '209.17.97.2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1591429024, '2020-06-03 17:42:27', '2020-06-06 07:37:05'),
(434, '216.145.5.42', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1591218252, '2020-06-03 21:04:13', '2020-06-03 21:04:13'),
(435, '82.202.161.133', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1591256243, '2020-06-04 07:37:24', '2020-06-04 07:37:24'),
(436, '95.217.89.25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1591259509, '2020-06-04 08:31:50', '2020-06-04 08:31:50'),
(437, '34.210.84.15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1591273097, '2020-06-04 12:18:18', '2020-06-04 12:18:18'),
(438, '62.210.111.97', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1591287905, '2020-06-04 16:25:06', '2020-06-04 16:25:06'),
(439, '157.230.254.213', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1591300930, '2020-06-04 20:02:11', '2020-06-04 20:02:11'),
(440, '35.166.26.40', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1591333449, '2020-06-05 05:04:10', '2020-06-05 05:04:10'),
(441, '157.55.39.190', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1591344952, '2020-06-05 08:15:52', '2020-06-05 08:15:52'),
(442, '94.21.92.161', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1591352282, '2020-06-05 10:18:03', '2020-06-05 10:18:03'),
(443, '159.203.125.210', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1591383937, '2020-06-05 19:05:38', '2020-06-05 19:05:38'),
(444, '116.202.15.244', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1591410494, '2020-06-06 02:28:14', '2020-06-06 02:28:14'),
(445, '35.165.222.184', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1591445940, '2020-06-06 12:19:00', '2020-06-06 12:19:00'),
(446, '95.217.104.173', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1591463336, '2020-06-06 17:08:56', '2020-06-06 17:08:56');

-- --------------------------------------------------------

--
-- Table structure for table `mangos`
--

CREATE TABLE `mangos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `origin` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avg_weight` int(11) DEFAULT NULL,
  `priority` decimal(1,0) NOT NULL DEFAULT 1,
  `cultivation_type` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `variety` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `grade` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `style` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `min_order` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ripening` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double(6,2) DEFAULT NULL,
  `in_stock` tinyint(1) NOT NULL,
  `image` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mangos`
--

INSERT INTO `mangos` (`id`, `name`, `description`, `origin`, `color`, `avg_weight`, `priority`, `cultivation_type`, `variety`, `grade`, `size`, `style`, `type`, `min_order`, `ripening`, `price`, `in_stock`, `image`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Amrapali', NULL, 'India, Bangladesh', 'Green', 350, 1, 'Common', 'AMRAPALI', NULL, '12-15 & 9-12 cm', 'Fresh', 'Mango', NULL, '7 days post harvest at 35 to 40 celcius', 0.00, 1, '1586036529.jpg', 2, '2020-04-04 00:57:46', '2020-04-04 21:42:10'),
(2, 'Langra', '', 'India, Bangladesh', 'Green', 200, 1, 'Common', 'LANGRA', '', '12-15 & 9-12 cm', 'Fresh', 'Mango', '200', '7 days post harvest at 35 to 40 celcius', 0.00, 1, '1585403572.jpg', 1, '2020-04-04 00:57:46', NULL),
(3, 'Gopalbogh', NULL, 'India, Bangladesh', 'Green', 200, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 1, '1586020215.jpg', 2, '2020-04-04 00:57:46', '2020-04-04 17:10:15'),
(4, 'Himsagar/Khirsapati', NULL, 'India, Bangladesh', 'Green', 300, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 1, '1586020160.jpg', 2, '2020-04-04 00:57:46', '2020-04-04 17:09:20'),
(5, 'Ashhwina', NULL, 'India, Bangladesh', 'Green', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 1, '1585922894.png', 2, '2020-04-04 00:57:46', '2020-04-03 14:08:14'),
(6, 'Fazlee', NULL, 'India, Bangladesh', 'Green', 400, 1, 'Common', 'FAZLI', NULL, '12-15 & 9-12 cm', 'Fresh', 'Mango', NULL, '7 days post harvest at 35 to 40 celcius', 0.00, 1, '1586020256.jpg', 2, '2020-04-04 00:57:46', '2020-04-04 17:10:56'),
(7, 'Laksmanbhog', NULL, 'India, Bangladesh', 'Green or Yellow', 250, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 1, '1585922918.png', 2, '2020-04-04 00:57:46', '2020-04-03 14:08:38'),
(8, 'Misribhog', NULL, 'India, Bangladesh', 'Green', 350, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0, '1585922932.png', 2, '2020-04-04 00:57:46', '2020-04-03 14:08:52'),
(9, 'Khisanbogh', NULL, 'India, Bangladesh', 'Green', 300, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 0, '1585922962.png', 2, '2020-04-04 00:57:46', '2020-04-03 14:09:22'),
(10, 'Kuapahadi', NULL, 'India, Bangladesh', 'Greenish Yellow', 380, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 1, '1585922990.png', 2, '2020-04-04 00:57:46', '2020-04-03 14:09:50'),
(11, 'Lata Bombai', NULL, 'India, Bangladesh', 'Green', 200, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 1, '1585923002.png', 2, '2020-04-04 00:57:46', '2020-04-03 14:10:02'),
(12, 'Foria', NULL, 'India, Bangladesh', NULL, 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 1, '1585923013.png', 2, '2020-04-04 00:57:46', '2020-04-03 14:10:13'),
(13, 'Bombai', NULL, 'India, Bangladesh', 'Green', 350, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 1, '1585923034.png', 2, '2020-04-04 00:57:46', '2020-04-03 14:10:34'),
(17, 'Kohitoor', NULL, 'India, Bangladesh', 'Green', 400, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0.00, 1, '1585921448.png', 2, '2020-04-04 00:57:46', '2020-04-03 13:44:08');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_05_184628_create_posts_table', 1),
(5, '2020_02_24_192616_create_other_products_table', 2),
(6, '2020_02_25_181820_create_mango_table', 3),
(7, '2020_02_25_184307_create_mangos_table', 4),
(8, '2020_02_25_190120_create_images_table', 5),
(10, '2020_02_26_170926_create_rices_table', 6),
(11, '2020_03_26_180121_update_user_table', 7),
(12, '2020_03_29_200200_create_geotrack_table', 8),
(13, '2020_03_30_185501_update_geotrack_table', 9),
(14, '2020_04_02_150426_create_feedbacks_table', 10);

-- --------------------------------------------------------

--
-- Table structure for table `other_products`
--

CREATE TABLE `other_products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `origin` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `view_id` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `condition` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double(6,2) DEFAULT NULL,
  `image` varchar(70) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `min_order` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `in_stock` tinyint(1) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `other_products`
--

INSERT INTO `other_products` (`id`, `name`, `origin`, `view_id`, `condition`, `price`, `image`, `description`, `min_order`, `in_stock`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Guava', 'Bangladesh', 'guava', 'Fresh', 0.00, '1586020434.jpg', NULL, NULL, 1, 2, '2020-04-04 00:57:46', '2020-04-04 17:13:54'),
(2, 'Pineapple', 'Bangladesh', 'pineapple', 'Fresh', 0.00, '1586020416.jpg', NULL, NULL, 1, 2, '2020-04-04 00:57:46', '2020-04-04 17:13:36'),
(3, 'Watermelon', 'Bangladesh', 'watermelon', 'Fresh', 0.00, '/images/watermelon_1.jpg', NULL, NULL, 1, 1, '2020-04-04 00:57:46', NULL),
(4, 'Cucumber', 'Bangladesh', 'cucumber', 'Fresh', 0.00, '1586020387.jpg', NULL, NULL, 1, 2, '2020-04-04 00:57:46', '2020-04-04 17:13:07'),
(5, 'Carrot', 'Bangladesh', 'carrot', 'Fresh', 0.00, '/images/carrot_1.jpg', NULL, NULL, 1, 2, '2020-04-04 00:57:46', NULL),
(6, 'Tomato', 'Bangladesh', 'tomato', 'Fresh', 0.00, '/images/tomato_1.jpeg', NULL, NULL, 1, 1, '2020-04-04 00:57:46', NULL),
(7, 'Papaya', 'Bangladesh', 'papaya', 'Fresh', 0.00, '/images/papaya_1.jpg', NULL, NULL, 1, 2, '2020-04-04 00:57:46', NULL),
(8, 'Lychee', 'Bangladesh', 'lychee', 'Fresh', 0.00, '/images/lychee_1.jpg', NULL, NULL, 1, 2, '2020-04-04 00:57:46', NULL),
(9, 'Banana', 'Bangladesh', 'banana', 'Fresh', 0.00, '/images/banana_1.jpg', NULL, NULL, 1, 2, '2020-04-04 00:57:46', NULL),
(10, 'Pumpkin', 'Bangladesh', 'pumpkin', 'Fresh', 0.00, '/images/pumpkin_1.jpeg', NULL, NULL, 1, 1, '2020-04-04 00:57:46', NULL),
(11, 'Eggplant', 'Bangladesh', 'eggplant', 'Fresh', 0.00, '/images/eggplant_1.jpg', NULL, NULL, 1, 2, '2020-04-04 00:57:46', NULL),
(12, 'Potato', 'Bangladesh', 'potato', 'Fresh', 0.00, '/images/potato_1.jpg', NULL, NULL, 1, 1, '2020-04-04 00:57:46', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `posted_by` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `body`, `posted_by`, `created_at`, `updated_at`) VALUES
(1, 'Very first post', 'Hello everyone, I am posting for the first time', 5, '2019-08-05 19:58:31', '2019-08-05 19:58:31');

-- --------------------------------------------------------

--
-- Table structure for table `rices`
--

CREATE TABLE `rices` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double(6,2) DEFAULT NULL,
  `in_stock` tinyint(1) NOT NULL,
  `min_order` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(70) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rices`
--

INSERT INTO `rices` (`id`, `name`, `description`, `price`, `in_stock`, `min_order`, `image`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Bashmoti', '', 0.00, 1, '200', '1585403572.jpg', 1, '2020-04-04 00:57:46', NULL),
(2, 'Chinigura', NULL, 0.00, 0, '200 KG', '1585403572.jpg', 1, '2020-04-04 00:57:46', '2020-04-01 10:19:22'),
(3, 'Kalijira', NULL, 0.00, 1, '200', '1585403572.jpg', 2, '2020-04-04 00:57:46', '2020-03-31 19:32:27'),
(4, 'Tolsi Mala', '', 0.00, 1, '200', '1585403572.jpg', 1, '2020-04-04 00:57:46', NULL),
(5, 'Katari Bhog', '', 0.00, 1, '200', '1585403572.jpg', 1, '2020-04-04 00:57:46', NULL),
(6, 'Miniket', '', 0.00, 1, '200', '1585403572.jpg', 1, '2020-04-04 00:57:46', NULL),
(7, 'Najir Shail', '', 0.00, 1, '200', '1585403572.jpg', 1, '2020-04-04 00:57:46', NULL),
(8, 'Shail', '', 0.00, 1, '200', '1585403572.jpg', 1, '2020-04-04 00:57:46', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `firstName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` tinyint(4) NOT NULL DEFAULT 2,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstName`, `lastName`, `username`, `email`, `level`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Web', 'Master', 'webmaster', 'master@aliexpo.com', 2, NULL, '$2y$10$g1ZuAlg8BVUwzZpJBGLT8uiFe4PFh1M6xxL1bCYOfZHlNT6wH8PYu', NULL, '2020-03-26 19:01:06', '2020-03-26 19:01:06'),
(2, 'Md.', 'Asimuzzaman', 'mansib', 'mansib@aliexposhop.com', 2, NULL, '$2y$10$rgB3jICLaocwl5V1rzzh/estAZAQqnCKj5g1vyrokvtYAN0f9Wb.i', NULL, '2020-03-31 19:09:18', '2020-03-31 19:09:18'),
(4, 'Ahmad Muhammad', 'Ali', 'Aliexpo', 'bismoy46@gmail.com', 2, NULL, '$2y$10$KSjmRrsLOfWOIED60bOSzuHWp7aGN9Oob0vK9x7qmydgEnPCtEgmm', NULL, '2020-04-09 09:26:11', '2020-04-09 09:26:11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `feedbacks`
--
ALTER TABLE `feedbacks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `geotrack`
--
ALTER TABLE `geotrack`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mangos`
--
ALTER TABLE `mangos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `other_products`
--
ALTER TABLE `other_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rices`
--
ALTER TABLE `rices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `feedbacks`
--
ALTER TABLE `feedbacks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `geotrack`
--
ALTER TABLE `geotrack`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=447;

--
-- AUTO_INCREMENT for table `mangos`
--
ALTER TABLE `mangos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `other_products`
--
ALTER TABLE `other_products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `rices`
--
ALTER TABLE `rices`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
