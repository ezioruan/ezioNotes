-- MySQL dump 10.13  Distrib 5.5.23, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: jiange
-- ------------------------------------------------------
-- Server version	5.5.23-2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `jg_account`
--

DROP TABLE IF EXISTS `jg_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jg_account` (
  `id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `create_time` int(10) unsigned NOT NULL DEFAULT '0',
  `is_lock` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `lock_time` int(10) unsigned NOT NULL DEFAULT '0',
  `online_time` int(10) unsigned NOT NULL DEFAULT '0',
  `online_status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `proxy_id` varchar(255) NOT NULL DEFAULT '0',
  `proxy_uid` varchar(255) NOT NULL,
  `gold` int(10) NOT NULL DEFAULT '0',
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `jg_account_extern`
--

DROP TABLE IF EXISTS `jg_account_extern`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jg_account_extern` (
  `id` int(10) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `create_time` int(10) unsigned NOT NULL DEFAULT '0',
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `jg_arena`
--

DROP TABLE IF EXISTS `jg_arena`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jg_arena` (
  `outside_level` int(11) NOT NULL COMMENT '外层次境界',
  `outside_index` int(11) NOT NULL COMMENT '外层次境界的序号',
  `inner_level` int(11) NOT NULL COMMENT '内层次境界',
  `inner_index` int(11) NOT NULL COMMENT '内层次境界的序号',
  `player_id` int(11) DEFAULT '0' COMMENT '该位置的玩家',
  PRIMARY KEY (`outside_level`,`outside_index`,`inner_level`,`inner_index`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `jg_arena_award`
--

DROP TABLE IF EXISTS `jg_arena_award`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jg_arena_award` (
  `player_id` int(11) NOT NULL COMMENT '玩家id',
  `package_id` int(11) NOT NULL COMMENT '奖励包id',
  `package_para` text COMMENT '参数字典',
  PRIMARY KEY (`player_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `jg_arena_note`
--

DROP TABLE IF EXISTS `jg_arena_note`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jg_arena_note` (
  `player_id` int(11) NOT NULL DEFAULT '0' COMMENT '玩家id',
  `player_name` varchar(255) DEFAULT NULL COMMENT '玩家名字',
  `relation_player_id` int(11) DEFAULT '0' COMMENT '相关玩家id',
  `relation_player_name` varchar(255) DEFAULT NULL COMMENT '相关玩家的名字',
  `is_attacker` tinyint(4) DEFAULT '1' COMMENT '是否是进攻方',
  `outside_level` int(11) DEFAULT '0' COMMENT '挑战以后玩家在竞技场的境界',
  `inner_level` int(11) DEFAULT '0' COMMENT '挑战以后玩家在竞技场的层次',
  `chanllenge_res` int(11) DEFAULT '0' COMMENT '挑战结果枚举',
  `prestige` int(11) DEFAULT '0' COMMENT '威望奖励',
  `battle_note_id` int(11) DEFAULT '0' COMMENT '战报id',
  `chanllenge_time` int(11) NOT NULL DEFAULT '0' COMMENT '挑战时间'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `jg_battle_report`
--

DROP TABLE IF EXISTS `jg_battle_report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jg_battle_report` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '递增ID 唯一',
  `report_tp` int(11) DEFAULT NULL COMMENT '战报类型',
  `report_data` text COMMENT '战报数据',
  `par1` int(11) DEFAULT NULL COMMENT '参数1',
  `par2` int(11) DEFAULT NULL COMMENT '参数2',
  `par3` int(11) DEFAULT NULL COMMENT '参数3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2101 DEFAULT CHARSET=gbk;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `jg_day_token_info`
--

DROP TABLE IF EXISTS `jg_day_token_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jg_day_token_info` (
  `sequece` bigint(21) NOT NULL DEFAULT '0' COMMENT '排名',
  `player_id` int(10) NOT NULL COMMENT '玩家ID',
  `yestoday_token_count` int(10) NOT NULL DEFAULT '0' COMMENT '昨天英雄令数量'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `jg_forge_house`
--

DROP TABLE IF EXISTS `jg_forge_house`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jg_forge_house` (
  `player_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '玩家ID',
  `forge_house_refresh_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '铸鼎刷新时间',
  `steal_num` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '可偷取次数',
  `stolen_num` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '可被偷取次数',
  PRIMARY KEY (`player_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `jg_forge_house_item`
--

DROP TABLE IF EXISTS `jg_forge_house_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jg_forge_house_item` (
  `item_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '具体物品ID',
  `base_item_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '基础物品ID',
  `player_id` int(10) unsigned NOT NULL COMMENT '玩家ID',
  `bar_type` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '栏位类型：\n1：物品栏；2：普通装备栏；3：铸鼎装备栏；4：荣誉装备栏',
  `bar_position` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '位置',
  `item_num` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '物品的数量',
  `equip_all_name` char(50) NOT NULL DEFAULT '''''' COMMENT '装备全名',
  `equip_rare` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '物品品质：0：白；1：绿；2：蓝；3：紫；4：橙；5：暗金',
  `equip_binding_status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '绑定状态：0：无绑定；1：已绑定  ',
  `equip_maker` varchar(50) NOT NULL DEFAULT '''''' COMMENT '装备制造者',
  `equip_durability` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '物品当前耐久度',
  `equip_strengthen_lv` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '装备强化等级',
  `equip_enchanted_lv` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '装备注魔等级',
  `is_buyable` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否已购买0：未购买 1：购买',
  `item_price` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '价值-刀币',
  PRIMARY KEY (`item_id`),
  KEY `player_id` (`player_id`)
) ENGINE=InnoDB AUTO_INCREMENT=256 DEFAULT CHARSET=utf8 COMMENT='铸鼎装备物品表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `jg_forge_house_item_effect`
--

DROP TABLE IF EXISTS `jg_forge_house_item_effect`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jg_forge_house_item_effect` (
  `item_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '物品ID',
  `effect_type` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '效果类型',
  `effect_value` float unsigned NOT NULL DEFAULT '0' COMMENT '效果值',
  PRIMARY KEY (`item_id`,`effect_type`),
  KEY `item_id` (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `jg_forge_house_message`
--

DROP TABLE IF EXISTS `jg_forge_house_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jg_forge_house_message` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键自动增长',
  `player_id` int(10) unsigned NOT NULL COMMENT '玩家id',
  `target_name` char(20) NOT NULL COMMENT '对方姓名',
  `type` tinyint(3) unsigned NOT NULL COMMENT '类型1:偷取2:被偷取',
  `base_item_name` char(20) NOT NULL COMMENT '物品名称',
  `create_time` int(10) unsigned NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `jg_friend_message`
--

DROP TABLE IF EXISTS `jg_friend_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jg_friend_message` (
  `msg_from_player_id` int(10) unsigned NOT NULL COMMENT '发送消息的玩家id',
  `msg_to_player_id` int(10) unsigned NOT NULL COMMENT '接收消息的玩家id',
  `msg_type` tinyint(3) unsigned NOT NULL COMMENT '消息类型,1请求添加好友，2添加好友成功,3拒绝添加好友',
  `msg_send_time` int(13) unsigned DEFAULT NULL COMMENT '消息发送时间',
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `msg_from_player_name` char(20) NOT NULL COMMENT '消息发送人的姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `jg_item`
--

DROP TABLE IF EXISTS `jg_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jg_item` (
  `item_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '具体物品ID',
  `base_item_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '基础物品ID',
  `player_id` int(10) unsigned NOT NULL COMMENT '玩家ID',
  `bar_type` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '栏位类型：\r\n1：物品栏；2：普通装备栏；3：铸鼎装备栏；4：荣誉装备栏',
  `bar_position` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '位置',
  `item_num` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '物品的数量',
  `equip_all_name` char(50) NOT NULL COMMENT '装备全名',
  `equip_rare` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '物品品质：0：白；1：绿；2：蓝；3：紫；4：橙；5：暗金',
  `equip_binding_status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '绑定状态：0：无绑定；1：已绑定  ',
  `equip_maker` varchar(50) NOT NULL COMMENT '装备制造者',
  `equip_durability` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '物品当前耐久度',
  `equip_strengthen_lv` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '装备强化等级',
  `equip_enchanted_lv` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '装备注魔等级',
  PRIMARY KEY (`item_id`),
  KEY `player_id` (`player_id`)
) ENGINE=InnoDB AUTO_INCREMENT=990 DEFAULT CHARSET=utf8 COMMENT='物品表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `jg_item_effect`
--

DROP TABLE IF EXISTS `jg_item_effect`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jg_item_effect` (
  `item_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '物品ID',
  `effect_type` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '效果类型',
  `effect_value` float unsigned NOT NULL DEFAULT '0' COMMENT '效果值',
  PRIMARY KEY (`item_id`,`effect_type`),
  KEY `item_id` (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary table structure for view `jg_item_rank`
--

DROP TABLE IF EXISTS `jg_item_rank`;
/*!50001 DROP VIEW IF EXISTS `jg_item_rank`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `jg_item_rank` (
  `base_item_id` int(10) unsigned,
  `equip_rare` tinyint(3) unsigned,
  `equip_strengthen_lv` tinyint(3) unsigned,
  `equip_enchanted_lv` tinyint(3) unsigned,
  `item_lv` tinyint(3) unsigned,
  `player_name` char(20),
  `player_lv` tinyint(3)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `jg_nation`
--

DROP TABLE IF EXISTS `jg_nation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jg_nation` (
  `id` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '国家ID：0=中立，1=楚，2=汉，3=燕，4=赵，5=秦，6=齐',
  `enounce` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '扫荡六合，一统华夏！' COMMENT '国家宣言',
  `money` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '国家资金',
  `nation_war` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '是否已申请国战',
  `nation_skill_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '国家科技刷新时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `jg_nation_battle`
--

DROP TABLE IF EXISTS `jg_nation_battle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jg_nation_battle` (
  `attack_id` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '攻击方国家ID',
  `defend_id` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '防守方国家ID',
  `city_id` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '城池ID',
  `battle_winner` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '战争胜利方',
  `battle_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '战争时间',
  `battle_mvp` char(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT 'NULL' COMMENT '战场最佳',
  `kill_count` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '击杀人数',
  `battle_state` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '战争状态0未开始，1进行中，2结束'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `jg_nation_city`
--

DROP TABLE IF EXISTS `jg_nation_city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jg_nation_city` (
  `city_id` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '城池ID',
  `city_name` char(20) NOT NULL COMMENT '城池名字',
  `city_nation` tinyint(2) unsigned NOT NULL DEFAULT '0' COMMENT '城池阵营归属',
  `city_type` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '城池类型：0=小城，1=大城，2=巨城，3=都城',
  `city_posx` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '城池坐标x',
  `city_posy` tinyint(1) unsigned NOT NULL DEFAULT '0' COMMENT '城池坐标y'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `jg_nation_skill`
--

DROP TABLE IF EXISTS `jg_nation_skill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jg_nation_skill` (
  `id` tinyint(3) unsigned NOT NULL COMMENT '科技ID',
  `nation` tinyint(2) unsigned NOT NULL COMMENT '国家',
  `lv` tinyint(3) unsigned NOT NULL COMMENT '科技等级',
  `refresh_time` int(10) unsigned NOT NULL COMMENT '升级刷新时间'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `jg_nation_subsidy_info`
--

DROP TABLE IF EXISTS `jg_nation_subsidy_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jg_nation_subsidy_info` (
  `player_id` int(10) unsigned NOT NULL COMMENT '申请人ID',
  `nation` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '国家',
  `name` char(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '名字',
  `time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '申请时间',
  `money` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '申请金额',
  `operator` char(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '操作者',
  `result` tinyint(1) NOT NULL DEFAULT '0' COMMENT '操作结果：0=等待，1=成功，2=失败'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `jg_offline_player_award_package`
--

DROP TABLE IF EXISTS `jg_offline_player_award_package`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jg_offline_player_award_package` (
  `index` int(11) NOT NULL AUTO_INCREMENT,
  `player_id` int(11) DEFAULT NULL,
  `package_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `jg_player`
--

DROP TABLE IF EXISTS `jg_player`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jg_player` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '玩家ID',
  `account_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '帐号ID',
  `name` char(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '姓名',
  `vip_lv` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT 'VIP等级',
  `vip_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'VIP时间',
  `title_id` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '称号编号',
  `sex` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '性别:1、男；2、女',
  `login_ip` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '登陆IP',
  `profession` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '职业，1=剑客，2=猎人，3=方士',
  `guild_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '帮会ID',
  `guild_pos` int(11) NOT NULL DEFAULT '0' COMMENT '玩家在帮会中的职位',
  `nation` tinyint(3) NOT NULL DEFAULT '0' COMMENT '阵营,0=无阵营,1=楚, 2=汉',
  `img` tinyint(3) NOT NULL DEFAULT '0' COMMENT '图片',
  `act_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '行动时间',
  `create_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '创建时间',
  `online_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '在线时间',
  `offline_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '离线时间',
  `store_num` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '仓库格数',
  `package_num` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '包裹格数',
  `identity` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '身份',
  `gm_lv` int(11) NOT NULL DEFAULT '0' COMMENT 'gm权限等级 0=无权限,1=普通, 2=高级, 3=超级',
  PRIMARY KEY (`id`),
  KEY `account_id` (`account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8 COMMENT='玩家角色表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `jg_player_attr`
--

DROP TABLE IF EXISTS `jg_player_attr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jg_player_attr` (
  `player_id` int(10) NOT NULL COMMENT '玩家ID',
  `lv` tinyint(3) NOT NULL DEFAULT '0' COMMENT '等级',
  `exp` int(10) NOT NULL DEFAULT '0' COMMENT '经验',
  `strength` float NOT NULL DEFAULT '0' COMMENT '力量',
  `intelligence` float NOT NULL DEFAULT '0' COMMENT '学识',
  `agile` float NOT NULL DEFAULT '0' COMMENT '身法',
  `hp` int(10) NOT NULL DEFAULT '0' COMMENT '生命',
  `max_hp` int(10) NOT NULL DEFAULT '0' COMMENT '最大生命',
  `mp` int(10) NOT NULL DEFAULT '0' COMMENT '法力',
  `max_mp` int(10) NOT NULL DEFAULT '0' COMMENT '最大法力',
  `phy_atk` int(10) NOT NULL DEFAULT '0' COMMENT '武术攻击',
  `phy_def` int(10) NOT NULL DEFAULT '0' COMMENT '武术防御',
  `mag_atk` int(10) NOT NULL DEFAULT '0' COMMENT '法术攻击',
  `mag_def` int(10) NOT NULL DEFAULT '0' COMMENT '法术防御',
  `phy_crit_point` int(10) NOT NULL DEFAULT '0' COMMENT '武爆值（能力）',
  `phy_crit` int(5) NOT NULL DEFAULT '0' COMMENT '武术暴击率',
  `mag_crit_point` int(10) NOT NULL DEFAULT '0' COMMENT '法爆值（能力）',
  `mag_crit` int(5) NOT NULL DEFAULT '0' COMMENT '法术暴击率',
  `hit_point` int(10) NOT NULL DEFAULT '0' COMMENT '命中值',
  `hit` int(5) NOT NULL DEFAULT '0' COMMENT '命中率',
  `dodge_point` int(10) NOT NULL DEFAULT '0' COMMENT '闪避值（能力）',
  `dodge` int(5) NOT NULL DEFAULT '0' COMMENT '闪避率',
  `rebound` int(5) NOT NULL DEFAULT '0' COMMENT '反弹',
  `absorbed_hp` int(5) NOT NULL DEFAULT '0' COMMENT '吸血',
  `absorbed_mp` int(5) NOT NULL DEFAULT '0' COMMENT '吸蓝',
  `speed` int(10) NOT NULL DEFAULT '0' COMMENT '先手速度',
  `remain_point` int(10) NOT NULL DEFAULT '0' COMMENT '剩余点数',
  `status` tinyint(3) NOT NULL DEFAULT '0' COMMENT '状态',
  `money` int(10) NOT NULL DEFAULT '0' COMMENT '金钱',
  `coupon` int(10) NOT NULL DEFAULT '0' COMMENT '礼券',
  `stone_num` int(10) NOT NULL DEFAULT '0' COMMENT '天灵石数量',
  `vigour` int(10) NOT NULL DEFAULT '0' COMMENT '活力',
  `zhen_qi` int(10) NOT NULL DEFAULT '0' COMMENT '真气',
  `map_id` int(10) NOT NULL DEFAULT '0' COMMENT '所在地图可以是FB',
  `last_map_id` int(10) NOT NULL DEFAULT '0' COMMENT '上次所在地图一定不会是副本',
  `honor_point` int(10) NOT NULL DEFAULT '0' COMMENT '荣誉点数',
  `sin_point` int(10) NOT NULL DEFAULT '0' COMMENT '罪恶点数',
  `strengthen_num` int(10) NOT NULL DEFAULT '0' COMMENT '强化总次数(每天初始为0)',
  `strengthen_time` int(10) NOT NULL DEFAULT '0' COMMENT '强化CD总时间',
  `strengthen_last_time` int(10) NOT NULL DEFAULT '0' COMMENT '最后强化时间',
  `strengthen_status` tinyint(3) NOT NULL DEFAULT '0' COMMENT '连续强化状态 0：可连续强化 1：不可强化',
  `strengthen_rate` tinyint(3) NOT NULL DEFAULT '60' COMMENT '强化成功率(每天初始60%)',
  `skill_series` tinyint(3) NOT NULL DEFAULT '0' COMMENT '启用的技能系列',
  `map_point_x` int(10) NOT NULL DEFAULT '0' COMMENT '玩家所在地图的坐标位置(x坐标)',
  `map_point_y` int(10) NOT NULL DEFAULT '0' COMMENT '玩家所在地图的坐标位置(y坐标)',
  `friend_validation` tinyint(1) NOT NULL DEFAULT '0' COMMENT '加好友是否需要验证',
  `society_contribute` int(10) NOT NULL DEFAULT '0' COMMENT '帮会贡献  ',
  `today_token_count` int(10) NOT NULL DEFAULT '0' COMMENT '今天英雄令数量',
  `yestoday_token_count` int(10) NOT NULL DEFAULT '0' COMMENT '昨天英雄令数量',
  `challenger_refreshed` tinyint(1) NOT NULL DEFAULT '0' COMMENT '列表是否刷新过延迟刷新',
  `challenger_data` text CHARACTER SET utf8 COLLATE utf8_unicode_ci COMMENT '英雄令对手数据',
  `aready_fight` tinyint(1) NOT NULL DEFAULT '0' COMMENT '英雄令活动当天是否战斗过',
  `hero_token_prize_fetched` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否领取过当天的英雄令',
  `latest_token_count` int(10) NOT NULL DEFAULT '0' COMMENT '最近一天获得英雄令的数量 可能是昨天的也可能是很久以前的如果没有上线的话',
  `total_token_count` int(10) NOT NULL DEFAULT '0' COMMENT '获得的英雄令的总数',
  `hero_token_beated` int(10) NOT NULL DEFAULT '0' COMMENT '当天已经战胜过的次数',
  `today_logined` tinyint(1) NOT NULL DEFAULT '0' COMMENT '今天是否登陆过',
  `today_fetched` tinyint(1) NOT NULL DEFAULT '0' COMMENT '当天战胜次数满后可以领取奖励 加一个字段表示当天是否领过',
  `matrix` int(11) DEFAULT '0' COMMENT '玩家阵法id',
  `prestige` int(6) unsigned NOT NULL DEFAULT '0' COMMENT '玩家威望值',
  `prestige_lv` int(6) unsigned NOT NULL DEFAULT '1' COMMENT '玩家威望等级',
  `arena_fight_num` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '玩家在竞技场已经挑战的次数',
  `spirit_fire` int(11) NOT NULL DEFAULT '0' COMMENT '灵火数量',
  `buy_spirit_fire_times` int(11) NOT NULL DEFAULT '0' COMMENT '购买灵火的次数',
  PRIMARY KEY (`player_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='玩家角色属性表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `jg_player_award`
--

DROP TABLE IF EXISTS `jg_player_award`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jg_player_award` (
  `player_id` int(11) NOT NULL COMMENT '玩家id',
  `package_id` int(11) NOT NULL COMMENT '奖励包id',
  `package_para` text COMMENT '奖励包裹参数',
  PRIMARY KEY (`player_id`,`package_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `jg_player_beated_npc`
--

DROP TABLE IF EXISTS `jg_player_beated_npc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jg_player_beated_npc` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `player_id` int(11) NOT NULL,
  `player_name` char(50) NOT NULL,
  `npc_id` int(11) NOT NULL,
  `diff_lv` int(11) NOT NULL,
  `report_id` int(11) NOT NULL,
  `time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=483 DEFAULT CHARSET=gbk;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `jg_player_buff`
--

DROP TABLE IF EXISTS `jg_player_buff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jg_player_buff` (
  `player_id` int(6) NOT NULL COMMENT '玩家ID',
  `buff_id` int(6) NOT NULL COMMENT 'BUFF ID',
  `deal_time` datetime NOT NULL COMMENT '上一次处理的时间',
  `remain_time` int(6) NOT NULL DEFAULT '0' COMMENT '剩余时间',
  `remain_cnt` int(6) NOT NULL DEFAULT '0' COMMENT '剩余次数',
  `buff_value0` int(6) NOT NULL DEFAULT '0' COMMENT 'buff 值1',
  `buff_value1` int(6) NOT NULL DEFAULT '0' COMMENT 'buff 值2',
  PRIMARY KEY (`player_id`,`buff_id`),
  KEY `player_id` (`player_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `jg_player_dict`
--

DROP TABLE IF EXISTS `jg_player_dict`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jg_player_dict` (
  `player_id` int(10) unsigned NOT NULL COMMENT '玩家id',
  `dict_key` int(10) unsigned NOT NULL DEFAULT '0' COMMENT 'key值',
  `dict_value` int(11) unsigned NOT NULL DEFAULT '0' COMMENT 'valu值',
  PRIMARY KEY (`player_id`,`dict_key`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `jg_player_friend`
--

DROP TABLE IF EXISTS `jg_player_friend`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jg_player_friend` (
  `player_id` int(10) unsigned NOT NULL COMMENT '玩家id',
  `common_friends` longtext COMMENT '普通好友列表{id:{''create_on'':创建时间,''last_chat'':最后交谈时间}}',
  `black_friends` longtext COMMENT '黑名单列表{id:{''create_on'':创建时间,''last_chat'':最后交谈时间}}',
  `recent_chat` longtext COMMENT '最近联系人列表{id:{''last_chat'':最后交谈时间}}',
  PRIMARY KEY (`player_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `jg_player_guide`
--

DROP TABLE IF EXISTS `jg_player_guide`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jg_player_guide` (
  `player_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '玩家ID',
  `done_guide` text COMMENT '已完成引导任务',
  `doing_guide` text COMMENT '正在引导任务',
  `enable_func` text COMMENT '已开启功能',
  PRIMARY KEY (`player_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `jg_player_matrix_location`
--

DROP TABLE IF EXISTS `jg_player_matrix_location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jg_player_matrix_location` (
  `player_id` int(11) NOT NULL COMMENT '玩家id',
  `matrix_location` int(11) NOT NULL COMMENT '阵位',
  `lv` int(11) NOT NULL COMMENT '阵位等级',
  PRIMARY KEY (`player_id`,`matrix_location`,`lv`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `jg_player_nation_info`
--

DROP TABLE IF EXISTS `jg_player_nation_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jg_player_nation_info` (
  `player_id` int(10) unsigned NOT NULL COMMENT '玩家ID',
  `player_name` char(20) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL COMMENT '玩家名称',
  `nation_id` tinyint(3) NOT NULL DEFAULT '0' COMMENT '国家ID',
  `identity` tinyint(3) NOT NULL DEFAULT '0' COMMENT '国家中的身份',
  `last_week_proffer` int(10) NOT NULL DEFAULT '0' COMMENT '上周国家贡献',
  `last_week_ranking` int(5) NOT NULL DEFAULT '0' COMMENT '上周国家排名',
  `week_proffer` int(10) NOT NULL DEFAULT '0' COMMENT '本周国家贡献',
  `subsidy` int(6) NOT NULL DEFAULT '0' COMMENT '国家补助金钱',
  `change_nation_count` tinyint(3) NOT NULL DEFAULT '0' COMMENT '叛国次数',
  `week_change_nation_count` tinyint(3) NOT NULL DEFAULT '0' COMMENT '本周叛国次数',
  `coutribute` int(3) unsigned NOT NULL DEFAULT '0' COMMENT '本周捐献数额'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `jg_player_singlefb`
--

DROP TABLE IF EXISTS `jg_player_singlefb`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jg_player_singlefb` (
  `player_id` int(6) unsigned NOT NULL COMMENT '玩家ID',
  `fb_id` int(6) unsigned NOT NULL COMMENT '副本ID',
  `diff_lv` tinyint(6) DEFAULT NULL COMMENT '当前挑战的副本的难度等级 如果是0说明没有设定',
  `step` int(6) DEFAULT NULL COMMENT '当前在第几关',
  `enter_cnt` int(6) DEFAULT NULL COMMENT '进入了多少次',
  `killed_npc_lst` char(100) DEFAULT NULL COMMENT '当前关卡杀死的NPC ID列表',
  `finished_diff_lv` tinyint(1) NOT NULL DEFAULT '0' COMMENT '这个副本通关过的难度',
  `battling` tinyint(1) NOT NULL DEFAULT '0' COMMENT '玩家是否在该FB中有进度',
  `reset_cnt` bigint(1) NOT NULL DEFAULT '0' COMMENT '玩家当天重置进入副本次数',
  PRIMARY KEY (`player_id`,`fb_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `jg_player_skill`
--

DROP TABLE IF EXISTS `jg_player_skill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jg_player_skill` (
  `player_id` int(10) unsigned NOT NULL COMMENT '玩家ID',
  `skill_id` int(10) unsigned NOT NULL COMMENT '技能ID',
  `position` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '技能位置：0、未装备；其他、对应所在的位置',
  `lv` tinyint(3) unsigned NOT NULL DEFAULT '1' COMMENT '技能等级',
  `lv_up` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '装备、BUFF导致的等级提升',
  `essence` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '真髓',
  PRIMARY KEY (`player_id`,`skill_id`),
  UNIQUE KEY `player_id` (`player_id`,`skill_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `jg_player_sword_activity`
--

DROP TABLE IF EXISTS `jg_player_sword_activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jg_player_sword_activity` (
  `player_id` int(10) NOT NULL COMMENT '玩家ID',
  `beated_boss_star_lst` char(100) DEFAULT '[]' COMMENT '战胜过活动BOSS的星级列表',
  `guard_beated` tinyint(1) DEFAULT '0' COMMENT '守卫是否战胜过',
  `final_boss_star` tinyint(1) DEFAULT '0' COMMENT '终级BOSS挑战的星级',
  `final_boss_beated` tinyint(1) DEFAULT '0' COMMENT '终极BOSS是否战胜过',
  `final_boss_reduce_diff` int(1) DEFAULT '0' COMMENT '最终BOSS降低难度等级',
  `final_boss_reduce_star` int(1) DEFAULT '0' COMMENT '最终BOSS星级降低等级',
  PRIMARY KEY (`player_id`)
) ENGINE=InnoDB DEFAULT CHARSET=gbk;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `jg_player_task`
--

DROP TABLE IF EXISTS `jg_player_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jg_player_task` (
  `player_id` int(10) unsigned NOT NULL COMMENT '玩家ID',
  `done_tasks` text CHARACTER SET utf8 COLLATE utf8_unicode_ci COMMENT '当前已完成的任务列表(整个line没有完成)',
  `done_lines` text CHARACTER SET utf8 COLLATE utf8_unicode_ci COMMENT '已完成的线',
  `doing_tasks` text CHARACTER SET utf8 COLLATE utf8_unicode_ci COMMENT '正在进行中的任务',
  PRIMARY KEY (`player_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Temporary table structure for view `jg_player_view`
--

DROP TABLE IF EXISTS `jg_player_view`;
/*!50001 DROP VIEW IF EXISTS `jg_player_view`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `jg_player_view` (
  `id` int(10) unsigned,
  `account_id` int(10) unsigned,
  `name` char(20),
  `vip_lv` tinyint(3) unsigned,
  `vip_time` int(10) unsigned,
  `title_id` tinyint(3) unsigned,
  `sex` tinyint(3) unsigned,
  `login_ip` int(10) unsigned,
  `profession` tinyint(3) unsigned,
  `guild_id` int(10) unsigned,
  `nation` tinyint(3),
  `img` tinyint(3),
  `act_time` int(10) unsigned,
  `create_time` int(10) unsigned,
  `online_time` int(10) unsigned,
  `offline_time` int(10) unsigned,
  `store_num` smallint(5) unsigned,
  `package_num` smallint(5) unsigned,
  `identity` tinyint(3) unsigned,
  `gm_lv` int(11),
  `player_id` int(10),
  `lv` tinyint(3),
  `exp` int(10),
  `strength` float,
  `intelligence` float,
  `agile` float,
  `hp` int(10),
  `max_hp` int(10),
  `mp` int(10),
  `max_mp` int(10),
  `phy_atk` int(10),
  `phy_def` int(10),
  `mag_atk` int(10),
  `mag_def` int(10),
  `phy_crit_point` int(10),
  `phy_crit` int(5),
  `mag_crit_point` int(10),
  `mag_crit` int(5),
  `hit_point` int(10),
  `hit` int(5),
  `dodge_point` int(10),
  `dodge` int(5),
  `rebound` int(5),
  `absorbed_hp` int(5),
  `absorbed_mp` int(5),
  `speed` int(10),
  `remain_point` int(10),
  `status` tinyint(3),
  `money` int(10),
  `coupon` int(10),
  `vigour` int(10),
  `zhen_qi` int(10),
  `map_id` int(10),
  `last_map_id` int(10),
  `honor_point` int(10),
  `sin_point` int(10),
  `strengthen_num` int(10),
  `strengthen_time` int(10),
  `strengthen_last_time` int(10),
  `strengthen_status` tinyint(3),
  `strengthen_rate` tinyint(3),
  `skill_series` tinyint(3),
  `map_point_x` int(10),
  `map_point_y` int(10),
  `friend_validation` tinyint(1),
  `society_contribute` int(10),
  `today_token_count` int(10),
  `yestoday_token_count` int(10),
  `challenger_refreshed` tinyint(1),
  `challenger_data` text,
  `aready_fight` tinyint(1),
  `hero_token_prize_fetched` tinyint(1),
  `latest_token_count` int(10),
  `total_token_count` int(10),
  `hero_token_beated` int(10),
  `today_logined` tinyint(1),
  `nation_id` tinyint(3)
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `jg_player_wldh`
--

DROP TABLE IF EXISTS `jg_player_wldh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jg_player_wldh` (
  `player_id` int(11) NOT NULL COMMENT '玩家id',
  `integral` int(11) DEFAULT '0' COMMENT '当前积分',
  `victory_num` int(11) DEFAULT '0' COMMENT '胜场次数',
  `campaign_id` int(11) NOT NULL DEFAULT '0' COMMENT '场次id',
  `ls_day_integral` int(11) NOT NULL DEFAULT '0' COMMENT '玩家昨天的积分',
  `ls_day_camp_id` int(11) NOT NULL DEFAULT '0' COMMENT '玩家昨天的场次',
  PRIMARY KEY (`player_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `jg_player_yujian`
--

DROP TABLE IF EXISTS `jg_player_yujian`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jg_player_yujian` (
  `player_id` int(11) NOT NULL COMMENT '玩家id',
  `skill_id` int(11) NOT NULL COMMENT '御剑技能id',
  `skill_lv` int(11) DEFAULT '0' COMMENT '御剑技能的等级',
  PRIMARY KEY (`player_id`,`skill_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `jg_practise_info`
--

DROP TABLE IF EXISTS `jg_practise_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jg_practise_info` (
  `player_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '玩家ID',
  `start_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '修炼开始时间',
  `cur_num` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '当前修炼次数',
  `practise_num` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '修炼次数',
  `target_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '修炼目标',
  `map_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '修炼地图',
  PRIMARY KEY (`player_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `jg_proxy`
--

DROP TABLE IF EXISTS `jg_proxy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jg_proxy` (
  `proxy_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `proxy_no` varchar(50) NOT NULL COMMENT '?ú?í????',
  `proxy_offical_url` varchar(255) NOT NULL COMMENT '?ú?í???????·',
  `proxy_pay_url` varchar(255) NOT NULL COMMENT '?ú?í???????·',
  `proxy_bbs_url` varchar(255) NOT NULL COMMENT '?ú?í???????·',
  `proxy_key` varchar(32) NOT NULL COMMENT '?ú?íkey',
  PRIMARY KEY (`proxy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `jg_server_runinfo`
--

DROP TABLE IF EXISTS `jg_server_runinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jg_server_runinfo` (
  `seq_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '连接到该数据库的服务器的开启顺序ID',
  `start_time` datetime NOT NULL DEFAULT '2011-01-01 00:00:00' COMMENT '开启时间',
  `shutdown_time` datetime NOT NULL DEFAULT '2011-01-01 00:00:00' COMMENT '关闭时间',
  PRIMARY KEY (`seq_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `jg_shenquan`
--

DROP TABLE IF EXISTS `jg_shenquan`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jg_shenquan` (
  `player_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '玩家ID',
  `max_hp` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最大生命存储',
  `max_mp` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最大法力存储',
  `hp` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '现有生命储量',
  `mp` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '现有法力储量',
  `steal_num` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '可偷取次数(5)',
  `stolen_num` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '可被偷取次数(3)',
  `donate_num` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '馈赠次数(3)',
  `donated_num` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '被馈赠次数(5)',
  PRIMARY KEY (`player_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `jg_shenquan_message`
--

DROP TABLE IF EXISTS `jg_shenquan_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jg_shenquan_message` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '主键自动增长',
  `player_id` int(10) unsigned NOT NULL COMMENT '玩家id',
  `target_name` char(20) NOT NULL COMMENT '对方姓名',
  `type` tinyint(3) unsigned NOT NULL COMMENT '类型1:偷取2:被偷取3：馈赠，4：被馈赠',
  `hp` int(10) unsigned NOT NULL COMMENT '血的影响',
  `mp` int(10) NOT NULL COMMENT '魔的影响',
  `create_time` int(10) unsigned NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `jg_society`
--

DROP TABLE IF EXISTS `jg_society`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jg_society` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT COMMENT '帮会id',
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '帮会名称',
  `lv` int(11) DEFAULT '0' COMMENT '帮会等级',
  `develop_value` int(11) NOT NULL DEFAULT '0' COMMENT '帮会建设值',
  `week_develop_value` int(11) NOT NULL DEFAULT '0' COMMENT '本周建设值',
  `introduce` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '帮会介绍',
  `notice` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '帮会通知',
  `leader_id` int(11) NOT NULL DEFAULT '0' COMMENT '帮主id',
  `leader_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '帮主名字',
  `is_delete` tinyint(1) DEFAULT '0' COMMENT '帮会是否被删除',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `jg_society_event`
--

DROP TABLE IF EXISTS `jg_society_event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jg_society_event` (
  `society_id` int(11) DEFAULT '0' COMMENT '帮会id',
  `event_type` int(11) DEFAULT '0' COMMENT '事件类型',
  `event_time` int(11) DEFAULT '0' COMMENT '事件发生的时间',
  `player1_id` int(11) DEFAULT '0' COMMENT '相关人物1的id',
  `player2_id` int(11) DEFAULT '0' COMMENT '相关任务2的id'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `jg_society_member`
--

DROP TABLE IF EXISTS `jg_society_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jg_society_member` (
  `society_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '帮会id',
  `player_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '玩家id',
  `pos` int(11) NOT NULL DEFAULT '0' COMMENT '帮会职位',
  `today_contribute` int(11) NOT NULL DEFAULT '0' COMMENT '今日贡献',
  `total_contribute` int(11) NOT NULL DEFAULT '0' COMMENT '总贡献',
  PRIMARY KEY (`society_id`,`player_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `jg_society_request`
--

DROP TABLE IF EXISTS `jg_society_request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jg_society_request` (
  `society_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '帮会id',
  `player_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '玩家id',
  `req_time` int(11) NOT NULL DEFAULT '0' COMMENT '申请时间',
  PRIMARY KEY (`society_id`,`player_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `jg_soul_sword`
--

DROP TABLE IF EXISTS `jg_soul_sword`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jg_soul_sword` (
  `soul_sword_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '灵剑ID',
  `base_soul_sword_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '基础灵剑ID',
  `player_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '玩家ID',
  `rare` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '品质',
  `status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '状态：0、闲置；1、出战',
  `state` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '训练状态：0、不训练；1、训练',
  `position` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '位置',
  `matrix_pos` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '灵剑在阵型上的位置',
  `name` char(50) NOT NULL COMMENT '灵剑名',
  `lv` int(3) unsigned NOT NULL DEFAULT '0' COMMENT '等级',
  `exp` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '经验',
  `strength` float unsigned NOT NULL DEFAULT '0' COMMENT '力量',
  `intelligence` float unsigned NOT NULL DEFAULT '0' COMMENT '身法',
  `agile` float unsigned NOT NULL DEFAULT '0' COMMENT '学识',
  `refine_strength` int(10) NOT NULL DEFAULT '0' COMMENT '磨炼提高的力量',
  `refine_intelligence` int(10) NOT NULL DEFAULT '0' COMMENT '磨炼提高的学识',
  `refine_agile` int(10) NOT NULL DEFAULT '0' COMMENT '磨炼提高的身法',
  `refine_lv` int(11) NOT NULL DEFAULT '0' COMMENT '磨练等级',
  `refine_value` int(11) NOT NULL DEFAULT '0' COMMENT '磨练值',
  `hp` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '生命',
  `max_hp` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最大生命',
  `mp` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '法力',
  `max_mp` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最大法力',
  `phy_atk` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '武术攻击',
  `phy_def` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '武术防御',
  `phy_crit` int(3) unsigned NOT NULL DEFAULT '0' COMMENT '武术暴击',
  `phy_crit_point` int(7) unsigned NOT NULL DEFAULT '0' COMMENT '武暴能力',
  `mag_atk` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '法术攻击',
  `mag_def` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '法术防御',
  `mag_crit` int(3) unsigned NOT NULL DEFAULT '0' COMMENT '法术暴击',
  `mag_crit_point` int(7) unsigned NOT NULL DEFAULT '0' COMMENT '法暴能力',
  `hit_point` int(7) unsigned NOT NULL DEFAULT '0' COMMENT '命中值',
  `hit` int(3) unsigned NOT NULL DEFAULT '0' COMMENT '命中率',
  `dodge` int(3) unsigned NOT NULL DEFAULT '0' COMMENT '闪避率',
  `dodge_point` int(7) unsigned NOT NULL DEFAULT '0' COMMENT '闪避值',
  `rebound` int(5) NOT NULL DEFAULT '0' COMMENT '反弹',
  `absorbed_hp` int(5) NOT NULL DEFAULT '0' COMMENT '吸血',
  `absorbed_mp` int(5) NOT NULL DEFAULT '0' COMMENT '吸蓝',
  `speed` int(10) NOT NULL DEFAULT '0' COMMENT '速度',
  `strength_growing` float unsigned NOT NULL DEFAULT '0' COMMENT '力量成长',
  `intelligence_growing` float unsigned NOT NULL DEFAULT '0' COMMENT '学识成长',
  `agile_growing` float unsigned NOT NULL DEFAULT '0' COMMENT '身法成长',
  `refine_num` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '已磨炼次数',
  `training_start_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '附灵（训练）开始时间',
  `training_end_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '附灵（训练）结束时间',
  `training_multiple` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '附灵（训练）倍数',
  `fulin_matrix` int(11) NOT NULL DEFAULT '0' COMMENT '附灵阵数据',
  PRIMARY KEY (`soul_sword_id`),
  KEY `player_id` (`player_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COMMENT='玩家灵剑列表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `jg_sql_log`
--

DROP TABLE IF EXISTS `jg_sql_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jg_sql_log` (
  `log_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `sql_line` text CHARACTER SET utf8,
  `error_info` tinytext CHARACTER SET utf8,
  `log_time` char(50) CHARACTER SET utf8 DEFAULT '2011-1-1',
  UNIQUE KEY `log_id` (`log_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `jg_sword_pond`
--

DROP TABLE IF EXISTS `jg_sword_pond`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jg_sword_pond` (
  `soul_sword_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '灵剑ID',
  `base_soul_sword_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '基础灵剑ID',
  `player_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '玩家ID',
  `rare` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '品质',
  `position` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '位置',
  `name` char(50) DEFAULT NULL COMMENT '灵剑名',
  `lv` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '等级',
  `strength` float unsigned NOT NULL DEFAULT '0' COMMENT '力量',
  `intelligence` float unsigned NOT NULL DEFAULT '0' COMMENT '身法',
  `agile` float unsigned NOT NULL DEFAULT '0' COMMENT '学识',
  `max_hp` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最大生命',
  `max_mp` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '最大法力',
  `phy_atk` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '武术攻击',
  `phy_def` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '武术防御',
  `phy_crit` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '武术暴击',
  `phy_crit_point` mediumint(7) unsigned NOT NULL DEFAULT '0' COMMENT '武暴能力',
  `mag_atk` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '法术攻击',
  `mag_def` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '法术防御',
  `mag_crit` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '法术暴击',
  `mag_crit_point` mediumint(7) unsigned NOT NULL DEFAULT '0' COMMENT '法暴能力',
  `hit_point` mediumint(7) unsigned NOT NULL DEFAULT '0' COMMENT '命中值',
  `hit` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '命中率',
  `dodge` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '闪避率',
  `dodge_point` mediumint(7) unsigned NOT NULL DEFAULT '0' COMMENT '闪避值',
  `rebound` int(5) NOT NULL DEFAULT '0' COMMENT '反弹',
  `absorbed_hp` int(5) NOT NULL DEFAULT '0' COMMENT '吸血',
  `absorbed_mp` int(5) NOT NULL DEFAULT '0' COMMENT '吸蓝',
  `speed` int(10) NOT NULL DEFAULT '0' COMMENT '速度',
  `strength_growing` float unsigned NOT NULL DEFAULT '0' COMMENT '力量成长',
  `intelligence_growing` float unsigned NOT NULL DEFAULT '0' COMMENT '学识成长',
  `agile_growing` float unsigned NOT NULL DEFAULT '0' COMMENT '身法成长',
  PRIMARY KEY (`soul_sword_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='玩家灵剑列表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `jg_villa`
--

DROP TABLE IF EXISTS `jg_villa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jg_villa` (
  `player_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '玩家ID',
  `villa_lv` int(3) unsigned NOT NULL DEFAULT '0' COMMENT '山庄等级',
  `sword_refresh_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '铸剑池刷新时间',
  `space_num` tinyint(3) unsigned NOT NULL DEFAULT '2' COMMENT '空位数量',
  PRIMARY KEY (`player_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `jg_wldh`
--

DROP TABLE IF EXISTS `jg_wldh`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jg_wldh` (
  `campaign_id` int(11) NOT NULL COMMENT '活动id',
  `seat_type` int(11) NOT NULL COMMENT '席位类型',
  `seat_index` int(11) NOT NULL COMMENT '席位序列',
  `player_id` int(11) DEFAULT NULL COMMENT '当前占据该席位的玩家',
  PRIMARY KEY (`campaign_id`,`seat_type`,`seat_index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `jg_workshop`
--

DROP TABLE IF EXISTS `jg_workshop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jg_workshop` (
  `player_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '玩家ID',
  `workshop_lv` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '作坊等级',
  `workshop_refresh_time` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '作坊刷新时间',
  PRIMARY KEY (`player_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `jg_workshop_item`
--

DROP TABLE IF EXISTS `jg_workshop_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jg_workshop_item` (
  `item_id` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '具体物品ID',
  `workshop_lv` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '作坊等级',
  `base_item_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '基础物品ID',
  `player_id` int(10) unsigned NOT NULL COMMENT '玩家ID',
  `bar_type` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '栏位类型：\r\n1：物品栏；2：普通装备栏；3：铸鼎装备栏；4：荣誉装备栏',
  `bar_position` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '位置',
  `item_num` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '物品的数量',
  `equip_all_name` char(50) NOT NULL DEFAULT '''''' COMMENT '装备全名',
  `equip_rare` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '物品品质：0：白；1：绿；2：蓝；3：紫；4：橙；5：暗金',
  `equip_binding_status` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '绑定状态：0：无绑定；1：已绑定  ',
  `equip_maker` varchar(50) NOT NULL DEFAULT '''''' COMMENT '装备制造者',
  `equip_durability` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '物品当前耐久度',
  `equip_strengthen_lv` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '装备强化等级',
  `equip_enchanted_lv` tinyint(3) unsigned NOT NULL DEFAULT '0' COMMENT '装备注魔等级',
  `is_buyable` tinyint(3) NOT NULL DEFAULT '0' COMMENT '是否已购买0：未购买 1：购买',
  `item_price` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '价值-刀币',
  PRIMARY KEY (`item_id`),
  KEY `player_id` (`player_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27856 DEFAULT CHARSET=utf8 COMMENT='物品表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `jg_workshop_item_effect`
--

DROP TABLE IF EXISTS `jg_workshop_item_effect`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jg_workshop_item_effect` (
  `item_id` int(10) unsigned NOT NULL DEFAULT '0' COMMENT '物品ID',
  `effect_type` smallint(5) unsigned NOT NULL DEFAULT '0' COMMENT '效果类型',
  `effect_value` float unsigned NOT NULL DEFAULT '0' COMMENT '效果值',
  PRIMARY KEY (`item_id`,`effect_type`),
  KEY `item_id` (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Final view structure for view `jg_item_rank`
--

/*!50001 DROP TABLE IF EXISTS `jg_item_rank`*/;
/*!50001 DROP VIEW IF EXISTS `jg_item_rank`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`mysql`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `jg_item_rank` AS (select `t1`.`base_item_id` AS `base_item_id`,`t1`.`equip_rare` AS `equip_rare`,`t1`.`equip_strengthen_lv` AS `equip_strengthen_lv`,`t1`.`equip_enchanted_lv` AS `equip_enchanted_lv`,`t3`.`item_lv` AS `item_lv`,`t2`.`name` AS `player_name`,`t4`.`lv` AS `player_lv` from (((`jiange`.`jg_item` `t1` join `jiange`.`jg_player` `t2` on((`t1`.`player_id` = `t2`.`id`))) join `jiange_base`.`jg_base_item` `t3` on((`t1`.`base_item_id` = `t3`.`item_id`))) join `jiange`.`jg_player_attr` `t4` on((`t2`.`id` = `t4`.`player_id`))) order by `t3`.`item_lv` desc,`t1`.`equip_rare` desc,`t1`.`equip_strengthen_lv` desc,`t1`.`equip_enchanted_lv` desc) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `jg_player_view`
--

/*!50001 DROP TABLE IF EXISTS `jg_player_view`*/;
/*!50001 DROP VIEW IF EXISTS `jg_player_view`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`mysql`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `jg_player_view` AS (select `jg_player`.`id` AS `id`,`jg_player`.`account_id` AS `account_id`,`jg_player`.`name` AS `name`,`jg_player`.`vip_lv` AS `vip_lv`,`jg_player`.`vip_time` AS `vip_time`,`jg_player`.`title_id` AS `title_id`,`jg_player`.`sex` AS `sex`,`jg_player`.`login_ip` AS `login_ip`,`jg_player`.`profession` AS `profession`,`jg_player`.`guild_id` AS `guild_id`,`jg_player`.`nation` AS `nation`,`jg_player`.`img` AS `img`,`jg_player`.`act_time` AS `act_time`,`jg_player`.`create_time` AS `create_time`,`jg_player`.`online_time` AS `online_time`,`jg_player`.`offline_time` AS `offline_time`,`jg_player`.`store_num` AS `store_num`,`jg_player`.`package_num` AS `package_num`,`jg_player`.`identity` AS `identity`,`jg_player`.`gm_lv` AS `gm_lv`,`jg_player_attr`.`player_id` AS `player_id`,`jg_player_attr`.`lv` AS `lv`,`jg_player_attr`.`exp` AS `exp`,`jg_player_attr`.`strength` AS `strength`,`jg_player_attr`.`intelligence` AS `intelligence`,`jg_player_attr`.`agile` AS `agile`,`jg_player_attr`.`hp` AS `hp`,`jg_player_attr`.`max_hp` AS `max_hp`,`jg_player_attr`.`mp` AS `mp`,`jg_player_attr`.`max_mp` AS `max_mp`,`jg_player_attr`.`phy_atk` AS `phy_atk`,`jg_player_attr`.`phy_def` AS `phy_def`,`jg_player_attr`.`mag_atk` AS `mag_atk`,`jg_player_attr`.`mag_def` AS `mag_def`,`jg_player_attr`.`phy_crit_point` AS `phy_crit_point`,`jg_player_attr`.`phy_crit` AS `phy_crit`,`jg_player_attr`.`mag_crit_point` AS `mag_crit_point`,`jg_player_attr`.`mag_crit` AS `mag_crit`,`jg_player_attr`.`hit_point` AS `hit_point`,`jg_player_attr`.`hit` AS `hit`,`jg_player_attr`.`dodge_point` AS `dodge_point`,`jg_player_attr`.`dodge` AS `dodge`,`jg_player_attr`.`rebound` AS `rebound`,`jg_player_attr`.`absorbed_hp` AS `absorbed_hp`,`jg_player_attr`.`absorbed_mp` AS `absorbed_mp`,`jg_player_attr`.`speed` AS `speed`,`jg_player_attr`.`remain_point` AS `remain_point`,`jg_player_attr`.`status` AS `status`,`jg_player_attr`.`money` AS `money`,`jg_player_attr`.`coupon` AS `coupon`,`jg_player_attr`.`vigour` AS `vigour`,`jg_player_attr`.`zhen_qi` AS `zhen_qi`,`jg_player_attr`.`map_id` AS `map_id`,`jg_player_attr`.`last_map_id` AS `last_map_id`,`jg_player_attr`.`honor_point` AS `honor_point`,`jg_player_attr`.`sin_point` AS `sin_point`,`jg_player_attr`.`strengthen_num` AS `strengthen_num`,`jg_player_attr`.`strengthen_time` AS `strengthen_time`,`jg_player_attr`.`strengthen_last_time` AS `strengthen_last_time`,`jg_player_attr`.`strengthen_status` AS `strengthen_status`,`jg_player_attr`.`strengthen_rate` AS `strengthen_rate`,`jg_player_attr`.`skill_series` AS `skill_series`,`jg_player_attr`.`map_point_x` AS `map_point_x`,`jg_player_attr`.`map_point_y` AS `map_point_y`,`jg_player_attr`.`friend_validation` AS `friend_validation`,`jg_player_attr`.`society_contribute` AS `society_contribute`,`jg_player_attr`.`today_token_count` AS `today_token_count`,`jg_player_attr`.`yestoday_token_count` AS `yestoday_token_count`,`jg_player_attr`.`challenger_refreshed` AS `challenger_refreshed`,`jg_player_attr`.`challenger_data` AS `challenger_data`,`jg_player_attr`.`aready_fight` AS `aready_fight`,`jg_player_attr`.`hero_token_prize_fetched` AS `hero_token_prize_fetched`,`jg_player_attr`.`latest_token_count` AS `latest_token_count`,`jg_player_attr`.`total_token_count` AS `total_token_count`,`jg_player_attr`.`hero_token_beated` AS `hero_token_beated`,`jg_player_attr`.`today_logined` AS `today_logined`,`jg_player_nation_info`.`nation_id` AS `nation_id` from ((`jg_player` left join `jg_player_attr` on((`jg_player`.`id` = `jg_player_attr`.`player_id`))) left join `jg_player_nation_info` on((`jg_player`.`id` = `jg_player_nation_info`.`player_id`)))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-06-08 10:32:12
