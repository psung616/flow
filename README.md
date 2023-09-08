# flow
```
서버주소 : http://3.37.26.58:8080/
인프라 : AWS EC2, AWS RDS
언어 및 프레임워크 : JAVA, SPRING BOOT, JSP, JAVASCRIPT, JQUERY, MYBATIS, MYSQL
```
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
