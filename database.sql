CREATE TABLE IF NOT EXISTS `pw_settings` ( 
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NULL,
  `description` varchar(255) NULL,
  `keywords` varchar(255) NULL,
  `name` varchar(255) NULL, 
  `infoemail` varchar(255) NULL,
  `supportemail` varchar(255) NULL,
  `url` varchar(255) NULL,
  `default_language` varchar(255) NULL,
  `default_template` varchar(255) NULL,
  `default_currency` varchar(255) NULL,
  `logo` text NULL,
  `require_email_verify` int(11) NULL,
  `require_document_verify` int(11) NULL,
  `limit_maxamount_sent` int(11) NULL,
  `limit_maxtxs_sent` int(11) NULL,
  `payfee_type` int(11) NULL,
  `payfee_side` int(11) NULL,
  `payfee_percentage` int(11) NULL,
  `enable_recaptcha` int(11) NULL,
  `recaptcha_publickey` varchar(255) NULL,
  `recaptcha_privatekey` varchar(255) NULL,
  `enable_curcnv` int(11) NULL,
  `curcnv_api` varchar(255) NULL,
  `curcnv_fee_percentage` int(11) NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;

CREATE TABLE IF NOT EXISTS `pw_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(255) NULL,
  `password_recovery` varchar(255) NULL,
  `document_verified` int(11) NULL,
  `email_verified` int(11) NULL,
  `email_hash` varchar(255) NULL,
  `email` varchar(255) NULL,
  `status` int(11) NULL,
  `account_type` int(11) NULL,
  `account_level` int(11) NULL,
  `account_user` varchar(255) NULL,
  `ip` varchar(255) NULL,
  `last_login` int(11) NULL,
  `signup_time` int(11) NULL,
  `2fa_auth` int(11) NULL,
  `2fa_auth_login` int(11) NULL,
  `2fa_auth_send` int(11) NULL,
  `2fa_auth_withdrawal` int(11) NULL,
  `googlecode` varchar(255) NULL,
  `wallet_passphrase` varchar(255) NULL,
  `first_name` varchar(255) NULL,
  `last_name` varchar(255) NULL,
  `business_name` varchar(255) NULL,
  `merchant_api_key` varchar(255) NULL,
  `country` varchar(255) NULL,
  `city` varchar(255) NULL,
  `province` varchar(255) NULL,
  `zip_code` varchar(255) NULL,
  `address` varchar(255) NULL,
  `birthday_date` varchar(255) NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;

CREATE TABLE IF NOT EXISTS `pw_users_wallets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NULL,
  `amount` varchar(255) NULL,
  `currency` varchar(5) NULL,
  `updated` int(11) NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;

CREATE TABLE IF NOT EXISTS `pw_users_converts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NULL,
  `from_wallet` int(11) NULL,
  `to_wallet` int(11) NULL,
  `from_amount` varchar(255) NULL,
  `from_currency` varchar(5) NULL,
  `to_amount` varchar(255) NULL,
  `to_currency` varchar(5) NULL,
  `from_rate` varchar(255) NULL,
  `to_rate` varchar(255) NULL,
  `fee` varchar(255) NULL,
  `created` int(11) NULL,
  `updated` int(11) NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;

CREATE TABLE IF NOT EXISTS `pw_users_documents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NULL,
  `document_type` int(11) NULL,
  `document_path` text NULL,
  `uploaded` int(11) NULL,
  `status` int(11) NULL,
  `u_field_1` varchar(255) NULL,
  `u_field_2` varchar(255) NULL,
  `u_field_3` varchar(255) NULL,
  `u_field_4` varchar(255) NULL,
  `u_field_5` varchar(255) NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;

CREATE TABLE IF NOT EXISTS `pw_users_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NULL,
  `type` int(11) NULL,
  `time` int(11) NULL,
  `u_field_1` varchar(255) NULL,
  `u_field_2` varchar(255) NULL,
  `u_field_3` varchar(255) NULL,
  `u_field_4` varchar(255) NULL,
  `u_field_5` varchar(255) NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;

CREATE TABLE IF NOT EXISTS `pw_transactions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `txid` varchar(255) NULL,
  `type` int(11) NULL,
  `sender` int(11) NULL,
  `recipient` int(11) NULL,
  `description` varchar(255) NULL,
  `amount` varchar(255) NULL,
  `currency` varchar(255) NULL,
  `fee` varchar(255) NULL,
  `deposit_via` int(11) NULL,
  `withdrawal_via` int(11) NULL,
  `status` int(11) NULL,
  `created` int(11) NULL,
  `updated` int(11) NULL,
  `item_id` varchar(255) NULL,
  `item_name` varchar(255) NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;

CREATE TABLE IF NOT EXISTS `pw_activity` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `txid` varchar(255) NULL,
  `type` int(11) NULL,
  `uid` int(11) NULL,
  `u_field_1` varchar(255) NULL,
  `u_field_2` varchar(255) NULL,
  `u_field_3` varchar(255) NULL,
  `u_field_4` varchar(255) NULL,
  `u_field_5` varchar(255) NULL,
  `amount` varchar(255) NULL,
  `currency` varchar(255) NULL,
  `deposit_via` int(11) NULL,
  `withdrawal_via` int(11) NULL,
  `status` int(11) NULL,
  `created` int(11) NULL,
  `updated` int(11) NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;

CREATE TABLE IF NOT EXISTS `pw_admin_earnings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `amount` varchar(255) NULL,
  `currency` varchar(255) NULL,
  `created` int(11) NULL,
  `updated` int(11) NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;

CREATE TABLE IF NOT EXISTS `pw_admin_logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(11) NULL,
  `time` int(11) NULL,
  `u_field_1` varchar(255) NULL,
  `u_field_2` varchar(255) NULL,
  `u_field_3` varchar(255) NULL,
  `u_field_4` varchar(255) NULL,
  `u_field_5` varchar(255) NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;

CREATE TABLE IF NOT EXISTS `pw_gateways` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` int(11) NULL,
  `name` varchar(255) NULL,
  `currency` varchar(255) NULL,
  `reserve` varchar(255) NULL,
  `min_amount` varchar(255) NULL,
  `max_amount` varchar(255) NULL,
  `exchange_type` int(11) NULL,
  `include_fee` int(11) NULL,
  `extra_fee` varchar(255) NULL,
  `fee` varchar(255) NULL,
  `allow_send` int(11) NULL,
  `allow_receive` int(11) NULL,
  `default_send` int(11) NULL,
  `default_receive` int(11) NULL,
  `allow_payouts` int(11) NULL,
  `a_field_1` varchar(255) NULL,
  `a_field_2` varchar(255) NULL,
  `a_field_3` varchar(255) NULL, 
  `a_field_4` varchar(255) NULL,
  `a_field_5` varchar(255) NULL,
  `a_field_6` varchar(255) NULL,
  `a_field_7` varchar(255) NULL,
  `a_field_8` varchar(255) NULL,
  `a_field_9` varchar(255) NULL,
  `a_field_10` varchar(255) NULL,
  `status` int(11) NULL,
  `external_gateway` int(11)  NOT NULL DEFAULT '0',
  `external_icon` text NULL,
  `process_type` int(11) NULL,
  `process_time` int(11) NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;

CREATE TABLE IF NOT EXISTS `pw_gateways_fields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `gateway_id` int(11) NULL,
  `field_name` varchar(255) NULL,
  `field_number` int(11) NULL,
  `field_value` varchar(255) NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;

CREATE TABLE IF NOT EXISTS `pw_requests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NULL,
  `fromu` int(11) NULL,
  `amount` varchar(255) NULL,
  `currency` varchar(255) NULL,
  `description` varchar(255) NULL,
  `requested_on` int(11) NULL,
  `processed_on` int(11) NULL,
  `status` int(11) NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;

CREATE TABLE IF NOT EXISTS `pw_withdrawals` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NULL,
  `txid` varchar(255) NULL,
  `method` int(11) NULL,
  `amount` varchar(255) NULL,
  `fee` varchar(255) NULL,
  `currency` varchar(255) NULL,
  `requested_on` int(11) NULL,
  `processed_on` int(11) NULL,
  `status` int(11) NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;

CREATE TABLE IF NOT EXISTS `pw_withdrawals_values` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NULL,
  `withdrawal_id` int(11) NULL,
  `gateway_id` int(11) NULL,
  `field_id` int(11) NULL,
  `value` varchar(255) NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;

CREATE TABLE IF NOT EXISTS `pw_deposits` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NULL,
  `txid` varchar(255) NULL,
  `method` int(11) NULL,
  `amount` varchar(255) NULL,
  `currency` varchar(255) NULL,
  `requested_on` int(11) NULL,
  `processed_on` int(11) NULL,
  `gateway_txid` varchar(255) NULL,
  `reference_number` varchar(255) NULL,
  `status` int(11) NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;

CREATE TABLE IF NOT EXISTS `pw_disputes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hash` varchar(255) NULL,
  `sender` int(11) NULL,
  `recipient` int(11) NULL,
  `txid` varchar(255) NULL,
  `amount` varchar(255) NULL,
  `currency` varchar(255) NULL,
  `escalate_review` int(11) NULL,
  `escalate_message` text NULL,
  `escalate_issued_by` int(11) NULL,
  `created_by` int(11) NULL,
  `created` int(11) NULL,
  `updated` int(11) NULL,
  `status` int(11) NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;

CREATE TABLE IF NOT EXISTS `pw_disputes_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NULL,
  `dispute_id` int(11) NULL,
  `comment` text NULL,
  `attachment` text NULL,
  `time` int(11) NULL,
  `is_admin` int(11) NULL,
  `status` int(11) NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;

CREATE TABLE IF NOT EXISTS `pw_pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NULL,
  `prefix` varchar(255) NULL,
  `content` text NULL,
  `created` int(11) NULL,
  `updated` int(11) NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;

CREATE TABLE IF NOT EXISTS `pw_knowledge_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NULL,
  `created` int(11) NULL,
  `updated` int(11) NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;

CREATE TABLE IF NOT EXISTS `pw_knowledge_articles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NULL,
  `content` text NULL,
  `created` int(11) NULL,
  `updated` int(11) NULL,
  `added_by` int(11) NULL,
  `category_id` int(11) NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;

CREATE TABLE IF NOT EXISTS `pw_payments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `hash` varchar(255) NULL,
  `txid` varchar(255) NULL,
  `merchant_account` varchar(255) NULL,
  `item_number` varchar(255) NULL,
  `item_name` varchar(255) NULL,
  `item_price` varchar(255) NULL,
  `item_currency` varchar(255) NULL,
  `return_success` varchar(255) NULL,
  `return_fail` varchar(255) NULL,
  `return_cancel` varchar(255) NULL,
  `payment_time` int(11) NULL,
  `payment_status` int(11) NULL,
  `payee_account` varchar(255) NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=1;