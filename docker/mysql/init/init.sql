create table MemberList
( 
  MemberNum smallint(4) Unsigned ZEROFILL not NULL PRIMARY KEY,
  name varchar(255) not NULL,
  Email varchar(255),
  PASSWORD varchar(64),
  wallet INT not NULL
);
create table NFCID
( 
  DataNum smallInt(4) Unsigned ZEROFILL not NULL PRIMARY KEY,
  MemberNum smallInt(3) Unsigned ZEROFILL not NULL,
  IDm varchar(255) not NULL,
  foreign key(MemberNum) references MemberList(MemberNum)
);
create table MoneyLog
(
  LogNum int(10) Unsigned ZEROFILL not NULL,
  MemberNum char(3) not NULL,
  Date datetime not NULL,
  Money int not NULL,
  primary key(LogNum)
);
