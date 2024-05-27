/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t025`;
CREATE DATABASE IF NOT EXISTS `t025` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t025`;

DROP TABLE IF EXISTS `address`;
CREATE TABLE IF NOT EXISTS `address` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint NOT NULL COMMENT '用户id',
  `address` varchar(200) NOT NULL COMMENT '地址',
  `name` varchar(200) NOT NULL COMMENT '收货人',
  `phone` varchar(200) NOT NULL COMMENT '电话',
  `isdefault` varchar(200) NOT NULL COMMENT '是否默认地址[是/否]',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614757746499 DEFAULT CHARSET=utf8mb3 COMMENT='地址';

DELETE FROM `address`;
INSERT INTO `address` (`id`, `addtime`, `userid`, `address`, `name`, `phone`, `isdefault`) VALUES
	(1, '2021-03-03 07:14:31', 1, '宇宙银河系金星1号', '金某', '13823888881', '是'),
	(2, '2021-03-03 07:14:31', 2, '宇宙银河系木星1号', '木某', '13823888882', '是'),
	(3, '2021-03-03 07:14:31', 3, '宇宙银河系水星1号', '水某', '13823888883', '是'),
	(4, '2021-03-03 07:14:31', 4, '宇宙银河系火星1号', '火某', '13823888884', '是'),
	(5, '2021-03-03 07:14:31', 5, '宇宙银河系土星1号', '土某', '13823888885', '是'),
	(6, '2021-03-03 07:14:31', 6, '宇宙银河系月球1号', '月某', '13823888886', '是'),
	(1614757033717, '2021-03-03 07:37:13', 1614756982123, '广东省揭阳市榕城区中山街道北环城路16号中兴园', '陈一', '12312312312', '是'),
	(1614757746498, '2021-03-03 07:49:05', 1614757696160, '广东省揭阳市榕城区中山街道Show艺数字油画中兴园', '陈一', '12312312312', '是');

DROP TABLE IF EXISTS `cart`;
CREATE TABLE IF NOT EXISTS `cart` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `tablename` varchar(200) DEFAULT 'zuixinxianlu' COMMENT '商品表名',
  `userid` bigint NOT NULL COMMENT '用户id',
  `goodid` bigint NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '图片',
  `buynumber` int NOT NULL COMMENT '购买数量',
  `price` float DEFAULT NULL COMMENT '单价',
  `discountprice` float DEFAULT NULL COMMENT '会员价',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1703725987978 DEFAULT CHARSET=utf8mb3 COMMENT='购物车表';

DELETE FROM `cart`;
INSERT INTO `cart` (`id`, `addtime`, `tablename`, `userid`, `goodid`, `goodname`, `picture`, `buynumber`, `price`, `discountprice`) VALUES
	(1614757109452, '2021-03-03 07:38:28', 'lvyouxianlu', 1614756982123, 1614756810110, '云南大理丽江6天5晚', 'http://localhost:8080/springbootmt74k/upload/1614756714294.jpg', 1, 2000, 0),
	(1614758018421, '2021-03-03 07:53:37', 'zuixinxianlu', 1614757696160, 1614757619035, '桂林4天3晚', 'http://localhost:8080/springbootmt74k/upload/1614757585872.png', 1, 1200, 0),
	(1703725765441, '2023-12-28 01:09:24', 'zuixinxianlu', 11, 42, '线路名称2', 'http://localhost:8080/springbootmt74k/upload/zuixinxianlu_fengmiantu2.jpg', 1, 99.9, 0),
	(1703725987977, '2023-12-28 01:13:07', 'lvyouxianlu', 11, 35, '线路名称5', 'http://localhost:8080/springbootmt74k/upload/1614756215284.jpg', 1, 99.9, 0);

DROP TABLE IF EXISTS `chat`;
CREATE TABLE IF NOT EXISTS `chat` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint NOT NULL COMMENT '用户id',
  `adminid` bigint DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614757928393 DEFAULT CHARSET=utf8mb3 COMMENT='客服聊天表';

DELETE FROM `chat`;
INSERT INTO `chat` (`id`, `addtime`, `userid`, `adminid`, `ask`, `reply`, `isreply`) VALUES
	(51, '2021-03-03 07:14:31', 1, 1, '提问1', '回复1', 1),
	(52, '2021-03-03 07:14:31', 2, 2, '提问2', '回复2', 2),
	(53, '2021-03-03 07:14:31', 3, 3, '提问3', '回复3', 3),
	(54, '2021-03-03 07:14:31', 4, 4, '提问4', '回复4', 4),
	(55, '2021-03-03 07:14:31', 5, 5, '提问5', '回复5', 5),
	(56, '2021-03-03 07:14:31', 6, 6, '提问6', '回复6', 6),
	(1614757183618, '2021-03-03 07:39:43', 1614756982123, NULL, '请问有国外旅游线路吗', NULL, 0),
	(1614757346257, '2021-03-03 07:42:26', 1614756982123, 1, NULL, '1', NULL),
	(1614757887672, '2021-03-03 07:51:26', 1614757696160, NULL, '请问有国外的旅游线路吗', NULL, 0),
	(1614757928392, '2021-03-03 07:52:07', 1614757696160, 1, NULL, '暂时没有', NULL);

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, 'picture1', 'http://localhost:8080/springbootmt74k/upload/1614756378449.jpg'),
	(2, 'picture2', 'http://localhost:8080/springbootmt74k/upload/1614757632893.jpg'),
	(3, 'picture3', 'http://localhost:8080/springbootmt74k/upload/1614756387289.jpg'),
	(6, 'homepage', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png');

DROP TABLE IF EXISTS `discusslvyouxianlu`;
CREATE TABLE IF NOT EXISTS `discusslvyouxianlu` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint NOT NULL COMMENT '关联表id',
  `userid` bigint NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614757117445 DEFAULT CHARSET=utf8mb3 COMMENT='旅游线路评论表';

DELETE FROM `discusslvyouxianlu`;
INSERT INTO `discusslvyouxianlu` (`id`, `addtime`, `refid`, `userid`, `content`, `reply`) VALUES
	(111, '2021-03-03 07:14:31', 1, 1, '评论内容1', '回复内容1'),
	(112, '2021-03-03 07:14:31', 2, 2, '评论内容2', '回复内容2'),
	(113, '2021-03-03 07:14:31', 3, 3, '评论内容3', '回复内容3'),
	(114, '2021-03-03 07:14:31', 4, 4, '评论内容4', '回复内容4'),
	(115, '2021-03-03 07:14:31', 5, 5, '评论内容5', '回复内容5'),
	(116, '2021-03-03 07:14:31', 6, 6, '评论内容6', '回复内容6'),
	(1614757117444, '2021-03-03 07:38:37', 1614756810110, 1614756982123, '不错的路线', NULL);

DROP TABLE IF EXISTS `discusszuixinxianlu`;
CREATE TABLE IF NOT EXISTS `discusszuixinxianlu` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint NOT NULL COMMENT '关联表id',
  `userid` bigint NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614757866075 DEFAULT CHARSET=utf8mb3 COMMENT='最新线路评论表';

DELETE FROM `discusszuixinxianlu`;
INSERT INTO `discusszuixinxianlu` (`id`, `addtime`, `refid`, `userid`, `content`, `reply`) VALUES
	(121, '2021-03-03 07:14:31', 1, 1, '评论内容1', '回复内容1'),
	(122, '2021-03-03 07:14:31', 2, 2, '评论内容2', '回复内容2'),
	(123, '2021-03-03 07:14:31', 3, 3, '评论内容3', '回复内容3'),
	(124, '2021-03-03 07:14:31', 4, 4, '评论内容4', '回复内容4'),
	(125, '2021-03-03 07:14:31', 5, 5, '评论内容5', '回复内容5'),
	(126, '2021-03-03 07:14:31', 6, 6, '评论内容6', '回复内容6'),
	(1614757866074, '2021-03-03 07:51:05', 1614757619035, 1614757696160, '不错的旅游线路', NULL);

DROP TABLE IF EXISTS `lvyouxianlu`;
CREATE TABLE IF NOT EXISTS `lvyouxianlu` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xianlumingcheng` varchar(200) NOT NULL COMMENT '线路名称',
  `xianlufenlei` varchar(200) NOT NULL COMMENT '线路分类',
  `fengmiantu` varchar(200) NOT NULL COMMENT '封面图',
  `jingdianmingcheng` varchar(200) NOT NULL COMMENT '景点名称',
  `chufadi` varchar(200) DEFAULT NULL COMMENT '出发地',
  `mudedi` varchar(200) DEFAULT NULL COMMENT '目的地',
  `jiaotongfangshi` varchar(200) DEFAULT NULL COMMENT '交通方式',
  `chuxingshijian` datetime DEFAULT NULL COMMENT '出行时间',
  `feiyongbaohan` longtext COMMENT '费用包含',
  `xingchengluxian` longtext COMMENT '行程路线',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int DEFAULT '0' COMMENT '点击次数',
  `price` float NOT NULL COMMENT '价格',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614757564119 DEFAULT CHARSET=utf8mb3 COMMENT='旅游线路';

DELETE FROM `lvyouxianlu`;
INSERT INTO `lvyouxianlu` (`id`, `addtime`, `xianlumingcheng`, `xianlufenlei`, `fengmiantu`, `jingdianmingcheng`, `chufadi`, `mudedi`, `jiaotongfangshi`, `chuxingshijian`, `feiyongbaohan`, `xingchengluxian`, `clicktime`, `clicknum`, `price`) VALUES
	(31, '2021-03-03 07:14:31', '线路名称1', '度假旅游', 'http://localhost:8080/springbootmt74k/upload/lvyouxianlu_fengmiantu1.jpg', '景点名称1', '出发地1', '目的地1', '大巴', '2021-03-03 15:14:31', '费用包含1', '<p>行程路线1</p>', '2021-03-03 07:22:16', 4, 99.9),
	(32, '2021-03-03 07:14:31', '线路名称2', '探险考察', 'http://localhost:8080/springbootmt74k/upload/1614756156025.jpg', '景点名称2', '出发地2', '目的地2', '大巴', '2021-03-03 15:14:31', '费用包含2', '<p>行程路线2</p>', '2023-12-28 09:12:12', 6, 99.9),
	(33, '2021-03-03 07:14:31', '线路名称3', '文化旅游', 'http://localhost:8080/springbootmt74k/upload/1614756178466.jpg', '景点名称3', '出发地3', '目的地3', '大巴', '2021-03-03 15:14:31', '费用包含3', '<p>行程路线3</p>', '2021-03-03 07:22:40', 4, 99.9),
	(34, '2021-03-03 07:14:31', '线路名称4', '短程旅游', 'http://localhost:8080/springbootmt74k/upload/1614756198807.jpg', '景点名称4', '出发地4', '目的地4', '大巴', '2021-03-03 15:14:31', '费用包含4', '<p>行程路线4</p>', '2021-03-03 07:23:03', 5, 99.9),
	(35, '2021-03-03 07:14:31', '线路名称5', '观光旅游', 'http://localhost:8080/springbootmt74k/upload/1614756215284.jpg', '景点名称5', '出发地5', '目的地5', '大巴', '2021-03-03 15:14:31', '费用包含5', '<p>行程路线5</p>', '2023-12-28 09:13:13', 17, 99.9),
	(36, '2021-03-03 07:14:31', '线路名称6', '文化旅游', 'http://localhost:8080/springbootmt74k/upload/1614756249981.jpg', '景点名称6', '出发地6', '目的地6', '大巴', '2021-03-03 15:14:31', '费用包含6', '<p>行程路线6</p>', '2021-03-03 07:37:38', 13, 99.9),
	(1614757564118, '2021-03-03 07:46:03', '云南6天5晚', '观光旅游', 'http://localhost:8080/springbootmt74k/upload/1614757486132.jpg', '丽江古城，玉龙雪山，苍山洱海', '广州', '云南', '飞机', '2021-03-04 05:00:00', '机票，住宿费，餐费等', '<p>第1天 昆明长水机场接机--入住酒店--云南夜色</p><p>第2天 游石林-感受“世界自然遗产风光”+石林彝族风味餐</p><p>第3天 大理洱海环游，敞篷吉普车豪华私人游艇+渔鹰表演+罗荃半岛-苍山-蝴蝶泉</p><p>第4天 大理古城 洋人街 拉市海 下午在木府俯瞰丽江古城，欣赏歌舞丽水金沙 晚上纳西族喜宴</p><p>第5天 幽静古朴的束河古镇，海拔4680米的玉龙雪山+冰川大索道+蓝月谷+白水河</p><p>第6天 亚洲最大的鲜花市场，24小时根据航班送到机场或车站</p>', '2021-03-03 07:51:34', 2, 2500);

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614757671445 DEFAULT CHARSET=utf8mb3 COMMENT='旅游资讯';

DELETE FROM `news`;
INSERT INTO `news` (`id`, `addtime`, `title`, `introduction`, `picture`, `content`) VALUES
	(101, '2021-03-03 07:14:31', '标题1', '简介1', 'http://localhost:8080/springbootmt74k/upload/news_picture1.jpg', '内容1'),
	(102, '2021-03-03 07:14:31', '标题2', '简介2', 'http://localhost:8080/springbootmt74k/upload/news_picture2.jpg', '内容2'),
	(103, '2021-03-03 07:14:31', '标题3', '简介3', 'http://localhost:8080/springbootmt74k/upload/news_picture3.jpg', '内容3'),
	(104, '2021-03-03 07:14:31', '标题4', '简介4', 'http://localhost:8080/springbootmt74k/upload/news_picture4.jpg', '内容4'),
	(105, '2021-03-03 07:14:31', '标题5', '简介5', 'http://localhost:8080/springbootmt74k/upload/news_picture5.jpg', '内容5'),
	(106, '2021-03-03 07:14:31', '标题6', '简介6', 'http://localhost:8080/springbootmt74k/upload/news_picture6.jpg', '内容6'),
	(1614757671444, '2021-03-03 07:47:50', '推出新线路', '新线路', 'http://localhost:8080/springbootmt74k/upload/1614757654139.jpg', '<p>推出新线路</p><p><img src="http://localhost:8080/springbootmt74k/upload/1614757669542.png"></p>');

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `orderid` varchar(200) NOT NULL COMMENT '订单编号',
  `tablename` varchar(200) DEFAULT 'zuixinxianlu' COMMENT '商品表名',
  `userid` bigint NOT NULL COMMENT '用户id',
  `goodid` bigint NOT NULL COMMENT '商品id',
  `goodname` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `picture` varchar(200) DEFAULT NULL COMMENT '商品图片',
  `buynumber` int NOT NULL COMMENT '购买数量',
  `price` float NOT NULL DEFAULT '0' COMMENT '价格/积分',
  `discountprice` float DEFAULT '0' COMMENT '折扣价格',
  `total` float NOT NULL DEFAULT '0' COMMENT '总价格/总积分',
  `discounttotal` float DEFAULT '0' COMMENT '折扣总价格',
  `type` int DEFAULT '1' COMMENT '支付类型',
  `status` varchar(200) DEFAULT NULL COMMENT '状态',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  PRIMARY KEY (`id`),
  UNIQUE KEY `orderid` (`orderid`)
) ENGINE=InnoDB AUTO_INCREMENT=1614758027301 DEFAULT CHARSET=utf8mb3 COMMENT='订单';

DELETE FROM `orders`;
INSERT INTO `orders` (`id`, `addtime`, `orderid`, `tablename`, `userid`, `goodid`, `goodname`, `picture`, `buynumber`, `price`, `discountprice`, `total`, `discounttotal`, `type`, `status`, `address`) VALUES
	(1614757238256, '2021-03-03 07:40:37', '20213315403614711707', 'lvyouxianlu', 1614756982123, 1614756810110, '云南大理丽江6天5晚', 'http://localhost:8080/springbootmt74k/upload/1614756714294.jpg', 1, 2000, 2000, 3000, 2000, 1, '未支付', '广东省揭阳市榕城区中山街道北环城路16号中兴园'),
	(1614757895454, '2021-03-03 07:51:34', '20213315513353374216', 'lvyouxianlu', 1614757696160, 1614757564118, '云南6天5晚', 'http://localhost:8080/springbootmt74k/upload/1614757486132.jpg', 1, 2500, 2500, 2500, 2500, 1, '已完成', '广东省揭阳市榕城区中山街道Show艺数字油画中兴园'),
	(1614758027300, '2021-03-03 07:53:46', '20213315534553649075', 'zuixinxianlu', 1614757696160, 1614757619035, '桂林4天3晚', 'http://localhost:8080/springbootmt74k/upload/1614757585872.png', 1, 1200, 1200, 1200, 1200, 1, '已支付', '广东省揭阳市榕城区中山街道Show艺数字油画中兴园');

DROP TABLE IF EXISTS `storeup`;
CREATE TABLE IF NOT EXISTS `storeup` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint NOT NULL COMMENT '用户id',
  `refid` bigint DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1703725994233 DEFAULT CHARSET=utf8mb3 COMMENT='收藏表';

DELETE FROM `storeup`;
INSERT INTO `storeup` (`id`, `addtime`, `userid`, `refid`, `tablename`, `name`, `picture`) VALUES
	(1614757107467, '2021-03-03 07:38:26', 1614756982123, 1614756810110, 'lvyouxianlu', '云南大理丽江6天5晚', 'http://localhost:8080/springbootmt74k/upload/1614756714294.jpg'),
	(1614757140140, '2021-03-03 07:38:59', 1614756982123, 1614756888348, 'zuixinxianlu', '桂林阳朔4天3晚', 'http://localhost:8080/springbootmt74k/upload/1614756840971.png'),
	(1614757812948, '2021-03-03 07:50:12', 1614757696160, 1614757564118, 'lvyouxianlu', '云南6天5晚', 'http://localhost:8080/springbootmt74k/upload/1614757486132.jpg'),
	(1614757858660, '2021-03-03 07:50:57', 1614757696160, 1614757619035, 'zuixinxianlu', '桂林4天3晚', 'http://localhost:8080/springbootmt74k/upload/1614757585872.png'),
	(1703725994232, '2023-12-28 01:13:13', 11, 35, 'lvyouxianlu', '线路名称5', 'http://localhost:8080/springbootmt74k/upload/1614756215284.jpg');

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 1, 'abo', 'users', '管理员', 't7df8k7jsmcramfn4yj537ssvb24n8px', '2021-03-03 07:19:57', '2023-12-28 02:23:18'),
	(2, 1614756982123, '1', 'yonghu', '用户', 'x1jatumvhfm9ra95gbc6d5538tt8niyt', '2021-03-03 07:36:27', '2021-03-03 00:36:28'),
	(3, 1614757696160, '2', 'yonghu', '用户', 'l4cfc4soq7d1xvs5rd8emc3yt8acwilq', '2021-03-03 07:48:21', '2021-03-03 00:52:51'),
	(4, 11, '用户1', 'yonghu', '用户', '8rv4mjx40xo688s6jbxs2zxlalvrbwgl', '2023-12-28 01:09:09', '2023-12-28 02:12:58');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='用户表';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2021-03-03 07:14:31');

DROP TABLE IF EXISTS `xianlufenlei`;
CREATE TABLE IF NOT EXISTS `xianlufenlei` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xianlufenlei` varchar(200) NOT NULL COMMENT '线路分类',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xianlufenlei` (`xianlufenlei`)
) ENGINE=InnoDB AUTO_INCREMENT=1614757461166 DEFAULT CHARSET=utf8mb3 COMMENT='线路分类';

DELETE FROM `xianlufenlei`;
INSERT INTO `xianlufenlei` (`id`, `addtime`, `xianlufenlei`) VALUES
	(21, '2021-03-03 07:14:31', '观光旅游'),
	(22, '2021-03-03 07:14:31', '度假旅游'),
	(23, '2021-03-03 07:14:31', '探险考察'),
	(24, '2021-03-03 07:14:31', '文化旅游'),
	(25, '2021-03-03 07:14:31', '短程旅游'),
	(1614757461165, '2021-03-03 07:44:20', '远程旅游');

DROP TABLE IF EXISTS `yonghu`;
CREATE TABLE IF NOT EXISTS `yonghu` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuming` varchar(200) NOT NULL COMMENT '用户名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `money` float DEFAULT '0' COMMENT '余额',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuming` (`yonghuming`)
) ENGINE=InnoDB AUTO_INCREMENT=1614757696161 DEFAULT CHARSET=utf8mb3 COMMENT='用户';

DELETE FROM `yonghu`;
INSERT INTO `yonghu` (`id`, `addtime`, `yonghuming`, `mima`, `xingming`, `touxiang`, `xingbie`, `lianxidianhua`, `money`) VALUES
	(11, '2021-03-03 07:14:31', '用户1', '123456', '姓名1', 'http://localhost:8080/springbootmt74k/upload/yonghu_touxiang1.jpg', '男', '13823888881', 100),
	(12, '2021-03-03 07:14:31', '用户2', '123456', '姓名2', 'http://localhost:8080/springbootmt74k/upload/yonghu_touxiang2.jpg', '男', '13823888882', 100),
	(13, '2021-03-03 07:14:31', '用户3', '123456', '姓名3', 'http://localhost:8080/springbootmt74k/upload/yonghu_touxiang3.jpg', '男', '13823888883', 100),
	(14, '2021-03-03 07:14:31', '用户4', '123456', '姓名4', 'http://localhost:8080/springbootmt74k/upload/yonghu_touxiang4.jpg', '男', '13823888884', 100),
	(15, '2021-03-03 07:14:31', '用户5', '123456', '姓名5', 'http://localhost:8080/springbootmt74k/upload/yonghu_touxiang5.jpg', '男', '13823888885', 100),
	(16, '2021-03-03 07:14:31', '用户6', '123456', '姓名6', 'http://localhost:8080/springbootmt74k/upload/yonghu_touxiang6.jpg', '男', '13823888886', 100),
	(1614757696160, '2021-03-03 07:48:16', '2', '2', '陈一', 'http://localhost:8080/springbootmt74k/upload/1614757715279.jpeg', '女', '12312345678', 1700);

DROP TABLE IF EXISTS `zuixinxianlu`;
CREATE TABLE IF NOT EXISTS `zuixinxianlu` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xianlumingcheng` varchar(200) NOT NULL COMMENT '线路名称',
  `xianlufenlei` varchar(200) NOT NULL COMMENT '线路分类',
  `fengmiantu` varchar(200) NOT NULL COMMENT '封面图',
  `jingdianmingcheng` varchar(200) NOT NULL COMMENT '景点名称',
  `chufadi` varchar(200) DEFAULT NULL COMMENT '出发地',
  `mudedi` varchar(200) DEFAULT NULL COMMENT '目的地',
  `jiaotongfangshi` varchar(200) DEFAULT NULL COMMENT '交通方式',
  `chuxingshijian` datetime DEFAULT NULL COMMENT '出行时间',
  `feiyongbaohan` longtext COMMENT '费用包含',
  `xingchengluxian` longtext COMMENT '行程路线',
  `price` float NOT NULL COMMENT '价格',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1614757619036 DEFAULT CHARSET=utf8mb3 COMMENT='最新线路';

DELETE FROM `zuixinxianlu`;
INSERT INTO `zuixinxianlu` (`id`, `addtime`, `xianlumingcheng`, `xianlufenlei`, `fengmiantu`, `jingdianmingcheng`, `chufadi`, `mudedi`, `jiaotongfangshi`, `chuxingshijian`, `feiyongbaohan`, `xingchengluxian`, `price`) VALUES
	(41, '2021-03-03 07:14:31', '线路名称1', '探险考察', 'http://localhost:8080/springbootmt74k/upload/zuixinxianlu_fengmiantu1.jpg', '景点名称1', '出发地1', '目的地1', '大巴', '2021-03-03 15:14:31', '费用包含1', '<p><img src="http://localhost:8080/springbootmt74k/upload/1614756033607.png"></p>', 99.9),
	(42, '2021-03-03 07:14:31', '线路名称2', '文化旅游', 'http://localhost:8080/springbootmt74k/upload/zuixinxianlu_fengmiantu2.jpg', '景点名称2', '出发地2', '目的地2', '大巴', '2021-03-03 15:14:31', '费用包含2', '<p>行程路线2</p>', 99.9),
	(43, '2021-03-03 07:14:31', '线路名称3', '度假旅游', 'http://localhost:8080/springbootmt74k/upload/1614756260482.jpg', '景点名称3', '出发地3', '目的地3', '大巴', '2021-03-03 15:14:31', '费用包含3', '<p>行程路线3</p>', 99.9),
	(44, '2021-03-03 07:14:31', '线路名称4', '观光旅游', 'http://localhost:8080/springbootmt74k/upload/1614756298370.jpg', '景点名称4', '出发地4', '目的地4', '大巴', '2021-03-03 15:14:31', '费用包含4', '<p>行程路线4</p>', 99.9),
	(45, '2021-03-03 07:14:31', '线路名称5', '短程旅游', 'http://localhost:8080/springbootmt74k/upload/1614756309699.jpeg', '景点名称5', '出发地5', '目的地5', '大巴', '2021-03-03 15:14:31', '费用包含5', '<p>行程路线5</p>', 99.9),
	(46, '2021-03-03 07:14:31', '线路名称6', '探险考察', 'http://localhost:8080/springbootmt74k/upload/zuixinxianlu_fengmiantu6.jpg', '景点名称6', '出发地6', '目的地6', '大巴', '2021-03-03 15:14:31', '费用包含6', '<p>行程路线6</p>', 99.9),
	(1614757619035, '2021-03-03 07:46:58', '桂林4天3晚', '文化旅游', 'http://localhost:8080/springbootmt74k/upload/1614757585872.png', '漓江', '梅州', '桂林', '高铁', '2021-03-03 07:46:40', '住宿费来回车费等', '<p><img src="http://localhost:8080/springbootmt74k/upload/1614757617098.png"></p>', 1200);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
