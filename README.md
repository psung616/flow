# flow
플로우 과제

# DB 정보
CREATE TABLE `tb_ext` (
  `no` int NOT NULL AUTO_INCREMENT,
  `nm` varchar(100) DEFAULT NULL,
  `chk` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB;

insert into tb_ext (nm, chk) values ('bat',0);
insert into tb_ext (nm, chk) values ('cmd',0);
insert into tb_ext (nm, chk) values ('com',0);
insert into tb_ext (nm, chk) values ('cpl',0);
insert into tb_ext (nm, chk) values ('exe',0);
insert into tb_ext (nm, chk) values ('scr',0);
insert into tb_ext (nm, chk) values ('js',0);
