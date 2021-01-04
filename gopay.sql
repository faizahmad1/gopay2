-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 04, 2021 at 08:36 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gopay`
--

-- --------------------------------------------------------

--
-- Table structure for table `pw_activity`
--

CREATE TABLE `pw_activity` (
  `id` int(11) NOT NULL,
  `txid` varchar(255) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  `u_field_1` varchar(255) DEFAULT NULL,
  `u_field_2` varchar(255) DEFAULT NULL,
  `u_field_3` varchar(255) DEFAULT NULL,
  `u_field_4` varchar(255) DEFAULT NULL,
  `u_field_5` varchar(255) DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `currency` varchar(255) DEFAULT NULL,
  `deposit_via` int(11) DEFAULT NULL,
  `withdrawal_via` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created` int(11) DEFAULT NULL,
  `updated` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pw_activity`
--

INSERT INTO `pw_activity` (`id`, `txid`, `type`, `uid`, `u_field_1`, `u_field_2`, `u_field_3`, `u_field_4`, `u_field_5`, `amount`, `currency`, `deposit_via`, `withdrawal_via`, `status`, `created`, `updated`) VALUES
(1, 'D231019533D0111A4AD4A9DB5429C3', 3, 3, '1', NULL, NULL, NULL, NULL, '10000.00', 'IDR', 0, NULL, 1, 1609777994, NULL),
(2, 'F4CFF7C025F9E323FCD6039225FC36', 3, 4, '2', NULL, NULL, NULL, NULL, '10000.00', 'IDR', 0, NULL, 1, 1609778480, NULL),
(3, '65FD102B281E62E0DDD66FF0847A61', 2, 4, '3', NULL, NULL, NULL, NULL, '5000.00', 'IDR', NULL, NULL, 1, 1609778582, NULL),
(4, '65FD102B281E62E0DDD66FF0847A61', 1, 3, '4', NULL, NULL, NULL, NULL, '-70000', 'IDR', NULL, NULL, 1, 1609778582, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pw_admin_logs`
--

CREATE TABLE `pw_admin_logs` (
  `id` int(11) NOT NULL,
  `type` int(11) DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `u_field_1` varchar(255) DEFAULT NULL,
  `u_field_2` varchar(255) DEFAULT NULL,
  `u_field_3` varchar(255) DEFAULT NULL,
  `u_field_4` varchar(255) DEFAULT NULL,
  `u_field_5` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pw_admin_logs`
--

INSERT INTO `pw_admin_logs` (`id`, `type`, `time`, `u_field_1`, `u_field_2`, `u_field_3`, `u_field_4`, `u_field_5`) VALUES
(1, 1, 1609778582, '75000', 'IDR', '65FD102B281E62E0DDD66FF0847A61', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pw_deposit`
--

CREATE TABLE `pw_deposit` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `txid` varchar(255) DEFAULT NULL,
  `method` int(11) DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `currency` varchar(255) DEFAULT NULL,
  `requested_on` int(11) DEFAULT NULL,
  `processed_on` int(11) DEFAULT NULL,
  `gateway_txid` varchar(255) DEFAULT NULL,
  `reference_number` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pw_deposit`
--

INSERT INTO `pw_deposit` (`id`, `uid`, `txid`, `method`, `amount`, `currency`, `requested_on`, `processed_on`, `gateway_txid`, `reference_number`, `status`) VALUES
(1, 3, 'D231019533D0111A4AD4A9DB5429C3', 0, '10000.00', 'IDR', 1609777994, 0, NULL, 'IDRA41A9E812D', 1),
(2, 4, 'F4CFF7C025F9E323FCD6039225FC36', 0, '10000.00', 'IDR', 1609778480, 0, NULL, 'IDR4D9CC8FB12', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pw_disputes`
--

CREATE TABLE `pw_disputes` (
  `id` int(11) NOT NULL,
  `hash` varchar(255) DEFAULT NULL,
  `sender` int(11) DEFAULT NULL,
  `recipient` int(11) DEFAULT NULL,
  `txid` varchar(255) DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `currency` varchar(255) DEFAULT NULL,
  `escalate_review` int(11) DEFAULT NULL,
  `escalate_message` text DEFAULT NULL,
  `escalate_issued_by` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `created` int(11) DEFAULT NULL,
  `updated` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pw_disputes_messages`
--

CREATE TABLE `pw_disputes_messages` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `dispute_id` int(11) DEFAULT NULL,
  `comment` text DEFAULT NULL,
  `attachment` text DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `is_admin` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pw_gateways`
--

CREATE TABLE `pw_gateways` (
  `id` int(11) NOT NULL,
  `type` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `currency` varchar(255) DEFAULT NULL,
  `reserve` varchar(255) DEFAULT NULL,
  `min_amount` varchar(255) DEFAULT NULL,
  `max_amount` varchar(255) DEFAULT NULL,
  `exchange_type` int(11) DEFAULT NULL,
  `include_fee` int(11) DEFAULT NULL,
  `extra_fee` varchar(255) DEFAULT NULL,
  `fee` varchar(255) DEFAULT NULL,
  `allow_send` int(11) DEFAULT NULL,
  `allow_receive` int(11) DEFAULT NULL,
  `default_send` int(11) DEFAULT NULL,
  `default_receive` int(11) DEFAULT NULL,
  `allow_payouts` int(11) DEFAULT NULL,
  `a_field_1` varchar(255) DEFAULT NULL,
  `a_field_2` varchar(255) DEFAULT NULL,
  `a_field_3` varchar(255) DEFAULT NULL,
  `a_field_4` varchar(255) DEFAULT NULL,
  `a_field_5` varchar(255) DEFAULT NULL,
  `a_field_6` varchar(255) DEFAULT NULL,
  `a_field_7` varchar(255) DEFAULT NULL,
  `a_field_8` varchar(255) DEFAULT NULL,
  `a_field_9` varchar(255) DEFAULT NULL,
  `a_field_10` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `external_gateway` int(11) NOT NULL DEFAULT 0,
  `external_icon` text DEFAULT NULL,
  `process_type` int(11) DEFAULT NULL,
  `process_time` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pw_gateways_fields`
--

CREATE TABLE `pw_gateways_fields` (
  `id` int(11) NOT NULL,
  `gateway_id` int(11) DEFAULT NULL,
  `field_name` varchar(255) DEFAULT NULL,
  `field_number` int(11) DEFAULT NULL,
  `field_value` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pw_knowledge_articles`
--

CREATE TABLE `pw_knowledge_articles` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `created` int(11) DEFAULT NULL,
  `updated` int(11) DEFAULT NULL,
  `added_by` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pw_knowledge_categories`
--

CREATE TABLE `pw_knowledge_categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created` int(11) DEFAULT NULL,
  `updated` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pw_pages`
--

CREATE TABLE `pw_pages` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `prefix` varchar(255) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `created` int(11) DEFAULT NULL,
  `updated` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pw_payments`
--

CREATE TABLE `pw_payments` (
  `id` int(11) NOT NULL,
  `hash` varchar(255) DEFAULT NULL,
  `txid` varchar(255) DEFAULT NULL,
  `merchant_account` varchar(255) DEFAULT NULL,
  `item_number` varchar(255) DEFAULT NULL,
  `item_name` varchar(255) DEFAULT NULL,
  `item_price` varchar(255) DEFAULT NULL,
  `item_currency` varchar(255) DEFAULT NULL,
  `return_success` varchar(255) DEFAULT NULL,
  `return_fail` varchar(255) DEFAULT NULL,
  `return_cancel` varchar(255) DEFAULT NULL,
  `payment_time` int(11) DEFAULT NULL,
  `payment_status` int(11) DEFAULT NULL,
  `payee_account` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pw_requests`
--

CREATE TABLE `pw_requests` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `fromu` int(11) DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `currency` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `requested_on` int(11) DEFAULT NULL,
  `processed_on` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pw_settings`
--

CREATE TABLE `pw_settings` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `infoemail` varchar(255) DEFAULT NULL,
  `supportemail` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `default_language` varchar(255) DEFAULT NULL,
  `default_template` varchar(255) DEFAULT NULL,
  `default_currency` varchar(255) DEFAULT NULL,
  `logo` text DEFAULT NULL,
  `require_email_verify` int(11) DEFAULT NULL,
  `require_document_verify` int(11) DEFAULT NULL,
  `limit_maxamount_sent` int(11) DEFAULT NULL,
  `limit_maxtxs_sent` int(11) DEFAULT NULL,
  `payfee_type` int(11) DEFAULT NULL,
  `payfee_side` int(11) DEFAULT NULL,
  `payfee_percentage` int(11) DEFAULT NULL,
  `enable_recaptcha` int(11) DEFAULT NULL,
  `recaptcha_publickey` varchar(255) DEFAULT NULL,
  `recaptcha_privatekey` varchar(255) DEFAULT NULL,
  `enable_curcnv` int(11) DEFAULT NULL,
  `curcnv_api` varchar(255) DEFAULT NULL,
  `curcnv_fee_percentage` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pw_settings`
--

INSERT INTO `pw_settings` (`id`, `title`, `description`, `keywords`, `name`, `infoemail`, `supportemail`, `url`, `default_language`, `default_template`, `default_currency`, `logo`, `require_email_verify`, `require_document_verify`, `limit_maxamount_sent`, `limit_maxtxs_sent`, `payfee_type`, `payfee_side`, `payfee_percentage`, `enable_recaptcha`, `recaptcha_publickey`, `recaptcha_privatekey`, `enable_curcnv`, `curcnv_api`, `curcnv_fee_percentage`) VALUES
(1, 'Gopay', 'Gopay Wannabe', 'E-Wallet', 'Gopay', 'faizahmadd50@gmail.com', 'faizahmadd50@gmail.com', 'http://localhost/gopay/', 'English', NULL, 'IDR', 'assets/images/ee165ee922_gopaylogo.png', NULL, NULL, NULL, NULL, NULL, NULL, 1500, NULL, NULL, NULL, NULL, NULL, NULL),
(2, 'Gopay', 'Gopay Wannabe', 'E-Wallet', 'Gopay', 'faizahmadd50@gmail.com', 'faizahmadd50@gmail.com', 'http://localhost/gopay/', 'English', NULL, 'IDR', 'assets/images/ee165ee922_gopaylogo.png', NULL, NULL, NULL, NULL, NULL, NULL, 1500, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pw_transactions`
--

CREATE TABLE `pw_transactions` (
  `id` int(11) NOT NULL,
  `txid` varchar(255) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `sender` int(11) DEFAULT NULL,
  `recipient` int(11) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `currency` varchar(255) DEFAULT NULL,
  `fee` varchar(255) DEFAULT NULL,
  `deposit_via` int(11) DEFAULT NULL,
  `withdrawal_via` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created` int(11) DEFAULT NULL,
  `updated` int(11) DEFAULT NULL,
  `item_id` varchar(255) DEFAULT NULL,
  `item_name` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pw_transactions`
--

INSERT INTO `pw_transactions` (`id`, `txid`, `type`, `sender`, `recipient`, `description`, `amount`, `currency`, `fee`, `deposit_via`, `withdrawal_via`, `status`, `created`, `updated`, `item_id`, `item_name`) VALUES
(1, 'D231019533D0111A4AD4A9DB5429C3', 3, 3, 1, 'Deposit 10000.00 IDR to faizadek28@gmail.com', '10000.00', 'IDR', '', 0, NULL, 1, 1609777994, NULL, NULL, NULL),
(2, 'F4CFF7C025F9E323FCD6039225FC36', 3, 4, 2, 'Deposit 10000.00 IDR to faizahmadd50@gmail.com', '10000.00', 'IDR', '', 0, NULL, 1, 1609778480, NULL, NULL, NULL),
(3, '65FD102B281E62E0DDD66FF0847A61', 1, 4, 3, 'Uang Jajan', '5000.00', 'IDR', '75000', NULL, NULL, 1, 1609778582, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pw_users`
--

CREATE TABLE `pw_users` (
  `id` int(11) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `password_recovery` varchar(255) DEFAULT NULL,
  `document_verified` int(11) DEFAULT NULL,
  `email_verified` int(11) DEFAULT NULL,
  `email_hash` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `account_type` int(11) DEFAULT NULL,
  `account_level` int(11) DEFAULT NULL,
  `account_user` varchar(255) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `last_login` int(11) DEFAULT NULL,
  `signup_time` int(11) DEFAULT NULL,
  `2fa_auth` int(11) DEFAULT NULL,
  `2fa_auth_login` int(11) DEFAULT NULL,
  `2fa_auth_send` int(11) DEFAULT NULL,
  `2fa_auth_withdrawal` int(11) DEFAULT NULL,
  `googlecode` varchar(255) DEFAULT NULL,
  `wallet_passphrase` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `business_name` varchar(255) DEFAULT NULL,
  `merchant_api_key` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `province` varchar(255) DEFAULT NULL,
  `zip_code` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `birthday_date` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pw_users`
--

INSERT INTO `pw_users` (`id`, `password`, `password_recovery`, `document_verified`, `email_verified`, `email_hash`, `email`, `status`, `account_type`, `account_level`, `account_user`, `ip`, `last_login`, `signup_time`, `2fa_auth`, `2fa_auth_login`, `2fa_auth_send`, `2fa_auth_withdrawal`, `googlecode`, `wallet_passphrase`, `first_name`, `last_name`, `business_name`, `merchant_api_key`, `country`, `city`, `province`, `zip_code`, `address`, `birthday_date`) VALUES
(1, '$2y$10$7BcjmHscuExUFPR9cvKK6.8Nv9MwOgxkI88opY0yYCKmRKeGM6X4K', NULL, NULL, NULL, NULL, 'admin@gmail.com', 1, NULL, 666, 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, '$2y$10$nkWQmB7FPmncFsRpByXx5eibh/1qwBFdb3h7Ri.0Lvdprh8qOLHLy', NULL, NULL, NULL, NULL, 'admin@gmail.com', 1, NULL, 666, 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, '$2y$10$GcmT40.Q0ILBxqmf/aHArO8FxakmDrR9VtZJv1/Yq0olLTzqiV/pO', NULL, NULL, 1, NULL, 'faizadek28@gmail.com', 1, 1, NULL, NULL, '::1', 1609777979, 1609777969, NULL, NULL, NULL, NULL, NULL, NULL, 'Faiz', 'Ahmad', NULL, NULL, 'Indonesia', 'Medqn', NULL, '20143', 'Medan', NULL),
(4, '$2y$10$CnLVIe68YCGweav3/Ov2NeRpzuiJQvCmvRjnDooAcOZTJLr.Deu8W', NULL, NULL, 1, NULL, 'faizahmadd50@gmail.com', 1, 1, NULL, NULL, '::1', 1609784800, 1609778364, NULL, NULL, NULL, NULL, NULL, NULL, 'Faiz', 'Ahmad', NULL, NULL, 'Indonesia', 'Jakarta', NULL, '201', 'Jakarta', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pw_users_converts`
--

CREATE TABLE `pw_users_converts` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `from_wallet` int(11) DEFAULT NULL,
  `to_wallet` int(11) DEFAULT NULL,
  `from_amount` varchar(255) DEFAULT NULL,
  `from_currency` varchar(5) DEFAULT NULL,
  `to_amount` varchar(255) DEFAULT NULL,
  `to_currency` varchar(5) DEFAULT NULL,
  `from_rate` varchar(255) DEFAULT NULL,
  `to_rate` varchar(255) DEFAULT NULL,
  `fee` varchar(255) DEFAULT NULL,
  `created` int(11) DEFAULT NULL,
  `updated` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pw_users_documents`
--

CREATE TABLE `pw_users_documents` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `document_type` int(11) DEFAULT NULL,
  `document_path` text DEFAULT NULL,
  `uploaded` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `u_field_1` varchar(255) DEFAULT NULL,
  `u_field_2` varchar(255) DEFAULT NULL,
  `u_field_3` varchar(255) DEFAULT NULL,
  `u_field_4` varchar(255) DEFAULT NULL,
  `u_field_5` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pw_users_logs`
--

CREATE TABLE `pw_users_logs` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `time` int(11) DEFAULT NULL,
  `u_field_1` varchar(255) DEFAULT NULL,
  `u_field_2` varchar(255) DEFAULT NULL,
  `u_field_3` varchar(255) DEFAULT NULL,
  `u_field_4` varchar(255) DEFAULT NULL,
  `u_field_5` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pw_users_logs`
--

INSERT INTO `pw_users_logs` (`id`, `uid`, `type`, `time`, `u_field_1`, `u_field_2`, `u_field_3`, `u_field_4`, `u_field_5`) VALUES
(1, 3, 1, 1609777979, '::1', NULL, NULL, NULL, NULL),
(2, 4, 1, 1609778395, '::1', NULL, NULL, NULL, NULL),
(3, 4, 1, 1609779577, '::1', NULL, NULL, NULL, NULL),
(4, 3, 1, 1609782580, '::1', NULL, NULL, NULL, NULL),
(5, 4, 1, 1609782712, '::1', NULL, NULL, NULL, NULL),
(6, 4, 1, 1609784800, '::1', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pw_users_wallets`
--

CREATE TABLE `pw_users_wallets` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `currency` varchar(5) DEFAULT NULL,
  `updated` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pw_users_wallets`
--

INSERT INTO `pw_users_wallets` (`id`, `uid`, `amount`, `currency`, `updated`) VALUES
(1, 3, '-60000', 'IDR', NULL),
(2, 4, '15000', 'IDR', NULL),
(3, 4, '0', 'AED', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pw_withdrawals`
--

CREATE TABLE `pw_withdrawals` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `txid` varchar(255) DEFAULT NULL,
  `method` int(11) DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `fee` varchar(255) DEFAULT NULL,
  `currency` varchar(255) DEFAULT NULL,
  `requested_on` int(11) DEFAULT NULL,
  `processed_on` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pw_withdrawals_values`
--

CREATE TABLE `pw_withdrawals_values` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `withdrawal_id` int(11) DEFAULT NULL,
  `gateway_id` int(11) DEFAULT NULL,
  `field_id` int(11) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pw_activity`
--
ALTER TABLE `pw_activity`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pw_admin_logs`
--
ALTER TABLE `pw_admin_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pw_deposit`
--
ALTER TABLE `pw_deposit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pw_disputes`
--
ALTER TABLE `pw_disputes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pw_disputes_messages`
--
ALTER TABLE `pw_disputes_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pw_gateways`
--
ALTER TABLE `pw_gateways`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pw_gateways_fields`
--
ALTER TABLE `pw_gateways_fields`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pw_knowledge_articles`
--
ALTER TABLE `pw_knowledge_articles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pw_knowledge_categories`
--
ALTER TABLE `pw_knowledge_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pw_pages`
--
ALTER TABLE `pw_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pw_payments`
--
ALTER TABLE `pw_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pw_requests`
--
ALTER TABLE `pw_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pw_settings`
--
ALTER TABLE `pw_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pw_transactions`
--
ALTER TABLE `pw_transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pw_users`
--
ALTER TABLE `pw_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pw_users_converts`
--
ALTER TABLE `pw_users_converts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pw_users_documents`
--
ALTER TABLE `pw_users_documents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pw_users_logs`
--
ALTER TABLE `pw_users_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pw_users_wallets`
--
ALTER TABLE `pw_users_wallets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pw_withdrawals`
--
ALTER TABLE `pw_withdrawals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pw_withdrawals_values`
--
ALTER TABLE `pw_withdrawals_values`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pw_activity`
--
ALTER TABLE `pw_activity`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pw_admin_logs`
--
ALTER TABLE `pw_admin_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pw_deposit`
--
ALTER TABLE `pw_deposit`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pw_disputes`
--
ALTER TABLE `pw_disputes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pw_disputes_messages`
--
ALTER TABLE `pw_disputes_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pw_gateways`
--
ALTER TABLE `pw_gateways`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pw_gateways_fields`
--
ALTER TABLE `pw_gateways_fields`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pw_knowledge_articles`
--
ALTER TABLE `pw_knowledge_articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pw_knowledge_categories`
--
ALTER TABLE `pw_knowledge_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pw_pages`
--
ALTER TABLE `pw_pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pw_payments`
--
ALTER TABLE `pw_payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pw_requests`
--
ALTER TABLE `pw_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pw_settings`
--
ALTER TABLE `pw_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pw_transactions`
--
ALTER TABLE `pw_transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pw_users`
--
ALTER TABLE `pw_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pw_users_converts`
--
ALTER TABLE `pw_users_converts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pw_users_documents`
--
ALTER TABLE `pw_users_documents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pw_users_logs`
--
ALTER TABLE `pw_users_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `pw_users_wallets`
--
ALTER TABLE `pw_users_wallets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pw_withdrawals`
--
ALTER TABLE `pw_withdrawals`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pw_withdrawals_values`
--
ALTER TABLE `pw_withdrawals_values`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
