SET NAMES UTF8;
DROP DATABASE IF EXISTS wr;
CREATE DATABASE wr CHARSET=UTF8;
USE wr;
/**货品**/
CREATE  TABLE  wr_goods(
	gid  INT PRIMARY KEY AUTO_INCREMENT,
	o_price DECIMAL(10,2), 
	n_price DECIMAL(10,2), 
	title VARCHAR(128), 
	sales INT,
	collect BOOLEAN DEFAULT '0',
	gnum VARCHAR(10),   #货号
	weight DECIMAL(4,3),  #重量
	integral DECIMAL(4,2),  #积分
	fid INT,				#所属类别
	img VARCHAR(128) DEFAULT 'img/goods/'
);


/**货品图片**/
CREATE TABLE wr_goods_pic(
  pid INT PRIMARY KEY AUTO_INCREMENT,
  gid INT,              #货品编号
  img VARCHAR(128)   DEFAULT 'img/goods/'            #小图片路径 #中图片路径#大图片路径
);
/**用户信息**/
CREATE TABLE wr_user(
  uid INT PRIMARY KEY AUTO_INCREMENT,
  uname VARCHAR(32),
  upwd VARCHAR(32),
  email VARCHAR(64),
  phone VARCHAR(16),

  avatar VARCHAR(128),        #头像图片路径
  user_name VARCHAR(32),      #用户名，如王小明
  gender INT                  #性别  0-女  1-男
);
/**购物车条目**/
CREATE TABLE wr_cart(
  cid INT PRIMARY KEY AUTO_INCREMENT,
  uid INT,      #用户编号
  gid INT,   #商品编号
  count INT,        #购买数量
  is_checked BOOLEAN #是否已勾选，确定购买
);

INSERT INTO `wr_goods`   VALUES 
	(NULL, '208.00', '179.00', '福运堂 中草药烟嘴', '7931','0' , 'A100360', '0.490', '1.00',  '0','img/goods/A100360.jpg'),
	(NULL, '230.00', '150.00', '福运堂 中草药烟嘴', '18627','0' , 'A100309', '0.200', '0.70', '0', 'img/goods/A100309.jpg'),
	(NULL, '29.80', '18.00', '健滋宝 喉立爽口腔喷剂', '18627', '0', 'A100786', '0.050', '0.10',  '0','img/goods/A100786.jpg'),
	(NULL, '219.00', '159.00', '量子能量袜', '23', '0', 'B100787', '0.250', '1.50', '1', 'img/goods/B100787.jpg'),
	(NULL, '25.00', '18.00', '真之美 洗手液', '741', '0', 'B100742', '0.540', '0.10', '1', 'img/goods/zzm.jpg'),
	(NULL, '128.00', '99.00', '瑞璞牡丹 焕颜醒肤面膜', '14', '0', 'B100782', '0.230', '1.00', '1', 'img/goods/B100782.jpg'),
	(NULL, '680.00', '450.00', '爱诺 活水杯', '51491', '0', 'B10220', '0.600', '1.00', '1', 'img/goods/B10220.jpg'),
	(NULL, '48.00', '22.00', '艾美佳 酵素洗衣液', '645', '0', 'B100777', '0.580', '0.20', '1', 'img/goods/B100777.jpg'),
	(NULL, '780.00', '600.00', '清荷羽 诺丽浓缩液（果浆）', '2058', '0', 'A100655', '0.700', '3.00', '0', 'img/goods/A100655.jpg'),
	(NULL, '298.00', '278.00', '范氏 防蓝光防辐射护目镜', '391', '0', 'A100728', '0.150', '2.00', '0', 'img/goods/A100728.jpg'),
	(NULL, '138.00', '138.00', '【一件包邮】 电热水袋', '56', '0', 'B100761', '0.050', '0.50', '2', 'img/goods/B100761.jpg'),
	(NULL, '25.00', '25.00', '【一件包邮】 秆餐具套装 ', '63', '0', 'B100776', '0.000', '0.10', '2', 'img/goods/B100776.jpg'),
	(NULL, '199.00', '199.00', '【一件包邮】 哈密瓜纳米洗衣球', '35', '0', 'B100688', '0.050', '0.30', '2', 'img/goods/B100688.jpg'),
	(NULL, '168.00', '168.00', '【一件包邮】金稻 直发卷发梳', '435', '0', 'B100702', '0.200', '1.00', '2', 'img/goods/B100702.jpg'),
	(NULL, '20.00', '20.00', '【一件包邮】 插排 洪剑电器 带线家用多功能多孔电源', '340', '0', 'B100682', '0.200', '1.00', '2', 'img/goods/B100682.jpg'),
	(NULL, '29.90', '29.90', '【一件包邮】百诚675型号钥匙扣', '22', '0', 'B100706', '0.200', '0.50', '2', 'img/goods/B100706.jpg'),
	(NULL, '598.00', '498.00', '金六福 珍藏18', '945', '0', 'A100664', '0.000', '5.00', '0', 'img/goods/A100664.jpg'),
	(NULL, '18.00', '14.00', 'PIAO DIAN 香皂系列', '2148', '0', 'B100662', '0.120', '0.10', '1', 'img/goods/B100662.jpg'),
	(NULL, '29.00', '26.00', '熊猫肤宝抑菌乳膏', '10019', '0', 'A100458', '0.027', '0.20', '0', 'img/goods/A100458.jpg'),
	(NULL, '142.00', '132', '芙活派 微环境复活水', 2229, '0', 'B100580', '0.350', '1.00', '1', 'img/goods/B100580.jpg'),
	(NULL, '439.00', '390.00', '富硒 蛋白肽', 22518, 0, 'A100356', '0.518', '2.20', 0, 'img/goods/A100356.jpg'),
	(NULL, '79.00', '68.00', '碟美蔻 防晒隔离喷雾', '11556', '0', 'B100483', '0.159', '0.50', '1', 'img/goods/B100483.jpg');


	INSERT INTO `wr_goods_pic` (`pid`, `gid`, `img`) VALUES 
		(NULL, '1', 'img/goods/A100360l.jpg'),
		(NULL, '2', 'img/goods/A100309l.jpg');
	INSERT INTO `wr_goods_pic` (`pid`, `gid`, `img`) VALUES 
		(NULL, '3', 'img/goods/A100786l1.jpg'), 
		(NULL, '3', 'img/goods/A100786l2.jpg'), 
		(NULL, '3', 'img/goods/A100786l3.jpg');
	INSERT INTO `wr_goods_pic` (`pid`, `gid`, `img`) VALUES 
		(NULL, '4', 'img/goods/B100787l.jpg');
	INSERT INTO `wr_goods_pic` (`pid`, `gid`, `img`) VALUES
		(NULL, '5', 'img/goods/zzml1.jpg'), 
		(NULL, '5', 'img/goods/zzml2.jpg'), 
		(NULL, '5', 'img/goods/zzml3.jpg');
	INSERT INTO `wr_goods_pic` (`pid`, `gid`, `img`) VALUES 
		(NULL, '6', 'img/goods/B100782l.jpg');
	INSERT INTO `wr_goods_pic` (`pid`, `gid`, `img`) VALUES 
		(NULL, '7', 'img/goods/B10220l.jpg');
	INSERT INTO `wr_goods_pic` (`pid`, `gid`, `img`) VALUES 
		(NULL, '8', 'img/goods/B100777l.jpg');
	INSERT INTO `wr_goods_pic` (`pid`, `gid`, `img`) VALUES 
		(NULL, '9', 'img/goods/A100655l1.jpg'), 
		(NULL, '9', 'img/goods/A100655l2.jpg'), 
		(NULL, '9', 'img/goods/A100655l3.jpg'), 
		(NULL, '9', 'img/goods/A100655l4.jpg'), 
		(NULL, '9', 'img/goods/A100655l5.jpg');
	INSERT INTO `wr_goods_pic` (`pid`, `gid`, `img`) VALUES 
		(NULL, '10', 'img/goods/A100728l1.jpg'),
		(NULL, '10', 'img/goods/A100728l2.jpg');
	INSERT INTO `wr_goods_pic` (`pid`, `gid`, `img`) VALUES 
		(NULL, '11', 'img/goods/B100761l.jpg'),
		(NULL, '11', 'img/goods/B100761l1.jpg');
	INSERT INTO `wr_goods_pic` (`pid`, `gid`, `img`) VALUES 
		(NULL, '12', 'img/goods/B100776l1.jpg'), 
		(NULL, '12', 'img/goods/B100776l2.jpg'), 
		(NULL, '12', 'img/goods/B100776l3.jpg'), 
		(NULL, '12', 'img/goods/B100776l4.jpg'), 
		(NULL, '12', 'img/goods/B100776l5.jpg');
	INSERT INTO `wr_goods_pic` (`pid`, `gid`, `img`) VALUES 
		(NULL, '13', 'img/goods/B100688l1.jpg'), (NULL, '13', 'img/goods/B100688l2.jpg'), (NULL, '13', 'img/goods/B100688l3.jpg'), (NULL, '13', 'img/goods/B100688l4.jpg');
	INSERT INTO `wr_goods_pic` (`pid`, `gid`, `img`) VALUES 
		(NULL, '14', 'img/goods/B100702l1.jpg'), 
		(NULL, '14', 'img/goods/B100702l2.jpg');
	INSERT INTO `wr_goods_pic` (`pid`, `gid`, `img`) VALUES 
		(NULL, '15', 'img/goods/B100682l.jpg');
	INSERT INTO `wr_goods_pic` (`pid`, `gid`, `img`) VALUES 
		(NULL, '16', 'img/goods/B100706l.jpg'), 
		(NULL, '16', 'img/goods/B100706l1.jpg');
	INSERT INTO `wr_goods_pic` (`pid`, `gid`, `img`) VALUES 
		(NULL, '17', 'img/goods/A100664l.jpg');
	INSERT INTO `wr_goods_pic` (`pid`, `gid`, `img`) VALUES 
		(NULL, '18', 'img/goods/B100662l1.jpg'), 
		(NULL, '18', 'img/goods/B100662l2.jpg'), 
		(NULL, '18', 'img/goods/B100662l3.jpg');
	INSERT INTO `wr_goods_pic` (`pid`, `gid`, `img`) VALUES 
		(NULL, '19', 'img/goods/A100458l1.jpg'),
		(NULL, '19', 'img/goods/A100458l2.jpg');
	INSERT INTO `wr_goods_pic` (`pid`, `gid`, `img`) VALUES 
		(NULL, '20', 'img/goods/B100580l1.jpg'), 
		(NULL, '20', 'img/goods/B100580l2.jpg');
	INSERT INTO `wr_goods_pic` (`pid`, `gid`, `img`) VALUES
		(NULL, '21', 'img/goods/A100356.jpg');
	INSERT INTO `wr_goods_pic` (`pid`, `gid`, `img`) VALUES
		(NULL, '22', 'img/goods/B100483l.jpg');




/**用户信息**/
INSERT INTO wr_user VALUES
(NULL, 'dingding', '123456', 'ding@qq.com', '13501234567', 'img/avatar/default.png', '丁伟', '1'),
(NULL, 'dangdang', '123456', 'dang@qq.com', '13501234568', 'img/avatar/default.png', '林当', '1'),
(NULL, 'doudou', '123456', 'dou@qq.com', '13501234569', 'img/avatar/default.png', '窦志强', '1'),
(NULL, 'yaya', '123456', 'ya@qq.com', '13501234560', 'img/avatar/default.png', '秦小雅', '0');





