CREATE TABLE test.user (
  'ID'          INT(8)      NOT NULL AUTO_INCREMENT,
  'NAME'        VARCHAR(25) NOT NULL,
  'AGE'         INT         NOT NULL,
  'ISADMIN'     BIT         NOT NULL,
  'CREATEDDATE' TIMESTAMP   NOT NULL,
  PRIMARY KEY (ID)
);

INSERT INTO test.user (NAME, AGE, ISADMIN, CREATEDDATE) VALUES
  ('Ivan', 15, b'1', '2015-5-13 12:00:00'),
  ('Petr', 40, b'0', '2016-7-24 15:39:40'),
  ('Andrey', 26, b'0', '2015-10-11 14:25:10'),
  ('Anna', 18, b'1', '2017-1-1 00:00:01'),
  ('Elena', 60, b'0', '2014-4-1 18:50:07');