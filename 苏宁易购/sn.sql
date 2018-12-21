 
USE sn

CREATE TABLE `sn_user` (
  `uid` int(11) PRIMARY KEY AUTO_INCREMENT,
  `uname` varchar(32) ,
  `upwd` varchar(32) ,
  `email` varchar(64) ,
  `phone` varchar(16) ,
  `avatar` varchar(128) ,
  `user_name` varchar(32) ,
  `gender` int(11) 
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `sn_user` (`uid`, `uname`, `upwd`, `email`, `phone`, `avatar`, `user_name`, `gender`) VALUES
(1, 'dingding', '123456', 'ding@qq.com', '13511011000', null, '丁春秋', 0),
(2, 'dangdang', '123456', 'dang@qq.com', '13501234568', null, '当当喵', 1),
(3, 'doudou', '123456', 'dou@qq.com', '13501234569', null, '窦志强', 1),
(4, 'yaya', '123456', 'ya@qq.com', '13501234560', null, '秦小雅', 0),
(5, '1111', '111111', '441977193@qq.com', '18357100796', NULL, NULL, NULL),
(6, 'ABCD', '123456', '123@qq.com', '13538894495', NULL, NULL, NULL),
(7, 'mohk', '123456', '11@qq.com', '13512312312', NULL, NULL, NULL),
(8, '121123', 'w13945128995', '491000888@qq.com', '13213389258', NULL, NULL, NULL),
(9, '555555', '5555555', '55555555@163.com', '13400000000', NULL, NULL, NULL),
(10, 'xuyong', '123456', '123456789@qq.com', '15525623622', NULL, NULL, NULL),
(11, 'admin', 'cxy930123', 'mail@xingyu1993.cn', '13580510164', NULL, NULL, NULL),
(12, 'siyongbo', '900427', '616188545@qq.com', '18447103998', NULL, NULL, NULL),
(13, 'qwerty', '123456', '1091256014@qq.com', '15617152367', NULL, NULL, NULL),
(14, 'dingziqiang', '456456', '996534706@qq.com', '15567502520', NULL, NULL, NULL),
(15, 'hdb2264068', 'huang123', '471062503@qq.com', '18898405759', NULL, NULL, NULL),
(16, 'wenhua', '654321', 'liwenhua@tedu.cn', '15012345678', NULL, NULL, NULL),
(17, '<img>', 'cxy930123', 'mail@xingyu1993.cn.1', '11111111111', NULL, NULL, NULL),
(18, '654614', 'cxy930123', 'undefined@asd.com', '22222222222', NULL, '4815', 1),
(19, '456456', 'cxy930123', 'undefined@asd.com', '33333333333', NULL, '546', 0),
(20, '气航航', 'wyh961130', '1419591926@qq.com', '15927204115', NULL, NULL, NULL),
(21, 'Jessy', 'ac210921', '123456@qq.com', '13523456789', NULL, NULL, NULL),
(22, 'yuanxf', '123456', 'yuanxf@tedu.cn', '13537763301', NULL, NULL, NULL),
(23, '查安军', '025520', '27514172112@qq.com', '18158899905', NULL, NULL, NULL),
(24, '123456', '123456', '123456@1.com', '13815668132', NULL, NULL, NULL),
(25, '1234', '111111', '734713428@qq.com', '18061920422', NULL, NULL, NULL),
(26, 'qwe12345', '123123', '1191769510@qq.com', '15234010643', NULL, NULL, NULL),
(27, '海贼王', '5124457', 'hxxcrocky@qq.com', '18826450879', NULL, NULL, NULL),
(28, 'hanrufuyun00', 'hanrufuyun11', '458205630@qq.com', '13853114827', NULL, NULL, NULL),
(29, 'li999999', 'li999999', 'limingdir@163.com', '18557512341', NULL, NULL, NULL),
(30, '111111111111', '123456', '1057631733@qq.com', '15275106677', NULL, NULL, NULL),
(31, 'tom', '123456', 'tom@tedu.cn', '13801234568', NULL, NULL, NULL),
(32, 'zhouzhi', '123456', '2206344145@qq.com', '17600587478', NULL, NULL, NULL),
(33, 'juleck', '123456', 'wuhaofushan@sina.com', '12345678901', NULL, NULL, NULL),
(34, 'yangtao', '123456', '250737026@qq.com', '18256953222', NULL, NULL, NULL),
(35, 'tarena', '123456', '783664829@qq.com', '17711625897', NULL, NULL, NULL),
(36, 'xiaobai', 'xx527603', '1196465493@qq.com', '13980312111', NULL, 'lulu', 0),
(37, '璐璐lu', '546521ll', '1273447080@qq.com', '15892761793', NULL, NULL, NULL),
(38, '胖王二二', 'woaidoubi1.', '1179524522@qq.com', '13269195181', NULL, '', 0),
(39, 'Yeye ', '123456', '1610608370@qq.com', '15062394551', NULL, NULL, NULL),
(40, 'lsj', '123456', '11324564879@qq.com', '13156467891', NULL, NULL, NULL),
(41, 'lsj', '123456', '11324564879@qq.com', '13156467891', NULL, NULL, NULL),
(42, 'lsj', '123456', '11324564879@qq.com', '13156467891', NULL, NULL, NULL),
(43, 'lsj', '123456', '11324564879@qq.com', '13156467891', NULL, NULL, NULL),
(44, 'lsj', '123456', '11324564879@qq.com', '13156467891', NULL, NULL, NULL),
(45, 'hjh', '958030', 'hjh@126.com', '17812344567', NULL, NULL, NULL),
(46, 'ewq', '123456', '1234567890@qq.com', '12345678909', NULL, NULL, NULL),
(47, 'pipi', '123456', '78@qq.com', '12367889993', NULL, NULL, NULL),
(48, 'Lovica', '309418727', '1684707021@qq.com', '18435130456', NULL, NULL, NULL),
(49, 'htt0908', '19920908', '418720482@qq.com', '15244691033', NULL, NULL, NULL),
(50, 'SUXUEMEI', '123456', 'SUXUEMEI@qq.com', '15817338974', NULL, NULL, NULL),
(51, 'zhong', '123456', '123456789@126.com', '13120211111', NULL, NULL, NULL),
(52, '金豆豆', '123456789', '1170363143@qq.com', '15738619097', NULL, NULL, NULL),
(53, 'wangjunfei', '123456', '396225880@qq.com', '13205935797', NULL, NULL, NULL),
(54, 'gijhglkhglkh', '123456', 'sjksfj@fjdh.com', '15698765423', NULL, NULL, NULL),
(55, 'zuiyd1314', 'zuiyh1994', '528396697@qq.com', '15927843908', NULL, NULL, NULL),
(56, 'xiaoming123', '123456', '54646@qq.com', '13553688534', NULL, NULL, NULL),
(57, 'yuanzhi', '123456', '270096123@qq.com', '15962573639', NULL, NULL, NULL),
(58, 'fengkuang11', 'fengkuang113', '1135779768@qq.com', '18559132247', NULL, NULL, NULL),
(59, 'fengkuang', '123456', '113577976@qq.com', '18559132248', NULL, NULL, NULL),
(60, 'yxzaaa', '123456', '2280517552@qq.com', '13716225357', NULL, NULL, NULL),
(61, 'linlei0001', '58874439', '876056078@qq.com', '13390922939', NULL, NULL, NULL),
(62, 'superman', '1314520', '904202099@qq.com', '12345678910', NULL, NULL, NULL),
(63, 'tom222', '123456', '1@163.com', '13456789012', NULL, NULL, NULL),
(64, 'tom1234', '123456', '2@163.com', '13423456789', NULL, NULL, NULL),
(65, 'Liyu123', 'asd8520', '812544715@qq.com', '18911743412', NULL, '左天', 1),
(66, 'Liyu123', 'asd8520', '812544715@qq.com', '18911743412', NULL, NULL, NULL),
(67, '李白李白', '123456', '125365@163.com', '13986273022', NULL, NULL, NULL),
(68, 'dingdong', '123456', '15194898156@qq.com', '15112316516', NULL, NULL, NULL),
(69, 'wenjinhua', '236239', '461677613@qq.com', '13516574786', NULL, NULL, NULL),
(70, 'thebigleg', '1a4b2c8d5e7f', '1352951609@qq.com', '13572508752', NULL, NULL, NULL),
(71, 'zhangsan', 'add123456', 'add@qq.com', '12234324223', NULL, NULL, NULL),
(72, '高渐离', '123456', '935263676@qq.com', '18352501250', NULL, NULL, NULL),
(73, 'lifan', '123456', '18092034652@163.com', '18092933456', NULL, NULL, NULL),
(74, 'zhangsan99', '123456zs', '876987366@qq.com', '13934721892', NULL, NULL, NULL),
(75, 'tingDING', '123456', '12345678@qq.com', '13548525468', NULL, NULL, NULL),
(76, 'dongdong', '123456', 'wenhua@taqobao.com', '13946585968', NULL, NULL, NULL),
(77, 'weiyiwei', '123456', '598475405@qq.com', '15923741956', NULL, '韦祎伟', 1),
(78, '落英缤纷赋酒诗', 'sAberTime050', '857464657@qq.com', '17727420979', NULL, NULL, NULL),
(79, 'xiaoming1234', '123456', '4564564564@qq.com', '15269188535', NULL, NULL, NULL),
(80, 'loonchao', '123456', '850248873@qq.com', '13548729051', NULL, NULL, NULL),
(81, 'hushuang', '123456', '850248813@qq.com', '15802507525', NULL, NULL, NULL),
(82, 'test713', '2017713', '12458148@qq.com', '13596542654', NULL, NULL, NULL),
(83, 'fhr9588', '000009588', '111111111@qq.com', '12345666666', NULL, NULL, NULL),
(84, 'baibaidexue', '13809024377', '408130701@qq.com', '18301973827', NULL, NULL, NULL),
(85, 'tom10', '123456', '123@163.com', '12323456', NULL, NULL, NULL),
(86, '12121', '121212', '516898@qq.com', '15163222922', NULL, NULL, NULL),
(87, '小芳', 'qwer123', 'fdg@sd.com', '15163222923', NULL, '4815', 0),
(88, '大芳', '111111', '123564@123.com', '17704622223', NULL, '3454', 0),
(89, 'smm123456', '963852741', '974255093@qq.com', '15098807312', NULL, NULL, NULL),
(90, 'Wenhua.Li', 'libenka', 'wenhua.li@tedu.cn', '13912345678', NULL, NULL, NULL),
(91, '芳芳', '12456789', '123564@123.com', '17704622223', NULL, '3454', 0);

CREATE TABLE `sn_laptop_family` (
  `fid` int(11) NOT NULL,
  `fname` varchar(32)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `sn_laptop_family` (`fid`, `fname`) VALUES
(1, '苏宁Outlets'),
(2, '生活家电'),
(3, '苏宁国际'),
(4, '苏宁生鲜'),
(5, '企业采购'),
(6, '智能生活'),


CREATE TABLE `sn_laptop_list` (
   `tid` int(11) NOT NULL,
   `tname` varchar(32)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


INSERT INTO `sn_laptop_list` (`tid`,`tname`) VALUES
(1,'手机'),
(2,'运营商'),
(3,'智能数码'),
(4,'电视'),
(5,'冰箱'),
(6,'空调'),
(6,'厨卫大电'),
(7,'生活家居'),
(8,'厨具'),
(9,'电脑办公'),
(10,'相机'),
(11,'DIV'),
(12,'家居'),
(13,'家具'),
(14,'家装'),
(15,'食品'),
(16,'酒水')

CREATE TABLE `sn_lunbo_pic` (
  `lpid` int(11) NOT NULL,
  `add` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `sn_lunbo_pic` (`lpid`, `add`) VALUES
(1, 'img/lunbo/lunb1.jpg'),
(2, 'img/lunbo/lunb2.jpg'),
(3, 'img/lunbo/lunb3.jpg'),
(4, 'img/lunbo/lunb4.jpg')

CREATE TABLE `sn_products` (
  `pid` int(11) NOT NULL,
  `fid` int(11) DEFAULT NULL,
  `title` varchar(128),
  `price` decimal(10,2),
  `href` varchar(128) DEFAULT NULL,
  `sold_count` int(11),
  `is_onsale` tinyint(1)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `sn_products` (`pid`, `fid`, `title`, `price`,`href`, `sold_count`, `is_onsale`) VALUES
(1, 1, '【套餐】Apple MacBook Air MQD32CH/A笔记本+内胆包 玫瑰金', '6697','img/products/945022107.jpg', 2968, 1),
(2, 1, '联想(Lenovo) 拯救者Y7000 15.6英寸游戏本笔记本电脑（i7-8750H 8GB 2TB+128GB G', '7299','img/products/201811101051081957_x.jpg', 2968, 1),
(3, 1, '2018新品 Apple MacBook Air 13.3英寸笔记本电脑（i5 1.6GHz 8G 128G MREE2CH/', '9499','img/products/201811111148082663_x.jpg', 2968, 1),
(4, 1, '华硕(ASUS)飞行堡垒五代FX80GE 15.6英寸游戏本学生笔记本电脑(i5-8300H 8G 1TB+1', '6299','img/products/201811120622048218_x.jpg', 2968, 1),
(5, 1, '惠普(HP)星系列星14-ce1010TX 14.0英寸轻薄本笔记本电脑（i7-8565U 1TB+256GB 2G独显）', '6799','img/products/201811120623063812_x.jpg', 2968, 1),
(6, 1, '联想(Lenovo)拯救者Y7000 15.6英寸游戏本笔记本电脑(i5-8300H 8G 2TB+128GB GTX', '6599','img/products/201811120637566355_x.jpg', 2968, 1),
(7, 1, '华硕顽石(ASUS)热血版YX570 15.6英寸游戏本笔记本电脑 (R5-2500U 4GB 1TB GTX105', '4499','img/products/100688544848840015215151_x.png', 2968, 1),
(8, 1, '联想(Lenovo)小新Air15 15.6英寸超轻薄窄边框轻薄本笔记本电脑(i5-8250U 8G 256GB P', '5399','img/products/131560692016915435585923_x.jpg', 2968, 1),
(9, 1, '小米(MI)Pro 15.6英寸全金属轻薄本笔记本电脑(i5-8250U 8G 256GSSD 2G独显 预装office 指纹识别 背光键盘 灰色)', '5599','img/products/134769887815231237173088_x.jpg', 2968, 1),
(10, 1, '联想ThinkPad E480 (3DCD) 14英寸窄边框轻薄本笔记本电脑 i3 4G 500G 经典黑', '3299','img/products/136565574012358278817818_x.jpg', 2968, 1),
(11, 1, 'Apple MacBook Pro 13.3英寸 笔记本电脑 深空灰（i5处理器 2.3GHz 8GB内存 128GB', '9588','img/products/162826475320310973946031_x.jpg', 2968, 1),
(12, 1, '华硕(ASUS)顽石YX560UD英特尔® 酷睿™ i5-8250U 8G 1TB+128GB固态 GTX1050-4', '5399','img/products/181247772517339310571186_x.jpg', 2968, 1),
(13, 1, '机械师（MACHENIKE） T90-T6CP升级版144Hz电竞屏15.6英寸吃鸡游戏本笔记本电脑', '8499','img/products/193258944210898900675543_x.jpg', 2968, 1),
(14, 1, '华硕(ASUS)灵耀U 2代 13.3英寸四面微边全面屏超轻薄本笔记本电脑(Intel i5-8265U 8G ', '6499','img/products/194659182173850080425644_x.jpg', 2968, 1),
(15, 1, '联想ThinkPad E480 (3BCD) 14英寸窄边框轻薄本笔记本电脑 i5 4G 500G 2G独显 经典', '4299','img/products/198842255310187584833937_x.jpg', 2968, 1),
(16, 1, '惠普(HP) HP14s-cf0002TU 14.0英寸轻薄本笔记本（窄边框 双核 128GB固态 白）', '2799','img/products/384175351126025357661253_x.jpg', 2968, 1),
(17, 1, '华硕(ASUS)顽石畅玩版A F540 R540UP8250英特尔®酷睿™i5-8250U 8GB 256GB固态 2', '3999','img/products/619728958619532890737923_x.jpg', 2968, 1),
(18, 1, '联想ThinkPad X280（1PCD）12.5英寸轻薄本笔记本电脑 i5-8250U 8GB 256GB', '6599','img/products/757737771200785124774962_x.jpg', 2968, 1),
(19, 1, '小米(MI) Ruby 15.6英寸轻薄本笔记本电脑(i3-8130U 4G 大容量固态硬盘 深空灰)', '3399','img/products/907917810249828923942033_x.jpg', 2968, 1),
(20, 1, '戴尔（DELL）Ins 15-3576-R2525B 15.6英寸灵越轻薄笔记本电脑i5-7200U 4G 500G ', '3199','img/products/961441752647617784966325_x.jpg', 2968, 1),
(21, 1, '【套餐】Apple MacBook Air MQD32CH/A笔记本+内胆包 玫瑰金', '6697','img/products/945022107.jpg', 2968, 1),
(22, 1, '联想(Lenovo) 拯救者Y7000 15.6英寸游戏本笔记本电脑（i7-8750H 8GB 2TB+128GB G', '7299','img/products/201811101051081957_x.jpg', 2968, 1),
(23, 1, '2018新品 Apple MacBook Air 13.3英寸笔记本电脑（i5 1.6GHz 8G 128G MREE2CH/', '9499','img/products/201811111148082663_x.jpg', 2968, 1),
(24, 1, '华硕(ASUS)飞行堡垒五代FX80GE 15.6英寸游戏本学生笔记本电脑(i5-8300H 8G 1TB+1', '6299','img/products/201811120622048218_x.jpg', 2968, 1),
(25, 1, '惠普(HP)星系列星14-ce1010TX 14.0英寸轻薄本笔记本电脑（i7-8565U 1TB+256GB 2G独显）', '6799','img/products/201811120623063812_x.jpg', 2968, 1),
(26, 1, '联想(Lenovo)拯救者Y7000 15.6英寸游戏本笔记本电脑(i5-8300H 8G 2TB+128GB GTX', '6599','img/products/201811120637566355_x.jpg', 2968, 1),
(27, 1, '华硕顽石(ASUS)热血版YX570 15.6英寸游戏本笔记本电脑 (R5-2500U 4GB 1TB GTX105', '4499','img/products/100688544848840015215151_x.png', 2968, 1),
(28, 1, '联想(Lenovo)小新Air15 15.6英寸超轻薄窄边框轻薄本笔记本电脑(i5-8250U 8G 256GB P', '5399','img/products/131560692016915435585923_x.jpg', 2968, 1),
(29, 1, '小米(MI)Pro 15.6英寸全金属轻薄本笔记本电脑(i5-8250U 8G 256GSSD 2G独显 预装office 指纹识别 背光键盘 灰色)', '5599','img/products/134769887815231237173088_x.jpg', 2968, 1),
(30, 1, '联想ThinkPad E480 (3DCD) 14英寸窄边框轻薄本笔记本电脑 i3 4G 500G 经典黑', '3299','img/products/136565574012358278817818_x.jpg', 2968, 1),
(31, 1, 'Apple MacBook Pro 13.3英寸 笔记本电脑 深空灰（i5处理器 2.3GHz 8GB内存 128GB', '9588','img/products/162826475320310973946031_x.jpg', 2968, 1),
(32, 1, '华硕(ASUS)顽石YX560UD英特尔® 酷睿™ i5-8250U 8G 1TB+128GB固态 GTX1050-4', '5399','img/products/181247772517339310571186_x.jpg', 2968, 1),
(33, 1, '机械师（MACHENIKE） T90-T6CP升级版144Hz电竞屏15.6英寸吃鸡游戏本笔记本电脑', '8499','img/products/193258944210898900675543_x.jpg', 2968, 1),
(34, 1, '华硕(ASUS)灵耀U 2代 13.3英寸四面微边全面屏超轻薄本笔记本电脑(Intel i5-8265U 8G ', '6499','img/products/194659182173850080425644_x.jpg', 2968, 1),
(35, 1, '联想ThinkPad E480 (3BCD) 14英寸窄边框轻薄本笔记本电脑 i5 4G 500G 2G独显 经典', '4299','img/products/198842255310187584833937_x.jpg', 2968, 1),
(36, 1, '惠普(HP) HP14s-cf0002TU 14.0英寸轻薄本笔记本（窄边框 双核 128GB固态 白）', '2799','img/products/384175351126025357661253_x.jpg', 2968, 1),
(37, 1, '华硕(ASUS)顽石畅玩版A F540 R540UP8250英特尔®酷睿™i5-8250U 8GB 256GB固态 2', '3999','img/products/619728958619532890737923_x.jpg', 2968, 1),
(38, 1, '联想ThinkPad X280（1PCD）12.5英寸轻薄本笔记本电脑 i5-8250U 8GB 256GB', '6599','img/products/757737771200785124774962_x.jpg', 2968, 1),
(39, 1, '小米(MI) Ruby 15.6英寸轻薄本笔记本电脑(i3-8130U 4G 大容量固态硬盘 深空灰)', '3399','img/products/907917810249828923942033_x.jpg', 2968, 1),
(40, 1, '戴尔（DELL）Ins 15-3576-R2525B 15.6英寸灵越轻薄笔记本电脑i5-7200U 4G 500G ', '3199','img/products/961441752647617784966325_x.jpg', 2968, 1),
(41, 1, '【套餐】Apple MacBook Air MQD32CH/A笔记本+内胆包 玫瑰金', '6697','img/products/945022107.jpg', 2968, 1),
(42, 1, '联想(Lenovo) 拯救者Y7000 15.6英寸游戏本笔记本电脑（i7-8750H 8GB 2TB+128GB G', '7299','img/products/201811101051081957_x.jpg', 2968, 1),
(43, 1, '2018新品 Apple MacBook Air 13.3英寸笔记本电脑（i5 1.6GHz 8G 128G MREE2CH/', '9499','img/products/201811111148082663_x.jpg', 2968, 1),
(44, 1, '华硕(ASUS)飞行堡垒五代FX80GE 15.6英寸游戏本学生笔记本电脑(i5-8300H 8G 1TB+1', '6299','img/products/201811120622048218_x.jpg', 2968, 1),
(45, 1, '惠普(HP)星系列星14-ce1010TX 14.0英寸轻薄本笔记本电脑（i7-8565U 1TB+256GB 2G独显）', '6799','img/products/201811120623063812_x.jpg', 2968, 1),
(46, 1, '联想(Lenovo)拯救者Y7000 15.6英寸游戏本笔记本电脑(i5-8300H 8G 2TB+128GB GTX', '6599','img/products/201811120637566355_x.jpg', 2968, 1),
(47, 1, '华硕顽石(ASUS)热血版YX570 15.6英寸游戏本笔记本电脑 (R5-2500U 4GB 1TB GTX105', '4499','img/products/100688544848840015215151_x.png', 2968, 1),
(48, 1, '联想(Lenovo)小新Air15 15.6英寸超轻薄窄边框轻薄本笔记本电脑(i5-8250U 8G 256GB P', '5399','img/products/131560692016915435585923_x.jpg', 2968, 1),
(49, 1, '小米(MI)Pro 15.6英寸全金属轻薄本笔记本电脑(i5-8250U 8G 256GSSD 2G独显 预装office 指纹识别 背光键盘 灰色)', '5599','img/products/134769887815231237173088_x.jpg', 2968, 1),
(50, 1, '联想ThinkPad E480 (3DCD) 14英寸窄边框轻薄本笔记本电脑 i3 4G 500G 经典黑', '3299','img/products/136565574012358278817818_x.jpg', 2968, 1),
(51, 1, 'Apple MacBook Pro 13.3英寸 笔记本电脑 深空灰（i5处理器 2.3GHz 8GB内存 128GB', '9588','img/products/162826475320310973946031_x.jpg', 2968, 1),
(52, 1, '华硕(ASUS)顽石YX560UD英特尔® 酷睿™ i5-8250U 8G 1TB+128GB固态 GTX1050-4', '5399','img/products/181247772517339310571186_x.jpg', 2968, 1),
(53, 1, '机械师（MACHENIKE） T90-T6CP升级版144Hz电竞屏15.6英寸吃鸡游戏本笔记本电脑', '8499','img/products/193258944210898900675543_x.jpg', 2968, 1),
(54, 1, '华硕(ASUS)灵耀U 2代 13.3英寸四面微边全面屏超轻薄本笔记本电脑(Intel i5-8265U 8G ', '6499','img/products/194659182173850080425644_x.jpg', 2968, 1),
(55, 1, '联想ThinkPad E480 (3BCD) 14英寸窄边框轻薄本笔记本电脑 i5 4G 500G 2G独显 经典', '4299','img/products/198842255310187584833937_x.jpg', 2968, 1),
(56, 1, '惠普(HP) HP14s-cf0002TU 14.0英寸轻薄本笔记本（窄边框 双核 128GB固态 白）', '2799','img/products/384175351126025357661253_x.jpg', 2968, 1),
(57, 1, '华硕(ASUS)顽石畅玩版A F540 R540UP8250英特尔®酷睿™i5-8250U 8GB 256GB固态 2', '3999','img/products/619728958619532890737923_x.jpg', 2968, 1),
(58, 1, '联想ThinkPad X280（1PCD）12.5英寸轻薄本笔记本电脑 i5-8250U 8GB 256GB', '6599','img/products/757737771200785124774962_x.jpg', 2968, 1),
(59, 1, '小米(MI) Ruby 15.6英寸轻薄本笔记本电脑(i3-8130U 4G 大容量固态硬盘 深空灰)', '3399','img/products/907917810249828923942033_x.jpg', 2968, 1),
(60, 1, '戴尔（DELL）Ins 15-3576-R2525B 15.6英寸灵越轻薄笔记本电脑i5-7200U 4G 500G ', '3199','img/products/961441752647617784966325_x.jpg', 2968, 1)


CREATE TABLE `sn_index_product`(
  `pid` int(11) NOT NULL,
  `title` varchar(64) DEFAULT NULL,
  `manjian` varchar(32) DEFAULT NULL,
  `img` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `sn_index_product` (`pid`,`title`,`manjian`,`img`) VALUES
(1,'11.11 服饰抢先购','折后满399减200','img/index_product/f_1.jpg'),
(2,'GXG 魅力男装','折后满399减200','img/index_product/f_2.jpg'),
(3,'茵曼 衣见倾心','折后满399减200','img/index_product/f_3.jpg'),
(4,'阿玛尼 隽永时光','折后满399减200','img/index_product/f_4.jpg'),
(5,'迈克科尔斯 时尚美包','折后满399减200','img/index_product/f_5.jpg'),
(6,'苏宁国际','保健狂欢日 满299减150','img/index_product/g_1.jpg'),
(7,'全球狂欢节 好货抢先定','定金1抵300','img/index_product/g_2.jpg'),
(8,'保健狂欢日 疯抢好物','满299减150','img/index_product/g_3.jpg'),
(9,'国际直营 正品保证','闪电发货','img/index_product/g_4.jpg'),
(10,'最强剁手榜 爆款汇聚','尖货不得不败','img/index_product/g_5.jpg'),
(11,'生活家电 好价狂欢','最高立减150元','img/index_product/d_1.jpg'),
(12,'生活家电 超值优惠','9.9元抢好货','img/index_product/d_2.jpg'),
(13,'生活家电 火锅节','满100减20','img/index_product/d_3.jpg'),
(14,'荣事达11.11提前购','爆款39元起','img/index_product/d_4.jpg'),
(15,'趁现在 放肆美','买赠好礼','img/index_product/d_5.jpg'),
(16,'苏宁生鲜','每满99减30','img/index_product/s_1.png'),
(17,'企业采购季','购彩电送499拉杆箱','img/index_product/s_2.png'),
(18,'智能生活','预付定金最高翻30倍','img/index_product/s_3.png')

