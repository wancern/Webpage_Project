create table if not exists student(
	s_id varchar(20) not null,
	s_name varchar(20),
	s_grade integer,
	s_magor varchar(20),
	s_phoneNum varchar(20),
	s_filename varchar(20),
	s_birth varchar(20),
	s_email varchar(20),
	s_address varchar(20),
	primary key (s_id)
)default charset=utf8;

insert into student values('201611842', '이현구', 3, '컴퓨터공학부', '01012345678', '201611842.png', '960611', 'wancern@naver.com', '서울시 동작구');
insert into student values('201712345', '김철수', 2, '건축학과', '01087654321', '201712345.png', '980506', 'cjftn@nate.com', '수원시 영통구');
insert into student values('202054321', '안영희', 1, '경영학부', '01015881588', '202054321.png', '010801', 'zerohi@naver.com', '서울시 마포구');
insert into student values('201511223', '안재석', 4, '화학과', '01013579753', '201511223.png', '961230', 'jaseok@google.com', '강원도 원주시');
insert into student values('201898765', '박종원', 3, '체육학부', '01025802580', '201898765.png', '990208', 'whddnjs@daum.net', '서울시 강남구');
insert into student values('201700700', '이수지', 3, '컴퓨터공학부', '01012457896', '201700700.png', '970423', 'suji00@naver.com', '부산시 수영구');

select * from student;
