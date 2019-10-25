DROP TABLE IF EXISTS `fa_agent`;
CREATE TABLE `fa_agent` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '序号',
  `company` varchar(20) NOT NULL DEFAULT '' COMMENT '公司',
  `contact` varchar(20) NOT NULL DEFAULT '' COMMENT '联系人',
  `mobile` varchar(20) NOT NULL DEFAULT '' COMMENT '联系电话',
  `start_date` date(20) NOT NULL DEFAULT '' COMMENT '合同开始',
  `end_data` date(20) NOT NULL DEFAULT '' COMMENT '合同结束',
  `salesman_id` varchar(20) NOT NULL DEFAULT '' COMMENT '业务员',
  `level` enum('1','2','3') NOT NULL DEFAULT '3' COMMENT '代理商级别:1=一级,2=二级,3=三级',
  `status` enum('0','1') NOT NULL DEFAULT '0' COMMENT '状态:0=未签约,1=已签约',
  `createtime` int(10) DEFAULT NULL COMMENT '创建时间',
  `updatetime` int(10) DEFAULT NULL COMMENT '更新时间',
  
  PRIMARY KEY (`id`),
  UNIQUE KEY `mobile` (`mobile`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='代理商';

BEGIN;
INSERT INTO `fa_agent` VALUES (1, '三快科技', '13312345678', '张三', '20190527', '20200527', '李四', '3','0',1492186163, 1502029281);
COMMIT;



DROP TABLE IF EXISTS `fa_saleman`;
CREATE TABLE `fa_salesman` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '序号',
  `name` varchar(20) NOT NULL DEFAULT '' COMMENT '公司',
  `mobile` varchar(20) NOT NULL DEFAULT '' COMMENT '联系电话',
  `status` enum('0','1') NOT NULL DEFAULT '1' COMMENT '状态:0=禁用,1=启用',
  `createtime` int(10) DEFAULT NULL COMMENT '创建时间',
  `updatetime` int(10) DEFAULT NULL COMMENT '更新时间',
  
  PRIMARY KEY (`id`),
  UNIQUE KEY `mobile` (`mobile`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='业务员';

BEGIN;
INSERT INTO `fa_salesman` VALUES (1, '李四', '13312345678', '1',1492186163, 1502029281);
COMMIT;

DROP TABLE IF EXISTS `fa_store`;
CREATE TABLE `fa_store` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '序号',
  `name` varchar(20) NOT NULL DEFAULT '' COMMENT '商户名',
  `agent_id` int(10) NOT NULL DEFAULT '' COMMENT '归属代理商',
  `salesman_id` int(10) NOT NULL DEFAULT '' COMMENT '归属业务员',
  `status` enum('0','1') NOT NULL DEFAULT '1' COMMENT '状态:0=已签约,1=未签约',
  `createtime` int(10) DEFAULT NULL COMMENT '创建时间',
  `updatetime` int(10) DEFAULT NULL COMMENT '更新时间',
  
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='特约商户';

BEGIN;
INSERT INTO `fa_store` VALUES (1, '春天里超市', 1,1, '1',1492186163, 1502029281);
COMMIT;

DROP TABLE IF EXISTS `fa_order`;
CREATE TABLE `fa_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '序号',
  `amount` decimal(10,2) NOT NULL DEFAULT '' COMMENT '金额',
  `store_id` int(10) NOT NULL DEFAULT '' COMMENT '归属商户',
  `type` enum('wechat','alipay') NOT NULL DEFAULT '' COMMENT '支付平台:wechat=微信.alipay=支付宝',
  `createtime` int(10) DEFAULT NULL COMMENT '创建时间',
  `updatetime` int(10) DEFAULT NULL COMMENT '更新时间',
  
  PRIMARY KEY (`id`),
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT COMMENT='流水数据';

BEGIN;
INSERT INTO `fa_order` VALUES (1, 68.99,1,1492186163, 1502029281);
COMMIT;


