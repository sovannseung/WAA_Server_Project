CREATE TABLE random_city (
  id bigint(20) NOT NULL AUTO_INCREMENT,
  name varchar(255) DEFAULT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE app_role (
  id bigint(20) NOT NULL AUTO_INCREMENT,
  description varchar(255) DEFAULT NULL,
  role_name varchar(255) DEFAULT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE app_user (
  id bigint(20) NOT NULL AUTO_INCREMENT,
  studentid varchar(255) NOT NULL,
  barcode varchar(255) NOT NULL,
  entryid bigint(20) NOT NULL,
  first_name varchar(255) NOT NULL,
  last_name varchar(255) NOT NULL,
  password varchar(255) NOT NULL,
  username varchar(255) NOT NULL,
  PRIMARY KEY (id)
);

CREATE TABLE user_role (
  user_id bigint(20) NOT NULL,
  role_id bigint(20) NOT NULL,
  CONSTRAINT FK859n2jvi8ivhui0rl0esws6o FOREIGN KEY (user_id) REFERENCES app_user (id),
  CONSTRAINT FKa68196081fvovjhkek5m97n3y FOREIGN KEY (role_id) REFERENCES app_role (id)
);

CREATE TABLE Block (
    BLOCKID bigint(20) NOT NULL AUTO_INCREMENT,
    BLOCKNAME varchar(255) NOT NULL,
    STARTDATE varchar(255) NOT NULL,
    ENDDATE varchar(255) NOT NULL,
    ISSATURDAYCOUNT bit NOT NULL,
    ISSUNDAYCOUNT bit NOT NULL,
    PRIMARY KEY (BLOCKID)
);

CREATE TABLE Course (
    COURSEID bigint(20) NOT NULL AUTO_INCREMENT,
    COURSENAME varchar(255) NOT NULL,
    BLOCKID bigint(20) NOT NULL,
    PRIMARY KEY (BLOCKID)
);

CREATE TABLE COURSEDETAIL (
    COURSEDETAILID bigint(20) NOT NULL AUTO_INCREMENT,
    COURSEID bigint(20) NOT NULL,
    STUDENTID bigint(20) NOT NULL,
    PRIMARY KEY (COURSEDETAILID)
);

CREATE TABLE Entry (
    ENTRYID bigint(20) NOT NULL AUTO_INCREMENT,
    ENTRYNAME varchar(255) NOT NULL,
    PRIMARY KEY (ENTRYID)
);

CREATE TABLE Manualdata (
    ID bigint(20) NOT NULL AUTO_INCREMENT,
    ATTENDANCEDATE varchar(255) NOT NULL,
    NAME varchar(255) NOT NULL,
    LOCALTION varchar(255) NOT NULL,
    STUDENTID varchar(255) NOT NULL,
    PRIMARY KEY (ID)
);

CREATE TABLE TM (
    ID bigint(20) NOT NULL AUTO_INCREMENT,
    TMDATE varchar(255) NOT NULL,
    STUDENTID varchar(255) NOT NULL,
    TMTYPE varchar(255) NOT NULL,
    PRIMARY KEY (ID)
);

CREATE TABLE Uploaddata (
    ID bigint(20) NOT NULL AUTO_INCREMENT,
    BARCODE varchar(255) NOT NULL,
    ATTENDANCEDATE varchar(255) NOT NULL,
    TYPES varchar(255) NOT NULL,
    LOCATION varchar(255) NOT NULL,
    PRIMARY KEY (ID)
);