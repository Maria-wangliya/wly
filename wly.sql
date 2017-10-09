/*
Navicat MySQL Data Transfer

Source Server         : localhost_wly
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : wly

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2017-10-09 20:01:26
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for fruits
-- ----------------------------
DROP TABLE IF EXISTS `fruits`;
CREATE TABLE `fruits` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '商品详情',
  `imgurl` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '图片路径',
  `price` decimal(10,2) DEFAULT NULL COMMENT '商品价格',
  `datatime` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of fruits
-- ----------------------------
INSERT INTO `fruits` VALUES ('1', '（海）耕夫子炎陵黄桃五斤装', '../img/fruits01.jpg', '98.00', '2017-09-26 21:28:34');
INSERT INTO `fruits` VALUES ('2', '（海）水果欧巴黄桃12个装约5.5斤', '../img/fruits02.jpg', '99.00', '2017-09-26 21:29:13');
INSERT INTO `fruits` VALUES ('3', '（海）水果欧巴庙上冬枣3斤装', '../img/fruits03.jpg', '99.00', '2017-09-26 21:29:29');
INSERT INTO `fruits` VALUES ('4', '（海）水果欧巴广西金桔10斤', '../img/fruits05.jpg', '89.00', '2017-09-26 21:30:29');
INSERT INTO `fruits` VALUES ('5', '（海）水果欧巴墨西哥牛油果9个', '../img/fruits06.jpg', '168.00', '2017-09-26 21:30:46');
INSERT INTO `fruits` VALUES ('6', '（海）水果欧巴阿克苏冰糖心苹果12个礼盒装（约6斤）', '../img/fruits07.jpg', '109.00', '2017-09-26 21:31:20');
INSERT INTO `fruits` VALUES ('7', '（海）水果黄瓜5斤装', '../img/fruits10.jpg', '55.00', '2017-09-26 21:32:16');
INSERT INTO `fruits` VALUES ('8', '(海)水果欧巴凤梨2个(约6斤)', '../img/fruits11.jpg', '88.00', '2017-09-26 21:32:40');
INSERT INTO `fruits` VALUES ('9', '（海）越南红心火龙果9个', '../img/fruits12.jpg', '185.00', '2017-09-26 21:33:12');
INSERT INTO `fruits` VALUES ('10', '（海）水果欧巴不知火丑橘5斤', '../img/fruits15.jpg', '65.00', '2017-09-26 21:33:30');
INSERT INTO `fruits` VALUES ('11', '（海）水果欧巴西周蜜25号（14斤）', '../img/fruits16.jpg', '95.00', '2017-09-26 21:33:45');
INSERT INTO `fruits` VALUES ('12', '（海）水果欧巴新奇士橙12个（约7斤）', '../img/fruits17.jpg', '118.00', '2017-09-26 21:34:07');
INSERT INTO `fruits` VALUES ('13', '（海）水果欧巴百香果（大果）10斤', '../img/fruits18.jpg', '99.00', '2017-09-26 21:35:19');
INSERT INTO `fruits` VALUES ('14', '（海）水果欧巴牛奶木瓜8个（约10斤）', '../img/fruits19.jpg', '68.00', '2017-09-26 21:35:36');
INSERT INTO `fruits` VALUES ('15', '(海)水果欧巴圣女果8斤', '../img/fruits20.jpg', '58.00', '2017-09-26 21:35:53');
INSERT INTO `fruits` VALUES ('16', '(海)水果欧巴圣女果8斤', '../img/fruits04.jpg', '58.00', '2017-09-26 21:36:25');
INSERT INTO `fruits` VALUES ('17', '(海)水果欧巴圣女果8斤', '../img/fruits09.jpg', '58.00', '2017-09-26 21:36:42');
INSERT INTO `fruits` VALUES ('18', '(海)水果欧巴圣女果8斤', '../img/fruits14.jpg', '58.00', '2017-09-26 21:37:08');
INSERT INTO `fruits` VALUES ('19', '(海)水果欧巴圣女果8斤', '../img/fruits08.jpg', '58.00', '2017-09-26 21:37:27');
INSERT INTO `fruits` VALUES ('20', '(海)水果欧巴圣女果8斤', '../img/fruits13.jpg', '58.00', '2017-09-26 21:37:34');

-- ----------------------------
-- Table structure for index_goods
-- ----------------------------
DROP TABLE IF EXISTS `index_goods`;
CREATE TABLE `index_goods` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `h3` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `top1` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `top2` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `title` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `bigUrl1` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `num` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `score` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `small1` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `small2` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `small3` varchar(50) DEFAULT NULL,
  `small4` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `small5` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `match_url1` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `match_url2` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `match_url3` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `match_url4` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `match_url5` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `match_title1` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `match_title2` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `match_title3` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `match_title4` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `match_title5` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `match_price1` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `match_price2` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `match_price3` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `match_price4` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `match_price5` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `bigImg1` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `bigImg2` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `bigImg3` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `bigImg4` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `bigImg5` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `bigImg6` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `bigImg7` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `bigImg8` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `bigImg9` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `bigImg10` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `bigImg11` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `spec1` varchar(1000) CHARACTER SET utf8 DEFAULT NULL,
  `spec2` varchar(1000) CHARACTER SET utf8 DEFAULT NULL,
  `spec3` varchar(1000) CHARACTER SET utf8 DEFAULT NULL,
  `spec4` varchar(1000) CHARACTER SET utf8 DEFAULT NULL,
  `spec5` varchar(1000) CHARACTER SET utf8 DEFAULT NULL,
  `spec6` varchar(1000) CHARACTER SET utf8 DEFAULT NULL,
  `spec7` varchar(1000) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of index_goods
-- ----------------------------
INSERT INTO `index_goods` VALUES ('1', '家电、数码', '家电', '洗衣机', '西门子8公斤洗烘一体变频滚筒', '../img/01_big_details.png', '(供货号:20121621)', '4699.00', '321*2', '../img/01_small1.png', '../img/01_small2.png', '../img/01_small3.png', '', '', '../img/01_match1.jpg', '../img/01_match2.jpg', '../img/01_match3.jpg', '', '', '威力8KG全智能大容量热烘干洗衣机', '西门子8公斤变频滚筒强柔动力', '达米尼8.5KG大容量变频滚筒洗衣机', '', '', null, null, null, null, null, '../img/01_big1.png', '../img/01_big2.jpg', '../img/01_big3.jpg', '../img/01_big4.jpg', '../img/01_big5.jpg', '../img/01_big6.jpg', '../img/01_big7.jpg', '../img/01_big8.jpg', '../img/01_big9.jpg', '../img/01_big10.jpg', '../img/01_big11.jpg', '', '', '', '', '', '', '');
INSERT INTO `index_goods` VALUES ('2', '家电、数码', '厨房电器', '电水壶', '祥云瑞气全自动黑檀木茶盘套组', '../img/hot1.jpg', '(供货号:20121121)', '998.00', '511*2', '../img/hot1.jpg', '', '', '', '', '../img/02_match1.jpg', '../img/02_match2.jpg', '../img/02_match3.jpg', '', '', '祥云赠品：茶炉以及茶具系列', '西门子8公斤变频滚筒强柔动力', '达米尼8.5KG大容量变频滚筒洗衣机（9点大牌档）', '', '', null, null, null, null, null, '../img/02_big1.jpg', '../img/02_big2.jpg', '../img/02_big3.jpg', '../img/02_big4.jpg', '../img/02_big5.jpg', '../img/02_big6.jpg', '../img/02_big7.jpg', '../img/02_big8.jpg', '../img/02_big3.jpg', '../img/02_big4.jpg', '../img/01_big11.jpg', '', '', '', '', '', '', '');
INSERT INTO `index_goods` VALUES ('3', '家居、日用', '家纺 ', '床品件套品', '普兰多泰国进口乳胶床垫1.5米', '../img/hot2.jpg', '(供货号:20120373)', '1599.00', '958*2', '../img/hot2.jpg', '../img/02_small2.jpg', '../img/02_small3.jpg', '', '', '../img/05_match1.jpg', '../img/05_match2.jpg', '../img/05_match3.jpg', '../img/05_match4.jpg', '../img/05_match5.jpg', '赫拉精品印花羊毛被1+1+1超值组', '康乐美全新纯羊毛被1+1+4组', '康乐美全新纯羊毛被1+1+4组', '赫拉精品印花羊毛被1+1超值组', '懒洋洋健康乳胶枕1+1特惠组', null, null, null, null, null, '../img/03_big1.jpg', '../img/03_big2.jpg', '../img/03_big3.jpg', '../img/03_big4.jpg', '../img/03_big5.jpg', '../img/03_big6.jpg', '../img/03_big7.jpg', '../img/03_big8.jpg', '../img/03_big9.jpg', '../img/03_big10.jpg', '../img/01_big11.jpg', '', '', '', '', '', '', '');

-- ----------------------------
-- Table structure for index_hotsale
-- ----------------------------
DROP TABLE IF EXISTS `index_hotsale`;
CREATE TABLE `index_hotsale` (
  `id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(60) CHARACTER SET utf8 COLLATE utf8_icelandic_ci DEFAULT NULL COMMENT '商品详情',
  `imgurl` varchar(100) DEFAULT NULL COMMENT '图片路径',
  `price` varchar(10) CHARACTER SET utf8 DEFAULT NULL COMMENT '商品价格',
  `hot` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `left_time` varchar(20) CHARACTER SET utf8 DEFAULT NULL COMMENT '商品剩余时间',
  `datatime` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '时间戳',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=48 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of index_hotsale
-- ----------------------------
INSERT INTO `index_hotsale` VALUES ('1', '祥云瑞气全自动黑檀木茶盘套组', 'img/hot1.jpg', '998.00', null, '[00:30~01:19]', '2017-10-01 13:01:02');
INSERT INTO `index_hotsale` VALUES ('2', '普兰多泰国进口乳胶床垫1.5米', 'img/hot2.jpg', '1599.00', null, '[01:20~02:03]', '2017-10-03 12:33:07');
INSERT INTO `index_hotsale` VALUES ('3', '法国西蒙酒庄摩洛哥干红原瓶原装套组', 'img/hot3.jpg', '398.00', null, '[02:05~02:48]', '2017-10-01 13:42:12');
INSERT INTO `index_hotsale` VALUES ('4', '五粮液集团锦绣前程感恩组', 'img/hot35.jpg', '398.00', null, '[02:05~02:48]', '2017-10-01 13:42:40');
INSERT INTO `index_hotsale` VALUES ('5', '艾玛琳燕窝花式月饼1+1礼盒组', 'img/hot6.jpg', '556.00', '已热销：8件', '', '2017-09-26 20:13:48');
INSERT INTO `index_hotsale` VALUES ('6', '艾芭莎优雅整兔皮草大衣', 'img/hot7.jpg', '1980.00', '已热销：62件', '', '2017-09-26 20:13:57');
INSERT INTO `index_hotsale` VALUES ('7', '20L禧又多土榨纯香菜籽油超值组', 'img/hot8.jpg', '1680.00', '已热销：7473件', '', '2017-09-26 20:15:51');
INSERT INTO `index_hotsale` VALUES ('8', '五粮液股份纳福迎祥年末回馈组', 'img/hot9.jpg', '399.00', '已热销：6715件', '', '2017-10-01 15:29:06');
INSERT INTO `index_hotsale` VALUES ('9', 'KEEFE棉麻休闲宽版裙裤超值套组', 'img/hot12.jpg', '199', '', '', '2017-09-26 20:17:37');
INSERT INTO `index_hotsale` VALUES ('10', '鳄鱼恤时尚女鞋2双组', 'img/hot13.jpg', '199', '', '', '2017-09-26 20:18:39');
INSERT INTO `index_hotsale` VALUES ('11', '迪菲怡蚕丝内裤9条抢购组', 'img/hot14.jpg', '99', '', '', '2017-09-26 20:18:58');
INSERT INTO `index_hotsale` VALUES ('12', 'JOE-JOE浪漫风华女钻表', 'img/hot15.jpg', '399', '', '', '2017-09-26 20:19:18');
INSERT INTO `index_hotsale` VALUES ('13', 'Belvia蕾丝款蚕丝内衣4+4套组', 'img/hot10.jpg', '299', '', '', '2017-09-26 20:19:34');
INSERT INTO `index_hotsale` VALUES ('14', '迪格尔斯新款条纹男士翻领POLO衫3件组', 'img/hot11.jpg', '168', '', '', '2017-09-30 15:56:24');
INSERT INTO `index_hotsale` VALUES ('15', 'KEEFE棉麻休闲宽版裙裤超值套组', 'img/hot12.jpg', '199', '', '', '2017-09-26 20:20:16');
INSERT INTO `index_hotsale` VALUES ('16', '鳄鱼恤时尚女鞋2双组', 'img/hot13.jpg', '199', '', '', '2017-09-26 20:20:30');
INSERT INTO `index_hotsale` VALUES ('17', '迪菲怡蚕丝内裤9条抢购组', 'img/hot14.jpg', '99', '', '', '2017-09-26 20:21:03');
INSERT INTO `index_hotsale` VALUES ('18', 'JOE-JOE浪漫风华女钻表', 'img/hot15.jpg', '399', '', '', '2017-09-26 20:21:21');
INSERT INTO `index_hotsale` VALUES ('19', 'Mstone原装进口马油皂超值秒杀组', 'img/hot16.jpg', '99', '', '', '2017-09-26 20:21:37');
INSERT INTO `index_hotsale` VALUES ('20', '韩束全新红石榴升级全效护养套', 'img/hot17.jpg', '299', '', '', '2017-09-30 16:20:51');
INSERT INTO `index_hotsale` VALUES ('21', 'skinlady多效精油皂臻享组', 'img/hot18.jpg', '199', '', '', '2017-09-26 20:22:12');
INSERT INTO `index_hotsale` VALUES ('22', '圣琪诺雪肌无暇气垫DD霜特惠组', 'img/hot19.jpg', '199', '', '', '2017-09-26 20:22:30');
INSERT INTO `index_hotsale` VALUES ('23', '可姿燕窝紧致面膜超值组', 'img/hot20.jpg', '199', '', '', '2017-09-30 16:29:20');
INSERT INTO `index_hotsale` VALUES ('24', '耶顿香爱嫩肤足膜10+10特惠组', 'img/hot21.jpg', '399', '', '', '2017-09-26 20:23:23');
INSERT INTO `index_hotsale` VALUES ('25', '源伦冷榨亚麻籽油家庭组', 'img/hot22.jpg', '399', '', '', '2017-09-26 20:23:36');
INSERT INTO `index_hotsale` VALUES ('26', '味品堂拌饭黄花鱼12+12特惠组', 'img/hot23.jpg', '199', '', '', '2017-09-26 20:23:50');
INSERT INTO `index_hotsale` VALUES ('27', '法莱雅橡木桶干红葡萄酒超值组', 'img/hot24.jpg', '298', '', '', '2017-09-26 20:24:07');
INSERT INTO `index_hotsale` VALUES ('28', '富力友猴菇养胃饼干+蓝枸曲奇超值组', 'img/hot25.jpg', '238', '', '', '2017-09-26 20:24:29');
INSERT INTO `index_hotsale` VALUES ('29', '（海）耕夫子炎陵黄桃五斤装', 'img/hot26.jpg', '98', '', '', '2017-09-26 20:25:10');
INSERT INTO `index_hotsale` VALUES ('30', '时珍验方蕲艾足贴', 'img/hot27.jpg', '298', '', '', '2017-09-26 20:25:47');
INSERT INTO `index_hotsale` VALUES ('31', '洁宜佳活氧洁净管家升级装', 'img/hot28.jpg', '199', '', '', '2017-09-26 20:26:04');
INSERT INTO `index_hotsale` VALUES ('32', '钇铭餐具保洁柜特惠组', 'img/hot29.jpg', '298', '', '', '2017-09-26 20:26:40');
INSERT INTO `index_hotsale` VALUES ('33', '华为/Huawei畅享6S全网通4G手机', 'img/hot30.jpg', '1188', '', '', '2017-09-26 20:26:56');
INSERT INTO `index_hotsale` VALUES ('34', '馨屋防水去污手套10+10+1超值组', 'img/hot31.jpg', '199', '', '', '2017-09-26 20:27:40');
INSERT INTO `index_hotsale` VALUES ('35', '奥马526升风冷无霜电脑温控对开门冰箱', 'img/hot32.jpg', '2999', '', '', '2017-09-26 20:28:04');
INSERT INTO `index_hotsale` VALUES ('36', '童星多功能儿童学习桌', 'img/hot33.jpg', '999', '', '', '2017-09-26 20:28:25');
INSERT INTO `index_hotsale` VALUES ('37', '', 'img/hot_left1.jpg', '', '', '', '2017-09-26 20:28:52');
INSERT INTO `index_hotsale` VALUES ('38', '', 'img/hot_left2.jpg', '', '', '', '2017-09-26 20:29:01');
INSERT INTO `index_hotsale` VALUES ('39', '', 'img/hot_left3.jpg', '', '', '', '2017-09-26 20:29:10');
INSERT INTO `index_hotsale` VALUES ('40', '', 'img/hot_left4.jpg', '', '', '', '2017-09-26 20:29:12');
INSERT INTO `index_hotsale` VALUES ('41', '', 'img/hot_left5.jpg', '', '', '', '2017-09-26 20:29:15');
INSERT INTO `index_hotsale` VALUES ('42', '', 'img/hot_left6.jpg', '', '', '', '2017-09-26 20:29:18');
INSERT INTO `index_hotsale` VALUES ('43', '', 'img/hot_left7.jpg', '', '', '', '2017-09-26 20:29:20');
INSERT INTO `index_hotsale` VALUES ('44', '', 'img/hot_left8.jpg', '', '', '', '2017-09-26 20:29:22');
INSERT INTO `index_hotsale` VALUES ('45', '', 'img/hot_left9.jpg', '', '', '', '2017-09-26 20:29:24');
INSERT INTO `index_hotsale` VALUES ('46', '', 'img/hot_left10.jpg', '', '', '', '2017-09-26 20:29:26');
INSERT INTO `index_hotsale` VALUES ('47', '', 'img/long_ad.jpg', '', '', '', '2017-09-26 20:29:39');

-- ----------------------------
-- Table structure for login
-- ----------------------------
DROP TABLE IF EXISTS `login`;
CREATE TABLE `login` (
  `id` int(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of login
-- ----------------------------

-- ----------------------------
-- Table structure for register
-- ----------------------------
DROP TABLE IF EXISTS `register`;
CREATE TABLE `register` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) CHARACTER SET utf8 NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 NOT NULL,
  `certain_password` varchar(255) CHARACTER SET utf8 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=108 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of register
-- ----------------------------
INSERT INTO `register` VALUES ('104', 'test', 'test', 'test');
INSERT INTO `register` VALUES ('102', 'Maria', 'maria', 'maria');
INSERT INTO `register` VALUES ('101', 'wly', 'wly', 'wly');

-- ----------------------------
-- Table structure for tv_show
-- ----------------------------
DROP TABLE IF EXISTS `tv_show`;
CREATE TABLE `tv_show` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '商品详情',
  `imgurl` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `time` varchar(50) DEFAULT NULL COMMENT '直播时间',
  `datatime` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=143 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tv_show
-- ----------------------------
INSERT INTO `tv_show` VALUES ('1', '法国西蒙酒庄摩洛哥干红原瓶原装', '../img/play1.jpg', '398.00', '00:20-00:40', '2017-10-07 18:57:47');
INSERT INTO `tv_show` VALUES ('2', '祥云瑞气全自动黑檀木茶盘套组', '../img/play2.jpg', '998.00', '00:40-01:19', '2017-10-07 18:58:02');
INSERT INTO `tv_show` VALUES ('3', 'JOE-JOE浪漫风华女钻表', '../img/play3.jpg', '399.00', '00:40-01:19', '2017-10-07 18:58:09');
INSERT INTO `tv_show` VALUES ('4', '茅台集团庆典贵宾用酒V20', '../img/play4.jpg', '398.00', '00:40-01:19', '2017-10-07 18:58:21');
INSERT INTO `tv_show` VALUES ('5', '普兰多泰国进口乳胶床垫1.8米', '../img/play5.jpg', '1799.00', '01:20-02:03', '2017-10-07 18:58:30');
INSERT INTO `tv_show` VALUES ('6', '普兰多泰国进口乳胶床垫1.5米', '../img/play6.jpg', '1599.00', '01:20-02:03', '2017-10-07 18:58:40');
INSERT INTO `tv_show` VALUES ('7', '梦回盛唐-赫拉御品蚕丝贡被', '../img/play7.jpg', '699.00', '02:05-02:48', '2017-10-07 18:58:41');
INSERT INTO `tv_show` VALUES ('8', '追梦者速开自动帐篷套装', '../img/play8.jpg', '398.00', '02:05-02:48', '2017-10-07 18:58:51');
INSERT INTO `tv_show` VALUES ('9', '玛佐户外折叠收纳桌椅', '../img/play9.jpg', '498.00', '02:50-03:33', '2017-10-07 18:58:53');
INSERT INTO `tv_show` VALUES ('10', '康乐美纯棉四件套', '../img/play10.jpg', '179.00', '03:35-04:18', '2017-10-07 18:59:10');
INSERT INTO `tv_show` VALUES ('11', '（秒杀）千花伴椴树结晶蜜秒杀组', '../img/play11.jpg', '99.00', '04:20-04:49', '2017-10-07 18:59:18');
INSERT INTO `tv_show` VALUES ('12', 'VK7Plus全网通智能大屏4G手机', '../img/play12.jpg', '1280.00', '04:50-05:19', '2017-10-07 18:59:21');
INSERT INTO `tv_show` VALUES ('13', '时珍验方蕲艾足贴', '../img/play13.jpg', '298.00', '05:20-05:49', '2017-10-07 18:59:36');
INSERT INTO `tv_show` VALUES ('14', '宫诺秋冬滋补阿胶糕特惠组', '../img/play14.jpg', '298.00', '05:50-06:29', '2017-10-07 18:59:44');
INSERT INTO `tv_show` VALUES ('15', '攀高颈椎按摩仪', '../img/play15.jpg', '399.00', '06:30-07:09', '2017-10-07 18:59:55');
INSERT INTO `tv_show` VALUES ('16', '辣妹子果肉罐头7+6超值组合', '../img/play16.jpg', '99.00', '06:30-07:09', '2017-10-07 19:00:02');
INSERT INTO `tv_show` VALUES ('17', '艾优品时尚料理机超值组', '../img/play17.jpg', '199.00', '07:10-07:49', '2017-10-07 19:00:04');
INSERT INTO `tv_show` VALUES ('18', '五粮液福喜迎门喜庆组', '../img/play18.jpg', '698.00', '07:50-08:29', '2017-10-07 19:00:14');
INSERT INTO `tv_show` VALUES ('19', '于阁老土蜂蜜5+5秒杀组', '../img/play19.jpg', '99.00', '08:30-09:09', '2017-10-07 19:00:27');
INSERT INTO `tv_show` VALUES ('20', '方太风魔方双核触屏烟灶特供组', '../img/play20.jpg', '3780.00', '09:10-09:49', '2017-10-07 19:00:28');
INSERT INTO `tv_show` VALUES ('21', '赛伯特娇阳焗油染发膏特惠组', '../img/play21.jpg', '298.00', '09:50-10:00', '2017-10-07 19:00:43');
INSERT INTO `tv_show` VALUES ('22', '禧又多土榨菜籽油10L秒杀组', '../img/play22.jpg', '99.00', '09:58-10:36', '2017-10-07 19:00:45');
INSERT INTO `tv_show` VALUES ('23', '新丰龙红铁木实木菜板1+1超值', '../img/play23.jpg', '298.00', '10:38-11:16', '2017-10-07 19:00:59');
INSERT INTO `tv_show` VALUES ('24', '娄底古糖金秋梨8.5斤尝鲜组', '../img/play24.jpg', '59.00', '11:20-11:30', '2017-10-07 19:01:06');
INSERT INTO `tv_show` VALUES ('25', '京升缘亚麻籽油礼盒装', '../img/play25.jpg', '99.00', '11:30-12:06', '2017-10-07 19:01:20');
INSERT INTO `tv_show` VALUES ('26', '馨之屋水精灵20+20清洁抢购组', '../img/play26.jpg', '199.00', '12:09-12:39', '2017-10-07 19:01:28');
INSERT INTO `tv_show` VALUES ('27', '（秒杀）牧吾—男士牛皮户外登山鞋', '../img/play27.jpg', '99.00', '13:10-13:20', '2017-10-07 19:01:56');
INSERT INTO `tv_show` VALUES ('28', '威力8KG全智能大容量热烘干洗衣机加赠', '../img/play28.jpg', '1580.00', '13:20-13:59', '2017-10-07 19:02:03');
INSERT INTO `tv_show` VALUES ('29', '德国UKS智能烟灶组－莱茵河系', '../img/play29.jpg', '2980.00', '13:20-13:59', '2017-10-07 19:02:05');
INSERT INTO `tv_show` VALUES ('30', '法国西蒙酒庄摩洛哥干红原瓶原装', '../img/play1.jpg', '389.00', '00:00-00:39', '2017-10-07 19:02:26');
INSERT INTO `tv_show` VALUES ('31', '梦回盛唐-赫拉御品蚕丝贡被', '../img/play7.jpg', '699.00', '00:00-00:39', '2017-10-07 19:02:28');
INSERT INTO `tv_show` VALUES ('32', '追梦者速开自动帐篷套装', '../img/play8.jpg', '398.00', '00:00-00:39', '2017-10-07 19:02:29');
INSERT INTO `tv_show` VALUES ('33', '骏升时尚旅行箱1+1特惠组', '../img/play10.jpg', '299.00', '00:00-00:39', '2017-10-07 19:02:43');
INSERT INTO `tv_show` VALUES ('34', '恒源祥加绒男士精致保暖衬衫两件组', '../img/play11.jpg', '168.00', '00:00-00:39', '2017-10-07 19:02:46');
INSERT INTO `tv_show` VALUES ('35', '艾优品时尚料理机超值组', '../img/play17.jpg', '199.00', '00:00-00:39', '2017-10-07 19:02:52');
INSERT INTO `tv_show` VALUES ('36', '新丰龙红铁木实木菜板1+1超值', '../img/play23.jpg', '298.00', '00:00-00:39', '2017-10-07 19:03:05');
INSERT INTO `tv_show` VALUES ('37', '娄底古糖金秋梨8.5斤尝鲜组', '../img/play24.jpg', '298.00', '00:00-00:39', '2017-10-07 19:03:12');
INSERT INTO `tv_show` VALUES ('38', '娄底古糖金秋梨8.5斤尝鲜组', '../img/play24.jpg', '298.00', '00:00-00:39', '2017-10-07 19:03:19');
INSERT INTO `tv_show` VALUES ('39', '骏升时尚旅行箱1+1特惠组', '../img/play10.jpg', '299.00', '00:00-00:39', '2017-10-07 19:03:20');
INSERT INTO `tv_show` VALUES ('40', '恒源祥加绒男士精致保暖衬衫两件组', '../img/play11.jpg', '168.00', '00:00-00:39', '2017-10-07 19:03:43');
INSERT INTO `tv_show` VALUES ('41', '艾优品时尚料理机超值组', '../img/play17.jpg', '199.00', '00:00-00:39', '2017-10-07 19:03:51');
INSERT INTO `tv_show` VALUES ('42', '新丰龙红铁木实木菜板1+1超值', '../img/play23.jpg', '298.00', '00:00-00:39', '2017-10-07 19:04:01');
INSERT INTO `tv_show` VALUES ('43', '骏升时尚旅行箱1+1特惠组', '../img/play10.jpg', '299.00', '00:00-00:39', '2017-10-07 14:31:22');
INSERT INTO `tv_show` VALUES ('44', '恒源祥加绒男士精致保暖衬衫两件组', '../img/play11.jpg', '168.00', '00:00-00:39', '2017-10-07 14:31:22');
INSERT INTO `tv_show` VALUES ('45', '艾优品时尚料理机超值组', '../img/play17.jpg', '199.00', '00:00-00:39', '2017-10-07 14:31:22');
INSERT INTO `tv_show` VALUES ('46', '新丰龙红铁木实木菜板1+1超值', '../img/play23.jpg', '298.00', '00:00-00:39', '2017-10-07 14:31:22');
INSERT INTO `tv_show` VALUES ('47', '梦回盛唐-赫拉御品蚕丝贡被', '../img/play7.jpg', '699.00', '00:00-00:39', '2017-10-07 14:34:42');
INSERT INTO `tv_show` VALUES ('48', '追梦者速开自动帐篷套装', '../img/play8.jpg', '398.00', '00:00-00:39', '2017-10-07 14:34:44');
INSERT INTO `tv_show` VALUES ('49', '骏升时尚旅行箱1+1特惠组', '../img/play10.jpg', '299.00', '00:00-00:39', '2017-10-07 14:31:44');
INSERT INTO `tv_show` VALUES ('50', '恒源祥加绒男士精致保暖衬衫两件组', '../img/play11.jpg', '168.00', '00:00-00:39', '2017-10-07 14:31:44');
INSERT INTO `tv_show` VALUES ('51', '艾优品时尚料理机超值组', '../img/play17.jpg', '199.00', '00:00-00:39', '2017-10-07 14:31:44');
INSERT INTO `tv_show` VALUES ('52', '新丰龙红铁木实木菜板1+1超值', '../img/play23.jpg', '298.00', '00:00-00:39', '2017-10-07 14:31:44');
INSERT INTO `tv_show` VALUES ('53', '娄底古糖金秋梨8.5斤尝鲜组', '../img/play24.jpg', '298.00', '00:00-00:39', '2017-10-07 14:33:18');
INSERT INTO `tv_show` VALUES ('54', '娄底古糖金秋梨8.5斤尝鲜组', '../img/play24.jpg', '298.00', '00:00-00:39', '2017-10-07 14:34:52');
INSERT INTO `tv_show` VALUES ('55', '骏升时尚旅行箱1+1特惠组', '../img/play10.jpg', '299.00', '00:00-00:39', '2017-10-07 14:31:44');
INSERT INTO `tv_show` VALUES ('56', '恒源祥加绒男士精致保暖衬衫两件组', '../img/play11.jpg', '168.00', '00:00-00:39', '2017-10-07 14:31:44');
INSERT INTO `tv_show` VALUES ('57', '艾优品时尚料理机超值组', '../img/play17.jpg', '199.00', '00:00-00:39', '2017-10-07 14:31:44');
INSERT INTO `tv_show` VALUES ('58', '新丰龙红铁木实木菜板1+1超值', '../img/play23.jpg', '298.00', '00:00-00:39', '2017-10-07 14:31:44');
INSERT INTO `tv_show` VALUES ('59', '骏升时尚旅行箱1+1特惠组', '../img/play10.jpg', '299.00', '00:00-00:39', '2017-10-07 14:31:44');
INSERT INTO `tv_show` VALUES ('60', '恒源祥加绒男士精致保暖衬衫两件组', '../img/play11.jpg', '168.00', '00:00-00:39', '2017-10-07 14:31:44');
INSERT INTO `tv_show` VALUES ('61', '艾优品时尚料理机超值组', '../img/play17.jpg', '199.00', '00:00-00:39', '2017-10-07 14:31:44');
INSERT INTO `tv_show` VALUES ('62', '新丰龙红铁木实木菜板1+1超值', '../img/play23.jpg', '298.00', '00:00-00:39', '2017-10-07 14:31:44');
INSERT INTO `tv_show` VALUES ('63', '梦回盛唐-赫拉御品蚕丝贡被', '../img/play7.jpg', '699.00', '00:00-00:39', '2017-10-07 14:35:00');
INSERT INTO `tv_show` VALUES ('64', '追梦者速开自动帐篷套装', '../img/play8.jpg', '398.00', '00:00-00:39', '2017-10-07 14:35:02');
INSERT INTO `tv_show` VALUES ('65', '骏升时尚旅行箱1+1特惠组', '../img/play10.jpg', '299.00', '00:00-00:39', '2017-10-07 14:31:45');
INSERT INTO `tv_show` VALUES ('66', '恒源祥加绒男士精致保暖衬衫两件组', '../img/play11.jpg', '168.00', '00:00-00:39', '2017-10-07 14:31:45');
INSERT INTO `tv_show` VALUES ('67', '艾优品时尚料理机超值组', '../img/play17.jpg', '199.00', '00:00-00:39', '2017-10-07 14:31:45');
INSERT INTO `tv_show` VALUES ('68', '新丰龙红铁木实木菜板1+1超值', '../img/play23.jpg', '298.00', '00:00-00:39', '2017-10-07 14:31:45');
INSERT INTO `tv_show` VALUES ('69', '娄底古糖金秋梨8.5斤尝鲜组', '../img/play24.jpg', '298.00', '00:00-00:39', '2017-10-07 14:33:06');
INSERT INTO `tv_show` VALUES ('70', '娄底古糖金秋梨8.5斤尝鲜组', '../img/play24.jpg', '298.00', '00:00-00:39', '2017-10-07 14:33:12');
INSERT INTO `tv_show` VALUES ('71', '骏升时尚旅行箱1+1特惠组', '../img/play10.jpg', '299.00', '00:00-00:39', '2017-10-07 14:31:45');
INSERT INTO `tv_show` VALUES ('72', '恒源祥加绒男士精致保暖衬衫两件组', '../img/play11.jpg', '168.00', '00:00-00:39', '2017-10-07 16:26:28');
INSERT INTO `tv_show` VALUES ('73', '艾优品时尚料理机超值组', '../img/play17.jpg', '199.00', '00:00-00:39', '2017-10-07 16:26:29');
INSERT INTO `tv_show` VALUES ('74', '新丰龙红铁木实木菜板1+1超值', '../img/play23.jpg', '298.00', '00:00-00:39', '2017-10-07 16:26:32');
INSERT INTO `tv_show` VALUES ('75', '骏升时尚旅行箱1+1特惠组', '../img/play10.jpg', '299.00', '00:00-00:39', '2017-10-07 16:26:33');
INSERT INTO `tv_show` VALUES ('76', '恒源祥加绒男士精致保暖衬衫两件组', '../img/play11.jpg', '168.00', '00:00-00:39', '2017-10-07 16:26:34');
INSERT INTO `tv_show` VALUES ('77', '艾优品时尚料理机超值组', '../img/play17.jpg', '199.00', '00:00-00:39', '2017-10-07 16:26:36');
INSERT INTO `tv_show` VALUES ('78', '新丰龙红铁木实木菜板1+1超值', '../img/play23.jpg', '298.00', '00:00-00:39', '2017-10-07 16:26:36');
INSERT INTO `tv_show` VALUES ('79', '梦回盛唐-赫拉御品蚕丝贡被', '../img/play7.jpg', '699.00', '00:00-00:39', '2017-10-07 16:26:38');
INSERT INTO `tv_show` VALUES ('80', '追梦者速开自动帐篷套装', '../img/play8.jpg', '398.00', '00:00-00:39', '2017-10-07 16:26:39');
INSERT INTO `tv_show` VALUES ('81', '骏升时尚旅行箱1+1特惠组', '../img/play10.jpg', '299.00', '00:00-00:39', '2017-10-07 16:26:41');
INSERT INTO `tv_show` VALUES ('82', '恒源祥加绒男士精致保暖衬衫两件组', '../img/play11.jpg', '168.00', '00:00-00:39', '2017-10-07 16:26:42');
INSERT INTO `tv_show` VALUES ('83', '艾优品时尚料理机超值组', '../img/play17.jpg', '199.00', '00:00-00:39', '2017-10-07 16:26:42');
INSERT INTO `tv_show` VALUES ('84', '新丰龙红铁木实木菜板1+1超值', '../img/play23.jpg', '298.00', '00:00-00:39', '2017-10-07 16:26:44');
INSERT INTO `tv_show` VALUES ('85', '娄底古糖金秋梨8.5斤尝鲜组', '../img/play24.jpg', '298.00', '00:00-00:39', '2017-10-07 16:26:46');
INSERT INTO `tv_show` VALUES ('86', '娄底古糖金秋梨8.5斤尝鲜组', '../img/play24.jpg', '298.00', '00:00-00:39', '2017-10-07 16:26:47');
INSERT INTO `tv_show` VALUES ('87', '骏升时尚旅行箱1+1特惠组', '../img/play10.jpg', '299.00', '00:00-00:39', '2017-10-07 16:26:49');
INSERT INTO `tv_show` VALUES ('88', '恒源祥加绒男士精致保暖衬衫两件组', '../img/play11.jpg', '168.00', '00:00-00:39', '2017-10-07 16:26:51');
INSERT INTO `tv_show` VALUES ('89', '艾优品时尚料理机超值组', '../img/play17.jpg', '199.00', '00:00-00:39', '2017-10-07 16:26:54');
INSERT INTO `tv_show` VALUES ('90', '新丰龙红铁木实木菜板1+1超值', '../img/play23.jpg', '298.00', '00:00-00:39', '2017-10-07 16:26:57');
INSERT INTO `tv_show` VALUES ('91', '骏升时尚旅行箱1+1特惠组', '../img/play10.jpg', '299.00', '00:00-00:39', '2017-10-07 16:26:58');
INSERT INTO `tv_show` VALUES ('92', '恒源祥加绒男士精致保暖衬衫两件组', '../img/play11.jpg', '168.00', '00:00-00:39', '2017-10-07 16:26:59');
INSERT INTO `tv_show` VALUES ('93', '艾优品时尚料理机超值组', '../img/play17.jpg', '199.00', '00:00-00:39', '2017-10-07 16:27:01');
INSERT INTO `tv_show` VALUES ('94', '新丰龙红铁木实木菜板1+1超值', '../img/play23.jpg', '298.00', '00:00-00:39', '2017-10-07 16:27:04');
INSERT INTO `tv_show` VALUES ('95', '梦回盛唐-赫拉御品蚕丝贡被', '../img/play7.jpg', '699.00', '00:00-00:39', '2017-10-07 16:27:05');
INSERT INTO `tv_show` VALUES ('96', '追梦者速开自动帐篷套装', '../img/play8.jpg', '398.00', '00:00-00:39', '2017-10-07 16:27:07');
INSERT INTO `tv_show` VALUES ('97', '骏升时尚旅行箱1+1特惠组', '../img/play10.jpg', '299.00', '00:00-00:39', '2017-10-07 16:27:08');
INSERT INTO `tv_show` VALUES ('98', '宫诺秋冬滋补阿胶糕特惠组', '../img/play14.jpg', '298.00', '00:00-00:39', '2017-10-07 16:27:10');
INSERT INTO `tv_show` VALUES ('99', '五粮液福喜迎门喜庆组', '../img/play18.jpg', '698.00', '00:00-00:39', '2017-10-07 16:27:12');
INSERT INTO `tv_show` VALUES ('100', '禧又多土榨菜籽油10L秒杀组', '../img/play22.jpg', '99.00', '00:00-00:39', '2017-10-07 16:27:13');
INSERT INTO `tv_show` VALUES ('101', '馨之屋水精灵20+20清洁抢购组', '../img/play26.jpg', '298.00', '00:00-00:39', '2017-10-07 16:27:15');
INSERT INTO `tv_show` VALUES ('102', '德国UKS智能烟灶组－莱茵河系', '../img/play29.jpg', '2980.00', '00:00-00:39', '2017-10-07 16:27:17');
INSERT INTO `tv_show` VALUES ('103', '艾优品时尚料理机超值组', '../img/play17.jpg', '199.00', '00:00-00:39', '2017-10-07 16:27:18');
INSERT INTO `tv_show` VALUES ('104', '骏升时尚旅行箱1+1特惠组', '../img/play10.jpg', '299.00', '00:00-00:39', '2017-10-07 16:27:21');
INSERT INTO `tv_show` VALUES ('105', '宫诺秋冬滋补阿胶糕特惠组', '../img/play14.jpg', '298.00', '00:00-00:39', '2017-10-07 16:27:23');
INSERT INTO `tv_show` VALUES ('106', '五粮液福喜迎门喜庆组', '../img/play18.jpg', '698.00', '00:00-00:39', '2017-10-07 16:27:25');
INSERT INTO `tv_show` VALUES ('107', '禧又多土榨菜籽油10L秒杀组', '../img/play22.jpg', '99.00', '00:00-00:39', '2017-10-07 16:27:27');
INSERT INTO `tv_show` VALUES ('108', '馨之屋水精灵20+20清洁抢购组', '../img/play26.jpg', '298.00', '00:00-00:39', '2017-10-07 16:27:30');
INSERT INTO `tv_show` VALUES ('109', '德国UKS智能烟灶组－莱茵河系', '../img/play29.jpg', '2980.00', '00:00-00:39', '2017-10-07 16:27:32');
INSERT INTO `tv_show` VALUES ('110', '艾优品时尚料理机超值组', '../img/play17.jpg', '199.00', '00:00-00:39', '2017-10-07 16:27:33');
INSERT INTO `tv_show` VALUES ('111', '梦回盛唐-赫拉御品蚕丝贡被', '../img/play7.jpg', '699.00', '00:00-00:39', '2017-10-07 16:27:35');
INSERT INTO `tv_show` VALUES ('112', '追梦者速开自动帐篷套装', '../img/play8.jpg', '398.00', '00:00-00:39', '2017-10-07 16:27:37');
INSERT INTO `tv_show` VALUES ('113', '骏升时尚旅行箱1+1特惠组', '../img/play10.jpg', '299.00', '00:00-00:39', '2017-10-07 16:27:40');
INSERT INTO `tv_show` VALUES ('114', '宫诺秋冬滋补阿胶糕特惠组', '../img/play14.jpg', '298.00', '00:00-00:39', '2017-10-07 16:27:42');
INSERT INTO `tv_show` VALUES ('115', '五粮液福喜迎门喜庆组', '../img/play18.jpg', '698.00', '00:00-00:39', '2017-10-07 16:27:43');
INSERT INTO `tv_show` VALUES ('116', '禧又多土榨菜籽油10L秒杀组', '../img/play22.jpg', '99.00', '00:00-00:39', '2017-10-07 16:27:47');
INSERT INTO `tv_show` VALUES ('117', '馨之屋水精灵20+20清洁抢购组', '../img/play26.jpg', '298.00', '00:00-00:39', '2017-10-07 16:27:48');
INSERT INTO `tv_show` VALUES ('118', '德国UKS智能烟灶组－莱茵河系', '../img/play29.jpg', '2980.00', '00:00-00:39', '2017-10-07 16:27:49');
INSERT INTO `tv_show` VALUES ('119', '艾优品时尚料理机超值组', '../img/play17.jpg', '199.00', '00:00-00:39', '2017-10-07 16:27:51');
INSERT INTO `tv_show` VALUES ('120', '骏升时尚旅行箱1+1特惠组', '../img/play10.jpg', '299.00', '00:00-00:39', '2017-10-07 16:27:52');
INSERT INTO `tv_show` VALUES ('121', '宫诺秋冬滋补阿胶糕特惠组', '../img/play14.jpg', '298.00', '00:00-00:39', '2017-10-07 16:27:53');
INSERT INTO `tv_show` VALUES ('122', '五粮液福喜迎门喜庆组', '../img/play18.jpg', '698.00', '00:00-00:39', '2017-10-07 16:27:55');
INSERT INTO `tv_show` VALUES ('123', '禧又多土榨菜籽油10L秒杀组', '../img/play22.jpg', '99.00', '00:00-00:39', '2017-10-07 16:27:56');
INSERT INTO `tv_show` VALUES ('124', '馨之屋水精灵20+20清洁抢购组', '../img/play26.jpg', '298.00', '00:00-00:39', '2017-10-07 16:27:57');
INSERT INTO `tv_show` VALUES ('125', '德国UKS智能烟灶组－莱茵河系', '../img/play29.jpg', '2980.00', '00:00-00:39', '2017-10-07 16:27:58');
INSERT INTO `tv_show` VALUES ('126', '艾优品时尚料理机超值组', '../img/play17.jpg', '199.00', '00:00-00:39', '2017-10-07 16:27:58');
INSERT INTO `tv_show` VALUES ('127', '梦回盛唐-赫拉御品蚕丝贡被', '../img/play7.jpg', '699.00', '00:00-00:39', '2017-10-07 16:28:03');
INSERT INTO `tv_show` VALUES ('128', '追梦者速开自动帐篷套装', '../img/play8.jpg', '398.00', '00:00-00:39', '2017-10-07 16:28:05');
INSERT INTO `tv_show` VALUES ('129', '骏升时尚旅行箱1+1特惠组', '../img/play10.jpg', '299.00', '00:00-00:39', '2017-10-07 16:28:07');
INSERT INTO `tv_show` VALUES ('130', '宫诺秋冬滋补阿胶糕特惠组', '../img/play14.jpg', '298.00', '00:00-00:39', '2017-10-07 16:28:08');
INSERT INTO `tv_show` VALUES ('131', '五粮液福喜迎门喜庆组', '../img/play18.jpg', '698.00', '00:00-00:39', '2017-10-07 16:28:11');
INSERT INTO `tv_show` VALUES ('132', '禧又多土榨菜籽油10L秒杀组', '../img/play22.jpg', '99.00', '00:00-00:39', '2017-10-07 16:28:12');
INSERT INTO `tv_show` VALUES ('133', '馨之屋水精灵20+20清洁抢购组', '../img/play26.jpg', '298.00', '00:00-00:39', '2017-10-07 16:28:15');
INSERT INTO `tv_show` VALUES ('134', '德国UKS智能烟灶组－莱茵河系', '../img/play29.jpg', '2980.00', '00:00-00:39', '2017-10-07 16:28:21');
INSERT INTO `tv_show` VALUES ('135', '艾优品时尚料理机超值组', '../img/play17.jpg', '199.00', '00:00-00:39', '2017-10-07 16:28:22');
INSERT INTO `tv_show` VALUES ('136', '骏升时尚旅行箱1+1特惠组', '../img/play10.jpg', '299.00', '00:00-00:39', '2017-10-07 16:28:24');
INSERT INTO `tv_show` VALUES ('137', '宫诺秋冬滋补阿胶糕特惠组', '../img/play14.jpg', '298.00', '00:00-00:39', '2017-10-07 16:28:25');
INSERT INTO `tv_show` VALUES ('138', '五粮液福喜迎门喜庆组', '../img/play18.jpg', '698.00', '00:00-00:39', '2017-10-07 16:28:26');
INSERT INTO `tv_show` VALUES ('139', '禧又多土榨菜籽油10L秒杀组', '../img/play22.jpg', '99.00', '00:00-00:39', '2017-10-07 16:28:26');
INSERT INTO `tv_show` VALUES ('140', '馨之屋水精灵20+20清洁抢购组', '../img/play26.jpg', '298.00', '00:00-00:39', '2017-10-07 16:28:27');
INSERT INTO `tv_show` VALUES ('141', '德国UKS智能烟灶组－莱茵河系', '../img/play29.jpg', '2980.00', '00:00-00:39', '2017-10-07 16:28:28');
INSERT INTO `tv_show` VALUES ('142', '艾优品时尚料理机超值组', '../img/play17.jpg', '199.00', '00:00-00:39', '2017-10-07 16:28:31');

-- ----------------------------
-- Table structure for tv_show_goods
-- ----------------------------
DROP TABLE IF EXISTS `tv_show_goods`;
CREATE TABLE `tv_show_goods` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '商品详情',
  `imgurl` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `time` varchar(50) DEFAULT NULL COMMENT '直播时间',
  `datatime` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `h3` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=143 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tv_show_goods
-- ----------------------------
INSERT INTO `tv_show_goods` VALUES ('1', '法国西蒙酒庄摩洛哥干红原瓶原装', '../img/play1.jpg', '398.00', '00:20-00:40', '2017-10-07 17:51:34', null);
INSERT INTO `tv_show_goods` VALUES ('2', '祥云瑞气全自动黑檀木茶盘套组', '../img/play2.jpg', '998.00', '00:40-01:19', '2017-10-03 11:09:31', null);
INSERT INTO `tv_show_goods` VALUES ('3', 'JOE-JOE浪漫风华女钻表', '../img/play3.jpg', '399.00', '00:40-01:19', '2017-10-03 10:50:51', null);
INSERT INTO `tv_show_goods` VALUES ('4', '茅台集团庆典贵宾用酒V20', '../img/play4.jpg', '398.00', '00:40-01:19', '2017-09-28 16:01:07', null);
INSERT INTO `tv_show_goods` VALUES ('5', '普兰多泰国进口乳胶床垫1.8米', '../img/play5.jpg', '1799.00', '01:20-02:03', '2017-09-28 16:01:10', null);
INSERT INTO `tv_show_goods` VALUES ('6', '普兰多泰国进口乳胶床垫1.5米', '../img/play6.jpg', '1599.00', '01:20-02:03', '2017-09-28 16:01:13', null);
INSERT INTO `tv_show_goods` VALUES ('7', '梦回盛唐-赫拉御品蚕丝贡被', '../img/play7.jpg', '699.00', '02:05-02:48', '2017-09-28 16:01:16', null);
INSERT INTO `tv_show_goods` VALUES ('8', '追梦者速开自动帐篷套装', '../img/play8.jpg', '398.00', '02:05-02:48', '2017-09-28 16:01:19', null);
INSERT INTO `tv_show_goods` VALUES ('9', '玛佐户外折叠收纳桌椅', '../img/play9.jpg', '498.00', '02:50-03:33', '2017-09-28 16:01:23', null);
INSERT INTO `tv_show_goods` VALUES ('10', '康乐美纯棉四件套', '../img/play10.jpg', '179.00', '03:35-04:18', '2017-09-28 16:00:20', null);
INSERT INTO `tv_show_goods` VALUES ('11', '（秒杀）千花伴椴树结晶蜜秒杀组', '../img/play11.jpg', '99.00', '04:20-04:49', '2017-10-03 13:36:51', null);
INSERT INTO `tv_show_goods` VALUES ('12', 'VK7Plus全网通智能大屏4G手机', '../img/play12.jpg', '1280.00', '04:50-05:19', '2017-10-03 16:23:53', null);
INSERT INTO `tv_show_goods` VALUES ('13', '时珍验方蕲艾足贴', '../img/play13.jpg', '298.00', '05:20-05:49', '2017-09-28 14:37:02', null);
INSERT INTO `tv_show_goods` VALUES ('14', '宫诺秋冬滋补阿胶糕特惠组', '../img/play14.jpg', '298.00', '05:50-06:29', '2017-09-28 14:37:08', null);
INSERT INTO `tv_show_goods` VALUES ('15', '攀高颈椎按摩仪', '../img/play15.jpg', '399.00', '06:30-07:09', '2017-10-03 10:54:00', null);
INSERT INTO `tv_show_goods` VALUES ('16', '辣妹子果肉罐头7+6超值组合', '../img/play16.jpg', '99.00', '06:30-07:09', '2017-10-03 10:55:11', null);
INSERT INTO `tv_show_goods` VALUES ('17', '艾优品时尚料理机超值组', '../img/play17.jpg', '199.00', '07:10-07:49', '2017-09-28 14:37:27', null);
INSERT INTO `tv_show_goods` VALUES ('18', '五粮液福喜迎门喜庆组', '../img/play18.jpg', '698.00', '07:50-08:29', '2017-09-28 14:37:28', null);
INSERT INTO `tv_show_goods` VALUES ('19', '于阁老土蜂蜜5+5秒杀组', '../img/play19.jpg', '99.00', '08:30-09:09', '2017-10-03 18:32:58', null);
INSERT INTO `tv_show_goods` VALUES ('20', '方太风魔方双核触屏烟灶特供组', '../img/play20.jpg', '3780.00', '09:10-09:49', '2017-10-03 18:49:40', null);
INSERT INTO `tv_show_goods` VALUES ('21', '赛伯特娇阳焗油染发膏特惠组', '../img/play21.jpg', '298.00', '09:50-10:00', '2017-09-28 14:37:50', null);
INSERT INTO `tv_show_goods` VALUES ('22', '禧又多土榨菜籽油10L秒杀组', '../img/play22.jpg', '99.00', '09:58-10:36', '2017-09-28 14:38:02', null);
INSERT INTO `tv_show_goods` VALUES ('23', '新丰龙红铁木实木菜板1+1超值', '../img/play23.jpg', '298.00', '10:38-11:16', '2017-09-28 14:38:08', null);
INSERT INTO `tv_show_goods` VALUES ('24', '娄底古糖金秋梨8.5斤尝鲜组', '../img/play24.jpg', '59.00', '11:20-11:30', '2017-09-28 14:38:20', null);
INSERT INTO `tv_show_goods` VALUES ('25', '京升缘亚麻籽油礼盒装', '../img/play25.jpg', '99.00', '11:30-12:06', '2017-10-04 09:46:12', null);
INSERT INTO `tv_show_goods` VALUES ('26', '馨之屋水精灵20+20清洁抢购组', '../img/play26.jpg', '199.00', '12:09-12:39', '2017-09-28 14:38:37', null);
INSERT INTO `tv_show_goods` VALUES ('27', '（秒杀）牧吾—男士牛皮户外登山鞋', '../img/play27.jpg', '99.00', '13:10-13:20', '2017-09-28 14:38:38', null);
INSERT INTO `tv_show_goods` VALUES ('28', '威力8KG全智能大容量热烘干洗衣机加赠', '../img/play28.jpg', '1580.00', '13:20-13:59', '2017-09-28 14:38:51', null);
INSERT INTO `tv_show_goods` VALUES ('29', '德国UKS智能烟灶组－莱茵河系', '../img/play29.jpg', '2980.00', '13:20-13:59', '2017-09-28 14:39:27', null);
INSERT INTO `tv_show_goods` VALUES ('30', '法国西蒙酒庄摩洛哥干红原瓶原装', '../img/play1.jpg', '389.00', '00:00-00:39', '2017-10-07 14:26:41', null);
INSERT INTO `tv_show_goods` VALUES ('31', '梦回盛唐-赫拉御品蚕丝贡被', '../img/play7.jpg', '699.00', '00:00-00:39', '2017-10-07 14:34:31', null);
INSERT INTO `tv_show_goods` VALUES ('32', '追梦者速开自动帐篷套装', '../img/play8.jpg', '398.00', '00:00-00:39', '2017-10-07 14:34:34', null);
INSERT INTO `tv_show_goods` VALUES ('33', '骏升时尚旅行箱1+1特惠组', '../img/play10.jpg', '299.00', '00:00-00:39', '2017-10-07 14:31:22', null);
INSERT INTO `tv_show_goods` VALUES ('34', '恒源祥加绒男士精致保暖衬衫两件组', '../img/play11.jpg', '168.00', '00:00-00:39', '2017-10-07 14:31:22', null);
INSERT INTO `tv_show_goods` VALUES ('35', '艾优品时尚料理机超值组', '../img/play17.jpg', '199.00', '00:00-00:39', '2017-10-07 14:31:22', null);
INSERT INTO `tv_show_goods` VALUES ('36', '新丰龙红铁木实木菜板1+1超值', '../img/play23.jpg', '298.00', '00:00-00:39', '2017-10-07 14:31:22', null);
INSERT INTO `tv_show_goods` VALUES ('37', '娄底古糖金秋梨8.5斤尝鲜组', '../img/play24.jpg', '298.00', '00:00-00:39', '2017-10-07 14:33:24', null);
INSERT INTO `tv_show_goods` VALUES ('38', '娄底古糖金秋梨8.5斤尝鲜组', '../img/play24.jpg', '298.00', '00:00-00:39', '2017-10-07 14:33:29', null);
INSERT INTO `tv_show_goods` VALUES ('39', '骏升时尚旅行箱1+1特惠组', '../img/play10.jpg', '299.00', '00:00-00:39', '2017-10-07 14:31:22', null);
INSERT INTO `tv_show_goods` VALUES ('40', '恒源祥加绒男士精致保暖衬衫两件组', '../img/play11.jpg', '168.00', '00:00-00:39', '2017-10-07 14:31:22', null);
INSERT INTO `tv_show_goods` VALUES ('41', '艾优品时尚料理机超值组', '../img/play17.jpg', '199.00', '00:00-00:39', '2017-10-07 14:31:22', null);
INSERT INTO `tv_show_goods` VALUES ('42', '新丰龙红铁木实木菜板1+1超值', '../img/play23.jpg', '298.00', '00:00-00:39', '2017-10-07 14:31:22', null);
INSERT INTO `tv_show_goods` VALUES ('43', '骏升时尚旅行箱1+1特惠组', '../img/play10.jpg', '299.00', '00:00-00:39', '2017-10-07 14:31:22', null);
INSERT INTO `tv_show_goods` VALUES ('44', '恒源祥加绒男士精致保暖衬衫两件组', '../img/play11.jpg', '168.00', '00:00-00:39', '2017-10-07 14:31:22', null);
INSERT INTO `tv_show_goods` VALUES ('45', '艾优品时尚料理机超值组', '../img/play17.jpg', '199.00', '00:00-00:39', '2017-10-07 14:31:22', null);
INSERT INTO `tv_show_goods` VALUES ('46', '新丰龙红铁木实木菜板1+1超值', '../img/play23.jpg', '298.00', '00:00-00:39', '2017-10-07 14:31:22', null);
INSERT INTO `tv_show_goods` VALUES ('47', '梦回盛唐-赫拉御品蚕丝贡被', '../img/play7.jpg', '699.00', '00:00-00:39', '2017-10-07 14:34:42', null);
INSERT INTO `tv_show_goods` VALUES ('48', '追梦者速开自动帐篷套装', '../img/play8.jpg', '398.00', '00:00-00:39', '2017-10-07 14:34:44', null);
INSERT INTO `tv_show_goods` VALUES ('49', '骏升时尚旅行箱1+1特惠组', '../img/play10.jpg', '299.00', '00:00-00:39', '2017-10-07 14:31:44', null);
INSERT INTO `tv_show_goods` VALUES ('50', '恒源祥加绒男士精致保暖衬衫两件组', '../img/play11.jpg', '168.00', '00:00-00:39', '2017-10-07 14:31:44', null);
INSERT INTO `tv_show_goods` VALUES ('51', '艾优品时尚料理机超值组', '../img/play17.jpg', '199.00', '00:00-00:39', '2017-10-07 14:31:44', null);
INSERT INTO `tv_show_goods` VALUES ('52', '新丰龙红铁木实木菜板1+1超值', '../img/play23.jpg', '298.00', '00:00-00:39', '2017-10-07 14:31:44', null);
INSERT INTO `tv_show_goods` VALUES ('53', '娄底古糖金秋梨8.5斤尝鲜组', '../img/play24.jpg', '298.00', '00:00-00:39', '2017-10-07 14:33:18', null);
INSERT INTO `tv_show_goods` VALUES ('54', '娄底古糖金秋梨8.5斤尝鲜组', '../img/play24.jpg', '298.00', '00:00-00:39', '2017-10-07 14:34:52', null);
INSERT INTO `tv_show_goods` VALUES ('55', '骏升时尚旅行箱1+1特惠组', '../img/play10.jpg', '299.00', '00:00-00:39', '2017-10-07 14:31:44', null);
INSERT INTO `tv_show_goods` VALUES ('56', '恒源祥加绒男士精致保暖衬衫两件组', '../img/play11.jpg', '168.00', '00:00-00:39', '2017-10-07 14:31:44', null);
INSERT INTO `tv_show_goods` VALUES ('57', '艾优品时尚料理机超值组', '../img/play17.jpg', '199.00', '00:00-00:39', '2017-10-07 14:31:44', null);
INSERT INTO `tv_show_goods` VALUES ('58', '新丰龙红铁木实木菜板1+1超值', '../img/play23.jpg', '298.00', '00:00-00:39', '2017-10-07 14:31:44', null);
INSERT INTO `tv_show_goods` VALUES ('59', '骏升时尚旅行箱1+1特惠组', '../img/play10.jpg', '299.00', '00:00-00:39', '2017-10-07 14:31:44', null);
INSERT INTO `tv_show_goods` VALUES ('60', '恒源祥加绒男士精致保暖衬衫两件组', '../img/play11.jpg', '168.00', '00:00-00:39', '2017-10-07 14:31:44', null);
INSERT INTO `tv_show_goods` VALUES ('61', '艾优品时尚料理机超值组', '../img/play17.jpg', '199.00', '00:00-00:39', '2017-10-07 14:31:44', null);
INSERT INTO `tv_show_goods` VALUES ('62', '新丰龙红铁木实木菜板1+1超值', '../img/play23.jpg', '298.00', '00:00-00:39', '2017-10-07 14:31:44', null);
INSERT INTO `tv_show_goods` VALUES ('63', '梦回盛唐-赫拉御品蚕丝贡被', '../img/play7.jpg', '699.00', '00:00-00:39', '2017-10-07 14:35:00', null);
INSERT INTO `tv_show_goods` VALUES ('64', '追梦者速开自动帐篷套装', '../img/play8.jpg', '398.00', '00:00-00:39', '2017-10-07 14:35:02', null);
INSERT INTO `tv_show_goods` VALUES ('65', '骏升时尚旅行箱1+1特惠组', '../img/play10.jpg', '299.00', '00:00-00:39', '2017-10-07 14:31:45', null);
INSERT INTO `tv_show_goods` VALUES ('66', '恒源祥加绒男士精致保暖衬衫两件组', '../img/play11.jpg', '168.00', '00:00-00:39', '2017-10-07 14:31:45', null);
INSERT INTO `tv_show_goods` VALUES ('67', '艾优品时尚料理机超值组', '../img/play17.jpg', '199.00', '00:00-00:39', '2017-10-07 14:31:45', null);
INSERT INTO `tv_show_goods` VALUES ('68', '新丰龙红铁木实木菜板1+1超值', '../img/play23.jpg', '298.00', '00:00-00:39', '2017-10-07 14:31:45', null);
INSERT INTO `tv_show_goods` VALUES ('69', '娄底古糖金秋梨8.5斤尝鲜组', '../img/play24.jpg', '298.00', '00:00-00:39', '2017-10-07 14:33:06', null);
INSERT INTO `tv_show_goods` VALUES ('70', '娄底古糖金秋梨8.5斤尝鲜组', '../img/play24.jpg', '298.00', '00:00-00:39', '2017-10-07 14:33:12', null);
INSERT INTO `tv_show_goods` VALUES ('71', '骏升时尚旅行箱1+1特惠组', '../img/play10.jpg', '299.00', '00:00-00:39', '2017-10-07 14:31:45', null);
INSERT INTO `tv_show_goods` VALUES ('72', '恒源祥加绒男士精致保暖衬衫两件组', '../img/play11.jpg', '168.00', '00:00-00:39', '2017-10-07 16:26:28', null);
INSERT INTO `tv_show_goods` VALUES ('73', '艾优品时尚料理机超值组', '../img/play17.jpg', '199.00', '00:00-00:39', '2017-10-07 16:26:29', null);
INSERT INTO `tv_show_goods` VALUES ('74', '新丰龙红铁木实木菜板1+1超值', '../img/play23.jpg', '298.00', '00:00-00:39', '2017-10-07 16:26:32', null);
INSERT INTO `tv_show_goods` VALUES ('75', '骏升时尚旅行箱1+1特惠组', '../img/play10.jpg', '299.00', '00:00-00:39', '2017-10-07 16:26:33', null);
INSERT INTO `tv_show_goods` VALUES ('76', '恒源祥加绒男士精致保暖衬衫两件组', '../img/play11.jpg', '168.00', '00:00-00:39', '2017-10-07 16:26:34', null);
INSERT INTO `tv_show_goods` VALUES ('77', '艾优品时尚料理机超值组', '../img/play17.jpg', '199.00', '00:00-00:39', '2017-10-07 16:26:36', null);
INSERT INTO `tv_show_goods` VALUES ('78', '新丰龙红铁木实木菜板1+1超值', '../img/play23.jpg', '298.00', '00:00-00:39', '2017-10-07 16:26:36', null);
INSERT INTO `tv_show_goods` VALUES ('79', '梦回盛唐-赫拉御品蚕丝贡被', '../img/play7.jpg', '699.00', '00:00-00:39', '2017-10-07 16:26:38', null);
INSERT INTO `tv_show_goods` VALUES ('80', '追梦者速开自动帐篷套装', '../img/play8.jpg', '398.00', '00:00-00:39', '2017-10-07 16:26:39', null);
INSERT INTO `tv_show_goods` VALUES ('81', '骏升时尚旅行箱1+1特惠组', '../img/play10.jpg', '299.00', '00:00-00:39', '2017-10-07 16:26:41', null);
INSERT INTO `tv_show_goods` VALUES ('82', '恒源祥加绒男士精致保暖衬衫两件组', '../img/play11.jpg', '168.00', '00:00-00:39', '2017-10-07 16:26:42', null);
INSERT INTO `tv_show_goods` VALUES ('83', '艾优品时尚料理机超值组', '../img/play17.jpg', '199.00', '00:00-00:39', '2017-10-07 16:26:42', null);
INSERT INTO `tv_show_goods` VALUES ('84', '新丰龙红铁木实木菜板1+1超值', '../img/play23.jpg', '298.00', '00:00-00:39', '2017-10-07 16:26:44', null);
INSERT INTO `tv_show_goods` VALUES ('85', '娄底古糖金秋梨8.5斤尝鲜组', '../img/play24.jpg', '298.00', '00:00-00:39', '2017-10-07 16:26:46', null);
INSERT INTO `tv_show_goods` VALUES ('86', '娄底古糖金秋梨8.5斤尝鲜组', '../img/play24.jpg', '298.00', '00:00-00:39', '2017-10-07 16:26:47', null);
INSERT INTO `tv_show_goods` VALUES ('87', '骏升时尚旅行箱1+1特惠组', '../img/play10.jpg', '299.00', '00:00-00:39', '2017-10-07 16:26:49', null);
INSERT INTO `tv_show_goods` VALUES ('88', '恒源祥加绒男士精致保暖衬衫两件组', '../img/play11.jpg', '168.00', '00:00-00:39', '2017-10-07 16:26:51', null);
INSERT INTO `tv_show_goods` VALUES ('89', '艾优品时尚料理机超值组', '../img/play17.jpg', '199.00', '00:00-00:39', '2017-10-07 16:26:54', null);
INSERT INTO `tv_show_goods` VALUES ('90', '新丰龙红铁木实木菜板1+1超值', '../img/play23.jpg', '298.00', '00:00-00:39', '2017-10-07 16:26:57', null);
INSERT INTO `tv_show_goods` VALUES ('91', '骏升时尚旅行箱1+1特惠组', '../img/play10.jpg', '299.00', '00:00-00:39', '2017-10-07 16:26:58', null);
INSERT INTO `tv_show_goods` VALUES ('92', '恒源祥加绒男士精致保暖衬衫两件组', '../img/play11.jpg', '168.00', '00:00-00:39', '2017-10-07 16:26:59', null);
INSERT INTO `tv_show_goods` VALUES ('93', '艾优品时尚料理机超值组', '../img/play17.jpg', '199.00', '00:00-00:39', '2017-10-07 16:27:01', null);
INSERT INTO `tv_show_goods` VALUES ('94', '新丰龙红铁木实木菜板1+1超值', '../img/play23.jpg', '298.00', '00:00-00:39', '2017-10-07 16:27:04', null);
INSERT INTO `tv_show_goods` VALUES ('95', '梦回盛唐-赫拉御品蚕丝贡被', '../img/play7.jpg', '699.00', '00:00-00:39', '2017-10-07 16:27:05', null);
INSERT INTO `tv_show_goods` VALUES ('96', '追梦者速开自动帐篷套装', '../img/play8.jpg', '398.00', '00:00-00:39', '2017-10-07 16:27:07', null);
INSERT INTO `tv_show_goods` VALUES ('97', '骏升时尚旅行箱1+1特惠组', '../img/play10.jpg', '299.00', '00:00-00:39', '2017-10-07 16:27:08', null);
INSERT INTO `tv_show_goods` VALUES ('98', '宫诺秋冬滋补阿胶糕特惠组', '../img/play14.jpg', '298.00', '00:00-00:39', '2017-10-07 16:27:10', null);
INSERT INTO `tv_show_goods` VALUES ('99', '五粮液福喜迎门喜庆组', '../img/play18.jpg', '698.00', '00:00-00:39', '2017-10-07 16:27:12', null);
INSERT INTO `tv_show_goods` VALUES ('100', '禧又多土榨菜籽油10L秒杀组', '../img/play22.jpg', '99.00', '00:00-00:39', '2017-10-07 16:27:13', null);
INSERT INTO `tv_show_goods` VALUES ('101', '馨之屋水精灵20+20清洁抢购组', '../img/play26.jpg', '298.00', '00:00-00:39', '2017-10-07 16:27:15', null);
INSERT INTO `tv_show_goods` VALUES ('102', '德国UKS智能烟灶组－莱茵河系', '../img/play29.jpg', '2980.00', '00:00-00:39', '2017-10-07 16:27:17', null);
INSERT INTO `tv_show_goods` VALUES ('103', '艾优品时尚料理机超值组', '../img/play17.jpg', '199.00', '00:00-00:39', '2017-10-07 16:27:18', null);
INSERT INTO `tv_show_goods` VALUES ('104', '骏升时尚旅行箱1+1特惠组', '../img/play10.jpg', '299.00', '00:00-00:39', '2017-10-07 16:27:21', null);
INSERT INTO `tv_show_goods` VALUES ('105', '宫诺秋冬滋补阿胶糕特惠组', '../img/play14.jpg', '298.00', '00:00-00:39', '2017-10-07 16:27:23', null);
INSERT INTO `tv_show_goods` VALUES ('106', '五粮液福喜迎门喜庆组', '../img/play18.jpg', '698.00', '00:00-00:39', '2017-10-07 16:27:25', null);
INSERT INTO `tv_show_goods` VALUES ('107', '禧又多土榨菜籽油10L秒杀组', '../img/play22.jpg', '99.00', '00:00-00:39', '2017-10-07 16:27:27', null);
INSERT INTO `tv_show_goods` VALUES ('108', '馨之屋水精灵20+20清洁抢购组', '../img/play26.jpg', '298.00', '00:00-00:39', '2017-10-07 16:27:30', null);
INSERT INTO `tv_show_goods` VALUES ('109', '德国UKS智能烟灶组－莱茵河系', '../img/play29.jpg', '2980.00', '00:00-00:39', '2017-10-07 16:27:32', null);
INSERT INTO `tv_show_goods` VALUES ('110', '艾优品时尚料理机超值组', '../img/play17.jpg', '199.00', '00:00-00:39', '2017-10-07 16:27:33', null);
INSERT INTO `tv_show_goods` VALUES ('111', '梦回盛唐-赫拉御品蚕丝贡被', '../img/play7.jpg', '699.00', '00:00-00:39', '2017-10-07 16:27:35', null);
INSERT INTO `tv_show_goods` VALUES ('112', '追梦者速开自动帐篷套装', '../img/play8.jpg', '398.00', '00:00-00:39', '2017-10-07 16:27:37', null);
INSERT INTO `tv_show_goods` VALUES ('113', '骏升时尚旅行箱1+1特惠组', '../img/play10.jpg', '299.00', '00:00-00:39', '2017-10-07 16:27:40', null);
INSERT INTO `tv_show_goods` VALUES ('114', '宫诺秋冬滋补阿胶糕特惠组', '../img/play14.jpg', '298.00', '00:00-00:39', '2017-10-07 16:27:42', null);
INSERT INTO `tv_show_goods` VALUES ('115', '五粮液福喜迎门喜庆组', '../img/play18.jpg', '698.00', '00:00-00:39', '2017-10-07 16:27:43', null);
INSERT INTO `tv_show_goods` VALUES ('116', '禧又多土榨菜籽油10L秒杀组', '../img/play22.jpg', '99.00', '00:00-00:39', '2017-10-07 16:27:47', null);
INSERT INTO `tv_show_goods` VALUES ('117', '馨之屋水精灵20+20清洁抢购组', '../img/play26.jpg', '298.00', '00:00-00:39', '2017-10-07 16:27:48', null);
INSERT INTO `tv_show_goods` VALUES ('118', '德国UKS智能烟灶组－莱茵河系', '../img/play29.jpg', '2980.00', '00:00-00:39', '2017-10-07 16:27:49', null);
INSERT INTO `tv_show_goods` VALUES ('119', '艾优品时尚料理机超值组', '../img/play17.jpg', '199.00', '00:00-00:39', '2017-10-07 16:27:51', null);
INSERT INTO `tv_show_goods` VALUES ('120', '骏升时尚旅行箱1+1特惠组', '../img/play10.jpg', '299.00', '00:00-00:39', '2017-10-07 16:27:52', null);
INSERT INTO `tv_show_goods` VALUES ('121', '宫诺秋冬滋补阿胶糕特惠组', '../img/play14.jpg', '298.00', '00:00-00:39', '2017-10-07 16:27:53', null);
INSERT INTO `tv_show_goods` VALUES ('122', '五粮液福喜迎门喜庆组', '../img/play18.jpg', '698.00', '00:00-00:39', '2017-10-07 16:27:55', null);
INSERT INTO `tv_show_goods` VALUES ('123', '禧又多土榨菜籽油10L秒杀组', '../img/play22.jpg', '99.00', '00:00-00:39', '2017-10-07 16:27:56', null);
INSERT INTO `tv_show_goods` VALUES ('124', '馨之屋水精灵20+20清洁抢购组', '../img/play26.jpg', '298.00', '00:00-00:39', '2017-10-07 16:27:57', null);
INSERT INTO `tv_show_goods` VALUES ('125', '德国UKS智能烟灶组－莱茵河系', '../img/play29.jpg', '2980.00', '00:00-00:39', '2017-10-07 16:27:58', null);
INSERT INTO `tv_show_goods` VALUES ('126', '艾优品时尚料理机超值组', '../img/play17.jpg', '199.00', '00:00-00:39', '2017-10-07 16:27:58', null);
INSERT INTO `tv_show_goods` VALUES ('127', '梦回盛唐-赫拉御品蚕丝贡被', '../img/play7.jpg', '699.00', '00:00-00:39', '2017-10-07 16:28:03', null);
INSERT INTO `tv_show_goods` VALUES ('128', '追梦者速开自动帐篷套装', '../img/play8.jpg', '398.00', '00:00-00:39', '2017-10-07 16:28:05', null);
INSERT INTO `tv_show_goods` VALUES ('129', '骏升时尚旅行箱1+1特惠组', '../img/play10.jpg', '299.00', '00:00-00:39', '2017-10-07 16:28:07', null);
INSERT INTO `tv_show_goods` VALUES ('130', '宫诺秋冬滋补阿胶糕特惠组', '../img/play14.jpg', '298.00', '00:00-00:39', '2017-10-07 16:28:08', null);
INSERT INTO `tv_show_goods` VALUES ('131', '五粮液福喜迎门喜庆组', '../img/play18.jpg', '698.00', '00:00-00:39', '2017-10-07 16:28:11', null);
INSERT INTO `tv_show_goods` VALUES ('132', '禧又多土榨菜籽油10L秒杀组', '../img/play22.jpg', '99.00', '00:00-00:39', '2017-10-07 16:28:12', null);
INSERT INTO `tv_show_goods` VALUES ('133', '馨之屋水精灵20+20清洁抢购组', '../img/play26.jpg', '298.00', '00:00-00:39', '2017-10-07 16:28:15', null);
INSERT INTO `tv_show_goods` VALUES ('134', '德国UKS智能烟灶组－莱茵河系', '../img/play29.jpg', '2980.00', '00:00-00:39', '2017-10-07 16:28:21', null);
INSERT INTO `tv_show_goods` VALUES ('135', '艾优品时尚料理机超值组', '../img/play17.jpg', '199.00', '00:00-00:39', '2017-10-07 16:28:22', null);
INSERT INTO `tv_show_goods` VALUES ('136', '骏升时尚旅行箱1+1特惠组', '../img/play10.jpg', '299.00', '00:00-00:39', '2017-10-07 16:28:24', null);
INSERT INTO `tv_show_goods` VALUES ('137', '宫诺秋冬滋补阿胶糕特惠组', '../img/play14.jpg', '298.00', '00:00-00:39', '2017-10-07 16:28:25', null);
INSERT INTO `tv_show_goods` VALUES ('138', '五粮液福喜迎门喜庆组', '../img/play18.jpg', '698.00', '00:00-00:39', '2017-10-07 16:28:26', null);
INSERT INTO `tv_show_goods` VALUES ('139', '禧又多土榨菜籽油10L秒杀组', '../img/play22.jpg', '99.00', '00:00-00:39', '2017-10-07 16:28:26', null);
INSERT INTO `tv_show_goods` VALUES ('140', '馨之屋水精灵20+20清洁抢购组', '../img/play26.jpg', '298.00', '00:00-00:39', '2017-10-07 16:28:27', null);
INSERT INTO `tv_show_goods` VALUES ('141', '德国UKS智能烟灶组－莱茵河系', '../img/play29.jpg', '2980.00', '00:00-00:39', '2017-10-07 16:28:28', null);
INSERT INTO `tv_show_goods` VALUES ('142', '艾优品时尚料理机超值组', '../img/play17.jpg', '199.00', '00:00-00:39', '2017-10-07 16:28:31', null);
SET FOREIGN_KEY_CHECKS=1;
