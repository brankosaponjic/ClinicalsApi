create database clinicals;

use clinicals;

create table patient(
id int not null auto_increment,
first_name varchar(255) not null,
last_name varchar(255) not null,
age int,
primary key(id)
);

create table clinical_data(
id int not null auto_increment,
patient_id int,
component_name varchar(255) not null,
component_value varchar(255) not null,
measured_date_time timestamp default current_timestamp,
primary key(id),
constraint fk_patient foreign key (patient_id) references patient(id)
);

insert into patient values(1,'John','McCain',52);
insert into patient values(2,'Helmut','Kohl',32);
insert into patient values(3,'Marc','Anthony',22);
insert into patient values(4,'Bruce','Springsteen',33);
insert into patient values(5,'Abhram','Lincoln',55);
insert into patient values(6,'Hans-Dietrich','Genscher',12);
insert into patient values(7,'Antonio','Colovatti',27);
insert into patient values(8,'Juan-Antonio','Samaranch',24);
insert into patient values(9,'Linda','Evangelista',29);
insert into patient values(10,'Anna','Oxa',49);

insert into clinical_data  values('1', '1', 'bp', '67/119', '2019-07-09 19:34:24');
insert into clinical_data  values('2', '2', 'bp', '63/115', '2018-06-19 19:34:24');	
insert into clinical_data  values('3', '3', 'bp', '72/129', '2019-07-26 19:34:24');
insert into clinical_data  values('4', '4', 'bp', '74/139', '2018-08-03 19:34:24');
insert into clinical_data  values('5', '5', 'bp', '67/119', '2019-08-29 19:34:24');
insert into clinical_data  values('6', '6', 'bp', '62/109', '2018-07-12 19:34:24');
insert into clinical_data  values('7', '7', 'bp', '55/102', '2017-06-13 19:34:24');
insert into clinical_data  values('8', '8', 'bp', '47/90', '2018-08-02 19:34:24');
insert into clinical_data  values('9', '9', 'bp', '90/149', '2019-06-01 19:34:24');
insert into clinical_data  values('10', '10', 'bp', '50/109', '2018-07-09 19:34:24');
insert into clinical_data  values('11', '1', 'bp', '55/102', '2018-11-02 19:34:24');
insert into clinical_data  values('12', '2', 'bp', '67/119', '2018-08-09 19:34:24');
insert into clinical_data  values('13', '3', 'bp', '63/115', '2018-09-09 19:34:24');
insert into clinical_data  values('14', '4', 'bp', '55/102', '2019-09-13 19:34:24');
insert into clinical_data  values('15', '5', 'bp', '50/109', '2018-10-12 19:34:24');
insert into clinical_data  values('16', '6', 'bp', '67/119', '2019-11-29 19:34:24');
insert into clinical_data  values('17', '7', 'bp', '63/115', '2018-11-03 19:34:24');
insert into clinical_data  values('18', '8', 'bp', '63/115', '2019-10-26 19:34:24');
insert into clinical_data  values('19', '9', 'bp', '55/102', '2018-09-11 19:34:24');
insert into clinical_data  values('20', '10', 'bp', '72/129', '2019-09-29 19:34:24');
insert into clinical_data  values('21', '1', 'bp', '55/102', '2018-10-09 19:34:24');
insert into clinical_data  values('22', '2', 'bp', '63/115', '2018-10-20 19:34:24');
insert into clinical_data  values('23', '3', 'bp', '55/102', '2018-11-19 19:34:24');
insert into clinical_data  values('24', '5', 'bp', '72/129', '2018-12-30 19:34:24');
insert into clinical_data  values('25', '6', 'bp', '63/115', '2019-10-21 19:34:24');
insert into clinical_data  values('26', '7', 'bp', '47/90', '2018-12-29 19:34:24');
insert into clinical_data  values('27', '8', 'bp', '63/115', '2018-11-08 19:34:24');
insert into clinical_data  values('28', '9', 'bp', '90/149', '2020-10-03 19:34:24');
insert into clinical_data  values('29', '10', 'bp', '55/102', '2018-10-29 19:34:24');
insert into clinical_data  values('30', '1', 'bp', '90/149', '2018-03-19 19:34:24');
insert into clinical_data  values('31', '2', 'bp', '55/102', '2020-04-03 19:34:24');
insert into clinical_data  values('32', '3', 'bp', '63/115', '2018-05-21 19:34:24');
insert into clinical_data  values('33', '4', 'bp', '47/90', '2018-03-31 19:34:24');
insert into clinical_data  values('34', '5', 'bp', '55/102', '2020-04-19 19:34:24');
insert into clinical_data  values('35', '6', 'bp', '72/129', '2018-04-28 19:34:24');
insert into clinical_data  values('36', '7', 'bp', '67/119', '2018-03-19 19:34:24');
insert into clinical_data  values('37', '8', 'bp', '50/109', '2020-05-21 19:34:24');
insert into clinical_data  values('38', '9', 'bp', '67/119', '2018-04-12 19:34:24');
insert into clinical_data  values('39', '10', 'bp', '67/119', '2020-03-19 19:34:24');
insert into clinical_data  values('40', '1', 'bp', '67/119', '2019-06-09 19:34:24');
insert into clinical_data  values('41', '2', 'bp', '55/102', '2019-05-23 19:34:24');
insert into clinical_data  values('42', '3', 'bp', '67/119', '2019-06-01 19:34:24');
insert into clinical_data  values('43', '4', 'bp', '90/149', '2019-03-01 19:34:24');
insert into clinical_data  values('44', '5', 'bp', '55/102', '2019-01-06 19:34:24');
insert into clinical_data  values('45', '6', 'bp', '67/119', '2020-03-29 19:34:24');
insert into clinical_data  values('46', '7', 'bp', '55/102', '2019-02-21 19:34:24');
insert into clinical_data  values('47', '8', 'bp', '50/109', '2019-02-15 19:34:24');
insert into clinical_data  values('48', '9', 'bp', '67/119', '2020-04-19 19:34:24');
insert into clinical_data  values('49', '10', 'bp', '37/89', '2019-05-29 19:34:24');

insert into clinical_data  values('51', '1', 'heartrate', '67', '2018-07-09 19:34:24');
insert into clinical_data  values('52', '2', 'heartrate', '115', '2018-06-19 19:34:24');	
insert into clinical_data  values('53', '3', 'heartrate', '72', '2018-07-26 19:34:24');
insert into clinical_data  values('54', '4', 'heartrate', '74', '2018-08-03 19:34:24');
insert into clinical_data  values('55', '5', 'heartrate', '119', '2018-08-29 19:34:24');
insert into clinical_data  values('56', '6', 'heartrate', '62', '2018-07-12 19:34:24');
insert into clinical_data  values('57', '7', 'heartrate', '102', '2018-06-13 19:34:24');
insert into clinical_data  values('58', '8', 'heartrate', '90', '2018-08-02 19:34:24');
insert into clinical_data  values('59', '9', 'heartrate', '90', '2018-06-01 19:34:24');
insert into clinical_data  values('50', '10', 'heartrate', '109', '2018-07-09 19:34:24');
insert into clinical_data  values('61', '1', 'heartrate', '55', '2018-11-02 19:34:24');
insert into clinical_data  values('62', '2', 'heartrate', '67', '2018-08-09 19:34:24');
insert into clinical_data  values('63', '3', 'heartrate', '63', '2018-09-09 19:34:24');
insert into clinical_data  values('64', '4', 'heartrate', '55', '2018-09-13 19:34:24');
insert into clinical_data  values('65', '5', 'heartrate', '50', '2018-10-12 19:34:24');
insert into clinical_data  values('66', '6', 'heartrate', '119', '2018-11-29 19:34:24');
insert into clinical_data  values('67', '7', 'heartrate', '115', '2018-11-03 19:34:24');
insert into clinical_data  values('68', '8', 'heartrate', '63', '2018-10-26 19:34:24');
insert into clinical_data  values('69', '9', 'heartrate', '55', '2018-09-11 19:34:24');
insert into clinical_data  values('60', '10', 'heartrate', '72', '2018-09-29 19:34:24');
insert into clinical_data  values('71', '1', 'heartrate', '55', '2018-10-09 19:34:24');
insert into clinical_data  values('72', '2', 'heartrate', '115', '2018-10-20 19:34:24');
insert into clinical_data  values('73', '3', 'heartrate', '55', '2018-11-19 19:34:24');
insert into clinical_data  values('74', '5', 'heartrate', '129', '2018-12-30 19:34:24');
insert into clinical_data  values('75', '6', 'heartrate', '63', '2018-10-21 19:34:24');
insert into clinical_data  values('76', '7', 'heartrate', '90', '2018-12-29 19:34:24');
insert into clinical_data  values('77', '8', 'heartrate', '63', '2018-11-08 19:34:24');
insert into clinical_data  values('78', '9', 'heartrate', '149', '2018-10-03 19:34:24');
insert into clinical_data  values('79', '10', 'heartrate', '55', '2018-10-29 19:34:24');
insert into clinical_data  values('70', '1', 'heartrate', '149', '2018-03-19 19:34:24');
insert into clinical_data  values('81', '2', 'heartrate', '55', '2018-04-03 19:34:24');
insert into clinical_data  values('82', '3', 'heartrate', '115', '2018-05-21 19:34:24');
insert into clinical_data  values('83', '4', 'heartrate', '47', '2018-03-31 19:34:24');
insert into clinical_data  values('84', '5', 'heartrate', '102', '2018-04-19 19:34:24');
insert into clinical_data  values('85', '6', 'heartrate', '72', '2018-04-28 19:34:24');
insert into clinical_data  values('86', '7', 'heartrate', '67', '2018-03-19 19:34:24');
insert into clinical_data  values('87', '8', 'heartrate', '109', '2018-05-21 19:34:24');
insert into clinical_data  values('88', '9', 'heartrate', '67', '2018-04-12 19:34:24');
insert into clinical_data  values('89', '10', 'heartrate', '119', '2018-03-19 19:34:24');
insert into clinical_data  values('80', '1', 'heartrate', '119', '2019-06-09 19:34:24');
insert into clinical_data  values('91', '2', 'heartrate', '55/102', '2019-05-23 19:34:24');
insert into clinical_data  values('92', '3', 'heartrate', '67', '2019-06-01 19:34:24');
insert into clinical_data  values('93', '4', 'heartrate', '149', '2019-03-01 19:34:24');
insert into clinical_data  values('94', '5', 'heartrate', '102', '2019-01-06 19:34:24');
insert into clinical_data  values('95', '6', 'heartrate', '67/119', '2019-03-29 19:34:24');
insert into clinical_data  values('96', '7', 'heartrate', '55', '2019-02-21 19:34:24');
insert into clinical_data  values('97', '8', 'heartrate', '50', '2019-02-15 19:34:24');
insert into clinical_data  values('98', '9', 'heartrate', '67', '2019-04-19 19:34:24');
insert into clinical_data  values('99', '10', 'heartrate', '89', '2019-05-29 19:34:24');