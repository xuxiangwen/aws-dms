DROP TABLE sessiontime ;
DROP TABLE caseinfo ;
DROP TABLE customer ;

CREATE TABLE `customer` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `nickname` varbinary(250) DEFAULT NULL,
  `custom_name` varchar(50) DEFAULT NULL,
  `openid` varchar(100) NOT NULL,
  `subscribe_time` bigint(15) DEFAULT NULL,
  `sex` smallint(1) DEFAULT NULL,
  `language` varchar(50) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `province` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL,
  `is_member` smallint(1) DEFAULT '0',
  `member_id` varchar(30) DEFAULT NULL,
  `last_update_date` datetime DEFAULT NULL,
  `member_status` varchar(2) DEFAULT 'A',
  `headimgurl` varchar(500) DEFAULT NULL,
  `qrcode` bigint(20) DEFAULT NULL ,
  `description` text,
  `company` varchar(100) DEFAULT NULL ,
  `invoice_name` varchar(200) DEFAULT NULL ,
  `isrobot` datetime DEFAULT NULL, 
  `repairsurveydate` datetime DEFAULT NULL ,
  `driverloadsurvetdate` datetime DEFAULT NULL ,
  `last_subscribe_time` bigint(15) DEFAULT NULL,
  `user_type` int(11) DEFAULT '0',
  `type_name` varchar(100) DEFAULT NULL,
   PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `sessiontime` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account_Id` int(11) NOT NULL,
  `sessionId` varchar(50) NOT NULL,
  `startSessionTime` datetime DEFAULT NULL ,
  `enterTime` datetime DEFAULT NULL ,
  `firstResponseTime` datetime DEFAULT NULL ,
  `endTime` datetime DEFAULT NULL,
  `status` smallint(6) DEFAULT '1' ,
  `launchType` smallint(6) DEFAULT '1' ,
  `endCaseTime` datetime DEFAULT NULL ,
  `caseStatus` smallint(6) DEFAULT '1' ,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `caseinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sessionId` varchar(50) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `subCategory` varchar(50) DEFAULT NULL,
  `detailCategory` varchar(50) DEFAULT NULL,
  `cnf` varchar(50) DEFAULT NULL,
  `qa` text,
  `pn` varchar(50) DEFAULT NULL,
  `sn` varchar(50) DEFAULT NULL,
  `productType` varchar(50) DEFAULT NULL,
  `productLine` varchar(50) DEFAULT NULL,
  `productName` varchar(100) DEFAULT NULL,
  `source` varchar(50) DEFAULT NULL ,
  `upgradeType` varchar(50) DEFAULT NULL ,
  `customerNickName` varchar(50) DEFAULT NULL,
  `customerName` varchar(50) DEFAULT NULL,
  `customerOpenId` varchar(50) DEFAULT NULL,
  `customerTel` varchar(50) DEFAULT NULL,
  `customerEmail` varchar(50) DEFAULT NULL,
  `caseSource` varchar(100) DEFAULT NULL,
  `productCategory` varchar(100) DEFAULT NULL,
  `isspos` int(1) DEFAULT NULL ,
  `os` varchar(128) DEFAULT NULL ,
  `firmware` varchar(128) DEFAULT NULL ,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

show tables;
