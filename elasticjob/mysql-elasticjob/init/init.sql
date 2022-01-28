CREATE DATABASE IF NOT EXISTS `test`;
USE `test`;

CREATE TABLE task (
  task_id character varying(64) NOT NULL,
  location varchar(50) NOT NULL,
  status varchar(64) NOT NULL,
  CONSTRAINT pk_task_id PRIMARY KEY ( task_id )
)
-- 測試資料1
INSERT INTO test.task (task_id, location, status)
VALUES
    ('1', 'Beijing', 'TODO'),('2', 'Beijing', 'TODO'),('3', 'Beijing', 'TODO'),('4', 'Beijing', 'TODO'),
    ('5', 'Beijing', 'TODO'),('6', 'Beijing', 'TODO'),('7', 'Beijing', 'TODO'),('8', 'Beijing', 'TODO'),('9', 'Beijing', 'TODO'),
    ('10', 'Beijing', 'TODO'),('11', 'Beijing', 'TODO'),('12', 'Beijing', 'TODO'),('13', 'Beijing', 'TODO'),('14', 'Beijing', 'TODO'),
    ('15', 'Beijing', 'TODO'),('16', 'Beijing', 'TODO'),('17', 'Beijing', 'TODO'),('18', 'Beijing', 'TODO'),('19', 'Beijing', 'TODO'),
    ('20', 'Beijing', 'TODO'),('21', 'Beijing', 'TODO'),('22', 'Beijing', 'TODO'),('23', 'Beijing', 'TODO'),('24', 'Beijing', 'TODO'),
    ('25', 'Beijing', 'TODO'),('26', 'Beijing', 'TODO'),('27', 'Beijing', 'TODO'),('28', 'Beijing', 'TODO'),('29', 'Beijing', 'TODO'),
    ('30', 'Beijing', 'TODO'),('31', 'Beijing', 'TODO'),('32', 'Beijing', 'TODO'),('33', 'Beijing', 'TODO'),('34', 'Beijing', 'TODO'),
    ('35', 'Beijing', 'TODO'),('36', 'Beijing', 'TODO'),('37', 'Beijing', 'TODO'),('38', 'Beijing', 'TODO'),('39', 'Beijing', 'TODO'),
    ('40', 'Beijing', 'TODO'),('41', 'Beijing', 'TODO'),('42', 'Beijing', 'TODO'),('43', 'Beijing', 'TODO'),('44', 'Beijing', 'TODO'),
    ('45', 'Beijing', 'TODO'),('46', 'Beijing', 'TODO'),('47', 'Beijing', 'TODO'),('48', 'Beijing', 'TODO'),('49', 'Beijing', 'TODO'),
    ('50', 'Beijing', 'TODO'),('51', 'Beijing', 'TODO'),('52', 'Beijing', 'TODO'),('53', 'Beijing', 'TODO'),('54', 'Beijing', 'TODO'),
    ('55', 'Beijing', 'TODO'),('56', 'Beijing', 'TODO'),('57', 'Beijing', 'TODO'),('58', 'Beijing', 'TODO'),('59', 'Beijing', 'TODO'),
    ('60', 'Beijing', 'TODO'),('61', 'Beijing', 'TODO'),('62', 'Beijing', 'TODO'),('63', 'Beijing', 'TODO'),('64', 'Beijing', 'TODO'),
    ('65', 'Beijing', 'TODO'),('66', 'Beijing', 'TODO'),('67', 'Beijing', 'TODO'),('68', 'Beijing', 'TODO'),('69', 'Beijing', 'TODO'),
    ('70', 'Beijing', 'TODO'),('71', 'Beijing', 'TODO'),('72', 'Beijing', 'TODO'),('73', 'Beijing', 'TODO'),('74', 'Beijing', 'TODO'),
    ('75', 'Beijing', 'TODO'),('76', 'Beijing', 'TODO'),('77', 'Beijing', 'TODO'),('78', 'Beijing', 'TODO'),('79', 'Beijing', 'TODO'),
    ('80', 'Beijing', 'TODO'),('81', 'Beijing', 'TODO'),('82', 'Beijing', 'TODO'),('83', 'Beijing', 'TODO'),('84', 'Beijing', 'TODO'),
    ('85', 'Beijing', 'TODO'),('86', 'Beijing', 'TODO'),('87', 'Beijing', 'TODO'),('88', 'Beijing', 'TODO'),('89', 'Beijing', 'TODO'),
    ('90', 'Beijing', 'TODO'),('91', 'Beijing', 'TODO'),('92', 'Beijing', 'TODO'),('93', 'Beijing', 'TODO'),('94', 'Beijing', 'TODO'),
    ('95', 'Beijing', 'TODO'),('96', 'Beijing', 'TODO'),('97', 'Beijing', 'TODO'),('98', 'Beijing', 'TODO'),('99', 'Beijing', 'TODO'),
    ('100', 'Beijing', 'TODO')
;
-- 測試資料2
INSERT INTO test.task (task_id, location, status)
VALUES
    ('101', 'Shanghai', 'TODO'),('102', 'Shanghai', 'TODO'),('103', 'Shanghai', 'TODO'),('104', 'Shanghai', 'TODO'),
    ('105', 'Shanghai', 'TODO'),('106', 'Shanghai', 'TODO'),('107', 'Shanghai', 'TODO'),('108', 'Shanghai', 'TODO'),('109', 'Shanghai', 'TODO'),
    ('110', 'Shanghai', 'TODO'),('111', 'Shanghai', 'TODO'),('112', 'Shanghai', 'TODO'),('113', 'Shanghai', 'TODO'),('114', 'Shanghai', 'TODO'),
    ('115', 'Shanghai', 'TODO'),('116', 'Shanghai', 'TODO'),('117', 'Shanghai', 'TODO'),('118', 'Shanghai', 'TODO'),('119', 'Shanghai', 'TODO'),
    ('120', 'Shanghai', 'TODO'),('121', 'Shanghai', 'TODO'),('122', 'Shanghai', 'TODO'),('123', 'Shanghai', 'TODO'),('124', 'Shanghai', 'TODO'),
    ('125', 'Shanghai', 'TODO'),('126', 'Shanghai', 'TODO'),('127', 'Shanghai', 'TODO'),('128', 'Shanghai', 'TODO'),('129', 'Shanghai', 'TODO'),
    ('130', 'Shanghai', 'TODO'),('131', 'Shanghai', 'TODO'),('132', 'Shanghai', 'TODO'),('133', 'Shanghai', 'TODO'),('134', 'Shanghai', 'TODO'),
    ('135', 'Shanghai', 'TODO'),('136', 'Shanghai', 'TODO'),('137', 'Shanghai', 'TODO'),('138', 'Shanghai', 'TODO'),('139', 'Shanghai', 'TODO'),
    ('140', 'Shanghai', 'TODO'),('141', 'Shanghai', 'TODO'),('142', 'Shanghai', 'TODO'),('143', 'Shanghai', 'TODO'),('144', 'Shanghai', 'TODO'),
    ('145', 'Shanghai', 'TODO'),('146', 'Shanghai', 'TODO'),('147', 'Shanghai', 'TODO'),('148', 'Shanghai', 'TODO'),('149', 'Shanghai', 'TODO'),
    ('150', 'Shanghai', 'TODO'),('151', 'Shanghai', 'TODO'),('152', 'Shanghai', 'TODO'),('153', 'Shanghai', 'TODO'),('154', 'Shanghai', 'TODO'),
    ('155', 'Shanghai', 'TODO'),('156', 'Shanghai', 'TODO'),('157', 'Shanghai', 'TODO'),('158', 'Shanghai', 'TODO'),('159', 'Shanghai', 'TODO'),
    ('160', 'Shanghai', 'TODO'),('161', 'Shanghai', 'TODO'),('162', 'Shanghai', 'TODO'),('163', 'Shanghai', 'TODO'),('164', 'Shanghai', 'TODO'),
    ('165', 'Shanghai', 'TODO'),('166', 'Shanghai', 'TODO'),('167', 'Shanghai', 'TODO'),('168', 'Shanghai', 'TODO'),('169', 'Shanghai', 'TODO'),
    ('170', 'Shanghai', 'TODO'),('171', 'Shanghai', 'TODO'),('172', 'Shanghai', 'TODO'),('173', 'Shanghai', 'TODO'),('174', 'Shanghai', 'TODO'),
    ('175', 'Shanghai', 'TODO'),('176', 'Shanghai', 'TODO'),('177', 'Shanghai', 'TODO'),('178', 'Shanghai', 'TODO'),('179', 'Shanghai', 'TODO'),
    ('180', 'Shanghai', 'TODO'),('181', 'Shanghai', 'TODO'),('182', 'Shanghai', 'TODO'),('183', 'Shanghai', 'TODO'),('184', 'Shanghai', 'TODO'),
    ('185', 'Shanghai', 'TODO'),('186', 'Shanghai', 'TODO'),('187', 'Shanghai', 'TODO'),('188', 'Shanghai', 'TODO'),('189', 'Shanghai', 'TODO'),
    ('190', 'Shanghai', 'TODO'),('191', 'Shanghai', 'TODO'),('192', 'Shanghai', 'TODO'),('193', 'Shanghai', 'TODO'),('194', 'Shanghai', 'TODO'),
    ('195', 'Shanghai', 'TODO'),('196', 'Shanghai', 'TODO'),('197', 'Shanghai', 'TODO'),('198', 'Shanghai', 'TODO'),('199', 'Shanghai', 'TODO'),
    ('200', 'Shanghai', 'TODO')
;
-- 測試資料3
INSERT INTO test.task (task_id, location, status)
VALUES
    ('201', 'Guangzhou', 'TODO'),('202', 'Guangzhou', 'TODO'),('203', 'Guangzhou', 'TODO'),('204', 'Guangzhou', 'TODO'),
    ('205', 'Guangzhou', 'TODO'),('206', 'Guangzhou', 'TODO'),('207', 'Guangzhou', 'TODO'),('208', 'Guangzhou', 'TODO'),('209', 'Guangzhou', 'TODO'),
    ('210', 'Guangzhou', 'TODO'),('211', 'Guangzhou', 'TODO'),('212', 'Guangzhou', 'TODO'),('213', 'Guangzhou', 'TODO'),('214', 'Guangzhou', 'TODO'),
    ('215', 'Guangzhou', 'TODO'),('216', 'Guangzhou', 'TODO'),('217', 'Guangzhou', 'TODO'),('218', 'Guangzhou', 'TODO'),('219', 'Guangzhou', 'TODO'),
    ('220', 'Guangzhou', 'TODO'),('221', 'Guangzhou', 'TODO'),('222', 'Guangzhou', 'TODO'),('223', 'Guangzhou', 'TODO'),('224', 'Guangzhou', 'TODO'),
    ('225', 'Guangzhou', 'TODO'),('226', 'Guangzhou', 'TODO'),('227', 'Guangzhou', 'TODO'),('228', 'Guangzhou', 'TODO'),('229', 'Guangzhou', 'TODO'),
    ('230', 'Guangzhou', 'TODO'),('231', 'Guangzhou', 'TODO'),('232', 'Guangzhou', 'TODO'),('233', 'Guangzhou', 'TODO'),('234', 'Guangzhou', 'TODO'),
    ('235', 'Guangzhou', 'TODO'),('236', 'Guangzhou', 'TODO'),('237', 'Guangzhou', 'TODO'),('238', 'Guangzhou', 'TODO'),('239', 'Guangzhou', 'TODO'),
    ('240', 'Guangzhou', 'TODO'),('241', 'Guangzhou', 'TODO'),('242', 'Guangzhou', 'TODO'),('243', 'Guangzhou', 'TODO'),('244', 'Guangzhou', 'TODO'),
    ('245', 'Guangzhou', 'TODO'),('246', 'Guangzhou', 'TODO'),('247', 'Guangzhou', 'TODO'),('248', 'Guangzhou', 'TODO'),('249', 'Guangzhou', 'TODO'),
    ('250', 'Guangzhou', 'TODO'),('251', 'Guangzhou', 'TODO'),('252', 'Guangzhou', 'TODO'),('253', 'Guangzhou', 'TODO'),('254', 'Guangzhou', 'TODO'),
    ('255', 'Guangzhou', 'TODO'),('256', 'Guangzhou', 'TODO'),('257', 'Guangzhou', 'TODO'),('258', 'Guangzhou', 'TODO'),('259', 'Guangzhou', 'TODO'),
    ('260', 'Guangzhou', 'TODO'),('261', 'Guangzhou', 'TODO'),('262', 'Guangzhou', 'TODO'),('263', 'Guangzhou', 'TODO'),('264', 'Guangzhou', 'TODO'),
    ('265', 'Guangzhou', 'TODO'),('266', 'Guangzhou', 'TODO'),('267', 'Guangzhou', 'TODO'),('268', 'Guangzhou', 'TODO'),('269', 'Guangzhou', 'TODO'),
    ('270', 'Guangzhou', 'TODO'),('271', 'Guangzhou', 'TODO'),('272', 'Guangzhou', 'TODO'),('273', 'Guangzhou', 'TODO'),('274', 'Guangzhou', 'TODO'),
    ('275', 'Guangzhou', 'TODO'),('276', 'Guangzhou', 'TODO'),('277', 'Guangzhou', 'TODO'),('278', 'Guangzhou', 'TODO'),('279', 'Guangzhou', 'TODO'),
    ('280', 'Guangzhou', 'TODO'),('281', 'Guangzhou', 'TODO'),('282', 'Guangzhou', 'TODO'),('283', 'Guangzhou', 'TODO'),('284', 'Guangzhou', 'TODO'),
    ('285', 'Guangzhou', 'TODO'),('286', 'Guangzhou', 'TODO'),('287', 'Guangzhou', 'TODO'),('288', 'Guangzhou', 'TODO'),('289', 'Guangzhou', 'TODO'),
    ('290', 'Guangzhou', 'TODO'),('291', 'Guangzhou', 'TODO'),('292', 'Guangzhou', 'TODO'),('293', 'Guangzhou', 'TODO'),('294', 'Guangzhou', 'TODO'),
    ('295', 'Guangzhou', 'TODO'),('296', 'Guangzhou', 'TODO'),('297', 'Guangzhou', 'TODO'),('298', 'Guangzhou', 'TODO'),('299', 'Guangzhou', 'TODO'),
    ('300', 'Guangzhou', 'TODO')
;