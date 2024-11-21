-- NOT NULL
-- UNIQUE
-- PRIMARY KEY
-- FOREIGN KEY
-- CHECK
-- DEFAULT

-- not null,unique same way constraint
-- way 1
create table stud(name varchar2(10) NOT NULL, regno varchar2(10));
-- way 2 column datatype CONSTRAINT nameofconstraint constrain
create table stud1(name varchar2(10) CONSTRAINT namenull NOT
NULL, regno varchar2(10));
-- way 3
create table stud3(name varchar2(10), regno varchar2(10));
-- alter table tablename modify column datatype constraint
alter table stud3 modify name varchar2(10) NOT NULL;

-- primary key:
-- way 1
create table stud1(name varchar2(10), regno varchar2(10) primary key);
-- way 2
create table stud2(name varchar2(10), regno varchar2(10) constraint
rnoprimary primary key); 
-- way 3
create table stud3(name varchar2(10), regno varchar2(10));
Alter table stud3 add constraint rp primary key(regno);

-- foreign key constraint
-- way 1
create table Sales(id number, name varchar2(10), constraint fkid foreign
key(id) references Product(id) );
-- product(id) foreign key in that column
-- way 2
create table sales(id number, cname varchar2(10))
alter table sales add foreign key(id) references product(id);


-- check constraint
-- way 1
create table stud1(name varchar2(10), regno varchar2(10), mark number
CHECK (mark between 0 and 100));
-- way 2
create table stud1(name varchar2(10), regno varchar2(10), mark number
constraint markcheck CHECK (mark between 0 and 100));
-- way 3
create table stud3(name varchar2(10), regno varchar2(10), mark number); 
alter table stud1 modify mark number constraint markcheck CHECK
(mark between 1 and 100);

--default constraint
-- way 1
create table stud1(name varchar2(10), regno varchar2(10), mark number
DEFAULT 0);
--way 2
create table stud1(name varchar2(10), regno varchar2(10), mark
number);
alter table stud2 modify mark DEFAULT 0;


-- drop any constraint
Alter table tablename drop constraint constraintname; 

