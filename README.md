# flow
플로우 과제

# DB 정보
```
- 고정확장자가 저장될 테이블
CREATE TABLE `tb_ext` (
  `no` int NOT NULL AUTO_INCREMENT,
  `nm` varchar(20) DEFAULT NULL,
  `chk` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB;

- 커스텀확장자가 저장될 테이블
CREATE TABLE `tb_custom` (
  `no` int NOT NULL AUTO_INCREMENT,
  `nm` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`no`)
) ENGINE=InnoDB;

```
