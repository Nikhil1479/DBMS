SQL QUERIES

Table Student:

Create Table Student:
create table Student(StudentID varchar(20), Fname varchar(20) NOT NULL, Lname varchar(20),Street varchar(20), City varchar(20), state varchar(20), zip int, StartTerm varchar(20), BirthDate date, FacultyID varchar(20), MajorID varchar(20), Phone int);
Adding Primary Key
ALTER TABLE student ADD PRIMARY KEY (STUDENTID);
Adding Foreign Keys
ALTER TABLE student ADD Constraint student_major_id_fk FOREIGN KEY (MAJORID) REFERENCES major (MajorID);
INSERT INTO student 
INSERT INTO STUDENT VALUES('00100','Cruise','Tom','BleeckerStreet','Manhattan','NY','10012','2005',TO_DATE('2002-04-30','YYYY-MM-DD'), '123','100','8273011131');
INSERT INTO student VALUES('00103','Rickles','Deborah','NorthKierland','Scottdale','Arizona','85254','2017',TO_DATE('2001-06-21','YYYY-MM-DD'), '431','500','64538391020');
INSERT INTO student VALUES('00104','Lee','Brian','FirstLane','hope','NY','11373','2018',TO_DATE('2016-05-26','YYYY-MM-DD'), '345','600','7896391020');
INSERT INTO student VALUES('00101','Tyler','Mickey','MorrisAvenue','Hill','NY','10468','2006',TO_DATE('1984-03-18','YYYY-MM-DD'), '555','500','9568391020');
INSERT INTO student VALUES('00102','Patel','Rajesh','Phoenix','','Arizona','08837','2015',TO_DATE('1985-11-28','YYYY-MM-DD'), '111','400','76458391020');



Table Faculty:

Create Table Faculty
CREATE TABLE FACULTY(FacultyID varchar2(20) PRIMARY KEY,Name varchar2(20) NOT NULL,RoomID varchar2(20),Phone int,DeptId varchar(20));

Insert Into Faculty
INSERT INTO faculty VALUES('111','Rajdeep','11','9568391020','1');

INSERT INTO faculty VALUES('222','HimansuDas','20','7654890231','2');

INSERT INTO faculty VALUES('123','Biswajit','11','9854890231','3');

INSERT INTO faculty VALUES('234','Williams','12','8434890265','1');

INSERT INTO faculty VALUES('444','Collins','21','9674890265','5');
Updating Table Faculty
UPDATE faculty set ROOMID='1' where facultyid='111';
UPDATE faculty set ROOMID='2' where facultyid='222';
UPDATE faculty set ROOMID='3' where facultyid='123';
UPDATE faculty set ROOMID='4' where facultyid='234';
UPDATE faculty set ROOMID='4' where facultyid='444';
Adding Foreign Key
ALTER TABLE faculty ADD CONSTRAINT faculty_roomid_fk FOREIGN KEY (ROOMID) REFERENCES location (ROOMID);



Table Course:

Create Table Course
CREATE TABLE course(CourseID varchar2(20) PRIMARY KEY, Title varchar2(20), credits varchar2(20) DEFAULT 0, PreReq varchar(20));

Insert Into Course
INSERT INTO course VALUES('CS1001','DSA','4',NULL);

INSERT INTO course VALUES('DB2002','DBMS','3','SQL');

INSERT INTO course VALUES('IT2003','OS','3','BASH');

INSERT INTO course VALUES('WT1006','WebTech','3','HTML');

INSERT INTO course VALUES('CO1004','COA','3',NULL);


Table CRSSECTION:

Create Table CRSSECTION
CREATE TABLE CRSSECTION(CsID varchar2(20) PRIMARY KEY, CourseID varchar(20), Section varchar2(20), TermID varchar2(20), FacultyID varchar(20), Day varchar(20), StartTime varchar(20), EndTime varchar(20),RoomID varchar2(20), MaxCount int DEFAULT 0);

Insert Into CRSSECTION
INSERT INTO crssection VALUES('1101','CIS265','01','WN03','111','Mon','09:00','10:30','13','30');

INSERT INTO crssection VALUES('1102','CIS253','01','WN03','123','Thu','09:00','10:30','13','40'); 

INSERT INTO crssection VALUES('1103','MA150','02','SP03','111','Fri','10:30','12:00','14','45');

INSERT INTO crssection VALUES('1104','IT2003','03','AT03','345','Mon','10:30','12:00','14','30');

INSERT INTO crssection VALUES('1105','IT2003','02','AT03','345','Fri','10:30','12:00','14','35');


Update Table CRSSECTION
UPDATE crssection set courseid='CS1001' where CSID='1101';
UPDATE crssection set courseid='DB2002' where CSID='1102';
UPDATE crssection set courseid='IT2003' where CSID='1103';
UPDATE crssection set courseid='WT1006' where CSID='1104';
UPDATE crssection set courseid='CO1004' where CSID='1105';

Adding Foreign Key
ALTER TABLE CRSSECTION ADD CONSTRAINT crssection_courseid_fk FOREIGN KEY (COURSEID) REFERENCES course (COURSEID);
Table Term
Create Table Term
create table term(TermID varchar(20) PRIMARY KEY, TermDesc varchar(20) NOT NULL, StartDate date, EndDate date);

Insert Into Term:

INSERT INTO term 
VALUES('SP22','Spring2022',TO_DATE('2022-01-03','YYYY-MMDD'),TO_DATE('2022-06-01','YYYY-MM-DD'));

INSERT INTO term VALUES('AT22','Autumn2022',TO_DATE('2022-07-03','YYYY-MM-DD'),TO_DATE('2023-01-18','YYYY-MM-DD'));

INSERT INTO term VALUES('SP23','Spring2023',TO_DATE('2023-01-19','YYYY-MM-DD'),TO_DATE('2023-06-02','YYYY-MM-DD'));

INSERT INTO term VALUES('AT23','Autumn2023',TO_DATE('2023-07-03','YYYY-MM-DD'),TO_DATE('2024-01-18','YYYY-MM-DD'));

INSERT INTO term VALUES('SP24','Spring2024',TO_DATE('2024-01-19','YYYY-MM-DD'),TO_DATE('2024-06-02','YYYY-MM-DD'));



Table Room:
Create Table Room
create table room(RoomType varchar(20) PRIMARY KEY, RoomDesc varchar(20) NOT NULL);

Insert Into Room
INSERT INTO room VALUES('L','Laboratory');
INSERT INTO room VALUES('C','Classroom');
INSERT INTO room VALUES('O','Office');
INSERT INTO room VALUES('VCO','VC Office');
INSERT INTO room VALUES('ADT','Auditorium');



Table Registration:

Create Table Registration
CREATE TABLE registration(StudentID varchar(20) PRIMARY KEY, CsID varchar(20), MidTerm varchar(20), Final varchar(20), RegStatus varchar(20));

Insert Into Registration
INSERT INTO registration VALUES('00100','1103','Apr','June','PND');

INSERT INTO registration VALUES('00101','1102','Oct','Dec','CNF');

INSERT INTO registration VALUES('00102','1104','Apr','June','CNF');

INSERT INTO registration VALUES('00103','1102','Jan','Apr','PND');

INSERT INTO registration VALUES('00104','1101','Oct','Dec','CNF');



Table Department:

Create Table Department
CREATE TABLE department(DeptID varchar(20), DeptName varchar(20), FacultyID varchar(20), PRIMARY KEY (DeptID, DeptName));

Insert Into Department
INSERT INTO department VALUES('1','Computer Science','111');
INSERT INTO department VALUES('2','Telecommunication','222');
INSERT INTO department VALUES('3','Electronics','333');
INSERT INTO department VALUES('4','Accounting','444');
INSERT INTO department VALUES('5','Mechanical','555');




Table Major:

Create Table Major
CREATE TABLE major (MajorID varchar(20) PRIMARY KEY, MajorDesc varchar(20) NOT NULL);

Insert Into Major
INSERT INTO major VALUES('100','Accounting');

INSERT INTO major VALUES('200','Computer Science');

INSERT INTO major VALUES('300','Telecommunication');

INSERT INTO major VALUES('400','Mechanical');

INSERT INTO major VALUES('500','Electronics');



Table Location:

Create Table Location
CREATE TABLE location (RoomID varchar(20) PRIMARY KEY, Building varchar(20), 
RoomNo varchar(20), Capacity int  DEFAULT 0, RoomType varchar(20));

Insert Into Location
INSERT INTO location VALUES ('1','WingA','501','4','AC');
INSERT INTO location VALUES ('2','WingB','602','3','NonAC');
INSERT INTO location VALUES ('3','WingC','703','2','AC');
INSERT INTO location VALUES ('4','WingC','802','2','AC');
INSERT INTO location VALUES ('5','WingD','401','3','NonAC');




Table Employee:

Create Table Employee
CREATE TABLE employee (EmployeeID int, Lname varchar(20) NOT NULL, Fname varchar(20) NOT NULL, PositionID int, Supervisor varchar(20), HireDate date, Salary int, Commission int, DeptID int NOT NULL, QualID int );

Adding Foreign Keys
alter table employee ADD Constraint employee_positionid_fk FOREIGN KEY (positionID) REFeRENCES position(positionid);
alter table employee add constraint employee_deptid_fk FOREIGN KEY (deptID) REFERENCES dept(deptid);
alter table employee add constraint employee_qualid_fk FOREIGN KEY (QualID) REFERENCES qualification (QualID);

Altering Table
ALTER TABLE employee ADD (UNIQUE (Lname));

Insert Into Employee
INSERT INTO employee 
VALUES('111','Smith','John','1',NULL,TO_DATE('1960-04-15','YYYY-MM-DD'),'265000','35000','10','1');
INSERT INTO employee 
VALUES('246','Houstan','Larry','2','111',TO_DATE('1967-05-19','YYYY-MM-DD'),'150000','10000','40','2');

INSERT INTO employee 
VALUES('123','Gupta','Nikhil','2','111',TO_DATE('1991-02-12','YYYY-MM-DD'),'75000',NULL,'10','2');

INSERT INTO employee 
VALUES('543','Dave','Derek','2','111',TO_DATE('1995-03-15','YYYY-MM-DD'),'80000','20000','20','1');

INSERT INTO employee 
VALUES('433','McCall','Alex','3','543',TO_DATE('1997-05-05','YYYY-MM-DD'),'66500',NULL,'20','4');



Table Emplevel:

Create Table EmpLevel
CREATE TABLE emplevel (LevelNo int, LowSalary int, HighSalary int);
Insert Into Emplevel
INSERT INTO emplevel VALUES('1','5000','25000');
INSERT INTO emplevel VALUES('2','25000','50000');
INSERT INTO emplevel VALUES('3','50000','100000');
INSERT INTO emplevel VALUES('4','100000','500000');
INSERT INTO emplevel VALUES('4','500000','1000000');

Table Position:

Create Table Position
CREATE TABLE position (PositionID int PRIMARY KEY , PoscDesc VARCHAR(20));
Insert Into Position
INSERT INTO position VALUES('1', 'President');
INSERT INTO position VALUES('2', 'Manager');
INSERT INTO position VALUES('3', 'Programmer');
INSERT INTO position VALUES('4', 'Accountant');.
INSERT INTO position VALUES('5', 'Salesman');


Table Qualification:

Create Table Qualification
CREATE TABLE qualification (QualID int PRIMARY KEY, QualDesc varchar(20));
Insert Into Qualification
INSERT INTO qualification VALUES('1','Doctorate');
INSERT INTO qualification VALUES('2','Masters');
INSERT INTO qualification VALUES('3','Bachelores');
INSERT INTO qualification VALUES('4','Associates');
INSERT INTO qualification VALUES('5','High School');



Table Dept:

Create Table Dept
CREATE TABLE dept (DeptID int PRIMARY KEY, DeptName varchar(20) NOT NULL, Location varchar(20), EmployeeID int);
Insert Into Dept
INSERT INTO dept VALUES('10','Finance','Charlotte','123');
INSERT INTO dept VALUES('20','Infosys','New York','543');
INSERT INTO dept VALUES('30','Sales','Wood Bridge','135');
INSERT INTO dept VALUES('40','Marketing','Los Angeles','246');



Table Dependent:

Create Table Dependent
CREATE TABLE dependent (EmployeeID int PRIMARY KEY, DependentID int, DepDOB date, Relation varchar(20));
Insert Into Dependent
INSERT INTO dependent 
VALUES ('543','1',TO_DATE('1958-09-28','YYYY-MM-DD'),'Spouse');

INSERT INTO dependent 
VALUES ('200','2',TO_DATE('1988-10-14','YYYY-MM-DD'),'Son');

INSERT INTO dependent 
VALUES ('111','1',TO_DATE('1975-04-02','YYYY-MM-DD'),'Daughter');

INSERT INTO dependent 
VALUES ('222','3',TO_DATE('1976-10-06','YYYY-MM-DD'),'Spouse');

INSERT INTO dependent 
VALUES ('123','2',TO_DATE('1997-08-23','YYYY-MM-DD'),'Son');
